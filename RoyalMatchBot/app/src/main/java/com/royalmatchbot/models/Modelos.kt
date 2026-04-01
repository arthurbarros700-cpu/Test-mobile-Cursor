package com.royalmatchbot.models

import android.os.Parcelable
import kotlinx.parcelize.Parcelize

/**
 * Modelos de dados utilizados pelo bot Royal Match.
 */

// ==================== ENUMERAÇÕES ====================

enum class StatusBot {
    INATIVO,
    INICIANDO,
    AGUARDANDO_JOGO,
    ANALISANDO,
    CALCULANDO_JOGADA,
    EXECUTANDO_JOGADA,
    AGUARDANDO_ANIMACAO,
    FASE_CONCLUIDA,
    COLETANDO_RECOMPENSAS,
    SEM_VIDAS,
    AGUARDANDO_VIDAS,
    ERRO,
    PAUSADO
}

enum class TipoEstrategia {
    IA_AVANCADA,
    AGRESSIVA,
    CONSERVADORA,
    VELOCIDADE_MAXIMA
}

enum class VelocidadeBot {
    MUITO_LENTA,
    LENTA,
    NORMAL,
    RAPIDA,
    TURBO
}

enum class TipoPeca {
    VERMELHO,
    AZUL,
    VERDE,
    AMARELO,
    ROXO,
    LARANJA,
    VAZIO,
    OBSTACULO,
    ESPECIAL_FOGUETE_H,
    ESPECIAL_FOGUETE_V,
    ESPECIAL_TNT,
    ESPECIAL_ARCO_IRIS,
    ESPECIAL_PROPELLER
}

enum class TipoLog {
    INFO,
    ACAO,
    FASE,
    ERRO,
    SISTEMA,
    AVISO,
    BOOSTER
}

enum class EstadoFase {
    AGUARDANDO_INICIO,
    EM_ANDAMENTO,
    CONCLUIDA,
    FALHOU,
    SEM_MOVIMENTOS
}

// ==================== DADOS DO TABULEIRO ====================

/**
 * Representa uma célula no tabuleiro do jogo.
 */
@Parcelize
data class Celula(
    val linha: Int,
    val coluna: Int,
    val tipo: TipoPeca,
    val especial: Boolean = false,
    val travada: Boolean = false,
    val cobertaGelo: Boolean = false,
    val cobertaCaixa: Int = 0
) : Parcelable

/**
 * Representa o estado completo do tabuleiro (8x8).
 */
data class Tabuleiro(
    val celulas: Array<Array<Celula>> = Array(8) { linha ->
        Array(8) { coluna ->
            Celula(linha, coluna, TipoPeca.VAZIO)
        }
    },
    val movimentosRestantes: Int = 0,
    val pontuacaoAtual: Int = 0,
    val objetivosRestantes: Map<String, Int> = emptyMap()
) {
    fun getCelula(linha: Int, coluna: Int): Celula? {
        return if (linha in 0..7 && coluna in 0..7) celulas[linha][coluna] else null
    }

    fun isValido(linha: Int, coluna: Int) = linha in 0..7 && coluna in 0..7

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as Tabuleiro
        return celulas.contentDeepEquals(other.celulas)
    }

    override fun hashCode(): Int = celulas.contentDeepHashCode()
}

// ==================== JOGADAS ====================

/**
 * Representa um movimento de troca entre duas peças adjacentes.
 */
data class Jogada(
    val linhaOrigem: Int,
    val colunaOrigem: Int,
    val linhaDestino: Int,
    val colunaDestino: Int,
    val pontuacaoEstimada: Float = 0f,
    val criaEspecial: Boolean = false,
    val tipoEspecialCriado: TipoPeca? = null,
    val prioridade: Int = 0
)

/**
 * Resultado de uma análise de jogada pelo algoritmo de IA.
 */
data class AnaliseJogada(
    val jogada: Jogada,
    val combosGerados: Int = 0,
    val piecasEliminadas: Int = 0,
    val progressoObjetivo: Float = 0f,
    val pontuacaoFinal: Float = 0f
)

// ==================== SESSÃO E ESTATÍSTICAS ====================

/**
 * Dados de uma fase individual.
 */
data class DadosFase(
    val id: Long = System.currentTimeMillis(),
    val numeroFase: Int,
    val timestamp: Long = System.currentTimeMillis(),
    val estado: EstadoFase,
    val tempoMs: Long,
    val movimentosUsados: Int,
    val movimentosDisponiveis: Int,
    val boostersUsados: Int,
    val pontuacao: Int,
    val estrategiaUsada: TipoEstrategia
) {
    val duracaoFormatada: String
        get() {
            val segundos = tempoMs / 1000
            return if (segundos < 60) "${segundos}s" else "${segundos / 60}m ${segundos % 60}s"
        }
}

/**
 * Estatísticas globais do bot.
 */
data class EstatisticasGlobais(
    val totalFasesCompletas: Int = 0,
    val totalFasesFalhas: Int = 0,
    val totalMovimentos: Long = 0,
    val totalBoostersUsados: Int = 0,
    val tempoTotalJogoMs: Long = 0,
    val historicoFases: List<DadosFase> = emptyList()
) {
    val taxaSucesso: Float
        get() {
            val total = totalFasesCompletas + totalFasesFalhas
            return if (total == 0) 0f else (totalFasesCompletas.toFloat() / total) * 100f
        }

    val tempoFormatado: String
        get() {
            val horas = tempoTotalJogoMs / 3_600_000
            val minutos = (tempoTotalJogoMs % 3_600_000) / 60_000
            return "${horas}h ${minutos}m"
        }
}

/**
 * Estado da sessão atual do bot.
 */
data class SessaoBot(
    val inicio: Long = System.currentTimeMillis(),
    var status: StatusBot = StatusBot.INATIVO,
    var fasesCompletas: Int = 0,
    var fasesFalhas: Int = 0,
    var movimentos: Int = 0,
    var fasesHistorico: MutableList<DadosFase> = mutableListOf()
) {
    val tempoDecorrido: Long
        get() = System.currentTimeMillis() - inicio

    val taxaSucesso: Float
        get() {
            val total = fasesCompletas + fasesFalhas
            return if (total == 0) 0f else (fasesCompletas.toFloat() / total) * 100f
        }

    val tempoFormatado: String
        get() {
            val minutos = tempoDecorrido / 60_000
            val segundos = (tempoDecorrido % 60_000) / 1000
            return String.format("%02d:%02d", minutos, segundos)
        }
}

// ==================== ENTRADA DE LOG ====================

data class EntradaLog(
    val id: Long = System.currentTimeMillis(),
    val timestamp: Long = System.currentTimeMillis(),
    val tipo: TipoLog,
    val mensagem: String,
    val detalhe: String? = null
) {
    val horaFormatada: String
        get() {
            val h = (timestamp / 3_600_000) % 24
            val m = (timestamp / 60_000) % 60
            val s = (timestamp / 1000) % 60
            return String.format("%02d:%02d:%02d", h, m, s)
        }
}

// ==================== CONFIGURAÇÕES ====================

data class ConfiguracoesBot(
    val velocidade: VelocidadeBot = VelocidadeBot.NORMAL,
    val estrategia: TipoEstrategia = TipoEstrategia.IA_AVANCADA,
    val usarBoostersAutomatico: Boolean = true,
    val antiDeteccao: Boolean = true,
    val delayBaseMs: Long = 500L,
    val delayVariacaoMs: Long = 200L,
    val maxFasesPorSessao: Int = 0,
    val horarioInicio: Int = 0,
    val horarioFim: Int = 0,
    val usarHorario: Boolean = false,
    val notificarFaseConcluida: Boolean = true,
    val notificarSemVidas: Boolean = true,
    val iniciarComBoot: Boolean = false,
    val resolucaoCustom: Boolean = false,
    val larguraTela: Int = 0,
    val alturaTela: Int = 0
) {
    val delayEfetivo: Long
        get() = when (velocidade) {
            VelocidadeBot.MUITO_LENTA -> delayBaseMs * 4
            VelocidadeBot.LENTA -> delayBaseMs * 2
            VelocidadeBot.NORMAL -> delayBaseMs
            VelocidadeBot.RAPIDA -> delayBaseMs / 2
            VelocidadeBot.TURBO -> delayBaseMs / 4
        }
}

// ==================== DETECÇÃO DE TELA ====================

data class RegiaoTela(
    val x: Int,
    val y: Int,
    val largura: Int,
    val altura: Int
) {
    val centroX: Int get() = x + largura / 2
    val centroY: Int get() = y + altura / 2
}

data class DeteccaoTela(
    val estaNoJogo: Boolean,
    val faseAtiva: Boolean,
    val numeroFase: Int?,
    val movimentosRestantes: Int?,
    val temBotaoJogar: Boolean,
    val temBotaoColetarRecompensa: Boolean,
    val temPopupVidas: Boolean,
    val temPopupDerrota: Boolean,
    val temPopupVitoria: Boolean,
    val regiaoBotaoJogar: RegiaoTela? = null,
    val regiaoBotaoColetarRecompensa: RegiaoTela? = null,
    val regiaoTabuleiro: RegiaoTela? = null
)
