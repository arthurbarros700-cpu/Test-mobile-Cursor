package com.royalmatchbot.util

import android.content.Context
import android.content.SharedPreferences
import com.royalmatchbot.model.*

/**
 * Gerenciador de preferências persistidas do bot.
 * Salva e carrega todas as configurações do usuário.
 */
class GerenciadorPreferencias(contexto: Context) {

    companion object {
        const val PACOTE_JOGO = "com.peak.sultan"
        private const val PREFS_NOME = "royal_match_bot_prefs"
    }

    private val prefs: SharedPreferences =
        contexto.getSharedPreferences(PREFS_NOME, Context.MODE_PRIVATE)

    fun salvarConfiguracoes(config: ConfiguracoesBot) {
        prefs.edit().apply {
            putString("velocidade_jogada", config.velocidadeJogada.name)
            putString("estrategia", config.estrategia.name)
            putBoolean("usar_boosters", config.usarBoosters)
            putBoolean("coletar_recompensas", config.coletarRecompensas)
            putBoolean("iniciar_com_sistema", config.iniciarComSistema)
            putBoolean("pausar_com_tela", config.pausarComTela)
            putInt("limite_horas_diarias", config.limiteHorasDiarias)
            putLong("intervalo_jogadas_ms", config.intervaloEntreJogadasMs)
            putLong("delay_animacao_ms", config.delayAposAnimacaoMs)
            putInt("tentativas_reconhecimento", config.tentativasReconhecimento)
            putFloat("confianca_minima", config.confiancaMinimaReconhecimento)
            putBoolean("modo_sigilo", config.modoSigilo)
            putBoolean("notif_fase_completa", config.notificarFaseCompleta)
            putBoolean("notif_erros", config.notificarErros)
            putBoolean("salvar_logs", config.salvarLogs)
            putString("nivel_log", config.nivelLog.name)
            putInt("linhas_tabuleiro", config.tamanhoTabuleiroLinhas)
            putInt("colunas_tabuleiro", config.tamanhoTabuleiroColunas)
            apply()
        }
    }

    fun carregarConfiguracoes(): ConfiguracoesBot = ConfiguracoesBot(
        velocidadeJogada = prefs.getString("velocidade_jogada", null)
            ?.let { runCatching { VelocidadeJogada.valueOf(it) }.getOrNull() }
            ?: VelocidadeJogada.NORMAL,
        estrategia = prefs.getString("estrategia", null)
            ?.let { runCatching { EstrategiaJogo.valueOf(it) }.getOrNull() }
            ?: EstrategiaJogo.BALANCEADA,
        usarBoosters = prefs.getBoolean("usar_boosters", true),
        coletarRecompensas = prefs.getBoolean("coletar_recompensas", true),
        iniciarComSistema = prefs.getBoolean("iniciar_com_sistema", false),
        pausarComTela = prefs.getBoolean("pausar_com_tela", false),
        limiteHorasDiarias = prefs.getInt("limite_horas_diarias", 0),
        intervaloEntreJogadasMs = prefs.getLong("intervalo_jogadas_ms", 800L),
        delayAposAnimacaoMs = prefs.getLong("delay_animacao_ms", 1200L),
        tentativasReconhecimento = prefs.getInt("tentativas_reconhecimento", 3),
        confiancaMinimaReconhecimento = prefs.getFloat("confianca_minima", 0.75f),
        modoSigilo = prefs.getBoolean("modo_sigilo", false),
        notificarFaseCompleta = prefs.getBoolean("notif_fase_completa", true),
        notificarErros = prefs.getBoolean("notif_erros", true),
        salvarLogs = prefs.getBoolean("salvar_logs", true),
        nivelLog = prefs.getString("nivel_log", null)
            ?.let { runCatching { NivelLog.valueOf(it) }.getOrNull() }
            ?: NivelLog.INFO,
        tamanhoTabuleiroLinhas = prefs.getInt("linhas_tabuleiro", 9),
        tamanhoTabuleiroColunas = prefs.getInt("colunas_tabuleiro", 9)
    )

    fun salvarEstatisticas(stats: com.royalmatchbot.model.EstatisticasBot) {
        prefs.edit().apply {
            putInt("total_fases", stats.fasesCompletas)
            putInt("total_erros_fases", stats.fasesComErro)
            putLong("total_jogadas", stats.jogadasRealizadas)
            putLong("pontuacao_total", stats.pontuacaoTotal)
            putLong("tempo_total_ms", stats.tempoTotalMs)
            apply()
        }
    }

    fun carregarEstatisticasHistoricas(): Map<String, Any> = mapOf(
        "total_fases" to prefs.getInt("total_fases", 0),
        "total_jogadas" to prefs.getLong("total_jogadas", 0L),
        "pontuacao_total" to prefs.getLong("pontuacao_total", 0L),
        "tempo_total_ms" to prefs.getLong("tempo_total_ms", 0L)
    )

    fun limparHistorico() {
        prefs.edit().apply {
            remove("total_fases"); remove("total_jogadas")
            remove("pontuacao_total"); remove("tempo_total_ms")
            apply()
        }
    }

    fun primeiraExecucao(): Boolean {
        val primeira = prefs.getBoolean("primeira_execucao", true)
        if (primeira) prefs.edit().putBoolean("primeira_execucao", false).apply()
        return primeira
    }
}
