"""Módulo core do Royal Match Bot - lógica do jogo."""
from .pecas import TipoPeca, Peca, PowerUp, TipoPowerUp
from .tabuleiro import Tabuleiro, Celula
from .estado_jogo import EstadoJogo, FaseInfo, ObjetivoFase, TipoObjetivo
from .movimento import Movimento, ResultadoMovimento

__all__ = [
    "TipoPeca", "Peca", "PowerUp", "TipoPowerUp",
    "Tabuleiro", "Celula",
    "EstadoJogo", "FaseInfo", "ObjetivoFase", "TipoObjetivo",
    "Movimento", "ResultadoMovimento",
]
