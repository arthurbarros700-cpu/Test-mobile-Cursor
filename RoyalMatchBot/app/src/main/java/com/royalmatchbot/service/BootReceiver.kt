package com.royalmatchbot.service

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import com.royalmatchbot.utils.GerenciadorConfiguracoes
import timber.log.Timber

/**
 * Receptor que inicia o bot automaticamente após reinicialização do dispositivo.
 */
class BootReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_BOOT_COMPLETED ||
            intent.action == Intent.ACTION_MY_PACKAGE_REPLACED
        ) {
            Timber.i("Boot detectado - verificando auto-início do bot")

            val config = GerenciadorConfiguracoes(context)
            if (config.obterConfiguracoes().iniciarComBoot) {
                Timber.i("Auto-início ativado - iniciando serviço")
                BotForegroundService.iniciar(context)
            }
        }
    }
}
