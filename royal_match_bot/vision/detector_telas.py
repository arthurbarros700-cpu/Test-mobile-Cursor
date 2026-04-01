"""
Detector de telas do Royal Match.
Identifica em qual tela o jogo está para tomar a ação correta.
"""

import logging
from enum import Enum, auto
from typing import Optional, Tuple, Dict
import numpy as np

from .processador_imagem import ProcessadorImagem

logger = logging.getLogger("royalmatch.vision.detector_telas")


class TelasJogo(Enum):
    """Telas possíveis do Royal Match."""
    DESCONHECIDA = "desconhecida"
    CARREGANDO = "carregando"
    MAPA_MUNDIAL = "mapa_mundial"
    SELECAO_FASE = "selecao_fase"
    JOGO_EM_ANDAMENTO = "jogo_em_andamento"
    VITORIA = "vitoria"
    DERROTA = "derrota"
    SEM_VIDAS = "sem_vidas"
    POPUP_BOOSTER = "popup_booster"
    POPUP_GENERICO = "popup_generico"
    CONFIGURACOES = "configuracoes"
    EVENTO_ESPECIAL = "evento_especial"
    AREA_REAL = "area_real"  # modo de decoração
    CONEXAO_PERDIDA = "conexao_perdida"
    APP_FECHADO = "app_fechado"


# ─── Assinaturas de cor dominante para cada tela ─────────────────────────────
# Média BGR esperada + tolerância (análise de regiões específicas)
ASSINATURAS_TELAS: Dict[TelasJogo, Dict] = {
    TelasJogo.VITORIA: {
        "regioes": [(0.35, 0.2, 0.65, 0.5)],
        "brilho_minimo": 180,
        "descricao": "Tela de vitória (fundo dourado/claro)",
    },
    TelasJogo.DERROTA: {
        "regioes": [(0.35, 0.2, 0.65, 0.5)],
        "brilho_maximo": 80,
        "descricao": "Tela de derrota (fundo escuro)",
    },
    TelasJogo.JOGO_EM_ANDAMENTO: {
        "regioes": [(0.03, 0.3, 0.97, 0.78)],
        "variancia_minima": 800,
        "descricao": "Tabuleiro de jogo ativo",
    },
}


class DetectorTelas:
    """
    Detecta a tela atual do Royal Match analisando a imagem capturada.

    Usa análise de brilho, cor e variância em regiões específicas.
    """

    def __init__(self, confianca_minima: float = 0.60):
        self.confianca_minima = confianca_minima
        self._historico: list = []
        self._tela_anterior: TelasJogo = TelasJogo.DESCONHECIDA
        self._hashes_referencia: Dict[TelasJogo, int] = {}

    def detectar(
        self, imagem: np.ndarray
    ) -> Tuple[TelasJogo, float]:
        """
        Detecta a tela atual na imagem.

        Returns:
            Tupla (TelasJogo, confianca)
        """
        if imagem is None or imagem.size == 0:
            return TelasJogo.APP_FECHADO, 1.0

        altura, largura = imagem.shape[:2]

        # Verificar se a tela está completamente escura (app fechado/tela apagada)
        brilho_geral = float(np.mean(imagem))
        if brilho_geral < 15:
            return TelasJogo.APP_FECHADO, 0.95

        # Verificar tela de carregamento (brilho uniforme sem variância)
        variancia_geral = float(np.var(imagem.astype(np.float32)))
        if variancia_geral < 100:
            return TelasJogo.CARREGANDO, 0.80

        # Analisar regiões específicas
        tela, confianca = self._analisar_regioes(imagem, largura, altura)

        self._historico.append(tela)
        if len(self._historico) > 10:
            self._historico.pop(0)
        self._tela_anterior = tela

        logger.debug(f"Tela detectada: {tela.value} (confiança: {confianca:.2f})")
        return tela, confianca

    def _analisar_regioes(
        self, imagem: np.ndarray, largura: int, altura: int
    ) -> Tuple[TelasJogo, float]:
        """Analisa regiões específicas para determinar a tela."""

        # ── Região superior: barra de movimentos/UI do jogo ──
        barra_superior = ProcessadorImagem.recortar(
            imagem, 0, 0, largura, int(altura * 0.12)
        )
        brilho_superior = float(np.mean(barra_superior)) if barra_superior.size > 0 else 0

        # ── Região central: tabuleiro ou tela de resultado ──
        regiao_central = ProcessadorImagem.recortar(
            imagem,
            int(largura * 0.1), int(altura * 0.25),
            int(largura * 0.8), int(altura * 0.55)
        )
        if regiao_central.size > 0:
            variancia_central = float(np.var(regiao_central.astype(np.float32)))
            brilho_central = float(np.mean(regiao_central))
        else:
            variancia_central = 0
            brilho_central = 0

        # ── Região inferior: botões de ação ──
        regiao_inferior = ProcessadorImagem.recortar(
            imagem,
            int(largura * 0.2), int(altura * 0.75),
            int(largura * 0.6), int(altura * 0.20)
        )
        brilho_inferior = float(np.mean(regiao_inferior)) if regiao_inferior.size > 0 else 0

        # ── Lógica de classificação ──

        # Tela de vitória: muito brilhante no centro, UI colorida
        if brilho_central > 190 and variancia_central < 2000:
            return TelasJogo.VITORIA, 0.82

        # Tela de derrota: escura no centro
        if brilho_central < 60 and brilho_superior < 80:
            return TelasJogo.DERROTA, 0.80

        # Jogo em andamento: variância alta no centro (muitas cores de peças)
        if variancia_central > 1200 and brilho_superior > 60:
            return TelasJogo.JOGO_EM_ANDAMENTO, 0.88

        # Popup (modal no centro com fundo escuro)
        if brilho_central > 150 and variancia_central > 500 and variancia_central < 1200:
            return TelasJogo.POPUP_GENERICO, 0.70

        # Mapa/seleção de fase (colorido, variância média)
        if variancia_central > 400 and brilho_inferior > 120:
            return TelasJogo.MAPA_MUNDIAL, 0.65

        # Sem vidas (tela específica)
        if brilho_superior < 100 and brilho_inferior > 150:
            return TelasJogo.SEM_VIDAS, 0.65

        return TelasJogo.DESCONHECIDA, 0.40

    def eh_jogo_ativo(self, tela: TelasJogo) -> bool:
        return tela == TelasJogo.JOGO_EM_ANDAMENTO

    def eh_resultado(self, tela: TelasJogo) -> bool:
        return tela in (TelasJogo.VITORIA, TelasJogo.DERROTA)

    def tela_estavel(self, janela: int = 3) -> Optional[TelasJogo]:
        """Retorna a tela atual se estiver estável nos últimos N frames."""
        if len(self._historico) < janela:
            return None
        ultimas = self._historico[-janela:]
        if all(t == ultimas[0] for t in ultimas):
            return ultimas[0]
        return None
