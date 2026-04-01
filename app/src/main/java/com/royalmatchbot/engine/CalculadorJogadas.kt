package com.royalmatchbot.engine

import com.royalmatchbot.model.*
import com.royalmatchbot.util.BotLogger

/**
 * Calculador de jogadas — encontra todas as trocas válidas no tabuleiro
 * e as pontua de acordo com a estratégia ativa.
 *
 * Implementa detecção de:
 * - Match-3 básico
 * - Match-4 (cria foguete)
 * - Match-5 em linha (cria foguete)
 * - Match em L / T (cria bomba)
 * - Match-6+ (cria arco-íris)
 * - Combos de boosters adjacentes
 */
class CalculadorJogadas {

    companion object {
        private const val TAG = "CalculadorJogadas"
    }

    private val logger = BotLogger.instancia

    /**
     * Encontra todas as jogadas possíveis no tabuleiro atual.
     * Testa cada par de células adjacentes e avalia o resultado.
     *
     * @return Lista de jogadas ordenadas por pontuação (maior primeiro)
     */
    fun calcularTodasJogadas(tabuleiro: Tabuleiro): List<Jogada> {
        val jogadas = mutableListOf<Jogada>()

        for (l in 0 until tabuleiro.linhas) {
            for (c in 0 until tabuleiro.colunas) {
                val celula = tabuleiro.celulas[l][c]
                if (!celula.ehPecaBasica && !celula.ehPecaEspecial) continue

                // Testar troca com célula à direita
                if (c + 1 < tabuleiro.colunas) {
                    val vizinhoDireita = tabuleiro.celulas[l][c + 1]
                    avaliarTroca(tabuleiro, celula, vizinhoDireita)?.let { jogadas.add(it) }
                }

                // Testar troca com célula abaixo
                if (l + 1 < tabuleiro.linhas) {
                    val vizinhoBaixo = tabuleiro.celulas[l + 1][c]
                    avaliarTroca(tabuleiro, celula, vizinhoBaixo)?.let { jogadas.add(it) }
                }
            }
        }

        // Avaliar combos de boosters (muito alto valor)
        val combosBooster = encontrarCombosBooster(tabuleiro)
        jogadas.addAll(combosBooster)

        logger?.debug(TAG, "Encontradas ${jogadas.size} jogadas possíveis")
        return jogadas.sortedByDescending { it.pontuacaoEstimada }
    }

    /**
     * Avalia uma troca entre duas células e retorna a Jogada se for válida (match ≥ 3).
     */
    private fun avaliarTroca(
        tabuleiro: Tabuleiro,
        c1: Celula,
        c2: Celula
    ): Jogada? {
        if (!c1.ehAdjacenteA(c2)) return null
        if (c1.bloqueada || c2.bloqueada) return null

        // Caso especial: booster sendo arrastado para peça básica
        if (c1.ehPecaEspecial || c2.ehPecaEspecial) {
            return Jogada(
                celulaOrigem = c1,
                celulaDestino = c2,
                pontuacaoEstimada = 500,
                tipo = TipoJogada.ATIVAR_BOOSTER,
                descricao = "Ativar ${c1.tipo.nome} em ${c2.posicaoTexto()}",
                prioridade = 80
            )
        }

        // Simular troca no clone do tabuleiro
        val clone = tabuleiro.clonar()
        val cc1 = clone.celulas[c1.linha][c1.coluna]
        val cc2 = clone.celulas[c2.linha][c2.coluna]
        clone.celulas[c1.linha][c1.coluna] = cc1.copy(tipo = cc2.tipo)
        clone.celulas[c2.linha][c2.coluna] = cc2.copy(tipo = cc1.tipo)

        // Detectar matches resultantes
        val matchesLinha = detectarMatchesLinha(clone, c1, c2)
        val matchesColuna = detectarMatchesColuna(clone, c1, c2)
        val todosMatches = (matchesLinha + matchesColuna)
            .distinctBy { it.linha * 100 + it.coluna }

        if (todosMatches.size < 3) return null

        // Classificar tipo de match
        val (tipoJogada, criaBooster, tipoBooster) = classificarMatch(todosMatches, c1, c2)
        val pontos = calcularPontuacao(todosMatches.size, tipoJogada)

        return Jogada(
            celulaOrigem = c1,
            celulaDestino = c2,
            pontuacaoEstimada = pontos,
            tipo = tipoJogada,
            descricao = gerarDescricao(tipoJogada, c1, c2, todosMatches.size),
            prioridade = tipoJogada.ordinal,
            criaBooster = criaBooster,
            tipoBoosterCriado = tipoBooster
        )
    }

    private fun detectarMatchesLinha(
        tabuleiro: Tabuleiro,
        c1: Celula,
        c2: Celula
    ): List<Celula> {
        val celulasAfetatadas = mutableSetOf<Celula>()

        // Verificar as linhas de ambas as células trocadas
        for (linhaMeta in setOf(c1.linha, c2.linha)) {
            for (colInicio in 0 until tabuleiro.colunas) {
                val cel = tabuleiro.celulas[linhaMeta][colInicio]
                if (!cel.ehPecaBasica) continue
                val grupo = expandirHorizontal(tabuleiro, linhaMeta, colInicio)
                if (grupo.size >= 3) celulasAfetatadas.addAll(grupo)
            }
        }

        return celulasAfetatadas.toList()
    }

    private fun detectarMatchesColuna(
        tabuleiro: Tabuleiro,
        c1: Celula,
        c2: Celula
    ): List<Celula> {
        val celulasAfetadas = mutableSetOf<Celula>()

        for (colMeta in setOf(c1.coluna, c2.coluna)) {
            for (linInicio in 0 until tabuleiro.linhas) {
                val cel = tabuleiro.celulas[linInicio][colMeta]
                if (!cel.ehPecaBasica) continue
                val grupo = expandirVertical(tabuleiro, linInicio, colMeta)
                if (grupo.size >= 3) celulasAfetadas.addAll(grupo)
            }
        }

        return celulasAfetadas.toList()
    }

    private fun expandirHorizontal(
        tabuleiro: Tabuleiro,
        linha: Int,
        colInicio: Int
    ): List<Celula> {
        val tipo = tabuleiro.celulas[linha][colInicio].tipo
        val grupo = mutableListOf(tabuleiro.celulas[linha][colInicio])

        var c = colInicio + 1
        while (c < tabuleiro.colunas && tabuleiro.celulas[linha][c].tipo == tipo) {
            grupo.add(tabuleiro.celulas[linha][c])
            c++
        }
        return if (grupo.size >= 3) grupo else emptyList()
    }

    private fun expandirVertical(
        tabuleiro: Tabuleiro,
        linhaInicio: Int,
        coluna: Int
    ): List<Celula> {
        val tipo = tabuleiro.celulas[linhaInicio][coluna].tipo
        val grupo = mutableListOf(tabuleiro.celulas[linhaInicio][coluna])

        var l = linhaInicio + 1
        while (l < tabuleiro.linhas && tabuleiro.celulas[l][coluna].tipo == tipo) {
            grupo.add(tabuleiro.celulas[l][coluna])
            l++
        }
        return if (grupo.size >= 3) grupo else emptyList()
    }

    private data class ClassificacaoMatch(
        val tipo: TipoJogada,
        val criaBooster: Boolean,
        val tipoBooster: TipoPeca?
    )

    private fun classificarMatch(
        celulas: List<Celula>,
        c1: Celula,
        c2: Celula
    ): ClassificacaoMatch {
        val n = celulas.size

        // Detectar formato L ou T (peça na interseção)
        val linhasDistintas = celulas.map { it.linha }.distinct().size
        val colunasDistintas = celulas.map { it.coluna }.distinct().size
        val ehLouT = linhasDistintas >= 2 && colunasDistintas >= 2

        return when {
            n >= 6 -> ClassificacaoMatch(TipoJogada.MATCH_6_MAIS, true, TipoPeca.ARCO_IRIS)
            ehLouT && n >= 5 -> ClassificacaoMatch(TipoJogada.MATCH_L, true, TipoPeca.BOMBA)
            ehLouT -> ClassificacaoMatch(TipoJogada.MATCH_T, true, TipoPeca.BOMBA)
            n == 5 -> ClassificacaoMatch(TipoJogada.MATCH_5, true, TipoPeca.FOGUETE)
            n == 4 -> ClassificacaoMatch(TipoJogada.MATCH_4, true, TipoPeca.FOGUETE)
            else -> ClassificacaoMatch(TipoJogada.MATCH_3, false, null)
        }
    }

    private fun calcularPontuacao(numCelulas: Int, tipo: TipoJogada): Int {
        val base = numCelulas * 50
        return (base * tipo.multiplicadorPontos).toInt()
    }

    private fun gerarDescricao(
        tipo: TipoJogada,
        c1: Celula,
        c2: Celula,
        numPecas: Int
    ): String = "${tipo.nome} com $numPecas peças em ${c1.posicaoTexto()}"

    /**
     * Detecta boosters adjacentes entre si — combos de altíssimo valor.
     */
    private fun encontrarCombosBooster(tabuleiro: Tabuleiro): List<Jogada> {
        val combos = mutableListOf<Jogada>()
        val boosters = tabuleiro.todasAsCelulas().filter { it.ehPecaEspecial }

        for (b1 in boosters) {
            for (b2 in boosters) {
                if (b1 == b2) continue
                if (b1.ehAdjacenteA(b2)) {
                    combos.add(
                        Jogada(
                            celulaOrigem = b1,
                            celulaDestino = b2,
                            pontuacaoEstimada = 2000,
                            tipo = TipoJogada.COMBO_BOOSTER,
                            descricao = "Combo ${b1.tipo.nome} + ${b2.tipo.nome}",
                            prioridade = 100
                        )
                    )
                }
            }
        }
        return combos
    }

    /**
     * Encontra jogadas que desobstruem obstáculos próximos ao objetivo da fase.
     */
    fun encontrarJogadasDesobstrucao(
        tabuleiro: Tabuleiro,
        todasJogadas: List<Jogada>
    ): List<Jogada> {
        val obstaculos = tabuleiro.todasAsCelulas().filter { it.ehObstaculo }
        if (obstaculos.isEmpty()) return todasJogadas

        return todasJogadas.map { jogada ->
            val celulasMover = listOf(jogada.celulaOrigem, jogada.celulaDestino)
            val somaDistancias = celulasMover.sumOf { cm ->
                obstaculos.minOf { obs -> cm.distanciaPara(obs).toDouble() }
            }
            val bonusProximidade = (20.0 / (somaDistancias + 1.0) * 100).toInt()
            jogada.copy(pontuacaoEstimada = jogada.pontuacaoEstimada + bonusProximidade)
        }.sortedByDescending { it.pontuacaoEstimada }
    }
}
