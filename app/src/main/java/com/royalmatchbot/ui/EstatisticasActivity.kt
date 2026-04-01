package com.royalmatchbot.ui

import android.graphics.Color
import android.os.Bundle
import android.view.MenuItem
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.royalmatchbot.databinding.ActivityEstatisticasBinding
import com.royalmatchbot.model.EstatisticasBot
import com.royalmatchbot.service.BotPrincipalServico
import com.royalmatchbot.util.GerenciadorPreferencias
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

/**
 * Activity de Estatísticas detalhadas do bot.
 * Exibe métricas de desempenho, gráficos e histórico.
 */
class EstatisticasActivity : AppCompatActivity() {

    private lateinit var binding: ActivityEstatisticasBinding
    private val prefs by lazy { GerenciadorPreferencias(this) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityEstatisticasBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = "📊 Estatísticas"
        }

        observarEstatisticas()
        carregarHistorico()
        configurarBotoes()
    }

    private fun observarEstatisticas() {
        lifecycleScope.launch {
            BotPrincipalServico.estatisticas.collectLatest { stats ->
                atualizarUI(stats)
            }
        }
    }

    private fun atualizarUI(stats: EstatisticasBot) {
        binding.apply {
            // Sessão atual
            tvSessaoFases.text = stats.fasesCompletas.toString()
            tvSessaoJogadas.text = stats.jogadasRealizadas.toString()
            tvSessaoCombos.text = stats.combosRealizados.toString()
            tvSessaoBoosters.text = stats.jogadasComBooster.toString()
            tvSessaoTempo.text = stats.tempoSessaoFormatado
            tvSessaoTaxa.text = "${"%.1f".format(stats.taxaSucessoFases)}%"
            tvSessaoMediaJogadas.text = "${"%.1f".format(stats.mediaJogadasPorFase)} jogadas/fase"
            tvSessaoCapturas.text = stats.capturasTela.toString()
            tvSessaoErros.text = stats.errosRecuperados.toString()

            // Barra de progresso de taxa de sucesso
            progressTaxaSucesso.progress = stats.taxaSucessoFases.toInt()
            val corTaxa = when {
                stats.taxaSucessoFases >= 80 -> Color.parseColor("#4CAF50")
                stats.taxaSucessoFases >= 50 -> Color.parseColor("#FF9800")
                else -> Color.parseColor("#F44336")
            }
            progressTaxaSucesso.progressTintList =
                android.content.res.ColorStateList.valueOf(corTaxa)
        }
    }

    private fun carregarHistorico() {
        val historico = prefs.carregarEstatisticasHistoricas()

        binding.apply {
            tvHistoricoFases.text = historico["total_fases"].toString()
            tvHistoricoJogadas.text = historico["total_jogadas"].toString()
            tvHistoricoPontuacao.text = historico["pontuacao_total"].toString()

            val tempoTotalMs = historico["tempo_total_ms"] as? Long ?: 0L
            val horas = tempoTotalMs / 3_600_000
            val minutos = (tempoTotalMs % 3_600_000) / 60_000
            tvHistoricoTempo.text = "${horas}h ${minutos}min"
        }
    }

    private fun configurarBotoes() {
        binding.btnLimparHistorico.setOnClickListener {
            androidx.appcompat.app.AlertDialog.Builder(this)
                .setTitle("Limpar Histórico")
                .setMessage("Tem certeza que deseja apagar todo o histórico de estatísticas?")
                .setPositiveButton("Limpar") { _, _ ->
                    prefs.limparHistorico()
                    carregarHistorico()
                    com.google.android.material.snackbar.Snackbar.make(
                        binding.root, "🗑️ Histórico apagado", com.google.android.material.snackbar.Snackbar.LENGTH_SHORT
                    ).show()
                }
                .setNegativeButton("Cancelar", null)
                .show()
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) { finish(); return true }
        return super.onOptionsItemSelected(item)
    }
}
