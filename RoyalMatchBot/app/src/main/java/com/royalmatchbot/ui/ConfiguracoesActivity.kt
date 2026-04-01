package com.royalmatchbot.ui

import android.os.Bundle
import android.view.MenuItem
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.preference.ListPreference
import androidx.preference.Preference
import androidx.preference.PreferenceFragmentCompat
import androidx.preference.SeekBarPreference
import androidx.preference.SwitchPreferenceCompat
import com.royalmatchbot.R
import com.royalmatchbot.utils.GerenciadorConfiguracoes

/**
 * Tela de configurações avançadas do bot.
 */
class ConfiguracoesActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_configuracoes)

        supportActionBar?.apply {
            setDisplayHomeAsUpEnabled(true)
            title = getString(R.string.titulo_configuracoes)
        }

        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                .replace(R.id.container_configuracoes, FragmentoConfiguracoes())
                .commit()
        }
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        if (item.itemId == android.R.id.home) {
            finish()
            return true
        }
        return super.onOptionsItemSelected(item)
    }
}

class FragmentoConfiguracoes : PreferenceFragmentCompat() {

    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        setPreferencesFromResource(R.xml.preferencias_bot, rootKey)
        configurarCallbacks()
    }

    private fun configurarCallbacks() {
        findPreference<Preference>("pref_sobre")?.setOnPreferenceClickListener {
            Toast.makeText(
                requireContext(),
                "Royal Match Bot v1.0.0\nDesenvolvido para automação inteligente",
                Toast.LENGTH_LONG
            ).show()
            true
        }

        findPreference<Preference>("pref_testar_bot")?.setOnPreferenceClickListener {
            Toast.makeText(
                requireContext(),
                "Abra o Royal Match e o bot iniciará automaticamente!",
                Toast.LENGTH_LONG
            ).show()
            true
        }
    }
}
