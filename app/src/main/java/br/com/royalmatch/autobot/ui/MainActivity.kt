package br.com.royalmatch.autobot.ui

import android.content.Intent
import android.os.Bundle
import android.provider.Settings
import android.text.TextUtils
import android.view.accessibility.AccessibilityManager
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import br.com.royalmatch.autobot.data.BotConfigRepository
import br.com.royalmatch.autobot.databinding.ActivityMainBinding
import br.com.royalmatch.autobot.service.ServiceStateStore
import java.util.Locale
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var configRepository: BotConfigRepository

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        configRepository = BotConfigRepository(this)

        configurarControles()
        observarStatus()
    }

    override fun onResume() {
        super.onResume()
        sincronizarUIComConfiguracao()
        atualizarStatusLocal()
    }

    private fun configurarControles() {
        binding.btnAcessibilidade.setOnClickListener {
            startActivity(Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS))
        }

        binding.switchBot.setOnCheckedChangeListener { _, ativo ->
            configRepository.salvarBotAtivo(ativo)
            if (!ativo) {
                binding.tvStatus.text = "Bot desativado"
            } else {
                atualizarStatusLocal()
            }
        }

        binding.sliderIntervalo.addOnChangeListener { _, value, fromUser ->
            if (!fromUser) return@addOnChangeListener
            val ms = value.toInt()
            configRepository.salvarIntervaloMs(ms)
            binding.tvIntervaloValor.text = "$ms ms"
        }

        binding.sliderConfianca.addOnChangeListener { _, value, fromUser ->
            if (!fromUser) return@addOnChangeListener
            configRepository.salvarConfiancaMinima(value)
            binding.tvConfiancaValor.text = String.format(Locale("pt", "BR"), "%.2f", value)
        }
    }

    private fun sincronizarUIComConfiguracao() {
        val ativo = configRepository.lerBotAtivo()
        val intervalo = configRepository.lerIntervaloMs().toFloat()
        val confianca = configRepository.lerConfiancaMinima()

        binding.switchBot.isChecked = ativo
        binding.sliderIntervalo.value = intervalo
        binding.sliderConfianca.value = confianca
        binding.tvIntervaloValor.text = "${intervalo.toInt()} ms"
        binding.tvConfiancaValor.text = String.format(Locale("pt", "BR"), "%.2f", confianca)
    }

    private fun observarStatus() {
        lifecycleScope.launch {
            ServiceStateStore.status.collectLatest { texto ->
                binding.tvStatus.text = texto
            }
        }
    }

    private fun atualizarStatusLocal() {
        if (!configRepository.lerBotAtivo()) {
            binding.tvStatus.text = "Bot desativado"
            return
        }

        if (!servicoAtivo()) {
            binding.tvStatus.text = "Ative o serviço de acessibilidade"
        }
    }

    private fun servicoAtivo(): Boolean {
        val accessibilityManager = getSystemService(ACCESSIBILITY_SERVICE) as? AccessibilityManager
            ?: return false
        if (!accessibilityManager.isEnabled) return false

        val esperadoCompleto = "$packageName/br.com.royalmatch.autobot.service.RoyalBotAccessibilityService"
        val esperadoCurto = "$packageName/.service.RoyalBotAccessibilityService"
        val enabledServices = Settings.Secure.getString(
            contentResolver,
            Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES
        ) ?: return false

        val splitter = TextUtils.SimpleStringSplitter(':').apply { setString(enabledServices) }
        while (splitter.hasNext()) {
            val item = splitter.next()
            if (item.equals(esperadoCompleto, ignoreCase = true) || item.equals(esperadoCurto, ignoreCase = true)) {
                return true
            }
        }
        return false
    }
}
