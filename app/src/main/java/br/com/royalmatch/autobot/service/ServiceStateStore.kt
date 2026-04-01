package br.com.royalmatch.autobot.service

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

object ServiceStateStore {
    private val _status = MutableStateFlow("Desligado")
    val status: StateFlow<String> = _status.asStateFlow()

    fun atualizarStatus(texto: String) {
        _status.value = texto
    }
}
