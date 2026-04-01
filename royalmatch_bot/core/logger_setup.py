"""
Configuração centralizada de logging com suporte a arquivo rotativo e cores.
"""

import logging
import logging.handlers
from pathlib import Path

LOG_DIR = Path.home() / ".royalmatch_bot" / "logs"


def configurar_logging(nivel: str = "INFO", salvar_arquivo: bool = True):
    """Configura o sistema de logging do bot."""
    LOG_DIR.mkdir(parents=True, exist_ok=True)

    nivel_int = getattr(logging, nivel.upper(), logging.INFO)
    logger_raiz = logging.getLogger("RoyalBot")
    logger_raiz.setLevel(nivel_int)

    fmt = logging.Formatter(
        "[%(asctime)s] %(levelname)-8s %(name)-22s — %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
    )

    # Console
    console = logging.StreamHandler()
    console.setFormatter(fmt)
    console.setLevel(nivel_int)
    logger_raiz.addHandler(console)

    # Arquivo rotativo (10 MB, 5 backups)
    if salvar_arquivo:
        arq = LOG_DIR / "royalmatch_bot.log"
        rot = logging.handlers.RotatingFileHandler(
            arq, maxBytes=10 * 1024 * 1024, backupCount=5, encoding="utf-8"
        )
        rot.setFormatter(fmt)
        rot.setLevel(logging.DEBUG)
        logger_raiz.addHandler(rot)

    return logger_raiz
