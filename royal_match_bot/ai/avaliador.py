"""
Função de avaliação de estados do tabuleiro.
Heurísticas para determinar a qualidade de um estado de jogo.
"""

import logging
from typing import List, Optional, Dict
from ..core.tabuleiro import Tabuleiro
from ..core.pecas import TipoPeca, TipoPowerUp
from ..core.estado_jogo import EstadoJogo, ObjetivoFase, TipoObjetivo

logger = logging.getLogger("royalmatch.ia.avaliador")


class Avaliador:
    """
    Avalia a qualidade de um estado de tabuleiro para o motor de IA.

    Combina múltiplas heurísticas com pesos configuráveis:
    - Progressão dos objetivos da fase
    - Pontuação potencial (combos possíveis)
    - Geração de power-ups
    - Distribuição de peças (evitar isolamento)
    - Proximidade de combos em cascata
    """

    def __init__(
        self,
        peso_objetivo: float = 10.0,
        peso_pontuacao: float = 1.0,
        peso_powerup: float = 3.0,
        peso_combo: float = 2.5,
        peso_distribuicao: float = 0.5,
        priorizar_objetivos: bool = True,
    ):
        self.peso_objetivo = peso_objetivo
        self.peso_pontuacao = peso_pontuacao
        self.peso_powerup = peso_powerup
        self.peso_combo = peso_combo
        self.peso_distribuicao = peso_distribuicao
        self.priorizar_objetivos = priorizar_objetivos

    def avaliar(
        self,
        tabuleiro: Tabuleiro,
        objetivos: Optional[List[ObjetivoFase]] = None,
        movimentos_restantes: int = 30,
    ) -> float:
        """
        Avalia o estado atual do tabuleiro.

        Returns:
            Pontuação de avaliação (maior = melhor).
        """
        score = 0.0

        # ── Componente 1: Progresso dos objetivos ─────────────────────────
        if objetivos and self.priorizar_objetivos:
            score_obj = self._avaliar_objetivos(tabuleiro, objetivos, movimentos_restantes)
            score += score_obj * self.peso_objetivo

        # ── Componente 2: Pontuação base ──────────────────────────────────
        score += tabuleiro.pontuacao * self.peso_pontuacao

        # ── Componente 3: Power-ups disponíveis ───────────────────────────
        score_pu = self._contar_powerups(tabuleiro)
        score += score_pu * self.peso_powerup

        # ── Componente 4: Potencial de combos ────────────────────────────
        score_combo = self._avaliar_potencial_combo(tabuleiro)
        score += score_combo * self.peso_combo

        # ── Componente 5: Distribuição de peças ──────────────────────────
        score_dist = self._avaliar_distribuicao(tabuleiro)
        score += score_dist * self.peso_distribuicao

        return score

    def _avaliar_objetivos(
        self,
        tabuleiro: Tabuleiro,
        objetivos: List[ObjetivoFase],
        movimentos_restantes: int,
    ) -> float:
        """Avalia quão perto estamos de completar os objetivos."""
        score = 0.0
        for obj in objetivos:
            if obj.concluido:
                score += 100.0
                continue

            progresso = obj.progresso_pct / 100.0

            # Maior urgência quando poucos movimentos restam
            urgencia = 1.0 + max(0, (20 - movimentos_restantes) / 20.0) * 2.0
            score += progresso * 80.0 * urgencia

            # Bônus por proximidade de conclusão
            restante = obj.quantidade_necessaria - obj.quantidade_atual
            if restante <= 3:
                score += (4 - restante) * 20.0

            # Penalizar objetivos de coletar peças com poucos movimentos
            if obj.tipo == TipoObjetivo.COLETAR_PECA and obj.alvo_cor:
                disponiveis = self._contar_cor_no_tabuleiro(tabuleiro, obj.alvo_cor)
                if disponiveis == 0:
                    score -= 50.0
                else:
                    score += min(disponiveis, restante) * 5.0

        return score

    def _contar_cor_no_tabuleiro(
        self, tabuleiro: Tabuleiro, cor: TipoPeca
    ) -> int:
        count = 0
        for l in range(tabuleiro.linhas):
            for c in range(tabuleiro.colunas):
                peca = tabuleiro.obter_peca(l, c)
                if peca and peca.tipo == cor:
                    count += 1
        return count

    def _contar_powerups(self, tabuleiro: Tabuleiro) -> float:
        """Conta power-ups no tabuleiro com pesos por tipo."""
        pesos = {
            TipoPowerUp.DISCO_MAGICO: 8.0,
            TipoPowerUp.BOMBA: 5.0,
            TipoPowerUp.HELICE: 3.0,
            TipoPowerUp.FOGUETE_H: 2.0,
            TipoPowerUp.FOGUETE_V: 2.0,
        }
        total = 0.0
        for l in range(tabuleiro.linhas):
            for c in range(tabuleiro.colunas):
                peca = tabuleiro.obter_peca(l, c)
                if peca and peca.eh_powerup():
                    total += pesos.get(peca.powerup, 1.0)
        return total

    def _avaliar_potencial_combo(self, tabuleiro: Tabuleiro) -> float:
        """
        Avalia o potencial de fazer combos no estado atual.
        Conta grupos de 2 peças da mesma cor (quase-combos).
        """
        score = 0.0
        tipos_contados: Dict[TipoPeca, List] = {t: [] for t in TipoPeca.cores()}

        for l in range(tabuleiro.linhas):
            for c in range(tabuleiro.colunas):
                peca = tabuleiro.obter_peca(l, c)
                if peca and peca.tipo in tipos_contados:
                    tipos_contados[peca.tipo].append((l, c))

        for tipo, posicoes in tipos_contados.items():
            if len(posicoes) >= 3:
                score += self._calcular_adjacencia(posicoes)

        return score

    def _calcular_adjacencia(self, posicoes: List) -> float:
        """Calcula pontuação baseada na adjacência entre peças da mesma cor."""
        score = 0.0
        pos_set = set(posicoes)
        for (l, c) in posicoes:
            vizinhos = [(l, c+1), (l+1, c), (l, c-1), (l-1, c)]
            adjacentes = sum(1 for v in vizinhos if v in pos_set)
            score += adjacentes * 2.0
            # Bônus para grupos de 2+ adjacentes (quase-combo)
            if adjacentes >= 2:
                score += 5.0
        return score

    def _avaliar_distribuicao(self, tabuleiro: Tabuleiro) -> float:
        """
        Avalia a distribuição de peças.
        Penaliza estados com peças muito isoladas.
        """
        score = 0.0
        for l in range(tabuleiro.linhas):
            for c in range(tabuleiro.colunas):
                peca = tabuleiro.obter_peca(l, c)
                if not peca or peca.tipo == TipoPeca.VAZIO:
                    continue

                # Contar vizinhos da mesma cor
                vizinhos_iguais = 0
                for dl, dc in [(0, 1), (1, 0), (0, -1), (-1, 0)]:
                    vizinho = tabuleiro.obter_peca(l + dl, c + dc)
                    if vizinho and vizinho.tipo == peca.tipo:
                        vizinhos_iguais += 1

                # Peças isoladas recebem penalidade
                if vizinhos_iguais == 0:
                    score -= 1.0
                else:
                    score += vizinhos_iguais * 0.5

        return score

    def avaliar_movimento(
        self,
        tabuleiro: Tabuleiro,
        l1: int, c1: int, l2: int, c2: int,
        objetivos: Optional[List[ObjetivoFase]] = None,
        movimentos_restantes: int = 30,
    ) -> float:
        """
        Avalia um movimento específico simulando-o e avaliando o resultado.
        """
        pontos, novo_tabuleiro = tabuleiro.simular_movimento(l1, c1, l2, c2)

        # Verificar se o movimento gerou alguma combinação
        combinacoes_antes = len(tabuleiro.encontrar_combinacoes())
        if pontos == 0 and combinacoes_antes == 0:
            return -100.0  # Movimento inútil

        score_base = pontos * self.peso_pontuacao
        score_estado = self.avaliar(novo_tabuleiro, objetivos, movimentos_restantes - 1)

        return score_base + score_estado * 0.3
