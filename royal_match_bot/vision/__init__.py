"""Módulo de visão computacional do Royal Match Bot."""
from .capturador import Capturador
from .detector_tabuleiro import DetectorTabuleiro
from .classificador_pecas import ClassificadorPecas
from .detector_telas import DetectorTelas, TelasJogo
from .processador_imagem import ProcessadorImagem

__all__ = [
    "Capturador",
    "DetectorTabuleiro",
    "ClassificadorPecas",
    "DetectorTelas",
    "TelasJogo",
    "ProcessadorImagem",
]
