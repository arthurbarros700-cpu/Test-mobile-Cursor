--[[
    Biblioteca de procedimentos de serviço (checklists).
    Gerado por tools/gen-megadata.mjs
]]

SERVICE_PROCEDURES = SERVICE_PROCEDURES or {}
local _SP = SERVICE_PROCEDURES
_SP["PROC-L1-00001"] = {
    title = "Serviço nível B #1",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000002 se desvio > 2.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000002" },
    gen_id = 1,
}
_SP["PROC-L1-00002"] = {
    title = "Serviço nível C #2",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000003 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000003" },
    gen_id = 2,
}
_SP["PROC-L1-00003"] = {
    title = "Serviço nível A #3",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000004 se desvio > 4.20",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000004" },
    gen_id = 3,
}
_SP["PROC-L1-00004"] = {
    title = "Serviço nível B #4",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000005 se desvio > 1.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000005" },
    gen_id = 4,
}
_SP["PROC-L1-00005"] = {
    title = "Serviço nível C #5",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000006 se desvio > 4.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000006" },
    gen_id = 5,
}
_SP["PROC-L1-00006"] = {
    title = "Serviço nível A #6",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000007 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000007" },
    gen_id = 6,
}
_SP["PROC-L1-00007"] = {
    title = "Serviço nível B #7",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000008 se desvio > 4.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000008" },
    gen_id = 7,
}
_SP["PROC-L1-00008"] = {
    title = "Serviço nível C #8",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000009 se desvio > 0.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000009" },
    gen_id = 8,
}
_SP["PROC-L1-00009"] = {
    title = "Serviço nível A #9",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000010 se desvio > 2.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000010" },
    gen_id = 9,
}
_SP["PROC-L1-00010"] = {
    title = "Serviço nível B #10",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000011 se desvio > 0.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000011" },
    gen_id = 10,
}
_SP["PROC-L1-00011"] = {
    title = "Serviço nível C #11",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000012 se desvio > 0.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000012" },
    gen_id = 11,
}
_SP["PROC-L1-00012"] = {
    title = "Serviço nível A #12",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000013 se desvio > 2.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000013" },
    gen_id = 12,
}
_SP["PROC-L1-00013"] = {
    title = "Serviço nível B #13",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000014 se desvio > 1.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000014" },
    gen_id = 13,
}
_SP["PROC-L1-00014"] = {
    title = "Serviço nível C #14",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000015 se desvio > 4.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000015" },
    gen_id = 14,
}
_SP["PROC-L1-00015"] = {
    title = "Serviço nível A #15",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000016 se desvio > 2.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000016" },
    gen_id = 15,
}
_SP["PROC-L1-00016"] = {
    title = "Serviço nível B #16",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000017 se desvio > 4.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000017" },
    gen_id = 16,
}
_SP["PROC-L1-00017"] = {
    title = "Serviço nível C #17",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000018 se desvio > 2.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000018" },
    gen_id = 17,
}
_SP["PROC-L1-00018"] = {
    title = "Serviço nível A #18",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000019 se desvio > 2.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000019" },
    gen_id = 18,
}
_SP["PROC-L1-00019"] = {
    title = "Serviço nível B #19",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000020 se desvio > 0.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000020" },
    gen_id = 19,
}
_SP["PROC-L1-00020"] = {
    title = "Serviço nível C #20",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000021 se desvio > 0.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000021" },
    gen_id = 20,
}
_SP["PROC-L1-00021"] = {
    title = "Serviço nível A #21",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000022 se desvio > 4.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000022" },
    gen_id = 21,
}
_SP["PROC-L1-00022"] = {
    title = "Serviço nível B #22",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000023 se desvio > 0.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000023" },
    gen_id = 22,
}
_SP["PROC-L1-00023"] = {
    title = "Serviço nível C #23",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000024 se desvio > 4.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000024" },
    gen_id = 23,
}
_SP["PROC-L1-00024"] = {
    title = "Serviço nível A #24",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000025 se desvio > 3.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000025" },
    gen_id = 24,
}
_SP["PROC-L1-00025"] = {
    title = "Serviço nível B #25",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000026 se desvio > 3.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000026" },
    gen_id = 25,
}
_SP["PROC-L1-00026"] = {
    title = "Serviço nível C #26",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000027 se desvio > 4.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000027" },
    gen_id = 26,
}
_SP["PROC-L1-00027"] = {
    title = "Serviço nível A #27",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000028 se desvio > 2.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000028" },
    gen_id = 27,
}
_SP["PROC-L1-00028"] = {
    title = "Serviço nível B #28",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000029 se desvio > 3.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000029" },
    gen_id = 28,
}
_SP["PROC-L1-00029"] = {
    title = "Serviço nível C #29",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000030 se desvio > 3.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000030" },
    gen_id = 29,
}
_SP["PROC-L1-00030"] = {
    title = "Serviço nível A #30",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000031 se desvio > 4.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000031" },
    gen_id = 30,
}
_SP["PROC-L1-00031"] = {
    title = "Serviço nível B #31",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000032 se desvio > 1.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000032" },
    gen_id = 31,
}
_SP["PROC-L1-00032"] = {
    title = "Serviço nível C #32",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000033 se desvio > 0.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000033" },
    gen_id = 32,
}
_SP["PROC-L1-00033"] = {
    title = "Serviço nível A #33",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000034 se desvio > 3.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000034" },
    gen_id = 33,
}
_SP["PROC-L1-00034"] = {
    title = "Serviço nível B #34",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000035 se desvio > 1.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000035" },
    gen_id = 34,
}
_SP["PROC-L1-00035"] = {
    title = "Serviço nível C #35",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000036 se desvio > 3.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000036" },
    gen_id = 35,
}
_SP["PROC-L1-00036"] = {
    title = "Serviço nível A #36",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000037 se desvio > 2.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000037" },
    gen_id = 36,
}
_SP["PROC-L1-00037"] = {
    title = "Serviço nível B #37",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000038 se desvio > 2.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000038" },
    gen_id = 37,
}
_SP["PROC-L1-00038"] = {
    title = "Serviço nível C #38",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000039 se desvio > 1.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000039" },
    gen_id = 38,
}
_SP["PROC-L1-00039"] = {
    title = "Serviço nível A #39",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000040 se desvio > 2.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000040" },
    gen_id = 39,
}
_SP["PROC-L1-00040"] = {
    title = "Serviço nível B #40",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000041 se desvio > 4.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000041" },
    gen_id = 40,
}
_SP["PROC-L1-00041"] = {
    title = "Serviço nível C #41",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000042 se desvio > 1.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000042" },
    gen_id = 41,
}
_SP["PROC-L1-00042"] = {
    title = "Serviço nível A #42",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000043 se desvio > 1.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000043" },
    gen_id = 42,
}
_SP["PROC-L1-00043"] = {
    title = "Serviço nível B #43",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000044 se desvio > 4.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000044" },
    gen_id = 43,
}
_SP["PROC-L1-00044"] = {
    title = "Serviço nível C #44",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000045 se desvio > 2.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000045" },
    gen_id = 44,
}
_SP["PROC-L1-00045"] = {
    title = "Serviço nível A #45",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000046 se desvio > 3.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000046" },
    gen_id = 45,
}
_SP["PROC-L1-00046"] = {
    title = "Serviço nível B #46",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000047 se desvio > 0.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000047" },
    gen_id = 46,
}
_SP["PROC-L1-00047"] = {
    title = "Serviço nível C #47",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000048 se desvio > 0.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000048" },
    gen_id = 47,
}
_SP["PROC-L1-00048"] = {
    title = "Serviço nível A #48",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000049 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000049" },
    gen_id = 48,
}
_SP["PROC-L1-00049"] = {
    title = "Serviço nível B #49",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000050 se desvio > 2.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000050" },
    gen_id = 49,
}
_SP["PROC-L1-00050"] = {
    title = "Serviço nível C #50",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000051 se desvio > 2.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000051" },
    gen_id = 50,
}
_SP["PROC-L1-00051"] = {
    title = "Serviço nível A #51",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000052 se desvio > 3.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000052" },
    gen_id = 51,
}
_SP["PROC-L1-00052"] = {
    title = "Serviço nível B #52",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000053 se desvio > 2.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000053" },
    gen_id = 52,
}
_SP["PROC-L1-00053"] = {
    title = "Serviço nível C #53",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000054 se desvio > 0.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000054" },
    gen_id = 53,
}
_SP["PROC-L1-00054"] = {
    title = "Serviço nível A #54",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000055 se desvio > 2.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000055" },
    gen_id = 54,
}
_SP["PROC-L1-00055"] = {
    title = "Serviço nível B #55",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000056 se desvio > 0.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000056" },
    gen_id = 55,
}
_SP["PROC-L1-00056"] = {
    title = "Serviço nível C #56",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000057 se desvio > 3.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000057" },
    gen_id = 56,
}
_SP["PROC-L1-00057"] = {
    title = "Serviço nível A #57",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000058 se desvio > 4.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000058" },
    gen_id = 57,
}
_SP["PROC-L1-00058"] = {
    title = "Serviço nível B #58",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000059 se desvio > 0.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000059" },
    gen_id = 58,
}
_SP["PROC-L1-00059"] = {
    title = "Serviço nível C #59",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000060 se desvio > 0.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000060" },
    gen_id = 59,
}
_SP["PROC-L1-00060"] = {
    title = "Serviço nível A #60",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000061 se desvio > 4.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000061" },
    gen_id = 60,
}
_SP["PROC-L1-00061"] = {
    title = "Serviço nível B #61",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000062 se desvio > 0.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000062" },
    gen_id = 61,
}
_SP["PROC-L1-00062"] = {
    title = "Serviço nível C #62",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000063 se desvio > 1.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000063" },
    gen_id = 62,
}
_SP["PROC-L1-00063"] = {
    title = "Serviço nível A #63",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000064 se desvio > 0.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000064" },
    gen_id = 63,
}
_SP["PROC-L1-00064"] = {
    title = "Serviço nível B #64",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000065 se desvio > 3.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000065" },
    gen_id = 64,
}
_SP["PROC-L1-00065"] = {
    title = "Serviço nível C #65",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000066 se desvio > 0.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000066" },
    gen_id = 65,
}
_SP["PROC-L1-00066"] = {
    title = "Serviço nível A #66",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000067 se desvio > 3.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000067" },
    gen_id = 66,
}
_SP["PROC-L1-00067"] = {
    title = "Serviço nível B #67",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000068 se desvio > 4.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000068" },
    gen_id = 67,
}
_SP["PROC-L1-00068"] = {
    title = "Serviço nível C #68",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000069 se desvio > 4.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000069" },
    gen_id = 68,
}
_SP["PROC-L1-00069"] = {
    title = "Serviço nível A #69",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000070 se desvio > 1.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000070" },
    gen_id = 69,
}
_SP["PROC-L1-00070"] = {
    title = "Serviço nível B #70",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000071 se desvio > 2.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000071" },
    gen_id = 70,
}
_SP["PROC-L1-00071"] = {
    title = "Serviço nível C #71",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000072 se desvio > 2.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000072" },
    gen_id = 71,
}
_SP["PROC-L1-00072"] = {
    title = "Serviço nível A #72",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000073 se desvio > 1.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000073" },
    gen_id = 72,
}
_SP["PROC-L1-00073"] = {
    title = "Serviço nível B #73",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000074 se desvio > 2.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000074" },
    gen_id = 73,
}
_SP["PROC-L1-00074"] = {
    title = "Serviço nível C #74",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000075 se desvio > 4.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000075" },
    gen_id = 74,
}
_SP["PROC-L1-00075"] = {
    title = "Serviço nível A #75",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000076 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000076" },
    gen_id = 75,
}
_SP["PROC-L1-00076"] = {
    title = "Serviço nível B #76",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000077 se desvio > 3.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000077" },
    gen_id = 76,
}
_SP["PROC-L1-00077"] = {
    title = "Serviço nível C #77",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000078 se desvio > 4.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000078" },
    gen_id = 77,
}
_SP["PROC-L1-00078"] = {
    title = "Serviço nível A #78",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000079 se desvio > 3.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000079" },
    gen_id = 78,
}
_SP["PROC-L1-00079"] = {
    title = "Serviço nível B #79",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000080 se desvio > 1.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000080" },
    gen_id = 79,
}
_SP["PROC-L1-00080"] = {
    title = "Serviço nível C #80",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000081 se desvio > 3.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000081" },
    gen_id = 80,
}
_SP["PROC-L1-00081"] = {
    title = "Serviço nível A #81",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000082 se desvio > 1.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000082" },
    gen_id = 81,
}
_SP["PROC-L1-00082"] = {
    title = "Serviço nível B #82",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000083 se desvio > 1.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000083" },
    gen_id = 82,
}
_SP["PROC-L1-00083"] = {
    title = "Serviço nível C #83",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000084 se desvio > 3.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000084" },
    gen_id = 83,
}
_SP["PROC-L1-00084"] = {
    title = "Serviço nível A #84",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000085 se desvio > 0.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000085" },
    gen_id = 84,
}
_SP["PROC-L1-00085"] = {
    title = "Serviço nível B #85",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000086 se desvio > 3.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000086" },
    gen_id = 85,
}
_SP["PROC-L1-00086"] = {
    title = "Serviço nível C #86",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000087 se desvio > 2.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000087" },
    gen_id = 86,
}
_SP["PROC-L1-00087"] = {
    title = "Serviço nível A #87",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000088 se desvio > 0.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000088" },
    gen_id = 87,
}
_SP["PROC-L1-00088"] = {
    title = "Serviço nível B #88",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000089 se desvio > 2.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000089" },
    gen_id = 88,
}
_SP["PROC-L1-00089"] = {
    title = "Serviço nível C #89",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000090 se desvio > 1.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000090" },
    gen_id = 89,
}
_SP["PROC-L1-00090"] = {
    title = "Serviço nível A #90",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000091 se desvio > 3.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000091" },
    gen_id = 90,
}
_SP["PROC-L1-00091"] = {
    title = "Serviço nível B #91",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000092 se desvio > 1.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000092" },
    gen_id = 91,
}
_SP["PROC-L1-00092"] = {
    title = "Serviço nível C #92",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000093 se desvio > 2.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000093" },
    gen_id = 92,
}
_SP["PROC-L1-00093"] = {
    title = "Serviço nível A #93",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000094 se desvio > 3.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000094" },
    gen_id = 93,
}
_SP["PROC-L1-00094"] = {
    title = "Serviço nível B #94",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000095 se desvio > 3.20",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000095" },
    gen_id = 94,
}
_SP["PROC-L1-00095"] = {
    title = "Serviço nível C #95",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000096 se desvio > 0.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000096" },
    gen_id = 95,
}
_SP["PROC-L1-00096"] = {
    title = "Serviço nível A #96",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000097 se desvio > 4.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000097" },
    gen_id = 96,
}
_SP["PROC-L1-00097"] = {
    title = "Serviço nível B #97",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000098 se desvio > 0.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000098" },
    gen_id = 97,
}
_SP["PROC-L1-00098"] = {
    title = "Serviço nível C #98",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000099 se desvio > 1.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000099" },
    gen_id = 98,
}
_SP["PROC-L1-00099"] = {
    title = "Serviço nível A #99",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000100 se desvio > 4.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000100" },
    gen_id = 99,
}
_SP["PROC-L1-00100"] = {
    title = "Serviço nível B #100",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000101 se desvio > 2.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000101" },
    gen_id = 100,
}
_SP["PROC-L1-00101"] = {
    title = "Serviço nível C #101",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000102 se desvio > 1.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000102" },
    gen_id = 101,
}
_SP["PROC-L1-00102"] = {
    title = "Serviço nível A #102",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000103 se desvio > 0.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000103" },
    gen_id = 102,
}
_SP["PROC-L1-00103"] = {
    title = "Serviço nível B #103",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000104 se desvio > 3.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000104" },
    gen_id = 103,
}
_SP["PROC-L1-00104"] = {
    title = "Serviço nível C #104",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000105 se desvio > 4.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000105" },
    gen_id = 104,
}
_SP["PROC-L1-00105"] = {
    title = "Serviço nível A #105",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000106 se desvio > 0.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000106" },
    gen_id = 105,
}
_SP["PROC-L1-00106"] = {
    title = "Serviço nível B #106",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000107 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000107" },
    gen_id = 106,
}
_SP["PROC-L1-00107"] = {
    title = "Serviço nível C #107",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000108 se desvio > 3.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000108" },
    gen_id = 107,
}
_SP["PROC-L1-00108"] = {
    title = "Serviço nível A #108",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000109 se desvio > 1.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000109" },
    gen_id = 108,
}
_SP["PROC-L1-00109"] = {
    title = "Serviço nível B #109",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000110 se desvio > 2.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000110" },
    gen_id = 109,
}
_SP["PROC-L1-00110"] = {
    title = "Serviço nível C #110",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000111 se desvio > 3.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000111" },
    gen_id = 110,
}
_SP["PROC-L1-00111"] = {
    title = "Serviço nível A #111",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000112 se desvio > 4.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000112" },
    gen_id = 111,
}
_SP["PROC-L1-00112"] = {
    title = "Serviço nível B #112",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000113 se desvio > 3.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000113" },
    gen_id = 112,
}
_SP["PROC-L1-00113"] = {
    title = "Serviço nível C #113",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000114 se desvio > 1.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000114" },
    gen_id = 113,
}
_SP["PROC-L1-00114"] = {
    title = "Serviço nível A #114",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000115 se desvio > 0.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000115" },
    gen_id = 114,
}
_SP["PROC-L1-00115"] = {
    title = "Serviço nível B #115",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000116 se desvio > 0.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000116" },
    gen_id = 115,
}
_SP["PROC-L1-00116"] = {
    title = "Serviço nível C #116",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000117 se desvio > 1.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000117" },
    gen_id = 116,
}
_SP["PROC-L1-00117"] = {
    title = "Serviço nível A #117",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000118 se desvio > 3.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000118" },
    gen_id = 117,
}
_SP["PROC-L1-00118"] = {
    title = "Serviço nível B #118",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000119 se desvio > 2.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000119" },
    gen_id = 118,
}
_SP["PROC-L1-00119"] = {
    title = "Serviço nível C #119",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000120 se desvio > 0.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000120" },
    gen_id = 119,
}
_SP["PROC-L1-00120"] = {
    title = "Serviço nível A #120",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000121 se desvio > 4.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000121" },
    gen_id = 120,
}
_SP["PROC-L1-00121"] = {
    title = "Serviço nível B #121",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000122 se desvio > 4.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000122" },
    gen_id = 121,
}
_SP["PROC-L1-00122"] = {
    title = "Serviço nível C #122",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000123 se desvio > 0.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000123" },
    gen_id = 122,
}
_SP["PROC-L1-00123"] = {
    title = "Serviço nível A #123",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000124 se desvio > 2.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000124" },
    gen_id = 123,
}
_SP["PROC-L1-00124"] = {
    title = "Serviço nível B #124",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000125 se desvio > 4.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000125" },
    gen_id = 124,
}
_SP["PROC-L1-00125"] = {
    title = "Serviço nível C #125",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000126 se desvio > 4.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000126" },
    gen_id = 125,
}
_SP["PROC-L1-00126"] = {
    title = "Serviço nível A #126",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000127 se desvio > 2.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000127" },
    gen_id = 126,
}
_SP["PROC-L1-00127"] = {
    title = "Serviço nível B #127",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000128 se desvio > 4.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000128" },
    gen_id = 127,
}
_SP["PROC-L1-00128"] = {
    title = "Serviço nível C #128",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000129 se desvio > 0.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000129" },
    gen_id = 128,
}
_SP["PROC-L1-00129"] = {
    title = "Serviço nível A #129",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000130 se desvio > 3.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000130" },
    gen_id = 129,
}
_SP["PROC-L1-00130"] = {
    title = "Serviço nível B #130",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000131 se desvio > 2.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000131" },
    gen_id = 130,
}
_SP["PROC-L1-00131"] = {
    title = "Serviço nível C #131",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000132 se desvio > 2.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000132" },
    gen_id = 131,
}
_SP["PROC-L1-00132"] = {
    title = "Serviço nível A #132",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000133 se desvio > 2.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000133" },
    gen_id = 132,
}
_SP["PROC-L1-00133"] = {
    title = "Serviço nível B #133",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000134 se desvio > 0.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000134" },
    gen_id = 133,
}
_SP["PROC-L1-00134"] = {
    title = "Serviço nível C #134",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000135 se desvio > 1.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000135" },
    gen_id = 134,
}
_SP["PROC-L1-00135"] = {
    title = "Serviço nível A #135",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000136 se desvio > 4.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000136" },
    gen_id = 135,
}
_SP["PROC-L1-00136"] = {
    title = "Serviço nível B #136",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000137 se desvio > 2.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000137" },
    gen_id = 136,
}
_SP["PROC-L1-00137"] = {
    title = "Serviço nível C #137",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000138 se desvio > 4.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000138" },
    gen_id = 137,
}
_SP["PROC-L1-00138"] = {
    title = "Serviço nível A #138",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000139 se desvio > 1.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000139" },
    gen_id = 138,
}
_SP["PROC-L1-00139"] = {
    title = "Serviço nível B #139",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000140 se desvio > 1.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000140" },
    gen_id = 139,
}
_SP["PROC-L1-00140"] = {
    title = "Serviço nível C #140",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000141 se desvio > 4.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000141" },
    gen_id = 140,
}
_SP["PROC-L1-00141"] = {
    title = "Serviço nível A #141",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000142 se desvio > 3.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000142" },
    gen_id = 141,
}
_SP["PROC-L1-00142"] = {
    title = "Serviço nível B #142",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000143 se desvio > 2.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000143" },
    gen_id = 142,
}
_SP["PROC-L1-00143"] = {
    title = "Serviço nível C #143",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000144 se desvio > 3.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000144" },
    gen_id = 143,
}
_SP["PROC-L1-00144"] = {
    title = "Serviço nível A #144",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000145 se desvio > 3.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000145" },
    gen_id = 144,
}
_SP["PROC-L1-00145"] = {
    title = "Serviço nível B #145",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000146 se desvio > 3.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000146" },
    gen_id = 145,
}
_SP["PROC-L1-00146"] = {
    title = "Serviço nível C #146",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000147 se desvio > 4.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000147" },
    gen_id = 146,
}
_SP["PROC-L1-00147"] = {
    title = "Serviço nível A #147",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000148 se desvio > 1.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000148" },
    gen_id = 147,
}
_SP["PROC-L1-00148"] = {
    title = "Serviço nível B #148",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000149 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000149" },
    gen_id = 148,
}
_SP["PROC-L1-00149"] = {
    title = "Serviço nível C #149",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000150 se desvio > 1.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000150" },
    gen_id = 149,
}
_SP["PROC-L1-00150"] = {
    title = "Serviço nível A #150",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000151 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000151" },
    gen_id = 150,
}
_SP["PROC-L1-00151"] = {
    title = "Serviço nível B #151",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000152 se desvio > 3.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000152" },
    gen_id = 151,
}
_SP["PROC-L1-00152"] = {
    title = "Serviço nível C #152",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000153 se desvio > 2.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000153" },
    gen_id = 152,
}
_SP["PROC-L1-00153"] = {
    title = "Serviço nível A #153",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000154 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000154" },
    gen_id = 153,
}
_SP["PROC-L1-00154"] = {
    title = "Serviço nível B #154",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000155 se desvio > 0.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000155" },
    gen_id = 154,
}
_SP["PROC-L1-00155"] = {
    title = "Serviço nível C #155",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000156 se desvio > 1.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000156" },
    gen_id = 155,
}
_SP["PROC-L1-00156"] = {
    title = "Serviço nível A #156",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000157 se desvio > 3.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000157" },
    gen_id = 156,
}
_SP["PROC-L1-00157"] = {
    title = "Serviço nível B #157",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000158 se desvio > 3.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000158" },
    gen_id = 157,
}
_SP["PROC-L1-00158"] = {
    title = "Serviço nível C #158",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000159 se desvio > 1.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000159" },
    gen_id = 158,
}
_SP["PROC-L1-00159"] = {
    title = "Serviço nível A #159",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000160 se desvio > 2.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000160" },
    gen_id = 159,
}
_SP["PROC-L1-00160"] = {
    title = "Serviço nível B #160",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000161 se desvio > 3.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000161" },
    gen_id = 160,
}
_SP["PROC-L1-00161"] = {
    title = "Serviço nível C #161",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000162 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000162" },
    gen_id = 161,
}
_SP["PROC-L1-00162"] = {
    title = "Serviço nível A #162",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000163 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000163" },
    gen_id = 162,
}
_SP["PROC-L1-00163"] = {
    title = "Serviço nível B #163",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000164 se desvio > 4.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000164" },
    gen_id = 163,
}
_SP["PROC-L1-00164"] = {
    title = "Serviço nível C #164",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000165 se desvio > 1.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000165" },
    gen_id = 164,
}
_SP["PROC-L1-00165"] = {
    title = "Serviço nível A #165",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000166 se desvio > 2.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000166" },
    gen_id = 165,
}
_SP["PROC-L1-00166"] = {
    title = "Serviço nível B #166",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000167 se desvio > 0.94",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000167" },
    gen_id = 166,
}
_SP["PROC-L1-00167"] = {
    title = "Serviço nível C #167",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000168 se desvio > 3.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000168" },
    gen_id = 167,
}
_SP["PROC-L1-00168"] = {
    title = "Serviço nível A #168",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000169 se desvio > 1.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000169" },
    gen_id = 168,
}
_SP["PROC-L1-00169"] = {
    title = "Serviço nível B #169",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000170 se desvio > 3.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000170" },
    gen_id = 169,
}
_SP["PROC-L1-00170"] = {
    title = "Serviço nível C #170",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000171 se desvio > 4.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000171" },
    gen_id = 170,
}
_SP["PROC-L1-00171"] = {
    title = "Serviço nível A #171",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000172 se desvio > 3.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000172" },
    gen_id = 171,
}
_SP["PROC-L1-00172"] = {
    title = "Serviço nível B #172",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000173 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000173" },
    gen_id = 172,
}
_SP["PROC-L1-00173"] = {
    title = "Serviço nível C #173",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000174 se desvio > 2.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000174" },
    gen_id = 173,
}
_SP["PROC-L1-00174"] = {
    title = "Serviço nível A #174",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000175 se desvio > 3.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000175" },
    gen_id = 174,
}
_SP["PROC-L1-00175"] = {
    title = "Serviço nível B #175",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000176 se desvio > 2.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000176" },
    gen_id = 175,
}
_SP["PROC-L1-00176"] = {
    title = "Serviço nível C #176",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000177 se desvio > 3.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000177" },
    gen_id = 176,
}
_SP["PROC-L1-00177"] = {
    title = "Serviço nível A #177",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000178 se desvio > 2.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000178" },
    gen_id = 177,
}
_SP["PROC-L1-00178"] = {
    title = "Serviço nível B #178",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000179 se desvio > 0.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000179" },
    gen_id = 178,
}
_SP["PROC-L1-00179"] = {
    title = "Serviço nível C #179",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000180 se desvio > 0.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000180" },
    gen_id = 179,
}
_SP["PROC-L1-00180"] = {
    title = "Serviço nível A #180",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000181 se desvio > 0.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000181" },
    gen_id = 180,
}
_SP["PROC-L1-00181"] = {
    title = "Serviço nível B #181",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000182 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000182" },
    gen_id = 181,
}
_SP["PROC-L1-00182"] = {
    title = "Serviço nível C #182",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000183 se desvio > 0.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000183" },
    gen_id = 182,
}
_SP["PROC-L1-00183"] = {
    title = "Serviço nível A #183",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000184 se desvio > 4.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000184" },
    gen_id = 183,
}
_SP["PROC-L1-00184"] = {
    title = "Serviço nível B #184",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000185 se desvio > 0.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000185" },
    gen_id = 184,
}
_SP["PROC-L1-00185"] = {
    title = "Serviço nível C #185",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000186 se desvio > 0.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000186" },
    gen_id = 185,
}
_SP["PROC-L1-00186"] = {
    title = "Serviço nível A #186",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000187 se desvio > 3.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000187" },
    gen_id = 186,
}
_SP["PROC-L1-00187"] = {
    title = "Serviço nível B #187",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000188 se desvio > 1.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000188" },
    gen_id = 187,
}
_SP["PROC-L1-00188"] = {
    title = "Serviço nível C #188",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000189 se desvio > 4.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000189" },
    gen_id = 188,
}
_SP["PROC-L1-00189"] = {
    title = "Serviço nível A #189",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000190 se desvio > 0.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000190" },
    gen_id = 189,
}
_SP["PROC-L1-00190"] = {
    title = "Serviço nível B #190",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000191 se desvio > 3.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000191" },
    gen_id = 190,
}
_SP["PROC-L1-00191"] = {
    title = "Serviço nível C #191",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000192 se desvio > 4.94",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000192" },
    gen_id = 191,
}
_SP["PROC-L1-00192"] = {
    title = "Serviço nível A #192",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000193 se desvio > 4.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000193" },
    gen_id = 192,
}
_SP["PROC-L1-00193"] = {
    title = "Serviço nível B #193",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000194 se desvio > 2.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000194" },
    gen_id = 193,
}
_SP["PROC-L1-00194"] = {
    title = "Serviço nível C #194",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000195 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000195" },
    gen_id = 194,
}
_SP["PROC-L1-00195"] = {
    title = "Serviço nível A #195",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000196 se desvio > 2.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000196" },
    gen_id = 195,
}
_SP["PROC-L1-00196"] = {
    title = "Serviço nível B #196",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000197 se desvio > 3.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000197" },
    gen_id = 196,
}
_SP["PROC-L1-00197"] = {
    title = "Serviço nível C #197",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000198 se desvio > 1.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000198" },
    gen_id = 197,
}
_SP["PROC-L1-00198"] = {
    title = "Serviço nível A #198",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000199 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000199" },
    gen_id = 198,
}
_SP["PROC-L1-00199"] = {
    title = "Serviço nível B #199",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000200 se desvio > 1.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000200" },
    gen_id = 199,
}
_SP["PROC-L1-00200"] = {
    title = "Serviço nível C #200",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000201 se desvio > 1.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000201" },
    gen_id = 200,
}
_SP["PROC-L1-00201"] = {
    title = "Serviço nível A #201",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000202 se desvio > 1.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000202" },
    gen_id = 201,
}
_SP["PROC-L1-00202"] = {
    title = "Serviço nível B #202",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000203 se desvio > 2.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000203" },
    gen_id = 202,
}
_SP["PROC-L1-00203"] = {
    title = "Serviço nível C #203",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000204 se desvio > 0.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000204" },
    gen_id = 203,
}
_SP["PROC-L1-00204"] = {
    title = "Serviço nível A #204",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000205 se desvio > 4.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000205" },
    gen_id = 204,
}
_SP["PROC-L1-00205"] = {
    title = "Serviço nível B #205",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000206 se desvio > 1.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000206" },
    gen_id = 205,
}
_SP["PROC-L1-00206"] = {
    title = "Serviço nível C #206",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000207 se desvio > 1.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000207" },
    gen_id = 206,
}
_SP["PROC-L1-00207"] = {
    title = "Serviço nível A #207",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000208 se desvio > 1.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000208" },
    gen_id = 207,
}
_SP["PROC-L1-00208"] = {
    title = "Serviço nível B #208",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000209 se desvio > 3.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000209" },
    gen_id = 208,
}
_SP["PROC-L1-00209"] = {
    title = "Serviço nível C #209",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000210 se desvio > 0.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000210" },
    gen_id = 209,
}
_SP["PROC-L1-00210"] = {
    title = "Serviço nível A #210",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000211 se desvio > 3.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000211" },
    gen_id = 210,
}
_SP["PROC-L1-00211"] = {
    title = "Serviço nível B #211",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000212 se desvio > 4.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000212" },
    gen_id = 211,
}
_SP["PROC-L1-00212"] = {
    title = "Serviço nível C #212",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000213 se desvio > 3.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000213" },
    gen_id = 212,
}
_SP["PROC-L1-00213"] = {
    title = "Serviço nível A #213",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000214 se desvio > 3.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000214" },
    gen_id = 213,
}
_SP["PROC-L1-00214"] = {
    title = "Serviço nível B #214",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000215 se desvio > 4.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000215" },
    gen_id = 214,
}
_SP["PROC-L1-00215"] = {
    title = "Serviço nível C #215",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000216 se desvio > 1.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000216" },
    gen_id = 215,
}
_SP["PROC-L1-00216"] = {
    title = "Serviço nível A #216",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000217 se desvio > 4.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000217" },
    gen_id = 216,
}
_SP["PROC-L1-00217"] = {
    title = "Serviço nível B #217",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000218 se desvio > 3.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000218" },
    gen_id = 217,
}
_SP["PROC-L1-00218"] = {
    title = "Serviço nível C #218",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000219 se desvio > 2.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000219" },
    gen_id = 218,
}
_SP["PROC-L1-00219"] = {
    title = "Serviço nível A #219",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000220 se desvio > 2.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000220" },
    gen_id = 219,
}
_SP["PROC-L1-00220"] = {
    title = "Serviço nível B #220",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000221 se desvio > 3.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000221" },
    gen_id = 220,
}
_SP["PROC-L1-00221"] = {
    title = "Serviço nível C #221",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000222 se desvio > 0.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000222" },
    gen_id = 221,
}
_SP["PROC-L1-00222"] = {
    title = "Serviço nível A #222",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000223 se desvio > 2.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000223" },
    gen_id = 222,
}
_SP["PROC-L1-00223"] = {
    title = "Serviço nível B #223",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000224 se desvio > 0.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000224" },
    gen_id = 223,
}
_SP["PROC-L1-00224"] = {
    title = "Serviço nível C #224",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000225 se desvio > 4.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000225" },
    gen_id = 224,
}
_SP["PROC-L1-00225"] = {
    title = "Serviço nível A #225",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000226 se desvio > 0.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000226" },
    gen_id = 225,
}
_SP["PROC-L1-00226"] = {
    title = "Serviço nível B #226",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000227 se desvio > 2.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000227" },
    gen_id = 226,
}
_SP["PROC-L1-00227"] = {
    title = "Serviço nível C #227",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000228 se desvio > 2.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000228" },
    gen_id = 227,
}
_SP["PROC-L1-00228"] = {
    title = "Serviço nível A #228",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000229 se desvio > 1.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000229" },
    gen_id = 228,
}
_SP["PROC-L1-00229"] = {
    title = "Serviço nível B #229",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000230 se desvio > 1.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000230" },
    gen_id = 229,
}
_SP["PROC-L1-00230"] = {
    title = "Serviço nível C #230",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000231 se desvio > 3.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000231" },
    gen_id = 230,
}
_SP["PROC-L1-00231"] = {
    title = "Serviço nível A #231",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000232 se desvio > 1.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000232" },
    gen_id = 231,
}
_SP["PROC-L1-00232"] = {
    title = "Serviço nível B #232",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000233 se desvio > 4.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000233" },
    gen_id = 232,
}
_SP["PROC-L1-00233"] = {
    title = "Serviço nível C #233",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000234 se desvio > 3.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000234" },
    gen_id = 233,
}
_SP["PROC-L1-00234"] = {
    title = "Serviço nível A #234",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000235 se desvio > 4.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000235" },
    gen_id = 234,
}
_SP["PROC-L1-00235"] = {
    title = "Serviço nível B #235",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000236 se desvio > 2.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000236" },
    gen_id = 235,
}
_SP["PROC-L1-00236"] = {
    title = "Serviço nível C #236",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000237 se desvio > 0.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000237" },
    gen_id = 236,
}
_SP["PROC-L1-00237"] = {
    title = "Serviço nível A #237",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000238 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000238" },
    gen_id = 237,
}
_SP["PROC-L1-00238"] = {
    title = "Serviço nível B #238",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000239 se desvio > 3.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000239" },
    gen_id = 238,
}
_SP["PROC-L1-00239"] = {
    title = "Serviço nível C #239",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000240 se desvio > 3.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000240" },
    gen_id = 239,
}
_SP["PROC-L1-00240"] = {
    title = "Serviço nível A #240",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000241 se desvio > 0.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000241" },
    gen_id = 240,
}
_SP["PROC-L1-00241"] = {
    title = "Serviço nível B #241",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000242 se desvio > 1.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000242" },
    gen_id = 241,
}
_SP["PROC-L1-00242"] = {
    title = "Serviço nível C #242",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000243 se desvio > 0.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000243" },
    gen_id = 242,
}
_SP["PROC-L1-00243"] = {
    title = "Serviço nível A #243",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000244 se desvio > 0.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000244" },
    gen_id = 243,
}
_SP["PROC-L1-00244"] = {
    title = "Serviço nível B #244",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000245 se desvio > 4.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000245" },
    gen_id = 244,
}
_SP["PROC-L1-00245"] = {
    title = "Serviço nível C #245",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000246 se desvio > 3.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000246" },
    gen_id = 245,
}
_SP["PROC-L1-00246"] = {
    title = "Serviço nível A #246",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000247 se desvio > 0.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000247" },
    gen_id = 246,
}
_SP["PROC-L1-00247"] = {
    title = "Serviço nível B #247",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000248 se desvio > 0.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000248" },
    gen_id = 247,
}
_SP["PROC-L1-00248"] = {
    title = "Serviço nível C #248",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000249 se desvio > 3.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000249" },
    gen_id = 248,
}
_SP["PROC-L1-00249"] = {
    title = "Serviço nível A #249",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000250 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000250" },
    gen_id = 249,
}
_SP["PROC-L1-00250"] = {
    title = "Serviço nível B #250",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000251 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000251" },
    gen_id = 250,
}
_SP["PROC-L1-00251"] = {
    title = "Serviço nível C #251",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000252 se desvio > 1.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000252" },
    gen_id = 251,
}
_SP["PROC-L1-00252"] = {
    title = "Serviço nível A #252",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000253 se desvio > 4.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000253" },
    gen_id = 252,
}
_SP["PROC-L1-00253"] = {
    title = "Serviço nível B #253",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000254 se desvio > 2.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000254" },
    gen_id = 253,
}
_SP["PROC-L1-00254"] = {
    title = "Serviço nível C #254",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000255 se desvio > 3.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000255" },
    gen_id = 254,
}
_SP["PROC-L1-00255"] = {
    title = "Serviço nível A #255",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000256 se desvio > 3.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000256" },
    gen_id = 255,
}
_SP["PROC-L1-00256"] = {
    title = "Serviço nível B #256",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000257 se desvio > 3.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000257" },
    gen_id = 256,
}
_SP["PROC-L1-00257"] = {
    title = "Serviço nível C #257",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000258 se desvio > 4.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000258" },
    gen_id = 257,
}
_SP["PROC-L1-00258"] = {
    title = "Serviço nível A #258",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000259 se desvio > 4.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000259" },
    gen_id = 258,
}
_SP["PROC-L1-00259"] = {
    title = "Serviço nível B #259",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000260 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000260" },
    gen_id = 259,
}
_SP["PROC-L1-00260"] = {
    title = "Serviço nível C #260",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000261 se desvio > 3.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000261" },
    gen_id = 260,
}
_SP["PROC-L1-00261"] = {
    title = "Serviço nível A #261",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000262 se desvio > 2.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000262" },
    gen_id = 261,
}
_SP["PROC-L1-00262"] = {
    title = "Serviço nível B #262",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000263 se desvio > 3.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000263" },
    gen_id = 262,
}
_SP["PROC-L1-00263"] = {
    title = "Serviço nível C #263",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000264 se desvio > 1.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000264" },
    gen_id = 263,
}
_SP["PROC-L1-00264"] = {
    title = "Serviço nível A #264",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000265 se desvio > 0.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000265" },
    gen_id = 264,
}
_SP["PROC-L1-00265"] = {
    title = "Serviço nível B #265",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000266 se desvio > 2.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000266" },
    gen_id = 265,
}
_SP["PROC-L1-00266"] = {
    title = "Serviço nível C #266",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000267 se desvio > 2.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000267" },
    gen_id = 266,
}
_SP["PROC-L1-00267"] = {
    title = "Serviço nível A #267",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000268 se desvio > 4.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000268" },
    gen_id = 267,
}
_SP["PROC-L1-00268"] = {
    title = "Serviço nível B #268",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000269 se desvio > 2.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000269" },
    gen_id = 268,
}
_SP["PROC-L1-00269"] = {
    title = "Serviço nível C #269",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000270 se desvio > 2.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000270" },
    gen_id = 269,
}
_SP["PROC-L1-00270"] = {
    title = "Serviço nível A #270",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000271 se desvio > 1.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000271" },
    gen_id = 270,
}
_SP["PROC-L1-00271"] = {
    title = "Serviço nível B #271",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000272 se desvio > 2.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000272" },
    gen_id = 271,
}
_SP["PROC-L1-00272"] = {
    title = "Serviço nível C #272",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000273 se desvio > 3.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000273" },
    gen_id = 272,
}
_SP["PROC-L1-00273"] = {
    title = "Serviço nível A #273",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000274 se desvio > 0.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000274" },
    gen_id = 273,
}
_SP["PROC-L1-00274"] = {
    title = "Serviço nível B #274",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000275 se desvio > 4.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000275" },
    gen_id = 274,
}
_SP["PROC-L1-00275"] = {
    title = "Serviço nível C #275",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000276 se desvio > 2.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000276" },
    gen_id = 275,
}
_SP["PROC-L1-00276"] = {
    title = "Serviço nível A #276",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000277 se desvio > 1.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000277" },
    gen_id = 276,
}
_SP["PROC-L1-00277"] = {
    title = "Serviço nível B #277",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000278 se desvio > 2.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000278" },
    gen_id = 277,
}
_SP["PROC-L1-00278"] = {
    title = "Serviço nível C #278",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000279 se desvio > 3.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000279" },
    gen_id = 278,
}
_SP["PROC-L1-00279"] = {
    title = "Serviço nível A #279",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000280 se desvio > 2.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000280" },
    gen_id = 279,
}
_SP["PROC-L1-00280"] = {
    title = "Serviço nível B #280",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000281 se desvio > 1.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000281" },
    gen_id = 280,
}
_SP["PROC-L1-00281"] = {
    title = "Serviço nível C #281",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000282 se desvio > 3.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000282" },
    gen_id = 281,
}
_SP["PROC-L1-00282"] = {
    title = "Serviço nível A #282",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000283 se desvio > 3.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000283" },
    gen_id = 282,
}
_SP["PROC-L1-00283"] = {
    title = "Serviço nível B #283",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000284 se desvio > 0.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000284" },
    gen_id = 283,
}
_SP["PROC-L1-00284"] = {
    title = "Serviço nível C #284",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000285 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000285" },
    gen_id = 284,
}
_SP["PROC-L1-00285"] = {
    title = "Serviço nível A #285",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000286 se desvio > 3.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000286" },
    gen_id = 285,
}
_SP["PROC-L1-00286"] = {
    title = "Serviço nível B #286",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000287 se desvio > 0.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000287" },
    gen_id = 286,
}
_SP["PROC-L1-00287"] = {
    title = "Serviço nível C #287",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000288 se desvio > 4.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000288" },
    gen_id = 287,
}
_SP["PROC-L1-00288"] = {
    title = "Serviço nível A #288",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000289 se desvio > 1.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000289" },
    gen_id = 288,
}
_SP["PROC-L1-00289"] = {
    title = "Serviço nível B #289",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000290 se desvio > 3.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000290" },
    gen_id = 289,
}
_SP["PROC-L1-00290"] = {
    title = "Serviço nível C #290",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000291 se desvio > 3.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000291" },
    gen_id = 290,
}
_SP["PROC-L1-00291"] = {
    title = "Serviço nível A #291",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000292 se desvio > 1.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000292" },
    gen_id = 291,
}
_SP["PROC-L1-00292"] = {
    title = "Serviço nível B #292",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000293 se desvio > 3.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000293" },
    gen_id = 292,
}
_SP["PROC-L1-00293"] = {
    title = "Serviço nível C #293",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000294 se desvio > 3.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000294" },
    gen_id = 293,
}
_SP["PROC-L1-00294"] = {
    title = "Serviço nível A #294",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000295 se desvio > 2.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000295" },
    gen_id = 294,
}
_SP["PROC-L1-00295"] = {
    title = "Serviço nível B #295",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000296 se desvio > 2.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000296" },
    gen_id = 295,
}
_SP["PROC-L1-00296"] = {
    title = "Serviço nível C #296",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000297 se desvio > 4.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000297" },
    gen_id = 296,
}
_SP["PROC-L1-00297"] = {
    title = "Serviço nível A #297",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000298 se desvio > 0.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000298" },
    gen_id = 297,
}
_SP["PROC-L1-00298"] = {
    title = "Serviço nível B #298",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000299 se desvio > 3.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000299" },
    gen_id = 298,
}
_SP["PROC-L1-00299"] = {
    title = "Serviço nível C #299",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000300 se desvio > 2.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000300" },
    gen_id = 299,
}
_SP["PROC-L1-00300"] = {
    title = "Serviço nível A #300",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000301 se desvio > 4.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000301" },
    gen_id = 300,
}
_SP["PROC-L1-00301"] = {
    title = "Serviço nível B #301",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000302 se desvio > 2.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000302" },
    gen_id = 301,
}
_SP["PROC-L1-00302"] = {
    title = "Serviço nível C #302",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000303 se desvio > 4.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000303" },
    gen_id = 302,
}
_SP["PROC-L1-00303"] = {
    title = "Serviço nível A #303",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000304 se desvio > 4.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000304" },
    gen_id = 303,
}
_SP["PROC-L1-00304"] = {
    title = "Serviço nível B #304",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000305 se desvio > 2.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000305" },
    gen_id = 304,
}
_SP["PROC-L1-00305"] = {
    title = "Serviço nível C #305",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000306 se desvio > 3.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000306" },
    gen_id = 305,
}
_SP["PROC-L1-00306"] = {
    title = "Serviço nível A #306",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000307 se desvio > 2.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000307" },
    gen_id = 306,
}
_SP["PROC-L1-00307"] = {
    title = "Serviço nível B #307",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000308 se desvio > 4.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000308" },
    gen_id = 307,
}
_SP["PROC-L1-00308"] = {
    title = "Serviço nível C #308",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000309 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000309" },
    gen_id = 308,
}
_SP["PROC-L1-00309"] = {
    title = "Serviço nível A #309",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000310 se desvio > 2.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000310" },
    gen_id = 309,
}
_SP["PROC-L1-00310"] = {
    title = "Serviço nível B #310",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000311 se desvio > 4.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000311" },
    gen_id = 310,
}
_SP["PROC-L1-00311"] = {
    title = "Serviço nível C #311",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000312 se desvio > 3.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000312" },
    gen_id = 311,
}
_SP["PROC-L1-00312"] = {
    title = "Serviço nível A #312",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000313 se desvio > 2.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000313" },
    gen_id = 312,
}
_SP["PROC-L1-00313"] = {
    title = "Serviço nível B #313",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000314 se desvio > 4.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000314" },
    gen_id = 313,
}
_SP["PROC-L1-00314"] = {
    title = "Serviço nível C #314",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000315 se desvio > 1.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000315" },
    gen_id = 314,
}
_SP["PROC-L1-00315"] = {
    title = "Serviço nível A #315",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000316 se desvio > 2.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000316" },
    gen_id = 315,
}
_SP["PROC-L1-00316"] = {
    title = "Serviço nível B #316",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000317 se desvio > 4.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000317" },
    gen_id = 316,
}
_SP["PROC-L1-00317"] = {
    title = "Serviço nível C #317",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000318 se desvio > 2.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000318" },
    gen_id = 317,
}
_SP["PROC-L1-00318"] = {
    title = "Serviço nível A #318",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000319 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000319" },
    gen_id = 318,
}
_SP["PROC-L1-00319"] = {
    title = "Serviço nível B #319",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000320 se desvio > 1.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000320" },
    gen_id = 319,
}
_SP["PROC-L1-00320"] = {
    title = "Serviço nível C #320",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000321 se desvio > 0.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000321" },
    gen_id = 320,
}
_SP["PROC-L1-00321"] = {
    title = "Serviço nível A #321",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000322 se desvio > 3.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000322" },
    gen_id = 321,
}
_SP["PROC-L1-00322"] = {
    title = "Serviço nível B #322",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000323 se desvio > 1.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000323" },
    gen_id = 322,
}
_SP["PROC-L1-00323"] = {
    title = "Serviço nível C #323",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000324 se desvio > 1.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000324" },
    gen_id = 323,
}
_SP["PROC-L1-00324"] = {
    title = "Serviço nível A #324",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000325 se desvio > 0.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000325" },
    gen_id = 324,
}
_SP["PROC-L1-00325"] = {
    title = "Serviço nível B #325",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000326 se desvio > 0.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000326" },
    gen_id = 325,
}
_SP["PROC-L1-00326"] = {
    title = "Serviço nível C #326",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000327 se desvio > 1.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000327" },
    gen_id = 326,
}
_SP["PROC-L1-00327"] = {
    title = "Serviço nível A #327",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000328 se desvio > 2.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000328" },
    gen_id = 327,
}
_SP["PROC-L1-00328"] = {
    title = "Serviço nível B #328",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000329 se desvio > 0.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000329" },
    gen_id = 328,
}
_SP["PROC-L1-00329"] = {
    title = "Serviço nível C #329",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000330 se desvio > 3.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000330" },
    gen_id = 329,
}
_SP["PROC-L1-00330"] = {
    title = "Serviço nível A #330",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000331 se desvio > 0.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000331" },
    gen_id = 330,
}
_SP["PROC-L1-00331"] = {
    title = "Serviço nível B #331",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000332 se desvio > 2.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000332" },
    gen_id = 331,
}
_SP["PROC-L1-00332"] = {
    title = "Serviço nível C #332",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000333 se desvio > 1.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000333" },
    gen_id = 332,
}
_SP["PROC-L1-00333"] = {
    title = "Serviço nível A #333",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000334 se desvio > 2.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000334" },
    gen_id = 333,
}
_SP["PROC-L1-00334"] = {
    title = "Serviço nível B #334",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000335 se desvio > 0.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000335" },
    gen_id = 334,
}
_SP["PROC-L1-00335"] = {
    title = "Serviço nível C #335",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000336 se desvio > 1.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000336" },
    gen_id = 335,
}
_SP["PROC-L1-00336"] = {
    title = "Serviço nível A #336",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000337 se desvio > 2.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000337" },
    gen_id = 336,
}
_SP["PROC-L1-00337"] = {
    title = "Serviço nível B #337",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000338 se desvio > 4.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000338" },
    gen_id = 337,
}
_SP["PROC-L1-00338"] = {
    title = "Serviço nível C #338",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000339 se desvio > 4.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000339" },
    gen_id = 338,
}
_SP["PROC-L1-00339"] = {
    title = "Serviço nível A #339",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000340 se desvio > 2.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000340" },
    gen_id = 339,
}
_SP["PROC-L1-00340"] = {
    title = "Serviço nível B #340",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000341 se desvio > 3.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000341" },
    gen_id = 340,
}
_SP["PROC-L1-00341"] = {
    title = "Serviço nível C #341",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000342 se desvio > 3.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000342" },
    gen_id = 341,
}
_SP["PROC-L1-00342"] = {
    title = "Serviço nível A #342",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000343 se desvio > 3.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000343" },
    gen_id = 342,
}
_SP["PROC-L1-00343"] = {
    title = "Serviço nível B #343",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000344 se desvio > 2.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000344" },
    gen_id = 343,
}
_SP["PROC-L1-00344"] = {
    title = "Serviço nível C #344",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000345 se desvio > 2.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000345" },
    gen_id = 344,
}
_SP["PROC-L1-00345"] = {
    title = "Serviço nível A #345",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000346 se desvio > 3.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000346" },
    gen_id = 345,
}
_SP["PROC-L1-00346"] = {
    title = "Serviço nível B #346",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000347 se desvio > 3.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000347" },
    gen_id = 346,
}
_SP["PROC-L1-00347"] = {
    title = "Serviço nível C #347",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000348 se desvio > 3.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000348" },
    gen_id = 347,
}
_SP["PROC-L1-00348"] = {
    title = "Serviço nível A #348",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000349 se desvio > 1.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000349" },
    gen_id = 348,
}
_SP["PROC-L1-00349"] = {
    title = "Serviço nível B #349",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000350 se desvio > 1.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000350" },
    gen_id = 349,
}
_SP["PROC-L1-00350"] = {
    title = "Serviço nível C #350",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000351 se desvio > 0.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000351" },
    gen_id = 350,
}
_SP["PROC-L1-00351"] = {
    title = "Serviço nível A #351",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000352 se desvio > 0.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000352" },
    gen_id = 351,
}
_SP["PROC-L1-00352"] = {
    title = "Serviço nível B #352",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000353 se desvio > 2.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000353" },
    gen_id = 352,
}
_SP["PROC-L1-00353"] = {
    title = "Serviço nível C #353",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000354 se desvio > 2.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000354" },
    gen_id = 353,
}
_SP["PROC-L1-00354"] = {
    title = "Serviço nível A #354",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000355 se desvio > 3.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000355" },
    gen_id = 354,
}
_SP["PROC-L1-00355"] = {
    title = "Serviço nível B #355",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000356 se desvio > 4.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000356" },
    gen_id = 355,
}
_SP["PROC-L1-00356"] = {
    title = "Serviço nível C #356",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000357 se desvio > 2.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000357" },
    gen_id = 356,
}
_SP["PROC-L1-00357"] = {
    title = "Serviço nível A #357",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000358 se desvio > 1.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000358" },
    gen_id = 357,
}
_SP["PROC-L1-00358"] = {
    title = "Serviço nível B #358",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000359 se desvio > 0.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000359" },
    gen_id = 358,
}
_SP["PROC-L1-00359"] = {
    title = "Serviço nível C #359",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000360 se desvio > 4.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000360" },
    gen_id = 359,
}
_SP["PROC-L1-00360"] = {
    title = "Serviço nível A #360",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000361 se desvio > 4.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000361" },
    gen_id = 360,
}
_SP["PROC-L1-00361"] = {
    title = "Serviço nível B #361",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000362 se desvio > 1.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000362" },
    gen_id = 361,
}
_SP["PROC-L1-00362"] = {
    title = "Serviço nível C #362",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000363 se desvio > 3.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000363" },
    gen_id = 362,
}
_SP["PROC-L1-00363"] = {
    title = "Serviço nível A #363",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000364 se desvio > 2.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000364" },
    gen_id = 363,
}
_SP["PROC-L1-00364"] = {
    title = "Serviço nível B #364",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000365 se desvio > 1.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000365" },
    gen_id = 364,
}
_SP["PROC-L1-00365"] = {
    title = "Serviço nível C #365",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000366 se desvio > 0.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000366" },
    gen_id = 365,
}
_SP["PROC-L1-00366"] = {
    title = "Serviço nível A #366",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000367 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000367" },
    gen_id = 366,
}
_SP["PROC-L1-00367"] = {
    title = "Serviço nível B #367",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000368 se desvio > 3.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000368" },
    gen_id = 367,
}
_SP["PROC-L1-00368"] = {
    title = "Serviço nível C #368",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000369 se desvio > 0.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000369" },
    gen_id = 368,
}
_SP["PROC-L1-00369"] = {
    title = "Serviço nível A #369",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000370 se desvio > 3.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000370" },
    gen_id = 369,
}
_SP["PROC-L1-00370"] = {
    title = "Serviço nível B #370",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000371 se desvio > 2.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000371" },
    gen_id = 370,
}
_SP["PROC-L1-00371"] = {
    title = "Serviço nível C #371",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000372 se desvio > 3.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000372" },
    gen_id = 371,
}
_SP["PROC-L1-00372"] = {
    title = "Serviço nível A #372",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000373 se desvio > 4.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000373" },
    gen_id = 372,
}
_SP["PROC-L1-00373"] = {
    title = "Serviço nível B #373",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000374 se desvio > 0.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000374" },
    gen_id = 373,
}
_SP["PROC-L1-00374"] = {
    title = "Serviço nível C #374",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000375 se desvio > 2.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000375" },
    gen_id = 374,
}
_SP["PROC-L1-00375"] = {
    title = "Serviço nível A #375",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000376 se desvio > 3.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000376" },
    gen_id = 375,
}
_SP["PROC-L1-00376"] = {
    title = "Serviço nível B #376",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000377 se desvio > 2.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000377" },
    gen_id = 376,
}
_SP["PROC-L1-00377"] = {
    title = "Serviço nível C #377",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000378 se desvio > 1.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000378" },
    gen_id = 377,
}
_SP["PROC-L1-00378"] = {
    title = "Serviço nível A #378",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000379 se desvio > 1.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000379" },
    gen_id = 378,
}
_SP["PROC-L1-00379"] = {
    title = "Serviço nível B #379",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000380 se desvio > 3.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000380" },
    gen_id = 379,
}
_SP["PROC-L1-00380"] = {
    title = "Serviço nível C #380",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000381 se desvio > 2.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000381" },
    gen_id = 380,
}
_SP["PROC-L1-00381"] = {
    title = "Serviço nível A #381",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000382 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000382" },
    gen_id = 381,
}
_SP["PROC-L1-00382"] = {
    title = "Serviço nível B #382",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000383 se desvio > 2.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000383" },
    gen_id = 382,
}
_SP["PROC-L1-00383"] = {
    title = "Serviço nível C #383",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000384 se desvio > 0.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000384" },
    gen_id = 383,
}
_SP["PROC-L1-00384"] = {
    title = "Serviço nível A #384",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000385 se desvio > 2.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000385" },
    gen_id = 384,
}
_SP["PROC-L1-00385"] = {
    title = "Serviço nível B #385",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000386 se desvio > 2.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000386" },
    gen_id = 385,
}
_SP["PROC-L1-00386"] = {
    title = "Serviço nível C #386",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000387 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000387" },
    gen_id = 386,
}
_SP["PROC-L1-00387"] = {
    title = "Serviço nível A #387",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000388 se desvio > 2.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000388" },
    gen_id = 387,
}
_SP["PROC-L1-00388"] = {
    title = "Serviço nível B #388",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000389 se desvio > 4.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000389" },
    gen_id = 388,
}
_SP["PROC-L1-00389"] = {
    title = "Serviço nível C #389",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000390 se desvio > 2.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000390" },
    gen_id = 389,
}
_SP["PROC-L1-00390"] = {
    title = "Serviço nível A #390",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000391 se desvio > 1.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000391" },
    gen_id = 390,
}
_SP["PROC-L1-00391"] = {
    title = "Serviço nível B #391",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000392 se desvio > 0.20",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000392" },
    gen_id = 391,
}
_SP["PROC-L1-00392"] = {
    title = "Serviço nível C #392",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000393 se desvio > 3.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000393" },
    gen_id = 392,
}
_SP["PROC-L1-00393"] = {
    title = "Serviço nível A #393",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000394 se desvio > 3.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000394" },
    gen_id = 393,
}
_SP["PROC-L1-00394"] = {
    title = "Serviço nível B #394",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000395 se desvio > 2.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000395" },
    gen_id = 394,
}
_SP["PROC-L1-00395"] = {
    title = "Serviço nível C #395",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000396 se desvio > 3.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000396" },
    gen_id = 395,
}
_SP["PROC-L1-00396"] = {
    title = "Serviço nível A #396",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000397 se desvio > 1.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000397" },
    gen_id = 396,
}
_SP["PROC-L1-00397"] = {
    title = "Serviço nível B #397",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000398 se desvio > 2.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000398" },
    gen_id = 397,
}
_SP["PROC-L1-00398"] = {
    title = "Serviço nível C #398",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000399 se desvio > 0.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000399" },
    gen_id = 398,
}
_SP["PROC-L1-00399"] = {
    title = "Serviço nível A #399",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000400 se desvio > 0.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000400" },
    gen_id = 399,
}
_SP["PROC-L1-00400"] = {
    title = "Serviço nível B #400",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000401 se desvio > 0.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000401" },
    gen_id = 400,
}
_SP["PROC-L1-00401"] = {
    title = "Serviço nível C #401",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000402 se desvio > 3.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000402" },
    gen_id = 401,
}
_SP["PROC-L1-00402"] = {
    title = "Serviço nível A #402",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000403 se desvio > 4.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000403" },
    gen_id = 402,
}
_SP["PROC-L1-00403"] = {
    title = "Serviço nível B #403",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000404 se desvio > 2.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000404" },
    gen_id = 403,
}
_SP["PROC-L1-00404"] = {
    title = "Serviço nível C #404",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000405 se desvio > 2.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000405" },
    gen_id = 404,
}
_SP["PROC-L1-00405"] = {
    title = "Serviço nível A #405",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000406 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000406" },
    gen_id = 405,
}
_SP["PROC-L1-00406"] = {
    title = "Serviço nível B #406",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000407 se desvio > 0.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000407" },
    gen_id = 406,
}
_SP["PROC-L1-00407"] = {
    title = "Serviço nível C #407",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000408 se desvio > 3.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000408" },
    gen_id = 407,
}
_SP["PROC-L1-00408"] = {
    title = "Serviço nível A #408",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000409 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000409" },
    gen_id = 408,
}
_SP["PROC-L1-00409"] = {
    title = "Serviço nível B #409",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000410 se desvio > 0.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000410" },
    gen_id = 409,
}
_SP["PROC-L1-00410"] = {
    title = "Serviço nível C #410",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000411 se desvio > 0.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000411" },
    gen_id = 410,
}
_SP["PROC-L1-00411"] = {
    title = "Serviço nível A #411",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000412 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000412" },
    gen_id = 411,
}
_SP["PROC-L1-00412"] = {
    title = "Serviço nível B #412",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000413 se desvio > 3.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000413" },
    gen_id = 412,
}
_SP["PROC-L1-00413"] = {
    title = "Serviço nível C #413",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000414 se desvio > 1.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000414" },
    gen_id = 413,
}
_SP["PROC-L1-00414"] = {
    title = "Serviço nível A #414",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000415 se desvio > 3.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000415" },
    gen_id = 414,
}
_SP["PROC-L1-00415"] = {
    title = "Serviço nível B #415",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000416 se desvio > 0.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000416" },
    gen_id = 415,
}
_SP["PROC-L1-00416"] = {
    title = "Serviço nível C #416",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000417 se desvio > 1.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000417" },
    gen_id = 416,
}
_SP["PROC-L1-00417"] = {
    title = "Serviço nível A #417",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000418 se desvio > 4.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000418" },
    gen_id = 417,
}
_SP["PROC-L1-00418"] = {
    title = "Serviço nível B #418",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000419 se desvio > 1.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000419" },
    gen_id = 418,
}
_SP["PROC-L1-00419"] = {
    title = "Serviço nível C #419",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000420 se desvio > 1.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000420" },
    gen_id = 419,
}
_SP["PROC-L1-00420"] = {
    title = "Serviço nível A #420",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000421 se desvio > 4.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000421" },
    gen_id = 420,
}
_SP["PROC-L1-00421"] = {
    title = "Serviço nível B #421",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000422 se desvio > 0.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000422" },
    gen_id = 421,
}
_SP["PROC-L1-00422"] = {
    title = "Serviço nível C #422",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000423 se desvio > 4.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000423" },
    gen_id = 422,
}
_SP["PROC-L1-00423"] = {
    title = "Serviço nível A #423",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000424 se desvio > 0.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000424" },
    gen_id = 423,
}
_SP["PROC-L1-00424"] = {
    title = "Serviço nível B #424",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000425 se desvio > 1.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000425" },
    gen_id = 424,
}
_SP["PROC-L1-00425"] = {
    title = "Serviço nível C #425",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000426 se desvio > 2.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000426" },
    gen_id = 425,
}
_SP["PROC-L1-00426"] = {
    title = "Serviço nível A #426",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000427 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000427" },
    gen_id = 426,
}
_SP["PROC-L1-00427"] = {
    title = "Serviço nível B #427",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000428 se desvio > 3.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000428" },
    gen_id = 427,
}
_SP["PROC-L1-00428"] = {
    title = "Serviço nível C #428",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000429 se desvio > 4.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000429" },
    gen_id = 428,
}
_SP["PROC-L1-00429"] = {
    title = "Serviço nível A #429",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000430 se desvio > 1.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000430" },
    gen_id = 429,
}
_SP["PROC-L1-00430"] = {
    title = "Serviço nível B #430",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000431 se desvio > 2.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000431" },
    gen_id = 430,
}
_SP["PROC-L1-00431"] = {
    title = "Serviço nível C #431",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000432 se desvio > 4.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000432" },
    gen_id = 431,
}
_SP["PROC-L1-00432"] = {
    title = "Serviço nível A #432",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000433 se desvio > 3.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000433" },
    gen_id = 432,
}
_SP["PROC-L1-00433"] = {
    title = "Serviço nível B #433",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000434 se desvio > 4.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000434" },
    gen_id = 433,
}
_SP["PROC-L1-00434"] = {
    title = "Serviço nível C #434",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000435 se desvio > 2.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000435" },
    gen_id = 434,
}
_SP["PROC-L1-00435"] = {
    title = "Serviço nível A #435",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000436 se desvio > 1.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000436" },
    gen_id = 435,
}
_SP["PROC-L1-00436"] = {
    title = "Serviço nível B #436",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000437 se desvio > 4.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000437" },
    gen_id = 436,
}
_SP["PROC-L1-00437"] = {
    title = "Serviço nível C #437",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000438 se desvio > 1.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000438" },
    gen_id = 437,
}
_SP["PROC-L1-00438"] = {
    title = "Serviço nível A #438",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000439 se desvio > 4.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000439" },
    gen_id = 438,
}
_SP["PROC-L1-00439"] = {
    title = "Serviço nível B #439",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000440 se desvio > 4.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000440" },
    gen_id = 439,
}
_SP["PROC-L1-00440"] = {
    title = "Serviço nível C #440",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000441 se desvio > 4.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000441" },
    gen_id = 440,
}
_SP["PROC-L1-00441"] = {
    title = "Serviço nível A #441",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000442 se desvio > 0.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000442" },
    gen_id = 441,
}
_SP["PROC-L1-00442"] = {
    title = "Serviço nível B #442",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000443 se desvio > 0.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000443" },
    gen_id = 442,
}
_SP["PROC-L1-00443"] = {
    title = "Serviço nível C #443",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000444 se desvio > 3.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000444" },
    gen_id = 443,
}
_SP["PROC-L1-00444"] = {
    title = "Serviço nível A #444",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000445 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000445" },
    gen_id = 444,
}
_SP["PROC-L1-00445"] = {
    title = "Serviço nível B #445",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000446 se desvio > 2.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000446" },
    gen_id = 445,
}
_SP["PROC-L1-00446"] = {
    title = "Serviço nível C #446",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000447 se desvio > 4.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000447" },
    gen_id = 446,
}
_SP["PROC-L1-00447"] = {
    title = "Serviço nível A #447",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000448 se desvio > 0.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000448" },
    gen_id = 447,
}
_SP["PROC-L1-00448"] = {
    title = "Serviço nível B #448",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000449 se desvio > 4.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000449" },
    gen_id = 448,
}
_SP["PROC-L1-00449"] = {
    title = "Serviço nível C #449",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000450 se desvio > 4.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000450" },
    gen_id = 449,
}
_SP["PROC-L1-00450"] = {
    title = "Serviço nível A #450",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000451 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000451" },
    gen_id = 450,
}
_SP["PROC-L1-00451"] = {
    title = "Serviço nível B #451",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000452 se desvio > 4.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000452" },
    gen_id = 451,
}
_SP["PROC-L1-00452"] = {
    title = "Serviço nível C #452",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000453 se desvio > 1.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000453" },
    gen_id = 452,
}
_SP["PROC-L1-00453"] = {
    title = "Serviço nível A #453",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000454 se desvio > 3.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000454" },
    gen_id = 453,
}
_SP["PROC-L1-00454"] = {
    title = "Serviço nível B #454",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000455 se desvio > 2.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000455" },
    gen_id = 454,
}
_SP["PROC-L1-00455"] = {
    title = "Serviço nível C #455",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000456 se desvio > 0.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000456" },
    gen_id = 455,
}
_SP["PROC-L1-00456"] = {
    title = "Serviço nível A #456",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000457 se desvio > 4.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000457" },
    gen_id = 456,
}
_SP["PROC-L1-00457"] = {
    title = "Serviço nível B #457",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000458 se desvio > 4.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000458" },
    gen_id = 457,
}
_SP["PROC-L1-00458"] = {
    title = "Serviço nível C #458",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000459 se desvio > 2.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000459" },
    gen_id = 458,
}
_SP["PROC-L1-00459"] = {
    title = "Serviço nível A #459",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000460 se desvio > 4.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000460" },
    gen_id = 459,
}
_SP["PROC-L1-00460"] = {
    title = "Serviço nível B #460",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000461 se desvio > 2.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000461" },
    gen_id = 460,
}
_SP["PROC-L1-00461"] = {
    title = "Serviço nível C #461",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000462 se desvio > 2.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000462" },
    gen_id = 461,
}
_SP["PROC-L1-00462"] = {
    title = "Serviço nível A #462",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000463 se desvio > 3.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000463" },
    gen_id = 462,
}
_SP["PROC-L1-00463"] = {
    title = "Serviço nível B #463",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000464 se desvio > 4.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000464" },
    gen_id = 463,
}
_SP["PROC-L1-00464"] = {
    title = "Serviço nível C #464",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000465 se desvio > 4.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000465" },
    gen_id = 464,
}
_SP["PROC-L1-00465"] = {
    title = "Serviço nível A #465",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000466 se desvio > 4.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000466" },
    gen_id = 465,
}
_SP["PROC-L1-00466"] = {
    title = "Serviço nível B #466",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000467 se desvio > 4.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000467" },
    gen_id = 466,
}
_SP["PROC-L1-00467"] = {
    title = "Serviço nível C #467",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000468 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000468" },
    gen_id = 467,
}
_SP["PROC-L1-00468"] = {
    title = "Serviço nível A #468",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000469 se desvio > 1.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000469" },
    gen_id = 468,
}
_SP["PROC-L1-00469"] = {
    title = "Serviço nível B #469",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000470 se desvio > 1.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000470" },
    gen_id = 469,
}
_SP["PROC-L1-00470"] = {
    title = "Serviço nível C #470",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000471 se desvio > 4.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000471" },
    gen_id = 470,
}
_SP["PROC-L1-00471"] = {
    title = "Serviço nível A #471",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000472 se desvio > 2.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000472" },
    gen_id = 471,
}
_SP["PROC-L1-00472"] = {
    title = "Serviço nível B #472",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000473 se desvio > 3.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000473" },
    gen_id = 472,
}
_SP["PROC-L1-00473"] = {
    title = "Serviço nível C #473",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000474 se desvio > 4.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000474" },
    gen_id = 473,
}
_SP["PROC-L1-00474"] = {
    title = "Serviço nível A #474",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000475 se desvio > 4.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000475" },
    gen_id = 474,
}
_SP["PROC-L1-00475"] = {
    title = "Serviço nível B #475",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000476 se desvio > 0.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000476" },
    gen_id = 475,
}
_SP["PROC-L1-00476"] = {
    title = "Serviço nível C #476",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000477 se desvio > 1.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000477" },
    gen_id = 476,
}
_SP["PROC-L1-00477"] = {
    title = "Serviço nível A #477",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000478 se desvio > 4.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000478" },
    gen_id = 477,
}
_SP["PROC-L1-00478"] = {
    title = "Serviço nível B #478",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000479 se desvio > 3.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000479" },
    gen_id = 478,
}
_SP["PROC-L1-00479"] = {
    title = "Serviço nível C #479",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000480 se desvio > 4.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000480" },
    gen_id = 479,
}
_SP["PROC-L1-00480"] = {
    title = "Serviço nível A #480",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000481 se desvio > 0.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000481" },
    gen_id = 480,
}
_SP["PROC-L1-00481"] = {
    title = "Serviço nível B #481",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000482 se desvio > 4.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000482" },
    gen_id = 481,
}
_SP["PROC-L1-00482"] = {
    title = "Serviço nível C #482",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000483 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000483" },
    gen_id = 482,
}
_SP["PROC-L1-00483"] = {
    title = "Serviço nível A #483",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000484 se desvio > 2.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000484" },
    gen_id = 483,
}
_SP["PROC-L1-00484"] = {
    title = "Serviço nível B #484",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000485 se desvio > 4.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000485" },
    gen_id = 484,
}
_SP["PROC-L1-00485"] = {
    title = "Serviço nível C #485",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000486 se desvio > 4.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000486" },
    gen_id = 485,
}
_SP["PROC-L1-00486"] = {
    title = "Serviço nível A #486",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000487 se desvio > 4.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000487" },
    gen_id = 486,
}
_SP["PROC-L1-00487"] = {
    title = "Serviço nível B #487",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000488 se desvio > 4.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000488" },
    gen_id = 487,
}
_SP["PROC-L1-00488"] = {
    title = "Serviço nível C #488",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000489 se desvio > 2.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000489" },
    gen_id = 488,
}
_SP["PROC-L1-00489"] = {
    title = "Serviço nível A #489",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000490 se desvio > 2.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000490" },
    gen_id = 489,
}
_SP["PROC-L1-00490"] = {
    title = "Serviço nível B #490",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000491 se desvio > 4.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000491" },
    gen_id = 490,
}
_SP["PROC-L1-00491"] = {
    title = "Serviço nível C #491",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000492 se desvio > 1.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000492" },
    gen_id = 491,
}
_SP["PROC-L1-00492"] = {
    title = "Serviço nível A #492",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000493 se desvio > 3.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000493" },
    gen_id = 492,
}
_SP["PROC-L1-00493"] = {
    title = "Serviço nível B #493",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000494 se desvio > 1.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000494" },
    gen_id = 493,
}
_SP["PROC-L1-00494"] = {
    title = "Serviço nível C #494",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000495 se desvio > 3.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000495" },
    gen_id = 494,
}
_SP["PROC-L1-00495"] = {
    title = "Serviço nível A #495",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000496 se desvio > 1.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000496" },
    gen_id = 495,
}
_SP["PROC-L1-00496"] = {
    title = "Serviço nível B #496",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000497 se desvio > 0.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000497" },
    gen_id = 496,
}
_SP["PROC-L1-00497"] = {
    title = "Serviço nível C #497",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000498 se desvio > 2.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000498" },
    gen_id = 497,
}
_SP["PROC-L1-00498"] = {
    title = "Serviço nível A #498",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000499 se desvio > 4.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000499" },
    gen_id = 498,
}
_SP["PROC-L1-00499"] = {
    title = "Serviço nível B #499",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000500 se desvio > 3.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000500" },
    gen_id = 499,
}
_SP["PROC-L1-00500"] = {
    title = "Serviço nível C #500",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000501 se desvio > 0.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000501" },
    gen_id = 500,
}
_SP["PROC-L1-00501"] = {
    title = "Serviço nível A #501",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000502 se desvio > 1.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000502" },
    gen_id = 501,
}
_SP["PROC-L1-00502"] = {
    title = "Serviço nível B #502",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000503 se desvio > 4.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000503" },
    gen_id = 502,
}
_SP["PROC-L1-00503"] = {
    title = "Serviço nível C #503",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000504 se desvio > 2.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000504" },
    gen_id = 503,
}
_SP["PROC-L1-00504"] = {
    title = "Serviço nível A #504",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000505 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000505" },
    gen_id = 504,
}
_SP["PROC-L1-00505"] = {
    title = "Serviço nível B #505",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000506 se desvio > 1.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000506" },
    gen_id = 505,
}
_SP["PROC-L1-00506"] = {
    title = "Serviço nível C #506",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000507 se desvio > 3.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000507" },
    gen_id = 506,
}
_SP["PROC-L1-00507"] = {
    title = "Serviço nível A #507",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000508 se desvio > 4.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000508" },
    gen_id = 507,
}
_SP["PROC-L1-00508"] = {
    title = "Serviço nível B #508",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000509 se desvio > 0.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000509" },
    gen_id = 508,
}
_SP["PROC-L1-00509"] = {
    title = "Serviço nível C #509",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000510 se desvio > 1.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000510" },
    gen_id = 509,
}
_SP["PROC-L1-00510"] = {
    title = "Serviço nível A #510",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000511 se desvio > 1.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000511" },
    gen_id = 510,
}
_SP["PROC-L1-00511"] = {
    title = "Serviço nível B #511",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000512 se desvio > 1.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000512" },
    gen_id = 511,
}
_SP["PROC-L1-00512"] = {
    title = "Serviço nível C #512",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000513 se desvio > 0.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000513" },
    gen_id = 512,
}
_SP["PROC-L1-00513"] = {
    title = "Serviço nível A #513",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000514 se desvio > 3.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000514" },
    gen_id = 513,
}
_SP["PROC-L1-00514"] = {
    title = "Serviço nível B #514",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000515 se desvio > 3.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000515" },
    gen_id = 514,
}
_SP["PROC-L1-00515"] = {
    title = "Serviço nível C #515",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000516 se desvio > 3.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000516" },
    gen_id = 515,
}
_SP["PROC-L1-00516"] = {
    title = "Serviço nível A #516",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000517 se desvio > 3.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000517" },
    gen_id = 516,
}
_SP["PROC-L1-00517"] = {
    title = "Serviço nível B #517",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000518 se desvio > 3.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000518" },
    gen_id = 517,
}
_SP["PROC-L1-00518"] = {
    title = "Serviço nível C #518",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000519 se desvio > 3.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000519" },
    gen_id = 518,
}
_SP["PROC-L1-00519"] = {
    title = "Serviço nível A #519",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000520 se desvio > 1.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000520" },
    gen_id = 519,
}
_SP["PROC-L1-00520"] = {
    title = "Serviço nível B #520",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000521 se desvio > 3.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000521" },
    gen_id = 520,
}
_SP["PROC-L1-00521"] = {
    title = "Serviço nível C #521",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000522 se desvio > 2.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000522" },
    gen_id = 521,
}
_SP["PROC-L1-00522"] = {
    title = "Serviço nível A #522",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000523 se desvio > 1.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000523" },
    gen_id = 522,
}
_SP["PROC-L1-00523"] = {
    title = "Serviço nível B #523",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000524 se desvio > 1.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000524" },
    gen_id = 523,
}
_SP["PROC-L1-00524"] = {
    title = "Serviço nível C #524",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000525 se desvio > 4.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000525" },
    gen_id = 524,
}
_SP["PROC-L1-00525"] = {
    title = "Serviço nível A #525",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000526 se desvio > 1.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000526" },
    gen_id = 525,
}
_SP["PROC-L1-00526"] = {
    title = "Serviço nível B #526",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000527 se desvio > 4.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000527" },
    gen_id = 526,
}
_SP["PROC-L1-00527"] = {
    title = "Serviço nível C #527",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000528 se desvio > 2.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000528" },
    gen_id = 527,
}
_SP["PROC-L1-00528"] = {
    title = "Serviço nível A #528",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000529 se desvio > 2.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000529" },
    gen_id = 528,
}
_SP["PROC-L1-00529"] = {
    title = "Serviço nível B #529",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000530 se desvio > 0.71",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000530" },
    gen_id = 529,
}
_SP["PROC-L1-00530"] = {
    title = "Serviço nível C #530",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000531 se desvio > 4.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000531" },
    gen_id = 530,
}
_SP["PROC-L1-00531"] = {
    title = "Serviço nível A #531",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000532 se desvio > 1.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000532" },
    gen_id = 531,
}
_SP["PROC-L1-00532"] = {
    title = "Serviço nível B #532",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000533 se desvio > 2.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000533" },
    gen_id = 532,
}
_SP["PROC-L1-00533"] = {
    title = "Serviço nível C #533",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000534 se desvio > 4.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000534" },
    gen_id = 533,
}
_SP["PROC-L1-00534"] = {
    title = "Serviço nível A #534",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000535 se desvio > 4.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000535" },
    gen_id = 534,
}
_SP["PROC-L1-00535"] = {
    title = "Serviço nível B #535",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000536 se desvio > 4.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000536" },
    gen_id = 535,
}
_SP["PROC-L1-00536"] = {
    title = "Serviço nível C #536",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000537 se desvio > 2.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000537" },
    gen_id = 536,
}
_SP["PROC-L1-00537"] = {
    title = "Serviço nível A #537",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000538 se desvio > 1.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000538" },
    gen_id = 537,
}
_SP["PROC-L1-00538"] = {
    title = "Serviço nível B #538",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000539 se desvio > 2.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000539" },
    gen_id = 538,
}
_SP["PROC-L1-00539"] = {
    title = "Serviço nível C #539",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000540 se desvio > 1.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000540" },
    gen_id = 539,
}
_SP["PROC-L1-00540"] = {
    title = "Serviço nível A #540",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000541 se desvio > 4.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000541" },
    gen_id = 540,
}
_SP["PROC-L1-00541"] = {
    title = "Serviço nível B #541",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000542 se desvio > 0.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000542" },
    gen_id = 541,
}
_SP["PROC-L1-00542"] = {
    title = "Serviço nível C #542",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000543 se desvio > 4.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000543" },
    gen_id = 542,
}
_SP["PROC-L1-00543"] = {
    title = "Serviço nível A #543",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000544 se desvio > 0.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000544" },
    gen_id = 543,
}
_SP["PROC-L1-00544"] = {
    title = "Serviço nível B #544",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000545 se desvio > 2.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000545" },
    gen_id = 544,
}
_SP["PROC-L1-00545"] = {
    title = "Serviço nível C #545",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000546 se desvio > 0.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000546" },
    gen_id = 545,
}
_SP["PROC-L1-00546"] = {
    title = "Serviço nível A #546",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000547 se desvio > 1.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000547" },
    gen_id = 546,
}
_SP["PROC-L1-00547"] = {
    title = "Serviço nível B #547",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000548 se desvio > 0.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000548" },
    gen_id = 547,
}
_SP["PROC-L1-00548"] = {
    title = "Serviço nível C #548",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000549 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000549" },
    gen_id = 548,
}
_SP["PROC-L1-00549"] = {
    title = "Serviço nível A #549",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000550 se desvio > 4.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000550" },
    gen_id = 549,
}
_SP["PROC-L1-00550"] = {
    title = "Serviço nível B #550",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000551 se desvio > 4.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000551" },
    gen_id = 550,
}
_SP["PROC-L1-00551"] = {
    title = "Serviço nível C #551",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000552 se desvio > 2.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000552" },
    gen_id = 551,
}
_SP["PROC-L1-00552"] = {
    title = "Serviço nível A #552",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000553 se desvio > 1.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000553" },
    gen_id = 552,
}
_SP["PROC-L1-00553"] = {
    title = "Serviço nível B #553",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000554 se desvio > 1.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000554" },
    gen_id = 553,
}
_SP["PROC-L1-00554"] = {
    title = "Serviço nível C #554",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000555 se desvio > 4.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000555" },
    gen_id = 554,
}
_SP["PROC-L1-00555"] = {
    title = "Serviço nível A #555",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000556 se desvio > 4.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000556" },
    gen_id = 555,
}
_SP["PROC-L1-00556"] = {
    title = "Serviço nível B #556",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000557 se desvio > 2.94",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000557" },
    gen_id = 556,
}
_SP["PROC-L1-00557"] = {
    title = "Serviço nível C #557",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000558 se desvio > 4.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000558" },
    gen_id = 557,
}
_SP["PROC-L1-00558"] = {
    title = "Serviço nível A #558",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000559 se desvio > 1.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000559" },
    gen_id = 558,
}
_SP["PROC-L1-00559"] = {
    title = "Serviço nível B #559",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000560 se desvio > 2.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000560" },
    gen_id = 559,
}
_SP["PROC-L1-00560"] = {
    title = "Serviço nível C #560",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000561 se desvio > 4.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000561" },
    gen_id = 560,
}
_SP["PROC-L1-00561"] = {
    title = "Serviço nível A #561",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000562 se desvio > 3.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000562" },
    gen_id = 561,
}
_SP["PROC-L1-00562"] = {
    title = "Serviço nível B #562",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000563 se desvio > 2.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000563" },
    gen_id = 562,
}
_SP["PROC-L1-00563"] = {
    title = "Serviço nível C #563",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000564 se desvio > 1.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000564" },
    gen_id = 563,
}
_SP["PROC-L1-00564"] = {
    title = "Serviço nível A #564",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000565 se desvio > 0.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000565" },
    gen_id = 564,
}
_SP["PROC-L1-00565"] = {
    title = "Serviço nível B #565",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000566 se desvio > 3.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000566" },
    gen_id = 565,
}
_SP["PROC-L1-00566"] = {
    title = "Serviço nível C #566",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000567 se desvio > 2.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000567" },
    gen_id = 566,
}
_SP["PROC-L1-00567"] = {
    title = "Serviço nível A #567",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000568 se desvio > 0.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000568" },
    gen_id = 567,
}
_SP["PROC-L1-00568"] = {
    title = "Serviço nível B #568",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000569 se desvio > 1.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000569" },
    gen_id = 568,
}
_SP["PROC-L1-00569"] = {
    title = "Serviço nível C #569",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000570 se desvio > 0.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000570" },
    gen_id = 569,
}
_SP["PROC-L1-00570"] = {
    title = "Serviço nível A #570",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000571 se desvio > 1.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000571" },
    gen_id = 570,
}
_SP["PROC-L1-00571"] = {
    title = "Serviço nível B #571",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000572 se desvio > 0.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000572" },
    gen_id = 571,
}
_SP["PROC-L1-00572"] = {
    title = "Serviço nível C #572",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000573 se desvio > 1.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000573" },
    gen_id = 572,
}
_SP["PROC-L1-00573"] = {
    title = "Serviço nível A #573",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000574 se desvio > 3.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000574" },
    gen_id = 573,
}
_SP["PROC-L1-00574"] = {
    title = "Serviço nível B #574",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000575 se desvio > 3.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000575" },
    gen_id = 574,
}
_SP["PROC-L1-00575"] = {
    title = "Serviço nível C #575",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000576 se desvio > 3.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000576" },
    gen_id = 575,
}
_SP["PROC-L1-00576"] = {
    title = "Serviço nível A #576",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000577 se desvio > 1.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000577" },
    gen_id = 576,
}
_SP["PROC-L1-00577"] = {
    title = "Serviço nível B #577",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000578 se desvio > 2.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000578" },
    gen_id = 577,
}
_SP["PROC-L1-00578"] = {
    title = "Serviço nível C #578",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000579 se desvio > 0.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000579" },
    gen_id = 578,
}
_SP["PROC-L1-00579"] = {
    title = "Serviço nível A #579",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000580 se desvio > 3.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000580" },
    gen_id = 579,
}
_SP["PROC-L1-00580"] = {
    title = "Serviço nível B #580",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000581 se desvio > 4.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000581" },
    gen_id = 580,
}
_SP["PROC-L1-00581"] = {
    title = "Serviço nível C #581",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000582 se desvio > 1.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000582" },
    gen_id = 581,
}
_SP["PROC-L1-00582"] = {
    title = "Serviço nível A #582",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000583 se desvio > 2.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000583" },
    gen_id = 582,
}
_SP["PROC-L1-00583"] = {
    title = "Serviço nível B #583",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000584 se desvio > 0.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000584" },
    gen_id = 583,
}
_SP["PROC-L1-00584"] = {
    title = "Serviço nível C #584",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000585 se desvio > 2.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000585" },
    gen_id = 584,
}
_SP["PROC-L1-00585"] = {
    title = "Serviço nível A #585",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000586 se desvio > 0.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000586" },
    gen_id = 585,
}
_SP["PROC-L1-00586"] = {
    title = "Serviço nível B #586",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000587 se desvio > 1.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000587" },
    gen_id = 586,
}
_SP["PROC-L1-00587"] = {
    title = "Serviço nível C #587",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000588 se desvio > 4.94",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000588" },
    gen_id = 587,
}
_SP["PROC-L1-00588"] = {
    title = "Serviço nível A #588",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000589 se desvio > 2.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000589" },
    gen_id = 588,
}
_SP["PROC-L1-00589"] = {
    title = "Serviço nível B #589",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000590 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000590" },
    gen_id = 589,
}
_SP["PROC-L1-00590"] = {
    title = "Serviço nível C #590",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000591 se desvio > 1.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000591" },
    gen_id = 590,
}
_SP["PROC-L1-00591"] = {
    title = "Serviço nível A #591",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000592 se desvio > 0.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000592" },
    gen_id = 591,
}
_SP["PROC-L1-00592"] = {
    title = "Serviço nível B #592",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000593 se desvio > 3.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000593" },
    gen_id = 592,
}
_SP["PROC-L1-00593"] = {
    title = "Serviço nível C #593",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000594 se desvio > 3.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000594" },
    gen_id = 593,
}
_SP["PROC-L1-00594"] = {
    title = "Serviço nível A #594",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000595 se desvio > 0.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000595" },
    gen_id = 594,
}
_SP["PROC-L1-00595"] = {
    title = "Serviço nível B #595",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000596 se desvio > 3.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000596" },
    gen_id = 595,
}
_SP["PROC-L1-00596"] = {
    title = "Serviço nível C #596",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000597 se desvio > 4.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000597" },
    gen_id = 596,
}
_SP["PROC-L1-00597"] = {
    title = "Serviço nível A #597",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000598 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000598" },
    gen_id = 597,
}
_SP["PROC-L1-00598"] = {
    title = "Serviço nível B #598",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000599 se desvio > 3.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000599" },
    gen_id = 598,
}
_SP["PROC-L1-00599"] = {
    title = "Serviço nível C #599",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000600 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000600" },
    gen_id = 599,
}
_SP["PROC-L1-00600"] = {
    title = "Serviço nível A #600",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000601 se desvio > 0.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000601" },
    gen_id = 600,
}
_SP["PROC-L1-00601"] = {
    title = "Serviço nível B #601",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000602 se desvio > 3.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000602" },
    gen_id = 601,
}
_SP["PROC-L1-00602"] = {
    title = "Serviço nível C #602",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000603 se desvio > 1.71",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000603" },
    gen_id = 602,
}
_SP["PROC-L1-00603"] = {
    title = "Serviço nível A #603",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000604 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000604" },
    gen_id = 603,
}
_SP["PROC-L1-00604"] = {
    title = "Serviço nível B #604",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000605 se desvio > 4.71",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000605" },
    gen_id = 604,
}
_SP["PROC-L1-00605"] = {
    title = "Serviço nível C #605",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000606 se desvio > 3.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000606" },
    gen_id = 605,
}
_SP["PROC-L1-00606"] = {
    title = "Serviço nível A #606",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000607 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000607" },
    gen_id = 606,
}
_SP["PROC-L1-00607"] = {
    title = "Serviço nível B #607",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000608 se desvio > 1.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000608" },
    gen_id = 607,
}
_SP["PROC-L1-00608"] = {
    title = "Serviço nível C #608",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000609 se desvio > 4.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000609" },
    gen_id = 608,
}
_SP["PROC-L1-00609"] = {
    title = "Serviço nível A #609",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000610 se desvio > 1.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000610" },
    gen_id = 609,
}
_SP["PROC-L1-00610"] = {
    title = "Serviço nível B #610",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000611 se desvio > 0.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000611" },
    gen_id = 610,
}
_SP["PROC-L1-00611"] = {
    title = "Serviço nível C #611",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000612 se desvio > 3.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000612" },
    gen_id = 611,
}
_SP["PROC-L1-00612"] = {
    title = "Serviço nível A #612",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000613 se desvio > 4.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000613" },
    gen_id = 612,
}
_SP["PROC-L1-00613"] = {
    title = "Serviço nível B #613",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000614 se desvio > 1.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000614" },
    gen_id = 613,
}
_SP["PROC-L1-00614"] = {
    title = "Serviço nível C #614",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000615 se desvio > 4.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000615" },
    gen_id = 614,
}
_SP["PROC-L1-00615"] = {
    title = "Serviço nível A #615",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000616 se desvio > 1.20",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000616" },
    gen_id = 615,
}
_SP["PROC-L1-00616"] = {
    title = "Serviço nível B #616",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000617 se desvio > 1.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000617" },
    gen_id = 616,
}
_SP["PROC-L1-00617"] = {
    title = "Serviço nível C #617",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000618 se desvio > 0.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000618" },
    gen_id = 617,
}
_SP["PROC-L1-00618"] = {
    title = "Serviço nível A #618",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000619 se desvio > 3.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000619" },
    gen_id = 618,
}
_SP["PROC-L1-00619"] = {
    title = "Serviço nível B #619",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000620 se desvio > 2.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000620" },
    gen_id = 619,
}
_SP["PROC-L1-00620"] = {
    title = "Serviço nível C #620",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000621 se desvio > 4.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000621" },
    gen_id = 620,
}
_SP["PROC-L1-00621"] = {
    title = "Serviço nível A #621",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000622 se desvio > 2.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000622" },
    gen_id = 621,
}
_SP["PROC-L1-00622"] = {
    title = "Serviço nível B #622",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000623 se desvio > 2.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000623" },
    gen_id = 622,
}
_SP["PROC-L1-00623"] = {
    title = "Serviço nível C #623",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000624 se desvio > 3.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000624" },
    gen_id = 623,
}
_SP["PROC-L1-00624"] = {
    title = "Serviço nível A #624",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000625 se desvio > 1.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000625" },
    gen_id = 624,
}
_SP["PROC-L1-00625"] = {
    title = "Serviço nível B #625",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000626 se desvio > 2.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000626" },
    gen_id = 625,
}
_SP["PROC-L1-00626"] = {
    title = "Serviço nível C #626",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000627 se desvio > 3.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000627" },
    gen_id = 626,
}
_SP["PROC-L1-00627"] = {
    title = "Serviço nível A #627",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000628 se desvio > 0.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000628" },
    gen_id = 627,
}
_SP["PROC-L1-00628"] = {
    title = "Serviço nível B #628",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000629 se desvio > 2.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000629" },
    gen_id = 628,
}
_SP["PROC-L1-00629"] = {
    title = "Serviço nível C #629",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000630 se desvio > 4.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000630" },
    gen_id = 629,
}
_SP["PROC-L1-00630"] = {
    title = "Serviço nível A #630",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000631 se desvio > 1.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000631" },
    gen_id = 630,
}
_SP["PROC-L1-00631"] = {
    title = "Serviço nível B #631",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000632 se desvio > 0.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000632" },
    gen_id = 631,
}
_SP["PROC-L1-00632"] = {
    title = "Serviço nível C #632",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000633 se desvio > 4.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000633" },
    gen_id = 632,
}
_SP["PROC-L1-00633"] = {
    title = "Serviço nível A #633",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000634 se desvio > 4.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000634" },
    gen_id = 633,
}
_SP["PROC-L1-00634"] = {
    title = "Serviço nível B #634",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000635 se desvio > 4.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000635" },
    gen_id = 634,
}
_SP["PROC-L1-00635"] = {
    title = "Serviço nível C #635",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000636 se desvio > 3.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000636" },
    gen_id = 635,
}
_SP["PROC-L1-00636"] = {
    title = "Serviço nível A #636",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000637 se desvio > 4.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000637" },
    gen_id = 636,
}
_SP["PROC-L1-00637"] = {
    title = "Serviço nível B #637",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000638 se desvio > 0.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000638" },
    gen_id = 637,
}
_SP["PROC-L1-00638"] = {
    title = "Serviço nível C #638",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000639 se desvio > 4.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000639" },
    gen_id = 638,
}
_SP["PROC-L1-00639"] = {
    title = "Serviço nível A #639",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000640 se desvio > 4.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000640" },
    gen_id = 639,
}
_SP["PROC-L1-00640"] = {
    title = "Serviço nível B #640",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000641 se desvio > 1.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000641" },
    gen_id = 640,
}
_SP["PROC-L1-00641"] = {
    title = "Serviço nível C #641",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000642 se desvio > 1.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000642" },
    gen_id = 641,
}
_SP["PROC-L1-00642"] = {
    title = "Serviço nível A #642",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000643 se desvio > 1.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000643" },
    gen_id = 642,
}
_SP["PROC-L1-00643"] = {
    title = "Serviço nível B #643",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000644 se desvio > 1.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000644" },
    gen_id = 643,
}
_SP["PROC-L1-00644"] = {
    title = "Serviço nível C #644",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000645 se desvio > 2.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000645" },
    gen_id = 644,
}
_SP["PROC-L1-00645"] = {
    title = "Serviço nível A #645",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000646 se desvio > 2.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000646" },
    gen_id = 645,
}
_SP["PROC-L1-00646"] = {
    title = "Serviço nível B #646",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000647 se desvio > 4.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000647" },
    gen_id = 646,
}
_SP["PROC-L1-00647"] = {
    title = "Serviço nível C #647",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000648 se desvio > 4.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000648" },
    gen_id = 647,
}
_SP["PROC-L1-00648"] = {
    title = "Serviço nível A #648",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000649 se desvio > 3.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000649" },
    gen_id = 648,
}
_SP["PROC-L1-00649"] = {
    title = "Serviço nível B #649",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000650 se desvio > 1.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000650" },
    gen_id = 649,
}
_SP["PROC-L1-00650"] = {
    title = "Serviço nível C #650",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000651 se desvio > 2.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000651" },
    gen_id = 650,
}
_SP["PROC-L1-00651"] = {
    title = "Serviço nível A #651",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000652 se desvio > 2.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000652" },
    gen_id = 651,
}
_SP["PROC-L1-00652"] = {
    title = "Serviço nível B #652",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000653 se desvio > 3.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000653" },
    gen_id = 652,
}
_SP["PROC-L1-00653"] = {
    title = "Serviço nível C #653",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000654 se desvio > 4.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000654" },
    gen_id = 653,
}
_SP["PROC-L1-00654"] = {
    title = "Serviço nível A #654",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000655 se desvio > 2.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000655" },
    gen_id = 654,
}
_SP["PROC-L1-00655"] = {
    title = "Serviço nível B #655",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000656 se desvio > 1.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000656" },
    gen_id = 655,
}
_SP["PROC-L1-00656"] = {
    title = "Serviço nível C #656",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000657 se desvio > 3.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000657" },
    gen_id = 656,
}
_SP["PROC-L1-00657"] = {
    title = "Serviço nível A #657",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000658 se desvio > 2.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000658" },
    gen_id = 657,
}
_SP["PROC-L1-00658"] = {
    title = "Serviço nível B #658",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000659 se desvio > 4.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000659" },
    gen_id = 658,
}
_SP["PROC-L1-00659"] = {
    title = "Serviço nível C #659",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000660 se desvio > 4.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000660" },
    gen_id = 659,
}
_SP["PROC-L1-00660"] = {
    title = "Serviço nível A #660",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000661 se desvio > 1.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000661" },
    gen_id = 660,
}
_SP["PROC-L1-00661"] = {
    title = "Serviço nível B #661",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000662 se desvio > 4.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000662" },
    gen_id = 661,
}
_SP["PROC-L1-00662"] = {
    title = "Serviço nível C #662",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000663 se desvio > 3.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000663" },
    gen_id = 662,
}
_SP["PROC-L1-00663"] = {
    title = "Serviço nível A #663",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000664 se desvio > 2.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000664" },
    gen_id = 663,
}
_SP["PROC-L1-00664"] = {
    title = "Serviço nível B #664",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000665 se desvio > 4.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000665" },
    gen_id = 664,
}
_SP["PROC-L1-00665"] = {
    title = "Serviço nível C #665",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000666 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000666" },
    gen_id = 665,
}
_SP["PROC-L1-00666"] = {
    title = "Serviço nível A #666",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000667 se desvio > 1.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000667" },
    gen_id = 666,
}
_SP["PROC-L1-00667"] = {
    title = "Serviço nível B #667",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000668 se desvio > 0.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000668" },
    gen_id = 667,
}
_SP["PROC-L1-00668"] = {
    title = "Serviço nível C #668",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000669 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000669" },
    gen_id = 668,
}
_SP["PROC-L1-00669"] = {
    title = "Serviço nível A #669",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000670 se desvio > 0.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000670" },
    gen_id = 669,
}
_SP["PROC-L1-00670"] = {
    title = "Serviço nível B #670",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000671 se desvio > 3.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000671" },
    gen_id = 670,
}
_SP["PROC-L1-00671"] = {
    title = "Serviço nível C #671",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000672 se desvio > 3.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000672" },
    gen_id = 671,
}
_SP["PROC-L1-00672"] = {
    title = "Serviço nível A #672",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000673 se desvio > 3.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000673" },
    gen_id = 672,
}
_SP["PROC-L1-00673"] = {
    title = "Serviço nível B #673",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000674 se desvio > 2.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000674" },
    gen_id = 673,
}
_SP["PROC-L1-00674"] = {
    title = "Serviço nível C #674",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000675 se desvio > 2.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000675" },
    gen_id = 674,
}
_SP["PROC-L1-00675"] = {
    title = "Serviço nível A #675",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000676 se desvio > 1.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000676" },
    gen_id = 675,
}
_SP["PROC-L1-00676"] = {
    title = "Serviço nível B #676",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000677 se desvio > 2.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000677" },
    gen_id = 676,
}
_SP["PROC-L1-00677"] = {
    title = "Serviço nível C #677",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000678 se desvio > 4.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000678" },
    gen_id = 677,
}
_SP["PROC-L1-00678"] = {
    title = "Serviço nível A #678",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000679 se desvio > 2.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000679" },
    gen_id = 678,
}
_SP["PROC-L1-00679"] = {
    title = "Serviço nível B #679",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000680 se desvio > 3.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000680" },
    gen_id = 679,
}
_SP["PROC-L1-00680"] = {
    title = "Serviço nível C #680",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000681 se desvio > 0.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000681" },
    gen_id = 680,
}
_SP["PROC-L1-00681"] = {
    title = "Serviço nível A #681",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000682 se desvio > 0.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000682" },
    gen_id = 681,
}
_SP["PROC-L1-00682"] = {
    title = "Serviço nível B #682",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000683 se desvio > 3.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000683" },
    gen_id = 682,
}
_SP["PROC-L1-00683"] = {
    title = "Serviço nível C #683",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000684 se desvio > 0.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000684" },
    gen_id = 683,
}
_SP["PROC-L1-00684"] = {
    title = "Serviço nível A #684",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000685 se desvio > 1.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000685" },
    gen_id = 684,
}
_SP["PROC-L1-00685"] = {
    title = "Serviço nível B #685",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000686 se desvio > 2.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000686" },
    gen_id = 685,
}
_SP["PROC-L1-00686"] = {
    title = "Serviço nível C #686",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000687 se desvio > 1.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000687" },
    gen_id = 686,
}
_SP["PROC-L1-00687"] = {
    title = "Serviço nível A #687",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000688 se desvio > 0.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000688" },
    gen_id = 687,
}
_SP["PROC-L1-00688"] = {
    title = "Serviço nível B #688",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000689 se desvio > 4.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000689" },
    gen_id = 688,
}
_SP["PROC-L1-00689"] = {
    title = "Serviço nível C #689",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000690 se desvio > 1.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000690" },
    gen_id = 689,
}
_SP["PROC-L1-00690"] = {
    title = "Serviço nível A #690",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000691 se desvio > 1.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000691" },
    gen_id = 690,
}
_SP["PROC-L1-00691"] = {
    title = "Serviço nível B #691",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000692 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000692" },
    gen_id = 691,
}
_SP["PROC-L1-00692"] = {
    title = "Serviço nível C #692",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000693 se desvio > 3.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000693" },
    gen_id = 692,
}
_SP["PROC-L1-00693"] = {
    title = "Serviço nível A #693",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000694 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000694" },
    gen_id = 693,
}
_SP["PROC-L1-00694"] = {
    title = "Serviço nível B #694",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000695 se desvio > 3.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000695" },
    gen_id = 694,
}
_SP["PROC-L1-00695"] = {
    title = "Serviço nível C #695",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000696 se desvio > 3.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000696" },
    gen_id = 695,
}
_SP["PROC-L1-00696"] = {
    title = "Serviço nível A #696",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000697 se desvio > 3.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000697" },
    gen_id = 696,
}
_SP["PROC-L1-00697"] = {
    title = "Serviço nível B #697",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000698 se desvio > 4.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000698" },
    gen_id = 697,
}
_SP["PROC-L1-00698"] = {
    title = "Serviço nível C #698",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000699 se desvio > 2.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000699" },
    gen_id = 698,
}
_SP["PROC-L1-00699"] = {
    title = "Serviço nível A #699",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000700 se desvio > 4.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000700" },
    gen_id = 699,
}
_SP["PROC-L1-00700"] = {
    title = "Serviço nível B #700",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000701 se desvio > 3.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000701" },
    gen_id = 700,
}
_SP["PROC-L1-00701"] = {
    title = "Serviço nível C #701",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000702 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000702" },
    gen_id = 701,
}
_SP["PROC-L1-00702"] = {
    title = "Serviço nível A #702",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000703 se desvio > 2.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000703" },
    gen_id = 702,
}
_SP["PROC-L1-00703"] = {
    title = "Serviço nível B #703",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000704 se desvio > 0.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000704" },
    gen_id = 703,
}
_SP["PROC-L1-00704"] = {
    title = "Serviço nível C #704",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000705 se desvio > 3.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000705" },
    gen_id = 704,
}
_SP["PROC-L1-00705"] = {
    title = "Serviço nível A #705",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000706 se desvio > 4.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000706" },
    gen_id = 705,
}
_SP["PROC-L1-00706"] = {
    title = "Serviço nível B #706",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000707 se desvio > 2.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000707" },
    gen_id = 706,
}
_SP["PROC-L1-00707"] = {
    title = "Serviço nível C #707",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000708 se desvio > 4.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000708" },
    gen_id = 707,
}
_SP["PROC-L1-00708"] = {
    title = "Serviço nível A #708",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000709 se desvio > 4.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000709" },
    gen_id = 708,
}
_SP["PROC-L1-00709"] = {
    title = "Serviço nível B #709",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000710 se desvio > 3.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000710" },
    gen_id = 709,
}
_SP["PROC-L1-00710"] = {
    title = "Serviço nível C #710",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000711 se desvio > 0.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000711" },
    gen_id = 710,
}
_SP["PROC-L1-00711"] = {
    title = "Serviço nível A #711",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000712 se desvio > 3.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000712" },
    gen_id = 711,
}
_SP["PROC-L1-00712"] = {
    title = "Serviço nível B #712",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000713 se desvio > 0.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000713" },
    gen_id = 712,
}
_SP["PROC-L1-00713"] = {
    title = "Serviço nível C #713",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000714 se desvio > 2.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000714" },
    gen_id = 713,
}
_SP["PROC-L1-00714"] = {
    title = "Serviço nível A #714",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000715 se desvio > 3.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000715" },
    gen_id = 714,
}
_SP["PROC-L1-00715"] = {
    title = "Serviço nível B #715",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000716 se desvio > 1.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000716" },
    gen_id = 715,
}
_SP["PROC-L1-00716"] = {
    title = "Serviço nível C #716",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000717 se desvio > 1.94",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000717" },
    gen_id = 716,
}
_SP["PROC-L1-00717"] = {
    title = "Serviço nível A #717",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000718 se desvio > 4.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000718" },
    gen_id = 717,
}
_SP["PROC-L1-00718"] = {
    title = "Serviço nível B #718",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000719 se desvio > 3.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000719" },
    gen_id = 718,
}
_SP["PROC-L1-00719"] = {
    title = "Serviço nível C #719",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000720 se desvio > 0.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000720" },
    gen_id = 719,
}
_SP["PROC-L1-00720"] = {
    title = "Serviço nível A #720",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000721 se desvio > 2.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000721" },
    gen_id = 720,
}
_SP["PROC-L1-00721"] = {
    title = "Serviço nível B #721",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000722 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000722" },
    gen_id = 721,
}
_SP["PROC-L1-00722"] = {
    title = "Serviço nível C #722",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000723 se desvio > 0.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000723" },
    gen_id = 722,
}
_SP["PROC-L1-00723"] = {
    title = "Serviço nível A #723",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000724 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000724" },
    gen_id = 723,
}
_SP["PROC-L1-00724"] = {
    title = "Serviço nível B #724",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000725 se desvio > 0.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000725" },
    gen_id = 724,
}
_SP["PROC-L1-00725"] = {
    title = "Serviço nível C #725",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000726 se desvio > 1.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000726" },
    gen_id = 725,
}
_SP["PROC-L1-00726"] = {
    title = "Serviço nível A #726",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000727 se desvio > 2.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000727" },
    gen_id = 726,
}
_SP["PROC-L1-00727"] = {
    title = "Serviço nível B #727",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000728 se desvio > 3.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000728" },
    gen_id = 727,
}
_SP["PROC-L1-00728"] = {
    title = "Serviço nível C #728",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000729 se desvio > 4.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000729" },
    gen_id = 728,
}
_SP["PROC-L1-00729"] = {
    title = "Serviço nível A #729",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000730 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000730" },
    gen_id = 729,
}
_SP["PROC-L1-00730"] = {
    title = "Serviço nível B #730",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000731 se desvio > 1.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000731" },
    gen_id = 730,
}
_SP["PROC-L1-00731"] = {
    title = "Serviço nível C #731",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000732 se desvio > 2.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000732" },
    gen_id = 731,
}
_SP["PROC-L1-00732"] = {
    title = "Serviço nível A #732",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000733 se desvio > 1.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000733" },
    gen_id = 732,
}
_SP["PROC-L1-00733"] = {
    title = "Serviço nível B #733",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000734 se desvio > 2.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000734" },
    gen_id = 733,
}
_SP["PROC-L1-00734"] = {
    title = "Serviço nível C #734",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000735 se desvio > 1.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000735" },
    gen_id = 734,
}
_SP["PROC-L1-00735"] = {
    title = "Serviço nível A #735",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000736 se desvio > 0.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000736" },
    gen_id = 735,
}
_SP["PROC-L1-00736"] = {
    title = "Serviço nível B #736",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000737 se desvio > 4.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000737" },
    gen_id = 736,
}
_SP["PROC-L1-00737"] = {
    title = "Serviço nível C #737",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000738 se desvio > 1.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000738" },
    gen_id = 737,
}
_SP["PROC-L1-00738"] = {
    title = "Serviço nível A #738",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000739 se desvio > 3.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000739" },
    gen_id = 738,
}
_SP["PROC-L1-00739"] = {
    title = "Serviço nível B #739",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000740 se desvio > 4.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000740" },
    gen_id = 739,
}
_SP["PROC-L1-00740"] = {
    title = "Serviço nível C #740",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000741 se desvio > 2.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000741" },
    gen_id = 740,
}
_SP["PROC-L1-00741"] = {
    title = "Serviço nível A #741",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000742 se desvio > 1.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000742" },
    gen_id = 741,
}
_SP["PROC-L1-00742"] = {
    title = "Serviço nível B #742",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000743 se desvio > 2.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000743" },
    gen_id = 742,
}
_SP["PROC-L1-00743"] = {
    title = "Serviço nível C #743",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000744 se desvio > 4.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000744" },
    gen_id = 743,
}
_SP["PROC-L1-00744"] = {
    title = "Serviço nível A #744",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000745 se desvio > 3.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000745" },
    gen_id = 744,
}
_SP["PROC-L1-00745"] = {
    title = "Serviço nível B #745",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000746 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000746" },
    gen_id = 745,
}
_SP["PROC-L1-00746"] = {
    title = "Serviço nível C #746",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000747 se desvio > 3.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000747" },
    gen_id = 746,
}
_SP["PROC-L1-00747"] = {
    title = "Serviço nível A #747",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000748 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000748" },
    gen_id = 747,
}
_SP["PROC-L1-00748"] = {
    title = "Serviço nível B #748",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000749 se desvio > 2.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000749" },
    gen_id = 748,
}
_SP["PROC-L1-00749"] = {
    title = "Serviço nível C #749",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000750 se desvio > 4.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000750" },
    gen_id = 749,
}
_SP["PROC-L1-00750"] = {
    title = "Serviço nível A #750",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000751 se desvio > 4.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000751" },
    gen_id = 750,
}
_SP["PROC-L1-00751"] = {
    title = "Serviço nível B #751",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000752 se desvio > 1.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000752" },
    gen_id = 751,
}
_SP["PROC-L1-00752"] = {
    title = "Serviço nível C #752",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000753 se desvio > 4.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000753" },
    gen_id = 752,
}
_SP["PROC-L1-00753"] = {
    title = "Serviço nível A #753",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000754 se desvio > 2.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000754" },
    gen_id = 753,
}
_SP["PROC-L1-00754"] = {
    title = "Serviço nível B #754",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000755 se desvio > 4.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000755" },
    gen_id = 754,
}
_SP["PROC-L1-00755"] = {
    title = "Serviço nível C #755",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000756 se desvio > 3.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000756" },
    gen_id = 755,
}
_SP["PROC-L1-00756"] = {
    title = "Serviço nível A #756",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000757 se desvio > 0.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000757" },
    gen_id = 756,
}
_SP["PROC-L1-00757"] = {
    title = "Serviço nível B #757",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000758 se desvio > 2.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000758" },
    gen_id = 757,
}
_SP["PROC-L1-00758"] = {
    title = "Serviço nível C #758",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000759 se desvio > 4.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000759" },
    gen_id = 758,
}
_SP["PROC-L1-00759"] = {
    title = "Serviço nível A #759",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000760 se desvio > 4.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000760" },
    gen_id = 759,
}
_SP["PROC-L1-00760"] = {
    title = "Serviço nível B #760",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000761 se desvio > 3.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000761" },
    gen_id = 760,
}
_SP["PROC-L1-00761"] = {
    title = "Serviço nível C #761",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000762 se desvio > 2.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000762" },
    gen_id = 761,
}
_SP["PROC-L1-00762"] = {
    title = "Serviço nível A #762",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000763 se desvio > 4.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000763" },
    gen_id = 762,
}
_SP["PROC-L1-00763"] = {
    title = "Serviço nível B #763",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000764 se desvio > 2.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000764" },
    gen_id = 763,
}
_SP["PROC-L1-00764"] = {
    title = "Serviço nível C #764",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000765 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000765" },
    gen_id = 764,
}
_SP["PROC-L1-00765"] = {
    title = "Serviço nível A #765",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000766 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000766" },
    gen_id = 765,
}
_SP["PROC-L1-00766"] = {
    title = "Serviço nível B #766",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000767 se desvio > 1.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000767" },
    gen_id = 766,
}
_SP["PROC-L1-00767"] = {
    title = "Serviço nível C #767",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000768 se desvio > 3.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000768" },
    gen_id = 767,
}
_SP["PROC-L1-00768"] = {
    title = "Serviço nível A #768",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000769 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000769" },
    gen_id = 768,
}
_SP["PROC-L1-00769"] = {
    title = "Serviço nível B #769",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000770 se desvio > 0.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000770" },
    gen_id = 769,
}
_SP["PROC-L1-00770"] = {
    title = "Serviço nível C #770",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000771 se desvio > 4.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000771" },
    gen_id = 770,
}
_SP["PROC-L1-00771"] = {
    title = "Serviço nível A #771",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000772 se desvio > 3.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000772" },
    gen_id = 771,
}
_SP["PROC-L1-00772"] = {
    title = "Serviço nível B #772",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000773 se desvio > 2.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000773" },
    gen_id = 772,
}
_SP["PROC-L1-00773"] = {
    title = "Serviço nível C #773",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000774 se desvio > 0.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000774" },
    gen_id = 773,
}
_SP["PROC-L1-00774"] = {
    title = "Serviço nível A #774",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000775 se desvio > 2.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000775" },
    gen_id = 774,
}
_SP["PROC-L1-00775"] = {
    title = "Serviço nível B #775",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000776 se desvio > 4.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000776" },
    gen_id = 775,
}
_SP["PROC-L1-00776"] = {
    title = "Serviço nível C #776",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000777 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000777" },
    gen_id = 776,
}
_SP["PROC-L1-00777"] = {
    title = "Serviço nível A #777",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000778 se desvio > 3.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000778" },
    gen_id = 777,
}
_SP["PROC-L1-00778"] = {
    title = "Serviço nível B #778",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000779 se desvio > 0.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000779" },
    gen_id = 778,
}
_SP["PROC-L1-00779"] = {
    title = "Serviço nível C #779",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000780 se desvio > 3.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000780" },
    gen_id = 779,
}
_SP["PROC-L1-00780"] = {
    title = "Serviço nível A #780",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000781 se desvio > 2.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000781" },
    gen_id = 780,
}
_SP["PROC-L1-00781"] = {
    title = "Serviço nível B #781",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000782 se desvio > 3.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000782" },
    gen_id = 781,
}
_SP["PROC-L1-00782"] = {
    title = "Serviço nível C #782",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000783 se desvio > 0.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000783" },
    gen_id = 782,
}
_SP["PROC-L1-00783"] = {
    title = "Serviço nível A #783",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000784 se desvio > 4.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000784" },
    gen_id = 783,
}
_SP["PROC-L1-00784"] = {
    title = "Serviço nível B #784",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000785 se desvio > 1.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000785" },
    gen_id = 784,
}
_SP["PROC-L1-00785"] = {
    title = "Serviço nível C #785",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000786 se desvio > 2.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000786" },
    gen_id = 785,
}
_SP["PROC-L1-00786"] = {
    title = "Serviço nível A #786",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000787 se desvio > 3.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000787" },
    gen_id = 786,
}
_SP["PROC-L1-00787"] = {
    title = "Serviço nível B #787",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000788 se desvio > 0.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000788" },
    gen_id = 787,
}
_SP["PROC-L1-00788"] = {
    title = "Serviço nível C #788",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000789 se desvio > 3.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000789" },
    gen_id = 788,
}
_SP["PROC-L1-00789"] = {
    title = "Serviço nível A #789",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000790 se desvio > 2.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000790" },
    gen_id = 789,
}
_SP["PROC-L1-00790"] = {
    title = "Serviço nível B #790",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000791 se desvio > 1.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000791" },
    gen_id = 790,
}
_SP["PROC-L1-00791"] = {
    title = "Serviço nível C #791",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000792 se desvio > 0.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000792" },
    gen_id = 791,
}
_SP["PROC-L1-00792"] = {
    title = "Serviço nível A #792",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000793 se desvio > 0.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000793" },
    gen_id = 792,
}
_SP["PROC-L1-00793"] = {
    title = "Serviço nível B #793",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000794 se desvio > 1.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000794" },
    gen_id = 793,
}
_SP["PROC-L1-00794"] = {
    title = "Serviço nível C #794",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000795 se desvio > 3.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000795" },
    gen_id = 794,
}
_SP["PROC-L1-00795"] = {
    title = "Serviço nível A #795",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000796 se desvio > 2.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000796" },
    gen_id = 795,
}
_SP["PROC-L1-00796"] = {
    title = "Serviço nível B #796",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000797 se desvio > 2.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000797" },
    gen_id = 796,
}
_SP["PROC-L1-00797"] = {
    title = "Serviço nível C #797",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000798 se desvio > 4.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000798" },
    gen_id = 797,
}
_SP["PROC-L1-00798"] = {
    title = "Serviço nível A #798",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000799 se desvio > 3.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000799" },
    gen_id = 798,
}
_SP["PROC-L1-00799"] = {
    title = "Serviço nível B #799",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000800 se desvio > 2.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000800" },
    gen_id = 799,
}
_SP["PROC-L1-00800"] = {
    title = "Serviço nível C #800",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000801 se desvio > 3.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000801" },
    gen_id = 800,
}
_SP["PROC-L1-00801"] = {
    title = "Serviço nível A #801",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000802 se desvio > 3.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000802" },
    gen_id = 801,
}
_SP["PROC-L1-00802"] = {
    title = "Serviço nível B #802",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000803 se desvio > 1.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000803" },
    gen_id = 802,
}
_SP["PROC-L1-00803"] = {
    title = "Serviço nível C #803",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000804 se desvio > 1.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000804" },
    gen_id = 803,
}
_SP["PROC-L1-00804"] = {
    title = "Serviço nível A #804",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000805 se desvio > 2.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000805" },
    gen_id = 804,
}
_SP["PROC-L1-00805"] = {
    title = "Serviço nível B #805",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000806 se desvio > 4.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000806" },
    gen_id = 805,
}
_SP["PROC-L1-00806"] = {
    title = "Serviço nível C #806",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000807 se desvio > 1.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000807" },
    gen_id = 806,
}
_SP["PROC-L1-00807"] = {
    title = "Serviço nível A #807",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000808 se desvio > 4.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000808" },
    gen_id = 807,
}
_SP["PROC-L1-00808"] = {
    title = "Serviço nível B #808",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000809 se desvio > 1.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000809" },
    gen_id = 808,
}
_SP["PROC-L1-00809"] = {
    title = "Serviço nível C #809",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000810 se desvio > 2.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000810" },
    gen_id = 809,
}
_SP["PROC-L1-00810"] = {
    title = "Serviço nível A #810",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000811 se desvio > 1.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000811" },
    gen_id = 810,
}
_SP["PROC-L1-00811"] = {
    title = "Serviço nível B #811",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000812 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000812" },
    gen_id = 811,
}
_SP["PROC-L1-00812"] = {
    title = "Serviço nível C #812",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000813 se desvio > 3.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000813" },
    gen_id = 812,
}
_SP["PROC-L1-00813"] = {
    title = "Serviço nível A #813",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000814 se desvio > 1.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000814" },
    gen_id = 813,
}
_SP["PROC-L1-00814"] = {
    title = "Serviço nível B #814",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000815 se desvio > 2.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000815" },
    gen_id = 814,
}
_SP["PROC-L1-00815"] = {
    title = "Serviço nível C #815",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000816 se desvio > 4.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000816" },
    gen_id = 815,
}
_SP["PROC-L1-00816"] = {
    title = "Serviço nível A #816",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000817 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000817" },
    gen_id = 816,
}
_SP["PROC-L1-00817"] = {
    title = "Serviço nível B #817",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000818 se desvio > 2.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000818" },
    gen_id = 817,
}
_SP["PROC-L1-00818"] = {
    title = "Serviço nível C #818",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000819 se desvio > 4.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000819" },
    gen_id = 818,
}
_SP["PROC-L1-00819"] = {
    title = "Serviço nível A #819",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000820 se desvio > 3.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000820" },
    gen_id = 819,
}
_SP["PROC-L1-00820"] = {
    title = "Serviço nível B #820",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000821 se desvio > 4.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000821" },
    gen_id = 820,
}
_SP["PROC-L1-00821"] = {
    title = "Serviço nível C #821",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000822 se desvio > 1.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000822" },
    gen_id = 821,
}
_SP["PROC-L1-00822"] = {
    title = "Serviço nível A #822",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000823 se desvio > 4.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000823" },
    gen_id = 822,
}
_SP["PROC-L1-00823"] = {
    title = "Serviço nível B #823",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000824 se desvio > 2.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000824" },
    gen_id = 823,
}
_SP["PROC-L1-00824"] = {
    title = "Serviço nível C #824",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000825 se desvio > 0.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000825" },
    gen_id = 824,
}
_SP["PROC-L1-00825"] = {
    title = "Serviço nível A #825",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000826 se desvio > 2.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000826" },
    gen_id = 825,
}
_SP["PROC-L1-00826"] = {
    title = "Serviço nível B #826",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000827 se desvio > 3.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000827" },
    gen_id = 826,
}
_SP["PROC-L1-00827"] = {
    title = "Serviço nível C #827",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000828 se desvio > 2.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000828" },
    gen_id = 827,
}
_SP["PROC-L1-00828"] = {
    title = "Serviço nível A #828",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000829 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000829" },
    gen_id = 828,
}
_SP["PROC-L1-00829"] = {
    title = "Serviço nível B #829",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000830 se desvio > 1.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000830" },
    gen_id = 829,
}
_SP["PROC-L1-00830"] = {
    title = "Serviço nível C #830",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000831 se desvio > 1.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000831" },
    gen_id = 830,
}
_SP["PROC-L1-00831"] = {
    title = "Serviço nível A #831",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000832 se desvio > 1.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000832" },
    gen_id = 831,
}
_SP["PROC-L1-00832"] = {
    title = "Serviço nível B #832",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000833 se desvio > 1.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000833" },
    gen_id = 832,
}
_SP["PROC-L1-00833"] = {
    title = "Serviço nível C #833",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000834 se desvio > 2.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000834" },
    gen_id = 833,
}
_SP["PROC-L1-00834"] = {
    title = "Serviço nível A #834",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000835 se desvio > 2.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000835" },
    gen_id = 834,
}
_SP["PROC-L1-00835"] = {
    title = "Serviço nível B #835",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000836 se desvio > 1.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000836" },
    gen_id = 835,
}
_SP["PROC-L1-00836"] = {
    title = "Serviço nível C #836",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000837 se desvio > 4.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000837" },
    gen_id = 836,
}
_SP["PROC-L1-00837"] = {
    title = "Serviço nível A #837",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000838 se desvio > 4.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000838" },
    gen_id = 837,
}
_SP["PROC-L1-00838"] = {
    title = "Serviço nível B #838",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000839 se desvio > 4.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000839" },
    gen_id = 838,
}
_SP["PROC-L1-00839"] = {
    title = "Serviço nível C #839",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000840 se desvio > 3.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000840" },
    gen_id = 839,
}
_SP["PROC-L1-00840"] = {
    title = "Serviço nível A #840",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000841 se desvio > 2.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000841" },
    gen_id = 840,
}
_SP["PROC-L1-00841"] = {
    title = "Serviço nível B #841",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000842 se desvio > 3.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000842" },
    gen_id = 841,
}
_SP["PROC-L1-00842"] = {
    title = "Serviço nível C #842",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000843 se desvio > 0.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000843" },
    gen_id = 842,
}
_SP["PROC-L1-00843"] = {
    title = "Serviço nível A #843",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000844 se desvio > 3.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000844" },
    gen_id = 843,
}
_SP["PROC-L1-00844"] = {
    title = "Serviço nível B #844",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000845 se desvio > 0.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000845" },
    gen_id = 844,
}
_SP["PROC-L1-00845"] = {
    title = "Serviço nível C #845",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000846 se desvio > 2.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000846" },
    gen_id = 845,
}
_SP["PROC-L1-00846"] = {
    title = "Serviço nível A #846",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000847 se desvio > 0.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000847" },
    gen_id = 846,
}
_SP["PROC-L1-00847"] = {
    title = "Serviço nível B #847",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000848 se desvio > 2.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000848" },
    gen_id = 847,
}
_SP["PROC-L1-00848"] = {
    title = "Serviço nível C #848",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000849 se desvio > 1.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000849" },
    gen_id = 848,
}
_SP["PROC-L1-00849"] = {
    title = "Serviço nível A #849",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000850 se desvio > 1.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000850" },
    gen_id = 849,
}
_SP["PROC-L1-00850"] = {
    title = "Serviço nível B #850",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000851 se desvio > 0.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000851" },
    gen_id = 850,
}
_SP["PROC-L1-00851"] = {
    title = "Serviço nível C #851",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000852 se desvio > 3.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000852" },
    gen_id = 851,
}
_SP["PROC-L1-00852"] = {
    title = "Serviço nível A #852",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000853 se desvio > 4.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000853" },
    gen_id = 852,
}
_SP["PROC-L1-00853"] = {
    title = "Serviço nível B #853",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000854 se desvio > 4.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000854" },
    gen_id = 853,
}
_SP["PROC-L1-00854"] = {
    title = "Serviço nível C #854",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000855 se desvio > 1.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000855" },
    gen_id = 854,
}
_SP["PROC-L1-00855"] = {
    title = "Serviço nível A #855",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000856 se desvio > 4.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000856" },
    gen_id = 855,
}
_SP["PROC-L1-00856"] = {
    title = "Serviço nível B #856",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000857 se desvio > 0.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000857" },
    gen_id = 856,
}
_SP["PROC-L1-00857"] = {
    title = "Serviço nível C #857",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000858 se desvio > 2.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000858" },
    gen_id = 857,
}
_SP["PROC-L1-00858"] = {
    title = "Serviço nível A #858",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000859 se desvio > 0.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000859" },
    gen_id = 858,
}
_SP["PROC-L1-00859"] = {
    title = "Serviço nível B #859",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000860 se desvio > 3.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000860" },
    gen_id = 859,
}
_SP["PROC-L1-00860"] = {
    title = "Serviço nível C #860",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000861 se desvio > 3.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000861" },
    gen_id = 860,
}
_SP["PROC-L1-00861"] = {
    title = "Serviço nível A #861",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000862 se desvio > 4.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000862" },
    gen_id = 861,
}
_SP["PROC-L1-00862"] = {
    title = "Serviço nível B #862",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000863 se desvio > 0.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000863" },
    gen_id = 862,
}
_SP["PROC-L1-00863"] = {
    title = "Serviço nível C #863",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000864 se desvio > 1.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000864" },
    gen_id = 863,
}
_SP["PROC-L1-00864"] = {
    title = "Serviço nível A #864",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000865 se desvio > 3.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000865" },
    gen_id = 864,
}
_SP["PROC-L1-00865"] = {
    title = "Serviço nível B #865",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000866 se desvio > 0.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000866" },
    gen_id = 865,
}
_SP["PROC-L1-00866"] = {
    title = "Serviço nível C #866",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000867 se desvio > 1.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000867" },
    gen_id = 866,
}
_SP["PROC-L1-00867"] = {
    title = "Serviço nível A #867",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000868 se desvio > 3.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000868" },
    gen_id = 867,
}
_SP["PROC-L1-00868"] = {
    title = "Serviço nível B #868",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000869 se desvio > 2.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000869" },
    gen_id = 868,
}
_SP["PROC-L1-00869"] = {
    title = "Serviço nível C #869",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000870 se desvio > 4.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000870" },
    gen_id = 869,
}
_SP["PROC-L1-00870"] = {
    title = "Serviço nível A #870",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000871 se desvio > 3.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000871" },
    gen_id = 870,
}
_SP["PROC-L1-00871"] = {
    title = "Serviço nível B #871",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000872 se desvio > 0.20",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000872" },
    gen_id = 871,
}
_SP["PROC-L1-00872"] = {
    title = "Serviço nível C #872",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000873 se desvio > 1.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000873" },
    gen_id = 872,
}
_SP["PROC-L1-00873"] = {
    title = "Serviço nível A #873",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000874 se desvio > 4.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000874" },
    gen_id = 873,
}
_SP["PROC-L1-00874"] = {
    title = "Serviço nível B #874",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000875 se desvio > 3.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000875" },
    gen_id = 874,
}
_SP["PROC-L1-00875"] = {
    title = "Serviço nível C #875",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000876 se desvio > 4.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000876" },
    gen_id = 875,
}
_SP["PROC-L1-00876"] = {
    title = "Serviço nível A #876",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000877 se desvio > 1.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000877" },
    gen_id = 876,
}
_SP["PROC-L1-00877"] = {
    title = "Serviço nível B #877",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000878 se desvio > 3.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000878" },
    gen_id = 877,
}
_SP["PROC-L1-00878"] = {
    title = "Serviço nível C #878",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000879 se desvio > 0.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000879" },
    gen_id = 878,
}
_SP["PROC-L1-00879"] = {
    title = "Serviço nível A #879",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000880 se desvio > 2.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000880" },
    gen_id = 879,
}
_SP["PROC-L1-00880"] = {
    title = "Serviço nível B #880",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000881 se desvio > 1.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000881" },
    gen_id = 880,
}
_SP["PROC-L1-00881"] = {
    title = "Serviço nível C #881",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000882 se desvio > 2.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000882" },
    gen_id = 881,
}
_SP["PROC-L1-00882"] = {
    title = "Serviço nível A #882",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000883 se desvio > 3.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000883" },
    gen_id = 882,
}
_SP["PROC-L1-00883"] = {
    title = "Serviço nível B #883",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000884 se desvio > 3.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000884" },
    gen_id = 883,
}
_SP["PROC-L1-00884"] = {
    title = "Serviço nível C #884",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000885 se desvio > 1.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000885" },
    gen_id = 884,
}
_SP["PROC-L1-00885"] = {
    title = "Serviço nível A #885",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000886 se desvio > 1.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000886" },
    gen_id = 885,
}
_SP["PROC-L1-00886"] = {
    title = "Serviço nível B #886",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000887 se desvio > 0.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000887" },
    gen_id = 886,
}
_SP["PROC-L1-00887"] = {
    title = "Serviço nível C #887",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000888 se desvio > 3.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000888" },
    gen_id = 887,
}
_SP["PROC-L1-00888"] = {
    title = "Serviço nível A #888",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000889 se desvio > 2.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000889" },
    gen_id = 888,
}
_SP["PROC-L1-00889"] = {
    title = "Serviço nível B #889",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000890 se desvio > 4.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000890" },
    gen_id = 889,
}
_SP["PROC-L1-00890"] = {
    title = "Serviço nível C #890",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000891 se desvio > 2.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000891" },
    gen_id = 890,
}
_SP["PROC-L1-00891"] = {
    title = "Serviço nível A #891",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000892 se desvio > 3.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000892" },
    gen_id = 891,
}
_SP["PROC-L1-00892"] = {
    title = "Serviço nível B #892",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000893 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000893" },
    gen_id = 892,
}
_SP["PROC-L1-00893"] = {
    title = "Serviço nível C #893",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000894 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000894" },
    gen_id = 893,
}
_SP["PROC-L1-00894"] = {
    title = "Serviço nível A #894",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000895 se desvio > 1.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000895" },
    gen_id = 894,
}
_SP["PROC-L1-00895"] = {
    title = "Serviço nível B #895",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000896 se desvio > 3.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000896" },
    gen_id = 895,
}
_SP["PROC-L1-00896"] = {
    title = "Serviço nível C #896",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000897 se desvio > 0.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000897" },
    gen_id = 896,
}
_SP["PROC-L1-00897"] = {
    title = "Serviço nível A #897",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000898 se desvio > 4.89",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000898" },
    gen_id = 897,
}
_SP["PROC-L1-00898"] = {
    title = "Serviço nível B #898",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000899 se desvio > 0.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000899" },
    gen_id = 898,
}
_SP["PROC-L1-00899"] = {
    title = "Serviço nível C #899",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000900 se desvio > 2.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000900" },
    gen_id = 899,
}
_SP["PROC-L1-00900"] = {
    title = "Serviço nível A #900",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000901 se desvio > 1.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000901" },
    gen_id = 900,
}
_SP["PROC-L1-00901"] = {
    title = "Serviço nível B #901",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000902 se desvio > 3.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000902" },
    gen_id = 901,
}
_SP["PROC-L1-00902"] = {
    title = "Serviço nível C #902",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000903 se desvio > 0.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000903" },
    gen_id = 902,
}
_SP["PROC-L1-00903"] = {
    title = "Serviço nível A #903",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000904 se desvio > 3.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000904" },
    gen_id = 903,
}
_SP["PROC-L1-00904"] = {
    title = "Serviço nível B #904",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000905 se desvio > 0.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000905" },
    gen_id = 904,
}
_SP["PROC-L1-00905"] = {
    title = "Serviço nível C #905",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000906 se desvio > 1.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000906" },
    gen_id = 905,
}
_SP["PROC-L1-00906"] = {
    title = "Serviço nível A #906",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000907 se desvio > 3.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000907" },
    gen_id = 906,
}
_SP["PROC-L1-00907"] = {
    title = "Serviço nível B #907",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000908 se desvio > 4.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000908" },
    gen_id = 907,
}
_SP["PROC-L1-00908"] = {
    title = "Serviço nível C #908",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000909 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000909" },
    gen_id = 908,
}
_SP["PROC-L1-00909"] = {
    title = "Serviço nível A #909",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000910 se desvio > 4.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000910" },
    gen_id = 909,
}
_SP["PROC-L1-00910"] = {
    title = "Serviço nível B #910",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000911 se desvio > 2.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000911" },
    gen_id = 910,
}
_SP["PROC-L1-00911"] = {
    title = "Serviço nível C #911",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000912 se desvio > 1.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000912" },
    gen_id = 911,
}
_SP["PROC-L1-00912"] = {
    title = "Serviço nível A #912",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000913 se desvio > 1.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000913" },
    gen_id = 912,
}
_SP["PROC-L1-00913"] = {
    title = "Serviço nível B #913",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000914 se desvio > 0.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000914" },
    gen_id = 913,
}
_SP["PROC-L1-00914"] = {
    title = "Serviço nível C #914",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000915 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000915" },
    gen_id = 914,
}
_SP["PROC-L1-00915"] = {
    title = "Serviço nível A #915",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000916 se desvio > 4.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000916" },
    gen_id = 915,
}
_SP["PROC-L1-00916"] = {
    title = "Serviço nível B #916",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000917 se desvio > 3.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000917" },
    gen_id = 916,
}
_SP["PROC-L1-00917"] = {
    title = "Serviço nível C #917",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000918 se desvio > 1.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000918" },
    gen_id = 917,
}
_SP["PROC-L1-00918"] = {
    title = "Serviço nível A #918",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000919 se desvio > 0.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000919" },
    gen_id = 918,
}
_SP["PROC-L1-00919"] = {
    title = "Serviço nível B #919",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000920 se desvio > 1.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000920" },
    gen_id = 919,
}
_SP["PROC-L1-00920"] = {
    title = "Serviço nível C #920",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000921 se desvio > 1.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000921" },
    gen_id = 920,
}
_SP["PROC-L1-00921"] = {
    title = "Serviço nível A #921",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000922 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000922" },
    gen_id = 921,
}
_SP["PROC-L1-00922"] = {
    title = "Serviço nível B #922",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000923 se desvio > 0.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000923" },
    gen_id = 922,
}
_SP["PROC-L1-00923"] = {
    title = "Serviço nível C #923",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000924 se desvio > 3.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000924" },
    gen_id = 923,
}
_SP["PROC-L1-00924"] = {
    title = "Serviço nível A #924",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000925 se desvio > 1.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000925" },
    gen_id = 924,
}
_SP["PROC-L1-00925"] = {
    title = "Serviço nível B #925",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000926 se desvio > 0.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000926" },
    gen_id = 925,
}
_SP["PROC-L1-00926"] = {
    title = "Serviço nível C #926",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000927 se desvio > 2.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000927" },
    gen_id = 926,
}
_SP["PROC-L1-00927"] = {
    title = "Serviço nível A #927",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000928 se desvio > 2.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000928" },
    gen_id = 927,
}
_SP["PROC-L1-00928"] = {
    title = "Serviço nível B #928",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000929 se desvio > 0.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000929" },
    gen_id = 928,
}
_SP["PROC-L1-00929"] = {
    title = "Serviço nível C #929",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000930 se desvio > 0.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000930" },
    gen_id = 929,
}
_SP["PROC-L1-00930"] = {
    title = "Serviço nível A #930",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000931 se desvio > 2.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000931" },
    gen_id = 930,
}
_SP["PROC-L1-00931"] = {
    title = "Serviço nível B #931",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000932 se desvio > 2.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000932" },
    gen_id = 931,
}
_SP["PROC-L1-00932"] = {
    title = "Serviço nível C #932",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000933 se desvio > 0.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000933" },
    gen_id = 932,
}
_SP["PROC-L1-00933"] = {
    title = "Serviço nível A #933",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000934 se desvio > 1.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000934" },
    gen_id = 933,
}
_SP["PROC-L1-00934"] = {
    title = "Serviço nível B #934",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000935 se desvio > 4.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000935" },
    gen_id = 934,
}
_SP["PROC-L1-00935"] = {
    title = "Serviço nível C #935",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000936 se desvio > 4.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000936" },
    gen_id = 935,
}
_SP["PROC-L1-00936"] = {
    title = "Serviço nível A #936",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000937 se desvio > 2.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000937" },
    gen_id = 936,
}
_SP["PROC-L1-00937"] = {
    title = "Serviço nível B #937",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000938 se desvio > 0.73",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000938" },
    gen_id = 937,
}
_SP["PROC-L1-00938"] = {
    title = "Serviço nível C #938",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000939 se desvio > 1.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000939" },
    gen_id = 938,
}
_SP["PROC-L1-00939"] = {
    title = "Serviço nível A #939",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000940 se desvio > 1.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000940" },
    gen_id = 939,
}
_SP["PROC-L1-00940"] = {
    title = "Serviço nível B #940",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000941 se desvio > 3.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000941" },
    gen_id = 940,
}
_SP["PROC-L1-00941"] = {
    title = "Serviço nível C #941",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000942 se desvio > 3.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000942" },
    gen_id = 941,
}
_SP["PROC-L1-00942"] = {
    title = "Serviço nível A #942",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000943 se desvio > 0.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000943" },
    gen_id = 942,
}
_SP["PROC-L1-00943"] = {
    title = "Serviço nível B #943",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000944 se desvio > 2.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000944" },
    gen_id = 943,
}
_SP["PROC-L1-00944"] = {
    title = "Serviço nível C #944",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000945 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000945" },
    gen_id = 944,
}
_SP["PROC-L1-00945"] = {
    title = "Serviço nível A #945",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000946 se desvio > 4.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000946" },
    gen_id = 945,
}
_SP["PROC-L1-00946"] = {
    title = "Serviço nível B #946",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000947 se desvio > 3.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000947" },
    gen_id = 946,
}
_SP["PROC-L1-00947"] = {
    title = "Serviço nível C #947",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000948 se desvio > 1.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000948" },
    gen_id = 947,
}
_SP["PROC-L1-00948"] = {
    title = "Serviço nível A #948",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000949 se desvio > 2.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000949" },
    gen_id = 948,
}
_SP["PROC-L1-00949"] = {
    title = "Serviço nível B #949",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000950 se desvio > 2.29",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000950" },
    gen_id = 949,
}
_SP["PROC-L1-00950"] = {
    title = "Serviço nível C #950",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000951 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000951" },
    gen_id = 950,
}
_SP["PROC-L1-00951"] = {
    title = "Serviço nível A #951",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000952 se desvio > 3.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000952" },
    gen_id = 951,
}
_SP["PROC-L1-00952"] = {
    title = "Serviço nível B #952",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000953 se desvio > 2.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000953" },
    gen_id = 952,
}
_SP["PROC-L1-00953"] = {
    title = "Serviço nível C #953",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000954 se desvio > 4.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000954" },
    gen_id = 953,
}
_SP["PROC-L1-00954"] = {
    title = "Serviço nível A #954",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000955 se desvio > 1.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000955" },
    gen_id = 954,
}
_SP["PROC-L1-00955"] = {
    title = "Serviço nível B #955",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000956 se desvio > 3.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000956" },
    gen_id = 955,
}
_SP["PROC-L1-00956"] = {
    title = "Serviço nível C #956",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000957 se desvio > 0.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000957" },
    gen_id = 956,
}
_SP["PROC-L1-00957"] = {
    title = "Serviço nível A #957",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000958 se desvio > 1.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000958" },
    gen_id = 957,
}
_SP["PROC-L1-00958"] = {
    title = "Serviço nível B #958",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000959 se desvio > 0.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000959" },
    gen_id = 958,
}
_SP["PROC-L1-00959"] = {
    title = "Serviço nível C #959",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000960 se desvio > 4.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000960" },
    gen_id = 959,
}
_SP["PROC-L1-00960"] = {
    title = "Serviço nível A #960",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000961 se desvio > 1.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000961" },
    gen_id = 960,
}
_SP["PROC-L1-00961"] = {
    title = "Serviço nível B #961",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000962 se desvio > 2.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000962" },
    gen_id = 961,
}
_SP["PROC-L1-00962"] = {
    title = "Serviço nível C #962",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000963 se desvio > 4.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000963" },
    gen_id = 962,
}
_SP["PROC-L1-00963"] = {
    title = "Serviço nível A #963",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000964 se desvio > 0.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000964" },
    gen_id = 963,
}
_SP["PROC-L1-00964"] = {
    title = "Serviço nível B #964",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000965 se desvio > 1.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000965" },
    gen_id = 964,
}
_SP["PROC-L1-00965"] = {
    title = "Serviço nível C #965",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000966 se desvio > 4.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000966" },
    gen_id = 965,
}
_SP["PROC-L1-00966"] = {
    title = "Serviço nível A #966",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000967 se desvio > 2.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000967" },
    gen_id = 966,
}
_SP["PROC-L1-00967"] = {
    title = "Serviço nível B #967",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000968 se desvio > 1.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000968" },
    gen_id = 967,
}
_SP["PROC-L1-00968"] = {
    title = "Serviço nível C #968",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000969 se desvio > 4.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000969" },
    gen_id = 968,
}
_SP["PROC-L1-00969"] = {
    title = "Serviço nível A #969",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000970 se desvio > 2.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000970" },
    gen_id = 969,
}
_SP["PROC-L1-00970"] = {
    title = "Serviço nível B #970",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000971 se desvio > 3.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000971" },
    gen_id = 970,
}
_SP["PROC-L1-00971"] = {
    title = "Serviço nível C #971",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000972 se desvio > 4.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000972" },
    gen_id = 971,
}
_SP["PROC-L1-00972"] = {
    title = "Serviço nível A #972",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000973 se desvio > 1.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000973" },
    gen_id = 972,
}
_SP["PROC-L1-00973"] = {
    title = "Serviço nível B #973",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000974 se desvio > 0.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000974" },
    gen_id = 973,
}
_SP["PROC-L1-00974"] = {
    title = "Serviço nível C #974",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000975 se desvio > 0.76",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000975" },
    gen_id = 974,
}
_SP["PROC-L1-00975"] = {
    title = "Serviço nível A #975",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000976 se desvio > 1.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000976" },
    gen_id = 975,
}
_SP["PROC-L1-00976"] = {
    title = "Serviço nível B #976",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000977 se desvio > 3.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000977" },
    gen_id = 976,
}
_SP["PROC-L1-00977"] = {
    title = "Serviço nível C #977",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000978 se desvio > 4.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000978" },
    gen_id = 977,
}
_SP["PROC-L1-00978"] = {
    title = "Serviço nível A #978",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000979 se desvio > 2.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000979" },
    gen_id = 978,
}
_SP["PROC-L1-00979"] = {
    title = "Serviço nível B #979",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000980 se desvio > 0.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000980" },
    gen_id = 979,
}
_SP["PROC-L1-00980"] = {
    title = "Serviço nível C #980",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000981 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000981" },
    gen_id = 980,
}
_SP["PROC-L1-00981"] = {
    title = "Serviço nível A #981",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000982 se desvio > 3.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000982" },
    gen_id = 981,
}
_SP["PROC-L1-00982"] = {
    title = "Serviço nível B #982",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000983 se desvio > 2.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000983" },
    gen_id = 982,
}
_SP["PROC-L1-00983"] = {
    title = "Serviço nível C #983",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000984 se desvio > 0.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000984" },
    gen_id = 983,
}
_SP["PROC-L1-00984"] = {
    title = "Serviço nível A #984",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000985 se desvio > 3.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000985" },
    gen_id = 984,
}
_SP["PROC-L1-00985"] = {
    title = "Serviço nível B #985",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000986 se desvio > 2.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000986" },
    gen_id = 985,
}
_SP["PROC-L1-00986"] = {
    title = "Serviço nível C #986",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000987 se desvio > 0.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000987" },
    gen_id = 986,
}
_SP["PROC-L1-00987"] = {
    title = "Serviço nível A #987",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000988 se desvio > 3.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000988" },
    gen_id = 987,
}
_SP["PROC-L1-00988"] = {
    title = "Serviço nível B #988",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000989 se desvio > 0.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000989" },
    gen_id = 988,
}
_SP["PROC-L1-00989"] = {
    title = "Serviço nível C #989",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000990 se desvio > 3.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000990" },
    gen_id = 989,
}
_SP["PROC-L1-00990"] = {
    title = "Serviço nível A #990",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000991 se desvio > 3.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000991" },
    gen_id = 990,
}
_SP["PROC-L1-00991"] = {
    title = "Serviço nível B #991",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-000992 se desvio > 1.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000992" },
    gen_id = 991,
}
_SP["PROC-L1-00992"] = {
    title = "Serviço nível C #992",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-000993 se desvio > 1.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000993" },
    gen_id = 992,
}
_SP["PROC-L1-00993"] = {
    title = "Serviço nível A #993",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-000994 se desvio > 0.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000994" },
    gen_id = 993,
}
_SP["PROC-L1-00994"] = {
    title = "Serviço nível B #994",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-000995 se desvio > 2.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000995" },
    gen_id = 994,
}
_SP["PROC-L1-00995"] = {
    title = "Serviço nível C #995",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-000996 se desvio > 2.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000996" },
    gen_id = 995,
}
_SP["PROC-L1-00996"] = {
    title = "Serviço nível A #996",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-000997 se desvio > 4.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000997" },
    gen_id = 996,
}
_SP["PROC-L1-00997"] = {
    title = "Serviço nível B #997",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-000998 se desvio > 1.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000998" },
    gen_id = 997,
}
_SP["PROC-L1-00998"] = {
    title = "Serviço nível C #998",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-000999 se desvio > 0.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-000999" },
    gen_id = 998,
}
_SP["PROC-L1-00999"] = {
    title = "Serviço nível A #999",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001000 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001000" },
    gen_id = 999,
}
_SP["PROC-L1-01000"] = {
    title = "Serviço nível B #1000",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001001 se desvio > 3.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001001" },
    gen_id = 1000,
}
_SP["PROC-L1-01001"] = {
    title = "Serviço nível C #1001",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001002 se desvio > 3.52",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001002" },
    gen_id = 1001,
}
_SP["PROC-L1-01002"] = {
    title = "Serviço nível A #1002",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001003 se desvio > 3.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001003" },
    gen_id = 1002,
}
_SP["PROC-L1-01003"] = {
    title = "Serviço nível B #1003",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001004 se desvio > 3.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001004" },
    gen_id = 1003,
}
_SP["PROC-L1-01004"] = {
    title = "Serviço nível C #1004",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001005 se desvio > 3.20",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001005" },
    gen_id = 1004,
}
_SP["PROC-L1-01005"] = {
    title = "Serviço nível A #1005",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001006 se desvio > 0.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001006" },
    gen_id = 1005,
}
_SP["PROC-L1-01006"] = {
    title = "Serviço nível B #1006",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001007 se desvio > 3.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001007" },
    gen_id = 1006,
}
_SP["PROC-L1-01007"] = {
    title = "Serviço nível C #1007",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001008 se desvio > 1.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001008" },
    gen_id = 1007,
}
_SP["PROC-L1-01008"] = {
    title = "Serviço nível A #1008",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001009 se desvio > 3.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001009" },
    gen_id = 1008,
}
_SP["PROC-L1-01009"] = {
    title = "Serviço nível B #1009",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001010 se desvio > 2.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001010" },
    gen_id = 1009,
}
_SP["PROC-L1-01010"] = {
    title = "Serviço nível C #1010",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001011 se desvio > 4.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001011" },
    gen_id = 1010,
}
_SP["PROC-L1-01011"] = {
    title = "Serviço nível A #1011",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001012 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001012" },
    gen_id = 1011,
}
_SP["PROC-L1-01012"] = {
    title = "Serviço nível B #1012",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001013 se desvio > 2.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001013" },
    gen_id = 1012,
}
_SP["PROC-L1-01013"] = {
    title = "Serviço nível C #1013",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001014 se desvio > 4.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001014" },
    gen_id = 1013,
}
_SP["PROC-L1-01014"] = {
    title = "Serviço nível A #1014",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001015 se desvio > 0.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001015" },
    gen_id = 1014,
}
_SP["PROC-L1-01015"] = {
    title = "Serviço nível B #1015",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001016 se desvio > 3.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001016" },
    gen_id = 1015,
}
_SP["PROC-L1-01016"] = {
    title = "Serviço nível C #1016",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001017 se desvio > 1.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001017" },
    gen_id = 1016,
}
_SP["PROC-L1-01017"] = {
    title = "Serviço nível A #1017",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001018 se desvio > 1.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001018" },
    gen_id = 1017,
}
_SP["PROC-L1-01018"] = {
    title = "Serviço nível B #1018",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001019 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001019" },
    gen_id = 1018,
}
_SP["PROC-L1-01019"] = {
    title = "Serviço nível C #1019",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001020 se desvio > 4.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001020" },
    gen_id = 1019,
}
_SP["PROC-L1-01020"] = {
    title = "Serviço nível A #1020",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001021 se desvio > 1.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001021" },
    gen_id = 1020,
}
_SP["PROC-L1-01021"] = {
    title = "Serviço nível B #1021",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001022 se desvio > 0.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001022" },
    gen_id = 1021,
}
_SP["PROC-L1-01022"] = {
    title = "Serviço nível C #1022",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001023 se desvio > 0.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001023" },
    gen_id = 1022,
}
_SP["PROC-L1-01023"] = {
    title = "Serviço nível A #1023",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001024 se desvio > 1.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001024" },
    gen_id = 1023,
}
_SP["PROC-L1-01024"] = {
    title = "Serviço nível B #1024",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001025 se desvio > 2.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001025" },
    gen_id = 1024,
}
_SP["PROC-L1-01025"] = {
    title = "Serviço nível C #1025",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001026 se desvio > 4.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001026" },
    gen_id = 1025,
}
_SP["PROC-L1-01026"] = {
    title = "Serviço nível A #1026",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001027 se desvio > 1.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001027" },
    gen_id = 1026,
}
_SP["PROC-L1-01027"] = {
    title = "Serviço nível B #1027",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001028 se desvio > 3.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001028" },
    gen_id = 1027,
}
_SP["PROC-L1-01028"] = {
    title = "Serviço nível C #1028",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001029 se desvio > 4.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001029" },
    gen_id = 1028,
}
_SP["PROC-L1-01029"] = {
    title = "Serviço nível A #1029",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001030 se desvio > 4.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001030" },
    gen_id = 1029,
}
_SP["PROC-L1-01030"] = {
    title = "Serviço nível B #1030",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001031 se desvio > 2.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001031" },
    gen_id = 1030,
}
_SP["PROC-L1-01031"] = {
    title = "Serviço nível C #1031",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001032 se desvio > 4.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001032" },
    gen_id = 1031,
}
_SP["PROC-L1-01032"] = {
    title = "Serviço nível A #1032",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001033 se desvio > 3.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001033" },
    gen_id = 1032,
}
_SP["PROC-L1-01033"] = {
    title = "Serviço nível B #1033",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001034 se desvio > 2.91",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001034" },
    gen_id = 1033,
}
_SP["PROC-L1-01034"] = {
    title = "Serviço nível C #1034",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001035 se desvio > 1.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001035" },
    gen_id = 1034,
}
_SP["PROC-L1-01035"] = {
    title = "Serviço nível A #1035",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001036 se desvio > 2.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001036" },
    gen_id = 1035,
}
_SP["PROC-L1-01036"] = {
    title = "Serviço nível B #1036",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001037 se desvio > 2.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001037" },
    gen_id = 1036,
}
_SP["PROC-L1-01037"] = {
    title = "Serviço nível C #1037",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001038 se desvio > 2.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001038" },
    gen_id = 1037,
}
_SP["PROC-L1-01038"] = {
    title = "Serviço nível A #1038",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001039 se desvio > 2.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001039" },
    gen_id = 1038,
}
_SP["PROC-L1-01039"] = {
    title = "Serviço nível B #1039",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001040 se desvio > 3.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001040" },
    gen_id = 1039,
}
_SP["PROC-L1-01040"] = {
    title = "Serviço nível C #1040",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001041 se desvio > 0.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001041" },
    gen_id = 1040,
}
_SP["PROC-L1-01041"] = {
    title = "Serviço nível A #1041",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001042 se desvio > 4.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001042" },
    gen_id = 1041,
}
_SP["PROC-L1-01042"] = {
    title = "Serviço nível B #1042",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001043 se desvio > 0.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001043" },
    gen_id = 1042,
}
_SP["PROC-L1-01043"] = {
    title = "Serviço nível C #1043",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001044 se desvio > 0.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001044" },
    gen_id = 1043,
}
_SP["PROC-L1-01044"] = {
    title = "Serviço nível A #1044",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001045 se desvio > 4.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001045" },
    gen_id = 1044,
}
_SP["PROC-L1-01045"] = {
    title = "Serviço nível B #1045",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001046 se desvio > 3.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001046" },
    gen_id = 1045,
}
_SP["PROC-L1-01046"] = {
    title = "Serviço nível C #1046",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001047 se desvio > 1.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001047" },
    gen_id = 1046,
}
_SP["PROC-L1-01047"] = {
    title = "Serviço nível A #1047",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001048 se desvio > 3.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001048" },
    gen_id = 1047,
}
_SP["PROC-L1-01048"] = {
    title = "Serviço nível B #1048",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001049 se desvio > 1.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001049" },
    gen_id = 1048,
}
_SP["PROC-L1-01049"] = {
    title = "Serviço nível C #1049",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001050 se desvio > 2.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001050" },
    gen_id = 1049,
}
_SP["PROC-L1-01050"] = {
    title = "Serviço nível A #1050",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001051 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001051" },
    gen_id = 1050,
}
_SP["PROC-L1-01051"] = {
    title = "Serviço nível B #1051",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001052 se desvio > 0.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001052" },
    gen_id = 1051,
}
_SP["PROC-L1-01052"] = {
    title = "Serviço nível C #1052",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001053 se desvio > 0.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001053" },
    gen_id = 1052,
}
_SP["PROC-L1-01053"] = {
    title = "Serviço nível A #1053",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001054 se desvio > 3.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001054" },
    gen_id = 1053,
}
_SP["PROC-L1-01054"] = {
    title = "Serviço nível B #1054",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001055 se desvio > 2.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001055" },
    gen_id = 1054,
}
_SP["PROC-L1-01055"] = {
    title = "Serviço nível C #1055",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001056 se desvio > 1.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001056" },
    gen_id = 1055,
}
_SP["PROC-L1-01056"] = {
    title = "Serviço nível A #1056",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001057 se desvio > 0.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001057" },
    gen_id = 1056,
}
_SP["PROC-L1-01057"] = {
    title = "Serviço nível B #1057",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001058 se desvio > 3.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001058" },
    gen_id = 1057,
}
_SP["PROC-L1-01058"] = {
    title = "Serviço nível C #1058",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001059 se desvio > 3.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001059" },
    gen_id = 1058,
}
_SP["PROC-L1-01059"] = {
    title = "Serviço nível A #1059",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001060 se desvio > 1.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001060" },
    gen_id = 1059,
}
_SP["PROC-L1-01060"] = {
    title = "Serviço nível B #1060",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001061 se desvio > 2.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001061" },
    gen_id = 1060,
}
_SP["PROC-L1-01061"] = {
    title = "Serviço nível C #1061",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001062 se desvio > 3.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001062" },
    gen_id = 1061,
}
_SP["PROC-L1-01062"] = {
    title = "Serviço nível A #1062",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001063 se desvio > 0.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001063" },
    gen_id = 1062,
}
_SP["PROC-L1-01063"] = {
    title = "Serviço nível B #1063",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001064 se desvio > 0.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001064" },
    gen_id = 1063,
}
_SP["PROC-L1-01064"] = {
    title = "Serviço nível C #1064",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001065 se desvio > 0.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001065" },
    gen_id = 1064,
}
_SP["PROC-L1-01065"] = {
    title = "Serviço nível A #1065",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001066 se desvio > 3.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001066" },
    gen_id = 1065,
}
_SP["PROC-L1-01066"] = {
    title = "Serviço nível B #1066",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001067 se desvio > 2.71",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001067" },
    gen_id = 1066,
}
_SP["PROC-L1-01067"] = {
    title = "Serviço nível C #1067",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001068 se desvio > 3.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001068" },
    gen_id = 1067,
}
_SP["PROC-L1-01068"] = {
    title = "Serviço nível A #1068",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001069 se desvio > 2.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001069" },
    gen_id = 1068,
}
_SP["PROC-L1-01069"] = {
    title = "Serviço nível B #1069",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001070 se desvio > 4.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001070" },
    gen_id = 1069,
}
_SP["PROC-L1-01070"] = {
    title = "Serviço nível C #1070",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001071 se desvio > 2.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001071" },
    gen_id = 1070,
}
_SP["PROC-L1-01071"] = {
    title = "Serviço nível A #1071",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001072 se desvio > 4.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001072" },
    gen_id = 1071,
}
_SP["PROC-L1-01072"] = {
    title = "Serviço nível B #1072",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001073 se desvio > 3.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001073" },
    gen_id = 1072,
}
_SP["PROC-L1-01073"] = {
    title = "Serviço nível C #1073",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001074 se desvio > 2.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001074" },
    gen_id = 1073,
}
_SP["PROC-L1-01074"] = {
    title = "Serviço nível A #1074",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001075 se desvio > 2.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001075" },
    gen_id = 1074,
}
_SP["PROC-L1-01075"] = {
    title = "Serviço nível B #1075",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001076 se desvio > 4.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001076" },
    gen_id = 1075,
}
_SP["PROC-L1-01076"] = {
    title = "Serviço nível C #1076",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001077 se desvio > 1.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001077" },
    gen_id = 1076,
}
_SP["PROC-L1-01077"] = {
    title = "Serviço nível A #1077",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001078 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001078" },
    gen_id = 1077,
}
_SP["PROC-L1-01078"] = {
    title = "Serviço nível B #1078",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001079 se desvio > 3.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001079" },
    gen_id = 1078,
}
_SP["PROC-L1-01079"] = {
    title = "Serviço nível C #1079",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001080 se desvio > 0.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001080" },
    gen_id = 1079,
}
_SP["PROC-L1-01080"] = {
    title = "Serviço nível A #1080",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001081 se desvio > 4.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001081" },
    gen_id = 1080,
}
_SP["PROC-L1-01081"] = {
    title = "Serviço nível B #1081",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001082 se desvio > 2.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001082" },
    gen_id = 1081,
}
_SP["PROC-L1-01082"] = {
    title = "Serviço nível C #1082",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001083 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001083" },
    gen_id = 1082,
}
_SP["PROC-L1-01083"] = {
    title = "Serviço nível A #1083",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001084 se desvio > 3.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001084" },
    gen_id = 1083,
}
_SP["PROC-L1-01084"] = {
    title = "Serviço nível B #1084",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001085 se desvio > 0.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001085" },
    gen_id = 1084,
}
_SP["PROC-L1-01085"] = {
    title = "Serviço nível C #1085",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001086 se desvio > 0.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001086" },
    gen_id = 1085,
}
_SP["PROC-L1-01086"] = {
    title = "Serviço nível A #1086",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001087 se desvio > 2.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001087" },
    gen_id = 1086,
}
_SP["PROC-L1-01087"] = {
    title = "Serviço nível B #1087",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001088 se desvio > 3.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001088" },
    gen_id = 1087,
}
_SP["PROC-L1-01088"] = {
    title = "Serviço nível C #1088",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001089 se desvio > 4.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001089" },
    gen_id = 1088,
}
_SP["PROC-L1-01089"] = {
    title = "Serviço nível A #1089",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001090 se desvio > 2.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001090" },
    gen_id = 1089,
}
_SP["PROC-L1-01090"] = {
    title = "Serviço nível B #1090",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001091 se desvio > 0.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001091" },
    gen_id = 1090,
}
_SP["PROC-L1-01091"] = {
    title = "Serviço nível C #1091",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001092 se desvio > 3.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001092" },
    gen_id = 1091,
}
_SP["PROC-L1-01092"] = {
    title = "Serviço nível A #1092",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001093 se desvio > 2.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001093" },
    gen_id = 1092,
}
_SP["PROC-L1-01093"] = {
    title = "Serviço nível B #1093",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001094 se desvio > 3.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001094" },
    gen_id = 1093,
}
_SP["PROC-L1-01094"] = {
    title = "Serviço nível C #1094",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001095 se desvio > 4.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001095" },
    gen_id = 1094,
}
_SP["PROC-L1-01095"] = {
    title = "Serviço nível A #1095",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001096 se desvio > 2.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001096" },
    gen_id = 1095,
}
_SP["PROC-L1-01096"] = {
    title = "Serviço nível B #1096",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001097 se desvio > 0.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001097" },
    gen_id = 1096,
}
_SP["PROC-L1-01097"] = {
    title = "Serviço nível C #1097",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001098 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001098" },
    gen_id = 1097,
}
_SP["PROC-L1-01098"] = {
    title = "Serviço nível A #1098",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001099 se desvio > 0.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001099" },
    gen_id = 1098,
}
_SP["PROC-L1-01099"] = {
    title = "Serviço nível B #1099",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001100 se desvio > 1.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001100" },
    gen_id = 1099,
}
_SP["PROC-L1-01100"] = {
    title = "Serviço nível C #1100",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001101 se desvio > 2.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001101" },
    gen_id = 1100,
}
_SP["PROC-L1-01101"] = {
    title = "Serviço nível A #1101",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001102 se desvio > 4.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001102" },
    gen_id = 1101,
}
_SP["PROC-L1-01102"] = {
    title = "Serviço nível B #1102",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001103 se desvio > 4.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001103" },
    gen_id = 1102,
}
_SP["PROC-L1-01103"] = {
    title = "Serviço nível C #1103",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001104 se desvio > 0.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001104" },
    gen_id = 1103,
}
_SP["PROC-L1-01104"] = {
    title = "Serviço nível A #1104",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001105 se desvio > 3.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001105" },
    gen_id = 1104,
}
_SP["PROC-L1-01105"] = {
    title = "Serviço nível B #1105",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001106 se desvio > 4.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001106" },
    gen_id = 1105,
}
_SP["PROC-L1-01106"] = {
    title = "Serviço nível C #1106",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001107 se desvio > 4.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001107" },
    gen_id = 1106,
}
_SP["PROC-L1-01107"] = {
    title = "Serviço nível A #1107",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001108 se desvio > 2.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001108" },
    gen_id = 1107,
}
_SP["PROC-L1-01108"] = {
    title = "Serviço nível B #1108",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001109 se desvio > 3.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001109" },
    gen_id = 1108,
}
_SP["PROC-L1-01109"] = {
    title = "Serviço nível C #1109",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001110 se desvio > 1.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001110" },
    gen_id = 1109,
}
_SP["PROC-L1-01110"] = {
    title = "Serviço nível A #1110",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001111 se desvio > 4.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001111" },
    gen_id = 1110,
}
_SP["PROC-L1-01111"] = {
    title = "Serviço nível B #1111",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001112 se desvio > 2.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001112" },
    gen_id = 1111,
}
_SP["PROC-L1-01112"] = {
    title = "Serviço nível C #1112",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001113 se desvio > 3.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001113" },
    gen_id = 1112,
}
_SP["PROC-L1-01113"] = {
    title = "Serviço nível A #1113",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001114 se desvio > 2.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001114" },
    gen_id = 1113,
}
_SP["PROC-L1-01114"] = {
    title = "Serviço nível B #1114",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001115 se desvio > 2.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001115" },
    gen_id = 1114,
}
_SP["PROC-L1-01115"] = {
    title = "Serviço nível C #1115",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001116 se desvio > 4.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001116" },
    gen_id = 1115,
}
_SP["PROC-L1-01116"] = {
    title = "Serviço nível A #1116",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001117 se desvio > 2.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001117" },
    gen_id = 1116,
}
_SP["PROC-L1-01117"] = {
    title = "Serviço nível B #1117",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001118 se desvio > 3.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001118" },
    gen_id = 1117,
}
_SP["PROC-L1-01118"] = {
    title = "Serviço nível C #1118",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001119 se desvio > 3.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001119" },
    gen_id = 1118,
}
_SP["PROC-L1-01119"] = {
    title = "Serviço nível A #1119",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001120 se desvio > 0.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001120" },
    gen_id = 1119,
}
_SP["PROC-L1-01120"] = {
    title = "Serviço nível B #1120",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001121 se desvio > 0.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001121" },
    gen_id = 1120,
}
_SP["PROC-L1-01121"] = {
    title = "Serviço nível C #1121",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001122 se desvio > 3.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001122" },
    gen_id = 1121,
}
_SP["PROC-L1-01122"] = {
    title = "Serviço nível A #1122",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001123 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001123" },
    gen_id = 1122,
}
_SP["PROC-L1-01123"] = {
    title = "Serviço nível B #1123",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001124 se desvio > 2.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001124" },
    gen_id = 1123,
}
_SP["PROC-L1-01124"] = {
    title = "Serviço nível C #1124",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001125 se desvio > 1.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001125" },
    gen_id = 1124,
}
_SP["PROC-L1-01125"] = {
    title = "Serviço nível A #1125",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001126 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001126" },
    gen_id = 1125,
}
_SP["PROC-L1-01126"] = {
    title = "Serviço nível B #1126",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001127 se desvio > 2.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001127" },
    gen_id = 1126,
}
_SP["PROC-L1-01127"] = {
    title = "Serviço nível C #1127",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001128 se desvio > 3.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001128" },
    gen_id = 1127,
}
_SP["PROC-L1-01128"] = {
    title = "Serviço nível A #1128",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001129 se desvio > 0.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001129" },
    gen_id = 1128,
}
_SP["PROC-L1-01129"] = {
    title = "Serviço nível B #1129",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001130 se desvio > 0.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001130" },
    gen_id = 1129,
}
_SP["PROC-L1-01130"] = {
    title = "Serviço nível C #1130",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001131 se desvio > 0.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001131" },
    gen_id = 1130,
}
_SP["PROC-L1-01131"] = {
    title = "Serviço nível A #1131",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001132 se desvio > 1.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001132" },
    gen_id = 1131,
}
_SP["PROC-L1-01132"] = {
    title = "Serviço nível B #1132",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001133 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001133" },
    gen_id = 1132,
}
_SP["PROC-L1-01133"] = {
    title = "Serviço nível C #1133",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001134 se desvio > 1.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001134" },
    gen_id = 1133,
}
_SP["PROC-L1-01134"] = {
    title = "Serviço nível A #1134",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001135 se desvio > 0.43",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001135" },
    gen_id = 1134,
}
_SP["PROC-L1-01135"] = {
    title = "Serviço nível B #1135",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001136 se desvio > 0.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001136" },
    gen_id = 1135,
}
_SP["PROC-L1-01136"] = {
    title = "Serviço nível C #1136",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001137 se desvio > 0.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001137" },
    gen_id = 1136,
}
_SP["PROC-L1-01137"] = {
    title = "Serviço nível A #1137",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001138 se desvio > 4.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001138" },
    gen_id = 1137,
}
_SP["PROC-L1-01138"] = {
    title = "Serviço nível B #1138",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001139 se desvio > 4.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001139" },
    gen_id = 1138,
}
_SP["PROC-L1-01139"] = {
    title = "Serviço nível C #1139",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001140 se desvio > 2.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001140" },
    gen_id = 1139,
}
_SP["PROC-L1-01140"] = {
    title = "Serviço nível A #1140",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001141 se desvio > 2.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001141" },
    gen_id = 1140,
}
_SP["PROC-L1-01141"] = {
    title = "Serviço nível B #1141",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001142 se desvio > 4.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001142" },
    gen_id = 1141,
}
_SP["PROC-L1-01142"] = {
    title = "Serviço nível C #1142",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001143 se desvio > 3.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001143" },
    gen_id = 1142,
}
_SP["PROC-L1-01143"] = {
    title = "Serviço nível A #1143",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001144 se desvio > 3.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001144" },
    gen_id = 1143,
}
_SP["PROC-L1-01144"] = {
    title = "Serviço nível B #1144",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001145 se desvio > 0.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001145" },
    gen_id = 1144,
}
_SP["PROC-L1-01145"] = {
    title = "Serviço nível C #1145",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001146 se desvio > 3.71",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001146" },
    gen_id = 1145,
}
_SP["PROC-L1-01146"] = {
    title = "Serviço nível A #1146",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001147 se desvio > 2.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001147" },
    gen_id = 1146,
}
_SP["PROC-L1-01147"] = {
    title = "Serviço nível B #1147",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001148 se desvio > 4.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001148" },
    gen_id = 1147,
}
_SP["PROC-L1-01148"] = {
    title = "Serviço nível C #1148",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001149 se desvio > 2.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001149" },
    gen_id = 1148,
}
_SP["PROC-L1-01149"] = {
    title = "Serviço nível A #1149",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001150 se desvio > 1.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001150" },
    gen_id = 1149,
}
_SP["PROC-L1-01150"] = {
    title = "Serviço nível B #1150",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001151 se desvio > 1.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001151" },
    gen_id = 1150,
}
_SP["PROC-L1-01151"] = {
    title = "Serviço nível C #1151",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001152 se desvio > 3.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001152" },
    gen_id = 1151,
}
_SP["PROC-L1-01152"] = {
    title = "Serviço nível A #1152",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001153 se desvio > 2.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001153" },
    gen_id = 1152,
}
_SP["PROC-L1-01153"] = {
    title = "Serviço nível B #1153",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001154 se desvio > 2.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001154" },
    gen_id = 1153,
}
_SP["PROC-L1-01154"] = {
    title = "Serviço nível C #1154",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001155 se desvio > 0.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001155" },
    gen_id = 1154,
}
_SP["PROC-L1-01155"] = {
    title = "Serviço nível A #1155",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001156 se desvio > 4.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001156" },
    gen_id = 1155,
}
_SP["PROC-L1-01156"] = {
    title = "Serviço nível B #1156",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001157 se desvio > 0.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001157" },
    gen_id = 1156,
}
_SP["PROC-L1-01157"] = {
    title = "Serviço nível C #1157",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001158 se desvio > 4.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001158" },
    gen_id = 1157,
}
_SP["PROC-L1-01158"] = {
    title = "Serviço nível A #1158",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001159 se desvio > 2.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001159" },
    gen_id = 1158,
}
_SP["PROC-L1-01159"] = {
    title = "Serviço nível B #1159",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001160 se desvio > 4.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001160" },
    gen_id = 1159,
}
_SP["PROC-L1-01160"] = {
    title = "Serviço nível C #1160",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001161 se desvio > 1.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001161" },
    gen_id = 1160,
}
_SP["PROC-L1-01161"] = {
    title = "Serviço nível A #1161",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001162 se desvio > 1.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001162" },
    gen_id = 1161,
}
_SP["PROC-L1-01162"] = {
    title = "Serviço nível B #1162",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001163 se desvio > 3.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001163" },
    gen_id = 1162,
}
_SP["PROC-L1-01163"] = {
    title = "Serviço nível C #1163",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001164 se desvio > 1.68",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001164" },
    gen_id = 1163,
}
_SP["PROC-L1-01164"] = {
    title = "Serviço nível A #1164",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001165 se desvio > 4.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001165" },
    gen_id = 1164,
}
_SP["PROC-L1-01165"] = {
    title = "Serviço nível B #1165",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001166 se desvio > 4.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001166" },
    gen_id = 1165,
}
_SP["PROC-L1-01166"] = {
    title = "Serviço nível C #1166",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001167 se desvio > 1.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001167" },
    gen_id = 1166,
}
_SP["PROC-L1-01167"] = {
    title = "Serviço nível A #1167",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001168 se desvio > 3.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001168" },
    gen_id = 1167,
}
_SP["PROC-L1-01168"] = {
    title = "Serviço nível B #1168",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001169 se desvio > 4.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001169" },
    gen_id = 1168,
}
_SP["PROC-L1-01169"] = {
    title = "Serviço nível C #1169",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001170 se desvio > 0.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001170" },
    gen_id = 1169,
}
_SP["PROC-L1-01170"] = {
    title = "Serviço nível A #1170",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001171 se desvio > 2.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001171" },
    gen_id = 1170,
}
_SP["PROC-L1-01171"] = {
    title = "Serviço nível B #1171",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001172 se desvio > 3.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001172" },
    gen_id = 1171,
}
_SP["PROC-L1-01172"] = {
    title = "Serviço nível C #1172",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001173 se desvio > 2.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001173" },
    gen_id = 1172,
}
_SP["PROC-L1-01173"] = {
    title = "Serviço nível A #1173",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001174 se desvio > 0.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001174" },
    gen_id = 1173,
}
_SP["PROC-L1-01174"] = {
    title = "Serviço nível B #1174",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001175 se desvio > 0.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001175" },
    gen_id = 1174,
}
_SP["PROC-L1-01175"] = {
    title = "Serviço nível C #1175",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001176 se desvio > 3.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001176" },
    gen_id = 1175,
}
_SP["PROC-L1-01176"] = {
    title = "Serviço nível A #1176",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001177 se desvio > 1.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001177" },
    gen_id = 1176,
}
_SP["PROC-L1-01177"] = {
    title = "Serviço nível B #1177",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001178 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001178" },
    gen_id = 1177,
}
_SP["PROC-L1-01178"] = {
    title = "Serviço nível C #1178",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001179 se desvio > 1.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001179" },
    gen_id = 1178,
}
_SP["PROC-L1-01179"] = {
    title = "Serviço nível A #1179",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001180 se desvio > 2.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001180" },
    gen_id = 1179,
}
_SP["PROC-L1-01180"] = {
    title = "Serviço nível B #1180",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001181 se desvio > 0.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001181" },
    gen_id = 1180,
}
_SP["PROC-L1-01181"] = {
    title = "Serviço nível C #1181",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001182 se desvio > 0.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001182" },
    gen_id = 1181,
}
_SP["PROC-L1-01182"] = {
    title = "Serviço nível A #1182",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001183 se desvio > 4.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001183" },
    gen_id = 1182,
}
_SP["PROC-L1-01183"] = {
    title = "Serviço nível B #1183",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001184 se desvio > 3.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001184" },
    gen_id = 1183,
}
_SP["PROC-L1-01184"] = {
    title = "Serviço nível C #1184",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001185 se desvio > 3.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001185" },
    gen_id = 1184,
}
_SP["PROC-L1-01185"] = {
    title = "Serviço nível A #1185",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001186 se desvio > 0.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001186" },
    gen_id = 1185,
}
_SP["PROC-L1-01186"] = {
    title = "Serviço nível B #1186",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001187 se desvio > 0.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001187" },
    gen_id = 1186,
}
_SP["PROC-L1-01187"] = {
    title = "Serviço nível C #1187",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001188 se desvio > 0.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001188" },
    gen_id = 1187,
}
_SP["PROC-L1-01188"] = {
    title = "Serviço nível A #1188",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001189 se desvio > 4.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001189" },
    gen_id = 1188,
}
_SP["PROC-L1-01189"] = {
    title = "Serviço nível B #1189",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001190 se desvio > 1.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001190" },
    gen_id = 1189,
}
_SP["PROC-L1-01190"] = {
    title = "Serviço nível C #1190",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001191 se desvio > 2.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001191" },
    gen_id = 1190,
}
_SP["PROC-L1-01191"] = {
    title = "Serviço nível A #1191",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001192 se desvio > 0.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001192" },
    gen_id = 1191,
}
_SP["PROC-L1-01192"] = {
    title = "Serviço nível B #1192",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001193 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001193" },
    gen_id = 1192,
}
_SP["PROC-L1-01193"] = {
    title = "Serviço nível C #1193",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001194 se desvio > 2.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001194" },
    gen_id = 1193,
}
_SP["PROC-L1-01194"] = {
    title = "Serviço nível A #1194",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001195 se desvio > 4.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001195" },
    gen_id = 1194,
}
_SP["PROC-L1-01195"] = {
    title = "Serviço nível B #1195",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001196 se desvio > 3.04",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001196" },
    gen_id = 1195,
}
_SP["PROC-L1-01196"] = {
    title = "Serviço nível C #1196",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001197 se desvio > 4.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001197" },
    gen_id = 1196,
}
_SP["PROC-L1-01197"] = {
    title = "Serviço nível A #1197",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001198 se desvio > 0.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001198" },
    gen_id = 1197,
}
_SP["PROC-L1-01198"] = {
    title = "Serviço nível B #1198",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001199 se desvio > 0.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001199" },
    gen_id = 1198,
}
_SP["PROC-L1-01199"] = {
    title = "Serviço nível C #1199",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001200 se desvio > 2.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001200" },
    gen_id = 1199,
}
_SP["PROC-L1-01200"] = {
    title = "Serviço nível A #1200",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001201 se desvio > 2.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001201" },
    gen_id = 1200,
}
_SP["PROC-L1-01201"] = {
    title = "Serviço nível B #1201",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001202 se desvio > 1.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001202" },
    gen_id = 1201,
}
_SP["PROC-L1-01202"] = {
    title = "Serviço nível C #1202",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001203 se desvio > 2.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001203" },
    gen_id = 1202,
}
_SP["PROC-L1-01203"] = {
    title = "Serviço nível A #1203",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001204 se desvio > 1.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001204" },
    gen_id = 1203,
}
_SP["PROC-L1-01204"] = {
    title = "Serviço nível B #1204",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001205 se desvio > 0.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001205" },
    gen_id = 1204,
}
_SP["PROC-L1-01205"] = {
    title = "Serviço nível C #1205",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001206 se desvio > 4.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001206" },
    gen_id = 1205,
}
_SP["PROC-L1-01206"] = {
    title = "Serviço nível A #1206",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001207 se desvio > 4.01",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001207" },
    gen_id = 1206,
}
_SP["PROC-L1-01207"] = {
    title = "Serviço nível B #1207",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001208 se desvio > 1.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001208" },
    gen_id = 1207,
}
_SP["PROC-L1-01208"] = {
    title = "Serviço nível C #1208",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001209 se desvio > 1.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001209" },
    gen_id = 1208,
}
_SP["PROC-L1-01209"] = {
    title = "Serviço nível A #1209",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001210 se desvio > 1.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001210" },
    gen_id = 1209,
}
_SP["PROC-L1-01210"] = {
    title = "Serviço nível B #1210",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001211 se desvio > 2.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001211" },
    gen_id = 1210,
}
_SP["PROC-L1-01211"] = {
    title = "Serviço nível C #1211",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001212 se desvio > 4.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001212" },
    gen_id = 1211,
}
_SP["PROC-L1-01212"] = {
    title = "Serviço nível A #1212",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001213 se desvio > 1.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001213" },
    gen_id = 1212,
}
_SP["PROC-L1-01213"] = {
    title = "Serviço nível B #1213",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001214 se desvio > 4.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001214" },
    gen_id = 1213,
}
_SP["PROC-L1-01214"] = {
    title = "Serviço nível C #1214",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001215 se desvio > 0.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001215" },
    gen_id = 1214,
}
_SP["PROC-L1-01215"] = {
    title = "Serviço nível A #1215",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001216 se desvio > 1.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001216" },
    gen_id = 1215,
}
_SP["PROC-L1-01216"] = {
    title = "Serviço nível B #1216",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001217 se desvio > 3.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001217" },
    gen_id = 1216,
}
_SP["PROC-L1-01217"] = {
    title = "Serviço nível C #1217",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001218 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001218" },
    gen_id = 1217,
}
_SP["PROC-L1-01218"] = {
    title = "Serviço nível A #1218",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001219 se desvio > 3.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001219" },
    gen_id = 1218,
}
_SP["PROC-L1-01219"] = {
    title = "Serviço nível B #1219",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001220 se desvio > 2.65",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001220" },
    gen_id = 1219,
}
_SP["PROC-L1-01220"] = {
    title = "Serviço nível C #1220",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001221 se desvio > 4.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001221" },
    gen_id = 1220,
}
_SP["PROC-L1-01221"] = {
    title = "Serviço nível A #1221",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001222 se desvio > 1.02",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001222" },
    gen_id = 1221,
}
_SP["PROC-L1-01222"] = {
    title = "Serviço nível B #1222",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001223 se desvio > 2.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001223" },
    gen_id = 1222,
}
_SP["PROC-L1-01223"] = {
    title = "Serviço nível C #1223",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001224 se desvio > 1.37",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001224" },
    gen_id = 1223,
}
_SP["PROC-L1-01224"] = {
    title = "Serviço nível A #1224",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001225 se desvio > 2.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001225" },
    gen_id = 1224,
}
_SP["PROC-L1-01225"] = {
    title = "Serviço nível B #1225",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001226 se desvio > 4.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001226" },
    gen_id = 1225,
}
_SP["PROC-L1-01226"] = {
    title = "Serviço nível C #1226",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001227 se desvio > 0.44",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001227" },
    gen_id = 1226,
}
_SP["PROC-L1-01227"] = {
    title = "Serviço nível A #1227",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001228 se desvio > 3.00",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001228" },
    gen_id = 1227,
}
_SP["PROC-L1-01228"] = {
    title = "Serviço nível B #1228",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001229 se desvio > 1.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001229" },
    gen_id = 1228,
}
_SP["PROC-L1-01229"] = {
    title = "Serviço nível C #1229",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001230 se desvio > 0.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001230" },
    gen_id = 1229,
}
_SP["PROC-L1-01230"] = {
    title = "Serviço nível A #1230",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001231 se desvio > 1.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001231" },
    gen_id = 1230,
}
_SP["PROC-L1-01231"] = {
    title = "Serviço nível B #1231",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001232 se desvio > 4.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001232" },
    gen_id = 1231,
}
_SP["PROC-L1-01232"] = {
    title = "Serviço nível C #1232",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001233 se desvio > 3.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001233" },
    gen_id = 1232,
}
_SP["PROC-L1-01233"] = {
    title = "Serviço nível A #1233",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001234 se desvio > 4.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001234" },
    gen_id = 1233,
}
_SP["PROC-L1-01234"] = {
    title = "Serviço nível B #1234",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001235 se desvio > 3.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001235" },
    gen_id = 1234,
}
_SP["PROC-L1-01235"] = {
    title = "Serviço nível C #1235",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001236 se desvio > 3.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001236" },
    gen_id = 1235,
}
_SP["PROC-L1-01236"] = {
    title = "Serviço nível A #1236",
    est_minutes = 171,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001237 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001237" },
    gen_id = 1236,
}
_SP["PROC-L1-01237"] = {
    title = "Serviço nível B #1237",
    est_minutes = 172,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001238 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001238" },
    gen_id = 1237,
}
_SP["PROC-L1-01238"] = {
    title = "Serviço nível C #1238",
    est_minutes = 173,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001239 se desvio > 1.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001239" },
    gen_id = 1238,
}
_SP["PROC-L1-01239"] = {
    title = "Serviço nível A #1239",
    est_minutes = 174,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001240 se desvio > 4.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001240" },
    gen_id = 1239,
}
_SP["PROC-L1-01240"] = {
    title = "Serviço nível B #1240",
    est_minutes = 175,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001241 se desvio > 0.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001241" },
    gen_id = 1240,
}
_SP["PROC-L1-01241"] = {
    title = "Serviço nível C #1241",
    est_minutes = 176,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001242 se desvio > 3.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001242" },
    gen_id = 1241,
}
_SP["PROC-L1-01242"] = {
    title = "Serviço nível A #1242",
    est_minutes = 177,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001243 se desvio > 3.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001243" },
    gen_id = 1242,
}
_SP["PROC-L1-01243"] = {
    title = "Serviço nível B #1243",
    est_minutes = 178,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001244 se desvio > 1.84",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001244" },
    gen_id = 1243,
}
_SP["PROC-L1-01244"] = {
    title = "Serviço nível C #1244",
    est_minutes = 179,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001245 se desvio > 1.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001245" },
    gen_id = 1244,
}
_SP["PROC-L1-01245"] = {
    title = "Serviço nível A #1245",
    est_minutes = 180,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001246 se desvio > 2.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001246" },
    gen_id = 1245,
}
_SP["PROC-L1-01246"] = {
    title = "Serviço nível B #1246",
    est_minutes = 181,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001247 se desvio > 3.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001247" },
    gen_id = 1246,
}
_SP["PROC-L1-01247"] = {
    title = "Serviço nível C #1247",
    est_minutes = 182,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001248 se desvio > 1.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001248" },
    gen_id = 1247,
}
_SP["PROC-L1-01248"] = {
    title = "Serviço nível A #1248",
    est_minutes = 183,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001249 se desvio > 1.22",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001249" },
    gen_id = 1248,
}
_SP["PROC-L1-01249"] = {
    title = "Serviço nível B #1249",
    est_minutes = 184,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001250 se desvio > 0.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001250" },
    gen_id = 1249,
}
_SP["PROC-L1-01250"] = {
    title = "Serviço nível C #1250",
    est_minutes = 185,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001251 se desvio > 4.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001251" },
    gen_id = 1250,
}
_SP["PROC-L1-01251"] = {
    title = "Serviço nível A #1251",
    est_minutes = 186,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001252 se desvio > 0.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001252" },
    gen_id = 1251,
}
_SP["PROC-L1-01252"] = {
    title = "Serviço nível B #1252",
    est_minutes = 187,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001253 se desvio > 1.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001253" },
    gen_id = 1252,
}
_SP["PROC-L1-01253"] = {
    title = "Serviço nível C #1253",
    est_minutes = 188,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001254 se desvio > 4.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001254" },
    gen_id = 1253,
}
_SP["PROC-L1-01254"] = {
    title = "Serviço nível A #1254",
    est_minutes = 189,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001255 se desvio > 1.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001255" },
    gen_id = 1254,
}
_SP["PROC-L1-01255"] = {
    title = "Serviço nível B #1255",
    est_minutes = 190,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001256 se desvio > 0.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001256" },
    gen_id = 1255,
}
_SP["PROC-L1-01256"] = {
    title = "Serviço nível C #1256",
    est_minutes = 191,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001257 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001257" },
    gen_id = 1256,
}
_SP["PROC-L1-01257"] = {
    title = "Serviço nível A #1257",
    est_minutes = 192,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001258 se desvio > 3.16",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001258" },
    gen_id = 1257,
}
_SP["PROC-L1-01258"] = {
    title = "Serviço nível B #1258",
    est_minutes = 193,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001259 se desvio > 1.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001259" },
    gen_id = 1258,
}
_SP["PROC-L1-01259"] = {
    title = "Serviço nível C #1259",
    est_minutes = 194,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001260 se desvio > 4.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001260" },
    gen_id = 1259,
}
_SP["PROC-L1-01260"] = {
    title = "Serviço nível A #1260",
    est_minutes = 15,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001261 se desvio > 0.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001261" },
    gen_id = 1260,
}
_SP["PROC-L1-01261"] = {
    title = "Serviço nível B #1261",
    est_minutes = 16,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001262 se desvio > 3.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001262" },
    gen_id = 1261,
}
_SP["PROC-L1-01262"] = {
    title = "Serviço nível C #1262",
    est_minutes = 17,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001263 se desvio > 4.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001263" },
    gen_id = 1262,
}
_SP["PROC-L1-01263"] = {
    title = "Serviço nível A #1263",
    est_minutes = 18,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001264 se desvio > 1.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001264" },
    gen_id = 1263,
}
_SP["PROC-L1-01264"] = {
    title = "Serviço nível B #1264",
    est_minutes = 19,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001265 se desvio > 0.61",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001265" },
    gen_id = 1264,
}
_SP["PROC-L1-01265"] = {
    title = "Serviço nível C #1265",
    est_minutes = 20,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001266 se desvio > 4.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001266" },
    gen_id = 1265,
}
_SP["PROC-L1-01266"] = {
    title = "Serviço nível A #1266",
    est_minutes = 21,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001267 se desvio > 2.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001267" },
    gen_id = 1266,
}
_SP["PROC-L1-01267"] = {
    title = "Serviço nível B #1267",
    est_minutes = 22,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001268 se desvio > 1.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001268" },
    gen_id = 1267,
}
_SP["PROC-L1-01268"] = {
    title = "Serviço nível C #1268",
    est_minutes = 23,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001269 se desvio > 4.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001269" },
    gen_id = 1268,
}
_SP["PROC-L1-01269"] = {
    title = "Serviço nível A #1269",
    est_minutes = 24,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001270 se desvio > 2.75",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001270" },
    gen_id = 1269,
}
_SP["PROC-L1-01270"] = {
    title = "Serviço nível B #1270",
    est_minutes = 25,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001271 se desvio > 3.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001271" },
    gen_id = 1270,
}
_SP["PROC-L1-01271"] = {
    title = "Serviço nível C #1271",
    est_minutes = 26,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001272 se desvio > 0.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001272" },
    gen_id = 1271,
}
_SP["PROC-L1-01272"] = {
    title = "Serviço nível A #1272",
    est_minutes = 27,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001273 se desvio > 4.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001273" },
    gen_id = 1272,
}
_SP["PROC-L1-01273"] = {
    title = "Serviço nível B #1273",
    est_minutes = 28,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001274 se desvio > 2.32",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001274" },
    gen_id = 1273,
}
_SP["PROC-L1-01274"] = {
    title = "Serviço nível C #1274",
    est_minutes = 29,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001275 se desvio > 2.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001275" },
    gen_id = 1274,
}
_SP["PROC-L1-01275"] = {
    title = "Serviço nível A #1275",
    est_minutes = 30,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001276 se desvio > 1.64",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001276" },
    gen_id = 1275,
}
_SP["PROC-L1-01276"] = {
    title = "Serviço nível B #1276",
    est_minutes = 31,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001277 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001277" },
    gen_id = 1276,
}
_SP["PROC-L1-01277"] = {
    title = "Serviço nível C #1277",
    est_minutes = 32,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001278 se desvio > 2.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001278" },
    gen_id = 1277,
}
_SP["PROC-L1-01278"] = {
    title = "Serviço nível A #1278",
    est_minutes = 33,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001279 se desvio > 1.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001279" },
    gen_id = 1278,
}
_SP["PROC-L1-01279"] = {
    title = "Serviço nível B #1279",
    est_minutes = 34,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001280 se desvio > 1.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001280" },
    gen_id = 1279,
}
_SP["PROC-L1-01280"] = {
    title = "Serviço nível C #1280",
    est_minutes = 35,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001281 se desvio > 3.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001281" },
    gen_id = 1280,
}
_SP["PROC-L1-01281"] = {
    title = "Serviço nível A #1281",
    est_minutes = 36,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001282 se desvio > 3.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001282" },
    gen_id = 1281,
}
_SP["PROC-L1-01282"] = {
    title = "Serviço nível B #1282",
    est_minutes = 37,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001283 se desvio > 1.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001283" },
    gen_id = 1282,
}
_SP["PROC-L1-01283"] = {
    title = "Serviço nível C #1283",
    est_minutes = 38,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001284 se desvio > 3.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001284" },
    gen_id = 1283,
}
_SP["PROC-L1-01284"] = {
    title = "Serviço nível A #1284",
    est_minutes = 39,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001285 se desvio > 1.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001285" },
    gen_id = 1284,
}
_SP["PROC-L1-01285"] = {
    title = "Serviço nível B #1285",
    est_minutes = 40,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001286 se desvio > 3.15",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001286" },
    gen_id = 1285,
}
_SP["PROC-L1-01286"] = {
    title = "Serviço nível C #1286",
    est_minutes = 41,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001287 se desvio > 1.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001287" },
    gen_id = 1286,
}
_SP["PROC-L1-01287"] = {
    title = "Serviço nível A #1287",
    est_minutes = 42,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001288 se desvio > 1.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001288" },
    gen_id = 1287,
}
_SP["PROC-L1-01288"] = {
    title = "Serviço nível B #1288",
    est_minutes = 43,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001289 se desvio > 1.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001289" },
    gen_id = 1288,
}
_SP["PROC-L1-01289"] = {
    title = "Serviço nível C #1289",
    est_minutes = 44,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001290 se desvio > 0.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001290" },
    gen_id = 1289,
}
_SP["PROC-L1-01290"] = {
    title = "Serviço nível A #1290",
    est_minutes = 45,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001291 se desvio > 3.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001291" },
    gen_id = 1290,
}
_SP["PROC-L1-01291"] = {
    title = "Serviço nível B #1291",
    est_minutes = 46,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001292 se desvio > 4.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001292" },
    gen_id = 1291,
}
_SP["PROC-L1-01292"] = {
    title = "Serviço nível C #1292",
    est_minutes = 47,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001293 se desvio > 4.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001293" },
    gen_id = 1292,
}
_SP["PROC-L1-01293"] = {
    title = "Serviço nível A #1293",
    est_minutes = 48,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001294 se desvio > 2.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001294" },
    gen_id = 1293,
}
_SP["PROC-L1-01294"] = {
    title = "Serviço nível B #1294",
    est_minutes = 49,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001295 se desvio > 2.95",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001295" },
    gen_id = 1294,
}
_SP["PROC-L1-01295"] = {
    title = "Serviço nível C #1295",
    est_minutes = 50,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001296 se desvio > 2.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001296" },
    gen_id = 1295,
}
_SP["PROC-L1-01296"] = {
    title = "Serviço nível A #1296",
    est_minutes = 51,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001297 se desvio > 0.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001297" },
    gen_id = 1296,
}
_SP["PROC-L1-01297"] = {
    title = "Serviço nível B #1297",
    est_minutes = 52,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001298 se desvio > 1.24",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001298" },
    gen_id = 1297,
}
_SP["PROC-L1-01298"] = {
    title = "Serviço nível C #1298",
    est_minutes = 53,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001299 se desvio > 2.26",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001299" },
    gen_id = 1298,
}
_SP["PROC-L1-01299"] = {
    title = "Serviço nível A #1299",
    est_minutes = 54,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001300 se desvio > 2.35",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001300" },
    gen_id = 1299,
}
_SP["PROC-L1-01300"] = {
    title = "Serviço nível B #1300",
    est_minutes = 55,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001301 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001301" },
    gen_id = 1300,
}
_SP["PROC-L1-01301"] = {
    title = "Serviço nível C #1301",
    est_minutes = 56,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001302 se desvio > 4.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001302" },
    gen_id = 1301,
}
_SP["PROC-L1-01302"] = {
    title = "Serviço nível A #1302",
    est_minutes = 57,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001303 se desvio > 2.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001303" },
    gen_id = 1302,
}
_SP["PROC-L1-01303"] = {
    title = "Serviço nível B #1303",
    est_minutes = 58,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001304 se desvio > 0.05",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001304" },
    gen_id = 1303,
}
_SP["PROC-L1-01304"] = {
    title = "Serviço nível C #1304",
    est_minutes = 59,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001305 se desvio > 0.46",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001305" },
    gen_id = 1304,
}
_SP["PROC-L1-01305"] = {
    title = "Serviço nível A #1305",
    est_minutes = 60,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001306 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001306" },
    gen_id = 1305,
}
_SP["PROC-L1-01306"] = {
    title = "Serviço nível B #1306",
    est_minutes = 61,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001307 se desvio > 3.81",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001307" },
    gen_id = 1306,
}
_SP["PROC-L1-01307"] = {
    title = "Serviço nível C #1307",
    est_minutes = 62,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001308 se desvio > 0.59",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001308" },
    gen_id = 1307,
}
_SP["PROC-L1-01308"] = {
    title = "Serviço nível A #1308",
    est_minutes = 63,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001309 se desvio > 1.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001309" },
    gen_id = 1308,
}
_SP["PROC-L1-01309"] = {
    title = "Serviço nível B #1309",
    est_minutes = 64,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001310 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001310" },
    gen_id = 1309,
}
_SP["PROC-L1-01310"] = {
    title = "Serviço nível C #1310",
    est_minutes = 65,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001311 se desvio > 2.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001311" },
    gen_id = 1310,
}
_SP["PROC-L1-01311"] = {
    title = "Serviço nível A #1311",
    est_minutes = 66,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001312 se desvio > 3.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001312" },
    gen_id = 1311,
}
_SP["PROC-L1-01312"] = {
    title = "Serviço nível B #1312",
    est_minutes = 67,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001313 se desvio > 2.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001313" },
    gen_id = 1312,
}
_SP["PROC-L1-01313"] = {
    title = "Serviço nível C #1313",
    est_minutes = 68,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001314 se desvio > 2.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001314" },
    gen_id = 1313,
}
_SP["PROC-L1-01314"] = {
    title = "Serviço nível A #1314",
    est_minutes = 69,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001315 se desvio > 3.10",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001315" },
    gen_id = 1314,
}
_SP["PROC-L1-01315"] = {
    title = "Serviço nível B #1315",
    est_minutes = 70,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001316 se desvio > 1.92",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001316" },
    gen_id = 1315,
}
_SP["PROC-L1-01316"] = {
    title = "Serviço nível C #1316",
    est_minutes = 71,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001317 se desvio > 4.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001317" },
    gen_id = 1316,
}
_SP["PROC-L1-01317"] = {
    title = "Serviço nível A #1317",
    est_minutes = 72,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001318 se desvio > 4.80",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001318" },
    gen_id = 1317,
}
_SP["PROC-L1-01318"] = {
    title = "Serviço nível B #1318",
    est_minutes = 73,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001319 se desvio > 3.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001319" },
    gen_id = 1318,
}
_SP["PROC-L1-01319"] = {
    title = "Serviço nível C #1319",
    est_minutes = 74,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001320 se desvio > 0.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001320" },
    gen_id = 1319,
}
_SP["PROC-L1-01320"] = {
    title = "Serviço nível A #1320",
    est_minutes = 75,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001321 se desvio > 2.74",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001321" },
    gen_id = 1320,
}
_SP["PROC-L1-01321"] = {
    title = "Serviço nível B #1321",
    est_minutes = 76,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001322 se desvio > 2.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001322" },
    gen_id = 1321,
}
_SP["PROC-L1-01322"] = {
    title = "Serviço nível C #1322",
    est_minutes = 77,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001323 se desvio > 0.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001323" },
    gen_id = 1322,
}
_SP["PROC-L1-01323"] = {
    title = "Serviço nível A #1323",
    est_minutes = 78,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001324 se desvio > 3.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001324" },
    gen_id = 1323,
}
_SP["PROC-L1-01324"] = {
    title = "Serviço nível B #1324",
    est_minutes = 79,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001325 se desvio > 3.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001325" },
    gen_id = 1324,
}
_SP["PROC-L1-01325"] = {
    title = "Serviço nível C #1325",
    est_minutes = 80,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001326 se desvio > 2.30",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001326" },
    gen_id = 1325,
}
_SP["PROC-L1-01326"] = {
    title = "Serviço nível A #1326",
    est_minutes = 81,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001327 se desvio > 3.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001327" },
    gen_id = 1326,
}
_SP["PROC-L1-01327"] = {
    title = "Serviço nível B #1327",
    est_minutes = 82,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001328 se desvio > 2.67",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001328" },
    gen_id = 1327,
}
_SP["PROC-L1-01328"] = {
    title = "Serviço nível C #1328",
    est_minutes = 83,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001329 se desvio > 0.17",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001329" },
    gen_id = 1328,
}
_SP["PROC-L1-01329"] = {
    title = "Serviço nível A #1329",
    est_minutes = 84,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001330 se desvio > 4.56",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001330" },
    gen_id = 1329,
}
_SP["PROC-L1-01330"] = {
    title = "Serviço nível B #1330",
    est_minutes = 85,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001331 se desvio > 3.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001331" },
    gen_id = 1330,
}
_SP["PROC-L1-01331"] = {
    title = "Serviço nível C #1331",
    est_minutes = 86,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001332 se desvio > 3.96",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001332" },
    gen_id = 1331,
}
_SP["PROC-L1-01332"] = {
    title = "Serviço nível A #1332",
    est_minutes = 87,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001333 se desvio > 0.28",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001333" },
    gen_id = 1332,
}
_SP["PROC-L1-01333"] = {
    title = "Serviço nível B #1333",
    est_minutes = 88,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001334 se desvio > 0.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001334" },
    gen_id = 1333,
}
_SP["PROC-L1-01334"] = {
    title = "Serviço nível C #1334",
    est_minutes = 89,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001335 se desvio > 2.69",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001335" },
    gen_id = 1334,
}
_SP["PROC-L1-01335"] = {
    title = "Serviço nível A #1335",
    est_minutes = 90,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001336 se desvio > 2.54",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001336" },
    gen_id = 1335,
}
_SP["PROC-L1-01336"] = {
    title = "Serviço nível B #1336",
    est_minutes = 91,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001337 se desvio > 4.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001337" },
    gen_id = 1336,
}
_SP["PROC-L1-01337"] = {
    title = "Serviço nível C #1337",
    est_minutes = 92,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001338 se desvio > 1.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001338" },
    gen_id = 1337,
}
_SP["PROC-L1-01338"] = {
    title = "Serviço nível A #1338",
    est_minutes = 93,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001339 se desvio > 2.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001339" },
    gen_id = 1338,
}
_SP["PROC-L1-01339"] = {
    title = "Serviço nível B #1339",
    est_minutes = 94,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001340 se desvio > 1.07",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001340" },
    gen_id = 1339,
}
_SP["PROC-L1-01340"] = {
    title = "Serviço nível C #1340",
    est_minutes = 95,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001341 se desvio > 3.50",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001341" },
    gen_id = 1340,
}
_SP["PROC-L1-01341"] = {
    title = "Serviço nível A #1341",
    est_minutes = 96,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001342 se desvio > 1.12",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001342" },
    gen_id = 1341,
}
_SP["PROC-L1-01342"] = {
    title = "Serviço nível B #1342",
    est_minutes = 97,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001343 se desvio > 0.60",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001343" },
    gen_id = 1342,
}
_SP["PROC-L1-01343"] = {
    title = "Serviço nível C #1343",
    est_minutes = 98,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001344 se desvio > 4.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001344" },
    gen_id = 1343,
}
_SP["PROC-L1-01344"] = {
    title = "Serviço nível A #1344",
    est_minutes = 99,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001345 se desvio > 3.31",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001345" },
    gen_id = 1344,
}
_SP["PROC-L1-01345"] = {
    title = "Serviço nível B #1345",
    est_minutes = 100,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001346 se desvio > 1.19",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001346" },
    gen_id = 1345,
}
_SP["PROC-L1-01346"] = {
    title = "Serviço nível C #1346",
    est_minutes = 101,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001347 se desvio > 2.23",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001347" },
    gen_id = 1346,
}
_SP["PROC-L1-01347"] = {
    title = "Serviço nível A #1347",
    est_minutes = 102,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001348 se desvio > 0.11",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001348" },
    gen_id = 1347,
}
_SP["PROC-L1-01348"] = {
    title = "Serviço nível B #1348",
    est_minutes = 103,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001349 se desvio > 3.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001349" },
    gen_id = 1348,
}
_SP["PROC-L1-01349"] = {
    title = "Serviço nível C #1349",
    est_minutes = 104,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001350 se desvio > 2.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001350" },
    gen_id = 1349,
}
_SP["PROC-L1-01350"] = {
    title = "Serviço nível A #1350",
    est_minutes = 105,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001351 se desvio > 4.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001351" },
    gen_id = 1350,
}
_SP["PROC-L1-01351"] = {
    title = "Serviço nível B #1351",
    est_minutes = 106,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001352 se desvio > 3.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001352" },
    gen_id = 1351,
}
_SP["PROC-L1-01352"] = {
    title = "Serviço nível C #1352",
    est_minutes = 107,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001353 se desvio > 2.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001353" },
    gen_id = 1352,
}
_SP["PROC-L1-01353"] = {
    title = "Serviço nível A #1353",
    est_minutes = 108,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001354 se desvio > 3.49",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001354" },
    gen_id = 1353,
}
_SP["PROC-L1-01354"] = {
    title = "Serviço nível B #1354",
    est_minutes = 109,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001355 se desvio > 3.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001355" },
    gen_id = 1354,
}
_SP["PROC-L1-01355"] = {
    title = "Serviço nível C #1355",
    est_minutes = 110,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001356 se desvio > 3.21",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001356" },
    gen_id = 1355,
}
_SP["PROC-L1-01356"] = {
    title = "Serviço nível A #1356",
    est_minutes = 111,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001357 se desvio > 2.58",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001357" },
    gen_id = 1356,
}
_SP["PROC-L1-01357"] = {
    title = "Serviço nível B #1357",
    est_minutes = 112,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001358 se desvio > 4.77",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001358" },
    gen_id = 1357,
}
_SP["PROC-L1-01358"] = {
    title = "Serviço nível C #1358",
    est_minutes = 113,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001359 se desvio > 1.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001359" },
    gen_id = 1358,
}
_SP["PROC-L1-01359"] = {
    title = "Serviço nível A #1359",
    est_minutes = 114,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001360 se desvio > 1.25",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001360" },
    gen_id = 1359,
}
_SP["PROC-L1-01360"] = {
    title = "Serviço nível B #1360",
    est_minutes = 115,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001361 se desvio > 2.93",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001361" },
    gen_id = 1360,
}
_SP["PROC-L1-01361"] = {
    title = "Serviço nível C #1361",
    est_minutes = 116,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001362 se desvio > 4.97",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001362" },
    gen_id = 1361,
}
_SP["PROC-L1-01362"] = {
    title = "Serviço nível A #1362",
    est_minutes = 117,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001363 se desvio > 4.66",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001363" },
    gen_id = 1362,
}
_SP["PROC-L1-01363"] = {
    title = "Serviço nível B #1363",
    est_minutes = 118,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001364 se desvio > 3.45",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001364" },
    gen_id = 1363,
}
_SP["PROC-L1-01364"] = {
    title = "Serviço nível C #1364",
    est_minutes = 119,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001365 se desvio > 2.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001365" },
    gen_id = 1364,
}
_SP["PROC-L1-01365"] = {
    title = "Serviço nível A #1365",
    est_minutes = 120,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001366 se desvio > 4.72",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001366" },
    gen_id = 1365,
}
_SP["PROC-L1-01366"] = {
    title = "Serviço nível B #1366",
    est_minutes = 121,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001367 se desvio > 1.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001367" },
    gen_id = 1366,
}
_SP["PROC-L1-01367"] = {
    title = "Serviço nível C #1367",
    est_minutes = 122,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001368 se desvio > 4.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001368" },
    gen_id = 1367,
}
_SP["PROC-L1-01368"] = {
    title = "Serviço nível A #1368",
    est_minutes = 123,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001369 se desvio > 4.14",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001369" },
    gen_id = 1368,
}
_SP["PROC-L1-01369"] = {
    title = "Serviço nível B #1369",
    est_minutes = 124,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001370 se desvio > 4.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001370" },
    gen_id = 1369,
}
_SP["PROC-L1-01370"] = {
    title = "Serviço nível C #1370",
    est_minutes = 125,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001371 se desvio > 0.41",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001371" },
    gen_id = 1370,
}
_SP["PROC-L1-01371"] = {
    title = "Serviço nível A #1371",
    est_minutes = 126,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001372 se desvio > 0.88",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001372" },
    gen_id = 1371,
}
_SP["PROC-L1-01372"] = {
    title = "Serviço nível B #1372",
    est_minutes = 127,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001373 se desvio > 2.42",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001373" },
    gen_id = 1372,
}
_SP["PROC-L1-01373"] = {
    title = "Serviço nível C #1373",
    est_minutes = 128,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001374 se desvio > 3.78",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001374" },
    gen_id = 1373,
}
_SP["PROC-L1-01374"] = {
    title = "Serviço nível A #1374",
    est_minutes = 129,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001375 se desvio > 3.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001375" },
    gen_id = 1374,
}
_SP["PROC-L1-01375"] = {
    title = "Serviço nível B #1375",
    est_minutes = 130,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001376 se desvio > 0.39",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001376" },
    gen_id = 1375,
}
_SP["PROC-L1-01376"] = {
    title = "Serviço nível C #1376",
    est_minutes = 131,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001377 se desvio > 0.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001377" },
    gen_id = 1376,
}
_SP["PROC-L1-01377"] = {
    title = "Serviço nível A #1377",
    est_minutes = 132,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001378 se desvio > 4.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001378" },
    gen_id = 1377,
}
_SP["PROC-L1-01378"] = {
    title = "Serviço nível B #1378",
    est_minutes = 133,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001379 se desvio > 0.98",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001379" },
    gen_id = 1378,
}
_SP["PROC-L1-01379"] = {
    title = "Serviço nível C #1379",
    est_minutes = 134,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001380 se desvio > 0.03",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001380" },
    gen_id = 1379,
}
_SP["PROC-L1-01380"] = {
    title = "Serviço nível A #1380",
    est_minutes = 135,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001381 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001381" },
    gen_id = 1380,
}
_SP["PROC-L1-01381"] = {
    title = "Serviço nível B #1381",
    est_minutes = 136,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001382 se desvio > 0.82",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001382" },
    gen_id = 1381,
}
_SP["PROC-L1-01382"] = {
    title = "Serviço nível C #1382",
    est_minutes = 137,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001383 se desvio > 2.70",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001383" },
    gen_id = 1382,
}
_SP["PROC-L1-01383"] = {
    title = "Serviço nível A #1383",
    est_minutes = 138,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001384 se desvio > 1.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001384" },
    gen_id = 1383,
}
_SP["PROC-L1-01384"] = {
    title = "Serviço nível B #1384",
    est_minutes = 139,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001385 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001385" },
    gen_id = 1384,
}
_SP["PROC-L1-01385"] = {
    title = "Serviço nível C #1385",
    est_minutes = 140,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001386 se desvio > 0.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001386" },
    gen_id = 1385,
}
_SP["PROC-L1-01386"] = {
    title = "Serviço nível A #1386",
    est_minutes = 141,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001387 se desvio > 3.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001387" },
    gen_id = 1386,
}
_SP["PROC-L1-01387"] = {
    title = "Serviço nível B #1387",
    est_minutes = 142,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001388 se desvio > 4.08",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001388" },
    gen_id = 1387,
}
_SP["PROC-L1-01388"] = {
    title = "Serviço nível C #1388",
    est_minutes = 143,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001389 se desvio > 1.33",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001389" },
    gen_id = 1388,
}
_SP["PROC-L1-01389"] = {
    title = "Serviço nível A #1389",
    est_minutes = 144,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001390 se desvio > 1.55",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001390" },
    gen_id = 1389,
}
_SP["PROC-L1-01390"] = {
    title = "Serviço nível B #1390",
    est_minutes = 145,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001391 se desvio > 1.13",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001391" },
    gen_id = 1390,
}
_SP["PROC-L1-01391"] = {
    title = "Serviço nível C #1391",
    est_minutes = 146,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001392 se desvio > 4.87",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001392" },
    gen_id = 1391,
}
_SP["PROC-L1-01392"] = {
    title = "Serviço nível A #1392",
    est_minutes = 147,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001393 se desvio > 3.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001393" },
    gen_id = 1392,
}
_SP["PROC-L1-01393"] = {
    title = "Serviço nível B #1393",
    est_minutes = 148,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001394 se desvio > 0.62",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001394" },
    gen_id = 1393,
}
_SP["PROC-L1-01394"] = {
    title = "Serviço nível C #1394",
    est_minutes = 149,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001395 se desvio > 3.79",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001395" },
    gen_id = 1394,
}
_SP["PROC-L1-01395"] = {
    title = "Serviço nível A #1395",
    est_minutes = 150,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001396 se desvio > 0.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001396" },
    gen_id = 1395,
}
_SP["PROC-L1-01396"] = {
    title = "Serviço nível B #1396",
    est_minutes = 151,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001397 se desvio > 3.47",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001397" },
    gen_id = 1396,
}
_SP["PROC-L1-01397"] = {
    title = "Serviço nível C #1397",
    est_minutes = 152,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001398 se desvio > 2.38",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001398" },
    gen_id = 1397,
}
_SP["PROC-L1-01398"] = {
    title = "Serviço nível A #1398",
    est_minutes = 153,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001399 se desvio > 4.09",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001399" },
    gen_id = 1398,
}
_SP["PROC-L1-01399"] = {
    title = "Serviço nível B #1399",
    est_minutes = 154,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001400 se desvio > 1.85",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001400" },
    gen_id = 1399,
}
_SP["PROC-L1-01400"] = {
    title = "Serviço nível C #1400",
    est_minutes = 155,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001401 se desvio > 3.63",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001401" },
    gen_id = 1400,
}
_SP["PROC-L1-01401"] = {
    title = "Serviço nível A #1401",
    est_minutes = 156,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001402 se desvio > 2.48",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001402" },
    gen_id = 1401,
}
_SP["PROC-L1-01402"] = {
    title = "Serviço nível B #1402",
    est_minutes = 157,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001403 se desvio > 3.27",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001403" },
    gen_id = 1402,
}
_SP["PROC-L1-01403"] = {
    title = "Serviço nível C #1403",
    est_minutes = 158,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001404 se desvio > 3.18",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001404" },
    gen_id = 1403,
}
_SP["PROC-L1-01404"] = {
    title = "Serviço nível A #1404",
    est_minutes = 159,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001405 se desvio > 4.53",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001405" },
    gen_id = 1404,
}
_SP["PROC-L1-01405"] = {
    title = "Serviço nível B #1405",
    est_minutes = 160,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001406 se desvio > 3.40",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001406" },
    gen_id = 1405,
}
_SP["PROC-L1-01406"] = {
    title = "Serviço nível C #1406",
    est_minutes = 161,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001407 se desvio > 2.86",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001407" },
    gen_id = 1406,
}
_SP["PROC-L1-01407"] = {
    title = "Serviço nível A #1407",
    est_minutes = 162,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001408 se desvio > 0.36",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001408" },
    gen_id = 1407,
}
_SP["PROC-L1-01408"] = {
    title = "Serviço nível B #1408",
    est_minutes = 163,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 1",
        "Substituir SKU-GEN-001409 se desvio > 1.06",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001409" },
    gen_id = 1408,
}
_SP["PROC-L1-01409"] = {
    title = "Serviço nível C #1409",
    est_minutes = 164,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 2",
        "Substituir SKU-GEN-001410 se desvio > 1.83",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001410" },
    gen_id = 1409,
}
_SP["PROC-L1-01410"] = {
    title = "Serviço nível A #1410",
    est_minutes = 165,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 3",
        "Substituir SKU-GEN-001411 se desvio > 0.99",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001411" },
    gen_id = 1410,
}
_SP["PROC-L1-01411"] = {
    title = "Serviço nível B #1411",
    est_minutes = 166,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 4",
        "Substituir SKU-GEN-001412 se desvio > 1.51",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001412" },
    gen_id = 1411,
}
_SP["PROC-L1-01412"] = {
    title = "Serviço nível C #1412",
    est_minutes = 167,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 5",
        "Substituir SKU-GEN-001413 se desvio > 2.57",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001413" },
    gen_id = 1412,
}
_SP["PROC-L1-01413"] = {
    title = "Serviço nível A #1413",
    est_minutes = 168,
    labor_tier = "A",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 6",
        "Substituir SKU-GEN-001414 se desvio > 0.34",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001414" },
    gen_id = 1413,
}
_SP["PROC-L1-01414"] = {
    title = "Serviço nível B #1414",
    est_minutes = 169,
    labor_tier = "B",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 7",
        "Substituir SKU-GEN-001415 se desvio > 0.90",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001415" },
    gen_id = 1414,
}
_SP["PROC-L1-01415"] = {
    title = "Serviço nível C #1415",
    est_minutes = 170,
    labor_tier = "C",
    steps = {
        "Isolar energia e registrar KM",
        "Inspecionar torque nominal zona 8",
        "Substituir SKU-GEN-001416 se desvio > 2.94",
        "Teste funcional pós-reparo",
        "Assinar QC e arquivar OS",
    },
    required_skus = { "SKU-GEN-001416" },
    gen_id = 1415,
}

MECHANIC_GEN_PROC_COUNT = 1415
