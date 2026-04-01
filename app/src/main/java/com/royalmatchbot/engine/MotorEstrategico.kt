package com.royalmatchbot.engine

import com.royalmatchbot.model.*
import com.royalmatchbot.util.BotLogger

/**
 * Motor Estratégico — seleciona a melhor jogada baseado na estratégia configurada.
 *
 * Considera:
 * - Pontuação imediata do match
 * - Boosters que serão criados
 * - Proximidade de obstáculos e objetivos
 * - Potencial de combos em cadeia
 * - Nível de urgência de movimentos restantes
 */
class MotorEstrategico {

    companion object {
        private const val TAG = "MotorEstrategico"
    }

    private val logger = BotLogger.instancia

    /**
     * Seleciona a melhor jogada da lista conforme a estratégia.
     */
    fun selecionarMelhorJogada(
        jogadas: List<Jogada>,
        tabuleiro: Tabuleiro,
        estrategia: EstrategiaJogo
    ): Jogada? {
        if (jogadas.isEmpty()) {
            logger?.aviso(TAG, "Nenhuma jogada disponível para análise")
            return null
        }

        val jogadasPontuadas = jogadas.map { jogada ->
            val pontuacaoFinal = calcularPontuacaoEstrategica(
                jogada, tabuleiro, estrategia
            )
            jogada.copy(pontuacaoEstimada = pontuacaoFinal)
        }

        val melhor = jogadasPontuadas.maxByOrNull { it.pontuacaoEstimada }
        logger?.debug(
            TAG,
            "Melhor jogada [${estrategia.nome}]: ${melhor?.descricaoCompleta()}"
        )
        return melhor
    }

    private fun calcularPontuacaoEstrategica(
        jogada: Jogada,
        tabuleiro: Tabuleiro,
        estrategia: EstrategiaJogo
    ): Int {
        var pontos = jogada.pontuacaoEstimada

        // Bônus por criar booster
        if (jogada.criaBooster) {
            val bonusBooster = when (jogada.tipoBoosterCriado) {
                TipoPeca.ARCO_IRIS -> 800
                TipoPeca.BOMBA    -> 600
                TipoPeca.FOGUETE  -> 400
                TipoPeca.LUZ      -> 700
                else -> 200
            }
            pontos += bonusBooster
        }

        // Bônus por combo de boosters
        if (jogada.tipo == TipoJogada.COMBO_BOOSTER) {
            pontos += 1500
        }

        // Ajustes conforme estratégia
        pontos = when (estrategia) {
            EstrategiaJogo.AGRESSIVA -> aplicarEstrategiaAgressiva(pontos, jogada, tabuleiro)
            EstrategiaJogo.CONSERVADORA -> aplicarEstrategiaConservadora(pontos, jogada, tabuleiro)
            EstrategiaJogo.BOOSTER_FIRST -> aplicarEstrategiaBoosterFirst(pontos, jogada, tabuleiro)
            EstrategiaJogo.OBJETIVO -> aplicarEstrategiaObjetivo(pontos, jogada, tabuleiro)
            else -> pontos // BALANCEADA: usa pontuação sem ajustes extras
        }

        // Urgência: poucos movimentos restantes → priorizar combos grandes
        if (tabuleiro.movimentosRestantes <= 5) {
            val bonus = when (jogada.tipo) {
                TipoJogada.COMBO_BOOSTER, TipoJogada.MATCH_6_MAIS -> 500
                TipoJogada.MATCH_L, TipoJogada.MATCH_T, TipoJogada.MATCH_5 -> 300
                TipoJogada.ATIVAR_BOOSTER -> 400
                else -> 0
            }
            pontos += bonus
        }

        // Penalidade por mover células com baixa confiança
        val confiancaMinima = minOf(
            jogada.celulaOrigem.confianca,
            jogada.celulaDestino.confianca
        )
        if (confiancaMinima < 0.75f) {
            pontos = (pontos * confiancaMinima).toInt()
        }

        return pontos
    }

    private fun aplicarEstrategiaAgressiva(
        pontos: Int,
        jogada: Jogada,
        tabuleiro: Tabuleiro
    ): Int {
        var p = pontos
        // Prioriza matches grandes e boosters
        p += when (jogada.tipo) {
            TipoJogada.MATCH_6_MAIS -> 600
            TipoJogada.MATCH_L, TipoJogada.MATCH_T -> 400
            TipoJogada.MATCH_5 -> 300
            TipoJogada.COMBO_BOOSTER -> 800
            else -> 0
        }
        return p
    }

    private fun aplicarEstrategiaConservadora(
        pontos: Int,
        jogada: Jogada,
        tabuleiro: Tabuleiro
    ): Int {
        var p = pontos
        // Prioriza desobstrução e matches seguros
        val obstaculos = tabuleiro.todasAsCelulas().filter { it.ehObstaculo }
        if (obstaculos.isNotEmpty()) {
            val distMin = obstaculos.minOf { obs ->
                minOf(
                    jogada.celulaOrigem.distanciaPara(obs),
                    jogada.celulaDestino.distanciaPara(obs)
                )
            }
            p += (500 / (distMin + 1)).toInt()
        }
        // Penalizar combos arriscados com poucos movimentos restantes
        if (tabuleiro.movimentosRestantes > 10 && jogada.tipo == TipoJogada.ATIVAR_BOOSTER) {
            p -= 100
        }
        return p
    }

    private fun aplicarEstrategiaBoosterFirst(
        pontos: Int,
        jogada: Jogada,
        tabuleiro: Tabuleiro
    ): Int {
        var p = pontos
        // Tudo que cria ou usa booster tem prioridade máxima
        if (jogada.criaBooster) p += 1000
        if (jogada.tipo == TipoJogada.ATIVAR_BOOSTER) p += 800
        if (jogada.tipo == TipoJogada.COMBO_BOOSTER) p += 2000

        // Verificar se há boosters adjacentes que podem ser combinados
        val boosters = tabuleiro.todasAsCelulas().filter { it.ehPecaEspecial }
        val proximidadeBooster = boosters.minOfOrNull { b ->
            minOf(
                jogada.celulaOrigem.distanciaPara(b),
                jogada.celulaDestino.distanciaPara(b)
            )
        } ?: Float.MAX_VALUE
        if (proximidadeBooster <= 2f) p += 200
        return p
    }

    private fun aplicarEstrategiaObjetivo(
        pontos: Int,
        jogada: Jogada,
        tabuleiro: Tabuleiro
    ): Int {
        var p = pontos
        // Focar em limpar obstáculos do objetivo (área inferior geralmente)
        val celulasBaixas = tabuleiro.todasAsCelulas()
            .filter { it.linha >= tabuleiro.linhas / 2 && it.ehObstaculo }

        if (celulasBaixas.isNotEmpty()) {
            val distMin = celulasBaixas.minOf { obs ->
                minOf(
                    jogada.celulaOrigem.distanciaPara(obs),
                    jogada.celulaDestino.distanciaPara(obs)
                )
            }
            p += (300 / (distMin + 1)).toInt()
        }
        return p
    }

    /**
     * Analisa se vale a pena usar um booster neste momento.
     * Retorna a célula alvo do booster ou null se não vale.
     */
    fun avaliarUsoBooster(tabuleiro: Tabuleiro, estrategia: EstrategiaJogo): Celula? {
        if (estrategia == EstrategiaJogo.CONSERVADORA) return null

        val boosters = tabuleiro.todasAsCelulas().filter { it.ehPecaEspecial }
        if (boosters.isEmpty()) return null

        // Usar booster se há muitos obstáculos (>= 4) ou poucos movimentos (<= 3)
        val obstaculos = tabuleiro.todasAsCelulas().count { it.ehObstaculo }
        if (obstaculos >= 4 || tabuleiro.movimentosRestantes <= 3) {
            // Escolher o booster mais próximo dos obstáculos
            val obstaculosCelulas = tabuleiro.todasAsCelulas().filter { it.ehObstaculo }
            return if (obstaculosCelulas.isEmpty()) boosters.first()
            else boosters.minByOrNull { b ->
                obstaculosCelulas.minOf { obs -> b.distanciaPara(obs) }
            }
        }
        return null
    }

    /**
     * Avalia se o tabuleiro atual não tem movimentos válidos
     * e o bot deve esperar pela reorganização do jogo.
     */
    fun verificarTravamento(tabuleiro: Tabuleiro, jogadas: List<Jogada>): Boolean {
        if (jogadas.isEmpty()) {
            logger?.aviso(TAG, "Tabuleiro travado — nenhuma jogada válida encontrada")
            return true
        }
        return false
    }
}
