"""
Estatísticas de sessão do bot: fases jogadas, vitórias, tempo, etc.
"""

import time
import json
import logging
from pathlib import Path
from dataclasses import dataclass, field, asdict
from typing import List, Dict

logger = logging.getLogger("RoyalBot.Stats")
STATS_DIR = Path.home() / ".royalmatch_bot" / "stats"


@dataclass
class EstatisticaFase:
    numero_fase: int
    vitoria: bool
    movimentos: int
    tempo_segundos: float
    timestamp: float = field(default_factory=time.time)


@dataclass
class EstatisticasSessao:
    inicio: float           = field(default_factory=time.time)
    fim: float              = 0.0
    fases_completadas: int  = 0
    fases_falhas: int       = 0
    movimentos_totais: int  = 0
    combos_totais: int      = 0
    tempo_total_s: float    = 0.0
    fase_atual: int         = 0
    historico: List[EstatisticaFase] = field(default_factory=list)

    @property
    def taxa_vitoria(self) -> float:
        total = self.fases_completadas + self.fases_falhas
        return (self.fases_completadas / total * 100) if total else 0.0

    @property
    def tempo_formatado(self) -> str:
        s = int(self.tempo_total_s)
        h, rem = divmod(s, 3600)
        m, seg = divmod(rem, 60)
        return f"{h:02d}:{m:02d}:{seg:02d}"

    def registrar_fase(self, fase: EstatisticaFase):
        self.historico.append(fase)
        self.tempo_total_s += fase.tempo_segundos
        self.movimentos_totais += fase.movimentos
        if fase.vitoria:
            self.fases_completadas += 1
        else:
            self.fases_falhas += 1

    def salvar(self):
        STATS_DIR.mkdir(parents=True, exist_ok=True)
        nome = f"sessao_{int(self.inicio)}.json"
        caminho = STATS_DIR / nome
        dados = asdict(self)
        with open(caminho, "w", encoding="utf-8") as f:
            json.dump(dados, f, ensure_ascii=False, indent=2)
        logger.debug("Estatísticas salvas: %s", caminho)

    @classmethod
    def carregar_todas(cls) -> List["EstatisticasSessao"]:
        if not STATS_DIR.exists():
            return []
        sessoes = []
        for arq in sorted(STATS_DIR.glob("sessao_*.json")):
            try:
                with open(arq, "r", encoding="utf-8") as f:
                    dados = json.load(f)
                hist = [EstatisticaFase(**e) for e in dados.pop("historico", [])]
                sess = cls(**dados)
                sess.historico = hist
                sessoes.append(sess)
            except Exception as exc:
                logger.warning("Erro ao carregar %s: %s", arq, exc)
        return sessoes
