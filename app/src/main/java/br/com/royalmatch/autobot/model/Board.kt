package br.com.royalmatch.autobot.model

enum class TipoPeca {
    VERMELHO,
    AZUL,
    VERDE,
    AMARELO,
    ROXO,
    DESCONHECIDO
}

data class Board(
    val linhas: Int,
    val colunas: Int,
    val pecas: Array<Array<TipoPeca>>
) {
    fun em(linha: Int, coluna: Int): TipoPeca = pecas[linha][coluna]
}

data class Movimento(
    val origemLinha: Int,
    val origemColuna: Int,
    val destinoLinha: Int,
    val destinoColuna: Int,
    val pontuacao: Int,
    val confianca: Float
)
