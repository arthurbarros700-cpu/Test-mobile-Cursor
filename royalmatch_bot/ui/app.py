"""
Aplicação principal do Royal Match Bot.
Interface gráfica profissional com PyQt5.
"""

import sys
import logging
import time
import threading
from typing import Optional

import numpy as np
from PyQt5.QtWidgets import (
    QApplication, QMainWindow, QWidget, QVBoxLayout, QHBoxLayout,
    QTabWidget, QLabel, QPushButton, QComboBox, QSpinBox, QDoubleSpinBox,
    QCheckBox, QGroupBox, QGridLayout, QTextEdit, QProgressBar,
    QSlider, QFrame, QSplitter, QStatusBar, QAction, QMenuBar,
    QFileDialog, QMessageBox, QLineEdit, QScrollArea, QSizePolicy,
    QSystemTrayIcon, QMenu,
)
from PyQt5.QtCore import (
    Qt, QTimer, QThread, pyqtSignal, QSize, QPropertyAnimation,
    QEasingCurve,
)
from PyQt5.QtGui import (
    QPixmap, QImage, QFont, QIcon, QColor, QPalette,
    QTextCursor, QPainter, QBrush, QPen,
)

from ..core.bot_engine   import BotEngine, EstadoBot
from ..core.configuracao import ConfiguracaoBot
from ..core.estatisticas import EstatisticasSessao
from ..adb.device_manager import GerenciadorADB

logger = logging.getLogger("RoyalBot.UI")

# ------------------------------------------------------------------ #
#  Estilos (tema escuro profissional)                                  #
# ------------------------------------------------------------------ #

ESTILO_GLOBAL = """
QMainWindow, QWidget {
    background-color: #1a1a2e;
    color: #e0e0e0;
    font-family: 'Segoe UI', Arial, sans-serif;
    font-size: 13px;
}
QTabWidget::pane {
    border: 1px solid #16213e;
    background: #16213e;
    border-radius: 6px;
}
QTabBar::tab {
    background: #0f3460;
    color: #a0a0c0;
    padding: 8px 18px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    margin-right: 2px;
    font-weight: bold;
}
QTabBar::tab:selected {
    background: #e94560;
    color: #ffffff;
}
QTabBar::tab:hover {
    background: #1a4a80;
}
QPushButton {
    background-color: #0f3460;
    color: #ffffff;
    border: none;
    padding: 8px 18px;
    border-radius: 6px;
    font-weight: bold;
    font-size: 13px;
}
QPushButton:hover {
    background-color: #1a4a80;
}
QPushButton:pressed {
    background-color: #e94560;
}
QPushButton:disabled {
    background-color: #333355;
    color: #666688;
}
QPushButton#btn_iniciar {
    background: qlineargradient(x1:0, y1:0, x2:1, y2:0,
        stop:0 #11998e, stop:1 #38ef7d);
    font-size: 15px;
    padding: 12px 28px;
}
QPushButton#btn_iniciar:hover {
    background: qlineargradient(x1:0, y1:0, x2:1, y2:0,
        stop:0 #38ef7d, stop:1 #11998e);
}
QPushButton#btn_parar {
    background: qlineargradient(x1:0, y1:0, x2:1, y2:0,
        stop:0 #e94560, stop:1 #ff6b6b);
    font-size: 15px;
    padding: 12px 28px;
}
QPushButton#btn_parar:hover {
    background-color: #ff4455;
}
QPushButton#btn_pausar {
    background: qlineargradient(x1:0, y1:0, x2:1, y2:0,
        stop:0 #f7971e, stop:1 #ffd200);
    color: #1a1a2e;
}
QGroupBox {
    border: 1px solid #0f3460;
    border-radius: 8px;
    margin-top: 14px;
    padding-top: 8px;
    font-weight: bold;
    color: #7ecfff;
}
QGroupBox::title {
    subcontrol-origin: margin;
    left: 12px;
    padding: 0 6px;
    color: #7ecfff;
}
QLineEdit, QSpinBox, QDoubleSpinBox, QComboBox {
    background-color: #0d2137;
    border: 1px solid #0f3460;
    border-radius: 5px;
    padding: 5px 8px;
    color: #e0e0e0;
}
QLineEdit:focus, QSpinBox:focus, QDoubleSpinBox:focus, QComboBox:focus {
    border: 1px solid #e94560;
}
QComboBox::drop-down {
    border: none;
}
QComboBox::down-arrow {
    image: none;
    width: 12px; height: 12px;
}
QTextEdit {
    background-color: #0d1117;
    border: 1px solid #0f3460;
    border-radius: 5px;
    color: #c9d1d9;
    font-family: 'Consolas', 'Courier New', monospace;
    font-size: 12px;
}
QProgressBar {
    border: 1px solid #0f3460;
    border-radius: 5px;
    background: #0d2137;
    text-align: center;
    color: #ffffff;
    font-weight: bold;
}
QProgressBar::chunk {
    background: qlineargradient(x1:0, y1:0, x2:1, y2:0,
        stop:0 #11998e, stop:1 #38ef7d);
    border-radius: 4px;
}
QSlider::groove:horizontal {
    border: 1px solid #0f3460;
    height: 6px;
    background: #0d2137;
    border-radius: 3px;
}
QSlider::handle:horizontal {
    background: #e94560;
    border: none;
    width: 16px; height: 16px;
    margin: -5px 0;
    border-radius: 8px;
}
QCheckBox {
    spacing: 8px;
}
QCheckBox::indicator {
    width: 18px; height: 18px;
    border: 2px solid #0f3460;
    border-radius: 4px;
    background: #0d2137;
}
QCheckBox::indicator:checked {
    background: #e94560;
    border-color: #e94560;
}
QStatusBar {
    background: #0f3460;
    color: #a0a0c0;
    font-size: 12px;
}
QScrollBar:vertical {
    background: #0d1117;
    width: 10px;
    border-radius: 5px;
}
QScrollBar::handle:vertical {
    background: #0f3460;
    border-radius: 5px;
    min-height: 20px;
}
QScrollBar::handle:vertical:hover {
    background: #e94560;
}
QLabel#lbl_status_badge {
    border-radius: 10px;
    padding: 4px 14px;
    font-weight: bold;
    font-size: 12px;
}
"""


# ------------------------------------------------------------------ #
#  Worker de log para capturar logging do bot                         #
# ------------------------------------------------------------------ #

class LogHandler(logging.Handler):
    def __init__(self, signal):
        super().__init__()
        self._signal = signal

    def emit(self, record):
        msg = self.format(record)
        self._signal.emit(record.levelno, msg)


# ------------------------------------------------------------------ #
#  Thread de preview de tela                                           #
# ------------------------------------------------------------------ #

class ThreadPreview(QThread):
    frame_pronto = pyqtSignal(np.ndarray)

    def __init__(self, engine: BotEngine, intervalo_ms: int = 500):
        super().__init__()
        self._engine = engine
        self._intervalo = intervalo_ms / 1000
        self._ativo = False

    def iniciar(self):
        self._ativo = True
        self.start()

    def parar(self):
        self._ativo = False

    def run(self):
        while self._ativo:
            frame = self._engine.obter_frame_debug()
            if frame is not None:
                self.frame_pronto.emit(frame)
            time.sleep(self._intervalo)


# ------------------------------------------------------------------ #
#  Widget de visualização do tabuleiro                                 #
# ------------------------------------------------------------------ #

class WidgetTabuleiro(QLabel):
    """Exibe o preview da tela do celular em tempo real."""

    def __init__(self, parent=None):
        super().__init__(parent)
        self.setMinimumSize(220, 390)
        self.setMaximumSize(360, 640)
        self.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.setAlignment(Qt.AlignCenter)
        self.setStyleSheet("""
            QLabel {
                background: #0d1117;
                border: 2px solid #0f3460;
                border-radius: 12px;
            }
        """)
        self._mostrar_placeholder()

    def _mostrar_placeholder(self):
        self.setText("📱\nAguardando\nconexão...")
        self.setStyleSheet("""
            QLabel {
                background: #0d1117;
                border: 2px solid #0f3460;
                border-radius: 12px;
                color: #444466;
                font-size: 18px;
            }
        """)

    def atualizar_frame(self, frame: np.ndarray):
        try:
            h, w = frame.shape[:2]
            if frame.ndim == 3 and frame.shape[2] == 3:
                rgb = frame[:, :, ::-1].copy()
            else:
                rgb = frame.copy()
            img = QImage(rgb.data, w, h, w * 3, QImage.Format_RGB888)
            pix = QPixmap.fromImage(img).scaled(
                self.width(), self.height(),
                Qt.KeepAspectRatio, Qt.SmoothTransformation,
            )
            self.setPixmap(pix)
        except Exception as exc:
            logger.debug("Erro ao atualizar preview: %s", exc)


# ------------------------------------------------------------------ #
#  Painel de estatísticas                                              #
# ------------------------------------------------------------------ #

class PainelEstatisticas(QWidget):
    def __init__(self, parent=None):
        super().__init__(parent)
        layout = QGridLayout(self)
        layout.setSpacing(10)

        def _card(titulo: str, valor_inicial: str = "—") -> tuple:
            grp = QGroupBox(titulo)
            vlay = QVBoxLayout(grp)
            lbl = QLabel(valor_inicial)
            lbl.setAlignment(Qt.AlignCenter)
            lbl.setStyleSheet("font-size: 22px; font-weight: bold; color: #38ef7d;")
            vlay.addWidget(lbl)
            return grp, lbl

        grp1, self.lbl_fases    = _card("Fases Concluídas", "0")
        grp2, self.lbl_vitoria  = _card("Taxa de Vitória",   "0%")
        grp3, self.lbl_movs     = _card("Movimentos",        "0")
        grp4, self.lbl_tempo    = _card("Tempo de Sessão",   "00:00:00")
        grp5, self.lbl_fase_at  = _card("Fase Atual",        "—")
        grp6, self.lbl_bateria  = _card("Bateria",           "—")

        for i, grp in enumerate([grp1, grp2, grp3, grp4, grp5, grp6]):
            layout.addWidget(grp, i // 3, i % 3)

    def atualizar(self, sessao: EstatisticasSessao, bateria: int = -1):
        self.lbl_fases.setText(str(sessao.fases_completadas))
        self.lbl_vitoria.setText(f"{sessao.taxa_vitoria:.1f}%")
        self.lbl_movs.setText(str(sessao.movimentos_totais))
        self.lbl_tempo.setText(sessao.tempo_formatado)
        self.lbl_fase_at.setText(str(sessao.fase_atual) if sessao.fase_atual else "—")
        self.lbl_bateria.setText(f"{bateria}%" if bateria >= 0 else "—")


# ------------------------------------------------------------------ #
#  Aba de configurações                                                #
# ------------------------------------------------------------------ #

class AbaConfiguracoes(QScrollArea):
    config_alterada = pyqtSignal(ConfiguracaoBot)

    def __init__(self, config: ConfiguracaoBot, parent=None):
        super().__init__(parent)
        self.config = config
        self.setWidgetResizable(True)
        conteudo = QWidget()
        self.setWidget(conteudo)
        layout = QVBoxLayout(conteudo)
        layout.setSpacing(16)

        # --- Dispositivo ---
        grp_disp = QGroupBox("Dispositivo Android")
        g_lay = QGridLayout(grp_disp)

        g_lay.addWidget(QLabel("Serial ADB (deixe vazio para auto):"), 0, 0)
        self.inp_serial = QLineEdit(config.serial_dispositivo)
        self.inp_serial.setPlaceholderText("ex: emulator-5554 ou vazio")
        g_lay.addWidget(self.inp_serial, 0, 1)

        g_lay.addWidget(QLabel("IP do dispositivo (TCP/IP):"), 1, 0)
        self.inp_ip = QLineEdit(config.ip_dispositivo)
        self.inp_ip.setPlaceholderText("ex: 192.168.1.100")
        g_lay.addWidget(self.inp_ip, 1, 1)

        g_lay.addWidget(QLabel("Porta ADB:"), 2, 0)
        self.inp_porta = QSpinBox()
        self.inp_porta.setRange(1, 65535)
        self.inp_porta.setValue(config.porta_adb)
        g_lay.addWidget(self.inp_porta, 2, 1)

        layout.addWidget(grp_disp)

        # --- Comportamento ---
        grp_comp = QGroupBox("Comportamento do Bot")
        c_lay = QGridLayout(grp_comp)

        c_lay.addWidget(QLabel("Modo de dificuldade:"), 0, 0)
        self.cmb_modo = QComboBox()
        self.cmb_modo.addItems(["FACIL", "NORMAL", "EXPERT"])
        self.cmb_modo.setCurrentText(config.modo_dificuldade)
        c_lay.addWidget(self.cmb_modo, 0, 1)

        c_lay.addWidget(QLabel("Delay entre movimentos (s):"), 1, 0)
        self.spn_delay = QDoubleSpinBox()
        self.spn_delay.setRange(0.1, 5.0)
        self.spn_delay.setSingleStep(0.1)
        self.spn_delay.setValue(config.delay_entre_movimentos)
        c_lay.addWidget(self.spn_delay, 1, 1)

        c_lay.addWidget(QLabel("Variação do delay (±s):"), 2, 0)
        self.spn_var = QDoubleSpinBox()
        self.spn_var.setRange(0.0, 2.0)
        self.spn_var.setSingleStep(0.05)
        self.spn_var.setValue(config.delay_variacao)
        c_lay.addWidget(self.spn_var, 2, 1)

        c_lay.addWidget(QLabel("Máx. tentativas por fase:"), 3, 0)
        self.spn_tent = QSpinBox()
        self.spn_tent.setRange(1, 99)
        self.spn_tent.setValue(config.max_tentativas_fase)
        c_lay.addWidget(self.spn_tent, 3, 1)

        c_lay.addWidget(QLabel("Tempo máx. de sessão (min, 0=∞):"), 4, 0)
        self.spn_tempo = QSpinBox()
        self.spn_tempo.setRange(0, 9999)
        self.spn_tempo.setValue(config.tempo_maximo_sessao)
        c_lay.addWidget(self.spn_tempo, 4, 1)

        c_lay.addWidget(QLabel("Fases por sessão (0=∞):"), 5, 0)
        self.spn_fases = QSpinBox()
        self.spn_fases.setRange(0, 9999)
        self.spn_fases.setValue(config.fases_por_sessao)
        c_lay.addWidget(self.spn_fases, 5, 1)

        c_lay.addWidget(QLabel("Parar com bateria abaixo de (%):"), 6, 0)
        self.spn_bat = QSpinBox()
        self.spn_bat.setRange(0, 50)
        self.spn_bat.setValue(config.parar_bateria_baixa)
        c_lay.addWidget(self.spn_bat, 6, 1)

        layout.addWidget(grp_comp)

        # --- Opções ---
        grp_opt = QGroupBox("Opções")
        o_lay = QVBoxLayout(grp_opt)

        self.chk_boosters     = QCheckBox("Usar boosters automaticamente")
        self.chk_boosters.setChecked(config.usar_boosters)
        self.chk_vidas        = QCheckBox("Aceitar vidas enviadas por amigos")
        self.chk_vidas.setChecked(config.aceitar_vidas)
        self.chk_popups       = QCheckBox("Fechar popups automaticamente")
        self.chk_popups.setChecked(config.fechar_popups)
        self.chk_debug_ss     = QCheckBox("Salvar screenshots de debug")
        self.chk_debug_ss.setChecked(config.salvar_screenshots_debug)

        for chk in [self.chk_boosters, self.chk_vidas, self.chk_popups, self.chk_debug_ss]:
            o_lay.addWidget(chk)
        layout.addWidget(grp_opt)

        # --- Botão Salvar ---
        btn_salvar = QPushButton("💾  Salvar Configurações")
        btn_salvar.clicked.connect(self._salvar)
        layout.addWidget(btn_salvar)
        layout.addStretch()

    def _salvar(self):
        self.config.serial_dispositivo      = self.inp_serial.text().strip()
        self.config.ip_dispositivo          = self.inp_ip.text().strip()
        self.config.porta_adb               = self.inp_porta.value()
        self.config.modo_dificuldade        = self.cmb_modo.currentText()
        self.config.delay_entre_movimentos  = self.spn_delay.value()
        self.config.delay_variacao          = self.spn_var.value()
        self.config.max_tentativas_fase     = self.spn_tent.value()
        self.config.tempo_maximo_sessao     = self.spn_tempo.value()
        self.config.fases_por_sessao        = self.spn_fases.value()
        self.config.parar_bateria_baixa     = self.spn_bat.value()
        self.config.usar_boosters           = self.chk_boosters.isChecked()
        self.config.aceitar_vidas           = self.chk_vidas.isChecked()
        self.config.fechar_popups           = self.chk_popups.isChecked()
        self.config.salvar_screenshots_debug = self.chk_debug_ss.isChecked()
        self.config.salvar()
        self.config_alterada.emit(self.config)
        QMessageBox.information(self, "Salvo", "Configurações salvas com sucesso!")


# ------------------------------------------------------------------ #
#  Janela principal                                                    #
# ------------------------------------------------------------------ #

class JanelaPrincipal(QMainWindow):

    sinal_log      = pyqtSignal(int, str)
    sinal_estado   = pyqtSignal(EstadoBot)
    sinal_stats    = pyqtSignal(EstatisticasSessao)

    def __init__(self):
        super().__init__()
        self.config = ConfiguracaoBot.carregar()
        self.engine = BotEngine(self.config)
        self._setup_engine_callbacks()
        self._thread_preview: Optional[ThreadPreview] = None

        self.setWindowTitle("Royal Match Bot  •  v2.0")
        self.setMinimumSize(1000, 680)
        self.resize(1200, 760)
        self.setStyleSheet(ESTILO_GLOBAL)

        self._construir_ui()
        self._setup_log_handler()
        self._setup_timer_stats()
        self._setup_tray()

    # ------------------------------------------------------------------ #
    #  Construção da UI                                                    #
    # ------------------------------------------------------------------ #

    def _construir_ui(self):
        # Barra de menu
        self._construir_menu()

        central = QWidget()
        self.setCentralWidget(central)
        raiz = QHBoxLayout(central)
        raiz.setSpacing(12)
        raiz.setContentsMargins(12, 12, 12, 12)

        # -- Coluna esquerda: preview + controles --
        col_esq = QVBoxLayout()
        col_esq.setSpacing(10)

        # Badge de status
        self.lbl_badge = QLabel("● PARADO")
        self.lbl_badge.setObjectName("lbl_status_badge")
        self.lbl_badge.setAlignment(Qt.AlignCenter)
        self._set_badge("PARADO")
        col_esq.addWidget(self.lbl_badge)

        # Preview
        self.widget_preview = WidgetTabuleiro()
        col_esq.addWidget(self.widget_preview, stretch=1)

        # Controles
        grp_ctrl = QGroupBox("Controle")
        ctrl_lay = QVBoxLayout(grp_ctrl)

        self.btn_iniciar = QPushButton("▶  INICIAR BOT")
        self.btn_iniciar.setObjectName("btn_iniciar")
        self.btn_iniciar.clicked.connect(self._iniciar_bot)

        self.btn_pausar = QPushButton("⏸  PAUSAR")
        self.btn_pausar.setObjectName("btn_pausar")
        self.btn_pausar.setEnabled(False)
        self.btn_pausar.clicked.connect(self._pausar_bot)

        self.btn_parar = QPushButton("■  PARAR")
        self.btn_parar.setObjectName("btn_parar")
        self.btn_parar.setEnabled(False)
        self.btn_parar.clicked.connect(self._parar_bot)

        for btn in [self.btn_iniciar, self.btn_pausar, self.btn_parar]:
            ctrl_lay.addWidget(btn)

        col_esq.addWidget(grp_ctrl)

        # Dispositivos disponíveis
        grp_dev = QGroupBox("Dispositivos ADB")
        dev_lay = QHBoxLayout(grp_dev)
        self.cmb_dispositivos = QComboBox()
        self.cmb_dispositivos.setMinimumWidth(180)
        btn_refresh = QPushButton("🔄")
        btn_refresh.setFixedWidth(38)
        btn_refresh.setToolTip("Atualizar lista de dispositivos")
        btn_refresh.clicked.connect(self._atualizar_dispositivos)
        dev_lay.addWidget(self.cmb_dispositivos)
        dev_lay.addWidget(btn_refresh)
        col_esq.addWidget(grp_dev)

        self._atualizar_dispositivos()

        raiz.addLayout(col_esq, stretch=0)

        # -- Coluna direita: abas --
        abas = QTabWidget()

        # Aba: Dashboard
        self.aba_dashboard = QWidget()
        self._construir_aba_dashboard(self.aba_dashboard)
        abas.addTab(self.aba_dashboard, "📊  Dashboard")

        # Aba: Configurações
        self.aba_config = AbaConfiguracoes(self.config)
        self.aba_config.config_alterada.connect(self._config_atualizada)
        abas.addTab(self.aba_config, "⚙️  Configurações")

        # Aba: Log
        self.aba_log = QWidget()
        self._construir_aba_log(self.aba_log)
        abas.addTab(self.aba_log, "📝  Log")

        raiz.addWidget(abas, stretch=1)

        # Barra de status
        self.statusBar().showMessage("Pronto — conecte um dispositivo e pressione INICIAR")

    def _construir_menu(self):
        barra = self.menuBar()
        barra.setStyleSheet("""
            QMenuBar { background: #0f3460; color: #e0e0e0; }
            QMenuBar::item:selected { background: #e94560; }
            QMenu { background: #16213e; color: #e0e0e0; }
            QMenu::item:selected { background: #e94560; }
        """)

        menu_arquivo = barra.addMenu("Arquivo")
        act_exportar = QAction("Exportar Estatísticas", self)
        act_exportar.triggered.connect(self._exportar_stats)
        act_sair = QAction("Sair", self)
        act_sair.triggered.connect(self.close)
        menu_arquivo.addAction(act_exportar)
        menu_arquivo.addSeparator()
        menu_arquivo.addAction(act_sair)

        menu_bot = barra.addMenu("Bot")
        act_reiniciar_jogo = QAction("Reiniciar Royal Match", self)
        act_reiniciar_jogo.triggered.connect(self._reiniciar_jogo)
        menu_bot.addAction(act_reiniciar_jogo)

        menu_ajuda = barra.addMenu("Ajuda")
        act_sobre = QAction("Sobre", self)
        act_sobre.triggered.connect(self._mostrar_sobre)
        menu_ajuda.addAction(act_sobre)

    def _construir_aba_dashboard(self, parent: QWidget):
        layout = QVBoxLayout(parent)
        layout.setSpacing(12)

        self.painel_stats = PainelEstatisticas()
        layout.addWidget(self.painel_stats)

        # Barra de progresso da fase
        grp_prog = QGroupBox("Progresso da Sessão")
        p_lay = QVBoxLayout(grp_prog)
        self.lbl_progresso = QLabel("Fase 0  •  0 movimentos nesta fase")
        self.lbl_progresso.setStyleSheet("color: #a0c0ff;")
        self.barra_progresso = QProgressBar()
        self.barra_progresso.setRange(0, 100)
        self.barra_progresso.setValue(0)
        self.barra_progresso.setFormat("%p%  vitórias")
        p_lay.addWidget(self.lbl_progresso)
        p_lay.addWidget(self.barra_progresso)
        layout.addWidget(grp_prog)

        # Último movimento
        grp_mov = QGroupBox("Último Movimento Executado")
        m_lay = QVBoxLayout(grp_mov)
        self.lbl_ultimo_mov = QLabel("—")
        self.lbl_ultimo_mov.setWordWrap(True)
        self.lbl_ultimo_mov.setStyleSheet("color: #ffd200; font-size: 12px;")
        m_lay.addWidget(self.lbl_ultimo_mov)
        layout.addWidget(grp_mov)

        layout.addStretch()

    def _construir_aba_log(self, parent: QWidget):
        layout = QVBoxLayout(parent)

        barra_log = QHBoxLayout()
        lbl_nivel = QLabel("Nível:")
        self.cmb_nivel_log = QComboBox()
        self.cmb_nivel_log.addItems(["DEBUG", "INFO", "WARNING", "ERROR"])
        self.cmb_nivel_log.setCurrentText("INFO")
        self.cmb_nivel_log.currentTextChanged.connect(self._mudar_nivel_log)
        btn_limpar = QPushButton("🗑  Limpar")
        btn_limpar.setFixedWidth(90)
        btn_limpar.clicked.connect(self._limpar_log)
        barra_log.addWidget(lbl_nivel)
        barra_log.addWidget(self.cmb_nivel_log)
        barra_log.addStretch()
        barra_log.addWidget(btn_limpar)
        layout.addLayout(barra_log)

        self.txt_log = QTextEdit()
        self.txt_log.setReadOnly(True)
        self.txt_log.setLineWrapMode(QTextEdit.NoWrap)
        layout.addWidget(self.txt_log)

    # ------------------------------------------------------------------ #
    #  Lógica de controle                                                  #
    # ------------------------------------------------------------------ #

    def _iniciar_bot(self):
        serial = self.cmb_dispositivos.currentText().strip()
        serial = serial if serial and serial != "(nenhum)" else None

        # Recria engine se config foi alterada
        self.engine = BotEngine(self.config)
        self._setup_engine_callbacks()

        ok = self.engine.iniciar(serial)
        if not ok:
            QMessageBox.warning(self, "Erro", "Não foi possível iniciar o bot.")
            return

        self.btn_iniciar.setEnabled(False)
        self.btn_pausar.setEnabled(True)
        self.btn_parar.setEnabled(True)

        # Inicia preview
        self._thread_preview = ThreadPreview(self.engine, intervalo_ms=600)
        self._thread_preview.frame_pronto.connect(self.widget_preview.atualizar_frame)
        self._thread_preview.iniciar()

    def _pausar_bot(self):
        if self.engine.estado == EstadoBot.PAUSADO:
            self.engine.retomar()
            self.btn_pausar.setText("⏸  PAUSAR")
        else:
            self.engine.pausar()
            self.btn_pausar.setText("▶  RETOMAR")

    def _parar_bot(self):
        if self._thread_preview:
            self._thread_preview.parar()
        self.engine.parar()
        self.btn_iniciar.setEnabled(True)
        self.btn_pausar.setEnabled(False)
        self.btn_parar.setEnabled(False)
        self.btn_pausar.setText("⏸  PAUSAR")
        self._set_badge("PARADO")

    def _atualizar_dispositivos(self):
        adb_tmp = GerenciadorADB()
        devs = adb_tmp.listar_dispositivos()
        self.cmb_dispositivos.clear()
        if devs:
            for d in devs:
                self.cmb_dispositivos.addItem(d)
        else:
            self.cmb_dispositivos.addItem("(nenhum)")

    def _config_atualizada(self, config: ConfiguracaoBot):
        self.config = config

    def _reiniciar_jogo(self):
        if self.engine.rodando:
            adb = GerenciadorADB(self.cmb_dispositivos.currentText())
            adb.fechar_jogo()
            time.sleep(1)
            adb.abrir_jogo()

    # ------------------------------------------------------------------ #
    #  Engine callbacks                                                    #
    # ------------------------------------------------------------------ #

    def _setup_engine_callbacks(self):
        self.engine.on("estado_mudou",  self._cb_estado_mudou)
        self.engine.on("vitoria",       self._cb_vitoria)
        self.engine.on("derrota",       self._cb_derrota)
        self.engine.on("movimento",     self._cb_movimento)
        self.engine.on("log",           self._cb_log_bot)
        self.engine.on("erro",          self._cb_erro)
        self.engine.on("bateria_baixa", self._cb_bateria_baixa)

    def _cb_estado_mudou(self, ev, dados):
        estado = dados["atual"]
        self.sinal_estado.emit(estado)
        nomes = {
            EstadoBot.PARADO:          ("PARADO",     "#888888"),
            EstadoBot.INICIALIZANDO:   ("INICIANDO",  "#ffd200"),
            EstadoBot.ABRINDO_JOGO:    ("ABRINDO",    "#ffd200"),
            EstadoBot.AGUARDANDO_TELA: ("AGUARDANDO", "#7ecfff"),
            EstadoBot.NAVEGANDO_MAPA:  ("NO MAPA",    "#7ecfff"),
            EstadoBot.CARREGANDO_FASE: ("CARREGANDO", "#ffd200"),
            EstadoBot.JOGANDO:         ("JOGANDO",    "#38ef7d"),
            EstadoBot.TRATANDO_POPUP:  ("POPUP",      "#f7971e"),
            EstadoBot.PAUSADO:         ("PAUSADO",    "#f7971e"),
            EstadoBot.ERRO:            ("ERRO",       "#ff4455"),
        }
        txt, cor = nomes.get(estado, ("?", "#888888"))
        self._set_badge(txt, cor)

    def _cb_vitoria(self, ev, fase_stat):
        self._log_colorido(f"🏆 VITÓRIA — Fase {fase_stat.numero_fase} | "
                           f"{fase_stat.movimentos} movimentos | "
                           f"{fase_stat.tempo_segundos:.1f}s", "#38ef7d")

    def _cb_derrota(self, ev, fase_stat):
        self._log_colorido(f"💀 Derrota — Fase {fase_stat.numero_fase} | "
                           f"{fase_stat.movimentos} movimentos", "#ff6b6b")

    def _cb_movimento(self, ev, dados):
        mov = dados["movimento"]
        self.lbl_ultimo_mov.setText(
            f"Linha {mov.linha}, Col {mov.coluna} {mov.direcao.name}  "
            f"| Pontuação: {mov.pontuacao:.1f}  |  {mov.descricao}"
        )

    def _cb_log_bot(self, ev, msg):
        self._log_colorido(f"🤖 {msg}", "#7ecfff")

    def _cb_erro(self, ev, msg):
        self._log_colorido(f"❌ ERRO: {msg}", "#ff4455")
        QTimer.singleShot(0, lambda: QMessageBox.critical(self, "Erro no Bot", str(msg)))

    def _cb_bateria_baixa(self, ev, nivel):
        self._log_colorido(f"🔋 Bateria baixa: {nivel}%", "#f7971e")

    # ------------------------------------------------------------------ #
    #  Log                                                                 #
    # ------------------------------------------------------------------ #

    def _setup_log_handler(self):
        self.sinal_log.connect(self._adicionar_log)
        handler = LogHandler(self.sinal_log)
        handler.setFormatter(logging.Formatter("[%(asctime)s] %(levelname)-8s %(name)s — %(message)s",
                                               datefmt="%H:%M:%S"))
        logging.getLogger("RoyalBot").addHandler(handler)
        logging.getLogger("RoyalBot").setLevel(logging.DEBUG)

    def _adicionar_log(self, nivel: int, msg: str):
        cores = {
            logging.DEBUG:   "#666688",
            logging.INFO:    "#c9d1d9",
            logging.WARNING: "#ffd200",
            logging.ERROR:   "#ff6b6b",
            logging.CRITICAL:"#ff4455",
        }
        cor = cores.get(nivel, "#c9d1d9")
        self.txt_log.append(f'<span style="color:{cor}">{msg}</span>')
        self.txt_log.moveCursor(QTextCursor.End)

    def _log_colorido(self, msg: str, cor: str = "#c9d1d9"):
        self.txt_log.append(f'<span style="color:{cor}">{msg}</span>')
        self.txt_log.moveCursor(QTextCursor.End)

    def _limpar_log(self):
        self.txt_log.clear()

    def _mudar_nivel_log(self, nivel: str):
        logging.getLogger("RoyalBot").setLevel(getattr(logging, nivel))

    # ------------------------------------------------------------------ #
    #  Estatísticas — timer                                                #
    # ------------------------------------------------------------------ #

    def _setup_timer_stats(self):
        self._timer_stats = QTimer(self)
        self._timer_stats.setInterval(2000)
        self._timer_stats.timeout.connect(self._atualizar_stats)
        self._timer_stats.start()

    def _atualizar_stats(self):
        sessao = self.engine.sessao
        disp   = self.engine.obter_info_dispositivo()
        bat    = disp.bateria if disp else -1
        self.painel_stats.atualizar(sessao, bat)

        total = sessao.fases_completadas + sessao.fases_falhas
        if total > 0:
            self.barra_progresso.setValue(int(sessao.taxa_vitoria))

        self.lbl_progresso.setText(
            f"Fase {sessao.fase_atual}  •  {sessao.movimentos_totais} movimentos totais"
        )

        if disp:
            self.statusBar().showMessage(
                f"Dispositivo: {disp.modelo}  |  Android {disp.android}  |  "
                f"Bateria: {bat}%  |  Resolução: {disp.resolucao[0]}×{disp.resolucao[1]}"
            )

    # ------------------------------------------------------------------ #
    #  Badge de status                                                     #
    # ------------------------------------------------------------------ #

    def _set_badge(self, texto: str, cor: str = "#888888"):
        self.lbl_badge.setText(f"● {texto}")
        self.lbl_badge.setStyleSheet(f"""
            QLabel {{
                background-color: {cor}22;
                border: 1px solid {cor};
                border-radius: 10px;
                padding: 4px 14px;
                font-weight: bold;
                font-size: 13px;
                color: {cor};
            }}
        """)

    # ------------------------------------------------------------------ #
    #  Bandeja do sistema                                                  #
    # ------------------------------------------------------------------ #

    def _setup_tray(self):
        self._tray = QSystemTrayIcon(self)
        self._tray.setToolTip("Royal Match Bot")
        menu_tray = QMenu()
        act_mostrar = menu_tray.addAction("Mostrar")
        act_mostrar.triggered.connect(self.showNormal)
        act_sair = menu_tray.addAction("Sair")
        act_sair.triggered.connect(self.close)
        self._tray.setContextMenu(menu_tray)
        self._tray.activated.connect(lambda r: self.showNormal() if r == QSystemTrayIcon.DoubleClick else None)
        self._tray.show()

    # ------------------------------------------------------------------ #
    #  Misc                                                                #
    # ------------------------------------------------------------------ #

    def _exportar_stats(self):
        caminho, _ = QFileDialog.getSaveFileName(
            self, "Exportar Estatísticas", "stats_royalmatch.json", "JSON (*.json)"
        )
        if caminho:
            self.engine.sessao.salvar()
            QMessageBox.information(self, "Exportado",
                                    f"Estatísticas salvas em:\n{caminho}")

    def _mostrar_sobre(self):
        QMessageBox.about(
            self,
            "Sobre — Royal Match Bot v2.0",
            "<h2>Royal Match Bot v2.0</h2>"
            "<p>Bot profissional para Royal Match com:</p>"
            "<ul>"
            "<li>Controle via ADB (USB e TCP/IP)</li>"
            "<li>Visão computacional OpenCV</li>"
            "<li>IA com lookahead e pontuação ponderada</li>"
            "<li>Interface completa em português</li>"
            "</ul>"
            "<p><b>Uso:</b> Conecte o celular, ative o modo desenvolvedor e "
            "pressione INICIAR.</p>",
        )

    def closeEvent(self, event):
        if self.engine.rodando:
            resp = QMessageBox.question(
                self, "Sair",
                "O bot ainda está rodando. Deseja parar e sair?",
                QMessageBox.Yes | QMessageBox.No,
            )
            if resp == QMessageBox.No:
                event.ignore()
                return
            self._parar_bot()
        self._tray.hide()
        event.accept()


# ------------------------------------------------------------------ #
#  Entry point                                                         #
# ------------------------------------------------------------------ #

def main():
    # Configura logging raiz
    logging.basicConfig(
        level=logging.INFO,
        format="[%(asctime)s] %(levelname)-8s %(name)s — %(message)s",
        datefmt="%H:%M:%S",
    )

    app = QApplication(sys.argv)
    app.setApplicationName("Royal Match Bot")
    app.setApplicationVersion("2.0")

    # Tenta aplicar tema escuro via qdarkstyle
    try:
        import qdarkstyle
        app.setStyleSheet(qdarkstyle.load_stylesheet(qt_api="pyqt5"))
    except ImportError:
        pass

    janela = JanelaPrincipal()
    janela.show()
    sys.exit(app.exec_())


if __name__ == "__main__":
    main()
