package com.royalmatchbot.utils

import android.content.Context
import android.content.SharedPreferences
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.royalmatchbot.models.EntradaLog
import com.royalmatchbot.models.TipoLog
import timber.log.Timber
import java.text.SimpleDateFormat
import java.util.*

/**
 * Gerencia o registro de logs das atividades do bot.
 */
class GerenciadorLogs(context: Context) {

    companion object {
        private const val PREFS_NOME = "royalmatchbot_logs"
        private const val CHAVE_LOGS = "lista_logs"
        private const val MAX_LOGS = 500
    }

    private val prefs: SharedPreferences = context.getSharedPreferences(PREFS_NOME, Context.MODE_PRIVATE)
    private val gson = Gson()
    private val formatoData = SimpleDateFormat("HH:mm:ss", Locale("pt", "BR"))

    private val ouvintesLogs = mutableListOf<(EntradaLog) -> Unit>()

    private val logsEmMemoria = mutableListOf<EntradaLog>()

    init {
        carregarLogs()
    }

    fun log(tipo: TipoLog, mensagem: String, detalhe: String? = null) {
        val entrada = EntradaLog(
            tipo = tipo,
            mensagem = mensagem,
            detalhe = detalhe
        )

        logsEmMemoria.add(0, entrada)
        if (logsEmMemoria.size > MAX_LOGS) {
            logsEmMemoria.removeAt(logsEmMemoria.size - 1)
        }

        when (tipo) {
            TipoLog.ERRO -> Timber.e("[$tipo] $mensagem")
            TipoLog.AVISO -> Timber.w("[$tipo] $mensagem")
            else -> Timber.d("[$tipo] $mensagem")
        }

        ouvintesLogs.forEach { it(entrada) }

        salvarLogs()
    }

    fun obterLogs(): List<EntradaLog> = logsEmMemoria.toList()

    fun obterLogsFiltrados(tipo: TipoLog): List<EntradaLog> {
        return logsEmMemoria.filter { it.tipo == tipo }
    }

    fun limparLogs() {
        logsEmMemoria.clear()
        prefs.edit().remove(CHAVE_LOGS).apply()
    }

    fun exportarLogs(): String {
        val sb = StringBuilder()
        sb.appendLine("=== Royal Match Bot - Logs de Atividade ===")
        sb.appendLine("Exportado em: ${formatoData.format(Date())}")
        sb.appendLine("Total de entradas: ${logsEmMemoria.size}")
        sb.appendLine("=" .repeat(50))
        sb.appendLine()

        for (entrada in logsEmMemoria) {
            val hora = formatoData.format(Date(entrada.timestamp))
            sb.appendLine("[${hora}] [${entrada.tipo}] ${entrada.mensagem}")
            entrada.detalhe?.let { sb.appendLine("  ↳ $it") }
        }

        return sb.toString()
    }

    fun registrarOuvinteLog(ouvinte: (EntradaLog) -> Unit) {
        ouvintesLogs.add(ouvinte)
    }

    fun removerOuvinteLog(ouvinte: (EntradaLog) -> Unit) {
        ouvintesLogs.remove(ouvinte)
    }

    private fun salvarLogs() {
        try {
            val ultimosLogs = logsEmMemoria.take(100)
            val json = gson.toJson(ultimosLogs)
            prefs.edit().putString(CHAVE_LOGS, json).apply()
        } catch (e: Exception) {
            Timber.e(e, "Erro ao salvar logs")
        }
    }

    private fun carregarLogs() {
        try {
            val json = prefs.getString(CHAVE_LOGS, null) ?: return
            val tipo = object : TypeToken<List<EntradaLog>>() {}.type
            val logs: List<EntradaLog> = gson.fromJson(json, tipo) ?: return
            logsEmMemoria.addAll(logs)
        } catch (e: Exception) {
            Timber.e(e, "Erro ao carregar logs")
        }
    }
}
