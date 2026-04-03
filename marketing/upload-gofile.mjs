#!/usr/bin/env node
/**
 * Envia o MP4 de marketing para o Gofile e imprime o link da página de download.
 * Uso: npm run video:demo && node marketing/upload-gofile.mjs
 *
 * Requer: ficheiro marketing/output/bot-demo-marketing.mp4 (gerado antes).
 */
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MP4 = path.join(__dirname, "output", "bot-demo-marketing.mp4");

async function getServer() {
  const r = await fetch("https://api.gofile.io/servers");
  const j = await r.json();
  if (j.status !== "ok" || !j.data?.serversAllZone?.[0]?.name) {
    throw new Error("Gofile: não foi possível obter servidor (" + JSON.stringify(j) + ")");
  }
  return j.data.serversAllZone[0].name;
}

async function upload(server, filePath) {
  const buf = fs.readFileSync(filePath);
  const name = path.basename(filePath);
  const blob = new Blob([buf], { type: "video/mp4" });
  const form = new FormData();
  form.append("file", blob, name);

  const url = `https://${server}.gofile.io/contents/uploadfile`;
  const res = await fetch(url, { method: "POST", body: form });
  const j = await res.json();
  if (j.status !== "ok" || !j.data?.downloadPage) {
    throw new Error("Gofile upload falhou: " + JSON.stringify(j));
  }
  return j.data;
}

async function main() {
  if (!fs.existsSync(MP4)) {
    console.error("Ficheiro em falta:", MP4);
    console.error("Execute primeiro: npm run video:demo");
    process.exit(1);
  }
  const server = await getServer();
  console.error("Servidor Gofile:", server);
  const data = await upload(server, MP4);
  console.log("\n=== Link para partilhar (abre no browser / telemóvel) ===\n");
  console.log(data.downloadPage);
  console.log("\nNa página, toca em Download para ver o MP4.");
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
