"""
Notificador via Telegram para o Royal Match Bot.
Envia atualizações opcionais para o celular/Telegram do usuário.
"""

import logging
import threading
from typing import Optional

logger = logging.getLogger("royalmatch.utils.notificador")


class Notificador:
    """
    Envia notificações opcionais via Telegram.
    Configure token e chat_id nas configurações para ativar.
    """

    def __init__(self, token: str = "", chat_id: str = ""):
        self.token = token
        self.chat_id = chat_id
        self._ativo = bool(token and chat_id)

        if self._ativo:
            logger.info("Notificações Telegram ativadas.")
        else:
            logger.debug("Notificações Telegram desativadas (token não configurado).")

    def enviar(self, mensagem: str, silencioso: bool = True) -> bool:
        """
        Envia uma mensagem via Telegram de forma assíncrona.
        Não bloqueia a execução do bot.
        """
        if not self._ativo:
            return False

        thread = threading.Thread(
            target=self._enviar_sync,
            args=(mensagem, silencioso),
            daemon=True,
        )
        thread.start()
        return True

    def _enviar_sync(self, mensagem: str, silencioso: bool) -> None:
        try:
            import urllib.request
            import urllib.parse
            import json

            url = f"https://api.telegram.org/bot{self.token}/sendMessage"
            dados = {
                "chat_id": self.chat_id,
                "text": mensagem,
                "disable_notification": silencioso,
                "parse_mode": "HTML",
            }
            dados_encoded = urllib.parse.urlencode(dados).encode("utf-8")
            req = urllib.request.Request(url, data=dados_encoded, method="POST")
            with urllib.request.urlopen(req, timeout=10) as resp:
                resultado = json.loads(resp.read())
                if not resultado.get("ok"):
                    logger.warning(f"Telegram retornou erro: {resultado}")
        except Exception as e:
            logger.debug(f"Erro ao enviar notificação Telegram: {e}")

    def notificar_vitoria(self, fase: int, pontos: int, movimentos: int) -> None:
        msg = (
            f"🏆 <b>Fase {fase} concluída!</b>\n"
            f"Pontuação: {pontos:,}\n"
            f"Movimentos restantes: {movimentos}"
        )
        self.enviar(msg)

    def notificar_derrota(self, fase: int, tentativas: int) -> None:
        msg = (
            f"❌ <b>Fase {fase} - derrota</b>\n"
            f"Tentativa {tentativas}"
        )
        self.enviar(msg)

    def notificar_bateria_baixa(self, nivel: int) -> None:
        msg = f"🔋 Bateria baixa: {nivel}%. Bot pausado."
        self.enviar(msg, silencioso=False)

    def notificar_inicio_sessao(self, fase_atual: int) -> None:
        msg = f"🤖 Bot iniciado! Fase atual: {fase_atual}"
        self.enviar(msg)

    def notificar_pausa(self, motivo: str) -> None:
        msg = f"⏸️ Bot pausado: {motivo}"
        self.enviar(msg)
