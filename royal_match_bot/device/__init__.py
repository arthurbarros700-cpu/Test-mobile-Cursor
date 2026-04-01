"""Módulo de controle de dispositivo do Royal Match Bot."""
from .controlador_adb import ControladorADB
from .controlador_termux import ControladorTermux
from .gestos import GerenciadorGestos, Gesto, TipoGesto
from .fabrica_dispositivo import criar_controlador, ControladorBase

__all__ = [
    "ControladorADB",
    "ControladorTermux",
    "GerenciadorGestos",
    "Gesto",
    "TipoGesto",
    "criar_controlador",
    "ControladorBase",
]
