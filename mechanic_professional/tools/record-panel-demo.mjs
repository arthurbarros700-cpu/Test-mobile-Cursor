#!/usr/bin/env node
/**
 * Grava vídeo 1920x1080 do simulador HTML do painel (demo_visual/).
 * Requer: npm install em mechanic_professional/ + npx playwright install chromium
 *
 * Saída: artifacts/demo_panel_mechanic_professional.mp4
 */

import { chromium } from "playwright";
import { spawnSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const ROOT = path.join(__dirname, "..");
const VISUAL = path.join(ROOT, "demo_visual");
const OUT_DIR = path.join(ROOT, "artifacts");
const INDEX = path.join(VISUAL, "index.html");
const MP4_OUT = path.join(OUT_DIR, "demo_panel_mechanic_professional.mp4");

if (!fs.existsSync(INDEX)) {
  console.error("Missing:", INDEX);
  process.exit(1);
}

fs.mkdirSync(OUT_DIR, { recursive: true });

const fileUrl = "file://" + INDEX.replace(/\\/g, "/");

console.log("Launching Chromium (headless)…");
const browser = await chromium.launch({ headless: true });
const context = await browser.newContext({
  viewport: { width: 1920, height: 1080 },
  recordVideo: {
    dir: OUT_DIR,
    size: { width: 1920, height: 1080 },
  },
});

const page = await context.newPage();
await page.goto(fileUrl + "?autostart=0", { waitUntil: "load", timeout: 60000 });

await page.waitForFunction(() => typeof window.runMechanicDemo === "function", { timeout: 30000 });

console.log("Running visual demo (~5–6 min)…");
await page.evaluate(async () => {
  await window.runMechanicDemo();
});

const vid = page.video();
await page.close();
await context.close();
await browser.close();

let webmPath = null;
if (vid) {
  try {
    webmPath = await vid.path();
  } catch (_) {}
}

if (!webmPath || !fs.existsSync(webmPath)) {
  const webms = fs
    .readdirSync(OUT_DIR)
    .filter((f) => f.endsWith(".webm"))
    .map((f) => ({ f, t: fs.statSync(path.join(OUT_DIR, f)).mtimeMs }))
    .sort((a, b) => b.t - a.t);
  if (webms.length) webmPath = path.join(OUT_DIR, webms[0].f);
}

if (!webmPath || !fs.existsSync(webmPath)) {
  console.error("WebM de gravação não encontrado.");
  process.exit(1);
}

console.log("Transcodificando para MP4:", webmPath);
const ff = spawnSync(
  "ffmpeg",
  [
    "-y",
    "-i",
    webmPath,
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
    MP4_OUT,
  ],
  { stdio: "inherit" }
);
if (ff.status !== 0) process.exit(ff.status ?? 1);

try {
  fs.unlinkSync(webmPath);
} catch (_) {}

console.log("Pronto:", MP4_OUT);
