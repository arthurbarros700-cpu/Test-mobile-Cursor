"""
Interface base para controle de dispositivo.
Tanto ADB quanto Termux implementam esta interface.
"""

import time
import random
from abc import ABC, abstractmethod
from typing import Optional, Tuple
import numpy as np


class ControladorBase(ABC):
    """Interface abstrata para controle de dispositivo Android."""

    def __init__(self, delay_base_ms: int = 300, variacao_ms: int = 150):
        self.delay_base_ms = delay_base_ms
        self.variacao_ms = variacao_ms
        self._largura: int = 0
        self._altura: int = 0
        self._conectado: bool = False

    @property
    def conectado(self) -> bool:
        return self._conectado

    @property
    def resolucao(self) -> Tuple[int, int]:
        return (self._largura, self._altura)

    # ─── Métodos abstratos que cada implementação deve fornecer ───────────────

    @abstractmethod
    def conectar(self) -> bool:
        """Estabelece conexão com o dispositivo. Retorna True se bem-sucedido."""
        ...

    @abstractmethod
    def desconectar(self) -> None:
        """Encerra a conexão com o dispositivo."""
        ...

    @abstractmethod
    def capturar_tela(self) -> Optional[np.ndarray]:
        """Captura e retorna o screenshot atual como array numpy (BGR)."""
        ...

    @abstractmethod
    def _toque_raw(self, x: int, y: int) -> bool:
        """Executa um toque direto nas coordenadas dadas (sem delay)."""
        ...

    @abstractmethod
    def _swipe_raw(self, x1: int, y1: int, x2: int, y2: int, duracao_ms: int) -> bool:
        """Executa um swipe direto (sem delay) com duração em ms."""
        ...

    @abstractmethod
    def obter_resolucao(self) -> Tuple[int, int]:
        """Consulta e retorna a resolução atual do dispositivo."""
        ...

    @abstractmethod
    def abrir_app(self, pacote: str) -> bool:
        """Abre um aplicativo pelo nome do pacote. Retorna True se bem-sucedido."""
        ...

    @abstractmethod
    def obter_bateria(self) -> int:
        """Retorna o nível de bateria atual (0-100)."""
        ...

    # ─── Métodos concretos com simulação de comportamento humano ─────────────

    def _delay_humano(self, base_ms: Optional[int] = None) -> None:
        """Aguarda um tempo aleatório para simular comportamento humano."""
        base = base_ms if base_ms is not None else self.delay_base_ms
        variacao = random.randint(-self.variacao_ms // 2, self.variacao_ms)
        delay_total = max(50, base + variacao)
        time.sleep(delay_total / 1000.0)

    def _curva_bezier(
        self, x1: int, y1: int, x2: int, y2: int, pontos: int = 8
    ) -> list:
        """
        Gera uma trajetória curva entre dois pontos (curva de Bézier quadrática).
        Simula o movimento natural do dedo humano.
        """
        # Ponto de controle com desvio perpendicular aleatório
        ctrl_x = (x1 + x2) / 2 + random.randint(-30, 30)
        ctrl_y = (y1 + y2) / 2 + random.randint(-30, 30)

        trajetoria = []
        for i in range(pontos + 1):
            t = i / pontos
            # Fórmula de Bézier quadrática
            bx = (1 - t) ** 2 * x1 + 2 * (1 - t) * t * ctrl_x + t ** 2 * x2
            by = (1 - t) ** 2 * y1 + 2 * (1 - t) * t * ctrl_y + t ** 2 * y2
            trajetoria.append((int(bx), int(by)))
        return trajetoria

    def tocar(self, x: int, y: int, simular_humano: bool = True) -> bool:
        """
        Executa um toque nas coordenadas com delay humanizado.
        Adiciona leve desvio aleatório nas coordenadas se simular_humano=True.
        """
        if simular_humano:
            x += random.randint(-3, 3)
            y += random.randint(-3, 3)

        sucesso = self._toque_raw(x, y)
        self._delay_humano()
        return sucesso

    def deslizar(
        self,
        x1: int,
        y1: int,
        x2: int,
        y2: int,
        duracao_ms: int = 200,
        simular_humano: bool = True,
    ) -> bool:
        """
        Executa um deslize (swipe) entre dois pontos.
        Com simulação humana, usa trajetória curva.
        """
        if simular_humano:
            # Adicionar desvio nas coordenadas de início e fim
            x1 += random.randint(-2, 2)
            y1 += random.randint(-2, 2)
            x2 += random.randint(-2, 2)
            y2 += random.randint(-2, 2)

            # Duração levemente variada
            duracao_ms += random.randint(-30, 50)

        sucesso = self._swipe_raw(x1, y1, x2, y2, max(100, duracao_ms))
        self._delay_humano()
        return sucesso

    def pressionar_botao_home(self) -> bool:
        """Pressiona o botão Home do Android."""
        return self._toque_raw(0, 0)  # Override nas subclasses

    def pressionar_voltar(self) -> bool:
        """Pressiona o botão Voltar do Android."""
        return self._toque_raw(0, 0)  # Override nas subclasses
