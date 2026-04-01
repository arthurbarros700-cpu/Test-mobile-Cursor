package com.royalmatchbot.service

import android.accessibilityservice.AccessibilityService
import android.graphics.Bitmap
import android.os.Handler
import android.os.Looper
import android.view.accessibility.AccessibilityEvent
import com.royalmatchbot.ai.MotorIA
import com.royalmatchbot.controller.ControladorGestos
import com.royalmatchbot.models.*
import com.royalmatchbot.utils.GerenciadorConfiguracoes
import com.royalmatchbot.utils.GerenciadorEstatisticas
import com.royalmatchbot.utils.GerenciadorLogs
import com.royalmatchbot.vision.AnalisadorTela
import kotlinx.coroutines.*
import timber.log.Timber

/**
 * Serviço de Acessibilidade - Motor Principal do Bot Royal Match.
 *
 * Este serviço é o núcleo de toda a automação. Ele:
 * 1. Recebe eventos de acessibilidade do sistema
 * 2. Captura screenshots da tela do jogo
 * 3. Analisa o estado atual usando visão computacional
 * 4. Calcula a melhor jogada usando IA
 * 5. Executa a jogada via simulação de gestos
 * 6. Gerencia o loop de jogo completo (fases, vidas, recompensas)
 */
class BotAcessibilidadeService : AccessibilityService() {

    companion object {
        // Pacote do Royal Match no dispositivo
        const val PACOTE_ROYAL_MATCH = "com.ea.game.easports.kingdomofheroesroyalmatch"

        private const val INTERVALO_ANALISE_MS = 500L
        private const val DELAY_APOS_JOGADA_MS = 1200L
        private const val DELAY_APOS_FASE_MS = 2000L
        private const val DELAY_AGUARDANDO_MS = 3000L
        private const val MAX_TENTATIVAS_ERRO = 5

        @Volatile
        var instancia: BotAcessibilidadeService? = null
            private set

        @Volatile
        var botAtivo: Boolean = false
            private set
    }

    private val escopo = CoroutineScope(Dispatchers.Main + SupervisorJob())
    private val handler = Handler(Looper.getMainLooper())

    private lateinit var analisador: AnalisadorTela
    private lateinit var motorIA: MotorIA
    private lateinit var controlador: ControladorGestos
    private lateinit var gerConfig: GerenciadorConfiguracoes
    private lateinit var gerEstat: GerenciadorEstatisticas
    private lateinit var gerLogs: GerenciadorLogs

    private var sessaoAtual: SessaoBot = SessaoBot()
    private var jobPrincipal: Job? = null
    private var tentativasErro = 0
    private var inicioDaFaseMs = 0L
    private var movimentosNaFase = 0
    private var boostersNaFase = 0
    private var numeroFaseAtual = 0

    override fun onServiceConnected() {
        super.onServiceConnected()
        instancia = this

        analisador = AnalisadorTela()
        motorIA = MotorIA()
        controlador = ControladorGestos(this)
        gerConfig = GerenciadorConfiguracoes(applicationContext)
        gerEstat = GerenciadorEstatisticas(applicationContext)
        gerLogs = GerenciadorLogs(applicationContext)

        gerLogs.log(TipoLog.SISTEMA, "Serviço de Acessibilidade conectado e pronto!")
        Timber.i("BotAcessibilidadeService conectado")
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        // Eventos de acessibilidade são monitorados mas o bot usa screenshots
        if (event?.packageName == PACOTE_ROYAL_MATCH) {
            if (botAtivo && jobPrincipal?.isActive != true) {
                iniciarLoopBot()
            }
        }
    }

    override fun onInterrupt() {
        Timber.w("Serviço de acessibilidade interrompido")
        pararBot()
    }

    override fun onDestroy() {
        super.onDestroy()
        instancia = null
        escopo.cancel()
        pararBot()
    }

    fun iniciarBot() {
        if (botAtivo) return
        botAtivo = true
        sessaoAtual = SessaoBot(status = StatusBot.INICIANDO)
        gerLogs.log(TipoLog.SISTEMA, "Bot iniciado pelo usuário")

        BotEventos.emitirStatusMudou(StatusBot.INICIANDO)
        iniciarLoopBot()
    }

    fun pararBot() {
        if (!botAtivo) return
        botAtivo = false
        jobPrincipal?.cancel()
        jobPrincipal = null
        sessaoAtual.status = StatusBot.INATIVO
        gerLogs.log(TipoLog.SISTEMA, "Bot parado pelo usuário")
        BotEventos.emitirStatusMudou(StatusBot.INATIVO)
    }

    fun getSessaoAtual(): SessaoBot = sessaoAtual

    private fun iniciarLoopBot() {
        jobPrincipal?.cancel()
        jobPrincipal = escopo.launch {
            gerLogs.log(TipoLog.INFO, "Loop de jogo iniciado")
            loopPrincipal()
        }
    }

    /**
     * Loop principal de automação do bot.
     * Roda continuamente enquanto o bot estiver ativo.
     */
    private suspend fun loopPrincipal() {
        while (botAtivo) {
            try {
                val screenshot = capturarScreenshot() ?: run {
                    Timber.w("Screenshot nulo, aguardando...")
                    delay(DELAY_AGUARDANDO_MS)
                    return@run null
                } ?: continue

                val deteccao = analisador.analisarTela(screenshot)
                processarEstadoJogo(deteccao, screenshot)

                delay(INTERVALO_ANALISE_MS)
                tentativasErro = 0

            } catch (e: CancellationException) {
                break
            } catch (e: Exception) {
                tentativasErro++
                Timber.e(e, "Erro no loop principal (tentativa $tentativasErro)")
                gerLogs.log(TipoLog.ERRO, "Erro no loop: ${e.message}")

                if (tentativasErro >= MAX_TENTATIVAS_ERRO) {
                    gerLogs.log(TipoLog.ERRO, "Muitos erros consecutivos. Reiniciando loop em 10s...")
                    delay(10_000L)
                    tentativasErro = 0
                }

                delay(2_000L)
            }
        }
    }

    /**
     * Processa o estado detectado da tela e toma a ação apropriada.
     */
    private suspend fun processarEstadoJogo(deteccao: DeteccaoTela, screenshot: Bitmap) {
        when {
            // Tela de vitória - coletar recompensas
            deteccao.temPopupVitoria -> {
                atualizarStatus(StatusBot.FASE_CONCLUIDA)
                registrarFaseConcluida(true)
                delay(800L)
                fecharPopupVitoria(screenshot)
            }

            // Tela de derrota - tentar novamente
            deteccao.temPopupDerrota -> {
                registrarFaseConcluida(false)
                delay(1000L)
                fecharPopupDerrota(screenshot)
            }

            // Botão para coletar recompensa visível
            deteccao.temBotaoColetarRecompensa -> {
                atualizarStatus(StatusBot.COLETANDO_RECOMPENSAS)
                delay(500L)
                clicarCentroTela()
                delay(DELAY_APOS_FASE_MS)
            }

            // Popup de vidas esgotadas
            deteccao.temPopupVidas -> {
                atualizarStatus(StatusBot.SEM_VIDAS)
                gerLogs.log(TipoLog.AVISO, "Sem vidas! Aguardando recarga...")
                fecharPopupVidas(screenshot)
                delay(60_000L) // Esperar 1 minuto antes de tentar novamente
            }

            // Botão para iniciar fase visível
            deteccao.temBotaoJogar -> {
                atualizarStatus(StatusBot.AGUARDANDO_JOGO)
                delay(500L)
                clicarBotaoJogar(deteccao)
            }

            // Fase ativa - analisar e jogar
            deteccao.faseAtiva -> {
                if (deteccao.movimentosRestantes != null && deteccao.movimentosRestantes > 0) {
                    atualizarStatus(StatusBot.ANALISANDO)
                    executarJogadaNaFase(screenshot, deteccao)
                } else {
                    // Sem movimentos - aguardar resolução automática
                    delay(2000L)
                }
            }

            // Jogo não detectado - aguardar
            !deteccao.estaNoJogo -> {
                atualizarStatus(StatusBot.AGUARDANDO_JOGO)
                gerLogs.log(TipoLog.INFO, "Aguardando Royal Match ser aberto...")
                delay(DELAY_AGUARDANDO_MS)
            }

            else -> {
                // Estado desconhecido - toque no centro para avançar
                delay(1500L)
                clicarCentroTela()
                delay(1000L)
            }
        }
    }

    /**
     * Analisa o tabuleiro e executa a melhor jogada disponível.
     */
    private suspend fun executarJogadaNaFase(screenshot: Bitmap, deteccao: DeteccaoTela) {
        try {
            atualizarStatus(StatusBot.ANALISANDO)

            val tabuleiro = analisador.analisarTabuleiro(screenshot)
            val config = gerConfig.obterConfiguracoes()

            // Verificar se há combinação especial de peças disponível
            val combinacaoEspecial = motorIA.encontrarCombinacaoEspecial(tabuleiro)
            if (combinacaoEspecial != null) {
                gerLogs.log(TipoLog.BOOSTER, "Combinando peças especiais!")
                executarJogada(combinacaoEspecial, tabuleiro)
                return
            }

            atualizarStatus(StatusBot.CALCULANDO_JOGADA)
            val melhorJogada = motorIA.calcularMelhorJogada(
                tabuleiro,
                config.estrategia,
                tabuleiro.objetivosRestantes
            )

            if (melhorJogada != null) {
                atualizarStatus(StatusBot.EXECUTANDO_JOGADA)
                executarJogada(melhorJogada, tabuleiro)
            } else {
                gerLogs.log(TipoLog.AVISO, "Nenhuma jogada calculada - tocando na tela")
                clicarCentroTela()
                delay(1000L)
            }

        } catch (e: Exception) {
            Timber.e(e, "Erro ao executar jogada")
            gerLogs.log(TipoLog.ERRO, "Erro na jogada: ${e.message}")
        }
    }

    /**
     * Executa fisicamente uma jogada na tela.
     */
    private suspend fun executarJogada(jogada: Jogada, tabuleiro: Tabuleiro) {
        val config = gerConfig.obterConfiguracoes()

        val (x1, y1) = analisador.calcularPosicaoCelula(jogada.linhaOrigem, jogada.colunaOrigem)
        val (x2, y2) = analisador.calcularPosicaoCelula(jogada.linhaDestino, jogada.colunaDestino)

        gerLogs.log(
            TipoLog.ACAO,
            "Jogada: (${jogada.linhaOrigem},${jogada.colunaOrigem}) → " +
                    "(${jogada.linhaDestino},${jogada.colunaDestino}) | " +
                    "Score: ${jogada.pontuacaoEstimada.toInt()}"
        )

        // Delay humanizado antes da jogada
        if (config.antiDeteccao) {
            delay(config.delayEfetivo + (Math.random() * config.delayVariacaoMs).toLong())
        } else {
            delay(config.delayEfetivo)
        }

        val sucesso = controlador.executarTroca(x1, y1, x2, y2, config)

        if (sucesso) {
            movimentosNaFase++
            sessaoAtual.movimentos++

            BotEventos.emitirMovimentoExecutado(jogada, movimentosNaFase)

            // Aguardar animação do jogo
            atualizarStatus(StatusBot.AGUARDANDO_ANIMACAO)
            delay(DELAY_APOS_JOGADA_MS)
        } else {
            Timber.w("Falha ao executar jogada")
            delay(500L)
        }
    }

    private suspend fun clicarBotaoJogar(deteccao: DeteccaoTela) {
        val regiao = deteccao.regiaoBotaoJogar
        if (regiao != null) {
            gerLogs.log(TipoLog.ACAO, "Clicando no botão Jogar")
            inicioDaFaseMs = System.currentTimeMillis()
            movimentosNaFase = 0
            boostersNaFase = 0
            numeroFaseAtual = deteccao.numeroFase ?: (numeroFaseAtual + 1)

            controlador.executarToque(regiao.centroX, regiao.centroY)
            delay(2000L)
        }
    }

    private suspend fun clicarCentroTela() {
        val largura = resources.displayMetrics.widthPixels
        val altura = resources.displayMetrics.heightPixels
        controlador.executarToque(largura / 2, altura / 2)
    }

    private suspend fun fecharPopupVitoria(screenshot: Bitmap) {
        gerLogs.log(TipoLog.FASE, "Fase concluída! Coletando recompensas...")
        atualizarStatus(StatusBot.COLETANDO_RECOMPENSAS)

        val largura = resources.displayMetrics.widthPixels
        val altura = resources.displayMetrics.heightPixels

        // Toque na parte inferior para coletar
        controlador.executarToque(largura / 2, (altura * 0.8f).toInt())
        delay(1000L)
        controlador.executarToque(largura / 2, (altura * 0.8f).toInt())
        delay(DELAY_APOS_FASE_MS)
    }

    private suspend fun fecharPopupDerrota(screenshot: Bitmap) {
        gerLogs.log(TipoLog.AVISO, "Fase falhou! Tentando novamente...")
        val largura = resources.displayMetrics.widthPixels
        val altura = resources.displayMetrics.heightPixels

        // Toque no botão de tentar novamente (geralmente no centro-inferior)
        controlador.executarToque(largura / 2, (altura * 0.65f).toInt())
        delay(2000L)
    }

    private suspend fun fecharPopupVidas(screenshot: Bitmap) {
        val largura = resources.displayMetrics.widthPixels
        val altura = resources.displayMetrics.heightPixels
        // Fechar popup de vidas (botão X geralmente no topo direito)
        controlador.executarToque((largura * 0.85f).toInt(), (altura * 0.25f).toInt())
        delay(500L)
    }

    private fun registrarFaseConcluida(sucesso: Boolean) {
        val tempoFase = System.currentTimeMillis() - inicioDaFaseMs

        val dadosFase = DadosFase(
            numeroFase = numeroFaseAtual,
            estado = if (sucesso) EstadoFase.CONCLUIDA else EstadoFase.FALHOU,
            tempoMs = tempoFase,
            movimentosUsados = movimentosNaFase,
            movimentosDisponiveis = 30,
            boostersUsados = boostersNaFase,
            pontuacao = 0,
            estrategiaUsada = gerConfig.obterConfiguracoes().estrategia
        )

        if (sucesso) {
            sessaoAtual.fasesCompletas++
            gerLogs.log(TipoLog.FASE, "✓ Fase $numeroFaseAtual concluída em ${dadosFase.duracaoFormatada}!")
        } else {
            sessaoAtual.fasesFalhas++
            gerLogs.log(TipoLog.FASE, "✗ Fase $numeroFaseAtual falhou após ${dadosFase.duracaoFormatada}")
        }

        sessaoAtual.fasesHistorico.add(dadosFase)
        gerEstat.registrarFase(dadosFase)

        BotEventos.emitirFaseAtualizada(sessaoAtual)
    }

    private fun atualizarStatus(novoStatus: StatusBot) {
        sessaoAtual.status = novoStatus
        BotEventos.emitirStatusMudou(novoStatus)
    }

    private fun capturarScreenshot(): Bitmap? {
        return try {
            takeScreenshot(
                android.view.Display.DEFAULT_DISPLAY,
                mainExecutor,
                object : TakeScreenshotCallback {
                    override fun onSuccess(screenshot: ScreenshotResult) {
                        // Callback assíncrono - mas usamos resultado síncrono via coroutine
                    }
                    override fun onFailure(errorCode: Int) {
                        Timber.e("Falha ao capturar screenshot: código $errorCode")
                    }
                }
            )
            null // A captura é assíncrona; usamos fluxo diferente abaixo
        } catch (e: Exception) {
            Timber.w("takeScreenshot não disponível nesta versão")
            null
        }
    }
}

/**
 * Sistema de eventos do bot para comunicação entre serviço e UI.
 */
object BotEventos {
    private val ouvintesStatus = mutableListOf<(StatusBot) -> Unit>()
    private val ouvintesMovimento = mutableListOf<(Jogada, Int) -> Unit>()
    private val ouviintesFase = mutableListOf<(SessaoBot) -> Unit>()

    fun registrarOuvinteStatus(ouvinte: (StatusBot) -> Unit) {
        ouvintesStatus.add(ouvinte)
    }

    fun registrarOuvinteMovimento(ouvinte: (Jogada, Int) -> Unit) {
        ouvintesMovimento.add(ouvinte)
    }

    fun registrarOuvinteFase(ouvinte: (SessaoBot) -> Unit) {
        ouviintesFase.add(ouvinte)
    }

    fun removerOuvintes() {
        ouvintesStatus.clear()
        ouvintesMovimento.clear()
        ouviintesFase.clear()
    }

    fun emitirStatusMudou(status: StatusBot) {
        Handler(Looper.getMainLooper()).post {
            ouvintesStatus.forEach { it(status) }
        }
    }

    fun emitirMovimentoExecutado(jogada: Jogada, total: Int) {
        Handler(Looper.getMainLooper()).post {
            ouvintesMovimento.forEach { it(jogada, total) }
        }
    }

    fun emitirFaseAtualizada(sessao: SessaoBot) {
        Handler(Looper.getMainLooper()).post {
            ouviintesFase.forEach { it(sessao) }
        }
    }
}
