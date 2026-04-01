package com.royalmatchbot.model

/**
 * Enumeração dos possíveis estados do bot durante a execução.
 */
enum class EstadoBot(val descricao: String, val icone: String) {
    PARADO("Bot parado", "⏹️"),
    INICIANDO("Iniciando bot...", "🚀"),
    AGUARDANDO_JOGO("Aguardando jogo abrir", "⏳"),
    CAPTURANDO_TELA("Capturando tela", "📸"),
    ANALISANDO_TABULEIRO("Analisando tabuleiro", "🔍"),
    CALCULANDO_JOGADA("Calculando melhor jogada", "🧠"),
    EXECUTANDO_JOGADA("Executando jogada", "👆"),
    AGUARDANDO_ANIMACAO("Aguardando animação", "⌛"),
    VERIFICANDO_RESULTADO("Verificando resultado", "✅"),
    FASE_COMPLETA("Fase concluída!", "🎉"),
    JOGO_PAUSADO("Jogo pausado", "⏸️"),
    SEM_MOVIMENTOS("Sem movimentos válidos", "❌"),
    ERRO("Erro detectado", "⚠️"),
    REINICIANDO("Reiniciando tentativa", "🔄"),
    USANDO_BOOSTER("Usando booster estratégico", "💥"),
    AGUARDANDO_VIDAS("Aguardando recarregar vidas", "❤️"),
    COLETANDO_RECOMPENSAS("Coletando recompensas diárias", "🎁"),
    NAVEGANDO_MENUS("Navegando nos menus", "📱")
}

/**
 * Estatísticas acumuladas da sessão atual do bot.
 */
data class EstatisticasBot(
    var fasesCompletas: Int = 0,
    var fasesComErro: Int = 0,
    var jogadasRealizadas: Long = 0L,
    var jogadasComBooster: Int = 0,
    var combosRealizados: Int = 0,
    var pontuacaoTotal: Long = 0L,
    var tempoTotalMs: Long = 0L,
    var capturasTela: Long = 0L,
    var reconhecimentosFalhos: Int = 0,
    var errosRecuperados: Int = 0,
    var sessaoInicio: Long = System.currentTimeMillis()
) {
    val tempoSessaoFormatado: String get() {
        val segundos = tempoTotalMs / 1000
        val minutos = segundos / 60
        val horas = minutos / 60
        return "%02d:%02d:%02d".format(horas, minutos % 60, segundos % 60)
    }

    val taxaSucessoFases: Float get() {
        val total = fasesCompletas + fasesComErro
        return if (total > 0) fasesCompletas.toFloat() / total * 100f else 0f
    }

    val mediaJogadasPorFase: Float get() =
        if (fasesCompletas > 0) jogadasRealizadas.toFloat() / fasesCompletas else 0f

    fun resumo(): String = buildString {
        appendLine("=== Estatísticas da Sessão ===")
        appendLine("Tempo ativo: $tempoSessaoFormatado")
        appendLine("Fases completas: $fasesCompletas")
        appendLine("Taxa de sucesso: ${"%.1f".format(taxaSucessoFases)}%")
        appendLine("Jogadas realizadas: $jogadasRealizadas")
        appendLine("Combos feitos: $combosRealizados")
        appendLine("Boosters usados: $jogadasComBooster")
        appendLine("Pontuação total: $pontuacaoTotal")
    }
}

/**
 * Configurações do bot persistidas em SharedPreferences.
 */
data class ConfiguracoesBot(
    var velocidadeJogada: VelocidadeJogada = VelocidadeJogada.NORMAL,
    var estrategia: EstrategiaJogo = EstrategiaJogo.BALANCEADA,
    var usarBoosters: Boolean = true,
    var coletarRecompensas: Boolean = true,
    var iniciarComSistema: Boolean = false,
    var pausarComTela: Boolean = false,
    var limiteHorasDiarias: Int = 0,
    var intervaloEntreJogadasMs: Long = 800L,
    var delayAposAnimacaoMs: Long = 1200L,
    var tentativasReconhecimento: Int = 3,
    var confiancaMinimaReconhecimento: Float = 0.75f,
    var modoSigilo: Boolean = false,
    var notificarFaseCompleta: Boolean = true,
    var notificarErros: Boolean = true,
    var salvarLogs: Boolean = true,
    var nivelLog: NivelLog = NivelLog.INFO,
    var tamanhoTabuleiroLinhas: Int = 9,
    var tamanhoTabuleiroColunas: Int = 9
)

enum class VelocidadeJogada(val nome: String, val multiplicador: Float) {
    MUITO_LENTA("Muito Lenta (3s)", 3.0f),
    LENTA("Lenta (2s)", 2.0f),
    NORMAL("Normal (1s)", 1.0f),
    RAPIDA("Rápida (0.6s)", 0.6f),
    MUITO_RAPIDA("Muito Rápida (0.3s)", 0.3f)
}

enum class EstrategiaJogo(val nome: String, val descricao: String) {
    AGRESSIVA("Agressiva", "Prioriza pontuação alta e combos explosivos"),
    BALANCEADA("Balanceada", "Equilíbrio entre pontos e progressão"),
    CONSERVADORA("Conservadora", "Foca em desobstruir e garantir continuidade"),
    BOOSTER_FIRST("Boosters Primeiro", "Maximiza criação e uso de boosters"),
    OBJETIVO("Foco no Objetivo", "Prioriza completar o objetivo da fase")
}

enum class NivelLog(val nome: String) {
    VERBOSE("Verbose"),
    DEBUG("Debug"),
    INFO("Info"),
    AVISO("Aviso"),
    ERRO("Erro")
}
