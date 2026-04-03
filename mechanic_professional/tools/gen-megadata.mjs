#!/usr/bin/env node
/**
 * Gera megabase em ~250+ arquivos Lua (chunks) + bootstrap/finalize.
 * Atualiza meta.xml automaticamente.
 *
 * Uso: node tools/gen-megadata.mjs
 * Variáveis:
 *   TARGET_LINES=251200
 *   CHUNK_FILES=32   (8 domínios × 32 = 256 chunks + 2 = 258 scripts)
 */

import fs from "node:fs";
import { mkdir } from "node:fs/promises";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const ROOT = join(__dirname, "..");
const OUT_SERVER = join(ROOT, "server", "generated");
const META_PATH = join(ROOT, "meta.xml");

const TARGET = Math.max(8000, parseInt(process.env.TARGET_LINES || "252800", 10) || 252800);
const NUM_CHUNK_FILES = Math.max(4, parseInt(process.env.CHUNK_FILES || "32", 10) || 32);

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

const OPS = ["BRK", "ENG", "ELEC", "SUS", "COOL", "DRIV", "BODY", "DIAG"];

const ASSEMBLIES = ["Motor", "Suspensão", "Freio", "Direção", "Transmissão", "Carroceria"];

const MAKERS = ["AstraMotors", "RioVeículos", "NorteAuto", "DeltaMob", "OrionTruck", "SigmaBike"];

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

async function writeChunkFile(relPath, content) {
  const path = join(OUT_SERVER, relPath);
  await mkdir(dirname(path), { recursive: true });
  await fs.promises.writeFile(path, content, "utf8");
}

function rmOldMonoliths() {
  const old = [
    "parts_catalog_bulk.lua",
    "dtc_registry.lua",
    "service_procedures.lua",
    "vehicle_profiles.lua",
    "suppliers_master.lua",
    "labor_flat_rate.lua",
    "tsb_index.lua",
    "torque_specs.lua",
  ];
  for (const f of old) {
    const p = join(OUT_SERVER, f);
    try {
      fs.unlinkSync(p);
    } catch (_) {}
  }
}

async function writeBootstrap() {
  const body = `--[[
    Bootstrap das tabelas globais (chunks preenchem em seguida).
    Gerado por tools/gen-megadata.mjs
]]

PARTS_CATALOG = PARTS_CATALOG or {}
DTC_REGISTRY = DTC_REGISTRY or {}
SERVICE_PROCEDURES = SERVICE_PROCEDURES or {}
VEHICLE_PROFILES = VEHICLE_PROFILES or {}
SUPPLIERS_MASTER = SUPPLIERS_MASTER or {}
LABOR_FLAT_RATE = LABOR_FLAT_RATE or {}
TSB_INDEX = TSB_INDEX or {}
TORQUE_SPECS = TORQUE_SPECS or {}
`;
  await writeChunkFile("bootstrap_megabase.lua", body);
}

async function writeFinalize(counts) {
  const body = `--[[
    Contagens totais após carregar todos os chunks.
]]

MECHANIC_GEN_PARTS_COUNT = ${counts.parts}
MECHANIC_GEN_DTC_COUNT = ${counts.dtc}
MECHANIC_GEN_PROC_COUNT = ${counts.proc}
MECHANIC_GEN_VEHICLE_COUNT = ${counts.veh}
MECHANIC_GEN_SUPPLIERS_COUNT = ${counts.sup}
MECHANIC_GEN_LABOR_FLAT_COUNT = ${counts.labor}
MECHANIC_GEN_TSB_COUNT = ${counts.tsb}
MECHANIC_GEN_TORQUE_COUNT = ${counts.torque}
MECHANIC_GEN_CHUNK_FILES = ${counts.chunkFiles}
`;
  await writeChunkFile("finalize_megabase.lua", body);
}

/**
 * Distribui nTotal entradas em NUM_CHUNK_FILES arquivos.
 * chunkIndex 0..NUM_CHUNK_FILES-1 processa ids where (id-1) % NUM_CHUNK_FILES === chunkIndex
 */
async function writeChunkedParts(budgetLines, rng) {
  const dir = join("chunks", "parts");
  const perEntry = 9;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ parts chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const sku = skuGen(i);
      const fam = FAMILIES[i % FAMILIES.length];
      const rp = 3 + (i % 17);
      const lt = 10 + (i % 120);
      const haz = i % 11 === 0;
      const sup = `SUP-${String((i % 5000) + 1).padStart(6, "0")}`;
      const name = `Peça gerada ${i} — ${["kit", "módulo", "conjunto", "sensor", "atuador", "reforço"][i % 6]} ${(rng() * 1000) | 0}`;
      body += `PARTS_CATALOG["${sku}"] = {
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
    }
    await writeChunkFile(join(dir, `part_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedDtc(budgetLines, rng, partsN) {
  const dir = join("chunks", "dtc");
  const perEntry = 8;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ dtc chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const code = `G${String(i).padStart(5, "0")}`;
      const sub = SUBSYS[i % SUBSYS.length];
      const sev = 1 + (i % 5);
      const sku1 = skuGenMod(i, partsN);
      const sku2 = skuGenMod(i * 7, partsN);
      const procId = Math.min(i % 50000, 49999) + 1;
      const title = `Condição ${sub}-${i}: correlação ${(rng() * 100).toFixed(1)}%`;
      body += `DTC_REGISTRY["${code}"] = {
    title = ${JSON.stringify(title)},
    subsystem = "${sub}",
    severity = ${sev},
    related_skus = { "${sku1}", "${sku2}" },
    notes = "Ver PROC-L1-${String(procId).padStart(5, "0")} e TSB-${String((i % 8000) + 1).padStart(6, "0")}.",
    gen_id = ${i},
}
`;
    }
    await writeChunkFile(join(dir, `dtc_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedProc(budgetLines, rng, partsN) {
  const dir = join("chunks", "procedures");
  const perEntry = 11;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ procedures chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const id = `PROC-L1-${String(i).padStart(5, "0")}`;
      const tier = ["A", "B", "C"][i % 3];
      const est = 15 + (i % 180);
      const sku = skuGenMod(i * 11, partsN);
      body += `SERVICE_PROCEDURES["${id}"] = {
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
    }
    await writeChunkFile(join(dir, `proc_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedVehicles(budgetLines, rng) {
  const dir = join("chunks", "vehicles");
  const perEntry = 8;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ vehicles chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const id = `VP-${String(i).padStart(6, "0")}`;
      const fam = FAMILIES[i % FAMILIES.length].replace("VEHICLE_FAMILY.", "");
      const mk = MAKERS[i % MAKERS.length];
      const supA = `SUP-${String((i % 5000) + 1).padStart(6, "0")}`;
      const supB = `SUP-${String(((i * 3) % 5000) + 1).padStart(6, "0")}`;
      body += `VEHICLE_PROFILES["${id}"] = {
    label = ${JSON.stringify(`${mk} modelo ${(i % 900) + 2000} série ${String.fromCharCode(65 + (i % 26))}`)},
    family = VEHICLE_FAMILY.${fam},
    base_mileage = ${10000 + ((i * 137) % 280000)},
    wear_curve = ${(0.15 + rng() * 0.85).toFixed(4)},
    preferred_supplier_ids = { "${supA}", "${supB}" },
    gen_id = ${i},
}
`;
    }
    await writeChunkFile(join(dir, `veh_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedSuppliers(budgetLines, rng) {
  const dir = join("chunks", "suppliers");
  const perEntry = 9;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ suppliers chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const id = `SUP-${String(i).padStart(6, "0")}`;
      const reg = REGIONS[i % REGIONS.length];
      body += `SUPPLIERS_MASTER["${id}"] = {
    trade_name = ${JSON.stringify(`Distribuidora ${reg} #${i}`)},
    legal_name = ${JSON.stringify(`${reg} Auto Parts LTDA ${i}`)},
    region = "${reg}",
    avg_lead_min = ${12 + (i % 96)},
    rating = ${(3.5 + rng() * 1.4).toFixed(2)},
    payment_terms_days = ${7 * (1 + (i % 8))},
    gen_id = ${i},
}
`;
    }
    await writeChunkFile(join(dir, `sup_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedLabor(budgetLines, rng) {
  const dir = join("chunks", "labor_flat");
  const perEntry = 8;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ labor_flat chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const code = `L-FLT-${String(i).padStart(6, "0")}`;
      const op = OPS[i % OPS.length];
      body += `LABOR_FLAT_RATE["${code}"] = {
    op_family = "${op}",
    description = ${JSON.stringify(`${op} operação padrão #${i} — tempo nominal`)},
    flat_hours = ${(0.2 + rng() * 4.5).toFixed(2)},
    tier = "${["A", "B", "C"][i % 3]}",
    gen_id = ${i},
}
`;
    }
    await writeChunkFile(join(dir, `labor_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedTsb(budgetLines, rng, partsN) {
  const dir = join("chunks", "tsb");
  const perEntry = 10;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ tsb chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const id = `TSB-${String(i).padStart(6, "0")}`;
      const fam = FAMILIES[i % FAMILIES.length];
      const dtc = `G${String((i % 20000) + 1).padStart(5, "0")}`;
      const sku = skuGenMod(i * 13, partsN);
      const vp = `VP-${String((i % 50000) + 1).padStart(6, "0")}`;
      body += `TSB_INDEX["${id}"] = {
    title = ${JSON.stringify(`Boletim ${i}: atualização de torque / calibração`)},
    family = ${fam},
    related_profile = "${vp}",
    related_sku = "${sku}",
    related_dtc = "${dtc}",
    action = ${JSON.stringify(`Aplicar procedimento e inspecionar ${sku}`)},
    gen_id = ${i},
}
`;
    }
    await writeChunkFile(join(dir, `tsb_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

async function writeChunkedTorque(budgetLines, rng) {
  const dir = join("chunks", "torque");
  const perEntry = 9;
  const headerLines = 3;
  const nTotal = Math.floor((budgetLines - headerLines * NUM_CHUNK_FILES) / perEntry);

  for (let chunk = 0; chunk < NUM_CHUNK_FILES; chunk++) {
    let body = `--[[ torque chunk ${chunk + 1}/${NUM_CHUNK_FILES} ]]\n\n`;
    for (let i = chunk + 1; i <= nTotal; i += NUM_CHUNK_FILES) {
      const id = `TQ-${String(i).padStart(6, "0")}`;
      const asm = ASSEMBLIES[i % ASSEMBLIES.length];
      const nm = 8 + ((i * 17) % 180);
      const ang = i % 3 === 0 ? Math.floor(rng() * 90) : "nil";
      body += `TORQUE_SPECS["${id}"] = {
    assembly = ${JSON.stringify(asm)},
    fastener = ${JSON.stringify(`M${8 + (i % 8)} fine pitch #${i}`)},
    torque_nm = ${nm},
    angle_deg = ${ang === "nil" ? "nil" : ang},
    thread_treatment = "${i % 2 === 0 ? "seco" : "leve óleo"}",
    gen_id = ${i},
}
`;
    }
    await writeChunkFile(join(dir, `torque_${String(chunk + 1).padStart(3, "0")}.lua`), body);
  }
  return { lines: nTotal * perEntry + headerLines * NUM_CHUNK_FILES, count: nTotal };
}

function buildMetaScriptList() {
  const lines = [];
  lines.push(`    <script src="server/generated/bootstrap_megabase.lua" type="server" cache="false" />`);

  const nameFn = {
    parts: (n) => `part_${n}.lua`,
    dtc: (n) => `dtc_${n}.lua`,
    proc: (n) => `proc_${n}.lua`,
    veh: (n) => `veh_${n}.lua`,
    sup: (n) => `sup_${n}.lua`,
    labor: (n) => `labor_${n}.lua`,
    tsb: (n) => `tsb_${n}.lua`,
    torque: (n) => `torque_${n}.lua`,
  };

  const folders = [
    ["chunks/parts", nameFn.parts],
    ["chunks/dtc", nameFn.dtc],
    ["chunks/procedures", nameFn.proc],
    ["chunks/vehicles", nameFn.veh],
    ["chunks/suppliers", nameFn.sup],
    ["chunks/labor_flat", nameFn.labor],
    ["chunks/tsb", nameFn.tsb],
    ["chunks/torque", nameFn.torque],
  ];

  for (const [folder, fn] of folders) {
    for (let c = 1; c <= NUM_CHUNK_FILES; c++) {
      const num = String(c).padStart(3, "0");
      lines.push(`    <script src="server/generated/${folder}/${fn(num)}" type="server" cache="false" />`);
    }
  }

  lines.push(`    <script src="server/generated/finalize_megabase.lua" type="server" cache="false" />`);
  return lines.join("\n");
}

function writeMetaXml() {
  const generatedBlock = buildMetaScriptList();
  const xml = `<meta>
    <info
        author="MechanicProfessional"
        name="MechanicProfessional"
        description="Oficina avançada: estoque com reservas, FSM de OS, diagnóstico multi-sensor, painel DX e trilha de auditoria."
        version="1.0.0"
        type="script"
    />
    <oop>true</oop>
    <min_mta_version client="1.5.9" server="1.5.9" />

    <script src="shared/catalog.lua" type="shared" cache="false" />
    <script src="shared/constants.lua" type="shared" cache="false" />

${generatedBlock}

    <script src="server/audit_log.lua" type="server" cache="false" />
    <script src="server/reference_library.lua" type="server" cache="false" />
    <script src="server/inventory_engine.lua" type="server" cache="false" />
    <script src="server/diagnostics_engine.lua" type="server" cache="false" />
    <script src="server/workshop_fsm.lua" type="server" cache="false" />
    <script src="server/demo_mode.lua" type="server" cache="false" />
    <script src="server/core.lua" type="server" cache="false" />

    <script src="client/panel_dx.lua" type="client" cache="false" />
    <script src="client/demo_cinematic.lua" type="client" cache="false" />
</meta>
`;
  fs.writeFileSync(META_PATH, xml, "utf8");
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
budgets.parts += TARGET - Object.values(budgets).reduce((a, b) => a + b, 0);

console.log("Alvo:", TARGET, "chunks por domínio:", NUM_CHUNK_FILES, "→", 8 * NUM_CHUNK_FILES + 2, "scripts servidor");
console.log("Budgets:", budgets);

await mkdir(OUT_SERVER, { recursive: true });
rmOldMonoliths();

await writeBootstrap();

const r1 = await writeChunkedParts(budgets.parts, rng);
const r2 = await writeChunkedDtc(budgets.dtc, rng, r1.count);
const r3 = await writeChunkedProc(budgets.proc, rng, r1.count);
const r4 = await writeChunkedVehicles(budgets.veh, rng);
const r5 = await writeChunkedSuppliers(budgets.sup, rng);
const r6 = await writeChunkedLabor(budgets.labor, rng);
const r7 = await writeChunkedTsb(budgets.tsb, rng, r1.count);
const r8 = await writeChunkedTorque(budgets.torque, rng);

await writeFinalize({
  parts: r1.count,
  dtc: r2.count,
  proc: r3.count,
  veh: r4.count,
  sup: r5.count,
  labor: r6.count,
  tsb: r7.count,
  torque: r8.count,
  chunkFiles: NUM_CHUNK_FILES,
});

writeMetaXml();

const totalLines = r1.lines + r2.lines + r3.lines + r4.lines + r5.lines + r6.lines + r7.lines + r8.lines;
console.log("Contagens:", {
  parts: r1.count,
  dtc: r2.count,
  proc: r3.count,
  vehicles: r4.count,
  suppliers: r5.count,
  labor: r6.count,
  tsb: r7.count,
  torque: r8.count,
});
console.log("Linhas Lua geradas (aprox.):", totalLines);
console.log("meta.xml atualizado. Scripts servidor (gerados):", 8 * NUM_CHUNK_FILES + 2);
