package com.royalmatchbot.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.IBinder
import android.view.accessibility.AccessibilityEvent
import androidx.core.app.NotificationCompat
import com.royalmatchbot.R
import com.royalmatchbot.engine.ControladorBot
import com.royalmatchbot.model.EstadoBot
import com.royalmatchbot.model.EstatisticasBot
import com.royalmatchbot.ui.MainActivity
import com.royalmatchbot.util.BotLogger
import com.royalmatchbot.util.GerenciadorPreferencias
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Serviço principal do bot — coordena todo o ciclo de vida.
 *
 * Executa em foreground para evitar que o Android mate o processo.
 * Orquestra: captura de tela → análise → cálculo → execução de jogada.
 */
class BotPrincipalServico : Service() {

    companion object {
        private const val TAG = "BotPrincipalServico"
        private const val CANAL_NOTIFICACAO = "bot_principal"
        private const val ID_NOTIFICACAO = 1001

        const val ACAO_INICIAR = "com.royalmatchbot.INICIAR_BOT"
        const val ACAO_PARAR = "com.royalmatchbot.PARAR_BOT"
        const val ACAO_PAUSAR = "com.royalmatchbot.PAUSAR_BOT"
        const val ACAO_RETOMAR = "com.royalmatchbot.RETOMAR_BOT"
        const val ACAO_ACESSIBILIDADE_PRONTA = "com.royalmatchbot.ACESSIBILIDADE_PRONTA"

        var instancia: BotPrincipalServico? = null
            private set

        private val _estadoBot = MutableStateFlow(EstadoBot.PARADO)
        val estadoBot: StateFlow<EstadoBot> = _estadoBot.asStateFlow()

        private val _estatisticas = MutableStateFlow(EstatisticasBot())
        val estatisticas: StateFlow<EstatisticasBot> = _estatisticas.asStateFlow()
    }

    private val escopo = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private var jobBot: Job? = null
    private val controlador by lazy { ControladorBot(this) }
    private val logger by lazy { BotLogger.instancia }
    private val prefs by lazy { GerenciadorPreferencias(this) }

    private val receptorAcessibilidade = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action == ACAO_ACESSIBILIDADE_PRONTA) {
                logger?.info(TAG, "Acessibilidade pronta — iniciando loop do bot")
                iniciarLoopBot()
            }
        }
    }

    override fun onCreate() {
        super.onCreate()
        instancia = this
        criarCanalNotificacao()
        registerReceiver(receptorAcessibilidade, IntentFilter(ACAO_ACESSIBILIDADE_PRONTA))
        logger?.info(TAG, "BotPrincipalServico criado")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACAO_INICIAR -> iniciarBot()
            ACAO_PARAR -> pararBot()
            ACAO_PAUSAR -> pausarBot()
            ACAO_RETOMAR -> retomarBot()
            else -> iniciarBot()
        }
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        escopo.cancel()
        unregisterReceiver(receptorAcessibilidade)
        instancia = null
        logger?.info(TAG, "BotPrincipalServico destruído")
    }

    fun iniciarBot() {
        startForeground(ID_NOTIFICACAO, criarNotificacao(EstadoBot.INICIANDO))
        atualizarEstado(EstadoBot.INICIANDO)
        _estatisticas.value = EstatisticasBot()
        logger?.info(TAG, "=== BOT INICIADO ===")

        if (!BotAcessibilidadeServico.ativo) {
            atualizarEstado(EstadoBot.AGUARDANDO_JOGO)
            logger?.aviso(TAG, "Serviço de acessibilidade não está ativo. Aguardando...")
        } else {
            iniciarLoopBot()
        }
    }

    fun pararBot() {
        jobBot?.cancel()
        jobBot = null
        atualizarEstado(EstadoBot.PARADO)
        logger?.info(TAG, "=== BOT PARADO ===")
        stopForeground(STOP_FOREGROUND_REMOVE)
        stopSelf()
    }

    fun pausarBot() {
        jobBot?.cancel()
        atualizarEstado(EstadoBot.JOGO_PAUSADO)
        logger?.info(TAG, "Bot pausado pelo usuário")
        atualizarNotificacao(EstadoBot.JOGO_PAUSADO)
    }

    fun retomarBot() {
        if (_estadoBot.value == EstadoBot.JOGO_PAUSADO) {
            logger?.info(TAG, "Bot retomado")
            iniciarLoopBot()
        }
    }

    private fun iniciarLoopBot() {
        jobBot?.cancel()
        jobBot = escopo.launch {
            executarLoopPrincipal()
        }
    }

    /**
     * Loop principal do bot.
     * Ciclo: verificar estado → capturar tela → analisar → jogar → aguardar → repetir
     */
    private suspend fun executarLoopPrincipal() {
        logger?.info(TAG, "Loop principal iniciado")

        // Garantir que o jogo está aberto
        atualizarEstado(EstadoBot.AGUARDANDO_JOGO)
        BotAcessibilidadeServico.instancia?.abrirJogo()
        delay(3000L)

        var errosConsecutivos = 0
        val maxErrosConsecutivos = 5

        while (isActive) {
            try {
                val configs = prefs.carregarConfiguracoes()

                // Verificar limite diário de horas
                if (configs.limiteHorasDiarias > 0) {
                    val horasAtivas = _estatisticas.value.tempoTotalMs / 3_600_000L
                    if (horasAtivas >= configs.limiteHorasDiarias) {
                        logger?.info(TAG, "Limite diário de ${configs.limiteHorasDiarias}h atingido. Parando.")
                        pararBot()
                        return
                    }
                }

                // Capturar tela
                atualizarEstado(EstadoBot.CAPTURANDO_TELA)
                val bitmap = CapturaTelaServico.instancia?.capturarComRetry(3)
                if (bitmap == null) {
                    logger?.aviso(TAG, "Falha na captura de tela")
                    delay(1000L)
                    continue
                }
                _estatisticas.value = _estatisticas.value.copy(
                    capturasTela = _estatisticas.value.capturasTela + 1
                )

                // Analisar tabuleiro
                atualizarEstado(EstadoBot.ANALISANDO_TABULEIRO)
                val resultado = controlador.analisarEJogar(bitmap, configs)

                when (resultado) {
                    ControladorBot.ResultadoAnalise.JOGADA_EXECUTADA -> {
                        errosConsecutivos = 0
                        val stats = _estatisticas.value
                        _estatisticas.value = stats.copy(
                            jogadasRealizadas = stats.jogadasRealizadas + 1,
                            tempoTotalMs = stats.tempoTotalMs +
                                (configs.intervaloEntreJogadasMs + configs.delayAposAnimacaoMs)
                        )
                        val delay = (configs.intervaloEntreJogadasMs *
                            configs.velocidadeJogada.multiplicador).toLong()
                        delay(delay + configs.delayAposAnimacaoMs)
                    }
                    ControladorBot.ResultadoAnalise.FASE_COMPLETA -> {
                        errosConsecutivos = 0
                        val stats = _estatisticas.value
                        _estatisticas.value = stats.copy(fasesCompletas = stats.fasesCompletas + 1)
                        atualizarEstado(EstadoBot.FASE_COMPLETA)
                        logger?.info(TAG, "🎉 Fase ${stats.fasesCompletas + 1} concluída!")
                        delay(3000L)
                        // Coletar recompensas se configurado
                        if (configs.coletarRecompensas) {
                            atualizarEstado(EstadoBot.COLETANDO_RECOMPENSAS)
                            controlador.coletarRecompensas()
                            delay(2000L)
                        }
                        BotAcessibilidadeServico.instancia?.clicarBotaoCentral()
                        delay(2500L)
                    }
                    ControladorBot.ResultadoAnalise.NAVEGANDO_MENU -> {
                        atualizarEstado(EstadoBot.NAVEGANDO_MENUS)
                        delay(1500L)
                    }
                    ControladorBot.ResultadoAnalise.SEM_MOVIMENTOS -> {
                        atualizarEstado(EstadoBot.SEM_MOVIMENTOS)
                        logger?.aviso(TAG, "Sem movimentos válidos — aguardando")
                        delay(2000L)
                    }
                    ControladorBot.ResultadoAnalise.ERRO -> {
                        errosConsecutivos++
                        logger?.erro(TAG, "Erro na análise ($errosConsecutivos/$maxErrosConsecutivos)")
                        if (errosConsecutivos >= maxErrosConsecutivos) {
                            logger?.erro(TAG, "Muitos erros consecutivos — reiniciando jogo")
                            controlador.reiniciarJogo()
                            errosConsecutivos = 0
                            delay(5000L)
                        } else {
                            delay(1500L)
                        }
                    }
                    ControladorBot.ResultadoAnalise.AGUARDANDO -> {
                        delay(800L)
                    }
                }

                atualizarNotificacao(_estadoBot.value)

            } catch (e: CancellationException) {
                logger?.info(TAG, "Loop cancelado")
                break
            } catch (e: Exception) {
                logger?.erro(TAG, "Exceção no loop: ${e.message}")
                delay(2000L)
            }
        }
    }

    fun processarEventoAcessibilidade(event: AccessibilityEvent) {
        // Processar eventos de UI do jogo para detecção de estado
        controlador.processarEvento(event)
    }

    private fun atualizarEstado(novoEstado: EstadoBot) {
        _estadoBot.value = novoEstado
        atualizarNotificacao(novoEstado)
    }

    private fun criarCanalNotificacao() {
        val canal = NotificationChannel(
            CANAL_NOTIFICACAO,
            "Royal Match Bot",
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            description = "Status do bot em execução"
            setShowBadge(false)
        }
        getSystemService(NotificationManager::class.java).createNotificationChannel(canal)
    }

    private fun criarNotificacao(estado: EstadoBot = EstadoBot.PARADO): Notification {
        val intent = Intent(this, MainActivity::class.java)
        val pi = PendingIntent.getActivity(
            this, 0, intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        val intentParar = Intent(this, BotPrincipalServico::class.java).apply {
            action = ACAO_PARAR
        }
        val piParar = PendingIntent.getService(
            this, 1, intentParar,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        return NotificationCompat.Builder(this, CANAL_NOTIFICACAO)
            .setContentTitle("Royal Match Bot ${estado.icone}")
            .setContentText(estado.descricao)
            .setSmallIcon(R.drawable.ic_bot_notification)
            .setContentIntent(pi)
            .addAction(R.drawable.ic_stop, "Parar", piParar)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setSilent(true)
            .setOngoing(true)
            .build()
    }

    private fun atualizarNotificacao(estado: EstadoBot) {
        val nm = getSystemService(NotificationManager::class.java)
        nm.notify(ID_NOTIFICACAO, criarNotificacao(estado))
    }
}
