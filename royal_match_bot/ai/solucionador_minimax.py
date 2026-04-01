"""
Solucionador Minimax com Alpha-Beta Pruning para o Royal Match.
Busca em profundidade com poda para melhorar performance.
"""

import logging
import time
from typing import Optional, List, Tuple

from ..core.tabuleiro import Tabuleiro
from ..core.movimento import Movimento
from ..core.estado_jogo import ObjetivoFase
from .avaliador import Avaliador

logger = logging.getLogger("royalmatch.ia.minimax")

_INFINITO = float("inf")


class SolucionadorMinimax:
    """
    Minimax com Alpha-Beta Pruning para o Royal Match.

    No Royal Match não há adversário real, então o "min" representa
    a probabilidade de peças desfavoráveis caírem após cada movimento.
    Usamos uma variante de "expectiminimax" onde o nível min representa
    o estado médio esperado após a gravidade.
    """

    def __init__(
        self,
        avaliador: Avaliador,
        profundidade_maxima: int = 4,
        timeout_s: float = 2.5,
        max_movimentos_por_no: int = 20,
    ):
        self.avaliador = avaliador
        self.profundidade_maxima = profundidade_maxima
        self.timeout_s = timeout_s
        self.max_movimentos_por_no = max_movimentos_por_no

        self._nos_visitados: int = 0
        self._podas: int = 0
        self._tempo_ultima_busca: float = 0.0
        self._inicio: float = 0.0

    def encontrar_melhor_movimento(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]] = None,
        movimentos_restantes: int = 30,
    ) -> Optional[Movimento]:
        """
        Encontra o melhor movimento usando Minimax com Alpha-Beta.
        """
        self._inicio = time.time()
        self._nos_visitados = 0
        self._podas = 0

        movimentos = self._priorizar_movimentos(tabuleiro, objetivos, movimentos_restantes)
        if not movimentos:
            return None

        melhor_movimento = None
        melhor_score = -_INFINITO

        for (l1, c1, l2, c2) in movimentos:
            if time.time() - self._inicio > self.timeout_s:
                break

            pontos, novo_tab = tabuleiro.simular_movimento(l1, c1, l2, c2)
            if pontos == 0:
                continue

            score = self._minimax(
                novo_tab,
                self.profundidade_maxima - 1,
                -_INFINITO,
                _INFINITO,
                False,
                objetivos,
                movimentos_restantes - 1,
            )
            score += pontos * 0.5

            if score > melhor_score:
                melhor_score = score
                melhor_movimento = Movimento(l1, c1, l2, c2, score_ia=score)

        self._tempo_ultima_busca = time.time() - self._inicio

        # Fallback se nenhum movimento com pontos foi encontrado
        if melhor_movimento is None and movimentos:
            l1, c1, l2, c2 = movimentos[0]
            melhor_movimento = Movimento(l1, c1, l2, c2, score_ia=0.0)

        logger.debug(
            f"Minimax: {self._nos_visitados} nós, {self._podas} podas, "
            f"{self._tempo_ultima_busca*1000:.0f}ms | Score: {melhor_score:.1f}"
        )
        return melhor_movimento

    def _minimax(
        self,
        tabuleiro: Tabuleiro,
        profundidade: int,
        alpha: float,
        beta: float,
        maximizando: bool,
        objetivos: Optional[List[ObjetivoFase]],
        movimentos_restantes: int,
    ) -> float:
        self._nos_visitados += 1

        if time.time() - self._inicio > self.timeout_s:
            return self.avaliador.avaliar(tabuleiro, objetivos, movimentos_restantes)

        if profundidade == 0 or movimentos_restantes <= 0:
            return self.avaliador.avaliar(tabuleiro, objetivos, movimentos_restantes)

        movimentos = self._priorizar_movimentos(tabuleiro, objetivos, movimentos_restantes)
        if not movimentos:
            return self.avaliador.avaliar(tabuleiro, objetivos, movimentos_restantes)

        if maximizando:
            valor_max = -_INFINITO
            for (l1, c1, l2, c2) in movimentos[:self.max_movimentos_por_no]:
                pontos, novo_tab = tabuleiro.simular_movimento(l1, c1, l2, c2)
                valor = self._minimax(
                    novo_tab, profundidade - 1, alpha, beta,
                    False, objetivos, movimentos_restantes - 1
                ) + pontos * 0.3
                valor_max = max(valor_max, valor)
                alpha = max(alpha, valor)
                if beta <= alpha:
                    self._podas += 1
                    break
            return valor_max
        else:
            # Nível "min" - representa a aleatoriedade das peças que caem
            # Usamos a média dos N piores movimentos como estimativa do pior caso
            valor_min = _INFINITO
            for (l1, c1, l2, c2) in movimentos[:self.max_movimentos_por_no]:
                pontos, novo_tab = tabuleiro.simular_movimento(l1, c1, l2, c2)
                valor = self._minimax(
                    novo_tab, profundidade - 1, alpha, beta,
                    True, objetivos, movimentos_restantes - 1
                ) + pontos * 0.3
                valor_min = min(valor_min, valor)
                beta = min(beta, valor)
                if beta <= alpha:
                    self._podas += 1
                    break
            return valor_min

    def _priorizar_movimentos(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]],
        movimentos_restantes: int,
    ) -> List[Tuple[int, int, int, int]]:
        """
        Ordena movimentos por potencial estimado (pré-ordenação para melhor poda).
        """
        movimentos = tabuleiro.listar_movimentos_possiveis()
        if not movimentos:
            return []

        # Avaliação rápida de cada movimento para pré-ordenar
        scores = []
        for (l1, c1, l2, c2) in movimentos:
            pontos, _ = tabuleiro.simular_movimento(l1, c1, l2, c2)
            scores.append((pontos, (l1, c1, l2, c2)))

        scores.sort(key=lambda x: x[0], reverse=True)
        return [m for _, m in scores]

    @property
    def estatisticas(self) -> dict:
        return {
            "nos_visitados": self._nos_visitados,
            "podas": self._podas,
            "tempo_ms": round(self._tempo_ultima_busca * 1000, 1),
            "profundidade": self.profundidade_maxima,
        }
