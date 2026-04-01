"""
Motor principal do Royal Match Bot.
Implementa a máquina de estados que controla o fluxo completo do jogo:
  INICIALIZANDO → ABRINDO_JOGO → AGUARDANDO_TELA → NAVEGANDO_MAPA →
  CARREGANDO_FASE → JOGANDO → TRATANDO_POPUP → PAUSADO → PARADO
"""

import time
import random
import logging
import threading
from enum import Enum, auto
from typing import Optional, Callable, Dict, Any
from pathlib import Path

from ..adb.device_manager   import GerenciadorADB
from ..vision.detector      import DetectorVisao, EstadoTela, TipoPeca
from ..ai.solver            import SolverIA, ModoDificuldade, Movimento
from .configuracao          import ConfiguracaoBot
from .estatisticas          import EstatisticasSessao, EstatisticaFase

logger = logging.getLogger("RoyalBot.Engine")


class EstadoBot(Enum):
    PARADO           = auto()
    INICIALIZANDO    = auto()
    ABRINDO_JOGO     = auto()
    AGUARDANDO_TELA  = auto()
    NAVEGANDO_MAPA   = auto()
    CARREGANDO_FASE  = auto()
    JOGANDO          = auto()
    TRATANDO_POPUP   = auto()
    PAUSADO          = auto()
    ERRO             = auto()


# Tipo para callbacks de evento
TipoCallback = Callable[[str, Any], None]


class BotEngine:
    """
    Orquestra todos os módulos: ADB, Visão e IA.
    Roda em thread separada e emite eventos via callbacks.
    """

    # Quantas vezes tenta fechar um popup antes de desistir
    MAX_TENTATIVAS_POPUP = 6
    # Timeout aguardando tela carregar (segundos)
    TIMEOUT_CARREGANDO   = 45
    # Intervalo entre ciclos de análise (segundos)
    CICLO_JOGANDO        = 0.40

    def __init__(self, config: Optional[ConfiguracaoBot] = None):
        self.config = config or ConfiguracaoBot.carregar()
        self._adb     = GerenciadorADB()
        self._visao   = DetectorVisao()
        self._solver  = SolverIA(
            modo=ModoDificuldade[self.config.modo_dificuldade]
        )
        self._estado  = EstadoBot.PARADO
        self._sessao  = EstatisticasSessao()
        self._thread: Optional[threading.Thread] = None
        self._rodando = False
        self._pausado = False
        self._callbacks: Dict[str, list] = {}

        # Contadores internos
        self._tentativas_fase      = 0
        self._movimentos_fase      = 0
        self._inicio_fase          = 0.0
        self._popup_tentativas     = 0
        self._ultimo_movimento: Optional[Movimento] = None
        self._frame_debug          = None

    # ------------------------------------------------------------------ #
    #  Callbacks de eventos                                                #
    # ------------------------------------------------------------------ #

    def on(self, evento: str, callback: TipoCallback):
        """Registra um callback para o evento dado."""
        self._callbacks.setdefault(evento, []).append(callback)

    def _emitir(self, evento: str, dados: Any = None):
        for cb in self._callbacks.get(evento, []):
            try:
                cb(evento, dados)
            except Exception as exc:
                logger.error("Erro em callback '%s': %s", evento, exc)

    # ------------------------------------------------------------------ #
    #  Controle                                                            #
    # ------------------------------------------------------------------ #

    def iniciar(self, serial: Optional[str] = None) -> bool:
        if self._rodando:
            logger.warning("Bot já está rodando.")
            return False

        self._rodando = True
        self._pausado = False
        self._sessao  = EstatisticasSessao()
        self._thread  = threading.Thread(
            target=self._loop_principal,
            args=(serial,),
            daemon=True,
            name="BotEngine",
        )
        self._thread.start()
        logger.info("Bot iniciado.")
        self._emitir("iniciado")
        return True

    def pausar(self):
        self._pausado = True
        self._set_estado(EstadoBot.PAUSADO)
        self._emitir("pausado")
        logger.info("Bot pausado.")

    def retomar(self):
        self._pausado = False
        self._set_estado(EstadoBot.AGUARDANDO_TELA)
        self._emitir("retomado")
        logger.info("Bot retomado.")

    def parar(self):
        self._rodando = False
        self._pausado = False
        if self._thread and self._thread.is_alive():
            self._thread.join(timeout=5)
        self._set_estado(EstadoBot.PARADO)
        self._sessao.fim = time.time()
        self._sessao.salvar()
        self._emitir("parado", self._sessao)
        logger.info("Bot parado. Sessão salva.")

    def _set_estado(self, estado: EstadoBot):
        anterior = self._estado
        self._estado = estado
        if anterior != estado:
            logger.debug("Estado: %s → %s", anterior.name, estado.name)
            self._emitir("estado_mudou", {"anterior": anterior, "atual": estado})

    @property
    def estado(self) -> EstadoBot:
        return self._estado

    @property
    def rodando(self) -> bool:
        return self._rodando

    @property
    def sessao(self) -> EstatisticasSessao:
        return self._sessao

    # ------------------------------------------------------------------ #
    #  Loop principal (thread)                                             #
    # ------------------------------------------------------------------ #

    def _loop_principal(self, serial: Optional[str]):
        try:
            self._fase_inicializacao(serial)

            while self._rodando:
                if self._pausado:
                    time.sleep(0.5)
                    continue

                self._verificar_limites_sessao()
                if not self._rodando:
                    break

                frame = self._adb.screenshot()
                if frame is None:
                    logger.warning("Screenshot falhou, aguardando...")
                    time.sleep(1)
                    continue

                self._frame_debug = frame
                estado_tela = self._visao.detectar_estado(frame)
                self._emitir("frame_capturado", frame)

                self._despachar_estado(estado_tela, frame)
                time.sleep(0.15)

        except Exception as exc:
            logger.exception("Erro fatal no loop principal: %s", exc)
            self._set_estado(EstadoBot.ERRO)
            self._emitir("erro", str(exc))
        finally:
            if self._rodando:
                self.parar()

    def _fase_inicializacao(self, serial: Optional[str]):
        self._set_estado(EstadoBot.INICIALIZANDO)
        self._emitir("log", "Inicializando bot...")

        # Conecta ao dispositivo
        if self.config.ip_dispositivo:
            if not self._adb.conectar_tcp(
                self.config.ip_dispositivo, self.config.porta_adb
            ):
                raise RuntimeError("Falha ao conectar via TCP/IP.")
        elif not self._adb.conectar(serial or self.config.serial_dispositivo or None):
            raise RuntimeError("Nenhum dispositivo encontrado.")

        self._emitir("log", f"Dispositivo conectado: {self._adb.dispositivo.modelo}")
        self._adb.iniciar_monitor()

        # Liga tela se necessário
        self._adb.ligar_tela()

        # Abre o jogo
        self._set_estado(EstadoBot.ABRINDO_JOGO)
        if not self._adb.jogo_instalado():
            raise RuntimeError("Royal Match não está instalado no dispositivo.")

        if not self._adb.jogo_em_primeiro_plano():
            self._emitir("log", "Abrindo Royal Match...")
            self._adb.abrir_jogo()
            self._aguardar_jogo_carregar()

        self._set_estado(EstadoBot.AGUARDANDO_TELA)
        self._emitir("log", "Bot pronto — procurando tela de jogo...")

    def _aguardar_jogo_carregar(self, timeout: int = 30):
        inicio = time.time()
        while time.time() - inicio < timeout:
            if self._adb.jogo_em_primeiro_plano():
                time.sleep(2)
                return
            time.sleep(1)
        logger.warning("Timeout aguardando o jogo abrir.")

    # ------------------------------------------------------------------ #
    #  Despachante de estados da tela                                      #
    # ------------------------------------------------------------------ #

    def _despachar_estado(self, estado_tela: EstadoTela, frame):
        if estado_tela == EstadoTela.JOGANDO:
            self._handle_jogando(frame)

        elif estado_tela == EstadoTela.POPUP_VITORIA:
            self._handle_vitoria(frame)

        elif estado_tela == EstadoTela.POPUP_DERROTA:
            self._handle_derrota(frame)

        elif estado_tela in (
            EstadoTela.POPUP_BOOSTER,
            EstadoTela.POPUP_EVENTO,
            EstadoTela.POPUP_OFERTA,
            EstadoTela.POPUP_VIDA,
            EstadoTela.POPUP_COFRE,
            EstadoTela.POPUP_GENERICO,
        ):
            self._handle_popup_generico(frame, estado_tela)

        elif estado_tela == EstadoTela.MAPA:
            self._handle_mapa(frame)

        elif estado_tela == EstadoTela.FASE_CARREGANDO:
            self._handle_carregando()

        else:
            # Estado desconhecido: tenta fechar popup ou volta
            self._handle_desconhecido(frame)

    # ------------------------------------------------------------------ #
    #  Handlers por estado                                                 #
    # ------------------------------------------------------------------ #

    def _handle_jogando(self, frame):
        self._set_estado(EstadoBot.JOGANDO)
        self._popup_tentativas = 0

        # Detecta tabuleiro
        roi = self._visao.detectar_tabuleiro(frame)
        if roi is None:
            logger.debug("Tabuleiro não detectado.")
            return

        # Classifica peças
        grade = self._visao.classificar_grade(frame, roi)
        if not grade:
            return

        # Solicita melhor movimento à IA
        resultado = self._solver.analisar(grade)
        self._emitir("analise", resultado)

        if resultado.melhor:
            mov = resultado.melhor
        else:
            # Fallback aleatório
            mov = self._solver.movimento_aleatorio_seguro(grade)
            if mov is None:
                logger.warning("Nenhum movimento disponível.")
                return

        # Delay humanizado
        delay = self.config.delay_entre_movimentos
        variacao = self.config.delay_variacao
        time.sleep(max(0.1, delay + random.uniform(-variacao, variacao)))

        # Executa o movimento
        logger.info("Executando: %s (pts=%.1f)", mov.descricao, mov.pontuacao)
        self._adb.movimento_peca(mov.x1, mov.y1, mov.x2, mov.y2)

        self._movimentos_fase += 1
        self._sessao.movimentos_totais += 1
        self._ultimo_movimento = mov

        self._emitir("movimento", {
            "movimento": mov,
            "movimentos_fase": self._movimentos_fase,
        })

    def _handle_vitoria(self, frame):
        logger.info("🏆 VITÓRIA na fase %d!", self._sessao.fase_atual)

        duracao = time.time() - self._inicio_fase
        fase_stat = EstatisticaFase(
            numero_fase=self._sessao.fase_atual,
            vitoria=True,
            movimentos=self._movimentos_fase,
            tempo_segundos=duracao,
        )
        self._sessao.registrar_fase(fase_stat)
        self._emitir("vitoria", fase_stat)

        self._tentativas_fase = 0
        self._movimentos_fase = 0
        self._sessao.fase_atual += 1

        time.sleep(1.5)
        self._clicar_botao_ou_centro(frame, "btn_continuar")
        time.sleep(0.8)
        self._clicar_botao_ou_centro(frame, "btn_proxima_fase")

    def _handle_derrota(self, frame):
        self._tentativas_fase += 1
        logger.info("💀 Derrota na fase %d (tentativa %d/%d).",
                    self._sessao.fase_atual,
                    self._tentativas_fase,
                    self.config.max_tentativas_fase)

        duracao = time.time() - self._inicio_fase
        fase_stat = EstatisticaFase(
            numero_fase=self._sessao.fase_atual,
            vitoria=False,
            movimentos=self._movimentos_fase,
            tempo_segundos=duracao,
        )
        self._sessao.registrar_fase(fase_stat)
        self._emitir("derrota", fase_stat)
        self._movimentos_fase = 0

        if self._tentativas_fase >= self.config.max_tentativas_fase:
            logger.warning("Máximo de tentativas atingido. Pulando fase.")
            self._tentativas_fase = 0
            self._sessao.fase_atual += 1

        time.sleep(1.5)
        self._clicar_botao_ou_centro(frame, "btn_jogar_novamente")
        time.sleep(0.8)

    def _handle_popup_generico(self, frame, estado_tela: EstadoTela):
        self._set_estado(EstadoBot.TRATANDO_POPUP)
        self._popup_tentativas += 1

        logger.debug("Popup detectado: %s (tentativa %d)", estado_tela.name, self._popup_tentativas)

        if self._popup_tentativas > self.MAX_TENTATIVAS_POPUP:
            logger.warning("Popup persistente. Pressionando Voltar.")
            self._adb.voltar()
            self._popup_tentativas = 0
            time.sleep(0.5)
            return

        # Tenta botões de fechar em ordem de prioridade
        botoes_fechar = [
            "btn_x_fechar", "btn_nao_obrigado", "btn_fechar",
            "btn_ok", "btn_continuar", "btn_coletar",
        ]
        for botao in botoes_fechar:
            pos = self._visao.localizar_botao(frame, botao)
            if pos:
                self._adb.toque(*pos)
                logger.debug("Clicou em '%s'.", botao)
                time.sleep(0.6)
                return

        # Aceitar vidas se configurado
        if estado_tela == EstadoTela.POPUP_VIDA and self.config.aceitar_vidas:
            pos = self._visao.localizar_botao(frame, "btn_aceitar_vida")
            if pos:
                self._adb.toque(*pos)
                time.sleep(0.6)
                return

        # Fallback: toca no canto superior direito (onde geralmente fica o X)
        h, w = frame.shape[:2]
        self._adb.toque(int(w * 0.90), int(h * 0.10))
        time.sleep(0.6)

    def _handle_mapa(self, frame):
        self._set_estado(EstadoBot.NAVEGANDO_MAPA)
        logger.info("Na tela do mapa. Buscando botão Jogar...")
        self._inicio_fase = time.time()

        botoes_jogar = ["btn_jogar", "btn_play", "btn_iniciar_fase"]
        for botao in botoes_jogar:
            pos = self._visao.localizar_botao(frame, botao)
            if pos:
                self._adb.toque(*pos)
                logger.info("Iniciando fase via '%s'.", botao)
                time.sleep(1.5)
                return

        # Fallback: toca no centro-baixo da tela (posição típica do botão Play)
        h, w = frame.shape[:2]
        self._adb.toque(w // 2, int(h * 0.80))
        time.sleep(1.5)

    def _handle_carregando(self):
        self._set_estado(EstadoBot.CARREGANDO_FASE)
        time.sleep(1.0)

    def _handle_desconhecido(self, frame):
        h, w = frame.shape[:2]
        # Tenta fechar possível popup
        self._adb.toque(int(w * 0.90), int(h * 0.10))
        time.sleep(0.5)

    # ------------------------------------------------------------------ #
    #  Helpers                                                             #
    # ------------------------------------------------------------------ #

    def _clicar_botao_ou_centro(self, frame, chave: str):
        pos = self._visao.localizar_botao(frame, chave)
        if pos:
            self._adb.toque(*pos)
        else:
            h, w = frame.shape[:2]
            self._adb.toque(w // 2, int(h * 0.75))

    def _verificar_limites_sessao(self):
        """Verifica se os limites de tempo/fases foram atingidos."""
        tempo_s = time.time() - self._sessao.inicio
        tempo_min = tempo_s / 60

        if self.config.tempo_maximo_sessao > 0 and tempo_min >= self.config.tempo_maximo_sessao:
            logger.info("Tempo máximo de sessão atingido (%d min).", self.config.tempo_maximo_sessao)
            self._rodando = False
            return

        if self.config.fases_por_sessao > 0:
            total = self._sessao.fases_completadas + self._sessao.fases_falhas
            if total >= self.config.fases_por_sessao:
                logger.info("Número máximo de fases atingido (%d).", self.config.fases_por_sessao)
                self._rodando = False
                return

        # Verifica bateria
        if (self._adb.dispositivo and
                self.config.parar_bateria_baixa > 0 and
                0 < self._adb.dispositivo.bateria <= self.config.parar_bateria_baixa):
            logger.warning("Bateria baixa (%d%%). Parando bot.", self._adb.dispositivo.bateria)
            self._emitir("bateria_baixa", self._adb.dispositivo.bateria)
            self._rodando = False

    def obter_frame_debug(self):
        return self._frame_debug

    def obter_info_dispositivo(self):
        return self._adb.dispositivo
