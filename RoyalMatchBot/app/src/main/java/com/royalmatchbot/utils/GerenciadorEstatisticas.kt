package com.royalmatchbot.utils

import android.content.Context
import android.content.SharedPreferences
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.royalmatchbot.models.DadosFase
import com.royalmatchbot.models.EstatisticasGlobais
import timber.log.Timber

/**
 * Gerencia e persiste as estatísticas de jogo do bot.
 */
class GerenciadorEstatisticas(context: Context) {

    companion object {
        private const val PREFS_NOME = "royalmatchbot_stats"
        private const val CHAVE_TOTAL_COMPLETAS = "total_completas"
        private const val CHAVE_TOTAL_FALHAS = "total_falhas"
        private const val CHAVE_TOTAL_MOVIMENTOS = "total_movimentos"
        private const val CHAVE_TOTAL_BOOSTERS = "total_boosters"
        private const val CHAVE_TEMPO_TOTAL = "tempo_total"
        private const val CHAVE_HISTORICO = "historico_fases"
        private const val MAX_HISTORICO = 200
    }

    private val prefs: SharedPreferences = context.getSharedPreferences(PREFS_NOME, Context.MODE_PRIVATE)
    private val gson = Gson()

    fun registrarFase(dados: DadosFase) {
        val historico = obterHistoricoFases().toMutableList()
        historico.add(0, dados)
        if (historico.size > MAX_HISTORICO) historico.removeAt(historico.size - 1)

        val stats = obterEstatisticas()
        val novasStats = stats.copy(
            totalFasesCompletas = if (dados.estado == com.royalmatchbot.models.EstadoFase.CONCLUIDA)
                stats.totalFasesCompletas + 1 else stats.totalFasesCompletas,
            totalFasesFalhas = if (dados.estado == com.royalmatchbot.models.EstadoFase.FALHOU)
                stats.totalFasesFalhas + 1 else stats.totalFasesFalhas,
            totalMovimentos = stats.totalMovimentos + dados.movimentosUsados,
            totalBoostersUsados = stats.totalBoostersUsados + dados.boostersUsados,
            tempoTotalJogoMs = stats.tempoTotalJogoMs + dados.tempoMs
        )

        salvarEstatisticas(novasStats)
        salvarHistorico(historico)
    }

    fun obterEstatisticas(): EstatisticasGlobais {
        return EstatisticasGlobais(
            totalFasesCompletas = prefs.getInt(CHAVE_TOTAL_COMPLETAS, 0),
            totalFasesFalhas = prefs.getInt(CHAVE_TOTAL_FALHAS, 0),
            totalMovimentos = prefs.getLong(CHAVE_TOTAL_MOVIMENTOS, 0),
            totalBoostersUsados = prefs.getInt(CHAVE_TOTAL_BOOSTERS, 0),
            tempoTotalJogoMs = prefs.getLong(CHAVE_TEMPO_TOTAL, 0),
            historicoFases = obterHistoricoFases()
        )
    }

    fun limparEstatisticas() {
        prefs.edit().clear().apply()
    }

    private fun obterHistoricoFases(): List<DadosFase> {
        return try {
            val json = prefs.getString(CHAVE_HISTORICO, null) ?: return emptyList()
            val tipo = object : TypeToken<List<DadosFase>>() {}.type
            gson.fromJson(json, tipo) ?: emptyList()
        } catch (e: Exception) {
            Timber.e(e, "Erro ao carregar histórico")
            emptyList()
        }
    }

    private fun salvarEstatisticas(stats: EstatisticasGlobais) {
        prefs.edit().apply {
            putInt(CHAVE_TOTAL_COMPLETAS, stats.totalFasesCompletas)
            putInt(CHAVE_TOTAL_FALHAS, stats.totalFasesFalhas)
            putLong(CHAVE_TOTAL_MOVIMENTOS, stats.totalMovimentos)
            putInt(CHAVE_TOTAL_BOOSTERS, stats.totalBoostersUsados)
            putLong(CHAVE_TEMPO_TOTAL, stats.tempoTotalJogoMs)
            apply()
        }
    }

    private fun salvarHistorico(historico: List<DadosFase>) {
        try {
            val json = gson.toJson(historico)
            prefs.edit().putString(CHAVE_HISTORICO, json).apply()
        } catch (e: Exception) {
            Timber.e(e, "Erro ao salvar histórico")
        }
    }
}
