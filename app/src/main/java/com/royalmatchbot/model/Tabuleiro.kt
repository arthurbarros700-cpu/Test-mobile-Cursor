package com.royalmatchbot.model

import android.graphics.RectF

/**
 * Representa o estado completo do tabuleiro do Royal Match.
 * Armazena todas as células, analisa grupos e calcula métricas.
 */
class Tabuleiro(
    val linhas: Int = 9,
    val colunas: Int = 9,
    val retanguloTela: RectF = RectF()
) {
    val celulas: Array<Array<Celula>> = Array(linhas) { l ->
        Array(colunas) { c -> Celula(l, c) }
    }

    var fase: Int = 0
    var movimentosRestantes: Int = 0
    var pontuacaoAtual: Long = 0L
    var timestampCaptura: Long = System.currentTimeMillis()

    operator fun get(linha: Int, coluna: Int): Celula? {
        if (linha < 0 || linha >= linhas || coluna < 0 || coluna >= colunas) return null
        return celulas[linha][coluna]
    }

    fun setCelula(linha: Int, coluna: Int, tipo: TipoPeca, bloqueada: Boolean = false) {
        if (linha in 0 until linhas && coluna in 0 until colunas) {
            celulas[linha][coluna] = celulas[linha][coluna].copy(tipo = tipo, bloqueada = bloqueada)
        }
    }

    fun todasAsCelulas(): List<Celula> = celulas.flatten()

    fun celulasValidas(): List<Celula> = todasAsCelulas().filter { it.ehValida }

    fun celulasDoTipo(tipo: TipoPeca): List<Celula> =
        todasAsCelulas().filter { it.tipo == tipo }

    fun vizinhos(celula: Celula): List<Celula> {
        val resultado = mutableListOf<Celula>()
        val (l, c) = celula.linha to celula.coluna
        if (l > 0) resultado.add(celulas[l - 1][c])          // cima
        if (l < linhas - 1) resultado.add(celulas[l + 1][c]) // baixo
        if (c > 0) resultado.add(celulas[l][c - 1])          // esquerda
        if (c < colunas - 1) resultado.add(celulas[l][c + 1])// direita
        return resultado
    }

    fun vizinhosDiagonais(celula: Celula): List<Celula> {
        val resultado = mutableListOf<Celula>()
        val (l, c) = celula.linha to celula.coluna
        for (dl in -1..1) for (dc in -1..1) {
            if (dl == 0 && dc == 0) continue
            get(l + dl, c + dc)?.let { resultado.add(it) }
        }
        return resultado
    }

    /**
     * Encontra todos os grupos conectados de peças do mesmo tipo.
     * Usado para identificar possíveis combinações (match-3 ou mais).
     */
    fun encontrarGrupos(tamanhoMinimo: Int = 3): List<List<Celula>> {
        val visitados = mutableSetOf<Pair<Int, Int>>()
        val grupos = mutableListOf<List<Celula>>()

        for (l in 0 until linhas) {
            for (c in 0 until colunas) {
                val celula = celulas[l][c]
                val pos = l to c
                if (pos in visitados || !celula.ehPecaBasica) continue

                val grupo = buscaEmLargura(celula, visitados)
                if (grupo.size >= tamanhoMinimo) {
                    grupos.add(grupo)
                }
            }
        }
        return grupos.sortedByDescending { it.size }
    }

    private fun buscaEmLargura(
        inicio: Celula,
        visitados: MutableSet<Pair<Int, Int>>
    ): List<Celula> {
        val grupo = mutableListOf<Celula>()
        val fila = ArrayDeque<Celula>()
        fila.add(inicio)
        visitados.add(inicio.linha to inicio.coluna)

        while (fila.isNotEmpty()) {
            val atual = fila.removeFirst()
            grupo.add(atual)
            vizinhos(atual)
                .filter { it.tipo == inicio.tipo && (it.linha to it.coluna) !in visitados }
                .forEach {
                    visitados.add(it.linha to it.coluna)
                    fila.add(it)
                }
        }
        return grupo
    }

    /**
     * Verifica se trocar duas peças adjacentes criaria um match de 3+.
     */
    fun simularTroca(c1: Celula, c2: Celula): Int {
        if (!c1.ehAdjacenteA(c2)) return 0
        if (!c1.ehPecaBasica || !c2.ehPecaBasica) return 0

        // Simular a troca temporariamente
        val tipo1 = c1.tipo
        val tipo2 = c2.tipo
        celulas[c1.linha][c1.coluna] = c1.copy(tipo = tipo2)
        celulas[c2.linha][c2.coluna] = c2.copy(tipo = tipo1)

        val pontos = calcularPontosMatch()

        // Reverter
        celulas[c1.linha][c1.coluna] = c1.copy(tipo = tipo1)
        celulas[c2.linha][c2.coluna] = c2.copy(tipo = tipo2)

        return pontos
    }

    private fun calcularPontosMatch(): Int {
        var total = 0
        // Checar linhas horizontais
        for (l in 0 until linhas) {
            var count = 1
            for (c in 1 until colunas) {
                if (celulas[l][c].tipo == celulas[l][c - 1].tipo && celulas[l][c].ehPecaBasica) {
                    count++
                } else {
                    if (count >= 3) total += count * count
                    count = 1
                }
            }
            if (count >= 3) total += count * count
        }
        // Checar colunas verticais
        for (c in 0 until colunas) {
            var count = 1
            for (l in 1 until linhas) {
                if (celulas[l][c].tipo == celulas[l - 1][c].tipo && celulas[l][c].ehPecaBasica) {
                    count++
                } else {
                    if (count >= 3) total += count * count
                    count = 1
                }
            }
            if (count >= 3) total += count * count
        }
        return total
    }

    fun percentualPreenchido(): Float {
        val validas = celulasValidas().size
        return if (linhas * colunas > 0) validas.toFloat() / (linhas * colunas) else 0f
    }

    fun clonar(): Tabuleiro {
        val clone = Tabuleiro(linhas, colunas, RectF(retanguloTela))
        clone.fase = fase
        clone.movimentosRestantes = movimentosRestantes
        clone.pontuacaoAtual = pontuacaoAtual
        for (l in 0 until linhas) {
            for (c in 0 until colunas) {
                clone.celulas[l][c] = celulas[l][c].copy()
            }
        }
        return clone
    }

    override fun toString(): String = buildString {
        appendLine("=== Tabuleiro ${linhas}x${colunas} | Fase $fase | Mov. $movimentosRestantes ===")
        for (l in 0 until linhas) {
            for (c in 0 until colunas) {
                val tipo = celulas[l][c].tipo
                append(when (tipo) {
                    TipoPeca.VERMELHO -> "V "
                    TipoPeca.AZUL -> "A "
                    TipoPeca.VERDE -> "G "
                    TipoPeca.AMARELO -> "M "
                    TipoPeca.ROXO -> "R "
                    TipoPeca.ROSA -> "P "
                    TipoPeca.FOGUETE -> "F!"
                    TipoPeca.BOMBA -> "B!"
                    TipoPeca.ARCO_IRIS -> "W!"
                    TipoPeca.VAZIO -> ". "
                    else -> "? "
                })
            }
            appendLine()
        }
    }
}
