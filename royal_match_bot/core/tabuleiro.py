"""
Tabuleiro do Royal Match.
Modela o grid de peças com suporte a gravidade, combos e power-ups.
"""

import copy
import random
from dataclasses import dataclass, field
from typing import List, Optional, Tuple, Set, Dict
from .pecas import Peca, TipoPeca, TipoPowerUp, TipoObstaculo


@dataclass
class Celula:
    """Metadados de uma célula do tabuleiro (além da peça em si)."""
    linha: int
    coluna: int
    bloqueada: bool = False        # célula não faz parte do tabuleiro
    camadas: int = 0               # camadas de obstáculo (gelo, etc.)
    marcada_objetivo: bool = False  # faz parte de um objetivo de fase


class Tabuleiro:
    """
    Representa o tabuleiro completo do Royal Match.
    Suporta operações de simulação para o motor de IA.
    """

    def __init__(self, linhas: int = 9, colunas: int = 9):
        self.linhas = linhas
        self.colunas = colunas
        self.grade: List[List[Optional[Peca]]] = [
            [None for _ in range(colunas)] for _ in range(linhas)
        ]
        self.celulas: List[List[Celula]] = [
            [Celula(l, c) for c in range(colunas)] for l in range(linhas)
        ]
        self.historico_movimentos: List[Tuple[int, int, int, int]] = []
        self._pontuacao: int = 0
        self._combo_atual: int = 0

    @property
    def pontuacao(self) -> int:
        return self._pontuacao

    def obter_peca(self, linha: int, coluna: int) -> Optional[Peca]:
        if 0 <= linha < self.linhas and 0 <= coluna < self.colunas:
            return self.grade[linha][coluna]
        return None

    def definir_peca(self, linha: int, coluna: int, peca: Optional[Peca]) -> None:
        if 0 <= linha < self.linhas and 0 <= coluna < self.colunas:
            if peca:
                peca.linha = linha
                peca.coluna = coluna
            self.grade[linha][coluna] = peca

    def eh_valido(self, linha: int, coluna: int) -> bool:
        return (
            0 <= linha < self.linhas
            and 0 <= coluna < self.colunas
            and not self.celulas[linha][coluna].bloqueada
        )

    def pode_trocar(self, l1: int, c1: int, l2: int, c2: int) -> bool:
        """Verifica se duas peças podem ser trocadas de posição."""
        if not (self.eh_valido(l1, c1) and self.eh_valido(l2, c2)):
            return False
        # Só movimentos adjacentes (horizontal ou vertical)
        dl = abs(l1 - l2)
        dc = abs(c1 - c2)
        if not ((dl == 1 and dc == 0) or (dl == 0 and dc == 1)):
            return False
        p1 = self.obter_peca(l1, c1)
        p2 = self.obter_peca(l2, c2)
        if not p1 or not p2:
            return False
        return p1.eh_jogavel() and p2.eh_jogavel()

    def trocar_pecas(self, l1: int, c1: int, l2: int, c2: int) -> bool:
        """Realiza a troca de duas peças adjacentes."""
        if not self.pode_trocar(l1, c1, l2, c2):
            return False
        p1 = self.grade[l1][c1]
        p2 = self.grade[l2][c2]
        self.grade[l1][c1] = p2
        self.grade[l2][c2] = p1
        if p1:
            p1.linha, p1.coluna = l2, c2
        if p2:
            p2.linha, p2.coluna = l1, c1
        return True

    def encontrar_combinacoes(self) -> List[List[Tuple[int, int]]]:
        """
        Encontra todos os grupos de 3+ peças iguais em linha/coluna.
        Retorna lista de grupos, cada grupo sendo lista de (linha, coluna).
        """
        visitado: Set[Tuple[int, int]] = set()
        combinacoes = []

        # Verificar linhas horizontais
        for l in range(self.linhas):
            c = 0
            while c < self.colunas:
                peca_ref = self.obter_peca(l, c)
                if not peca_ref or not peca_ref.eh_jogavel() or peca_ref.eh_powerup():
                    c += 1
                    continue
                grupo = [(l, c)]
                c2 = c + 1
                while c2 < self.colunas:
                    prox = self.obter_peca(l, c2)
                    if prox and prox.tipo == peca_ref.tipo and not prox.eh_powerup():
                        grupo.append((l, c2))
                        c2 += 1
                    else:
                        break
                if len(grupo) >= 3:
                    combinacoes.append(grupo)
                    for pos in grupo:
                        visitado.add(pos)
                c += len(grupo) if len(grupo) >= 3 else 1

        # Verificar colunas verticais
        for col in range(self.colunas):
            l = 0
            while l < self.linhas:
                peca_ref = self.obter_peca(l, col)
                if not peca_ref or not peca_ref.eh_jogavel() or peca_ref.eh_powerup():
                    l += 1
                    continue
                grupo = [(l, col)]
                l2 = l + 1
                while l2 < self.linhas:
                    prox = self.obter_peca(l2, col)
                    if prox and prox.tipo == peca_ref.tipo and not prox.eh_powerup():
                        grupo.append((l2, col))
                        l2 += 1
                    else:
                        break
                if len(grupo) >= 3:
                    combinacoes.append(grupo)
                c = col
                l += len(grupo) if len(grupo) >= 3 else 1

        # Mesclar grupos que compartilham peças (formam L, T, etc.)
        return self._mesclar_combinacoes(combinacoes)

    def _mesclar_combinacoes(
        self, combinacoes: List[List[Tuple[int, int]]]
    ) -> List[List[Tuple[int, int]]]:
        """Mescla combinações sobrepostas em grupos únicos."""
        if not combinacoes:
            return []

        conjuntos = [set(map(tuple, g)) for g in combinacoes]
        mesclado = True
        while mesclado:
            mesclado = False
            novos = []
            usados = set()
            for i, s1 in enumerate(conjuntos):
                if i in usados:
                    continue
                grupo_atual = set(s1)
                for j, s2 in enumerate(conjuntos):
                    if j <= i or j in usados:
                        continue
                    if grupo_atual & s2:
                        grupo_atual |= s2
                        usados.add(j)
                        mesclado = True
                novos.append(grupo_atual)
                usados.add(i)
            conjuntos = novos

        return [list(g) for g in conjuntos]

    def determinar_powerup_gerado(self, grupo: List[Tuple[int, int]]) -> TipoPowerUp:
        """Determina qual power-up é gerado por um combo baseado no tamanho e forma."""
        tamanho = len(grupo)

        if tamanho < 3:
            return TipoPowerUp.NENHUM
        if tamanho == 5:
            # Verificar se é linha reta (5 em linha = disco mágico)
            linhas_unicas = len(set(l for l, c in grupo))
            colunas_unicas = len(set(c for l, c in grupo))
            if linhas_unicas == 1 or colunas_unicas == 1:
                return TipoPowerUp.DISCO_MAGICO
            return TipoPowerUp.BOMBA

        if tamanho == 4:
            linhas_unicas = len(set(l for l, c in grupo))
            colunas_unicas = len(set(c for l, c in grupo))
            if linhas_unicas == 1:
                return TipoPowerUp.FOGUETE_H
            if colunas_unicas == 1:
                return TipoPowerUp.FOGUETE_V
            return TipoPowerUp.HELICE

        if tamanho >= 6:
            return TipoPowerUp.BOMBA

        # Verificar formato L ou T para hélice
        linhas_unicas = len(set(l for l, c in grupo))
        colunas_unicas = len(set(c for l, c in grupo))
        if linhas_unicas >= 2 and colunas_unicas >= 2:
            return TipoPowerUp.HELICE

        return TipoPowerUp.NENHUM

    def resolver_combinacoes(
        self, combinacoes: List[List[Tuple[int, int]]]
    ) -> Tuple[int, List[Peca]]:
        """
        Remove as peças combinadas, gera power-ups se necessário.
        Retorna (pontos_ganhos, lista_de_pecas_removidas).
        """
        pecas_removidas = []
        pontos = 0
        self._combo_atual += 1
        multiplicador_combo = 1 + (self._combo_atual - 1) * 0.5

        for grupo in combinacoes:
            powerup_tipo = self.determinar_powerup_gerado(grupo)
            pontos_grupo = 0

            # Posição central do grupo para colocar o power-up
            centro_l = int(sum(l for l, c in grupo) / len(grupo))
            centro_c = int(sum(c for l, c in grupo) / len(grupo))

            for (l, c) in grupo:
                peca = self.obter_peca(l, c)
                if peca:
                    pecas_removidas.append(peca.copiar())
                    pontos_grupo += peca.valor_pontuacao()

                # Se é o centro e gerou power-up, criar peça de power-up
                if (l, c) == (centro_l, centro_c) and powerup_tipo != TipoPowerUp.NENHUM:
                    tipo_peca = peca.tipo if peca else TipoPeca.AZUL
                    nova_peca = Peca(tipo=tipo_peca, powerup=powerup_tipo)
                    self.definir_peca(l, c, nova_peca)
                else:
                    self.definir_peca(l, c, None)

            pontos_grupo = int(pontos_grupo * multiplicador_combo)
            pontos += pontos_grupo

        self._pontuacao += pontos
        return pontos, pecas_removidas

    def aplicar_gravidade(self) -> bool:
        """
        Aplica gravidade: peças caem para preencher espaços vazios.
        Retorna True se houve alguma queda.
        """
        houve_queda = False
        for c in range(self.colunas):
            for l in range(self.linhas - 1, -1, -1):
                if self.grade[l][c] is None and not self.celulas[l][c].bloqueada:
                    # Procurar peça acima para cair
                    for l2 in range(l - 1, -1, -1):
                        peca_acima = self.grade[l2][c]
                        if peca_acima is not None:
                            self.grade[l][c] = peca_acima
                            peca_acima.linha = l
                            self.grade[l2][c] = None
                            houve_queda = True
                            break
        return houve_queda

    def preencher_com_novas_pecas(self) -> None:
        """Preenche espaços vazios no topo com novas peças aleatórias."""
        tipos_disponiveis = TipoPeca.cores()
        for l in range(self.linhas):
            for c in range(self.colunas):
                if self.grade[l][c] is None and not self.celulas[l][c].bloqueada:
                    tipo_aleatorio = random.choice(tipos_disponiveis)
                    self.grade[l][c] = Peca(tipo=tipo_aleatorio, linha=l, coluna=c)

    def executar_power_up(self, linha: int, coluna: int) -> List[Tuple[int, int]]:
        """
        Ativa o power-up na posição indicada.
        Retorna lista de posições afetadas.
        """
        peca = self.obter_peca(linha, coluna)
        if not peca or not peca.eh_powerup():
            return []

        afetadas: List[Tuple[int, int]] = []

        if peca.powerup == TipoPowerUp.FOGUETE_H:
            afetadas = [(linha, c) for c in range(self.colunas)]
        elif peca.powerup == TipoPowerUp.FOGUETE_V:
            afetadas = [(l, coluna) for l in range(self.linhas)]
        elif peca.powerup == TipoPowerUp.HELICE:
            for dl in range(-1, 2):
                for dc in range(-1, 2):
                    nl, nc = linha + dl, coluna + dc
                    if self.eh_valido(nl, nc):
                        afetadas.append((nl, nc))
        elif peca.powerup == TipoPowerUp.BOMBA:
            for dl in range(-2, 3):
                for dc in range(-2, 3):
                    nl, nc = linha + dl, coluna + dc
                    if self.eh_valido(nl, nc):
                        afetadas.append((nl, nc))
        elif peca.powerup == TipoPowerUp.DISCO_MAGICO:
            # Remove todas as peças da cor mais frequente
            contagem: Dict[TipoPeca, int] = {}
            for l in range(self.linhas):
                for col in range(self.colunas):
                    p = self.grade[l][col]
                    if p and p.tipo != TipoPeca.VAZIO:
                        contagem[p.tipo] = contagem.get(p.tipo, 0) + 1
            if contagem:
                cor_alvo = max(contagem, key=lambda t: contagem[t])
                afetadas = [
                    (l, c)
                    for l in range(self.linhas)
                    for c in range(self.colunas)
                    if self.grade[l][c] and self.grade[l][c].tipo == cor_alvo
                ]

        # Remover peças afetadas
        for (l, c) in afetadas:
            self.definir_peca(l, c, None)

        return afetadas

    def listar_movimentos_possiveis(self) -> List[Tuple[int, int, int, int]]:
        """
        Retorna todos os movimentos válidos no estado atual.
        Formato: (linha1, col1, linha2, col2)
        """
        movimentos = []
        direcoes = [(0, 1), (1, 0)]  # direita, baixo (evitar duplicatas)
        for l in range(self.linhas):
            for c in range(self.colunas):
                for dl, dc in direcoes:
                    nl, nc = l + dl, c + dc
                    if self.pode_trocar(l, c, nl, nc):
                        movimentos.append((l, c, nl, nc))
        return movimentos

    def simular_movimento(
        self, l1: int, c1: int, l2: int, c2: int
    ) -> Tuple[int, "Tabuleiro"]:
        """
        Simula um movimento e retorna (pontuação_obtida, novo_estado_tabuleiro).
        Não modifica o tabuleiro original.
        """
        novo = self.copiar()
        if not novo.trocar_pecas(l1, c1, l2, c2):
            return 0, novo

        pontuacao_total = 0
        novo._combo_atual = 0

        # Resolver todas as combinações em cascata
        for _ in range(50):  # máximo de 50 cascatas para evitar loop infinito
            combinacoes = novo.encontrar_combinacoes()
            if not combinacoes:
                break
            pontos, _ = novo.resolver_combinacoes(combinacoes)
            pontuacao_total += pontos
            novo.aplicar_gravidade()
            novo.preencher_com_novas_pecas()

        return pontuacao_total, novo

    def contar_pecas_por_tipo(self) -> Dict[TipoPeca, int]:
        """Conta quantas peças de cada tipo existem no tabuleiro."""
        contagem: Dict[TipoPeca, int] = {}
        for l in range(self.linhas):
            for c in range(self.colunas):
                peca = self.grade[l][c]
                if peca:
                    contagem[peca.tipo] = contagem.get(peca.tipo, 0) + 1
        return contagem

    def copiar(self) -> "Tabuleiro":
        """Retorna uma cópia profunda do tabuleiro."""
        novo = Tabuleiro(self.linhas, self.colunas)
        novo._pontuacao = self._pontuacao
        novo._combo_atual = self._combo_atual
        for l in range(self.linhas):
            for c in range(self.colunas):
                peca = self.grade[l][c]
                novo.grade[l][c] = peca.copiar() if peca else None
                celula = self.celulas[l][c]
                novo.celulas[l][c] = Celula(
                    linha=celula.linha,
                    coluna=celula.coluna,
                    bloqueada=celula.bloqueada,
                    camadas=celula.camadas,
                    marcada_objetivo=celula.marcada_objetivo,
                )
        return novo

    def exibir(self) -> str:
        """Retorna representação visual do tabuleiro em texto."""
        linhas = []
        linhas.append("  " + " ".join(str(c) for c in range(self.colunas)))
        for l in range(self.linhas):
            linha_str = f"{l} "
            for c in range(self.colunas):
                peca = self.grade[l][c]
                if self.celulas[l][c].bloqueada:
                    linha_str += "X "
                elif peca is None:
                    linha_str += "_ "
                else:
                    tipos = {
                        TipoPeca.AZUL: "A",
                        TipoPeca.VERMELHO: "V",
                        TipoPeca.AMARELO: "M",
                        TipoPeca.VERDE: "G",
                        TipoPeca.ROXO: "R",
                        TipoPeca.ROSA: "S",
                        TipoPeca.VAZIO: "_",
                        TipoPeca.DESCONHECIDO: "?",
                    }
                    simbolo = tipos.get(peca.tipo, "?")
                    if peca.eh_powerup():
                        simbolo = simbolo.lower()
                    linha_str += simbolo + " "
            linhas.append(linha_str)
        return "\n".join(linhas)
