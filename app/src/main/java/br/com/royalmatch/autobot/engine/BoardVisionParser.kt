package br.com.royalmatch.autobot.engine

import android.graphics.Bitmap
import android.graphics.Color
import br.com.royalmatch.autobot.model.Board
import br.com.royalmatch.autobot.model.TipoPeca
import kotlin.math.max
import kotlin.math.min

/**
 * Parser heurístico simples para mapear uma tela de jogo em grade 8x8.
 * O recorte considera a região central inferior, comum em jogos match-3.
 */
class BoardVisionParser {

    fun parse(bitmap: Bitmap): Board? {
        if (bitmap.width < 300 || bitmap.height < 400) return null

        val largura = bitmap.width
        val altura = bitmap.height

        val boardLeft = (largura * 0.10f).toInt()
        val boardRight = (largura * 0.90f).toInt()
        val boardTop = (altura * 0.20f).toInt()
        val boardBottom = (altura * 0.84f).toInt()

        val boardWidth = boardRight - boardLeft
        val boardHeight = boardBottom - boardTop
        if (boardWidth <= 0 || boardHeight <= 0) return null

        val linhas = 8
        val colunas = 8
        val celulaW = boardWidth / colunas
        val celulaH = boardHeight / linhas
        if (celulaW < 8 || celulaH < 8) return null

        val pecas = Array(linhas) { Array(colunas) { TipoPeca.DESCONHECIDO } }

        for (l in 0 until linhas) {
            for (c in 0 until colunas) {
                val cx = boardLeft + (c * celulaW) + celulaW / 2
                val cy = boardTop + (l * celulaH) + celulaH / 2
                val cor = amostrarCorMedia(bitmap, cx, cy, max(2, min(celulaW, celulaH) / 6))
                pecas[l][c] = classificarPeca(cor)
            }
        }

        return Board(linhas, colunas, pecas)
    }

    private fun amostrarCorMedia(bitmap: Bitmap, cx: Int, cy: Int, raio: Int): Int {
        var somaR = 0L
        var somaG = 0L
        var somaB = 0L
        var n = 0L

        val left = max(0, cx - raio)
        val right = min(bitmap.width - 1, cx + raio)
        val top = max(0, cy - raio)
        val bottom = min(bitmap.height - 1, cy + raio)

        for (y in top..bottom) {
            for (x in left..right) {
                val p = bitmap.getPixel(x, y)
                somaR += Color.red(p)
                somaG += Color.green(p)
                somaB += Color.blue(p)
                n++
            }
        }

        val r = (somaR / n).toInt()
        val g = (somaG / n).toInt()
        val b = (somaB / n).toInt()
        return Color.rgb(r, g, b)
    }

    private fun classificarPeca(cor: Int): TipoPeca {
        val r = Color.red(cor)
        val g = Color.green(cor)
        val b = Color.blue(cor)

        return when {
            r > g + 28 && r > b + 28 -> TipoPeca.VERMELHO
            b > r + 22 && b > g + 8 -> TipoPeca.AZUL
            g > r + 18 && g > b + 10 -> TipoPeca.VERDE
            r > 170 && g > 145 && b < 120 -> TipoPeca.AMARELO
            r > 120 && b > 120 && g < 130 -> TipoPeca.ROXO
            else -> TipoPeca.DESCONHECIDO
        }
    }
}
