"""
Controlador de dispositivo via ADB (Android Debug Bridge).
Funciona tanto via USB quanto via Wi-Fi (ADB over TCP).
"""

import subprocess
import time
import re
import io
import logging
from typing import Optional, Tuple

import numpy as np

from .controlador_base import ControladorBase

logger = logging.getLogger("royalmatch.device.adb")


class ControladorADB(ControladorBase):
    """
    Controla um dispositivo Android via ADB.

    Suporta:
    - Conexão USB direta
    - Conexão Wi-Fi (ADB over TCP/IP)
    - Screenshot via screencap
    - Toque/swipe via input tap/swipe
    - Monitoramento de bateria
    """

    def __init__(
        self,
        endereco: str = "",
        porta: int = 5555,
        delay_base_ms: int = 300,
        variacao_ms: int = 150,
        timeout_cmd: int = 30,
    ):
        super().__init__(delay_base_ms, variacao_ms)
        self.endereco = endereco
        self.porta = porta
        self.timeout_cmd = timeout_cmd
        self._serial: str = ""

    # ─── Conexão ─────────────────────────────────────────────────────────────

    def conectar(self) -> bool:
        """Conecta ao dispositivo via ADB."""
        try:
            # Verificar se ADB está instalado
            resultado = self._executar_host(["adb", "version"])
            if resultado is None:
                logger.error("ADB não encontrado. Instale o ADB e adicione ao PATH.")
                return False

            if self.endereco:
                # Conexão Wi-Fi
                alvo = f"{self.endereco}:{self.porta}"
                logger.info(f"Conectando via Wi-Fi ADB: {alvo}")
                saida = self._executar_host(["adb", "connect", alvo])
                if saida and ("connected" in saida.lower() or "already" in saida.lower()):
                    self._serial = alvo
                    logger.info(f"Conectado a {alvo}")
                else:
                    logger.error(f"Falha na conexão Wi-Fi: {saida}")
                    return False
            else:
                # Conexão USB - detectar dispositivo automaticamente
                dispositivos = self._listar_dispositivos()
                if not dispositivos:
                    logger.error("Nenhum dispositivo ADB encontrado. Verifique a conexão USB.")
                    return False
                self._serial = dispositivos[0]
                logger.info(f"Conectado via USB ao dispositivo: {self._serial}")

            # Verificar se está online
            if not self._verificar_online():
                logger.error("Dispositivo ADB não está responsivo.")
                return False

            # Obter resolução
            self._largura, self._altura = self.obter_resolucao()
            self._conectado = True
            logger.info(f"Dispositivo pronto. Resolução: {self._largura}x{self._altura}")
            return True

        except Exception as e:
            logger.error(f"Erro ao conectar ADB: {e}")
            return False

    def desconectar(self) -> None:
        if self.endereco and self._serial:
            self._executar_host(["adb", "disconnect", self._serial])
        self._conectado = False
        logger.info("ADB desconectado.")

    # ─── Captura de tela ─────────────────────────────────────────────────────

    def capturar_tela(self) -> Optional[np.ndarray]:
        """Captura tela via ADB screencap e retorna como numpy array BGR."""
        try:
            cmd = self._cmd_adb(["shell", "screencap", "-p"])
            resultado = subprocess.run(
                cmd,
                capture_output=True,
                timeout=self.timeout_cmd,
            )
            if resultado.returncode != 0:
                logger.warning("screencap falhou.")
                return None

            dados = resultado.stdout
            # Em alguns dispositivos, '\r\n' é retornado como '\r\r\n' - corrigir
            dados = dados.replace(b"\r\n", b"\n")

            try:
                from PIL import Image
                img = Image.open(io.BytesIO(dados))
                arr = np.array(img)
                # Converter RGBA ou RGB para BGR (OpenCV)
                if arr.ndim == 3 and arr.shape[2] == 4:
                    arr = arr[:, :, [2, 1, 0]]  # RGBA → BGR
                elif arr.ndim == 3 and arr.shape[2] == 3:
                    arr = arr[:, :, [2, 1, 0]]  # RGB → BGR
                return arr
            except ImportError:
                import cv2
                arr = np.frombuffer(dados, dtype=np.uint8)
                img = cv2.imdecode(arr, cv2.IMREAD_COLOR)
                return img

        except subprocess.TimeoutExpired:
            logger.warning("Timeout ao capturar tela.")
            return None
        except Exception as e:
            logger.error(f"Erro ao capturar tela: {e}")
            return None

    # ─── Controles ───────────────────────────────────────────────────────────

    def _toque_raw(self, x: int, y: int) -> bool:
        saida = self._executar_adb(["shell", "input", "tap", str(x), str(y)])
        return saida is not None

    def _swipe_raw(self, x1: int, y1: int, x2: int, y2: int, duracao_ms: int) -> bool:
        saida = self._executar_adb([
            "shell", "input", "swipe",
            str(x1), str(y1), str(x2), str(y2), str(duracao_ms)
        ])
        return saida is not None

    def pressionar_botao_home(self) -> bool:
        saida = self._executar_adb(["shell", "input", "keyevent", "3"])
        return saida is not None

    def pressionar_voltar(self) -> bool:
        saida = self._executar_adb(["shell", "input", "keyevent", "4"])
        return saida is not None

    def pressionar_menu(self) -> bool:
        saida = self._executar_adb(["shell", "input", "keyevent", "82"])
        return saida is not None

    # ─── App e sistema ────────────────────────────────────────────────────────

    def abrir_app(self, pacote: str) -> bool:
        """Abre o aplicativo pelo nome do pacote."""
        saida = self._executar_adb([
            "shell", "monkey", "-p", pacote,
            "-c", "android.intent.category.LAUNCHER", "1"
        ])
        if saida is None:
            return False
        time.sleep(2.0)
        return True

    def fechar_app(self, pacote: str) -> bool:
        saida = self._executar_adb(["shell", "am", "force-stop", pacote])
        return saida is not None

    def obter_resolucao(self) -> Tuple[int, int]:
        saida = self._executar_adb(["shell", "wm", "size"])
        if saida:
            match = re.search(r"(\d+)x(\d+)", saida)
            if match:
                return int(match.group(1)), int(match.group(2))
        return (1080, 1920)  # padrão comum

    def obter_bateria(self) -> int:
        saida = self._executar_adb(["shell", "dumpsys", "battery"])
        if saida:
            match = re.search(r"level:\s*(\d+)", saida)
            if match:
                return int(match.group(1))
        return 100

    def obter_app_em_foco(self) -> str:
        """Retorna o pacote do aplicativo em foco."""
        saida = self._executar_adb([
            "shell", "dumpsys", "window", "windows"
        ])
        if saida:
            match = re.search(r"mCurrentFocus.*?(\S+)/", saida)
            if match:
                return match.group(1)
        return ""

    def app_esta_em_foco(self, pacote: str) -> bool:
        return pacote in self.obter_app_em_foco()

    def obter_dpi(self) -> int:
        saida = self._executar_adb(["shell", "wm", "density"])
        if saida:
            match = re.search(r"(\d+)", saida)
            if match:
                return int(match.group(1))
        return 420

    def ativar_tela(self) -> bool:
        """Acende a tela se estiver apagada."""
        self._executar_adb(["shell", "input", "keyevent", "26"])
        time.sleep(0.5)
        return True

    def desbloquear_tela(self, pin: str = "") -> bool:
        """Desbloqueia a tela com swipe ou PIN."""
        self._executar_adb([
            "shell", "input", "swipe", "540", "1800", "540", "900", "300"
        ])
        time.sleep(0.8)
        if pin:
            for digito in pin:
                self._executar_adb(["shell", "input", "text", digito])
                time.sleep(0.2)
            self._executar_adb(["shell", "input", "keyevent", "66"])
        return True

    # ─── Utilitários internos ─────────────────────────────────────────────────

    def _cmd_adb(self, args: list) -> list:
        """Monta comando ADB com serial do dispositivo."""
        cmd = ["adb"]
        if self._serial:
            cmd += ["-s", self._serial]
        return cmd + args

    def _executar_adb(self, args: list) -> Optional[str]:
        """Executa comando ADB no dispositivo conectado."""
        return self._executar_host(self._cmd_adb(args))

    def _executar_host(self, cmd: list) -> Optional[str]:
        """Executa comando no host e retorna stdout como string."""
        try:
            resultado = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=self.timeout_cmd,
            )
            return resultado.stdout.strip()
        except subprocess.TimeoutExpired:
            logger.warning(f"Timeout no comando: {' '.join(cmd)}")
            return None
        except FileNotFoundError:
            logger.error(f"Comando não encontrado: {cmd[0]}")
            return None
        except Exception as e:
            logger.error(f"Erro ao executar {cmd}: {e}")
            return None

    def _listar_dispositivos(self) -> list:
        """Lista seriais de dispositivos ADB conectados."""
        saida = self._executar_host(["adb", "devices"])
        if not saida:
            return []
        dispositivos = []
        for linha in saida.split("\n")[1:]:
            partes = linha.strip().split("\t")
            if len(partes) == 2 and partes[1] == "device":
                dispositivos.append(partes[0])
        return dispositivos

    def _verificar_online(self) -> bool:
        saida = self._executar_adb(["shell", "echo", "ok"])
        return saida == "ok"
