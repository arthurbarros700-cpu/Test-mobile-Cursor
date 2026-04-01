"""
Gerenciador de gestos de alto nível para o Royal Match Bot.
Converte coordenadas de tabuleiro em gestos físicos na tela.
"""

import time
import math
import random
import logging
from dataclasses import dataclass
from enum import Enum, auto
from typing import Optional, Tuple

from .controlador_base import ControladorBase

logger = logging.getLogger("royalmatch.device.gestos")


class TipoGesto(Enum):
    TOQUE = "toque"
    SWIPE_ESQUERDA = "swipe_esquerda"
    SWIPE_DIREITA = "swipe_direita"
    SWIPE_CIMA = "swipe_cima"
    SWIPE_BAIXO = "swipe_baixo"
    LONGO_TOQUE = "longo_toque"
    DUPLO_TOQUE = "duplo_toque"


@dataclass
class Gesto:
    """Representa um gesto a ser executado na tela."""
    tipo: TipoGesto
    x: int
    y: int
    x2: int = 0
    y2: int = 0
    duracao_ms: int = 200
    descricao: str = ""

    def __str__(self) -> str:
        if self.tipo == TipoGesto.TOQUE:
            return f"Toque em ({self.x}, {self.y})"
        return f"{self.tipo.value} ({self.x},{self.y}) → ({self.x2},{self.y2})"


@dataclass
class RetanguloTabuleiro:
    """Define a área do tabuleiro na tela."""
    x_inicio: int
    y_inicio: int
    x_fim: int
    y_fim: int
    colunas: int = 9
    linhas: int = 9

    @property
    def largura_celula(self) -> float:
        return (self.x_fim - self.x_inicio) / self.colunas

    @property
    def altura_celula(self) -> float:
        return (self.y_fim - self.y_inicio) / self.linhas

    def coordenadas_celula(self, linha: int, coluna: int) -> Tuple[int, int]:
        """Retorna as coordenadas (x, y) do centro de uma célula."""
        x = int(self.x_inicio + (coluna + 0.5) * self.largura_celula)
        y = int(self.y_inicio + (linha + 0.5) * self.altura_celula)
        return (x, y)


class GerenciadorGestos:
    """
    Gerencia todos os gestos do jogo Royal Match.
    Converte movimentos do tabuleiro em toques/swipes na tela.
    """

    def __init__(
        self,
        controlador: ControladorBase,
        retangulo_tabuleiro: Optional[RetanguloTabuleiro] = None,
        simular_humano: bool = True,
    ):
        self.controlador = controlador
        self.retangulo = retangulo_tabuleiro
        self.simular_humano = simular_humano
        self._gestos_executados: int = 0
        self._ultima_execucao: float = 0.0

    def definir_area_tabuleiro(self, rect: RetanguloTabuleiro) -> None:
        self.retangulo = rect
        logger.info(
            f"Área do tabuleiro definida: "
            f"({rect.x_inicio},{rect.y_inicio}) → ({rect.x_fim},{rect.y_fim}) | "
            f"Célula: {rect.largura_celula:.0f}x{rect.altura_celula:.0f}px"
        )

    def executar_movimento_tabuleiro(
        self, linha1: int, coluna1: int, linha2: int, coluna2: int
    ) -> bool:
        """
        Executa o movimento de troca entre duas peças adjacentes.
        Converte coordenadas do tabuleiro para pixels na tela.
        """
        if not self.retangulo:
            logger.error("Área do tabuleiro não definida.")
            return False

        x1, y1 = self.retangulo.coordenadas_celula(linha1, coluna1)
        x2, y2 = self.retangulo.coordenadas_celula(linha2, coluna2)

        # Duração do swipe baseada na distância
        distancia = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)
        duracao_ms = int(150 + distancia * 0.3)

        if self.simular_humano:
            duracao_ms += random.randint(-30, 60)

        logger.debug(
            f"Movimento: ({linha1},{coluna1})→({linha2},{coluna2}) | "
            f"Pixels: ({x1},{y1})→({x2},{y2}) | Duração: {duracao_ms}ms"
        )

        sucesso = self.controlador.deslizar(x1, y1, x2, y2, duracao_ms, self.simular_humano)
        self._gestos_executados += 1
        self._ultima_execucao = time.time()
        return sucesso

    def tocar_celula(self, linha: int, coluna: int) -> bool:
        """Toca no centro de uma célula específica."""
        if not self.retangulo:
            logger.error("Área do tabuleiro não definida.")
            return False

        x, y = self.retangulo.coordenadas_celula(linha, coluna)
        return self.controlador.tocar(x, y, self.simular_humano)

    def tocar_coordenada(self, x: int, y: int) -> bool:
        """Toca em coordenadas absolutas da tela."""
        return self.controlador.tocar(x, y, self.simular_humano)

    def tocar_proporcional(self, proporcao_x: float, proporcao_y: float) -> bool:
        """
        Toca em posição proporcional à tela.
        proporcao_x, proporcao_y: valores de 0.0 a 1.0
        """
        largura, altura = self.controlador.resolucao
        x = int(largura * proporcao_x)
        y = int(altura * proporcao_y)
        return self.controlador.tocar(x, y, self.simular_humano)

    def tocar_botao_jogar(self) -> bool:
        """Toca no botão 'Jogar' (geralmente centralizado na tela)."""
        return self.tocar_proporcional(0.5, 0.75)

    def tocar_botao_continuar(self) -> bool:
        """Toca no botão 'Continuar' após vitória/derrota."""
        return self.tocar_proporcional(0.5, 0.70)

    def tocar_botao_proxima_fase(self) -> bool:
        """Toca no botão para ir à próxima fase."""
        return self.tocar_proporcional(0.5, 0.75)

    def fechar_popup(self) -> bool:
        """Fecha popups genéricos (botão X geralmente no topo)."""
        # Tentar botão X no topo direito
        sucesso = self.tocar_proporcional(0.9, 0.08)
        if not sucesso:
            # Tentar toque no centro-baixo
            sucesso = self.tocar_proporcional(0.5, 0.85)
        return sucesso

    def executar_gesto(self, gesto: Gesto) -> bool:
        """Executa um gesto genérico."""
        if gesto.tipo == TipoGesto.TOQUE:
            return self.controlador.tocar(gesto.x, gesto.y, self.simular_humano)
        elif gesto.tipo in (
            TipoGesto.SWIPE_ESQUERDA, TipoGesto.SWIPE_DIREITA,
            TipoGesto.SWIPE_CIMA, TipoGesto.SWIPE_BAIXO
        ):
            return self.controlador.deslizar(
                gesto.x, gesto.y, gesto.x2, gesto.y2,
                gesto.duracao_ms, self.simular_humano
            )
        elif gesto.tipo == TipoGesto.LONGO_TOQUE:
            return self.controlador._swipe_raw(
                gesto.x, gesto.y, gesto.x, gesto.y, gesto.duracao_ms
            )
        elif gesto.tipo == TipoGesto.DUPLO_TOQUE:
            self.controlador.tocar(gesto.x, gesto.y, self.simular_humano)
            time.sleep(0.1)
            return self.controlador.tocar(gesto.x, gesto.y, self.simular_humano)
        return False

    def pausa_humana(self) -> None:
        """Pausa aleatória para simular pensamento humano."""
        if self.simular_humano:
            pausa = random.uniform(0.3, 1.2)
            time.sleep(pausa)

    @property
    def total_gestos(self) -> int:
        return self._gestos_executados
