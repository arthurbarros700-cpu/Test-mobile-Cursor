"""Testes unitários do módulo de tabuleiro."""

import pytest
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from royal_match_bot.core.pecas import Peca, TipoPeca, TipoPowerUp
from royal_match_bot.core.tabuleiro import Tabuleiro


def criar_tabuleiro_simples() -> Tabuleiro:
    """Cria tabuleiro 5x5 para testes."""
    tab = Tabuleiro(5, 5)
    tipos = [
        [TipoPeca.AZUL, TipoPeca.VERMELHO, TipoPeca.AZUL, TipoPeca.VERDE, TipoPeca.ROXO],
        [TipoPeca.AZUL, TipoPeca.AMARELO, TipoPeca.VERMELHO, TipoPeca.VERDE, TipoPeca.AZUL],
        [TipoPeca.AZUL, TipoPeca.VERDE, TipoPeca.AMARELO, TipoPeca.ROXO, TipoPeca.VERMELHO],
        [TipoPeca.VERDE, TipoPeca.AZUL, TipoPeca.VERDE, TipoPeca.AZUL, TipoPeca.VERDE],
        [TipoPeca.ROXO, TipoPeca.ROXO, TipoPeca.ROXO, TipoPeca.AMARELO, TipoPeca.AZUL],
    ]
    for l, linha in enumerate(tipos):
        for c, tipo in enumerate(linha):
            tab.definir_peca(l, c, Peca(tipo=tipo, linha=l, coluna=c))
    return tab


class TestPeca:
    def test_peca_eh_jogavel(self):
        p = Peca(tipo=TipoPeca.AZUL)
        assert p.eh_jogavel()

    def test_peca_vazia_nao_jogavel(self):
        p = Peca(tipo=TipoPeca.VAZIO)
        assert not p.eh_jogavel()

    def test_peca_amarrada_nao_jogavel(self):
        p = Peca(tipo=TipoPeca.AZUL, amarrada=True)
        assert not p.eh_jogavel()

    def test_peca_pode_combinar(self):
        p1 = Peca(tipo=TipoPeca.AZUL)
        p2 = Peca(tipo=TipoPeca.AZUL)
        assert p1.pode_combinar_com(p2)

    def test_peca_nao_combina_cor_diferente(self):
        p1 = Peca(tipo=TipoPeca.AZUL)
        p2 = Peca(tipo=TipoPeca.VERMELHO)
        assert not p1.pode_combinar_com(p2)

    def test_peca_copia(self):
        original = Peca(tipo=TipoPeca.VERDE, linha=2, coluna=3)
        copia = original.copiar()
        assert copia.tipo == original.tipo
        assert copia.linha == original.linha
        assert copia is not original

    def test_powerup_nao_e_nenhum(self):
        p = Peca(tipo=TipoPeca.AZUL, powerup=TipoPowerUp.FOGUETE_H)
        assert p.eh_powerup()


class TestTabuleiro:
    def test_tabuleiro_criado_correto(self):
        tab = Tabuleiro(9, 9)
        assert tab.linhas == 9
        assert tab.colunas == 9

    def test_definir_obter_peca(self):
        tab = Tabuleiro(5, 5)
        peca = Peca(tipo=TipoPeca.AZUL)
        tab.definir_peca(0, 0, peca)
        obtida = tab.obter_peca(0, 0)
        assert obtida is peca

    def test_posicao_invalida(self):
        tab = Tabuleiro(5, 5)
        assert tab.obter_peca(-1, 0) is None
        assert tab.obter_peca(0, 10) is None

    def test_pode_trocar_adjacentes(self):
        tab = criar_tabuleiro_simples()
        assert tab.pode_trocar(0, 0, 0, 1)
        assert tab.pode_trocar(0, 0, 1, 0)

    def test_nao_pode_trocar_diagonal(self):
        tab = criar_tabuleiro_simples()
        assert not tab.pode_trocar(0, 0, 1, 1)

    def test_nao_pode_trocar_distancia_2(self):
        tab = criar_tabuleiro_simples()
        assert not tab.pode_trocar(0, 0, 0, 2)

    def test_trocar_pecas(self):
        tab = criar_tabuleiro_simples()
        tipo_00 = tab.obter_peca(0, 0).tipo
        tipo_01 = tab.obter_peca(0, 1).tipo
        tab.trocar_pecas(0, 0, 0, 1)
        assert tab.obter_peca(0, 0).tipo == tipo_01
        assert tab.obter_peca(0, 1).tipo == tipo_00

    def test_encontrar_combinacoes_3_em_linha(self):
        tab = Tabuleiro(3, 5)
        for c in range(3):
            tab.definir_peca(0, c, Peca(tipo=TipoPeca.AZUL, linha=0, coluna=c))
        for c in range(3, 5):
            tab.definir_peca(0, c, Peca(tipo=TipoPeca.VERMELHO, linha=0, coluna=c))
        for l in range(1, 3):
            for c in range(5):
                tab.definir_peca(l, c, Peca(tipo=TipoPeca.VERDE, linha=l, coluna=c))

        combos = tab.encontrar_combinacoes()
        assert len(combos) > 0
        combo_azul = next(
            (g for g in combos if any(
                tab.obter_peca(l, c) and tab.obter_peca(l, c).tipo == TipoPeca.AZUL
                for (l, c) in g
            )),
            None,
        )
        assert combo_azul is not None

    def test_determinar_powerup_4_horizontal(self):
        tab = Tabuleiro(3, 6)
        grupo = [(0, 0), (0, 1), (0, 2), (0, 3)]
        pu = tab.determinar_powerup_gerado(grupo)
        assert pu == TipoPowerUp.FOGUETE_H

    def test_determinar_powerup_4_vertical(self):
        tab = Tabuleiro(6, 3)
        grupo = [(0, 0), (1, 0), (2, 0), (3, 0)]
        pu = tab.determinar_powerup_gerado(grupo)
        assert pu == TipoPowerUp.FOGUETE_V

    def test_determinar_powerup_5_linha(self):
        tab = Tabuleiro(3, 6)
        grupo = [(0, 0), (0, 1), (0, 2), (0, 3), (0, 4)]
        pu = tab.determinar_powerup_gerado(grupo)
        assert pu == TipoPowerUp.DISCO_MAGICO

    def test_gravidade(self):
        tab = Tabuleiro(3, 3)
        tab.definir_peca(0, 0, Peca(tipo=TipoPeca.AZUL))
        tab.definir_peca(1, 0, None)
        tab.definir_peca(2, 0, None)
        for c in range(1, 3):
            for l in range(3):
                tab.definir_peca(l, c, Peca(tipo=TipoPeca.VERDE))
        tab.aplicar_gravidade()
        assert tab.obter_peca(2, 0) is not None
        assert tab.obter_peca(2, 0).tipo == TipoPeca.AZUL

    def test_movimentos_possiveis(self):
        tab = criar_tabuleiro_simples()
        movimentos = tab.listar_movimentos_possiveis()
        assert len(movimentos) > 0
        for (l1, c1, l2, c2) in movimentos:
            assert abs(l1-l2) + abs(c1-c2) == 1

    def test_copiar_tabuleiro(self):
        tab = criar_tabuleiro_simples()
        copia = tab.copiar()
        assert copia.linhas == tab.linhas
        assert copia.colunas == tab.colunas
        # Modificar cópia não afeta original
        copia.definir_peca(0, 0, Peca(tipo=TipoPeca.DESCONHECIDO))
        assert tab.obter_peca(0, 0).tipo != TipoPeca.DESCONHECIDO

    def test_simular_movimento(self):
        tab = Tabuleiro(3, 5)
        # Criar combo simples
        for c in range(2):
            tab.definir_peca(0, c, Peca(tipo=TipoPeca.AZUL, linha=0, coluna=c))
        tab.definir_peca(0, 2, Peca(tipo=TipoPeca.VERMELHO, linha=0, coluna=2))
        tab.definir_peca(0, 3, Peca(tipo=TipoPeca.AZUL, linha=0, coluna=3))
        for l in range(1, 3):
            for c in range(5):
                tab.definir_peca(l, c, Peca(tipo=TipoPeca.VERDE, linha=l, coluna=c))
        # Mover o vermelho para completar os azuis
        pontos, novo_tab = tab.simular_movimento(0, 2, 0, 3)
        assert novo_tab is not tab  # Retorna novo tabuleiro


class TestCombinacoes:
    def test_combo_l_gera_helice(self):
        tab = Tabuleiro(5, 5)
        grupo = [(0, 0), (0, 1), (0, 2), (1, 0)]
        pu = tab.determinar_powerup_gerado(grupo)
        assert pu == TipoPowerUp.HELICE

    def test_powerup_foguete_h_afeta_linha(self):
        tab = Tabuleiro(5, 5)
        for l in range(5):
            for c in range(5):
                tab.definir_peca(l, c, Peca(tipo=TipoPeca.AZUL, linha=l, coluna=c))
        tab.definir_peca(2, 2, Peca(tipo=TipoPeca.AZUL, powerup=TipoPowerUp.FOGUETE_H, linha=2, coluna=2))
        afetadas = tab.executar_power_up(2, 2)
        colunas_afetadas = set(c for (l, c) in afetadas if l == 2)
        assert colunas_afetadas == set(range(5))

    def test_powerup_bomba_afeta_5x5(self):
        tab = Tabuleiro(9, 9)
        for l in range(9):
            for c in range(9):
                tab.definir_peca(l, c, Peca(tipo=TipoPeca.AZUL, linha=l, coluna=c))
        tab.definir_peca(4, 4, Peca(tipo=TipoPeca.AZUL, powerup=TipoPowerUp.BOMBA, linha=4, coluna=4))
        afetadas = tab.executar_power_up(4, 4)
        assert len(afetadas) == 25  # 5x5


if __name__ == "__main__":
    pytest.main([__file__, "-v"])
