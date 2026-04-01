package br.com.royalmatch.autobot.engine

import android.graphics.Point
import br.com.royalmatch.autobot.model.Movimento

class GesturePlanner {

    data class Swipe(val inicio: Point, val fim: Point)

    fun planejarSwipe(
        movimento: Movimento,
        larguraTela: Int,
        alturaTela: Int,
        linhas: Int = 8,
        colunas: Int = 8
    ): Swipe {
        val boardLeft = (larguraTela * 0.10f).toInt()
        val boardRight = (larguraTela * 0.90f).toInt()
        val boardTop = (alturaTela * 0.20f).toInt()
        val boardBottom = (alturaTela * 0.84f).toInt()

        val celulaW = (boardRight - boardLeft) / colunas
        val celulaH = (boardBottom - boardTop) / linhas

        fun centro(l: Int, c: Int): Point {
            val x = boardLeft + c * celulaW + celulaW / 2
            val y = boardTop + l * celulaH + celulaH / 2
            return Point(x, y)
        }

        return Swipe(
            inicio = centro(movimento.origemLinha, movimento.origemColuna),
            fim = centro(movimento.destinoLinha, movimento.destinoColuna)
        )
    }
}
