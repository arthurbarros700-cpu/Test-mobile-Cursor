package com.royalmatchbot.ui

import android.content.Intent
import android.graphics.Color
import android.os.Bundle
import android.view.MenuItem
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.FileProvider
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.royalmatchbot.R
import com.royalmatchbot.databinding.ActivityLogsBinding
import com.royalmatchbot.models.EntradaLog
import com.royalmatchbot.models.TipoLog
import com.royalmatchbot.utils.GerenciadorLogs
import java.io.File
import java.io.FileWriter

/**
 * Tela de visualização dos logs de atividade do bot.
 */
class LogsActivity : AppCompatActivity() {

    private lateinit var binding: ActivityLogsBinding
    private lateinit var gerLogs: GerenciadorLogs
    private lateinit var adapter: LogsAdapter

    private var filtroAtual: TipoLog? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLogsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.titulo_logs)
        }

        gerLogs = GerenciadorLogs(this)
        configurarRecycler()
        configurarFiltros()
        configurarBotoes()
        carregarLogs()

        // Registrar para receber novos logs em tempo real
        gerLogs.registrarOuvinteLog { entrada ->
            runOnUiThread { adicionarLog(entrada) }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        gerLogs.removerOuvinteLog { }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
            return true
        }
        return super.onOptionsItemSelected(item)
    }

    private fun configurarRecycler() {
        adapter = LogsAdapter(mutableListOf())
        binding.recyclerLogs.layoutManager = LinearLayoutManager(this)
        binding.recyclerLogs.adapter = adapter
    }

    private fun configurarFiltros() {
        binding.chipTodos.setOnClickListener {
            filtroAtual = null
            carregarLogs()
        }

        binding.chipAcoes.setOnClickListener {
            filtroAtual = TipoLog.ACAO
            carregarLogs()
        }

        binding.chipErros.setOnClickListener {
            filtroAtual = TipoLog.ERRO
            carregarLogs()
        }

        binding.chipFases.setOnClickListener {
            filtroAtual = TipoLog.FASE
            carregarLogs()
        }
    }

    private fun configurarBotoes() {
        binding.btnLimparLogs.setOnClickListener {
            gerLogs.limparLogs()
            adapter.limpar()
            Toast.makeText(this, "Logs limpos!", Toast.LENGTH_SHORT).show()
        }

        binding.btnExportarLogs.setOnClickListener {
            exportarLogs()
        }
    }

    private fun carregarLogs() {
        val logs = if (filtroAtual != null) {
            gerLogs.obterLogsFiltrados(filtroAtual!!)
        } else {
            gerLogs.obterLogs()
        }
        adapter.atualizarLogs(logs.toMutableList())
    }

    private fun adicionarLog(entrada: EntradaLog) {
        if (filtroAtual == null || filtroAtual == entrada.tipo) {
            adapter.adicionarLog(entrada)
            binding.recyclerLogs.scrollToPosition(0)
        }
    }

    private fun exportarLogs() {
        try {
            val conteudo = gerLogs.exportarLogs()
            val arquivo = File(cacheDir, "royalmatchbot_logs.txt")
            FileWriter(arquivo).use { it.write(conteudo) }

            val uri = FileProvider.getUriForFile(
                this,
                "$packageName.fileprovider",
                arquivo
            )

            val intent = Intent(Intent.ACTION_SEND).apply {
                type = "text/plain"
                putExtra(Intent.EXTRA_STREAM, uri)
                putExtra(Intent.EXTRA_SUBJECT, "Royal Match Bot - Logs")
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            }
            startActivity(Intent.createChooser(intent, "Exportar Logs"))
        } catch (e: Exception) {
            Toast.makeText(this, "Erro ao exportar: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }
}

/**
 * Adapter para a lista de logs.
 */
class LogsAdapter(private val logs: MutableList<EntradaLog>) :
    RecyclerView.Adapter<LogsAdapter.ViewHolder>() {

    class ViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val txtTipo: TextView = itemView.findViewById(R.id.txtTipoLog)
        val txtHora: TextView = itemView.findViewById(R.id.txtHoraLog)
        val txtCategoria: TextView = itemView.findViewById(R.id.txtCategoriaLog)
        val txtMensagem: TextView = itemView.findViewById(R.id.txtMensagemLog)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = android.view.LayoutInflater.from(parent.context)
            .inflate(R.layout.item_log, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val log = logs[position]

        holder.txtHora.text = log.horaFormatada
        holder.txtMensagem.text = log.mensagem

        val (corTipo, textCategoria) = when (log.tipo) {
            TipoLog.ACAO -> Pair("#40C4FF", "AÇÃO")
            TipoLog.FASE -> Pair("#00E676", "FASE")
            TipoLog.ERRO -> Pair("#FF5252", "ERRO")
            TipoLog.AVISO -> Pair("#FFD600", "AVISO")
            TipoLog.BOOSTER -> Pair("#FFD700", "BOOST")
            TipoLog.SISTEMA -> Pair("#7C4DFF", "SISTEMA")
            TipoLog.INFO -> Pair("#B0BEC5", "INFO")
        }

        holder.txtTipo.setBackgroundColor(Color.parseColor(corTipo))
        holder.txtCategoria.text = textCategoria

        try {
            (holder.txtCategoria.background as? android.graphics.drawable.GradientDrawable)
                ?.setColor(Color.parseColor(corTipo))
        } catch (e: Exception) {
            holder.txtCategoria.setBackgroundColor(Color.parseColor(corTipo))
        }
    }

    override fun getItemCount() = logs.size

    fun atualizarLogs(novasLogs: MutableList<EntradaLog>) {
        logs.clear()
        logs.addAll(novasLogs)
        notifyDataSetChanged()
    }

    fun adicionarLog(entrada: EntradaLog) {
        logs.add(0, entrada)
        notifyItemInserted(0)
    }

    fun limpar() {
        logs.clear()
        notifyDataSetChanged()
    }
}
