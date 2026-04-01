package com.royalmatchbot.model

import android.graphics.Point
import android.graphics.RectF
import android.os.Parcelable
import kotlinx.parcelize.Parcelize

/**
 * Representa uma célula do tabuleiro do Royal Match.
 *
 * @param linha Posição vertical (0 = topo)
 * @param coluna Posição horizontal (0 = esquerda)
 * @param tipo Tipo da peça nesta célula
 * @param retanguloTela Coordenadas em pixels na tela do dispositivo
 * @param bloqueada Se a célula está bloqueada (corrente, caixa, etc.)
 * @param camadas Número de camadas de obstáculo
 * @param confianca Confiança do reconhecimento (0.0 a 1.0)
 */
@Parcelize
data class Celula(
    val linha: Int,
    val coluna: Int,
    var tipo: TipoPeca = TipoPeca.DESCONHECIDO,
    var retanguloTela: RectF = RectF(),
    var bloqueada: Boolean = false,
    var camadas: Int = 0,
    var confianca: Float = 1.0f
) : Parcelable {

    val centroX: Float get() = retanguloTela.centerX()
    val centroY: Float get() = retanguloTela.centerY()
    val centro: Point get() = Point(centroX.toInt(), centroY.toInt())

    val ehPecaBasica: Boolean get() = TipoPeca.pecasBasicas().contains(tipo)
    val ehPecaEspecial: Boolean get() = tipo.ehEspecial
    val ehObstaculo: Boolean get() = TipoPeca.obstaculos().contains(tipo)
    val ehVazio: Boolean get() = tipo == TipoPeca.VAZIO
    val ehValida: Boolean get() = tipo != TipoPeca.DESCONHECIDO && tipo != TipoPeca.VAZIO

    fun distanciaPara(outra: Celula): Float {
        val dx = (linha - outra.linha).toFloat()
        val dy = (coluna - outra.coluna).toFloat()
        return Math.sqrt((dx * dx + dy * dy).toDouble()).toFloat()
    }

    fun ehAdjacenteA(outra: Celula): Boolean {
        val dl = Math.abs(linha - outra.linha)
        val dc = Math.abs(coluna - outra.coluna)
        return (dl == 1 && dc == 0) || (dl == 0 && dc == 1)
    }

    fun posicaoTexto(): String = "(L$linha, C$coluna)"

    override fun toString(): String =
        "Celula[${posicaoTexto()} tipo=${tipo.nome} bloq=$bloqueada conf=%.2f]".format(confianca)
}
