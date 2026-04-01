package com.royalmatchbot.ui

import android.os.Bundle
import android.view.MenuItem
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.royalmatchbot.databinding.ActivityLogsBinding
import com.royalmatchbot.model.NivelLog
import com.royalmatchbot.model.RegistroLog
import com.royalmatchbot.util.BotLogger
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

/**
 * Activity de Logs em tempo real.
 * Exibe todos os registros do bot com filtragem por nível.
 */
class LogsActivity : AppCompatActivity() {

    private lateinit var binding: ActivityLogsBinding
    private val adaptador = AdaptadorLogs()
    private val logger = BotLogger.instancia
    private var filtroNivel: NivelLog? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityLogsBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = "📋 Logs em Tempo Real"
        }

        configurarRecyclerView()
        configurarFiltros()
        carregarLogsExistentes()
        observarNovosLogs()
    }

    private fun configurarRecyclerView() {
        binding.recyclerLogs.apply {
            adapter = adaptador
            layoutManager = LinearLayoutManager(this@LogsActivity).apply {
                stackFromEnd = true
            }
        }
    }

    private fun configurarFiltros() {
        binding.chipTodos.setOnClickListener { aplicarFiltro(null) }
        binding.chipInfo.setOnClickListener { aplicarFiltro(NivelLog.INFO) }
        binding.chipAviso.setOnClickListener { aplicarFiltro(NivelLog.AVISO) }
        binding.chipErro.setOnClickListener { aplicarFiltro(NivelLog.ERRO) }
        binding.chipDebug.setOnClickListener { aplicarFiltro(NivelLog.DEBUG) }

        binding.btnLimparLogs.setOnClickListener {
            adaptador.limpar()
            logger.limpar()
        }

        binding.btnScrollFim.setOnClickListener {
            binding.recyclerLogs.scrollToPosition(adaptador.itemCount - 1)
        }
    }

    private fun carregarLogsExistentes() {
        val logs = logger.obterLogsRecentes(200)
        adaptador.adicionarTodos(logs)
        if (logs.isNotEmpty()) {
            binding.recyclerLogs.scrollToPosition(logs.size - 1)
        }
        binding.tvContadorLogs.text = "${adaptador.itemCount} registros"
    }

    private fun observarNovosLogs() {
        lifecycleScope.launch {
            logger.fluxoLogs.collectLatest { registro ->
                val deveExibir = filtroNivel == null ||
                    NivelLog.entries.indexOf(NivelLog.valueOf(registro.nivel)) >=
                    NivelLog.entries.indexOf(filtroNivel!!)

                if (deveExibir) {
                    adaptador.adicionar(registro)
                    binding.recyclerLogs.scrollToPosition(adaptador.itemCount - 1)
                    binding.tvContadorLogs.text = "${adaptador.itemCount} registros"
                }
            }
        }
    }

    private fun aplicarFiltro(nivel: NivelLog?) {
        filtroNivel = nivel
        adaptador.limpar()
        val todos = logger.obterLogsRecentes(500)
        val filtrados = if (nivel == null) todos
        else todos.filter {
            NivelLog.entries.indexOf(NivelLog.valueOf(it.nivel)) >=
                NivelLog.entries.indexOf(nivel)
        }
        adaptador.adicionarTodos(filtrados)
        binding.tvContadorLogs.text = "${adaptador.itemCount} registros"
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) { finish(); return true }
        return super.onOptionsItemSelected(item)
    }
}

/**
 * Adapter do RecyclerView de logs.
 */
class AdaptadorLogs : androidx.recyclerview.widget.RecyclerView.Adapter<AdaptadorLogs.ViewHolder>() {

    private val items = mutableListOf<RegistroLog>()

    inner class ViewHolder(val binding: com.royalmatchbot.databinding.ItemLogBinding) :
        androidx.recyclerview.widget.RecyclerView.ViewHolder(binding.root)

    override fun onCreateViewHolder(parent: android.view.ViewGroup, viewType: Int): ViewHolder {
        val b = com.royalmatchbot.databinding.ItemLogBinding.inflate(
            android.view.LayoutInflater.from(parent.context), parent, false
        )
        return ViewHolder(b)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val log = items[position]
        holder.binding.apply {
            tvLogTimestamp.text = log.timestampFormatado
            tvLogNivel.text = "${log.iconeNivel} ${log.nivel}"
            tvLogTag.text = "[${log.tag}]"
            tvLogMensagem.text = log.mensagem
            tvLogFase.text = if (log.fase > 0) "Fase ${log.fase}" else ""

            val corFundo = when (log.nivel) {
                "ERRO" -> root.context.getColor(com.royalmatchbot.R.color.log_erro)
                "AVISO" -> root.context.getColor(com.royalmatchbot.R.color.log_aviso)
                "DEBUG" -> root.context.getColor(com.royalmatchbot.R.color.log_debug)
                else -> root.context.getColor(com.royalmatchbot.R.color.log_info)
            }
            root.setBackgroundColor(corFundo)
        }
    }

    override fun getItemCount() = items.size

    fun adicionar(log: RegistroLog) {
        items.add(log)
        notifyItemInserted(items.size - 1)
    }

    fun adicionarTodos(logs: List<RegistroLog>) {
        items.addAll(logs)
        notifyDataSetChanged()
    }

    fun limpar() {
        items.clear()
        notifyDataSetChanged()
    }
}
