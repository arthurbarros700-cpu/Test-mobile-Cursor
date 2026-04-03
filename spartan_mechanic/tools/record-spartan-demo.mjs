#!/usr/bin/env node
/**
 * Grava demo 1080p do painel NUI Spartan (index_record.html).
 * npm install && npx playwright install chromium && npm run record-demo
 * Saída: ../mechanic_professional/artifacts/spartan_motorworks_demo_v2.mp4
 */

import { chromium } from "playwright";
import { spawnSync } from "node:child_process";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const ROOT = path.join(__dirname, "..");
const HTML = path.join(ROOT, "html", "index_record.html");
const OUT_DIR = path.join(ROOT, "..", "mechanic_professional", "artifacts");
const MP4 = path.join(OUT_DIR, "spartan_motorworks_demo_v2.mp4");
const MP4_SILENT = path.join(OUT_DIR, "_spartan_video_silent.mp4");

if (!fs.existsSync(HTML)) {
  console.error("Missing", HTML);
  process.exit(1);
}
fs.mkdirSync(OUT_DIR, { recursive: true });

const fileUrl = "file://" + HTML.replace(/\\/g, "/");

const browser = await chromium.launch({ headless: true });
const context = await browser.newContext({
  viewport: { width: 1920, height: 1080 },
  recordVideo: { dir: OUT_DIR, size: { width: 1920, height: 1080 } },
});
const page = await context.newPage();
page.setDefaultTimeout(90 * 60 * 1000);
await page.goto(fileUrl + "?autostart=0", { waitUntil: "load", timeout: 120000 });

await page.waitForFunction(() => typeof window.runSpartanRecordDemo === "function", { timeout: 60000 });

page.on("console", (msg) => console.log("[page]", msg.text()));
page.on("pageerror", (err) => console.error("[pageerror]", err.message));

console.log("Gravando Spartan Motorworks demo…");
await page.evaluate(async () => {
  await window.runSpartanRecordDemo();
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
  console.error("WebM não encontrado.");
  process.exit(1);
}

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
    "-an",
    "-movflags",
    "+faststart",
    MP4_SILENT,
  ],
  { stdio: "inherit" }
);
if (ff.status !== 0) process.exit(ff.status ?? 1);
try {
  fs.unlinkSync(webmPath);
} catch (_) {}

const mux = spawnSync(process.execPath, [path.join(__dirname, "mux-phonk-audio.mjs"), MP4_SILENT, MP4], {
  stdio: "inherit",
  env: { ...process.env },
});
if (mux.status !== 0) process.exit(mux.status ?? 1);
try {
  fs.unlinkSync(MP4_SILENT);
} catch (_) {}

console.log("Pronto (vídeo + trilha phonk/funk procedural ou SPARTAN_DEMO_MUSIC):", MP4);
