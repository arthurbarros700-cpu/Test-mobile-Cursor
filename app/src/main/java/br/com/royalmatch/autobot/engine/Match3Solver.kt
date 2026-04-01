package br.com.royalmatch.autobot.engine

import br.com.royalmatch.autobot.model.Board
import br.com.royalmatch.autobot.model.Movimento
import br.com.royalmatch.autobot.model.TipoPeca
import kotlin.math.abs

class Match3Solver {

    fun encontrarMelhorMovimento(board: Board, confiancaMinima: Float): Movimento? {
        var melhor: Movimento? = null

        for (l in 0 until board.linhas) {
            for (c in 0 until board.colunas) {
                tentarTroca(board, l, c, l, c + 1)?.let { mov ->
                    if (mov.confianca >= confiancaMinima && (melhor == null || mov.pontuacao > melhor!!.pontuacao)) {
                        melhor = mov
                    }
                }

                tentarTroca(board, l, c, l + 1, c)?.let { mov ->
                    if (mov.confianca >= confiancaMinima && (melhor == null || mov.pontuacao > melhor!!.pontuacao)) {
                        melhor = mov
                    }
                }
            }
        }

        return melhor
    }

    private fun tentarTroca(board: Board, l1: Int, c1: Int, l2: Int, c2: Int): Movimento? {
        if (!dentro(board, l1, c1) || !dentro(board, l2, c2)) return null
        if (board.em(l1, c1) == TipoPeca.DESCONHECIDO || board.em(l2, c2) == TipoPeca.DESCONHECIDO) return null
        if (board.em(l1, c1) == board.em(l2, c2)) return null
        if (abs(l1 - l2) + abs(c1 - c2) != 1) return null

        val copia = copiar(board)
        val tmp = copia[l1][c1]
        copia[l1][c1] = copia[l2][c2]
        copia[l2][c2] = tmp

        val score = pontuar(copia)
        if (score <= 0) return null

        val confianca = when {
            score >= 6 -> 0.93f
            score == 5 -> 0.86f
            score == 4 -> 0.78f
            else -> 0.66f
        }

        return Movimento(
            origemLinha = l1,
            origemColuna = c1,
            destinoLinha = l2,
            destinoColuna = c2,
            pontuacao = score,
            confianca = confianca
        )
    }

    private fun pontuar(grid: Array<Array<TipoPeca>>): Int {
        val linhas = grid.size
        val colunas = grid[0].size
        var total = 0

        for (l in 0 until linhas) {
            var c = 0
            while (c < colunas) {
                val tipo = grid[l][c]
                if (tipo == TipoPeca.DESCONHECIDO) {
                    c++
                    continue
                }
                var j = c + 1
                while (j < colunas && grid[l][j] == tipo) j++
                val tamanho = j - c
                if (tamanho >= 3) total += tamanho
                c = j
            }
        }

        for (c in 0 until colunas) {
            var l = 0
            while (l < linhas) {
                val tipo = grid[l][c]
                if (tipo == TipoPeca.DESCONHECIDO) {
                    l++
                    continue
                }
                var i = l + 1
                while (i < linhas && grid[i][c] == tipo) i++
                val tamanho = i - l
                if (tamanho >= 3) total += tamanho
                l = i
            }
        }

        return total
    }

    private fun dentro(board: Board, l: Int, c: Int): Boolean =
        l in 0 until board.linhas && c in 0 until board.colunas

    private fun copiar(board: Board): Array<Array<TipoPeca>> {
        return Array(board.linhas) { l ->
            Array(board.colunas) { c -> board.em(l, c) }
        }
    }
}
