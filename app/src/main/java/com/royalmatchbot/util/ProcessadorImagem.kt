package com.royalmatchbot.util

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.ColorMatrix
import android.graphics.ColorMatrixColorFilter
import android.graphics.Paint
import android.graphics.RectF

/**
 * Utilitários de processamento de imagem para análise do tabuleiro.
 * Fornece operações de recorte, escala, filtragem e análise de cor.
 */
class ProcessadorImagem {

    /**
     * Recorta uma região do bitmap.
     */
    fun recortarRegiao(bitmap: Bitmap, regiao: RectF): Bitmap {
        val x = regiao.left.toInt().coerceIn(0, bitmap.width - 1)
        val y = regiao.top.toInt().coerceIn(0, bitmap.height - 1)
        val w = regiao.width().toInt().coerceIn(1, bitmap.width - x)
        val h = regiao.height().toInt().coerceIn(1, bitmap.height - y)
        return Bitmap.createBitmap(bitmap, x, y, w, h)
    }

    /**
     * Redimensiona o bitmap para as dimensões especificadas.
     */
    fun redimensionar(bitmap: Bitmap, largura: Int, altura: Int): Bitmap =
        Bitmap.createScaledBitmap(bitmap, largura, altura, true)

    /**
     * Converte o bitmap para escala de cinza.
     */
    fun paraEscalaCinza(bitmap: Bitmap): Bitmap {
        val bmp = Bitmap.createBitmap(bitmap.width, bitmap.height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bmp)
        val paint = Paint().apply {
            colorFilter = ColorMatrixColorFilter(ColorMatrix().apply { setSaturation(0f) })
        }
        canvas.drawBitmap(bitmap, 0f, 0f, paint)
        return bmp
    }

    /**
     * Aumenta o contraste do bitmap.
     */
    fun aumentarContraste(bitmap: Bitmap, fator: Float = 1.5f): Bitmap {
        val bmp = Bitmap.createBitmap(bitmap.width, bitmap.height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(bmp)
        val cm = ColorMatrix(floatArrayOf(
            fator, 0f, 0f, 0f, 0f,
            0f, fator, 0f, 0f, 0f,
            0f, 0f, fator, 0f, 0f,
            0f, 0f, 0f, 1f, 0f
        ))
        val paint = Paint().apply { colorFilter = ColorMatrixColorFilter(cm) }
        canvas.drawBitmap(bitmap, 0f, 0f, paint)
        return bmp
    }

    /**
     * Calcula o histograma de cor de uma região.
     */
    fun calcularHistograma(
        bitmap: Bitmap,
        regiao: RectF? = null,
        buckets: Int = 16
    ): IntArray {
        val x1 = (regiao?.left?.toInt() ?: 0).coerceIn(0, bitmap.width - 1)
        val y1 = (regiao?.top?.toInt() ?: 0).coerceIn(0, bitmap.height - 1)
        val x2 = (regiao?.right?.toInt() ?: bitmap.width).coerceIn(x1 + 1, bitmap.width)
        val y2 = (regiao?.bottom?.toInt() ?: bitmap.height).coerceIn(y1 + 1, bitmap.height)

        val histograma = IntArray(buckets * 3)
        val passoX = maxOf(1, (x2 - x1) / 12)
        val passoY = maxOf(1, (y2 - y1) / 12)

        for (x in x1 until x2 step passoX) {
            for (y in y1 until y2 step passoY) {
                val pixel = bitmap.getPixel(x, y)
                val r = Color.red(pixel) * buckets / 256
                val g = Color.green(pixel) * buckets / 256
                val b = Color.blue(pixel) * buckets / 256
                histograma[r]++
                histograma[buckets + g]++
                histograma[buckets * 2 + b]++
            }
        }
        return histograma
    }

    /**
     * Detecta se dois bitmaps são similares (para verificar animações).
     * @return Percentual de similaridade (0.0 a 1.0)
     */
    fun calcularSimilaridade(bmp1: Bitmap, bmp2: Bitmap): Float {
        if (bmp1.width != bmp2.width || bmp1.height != bmp2.height) {
            val b2 = redimensionar(bmp2, bmp1.width, bmp1.height)
            return calcularSimilaridade(bmp1, b2)
        }

        var iguais = 0L
        var total = 0L
        val passo = maxOf(1, bmp1.width / 20)
        val passoV = maxOf(1, bmp1.height / 20)

        for (x in 0 until bmp1.width step passo) {
            for (y in 0 until bmp1.height step passoV) {
                val p1 = bmp1.getPixel(x, y)
                val p2 = bmp2.getPixel(x, y)
                val dr = Math.abs(Color.red(p1) - Color.red(p2))
                val dg = Math.abs(Color.green(p1) - Color.green(p2))
                val db = Math.abs(Color.blue(p1) - Color.blue(p2))
                if (dr + dg + db < 30) iguais++
                total++
            }
        }
        return if (total > 0) iguais.toFloat() / total else 0f
    }

    /**
     * Salva bitmap para debug (retorna path do arquivo salvo).
     */
    fun salvarParaDebug(bitmap: Bitmap, nome: String, diretorio: java.io.File): String? {
        return try {
            val arquivo = java.io.File(diretorio, "${nome}_${System.currentTimeMillis()}.png")
            arquivo.outputStream().use { bitmap.compress(Bitmap.CompressFormat.PNG, 85, it) }
            arquivo.absolutePath
        } catch (e: Exception) {
            null
        }
    }
}
