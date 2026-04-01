package com.royalmatchbot.service

import android.app.Notification
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.IBinder
import android.os.PowerManager
import androidx.core.app.NotificationCompat
import com.royalmatchbot.BotApplication
import com.royalmatchbot.R
import com.royalmatchbot.models.StatusBot
import com.royalmatchbot.ui.MainActivity
import kotlinx.coroutines.*
import timber.log.Timber

/**
 * Serviço em primeiro plano que mantém o bot ativo.
 *
 * Mantém o processo vivo mesmo com a tela desligada e garante
 * que o bot continue funcionando em background.
 */
class BotForegroundService : Service() {

    companion object {
        const val ACAO_INICIAR = "INICIAR_BOT"
        const val ACAO_PARAR = "PARAR_BOT"
        const val ID_NOTIFICACAO = 1001

        fun iniciar(context: Context) {
            val intent = Intent(context, BotForegroundService::class.java).apply {
                action = ACAO_INICIAR
            }
            context.startForegroundService(intent)
        }

        fun parar(context: Context) {
            val intent = Intent(context, BotForegroundService::class.java).apply {
                action = ACAO_PARAR
            }
            context.startService(intent)
        }
    }

    private var wakeLock: PowerManager.WakeLock? = null
    private val escopo = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var jobAtualizacaoNotificacao: Job? = null

    override fun onCreate() {
        super.onCreate()
        adquirirWakeLock()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACAO_INICIAR -> {
                startForeground(ID_NOTIFICACAO, criarNotificacao("Iniciando…"))
                iniciarServico()
            }
            ACAO_PARAR -> {
                pararServico()
            }
        }
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        pararServico()
    }

    private fun iniciarServico() {
        Timber.i("BotForegroundService iniciado")

        jobAtualizacaoNotificacao = escopo.launch {
            while (isActive) {
                atualizarNotificacao()
                delay(5_000L)
            }
        }

        BotEventos.registrarOuvinteStatus { status ->
            atualizarNotificacaoStatus(status)
        }
    }

    private fun pararServico() {
        jobAtualizacaoNotificacao?.cancel()
        escopo.cancel()
        BotEventos.removerOuvintes()
        liberarWakeLock()
        stopForeground(STOP_FOREGROUND_REMOVE)
        stopSelf()
    }

    private fun atualizarNotificacao() {
        val sessao = BotAcessibilidadeService.instancia?.getSessaoAtual()
        val mensagem = if (sessao != null && BotAcessibilidadeService.botAtivo) {
            "Fases: ${sessao.fasesCompletas} | Taxa: ${sessao.taxaSucesso.toInt()}% | ${sessao.tempoFormatado}"
        } else {
            "Bot pausado"
        }
        atualizarNotificacaoTexto(mensagem)
    }

    private fun atualizarNotificacaoStatus(status: StatusBot) {
        val texto = when (status) {
            StatusBot.ANALISANDO -> "Analisando tabuleiro…"
            StatusBot.CALCULANDO_JOGADA -> "Calculando melhor jogada…"
            StatusBot.EXECUTANDO_JOGADA -> "Executando jogada…"
            StatusBot.FASE_CONCLUIDA -> "Fase concluída!"
            StatusBot.COLETANDO_RECOMPENSAS -> "Coletando recompensas…"
            StatusBot.SEM_VIDAS -> "Sem vidas - aguardando recarga…"
            StatusBot.AGUARDANDO_JOGO -> "Aguardando Royal Match…"
            StatusBot.INATIVO -> "Bot inativo"
            else -> "Jogando automaticamente…"
        }
        atualizarNotificacaoTexto(texto)
    }

    private fun atualizarNotificacaoTexto(texto: String) {
        val gerenciador = getSystemService(NotificationManager::class.java)
        gerenciador.notify(ID_NOTIFICACAO, criarNotificacao(texto))
    }

    private fun criarNotificacao(texto: String): Notification {
        val intentAbrir = Intent(this, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
        val pendingIntentAbrir = PendingIntent.getActivity(
            this, 0, intentAbrir,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        val intentParar = Intent(this, BotForegroundService::class.java).apply {
            action = ACAO_PARAR
        }
        val pendingIntentParar = PendingIntent.getService(
            this, 1, intentParar,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, BotApplication.CANAL_NOTIFICACAO_ID)
            .setContentTitle("Royal Match Bot - Ativo")
            .setContentText(texto)
            .setSmallIcon(android.R.drawable.ic_menu_compass)
            .setContentIntent(pendingIntentAbrir)
            .setOngoing(true)
            .setSilent(true)
            .addAction(
                android.R.drawable.ic_media_pause,
                "Parar Bot",
                pendingIntentParar
            )
            .setStyle(NotificationCompat.BigTextStyle().bigText(texto))
            .build()
    }

    private fun adquirirWakeLock() {
        val powerManager = getSystemService(PowerManager::class.java)
        wakeLock = powerManager.newWakeLock(
            PowerManager.PARTIAL_WAKE_LOCK,
            "RoyalMatchBot::WakeLock"
        ).apply {
            acquire(12 * 60 * 60 * 1000L) // Máximo 12 horas
        }
    }

    private fun liberarWakeLock() {
        try {
            wakeLock?.let {
                if (it.isHeld) it.release()
            }
            wakeLock = null
        } catch (e: Exception) {
            Timber.e(e, "Erro ao liberar WakeLock")
        }
    }
}
