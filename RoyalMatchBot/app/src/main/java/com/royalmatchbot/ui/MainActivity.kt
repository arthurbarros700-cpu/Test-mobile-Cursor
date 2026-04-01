package com.royalmatchbot.ui

import android.animation.ObjectAnimator
import android.animation.ValueAnimator
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.view.animation.AccelerateDecelerateInterpolator
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import com.royalmatchbot.R
import com.royalmatchbot.databinding.ActivityMainBinding
import com.royalmatchbot.models.*
import com.royalmatchbot.service.BotAcessibilidadeService
import com.royalmatchbot.service.BotEventos
import com.royalmatchbot.service.BotForegroundService
import com.royalmatchbot.utils.GerenciadorConfiguracoes
import com.royalmatchbot.utils.GerenciadorLogs
import com.royalmatchbot.utils.VerificadorPermissoes
import timber.log.Timber

/**
 * Tela principal do Royal Match Bot.
 * Painel de controle completo para gerenciar o bot.
 */
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var gerConfig: GerenciadorConfiguracoes
    private lateinit var gerLogs: GerenciadorLogs

    private val handler = Handler(Looper.getMainLooper())
    private var animacaoStatus: ObjectAnimator? = null
    private var runnableAtualizacaoTimer: Runnable? = null

    private val velocidades = listOf(
        "Muito Lenta (Mais Humano)",
        "Lenta",
        "Normal",
        "Rápida",
        "Turbo (Mais Rápida)"
    )

    private val estrategias = listOf(
        "IA Avançada (Recomendado)",
        "Agressiva - Prioriza Combos",
        "Conservadora - Segura",
        "Velocidade Máxima"
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        gerConfig = GerenciadorConfiguracoes(this)
        gerLogs = GerenciadorLogs(this)

        configurarSpinners()
        configurarBotoes()
        configurarEventos()
        carregarConfiguracoes()
        atualizarStatusPermissoes()
    }

    override fun onResume() {
        super.onResume()
        atualizarStatusPermissoes()
        atualizarStatusBot()
        iniciarTimerSessao()
    }

    override fun onPause() {
        super.onPause()
        pararTimerSessao()
    }

    override fun onDestroy() {
        super.onDestroy()
        BotEventos.removerOuvintes()
        animacaoStatus?.cancel()
    }

    private fun configurarSpinners() {
        val adapterVelocidade = ArrayAdapter(this, android.R.layout.simple_spinner_item, velocidades)
        adapterVelocidade.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        binding.spinnerVelocidade.adapter = adapterVelocidade

        val adapterEstrategia = ArrayAdapter(this, android.R.layout.simple_spinner_item, estrategias)
        adapterEstrategia.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item)
        binding.spinnerEstrategia.adapter = adapterEstrategia
    }

    private fun configurarBotoes() {
        binding.btnIniciar.setOnClickListener {
            if (!VerificadorPermissoes.isAcessibilidadeAtiva(this)) {
                mostrarDialogPermissao()
                return@setOnClickListener
            }
            iniciarBot()
        }

        binding.btnParar.setOnClickListener {
            pararBot()
        }

        binding.btnEstatisticas.setOnClickListener {
            startActivity(Intent(this, EstatisticasActivity::class.java))
        }

        binding.btnConfiguracoes.setOnClickListener {
            startActivity(Intent(this, ConfiguracoesActivity::class.java))
        }

        binding.btnLogs.setOnClickListener {
            startActivity(Intent(this, LogsActivity::class.java))
        }

        binding.btnAtivarAcessibilidade.setOnClickListener {
            abrirConfiguracoesAcessibilidade()
        }

        binding.btnAtivarOverlay.setOnClickListener {
            abrirConfiguracoesOverlay()
        }

        binding.switchBoosters.setOnCheckedChangeListener { _, checked ->
            gerConfig.salvarUsarBoosters(checked)
        }

        binding.switchAntiDeteccao.setOnCheckedChangeListener { _, checked ->
            gerConfig.salvarAntiDeteccao(checked)
        }
    }

    private fun configurarEventos() {
        BotEventos.registrarOuvinteStatus { status ->
            runOnUiThread { atualizarUIStatus(status) }
        }

        BotEventos.registrarOuvinteFase { sessao ->
            runOnUiThread { atualizarDadosSessao(sessao) }
        }

        BotEventos.registrarOuvinteMovimento { _, total ->
            runOnUiThread {
                gerLogs.obterLogs().firstOrNull()?.let { log ->
                    binding.txtUltimoLog.text = "[${log.horaFormatada}] ${log.mensagem}"
                }
            }
        }
    }

    private fun carregarConfiguracoes() {
        val config = gerConfig.obterConfiguracoes()

        val indiceVelocidade = when (config.velocidade) {
            VelocidadeBot.MUITO_LENTA -> 0
            VelocidadeBot.LENTA -> 1
            VelocidadeBot.NORMAL -> 2
            VelocidadeBot.RAPIDA -> 3
            VelocidadeBot.TURBO -> 4
        }
        binding.spinnerVelocidade.setSelection(indiceVelocidade)

        val indiceEstrategia = when (config.estrategia) {
            TipoEstrategia.IA_AVANCADA -> 0
            TipoEstrategia.AGRESSIVA -> 1
            TipoEstrategia.CONSERVADORA -> 2
            TipoEstrategia.VELOCIDADE_MAXIMA -> 3
        }
        binding.spinnerEstrategia.setSelection(indiceEstrategia)

        binding.switchBoosters.isChecked = config.usarBoostersAutomatico
        binding.switchAntiDeteccao.isChecked = config.antiDeteccao

        gerLogs.obterLogs().firstOrNull()?.let { log ->
            binding.txtUltimoLog.text = "[${log.horaFormatada}] ${log.mensagem}"
        }
    }

    private fun atualizarStatusPermissoes() {
        val acessibilidadeAtiva = VerificadorPermissoes.isAcessibilidadeAtiva(this)
        val overlayAtivo = VerificadorPermissoes.isOverlayPermitido(this)

        val mostrarCard = !acessibilidadeAtiva || !overlayAtivo
        binding.cardPermissoes.visibility = if (mostrarCard)
            android.view.View.VISIBLE else android.view.View.GONE

        if (!acessibilidadeAtiva) {
            binding.iconePermAcessibilidade.text = "✗"
            binding.iconePermAcessibilidade.setTextColor(
                ContextCompat.getColor(this, R.color.cor_inativo)
            )
        } else {
            binding.iconePermAcessibilidade.text = "✓"
            binding.iconePermAcessibilidade.setTextColor(
                ContextCompat.getColor(this, R.color.cor_ativo)
            )
        }

        if (!overlayAtivo) {
            binding.iconePermOverlay.text = "✗"
            binding.iconePermOverlay.setTextColor(
                ContextCompat.getColor(this, R.color.cor_inativo)
            )
        } else {
            binding.iconePermOverlay.text = "✓"
            binding.iconePermOverlay.setTextColor(
                ContextCompat.getColor(this, R.color.cor_ativo)
            )
        }

        binding.btnIniciar.isEnabled = acessibilidadeAtiva
    }

    private fun atualizarStatusBot() {
        val servico = BotAcessibilidadeService.instancia
        if (servico != null && BotAcessibilidadeService.botAtivo) {
            val sessao = servico.getSessaoAtual()
            atualizarUIStatus(sessao.status)
            atualizarDadosSessao(sessao)
        } else {
            atualizarUIStatus(StatusBot.INATIVO)
        }
    }

    private fun atualizarUIStatus(status: StatusBot) {
        val (textoStatus, corStatus) = when (status) {
            StatusBot.INATIVO -> Pair(
                getString(R.string.status_inativo),
                ContextCompat.getColor(this, R.color.cor_inativo)
            )
            StatusBot.AGUARDANDO_JOGO -> Pair(
                getString(R.string.status_aguardando),
                ContextCompat.getColor(this, R.color.cor_aguardando)
            )
            StatusBot.ANALISANDO, StatusBot.CALCULANDO_JOGADA -> Pair(
                getString(R.string.status_analisando),
                ContextCompat.getColor(this, R.color.cor_processando)
            )
            StatusBot.EXECUTANDO_JOGADA, StatusBot.AGUARDANDO_ANIMACAO -> Pair(
                getString(R.string.status_jogando),
                ContextCompat.getColor(this, R.color.cor_ativo)
            )
            StatusBot.FASE_CONCLUIDA -> Pair(
                getString(R.string.status_fase_concluida),
                ContextCompat.getColor(this, R.color.cor_ativo)
            )
            StatusBot.COLETANDO_RECOMPENSAS -> Pair(
                getString(R.string.status_coletando_recompensas),
                ContextCompat.getColor(this, R.color.cor_secundaria)
            )
            StatusBot.SEM_VIDAS, StatusBot.AGUARDANDO_VIDAS -> Pair(
                getString(R.string.status_vidas_acabaram),
                ContextCompat.getColor(this, R.color.cor_aguardando)
            )
            else -> Pair(
                getString(R.string.status_ativo),
                ContextCompat.getColor(this, R.color.cor_processando)
            )
        }

        binding.txtStatus.text = textoStatus
        binding.indicadorStatus.backgroundTintList =
            android.content.res.ColorStateList.valueOf(corStatus)

        val botAtivo = status != StatusBot.INATIVO
        binding.btnIniciar.isEnabled = !botAtivo && VerificadorPermissoes.isAcessibilidadeAtiva(this)
        binding.btnParar.isEnabled = botAtivo

        if (botAtivo) {
            iniciarAnimacaoStatus(corStatus)
        } else {
            pararAnimacaoStatus()
        }
    }

    private fun atualizarDadosSessao(sessao: SessaoBot) {
        binding.txtFasesHoje.text = sessao.fasesCompletas.toString()
        binding.txtTaxaSucesso.text = "${sessao.taxaSucesso.toInt()}%"
    }

    private fun iniciarTimerSessao() {
        runnableAtualizacaoTimer = object : Runnable {
            override fun run() {
                val servico = BotAcessibilidadeService.instancia
                if (servico != null && BotAcessibilidadeService.botAtivo) {
                    binding.txtTempoSessao.text = servico.getSessaoAtual().tempoFormatado
                }
                handler.postDelayed(this, 1000L)
            }
        }
        handler.post(runnableAtualizacaoTimer!!)
    }

    private fun pararTimerSessao() {
        runnableAtualizacaoTimer?.let { handler.removeCallbacks(it) }
        runnableAtualizacaoTimer = null
    }

    private fun iniciarAnimacaoStatus(cor: Int) {
        animacaoStatus?.cancel()
        animacaoStatus = ObjectAnimator.ofFloat(binding.indicadorStatus, "alpha", 1f, 0.3f).apply {
            duration = 800
            repeatMode = ValueAnimator.REVERSE
            repeatCount = ValueAnimator.INFINITE
            interpolator = AccelerateDecelerateInterpolator()
            start()
        }
    }

    private fun pararAnimacaoStatus() {
        animacaoStatus?.cancel()
        binding.indicadorStatus.alpha = 1f
    }

    private fun iniciarBot() {
        salvarConfiguracoesDaUI()

        BotForegroundService.iniciar(this)

        handler.postDelayed({
            BotAcessibilidadeService.instancia?.iniciarBot()
                ?: Toast.makeText(
                    this,
                    getString(R.string.msg_ativar_acessibilidade),
                    Toast.LENGTH_LONG
                ).show()
        }, 500L)

        Toast.makeText(this, getString(R.string.msg_bot_iniciado), Toast.LENGTH_SHORT).show()
    }

    private fun pararBot() {
        BotAcessibilidadeService.instancia?.pararBot()
        BotForegroundService.parar(this)
        Toast.makeText(this, getString(R.string.msg_bot_parado), Toast.LENGTH_SHORT).show()
    }

    private fun salvarConfiguracoesDaUI() {
        val velocidade = when (binding.spinnerVelocidade.selectedItemPosition) {
            0 -> VelocidadeBot.MUITO_LENTA
            1 -> VelocidadeBot.LENTA
            2 -> VelocidadeBot.NORMAL
            3 -> VelocidadeBot.RAPIDA
            4 -> VelocidadeBot.TURBO
            else -> VelocidadeBot.NORMAL
        }
        gerConfig.salvarVelocidade(velocidade)

        val estrategia = when (binding.spinnerEstrategia.selectedItemPosition) {
            0 -> TipoEstrategia.IA_AVANCADA
            1 -> TipoEstrategia.AGRESSIVA
            2 -> TipoEstrategia.CONSERVADORA
            3 -> TipoEstrategia.VELOCIDADE_MAXIMA
            else -> TipoEstrategia.IA_AVANCADA
        }
        gerConfig.salvarEstrategia(estrategia)
    }

    private fun mostrarDialogPermissao() {
        AlertDialog.Builder(this)
            .setTitle(getString(R.string.titulo_permissao_acessibilidade))
            .setMessage(getString(R.string.msg_permissao_acessibilidade))
            .setPositiveButton(getString(R.string.btn_abrir_acessibilidade)) { _, _ ->
                abrirConfiguracoesAcessibilidade()
            }
            .setNegativeButton("Cancelar", null)
            .show()
    }

    private fun abrirConfiguracoesAcessibilidade() {
        startActivity(Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS))
    }

    private fun abrirConfiguracoesOverlay() {
        startActivity(
            Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package:$packageName")
            )
        )
    }
}
