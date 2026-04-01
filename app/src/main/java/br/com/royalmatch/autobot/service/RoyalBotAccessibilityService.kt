package br.com.royalmatch.autobot.service

import android.annotation.SuppressLint
import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Bitmap
import android.graphics.Path
import android.hardware.HardwareBuffer
import android.os.Build
import android.view.Display
import android.view.accessibility.AccessibilityEvent
import br.com.royalmatch.autobot.data.BotConfigRepository
import br.com.royalmatch.autobot.engine.BoardVisionParser
import br.com.royalmatch.autobot.engine.GesturePlanner
import br.com.royalmatch.autobot.engine.Match3Solver
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume

class RoyalBotAccessibilityService : AccessibilityService() {

    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Default)

    private lateinit var configRepository: BotConfigRepository
    private val parser = BoardVisionParser()
    private val solver = Match3Solver()
    private val planner = GesturePlanner()

    private var loopJob: Job? = null
    @Volatile
    private var ultimoPacoteAtivo: String = ""

    override fun onServiceConnected() {
        super.onServiceConnected()
        configRepository = BotConfigRepository(applicationContext)
        ServiceStateStore.atualizarStatus("Serviço conectado")
        iniciarLoopSeNecessario()
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        ultimoPacoteAtivo = event?.packageName?.toString().orEmpty()
        // O loop contínuo é disparado por timer. Eventos apenas revalidam o estado.
        iniciarLoopSeNecessario()
    }

    override fun onInterrupt() {
        ServiceStateStore.atualizarStatus("Serviço interrompido")
    }

    override fun onDestroy() {
        loopJob?.cancel()
        serviceScope.cancel()
        super.onDestroy()
    }

    private fun iniciarLoopSeNecessario() {
        if (!::configRepository.isInitialized) return
        if (!configRepository.lerBotAtivo()) {
            loopJob?.cancel()
            loopJob = null
            ServiceStateStore.atualizarStatus("Bot desativado")
            return
        }

        if (loopJob?.isActive == true) return

        loopJob = serviceScope.launch {
            ServiceStateStore.atualizarStatus("Ligado e aguardando tela do jogo")
            while (isActive) {
                if (!configRepository.lerBotAtivo()) {
                    ServiceStateStore.atualizarStatus("Bot desativado")
                    break
                }

                val intervalo = configRepository.lerIntervaloMs().coerceIn(500, 5000)
                val confiancaMin = configRepository.lerConfiancaMinima().coerceIn(0.40f, 0.95f)

                try {
                    if (!ultimoPacoteAtivo.contains("royalmatch", ignoreCase = true)) {
                        ServiceStateStore.atualizarStatus("Abra o Royal Match para iniciar")
                        delay(intervalo.toLong())
                        continue
                    }

                    val screenshot = capturarTela() ?: run {
                        ServiceStateStore.atualizarStatus("Sem captura válida da tela")
                        delay(intervalo.toLong())
                        continue
                    }

                    val board = parser.parse(screenshot)
                    screenshot.recycle()

                    if (board == null) {
                        ServiceStateStore.atualizarStatus("Sem captura válida da tela")
                        delay(intervalo.toLong())
                        continue
                    }

                    val melhor = solver.encontrarMelhorMovimento(board, confiancaMin)
                    if (melhor != null) {
                        val metrics = resources.displayMetrics

                        val swipe = planner.planejarSwipe(
                            melhor,
                            larguraTela = metrics.widthPixels,
                            alturaTela = metrics.heightPixels
                        )

                        val ok = executarSwipe(swipe.inicio.x.toFloat(), swipe.inicio.y.toFloat(), swipe.fim.x.toFloat(), swipe.fim.y.toFloat())
                        ServiceStateStore.atualizarStatus(
                            if (ok) "Executando jogada automática" else "Falha ao executar gesto"
                        )
                    } else {
                        ServiceStateStore.atualizarStatus("Nenhuma jogada encontrada")
                    }
                } catch (t: Throwable) {
                    ServiceStateStore.atualizarStatus("Erro no loop: ${t.message ?: "desconhecido"}")
                }

                delay(intervalo.toLong())
            }
            loopJob = null
        }
    }

    @SuppressLint("NewApi")
    private suspend fun capturarTela(): Bitmap? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
            return null
        }

        return suspendCancellableCoroutine { continuation ->
            takeScreenshot(
                Display.DEFAULT_DISPLAY,
                mainExecutor,
                object : AccessibilityService.TakeScreenshotCallback {
                    override fun onSuccess(screenshot: AccessibilityService.ScreenshotResult) {
                        if (!continuation.isActive) return
                        continuation.resume(resultToBitmap(screenshot))
                    }

                    override fun onFailure(errorCode: Int) {
                        if (!continuation.isActive) return
                        continuation.resume(null)
                    }
                }
            )
        }
    }

    @SuppressLint("NewApi")
    private fun resultToBitmap(result: AccessibilityService.ScreenshotResult): Bitmap? {
        val buffer: HardwareBuffer = result.hardwareBuffer ?: return null
        return try {
            Bitmap.wrapHardwareBuffer(buffer, result.colorSpace)?.copy(Bitmap.Config.ARGB_8888, false)
        } catch (_: Throwable) {
            null
        } finally {
            buffer.close()
        }
    }

    private fun executarSwipe(x1: Float, y1: Float, x2: Float, y2: Float): Boolean {
        val path = Path().apply {
            moveTo(x1, y1)
            lineTo(x2, y2)
        }
        val stroke = GestureDescription.StrokeDescription(path, 0, 160)
        val gesture = GestureDescription.Builder()
            .addStroke(stroke)
            .build()

        return dispatchGesture(gesture, null, null)
    }
}
