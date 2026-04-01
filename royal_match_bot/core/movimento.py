"""
Representação de movimentos e seus resultados no Royal Match.
"""

from dataclasses import dataclass, field
from typing import List, Optional, Tuple
from .pecas import TipoPowerUp


@dataclass
class Movimento:
    """Representa um movimento (troca de peças) no tabuleiro."""
    linha1: int
    coluna1: int
    linha2: int
    coluna2: int
    score_ia: float = 0.0          # Pontuação estimada pela IA
    descricao: str = ""            # Descrição legível do movimento
    usa_powerup: bool = False      # Se ativa um power-up
    tipo_powerup: TipoPowerUp = TipoPowerUp.NENHUM

    @property
    def eh_horizontal(self) -> bool:
        return self.linha1 == self.linha2

    @property
    def direcao(self) -> str:
        if self.linha1 == self.linha2:
            return "direita" if self.coluna2 > self.coluna1 else "esquerda"
        return "baixo" if self.linha2 > self.linha1 else "cima"

    def __str__(self) -> str:
        return (
            f"({self.linha1},{self.coluna1}) → ({self.linha2},{self.coluna2}) "
            f"[score={self.score_ia:.1f}, dir={self.direcao}]"
        )

    def __repr__(self) -> str:
        return (
            f"Movimento(l1={self.linha1}, c1={self.coluna1}, "
            f"l2={self.linha2}, c2={self.coluna2}, score={self.score_ia:.2f})"
        )


@dataclass
class ResultadoMovimento:
    """Resultado completo de um movimento executado."""
    movimento: Movimento
    sucesso: bool = False
    pontos_obtidos: int = 0
    combo_maximo: int = 0
    powerups_ativados: List[TipoPowerUp] = field(default_factory=list)
    pecas_removidas: int = 0
    objetivos_progredidos: List[str] = field(default_factory=list)
    movimentos_restantes: int = 0
    fase_concluida: bool = False
    tempo_execucao_ms: float = 0.0
    erro: str = ""

    def __str__(self) -> str:
        if not self.sucesso:
            return f"Movimento FALHOU: {self.erro}"
        return (
            f"Movimento OK | +{self.pontos_obtidos:,} pts | "
            f"Combo x{self.combo_maximo} | "
            f"{self.pecas_removidas} peças removidas"
        )
