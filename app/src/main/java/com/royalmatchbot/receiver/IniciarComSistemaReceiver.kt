package com.royalmatchbot.receiver

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.royalmatchbot.service.BotPrincipalServico
import com.royalmatchbot.util.GerenciadorPreferencias

/**
 * Receiver que inicia o bot automaticamente quando o dispositivo liga,
 * se a opção "Iniciar com o sistema" estiver ativada.
 */
class IniciarComSistemaReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_BOOT_COMPLETED &&
            intent.action != Intent.ACTION_MY_PACKAGE_REPLACED
        ) return

        val prefs = GerenciadorPreferencias(context)
        val config = prefs.carregarConfiguracoes()

        if (config.iniciarComSistema) {
            val serviceIntent = Intent(context, BotPrincipalServico::class.java).apply {
                action = BotPrincipalServico.ACAO_INICIAR
            }
            context.startForegroundService(serviceIntent)
        }
    }
}
