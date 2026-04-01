package com.royalmatchbot.util

import android.util.Log
import com.royalmatchbot.model.NivelLog
import com.royalmatchbot.model.RegistroLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.SharedFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*
import java.util.concurrent.ConcurrentLinkedDeque

/**
 * Sistema de logging centralizado do bot.
 * Emite eventos via Flow para a UI e persiste no banco de dados.
 */
class BotLogger private constructor() {

    companion object {
        @Volatile
        private var _instancia: BotLogger? = null

        val instancia: BotLogger
            get() = _instancia ?: synchronized(this) {
                _instancia ?: BotLogger().also { _instancia = it }
            }

        private const val MAX_LOGS_MEMORIA = 500
    }

    private val escopo = CoroutineScope(Dispatchers.IO)
    private val _fluxoLogs = MutableSharedFlow<RegistroLog>(replay = 50, extraBufferCapacity = 100)
    val fluxoLogs: SharedFlow<RegistroLog> = _fluxoLogs.asSharedFlow()

    private val logsMemoria = ConcurrentLinkedDeque<RegistroLog>()
    private var nivelMinimo = NivelLog.INFO
    private var fasaAtual = 0
    private var jogadaAtual = 0L

    fun configurar(nivel: NivelLog, fase: Int = 0) {
        nivelMinimo = nivel
        fasaAtual = fase
    }

    fun incrementarJogada() { jogadaAtual++ }
    fun definirFase(fase: Int) { fasaAtual = fase }

    fun verbose(tag: String, msg: String) = log(NivelLog.VERBOSE, tag, msg)
    fun debug(tag: String, msg: String) = log(NivelLog.DEBUG, tag, msg)
    fun info(tag: String, msg: String) = log(NivelLog.INFO, tag, msg)
    fun aviso(tag: String, msg: String) = log(NivelLog.AVISO, tag, msg)
    fun erro(tag: String, msg: String) = log(NivelLog.ERRO, tag, msg)

    private fun log(nivel: NivelLog, tag: String, mensagem: String) {
        if (nivel.ordinal < nivelMinimo.ordinal) return

        val registro = RegistroLog(
            nivel = nivel.nome,
            tag = tag,
            mensagem = mensagem,
            fase = fasaAtual,
            jogadaNumero = jogadaAtual
        )

        // Log nativo do Android
        when (nivel) {
            NivelLog.VERBOSE -> Log.v(tag, mensagem)
            NivelLog.DEBUG -> Log.d(tag, mensagem)
            NivelLog.INFO -> Log.i(tag, mensagem)
            NivelLog.AVISO -> Log.w(tag, mensagem)
            NivelLog.ERRO -> Log.e(tag, mensagem)
        }

        // Emitir para a UI
        escopo.launch {
            _fluxoLogs.emit(registro)
        }

        // Manter em memória (tamanho limitado)
        logsMemoria.addLast(registro)
        while (logsMemoria.size > MAX_LOGS_MEMORIA) {
            logsMemoria.pollFirst()
        }
    }

    fun obterLogsRecentes(limite: Int = 100): List<RegistroLog> =
        logsMemoria.takeLast(minOf(limite, logsMemoria.size))

    fun limpar() {
        logsMemoria.clear()
        jogadaAtual = 0L
    }
}
