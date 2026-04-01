"""
Configurações globais do bot com persistência em YAML.
"""

import os
import yaml
import logging
from pathlib import Path
from dataclasses import dataclass, field, asdict
from typing import Optional

CONFIG_PATH = Path.home() / ".royalmatch_bot" / "config.yaml"
logger = logging.getLogger("RoyalBot.Config")


@dataclass
class ConfiguracaoBot:
    # Dispositivo
    serial_dispositivo: str       = ""
    ip_dispositivo: str           = ""
    porta_adb: int                = 5555

    # Comportamento
    modo_dificuldade: str         = "NORMAL"    # FACIL, NORMAL, EXPERT
    delay_entre_movimentos: float = 0.6         # segundos
    delay_variacao: float         = 0.2         # ±variação aleatória
    max_tentativas_fase: int      = 5
    usar_boosters: bool           = False
    aceitar_vidas: bool           = True
    fechar_popups: bool           = True

    # Limites
    tempo_maximo_sessao: int      = 480         # minutos (0 = ilimitado)
    fases_por_sessao: int         = 0           # 0 = ilimitado
    parar_bateria_baixa: int      = 20          # %
    pausar_carregando: bool       = True

    # Visão computacional
    limiar_deteccao: float        = 0.70
    fps_captura: int              = 3
    resolucao_alvo: str           = "auto"      # "auto" ou "1080x1920"

    # Log e debug
    nivel_log: str                = "INFO"
    salvar_screenshots_debug: bool = False
    pasta_debug: str              = str(Path.home() / ".royalmatch_bot" / "debug")

    # Notificações
    notificacao_vitoria: bool     = True
    notificacao_derrota: bool     = True
    som_ativo: bool               = True

    def salvar(self, caminho: Path = CONFIG_PATH):
        caminho.parent.mkdir(parents=True, exist_ok=True)
        with open(caminho, "w", encoding="utf-8") as f:
            yaml.dump(asdict(self), f, allow_unicode=True, default_flow_style=False)
        logger.debug("Configuração salva em %s", caminho)

    @classmethod
    def carregar(cls, caminho: Path = CONFIG_PATH) -> "ConfiguracaoBot":
        if not caminho.exists():
            cfg = cls()
            cfg.salvar(caminho)
            return cfg
        try:
            with open(caminho, "r", encoding="utf-8") as f:
                dados = yaml.safe_load(f) or {}
            cfg = cls(**{k: v for k, v in dados.items() if hasattr(cls, k)})
            logger.debug("Configuração carregada de %s", caminho)
            return cfg
        except Exception as exc:
            logger.error("Erro ao carregar config: %s. Usando padrões.", exc)
            return cls()
