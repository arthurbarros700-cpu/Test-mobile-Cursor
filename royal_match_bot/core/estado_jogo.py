"""
Estado completo do jogo Royal Match em um dado momento.
Inclui informações de fase, objetivos, vidas e progresso.
"""

from dataclasses import dataclass, field
from enum import Enum, auto
from typing import Dict, List, Optional
from .pecas import TipoPeca, TipoPowerUp
from .tabuleiro import Tabuleiro


class TipoObjetivo(Enum):
    """Tipos de objetivo que uma fase pode ter."""
    COLETAR_PECA = "coletar_peca"           # Coletar N peças de uma cor
    REMOVER_OBSTACULO = "remover_obstaculo"  # Remover obstáculos do tabuleiro
    ATINGIR_PONTUACAO = "atingir_pontuacao"  # Atingir X pontos
    LIMPAR_GELO = "limpar_gelo"              # Remover todas as peças de gelo
    ACENDER_VELAS = "acender_velas"          # Acender velas especiais
    COLETAR_CHAVE = "coletar_chave"          # Coletar chaves
    ABRIR_CAIXA = "abrir_caixa"             # Destruir caixas
    LIBERAR_BOLHA = "liberar_bolha"          # Libertar peças em bolhas
    PREENCHER_AREA = "preencher_area"        # Preencher área com cascata


class EstadoFase(Enum):
    """Estado atual da fase de jogo."""
    NAO_INICIADA = "nao_iniciada"
    EM_PROGRESSO = "em_progresso"
    VITORIA = "vitoria"
    DERROTA = "derrota"
    PAUSADA = "pausada"


@dataclass
class ObjetivoFase:
    """Um objetivo específico dentro de uma fase."""
    tipo: TipoObjetivo
    alvo_cor: Optional[TipoPeca] = None
    quantidade_necessaria: int = 0
    quantidade_atual: int = 0
    descricao: str = ""

    @property
    def concluido(self) -> bool:
        return self.quantidade_atual >= self.quantidade_necessaria

    @property
    def progresso_pct(self) -> float:
        if self.quantidade_necessaria == 0:
            return 100.0
        return min(100.0, (self.quantidade_atual / self.quantidade_necessaria) * 100)

    def incrementar(self, quantidade: int = 1) -> None:
        self.quantidade_atual = min(
            self.quantidade_necessaria,
            self.quantidade_atual + quantidade
        )

    def __str__(self) -> str:
        if self.descricao:
            return f"{self.descricao}: {self.quantidade_atual}/{self.quantidade_necessaria}"
        return f"{self.tipo.value}: {self.quantidade_atual}/{self.quantidade_necessaria}"


@dataclass
class FaseInfo:
    """Informações sobre a fase atual."""
    numero: int = 0
    nome: str = ""
    movimentos_restantes: int = 30
    movimentos_totais: int = 30
    objetivos: List[ObjetivoFase] = field(default_factory=list)
    estado: EstadoFase = EstadoFase.NAO_INICIADA
    tentativas: int = 0
    pontuacao: int = 0
    estrelas: int = 0  # 0-3 estrelas

    @property
    def todos_objetivos_concluidos(self) -> bool:
        return all(obj.concluido for obj in self.objetivos)

    @property
    def movimentos_usados(self) -> int:
        return self.movimentos_totais - self.movimentos_restantes

    def objetivo_principal(self) -> Optional[ObjetivoFase]:
        """Retorna o objetivo mais próximo de ser concluído."""
        incompletos = [o for o in self.objetivos if not o.concluido]
        if not incompletos:
            return None
        return min(incompletos, key=lambda o: o.quantidade_necessaria - o.quantidade_atual)

    def progresso_geral(self) -> float:
        """Progresso médio de todos os objetivos (0-100)."""
        if not self.objetivos:
            return 0.0
        return sum(o.progresso_pct for o in self.objetivos) / len(self.objetivos)


@dataclass
class EstadoJogo:
    """Estado completo do jogo em um dado momento."""
    tabuleiro: Tabuleiro = field(default_factory=Tabuleiro)
    fase: FaseInfo = field(default_factory=FaseInfo)
    vidas: int = 5
    vidas_maximas: int = 5
    moedas: int = 0
    estrelas_totais: int = 0
    boosters_disponiveis: Dict[TipoPowerUp, int] = field(default_factory=dict)

    # Metadados de detecção
    tela_atual: str = "desconhecida"
    confianca_deteccao: float = 0.0
    timestamp: float = 0.0

    def tem_vidas(self) -> bool:
        return self.vidas > 0

    def pode_jogar(self) -> bool:
        return (
            self.tem_vidas()
            and self.fase.estado in (EstadoFase.NAO_INICIADA, EstadoFase.EM_PROGRESSO)
            and self.fase.movimentos_restantes > 0
        )

    def booster_disponivel(self, tipo: TipoPowerUp) -> int:
        return self.boosters_disponiveis.get(tipo, 0)

    def resumo(self) -> str:
        return (
            f"Fase {self.fase.numero} | "
            f"Movimentos: {self.fase.movimentos_restantes}/{self.fase.movimentos_totais} | "
            f"Vidas: {self.vidas}/{self.vidas_maximas} | "
            f"Pontuação: {self.fase.pontuacao:,} | "
            f"Progresso: {self.fase.progresso_geral():.0f}%"
        )
