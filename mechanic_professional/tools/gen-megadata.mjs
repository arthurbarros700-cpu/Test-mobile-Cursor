#!/usr/bin/env node
/**
 * Gera bases Lua grandes (orientadas a dados) para o resource MechanicProfessional.
 * Uso: node tools/gen-megadata.mjs
 * Variáveis opcionais: TARGET_LINES=82000
 */

import { createWriteStream } from "node:fs";
import { mkdir } from "node:fs/promises";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = join(__dirname, "..");
const OUT_SERVER = join(ROOT, "server", "generated");

const TARGET = Math.max(5000, parseInt(process.env.TARGET_LINES || "82000", 10) || 82000);

const FAMILIES = [
  "VEHICLE_FAMILY.COMPACT",
  "VEHICLE_FAMILY.SEDAN",
  "VEHICLE_FAMILY.SUV",
  "VEHICLE_FAMILY.SPORT",
  "VEHICLE_FAMILY.COMMERCIAL",
  "VEHICLE_FAMILY.MOTORCYCLE",
];

const SUBSYS = ["ENGINE", "ABS", "SRS", "CLIMATE", "TRANS", "FUEL", "STEER", "HV", "BODY", "INFO"];

function rnd(seed) {
  let s = seed >>> 0;
  return () => {
    s = (s * 1664525 + 1013904223) >>> 0;
    return s / 0xffffffff;
  };
}

async function writeParts(targetLines, rng) {
  const path = join(OUT_SERVER, "parts_catalog_bulk.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Catálogo estendido gerado (SKU em massa). Mesclado em PARTS_CATALOG ao carregar.
    Gerado por tools/gen-megadata.mjs — não editar manualmente.
]]

local _GPE = {}
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const perEntry = 9;
  const n = Math.floor((targetLines - lines - 8) / perEntry);
  for (let i = 1; i <= n; i++) {
    const sku = `SKU-GEN-${String(i).padStart(6, "0")}`;
    const fam = FAMILIES[i % FAMILIES.length];
    const rp = 3 + (i % 17);
    const lt = 10 + (i % 120);
    const haz = i % 11 === 0;
    const sup = `Fornecedor-${String((i % 200) + 1).padStart(3, "0")}`;
    const name = `Peça gerada ${i} — ${["kit", "módulo", "conjunto", "sensor", "atuador", "reforço"][i % 6]} ${(rng() * 1000) | 0}`;
    const block = `_GPE["${sku}"] = {
    name = ${JSON.stringify(name)},
    family = { ${fam} },
    unit = "${i % 3 === 0 ? "par" : i % 3 === 1 ? "un" : "kit"}",
    reorder_point = ${rp},
    lead_time_min = ${lt},
    supplier = ${JSON.stringify(sup)},
    hazard = ${haz ? "true" : "false"},
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  const footer = `
for sku, def in pairs(_GPE) do
    PARTS_CATALOG[sku] = def
end
MECHANIC_GEN_PARTS_COUNT = ${n}
_GPE = nil
`;
  w.write(footer);
  lines += footer.split("\n").length - 1;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

async function writeDtc(targetLines, rng) {
  const path = join(OUT_SERVER, "dtc_registry.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Registro DTC estendido (fictício, para oficina / treinamento).
    Gerado por tools/gen-megadata.mjs
]]

DTC_REGISTRY = DTC_REGISTRY or {}
local _DR = DTC_REGISTRY
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const perEntry = 8;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const code = `G${String(i).padStart(5, "0")}`;
    const sub = SUBSYS[i % SUBSYS.length];
    const sev = 1 + (i % 5);
    const sku1 = `SKU-GEN-${String((i % 9000) + 1).padStart(6, "0")}`;
    const sku2 = `SKU-GEN-${String((i * 7 % 9000) + 1).padStart(6, "0")}`;
    const title = `Condição ${sub}-${i}: correlação ${(rng() * 100).toFixed(1)}%`;
    const block = `_DR["${code}"] = {
    title = ${JSON.stringify(title)},
    subsystem = "${sub}",
    severity = ${sev},
    related_skus = { "${sku1}", "${sku2}" },
    notes = "Ver procedimento PROC-L1-${String((i % 50000) + 1).padStart(5, "0")} se aplicável.",
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_DTC_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

async function writeProcedures(targetLines, rng) {
  const path = join(OUT_SERVER, "service_procedures.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Biblioteca de procedimentos de serviço (checklists).
    Gerado por tools/gen-megadata.mjs
]]

SERVICE_PROCEDURES = SERVICE_PROCEDURES or {}
local _SP = SERVICE_PROCEDURES
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const perEntry = 11;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const id = `PROC-L1-${String(i).padStart(5, "0")}`;
    const tier = ["A", "B", "C"][i % 3];
    const est = 15 + (i % 180);
    const sku = `SKU-GEN-${String((i % 8000) + 1).padStart(6, "0")}`;
    const block = `_SP["${id}"] = {
    title = ${JSON.stringify(`Serviço nível ${tier} #${i}`)},
    est_minutes = ${est},
    labor_tier = "${tier}",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona ${(i % 8) + 1}",
        "Substituir ${sku} se desvio > ${(rng() * 5).toFixed(2)}",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "${sku}" },
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_PROC_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

async function writeVehicles(targetLines, rng) {
  const path = join(OUT_SERVER, "vehicle_profiles.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Perfis de veículo sintéticos (cadastro master para diagnóstico / estoque).
    Gerado por tools/gen-megadata.mjs
]]

VEHICLE_PROFILES = VEHICLE_PROFILES or {}
local _VP = VEHICLE_PROFILES
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const makers = ["AstraMotors", "RioVeículos", "NorteAuto", "DeltaMob", "OrionTruck", "SigmaBike"];
  const perEntry = 8;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const id = `VP-${String(i).padStart(6, "0")}`;
    const fam = FAMILIES[i % FAMILIES.length].replace("VEHICLE_FAMILY.", "");
    const mk = makers[i % makers.length];
    const block = `_VP["${id}"] = {
    label = ${JSON.stringify(`${mk} modelo ${(i % 900) + 2000} série ${String.fromCharCode(65 + (i % 26))}`)},
    family = VEHICLE_FAMILY.${fam},
    base_mileage = ${10000 + ((i * 137) % 280000)},
    wear_curve = ${(0.15 + rng() * 0.85).toFixed(4)},
    preferred_supplier_ids = { ${(i % 200) + 1}, ${((i * 3) % 200) + 1} },
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_VEHICLE_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

const rng = rnd(0x9e3779b9);

const p = Math.floor(TARGET * 0.39);
const d = Math.floor(TARGET * 0.31);
const s = Math.floor(TARGET * 0.19);
const v = TARGET - p - d - s;

console.log("Alvo de linhas:", TARGET, { parts: p, dtc: d, procedures: s, vehicles: v });

const r1 = await writeParts(p, rng);
const r2 = await writeDtc(d, rng);
const r3 = await writeProcedures(s, rng);
const r4 = await writeVehicles(v, rng);

const total = r1.lines + r2.lines + r3.lines + r4.lines;
console.log("Gerado:");
console.log(" ", r1.path, r1.lines);
console.log(" ", r2.path, r2.lines);
console.log(" ", r3.path, r3.lines);
console.log(" ", r4.path, r4.lines);
console.log("Total linhas (aprox.):", total);

if (total < TARGET * 0.95) {
  console.warn("Aviso: total abaixo de 95% do alvo; aumente TARGET_LINES ou ajuste fatores.");
}
