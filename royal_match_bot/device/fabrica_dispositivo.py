"""
Fábrica de controladores de dispositivo.
Cria o controlador correto baseado nas configurações.
"""

import logging
from .controlador_base import ControladorBase
from .controlador_adb import ControladorADB
from .controlador_termux import ControladorTermux

logger = logging.getLogger("royalmatch.device")


def criar_controlador(
    modo: str = "adb",
    endereco_adb: str = "",
    porta_adb: int = 5555,
    delay_base_ms: int = 300,
    variacao_ms: int = 150,
    usar_root: bool = False,
) -> ControladorBase:
    """
    Cria e retorna o controlador de dispositivo adequado.

    Args:
        modo: "adb" para conexão via ADB (USB/Wi-Fi) ou "termux" para uso direto no celular
        endereco_adb: IP do dispositivo para conexão Wi-Fi (vazio = USB)
        porta_adb: Porta ADB para conexão Wi-Fi
        delay_base_ms: Delay base entre ações em milissegundos
        variacao_ms: Variação aleatória no delay
        usar_root: Se True, usa comandos root (Termux com root)

    Returns:
        Instância do controlador configurado
    """
    modo = modo.lower().strip()

    if modo == "termux":
        logger.info("Modo Termux selecionado (execução direta no celular).")
        return ControladorTermux(
            usar_root=usar_root,
            delay_base_ms=delay_base_ms,
            variacao_ms=variacao_ms,
        )
    elif modo == "adb":
        logger.info(
            f"Modo ADB selecionado "
            f"({'Wi-Fi: ' + endereco_adb if endereco_adb else 'USB'})."
        )
        return ControladorADB(
            endereco=endereco_adb,
            porta=porta_adb,
            delay_base_ms=delay_base_ms,
            variacao_ms=variacao_ms,
        )
    else:
        logger.warning(f"Modo '{modo}' desconhecido. Usando ADB USB como padrão.")
        return ControladorADB(
            delay_base_ms=delay_base_ms,
            variacao_ms=variacao_ms,
        )
