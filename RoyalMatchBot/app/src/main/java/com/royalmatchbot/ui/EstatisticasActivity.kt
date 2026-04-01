package com.royalmatchbot.ui

import android.graphics.Color
import android.os.Bundle
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.github.mikephil.charting.components.XAxis
import com.github.mikephil.charting.data.*
import com.github.mikephil.charting.formatter.ValueFormatter
import com.royalmatchbot.R
import com.royalmatchbot.databinding.ActivityEstatisticasBinding
import com.royalmatchbot.models.DadosFase
import com.royalmatchbot.models.EstadoFase
import com.royalmatchbot.utils.GerenciadorEstatisticas

/**
 * Tela de estatísticas detalhadas do bot.
 */
class EstatisticasActivity : AppCompatActivity() {

    private lateinit var binding: ActivityEstatisticasBinding
    private lateinit var gerEstat: GerenciadorEstatisticas

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityEstatisticasBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.titulo_estatisticas)
        }

        gerEstat = GerenciadorEstatisticas(this)

        configurarGrafico()
        carregarEstatisticas()

        binding.btnLimparEstatisticas.setOnClickListener {
            AlertDialog.Builder(this)
                .setTitle("Limpar Estatísticas")
                .setMessage("Tem certeza que deseja apagar todas as estatísticas? Esta ação não pode ser desfeita.")
                .setPositiveButton("Limpar") { _, _ ->
                    gerEstat.limparEstatisticas()
                    carregarEstatisticas()
                }
                .setNegativeButton("Cancelar", null)
                .show()
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
            return true
        }
        return super.onOptionsItemSelected(item)
    }

    private fun carregarEstatisticas() {
        val stats = gerEstat.obterEstatisticas()

        binding.txtTotalFases.text = stats.totalFasesCompletas.toString()
        binding.txtTaxaGeralSucesso.text = "${stats.taxaSucesso.toInt()}%"
        binding.txtTempoTotalJogo.text = stats.tempoFormatado
        binding.txtMovimentosTotais.text = formatarNumero(stats.totalMovimentos)

        atualizarGrafico(stats.historicoFases)

        val adapter = HistoricoFaseAdapter(stats.historicoFases.take(50))
        binding.recyclerHistorico.layoutManager = LinearLayoutManager(this)
        binding.recyclerHistorico.adapter = adapter
    }

    private fun configurarGrafico() {
        binding.graficoDesempenho.apply {
            description.isEnabled = false
            legend.isEnabled = false
            setTouchEnabled(false)
            setBackgroundColor(Color.TRANSPARENT)
            setGridBackgroundColor(Color.TRANSPARENT)

            xAxis.apply {
                position = XAxis.XAxisPosition.BOTTOM
                textColor = Color.parseColor("#B0BEC5")
                gridColor = Color.parseColor("#3D3D7A")
                axisLineColor = Color.parseColor("#3D3D7A")
                setDrawLabels(false)
            }

            axisLeft.apply {
                textColor = Color.parseColor("#B0BEC5")
                gridColor = Color.parseColor("#3D3D7A")
                axisLineColor = Color.parseColor("#3D3D7A")
                axisMinimum = 0f
                axisMaximum = 1.2f
            }

            axisRight.isEnabled = false
        }
    }

    private fun atualizarGrafico(historico: List<DadosFase>) {
        if (historico.isEmpty()) return

        val entradas = historico.takeLast(20).mapIndexed { indice, fase ->
            Entry(indice.toFloat(), if (fase.estado == EstadoFase.CONCLUIDA) 1f else 0f)
        }

        val dataSet = LineDataSet(entradas, "Resultado").apply {
            color = Color.parseColor("#00E676")
            setCircleColor(Color.parseColor("#00E676"))
            circleRadius = 4f
            lineWidth = 2f
            setDrawValues(false)
            mode = LineDataSet.Mode.STEPPED
            fillColor = Color.parseColor("#00E676")
            setDrawFilled(true)
            fillAlpha = 50
        }

        binding.graficoDesempenho.data = LineData(dataSet)
        binding.graficoDesempenho.invalidate()
    }

    private fun formatarNumero(numero: Long): String {
        return when {
            numero >= 1_000_000 -> "${numero / 1_000_000}M"
            numero >= 1_000 -> "${numero / 1_000}K"
            else -> numero.toString()
        }
    }
}

/**
 * Adapter para a lista de histórico de fases.
 */
class HistoricoFaseAdapter(private val fases: List<DadosFase>) :
    RecyclerView.Adapter<HistoricoFaseAdapter.ViewHolder>() {

    class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val txtNumero: TextView = itemView.findViewById(R.id.txtNumeroFase)
        val txtResultado: TextView = itemView.findViewById(R.id.txtResultadoFase)
        val txtMovimentos: TextView = itemView.findViewById(R.id.txtMovimentosFase)
        val txtTempo: TextView = itemView.findViewById(R.id.txtTempoFase)
        val txtBoosters: TextView = itemView.findViewById(R.id.txtBoostersFase)
        val txtData: TextView = itemView.findViewById(R.id.txtDataFase)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = android.view.LayoutInflater.from(parent.context)
            .inflate(R.layout.item_historico_fase, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val fase = fases[position]

        holder.txtNumero.text = fase.numeroFase.toString()
        holder.txtResultado.text = if (fase.estado == EstadoFase.CONCLUIDA) "CONCLUÍDA" else "FALHOU"
        holder.txtResultado.setTextColor(
            if (fase.estado == EstadoFase.CONCLUIDA)
                Color.parseColor("#00E676") else Color.parseColor("#FF5252")
        )
        holder.txtMovimentos.text = "${fase.movimentosUsados} movimentos"
        holder.txtTempo.text = fase.duracaoFormatada
        holder.txtBoosters.text = "${fase.boostersUsados} boosters"

        val hora = java.text.SimpleDateFormat("HH:mm", java.util.Locale("pt", "BR"))
            .format(java.util.Date(fase.timestamp))
        holder.txtData.text = hora
    }

    override fun getItemCount() = fases.size
}
