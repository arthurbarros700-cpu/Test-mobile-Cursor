"""Testes do motor de IA."""

import pytest
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from royal_match_bot.core.pecas import Peca, TipoPeca, TipoPowerUp
from royal_match_bot.core.tabuleiro import Tabuleiro
from royal_match_bot.core.estado_jogo import EstadoJogo, FaseInfo, ObjetivoFase, TipoObjetivo
from royal_match_bot.ai.avaliador import Avaliador
from royal_match_bot.ai.solucionador_beam import SolucionadorBeamSearch
from royal_match_bot.ai.solucionador_minimax import SolucionadorMinimax
from royal_match_bot.ai.solucionador_mcts import SolucionadorMCTS
from royal_match_bot.ai.motor_ia import MotorIA


def criar_tabuleiro_com_combo() -> Tabuleiro:
    """Cria tabuleiro onde existe um combo óbvio a ser feito."""
    tab = Tabuleiro(5, 5)
    # Coluna 0-1: azul, coluna 3: azul (combo ao mover 2→coluna 2)
    tipos = [
        [TipoPeca.AZUL, TipoPeca.AZUL, TipoPeca.VERMELHO, TipoPeca.AZUL, TipoPeca.VERDE],
        [TipoPeca.VERDE, TipoPeca.ROXO, TipoPeca.VERDE, TipoPeca.ROXO, TipoPeca.AZUL],
        [TipoPeca.VERMELHO, TipoPeca.VERDE, TipoPeca.AZUL, TipoPeca.VERDE, TipoPeca.ROXO],
        [TipoPeca.ROXO, TipoPeca.AZUL, TipoPeca.VERDE, TipoPeca.AMARELO, TipoPeca.VERDE],
        [TipoPeca.AMARELO, TipoPeca.VERDE, TipoPeca.ROXO, TipoPeca.VERDE, TipoPeca.AMARELO],
    ]
    for l, linha in enumerate(tipos):
        for c, tipo in enumerate(linha):
            tab.definir_peca(l, c, Peca(tipo=tipo, linha=l, coluna=c))
    return tab


class TestAvaliador:
    def test_avaliador_cria(self):
        av = Avaliador()
        assert av is not None

    def test_avaliacao_basica(self):
        av = Avaliador()
        tab = criar_tabuleiro_com_combo()
        score = av.avaliar(tab)
        assert isinstance(score, float)

    def test_avaliacao_com_objetivos(self):
        av = Avaliador()
        tab = criar_tabuleiro_com_combo()
        obj = ObjetivoFase(
            tipo=TipoObjetivo.COLETAR_PECA,
            alvo_cor=TipoPeca.AZUL,
            quantidade_necessaria=10,
            quantidade_atual=5,
        )
        score_com = av.avaliar(tab, [obj])
        score_sem = av.avaliar(tab, [])
        assert score_com != score_sem

    def test_avaliacao_objetivo_concluido(self):
        av = Avaliador(peso_objetivo=10.0)
        tab = criar_tabuleiro_com_combo()
        obj_concluido = ObjetivoFase(
            tipo=TipoObjetivo.COLETAR_PECA,
            quantidade_necessaria=10,
            quantidade_atual=10,
        )
        obj_pendente = ObjetivoFase(
            tipo=TipoObjetivo.COLETAR_PECA,
            quantidade_necessaria=10,
            quantidade_atual=0,
        )
        score_concluido = av.avaliar(tab, [obj_concluido])
        score_pendente = av.avaliar(tab, [obj_pendente])
        assert score_concluido > score_pendente


class TestBeamSearch:
    def test_beam_encontra_movimento(self):
        av = Avaliador()
        beam = SolucionadorBeamSearch(av, largura_beam=5, profundidade_maxima=2, timeout_s=1.0)
        tab = criar_tabuleiro_com_combo()
        mov = beam.encontrar_melhor_movimento(tab)
        assert mov is not None

    def test_beam_movimento_valido(self):
        av = Avaliador()
        beam = SolucionadorBeamSearch(av, largura_beam=5, timeout_s=1.0)
        tab = criar_tabuleiro_com_combo()
        mov = beam.encontrar_melhor_movimento(tab)
        assert mov is not None
        assert tab.pode_trocar(mov.linha1, mov.coluna1, mov.linha2, mov.coluna2)

    def test_beam_tem_score(self):
        av = Avaliador()
        beam = SolucionadorBeamSearch(av, largura_beam=5, timeout_s=1.0)
        tab = criar_tabuleiro_com_combo()
        mov = beam.encontrar_melhor_movimento(tab)
        assert mov is not None
        assert isinstance(mov.score_ia, float)

    def test_beam_sequencia(self):
        av = Avaliador()
        beam = SolucionadorBeamSearch(av, largura_beam=5, timeout_s=1.5)
        tab = criar_tabuleiro_com_combo()
        sequencia = beam.encontrar_sequencia(tab, n_movimentos=3)
        assert len(sequencia) >= 1


class TestMinimax:
    def test_minimax_encontra_movimento(self):
        av = Avaliador()
        mm = SolucionadorMinimax(av, profundidade_maxima=2, timeout_s=1.5)
        tab = criar_tabuleiro_com_combo()
        mov = mm.encontrar_melhor_movimento(tab)
        assert mov is not None

    def test_minimax_estatisticas(self):
        av = Avaliador()
        mm = SolucionadorMinimax(av, profundidade_maxima=2, timeout_s=1.0)
        tab = criar_tabuleiro_com_combo()
        mm.encontrar_melhor_movimento(tab)
        stats = mm.estatisticas
        assert stats["nos_visitados"] >= 0


class TestMCTS:
    def test_mcts_encontra_movimento(self):
        av = Avaliador()
        mcts = SolucionadorMCTS(av, iteracoes=50, timeout_s=1.5)
        tab = criar_tabuleiro_com_combo()
        mov = mcts.encontrar_melhor_movimento(tab)
        assert mov is not None

    def test_mcts_movimento_valido(self):
        av = Avaliador()
        mcts = SolucionadorMCTS(av, iteracoes=50, timeout_s=1.5)
        tab = criar_tabuleiro_com_combo()
        mov = mcts.encontrar_melhor_movimento(tab)
        assert mov is not None
        assert tab.pode_trocar(mov.linha1, mov.coluna1, mov.linha2, mov.coluna2)


class TestMotorIA:
    def _criar_estado(self) -> EstadoJogo:
        estado = EstadoJogo()
        estado.tabuleiro = criar_tabuleiro_com_combo()
        estado.fase = FaseInfo(
            numero=5,
            movimentos_restantes=20,
            movimentos_totais=30,
            objetivos=[
                ObjetivoFase(
                    tipo=TipoObjetivo.COLETAR_PECA,
                    alvo_cor=TipoPeca.AZUL,
                    quantidade_necessaria=15,
                    quantidade_atual=5,
                )
            ],
        )
        return estado

    def test_motor_beam(self):
        motor = MotorIA(algoritmo="beam_search", largura_beam=5, iteracoes_mcts=20)
        estado = self._criar_estado()
        resultado = motor.analisar(estado)
        assert resultado.movimento_recomendado is not None

    def test_motor_minimax(self):
        motor = MotorIA(algoritmo="minimax", profundidade_minimax=2)
        estado = self._criar_estado()
        resultado = motor.analisar(estado)
        assert resultado.movimento_recomendado is not None

    def test_motor_mcts(self):
        motor = MotorIA(algoritmo="mcts", iteracoes_mcts=50)
        estado = self._criar_estado()
        resultado = motor.analisar(estado)
        assert resultado.movimento_recomendado is not None

    def test_motor_hibrido(self):
        motor = MotorIA(algoritmo="hibrido", largura_beam=5, iteracoes_mcts=30)
        estado = self._criar_estado()
        resultado = motor.analisar(estado)
        assert resultado.movimento_recomendado is not None
        assert resultado.algoritmo_usado != ""

    def test_motor_detecta_combo_powerup(self):
        motor = MotorIA(algoritmo="beam_search", largura_beam=5)
        estado = self._criar_estado()
        # Adicionar dois power-ups adjacentes
        tab = estado.tabuleiro
        tab.definir_peca(2, 2, Peca(
            tipo=TipoPeca.AZUL, powerup=TipoPowerUp.FOGUETE_H, linha=2, coluna=2
        ))
        tab.definir_peca(2, 3, Peca(
            tipo=TipoPeca.AZUL, powerup=TipoPowerUp.BOMBA, linha=2, coluna=3
        ))
        resultado = motor.analisar(estado)
        # Deve detectar o combo de power-ups
        assert resultado.movimento_recomendado is not None

    def test_motor_estatisticas(self):
        motor = MotorIA(algoritmo="beam_search", largura_beam=5)
        estado = self._criar_estado()
        motor.analisar(estado)
        stats = motor.estatisticas
        assert stats["total_analises"] == 1
        assert stats["tempo_medio_ms"] >= 0


if __name__ == "__main__":
    pytest.main([__file__, "-v"])
