"""
Módulo de visão computacional do Royal Match Bot.
Detecta peças, tabuleiro, botões e estado da tela usando OpenCV.
"""

import logging
import os
from enum import Enum, auto
from typing import Optional, List, Tuple, Dict, NamedTuple
from pathlib import Path

import cv2
import numpy as np

logger = logging.getLogger("RoyalBot.Vision")

ASSETS_DIR = Path(__file__).parent.parent / "assets" / "templates"


class TipoPeca(Enum):
    """Tipos de peças do Royal Match."""
    VAZIO       = auto()
    AZUL        = auto()
    VERMELHO    = auto()
    VERDE       = auto()
    AMARELO     = auto()
    ROXO        = auto()
    LARANJA     = auto()
    # Peças especiais
    BOMBA       = auto()
    FOGUETE_H   = auto()  # foguete horizontal
    FOGUETE_V   = auto()  # foguete vertical
    PROPELLER   = auto()  # hélice
    BOLA_MAGICA = auto()  # bola mágica (arco-íris)
    # Obstáculos
    CAIXA       = auto()
    PEDRA       = auto()
    CORRENTE    = auto()
    GELO        = auto()
    DESCONHECIDO= auto()


class EstadoTela(Enum):
    """Estado atual da tela do jogo."""
    MENU_PRINCIPAL    = auto()
    MAPA              = auto()
    FASE_CARREGANDO   = auto()
    JOGANDO           = auto()
    POPUP_VITORIA     = auto()
    POPUP_DERROTA     = auto()
    POPUP_BOOSTER     = auto()
    POPUP_EVENTO      = auto()
    POPUP_OFERTA      = auto()
    POPUP_VIDA        = auto()
    POPUP_COFRE       = auto()
    POPUP_GENERICO    = auto()
    TELA_BLOQUEADA    = auto()
    DESCONHECIDO      = auto()


class Peca(NamedTuple):
    linha: int
    coluna: int
    tipo: TipoPeca
    cx: int   # centro X em pixels
    cy: int   # centro Y em pixels
    confianca: float = 1.0


class RetanguloTabuleiro(NamedTuple):
    x: int
    y: int
    largura: int
    altura: int
    linhas: int
    colunas: int


# ------------------------------------------------------------------ #
#  Paleta de cores HSV para cada tipo de peça                         #
# ------------------------------------------------------------------ #

PALETA_HSV: Dict[TipoPeca, List[Tuple]] = {
    TipoPeca.AZUL:      [(95,  80, 80),  (130, 255, 255)],
    TipoPeca.VERMELHO:  [(0,   100, 100), (10,  255, 255)],
    TipoPeca.VERDE:     [(40,  60, 60),  (85,  255, 255)],
    TipoPeca.AMARELO:   [(20,  80, 80),  (38,  255, 255)],
    TipoPeca.ROXO:      [(130, 50, 50),  (165, 255, 255)],
    TipoPeca.LARANJA:   [(10,  80, 80),  (22,  255, 255)],
}

# Vermelho aparece em duas faixas no HSV
PALETA_HSV_EXTRA: Dict[TipoPeca, List[Tuple]] = {
    TipoPeca.VERMELHO: [(170, 100, 100), (180, 255, 255)],
}


class DetectorVisao:
    """
    Motor principal de visão computacional.
    Analisa screenshots e retorna estado completo do jogo.
    """

    GRID_LINHAS   = 9
    GRID_COLUNAS  = 9

    # Limiares de template matching
    LIMIAR_BOTAO  = 0.72
    LIMIAR_ESTADO = 0.68

    def __init__(self):
        self._templates: Dict[str, np.ndarray] = {}
        self._carregar_templates()
        self._ultimo_estado = EstadoTela.DESCONHECIDO
        self._tabuleiro_roi: Optional[RetanguloTabuleiro] = None

    # ------------------------------------------------------------------ #
    #  Templates                                                           #
    # ------------------------------------------------------------------ #

    def _carregar_templates(self):
        """Carrega imagens template do diretório assets/templates."""
        if not ASSETS_DIR.exists():
            logger.warning("Diretório de templates não encontrado: %s", ASSETS_DIR)
            return

        for arq in ASSETS_DIR.glob("*.png"):
            chave = arq.stem.lower()
            img = cv2.imread(str(arq), cv2.IMREAD_UNCHANGED)
            if img is not None:
                self._templates[chave] = img
                logger.debug("Template carregado: %s", chave)
        logger.info("%d templates carregados.", len(self._templates))

    def adicionar_template(self, chave: str, imagem: np.ndarray):
        self._templates[chave.lower()] = imagem

    # ------------------------------------------------------------------ #
    #  Detecção de estado da tela                                          #
    # ------------------------------------------------------------------ #

    def detectar_estado(self, frame: np.ndarray) -> EstadoTela:
        """Determina o estado atual da tela."""
        if frame is None or frame.size == 0:
            return EstadoTela.DESCONHECIDO

        h, w = frame.shape[:2]

        # Verifica popups por template matching
        mapeamento_templates = {
            "btn_continuar":  EstadoTela.POPUP_VITORIA,
            "btn_jogar_novamente": EstadoTela.POPUP_DERROTA,
            "popup_booster":  EstadoTela.POPUP_BOOSTER,
            "popup_oferta":   EstadoTela.POPUP_OFERTA,
            "popup_vida":     EstadoTela.POPUP_VIDA,
            "popup_cofre":    EstadoTela.POPUP_COFRE,
            "btn_x_fechar":   EstadoTela.POPUP_GENERICO,
            "estrelas_vitoria": EstadoTela.POPUP_VITORIA,
        }

        for chave, estado in mapeamento_templates.items():
            if chave in self._templates:
                encontrado, _ = self._template_match(frame, chave, self.LIMIAR_ESTADO)
                if encontrado:
                    self._ultimo_estado = estado
                    return estado

        # Heurística: detecta tabuleiro ativo
        if self._detectar_tabuleiro_ativo(frame):
            self._ultimo_estado = EstadoTela.JOGANDO
            return EstadoTela.JOGANDO

        # Heurística: detecta mapa pelo padrão de cores característico
        if self._detectar_mapa(frame):
            self._ultimo_estado = EstadoTela.MAPA
            return EstadoTela.MAPA

        return self._ultimo_estado

    def _detectar_tabuleiro_ativo(self, frame: np.ndarray) -> bool:
        """Verifica se o tabuleiro do match-3 está visível."""
        roi = self._estimar_roi_tabuleiro(frame)
        if roi is None:
            return False
        recorte = frame[roi.y:roi.y+roi.altura, roi.x:roi.x+roi.largura]
        # Conta quantas células têm cor identificável
        score = self._score_tabuleiro(recorte)
        return score > 0.4

    def _detectar_mapa(self, frame: np.ndarray) -> bool:
        """Detecta a tela de mapa por densidade de tons castanhos/azuis."""
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        mask = cv2.inRange(hsv, (18, 40, 60), (35, 180, 200))
        proporcao = np.count_nonzero(mask) / mask.size
        return proporcao > 0.08

    # ------------------------------------------------------------------ #
    #  Detecção do tabuleiro                                               #
    # ------------------------------------------------------------------ #

    def detectar_tabuleiro(self, frame: np.ndarray) -> Optional[RetanguloTabuleiro]:
        """Localiza e retorna o ROI do tabuleiro match-3."""
        roi = self._estimar_roi_tabuleiro(frame)
        if roi:
            self._tabuleiro_roi = roi
        return roi

    def _estimar_roi_tabuleiro(self, frame: np.ndarray) -> Optional[RetanguloTabuleiro]:
        """
        Estima a posição do tabuleiro usando detecção de grade por bordas.
        Funciona independente da resolução do dispositivo.
        """
        h, w = frame.shape[:2]
        cinza = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        # Região de interesse: 10% a 85% verticalmente (ignora HUD)
        y_ini = int(h * 0.10)
        y_fim = int(h * 0.85)
        roi_cinza = cinza[y_ini:y_fim, :]

        # Detecta bordas
        bordas = cv2.Canny(roi_cinza, 30, 100)
        bordas = cv2.dilate(bordas, np.ones((3, 3), np.uint8), iterations=1)

        # Projeção horizontal para encontrar linhas da grade
        proj_h = np.sum(bordas, axis=1).astype(float)
        proj_v = np.sum(bordas, axis=0).astype(float)

        topo, base = self._encontrar_extremos(proj_h, limiar_rel=0.3)
        esq, dir_ = self._encontrar_extremos(proj_v, limiar_rel=0.3)

        if topo is None or base is None or esq is None or dir_ is None:
            # Fallback: estimativa proporcional padrão para Royal Match
            margem_h = int(w * 0.03)
            topo_abs = int(h * 0.28)
            base_abs = int(h * 0.82)
            esq_abs  = margem_h
            dir_abs  = w - margem_h
        else:
            topo_abs = topo + y_ini
            base_abs = base + y_ini
            esq_abs  = esq
            dir_abs  = dir_

        larg = dir_abs - esq_abs
        alt  = base_abs - topo_abs

        # Sanidade: o tabuleiro deve ser aproximadamente quadrado
        razao = larg / alt if alt > 0 else 0
        if razao < 0.5 or razao > 2.0:
            # Força quadrado baseado na largura
            larg = int(w * 0.94)
            alt  = larg
            esq_abs  = int(w * 0.03)
            topo_abs = int(h * 0.28)
            base_abs = topo_abs + alt
            dir_abs  = esq_abs + larg

        return RetanguloTabuleiro(
            x=esq_abs, y=topo_abs,
            largura=larg, altura=alt,
            linhas=self.GRID_LINHAS, colunas=self.GRID_COLUNAS,
        )

    def _encontrar_extremos(
        self, projecao: np.ndarray, limiar_rel: float = 0.3
    ) -> Tuple[Optional[int], Optional[int]]:
        """Encontra início e fim de sinal forte numa projeção 1D."""
        if projecao.max() == 0:
            return None, None
        limiar = projecao.max() * limiar_rel
        indices = np.where(projecao >= limiar)[0]
        if len(indices) < 2:
            return None, None
        return int(indices[0]), int(indices[-1])

    # ------------------------------------------------------------------ #
    #  Classificação de peças                                              #
    # ------------------------------------------------------------------ #

    def classificar_grade(
        self,
        frame: np.ndarray,
        roi: Optional[RetanguloTabuleiro] = None,
    ) -> List[List[Peca]]:
        """
        Retorna a grade completa de peças classificadas.
        grade[linha][coluna] → Peca
        """
        if roi is None:
            roi = self._tabuleiro_roi or self._estimar_roi_tabuleiro(frame)
        if roi is None:
            return []

        recorte = frame[roi.y:roi.y+roi.altura, roi.x:roi.x+roi.largura]
        tam_celula_h = roi.altura // roi.linhas
        tam_celula_w = roi.largura // roi.colunas

        grade: List[List[Peca]] = []
        for lin in range(roi.linhas):
            linha_pecas = []
            for col in range(roi.colunas):
                y1 = lin * tam_celula_h
                x1 = col * tam_celula_w
                y2 = y1 + tam_celula_h
                x2 = x1 + tam_celula_w
                celula = recorte[y1:y2, x1:x2]

                tipo, conf = self._classificar_celula(celula)

                # Coordenadas do centro no frame original
                cx = roi.x + x1 + tam_celula_w // 2
                cy = roi.y + y1 + tam_celula_h // 2

                linha_pecas.append(Peca(lin, col, tipo, cx, cy, conf))
            grade.append(linha_pecas)
        return grade

    def _classificar_celula(self, celula: np.ndarray) -> Tuple[TipoPeca, float]:
        """Classifica o tipo de uma célula usando análise de cor HSV."""
        if celula is None or celula.size == 0:
            return TipoPeca.VAZIO, 0.0

        # Redimensiona para análise uniforme
        celula_r = cv2.resize(celula, (32, 32))

        # Ignora bordas (evita linhas de grade)
        margem = 4
        interior = celula_r[margem:-margem, margem:-margem]

        if interior.size == 0:
            return TipoPeca.VAZIO, 0.0

        hsv = cv2.cvtColor(interior, cv2.COLOR_BGR2HSV)

        melhor_tipo = TipoPeca.DESCONHECIDO
        melhor_prop = 0.0

        total_pixels = interior.shape[0] * interior.shape[1]

        for tipo, (lower, upper) in [
            (k, v) for k, v in [
                (t, (PALETA_HSV[t][0], PALETA_HSV[t][1]))
                for t in PALETA_HSV
            ]
        ]:
            mask = cv2.inRange(hsv,
                               np.array(lower, dtype=np.uint8),
                               np.array(upper, dtype=np.uint8))
            # Segundo range para vermelho
            if tipo in PALETA_HSV_EXTRA:
                lo2, hi2 = PALETA_HSV_EXTRA[tipo]
                mask2 = cv2.inRange(hsv,
                                    np.array(lo2, dtype=np.uint8),
                                    np.array(hi2, dtype=np.uint8))
                mask = cv2.bitwise_or(mask, mask2)

            proporcao = np.count_nonzero(mask) / total_pixels
            if proporcao > melhor_prop:
                melhor_prop = proporcao
                melhor_tipo = tipo

        # Se nenhuma cor dominante → vazio ou obstáculo
        if melhor_prop < 0.15:
            brilho_medio = np.mean(interior[:, :, 2])
            if brilho_medio < 40:
                return TipoPeca.VAZIO, 1.0
            return TipoPeca.DESCONHECIDO, 0.0

        # Detecta peças especiais pelo brilho/saturação alta
        sat_media  = np.mean(hsv[:, :, 1])
        val_media  = np.mean(hsv[:, :, 2])
        if val_media > 220 and sat_media < 30:
            return TipoPeca.BOLA_MAGICA, 0.85

        return melhor_tipo, min(melhor_prop * 2.0, 1.0)

    def _score_tabuleiro(self, recorte: np.ndarray) -> float:
        """Retorna proporção de células com cor identificável."""
        if recorte is None or recorte.size == 0:
            return 0.0
        tam = 36
        h, w = recorte.shape[:2]
        if h < tam or w < tam:
            return 0.0
        n_lin = h // tam
        n_col = w // tam
        identificados = 0
        total = n_lin * n_col
        for i in range(n_lin):
            for j in range(n_col):
                celula = recorte[i*tam:(i+1)*tam, j*tam:(j+1)*tam]
                tipo, conf = self._classificar_celula(celula)
                if tipo not in (TipoPeca.VAZIO, TipoPeca.DESCONHECIDO) and conf > 0.15:
                    identificados += 1
        return identificados / total if total > 0 else 0.0

    # ------------------------------------------------------------------ #
    #  Template matching genérico                                          #
    # ------------------------------------------------------------------ #

    def _template_match(
        self,
        frame: np.ndarray,
        chave: str,
        limiar: float = 0.75,
    ) -> Tuple[bool, Optional[Tuple[int, int, int, int]]]:
        """
        Busca um template no frame.
        Retorna (encontrado, (x, y, largura, altura)).
        """
        template = self._templates.get(chave)
        if template is None:
            return False, None

        # Se template tem canal alpha, usa como máscara
        if template.ndim == 3 and template.shape[2] == 4:
            mascara  = template[:, :, 3]
            template = template[:, :, :3]
        else:
            mascara = None

        h_t, w_t = template.shape[:2]
        h_f, w_f = frame.shape[:2]

        if h_t > h_f or w_t > w_f:
            return False, None

        try:
            if mascara is not None:
                resultado = cv2.matchTemplate(frame, template, cv2.TM_CCORR_NORMED, mask=mascara)
            else:
                resultado = cv2.matchTemplate(frame, template, cv2.TM_CCOEFF_NORMED)

            _, max_val, _, max_loc = cv2.minMaxLoc(resultado)
            if max_val >= limiar:
                x, y = max_loc
                return True, (x, y, w_t, h_t)
        except cv2.error as exc:
            logger.debug("Erro template matching '%s': %s", chave, exc)

        return False, None

    def localizar_botao(
        self,
        frame: np.ndarray,
        chave: str,
        limiar: float = None,
    ) -> Optional[Tuple[int, int]]:
        """
        Encontra um botão e retorna seu centro (cx, cy) ou None.
        """
        limiar = limiar or self.LIMIAR_BOTAO
        encontrado, rect = self._template_match(frame, chave, limiar)
        if encontrado and rect:
            x, y, w, h = rect
            return x + w // 2, y + h // 2
        return None

    # ------------------------------------------------------------------ #
    #  Visualização de debug                                               #
    # ------------------------------------------------------------------ #

    def desenhar_grade(
        self,
        frame: np.ndarray,
        grade: List[List[Peca]],
        roi: RetanguloTabuleiro,
    ) -> np.ndarray:
        """Desenha a grade e tipos das peças sobre o frame para debug."""
        vis = frame.copy()
        cores = {
            TipoPeca.AZUL:       (200,  50,  50),
            TipoPeca.VERMELHO:   (50,   50, 200),
            TipoPeca.VERDE:      (50,  180,  50),
            TipoPeca.AMARELO:    (50,  200, 200),
            TipoPeca.ROXO:       (180,  50, 180),
            TipoPeca.LARANJA:    (50,  140, 200),
            TipoPeca.BOMBA:      (0,    0,  255),
            TipoPeca.BOLA_MAGICA:(200, 200,   0),
            TipoPeca.FOGUETE_H:  (255, 100,   0),
            TipoPeca.FOGUETE_V:  (200,   0, 100),
        }
        cv2.rectangle(vis, (roi.x, roi.y),
                      (roi.x + roi.largura, roi.y + roi.altura),
                      (0, 255, 0), 2)
        for linha in grade:
            for peca in linha:
                cor = cores.get(peca.tipo, (128, 128, 128))
                cv2.circle(vis, (peca.cx, peca.cy), 12, cor, -1)
                cv2.putText(vis,
                            peca.tipo.name[:2],
                            (peca.cx - 8, peca.cy + 4),
                            cv2.FONT_HERSHEY_SIMPLEX, 0.3,
                            (255, 255, 255), 1)
        return vis
