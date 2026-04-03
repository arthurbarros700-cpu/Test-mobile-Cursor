#!/usr/bin/env node
/**
 * Gera marketing/output/bot-demo-marketing.webm (e .mp4 se ffmpeg existir)
 * usando Playwright para gravar a animação em marketing/demo/.
 */
import http from "node:http";
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { spawnSync } from "node:child_process";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const DEMO_ROOT = path.join(__dirname, "demo");
const OUT_DIR = path.join(__dirname, "output");

async function main() {
  const { chromium } = await import("playwright");

  fs.mkdirSync(OUT_DIR, { recursive: true });

  const server = http.createServer((req, res) => {
    const url = req.url === "/" ? "/index.html" : req.url.split("?")[0];
    const safe = path.normalize(url).replace(/^(\.\.[/\\])+/, "");
    const filePath = path.join(DEMO_ROOT, safe);
    if (!filePath.startsWith(DEMO_ROOT)) {
      res.writeHead(403);
      res.end();
      return;
    }
    fs.readFile(filePath, (err, data) => {
      if (err) {
        res.writeHead(404);
        res.end("Not found");
        return;
      }
      const ext = path.extname(filePath);
      const types = {
        ".html": "text/html; charset=utf-8",
        ".css": "text/css; charset=utf-8",
        ".js": "application/javascript; charset=utf-8",
      };
      res.writeHead(200, { "Content-Type": types[ext] || "application/octet-stream" });
      res.end(data);
    });
  });

  await new Promise((resolve) => server.listen(0, "127.0.0.1", resolve));
  const port = server.address().port;
  const baseUrl = `http://127.0.0.1:${port}/`;

  const browser = await chromium.launch({ headless: true });
  const context = await browser.newContext({
    viewport: { width: 1920, height: 1080 },
    recordVideo: {
      dir: OUT_DIR,
      size: { width: 1920, height: 1080 },
    },
  });
  const page = await context.newPage();

  await page.goto(baseUrl, { waitUntil: "networkidle", timeout: 120000 });

  await page.waitForFunction(
    () => window.__DEMO_DONE__ === true,
    undefined,
    { timeout: 240000, polling: 250 }
  );

  // Dar tempo ao Playwright para flush completo do WebM antes de fechar o contexto
  await page.waitForTimeout(5000);
  await context.close();
  await browser.close();
  server.close();

  const files = fs.readdirSync(OUT_DIR).filter((f) => f.endsWith(".webm"));
  const latest = files.sort().pop();
  if (!latest) {
    console.error("Nenhum ficheiro .webm gerado.");
    process.exit(1);
  }
  const webmPath = path.join(OUT_DIR, latest);
  const targetWebm = path.join(OUT_DIR, "bot-demo-marketing.webm");
  fs.renameSync(webmPath, targetWebm);
  console.log("Gravado:", targetWebm);

  const mp4Path = path.join(OUT_DIR, "bot-demo-marketing.mp4");
  const ff = spawnSync(
    "ffmpeg",
    [
      "-y",
      "-i",
      targetWebm,
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
      mp4Path,
    ],
    { stdio: "inherit" }
  );
  if (ff.status === 0) {
    console.log("MP4:", mp4Path);
  } else {
    console.warn("ffmpeg falhou ou não está no PATH — mantenha só o .webm");
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
