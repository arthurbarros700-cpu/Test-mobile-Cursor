package br.com.royalmatch.autobot.data

import android.content.Context
import androidx.core.content.edit

class BotConfigRepository(context: Context) {
    private val prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    fun salvarBotAtivo(ativo: Boolean) = prefs.edit { putBoolean(KEY_BOT_ATIVO, ativo) }
    fun lerBotAtivo(): Boolean = prefs.getBoolean(KEY_BOT_ATIVO, false)

    fun salvarIntervaloMs(valor: Int) = prefs.edit { putInt(KEY_INTERVALO_MS, valor) }
    fun lerIntervaloMs(): Int = prefs.getInt(KEY_INTERVALO_MS, 1400)

    fun salvarConfiancaMinima(valor: Float) = prefs.edit { putFloat(KEY_CONFIANCA_MINIMA, valor) }
    fun lerConfiancaMinima(): Float = prefs.getFloat(KEY_CONFIANCA_MINIMA, 0.65f)

    companion object {
        private const val PREFS_NAME = "royal_bot_config"
        private const val KEY_BOT_ATIVO = "bot_ativo"
        private const val KEY_INTERVALO_MS = "intervalo_ms"
        private const val KEY_CONFIANCA_MINIMA = "confianca_minima"
    }
}
