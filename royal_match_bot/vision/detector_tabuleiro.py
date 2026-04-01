"""
Detector da área do tabuleiro na tela.
Localiza o grid do Royal Match e extrai cada célula.
"""

import logging
from typing import Optional, Tuple, List
import numpy as np

from ..core.tabuleiro import Tabuleiro
from ..core.pecas import Peca, TipoPeca
from ..device.gestos import RetanguloTabuleiro
from .classificador_pecas import ClassificadorPecas
from .processador_imagem import ProcessadorImagem

logger = logging.getLogger("royalmatch.vision.detector_tabuleiro")


class DetectorTabuleiro:
    """
    Detecta e interpreta o tabuleiro do Royal Match na captura de tela.

    Processo:
    1. Localizar a área do tabuleiro na imagem
    2. Dividir em células (grid)
    3. Classificar cada célula como peça/obstáculo
    4. Montar objeto Tabuleiro com o estado atual
    """

    def __init__(
        self,
        classificador: ClassificadorPecas,
        linhas: int = 9,
        colunas: int = 9,
        confianca_minima: float = 0.70,
    ):
        self.classificador = classificador
        self.linhas = linhas
        self.colunas = colunas
        self.confianca_minima = confianca_minima

        self._retangulo_cache: Optional[RetanguloTabuleiro] = None
        self._ultimo_hash_tela: int = 0

    def detectar_tabuleiro(
        self, imagem: np.ndarray
    ) -> Tuple[Optional[Tabuleiro], Optional[RetanguloTabuleiro]]:
        """
        Detecta o tabuleiro na imagem e retorna (Tabuleiro, RetanguloTabuleiro).
        Retorna (None, None) se o tabuleiro não for encontrado.
        """
        # Tentar usar cache do retângulo se a tela não mudou muito
        rect = self._localizar_area_tabuleiro(imagem)
        if rect is None:
            if self._retangulo_cache:
                rect = self._retangulo_cache
                logger.debug("Usando posição de tabuleiro em cache.")
            else:
                logger.warning("Área do tabuleiro não encontrada.")
                return None, None
        else:
            self._retangulo_cache = rect

        # Extrair e classificar células
        tabuleiro = self._extrair_tabuleiro(imagem, rect)
        return tabuleiro, rect

    def _localizar_area_tabuleiro(
        self, imagem: np.ndarray
    ) -> Optional[RetanguloTabuleiro]:
        """
        Localiza a área do tabuleiro na imagem.

        Estratégias (em ordem de confiabilidade):
        1. Detecção por proporção conhecida do tabuleiro
        2. Detecção por padrão de grid (linhas/colunas regulares)
        3. Posição fixa baseada na resolução (fallback)
        """
        altura, largura = imagem.shape[:2]

        # Estratégia 1: Posição proporcional (funciona para a maioria dos dispositivos)
        # O tabuleiro do Royal Match ocupa ~85% da largura e ~55% da altura
        # centrado horizontalmente e posicionado na parte inferior-central
        rect = self._detectar_por_proporcao(imagem, largura, altura)
        if rect and self._validar_retangulo(imagem, rect):
            return rect

        # Estratégia 2: Posição fixa proporcional como fallback
        return self._posicao_padrao(largura, altura)

    def _detectar_por_proporcao(
        self, imagem: np.ndarray, largura: int, altura: int
    ) -> Optional[RetanguloTabuleiro]:
        """Detecta tabuleiro pela proporção esperada para diferentes resoluções."""
        # Proporções conhecidas do Royal Match para vários dispositivos
        # (x_inicio_pct, y_inicio_pct, x_fim_pct, y_fim_pct)
        proporcoes_candidatas = [
            (0.03, 0.30, 0.97, 0.80),  # Modo retrato padrão 9:16
            (0.03, 0.25, 0.97, 0.78),  # Telas mais longas (20:9)
            (0.05, 0.28, 0.95, 0.82),  # Variação menor
        ]

        for (xp1, yp1, xp2, yp2) in proporcoes_candidatas:
            x1 = int(largura * xp1)
            y1 = int(altura * yp1)
            x2 = int(largura * xp2)
            y2 = int(altura * yp2)
            rect = RetanguloTabuleiro(x1, y1, x2, y2, self.colunas, self.linhas)
            if self._validar_retangulo(imagem, rect):
                return rect

        return None

    def _posicao_padrao(self, largura: int, altura: int) -> RetanguloTabuleiro:
        """Retorna posição padrão do tabuleiro baseada na resolução."""
        x1 = int(largura * 0.03)
        y1 = int(altura * 0.30)
        x2 = int(largura * 0.97)
        y2 = int(altura * 0.78)
        return RetanguloTabuleiro(x1, y1, x2, y2, self.colunas, self.linhas)

    def _validar_retangulo(
        self, imagem: np.ndarray, rect: RetanguloTabuleiro
    ) -> bool:
        """
        Valida se um retângulo candidato realmente contém um tabuleiro.
        Verifica se as células têm cores variadas (não monótono).
        """
        try:
            area = ProcessadorImagem.recortar(
                imagem,
                rect.x_inicio, rect.y_inicio,
                rect.x_fim - rect.x_inicio,
                rect.y_fim - rect.y_inicio,
            )
            if area.size == 0:
                return False

            # Verificar variância de cor (tabuleiro deve ter múltiplas cores)
            variancia = float(np.var(area.astype(np.float32)))
            return variancia > 500
        except Exception:
            return False

    def _extrair_tabuleiro(
        self, imagem: np.ndarray, rect: RetanguloTabuleiro
    ) -> Tabuleiro:
        """Extrai e classifica todas as células do tabuleiro."""
        tabuleiro = Tabuleiro(self.linhas, self.colunas)
        largura_celula = rect.largura_celula
        altura_celula = rect.altura_celula

        for l in range(self.linhas):
            for c in range(self.colunas):
                x = int(rect.x_inicio + c * largura_celula)
                y = int(rect.y_inicio + l * altura_celula)
                w = int(largura_celula)
                h = int(altura_celula)

                # Margem interna para evitar bordas
                margem_x = max(2, int(w * 0.08))
                margem_y = max(2, int(h * 0.08))
                x_c = x + margem_x
                y_c = y + margem_y
                w_c = w - 2 * margem_x
                h_c = h - 2 * margem_y

                celula_img = ProcessadorImagem.recortar(imagem, x_c, y_c, w_c, h_c)
                tipo, powerup, confianca = self.classificador.classificar_celula(celula_img)

                if confianca < self.confianca_minima:
                    tipo = TipoPeca.DESCONHECIDO

                peca = Peca(
                    tipo=tipo,
                    powerup=powerup,
                    linha=l,
                    coluna=c,
                    confianca=confianca,
                )
                tabuleiro.definir_peca(l, c, peca)

        return tabuleiro

    def confianca_media(self, tabuleiro: Tabuleiro) -> float:
        """Calcula a confiança média da classificação do tabuleiro."""
        total = 0.0
        count = 0
        for l in range(tabuleiro.linhas):
            for c in range(tabuleiro.colunas):
                peca = tabuleiro.obter_peca(l, c)
                if peca:
                    total += peca.confianca
                    count += 1
        return total / max(1, count)

    def pecas_desconhecidas(self, tabuleiro: Tabuleiro) -> int:
        """Conta peças com tipo desconhecido (baixa confiança)."""
        return sum(
            1 for l in range(tabuleiro.linhas)
            for c in range(tabuleiro.colunas)
            if tabuleiro.obter_peca(l, c)
            and tabuleiro.obter_peca(l, c).tipo == TipoPeca.DESCONHECIDO
        )
