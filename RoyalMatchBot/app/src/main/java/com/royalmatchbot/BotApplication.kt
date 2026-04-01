package com.royalmatchbot

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.os.Build
import timber.log.Timber

/**
 * Classe principal da aplicação Royal Match Bot.
 * Inicializa todos os componentes globais do sistema.
 */
class BotApplication : Application() {

    companion object {
        const val CANAL_NOTIFICACAO_ID = "canal_bot_principal"
        const val CANAL_ALERTAS_ID = "canal_bot_alertas"
    }

    override fun onCreate() {
        super.onCreate()

        if (BuildConfig.DEBUG) {
            Timber.plant(Timber.DebugTree())
        }

        criarCanaisNotificacao()
    }

    private fun criarCanaisNotificacao() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val gerenciador = getSystemService(NotificationManager::class.java)

            val canalPrincipal = NotificationChannel(
                CANAL_NOTIFICACAO_ID,
                "Royal Match Bot - Status",
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "Mostra o status atual do bot enquanto está em execução"
                setShowBadge(false)
            }

            val canalAlertas = NotificationChannel(
                CANAL_ALERTAS_ID,
                "Royal Match Bot - Alertas",
                NotificationManager.IMPORTANCE_DEFAULT
            ).apply {
                description = "Alertas importantes como fim de vidas ou erros"
            }

            gerenciador.createNotificationChannels(listOf(canalPrincipal, canalAlertas))
        }
    }
}
