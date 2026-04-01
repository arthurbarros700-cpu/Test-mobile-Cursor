"""
Definição de todas as peças do Royal Match.
Inclui peças normais, power-ups e obstáculos.
"""

from enum import Enum, auto
from dataclasses import dataclass, field
from typing import Optional


class TipoPeca(Enum):
    """Tipos de peças básicas (por cor/forma)."""
    AZUL = "azul"
    VERMELHO = "vermelho"
    AMARELO = "amarelo"
    VERDE = "verde"
    ROXO = "roxo"
    ROSA = "rosa"
    VAZIO = "vazio"
    DESCONHECIDO = "desconhecido"

    @classmethod
    def cores(cls):
        """Retorna apenas os tipos que representam peças coloridas jogáveis."""
        return [cls.AZUL, cls.VERMELHO, cls.AMARELO, cls.VERDE, cls.ROXO, cls.ROSA]


class TipoPowerUp(Enum):
    """Power-ups gerados por combos especiais."""
    FOGUETE_H = "foguete_horizontal"       # 4 em linha horizontal
    FOGUETE_V = "foguete_vertical"         # 4 em linha vertical
    HELICE = "helice"                      # combo em L ou T
    BOMBA = "bomba"                        # 5 em L ou T especial
    DISCO_MAGICO = "disco_magico"          # 5 em linha
    NENHUM = "nenhum"

    def raio_explosao(self) -> int:
        """Retorna o raio de efeito do power-up."""
        raios = {
            self.FOGUETE_H: 0,
            self.FOGUETE_V: 0,
            self.HELICE: 1,
            self.BOMBA: 2,
            self.DISCO_MAGICO: 0,
            self.NENHUM: 0,
        }
        return raios.get(self, 0)

    def descricao(self) -> str:
        descricoes = {
            self.FOGUETE_H: "Foguete Horizontal (limpa linha inteira)",
            self.FOGUETE_V: "Foguete Vertical (limpa coluna inteira)",
            self.HELICE: "Hélice (limpa peças adjacentes 3x3)",
            self.BOMBA: "Bomba (explode área 5x5)",
            self.DISCO_MAGICO: "Disco Mágico (remove todas as peças da cor alvo)",
            self.NENHUM: "Sem power-up",
        }
        return descricoes.get(self, "Desconhecido")


class TipoObstaculo(Enum):
    """Obstáculos que aparecem no tabuleiro."""
    CAIXA = "caixa"                        # requer 1 hit
    CAIXA_DUPLA = "caixa_dupla"           # requer 2 hits
    CORRENTE = "corrente"                  # prende a peça
    GELO = "gelo"                          # peça congelada
    ARBUSTO = "arbusto"                    # bloqueia visão
    SETA = "seta"                          # direciona queda
    VELA = "vela"                          # objetivo especial
    NENHUM = "nenhum"


@dataclass
class Peca:
    """Representa uma peça no tabuleiro do Royal Match."""
    tipo: TipoPeca
    powerup: TipoPowerUp = TipoPowerUp.NENHUM
    obstaculo: TipoObstaculo = TipoObstaculo.NENHUM
    resistencia: int = 0
    congelada: bool = False
    amarrada: bool = False

    # Coordenadas no tabuleiro (linha, coluna) - preenchidas pelo Tabuleiro
    linha: int = -1
    coluna: int = -1

    # Confiança da classificação por visão computacional (0.0 a 1.0)
    confianca: float = 1.0

    def eh_jogavel(self) -> bool:
        """Verifica se a peça pode ser movida pelo jogador."""
        return (
            self.tipo not in (TipoPeca.VAZIO, TipoPeca.DESCONHECIDO)
            and not self.amarrada
            and not self.congelada
        )

    def eh_powerup(self) -> bool:
        return self.powerup != TipoPowerUp.NENHUM

    def tem_obstaculo(self) -> bool:
        return self.obstaculo != TipoObstaculo.NENHUM

    def pode_combinar_com(self, outra: "Peca") -> bool:
        """Verifica se esta peça pode combinar com outra."""
        if not self.eh_jogavel() or not outra.eh_jogavel():
            return False
        if self.eh_powerup() or outra.eh_powerup():
            return True
        return self.tipo == outra.tipo and self.tipo != TipoPeca.VAZIO

    def valor_pontuacao(self) -> int:
        """Valor base de pontuação desta peça."""
        valores = {
            TipoPeca.AZUL: 10,
            TipoPeca.VERMELHO: 10,
            TipoPeca.AMARELO: 10,
            TipoPeca.VERDE: 10,
            TipoPeca.ROXO: 10,
            TipoPeca.ROSA: 10,
            TipoPeca.VAZIO: 0,
            TipoPeca.DESCONHECIDO: 0,
        }
        base = valores.get(self.tipo, 0)
        if self.eh_powerup():
            base *= 3
        return base

    def __str__(self) -> str:
        simbolos = {
            TipoPeca.AZUL: "🔵",
            TipoPeca.VERMELHO: "🔴",
            TipoPeca.AMARELO: "🟡",
            TipoPeca.VERDE: "🟢",
            TipoPeca.ROXO: "🟣",
            TipoPeca.ROSA: "🌸",
            TipoPeca.VAZIO: "⬜",
            TipoPeca.DESCONHECIDO: "❓",
        }
        simbolo = simbolos.get(self.tipo, "?")
        if self.eh_powerup():
            simbolo += "✨"
        return simbolo

    def __repr__(self) -> str:
        return f"Peca({self.tipo.value}, pw={self.powerup.value}, obs={self.obstaculo.value})"

    def copiar(self) -> "Peca":
        """Retorna uma cópia profunda desta peça."""
        return Peca(
            tipo=self.tipo,
            powerup=self.powerup,
            obstaculo=self.obstaculo,
            resistencia=self.resistencia,
            congelada=self.congelada,
            amarrada=self.amarrada,
            linha=self.linha,
            coluna=self.coluna,
            confianca=self.confianca,
        )


@dataclass
class PowerUp:
    """Representa um power-up disponível para uso (booster externo ao tabuleiro)."""
    tipo: TipoPowerUp
    quantidade: int = 0
    nome_pt: str = ""

    def __post_init__(self):
        nomes = {
            TipoPowerUp.FOGUETE_H: "Foguete",
            TipoPowerUp.FOGUETE_V: "Foguete",
            TipoPowerUp.HELICE: "Hélice",
            TipoPowerUp.BOMBA: "Bomba",
            TipoPowerUp.DISCO_MAGICO: "Disco Mágico",
            TipoPowerUp.NENHUM: "Nenhum",
        }
        if not self.nome_pt:
            self.nome_pt = nomes.get(self.tipo, "Desconhecido")
