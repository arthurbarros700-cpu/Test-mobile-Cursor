package com.royalmatchbot.ui

import android.app.ActivityManager
import android.content.Context
import android.content.Intent
import android.media.projection.MediaProjectionManager
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import android.view.Menu
import android.view.MenuItem
import android.view.View
import android.view.animation.AnimationUtils
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.google.android.material.snackbar.Snackbar
import com.royalmatchbot.R
import com.royalmatchbot.databinding.ActivityMainBinding
import com.royalmatchbot.model.EstadoBot
import com.royalmatchbot.model.EstatisticasBot
import com.royalmatchbot.service.BotAcessibilidadeServico
import com.royalmatchbot.service.BotPrincipalServico
import com.royalmatchbot.service.CapturaTelaServico
import com.royalmatchbot.util.GerenciadorPreferencias
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

/**
 * Activity principal do Royal Match Bot.
 * Interface de controle completa com status em tempo real.
 */
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private val prefs by lazy { GerenciadorPreferencias(this) }

    private var resultadoMediaProjection: Intent? = null
    private var codigoMediaProjection: Int = -1

    private val solicitarMediaProjection = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { resultado ->
        if (resultado.resultCode == RESULT_OK && resultado.data != null) {
            codigoMediaProjection = resultado.resultCode
            resultadoMediaProjection = resultado.data
            iniciarCapturaTela()
        } else {
            mostrarSnackbar("Permissão de captura de tela negada")
        }
    }

    private val solicitarPermissaoOverlay = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) {
        verificarPermissoes()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)
        setSupportActionBar(binding.toolbar)

        configurarBotoes()
        observarEstadoBot()
        verificarPermissoes()

        if (prefs.primeiraExecucao()) {
            mostrarDialogoBemVindo()
        }
    }

    override fun onResume() {
        super.onResume()
        atualizarStatusPermissoes()
        atualizarEstatisticasUI(BotPrincipalServico.estatisticas.value)
    }

    private fun configurarBotoes() {
        binding.btnIniciarBot.setOnClickListener { onBotaoIniciar() }
        binding.btnPararBot.setOnClickListener { onBotaoParar() }
        binding.btnPausarBot.setOnClickListener { onBotaoPausar() }
        binding.btnAbrirJogo.setOnClickListener { abrirRoyalMatch() }
        binding.btnConfiguracoes.setOnClickListener {
            startActivity(Intent(this, ConfiguracoesActivity::class.java))
        }
        binding.btnLogs.setOnClickListener {
            startActivity(Intent(this, LogsActivity::class.java))
        }
        binding.btnEstatisticas.setOnClickListener {
            startActivity(Intent(this, EstatisticasActivity::class.java))
        }
        binding.cardStatusAcessibilidade.setOnClickListener {
            abrirConfiguracaoAcessibilidade()
        }
        binding.cardStatusCaptura.setOnClickListener {
            if (!acessibilidadeAtiva()) mostrarDialogoAcessibilidade()
            else solicitarPermissaoCapturaTela()
        }
    }

    private fun observarEstadoBot() {
        lifecycleScope.launch {
            BotPrincipalServico.estadoBot.collectLatest { estado ->
                atualizarEstadoUI(estado)
            }
        }
        lifecycleScope.launch {
            BotPrincipalServico.estatisticas.collectLatest { stats ->
                atualizarEstatisticasUI(stats)
            }
        }
    }

    private fun onBotaoIniciar() {
        if (!acessibilidadeAtiva()) {
            mostrarDialogoAcessibilidade()
            return
        }
        if (resultadoMediaProjection == null) {
            solicitarPermissaoCapturaTela()
            return
        }
        val intent = Intent(this, BotPrincipalServico::class.java).apply {
            action = BotPrincipalServico.ACAO_INICIAR
        }
        startForegroundService(intent)

        val animacao = AnimationUtils.loadAnimation(this, R.anim.pulse)
        binding.ivStatusIcon.startAnimation(animacao)
        mostrarSnackbar("🚀 Bot iniciado! Ele vai jogar automaticamente.")
    }

    private fun onBotaoParar() {
        val intent = Intent(this, BotPrincipalServico::class.java).apply {
            action = BotPrincipalServico.ACAO_PARAR
        }
        startService(intent)
        binding.ivStatusIcon.clearAnimation()
        mostrarSnackbar("⏹️ Bot parado.")
    }

    private fun onBotaoPausar() {
        val estado = BotPrincipalServico.estadoBot.value
        val (acao, msg) = if (estado == EstadoBot.JOGO_PAUSADO) {
            BotPrincipalServico.ACAO_RETOMAR to "▶️ Bot retomado"
        } else {
            BotPrincipalServico.ACAO_PAUSAR to "⏸️ Bot pausado"
        }
        startService(Intent(this, BotPrincipalServico::class.java).apply { action = acao })
        mostrarSnackbar(msg)
    }

    private fun atualizarEstadoUI(estado: EstadoBot) {
        runOnUiThread {
            binding.tvEstadoBot.text = estado.descricao
            binding.tvEstadoIcone.text = estado.icone

            val botAtivo = estado != EstadoBot.PARADO && estado != EstadoBot.ERRO
            binding.btnIniciarBot.isEnabled = !botAtivo
            binding.btnPararBot.isEnabled = botAtivo
            binding.btnPausarBot.isEnabled = botAtivo

            binding.btnPausarBot.text = if (estado == EstadoBot.JOGO_PAUSADO)
                "▶ Retomar" else "⏸ Pausar"

            val corEstado = when (estado) {
                EstadoBot.PARADO -> getColor(R.color.estado_parado)
                EstadoBot.ERRO -> getColor(R.color.estado_erro)
                EstadoBot.FASE_COMPLETA -> getColor(R.color.estado_sucesso)
                EstadoBot.JOGO_PAUSADO -> getColor(R.color.estado_pausado)
                else -> getColor(R.color.estado_ativo)
            }
            binding.cardEstadoBot.setCardBackgroundColor(corEstado)
        }
    }

    private fun atualizarEstatisticasUI(stats: EstatisticasBot) {
        runOnUiThread {
            binding.tvFasesCompletas.text = stats.fasesCompletas.toString()
            binding.tvJogadasTotal.text = stats.jogadasRealizadas.toString()
            binding.tvTempoAtivo.text = stats.tempoSessaoFormatado
            binding.tvTaxaSucesso.text = "${"%.0f".format(stats.taxaSucessoFases)}%"
            binding.tvCombosFeitos.text = stats.combosRealizados.toString()
            binding.tvBoostersUsados.text = stats.jogadasComBooster.toString()
        }
    }

    private fun atualizarStatusPermissoes() {
        val acessibilidade = acessibilidadeAtiva()
        val captura = resultadoMediaProjection != null

        binding.ivStatusAcessibilidade.setImageResource(
            if (acessibilidade) R.drawable.ic_check_circle else R.drawable.ic_error
        )
        binding.tvStatusAcessibilidade.text =
            if (acessibilidade) "Acessibilidade Ativa ✅" else "Toque para ativar ⚠️"

        binding.ivStatusCaptura.setImageResource(
            if (captura) R.drawable.ic_check_circle else R.drawable.ic_error
        )
        binding.tvStatusCaptura.text =
            if (captura) "Captura de Tela Ativa ✅" else "Toque para ativar ⚠️"

        binding.btnIniciarBot.isEnabled = acessibilidade && captura
    }

    private fun acessibilidadeAtiva(): Boolean {
        val servico = "${packageName}/${BotAcessibilidadeServico::class.java.name}"
        val string = Settings.Secure.getString(
            contentResolver,
            Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES
        ) ?: return false
        return string.contains(servico)
    }

    private fun solicitarPermissaoCapturaTela() {
        val mpm = getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager
        solicitarMediaProjection.launch(mpm.createScreenCaptureIntent())
    }

    private fun iniciarCapturaTela() {
        val intent = Intent(this, CapturaTelaServico::class.java).apply {
            putExtra(CapturaTelaServico.EXTRA_RESULTADO_CODE, codigoMediaProjection)
            putExtra(CapturaTelaServico.EXTRA_RESULTADO_DATA, resultadoMediaProjection)
        }
        startForegroundService(intent)
        atualizarStatusPermissoes()
        mostrarSnackbar("📸 Captura de tela ativada")
    }

    private fun abrirRoyalMatch() {
        val intent = packageManager.getLaunchIntentForPackage(GerenciadorPreferencias.PACOTE_JOGO)
        if (intent != null) startActivity(intent)
        else {
            AlertDialog.Builder(this)
                .setTitle("Royal Match não encontrado")
                .setMessage("Baixe o Royal Match na Play Store para usar o bot.")
                .setPositiveButton("Abrir Play Store") { _, _ ->
                    startActivity(
                        Intent(Intent.ACTION_VIEW,
                            Uri.parse("market://details?id=${GerenciadorPreferencias.PACOTE_JOGO}"))
                    )
                }
                .setNegativeButton("Cancelar", null)
                .show()
        }
    }

    private fun abrirConfiguracaoAcessibilidade() {
        startActivity(Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS))
    }

    private fun mostrarDialogoAcessibilidade() {
        AlertDialog.Builder(this)
            .setTitle("⚙️ Ativar Acessibilidade")
            .setMessage(
                "Para o bot funcionar, você precisa ativar o serviço de acessibilidade:\n\n" +
                "1. Toque em OK para abrir as configurações\n" +
                "2. Acesse 'Serviços baixados'\n" +
                "3. Encontre 'Royal Match Bot'\n" +
                "4. Ative o serviço e confirme\n\n" +
                "Volte ao app após ativar."
            )
            .setPositiveButton("Abrir Configurações") { _, _ ->
                abrirConfiguracaoAcessibilidade()
            }
            .setNegativeButton("Cancelar", null)
            .show()
    }

    private fun mostrarDialogoBemVindo() {
        AlertDialog.Builder(this)
            .setTitle("👑 Bem-vindo ao Royal Match Bot!")
            .setMessage(
                "Olá! Este bot joga Royal Match automaticamente por você.\n\n" +
                "Para começar:\n" +
                "① Ative o Serviço de Acessibilidade (card vermelho)\n" +
                "② Conceda permissão de Captura de Tela\n" +
                "③ Toque em 'INICIAR BOT'\n\n" +
                "O bot irá abrir o Royal Match, analisar o tabuleiro e jogar sozinho!\n\n" +
                "Configure a velocidade e estratégia em ⚙️ Configurações."
            )
            .setPositiveButton("Entendi! Vamos lá!") { _, _ ->
                if (!acessibilidadeAtiva()) mostrarDialogoAcessibilidade()
            }
            .setCancelable(false)
            .show()
    }

    private fun verificarPermissoes() {
        atualizarStatusPermissoes()
    }

    private fun mostrarSnackbar(mensagem: String) {
        Snackbar.make(binding.root, mensagem, Snackbar.LENGTH_SHORT).show()
    }

    override fun onCreateOptionsMenu(menu: Menu): Boolean {
        menuInflater.inflate(R.menu.menu_main, menu)
        return true
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        return when (item.itemId) {
            R.id.action_configuracoes -> {
                startActivity(Intent(this, ConfiguracoesActivity::class.java))
                true
            }
            R.id.action_sobre -> {
                mostrarDialogoSobre()
                true
            }
            else -> super.onOptionsItemSelected(item)
        }
    }

    private fun mostrarDialogoSobre() {
        AlertDialog.Builder(this)
            .setTitle("Sobre o Royal Match Bot")
            .setMessage(
                "Royal Match Bot v1.0.0\n\n" +
                "Bot automatizador profissional para o jogo Royal Match.\n\n" +
                "Funcionalidades:\n" +
                "• Reconhecimento de peças por análise de cor\n" +
                "• Motor estratégico de 5 modos\n" +
                "• Detecção e uso de boosters\n" +
                "• Modo sigilo (movimentos humanizados)\n" +
                "• Estatísticas completas em tempo real\n" +
                "• Logs detalhados\n\n" +
                "Desenvolvido com ❤️ em Kotlin para Android"
            )
            .setPositiveButton("Fechar", null)
            .show()
    }
}
