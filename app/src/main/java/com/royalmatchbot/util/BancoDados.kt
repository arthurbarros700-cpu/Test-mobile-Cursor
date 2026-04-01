package com.royalmatchbot.util

import android.content.Context
import androidx.room.*
import com.royalmatchbot.model.RegistroLog

@Dao
interface LogDao {
    @Insert
    suspend fun inserir(log: RegistroLog): Long

    @Query("SELECT * FROM logs ORDER BY timestamp DESC LIMIT :limite")
    suspend fun obterRecentes(limite: Int = 500): List<RegistroLog>

    @Query("SELECT * FROM logs WHERE nivel = :nivel ORDER BY timestamp DESC LIMIT :limite")
    suspend fun obterPorNivel(nivel: String, limite: Int = 200): List<RegistroLog>

    @Query("DELETE FROM logs WHERE timestamp < :antes")
    suspend fun limparAntigos(antes: Long)

    @Query("DELETE FROM logs")
    suspend fun limparTudo()

    @Query("SELECT COUNT(*) FROM logs")
    suspend fun contar(): Int
}

@Database(entities = [RegistroLog::class], version = 1, exportSchema = false)
abstract class BancoDadosBot : RoomDatabase() {
    abstract fun logDao(): LogDao

    companion object {
        @Volatile
        private var INSTANCIA: BancoDadosBot? = null

        fun obter(contexto: Context): BancoDadosBot =
            INSTANCIA ?: synchronized(this) {
                INSTANCIA ?: Room.databaseBuilder(
                    contexto.applicationContext,
                    BancoDadosBot::class.java,
                    "bot_logs.db"
                ).fallbackToDestructiveMigration()
                    .build()
                    .also { INSTANCIA = it }
            }
    }
}
