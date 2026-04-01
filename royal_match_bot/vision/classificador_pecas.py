"""
Classificador de peças do Royal Match por cor/tipo.
Usa análise de cor HSV para identificar cada peça no tabuleiro.
Suporta também template matching como fallback.
"""

import logging
from typing import Optional, Tuple, Dict, List
import numpy as np

from ..core.pecas import TipoPeca, TipoPowerUp
from .processador_imagem import ProcessadorImagem

logger = logging.getLogger("royalmatch.vision.classificador")


# ─── Intervalos de cor HSV para cada tipo de peça ───────────────────────────
# Formato: (H_min, H_max, S_min, S_max, V_min, V_max)
# Esses valores são calibrados para as cores padrão do Royal Match
INTERVALOS_COR_HSV: Dict[TipoPeca, Tuple[int, int, int, int, int, int]] = {
    TipoPeca.AZUL:      (100, 130, 80, 255, 80, 255),
    TipoPeca.VERDE:     (40, 80,   60, 255, 60, 255),
    TipoPeca.VERMELHO:  (0, 15,    80, 255, 80, 255),   # + 165-180
    TipoPeca.AMARELO:   (20, 40,   100, 255, 100, 255),
    TipoPeca.ROXO:      (130, 160, 50, 255, 50, 255),
    TipoPeca.ROSA:      (160, 175, 50, 255, 100, 255),
}

# Cores de referência BGR para cada tipo (para análise de distância euclidiana)
CORES_REFERENCIA_BGR: Dict[TipoPeca, Tuple[int, int, int]] = {
    TipoPeca.AZUL:     (200, 120, 30),
    TipoPeca.VERDE:    (40, 200, 60),
    TipoPeca.VERMELHO: (30, 40, 220),
    TipoPeca.AMARELO:  (20, 220, 240),
    TipoPeca.ROXO:     (180, 30, 150),
    TipoPeca.ROSA:     (160, 90, 220),
}


class ClassificadorPecas:
    """
    Classifica peças do tabuleiro usando análise de cor.

    Algoritmo híbrido:
    1. Análise HSV principal (rápido, confiável na maioria dos casos)
    2. Distância euclidiana de cor como desempate
    3. Cache de classificações para células não alteradas
    """

    def __init__(
        self,
        confianca_minima: float = 0.70,
        tamanho_celula: int = 64,
        metodo: str = "hibrido",
    ):
        self.confianca_minima = confianca_minima
        self.tamanho_celula = tamanho_celula
        self.metodo = metodo

        # Cache: (hash_celula) → (TipoPeca, confianca)
        self._cache: Dict[int, Tuple[TipoPeca, float]] = {}
        self._acertos_cache: int = 0
        self._total_classificacoes: int = 0

    def classificar_celula(
        self, imagem_celula: np.ndarray
    ) -> Tuple[TipoPeca, TipoPowerUp, float]:
        """
        Classifica uma imagem de célula do tabuleiro.

        Returns:
            Tupla (TipoPeca, TipoPowerUp, confianca)
        """
        self._total_classificacoes += 1

        if imagem_celula is None or imagem_celula.size == 0:
            return TipoPeca.DESCONHECIDO, TipoPowerUp.NENHUM, 0.0

        # Redimensionar para tamanho padrão
        celula = ProcessadorImagem.redimensionar(
            imagem_celula, self.tamanho_celula, self.tamanho_celula
        )

        # Verificar cache
        hash_celula = ProcessadorImagem.calcular_hash_perceptual(celula)
        if hash_celula in self._cache:
            self._acertos_cache += 1
            tipo_cached, conf_cached = self._cache[hash_celula]
            return tipo_cached, TipoPowerUp.NENHUM, conf_cached

        # Classificar via análise de cor
        tipo, confianca = self._classificar_por_cor(celula)

        # Verificar se é power-up (brilho/efeito especial na peça)
        powerup = self._detectar_powerup(celula, tipo)

        # Armazenar no cache
        self._cache[hash_celula] = (tipo, confianca)

        # Limpar cache se muito grande
        if len(self._cache) > 10000:
            self._cache.clear()

        return tipo, powerup, confianca

    def _classificar_por_cor(
        self, imagem: np.ndarray
    ) -> Tuple[TipoPeca, float]:
        """Classifica por análise de cor HSV e distância euclidiana."""
        try:
            # Pegar região central da célula (ignorar bordas/sombras)
            h, w = imagem.shape[:2]
            margem = int(min(h, w) * 0.2)
            centro = imagem[margem:h-margem, margem:w-margem]
            if centro.size == 0:
                centro = imagem

            # Método 1: HSV
            tipo_hsv, conf_hsv = self._analisar_hsv(centro)

            # Método 2: Distância de cor BGR
            tipo_bgr, conf_bgr = self._analisar_distancia_cor(centro)

            # Combinar resultados
            if tipo_hsv == tipo_bgr:
                # Ambos concordam - alta confiança
                confianca_final = min(0.99, (conf_hsv + conf_bgr) / 2 + 0.1)
                return tipo_hsv, confianca_final
            elif conf_hsv >= conf_bgr:
                return tipo_hsv, conf_hsv
            else:
                return tipo_bgr, conf_bgr

        except Exception as e:
            logger.debug(f"Erro na classificação: {e}")
            return TipoPeca.DESCONHECIDO, 0.0

    def _analisar_hsv(self, imagem: np.ndarray) -> Tuple[TipoPeca, float]:
        """Analisa dominância de cor via máscara HSV."""
        try:
            imagem_hsv = ProcessadorImagem.para_hsv(imagem)
            total_pixels = imagem.shape[0] * imagem.shape[1]
            if total_pixels == 0:
                return TipoPeca.DESCONHECIDO, 0.0

            melhor_tipo = TipoPeca.DESCONHECIDO
            melhor_contagem = 0

            for tipo, (h_min, h_max, s_min, s_max, v_min, v_max) in INTERVALOS_COR_HSV.items():
                mascara = ProcessadorImagem.aplicar_mascara_cor(
                    imagem_hsv, h_min, h_max, s_min, s_max, v_min, v_max
                )
                contagem = int(np.sum(mascara > 0))

                # Vermelho tem dois intervalos (cruza o 0)
                if tipo == TipoPeca.VERMELHO:
                    mascara2 = ProcessadorImagem.aplicar_mascara_cor(
                        imagem_hsv, 165, 180, s_min, s_max, v_min, v_max
                    )
                    contagem += int(np.sum(mascara2 > 0))

                if contagem > melhor_contagem:
                    melhor_contagem = contagem
                    melhor_tipo = tipo

            confianca = min(0.99, melhor_contagem / max(1, total_pixels))
            return melhor_tipo, confianca

        except Exception:
            return TipoPeca.DESCONHECIDO, 0.0

    def _analisar_distancia_cor(
        self, imagem: np.ndarray
    ) -> Tuple[TipoPeca, float]:
        """Classifica pela menor distância euclidiana à cor de referência."""
        b_med = float(np.mean(imagem[:, :, 0]))
        g_med = float(np.mean(imagem[:, :, 1]))
        r_med = float(np.mean(imagem[:, :, 2]))

        melhor_tipo = TipoPeca.DESCONHECIDO
        menor_dist = float("inf")

        for tipo, (b_ref, g_ref, r_ref) in CORES_REFERENCIA_BGR.items():
            dist = ((b_med - b_ref) ** 2 + (g_med - g_ref) ** 2 + (r_med - r_ref) ** 2) ** 0.5
            if dist < menor_dist:
                menor_dist = dist
                melhor_tipo = tipo

        # Distância máxima possível entre cores (0,0,0) e (255,255,255) = 441
        confianca = max(0.0, 1.0 - (menor_dist / 441.0))
        return melhor_tipo, confianca

    def _detectar_powerup(
        self, imagem: np.ndarray, tipo_base: TipoPeca
    ) -> TipoPowerUp:
        """
        Detecta se a peça tem um power-up (brilho especial, forma diferente).
        Análise baseada em variância de luminância - power-ups são mais brilhantes.
        """
        try:
            cinza = ProcessadorImagem.para_cinza(imagem).astype(np.float32)
            brilho_medio = float(np.mean(cinza))
            variancia = float(np.var(cinza))

            # Power-ups têm brilho mais alto e/ou alta variância (efeitos visuais)
            if brilho_medio > 200 and variancia > 2000:
                # Verificar padrão de foguete (linha de brilho)
                brilho_linhas = np.mean(cinza, axis=1)
                brilho_colunas = np.mean(cinza, axis=0)
                desvio_linhas = float(np.std(brilho_linhas))
                desvio_colunas = float(np.std(brilho_colunas))

                if desvio_colunas > desvio_linhas * 1.5:
                    return TipoPowerUp.FOGUETE_H
                elif desvio_linhas > desvio_colunas * 1.5:
                    return TipoPowerUp.FOGUETE_V
                elif variancia > 4000:
                    return TipoPowerUp.BOMBA
                else:
                    return TipoPowerUp.HELICE

        except Exception:
            pass
        return TipoPowerUp.NENHUM

    def limpar_cache(self) -> None:
        self._cache.clear()

    def estatisticas(self) -> dict:
        taxa_cache = (
            self._acertos_cache / max(1, self._total_classificacoes)
        ) * 100
        return {
            "total_classificacoes": self._total_classificacoes,
            "acertos_cache": self._acertos_cache,
            "taxa_cache_pct": round(taxa_cache, 1),
            "tamanho_cache": len(self._cache),
        }
