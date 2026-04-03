#!/usr/bin/env node
/**
 * Gera bases Lua grandes (dados) para MechanicProfessional.
 * Uso: node tools/gen-megadata.mjs
 * Variável: TARGET_LINES (padrão 250000)
 */

import { createWriteStream } from "node:fs";
import { mkdir } from "node:fs/promises";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = join(__dirname, "..");
const OUT_SERVER = join(ROOT, "server", "generated");

const TARGET = Math.max(8000, parseInt(process.env.TARGET_LINES || "251200", 10) || 251200);

const FAMILIES = [
  "VEHICLE_FAMILY.COMPACT",
  "VEHICLE_FAMILY.SEDAN",
  "VEHICLE_FAMILY.SUV",
  "VEHICLE_FAMILY.SPORT",
  "VEHICLE_FAMILY.COMMERCIAL",
  "VEHICLE_FAMILY.MOTORCYCLE",
];

const SUBSYS = ["ENGINE", "ABS", "SRS", "CLIMATE", "TRANS", "FUEL", "STEER", "HV", "BODY", "INFO"];

const REGIONS = ["NORTE", "NORDESTE", "CENTRO", "SUDESTE", "SUL", "IMPORT"];

function rnd(seed) {
  let s = seed >>> 0;
  return () => {
    s = (s * 1664525 + 1013904223) >>> 0;
    return s / 0xffffffff;
  };
}

function skuGen(i) {
  return `SKU-GEN-${String(i).padStart(6, "0")}`;
}

function skuGenMod(i, partsN) {
  const idx = partsN > 0 ? ((i - 1) % partsN) + 1 : ((i - 1) % 9000) + 1;
  return skuGen(idx);
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
    const sku = skuGen(i);
    const fam = FAMILIES[i % FAMILIES.length];
    const rp = 3 + (i % 17);
    const lt = 10 + (i % 120);
    const haz = i % 11 === 0;
    const sup = `SUP-${String((i % 5000) + 1).padStart(6, "0")}`;
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
  return { path, lines, partsN: n };
}

async function writeDtc(targetLines, rng, partsN) {
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
    const sku1 = skuGenMod(i, partsN);
    const sku2 = skuGenMod(i * 7, partsN);
    const title = `Condição ${sub}-${i}: correlação ${(rng() * 100).toFixed(1)}%`;
    const procId = Math.min(i % 50000, 49999) + 1;
    const block = `_DR["${code}"] = {
    title = ${JSON.stringify(title)},
    subsystem = "${sub}",
    severity = ${sev},
    related_skus = { "${sku1}", "${sku2}" },
    notes = "Ver procedimento PROC-L1-${String(procId).padStart(5, "0")} e TSB-${String((i % 8000) + 1).padStart(6, "0")}.",
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

async function writeProcedures(targetLines, rng, partsN) {
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
    const sku = skuGenMod(i * 11, partsN);
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
    const supA = `SUP-${String((i % 5000) + 1).padStart(6, "0")}`;
    const supB = `SUP-${String(((i * 3) % 5000) + 1).padStart(6, "0")}`;
    const block = `_VP["${id}"] = {
    label = ${JSON.stringify(`${mk} modelo ${(i % 900) + 2000} série ${String.fromCharCode(65 + (i % 26))}`)},
    family = VEHICLE_FAMILY.${fam},
    base_mileage = ${10000 + ((i * 137) % 280000)},
    wear_curve = ${(0.15 + rng() * 0.85).toFixed(4)},
    preferred_supplier_ids = { "${supA}", "${supB}" },
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

async function writeSuppliers(targetLines, rng) {
  const path = join(OUT_SERVER, "suppliers_master.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Cadastro mestre de fornecedores (sintético). Referenciado por SKU-GEN-* .supplier
    Gerado por tools/gen-megadata.mjs
]]

SUPPLIERS_MASTER = SUPPLIERS_MASTER or {}
local _SM = SUPPLIERS_MASTER
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const perEntry = 9;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const id = `SUP-${String(i).padStart(6, "0")}`;
    const reg = REGIONS[i % REGIONS.length];
    const block = `_SM["${id}"] = {
    trade_name = ${JSON.stringify(`Distribuidora ${reg} #${i}`)},
    legal_name = ${JSON.stringify(`${reg} Auto Parts LTDA ${i}`)},
    region = "${reg}",
    avg_lead_min = ${12 + (i % 96)},
    rating = ${(3.5 + rng() * 1.4).toFixed(2)},
    payment_terms_days = ${7 * (1 + (i % 8))},
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_SUPPLIERS_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

async function writeLaborFlat(targetLines, rng) {
  const path = join(OUT_SERVER, "labor_flat_rate.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Tabela flat-rate de mão de obra (horas padrão por operação).
    Gerado por tools/gen-megadata.mjs
]]

LABOR_FLAT_RATE = LABOR_FLAT_RATE or {}
local _LF = LABOR_FLAT_RATE
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const ops = ["BRK", "ENG", "ELEC", "SUS", "COOL", "DRIV", "BODY", "DIAG"];
  const perEntry = 8;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const code = `L-FLT-${String(i).padStart(6, "0")}`;
    const op = ops[i % ops.length];
    const block = `_LF["${code}"] = {
    op_family = "${op}",
    description = ${JSON.stringify(`${op} operação padrão #${i} — tempo nominal`)},
    flat_hours = ${(0.2 + rng() * 4.5).toFixed(2)},
    tier = "${["A", "B", "C"][i % 3]}",
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_LABOR_FLAT_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

async function writeTSB(targetLines, rng, partsN) {
  const path = join(OUT_SERVER, "tsb_index.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Índice TSB / boletim de serviço (fictício).
    Gerado por tools/gen-megadata.mjs
]]

TSB_INDEX = TSB_INDEX or {}
local _TSB = TSB_INDEX
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const perEntry = 10;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const id = `TSB-${String(i).padStart(6, "0")}`;
    const fam = FAMILIES[i % FAMILIES.length];
    const dtc = `G${String((i % 20000) + 1).padStart(5, "0")}`;
    const sku = skuGenMod(i * 13, partsN);
    const vp = `VP-${String((i % 50000) + 1).padStart(6, "0")}`;
    const block = `_TSB["${id}"] = {
    title = ${JSON.stringify(`Boletim ${i}: atualização de torque / calibração`)},
    family = ${fam},
    related_profile = "${vp}",
    related_sku = "${sku}",
    related_dtc = "${dtc}",
    action = ${JSON.stringify(`Aplicar procedimento e inspecionar ${sku}`)},
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_TSB_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

async function writeTorque(targetLines, rng) {
  const path = join(OUT_SERVER, "torque_specs.lua");
  await mkdir(dirname(path), { recursive: true });
  const w = createWriteStream(path, { encoding: "utf8" });
  let lines = 0;
  const header = `--[[
    Especificações de torque (Nm + ângulo opcional) por conjunto.
    Gerado por tools/gen-megadata.mjs
]]

TORQUE_SPECS = TORQUE_SPECS or {}
local _TQ = TORQUE_SPECS
`;
  w.write(header);
  lines += header.split("\n").length - 1;

  const assemblies = ["Motor", "Suspensão", "Freio", "Direção", "Transmissão", "Carroceria"];
  const perEntry = 9;
  const n = Math.floor((targetLines - lines - 6) / perEntry);
  for (let i = 1; i <= n; i++) {
    const id = `TQ-${String(i).padStart(6, "0")}`;
    const asm = assemblies[i % assemblies.length];
    const nm = 8 + ((i * 17) % 180);
    const ang = i % 3 === 0 ? Math.floor(rng() * 90) : "nil";
    const block = `_TQ["${id}"] = {
    assembly = ${JSON.stringify(asm)},
    fastener = ${JSON.stringify(`M${8 + (i % 8)} fine pitch #${i}`)},
    torque_nm = ${nm},
    angle_deg = ${ang === "nil" ? "nil" : ang},
    thread_treatment = "${i % 2 === 0 ? "seco" : "leve óleo"}",
    gen_id = ${i},
}
`;
    w.write(block);
    lines += perEntry;
  }
  w.write(`\nMECHANIC_GEN_TORQUE_COUNT = ${n}\n`);
  lines += 2;
  await new Promise((res, rej) => {
    w.end((e) => (e ? rej(e) : res()));
  });
  return { path, lines };
}

const rng = rnd(0x9e3779b9);

const frac = {
  parts: 0.33,
  dtc: 0.25,
  proc: 0.12,
  veh: 0.08,
  sup: 0.07,
  labor: 0.05,
  tsb: 0.05,
  torque: 0.05,
};

const budgets = {
  parts: Math.floor(TARGET * frac.parts),
  dtc: Math.floor(TARGET * frac.dtc),
  proc: Math.floor(TARGET * frac.proc),
  veh: Math.floor(TARGET * frac.veh),
  sup: Math.floor(TARGET * frac.sup),
  labor: Math.floor(TARGET * frac.labor),
  tsb: Math.floor(TARGET * frac.tsb),
  torque: Math.floor(TARGET * frac.torque),
};

const remainder = TARGET - Object.values(budgets).reduce((a, b) => a + b, 0);
budgets.parts += remainder;

console.log("Alvo de linhas:", TARGET, budgets);

const r1 = await writeParts(budgets.parts, rng);
const r2 = await writeDtc(budgets.dtc, rng, r1.partsN);
const r3 = await writeProcedures(budgets.proc, rng, r1.partsN);
const r4 = await writeVehicles(budgets.veh, rng);
const r5 = await writeSuppliers(budgets.sup, rng);
const r6 = await writeLaborFlat(budgets.labor, rng);
const r7 = await writeTSB(budgets.tsb, rng, r1.partsN);
const r8 = await writeTorque(budgets.torque, rng);

const rows = [r1, r2, r3, r4, r5, r6, r7, r8];
const total = rows.reduce((s, x) => s + x.lines, 0);
console.log("Gerado:");
for (const r of rows) console.log(" ", r.path, r.lines);
console.log("Total linhas (aprox.):", total);

if (total < TARGET * 0.95) {
  console.warn("Aviso: total abaixo de 95% do alvo.");
}
