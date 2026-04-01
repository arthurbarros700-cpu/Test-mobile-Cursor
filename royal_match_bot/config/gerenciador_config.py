"""
Gerenciador de configurações do Royal Match Bot.
Carrega, valida e fornece acesso às configurações do YAML.
"""

import os
import yaml
from pathlib import Path
from dataclasses import dataclass, field
from typing import Optional


@dataclass
class ConfigDispositivo:
    modo: str = "adb"
    endereco_adb: str = ""
    porta_adb: int = 5555
    resolucao_largura: int = 0
    resolucao_altura: int = 0
    dpi: int = 0
    delay_base_ms: int = 300
    variacao_delay_ms: int = 150


@dataclass
class ConfigJogo:
    pacote_app: str = "com.dreamgames.royalmatch"
    tabuleiro_colunas: int = 9
    tabuleiro_linhas: int = 9
    timeout_animacao: float = 8.0
    timeout_fase: float = 300.0
    parar_bateria_minima: int = 20
    pausa_entre_fases: float = 2.0
    max_tentativas_fase: int = 5
    usar_boosters: bool = True
    parar_vidas_minimas: int = 1


@dataclass
class ConfigIA:
    algoritmo: str = "hibrido"
    profundidade_minimax: int = 4
    largura_beam: int = 12
    iteracoes_mcts: int = 500
    priorizar_objetivos: bool = True
    peso_combo: float = 2.5
    peso_powerup: float = 3.0
    analise_preditiva: bool = True


@dataclass
class ConfigVisao:
    confianca_minima: float = 0.75
    usar_gpu: bool = False
    tamanho_celula: int = 64
    metodo_deteccao: str = "hibrido"
    limiar_mudanca_tela: float = 0.15
    escala_processamento: float = 0.5


@dataclass
class ConfigEstatisticas:
    log_detalhado: bool = True
    salvar_screenshots: bool = False
    dir_screenshots: str = "logs/screenshots"
    salvar_stats: bool = True
    arquivo_stats: str = "logs/estatisticas.json"
    telegram_token: str = ""
    telegram_chat_id: str = ""


@dataclass
class ConfigSeguranca:
    simular_humano: bool = True
    pausa_aleatoria_min: int = 30
    pausa_aleatoria_max: int = 120
    prob_pausa: float = 0.02
    limite_horas_continuas: int = 6
    pausa_apos_limite_min: int = 15


@dataclass
class Configuracoes:
    dispositivo: ConfigDispositivo = field(default_factory=ConfigDispositivo)
    jogo: ConfigJogo = field(default_factory=ConfigJogo)
    ia: ConfigIA = field(default_factory=ConfigIA)
    visao: ConfigVisao = field(default_factory=ConfigVisao)
    estatisticas: ConfigEstatisticas = field(default_factory=ConfigEstatisticas)
    seguranca: ConfigSeguranca = field(default_factory=ConfigSeguranca)


class GerenciadorConfig:
    """Gerencia carregamento e acesso às configurações do bot."""

    ARQUIVO_PADRAO = Path(__file__).parent / "configuracoes.yaml"

    def __init__(self, caminho: Optional[str] = None):
        self._caminho = Path(caminho) if caminho else self.ARQUIVO_PADRAO
        self.config = self._carregar()

    def _carregar(self) -> Configuracoes:
        if not self._caminho.exists():
            return Configuracoes()

        with open(self._caminho, "r", encoding="utf-8") as f:
            dados = yaml.safe_load(f) or {}

        return self._parsear(dados)

    def _parsear(self, dados: dict) -> Configuracoes:
        cfg = Configuracoes()

        disp = dados.get("dispositivo", {})
        cfg.dispositivo = ConfigDispositivo(
            modo=disp.get("modo", "adb"),
            endereco_adb=disp.get("endereco_adb", ""),
            porta_adb=disp.get("porta_adb", 5555),
            resolucao_largura=disp.get("resolucao", {}).get("largura", 0),
            resolucao_altura=disp.get("resolucao", {}).get("altura", 0),
            dpi=disp.get("dpi", 0),
            delay_base_ms=disp.get("delay_base_ms", 300),
            variacao_delay_ms=disp.get("variacao_delay_ms", 150),
        )

        jogo = dados.get("jogo", {})
        cfg.jogo = ConfigJogo(
            pacote_app=jogo.get("pacote_app", "com.dreamgames.royalmatch"),
            tabuleiro_colunas=jogo.get("tabuleiro_colunas", 9),
            tabuleiro_linhas=jogo.get("tabuleiro_linhas", 9),
            timeout_animacao=jogo.get("timeout_animacao", 8.0),
            timeout_fase=jogo.get("timeout_fase", 300.0),
            parar_bateria_minima=jogo.get("parar_bateria_minima", 20),
            pausa_entre_fases=jogo.get("pausa_entre_fases", 2.0),
            max_tentativas_fase=jogo.get("max_tentativas_fase", 5),
            usar_boosters=jogo.get("usar_boosters", True),
            parar_vidas_minimas=jogo.get("parar_vidas_minimas", 1),
        )

        ia = dados.get("ia", {})
        cfg.ia = ConfigIA(
            algoritmo=ia.get("algoritmo", "hibrido"),
            profundidade_minimax=ia.get("profundidade_minimax", 4),
            largura_beam=ia.get("largura_beam", 12),
            iteracoes_mcts=ia.get("iteracoes_mcts", 500),
            priorizar_objetivos=ia.get("priorizar_objetivos", True),
            peso_combo=ia.get("peso_combo", 2.5),
            peso_powerup=ia.get("peso_powerup", 3.0),
            analise_preditiva=ia.get("analise_preditiva", True),
        )

        vis = dados.get("visao", {})
        cfg.visao = ConfigVisao(
            confianca_minima=vis.get("confianca_minima", 0.75),
            usar_gpu=vis.get("usar_gpu", False),
            tamanho_celula=vis.get("tamanho_celula", 64),
            metodo_deteccao=vis.get("metodo_deteccao", "hibrido"),
            limiar_mudanca_tela=vis.get("limiar_mudanca_tela", 0.15),
            escala_processamento=vis.get("escala_processamento", 0.5),
        )

        est = dados.get("estatisticas", {})
        cfg.estatisticas = ConfigEstatisticas(
            log_detalhado=est.get("log_detalhado", True),
            salvar_screenshots=est.get("salvar_screenshots", False),
            dir_screenshots=est.get("dir_screenshots", "logs/screenshots"),
            salvar_stats=est.get("salvar_stats", True),
            arquivo_stats=est.get("arquivo_stats", "logs/estatisticas.json"),
            telegram_token=est.get("telegram_token", ""),
            telegram_chat_id=est.get("telegram_chat_id", ""),
        )

        seg = dados.get("seguranca", {})
        cfg.seguranca = ConfigSeguranca(
            simular_humano=seg.get("simular_humano", True),
            pausa_aleatoria_min=seg.get("pausa_aleatoria_min", 30),
            pausa_aleatoria_max=seg.get("pausa_aleatoria_max", 120),
            prob_pausa=seg.get("prob_pausa", 0.02),
            limite_horas_continuas=seg.get("limite_horas_continuas", 6),
            pausa_apos_limite_min=seg.get("pausa_apos_limite_min", 15),
        )

        return cfg

    def salvar(self, caminho: Optional[str] = None) -> None:
        """Salva as configurações atuais de volta ao arquivo YAML."""
        destino = Path(caminho) if caminho else self._caminho
        dados = {
            "dispositivo": {
                "modo": self.config.dispositivo.modo,
                "endereco_adb": self.config.dispositivo.endereco_adb,
                "porta_adb": self.config.dispositivo.porta_adb,
                "resolucao": {
                    "largura": self.config.dispositivo.resolucao_largura,
                    "altura": self.config.dispositivo.resolucao_altura,
                },
                "dpi": self.config.dispositivo.dpi,
                "delay_base_ms": self.config.dispositivo.delay_base_ms,
                "variacao_delay_ms": self.config.dispositivo.variacao_delay_ms,
            },
            "jogo": {
                "pacote_app": self.config.jogo.pacote_app,
                "tabuleiro_colunas": self.config.jogo.tabuleiro_colunas,
                "tabuleiro_linhas": self.config.jogo.tabuleiro_linhas,
                "timeout_animacao": self.config.jogo.timeout_animacao,
                "timeout_fase": self.config.jogo.timeout_fase,
                "parar_bateria_minima": self.config.jogo.parar_bateria_minima,
                "pausa_entre_fases": self.config.jogo.pausa_entre_fases,
                "max_tentativas_fase": self.config.jogo.max_tentativas_fase,
                "usar_boosters": self.config.jogo.usar_boosters,
                "parar_vidas_minimas": self.config.jogo.parar_vidas_minimas,
            },
            "ia": {
                "algoritmo": self.config.ia.algoritmo,
                "profundidade_minimax": self.config.ia.profundidade_minimax,
                "largura_beam": self.config.ia.largura_beam,
                "iteracoes_mcts": self.config.ia.iteracoes_mcts,
                "priorizar_objetivos": self.config.ia.priorizar_objetivos,
                "peso_combo": self.config.ia.peso_combo,
                "peso_powerup": self.config.ia.peso_powerup,
                "analise_preditiva": self.config.ia.analise_preditiva,
            },
            "visao": {
                "confianca_minima": self.config.visao.confianca_minima,
                "usar_gpu": self.config.visao.usar_gpu,
                "tamanho_celula": self.config.visao.tamanho_celula,
                "metodo_deteccao": self.config.visao.metodo_deteccao,
                "limiar_mudanca_tela": self.config.visao.limiar_mudanca_tela,
                "escala_processamento": self.config.visao.escala_processamento,
            },
            "estatisticas": {
                "log_detalhado": self.config.estatisticas.log_detalhado,
                "salvar_screenshots": self.config.estatisticas.salvar_screenshots,
                "dir_screenshots": self.config.estatisticas.dir_screenshots,
                "salvar_stats": self.config.estatisticas.salvar_stats,
                "arquivo_stats": self.config.estatisticas.arquivo_stats,
                "telegram_token": self.config.estatisticas.telegram_token,
                "telegram_chat_id": self.config.estatisticas.telegram_chat_id,
            },
            "seguranca": {
                "simular_humano": self.config.seguranca.simular_humano,
                "pausa_aleatoria_min": self.config.seguranca.pausa_aleatoria_min,
                "pausa_aleatoria_max": self.config.seguranca.pausa_aleatoria_max,
                "prob_pausa": self.config.seguranca.prob_pausa,
                "limite_horas_continuas": self.config.seguranca.limite_horas_continuas,
                "pausa_apos_limite_min": self.config.seguranca.pausa_apos_limite_min,
            },
        }
        with open(destino, "w", encoding="utf-8") as f:
            yaml.dump(dados, f, allow_unicode=True, default_flow_style=False)
