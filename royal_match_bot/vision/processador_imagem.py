"""
Utilitários de processamento de imagem para o Royal Match Bot.
Funções de pré-processamento, normalização e análise de imagens.
"""

import logging
from typing import Optional, Tuple, List
import numpy as np

logger = logging.getLogger("royalmatch.vision.processador")


class ProcessadorImagem:
    """Fornece operações de processamento de imagem para o bot."""

    @staticmethod
    def redimensionar(
        imagem: np.ndarray, largura: int, altura: int
    ) -> np.ndarray:
        try:
            import cv2
            return cv2.resize(imagem, (largura, altura), interpolation=cv2.INTER_AREA)
        except ImportError:
            from PIL import Image
            img = Image.fromarray(imagem[:, :, ::-1])
            img = img.resize((largura, altura), Image.LANCZOS)
            return np.array(img)[:, :, ::-1]

    @staticmethod
    def escalar(imagem: np.ndarray, escala: float) -> np.ndarray:
        if escala == 1.0:
            return imagem
        nova_largura = int(imagem.shape[1] * escala)
        nova_altura = int(imagem.shape[0] * escala)
        return ProcessadorImagem.redimensionar(imagem, nova_largura, nova_altura)

    @staticmethod
    def recortar(
        imagem: np.ndarray, x: int, y: int, largura: int, altura: int
    ) -> np.ndarray:
        return imagem[y:y + altura, x:x + largura]

    @staticmethod
    def para_hsv(imagem_bgr: np.ndarray) -> np.ndarray:
        try:
            import cv2
            return cv2.cvtColor(imagem_bgr, cv2.COLOR_BGR2HSV)
        except ImportError:
            raise RuntimeError("OpenCV necessário para conversão HSV.")

    @staticmethod
    def para_cinza(imagem_bgr: np.ndarray) -> np.ndarray:
        try:
            import cv2
            return cv2.cvtColor(imagem_bgr, cv2.COLOR_BGR2GRAY)
        except ImportError:
            r, g, b = imagem_bgr[:,:,2], imagem_bgr[:,:,1], imagem_bgr[:,:,0]
            return (0.299 * r + 0.587 * g + 0.114 * b).astype(np.uint8)

    @staticmethod
    def calcular_hash_perceptual(imagem: np.ndarray, tamanho: int = 8) -> int:
        """Calcula o hash perceptual de uma imagem para comparação rápida."""
        cinza = ProcessadorImagem.para_cinza(imagem)
        pequena = ProcessadorImagem.redimensionar(cinza, tamanho + 1, tamanho)
        diff = pequena[:, 1:] > pequena[:, :-1]
        bits = diff.flatten()
        hash_val = 0
        for bit in bits:
            hash_val = (hash_val << 1) | int(bit)
        return hash_val

    @staticmethod
    def similaridade_hash(hash1: int, hash2: int) -> float:
        """Calcula a similaridade entre dois hashes perceptuais (0.0 a 1.0)."""
        xor = hash1 ^ hash2
        bits_diferentes = bin(xor).count("1")
        total_bits = 64
        return 1.0 - (bits_diferentes / total_bits)

    @staticmethod
    def calcular_cor_media(imagem: np.ndarray) -> Tuple[float, float, float]:
        """Retorna (B, G, R) médio de uma imagem."""
        return (
            float(np.mean(imagem[:, :, 0])),
            float(np.mean(imagem[:, :, 1])),
            float(np.mean(imagem[:, :, 2])),
        )

    @staticmethod
    def detectar_mudanca(
        img1: np.ndarray, img2: np.ndarray, limiar: float = 0.15
    ) -> bool:
        """
        Detecta se houve mudança significativa entre dois frames.
        Retorna True se a diferença for maior que o limiar (0-1).
        """
        if img1.shape != img2.shape:
            return True

        cinza1 = ProcessadorImagem.para_cinza(img1).astype(np.float32)
        cinza2 = ProcessadorImagem.para_cinza(img2).astype(np.float32)
        diff = np.abs(cinza1 - cinza2)
        pct_mudanca = np.mean(diff > 25) / 1.0
        return float(pct_mudanca) > limiar

    @staticmethod
    def aguardar_tela_estavel(
        capturador,
        timeout: float = 8.0,
        limiar: float = 0.05,
        intervalo: float = 0.3,
    ) -> Optional[np.ndarray]:
        """
        Aguarda a tela parar de mudar (animação terminar).
        Retorna o frame estável ou None se timeout.
        """
        import time
        frame_anterior = capturador.capturar()
        if frame_anterior is None:
            return None

        inicio = time.time()
        while time.time() - inicio < timeout:
            time.sleep(intervalo)
            frame_atual = capturador.capturar()
            if frame_atual is None:
                continue
            if not ProcessadorImagem.detectar_mudanca(frame_anterior, frame_atual, limiar):
                return frame_atual
            frame_anterior = frame_atual

        return frame_anterior

    @staticmethod
    def salvar_imagem(imagem: np.ndarray, caminho: str) -> bool:
        """Salva imagem em arquivo."""
        try:
            import cv2
            cv2.imwrite(caminho, imagem)
            return True
        except ImportError:
            try:
                from PIL import Image
                img = Image.fromarray(imagem[:, :, ::-1])
                img.save(caminho)
                return True
            except Exception as e:
                logger.error(f"Erro ao salvar imagem: {e}")
                return False

    @staticmethod
    def aplicar_mascara_cor(
        imagem_hsv: np.ndarray,
        h_min: int, h_max: int,
        s_min: int = 50, s_max: int = 255,
        v_min: int = 50, v_max: int = 255,
    ) -> np.ndarray:
        """Aplica máscara de cor HSV e retorna máscara binária."""
        try:
            import cv2
            lower = np.array([h_min, s_min, v_min])
            upper = np.array([h_max, s_max, v_max])
            return cv2.inRange(imagem_hsv, lower, upper)
        except ImportError:
            raise RuntimeError("OpenCV necessário para máscara de cor.")
