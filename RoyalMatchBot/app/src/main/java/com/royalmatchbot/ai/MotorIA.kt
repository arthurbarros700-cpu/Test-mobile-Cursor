package com.royalmatchbot.ai

import com.royalmatchbot.models.*
import timber.log.Timber
import kotlin.math.max
import kotlin.math.min
import kotlin.random.Random

/**
 * Motor de Inteligência Artificial do Royal Match Bot.
 *
 * Implementa múltiplos algoritmos de análise:
 * - Algoritmo Guloso com Pontuação Heurística
 * - Análise de Lookahead (previsão de jogadas futuras)
 * - Detecção e priorização de combos em cadeia
 * - Estratégia de criação de peças especiais
 * - Avaliação de objetivos da fase
 */
class MotorIA {

    companion object {
        private const val PROFUNDIDADE_LOOKAHEAD = 3
        private const val BONUS_ESPECIAL = 50f
        private const val BONUS_COMBO = 30f
        private const val BONUS_OBJETIVO = 100f
        private const val PENALIDADE_BORDA = -5f
        private const val BONUS_POSICAO_CENTRAL = 10f
    }

    /**
     * Calcula a melhor jogada para o estado atual do tabuleiro.
     */
    fun calcularMelhorJogada(
        tabuleiro: Tabuleiro,
        estrategia: TipoEstrategia,
        objetivos: Map<String, Int> = emptyMap()
    ): Jogada? {
        val jogadasPossiveis = gerarTodasJogadas(tabuleiro)

        if (jogadasPossiveis.isEmpty()) {
            Timber.w("Nenhuma jogada possível encontrada!")
            return null
        }

        return when (estrategia) {
            TipoEstrategia.IA_AVANCADA -> calcularJogadaIAAvancada(tabuleiro, jogadasPossiveis, objetivos)
            TipoEstrategia.AGRESSIVA -> calcularJogadaAgressiva(tabuleiro, jogadasPossiveis)
            TipoEstrategia.CONSERVADORA -> calcularJogadaConservadora(tabuleiro, jogadasPossiveis)
            TipoEstrategia.VELOCIDADE_MAXIMA -> calcularJogadaVelocidade(jogadasPossiveis)
        }
    }

    /**
     * Gera todas as jogadas válidas possíveis no tabuleiro.
     */
    private fun gerarTodasJogadas(tabuleiro: Tabuleiro): List<Jogada> {
        val jogadas = mutableListOf<Jogada>()

        for (linha in 0..7) {
            for (coluna in 0..7) {
                val celula = tabuleiro.getCelula(linha, coluna) ?: continue
                if (celula.tipo == TipoPeca.VAZIO || celula.travada) continue

                // Verificar troca com vizinho direito
                if (coluna < 7) {
                    val vizinhoDireito = tabuleiro.getCelula(linha, coluna + 1) ?: continue
                    if (!vizinhoDireito.travada && vizinhoDireito.tipo != TipoPeca.VAZIO) {
                        if (verificarJogadaValida(tabuleiro, linha, coluna, linha, coluna + 1)) {
                            jogadas.add(Jogada(linha, coluna, linha, coluna + 1))
                        }
                    }
                }

                // Verificar troca com vizinho abaixo
                if (linha < 7) {
                    val vizinhoAbaixo = tabuleiro.getCelula(linha + 1, coluna) ?: continue
                    if (!vizinhoAbaixo.travada && vizinhoAbaixo.tipo != TipoPeca.VAZIO) {
                        if (verificarJogadaValida(tabuleiro, linha, coluna, linha + 1, coluna)) {
                            jogadas.add(Jogada(linha, coluna, linha + 1, coluna))
                        }
                    }
                }
            }
        }

        return jogadas
    }

    /**
     * Verifica se uma troca resulta em um match de 3 ou mais.
     */
    private fun verificarJogadaValida(
        tabuleiro: Tabuleiro,
        l1: Int, c1: Int, l2: Int, c2: Int
    ): Boolean {
        val tabuleiroSimulado = simularTroca(tabuleiro, l1, c1, l2, c2)
        return contarMatchs(tabuleiroSimulado, l1, c1) >= 3 ||
                contarMatchs(tabuleiroSimulado, l2, c2) >= 3
    }

    /**
     * Simula uma troca de peças no tabuleiro (sem modificar o original).
     */
    private fun simularTroca(
        tabuleiro: Tabuleiro, l1: Int, c1: Int, l2: Int, c2: Int
    ): Tabuleiro {
        val novasCelulas = Array(8) { linha -> Array(8) { coluna -> tabuleiro.celulas[linha][coluna] } }
        val temp = novasCelulas[l1][c1]
        novasCelulas[l1][c1] = novasCelulas[l1][c1].copy(tipo = novasCelulas[l2][c2].tipo)
        novasCelulas[l2][c2] = novasCelulas[l2][c2].copy(tipo = temp.tipo)
        return tabuleiro.copy(celulas = novasCelulas)
    }

    /**
     * Conta quantas peças do mesmo tipo estão em linha/coluna com a posição dada.
     */
    private fun contarMatchs(tabuleiro: Tabuleiro, linha: Int, coluna: Int): Int {
        val tipo = tabuleiro.getCelula(linha, coluna)?.tipo ?: return 0
        if (tipo == TipoPeca.VAZIO || tipo == TipoPeca.OBSTACULO) return 0

        var maxMatch = 1

        // Verificar horizontal
        var countH = 1
        var c = coluna - 1
        while (c >= 0 && tabuleiro.getCelula(linha, c)?.tipo == tipo) { countH++; c-- }
        c = coluna + 1
        while (c <= 7 && tabuleiro.getCelula(linha, c)?.tipo == tipo) { countH++; c++ }
        maxMatch = max(maxMatch, countH)

        // Verificar vertical
        var countV = 1
        var l = linha - 1
        while (l >= 0 && tabuleiro.getCelula(l, coluna)?.tipo == tipo) { countV++; l-- }
        l = linha + 1
        while (l <= 7 && tabuleiro.getCelula(l, coluna)?.tipo == tipo) { countV++; l++ }
        maxMatch = max(maxMatch, countV)

        return maxMatch
    }

    /**
     * Algoritmo IA Avançada: avalia jogadas com lookahead e pontuação multi-critério.
     */
    private fun calcularJogadaIAAvancada(
        tabuleiro: Tabuleiro,
        jogadas: List<Jogada>,
        objetivos: Map<String, Int>
    ): Jogada {
        var melhorJogada = jogadas.first()
        var melhorPontuacao = Float.MIN_VALUE

        for (jogada in jogadas) {
            var pontuacao = avaliarJogada(tabuleiro, jogada, objetivos)

            // Lookahead: simular resultado e avaliar estado futuro
            if (PROFUNDIDADE_LOOKAHEAD > 0) {
                val tabuleiroFuturo = simularTroca(
                    tabuleiro,
                    jogada.linhaOrigem, jogada.colunaOrigem,
                    jogada.linhaDestino, jogada.colunaDestino
                )
                val pontFuturo = avaliarEstadoTabuleiro(tabuleiroFuturo, objetivos)
                pontuacao += pontFuturo * 0.4f
            }

            if (pontuacao > melhorPontuacao) {
                melhorPontuacao = pontuacao
                melhorJogada = jogada.copy(pontuacaoEstimada = pontuacao)
            }
        }

        Timber.d("Melhor jogada IA: (${melhorJogada.linhaOrigem},${melhorJogada.colunaOrigem}) → " +
                "(${melhorJogada.linhaDestino},${melhorJogada.colunaDestino}) - Pontuação: $melhorPontuacao")
        return melhorJogada
    }

    /**
     * Estratégia agressiva: prioriza criação de combos e peças especiais.
     */
    private fun calcularJogadaAgressiva(
        tabuleiro: Tabuleiro,
        jogadas: List<Jogada>
    ): Jogada {
        return jogadas.maxByOrNull { jogada ->
            val tabSimulado = simularTroca(
                tabuleiro,
                jogada.linhaOrigem, jogada.colunaOrigem,
                jogada.linhaDestino, jogada.colunaDestino
            )
            val matchOrigem = contarMatchs(tabSimulado, jogada.linhaOrigem, jogada.colunaOrigem)
            val matchDestino = contarMatchs(tabSimulado, jogada.linhaDestino, jogada.colunaDestino)
            val maxMatch = max(matchOrigem, matchDestino)

            // Bônus extra para matches de 4+ (criam peças especiais)
            maxMatch.toFloat() + if (maxMatch >= 4) BONUS_ESPECIAL else 0f
        } ?: jogadas.first()
    }

    /**
     * Estratégia conservadora: prioriza progressão de objetivos e eficiência.
     */
    private fun calcularJogadaConservadora(
        tabuleiro: Tabuleiro,
        jogadas: List<Jogada>
    ): Jogada {
        return jogadas.maxByOrNull { jogada ->
            val tabSimulado = simularTroca(
                tabuleiro,
                jogada.linhaOrigem, jogada.colunaOrigem,
                jogada.linhaDestino, jogada.colunaDestino
            )

            // Calcular eficiência: peças eliminadas por movimento
            val pecasEliminadas = calcularPecasEliminadas(tabSimulado, jogada)
            val progressoObjetivo = estimarProgressoObjetivo(tabuleiro, tabSimulado)

            pecasEliminadas * 0.5f + progressoObjetivo * 2f
        } ?: jogadas.first()
    }

    /**
     * Estratégia de velocidade: escolhe a primeira jogada válida com maior match.
     */
    private fun calcularJogadaVelocidade(jogadas: List<Jogada>): Jogada {
        return jogadas.maxByOrNull { it.pontuacaoEstimada } ?: jogadas.first()
    }

    private fun avaliarJogada(
        tabuleiro: Tabuleiro,
        jogada: Jogada,
        objetivos: Map<String, Int>
    ): Float {
        val tabSimulado = simularTroca(
            tabuleiro,
            jogada.linhaOrigem, jogada.colunaOrigem,
            jogada.linhaDestino, jogada.colunaDestino
        )

        var pontuacao = 0f

        // Tamanho do match
        val matchOrigem = contarMatchs(tabSimulado, jogada.linhaOrigem, jogada.colunaOrigem)
        val matchDestino = contarMatchs(tabSimulado, jogada.linhaDestino, jogada.colunaDestino)
        val maxMatch = max(matchOrigem, matchDestino)
        pontuacao += maxMatch * 15f

        // Bônus para peças especiais criadas
        if (maxMatch >= 4) pontuacao += BONUS_ESPECIAL
        if (maxMatch >= 5) pontuacao += BONUS_ESPECIAL * 2

        // Bônus por posição central (melhor para combos)
        val linhaMedia = (jogada.linhaOrigem + jogada.linhaDestino) / 2f
        val colunaMedia = (jogada.colunaOrigem + jogada.colunaDestino) / 2f
        val distanciaCentro = Math.abs(linhaMedia - 3.5f) + Math.abs(colunaMedia - 3.5f)
        pontuacao += BONUS_POSICAO_CENTRAL * (1f - distanciaCentro / 7f)

        // Peças especiais envolvidas
        val celulaOrigem = tabuleiro.getCelula(jogada.linhaOrigem, jogada.colunaOrigem)
        val celulaDestino = tabuleiro.getCelula(jogada.linhaDestino, jogada.colunaDestino)
        if (celulaOrigem?.especial == true || celulaDestino?.especial == true) {
            pontuacao += BONUS_ESPECIAL
        }

        // Peças especiais combinando
        if (celulaOrigem?.especial == true && celulaDestino?.especial == true) {
            pontuacao += BONUS_ESPECIAL * 3
        }

        // Bônus por progresso de objetivo
        pontuacao += estimarProgressoObjetivo(tabuleiro, tabSimulado) * BONUS_OBJETIVO

        return pontuacao
    }

    private fun avaliarEstadoTabuleiro(
        tabuleiro: Tabuleiro,
        objetivos: Map<String, Int>
    ): Float {
        var pontuacao = 0f

        // Contar potenciais matches disponíveis
        val jogadasDisponiveis = gerarTodasJogadas(tabuleiro)
        pontuacao += jogadasDisponiveis.size * 2f

        // Contar peças especiais no tabuleiro
        for (linha in 0..7) {
            for (coluna in 0..7) {
                val celula = tabuleiro.getCelula(linha, coluna) ?: continue
                if (celula.especial) pontuacao += BONUS_ESPECIAL * 0.3f
            }
        }

        // Avaliar distribuição de cores (diversidade = mais opções)
        val contadorCores = mutableMapOf<TipoPeca, Int>()
        for (linha in 0..7) {
            for (coluna in 0..7) {
                val tipo = tabuleiro.getCelula(linha, coluna)?.tipo ?: continue
                if (tipo != TipoPeca.VAZIO && tipo != TipoPeca.OBSTACULO) {
                    contadorCores[tipo] = (contadorCores[tipo] ?: 0) + 1
                }
            }
        }
        pontuacao -= contadorCores.values.maxOrNull()?.toFloat()?.times(0.5f) ?: 0f

        return pontuacao
    }

    private fun calcularPecasEliminadas(tabuleiro: Tabuleiro, jogada: Jogada): Int {
        val matchOrigem = contarMatchs(tabuleiro, jogada.linhaOrigem, jogada.colunaOrigem)
        val matchDestino = contarMatchs(tabuleiro, jogada.linhaDestino, jogada.colunaDestino)
        return max(matchOrigem, matchDestino)
    }

    private fun estimarProgressoObjetivo(
        tabuleiroAntes: Tabuleiro,
        tabuleiroDepois: Tabuleiro
    ): Float {
        var diferenca = 0f

        for (linha in 0..7) {
            for (coluna in 0..7) {
                val antes = tabuleiroAntes.getCelula(linha, coluna) ?: continue
                val depois = tabuleiroDepois.getCelula(linha, coluna) ?: continue

                if (antes.cobertaGelo && !depois.cobertaGelo) diferenca += 1f
                if (antes.cobertaCaixa > 0 && depois.cobertaCaixa < antes.cobertaCaixa) diferenca += 0.5f
            }
        }

        return diferenca / 10f
    }

    /**
     * Verifica se existe alguma jogada com peças especiais disponível.
     */
    fun temJogadaComEspecial(tabuleiro: Tabuleiro): Boolean {
        for (linha in 0..7) {
            for (coluna in 0..7) {
                val celula = tabuleiro.getCelula(linha, coluna) ?: continue
                if (celula.especial) return true
            }
        }
        return false
    }

    /**
     * Encontra a melhor combinação de peças especiais adjacentes.
     */
    fun encontrarCombinacaoEspecial(tabuleiro: Tabuleiro): Jogada? {
        for (linha in 0..7) {
            for (coluna in 0..7) {
                val celula = tabuleiro.getCelula(linha, coluna) ?: continue
                if (!celula.especial) continue

                // Verificar vizinhos
                val vizinhos = listOf(
                    Pair(linha, coluna + 1),
                    Pair(linha + 1, coluna)
                )

                for ((vl, vc) in vizinhos) {
                    val vizinho = tabuleiro.getCelula(vl, vc) ?: continue
                    if (vizinho.especial) {
                        return Jogada(
                            linha, coluna, vl, vc,
                            pontuacaoEstimada = 999f,
                            criaEspecial = true
                        )
                    }
                }
            }
        }
        return null
    }

    /**
     * Adiciona variação humana na escolha da jogada (modo anti-detecção).
     */
    fun aplicarVariacaoHumana(
        jogadas: List<AnaliseJogada>,
        intensidade: Float = 0.1f
    ): AnaliseJogada {
        if (jogadas.isEmpty()) throw IllegalArgumentException("Lista de jogadas vazia")

        // Na maior parte do tempo escolhe a melhor jogada
        if (Random.nextFloat() > intensidade) {
            return jogadas.maxByOrNull { it.pontuacaoFinal } ?: jogadas.first()
        }

        // Às vezes escolhe a segunda ou terceira melhor (comportamento humano)
        val ordenadas = jogadas.sortedByDescending { it.pontuacaoFinal }
        val indice = min(Random.nextInt(3), ordenadas.size - 1)
        return ordenadas[indice]
    }
}
