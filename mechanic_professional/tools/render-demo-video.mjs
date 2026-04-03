#!/usr/bin/env node
/**
 * Gera vídeo de demonstração (1080p, H.264) alinhado ao roteiro de server/demo_mode.lua.
 * Não substitui captura in-game; serve como trailer técnico / fallback quando não há OBS.
 *
 * Uso: node tools/render-demo-video.mjs
 * Requer: ffmpeg no PATH, fonte DejaVu (padrão em Linux).
 *
 * Saída: artifacts/demo_mechanic_professional.mp4
 */

import { spawnSync } from "node:child_process";
import { mkdirSync, writeFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = join(__dirname, "..");
const OUT_DIR = join(ROOT, "artifacts");
const ASS_PATH = join(OUT_DIR, "demo_cinematic_pt-BR.ass");
const MP4_PATH = join(OUT_DIR, "demo_mechanic_professional.mp4");

/* Tiempos de fogo (ms) = cumulativo igual a schedule() em demo_mode.lua */
const T = [];
let acc = 0;
function add(ms) {
  acc += ms;
  T.push(acc);
}
add(800);
add(14000);
add(12000);
add(10000);
add(16000);
add(12000);
add(14000);
add(10000);
add(5000);
for (let k = 2; k <= 9; k++) add(5200);
add(12000);
add(12000);
add(14000);
add(12000);
add(16000);
add(20000);
add(18000);
add(18000);
add(20000);
add(20000);

const cues = [
  {
    title: "MechanicProfessional",
    subtitle: "Sistema de oficina — demonstração cinematográfica",
    narrator:
      "FSM, estoque com reservas, diagnóstico multi-sensor e auditoria — o mesmo pipeline usado em produção no servidor MTA.",
  },
  {
    narrator:
      "Criamos a OS DEMO7K2 — SUV, 188 mil km — com MechanicWorkshop:createJob: evento e persistência reais do resource.",
  },
  {
    narrator:
      "Estado INTAKE: no jogo você abre o painel com F2 e seleciona a ordem na lista para ver placa, família e quilometragem.",
  },
  {
    narrator:
      "Transição para DIAGNOSTIC: runProfile simula sensores, gera DTC e plano de peças, com correlação opcional ao DTC_REGISTRY massivo no servidor.",
  },
  {
    narrator:
      "Aba Logs: MechanicAudit grava INFO, WARN e ERROR com contexto estruturado — visível no debug do servidor e em fatias no cliente.",
  },
  {
    narrator:
      "PARTS_PULL: cada transição reserva SKU contra o estoque. Falha dispara rollback automático das reservas já feitas na mesma OS.",
  },
  {
    narrator:
      "Disponível = estoque físico menos todas as reservas ativas. SKUs gerados SKU-GEN-* usam inicialização lazy para não travar o boot.",
  },
  {
    narrator:
      "LABOR: o jogador clicaria nove vezes em Trabalhar; a demo dispara mechanic:tickLabor no servidor — +12% por evento, mesma API.",
  },
  ...Array.from({ length: 9 }, (_, i) => ({
    narrator: `tickLabor +12% — passo ${i + 1} de nove. Ao chegar a 100%, a FSM avança sozinha para QC com commit de estoque.`,
  })),
  {
    narrator:
      "QC: baixa confirmada no inventário e nota de qualidade simulada — tudo auditado com job_id para rastreabilidade.",
  },
  {
    narrator:
      "READY: transição validada pela máquina de estados — veículo liberado para retirada na narrativa da oficina.",
  },
  {
    narrator:
      "Encerramento CLOSED: releaseJob garante que nenhuma reserva órfã permaneça após arquivar a ordem de serviço.",
  },
  {
    narrator:
      "Segunda OS XPT0K9: createJob, diagnóstico e em seguida cancelJob — equivalente ao F10 no cliente, com reconciliação de estoque.",
  },
  {
    narrator:
      "Cancelamento concluído. O catálogo massivo vive apenas em server/generated; o cliente recebe snapshots enxutos por performance.",
  },
  {
    narrator:
      "Regeneração da base: node tools/gen-megadata.mjs — variável TARGET_LINES controla o volume de linhas Lua geradas.",
  },
  {
    narrator:
      "Bloco B-roll: no jogo, role estoque e logs com o painel aberto enquanto explica o fluxo — ideal para preencher o vídeo com imagem real.",
  },
  {
    narrator:
      "No servidor, a auditoria correlaciona job_id; no cliente, apenas as últimas entradas — arquitetura típica de painel operacional.",
  },
  {
    narrator:
      "A FSM rejeita transições inválidas; o inventário trata reserva, commit na passagem ao QC e fila inbound de reposição simulada.",
  },
  {
    title: "Demonstração concluída",
    subtitle: "MechanicProfessional — MTA:SA",
    narrator:
      "No servidor, use /mechanicdemo ou F11 no cliente para repetir. Para gameplay real, grave com OBS em 1080p tela cheia. Obrigado.",
  },
];

function msToAss(ms) {
  const cs = Math.floor(ms / 10);
  const h = Math.floor(cs / 360000);
  const m = Math.floor((cs % 360000) / 6000);
  const s = Math.floor((cs % 6000) / 100);
  const cs2 = cs % 100;
  return `${h}:${String(m).padStart(2, "0")}:${String(s).padStart(2, "0")}.${String(cs2).padStart(2, "0")}`;
}

const PAD_END_MS = 14000;
const durationSec = (T[T.length - 1] + PAD_END_MS) / 1000;

function buildAss() {
  const header = `[Script Info]
Title: MechanicProfessional Demo
ScriptType: v4.00+
WrapStyle: 0
ScaledBorderAndShadow: yes
YCbCr Matrix: TV.709
PlayResX: 1920
PlayResY: 1080

[V4+ Styles]
Format: Name, Fontname, Fontsize, PrimaryColour, SecondaryColour, OutlineColour, BackColour, Bold, Italic, Underline, StrikeOut, ScaleX, ScaleY, Spacing, Angle, BorderStyle, Outline, Shadow, Alignment, MarginL, MarginR, MarginV, Encoding
Style: TopTitle,DejaVu Sans,56,&H00D9F5FF,&H000000FF,&H00101012,&H80000000,-1,0,0,0,100,100,0,0,1,2,0,8,80,80,52,1
Style: TopSub,DejaVu Sans,28,&H00B8C4D4,&H000000FF,&H00101012,&H80000000,0,0,0,0,100,100,0,0,1,1,0,8,80,80,118,1
Style: Bottom,DejaVu Sans,34,&H00F0F2F5,&H000000FF,&H000A0C10,&HCC000000,0,0,0,0,100,100,0,0,1,2,3,2,100,100,88,1
Style: Hud,DejaVu Sans,22,&H0080D0AA,&H000000FF,&H00101012,&H80000000,0,0,0,0,100,100,0,0,1,1,0,1,48,48,48,1

[Events]
Format: Layer, Start, End, Style, Name, MarginL, MarginR, MarginV, Effect, Text
`;
  const esc = (s) =>
    String(s)
      .replace(/\\/g, "\\\\")
      .replace(/\n/g, "\\N")
      .replace(/\{/g, "\\{")
      .replace(/\}/g, "\\}");

  let events = "";

  for (let i = 0; i < cues.length; i++) {
    const t0 = i === 0 ? 0 : T[i - 1];
    const t1 = i < cues.length - 1 ? T[i] : T[T.length - 1] + PAD_END_MS;
    const c = cues[i];
    events += `Dialogue: 0,${msToAss(t0)},${msToAss(t1)},Hud,,0,0,0,,${esc(`FASE ${i + 1}/${cues.length}  ·  ${(t0 / 1000).toFixed(1)}s`)}\n`;
    if (c.title) {
      events += `Dialogue: 0,${msToAss(t0)},${msToAss(t1)},TopTitle,,0,0,0,,${esc(c.title)}\n`;
    }
    if (c.subtitle) {
      events += `Dialogue: 0,${msToAss(t0)},${msToAss(t1)},TopSub,,0,0,0,,${esc(c.subtitle)}\n`;
    }
    if (c.narrator) {
      events += `Dialogue: 0,${msToAss(t0)},${msToAss(t1)},Bottom,,0,0,0,,${esc(c.narrator)}\n`;
    }
  }

  return header + events;
}

mkdirSync(OUT_DIR, { recursive: true });
writeFileSync(ASS_PATH, buildAss(), "utf8");

const vf = [
  `color=c=0x12141a:s=1920x1080:d=${durationSec.toFixed(3)}:r=30`,
  `drawbox=x=0:y=0:w=iw:h=120:c=black@0.72:t=fill`,
  `drawbox=x=0:y=ih-140:w=iw:h=140:c=black@0.72:t=fill`,
  `ass=${ASS_PATH.replace(/\\/g, "/").replace(/:/g, "\\:")}`,
  `format=yuv420p`,
].join(",");

const ffArgs = [
  "-y",
  "-f",
  "lavfi",
  "-i",
  vf,
  "-c:v",
  "libx264",
  "-preset",
  "medium",
  "-crf",
  "20",
  "-pix_fmt",
  "yuv420p",
  "-movflags",
  "+faststart",
  MP4_PATH,
];

console.log("ffmpeg", ffArgs.join(" "));
const r = spawnSync("ffmpeg", ffArgs, { stdio: "inherit", encoding: "utf8" });
if (r.error) throw r.error;
if (r.status !== 0) process.exit(r.status ?? 1);
console.log("Gravado:", MP4_PATH, `(${durationSec.toFixed(0)}s)`);
