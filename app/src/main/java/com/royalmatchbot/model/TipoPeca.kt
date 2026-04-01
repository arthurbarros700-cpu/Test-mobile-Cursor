package com.royalmatchbot.model

/**
 * Representa os tipos de peças presentes no jogo Royal Match.
 * Cada tipo tem cor dominante, prioridade estratégica e bônus de pontuação.
 */
enum class TipoPeca(
    val codigo: Int,
    val nome: String,
    val corHex: String,
    val prioridade: Int,
    val ehEspecial: Boolean = false
) {
    // Peças básicas
    VERMELHO(0, "Vermelho", "#E53935", 1),
    AZUL(1, "Azul", "#1E88E5", 1),
    VERDE(2, "Verde", "#43A047", 1),
    AMARELO(3, "Amarelo", "#FDD835", 1),
    ROXO(4, "Roxo", "#8E24AA", 1),
    ROSA(5, "Rosa", "#E91E63", 1),

    // Peças especiais (booster)
    FOGUETE(6, "Foguete", "#FF6F00", 5, true),
    BOMBA(7, "Bomba", "#BF360C", 8, true),
    PROPELLER(8, "Propeller", "#00838F", 7, true),
    ARCO_IRIS(9, "Arco-Íris", "#FFFFFF", 10, true),
    LUZ(10, "Luz TNT", "#FFD600", 9, true),

    // Obstáculos
    CAIXA(11, "Caixa", "#795548", 3),
    CORRENTE(12, "Corrente", "#9E9E9E", 4),
    GELATINA(13, "Gelatina", "#F3E5F5", 2),
    TELHA(14, "Telha", "#A1887F", 3),
    AREIA(15, "Areia", "#FFD54F", 2),
    BALAO(16, "Balão", "#EF9A9A", 6),

    // Especial
    VAZIO(99, "Vazio", "#000000", 0),
    DESCONHECIDO(100, "Desconhecido", "#607D8B", 0);

    companion object {
        fun porCodigo(codigo: Int): TipoPeca =
            entries.firstOrNull { it.codigo == codigo } ?: DESCONHECIDO

        fun pecasBasicas(): List<TipoPeca> =
            listOf(VERMELHO, AZUL, VERDE, AMARELO, ROXO, ROSA)

        fun pecasEspeciais(): List<TipoPeca> =
            listOf(FOGUETE, BOMBA, PROPELLER, ARCO_IRIS, LUZ)

        fun obstaculos(): List<TipoPeca> =
            listOf(CAIXA, CORRENTE, GELATINA, TELHA, AREIA, BALAO)
    }
}
