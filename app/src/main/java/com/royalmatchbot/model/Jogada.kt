package com.royalmatchbot.model

import android.os.Parcelable
import kotlinx.parcelize.Parcelize

/**
 * Representa uma jogada calculada pelo motor estratégico do bot.
 *
 * @param celulaOrigem Célula que será arrastada
 * @param celulaDestino Célula de destino do arrasto
 * @param pontuacaoEstimada Pontuação prevista para esta jogada
 * @param tipo Classificação da jogada
 * @param descricao Descrição legível pelo humano
 */
@Parcelize
data class Jogada(
    val celulaOrigem: Celula,
    val celulaDestino: Celula,
    val pontuacaoEstimada: Int = 0,
    val tipo: TipoJogada = TipoJogada.MATCH_3,
    val descricao: String = "",
    val prioridade: Int = 0,
    val criaBooster: Boolean = false,
    val tipoBoosterCriado: TipoPeca? = null,
    val timestampCalculado: Long = System.currentTimeMillis()
) : Parcelable {

    val direcao: DirecaoArrasto get() {
        val dl = celulaDestino.linha - celulaOrigem.linha
        val dc = celulaDestino.coluna - celulaOrigem.coluna
        return when {
            dl < 0 -> DirecaoArrasto.CIMA
            dl > 0 -> DirecaoArrasto.BAIXO
            dc < 0 -> DirecaoArrasto.ESQUERDA
            else -> DirecaoArrasto.DIREITA
        }
    }

    fun descricaoCompleta(): String = buildString {
        append("${tipo.nome}: ")
        append("${celulaOrigem.posicaoTexto()} → ${celulaDestino.posicaoTexto()} ")
        append("[${direcao.simbolo}] ")
        append("Pontos: $pontuacaoEstimada")
        if (criaBooster) append(" ✨ Cria ${tipoBoosterCriado?.nome}")
    }

    override fun toString(): String = descricaoCompleta()
}

@Parcelize
enum class TipoJogada(val nome: String, val multiplicadorPontos: Float) : Parcelable {
    MATCH_3("Combinação-3", 1.0f),
    MATCH_4("Combinação-4", 1.5f),
    MATCH_5("Combinação-5 (Foguete)", 2.0f),
    MATCH_L("Combinação em L (Bomba)", 2.5f),
    MATCH_T("Combinação em T (Bomba)", 2.5f),
    MATCH_6_MAIS("Combinação-6+ (Arco-Íris)", 4.0f),
    ATIVAR_BOOSTER("Ativar Booster", 3.0f),
    COMBO_BOOSTER("Combo de Boosters", 6.0f),
    DESOBSTRUIR("Desobstruir Caminho", 1.2f),
    ESTRATEGICO("Movimento Estratégico", 1.1f)
}

@Parcelize
enum class DirecaoArrasto(val simbolo: String) : Parcelable {
    CIMA("↑"),
    BAIXO("↓"),
    ESQUERDA("←"),
    DIREITA("→")
}
