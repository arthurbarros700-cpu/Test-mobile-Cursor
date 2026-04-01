"""
Gerenciador de dispositivos ADB para Royal Match Bot.
Responsável por conectar, monitorar e controlar o dispositivo Android via ADB.
"""

import subprocess
import time
import io
import logging
import threading
from typing import Optional, List, Tuple, Dict
from dataclasses import dataclass, field

import numpy as np
from PIL import Image

logger = logging.getLogger("RoyalBot.ADB")


@dataclass
class DispositivoInfo:
    serial: str
    modelo: str = "Desconhecido"
    android: str = "Desconhecido"
    resolucao: Tuple[int, int] = (0, 0)
    dpi: int = 0
    bateria: int = 0
    conectado: bool = False
    extra: Dict = field(default_factory=dict)


class GerenciadorADB:
    """
    Controla o dispositivo Android via ADB puro (subprocess).
    Suporta dispositivos USB e TCP/IP.
    """

    PACKAGE_ROYAL_MATCH = "com.dreamgames.royalmatch"
    ACTIVITY_PRINCIPAL   = "com.dreamgames.royalmatch/com.unity3d.player.UnityPlayerActivity"

    def __init__(self, serial: Optional[str] = None):
        self._serial = serial
        self._lock = threading.Lock()
        self._dispositivo: Optional[DispositivoInfo] = None
        self._ultimo_screenshot: Optional[np.ndarray] = None
        self._monitorando = False
        self._thread_monitor: Optional[threading.Thread] = None

    # ------------------------------------------------------------------ #
    #  Utilitários internos                                                #
    # ------------------------------------------------------------------ #

    def _adb(self, *args, timeout: int = 15) -> Tuple[bool, str]:
        """Executa um comando ADB e retorna (sucesso, saída)."""
        cmd = ["adb"]
        if self._serial:
            cmd += ["-s", self._serial]
        cmd += list(args)
        try:
            result = subprocess.run(
                cmd,
                capture_output=True,
                text=True,
                timeout=timeout,
            )
            ok = result.returncode == 0
            saida = (result.stdout + result.stderr).strip()
            return ok, saida
        except subprocess.TimeoutExpired:
            logger.warning("Timeout no comando ADB: %s", " ".join(args))
            return False, "timeout"
        except FileNotFoundError:
            logger.error("ADB não encontrado. Verifique se o ADB está no PATH.")
            return False, "adb_not_found"
        except Exception as exc:
            logger.error("Erro ADB: %s", exc)
            return False, str(exc)

    def _shell(self, comando: str, timeout: int = 15) -> Tuple[bool, str]:
        return self._adb("shell", comando, timeout=timeout)

    # ------------------------------------------------------------------ #
    #  Descoberta de dispositivos                                          #
    # ------------------------------------------------------------------ #

    def listar_dispositivos(self) -> List[str]:
        """Retorna lista de serials dos dispositivos conectados."""
        ok, saida = self._adb("devices")
        if not ok:
            return []
        dispositivos = []
        for linha in saida.splitlines()[1:]:
            partes = linha.strip().split()
            if len(partes) >= 2 and partes[1] == "device":
                dispositivos.append(partes[0])
        return dispositivos

    def conectar_tcp(self, ip: str, porta: int = 5555) -> bool:
        """Conecta a um dispositivo via TCP/IP."""
        ok, saida = self._adb("connect", f"{ip}:{porta}")
        if ok and ("connected" in saida.lower() or "already connected" in saida.lower()):
            self._serial = f"{ip}:{porta}"
            logger.info("Conectado via TCP/IP a %s:%d", ip, porta)
            return True
        logger.error("Falha ao conectar via TCP/IP: %s", saida)
        return False

    def conectar(self, serial: Optional[str] = None) -> bool:
        """
        Conecta ao dispositivo.
        Se serial for None, usa o primeiro dispositivo disponível.
        """
        if serial:
            self._serial = serial

        dispositivos = self.listar_dispositivos()
        if not dispositivos:
            logger.error("Nenhum dispositivo ADB encontrado.")
            return False

        if self._serial and self._serial not in dispositivos:
            logger.error("Dispositivo %s não encontrado.", self._serial)
            return False

        if not self._serial:
            self._serial = dispositivos[0]
            logger.info("Usando dispositivo: %s", self._serial)

        self._dispositivo = self._obter_info_dispositivo()
        return True

    def desconectar(self):
        self._monitorando = False
        if self._serial and ":" in self._serial:
            self._adb("disconnect", self._serial)
        self._serial = None
        self._dispositivo = None

    # ------------------------------------------------------------------ #
    #  Informações do dispositivo                                          #
    # ------------------------------------------------------------------ #

    def _obter_info_dispositivo(self) -> DispositivoInfo:
        info = DispositivoInfo(serial=self._serial)

        _, modelo = self._shell("getprop ro.product.model")
        info.modelo = modelo.strip() or "Desconhecido"

        _, android = self._shell("getprop ro.build.version.release")
        info.android = android.strip() or "Desconhecido"

        _, res = self._shell("wm size")
        # Saída: "Physical size: 1080x2340" ou "Override size: ..."
        for linha in res.splitlines():
            if ":" in linha:
                parte = linha.split(":")[-1].strip()
                if "x" in parte:
                    try:
                        w, h = parte.split("x")
                        info.resolucao = (int(w.strip()), int(h.strip()))
                    except ValueError:
                        pass
                    break

        _, dpi_raw = self._shell("wm density")
        for linha in dpi_raw.splitlines():
            if ":" in linha:
                try:
                    info.dpi = int(linha.split(":")[-1].strip())
                except ValueError:
                    pass
                break

        info.bateria = self._obter_bateria()
        info.conectado = True
        logger.info(
            "Dispositivo: %s | Android %s | Resolução %dx%d | DPI %d",
            info.modelo, info.android, *info.resolucao, info.dpi,
        )
        return info

    def _obter_bateria(self) -> int:
        _, saida = self._shell("dumpsys battery | grep level")
        try:
            return int(saida.split(":")[-1].strip())
        except (ValueError, IndexError):
            return -1

    @property
    def dispositivo(self) -> Optional[DispositivoInfo]:
        return self._dispositivo

    @property
    def resolucao(self) -> Tuple[int, int]:
        if self._dispositivo:
            return self._dispositivo.resolucao
        return (1080, 1920)

    # ------------------------------------------------------------------ #
    #  Screenshot                                                          #
    # ------------------------------------------------------------------ #

    def screenshot(self) -> Optional[np.ndarray]:
        """Captura a tela do dispositivo e retorna como array NumPy BGR."""
        with self._lock:
            try:
                cmd = ["adb"]
                if self._serial:
                    cmd += ["-s", self._serial]
                cmd += ["exec-out", "screencap", "-p"]

                result = subprocess.run(
                    cmd,
                    capture_output=True,
                    timeout=10,
                )
                if result.returncode != 0 or not result.stdout:
                    return None

                img = Image.open(io.BytesIO(result.stdout))
                frame = np.array(img)
                # Converter RGBA → BGR
                if frame.ndim == 3 and frame.shape[2] == 4:
                    frame = frame[:, :, :3][:, :, ::-1].copy()
                elif frame.ndim == 3 and frame.shape[2] == 3:
                    frame = frame[:, :, ::-1].copy()

                self._ultimo_screenshot = frame
                return frame
            except Exception as exc:
                logger.error("Erro ao capturar screenshot: %s", exc)
                return None

    def ultimo_screenshot(self) -> Optional[np.ndarray]:
        return self._ultimo_screenshot

    # ------------------------------------------------------------------ #
    #  Ações de toque                                                      #
    # ------------------------------------------------------------------ #

    def toque(self, x: int, y: int, delay_pos: float = 0.05) -> bool:
        """Simula um toque na posição (x, y)."""
        ok, _ = self._shell(f"input tap {x} {y}")
        time.sleep(delay_pos)
        return ok

    def toque_longo(self, x: int, y: int, duracao_ms: int = 500) -> bool:
        """Simula um toque longo."""
        ok, _ = self._shell(f"input swipe {x} {y} {x} {y} {duracao_ms}")
        return ok

    def deslizar(
        self,
        x1: int, y1: int,
        x2: int, y2: int,
        duracao_ms: int = 200,
        delay_pos: float = 0.1,
    ) -> bool:
        """Simula um deslize (swipe) de (x1,y1) para (x2,y2)."""
        ok, _ = self._shell(f"input swipe {x1} {y1} {x2} {y2} {duracao_ms}")
        time.sleep(delay_pos)
        return ok

    def movimento_peca(
        self,
        x1: int, y1: int,
        x2: int, y2: int,
        suavidade: int = 150,
    ) -> bool:
        """
        Desliza uma peça do match-3 de forma suave e natural.
        Usa duração variável para imitar comportamento humano.
        """
        import random
        duracao = suavidade + random.randint(-30, 30)
        delay_antes = random.uniform(0.05, 0.12)
        delay_depois = random.uniform(0.08, 0.18)
        time.sleep(delay_antes)
        ok = self.deslizar(x1, y1, x2, y2, duracao_ms=duracao, delay_pos=delay_depois)
        return ok

    def tecla(self, keycode: int) -> bool:
        ok, _ = self._shell(f"input keyevent {keycode}")
        return ok

    def voltar(self) -> bool:
        return self.tecla(4)

    def home(self) -> bool:
        return self.tecla(3)

    # ------------------------------------------------------------------ #
    #  Controle do aplicativo                                              #
    # ------------------------------------------------------------------ #

    def abrir_jogo(self) -> bool:
        """Abre o Royal Match."""
        ok, saida = self._shell(f"monkey -p {self.PACKAGE_ROYAL_MATCH} -c android.intent.category.LAUNCHER 1")
        if not ok:
            logger.error("Erro ao abrir o jogo: %s", saida)
        else:
            logger.info("Royal Match iniciado.")
            time.sleep(3)
        return ok

    def fechar_jogo(self) -> bool:
        ok, _ = self._shell(f"am force-stop {self.PACKAGE_ROYAL_MATCH}")
        return ok

    def jogo_em_primeiro_plano(self) -> bool:
        _, saida = self._shell("dumpsys activity activities | grep mCurrentFocus")
        return self.PACKAGE_ROYAL_MATCH in saida

    def jogo_instalado(self) -> bool:
        _, saida = self._shell(f"pm list packages | grep {self.PACKAGE_ROYAL_MATCH}")
        return self.PACKAGE_ROYAL_MATCH in saida

    def verificar_tela_ligada(self) -> bool:
        _, saida = self._shell("dumpsys power | grep 'Display Power'")
        return "state=ON" in saida

    def ligar_tela(self):
        if not self.verificar_tela_ligada():
            self.tecla(26)  # KEYCODE_POWER
            time.sleep(0.5)
            self._shell("input swipe 540 1600 540 900 300")  # unlock swipe
            time.sleep(0.5)

    # ------------------------------------------------------------------ #
    #  Monitor de bateria em background                                    #
    # ------------------------------------------------------------------ #

    def iniciar_monitor(self, intervalo: int = 60):
        """Monitora bateria e status do dispositivo em background."""
        self._monitorando = True
        self._thread_monitor = threading.Thread(
            target=self._loop_monitor,
            args=(intervalo,),
            daemon=True,
            name="ADB-Monitor",
        )
        self._thread_monitor.start()

    def parar_monitor(self):
        self._monitorando = False

    def _loop_monitor(self, intervalo: int):
        while self._monitorando:
            if self._dispositivo:
                self._dispositivo.bateria = self._obter_bateria()
                self._dispositivo.conectado = bool(self.listar_dispositivos())
                logger.debug("Bateria: %d%% | Conectado: %s",
                             self._dispositivo.bateria,
                             self._dispositivo.conectado)
            time.sleep(intervalo)
