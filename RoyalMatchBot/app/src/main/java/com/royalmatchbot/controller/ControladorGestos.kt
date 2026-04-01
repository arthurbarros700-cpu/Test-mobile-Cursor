package com.royalmatchbot.controller

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Path
import android.os.Handler
import android.os.Looper
import com.royalmatchbot.models.ConfiguracoesBot
import timber.log.Timber
import kotlin.random.Random
import kotlin.coroutines.resume
import kotlin.coroutines.suspendCoroutine

/**
 * Controlador de gestos para execução de toques e swipes na tela.
 *
 * Usa o AccessibilityService.dispatchGesture() para simular toques humanos
 * com variações aleatórias para evitar detecção por bots.
 */
class ControladorGestos(private val servico: AccessibilityService) {

    companion object {
        private const val DURACAO_TOQUE_MIN = 80L
        private const val DURACAO_TOQUE_MAX = 150L
        private const val DURACAO_SWIPE_MIN = 200L
        private const val DURACAO_SWIPE_MAX = 400L
        private const val VARIACAO_POSICAO_PIXELS = 8
    }

    private val handler = Handler(Looper.getMainLooper())

    /**
     * Executa uma troca de peças (swipe) entre duas posições do tabuleiro.
     */
    suspend fun executarTroca(
        x1: Int, y1: Int,
        x2: Int, y2: Int,
        config: ConfiguracoesBot
    ): Boolean {
        val x1Var = aplicarVariacao(x1, config.antiDeteccao)
        val y1Var = aplicarVariacao(y1, config.antiDeteccao)
        val x2Var = aplicarVariacao(x2, config.antiDeteccao)
        val y2Var = aplicarVariacao(y2, config.antiDeteccao)

        val duracao = if (config.antiDeteccao) {
            Random.nextLong(DURACAO_SWIPE_MIN, DURACAO_SWIPE_MAX)
        } else {
            DURACAO_SWIPE_MIN
        }

        return executarSwipe(x1Var, y1Var, x2Var, y2Var, duracao)
    }

    /**
     * Executa um toque simples em uma posição.
     */
    suspend fun executarToque(
        x: Int, y: Int,
        config: ConfiguracoesBot? = null
    ): Boolean {
        val xVar = if (config?.antiDeteccao == true) aplicarVariacao(x, true) else x
        val yVar = if (config?.antiDeteccao == true) aplicarVariacao(y, true) else y

        val duracao = if (config?.antiDeteccao == true) {
            Random.nextLong(DURACAO_TOQUE_MIN, DURACAO_TOQUE_MAX)
        } else {
            DURACAO_TOQUE_MIN
        }

        return executarToqueSimplesInterno(xVar, yVar, duracao)
    }

    /**
     * Executa um toque longo em uma posição.
     */
    suspend fun executarToqueLongo(x: Int, y: Int, duracaoMs: Long = 800L): Boolean {
        return executarToqueSimplesInterno(x, y, duracaoMs)
    }

    /**
     * Simula um movimento de scroll (rolar a tela).
     */
    suspend fun executarScroll(
        xInicio: Int, yInicio: Int,
        xFim: Int, yFim: Int
    ): Boolean {
        return executarSwipe(xInicio, yInicio, xFim, yFim, 300L)
    }

    private suspend fun executarSwipe(
        x1: Int, y1: Int, x2: Int, y2: Int, duracaoMs: Long
    ): Boolean = suspendCoroutine { continuacao ->
        try {
            val caminho = Path().apply {
                moveTo(x1.toFloat(), y1.toFloat())

                // Adicionar curva natural ao swipe (comportamento humano)
                val ctrlX = (x1 + x2) / 2f + Random.nextFloat() * 20 - 10
                val ctrlY = (y1 + y2) / 2f + Random.nextFloat() * 20 - 10
                quadTo(ctrlX, ctrlY, x2.toFloat(), y2.toFloat())
            }

            val toque = GestureDescription.StrokeDescription(caminho, 0, duracaoMs)
            val gesto = GestureDescription.Builder().addStroke(toque).build()

            val resultado = servico.dispatchGesture(
                gesto,
                object : AccessibilityService.GestureResultCallback() {
                    override fun onCompleted(gestureDescription: GestureDescription) {
                        continuacao.resume(true)
                    }

                    override fun onCancelled(gestureDescription: GestureDescription) {
                        Timber.w("Gesto cancelado!")
                        continuacao.resume(false)
                    }
                },
                handler
            )

            if (!resultado) {
                Timber.e("Falha ao despachar gesto!")
                continuacao.resume(false)
            }
        } catch (e: Exception) {
            Timber.e(e, "Erro ao executar swipe")
            continuacao.resume(false)
        }
    }

    private suspend fun executarToqueSimplesInterno(
        x: Int, y: Int, duracaoMs: Long
    ): Boolean = suspendCoroutine { continuacao ->
        try {
            val caminho = Path().apply { moveTo(x.toFloat(), y.toFloat()) }

            val toque = GestureDescription.StrokeDescription(caminho, 0, duracaoMs)
            val gesto = GestureDescription.Builder().addStroke(toque).build()

            val resultado = servico.dispatchGesture(
                gesto,
                object : AccessibilityService.GestureResultCallback() {
                    override fun onCompleted(gestureDescription: GestureDescription) {
                        continuacao.resume(true)
                    }

                    override fun onCancelled(gestureDescription: GestureDescription) {
                        continuacao.resume(false)
                    }
                },
                handler
            )

            if (!resultado) continuacao.resume(false)
        } catch (e: Exception) {
            Timber.e(e, "Erro ao executar toque")
            continuacao.resume(false)
        }
    }

    private fun aplicarVariacao(valor: Int, ativar: Boolean): Int {
        if (!ativar) return valor
        return valor + Random.nextInt(-VARIACAO_POSICAO_PIXELS, VARIACAO_POSICAO_PIXELS + 1)
    }

    /**
     * Executa uma sequência de toques rápidos (para coletar recompensas animadas).
     */
    suspend fun executarToqueRapido(x: Int, y: Int, repeticoes: Int = 3): Boolean {
        var sucesso = true
        repeat(repeticoes) {
            sucesso = sucesso && executarToqueSimplesInterno(
                aplicarVariacao(x, true),
                aplicarVariacao(y, true),
                DURACAO_TOQUE_MIN
            )
        }
        return sucesso
    }
}
