"""
Capturador de tela com cache e detecção de mudanças.
Gerencia a captura periódica de frames do dispositivo.
"""

import time
import logging
import threading
from typing import Optional, Callable
import numpy as np

from ..device.controlador_base import ControladorBase
from .processador_imagem import ProcessadorImagem

logger = logging.getLogger("royalmatch.vision.capturador")


class Capturador:
    """
    Gerencia capturas de tela do dispositivo.
    Suporta captura sob demanda e captura contínua em background.
    """

    def __init__(
        self,
        controlador: ControladorBase,
        escala: float = 1.0,
        intervalo_continuo_s: float = 0.5,
    ):
        self.controlador = controlador
        self.escala = escala
        self.intervalo_continuo_s = intervalo_continuo_s

        self._ultimo_frame: Optional[np.ndarray] = None
        self._ultimo_timestamp: float = 0.0
        self._total_capturas: int = 0
        self._capturas_falhas: int = 0

        # Captura contínua
        self._captura_continua_ativa = False
        self._thread_continua: Optional[threading.Thread] = None
        self._callbacks_frame: list = []
        self._lock = threading.Lock()

    @property
    def ultimo_frame(self) -> Optional[np.ndarray]:
        with self._lock:
            return self._ultimo_frame

    @property
    def total_capturas(self) -> int:
        return self._total_capturas

    def capturar(self, forcar: bool = False) -> Optional[np.ndarray]:
        """
        Captura um frame do dispositivo.

        Args:
            forcar: Se True, sempre captura novo frame.
                    Se False, pode retornar frame em cache se recente.

        Returns:
            Frame como numpy array (BGR) ou None em caso de falha.
        """
        try:
            frame = self.controlador.capturar_tela()
            if frame is None:
                self._capturas_falhas += 1
                logger.warning(f"Falha na captura. Total de falhas: {self._capturas_falhas}")
                return None

            if self.escala != 1.0:
                frame = ProcessadorImagem.escalar(frame, self.escala)

            with self._lock:
                self._ultimo_frame = frame
                self._ultimo_timestamp = time.time()

            self._total_capturas += 1
            return frame

        except Exception as e:
            self._capturas_falhas += 1
            logger.error(f"Erro ao capturar frame: {e}")
            return None

    def capturar_regiao(
        self, x: int, y: int, largura: int, altura: int
    ) -> Optional[np.ndarray]:
        """Captura apenas uma região específica da tela."""
        frame = self.capturar()
        if frame is None:
            return None

        # Ajustar coordenadas pela escala
        x_s = int(x * self.escala)
        y_s = int(y * self.escala)
        w_s = int(largura * self.escala)
        h_s = int(altura * self.escala)

        h_frame, w_frame = frame.shape[:2]
        x_s = max(0, min(x_s, w_frame - 1))
        y_s = max(0, min(y_s, h_frame - 1))
        w_s = min(w_s, w_frame - x_s)
        h_s = min(h_s, h_frame - y_s)

        return ProcessadorImagem.recortar(frame, x_s, y_s, w_s, h_s)

    def detectar_mudanca_desde_ultimo(self, limiar: float = 0.05) -> bool:
        """Detecta se houve mudança desde o último frame capturado."""
        frame_anterior = self.ultimo_frame
        frame_novo = self.capturar()
        if frame_anterior is None or frame_novo is None:
            return True
        return ProcessadorImagem.detectar_mudanca(frame_anterior, frame_novo, limiar)

    def aguardar_estabilidade(
        self, timeout: float = 8.0, limiar: float = 0.05, intervalo: float = 0.3
    ) -> Optional[np.ndarray]:
        """
        Aguarda a tela ficar estável (animações terminarem).
        Útil após executar um movimento e esperar o resultado.
        """
        logger.debug("Aguardando estabilidade da tela...")
        frame_anterior = self.capturar()
        if frame_anterior is None:
            return None

        inicio = time.time()
        frames_estaveis = 0
        frames_necessarios = 2

        while time.time() - inicio < timeout:
            time.sleep(intervalo)
            frame_atual = self.capturar()
            if frame_atual is None:
                continue

            if not ProcessadorImagem.detectar_mudanca(frame_anterior, frame_atual, limiar):
                frames_estaveis += 1
                if frames_estaveis >= frames_necessarios:
                    logger.debug(f"Tela estável após {time.time()-inicio:.1f}s")
                    return frame_atual
            else:
                frames_estaveis = 0

            frame_anterior = frame_atual

        logger.warning(f"Timeout aguardando estabilidade ({timeout}s)")
        return frame_anterior

    def iniciar_captura_continua(
        self, callback: Optional[Callable[[np.ndarray], None]] = None
    ) -> None:
        """Inicia thread de captura contínua em background."""
        if self._captura_continua_ativa:
            return

        if callback:
            self._callbacks_frame.append(callback)

        self._captura_continua_ativa = True
        self._thread_continua = threading.Thread(
            target=self._loop_captura_continua,
            daemon=True,
            name="CapturaContinua",
        )
        self._thread_continua.start()
        logger.info("Captura contínua iniciada.")

    def parar_captura_continua(self) -> None:
        """Para a thread de captura contínua."""
        self._captura_continua_ativa = False
        if self._thread_continua:
            self._thread_continua.join(timeout=3.0)
        logger.info("Captura contínua parada.")

    def _loop_captura_continua(self) -> None:
        while self._captura_continua_ativa:
            try:
                frame = self.capturar()
                if frame is not None and self._callbacks_frame:
                    for cb in self._callbacks_frame:
                        try:
                            cb(frame)
                        except Exception as e:
                            logger.error(f"Erro no callback de frame: {e}")
            except Exception as e:
                logger.error(f"Erro no loop de captura contínua: {e}")

            time.sleep(self.intervalo_continuo_s)

    def estatisticas(self) -> dict:
        taxa_sucesso = (
            (self._total_capturas - self._capturas_falhas) / max(1, self._total_capturas)
        ) * 100
        return {
            "total_capturas": self._total_capturas,
            "capturas_falhas": self._capturas_falhas,
            "taxa_sucesso_pct": round(taxa_sucesso, 1),
            "escala": self.escala,
        }
