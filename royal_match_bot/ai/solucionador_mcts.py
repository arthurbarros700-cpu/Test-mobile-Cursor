"""
Monte Carlo Tree Search (MCTS) para o Royal Match.
Explora movimentos por simulação aleatória e backpropagation.
Excelente para situações de alta incerteza (novo tabuleiro).
"""

import math
import time
import random
import logging
from typing import Optional, List, Dict, Tuple
from dataclasses import dataclass, field

from ..core.tabuleiro import Tabuleiro
from ..core.movimento import Movimento
from ..core.estado_jogo import ObjetivoFase
from .avaliador import Avaliador

logger = logging.getLogger("royalmatch.ia.mcts")


@dataclass
class NoMCTS:
    """Nó da árvore MCTS."""
    l1: int = 0
    c1: int = 0
    l2: int = 0
    c2: int = 0
    tabuleiro: Optional[Tabuleiro] = None
    pai: Optional["NoMCTS"] = None
    filhos: List["NoMCTS"] = field(default_factory=list)
    visitas: int = 0
    valor_total: float = 0.0
    pontos_movimento: int = 0
    movimentos_nao_explorados: List[Tuple[int, int, int, int]] = field(default_factory=list)

    @property
    def valor_medio(self) -> float:
        if self.visitas == 0:
            return 0.0
        return self.valor_total / self.visitas

    def ucb1(self, c: float = 1.414, visitas_pai: int = 1) -> float:
        """Upper Confidence Bound para exploração/explotação."""
        if self.visitas == 0:
            return float("inf")
        exploracao = c * math.sqrt(math.log(visitas_pai) / self.visitas)
        return self.valor_medio + exploracao

    def esta_totalmente_expandido(self) -> bool:
        return len(self.movimentos_nao_explorados) == 0

    def melhor_filho(self, c: float = 1.414) -> Optional["NoMCTS"]:
        if not self.filhos:
            return None
        return max(self.filhos, key=lambda f: f.ucb1(c, self.visitas))


class SolucionadorMCTS:
    """
    Monte Carlo Tree Search para o Royal Match.

    Ideal para situações onde o espaço de estados é muito grande
    ou quando há incerteza sobre o tabuleiro (peças desconhecidas).
    """

    def __init__(
        self,
        avaliador: Avaliador,
        iteracoes: int = 500,
        timeout_s: float = 3.0,
        constante_exploracao: float = 1.414,
        profundidade_simulacao: int = 5,
    ):
        self.avaliador = avaliador
        self.iteracoes = iteracoes
        self.timeout_s = timeout_s
        self.c = constante_exploracao
        self.profundidade_simulacao = profundidade_simulacao

        self._iteracoes_executadas: int = 0
        self._tempo_ultima_busca: float = 0.0

    def encontrar_melhor_movimento(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]] = None,
        movimentos_restantes: int = 30,
    ) -> Optional[Movimento]:
        """Encontra o melhor movimento via MCTS."""
        inicio = time.time()
        self._iteracoes_executadas = 0

        # Nó raiz
        movs_disponiveis = tabuleiro.listar_movimentos_possiveis()
        if not movs_disponiveis:
            return None

        raiz = NoMCTS(
            tabuleiro=tabuleiro.copiar(),
            movimentos_nao_explorados=list(movs_disponiveis),
        )

        # Iterações MCTS
        for _ in range(self.iteracoes):
            if time.time() - inicio > self.timeout_s:
                break

            # 1. Seleção
            no = self._selecionar(raiz)

            # 2. Expansão
            if not no.esta_totalmente_expandido() and no.tabuleiro:
                no = self._expandir(no)

            # 3. Simulação
            if no.tabuleiro:
                resultado = self._simular(no.tabuleiro, objetivos, movimentos_restantes)
            else:
                resultado = 0.0

            # 4. Backpropagation
            self._backpropagar(no, resultado)
            self._iteracoes_executadas += 1

        self._tempo_ultima_busca = time.time() - inicio

        # Selecionar melhor filho da raiz
        if not raiz.filhos:
            if movs_disponiveis:
                l1, c1, l2, c2 = movs_disponiveis[0]
                return Movimento(l1, c1, l2, c2, score_ia=0.0)
            return None

        melhor_filho = max(raiz.filhos, key=lambda f: f.visitas)
        melhor_mov = Movimento(
            linha1=melhor_filho.l1,
            coluna1=melhor_filho.c1,
            linha2=melhor_filho.l2,
            coluna2=melhor_filho.c2,
            score_ia=melhor_filho.valor_medio,
        )

        logger.debug(
            f"MCTS: {self._iteracoes_executadas} iterações em "
            f"{self._tempo_ultima_busca*1000:.0f}ms | "
            f"Melhor: {melhor_mov} (visitas: {melhor_filho.visitas})"
        )
        return melhor_mov

    def _selecionar(self, no: NoMCTS) -> NoMCTS:
        """Seleciona o nó mais promissor seguindo UCB1."""
        atual = no
        while atual.esta_totalmente_expandido() and atual.filhos:
            filho = atual.melhor_filho(self.c)
            if filho is None:
                break
            atual = filho
        return atual

    def _expandir(self, no: NoMCTS) -> NoMCTS:
        """Expande um nó não totalmente explorado."""
        if not no.movimentos_nao_explorados or no.tabuleiro is None:
            return no

        # Escolher movimento aleatório dos não explorados
        idx = random.randint(0, len(no.movimentos_nao_explorados) - 1)
        (l1, c1, l2, c2) = no.movimentos_nao_explorados.pop(idx)

        pontos, novo_tab = no.tabuleiro.simular_movimento(l1, c1, l2, c2)
        movs_novos = novo_tab.listar_movimentos_possiveis()

        novo_no = NoMCTS(
            l1=l1, c1=c1, l2=l2, c2=c2,
            tabuleiro=novo_tab,
            pai=no,
            pontos_movimento=pontos,
            movimentos_nao_explorados=list(movs_novos),
        )
        no.filhos.append(novo_no)
        return novo_no

    def _simular(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]],
        movimentos_restantes: int,
    ) -> float:
        """
        Simulação aleatória (rollout) até o limite de profundidade.
        Retorna a pontuação de avaliação final.
        """
        tab_simulado = tabuleiro.copiar()
        pontos_total = 0

        for _ in range(self.profundidade_simulacao):
            movs = tab_simulado.listar_movimentos_possiveis()
            if not movs:
                break

            # Política de simulação: escolher movimento aleatório
            # (com leve preferência por movimentos que geram combinações)
            mov = self._politica_simulacao(tab_simulado, movs)
            pontos, tab_simulado = tab_simulado.simular_movimento(*mov)
            pontos_total += pontos

        score_final = self.avaliador.avaliar(tab_simulado, objetivos, movimentos_restantes)
        return score_final + pontos_total * 0.1

    def _politica_simulacao(
        self, tabuleiro: Tabuleiro, movimentos: List[Tuple[int, int, int, int]]
    ) -> Tuple[int, int, int, int]:
        """
        Política de rollout: 70% dos movimentos têm alguma preferência,
        30% são completamente aleatórios (exploração).
        """
        if random.random() < 0.3 or len(movimentos) == 1:
            return random.choice(movimentos)

        # Avaliar uma amostra dos movimentos
        amostra = random.sample(movimentos, min(5, len(movimentos)))
        scores = []
        for mov in amostra:
            pontos, _ = tabuleiro.simular_movimento(*mov)
            scores.append((pontos, mov))

        scores.sort(reverse=True)
        # Com 60% de chance, escolher o melhor da amostra
        if random.random() < 0.6:
            return scores[0][1]
        return random.choice(amostra)

    def _backpropagar(self, no: NoMCTS, resultado: float) -> None:
        """Propaga o resultado de volta até a raiz."""
        atual: Optional[NoMCTS] = no
        while atual is not None:
            atual.visitas += 1
            atual.valor_total += resultado
            atual = atual.pai

    @property
    def estatisticas(self) -> dict:
        return {
            "iteracoes": self._iteracoes_executadas,
            "tempo_ms": round(self._tempo_ultima_busca * 1000, 1),
        }
