package com.royalmatchbot.model

import androidx.room.Entity
import androidx.room.PrimaryKey

/**
 * Registro de log persistido no banco de dados local.
 * Permite ao usuário revisar o histórico de ações do bot.
 */
@Entity(tableName = "logs")
data class RegistroLog(
    @PrimaryKey(autoGenerate = true)
    val id: Long = 0,
    val timestamp: Long = System.currentTimeMillis(),
    val nivel: String,
    val tag: String,
    val mensagem: String,
    val fase: Int = 0,
    val jogadaNumero: Long = 0
) {
    val timestampFormatado: String get() {
        val sdf = java.text.SimpleDateFormat("HH:mm:ss.SSS", java.util.Locale("pt", "BR"))
        return sdf.format(java.util.Date(timestamp))
    }

    val iconeNivel: String get() = when (nivel) {
        "VERBOSE" -> "🔵"
        "DEBUG" -> "⚪"
        "INFO" -> "🟢"
        "AVISO" -> "🟡"
        "ERRO" -> "🔴"
        else -> "⚫"
    }
}
