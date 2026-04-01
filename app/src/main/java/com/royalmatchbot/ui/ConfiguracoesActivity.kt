package com.royalmatchbot.ui

import android.os.Bundle
import android.view.MenuItem
import androidx.appcompat.app.AppCompatActivity
import com.google.android.material.snackbar.Snackbar
import com.royalmatchbot.databinding.ActivityConfiguracoesBinding
import com.royalmatchbot.model.*
import com.royalmatchbot.util.GerenciadorPreferencias

/**
 * Activity de Configurações do bot.
 * Permite ao usuário personalizar todos os parâmetros de funcionamento.
 */
class ConfiguracoesActivity : AppCompatActivity() {

    private lateinit var binding: ActivityConfiguracoesBinding
    private val prefs by lazy { GerenciadorPreferencias(this) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityConfiguracoesBinding.inflate(layoutInflater)
        setContentView(binding.root)

        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = "⚙️ Configurações"
        }

        carregarConfiguracoes()
        configurarListeners()
    }

    private fun carregarConfiguracoes() {
        val config = prefs.carregarConfiguracoes()

        // Velocidade
        binding.spinnerVelocidade.setSelection(
            VelocidadeJogada.entries.indexOf(config.velocidadeJogada)
        )

        // Estratégia
        binding.spinnerEstrategia.setSelection(
            EstrategiaJogo.entries.indexOf(config.estrategia)
        )

        // Switches
        binding.switchUsarBoosters.isChecked = config.usarBoosters
        binding.switchColetarRecompensas.isChecked = config.coletarRecompensas
        binding.switchIniciarComSistema.isChecked = config.iniciarComSistema
        binding.switchModoSigilo.isChecked = config.modoSigilo
        binding.switchNotifFase.isChecked = config.notificarFaseCompleta
        binding.switchNotifErros.isChecked = config.notificarErros
        binding.switchSalvarLogs.isChecked = config.salvarLogs

        // Sliders/Seekbars
        binding.seekbarIntervaloJogadas.progress =
            velocidadeMsParaProgress(config.intervaloEntreJogadasMs)
        binding.seekbarDelayAnimacao.progress =
            velocidadeMsParaProgress(config.delayAposAnimacaoMs)

        // Texto de valores
        atualizarLabelsSliders(config)

        // Limite diário
        binding.seekbarLimiteHoras.progress = config.limiteHorasDiarias
        binding.tvLimiteHoras.text =
            if (config.limiteHorasDiarias == 0) "Sem limite"
            else "${config.limiteHorasDiarias}h por dia"

        // Nível de log
        binding.spinnerNivelLog.setSelection(
            NivelLog.entries.indexOf(config.nivelLog)
        )
    }

    private fun configurarListeners() {
        binding.btnSalvar.setOnClickListener { salvarConfiguracoes() }
        binding.btnRedefinir.setOnClickListener { redefinirPadrao() }

        binding.seekbarIntervaloJogadas.setOnSeekBarChangeListener(
            SimpleSeekBarListener { progress ->
                val ms = progressParaVelocidadeMs(progress)
                binding.tvIntervaloJogadas.text = "${ms}ms entre jogadas"
            }
        )

        binding.seekbarDelayAnimacao.setOnSeekBarChangeListener(
            SimpleSeekBarListener { progress ->
                val ms = progressParaVelocidadeMs(progress)
                binding.tvDelayAnimacao.text = "${ms}ms aguardando animação"
            }
        )

        binding.seekbarLimiteHoras.setOnSeekBarChangeListener(
            SimpleSeekBarListener { progress ->
                binding.tvLimiteHoras.text =
                    if (progress == 0) "Sem limite" else "${progress}h por dia"
            }
        )

        binding.switchModoSigilo.setOnCheckedChangeListener { _, isChecked ->
            if (isChecked) {
                mostrarDicaModoSigilo()
            }
        }
    }

    private fun salvarConfiguracoes() {
        val config = ConfiguracoesBot(
            velocidadeJogada = VelocidadeJogada.entries[binding.spinnerVelocidade.selectedItemPosition],
            estrategia = EstrategiaJogo.entries[binding.spinnerEstrategia.selectedItemPosition],
            usarBoosters = binding.switchUsarBoosters.isChecked,
            coletarRecompensas = binding.switchColetarRecompensas.isChecked,
            iniciarComSistema = binding.switchIniciarComSistema.isChecked,
            modoSigilo = binding.switchModoSigilo.isChecked,
            notificarFaseCompleta = binding.switchNotifFase.isChecked,
            notificarErros = binding.switchNotifErros.isChecked,
            salvarLogs = binding.switchSalvarLogs.isChecked,
            intervaloEntreJogadasMs = progressParaVelocidadeMs(
                binding.seekbarIntervaloJogadas.progress
            ).toLong(),
            delayAposAnimacaoMs = progressParaVelocidadeMs(
                binding.seekbarDelayAnimacao.progress
            ).toLong(),
            limiteHorasDiarias = binding.seekbarLimiteHoras.progress,
            nivelLog = NivelLog.entries[binding.spinnerNivelLog.selectedItemPosition]
        )

        prefs.salvarConfiguracoes(config)
        Snackbar.make(binding.root, "✅ Configurações salvas!", Snackbar.LENGTH_SHORT).show()
        finish()
    }

    private fun redefinirPadrao() {
        prefs.salvarConfiguracoes(ConfiguracoesBot())
        carregarConfiguracoes()
        Snackbar.make(binding.root, "🔄 Configurações redefinidas", Snackbar.LENGTH_SHORT).show()
    }

    private fun atualizarLabelsSliders(config: ConfiguracoesBot) {
        binding.tvIntervaloJogadas.text =
            "${config.intervaloEntreJogadasMs}ms entre jogadas"
        binding.tvDelayAnimacao.text =
            "${config.delayAposAnimacaoMs}ms aguardando animação"
    }

    private fun velocidadeMsParaProgress(ms: Long): Int =
        ((ms - 200) / 100).toInt().coerceIn(0, 30)

    private fun progressParaVelocidadeMs(progress: Int): Int =
        (200 + progress * 100).coerceIn(200, 3200)

    private fun mostrarDicaModoSigilo() {
        Snackbar.make(
            binding.root,
            "🕵️ Modo sigilo: movimentos variam levemente para parecer humano",
            Snackbar.LENGTH_LONG
        ).show()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) { finish(); return true }
        return super.onOptionsItemSelected(item)
    }
}

/**
 * Listener simplificado para SeekBar.
 */
class SimpleSeekBarListener(
    private val onProgress: (Int) -> Unit
) : android.widget.SeekBar.OnSeekBarChangeListener {
    override fun onProgressChanged(seekBar: android.widget.SeekBar?, progress: Int, fromUser: Boolean) {
        if (fromUser) onProgress(progress)
    }
    override fun onStartTrackingTouch(seekBar: android.widget.SeekBar?) {}
    override fun onStopTrackingTouch(seekBar: android.widget.SeekBar?) {}
}
