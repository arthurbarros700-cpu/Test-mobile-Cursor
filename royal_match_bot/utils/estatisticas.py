"""
Sistema de estatísticas e métricas do Royal Match Bot.
Rastreia desempenho, progresso e histórico de fases.
"""

import json
import time
import logging
from dataclasses import dataclass, field, asdict
from typing import List, Optional, Dict
from pathlib import Path

logger = logging.getLogger("royalmatch.utils.estatisticas")


@dataclass
class EstatisticasFase:
    """Estatísticas de uma fase específica."""
    numero_fase: int = 0
    tentativa: int = 1
    resultado: str = "pendente"   # "vitoria", "derrota", "abandonada"
    movimentos_usados: int = 0
    movimentos_totais: int = 30
    pontuacao: int = 0
    tempo_segundos: float = 0.0
    timestamp_inicio: float = field(default_factory=time.time)
    timestamp_fim: float = 0.0
    combos_maximos: int = 0
    powerups_usados: int = 0
    boosters_usados: int = 0
    confianca_media_ia: float = 0.0
    algoritmo_ia: str = ""

    @property
    def tempo_por_movimento(self) -> float:
        if self.movimentos_usados == 0:
            return 0.0
        return self.tempo_segundos / self.movimentos_usados

    @property
    def eficiencia(self) -> float:
        """Eficiência de uso de movimentos (0-100%)."""
        if self.movimentos_totais == 0:
            return 0.0
        sobras = self.movimentos_totais - self.movimentos_usados
        return (sobras / self.movimentos_totais) * 100

    def finalizar(self, resultado: str) -> None:
        self.resultado = resultado
        self.timestamp_fim = time.time()
        self.tempo_segundos = self.timestamp_fim - self.timestamp_inicio


@dataclass
class EstatisticasGerais:
    """Estatísticas gerais de todas as sessões."""
    total_fases_jogadas: int = 0
    total_vitorias: int = 0
    total_derrotas: int = 0
    fase_mais_alta: int = 0
    pontuacao_total: int = 0
    tempo_total_horas: float = 0.0
    total_movimentos: int = 0
    total_boosters_usados: int = 0
    sessoes: int = 0
    data_inicio: str = ""

    @property
    def taxa_vitoria_pct(self) -> float:
        total = self.total_vitorias + self.total_derrotas
        if total == 0:
            return 0.0
        return (self.total_vitorias / total) * 100

    @property
    def media_movimentos_por_fase(self) -> float:
        if self.total_fases_jogadas == 0:
            return 0.0
        return self.total_movimentos / self.total_fases_jogadas


class GerenciadorEstatisticas:
    """Gerencia coleta, armazenamento e relatório de estatísticas."""

    def __init__(self, arquivo_stats: str = "logs/estatisticas.json"):
        self.arquivo_stats = Path(arquivo_stats)
        self.fase_atual: Optional[EstatisticasFase] = None
        self.historico_fases: List[EstatisticasFase] = []
        self.gerais = EstatisticasGerais()
        self._carregar()

    def iniciar_fase(self, numero_fase: int, movimentos_totais: int = 30) -> None:
        """Registra início de uma nova fase."""
        tentativa = self._contar_tentativas(numero_fase) + 1
        self.fase_atual = EstatisticasFase(
            numero_fase=numero_fase,
            tentativa=tentativa,
            movimentos_totais=movimentos_totais,
        )
        logger.debug(f"Estatísticas: início da fase {numero_fase} (tentativa {tentativa})")

    def registrar_movimento(
        self,
        pontos: int = 0,
        combo: int = 0,
        usou_powerup: bool = False,
        usou_booster: bool = False,
        confianca_ia: float = 0.0,
        algoritmo: str = "",
    ) -> None:
        """Registra dados de um movimento executado."""
        if not self.fase_atual:
            return

        self.fase_atual.movimentos_usados += 1
        self.fase_atual.pontuacao += pontos
        self.fase_atual.combos_maximos = max(self.fase_atual.combos_maximos, combo)

        if usou_powerup:
            self.fase_atual.powerups_usados += 1
        if usou_booster:
            self.fase_atual.boosters_usados += 1
        if confianca_ia > 0:
            n = self.fase_atual.movimentos_usados
            media_ant = self.fase_atual.confianca_media_ia
            self.fase_atual.confianca_media_ia = (media_ant * (n - 1) + confianca_ia) / n
        if algoritmo:
            self.fase_atual.algoritmo_ia = algoritmo

    def finalizar_fase(self, vitoria: bool) -> EstatisticasFase:
        """Registra fim de uma fase e atualiza estatísticas gerais."""
        if not self.fase_atual:
            self.fase_atual = EstatisticasFase()

        resultado = "vitoria" if vitoria else "derrota"
        self.fase_atual.finalizar(resultado)

        self.historico_fases.append(self.fase_atual)

        # Atualizar estatísticas gerais
        self.gerais.total_fases_jogadas += 1
        if vitoria:
            self.gerais.total_vitorias += 1
            self.gerais.fase_mais_alta = max(
                self.gerais.fase_mais_alta, self.fase_atual.numero_fase
            )
        else:
            self.gerais.total_derrotas += 1

        self.gerais.pontuacao_total += self.fase_atual.pontuacao
        self.gerais.tempo_total_horas += self.fase_atual.tempo_segundos / 3600
        self.gerais.total_movimentos += self.fase_atual.movimentos_usados
        self.gerais.total_boosters_usados += self.fase_atual.boosters_usados

        fase_finalizada = self.fase_atual
        self.fase_atual = None

        self._salvar()
        self._imprimir_resumo_fase(fase_finalizada)
        return fase_finalizada

    def _contar_tentativas(self, numero_fase: int) -> int:
        return sum(1 for f in self.historico_fases if f.numero_fase == numero_fase)

    def relatorio_completo(self) -> str:
        """Gera relatório completo em texto."""
        linhas = [
            "═" * 55,
            "       ROYAL MATCH BOT - RELATÓRIO DE DESEMPENHO",
            "═" * 55,
            f"  Fases jogadas:      {self.gerais.total_fases_jogadas}",
            f"  Vitórias:           {self.gerais.total_vitorias} "
            f"({self.gerais.taxa_vitoria_pct:.1f}%)",
            f"  Derrotas:           {self.gerais.total_derrotas}",
            f"  Fase mais alta:     {self.gerais.fase_mais_alta}",
            f"  Pontuação total:    {self.gerais.pontuacao_total:,}",
            f"  Tempo total:        {self.gerais.tempo_total_horas:.1f}h",
            f"  Total movimentos:   {self.gerais.total_movimentos:,}",
            f"  Boosters usados:    {self.gerais.total_boosters_usados}",
            "─" * 55,
        ]

        if self.historico_fases:
            linhas.append("  ÚLTIMAS 5 FASES:")
            for fase in self.historico_fases[-5:]:
                emoji = "✓" if fase.resultado == "vitoria" else "✗"
                linhas.append(
                    f"  {emoji} Fase {fase.numero_fase:3d} | "
                    f"Tentativa {fase.tentativa} | "
                    f"{fase.movimentos_usados}/{fase.movimentos_totais} movimentos | "
                    f"{fase.pontuacao:,} pts | "
                    f"{fase.tempo_segundos:.0f}s"
                )

        linhas.append("═" * 55)
        return "\n".join(linhas)

    def _imprimir_resumo_fase(self, fase: EstatisticasFase) -> None:
        emoji = "✓" if fase.resultado == "vitoria" else "✗"
        logger.info(
            f"{emoji} Fase {fase.numero_fase} finalizada | "
            f"Resultado: {fase.resultado.upper()} | "
            f"Movimentos: {fase.movimentos_usados}/{fase.movimentos_totais} | "
            f"Pontos: {fase.pontuacao:,} | "
            f"Tempo: {fase.tempo_segundos:.1f}s"
        )

    def _salvar(self) -> None:
        """Salva estatísticas em arquivo JSON."""
        try:
            self.arquivo_stats.parent.mkdir(parents=True, exist_ok=True)
            dados = {
                "gerais": asdict(self.gerais),
                "historico": [asdict(f) for f in self.historico_fases[-100:]],
            }
            with open(self.arquivo_stats, "w", encoding="utf-8") as f:
                json.dump(dados, f, ensure_ascii=False, indent=2)
        except Exception as e:
            logger.error(f"Erro ao salvar estatísticas: {e}")

    def _carregar(self) -> None:
        """Carrega estatísticas de arquivo JSON."""
        if not self.arquivo_stats.exists():
            return
        try:
            with open(self.arquivo_stats, "r", encoding="utf-8") as f:
                dados = json.load(f)

            gerais = dados.get("gerais", {})
            self.gerais = EstatisticasGerais(**{
                k: v for k, v in gerais.items()
                if k in EstatisticasGerais.__dataclass_fields__
            })
        except Exception as e:
            logger.warning(f"Erro ao carregar estatísticas: {e}")
