#!/usr/bin/env node
/**
 * Gera html/extended_ops_demo.js a partir de server/feat_extended.lua
 * (lista DEMO_EXTENDED_OPS para a gravação Playwright).
 */
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const ROOT = path.join(__dirname, "..");
const lua = fs.readFileSync(path.join(ROOT, "server", "feat_extended.lua"), "utf8");
const ops = [...lua.matchAll(/^OPS\.(\w+)\s*=/gm)].map((m) => m[1]).sort();
const out = path.join(ROOT, "html", "extended_ops_demo.js");
const body =
  "/** Auto-gerado por tools/gen-extended-ops-demo.mjs — não editar */\nwindow.DEMO_EXTENDED_OPS = " +
  JSON.stringify(ops, null, 2) +
  ";\n";
fs.writeFileSync(out, body);
console.log("Wrote", out, "(" + ops.length + " ops)");
