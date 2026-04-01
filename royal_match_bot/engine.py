"""
Engine principal do Royal Match Bot.
Orquestra todos os componentes para jogar automaticamente.

Fluxo principal:
1. Conectar ao dispositivo
2. Abrir o Royal Match
3. Detectar tela atual
4. Se jogo em andamento: capturar tabuleiro → analisar com IA → executar movimento
5. Se tela de resultado: clicar em continuar/próxima fase
6. Repetir indefinidamente
"""

import time
import random
import signal
import logging
from typing import Optional

from .config.gerenciador_config import GerenciadorConfig, Configuracoes
from .device.fabrica_dispositivo import criar_controlador, ControladorBase
from .device.gestos import GerenciadorGestos, RetanguloTabuleiro
from .vision.capturador import Capturador
from .vision.detector_telas import DetectorTelas, TelasJogo
from .vision.detector_tabuleiro import DetectorTabuleiro
from .vision.classificador_pecas import ClassificadorPecas
from .ai.motor_ia import MotorIA, ResultadoAnalise
from .core.estado_jogo import EstadoJogo, FaseInfo, EstadoFase
from .core.movimento import ResultadoMovimento
from .utils.estatisticas import GerenciadorEstatisticas
from .utils.notificador import Notificador
from .utils.logger import configurar_logger

logger = logging.getLogger("royalmatch.engine")


class RoyalMatchBot:
    """
    Bot principal do Royal Match.

    Executa o loop completo de jogo de forma autônoma:
    - Detecta telas automaticamente
    - Classifica peças por visão computacional
    - Decide jogadas com IA híbrida (Beam Search + Minimax + MCTS)
    - Simula comportamento humano (delays, movimentos não-lineares)
    - Rastreia estatísticas e envia notificações
    """

    VERSAO = "2.0.0"

    def __init__(self, caminho_config: Optional[str] = None):
        self.cfg = GerenciadorConfig(caminho_config).config
        self._configurar_logging()

        logger.info(f"Royal Match Bot v{self.VERSAO} inicializando...")

        # Componentes do sistema
        self.controlador: Optional[ControladorBase] = None
        self.gestos: Optional[GerenciadorGestos] = None
        self.capturador: Optional[Capturador] = None
        self.detector_telas = DetectorTelas()
        self.classificador = ClassificadorPecas(
            confianca_minima=self.cfg.visao.confianca_minima,
            tamanho_celula=self.cfg.visao.tamanho_celula,
            metodo=self.cfg.visao.metodo_deteccao,
        )
        self.detector_tabuleiro = DetectorTabuleiro(
            classificador=self.classificador,
            linhas=self.cfg.jogo.tabuleiro_linhas,
            colunas=self.cfg.jogo.tabuleiro_colunas,
        )
        self.motor_ia = MotorIA(
            algoritmo=self.cfg.ia.algoritmo,
            peso_combo=self.cfg.ia.peso_combo,
            peso_powerup=self.cfg.ia.peso_powerup,
            priorizar_objetivos=self.cfg.ia.priorizar_objetivos,
            profundidade_minimax=self.cfg.ia.profundidade_minimax,
            largura_beam=self.cfg.ia.largura_beam,
            iteracoes_mcts=self.cfg.ia.iteracoes_mcts,
        )
        self.stats = GerenciadorEstatisticas(self.cfg.estatisticas.arquivo_stats)
        self.notificador = Notificador(
            token=self.cfg.estatisticas.telegram_token,
            chat_id=self.cfg.estatisticas.telegram_chat_id,
        )

        # Estado interno
        self.estado: EstadoJogo = EstadoJogo()
        self._rodando: bool = False
        self._pausado: bool = False
        self._inicio_sessao: float = 0.0
        self._movimentos_na_fase: int = 0
        self._tentativas_fase_atual: int = 0
        self._fase_numero: int = 1

        # Configurar sinal de interrupção
        signal.signal(signal.SIGINT, self._handle_sigint)
        signal.signal(signal.SIGTERM, self._handle_sigint)

    # ─── Ciclo de vida ────────────────────────────────────────────────────────

    def iniciar(self) -> None:
        """Inicia o bot. Ponto de entrada principal."""
        self._exibir_banner()

        if not self._conectar_dispositivo():
            logger.error("Falha ao conectar ao dispositivo. Encerrando.")
            return

        if not self._abrir_jogo():
            logger.error("Falha ao abrir o Royal Match. Encerrando.")
            return

        self._rodando = True
        self._inicio_sessao = time.time()
        self.stats.gerais.sessoes += 1
        self.notificador.notificar_inicio_sessao(self._fase_numero)

        logger.info("Bot iniciado! Pressione Ctrl+C para parar.")
        self._loop_principal()

    def parar(self) -> None:
        """Para o bot de forma segura."""
        logger.info("Parando o bot...")
        self._rodando = False
        self._imprimir_estatisticas_finais()
        if self.controlador:
            self.controlador.desconectar()

    # ─── Loop principal ───────────────────────────────────────────────────────

    def _loop_principal(self) -> None:
        """Loop principal do bot."""
        erros_consecutivos = 0
        max_erros = 10

        while self._rodando:
            try:
                # Verificar condições de pausa
                if self._verificar_condicoes_pausa():
                    continue

                # Capturar tela atual
                frame = self.capturador.capturar()
                if frame is None:
                    logger.warning("Captura de tela falhou. Aguardando...")
                    time.sleep(2.0)
                    erros_consecutivos += 1
                    if erros_consecutivos >= max_erros:
                        logger.error(f"Muitas falhas consecutivas ({max_erros}). Parando.")
                        break
                    continue

                erros_consecutivos = 0

                # Detectar tela atual
                tela, confianca = self.detector_telas.detectar(frame)
                self.estado.tela_atual = tela.value
                self.estado.confianca_deteccao = confianca

                # Agir baseado na tela detectada
                self._agir_na_tela(tela, confianca, frame)

            except KeyboardInterrupt:
                break
            except Exception as e:
                logger.error(f"Erro no loop principal: {e}", exc_info=True)
                erros_consecutivos += 1
                time.sleep(1.0)

        self.parar()

    def _agir_na_tela(self, tela: TelasJogo, confianca: float, frame) -> None:
        """Decide e executa a ação adequada para a tela detectada."""

        if tela == TelasJogo.JOGO_EM_ANDAMENTO:
            self._executar_turno_jogo(frame)

        elif tela == TelasJogo.VITORIA:
            self._tratar_vitoria()

        elif tela == TelasJogo.DERROTA:
            self._tratar_derrota()

        elif tela == TelasJogo.POPUP_GENERICO:
            self._fechar_popup()

        elif tela == TelasJogo.POPUP_BOOSTER:
            self._tratar_popup_booster()

        elif tela == TelasJogo.SEM_VIDAS:
            self._tratar_sem_vidas()

        elif tela == TelasJogo.MAPA_MUNDIAL:
            self._ir_para_proxima_fase()

        elif tela == TelasJogo.CARREGANDO:
            logger.debug("Aguardando carregamento...")
            time.sleep(1.5)

        elif tela == TelasJogo.APP_FECHADO:
            logger.warning("App fechado. Reabrindo...")
            self._abrir_jogo()

        elif tela == TelasJogo.CONEXAO_PERDIDA:
            logger.warning("Conexão perdida. Aguardando reconexão...")
            time.sleep(5.0)
            self.gestos.tocar_proporcional(0.5, 0.6)

        else:
            logger.debug(f"Tela '{tela.value}' detectada. Aguardando... (conf={confianca:.2f})")
            time.sleep(1.0)

    # ─── Lógica de jogo ───────────────────────────────────────────────────────

    def _executar_turno_jogo(self, frame) -> None:
        """Executa um turno completo do jogo: detectar → analisar → jogar."""
        self.estado.fase.estado = EstadoFase.EM_PROGRESSO

        # Detectar tabuleiro
        tabuleiro, retangulo = self.detector_tabuleiro.detectar_tabuleiro(frame)
        if tabuleiro is None:
            logger.warning("Tabuleiro não detectado. Aguardando...")
            time.sleep(0.5)
            return

        # Atualizar área do tabuleiro nos gestos
        if retangulo:
            self.gestos.definir_area_tabuleiro(retangulo)

        # Verificar qualidade da detecção
        confianca_media = self.detector_tabuleiro.confianca_media(tabuleiro)
        desconhecidas = self.detector_tabuleiro.pecas_desconhecidas(tabuleiro)
        if desconhecidas > tabuleiro.linhas * tabuleiro.colunas * 0.3:
            logger.warning(
                f"Muitas peças desconhecidas ({desconhecidas}). "
                f"Confiança média: {confianca_media:.2f}"
            )
            time.sleep(0.5)
            return

        self.estado.tabuleiro = tabuleiro

        # Analisar com IA
        analise = self.motor_ia.analisar(self.estado)

        if analise.usar_booster:
            self._usar_booster(analise)
            return

        if not analise.movimento_recomendado:
            logger.warning("IA não encontrou movimento. Tabuleiro pode estar bloqueado.")
            time.sleep(1.0)
            return

        # Executar movimento
        resultado = self._executar_movimento(analise)

        # Atualizar estatísticas
        self.stats.registrar_movimento(
            pontos=resultado.pontos_obtidos,
            combo=resultado.combo_maximo,
            usou_powerup=resultado.combo_maximo > 3,
            confianca_ia=analise.confianca,
            algoritmo=analise.algoritmo_usado,
        )

        self._movimentos_na_fase += 1

        # Aguardar animações terminarem
        if resultado.sucesso:
            self.capturador.aguardar_estabilidade(
                timeout=self.cfg.jogo.timeout_animacao,
                limiar=0.05,
                intervalo=0.2,
            )

        # Pausa humana ocasional
        if self.cfg.seguranca.simular_humano:
            self._pausa_humana_ocasional()

    def _executar_movimento(self, analise: ResultadoAnalise) -> ResultadoMovimento:
        """Executa o movimento físico na tela."""
        mov = analise.movimento_recomendado
        inicio = time.time()

        logger.info(f"Executando: {analise.descricao} | Score: {analise.score_movimento:.1f}")

        sucesso = self.gestos.executar_movimento_tabuleiro(
            mov.linha1, mov.coluna1, mov.linha2, mov.coluna2
        )

        resultado = ResultadoMovimento(
            movimento=mov,
            sucesso=sucesso,
            movimentos_restantes=self.estado.fase.movimentos_restantes - 1,
            tempo_execucao_ms=(time.time() - inicio) * 1000,
        )

        if sucesso:
            self.estado.fase.movimentos_restantes -= 1
            resultado.pontos_obtidos = int(analise.score_movimento * 10)
            resultado.combo_maximo = 1
        else:
            resultado.erro = "Falha ao executar swipe"

        return resultado

    def _usar_booster(self, analise: ResultadoAnalise) -> None:
        """Usa um booster externo ao tabuleiro."""
        logger.info(f"Usando booster: {analise.booster_recomendado.value}")
        # Tocar na área de boosters (geralmente no topo da tela)
        self.gestos.tocar_proporcional(0.15, 0.92)
        time.sleep(0.5)
        # Tocar no centro do tabuleiro para aplicar
        self.gestos.tocar_proporcional(0.5, 0.55)
        time.sleep(1.0)
        self.stats.registrar_movimento(usou_booster=True)

    # ─── Tratamento de telas ─────────────────────────────────────────────────

    def _tratar_vitoria(self) -> None:
        """Trata a tela de vitória."""
        logger.info(f"VITÓRIA na fase {self._fase_numero}!")
        fase = self.stats.finalizar_fase(vitoria=True)
        self.notificador.notificar_vitoria(
            self._fase_numero, fase.pontuacao, self.estado.fase.movimentos_restantes
        )
        self._fase_numero += 1
        self._tentativas_fase_atual = 0
        self._movimentos_na_fase = 0
        self.estado.fase = FaseInfo()

        time.sleep(self.cfg.jogo.pausa_entre_fases)
        self._clicar_proximo()

    def _tratar_derrota(self) -> None:
        """Trata a tela de derrota."""
        self._tentativas_fase_atual += 1
        logger.warning(
            f"Derrota na fase {self._fase_numero} "
            f"(tentativa {self._tentativas_fase_atual})"
        )
        self.stats.finalizar_fase(vitoria=False)
        self.notificador.notificar_derrota(self._fase_numero, self._tentativas_fase_atual)
        self._movimentos_na_fase = 0

        if self._tentativas_fase_atual >= self.cfg.jogo.max_tentativas_fase:
            logger.warning(
                f"Máximo de tentativas ({self.cfg.jogo.max_tentativas_fase}) "
                f"atingido na fase {self._fase_numero}. Pulando..."
            )
            self._tentativas_fase_atual = 0
            self._fase_numero += 1

        time.sleep(2.0)
        self._clicar_proximo()

    def _tratar_popup_booster(self) -> None:
        """Recusa popup de compra de booster (padrão: não comprar)."""
        logger.debug("Popup de booster. Recusando compra.")
        # Botão X ou "Não, obrigado" geralmente no topo ou embaixo
        self.gestos.tocar_proporcional(0.88, 0.12)
        time.sleep(0.5)

    def _tratar_sem_vidas(self) -> None:
        """Trata a situação de sem vidas."""
        logger.warning("Sem vidas! Aguardando regeneração...")
        self.notificador.notificar_pausa("Sem vidas. Aguardando 30 minutos.")
        # Esperar 30 minutos (vidas regeneram com o tempo)
        time.sleep(30 * 60)

    def _ir_para_proxima_fase(self) -> None:
        """Toca no botão para iniciar a próxima fase no mapa."""
        logger.info(f"Iniciando fase {self._fase_numero}...")
        self.gestos.tocar_botao_jogar()
        time.sleep(2.0)

    def _clicar_proximo(self) -> None:
        """Clica em 'Próxima' ou 'Continuar' para avançar."""
        self.gestos.tocar_botao_continuar()
        time.sleep(1.5)

    def _fechar_popup(self) -> None:
        """Fecha um popup genérico."""
        self.gestos.fechar_popup()
        time.sleep(0.5)

    # ─── Controles de fluxo ───────────────────────────────────────────────────

    def _verificar_condicoes_pausa(self) -> bool:
        """Verifica e aplica condições de pausa. Retorna True se pausou."""
        # Verificar bateria
        if self.controlador:
            bateria = self.controlador.obter_bateria()
            if bateria <= self.cfg.jogo.parar_bateria_minima:
                logger.warning(f"Bateria em {bateria}%. Pausando bot.")
                self.notificador.notificar_bateria_baixa(bateria)
                time.sleep(60 * 5)
                return True

        # Verificar limite de horas contínuas
        horas_rodando = (time.time() - self._inicio_sessao) / 3600
        limite = self.cfg.seguranca.limite_horas_continuas
        if horas_rodando >= limite:
            pausa_min = self.cfg.seguranca.pausa_apos_limite_min
            logger.info(
                f"Limit de {limite}h de jogo contínuo atingido. "
                f"Pausando por {pausa_min} minutos."
            )
            self.notificador.notificar_pausa(f"Pausa de descanso ({pausa_min} min)")
            time.sleep(pausa_min * 60)
            self._inicio_sessao = time.time()
            return True

        if self._pausado:
            time.sleep(1.0)
            return True

        return False

    def _pausa_humana_ocasional(self) -> None:
        """Faz uma pausa ocasional aleatória para simular comportamento humano."""
        prob = self.cfg.seguranca.prob_pausa
        if random.random() < prob:
            pausa = random.uniform(
                self.cfg.seguranca.pausa_aleatoria_min,
                self.cfg.seguranca.pausa_aleatoria_max,
            )
            logger.debug(f"Pausa humana aleatória: {pausa:.0f}s")
            time.sleep(pausa)

    # ─── Inicialização ────────────────────────────────────────────────────────

    def _conectar_dispositivo(self) -> bool:
        """Cria e conecta o controlador de dispositivo."""
        self.controlador = criar_controlador(
            modo=self.cfg.dispositivo.modo,
            endereco_adb=self.cfg.dispositivo.endereco_adb,
            porta_adb=self.cfg.dispositivo.porta_adb,
            delay_base_ms=self.cfg.dispositivo.delay_base_ms,
            variacao_ms=self.cfg.dispositivo.variacao_delay_ms,
        )

        if not self.controlador.conectar():
            return False

        self.capturador = Capturador(
            controlador=self.controlador,
            escala=self.cfg.visao.escala_processamento,
        )

        self.gestos = GerenciadorGestos(
            controlador=self.controlador,
            simular_humano=self.cfg.seguranca.simular_humano,
        )

        return True

    def _abrir_jogo(self) -> bool:
        """Abre o Royal Match no dispositivo."""
        if not self.controlador:
            return False

        logger.info("Abrindo Royal Match...")

        # Ativar tela se necessário
        self.controlador.ativar_tela()
        time.sleep(0.5)

        sucesso = self.controlador.abrir_app(self.cfg.jogo.pacote_app)
        if not sucesso:
            logger.error(f"Não foi possível abrir {self.cfg.jogo.pacote_app}")
            return False

        # Aguardar carregamento do jogo
        logger.info("Aguardando Royal Match carregar...")
        time.sleep(5.0)

        return True

    def _configurar_logging(self) -> None:
        nivel = "DEBUG" if self.cfg.estatisticas.log_detalhado else "INFO"
        configurar_logger(
            nivel=nivel,
            arquivo_log="logs/bot.log",
            colorido=True,
        )

    # ─── Utilitários ─────────────────────────────────────────────────────────

    def _handle_sigint(self, signum, frame) -> None:
        logger.info("Sinal de interrupção recebido. Encerrando...")
        self._rodando = False

    def _imprimir_estatisticas_finais(self) -> None:
        print("\n" + self.stats.relatorio_completo())
        print(f"\nEstatísticas da IA: {self.motor_ia.estatisticas}")

    def _exibir_banner(self) -> None:
        banner = f"""
╔══════════════════════════════════════════════════════╗
║          ROYAL MATCH BOT  v{self.VERSAO}               ║
║                                                      ║
║  IA Híbrida: Beam Search + Minimax + MCTS            ║
║  Visão Computacional: Detecção HSV + Template        ║
║  Simulação Humana: Delays e Movimentos Naturais      ║
╚══════════════════════════════════════════════════════╝
        """
        print(banner)
        logger.info(f"Modo: {self.cfg.dispositivo.modo.upper()} | "
                    f"IA: {self.cfg.ia.algoritmo.upper()} | "
                    f"App: {self.cfg.jogo.pacote_app}")
