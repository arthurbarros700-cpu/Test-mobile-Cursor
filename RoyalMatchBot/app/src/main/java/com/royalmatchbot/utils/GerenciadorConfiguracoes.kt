package com.royalmatchbot.utils

import android.content.Context
import android.content.SharedPreferences
import com.royalmatchbot.models.*
import com.google.gson.Gson

/**
 * Gerencia as configurações persistentes do bot usando SharedPreferences.
 */
class GerenciadorConfiguracoes(context: Context) {

    companion object {
        private const val PREFS_NOME = "royalmatchbot_config"
        private const val CHAVE_VELOCIDADE = "velocidade"
        private const val CHAVE_ESTRATEGIA = "estrategia"
        private const val CHAVE_USAR_BOOSTERS = "usar_boosters"
        private const val CHAVE_ANTI_DETECCAO = "anti_deteccao"
        private const val CHAVE_DELAY_BASE = "delay_base"
        private const val CHAVE_DELAY_VARIACAO = "delay_variacao"
        private const val CHAVE_MAX_FASES = "max_fases"
        private const val CHAVE_USAR_HORARIO = "usar_horario"
        private const val CHAVE_HORARIO_INICIO = "horario_inicio"
        private const val CHAVE_HORARIO_FIM = "horario_fim"
        private const val CHAVE_NOTIF_FASE = "notif_fase"
        private const val CHAVE_NOTIF_VIDAS = "notif_vidas"
        private const val CHAVE_INICIAR_BOOT = "iniciar_boot"
    }

    private val prefs: SharedPreferences = context.getSharedPreferences(PREFS_NOME, Context.MODE_PRIVATE)
    private val gson = Gson()

    fun obterConfiguracoes(): ConfiguracoesBot {
        return ConfiguracoesBot(
            velocidade = VelocidadeBot.valueOf(
                prefs.getString(CHAVE_VELOCIDADE, VelocidadeBot.NORMAL.name) ?: VelocidadeBot.NORMAL.name
            ),
            estrategia = TipoEstrategia.valueOf(
                prefs.getString(CHAVE_ESTRATEGIA, TipoEstrategia.IA_AVANCADA.name) ?: TipoEstrategia.IA_AVANCADA.name
            ),
            usarBoostersAutomatico = prefs.getBoolean(CHAVE_USAR_BOOSTERS, true),
            antiDeteccao = prefs.getBoolean(CHAVE_ANTI_DETECCAO, true),
            delayBaseMs = prefs.getLong(CHAVE_DELAY_BASE, 500L),
            delayVariacaoMs = prefs.getLong(CHAVE_DELAY_VARIACAO, 200L),
            maxFasesPorSessao = prefs.getInt(CHAVE_MAX_FASES, 0),
            usarHorario = prefs.getBoolean(CHAVE_USAR_HORARIO, false),
            horarioInicio = prefs.getInt(CHAVE_HORARIO_INICIO, 0),
            horarioFim = prefs.getInt(CHAVE_HORARIO_FIM, 0),
            notificarFaseConcluida = prefs.getBoolean(CHAVE_NOTIF_FASE, true),
            notificarSemVidas = prefs.getBoolean(CHAVE_NOTIF_VIDAS, true),
            iniciarComBoot = prefs.getBoolean(CHAVE_INICIAR_BOOT, false)
        )
    }

    fun salvarConfiguracoes(config: ConfiguracoesBot) {
        prefs.edit().apply {
            putString(CHAVE_VELOCIDADE, config.velocidade.name)
            putString(CHAVE_ESTRATEGIA, config.estrategia.name)
            putBoolean(CHAVE_USAR_BOOSTERS, config.usarBoostersAutomatico)
            putBoolean(CHAVE_ANTI_DETECCAO, config.antiDeteccao)
            putLong(CHAVE_DELAY_BASE, config.delayBaseMs)
            putLong(CHAVE_DELAY_VARIACAO, config.delayVariacaoMs)
            putInt(CHAVE_MAX_FASES, config.maxFasesPorSessao)
            putBoolean(CHAVE_USAR_HORARIO, config.usarHorario)
            putInt(CHAVE_HORARIO_INICIO, config.horarioInicio)
            putInt(CHAVE_HORARIO_FIM, config.horarioFim)
            putBoolean(CHAVE_NOTIF_FASE, config.notificarFaseConcluida)
            putBoolean(CHAVE_NOTIF_VIDAS, config.notificarSemVidas)
            putBoolean(CHAVE_INICIAR_BOOT, config.iniciarComBoot)
            apply()
        }
    }

    fun salvarVelocidade(velocidade: VelocidadeBot) {
        prefs.edit().putString(CHAVE_VELOCIDADE, velocidade.name).apply()
    }

    fun salvarEstrategia(estrategia: TipoEstrategia) {
        prefs.edit().putString(CHAVE_ESTRATEGIA, estrategia.name).apply()
    }

    fun salvarAntiDeteccao(ativo: Boolean) {
        prefs.edit().putBoolean(CHAVE_ANTI_DETECCAO, ativo).apply()
    }

    fun salvarUsarBoosters(ativo: Boolean) {
        prefs.edit().putBoolean(CHAVE_USAR_BOOSTERS, ativo).apply()
    }
}
