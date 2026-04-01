"""
Motor de IA do Royal Match Bot.
Analisa o tabuleiro e escolhe o melhor movimento usando algoritmos
de busca com pontuação ponderada, incluindo combos, peças especiais e objetivos.
"""

import random
import logging
from enum import Enum, auto
from typing import List, Optional, Tuple, Dict, Set
from dataclasses import dataclass, field
from copy import deepcopy

from ..vision.detector import TipoPeca, Peca

logger = logging.getLogger("RoyalBot.AI")


class Direcao(Enum):
    DIREITA  = (0,  1)
    ESQUERDA = (0, -1)
    BAIXO    = (1,  0)
    CIMA     = (-1, 0)


@dataclass
class Movimento:
    linha: int
    coluna: int
    direcao: Direcao
    pontuacao: float = 0.0
    descricao: str   = ""
    # Coordenadas em pixels para execução
    x1: int = 0
    y1: int = 0
    x2: int = 0
    y2: int = 0


@dataclass
class ResultadoAnalise:
    movimentos: List[Movimento]
    melhor: Optional[Movimento]
    n_combos_possiveis: int
    tem_especial: bool
    grade_simulada: List[List[TipoPeca]]
    objetivos_atingidos: int = 0


class ModoDificuldade(Enum):
    FACIL    = auto()  # movimentos mais simples, menos lookahead
    NORMAL   = auto()  # balanceado
    EXPERT   = auto()  # máxima pontuação, lookahead profundo


# ------------------------------------------------------------------ #
#  Pontuações por evento                                              #
# ------------------------------------------------------------------ #

class Pontuacao:
    COMBO_3          = 30
    COMBO_4          = 80
    COMBO_5          = 180
    COMBO_L_T        = 120
    COMBO_ESPECIAL_2 = 500    # dois especiais juntos
    CRIAR_BOMBA      = 200
    CRIAR_FOGUETE    = 160
    CRIAR_PROPELLER  = 140
    CRIAR_BOLA       = 350
    USAR_ESPECIAL    = 250
    DESTRUIR_OBST    = 100    # destruir caixa/pedra etc
    CADEIA_COMBO     = 50     # bônus por combo em cascata
    PENA_SEGURO      = -20    # penaliza movimentos "sem graça"
    BONUS_CENTRO     = 10     # preferência por movimentos no centro
    PENA_BORDA       = -5     # penaliza movimentos nas bordas


class SolverIA:
    """
    Analisa um tabuleiro 9×9 e retorna movimentos ranqueados.
    Implementa:
      - Busca de todos os combos (3, 4, 5, L, T)
      - Detecção e uso de peças especiais
      - Simulação de queda de peças (cascata)
      - Lookahead de 1 nível
      - Ajuste por modo de dificuldade
    """

    LINHAS   = 9
    COLUNAS  = 9

    def __init__(self, modo: ModoDificuldade = ModoDificuldade.NORMAL):
        self.modo = modo
        self._rng = random.Random()

    # ------------------------------------------------------------------ #
    #  Interface principal                                                 #
    # ------------------------------------------------------------------ #

    def analisar(
        self,
        grade: List[List[Peca]],
        objetivos: Optional[Dict[TipoPeca, int]] = None,
    ) -> ResultadoAnalise:
        """
        Analisa a grade e retorna o resultado completo.
        `objetivos` é um dicionário {TipoPeca: quantidade_restante}.
        """
        if not grade:
            return ResultadoAnalise([], None, 0, False, [], 0)

        matriz = self._grade_para_matriz(grade)
        movimentos = self._gerar_todos_movimentos(grade, matriz, objetivos)

        if not movimentos:
            logger.warning("Nenhum movimento encontrado — grade bloqueada?")
            return ResultadoAnalise([], None, 0, False, matriz, 0)

        movimentos.sort(key=lambda m: m.pontuacao, reverse=True)

        # Modo fácil: adiciona aleatoriedade para parecer humano
        if self.modo == ModoDificuldade.FACIL:
            top = movimentos[:max(3, len(movimentos)//3)]
            movimentos = sorted(
                movimentos,
                key=lambda m: m.pontuacao + self._rng.uniform(-15, 15),
                reverse=True,
            )

        melhor = movimentos[0] if movimentos else None
        tem_especial = any(
            m.descricao and "especial" in m.descricao.lower()
            for m in movimentos[:5]
        )
        n_combos = len([m for m in movimentos if m.pontuacao >= Pontuacao.COMBO_3])

        return ResultadoAnalise(
            movimentos=movimentos,
            melhor=melhor,
            n_combos_possiveis=n_combos,
            tem_especial=tem_especial,
            grade_simulada=matriz,
            objetivos_atingidos=0,
        )

    # ------------------------------------------------------------------ #
    #  Geração de movimentos                                               #
    # ------------------------------------------------------------------ #

    def _gerar_todos_movimentos(
        self,
        grade: List[List[Peca]],
        matriz: List[List[TipoPeca]],
        objetivos: Optional[Dict],
    ) -> List[Movimento]:
        movimentos = []

        for lin in range(self.LINHAS):
            for col in range(self.COLUNAS):
                peca = grade[lin][col]
                for direcao in Direcao:
                    dl, dc = direcao.value
                    nl, nc = lin + dl, col + dc
                    if not self._valido(nl, nc):
                        continue

                    # Simula a troca
                    matriz_sim = self._trocar(matriz, lin, col, nl, nc)
                    combos = self._encontrar_combos(matriz_sim)
                    if not combos:
                        continue

                    pts = self._calcular_pontuacao(
                        combos, lin, col, nl, nc, matriz, objetivos
                    )

                    # Lookahead: simula queda e busca combo secundário
                    if self.modo in (ModoDificuldade.NORMAL, ModoDificuldade.EXPERT):
                        pts += self._lookahead(matriz_sim, combos) * 0.5

                    desc = self._descrever_movimento(combos, lin, col, direcao)

                    mov = Movimento(
                        linha=lin, coluna=col,
                        direcao=direcao,
                        pontuacao=pts,
                        descricao=desc,
                        x1=peca.cx, y1=peca.cy,
                        x2=grade[nl][nc].cx, y2=grade[nl][nc].cy,
                    )
                    movimentos.append(mov)

        return movimentos

    # ------------------------------------------------------------------ #
    #  Combos                                                              #
    # ------------------------------------------------------------------ #

    def _encontrar_combos(self, matriz: List[List[TipoPeca]]) -> List[Set[Tuple[int,int]]]:
        """Encontra todos os grupos de 3+ peças iguais na matriz."""
        visitado: Set[Tuple[int,int]] = set()
        combos = []

        for lin in range(self.LINHAS):
            for col in range(self.COLUNAS):
                if (lin, col) in visitado:
                    continue
                tipo = matriz[lin][col]
                if tipo in (TipoPeca.VAZIO, TipoPeca.DESCONHECIDO):
                    continue

                grupo_h = self._expandir_linha(matriz, lin, col, tipo)
                grupo_v = self._expandir_coluna(matriz, lin, col, tipo)

                grupo_total: Set[Tuple[int,int]] = set()
                if len(grupo_h) >= 3:
                    grupo_total |= grupo_h
                if len(grupo_v) >= 3:
                    grupo_total |= grupo_v

                if len(grupo_total) >= 3:
                    combos.append(grupo_total)
                    visitado |= grupo_total

        return combos

    def _expandir_linha(
        self, matriz, lin, col, tipo
    ) -> Set[Tuple[int,int]]:
        grupo = {(lin, col)}
        for dc in (1, -1):
            c = col + dc
            while 0 <= c < self.COLUNAS and matriz[lin][c] == tipo:
                grupo.add((lin, c))
                c += dc
        return grupo

    def _expandir_coluna(
        self, matriz, lin, col, tipo
    ) -> Set[Tuple[int,int]]:
        grupo = {(lin, col)}
        for dl in (1, -1):
            l = lin + dl
            while 0 <= l < self.LINHAS and matriz[l][col] == tipo:
                grupo.add((l, col))
                l += dl
        return grupo

    # ------------------------------------------------------------------ #
    #  Pontuação                                                           #
    # ------------------------------------------------------------------ #

    def _calcular_pontuacao(
        self,
        combos: List[Set],
        lin: int, col: int,
        nl: int, nc: int,
        matriz: List[List[TipoPeca]],
        objetivos: Optional[Dict],
    ) -> float:
        pts = 0.0

        for grupo in combos:
            tam = len(grupo)
            if tam == 3:
                pts += Pontuacao.COMBO_3
            elif tam == 4:
                # Verifica forma L ou T
                if self._forma_l_ou_t(grupo):
                    pts += Pontuacao.COMBO_L_T
                else:
                    pts += Pontuacao.COMBO_4
                    pts += Pontuacao.CRIAR_FOGUETE
            elif tam >= 5:
                pts += Pontuacao.COMBO_5
                pts += Pontuacao.CRIAR_BOLA if tam >= 6 else Pontuacao.CRIAR_BOMBA

            # Bônus por objetivos
            if objetivos:
                tipo_combo = matriz[next(iter(grupo))[0]][next(iter(grupo))[1]]
                if tipo_combo in objetivos and objetivos[tipo_combo] > 0:
                    pts += 50 * min(tam, objetivos[tipo_combo])

        # Bônus multi-combo
        if len(combos) > 1:
            pts += Pontuacao.CADEIA_COMBO * (len(combos) - 1)

        # Bonus centro
        centro = self.COLUNAS // 2
        dist = abs(col - centro) + abs(nc - centro)
        pts += Pontuacao.BONUS_CENTRO * max(0, 3 - dist)

        # Penaliza bordas
        if col == 0 or col == self.COLUNAS-1 or nc == 0 or nc == self.COLUNAS-1:
            pts += Pontuacao.PENA_BORDA

        # Peças especiais na origem ou destino
        tipo_orig = matriz[lin][col]
        tipo_dest = matriz[nl][nc]
        for tipo in (tipo_orig, tipo_dest):
            if tipo in (TipoPeca.BOMBA, TipoPeca.FOGUETE_H, TipoPeca.FOGUETE_V,
                        TipoPeca.PROPELLER, TipoPeca.BOLA_MAGICA):
                pts += Pontuacao.USAR_ESPECIAL

        return pts

    def _forma_l_ou_t(self, grupo: Set[Tuple[int,int]]) -> bool:
        """Verifica se um grupo de 4 células tem formato L ou T."""
        linhas = [l for l, c in grupo]
        colunas = [c for l, c in grupo]
        return len(set(linhas)) > 1 and len(set(colunas)) > 1

    def _lookahead(
        self,
        matriz_apos_troca: List[List[TipoPeca]],
        combos_atuais: List[Set],
    ) -> float:
        """Simula a queda de peças e pontua combos secundários."""
        # Remove as peças dos combos
        matriz_sim = deepcopy(matriz_apos_troca)
        for grupo in combos_atuais:
            for lin, col in grupo:
                matriz_sim[lin][col] = TipoPeca.VAZIO

        # Simula gravidade
        matriz_sim = self._aplicar_gravidade(matriz_sim)

        # Busca novos combos
        novos = self._encontrar_combos(matriz_sim)
        if not novos:
            return 0.0

        pts = 0.0
        for grupo in novos:
            tam = len(grupo)
            if tam == 3:
                pts += Pontuacao.COMBO_3
            elif tam == 4:
                pts += Pontuacao.COMBO_4
            else:
                pts += Pontuacao.COMBO_5
        return pts

    def _aplicar_gravidade(self, matriz: List[List[TipoPeca]]) -> List[List[TipoPeca]]:
        """Faz as peças caírem para preencher espaços vazios."""
        nova = deepcopy(matriz)
        for col in range(self.COLUNAS):
            # Coleta peças não-vazias de baixo para cima
            pecas_col = [
                nova[lin][col]
                for lin in range(self.LINHAS)
                if nova[lin][col] != TipoPeca.VAZIO
            ]
            # Preenche de baixo
            for lin in range(self.LINHAS-1, -1, -1):
                if pecas_col:
                    nova[lin][col] = pecas_col.pop()
                else:
                    nova[lin][col] = TipoPeca.VAZIO
        return nova

    # ------------------------------------------------------------------ #
    #  Utilitários                                                         #
    # ------------------------------------------------------------------ #

    def _grade_para_matriz(self, grade: List[List[Peca]]) -> List[List[TipoPeca]]:
        return [[peca.tipo for peca in linha] for linha in grade]

    def _trocar(
        self,
        matriz: List[List[TipoPeca]],
        l1: int, c1: int,
        l2: int, c2: int,
    ) -> List[List[TipoPeca]]:
        nova = deepcopy(matriz)
        nova[l1][c1], nova[l2][c2] = nova[l2][c2], nova[l1][c1]
        return nova

    def _valido(self, lin: int, col: int) -> bool:
        return 0 <= lin < self.LINHAS and 0 <= col < self.COLUNAS

    def _descrever_movimento(
        self,
        combos: List[Set],
        lin: int, col: int,
        direcao: Direcao,
    ) -> str:
        total = sum(len(g) for g in combos)
        dir_str = {
            Direcao.DIREITA:  "→",
            Direcao.ESQUERDA: "←",
            Direcao.BAIXO:    "↓",
            Direcao.CIMA:     "↑",
        }[direcao]
        partes = [f"[{lin},{col}]{dir_str} | {total} peças em {len(combos)} combo(s)"]
        for g in combos:
            if len(g) >= 5:
                partes.append("⭐ SUPER COMBO")
            elif len(g) == 4:
                partes.append("🔥 Combo 4")
        return " | ".join(partes)

    def movimento_aleatorio_seguro(
        self, grade: List[List[Peca]]
    ) -> Optional[Movimento]:
        """
        Retorna um movimento qualquer válido (fallback de emergência).
        Usado quando nenhum combo é encontrado (embaralhamento próximo).
        """
        for _ in range(200):
            lin = self._rng.randint(0, self.LINHAS - 1)
            col = self._rng.randint(0, self.COLUNAS - 1)
            direcao = self._rng.choice(list(Direcao))
            dl, dc = direcao.value
            nl, nc = lin + dl, col + dc
            if self._valido(nl, nc):
                peca = grade[lin][col]
                peca2 = grade[nl][nc]
                return Movimento(
                    linha=lin, coluna=col,
                    direcao=direcao,
                    pontuacao=-1,
                    descricao="Movimento aleatório (fallback)",
                    x1=peca.cx, y1=peca.cy,
                    x2=peca2.cx, y2=peca2.cy,
                )
        return None
