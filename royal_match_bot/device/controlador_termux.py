"""
Controlador para execução direta no celular via Termux.
Usa termux-api para captura de tela e simulação de toques.
Ideal para usar o bot sem precisar de PC.
"""

import subprocess
import time
import re
import json
import logging
from typing import Optional, Tuple

import numpy as np

from .controlador_base import ControladorBase

logger = logging.getLogger("royalmatch.device.termux")


class ControladorTermux(ControladorBase):
    """
    Controla o dispositivo diretamente via Termux no Android.

    Requisitos no celular:
    - Termux (F-Droid)
    - Termux:API
    - termux-api package: pkg install termux-api
    - python, pip: pkg install python
    - Permissões de acessibilidade ativas

    Alternativa usando root + /dev/input (mais rápido):
    - Requer root ou modo desenvolvedor + permissão de acessibilidade
    """

    def __init__(
        self,
        usar_root: bool = False,
        delay_base_ms: int = 350,
        variacao_ms: int = 150,
    ):
        super().__init__(delay_base_ms, variacao_ms)
        self.usar_root = usar_root
        self._tem_termux_api = False
        self._tem_uiautomator = False

    # ─── Conexão ─────────────────────────────────────────────────────────────

    def conectar(self) -> bool:
        """Verifica as ferramentas disponíveis no Termux."""
        try:
            # Verificar termux-api
            resultado = self._executar(["termux-battery-status"])
            if resultado is not None:
                self._tem_termux_api = True
                logger.info("termux-api disponível.")
            else:
                logger.warning("termux-api não encontrado. Instale: pkg install termux-api")

            # Verificar uiautomator (para toques sem root)
            resultado2 = self._executar(["which", "uiautomator"])
            if resultado2:
                self._tem_uiautomator = True

            # Obter resolução
            self._largura, self._altura = self.obter_resolucao()
            self._conectado = True
            logger.info(f"Termux pronto. Resolução: {self._largura}x{self._altura}")
            return True

        except Exception as e:
            logger.error(f"Erro ao inicializar Termux: {e}")
            return False

    def desconectar(self) -> None:
        self._conectado = False
        logger.info("Controlador Termux encerrado.")

    # ─── Captura de tela ─────────────────────────────────────────────────────

    def capturar_tela(self) -> Optional[np.ndarray]:
        """
        Captura tela via screencap (requer permissão ou root).
        Tenta diferentes métodos em ordem de preferência.
        """
        # Método 1: screencap direto (Android com permissão de tela)
        img = self._capturar_via_screencap()
        if img is not None:
            return img

        # Método 2: termux-screenshot (termux-api)
        if self._tem_termux_api:
            img = self._capturar_via_termux_api()
            if img is not None:
                return img

        logger.error("Não foi possível capturar a tela. Verifique as permissões.")
        return None

    def _capturar_via_screencap(self) -> Optional[np.ndarray]:
        try:
            cmd = ["screencap", "-p", "/data/local/tmp/rmbot_cap.png"]
            if self.usar_root:
                cmd = ["su", "-c"] + [" ".join(cmd)]
            subprocess.run(cmd, timeout=10, capture_output=True)

            leitura = subprocess.run(
                ["cat", "/data/local/tmp/rmbot_cap.png"],
                capture_output=True,
                timeout=10,
            )
            if leitura.returncode != 0:
                return None

            from PIL import Image
            import io
            img = Image.open(io.BytesIO(leitura.stdout))
            arr = np.array(img)
            if arr.ndim == 3 and arr.shape[2] >= 3:
                arr = arr[:, :, [2, 1, 0]]
            return arr
        except Exception as e:
            logger.debug(f"screencap falhou: {e}")
            return None

    def _capturar_via_termux_api(self) -> Optional[np.ndarray]:
        try:
            subprocess.run(
                ["termux-screenshot", "-f", "/data/local/tmp/rmbot_cap.png"],
                timeout=15,
                capture_output=True,
            )
            from PIL import Image
            import io
            with open("/data/local/tmp/rmbot_cap.png", "rb") as f:
                dados = f.read()
            img = Image.open(io.BytesIO(dados))
            arr = np.array(img)
            if arr.ndim == 3 and arr.shape[2] >= 3:
                arr = arr[:, :, [2, 1, 0]]
            return arr
        except Exception as e:
            logger.debug(f"termux-screenshot falhou: {e}")
            return None

    # ─── Controles ───────────────────────────────────────────────────────────

    def _toque_raw(self, x: int, y: int) -> bool:
        """Executa toque via input tap ou uiautomator."""
        if self.usar_root:
            return self._toque_root(x, y)
        return self._toque_input(x, y)

    def _toque_input(self, x: int, y: int) -> bool:
        saida = self._executar(["input", "tap", str(x), str(y)])
        return saida is not None

    def _toque_root(self, x: int, y: int) -> bool:
        cmd = f"input tap {x} {y}"
        saida = self._executar(["su", "-c", cmd])
        return saida is not None

    def _swipe_raw(self, x1: int, y1: int, x2: int, y2: int, duracao_ms: int) -> bool:
        if self.usar_root:
            cmd = f"input swipe {x1} {y1} {x2} {y2} {duracao_ms}"
            saida = self._executar(["su", "-c", cmd])
        else:
            saida = self._executar([
                "input", "swipe",
                str(x1), str(y1), str(x2), str(y2), str(duracao_ms)
            ])
        return saida is not None

    def pressionar_botao_home(self) -> bool:
        saida = self._executar(["input", "keyevent", "3"])
        return saida is not None

    def pressionar_voltar(self) -> bool:
        saida = self._executar(["input", "keyevent", "4"])
        return saida is not None

    # ─── App e sistema ────────────────────────────────────────────────────────

    def abrir_app(self, pacote: str) -> bool:
        saida = self._executar([
            "am", "start", "-n",
            f"{pacote}/{pacote}.MainActivity"
        ])
        if not saida:
            # Tentar via monkey
            saida = self._executar([
                "monkey", "-p", pacote,
                "-c", "android.intent.category.LAUNCHER", "1"
            ])
        time.sleep(2.0)
        return True

    def obter_resolucao(self) -> Tuple[int, int]:
        saida = self._executar(["wm", "size"])
        if saida:
            match = re.search(r"(\d+)x(\d+)", saida)
            if match:
                return int(match.group(1)), int(match.group(2))
        return (1080, 1920)

    def obter_bateria(self) -> int:
        if self._tem_termux_api:
            saida = self._executar(["termux-battery-status"])
            if saida:
                try:
                    dados = json.loads(saida)
                    return int(dados.get("percentage", 100))
                except Exception:
                    pass
        # Fallback via dumpsys
        saida = self._executar(["dumpsys", "battery"])
        if saida:
            match = re.search(r"level:\s*(\d+)", saida)
            if match:
                return int(match.group(1))
        return 100

    # ─── Utilitários internos ─────────────────────────────────────────────────

    def _executar(self, cmd: list, timeout: int = 15) -> Optional[str]:
        """Executa um comando no shell do Termux."""
        try:
            resultado = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=timeout,
            )
            return resultado.stdout.strip()
        except subprocess.TimeoutExpired:
            logger.warning(f"Timeout: {' '.join(cmd)}")
            return None
        except FileNotFoundError:
            return None
        except Exception as e:
            logger.debug(f"Erro executando {cmd}: {e}")
            return None
