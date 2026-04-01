package com.royalmatchbot.service

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.content.Intent
import android.graphics.Path
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.accessibility.AccessibilityEvent
import com.royalmatchbot.model.Celula
import com.royalmatchbot.model.EstadoBot
import com.royalmatchbot.util.BotLogger
import com.royalmatchbot.util.GerenciadorPreferencias

/**
 * Serviço de Acessibilidade — núcleo de execução de gestos do bot.
 *
 * Usa a API de Acessibilidade do Android para realizar swipes,
 * toques e outros gestos diretamente na tela do dispositivo,
 * sem necessidade de root.
 */
class BotAcessibilidadeServico : AccessibilityService() {

    companion object {
        private const val TAG = "BotAcessibilidade"
        var instancia: BotAcessibilidadeServico? = null
            private set

        var ativo: Boolean = false
            private set
    }

    private val handler = Handler(Looper.getMainLooper())
    private val logger by lazy { BotLogger.instancia }

    override fun onServiceConnected() {
        super.onServiceConnected()
        instancia = this
        ativo = true
        logger?.info(TAG, "Serviço de acessibilidade conectado e pronto")
        Log.i(TAG, "BotAcessibilidadeServico conectado")

        // Notificar o BotPrincipalServico que acessibilidade está disponível
        val intent = Intent(BotPrincipalServico.ACAO_ACESSIBILIDADE_PRONTA)
        sendBroadcast(intent)
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        if (event == null) return
        // Monitorar eventos do jogo Royal Match para detecção de estado
        if (event.packageName?.toString() == GerenciadorPreferencias.PACOTE_JOGO) {
            BotPrincipalServico.instancia?.processarEventoAcessibilidade(event)
        }
    }

    override fun onInterrupt() {
        logger?.aviso(TAG, "Serviço de acessibilidade interrompido")
        ativo = false
    }

    override fun onDestroy() {
        super.onDestroy()
        instancia = null
        ativo = false
        logger?.info(TAG, "Serviço de acessibilidade destruído")
    }

    /**
     * Executa um swipe suave entre duas células do tabuleiro.
     * Simula o gesto humano com curva de aceleração natural.
     *
     * @param origem Célula de origem do swipe
     * @param destino Célula de destino do swipe
     * @param duracaoMs Duração total do gesto em milissegundos
     * @param callback Executado quando o gesto termina
     */
    fun executarSwipe(
        origem: Celula,
        destino: Celula,
        duracaoMs: Long = 180L,
        callback: ((Boolean) -> Unit)? = null
    ) {
        if (!ativo) {
            logger?.erro(TAG, "Tentativa de swipe com serviço inativo")
            callback?.invoke(false)
            return
        }

        val path = criarPathSwipe(
            origem.centroX, origem.centroY,
            destino.centroX, destino.centroY
        )

        val gesto = GestureDescription.Builder()
            .addStroke(GestureDescription.StrokeDescription(path, 0, duracaoMs))
            .build()

        val resultado = dispatchGesture(gesto, object : GestureResultCallback() {
            override fun onCompleted(gestureDescription: GestureDescription?) {
                logger?.debug(
                    TAG,
                    "Swipe concluído: ${origem.posicaoTexto()} → ${destino.posicaoTexto()}"
                )
                callback?.invoke(true)
            }

            override fun onCancelled(gestureDescription: GestureDescription?) {
                logger?.aviso(TAG, "Swipe cancelado: ${origem.posicaoTexto()}")
                callback?.invoke(false)
            }
        }, handler)

        if (!resultado) {
            logger?.erro(TAG, "Falha ao despachar gesto de swipe")
            callback?.invoke(false)
        }
    }

    /**
     * Executa um toque simples em coordenadas específicas.
     */
    fun executarToque(x: Float, y: Float, duracaoMs: Long = 80L, callback: ((Boolean) -> Unit)? = null) {
        if (!ativo) { callback?.invoke(false); return }

        val path = Path().apply { moveTo(x, y) }
        val gesto = GestureDescription.Builder()
            .addStroke(GestureDescription.StrokeDescription(path, 0, duracaoMs))
            .build()

        dispatchGesture(gesto, object : GestureResultCallback() {
            override fun onCompleted(gestureDescription: GestureDescription?) = callback?.invoke(true) ?: Unit
            override fun onCancelled(gestureDescription: GestureDescription?) = callback?.invoke(false) ?: Unit
        }, handler)
    }

    /**
     * Executa um toque duplo (double tap).
     */
    fun executarToqueDuplo(x: Float, y: Float, callback: ((Boolean) -> Unit)? = null) {
        executarToque(x, y, 80L) {
            handler.postDelayed({
                executarToque(x, y, 80L, callback)
            }, 120L)
        }
    }

    /**
     * Pressiona o botão de voltar do Android.
     */
    fun pressionarVoltar() {
        performGlobalAction(GLOBAL_ACTION_BACK)
        logger?.debug(TAG, "Botão voltar pressionado")
    }

    /**
     * Vai para a tela inicial do Android.
     */
    fun irParaHome() {
        performGlobalAction(GLOBAL_ACTION_HOME)
        logger?.debug(TAG, "Botão home pressionado")
    }

    /**
     * Abre o app Royal Match se não estiver em primeiro plano.
     */
    fun abrirJogo() {
        val intent = packageManager.getLaunchIntentForPackage(GerenciadorPreferencias.PACOTE_JOGO)
        if (intent != null) {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            applicationContext.startActivity(intent)
            logger?.info(TAG, "Abrindo Royal Match...")
        } else {
            logger?.erro(TAG, "Royal Match não encontrado no dispositivo!")
        }
    }

    /**
     * Cria um caminho de swipe com curva natural (Bezier cúbico).
     * Isso evita detecção de bot por padrões de movimento perfeitos.
     */
    private fun criarPathSwipe(
        x1: Float, y1: Float,
        x2: Float, y2: Float
    ): Path {
        val path = Path()
        path.moveTo(x1, y1)

        // Adiciona leve desvio aleatório para parecer humano
        val desvioX = (Math.random() * 6 - 3).toFloat()
        val desvioY = (Math.random() * 6 - 3).toFloat()
        val cx1 = x1 + (x2 - x1) * 0.33f + desvioX
        val cy1 = y1 + (y2 - y1) * 0.33f + desvioY
        val cx2 = x1 + (x2 - x1) * 0.66f - desvioX
        val cy2 = y1 + (y2 - y1) * 0.66f - desvioY

        path.cubicTo(cx1, cy1, cx2, cy2, x2, y2)
        return path
    }

    /**
     * Executa sequência de toques em locais de botões de diálogo comuns
     * (ex: "Jogar Novamente", "Próxima Fase", "Coletar").
     */
    fun clicarBotaoCentral(callback: ((Boolean) -> Unit)? = null) {
        val display = resources.displayMetrics
        val cx = display.widthPixels / 2f
        val cy = display.heightPixels * 0.65f
        executarToque(cx, cy, 100L, callback)
    }

    fun clicarBotaoInferior(callback: ((Boolean) -> Unit)? = null) {
        val display = resources.displayMetrics
        val cx = display.widthPixels / 2f
        val cy = display.heightPixels * 0.80f
        executarToque(cx, cy, 100L, callback)
    }

    fun obterTamanhoTela(): Pair<Int, Int> {
        val dm = resources.displayMetrics
        return dm.widthPixels to dm.heightPixels
    }
}
