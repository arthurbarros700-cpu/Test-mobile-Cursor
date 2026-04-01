package com.royalmatchbot.util

import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import androidx.core.app.NotificationCompat
import com.royalmatchbot.R

/**
 * Gerenciador centralizado de notificações do aplicativo.
 */
class GerenciadorNotificacoes(private val contexto: Context) {

    companion object {
        const val CANAL_ALERTAS = "alertas_bot"
        const val CANAL_CONQUISTAS = "conquistas"
        private const val ID_ALERTA = 2001
        private const val ID_CONQUISTA = 2002
    }

    private val nm = contexto.getSystemService(NotificationManager::class.java)

    init {
        criarCanais()
    }

    private fun criarCanais() {
        val canalAlertas = NotificationChannel(
            CANAL_ALERTAS, "Alertas do Bot", NotificationManager.IMPORTANCE_DEFAULT
        ).apply { description = "Alertas importantes sobre o bot" }

        val canalConquistas = NotificationChannel(
            CANAL_CONQUISTAS, "Conquistas", NotificationManager.IMPORTANCE_LOW
        ).apply { description = "Notificações de fases completadas" }

        nm.createNotificationChannels(listOf(canalAlertas, canalConquistas))
    }

    fun notificarFaseCompleta(numerFase: Int, pontuacao: Long) {
        val notif = NotificationCompat.Builder(contexto, CANAL_CONQUISTAS)
            .setSmallIcon(R.drawable.ic_bot_notification)
            .setContentTitle("🎉 Fase $numerFase Concluída!")
            .setContentText("Pontuação: $pontuacao pts")
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setAutoCancel(true)
            .build()
        nm.notify(ID_CONQUISTA, notif)
    }

    fun notificarErro(mensagem: String) {
        val notif = NotificationCompat.Builder(contexto, CANAL_ALERTAS)
            .setSmallIcon(R.drawable.ic_bot_notification)
            .setContentTitle("⚠️ Erro no Bot")
            .setContentText(mensagem)
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setAutoCancel(true)
            .build()
        nm.notify(ID_ALERTA, notif)
    }

    fun notificarAguardandoVidas() {
        val notif = NotificationCompat.Builder(contexto, CANAL_ALERTAS)
            .setSmallIcon(R.drawable.ic_bot_notification)
            .setContentTitle("❤️ Aguardando Vidas")
            .setContentText("O bot aguarda as vidas recarregarem")
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setAutoCancel(true)
            .build()
        nm.notify(ID_ALERTA, notif)
    }
}
