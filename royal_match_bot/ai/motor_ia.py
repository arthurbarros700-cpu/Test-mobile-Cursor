"""
Motor principal de IA do Royal Match Bot.
Orquestra os diferentes algoritmos e escolhe o melhor movimento.
"""

import time
import logging
from dataclasses import dataclass, field
from typing import Optional, List, Dict

from ..core.tabuleiro import Tabuleiro
from ..core.movimento import Movimento
from ..core.estado_jogo import EstadoJogo, ObjetivoFase, TipoObjetivo
from ..core.pecas import TipoPeca, TipoPowerUp
from .avaliador import Avaliador
from .solucionador_beam import SolucionadorBeamSearch
from .solucionador_minimax import SolucionadorMinimax
from .solucionador_mcts import SolucionadorMCTS

logger = logging.getLogger("royalmatch.ia.motor")


@dataclass
class ResultadoAnalise:
    """Resultado completo da análise da IA."""
    movimento_recomendado: Optional[Movimento] = None
    score_movimento: float = 0.0
    algoritmo_usado: str = ""
    tempo_analise_ms: float = 0.0
    movimentos_alternativos: List[Movimento] = field(default_factory=list)
    usar_booster: bool = False
    booster_recomendado: TipoPowerUp = TipoPowerUp.NENHUM
    booster_linha: int = -1
    booster_coluna: int = -1
    descricao: str = ""
    confianca: float = 0.0


class MotorIA:
    """
    Motor de inteligência artificial híbrido.

    Seleciona automaticamente o algoritmo mais adequado:
    - Beam Search: rápido, bom equilíbrio geral
    - Minimax: melhor para fim de jogo (poucos movimentos)
    - MCTS: melhor para início de fase ou tabuleiro complexo
    - Híbrido: combina múltiplos algoritmos e vota no melhor

    Também detecta situações especiais e recomenda uso de boosters.
    """

    def __init__(
        self,
        algoritmo: str = "hibrido",
        peso_combo: float = 2.5,
        peso_powerup: float = 3.0,
        priorizar_objetivos: bool = True,
        profundidade_minimax: int = 4,
        largura_beam: int = 12,
        iteracoes_mcts: int = 500,
    ):
        self.algoritmo = algoritmo.lower()

        self.avaliador = Avaliador(
            peso_combo=peso_combo,
            peso_powerup=peso_powerup,
            priorizar_objetivos=priorizar_objetivos,
        )

        self.beam = SolucionadorBeamSearch(
            avaliador=self.avaliador,
            largura_beam=largura_beam,
            profundidade_maxima=3,
            timeout_s=1.5,
        )

        self.minimax = SolucionadorMinimax(
            avaliador=self.avaliador,
            profundidade_maxima=profundidade_minimax,
            timeout_s=2.0,
        )

        self.mcts = SolucionadorMCTS(
            avaliador=self.avaliador,
            iteracoes=iteracoes_mcts,
            timeout_s=2.5,
        )

        self._total_analises: int = 0
        self._tempo_total_ms: float = 0.0
        self._historico_movimentos: List[Movimento] = []

    def analisar(
        self,
        estado: EstadoJogo,
        forcar_algoritmo: Optional[str] = None,
    ) -> ResultadoAnalise:
        """
        Analisa o estado atual e retorna a melhor ação recomendada.

        Args:
            estado: Estado completo do jogo
            forcar_algoritmo: Se especificado, usa este algoritmo

        Returns:
            ResultadoAnalise com o movimento ou booster recomendado
        """
        inicio = time.time()
        self._total_analises += 1

        tabuleiro = estado.tabuleiro
        objetivos = estado.fase.objetivos
        movimentos_restantes = estado.fase.movimentos_restantes

        # ── Verificar situações críticas primeiro ──────────────────────────
        analise_critica = self._verificar_situacao_critica(estado)
        if analise_critica:
            analise_critica.tempo_analise_ms = (time.time() - inicio) * 1000
            return analise_critica

        # ── Selecionar algoritmo ──────────────────────────────────────────
        algoritmo = forcar_algoritmo or self._selecionar_algoritmo(estado)

        movimento = self._executar_algoritmo(
            algoritmo, tabuleiro, objetivos, movimentos_restantes
        )

        # ── Validar e criar resultado ─────────────────────────────────────
        tempo_ms = (time.time() - inicio) * 1000
        self._tempo_total_ms += tempo_ms

        if movimento:
            self._historico_movimentos.append(movimento)
            if len(self._historico_movimentos) > 50:
                self._historico_movimentos.pop(0)

        resultado = ResultadoAnalise(
            movimento_recomendado=movimento,
            score_movimento=movimento.score_ia if movimento else 0.0,
            algoritmo_usado=algoritmo,
            tempo_analise_ms=tempo_ms,
            confianca=self._calcular_confianca(movimento, tabuleiro),
        )

        if movimento:
            resultado.descricao = self._descrever_movimento(movimento, tabuleiro, objetivos)

        logger.info(
            f"[IA/{algoritmo.upper()}] {resultado.descricao} | "
            f"Score: {resultado.score_movimento:.1f} | {tempo_ms:.0f}ms"
        )
        return resultado

    def _selecionar_algoritmo(self, estado: EstadoJogo) -> str:
        """Seleciona o algoritmo mais adequado para a situação."""
        if self.algoritmo != "hibrido":
            return self.algoritmo

        movimentos = estado.fase.movimentos_restantes

        # Fim de fase: usar minimax (mais preciso com poucos movimentos)
        if movimentos <= 5:
            return "minimax"

        # Início de fase: usar MCTS (mais exploratório)
        if movimentos >= estado.fase.movimentos_totais - 3:
            return "mcts"

        # Estado normal: beam search (rápido e eficiente)
        return "beam_search"

    def _executar_algoritmo(
        self,
        algoritmo: str,
        tabuleiro: Tabuleiro,
        objetivos: List[ObjetivoFase],
        movimentos_restantes: int,
    ) -> Optional[Movimento]:
        """Executa o algoritmo especificado."""
        if algoritmo == "minimax":
            return self.minimax.encontrar_melhor_movimento(
                tabuleiro, objetivos, movimentos_restantes
            )
        elif algoritmo == "mcts":
            return self.mcts.encontrar_melhor_movimento(
                tabuleiro, objetivos, movimentos_restantes
            )
        elif algoritmo == "hibrido":
            # Votação: executar dois algoritmos e escolher o melhor
            mov_beam = self.beam.encontrar_melhor_movimento(
                tabuleiro, objetivos, movimentos_restantes
            )
            mov_mcts = self.mcts.encontrar_melhor_movimento(
                tabuleiro, objetivos, movimentos_restantes
            )
            if mov_beam and mov_mcts:
                return mov_beam if mov_beam.score_ia >= mov_mcts.score_ia else mov_mcts
            return mov_beam or mov_mcts
        else:  # beam_search (padrão)
            return self.beam.encontrar_melhor_movimento(
                tabuleiro, objetivos, movimentos_restantes
            )

    def _verificar_situacao_critica(
        self, estado: EstadoJogo
    ) -> Optional[ResultadoAnalise]:
        """Detecta situações críticas que requerem ação especial."""

        # Verificar se usar booster é urgente
        if estado.fase.movimentos_restantes <= 3:
            booster = self._recomendar_booster_urgente(estado)
            if booster:
                return booster

        # Verificar se há power-ups no tabuleiro para ativar
        ativacao = self._verificar_powerups_no_tabuleiro(estado)
        if ativacao:
            return ativacao

        return None

    def _recomendar_booster_urgente(
        self, estado: EstadoJogo
    ) -> Optional[ResultadoAnalise]:
        """Recomenda uso de booster quando a fase está quase perdendo."""
        if not estado.fase.objetivos:
            return None

        objetivos_pendentes = [o for o in estado.fase.objetivos if not o.concluido]
        if not objetivos_pendentes:
            return None

        # Verificar se tem boosters disponíveis
        for tipo in [TipoPowerUp.BOMBA, TipoPowerUp.HELICE, TipoPowerUp.FOGUETE_H]:
            if estado.booster_disponivel(tipo) > 0:
                return ResultadoAnalise(
                    usar_booster=True,
                    booster_recomendado=tipo,
                    algoritmo_usado="critico",
                    descricao=f"Usando booster {tipo.value} (situação crítica!)",
                    confianca=0.90,
                )

        return None

    def _verificar_powerups_no_tabuleiro(
        self, estado: EstadoJogo
    ) -> Optional[ResultadoAnalise]:
        """
        Verifica se há power-ups no tabuleiro que deveriam ser ativados agora.
        Especialmente útil quando há combos de power-ups disponíveis.
        """
        tabuleiro = estado.tabuleiro
        powerups = []

        for l in range(tabuleiro.linhas):
            for c in range(tabuleiro.colunas):
                peca = tabuleiro.obter_peca(l, c)
                if peca and peca.eh_powerup():
                    powerups.append((l, c, peca.powerup))

        # Se há 2+ power-ups adjacentes, ativá-los em combo é muito valioso
        if len(powerups) >= 2:
            for i, (l1, c1, pu1) in enumerate(powerups):
                for (l2, c2, pu2) in powerups[i+1:]:
                    dl = abs(l1 - l2)
                    dc = abs(c1 - c2)
                    if dl + dc == 1:  # Adjacentes
                        # Combo de power-ups!
                        movimento = Movimento(
                            linha1=l1, coluna1=c1,
                            linha2=l2, coluna2=c2,
                            score_ia=500.0,
                            usa_powerup=True,
                            tipo_powerup=pu1,
                        )
                        return ResultadoAnalise(
                            movimento_recomendado=movimento,
                            score_movimento=500.0,
                            algoritmo_usado="powerup_combo",
                            descricao=f"Combo power-up: {pu1.value} + {pu2.value}!",
                            confianca=0.95,
                        )

        return None

    def _calcular_confianca(
        self, movimento: Optional[Movimento], tabuleiro: Tabuleiro
    ) -> float:
        """Calcula a confiança na recomendação."""
        if movimento is None:
            return 0.0

        # Simular o movimento e verificar se gerou combinações
        pontos, _ = tabuleiro.simular_movimento(
            movimento.linha1, movimento.coluna1,
            movimento.linha2, movimento.coluna2
        )

        if pontos > 0:
            return min(0.99, 0.60 + pontos / 1000.0)
        return 0.30

    def _descrever_movimento(
        self,
        movimento: Movimento,
        tabuleiro: Tabuleiro,
        objetivos: List[ObjetivoFase],
    ) -> str:
        """Gera descrição legível do movimento recomendado."""
        peca = tabuleiro.obter_peca(movimento.linha1, movimento.coluna1)
        tipo_str = peca.tipo.value if peca else "peça"
        dir_str = movimento.direcao

        if movimento.usa_powerup:
            return f"Ativar power-up ({tipo_str}) para {dir_str}"
        return f"Mover {tipo_str} ({movimento.linha1},{movimento.coluna1}) → {dir_str}"

    @property
    def estatisticas(self) -> Dict:
        media_ms = self._tempo_total_ms / max(1, self._total_analises)
        return {
            "total_analises": self._total_analises,
            "tempo_medio_ms": round(media_ms, 1),
            "algoritmo": self.algoritmo,
            "beam": self.beam.estatisticas,
            "minimax": self.minimax.estatisticas,
            "mcts": self.mcts.estatisticas,
        }
