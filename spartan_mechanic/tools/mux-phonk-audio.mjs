#!/usr/bin/env node
/**
 * Muxa trilha agressiva estilo phonk/funk (procedural) ou MP3 externo.
 * Uso: node tools/mux-phonk-audio.mjs <video.mp4> <saida.mp4>
 * Env: SPARTAN_DEMO_MUSIC=/caminho/track.mp3 (opcional)
 */

import { spawnSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";

const videoIn = process.argv[2];
const videoOut = process.argv[3];
const external = process.env.SPARTAN_DEMO_MUSIC;

if (!videoIn || !videoOut || !fs.existsSync(videoIn)) {
  console.error("Uso: node mux-phonk-audio.mjs <entrada.mp4> <saida.mp4>");
  process.exit(1);
}

function ffprobeDuration(file) {
  const r = spawnSync(
    "ffprobe",
    ["-v", "error", "-show_entries", "format=duration", "-of", "default=noprint_wrappers=1:nokey=1", file],
    { encoding: "utf8" }
  );
  if (r.status !== 0) return null;
  const d = parseFloat(r.stdout.trim(), 10);
  return Number.isFinite(d) ? d : null;
}

function run(args) {
  return spawnSync("ffmpeg", args, { stdio: "inherit" }).status === 0;
}

const duration = ffprobeDuration(videoIn);
if (!duration || duration < 1) {
  console.error("Duração inválida:", duration);
  process.exit(1);
}

const dStr = (duration + 0.3).toFixed(3);
const tmpAudio = path.join(path.dirname(videoOut), "_spartan_demo_audio.wav");

if (external && fs.existsSync(external)) {
  console.log("Usando trilha externa:", external);
  const fadeOut = Math.max(0, duration - 2.5).toFixed(3);
  const ok = run([
    "-y",
    "-i",
    videoIn,
    "-i",
    external,
    "-filter_complex",
    "[1:a]volume=0.4,afade=t=in:st=0:d=1.2,afade=t=out:st=" + fadeOut + ":d=2.5[a]",
    "-map",
    "0:v:0",
    "-map",
    "[a]",
    "-c:v",
    "copy",
    "-c:a",
    "aac",
    "-b:a",
    "192k",
    "-shortest",
    videoOut,
  ]);
  process.exit(ok ? 0 : 1);
}

/* BPM 138 — T=beat; sem vírgulas na expressão (parser ffmpeg) */
const T = 60 / 138;
const H = T / 2;
const expr = [
  "0.48*sin(2*PI*55*t)*exp(-28*mod(t+" + T * 0.02 + "," + T + "))*lt(mod(t," + T + "),0.10)",
  "+0.20*sin(2*PI*40*t)*exp(-14*mod(t," + T + "))*lt(mod(t," + T + "),0.16)",
  "+0.24*sin(2*PI*200*t)*sin(2*PI*330*t)*exp(-48*mod(t," + T + "))*lt(mod(t," + T + "),0.07)*eq(mod(floor(t/" + T + "),4),1)",
  "+0.24*sin(2*PI*200*t)*sin(2*PI*330*t)*exp(-48*mod(t," + T + "))*lt(mod(t," + T + "),0.07)*eq(mod(floor(t/" + T + "),4),3)",
  "+0.10*sin(2*PI*9000*t)*exp(-180*mod(t," + H + "))*lt(mod(t," + H + "),0.020)",
  "+0.07*sin(2*PI*12000*t)*exp(-260*mod(t," + H + "))*lt(mod(t," + H + "),0.012)*eq(mod(floor(t/" + H + "),2),1)",
  "+0.09*sin(2*PI*30*t)*exp(-6*mod(t," + T + "))*lt(mod(t," + T + "),0.22)",
].join("");

const aeval = "aevalsrc='" + expr + "'" + ":s=48000:d=" + dStr;

console.log("Gerando trilha procedural (phonk/funk agressivo)…");
const gen = spawnSync(
  "ffmpeg",
  [
    "-y",
    "-f",
    "lavfi",
    "-i",
    aeval,
    "-af",
    "highpass=f=38,equalizer=f=180:width_type=o:width=1.5:g=3,equalizer=f=2400:width_type=o:width=2:g=2,alimiter=limit=0.88",
    tmpAudio,
  ],
  { stdio: "inherit" }
);
if (gen.status !== 0) {
  console.error("Falha ao gerar WAV.");
  process.exit(1);
}

const fadeOut = Math.max(0, duration - 3).toFixed(3);
const ok = run([
  "-y",
  "-i",
  videoIn,
  "-i",
  tmpAudio,
  "-filter_complex",
  "[1:a]volume=0.92,afade=t=in:st=0:d=1.5,afade=t=out:st=" + fadeOut + ":d=3[a]",
  "-map",
  "0:v:0",
  "-map",
  "[a]",
  "-c:v",
  "copy",
  "-c:a",
  "aac",
  "-b:a",
  "192k",
  "-shortest",
  videoOut,
]);

try {
  fs.unlinkSync(tmpAudio);
} catch (_) {}

process.exit(ok ? 0 : 1);
