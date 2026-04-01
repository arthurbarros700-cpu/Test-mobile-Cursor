package com.royalmatchbot.utils

import android.accessibilityservice.AccessibilityServiceInfo
import android.content.Context
import android.provider.Settings
import android.view.accessibility.AccessibilityManager
import com.royalmatchbot.service.BotAcessibilidadeService

/**
 * Utilitário para verificar e orientar sobre permissões necessárias.
 */
object VerificadorPermissoes {

    /**
     * Verifica se o Serviço de Acessibilidade está ativado.
     */
    fun isAcessibilidadeAtiva(context: Context): Boolean {
        val manager = context.getSystemService(Context.ACCESSIBILITY_SERVICE) as AccessibilityManager
        val servicos = manager.getEnabledAccessibilityServiceList(AccessibilityServiceInfo.FEEDBACK_ALL_MASK)
        return servicos.any { info ->
            info.resolveInfo.serviceInfo.packageName == context.packageName &&
                    info.resolveInfo.serviceInfo.name == BotAcessibilidadeService::class.java.name
        }
    }

    /**
     * Verifica se a permissão de sobreposição (overlay) está concedida.
     */
    fun isOverlayPermitido(context: Context): Boolean {
        return Settings.canDrawOverlays(context)
    }

    /**
     * Verifica se todas as permissões necessárias estão concedidas.
     */
    fun todasPermissoesConcedidas(context: Context): Boolean {
        return isAcessibilidadeAtiva(context) && isOverlayPermitido(context)
    }
}
