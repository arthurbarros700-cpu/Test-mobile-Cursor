"""
Sistema de logging do Royal Match Bot.
Logs coloridos no terminal e arquivo de log rotativo.
"""

import logging
import logging.handlers
import os
import sys
from pathlib import Path
from typing import Optional


# Cores ANSI para terminal
class Cores:
    RESET = "\033[0m"
    NEGRITO = "\033[1m"
    VERMELHO = "\033[31m"
    VERDE = "\033[32m"
    AMARELO = "\033[33m"
    AZUL = "\033[34m"
    MAGENTA = "\033[35m"
    CIANO = "\033[36m"
    BRANCO = "\033[37m"
    CINZA = "\033[90m"


class FormatterColorido(logging.Formatter):
    """Formatter com cores para saída no terminal."""

    FORMATOS = {
        logging.DEBUG:    Cores.CINZA + "[DEBUG] %(asctime)s %(name)s - %(message)s" + Cores.RESET,
        logging.INFO:     Cores.VERDE + "[INFO]  %(asctime)s %(name)s - %(message)s" + Cores.RESET,
        logging.WARNING:  Cores.AMARELO + "[AVISO] %(asctime)s %(name)s - %(message)s" + Cores.RESET,
        logging.ERROR:    Cores.VERMELHO + "[ERRO]  %(asctime)s %(name)s - %(message)s" + Cores.RESET,
        logging.CRITICAL: Cores.MAGENTA + Cores.NEGRITO + "[CRÍTICO] %(asctime)s %(name)s - %(message)s" + Cores.RESET,
    }

    def format(self, record: logging.LogRecord) -> str:
        fmt = self.FORMATOS.get(record.levelno, self.FORMATOS[logging.INFO])
        formatter = logging.Formatter(fmt, datefmt="%H:%M:%S")
        return formatter.format(record)


def configurar_logger(
    nivel: str = "INFO",
    arquivo_log: Optional[str] = None,
    colorido: bool = True,
    nivel_arquivo: str = "DEBUG",
) -> None:
    """
    Configura o sistema de logging do bot.

    Args:
        nivel: Nível de log para o terminal (DEBUG, INFO, WARNING, ERROR)
        arquivo_log: Caminho do arquivo de log (None = não salvar)
        colorido: Se True, usa cores no terminal
        nivel_arquivo: Nível de log para o arquivo
    """
    logger_raiz = logging.getLogger("royalmatch")
    logger_raiz.setLevel(logging.DEBUG)

    # Limpar handlers existentes
    logger_raiz.handlers.clear()

    # Handler do terminal
    handler_terminal = logging.StreamHandler(sys.stdout)
    handler_terminal.setLevel(getattr(logging, nivel.upper(), logging.INFO))

    if colorido and sys.stdout.isatty():
        handler_terminal.setFormatter(FormatterColorido())
    else:
        fmt = "[%(levelname)s] %(asctime)s %(name)s - %(message)s"
        handler_terminal.setFormatter(logging.Formatter(fmt, datefmt="%H:%M:%S"))

    logger_raiz.addHandler(handler_terminal)

    # Handler de arquivo
    if arquivo_log:
        Path(arquivo_log).parent.mkdir(parents=True, exist_ok=True)
        handler_arquivo = logging.handlers.RotatingFileHandler(
            arquivo_log,
            maxBytes=10 * 1024 * 1024,  # 10 MB
            backupCount=5,
            encoding="utf-8",
        )
        handler_arquivo.setLevel(getattr(logging, nivel_arquivo.upper(), logging.DEBUG))
        fmt_arquivo = "[%(levelname)s] %(asctime)s %(name)s:%(lineno)d - %(message)s"
        handler_arquivo.setFormatter(logging.Formatter(fmt_arquivo))
        logger_raiz.addHandler(handler_arquivo)

    # Silenciar loggers de bibliotecas externas
    for lib in ["PIL", "urllib3", "requests", "asyncio"]:
        logging.getLogger(lib).setLevel(logging.WARNING)


def obter_logger(nome: str) -> logging.Logger:
    """Retorna um logger com o nome especificado."""
    return logging.getLogger(f"royalmatch.{nome}")
