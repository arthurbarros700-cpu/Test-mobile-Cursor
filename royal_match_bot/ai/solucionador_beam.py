"""
Solucionador por Beam Search para o Royal Match.
Mantém os N melhores candidatos a cada profundidade.
Balanceia qualidade e velocidade.
"""

import logging
import time
from typing import List, Tuple, Optional
from dataclasses import dataclass, field

from ..core.tabuleiro import Tabuleiro
from ..core.movimento import Movimento
from ..core.estado_jogo import ObjetivoFase
from .avaliador import Avaliador

logger = logging.getLogger("royalmatch.ia.beam_search")


@dataclass
class Candidato:
    """Candidato no Beam Search."""
    tabuleiro: Tabuleiro
    movimentos: List[Movimento] = field(default_factory=list)
    pontuacao_total: int = 0
    score_avaliacao: float = 0.0

    def __lt__(self, outro: "Candidato") -> bool:
        return self.score_avaliacao > outro.score_avaliacao


class SolucionadorBeamSearch:
    """
    Implementação do Beam Search para encontrar a melhor sequência de jogadas.

    O algoritmo mantém os `largura_beam` melhores candidatos a cada nível,
    expandindo cada um com todos os movimentos possíveis e selecionando os
    melhores para a próxima iteração.
    """

    def __init__(
        self,
        avaliador: Avaliador,
        largura_beam: int = 12,
        profundidade_maxima: int = 3,
        timeout_s: float = 2.0,
    ):
        self.avaliador = avaliador
        self.largura_beam = largura_beam
        self.profundidade_maxima = profundidade_maxima
        self.timeout_s = timeout_s

        self._nos_expandidos: int = 0
        self._tempo_ultima_busca: float = 0.0

    def encontrar_melhor_movimento(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]] = None,
        movimentos_restantes: int = 30,
    ) -> Optional[Movimento]:
        """
        Encontra o melhor próximo movimento usando Beam Search.

        Returns:
            Melhor Movimento encontrado, ou None se não houver movimentos.
        """
        inicio = time.time()
        self._nos_expandidos = 0

        candidatos_atuais = [
            Candidato(tabuleiro=tabuleiro.copiar(), movimentos=[], pontuacao_total=0)
        ]

        melhor_movimento: Optional[Movimento] = None
        melhor_score: float = float("-inf")

        for profundidade in range(self.profundidade_maxima):
            if time.time() - inicio > self.timeout_s:
                logger.debug(f"Timeout no Beam Search (profundidade {profundidade})")
                break

            proximos_candidatos: List[Candidato] = []

            for candidato in candidatos_atuais:
                if time.time() - inicio > self.timeout_s:
                    break

                movimentos_possiveis = candidato.tabuleiro.listar_movimentos_possiveis()
                if not movimentos_possiveis:
                    continue

                for (l1, c1, l2, c2) in movimentos_possiveis:
                    self._nos_expandidos += 1
                    pontos, novo_tab = candidato.tabuleiro.simular_movimento(l1, c1, l2, c2)

                    if pontos == 0 and profundidade == 0:
                        continue

                    score = self.avaliador.avaliar(
                        novo_tab, objetivos, movimentos_restantes - profundidade - 1
                    )
                    score_total = candidato.score_avaliacao + score + pontos * 0.1

                    movimento = Movimento(
                        linha1=l1, coluna1=c1,
                        linha2=l2, coluna2=c2,
                        score_ia=score_total,
                    )

                    novo_candidato = Candidato(
                        tabuleiro=novo_tab,
                        movimentos=candidato.movimentos + [movimento],
                        pontuacao_total=candidato.pontuacao_total + pontos,
                        score_avaliacao=score_total,
                    )
                    proximos_candidatos.append(novo_candidato)

                    # Rastrear melhor primeiro movimento
                    if profundidade == 0 and score_total > melhor_score:
                        melhor_score = score_total
                        melhor_movimento = Movimento(
                            linha1=l1, coluna1=c1,
                            linha2=l2, coluna2=c2,
                            score_ia=score_total,
                        )

            if not proximos_candidatos:
                break

            # Ordenar e manter apenas os N melhores
            proximos_candidatos.sort(key=lambda c: c.score_avaliacao, reverse=True)
            candidatos_atuais = proximos_candidatos[:self.largura_beam]

        self._tempo_ultima_busca = time.time() - inicio

        if melhor_movimento is None and candidatos_atuais:
            # Fallback: pegar qualquer movimento válido
            movs = tabuleiro.listar_movimentos_possiveis()
            if movs:
                l1, c1, l2, c2 = movs[0]
                melhor_movimento = Movimento(l1, c1, l2, c2, score_ia=0.0)

        logger.debug(
            f"Beam Search: {self._nos_expandidos} nós em {self._tempo_ultima_busca*1000:.0f}ms"
            f" | Melhor: {melhor_movimento}"
        )
        return melhor_movimento

    def encontrar_sequencia(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]] = None,
        movimentos_restantes: int = 30,
        n_movimentos: int = 3,
    ) -> List[Movimento]:
        """
        Encontra a melhor sequência de N movimentos.
        Útil para planejamento antecipado.
        """
        inicio = time.time()
        candidatos_atuais = [
            Candidato(tabuleiro=tabuleiro.copiar())
        ]
        melhor_sequencia: List[Movimento] = []
        melhor_score = float("-inf")

        for _ in range(n_movimentos):
            if time.time() - inicio > self.timeout_s:
                break

            proximos: List[Candidato] = []
            for cand in candidatos_atuais:
                for (l1, c1, l2, c2) in cand.tabuleiro.listar_movimentos_possiveis():
                    pontos, novo_tab = cand.tabuleiro.simular_movimento(l1, c1, l2, c2)
                    score = self.avaliador.avaliar(novo_tab, objetivos, movimentos_restantes)
                    total = cand.score_avaliacao + score + pontos * 0.1
                    mov = Movimento(l1, c1, l2, c2, score_ia=total)
                    proximos.append(Candidato(
                        tabuleiro=novo_tab,
                        movimentos=cand.movimentos + [mov],
                        pontuacao_total=cand.pontuacao_total + pontos,
                        score_avaliacao=total,
                    ))

            if not proximos:
                break

            proximos.sort(key=lambda c: c.score_avaliacao, reverse=True)
            candidatos_atuais = proximos[:self.largura_beam]

            if candidatos_atuais and candidatos_atuais[0].score_avaliacao > melhor_score:
                melhor_score = candidatos_atuais[0].score_avaliacao
                melhor_sequencia = candidatos_atuais[0].movimentos

        return melhor_sequencia

    @property
    def estatisticas(self) -> dict:
        return {
            "nos_expandidos": self._nos_expandidos,
            "tempo_ms": round(self._tempo_ultima_busca * 1000, 1),
            "largura_beam": self.largura_beam,
        }
