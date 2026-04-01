package com.royalmatchbot.engine

import android.content.Context
import android.graphics.Bitmap
import android.view.accessibility.AccessibilityEvent
import com.royalmatchbot.model.ConfiguracoesBot
import com.royalmatchbot.model.EstadoBot
import com.royalmatchbot.model.Tabuleiro
import com.royalmatchbot.service.BotAcessibilidadeServico
import com.royalmatchbot.service.BotPrincipalServico
import com.royalmatchbot.util.BotLogger
import com.royalmatchbot.util.GerenciadorPreferencias
import kotlinx.coroutines.delay

/**
 * Controlador central do bot — orquestra análise, estratégia e execução.
 *
 * Pipeline de cada jogada:
 * 1. Receber bitmap da captura de tela
 * 2. Detectar estado da tela (tabuleiro, menu, etc.)
 * 3. Analisar o tabuleiro (reconhecer peças)
 * 4. Calcular todas as jogadas possíveis
 * 5. Selecionar melhor jogada via motor estratégico
 * 6. Executar gesto via serviço de acessibilidade
 * 7. Reportar resultado
 */
class ControladorBot(private val contexto: Context) {

    enum class ResultadoAnalise {
        JOGADA_EXECUTADA,
        FASE_COMPLETA,
        NAVEGANDO_MENU,
        SEM_MOVIMENTOS,
        AGUARDANDO,
        ERRO
    }

    companion object {
        private const val TAG = "ControladorBot"
    }

    private val logger = BotLogger.instancia
    private val analisador = AnalisadorTabuleiro()
    private val calculador = CalculadorJogadas()
    private val motor = MotorEstrategico()
    private val prefs = GerenciadorPreferencias(contexto)

    private var tabuleiroAnterior: Tabuleiro? = null
    private var contadorSemMudanca = 0

    /**
     * Método principal chamado a cada ciclo do loop do bot.
     */
    suspend fun analisarEJogar(bitmap: Bitmap, configs: ConfiguracoesBot): ResultadoAnalise {
        try {
            // 1. Detectar estado da tela
            val estadoTela = analisador.detectarEstadoTela(bitmap)
            logger?.debug(TAG, "Estado da tela: $estadoTela")

            when (estadoTela) {
                AnalisadorTabuleiro.EstadoTela.MENU_PRINCIPAL -> {
                    return tratarMenuPrincipal()
                }
                AnalisadorTabuleiro.EstadoTela.DIALOGO -> {
                    return tratarDialogo()
                }
                AnalisadorTabuleiro.EstadoTela.FASE_COMPLETA -> {
                    return ResultadoAnalise.FASE_COMPLETA
                }
                AnalisadorTabuleiro.EstadoTela.CARREGANDO -> {
                    delay(2000L)
                    return ResultadoAnalise.AGUARDANDO
                }
                AnalisadorTabuleiro.EstadoTela.DESCONHECIDO -> {
                    return tratarEstadoDesconhecido()
                }
                else -> { /* TABULEIRO — continuar */ }
            }

            // 2. Analisar o tabuleiro
            val regiao = analisador.detectarRegiaoTabuleiro(bitmap)
            val tabuleiro = analisador.analisar(
                bitmap,
                configs.tamanhoTabuleiroLinhas,
                configs.tamanhoTabuleiroColunas,
                regiao
            )

            // 3. Verificar se o tabuleiro mudou (prevenção de loop infinito)
            if (tabuleiroIgualAnterior(tabuleiro)) {
                contadorSemMudanca++
                if (contadorSemMudanca >= 5) {
                    logger?.aviso(TAG, "Tabuleiro não muda há $contadorSemMudanca ciclos — possível travamento")
                    contadorSemMudanca = 0
                    return tratarTravamento()
                }
            } else {
                contadorSemMudanca = 0
            }
            tabuleiroAnterior = tabuleiro

            // 4. Calcular jogadas
            val todasJogadas = calculador.calcularTodasJogadas(tabuleiro)

            if (motor.verificarTravamento(tabuleiro, todasJogadas)) {
                return ResultadoAnalise.SEM_MOVIMENTOS
            }

            // 5. Aplicar bônus de desobstrução
            val jogadasAjustadas = calculador.encontrarJogadasDesobstrucao(tabuleiro, todasJogadas)

            // 6. Selecionar melhor jogada
            val melhor = motor.selecionarMelhorJogada(
                jogadasAjustadas, tabuleiro, configs.estrategia
            ) ?: return ResultadoAnalise.SEM_MOVIMENTOS

            logger?.info(TAG, "Executando: ${melhor.descricaoCompleta()}")

            // 7. Adicionar delay humanizador (modo sigilo)
            if (configs.modoSigilo) {
                val jitter = (Math.random() * 400 - 200).toLong()
                delay(maxOf(50L, 200L + jitter))
            }

            // 8. Executar gesto via acessibilidade
            val duracaoSwipe = (120 * configs.velocidadeJogada.multiplicador).toLong()
                .coerceIn(80L, 500L)

            var sucesso = false
            BotAcessibilidadeServico.instancia?.executarSwipe(
                melhor.celulaOrigem,
                melhor.celulaDestino,
                duracaoSwipe
            ) { resultado ->
                sucesso = resultado
            }

            // Aguardar confirmação do gesto
            delay(200L)

            return if (sucesso || BotAcessibilidadeServico.ativo)
                ResultadoAnalise.JOGADA_EXECUTADA
            else
                ResultadoAnalise.ERRO

        } catch (e: Exception) {
            logger?.erro(TAG, "Erro em analisarEJogar: ${e.message}")
            return ResultadoAnalise.ERRO
        }
    }

    private suspend fun tratarMenuPrincipal(): ResultadoAnalise {
        logger?.info(TAG, "Menu principal detectado — tentando entrar no jogo")
        BotAcessibilidadeServico.instancia?.clicarBotaoCentral()
        delay(1500L)
        return ResultadoAnalise.NAVEGANDO_MENU
    }

    private suspend fun tratarDialogo(): ResultadoAnalise {
        logger?.info(TAG, "Diálogo detectado — tentando fechar")
        BotAcessibilidadeServico.instancia?.clicarBotaoInferior()
        delay(1000L)
        return ResultadoAnalise.NAVEGANDO_MENU
    }

    private suspend fun tratarEstadoDesconhecido(): ResultadoAnalise {
        logger?.aviso(TAG, "Estado de tela desconhecido — tentando botão central")
        BotAcessibilidadeServico.instancia?.clicarBotaoCentral()
        delay(2000L)
        return ResultadoAnalise.AGUARDANDO
    }

    private suspend fun tratarTravamento(): ResultadoAnalise {
        logger?.aviso(TAG, "Tratando travamento — pressionando voltar")
        BotAcessibilidadeServico.instancia?.pressionarVoltar()
        delay(1000L)
        BotAcessibilidadeServico.instancia?.abrirJogo()
        delay(3000L)
        return ResultadoAnalise.AGUARDANDO
    }

    /**
     * Coleta recompensas diárias, baús e presentes disponíveis.
     */
    suspend fun coletarRecompensas() {
        logger?.info(TAG, "Coletando recompensas...")
        repeat(3) {
            BotAcessibilidadeServico.instancia?.clicarBotaoCentral()
            delay(800L)
        }
    }

    /**
     * Reinicia o jogo após erros graves.
     */
    suspend fun reiniciarJogo() {
        logger?.info(TAG, "Reiniciando jogo...")
        BotAcessibilidadeServico.instancia?.pressionarVoltar()
        delay(500L)
        BotAcessibilidadeServico.instancia?.abrirJogo()
        delay(4000L)
    }

    fun processarEvento(event: AccessibilityEvent) {
        // Processar eventos de acessibilidade do Royal Match
        val texto = event.text?.joinToString(" ") ?: return
        when {
            texto.contains("Jogar", ignoreCase = true) ||
            texto.contains("Play", ignoreCase = true) -> {
                logger?.debug(TAG, "Botão de jogar detectado via acessibilidade")
            }
            texto.contains("Fase", ignoreCase = true) ||
            texto.contains("Level", ignoreCase = true) -> {
                logger?.debug(TAG, "Tela de fase detectada: $texto")
            }
        }
    }

    private fun tabuleiroIgualAnterior(atual: Tabuleiro): Boolean {
        val anterior = tabuleiroAnterior ?: return false
        if (atual.linhas != anterior.linhas || atual.colunas != anterior.colunas) return false

        var diferencas = 0
        for (l in 0 until atual.linhas) {
            for (c in 0 until atual.colunas) {
                if (atual.celulas[l][c].tipo != anterior.celulas[l][c].tipo) diferencas++
            }
        }
        return diferencas == 0
    }
}
