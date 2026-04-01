package com.royalmatchbot.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.PixelFormat
import android.hardware.display.DisplayManager
import android.hardware.display.VirtualDisplay
import android.media.Image
import android.media.ImageReader
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.royalmatchbot.R
import com.royalmatchbot.util.BotLogger
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.nio.ByteBuffer

/**
 * Serviço de Captura de Tela usando MediaProjection API.
 *
 * Captura frames da tela em tempo real para análise do tabuleiro.
 * Requer permissão do usuário via MediaProjection intent.
 */
class CapturaTelaServico : Service() {

    companion object {
        private const val TAG = "CapturaTelaServico"
        private const val CANAL_NOTIFICACAO = "captura_tela"
        private const val ID_NOTIFICACAO = 1002

        const val EXTRA_RESULTADO_CODE = "resultado_code"
        const val EXTRA_RESULTADO_DATA = "resultado_data"

        var instancia: CapturaTelaServico? = null
            private set

        private val _ultimaBitmap = MutableStateFlow<Bitmap?>(null)
        val ultimaBitmap: StateFlow<Bitmap?> = _ultimaBitmap.asStateFlow()
    }

    private var mediaProjection: MediaProjection? = null
    private var virtualDisplay: VirtualDisplay? = null
    private var imageReader: ImageReader? = null
    private val logger by lazy { BotLogger.instancia }

    private var larguraTela = 0
    private var alturaTela = 0
    private var densidadeTela = 0

    override fun onCreate() {
        super.onCreate()
        instancia = this
        criarCanalNotificacao()
        val dm = resources.displayMetrics
        larguraTela = dm.widthPixels
        alturaTela = dm.heightPixels
        densidadeTela = dm.densityDpi
        logger?.info(TAG, "Serviço de captura criado: ${larguraTela}x${alturaTela} @ ${densidadeTela}dpi")
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        startForeground(ID_NOTIFICACAO, criarNotificacao())

        val resultadoCode = intent?.getIntExtra(EXTRA_RESULTADO_CODE, -1) ?: -1
        val resultadoData = intent?.getParcelableExtra<Intent>(EXTRA_RESULTADO_DATA)

        if (resultadoCode != -1 && resultadoData != null) {
            iniciarCaptura(resultadoCode, resultadoData)
        }

        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        super.onDestroy()
        pararCaptura()
        instancia = null
        logger?.info(TAG, "Serviço de captura destruído")
    }

    private fun iniciarCaptura(resultadoCode: Int, resultadoData: Intent) {
        val mpm = getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
        mediaProjection = mpm.getMediaProjection(resultadoCode, resultadoData)

        imageReader = ImageReader.newInstance(
            larguraTela, alturaTela,
            PixelFormat.RGBA_8888, 3
        )

        virtualDisplay = mediaProjection?.createVirtualDisplay(
            "BotCaptura",
            larguraTela, alturaTela, densidadeTela,
            DisplayManager.VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR,
            imageReader?.surface, null, null
        )

        imageReader?.setOnImageAvailableListener({ reader ->
            processarFrame(reader)
        }, null)

        logger?.info(TAG, "Captura de tela iniciada com sucesso")
    }

    private fun processarFrame(reader: ImageReader) {
        var imagem: Image? = null
        try {
            imagem = reader.acquireLatestImage() ?: return
            val bitmap = imagemParaBitmap(imagem)
            _ultimaBitmap.value = bitmap
        } catch (e: Exception) {
            logger?.erro(TAG, "Erro ao processar frame: ${e.message}")
        } finally {
            imagem?.close()
        }
    }

    private fun imagemParaBitmap(imagem: Image): Bitmap {
        val plane = imagem.planes[0]
        val buffer: ByteBuffer = plane.buffer
        val rowPadding = plane.rowStride - plane.pixelStride * larguraTela
        val bitmap = Bitmap.createBitmap(
            larguraTela + rowPadding / plane.pixelStride,
            alturaTela,
            Bitmap.Config.ARGB_8888
        )
        bitmap.copyPixelsFromBuffer(buffer)
        return if (rowPadding == 0) bitmap
        else Bitmap.createBitmap(bitmap, 0, 0, larguraTela, alturaTela)
    }

    /**
     * Captura um único frame e retorna o Bitmap.
     * Bloqueia até o próximo frame estar disponível (máx 2s).
     */
    fun capturarFrameAtual(): Bitmap? {
        return _ultimaBitmap.value
    }

    /**
     * Captura frame com retry automático.
     */
    suspend fun capturarComRetry(tentativas: Int = 3): Bitmap? {
        repeat(tentativas) { tentativa ->
            val bmp = capturarFrameAtual()
            if (bmp != null) return bmp
            kotlinx.coroutines.delay(300L)
            logger?.debug(TAG, "Retry captura ${tentativa + 1}/$tentativas")
        }
        return null
    }

    fun pararCaptura() {
        virtualDisplay?.release()
        imageReader?.close()
        mediaProjection?.stop()
        virtualDisplay = null
        imageReader = null
        mediaProjection = null
        _ultimaBitmap.value = null
    }

    private fun criarCanalNotificacao() {
        val canal = NotificationChannel(
            CANAL_NOTIFICACAO,
            "Captura de Tela",
            NotificationManager.IMPORTANCE_LOW
        ).apply {
            description = "Necessário para captura de tela do bot"
        }
        val nm = getSystemService(NotificationManager::class.java)
        nm.createNotificationChannel(canal)
    }

    private fun criarNotificacao(): Notification =
        NotificationCompat.Builder(this, CANAL_NOTIFICACAO)
            .setContentTitle("Royal Match Bot")
            .setContentText("Captura de tela ativa")
            .setSmallIcon(R.drawable.ic_bot_notification)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .setSilent(true)
            .build()
}
