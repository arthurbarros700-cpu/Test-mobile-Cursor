--[[
    Registro DTC estendido (fictício, para oficina / treinamento).
    Gerado por tools/gen-megadata.mjs
]]

DTC_REGISTRY = DTC_REGISTRY or {}
local _DR = DTC_REGISTRY
_DR["G00001"] = {
    title = "Condição ABS-1: correlação 24.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000002", "SKU-GEN-000008" },
    notes = "Ver procedimento PROC-L1-00002 se aplicável.",
    gen_id = 1,
}
_DR["G00002"] = {
    title = "Condição SRS-2: correlação 37.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000003", "SKU-GEN-000015" },
    notes = "Ver procedimento PROC-L1-00003 se aplicável.",
    gen_id = 2,
}
_DR["G00003"] = {
    title = "Condição CLIMATE-3: correlação 56.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000004", "SKU-GEN-000022" },
    notes = "Ver procedimento PROC-L1-00004 se aplicável.",
    gen_id = 3,
}
_DR["G00004"] = {
    title = "Condição TRANS-4: correlação 56.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000005", "SKU-GEN-000029" },
    notes = "Ver procedimento PROC-L1-00005 se aplicável.",
    gen_id = 4,
}
_DR["G00005"] = {
    title = "Condição FUEL-5: correlação 4.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000006", "SKU-GEN-000036" },
    notes = "Ver procedimento PROC-L1-00006 se aplicável.",
    gen_id = 5,
}
_DR["G00006"] = {
    title = "Condição STEER-6: correlação 95.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000007", "SKU-GEN-000043" },
    notes = "Ver procedimento PROC-L1-00007 se aplicável.",
    gen_id = 6,
}
_DR["G00007"] = {
    title = "Condição HV-7: correlação 11.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000008", "SKU-GEN-000050" },
    notes = "Ver procedimento PROC-L1-00008 se aplicável.",
    gen_id = 7,
}
_DR["G00008"] = {
    title = "Condição BODY-8: correlação 40.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000009", "SKU-GEN-000057" },
    notes = "Ver procedimento PROC-L1-00009 se aplicável.",
    gen_id = 8,
}
_DR["G00009"] = {
    title = "Condição INFO-9: correlação 52.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000010", "SKU-GEN-000064" },
    notes = "Ver procedimento PROC-L1-00010 se aplicável.",
    gen_id = 9,
}
_DR["G00010"] = {
    title = "Condição ENGINE-10: correlação 89.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000011", "SKU-GEN-000071" },
    notes = "Ver procedimento PROC-L1-00011 se aplicável.",
    gen_id = 10,
}
_DR["G00011"] = {
    title = "Condição ABS-11: correlação 48.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000012", "SKU-GEN-000078" },
    notes = "Ver procedimento PROC-L1-00012 se aplicável.",
    gen_id = 11,
}
_DR["G00012"] = {
    title = "Condição SRS-12: correlação 84.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000013", "SKU-GEN-000085" },
    notes = "Ver procedimento PROC-L1-00013 se aplicável.",
    gen_id = 12,
}
_DR["G00013"] = {
    title = "Condição CLIMATE-13: correlação 10.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000014", "SKU-GEN-000092" },
    notes = "Ver procedimento PROC-L1-00014 se aplicável.",
    gen_id = 13,
}
_DR["G00014"] = {
    title = "Condição TRANS-14: correlação 75.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000015", "SKU-GEN-000099" },
    notes = "Ver procedimento PROC-L1-00015 se aplicável.",
    gen_id = 14,
}
_DR["G00015"] = {
    title = "Condição FUEL-15: correlação 81.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000016", "SKU-GEN-000106" },
    notes = "Ver procedimento PROC-L1-00016 se aplicável.",
    gen_id = 15,
}
_DR["G00016"] = {
    title = "Condição STEER-16: correlação 65.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000017", "SKU-GEN-000113" },
    notes = "Ver procedimento PROC-L1-00017 se aplicável.",
    gen_id = 16,
}
_DR["G00017"] = {
    title = "Condição HV-17: correlação 85.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000018", "SKU-GEN-000120" },
    notes = "Ver procedimento PROC-L1-00018 se aplicável.",
    gen_id = 17,
}
_DR["G00018"] = {
    title = "Condição BODY-18: correlação 22.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000019", "SKU-GEN-000127" },
    notes = "Ver procedimento PROC-L1-00019 se aplicável.",
    gen_id = 18,
}
_DR["G00019"] = {
    title = "Condição INFO-19: correlação 90.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000020", "SKU-GEN-000134" },
    notes = "Ver procedimento PROC-L1-00020 se aplicável.",
    gen_id = 19,
}
_DR["G00020"] = {
    title = "Condição ENGINE-20: correlação 69.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000021", "SKU-GEN-000141" },
    notes = "Ver procedimento PROC-L1-00021 se aplicável.",
    gen_id = 20,
}
_DR["G00021"] = {
    title = "Condição ABS-21: correlação 73.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000022", "SKU-GEN-000148" },
    notes = "Ver procedimento PROC-L1-00022 se aplicável.",
    gen_id = 21,
}
_DR["G00022"] = {
    title = "Condição SRS-22: correlação 36.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000023", "SKU-GEN-000155" },
    notes = "Ver procedimento PROC-L1-00023 se aplicável.",
    gen_id = 22,
}
_DR["G00023"] = {
    title = "Condição CLIMATE-23: correlação 44.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000024", "SKU-GEN-000162" },
    notes = "Ver procedimento PROC-L1-00024 se aplicável.",
    gen_id = 23,
}
_DR["G00024"] = {
    title = "Condição TRANS-24: correlação 46.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000025", "SKU-GEN-000169" },
    notes = "Ver procedimento PROC-L1-00025 se aplicável.",
    gen_id = 24,
}
_DR["G00025"] = {
    title = "Condição FUEL-25: correlação 45.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000026", "SKU-GEN-000176" },
    notes = "Ver procedimento PROC-L1-00026 se aplicável.",
    gen_id = 25,
}
_DR["G00026"] = {
    title = "Condição STEER-26: correlação 18.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000027", "SKU-GEN-000183" },
    notes = "Ver procedimento PROC-L1-00027 se aplicável.",
    gen_id = 26,
}
_DR["G00027"] = {
    title = "Condição HV-27: correlação 99.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000028", "SKU-GEN-000190" },
    notes = "Ver procedimento PROC-L1-00028 se aplicável.",
    gen_id = 27,
}
_DR["G00028"] = {
    title = "Condição BODY-28: correlação 6.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000029", "SKU-GEN-000197" },
    notes = "Ver procedimento PROC-L1-00029 se aplicável.",
    gen_id = 28,
}
_DR["G00029"] = {
    title = "Condição INFO-29: correlação 39.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000030", "SKU-GEN-000204" },
    notes = "Ver procedimento PROC-L1-00030 se aplicável.",
    gen_id = 29,
}
_DR["G00030"] = {
    title = "Condição ENGINE-30: correlação 22.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000031", "SKU-GEN-000211" },
    notes = "Ver procedimento PROC-L1-00031 se aplicável.",
    gen_id = 30,
}
_DR["G00031"] = {
    title = "Condição ABS-31: correlação 8.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000032", "SKU-GEN-000218" },
    notes = "Ver procedimento PROC-L1-00032 se aplicável.",
    gen_id = 31,
}
_DR["G00032"] = {
    title = "Condição SRS-32: correlação 11.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000033", "SKU-GEN-000225" },
    notes = "Ver procedimento PROC-L1-00033 se aplicável.",
    gen_id = 32,
}
_DR["G00033"] = {
    title = "Condição CLIMATE-33: correlação 50.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000034", "SKU-GEN-000232" },
    notes = "Ver procedimento PROC-L1-00034 se aplicável.",
    gen_id = 33,
}
_DR["G00034"] = {
    title = "Condição TRANS-34: correlação 14.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000035", "SKU-GEN-000239" },
    notes = "Ver procedimento PROC-L1-00035 se aplicável.",
    gen_id = 34,
}
_DR["G00035"] = {
    title = "Condição FUEL-35: correlação 49.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000036", "SKU-GEN-000246" },
    notes = "Ver procedimento PROC-L1-00036 se aplicável.",
    gen_id = 35,
}
_DR["G00036"] = {
    title = "Condição STEER-36: correlação 96.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000037", "SKU-GEN-000253" },
    notes = "Ver procedimento PROC-L1-00037 se aplicável.",
    gen_id = 36,
}
_DR["G00037"] = {
    title = "Condição HV-37: correlação 0.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000038", "SKU-GEN-000260" },
    notes = "Ver procedimento PROC-L1-00038 se aplicável.",
    gen_id = 37,
}
_DR["G00038"] = {
    title = "Condição BODY-38: correlação 50.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000039", "SKU-GEN-000267" },
    notes = "Ver procedimento PROC-L1-00039 se aplicável.",
    gen_id = 38,
}
_DR["G00039"] = {
    title = "Condição INFO-39: correlação 70.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000040", "SKU-GEN-000274" },
    notes = "Ver procedimento PROC-L1-00040 se aplicável.",
    gen_id = 39,
}
_DR["G00040"] = {
    title = "Condição ENGINE-40: correlação 40.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000041", "SKU-GEN-000281" },
    notes = "Ver procedimento PROC-L1-00041 se aplicável.",
    gen_id = 40,
}
_DR["G00041"] = {
    title = "Condição ABS-41: correlação 33.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000042", "SKU-GEN-000288" },
    notes = "Ver procedimento PROC-L1-00042 se aplicável.",
    gen_id = 41,
}
_DR["G00042"] = {
    title = "Condição SRS-42: correlação 21.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000043", "SKU-GEN-000295" },
    notes = "Ver procedimento PROC-L1-00043 se aplicável.",
    gen_id = 42,
}
_DR["G00043"] = {
    title = "Condição CLIMATE-43: correlação 10.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000044", "SKU-GEN-000302" },
    notes = "Ver procedimento PROC-L1-00044 se aplicável.",
    gen_id = 43,
}
_DR["G00044"] = {
    title = "Condição TRANS-44: correlação 37.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000045", "SKU-GEN-000309" },
    notes = "Ver procedimento PROC-L1-00045 se aplicável.",
    gen_id = 44,
}
_DR["G00045"] = {
    title = "Condição FUEL-45: correlação 71.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000046", "SKU-GEN-000316" },
    notes = "Ver procedimento PROC-L1-00046 se aplicável.",
    gen_id = 45,
}
_DR["G00046"] = {
    title = "Condição STEER-46: correlação 26.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000047", "SKU-GEN-000323" },
    notes = "Ver procedimento PROC-L1-00047 se aplicável.",
    gen_id = 46,
}
_DR["G00047"] = {
    title = "Condição HV-47: correlação 31.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000048", "SKU-GEN-000330" },
    notes = "Ver procedimento PROC-L1-00048 se aplicável.",
    gen_id = 47,
}
_DR["G00048"] = {
    title = "Condição BODY-48: correlação 73.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000049", "SKU-GEN-000337" },
    notes = "Ver procedimento PROC-L1-00049 se aplicável.",
    gen_id = 48,
}
_DR["G00049"] = {
    title = "Condição INFO-49: correlação 18.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000050", "SKU-GEN-000344" },
    notes = "Ver procedimento PROC-L1-00050 se aplicável.",
    gen_id = 49,
}
_DR["G00050"] = {
    title = "Condição ENGINE-50: correlação 84.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000051", "SKU-GEN-000351" },
    notes = "Ver procedimento PROC-L1-00051 se aplicável.",
    gen_id = 50,
}
_DR["G00051"] = {
    title = "Condição ABS-51: correlação 89.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000052", "SKU-GEN-000358" },
    notes = "Ver procedimento PROC-L1-00052 se aplicável.",
    gen_id = 51,
}
_DR["G00052"] = {
    title = "Condição SRS-52: correlação 92.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000053", "SKU-GEN-000365" },
    notes = "Ver procedimento PROC-L1-00053 se aplicável.",
    gen_id = 52,
}
_DR["G00053"] = {
    title = "Condição CLIMATE-53: correlação 11.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000054", "SKU-GEN-000372" },
    notes = "Ver procedimento PROC-L1-00054 se aplicável.",
    gen_id = 53,
}
_DR["G00054"] = {
    title = "Condição TRANS-54: correlação 90.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000055", "SKU-GEN-000379" },
    notes = "Ver procedimento PROC-L1-00055 se aplicável.",
    gen_id = 54,
}
_DR["G00055"] = {
    title = "Condição FUEL-55: correlação 16.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000056", "SKU-GEN-000386" },
    notes = "Ver procedimento PROC-L1-00056 se aplicável.",
    gen_id = 55,
}
_DR["G00056"] = {
    title = "Condição STEER-56: correlação 97.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000057", "SKU-GEN-000393" },
    notes = "Ver procedimento PROC-L1-00057 se aplicável.",
    gen_id = 56,
}
_DR["G00057"] = {
    title = "Condição HV-57: correlação 43.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000058", "SKU-GEN-000400" },
    notes = "Ver procedimento PROC-L1-00058 se aplicável.",
    gen_id = 57,
}
_DR["G00058"] = {
    title = "Condição BODY-58: correlação 71.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000059", "SKU-GEN-000407" },
    notes = "Ver procedimento PROC-L1-00059 se aplicável.",
    gen_id = 58,
}
_DR["G00059"] = {
    title = "Condição INFO-59: correlação 87.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000060", "SKU-GEN-000414" },
    notes = "Ver procedimento PROC-L1-00060 se aplicável.",
    gen_id = 59,
}
_DR["G00060"] = {
    title = "Condição ENGINE-60: correlação 46.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000061", "SKU-GEN-000421" },
    notes = "Ver procedimento PROC-L1-00061 se aplicável.",
    gen_id = 60,
}
_DR["G00061"] = {
    title = "Condição ABS-61: correlação 10.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000062", "SKU-GEN-000428" },
    notes = "Ver procedimento PROC-L1-00062 se aplicável.",
    gen_id = 61,
}
_DR["G00062"] = {
    title = "Condição SRS-62: correlação 2.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000063", "SKU-GEN-000435" },
    notes = "Ver procedimento PROC-L1-00063 se aplicável.",
    gen_id = 62,
}
_DR["G00063"] = {
    title = "Condição CLIMATE-63: correlação 7.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000064", "SKU-GEN-000442" },
    notes = "Ver procedimento PROC-L1-00064 se aplicável.",
    gen_id = 63,
}
_DR["G00064"] = {
    title = "Condição TRANS-64: correlação 12.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000065", "SKU-GEN-000449" },
    notes = "Ver procedimento PROC-L1-00065 se aplicável.",
    gen_id = 64,
}
_DR["G00065"] = {
    title = "Condição FUEL-65: correlação 55.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000066", "SKU-GEN-000456" },
    notes = "Ver procedimento PROC-L1-00066 se aplicável.",
    gen_id = 65,
}
_DR["G00066"] = {
    title = "Condição STEER-66: correlação 92.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000067", "SKU-GEN-000463" },
    notes = "Ver procedimento PROC-L1-00067 se aplicável.",
    gen_id = 66,
}
_DR["G00067"] = {
    title = "Condição HV-67: correlação 45.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000068", "SKU-GEN-000470" },
    notes = "Ver procedimento PROC-L1-00068 se aplicável.",
    gen_id = 67,
}
_DR["G00068"] = {
    title = "Condição BODY-68: correlação 36.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000069", "SKU-GEN-000477" },
    notes = "Ver procedimento PROC-L1-00069 se aplicável.",
    gen_id = 68,
}
_DR["G00069"] = {
    title = "Condição INFO-69: correlação 25.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000070", "SKU-GEN-000484" },
    notes = "Ver procedimento PROC-L1-00070 se aplicável.",
    gen_id = 69,
}
_DR["G00070"] = {
    title = "Condição ENGINE-70: correlação 46.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000071", "SKU-GEN-000491" },
    notes = "Ver procedimento PROC-L1-00071 se aplicável.",
    gen_id = 70,
}
_DR["G00071"] = {
    title = "Condição ABS-71: correlação 73.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000072", "SKU-GEN-000498" },
    notes = "Ver procedimento PROC-L1-00072 se aplicável.",
    gen_id = 71,
}
_DR["G00072"] = {
    title = "Condição SRS-72: correlação 81.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000073", "SKU-GEN-000505" },
    notes = "Ver procedimento PROC-L1-00073 se aplicável.",
    gen_id = 72,
}
_DR["G00073"] = {
    title = "Condição CLIMATE-73: correlação 45.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000074", "SKU-GEN-000512" },
    notes = "Ver procedimento PROC-L1-00074 se aplicável.",
    gen_id = 73,
}
_DR["G00074"] = {
    title = "Condição TRANS-74: correlação 53.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000075", "SKU-GEN-000519" },
    notes = "Ver procedimento PROC-L1-00075 se aplicável.",
    gen_id = 74,
}
_DR["G00075"] = {
    title = "Condição FUEL-75: correlação 16.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000076", "SKU-GEN-000526" },
    notes = "Ver procedimento PROC-L1-00076 se aplicável.",
    gen_id = 75,
}
_DR["G00076"] = {
    title = "Condição STEER-76: correlação 68.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000077", "SKU-GEN-000533" },
    notes = "Ver procedimento PROC-L1-00077 se aplicável.",
    gen_id = 76,
}
_DR["G00077"] = {
    title = "Condição HV-77: correlação 79.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000078", "SKU-GEN-000540" },
    notes = "Ver procedimento PROC-L1-00078 se aplicável.",
    gen_id = 77,
}
_DR["G00078"] = {
    title = "Condição BODY-78: correlação 75.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000079", "SKU-GEN-000547" },
    notes = "Ver procedimento PROC-L1-00079 se aplicável.",
    gen_id = 78,
}
_DR["G00079"] = {
    title = "Condição INFO-79: correlação 12.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000080", "SKU-GEN-000554" },
    notes = "Ver procedimento PROC-L1-00080 se aplicável.",
    gen_id = 79,
}
_DR["G00080"] = {
    title = "Condição ENGINE-80: correlação 61.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000081", "SKU-GEN-000561" },
    notes = "Ver procedimento PROC-L1-00081 se aplicável.",
    gen_id = 80,
}
_DR["G00081"] = {
    title = "Condição ABS-81: correlação 49.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000082", "SKU-GEN-000568" },
    notes = "Ver procedimento PROC-L1-00082 se aplicável.",
    gen_id = 81,
}
_DR["G00082"] = {
    title = "Condição SRS-82: correlação 30.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000083", "SKU-GEN-000575" },
    notes = "Ver procedimento PROC-L1-00083 se aplicável.",
    gen_id = 82,
}
_DR["G00083"] = {
    title = "Condição CLIMATE-83: correlação 29.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000084", "SKU-GEN-000582" },
    notes = "Ver procedimento PROC-L1-00084 se aplicável.",
    gen_id = 83,
}
_DR["G00084"] = {
    title = "Condição TRANS-84: correlação 14.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000085", "SKU-GEN-000589" },
    notes = "Ver procedimento PROC-L1-00085 se aplicável.",
    gen_id = 84,
}
_DR["G00085"] = {
    title = "Condição FUEL-85: correlação 9.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000086", "SKU-GEN-000596" },
    notes = "Ver procedimento PROC-L1-00086 se aplicável.",
    gen_id = 85,
}
_DR["G00086"] = {
    title = "Condição STEER-86: correlação 81.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000087", "SKU-GEN-000603" },
    notes = "Ver procedimento PROC-L1-00087 se aplicável.",
    gen_id = 86,
}
_DR["G00087"] = {
    title = "Condição HV-87: correlação 0.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000088", "SKU-GEN-000610" },
    notes = "Ver procedimento PROC-L1-00088 se aplicável.",
    gen_id = 87,
}
_DR["G00088"] = {
    title = "Condição BODY-88: correlação 17.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000089", "SKU-GEN-000617" },
    notes = "Ver procedimento PROC-L1-00089 se aplicável.",
    gen_id = 88,
}
_DR["G00089"] = {
    title = "Condição INFO-89: correlação 6.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000090", "SKU-GEN-000624" },
    notes = "Ver procedimento PROC-L1-00090 se aplicável.",
    gen_id = 89,
}
_DR["G00090"] = {
    title = "Condição ENGINE-90: correlação 92.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000091", "SKU-GEN-000631" },
    notes = "Ver procedimento PROC-L1-00091 se aplicável.",
    gen_id = 90,
}
_DR["G00091"] = {
    title = "Condição ABS-91: correlação 67.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000092", "SKU-GEN-000638" },
    notes = "Ver procedimento PROC-L1-00092 se aplicável.",
    gen_id = 91,
}
_DR["G00092"] = {
    title = "Condição SRS-92: correlação 88.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000093", "SKU-GEN-000645" },
    notes = "Ver procedimento PROC-L1-00093 se aplicável.",
    gen_id = 92,
}
_DR["G00093"] = {
    title = "Condição CLIMATE-93: correlação 77.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000094", "SKU-GEN-000652" },
    notes = "Ver procedimento PROC-L1-00094 se aplicável.",
    gen_id = 93,
}
_DR["G00094"] = {
    title = "Condição TRANS-94: correlação 4.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000095", "SKU-GEN-000659" },
    notes = "Ver procedimento PROC-L1-00095 se aplicável.",
    gen_id = 94,
}
_DR["G00095"] = {
    title = "Condição FUEL-95: correlação 43.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000096", "SKU-GEN-000666" },
    notes = "Ver procedimento PROC-L1-00096 se aplicável.",
    gen_id = 95,
}
_DR["G00096"] = {
    title = "Condição STEER-96: correlação 11.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000097", "SKU-GEN-000673" },
    notes = "Ver procedimento PROC-L1-00097 se aplicável.",
    gen_id = 96,
}
_DR["G00097"] = {
    title = "Condição HV-97: correlação 63.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000098", "SKU-GEN-000680" },
    notes = "Ver procedimento PROC-L1-00098 se aplicável.",
    gen_id = 97,
}
_DR["G00098"] = {
    title = "Condição BODY-98: correlação 41.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000099", "SKU-GEN-000687" },
    notes = "Ver procedimento PROC-L1-00099 se aplicável.",
    gen_id = 98,
}
_DR["G00099"] = {
    title = "Condição INFO-99: correlação 44.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000100", "SKU-GEN-000694" },
    notes = "Ver procedimento PROC-L1-00100 se aplicável.",
    gen_id = 99,
}
_DR["G00100"] = {
    title = "Condição ENGINE-100: correlação 5.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000101", "SKU-GEN-000701" },
    notes = "Ver procedimento PROC-L1-00101 se aplicável.",
    gen_id = 100,
}
_DR["G00101"] = {
    title = "Condição ABS-101: correlação 33.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000102", "SKU-GEN-000708" },
    notes = "Ver procedimento PROC-L1-00102 se aplicável.",
    gen_id = 101,
}
_DR["G00102"] = {
    title = "Condição SRS-102: correlação 60.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000103", "SKU-GEN-000715" },
    notes = "Ver procedimento PROC-L1-00103 se aplicável.",
    gen_id = 102,
}
_DR["G00103"] = {
    title = "Condição CLIMATE-103: correlação 36.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000104", "SKU-GEN-000722" },
    notes = "Ver procedimento PROC-L1-00104 se aplicável.",
    gen_id = 103,
}
_DR["G00104"] = {
    title = "Condição TRANS-104: correlação 79.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000105", "SKU-GEN-000729" },
    notes = "Ver procedimento PROC-L1-00105 se aplicável.",
    gen_id = 104,
}
_DR["G00105"] = {
    title = "Condição FUEL-105: correlação 50.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000106", "SKU-GEN-000736" },
    notes = "Ver procedimento PROC-L1-00106 se aplicável.",
    gen_id = 105,
}
_DR["G00106"] = {
    title = "Condição STEER-106: correlação 87.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000107", "SKU-GEN-000743" },
    notes = "Ver procedimento PROC-L1-00107 se aplicável.",
    gen_id = 106,
}
_DR["G00107"] = {
    title = "Condição HV-107: correlação 0.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000108", "SKU-GEN-000750" },
    notes = "Ver procedimento PROC-L1-00108 se aplicável.",
    gen_id = 107,
}
_DR["G00108"] = {
    title = "Condição BODY-108: correlação 20.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000109", "SKU-GEN-000757" },
    notes = "Ver procedimento PROC-L1-00109 se aplicável.",
    gen_id = 108,
}
_DR["G00109"] = {
    title = "Condição INFO-109: correlação 36.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000110", "SKU-GEN-000764" },
    notes = "Ver procedimento PROC-L1-00110 se aplicável.",
    gen_id = 109,
}
_DR["G00110"] = {
    title = "Condição ENGINE-110: correlação 16.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000111", "SKU-GEN-000771" },
    notes = "Ver procedimento PROC-L1-00111 se aplicável.",
    gen_id = 110,
}
_DR["G00111"] = {
    title = "Condição ABS-111: correlação 29.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000112", "SKU-GEN-000778" },
    notes = "Ver procedimento PROC-L1-00112 se aplicável.",
    gen_id = 111,
}
_DR["G00112"] = {
    title = "Condição SRS-112: correlação 88.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000113", "SKU-GEN-000785" },
    notes = "Ver procedimento PROC-L1-00113 se aplicável.",
    gen_id = 112,
}
_DR["G00113"] = {
    title = "Condição CLIMATE-113: correlação 97.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000114", "SKU-GEN-000792" },
    notes = "Ver procedimento PROC-L1-00114 se aplicável.",
    gen_id = 113,
}
_DR["G00114"] = {
    title = "Condição TRANS-114: correlação 59.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000115", "SKU-GEN-000799" },
    notes = "Ver procedimento PROC-L1-00115 se aplicável.",
    gen_id = 114,
}
_DR["G00115"] = {
    title = "Condição FUEL-115: correlação 86.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000116", "SKU-GEN-000806" },
    notes = "Ver procedimento PROC-L1-00116 se aplicável.",
    gen_id = 115,
}
_DR["G00116"] = {
    title = "Condição STEER-116: correlação 53.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000117", "SKU-GEN-000813" },
    notes = "Ver procedimento PROC-L1-00117 se aplicável.",
    gen_id = 116,
}
_DR["G00117"] = {
    title = "Condição HV-117: correlação 29.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000118", "SKU-GEN-000820" },
    notes = "Ver procedimento PROC-L1-00118 se aplicável.",
    gen_id = 117,
}
_DR["G00118"] = {
    title = "Condição BODY-118: correlação 80.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000119", "SKU-GEN-000827" },
    notes = "Ver procedimento PROC-L1-00119 se aplicável.",
    gen_id = 118,
}
_DR["G00119"] = {
    title = "Condição INFO-119: correlação 99.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000120", "SKU-GEN-000834" },
    notes = "Ver procedimento PROC-L1-00120 se aplicável.",
    gen_id = 119,
}
_DR["G00120"] = {
    title = "Condição ENGINE-120: correlação 70.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000121", "SKU-GEN-000841" },
    notes = "Ver procedimento PROC-L1-00121 se aplicável.",
    gen_id = 120,
}
_DR["G00121"] = {
    title = "Condição ABS-121: correlação 15.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000122", "SKU-GEN-000848" },
    notes = "Ver procedimento PROC-L1-00122 se aplicável.",
    gen_id = 121,
}
_DR["G00122"] = {
    title = "Condição SRS-122: correlação 40.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000123", "SKU-GEN-000855" },
    notes = "Ver procedimento PROC-L1-00123 se aplicável.",
    gen_id = 122,
}
_DR["G00123"] = {
    title = "Condição CLIMATE-123: correlação 72.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000124", "SKU-GEN-000862" },
    notes = "Ver procedimento PROC-L1-00124 se aplicável.",
    gen_id = 123,
}
_DR["G00124"] = {
    title = "Condição TRANS-124: correlação 87.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000125", "SKU-GEN-000869" },
    notes = "Ver procedimento PROC-L1-00125 se aplicável.",
    gen_id = 124,
}
_DR["G00125"] = {
    title = "Condição FUEL-125: correlação 74.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000126", "SKU-GEN-000876" },
    notes = "Ver procedimento PROC-L1-00126 se aplicável.",
    gen_id = 125,
}
_DR["G00126"] = {
    title = "Condição STEER-126: correlação 37.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000127", "SKU-GEN-000883" },
    notes = "Ver procedimento PROC-L1-00127 se aplicável.",
    gen_id = 126,
}
_DR["G00127"] = {
    title = "Condição HV-127: correlação 32.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000128", "SKU-GEN-000890" },
    notes = "Ver procedimento PROC-L1-00128 se aplicável.",
    gen_id = 127,
}
_DR["G00128"] = {
    title = "Condição BODY-128: correlação 40.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000129", "SKU-GEN-000897" },
    notes = "Ver procedimento PROC-L1-00129 se aplicável.",
    gen_id = 128,
}
_DR["G00129"] = {
    title = "Condição INFO-129: correlação 36.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000130", "SKU-GEN-000904" },
    notes = "Ver procedimento PROC-L1-00130 se aplicável.",
    gen_id = 129,
}
_DR["G00130"] = {
    title = "Condição ENGINE-130: correlação 38.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000131", "SKU-GEN-000911" },
    notes = "Ver procedimento PROC-L1-00131 se aplicável.",
    gen_id = 130,
}
_DR["G00131"] = {
    title = "Condição ABS-131: correlação 50.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000132", "SKU-GEN-000918" },
    notes = "Ver procedimento PROC-L1-00132 se aplicável.",
    gen_id = 131,
}
_DR["G00132"] = {
    title = "Condição SRS-132: correlação 56.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000133", "SKU-GEN-000925" },
    notes = "Ver procedimento PROC-L1-00133 se aplicável.",
    gen_id = 132,
}
_DR["G00133"] = {
    title = "Condição CLIMATE-133: correlação 43.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000134", "SKU-GEN-000932" },
    notes = "Ver procedimento PROC-L1-00134 se aplicável.",
    gen_id = 133,
}
_DR["G00134"] = {
    title = "Condição TRANS-134: correlação 4.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000135", "SKU-GEN-000939" },
    notes = "Ver procedimento PROC-L1-00135 se aplicável.",
    gen_id = 134,
}
_DR["G00135"] = {
    title = "Condição FUEL-135: correlação 1.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000136", "SKU-GEN-000946" },
    notes = "Ver procedimento PROC-L1-00136 se aplicável.",
    gen_id = 135,
}
_DR["G00136"] = {
    title = "Condição STEER-136: correlação 98.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000137", "SKU-GEN-000953" },
    notes = "Ver procedimento PROC-L1-00137 se aplicável.",
    gen_id = 136,
}
_DR["G00137"] = {
    title = "Condição HV-137: correlação 3.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000138", "SKU-GEN-000960" },
    notes = "Ver procedimento PROC-L1-00138 se aplicável.",
    gen_id = 137,
}
_DR["G00138"] = {
    title = "Condição BODY-138: correlação 86.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000139", "SKU-GEN-000967" },
    notes = "Ver procedimento PROC-L1-00139 se aplicável.",
    gen_id = 138,
}
_DR["G00139"] = {
    title = "Condição INFO-139: correlação 45.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000140", "SKU-GEN-000974" },
    notes = "Ver procedimento PROC-L1-00140 se aplicável.",
    gen_id = 139,
}
_DR["G00140"] = {
    title = "Condição ENGINE-140: correlação 6.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000141", "SKU-GEN-000981" },
    notes = "Ver procedimento PROC-L1-00141 se aplicável.",
    gen_id = 140,
}
_DR["G00141"] = {
    title = "Condição ABS-141: correlação 57.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000142", "SKU-GEN-000988" },
    notes = "Ver procedimento PROC-L1-00142 se aplicável.",
    gen_id = 141,
}
_DR["G00142"] = {
    title = "Condição SRS-142: correlação 25.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000143", "SKU-GEN-000995" },
    notes = "Ver procedimento PROC-L1-00143 se aplicável.",
    gen_id = 142,
}
_DR["G00143"] = {
    title = "Condição CLIMATE-143: correlação 60.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000144", "SKU-GEN-001002" },
    notes = "Ver procedimento PROC-L1-00144 se aplicável.",
    gen_id = 143,
}
_DR["G00144"] = {
    title = "Condição TRANS-144: correlação 10.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000145", "SKU-GEN-001009" },
    notes = "Ver procedimento PROC-L1-00145 se aplicável.",
    gen_id = 144,
}
_DR["G00145"] = {
    title = "Condição FUEL-145: correlação 17.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000146", "SKU-GEN-001016" },
    notes = "Ver procedimento PROC-L1-00146 se aplicável.",
    gen_id = 145,
}
_DR["G00146"] = {
    title = "Condição STEER-146: correlação 79.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000147", "SKU-GEN-001023" },
    notes = "Ver procedimento PROC-L1-00147 se aplicável.",
    gen_id = 146,
}
_DR["G00147"] = {
    title = "Condição HV-147: correlação 39.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000148", "SKU-GEN-001030" },
    notes = "Ver procedimento PROC-L1-00148 se aplicável.",
    gen_id = 147,
}
_DR["G00148"] = {
    title = "Condição BODY-148: correlação 44.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000149", "SKU-GEN-001037" },
    notes = "Ver procedimento PROC-L1-00149 se aplicável.",
    gen_id = 148,
}
_DR["G00149"] = {
    title = "Condição INFO-149: correlação 96.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000150", "SKU-GEN-001044" },
    notes = "Ver procedimento PROC-L1-00150 se aplicável.",
    gen_id = 149,
}
_DR["G00150"] = {
    title = "Condição ENGINE-150: correlação 90.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000151", "SKU-GEN-001051" },
    notes = "Ver procedimento PROC-L1-00151 se aplicável.",
    gen_id = 150,
}
_DR["G00151"] = {
    title = "Condição ABS-151: correlação 44.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000152", "SKU-GEN-001058" },
    notes = "Ver procedimento PROC-L1-00152 se aplicável.",
    gen_id = 151,
}
_DR["G00152"] = {
    title = "Condição SRS-152: correlação 66.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000153", "SKU-GEN-001065" },
    notes = "Ver procedimento PROC-L1-00153 se aplicável.",
    gen_id = 152,
}
_DR["G00153"] = {
    title = "Condição CLIMATE-153: correlação 44.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000154", "SKU-GEN-001072" },
    notes = "Ver procedimento PROC-L1-00154 se aplicável.",
    gen_id = 153,
}
_DR["G00154"] = {
    title = "Condição TRANS-154: correlação 29.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000155", "SKU-GEN-001079" },
    notes = "Ver procedimento PROC-L1-00155 se aplicável.",
    gen_id = 154,
}
_DR["G00155"] = {
    title = "Condição FUEL-155: correlação 89.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000156", "SKU-GEN-001086" },
    notes = "Ver procedimento PROC-L1-00156 se aplicável.",
    gen_id = 155,
}
_DR["G00156"] = {
    title = "Condição STEER-156: correlação 65.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000157", "SKU-GEN-001093" },
    notes = "Ver procedimento PROC-L1-00157 se aplicável.",
    gen_id = 156,
}
_DR["G00157"] = {
    title = "Condição HV-157: correlação 50.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000158", "SKU-GEN-001100" },
    notes = "Ver procedimento PROC-L1-00158 se aplicável.",
    gen_id = 157,
}
_DR["G00158"] = {
    title = "Condição BODY-158: correlação 95.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000159", "SKU-GEN-001107" },
    notes = "Ver procedimento PROC-L1-00159 se aplicável.",
    gen_id = 158,
}
_DR["G00159"] = {
    title = "Condição INFO-159: correlação 67.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000160", "SKU-GEN-001114" },
    notes = "Ver procedimento PROC-L1-00160 se aplicável.",
    gen_id = 159,
}
_DR["G00160"] = {
    title = "Condição ENGINE-160: correlação 26.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000161", "SKU-GEN-001121" },
    notes = "Ver procedimento PROC-L1-00161 se aplicável.",
    gen_id = 160,
}
_DR["G00161"] = {
    title = "Condição ABS-161: correlação 76.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000162", "SKU-GEN-001128" },
    notes = "Ver procedimento PROC-L1-00162 se aplicável.",
    gen_id = 161,
}
_DR["G00162"] = {
    title = "Condição SRS-162: correlação 67.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000163", "SKU-GEN-001135" },
    notes = "Ver procedimento PROC-L1-00163 se aplicável.",
    gen_id = 162,
}
_DR["G00163"] = {
    title = "Condição CLIMATE-163: correlação 66.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000164", "SKU-GEN-001142" },
    notes = "Ver procedimento PROC-L1-00164 se aplicável.",
    gen_id = 163,
}
_DR["G00164"] = {
    title = "Condição TRANS-164: correlação 61.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000165", "SKU-GEN-001149" },
    notes = "Ver procedimento PROC-L1-00165 se aplicável.",
    gen_id = 164,
}
_DR["G00165"] = {
    title = "Condição FUEL-165: correlação 37.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000166", "SKU-GEN-001156" },
    notes = "Ver procedimento PROC-L1-00166 se aplicável.",
    gen_id = 165,
}
_DR["G00166"] = {
    title = "Condição STEER-166: correlação 22.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000167", "SKU-GEN-001163" },
    notes = "Ver procedimento PROC-L1-00167 se aplicável.",
    gen_id = 166,
}
_DR["G00167"] = {
    title = "Condição HV-167: correlação 35.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000168", "SKU-GEN-001170" },
    notes = "Ver procedimento PROC-L1-00168 se aplicável.",
    gen_id = 167,
}
_DR["G00168"] = {
    title = "Condição BODY-168: correlação 45.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000169", "SKU-GEN-001177" },
    notes = "Ver procedimento PROC-L1-00169 se aplicável.",
    gen_id = 168,
}
_DR["G00169"] = {
    title = "Condição INFO-169: correlação 46.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000170", "SKU-GEN-001184" },
    notes = "Ver procedimento PROC-L1-00170 se aplicável.",
    gen_id = 169,
}
_DR["G00170"] = {
    title = "Condição ENGINE-170: correlação 68.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000171", "SKU-GEN-001191" },
    notes = "Ver procedimento PROC-L1-00171 se aplicável.",
    gen_id = 170,
}
_DR["G00171"] = {
    title = "Condição ABS-171: correlação 89.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000172", "SKU-GEN-001198" },
    notes = "Ver procedimento PROC-L1-00172 se aplicável.",
    gen_id = 171,
}
_DR["G00172"] = {
    title = "Condição SRS-172: correlação 9.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000173", "SKU-GEN-001205" },
    notes = "Ver procedimento PROC-L1-00173 se aplicável.",
    gen_id = 172,
}
_DR["G00173"] = {
    title = "Condição CLIMATE-173: correlação 74.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000174", "SKU-GEN-001212" },
    notes = "Ver procedimento PROC-L1-00174 se aplicável.",
    gen_id = 173,
}
_DR["G00174"] = {
    title = "Condição TRANS-174: correlação 59.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000175", "SKU-GEN-001219" },
    notes = "Ver procedimento PROC-L1-00175 se aplicável.",
    gen_id = 174,
}
_DR["G00175"] = {
    title = "Condição FUEL-175: correlação 62.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000176", "SKU-GEN-001226" },
    notes = "Ver procedimento PROC-L1-00176 se aplicável.",
    gen_id = 175,
}
_DR["G00176"] = {
    title = "Condição STEER-176: correlação 76.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000177", "SKU-GEN-001233" },
    notes = "Ver procedimento PROC-L1-00177 se aplicável.",
    gen_id = 176,
}
_DR["G00177"] = {
    title = "Condição HV-177: correlação 7.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000178", "SKU-GEN-001240" },
    notes = "Ver procedimento PROC-L1-00178 se aplicável.",
    gen_id = 177,
}
_DR["G00178"] = {
    title = "Condição BODY-178: correlação 2.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000179", "SKU-GEN-001247" },
    notes = "Ver procedimento PROC-L1-00179 se aplicável.",
    gen_id = 178,
}
_DR["G00179"] = {
    title = "Condição INFO-179: correlação 67.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000180", "SKU-GEN-001254" },
    notes = "Ver procedimento PROC-L1-00180 se aplicável.",
    gen_id = 179,
}
_DR["G00180"] = {
    title = "Condição ENGINE-180: correlação 45.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000181", "SKU-GEN-001261" },
    notes = "Ver procedimento PROC-L1-00181 se aplicável.",
    gen_id = 180,
}
_DR["G00181"] = {
    title = "Condição ABS-181: correlação 1.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000182", "SKU-GEN-001268" },
    notes = "Ver procedimento PROC-L1-00182 se aplicável.",
    gen_id = 181,
}
_DR["G00182"] = {
    title = "Condição SRS-182: correlação 45.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000183", "SKU-GEN-001275" },
    notes = "Ver procedimento PROC-L1-00183 se aplicável.",
    gen_id = 182,
}
_DR["G00183"] = {
    title = "Condição CLIMATE-183: correlação 90.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000184", "SKU-GEN-001282" },
    notes = "Ver procedimento PROC-L1-00184 se aplicável.",
    gen_id = 183,
}
_DR["G00184"] = {
    title = "Condição TRANS-184: correlação 60.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000185", "SKU-GEN-001289" },
    notes = "Ver procedimento PROC-L1-00185 se aplicável.",
    gen_id = 184,
}
_DR["G00185"] = {
    title = "Condição FUEL-185: correlação 55.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000186", "SKU-GEN-001296" },
    notes = "Ver procedimento PROC-L1-00186 se aplicável.",
    gen_id = 185,
}
_DR["G00186"] = {
    title = "Condição STEER-186: correlação 31.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000187", "SKU-GEN-001303" },
    notes = "Ver procedimento PROC-L1-00187 se aplicável.",
    gen_id = 186,
}
_DR["G00187"] = {
    title = "Condição HV-187: correlação 53.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000188", "SKU-GEN-001310" },
    notes = "Ver procedimento PROC-L1-00188 se aplicável.",
    gen_id = 187,
}
_DR["G00188"] = {
    title = "Condição BODY-188: correlação 17.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000189", "SKU-GEN-001317" },
    notes = "Ver procedimento PROC-L1-00189 se aplicável.",
    gen_id = 188,
}
_DR["G00189"] = {
    title = "Condição INFO-189: correlação 65.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000190", "SKU-GEN-001324" },
    notes = "Ver procedimento PROC-L1-00190 se aplicável.",
    gen_id = 189,
}
_DR["G00190"] = {
    title = "Condição ENGINE-190: correlação 52.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000191", "SKU-GEN-001331" },
    notes = "Ver procedimento PROC-L1-00191 se aplicável.",
    gen_id = 190,
}
_DR["G00191"] = {
    title = "Condição ABS-191: correlação 17.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000192", "SKU-GEN-001338" },
    notes = "Ver procedimento PROC-L1-00192 se aplicável.",
    gen_id = 191,
}
_DR["G00192"] = {
    title = "Condição SRS-192: correlação 93.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000193", "SKU-GEN-001345" },
    notes = "Ver procedimento PROC-L1-00193 se aplicável.",
    gen_id = 192,
}
_DR["G00193"] = {
    title = "Condição CLIMATE-193: correlação 21.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000194", "SKU-GEN-001352" },
    notes = "Ver procedimento PROC-L1-00194 se aplicável.",
    gen_id = 193,
}
_DR["G00194"] = {
    title = "Condição TRANS-194: correlação 24.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000195", "SKU-GEN-001359" },
    notes = "Ver procedimento PROC-L1-00195 se aplicável.",
    gen_id = 194,
}
_DR["G00195"] = {
    title = "Condição FUEL-195: correlação 98.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000196", "SKU-GEN-001366" },
    notes = "Ver procedimento PROC-L1-00196 se aplicável.",
    gen_id = 195,
}
_DR["G00196"] = {
    title = "Condição STEER-196: correlação 13.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000197", "SKU-GEN-001373" },
    notes = "Ver procedimento PROC-L1-00197 se aplicável.",
    gen_id = 196,
}
_DR["G00197"] = {
    title = "Condição HV-197: correlação 63.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000198", "SKU-GEN-001380" },
    notes = "Ver procedimento PROC-L1-00198 se aplicável.",
    gen_id = 197,
}
_DR["G00198"] = {
    title = "Condição BODY-198: correlação 92.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000199", "SKU-GEN-001387" },
    notes = "Ver procedimento PROC-L1-00199 se aplicável.",
    gen_id = 198,
}
_DR["G00199"] = {
    title = "Condição INFO-199: correlação 35.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000200", "SKU-GEN-001394" },
    notes = "Ver procedimento PROC-L1-00200 se aplicável.",
    gen_id = 199,
}
_DR["G00200"] = {
    title = "Condição ENGINE-200: correlação 72.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000201", "SKU-GEN-001401" },
    notes = "Ver procedimento PROC-L1-00201 se aplicável.",
    gen_id = 200,
}
_DR["G00201"] = {
    title = "Condição ABS-201: correlação 10.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000202", "SKU-GEN-001408" },
    notes = "Ver procedimento PROC-L1-00202 se aplicável.",
    gen_id = 201,
}
_DR["G00202"] = {
    title = "Condição SRS-202: correlação 8.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000203", "SKU-GEN-001415" },
    notes = "Ver procedimento PROC-L1-00203 se aplicável.",
    gen_id = 202,
}
_DR["G00203"] = {
    title = "Condição CLIMATE-203: correlação 17.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000204", "SKU-GEN-001422" },
    notes = "Ver procedimento PROC-L1-00204 se aplicável.",
    gen_id = 203,
}
_DR["G00204"] = {
    title = "Condição TRANS-204: correlação 84.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000205", "SKU-GEN-001429" },
    notes = "Ver procedimento PROC-L1-00205 se aplicável.",
    gen_id = 204,
}
_DR["G00205"] = {
    title = "Condição FUEL-205: correlação 30.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000206", "SKU-GEN-001436" },
    notes = "Ver procedimento PROC-L1-00206 se aplicável.",
    gen_id = 205,
}
_DR["G00206"] = {
    title = "Condição STEER-206: correlação 62.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000207", "SKU-GEN-001443" },
    notes = "Ver procedimento PROC-L1-00207 se aplicável.",
    gen_id = 206,
}
_DR["G00207"] = {
    title = "Condição HV-207: correlação 69.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000208", "SKU-GEN-001450" },
    notes = "Ver procedimento PROC-L1-00208 se aplicável.",
    gen_id = 207,
}
_DR["G00208"] = {
    title = "Condição BODY-208: correlação 32.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000209", "SKU-GEN-001457" },
    notes = "Ver procedimento PROC-L1-00209 se aplicável.",
    gen_id = 208,
}
_DR["G00209"] = {
    title = "Condição INFO-209: correlação 1.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000210", "SKU-GEN-001464" },
    notes = "Ver procedimento PROC-L1-00210 se aplicável.",
    gen_id = 209,
}
_DR["G00210"] = {
    title = "Condição ENGINE-210: correlação 51.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000211", "SKU-GEN-001471" },
    notes = "Ver procedimento PROC-L1-00211 se aplicável.",
    gen_id = 210,
}
_DR["G00211"] = {
    title = "Condição ABS-211: correlação 51.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000212", "SKU-GEN-001478" },
    notes = "Ver procedimento PROC-L1-00212 se aplicável.",
    gen_id = 211,
}
_DR["G00212"] = {
    title = "Condição SRS-212: correlação 35.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000213", "SKU-GEN-001485" },
    notes = "Ver procedimento PROC-L1-00213 se aplicável.",
    gen_id = 212,
}
_DR["G00213"] = {
    title = "Condição CLIMATE-213: correlação 97.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000214", "SKU-GEN-001492" },
    notes = "Ver procedimento PROC-L1-00214 se aplicável.",
    gen_id = 213,
}
_DR["G00214"] = {
    title = "Condição TRANS-214: correlação 15.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000215", "SKU-GEN-001499" },
    notes = "Ver procedimento PROC-L1-00215 se aplicável.",
    gen_id = 214,
}
_DR["G00215"] = {
    title = "Condição FUEL-215: correlação 21.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000216", "SKU-GEN-001506" },
    notes = "Ver procedimento PROC-L1-00216 se aplicável.",
    gen_id = 215,
}
_DR["G00216"] = {
    title = "Condição STEER-216: correlação 54.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000217", "SKU-GEN-001513" },
    notes = "Ver procedimento PROC-L1-00217 se aplicável.",
    gen_id = 216,
}
_DR["G00217"] = {
    title = "Condição HV-217: correlação 99.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000218", "SKU-GEN-001520" },
    notes = "Ver procedimento PROC-L1-00218 se aplicável.",
    gen_id = 217,
}
_DR["G00218"] = {
    title = "Condição BODY-218: correlação 77.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000219", "SKU-GEN-001527" },
    notes = "Ver procedimento PROC-L1-00219 se aplicável.",
    gen_id = 218,
}
_DR["G00219"] = {
    title = "Condição INFO-219: correlação 52.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000220", "SKU-GEN-001534" },
    notes = "Ver procedimento PROC-L1-00220 se aplicável.",
    gen_id = 219,
}
_DR["G00220"] = {
    title = "Condição ENGINE-220: correlação 5.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000221", "SKU-GEN-001541" },
    notes = "Ver procedimento PROC-L1-00221 se aplicável.",
    gen_id = 220,
}
_DR["G00221"] = {
    title = "Condição ABS-221: correlação 97.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000222", "SKU-GEN-001548" },
    notes = "Ver procedimento PROC-L1-00222 se aplicável.",
    gen_id = 221,
}
_DR["G00222"] = {
    title = "Condição SRS-222: correlação 65.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000223", "SKU-GEN-001555" },
    notes = "Ver procedimento PROC-L1-00223 se aplicável.",
    gen_id = 222,
}
_DR["G00223"] = {
    title = "Condição CLIMATE-223: correlação 29.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000224", "SKU-GEN-001562" },
    notes = "Ver procedimento PROC-L1-00224 se aplicável.",
    gen_id = 223,
}
_DR["G00224"] = {
    title = "Condição TRANS-224: correlação 58.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000225", "SKU-GEN-001569" },
    notes = "Ver procedimento PROC-L1-00225 se aplicável.",
    gen_id = 224,
}
_DR["G00225"] = {
    title = "Condição FUEL-225: correlação 53.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000226", "SKU-GEN-001576" },
    notes = "Ver procedimento PROC-L1-00226 se aplicável.",
    gen_id = 225,
}
_DR["G00226"] = {
    title = "Condição STEER-226: correlação 8.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000227", "SKU-GEN-001583" },
    notes = "Ver procedimento PROC-L1-00227 se aplicável.",
    gen_id = 226,
}
_DR["G00227"] = {
    title = "Condição HV-227: correlação 54.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000228", "SKU-GEN-001590" },
    notes = "Ver procedimento PROC-L1-00228 se aplicável.",
    gen_id = 227,
}
_DR["G00228"] = {
    title = "Condição BODY-228: correlação 24.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000229", "SKU-GEN-001597" },
    notes = "Ver procedimento PROC-L1-00229 se aplicável.",
    gen_id = 228,
}
_DR["G00229"] = {
    title = "Condição INFO-229: correlação 30.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000230", "SKU-GEN-001604" },
    notes = "Ver procedimento PROC-L1-00230 se aplicável.",
    gen_id = 229,
}
_DR["G00230"] = {
    title = "Condição ENGINE-230: correlação 22.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000231", "SKU-GEN-001611" },
    notes = "Ver procedimento PROC-L1-00231 se aplicável.",
    gen_id = 230,
}
_DR["G00231"] = {
    title = "Condição ABS-231: correlação 22.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000232", "SKU-GEN-001618" },
    notes = "Ver procedimento PROC-L1-00232 se aplicável.",
    gen_id = 231,
}
_DR["G00232"] = {
    title = "Condição SRS-232: correlação 78.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000233", "SKU-GEN-001625" },
    notes = "Ver procedimento PROC-L1-00233 se aplicável.",
    gen_id = 232,
}
_DR["G00233"] = {
    title = "Condição CLIMATE-233: correlação 16.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000234", "SKU-GEN-001632" },
    notes = "Ver procedimento PROC-L1-00234 se aplicável.",
    gen_id = 233,
}
_DR["G00234"] = {
    title = "Condição TRANS-234: correlação 41.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000235", "SKU-GEN-001639" },
    notes = "Ver procedimento PROC-L1-00235 se aplicável.",
    gen_id = 234,
}
_DR["G00235"] = {
    title = "Condição FUEL-235: correlação 69.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000236", "SKU-GEN-001646" },
    notes = "Ver procedimento PROC-L1-00236 se aplicável.",
    gen_id = 235,
}
_DR["G00236"] = {
    title = "Condição STEER-236: correlação 54.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000237", "SKU-GEN-001653" },
    notes = "Ver procedimento PROC-L1-00237 se aplicável.",
    gen_id = 236,
}
_DR["G00237"] = {
    title = "Condição HV-237: correlação 82.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000238", "SKU-GEN-001660" },
    notes = "Ver procedimento PROC-L1-00238 se aplicável.",
    gen_id = 237,
}
_DR["G00238"] = {
    title = "Condição BODY-238: correlação 56.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000239", "SKU-GEN-001667" },
    notes = "Ver procedimento PROC-L1-00239 se aplicável.",
    gen_id = 238,
}
_DR["G00239"] = {
    title = "Condição INFO-239: correlação 88.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000240", "SKU-GEN-001674" },
    notes = "Ver procedimento PROC-L1-00240 se aplicável.",
    gen_id = 239,
}
_DR["G00240"] = {
    title = "Condição ENGINE-240: correlação 19.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000241", "SKU-GEN-001681" },
    notes = "Ver procedimento PROC-L1-00241 se aplicável.",
    gen_id = 240,
}
_DR["G00241"] = {
    title = "Condição ABS-241: correlação 72.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000242", "SKU-GEN-001688" },
    notes = "Ver procedimento PROC-L1-00242 se aplicável.",
    gen_id = 241,
}
_DR["G00242"] = {
    title = "Condição SRS-242: correlação 57.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000243", "SKU-GEN-001695" },
    notes = "Ver procedimento PROC-L1-00243 se aplicável.",
    gen_id = 242,
}
_DR["G00243"] = {
    title = "Condição CLIMATE-243: correlação 76.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000244", "SKU-GEN-001702" },
    notes = "Ver procedimento PROC-L1-00244 se aplicável.",
    gen_id = 243,
}
_DR["G00244"] = {
    title = "Condição TRANS-244: correlação 11.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000245", "SKU-GEN-001709" },
    notes = "Ver procedimento PROC-L1-00245 se aplicável.",
    gen_id = 244,
}
_DR["G00245"] = {
    title = "Condição FUEL-245: correlação 2.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000246", "SKU-GEN-001716" },
    notes = "Ver procedimento PROC-L1-00246 se aplicável.",
    gen_id = 245,
}
_DR["G00246"] = {
    title = "Condição STEER-246: correlação 1.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000247", "SKU-GEN-001723" },
    notes = "Ver procedimento PROC-L1-00247 se aplicável.",
    gen_id = 246,
}
_DR["G00247"] = {
    title = "Condição HV-247: correlação 47.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000248", "SKU-GEN-001730" },
    notes = "Ver procedimento PROC-L1-00248 se aplicável.",
    gen_id = 247,
}
_DR["G00248"] = {
    title = "Condição BODY-248: correlação 92.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000249", "SKU-GEN-001737" },
    notes = "Ver procedimento PROC-L1-00249 se aplicável.",
    gen_id = 248,
}
_DR["G00249"] = {
    title = "Condição INFO-249: correlação 16.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000250", "SKU-GEN-001744" },
    notes = "Ver procedimento PROC-L1-00250 se aplicável.",
    gen_id = 249,
}
_DR["G00250"] = {
    title = "Condição ENGINE-250: correlação 55.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000251", "SKU-GEN-001751" },
    notes = "Ver procedimento PROC-L1-00251 se aplicável.",
    gen_id = 250,
}
_DR["G00251"] = {
    title = "Condição ABS-251: correlação 26.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000252", "SKU-GEN-001758" },
    notes = "Ver procedimento PROC-L1-00252 se aplicável.",
    gen_id = 251,
}
_DR["G00252"] = {
    title = "Condição SRS-252: correlação 65.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000253", "SKU-GEN-001765" },
    notes = "Ver procedimento PROC-L1-00253 se aplicável.",
    gen_id = 252,
}
_DR["G00253"] = {
    title = "Condição CLIMATE-253: correlação 36.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000254", "SKU-GEN-001772" },
    notes = "Ver procedimento PROC-L1-00254 se aplicável.",
    gen_id = 253,
}
_DR["G00254"] = {
    title = "Condição TRANS-254: correlação 77.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000255", "SKU-GEN-001779" },
    notes = "Ver procedimento PROC-L1-00255 se aplicável.",
    gen_id = 254,
}
_DR["G00255"] = {
    title = "Condição FUEL-255: correlação 25.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000256", "SKU-GEN-001786" },
    notes = "Ver procedimento PROC-L1-00256 se aplicável.",
    gen_id = 255,
}
_DR["G00256"] = {
    title = "Condição STEER-256: correlação 35.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000257", "SKU-GEN-001793" },
    notes = "Ver procedimento PROC-L1-00257 se aplicável.",
    gen_id = 256,
}
_DR["G00257"] = {
    title = "Condição HV-257: correlação 89.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000258", "SKU-GEN-001800" },
    notes = "Ver procedimento PROC-L1-00258 se aplicável.",
    gen_id = 257,
}
_DR["G00258"] = {
    title = "Condição BODY-258: correlação 29.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000259", "SKU-GEN-001807" },
    notes = "Ver procedimento PROC-L1-00259 se aplicável.",
    gen_id = 258,
}
_DR["G00259"] = {
    title = "Condição INFO-259: correlação 41.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000260", "SKU-GEN-001814" },
    notes = "Ver procedimento PROC-L1-00260 se aplicável.",
    gen_id = 259,
}
_DR["G00260"] = {
    title = "Condição ENGINE-260: correlação 28.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000261", "SKU-GEN-001821" },
    notes = "Ver procedimento PROC-L1-00261 se aplicável.",
    gen_id = 260,
}
_DR["G00261"] = {
    title = "Condição ABS-261: correlação 15.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000262", "SKU-GEN-001828" },
    notes = "Ver procedimento PROC-L1-00262 se aplicável.",
    gen_id = 261,
}
_DR["G00262"] = {
    title = "Condição SRS-262: correlação 56.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000263", "SKU-GEN-001835" },
    notes = "Ver procedimento PROC-L1-00263 se aplicável.",
    gen_id = 262,
}
_DR["G00263"] = {
    title = "Condição CLIMATE-263: correlação 43.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000264", "SKU-GEN-001842" },
    notes = "Ver procedimento PROC-L1-00264 se aplicável.",
    gen_id = 263,
}
_DR["G00264"] = {
    title = "Condição TRANS-264: correlação 6.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000265", "SKU-GEN-001849" },
    notes = "Ver procedimento PROC-L1-00265 se aplicável.",
    gen_id = 264,
}
_DR["G00265"] = {
    title = "Condição FUEL-265: correlação 73.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000266", "SKU-GEN-001856" },
    notes = "Ver procedimento PROC-L1-00266 se aplicável.",
    gen_id = 265,
}
_DR["G00266"] = {
    title = "Condição STEER-266: correlação 60.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000267", "SKU-GEN-001863" },
    notes = "Ver procedimento PROC-L1-00267 se aplicável.",
    gen_id = 266,
}
_DR["G00267"] = {
    title = "Condição HV-267: correlação 35.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000268", "SKU-GEN-001870" },
    notes = "Ver procedimento PROC-L1-00268 se aplicável.",
    gen_id = 267,
}
_DR["G00268"] = {
    title = "Condição BODY-268: correlação 15.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000269", "SKU-GEN-001877" },
    notes = "Ver procedimento PROC-L1-00269 se aplicável.",
    gen_id = 268,
}
_DR["G00269"] = {
    title = "Condição INFO-269: correlação 4.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000270", "SKU-GEN-001884" },
    notes = "Ver procedimento PROC-L1-00270 se aplicável.",
    gen_id = 269,
}
_DR["G00270"] = {
    title = "Condição ENGINE-270: correlação 50.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000271", "SKU-GEN-001891" },
    notes = "Ver procedimento PROC-L1-00271 se aplicável.",
    gen_id = 270,
}
_DR["G00271"] = {
    title = "Condição ABS-271: correlação 7.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000272", "SKU-GEN-001898" },
    notes = "Ver procedimento PROC-L1-00272 se aplicável.",
    gen_id = 271,
}
_DR["G00272"] = {
    title = "Condição SRS-272: correlação 72.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000273", "SKU-GEN-001905" },
    notes = "Ver procedimento PROC-L1-00273 se aplicável.",
    gen_id = 272,
}
_DR["G00273"] = {
    title = "Condição CLIMATE-273: correlação 34.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000274", "SKU-GEN-001912" },
    notes = "Ver procedimento PROC-L1-00274 se aplicável.",
    gen_id = 273,
}
_DR["G00274"] = {
    title = "Condição TRANS-274: correlação 56.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000275", "SKU-GEN-001919" },
    notes = "Ver procedimento PROC-L1-00275 se aplicável.",
    gen_id = 274,
}
_DR["G00275"] = {
    title = "Condição FUEL-275: correlação 26.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000276", "SKU-GEN-001926" },
    notes = "Ver procedimento PROC-L1-00276 se aplicável.",
    gen_id = 275,
}
_DR["G00276"] = {
    title = "Condição STEER-276: correlação 91.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000277", "SKU-GEN-001933" },
    notes = "Ver procedimento PROC-L1-00277 se aplicável.",
    gen_id = 276,
}
_DR["G00277"] = {
    title = "Condição HV-277: correlação 98.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000278", "SKU-GEN-001940" },
    notes = "Ver procedimento PROC-L1-00278 se aplicável.",
    gen_id = 277,
}
_DR["G00278"] = {
    title = "Condição BODY-278: correlação 36.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000279", "SKU-GEN-001947" },
    notes = "Ver procedimento PROC-L1-00279 se aplicável.",
    gen_id = 278,
}
_DR["G00279"] = {
    title = "Condição INFO-279: correlação 4.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000280", "SKU-GEN-001954" },
    notes = "Ver procedimento PROC-L1-00280 se aplicável.",
    gen_id = 279,
}
_DR["G00280"] = {
    title = "Condição ENGINE-280: correlação 67.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000281", "SKU-GEN-001961" },
    notes = "Ver procedimento PROC-L1-00281 se aplicável.",
    gen_id = 280,
}
_DR["G00281"] = {
    title = "Condição ABS-281: correlação 34.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000282", "SKU-GEN-001968" },
    notes = "Ver procedimento PROC-L1-00282 se aplicável.",
    gen_id = 281,
}
_DR["G00282"] = {
    title = "Condição SRS-282: correlação 11.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000283", "SKU-GEN-001975" },
    notes = "Ver procedimento PROC-L1-00283 se aplicável.",
    gen_id = 282,
}
_DR["G00283"] = {
    title = "Condição CLIMATE-283: correlação 66.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000284", "SKU-GEN-001982" },
    notes = "Ver procedimento PROC-L1-00284 se aplicável.",
    gen_id = 283,
}
_DR["G00284"] = {
    title = "Condição TRANS-284: correlação 2.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000285", "SKU-GEN-001989" },
    notes = "Ver procedimento PROC-L1-00285 se aplicável.",
    gen_id = 284,
}
_DR["G00285"] = {
    title = "Condição FUEL-285: correlação 84.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000286", "SKU-GEN-001996" },
    notes = "Ver procedimento PROC-L1-00286 se aplicável.",
    gen_id = 285,
}
_DR["G00286"] = {
    title = "Condição STEER-286: correlação 9.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000287", "SKU-GEN-002003" },
    notes = "Ver procedimento PROC-L1-00287 se aplicável.",
    gen_id = 286,
}
_DR["G00287"] = {
    title = "Condição HV-287: correlação 4.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000288", "SKU-GEN-002010" },
    notes = "Ver procedimento PROC-L1-00288 se aplicável.",
    gen_id = 287,
}
_DR["G00288"] = {
    title = "Condição BODY-288: correlação 32.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000289", "SKU-GEN-002017" },
    notes = "Ver procedimento PROC-L1-00289 se aplicável.",
    gen_id = 288,
}
_DR["G00289"] = {
    title = "Condição INFO-289: correlação 87.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000290", "SKU-GEN-002024" },
    notes = "Ver procedimento PROC-L1-00290 se aplicável.",
    gen_id = 289,
}
_DR["G00290"] = {
    title = "Condição ENGINE-290: correlação 2.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000291", "SKU-GEN-002031" },
    notes = "Ver procedimento PROC-L1-00291 se aplicável.",
    gen_id = 290,
}
_DR["G00291"] = {
    title = "Condição ABS-291: correlação 71.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000292", "SKU-GEN-002038" },
    notes = "Ver procedimento PROC-L1-00292 se aplicável.",
    gen_id = 291,
}
_DR["G00292"] = {
    title = "Condição SRS-292: correlação 78.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000293", "SKU-GEN-002045" },
    notes = "Ver procedimento PROC-L1-00293 se aplicável.",
    gen_id = 292,
}
_DR["G00293"] = {
    title = "Condição CLIMATE-293: correlação 56.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000294", "SKU-GEN-002052" },
    notes = "Ver procedimento PROC-L1-00294 se aplicável.",
    gen_id = 293,
}
_DR["G00294"] = {
    title = "Condição TRANS-294: correlação 68.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000295", "SKU-GEN-002059" },
    notes = "Ver procedimento PROC-L1-00295 se aplicável.",
    gen_id = 294,
}
_DR["G00295"] = {
    title = "Condição FUEL-295: correlação 74.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000296", "SKU-GEN-002066" },
    notes = "Ver procedimento PROC-L1-00296 se aplicável.",
    gen_id = 295,
}
_DR["G00296"] = {
    title = "Condição STEER-296: correlação 45.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000297", "SKU-GEN-002073" },
    notes = "Ver procedimento PROC-L1-00297 se aplicável.",
    gen_id = 296,
}
_DR["G00297"] = {
    title = "Condição HV-297: correlação 79.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000298", "SKU-GEN-002080" },
    notes = "Ver procedimento PROC-L1-00298 se aplicável.",
    gen_id = 297,
}
_DR["G00298"] = {
    title = "Condição BODY-298: correlação 14.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000299", "SKU-GEN-002087" },
    notes = "Ver procedimento PROC-L1-00299 se aplicável.",
    gen_id = 298,
}
_DR["G00299"] = {
    title = "Condição INFO-299: correlação 57.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000300", "SKU-GEN-002094" },
    notes = "Ver procedimento PROC-L1-00300 se aplicável.",
    gen_id = 299,
}
_DR["G00300"] = {
    title = "Condição ENGINE-300: correlação 30.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000301", "SKU-GEN-002101" },
    notes = "Ver procedimento PROC-L1-00301 se aplicável.",
    gen_id = 300,
}
_DR["G00301"] = {
    title = "Condição ABS-301: correlação 81.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000302", "SKU-GEN-002108" },
    notes = "Ver procedimento PROC-L1-00302 se aplicável.",
    gen_id = 301,
}
_DR["G00302"] = {
    title = "Condição SRS-302: correlação 32.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000303", "SKU-GEN-002115" },
    notes = "Ver procedimento PROC-L1-00303 se aplicável.",
    gen_id = 302,
}
_DR["G00303"] = {
    title = "Condição CLIMATE-303: correlação 88.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000304", "SKU-GEN-002122" },
    notes = "Ver procedimento PROC-L1-00304 se aplicável.",
    gen_id = 303,
}
_DR["G00304"] = {
    title = "Condição TRANS-304: correlação 24.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000305", "SKU-GEN-002129" },
    notes = "Ver procedimento PROC-L1-00305 se aplicável.",
    gen_id = 304,
}
_DR["G00305"] = {
    title = "Condição FUEL-305: correlação 39.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000306", "SKU-GEN-002136" },
    notes = "Ver procedimento PROC-L1-00306 se aplicável.",
    gen_id = 305,
}
_DR["G00306"] = {
    title = "Condição STEER-306: correlação 95.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000307", "SKU-GEN-002143" },
    notes = "Ver procedimento PROC-L1-00307 se aplicável.",
    gen_id = 306,
}
_DR["G00307"] = {
    title = "Condição HV-307: correlação 86.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000308", "SKU-GEN-002150" },
    notes = "Ver procedimento PROC-L1-00308 se aplicável.",
    gen_id = 307,
}
_DR["G00308"] = {
    title = "Condição BODY-308: correlação 14.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000309", "SKU-GEN-002157" },
    notes = "Ver procedimento PROC-L1-00309 se aplicável.",
    gen_id = 308,
}
_DR["G00309"] = {
    title = "Condição INFO-309: correlação 31.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000310", "SKU-GEN-002164" },
    notes = "Ver procedimento PROC-L1-00310 se aplicável.",
    gen_id = 309,
}
_DR["G00310"] = {
    title = "Condição ENGINE-310: correlação 88.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000311", "SKU-GEN-002171" },
    notes = "Ver procedimento PROC-L1-00311 se aplicável.",
    gen_id = 310,
}
_DR["G00311"] = {
    title = "Condição ABS-311: correlação 55.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000312", "SKU-GEN-002178" },
    notes = "Ver procedimento PROC-L1-00312 se aplicável.",
    gen_id = 311,
}
_DR["G00312"] = {
    title = "Condição SRS-312: correlação 14.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000313", "SKU-GEN-002185" },
    notes = "Ver procedimento PROC-L1-00313 se aplicável.",
    gen_id = 312,
}
_DR["G00313"] = {
    title = "Condição CLIMATE-313: correlação 72.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000314", "SKU-GEN-002192" },
    notes = "Ver procedimento PROC-L1-00314 se aplicável.",
    gen_id = 313,
}
_DR["G00314"] = {
    title = "Condição TRANS-314: correlação 49.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000315", "SKU-GEN-002199" },
    notes = "Ver procedimento PROC-L1-00315 se aplicável.",
    gen_id = 314,
}
_DR["G00315"] = {
    title = "Condição FUEL-315: correlação 15.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000316", "SKU-GEN-002206" },
    notes = "Ver procedimento PROC-L1-00316 se aplicável.",
    gen_id = 315,
}
_DR["G00316"] = {
    title = "Condição STEER-316: correlação 89.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000317", "SKU-GEN-002213" },
    notes = "Ver procedimento PROC-L1-00317 se aplicável.",
    gen_id = 316,
}
_DR["G00317"] = {
    title = "Condição HV-317: correlação 62.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000318", "SKU-GEN-002220" },
    notes = "Ver procedimento PROC-L1-00318 se aplicável.",
    gen_id = 317,
}
_DR["G00318"] = {
    title = "Condição BODY-318: correlação 69.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000319", "SKU-GEN-002227" },
    notes = "Ver procedimento PROC-L1-00319 se aplicável.",
    gen_id = 318,
}
_DR["G00319"] = {
    title = "Condição INFO-319: correlação 43.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000320", "SKU-GEN-002234" },
    notes = "Ver procedimento PROC-L1-00320 se aplicável.",
    gen_id = 319,
}
_DR["G00320"] = {
    title = "Condição ENGINE-320: correlação 54.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000321", "SKU-GEN-002241" },
    notes = "Ver procedimento PROC-L1-00321 se aplicável.",
    gen_id = 320,
}
_DR["G00321"] = {
    title = "Condição ABS-321: correlação 44.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000322", "SKU-GEN-002248" },
    notes = "Ver procedimento PROC-L1-00322 se aplicável.",
    gen_id = 321,
}
_DR["G00322"] = {
    title = "Condição SRS-322: correlação 54.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000323", "SKU-GEN-002255" },
    notes = "Ver procedimento PROC-L1-00323 se aplicável.",
    gen_id = 322,
}
_DR["G00323"] = {
    title = "Condição CLIMATE-323: correlação 55.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000324", "SKU-GEN-002262" },
    notes = "Ver procedimento PROC-L1-00324 se aplicável.",
    gen_id = 323,
}
_DR["G00324"] = {
    title = "Condição TRANS-324: correlação 49.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000325", "SKU-GEN-002269" },
    notes = "Ver procedimento PROC-L1-00325 se aplicável.",
    gen_id = 324,
}
_DR["G00325"] = {
    title = "Condição FUEL-325: correlação 56.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000326", "SKU-GEN-002276" },
    notes = "Ver procedimento PROC-L1-00326 se aplicável.",
    gen_id = 325,
}
_DR["G00326"] = {
    title = "Condição STEER-326: correlação 68.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000327", "SKU-GEN-002283" },
    notes = "Ver procedimento PROC-L1-00327 se aplicável.",
    gen_id = 326,
}
_DR["G00327"] = {
    title = "Condição HV-327: correlação 15.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000328", "SKU-GEN-002290" },
    notes = "Ver procedimento PROC-L1-00328 se aplicável.",
    gen_id = 327,
}
_DR["G00328"] = {
    title = "Condição BODY-328: correlação 30.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000329", "SKU-GEN-002297" },
    notes = "Ver procedimento PROC-L1-00329 se aplicável.",
    gen_id = 328,
}
_DR["G00329"] = {
    title = "Condição INFO-329: correlação 22.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000330", "SKU-GEN-002304" },
    notes = "Ver procedimento PROC-L1-00330 se aplicável.",
    gen_id = 329,
}
_DR["G00330"] = {
    title = "Condição ENGINE-330: correlação 10.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000331", "SKU-GEN-002311" },
    notes = "Ver procedimento PROC-L1-00331 se aplicável.",
    gen_id = 330,
}
_DR["G00331"] = {
    title = "Condição ABS-331: correlação 29.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000332", "SKU-GEN-002318" },
    notes = "Ver procedimento PROC-L1-00332 se aplicável.",
    gen_id = 331,
}
_DR["G00332"] = {
    title = "Condição SRS-332: correlação 35.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000333", "SKU-GEN-002325" },
    notes = "Ver procedimento PROC-L1-00333 se aplicável.",
    gen_id = 332,
}
_DR["G00333"] = {
    title = "Condição CLIMATE-333: correlação 14.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000334", "SKU-GEN-002332" },
    notes = "Ver procedimento PROC-L1-00334 se aplicável.",
    gen_id = 333,
}
_DR["G00334"] = {
    title = "Condição TRANS-334: correlação 76.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000335", "SKU-GEN-002339" },
    notes = "Ver procedimento PROC-L1-00335 se aplicável.",
    gen_id = 334,
}
_DR["G00335"] = {
    title = "Condição FUEL-335: correlação 69.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000336", "SKU-GEN-002346" },
    notes = "Ver procedimento PROC-L1-00336 se aplicável.",
    gen_id = 335,
}
_DR["G00336"] = {
    title = "Condição STEER-336: correlação 1.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000337", "SKU-GEN-002353" },
    notes = "Ver procedimento PROC-L1-00337 se aplicável.",
    gen_id = 336,
}
_DR["G00337"] = {
    title = "Condição HV-337: correlação 78.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000338", "SKU-GEN-002360" },
    notes = "Ver procedimento PROC-L1-00338 se aplicável.",
    gen_id = 337,
}
_DR["G00338"] = {
    title = "Condição BODY-338: correlação 26.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000339", "SKU-GEN-002367" },
    notes = "Ver procedimento PROC-L1-00339 se aplicável.",
    gen_id = 338,
}
_DR["G00339"] = {
    title = "Condição INFO-339: correlação 44.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000340", "SKU-GEN-002374" },
    notes = "Ver procedimento PROC-L1-00340 se aplicável.",
    gen_id = 339,
}
_DR["G00340"] = {
    title = "Condição ENGINE-340: correlação 39.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000341", "SKU-GEN-002381" },
    notes = "Ver procedimento PROC-L1-00341 se aplicável.",
    gen_id = 340,
}
_DR["G00341"] = {
    title = "Condição ABS-341: correlação 11.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000342", "SKU-GEN-002388" },
    notes = "Ver procedimento PROC-L1-00342 se aplicável.",
    gen_id = 341,
}
_DR["G00342"] = {
    title = "Condição SRS-342: correlação 56.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000343", "SKU-GEN-002395" },
    notes = "Ver procedimento PROC-L1-00343 se aplicável.",
    gen_id = 342,
}
_DR["G00343"] = {
    title = "Condição CLIMATE-343: correlação 90.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000344", "SKU-GEN-002402" },
    notes = "Ver procedimento PROC-L1-00344 se aplicável.",
    gen_id = 343,
}
_DR["G00344"] = {
    title = "Condição TRANS-344: correlação 15.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000345", "SKU-GEN-002409" },
    notes = "Ver procedimento PROC-L1-00345 se aplicável.",
    gen_id = 344,
}
_DR["G00345"] = {
    title = "Condição FUEL-345: correlação 37.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000346", "SKU-GEN-002416" },
    notes = "Ver procedimento PROC-L1-00346 se aplicável.",
    gen_id = 345,
}
_DR["G00346"] = {
    title = "Condição STEER-346: correlação 30.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000347", "SKU-GEN-002423" },
    notes = "Ver procedimento PROC-L1-00347 se aplicável.",
    gen_id = 346,
}
_DR["G00347"] = {
    title = "Condição HV-347: correlação 68.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000348", "SKU-GEN-002430" },
    notes = "Ver procedimento PROC-L1-00348 se aplicável.",
    gen_id = 347,
}
_DR["G00348"] = {
    title = "Condição BODY-348: correlação 73.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000349", "SKU-GEN-002437" },
    notes = "Ver procedimento PROC-L1-00349 se aplicável.",
    gen_id = 348,
}
_DR["G00349"] = {
    title = "Condição INFO-349: correlação 1.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000350", "SKU-GEN-002444" },
    notes = "Ver procedimento PROC-L1-00350 se aplicável.",
    gen_id = 349,
}
_DR["G00350"] = {
    title = "Condição ENGINE-350: correlação 46.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000351", "SKU-GEN-002451" },
    notes = "Ver procedimento PROC-L1-00351 se aplicável.",
    gen_id = 350,
}
_DR["G00351"] = {
    title = "Condição ABS-351: correlação 93.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000352", "SKU-GEN-002458" },
    notes = "Ver procedimento PROC-L1-00352 se aplicável.",
    gen_id = 351,
}
_DR["G00352"] = {
    title = "Condição SRS-352: correlação 0.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000353", "SKU-GEN-002465" },
    notes = "Ver procedimento PROC-L1-00353 se aplicável.",
    gen_id = 352,
}
_DR["G00353"] = {
    title = "Condição CLIMATE-353: correlação 94.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000354", "SKU-GEN-002472" },
    notes = "Ver procedimento PROC-L1-00354 se aplicável.",
    gen_id = 353,
}
_DR["G00354"] = {
    title = "Condição TRANS-354: correlação 15.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000355", "SKU-GEN-002479" },
    notes = "Ver procedimento PROC-L1-00355 se aplicável.",
    gen_id = 354,
}
_DR["G00355"] = {
    title = "Condição FUEL-355: correlação 7.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000356", "SKU-GEN-002486" },
    notes = "Ver procedimento PROC-L1-00356 se aplicável.",
    gen_id = 355,
}
_DR["G00356"] = {
    title = "Condição STEER-356: correlação 33.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000357", "SKU-GEN-002493" },
    notes = "Ver procedimento PROC-L1-00357 se aplicável.",
    gen_id = 356,
}
_DR["G00357"] = {
    title = "Condição HV-357: correlação 82.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000358", "SKU-GEN-002500" },
    notes = "Ver procedimento PROC-L1-00358 se aplicável.",
    gen_id = 357,
}
_DR["G00358"] = {
    title = "Condição BODY-358: correlação 97.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000359", "SKU-GEN-002507" },
    notes = "Ver procedimento PROC-L1-00359 se aplicável.",
    gen_id = 358,
}
_DR["G00359"] = {
    title = "Condição INFO-359: correlação 94.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000360", "SKU-GEN-002514" },
    notes = "Ver procedimento PROC-L1-00360 se aplicável.",
    gen_id = 359,
}
_DR["G00360"] = {
    title = "Condição ENGINE-360: correlação 39.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000361", "SKU-GEN-002521" },
    notes = "Ver procedimento PROC-L1-00361 se aplicável.",
    gen_id = 360,
}
_DR["G00361"] = {
    title = "Condição ABS-361: correlação 79.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000362", "SKU-GEN-002528" },
    notes = "Ver procedimento PROC-L1-00362 se aplicável.",
    gen_id = 361,
}
_DR["G00362"] = {
    title = "Condição SRS-362: correlação 15.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000363", "SKU-GEN-002535" },
    notes = "Ver procedimento PROC-L1-00363 se aplicável.",
    gen_id = 362,
}
_DR["G00363"] = {
    title = "Condição CLIMATE-363: correlação 96.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000364", "SKU-GEN-002542" },
    notes = "Ver procedimento PROC-L1-00364 se aplicável.",
    gen_id = 363,
}
_DR["G00364"] = {
    title = "Condição TRANS-364: correlação 36.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000365", "SKU-GEN-002549" },
    notes = "Ver procedimento PROC-L1-00365 se aplicável.",
    gen_id = 364,
}
_DR["G00365"] = {
    title = "Condição FUEL-365: correlação 18.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000366", "SKU-GEN-002556" },
    notes = "Ver procedimento PROC-L1-00366 se aplicável.",
    gen_id = 365,
}
_DR["G00366"] = {
    title = "Condição STEER-366: correlação 37.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000367", "SKU-GEN-002563" },
    notes = "Ver procedimento PROC-L1-00367 se aplicável.",
    gen_id = 366,
}
_DR["G00367"] = {
    title = "Condição HV-367: correlação 67.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000368", "SKU-GEN-002570" },
    notes = "Ver procedimento PROC-L1-00368 se aplicável.",
    gen_id = 367,
}
_DR["G00368"] = {
    title = "Condição BODY-368: correlação 25.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000369", "SKU-GEN-002577" },
    notes = "Ver procedimento PROC-L1-00369 se aplicável.",
    gen_id = 368,
}
_DR["G00369"] = {
    title = "Condição INFO-369: correlação 81.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000370", "SKU-GEN-002584" },
    notes = "Ver procedimento PROC-L1-00370 se aplicável.",
    gen_id = 369,
}
_DR["G00370"] = {
    title = "Condição ENGINE-370: correlação 12.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000371", "SKU-GEN-002591" },
    notes = "Ver procedimento PROC-L1-00371 se aplicável.",
    gen_id = 370,
}
_DR["G00371"] = {
    title = "Condição ABS-371: correlação 91.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000372", "SKU-GEN-002598" },
    notes = "Ver procedimento PROC-L1-00372 se aplicável.",
    gen_id = 371,
}
_DR["G00372"] = {
    title = "Condição SRS-372: correlação 46.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000373", "SKU-GEN-002605" },
    notes = "Ver procedimento PROC-L1-00373 se aplicável.",
    gen_id = 372,
}
_DR["G00373"] = {
    title = "Condição CLIMATE-373: correlação 13.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000374", "SKU-GEN-002612" },
    notes = "Ver procedimento PROC-L1-00374 se aplicável.",
    gen_id = 373,
}
_DR["G00374"] = {
    title = "Condição TRANS-374: correlação 72.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000375", "SKU-GEN-002619" },
    notes = "Ver procedimento PROC-L1-00375 se aplicável.",
    gen_id = 374,
}
_DR["G00375"] = {
    title = "Condição FUEL-375: correlação 24.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000376", "SKU-GEN-002626" },
    notes = "Ver procedimento PROC-L1-00376 se aplicável.",
    gen_id = 375,
}
_DR["G00376"] = {
    title = "Condição STEER-376: correlação 98.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000377", "SKU-GEN-002633" },
    notes = "Ver procedimento PROC-L1-00377 se aplicável.",
    gen_id = 376,
}
_DR["G00377"] = {
    title = "Condição HV-377: correlação 25.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000378", "SKU-GEN-002640" },
    notes = "Ver procedimento PROC-L1-00378 se aplicável.",
    gen_id = 377,
}
_DR["G00378"] = {
    title = "Condição BODY-378: correlação 74.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000379", "SKU-GEN-002647" },
    notes = "Ver procedimento PROC-L1-00379 se aplicável.",
    gen_id = 378,
}
_DR["G00379"] = {
    title = "Condição INFO-379: correlação 70.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000380", "SKU-GEN-002654" },
    notes = "Ver procedimento PROC-L1-00380 se aplicável.",
    gen_id = 379,
}
_DR["G00380"] = {
    title = "Condição ENGINE-380: correlação 69.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000381", "SKU-GEN-002661" },
    notes = "Ver procedimento PROC-L1-00381 se aplicável.",
    gen_id = 380,
}
_DR["G00381"] = {
    title = "Condição ABS-381: correlação 48.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000382", "SKU-GEN-002668" },
    notes = "Ver procedimento PROC-L1-00382 se aplicável.",
    gen_id = 381,
}
_DR["G00382"] = {
    title = "Condição SRS-382: correlação 11.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000383", "SKU-GEN-002675" },
    notes = "Ver procedimento PROC-L1-00383 se aplicável.",
    gen_id = 382,
}
_DR["G00383"] = {
    title = "Condição CLIMATE-383: correlação 84.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000384", "SKU-GEN-002682" },
    notes = "Ver procedimento PROC-L1-00384 se aplicável.",
    gen_id = 383,
}
_DR["G00384"] = {
    title = "Condição TRANS-384: correlação 65.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000385", "SKU-GEN-002689" },
    notes = "Ver procedimento PROC-L1-00385 se aplicável.",
    gen_id = 384,
}
_DR["G00385"] = {
    title = "Condição FUEL-385: correlação 14.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000386", "SKU-GEN-002696" },
    notes = "Ver procedimento PROC-L1-00386 se aplicável.",
    gen_id = 385,
}
_DR["G00386"] = {
    title = "Condição STEER-386: correlação 26.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000387", "SKU-GEN-002703" },
    notes = "Ver procedimento PROC-L1-00387 se aplicável.",
    gen_id = 386,
}
_DR["G00387"] = {
    title = "Condição HV-387: correlação 42.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000388", "SKU-GEN-002710" },
    notes = "Ver procedimento PROC-L1-00388 se aplicável.",
    gen_id = 387,
}
_DR["G00388"] = {
    title = "Condição BODY-388: correlação 46.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000389", "SKU-GEN-002717" },
    notes = "Ver procedimento PROC-L1-00389 se aplicável.",
    gen_id = 388,
}
_DR["G00389"] = {
    title = "Condição INFO-389: correlação 66.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000390", "SKU-GEN-002724" },
    notes = "Ver procedimento PROC-L1-00390 se aplicável.",
    gen_id = 389,
}
_DR["G00390"] = {
    title = "Condição ENGINE-390: correlação 27.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000391", "SKU-GEN-002731" },
    notes = "Ver procedimento PROC-L1-00391 se aplicável.",
    gen_id = 390,
}
_DR["G00391"] = {
    title = "Condição ABS-391: correlação 65.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000392", "SKU-GEN-002738" },
    notes = "Ver procedimento PROC-L1-00392 se aplicável.",
    gen_id = 391,
}
_DR["G00392"] = {
    title = "Condição SRS-392: correlação 98.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000393", "SKU-GEN-002745" },
    notes = "Ver procedimento PROC-L1-00393 se aplicável.",
    gen_id = 392,
}
_DR["G00393"] = {
    title = "Condição CLIMATE-393: correlação 16.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000394", "SKU-GEN-002752" },
    notes = "Ver procedimento PROC-L1-00394 se aplicável.",
    gen_id = 393,
}
_DR["G00394"] = {
    title = "Condição TRANS-394: correlação 51.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000395", "SKU-GEN-002759" },
    notes = "Ver procedimento PROC-L1-00395 se aplicável.",
    gen_id = 394,
}
_DR["G00395"] = {
    title = "Condição FUEL-395: correlação 54.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000396", "SKU-GEN-002766" },
    notes = "Ver procedimento PROC-L1-00396 se aplicável.",
    gen_id = 395,
}
_DR["G00396"] = {
    title = "Condição STEER-396: correlação 8.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000397", "SKU-GEN-002773" },
    notes = "Ver procedimento PROC-L1-00397 se aplicável.",
    gen_id = 396,
}
_DR["G00397"] = {
    title = "Condição HV-397: correlação 20.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000398", "SKU-GEN-002780" },
    notes = "Ver procedimento PROC-L1-00398 se aplicável.",
    gen_id = 397,
}
_DR["G00398"] = {
    title = "Condição BODY-398: correlação 54.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000399", "SKU-GEN-002787" },
    notes = "Ver procedimento PROC-L1-00399 se aplicável.",
    gen_id = 398,
}
_DR["G00399"] = {
    title = "Condição INFO-399: correlação 74.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000400", "SKU-GEN-002794" },
    notes = "Ver procedimento PROC-L1-00400 se aplicável.",
    gen_id = 399,
}
_DR["G00400"] = {
    title = "Condição ENGINE-400: correlação 13.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000401", "SKU-GEN-002801" },
    notes = "Ver procedimento PROC-L1-00401 se aplicável.",
    gen_id = 400,
}
_DR["G00401"] = {
    title = "Condição ABS-401: correlação 17.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000402", "SKU-GEN-002808" },
    notes = "Ver procedimento PROC-L1-00402 se aplicável.",
    gen_id = 401,
}
_DR["G00402"] = {
    title = "Condição SRS-402: correlação 20.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000403", "SKU-GEN-002815" },
    notes = "Ver procedimento PROC-L1-00403 se aplicável.",
    gen_id = 402,
}
_DR["G00403"] = {
    title = "Condição CLIMATE-403: correlação 15.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000404", "SKU-GEN-002822" },
    notes = "Ver procedimento PROC-L1-00404 se aplicável.",
    gen_id = 403,
}
_DR["G00404"] = {
    title = "Condição TRANS-404: correlação 33.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000405", "SKU-GEN-002829" },
    notes = "Ver procedimento PROC-L1-00405 se aplicável.",
    gen_id = 404,
}
_DR["G00405"] = {
    title = "Condição FUEL-405: correlação 74.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000406", "SKU-GEN-002836" },
    notes = "Ver procedimento PROC-L1-00406 se aplicável.",
    gen_id = 405,
}
_DR["G00406"] = {
    title = "Condição STEER-406: correlação 3.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000407", "SKU-GEN-002843" },
    notes = "Ver procedimento PROC-L1-00407 se aplicável.",
    gen_id = 406,
}
_DR["G00407"] = {
    title = "Condição HV-407: correlação 0.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000408", "SKU-GEN-002850" },
    notes = "Ver procedimento PROC-L1-00408 se aplicável.",
    gen_id = 407,
}
_DR["G00408"] = {
    title = "Condição BODY-408: correlação 35.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000409", "SKU-GEN-002857" },
    notes = "Ver procedimento PROC-L1-00409 se aplicável.",
    gen_id = 408,
}
_DR["G00409"] = {
    title = "Condição INFO-409: correlação 21.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000410", "SKU-GEN-002864" },
    notes = "Ver procedimento PROC-L1-00410 se aplicável.",
    gen_id = 409,
}
_DR["G00410"] = {
    title = "Condição ENGINE-410: correlação 57.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000411", "SKU-GEN-002871" },
    notes = "Ver procedimento PROC-L1-00411 se aplicável.",
    gen_id = 410,
}
_DR["G00411"] = {
    title = "Condição ABS-411: correlação 19.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000412", "SKU-GEN-002878" },
    notes = "Ver procedimento PROC-L1-00412 se aplicável.",
    gen_id = 411,
}
_DR["G00412"] = {
    title = "Condição SRS-412: correlação 63.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000413", "SKU-GEN-002885" },
    notes = "Ver procedimento PROC-L1-00413 se aplicável.",
    gen_id = 412,
}
_DR["G00413"] = {
    title = "Condição CLIMATE-413: correlação 62.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000414", "SKU-GEN-002892" },
    notes = "Ver procedimento PROC-L1-00414 se aplicável.",
    gen_id = 413,
}
_DR["G00414"] = {
    title = "Condição TRANS-414: correlação 19.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000415", "SKU-GEN-002899" },
    notes = "Ver procedimento PROC-L1-00415 se aplicável.",
    gen_id = 414,
}
_DR["G00415"] = {
    title = "Condição FUEL-415: correlação 20.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000416", "SKU-GEN-002906" },
    notes = "Ver procedimento PROC-L1-00416 se aplicável.",
    gen_id = 415,
}
_DR["G00416"] = {
    title = "Condição STEER-416: correlação 39.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000417", "SKU-GEN-002913" },
    notes = "Ver procedimento PROC-L1-00417 se aplicável.",
    gen_id = 416,
}
_DR["G00417"] = {
    title = "Condição HV-417: correlação 16.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000418", "SKU-GEN-002920" },
    notes = "Ver procedimento PROC-L1-00418 se aplicável.",
    gen_id = 417,
}
_DR["G00418"] = {
    title = "Condição BODY-418: correlação 35.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000419", "SKU-GEN-002927" },
    notes = "Ver procedimento PROC-L1-00419 se aplicável.",
    gen_id = 418,
}
_DR["G00419"] = {
    title = "Condição INFO-419: correlação 77.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000420", "SKU-GEN-002934" },
    notes = "Ver procedimento PROC-L1-00420 se aplicável.",
    gen_id = 419,
}
_DR["G00420"] = {
    title = "Condição ENGINE-420: correlação 21.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000421", "SKU-GEN-002941" },
    notes = "Ver procedimento PROC-L1-00421 se aplicável.",
    gen_id = 420,
}
_DR["G00421"] = {
    title = "Condição ABS-421: correlação 2.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000422", "SKU-GEN-002948" },
    notes = "Ver procedimento PROC-L1-00422 se aplicável.",
    gen_id = 421,
}
_DR["G00422"] = {
    title = "Condição SRS-422: correlação 67.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000423", "SKU-GEN-002955" },
    notes = "Ver procedimento PROC-L1-00423 se aplicável.",
    gen_id = 422,
}
_DR["G00423"] = {
    title = "Condição CLIMATE-423: correlação 10.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000424", "SKU-GEN-002962" },
    notes = "Ver procedimento PROC-L1-00424 se aplicável.",
    gen_id = 423,
}
_DR["G00424"] = {
    title = "Condição TRANS-424: correlação 76.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000425", "SKU-GEN-002969" },
    notes = "Ver procedimento PROC-L1-00425 se aplicável.",
    gen_id = 424,
}
_DR["G00425"] = {
    title = "Condição FUEL-425: correlação 88.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000426", "SKU-GEN-002976" },
    notes = "Ver procedimento PROC-L1-00426 se aplicável.",
    gen_id = 425,
}
_DR["G00426"] = {
    title = "Condição STEER-426: correlação 0.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000427", "SKU-GEN-002983" },
    notes = "Ver procedimento PROC-L1-00427 se aplicável.",
    gen_id = 426,
}
_DR["G00427"] = {
    title = "Condição HV-427: correlação 53.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000428", "SKU-GEN-002990" },
    notes = "Ver procedimento PROC-L1-00428 se aplicável.",
    gen_id = 427,
}
_DR["G00428"] = {
    title = "Condição BODY-428: correlação 98.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000429", "SKU-GEN-002997" },
    notes = "Ver procedimento PROC-L1-00429 se aplicável.",
    gen_id = 428,
}
_DR["G00429"] = {
    title = "Condição INFO-429: correlação 62.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000430", "SKU-GEN-003004" },
    notes = "Ver procedimento PROC-L1-00430 se aplicável.",
    gen_id = 429,
}
_DR["G00430"] = {
    title = "Condição ENGINE-430: correlação 48.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000431", "SKU-GEN-003011" },
    notes = "Ver procedimento PROC-L1-00431 se aplicável.",
    gen_id = 430,
}
_DR["G00431"] = {
    title = "Condição ABS-431: correlação 58.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000432", "SKU-GEN-003018" },
    notes = "Ver procedimento PROC-L1-00432 se aplicável.",
    gen_id = 431,
}
_DR["G00432"] = {
    title = "Condição SRS-432: correlação 78.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000433", "SKU-GEN-003025" },
    notes = "Ver procedimento PROC-L1-00433 se aplicável.",
    gen_id = 432,
}
_DR["G00433"] = {
    title = "Condição CLIMATE-433: correlação 95.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000434", "SKU-GEN-003032" },
    notes = "Ver procedimento PROC-L1-00434 se aplicável.",
    gen_id = 433,
}
_DR["G00434"] = {
    title = "Condição TRANS-434: correlação 28.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000435", "SKU-GEN-003039" },
    notes = "Ver procedimento PROC-L1-00435 se aplicável.",
    gen_id = 434,
}
_DR["G00435"] = {
    title = "Condição FUEL-435: correlação 11.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000436", "SKU-GEN-003046" },
    notes = "Ver procedimento PROC-L1-00436 se aplicável.",
    gen_id = 435,
}
_DR["G00436"] = {
    title = "Condição STEER-436: correlação 21.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000437", "SKU-GEN-003053" },
    notes = "Ver procedimento PROC-L1-00437 se aplicável.",
    gen_id = 436,
}
_DR["G00437"] = {
    title = "Condição HV-437: correlação 97.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000438", "SKU-GEN-003060" },
    notes = "Ver procedimento PROC-L1-00438 se aplicável.",
    gen_id = 437,
}
_DR["G00438"] = {
    title = "Condição BODY-438: correlação 46.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000439", "SKU-GEN-003067" },
    notes = "Ver procedimento PROC-L1-00439 se aplicável.",
    gen_id = 438,
}
_DR["G00439"] = {
    title = "Condição INFO-439: correlação 87.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000440", "SKU-GEN-003074" },
    notes = "Ver procedimento PROC-L1-00440 se aplicável.",
    gen_id = 439,
}
_DR["G00440"] = {
    title = "Condição ENGINE-440: correlação 43.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000441", "SKU-GEN-003081" },
    notes = "Ver procedimento PROC-L1-00441 se aplicável.",
    gen_id = 440,
}
_DR["G00441"] = {
    title = "Condição ABS-441: correlação 0.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000442", "SKU-GEN-003088" },
    notes = "Ver procedimento PROC-L1-00442 se aplicável.",
    gen_id = 441,
}
_DR["G00442"] = {
    title = "Condição SRS-442: correlação 16.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000443", "SKU-GEN-003095" },
    notes = "Ver procedimento PROC-L1-00443 se aplicável.",
    gen_id = 442,
}
_DR["G00443"] = {
    title = "Condição CLIMATE-443: correlação 64.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000444", "SKU-GEN-003102" },
    notes = "Ver procedimento PROC-L1-00444 se aplicável.",
    gen_id = 443,
}
_DR["G00444"] = {
    title = "Condição TRANS-444: correlação 11.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000445", "SKU-GEN-003109" },
    notes = "Ver procedimento PROC-L1-00445 se aplicável.",
    gen_id = 444,
}
_DR["G00445"] = {
    title = "Condição FUEL-445: correlação 20.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000446", "SKU-GEN-003116" },
    notes = "Ver procedimento PROC-L1-00446 se aplicável.",
    gen_id = 445,
}
_DR["G00446"] = {
    title = "Condição STEER-446: correlação 8.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000447", "SKU-GEN-003123" },
    notes = "Ver procedimento PROC-L1-00447 se aplicável.",
    gen_id = 446,
}
_DR["G00447"] = {
    title = "Condição HV-447: correlação 85.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000448", "SKU-GEN-003130" },
    notes = "Ver procedimento PROC-L1-00448 se aplicável.",
    gen_id = 447,
}
_DR["G00448"] = {
    title = "Condição BODY-448: correlação 7.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000449", "SKU-GEN-003137" },
    notes = "Ver procedimento PROC-L1-00449 se aplicável.",
    gen_id = 448,
}
_DR["G00449"] = {
    title = "Condição INFO-449: correlação 54.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000450", "SKU-GEN-003144" },
    notes = "Ver procedimento PROC-L1-00450 se aplicável.",
    gen_id = 449,
}
_DR["G00450"] = {
    title = "Condição ENGINE-450: correlação 98.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000451", "SKU-GEN-003151" },
    notes = "Ver procedimento PROC-L1-00451 se aplicável.",
    gen_id = 450,
}
_DR["G00451"] = {
    title = "Condição ABS-451: correlação 29.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000452", "SKU-GEN-003158" },
    notes = "Ver procedimento PROC-L1-00452 se aplicável.",
    gen_id = 451,
}
_DR["G00452"] = {
    title = "Condição SRS-452: correlação 16.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000453", "SKU-GEN-003165" },
    notes = "Ver procedimento PROC-L1-00453 se aplicável.",
    gen_id = 452,
}
_DR["G00453"] = {
    title = "Condição CLIMATE-453: correlação 49.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000454", "SKU-GEN-003172" },
    notes = "Ver procedimento PROC-L1-00454 se aplicável.",
    gen_id = 453,
}
_DR["G00454"] = {
    title = "Condição TRANS-454: correlação 55.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000455", "SKU-GEN-003179" },
    notes = "Ver procedimento PROC-L1-00455 se aplicável.",
    gen_id = 454,
}
_DR["G00455"] = {
    title = "Condição FUEL-455: correlação 36.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000456", "SKU-GEN-003186" },
    notes = "Ver procedimento PROC-L1-00456 se aplicável.",
    gen_id = 455,
}
_DR["G00456"] = {
    title = "Condição STEER-456: correlação 89.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000457", "SKU-GEN-003193" },
    notes = "Ver procedimento PROC-L1-00457 se aplicável.",
    gen_id = 456,
}
_DR["G00457"] = {
    title = "Condição HV-457: correlação 37.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000458", "SKU-GEN-003200" },
    notes = "Ver procedimento PROC-L1-00458 se aplicável.",
    gen_id = 457,
}
_DR["G00458"] = {
    title = "Condição BODY-458: correlação 1.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000459", "SKU-GEN-003207" },
    notes = "Ver procedimento PROC-L1-00459 se aplicável.",
    gen_id = 458,
}
_DR["G00459"] = {
    title = "Condição INFO-459: correlação 91.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000460", "SKU-GEN-003214" },
    notes = "Ver procedimento PROC-L1-00460 se aplicável.",
    gen_id = 459,
}
_DR["G00460"] = {
    title = "Condição ENGINE-460: correlação 21.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000461", "SKU-GEN-003221" },
    notes = "Ver procedimento PROC-L1-00461 se aplicável.",
    gen_id = 460,
}
_DR["G00461"] = {
    title = "Condição ABS-461: correlação 3.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000462", "SKU-GEN-003228" },
    notes = "Ver procedimento PROC-L1-00462 se aplicável.",
    gen_id = 461,
}
_DR["G00462"] = {
    title = "Condição SRS-462: correlação 22.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000463", "SKU-GEN-003235" },
    notes = "Ver procedimento PROC-L1-00463 se aplicável.",
    gen_id = 462,
}
_DR["G00463"] = {
    title = "Condição CLIMATE-463: correlação 65.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000464", "SKU-GEN-003242" },
    notes = "Ver procedimento PROC-L1-00464 se aplicável.",
    gen_id = 463,
}
_DR["G00464"] = {
    title = "Condição TRANS-464: correlação 28.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000465", "SKU-GEN-003249" },
    notes = "Ver procedimento PROC-L1-00465 se aplicável.",
    gen_id = 464,
}
_DR["G00465"] = {
    title = "Condição FUEL-465: correlação 62.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000466", "SKU-GEN-003256" },
    notes = "Ver procedimento PROC-L1-00466 se aplicável.",
    gen_id = 465,
}
_DR["G00466"] = {
    title = "Condição STEER-466: correlação 21.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000467", "SKU-GEN-003263" },
    notes = "Ver procedimento PROC-L1-00467 se aplicável.",
    gen_id = 466,
}
_DR["G00467"] = {
    title = "Condição HV-467: correlação 71.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000468", "SKU-GEN-003270" },
    notes = "Ver procedimento PROC-L1-00468 se aplicável.",
    gen_id = 467,
}
_DR["G00468"] = {
    title = "Condição BODY-468: correlação 49.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000469", "SKU-GEN-003277" },
    notes = "Ver procedimento PROC-L1-00469 se aplicável.",
    gen_id = 468,
}
_DR["G00469"] = {
    title = "Condição INFO-469: correlação 47.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000470", "SKU-GEN-003284" },
    notes = "Ver procedimento PROC-L1-00470 se aplicável.",
    gen_id = 469,
}
_DR["G00470"] = {
    title = "Condição ENGINE-470: correlação 32.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000471", "SKU-GEN-003291" },
    notes = "Ver procedimento PROC-L1-00471 se aplicável.",
    gen_id = 470,
}
_DR["G00471"] = {
    title = "Condição ABS-471: correlação 82.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000472", "SKU-GEN-003298" },
    notes = "Ver procedimento PROC-L1-00472 se aplicável.",
    gen_id = 471,
}
_DR["G00472"] = {
    title = "Condição SRS-472: correlação 86.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000473", "SKU-GEN-003305" },
    notes = "Ver procedimento PROC-L1-00473 se aplicável.",
    gen_id = 472,
}
_DR["G00473"] = {
    title = "Condição CLIMATE-473: correlação 26.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000474", "SKU-GEN-003312" },
    notes = "Ver procedimento PROC-L1-00474 se aplicável.",
    gen_id = 473,
}
_DR["G00474"] = {
    title = "Condição TRANS-474: correlação 42.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000475", "SKU-GEN-003319" },
    notes = "Ver procedimento PROC-L1-00475 se aplicável.",
    gen_id = 474,
}
_DR["G00475"] = {
    title = "Condição FUEL-475: correlação 5.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000476", "SKU-GEN-003326" },
    notes = "Ver procedimento PROC-L1-00476 se aplicável.",
    gen_id = 475,
}
_DR["G00476"] = {
    title = "Condição STEER-476: correlação 40.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000477", "SKU-GEN-003333" },
    notes = "Ver procedimento PROC-L1-00477 se aplicável.",
    gen_id = 476,
}
_DR["G00477"] = {
    title = "Condição HV-477: correlação 8.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000478", "SKU-GEN-003340" },
    notes = "Ver procedimento PROC-L1-00478 se aplicável.",
    gen_id = 477,
}
_DR["G00478"] = {
    title = "Condição BODY-478: correlação 98.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000479", "SKU-GEN-003347" },
    notes = "Ver procedimento PROC-L1-00479 se aplicável.",
    gen_id = 478,
}
_DR["G00479"] = {
    title = "Condição INFO-479: correlação 36.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000480", "SKU-GEN-003354" },
    notes = "Ver procedimento PROC-L1-00480 se aplicável.",
    gen_id = 479,
}
_DR["G00480"] = {
    title = "Condição ENGINE-480: correlação 49.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000481", "SKU-GEN-003361" },
    notes = "Ver procedimento PROC-L1-00481 se aplicável.",
    gen_id = 480,
}
_DR["G00481"] = {
    title = "Condição ABS-481: correlação 19.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000482", "SKU-GEN-003368" },
    notes = "Ver procedimento PROC-L1-00482 se aplicável.",
    gen_id = 481,
}
_DR["G00482"] = {
    title = "Condição SRS-482: correlação 78.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000483", "SKU-GEN-003375" },
    notes = "Ver procedimento PROC-L1-00483 se aplicável.",
    gen_id = 482,
}
_DR["G00483"] = {
    title = "Condição CLIMATE-483: correlação 18.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000484", "SKU-GEN-003382" },
    notes = "Ver procedimento PROC-L1-00484 se aplicável.",
    gen_id = 483,
}
_DR["G00484"] = {
    title = "Condição TRANS-484: correlação 3.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000485", "SKU-GEN-003389" },
    notes = "Ver procedimento PROC-L1-00485 se aplicável.",
    gen_id = 484,
}
_DR["G00485"] = {
    title = "Condição FUEL-485: correlação 32.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000486", "SKU-GEN-003396" },
    notes = "Ver procedimento PROC-L1-00486 se aplicável.",
    gen_id = 485,
}
_DR["G00486"] = {
    title = "Condição STEER-486: correlação 64.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000487", "SKU-GEN-003403" },
    notes = "Ver procedimento PROC-L1-00487 se aplicável.",
    gen_id = 486,
}
_DR["G00487"] = {
    title = "Condição HV-487: correlação 77.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000488", "SKU-GEN-003410" },
    notes = "Ver procedimento PROC-L1-00488 se aplicável.",
    gen_id = 487,
}
_DR["G00488"] = {
    title = "Condição BODY-488: correlação 98.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000489", "SKU-GEN-003417" },
    notes = "Ver procedimento PROC-L1-00489 se aplicável.",
    gen_id = 488,
}
_DR["G00489"] = {
    title = "Condição INFO-489: correlação 98.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000490", "SKU-GEN-003424" },
    notes = "Ver procedimento PROC-L1-00490 se aplicável.",
    gen_id = 489,
}
_DR["G00490"] = {
    title = "Condição ENGINE-490: correlação 50.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000491", "SKU-GEN-003431" },
    notes = "Ver procedimento PROC-L1-00491 se aplicável.",
    gen_id = 490,
}
_DR["G00491"] = {
    title = "Condição ABS-491: correlação 20.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000492", "SKU-GEN-003438" },
    notes = "Ver procedimento PROC-L1-00492 se aplicável.",
    gen_id = 491,
}
_DR["G00492"] = {
    title = "Condição SRS-492: correlação 64.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000493", "SKU-GEN-003445" },
    notes = "Ver procedimento PROC-L1-00493 se aplicável.",
    gen_id = 492,
}
_DR["G00493"] = {
    title = "Condição CLIMATE-493: correlação 12.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000494", "SKU-GEN-003452" },
    notes = "Ver procedimento PROC-L1-00494 se aplicável.",
    gen_id = 493,
}
_DR["G00494"] = {
    title = "Condição TRANS-494: correlação 64.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000495", "SKU-GEN-003459" },
    notes = "Ver procedimento PROC-L1-00495 se aplicável.",
    gen_id = 494,
}
_DR["G00495"] = {
    title = "Condição FUEL-495: correlação 16.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000496", "SKU-GEN-003466" },
    notes = "Ver procedimento PROC-L1-00496 se aplicável.",
    gen_id = 495,
}
_DR["G00496"] = {
    title = "Condição STEER-496: correlação 66.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000497", "SKU-GEN-003473" },
    notes = "Ver procedimento PROC-L1-00497 se aplicável.",
    gen_id = 496,
}
_DR["G00497"] = {
    title = "Condição HV-497: correlação 5.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000498", "SKU-GEN-003480" },
    notes = "Ver procedimento PROC-L1-00498 se aplicável.",
    gen_id = 497,
}
_DR["G00498"] = {
    title = "Condição BODY-498: correlação 91.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000499", "SKU-GEN-003487" },
    notes = "Ver procedimento PROC-L1-00499 se aplicável.",
    gen_id = 498,
}
_DR["G00499"] = {
    title = "Condição INFO-499: correlação 92.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000500", "SKU-GEN-003494" },
    notes = "Ver procedimento PROC-L1-00500 se aplicável.",
    gen_id = 499,
}
_DR["G00500"] = {
    title = "Condição ENGINE-500: correlação 80.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000501", "SKU-GEN-003501" },
    notes = "Ver procedimento PROC-L1-00501 se aplicável.",
    gen_id = 500,
}
_DR["G00501"] = {
    title = "Condição ABS-501: correlação 57.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000502", "SKU-GEN-003508" },
    notes = "Ver procedimento PROC-L1-00502 se aplicável.",
    gen_id = 501,
}
_DR["G00502"] = {
    title = "Condição SRS-502: correlação 24.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000503", "SKU-GEN-003515" },
    notes = "Ver procedimento PROC-L1-00503 se aplicável.",
    gen_id = 502,
}
_DR["G00503"] = {
    title = "Condição CLIMATE-503: correlação 5.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000504", "SKU-GEN-003522" },
    notes = "Ver procedimento PROC-L1-00504 se aplicável.",
    gen_id = 503,
}
_DR["G00504"] = {
    title = "Condição TRANS-504: correlação 72.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000505", "SKU-GEN-003529" },
    notes = "Ver procedimento PROC-L1-00505 se aplicável.",
    gen_id = 504,
}
_DR["G00505"] = {
    title = "Condição FUEL-505: correlação 49.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000506", "SKU-GEN-003536" },
    notes = "Ver procedimento PROC-L1-00506 se aplicável.",
    gen_id = 505,
}
_DR["G00506"] = {
    title = "Condição STEER-506: correlação 87.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000507", "SKU-GEN-003543" },
    notes = "Ver procedimento PROC-L1-00507 se aplicável.",
    gen_id = 506,
}
_DR["G00507"] = {
    title = "Condição HV-507: correlação 94.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000508", "SKU-GEN-003550" },
    notes = "Ver procedimento PROC-L1-00508 se aplicável.",
    gen_id = 507,
}
_DR["G00508"] = {
    title = "Condição BODY-508: correlação 46.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000509", "SKU-GEN-003557" },
    notes = "Ver procedimento PROC-L1-00509 se aplicável.",
    gen_id = 508,
}
_DR["G00509"] = {
    title = "Condição INFO-509: correlação 30.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000510", "SKU-GEN-003564" },
    notes = "Ver procedimento PROC-L1-00510 se aplicável.",
    gen_id = 509,
}
_DR["G00510"] = {
    title = "Condição ENGINE-510: correlação 93.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000511", "SKU-GEN-003571" },
    notes = "Ver procedimento PROC-L1-00511 se aplicável.",
    gen_id = 510,
}
_DR["G00511"] = {
    title = "Condição ABS-511: correlação 9.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000512", "SKU-GEN-003578" },
    notes = "Ver procedimento PROC-L1-00512 se aplicável.",
    gen_id = 511,
}
_DR["G00512"] = {
    title = "Condição SRS-512: correlação 42.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000513", "SKU-GEN-003585" },
    notes = "Ver procedimento PROC-L1-00513 se aplicável.",
    gen_id = 512,
}
_DR["G00513"] = {
    title = "Condição CLIMATE-513: correlação 43.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000514", "SKU-GEN-003592" },
    notes = "Ver procedimento PROC-L1-00514 se aplicável.",
    gen_id = 513,
}
_DR["G00514"] = {
    title = "Condição TRANS-514: correlação 47.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000515", "SKU-GEN-003599" },
    notes = "Ver procedimento PROC-L1-00515 se aplicável.",
    gen_id = 514,
}
_DR["G00515"] = {
    title = "Condição FUEL-515: correlação 66.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000516", "SKU-GEN-003606" },
    notes = "Ver procedimento PROC-L1-00516 se aplicável.",
    gen_id = 515,
}
_DR["G00516"] = {
    title = "Condição STEER-516: correlação 81.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000517", "SKU-GEN-003613" },
    notes = "Ver procedimento PROC-L1-00517 se aplicável.",
    gen_id = 516,
}
_DR["G00517"] = {
    title = "Condição HV-517: correlação 38.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000518", "SKU-GEN-003620" },
    notes = "Ver procedimento PROC-L1-00518 se aplicável.",
    gen_id = 517,
}
_DR["G00518"] = {
    title = "Condição BODY-518: correlação 99.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000519", "SKU-GEN-003627" },
    notes = "Ver procedimento PROC-L1-00519 se aplicável.",
    gen_id = 518,
}
_DR["G00519"] = {
    title = "Condição INFO-519: correlação 92.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000520", "SKU-GEN-003634" },
    notes = "Ver procedimento PROC-L1-00520 se aplicável.",
    gen_id = 519,
}
_DR["G00520"] = {
    title = "Condição ENGINE-520: correlação 9.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000521", "SKU-GEN-003641" },
    notes = "Ver procedimento PROC-L1-00521 se aplicável.",
    gen_id = 520,
}
_DR["G00521"] = {
    title = "Condição ABS-521: correlação 92.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000522", "SKU-GEN-003648" },
    notes = "Ver procedimento PROC-L1-00522 se aplicável.",
    gen_id = 521,
}
_DR["G00522"] = {
    title = "Condição SRS-522: correlação 2.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000523", "SKU-GEN-003655" },
    notes = "Ver procedimento PROC-L1-00523 se aplicável.",
    gen_id = 522,
}
_DR["G00523"] = {
    title = "Condição CLIMATE-523: correlação 42.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000524", "SKU-GEN-003662" },
    notes = "Ver procedimento PROC-L1-00524 se aplicável.",
    gen_id = 523,
}
_DR["G00524"] = {
    title = "Condição TRANS-524: correlação 84.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000525", "SKU-GEN-003669" },
    notes = "Ver procedimento PROC-L1-00525 se aplicável.",
    gen_id = 524,
}
_DR["G00525"] = {
    title = "Condição FUEL-525: correlação 74.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000526", "SKU-GEN-003676" },
    notes = "Ver procedimento PROC-L1-00526 se aplicável.",
    gen_id = 525,
}
_DR["G00526"] = {
    title = "Condição STEER-526: correlação 42.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000527", "SKU-GEN-003683" },
    notes = "Ver procedimento PROC-L1-00527 se aplicável.",
    gen_id = 526,
}
_DR["G00527"] = {
    title = "Condição HV-527: correlação 11.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000528", "SKU-GEN-003690" },
    notes = "Ver procedimento PROC-L1-00528 se aplicável.",
    gen_id = 527,
}
_DR["G00528"] = {
    title = "Condição BODY-528: correlação 91.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000529", "SKU-GEN-003697" },
    notes = "Ver procedimento PROC-L1-00529 se aplicável.",
    gen_id = 528,
}
_DR["G00529"] = {
    title = "Condição INFO-529: correlação 49.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000530", "SKU-GEN-003704" },
    notes = "Ver procedimento PROC-L1-00530 se aplicável.",
    gen_id = 529,
}
_DR["G00530"] = {
    title = "Condição ENGINE-530: correlação 37.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000531", "SKU-GEN-003711" },
    notes = "Ver procedimento PROC-L1-00531 se aplicável.",
    gen_id = 530,
}
_DR["G00531"] = {
    title = "Condição ABS-531: correlação 70.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000532", "SKU-GEN-003718" },
    notes = "Ver procedimento PROC-L1-00532 se aplicável.",
    gen_id = 531,
}
_DR["G00532"] = {
    title = "Condição SRS-532: correlação 92.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000533", "SKU-GEN-003725" },
    notes = "Ver procedimento PROC-L1-00533 se aplicável.",
    gen_id = 532,
}
_DR["G00533"] = {
    title = "Condição CLIMATE-533: correlação 19.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000534", "SKU-GEN-003732" },
    notes = "Ver procedimento PROC-L1-00534 se aplicável.",
    gen_id = 533,
}
_DR["G00534"] = {
    title = "Condição TRANS-534: correlação 20.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000535", "SKU-GEN-003739" },
    notes = "Ver procedimento PROC-L1-00535 se aplicável.",
    gen_id = 534,
}
_DR["G00535"] = {
    title = "Condição FUEL-535: correlação 7.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000536", "SKU-GEN-003746" },
    notes = "Ver procedimento PROC-L1-00536 se aplicável.",
    gen_id = 535,
}
_DR["G00536"] = {
    title = "Condição STEER-536: correlação 54.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000537", "SKU-GEN-003753" },
    notes = "Ver procedimento PROC-L1-00537 se aplicável.",
    gen_id = 536,
}
_DR["G00537"] = {
    title = "Condição HV-537: correlação 13.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000538", "SKU-GEN-003760" },
    notes = "Ver procedimento PROC-L1-00538 se aplicável.",
    gen_id = 537,
}
_DR["G00538"] = {
    title = "Condição BODY-538: correlação 58.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000539", "SKU-GEN-003767" },
    notes = "Ver procedimento PROC-L1-00539 se aplicável.",
    gen_id = 538,
}
_DR["G00539"] = {
    title = "Condição INFO-539: correlação 36.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000540", "SKU-GEN-003774" },
    notes = "Ver procedimento PROC-L1-00540 se aplicável.",
    gen_id = 539,
}
_DR["G00540"] = {
    title = "Condição ENGINE-540: correlação 97.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000541", "SKU-GEN-003781" },
    notes = "Ver procedimento PROC-L1-00541 se aplicável.",
    gen_id = 540,
}
_DR["G00541"] = {
    title = "Condição ABS-541: correlação 3.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000542", "SKU-GEN-003788" },
    notes = "Ver procedimento PROC-L1-00542 se aplicável.",
    gen_id = 541,
}
_DR["G00542"] = {
    title = "Condição SRS-542: correlação 78.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000543", "SKU-GEN-003795" },
    notes = "Ver procedimento PROC-L1-00543 se aplicável.",
    gen_id = 542,
}
_DR["G00543"] = {
    title = "Condição CLIMATE-543: correlação 16.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000544", "SKU-GEN-003802" },
    notes = "Ver procedimento PROC-L1-00544 se aplicável.",
    gen_id = 543,
}
_DR["G00544"] = {
    title = "Condição TRANS-544: correlação 57.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000545", "SKU-GEN-003809" },
    notes = "Ver procedimento PROC-L1-00545 se aplicável.",
    gen_id = 544,
}
_DR["G00545"] = {
    title = "Condição FUEL-545: correlação 95.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000546", "SKU-GEN-003816" },
    notes = "Ver procedimento PROC-L1-00546 se aplicável.",
    gen_id = 545,
}
_DR["G00546"] = {
    title = "Condição STEER-546: correlação 83.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000547", "SKU-GEN-003823" },
    notes = "Ver procedimento PROC-L1-00547 se aplicável.",
    gen_id = 546,
}
_DR["G00547"] = {
    title = "Condição HV-547: correlação 96.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000548", "SKU-GEN-003830" },
    notes = "Ver procedimento PROC-L1-00548 se aplicável.",
    gen_id = 547,
}
_DR["G00548"] = {
    title = "Condição BODY-548: correlação 63.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000549", "SKU-GEN-003837" },
    notes = "Ver procedimento PROC-L1-00549 se aplicável.",
    gen_id = 548,
}
_DR["G00549"] = {
    title = "Condição INFO-549: correlação 18.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000550", "SKU-GEN-003844" },
    notes = "Ver procedimento PROC-L1-00550 se aplicável.",
    gen_id = 549,
}
_DR["G00550"] = {
    title = "Condição ENGINE-550: correlação 97.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000551", "SKU-GEN-003851" },
    notes = "Ver procedimento PROC-L1-00551 se aplicável.",
    gen_id = 550,
}
_DR["G00551"] = {
    title = "Condição ABS-551: correlação 71.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000552", "SKU-GEN-003858" },
    notes = "Ver procedimento PROC-L1-00552 se aplicável.",
    gen_id = 551,
}
_DR["G00552"] = {
    title = "Condição SRS-552: correlação 73.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000553", "SKU-GEN-003865" },
    notes = "Ver procedimento PROC-L1-00553 se aplicável.",
    gen_id = 552,
}
_DR["G00553"] = {
    title = "Condição CLIMATE-553: correlação 30.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000554", "SKU-GEN-003872" },
    notes = "Ver procedimento PROC-L1-00554 se aplicável.",
    gen_id = 553,
}
_DR["G00554"] = {
    title = "Condição TRANS-554: correlação 69.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000555", "SKU-GEN-003879" },
    notes = "Ver procedimento PROC-L1-00555 se aplicável.",
    gen_id = 554,
}
_DR["G00555"] = {
    title = "Condição FUEL-555: correlação 14.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000556", "SKU-GEN-003886" },
    notes = "Ver procedimento PROC-L1-00556 se aplicável.",
    gen_id = 555,
}
_DR["G00556"] = {
    title = "Condição STEER-556: correlação 9.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000557", "SKU-GEN-003893" },
    notes = "Ver procedimento PROC-L1-00557 se aplicável.",
    gen_id = 556,
}
_DR["G00557"] = {
    title = "Condição HV-557: correlação 87.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000558", "SKU-GEN-003900" },
    notes = "Ver procedimento PROC-L1-00558 se aplicável.",
    gen_id = 557,
}
_DR["G00558"] = {
    title = "Condição BODY-558: correlação 10.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000559", "SKU-GEN-003907" },
    notes = "Ver procedimento PROC-L1-00559 se aplicável.",
    gen_id = 558,
}
_DR["G00559"] = {
    title = "Condição INFO-559: correlação 23.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000560", "SKU-GEN-003914" },
    notes = "Ver procedimento PROC-L1-00560 se aplicável.",
    gen_id = 559,
}
_DR["G00560"] = {
    title = "Condição ENGINE-560: correlação 97.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000561", "SKU-GEN-003921" },
    notes = "Ver procedimento PROC-L1-00561 se aplicável.",
    gen_id = 560,
}
_DR["G00561"] = {
    title = "Condição ABS-561: correlação 58.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000562", "SKU-GEN-003928" },
    notes = "Ver procedimento PROC-L1-00562 se aplicável.",
    gen_id = 561,
}
_DR["G00562"] = {
    title = "Condição SRS-562: correlação 69.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000563", "SKU-GEN-003935" },
    notes = "Ver procedimento PROC-L1-00563 se aplicável.",
    gen_id = 562,
}
_DR["G00563"] = {
    title = "Condição CLIMATE-563: correlação 5.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000564", "SKU-GEN-003942" },
    notes = "Ver procedimento PROC-L1-00564 se aplicável.",
    gen_id = 563,
}
_DR["G00564"] = {
    title = "Condição TRANS-564: correlação 88.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000565", "SKU-GEN-003949" },
    notes = "Ver procedimento PROC-L1-00565 se aplicável.",
    gen_id = 564,
}
_DR["G00565"] = {
    title = "Condição FUEL-565: correlação 92.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000566", "SKU-GEN-003956" },
    notes = "Ver procedimento PROC-L1-00566 se aplicável.",
    gen_id = 565,
}
_DR["G00566"] = {
    title = "Condição STEER-566: correlação 49.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000567", "SKU-GEN-003963" },
    notes = "Ver procedimento PROC-L1-00567 se aplicável.",
    gen_id = 566,
}
_DR["G00567"] = {
    title = "Condição HV-567: correlação 62.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000568", "SKU-GEN-003970" },
    notes = "Ver procedimento PROC-L1-00568 se aplicável.",
    gen_id = 567,
}
_DR["G00568"] = {
    title = "Condição BODY-568: correlação 32.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000569", "SKU-GEN-003977" },
    notes = "Ver procedimento PROC-L1-00569 se aplicável.",
    gen_id = 568,
}
_DR["G00569"] = {
    title = "Condição INFO-569: correlação 48.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000570", "SKU-GEN-003984" },
    notes = "Ver procedimento PROC-L1-00570 se aplicável.",
    gen_id = 569,
}
_DR["G00570"] = {
    title = "Condição ENGINE-570: correlação 23.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000571", "SKU-GEN-003991" },
    notes = "Ver procedimento PROC-L1-00571 se aplicável.",
    gen_id = 570,
}
_DR["G00571"] = {
    title = "Condição ABS-571: correlação 86.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000572", "SKU-GEN-003998" },
    notes = "Ver procedimento PROC-L1-00572 se aplicável.",
    gen_id = 571,
}
_DR["G00572"] = {
    title = "Condição SRS-572: correlação 30.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000573", "SKU-GEN-004005" },
    notes = "Ver procedimento PROC-L1-00573 se aplicável.",
    gen_id = 572,
}
_DR["G00573"] = {
    title = "Condição CLIMATE-573: correlação 57.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000574", "SKU-GEN-004012" },
    notes = "Ver procedimento PROC-L1-00574 se aplicável.",
    gen_id = 573,
}
_DR["G00574"] = {
    title = "Condição TRANS-574: correlação 22.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000575", "SKU-GEN-004019" },
    notes = "Ver procedimento PROC-L1-00575 se aplicável.",
    gen_id = 574,
}
_DR["G00575"] = {
    title = "Condição FUEL-575: correlação 44.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000576", "SKU-GEN-004026" },
    notes = "Ver procedimento PROC-L1-00576 se aplicável.",
    gen_id = 575,
}
_DR["G00576"] = {
    title = "Condição STEER-576: correlação 60.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000577", "SKU-GEN-004033" },
    notes = "Ver procedimento PROC-L1-00577 se aplicável.",
    gen_id = 576,
}
_DR["G00577"] = {
    title = "Condição HV-577: correlação 84.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000578", "SKU-GEN-004040" },
    notes = "Ver procedimento PROC-L1-00578 se aplicável.",
    gen_id = 577,
}
_DR["G00578"] = {
    title = "Condição BODY-578: correlação 74.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000579", "SKU-GEN-004047" },
    notes = "Ver procedimento PROC-L1-00579 se aplicável.",
    gen_id = 578,
}
_DR["G00579"] = {
    title = "Condição INFO-579: correlação 32.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000580", "SKU-GEN-004054" },
    notes = "Ver procedimento PROC-L1-00580 se aplicável.",
    gen_id = 579,
}
_DR["G00580"] = {
    title = "Condição ENGINE-580: correlação 87.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000581", "SKU-GEN-004061" },
    notes = "Ver procedimento PROC-L1-00581 se aplicável.",
    gen_id = 580,
}
_DR["G00581"] = {
    title = "Condição ABS-581: correlação 87.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000582", "SKU-GEN-004068" },
    notes = "Ver procedimento PROC-L1-00582 se aplicável.",
    gen_id = 581,
}
_DR["G00582"] = {
    title = "Condição SRS-582: correlação 31.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000583", "SKU-GEN-004075" },
    notes = "Ver procedimento PROC-L1-00583 se aplicável.",
    gen_id = 582,
}
_DR["G00583"] = {
    title = "Condição CLIMATE-583: correlação 25.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000584", "SKU-GEN-004082" },
    notes = "Ver procedimento PROC-L1-00584 se aplicável.",
    gen_id = 583,
}
_DR["G00584"] = {
    title = "Condição TRANS-584: correlação 86.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000585", "SKU-GEN-004089" },
    notes = "Ver procedimento PROC-L1-00585 se aplicável.",
    gen_id = 584,
}
_DR["G00585"] = {
    title = "Condição FUEL-585: correlação 13.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000586", "SKU-GEN-004096" },
    notes = "Ver procedimento PROC-L1-00586 se aplicável.",
    gen_id = 585,
}
_DR["G00586"] = {
    title = "Condição STEER-586: correlação 21.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000587", "SKU-GEN-004103" },
    notes = "Ver procedimento PROC-L1-00587 se aplicável.",
    gen_id = 586,
}
_DR["G00587"] = {
    title = "Condição HV-587: correlação 40.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000588", "SKU-GEN-004110" },
    notes = "Ver procedimento PROC-L1-00588 se aplicável.",
    gen_id = 587,
}
_DR["G00588"] = {
    title = "Condição BODY-588: correlação 37.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000589", "SKU-GEN-004117" },
    notes = "Ver procedimento PROC-L1-00589 se aplicável.",
    gen_id = 588,
}
_DR["G00589"] = {
    title = "Condição INFO-589: correlação 65.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000590", "SKU-GEN-004124" },
    notes = "Ver procedimento PROC-L1-00590 se aplicável.",
    gen_id = 589,
}
_DR["G00590"] = {
    title = "Condição ENGINE-590: correlação 3.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000591", "SKU-GEN-004131" },
    notes = "Ver procedimento PROC-L1-00591 se aplicável.",
    gen_id = 590,
}
_DR["G00591"] = {
    title = "Condição ABS-591: correlação 6.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000592", "SKU-GEN-004138" },
    notes = "Ver procedimento PROC-L1-00592 se aplicável.",
    gen_id = 591,
}
_DR["G00592"] = {
    title = "Condição SRS-592: correlação 72.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000593", "SKU-GEN-004145" },
    notes = "Ver procedimento PROC-L1-00593 se aplicável.",
    gen_id = 592,
}
_DR["G00593"] = {
    title = "Condição CLIMATE-593: correlação 37.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000594", "SKU-GEN-004152" },
    notes = "Ver procedimento PROC-L1-00594 se aplicável.",
    gen_id = 593,
}
_DR["G00594"] = {
    title = "Condição TRANS-594: correlação 2.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000595", "SKU-GEN-004159" },
    notes = "Ver procedimento PROC-L1-00595 se aplicável.",
    gen_id = 594,
}
_DR["G00595"] = {
    title = "Condição FUEL-595: correlação 95.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000596", "SKU-GEN-004166" },
    notes = "Ver procedimento PROC-L1-00596 se aplicável.",
    gen_id = 595,
}
_DR["G00596"] = {
    title = "Condição STEER-596: correlação 88.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000597", "SKU-GEN-004173" },
    notes = "Ver procedimento PROC-L1-00597 se aplicável.",
    gen_id = 596,
}
_DR["G00597"] = {
    title = "Condição HV-597: correlação 99.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000598", "SKU-GEN-004180" },
    notes = "Ver procedimento PROC-L1-00598 se aplicável.",
    gen_id = 597,
}
_DR["G00598"] = {
    title = "Condição BODY-598: correlação 72.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000599", "SKU-GEN-004187" },
    notes = "Ver procedimento PROC-L1-00599 se aplicável.",
    gen_id = 598,
}
_DR["G00599"] = {
    title = "Condição INFO-599: correlação 73.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000600", "SKU-GEN-004194" },
    notes = "Ver procedimento PROC-L1-00600 se aplicável.",
    gen_id = 599,
}
_DR["G00600"] = {
    title = "Condição ENGINE-600: correlação 51.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000601", "SKU-GEN-004201" },
    notes = "Ver procedimento PROC-L1-00601 se aplicável.",
    gen_id = 600,
}
_DR["G00601"] = {
    title = "Condição ABS-601: correlação 72.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000602", "SKU-GEN-004208" },
    notes = "Ver procedimento PROC-L1-00602 se aplicável.",
    gen_id = 601,
}
_DR["G00602"] = {
    title = "Condição SRS-602: correlação 5.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000603", "SKU-GEN-004215" },
    notes = "Ver procedimento PROC-L1-00603 se aplicável.",
    gen_id = 602,
}
_DR["G00603"] = {
    title = "Condição CLIMATE-603: correlação 50.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000604", "SKU-GEN-004222" },
    notes = "Ver procedimento PROC-L1-00604 se aplicável.",
    gen_id = 603,
}
_DR["G00604"] = {
    title = "Condição TRANS-604: correlação 53.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000605", "SKU-GEN-004229" },
    notes = "Ver procedimento PROC-L1-00605 se aplicável.",
    gen_id = 604,
}
_DR["G00605"] = {
    title = "Condição FUEL-605: correlação 37.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000606", "SKU-GEN-004236" },
    notes = "Ver procedimento PROC-L1-00606 se aplicável.",
    gen_id = 605,
}
_DR["G00606"] = {
    title = "Condição STEER-606: correlação 77.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000607", "SKU-GEN-004243" },
    notes = "Ver procedimento PROC-L1-00607 se aplicável.",
    gen_id = 606,
}
_DR["G00607"] = {
    title = "Condição HV-607: correlação 59.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000608", "SKU-GEN-004250" },
    notes = "Ver procedimento PROC-L1-00608 se aplicável.",
    gen_id = 607,
}
_DR["G00608"] = {
    title = "Condição BODY-608: correlação 14.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000609", "SKU-GEN-004257" },
    notes = "Ver procedimento PROC-L1-00609 se aplicável.",
    gen_id = 608,
}
_DR["G00609"] = {
    title = "Condição INFO-609: correlação 59.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000610", "SKU-GEN-004264" },
    notes = "Ver procedimento PROC-L1-00610 se aplicável.",
    gen_id = 609,
}
_DR["G00610"] = {
    title = "Condição ENGINE-610: correlação 15.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000611", "SKU-GEN-004271" },
    notes = "Ver procedimento PROC-L1-00611 se aplicável.",
    gen_id = 610,
}
_DR["G00611"] = {
    title = "Condição ABS-611: correlação 0.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000612", "SKU-GEN-004278" },
    notes = "Ver procedimento PROC-L1-00612 se aplicável.",
    gen_id = 611,
}
_DR["G00612"] = {
    title = "Condição SRS-612: correlação 9.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000613", "SKU-GEN-004285" },
    notes = "Ver procedimento PROC-L1-00613 se aplicável.",
    gen_id = 612,
}
_DR["G00613"] = {
    title = "Condição CLIMATE-613: correlação 26.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000614", "SKU-GEN-004292" },
    notes = "Ver procedimento PROC-L1-00614 se aplicável.",
    gen_id = 613,
}
_DR["G00614"] = {
    title = "Condição TRANS-614: correlação 2.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000615", "SKU-GEN-004299" },
    notes = "Ver procedimento PROC-L1-00615 se aplicável.",
    gen_id = 614,
}
_DR["G00615"] = {
    title = "Condição FUEL-615: correlação 96.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000616", "SKU-GEN-004306" },
    notes = "Ver procedimento PROC-L1-00616 se aplicável.",
    gen_id = 615,
}
_DR["G00616"] = {
    title = "Condição STEER-616: correlação 91.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000617", "SKU-GEN-004313" },
    notes = "Ver procedimento PROC-L1-00617 se aplicável.",
    gen_id = 616,
}
_DR["G00617"] = {
    title = "Condição HV-617: correlação 29.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000618", "SKU-GEN-004320" },
    notes = "Ver procedimento PROC-L1-00618 se aplicável.",
    gen_id = 617,
}
_DR["G00618"] = {
    title = "Condição BODY-618: correlação 88.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000619", "SKU-GEN-004327" },
    notes = "Ver procedimento PROC-L1-00619 se aplicável.",
    gen_id = 618,
}
_DR["G00619"] = {
    title = "Condição INFO-619: correlação 78.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000620", "SKU-GEN-004334" },
    notes = "Ver procedimento PROC-L1-00620 se aplicável.",
    gen_id = 619,
}
_DR["G00620"] = {
    title = "Condição ENGINE-620: correlação 34.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000621", "SKU-GEN-004341" },
    notes = "Ver procedimento PROC-L1-00621 se aplicável.",
    gen_id = 620,
}
_DR["G00621"] = {
    title = "Condição ABS-621: correlação 34.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000622", "SKU-GEN-004348" },
    notes = "Ver procedimento PROC-L1-00622 se aplicável.",
    gen_id = 621,
}
_DR["G00622"] = {
    title = "Condição SRS-622: correlação 38.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000623", "SKU-GEN-004355" },
    notes = "Ver procedimento PROC-L1-00623 se aplicável.",
    gen_id = 622,
}
_DR["G00623"] = {
    title = "Condição CLIMATE-623: correlação 86.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000624", "SKU-GEN-004362" },
    notes = "Ver procedimento PROC-L1-00624 se aplicável.",
    gen_id = 623,
}
_DR["G00624"] = {
    title = "Condição TRANS-624: correlação 2.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000625", "SKU-GEN-004369" },
    notes = "Ver procedimento PROC-L1-00625 se aplicável.",
    gen_id = 624,
}
_DR["G00625"] = {
    title = "Condição FUEL-625: correlação 27.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000626", "SKU-GEN-004376" },
    notes = "Ver procedimento PROC-L1-00626 se aplicável.",
    gen_id = 625,
}
_DR["G00626"] = {
    title = "Condição STEER-626: correlação 60.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000627", "SKU-GEN-004383" },
    notes = "Ver procedimento PROC-L1-00627 se aplicável.",
    gen_id = 626,
}
_DR["G00627"] = {
    title = "Condição HV-627: correlação 44.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000628", "SKU-GEN-004390" },
    notes = "Ver procedimento PROC-L1-00628 se aplicável.",
    gen_id = 627,
}
_DR["G00628"] = {
    title = "Condição BODY-628: correlação 35.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000629", "SKU-GEN-004397" },
    notes = "Ver procedimento PROC-L1-00629 se aplicável.",
    gen_id = 628,
}
_DR["G00629"] = {
    title = "Condição INFO-629: correlação 27.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000630", "SKU-GEN-004404" },
    notes = "Ver procedimento PROC-L1-00630 se aplicável.",
    gen_id = 629,
}
_DR["G00630"] = {
    title = "Condição ENGINE-630: correlação 85.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000631", "SKU-GEN-004411" },
    notes = "Ver procedimento PROC-L1-00631 se aplicável.",
    gen_id = 630,
}
_DR["G00631"] = {
    title = "Condição ABS-631: correlação 68.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000632", "SKU-GEN-004418" },
    notes = "Ver procedimento PROC-L1-00632 se aplicável.",
    gen_id = 631,
}
_DR["G00632"] = {
    title = "Condição SRS-632: correlação 98.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000633", "SKU-GEN-004425" },
    notes = "Ver procedimento PROC-L1-00633 se aplicável.",
    gen_id = 632,
}
_DR["G00633"] = {
    title = "Condição CLIMATE-633: correlação 96.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000634", "SKU-GEN-004432" },
    notes = "Ver procedimento PROC-L1-00634 se aplicável.",
    gen_id = 633,
}
_DR["G00634"] = {
    title = "Condição TRANS-634: correlação 86.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000635", "SKU-GEN-004439" },
    notes = "Ver procedimento PROC-L1-00635 se aplicável.",
    gen_id = 634,
}
_DR["G00635"] = {
    title = "Condição FUEL-635: correlação 86.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000636", "SKU-GEN-004446" },
    notes = "Ver procedimento PROC-L1-00636 se aplicável.",
    gen_id = 635,
}
_DR["G00636"] = {
    title = "Condição STEER-636: correlação 44.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000637", "SKU-GEN-004453" },
    notes = "Ver procedimento PROC-L1-00637 se aplicável.",
    gen_id = 636,
}
_DR["G00637"] = {
    title = "Condição HV-637: correlação 3.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000638", "SKU-GEN-004460" },
    notes = "Ver procedimento PROC-L1-00638 se aplicável.",
    gen_id = 637,
}
_DR["G00638"] = {
    title = "Condição BODY-638: correlação 78.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000639", "SKU-GEN-004467" },
    notes = "Ver procedimento PROC-L1-00639 se aplicável.",
    gen_id = 638,
}
_DR["G00639"] = {
    title = "Condição INFO-639: correlação 2.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000640", "SKU-GEN-004474" },
    notes = "Ver procedimento PROC-L1-00640 se aplicável.",
    gen_id = 639,
}
_DR["G00640"] = {
    title = "Condição ENGINE-640: correlação 75.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000641", "SKU-GEN-004481" },
    notes = "Ver procedimento PROC-L1-00641 se aplicável.",
    gen_id = 640,
}
_DR["G00641"] = {
    title = "Condição ABS-641: correlação 7.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000642", "SKU-GEN-004488" },
    notes = "Ver procedimento PROC-L1-00642 se aplicável.",
    gen_id = 641,
}
_DR["G00642"] = {
    title = "Condição SRS-642: correlação 7.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000643", "SKU-GEN-004495" },
    notes = "Ver procedimento PROC-L1-00643 se aplicável.",
    gen_id = 642,
}
_DR["G00643"] = {
    title = "Condição CLIMATE-643: correlação 27.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000644", "SKU-GEN-004502" },
    notes = "Ver procedimento PROC-L1-00644 se aplicável.",
    gen_id = 643,
}
_DR["G00644"] = {
    title = "Condição TRANS-644: correlação 6.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000645", "SKU-GEN-004509" },
    notes = "Ver procedimento PROC-L1-00645 se aplicável.",
    gen_id = 644,
}
_DR["G00645"] = {
    title = "Condição FUEL-645: correlação 78.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000646", "SKU-GEN-004516" },
    notes = "Ver procedimento PROC-L1-00646 se aplicável.",
    gen_id = 645,
}
_DR["G00646"] = {
    title = "Condição STEER-646: correlação 48.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000647", "SKU-GEN-004523" },
    notes = "Ver procedimento PROC-L1-00647 se aplicável.",
    gen_id = 646,
}
_DR["G00647"] = {
    title = "Condição HV-647: correlação 51.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000648", "SKU-GEN-004530" },
    notes = "Ver procedimento PROC-L1-00648 se aplicável.",
    gen_id = 647,
}
_DR["G00648"] = {
    title = "Condição BODY-648: correlação 75.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000649", "SKU-GEN-004537" },
    notes = "Ver procedimento PROC-L1-00649 se aplicável.",
    gen_id = 648,
}
_DR["G00649"] = {
    title = "Condição INFO-649: correlação 57.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000650", "SKU-GEN-004544" },
    notes = "Ver procedimento PROC-L1-00650 se aplicável.",
    gen_id = 649,
}
_DR["G00650"] = {
    title = "Condição ENGINE-650: correlação 53.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000651", "SKU-GEN-004551" },
    notes = "Ver procedimento PROC-L1-00651 se aplicável.",
    gen_id = 650,
}
_DR["G00651"] = {
    title = "Condição ABS-651: correlação 38.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000652", "SKU-GEN-004558" },
    notes = "Ver procedimento PROC-L1-00652 se aplicável.",
    gen_id = 651,
}
_DR["G00652"] = {
    title = "Condição SRS-652: correlação 40.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000653", "SKU-GEN-004565" },
    notes = "Ver procedimento PROC-L1-00653 se aplicável.",
    gen_id = 652,
}
_DR["G00653"] = {
    title = "Condição CLIMATE-653: correlação 36.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000654", "SKU-GEN-004572" },
    notes = "Ver procedimento PROC-L1-00654 se aplicável.",
    gen_id = 653,
}
_DR["G00654"] = {
    title = "Condição TRANS-654: correlação 17.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000655", "SKU-GEN-004579" },
    notes = "Ver procedimento PROC-L1-00655 se aplicável.",
    gen_id = 654,
}
_DR["G00655"] = {
    title = "Condição FUEL-655: correlação 68.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000656", "SKU-GEN-004586" },
    notes = "Ver procedimento PROC-L1-00656 se aplicável.",
    gen_id = 655,
}
_DR["G00656"] = {
    title = "Condição STEER-656: correlação 67.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000657", "SKU-GEN-004593" },
    notes = "Ver procedimento PROC-L1-00657 se aplicável.",
    gen_id = 656,
}
_DR["G00657"] = {
    title = "Condição HV-657: correlação 11.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000658", "SKU-GEN-004600" },
    notes = "Ver procedimento PROC-L1-00658 se aplicável.",
    gen_id = 657,
}
_DR["G00658"] = {
    title = "Condição BODY-658: correlação 74.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000659", "SKU-GEN-004607" },
    notes = "Ver procedimento PROC-L1-00659 se aplicável.",
    gen_id = 658,
}
_DR["G00659"] = {
    title = "Condição INFO-659: correlação 54.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000660", "SKU-GEN-004614" },
    notes = "Ver procedimento PROC-L1-00660 se aplicável.",
    gen_id = 659,
}
_DR["G00660"] = {
    title = "Condição ENGINE-660: correlação 91.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000661", "SKU-GEN-004621" },
    notes = "Ver procedimento PROC-L1-00661 se aplicável.",
    gen_id = 660,
}
_DR["G00661"] = {
    title = "Condição ABS-661: correlação 26.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000662", "SKU-GEN-004628" },
    notes = "Ver procedimento PROC-L1-00662 se aplicável.",
    gen_id = 661,
}
_DR["G00662"] = {
    title = "Condição SRS-662: correlação 16.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000663", "SKU-GEN-004635" },
    notes = "Ver procedimento PROC-L1-00663 se aplicável.",
    gen_id = 662,
}
_DR["G00663"] = {
    title = "Condição CLIMATE-663: correlação 2.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000664", "SKU-GEN-004642" },
    notes = "Ver procedimento PROC-L1-00664 se aplicável.",
    gen_id = 663,
}
_DR["G00664"] = {
    title = "Condição TRANS-664: correlação 11.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000665", "SKU-GEN-004649" },
    notes = "Ver procedimento PROC-L1-00665 se aplicável.",
    gen_id = 664,
}
_DR["G00665"] = {
    title = "Condição FUEL-665: correlação 17.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000666", "SKU-GEN-004656" },
    notes = "Ver procedimento PROC-L1-00666 se aplicável.",
    gen_id = 665,
}
_DR["G00666"] = {
    title = "Condição STEER-666: correlação 6.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000667", "SKU-GEN-004663" },
    notes = "Ver procedimento PROC-L1-00667 se aplicável.",
    gen_id = 666,
}
_DR["G00667"] = {
    title = "Condição HV-667: correlação 6.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000668", "SKU-GEN-004670" },
    notes = "Ver procedimento PROC-L1-00668 se aplicável.",
    gen_id = 667,
}
_DR["G00668"] = {
    title = "Condição BODY-668: correlação 52.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000669", "SKU-GEN-004677" },
    notes = "Ver procedimento PROC-L1-00669 se aplicável.",
    gen_id = 668,
}
_DR["G00669"] = {
    title = "Condição INFO-669: correlação 26.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000670", "SKU-GEN-004684" },
    notes = "Ver procedimento PROC-L1-00670 se aplicável.",
    gen_id = 669,
}
_DR["G00670"] = {
    title = "Condição ENGINE-670: correlação 41.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000671", "SKU-GEN-004691" },
    notes = "Ver procedimento PROC-L1-00671 se aplicável.",
    gen_id = 670,
}
_DR["G00671"] = {
    title = "Condição ABS-671: correlação 92.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000672", "SKU-GEN-004698" },
    notes = "Ver procedimento PROC-L1-00672 se aplicável.",
    gen_id = 671,
}
_DR["G00672"] = {
    title = "Condição SRS-672: correlação 96.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000673", "SKU-GEN-004705" },
    notes = "Ver procedimento PROC-L1-00673 se aplicável.",
    gen_id = 672,
}
_DR["G00673"] = {
    title = "Condição CLIMATE-673: correlação 55.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000674", "SKU-GEN-004712" },
    notes = "Ver procedimento PROC-L1-00674 se aplicável.",
    gen_id = 673,
}
_DR["G00674"] = {
    title = "Condição TRANS-674: correlação 62.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000675", "SKU-GEN-004719" },
    notes = "Ver procedimento PROC-L1-00675 se aplicável.",
    gen_id = 674,
}
_DR["G00675"] = {
    title = "Condição FUEL-675: correlação 43.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000676", "SKU-GEN-004726" },
    notes = "Ver procedimento PROC-L1-00676 se aplicável.",
    gen_id = 675,
}
_DR["G00676"] = {
    title = "Condição STEER-676: correlação 75.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000677", "SKU-GEN-004733" },
    notes = "Ver procedimento PROC-L1-00677 se aplicável.",
    gen_id = 676,
}
_DR["G00677"] = {
    title = "Condição HV-677: correlação 50.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000678", "SKU-GEN-004740" },
    notes = "Ver procedimento PROC-L1-00678 se aplicável.",
    gen_id = 677,
}
_DR["G00678"] = {
    title = "Condição BODY-678: correlação 38.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000679", "SKU-GEN-004747" },
    notes = "Ver procedimento PROC-L1-00679 se aplicável.",
    gen_id = 678,
}
_DR["G00679"] = {
    title = "Condição INFO-679: correlação 81.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000680", "SKU-GEN-004754" },
    notes = "Ver procedimento PROC-L1-00680 se aplicável.",
    gen_id = 679,
}
_DR["G00680"] = {
    title = "Condição ENGINE-680: correlação 70.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000681", "SKU-GEN-004761" },
    notes = "Ver procedimento PROC-L1-00681 se aplicável.",
    gen_id = 680,
}
_DR["G00681"] = {
    title = "Condição ABS-681: correlação 63.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000682", "SKU-GEN-004768" },
    notes = "Ver procedimento PROC-L1-00682 se aplicável.",
    gen_id = 681,
}
_DR["G00682"] = {
    title = "Condição SRS-682: correlação 61.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000683", "SKU-GEN-004775" },
    notes = "Ver procedimento PROC-L1-00683 se aplicável.",
    gen_id = 682,
}
_DR["G00683"] = {
    title = "Condição CLIMATE-683: correlação 79.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000684", "SKU-GEN-004782" },
    notes = "Ver procedimento PROC-L1-00684 se aplicável.",
    gen_id = 683,
}
_DR["G00684"] = {
    title = "Condição TRANS-684: correlação 63.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000685", "SKU-GEN-004789" },
    notes = "Ver procedimento PROC-L1-00685 se aplicável.",
    gen_id = 684,
}
_DR["G00685"] = {
    title = "Condição FUEL-685: correlação 24.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000686", "SKU-GEN-004796" },
    notes = "Ver procedimento PROC-L1-00686 se aplicável.",
    gen_id = 685,
}
_DR["G00686"] = {
    title = "Condição STEER-686: correlação 24.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000687", "SKU-GEN-004803" },
    notes = "Ver procedimento PROC-L1-00687 se aplicável.",
    gen_id = 686,
}
_DR["G00687"] = {
    title = "Condição HV-687: correlação 35.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000688", "SKU-GEN-004810" },
    notes = "Ver procedimento PROC-L1-00688 se aplicável.",
    gen_id = 687,
}
_DR["G00688"] = {
    title = "Condição BODY-688: correlação 41.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000689", "SKU-GEN-004817" },
    notes = "Ver procedimento PROC-L1-00689 se aplicável.",
    gen_id = 688,
}
_DR["G00689"] = {
    title = "Condição INFO-689: correlação 10.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000690", "SKU-GEN-004824" },
    notes = "Ver procedimento PROC-L1-00690 se aplicável.",
    gen_id = 689,
}
_DR["G00690"] = {
    title = "Condição ENGINE-690: correlação 84.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000691", "SKU-GEN-004831" },
    notes = "Ver procedimento PROC-L1-00691 se aplicável.",
    gen_id = 690,
}
_DR["G00691"] = {
    title = "Condição ABS-691: correlação 31.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000692", "SKU-GEN-004838" },
    notes = "Ver procedimento PROC-L1-00692 se aplicável.",
    gen_id = 691,
}
_DR["G00692"] = {
    title = "Condição SRS-692: correlação 38.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000693", "SKU-GEN-004845" },
    notes = "Ver procedimento PROC-L1-00693 se aplicável.",
    gen_id = 692,
}
_DR["G00693"] = {
    title = "Condição CLIMATE-693: correlação 11.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000694", "SKU-GEN-004852" },
    notes = "Ver procedimento PROC-L1-00694 se aplicável.",
    gen_id = 693,
}
_DR["G00694"] = {
    title = "Condição TRANS-694: correlação 25.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000695", "SKU-GEN-004859" },
    notes = "Ver procedimento PROC-L1-00695 se aplicável.",
    gen_id = 694,
}
_DR["G00695"] = {
    title = "Condição FUEL-695: correlação 56.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000696", "SKU-GEN-004866" },
    notes = "Ver procedimento PROC-L1-00696 se aplicável.",
    gen_id = 695,
}
_DR["G00696"] = {
    title = "Condição STEER-696: correlação 68.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000697", "SKU-GEN-004873" },
    notes = "Ver procedimento PROC-L1-00697 se aplicável.",
    gen_id = 696,
}
_DR["G00697"] = {
    title = "Condição HV-697: correlação 21.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000698", "SKU-GEN-004880" },
    notes = "Ver procedimento PROC-L1-00698 se aplicável.",
    gen_id = 697,
}
_DR["G00698"] = {
    title = "Condição BODY-698: correlação 62.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000699", "SKU-GEN-004887" },
    notes = "Ver procedimento PROC-L1-00699 se aplicável.",
    gen_id = 698,
}
_DR["G00699"] = {
    title = "Condição INFO-699: correlação 70.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000700", "SKU-GEN-004894" },
    notes = "Ver procedimento PROC-L1-00700 se aplicável.",
    gen_id = 699,
}
_DR["G00700"] = {
    title = "Condição ENGINE-700: correlação 94.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000701", "SKU-GEN-004901" },
    notes = "Ver procedimento PROC-L1-00701 se aplicável.",
    gen_id = 700,
}
_DR["G00701"] = {
    title = "Condição ABS-701: correlação 94.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000702", "SKU-GEN-004908" },
    notes = "Ver procedimento PROC-L1-00702 se aplicável.",
    gen_id = 701,
}
_DR["G00702"] = {
    title = "Condição SRS-702: correlação 66.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000703", "SKU-GEN-004915" },
    notes = "Ver procedimento PROC-L1-00703 se aplicável.",
    gen_id = 702,
}
_DR["G00703"] = {
    title = "Condição CLIMATE-703: correlação 21.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000704", "SKU-GEN-004922" },
    notes = "Ver procedimento PROC-L1-00704 se aplicável.",
    gen_id = 703,
}
_DR["G00704"] = {
    title = "Condição TRANS-704: correlação 25.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000705", "SKU-GEN-004929" },
    notes = "Ver procedimento PROC-L1-00705 se aplicável.",
    gen_id = 704,
}
_DR["G00705"] = {
    title = "Condição FUEL-705: correlação 66.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000706", "SKU-GEN-004936" },
    notes = "Ver procedimento PROC-L1-00706 se aplicável.",
    gen_id = 705,
}
_DR["G00706"] = {
    title = "Condição STEER-706: correlação 98.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000707", "SKU-GEN-004943" },
    notes = "Ver procedimento PROC-L1-00707 se aplicável.",
    gen_id = 706,
}
_DR["G00707"] = {
    title = "Condição HV-707: correlação 79.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000708", "SKU-GEN-004950" },
    notes = "Ver procedimento PROC-L1-00708 se aplicável.",
    gen_id = 707,
}
_DR["G00708"] = {
    title = "Condição BODY-708: correlação 35.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000709", "SKU-GEN-004957" },
    notes = "Ver procedimento PROC-L1-00709 se aplicável.",
    gen_id = 708,
}
_DR["G00709"] = {
    title = "Condição INFO-709: correlação 15.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000710", "SKU-GEN-004964" },
    notes = "Ver procedimento PROC-L1-00710 se aplicável.",
    gen_id = 709,
}
_DR["G00710"] = {
    title = "Condição ENGINE-710: correlação 74.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000711", "SKU-GEN-004971" },
    notes = "Ver procedimento PROC-L1-00711 se aplicável.",
    gen_id = 710,
}
_DR["G00711"] = {
    title = "Condição ABS-711: correlação 9.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000712", "SKU-GEN-004978" },
    notes = "Ver procedimento PROC-L1-00712 se aplicável.",
    gen_id = 711,
}
_DR["G00712"] = {
    title = "Condição SRS-712: correlação 54.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000713", "SKU-GEN-004985" },
    notes = "Ver procedimento PROC-L1-00713 se aplicável.",
    gen_id = 712,
}
_DR["G00713"] = {
    title = "Condição CLIMATE-713: correlação 6.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000714", "SKU-GEN-004992" },
    notes = "Ver procedimento PROC-L1-00714 se aplicável.",
    gen_id = 713,
}
_DR["G00714"] = {
    title = "Condição TRANS-714: correlação 13.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000715", "SKU-GEN-004999" },
    notes = "Ver procedimento PROC-L1-00715 se aplicável.",
    gen_id = 714,
}
_DR["G00715"] = {
    title = "Condição FUEL-715: correlação 15.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000716", "SKU-GEN-005006" },
    notes = "Ver procedimento PROC-L1-00716 se aplicável.",
    gen_id = 715,
}
_DR["G00716"] = {
    title = "Condição STEER-716: correlação 82.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000717", "SKU-GEN-005013" },
    notes = "Ver procedimento PROC-L1-00717 se aplicável.",
    gen_id = 716,
}
_DR["G00717"] = {
    title = "Condição HV-717: correlação 69.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000718", "SKU-GEN-005020" },
    notes = "Ver procedimento PROC-L1-00718 se aplicável.",
    gen_id = 717,
}
_DR["G00718"] = {
    title = "Condição BODY-718: correlação 23.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000719", "SKU-GEN-005027" },
    notes = "Ver procedimento PROC-L1-00719 se aplicável.",
    gen_id = 718,
}
_DR["G00719"] = {
    title = "Condição INFO-719: correlação 43.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000720", "SKU-GEN-005034" },
    notes = "Ver procedimento PROC-L1-00720 se aplicável.",
    gen_id = 719,
}
_DR["G00720"] = {
    title = "Condição ENGINE-720: correlação 95.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000721", "SKU-GEN-005041" },
    notes = "Ver procedimento PROC-L1-00721 se aplicável.",
    gen_id = 720,
}
_DR["G00721"] = {
    title = "Condição ABS-721: correlação 83.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000722", "SKU-GEN-005048" },
    notes = "Ver procedimento PROC-L1-00722 se aplicável.",
    gen_id = 721,
}
_DR["G00722"] = {
    title = "Condição SRS-722: correlação 36.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000723", "SKU-GEN-005055" },
    notes = "Ver procedimento PROC-L1-00723 se aplicável.",
    gen_id = 722,
}
_DR["G00723"] = {
    title = "Condição CLIMATE-723: correlação 80.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000724", "SKU-GEN-005062" },
    notes = "Ver procedimento PROC-L1-00724 se aplicável.",
    gen_id = 723,
}
_DR["G00724"] = {
    title = "Condição TRANS-724: correlação 78.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000725", "SKU-GEN-005069" },
    notes = "Ver procedimento PROC-L1-00725 se aplicável.",
    gen_id = 724,
}
_DR["G00725"] = {
    title = "Condição FUEL-725: correlação 61.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000726", "SKU-GEN-005076" },
    notes = "Ver procedimento PROC-L1-00726 se aplicável.",
    gen_id = 725,
}
_DR["G00726"] = {
    title = "Condição STEER-726: correlação 6.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000727", "SKU-GEN-005083" },
    notes = "Ver procedimento PROC-L1-00727 se aplicável.",
    gen_id = 726,
}
_DR["G00727"] = {
    title = "Condição HV-727: correlação 40.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000728", "SKU-GEN-005090" },
    notes = "Ver procedimento PROC-L1-00728 se aplicável.",
    gen_id = 727,
}
_DR["G00728"] = {
    title = "Condição BODY-728: correlação 95.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000729", "SKU-GEN-005097" },
    notes = "Ver procedimento PROC-L1-00729 se aplicável.",
    gen_id = 728,
}
_DR["G00729"] = {
    title = "Condição INFO-729: correlação 84.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000730", "SKU-GEN-005104" },
    notes = "Ver procedimento PROC-L1-00730 se aplicável.",
    gen_id = 729,
}
_DR["G00730"] = {
    title = "Condição ENGINE-730: correlação 10.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000731", "SKU-GEN-005111" },
    notes = "Ver procedimento PROC-L1-00731 se aplicável.",
    gen_id = 730,
}
_DR["G00731"] = {
    title = "Condição ABS-731: correlação 91.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000732", "SKU-GEN-005118" },
    notes = "Ver procedimento PROC-L1-00732 se aplicável.",
    gen_id = 731,
}
_DR["G00732"] = {
    title = "Condição SRS-732: correlação 61.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000733", "SKU-GEN-005125" },
    notes = "Ver procedimento PROC-L1-00733 se aplicável.",
    gen_id = 732,
}
_DR["G00733"] = {
    title = "Condição CLIMATE-733: correlação 9.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000734", "SKU-GEN-005132" },
    notes = "Ver procedimento PROC-L1-00734 se aplicável.",
    gen_id = 733,
}
_DR["G00734"] = {
    title = "Condição TRANS-734: correlação 37.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000735", "SKU-GEN-005139" },
    notes = "Ver procedimento PROC-L1-00735 se aplicável.",
    gen_id = 734,
}
_DR["G00735"] = {
    title = "Condição FUEL-735: correlação 63.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000736", "SKU-GEN-005146" },
    notes = "Ver procedimento PROC-L1-00736 se aplicável.",
    gen_id = 735,
}
_DR["G00736"] = {
    title = "Condição STEER-736: correlação 5.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000737", "SKU-GEN-005153" },
    notes = "Ver procedimento PROC-L1-00737 se aplicável.",
    gen_id = 736,
}
_DR["G00737"] = {
    title = "Condição HV-737: correlação 47.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000738", "SKU-GEN-005160" },
    notes = "Ver procedimento PROC-L1-00738 se aplicável.",
    gen_id = 737,
}
_DR["G00738"] = {
    title = "Condição BODY-738: correlação 40.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000739", "SKU-GEN-005167" },
    notes = "Ver procedimento PROC-L1-00739 se aplicável.",
    gen_id = 738,
}
_DR["G00739"] = {
    title = "Condição INFO-739: correlação 66.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000740", "SKU-GEN-005174" },
    notes = "Ver procedimento PROC-L1-00740 se aplicável.",
    gen_id = 739,
}
_DR["G00740"] = {
    title = "Condição ENGINE-740: correlação 21.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000741", "SKU-GEN-005181" },
    notes = "Ver procedimento PROC-L1-00741 se aplicável.",
    gen_id = 740,
}
_DR["G00741"] = {
    title = "Condição ABS-741: correlação 8.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000742", "SKU-GEN-005188" },
    notes = "Ver procedimento PROC-L1-00742 se aplicável.",
    gen_id = 741,
}
_DR["G00742"] = {
    title = "Condição SRS-742: correlação 91.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000743", "SKU-GEN-005195" },
    notes = "Ver procedimento PROC-L1-00743 se aplicável.",
    gen_id = 742,
}
_DR["G00743"] = {
    title = "Condição CLIMATE-743: correlação 79.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000744", "SKU-GEN-005202" },
    notes = "Ver procedimento PROC-L1-00744 se aplicável.",
    gen_id = 743,
}
_DR["G00744"] = {
    title = "Condição TRANS-744: correlação 52.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000745", "SKU-GEN-005209" },
    notes = "Ver procedimento PROC-L1-00745 se aplicável.",
    gen_id = 744,
}
_DR["G00745"] = {
    title = "Condição FUEL-745: correlação 29.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000746", "SKU-GEN-005216" },
    notes = "Ver procedimento PROC-L1-00746 se aplicável.",
    gen_id = 745,
}
_DR["G00746"] = {
    title = "Condição STEER-746: correlação 69.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000747", "SKU-GEN-005223" },
    notes = "Ver procedimento PROC-L1-00747 se aplicável.",
    gen_id = 746,
}
_DR["G00747"] = {
    title = "Condição HV-747: correlação 10.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000748", "SKU-GEN-005230" },
    notes = "Ver procedimento PROC-L1-00748 se aplicável.",
    gen_id = 747,
}
_DR["G00748"] = {
    title = "Condição BODY-748: correlação 46.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000749", "SKU-GEN-005237" },
    notes = "Ver procedimento PROC-L1-00749 se aplicável.",
    gen_id = 748,
}
_DR["G00749"] = {
    title = "Condição INFO-749: correlação 54.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000750", "SKU-GEN-005244" },
    notes = "Ver procedimento PROC-L1-00750 se aplicável.",
    gen_id = 749,
}
_DR["G00750"] = {
    title = "Condição ENGINE-750: correlação 66.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000751", "SKU-GEN-005251" },
    notes = "Ver procedimento PROC-L1-00751 se aplicável.",
    gen_id = 750,
}
_DR["G00751"] = {
    title = "Condição ABS-751: correlação 27.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000752", "SKU-GEN-005258" },
    notes = "Ver procedimento PROC-L1-00752 se aplicável.",
    gen_id = 751,
}
_DR["G00752"] = {
    title = "Condição SRS-752: correlação 95.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000753", "SKU-GEN-005265" },
    notes = "Ver procedimento PROC-L1-00753 se aplicável.",
    gen_id = 752,
}
_DR["G00753"] = {
    title = "Condição CLIMATE-753: correlação 29.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000754", "SKU-GEN-005272" },
    notes = "Ver procedimento PROC-L1-00754 se aplicável.",
    gen_id = 753,
}
_DR["G00754"] = {
    title = "Condição TRANS-754: correlação 86.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000755", "SKU-GEN-005279" },
    notes = "Ver procedimento PROC-L1-00755 se aplicável.",
    gen_id = 754,
}
_DR["G00755"] = {
    title = "Condição FUEL-755: correlação 10.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000756", "SKU-GEN-005286" },
    notes = "Ver procedimento PROC-L1-00756 se aplicável.",
    gen_id = 755,
}
_DR["G00756"] = {
    title = "Condição STEER-756: correlação 36.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000757", "SKU-GEN-005293" },
    notes = "Ver procedimento PROC-L1-00757 se aplicável.",
    gen_id = 756,
}
_DR["G00757"] = {
    title = "Condição HV-757: correlação 19.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000758", "SKU-GEN-005300" },
    notes = "Ver procedimento PROC-L1-00758 se aplicável.",
    gen_id = 757,
}
_DR["G00758"] = {
    title = "Condição BODY-758: correlação 84.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000759", "SKU-GEN-005307" },
    notes = "Ver procedimento PROC-L1-00759 se aplicável.",
    gen_id = 758,
}
_DR["G00759"] = {
    title = "Condição INFO-759: correlação 87.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000760", "SKU-GEN-005314" },
    notes = "Ver procedimento PROC-L1-00760 se aplicável.",
    gen_id = 759,
}
_DR["G00760"] = {
    title = "Condição ENGINE-760: correlação 64.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000761", "SKU-GEN-005321" },
    notes = "Ver procedimento PROC-L1-00761 se aplicável.",
    gen_id = 760,
}
_DR["G00761"] = {
    title = "Condição ABS-761: correlação 72.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000762", "SKU-GEN-005328" },
    notes = "Ver procedimento PROC-L1-00762 se aplicável.",
    gen_id = 761,
}
_DR["G00762"] = {
    title = "Condição SRS-762: correlação 63.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000763", "SKU-GEN-005335" },
    notes = "Ver procedimento PROC-L1-00763 se aplicável.",
    gen_id = 762,
}
_DR["G00763"] = {
    title = "Condição CLIMATE-763: correlação 34.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000764", "SKU-GEN-005342" },
    notes = "Ver procedimento PROC-L1-00764 se aplicável.",
    gen_id = 763,
}
_DR["G00764"] = {
    title = "Condição TRANS-764: correlação 11.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000765", "SKU-GEN-005349" },
    notes = "Ver procedimento PROC-L1-00765 se aplicável.",
    gen_id = 764,
}
_DR["G00765"] = {
    title = "Condição FUEL-765: correlação 84.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000766", "SKU-GEN-005356" },
    notes = "Ver procedimento PROC-L1-00766 se aplicável.",
    gen_id = 765,
}
_DR["G00766"] = {
    title = "Condição STEER-766: correlação 19.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000767", "SKU-GEN-005363" },
    notes = "Ver procedimento PROC-L1-00767 se aplicável.",
    gen_id = 766,
}
_DR["G00767"] = {
    title = "Condição HV-767: correlação 64.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000768", "SKU-GEN-005370" },
    notes = "Ver procedimento PROC-L1-00768 se aplicável.",
    gen_id = 767,
}
_DR["G00768"] = {
    title = "Condição BODY-768: correlação 74.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000769", "SKU-GEN-005377" },
    notes = "Ver procedimento PROC-L1-00769 se aplicável.",
    gen_id = 768,
}
_DR["G00769"] = {
    title = "Condição INFO-769: correlação 40.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000770", "SKU-GEN-005384" },
    notes = "Ver procedimento PROC-L1-00770 se aplicável.",
    gen_id = 769,
}
_DR["G00770"] = {
    title = "Condição ENGINE-770: correlação 23.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000771", "SKU-GEN-005391" },
    notes = "Ver procedimento PROC-L1-00771 se aplicável.",
    gen_id = 770,
}
_DR["G00771"] = {
    title = "Condição ABS-771: correlação 38.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000772", "SKU-GEN-005398" },
    notes = "Ver procedimento PROC-L1-00772 se aplicável.",
    gen_id = 771,
}
_DR["G00772"] = {
    title = "Condição SRS-772: correlação 94.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000773", "SKU-GEN-005405" },
    notes = "Ver procedimento PROC-L1-00773 se aplicável.",
    gen_id = 772,
}
_DR["G00773"] = {
    title = "Condição CLIMATE-773: correlação 29.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000774", "SKU-GEN-005412" },
    notes = "Ver procedimento PROC-L1-00774 se aplicável.",
    gen_id = 773,
}
_DR["G00774"] = {
    title = "Condição TRANS-774: correlação 56.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000775", "SKU-GEN-005419" },
    notes = "Ver procedimento PROC-L1-00775 se aplicável.",
    gen_id = 774,
}
_DR["G00775"] = {
    title = "Condição FUEL-775: correlação 65.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000776", "SKU-GEN-005426" },
    notes = "Ver procedimento PROC-L1-00776 se aplicável.",
    gen_id = 775,
}
_DR["G00776"] = {
    title = "Condição STEER-776: correlação 30.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000777", "SKU-GEN-005433" },
    notes = "Ver procedimento PROC-L1-00777 se aplicável.",
    gen_id = 776,
}
_DR["G00777"] = {
    title = "Condição HV-777: correlação 67.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000778", "SKU-GEN-005440" },
    notes = "Ver procedimento PROC-L1-00778 se aplicável.",
    gen_id = 777,
}
_DR["G00778"] = {
    title = "Condição BODY-778: correlação 46.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000779", "SKU-GEN-005447" },
    notes = "Ver procedimento PROC-L1-00779 se aplicável.",
    gen_id = 778,
}
_DR["G00779"] = {
    title = "Condição INFO-779: correlação 78.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000780", "SKU-GEN-005454" },
    notes = "Ver procedimento PROC-L1-00780 se aplicável.",
    gen_id = 779,
}
_DR["G00780"] = {
    title = "Condição ENGINE-780: correlação 74.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000781", "SKU-GEN-005461" },
    notes = "Ver procedimento PROC-L1-00781 se aplicável.",
    gen_id = 780,
}
_DR["G00781"] = {
    title = "Condição ABS-781: correlação 75.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000782", "SKU-GEN-005468" },
    notes = "Ver procedimento PROC-L1-00782 se aplicável.",
    gen_id = 781,
}
_DR["G00782"] = {
    title = "Condição SRS-782: correlação 84.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000783", "SKU-GEN-005475" },
    notes = "Ver procedimento PROC-L1-00783 se aplicável.",
    gen_id = 782,
}
_DR["G00783"] = {
    title = "Condição CLIMATE-783: correlação 97.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000784", "SKU-GEN-005482" },
    notes = "Ver procedimento PROC-L1-00784 se aplicável.",
    gen_id = 783,
}
_DR["G00784"] = {
    title = "Condição TRANS-784: correlação 1.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000785", "SKU-GEN-005489" },
    notes = "Ver procedimento PROC-L1-00785 se aplicável.",
    gen_id = 784,
}
_DR["G00785"] = {
    title = "Condição FUEL-785: correlação 87.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000786", "SKU-GEN-005496" },
    notes = "Ver procedimento PROC-L1-00786 se aplicável.",
    gen_id = 785,
}
_DR["G00786"] = {
    title = "Condição STEER-786: correlação 97.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000787", "SKU-GEN-005503" },
    notes = "Ver procedimento PROC-L1-00787 se aplicável.",
    gen_id = 786,
}
_DR["G00787"] = {
    title = "Condição HV-787: correlação 30.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000788", "SKU-GEN-005510" },
    notes = "Ver procedimento PROC-L1-00788 se aplicável.",
    gen_id = 787,
}
_DR["G00788"] = {
    title = "Condição BODY-788: correlação 53.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000789", "SKU-GEN-005517" },
    notes = "Ver procedimento PROC-L1-00789 se aplicável.",
    gen_id = 788,
}
_DR["G00789"] = {
    title = "Condição INFO-789: correlação 92.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000790", "SKU-GEN-005524" },
    notes = "Ver procedimento PROC-L1-00790 se aplicável.",
    gen_id = 789,
}
_DR["G00790"] = {
    title = "Condição ENGINE-790: correlação 20.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000791", "SKU-GEN-005531" },
    notes = "Ver procedimento PROC-L1-00791 se aplicável.",
    gen_id = 790,
}
_DR["G00791"] = {
    title = "Condição ABS-791: correlação 60.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000792", "SKU-GEN-005538" },
    notes = "Ver procedimento PROC-L1-00792 se aplicável.",
    gen_id = 791,
}
_DR["G00792"] = {
    title = "Condição SRS-792: correlação 89.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000793", "SKU-GEN-005545" },
    notes = "Ver procedimento PROC-L1-00793 se aplicável.",
    gen_id = 792,
}
_DR["G00793"] = {
    title = "Condição CLIMATE-793: correlação 39.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000794", "SKU-GEN-005552" },
    notes = "Ver procedimento PROC-L1-00794 se aplicável.",
    gen_id = 793,
}
_DR["G00794"] = {
    title = "Condição TRANS-794: correlação 91.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000795", "SKU-GEN-005559" },
    notes = "Ver procedimento PROC-L1-00795 se aplicável.",
    gen_id = 794,
}
_DR["G00795"] = {
    title = "Condição FUEL-795: correlação 16.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000796", "SKU-GEN-005566" },
    notes = "Ver procedimento PROC-L1-00796 se aplicável.",
    gen_id = 795,
}
_DR["G00796"] = {
    title = "Condição STEER-796: correlação 74.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000797", "SKU-GEN-005573" },
    notes = "Ver procedimento PROC-L1-00797 se aplicável.",
    gen_id = 796,
}
_DR["G00797"] = {
    title = "Condição HV-797: correlação 51.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000798", "SKU-GEN-005580" },
    notes = "Ver procedimento PROC-L1-00798 se aplicável.",
    gen_id = 797,
}
_DR["G00798"] = {
    title = "Condição BODY-798: correlação 60.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000799", "SKU-GEN-005587" },
    notes = "Ver procedimento PROC-L1-00799 se aplicável.",
    gen_id = 798,
}
_DR["G00799"] = {
    title = "Condição INFO-799: correlação 48.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000800", "SKU-GEN-005594" },
    notes = "Ver procedimento PROC-L1-00800 se aplicável.",
    gen_id = 799,
}
_DR["G00800"] = {
    title = "Condição ENGINE-800: correlação 67.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000801", "SKU-GEN-005601" },
    notes = "Ver procedimento PROC-L1-00801 se aplicável.",
    gen_id = 800,
}
_DR["G00801"] = {
    title = "Condição ABS-801: correlação 28.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000802", "SKU-GEN-005608" },
    notes = "Ver procedimento PROC-L1-00802 se aplicável.",
    gen_id = 801,
}
_DR["G00802"] = {
    title = "Condição SRS-802: correlação 88.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000803", "SKU-GEN-005615" },
    notes = "Ver procedimento PROC-L1-00803 se aplicável.",
    gen_id = 802,
}
_DR["G00803"] = {
    title = "Condição CLIMATE-803: correlação 31.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000804", "SKU-GEN-005622" },
    notes = "Ver procedimento PROC-L1-00804 se aplicável.",
    gen_id = 803,
}
_DR["G00804"] = {
    title = "Condição TRANS-804: correlação 31.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000805", "SKU-GEN-005629" },
    notes = "Ver procedimento PROC-L1-00805 se aplicável.",
    gen_id = 804,
}
_DR["G00805"] = {
    title = "Condição FUEL-805: correlação 42.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000806", "SKU-GEN-005636" },
    notes = "Ver procedimento PROC-L1-00806 se aplicável.",
    gen_id = 805,
}
_DR["G00806"] = {
    title = "Condição STEER-806: correlação 69.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000807", "SKU-GEN-005643" },
    notes = "Ver procedimento PROC-L1-00807 se aplicável.",
    gen_id = 806,
}
_DR["G00807"] = {
    title = "Condição HV-807: correlação 68.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000808", "SKU-GEN-005650" },
    notes = "Ver procedimento PROC-L1-00808 se aplicável.",
    gen_id = 807,
}
_DR["G00808"] = {
    title = "Condição BODY-808: correlação 3.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000809", "SKU-GEN-005657" },
    notes = "Ver procedimento PROC-L1-00809 se aplicável.",
    gen_id = 808,
}
_DR["G00809"] = {
    title = "Condição INFO-809: correlação 44.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000810", "SKU-GEN-005664" },
    notes = "Ver procedimento PROC-L1-00810 se aplicável.",
    gen_id = 809,
}
_DR["G00810"] = {
    title = "Condição ENGINE-810: correlação 18.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000811", "SKU-GEN-005671" },
    notes = "Ver procedimento PROC-L1-00811 se aplicável.",
    gen_id = 810,
}
_DR["G00811"] = {
    title = "Condição ABS-811: correlação 87.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000812", "SKU-GEN-005678" },
    notes = "Ver procedimento PROC-L1-00812 se aplicável.",
    gen_id = 811,
}
_DR["G00812"] = {
    title = "Condição SRS-812: correlação 57.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000813", "SKU-GEN-005685" },
    notes = "Ver procedimento PROC-L1-00813 se aplicável.",
    gen_id = 812,
}
_DR["G00813"] = {
    title = "Condição CLIMATE-813: correlação 44.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000814", "SKU-GEN-005692" },
    notes = "Ver procedimento PROC-L1-00814 se aplicável.",
    gen_id = 813,
}
_DR["G00814"] = {
    title = "Condição TRANS-814: correlação 91.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000815", "SKU-GEN-005699" },
    notes = "Ver procedimento PROC-L1-00815 se aplicável.",
    gen_id = 814,
}
_DR["G00815"] = {
    title = "Condição FUEL-815: correlação 43.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000816", "SKU-GEN-005706" },
    notes = "Ver procedimento PROC-L1-00816 se aplicável.",
    gen_id = 815,
}
_DR["G00816"] = {
    title = "Condição STEER-816: correlação 71.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000817", "SKU-GEN-005713" },
    notes = "Ver procedimento PROC-L1-00817 se aplicável.",
    gen_id = 816,
}
_DR["G00817"] = {
    title = "Condição HV-817: correlação 32.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000818", "SKU-GEN-005720" },
    notes = "Ver procedimento PROC-L1-00818 se aplicável.",
    gen_id = 817,
}
_DR["G00818"] = {
    title = "Condição BODY-818: correlação 39.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000819", "SKU-GEN-005727" },
    notes = "Ver procedimento PROC-L1-00819 se aplicável.",
    gen_id = 818,
}
_DR["G00819"] = {
    title = "Condição INFO-819: correlação 52.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000820", "SKU-GEN-005734" },
    notes = "Ver procedimento PROC-L1-00820 se aplicável.",
    gen_id = 819,
}
_DR["G00820"] = {
    title = "Condição ENGINE-820: correlação 94.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000821", "SKU-GEN-005741" },
    notes = "Ver procedimento PROC-L1-00821 se aplicável.",
    gen_id = 820,
}
_DR["G00821"] = {
    title = "Condição ABS-821: correlação 50.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000822", "SKU-GEN-005748" },
    notes = "Ver procedimento PROC-L1-00822 se aplicável.",
    gen_id = 821,
}
_DR["G00822"] = {
    title = "Condição SRS-822: correlação 4.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000823", "SKU-GEN-005755" },
    notes = "Ver procedimento PROC-L1-00823 se aplicável.",
    gen_id = 822,
}
_DR["G00823"] = {
    title = "Condição CLIMATE-823: correlação 45.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000824", "SKU-GEN-005762" },
    notes = "Ver procedimento PROC-L1-00824 se aplicável.",
    gen_id = 823,
}
_DR["G00824"] = {
    title = "Condição TRANS-824: correlação 34.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000825", "SKU-GEN-005769" },
    notes = "Ver procedimento PROC-L1-00825 se aplicável.",
    gen_id = 824,
}
_DR["G00825"] = {
    title = "Condição FUEL-825: correlação 27.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000826", "SKU-GEN-005776" },
    notes = "Ver procedimento PROC-L1-00826 se aplicável.",
    gen_id = 825,
}
_DR["G00826"] = {
    title = "Condição STEER-826: correlação 24.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000827", "SKU-GEN-005783" },
    notes = "Ver procedimento PROC-L1-00827 se aplicável.",
    gen_id = 826,
}
_DR["G00827"] = {
    title = "Condição HV-827: correlação 4.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000828", "SKU-GEN-005790" },
    notes = "Ver procedimento PROC-L1-00828 se aplicável.",
    gen_id = 827,
}
_DR["G00828"] = {
    title = "Condição BODY-828: correlação 51.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000829", "SKU-GEN-005797" },
    notes = "Ver procedimento PROC-L1-00829 se aplicável.",
    gen_id = 828,
}
_DR["G00829"] = {
    title = "Condição INFO-829: correlação 51.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000830", "SKU-GEN-005804" },
    notes = "Ver procedimento PROC-L1-00830 se aplicável.",
    gen_id = 829,
}
_DR["G00830"] = {
    title = "Condição ENGINE-830: correlação 93.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000831", "SKU-GEN-005811" },
    notes = "Ver procedimento PROC-L1-00831 se aplicável.",
    gen_id = 830,
}
_DR["G00831"] = {
    title = "Condição ABS-831: correlação 17.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000832", "SKU-GEN-005818" },
    notes = "Ver procedimento PROC-L1-00832 se aplicável.",
    gen_id = 831,
}
_DR["G00832"] = {
    title = "Condição SRS-832: correlação 11.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000833", "SKU-GEN-005825" },
    notes = "Ver procedimento PROC-L1-00833 se aplicável.",
    gen_id = 832,
}
_DR["G00833"] = {
    title = "Condição CLIMATE-833: correlação 33.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000834", "SKU-GEN-005832" },
    notes = "Ver procedimento PROC-L1-00834 se aplicável.",
    gen_id = 833,
}
_DR["G00834"] = {
    title = "Condição TRANS-834: correlação 85.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000835", "SKU-GEN-005839" },
    notes = "Ver procedimento PROC-L1-00835 se aplicável.",
    gen_id = 834,
}
_DR["G00835"] = {
    title = "Condição FUEL-835: correlação 82.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000836", "SKU-GEN-005846" },
    notes = "Ver procedimento PROC-L1-00836 se aplicável.",
    gen_id = 835,
}
_DR["G00836"] = {
    title = "Condição STEER-836: correlação 32.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000837", "SKU-GEN-005853" },
    notes = "Ver procedimento PROC-L1-00837 se aplicável.",
    gen_id = 836,
}
_DR["G00837"] = {
    title = "Condição HV-837: correlação 76.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000838", "SKU-GEN-005860" },
    notes = "Ver procedimento PROC-L1-00838 se aplicável.",
    gen_id = 837,
}
_DR["G00838"] = {
    title = "Condição BODY-838: correlação 65.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000839", "SKU-GEN-005867" },
    notes = "Ver procedimento PROC-L1-00839 se aplicável.",
    gen_id = 838,
}
_DR["G00839"] = {
    title = "Condição INFO-839: correlação 12.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000840", "SKU-GEN-005874" },
    notes = "Ver procedimento PROC-L1-00840 se aplicável.",
    gen_id = 839,
}
_DR["G00840"] = {
    title = "Condição ENGINE-840: correlação 30.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000841", "SKU-GEN-005881" },
    notes = "Ver procedimento PROC-L1-00841 se aplicável.",
    gen_id = 840,
}
_DR["G00841"] = {
    title = "Condição ABS-841: correlação 73.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000842", "SKU-GEN-005888" },
    notes = "Ver procedimento PROC-L1-00842 se aplicável.",
    gen_id = 841,
}
_DR["G00842"] = {
    title = "Condição SRS-842: correlação 18.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000843", "SKU-GEN-005895" },
    notes = "Ver procedimento PROC-L1-00843 se aplicável.",
    gen_id = 842,
}
_DR["G00843"] = {
    title = "Condição CLIMATE-843: correlação 55.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000844", "SKU-GEN-005902" },
    notes = "Ver procedimento PROC-L1-00844 se aplicável.",
    gen_id = 843,
}
_DR["G00844"] = {
    title = "Condição TRANS-844: correlação 54.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000845", "SKU-GEN-005909" },
    notes = "Ver procedimento PROC-L1-00845 se aplicável.",
    gen_id = 844,
}
_DR["G00845"] = {
    title = "Condição FUEL-845: correlação 86.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000846", "SKU-GEN-005916" },
    notes = "Ver procedimento PROC-L1-00846 se aplicável.",
    gen_id = 845,
}
_DR["G00846"] = {
    title = "Condição STEER-846: correlação 87.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000847", "SKU-GEN-005923" },
    notes = "Ver procedimento PROC-L1-00847 se aplicável.",
    gen_id = 846,
}
_DR["G00847"] = {
    title = "Condição HV-847: correlação 27.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000848", "SKU-GEN-005930" },
    notes = "Ver procedimento PROC-L1-00848 se aplicável.",
    gen_id = 847,
}
_DR["G00848"] = {
    title = "Condição BODY-848: correlação 56.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000849", "SKU-GEN-005937" },
    notes = "Ver procedimento PROC-L1-00849 se aplicável.",
    gen_id = 848,
}
_DR["G00849"] = {
    title = "Condição INFO-849: correlação 83.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000850", "SKU-GEN-005944" },
    notes = "Ver procedimento PROC-L1-00850 se aplicável.",
    gen_id = 849,
}
_DR["G00850"] = {
    title = "Condição ENGINE-850: correlação 90.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000851", "SKU-GEN-005951" },
    notes = "Ver procedimento PROC-L1-00851 se aplicável.",
    gen_id = 850,
}
_DR["G00851"] = {
    title = "Condição ABS-851: correlação 88.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000852", "SKU-GEN-005958" },
    notes = "Ver procedimento PROC-L1-00852 se aplicável.",
    gen_id = 851,
}
_DR["G00852"] = {
    title = "Condição SRS-852: correlação 43.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000853", "SKU-GEN-005965" },
    notes = "Ver procedimento PROC-L1-00853 se aplicável.",
    gen_id = 852,
}
_DR["G00853"] = {
    title = "Condição CLIMATE-853: correlação 29.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000854", "SKU-GEN-005972" },
    notes = "Ver procedimento PROC-L1-00854 se aplicável.",
    gen_id = 853,
}
_DR["G00854"] = {
    title = "Condição TRANS-854: correlação 62.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000855", "SKU-GEN-005979" },
    notes = "Ver procedimento PROC-L1-00855 se aplicável.",
    gen_id = 854,
}
_DR["G00855"] = {
    title = "Condição FUEL-855: correlação 58.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000856", "SKU-GEN-005986" },
    notes = "Ver procedimento PROC-L1-00856 se aplicável.",
    gen_id = 855,
}
_DR["G00856"] = {
    title = "Condição STEER-856: correlação 4.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000857", "SKU-GEN-005993" },
    notes = "Ver procedimento PROC-L1-00857 se aplicável.",
    gen_id = 856,
}
_DR["G00857"] = {
    title = "Condição HV-857: correlação 68.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000858", "SKU-GEN-006000" },
    notes = "Ver procedimento PROC-L1-00858 se aplicável.",
    gen_id = 857,
}
_DR["G00858"] = {
    title = "Condição BODY-858: correlação 49.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000859", "SKU-GEN-006007" },
    notes = "Ver procedimento PROC-L1-00859 se aplicável.",
    gen_id = 858,
}
_DR["G00859"] = {
    title = "Condição INFO-859: correlação 17.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000860", "SKU-GEN-006014" },
    notes = "Ver procedimento PROC-L1-00860 se aplicável.",
    gen_id = 859,
}
_DR["G00860"] = {
    title = "Condição ENGINE-860: correlação 10.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000861", "SKU-GEN-006021" },
    notes = "Ver procedimento PROC-L1-00861 se aplicável.",
    gen_id = 860,
}
_DR["G00861"] = {
    title = "Condição ABS-861: correlação 42.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000862", "SKU-GEN-006028" },
    notes = "Ver procedimento PROC-L1-00862 se aplicável.",
    gen_id = 861,
}
_DR["G00862"] = {
    title = "Condição SRS-862: correlação 31.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000863", "SKU-GEN-006035" },
    notes = "Ver procedimento PROC-L1-00863 se aplicável.",
    gen_id = 862,
}
_DR["G00863"] = {
    title = "Condição CLIMATE-863: correlação 48.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000864", "SKU-GEN-006042" },
    notes = "Ver procedimento PROC-L1-00864 se aplicável.",
    gen_id = 863,
}
_DR["G00864"] = {
    title = "Condição TRANS-864: correlação 32.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000865", "SKU-GEN-006049" },
    notes = "Ver procedimento PROC-L1-00865 se aplicável.",
    gen_id = 864,
}
_DR["G00865"] = {
    title = "Condição FUEL-865: correlação 14.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000866", "SKU-GEN-006056" },
    notes = "Ver procedimento PROC-L1-00866 se aplicável.",
    gen_id = 865,
}
_DR["G00866"] = {
    title = "Condição STEER-866: correlação 71.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000867", "SKU-GEN-006063" },
    notes = "Ver procedimento PROC-L1-00867 se aplicável.",
    gen_id = 866,
}
_DR["G00867"] = {
    title = "Condição HV-867: correlação 29.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000868", "SKU-GEN-006070" },
    notes = "Ver procedimento PROC-L1-00868 se aplicável.",
    gen_id = 867,
}
_DR["G00868"] = {
    title = "Condição BODY-868: correlação 14.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000869", "SKU-GEN-006077" },
    notes = "Ver procedimento PROC-L1-00869 se aplicável.",
    gen_id = 868,
}
_DR["G00869"] = {
    title = "Condição INFO-869: correlação 21.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000870", "SKU-GEN-006084" },
    notes = "Ver procedimento PROC-L1-00870 se aplicável.",
    gen_id = 869,
}
_DR["G00870"] = {
    title = "Condição ENGINE-870: correlação 8.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000871", "SKU-GEN-006091" },
    notes = "Ver procedimento PROC-L1-00871 se aplicável.",
    gen_id = 870,
}
_DR["G00871"] = {
    title = "Condição ABS-871: correlação 50.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000872", "SKU-GEN-006098" },
    notes = "Ver procedimento PROC-L1-00872 se aplicável.",
    gen_id = 871,
}
_DR["G00872"] = {
    title = "Condição SRS-872: correlação 16.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000873", "SKU-GEN-006105" },
    notes = "Ver procedimento PROC-L1-00873 se aplicável.",
    gen_id = 872,
}
_DR["G00873"] = {
    title = "Condição CLIMATE-873: correlação 54.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000874", "SKU-GEN-006112" },
    notes = "Ver procedimento PROC-L1-00874 se aplicável.",
    gen_id = 873,
}
_DR["G00874"] = {
    title = "Condição TRANS-874: correlação 37.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000875", "SKU-GEN-006119" },
    notes = "Ver procedimento PROC-L1-00875 se aplicável.",
    gen_id = 874,
}
_DR["G00875"] = {
    title = "Condição FUEL-875: correlação 53.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000876", "SKU-GEN-006126" },
    notes = "Ver procedimento PROC-L1-00876 se aplicável.",
    gen_id = 875,
}
_DR["G00876"] = {
    title = "Condição STEER-876: correlação 95.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000877", "SKU-GEN-006133" },
    notes = "Ver procedimento PROC-L1-00877 se aplicável.",
    gen_id = 876,
}
_DR["G00877"] = {
    title = "Condição HV-877: correlação 41.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000878", "SKU-GEN-006140" },
    notes = "Ver procedimento PROC-L1-00878 se aplicável.",
    gen_id = 877,
}
_DR["G00878"] = {
    title = "Condição BODY-878: correlação 50.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000879", "SKU-GEN-006147" },
    notes = "Ver procedimento PROC-L1-00879 se aplicável.",
    gen_id = 878,
}
_DR["G00879"] = {
    title = "Condição INFO-879: correlação 90.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000880", "SKU-GEN-006154" },
    notes = "Ver procedimento PROC-L1-00880 se aplicável.",
    gen_id = 879,
}
_DR["G00880"] = {
    title = "Condição ENGINE-880: correlação 3.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000881", "SKU-GEN-006161" },
    notes = "Ver procedimento PROC-L1-00881 se aplicável.",
    gen_id = 880,
}
_DR["G00881"] = {
    title = "Condição ABS-881: correlação 93.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000882", "SKU-GEN-006168" },
    notes = "Ver procedimento PROC-L1-00882 se aplicável.",
    gen_id = 881,
}
_DR["G00882"] = {
    title = "Condição SRS-882: correlação 36.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000883", "SKU-GEN-006175" },
    notes = "Ver procedimento PROC-L1-00883 se aplicável.",
    gen_id = 882,
}
_DR["G00883"] = {
    title = "Condição CLIMATE-883: correlação 53.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000884", "SKU-GEN-006182" },
    notes = "Ver procedimento PROC-L1-00884 se aplicável.",
    gen_id = 883,
}
_DR["G00884"] = {
    title = "Condição TRANS-884: correlação 3.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000885", "SKU-GEN-006189" },
    notes = "Ver procedimento PROC-L1-00885 se aplicável.",
    gen_id = 884,
}
_DR["G00885"] = {
    title = "Condição FUEL-885: correlação 27.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000886", "SKU-GEN-006196" },
    notes = "Ver procedimento PROC-L1-00886 se aplicável.",
    gen_id = 885,
}
_DR["G00886"] = {
    title = "Condição STEER-886: correlação 50.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000887", "SKU-GEN-006203" },
    notes = "Ver procedimento PROC-L1-00887 se aplicável.",
    gen_id = 886,
}
_DR["G00887"] = {
    title = "Condição HV-887: correlação 39.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000888", "SKU-GEN-006210" },
    notes = "Ver procedimento PROC-L1-00888 se aplicável.",
    gen_id = 887,
}
_DR["G00888"] = {
    title = "Condição BODY-888: correlação 52.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000889", "SKU-GEN-006217" },
    notes = "Ver procedimento PROC-L1-00889 se aplicável.",
    gen_id = 888,
}
_DR["G00889"] = {
    title = "Condição INFO-889: correlação 85.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000890", "SKU-GEN-006224" },
    notes = "Ver procedimento PROC-L1-00890 se aplicável.",
    gen_id = 889,
}
_DR["G00890"] = {
    title = "Condição ENGINE-890: correlação 8.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000891", "SKU-GEN-006231" },
    notes = "Ver procedimento PROC-L1-00891 se aplicável.",
    gen_id = 890,
}
_DR["G00891"] = {
    title = "Condição ABS-891: correlação 26.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000892", "SKU-GEN-006238" },
    notes = "Ver procedimento PROC-L1-00892 se aplicável.",
    gen_id = 891,
}
_DR["G00892"] = {
    title = "Condição SRS-892: correlação 94.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000893", "SKU-GEN-006245" },
    notes = "Ver procedimento PROC-L1-00893 se aplicável.",
    gen_id = 892,
}
_DR["G00893"] = {
    title = "Condição CLIMATE-893: correlação 95.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000894", "SKU-GEN-006252" },
    notes = "Ver procedimento PROC-L1-00894 se aplicável.",
    gen_id = 893,
}
_DR["G00894"] = {
    title = "Condição TRANS-894: correlação 70.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000895", "SKU-GEN-006259" },
    notes = "Ver procedimento PROC-L1-00895 se aplicável.",
    gen_id = 894,
}
_DR["G00895"] = {
    title = "Condição FUEL-895: correlação 95.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000896", "SKU-GEN-006266" },
    notes = "Ver procedimento PROC-L1-00896 se aplicável.",
    gen_id = 895,
}
_DR["G00896"] = {
    title = "Condição STEER-896: correlação 50.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000897", "SKU-GEN-006273" },
    notes = "Ver procedimento PROC-L1-00897 se aplicável.",
    gen_id = 896,
}
_DR["G00897"] = {
    title = "Condição HV-897: correlação 73.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000898", "SKU-GEN-006280" },
    notes = "Ver procedimento PROC-L1-00898 se aplicável.",
    gen_id = 897,
}
_DR["G00898"] = {
    title = "Condição BODY-898: correlação 11.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000899", "SKU-GEN-006287" },
    notes = "Ver procedimento PROC-L1-00899 se aplicável.",
    gen_id = 898,
}
_DR["G00899"] = {
    title = "Condição INFO-899: correlação 12.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000900", "SKU-GEN-006294" },
    notes = "Ver procedimento PROC-L1-00900 se aplicável.",
    gen_id = 899,
}
_DR["G00900"] = {
    title = "Condição ENGINE-900: correlação 18.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000901", "SKU-GEN-006301" },
    notes = "Ver procedimento PROC-L1-00901 se aplicável.",
    gen_id = 900,
}
_DR["G00901"] = {
    title = "Condição ABS-901: correlação 36.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000902", "SKU-GEN-006308" },
    notes = "Ver procedimento PROC-L1-00902 se aplicável.",
    gen_id = 901,
}
_DR["G00902"] = {
    title = "Condição SRS-902: correlação 99.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000903", "SKU-GEN-006315" },
    notes = "Ver procedimento PROC-L1-00903 se aplicável.",
    gen_id = 902,
}
_DR["G00903"] = {
    title = "Condição CLIMATE-903: correlação 63.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000904", "SKU-GEN-006322" },
    notes = "Ver procedimento PROC-L1-00904 se aplicável.",
    gen_id = 903,
}
_DR["G00904"] = {
    title = "Condição TRANS-904: correlação 10.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000905", "SKU-GEN-006329" },
    notes = "Ver procedimento PROC-L1-00905 se aplicável.",
    gen_id = 904,
}
_DR["G00905"] = {
    title = "Condição FUEL-905: correlação 80.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000906", "SKU-GEN-006336" },
    notes = "Ver procedimento PROC-L1-00906 se aplicável.",
    gen_id = 905,
}
_DR["G00906"] = {
    title = "Condição STEER-906: correlação 23.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000907", "SKU-GEN-006343" },
    notes = "Ver procedimento PROC-L1-00907 se aplicável.",
    gen_id = 906,
}
_DR["G00907"] = {
    title = "Condição HV-907: correlação 2.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000908", "SKU-GEN-006350" },
    notes = "Ver procedimento PROC-L1-00908 se aplicável.",
    gen_id = 907,
}
_DR["G00908"] = {
    title = "Condição BODY-908: correlação 83.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000909", "SKU-GEN-006357" },
    notes = "Ver procedimento PROC-L1-00909 se aplicável.",
    gen_id = 908,
}
_DR["G00909"] = {
    title = "Condição INFO-909: correlação 61.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000910", "SKU-GEN-006364" },
    notes = "Ver procedimento PROC-L1-00910 se aplicável.",
    gen_id = 909,
}
_DR["G00910"] = {
    title = "Condição ENGINE-910: correlação 45.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000911", "SKU-GEN-006371" },
    notes = "Ver procedimento PROC-L1-00911 se aplicável.",
    gen_id = 910,
}
_DR["G00911"] = {
    title = "Condição ABS-911: correlação 49.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000912", "SKU-GEN-006378" },
    notes = "Ver procedimento PROC-L1-00912 se aplicável.",
    gen_id = 911,
}
_DR["G00912"] = {
    title = "Condição SRS-912: correlação 54.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000913", "SKU-GEN-006385" },
    notes = "Ver procedimento PROC-L1-00913 se aplicável.",
    gen_id = 912,
}
_DR["G00913"] = {
    title = "Condição CLIMATE-913: correlação 57.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000914", "SKU-GEN-006392" },
    notes = "Ver procedimento PROC-L1-00914 se aplicável.",
    gen_id = 913,
}
_DR["G00914"] = {
    title = "Condição TRANS-914: correlação 72.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000915", "SKU-GEN-006399" },
    notes = "Ver procedimento PROC-L1-00915 se aplicável.",
    gen_id = 914,
}
_DR["G00915"] = {
    title = "Condição FUEL-915: correlação 62.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000916", "SKU-GEN-006406" },
    notes = "Ver procedimento PROC-L1-00916 se aplicável.",
    gen_id = 915,
}
_DR["G00916"] = {
    title = "Condição STEER-916: correlação 0.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000917", "SKU-GEN-006413" },
    notes = "Ver procedimento PROC-L1-00917 se aplicável.",
    gen_id = 916,
}
_DR["G00917"] = {
    title = "Condição HV-917: correlação 9.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000918", "SKU-GEN-006420" },
    notes = "Ver procedimento PROC-L1-00918 se aplicável.",
    gen_id = 917,
}
_DR["G00918"] = {
    title = "Condição BODY-918: correlação 60.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000919", "SKU-GEN-006427" },
    notes = "Ver procedimento PROC-L1-00919 se aplicável.",
    gen_id = 918,
}
_DR["G00919"] = {
    title = "Condição INFO-919: correlação 56.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000920", "SKU-GEN-006434" },
    notes = "Ver procedimento PROC-L1-00920 se aplicável.",
    gen_id = 919,
}
_DR["G00920"] = {
    title = "Condição ENGINE-920: correlação 75.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000921", "SKU-GEN-006441" },
    notes = "Ver procedimento PROC-L1-00921 se aplicável.",
    gen_id = 920,
}
_DR["G00921"] = {
    title = "Condição ABS-921: correlação 86.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000922", "SKU-GEN-006448" },
    notes = "Ver procedimento PROC-L1-00922 se aplicável.",
    gen_id = 921,
}
_DR["G00922"] = {
    title = "Condição SRS-922: correlação 6.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000923", "SKU-GEN-006455" },
    notes = "Ver procedimento PROC-L1-00923 se aplicável.",
    gen_id = 922,
}
_DR["G00923"] = {
    title = "Condição CLIMATE-923: correlação 55.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000924", "SKU-GEN-006462" },
    notes = "Ver procedimento PROC-L1-00924 se aplicável.",
    gen_id = 923,
}
_DR["G00924"] = {
    title = "Condição TRANS-924: correlação 13.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000925", "SKU-GEN-006469" },
    notes = "Ver procedimento PROC-L1-00925 se aplicável.",
    gen_id = 924,
}
_DR["G00925"] = {
    title = "Condição FUEL-925: correlação 97.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000926", "SKU-GEN-006476" },
    notes = "Ver procedimento PROC-L1-00926 se aplicável.",
    gen_id = 925,
}
_DR["G00926"] = {
    title = "Condição STEER-926: correlação 91.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000927", "SKU-GEN-006483" },
    notes = "Ver procedimento PROC-L1-00927 se aplicável.",
    gen_id = 926,
}
_DR["G00927"] = {
    title = "Condição HV-927: correlação 87.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000928", "SKU-GEN-006490" },
    notes = "Ver procedimento PROC-L1-00928 se aplicável.",
    gen_id = 927,
}
_DR["G00928"] = {
    title = "Condição BODY-928: correlação 79.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000929", "SKU-GEN-006497" },
    notes = "Ver procedimento PROC-L1-00929 se aplicável.",
    gen_id = 928,
}
_DR["G00929"] = {
    title = "Condição INFO-929: correlação 47.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000930", "SKU-GEN-006504" },
    notes = "Ver procedimento PROC-L1-00930 se aplicável.",
    gen_id = 929,
}
_DR["G00930"] = {
    title = "Condição ENGINE-930: correlação 78.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000931", "SKU-GEN-006511" },
    notes = "Ver procedimento PROC-L1-00931 se aplicável.",
    gen_id = 930,
}
_DR["G00931"] = {
    title = "Condição ABS-931: correlação 73.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000932", "SKU-GEN-006518" },
    notes = "Ver procedimento PROC-L1-00932 se aplicável.",
    gen_id = 931,
}
_DR["G00932"] = {
    title = "Condição SRS-932: correlação 4.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000933", "SKU-GEN-006525" },
    notes = "Ver procedimento PROC-L1-00933 se aplicável.",
    gen_id = 932,
}
_DR["G00933"] = {
    title = "Condição CLIMATE-933: correlação 39.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000934", "SKU-GEN-006532" },
    notes = "Ver procedimento PROC-L1-00934 se aplicável.",
    gen_id = 933,
}
_DR["G00934"] = {
    title = "Condição TRANS-934: correlação 68.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000935", "SKU-GEN-006539" },
    notes = "Ver procedimento PROC-L1-00935 se aplicável.",
    gen_id = 934,
}
_DR["G00935"] = {
    title = "Condição FUEL-935: correlação 55.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000936", "SKU-GEN-006546" },
    notes = "Ver procedimento PROC-L1-00936 se aplicável.",
    gen_id = 935,
}
_DR["G00936"] = {
    title = "Condição STEER-936: correlação 7.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000937", "SKU-GEN-006553" },
    notes = "Ver procedimento PROC-L1-00937 se aplicável.",
    gen_id = 936,
}
_DR["G00937"] = {
    title = "Condição HV-937: correlação 29.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000938", "SKU-GEN-006560" },
    notes = "Ver procedimento PROC-L1-00938 se aplicável.",
    gen_id = 937,
}
_DR["G00938"] = {
    title = "Condição BODY-938: correlação 81.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000939", "SKU-GEN-006567" },
    notes = "Ver procedimento PROC-L1-00939 se aplicável.",
    gen_id = 938,
}
_DR["G00939"] = {
    title = "Condição INFO-939: correlação 75.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000940", "SKU-GEN-006574" },
    notes = "Ver procedimento PROC-L1-00940 se aplicável.",
    gen_id = 939,
}
_DR["G00940"] = {
    title = "Condição ENGINE-940: correlação 87.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000941", "SKU-GEN-006581" },
    notes = "Ver procedimento PROC-L1-00941 se aplicável.",
    gen_id = 940,
}
_DR["G00941"] = {
    title = "Condição ABS-941: correlação 16.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000942", "SKU-GEN-006588" },
    notes = "Ver procedimento PROC-L1-00942 se aplicável.",
    gen_id = 941,
}
_DR["G00942"] = {
    title = "Condição SRS-942: correlação 18.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000943", "SKU-GEN-006595" },
    notes = "Ver procedimento PROC-L1-00943 se aplicável.",
    gen_id = 942,
}
_DR["G00943"] = {
    title = "Condição CLIMATE-943: correlação 99.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000944", "SKU-GEN-006602" },
    notes = "Ver procedimento PROC-L1-00944 se aplicável.",
    gen_id = 943,
}
_DR["G00944"] = {
    title = "Condição TRANS-944: correlação 48.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000945", "SKU-GEN-006609" },
    notes = "Ver procedimento PROC-L1-00945 se aplicável.",
    gen_id = 944,
}
_DR["G00945"] = {
    title = "Condição FUEL-945: correlação 8.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000946", "SKU-GEN-006616" },
    notes = "Ver procedimento PROC-L1-00946 se aplicável.",
    gen_id = 945,
}
_DR["G00946"] = {
    title = "Condição STEER-946: correlação 0.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000947", "SKU-GEN-006623" },
    notes = "Ver procedimento PROC-L1-00947 se aplicável.",
    gen_id = 946,
}
_DR["G00947"] = {
    title = "Condição HV-947: correlação 33.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000948", "SKU-GEN-006630" },
    notes = "Ver procedimento PROC-L1-00948 se aplicável.",
    gen_id = 947,
}
_DR["G00948"] = {
    title = "Condição BODY-948: correlação 78.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000949", "SKU-GEN-006637" },
    notes = "Ver procedimento PROC-L1-00949 se aplicável.",
    gen_id = 948,
}
_DR["G00949"] = {
    title = "Condição INFO-949: correlação 1.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000950", "SKU-GEN-006644" },
    notes = "Ver procedimento PROC-L1-00950 se aplicável.",
    gen_id = 949,
}
_DR["G00950"] = {
    title = "Condição ENGINE-950: correlação 14.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000951", "SKU-GEN-006651" },
    notes = "Ver procedimento PROC-L1-00951 se aplicável.",
    gen_id = 950,
}
_DR["G00951"] = {
    title = "Condição ABS-951: correlação 4.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000952", "SKU-GEN-006658" },
    notes = "Ver procedimento PROC-L1-00952 se aplicável.",
    gen_id = 951,
}
_DR["G00952"] = {
    title = "Condição SRS-952: correlação 16.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000953", "SKU-GEN-006665" },
    notes = "Ver procedimento PROC-L1-00953 se aplicável.",
    gen_id = 952,
}
_DR["G00953"] = {
    title = "Condição CLIMATE-953: correlação 72.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000954", "SKU-GEN-006672" },
    notes = "Ver procedimento PROC-L1-00954 se aplicável.",
    gen_id = 953,
}
_DR["G00954"] = {
    title = "Condição TRANS-954: correlação 1.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000955", "SKU-GEN-006679" },
    notes = "Ver procedimento PROC-L1-00955 se aplicável.",
    gen_id = 954,
}
_DR["G00955"] = {
    title = "Condição FUEL-955: correlação 76.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000956", "SKU-GEN-006686" },
    notes = "Ver procedimento PROC-L1-00956 se aplicável.",
    gen_id = 955,
}
_DR["G00956"] = {
    title = "Condição STEER-956: correlação 47.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000957", "SKU-GEN-006693" },
    notes = "Ver procedimento PROC-L1-00957 se aplicável.",
    gen_id = 956,
}
_DR["G00957"] = {
    title = "Condição HV-957: correlação 46.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000958", "SKU-GEN-006700" },
    notes = "Ver procedimento PROC-L1-00958 se aplicável.",
    gen_id = 957,
}
_DR["G00958"] = {
    title = "Condição BODY-958: correlação 57.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000959", "SKU-GEN-006707" },
    notes = "Ver procedimento PROC-L1-00959 se aplicável.",
    gen_id = 958,
}
_DR["G00959"] = {
    title = "Condição INFO-959: correlação 33.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000960", "SKU-GEN-006714" },
    notes = "Ver procedimento PROC-L1-00960 se aplicável.",
    gen_id = 959,
}
_DR["G00960"] = {
    title = "Condição ENGINE-960: correlação 29.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000961", "SKU-GEN-006721" },
    notes = "Ver procedimento PROC-L1-00961 se aplicável.",
    gen_id = 960,
}
_DR["G00961"] = {
    title = "Condição ABS-961: correlação 15.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000962", "SKU-GEN-006728" },
    notes = "Ver procedimento PROC-L1-00962 se aplicável.",
    gen_id = 961,
}
_DR["G00962"] = {
    title = "Condição SRS-962: correlação 53.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000963", "SKU-GEN-006735" },
    notes = "Ver procedimento PROC-L1-00963 se aplicável.",
    gen_id = 962,
}
_DR["G00963"] = {
    title = "Condição CLIMATE-963: correlação 55.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000964", "SKU-GEN-006742" },
    notes = "Ver procedimento PROC-L1-00964 se aplicável.",
    gen_id = 963,
}
_DR["G00964"] = {
    title = "Condição TRANS-964: correlação 51.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000965", "SKU-GEN-006749" },
    notes = "Ver procedimento PROC-L1-00965 se aplicável.",
    gen_id = 964,
}
_DR["G00965"] = {
    title = "Condição FUEL-965: correlação 15.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000966", "SKU-GEN-006756" },
    notes = "Ver procedimento PROC-L1-00966 se aplicável.",
    gen_id = 965,
}
_DR["G00966"] = {
    title = "Condição STEER-966: correlação 81.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000967", "SKU-GEN-006763" },
    notes = "Ver procedimento PROC-L1-00967 se aplicável.",
    gen_id = 966,
}
_DR["G00967"] = {
    title = "Condição HV-967: correlação 60.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000968", "SKU-GEN-006770" },
    notes = "Ver procedimento PROC-L1-00968 se aplicável.",
    gen_id = 967,
}
_DR["G00968"] = {
    title = "Condição BODY-968: correlação 48.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000969", "SKU-GEN-006777" },
    notes = "Ver procedimento PROC-L1-00969 se aplicável.",
    gen_id = 968,
}
_DR["G00969"] = {
    title = "Condição INFO-969: correlação 71.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000970", "SKU-GEN-006784" },
    notes = "Ver procedimento PROC-L1-00970 se aplicável.",
    gen_id = 969,
}
_DR["G00970"] = {
    title = "Condição ENGINE-970: correlação 77.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000971", "SKU-GEN-006791" },
    notes = "Ver procedimento PROC-L1-00971 se aplicável.",
    gen_id = 970,
}
_DR["G00971"] = {
    title = "Condição ABS-971: correlação 98.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000972", "SKU-GEN-006798" },
    notes = "Ver procedimento PROC-L1-00972 se aplicável.",
    gen_id = 971,
}
_DR["G00972"] = {
    title = "Condição SRS-972: correlação 49.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000973", "SKU-GEN-006805" },
    notes = "Ver procedimento PROC-L1-00973 se aplicável.",
    gen_id = 972,
}
_DR["G00973"] = {
    title = "Condição CLIMATE-973: correlação 85.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000974", "SKU-GEN-006812" },
    notes = "Ver procedimento PROC-L1-00974 se aplicável.",
    gen_id = 973,
}
_DR["G00974"] = {
    title = "Condição TRANS-974: correlação 97.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000975", "SKU-GEN-006819" },
    notes = "Ver procedimento PROC-L1-00975 se aplicável.",
    gen_id = 974,
}
_DR["G00975"] = {
    title = "Condição FUEL-975: correlação 8.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000976", "SKU-GEN-006826" },
    notes = "Ver procedimento PROC-L1-00976 se aplicável.",
    gen_id = 975,
}
_DR["G00976"] = {
    title = "Condição STEER-976: correlação 16.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000977", "SKU-GEN-006833" },
    notes = "Ver procedimento PROC-L1-00977 se aplicável.",
    gen_id = 976,
}
_DR["G00977"] = {
    title = "Condição HV-977: correlação 18.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000978", "SKU-GEN-006840" },
    notes = "Ver procedimento PROC-L1-00978 se aplicável.",
    gen_id = 977,
}
_DR["G00978"] = {
    title = "Condição BODY-978: correlação 28.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000979", "SKU-GEN-006847" },
    notes = "Ver procedimento PROC-L1-00979 se aplicável.",
    gen_id = 978,
}
_DR["G00979"] = {
    title = "Condição INFO-979: correlação 84.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000980", "SKU-GEN-006854" },
    notes = "Ver procedimento PROC-L1-00980 se aplicável.",
    gen_id = 979,
}
_DR["G00980"] = {
    title = "Condição ENGINE-980: correlação 3.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000981", "SKU-GEN-006861" },
    notes = "Ver procedimento PROC-L1-00981 se aplicável.",
    gen_id = 980,
}
_DR["G00981"] = {
    title = "Condição ABS-981: correlação 95.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000982", "SKU-GEN-006868" },
    notes = "Ver procedimento PROC-L1-00982 se aplicável.",
    gen_id = 981,
}
_DR["G00982"] = {
    title = "Condição SRS-982: correlação 69.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000983", "SKU-GEN-006875" },
    notes = "Ver procedimento PROC-L1-00983 se aplicável.",
    gen_id = 982,
}
_DR["G00983"] = {
    title = "Condição CLIMATE-983: correlação 2.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000984", "SKU-GEN-006882" },
    notes = "Ver procedimento PROC-L1-00984 se aplicável.",
    gen_id = 983,
}
_DR["G00984"] = {
    title = "Condição TRANS-984: correlação 63.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000985", "SKU-GEN-006889" },
    notes = "Ver procedimento PROC-L1-00985 se aplicável.",
    gen_id = 984,
}
_DR["G00985"] = {
    title = "Condição FUEL-985: correlação 31.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000986", "SKU-GEN-006896" },
    notes = "Ver procedimento PROC-L1-00986 se aplicável.",
    gen_id = 985,
}
_DR["G00986"] = {
    title = "Condição STEER-986: correlação 12.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000987", "SKU-GEN-006903" },
    notes = "Ver procedimento PROC-L1-00987 se aplicável.",
    gen_id = 986,
}
_DR["G00987"] = {
    title = "Condição HV-987: correlação 16.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000988", "SKU-GEN-006910" },
    notes = "Ver procedimento PROC-L1-00988 se aplicável.",
    gen_id = 987,
}
_DR["G00988"] = {
    title = "Condição BODY-988: correlação 49.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000989", "SKU-GEN-006917" },
    notes = "Ver procedimento PROC-L1-00989 se aplicável.",
    gen_id = 988,
}
_DR["G00989"] = {
    title = "Condição INFO-989: correlação 56.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-000990", "SKU-GEN-006924" },
    notes = "Ver procedimento PROC-L1-00990 se aplicável.",
    gen_id = 989,
}
_DR["G00990"] = {
    title = "Condição ENGINE-990: correlação 12.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-000991", "SKU-GEN-006931" },
    notes = "Ver procedimento PROC-L1-00991 se aplicável.",
    gen_id = 990,
}
_DR["G00991"] = {
    title = "Condição ABS-991: correlação 16.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-000992", "SKU-GEN-006938" },
    notes = "Ver procedimento PROC-L1-00992 se aplicável.",
    gen_id = 991,
}
_DR["G00992"] = {
    title = "Condição SRS-992: correlação 7.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-000993", "SKU-GEN-006945" },
    notes = "Ver procedimento PROC-L1-00993 se aplicável.",
    gen_id = 992,
}
_DR["G00993"] = {
    title = "Condição CLIMATE-993: correlação 93.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-000994", "SKU-GEN-006952" },
    notes = "Ver procedimento PROC-L1-00994 se aplicável.",
    gen_id = 993,
}
_DR["G00994"] = {
    title = "Condição TRANS-994: correlação 24.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-000995", "SKU-GEN-006959" },
    notes = "Ver procedimento PROC-L1-00995 se aplicável.",
    gen_id = 994,
}
_DR["G00995"] = {
    title = "Condição FUEL-995: correlação 2.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-000996", "SKU-GEN-006966" },
    notes = "Ver procedimento PROC-L1-00996 se aplicável.",
    gen_id = 995,
}
_DR["G00996"] = {
    title = "Condição STEER-996: correlação 59.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-000997", "SKU-GEN-006973" },
    notes = "Ver procedimento PROC-L1-00997 se aplicável.",
    gen_id = 996,
}
_DR["G00997"] = {
    title = "Condição HV-997: correlação 12.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-000998", "SKU-GEN-006980" },
    notes = "Ver procedimento PROC-L1-00998 se aplicável.",
    gen_id = 997,
}
_DR["G00998"] = {
    title = "Condição BODY-998: correlação 34.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-000999", "SKU-GEN-006987" },
    notes = "Ver procedimento PROC-L1-00999 se aplicável.",
    gen_id = 998,
}
_DR["G00999"] = {
    title = "Condição INFO-999: correlação 36.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001000", "SKU-GEN-006994" },
    notes = "Ver procedimento PROC-L1-01000 se aplicável.",
    gen_id = 999,
}
_DR["G01000"] = {
    title = "Condição ENGINE-1000: correlação 19.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001001", "SKU-GEN-007001" },
    notes = "Ver procedimento PROC-L1-01001 se aplicável.",
    gen_id = 1000,
}
_DR["G01001"] = {
    title = "Condição ABS-1001: correlação 63.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001002", "SKU-GEN-007008" },
    notes = "Ver procedimento PROC-L1-01002 se aplicável.",
    gen_id = 1001,
}
_DR["G01002"] = {
    title = "Condição SRS-1002: correlação 31.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001003", "SKU-GEN-007015" },
    notes = "Ver procedimento PROC-L1-01003 se aplicável.",
    gen_id = 1002,
}
_DR["G01003"] = {
    title = "Condição CLIMATE-1003: correlação 46.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001004", "SKU-GEN-007022" },
    notes = "Ver procedimento PROC-L1-01004 se aplicável.",
    gen_id = 1003,
}
_DR["G01004"] = {
    title = "Condição TRANS-1004: correlação 81.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001005", "SKU-GEN-007029" },
    notes = "Ver procedimento PROC-L1-01005 se aplicável.",
    gen_id = 1004,
}
_DR["G01005"] = {
    title = "Condição FUEL-1005: correlação 65.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001006", "SKU-GEN-007036" },
    notes = "Ver procedimento PROC-L1-01006 se aplicável.",
    gen_id = 1005,
}
_DR["G01006"] = {
    title = "Condição STEER-1006: correlação 95.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001007", "SKU-GEN-007043" },
    notes = "Ver procedimento PROC-L1-01007 se aplicável.",
    gen_id = 1006,
}
_DR["G01007"] = {
    title = "Condição HV-1007: correlação 26.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001008", "SKU-GEN-007050" },
    notes = "Ver procedimento PROC-L1-01008 se aplicável.",
    gen_id = 1007,
}
_DR["G01008"] = {
    title = "Condição BODY-1008: correlação 87.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001009", "SKU-GEN-007057" },
    notes = "Ver procedimento PROC-L1-01009 se aplicável.",
    gen_id = 1008,
}
_DR["G01009"] = {
    title = "Condição INFO-1009: correlação 0.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001010", "SKU-GEN-007064" },
    notes = "Ver procedimento PROC-L1-01010 se aplicável.",
    gen_id = 1009,
}
_DR["G01010"] = {
    title = "Condição ENGINE-1010: correlação 76.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001011", "SKU-GEN-007071" },
    notes = "Ver procedimento PROC-L1-01011 se aplicável.",
    gen_id = 1010,
}
_DR["G01011"] = {
    title = "Condição ABS-1011: correlação 36.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001012", "SKU-GEN-007078" },
    notes = "Ver procedimento PROC-L1-01012 se aplicável.",
    gen_id = 1011,
}
_DR["G01012"] = {
    title = "Condição SRS-1012: correlação 60.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001013", "SKU-GEN-007085" },
    notes = "Ver procedimento PROC-L1-01013 se aplicável.",
    gen_id = 1012,
}
_DR["G01013"] = {
    title = "Condição CLIMATE-1013: correlação 46.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001014", "SKU-GEN-007092" },
    notes = "Ver procedimento PROC-L1-01014 se aplicável.",
    gen_id = 1013,
}
_DR["G01014"] = {
    title = "Condição TRANS-1014: correlação 12.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001015", "SKU-GEN-007099" },
    notes = "Ver procedimento PROC-L1-01015 se aplicável.",
    gen_id = 1014,
}
_DR["G01015"] = {
    title = "Condição FUEL-1015: correlação 99.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001016", "SKU-GEN-007106" },
    notes = "Ver procedimento PROC-L1-01016 se aplicável.",
    gen_id = 1015,
}
_DR["G01016"] = {
    title = "Condição STEER-1016: correlação 50.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001017", "SKU-GEN-007113" },
    notes = "Ver procedimento PROC-L1-01017 se aplicável.",
    gen_id = 1016,
}
_DR["G01017"] = {
    title = "Condição HV-1017: correlação 41.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001018", "SKU-GEN-007120" },
    notes = "Ver procedimento PROC-L1-01018 se aplicável.",
    gen_id = 1017,
}
_DR["G01018"] = {
    title = "Condição BODY-1018: correlação 14.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001019", "SKU-GEN-007127" },
    notes = "Ver procedimento PROC-L1-01019 se aplicável.",
    gen_id = 1018,
}
_DR["G01019"] = {
    title = "Condição INFO-1019: correlação 51.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001020", "SKU-GEN-007134" },
    notes = "Ver procedimento PROC-L1-01020 se aplicável.",
    gen_id = 1019,
}
_DR["G01020"] = {
    title = "Condição ENGINE-1020: correlação 41.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001021", "SKU-GEN-007141" },
    notes = "Ver procedimento PROC-L1-01021 se aplicável.",
    gen_id = 1020,
}
_DR["G01021"] = {
    title = "Condição ABS-1021: correlação 55.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001022", "SKU-GEN-007148" },
    notes = "Ver procedimento PROC-L1-01022 se aplicável.",
    gen_id = 1021,
}
_DR["G01022"] = {
    title = "Condição SRS-1022: correlação 85.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001023", "SKU-GEN-007155" },
    notes = "Ver procedimento PROC-L1-01023 se aplicável.",
    gen_id = 1022,
}
_DR["G01023"] = {
    title = "Condição CLIMATE-1023: correlação 95.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001024", "SKU-GEN-007162" },
    notes = "Ver procedimento PROC-L1-01024 se aplicável.",
    gen_id = 1023,
}
_DR["G01024"] = {
    title = "Condição TRANS-1024: correlação 12.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001025", "SKU-GEN-007169" },
    notes = "Ver procedimento PROC-L1-01025 se aplicável.",
    gen_id = 1024,
}
_DR["G01025"] = {
    title = "Condição FUEL-1025: correlação 38.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001026", "SKU-GEN-007176" },
    notes = "Ver procedimento PROC-L1-01026 se aplicável.",
    gen_id = 1025,
}
_DR["G01026"] = {
    title = "Condição STEER-1026: correlação 88.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001027", "SKU-GEN-007183" },
    notes = "Ver procedimento PROC-L1-01027 se aplicável.",
    gen_id = 1026,
}
_DR["G01027"] = {
    title = "Condição HV-1027: correlação 62.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001028", "SKU-GEN-007190" },
    notes = "Ver procedimento PROC-L1-01028 se aplicável.",
    gen_id = 1027,
}
_DR["G01028"] = {
    title = "Condição BODY-1028: correlação 50.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001029", "SKU-GEN-007197" },
    notes = "Ver procedimento PROC-L1-01029 se aplicável.",
    gen_id = 1028,
}
_DR["G01029"] = {
    title = "Condição INFO-1029: correlação 43.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001030", "SKU-GEN-007204" },
    notes = "Ver procedimento PROC-L1-01030 se aplicável.",
    gen_id = 1029,
}
_DR["G01030"] = {
    title = "Condição ENGINE-1030: correlação 57.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001031", "SKU-GEN-007211" },
    notes = "Ver procedimento PROC-L1-01031 se aplicável.",
    gen_id = 1030,
}
_DR["G01031"] = {
    title = "Condição ABS-1031: correlação 68.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001032", "SKU-GEN-007218" },
    notes = "Ver procedimento PROC-L1-01032 se aplicável.",
    gen_id = 1031,
}
_DR["G01032"] = {
    title = "Condição SRS-1032: correlação 50.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001033", "SKU-GEN-007225" },
    notes = "Ver procedimento PROC-L1-01033 se aplicável.",
    gen_id = 1032,
}
_DR["G01033"] = {
    title = "Condição CLIMATE-1033: correlação 53.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001034", "SKU-GEN-007232" },
    notes = "Ver procedimento PROC-L1-01034 se aplicável.",
    gen_id = 1033,
}
_DR["G01034"] = {
    title = "Condição TRANS-1034: correlação 24.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001035", "SKU-GEN-007239" },
    notes = "Ver procedimento PROC-L1-01035 se aplicável.",
    gen_id = 1034,
}
_DR["G01035"] = {
    title = "Condição FUEL-1035: correlação 48.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001036", "SKU-GEN-007246" },
    notes = "Ver procedimento PROC-L1-01036 se aplicável.",
    gen_id = 1035,
}
_DR["G01036"] = {
    title = "Condição STEER-1036: correlação 65.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001037", "SKU-GEN-007253" },
    notes = "Ver procedimento PROC-L1-01037 se aplicável.",
    gen_id = 1036,
}
_DR["G01037"] = {
    title = "Condição HV-1037: correlação 65.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001038", "SKU-GEN-007260" },
    notes = "Ver procedimento PROC-L1-01038 se aplicável.",
    gen_id = 1037,
}
_DR["G01038"] = {
    title = "Condição BODY-1038: correlação 5.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001039", "SKU-GEN-007267" },
    notes = "Ver procedimento PROC-L1-01039 se aplicável.",
    gen_id = 1038,
}
_DR["G01039"] = {
    title = "Condição INFO-1039: correlação 74.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001040", "SKU-GEN-007274" },
    notes = "Ver procedimento PROC-L1-01040 se aplicável.",
    gen_id = 1039,
}
_DR["G01040"] = {
    title = "Condição ENGINE-1040: correlação 86.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001041", "SKU-GEN-007281" },
    notes = "Ver procedimento PROC-L1-01041 se aplicável.",
    gen_id = 1040,
}
_DR["G01041"] = {
    title = "Condição ABS-1041: correlação 3.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001042", "SKU-GEN-007288" },
    notes = "Ver procedimento PROC-L1-01042 se aplicável.",
    gen_id = 1041,
}
_DR["G01042"] = {
    title = "Condição SRS-1042: correlação 66.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001043", "SKU-GEN-007295" },
    notes = "Ver procedimento PROC-L1-01043 se aplicável.",
    gen_id = 1042,
}
_DR["G01043"] = {
    title = "Condição CLIMATE-1043: correlação 12.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001044", "SKU-GEN-007302" },
    notes = "Ver procedimento PROC-L1-01044 se aplicável.",
    gen_id = 1043,
}
_DR["G01044"] = {
    title = "Condição TRANS-1044: correlação 55.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001045", "SKU-GEN-007309" },
    notes = "Ver procedimento PROC-L1-01045 se aplicável.",
    gen_id = 1044,
}
_DR["G01045"] = {
    title = "Condição FUEL-1045: correlação 73.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001046", "SKU-GEN-007316" },
    notes = "Ver procedimento PROC-L1-01046 se aplicável.",
    gen_id = 1045,
}
_DR["G01046"] = {
    title = "Condição STEER-1046: correlação 66.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001047", "SKU-GEN-007323" },
    notes = "Ver procedimento PROC-L1-01047 se aplicável.",
    gen_id = 1046,
}
_DR["G01047"] = {
    title = "Condição HV-1047: correlação 67.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001048", "SKU-GEN-007330" },
    notes = "Ver procedimento PROC-L1-01048 se aplicável.",
    gen_id = 1047,
}
_DR["G01048"] = {
    title = "Condição BODY-1048: correlação 54.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001049", "SKU-GEN-007337" },
    notes = "Ver procedimento PROC-L1-01049 se aplicável.",
    gen_id = 1048,
}
_DR["G01049"] = {
    title = "Condição INFO-1049: correlação 67.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001050", "SKU-GEN-007344" },
    notes = "Ver procedimento PROC-L1-01050 se aplicável.",
    gen_id = 1049,
}
_DR["G01050"] = {
    title = "Condição ENGINE-1050: correlação 41.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001051", "SKU-GEN-007351" },
    notes = "Ver procedimento PROC-L1-01051 se aplicável.",
    gen_id = 1050,
}
_DR["G01051"] = {
    title = "Condição ABS-1051: correlação 11.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001052", "SKU-GEN-007358" },
    notes = "Ver procedimento PROC-L1-01052 se aplicável.",
    gen_id = 1051,
}
_DR["G01052"] = {
    title = "Condição SRS-1052: correlação 14.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001053", "SKU-GEN-007365" },
    notes = "Ver procedimento PROC-L1-01053 se aplicável.",
    gen_id = 1052,
}
_DR["G01053"] = {
    title = "Condição CLIMATE-1053: correlação 84.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001054", "SKU-GEN-007372" },
    notes = "Ver procedimento PROC-L1-01054 se aplicável.",
    gen_id = 1053,
}
_DR["G01054"] = {
    title = "Condição TRANS-1054: correlação 87.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001055", "SKU-GEN-007379" },
    notes = "Ver procedimento PROC-L1-01055 se aplicável.",
    gen_id = 1054,
}
_DR["G01055"] = {
    title = "Condição FUEL-1055: correlação 9.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001056", "SKU-GEN-007386" },
    notes = "Ver procedimento PROC-L1-01056 se aplicável.",
    gen_id = 1055,
}
_DR["G01056"] = {
    title = "Condição STEER-1056: correlação 43.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001057", "SKU-GEN-007393" },
    notes = "Ver procedimento PROC-L1-01057 se aplicável.",
    gen_id = 1056,
}
_DR["G01057"] = {
    title = "Condição HV-1057: correlação 44.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001058", "SKU-GEN-007400" },
    notes = "Ver procedimento PROC-L1-01058 se aplicável.",
    gen_id = 1057,
}
_DR["G01058"] = {
    title = "Condição BODY-1058: correlação 48.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001059", "SKU-GEN-007407" },
    notes = "Ver procedimento PROC-L1-01059 se aplicável.",
    gen_id = 1058,
}
_DR["G01059"] = {
    title = "Condição INFO-1059: correlação 82.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001060", "SKU-GEN-007414" },
    notes = "Ver procedimento PROC-L1-01060 se aplicável.",
    gen_id = 1059,
}
_DR["G01060"] = {
    title = "Condição ENGINE-1060: correlação 65.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001061", "SKU-GEN-007421" },
    notes = "Ver procedimento PROC-L1-01061 se aplicável.",
    gen_id = 1060,
}
_DR["G01061"] = {
    title = "Condição ABS-1061: correlação 85.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001062", "SKU-GEN-007428" },
    notes = "Ver procedimento PROC-L1-01062 se aplicável.",
    gen_id = 1061,
}
_DR["G01062"] = {
    title = "Condição SRS-1062: correlação 14.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001063", "SKU-GEN-007435" },
    notes = "Ver procedimento PROC-L1-01063 se aplicável.",
    gen_id = 1062,
}
_DR["G01063"] = {
    title = "Condição CLIMATE-1063: correlação 70.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001064", "SKU-GEN-007442" },
    notes = "Ver procedimento PROC-L1-01064 se aplicável.",
    gen_id = 1063,
}
_DR["G01064"] = {
    title = "Condição TRANS-1064: correlação 18.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001065", "SKU-GEN-007449" },
    notes = "Ver procedimento PROC-L1-01065 se aplicável.",
    gen_id = 1064,
}
_DR["G01065"] = {
    title = "Condição FUEL-1065: correlação 76.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001066", "SKU-GEN-007456" },
    notes = "Ver procedimento PROC-L1-01066 se aplicável.",
    gen_id = 1065,
}
_DR["G01066"] = {
    title = "Condição STEER-1066: correlação 92.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001067", "SKU-GEN-007463" },
    notes = "Ver procedimento PROC-L1-01067 se aplicável.",
    gen_id = 1066,
}
_DR["G01067"] = {
    title = "Condição HV-1067: correlação 82.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001068", "SKU-GEN-007470" },
    notes = "Ver procedimento PROC-L1-01068 se aplicável.",
    gen_id = 1067,
}
_DR["G01068"] = {
    title = "Condição BODY-1068: correlação 53.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001069", "SKU-GEN-007477" },
    notes = "Ver procedimento PROC-L1-01069 se aplicável.",
    gen_id = 1068,
}
_DR["G01069"] = {
    title = "Condição INFO-1069: correlação 9.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001070", "SKU-GEN-007484" },
    notes = "Ver procedimento PROC-L1-01070 se aplicável.",
    gen_id = 1069,
}
_DR["G01070"] = {
    title = "Condição ENGINE-1070: correlação 7.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001071", "SKU-GEN-007491" },
    notes = "Ver procedimento PROC-L1-01071 se aplicável.",
    gen_id = 1070,
}
_DR["G01071"] = {
    title = "Condição ABS-1071: correlação 53.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001072", "SKU-GEN-007498" },
    notes = "Ver procedimento PROC-L1-01072 se aplicável.",
    gen_id = 1071,
}
_DR["G01072"] = {
    title = "Condição SRS-1072: correlação 30.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001073", "SKU-GEN-007505" },
    notes = "Ver procedimento PROC-L1-01073 se aplicável.",
    gen_id = 1072,
}
_DR["G01073"] = {
    title = "Condição CLIMATE-1073: correlação 18.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001074", "SKU-GEN-007512" },
    notes = "Ver procedimento PROC-L1-01074 se aplicável.",
    gen_id = 1073,
}
_DR["G01074"] = {
    title = "Condição TRANS-1074: correlação 34.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001075", "SKU-GEN-007519" },
    notes = "Ver procedimento PROC-L1-01075 se aplicável.",
    gen_id = 1074,
}
_DR["G01075"] = {
    title = "Condição FUEL-1075: correlação 35.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001076", "SKU-GEN-007526" },
    notes = "Ver procedimento PROC-L1-01076 se aplicável.",
    gen_id = 1075,
}
_DR["G01076"] = {
    title = "Condição STEER-1076: correlação 14.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001077", "SKU-GEN-007533" },
    notes = "Ver procedimento PROC-L1-01077 se aplicável.",
    gen_id = 1076,
}
_DR["G01077"] = {
    title = "Condição HV-1077: correlação 61.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001078", "SKU-GEN-007540" },
    notes = "Ver procedimento PROC-L1-01078 se aplicável.",
    gen_id = 1077,
}
_DR["G01078"] = {
    title = "Condição BODY-1078: correlação 85.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001079", "SKU-GEN-007547" },
    notes = "Ver procedimento PROC-L1-01079 se aplicável.",
    gen_id = 1078,
}
_DR["G01079"] = {
    title = "Condição INFO-1079: correlação 8.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001080", "SKU-GEN-007554" },
    notes = "Ver procedimento PROC-L1-01080 se aplicável.",
    gen_id = 1079,
}
_DR["G01080"] = {
    title = "Condição ENGINE-1080: correlação 0.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001081", "SKU-GEN-007561" },
    notes = "Ver procedimento PROC-L1-01081 se aplicável.",
    gen_id = 1080,
}
_DR["G01081"] = {
    title = "Condição ABS-1081: correlação 65.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001082", "SKU-GEN-007568" },
    notes = "Ver procedimento PROC-L1-01082 se aplicável.",
    gen_id = 1081,
}
_DR["G01082"] = {
    title = "Condição SRS-1082: correlação 84.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001083", "SKU-GEN-007575" },
    notes = "Ver procedimento PROC-L1-01083 se aplicável.",
    gen_id = 1082,
}
_DR["G01083"] = {
    title = "Condição CLIMATE-1083: correlação 75.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001084", "SKU-GEN-007582" },
    notes = "Ver procedimento PROC-L1-01084 se aplicável.",
    gen_id = 1083,
}
_DR["G01084"] = {
    title = "Condição TRANS-1084: correlação 31.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001085", "SKU-GEN-007589" },
    notes = "Ver procedimento PROC-L1-01085 se aplicável.",
    gen_id = 1084,
}
_DR["G01085"] = {
    title = "Condição FUEL-1085: correlação 99.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001086", "SKU-GEN-007596" },
    notes = "Ver procedimento PROC-L1-01086 se aplicável.",
    gen_id = 1085,
}
_DR["G01086"] = {
    title = "Condição STEER-1086: correlação 12.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001087", "SKU-GEN-007603" },
    notes = "Ver procedimento PROC-L1-01087 se aplicável.",
    gen_id = 1086,
}
_DR["G01087"] = {
    title = "Condição HV-1087: correlação 69.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001088", "SKU-GEN-007610" },
    notes = "Ver procedimento PROC-L1-01088 se aplicável.",
    gen_id = 1087,
}
_DR["G01088"] = {
    title = "Condição BODY-1088: correlação 89.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001089", "SKU-GEN-007617" },
    notes = "Ver procedimento PROC-L1-01089 se aplicável.",
    gen_id = 1088,
}
_DR["G01089"] = {
    title = "Condição INFO-1089: correlação 46.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001090", "SKU-GEN-007624" },
    notes = "Ver procedimento PROC-L1-01090 se aplicável.",
    gen_id = 1089,
}
_DR["G01090"] = {
    title = "Condição ENGINE-1090: correlação 18.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001091", "SKU-GEN-007631" },
    notes = "Ver procedimento PROC-L1-01091 se aplicável.",
    gen_id = 1090,
}
_DR["G01091"] = {
    title = "Condição ABS-1091: correlação 11.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001092", "SKU-GEN-007638" },
    notes = "Ver procedimento PROC-L1-01092 se aplicável.",
    gen_id = 1091,
}
_DR["G01092"] = {
    title = "Condição SRS-1092: correlação 64.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001093", "SKU-GEN-007645" },
    notes = "Ver procedimento PROC-L1-01093 se aplicável.",
    gen_id = 1092,
}
_DR["G01093"] = {
    title = "Condição CLIMATE-1093: correlação 77.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001094", "SKU-GEN-007652" },
    notes = "Ver procedimento PROC-L1-01094 se aplicável.",
    gen_id = 1093,
}
_DR["G01094"] = {
    title = "Condição TRANS-1094: correlação 1.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001095", "SKU-GEN-007659" },
    notes = "Ver procedimento PROC-L1-01095 se aplicável.",
    gen_id = 1094,
}
_DR["G01095"] = {
    title = "Condição FUEL-1095: correlação 79.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001096", "SKU-GEN-007666" },
    notes = "Ver procedimento PROC-L1-01096 se aplicável.",
    gen_id = 1095,
}
_DR["G01096"] = {
    title = "Condição STEER-1096: correlação 44.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001097", "SKU-GEN-007673" },
    notes = "Ver procedimento PROC-L1-01097 se aplicável.",
    gen_id = 1096,
}
_DR["G01097"] = {
    title = "Condição HV-1097: correlação 58.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001098", "SKU-GEN-007680" },
    notes = "Ver procedimento PROC-L1-01098 se aplicável.",
    gen_id = 1097,
}
_DR["G01098"] = {
    title = "Condição BODY-1098: correlação 31.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001099", "SKU-GEN-007687" },
    notes = "Ver procedimento PROC-L1-01099 se aplicável.",
    gen_id = 1098,
}
_DR["G01099"] = {
    title = "Condição INFO-1099: correlação 81.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001100", "SKU-GEN-007694" },
    notes = "Ver procedimento PROC-L1-01100 se aplicável.",
    gen_id = 1099,
}
_DR["G01100"] = {
    title = "Condição ENGINE-1100: correlação 67.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001101", "SKU-GEN-007701" },
    notes = "Ver procedimento PROC-L1-01101 se aplicável.",
    gen_id = 1100,
}
_DR["G01101"] = {
    title = "Condição ABS-1101: correlação 35.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001102", "SKU-GEN-007708" },
    notes = "Ver procedimento PROC-L1-01102 se aplicável.",
    gen_id = 1101,
}
_DR["G01102"] = {
    title = "Condição SRS-1102: correlação 58.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001103", "SKU-GEN-007715" },
    notes = "Ver procedimento PROC-L1-01103 se aplicável.",
    gen_id = 1102,
}
_DR["G01103"] = {
    title = "Condição CLIMATE-1103: correlação 39.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001104", "SKU-GEN-007722" },
    notes = "Ver procedimento PROC-L1-01104 se aplicável.",
    gen_id = 1103,
}
_DR["G01104"] = {
    title = "Condição TRANS-1104: correlação 34.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001105", "SKU-GEN-007729" },
    notes = "Ver procedimento PROC-L1-01105 se aplicável.",
    gen_id = 1104,
}
_DR["G01105"] = {
    title = "Condição FUEL-1105: correlação 72.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001106", "SKU-GEN-007736" },
    notes = "Ver procedimento PROC-L1-01106 se aplicável.",
    gen_id = 1105,
}
_DR["G01106"] = {
    title = "Condição STEER-1106: correlação 19.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001107", "SKU-GEN-007743" },
    notes = "Ver procedimento PROC-L1-01107 se aplicável.",
    gen_id = 1106,
}
_DR["G01107"] = {
    title = "Condição HV-1107: correlação 30.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001108", "SKU-GEN-007750" },
    notes = "Ver procedimento PROC-L1-01108 se aplicável.",
    gen_id = 1107,
}
_DR["G01108"] = {
    title = "Condição BODY-1108: correlação 83.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001109", "SKU-GEN-007757" },
    notes = "Ver procedimento PROC-L1-01109 se aplicável.",
    gen_id = 1108,
}
_DR["G01109"] = {
    title = "Condição INFO-1109: correlação 56.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001110", "SKU-GEN-007764" },
    notes = "Ver procedimento PROC-L1-01110 se aplicável.",
    gen_id = 1109,
}
_DR["G01110"] = {
    title = "Condição ENGINE-1110: correlação 56.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001111", "SKU-GEN-007771" },
    notes = "Ver procedimento PROC-L1-01111 se aplicável.",
    gen_id = 1110,
}
_DR["G01111"] = {
    title = "Condição ABS-1111: correlação 49.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001112", "SKU-GEN-007778" },
    notes = "Ver procedimento PROC-L1-01112 se aplicável.",
    gen_id = 1111,
}
_DR["G01112"] = {
    title = "Condição SRS-1112: correlação 58.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001113", "SKU-GEN-007785" },
    notes = "Ver procedimento PROC-L1-01113 se aplicável.",
    gen_id = 1112,
}
_DR["G01113"] = {
    title = "Condição CLIMATE-1113: correlação 81.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001114", "SKU-GEN-007792" },
    notes = "Ver procedimento PROC-L1-01114 se aplicável.",
    gen_id = 1113,
}
_DR["G01114"] = {
    title = "Condição TRANS-1114: correlação 92.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001115", "SKU-GEN-007799" },
    notes = "Ver procedimento PROC-L1-01115 se aplicável.",
    gen_id = 1114,
}
_DR["G01115"] = {
    title = "Condição FUEL-1115: correlação 76.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001116", "SKU-GEN-007806" },
    notes = "Ver procedimento PROC-L1-01116 se aplicável.",
    gen_id = 1115,
}
_DR["G01116"] = {
    title = "Condição STEER-1116: correlação 25.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001117", "SKU-GEN-007813" },
    notes = "Ver procedimento PROC-L1-01117 se aplicável.",
    gen_id = 1116,
}
_DR["G01117"] = {
    title = "Condição HV-1117: correlação 71.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001118", "SKU-GEN-007820" },
    notes = "Ver procedimento PROC-L1-01118 se aplicável.",
    gen_id = 1117,
}
_DR["G01118"] = {
    title = "Condição BODY-1118: correlação 36.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001119", "SKU-GEN-007827" },
    notes = "Ver procedimento PROC-L1-01119 se aplicável.",
    gen_id = 1118,
}
_DR["G01119"] = {
    title = "Condição INFO-1119: correlação 66.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001120", "SKU-GEN-007834" },
    notes = "Ver procedimento PROC-L1-01120 se aplicável.",
    gen_id = 1119,
}
_DR["G01120"] = {
    title = "Condição ENGINE-1120: correlação 38.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001121", "SKU-GEN-007841" },
    notes = "Ver procedimento PROC-L1-01121 se aplicável.",
    gen_id = 1120,
}
_DR["G01121"] = {
    title = "Condição ABS-1121: correlação 16.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001122", "SKU-GEN-007848" },
    notes = "Ver procedimento PROC-L1-01122 se aplicável.",
    gen_id = 1121,
}
_DR["G01122"] = {
    title = "Condição SRS-1122: correlação 16.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001123", "SKU-GEN-007855" },
    notes = "Ver procedimento PROC-L1-01123 se aplicável.",
    gen_id = 1122,
}
_DR["G01123"] = {
    title = "Condição CLIMATE-1123: correlação 0.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001124", "SKU-GEN-007862" },
    notes = "Ver procedimento PROC-L1-01124 se aplicável.",
    gen_id = 1123,
}
_DR["G01124"] = {
    title = "Condição TRANS-1124: correlação 30.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001125", "SKU-GEN-007869" },
    notes = "Ver procedimento PROC-L1-01125 se aplicável.",
    gen_id = 1124,
}
_DR["G01125"] = {
    title = "Condição FUEL-1125: correlação 24.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001126", "SKU-GEN-007876" },
    notes = "Ver procedimento PROC-L1-01126 se aplicável.",
    gen_id = 1125,
}
_DR["G01126"] = {
    title = "Condição STEER-1126: correlação 46.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001127", "SKU-GEN-007883" },
    notes = "Ver procedimento PROC-L1-01127 se aplicável.",
    gen_id = 1126,
}
_DR["G01127"] = {
    title = "Condição HV-1127: correlação 61.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001128", "SKU-GEN-007890" },
    notes = "Ver procedimento PROC-L1-01128 se aplicável.",
    gen_id = 1127,
}
_DR["G01128"] = {
    title = "Condição BODY-1128: correlação 96.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001129", "SKU-GEN-007897" },
    notes = "Ver procedimento PROC-L1-01129 se aplicável.",
    gen_id = 1128,
}
_DR["G01129"] = {
    title = "Condição INFO-1129: correlação 13.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001130", "SKU-GEN-007904" },
    notes = "Ver procedimento PROC-L1-01130 se aplicável.",
    gen_id = 1129,
}
_DR["G01130"] = {
    title = "Condição ENGINE-1130: correlação 94.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001131", "SKU-GEN-007911" },
    notes = "Ver procedimento PROC-L1-01131 se aplicável.",
    gen_id = 1130,
}
_DR["G01131"] = {
    title = "Condição ABS-1131: correlação 27.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001132", "SKU-GEN-007918" },
    notes = "Ver procedimento PROC-L1-01132 se aplicável.",
    gen_id = 1131,
}
_DR["G01132"] = {
    title = "Condição SRS-1132: correlação 1.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001133", "SKU-GEN-007925" },
    notes = "Ver procedimento PROC-L1-01133 se aplicável.",
    gen_id = 1132,
}
_DR["G01133"] = {
    title = "Condição CLIMATE-1133: correlação 94.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001134", "SKU-GEN-007932" },
    notes = "Ver procedimento PROC-L1-01134 se aplicável.",
    gen_id = 1133,
}
_DR["G01134"] = {
    title = "Condição TRANS-1134: correlação 4.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001135", "SKU-GEN-007939" },
    notes = "Ver procedimento PROC-L1-01135 se aplicável.",
    gen_id = 1134,
}
_DR["G01135"] = {
    title = "Condição FUEL-1135: correlação 85.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001136", "SKU-GEN-007946" },
    notes = "Ver procedimento PROC-L1-01136 se aplicável.",
    gen_id = 1135,
}
_DR["G01136"] = {
    title = "Condição STEER-1136: correlação 8.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001137", "SKU-GEN-007953" },
    notes = "Ver procedimento PROC-L1-01137 se aplicável.",
    gen_id = 1136,
}
_DR["G01137"] = {
    title = "Condição HV-1137: correlação 33.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001138", "SKU-GEN-007960" },
    notes = "Ver procedimento PROC-L1-01138 se aplicável.",
    gen_id = 1137,
}
_DR["G01138"] = {
    title = "Condição BODY-1138: correlação 71.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001139", "SKU-GEN-007967" },
    notes = "Ver procedimento PROC-L1-01139 se aplicável.",
    gen_id = 1138,
}
_DR["G01139"] = {
    title = "Condição INFO-1139: correlação 23.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001140", "SKU-GEN-007974" },
    notes = "Ver procedimento PROC-L1-01140 se aplicável.",
    gen_id = 1139,
}
_DR["G01140"] = {
    title = "Condição ENGINE-1140: correlação 30.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001141", "SKU-GEN-007981" },
    notes = "Ver procedimento PROC-L1-01141 se aplicável.",
    gen_id = 1140,
}
_DR["G01141"] = {
    title = "Condição ABS-1141: correlação 70.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001142", "SKU-GEN-007988" },
    notes = "Ver procedimento PROC-L1-01142 se aplicável.",
    gen_id = 1141,
}
_DR["G01142"] = {
    title = "Condição SRS-1142: correlação 99.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001143", "SKU-GEN-007995" },
    notes = "Ver procedimento PROC-L1-01143 se aplicável.",
    gen_id = 1142,
}
_DR["G01143"] = {
    title = "Condição CLIMATE-1143: correlação 42.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001144", "SKU-GEN-008002" },
    notes = "Ver procedimento PROC-L1-01144 se aplicável.",
    gen_id = 1143,
}
_DR["G01144"] = {
    title = "Condição TRANS-1144: correlação 41.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001145", "SKU-GEN-008009" },
    notes = "Ver procedimento PROC-L1-01145 se aplicável.",
    gen_id = 1144,
}
_DR["G01145"] = {
    title = "Condição FUEL-1145: correlação 47.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001146", "SKU-GEN-008016" },
    notes = "Ver procedimento PROC-L1-01146 se aplicável.",
    gen_id = 1145,
}
_DR["G01146"] = {
    title = "Condição STEER-1146: correlação 71.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001147", "SKU-GEN-008023" },
    notes = "Ver procedimento PROC-L1-01147 se aplicável.",
    gen_id = 1146,
}
_DR["G01147"] = {
    title = "Condição HV-1147: correlação 97.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001148", "SKU-GEN-008030" },
    notes = "Ver procedimento PROC-L1-01148 se aplicável.",
    gen_id = 1147,
}
_DR["G01148"] = {
    title = "Condição BODY-1148: correlação 99.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001149", "SKU-GEN-008037" },
    notes = "Ver procedimento PROC-L1-01149 se aplicável.",
    gen_id = 1148,
}
_DR["G01149"] = {
    title = "Condição INFO-1149: correlação 82.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001150", "SKU-GEN-008044" },
    notes = "Ver procedimento PROC-L1-01150 se aplicável.",
    gen_id = 1149,
}
_DR["G01150"] = {
    title = "Condição ENGINE-1150: correlação 19.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001151", "SKU-GEN-008051" },
    notes = "Ver procedimento PROC-L1-01151 se aplicável.",
    gen_id = 1150,
}
_DR["G01151"] = {
    title = "Condição ABS-1151: correlação 67.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001152", "SKU-GEN-008058" },
    notes = "Ver procedimento PROC-L1-01152 se aplicável.",
    gen_id = 1151,
}
_DR["G01152"] = {
    title = "Condição SRS-1152: correlação 72.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001153", "SKU-GEN-008065" },
    notes = "Ver procedimento PROC-L1-01153 se aplicável.",
    gen_id = 1152,
}
_DR["G01153"] = {
    title = "Condição CLIMATE-1153: correlação 67.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001154", "SKU-GEN-008072" },
    notes = "Ver procedimento PROC-L1-01154 se aplicável.",
    gen_id = 1153,
}
_DR["G01154"] = {
    title = "Condição TRANS-1154: correlação 70.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001155", "SKU-GEN-008079" },
    notes = "Ver procedimento PROC-L1-01155 se aplicável.",
    gen_id = 1154,
}
_DR["G01155"] = {
    title = "Condição FUEL-1155: correlação 2.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001156", "SKU-GEN-008086" },
    notes = "Ver procedimento PROC-L1-01156 se aplicável.",
    gen_id = 1155,
}
_DR["G01156"] = {
    title = "Condição STEER-1156: correlação 63.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001157", "SKU-GEN-008093" },
    notes = "Ver procedimento PROC-L1-01157 se aplicável.",
    gen_id = 1156,
}
_DR["G01157"] = {
    title = "Condição HV-1157: correlação 96.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001158", "SKU-GEN-008100" },
    notes = "Ver procedimento PROC-L1-01158 se aplicável.",
    gen_id = 1157,
}
_DR["G01158"] = {
    title = "Condição BODY-1158: correlação 10.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001159", "SKU-GEN-008107" },
    notes = "Ver procedimento PROC-L1-01159 se aplicável.",
    gen_id = 1158,
}
_DR["G01159"] = {
    title = "Condição INFO-1159: correlação 8.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001160", "SKU-GEN-008114" },
    notes = "Ver procedimento PROC-L1-01160 se aplicável.",
    gen_id = 1159,
}
_DR["G01160"] = {
    title = "Condição ENGINE-1160: correlação 85.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001161", "SKU-GEN-008121" },
    notes = "Ver procedimento PROC-L1-01161 se aplicável.",
    gen_id = 1160,
}
_DR["G01161"] = {
    title = "Condição ABS-1161: correlação 43.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001162", "SKU-GEN-008128" },
    notes = "Ver procedimento PROC-L1-01162 se aplicável.",
    gen_id = 1161,
}
_DR["G01162"] = {
    title = "Condição SRS-1162: correlação 91.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001163", "SKU-GEN-008135" },
    notes = "Ver procedimento PROC-L1-01163 se aplicável.",
    gen_id = 1162,
}
_DR["G01163"] = {
    title = "Condição CLIMATE-1163: correlação 53.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001164", "SKU-GEN-008142" },
    notes = "Ver procedimento PROC-L1-01164 se aplicável.",
    gen_id = 1163,
}
_DR["G01164"] = {
    title = "Condição TRANS-1164: correlação 17.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001165", "SKU-GEN-008149" },
    notes = "Ver procedimento PROC-L1-01165 se aplicável.",
    gen_id = 1164,
}
_DR["G01165"] = {
    title = "Condição FUEL-1165: correlação 54.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001166", "SKU-GEN-008156" },
    notes = "Ver procedimento PROC-L1-01166 se aplicável.",
    gen_id = 1165,
}
_DR["G01166"] = {
    title = "Condição STEER-1166: correlação 69.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001167", "SKU-GEN-008163" },
    notes = "Ver procedimento PROC-L1-01167 se aplicável.",
    gen_id = 1166,
}
_DR["G01167"] = {
    title = "Condição HV-1167: correlação 22.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001168", "SKU-GEN-008170" },
    notes = "Ver procedimento PROC-L1-01168 se aplicável.",
    gen_id = 1167,
}
_DR["G01168"] = {
    title = "Condição BODY-1168: correlação 56.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001169", "SKU-GEN-008177" },
    notes = "Ver procedimento PROC-L1-01169 se aplicável.",
    gen_id = 1168,
}
_DR["G01169"] = {
    title = "Condição INFO-1169: correlação 9.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001170", "SKU-GEN-008184" },
    notes = "Ver procedimento PROC-L1-01170 se aplicável.",
    gen_id = 1169,
}
_DR["G01170"] = {
    title = "Condição ENGINE-1170: correlação 46.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001171", "SKU-GEN-008191" },
    notes = "Ver procedimento PROC-L1-01171 se aplicável.",
    gen_id = 1170,
}
_DR["G01171"] = {
    title = "Condição ABS-1171: correlação 44.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001172", "SKU-GEN-008198" },
    notes = "Ver procedimento PROC-L1-01172 se aplicável.",
    gen_id = 1171,
}
_DR["G01172"] = {
    title = "Condição SRS-1172: correlação 41.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001173", "SKU-GEN-008205" },
    notes = "Ver procedimento PROC-L1-01173 se aplicável.",
    gen_id = 1172,
}
_DR["G01173"] = {
    title = "Condição CLIMATE-1173: correlação 79.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001174", "SKU-GEN-008212" },
    notes = "Ver procedimento PROC-L1-01174 se aplicável.",
    gen_id = 1173,
}
_DR["G01174"] = {
    title = "Condição TRANS-1174: correlação 67.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001175", "SKU-GEN-008219" },
    notes = "Ver procedimento PROC-L1-01175 se aplicável.",
    gen_id = 1174,
}
_DR["G01175"] = {
    title = "Condição FUEL-1175: correlação 69.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001176", "SKU-GEN-008226" },
    notes = "Ver procedimento PROC-L1-01176 se aplicável.",
    gen_id = 1175,
}
_DR["G01176"] = {
    title = "Condição STEER-1176: correlação 10.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001177", "SKU-GEN-008233" },
    notes = "Ver procedimento PROC-L1-01177 se aplicável.",
    gen_id = 1176,
}
_DR["G01177"] = {
    title = "Condição HV-1177: correlação 87.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001178", "SKU-GEN-008240" },
    notes = "Ver procedimento PROC-L1-01178 se aplicável.",
    gen_id = 1177,
}
_DR["G01178"] = {
    title = "Condição BODY-1178: correlação 88.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001179", "SKU-GEN-008247" },
    notes = "Ver procedimento PROC-L1-01179 se aplicável.",
    gen_id = 1178,
}
_DR["G01179"] = {
    title = "Condição INFO-1179: correlação 73.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001180", "SKU-GEN-008254" },
    notes = "Ver procedimento PROC-L1-01180 se aplicável.",
    gen_id = 1179,
}
_DR["G01180"] = {
    title = "Condição ENGINE-1180: correlação 26.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001181", "SKU-GEN-008261" },
    notes = "Ver procedimento PROC-L1-01181 se aplicável.",
    gen_id = 1180,
}
_DR["G01181"] = {
    title = "Condição ABS-1181: correlação 31.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001182", "SKU-GEN-008268" },
    notes = "Ver procedimento PROC-L1-01182 se aplicável.",
    gen_id = 1181,
}
_DR["G01182"] = {
    title = "Condição SRS-1182: correlação 2.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001183", "SKU-GEN-008275" },
    notes = "Ver procedimento PROC-L1-01183 se aplicável.",
    gen_id = 1182,
}
_DR["G01183"] = {
    title = "Condição CLIMATE-1183: correlação 14.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001184", "SKU-GEN-008282" },
    notes = "Ver procedimento PROC-L1-01184 se aplicável.",
    gen_id = 1183,
}
_DR["G01184"] = {
    title = "Condição TRANS-1184: correlação 68.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001185", "SKU-GEN-008289" },
    notes = "Ver procedimento PROC-L1-01185 se aplicável.",
    gen_id = 1184,
}
_DR["G01185"] = {
    title = "Condição FUEL-1185: correlação 51.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001186", "SKU-GEN-008296" },
    notes = "Ver procedimento PROC-L1-01186 se aplicável.",
    gen_id = 1185,
}
_DR["G01186"] = {
    title = "Condição STEER-1186: correlação 15.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001187", "SKU-GEN-008303" },
    notes = "Ver procedimento PROC-L1-01187 se aplicável.",
    gen_id = 1186,
}
_DR["G01187"] = {
    title = "Condição HV-1187: correlação 71.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001188", "SKU-GEN-008310" },
    notes = "Ver procedimento PROC-L1-01188 se aplicável.",
    gen_id = 1187,
}
_DR["G01188"] = {
    title = "Condição BODY-1188: correlação 88.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001189", "SKU-GEN-008317" },
    notes = "Ver procedimento PROC-L1-01189 se aplicável.",
    gen_id = 1188,
}
_DR["G01189"] = {
    title = "Condição INFO-1189: correlação 24.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001190", "SKU-GEN-008324" },
    notes = "Ver procedimento PROC-L1-01190 se aplicável.",
    gen_id = 1189,
}
_DR["G01190"] = {
    title = "Condição ENGINE-1190: correlação 87.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001191", "SKU-GEN-008331" },
    notes = "Ver procedimento PROC-L1-01191 se aplicável.",
    gen_id = 1190,
}
_DR["G01191"] = {
    title = "Condição ABS-1191: correlação 38.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001192", "SKU-GEN-008338" },
    notes = "Ver procedimento PROC-L1-01192 se aplicável.",
    gen_id = 1191,
}
_DR["G01192"] = {
    title = "Condição SRS-1192: correlação 70.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001193", "SKU-GEN-008345" },
    notes = "Ver procedimento PROC-L1-01193 se aplicável.",
    gen_id = 1192,
}
_DR["G01193"] = {
    title = "Condição CLIMATE-1193: correlação 42.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001194", "SKU-GEN-008352" },
    notes = "Ver procedimento PROC-L1-01194 se aplicável.",
    gen_id = 1193,
}
_DR["G01194"] = {
    title = "Condição TRANS-1194: correlação 92.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001195", "SKU-GEN-008359" },
    notes = "Ver procedimento PROC-L1-01195 se aplicável.",
    gen_id = 1194,
}
_DR["G01195"] = {
    title = "Condição FUEL-1195: correlação 47.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001196", "SKU-GEN-008366" },
    notes = "Ver procedimento PROC-L1-01196 se aplicável.",
    gen_id = 1195,
}
_DR["G01196"] = {
    title = "Condição STEER-1196: correlação 51.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001197", "SKU-GEN-008373" },
    notes = "Ver procedimento PROC-L1-01197 se aplicável.",
    gen_id = 1196,
}
_DR["G01197"] = {
    title = "Condição HV-1197: correlação 93.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001198", "SKU-GEN-008380" },
    notes = "Ver procedimento PROC-L1-01198 se aplicável.",
    gen_id = 1197,
}
_DR["G01198"] = {
    title = "Condição BODY-1198: correlação 62.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001199", "SKU-GEN-008387" },
    notes = "Ver procedimento PROC-L1-01199 se aplicável.",
    gen_id = 1198,
}
_DR["G01199"] = {
    title = "Condição INFO-1199: correlação 56.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001200", "SKU-GEN-008394" },
    notes = "Ver procedimento PROC-L1-01200 se aplicável.",
    gen_id = 1199,
}
_DR["G01200"] = {
    title = "Condição ENGINE-1200: correlação 79.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001201", "SKU-GEN-008401" },
    notes = "Ver procedimento PROC-L1-01201 se aplicável.",
    gen_id = 1200,
}
_DR["G01201"] = {
    title = "Condição ABS-1201: correlação 44.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001202", "SKU-GEN-008408" },
    notes = "Ver procedimento PROC-L1-01202 se aplicável.",
    gen_id = 1201,
}
_DR["G01202"] = {
    title = "Condição SRS-1202: correlação 8.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001203", "SKU-GEN-008415" },
    notes = "Ver procedimento PROC-L1-01203 se aplicável.",
    gen_id = 1202,
}
_DR["G01203"] = {
    title = "Condição CLIMATE-1203: correlação 23.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001204", "SKU-GEN-008422" },
    notes = "Ver procedimento PROC-L1-01204 se aplicável.",
    gen_id = 1203,
}
_DR["G01204"] = {
    title = "Condição TRANS-1204: correlação 24.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001205", "SKU-GEN-008429" },
    notes = "Ver procedimento PROC-L1-01205 se aplicável.",
    gen_id = 1204,
}
_DR["G01205"] = {
    title = "Condição FUEL-1205: correlação 22.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001206", "SKU-GEN-008436" },
    notes = "Ver procedimento PROC-L1-01206 se aplicável.",
    gen_id = 1205,
}
_DR["G01206"] = {
    title = "Condição STEER-1206: correlação 45.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001207", "SKU-GEN-008443" },
    notes = "Ver procedimento PROC-L1-01207 se aplicável.",
    gen_id = 1206,
}
_DR["G01207"] = {
    title = "Condição HV-1207: correlação 35.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001208", "SKU-GEN-008450" },
    notes = "Ver procedimento PROC-L1-01208 se aplicável.",
    gen_id = 1207,
}
_DR["G01208"] = {
    title = "Condição BODY-1208: correlação 70.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001209", "SKU-GEN-008457" },
    notes = "Ver procedimento PROC-L1-01209 se aplicável.",
    gen_id = 1208,
}
_DR["G01209"] = {
    title = "Condição INFO-1209: correlação 12.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001210", "SKU-GEN-008464" },
    notes = "Ver procedimento PROC-L1-01210 se aplicável.",
    gen_id = 1209,
}
_DR["G01210"] = {
    title = "Condição ENGINE-1210: correlação 64.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001211", "SKU-GEN-008471" },
    notes = "Ver procedimento PROC-L1-01211 se aplicável.",
    gen_id = 1210,
}
_DR["G01211"] = {
    title = "Condição ABS-1211: correlação 90.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001212", "SKU-GEN-008478" },
    notes = "Ver procedimento PROC-L1-01212 se aplicável.",
    gen_id = 1211,
}
_DR["G01212"] = {
    title = "Condição SRS-1212: correlação 51.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001213", "SKU-GEN-008485" },
    notes = "Ver procedimento PROC-L1-01213 se aplicável.",
    gen_id = 1212,
}
_DR["G01213"] = {
    title = "Condição CLIMATE-1213: correlação 30.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001214", "SKU-GEN-008492" },
    notes = "Ver procedimento PROC-L1-01214 se aplicável.",
    gen_id = 1213,
}
_DR["G01214"] = {
    title = "Condição TRANS-1214: correlação 12.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001215", "SKU-GEN-008499" },
    notes = "Ver procedimento PROC-L1-01215 se aplicável.",
    gen_id = 1214,
}
_DR["G01215"] = {
    title = "Condição FUEL-1215: correlação 26.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001216", "SKU-GEN-008506" },
    notes = "Ver procedimento PROC-L1-01216 se aplicável.",
    gen_id = 1215,
}
_DR["G01216"] = {
    title = "Condição STEER-1216: correlação 0.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001217", "SKU-GEN-008513" },
    notes = "Ver procedimento PROC-L1-01217 se aplicável.",
    gen_id = 1216,
}
_DR["G01217"] = {
    title = "Condição HV-1217: correlação 56.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001218", "SKU-GEN-008520" },
    notes = "Ver procedimento PROC-L1-01218 se aplicável.",
    gen_id = 1217,
}
_DR["G01218"] = {
    title = "Condição BODY-1218: correlação 96.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001219", "SKU-GEN-008527" },
    notes = "Ver procedimento PROC-L1-01219 se aplicável.",
    gen_id = 1218,
}
_DR["G01219"] = {
    title = "Condição INFO-1219: correlação 63.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001220", "SKU-GEN-008534" },
    notes = "Ver procedimento PROC-L1-01220 se aplicável.",
    gen_id = 1219,
}
_DR["G01220"] = {
    title = "Condição ENGINE-1220: correlação 45.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001221", "SKU-GEN-008541" },
    notes = "Ver procedimento PROC-L1-01221 se aplicável.",
    gen_id = 1220,
}
_DR["G01221"] = {
    title = "Condição ABS-1221: correlação 6.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001222", "SKU-GEN-008548" },
    notes = "Ver procedimento PROC-L1-01222 se aplicável.",
    gen_id = 1221,
}
_DR["G01222"] = {
    title = "Condição SRS-1222: correlação 5.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001223", "SKU-GEN-008555" },
    notes = "Ver procedimento PROC-L1-01223 se aplicável.",
    gen_id = 1222,
}
_DR["G01223"] = {
    title = "Condição CLIMATE-1223: correlação 96.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001224", "SKU-GEN-008562" },
    notes = "Ver procedimento PROC-L1-01224 se aplicável.",
    gen_id = 1223,
}
_DR["G01224"] = {
    title = "Condição TRANS-1224: correlação 52.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001225", "SKU-GEN-008569" },
    notes = "Ver procedimento PROC-L1-01225 se aplicável.",
    gen_id = 1224,
}
_DR["G01225"] = {
    title = "Condição FUEL-1225: correlação 91.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001226", "SKU-GEN-008576" },
    notes = "Ver procedimento PROC-L1-01226 se aplicável.",
    gen_id = 1225,
}
_DR["G01226"] = {
    title = "Condição STEER-1226: correlação 22.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001227", "SKU-GEN-008583" },
    notes = "Ver procedimento PROC-L1-01227 se aplicável.",
    gen_id = 1226,
}
_DR["G01227"] = {
    title = "Condição HV-1227: correlação 44.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001228", "SKU-GEN-008590" },
    notes = "Ver procedimento PROC-L1-01228 se aplicável.",
    gen_id = 1227,
}
_DR["G01228"] = {
    title = "Condição BODY-1228: correlação 4.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001229", "SKU-GEN-008597" },
    notes = "Ver procedimento PROC-L1-01229 se aplicável.",
    gen_id = 1228,
}
_DR["G01229"] = {
    title = "Condição INFO-1229: correlação 5.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001230", "SKU-GEN-008604" },
    notes = "Ver procedimento PROC-L1-01230 se aplicável.",
    gen_id = 1229,
}
_DR["G01230"] = {
    title = "Condição ENGINE-1230: correlação 74.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001231", "SKU-GEN-008611" },
    notes = "Ver procedimento PROC-L1-01231 se aplicável.",
    gen_id = 1230,
}
_DR["G01231"] = {
    title = "Condição ABS-1231: correlação 68.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001232", "SKU-GEN-008618" },
    notes = "Ver procedimento PROC-L1-01232 se aplicável.",
    gen_id = 1231,
}
_DR["G01232"] = {
    title = "Condição SRS-1232: correlação 71.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001233", "SKU-GEN-008625" },
    notes = "Ver procedimento PROC-L1-01233 se aplicável.",
    gen_id = 1232,
}
_DR["G01233"] = {
    title = "Condição CLIMATE-1233: correlação 25.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001234", "SKU-GEN-008632" },
    notes = "Ver procedimento PROC-L1-01234 se aplicável.",
    gen_id = 1233,
}
_DR["G01234"] = {
    title = "Condição TRANS-1234: correlação 29.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001235", "SKU-GEN-008639" },
    notes = "Ver procedimento PROC-L1-01235 se aplicável.",
    gen_id = 1234,
}
_DR["G01235"] = {
    title = "Condição FUEL-1235: correlação 89.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001236", "SKU-GEN-008646" },
    notes = "Ver procedimento PROC-L1-01236 se aplicável.",
    gen_id = 1235,
}
_DR["G01236"] = {
    title = "Condição STEER-1236: correlação 6.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001237", "SKU-GEN-008653" },
    notes = "Ver procedimento PROC-L1-01237 se aplicável.",
    gen_id = 1236,
}
_DR["G01237"] = {
    title = "Condição HV-1237: correlação 5.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001238", "SKU-GEN-008660" },
    notes = "Ver procedimento PROC-L1-01238 se aplicável.",
    gen_id = 1237,
}
_DR["G01238"] = {
    title = "Condição BODY-1238: correlação 52.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001239", "SKU-GEN-008667" },
    notes = "Ver procedimento PROC-L1-01239 se aplicável.",
    gen_id = 1238,
}
_DR["G01239"] = {
    title = "Condição INFO-1239: correlação 74.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001240", "SKU-GEN-008674" },
    notes = "Ver procedimento PROC-L1-01240 se aplicável.",
    gen_id = 1239,
}
_DR["G01240"] = {
    title = "Condição ENGINE-1240: correlação 72.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001241", "SKU-GEN-008681" },
    notes = "Ver procedimento PROC-L1-01241 se aplicável.",
    gen_id = 1240,
}
_DR["G01241"] = {
    title = "Condição ABS-1241: correlação 23.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001242", "SKU-GEN-008688" },
    notes = "Ver procedimento PROC-L1-01242 se aplicável.",
    gen_id = 1241,
}
_DR["G01242"] = {
    title = "Condição SRS-1242: correlação 79.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001243", "SKU-GEN-008695" },
    notes = "Ver procedimento PROC-L1-01243 se aplicável.",
    gen_id = 1242,
}
_DR["G01243"] = {
    title = "Condição CLIMATE-1243: correlação 86.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001244", "SKU-GEN-008702" },
    notes = "Ver procedimento PROC-L1-01244 se aplicável.",
    gen_id = 1243,
}
_DR["G01244"] = {
    title = "Condição TRANS-1244: correlação 86.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001245", "SKU-GEN-008709" },
    notes = "Ver procedimento PROC-L1-01245 se aplicável.",
    gen_id = 1244,
}
_DR["G01245"] = {
    title = "Condição FUEL-1245: correlação 6.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001246", "SKU-GEN-008716" },
    notes = "Ver procedimento PROC-L1-01246 se aplicável.",
    gen_id = 1245,
}
_DR["G01246"] = {
    title = "Condição STEER-1246: correlação 56.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001247", "SKU-GEN-008723" },
    notes = "Ver procedimento PROC-L1-01247 se aplicável.",
    gen_id = 1246,
}
_DR["G01247"] = {
    title = "Condição HV-1247: correlação 1.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001248", "SKU-GEN-008730" },
    notes = "Ver procedimento PROC-L1-01248 se aplicável.",
    gen_id = 1247,
}
_DR["G01248"] = {
    title = "Condição BODY-1248: correlação 36.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001249", "SKU-GEN-008737" },
    notes = "Ver procedimento PROC-L1-01249 se aplicável.",
    gen_id = 1248,
}
_DR["G01249"] = {
    title = "Condição INFO-1249: correlação 14.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001250", "SKU-GEN-008744" },
    notes = "Ver procedimento PROC-L1-01250 se aplicável.",
    gen_id = 1249,
}
_DR["G01250"] = {
    title = "Condição ENGINE-1250: correlação 62.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001251", "SKU-GEN-008751" },
    notes = "Ver procedimento PROC-L1-01251 se aplicável.",
    gen_id = 1250,
}
_DR["G01251"] = {
    title = "Condição ABS-1251: correlação 35.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001252", "SKU-GEN-008758" },
    notes = "Ver procedimento PROC-L1-01252 se aplicável.",
    gen_id = 1251,
}
_DR["G01252"] = {
    title = "Condição SRS-1252: correlação 98.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001253", "SKU-GEN-008765" },
    notes = "Ver procedimento PROC-L1-01253 se aplicável.",
    gen_id = 1252,
}
_DR["G01253"] = {
    title = "Condição CLIMATE-1253: correlação 2.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001254", "SKU-GEN-008772" },
    notes = "Ver procedimento PROC-L1-01254 se aplicável.",
    gen_id = 1253,
}
_DR["G01254"] = {
    title = "Condição TRANS-1254: correlação 23.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001255", "SKU-GEN-008779" },
    notes = "Ver procedimento PROC-L1-01255 se aplicável.",
    gen_id = 1254,
}
_DR["G01255"] = {
    title = "Condição FUEL-1255: correlação 53.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001256", "SKU-GEN-008786" },
    notes = "Ver procedimento PROC-L1-01256 se aplicável.",
    gen_id = 1255,
}
_DR["G01256"] = {
    title = "Condição STEER-1256: correlação 82.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001257", "SKU-GEN-008793" },
    notes = "Ver procedimento PROC-L1-01257 se aplicável.",
    gen_id = 1256,
}
_DR["G01257"] = {
    title = "Condição HV-1257: correlação 59.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001258", "SKU-GEN-008800" },
    notes = "Ver procedimento PROC-L1-01258 se aplicável.",
    gen_id = 1257,
}
_DR["G01258"] = {
    title = "Condição BODY-1258: correlação 67.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001259", "SKU-GEN-008807" },
    notes = "Ver procedimento PROC-L1-01259 se aplicável.",
    gen_id = 1258,
}
_DR["G01259"] = {
    title = "Condição INFO-1259: correlação 34.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001260", "SKU-GEN-008814" },
    notes = "Ver procedimento PROC-L1-01260 se aplicável.",
    gen_id = 1259,
}
_DR["G01260"] = {
    title = "Condição ENGINE-1260: correlação 52.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001261", "SKU-GEN-008821" },
    notes = "Ver procedimento PROC-L1-01261 se aplicável.",
    gen_id = 1260,
}
_DR["G01261"] = {
    title = "Condição ABS-1261: correlação 0.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001262", "SKU-GEN-008828" },
    notes = "Ver procedimento PROC-L1-01262 se aplicável.",
    gen_id = 1261,
}
_DR["G01262"] = {
    title = "Condição SRS-1262: correlação 81.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001263", "SKU-GEN-008835" },
    notes = "Ver procedimento PROC-L1-01263 se aplicável.",
    gen_id = 1262,
}
_DR["G01263"] = {
    title = "Condição CLIMATE-1263: correlação 20.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001264", "SKU-GEN-008842" },
    notes = "Ver procedimento PROC-L1-01264 se aplicável.",
    gen_id = 1263,
}
_DR["G01264"] = {
    title = "Condição TRANS-1264: correlação 25.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001265", "SKU-GEN-008849" },
    notes = "Ver procedimento PROC-L1-01265 se aplicável.",
    gen_id = 1264,
}
_DR["G01265"] = {
    title = "Condição FUEL-1265: correlação 74.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001266", "SKU-GEN-008856" },
    notes = "Ver procedimento PROC-L1-01266 se aplicável.",
    gen_id = 1265,
}
_DR["G01266"] = {
    title = "Condição STEER-1266: correlação 89.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001267", "SKU-GEN-008863" },
    notes = "Ver procedimento PROC-L1-01267 se aplicável.",
    gen_id = 1266,
}
_DR["G01267"] = {
    title = "Condição HV-1267: correlação 77.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001268", "SKU-GEN-008870" },
    notes = "Ver procedimento PROC-L1-01268 se aplicável.",
    gen_id = 1267,
}
_DR["G01268"] = {
    title = "Condição BODY-1268: correlação 35.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001269", "SKU-GEN-008877" },
    notes = "Ver procedimento PROC-L1-01269 se aplicável.",
    gen_id = 1268,
}
_DR["G01269"] = {
    title = "Condição INFO-1269: correlação 93.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001270", "SKU-GEN-008884" },
    notes = "Ver procedimento PROC-L1-01270 se aplicável.",
    gen_id = 1269,
}
_DR["G01270"] = {
    title = "Condição ENGINE-1270: correlação 39.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001271", "SKU-GEN-008891" },
    notes = "Ver procedimento PROC-L1-01271 se aplicável.",
    gen_id = 1270,
}
_DR["G01271"] = {
    title = "Condição ABS-1271: correlação 46.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001272", "SKU-GEN-008898" },
    notes = "Ver procedimento PROC-L1-01272 se aplicável.",
    gen_id = 1271,
}
_DR["G01272"] = {
    title = "Condição SRS-1272: correlação 11.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001273", "SKU-GEN-008905" },
    notes = "Ver procedimento PROC-L1-01273 se aplicável.",
    gen_id = 1272,
}
_DR["G01273"] = {
    title = "Condição CLIMATE-1273: correlação 11.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001274", "SKU-GEN-008912" },
    notes = "Ver procedimento PROC-L1-01274 se aplicável.",
    gen_id = 1273,
}
_DR["G01274"] = {
    title = "Condição TRANS-1274: correlação 72.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001275", "SKU-GEN-008919" },
    notes = "Ver procedimento PROC-L1-01275 se aplicável.",
    gen_id = 1274,
}
_DR["G01275"] = {
    title = "Condição FUEL-1275: correlação 52.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001276", "SKU-GEN-008926" },
    notes = "Ver procedimento PROC-L1-01276 se aplicável.",
    gen_id = 1275,
}
_DR["G01276"] = {
    title = "Condição STEER-1276: correlação 17.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001277", "SKU-GEN-008933" },
    notes = "Ver procedimento PROC-L1-01277 se aplicável.",
    gen_id = 1276,
}
_DR["G01277"] = {
    title = "Condição HV-1277: correlação 97.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001278", "SKU-GEN-008940" },
    notes = "Ver procedimento PROC-L1-01278 se aplicável.",
    gen_id = 1277,
}
_DR["G01278"] = {
    title = "Condição BODY-1278: correlação 24.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001279", "SKU-GEN-008947" },
    notes = "Ver procedimento PROC-L1-01279 se aplicável.",
    gen_id = 1278,
}
_DR["G01279"] = {
    title = "Condição INFO-1279: correlação 10.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001280", "SKU-GEN-008954" },
    notes = "Ver procedimento PROC-L1-01280 se aplicável.",
    gen_id = 1279,
}
_DR["G01280"] = {
    title = "Condição ENGINE-1280: correlação 38.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001281", "SKU-GEN-008961" },
    notes = "Ver procedimento PROC-L1-01281 se aplicável.",
    gen_id = 1280,
}
_DR["G01281"] = {
    title = "Condição ABS-1281: correlação 92.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001282", "SKU-GEN-008968" },
    notes = "Ver procedimento PROC-L1-01282 se aplicável.",
    gen_id = 1281,
}
_DR["G01282"] = {
    title = "Condição SRS-1282: correlação 73.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001283", "SKU-GEN-008975" },
    notes = "Ver procedimento PROC-L1-01283 se aplicável.",
    gen_id = 1282,
}
_DR["G01283"] = {
    title = "Condição CLIMATE-1283: correlação 45.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001284", "SKU-GEN-008982" },
    notes = "Ver procedimento PROC-L1-01284 se aplicável.",
    gen_id = 1283,
}
_DR["G01284"] = {
    title = "Condição TRANS-1284: correlação 30.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001285", "SKU-GEN-008989" },
    notes = "Ver procedimento PROC-L1-01285 se aplicável.",
    gen_id = 1284,
}
_DR["G01285"] = {
    title = "Condição FUEL-1285: correlação 38.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001286", "SKU-GEN-008996" },
    notes = "Ver procedimento PROC-L1-01286 se aplicável.",
    gen_id = 1285,
}
_DR["G01286"] = {
    title = "Condição STEER-1286: correlação 35.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001287", "SKU-GEN-000003" },
    notes = "Ver procedimento PROC-L1-01287 se aplicável.",
    gen_id = 1286,
}
_DR["G01287"] = {
    title = "Condição HV-1287: correlação 8.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001288", "SKU-GEN-000010" },
    notes = "Ver procedimento PROC-L1-01288 se aplicável.",
    gen_id = 1287,
}
_DR["G01288"] = {
    title = "Condição BODY-1288: correlação 50.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001289", "SKU-GEN-000017" },
    notes = "Ver procedimento PROC-L1-01289 se aplicável.",
    gen_id = 1288,
}
_DR["G01289"] = {
    title = "Condição INFO-1289: correlação 7.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001290", "SKU-GEN-000024" },
    notes = "Ver procedimento PROC-L1-01290 se aplicável.",
    gen_id = 1289,
}
_DR["G01290"] = {
    title = "Condição ENGINE-1290: correlação 67.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001291", "SKU-GEN-000031" },
    notes = "Ver procedimento PROC-L1-01291 se aplicável.",
    gen_id = 1290,
}
_DR["G01291"] = {
    title = "Condição ABS-1291: correlação 58.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001292", "SKU-GEN-000038" },
    notes = "Ver procedimento PROC-L1-01292 se aplicável.",
    gen_id = 1291,
}
_DR["G01292"] = {
    title = "Condição SRS-1292: correlação 38.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001293", "SKU-GEN-000045" },
    notes = "Ver procedimento PROC-L1-01293 se aplicável.",
    gen_id = 1292,
}
_DR["G01293"] = {
    title = "Condição CLIMATE-1293: correlação 99.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001294", "SKU-GEN-000052" },
    notes = "Ver procedimento PROC-L1-01294 se aplicável.",
    gen_id = 1293,
}
_DR["G01294"] = {
    title = "Condição TRANS-1294: correlação 39.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001295", "SKU-GEN-000059" },
    notes = "Ver procedimento PROC-L1-01295 se aplicável.",
    gen_id = 1294,
}
_DR["G01295"] = {
    title = "Condição FUEL-1295: correlação 46.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001296", "SKU-GEN-000066" },
    notes = "Ver procedimento PROC-L1-01296 se aplicável.",
    gen_id = 1295,
}
_DR["G01296"] = {
    title = "Condição STEER-1296: correlação 25.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001297", "SKU-GEN-000073" },
    notes = "Ver procedimento PROC-L1-01297 se aplicável.",
    gen_id = 1296,
}
_DR["G01297"] = {
    title = "Condição HV-1297: correlação 55.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001298", "SKU-GEN-000080" },
    notes = "Ver procedimento PROC-L1-01298 se aplicável.",
    gen_id = 1297,
}
_DR["G01298"] = {
    title = "Condição BODY-1298: correlação 77.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001299", "SKU-GEN-000087" },
    notes = "Ver procedimento PROC-L1-01299 se aplicável.",
    gen_id = 1298,
}
_DR["G01299"] = {
    title = "Condição INFO-1299: correlação 22.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001300", "SKU-GEN-000094" },
    notes = "Ver procedimento PROC-L1-01300 se aplicável.",
    gen_id = 1299,
}
_DR["G01300"] = {
    title = "Condição ENGINE-1300: correlação 80.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001301", "SKU-GEN-000101" },
    notes = "Ver procedimento PROC-L1-01301 se aplicável.",
    gen_id = 1300,
}
_DR["G01301"] = {
    title = "Condição ABS-1301: correlação 20.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001302", "SKU-GEN-000108" },
    notes = "Ver procedimento PROC-L1-01302 se aplicável.",
    gen_id = 1301,
}
_DR["G01302"] = {
    title = "Condição SRS-1302: correlação 91.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001303", "SKU-GEN-000115" },
    notes = "Ver procedimento PROC-L1-01303 se aplicável.",
    gen_id = 1302,
}
_DR["G01303"] = {
    title = "Condição CLIMATE-1303: correlação 37.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001304", "SKU-GEN-000122" },
    notes = "Ver procedimento PROC-L1-01304 se aplicável.",
    gen_id = 1303,
}
_DR["G01304"] = {
    title = "Condição TRANS-1304: correlação 29.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001305", "SKU-GEN-000129" },
    notes = "Ver procedimento PROC-L1-01305 se aplicável.",
    gen_id = 1304,
}
_DR["G01305"] = {
    title = "Condição FUEL-1305: correlação 53.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001306", "SKU-GEN-000136" },
    notes = "Ver procedimento PROC-L1-01306 se aplicável.",
    gen_id = 1305,
}
_DR["G01306"] = {
    title = "Condição STEER-1306: correlação 39.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001307", "SKU-GEN-000143" },
    notes = "Ver procedimento PROC-L1-01307 se aplicável.",
    gen_id = 1306,
}
_DR["G01307"] = {
    title = "Condição HV-1307: correlação 28.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001308", "SKU-GEN-000150" },
    notes = "Ver procedimento PROC-L1-01308 se aplicável.",
    gen_id = 1307,
}
_DR["G01308"] = {
    title = "Condição BODY-1308: correlação 97.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001309", "SKU-GEN-000157" },
    notes = "Ver procedimento PROC-L1-01309 se aplicável.",
    gen_id = 1308,
}
_DR["G01309"] = {
    title = "Condição INFO-1309: correlação 59.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001310", "SKU-GEN-000164" },
    notes = "Ver procedimento PROC-L1-01310 se aplicável.",
    gen_id = 1309,
}
_DR["G01310"] = {
    title = "Condição ENGINE-1310: correlação 90.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001311", "SKU-GEN-000171" },
    notes = "Ver procedimento PROC-L1-01311 se aplicável.",
    gen_id = 1310,
}
_DR["G01311"] = {
    title = "Condição ABS-1311: correlação 3.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001312", "SKU-GEN-000178" },
    notes = "Ver procedimento PROC-L1-01312 se aplicável.",
    gen_id = 1311,
}
_DR["G01312"] = {
    title = "Condição SRS-1312: correlação 66.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001313", "SKU-GEN-000185" },
    notes = "Ver procedimento PROC-L1-01313 se aplicável.",
    gen_id = 1312,
}
_DR["G01313"] = {
    title = "Condição CLIMATE-1313: correlação 99.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001314", "SKU-GEN-000192" },
    notes = "Ver procedimento PROC-L1-01314 se aplicável.",
    gen_id = 1313,
}
_DR["G01314"] = {
    title = "Condição TRANS-1314: correlação 95.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001315", "SKU-GEN-000199" },
    notes = "Ver procedimento PROC-L1-01315 se aplicável.",
    gen_id = 1314,
}
_DR["G01315"] = {
    title = "Condição FUEL-1315: correlação 55.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001316", "SKU-GEN-000206" },
    notes = "Ver procedimento PROC-L1-01316 se aplicável.",
    gen_id = 1315,
}
_DR["G01316"] = {
    title = "Condição STEER-1316: correlação 45.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001317", "SKU-GEN-000213" },
    notes = "Ver procedimento PROC-L1-01317 se aplicável.",
    gen_id = 1316,
}
_DR["G01317"] = {
    title = "Condição HV-1317: correlação 2.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001318", "SKU-GEN-000220" },
    notes = "Ver procedimento PROC-L1-01318 se aplicável.",
    gen_id = 1317,
}
_DR["G01318"] = {
    title = "Condição BODY-1318: correlação 65.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001319", "SKU-GEN-000227" },
    notes = "Ver procedimento PROC-L1-01319 se aplicável.",
    gen_id = 1318,
}
_DR["G01319"] = {
    title = "Condição INFO-1319: correlação 84.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001320", "SKU-GEN-000234" },
    notes = "Ver procedimento PROC-L1-01320 se aplicável.",
    gen_id = 1319,
}
_DR["G01320"] = {
    title = "Condição ENGINE-1320: correlação 98.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001321", "SKU-GEN-000241" },
    notes = "Ver procedimento PROC-L1-01321 se aplicável.",
    gen_id = 1320,
}
_DR["G01321"] = {
    title = "Condição ABS-1321: correlação 83.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001322", "SKU-GEN-000248" },
    notes = "Ver procedimento PROC-L1-01322 se aplicável.",
    gen_id = 1321,
}
_DR["G01322"] = {
    title = "Condição SRS-1322: correlação 23.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001323", "SKU-GEN-000255" },
    notes = "Ver procedimento PROC-L1-01323 se aplicável.",
    gen_id = 1322,
}
_DR["G01323"] = {
    title = "Condição CLIMATE-1323: correlação 6.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001324", "SKU-GEN-000262" },
    notes = "Ver procedimento PROC-L1-01324 se aplicável.",
    gen_id = 1323,
}
_DR["G01324"] = {
    title = "Condição TRANS-1324: correlação 79.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001325", "SKU-GEN-000269" },
    notes = "Ver procedimento PROC-L1-01325 se aplicável.",
    gen_id = 1324,
}
_DR["G01325"] = {
    title = "Condição FUEL-1325: correlação 37.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001326", "SKU-GEN-000276" },
    notes = "Ver procedimento PROC-L1-01326 se aplicável.",
    gen_id = 1325,
}
_DR["G01326"] = {
    title = "Condição STEER-1326: correlação 87.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001327", "SKU-GEN-000283" },
    notes = "Ver procedimento PROC-L1-01327 se aplicável.",
    gen_id = 1326,
}
_DR["G01327"] = {
    title = "Condição HV-1327: correlação 59.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001328", "SKU-GEN-000290" },
    notes = "Ver procedimento PROC-L1-01328 se aplicável.",
    gen_id = 1327,
}
_DR["G01328"] = {
    title = "Condição BODY-1328: correlação 54.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001329", "SKU-GEN-000297" },
    notes = "Ver procedimento PROC-L1-01329 se aplicável.",
    gen_id = 1328,
}
_DR["G01329"] = {
    title = "Condição INFO-1329: correlação 70.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001330", "SKU-GEN-000304" },
    notes = "Ver procedimento PROC-L1-01330 se aplicável.",
    gen_id = 1329,
}
_DR["G01330"] = {
    title = "Condição ENGINE-1330: correlação 87.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001331", "SKU-GEN-000311" },
    notes = "Ver procedimento PROC-L1-01331 se aplicável.",
    gen_id = 1330,
}
_DR["G01331"] = {
    title = "Condição ABS-1331: correlação 59.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001332", "SKU-GEN-000318" },
    notes = "Ver procedimento PROC-L1-01332 se aplicável.",
    gen_id = 1331,
}
_DR["G01332"] = {
    title = "Condição SRS-1332: correlação 29.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001333", "SKU-GEN-000325" },
    notes = "Ver procedimento PROC-L1-01333 se aplicável.",
    gen_id = 1332,
}
_DR["G01333"] = {
    title = "Condição CLIMATE-1333: correlação 81.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001334", "SKU-GEN-000332" },
    notes = "Ver procedimento PROC-L1-01334 se aplicável.",
    gen_id = 1333,
}
_DR["G01334"] = {
    title = "Condição TRANS-1334: correlação 23.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001335", "SKU-GEN-000339" },
    notes = "Ver procedimento PROC-L1-01335 se aplicável.",
    gen_id = 1334,
}
_DR["G01335"] = {
    title = "Condição FUEL-1335: correlação 59.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001336", "SKU-GEN-000346" },
    notes = "Ver procedimento PROC-L1-01336 se aplicável.",
    gen_id = 1335,
}
_DR["G01336"] = {
    title = "Condição STEER-1336: correlação 12.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001337", "SKU-GEN-000353" },
    notes = "Ver procedimento PROC-L1-01337 se aplicável.",
    gen_id = 1336,
}
_DR["G01337"] = {
    title = "Condição HV-1337: correlação 19.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001338", "SKU-GEN-000360" },
    notes = "Ver procedimento PROC-L1-01338 se aplicável.",
    gen_id = 1337,
}
_DR["G01338"] = {
    title = "Condição BODY-1338: correlação 33.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001339", "SKU-GEN-000367" },
    notes = "Ver procedimento PROC-L1-01339 se aplicável.",
    gen_id = 1338,
}
_DR["G01339"] = {
    title = "Condição INFO-1339: correlação 7.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001340", "SKU-GEN-000374" },
    notes = "Ver procedimento PROC-L1-01340 se aplicável.",
    gen_id = 1339,
}
_DR["G01340"] = {
    title = "Condição ENGINE-1340: correlação 53.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001341", "SKU-GEN-000381" },
    notes = "Ver procedimento PROC-L1-01341 se aplicável.",
    gen_id = 1340,
}
_DR["G01341"] = {
    title = "Condição ABS-1341: correlação 59.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001342", "SKU-GEN-000388" },
    notes = "Ver procedimento PROC-L1-01342 se aplicável.",
    gen_id = 1341,
}
_DR["G01342"] = {
    title = "Condição SRS-1342: correlação 11.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001343", "SKU-GEN-000395" },
    notes = "Ver procedimento PROC-L1-01343 se aplicável.",
    gen_id = 1342,
}
_DR["G01343"] = {
    title = "Condição CLIMATE-1343: correlação 5.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001344", "SKU-GEN-000402" },
    notes = "Ver procedimento PROC-L1-01344 se aplicável.",
    gen_id = 1343,
}
_DR["G01344"] = {
    title = "Condição TRANS-1344: correlação 74.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001345", "SKU-GEN-000409" },
    notes = "Ver procedimento PROC-L1-01345 se aplicável.",
    gen_id = 1344,
}
_DR["G01345"] = {
    title = "Condição FUEL-1345: correlação 79.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001346", "SKU-GEN-000416" },
    notes = "Ver procedimento PROC-L1-01346 se aplicável.",
    gen_id = 1345,
}
_DR["G01346"] = {
    title = "Condição STEER-1346: correlação 3.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001347", "SKU-GEN-000423" },
    notes = "Ver procedimento PROC-L1-01347 se aplicável.",
    gen_id = 1346,
}
_DR["G01347"] = {
    title = "Condição HV-1347: correlação 25.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001348", "SKU-GEN-000430" },
    notes = "Ver procedimento PROC-L1-01348 se aplicável.",
    gen_id = 1347,
}
_DR["G01348"] = {
    title = "Condição BODY-1348: correlação 66.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001349", "SKU-GEN-000437" },
    notes = "Ver procedimento PROC-L1-01349 se aplicável.",
    gen_id = 1348,
}
_DR["G01349"] = {
    title = "Condição INFO-1349: correlação 47.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001350", "SKU-GEN-000444" },
    notes = "Ver procedimento PROC-L1-01350 se aplicável.",
    gen_id = 1349,
}
_DR["G01350"] = {
    title = "Condição ENGINE-1350: correlação 71.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001351", "SKU-GEN-000451" },
    notes = "Ver procedimento PROC-L1-01351 se aplicável.",
    gen_id = 1350,
}
_DR["G01351"] = {
    title = "Condição ABS-1351: correlação 35.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001352", "SKU-GEN-000458" },
    notes = "Ver procedimento PROC-L1-01352 se aplicável.",
    gen_id = 1351,
}
_DR["G01352"] = {
    title = "Condição SRS-1352: correlação 9.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001353", "SKU-GEN-000465" },
    notes = "Ver procedimento PROC-L1-01353 se aplicável.",
    gen_id = 1352,
}
_DR["G01353"] = {
    title = "Condição CLIMATE-1353: correlação 25.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001354", "SKU-GEN-000472" },
    notes = "Ver procedimento PROC-L1-01354 se aplicável.",
    gen_id = 1353,
}
_DR["G01354"] = {
    title = "Condição TRANS-1354: correlação 92.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001355", "SKU-GEN-000479" },
    notes = "Ver procedimento PROC-L1-01355 se aplicável.",
    gen_id = 1354,
}
_DR["G01355"] = {
    title = "Condição FUEL-1355: correlação 24.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001356", "SKU-GEN-000486" },
    notes = "Ver procedimento PROC-L1-01356 se aplicável.",
    gen_id = 1355,
}
_DR["G01356"] = {
    title = "Condição STEER-1356: correlação 58.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001357", "SKU-GEN-000493" },
    notes = "Ver procedimento PROC-L1-01357 se aplicável.",
    gen_id = 1356,
}
_DR["G01357"] = {
    title = "Condição HV-1357: correlação 67.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001358", "SKU-GEN-000500" },
    notes = "Ver procedimento PROC-L1-01358 se aplicável.",
    gen_id = 1357,
}
_DR["G01358"] = {
    title = "Condição BODY-1358: correlação 49.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001359", "SKU-GEN-000507" },
    notes = "Ver procedimento PROC-L1-01359 se aplicável.",
    gen_id = 1358,
}
_DR["G01359"] = {
    title = "Condição INFO-1359: correlação 48.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001360", "SKU-GEN-000514" },
    notes = "Ver procedimento PROC-L1-01360 se aplicável.",
    gen_id = 1359,
}
_DR["G01360"] = {
    title = "Condição ENGINE-1360: correlação 87.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001361", "SKU-GEN-000521" },
    notes = "Ver procedimento PROC-L1-01361 se aplicável.",
    gen_id = 1360,
}
_DR["G01361"] = {
    title = "Condição ABS-1361: correlação 60.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001362", "SKU-GEN-000528" },
    notes = "Ver procedimento PROC-L1-01362 se aplicável.",
    gen_id = 1361,
}
_DR["G01362"] = {
    title = "Condição SRS-1362: correlação 23.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001363", "SKU-GEN-000535" },
    notes = "Ver procedimento PROC-L1-01363 se aplicável.",
    gen_id = 1362,
}
_DR["G01363"] = {
    title = "Condição CLIMATE-1363: correlação 26.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001364", "SKU-GEN-000542" },
    notes = "Ver procedimento PROC-L1-01364 se aplicável.",
    gen_id = 1363,
}
_DR["G01364"] = {
    title = "Condição TRANS-1364: correlação 92.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001365", "SKU-GEN-000549" },
    notes = "Ver procedimento PROC-L1-01365 se aplicável.",
    gen_id = 1364,
}
_DR["G01365"] = {
    title = "Condição FUEL-1365: correlação 37.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001366", "SKU-GEN-000556" },
    notes = "Ver procedimento PROC-L1-01366 se aplicável.",
    gen_id = 1365,
}
_DR["G01366"] = {
    title = "Condição STEER-1366: correlação 86.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001367", "SKU-GEN-000563" },
    notes = "Ver procedimento PROC-L1-01367 se aplicável.",
    gen_id = 1366,
}
_DR["G01367"] = {
    title = "Condição HV-1367: correlação 54.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001368", "SKU-GEN-000570" },
    notes = "Ver procedimento PROC-L1-01368 se aplicável.",
    gen_id = 1367,
}
_DR["G01368"] = {
    title = "Condição BODY-1368: correlação 92.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001369", "SKU-GEN-000577" },
    notes = "Ver procedimento PROC-L1-01369 se aplicável.",
    gen_id = 1368,
}
_DR["G01369"] = {
    title = "Condição INFO-1369: correlação 66.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001370", "SKU-GEN-000584" },
    notes = "Ver procedimento PROC-L1-01370 se aplicável.",
    gen_id = 1369,
}
_DR["G01370"] = {
    title = "Condição ENGINE-1370: correlação 65.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001371", "SKU-GEN-000591" },
    notes = "Ver procedimento PROC-L1-01371 se aplicável.",
    gen_id = 1370,
}
_DR["G01371"] = {
    title = "Condição ABS-1371: correlação 34.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001372", "SKU-GEN-000598" },
    notes = "Ver procedimento PROC-L1-01372 se aplicável.",
    gen_id = 1371,
}
_DR["G01372"] = {
    title = "Condição SRS-1372: correlação 79.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001373", "SKU-GEN-000605" },
    notes = "Ver procedimento PROC-L1-01373 se aplicável.",
    gen_id = 1372,
}
_DR["G01373"] = {
    title = "Condição CLIMATE-1373: correlação 80.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001374", "SKU-GEN-000612" },
    notes = "Ver procedimento PROC-L1-01374 se aplicável.",
    gen_id = 1373,
}
_DR["G01374"] = {
    title = "Condição TRANS-1374: correlação 25.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001375", "SKU-GEN-000619" },
    notes = "Ver procedimento PROC-L1-01375 se aplicável.",
    gen_id = 1374,
}
_DR["G01375"] = {
    title = "Condição FUEL-1375: correlação 20.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001376", "SKU-GEN-000626" },
    notes = "Ver procedimento PROC-L1-01376 se aplicável.",
    gen_id = 1375,
}
_DR["G01376"] = {
    title = "Condição STEER-1376: correlação 11.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001377", "SKU-GEN-000633" },
    notes = "Ver procedimento PROC-L1-01377 se aplicável.",
    gen_id = 1376,
}
_DR["G01377"] = {
    title = "Condição HV-1377: correlação 20.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001378", "SKU-GEN-000640" },
    notes = "Ver procedimento PROC-L1-01378 se aplicável.",
    gen_id = 1377,
}
_DR["G01378"] = {
    title = "Condição BODY-1378: correlação 80.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001379", "SKU-GEN-000647" },
    notes = "Ver procedimento PROC-L1-01379 se aplicável.",
    gen_id = 1378,
}
_DR["G01379"] = {
    title = "Condição INFO-1379: correlação 20.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001380", "SKU-GEN-000654" },
    notes = "Ver procedimento PROC-L1-01380 se aplicável.",
    gen_id = 1379,
}
_DR["G01380"] = {
    title = "Condição ENGINE-1380: correlação 37.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001381", "SKU-GEN-000661" },
    notes = "Ver procedimento PROC-L1-01381 se aplicável.",
    gen_id = 1380,
}
_DR["G01381"] = {
    title = "Condição ABS-1381: correlação 91.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001382", "SKU-GEN-000668" },
    notes = "Ver procedimento PROC-L1-01382 se aplicável.",
    gen_id = 1381,
}
_DR["G01382"] = {
    title = "Condição SRS-1382: correlação 46.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001383", "SKU-GEN-000675" },
    notes = "Ver procedimento PROC-L1-01383 se aplicável.",
    gen_id = 1382,
}
_DR["G01383"] = {
    title = "Condição CLIMATE-1383: correlação 36.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001384", "SKU-GEN-000682" },
    notes = "Ver procedimento PROC-L1-01384 se aplicável.",
    gen_id = 1383,
}
_DR["G01384"] = {
    title = "Condição TRANS-1384: correlação 11.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001385", "SKU-GEN-000689" },
    notes = "Ver procedimento PROC-L1-01385 se aplicável.",
    gen_id = 1384,
}
_DR["G01385"] = {
    title = "Condição FUEL-1385: correlação 60.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001386", "SKU-GEN-000696" },
    notes = "Ver procedimento PROC-L1-01386 se aplicável.",
    gen_id = 1385,
}
_DR["G01386"] = {
    title = "Condição STEER-1386: correlação 90.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001387", "SKU-GEN-000703" },
    notes = "Ver procedimento PROC-L1-01387 se aplicável.",
    gen_id = 1386,
}
_DR["G01387"] = {
    title = "Condição HV-1387: correlação 6.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001388", "SKU-GEN-000710" },
    notes = "Ver procedimento PROC-L1-01388 se aplicável.",
    gen_id = 1387,
}
_DR["G01388"] = {
    title = "Condição BODY-1388: correlação 32.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001389", "SKU-GEN-000717" },
    notes = "Ver procedimento PROC-L1-01389 se aplicável.",
    gen_id = 1388,
}
_DR["G01389"] = {
    title = "Condição INFO-1389: correlação 51.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001390", "SKU-GEN-000724" },
    notes = "Ver procedimento PROC-L1-01390 se aplicável.",
    gen_id = 1389,
}
_DR["G01390"] = {
    title = "Condição ENGINE-1390: correlação 31.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001391", "SKU-GEN-000731" },
    notes = "Ver procedimento PROC-L1-01391 se aplicável.",
    gen_id = 1390,
}
_DR["G01391"] = {
    title = "Condição ABS-1391: correlação 79.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001392", "SKU-GEN-000738" },
    notes = "Ver procedimento PROC-L1-01392 se aplicável.",
    gen_id = 1391,
}
_DR["G01392"] = {
    title = "Condição SRS-1392: correlação 98.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001393", "SKU-GEN-000745" },
    notes = "Ver procedimento PROC-L1-01393 se aplicável.",
    gen_id = 1392,
}
_DR["G01393"] = {
    title = "Condição CLIMATE-1393: correlação 5.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001394", "SKU-GEN-000752" },
    notes = "Ver procedimento PROC-L1-01394 se aplicável.",
    gen_id = 1393,
}
_DR["G01394"] = {
    title = "Condição TRANS-1394: correlação 96.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001395", "SKU-GEN-000759" },
    notes = "Ver procedimento PROC-L1-01395 se aplicável.",
    gen_id = 1394,
}
_DR["G01395"] = {
    title = "Condição FUEL-1395: correlação 62.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001396", "SKU-GEN-000766" },
    notes = "Ver procedimento PROC-L1-01396 se aplicável.",
    gen_id = 1395,
}
_DR["G01396"] = {
    title = "Condição STEER-1396: correlação 98.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001397", "SKU-GEN-000773" },
    notes = "Ver procedimento PROC-L1-01397 se aplicável.",
    gen_id = 1396,
}
_DR["G01397"] = {
    title = "Condição HV-1397: correlação 11.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001398", "SKU-GEN-000780" },
    notes = "Ver procedimento PROC-L1-01398 se aplicável.",
    gen_id = 1397,
}
_DR["G01398"] = {
    title = "Condição BODY-1398: correlação 62.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001399", "SKU-GEN-000787" },
    notes = "Ver procedimento PROC-L1-01399 se aplicável.",
    gen_id = 1398,
}
_DR["G01399"] = {
    title = "Condição INFO-1399: correlação 85.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001400", "SKU-GEN-000794" },
    notes = "Ver procedimento PROC-L1-01400 se aplicável.",
    gen_id = 1399,
}
_DR["G01400"] = {
    title = "Condição ENGINE-1400: correlação 46.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001401", "SKU-GEN-000801" },
    notes = "Ver procedimento PROC-L1-01401 se aplicável.",
    gen_id = 1400,
}
_DR["G01401"] = {
    title = "Condição ABS-1401: correlação 39.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001402", "SKU-GEN-000808" },
    notes = "Ver procedimento PROC-L1-01402 se aplicável.",
    gen_id = 1401,
}
_DR["G01402"] = {
    title = "Condição SRS-1402: correlação 7.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001403", "SKU-GEN-000815" },
    notes = "Ver procedimento PROC-L1-01403 se aplicável.",
    gen_id = 1402,
}
_DR["G01403"] = {
    title = "Condição CLIMATE-1403: correlação 4.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001404", "SKU-GEN-000822" },
    notes = "Ver procedimento PROC-L1-01404 se aplicável.",
    gen_id = 1403,
}
_DR["G01404"] = {
    title = "Condição TRANS-1404: correlação 41.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001405", "SKU-GEN-000829" },
    notes = "Ver procedimento PROC-L1-01405 se aplicável.",
    gen_id = 1404,
}
_DR["G01405"] = {
    title = "Condição FUEL-1405: correlação 19.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001406", "SKU-GEN-000836" },
    notes = "Ver procedimento PROC-L1-01406 se aplicável.",
    gen_id = 1405,
}
_DR["G01406"] = {
    title = "Condição STEER-1406: correlação 55.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001407", "SKU-GEN-000843" },
    notes = "Ver procedimento PROC-L1-01407 se aplicável.",
    gen_id = 1406,
}
_DR["G01407"] = {
    title = "Condição HV-1407: correlação 25.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001408", "SKU-GEN-000850" },
    notes = "Ver procedimento PROC-L1-01408 se aplicável.",
    gen_id = 1407,
}
_DR["G01408"] = {
    title = "Condição BODY-1408: correlação 21.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001409", "SKU-GEN-000857" },
    notes = "Ver procedimento PROC-L1-01409 se aplicável.",
    gen_id = 1408,
}
_DR["G01409"] = {
    title = "Condição INFO-1409: correlação 46.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001410", "SKU-GEN-000864" },
    notes = "Ver procedimento PROC-L1-01410 se aplicável.",
    gen_id = 1409,
}
_DR["G01410"] = {
    title = "Condição ENGINE-1410: correlação 14.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001411", "SKU-GEN-000871" },
    notes = "Ver procedimento PROC-L1-01411 se aplicável.",
    gen_id = 1410,
}
_DR["G01411"] = {
    title = "Condição ABS-1411: correlação 4.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001412", "SKU-GEN-000878" },
    notes = "Ver procedimento PROC-L1-01412 se aplicável.",
    gen_id = 1411,
}
_DR["G01412"] = {
    title = "Condição SRS-1412: correlação 23.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001413", "SKU-GEN-000885" },
    notes = "Ver procedimento PROC-L1-01413 se aplicável.",
    gen_id = 1412,
}
_DR["G01413"] = {
    title = "Condição CLIMATE-1413: correlação 14.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001414", "SKU-GEN-000892" },
    notes = "Ver procedimento PROC-L1-01414 se aplicável.",
    gen_id = 1413,
}
_DR["G01414"] = {
    title = "Condição TRANS-1414: correlação 12.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001415", "SKU-GEN-000899" },
    notes = "Ver procedimento PROC-L1-01415 se aplicável.",
    gen_id = 1414,
}
_DR["G01415"] = {
    title = "Condição FUEL-1415: correlação 93.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001416", "SKU-GEN-000906" },
    notes = "Ver procedimento PROC-L1-01416 se aplicável.",
    gen_id = 1415,
}
_DR["G01416"] = {
    title = "Condição STEER-1416: correlação 81.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001417", "SKU-GEN-000913" },
    notes = "Ver procedimento PROC-L1-01417 se aplicável.",
    gen_id = 1416,
}
_DR["G01417"] = {
    title = "Condição HV-1417: correlação 2.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001418", "SKU-GEN-000920" },
    notes = "Ver procedimento PROC-L1-01418 se aplicável.",
    gen_id = 1417,
}
_DR["G01418"] = {
    title = "Condição BODY-1418: correlação 91.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001419", "SKU-GEN-000927" },
    notes = "Ver procedimento PROC-L1-01419 se aplicável.",
    gen_id = 1418,
}
_DR["G01419"] = {
    title = "Condição INFO-1419: correlação 98.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001420", "SKU-GEN-000934" },
    notes = "Ver procedimento PROC-L1-01420 se aplicável.",
    gen_id = 1419,
}
_DR["G01420"] = {
    title = "Condição ENGINE-1420: correlação 25.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001421", "SKU-GEN-000941" },
    notes = "Ver procedimento PROC-L1-01421 se aplicável.",
    gen_id = 1420,
}
_DR["G01421"] = {
    title = "Condição ABS-1421: correlação 69.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001422", "SKU-GEN-000948" },
    notes = "Ver procedimento PROC-L1-01422 se aplicável.",
    gen_id = 1421,
}
_DR["G01422"] = {
    title = "Condição SRS-1422: correlação 19.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001423", "SKU-GEN-000955" },
    notes = "Ver procedimento PROC-L1-01423 se aplicável.",
    gen_id = 1422,
}
_DR["G01423"] = {
    title = "Condição CLIMATE-1423: correlação 95.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001424", "SKU-GEN-000962" },
    notes = "Ver procedimento PROC-L1-01424 se aplicável.",
    gen_id = 1423,
}
_DR["G01424"] = {
    title = "Condição TRANS-1424: correlação 53.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001425", "SKU-GEN-000969" },
    notes = "Ver procedimento PROC-L1-01425 se aplicável.",
    gen_id = 1424,
}
_DR["G01425"] = {
    title = "Condição FUEL-1425: correlação 24.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001426", "SKU-GEN-000976" },
    notes = "Ver procedimento PROC-L1-01426 se aplicável.",
    gen_id = 1425,
}
_DR["G01426"] = {
    title = "Condição STEER-1426: correlação 26.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001427", "SKU-GEN-000983" },
    notes = "Ver procedimento PROC-L1-01427 se aplicável.",
    gen_id = 1426,
}
_DR["G01427"] = {
    title = "Condição HV-1427: correlação 8.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001428", "SKU-GEN-000990" },
    notes = "Ver procedimento PROC-L1-01428 se aplicável.",
    gen_id = 1427,
}
_DR["G01428"] = {
    title = "Condição BODY-1428: correlação 95.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001429", "SKU-GEN-000997" },
    notes = "Ver procedimento PROC-L1-01429 se aplicável.",
    gen_id = 1428,
}
_DR["G01429"] = {
    title = "Condição INFO-1429: correlação 91.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001430", "SKU-GEN-001004" },
    notes = "Ver procedimento PROC-L1-01430 se aplicável.",
    gen_id = 1429,
}
_DR["G01430"] = {
    title = "Condição ENGINE-1430: correlação 67.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001431", "SKU-GEN-001011" },
    notes = "Ver procedimento PROC-L1-01431 se aplicável.",
    gen_id = 1430,
}
_DR["G01431"] = {
    title = "Condição ABS-1431: correlação 47.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001432", "SKU-GEN-001018" },
    notes = "Ver procedimento PROC-L1-01432 se aplicável.",
    gen_id = 1431,
}
_DR["G01432"] = {
    title = "Condição SRS-1432: correlação 96.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001433", "SKU-GEN-001025" },
    notes = "Ver procedimento PROC-L1-01433 se aplicável.",
    gen_id = 1432,
}
_DR["G01433"] = {
    title = "Condição CLIMATE-1433: correlação 74.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001434", "SKU-GEN-001032" },
    notes = "Ver procedimento PROC-L1-01434 se aplicável.",
    gen_id = 1433,
}
_DR["G01434"] = {
    title = "Condição TRANS-1434: correlação 84.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001435", "SKU-GEN-001039" },
    notes = "Ver procedimento PROC-L1-01435 se aplicável.",
    gen_id = 1434,
}
_DR["G01435"] = {
    title = "Condição FUEL-1435: correlação 66.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001436", "SKU-GEN-001046" },
    notes = "Ver procedimento PROC-L1-01436 se aplicável.",
    gen_id = 1435,
}
_DR["G01436"] = {
    title = "Condição STEER-1436: correlação 75.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001437", "SKU-GEN-001053" },
    notes = "Ver procedimento PROC-L1-01437 se aplicável.",
    gen_id = 1436,
}
_DR["G01437"] = {
    title = "Condição HV-1437: correlação 85.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001438", "SKU-GEN-001060" },
    notes = "Ver procedimento PROC-L1-01438 se aplicável.",
    gen_id = 1437,
}
_DR["G01438"] = {
    title = "Condição BODY-1438: correlação 5.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001439", "SKU-GEN-001067" },
    notes = "Ver procedimento PROC-L1-01439 se aplicável.",
    gen_id = 1438,
}
_DR["G01439"] = {
    title = "Condição INFO-1439: correlação 77.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001440", "SKU-GEN-001074" },
    notes = "Ver procedimento PROC-L1-01440 se aplicável.",
    gen_id = 1439,
}
_DR["G01440"] = {
    title = "Condição ENGINE-1440: correlação 46.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001441", "SKU-GEN-001081" },
    notes = "Ver procedimento PROC-L1-01441 se aplicável.",
    gen_id = 1440,
}
_DR["G01441"] = {
    title = "Condição ABS-1441: correlação 20.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001442", "SKU-GEN-001088" },
    notes = "Ver procedimento PROC-L1-01442 se aplicável.",
    gen_id = 1441,
}
_DR["G01442"] = {
    title = "Condição SRS-1442: correlação 5.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001443", "SKU-GEN-001095" },
    notes = "Ver procedimento PROC-L1-01443 se aplicável.",
    gen_id = 1442,
}
_DR["G01443"] = {
    title = "Condição CLIMATE-1443: correlação 45.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001444", "SKU-GEN-001102" },
    notes = "Ver procedimento PROC-L1-01444 se aplicável.",
    gen_id = 1443,
}
_DR["G01444"] = {
    title = "Condição TRANS-1444: correlação 9.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001445", "SKU-GEN-001109" },
    notes = "Ver procedimento PROC-L1-01445 se aplicável.",
    gen_id = 1444,
}
_DR["G01445"] = {
    title = "Condição FUEL-1445: correlação 62.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001446", "SKU-GEN-001116" },
    notes = "Ver procedimento PROC-L1-01446 se aplicável.",
    gen_id = 1445,
}
_DR["G01446"] = {
    title = "Condição STEER-1446: correlação 27.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001447", "SKU-GEN-001123" },
    notes = "Ver procedimento PROC-L1-01447 se aplicável.",
    gen_id = 1446,
}
_DR["G01447"] = {
    title = "Condição HV-1447: correlação 36.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001448", "SKU-GEN-001130" },
    notes = "Ver procedimento PROC-L1-01448 se aplicável.",
    gen_id = 1447,
}
_DR["G01448"] = {
    title = "Condição BODY-1448: correlação 38.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001449", "SKU-GEN-001137" },
    notes = "Ver procedimento PROC-L1-01449 se aplicável.",
    gen_id = 1448,
}
_DR["G01449"] = {
    title = "Condição INFO-1449: correlação 58.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001450", "SKU-GEN-001144" },
    notes = "Ver procedimento PROC-L1-01450 se aplicável.",
    gen_id = 1449,
}
_DR["G01450"] = {
    title = "Condição ENGINE-1450: correlação 25.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001451", "SKU-GEN-001151" },
    notes = "Ver procedimento PROC-L1-01451 se aplicável.",
    gen_id = 1450,
}
_DR["G01451"] = {
    title = "Condição ABS-1451: correlação 0.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001452", "SKU-GEN-001158" },
    notes = "Ver procedimento PROC-L1-01452 se aplicável.",
    gen_id = 1451,
}
_DR["G01452"] = {
    title = "Condição SRS-1452: correlação 35.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001453", "SKU-GEN-001165" },
    notes = "Ver procedimento PROC-L1-01453 se aplicável.",
    gen_id = 1452,
}
_DR["G01453"] = {
    title = "Condição CLIMATE-1453: correlação 12.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001454", "SKU-GEN-001172" },
    notes = "Ver procedimento PROC-L1-01454 se aplicável.",
    gen_id = 1453,
}
_DR["G01454"] = {
    title = "Condição TRANS-1454: correlação 87.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001455", "SKU-GEN-001179" },
    notes = "Ver procedimento PROC-L1-01455 se aplicável.",
    gen_id = 1454,
}
_DR["G01455"] = {
    title = "Condição FUEL-1455: correlação 13.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001456", "SKU-GEN-001186" },
    notes = "Ver procedimento PROC-L1-01456 se aplicável.",
    gen_id = 1455,
}
_DR["G01456"] = {
    title = "Condição STEER-1456: correlação 15.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001457", "SKU-GEN-001193" },
    notes = "Ver procedimento PROC-L1-01457 se aplicável.",
    gen_id = 1456,
}
_DR["G01457"] = {
    title = "Condição HV-1457: correlação 76.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001458", "SKU-GEN-001200" },
    notes = "Ver procedimento PROC-L1-01458 se aplicável.",
    gen_id = 1457,
}
_DR["G01458"] = {
    title = "Condição BODY-1458: correlação 38.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001459", "SKU-GEN-001207" },
    notes = "Ver procedimento PROC-L1-01459 se aplicável.",
    gen_id = 1458,
}
_DR["G01459"] = {
    title = "Condição INFO-1459: correlação 7.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001460", "SKU-GEN-001214" },
    notes = "Ver procedimento PROC-L1-01460 se aplicável.",
    gen_id = 1459,
}
_DR["G01460"] = {
    title = "Condição ENGINE-1460: correlação 55.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001461", "SKU-GEN-001221" },
    notes = "Ver procedimento PROC-L1-01461 se aplicável.",
    gen_id = 1460,
}
_DR["G01461"] = {
    title = "Condição ABS-1461: correlação 31.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001462", "SKU-GEN-001228" },
    notes = "Ver procedimento PROC-L1-01462 se aplicável.",
    gen_id = 1461,
}
_DR["G01462"] = {
    title = "Condição SRS-1462: correlação 48.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001463", "SKU-GEN-001235" },
    notes = "Ver procedimento PROC-L1-01463 se aplicável.",
    gen_id = 1462,
}
_DR["G01463"] = {
    title = "Condição CLIMATE-1463: correlação 57.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001464", "SKU-GEN-001242" },
    notes = "Ver procedimento PROC-L1-01464 se aplicável.",
    gen_id = 1463,
}
_DR["G01464"] = {
    title = "Condição TRANS-1464: correlação 10.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001465", "SKU-GEN-001249" },
    notes = "Ver procedimento PROC-L1-01465 se aplicável.",
    gen_id = 1464,
}
_DR["G01465"] = {
    title = "Condição FUEL-1465: correlação 95.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001466", "SKU-GEN-001256" },
    notes = "Ver procedimento PROC-L1-01466 se aplicável.",
    gen_id = 1465,
}
_DR["G01466"] = {
    title = "Condição STEER-1466: correlação 81.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001467", "SKU-GEN-001263" },
    notes = "Ver procedimento PROC-L1-01467 se aplicável.",
    gen_id = 1466,
}
_DR["G01467"] = {
    title = "Condição HV-1467: correlação 17.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001468", "SKU-GEN-001270" },
    notes = "Ver procedimento PROC-L1-01468 se aplicável.",
    gen_id = 1467,
}
_DR["G01468"] = {
    title = "Condição BODY-1468: correlação 86.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001469", "SKU-GEN-001277" },
    notes = "Ver procedimento PROC-L1-01469 se aplicável.",
    gen_id = 1468,
}
_DR["G01469"] = {
    title = "Condição INFO-1469: correlação 4.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001470", "SKU-GEN-001284" },
    notes = "Ver procedimento PROC-L1-01470 se aplicável.",
    gen_id = 1469,
}
_DR["G01470"] = {
    title = "Condição ENGINE-1470: correlação 63.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001471", "SKU-GEN-001291" },
    notes = "Ver procedimento PROC-L1-01471 se aplicável.",
    gen_id = 1470,
}
_DR["G01471"] = {
    title = "Condição ABS-1471: correlação 7.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001472", "SKU-GEN-001298" },
    notes = "Ver procedimento PROC-L1-01472 se aplicável.",
    gen_id = 1471,
}
_DR["G01472"] = {
    title = "Condição SRS-1472: correlação 19.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001473", "SKU-GEN-001305" },
    notes = "Ver procedimento PROC-L1-01473 se aplicável.",
    gen_id = 1472,
}
_DR["G01473"] = {
    title = "Condição CLIMATE-1473: correlação 46.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001474", "SKU-GEN-001312" },
    notes = "Ver procedimento PROC-L1-01474 se aplicável.",
    gen_id = 1473,
}
_DR["G01474"] = {
    title = "Condição TRANS-1474: correlação 57.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001475", "SKU-GEN-001319" },
    notes = "Ver procedimento PROC-L1-01475 se aplicável.",
    gen_id = 1474,
}
_DR["G01475"] = {
    title = "Condição FUEL-1475: correlação 10.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001476", "SKU-GEN-001326" },
    notes = "Ver procedimento PROC-L1-01476 se aplicável.",
    gen_id = 1475,
}
_DR["G01476"] = {
    title = "Condição STEER-1476: correlação 99.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001477", "SKU-GEN-001333" },
    notes = "Ver procedimento PROC-L1-01477 se aplicável.",
    gen_id = 1476,
}
_DR["G01477"] = {
    title = "Condição HV-1477: correlação 44.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001478", "SKU-GEN-001340" },
    notes = "Ver procedimento PROC-L1-01478 se aplicável.",
    gen_id = 1477,
}
_DR["G01478"] = {
    title = "Condição BODY-1478: correlação 79.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001479", "SKU-GEN-001347" },
    notes = "Ver procedimento PROC-L1-01479 se aplicável.",
    gen_id = 1478,
}
_DR["G01479"] = {
    title = "Condição INFO-1479: correlação 22.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001480", "SKU-GEN-001354" },
    notes = "Ver procedimento PROC-L1-01480 se aplicável.",
    gen_id = 1479,
}
_DR["G01480"] = {
    title = "Condição ENGINE-1480: correlação 48.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001481", "SKU-GEN-001361" },
    notes = "Ver procedimento PROC-L1-01481 se aplicável.",
    gen_id = 1480,
}
_DR["G01481"] = {
    title = "Condição ABS-1481: correlação 20.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001482", "SKU-GEN-001368" },
    notes = "Ver procedimento PROC-L1-01482 se aplicável.",
    gen_id = 1481,
}
_DR["G01482"] = {
    title = "Condição SRS-1482: correlação 81.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001483", "SKU-GEN-001375" },
    notes = "Ver procedimento PROC-L1-01483 se aplicável.",
    gen_id = 1482,
}
_DR["G01483"] = {
    title = "Condição CLIMATE-1483: correlação 60.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001484", "SKU-GEN-001382" },
    notes = "Ver procedimento PROC-L1-01484 se aplicável.",
    gen_id = 1483,
}
_DR["G01484"] = {
    title = "Condição TRANS-1484: correlação 27.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001485", "SKU-GEN-001389" },
    notes = "Ver procedimento PROC-L1-01485 se aplicável.",
    gen_id = 1484,
}
_DR["G01485"] = {
    title = "Condição FUEL-1485: correlação 88.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001486", "SKU-GEN-001396" },
    notes = "Ver procedimento PROC-L1-01486 se aplicável.",
    gen_id = 1485,
}
_DR["G01486"] = {
    title = "Condição STEER-1486: correlação 87.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001487", "SKU-GEN-001403" },
    notes = "Ver procedimento PROC-L1-01487 se aplicável.",
    gen_id = 1486,
}
_DR["G01487"] = {
    title = "Condição HV-1487: correlação 29.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001488", "SKU-GEN-001410" },
    notes = "Ver procedimento PROC-L1-01488 se aplicável.",
    gen_id = 1487,
}
_DR["G01488"] = {
    title = "Condição BODY-1488: correlação 42.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001489", "SKU-GEN-001417" },
    notes = "Ver procedimento PROC-L1-01489 se aplicável.",
    gen_id = 1488,
}
_DR["G01489"] = {
    title = "Condição INFO-1489: correlação 58.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001490", "SKU-GEN-001424" },
    notes = "Ver procedimento PROC-L1-01490 se aplicável.",
    gen_id = 1489,
}
_DR["G01490"] = {
    title = "Condição ENGINE-1490: correlação 68.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001491", "SKU-GEN-001431" },
    notes = "Ver procedimento PROC-L1-01491 se aplicável.",
    gen_id = 1490,
}
_DR["G01491"] = {
    title = "Condição ABS-1491: correlação 2.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001492", "SKU-GEN-001438" },
    notes = "Ver procedimento PROC-L1-01492 se aplicável.",
    gen_id = 1491,
}
_DR["G01492"] = {
    title = "Condição SRS-1492: correlação 66.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001493", "SKU-GEN-001445" },
    notes = "Ver procedimento PROC-L1-01493 se aplicável.",
    gen_id = 1492,
}
_DR["G01493"] = {
    title = "Condição CLIMATE-1493: correlação 46.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001494", "SKU-GEN-001452" },
    notes = "Ver procedimento PROC-L1-01494 se aplicável.",
    gen_id = 1493,
}
_DR["G01494"] = {
    title = "Condição TRANS-1494: correlação 87.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001495", "SKU-GEN-001459" },
    notes = "Ver procedimento PROC-L1-01495 se aplicável.",
    gen_id = 1494,
}
_DR["G01495"] = {
    title = "Condição FUEL-1495: correlação 63.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001496", "SKU-GEN-001466" },
    notes = "Ver procedimento PROC-L1-01496 se aplicável.",
    gen_id = 1495,
}
_DR["G01496"] = {
    title = "Condição STEER-1496: correlação 2.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001497", "SKU-GEN-001473" },
    notes = "Ver procedimento PROC-L1-01497 se aplicável.",
    gen_id = 1496,
}
_DR["G01497"] = {
    title = "Condição HV-1497: correlação 16.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001498", "SKU-GEN-001480" },
    notes = "Ver procedimento PROC-L1-01498 se aplicável.",
    gen_id = 1497,
}
_DR["G01498"] = {
    title = "Condição BODY-1498: correlação 43.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001499", "SKU-GEN-001487" },
    notes = "Ver procedimento PROC-L1-01499 se aplicável.",
    gen_id = 1498,
}
_DR["G01499"] = {
    title = "Condição INFO-1499: correlação 8.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001500", "SKU-GEN-001494" },
    notes = "Ver procedimento PROC-L1-01500 se aplicável.",
    gen_id = 1499,
}
_DR["G01500"] = {
    title = "Condição ENGINE-1500: correlação 52.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001501", "SKU-GEN-001501" },
    notes = "Ver procedimento PROC-L1-01501 se aplicável.",
    gen_id = 1500,
}
_DR["G01501"] = {
    title = "Condição ABS-1501: correlação 14.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001502", "SKU-GEN-001508" },
    notes = "Ver procedimento PROC-L1-01502 se aplicável.",
    gen_id = 1501,
}
_DR["G01502"] = {
    title = "Condição SRS-1502: correlação 99.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001503", "SKU-GEN-001515" },
    notes = "Ver procedimento PROC-L1-01503 se aplicável.",
    gen_id = 1502,
}
_DR["G01503"] = {
    title = "Condição CLIMATE-1503: correlação 24.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001504", "SKU-GEN-001522" },
    notes = "Ver procedimento PROC-L1-01504 se aplicável.",
    gen_id = 1503,
}
_DR["G01504"] = {
    title = "Condição TRANS-1504: correlação 73.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001505", "SKU-GEN-001529" },
    notes = "Ver procedimento PROC-L1-01505 se aplicável.",
    gen_id = 1504,
}
_DR["G01505"] = {
    title = "Condição FUEL-1505: correlação 66.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001506", "SKU-GEN-001536" },
    notes = "Ver procedimento PROC-L1-01506 se aplicável.",
    gen_id = 1505,
}
_DR["G01506"] = {
    title = "Condição STEER-1506: correlação 85.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001507", "SKU-GEN-001543" },
    notes = "Ver procedimento PROC-L1-01507 se aplicável.",
    gen_id = 1506,
}
_DR["G01507"] = {
    title = "Condição HV-1507: correlação 69.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001508", "SKU-GEN-001550" },
    notes = "Ver procedimento PROC-L1-01508 se aplicável.",
    gen_id = 1507,
}
_DR["G01508"] = {
    title = "Condição BODY-1508: correlação 19.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001509", "SKU-GEN-001557" },
    notes = "Ver procedimento PROC-L1-01509 se aplicável.",
    gen_id = 1508,
}
_DR["G01509"] = {
    title = "Condição INFO-1509: correlação 34.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001510", "SKU-GEN-001564" },
    notes = "Ver procedimento PROC-L1-01510 se aplicável.",
    gen_id = 1509,
}
_DR["G01510"] = {
    title = "Condição ENGINE-1510: correlação 92.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001511", "SKU-GEN-001571" },
    notes = "Ver procedimento PROC-L1-01511 se aplicável.",
    gen_id = 1510,
}
_DR["G01511"] = {
    title = "Condição ABS-1511: correlação 37.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001512", "SKU-GEN-001578" },
    notes = "Ver procedimento PROC-L1-01512 se aplicável.",
    gen_id = 1511,
}
_DR["G01512"] = {
    title = "Condição SRS-1512: correlação 21.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001513", "SKU-GEN-001585" },
    notes = "Ver procedimento PROC-L1-01513 se aplicável.",
    gen_id = 1512,
}
_DR["G01513"] = {
    title = "Condição CLIMATE-1513: correlação 72.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001514", "SKU-GEN-001592" },
    notes = "Ver procedimento PROC-L1-01514 se aplicável.",
    gen_id = 1513,
}
_DR["G01514"] = {
    title = "Condição TRANS-1514: correlação 7.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001515", "SKU-GEN-001599" },
    notes = "Ver procedimento PROC-L1-01515 se aplicável.",
    gen_id = 1514,
}
_DR["G01515"] = {
    title = "Condição FUEL-1515: correlação 80.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001516", "SKU-GEN-001606" },
    notes = "Ver procedimento PROC-L1-01516 se aplicável.",
    gen_id = 1515,
}
_DR["G01516"] = {
    title = "Condição STEER-1516: correlação 38.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001517", "SKU-GEN-001613" },
    notes = "Ver procedimento PROC-L1-01517 se aplicável.",
    gen_id = 1516,
}
_DR["G01517"] = {
    title = "Condição HV-1517: correlação 17.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001518", "SKU-GEN-001620" },
    notes = "Ver procedimento PROC-L1-01518 se aplicável.",
    gen_id = 1517,
}
_DR["G01518"] = {
    title = "Condição BODY-1518: correlação 56.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001519", "SKU-GEN-001627" },
    notes = "Ver procedimento PROC-L1-01519 se aplicável.",
    gen_id = 1518,
}
_DR["G01519"] = {
    title = "Condição INFO-1519: correlação 15.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001520", "SKU-GEN-001634" },
    notes = "Ver procedimento PROC-L1-01520 se aplicável.",
    gen_id = 1519,
}
_DR["G01520"] = {
    title = "Condição ENGINE-1520: correlação 88.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001521", "SKU-GEN-001641" },
    notes = "Ver procedimento PROC-L1-01521 se aplicável.",
    gen_id = 1520,
}
_DR["G01521"] = {
    title = "Condição ABS-1521: correlação 7.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001522", "SKU-GEN-001648" },
    notes = "Ver procedimento PROC-L1-01522 se aplicável.",
    gen_id = 1521,
}
_DR["G01522"] = {
    title = "Condição SRS-1522: correlação 58.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001523", "SKU-GEN-001655" },
    notes = "Ver procedimento PROC-L1-01523 se aplicável.",
    gen_id = 1522,
}
_DR["G01523"] = {
    title = "Condição CLIMATE-1523: correlação 39.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001524", "SKU-GEN-001662" },
    notes = "Ver procedimento PROC-L1-01524 se aplicável.",
    gen_id = 1523,
}
_DR["G01524"] = {
    title = "Condição TRANS-1524: correlação 41.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001525", "SKU-GEN-001669" },
    notes = "Ver procedimento PROC-L1-01525 se aplicável.",
    gen_id = 1524,
}
_DR["G01525"] = {
    title = "Condição FUEL-1525: correlação 17.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001526", "SKU-GEN-001676" },
    notes = "Ver procedimento PROC-L1-01526 se aplicável.",
    gen_id = 1525,
}
_DR["G01526"] = {
    title = "Condição STEER-1526: correlação 97.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001527", "SKU-GEN-001683" },
    notes = "Ver procedimento PROC-L1-01527 se aplicável.",
    gen_id = 1526,
}
_DR["G01527"] = {
    title = "Condição HV-1527: correlação 35.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001528", "SKU-GEN-001690" },
    notes = "Ver procedimento PROC-L1-01528 se aplicável.",
    gen_id = 1527,
}
_DR["G01528"] = {
    title = "Condição BODY-1528: correlação 29.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001529", "SKU-GEN-001697" },
    notes = "Ver procedimento PROC-L1-01529 se aplicável.",
    gen_id = 1528,
}
_DR["G01529"] = {
    title = "Condição INFO-1529: correlação 38.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001530", "SKU-GEN-001704" },
    notes = "Ver procedimento PROC-L1-01530 se aplicável.",
    gen_id = 1529,
}
_DR["G01530"] = {
    title = "Condição ENGINE-1530: correlação 68.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001531", "SKU-GEN-001711" },
    notes = "Ver procedimento PROC-L1-01531 se aplicável.",
    gen_id = 1530,
}
_DR["G01531"] = {
    title = "Condição ABS-1531: correlação 43.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001532", "SKU-GEN-001718" },
    notes = "Ver procedimento PROC-L1-01532 se aplicável.",
    gen_id = 1531,
}
_DR["G01532"] = {
    title = "Condição SRS-1532: correlação 20.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001533", "SKU-GEN-001725" },
    notes = "Ver procedimento PROC-L1-01533 se aplicável.",
    gen_id = 1532,
}
_DR["G01533"] = {
    title = "Condição CLIMATE-1533: correlação 67.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001534", "SKU-GEN-001732" },
    notes = "Ver procedimento PROC-L1-01534 se aplicável.",
    gen_id = 1533,
}
_DR["G01534"] = {
    title = "Condição TRANS-1534: correlação 66.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001535", "SKU-GEN-001739" },
    notes = "Ver procedimento PROC-L1-01535 se aplicável.",
    gen_id = 1534,
}
_DR["G01535"] = {
    title = "Condição FUEL-1535: correlação 13.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001536", "SKU-GEN-001746" },
    notes = "Ver procedimento PROC-L1-01536 se aplicável.",
    gen_id = 1535,
}
_DR["G01536"] = {
    title = "Condição STEER-1536: correlação 32.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001537", "SKU-GEN-001753" },
    notes = "Ver procedimento PROC-L1-01537 se aplicável.",
    gen_id = 1536,
}
_DR["G01537"] = {
    title = "Condição HV-1537: correlação 60.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001538", "SKU-GEN-001760" },
    notes = "Ver procedimento PROC-L1-01538 se aplicável.",
    gen_id = 1537,
}
_DR["G01538"] = {
    title = "Condição BODY-1538: correlação 9.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001539", "SKU-GEN-001767" },
    notes = "Ver procedimento PROC-L1-01539 se aplicável.",
    gen_id = 1538,
}
_DR["G01539"] = {
    title = "Condição INFO-1539: correlação 93.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001540", "SKU-GEN-001774" },
    notes = "Ver procedimento PROC-L1-01540 se aplicável.",
    gen_id = 1539,
}
_DR["G01540"] = {
    title = "Condição ENGINE-1540: correlação 15.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001541", "SKU-GEN-001781" },
    notes = "Ver procedimento PROC-L1-01541 se aplicável.",
    gen_id = 1540,
}
_DR["G01541"] = {
    title = "Condição ABS-1541: correlação 69.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001542", "SKU-GEN-001788" },
    notes = "Ver procedimento PROC-L1-01542 se aplicável.",
    gen_id = 1541,
}
_DR["G01542"] = {
    title = "Condição SRS-1542: correlação 20.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001543", "SKU-GEN-001795" },
    notes = "Ver procedimento PROC-L1-01543 se aplicável.",
    gen_id = 1542,
}
_DR["G01543"] = {
    title = "Condição CLIMATE-1543: correlação 89.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001544", "SKU-GEN-001802" },
    notes = "Ver procedimento PROC-L1-01544 se aplicável.",
    gen_id = 1543,
}
_DR["G01544"] = {
    title = "Condição TRANS-1544: correlação 13.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001545", "SKU-GEN-001809" },
    notes = "Ver procedimento PROC-L1-01545 se aplicável.",
    gen_id = 1544,
}
_DR["G01545"] = {
    title = "Condição FUEL-1545: correlação 85.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001546", "SKU-GEN-001816" },
    notes = "Ver procedimento PROC-L1-01546 se aplicável.",
    gen_id = 1545,
}
_DR["G01546"] = {
    title = "Condição STEER-1546: correlação 6.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001547", "SKU-GEN-001823" },
    notes = "Ver procedimento PROC-L1-01547 se aplicável.",
    gen_id = 1546,
}
_DR["G01547"] = {
    title = "Condição HV-1547: correlação 14.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001548", "SKU-GEN-001830" },
    notes = "Ver procedimento PROC-L1-01548 se aplicável.",
    gen_id = 1547,
}
_DR["G01548"] = {
    title = "Condição BODY-1548: correlação 76.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001549", "SKU-GEN-001837" },
    notes = "Ver procedimento PROC-L1-01549 se aplicável.",
    gen_id = 1548,
}
_DR["G01549"] = {
    title = "Condição INFO-1549: correlação 33.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001550", "SKU-GEN-001844" },
    notes = "Ver procedimento PROC-L1-01550 se aplicável.",
    gen_id = 1549,
}
_DR["G01550"] = {
    title = "Condição ENGINE-1550: correlação 15.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001551", "SKU-GEN-001851" },
    notes = "Ver procedimento PROC-L1-01551 se aplicável.",
    gen_id = 1550,
}
_DR["G01551"] = {
    title = "Condição ABS-1551: correlação 20.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001552", "SKU-GEN-001858" },
    notes = "Ver procedimento PROC-L1-01552 se aplicável.",
    gen_id = 1551,
}
_DR["G01552"] = {
    title = "Condição SRS-1552: correlação 0.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001553", "SKU-GEN-001865" },
    notes = "Ver procedimento PROC-L1-01553 se aplicável.",
    gen_id = 1552,
}
_DR["G01553"] = {
    title = "Condição CLIMATE-1553: correlação 98.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001554", "SKU-GEN-001872" },
    notes = "Ver procedimento PROC-L1-01554 se aplicável.",
    gen_id = 1553,
}
_DR["G01554"] = {
    title = "Condição TRANS-1554: correlação 59.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001555", "SKU-GEN-001879" },
    notes = "Ver procedimento PROC-L1-01555 se aplicável.",
    gen_id = 1554,
}
_DR["G01555"] = {
    title = "Condição FUEL-1555: correlação 66.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001556", "SKU-GEN-001886" },
    notes = "Ver procedimento PROC-L1-01556 se aplicável.",
    gen_id = 1555,
}
_DR["G01556"] = {
    title = "Condição STEER-1556: correlação 9.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001557", "SKU-GEN-001893" },
    notes = "Ver procedimento PROC-L1-01557 se aplicável.",
    gen_id = 1556,
}
_DR["G01557"] = {
    title = "Condição HV-1557: correlação 88.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001558", "SKU-GEN-001900" },
    notes = "Ver procedimento PROC-L1-01558 se aplicável.",
    gen_id = 1557,
}
_DR["G01558"] = {
    title = "Condição BODY-1558: correlação 25.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001559", "SKU-GEN-001907" },
    notes = "Ver procedimento PROC-L1-01559 se aplicável.",
    gen_id = 1558,
}
_DR["G01559"] = {
    title = "Condição INFO-1559: correlação 74.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001560", "SKU-GEN-001914" },
    notes = "Ver procedimento PROC-L1-01560 se aplicável.",
    gen_id = 1559,
}
_DR["G01560"] = {
    title = "Condição ENGINE-1560: correlação 96.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001561", "SKU-GEN-001921" },
    notes = "Ver procedimento PROC-L1-01561 se aplicável.",
    gen_id = 1560,
}
_DR["G01561"] = {
    title = "Condição ABS-1561: correlação 55.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001562", "SKU-GEN-001928" },
    notes = "Ver procedimento PROC-L1-01562 se aplicável.",
    gen_id = 1561,
}
_DR["G01562"] = {
    title = "Condição SRS-1562: correlação 15.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001563", "SKU-GEN-001935" },
    notes = "Ver procedimento PROC-L1-01563 se aplicável.",
    gen_id = 1562,
}
_DR["G01563"] = {
    title = "Condição CLIMATE-1563: correlação 73.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001564", "SKU-GEN-001942" },
    notes = "Ver procedimento PROC-L1-01564 se aplicável.",
    gen_id = 1563,
}
_DR["G01564"] = {
    title = "Condição TRANS-1564: correlação 6.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001565", "SKU-GEN-001949" },
    notes = "Ver procedimento PROC-L1-01565 se aplicável.",
    gen_id = 1564,
}
_DR["G01565"] = {
    title = "Condição FUEL-1565: correlação 31.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001566", "SKU-GEN-001956" },
    notes = "Ver procedimento PROC-L1-01566 se aplicável.",
    gen_id = 1565,
}
_DR["G01566"] = {
    title = "Condição STEER-1566: correlação 0.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001567", "SKU-GEN-001963" },
    notes = "Ver procedimento PROC-L1-01567 se aplicável.",
    gen_id = 1566,
}
_DR["G01567"] = {
    title = "Condição HV-1567: correlação 36.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001568", "SKU-GEN-001970" },
    notes = "Ver procedimento PROC-L1-01568 se aplicável.",
    gen_id = 1567,
}
_DR["G01568"] = {
    title = "Condição BODY-1568: correlação 18.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001569", "SKU-GEN-001977" },
    notes = "Ver procedimento PROC-L1-01569 se aplicável.",
    gen_id = 1568,
}
_DR["G01569"] = {
    title = "Condição INFO-1569: correlação 48.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001570", "SKU-GEN-001984" },
    notes = "Ver procedimento PROC-L1-01570 se aplicável.",
    gen_id = 1569,
}
_DR["G01570"] = {
    title = "Condição ENGINE-1570: correlação 60.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001571", "SKU-GEN-001991" },
    notes = "Ver procedimento PROC-L1-01571 se aplicável.",
    gen_id = 1570,
}
_DR["G01571"] = {
    title = "Condição ABS-1571: correlação 56.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001572", "SKU-GEN-001998" },
    notes = "Ver procedimento PROC-L1-01572 se aplicável.",
    gen_id = 1571,
}
_DR["G01572"] = {
    title = "Condição SRS-1572: correlação 52.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001573", "SKU-GEN-002005" },
    notes = "Ver procedimento PROC-L1-01573 se aplicável.",
    gen_id = 1572,
}
_DR["G01573"] = {
    title = "Condição CLIMATE-1573: correlação 50.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001574", "SKU-GEN-002012" },
    notes = "Ver procedimento PROC-L1-01574 se aplicável.",
    gen_id = 1573,
}
_DR["G01574"] = {
    title = "Condição TRANS-1574: correlação 51.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001575", "SKU-GEN-002019" },
    notes = "Ver procedimento PROC-L1-01575 se aplicável.",
    gen_id = 1574,
}
_DR["G01575"] = {
    title = "Condição FUEL-1575: correlação 17.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001576", "SKU-GEN-002026" },
    notes = "Ver procedimento PROC-L1-01576 se aplicável.",
    gen_id = 1575,
}
_DR["G01576"] = {
    title = "Condição STEER-1576: correlação 25.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001577", "SKU-GEN-002033" },
    notes = "Ver procedimento PROC-L1-01577 se aplicável.",
    gen_id = 1576,
}
_DR["G01577"] = {
    title = "Condição HV-1577: correlação 22.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001578", "SKU-GEN-002040" },
    notes = "Ver procedimento PROC-L1-01578 se aplicável.",
    gen_id = 1577,
}
_DR["G01578"] = {
    title = "Condição BODY-1578: correlação 40.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001579", "SKU-GEN-002047" },
    notes = "Ver procedimento PROC-L1-01579 se aplicável.",
    gen_id = 1578,
}
_DR["G01579"] = {
    title = "Condição INFO-1579: correlação 65.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001580", "SKU-GEN-002054" },
    notes = "Ver procedimento PROC-L1-01580 se aplicável.",
    gen_id = 1579,
}
_DR["G01580"] = {
    title = "Condição ENGINE-1580: correlação 16.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001581", "SKU-GEN-002061" },
    notes = "Ver procedimento PROC-L1-01581 se aplicável.",
    gen_id = 1580,
}
_DR["G01581"] = {
    title = "Condição ABS-1581: correlação 86.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001582", "SKU-GEN-002068" },
    notes = "Ver procedimento PROC-L1-01582 se aplicável.",
    gen_id = 1581,
}
_DR["G01582"] = {
    title = "Condição SRS-1582: correlação 64.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001583", "SKU-GEN-002075" },
    notes = "Ver procedimento PROC-L1-01583 se aplicável.",
    gen_id = 1582,
}
_DR["G01583"] = {
    title = "Condição CLIMATE-1583: correlação 68.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001584", "SKU-GEN-002082" },
    notes = "Ver procedimento PROC-L1-01584 se aplicável.",
    gen_id = 1583,
}
_DR["G01584"] = {
    title = "Condição TRANS-1584: correlação 23.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001585", "SKU-GEN-002089" },
    notes = "Ver procedimento PROC-L1-01585 se aplicável.",
    gen_id = 1584,
}
_DR["G01585"] = {
    title = "Condição FUEL-1585: correlação 45.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001586", "SKU-GEN-002096" },
    notes = "Ver procedimento PROC-L1-01586 se aplicável.",
    gen_id = 1585,
}
_DR["G01586"] = {
    title = "Condição STEER-1586: correlação 28.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001587", "SKU-GEN-002103" },
    notes = "Ver procedimento PROC-L1-01587 se aplicável.",
    gen_id = 1586,
}
_DR["G01587"] = {
    title = "Condição HV-1587: correlação 30.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001588", "SKU-GEN-002110" },
    notes = "Ver procedimento PROC-L1-01588 se aplicável.",
    gen_id = 1587,
}
_DR["G01588"] = {
    title = "Condição BODY-1588: correlação 21.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001589", "SKU-GEN-002117" },
    notes = "Ver procedimento PROC-L1-01589 se aplicável.",
    gen_id = 1588,
}
_DR["G01589"] = {
    title = "Condição INFO-1589: correlação 67.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001590", "SKU-GEN-002124" },
    notes = "Ver procedimento PROC-L1-01590 se aplicável.",
    gen_id = 1589,
}
_DR["G01590"] = {
    title = "Condição ENGINE-1590: correlação 49.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001591", "SKU-GEN-002131" },
    notes = "Ver procedimento PROC-L1-01591 se aplicável.",
    gen_id = 1590,
}
_DR["G01591"] = {
    title = "Condição ABS-1591: correlação 4.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001592", "SKU-GEN-002138" },
    notes = "Ver procedimento PROC-L1-01592 se aplicável.",
    gen_id = 1591,
}
_DR["G01592"] = {
    title = "Condição SRS-1592: correlação 51.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001593", "SKU-GEN-002145" },
    notes = "Ver procedimento PROC-L1-01593 se aplicável.",
    gen_id = 1592,
}
_DR["G01593"] = {
    title = "Condição CLIMATE-1593: correlação 46.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001594", "SKU-GEN-002152" },
    notes = "Ver procedimento PROC-L1-01594 se aplicável.",
    gen_id = 1593,
}
_DR["G01594"] = {
    title = "Condição TRANS-1594: correlação 2.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001595", "SKU-GEN-002159" },
    notes = "Ver procedimento PROC-L1-01595 se aplicável.",
    gen_id = 1594,
}
_DR["G01595"] = {
    title = "Condição FUEL-1595: correlação 6.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001596", "SKU-GEN-002166" },
    notes = "Ver procedimento PROC-L1-01596 se aplicável.",
    gen_id = 1595,
}
_DR["G01596"] = {
    title = "Condição STEER-1596: correlação 98.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001597", "SKU-GEN-002173" },
    notes = "Ver procedimento PROC-L1-01597 se aplicável.",
    gen_id = 1596,
}
_DR["G01597"] = {
    title = "Condição HV-1597: correlação 86.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001598", "SKU-GEN-002180" },
    notes = "Ver procedimento PROC-L1-01598 se aplicável.",
    gen_id = 1597,
}
_DR["G01598"] = {
    title = "Condição BODY-1598: correlação 21.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001599", "SKU-GEN-002187" },
    notes = "Ver procedimento PROC-L1-01599 se aplicável.",
    gen_id = 1598,
}
_DR["G01599"] = {
    title = "Condição INFO-1599: correlação 32.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001600", "SKU-GEN-002194" },
    notes = "Ver procedimento PROC-L1-01600 se aplicável.",
    gen_id = 1599,
}
_DR["G01600"] = {
    title = "Condição ENGINE-1600: correlação 48.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001601", "SKU-GEN-002201" },
    notes = "Ver procedimento PROC-L1-01601 se aplicável.",
    gen_id = 1600,
}
_DR["G01601"] = {
    title = "Condição ABS-1601: correlação 90.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001602", "SKU-GEN-002208" },
    notes = "Ver procedimento PROC-L1-01602 se aplicável.",
    gen_id = 1601,
}
_DR["G01602"] = {
    title = "Condição SRS-1602: correlação 73.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001603", "SKU-GEN-002215" },
    notes = "Ver procedimento PROC-L1-01603 se aplicável.",
    gen_id = 1602,
}
_DR["G01603"] = {
    title = "Condição CLIMATE-1603: correlação 31.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001604", "SKU-GEN-002222" },
    notes = "Ver procedimento PROC-L1-01604 se aplicável.",
    gen_id = 1603,
}
_DR["G01604"] = {
    title = "Condição TRANS-1604: correlação 17.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001605", "SKU-GEN-002229" },
    notes = "Ver procedimento PROC-L1-01605 se aplicável.",
    gen_id = 1604,
}
_DR["G01605"] = {
    title = "Condição FUEL-1605: correlação 43.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001606", "SKU-GEN-002236" },
    notes = "Ver procedimento PROC-L1-01606 se aplicável.",
    gen_id = 1605,
}
_DR["G01606"] = {
    title = "Condição STEER-1606: correlação 7.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001607", "SKU-GEN-002243" },
    notes = "Ver procedimento PROC-L1-01607 se aplicável.",
    gen_id = 1606,
}
_DR["G01607"] = {
    title = "Condição HV-1607: correlação 84.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001608", "SKU-GEN-002250" },
    notes = "Ver procedimento PROC-L1-01608 se aplicável.",
    gen_id = 1607,
}
_DR["G01608"] = {
    title = "Condição BODY-1608: correlação 5.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001609", "SKU-GEN-002257" },
    notes = "Ver procedimento PROC-L1-01609 se aplicável.",
    gen_id = 1608,
}
_DR["G01609"] = {
    title = "Condição INFO-1609: correlação 31.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001610", "SKU-GEN-002264" },
    notes = "Ver procedimento PROC-L1-01610 se aplicável.",
    gen_id = 1609,
}
_DR["G01610"] = {
    title = "Condição ENGINE-1610: correlação 32.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001611", "SKU-GEN-002271" },
    notes = "Ver procedimento PROC-L1-01611 se aplicável.",
    gen_id = 1610,
}
_DR["G01611"] = {
    title = "Condição ABS-1611: correlação 90.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001612", "SKU-GEN-002278" },
    notes = "Ver procedimento PROC-L1-01612 se aplicável.",
    gen_id = 1611,
}
_DR["G01612"] = {
    title = "Condição SRS-1612: correlação 8.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001613", "SKU-GEN-002285" },
    notes = "Ver procedimento PROC-L1-01613 se aplicável.",
    gen_id = 1612,
}
_DR["G01613"] = {
    title = "Condição CLIMATE-1613: correlação 38.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001614", "SKU-GEN-002292" },
    notes = "Ver procedimento PROC-L1-01614 se aplicável.",
    gen_id = 1613,
}
_DR["G01614"] = {
    title = "Condição TRANS-1614: correlação 91.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001615", "SKU-GEN-002299" },
    notes = "Ver procedimento PROC-L1-01615 se aplicável.",
    gen_id = 1614,
}
_DR["G01615"] = {
    title = "Condição FUEL-1615: correlação 61.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001616", "SKU-GEN-002306" },
    notes = "Ver procedimento PROC-L1-01616 se aplicável.",
    gen_id = 1615,
}
_DR["G01616"] = {
    title = "Condição STEER-1616: correlação 97.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001617", "SKU-GEN-002313" },
    notes = "Ver procedimento PROC-L1-01617 se aplicável.",
    gen_id = 1616,
}
_DR["G01617"] = {
    title = "Condição HV-1617: correlação 3.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001618", "SKU-GEN-002320" },
    notes = "Ver procedimento PROC-L1-01618 se aplicável.",
    gen_id = 1617,
}
_DR["G01618"] = {
    title = "Condição BODY-1618: correlação 31.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001619", "SKU-GEN-002327" },
    notes = "Ver procedimento PROC-L1-01619 se aplicável.",
    gen_id = 1618,
}
_DR["G01619"] = {
    title = "Condição INFO-1619: correlação 82.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001620", "SKU-GEN-002334" },
    notes = "Ver procedimento PROC-L1-01620 se aplicável.",
    gen_id = 1619,
}
_DR["G01620"] = {
    title = "Condição ENGINE-1620: correlação 50.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001621", "SKU-GEN-002341" },
    notes = "Ver procedimento PROC-L1-01621 se aplicável.",
    gen_id = 1620,
}
_DR["G01621"] = {
    title = "Condição ABS-1621: correlação 28.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001622", "SKU-GEN-002348" },
    notes = "Ver procedimento PROC-L1-01622 se aplicável.",
    gen_id = 1621,
}
_DR["G01622"] = {
    title = "Condição SRS-1622: correlação 84.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001623", "SKU-GEN-002355" },
    notes = "Ver procedimento PROC-L1-01623 se aplicável.",
    gen_id = 1622,
}
_DR["G01623"] = {
    title = "Condição CLIMATE-1623: correlação 78.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001624", "SKU-GEN-002362" },
    notes = "Ver procedimento PROC-L1-01624 se aplicável.",
    gen_id = 1623,
}
_DR["G01624"] = {
    title = "Condição TRANS-1624: correlação 88.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001625", "SKU-GEN-002369" },
    notes = "Ver procedimento PROC-L1-01625 se aplicável.",
    gen_id = 1624,
}
_DR["G01625"] = {
    title = "Condição FUEL-1625: correlação 80.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001626", "SKU-GEN-002376" },
    notes = "Ver procedimento PROC-L1-01626 se aplicável.",
    gen_id = 1625,
}
_DR["G01626"] = {
    title = "Condição STEER-1626: correlação 2.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001627", "SKU-GEN-002383" },
    notes = "Ver procedimento PROC-L1-01627 se aplicável.",
    gen_id = 1626,
}
_DR["G01627"] = {
    title = "Condição HV-1627: correlação 97.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001628", "SKU-GEN-002390" },
    notes = "Ver procedimento PROC-L1-01628 se aplicável.",
    gen_id = 1627,
}
_DR["G01628"] = {
    title = "Condição BODY-1628: correlação 53.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001629", "SKU-GEN-002397" },
    notes = "Ver procedimento PROC-L1-01629 se aplicável.",
    gen_id = 1628,
}
_DR["G01629"] = {
    title = "Condição INFO-1629: correlação 27.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001630", "SKU-GEN-002404" },
    notes = "Ver procedimento PROC-L1-01630 se aplicável.",
    gen_id = 1629,
}
_DR["G01630"] = {
    title = "Condição ENGINE-1630: correlação 30.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001631", "SKU-GEN-002411" },
    notes = "Ver procedimento PROC-L1-01631 se aplicável.",
    gen_id = 1630,
}
_DR["G01631"] = {
    title = "Condição ABS-1631: correlação 14.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001632", "SKU-GEN-002418" },
    notes = "Ver procedimento PROC-L1-01632 se aplicável.",
    gen_id = 1631,
}
_DR["G01632"] = {
    title = "Condição SRS-1632: correlação 33.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001633", "SKU-GEN-002425" },
    notes = "Ver procedimento PROC-L1-01633 se aplicável.",
    gen_id = 1632,
}
_DR["G01633"] = {
    title = "Condição CLIMATE-1633: correlação 83.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001634", "SKU-GEN-002432" },
    notes = "Ver procedimento PROC-L1-01634 se aplicável.",
    gen_id = 1633,
}
_DR["G01634"] = {
    title = "Condição TRANS-1634: correlação 94.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001635", "SKU-GEN-002439" },
    notes = "Ver procedimento PROC-L1-01635 se aplicável.",
    gen_id = 1634,
}
_DR["G01635"] = {
    title = "Condição FUEL-1635: correlação 95.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001636", "SKU-GEN-002446" },
    notes = "Ver procedimento PROC-L1-01636 se aplicável.",
    gen_id = 1635,
}
_DR["G01636"] = {
    title = "Condição STEER-1636: correlação 17.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001637", "SKU-GEN-002453" },
    notes = "Ver procedimento PROC-L1-01637 se aplicável.",
    gen_id = 1636,
}
_DR["G01637"] = {
    title = "Condição HV-1637: correlação 77.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001638", "SKU-GEN-002460" },
    notes = "Ver procedimento PROC-L1-01638 se aplicável.",
    gen_id = 1637,
}
_DR["G01638"] = {
    title = "Condição BODY-1638: correlação 40.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001639", "SKU-GEN-002467" },
    notes = "Ver procedimento PROC-L1-01639 se aplicável.",
    gen_id = 1638,
}
_DR["G01639"] = {
    title = "Condição INFO-1639: correlação 81.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001640", "SKU-GEN-002474" },
    notes = "Ver procedimento PROC-L1-01640 se aplicável.",
    gen_id = 1639,
}
_DR["G01640"] = {
    title = "Condição ENGINE-1640: correlação 44.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001641", "SKU-GEN-002481" },
    notes = "Ver procedimento PROC-L1-01641 se aplicável.",
    gen_id = 1640,
}
_DR["G01641"] = {
    title = "Condição ABS-1641: correlação 52.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001642", "SKU-GEN-002488" },
    notes = "Ver procedimento PROC-L1-01642 se aplicável.",
    gen_id = 1641,
}
_DR["G01642"] = {
    title = "Condição SRS-1642: correlação 57.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001643", "SKU-GEN-002495" },
    notes = "Ver procedimento PROC-L1-01643 se aplicável.",
    gen_id = 1642,
}
_DR["G01643"] = {
    title = "Condição CLIMATE-1643: correlação 96.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001644", "SKU-GEN-002502" },
    notes = "Ver procedimento PROC-L1-01644 se aplicável.",
    gen_id = 1643,
}
_DR["G01644"] = {
    title = "Condição TRANS-1644: correlação 69.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001645", "SKU-GEN-002509" },
    notes = "Ver procedimento PROC-L1-01645 se aplicável.",
    gen_id = 1644,
}
_DR["G01645"] = {
    title = "Condição FUEL-1645: correlação 67.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001646", "SKU-GEN-002516" },
    notes = "Ver procedimento PROC-L1-01646 se aplicável.",
    gen_id = 1645,
}
_DR["G01646"] = {
    title = "Condição STEER-1646: correlação 62.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001647", "SKU-GEN-002523" },
    notes = "Ver procedimento PROC-L1-01647 se aplicável.",
    gen_id = 1646,
}
_DR["G01647"] = {
    title = "Condição HV-1647: correlação 78.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001648", "SKU-GEN-002530" },
    notes = "Ver procedimento PROC-L1-01648 se aplicável.",
    gen_id = 1647,
}
_DR["G01648"] = {
    title = "Condição BODY-1648: correlação 54.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001649", "SKU-GEN-002537" },
    notes = "Ver procedimento PROC-L1-01649 se aplicável.",
    gen_id = 1648,
}
_DR["G01649"] = {
    title = "Condição INFO-1649: correlação 64.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001650", "SKU-GEN-002544" },
    notes = "Ver procedimento PROC-L1-01650 se aplicável.",
    gen_id = 1649,
}
_DR["G01650"] = {
    title = "Condição ENGINE-1650: correlação 42.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001651", "SKU-GEN-002551" },
    notes = "Ver procedimento PROC-L1-01651 se aplicável.",
    gen_id = 1650,
}
_DR["G01651"] = {
    title = "Condição ABS-1651: correlação 74.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001652", "SKU-GEN-002558" },
    notes = "Ver procedimento PROC-L1-01652 se aplicável.",
    gen_id = 1651,
}
_DR["G01652"] = {
    title = "Condição SRS-1652: correlação 87.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001653", "SKU-GEN-002565" },
    notes = "Ver procedimento PROC-L1-01653 se aplicável.",
    gen_id = 1652,
}
_DR["G01653"] = {
    title = "Condição CLIMATE-1653: correlação 6.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001654", "SKU-GEN-002572" },
    notes = "Ver procedimento PROC-L1-01654 se aplicável.",
    gen_id = 1653,
}
_DR["G01654"] = {
    title = "Condição TRANS-1654: correlação 72.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001655", "SKU-GEN-002579" },
    notes = "Ver procedimento PROC-L1-01655 se aplicável.",
    gen_id = 1654,
}
_DR["G01655"] = {
    title = "Condição FUEL-1655: correlação 73.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001656", "SKU-GEN-002586" },
    notes = "Ver procedimento PROC-L1-01656 se aplicável.",
    gen_id = 1655,
}
_DR["G01656"] = {
    title = "Condição STEER-1656: correlação 48.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001657", "SKU-GEN-002593" },
    notes = "Ver procedimento PROC-L1-01657 se aplicável.",
    gen_id = 1656,
}
_DR["G01657"] = {
    title = "Condição HV-1657: correlação 17.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001658", "SKU-GEN-002600" },
    notes = "Ver procedimento PROC-L1-01658 se aplicável.",
    gen_id = 1657,
}
_DR["G01658"] = {
    title = "Condição BODY-1658: correlação 46.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001659", "SKU-GEN-002607" },
    notes = "Ver procedimento PROC-L1-01659 se aplicável.",
    gen_id = 1658,
}
_DR["G01659"] = {
    title = "Condição INFO-1659: correlação 55.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001660", "SKU-GEN-002614" },
    notes = "Ver procedimento PROC-L1-01660 se aplicável.",
    gen_id = 1659,
}
_DR["G01660"] = {
    title = "Condição ENGINE-1660: correlação 1.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001661", "SKU-GEN-002621" },
    notes = "Ver procedimento PROC-L1-01661 se aplicável.",
    gen_id = 1660,
}
_DR["G01661"] = {
    title = "Condição ABS-1661: correlação 62.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001662", "SKU-GEN-002628" },
    notes = "Ver procedimento PROC-L1-01662 se aplicável.",
    gen_id = 1661,
}
_DR["G01662"] = {
    title = "Condição SRS-1662: correlação 10.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001663", "SKU-GEN-002635" },
    notes = "Ver procedimento PROC-L1-01663 se aplicável.",
    gen_id = 1662,
}
_DR["G01663"] = {
    title = "Condição CLIMATE-1663: correlação 75.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001664", "SKU-GEN-002642" },
    notes = "Ver procedimento PROC-L1-01664 se aplicável.",
    gen_id = 1663,
}
_DR["G01664"] = {
    title = "Condição TRANS-1664: correlação 80.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001665", "SKU-GEN-002649" },
    notes = "Ver procedimento PROC-L1-01665 se aplicável.",
    gen_id = 1664,
}
_DR["G01665"] = {
    title = "Condição FUEL-1665: correlação 66.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001666", "SKU-GEN-002656" },
    notes = "Ver procedimento PROC-L1-01666 se aplicável.",
    gen_id = 1665,
}
_DR["G01666"] = {
    title = "Condição STEER-1666: correlação 75.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001667", "SKU-GEN-002663" },
    notes = "Ver procedimento PROC-L1-01667 se aplicável.",
    gen_id = 1666,
}
_DR["G01667"] = {
    title = "Condição HV-1667: correlação 25.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001668", "SKU-GEN-002670" },
    notes = "Ver procedimento PROC-L1-01668 se aplicável.",
    gen_id = 1667,
}
_DR["G01668"] = {
    title = "Condição BODY-1668: correlação 78.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001669", "SKU-GEN-002677" },
    notes = "Ver procedimento PROC-L1-01669 se aplicável.",
    gen_id = 1668,
}
_DR["G01669"] = {
    title = "Condição INFO-1669: correlação 47.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001670", "SKU-GEN-002684" },
    notes = "Ver procedimento PROC-L1-01670 se aplicável.",
    gen_id = 1669,
}
_DR["G01670"] = {
    title = "Condição ENGINE-1670: correlação 38.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001671", "SKU-GEN-002691" },
    notes = "Ver procedimento PROC-L1-01671 se aplicável.",
    gen_id = 1670,
}
_DR["G01671"] = {
    title = "Condição ABS-1671: correlação 23.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001672", "SKU-GEN-002698" },
    notes = "Ver procedimento PROC-L1-01672 se aplicável.",
    gen_id = 1671,
}
_DR["G01672"] = {
    title = "Condição SRS-1672: correlação 80.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001673", "SKU-GEN-002705" },
    notes = "Ver procedimento PROC-L1-01673 se aplicável.",
    gen_id = 1672,
}
_DR["G01673"] = {
    title = "Condição CLIMATE-1673: correlação 13.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001674", "SKU-GEN-002712" },
    notes = "Ver procedimento PROC-L1-01674 se aplicável.",
    gen_id = 1673,
}
_DR["G01674"] = {
    title = "Condição TRANS-1674: correlação 52.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001675", "SKU-GEN-002719" },
    notes = "Ver procedimento PROC-L1-01675 se aplicável.",
    gen_id = 1674,
}
_DR["G01675"] = {
    title = "Condição FUEL-1675: correlação 43.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001676", "SKU-GEN-002726" },
    notes = "Ver procedimento PROC-L1-01676 se aplicável.",
    gen_id = 1675,
}
_DR["G01676"] = {
    title = "Condição STEER-1676: correlação 87.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001677", "SKU-GEN-002733" },
    notes = "Ver procedimento PROC-L1-01677 se aplicável.",
    gen_id = 1676,
}
_DR["G01677"] = {
    title = "Condição HV-1677: correlação 62.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001678", "SKU-GEN-002740" },
    notes = "Ver procedimento PROC-L1-01678 se aplicável.",
    gen_id = 1677,
}
_DR["G01678"] = {
    title = "Condição BODY-1678: correlação 28.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001679", "SKU-GEN-002747" },
    notes = "Ver procedimento PROC-L1-01679 se aplicável.",
    gen_id = 1678,
}
_DR["G01679"] = {
    title = "Condição INFO-1679: correlação 72.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001680", "SKU-GEN-002754" },
    notes = "Ver procedimento PROC-L1-01680 se aplicável.",
    gen_id = 1679,
}
_DR["G01680"] = {
    title = "Condição ENGINE-1680: correlação 27.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001681", "SKU-GEN-002761" },
    notes = "Ver procedimento PROC-L1-01681 se aplicável.",
    gen_id = 1680,
}
_DR["G01681"] = {
    title = "Condição ABS-1681: correlação 59.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001682", "SKU-GEN-002768" },
    notes = "Ver procedimento PROC-L1-01682 se aplicável.",
    gen_id = 1681,
}
_DR["G01682"] = {
    title = "Condição SRS-1682: correlação 43.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001683", "SKU-GEN-002775" },
    notes = "Ver procedimento PROC-L1-01683 se aplicável.",
    gen_id = 1682,
}
_DR["G01683"] = {
    title = "Condição CLIMATE-1683: correlação 59.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001684", "SKU-GEN-002782" },
    notes = "Ver procedimento PROC-L1-01684 se aplicável.",
    gen_id = 1683,
}
_DR["G01684"] = {
    title = "Condição TRANS-1684: correlação 43.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001685", "SKU-GEN-002789" },
    notes = "Ver procedimento PROC-L1-01685 se aplicável.",
    gen_id = 1684,
}
_DR["G01685"] = {
    title = "Condição FUEL-1685: correlação 3.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001686", "SKU-GEN-002796" },
    notes = "Ver procedimento PROC-L1-01686 se aplicável.",
    gen_id = 1685,
}
_DR["G01686"] = {
    title = "Condição STEER-1686: correlação 92.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001687", "SKU-GEN-002803" },
    notes = "Ver procedimento PROC-L1-01687 se aplicável.",
    gen_id = 1686,
}
_DR["G01687"] = {
    title = "Condição HV-1687: correlação 95.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001688", "SKU-GEN-002810" },
    notes = "Ver procedimento PROC-L1-01688 se aplicável.",
    gen_id = 1687,
}
_DR["G01688"] = {
    title = "Condição BODY-1688: correlação 14.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001689", "SKU-GEN-002817" },
    notes = "Ver procedimento PROC-L1-01689 se aplicável.",
    gen_id = 1688,
}
_DR["G01689"] = {
    title = "Condição INFO-1689: correlação 4.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001690", "SKU-GEN-002824" },
    notes = "Ver procedimento PROC-L1-01690 se aplicável.",
    gen_id = 1689,
}
_DR["G01690"] = {
    title = "Condição ENGINE-1690: correlação 25.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001691", "SKU-GEN-002831" },
    notes = "Ver procedimento PROC-L1-01691 se aplicável.",
    gen_id = 1690,
}
_DR["G01691"] = {
    title = "Condição ABS-1691: correlação 40.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001692", "SKU-GEN-002838" },
    notes = "Ver procedimento PROC-L1-01692 se aplicável.",
    gen_id = 1691,
}
_DR["G01692"] = {
    title = "Condição SRS-1692: correlação 39.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001693", "SKU-GEN-002845" },
    notes = "Ver procedimento PROC-L1-01693 se aplicável.",
    gen_id = 1692,
}
_DR["G01693"] = {
    title = "Condição CLIMATE-1693: correlação 16.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001694", "SKU-GEN-002852" },
    notes = "Ver procedimento PROC-L1-01694 se aplicável.",
    gen_id = 1693,
}
_DR["G01694"] = {
    title = "Condição TRANS-1694: correlação 30.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001695", "SKU-GEN-002859" },
    notes = "Ver procedimento PROC-L1-01695 se aplicável.",
    gen_id = 1694,
}
_DR["G01695"] = {
    title = "Condição FUEL-1695: correlação 83.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001696", "SKU-GEN-002866" },
    notes = "Ver procedimento PROC-L1-01696 se aplicável.",
    gen_id = 1695,
}
_DR["G01696"] = {
    title = "Condição STEER-1696: correlação 93.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001697", "SKU-GEN-002873" },
    notes = "Ver procedimento PROC-L1-01697 se aplicável.",
    gen_id = 1696,
}
_DR["G01697"] = {
    title = "Condição HV-1697: correlação 13.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001698", "SKU-GEN-002880" },
    notes = "Ver procedimento PROC-L1-01698 se aplicável.",
    gen_id = 1697,
}
_DR["G01698"] = {
    title = "Condição BODY-1698: correlação 77.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001699", "SKU-GEN-002887" },
    notes = "Ver procedimento PROC-L1-01699 se aplicável.",
    gen_id = 1698,
}
_DR["G01699"] = {
    title = "Condição INFO-1699: correlação 0.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001700", "SKU-GEN-002894" },
    notes = "Ver procedimento PROC-L1-01700 se aplicável.",
    gen_id = 1699,
}
_DR["G01700"] = {
    title = "Condição ENGINE-1700: correlação 48.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001701", "SKU-GEN-002901" },
    notes = "Ver procedimento PROC-L1-01701 se aplicável.",
    gen_id = 1700,
}
_DR["G01701"] = {
    title = "Condição ABS-1701: correlação 9.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001702", "SKU-GEN-002908" },
    notes = "Ver procedimento PROC-L1-01702 se aplicável.",
    gen_id = 1701,
}
_DR["G01702"] = {
    title = "Condição SRS-1702: correlação 18.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001703", "SKU-GEN-002915" },
    notes = "Ver procedimento PROC-L1-01703 se aplicável.",
    gen_id = 1702,
}
_DR["G01703"] = {
    title = "Condição CLIMATE-1703: correlação 55.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001704", "SKU-GEN-002922" },
    notes = "Ver procedimento PROC-L1-01704 se aplicável.",
    gen_id = 1703,
}
_DR["G01704"] = {
    title = "Condição TRANS-1704: correlação 94.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001705", "SKU-GEN-002929" },
    notes = "Ver procedimento PROC-L1-01705 se aplicável.",
    gen_id = 1704,
}
_DR["G01705"] = {
    title = "Condição FUEL-1705: correlação 32.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001706", "SKU-GEN-002936" },
    notes = "Ver procedimento PROC-L1-01706 se aplicável.",
    gen_id = 1705,
}
_DR["G01706"] = {
    title = "Condição STEER-1706: correlação 11.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001707", "SKU-GEN-002943" },
    notes = "Ver procedimento PROC-L1-01707 se aplicável.",
    gen_id = 1706,
}
_DR["G01707"] = {
    title = "Condição HV-1707: correlação 41.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001708", "SKU-GEN-002950" },
    notes = "Ver procedimento PROC-L1-01708 se aplicável.",
    gen_id = 1707,
}
_DR["G01708"] = {
    title = "Condição BODY-1708: correlação 21.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001709", "SKU-GEN-002957" },
    notes = "Ver procedimento PROC-L1-01709 se aplicável.",
    gen_id = 1708,
}
_DR["G01709"] = {
    title = "Condição INFO-1709: correlação 29.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001710", "SKU-GEN-002964" },
    notes = "Ver procedimento PROC-L1-01710 se aplicável.",
    gen_id = 1709,
}
_DR["G01710"] = {
    title = "Condição ENGINE-1710: correlação 24.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001711", "SKU-GEN-002971" },
    notes = "Ver procedimento PROC-L1-01711 se aplicável.",
    gen_id = 1710,
}
_DR["G01711"] = {
    title = "Condição ABS-1711: correlação 76.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001712", "SKU-GEN-002978" },
    notes = "Ver procedimento PROC-L1-01712 se aplicável.",
    gen_id = 1711,
}
_DR["G01712"] = {
    title = "Condição SRS-1712: correlação 39.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001713", "SKU-GEN-002985" },
    notes = "Ver procedimento PROC-L1-01713 se aplicável.",
    gen_id = 1712,
}
_DR["G01713"] = {
    title = "Condição CLIMATE-1713: correlação 59.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001714", "SKU-GEN-002992" },
    notes = "Ver procedimento PROC-L1-01714 se aplicável.",
    gen_id = 1713,
}
_DR["G01714"] = {
    title = "Condição TRANS-1714: correlação 23.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001715", "SKU-GEN-002999" },
    notes = "Ver procedimento PROC-L1-01715 se aplicável.",
    gen_id = 1714,
}
_DR["G01715"] = {
    title = "Condição FUEL-1715: correlação 92.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001716", "SKU-GEN-003006" },
    notes = "Ver procedimento PROC-L1-01716 se aplicável.",
    gen_id = 1715,
}
_DR["G01716"] = {
    title = "Condição STEER-1716: correlação 53.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001717", "SKU-GEN-003013" },
    notes = "Ver procedimento PROC-L1-01717 se aplicável.",
    gen_id = 1716,
}
_DR["G01717"] = {
    title = "Condição HV-1717: correlação 84.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001718", "SKU-GEN-003020" },
    notes = "Ver procedimento PROC-L1-01718 se aplicável.",
    gen_id = 1717,
}
_DR["G01718"] = {
    title = "Condição BODY-1718: correlação 55.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001719", "SKU-GEN-003027" },
    notes = "Ver procedimento PROC-L1-01719 se aplicável.",
    gen_id = 1718,
}
_DR["G01719"] = {
    title = "Condição INFO-1719: correlação 76.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001720", "SKU-GEN-003034" },
    notes = "Ver procedimento PROC-L1-01720 se aplicável.",
    gen_id = 1719,
}
_DR["G01720"] = {
    title = "Condição ENGINE-1720: correlação 18.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001721", "SKU-GEN-003041" },
    notes = "Ver procedimento PROC-L1-01721 se aplicável.",
    gen_id = 1720,
}
_DR["G01721"] = {
    title = "Condição ABS-1721: correlação 78.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001722", "SKU-GEN-003048" },
    notes = "Ver procedimento PROC-L1-01722 se aplicável.",
    gen_id = 1721,
}
_DR["G01722"] = {
    title = "Condição SRS-1722: correlação 86.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001723", "SKU-GEN-003055" },
    notes = "Ver procedimento PROC-L1-01723 se aplicável.",
    gen_id = 1722,
}
_DR["G01723"] = {
    title = "Condição CLIMATE-1723: correlação 63.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001724", "SKU-GEN-003062" },
    notes = "Ver procedimento PROC-L1-01724 se aplicável.",
    gen_id = 1723,
}
_DR["G01724"] = {
    title = "Condição TRANS-1724: correlação 35.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001725", "SKU-GEN-003069" },
    notes = "Ver procedimento PROC-L1-01725 se aplicável.",
    gen_id = 1724,
}
_DR["G01725"] = {
    title = "Condição FUEL-1725: correlação 24.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001726", "SKU-GEN-003076" },
    notes = "Ver procedimento PROC-L1-01726 se aplicável.",
    gen_id = 1725,
}
_DR["G01726"] = {
    title = "Condição STEER-1726: correlação 40.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001727", "SKU-GEN-003083" },
    notes = "Ver procedimento PROC-L1-01727 se aplicável.",
    gen_id = 1726,
}
_DR["G01727"] = {
    title = "Condição HV-1727: correlação 81.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001728", "SKU-GEN-003090" },
    notes = "Ver procedimento PROC-L1-01728 se aplicável.",
    gen_id = 1727,
}
_DR["G01728"] = {
    title = "Condição BODY-1728: correlação 68.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001729", "SKU-GEN-003097" },
    notes = "Ver procedimento PROC-L1-01729 se aplicável.",
    gen_id = 1728,
}
_DR["G01729"] = {
    title = "Condição INFO-1729: correlação 42.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001730", "SKU-GEN-003104" },
    notes = "Ver procedimento PROC-L1-01730 se aplicável.",
    gen_id = 1729,
}
_DR["G01730"] = {
    title = "Condição ENGINE-1730: correlação 68.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001731", "SKU-GEN-003111" },
    notes = "Ver procedimento PROC-L1-01731 se aplicável.",
    gen_id = 1730,
}
_DR["G01731"] = {
    title = "Condição ABS-1731: correlação 1.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001732", "SKU-GEN-003118" },
    notes = "Ver procedimento PROC-L1-01732 se aplicável.",
    gen_id = 1731,
}
_DR["G01732"] = {
    title = "Condição SRS-1732: correlação 94.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001733", "SKU-GEN-003125" },
    notes = "Ver procedimento PROC-L1-01733 se aplicável.",
    gen_id = 1732,
}
_DR["G01733"] = {
    title = "Condição CLIMATE-1733: correlação 86.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001734", "SKU-GEN-003132" },
    notes = "Ver procedimento PROC-L1-01734 se aplicável.",
    gen_id = 1733,
}
_DR["G01734"] = {
    title = "Condição TRANS-1734: correlação 34.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001735", "SKU-GEN-003139" },
    notes = "Ver procedimento PROC-L1-01735 se aplicável.",
    gen_id = 1734,
}
_DR["G01735"] = {
    title = "Condição FUEL-1735: correlação 46.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001736", "SKU-GEN-003146" },
    notes = "Ver procedimento PROC-L1-01736 se aplicável.",
    gen_id = 1735,
}
_DR["G01736"] = {
    title = "Condição STEER-1736: correlação 16.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001737", "SKU-GEN-003153" },
    notes = "Ver procedimento PROC-L1-01737 se aplicável.",
    gen_id = 1736,
}
_DR["G01737"] = {
    title = "Condição HV-1737: correlação 15.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001738", "SKU-GEN-003160" },
    notes = "Ver procedimento PROC-L1-01738 se aplicável.",
    gen_id = 1737,
}
_DR["G01738"] = {
    title = "Condição BODY-1738: correlação 85.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001739", "SKU-GEN-003167" },
    notes = "Ver procedimento PROC-L1-01739 se aplicável.",
    gen_id = 1738,
}
_DR["G01739"] = {
    title = "Condição INFO-1739: correlação 52.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001740", "SKU-GEN-003174" },
    notes = "Ver procedimento PROC-L1-01740 se aplicável.",
    gen_id = 1739,
}
_DR["G01740"] = {
    title = "Condição ENGINE-1740: correlação 0.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001741", "SKU-GEN-003181" },
    notes = "Ver procedimento PROC-L1-01741 se aplicável.",
    gen_id = 1740,
}
_DR["G01741"] = {
    title = "Condição ABS-1741: correlação 88.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001742", "SKU-GEN-003188" },
    notes = "Ver procedimento PROC-L1-01742 se aplicável.",
    gen_id = 1741,
}
_DR["G01742"] = {
    title = "Condição SRS-1742: correlação 65.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001743", "SKU-GEN-003195" },
    notes = "Ver procedimento PROC-L1-01743 se aplicável.",
    gen_id = 1742,
}
_DR["G01743"] = {
    title = "Condição CLIMATE-1743: correlação 96.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001744", "SKU-GEN-003202" },
    notes = "Ver procedimento PROC-L1-01744 se aplicável.",
    gen_id = 1743,
}
_DR["G01744"] = {
    title = "Condição TRANS-1744: correlação 10.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001745", "SKU-GEN-003209" },
    notes = "Ver procedimento PROC-L1-01745 se aplicável.",
    gen_id = 1744,
}
_DR["G01745"] = {
    title = "Condição FUEL-1745: correlação 76.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001746", "SKU-GEN-003216" },
    notes = "Ver procedimento PROC-L1-01746 se aplicável.",
    gen_id = 1745,
}
_DR["G01746"] = {
    title = "Condição STEER-1746: correlação 78.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001747", "SKU-GEN-003223" },
    notes = "Ver procedimento PROC-L1-01747 se aplicável.",
    gen_id = 1746,
}
_DR["G01747"] = {
    title = "Condição HV-1747: correlação 29.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001748", "SKU-GEN-003230" },
    notes = "Ver procedimento PROC-L1-01748 se aplicável.",
    gen_id = 1747,
}
_DR["G01748"] = {
    title = "Condição BODY-1748: correlação 67.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001749", "SKU-GEN-003237" },
    notes = "Ver procedimento PROC-L1-01749 se aplicável.",
    gen_id = 1748,
}
_DR["G01749"] = {
    title = "Condição INFO-1749: correlação 76.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001750", "SKU-GEN-003244" },
    notes = "Ver procedimento PROC-L1-01750 se aplicável.",
    gen_id = 1749,
}
_DR["G01750"] = {
    title = "Condição ENGINE-1750: correlação 5.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001751", "SKU-GEN-003251" },
    notes = "Ver procedimento PROC-L1-01751 se aplicável.",
    gen_id = 1750,
}
_DR["G01751"] = {
    title = "Condição ABS-1751: correlação 74.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001752", "SKU-GEN-003258" },
    notes = "Ver procedimento PROC-L1-01752 se aplicável.",
    gen_id = 1751,
}
_DR["G01752"] = {
    title = "Condição SRS-1752: correlação 35.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001753", "SKU-GEN-003265" },
    notes = "Ver procedimento PROC-L1-01753 se aplicável.",
    gen_id = 1752,
}
_DR["G01753"] = {
    title = "Condição CLIMATE-1753: correlação 65.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001754", "SKU-GEN-003272" },
    notes = "Ver procedimento PROC-L1-01754 se aplicável.",
    gen_id = 1753,
}
_DR["G01754"] = {
    title = "Condição TRANS-1754: correlação 34.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001755", "SKU-GEN-003279" },
    notes = "Ver procedimento PROC-L1-01755 se aplicável.",
    gen_id = 1754,
}
_DR["G01755"] = {
    title = "Condição FUEL-1755: correlação 88.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001756", "SKU-GEN-003286" },
    notes = "Ver procedimento PROC-L1-01756 se aplicável.",
    gen_id = 1755,
}
_DR["G01756"] = {
    title = "Condição STEER-1756: correlação 30.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001757", "SKU-GEN-003293" },
    notes = "Ver procedimento PROC-L1-01757 se aplicável.",
    gen_id = 1756,
}
_DR["G01757"] = {
    title = "Condição HV-1757: correlação 38.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001758", "SKU-GEN-003300" },
    notes = "Ver procedimento PROC-L1-01758 se aplicável.",
    gen_id = 1757,
}
_DR["G01758"] = {
    title = "Condição BODY-1758: correlação 72.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001759", "SKU-GEN-003307" },
    notes = "Ver procedimento PROC-L1-01759 se aplicável.",
    gen_id = 1758,
}
_DR["G01759"] = {
    title = "Condição INFO-1759: correlação 92.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001760", "SKU-GEN-003314" },
    notes = "Ver procedimento PROC-L1-01760 se aplicável.",
    gen_id = 1759,
}
_DR["G01760"] = {
    title = "Condição ENGINE-1760: correlação 0.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001761", "SKU-GEN-003321" },
    notes = "Ver procedimento PROC-L1-01761 se aplicável.",
    gen_id = 1760,
}
_DR["G01761"] = {
    title = "Condição ABS-1761: correlação 5.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001762", "SKU-GEN-003328" },
    notes = "Ver procedimento PROC-L1-01762 se aplicável.",
    gen_id = 1761,
}
_DR["G01762"] = {
    title = "Condição SRS-1762: correlação 24.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001763", "SKU-GEN-003335" },
    notes = "Ver procedimento PROC-L1-01763 se aplicável.",
    gen_id = 1762,
}
_DR["G01763"] = {
    title = "Condição CLIMATE-1763: correlação 11.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001764", "SKU-GEN-003342" },
    notes = "Ver procedimento PROC-L1-01764 se aplicável.",
    gen_id = 1763,
}
_DR["G01764"] = {
    title = "Condição TRANS-1764: correlação 4.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001765", "SKU-GEN-003349" },
    notes = "Ver procedimento PROC-L1-01765 se aplicável.",
    gen_id = 1764,
}
_DR["G01765"] = {
    title = "Condição FUEL-1765: correlação 64.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001766", "SKU-GEN-003356" },
    notes = "Ver procedimento PROC-L1-01766 se aplicável.",
    gen_id = 1765,
}
_DR["G01766"] = {
    title = "Condição STEER-1766: correlação 70.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001767", "SKU-GEN-003363" },
    notes = "Ver procedimento PROC-L1-01767 se aplicável.",
    gen_id = 1766,
}
_DR["G01767"] = {
    title = "Condição HV-1767: correlação 93.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001768", "SKU-GEN-003370" },
    notes = "Ver procedimento PROC-L1-01768 se aplicável.",
    gen_id = 1767,
}
_DR["G01768"] = {
    title = "Condição BODY-1768: correlação 18.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001769", "SKU-GEN-003377" },
    notes = "Ver procedimento PROC-L1-01769 se aplicável.",
    gen_id = 1768,
}
_DR["G01769"] = {
    title = "Condição INFO-1769: correlação 57.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001770", "SKU-GEN-003384" },
    notes = "Ver procedimento PROC-L1-01770 se aplicável.",
    gen_id = 1769,
}
_DR["G01770"] = {
    title = "Condição ENGINE-1770: correlação 83.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001771", "SKU-GEN-003391" },
    notes = "Ver procedimento PROC-L1-01771 se aplicável.",
    gen_id = 1770,
}
_DR["G01771"] = {
    title = "Condição ABS-1771: correlação 91.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001772", "SKU-GEN-003398" },
    notes = "Ver procedimento PROC-L1-01772 se aplicável.",
    gen_id = 1771,
}
_DR["G01772"] = {
    title = "Condição SRS-1772: correlação 22.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001773", "SKU-GEN-003405" },
    notes = "Ver procedimento PROC-L1-01773 se aplicável.",
    gen_id = 1772,
}
_DR["G01773"] = {
    title = "Condição CLIMATE-1773: correlação 71.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001774", "SKU-GEN-003412" },
    notes = "Ver procedimento PROC-L1-01774 se aplicável.",
    gen_id = 1773,
}
_DR["G01774"] = {
    title = "Condição TRANS-1774: correlação 51.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001775", "SKU-GEN-003419" },
    notes = "Ver procedimento PROC-L1-01775 se aplicável.",
    gen_id = 1774,
}
_DR["G01775"] = {
    title = "Condição FUEL-1775: correlação 18.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001776", "SKU-GEN-003426" },
    notes = "Ver procedimento PROC-L1-01776 se aplicável.",
    gen_id = 1775,
}
_DR["G01776"] = {
    title = "Condição STEER-1776: correlação 58.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001777", "SKU-GEN-003433" },
    notes = "Ver procedimento PROC-L1-01777 se aplicável.",
    gen_id = 1776,
}
_DR["G01777"] = {
    title = "Condição HV-1777: correlação 56.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001778", "SKU-GEN-003440" },
    notes = "Ver procedimento PROC-L1-01778 se aplicável.",
    gen_id = 1777,
}
_DR["G01778"] = {
    title = "Condição BODY-1778: correlação 15.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001779", "SKU-GEN-003447" },
    notes = "Ver procedimento PROC-L1-01779 se aplicável.",
    gen_id = 1778,
}
_DR["G01779"] = {
    title = "Condição INFO-1779: correlação 28.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001780", "SKU-GEN-003454" },
    notes = "Ver procedimento PROC-L1-01780 se aplicável.",
    gen_id = 1779,
}
_DR["G01780"] = {
    title = "Condição ENGINE-1780: correlação 59.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001781", "SKU-GEN-003461" },
    notes = "Ver procedimento PROC-L1-01781 se aplicável.",
    gen_id = 1780,
}
_DR["G01781"] = {
    title = "Condição ABS-1781: correlação 73.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001782", "SKU-GEN-003468" },
    notes = "Ver procedimento PROC-L1-01782 se aplicável.",
    gen_id = 1781,
}
_DR["G01782"] = {
    title = "Condição SRS-1782: correlação 16.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001783", "SKU-GEN-003475" },
    notes = "Ver procedimento PROC-L1-01783 se aplicável.",
    gen_id = 1782,
}
_DR["G01783"] = {
    title = "Condição CLIMATE-1783: correlação 73.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001784", "SKU-GEN-003482" },
    notes = "Ver procedimento PROC-L1-01784 se aplicável.",
    gen_id = 1783,
}
_DR["G01784"] = {
    title = "Condição TRANS-1784: correlação 85.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001785", "SKU-GEN-003489" },
    notes = "Ver procedimento PROC-L1-01785 se aplicável.",
    gen_id = 1784,
}
_DR["G01785"] = {
    title = "Condição FUEL-1785: correlação 81.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001786", "SKU-GEN-003496" },
    notes = "Ver procedimento PROC-L1-01786 se aplicável.",
    gen_id = 1785,
}
_DR["G01786"] = {
    title = "Condição STEER-1786: correlação 33.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001787", "SKU-GEN-003503" },
    notes = "Ver procedimento PROC-L1-01787 se aplicável.",
    gen_id = 1786,
}
_DR["G01787"] = {
    title = "Condição HV-1787: correlação 29.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001788", "SKU-GEN-003510" },
    notes = "Ver procedimento PROC-L1-01788 se aplicável.",
    gen_id = 1787,
}
_DR["G01788"] = {
    title = "Condição BODY-1788: correlação 32.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001789", "SKU-GEN-003517" },
    notes = "Ver procedimento PROC-L1-01789 se aplicável.",
    gen_id = 1788,
}
_DR["G01789"] = {
    title = "Condição INFO-1789: correlação 23.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001790", "SKU-GEN-003524" },
    notes = "Ver procedimento PROC-L1-01790 se aplicável.",
    gen_id = 1789,
}
_DR["G01790"] = {
    title = "Condição ENGINE-1790: correlação 42.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001791", "SKU-GEN-003531" },
    notes = "Ver procedimento PROC-L1-01791 se aplicável.",
    gen_id = 1790,
}
_DR["G01791"] = {
    title = "Condição ABS-1791: correlação 12.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001792", "SKU-GEN-003538" },
    notes = "Ver procedimento PROC-L1-01792 se aplicável.",
    gen_id = 1791,
}
_DR["G01792"] = {
    title = "Condição SRS-1792: correlação 76.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001793", "SKU-GEN-003545" },
    notes = "Ver procedimento PROC-L1-01793 se aplicável.",
    gen_id = 1792,
}
_DR["G01793"] = {
    title = "Condição CLIMATE-1793: correlação 96.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001794", "SKU-GEN-003552" },
    notes = "Ver procedimento PROC-L1-01794 se aplicável.",
    gen_id = 1793,
}
_DR["G01794"] = {
    title = "Condição TRANS-1794: correlação 28.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001795", "SKU-GEN-003559" },
    notes = "Ver procedimento PROC-L1-01795 se aplicável.",
    gen_id = 1794,
}
_DR["G01795"] = {
    title = "Condição FUEL-1795: correlação 12.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001796", "SKU-GEN-003566" },
    notes = "Ver procedimento PROC-L1-01796 se aplicável.",
    gen_id = 1795,
}
_DR["G01796"] = {
    title = "Condição STEER-1796: correlação 86.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001797", "SKU-GEN-003573" },
    notes = "Ver procedimento PROC-L1-01797 se aplicável.",
    gen_id = 1796,
}
_DR["G01797"] = {
    title = "Condição HV-1797: correlação 92.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001798", "SKU-GEN-003580" },
    notes = "Ver procedimento PROC-L1-01798 se aplicável.",
    gen_id = 1797,
}
_DR["G01798"] = {
    title = "Condição BODY-1798: correlação 44.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001799", "SKU-GEN-003587" },
    notes = "Ver procedimento PROC-L1-01799 se aplicável.",
    gen_id = 1798,
}
_DR["G01799"] = {
    title = "Condição INFO-1799: correlação 20.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001800", "SKU-GEN-003594" },
    notes = "Ver procedimento PROC-L1-01800 se aplicável.",
    gen_id = 1799,
}
_DR["G01800"] = {
    title = "Condição ENGINE-1800: correlação 18.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001801", "SKU-GEN-003601" },
    notes = "Ver procedimento PROC-L1-01801 se aplicável.",
    gen_id = 1800,
}
_DR["G01801"] = {
    title = "Condição ABS-1801: correlação 43.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001802", "SKU-GEN-003608" },
    notes = "Ver procedimento PROC-L1-01802 se aplicável.",
    gen_id = 1801,
}
_DR["G01802"] = {
    title = "Condição SRS-1802: correlação 72.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001803", "SKU-GEN-003615" },
    notes = "Ver procedimento PROC-L1-01803 se aplicável.",
    gen_id = 1802,
}
_DR["G01803"] = {
    title = "Condição CLIMATE-1803: correlação 23.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001804", "SKU-GEN-003622" },
    notes = "Ver procedimento PROC-L1-01804 se aplicável.",
    gen_id = 1803,
}
_DR["G01804"] = {
    title = "Condição TRANS-1804: correlação 58.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001805", "SKU-GEN-003629" },
    notes = "Ver procedimento PROC-L1-01805 se aplicável.",
    gen_id = 1804,
}
_DR["G01805"] = {
    title = "Condição FUEL-1805: correlação 25.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001806", "SKU-GEN-003636" },
    notes = "Ver procedimento PROC-L1-01806 se aplicável.",
    gen_id = 1805,
}
_DR["G01806"] = {
    title = "Condição STEER-1806: correlação 64.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001807", "SKU-GEN-003643" },
    notes = "Ver procedimento PROC-L1-01807 se aplicável.",
    gen_id = 1806,
}
_DR["G01807"] = {
    title = "Condição HV-1807: correlação 2.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001808", "SKU-GEN-003650" },
    notes = "Ver procedimento PROC-L1-01808 se aplicável.",
    gen_id = 1807,
}
_DR["G01808"] = {
    title = "Condição BODY-1808: correlação 93.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001809", "SKU-GEN-003657" },
    notes = "Ver procedimento PROC-L1-01809 se aplicável.",
    gen_id = 1808,
}
_DR["G01809"] = {
    title = "Condição INFO-1809: correlação 89.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001810", "SKU-GEN-003664" },
    notes = "Ver procedimento PROC-L1-01810 se aplicável.",
    gen_id = 1809,
}
_DR["G01810"] = {
    title = "Condição ENGINE-1810: correlação 45.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001811", "SKU-GEN-003671" },
    notes = "Ver procedimento PROC-L1-01811 se aplicável.",
    gen_id = 1810,
}
_DR["G01811"] = {
    title = "Condição ABS-1811: correlação 50.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001812", "SKU-GEN-003678" },
    notes = "Ver procedimento PROC-L1-01812 se aplicável.",
    gen_id = 1811,
}
_DR["G01812"] = {
    title = "Condição SRS-1812: correlação 22.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001813", "SKU-GEN-003685" },
    notes = "Ver procedimento PROC-L1-01813 se aplicável.",
    gen_id = 1812,
}
_DR["G01813"] = {
    title = "Condição CLIMATE-1813: correlação 33.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001814", "SKU-GEN-003692" },
    notes = "Ver procedimento PROC-L1-01814 se aplicável.",
    gen_id = 1813,
}
_DR["G01814"] = {
    title = "Condição TRANS-1814: correlação 99.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001815", "SKU-GEN-003699" },
    notes = "Ver procedimento PROC-L1-01815 se aplicável.",
    gen_id = 1814,
}
_DR["G01815"] = {
    title = "Condição FUEL-1815: correlação 85.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001816", "SKU-GEN-003706" },
    notes = "Ver procedimento PROC-L1-01816 se aplicável.",
    gen_id = 1815,
}
_DR["G01816"] = {
    title = "Condição STEER-1816: correlação 36.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001817", "SKU-GEN-003713" },
    notes = "Ver procedimento PROC-L1-01817 se aplicável.",
    gen_id = 1816,
}
_DR["G01817"] = {
    title = "Condição HV-1817: correlação 28.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001818", "SKU-GEN-003720" },
    notes = "Ver procedimento PROC-L1-01818 se aplicável.",
    gen_id = 1817,
}
_DR["G01818"] = {
    title = "Condição BODY-1818: correlação 3.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001819", "SKU-GEN-003727" },
    notes = "Ver procedimento PROC-L1-01819 se aplicável.",
    gen_id = 1818,
}
_DR["G01819"] = {
    title = "Condição INFO-1819: correlação 53.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001820", "SKU-GEN-003734" },
    notes = "Ver procedimento PROC-L1-01820 se aplicável.",
    gen_id = 1819,
}
_DR["G01820"] = {
    title = "Condição ENGINE-1820: correlação 21.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001821", "SKU-GEN-003741" },
    notes = "Ver procedimento PROC-L1-01821 se aplicável.",
    gen_id = 1820,
}
_DR["G01821"] = {
    title = "Condição ABS-1821: correlação 58.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001822", "SKU-GEN-003748" },
    notes = "Ver procedimento PROC-L1-01822 se aplicável.",
    gen_id = 1821,
}
_DR["G01822"] = {
    title = "Condição SRS-1822: correlação 49.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001823", "SKU-GEN-003755" },
    notes = "Ver procedimento PROC-L1-01823 se aplicável.",
    gen_id = 1822,
}
_DR["G01823"] = {
    title = "Condição CLIMATE-1823: correlação 16.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001824", "SKU-GEN-003762" },
    notes = "Ver procedimento PROC-L1-01824 se aplicável.",
    gen_id = 1823,
}
_DR["G01824"] = {
    title = "Condição TRANS-1824: correlação 80.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001825", "SKU-GEN-003769" },
    notes = "Ver procedimento PROC-L1-01825 se aplicável.",
    gen_id = 1824,
}
_DR["G01825"] = {
    title = "Condição FUEL-1825: correlação 49.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001826", "SKU-GEN-003776" },
    notes = "Ver procedimento PROC-L1-01826 se aplicável.",
    gen_id = 1825,
}
_DR["G01826"] = {
    title = "Condição STEER-1826: correlação 73.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001827", "SKU-GEN-003783" },
    notes = "Ver procedimento PROC-L1-01827 se aplicável.",
    gen_id = 1826,
}
_DR["G01827"] = {
    title = "Condição HV-1827: correlação 91.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001828", "SKU-GEN-003790" },
    notes = "Ver procedimento PROC-L1-01828 se aplicável.",
    gen_id = 1827,
}
_DR["G01828"] = {
    title = "Condição BODY-1828: correlação 69.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001829", "SKU-GEN-003797" },
    notes = "Ver procedimento PROC-L1-01829 se aplicável.",
    gen_id = 1828,
}
_DR["G01829"] = {
    title = "Condição INFO-1829: correlação 85.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001830", "SKU-GEN-003804" },
    notes = "Ver procedimento PROC-L1-01830 se aplicável.",
    gen_id = 1829,
}
_DR["G01830"] = {
    title = "Condição ENGINE-1830: correlação 6.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001831", "SKU-GEN-003811" },
    notes = "Ver procedimento PROC-L1-01831 se aplicável.",
    gen_id = 1830,
}
_DR["G01831"] = {
    title = "Condição ABS-1831: correlação 74.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001832", "SKU-GEN-003818" },
    notes = "Ver procedimento PROC-L1-01832 se aplicável.",
    gen_id = 1831,
}
_DR["G01832"] = {
    title = "Condição SRS-1832: correlação 81.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001833", "SKU-GEN-003825" },
    notes = "Ver procedimento PROC-L1-01833 se aplicável.",
    gen_id = 1832,
}
_DR["G01833"] = {
    title = "Condição CLIMATE-1833: correlação 47.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001834", "SKU-GEN-003832" },
    notes = "Ver procedimento PROC-L1-01834 se aplicável.",
    gen_id = 1833,
}
_DR["G01834"] = {
    title = "Condição TRANS-1834: correlação 77.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001835", "SKU-GEN-003839" },
    notes = "Ver procedimento PROC-L1-01835 se aplicável.",
    gen_id = 1834,
}
_DR["G01835"] = {
    title = "Condição FUEL-1835: correlação 65.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001836", "SKU-GEN-003846" },
    notes = "Ver procedimento PROC-L1-01836 se aplicável.",
    gen_id = 1835,
}
_DR["G01836"] = {
    title = "Condição STEER-1836: correlação 47.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001837", "SKU-GEN-003853" },
    notes = "Ver procedimento PROC-L1-01837 se aplicável.",
    gen_id = 1836,
}
_DR["G01837"] = {
    title = "Condição HV-1837: correlação 11.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001838", "SKU-GEN-003860" },
    notes = "Ver procedimento PROC-L1-01838 se aplicável.",
    gen_id = 1837,
}
_DR["G01838"] = {
    title = "Condição BODY-1838: correlação 69.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001839", "SKU-GEN-003867" },
    notes = "Ver procedimento PROC-L1-01839 se aplicável.",
    gen_id = 1838,
}
_DR["G01839"] = {
    title = "Condição INFO-1839: correlação 86.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001840", "SKU-GEN-003874" },
    notes = "Ver procedimento PROC-L1-01840 se aplicável.",
    gen_id = 1839,
}
_DR["G01840"] = {
    title = "Condição ENGINE-1840: correlação 21.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001841", "SKU-GEN-003881" },
    notes = "Ver procedimento PROC-L1-01841 se aplicável.",
    gen_id = 1840,
}
_DR["G01841"] = {
    title = "Condição ABS-1841: correlação 1.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001842", "SKU-GEN-003888" },
    notes = "Ver procedimento PROC-L1-01842 se aplicável.",
    gen_id = 1841,
}
_DR["G01842"] = {
    title = "Condição SRS-1842: correlação 89.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001843", "SKU-GEN-003895" },
    notes = "Ver procedimento PROC-L1-01843 se aplicável.",
    gen_id = 1842,
}
_DR["G01843"] = {
    title = "Condição CLIMATE-1843: correlação 55.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001844", "SKU-GEN-003902" },
    notes = "Ver procedimento PROC-L1-01844 se aplicável.",
    gen_id = 1843,
}
_DR["G01844"] = {
    title = "Condição TRANS-1844: correlação 71.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001845", "SKU-GEN-003909" },
    notes = "Ver procedimento PROC-L1-01845 se aplicável.",
    gen_id = 1844,
}
_DR["G01845"] = {
    title = "Condição FUEL-1845: correlação 75.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001846", "SKU-GEN-003916" },
    notes = "Ver procedimento PROC-L1-01846 se aplicável.",
    gen_id = 1845,
}
_DR["G01846"] = {
    title = "Condição STEER-1846: correlação 95.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001847", "SKU-GEN-003923" },
    notes = "Ver procedimento PROC-L1-01847 se aplicável.",
    gen_id = 1846,
}
_DR["G01847"] = {
    title = "Condição HV-1847: correlação 49.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001848", "SKU-GEN-003930" },
    notes = "Ver procedimento PROC-L1-01848 se aplicável.",
    gen_id = 1847,
}
_DR["G01848"] = {
    title = "Condição BODY-1848: correlação 98.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001849", "SKU-GEN-003937" },
    notes = "Ver procedimento PROC-L1-01849 se aplicável.",
    gen_id = 1848,
}
_DR["G01849"] = {
    title = "Condição INFO-1849: correlação 0.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001850", "SKU-GEN-003944" },
    notes = "Ver procedimento PROC-L1-01850 se aplicável.",
    gen_id = 1849,
}
_DR["G01850"] = {
    title = "Condição ENGINE-1850: correlação 24.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001851", "SKU-GEN-003951" },
    notes = "Ver procedimento PROC-L1-01851 se aplicável.",
    gen_id = 1850,
}
_DR["G01851"] = {
    title = "Condição ABS-1851: correlação 77.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001852", "SKU-GEN-003958" },
    notes = "Ver procedimento PROC-L1-01852 se aplicável.",
    gen_id = 1851,
}
_DR["G01852"] = {
    title = "Condição SRS-1852: correlação 46.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001853", "SKU-GEN-003965" },
    notes = "Ver procedimento PROC-L1-01853 se aplicável.",
    gen_id = 1852,
}
_DR["G01853"] = {
    title = "Condição CLIMATE-1853: correlação 37.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001854", "SKU-GEN-003972" },
    notes = "Ver procedimento PROC-L1-01854 se aplicável.",
    gen_id = 1853,
}
_DR["G01854"] = {
    title = "Condição TRANS-1854: correlação 73.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001855", "SKU-GEN-003979" },
    notes = "Ver procedimento PROC-L1-01855 se aplicável.",
    gen_id = 1854,
}
_DR["G01855"] = {
    title = "Condição FUEL-1855: correlação 56.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001856", "SKU-GEN-003986" },
    notes = "Ver procedimento PROC-L1-01856 se aplicável.",
    gen_id = 1855,
}
_DR["G01856"] = {
    title = "Condição STEER-1856: correlação 92.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001857", "SKU-GEN-003993" },
    notes = "Ver procedimento PROC-L1-01857 se aplicável.",
    gen_id = 1856,
}
_DR["G01857"] = {
    title = "Condição HV-1857: correlação 34.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001858", "SKU-GEN-004000" },
    notes = "Ver procedimento PROC-L1-01858 se aplicável.",
    gen_id = 1857,
}
_DR["G01858"] = {
    title = "Condição BODY-1858: correlação 58.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001859", "SKU-GEN-004007" },
    notes = "Ver procedimento PROC-L1-01859 se aplicável.",
    gen_id = 1858,
}
_DR["G01859"] = {
    title = "Condição INFO-1859: correlação 35.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001860", "SKU-GEN-004014" },
    notes = "Ver procedimento PROC-L1-01860 se aplicável.",
    gen_id = 1859,
}
_DR["G01860"] = {
    title = "Condição ENGINE-1860: correlação 1.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001861", "SKU-GEN-004021" },
    notes = "Ver procedimento PROC-L1-01861 se aplicável.",
    gen_id = 1860,
}
_DR["G01861"] = {
    title = "Condição ABS-1861: correlação 20.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001862", "SKU-GEN-004028" },
    notes = "Ver procedimento PROC-L1-01862 se aplicável.",
    gen_id = 1861,
}
_DR["G01862"] = {
    title = "Condição SRS-1862: correlação 39.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001863", "SKU-GEN-004035" },
    notes = "Ver procedimento PROC-L1-01863 se aplicável.",
    gen_id = 1862,
}
_DR["G01863"] = {
    title = "Condição CLIMATE-1863: correlação 34.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001864", "SKU-GEN-004042" },
    notes = "Ver procedimento PROC-L1-01864 se aplicável.",
    gen_id = 1863,
}
_DR["G01864"] = {
    title = "Condição TRANS-1864: correlação 15.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001865", "SKU-GEN-004049" },
    notes = "Ver procedimento PROC-L1-01865 se aplicável.",
    gen_id = 1864,
}
_DR["G01865"] = {
    title = "Condição FUEL-1865: correlação 30.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001866", "SKU-GEN-004056" },
    notes = "Ver procedimento PROC-L1-01866 se aplicável.",
    gen_id = 1865,
}
_DR["G01866"] = {
    title = "Condição STEER-1866: correlação 81.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001867", "SKU-GEN-004063" },
    notes = "Ver procedimento PROC-L1-01867 se aplicável.",
    gen_id = 1866,
}
_DR["G01867"] = {
    title = "Condição HV-1867: correlação 85.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001868", "SKU-GEN-004070" },
    notes = "Ver procedimento PROC-L1-01868 se aplicável.",
    gen_id = 1867,
}
_DR["G01868"] = {
    title = "Condição BODY-1868: correlação 99.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001869", "SKU-GEN-004077" },
    notes = "Ver procedimento PROC-L1-01869 se aplicável.",
    gen_id = 1868,
}
_DR["G01869"] = {
    title = "Condição INFO-1869: correlação 6.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001870", "SKU-GEN-004084" },
    notes = "Ver procedimento PROC-L1-01870 se aplicável.",
    gen_id = 1869,
}
_DR["G01870"] = {
    title = "Condição ENGINE-1870: correlação 14.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001871", "SKU-GEN-004091" },
    notes = "Ver procedimento PROC-L1-01871 se aplicável.",
    gen_id = 1870,
}
_DR["G01871"] = {
    title = "Condição ABS-1871: correlação 84.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001872", "SKU-GEN-004098" },
    notes = "Ver procedimento PROC-L1-01872 se aplicável.",
    gen_id = 1871,
}
_DR["G01872"] = {
    title = "Condição SRS-1872: correlação 44.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001873", "SKU-GEN-004105" },
    notes = "Ver procedimento PROC-L1-01873 se aplicável.",
    gen_id = 1872,
}
_DR["G01873"] = {
    title = "Condição CLIMATE-1873: correlação 58.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001874", "SKU-GEN-004112" },
    notes = "Ver procedimento PROC-L1-01874 se aplicável.",
    gen_id = 1873,
}
_DR["G01874"] = {
    title = "Condição TRANS-1874: correlação 76.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001875", "SKU-GEN-004119" },
    notes = "Ver procedimento PROC-L1-01875 se aplicável.",
    gen_id = 1874,
}
_DR["G01875"] = {
    title = "Condição FUEL-1875: correlação 6.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001876", "SKU-GEN-004126" },
    notes = "Ver procedimento PROC-L1-01876 se aplicável.",
    gen_id = 1875,
}
_DR["G01876"] = {
    title = "Condição STEER-1876: correlação 38.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001877", "SKU-GEN-004133" },
    notes = "Ver procedimento PROC-L1-01877 se aplicável.",
    gen_id = 1876,
}
_DR["G01877"] = {
    title = "Condição HV-1877: correlação 85.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001878", "SKU-GEN-004140" },
    notes = "Ver procedimento PROC-L1-01878 se aplicável.",
    gen_id = 1877,
}
_DR["G01878"] = {
    title = "Condição BODY-1878: correlação 79.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001879", "SKU-GEN-004147" },
    notes = "Ver procedimento PROC-L1-01879 se aplicável.",
    gen_id = 1878,
}
_DR["G01879"] = {
    title = "Condição INFO-1879: correlação 27.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001880", "SKU-GEN-004154" },
    notes = "Ver procedimento PROC-L1-01880 se aplicável.",
    gen_id = 1879,
}
_DR["G01880"] = {
    title = "Condição ENGINE-1880: correlação 28.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001881", "SKU-GEN-004161" },
    notes = "Ver procedimento PROC-L1-01881 se aplicável.",
    gen_id = 1880,
}
_DR["G01881"] = {
    title = "Condição ABS-1881: correlação 79.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001882", "SKU-GEN-004168" },
    notes = "Ver procedimento PROC-L1-01882 se aplicável.",
    gen_id = 1881,
}
_DR["G01882"] = {
    title = "Condição SRS-1882: correlação 31.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001883", "SKU-GEN-004175" },
    notes = "Ver procedimento PROC-L1-01883 se aplicável.",
    gen_id = 1882,
}
_DR["G01883"] = {
    title = "Condição CLIMATE-1883: correlação 70.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001884", "SKU-GEN-004182" },
    notes = "Ver procedimento PROC-L1-01884 se aplicável.",
    gen_id = 1883,
}
_DR["G01884"] = {
    title = "Condição TRANS-1884: correlação 29.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001885", "SKU-GEN-004189" },
    notes = "Ver procedimento PROC-L1-01885 se aplicável.",
    gen_id = 1884,
}
_DR["G01885"] = {
    title = "Condição FUEL-1885: correlação 66.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001886", "SKU-GEN-004196" },
    notes = "Ver procedimento PROC-L1-01886 se aplicável.",
    gen_id = 1885,
}
_DR["G01886"] = {
    title = "Condição STEER-1886: correlação 80.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001887", "SKU-GEN-004203" },
    notes = "Ver procedimento PROC-L1-01887 se aplicável.",
    gen_id = 1886,
}
_DR["G01887"] = {
    title = "Condição HV-1887: correlação 57.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001888", "SKU-GEN-004210" },
    notes = "Ver procedimento PROC-L1-01888 se aplicável.",
    gen_id = 1887,
}
_DR["G01888"] = {
    title = "Condição BODY-1888: correlação 85.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001889", "SKU-GEN-004217" },
    notes = "Ver procedimento PROC-L1-01889 se aplicável.",
    gen_id = 1888,
}
_DR["G01889"] = {
    title = "Condição INFO-1889: correlação 62.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001890", "SKU-GEN-004224" },
    notes = "Ver procedimento PROC-L1-01890 se aplicável.",
    gen_id = 1889,
}
_DR["G01890"] = {
    title = "Condição ENGINE-1890: correlação 91.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001891", "SKU-GEN-004231" },
    notes = "Ver procedimento PROC-L1-01891 se aplicável.",
    gen_id = 1890,
}
_DR["G01891"] = {
    title = "Condição ABS-1891: correlação 31.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001892", "SKU-GEN-004238" },
    notes = "Ver procedimento PROC-L1-01892 se aplicável.",
    gen_id = 1891,
}
_DR["G01892"] = {
    title = "Condição SRS-1892: correlação 52.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001893", "SKU-GEN-004245" },
    notes = "Ver procedimento PROC-L1-01893 se aplicável.",
    gen_id = 1892,
}
_DR["G01893"] = {
    title = "Condição CLIMATE-1893: correlação 40.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001894", "SKU-GEN-004252" },
    notes = "Ver procedimento PROC-L1-01894 se aplicável.",
    gen_id = 1893,
}
_DR["G01894"] = {
    title = "Condição TRANS-1894: correlação 60.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001895", "SKU-GEN-004259" },
    notes = "Ver procedimento PROC-L1-01895 se aplicável.",
    gen_id = 1894,
}
_DR["G01895"] = {
    title = "Condição FUEL-1895: correlação 1.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001896", "SKU-GEN-004266" },
    notes = "Ver procedimento PROC-L1-01896 se aplicável.",
    gen_id = 1895,
}
_DR["G01896"] = {
    title = "Condição STEER-1896: correlação 76.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001897", "SKU-GEN-004273" },
    notes = "Ver procedimento PROC-L1-01897 se aplicável.",
    gen_id = 1896,
}
_DR["G01897"] = {
    title = "Condição HV-1897: correlação 45.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001898", "SKU-GEN-004280" },
    notes = "Ver procedimento PROC-L1-01898 se aplicável.",
    gen_id = 1897,
}
_DR["G01898"] = {
    title = "Condição BODY-1898: correlação 25.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001899", "SKU-GEN-004287" },
    notes = "Ver procedimento PROC-L1-01899 se aplicável.",
    gen_id = 1898,
}
_DR["G01899"] = {
    title = "Condição INFO-1899: correlação 4.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001900", "SKU-GEN-004294" },
    notes = "Ver procedimento PROC-L1-01900 se aplicável.",
    gen_id = 1899,
}
_DR["G01900"] = {
    title = "Condição ENGINE-1900: correlação 95.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001901", "SKU-GEN-004301" },
    notes = "Ver procedimento PROC-L1-01901 se aplicável.",
    gen_id = 1900,
}
_DR["G01901"] = {
    title = "Condição ABS-1901: correlação 98.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001902", "SKU-GEN-004308" },
    notes = "Ver procedimento PROC-L1-01902 se aplicável.",
    gen_id = 1901,
}
_DR["G01902"] = {
    title = "Condição SRS-1902: correlação 29.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001903", "SKU-GEN-004315" },
    notes = "Ver procedimento PROC-L1-01903 se aplicável.",
    gen_id = 1902,
}
_DR["G01903"] = {
    title = "Condição CLIMATE-1903: correlação 87.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001904", "SKU-GEN-004322" },
    notes = "Ver procedimento PROC-L1-01904 se aplicável.",
    gen_id = 1903,
}
_DR["G01904"] = {
    title = "Condição TRANS-1904: correlação 59.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001905", "SKU-GEN-004329" },
    notes = "Ver procedimento PROC-L1-01905 se aplicável.",
    gen_id = 1904,
}
_DR["G01905"] = {
    title = "Condição FUEL-1905: correlação 66.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001906", "SKU-GEN-004336" },
    notes = "Ver procedimento PROC-L1-01906 se aplicável.",
    gen_id = 1905,
}
_DR["G01906"] = {
    title = "Condição STEER-1906: correlação 41.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001907", "SKU-GEN-004343" },
    notes = "Ver procedimento PROC-L1-01907 se aplicável.",
    gen_id = 1906,
}
_DR["G01907"] = {
    title = "Condição HV-1907: correlação 66.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001908", "SKU-GEN-004350" },
    notes = "Ver procedimento PROC-L1-01908 se aplicável.",
    gen_id = 1907,
}
_DR["G01908"] = {
    title = "Condição BODY-1908: correlação 79.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001909", "SKU-GEN-004357" },
    notes = "Ver procedimento PROC-L1-01909 se aplicável.",
    gen_id = 1908,
}
_DR["G01909"] = {
    title = "Condição INFO-1909: correlação 13.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001910", "SKU-GEN-004364" },
    notes = "Ver procedimento PROC-L1-01910 se aplicável.",
    gen_id = 1909,
}
_DR["G01910"] = {
    title = "Condição ENGINE-1910: correlação 59.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001911", "SKU-GEN-004371" },
    notes = "Ver procedimento PROC-L1-01911 se aplicável.",
    gen_id = 1910,
}
_DR["G01911"] = {
    title = "Condição ABS-1911: correlação 12.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001912", "SKU-GEN-004378" },
    notes = "Ver procedimento PROC-L1-01912 se aplicável.",
    gen_id = 1911,
}
_DR["G01912"] = {
    title = "Condição SRS-1912: correlação 28.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001913", "SKU-GEN-004385" },
    notes = "Ver procedimento PROC-L1-01913 se aplicável.",
    gen_id = 1912,
}
_DR["G01913"] = {
    title = "Condição CLIMATE-1913: correlação 37.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001914", "SKU-GEN-004392" },
    notes = "Ver procedimento PROC-L1-01914 se aplicável.",
    gen_id = 1913,
}
_DR["G01914"] = {
    title = "Condição TRANS-1914: correlação 20.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001915", "SKU-GEN-004399" },
    notes = "Ver procedimento PROC-L1-01915 se aplicável.",
    gen_id = 1914,
}
_DR["G01915"] = {
    title = "Condição FUEL-1915: correlação 54.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001916", "SKU-GEN-004406" },
    notes = "Ver procedimento PROC-L1-01916 se aplicável.",
    gen_id = 1915,
}
_DR["G01916"] = {
    title = "Condição STEER-1916: correlação 60.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001917", "SKU-GEN-004413" },
    notes = "Ver procedimento PROC-L1-01917 se aplicável.",
    gen_id = 1916,
}
_DR["G01917"] = {
    title = "Condição HV-1917: correlação 68.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001918", "SKU-GEN-004420" },
    notes = "Ver procedimento PROC-L1-01918 se aplicável.",
    gen_id = 1917,
}
_DR["G01918"] = {
    title = "Condição BODY-1918: correlação 16.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001919", "SKU-GEN-004427" },
    notes = "Ver procedimento PROC-L1-01919 se aplicável.",
    gen_id = 1918,
}
_DR["G01919"] = {
    title = "Condição INFO-1919: correlação 24.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001920", "SKU-GEN-004434" },
    notes = "Ver procedimento PROC-L1-01920 se aplicável.",
    gen_id = 1919,
}
_DR["G01920"] = {
    title = "Condição ENGINE-1920: correlação 29.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001921", "SKU-GEN-004441" },
    notes = "Ver procedimento PROC-L1-01921 se aplicável.",
    gen_id = 1920,
}
_DR["G01921"] = {
    title = "Condição ABS-1921: correlação 83.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001922", "SKU-GEN-004448" },
    notes = "Ver procedimento PROC-L1-01922 se aplicável.",
    gen_id = 1921,
}
_DR["G01922"] = {
    title = "Condição SRS-1922: correlação 85.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001923", "SKU-GEN-004455" },
    notes = "Ver procedimento PROC-L1-01923 se aplicável.",
    gen_id = 1922,
}
_DR["G01923"] = {
    title = "Condição CLIMATE-1923: correlação 70.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001924", "SKU-GEN-004462" },
    notes = "Ver procedimento PROC-L1-01924 se aplicável.",
    gen_id = 1923,
}
_DR["G01924"] = {
    title = "Condição TRANS-1924: correlação 10.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001925", "SKU-GEN-004469" },
    notes = "Ver procedimento PROC-L1-01925 se aplicável.",
    gen_id = 1924,
}
_DR["G01925"] = {
    title = "Condição FUEL-1925: correlação 50.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001926", "SKU-GEN-004476" },
    notes = "Ver procedimento PROC-L1-01926 se aplicável.",
    gen_id = 1925,
}
_DR["G01926"] = {
    title = "Condição STEER-1926: correlação 17.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001927", "SKU-GEN-004483" },
    notes = "Ver procedimento PROC-L1-01927 se aplicável.",
    gen_id = 1926,
}
_DR["G01927"] = {
    title = "Condição HV-1927: correlação 5.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001928", "SKU-GEN-004490" },
    notes = "Ver procedimento PROC-L1-01928 se aplicável.",
    gen_id = 1927,
}
_DR["G01928"] = {
    title = "Condição BODY-1928: correlação 62.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001929", "SKU-GEN-004497" },
    notes = "Ver procedimento PROC-L1-01929 se aplicável.",
    gen_id = 1928,
}
_DR["G01929"] = {
    title = "Condição INFO-1929: correlação 33.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001930", "SKU-GEN-004504" },
    notes = "Ver procedimento PROC-L1-01930 se aplicável.",
    gen_id = 1929,
}
_DR["G01930"] = {
    title = "Condição ENGINE-1930: correlação 6.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001931", "SKU-GEN-004511" },
    notes = "Ver procedimento PROC-L1-01931 se aplicável.",
    gen_id = 1930,
}
_DR["G01931"] = {
    title = "Condição ABS-1931: correlação 93.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001932", "SKU-GEN-004518" },
    notes = "Ver procedimento PROC-L1-01932 se aplicável.",
    gen_id = 1931,
}
_DR["G01932"] = {
    title = "Condição SRS-1932: correlação 85.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001933", "SKU-GEN-004525" },
    notes = "Ver procedimento PROC-L1-01933 se aplicável.",
    gen_id = 1932,
}
_DR["G01933"] = {
    title = "Condição CLIMATE-1933: correlação 91.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001934", "SKU-GEN-004532" },
    notes = "Ver procedimento PROC-L1-01934 se aplicável.",
    gen_id = 1933,
}
_DR["G01934"] = {
    title = "Condição TRANS-1934: correlação 27.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001935", "SKU-GEN-004539" },
    notes = "Ver procedimento PROC-L1-01935 se aplicável.",
    gen_id = 1934,
}
_DR["G01935"] = {
    title = "Condição FUEL-1935: correlação 61.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001936", "SKU-GEN-004546" },
    notes = "Ver procedimento PROC-L1-01936 se aplicável.",
    gen_id = 1935,
}
_DR["G01936"] = {
    title = "Condição STEER-1936: correlação 59.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001937", "SKU-GEN-004553" },
    notes = "Ver procedimento PROC-L1-01937 se aplicável.",
    gen_id = 1936,
}
_DR["G01937"] = {
    title = "Condição HV-1937: correlação 69.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001938", "SKU-GEN-004560" },
    notes = "Ver procedimento PROC-L1-01938 se aplicável.",
    gen_id = 1937,
}
_DR["G01938"] = {
    title = "Condição BODY-1938: correlação 30.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001939", "SKU-GEN-004567" },
    notes = "Ver procedimento PROC-L1-01939 se aplicável.",
    gen_id = 1938,
}
_DR["G01939"] = {
    title = "Condição INFO-1939: correlação 3.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001940", "SKU-GEN-004574" },
    notes = "Ver procedimento PROC-L1-01940 se aplicável.",
    gen_id = 1939,
}
_DR["G01940"] = {
    title = "Condição ENGINE-1940: correlação 68.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001941", "SKU-GEN-004581" },
    notes = "Ver procedimento PROC-L1-01941 se aplicável.",
    gen_id = 1940,
}
_DR["G01941"] = {
    title = "Condição ABS-1941: correlação 71.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001942", "SKU-GEN-004588" },
    notes = "Ver procedimento PROC-L1-01942 se aplicável.",
    gen_id = 1941,
}
_DR["G01942"] = {
    title = "Condição SRS-1942: correlação 74.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001943", "SKU-GEN-004595" },
    notes = "Ver procedimento PROC-L1-01943 se aplicável.",
    gen_id = 1942,
}
_DR["G01943"] = {
    title = "Condição CLIMATE-1943: correlação 21.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001944", "SKU-GEN-004602" },
    notes = "Ver procedimento PROC-L1-01944 se aplicável.",
    gen_id = 1943,
}
_DR["G01944"] = {
    title = "Condição TRANS-1944: correlação 46.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001945", "SKU-GEN-004609" },
    notes = "Ver procedimento PROC-L1-01945 se aplicável.",
    gen_id = 1944,
}
_DR["G01945"] = {
    title = "Condição FUEL-1945: correlação 34.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001946", "SKU-GEN-004616" },
    notes = "Ver procedimento PROC-L1-01946 se aplicável.",
    gen_id = 1945,
}
_DR["G01946"] = {
    title = "Condição STEER-1946: correlação 42.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001947", "SKU-GEN-004623" },
    notes = "Ver procedimento PROC-L1-01947 se aplicável.",
    gen_id = 1946,
}
_DR["G01947"] = {
    title = "Condição HV-1947: correlação 1.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001948", "SKU-GEN-004630" },
    notes = "Ver procedimento PROC-L1-01948 se aplicável.",
    gen_id = 1947,
}
_DR["G01948"] = {
    title = "Condição BODY-1948: correlação 0.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001949", "SKU-GEN-004637" },
    notes = "Ver procedimento PROC-L1-01949 se aplicável.",
    gen_id = 1948,
}
_DR["G01949"] = {
    title = "Condição INFO-1949: correlação 78.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001950", "SKU-GEN-004644" },
    notes = "Ver procedimento PROC-L1-01950 se aplicável.",
    gen_id = 1949,
}
_DR["G01950"] = {
    title = "Condição ENGINE-1950: correlação 10.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001951", "SKU-GEN-004651" },
    notes = "Ver procedimento PROC-L1-01951 se aplicável.",
    gen_id = 1950,
}
_DR["G01951"] = {
    title = "Condição ABS-1951: correlação 38.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001952", "SKU-GEN-004658" },
    notes = "Ver procedimento PROC-L1-01952 se aplicável.",
    gen_id = 1951,
}
_DR["G01952"] = {
    title = "Condição SRS-1952: correlação 90.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001953", "SKU-GEN-004665" },
    notes = "Ver procedimento PROC-L1-01953 se aplicável.",
    gen_id = 1952,
}
_DR["G01953"] = {
    title = "Condição CLIMATE-1953: correlação 86.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001954", "SKU-GEN-004672" },
    notes = "Ver procedimento PROC-L1-01954 se aplicável.",
    gen_id = 1953,
}
_DR["G01954"] = {
    title = "Condição TRANS-1954: correlação 65.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001955", "SKU-GEN-004679" },
    notes = "Ver procedimento PROC-L1-01955 se aplicável.",
    gen_id = 1954,
}
_DR["G01955"] = {
    title = "Condição FUEL-1955: correlação 43.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001956", "SKU-GEN-004686" },
    notes = "Ver procedimento PROC-L1-01956 se aplicável.",
    gen_id = 1955,
}
_DR["G01956"] = {
    title = "Condição STEER-1956: correlação 87.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001957", "SKU-GEN-004693" },
    notes = "Ver procedimento PROC-L1-01957 se aplicável.",
    gen_id = 1956,
}
_DR["G01957"] = {
    title = "Condição HV-1957: correlação 22.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001958", "SKU-GEN-004700" },
    notes = "Ver procedimento PROC-L1-01958 se aplicável.",
    gen_id = 1957,
}
_DR["G01958"] = {
    title = "Condição BODY-1958: correlação 93.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001959", "SKU-GEN-004707" },
    notes = "Ver procedimento PROC-L1-01959 se aplicável.",
    gen_id = 1958,
}
_DR["G01959"] = {
    title = "Condição INFO-1959: correlação 2.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001960", "SKU-GEN-004714" },
    notes = "Ver procedimento PROC-L1-01960 se aplicável.",
    gen_id = 1959,
}
_DR["G01960"] = {
    title = "Condição ENGINE-1960: correlação 19.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001961", "SKU-GEN-004721" },
    notes = "Ver procedimento PROC-L1-01961 se aplicável.",
    gen_id = 1960,
}
_DR["G01961"] = {
    title = "Condição ABS-1961: correlação 22.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001962", "SKU-GEN-004728" },
    notes = "Ver procedimento PROC-L1-01962 se aplicável.",
    gen_id = 1961,
}
_DR["G01962"] = {
    title = "Condição SRS-1962: correlação 81.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001963", "SKU-GEN-004735" },
    notes = "Ver procedimento PROC-L1-01963 se aplicável.",
    gen_id = 1962,
}
_DR["G01963"] = {
    title = "Condição CLIMATE-1963: correlação 76.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001964", "SKU-GEN-004742" },
    notes = "Ver procedimento PROC-L1-01964 se aplicável.",
    gen_id = 1963,
}
_DR["G01964"] = {
    title = "Condição TRANS-1964: correlação 91.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001965", "SKU-GEN-004749" },
    notes = "Ver procedimento PROC-L1-01965 se aplicável.",
    gen_id = 1964,
}
_DR["G01965"] = {
    title = "Condição FUEL-1965: correlação 1.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001966", "SKU-GEN-004756" },
    notes = "Ver procedimento PROC-L1-01966 se aplicável.",
    gen_id = 1965,
}
_DR["G01966"] = {
    title = "Condição STEER-1966: correlação 5.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001967", "SKU-GEN-004763" },
    notes = "Ver procedimento PROC-L1-01967 se aplicável.",
    gen_id = 1966,
}
_DR["G01967"] = {
    title = "Condição HV-1967: correlação 51.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001968", "SKU-GEN-004770" },
    notes = "Ver procedimento PROC-L1-01968 se aplicável.",
    gen_id = 1967,
}
_DR["G01968"] = {
    title = "Condição BODY-1968: correlação 30.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001969", "SKU-GEN-004777" },
    notes = "Ver procedimento PROC-L1-01969 se aplicável.",
    gen_id = 1968,
}
_DR["G01969"] = {
    title = "Condição INFO-1969: correlação 51.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001970", "SKU-GEN-004784" },
    notes = "Ver procedimento PROC-L1-01970 se aplicável.",
    gen_id = 1969,
}
_DR["G01970"] = {
    title = "Condição ENGINE-1970: correlação 93.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001971", "SKU-GEN-004791" },
    notes = "Ver procedimento PROC-L1-01971 se aplicável.",
    gen_id = 1970,
}
_DR["G01971"] = {
    title = "Condição ABS-1971: correlação 83.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001972", "SKU-GEN-004798" },
    notes = "Ver procedimento PROC-L1-01972 se aplicável.",
    gen_id = 1971,
}
_DR["G01972"] = {
    title = "Condição SRS-1972: correlação 99.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001973", "SKU-GEN-004805" },
    notes = "Ver procedimento PROC-L1-01973 se aplicável.",
    gen_id = 1972,
}
_DR["G01973"] = {
    title = "Condição CLIMATE-1973: correlação 36.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001974", "SKU-GEN-004812" },
    notes = "Ver procedimento PROC-L1-01974 se aplicável.",
    gen_id = 1973,
}
_DR["G01974"] = {
    title = "Condição TRANS-1974: correlação 98.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001975", "SKU-GEN-004819" },
    notes = "Ver procedimento PROC-L1-01975 se aplicável.",
    gen_id = 1974,
}
_DR["G01975"] = {
    title = "Condição FUEL-1975: correlação 98.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001976", "SKU-GEN-004826" },
    notes = "Ver procedimento PROC-L1-01976 se aplicável.",
    gen_id = 1975,
}
_DR["G01976"] = {
    title = "Condição STEER-1976: correlação 75.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001977", "SKU-GEN-004833" },
    notes = "Ver procedimento PROC-L1-01977 se aplicável.",
    gen_id = 1976,
}
_DR["G01977"] = {
    title = "Condição HV-1977: correlação 18.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001978", "SKU-GEN-004840" },
    notes = "Ver procedimento PROC-L1-01978 se aplicável.",
    gen_id = 1977,
}
_DR["G01978"] = {
    title = "Condição BODY-1978: correlação 7.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001979", "SKU-GEN-004847" },
    notes = "Ver procedimento PROC-L1-01979 se aplicável.",
    gen_id = 1978,
}
_DR["G01979"] = {
    title = "Condição INFO-1979: correlação 35.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001980", "SKU-GEN-004854" },
    notes = "Ver procedimento PROC-L1-01980 se aplicável.",
    gen_id = 1979,
}
_DR["G01980"] = {
    title = "Condição ENGINE-1980: correlação 79.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001981", "SKU-GEN-004861" },
    notes = "Ver procedimento PROC-L1-01981 se aplicável.",
    gen_id = 1980,
}
_DR["G01981"] = {
    title = "Condição ABS-1981: correlação 45.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001982", "SKU-GEN-004868" },
    notes = "Ver procedimento PROC-L1-01982 se aplicável.",
    gen_id = 1981,
}
_DR["G01982"] = {
    title = "Condição SRS-1982: correlação 75.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001983", "SKU-GEN-004875" },
    notes = "Ver procedimento PROC-L1-01983 se aplicável.",
    gen_id = 1982,
}
_DR["G01983"] = {
    title = "Condição CLIMATE-1983: correlação 56.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001984", "SKU-GEN-004882" },
    notes = "Ver procedimento PROC-L1-01984 se aplicável.",
    gen_id = 1983,
}
_DR["G01984"] = {
    title = "Condição TRANS-1984: correlação 28.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001985", "SKU-GEN-004889" },
    notes = "Ver procedimento PROC-L1-01985 se aplicável.",
    gen_id = 1984,
}
_DR["G01985"] = {
    title = "Condição FUEL-1985: correlação 98.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001986", "SKU-GEN-004896" },
    notes = "Ver procedimento PROC-L1-01986 se aplicável.",
    gen_id = 1985,
}
_DR["G01986"] = {
    title = "Condição STEER-1986: correlação 60.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001987", "SKU-GEN-004903" },
    notes = "Ver procedimento PROC-L1-01987 se aplicável.",
    gen_id = 1986,
}
_DR["G01987"] = {
    title = "Condição HV-1987: correlação 44.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001988", "SKU-GEN-004910" },
    notes = "Ver procedimento PROC-L1-01988 se aplicável.",
    gen_id = 1987,
}
_DR["G01988"] = {
    title = "Condição BODY-1988: correlação 11.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001989", "SKU-GEN-004917" },
    notes = "Ver procedimento PROC-L1-01989 se aplicável.",
    gen_id = 1988,
}
_DR["G01989"] = {
    title = "Condição INFO-1989: correlação 88.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-001990", "SKU-GEN-004924" },
    notes = "Ver procedimento PROC-L1-01990 se aplicável.",
    gen_id = 1989,
}
_DR["G01990"] = {
    title = "Condição ENGINE-1990: correlação 1.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-001991", "SKU-GEN-004931" },
    notes = "Ver procedimento PROC-L1-01991 se aplicável.",
    gen_id = 1990,
}
_DR["G01991"] = {
    title = "Condição ABS-1991: correlação 74.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-001992", "SKU-GEN-004938" },
    notes = "Ver procedimento PROC-L1-01992 se aplicável.",
    gen_id = 1991,
}
_DR["G01992"] = {
    title = "Condição SRS-1992: correlação 38.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-001993", "SKU-GEN-004945" },
    notes = "Ver procedimento PROC-L1-01993 se aplicável.",
    gen_id = 1992,
}
_DR["G01993"] = {
    title = "Condição CLIMATE-1993: correlação 33.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-001994", "SKU-GEN-004952" },
    notes = "Ver procedimento PROC-L1-01994 se aplicável.",
    gen_id = 1993,
}
_DR["G01994"] = {
    title = "Condição TRANS-1994: correlação 64.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-001995", "SKU-GEN-004959" },
    notes = "Ver procedimento PROC-L1-01995 se aplicável.",
    gen_id = 1994,
}
_DR["G01995"] = {
    title = "Condição FUEL-1995: correlação 27.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-001996", "SKU-GEN-004966" },
    notes = "Ver procedimento PROC-L1-01996 se aplicável.",
    gen_id = 1995,
}
_DR["G01996"] = {
    title = "Condição STEER-1996: correlação 3.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-001997", "SKU-GEN-004973" },
    notes = "Ver procedimento PROC-L1-01997 se aplicável.",
    gen_id = 1996,
}
_DR["G01997"] = {
    title = "Condição HV-1997: correlação 62.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-001998", "SKU-GEN-004980" },
    notes = "Ver procedimento PROC-L1-01998 se aplicável.",
    gen_id = 1997,
}
_DR["G01998"] = {
    title = "Condição BODY-1998: correlação 41.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-001999", "SKU-GEN-004987" },
    notes = "Ver procedimento PROC-L1-01999 se aplicável.",
    gen_id = 1998,
}
_DR["G01999"] = {
    title = "Condição INFO-1999: correlação 77.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002000", "SKU-GEN-004994" },
    notes = "Ver procedimento PROC-L1-02000 se aplicável.",
    gen_id = 1999,
}
_DR["G02000"] = {
    title = "Condição ENGINE-2000: correlação 57.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002001", "SKU-GEN-005001" },
    notes = "Ver procedimento PROC-L1-02001 se aplicável.",
    gen_id = 2000,
}
_DR["G02001"] = {
    title = "Condição ABS-2001: correlação 33.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002002", "SKU-GEN-005008" },
    notes = "Ver procedimento PROC-L1-02002 se aplicável.",
    gen_id = 2001,
}
_DR["G02002"] = {
    title = "Condição SRS-2002: correlação 90.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002003", "SKU-GEN-005015" },
    notes = "Ver procedimento PROC-L1-02003 se aplicável.",
    gen_id = 2002,
}
_DR["G02003"] = {
    title = "Condição CLIMATE-2003: correlação 76.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002004", "SKU-GEN-005022" },
    notes = "Ver procedimento PROC-L1-02004 se aplicável.",
    gen_id = 2003,
}
_DR["G02004"] = {
    title = "Condição TRANS-2004: correlação 88.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002005", "SKU-GEN-005029" },
    notes = "Ver procedimento PROC-L1-02005 se aplicável.",
    gen_id = 2004,
}
_DR["G02005"] = {
    title = "Condição FUEL-2005: correlação 50.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002006", "SKU-GEN-005036" },
    notes = "Ver procedimento PROC-L1-02006 se aplicável.",
    gen_id = 2005,
}
_DR["G02006"] = {
    title = "Condição STEER-2006: correlação 36.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002007", "SKU-GEN-005043" },
    notes = "Ver procedimento PROC-L1-02007 se aplicável.",
    gen_id = 2006,
}
_DR["G02007"] = {
    title = "Condição HV-2007: correlação 14.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002008", "SKU-GEN-005050" },
    notes = "Ver procedimento PROC-L1-02008 se aplicável.",
    gen_id = 2007,
}
_DR["G02008"] = {
    title = "Condição BODY-2008: correlação 52.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002009", "SKU-GEN-005057" },
    notes = "Ver procedimento PROC-L1-02009 se aplicável.",
    gen_id = 2008,
}
_DR["G02009"] = {
    title = "Condição INFO-2009: correlação 29.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002010", "SKU-GEN-005064" },
    notes = "Ver procedimento PROC-L1-02010 se aplicável.",
    gen_id = 2009,
}
_DR["G02010"] = {
    title = "Condição ENGINE-2010: correlação 84.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002011", "SKU-GEN-005071" },
    notes = "Ver procedimento PROC-L1-02011 se aplicável.",
    gen_id = 2010,
}
_DR["G02011"] = {
    title = "Condição ABS-2011: correlação 32.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002012", "SKU-GEN-005078" },
    notes = "Ver procedimento PROC-L1-02012 se aplicável.",
    gen_id = 2011,
}
_DR["G02012"] = {
    title = "Condição SRS-2012: correlação 0.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002013", "SKU-GEN-005085" },
    notes = "Ver procedimento PROC-L1-02013 se aplicável.",
    gen_id = 2012,
}
_DR["G02013"] = {
    title = "Condição CLIMATE-2013: correlação 33.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002014", "SKU-GEN-005092" },
    notes = "Ver procedimento PROC-L1-02014 se aplicável.",
    gen_id = 2013,
}
_DR["G02014"] = {
    title = "Condição TRANS-2014: correlação 7.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002015", "SKU-GEN-005099" },
    notes = "Ver procedimento PROC-L1-02015 se aplicável.",
    gen_id = 2014,
}
_DR["G02015"] = {
    title = "Condição FUEL-2015: correlação 11.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002016", "SKU-GEN-005106" },
    notes = "Ver procedimento PROC-L1-02016 se aplicável.",
    gen_id = 2015,
}
_DR["G02016"] = {
    title = "Condição STEER-2016: correlação 98.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002017", "SKU-GEN-005113" },
    notes = "Ver procedimento PROC-L1-02017 se aplicável.",
    gen_id = 2016,
}
_DR["G02017"] = {
    title = "Condição HV-2017: correlação 87.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002018", "SKU-GEN-005120" },
    notes = "Ver procedimento PROC-L1-02018 se aplicável.",
    gen_id = 2017,
}
_DR["G02018"] = {
    title = "Condição BODY-2018: correlação 10.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002019", "SKU-GEN-005127" },
    notes = "Ver procedimento PROC-L1-02019 se aplicável.",
    gen_id = 2018,
}
_DR["G02019"] = {
    title = "Condição INFO-2019: correlação 67.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002020", "SKU-GEN-005134" },
    notes = "Ver procedimento PROC-L1-02020 se aplicável.",
    gen_id = 2019,
}
_DR["G02020"] = {
    title = "Condição ENGINE-2020: correlação 33.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002021", "SKU-GEN-005141" },
    notes = "Ver procedimento PROC-L1-02021 se aplicável.",
    gen_id = 2020,
}
_DR["G02021"] = {
    title = "Condição ABS-2021: correlação 49.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002022", "SKU-GEN-005148" },
    notes = "Ver procedimento PROC-L1-02022 se aplicável.",
    gen_id = 2021,
}
_DR["G02022"] = {
    title = "Condição SRS-2022: correlação 89.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002023", "SKU-GEN-005155" },
    notes = "Ver procedimento PROC-L1-02023 se aplicável.",
    gen_id = 2022,
}
_DR["G02023"] = {
    title = "Condição CLIMATE-2023: correlação 29.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002024", "SKU-GEN-005162" },
    notes = "Ver procedimento PROC-L1-02024 se aplicável.",
    gen_id = 2023,
}
_DR["G02024"] = {
    title = "Condição TRANS-2024: correlação 54.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002025", "SKU-GEN-005169" },
    notes = "Ver procedimento PROC-L1-02025 se aplicável.",
    gen_id = 2024,
}
_DR["G02025"] = {
    title = "Condição FUEL-2025: correlação 73.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002026", "SKU-GEN-005176" },
    notes = "Ver procedimento PROC-L1-02026 se aplicável.",
    gen_id = 2025,
}
_DR["G02026"] = {
    title = "Condição STEER-2026: correlação 26.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002027", "SKU-GEN-005183" },
    notes = "Ver procedimento PROC-L1-02027 se aplicável.",
    gen_id = 2026,
}
_DR["G02027"] = {
    title = "Condição HV-2027: correlação 73.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002028", "SKU-GEN-005190" },
    notes = "Ver procedimento PROC-L1-02028 se aplicável.",
    gen_id = 2027,
}
_DR["G02028"] = {
    title = "Condição BODY-2028: correlação 84.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002029", "SKU-GEN-005197" },
    notes = "Ver procedimento PROC-L1-02029 se aplicável.",
    gen_id = 2028,
}
_DR["G02029"] = {
    title = "Condição INFO-2029: correlação 18.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002030", "SKU-GEN-005204" },
    notes = "Ver procedimento PROC-L1-02030 se aplicável.",
    gen_id = 2029,
}
_DR["G02030"] = {
    title = "Condição ENGINE-2030: correlação 98.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002031", "SKU-GEN-005211" },
    notes = "Ver procedimento PROC-L1-02031 se aplicável.",
    gen_id = 2030,
}
_DR["G02031"] = {
    title = "Condição ABS-2031: correlação 35.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002032", "SKU-GEN-005218" },
    notes = "Ver procedimento PROC-L1-02032 se aplicável.",
    gen_id = 2031,
}
_DR["G02032"] = {
    title = "Condição SRS-2032: correlação 17.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002033", "SKU-GEN-005225" },
    notes = "Ver procedimento PROC-L1-02033 se aplicável.",
    gen_id = 2032,
}
_DR["G02033"] = {
    title = "Condição CLIMATE-2033: correlação 77.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002034", "SKU-GEN-005232" },
    notes = "Ver procedimento PROC-L1-02034 se aplicável.",
    gen_id = 2033,
}
_DR["G02034"] = {
    title = "Condição TRANS-2034: correlação 89.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002035", "SKU-GEN-005239" },
    notes = "Ver procedimento PROC-L1-02035 se aplicável.",
    gen_id = 2034,
}
_DR["G02035"] = {
    title = "Condição FUEL-2035: correlação 51.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002036", "SKU-GEN-005246" },
    notes = "Ver procedimento PROC-L1-02036 se aplicável.",
    gen_id = 2035,
}
_DR["G02036"] = {
    title = "Condição STEER-2036: correlação 70.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002037", "SKU-GEN-005253" },
    notes = "Ver procedimento PROC-L1-02037 se aplicável.",
    gen_id = 2036,
}
_DR["G02037"] = {
    title = "Condição HV-2037: correlação 19.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002038", "SKU-GEN-005260" },
    notes = "Ver procedimento PROC-L1-02038 se aplicável.",
    gen_id = 2037,
}
_DR["G02038"] = {
    title = "Condição BODY-2038: correlação 28.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002039", "SKU-GEN-005267" },
    notes = "Ver procedimento PROC-L1-02039 se aplicável.",
    gen_id = 2038,
}
_DR["G02039"] = {
    title = "Condição INFO-2039: correlação 65.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002040", "SKU-GEN-005274" },
    notes = "Ver procedimento PROC-L1-02040 se aplicável.",
    gen_id = 2039,
}
_DR["G02040"] = {
    title = "Condição ENGINE-2040: correlação 60.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002041", "SKU-GEN-005281" },
    notes = "Ver procedimento PROC-L1-02041 se aplicável.",
    gen_id = 2040,
}
_DR["G02041"] = {
    title = "Condição ABS-2041: correlação 93.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002042", "SKU-GEN-005288" },
    notes = "Ver procedimento PROC-L1-02042 se aplicável.",
    gen_id = 2041,
}
_DR["G02042"] = {
    title = "Condição SRS-2042: correlação 98.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002043", "SKU-GEN-005295" },
    notes = "Ver procedimento PROC-L1-02043 se aplicável.",
    gen_id = 2042,
}
_DR["G02043"] = {
    title = "Condição CLIMATE-2043: correlação 18.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002044", "SKU-GEN-005302" },
    notes = "Ver procedimento PROC-L1-02044 se aplicável.",
    gen_id = 2043,
}
_DR["G02044"] = {
    title = "Condição TRANS-2044: correlação 34.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002045", "SKU-GEN-005309" },
    notes = "Ver procedimento PROC-L1-02045 se aplicável.",
    gen_id = 2044,
}
_DR["G02045"] = {
    title = "Condição FUEL-2045: correlação 19.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002046", "SKU-GEN-005316" },
    notes = "Ver procedimento PROC-L1-02046 se aplicável.",
    gen_id = 2045,
}
_DR["G02046"] = {
    title = "Condição STEER-2046: correlação 84.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002047", "SKU-GEN-005323" },
    notes = "Ver procedimento PROC-L1-02047 se aplicável.",
    gen_id = 2046,
}
_DR["G02047"] = {
    title = "Condição HV-2047: correlação 13.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002048", "SKU-GEN-005330" },
    notes = "Ver procedimento PROC-L1-02048 se aplicável.",
    gen_id = 2047,
}
_DR["G02048"] = {
    title = "Condição BODY-2048: correlação 51.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002049", "SKU-GEN-005337" },
    notes = "Ver procedimento PROC-L1-02049 se aplicável.",
    gen_id = 2048,
}
_DR["G02049"] = {
    title = "Condição INFO-2049: correlação 58.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002050", "SKU-GEN-005344" },
    notes = "Ver procedimento PROC-L1-02050 se aplicável.",
    gen_id = 2049,
}
_DR["G02050"] = {
    title = "Condição ENGINE-2050: correlação 61.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002051", "SKU-GEN-005351" },
    notes = "Ver procedimento PROC-L1-02051 se aplicável.",
    gen_id = 2050,
}
_DR["G02051"] = {
    title = "Condição ABS-2051: correlação 9.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002052", "SKU-GEN-005358" },
    notes = "Ver procedimento PROC-L1-02052 se aplicável.",
    gen_id = 2051,
}
_DR["G02052"] = {
    title = "Condição SRS-2052: correlação 24.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002053", "SKU-GEN-005365" },
    notes = "Ver procedimento PROC-L1-02053 se aplicável.",
    gen_id = 2052,
}
_DR["G02053"] = {
    title = "Condição CLIMATE-2053: correlação 65.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002054", "SKU-GEN-005372" },
    notes = "Ver procedimento PROC-L1-02054 se aplicável.",
    gen_id = 2053,
}
_DR["G02054"] = {
    title = "Condição TRANS-2054: correlação 37.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002055", "SKU-GEN-005379" },
    notes = "Ver procedimento PROC-L1-02055 se aplicável.",
    gen_id = 2054,
}
_DR["G02055"] = {
    title = "Condição FUEL-2055: correlação 5.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002056", "SKU-GEN-005386" },
    notes = "Ver procedimento PROC-L1-02056 se aplicável.",
    gen_id = 2055,
}
_DR["G02056"] = {
    title = "Condição STEER-2056: correlação 47.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002057", "SKU-GEN-005393" },
    notes = "Ver procedimento PROC-L1-02057 se aplicável.",
    gen_id = 2056,
}
_DR["G02057"] = {
    title = "Condição HV-2057: correlação 38.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002058", "SKU-GEN-005400" },
    notes = "Ver procedimento PROC-L1-02058 se aplicável.",
    gen_id = 2057,
}
_DR["G02058"] = {
    title = "Condição BODY-2058: correlação 97.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002059", "SKU-GEN-005407" },
    notes = "Ver procedimento PROC-L1-02059 se aplicável.",
    gen_id = 2058,
}
_DR["G02059"] = {
    title = "Condição INFO-2059: correlação 91.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002060", "SKU-GEN-005414" },
    notes = "Ver procedimento PROC-L1-02060 se aplicável.",
    gen_id = 2059,
}
_DR["G02060"] = {
    title = "Condição ENGINE-2060: correlação 66.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002061", "SKU-GEN-005421" },
    notes = "Ver procedimento PROC-L1-02061 se aplicável.",
    gen_id = 2060,
}
_DR["G02061"] = {
    title = "Condição ABS-2061: correlação 29.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002062", "SKU-GEN-005428" },
    notes = "Ver procedimento PROC-L1-02062 se aplicável.",
    gen_id = 2061,
}
_DR["G02062"] = {
    title = "Condição SRS-2062: correlação 19.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002063", "SKU-GEN-005435" },
    notes = "Ver procedimento PROC-L1-02063 se aplicável.",
    gen_id = 2062,
}
_DR["G02063"] = {
    title = "Condição CLIMATE-2063: correlação 99.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002064", "SKU-GEN-005442" },
    notes = "Ver procedimento PROC-L1-02064 se aplicável.",
    gen_id = 2063,
}
_DR["G02064"] = {
    title = "Condição TRANS-2064: correlação 84.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002065", "SKU-GEN-005449" },
    notes = "Ver procedimento PROC-L1-02065 se aplicável.",
    gen_id = 2064,
}
_DR["G02065"] = {
    title = "Condição FUEL-2065: correlação 83.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002066", "SKU-GEN-005456" },
    notes = "Ver procedimento PROC-L1-02066 se aplicável.",
    gen_id = 2065,
}
_DR["G02066"] = {
    title = "Condição STEER-2066: correlação 65.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002067", "SKU-GEN-005463" },
    notes = "Ver procedimento PROC-L1-02067 se aplicável.",
    gen_id = 2066,
}
_DR["G02067"] = {
    title = "Condição HV-2067: correlação 81.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002068", "SKU-GEN-005470" },
    notes = "Ver procedimento PROC-L1-02068 se aplicável.",
    gen_id = 2067,
}
_DR["G02068"] = {
    title = "Condição BODY-2068: correlação 2.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002069", "SKU-GEN-005477" },
    notes = "Ver procedimento PROC-L1-02069 se aplicável.",
    gen_id = 2068,
}
_DR["G02069"] = {
    title = "Condição INFO-2069: correlação 11.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002070", "SKU-GEN-005484" },
    notes = "Ver procedimento PROC-L1-02070 se aplicável.",
    gen_id = 2069,
}
_DR["G02070"] = {
    title = "Condição ENGINE-2070: correlação 45.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002071", "SKU-GEN-005491" },
    notes = "Ver procedimento PROC-L1-02071 se aplicável.",
    gen_id = 2070,
}
_DR["G02071"] = {
    title = "Condição ABS-2071: correlação 77.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002072", "SKU-GEN-005498" },
    notes = "Ver procedimento PROC-L1-02072 se aplicável.",
    gen_id = 2071,
}
_DR["G02072"] = {
    title = "Condição SRS-2072: correlação 30.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002073", "SKU-GEN-005505" },
    notes = "Ver procedimento PROC-L1-02073 se aplicável.",
    gen_id = 2072,
}
_DR["G02073"] = {
    title = "Condição CLIMATE-2073: correlação 28.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002074", "SKU-GEN-005512" },
    notes = "Ver procedimento PROC-L1-02074 se aplicável.",
    gen_id = 2073,
}
_DR["G02074"] = {
    title = "Condição TRANS-2074: correlação 32.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002075", "SKU-GEN-005519" },
    notes = "Ver procedimento PROC-L1-02075 se aplicável.",
    gen_id = 2074,
}
_DR["G02075"] = {
    title = "Condição FUEL-2075: correlação 73.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002076", "SKU-GEN-005526" },
    notes = "Ver procedimento PROC-L1-02076 se aplicável.",
    gen_id = 2075,
}
_DR["G02076"] = {
    title = "Condição STEER-2076: correlação 23.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002077", "SKU-GEN-005533" },
    notes = "Ver procedimento PROC-L1-02077 se aplicável.",
    gen_id = 2076,
}
_DR["G02077"] = {
    title = "Condição HV-2077: correlação 95.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002078", "SKU-GEN-005540" },
    notes = "Ver procedimento PROC-L1-02078 se aplicável.",
    gen_id = 2077,
}
_DR["G02078"] = {
    title = "Condição BODY-2078: correlação 67.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002079", "SKU-GEN-005547" },
    notes = "Ver procedimento PROC-L1-02079 se aplicável.",
    gen_id = 2078,
}
_DR["G02079"] = {
    title = "Condição INFO-2079: correlação 49.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002080", "SKU-GEN-005554" },
    notes = "Ver procedimento PROC-L1-02080 se aplicável.",
    gen_id = 2079,
}
_DR["G02080"] = {
    title = "Condição ENGINE-2080: correlação 33.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002081", "SKU-GEN-005561" },
    notes = "Ver procedimento PROC-L1-02081 se aplicável.",
    gen_id = 2080,
}
_DR["G02081"] = {
    title = "Condição ABS-2081: correlação 57.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002082", "SKU-GEN-005568" },
    notes = "Ver procedimento PROC-L1-02082 se aplicável.",
    gen_id = 2081,
}
_DR["G02082"] = {
    title = "Condição SRS-2082: correlação 67.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002083", "SKU-GEN-005575" },
    notes = "Ver procedimento PROC-L1-02083 se aplicável.",
    gen_id = 2082,
}
_DR["G02083"] = {
    title = "Condição CLIMATE-2083: correlação 68.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002084", "SKU-GEN-005582" },
    notes = "Ver procedimento PROC-L1-02084 se aplicável.",
    gen_id = 2083,
}
_DR["G02084"] = {
    title = "Condição TRANS-2084: correlação 75.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002085", "SKU-GEN-005589" },
    notes = "Ver procedimento PROC-L1-02085 se aplicável.",
    gen_id = 2084,
}
_DR["G02085"] = {
    title = "Condição FUEL-2085: correlação 64.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002086", "SKU-GEN-005596" },
    notes = "Ver procedimento PROC-L1-02086 se aplicável.",
    gen_id = 2085,
}
_DR["G02086"] = {
    title = "Condição STEER-2086: correlação 59.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002087", "SKU-GEN-005603" },
    notes = "Ver procedimento PROC-L1-02087 se aplicável.",
    gen_id = 2086,
}
_DR["G02087"] = {
    title = "Condição HV-2087: correlação 63.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002088", "SKU-GEN-005610" },
    notes = "Ver procedimento PROC-L1-02088 se aplicável.",
    gen_id = 2087,
}
_DR["G02088"] = {
    title = "Condição BODY-2088: correlação 45.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002089", "SKU-GEN-005617" },
    notes = "Ver procedimento PROC-L1-02089 se aplicável.",
    gen_id = 2088,
}
_DR["G02089"] = {
    title = "Condição INFO-2089: correlação 16.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002090", "SKU-GEN-005624" },
    notes = "Ver procedimento PROC-L1-02090 se aplicável.",
    gen_id = 2089,
}
_DR["G02090"] = {
    title = "Condição ENGINE-2090: correlação 64.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002091", "SKU-GEN-005631" },
    notes = "Ver procedimento PROC-L1-02091 se aplicável.",
    gen_id = 2090,
}
_DR["G02091"] = {
    title = "Condição ABS-2091: correlação 12.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002092", "SKU-GEN-005638" },
    notes = "Ver procedimento PROC-L1-02092 se aplicável.",
    gen_id = 2091,
}
_DR["G02092"] = {
    title = "Condição SRS-2092: correlação 51.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002093", "SKU-GEN-005645" },
    notes = "Ver procedimento PROC-L1-02093 se aplicável.",
    gen_id = 2092,
}
_DR["G02093"] = {
    title = "Condição CLIMATE-2093: correlação 69.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002094", "SKU-GEN-005652" },
    notes = "Ver procedimento PROC-L1-02094 se aplicável.",
    gen_id = 2093,
}
_DR["G02094"] = {
    title = "Condição TRANS-2094: correlação 33.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002095", "SKU-GEN-005659" },
    notes = "Ver procedimento PROC-L1-02095 se aplicável.",
    gen_id = 2094,
}
_DR["G02095"] = {
    title = "Condição FUEL-2095: correlação 20.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002096", "SKU-GEN-005666" },
    notes = "Ver procedimento PROC-L1-02096 se aplicável.",
    gen_id = 2095,
}
_DR["G02096"] = {
    title = "Condição STEER-2096: correlação 27.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002097", "SKU-GEN-005673" },
    notes = "Ver procedimento PROC-L1-02097 se aplicável.",
    gen_id = 2096,
}
_DR["G02097"] = {
    title = "Condição HV-2097: correlação 92.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002098", "SKU-GEN-005680" },
    notes = "Ver procedimento PROC-L1-02098 se aplicável.",
    gen_id = 2097,
}
_DR["G02098"] = {
    title = "Condição BODY-2098: correlação 1.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002099", "SKU-GEN-005687" },
    notes = "Ver procedimento PROC-L1-02099 se aplicável.",
    gen_id = 2098,
}
_DR["G02099"] = {
    title = "Condição INFO-2099: correlação 40.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002100", "SKU-GEN-005694" },
    notes = "Ver procedimento PROC-L1-02100 se aplicável.",
    gen_id = 2099,
}
_DR["G02100"] = {
    title = "Condição ENGINE-2100: correlação 59.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002101", "SKU-GEN-005701" },
    notes = "Ver procedimento PROC-L1-02101 se aplicável.",
    gen_id = 2100,
}
_DR["G02101"] = {
    title = "Condição ABS-2101: correlação 61.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002102", "SKU-GEN-005708" },
    notes = "Ver procedimento PROC-L1-02102 se aplicável.",
    gen_id = 2101,
}
_DR["G02102"] = {
    title = "Condição SRS-2102: correlação 92.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002103", "SKU-GEN-005715" },
    notes = "Ver procedimento PROC-L1-02103 se aplicável.",
    gen_id = 2102,
}
_DR["G02103"] = {
    title = "Condição CLIMATE-2103: correlação 99.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002104", "SKU-GEN-005722" },
    notes = "Ver procedimento PROC-L1-02104 se aplicável.",
    gen_id = 2103,
}
_DR["G02104"] = {
    title = "Condição TRANS-2104: correlação 34.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002105", "SKU-GEN-005729" },
    notes = "Ver procedimento PROC-L1-02105 se aplicável.",
    gen_id = 2104,
}
_DR["G02105"] = {
    title = "Condição FUEL-2105: correlação 39.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002106", "SKU-GEN-005736" },
    notes = "Ver procedimento PROC-L1-02106 se aplicável.",
    gen_id = 2105,
}
_DR["G02106"] = {
    title = "Condição STEER-2106: correlação 28.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002107", "SKU-GEN-005743" },
    notes = "Ver procedimento PROC-L1-02107 se aplicável.",
    gen_id = 2106,
}
_DR["G02107"] = {
    title = "Condição HV-2107: correlação 27.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002108", "SKU-GEN-005750" },
    notes = "Ver procedimento PROC-L1-02108 se aplicável.",
    gen_id = 2107,
}
_DR["G02108"] = {
    title = "Condição BODY-2108: correlação 80.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002109", "SKU-GEN-005757" },
    notes = "Ver procedimento PROC-L1-02109 se aplicável.",
    gen_id = 2108,
}
_DR["G02109"] = {
    title = "Condição INFO-2109: correlação 68.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002110", "SKU-GEN-005764" },
    notes = "Ver procedimento PROC-L1-02110 se aplicável.",
    gen_id = 2109,
}
_DR["G02110"] = {
    title = "Condição ENGINE-2110: correlação 99.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002111", "SKU-GEN-005771" },
    notes = "Ver procedimento PROC-L1-02111 se aplicável.",
    gen_id = 2110,
}
_DR["G02111"] = {
    title = "Condição ABS-2111: correlação 83.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002112", "SKU-GEN-005778" },
    notes = "Ver procedimento PROC-L1-02112 se aplicável.",
    gen_id = 2111,
}
_DR["G02112"] = {
    title = "Condição SRS-2112: correlação 87.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002113", "SKU-GEN-005785" },
    notes = "Ver procedimento PROC-L1-02113 se aplicável.",
    gen_id = 2112,
}
_DR["G02113"] = {
    title = "Condição CLIMATE-2113: correlação 67.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002114", "SKU-GEN-005792" },
    notes = "Ver procedimento PROC-L1-02114 se aplicável.",
    gen_id = 2113,
}
_DR["G02114"] = {
    title = "Condição TRANS-2114: correlação 90.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002115", "SKU-GEN-005799" },
    notes = "Ver procedimento PROC-L1-02115 se aplicável.",
    gen_id = 2114,
}
_DR["G02115"] = {
    title = "Condição FUEL-2115: correlação 42.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002116", "SKU-GEN-005806" },
    notes = "Ver procedimento PROC-L1-02116 se aplicável.",
    gen_id = 2115,
}
_DR["G02116"] = {
    title = "Condição STEER-2116: correlação 97.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002117", "SKU-GEN-005813" },
    notes = "Ver procedimento PROC-L1-02117 se aplicável.",
    gen_id = 2116,
}
_DR["G02117"] = {
    title = "Condição HV-2117: correlação 35.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002118", "SKU-GEN-005820" },
    notes = "Ver procedimento PROC-L1-02118 se aplicável.",
    gen_id = 2117,
}
_DR["G02118"] = {
    title = "Condição BODY-2118: correlação 99.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002119", "SKU-GEN-005827" },
    notes = "Ver procedimento PROC-L1-02119 se aplicável.",
    gen_id = 2118,
}
_DR["G02119"] = {
    title = "Condição INFO-2119: correlação 90.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002120", "SKU-GEN-005834" },
    notes = "Ver procedimento PROC-L1-02120 se aplicável.",
    gen_id = 2119,
}
_DR["G02120"] = {
    title = "Condição ENGINE-2120: correlação 20.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002121", "SKU-GEN-005841" },
    notes = "Ver procedimento PROC-L1-02121 se aplicável.",
    gen_id = 2120,
}
_DR["G02121"] = {
    title = "Condição ABS-2121: correlação 80.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002122", "SKU-GEN-005848" },
    notes = "Ver procedimento PROC-L1-02122 se aplicável.",
    gen_id = 2121,
}
_DR["G02122"] = {
    title = "Condição SRS-2122: correlação 73.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002123", "SKU-GEN-005855" },
    notes = "Ver procedimento PROC-L1-02123 se aplicável.",
    gen_id = 2122,
}
_DR["G02123"] = {
    title = "Condição CLIMATE-2123: correlação 16.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002124", "SKU-GEN-005862" },
    notes = "Ver procedimento PROC-L1-02124 se aplicável.",
    gen_id = 2123,
}
_DR["G02124"] = {
    title = "Condição TRANS-2124: correlação 11.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002125", "SKU-GEN-005869" },
    notes = "Ver procedimento PROC-L1-02125 se aplicável.",
    gen_id = 2124,
}
_DR["G02125"] = {
    title = "Condição FUEL-2125: correlação 26.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002126", "SKU-GEN-005876" },
    notes = "Ver procedimento PROC-L1-02126 se aplicável.",
    gen_id = 2125,
}
_DR["G02126"] = {
    title = "Condição STEER-2126: correlação 50.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002127", "SKU-GEN-005883" },
    notes = "Ver procedimento PROC-L1-02127 se aplicável.",
    gen_id = 2126,
}
_DR["G02127"] = {
    title = "Condição HV-2127: correlação 24.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002128", "SKU-GEN-005890" },
    notes = "Ver procedimento PROC-L1-02128 se aplicável.",
    gen_id = 2127,
}
_DR["G02128"] = {
    title = "Condição BODY-2128: correlação 10.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002129", "SKU-GEN-005897" },
    notes = "Ver procedimento PROC-L1-02129 se aplicável.",
    gen_id = 2128,
}
_DR["G02129"] = {
    title = "Condição INFO-2129: correlação 81.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002130", "SKU-GEN-005904" },
    notes = "Ver procedimento PROC-L1-02130 se aplicável.",
    gen_id = 2129,
}
_DR["G02130"] = {
    title = "Condição ENGINE-2130: correlação 87.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002131", "SKU-GEN-005911" },
    notes = "Ver procedimento PROC-L1-02131 se aplicável.",
    gen_id = 2130,
}
_DR["G02131"] = {
    title = "Condição ABS-2131: correlação 2.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002132", "SKU-GEN-005918" },
    notes = "Ver procedimento PROC-L1-02132 se aplicável.",
    gen_id = 2131,
}
_DR["G02132"] = {
    title = "Condição SRS-2132: correlação 38.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002133", "SKU-GEN-005925" },
    notes = "Ver procedimento PROC-L1-02133 se aplicável.",
    gen_id = 2132,
}
_DR["G02133"] = {
    title = "Condição CLIMATE-2133: correlação 66.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002134", "SKU-GEN-005932" },
    notes = "Ver procedimento PROC-L1-02134 se aplicável.",
    gen_id = 2133,
}
_DR["G02134"] = {
    title = "Condição TRANS-2134: correlação 5.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002135", "SKU-GEN-005939" },
    notes = "Ver procedimento PROC-L1-02135 se aplicável.",
    gen_id = 2134,
}
_DR["G02135"] = {
    title = "Condição FUEL-2135: correlação 9.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002136", "SKU-GEN-005946" },
    notes = "Ver procedimento PROC-L1-02136 se aplicável.",
    gen_id = 2135,
}
_DR["G02136"] = {
    title = "Condição STEER-2136: correlação 92.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002137", "SKU-GEN-005953" },
    notes = "Ver procedimento PROC-L1-02137 se aplicável.",
    gen_id = 2136,
}
_DR["G02137"] = {
    title = "Condição HV-2137: correlação 21.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002138", "SKU-GEN-005960" },
    notes = "Ver procedimento PROC-L1-02138 se aplicável.",
    gen_id = 2137,
}
_DR["G02138"] = {
    title = "Condição BODY-2138: correlação 85.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002139", "SKU-GEN-005967" },
    notes = "Ver procedimento PROC-L1-02139 se aplicável.",
    gen_id = 2138,
}
_DR["G02139"] = {
    title = "Condição INFO-2139: correlação 61.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002140", "SKU-GEN-005974" },
    notes = "Ver procedimento PROC-L1-02140 se aplicável.",
    gen_id = 2139,
}
_DR["G02140"] = {
    title = "Condição ENGINE-2140: correlação 88.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002141", "SKU-GEN-005981" },
    notes = "Ver procedimento PROC-L1-02141 se aplicável.",
    gen_id = 2140,
}
_DR["G02141"] = {
    title = "Condição ABS-2141: correlação 56.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002142", "SKU-GEN-005988" },
    notes = "Ver procedimento PROC-L1-02142 se aplicável.",
    gen_id = 2141,
}
_DR["G02142"] = {
    title = "Condição SRS-2142: correlação 8.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002143", "SKU-GEN-005995" },
    notes = "Ver procedimento PROC-L1-02143 se aplicável.",
    gen_id = 2142,
}
_DR["G02143"] = {
    title = "Condição CLIMATE-2143: correlação 53.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002144", "SKU-GEN-006002" },
    notes = "Ver procedimento PROC-L1-02144 se aplicável.",
    gen_id = 2143,
}
_DR["G02144"] = {
    title = "Condição TRANS-2144: correlação 48.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002145", "SKU-GEN-006009" },
    notes = "Ver procedimento PROC-L1-02145 se aplicável.",
    gen_id = 2144,
}
_DR["G02145"] = {
    title = "Condição FUEL-2145: correlação 12.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002146", "SKU-GEN-006016" },
    notes = "Ver procedimento PROC-L1-02146 se aplicável.",
    gen_id = 2145,
}
_DR["G02146"] = {
    title = "Condição STEER-2146: correlação 0.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002147", "SKU-GEN-006023" },
    notes = "Ver procedimento PROC-L1-02147 se aplicável.",
    gen_id = 2146,
}
_DR["G02147"] = {
    title = "Condição HV-2147: correlação 34.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002148", "SKU-GEN-006030" },
    notes = "Ver procedimento PROC-L1-02148 se aplicável.",
    gen_id = 2147,
}
_DR["G02148"] = {
    title = "Condição BODY-2148: correlação 21.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002149", "SKU-GEN-006037" },
    notes = "Ver procedimento PROC-L1-02149 se aplicável.",
    gen_id = 2148,
}
_DR["G02149"] = {
    title = "Condição INFO-2149: correlação 35.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002150", "SKU-GEN-006044" },
    notes = "Ver procedimento PROC-L1-02150 se aplicável.",
    gen_id = 2149,
}
_DR["G02150"] = {
    title = "Condição ENGINE-2150: correlação 36.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002151", "SKU-GEN-006051" },
    notes = "Ver procedimento PROC-L1-02151 se aplicável.",
    gen_id = 2150,
}
_DR["G02151"] = {
    title = "Condição ABS-2151: correlação 4.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002152", "SKU-GEN-006058" },
    notes = "Ver procedimento PROC-L1-02152 se aplicável.",
    gen_id = 2151,
}
_DR["G02152"] = {
    title = "Condição SRS-2152: correlação 87.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002153", "SKU-GEN-006065" },
    notes = "Ver procedimento PROC-L1-02153 se aplicável.",
    gen_id = 2152,
}
_DR["G02153"] = {
    title = "Condição CLIMATE-2153: correlação 96.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002154", "SKU-GEN-006072" },
    notes = "Ver procedimento PROC-L1-02154 se aplicável.",
    gen_id = 2153,
}
_DR["G02154"] = {
    title = "Condição TRANS-2154: correlação 26.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002155", "SKU-GEN-006079" },
    notes = "Ver procedimento PROC-L1-02155 se aplicável.",
    gen_id = 2154,
}
_DR["G02155"] = {
    title = "Condição FUEL-2155: correlação 35.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002156", "SKU-GEN-006086" },
    notes = "Ver procedimento PROC-L1-02156 se aplicável.",
    gen_id = 2155,
}
_DR["G02156"] = {
    title = "Condição STEER-2156: correlação 89.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002157", "SKU-GEN-006093" },
    notes = "Ver procedimento PROC-L1-02157 se aplicável.",
    gen_id = 2156,
}
_DR["G02157"] = {
    title = "Condição HV-2157: correlação 1.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002158", "SKU-GEN-006100" },
    notes = "Ver procedimento PROC-L1-02158 se aplicável.",
    gen_id = 2157,
}
_DR["G02158"] = {
    title = "Condição BODY-2158: correlação 62.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002159", "SKU-GEN-006107" },
    notes = "Ver procedimento PROC-L1-02159 se aplicável.",
    gen_id = 2158,
}
_DR["G02159"] = {
    title = "Condição INFO-2159: correlação 13.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002160", "SKU-GEN-006114" },
    notes = "Ver procedimento PROC-L1-02160 se aplicável.",
    gen_id = 2159,
}
_DR["G02160"] = {
    title = "Condição ENGINE-2160: correlação 92.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002161", "SKU-GEN-006121" },
    notes = "Ver procedimento PROC-L1-02161 se aplicável.",
    gen_id = 2160,
}
_DR["G02161"] = {
    title = "Condição ABS-2161: correlação 69.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002162", "SKU-GEN-006128" },
    notes = "Ver procedimento PROC-L1-02162 se aplicável.",
    gen_id = 2161,
}
_DR["G02162"] = {
    title = "Condição SRS-2162: correlação 24.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002163", "SKU-GEN-006135" },
    notes = "Ver procedimento PROC-L1-02163 se aplicável.",
    gen_id = 2162,
}
_DR["G02163"] = {
    title = "Condição CLIMATE-2163: correlação 45.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002164", "SKU-GEN-006142" },
    notes = "Ver procedimento PROC-L1-02164 se aplicável.",
    gen_id = 2163,
}
_DR["G02164"] = {
    title = "Condição TRANS-2164: correlação 56.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002165", "SKU-GEN-006149" },
    notes = "Ver procedimento PROC-L1-02165 se aplicável.",
    gen_id = 2164,
}
_DR["G02165"] = {
    title = "Condição FUEL-2165: correlação 87.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002166", "SKU-GEN-006156" },
    notes = "Ver procedimento PROC-L1-02166 se aplicável.",
    gen_id = 2165,
}
_DR["G02166"] = {
    title = "Condição STEER-2166: correlação 54.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002167", "SKU-GEN-006163" },
    notes = "Ver procedimento PROC-L1-02167 se aplicável.",
    gen_id = 2166,
}
_DR["G02167"] = {
    title = "Condição HV-2167: correlação 9.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002168", "SKU-GEN-006170" },
    notes = "Ver procedimento PROC-L1-02168 se aplicável.",
    gen_id = 2167,
}
_DR["G02168"] = {
    title = "Condição BODY-2168: correlação 68.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002169", "SKU-GEN-006177" },
    notes = "Ver procedimento PROC-L1-02169 se aplicável.",
    gen_id = 2168,
}
_DR["G02169"] = {
    title = "Condição INFO-2169: correlação 56.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002170", "SKU-GEN-006184" },
    notes = "Ver procedimento PROC-L1-02170 se aplicável.",
    gen_id = 2169,
}
_DR["G02170"] = {
    title = "Condição ENGINE-2170: correlação 60.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002171", "SKU-GEN-006191" },
    notes = "Ver procedimento PROC-L1-02171 se aplicável.",
    gen_id = 2170,
}
_DR["G02171"] = {
    title = "Condição ABS-2171: correlação 9.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002172", "SKU-GEN-006198" },
    notes = "Ver procedimento PROC-L1-02172 se aplicável.",
    gen_id = 2171,
}
_DR["G02172"] = {
    title = "Condição SRS-2172: correlação 0.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002173", "SKU-GEN-006205" },
    notes = "Ver procedimento PROC-L1-02173 se aplicável.",
    gen_id = 2172,
}
_DR["G02173"] = {
    title = "Condição CLIMATE-2173: correlação 94.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002174", "SKU-GEN-006212" },
    notes = "Ver procedimento PROC-L1-02174 se aplicável.",
    gen_id = 2173,
}
_DR["G02174"] = {
    title = "Condição TRANS-2174: correlação 2.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002175", "SKU-GEN-006219" },
    notes = "Ver procedimento PROC-L1-02175 se aplicável.",
    gen_id = 2174,
}
_DR["G02175"] = {
    title = "Condição FUEL-2175: correlação 78.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002176", "SKU-GEN-006226" },
    notes = "Ver procedimento PROC-L1-02176 se aplicável.",
    gen_id = 2175,
}
_DR["G02176"] = {
    title = "Condição STEER-2176: correlação 50.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002177", "SKU-GEN-006233" },
    notes = "Ver procedimento PROC-L1-02177 se aplicável.",
    gen_id = 2176,
}
_DR["G02177"] = {
    title = "Condição HV-2177: correlação 53.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002178", "SKU-GEN-006240" },
    notes = "Ver procedimento PROC-L1-02178 se aplicável.",
    gen_id = 2177,
}
_DR["G02178"] = {
    title = "Condição BODY-2178: correlação 74.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002179", "SKU-GEN-006247" },
    notes = "Ver procedimento PROC-L1-02179 se aplicável.",
    gen_id = 2178,
}
_DR["G02179"] = {
    title = "Condição INFO-2179: correlação 45.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002180", "SKU-GEN-006254" },
    notes = "Ver procedimento PROC-L1-02180 se aplicável.",
    gen_id = 2179,
}
_DR["G02180"] = {
    title = "Condição ENGINE-2180: correlação 1.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002181", "SKU-GEN-006261" },
    notes = "Ver procedimento PROC-L1-02181 se aplicável.",
    gen_id = 2180,
}
_DR["G02181"] = {
    title = "Condição ABS-2181: correlação 81.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002182", "SKU-GEN-006268" },
    notes = "Ver procedimento PROC-L1-02182 se aplicável.",
    gen_id = 2181,
}
_DR["G02182"] = {
    title = "Condição SRS-2182: correlação 83.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002183", "SKU-GEN-006275" },
    notes = "Ver procedimento PROC-L1-02183 se aplicável.",
    gen_id = 2182,
}
_DR["G02183"] = {
    title = "Condição CLIMATE-2183: correlação 45.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002184", "SKU-GEN-006282" },
    notes = "Ver procedimento PROC-L1-02184 se aplicável.",
    gen_id = 2183,
}
_DR["G02184"] = {
    title = "Condição TRANS-2184: correlação 9.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002185", "SKU-GEN-006289" },
    notes = "Ver procedimento PROC-L1-02185 se aplicável.",
    gen_id = 2184,
}
_DR["G02185"] = {
    title = "Condição FUEL-2185: correlação 17.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002186", "SKU-GEN-006296" },
    notes = "Ver procedimento PROC-L1-02186 se aplicável.",
    gen_id = 2185,
}
_DR["G02186"] = {
    title = "Condição STEER-2186: correlação 85.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002187", "SKU-GEN-006303" },
    notes = "Ver procedimento PROC-L1-02187 se aplicável.",
    gen_id = 2186,
}
_DR["G02187"] = {
    title = "Condição HV-2187: correlação 55.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002188", "SKU-GEN-006310" },
    notes = "Ver procedimento PROC-L1-02188 se aplicável.",
    gen_id = 2187,
}
_DR["G02188"] = {
    title = "Condição BODY-2188: correlação 99.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002189", "SKU-GEN-006317" },
    notes = "Ver procedimento PROC-L1-02189 se aplicável.",
    gen_id = 2188,
}
_DR["G02189"] = {
    title = "Condição INFO-2189: correlação 10.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002190", "SKU-GEN-006324" },
    notes = "Ver procedimento PROC-L1-02190 se aplicável.",
    gen_id = 2189,
}
_DR["G02190"] = {
    title = "Condição ENGINE-2190: correlação 46.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002191", "SKU-GEN-006331" },
    notes = "Ver procedimento PROC-L1-02191 se aplicável.",
    gen_id = 2190,
}
_DR["G02191"] = {
    title = "Condição ABS-2191: correlação 68.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002192", "SKU-GEN-006338" },
    notes = "Ver procedimento PROC-L1-02192 se aplicável.",
    gen_id = 2191,
}
_DR["G02192"] = {
    title = "Condição SRS-2192: correlação 30.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002193", "SKU-GEN-006345" },
    notes = "Ver procedimento PROC-L1-02193 se aplicável.",
    gen_id = 2192,
}
_DR["G02193"] = {
    title = "Condição CLIMATE-2193: correlação 12.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002194", "SKU-GEN-006352" },
    notes = "Ver procedimento PROC-L1-02194 se aplicável.",
    gen_id = 2193,
}
_DR["G02194"] = {
    title = "Condição TRANS-2194: correlação 16.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002195", "SKU-GEN-006359" },
    notes = "Ver procedimento PROC-L1-02195 se aplicável.",
    gen_id = 2194,
}
_DR["G02195"] = {
    title = "Condição FUEL-2195: correlação 47.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002196", "SKU-GEN-006366" },
    notes = "Ver procedimento PROC-L1-02196 se aplicável.",
    gen_id = 2195,
}
_DR["G02196"] = {
    title = "Condição STEER-2196: correlação 49.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002197", "SKU-GEN-006373" },
    notes = "Ver procedimento PROC-L1-02197 se aplicável.",
    gen_id = 2196,
}
_DR["G02197"] = {
    title = "Condição HV-2197: correlação 50.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002198", "SKU-GEN-006380" },
    notes = "Ver procedimento PROC-L1-02198 se aplicável.",
    gen_id = 2197,
}
_DR["G02198"] = {
    title = "Condição BODY-2198: correlação 43.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002199", "SKU-GEN-006387" },
    notes = "Ver procedimento PROC-L1-02199 se aplicável.",
    gen_id = 2198,
}
_DR["G02199"] = {
    title = "Condição INFO-2199: correlação 30.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002200", "SKU-GEN-006394" },
    notes = "Ver procedimento PROC-L1-02200 se aplicável.",
    gen_id = 2199,
}
_DR["G02200"] = {
    title = "Condição ENGINE-2200: correlação 73.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002201", "SKU-GEN-006401" },
    notes = "Ver procedimento PROC-L1-02201 se aplicável.",
    gen_id = 2200,
}
_DR["G02201"] = {
    title = "Condição ABS-2201: correlação 19.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002202", "SKU-GEN-006408" },
    notes = "Ver procedimento PROC-L1-02202 se aplicável.",
    gen_id = 2201,
}
_DR["G02202"] = {
    title = "Condição SRS-2202: correlação 66.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002203", "SKU-GEN-006415" },
    notes = "Ver procedimento PROC-L1-02203 se aplicável.",
    gen_id = 2202,
}
_DR["G02203"] = {
    title = "Condição CLIMATE-2203: correlação 57.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002204", "SKU-GEN-006422" },
    notes = "Ver procedimento PROC-L1-02204 se aplicável.",
    gen_id = 2203,
}
_DR["G02204"] = {
    title = "Condição TRANS-2204: correlação 39.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002205", "SKU-GEN-006429" },
    notes = "Ver procedimento PROC-L1-02205 se aplicável.",
    gen_id = 2204,
}
_DR["G02205"] = {
    title = "Condição FUEL-2205: correlação 29.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002206", "SKU-GEN-006436" },
    notes = "Ver procedimento PROC-L1-02206 se aplicável.",
    gen_id = 2205,
}
_DR["G02206"] = {
    title = "Condição STEER-2206: correlação 74.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002207", "SKU-GEN-006443" },
    notes = "Ver procedimento PROC-L1-02207 se aplicável.",
    gen_id = 2206,
}
_DR["G02207"] = {
    title = "Condição HV-2207: correlação 49.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002208", "SKU-GEN-006450" },
    notes = "Ver procedimento PROC-L1-02208 se aplicável.",
    gen_id = 2207,
}
_DR["G02208"] = {
    title = "Condição BODY-2208: correlação 19.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002209", "SKU-GEN-006457" },
    notes = "Ver procedimento PROC-L1-02209 se aplicável.",
    gen_id = 2208,
}
_DR["G02209"] = {
    title = "Condição INFO-2209: correlação 93.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002210", "SKU-GEN-006464" },
    notes = "Ver procedimento PROC-L1-02210 se aplicável.",
    gen_id = 2209,
}
_DR["G02210"] = {
    title = "Condição ENGINE-2210: correlação 98.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002211", "SKU-GEN-006471" },
    notes = "Ver procedimento PROC-L1-02211 se aplicável.",
    gen_id = 2210,
}
_DR["G02211"] = {
    title = "Condição ABS-2211: correlação 80.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002212", "SKU-GEN-006478" },
    notes = "Ver procedimento PROC-L1-02212 se aplicável.",
    gen_id = 2211,
}
_DR["G02212"] = {
    title = "Condição SRS-2212: correlação 6.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002213", "SKU-GEN-006485" },
    notes = "Ver procedimento PROC-L1-02213 se aplicável.",
    gen_id = 2212,
}
_DR["G02213"] = {
    title = "Condição CLIMATE-2213: correlação 56.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002214", "SKU-GEN-006492" },
    notes = "Ver procedimento PROC-L1-02214 se aplicável.",
    gen_id = 2213,
}
_DR["G02214"] = {
    title = "Condição TRANS-2214: correlação 82.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002215", "SKU-GEN-006499" },
    notes = "Ver procedimento PROC-L1-02215 se aplicável.",
    gen_id = 2214,
}
_DR["G02215"] = {
    title = "Condição FUEL-2215: correlação 83.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002216", "SKU-GEN-006506" },
    notes = "Ver procedimento PROC-L1-02216 se aplicável.",
    gen_id = 2215,
}
_DR["G02216"] = {
    title = "Condição STEER-2216: correlação 94.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002217", "SKU-GEN-006513" },
    notes = "Ver procedimento PROC-L1-02217 se aplicável.",
    gen_id = 2216,
}
_DR["G02217"] = {
    title = "Condição HV-2217: correlação 84.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002218", "SKU-GEN-006520" },
    notes = "Ver procedimento PROC-L1-02218 se aplicável.",
    gen_id = 2217,
}
_DR["G02218"] = {
    title = "Condição BODY-2218: correlação 67.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002219", "SKU-GEN-006527" },
    notes = "Ver procedimento PROC-L1-02219 se aplicável.",
    gen_id = 2218,
}
_DR["G02219"] = {
    title = "Condição INFO-2219: correlação 11.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002220", "SKU-GEN-006534" },
    notes = "Ver procedimento PROC-L1-02220 se aplicável.",
    gen_id = 2219,
}
_DR["G02220"] = {
    title = "Condição ENGINE-2220: correlação 25.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002221", "SKU-GEN-006541" },
    notes = "Ver procedimento PROC-L1-02221 se aplicável.",
    gen_id = 2220,
}
_DR["G02221"] = {
    title = "Condição ABS-2221: correlação 84.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002222", "SKU-GEN-006548" },
    notes = "Ver procedimento PROC-L1-02222 se aplicável.",
    gen_id = 2221,
}
_DR["G02222"] = {
    title = "Condição SRS-2222: correlação 60.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002223", "SKU-GEN-006555" },
    notes = "Ver procedimento PROC-L1-02223 se aplicável.",
    gen_id = 2222,
}
_DR["G02223"] = {
    title = "Condição CLIMATE-2223: correlação 45.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002224", "SKU-GEN-006562" },
    notes = "Ver procedimento PROC-L1-02224 se aplicável.",
    gen_id = 2223,
}
_DR["G02224"] = {
    title = "Condição TRANS-2224: correlação 71.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002225", "SKU-GEN-006569" },
    notes = "Ver procedimento PROC-L1-02225 se aplicável.",
    gen_id = 2224,
}
_DR["G02225"] = {
    title = "Condição FUEL-2225: correlação 6.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002226", "SKU-GEN-006576" },
    notes = "Ver procedimento PROC-L1-02226 se aplicável.",
    gen_id = 2225,
}
_DR["G02226"] = {
    title = "Condição STEER-2226: correlação 79.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002227", "SKU-GEN-006583" },
    notes = "Ver procedimento PROC-L1-02227 se aplicável.",
    gen_id = 2226,
}
_DR["G02227"] = {
    title = "Condição HV-2227: correlação 88.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002228", "SKU-GEN-006590" },
    notes = "Ver procedimento PROC-L1-02228 se aplicável.",
    gen_id = 2227,
}
_DR["G02228"] = {
    title = "Condição BODY-2228: correlação 75.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002229", "SKU-GEN-006597" },
    notes = "Ver procedimento PROC-L1-02229 se aplicável.",
    gen_id = 2228,
}
_DR["G02229"] = {
    title = "Condição INFO-2229: correlação 45.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002230", "SKU-GEN-006604" },
    notes = "Ver procedimento PROC-L1-02230 se aplicável.",
    gen_id = 2229,
}
_DR["G02230"] = {
    title = "Condição ENGINE-2230: correlação 6.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002231", "SKU-GEN-006611" },
    notes = "Ver procedimento PROC-L1-02231 se aplicável.",
    gen_id = 2230,
}
_DR["G02231"] = {
    title = "Condição ABS-2231: correlação 29.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002232", "SKU-GEN-006618" },
    notes = "Ver procedimento PROC-L1-02232 se aplicável.",
    gen_id = 2231,
}
_DR["G02232"] = {
    title = "Condição SRS-2232: correlação 61.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002233", "SKU-GEN-006625" },
    notes = "Ver procedimento PROC-L1-02233 se aplicável.",
    gen_id = 2232,
}
_DR["G02233"] = {
    title = "Condição CLIMATE-2233: correlação 70.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002234", "SKU-GEN-006632" },
    notes = "Ver procedimento PROC-L1-02234 se aplicável.",
    gen_id = 2233,
}
_DR["G02234"] = {
    title = "Condição TRANS-2234: correlação 78.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002235", "SKU-GEN-006639" },
    notes = "Ver procedimento PROC-L1-02235 se aplicável.",
    gen_id = 2234,
}
_DR["G02235"] = {
    title = "Condição FUEL-2235: correlação 39.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002236", "SKU-GEN-006646" },
    notes = "Ver procedimento PROC-L1-02236 se aplicável.",
    gen_id = 2235,
}
_DR["G02236"] = {
    title = "Condição STEER-2236: correlação 98.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002237", "SKU-GEN-006653" },
    notes = "Ver procedimento PROC-L1-02237 se aplicável.",
    gen_id = 2236,
}
_DR["G02237"] = {
    title = "Condição HV-2237: correlação 24.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002238", "SKU-GEN-006660" },
    notes = "Ver procedimento PROC-L1-02238 se aplicável.",
    gen_id = 2237,
}
_DR["G02238"] = {
    title = "Condição BODY-2238: correlação 0.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002239", "SKU-GEN-006667" },
    notes = "Ver procedimento PROC-L1-02239 se aplicável.",
    gen_id = 2238,
}
_DR["G02239"] = {
    title = "Condição INFO-2239: correlação 37.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002240", "SKU-GEN-006674" },
    notes = "Ver procedimento PROC-L1-02240 se aplicável.",
    gen_id = 2239,
}
_DR["G02240"] = {
    title = "Condição ENGINE-2240: correlação 79.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002241", "SKU-GEN-006681" },
    notes = "Ver procedimento PROC-L1-02241 se aplicável.",
    gen_id = 2240,
}
_DR["G02241"] = {
    title = "Condição ABS-2241: correlação 72.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002242", "SKU-GEN-006688" },
    notes = "Ver procedimento PROC-L1-02242 se aplicável.",
    gen_id = 2241,
}
_DR["G02242"] = {
    title = "Condição SRS-2242: correlação 65.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002243", "SKU-GEN-006695" },
    notes = "Ver procedimento PROC-L1-02243 se aplicável.",
    gen_id = 2242,
}
_DR["G02243"] = {
    title = "Condição CLIMATE-2243: correlação 44.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002244", "SKU-GEN-006702" },
    notes = "Ver procedimento PROC-L1-02244 se aplicável.",
    gen_id = 2243,
}
_DR["G02244"] = {
    title = "Condição TRANS-2244: correlação 32.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002245", "SKU-GEN-006709" },
    notes = "Ver procedimento PROC-L1-02245 se aplicável.",
    gen_id = 2244,
}
_DR["G02245"] = {
    title = "Condição FUEL-2245: correlação 6.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002246", "SKU-GEN-006716" },
    notes = "Ver procedimento PROC-L1-02246 se aplicável.",
    gen_id = 2245,
}
_DR["G02246"] = {
    title = "Condição STEER-2246: correlação 11.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002247", "SKU-GEN-006723" },
    notes = "Ver procedimento PROC-L1-02247 se aplicável.",
    gen_id = 2246,
}
_DR["G02247"] = {
    title = "Condição HV-2247: correlação 11.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002248", "SKU-GEN-006730" },
    notes = "Ver procedimento PROC-L1-02248 se aplicável.",
    gen_id = 2247,
}
_DR["G02248"] = {
    title = "Condição BODY-2248: correlação 95.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002249", "SKU-GEN-006737" },
    notes = "Ver procedimento PROC-L1-02249 se aplicável.",
    gen_id = 2248,
}
_DR["G02249"] = {
    title = "Condição INFO-2249: correlação 29.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002250", "SKU-GEN-006744" },
    notes = "Ver procedimento PROC-L1-02250 se aplicável.",
    gen_id = 2249,
}
_DR["G02250"] = {
    title = "Condição ENGINE-2250: correlação 50.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002251", "SKU-GEN-006751" },
    notes = "Ver procedimento PROC-L1-02251 se aplicável.",
    gen_id = 2250,
}
_DR["G02251"] = {
    title = "Condição ABS-2251: correlação 90.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002252", "SKU-GEN-006758" },
    notes = "Ver procedimento PROC-L1-02252 se aplicável.",
    gen_id = 2251,
}
_DR["G02252"] = {
    title = "Condição SRS-2252: correlação 19.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002253", "SKU-GEN-006765" },
    notes = "Ver procedimento PROC-L1-02253 se aplicável.",
    gen_id = 2252,
}
_DR["G02253"] = {
    title = "Condição CLIMATE-2253: correlação 67.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002254", "SKU-GEN-006772" },
    notes = "Ver procedimento PROC-L1-02254 se aplicável.",
    gen_id = 2253,
}
_DR["G02254"] = {
    title = "Condição TRANS-2254: correlação 45.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002255", "SKU-GEN-006779" },
    notes = "Ver procedimento PROC-L1-02255 se aplicável.",
    gen_id = 2254,
}
_DR["G02255"] = {
    title = "Condição FUEL-2255: correlação 76.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002256", "SKU-GEN-006786" },
    notes = "Ver procedimento PROC-L1-02256 se aplicável.",
    gen_id = 2255,
}
_DR["G02256"] = {
    title = "Condição STEER-2256: correlação 63.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002257", "SKU-GEN-006793" },
    notes = "Ver procedimento PROC-L1-02257 se aplicável.",
    gen_id = 2256,
}
_DR["G02257"] = {
    title = "Condição HV-2257: correlação 86.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002258", "SKU-GEN-006800" },
    notes = "Ver procedimento PROC-L1-02258 se aplicável.",
    gen_id = 2257,
}
_DR["G02258"] = {
    title = "Condição BODY-2258: correlação 35.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002259", "SKU-GEN-006807" },
    notes = "Ver procedimento PROC-L1-02259 se aplicável.",
    gen_id = 2258,
}
_DR["G02259"] = {
    title = "Condição INFO-2259: correlação 49.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002260", "SKU-GEN-006814" },
    notes = "Ver procedimento PROC-L1-02260 se aplicável.",
    gen_id = 2259,
}
_DR["G02260"] = {
    title = "Condição ENGINE-2260: correlação 12.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002261", "SKU-GEN-006821" },
    notes = "Ver procedimento PROC-L1-02261 se aplicável.",
    gen_id = 2260,
}
_DR["G02261"] = {
    title = "Condição ABS-2261: correlação 26.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002262", "SKU-GEN-006828" },
    notes = "Ver procedimento PROC-L1-02262 se aplicável.",
    gen_id = 2261,
}
_DR["G02262"] = {
    title = "Condição SRS-2262: correlação 13.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002263", "SKU-GEN-006835" },
    notes = "Ver procedimento PROC-L1-02263 se aplicável.",
    gen_id = 2262,
}
_DR["G02263"] = {
    title = "Condição CLIMATE-2263: correlação 89.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002264", "SKU-GEN-006842" },
    notes = "Ver procedimento PROC-L1-02264 se aplicável.",
    gen_id = 2263,
}
_DR["G02264"] = {
    title = "Condição TRANS-2264: correlação 34.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002265", "SKU-GEN-006849" },
    notes = "Ver procedimento PROC-L1-02265 se aplicável.",
    gen_id = 2264,
}
_DR["G02265"] = {
    title = "Condição FUEL-2265: correlação 62.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002266", "SKU-GEN-006856" },
    notes = "Ver procedimento PROC-L1-02266 se aplicável.",
    gen_id = 2265,
}
_DR["G02266"] = {
    title = "Condição STEER-2266: correlação 25.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002267", "SKU-GEN-006863" },
    notes = "Ver procedimento PROC-L1-02267 se aplicável.",
    gen_id = 2266,
}
_DR["G02267"] = {
    title = "Condição HV-2267: correlação 46.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002268", "SKU-GEN-006870" },
    notes = "Ver procedimento PROC-L1-02268 se aplicável.",
    gen_id = 2267,
}
_DR["G02268"] = {
    title = "Condição BODY-2268: correlação 43.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002269", "SKU-GEN-006877" },
    notes = "Ver procedimento PROC-L1-02269 se aplicável.",
    gen_id = 2268,
}
_DR["G02269"] = {
    title = "Condição INFO-2269: correlação 55.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002270", "SKU-GEN-006884" },
    notes = "Ver procedimento PROC-L1-02270 se aplicável.",
    gen_id = 2269,
}
_DR["G02270"] = {
    title = "Condição ENGINE-2270: correlação 36.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002271", "SKU-GEN-006891" },
    notes = "Ver procedimento PROC-L1-02271 se aplicável.",
    gen_id = 2270,
}
_DR["G02271"] = {
    title = "Condição ABS-2271: correlação 86.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002272", "SKU-GEN-006898" },
    notes = "Ver procedimento PROC-L1-02272 se aplicável.",
    gen_id = 2271,
}
_DR["G02272"] = {
    title = "Condição SRS-2272: correlação 48.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002273", "SKU-GEN-006905" },
    notes = "Ver procedimento PROC-L1-02273 se aplicável.",
    gen_id = 2272,
}
_DR["G02273"] = {
    title = "Condição CLIMATE-2273: correlação 68.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002274", "SKU-GEN-006912" },
    notes = "Ver procedimento PROC-L1-02274 se aplicável.",
    gen_id = 2273,
}
_DR["G02274"] = {
    title = "Condição TRANS-2274: correlação 76.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002275", "SKU-GEN-006919" },
    notes = "Ver procedimento PROC-L1-02275 se aplicável.",
    gen_id = 2274,
}
_DR["G02275"] = {
    title = "Condição FUEL-2275: correlação 44.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002276", "SKU-GEN-006926" },
    notes = "Ver procedimento PROC-L1-02276 se aplicável.",
    gen_id = 2275,
}
_DR["G02276"] = {
    title = "Condição STEER-2276: correlação 89.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002277", "SKU-GEN-006933" },
    notes = "Ver procedimento PROC-L1-02277 se aplicável.",
    gen_id = 2276,
}
_DR["G02277"] = {
    title = "Condição HV-2277: correlação 44.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002278", "SKU-GEN-006940" },
    notes = "Ver procedimento PROC-L1-02278 se aplicável.",
    gen_id = 2277,
}
_DR["G02278"] = {
    title = "Condição BODY-2278: correlação 80.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002279", "SKU-GEN-006947" },
    notes = "Ver procedimento PROC-L1-02279 se aplicável.",
    gen_id = 2278,
}
_DR["G02279"] = {
    title = "Condição INFO-2279: correlação 51.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002280", "SKU-GEN-006954" },
    notes = "Ver procedimento PROC-L1-02280 se aplicável.",
    gen_id = 2279,
}
_DR["G02280"] = {
    title = "Condição ENGINE-2280: correlação 10.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002281", "SKU-GEN-006961" },
    notes = "Ver procedimento PROC-L1-02281 se aplicável.",
    gen_id = 2280,
}
_DR["G02281"] = {
    title = "Condição ABS-2281: correlação 73.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002282", "SKU-GEN-006968" },
    notes = "Ver procedimento PROC-L1-02282 se aplicável.",
    gen_id = 2281,
}
_DR["G02282"] = {
    title = "Condição SRS-2282: correlação 67.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002283", "SKU-GEN-006975" },
    notes = "Ver procedimento PROC-L1-02283 se aplicável.",
    gen_id = 2282,
}
_DR["G02283"] = {
    title = "Condição CLIMATE-2283: correlação 31.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002284", "SKU-GEN-006982" },
    notes = "Ver procedimento PROC-L1-02284 se aplicável.",
    gen_id = 2283,
}
_DR["G02284"] = {
    title = "Condição TRANS-2284: correlação 7.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002285", "SKU-GEN-006989" },
    notes = "Ver procedimento PROC-L1-02285 se aplicável.",
    gen_id = 2284,
}
_DR["G02285"] = {
    title = "Condição FUEL-2285: correlação 16.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002286", "SKU-GEN-006996" },
    notes = "Ver procedimento PROC-L1-02286 se aplicável.",
    gen_id = 2285,
}
_DR["G02286"] = {
    title = "Condição STEER-2286: correlação 27.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002287", "SKU-GEN-007003" },
    notes = "Ver procedimento PROC-L1-02287 se aplicável.",
    gen_id = 2286,
}
_DR["G02287"] = {
    title = "Condição HV-2287: correlação 72.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002288", "SKU-GEN-007010" },
    notes = "Ver procedimento PROC-L1-02288 se aplicável.",
    gen_id = 2287,
}
_DR["G02288"] = {
    title = "Condição BODY-2288: correlação 46.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002289", "SKU-GEN-007017" },
    notes = "Ver procedimento PROC-L1-02289 se aplicável.",
    gen_id = 2288,
}
_DR["G02289"] = {
    title = "Condição INFO-2289: correlação 25.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002290", "SKU-GEN-007024" },
    notes = "Ver procedimento PROC-L1-02290 se aplicável.",
    gen_id = 2289,
}
_DR["G02290"] = {
    title = "Condição ENGINE-2290: correlação 13.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002291", "SKU-GEN-007031" },
    notes = "Ver procedimento PROC-L1-02291 se aplicável.",
    gen_id = 2290,
}
_DR["G02291"] = {
    title = "Condição ABS-2291: correlação 13.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002292", "SKU-GEN-007038" },
    notes = "Ver procedimento PROC-L1-02292 se aplicável.",
    gen_id = 2291,
}
_DR["G02292"] = {
    title = "Condição SRS-2292: correlação 57.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002293", "SKU-GEN-007045" },
    notes = "Ver procedimento PROC-L1-02293 se aplicável.",
    gen_id = 2292,
}
_DR["G02293"] = {
    title = "Condição CLIMATE-2293: correlação 10.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002294", "SKU-GEN-007052" },
    notes = "Ver procedimento PROC-L1-02294 se aplicável.",
    gen_id = 2293,
}
_DR["G02294"] = {
    title = "Condição TRANS-2294: correlação 65.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002295", "SKU-GEN-007059" },
    notes = "Ver procedimento PROC-L1-02295 se aplicável.",
    gen_id = 2294,
}
_DR["G02295"] = {
    title = "Condição FUEL-2295: correlação 19.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002296", "SKU-GEN-007066" },
    notes = "Ver procedimento PROC-L1-02296 se aplicável.",
    gen_id = 2295,
}
_DR["G02296"] = {
    title = "Condição STEER-2296: correlação 36.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002297", "SKU-GEN-007073" },
    notes = "Ver procedimento PROC-L1-02297 se aplicável.",
    gen_id = 2296,
}
_DR["G02297"] = {
    title = "Condição HV-2297: correlação 33.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002298", "SKU-GEN-007080" },
    notes = "Ver procedimento PROC-L1-02298 se aplicável.",
    gen_id = 2297,
}
_DR["G02298"] = {
    title = "Condição BODY-2298: correlação 95.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002299", "SKU-GEN-007087" },
    notes = "Ver procedimento PROC-L1-02299 se aplicável.",
    gen_id = 2298,
}
_DR["G02299"] = {
    title = "Condição INFO-2299: correlação 16.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002300", "SKU-GEN-007094" },
    notes = "Ver procedimento PROC-L1-02300 se aplicável.",
    gen_id = 2299,
}
_DR["G02300"] = {
    title = "Condição ENGINE-2300: correlação 7.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002301", "SKU-GEN-007101" },
    notes = "Ver procedimento PROC-L1-02301 se aplicável.",
    gen_id = 2300,
}
_DR["G02301"] = {
    title = "Condição ABS-2301: correlação 12.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002302", "SKU-GEN-007108" },
    notes = "Ver procedimento PROC-L1-02302 se aplicável.",
    gen_id = 2301,
}
_DR["G02302"] = {
    title = "Condição SRS-2302: correlação 23.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002303", "SKU-GEN-007115" },
    notes = "Ver procedimento PROC-L1-02303 se aplicável.",
    gen_id = 2302,
}
_DR["G02303"] = {
    title = "Condição CLIMATE-2303: correlação 21.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002304", "SKU-GEN-007122" },
    notes = "Ver procedimento PROC-L1-02304 se aplicável.",
    gen_id = 2303,
}
_DR["G02304"] = {
    title = "Condição TRANS-2304: correlação 38.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002305", "SKU-GEN-007129" },
    notes = "Ver procedimento PROC-L1-02305 se aplicável.",
    gen_id = 2304,
}
_DR["G02305"] = {
    title = "Condição FUEL-2305: correlação 1.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002306", "SKU-GEN-007136" },
    notes = "Ver procedimento PROC-L1-02306 se aplicável.",
    gen_id = 2305,
}
_DR["G02306"] = {
    title = "Condição STEER-2306: correlação 40.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002307", "SKU-GEN-007143" },
    notes = "Ver procedimento PROC-L1-02307 se aplicável.",
    gen_id = 2306,
}
_DR["G02307"] = {
    title = "Condição HV-2307: correlação 90.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002308", "SKU-GEN-007150" },
    notes = "Ver procedimento PROC-L1-02308 se aplicável.",
    gen_id = 2307,
}
_DR["G02308"] = {
    title = "Condição BODY-2308: correlação 12.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002309", "SKU-GEN-007157" },
    notes = "Ver procedimento PROC-L1-02309 se aplicável.",
    gen_id = 2308,
}
_DR["G02309"] = {
    title = "Condição INFO-2309: correlação 42.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002310", "SKU-GEN-007164" },
    notes = "Ver procedimento PROC-L1-02310 se aplicável.",
    gen_id = 2309,
}
_DR["G02310"] = {
    title = "Condição ENGINE-2310: correlação 32.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002311", "SKU-GEN-007171" },
    notes = "Ver procedimento PROC-L1-02311 se aplicável.",
    gen_id = 2310,
}
_DR["G02311"] = {
    title = "Condição ABS-2311: correlação 52.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002312", "SKU-GEN-007178" },
    notes = "Ver procedimento PROC-L1-02312 se aplicável.",
    gen_id = 2311,
}
_DR["G02312"] = {
    title = "Condição SRS-2312: correlação 82.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002313", "SKU-GEN-007185" },
    notes = "Ver procedimento PROC-L1-02313 se aplicável.",
    gen_id = 2312,
}
_DR["G02313"] = {
    title = "Condição CLIMATE-2313: correlação 26.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002314", "SKU-GEN-007192" },
    notes = "Ver procedimento PROC-L1-02314 se aplicável.",
    gen_id = 2313,
}
_DR["G02314"] = {
    title = "Condição TRANS-2314: correlação 11.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002315", "SKU-GEN-007199" },
    notes = "Ver procedimento PROC-L1-02315 se aplicável.",
    gen_id = 2314,
}
_DR["G02315"] = {
    title = "Condição FUEL-2315: correlação 24.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002316", "SKU-GEN-007206" },
    notes = "Ver procedimento PROC-L1-02316 se aplicável.",
    gen_id = 2315,
}
_DR["G02316"] = {
    title = "Condição STEER-2316: correlação 82.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002317", "SKU-GEN-007213" },
    notes = "Ver procedimento PROC-L1-02317 se aplicável.",
    gen_id = 2316,
}
_DR["G02317"] = {
    title = "Condição HV-2317: correlação 3.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002318", "SKU-GEN-007220" },
    notes = "Ver procedimento PROC-L1-02318 se aplicável.",
    gen_id = 2317,
}
_DR["G02318"] = {
    title = "Condição BODY-2318: correlação 11.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002319", "SKU-GEN-007227" },
    notes = "Ver procedimento PROC-L1-02319 se aplicável.",
    gen_id = 2318,
}
_DR["G02319"] = {
    title = "Condição INFO-2319: correlação 17.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002320", "SKU-GEN-007234" },
    notes = "Ver procedimento PROC-L1-02320 se aplicável.",
    gen_id = 2319,
}
_DR["G02320"] = {
    title = "Condição ENGINE-2320: correlação 55.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002321", "SKU-GEN-007241" },
    notes = "Ver procedimento PROC-L1-02321 se aplicável.",
    gen_id = 2320,
}
_DR["G02321"] = {
    title = "Condição ABS-2321: correlação 38.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002322", "SKU-GEN-007248" },
    notes = "Ver procedimento PROC-L1-02322 se aplicável.",
    gen_id = 2321,
}
_DR["G02322"] = {
    title = "Condição SRS-2322: correlação 51.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002323", "SKU-GEN-007255" },
    notes = "Ver procedimento PROC-L1-02323 se aplicável.",
    gen_id = 2322,
}
_DR["G02323"] = {
    title = "Condição CLIMATE-2323: correlação 65.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002324", "SKU-GEN-007262" },
    notes = "Ver procedimento PROC-L1-02324 se aplicável.",
    gen_id = 2323,
}
_DR["G02324"] = {
    title = "Condição TRANS-2324: correlação 30.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002325", "SKU-GEN-007269" },
    notes = "Ver procedimento PROC-L1-02325 se aplicável.",
    gen_id = 2324,
}
_DR["G02325"] = {
    title = "Condição FUEL-2325: correlação 80.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002326", "SKU-GEN-007276" },
    notes = "Ver procedimento PROC-L1-02326 se aplicável.",
    gen_id = 2325,
}
_DR["G02326"] = {
    title = "Condição STEER-2326: correlação 95.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002327", "SKU-GEN-007283" },
    notes = "Ver procedimento PROC-L1-02327 se aplicável.",
    gen_id = 2326,
}
_DR["G02327"] = {
    title = "Condição HV-2327: correlação 56.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002328", "SKU-GEN-007290" },
    notes = "Ver procedimento PROC-L1-02328 se aplicável.",
    gen_id = 2327,
}
_DR["G02328"] = {
    title = "Condição BODY-2328: correlação 60.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002329", "SKU-GEN-007297" },
    notes = "Ver procedimento PROC-L1-02329 se aplicável.",
    gen_id = 2328,
}
_DR["G02329"] = {
    title = "Condição INFO-2329: correlação 12.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002330", "SKU-GEN-007304" },
    notes = "Ver procedimento PROC-L1-02330 se aplicável.",
    gen_id = 2329,
}
_DR["G02330"] = {
    title = "Condição ENGINE-2330: correlação 35.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002331", "SKU-GEN-007311" },
    notes = "Ver procedimento PROC-L1-02331 se aplicável.",
    gen_id = 2330,
}
_DR["G02331"] = {
    title = "Condição ABS-2331: correlação 40.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002332", "SKU-GEN-007318" },
    notes = "Ver procedimento PROC-L1-02332 se aplicável.",
    gen_id = 2331,
}
_DR["G02332"] = {
    title = "Condição SRS-2332: correlação 94.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002333", "SKU-GEN-007325" },
    notes = "Ver procedimento PROC-L1-02333 se aplicável.",
    gen_id = 2332,
}
_DR["G02333"] = {
    title = "Condição CLIMATE-2333: correlação 99.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002334", "SKU-GEN-007332" },
    notes = "Ver procedimento PROC-L1-02334 se aplicável.",
    gen_id = 2333,
}
_DR["G02334"] = {
    title = "Condição TRANS-2334: correlação 86.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002335", "SKU-GEN-007339" },
    notes = "Ver procedimento PROC-L1-02335 se aplicável.",
    gen_id = 2334,
}
_DR["G02335"] = {
    title = "Condição FUEL-2335: correlação 40.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002336", "SKU-GEN-007346" },
    notes = "Ver procedimento PROC-L1-02336 se aplicável.",
    gen_id = 2335,
}
_DR["G02336"] = {
    title = "Condição STEER-2336: correlação 59.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002337", "SKU-GEN-007353" },
    notes = "Ver procedimento PROC-L1-02337 se aplicável.",
    gen_id = 2336,
}
_DR["G02337"] = {
    title = "Condição HV-2337: correlação 28.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002338", "SKU-GEN-007360" },
    notes = "Ver procedimento PROC-L1-02338 se aplicável.",
    gen_id = 2337,
}
_DR["G02338"] = {
    title = "Condição BODY-2338: correlação 73.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002339", "SKU-GEN-007367" },
    notes = "Ver procedimento PROC-L1-02339 se aplicável.",
    gen_id = 2338,
}
_DR["G02339"] = {
    title = "Condição INFO-2339: correlação 91.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002340", "SKU-GEN-007374" },
    notes = "Ver procedimento PROC-L1-02340 se aplicável.",
    gen_id = 2339,
}
_DR["G02340"] = {
    title = "Condição ENGINE-2340: correlação 53.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002341", "SKU-GEN-007381" },
    notes = "Ver procedimento PROC-L1-02341 se aplicável.",
    gen_id = 2340,
}
_DR["G02341"] = {
    title = "Condição ABS-2341: correlação 42.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002342", "SKU-GEN-007388" },
    notes = "Ver procedimento PROC-L1-02342 se aplicável.",
    gen_id = 2341,
}
_DR["G02342"] = {
    title = "Condição SRS-2342: correlação 42.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002343", "SKU-GEN-007395" },
    notes = "Ver procedimento PROC-L1-02343 se aplicável.",
    gen_id = 2342,
}
_DR["G02343"] = {
    title = "Condição CLIMATE-2343: correlação 88.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002344", "SKU-GEN-007402" },
    notes = "Ver procedimento PROC-L1-02344 se aplicável.",
    gen_id = 2343,
}
_DR["G02344"] = {
    title = "Condição TRANS-2344: correlação 1.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002345", "SKU-GEN-007409" },
    notes = "Ver procedimento PROC-L1-02345 se aplicável.",
    gen_id = 2344,
}
_DR["G02345"] = {
    title = "Condição FUEL-2345: correlação 84.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002346", "SKU-GEN-007416" },
    notes = "Ver procedimento PROC-L1-02346 se aplicável.",
    gen_id = 2345,
}
_DR["G02346"] = {
    title = "Condição STEER-2346: correlação 32.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002347", "SKU-GEN-007423" },
    notes = "Ver procedimento PROC-L1-02347 se aplicável.",
    gen_id = 2346,
}
_DR["G02347"] = {
    title = "Condição HV-2347: correlação 12.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002348", "SKU-GEN-007430" },
    notes = "Ver procedimento PROC-L1-02348 se aplicável.",
    gen_id = 2347,
}
_DR["G02348"] = {
    title = "Condição BODY-2348: correlação 10.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002349", "SKU-GEN-007437" },
    notes = "Ver procedimento PROC-L1-02349 se aplicável.",
    gen_id = 2348,
}
_DR["G02349"] = {
    title = "Condição INFO-2349: correlação 16.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002350", "SKU-GEN-007444" },
    notes = "Ver procedimento PROC-L1-02350 se aplicável.",
    gen_id = 2349,
}
_DR["G02350"] = {
    title = "Condição ENGINE-2350: correlação 88.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002351", "SKU-GEN-007451" },
    notes = "Ver procedimento PROC-L1-02351 se aplicável.",
    gen_id = 2350,
}
_DR["G02351"] = {
    title = "Condição ABS-2351: correlação 75.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002352", "SKU-GEN-007458" },
    notes = "Ver procedimento PROC-L1-02352 se aplicável.",
    gen_id = 2351,
}
_DR["G02352"] = {
    title = "Condição SRS-2352: correlação 23.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002353", "SKU-GEN-007465" },
    notes = "Ver procedimento PROC-L1-02353 se aplicável.",
    gen_id = 2352,
}
_DR["G02353"] = {
    title = "Condição CLIMATE-2353: correlação 75.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002354", "SKU-GEN-007472" },
    notes = "Ver procedimento PROC-L1-02354 se aplicável.",
    gen_id = 2353,
}
_DR["G02354"] = {
    title = "Condição TRANS-2354: correlação 95.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002355", "SKU-GEN-007479" },
    notes = "Ver procedimento PROC-L1-02355 se aplicável.",
    gen_id = 2354,
}
_DR["G02355"] = {
    title = "Condição FUEL-2355: correlação 91.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002356", "SKU-GEN-007486" },
    notes = "Ver procedimento PROC-L1-02356 se aplicável.",
    gen_id = 2355,
}
_DR["G02356"] = {
    title = "Condição STEER-2356: correlação 68.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002357", "SKU-GEN-007493" },
    notes = "Ver procedimento PROC-L1-02357 se aplicável.",
    gen_id = 2356,
}
_DR["G02357"] = {
    title = "Condição HV-2357: correlação 82.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002358", "SKU-GEN-007500" },
    notes = "Ver procedimento PROC-L1-02358 se aplicável.",
    gen_id = 2357,
}
_DR["G02358"] = {
    title = "Condição BODY-2358: correlação 70.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002359", "SKU-GEN-007507" },
    notes = "Ver procedimento PROC-L1-02359 se aplicável.",
    gen_id = 2358,
}
_DR["G02359"] = {
    title = "Condição INFO-2359: correlação 62.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002360", "SKU-GEN-007514" },
    notes = "Ver procedimento PROC-L1-02360 se aplicável.",
    gen_id = 2359,
}
_DR["G02360"] = {
    title = "Condição ENGINE-2360: correlação 41.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002361", "SKU-GEN-007521" },
    notes = "Ver procedimento PROC-L1-02361 se aplicável.",
    gen_id = 2360,
}
_DR["G02361"] = {
    title = "Condição ABS-2361: correlação 19.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002362", "SKU-GEN-007528" },
    notes = "Ver procedimento PROC-L1-02362 se aplicável.",
    gen_id = 2361,
}
_DR["G02362"] = {
    title = "Condição SRS-2362: correlação 48.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002363", "SKU-GEN-007535" },
    notes = "Ver procedimento PROC-L1-02363 se aplicável.",
    gen_id = 2362,
}
_DR["G02363"] = {
    title = "Condição CLIMATE-2363: correlação 62.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002364", "SKU-GEN-007542" },
    notes = "Ver procedimento PROC-L1-02364 se aplicável.",
    gen_id = 2363,
}
_DR["G02364"] = {
    title = "Condição TRANS-2364: correlação 81.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002365", "SKU-GEN-007549" },
    notes = "Ver procedimento PROC-L1-02365 se aplicável.",
    gen_id = 2364,
}
_DR["G02365"] = {
    title = "Condição FUEL-2365: correlação 35.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002366", "SKU-GEN-007556" },
    notes = "Ver procedimento PROC-L1-02366 se aplicável.",
    gen_id = 2365,
}
_DR["G02366"] = {
    title = "Condição STEER-2366: correlação 30.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002367", "SKU-GEN-007563" },
    notes = "Ver procedimento PROC-L1-02367 se aplicável.",
    gen_id = 2366,
}
_DR["G02367"] = {
    title = "Condição HV-2367: correlação 19.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002368", "SKU-GEN-007570" },
    notes = "Ver procedimento PROC-L1-02368 se aplicável.",
    gen_id = 2367,
}
_DR["G02368"] = {
    title = "Condição BODY-2368: correlação 15.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002369", "SKU-GEN-007577" },
    notes = "Ver procedimento PROC-L1-02369 se aplicável.",
    gen_id = 2368,
}
_DR["G02369"] = {
    title = "Condição INFO-2369: correlação 46.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002370", "SKU-GEN-007584" },
    notes = "Ver procedimento PROC-L1-02370 se aplicável.",
    gen_id = 2369,
}
_DR["G02370"] = {
    title = "Condição ENGINE-2370: correlação 0.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002371", "SKU-GEN-007591" },
    notes = "Ver procedimento PROC-L1-02371 se aplicável.",
    gen_id = 2370,
}
_DR["G02371"] = {
    title = "Condição ABS-2371: correlação 61.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002372", "SKU-GEN-007598" },
    notes = "Ver procedimento PROC-L1-02372 se aplicável.",
    gen_id = 2371,
}
_DR["G02372"] = {
    title = "Condição SRS-2372: correlação 87.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002373", "SKU-GEN-007605" },
    notes = "Ver procedimento PROC-L1-02373 se aplicável.",
    gen_id = 2372,
}
_DR["G02373"] = {
    title = "Condição CLIMATE-2373: correlação 45.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002374", "SKU-GEN-007612" },
    notes = "Ver procedimento PROC-L1-02374 se aplicável.",
    gen_id = 2373,
}
_DR["G02374"] = {
    title = "Condição TRANS-2374: correlação 17.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002375", "SKU-GEN-007619" },
    notes = "Ver procedimento PROC-L1-02375 se aplicável.",
    gen_id = 2374,
}
_DR["G02375"] = {
    title = "Condição FUEL-2375: correlação 60.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002376", "SKU-GEN-007626" },
    notes = "Ver procedimento PROC-L1-02376 se aplicável.",
    gen_id = 2375,
}
_DR["G02376"] = {
    title = "Condição STEER-2376: correlação 0.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002377", "SKU-GEN-007633" },
    notes = "Ver procedimento PROC-L1-02377 se aplicável.",
    gen_id = 2376,
}
_DR["G02377"] = {
    title = "Condição HV-2377: correlação 37.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002378", "SKU-GEN-007640" },
    notes = "Ver procedimento PROC-L1-02378 se aplicável.",
    gen_id = 2377,
}
_DR["G02378"] = {
    title = "Condição BODY-2378: correlação 37.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002379", "SKU-GEN-007647" },
    notes = "Ver procedimento PROC-L1-02379 se aplicável.",
    gen_id = 2378,
}
_DR["G02379"] = {
    title = "Condição INFO-2379: correlação 88.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002380", "SKU-GEN-007654" },
    notes = "Ver procedimento PROC-L1-02380 se aplicável.",
    gen_id = 2379,
}
_DR["G02380"] = {
    title = "Condição ENGINE-2380: correlação 26.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002381", "SKU-GEN-007661" },
    notes = "Ver procedimento PROC-L1-02381 se aplicável.",
    gen_id = 2380,
}
_DR["G02381"] = {
    title = "Condição ABS-2381: correlação 54.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002382", "SKU-GEN-007668" },
    notes = "Ver procedimento PROC-L1-02382 se aplicável.",
    gen_id = 2381,
}
_DR["G02382"] = {
    title = "Condição SRS-2382: correlação 31.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002383", "SKU-GEN-007675" },
    notes = "Ver procedimento PROC-L1-02383 se aplicável.",
    gen_id = 2382,
}
_DR["G02383"] = {
    title = "Condição CLIMATE-2383: correlação 85.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002384", "SKU-GEN-007682" },
    notes = "Ver procedimento PROC-L1-02384 se aplicável.",
    gen_id = 2383,
}
_DR["G02384"] = {
    title = "Condição TRANS-2384: correlação 76.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002385", "SKU-GEN-007689" },
    notes = "Ver procedimento PROC-L1-02385 se aplicável.",
    gen_id = 2384,
}
_DR["G02385"] = {
    title = "Condição FUEL-2385: correlação 28.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002386", "SKU-GEN-007696" },
    notes = "Ver procedimento PROC-L1-02386 se aplicável.",
    gen_id = 2385,
}
_DR["G02386"] = {
    title = "Condição STEER-2386: correlação 98.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002387", "SKU-GEN-007703" },
    notes = "Ver procedimento PROC-L1-02387 se aplicável.",
    gen_id = 2386,
}
_DR["G02387"] = {
    title = "Condição HV-2387: correlação 79.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002388", "SKU-GEN-007710" },
    notes = "Ver procedimento PROC-L1-02388 se aplicável.",
    gen_id = 2387,
}
_DR["G02388"] = {
    title = "Condição BODY-2388: correlação 31.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002389", "SKU-GEN-007717" },
    notes = "Ver procedimento PROC-L1-02389 se aplicável.",
    gen_id = 2388,
}
_DR["G02389"] = {
    title = "Condição INFO-2389: correlação 25.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002390", "SKU-GEN-007724" },
    notes = "Ver procedimento PROC-L1-02390 se aplicável.",
    gen_id = 2389,
}
_DR["G02390"] = {
    title = "Condição ENGINE-2390: correlação 91.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002391", "SKU-GEN-007731" },
    notes = "Ver procedimento PROC-L1-02391 se aplicável.",
    gen_id = 2390,
}
_DR["G02391"] = {
    title = "Condição ABS-2391: correlação 29.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002392", "SKU-GEN-007738" },
    notes = "Ver procedimento PROC-L1-02392 se aplicável.",
    gen_id = 2391,
}
_DR["G02392"] = {
    title = "Condição SRS-2392: correlação 62.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002393", "SKU-GEN-007745" },
    notes = "Ver procedimento PROC-L1-02393 se aplicável.",
    gen_id = 2392,
}
_DR["G02393"] = {
    title = "Condição CLIMATE-2393: correlação 59.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002394", "SKU-GEN-007752" },
    notes = "Ver procedimento PROC-L1-02394 se aplicável.",
    gen_id = 2393,
}
_DR["G02394"] = {
    title = "Condição TRANS-2394: correlação 95.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002395", "SKU-GEN-007759" },
    notes = "Ver procedimento PROC-L1-02395 se aplicável.",
    gen_id = 2394,
}
_DR["G02395"] = {
    title = "Condição FUEL-2395: correlação 75.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002396", "SKU-GEN-007766" },
    notes = "Ver procedimento PROC-L1-02396 se aplicável.",
    gen_id = 2395,
}
_DR["G02396"] = {
    title = "Condição STEER-2396: correlação 11.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002397", "SKU-GEN-007773" },
    notes = "Ver procedimento PROC-L1-02397 se aplicável.",
    gen_id = 2396,
}
_DR["G02397"] = {
    title = "Condição HV-2397: correlação 51.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002398", "SKU-GEN-007780" },
    notes = "Ver procedimento PROC-L1-02398 se aplicável.",
    gen_id = 2397,
}
_DR["G02398"] = {
    title = "Condição BODY-2398: correlação 45.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002399", "SKU-GEN-007787" },
    notes = "Ver procedimento PROC-L1-02399 se aplicável.",
    gen_id = 2398,
}
_DR["G02399"] = {
    title = "Condição INFO-2399: correlação 10.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002400", "SKU-GEN-007794" },
    notes = "Ver procedimento PROC-L1-02400 se aplicável.",
    gen_id = 2399,
}
_DR["G02400"] = {
    title = "Condição ENGINE-2400: correlação 5.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002401", "SKU-GEN-007801" },
    notes = "Ver procedimento PROC-L1-02401 se aplicável.",
    gen_id = 2400,
}
_DR["G02401"] = {
    title = "Condição ABS-2401: correlação 89.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002402", "SKU-GEN-007808" },
    notes = "Ver procedimento PROC-L1-02402 se aplicável.",
    gen_id = 2401,
}
_DR["G02402"] = {
    title = "Condição SRS-2402: correlação 54.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002403", "SKU-GEN-007815" },
    notes = "Ver procedimento PROC-L1-02403 se aplicável.",
    gen_id = 2402,
}
_DR["G02403"] = {
    title = "Condição CLIMATE-2403: correlação 11.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002404", "SKU-GEN-007822" },
    notes = "Ver procedimento PROC-L1-02404 se aplicável.",
    gen_id = 2403,
}
_DR["G02404"] = {
    title = "Condição TRANS-2404: correlação 8.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002405", "SKU-GEN-007829" },
    notes = "Ver procedimento PROC-L1-02405 se aplicável.",
    gen_id = 2404,
}
_DR["G02405"] = {
    title = "Condição FUEL-2405: correlação 19.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002406", "SKU-GEN-007836" },
    notes = "Ver procedimento PROC-L1-02406 se aplicável.",
    gen_id = 2405,
}
_DR["G02406"] = {
    title = "Condição STEER-2406: correlação 0.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002407", "SKU-GEN-007843" },
    notes = "Ver procedimento PROC-L1-02407 se aplicável.",
    gen_id = 2406,
}
_DR["G02407"] = {
    title = "Condição HV-2407: correlação 96.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002408", "SKU-GEN-007850" },
    notes = "Ver procedimento PROC-L1-02408 se aplicável.",
    gen_id = 2407,
}
_DR["G02408"] = {
    title = "Condição BODY-2408: correlação 59.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002409", "SKU-GEN-007857" },
    notes = "Ver procedimento PROC-L1-02409 se aplicável.",
    gen_id = 2408,
}
_DR["G02409"] = {
    title = "Condição INFO-2409: correlação 61.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002410", "SKU-GEN-007864" },
    notes = "Ver procedimento PROC-L1-02410 se aplicável.",
    gen_id = 2409,
}
_DR["G02410"] = {
    title = "Condição ENGINE-2410: correlação 91.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002411", "SKU-GEN-007871" },
    notes = "Ver procedimento PROC-L1-02411 se aplicável.",
    gen_id = 2410,
}
_DR["G02411"] = {
    title = "Condição ABS-2411: correlação 97.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002412", "SKU-GEN-007878" },
    notes = "Ver procedimento PROC-L1-02412 se aplicável.",
    gen_id = 2411,
}
_DR["G02412"] = {
    title = "Condição SRS-2412: correlação 34.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002413", "SKU-GEN-007885" },
    notes = "Ver procedimento PROC-L1-02413 se aplicável.",
    gen_id = 2412,
}
_DR["G02413"] = {
    title = "Condição CLIMATE-2413: correlação 32.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002414", "SKU-GEN-007892" },
    notes = "Ver procedimento PROC-L1-02414 se aplicável.",
    gen_id = 2413,
}
_DR["G02414"] = {
    title = "Condição TRANS-2414: correlação 94.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002415", "SKU-GEN-007899" },
    notes = "Ver procedimento PROC-L1-02415 se aplicável.",
    gen_id = 2414,
}
_DR["G02415"] = {
    title = "Condição FUEL-2415: correlação 62.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002416", "SKU-GEN-007906" },
    notes = "Ver procedimento PROC-L1-02416 se aplicável.",
    gen_id = 2415,
}
_DR["G02416"] = {
    title = "Condição STEER-2416: correlação 36.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002417", "SKU-GEN-007913" },
    notes = "Ver procedimento PROC-L1-02417 se aplicável.",
    gen_id = 2416,
}
_DR["G02417"] = {
    title = "Condição HV-2417: correlação 28.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002418", "SKU-GEN-007920" },
    notes = "Ver procedimento PROC-L1-02418 se aplicável.",
    gen_id = 2417,
}
_DR["G02418"] = {
    title = "Condição BODY-2418: correlação 22.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002419", "SKU-GEN-007927" },
    notes = "Ver procedimento PROC-L1-02419 se aplicável.",
    gen_id = 2418,
}
_DR["G02419"] = {
    title = "Condição INFO-2419: correlação 17.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002420", "SKU-GEN-007934" },
    notes = "Ver procedimento PROC-L1-02420 se aplicável.",
    gen_id = 2419,
}
_DR["G02420"] = {
    title = "Condição ENGINE-2420: correlação 98.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002421", "SKU-GEN-007941" },
    notes = "Ver procedimento PROC-L1-02421 se aplicável.",
    gen_id = 2420,
}
_DR["G02421"] = {
    title = "Condição ABS-2421: correlação 84.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002422", "SKU-GEN-007948" },
    notes = "Ver procedimento PROC-L1-02422 se aplicável.",
    gen_id = 2421,
}
_DR["G02422"] = {
    title = "Condição SRS-2422: correlação 89.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002423", "SKU-GEN-007955" },
    notes = "Ver procedimento PROC-L1-02423 se aplicável.",
    gen_id = 2422,
}
_DR["G02423"] = {
    title = "Condição CLIMATE-2423: correlação 70.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002424", "SKU-GEN-007962" },
    notes = "Ver procedimento PROC-L1-02424 se aplicável.",
    gen_id = 2423,
}
_DR["G02424"] = {
    title = "Condição TRANS-2424: correlação 49.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002425", "SKU-GEN-007969" },
    notes = "Ver procedimento PROC-L1-02425 se aplicável.",
    gen_id = 2424,
}
_DR["G02425"] = {
    title = "Condição FUEL-2425: correlação 30.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002426", "SKU-GEN-007976" },
    notes = "Ver procedimento PROC-L1-02426 se aplicável.",
    gen_id = 2425,
}
_DR["G02426"] = {
    title = "Condição STEER-2426: correlação 97.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002427", "SKU-GEN-007983" },
    notes = "Ver procedimento PROC-L1-02427 se aplicável.",
    gen_id = 2426,
}
_DR["G02427"] = {
    title = "Condição HV-2427: correlação 26.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002428", "SKU-GEN-007990" },
    notes = "Ver procedimento PROC-L1-02428 se aplicável.",
    gen_id = 2427,
}
_DR["G02428"] = {
    title = "Condição BODY-2428: correlação 2.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002429", "SKU-GEN-007997" },
    notes = "Ver procedimento PROC-L1-02429 se aplicável.",
    gen_id = 2428,
}
_DR["G02429"] = {
    title = "Condição INFO-2429: correlação 94.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002430", "SKU-GEN-008004" },
    notes = "Ver procedimento PROC-L1-02430 se aplicável.",
    gen_id = 2429,
}
_DR["G02430"] = {
    title = "Condição ENGINE-2430: correlação 1.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002431", "SKU-GEN-008011" },
    notes = "Ver procedimento PROC-L1-02431 se aplicável.",
    gen_id = 2430,
}
_DR["G02431"] = {
    title = "Condição ABS-2431: correlação 43.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002432", "SKU-GEN-008018" },
    notes = "Ver procedimento PROC-L1-02432 se aplicável.",
    gen_id = 2431,
}
_DR["G02432"] = {
    title = "Condição SRS-2432: correlação 24.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002433", "SKU-GEN-008025" },
    notes = "Ver procedimento PROC-L1-02433 se aplicável.",
    gen_id = 2432,
}
_DR["G02433"] = {
    title = "Condição CLIMATE-2433: correlação 34.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002434", "SKU-GEN-008032" },
    notes = "Ver procedimento PROC-L1-02434 se aplicável.",
    gen_id = 2433,
}
_DR["G02434"] = {
    title = "Condição TRANS-2434: correlação 74.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002435", "SKU-GEN-008039" },
    notes = "Ver procedimento PROC-L1-02435 se aplicável.",
    gen_id = 2434,
}
_DR["G02435"] = {
    title = "Condição FUEL-2435: correlação 57.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002436", "SKU-GEN-008046" },
    notes = "Ver procedimento PROC-L1-02436 se aplicável.",
    gen_id = 2435,
}
_DR["G02436"] = {
    title = "Condição STEER-2436: correlação 30.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002437", "SKU-GEN-008053" },
    notes = "Ver procedimento PROC-L1-02437 se aplicável.",
    gen_id = 2436,
}
_DR["G02437"] = {
    title = "Condição HV-2437: correlação 94.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002438", "SKU-GEN-008060" },
    notes = "Ver procedimento PROC-L1-02438 se aplicável.",
    gen_id = 2437,
}
_DR["G02438"] = {
    title = "Condição BODY-2438: correlação 64.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002439", "SKU-GEN-008067" },
    notes = "Ver procedimento PROC-L1-02439 se aplicável.",
    gen_id = 2438,
}
_DR["G02439"] = {
    title = "Condição INFO-2439: correlação 50.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002440", "SKU-GEN-008074" },
    notes = "Ver procedimento PROC-L1-02440 se aplicável.",
    gen_id = 2439,
}
_DR["G02440"] = {
    title = "Condição ENGINE-2440: correlação 2.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002441", "SKU-GEN-008081" },
    notes = "Ver procedimento PROC-L1-02441 se aplicável.",
    gen_id = 2440,
}
_DR["G02441"] = {
    title = "Condição ABS-2441: correlação 22.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002442", "SKU-GEN-008088" },
    notes = "Ver procedimento PROC-L1-02442 se aplicável.",
    gen_id = 2441,
}
_DR["G02442"] = {
    title = "Condição SRS-2442: correlação 19.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002443", "SKU-GEN-008095" },
    notes = "Ver procedimento PROC-L1-02443 se aplicável.",
    gen_id = 2442,
}
_DR["G02443"] = {
    title = "Condição CLIMATE-2443: correlação 36.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002444", "SKU-GEN-008102" },
    notes = "Ver procedimento PROC-L1-02444 se aplicável.",
    gen_id = 2443,
}
_DR["G02444"] = {
    title = "Condição TRANS-2444: correlação 12.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002445", "SKU-GEN-008109" },
    notes = "Ver procedimento PROC-L1-02445 se aplicável.",
    gen_id = 2444,
}
_DR["G02445"] = {
    title = "Condição FUEL-2445: correlação 78.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002446", "SKU-GEN-008116" },
    notes = "Ver procedimento PROC-L1-02446 se aplicável.",
    gen_id = 2445,
}
_DR["G02446"] = {
    title = "Condição STEER-2446: correlação 18.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002447", "SKU-GEN-008123" },
    notes = "Ver procedimento PROC-L1-02447 se aplicável.",
    gen_id = 2446,
}
_DR["G02447"] = {
    title = "Condição HV-2447: correlação 98.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002448", "SKU-GEN-008130" },
    notes = "Ver procedimento PROC-L1-02448 se aplicável.",
    gen_id = 2447,
}
_DR["G02448"] = {
    title = "Condição BODY-2448: correlação 21.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002449", "SKU-GEN-008137" },
    notes = "Ver procedimento PROC-L1-02449 se aplicável.",
    gen_id = 2448,
}
_DR["G02449"] = {
    title = "Condição INFO-2449: correlação 43.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002450", "SKU-GEN-008144" },
    notes = "Ver procedimento PROC-L1-02450 se aplicável.",
    gen_id = 2449,
}
_DR["G02450"] = {
    title = "Condição ENGINE-2450: correlação 35.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002451", "SKU-GEN-008151" },
    notes = "Ver procedimento PROC-L1-02451 se aplicável.",
    gen_id = 2450,
}
_DR["G02451"] = {
    title = "Condição ABS-2451: correlação 98.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002452", "SKU-GEN-008158" },
    notes = "Ver procedimento PROC-L1-02452 se aplicável.",
    gen_id = 2451,
}
_DR["G02452"] = {
    title = "Condição SRS-2452: correlação 68.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002453", "SKU-GEN-008165" },
    notes = "Ver procedimento PROC-L1-02453 se aplicável.",
    gen_id = 2452,
}
_DR["G02453"] = {
    title = "Condição CLIMATE-2453: correlação 97.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002454", "SKU-GEN-008172" },
    notes = "Ver procedimento PROC-L1-02454 se aplicável.",
    gen_id = 2453,
}
_DR["G02454"] = {
    title = "Condição TRANS-2454: correlação 30.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002455", "SKU-GEN-008179" },
    notes = "Ver procedimento PROC-L1-02455 se aplicável.",
    gen_id = 2454,
}
_DR["G02455"] = {
    title = "Condição FUEL-2455: correlação 29.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002456", "SKU-GEN-008186" },
    notes = "Ver procedimento PROC-L1-02456 se aplicável.",
    gen_id = 2455,
}
_DR["G02456"] = {
    title = "Condição STEER-2456: correlação 76.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002457", "SKU-GEN-008193" },
    notes = "Ver procedimento PROC-L1-02457 se aplicável.",
    gen_id = 2456,
}
_DR["G02457"] = {
    title = "Condição HV-2457: correlação 16.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002458", "SKU-GEN-008200" },
    notes = "Ver procedimento PROC-L1-02458 se aplicável.",
    gen_id = 2457,
}
_DR["G02458"] = {
    title = "Condição BODY-2458: correlação 30.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002459", "SKU-GEN-008207" },
    notes = "Ver procedimento PROC-L1-02459 se aplicável.",
    gen_id = 2458,
}
_DR["G02459"] = {
    title = "Condição INFO-2459: correlação 12.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002460", "SKU-GEN-008214" },
    notes = "Ver procedimento PROC-L1-02460 se aplicável.",
    gen_id = 2459,
}
_DR["G02460"] = {
    title = "Condição ENGINE-2460: correlação 37.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002461", "SKU-GEN-008221" },
    notes = "Ver procedimento PROC-L1-02461 se aplicável.",
    gen_id = 2460,
}
_DR["G02461"] = {
    title = "Condição ABS-2461: correlação 25.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002462", "SKU-GEN-008228" },
    notes = "Ver procedimento PROC-L1-02462 se aplicável.",
    gen_id = 2461,
}
_DR["G02462"] = {
    title = "Condição SRS-2462: correlação 56.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002463", "SKU-GEN-008235" },
    notes = "Ver procedimento PROC-L1-02463 se aplicável.",
    gen_id = 2462,
}
_DR["G02463"] = {
    title = "Condição CLIMATE-2463: correlação 22.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002464", "SKU-GEN-008242" },
    notes = "Ver procedimento PROC-L1-02464 se aplicável.",
    gen_id = 2463,
}
_DR["G02464"] = {
    title = "Condição TRANS-2464: correlação 62.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002465", "SKU-GEN-008249" },
    notes = "Ver procedimento PROC-L1-02465 se aplicável.",
    gen_id = 2464,
}
_DR["G02465"] = {
    title = "Condição FUEL-2465: correlação 93.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002466", "SKU-GEN-008256" },
    notes = "Ver procedimento PROC-L1-02466 se aplicável.",
    gen_id = 2465,
}
_DR["G02466"] = {
    title = "Condição STEER-2466: correlação 8.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002467", "SKU-GEN-008263" },
    notes = "Ver procedimento PROC-L1-02467 se aplicável.",
    gen_id = 2466,
}
_DR["G02467"] = {
    title = "Condição HV-2467: correlação 17.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002468", "SKU-GEN-008270" },
    notes = "Ver procedimento PROC-L1-02468 se aplicável.",
    gen_id = 2467,
}
_DR["G02468"] = {
    title = "Condição BODY-2468: correlação 88.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002469", "SKU-GEN-008277" },
    notes = "Ver procedimento PROC-L1-02469 se aplicável.",
    gen_id = 2468,
}
_DR["G02469"] = {
    title = "Condição INFO-2469: correlação 67.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002470", "SKU-GEN-008284" },
    notes = "Ver procedimento PROC-L1-02470 se aplicável.",
    gen_id = 2469,
}
_DR["G02470"] = {
    title = "Condição ENGINE-2470: correlação 16.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002471", "SKU-GEN-008291" },
    notes = "Ver procedimento PROC-L1-02471 se aplicável.",
    gen_id = 2470,
}
_DR["G02471"] = {
    title = "Condição ABS-2471: correlação 3.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002472", "SKU-GEN-008298" },
    notes = "Ver procedimento PROC-L1-02472 se aplicável.",
    gen_id = 2471,
}
_DR["G02472"] = {
    title = "Condição SRS-2472: correlação 0.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002473", "SKU-GEN-008305" },
    notes = "Ver procedimento PROC-L1-02473 se aplicável.",
    gen_id = 2472,
}
_DR["G02473"] = {
    title = "Condição CLIMATE-2473: correlação 74.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002474", "SKU-GEN-008312" },
    notes = "Ver procedimento PROC-L1-02474 se aplicável.",
    gen_id = 2473,
}
_DR["G02474"] = {
    title = "Condição TRANS-2474: correlação 0.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002475", "SKU-GEN-008319" },
    notes = "Ver procedimento PROC-L1-02475 se aplicável.",
    gen_id = 2474,
}
_DR["G02475"] = {
    title = "Condição FUEL-2475: correlação 53.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002476", "SKU-GEN-008326" },
    notes = "Ver procedimento PROC-L1-02476 se aplicável.",
    gen_id = 2475,
}
_DR["G02476"] = {
    title = "Condição STEER-2476: correlação 4.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002477", "SKU-GEN-008333" },
    notes = "Ver procedimento PROC-L1-02477 se aplicável.",
    gen_id = 2476,
}
_DR["G02477"] = {
    title = "Condição HV-2477: correlação 34.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002478", "SKU-GEN-008340" },
    notes = "Ver procedimento PROC-L1-02478 se aplicável.",
    gen_id = 2477,
}
_DR["G02478"] = {
    title = "Condição BODY-2478: correlação 21.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002479", "SKU-GEN-008347" },
    notes = "Ver procedimento PROC-L1-02479 se aplicável.",
    gen_id = 2478,
}
_DR["G02479"] = {
    title = "Condição INFO-2479: correlação 63.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002480", "SKU-GEN-008354" },
    notes = "Ver procedimento PROC-L1-02480 se aplicável.",
    gen_id = 2479,
}
_DR["G02480"] = {
    title = "Condição ENGINE-2480: correlação 43.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002481", "SKU-GEN-008361" },
    notes = "Ver procedimento PROC-L1-02481 se aplicável.",
    gen_id = 2480,
}
_DR["G02481"] = {
    title = "Condição ABS-2481: correlação 81.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002482", "SKU-GEN-008368" },
    notes = "Ver procedimento PROC-L1-02482 se aplicável.",
    gen_id = 2481,
}
_DR["G02482"] = {
    title = "Condição SRS-2482: correlação 14.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002483", "SKU-GEN-008375" },
    notes = "Ver procedimento PROC-L1-02483 se aplicável.",
    gen_id = 2482,
}
_DR["G02483"] = {
    title = "Condição CLIMATE-2483: correlação 12.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002484", "SKU-GEN-008382" },
    notes = "Ver procedimento PROC-L1-02484 se aplicável.",
    gen_id = 2483,
}
_DR["G02484"] = {
    title = "Condição TRANS-2484: correlação 62.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002485", "SKU-GEN-008389" },
    notes = "Ver procedimento PROC-L1-02485 se aplicável.",
    gen_id = 2484,
}
_DR["G02485"] = {
    title = "Condição FUEL-2485: correlação 66.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002486", "SKU-GEN-008396" },
    notes = "Ver procedimento PROC-L1-02486 se aplicável.",
    gen_id = 2485,
}
_DR["G02486"] = {
    title = "Condição STEER-2486: correlação 12.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002487", "SKU-GEN-008403" },
    notes = "Ver procedimento PROC-L1-02487 se aplicável.",
    gen_id = 2486,
}
_DR["G02487"] = {
    title = "Condição HV-2487: correlação 76.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002488", "SKU-GEN-008410" },
    notes = "Ver procedimento PROC-L1-02488 se aplicável.",
    gen_id = 2487,
}
_DR["G02488"] = {
    title = "Condição BODY-2488: correlação 59.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002489", "SKU-GEN-008417" },
    notes = "Ver procedimento PROC-L1-02489 se aplicável.",
    gen_id = 2488,
}
_DR["G02489"] = {
    title = "Condição INFO-2489: correlação 92.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002490", "SKU-GEN-008424" },
    notes = "Ver procedimento PROC-L1-02490 se aplicável.",
    gen_id = 2489,
}
_DR["G02490"] = {
    title = "Condição ENGINE-2490: correlação 29.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002491", "SKU-GEN-008431" },
    notes = "Ver procedimento PROC-L1-02491 se aplicável.",
    gen_id = 2490,
}
_DR["G02491"] = {
    title = "Condição ABS-2491: correlação 82.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002492", "SKU-GEN-008438" },
    notes = "Ver procedimento PROC-L1-02492 se aplicável.",
    gen_id = 2491,
}
_DR["G02492"] = {
    title = "Condição SRS-2492: correlação 75.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002493", "SKU-GEN-008445" },
    notes = "Ver procedimento PROC-L1-02493 se aplicável.",
    gen_id = 2492,
}
_DR["G02493"] = {
    title = "Condição CLIMATE-2493: correlação 18.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002494", "SKU-GEN-008452" },
    notes = "Ver procedimento PROC-L1-02494 se aplicável.",
    gen_id = 2493,
}
_DR["G02494"] = {
    title = "Condição TRANS-2494: correlação 44.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002495", "SKU-GEN-008459" },
    notes = "Ver procedimento PROC-L1-02495 se aplicável.",
    gen_id = 2494,
}
_DR["G02495"] = {
    title = "Condição FUEL-2495: correlação 30.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002496", "SKU-GEN-008466" },
    notes = "Ver procedimento PROC-L1-02496 se aplicável.",
    gen_id = 2495,
}
_DR["G02496"] = {
    title = "Condição STEER-2496: correlação 4.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002497", "SKU-GEN-008473" },
    notes = "Ver procedimento PROC-L1-02497 se aplicável.",
    gen_id = 2496,
}
_DR["G02497"] = {
    title = "Condição HV-2497: correlação 20.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002498", "SKU-GEN-008480" },
    notes = "Ver procedimento PROC-L1-02498 se aplicável.",
    gen_id = 2497,
}
_DR["G02498"] = {
    title = "Condição BODY-2498: correlação 13.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002499", "SKU-GEN-008487" },
    notes = "Ver procedimento PROC-L1-02499 se aplicável.",
    gen_id = 2498,
}
_DR["G02499"] = {
    title = "Condição INFO-2499: correlação 7.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002500", "SKU-GEN-008494" },
    notes = "Ver procedimento PROC-L1-02500 se aplicável.",
    gen_id = 2499,
}
_DR["G02500"] = {
    title = "Condição ENGINE-2500: correlação 37.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002501", "SKU-GEN-008501" },
    notes = "Ver procedimento PROC-L1-02501 se aplicável.",
    gen_id = 2500,
}
_DR["G02501"] = {
    title = "Condição ABS-2501: correlação 96.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002502", "SKU-GEN-008508" },
    notes = "Ver procedimento PROC-L1-02502 se aplicável.",
    gen_id = 2501,
}
_DR["G02502"] = {
    title = "Condição SRS-2502: correlação 96.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002503", "SKU-GEN-008515" },
    notes = "Ver procedimento PROC-L1-02503 se aplicável.",
    gen_id = 2502,
}
_DR["G02503"] = {
    title = "Condição CLIMATE-2503: correlação 63.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002504", "SKU-GEN-008522" },
    notes = "Ver procedimento PROC-L1-02504 se aplicável.",
    gen_id = 2503,
}
_DR["G02504"] = {
    title = "Condição TRANS-2504: correlação 69.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002505", "SKU-GEN-008529" },
    notes = "Ver procedimento PROC-L1-02505 se aplicável.",
    gen_id = 2504,
}
_DR["G02505"] = {
    title = "Condição FUEL-2505: correlação 61.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002506", "SKU-GEN-008536" },
    notes = "Ver procedimento PROC-L1-02506 se aplicável.",
    gen_id = 2505,
}
_DR["G02506"] = {
    title = "Condição STEER-2506: correlação 75.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002507", "SKU-GEN-008543" },
    notes = "Ver procedimento PROC-L1-02507 se aplicável.",
    gen_id = 2506,
}
_DR["G02507"] = {
    title = "Condição HV-2507: correlação 48.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002508", "SKU-GEN-008550" },
    notes = "Ver procedimento PROC-L1-02508 se aplicável.",
    gen_id = 2507,
}
_DR["G02508"] = {
    title = "Condição BODY-2508: correlação 28.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002509", "SKU-GEN-008557" },
    notes = "Ver procedimento PROC-L1-02509 se aplicável.",
    gen_id = 2508,
}
_DR["G02509"] = {
    title = "Condição INFO-2509: correlação 58.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002510", "SKU-GEN-008564" },
    notes = "Ver procedimento PROC-L1-02510 se aplicável.",
    gen_id = 2509,
}
_DR["G02510"] = {
    title = "Condição ENGINE-2510: correlação 10.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002511", "SKU-GEN-008571" },
    notes = "Ver procedimento PROC-L1-02511 se aplicável.",
    gen_id = 2510,
}
_DR["G02511"] = {
    title = "Condição ABS-2511: correlação 1.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002512", "SKU-GEN-008578" },
    notes = "Ver procedimento PROC-L1-02512 se aplicável.",
    gen_id = 2511,
}
_DR["G02512"] = {
    title = "Condição SRS-2512: correlação 10.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002513", "SKU-GEN-008585" },
    notes = "Ver procedimento PROC-L1-02513 se aplicável.",
    gen_id = 2512,
}
_DR["G02513"] = {
    title = "Condição CLIMATE-2513: correlação 91.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002514", "SKU-GEN-008592" },
    notes = "Ver procedimento PROC-L1-02514 se aplicável.",
    gen_id = 2513,
}
_DR["G02514"] = {
    title = "Condição TRANS-2514: correlação 44.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002515", "SKU-GEN-008599" },
    notes = "Ver procedimento PROC-L1-02515 se aplicável.",
    gen_id = 2514,
}
_DR["G02515"] = {
    title = "Condição FUEL-2515: correlação 55.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002516", "SKU-GEN-008606" },
    notes = "Ver procedimento PROC-L1-02516 se aplicável.",
    gen_id = 2515,
}
_DR["G02516"] = {
    title = "Condição STEER-2516: correlação 19.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002517", "SKU-GEN-008613" },
    notes = "Ver procedimento PROC-L1-02517 se aplicável.",
    gen_id = 2516,
}
_DR["G02517"] = {
    title = "Condição HV-2517: correlação 58.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002518", "SKU-GEN-008620" },
    notes = "Ver procedimento PROC-L1-02518 se aplicável.",
    gen_id = 2517,
}
_DR["G02518"] = {
    title = "Condição BODY-2518: correlação 66.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002519", "SKU-GEN-008627" },
    notes = "Ver procedimento PROC-L1-02519 se aplicável.",
    gen_id = 2518,
}
_DR["G02519"] = {
    title = "Condição INFO-2519: correlação 5.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002520", "SKU-GEN-008634" },
    notes = "Ver procedimento PROC-L1-02520 se aplicável.",
    gen_id = 2519,
}
_DR["G02520"] = {
    title = "Condição ENGINE-2520: correlação 62.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002521", "SKU-GEN-008641" },
    notes = "Ver procedimento PROC-L1-02521 se aplicável.",
    gen_id = 2520,
}
_DR["G02521"] = {
    title = "Condição ABS-2521: correlação 21.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002522", "SKU-GEN-008648" },
    notes = "Ver procedimento PROC-L1-02522 se aplicável.",
    gen_id = 2521,
}
_DR["G02522"] = {
    title = "Condição SRS-2522: correlação 87.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002523", "SKU-GEN-008655" },
    notes = "Ver procedimento PROC-L1-02523 se aplicável.",
    gen_id = 2522,
}
_DR["G02523"] = {
    title = "Condição CLIMATE-2523: correlação 37.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002524", "SKU-GEN-008662" },
    notes = "Ver procedimento PROC-L1-02524 se aplicável.",
    gen_id = 2523,
}
_DR["G02524"] = {
    title = "Condição TRANS-2524: correlação 41.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002525", "SKU-GEN-008669" },
    notes = "Ver procedimento PROC-L1-02525 se aplicável.",
    gen_id = 2524,
}
_DR["G02525"] = {
    title = "Condição FUEL-2525: correlação 62.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002526", "SKU-GEN-008676" },
    notes = "Ver procedimento PROC-L1-02526 se aplicável.",
    gen_id = 2525,
}
_DR["G02526"] = {
    title = "Condição STEER-2526: correlação 88.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002527", "SKU-GEN-008683" },
    notes = "Ver procedimento PROC-L1-02527 se aplicável.",
    gen_id = 2526,
}
_DR["G02527"] = {
    title = "Condição HV-2527: correlação 26.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002528", "SKU-GEN-008690" },
    notes = "Ver procedimento PROC-L1-02528 se aplicável.",
    gen_id = 2527,
}
_DR["G02528"] = {
    title = "Condição BODY-2528: correlação 31.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002529", "SKU-GEN-008697" },
    notes = "Ver procedimento PROC-L1-02529 se aplicável.",
    gen_id = 2528,
}
_DR["G02529"] = {
    title = "Condição INFO-2529: correlação 6.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002530", "SKU-GEN-008704" },
    notes = "Ver procedimento PROC-L1-02530 se aplicável.",
    gen_id = 2529,
}
_DR["G02530"] = {
    title = "Condição ENGINE-2530: correlação 51.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002531", "SKU-GEN-008711" },
    notes = "Ver procedimento PROC-L1-02531 se aplicável.",
    gen_id = 2530,
}
_DR["G02531"] = {
    title = "Condição ABS-2531: correlação 48.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002532", "SKU-GEN-008718" },
    notes = "Ver procedimento PROC-L1-02532 se aplicável.",
    gen_id = 2531,
}
_DR["G02532"] = {
    title = "Condição SRS-2532: correlação 52.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002533", "SKU-GEN-008725" },
    notes = "Ver procedimento PROC-L1-02533 se aplicável.",
    gen_id = 2532,
}
_DR["G02533"] = {
    title = "Condição CLIMATE-2533: correlação 5.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002534", "SKU-GEN-008732" },
    notes = "Ver procedimento PROC-L1-02534 se aplicável.",
    gen_id = 2533,
}
_DR["G02534"] = {
    title = "Condição TRANS-2534: correlação 75.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002535", "SKU-GEN-008739" },
    notes = "Ver procedimento PROC-L1-02535 se aplicável.",
    gen_id = 2534,
}
_DR["G02535"] = {
    title = "Condição FUEL-2535: correlação 64.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002536", "SKU-GEN-008746" },
    notes = "Ver procedimento PROC-L1-02536 se aplicável.",
    gen_id = 2535,
}
_DR["G02536"] = {
    title = "Condição STEER-2536: correlação 68.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002537", "SKU-GEN-008753" },
    notes = "Ver procedimento PROC-L1-02537 se aplicável.",
    gen_id = 2536,
}
_DR["G02537"] = {
    title = "Condição HV-2537: correlação 16.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002538", "SKU-GEN-008760" },
    notes = "Ver procedimento PROC-L1-02538 se aplicável.",
    gen_id = 2537,
}
_DR["G02538"] = {
    title = "Condição BODY-2538: correlação 39.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002539", "SKU-GEN-008767" },
    notes = "Ver procedimento PROC-L1-02539 se aplicável.",
    gen_id = 2538,
}
_DR["G02539"] = {
    title = "Condição INFO-2539: correlação 73.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002540", "SKU-GEN-008774" },
    notes = "Ver procedimento PROC-L1-02540 se aplicável.",
    gen_id = 2539,
}
_DR["G02540"] = {
    title = "Condição ENGINE-2540: correlação 70.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002541", "SKU-GEN-008781" },
    notes = "Ver procedimento PROC-L1-02541 se aplicável.",
    gen_id = 2540,
}
_DR["G02541"] = {
    title = "Condição ABS-2541: correlação 19.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002542", "SKU-GEN-008788" },
    notes = "Ver procedimento PROC-L1-02542 se aplicável.",
    gen_id = 2541,
}
_DR["G02542"] = {
    title = "Condição SRS-2542: correlação 69.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002543", "SKU-GEN-008795" },
    notes = "Ver procedimento PROC-L1-02543 se aplicável.",
    gen_id = 2542,
}
_DR["G02543"] = {
    title = "Condição CLIMATE-2543: correlação 35.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002544", "SKU-GEN-008802" },
    notes = "Ver procedimento PROC-L1-02544 se aplicável.",
    gen_id = 2543,
}
_DR["G02544"] = {
    title = "Condição TRANS-2544: correlação 25.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002545", "SKU-GEN-008809" },
    notes = "Ver procedimento PROC-L1-02545 se aplicável.",
    gen_id = 2544,
}
_DR["G02545"] = {
    title = "Condição FUEL-2545: correlação 58.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002546", "SKU-GEN-008816" },
    notes = "Ver procedimento PROC-L1-02546 se aplicável.",
    gen_id = 2545,
}
_DR["G02546"] = {
    title = "Condição STEER-2546: correlação 17.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002547", "SKU-GEN-008823" },
    notes = "Ver procedimento PROC-L1-02547 se aplicável.",
    gen_id = 2546,
}
_DR["G02547"] = {
    title = "Condição HV-2547: correlação 21.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002548", "SKU-GEN-008830" },
    notes = "Ver procedimento PROC-L1-02548 se aplicável.",
    gen_id = 2547,
}
_DR["G02548"] = {
    title = "Condição BODY-2548: correlação 0.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002549", "SKU-GEN-008837" },
    notes = "Ver procedimento PROC-L1-02549 se aplicável.",
    gen_id = 2548,
}
_DR["G02549"] = {
    title = "Condição INFO-2549: correlação 3.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002550", "SKU-GEN-008844" },
    notes = "Ver procedimento PROC-L1-02550 se aplicável.",
    gen_id = 2549,
}
_DR["G02550"] = {
    title = "Condição ENGINE-2550: correlação 56.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002551", "SKU-GEN-008851" },
    notes = "Ver procedimento PROC-L1-02551 se aplicável.",
    gen_id = 2550,
}
_DR["G02551"] = {
    title = "Condição ABS-2551: correlação 39.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002552", "SKU-GEN-008858" },
    notes = "Ver procedimento PROC-L1-02552 se aplicável.",
    gen_id = 2551,
}
_DR["G02552"] = {
    title = "Condição SRS-2552: correlação 93.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002553", "SKU-GEN-008865" },
    notes = "Ver procedimento PROC-L1-02553 se aplicável.",
    gen_id = 2552,
}
_DR["G02553"] = {
    title = "Condição CLIMATE-2553: correlação 55.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002554", "SKU-GEN-008872" },
    notes = "Ver procedimento PROC-L1-02554 se aplicável.",
    gen_id = 2553,
}
_DR["G02554"] = {
    title = "Condição TRANS-2554: correlação 55.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002555", "SKU-GEN-008879" },
    notes = "Ver procedimento PROC-L1-02555 se aplicável.",
    gen_id = 2554,
}
_DR["G02555"] = {
    title = "Condição FUEL-2555: correlação 28.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002556", "SKU-GEN-008886" },
    notes = "Ver procedimento PROC-L1-02556 se aplicável.",
    gen_id = 2555,
}
_DR["G02556"] = {
    title = "Condição STEER-2556: correlação 32.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002557", "SKU-GEN-008893" },
    notes = "Ver procedimento PROC-L1-02557 se aplicável.",
    gen_id = 2556,
}
_DR["G02557"] = {
    title = "Condição HV-2557: correlação 59.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002558", "SKU-GEN-008900" },
    notes = "Ver procedimento PROC-L1-02558 se aplicável.",
    gen_id = 2557,
}
_DR["G02558"] = {
    title = "Condição BODY-2558: correlação 91.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002559", "SKU-GEN-008907" },
    notes = "Ver procedimento PROC-L1-02559 se aplicável.",
    gen_id = 2558,
}
_DR["G02559"] = {
    title = "Condição INFO-2559: correlação 44.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002560", "SKU-GEN-008914" },
    notes = "Ver procedimento PROC-L1-02560 se aplicável.",
    gen_id = 2559,
}
_DR["G02560"] = {
    title = "Condição ENGINE-2560: correlação 19.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002561", "SKU-GEN-008921" },
    notes = "Ver procedimento PROC-L1-02561 se aplicável.",
    gen_id = 2560,
}
_DR["G02561"] = {
    title = "Condição ABS-2561: correlação 83.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002562", "SKU-GEN-008928" },
    notes = "Ver procedimento PROC-L1-02562 se aplicável.",
    gen_id = 2561,
}
_DR["G02562"] = {
    title = "Condição SRS-2562: correlação 94.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002563", "SKU-GEN-008935" },
    notes = "Ver procedimento PROC-L1-02563 se aplicável.",
    gen_id = 2562,
}
_DR["G02563"] = {
    title = "Condição CLIMATE-2563: correlação 61.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002564", "SKU-GEN-008942" },
    notes = "Ver procedimento PROC-L1-02564 se aplicável.",
    gen_id = 2563,
}
_DR["G02564"] = {
    title = "Condição TRANS-2564: correlação 29.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002565", "SKU-GEN-008949" },
    notes = "Ver procedimento PROC-L1-02565 se aplicável.",
    gen_id = 2564,
}
_DR["G02565"] = {
    title = "Condição FUEL-2565: correlação 81.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002566", "SKU-GEN-008956" },
    notes = "Ver procedimento PROC-L1-02566 se aplicável.",
    gen_id = 2565,
}
_DR["G02566"] = {
    title = "Condição STEER-2566: correlação 59.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002567", "SKU-GEN-008963" },
    notes = "Ver procedimento PROC-L1-02567 se aplicável.",
    gen_id = 2566,
}
_DR["G02567"] = {
    title = "Condição HV-2567: correlação 66.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002568", "SKU-GEN-008970" },
    notes = "Ver procedimento PROC-L1-02568 se aplicável.",
    gen_id = 2567,
}
_DR["G02568"] = {
    title = "Condição BODY-2568: correlação 4.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002569", "SKU-GEN-008977" },
    notes = "Ver procedimento PROC-L1-02569 se aplicável.",
    gen_id = 2568,
}
_DR["G02569"] = {
    title = "Condição INFO-2569: correlação 62.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002570", "SKU-GEN-008984" },
    notes = "Ver procedimento PROC-L1-02570 se aplicável.",
    gen_id = 2569,
}
_DR["G02570"] = {
    title = "Condição ENGINE-2570: correlação 47.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002571", "SKU-GEN-008991" },
    notes = "Ver procedimento PROC-L1-02571 se aplicável.",
    gen_id = 2570,
}
_DR["G02571"] = {
    title = "Condição ABS-2571: correlação 29.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002572", "SKU-GEN-008998" },
    notes = "Ver procedimento PROC-L1-02572 se aplicável.",
    gen_id = 2571,
}
_DR["G02572"] = {
    title = "Condição SRS-2572: correlação 87.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002573", "SKU-GEN-000005" },
    notes = "Ver procedimento PROC-L1-02573 se aplicável.",
    gen_id = 2572,
}
_DR["G02573"] = {
    title = "Condição CLIMATE-2573: correlação 3.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002574", "SKU-GEN-000012" },
    notes = "Ver procedimento PROC-L1-02574 se aplicável.",
    gen_id = 2573,
}
_DR["G02574"] = {
    title = "Condição TRANS-2574: correlação 70.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002575", "SKU-GEN-000019" },
    notes = "Ver procedimento PROC-L1-02575 se aplicável.",
    gen_id = 2574,
}
_DR["G02575"] = {
    title = "Condição FUEL-2575: correlação 62.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002576", "SKU-GEN-000026" },
    notes = "Ver procedimento PROC-L1-02576 se aplicável.",
    gen_id = 2575,
}
_DR["G02576"] = {
    title = "Condição STEER-2576: correlação 87.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002577", "SKU-GEN-000033" },
    notes = "Ver procedimento PROC-L1-02577 se aplicável.",
    gen_id = 2576,
}
_DR["G02577"] = {
    title = "Condição HV-2577: correlação 9.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002578", "SKU-GEN-000040" },
    notes = "Ver procedimento PROC-L1-02578 se aplicável.",
    gen_id = 2577,
}
_DR["G02578"] = {
    title = "Condição BODY-2578: correlação 34.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002579", "SKU-GEN-000047" },
    notes = "Ver procedimento PROC-L1-02579 se aplicável.",
    gen_id = 2578,
}
_DR["G02579"] = {
    title = "Condição INFO-2579: correlação 8.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002580", "SKU-GEN-000054" },
    notes = "Ver procedimento PROC-L1-02580 se aplicável.",
    gen_id = 2579,
}
_DR["G02580"] = {
    title = "Condição ENGINE-2580: correlação 86.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002581", "SKU-GEN-000061" },
    notes = "Ver procedimento PROC-L1-02581 se aplicável.",
    gen_id = 2580,
}
_DR["G02581"] = {
    title = "Condição ABS-2581: correlação 95.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002582", "SKU-GEN-000068" },
    notes = "Ver procedimento PROC-L1-02582 se aplicável.",
    gen_id = 2581,
}
_DR["G02582"] = {
    title = "Condição SRS-2582: correlação 78.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002583", "SKU-GEN-000075" },
    notes = "Ver procedimento PROC-L1-02583 se aplicável.",
    gen_id = 2582,
}
_DR["G02583"] = {
    title = "Condição CLIMATE-2583: correlação 27.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002584", "SKU-GEN-000082" },
    notes = "Ver procedimento PROC-L1-02584 se aplicável.",
    gen_id = 2583,
}
_DR["G02584"] = {
    title = "Condição TRANS-2584: correlação 6.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002585", "SKU-GEN-000089" },
    notes = "Ver procedimento PROC-L1-02585 se aplicável.",
    gen_id = 2584,
}
_DR["G02585"] = {
    title = "Condição FUEL-2585: correlação 37.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002586", "SKU-GEN-000096" },
    notes = "Ver procedimento PROC-L1-02586 se aplicável.",
    gen_id = 2585,
}
_DR["G02586"] = {
    title = "Condição STEER-2586: correlação 42.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002587", "SKU-GEN-000103" },
    notes = "Ver procedimento PROC-L1-02587 se aplicável.",
    gen_id = 2586,
}
_DR["G02587"] = {
    title = "Condição HV-2587: correlação 60.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002588", "SKU-GEN-000110" },
    notes = "Ver procedimento PROC-L1-02588 se aplicável.",
    gen_id = 2587,
}
_DR["G02588"] = {
    title = "Condição BODY-2588: correlação 16.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002589", "SKU-GEN-000117" },
    notes = "Ver procedimento PROC-L1-02589 se aplicável.",
    gen_id = 2588,
}
_DR["G02589"] = {
    title = "Condição INFO-2589: correlação 26.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002590", "SKU-GEN-000124" },
    notes = "Ver procedimento PROC-L1-02590 se aplicável.",
    gen_id = 2589,
}
_DR["G02590"] = {
    title = "Condição ENGINE-2590: correlação 37.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002591", "SKU-GEN-000131" },
    notes = "Ver procedimento PROC-L1-02591 se aplicável.",
    gen_id = 2590,
}
_DR["G02591"] = {
    title = "Condição ABS-2591: correlação 96.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002592", "SKU-GEN-000138" },
    notes = "Ver procedimento PROC-L1-02592 se aplicável.",
    gen_id = 2591,
}
_DR["G02592"] = {
    title = "Condição SRS-2592: correlação 38.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002593", "SKU-GEN-000145" },
    notes = "Ver procedimento PROC-L1-02593 se aplicável.",
    gen_id = 2592,
}
_DR["G02593"] = {
    title = "Condição CLIMATE-2593: correlação 20.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002594", "SKU-GEN-000152" },
    notes = "Ver procedimento PROC-L1-02594 se aplicável.",
    gen_id = 2593,
}
_DR["G02594"] = {
    title = "Condição TRANS-2594: correlação 21.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002595", "SKU-GEN-000159" },
    notes = "Ver procedimento PROC-L1-02595 se aplicável.",
    gen_id = 2594,
}
_DR["G02595"] = {
    title = "Condição FUEL-2595: correlação 68.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002596", "SKU-GEN-000166" },
    notes = "Ver procedimento PROC-L1-02596 se aplicável.",
    gen_id = 2595,
}
_DR["G02596"] = {
    title = "Condição STEER-2596: correlação 84.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002597", "SKU-GEN-000173" },
    notes = "Ver procedimento PROC-L1-02597 se aplicável.",
    gen_id = 2596,
}
_DR["G02597"] = {
    title = "Condição HV-2597: correlação 76.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002598", "SKU-GEN-000180" },
    notes = "Ver procedimento PROC-L1-02598 se aplicável.",
    gen_id = 2597,
}
_DR["G02598"] = {
    title = "Condição BODY-2598: correlação 86.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002599", "SKU-GEN-000187" },
    notes = "Ver procedimento PROC-L1-02599 se aplicável.",
    gen_id = 2598,
}
_DR["G02599"] = {
    title = "Condição INFO-2599: correlação 56.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002600", "SKU-GEN-000194" },
    notes = "Ver procedimento PROC-L1-02600 se aplicável.",
    gen_id = 2599,
}
_DR["G02600"] = {
    title = "Condição ENGINE-2600: correlação 28.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002601", "SKU-GEN-000201" },
    notes = "Ver procedimento PROC-L1-02601 se aplicável.",
    gen_id = 2600,
}
_DR["G02601"] = {
    title = "Condição ABS-2601: correlação 9.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002602", "SKU-GEN-000208" },
    notes = "Ver procedimento PROC-L1-02602 se aplicável.",
    gen_id = 2601,
}
_DR["G02602"] = {
    title = "Condição SRS-2602: correlação 13.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002603", "SKU-GEN-000215" },
    notes = "Ver procedimento PROC-L1-02603 se aplicável.",
    gen_id = 2602,
}
_DR["G02603"] = {
    title = "Condição CLIMATE-2603: correlação 72.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002604", "SKU-GEN-000222" },
    notes = "Ver procedimento PROC-L1-02604 se aplicável.",
    gen_id = 2603,
}
_DR["G02604"] = {
    title = "Condição TRANS-2604: correlação 6.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002605", "SKU-GEN-000229" },
    notes = "Ver procedimento PROC-L1-02605 se aplicável.",
    gen_id = 2604,
}
_DR["G02605"] = {
    title = "Condição FUEL-2605: correlação 8.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002606", "SKU-GEN-000236" },
    notes = "Ver procedimento PROC-L1-02606 se aplicável.",
    gen_id = 2605,
}
_DR["G02606"] = {
    title = "Condição STEER-2606: correlação 64.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002607", "SKU-GEN-000243" },
    notes = "Ver procedimento PROC-L1-02607 se aplicável.",
    gen_id = 2606,
}
_DR["G02607"] = {
    title = "Condição HV-2607: correlação 58.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002608", "SKU-GEN-000250" },
    notes = "Ver procedimento PROC-L1-02608 se aplicável.",
    gen_id = 2607,
}
_DR["G02608"] = {
    title = "Condição BODY-2608: correlação 91.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002609", "SKU-GEN-000257" },
    notes = "Ver procedimento PROC-L1-02609 se aplicável.",
    gen_id = 2608,
}
_DR["G02609"] = {
    title = "Condição INFO-2609: correlação 7.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002610", "SKU-GEN-000264" },
    notes = "Ver procedimento PROC-L1-02610 se aplicável.",
    gen_id = 2609,
}
_DR["G02610"] = {
    title = "Condição ENGINE-2610: correlação 3.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002611", "SKU-GEN-000271" },
    notes = "Ver procedimento PROC-L1-02611 se aplicável.",
    gen_id = 2610,
}
_DR["G02611"] = {
    title = "Condição ABS-2611: correlação 15.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002612", "SKU-GEN-000278" },
    notes = "Ver procedimento PROC-L1-02612 se aplicável.",
    gen_id = 2611,
}
_DR["G02612"] = {
    title = "Condição SRS-2612: correlação 78.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002613", "SKU-GEN-000285" },
    notes = "Ver procedimento PROC-L1-02613 se aplicável.",
    gen_id = 2612,
}
_DR["G02613"] = {
    title = "Condição CLIMATE-2613: correlação 93.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002614", "SKU-GEN-000292" },
    notes = "Ver procedimento PROC-L1-02614 se aplicável.",
    gen_id = 2613,
}
_DR["G02614"] = {
    title = "Condição TRANS-2614: correlação 62.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002615", "SKU-GEN-000299" },
    notes = "Ver procedimento PROC-L1-02615 se aplicável.",
    gen_id = 2614,
}
_DR["G02615"] = {
    title = "Condição FUEL-2615: correlação 44.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002616", "SKU-GEN-000306" },
    notes = "Ver procedimento PROC-L1-02616 se aplicável.",
    gen_id = 2615,
}
_DR["G02616"] = {
    title = "Condição STEER-2616: correlação 0.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002617", "SKU-GEN-000313" },
    notes = "Ver procedimento PROC-L1-02617 se aplicável.",
    gen_id = 2616,
}
_DR["G02617"] = {
    title = "Condição HV-2617: correlação 96.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002618", "SKU-GEN-000320" },
    notes = "Ver procedimento PROC-L1-02618 se aplicável.",
    gen_id = 2617,
}
_DR["G02618"] = {
    title = "Condição BODY-2618: correlação 13.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002619", "SKU-GEN-000327" },
    notes = "Ver procedimento PROC-L1-02619 se aplicável.",
    gen_id = 2618,
}
_DR["G02619"] = {
    title = "Condição INFO-2619: correlação 88.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002620", "SKU-GEN-000334" },
    notes = "Ver procedimento PROC-L1-02620 se aplicável.",
    gen_id = 2619,
}
_DR["G02620"] = {
    title = "Condição ENGINE-2620: correlação 29.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002621", "SKU-GEN-000341" },
    notes = "Ver procedimento PROC-L1-02621 se aplicável.",
    gen_id = 2620,
}
_DR["G02621"] = {
    title = "Condição ABS-2621: correlação 94.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002622", "SKU-GEN-000348" },
    notes = "Ver procedimento PROC-L1-02622 se aplicável.",
    gen_id = 2621,
}
_DR["G02622"] = {
    title = "Condição SRS-2622: correlação 97.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002623", "SKU-GEN-000355" },
    notes = "Ver procedimento PROC-L1-02623 se aplicável.",
    gen_id = 2622,
}
_DR["G02623"] = {
    title = "Condição CLIMATE-2623: correlação 71.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002624", "SKU-GEN-000362" },
    notes = "Ver procedimento PROC-L1-02624 se aplicável.",
    gen_id = 2623,
}
_DR["G02624"] = {
    title = "Condição TRANS-2624: correlação 57.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002625", "SKU-GEN-000369" },
    notes = "Ver procedimento PROC-L1-02625 se aplicável.",
    gen_id = 2624,
}
_DR["G02625"] = {
    title = "Condição FUEL-2625: correlação 26.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002626", "SKU-GEN-000376" },
    notes = "Ver procedimento PROC-L1-02626 se aplicável.",
    gen_id = 2625,
}
_DR["G02626"] = {
    title = "Condição STEER-2626: correlação 19.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002627", "SKU-GEN-000383" },
    notes = "Ver procedimento PROC-L1-02627 se aplicável.",
    gen_id = 2626,
}
_DR["G02627"] = {
    title = "Condição HV-2627: correlação 95.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002628", "SKU-GEN-000390" },
    notes = "Ver procedimento PROC-L1-02628 se aplicável.",
    gen_id = 2627,
}
_DR["G02628"] = {
    title = "Condição BODY-2628: correlação 53.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002629", "SKU-GEN-000397" },
    notes = "Ver procedimento PROC-L1-02629 se aplicável.",
    gen_id = 2628,
}
_DR["G02629"] = {
    title = "Condição INFO-2629: correlação 5.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002630", "SKU-GEN-000404" },
    notes = "Ver procedimento PROC-L1-02630 se aplicável.",
    gen_id = 2629,
}
_DR["G02630"] = {
    title = "Condição ENGINE-2630: correlação 26.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002631", "SKU-GEN-000411" },
    notes = "Ver procedimento PROC-L1-02631 se aplicável.",
    gen_id = 2630,
}
_DR["G02631"] = {
    title = "Condição ABS-2631: correlação 48.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002632", "SKU-GEN-000418" },
    notes = "Ver procedimento PROC-L1-02632 se aplicável.",
    gen_id = 2631,
}
_DR["G02632"] = {
    title = "Condição SRS-2632: correlação 37.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002633", "SKU-GEN-000425" },
    notes = "Ver procedimento PROC-L1-02633 se aplicável.",
    gen_id = 2632,
}
_DR["G02633"] = {
    title = "Condição CLIMATE-2633: correlação 57.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002634", "SKU-GEN-000432" },
    notes = "Ver procedimento PROC-L1-02634 se aplicável.",
    gen_id = 2633,
}
_DR["G02634"] = {
    title = "Condição TRANS-2634: correlação 5.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002635", "SKU-GEN-000439" },
    notes = "Ver procedimento PROC-L1-02635 se aplicável.",
    gen_id = 2634,
}
_DR["G02635"] = {
    title = "Condição FUEL-2635: correlação 9.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002636", "SKU-GEN-000446" },
    notes = "Ver procedimento PROC-L1-02636 se aplicável.",
    gen_id = 2635,
}
_DR["G02636"] = {
    title = "Condição STEER-2636: correlação 25.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002637", "SKU-GEN-000453" },
    notes = "Ver procedimento PROC-L1-02637 se aplicável.",
    gen_id = 2636,
}
_DR["G02637"] = {
    title = "Condição HV-2637: correlação 47.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002638", "SKU-GEN-000460" },
    notes = "Ver procedimento PROC-L1-02638 se aplicável.",
    gen_id = 2637,
}
_DR["G02638"] = {
    title = "Condição BODY-2638: correlação 87.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002639", "SKU-GEN-000467" },
    notes = "Ver procedimento PROC-L1-02639 se aplicável.",
    gen_id = 2638,
}
_DR["G02639"] = {
    title = "Condição INFO-2639: correlação 75.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002640", "SKU-GEN-000474" },
    notes = "Ver procedimento PROC-L1-02640 se aplicável.",
    gen_id = 2639,
}
_DR["G02640"] = {
    title = "Condição ENGINE-2640: correlação 24.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002641", "SKU-GEN-000481" },
    notes = "Ver procedimento PROC-L1-02641 se aplicável.",
    gen_id = 2640,
}
_DR["G02641"] = {
    title = "Condição ABS-2641: correlação 56.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002642", "SKU-GEN-000488" },
    notes = "Ver procedimento PROC-L1-02642 se aplicável.",
    gen_id = 2641,
}
_DR["G02642"] = {
    title = "Condição SRS-2642: correlação 39.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002643", "SKU-GEN-000495" },
    notes = "Ver procedimento PROC-L1-02643 se aplicável.",
    gen_id = 2642,
}
_DR["G02643"] = {
    title = "Condição CLIMATE-2643: correlação 41.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002644", "SKU-GEN-000502" },
    notes = "Ver procedimento PROC-L1-02644 se aplicável.",
    gen_id = 2643,
}
_DR["G02644"] = {
    title = "Condição TRANS-2644: correlação 98.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002645", "SKU-GEN-000509" },
    notes = "Ver procedimento PROC-L1-02645 se aplicável.",
    gen_id = 2644,
}
_DR["G02645"] = {
    title = "Condição FUEL-2645: correlação 19.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002646", "SKU-GEN-000516" },
    notes = "Ver procedimento PROC-L1-02646 se aplicável.",
    gen_id = 2645,
}
_DR["G02646"] = {
    title = "Condição STEER-2646: correlação 69.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002647", "SKU-GEN-000523" },
    notes = "Ver procedimento PROC-L1-02647 se aplicável.",
    gen_id = 2646,
}
_DR["G02647"] = {
    title = "Condição HV-2647: correlação 93.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002648", "SKU-GEN-000530" },
    notes = "Ver procedimento PROC-L1-02648 se aplicável.",
    gen_id = 2647,
}
_DR["G02648"] = {
    title = "Condição BODY-2648: correlação 19.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002649", "SKU-GEN-000537" },
    notes = "Ver procedimento PROC-L1-02649 se aplicável.",
    gen_id = 2648,
}
_DR["G02649"] = {
    title = "Condição INFO-2649: correlação 52.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002650", "SKU-GEN-000544" },
    notes = "Ver procedimento PROC-L1-02650 se aplicável.",
    gen_id = 2649,
}
_DR["G02650"] = {
    title = "Condição ENGINE-2650: correlação 92.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002651", "SKU-GEN-000551" },
    notes = "Ver procedimento PROC-L1-02651 se aplicável.",
    gen_id = 2650,
}
_DR["G02651"] = {
    title = "Condição ABS-2651: correlação 19.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002652", "SKU-GEN-000558" },
    notes = "Ver procedimento PROC-L1-02652 se aplicável.",
    gen_id = 2651,
}
_DR["G02652"] = {
    title = "Condição SRS-2652: correlação 80.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002653", "SKU-GEN-000565" },
    notes = "Ver procedimento PROC-L1-02653 se aplicável.",
    gen_id = 2652,
}
_DR["G02653"] = {
    title = "Condição CLIMATE-2653: correlação 8.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002654", "SKU-GEN-000572" },
    notes = "Ver procedimento PROC-L1-02654 se aplicável.",
    gen_id = 2653,
}
_DR["G02654"] = {
    title = "Condição TRANS-2654: correlação 21.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002655", "SKU-GEN-000579" },
    notes = "Ver procedimento PROC-L1-02655 se aplicável.",
    gen_id = 2654,
}
_DR["G02655"] = {
    title = "Condição FUEL-2655: correlação 34.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002656", "SKU-GEN-000586" },
    notes = "Ver procedimento PROC-L1-02656 se aplicável.",
    gen_id = 2655,
}
_DR["G02656"] = {
    title = "Condição STEER-2656: correlação 35.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002657", "SKU-GEN-000593" },
    notes = "Ver procedimento PROC-L1-02657 se aplicável.",
    gen_id = 2656,
}
_DR["G02657"] = {
    title = "Condição HV-2657: correlação 51.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002658", "SKU-GEN-000600" },
    notes = "Ver procedimento PROC-L1-02658 se aplicável.",
    gen_id = 2657,
}
_DR["G02658"] = {
    title = "Condição BODY-2658: correlação 83.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002659", "SKU-GEN-000607" },
    notes = "Ver procedimento PROC-L1-02659 se aplicável.",
    gen_id = 2658,
}
_DR["G02659"] = {
    title = "Condição INFO-2659: correlação 68.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002660", "SKU-GEN-000614" },
    notes = "Ver procedimento PROC-L1-02660 se aplicável.",
    gen_id = 2659,
}
_DR["G02660"] = {
    title = "Condição ENGINE-2660: correlação 92.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002661", "SKU-GEN-000621" },
    notes = "Ver procedimento PROC-L1-02661 se aplicável.",
    gen_id = 2660,
}
_DR["G02661"] = {
    title = "Condição ABS-2661: correlação 48.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002662", "SKU-GEN-000628" },
    notes = "Ver procedimento PROC-L1-02662 se aplicável.",
    gen_id = 2661,
}
_DR["G02662"] = {
    title = "Condição SRS-2662: correlação 83.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002663", "SKU-GEN-000635" },
    notes = "Ver procedimento PROC-L1-02663 se aplicável.",
    gen_id = 2662,
}
_DR["G02663"] = {
    title = "Condição CLIMATE-2663: correlação 82.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002664", "SKU-GEN-000642" },
    notes = "Ver procedimento PROC-L1-02664 se aplicável.",
    gen_id = 2663,
}
_DR["G02664"] = {
    title = "Condição TRANS-2664: correlação 73.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002665", "SKU-GEN-000649" },
    notes = "Ver procedimento PROC-L1-02665 se aplicável.",
    gen_id = 2664,
}
_DR["G02665"] = {
    title = "Condição FUEL-2665: correlação 96.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002666", "SKU-GEN-000656" },
    notes = "Ver procedimento PROC-L1-02666 se aplicável.",
    gen_id = 2665,
}
_DR["G02666"] = {
    title = "Condição STEER-2666: correlação 52.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002667", "SKU-GEN-000663" },
    notes = "Ver procedimento PROC-L1-02667 se aplicável.",
    gen_id = 2666,
}
_DR["G02667"] = {
    title = "Condição HV-2667: correlação 95.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002668", "SKU-GEN-000670" },
    notes = "Ver procedimento PROC-L1-02668 se aplicável.",
    gen_id = 2667,
}
_DR["G02668"] = {
    title = "Condição BODY-2668: correlação 11.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002669", "SKU-GEN-000677" },
    notes = "Ver procedimento PROC-L1-02669 se aplicável.",
    gen_id = 2668,
}
_DR["G02669"] = {
    title = "Condição INFO-2669: correlação 47.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002670", "SKU-GEN-000684" },
    notes = "Ver procedimento PROC-L1-02670 se aplicável.",
    gen_id = 2669,
}
_DR["G02670"] = {
    title = "Condição ENGINE-2670: correlação 56.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002671", "SKU-GEN-000691" },
    notes = "Ver procedimento PROC-L1-02671 se aplicável.",
    gen_id = 2670,
}
_DR["G02671"] = {
    title = "Condição ABS-2671: correlação 40.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002672", "SKU-GEN-000698" },
    notes = "Ver procedimento PROC-L1-02672 se aplicável.",
    gen_id = 2671,
}
_DR["G02672"] = {
    title = "Condição SRS-2672: correlação 72.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002673", "SKU-GEN-000705" },
    notes = "Ver procedimento PROC-L1-02673 se aplicável.",
    gen_id = 2672,
}
_DR["G02673"] = {
    title = "Condição CLIMATE-2673: correlação 99.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002674", "SKU-GEN-000712" },
    notes = "Ver procedimento PROC-L1-02674 se aplicável.",
    gen_id = 2673,
}
_DR["G02674"] = {
    title = "Condição TRANS-2674: correlação 66.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002675", "SKU-GEN-000719" },
    notes = "Ver procedimento PROC-L1-02675 se aplicável.",
    gen_id = 2674,
}
_DR["G02675"] = {
    title = "Condição FUEL-2675: correlação 88.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002676", "SKU-GEN-000726" },
    notes = "Ver procedimento PROC-L1-02676 se aplicável.",
    gen_id = 2675,
}
_DR["G02676"] = {
    title = "Condição STEER-2676: correlação 86.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002677", "SKU-GEN-000733" },
    notes = "Ver procedimento PROC-L1-02677 se aplicável.",
    gen_id = 2676,
}
_DR["G02677"] = {
    title = "Condição HV-2677: correlação 61.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002678", "SKU-GEN-000740" },
    notes = "Ver procedimento PROC-L1-02678 se aplicável.",
    gen_id = 2677,
}
_DR["G02678"] = {
    title = "Condição BODY-2678: correlação 95.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002679", "SKU-GEN-000747" },
    notes = "Ver procedimento PROC-L1-02679 se aplicável.",
    gen_id = 2678,
}
_DR["G02679"] = {
    title = "Condição INFO-2679: correlação 1.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002680", "SKU-GEN-000754" },
    notes = "Ver procedimento PROC-L1-02680 se aplicável.",
    gen_id = 2679,
}
_DR["G02680"] = {
    title = "Condição ENGINE-2680: correlação 53.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002681", "SKU-GEN-000761" },
    notes = "Ver procedimento PROC-L1-02681 se aplicável.",
    gen_id = 2680,
}
_DR["G02681"] = {
    title = "Condição ABS-2681: correlação 15.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002682", "SKU-GEN-000768" },
    notes = "Ver procedimento PROC-L1-02682 se aplicável.",
    gen_id = 2681,
}
_DR["G02682"] = {
    title = "Condição SRS-2682: correlação 62.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002683", "SKU-GEN-000775" },
    notes = "Ver procedimento PROC-L1-02683 se aplicável.",
    gen_id = 2682,
}
_DR["G02683"] = {
    title = "Condição CLIMATE-2683: correlação 11.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002684", "SKU-GEN-000782" },
    notes = "Ver procedimento PROC-L1-02684 se aplicável.",
    gen_id = 2683,
}
_DR["G02684"] = {
    title = "Condição TRANS-2684: correlação 46.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002685", "SKU-GEN-000789" },
    notes = "Ver procedimento PROC-L1-02685 se aplicável.",
    gen_id = 2684,
}
_DR["G02685"] = {
    title = "Condição FUEL-2685: correlação 26.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002686", "SKU-GEN-000796" },
    notes = "Ver procedimento PROC-L1-02686 se aplicável.",
    gen_id = 2685,
}
_DR["G02686"] = {
    title = "Condição STEER-2686: correlação 45.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002687", "SKU-GEN-000803" },
    notes = "Ver procedimento PROC-L1-02687 se aplicável.",
    gen_id = 2686,
}
_DR["G02687"] = {
    title = "Condição HV-2687: correlação 25.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002688", "SKU-GEN-000810" },
    notes = "Ver procedimento PROC-L1-02688 se aplicável.",
    gen_id = 2687,
}
_DR["G02688"] = {
    title = "Condição BODY-2688: correlação 32.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002689", "SKU-GEN-000817" },
    notes = "Ver procedimento PROC-L1-02689 se aplicável.",
    gen_id = 2688,
}
_DR["G02689"] = {
    title = "Condição INFO-2689: correlação 80.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002690", "SKU-GEN-000824" },
    notes = "Ver procedimento PROC-L1-02690 se aplicável.",
    gen_id = 2689,
}
_DR["G02690"] = {
    title = "Condição ENGINE-2690: correlação 16.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002691", "SKU-GEN-000831" },
    notes = "Ver procedimento PROC-L1-02691 se aplicável.",
    gen_id = 2690,
}
_DR["G02691"] = {
    title = "Condição ABS-2691: correlação 13.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002692", "SKU-GEN-000838" },
    notes = "Ver procedimento PROC-L1-02692 se aplicável.",
    gen_id = 2691,
}
_DR["G02692"] = {
    title = "Condição SRS-2692: correlação 80.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002693", "SKU-GEN-000845" },
    notes = "Ver procedimento PROC-L1-02693 se aplicável.",
    gen_id = 2692,
}
_DR["G02693"] = {
    title = "Condição CLIMATE-2693: correlação 48.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002694", "SKU-GEN-000852" },
    notes = "Ver procedimento PROC-L1-02694 se aplicável.",
    gen_id = 2693,
}
_DR["G02694"] = {
    title = "Condição TRANS-2694: correlação 94.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002695", "SKU-GEN-000859" },
    notes = "Ver procedimento PROC-L1-02695 se aplicável.",
    gen_id = 2694,
}
_DR["G02695"] = {
    title = "Condição FUEL-2695: correlação 25.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002696", "SKU-GEN-000866" },
    notes = "Ver procedimento PROC-L1-02696 se aplicável.",
    gen_id = 2695,
}
_DR["G02696"] = {
    title = "Condição STEER-2696: correlação 22.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002697", "SKU-GEN-000873" },
    notes = "Ver procedimento PROC-L1-02697 se aplicável.",
    gen_id = 2696,
}
_DR["G02697"] = {
    title = "Condição HV-2697: correlação 4.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002698", "SKU-GEN-000880" },
    notes = "Ver procedimento PROC-L1-02698 se aplicável.",
    gen_id = 2697,
}
_DR["G02698"] = {
    title = "Condição BODY-2698: correlação 39.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002699", "SKU-GEN-000887" },
    notes = "Ver procedimento PROC-L1-02699 se aplicável.",
    gen_id = 2698,
}
_DR["G02699"] = {
    title = "Condição INFO-2699: correlação 42.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002700", "SKU-GEN-000894" },
    notes = "Ver procedimento PROC-L1-02700 se aplicável.",
    gen_id = 2699,
}
_DR["G02700"] = {
    title = "Condição ENGINE-2700: correlação 4.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002701", "SKU-GEN-000901" },
    notes = "Ver procedimento PROC-L1-02701 se aplicável.",
    gen_id = 2700,
}
_DR["G02701"] = {
    title = "Condição ABS-2701: correlação 49.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002702", "SKU-GEN-000908" },
    notes = "Ver procedimento PROC-L1-02702 se aplicável.",
    gen_id = 2701,
}
_DR["G02702"] = {
    title = "Condição SRS-2702: correlação 72.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002703", "SKU-GEN-000915" },
    notes = "Ver procedimento PROC-L1-02703 se aplicável.",
    gen_id = 2702,
}
_DR["G02703"] = {
    title = "Condição CLIMATE-2703: correlação 59.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002704", "SKU-GEN-000922" },
    notes = "Ver procedimento PROC-L1-02704 se aplicável.",
    gen_id = 2703,
}
_DR["G02704"] = {
    title = "Condição TRANS-2704: correlação 14.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002705", "SKU-GEN-000929" },
    notes = "Ver procedimento PROC-L1-02705 se aplicável.",
    gen_id = 2704,
}
_DR["G02705"] = {
    title = "Condição FUEL-2705: correlação 18.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002706", "SKU-GEN-000936" },
    notes = "Ver procedimento PROC-L1-02706 se aplicável.",
    gen_id = 2705,
}
_DR["G02706"] = {
    title = "Condição STEER-2706: correlação 16.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002707", "SKU-GEN-000943" },
    notes = "Ver procedimento PROC-L1-02707 se aplicável.",
    gen_id = 2706,
}
_DR["G02707"] = {
    title = "Condição HV-2707: correlação 60.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002708", "SKU-GEN-000950" },
    notes = "Ver procedimento PROC-L1-02708 se aplicável.",
    gen_id = 2707,
}
_DR["G02708"] = {
    title = "Condição BODY-2708: correlação 7.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002709", "SKU-GEN-000957" },
    notes = "Ver procedimento PROC-L1-02709 se aplicável.",
    gen_id = 2708,
}
_DR["G02709"] = {
    title = "Condição INFO-2709: correlação 68.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002710", "SKU-GEN-000964" },
    notes = "Ver procedimento PROC-L1-02710 se aplicável.",
    gen_id = 2709,
}
_DR["G02710"] = {
    title = "Condição ENGINE-2710: correlação 68.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002711", "SKU-GEN-000971" },
    notes = "Ver procedimento PROC-L1-02711 se aplicável.",
    gen_id = 2710,
}
_DR["G02711"] = {
    title = "Condição ABS-2711: correlação 24.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002712", "SKU-GEN-000978" },
    notes = "Ver procedimento PROC-L1-02712 se aplicável.",
    gen_id = 2711,
}
_DR["G02712"] = {
    title = "Condição SRS-2712: correlação 36.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002713", "SKU-GEN-000985" },
    notes = "Ver procedimento PROC-L1-02713 se aplicável.",
    gen_id = 2712,
}
_DR["G02713"] = {
    title = "Condição CLIMATE-2713: correlação 81.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002714", "SKU-GEN-000992" },
    notes = "Ver procedimento PROC-L1-02714 se aplicável.",
    gen_id = 2713,
}
_DR["G02714"] = {
    title = "Condição TRANS-2714: correlação 63.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002715", "SKU-GEN-000999" },
    notes = "Ver procedimento PROC-L1-02715 se aplicável.",
    gen_id = 2714,
}
_DR["G02715"] = {
    title = "Condição FUEL-2715: correlação 74.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002716", "SKU-GEN-001006" },
    notes = "Ver procedimento PROC-L1-02716 se aplicável.",
    gen_id = 2715,
}
_DR["G02716"] = {
    title = "Condição STEER-2716: correlação 77.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002717", "SKU-GEN-001013" },
    notes = "Ver procedimento PROC-L1-02717 se aplicável.",
    gen_id = 2716,
}
_DR["G02717"] = {
    title = "Condição HV-2717: correlação 22.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002718", "SKU-GEN-001020" },
    notes = "Ver procedimento PROC-L1-02718 se aplicável.",
    gen_id = 2717,
}
_DR["G02718"] = {
    title = "Condição BODY-2718: correlação 85.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002719", "SKU-GEN-001027" },
    notes = "Ver procedimento PROC-L1-02719 se aplicável.",
    gen_id = 2718,
}
_DR["G02719"] = {
    title = "Condição INFO-2719: correlação 63.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002720", "SKU-GEN-001034" },
    notes = "Ver procedimento PROC-L1-02720 se aplicável.",
    gen_id = 2719,
}
_DR["G02720"] = {
    title = "Condição ENGINE-2720: correlação 99.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002721", "SKU-GEN-001041" },
    notes = "Ver procedimento PROC-L1-02721 se aplicável.",
    gen_id = 2720,
}
_DR["G02721"] = {
    title = "Condição ABS-2721: correlação 40.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002722", "SKU-GEN-001048" },
    notes = "Ver procedimento PROC-L1-02722 se aplicável.",
    gen_id = 2721,
}
_DR["G02722"] = {
    title = "Condição SRS-2722: correlação 27.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002723", "SKU-GEN-001055" },
    notes = "Ver procedimento PROC-L1-02723 se aplicável.",
    gen_id = 2722,
}
_DR["G02723"] = {
    title = "Condição CLIMATE-2723: correlação 60.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002724", "SKU-GEN-001062" },
    notes = "Ver procedimento PROC-L1-02724 se aplicável.",
    gen_id = 2723,
}
_DR["G02724"] = {
    title = "Condição TRANS-2724: correlação 13.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002725", "SKU-GEN-001069" },
    notes = "Ver procedimento PROC-L1-02725 se aplicável.",
    gen_id = 2724,
}
_DR["G02725"] = {
    title = "Condição FUEL-2725: correlação 13.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002726", "SKU-GEN-001076" },
    notes = "Ver procedimento PROC-L1-02726 se aplicável.",
    gen_id = 2725,
}
_DR["G02726"] = {
    title = "Condição STEER-2726: correlação 28.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002727", "SKU-GEN-001083" },
    notes = "Ver procedimento PROC-L1-02727 se aplicável.",
    gen_id = 2726,
}
_DR["G02727"] = {
    title = "Condição HV-2727: correlação 71.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002728", "SKU-GEN-001090" },
    notes = "Ver procedimento PROC-L1-02728 se aplicável.",
    gen_id = 2727,
}
_DR["G02728"] = {
    title = "Condição BODY-2728: correlação 19.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002729", "SKU-GEN-001097" },
    notes = "Ver procedimento PROC-L1-02729 se aplicável.",
    gen_id = 2728,
}
_DR["G02729"] = {
    title = "Condição INFO-2729: correlação 47.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002730", "SKU-GEN-001104" },
    notes = "Ver procedimento PROC-L1-02730 se aplicável.",
    gen_id = 2729,
}
_DR["G02730"] = {
    title = "Condição ENGINE-2730: correlação 11.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002731", "SKU-GEN-001111" },
    notes = "Ver procedimento PROC-L1-02731 se aplicável.",
    gen_id = 2730,
}
_DR["G02731"] = {
    title = "Condição ABS-2731: correlação 8.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002732", "SKU-GEN-001118" },
    notes = "Ver procedimento PROC-L1-02732 se aplicável.",
    gen_id = 2731,
}
_DR["G02732"] = {
    title = "Condição SRS-2732: correlação 11.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002733", "SKU-GEN-001125" },
    notes = "Ver procedimento PROC-L1-02733 se aplicável.",
    gen_id = 2732,
}
_DR["G02733"] = {
    title = "Condição CLIMATE-2733: correlação 7.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002734", "SKU-GEN-001132" },
    notes = "Ver procedimento PROC-L1-02734 se aplicável.",
    gen_id = 2733,
}
_DR["G02734"] = {
    title = "Condição TRANS-2734: correlação 20.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002735", "SKU-GEN-001139" },
    notes = "Ver procedimento PROC-L1-02735 se aplicável.",
    gen_id = 2734,
}
_DR["G02735"] = {
    title = "Condição FUEL-2735: correlação 12.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002736", "SKU-GEN-001146" },
    notes = "Ver procedimento PROC-L1-02736 se aplicável.",
    gen_id = 2735,
}
_DR["G02736"] = {
    title = "Condição STEER-2736: correlação 26.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002737", "SKU-GEN-001153" },
    notes = "Ver procedimento PROC-L1-02737 se aplicável.",
    gen_id = 2736,
}
_DR["G02737"] = {
    title = "Condição HV-2737: correlação 33.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002738", "SKU-GEN-001160" },
    notes = "Ver procedimento PROC-L1-02738 se aplicável.",
    gen_id = 2737,
}
_DR["G02738"] = {
    title = "Condição BODY-2738: correlação 27.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002739", "SKU-GEN-001167" },
    notes = "Ver procedimento PROC-L1-02739 se aplicável.",
    gen_id = 2738,
}
_DR["G02739"] = {
    title = "Condição INFO-2739: correlação 62.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002740", "SKU-GEN-001174" },
    notes = "Ver procedimento PROC-L1-02740 se aplicável.",
    gen_id = 2739,
}
_DR["G02740"] = {
    title = "Condição ENGINE-2740: correlação 40.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002741", "SKU-GEN-001181" },
    notes = "Ver procedimento PROC-L1-02741 se aplicável.",
    gen_id = 2740,
}
_DR["G02741"] = {
    title = "Condição ABS-2741: correlação 56.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002742", "SKU-GEN-001188" },
    notes = "Ver procedimento PROC-L1-02742 se aplicável.",
    gen_id = 2741,
}
_DR["G02742"] = {
    title = "Condição SRS-2742: correlação 47.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002743", "SKU-GEN-001195" },
    notes = "Ver procedimento PROC-L1-02743 se aplicável.",
    gen_id = 2742,
}
_DR["G02743"] = {
    title = "Condição CLIMATE-2743: correlação 44.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002744", "SKU-GEN-001202" },
    notes = "Ver procedimento PROC-L1-02744 se aplicável.",
    gen_id = 2743,
}
_DR["G02744"] = {
    title = "Condição TRANS-2744: correlação 49.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002745", "SKU-GEN-001209" },
    notes = "Ver procedimento PROC-L1-02745 se aplicável.",
    gen_id = 2744,
}
_DR["G02745"] = {
    title = "Condição FUEL-2745: correlação 38.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002746", "SKU-GEN-001216" },
    notes = "Ver procedimento PROC-L1-02746 se aplicável.",
    gen_id = 2745,
}
_DR["G02746"] = {
    title = "Condição STEER-2746: correlação 91.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002747", "SKU-GEN-001223" },
    notes = "Ver procedimento PROC-L1-02747 se aplicável.",
    gen_id = 2746,
}
_DR["G02747"] = {
    title = "Condição HV-2747: correlação 69.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002748", "SKU-GEN-001230" },
    notes = "Ver procedimento PROC-L1-02748 se aplicável.",
    gen_id = 2747,
}
_DR["G02748"] = {
    title = "Condição BODY-2748: correlação 90.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002749", "SKU-GEN-001237" },
    notes = "Ver procedimento PROC-L1-02749 se aplicável.",
    gen_id = 2748,
}
_DR["G02749"] = {
    title = "Condição INFO-2749: correlação 82.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002750", "SKU-GEN-001244" },
    notes = "Ver procedimento PROC-L1-02750 se aplicável.",
    gen_id = 2749,
}
_DR["G02750"] = {
    title = "Condição ENGINE-2750: correlação 41.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002751", "SKU-GEN-001251" },
    notes = "Ver procedimento PROC-L1-02751 se aplicável.",
    gen_id = 2750,
}
_DR["G02751"] = {
    title = "Condição ABS-2751: correlação 43.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002752", "SKU-GEN-001258" },
    notes = "Ver procedimento PROC-L1-02752 se aplicável.",
    gen_id = 2751,
}
_DR["G02752"] = {
    title = "Condição SRS-2752: correlação 83.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002753", "SKU-GEN-001265" },
    notes = "Ver procedimento PROC-L1-02753 se aplicável.",
    gen_id = 2752,
}
_DR["G02753"] = {
    title = "Condição CLIMATE-2753: correlação 97.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002754", "SKU-GEN-001272" },
    notes = "Ver procedimento PROC-L1-02754 se aplicável.",
    gen_id = 2753,
}
_DR["G02754"] = {
    title = "Condição TRANS-2754: correlação 36.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002755", "SKU-GEN-001279" },
    notes = "Ver procedimento PROC-L1-02755 se aplicável.",
    gen_id = 2754,
}
_DR["G02755"] = {
    title = "Condição FUEL-2755: correlação 40.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002756", "SKU-GEN-001286" },
    notes = "Ver procedimento PROC-L1-02756 se aplicável.",
    gen_id = 2755,
}
_DR["G02756"] = {
    title = "Condição STEER-2756: correlação 8.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002757", "SKU-GEN-001293" },
    notes = "Ver procedimento PROC-L1-02757 se aplicável.",
    gen_id = 2756,
}
_DR["G02757"] = {
    title = "Condição HV-2757: correlação 15.7%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002758", "SKU-GEN-001300" },
    notes = "Ver procedimento PROC-L1-02758 se aplicável.",
    gen_id = 2757,
}
_DR["G02758"] = {
    title = "Condição BODY-2758: correlação 86.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002759", "SKU-GEN-001307" },
    notes = "Ver procedimento PROC-L1-02759 se aplicável.",
    gen_id = 2758,
}
_DR["G02759"] = {
    title = "Condição INFO-2759: correlação 39.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002760", "SKU-GEN-001314" },
    notes = "Ver procedimento PROC-L1-02760 se aplicável.",
    gen_id = 2759,
}
_DR["G02760"] = {
    title = "Condição ENGINE-2760: correlação 40.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002761", "SKU-GEN-001321" },
    notes = "Ver procedimento PROC-L1-02761 se aplicável.",
    gen_id = 2760,
}
_DR["G02761"] = {
    title = "Condição ABS-2761: correlação 83.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002762", "SKU-GEN-001328" },
    notes = "Ver procedimento PROC-L1-02762 se aplicável.",
    gen_id = 2761,
}
_DR["G02762"] = {
    title = "Condição SRS-2762: correlação 69.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002763", "SKU-GEN-001335" },
    notes = "Ver procedimento PROC-L1-02763 se aplicável.",
    gen_id = 2762,
}
_DR["G02763"] = {
    title = "Condição CLIMATE-2763: correlação 8.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002764", "SKU-GEN-001342" },
    notes = "Ver procedimento PROC-L1-02764 se aplicável.",
    gen_id = 2763,
}
_DR["G02764"] = {
    title = "Condição TRANS-2764: correlação 12.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002765", "SKU-GEN-001349" },
    notes = "Ver procedimento PROC-L1-02765 se aplicável.",
    gen_id = 2764,
}
_DR["G02765"] = {
    title = "Condição FUEL-2765: correlação 92.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002766", "SKU-GEN-001356" },
    notes = "Ver procedimento PROC-L1-02766 se aplicável.",
    gen_id = 2765,
}
_DR["G02766"] = {
    title = "Condição STEER-2766: correlação 65.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002767", "SKU-GEN-001363" },
    notes = "Ver procedimento PROC-L1-02767 se aplicável.",
    gen_id = 2766,
}
_DR["G02767"] = {
    title = "Condição HV-2767: correlação 58.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002768", "SKU-GEN-001370" },
    notes = "Ver procedimento PROC-L1-02768 se aplicável.",
    gen_id = 2767,
}
_DR["G02768"] = {
    title = "Condição BODY-2768: correlação 79.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002769", "SKU-GEN-001377" },
    notes = "Ver procedimento PROC-L1-02769 se aplicável.",
    gen_id = 2768,
}
_DR["G02769"] = {
    title = "Condição INFO-2769: correlação 5.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002770", "SKU-GEN-001384" },
    notes = "Ver procedimento PROC-L1-02770 se aplicável.",
    gen_id = 2769,
}
_DR["G02770"] = {
    title = "Condição ENGINE-2770: correlação 49.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002771", "SKU-GEN-001391" },
    notes = "Ver procedimento PROC-L1-02771 se aplicável.",
    gen_id = 2770,
}
_DR["G02771"] = {
    title = "Condição ABS-2771: correlação 100.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002772", "SKU-GEN-001398" },
    notes = "Ver procedimento PROC-L1-02772 se aplicável.",
    gen_id = 2771,
}
_DR["G02772"] = {
    title = "Condição SRS-2772: correlação 90.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002773", "SKU-GEN-001405" },
    notes = "Ver procedimento PROC-L1-02773 se aplicável.",
    gen_id = 2772,
}
_DR["G02773"] = {
    title = "Condição CLIMATE-2773: correlação 4.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002774", "SKU-GEN-001412" },
    notes = "Ver procedimento PROC-L1-02774 se aplicável.",
    gen_id = 2773,
}
_DR["G02774"] = {
    title = "Condição TRANS-2774: correlação 27.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002775", "SKU-GEN-001419" },
    notes = "Ver procedimento PROC-L1-02775 se aplicável.",
    gen_id = 2774,
}
_DR["G02775"] = {
    title = "Condição FUEL-2775: correlação 69.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002776", "SKU-GEN-001426" },
    notes = "Ver procedimento PROC-L1-02776 se aplicável.",
    gen_id = 2775,
}
_DR["G02776"] = {
    title = "Condição STEER-2776: correlação 18.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002777", "SKU-GEN-001433" },
    notes = "Ver procedimento PROC-L1-02777 se aplicável.",
    gen_id = 2776,
}
_DR["G02777"] = {
    title = "Condição HV-2777: correlação 62.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002778", "SKU-GEN-001440" },
    notes = "Ver procedimento PROC-L1-02778 se aplicável.",
    gen_id = 2777,
}
_DR["G02778"] = {
    title = "Condição BODY-2778: correlação 2.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002779", "SKU-GEN-001447" },
    notes = "Ver procedimento PROC-L1-02779 se aplicável.",
    gen_id = 2778,
}
_DR["G02779"] = {
    title = "Condição INFO-2779: correlação 10.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002780", "SKU-GEN-001454" },
    notes = "Ver procedimento PROC-L1-02780 se aplicável.",
    gen_id = 2779,
}
_DR["G02780"] = {
    title = "Condição ENGINE-2780: correlação 75.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002781", "SKU-GEN-001461" },
    notes = "Ver procedimento PROC-L1-02781 se aplicável.",
    gen_id = 2780,
}
_DR["G02781"] = {
    title = "Condição ABS-2781: correlação 8.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002782", "SKU-GEN-001468" },
    notes = "Ver procedimento PROC-L1-02782 se aplicável.",
    gen_id = 2781,
}
_DR["G02782"] = {
    title = "Condição SRS-2782: correlação 97.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002783", "SKU-GEN-001475" },
    notes = "Ver procedimento PROC-L1-02783 se aplicável.",
    gen_id = 2782,
}
_DR["G02783"] = {
    title = "Condição CLIMATE-2783: correlação 35.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002784", "SKU-GEN-001482" },
    notes = "Ver procedimento PROC-L1-02784 se aplicável.",
    gen_id = 2783,
}
_DR["G02784"] = {
    title = "Condição TRANS-2784: correlação 29.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002785", "SKU-GEN-001489" },
    notes = "Ver procedimento PROC-L1-02785 se aplicável.",
    gen_id = 2784,
}
_DR["G02785"] = {
    title = "Condição FUEL-2785: correlação 55.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002786", "SKU-GEN-001496" },
    notes = "Ver procedimento PROC-L1-02786 se aplicável.",
    gen_id = 2785,
}
_DR["G02786"] = {
    title = "Condição STEER-2786: correlação 68.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002787", "SKU-GEN-001503" },
    notes = "Ver procedimento PROC-L1-02787 se aplicável.",
    gen_id = 2786,
}
_DR["G02787"] = {
    title = "Condição HV-2787: correlação 84.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002788", "SKU-GEN-001510" },
    notes = "Ver procedimento PROC-L1-02788 se aplicável.",
    gen_id = 2787,
}
_DR["G02788"] = {
    title = "Condição BODY-2788: correlação 3.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002789", "SKU-GEN-001517" },
    notes = "Ver procedimento PROC-L1-02789 se aplicável.",
    gen_id = 2788,
}
_DR["G02789"] = {
    title = "Condição INFO-2789: correlação 90.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002790", "SKU-GEN-001524" },
    notes = "Ver procedimento PROC-L1-02790 se aplicável.",
    gen_id = 2789,
}
_DR["G02790"] = {
    title = "Condição ENGINE-2790: correlação 4.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002791", "SKU-GEN-001531" },
    notes = "Ver procedimento PROC-L1-02791 se aplicável.",
    gen_id = 2790,
}
_DR["G02791"] = {
    title = "Condição ABS-2791: correlação 75.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002792", "SKU-GEN-001538" },
    notes = "Ver procedimento PROC-L1-02792 se aplicável.",
    gen_id = 2791,
}
_DR["G02792"] = {
    title = "Condição SRS-2792: correlação 8.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002793", "SKU-GEN-001545" },
    notes = "Ver procedimento PROC-L1-02793 se aplicável.",
    gen_id = 2792,
}
_DR["G02793"] = {
    title = "Condição CLIMATE-2793: correlação 57.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002794", "SKU-GEN-001552" },
    notes = "Ver procedimento PROC-L1-02794 se aplicável.",
    gen_id = 2793,
}
_DR["G02794"] = {
    title = "Condição TRANS-2794: correlação 71.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002795", "SKU-GEN-001559" },
    notes = "Ver procedimento PROC-L1-02795 se aplicável.",
    gen_id = 2794,
}
_DR["G02795"] = {
    title = "Condição FUEL-2795: correlação 4.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002796", "SKU-GEN-001566" },
    notes = "Ver procedimento PROC-L1-02796 se aplicável.",
    gen_id = 2795,
}
_DR["G02796"] = {
    title = "Condição STEER-2796: correlação 56.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002797", "SKU-GEN-001573" },
    notes = "Ver procedimento PROC-L1-02797 se aplicável.",
    gen_id = 2796,
}
_DR["G02797"] = {
    title = "Condição HV-2797: correlação 85.5%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002798", "SKU-GEN-001580" },
    notes = "Ver procedimento PROC-L1-02798 se aplicável.",
    gen_id = 2797,
}
_DR["G02798"] = {
    title = "Condição BODY-2798: correlação 57.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002799", "SKU-GEN-001587" },
    notes = "Ver procedimento PROC-L1-02799 se aplicável.",
    gen_id = 2798,
}
_DR["G02799"] = {
    title = "Condição INFO-2799: correlação 30.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002800", "SKU-GEN-001594" },
    notes = "Ver procedimento PROC-L1-02800 se aplicável.",
    gen_id = 2799,
}
_DR["G02800"] = {
    title = "Condição ENGINE-2800: correlação 37.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002801", "SKU-GEN-001601" },
    notes = "Ver procedimento PROC-L1-02801 se aplicável.",
    gen_id = 2800,
}
_DR["G02801"] = {
    title = "Condição ABS-2801: correlação 32.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002802", "SKU-GEN-001608" },
    notes = "Ver procedimento PROC-L1-02802 se aplicável.",
    gen_id = 2801,
}
_DR["G02802"] = {
    title = "Condição SRS-2802: correlação 34.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002803", "SKU-GEN-001615" },
    notes = "Ver procedimento PROC-L1-02803 se aplicável.",
    gen_id = 2802,
}
_DR["G02803"] = {
    title = "Condição CLIMATE-2803: correlação 81.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002804", "SKU-GEN-001622" },
    notes = "Ver procedimento PROC-L1-02804 se aplicável.",
    gen_id = 2803,
}
_DR["G02804"] = {
    title = "Condição TRANS-2804: correlação 80.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002805", "SKU-GEN-001629" },
    notes = "Ver procedimento PROC-L1-02805 se aplicável.",
    gen_id = 2804,
}
_DR["G02805"] = {
    title = "Condição FUEL-2805: correlação 53.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002806", "SKU-GEN-001636" },
    notes = "Ver procedimento PROC-L1-02806 se aplicável.",
    gen_id = 2805,
}
_DR["G02806"] = {
    title = "Condição STEER-2806: correlação 34.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002807", "SKU-GEN-001643" },
    notes = "Ver procedimento PROC-L1-02807 se aplicável.",
    gen_id = 2806,
}
_DR["G02807"] = {
    title = "Condição HV-2807: correlação 33.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002808", "SKU-GEN-001650" },
    notes = "Ver procedimento PROC-L1-02808 se aplicável.",
    gen_id = 2807,
}
_DR["G02808"] = {
    title = "Condição BODY-2808: correlação 13.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002809", "SKU-GEN-001657" },
    notes = "Ver procedimento PROC-L1-02809 se aplicável.",
    gen_id = 2808,
}
_DR["G02809"] = {
    title = "Condição INFO-2809: correlação 17.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002810", "SKU-GEN-001664" },
    notes = "Ver procedimento PROC-L1-02810 se aplicável.",
    gen_id = 2809,
}
_DR["G02810"] = {
    title = "Condição ENGINE-2810: correlação 9.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002811", "SKU-GEN-001671" },
    notes = "Ver procedimento PROC-L1-02811 se aplicável.",
    gen_id = 2810,
}
_DR["G02811"] = {
    title = "Condição ABS-2811: correlação 62.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002812", "SKU-GEN-001678" },
    notes = "Ver procedimento PROC-L1-02812 se aplicável.",
    gen_id = 2811,
}
_DR["G02812"] = {
    title = "Condição SRS-2812: correlação 91.8%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002813", "SKU-GEN-001685" },
    notes = "Ver procedimento PROC-L1-02813 se aplicável.",
    gen_id = 2812,
}
_DR["G02813"] = {
    title = "Condição CLIMATE-2813: correlação 15.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002814", "SKU-GEN-001692" },
    notes = "Ver procedimento PROC-L1-02814 se aplicável.",
    gen_id = 2813,
}
_DR["G02814"] = {
    title = "Condição TRANS-2814: correlação 17.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002815", "SKU-GEN-001699" },
    notes = "Ver procedimento PROC-L1-02815 se aplicável.",
    gen_id = 2814,
}
_DR["G02815"] = {
    title = "Condição FUEL-2815: correlação 87.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002816", "SKU-GEN-001706" },
    notes = "Ver procedimento PROC-L1-02816 se aplicável.",
    gen_id = 2815,
}
_DR["G02816"] = {
    title = "Condição STEER-2816: correlação 74.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002817", "SKU-GEN-001713" },
    notes = "Ver procedimento PROC-L1-02817 se aplicável.",
    gen_id = 2816,
}
_DR["G02817"] = {
    title = "Condição HV-2817: correlação 58.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002818", "SKU-GEN-001720" },
    notes = "Ver procedimento PROC-L1-02818 se aplicável.",
    gen_id = 2817,
}
_DR["G02818"] = {
    title = "Condição BODY-2818: correlação 56.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002819", "SKU-GEN-001727" },
    notes = "Ver procedimento PROC-L1-02819 se aplicável.",
    gen_id = 2818,
}
_DR["G02819"] = {
    title = "Condição INFO-2819: correlação 28.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002820", "SKU-GEN-001734" },
    notes = "Ver procedimento PROC-L1-02820 se aplicável.",
    gen_id = 2819,
}
_DR["G02820"] = {
    title = "Condição ENGINE-2820: correlação 57.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002821", "SKU-GEN-001741" },
    notes = "Ver procedimento PROC-L1-02821 se aplicável.",
    gen_id = 2820,
}
_DR["G02821"] = {
    title = "Condição ABS-2821: correlação 38.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002822", "SKU-GEN-001748" },
    notes = "Ver procedimento PROC-L1-02822 se aplicável.",
    gen_id = 2821,
}
_DR["G02822"] = {
    title = "Condição SRS-2822: correlação 50.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002823", "SKU-GEN-001755" },
    notes = "Ver procedimento PROC-L1-02823 se aplicável.",
    gen_id = 2822,
}
_DR["G02823"] = {
    title = "Condição CLIMATE-2823: correlação 54.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002824", "SKU-GEN-001762" },
    notes = "Ver procedimento PROC-L1-02824 se aplicável.",
    gen_id = 2823,
}
_DR["G02824"] = {
    title = "Condição TRANS-2824: correlação 93.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002825", "SKU-GEN-001769" },
    notes = "Ver procedimento PROC-L1-02825 se aplicável.",
    gen_id = 2824,
}
_DR["G02825"] = {
    title = "Condição FUEL-2825: correlação 4.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002826", "SKU-GEN-001776" },
    notes = "Ver procedimento PROC-L1-02826 se aplicável.",
    gen_id = 2825,
}
_DR["G02826"] = {
    title = "Condição STEER-2826: correlação 36.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002827", "SKU-GEN-001783" },
    notes = "Ver procedimento PROC-L1-02827 se aplicável.",
    gen_id = 2826,
}
_DR["G02827"] = {
    title = "Condição HV-2827: correlação 12.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002828", "SKU-GEN-001790" },
    notes = "Ver procedimento PROC-L1-02828 se aplicável.",
    gen_id = 2827,
}
_DR["G02828"] = {
    title = "Condição BODY-2828: correlação 61.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002829", "SKU-GEN-001797" },
    notes = "Ver procedimento PROC-L1-02829 se aplicável.",
    gen_id = 2828,
}
_DR["G02829"] = {
    title = "Condição INFO-2829: correlação 85.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002830", "SKU-GEN-001804" },
    notes = "Ver procedimento PROC-L1-02830 se aplicável.",
    gen_id = 2829,
}
_DR["G02830"] = {
    title = "Condição ENGINE-2830: correlação 28.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002831", "SKU-GEN-001811" },
    notes = "Ver procedimento PROC-L1-02831 se aplicável.",
    gen_id = 2830,
}
_DR["G02831"] = {
    title = "Condição ABS-2831: correlação 40.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002832", "SKU-GEN-001818" },
    notes = "Ver procedimento PROC-L1-02832 se aplicável.",
    gen_id = 2831,
}
_DR["G02832"] = {
    title = "Condição SRS-2832: correlação 62.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002833", "SKU-GEN-001825" },
    notes = "Ver procedimento PROC-L1-02833 se aplicável.",
    gen_id = 2832,
}
_DR["G02833"] = {
    title = "Condição CLIMATE-2833: correlação 52.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002834", "SKU-GEN-001832" },
    notes = "Ver procedimento PROC-L1-02834 se aplicável.",
    gen_id = 2833,
}
_DR["G02834"] = {
    title = "Condição TRANS-2834: correlação 46.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002835", "SKU-GEN-001839" },
    notes = "Ver procedimento PROC-L1-02835 se aplicável.",
    gen_id = 2834,
}
_DR["G02835"] = {
    title = "Condição FUEL-2835: correlação 17.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002836", "SKU-GEN-001846" },
    notes = "Ver procedimento PROC-L1-02836 se aplicável.",
    gen_id = 2835,
}
_DR["G02836"] = {
    title = "Condição STEER-2836: correlação 52.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002837", "SKU-GEN-001853" },
    notes = "Ver procedimento PROC-L1-02837 se aplicável.",
    gen_id = 2836,
}
_DR["G02837"] = {
    title = "Condição HV-2837: correlação 12.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002838", "SKU-GEN-001860" },
    notes = "Ver procedimento PROC-L1-02838 se aplicável.",
    gen_id = 2837,
}
_DR["G02838"] = {
    title = "Condição BODY-2838: correlação 27.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002839", "SKU-GEN-001867" },
    notes = "Ver procedimento PROC-L1-02839 se aplicável.",
    gen_id = 2838,
}
_DR["G02839"] = {
    title = "Condição INFO-2839: correlação 97.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002840", "SKU-GEN-001874" },
    notes = "Ver procedimento PROC-L1-02840 se aplicável.",
    gen_id = 2839,
}
_DR["G02840"] = {
    title = "Condição ENGINE-2840: correlação 51.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002841", "SKU-GEN-001881" },
    notes = "Ver procedimento PROC-L1-02841 se aplicável.",
    gen_id = 2840,
}
_DR["G02841"] = {
    title = "Condição ABS-2841: correlação 57.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002842", "SKU-GEN-001888" },
    notes = "Ver procedimento PROC-L1-02842 se aplicável.",
    gen_id = 2841,
}
_DR["G02842"] = {
    title = "Condição SRS-2842: correlação 84.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002843", "SKU-GEN-001895" },
    notes = "Ver procedimento PROC-L1-02843 se aplicável.",
    gen_id = 2842,
}
_DR["G02843"] = {
    title = "Condição CLIMATE-2843: correlação 40.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002844", "SKU-GEN-001902" },
    notes = "Ver procedimento PROC-L1-02844 se aplicável.",
    gen_id = 2843,
}
_DR["G02844"] = {
    title = "Condição TRANS-2844: correlação 68.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002845", "SKU-GEN-001909" },
    notes = "Ver procedimento PROC-L1-02845 se aplicável.",
    gen_id = 2844,
}
_DR["G02845"] = {
    title = "Condição FUEL-2845: correlação 32.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002846", "SKU-GEN-001916" },
    notes = "Ver procedimento PROC-L1-02846 se aplicável.",
    gen_id = 2845,
}
_DR["G02846"] = {
    title = "Condição STEER-2846: correlação 52.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002847", "SKU-GEN-001923" },
    notes = "Ver procedimento PROC-L1-02847 se aplicável.",
    gen_id = 2846,
}
_DR["G02847"] = {
    title = "Condição HV-2847: correlação 24.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002848", "SKU-GEN-001930" },
    notes = "Ver procedimento PROC-L1-02848 se aplicável.",
    gen_id = 2847,
}
_DR["G02848"] = {
    title = "Condição BODY-2848: correlação 53.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002849", "SKU-GEN-001937" },
    notes = "Ver procedimento PROC-L1-02849 se aplicável.",
    gen_id = 2848,
}
_DR["G02849"] = {
    title = "Condição INFO-2849: correlação 87.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002850", "SKU-GEN-001944" },
    notes = "Ver procedimento PROC-L1-02850 se aplicável.",
    gen_id = 2849,
}
_DR["G02850"] = {
    title = "Condição ENGINE-2850: correlação 44.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002851", "SKU-GEN-001951" },
    notes = "Ver procedimento PROC-L1-02851 se aplicável.",
    gen_id = 2850,
}
_DR["G02851"] = {
    title = "Condição ABS-2851: correlação 5.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002852", "SKU-GEN-001958" },
    notes = "Ver procedimento PROC-L1-02852 se aplicável.",
    gen_id = 2851,
}
_DR["G02852"] = {
    title = "Condição SRS-2852: correlação 48.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002853", "SKU-GEN-001965" },
    notes = "Ver procedimento PROC-L1-02853 se aplicável.",
    gen_id = 2852,
}
_DR["G02853"] = {
    title = "Condição CLIMATE-2853: correlação 23.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002854", "SKU-GEN-001972" },
    notes = "Ver procedimento PROC-L1-02854 se aplicável.",
    gen_id = 2853,
}
_DR["G02854"] = {
    title = "Condição TRANS-2854: correlação 22.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002855", "SKU-GEN-001979" },
    notes = "Ver procedimento PROC-L1-02855 se aplicável.",
    gen_id = 2854,
}
_DR["G02855"] = {
    title = "Condição FUEL-2855: correlação 74.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002856", "SKU-GEN-001986" },
    notes = "Ver procedimento PROC-L1-02856 se aplicável.",
    gen_id = 2855,
}
_DR["G02856"] = {
    title = "Condição STEER-2856: correlação 8.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002857", "SKU-GEN-001993" },
    notes = "Ver procedimento PROC-L1-02857 se aplicável.",
    gen_id = 2856,
}
_DR["G02857"] = {
    title = "Condição HV-2857: correlação 46.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002858", "SKU-GEN-002000" },
    notes = "Ver procedimento PROC-L1-02858 se aplicável.",
    gen_id = 2857,
}
_DR["G02858"] = {
    title = "Condição BODY-2858: correlação 37.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002859", "SKU-GEN-002007" },
    notes = "Ver procedimento PROC-L1-02859 se aplicável.",
    gen_id = 2858,
}
_DR["G02859"] = {
    title = "Condição INFO-2859: correlação 99.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002860", "SKU-GEN-002014" },
    notes = "Ver procedimento PROC-L1-02860 se aplicável.",
    gen_id = 2859,
}
_DR["G02860"] = {
    title = "Condição ENGINE-2860: correlação 19.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002861", "SKU-GEN-002021" },
    notes = "Ver procedimento PROC-L1-02861 se aplicável.",
    gen_id = 2860,
}
_DR["G02861"] = {
    title = "Condição ABS-2861: correlação 2.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002862", "SKU-GEN-002028" },
    notes = "Ver procedimento PROC-L1-02862 se aplicável.",
    gen_id = 2861,
}
_DR["G02862"] = {
    title = "Condição SRS-2862: correlação 93.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002863", "SKU-GEN-002035" },
    notes = "Ver procedimento PROC-L1-02863 se aplicável.",
    gen_id = 2862,
}
_DR["G02863"] = {
    title = "Condição CLIMATE-2863: correlação 75.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002864", "SKU-GEN-002042" },
    notes = "Ver procedimento PROC-L1-02864 se aplicável.",
    gen_id = 2863,
}
_DR["G02864"] = {
    title = "Condição TRANS-2864: correlação 11.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002865", "SKU-GEN-002049" },
    notes = "Ver procedimento PROC-L1-02865 se aplicável.",
    gen_id = 2864,
}
_DR["G02865"] = {
    title = "Condição FUEL-2865: correlação 43.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002866", "SKU-GEN-002056" },
    notes = "Ver procedimento PROC-L1-02866 se aplicável.",
    gen_id = 2865,
}
_DR["G02866"] = {
    title = "Condição STEER-2866: correlação 55.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002867", "SKU-GEN-002063" },
    notes = "Ver procedimento PROC-L1-02867 se aplicável.",
    gen_id = 2866,
}
_DR["G02867"] = {
    title = "Condição HV-2867: correlação 17.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002868", "SKU-GEN-002070" },
    notes = "Ver procedimento PROC-L1-02868 se aplicável.",
    gen_id = 2867,
}
_DR["G02868"] = {
    title = "Condição BODY-2868: correlação 71.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002869", "SKU-GEN-002077" },
    notes = "Ver procedimento PROC-L1-02869 se aplicável.",
    gen_id = 2868,
}
_DR["G02869"] = {
    title = "Condição INFO-2869: correlação 51.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002870", "SKU-GEN-002084" },
    notes = "Ver procedimento PROC-L1-02870 se aplicável.",
    gen_id = 2869,
}
_DR["G02870"] = {
    title = "Condição ENGINE-2870: correlação 98.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002871", "SKU-GEN-002091" },
    notes = "Ver procedimento PROC-L1-02871 se aplicável.",
    gen_id = 2870,
}
_DR["G02871"] = {
    title = "Condição ABS-2871: correlação 51.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002872", "SKU-GEN-002098" },
    notes = "Ver procedimento PROC-L1-02872 se aplicável.",
    gen_id = 2871,
}
_DR["G02872"] = {
    title = "Condição SRS-2872: correlação 92.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002873", "SKU-GEN-002105" },
    notes = "Ver procedimento PROC-L1-02873 se aplicável.",
    gen_id = 2872,
}
_DR["G02873"] = {
    title = "Condição CLIMATE-2873: correlação 26.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002874", "SKU-GEN-002112" },
    notes = "Ver procedimento PROC-L1-02874 se aplicável.",
    gen_id = 2873,
}
_DR["G02874"] = {
    title = "Condição TRANS-2874: correlação 55.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002875", "SKU-GEN-002119" },
    notes = "Ver procedimento PROC-L1-02875 se aplicável.",
    gen_id = 2874,
}
_DR["G02875"] = {
    title = "Condição FUEL-2875: correlação 12.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002876", "SKU-GEN-002126" },
    notes = "Ver procedimento PROC-L1-02876 se aplicável.",
    gen_id = 2875,
}
_DR["G02876"] = {
    title = "Condição STEER-2876: correlação 6.5%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002877", "SKU-GEN-002133" },
    notes = "Ver procedimento PROC-L1-02877 se aplicável.",
    gen_id = 2876,
}
_DR["G02877"] = {
    title = "Condição HV-2877: correlação 2.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002878", "SKU-GEN-002140" },
    notes = "Ver procedimento PROC-L1-02878 se aplicável.",
    gen_id = 2877,
}
_DR["G02878"] = {
    title = "Condição BODY-2878: correlação 31.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002879", "SKU-GEN-002147" },
    notes = "Ver procedimento PROC-L1-02879 se aplicável.",
    gen_id = 2878,
}
_DR["G02879"] = {
    title = "Condição INFO-2879: correlação 45.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002880", "SKU-GEN-002154" },
    notes = "Ver procedimento PROC-L1-02880 se aplicável.",
    gen_id = 2879,
}
_DR["G02880"] = {
    title = "Condição ENGINE-2880: correlação 94.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002881", "SKU-GEN-002161" },
    notes = "Ver procedimento PROC-L1-02881 se aplicável.",
    gen_id = 2880,
}
_DR["G02881"] = {
    title = "Condição ABS-2881: correlação 65.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002882", "SKU-GEN-002168" },
    notes = "Ver procedimento PROC-L1-02882 se aplicável.",
    gen_id = 2881,
}
_DR["G02882"] = {
    title = "Condição SRS-2882: correlação 79.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002883", "SKU-GEN-002175" },
    notes = "Ver procedimento PROC-L1-02883 se aplicável.",
    gen_id = 2882,
}
_DR["G02883"] = {
    title = "Condição CLIMATE-2883: correlação 53.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002884", "SKU-GEN-002182" },
    notes = "Ver procedimento PROC-L1-02884 se aplicável.",
    gen_id = 2883,
}
_DR["G02884"] = {
    title = "Condição TRANS-2884: correlação 75.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002885", "SKU-GEN-002189" },
    notes = "Ver procedimento PROC-L1-02885 se aplicável.",
    gen_id = 2884,
}
_DR["G02885"] = {
    title = "Condição FUEL-2885: correlação 72.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002886", "SKU-GEN-002196" },
    notes = "Ver procedimento PROC-L1-02886 se aplicável.",
    gen_id = 2885,
}
_DR["G02886"] = {
    title = "Condição STEER-2886: correlação 56.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002887", "SKU-GEN-002203" },
    notes = "Ver procedimento PROC-L1-02887 se aplicável.",
    gen_id = 2886,
}
_DR["G02887"] = {
    title = "Condição HV-2887: correlação 61.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002888", "SKU-GEN-002210" },
    notes = "Ver procedimento PROC-L1-02888 se aplicável.",
    gen_id = 2887,
}
_DR["G02888"] = {
    title = "Condição BODY-2888: correlação 12.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002889", "SKU-GEN-002217" },
    notes = "Ver procedimento PROC-L1-02889 se aplicável.",
    gen_id = 2888,
}
_DR["G02889"] = {
    title = "Condição INFO-2889: correlação 96.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002890", "SKU-GEN-002224" },
    notes = "Ver procedimento PROC-L1-02890 se aplicável.",
    gen_id = 2889,
}
_DR["G02890"] = {
    title = "Condição ENGINE-2890: correlação 8.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002891", "SKU-GEN-002231" },
    notes = "Ver procedimento PROC-L1-02891 se aplicável.",
    gen_id = 2890,
}
_DR["G02891"] = {
    title = "Condição ABS-2891: correlação 83.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002892", "SKU-GEN-002238" },
    notes = "Ver procedimento PROC-L1-02892 se aplicável.",
    gen_id = 2891,
}
_DR["G02892"] = {
    title = "Condição SRS-2892: correlação 89.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002893", "SKU-GEN-002245" },
    notes = "Ver procedimento PROC-L1-02893 se aplicável.",
    gen_id = 2892,
}
_DR["G02893"] = {
    title = "Condição CLIMATE-2893: correlação 61.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002894", "SKU-GEN-002252" },
    notes = "Ver procedimento PROC-L1-02894 se aplicável.",
    gen_id = 2893,
}
_DR["G02894"] = {
    title = "Condição TRANS-2894: correlação 49.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002895", "SKU-GEN-002259" },
    notes = "Ver procedimento PROC-L1-02895 se aplicável.",
    gen_id = 2894,
}
_DR["G02895"] = {
    title = "Condição FUEL-2895: correlação 0.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002896", "SKU-GEN-002266" },
    notes = "Ver procedimento PROC-L1-02896 se aplicável.",
    gen_id = 2895,
}
_DR["G02896"] = {
    title = "Condição STEER-2896: correlação 34.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002897", "SKU-GEN-002273" },
    notes = "Ver procedimento PROC-L1-02897 se aplicável.",
    gen_id = 2896,
}
_DR["G02897"] = {
    title = "Condição HV-2897: correlação 20.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002898", "SKU-GEN-002280" },
    notes = "Ver procedimento PROC-L1-02898 se aplicável.",
    gen_id = 2897,
}
_DR["G02898"] = {
    title = "Condição BODY-2898: correlação 40.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002899", "SKU-GEN-002287" },
    notes = "Ver procedimento PROC-L1-02899 se aplicável.",
    gen_id = 2898,
}
_DR["G02899"] = {
    title = "Condição INFO-2899: correlação 95.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002900", "SKU-GEN-002294" },
    notes = "Ver procedimento PROC-L1-02900 se aplicável.",
    gen_id = 2899,
}
_DR["G02900"] = {
    title = "Condição ENGINE-2900: correlação 20.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002901", "SKU-GEN-002301" },
    notes = "Ver procedimento PROC-L1-02901 se aplicável.",
    gen_id = 2900,
}
_DR["G02901"] = {
    title = "Condição ABS-2901: correlação 5.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002902", "SKU-GEN-002308" },
    notes = "Ver procedimento PROC-L1-02902 se aplicável.",
    gen_id = 2901,
}
_DR["G02902"] = {
    title = "Condição SRS-2902: correlação 71.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002903", "SKU-GEN-002315" },
    notes = "Ver procedimento PROC-L1-02903 se aplicável.",
    gen_id = 2902,
}
_DR["G02903"] = {
    title = "Condição CLIMATE-2903: correlação 8.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002904", "SKU-GEN-002322" },
    notes = "Ver procedimento PROC-L1-02904 se aplicável.",
    gen_id = 2903,
}
_DR["G02904"] = {
    title = "Condição TRANS-2904: correlação 44.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002905", "SKU-GEN-002329" },
    notes = "Ver procedimento PROC-L1-02905 se aplicável.",
    gen_id = 2904,
}
_DR["G02905"] = {
    title = "Condição FUEL-2905: correlação 56.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002906", "SKU-GEN-002336" },
    notes = "Ver procedimento PROC-L1-02906 se aplicável.",
    gen_id = 2905,
}
_DR["G02906"] = {
    title = "Condição STEER-2906: correlação 8.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002907", "SKU-GEN-002343" },
    notes = "Ver procedimento PROC-L1-02907 se aplicável.",
    gen_id = 2906,
}
_DR["G02907"] = {
    title = "Condição HV-2907: correlação 99.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002908", "SKU-GEN-002350" },
    notes = "Ver procedimento PROC-L1-02908 se aplicável.",
    gen_id = 2907,
}
_DR["G02908"] = {
    title = "Condição BODY-2908: correlação 75.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002909", "SKU-GEN-002357" },
    notes = "Ver procedimento PROC-L1-02909 se aplicável.",
    gen_id = 2908,
}
_DR["G02909"] = {
    title = "Condição INFO-2909: correlação 83.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002910", "SKU-GEN-002364" },
    notes = "Ver procedimento PROC-L1-02910 se aplicável.",
    gen_id = 2909,
}
_DR["G02910"] = {
    title = "Condição ENGINE-2910: correlação 69.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002911", "SKU-GEN-002371" },
    notes = "Ver procedimento PROC-L1-02911 se aplicável.",
    gen_id = 2910,
}
_DR["G02911"] = {
    title = "Condição ABS-2911: correlação 30.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002912", "SKU-GEN-002378" },
    notes = "Ver procedimento PROC-L1-02912 se aplicável.",
    gen_id = 2911,
}
_DR["G02912"] = {
    title = "Condição SRS-2912: correlação 21.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002913", "SKU-GEN-002385" },
    notes = "Ver procedimento PROC-L1-02913 se aplicável.",
    gen_id = 2912,
}
_DR["G02913"] = {
    title = "Condição CLIMATE-2913: correlação 52.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002914", "SKU-GEN-002392" },
    notes = "Ver procedimento PROC-L1-02914 se aplicável.",
    gen_id = 2913,
}
_DR["G02914"] = {
    title = "Condição TRANS-2914: correlação 20.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002915", "SKU-GEN-002399" },
    notes = "Ver procedimento PROC-L1-02915 se aplicável.",
    gen_id = 2914,
}
_DR["G02915"] = {
    title = "Condição FUEL-2915: correlação 11.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002916", "SKU-GEN-002406" },
    notes = "Ver procedimento PROC-L1-02916 se aplicável.",
    gen_id = 2915,
}
_DR["G02916"] = {
    title = "Condição STEER-2916: correlação 56.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002917", "SKU-GEN-002413" },
    notes = "Ver procedimento PROC-L1-02917 se aplicável.",
    gen_id = 2916,
}
_DR["G02917"] = {
    title = "Condição HV-2917: correlação 78.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002918", "SKU-GEN-002420" },
    notes = "Ver procedimento PROC-L1-02918 se aplicável.",
    gen_id = 2917,
}
_DR["G02918"] = {
    title = "Condição BODY-2918: correlação 17.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002919", "SKU-GEN-002427" },
    notes = "Ver procedimento PROC-L1-02919 se aplicável.",
    gen_id = 2918,
}
_DR["G02919"] = {
    title = "Condição INFO-2919: correlação 69.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002920", "SKU-GEN-002434" },
    notes = "Ver procedimento PROC-L1-02920 se aplicável.",
    gen_id = 2919,
}
_DR["G02920"] = {
    title = "Condição ENGINE-2920: correlação 10.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002921", "SKU-GEN-002441" },
    notes = "Ver procedimento PROC-L1-02921 se aplicável.",
    gen_id = 2920,
}
_DR["G02921"] = {
    title = "Condição ABS-2921: correlação 57.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002922", "SKU-GEN-002448" },
    notes = "Ver procedimento PROC-L1-02922 se aplicável.",
    gen_id = 2921,
}
_DR["G02922"] = {
    title = "Condição SRS-2922: correlação 39.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002923", "SKU-GEN-002455" },
    notes = "Ver procedimento PROC-L1-02923 se aplicável.",
    gen_id = 2922,
}
_DR["G02923"] = {
    title = "Condição CLIMATE-2923: correlação 36.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002924", "SKU-GEN-002462" },
    notes = "Ver procedimento PROC-L1-02924 se aplicável.",
    gen_id = 2923,
}
_DR["G02924"] = {
    title = "Condição TRANS-2924: correlação 1.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002925", "SKU-GEN-002469" },
    notes = "Ver procedimento PROC-L1-02925 se aplicável.",
    gen_id = 2924,
}
_DR["G02925"] = {
    title = "Condição FUEL-2925: correlação 3.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002926", "SKU-GEN-002476" },
    notes = "Ver procedimento PROC-L1-02926 se aplicável.",
    gen_id = 2925,
}
_DR["G02926"] = {
    title = "Condição STEER-2926: correlação 78.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002927", "SKU-GEN-002483" },
    notes = "Ver procedimento PROC-L1-02927 se aplicável.",
    gen_id = 2926,
}
_DR["G02927"] = {
    title = "Condição HV-2927: correlação 55.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002928", "SKU-GEN-002490" },
    notes = "Ver procedimento PROC-L1-02928 se aplicável.",
    gen_id = 2927,
}
_DR["G02928"] = {
    title = "Condição BODY-2928: correlação 80.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002929", "SKU-GEN-002497" },
    notes = "Ver procedimento PROC-L1-02929 se aplicável.",
    gen_id = 2928,
}
_DR["G02929"] = {
    title = "Condição INFO-2929: correlação 39.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002930", "SKU-GEN-002504" },
    notes = "Ver procedimento PROC-L1-02930 se aplicável.",
    gen_id = 2929,
}
_DR["G02930"] = {
    title = "Condição ENGINE-2930: correlação 87.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002931", "SKU-GEN-002511" },
    notes = "Ver procedimento PROC-L1-02931 se aplicável.",
    gen_id = 2930,
}
_DR["G02931"] = {
    title = "Condição ABS-2931: correlação 64.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002932", "SKU-GEN-002518" },
    notes = "Ver procedimento PROC-L1-02932 se aplicável.",
    gen_id = 2931,
}
_DR["G02932"] = {
    title = "Condição SRS-2932: correlação 3.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002933", "SKU-GEN-002525" },
    notes = "Ver procedimento PROC-L1-02933 se aplicável.",
    gen_id = 2932,
}
_DR["G02933"] = {
    title = "Condição CLIMATE-2933: correlação 74.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002934", "SKU-GEN-002532" },
    notes = "Ver procedimento PROC-L1-02934 se aplicável.",
    gen_id = 2933,
}
_DR["G02934"] = {
    title = "Condição TRANS-2934: correlação 3.9%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002935", "SKU-GEN-002539" },
    notes = "Ver procedimento PROC-L1-02935 se aplicável.",
    gen_id = 2934,
}
_DR["G02935"] = {
    title = "Condição FUEL-2935: correlação 9.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002936", "SKU-GEN-002546" },
    notes = "Ver procedimento PROC-L1-02936 se aplicável.",
    gen_id = 2935,
}
_DR["G02936"] = {
    title = "Condição STEER-2936: correlação 60.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002937", "SKU-GEN-002553" },
    notes = "Ver procedimento PROC-L1-02937 se aplicável.",
    gen_id = 2936,
}
_DR["G02937"] = {
    title = "Condição HV-2937: correlação 67.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002938", "SKU-GEN-002560" },
    notes = "Ver procedimento PROC-L1-02938 se aplicável.",
    gen_id = 2937,
}
_DR["G02938"] = {
    title = "Condição BODY-2938: correlação 88.4%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002939", "SKU-GEN-002567" },
    notes = "Ver procedimento PROC-L1-02939 se aplicável.",
    gen_id = 2938,
}
_DR["G02939"] = {
    title = "Condição INFO-2939: correlação 70.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002940", "SKU-GEN-002574" },
    notes = "Ver procedimento PROC-L1-02940 se aplicável.",
    gen_id = 2939,
}
_DR["G02940"] = {
    title = "Condição ENGINE-2940: correlação 15.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002941", "SKU-GEN-002581" },
    notes = "Ver procedimento PROC-L1-02941 se aplicável.",
    gen_id = 2940,
}
_DR["G02941"] = {
    title = "Condição ABS-2941: correlação 46.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002942", "SKU-GEN-002588" },
    notes = "Ver procedimento PROC-L1-02942 se aplicável.",
    gen_id = 2941,
}
_DR["G02942"] = {
    title = "Condição SRS-2942: correlação 63.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002943", "SKU-GEN-002595" },
    notes = "Ver procedimento PROC-L1-02943 se aplicável.",
    gen_id = 2942,
}
_DR["G02943"] = {
    title = "Condição CLIMATE-2943: correlação 31.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002944", "SKU-GEN-002602" },
    notes = "Ver procedimento PROC-L1-02944 se aplicável.",
    gen_id = 2943,
}
_DR["G02944"] = {
    title = "Condição TRANS-2944: correlação 55.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002945", "SKU-GEN-002609" },
    notes = "Ver procedimento PROC-L1-02945 se aplicável.",
    gen_id = 2944,
}
_DR["G02945"] = {
    title = "Condição FUEL-2945: correlação 48.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002946", "SKU-GEN-002616" },
    notes = "Ver procedimento PROC-L1-02946 se aplicável.",
    gen_id = 2945,
}
_DR["G02946"] = {
    title = "Condição STEER-2946: correlação 31.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002947", "SKU-GEN-002623" },
    notes = "Ver procedimento PROC-L1-02947 se aplicável.",
    gen_id = 2946,
}
_DR["G02947"] = {
    title = "Condição HV-2947: correlação 18.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002948", "SKU-GEN-002630" },
    notes = "Ver procedimento PROC-L1-02948 se aplicável.",
    gen_id = 2947,
}
_DR["G02948"] = {
    title = "Condição BODY-2948: correlação 32.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002949", "SKU-GEN-002637" },
    notes = "Ver procedimento PROC-L1-02949 se aplicável.",
    gen_id = 2948,
}
_DR["G02949"] = {
    title = "Condição INFO-2949: correlação 97.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002950", "SKU-GEN-002644" },
    notes = "Ver procedimento PROC-L1-02950 se aplicável.",
    gen_id = 2949,
}
_DR["G02950"] = {
    title = "Condição ENGINE-2950: correlação 4.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002951", "SKU-GEN-002651" },
    notes = "Ver procedimento PROC-L1-02951 se aplicável.",
    gen_id = 2950,
}
_DR["G02951"] = {
    title = "Condição ABS-2951: correlação 77.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002952", "SKU-GEN-002658" },
    notes = "Ver procedimento PROC-L1-02952 se aplicável.",
    gen_id = 2951,
}
_DR["G02952"] = {
    title = "Condição SRS-2952: correlação 51.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002953", "SKU-GEN-002665" },
    notes = "Ver procedimento PROC-L1-02953 se aplicável.",
    gen_id = 2952,
}
_DR["G02953"] = {
    title = "Condição CLIMATE-2953: correlação 19.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002954", "SKU-GEN-002672" },
    notes = "Ver procedimento PROC-L1-02954 se aplicável.",
    gen_id = 2953,
}
_DR["G02954"] = {
    title = "Condição TRANS-2954: correlação 78.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002955", "SKU-GEN-002679" },
    notes = "Ver procedimento PROC-L1-02955 se aplicável.",
    gen_id = 2954,
}
_DR["G02955"] = {
    title = "Condição FUEL-2955: correlação 78.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002956", "SKU-GEN-002686" },
    notes = "Ver procedimento PROC-L1-02956 se aplicável.",
    gen_id = 2955,
}
_DR["G02956"] = {
    title = "Condição STEER-2956: correlação 57.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002957", "SKU-GEN-002693" },
    notes = "Ver procedimento PROC-L1-02957 se aplicável.",
    gen_id = 2956,
}
_DR["G02957"] = {
    title = "Condição HV-2957: correlação 80.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002958", "SKU-GEN-002700" },
    notes = "Ver procedimento PROC-L1-02958 se aplicável.",
    gen_id = 2957,
}
_DR["G02958"] = {
    title = "Condição BODY-2958: correlação 42.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002959", "SKU-GEN-002707" },
    notes = "Ver procedimento PROC-L1-02959 se aplicável.",
    gen_id = 2958,
}
_DR["G02959"] = {
    title = "Condição INFO-2959: correlação 56.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002960", "SKU-GEN-002714" },
    notes = "Ver procedimento PROC-L1-02960 se aplicável.",
    gen_id = 2959,
}
_DR["G02960"] = {
    title = "Condição ENGINE-2960: correlação 91.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002961", "SKU-GEN-002721" },
    notes = "Ver procedimento PROC-L1-02961 se aplicável.",
    gen_id = 2960,
}
_DR["G02961"] = {
    title = "Condição ABS-2961: correlação 94.3%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002962", "SKU-GEN-002728" },
    notes = "Ver procedimento PROC-L1-02962 se aplicável.",
    gen_id = 2961,
}
_DR["G02962"] = {
    title = "Condição SRS-2962: correlação 91.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002963", "SKU-GEN-002735" },
    notes = "Ver procedimento PROC-L1-02963 se aplicável.",
    gen_id = 2962,
}
_DR["G02963"] = {
    title = "Condição CLIMATE-2963: correlação 41.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002964", "SKU-GEN-002742" },
    notes = "Ver procedimento PROC-L1-02964 se aplicável.",
    gen_id = 2963,
}
_DR["G02964"] = {
    title = "Condição TRANS-2964: correlação 46.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002965", "SKU-GEN-002749" },
    notes = "Ver procedimento PROC-L1-02965 se aplicável.",
    gen_id = 2964,
}
_DR["G02965"] = {
    title = "Condição FUEL-2965: correlação 20.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002966", "SKU-GEN-002756" },
    notes = "Ver procedimento PROC-L1-02966 se aplicável.",
    gen_id = 2965,
}
_DR["G02966"] = {
    title = "Condição STEER-2966: correlação 86.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002967", "SKU-GEN-002763" },
    notes = "Ver procedimento PROC-L1-02967 se aplicável.",
    gen_id = 2966,
}
_DR["G02967"] = {
    title = "Condição HV-2967: correlação 22.2%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002968", "SKU-GEN-002770" },
    notes = "Ver procedimento PROC-L1-02968 se aplicável.",
    gen_id = 2967,
}
_DR["G02968"] = {
    title = "Condição BODY-2968: correlação 35.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002969", "SKU-GEN-002777" },
    notes = "Ver procedimento PROC-L1-02969 se aplicável.",
    gen_id = 2968,
}
_DR["G02969"] = {
    title = "Condição INFO-2969: correlação 71.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002970", "SKU-GEN-002784" },
    notes = "Ver procedimento PROC-L1-02970 se aplicável.",
    gen_id = 2969,
}
_DR["G02970"] = {
    title = "Condição ENGINE-2970: correlação 97.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002971", "SKU-GEN-002791" },
    notes = "Ver procedimento PROC-L1-02971 se aplicável.",
    gen_id = 2970,
}
_DR["G02971"] = {
    title = "Condição ABS-2971: correlação 48.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002972", "SKU-GEN-002798" },
    notes = "Ver procedimento PROC-L1-02972 se aplicável.",
    gen_id = 2971,
}
_DR["G02972"] = {
    title = "Condição SRS-2972: correlação 38.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002973", "SKU-GEN-002805" },
    notes = "Ver procedimento PROC-L1-02973 se aplicável.",
    gen_id = 2972,
}
_DR["G02973"] = {
    title = "Condição CLIMATE-2973: correlação 76.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002974", "SKU-GEN-002812" },
    notes = "Ver procedimento PROC-L1-02974 se aplicável.",
    gen_id = 2973,
}
_DR["G02974"] = {
    title = "Condição TRANS-2974: correlação 93.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002975", "SKU-GEN-002819" },
    notes = "Ver procedimento PROC-L1-02975 se aplicável.",
    gen_id = 2974,
}
_DR["G02975"] = {
    title = "Condição FUEL-2975: correlação 78.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002976", "SKU-GEN-002826" },
    notes = "Ver procedimento PROC-L1-02976 se aplicável.",
    gen_id = 2975,
}
_DR["G02976"] = {
    title = "Condição STEER-2976: correlação 11.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002977", "SKU-GEN-002833" },
    notes = "Ver procedimento PROC-L1-02977 se aplicável.",
    gen_id = 2976,
}
_DR["G02977"] = {
    title = "Condição HV-2977: correlação 92.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002978", "SKU-GEN-002840" },
    notes = "Ver procedimento PROC-L1-02978 se aplicável.",
    gen_id = 2977,
}
_DR["G02978"] = {
    title = "Condição BODY-2978: correlação 86.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002979", "SKU-GEN-002847" },
    notes = "Ver procedimento PROC-L1-02979 se aplicável.",
    gen_id = 2978,
}
_DR["G02979"] = {
    title = "Condição INFO-2979: correlação 16.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002980", "SKU-GEN-002854" },
    notes = "Ver procedimento PROC-L1-02980 se aplicável.",
    gen_id = 2979,
}
_DR["G02980"] = {
    title = "Condição ENGINE-2980: correlação 62.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002981", "SKU-GEN-002861" },
    notes = "Ver procedimento PROC-L1-02981 se aplicável.",
    gen_id = 2980,
}
_DR["G02981"] = {
    title = "Condição ABS-2981: correlação 49.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002982", "SKU-GEN-002868" },
    notes = "Ver procedimento PROC-L1-02982 se aplicável.",
    gen_id = 2981,
}
_DR["G02982"] = {
    title = "Condição SRS-2982: correlação 48.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002983", "SKU-GEN-002875" },
    notes = "Ver procedimento PROC-L1-02983 se aplicável.",
    gen_id = 2982,
}
_DR["G02983"] = {
    title = "Condição CLIMATE-2983: correlação 91.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002984", "SKU-GEN-002882" },
    notes = "Ver procedimento PROC-L1-02984 se aplicável.",
    gen_id = 2983,
}
_DR["G02984"] = {
    title = "Condição TRANS-2984: correlação 31.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002985", "SKU-GEN-002889" },
    notes = "Ver procedimento PROC-L1-02985 se aplicável.",
    gen_id = 2984,
}
_DR["G02985"] = {
    title = "Condição FUEL-2985: correlação 61.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002986", "SKU-GEN-002896" },
    notes = "Ver procedimento PROC-L1-02986 se aplicável.",
    gen_id = 2985,
}
_DR["G02986"] = {
    title = "Condição STEER-2986: correlação 32.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002987", "SKU-GEN-002903" },
    notes = "Ver procedimento PROC-L1-02987 se aplicável.",
    gen_id = 2986,
}
_DR["G02987"] = {
    title = "Condição HV-2987: correlação 82.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002988", "SKU-GEN-002910" },
    notes = "Ver procedimento PROC-L1-02988 se aplicável.",
    gen_id = 2987,
}
_DR["G02988"] = {
    title = "Condição BODY-2988: correlação 26.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002989", "SKU-GEN-002917" },
    notes = "Ver procedimento PROC-L1-02989 se aplicável.",
    gen_id = 2988,
}
_DR["G02989"] = {
    title = "Condição INFO-2989: correlação 60.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-002990", "SKU-GEN-002924" },
    notes = "Ver procedimento PROC-L1-02990 se aplicável.",
    gen_id = 2989,
}
_DR["G02990"] = {
    title = "Condição ENGINE-2990: correlação 87.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-002991", "SKU-GEN-002931" },
    notes = "Ver procedimento PROC-L1-02991 se aplicável.",
    gen_id = 2990,
}
_DR["G02991"] = {
    title = "Condição ABS-2991: correlação 99.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-002992", "SKU-GEN-002938" },
    notes = "Ver procedimento PROC-L1-02992 se aplicável.",
    gen_id = 2991,
}
_DR["G02992"] = {
    title = "Condição SRS-2992: correlação 3.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-002993", "SKU-GEN-002945" },
    notes = "Ver procedimento PROC-L1-02993 se aplicável.",
    gen_id = 2992,
}
_DR["G02993"] = {
    title = "Condição CLIMATE-2993: correlação 18.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-002994", "SKU-GEN-002952" },
    notes = "Ver procedimento PROC-L1-02994 se aplicável.",
    gen_id = 2993,
}
_DR["G02994"] = {
    title = "Condição TRANS-2994: correlação 52.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-002995", "SKU-GEN-002959" },
    notes = "Ver procedimento PROC-L1-02995 se aplicável.",
    gen_id = 2994,
}
_DR["G02995"] = {
    title = "Condição FUEL-2995: correlação 43.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-002996", "SKU-GEN-002966" },
    notes = "Ver procedimento PROC-L1-02996 se aplicável.",
    gen_id = 2995,
}
_DR["G02996"] = {
    title = "Condição STEER-2996: correlação 92.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-002997", "SKU-GEN-002973" },
    notes = "Ver procedimento PROC-L1-02997 se aplicável.",
    gen_id = 2996,
}
_DR["G02997"] = {
    title = "Condição HV-2997: correlação 72.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-002998", "SKU-GEN-002980" },
    notes = "Ver procedimento PROC-L1-02998 se aplicável.",
    gen_id = 2997,
}
_DR["G02998"] = {
    title = "Condição BODY-2998: correlação 42.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-002999", "SKU-GEN-002987" },
    notes = "Ver procedimento PROC-L1-02999 se aplicável.",
    gen_id = 2998,
}
_DR["G02999"] = {
    title = "Condição INFO-2999: correlação 41.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003000", "SKU-GEN-002994" },
    notes = "Ver procedimento PROC-L1-03000 se aplicável.",
    gen_id = 2999,
}
_DR["G03000"] = {
    title = "Condição ENGINE-3000: correlação 14.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003001", "SKU-GEN-003001" },
    notes = "Ver procedimento PROC-L1-03001 se aplicável.",
    gen_id = 3000,
}
_DR["G03001"] = {
    title = "Condição ABS-3001: correlação 66.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003002", "SKU-GEN-003008" },
    notes = "Ver procedimento PROC-L1-03002 se aplicável.",
    gen_id = 3001,
}
_DR["G03002"] = {
    title = "Condição SRS-3002: correlação 96.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003003", "SKU-GEN-003015" },
    notes = "Ver procedimento PROC-L1-03003 se aplicável.",
    gen_id = 3002,
}
_DR["G03003"] = {
    title = "Condição CLIMATE-3003: correlação 7.3%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003004", "SKU-GEN-003022" },
    notes = "Ver procedimento PROC-L1-03004 se aplicável.",
    gen_id = 3003,
}
_DR["G03004"] = {
    title = "Condição TRANS-3004: correlação 25.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003005", "SKU-GEN-003029" },
    notes = "Ver procedimento PROC-L1-03005 se aplicável.",
    gen_id = 3004,
}
_DR["G03005"] = {
    title = "Condição FUEL-3005: correlação 73.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003006", "SKU-GEN-003036" },
    notes = "Ver procedimento PROC-L1-03006 se aplicável.",
    gen_id = 3005,
}
_DR["G03006"] = {
    title = "Condição STEER-3006: correlação 20.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003007", "SKU-GEN-003043" },
    notes = "Ver procedimento PROC-L1-03007 se aplicável.",
    gen_id = 3006,
}
_DR["G03007"] = {
    title = "Condição HV-3007: correlação 80.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003008", "SKU-GEN-003050" },
    notes = "Ver procedimento PROC-L1-03008 se aplicável.",
    gen_id = 3007,
}
_DR["G03008"] = {
    title = "Condição BODY-3008: correlação 98.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003009", "SKU-GEN-003057" },
    notes = "Ver procedimento PROC-L1-03009 se aplicável.",
    gen_id = 3008,
}
_DR["G03009"] = {
    title = "Condição INFO-3009: correlação 61.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003010", "SKU-GEN-003064" },
    notes = "Ver procedimento PROC-L1-03010 se aplicável.",
    gen_id = 3009,
}
_DR["G03010"] = {
    title = "Condição ENGINE-3010: correlação 65.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003011", "SKU-GEN-003071" },
    notes = "Ver procedimento PROC-L1-03011 se aplicável.",
    gen_id = 3010,
}
_DR["G03011"] = {
    title = "Condição ABS-3011: correlação 49.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003012", "SKU-GEN-003078" },
    notes = "Ver procedimento PROC-L1-03012 se aplicável.",
    gen_id = 3011,
}
_DR["G03012"] = {
    title = "Condição SRS-3012: correlação 26.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003013", "SKU-GEN-003085" },
    notes = "Ver procedimento PROC-L1-03013 se aplicável.",
    gen_id = 3012,
}
_DR["G03013"] = {
    title = "Condição CLIMATE-3013: correlação 19.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003014", "SKU-GEN-003092" },
    notes = "Ver procedimento PROC-L1-03014 se aplicável.",
    gen_id = 3013,
}
_DR["G03014"] = {
    title = "Condição TRANS-3014: correlação 14.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003015", "SKU-GEN-003099" },
    notes = "Ver procedimento PROC-L1-03015 se aplicável.",
    gen_id = 3014,
}
_DR["G03015"] = {
    title = "Condição FUEL-3015: correlação 42.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003016", "SKU-GEN-003106" },
    notes = "Ver procedimento PROC-L1-03016 se aplicável.",
    gen_id = 3015,
}
_DR["G03016"] = {
    title = "Condição STEER-3016: correlação 90.3%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003017", "SKU-GEN-003113" },
    notes = "Ver procedimento PROC-L1-03017 se aplicável.",
    gen_id = 3016,
}
_DR["G03017"] = {
    title = "Condição HV-3017: correlação 53.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003018", "SKU-GEN-003120" },
    notes = "Ver procedimento PROC-L1-03018 se aplicável.",
    gen_id = 3017,
}
_DR["G03018"] = {
    title = "Condição BODY-3018: correlação 64.0%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003019", "SKU-GEN-003127" },
    notes = "Ver procedimento PROC-L1-03019 se aplicável.",
    gen_id = 3018,
}
_DR["G03019"] = {
    title = "Condição INFO-3019: correlação 74.9%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003020", "SKU-GEN-003134" },
    notes = "Ver procedimento PROC-L1-03020 se aplicável.",
    gen_id = 3019,
}
_DR["G03020"] = {
    title = "Condição ENGINE-3020: correlação 52.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003021", "SKU-GEN-003141" },
    notes = "Ver procedimento PROC-L1-03021 se aplicável.",
    gen_id = 3020,
}
_DR["G03021"] = {
    title = "Condição ABS-3021: correlação 25.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003022", "SKU-GEN-003148" },
    notes = "Ver procedimento PROC-L1-03022 se aplicável.",
    gen_id = 3021,
}
_DR["G03022"] = {
    title = "Condição SRS-3022: correlação 43.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003023", "SKU-GEN-003155" },
    notes = "Ver procedimento PROC-L1-03023 se aplicável.",
    gen_id = 3022,
}
_DR["G03023"] = {
    title = "Condição CLIMATE-3023: correlação 53.0%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003024", "SKU-GEN-003162" },
    notes = "Ver procedimento PROC-L1-03024 se aplicável.",
    gen_id = 3023,
}
_DR["G03024"] = {
    title = "Condição TRANS-3024: correlação 51.3%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003025", "SKU-GEN-003169" },
    notes = "Ver procedimento PROC-L1-03025 se aplicável.",
    gen_id = 3024,
}
_DR["G03025"] = {
    title = "Condição FUEL-3025: correlação 84.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003026", "SKU-GEN-003176" },
    notes = "Ver procedimento PROC-L1-03026 se aplicável.",
    gen_id = 3025,
}
_DR["G03026"] = {
    title = "Condição STEER-3026: correlação 80.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003027", "SKU-GEN-003183" },
    notes = "Ver procedimento PROC-L1-03027 se aplicável.",
    gen_id = 3026,
}
_DR["G03027"] = {
    title = "Condição HV-3027: correlação 89.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003028", "SKU-GEN-003190" },
    notes = "Ver procedimento PROC-L1-03028 se aplicável.",
    gen_id = 3027,
}
_DR["G03028"] = {
    title = "Condição BODY-3028: correlação 8.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003029", "SKU-GEN-003197" },
    notes = "Ver procedimento PROC-L1-03029 se aplicável.",
    gen_id = 3028,
}
_DR["G03029"] = {
    title = "Condição INFO-3029: correlação 19.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003030", "SKU-GEN-003204" },
    notes = "Ver procedimento PROC-L1-03030 se aplicável.",
    gen_id = 3029,
}
_DR["G03030"] = {
    title = "Condição ENGINE-3030: correlação 28.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003031", "SKU-GEN-003211" },
    notes = "Ver procedimento PROC-L1-03031 se aplicável.",
    gen_id = 3030,
}
_DR["G03031"] = {
    title = "Condição ABS-3031: correlação 86.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003032", "SKU-GEN-003218" },
    notes = "Ver procedimento PROC-L1-03032 se aplicável.",
    gen_id = 3031,
}
_DR["G03032"] = {
    title = "Condição SRS-3032: correlação 83.6%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003033", "SKU-GEN-003225" },
    notes = "Ver procedimento PROC-L1-03033 se aplicável.",
    gen_id = 3032,
}
_DR["G03033"] = {
    title = "Condição CLIMATE-3033: correlação 41.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003034", "SKU-GEN-003232" },
    notes = "Ver procedimento PROC-L1-03034 se aplicável.",
    gen_id = 3033,
}
_DR["G03034"] = {
    title = "Condição TRANS-3034: correlação 1.5%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003035", "SKU-GEN-003239" },
    notes = "Ver procedimento PROC-L1-03035 se aplicável.",
    gen_id = 3034,
}
_DR["G03035"] = {
    title = "Condição FUEL-3035: correlação 73.3%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003036", "SKU-GEN-003246" },
    notes = "Ver procedimento PROC-L1-03036 se aplicável.",
    gen_id = 3035,
}
_DR["G03036"] = {
    title = "Condição STEER-3036: correlação 26.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003037", "SKU-GEN-003253" },
    notes = "Ver procedimento PROC-L1-03037 se aplicável.",
    gen_id = 3036,
}
_DR["G03037"] = {
    title = "Condição HV-3037: correlação 51.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003038", "SKU-GEN-003260" },
    notes = "Ver procedimento PROC-L1-03038 se aplicável.",
    gen_id = 3037,
}
_DR["G03038"] = {
    title = "Condição BODY-3038: correlação 92.3%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003039", "SKU-GEN-003267" },
    notes = "Ver procedimento PROC-L1-03039 se aplicável.",
    gen_id = 3038,
}
_DR["G03039"] = {
    title = "Condição INFO-3039: correlação 20.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003040", "SKU-GEN-003274" },
    notes = "Ver procedimento PROC-L1-03040 se aplicável.",
    gen_id = 3039,
}
_DR["G03040"] = {
    title = "Condição ENGINE-3040: correlação 23.1%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003041", "SKU-GEN-003281" },
    notes = "Ver procedimento PROC-L1-03041 se aplicável.",
    gen_id = 3040,
}
_DR["G03041"] = {
    title = "Condição ABS-3041: correlação 73.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003042", "SKU-GEN-003288" },
    notes = "Ver procedimento PROC-L1-03042 se aplicável.",
    gen_id = 3041,
}
_DR["G03042"] = {
    title = "Condição SRS-3042: correlação 57.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003043", "SKU-GEN-003295" },
    notes = "Ver procedimento PROC-L1-03043 se aplicável.",
    gen_id = 3042,
}
_DR["G03043"] = {
    title = "Condição CLIMATE-3043: correlação 60.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003044", "SKU-GEN-003302" },
    notes = "Ver procedimento PROC-L1-03044 se aplicável.",
    gen_id = 3043,
}
_DR["G03044"] = {
    title = "Condição TRANS-3044: correlação 24.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003045", "SKU-GEN-003309" },
    notes = "Ver procedimento PROC-L1-03045 se aplicável.",
    gen_id = 3044,
}
_DR["G03045"] = {
    title = "Condição FUEL-3045: correlação 55.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003046", "SKU-GEN-003316" },
    notes = "Ver procedimento PROC-L1-03046 se aplicável.",
    gen_id = 3045,
}
_DR["G03046"] = {
    title = "Condição STEER-3046: correlação 0.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003047", "SKU-GEN-003323" },
    notes = "Ver procedimento PROC-L1-03047 se aplicável.",
    gen_id = 3046,
}
_DR["G03047"] = {
    title = "Condição HV-3047: correlação 91.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003048", "SKU-GEN-003330" },
    notes = "Ver procedimento PROC-L1-03048 se aplicável.",
    gen_id = 3047,
}
_DR["G03048"] = {
    title = "Condição BODY-3048: correlação 13.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003049", "SKU-GEN-003337" },
    notes = "Ver procedimento PROC-L1-03049 se aplicável.",
    gen_id = 3048,
}
_DR["G03049"] = {
    title = "Condição INFO-3049: correlação 53.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003050", "SKU-GEN-003344" },
    notes = "Ver procedimento PROC-L1-03050 se aplicável.",
    gen_id = 3049,
}
_DR["G03050"] = {
    title = "Condição ENGINE-3050: correlação 96.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003051", "SKU-GEN-003351" },
    notes = "Ver procedimento PROC-L1-03051 se aplicável.",
    gen_id = 3050,
}
_DR["G03051"] = {
    title = "Condição ABS-3051: correlação 30.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003052", "SKU-GEN-003358" },
    notes = "Ver procedimento PROC-L1-03052 se aplicável.",
    gen_id = 3051,
}
_DR["G03052"] = {
    title = "Condição SRS-3052: correlação 45.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003053", "SKU-GEN-003365" },
    notes = "Ver procedimento PROC-L1-03053 se aplicável.",
    gen_id = 3052,
}
_DR["G03053"] = {
    title = "Condição CLIMATE-3053: correlação 70.1%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003054", "SKU-GEN-003372" },
    notes = "Ver procedimento PROC-L1-03054 se aplicável.",
    gen_id = 3053,
}
_DR["G03054"] = {
    title = "Condição TRANS-3054: correlação 21.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003055", "SKU-GEN-003379" },
    notes = "Ver procedimento PROC-L1-03055 se aplicável.",
    gen_id = 3054,
}
_DR["G03055"] = {
    title = "Condição FUEL-3055: correlação 64.9%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003056", "SKU-GEN-003386" },
    notes = "Ver procedimento PROC-L1-03056 se aplicável.",
    gen_id = 3055,
}
_DR["G03056"] = {
    title = "Condição STEER-3056: correlação 62.4%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003057", "SKU-GEN-003393" },
    notes = "Ver procedimento PROC-L1-03057 se aplicável.",
    gen_id = 3056,
}
_DR["G03057"] = {
    title = "Condição HV-3057: correlação 2.9%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003058", "SKU-GEN-003400" },
    notes = "Ver procedimento PROC-L1-03058 se aplicável.",
    gen_id = 3057,
}
_DR["G03058"] = {
    title = "Condição BODY-3058: correlação 93.7%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003059", "SKU-GEN-003407" },
    notes = "Ver procedimento PROC-L1-03059 se aplicável.",
    gen_id = 3058,
}
_DR["G03059"] = {
    title = "Condição INFO-3059: correlação 0.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003060", "SKU-GEN-003414" },
    notes = "Ver procedimento PROC-L1-03060 se aplicável.",
    gen_id = 3059,
}
_DR["G03060"] = {
    title = "Condição ENGINE-3060: correlação 79.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003061", "SKU-GEN-003421" },
    notes = "Ver procedimento PROC-L1-03061 se aplicável.",
    gen_id = 3060,
}
_DR["G03061"] = {
    title = "Condição ABS-3061: correlação 18.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003062", "SKU-GEN-003428" },
    notes = "Ver procedimento PROC-L1-03062 se aplicável.",
    gen_id = 3061,
}
_DR["G03062"] = {
    title = "Condição SRS-3062: correlação 31.2%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003063", "SKU-GEN-003435" },
    notes = "Ver procedimento PROC-L1-03063 se aplicável.",
    gen_id = 3062,
}
_DR["G03063"] = {
    title = "Condição CLIMATE-3063: correlação 6.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003064", "SKU-GEN-003442" },
    notes = "Ver procedimento PROC-L1-03064 se aplicável.",
    gen_id = 3063,
}
_DR["G03064"] = {
    title = "Condição TRANS-3064: correlação 77.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003065", "SKU-GEN-003449" },
    notes = "Ver procedimento PROC-L1-03065 se aplicável.",
    gen_id = 3064,
}
_DR["G03065"] = {
    title = "Condição FUEL-3065: correlação 74.1%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003066", "SKU-GEN-003456" },
    notes = "Ver procedimento PROC-L1-03066 se aplicável.",
    gen_id = 3065,
}
_DR["G03066"] = {
    title = "Condição STEER-3066: correlação 89.6%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003067", "SKU-GEN-003463" },
    notes = "Ver procedimento PROC-L1-03067 se aplicável.",
    gen_id = 3066,
}
_DR["G03067"] = {
    title = "Condição HV-3067: correlação 23.1%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003068", "SKU-GEN-003470" },
    notes = "Ver procedimento PROC-L1-03068 se aplicável.",
    gen_id = 3067,
}
_DR["G03068"] = {
    title = "Condição BODY-3068: correlação 65.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003069", "SKU-GEN-003477" },
    notes = "Ver procedimento PROC-L1-03069 se aplicável.",
    gen_id = 3068,
}
_DR["G03069"] = {
    title = "Condição INFO-3069: correlação 37.5%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003070", "SKU-GEN-003484" },
    notes = "Ver procedimento PROC-L1-03070 se aplicável.",
    gen_id = 3069,
}
_DR["G03070"] = {
    title = "Condição ENGINE-3070: correlação 35.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003071", "SKU-GEN-003491" },
    notes = "Ver procedimento PROC-L1-03071 se aplicável.",
    gen_id = 3070,
}
_DR["G03071"] = {
    title = "Condição ABS-3071: correlação 57.1%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003072", "SKU-GEN-003498" },
    notes = "Ver procedimento PROC-L1-03072 se aplicável.",
    gen_id = 3071,
}
_DR["G03072"] = {
    title = "Condição SRS-3072: correlação 86.1%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003073", "SKU-GEN-003505" },
    notes = "Ver procedimento PROC-L1-03073 se aplicável.",
    gen_id = 3072,
}
_DR["G03073"] = {
    title = "Condição CLIMATE-3073: correlação 83.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003074", "SKU-GEN-003512" },
    notes = "Ver procedimento PROC-L1-03074 se aplicável.",
    gen_id = 3073,
}
_DR["G03074"] = {
    title = "Condição TRANS-3074: correlação 57.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003075", "SKU-GEN-003519" },
    notes = "Ver procedimento PROC-L1-03075 se aplicável.",
    gen_id = 3074,
}
_DR["G03075"] = {
    title = "Condição FUEL-3075: correlação 97.5%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003076", "SKU-GEN-003526" },
    notes = "Ver procedimento PROC-L1-03076 se aplicável.",
    gen_id = 3075,
}
_DR["G03076"] = {
    title = "Condição STEER-3076: correlação 78.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003077", "SKU-GEN-003533" },
    notes = "Ver procedimento PROC-L1-03077 se aplicável.",
    gen_id = 3076,
}
_DR["G03077"] = {
    title = "Condição HV-3077: correlação 69.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003078", "SKU-GEN-003540" },
    notes = "Ver procedimento PROC-L1-03078 se aplicável.",
    gen_id = 3077,
}
_DR["G03078"] = {
    title = "Condição BODY-3078: correlação 35.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003079", "SKU-GEN-003547" },
    notes = "Ver procedimento PROC-L1-03079 se aplicável.",
    gen_id = 3078,
}
_DR["G03079"] = {
    title = "Condição INFO-3079: correlação 22.0%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003080", "SKU-GEN-003554" },
    notes = "Ver procedimento PROC-L1-03080 se aplicável.",
    gen_id = 3079,
}
_DR["G03080"] = {
    title = "Condição ENGINE-3080: correlação 32.5%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003081", "SKU-GEN-003561" },
    notes = "Ver procedimento PROC-L1-03081 se aplicável.",
    gen_id = 3080,
}
_DR["G03081"] = {
    title = "Condição ABS-3081: correlação 7.2%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003082", "SKU-GEN-003568" },
    notes = "Ver procedimento PROC-L1-03082 se aplicável.",
    gen_id = 3081,
}
_DR["G03082"] = {
    title = "Condição SRS-3082: correlação 8.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003083", "SKU-GEN-003575" },
    notes = "Ver procedimento PROC-L1-03083 se aplicável.",
    gen_id = 3082,
}
_DR["G03083"] = {
    title = "Condição CLIMATE-3083: correlação 78.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003084", "SKU-GEN-003582" },
    notes = "Ver procedimento PROC-L1-03084 se aplicável.",
    gen_id = 3083,
}
_DR["G03084"] = {
    title = "Condição TRANS-3084: correlação 87.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003085", "SKU-GEN-003589" },
    notes = "Ver procedimento PROC-L1-03085 se aplicável.",
    gen_id = 3084,
}
_DR["G03085"] = {
    title = "Condição FUEL-3085: correlação 4.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003086", "SKU-GEN-003596" },
    notes = "Ver procedimento PROC-L1-03086 se aplicável.",
    gen_id = 3085,
}
_DR["G03086"] = {
    title = "Condição STEER-3086: correlação 17.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003087", "SKU-GEN-003603" },
    notes = "Ver procedimento PROC-L1-03087 se aplicável.",
    gen_id = 3086,
}
_DR["G03087"] = {
    title = "Condição HV-3087: correlação 58.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003088", "SKU-GEN-003610" },
    notes = "Ver procedimento PROC-L1-03088 se aplicável.",
    gen_id = 3087,
}
_DR["G03088"] = {
    title = "Condição BODY-3088: correlação 60.6%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003089", "SKU-GEN-003617" },
    notes = "Ver procedimento PROC-L1-03089 se aplicável.",
    gen_id = 3088,
}
_DR["G03089"] = {
    title = "Condição INFO-3089: correlação 25.2%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003090", "SKU-GEN-003624" },
    notes = "Ver procedimento PROC-L1-03090 se aplicável.",
    gen_id = 3089,
}
_DR["G03090"] = {
    title = "Condição ENGINE-3090: correlação 17.2%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003091", "SKU-GEN-003631" },
    notes = "Ver procedimento PROC-L1-03091 se aplicável.",
    gen_id = 3090,
}
_DR["G03091"] = {
    title = "Condição ABS-3091: correlação 97.4%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003092", "SKU-GEN-003638" },
    notes = "Ver procedimento PROC-L1-03092 se aplicável.",
    gen_id = 3091,
}
_DR["G03092"] = {
    title = "Condição SRS-3092: correlação 10.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003093", "SKU-GEN-003645" },
    notes = "Ver procedimento PROC-L1-03093 se aplicável.",
    gen_id = 3092,
}
_DR["G03093"] = {
    title = "Condição CLIMATE-3093: correlação 88.5%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003094", "SKU-GEN-003652" },
    notes = "Ver procedimento PROC-L1-03094 se aplicável.",
    gen_id = 3093,
}
_DR["G03094"] = {
    title = "Condição TRANS-3094: correlação 73.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003095", "SKU-GEN-003659" },
    notes = "Ver procedimento PROC-L1-03095 se aplicável.",
    gen_id = 3094,
}
_DR["G03095"] = {
    title = "Condição FUEL-3095: correlação 73.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003096", "SKU-GEN-003666" },
    notes = "Ver procedimento PROC-L1-03096 se aplicável.",
    gen_id = 3095,
}
_DR["G03096"] = {
    title = "Condição STEER-3096: correlação 74.9%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003097", "SKU-GEN-003673" },
    notes = "Ver procedimento PROC-L1-03097 se aplicável.",
    gen_id = 3096,
}
_DR["G03097"] = {
    title = "Condição HV-3097: correlação 30.4%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003098", "SKU-GEN-003680" },
    notes = "Ver procedimento PROC-L1-03098 se aplicável.",
    gen_id = 3097,
}
_DR["G03098"] = {
    title = "Condição BODY-3098: correlação 93.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003099", "SKU-GEN-003687" },
    notes = "Ver procedimento PROC-L1-03099 se aplicável.",
    gen_id = 3098,
}
_DR["G03099"] = {
    title = "Condição INFO-3099: correlação 85.6%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003100", "SKU-GEN-003694" },
    notes = "Ver procedimento PROC-L1-03100 se aplicável.",
    gen_id = 3099,
}
_DR["G03100"] = {
    title = "Condição ENGINE-3100: correlação 34.0%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003101", "SKU-GEN-003701" },
    notes = "Ver procedimento PROC-L1-03101 se aplicável.",
    gen_id = 3100,
}
_DR["G03101"] = {
    title = "Condição ABS-3101: correlação 73.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003102", "SKU-GEN-003708" },
    notes = "Ver procedimento PROC-L1-03102 se aplicável.",
    gen_id = 3101,
}
_DR["G03102"] = {
    title = "Condição SRS-3102: correlação 61.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003103", "SKU-GEN-003715" },
    notes = "Ver procedimento PROC-L1-03103 se aplicável.",
    gen_id = 3102,
}
_DR["G03103"] = {
    title = "Condição CLIMATE-3103: correlação 28.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003104", "SKU-GEN-003722" },
    notes = "Ver procedimento PROC-L1-03104 se aplicável.",
    gen_id = 3103,
}
_DR["G03104"] = {
    title = "Condição TRANS-3104: correlação 83.6%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003105", "SKU-GEN-003729" },
    notes = "Ver procedimento PROC-L1-03105 se aplicável.",
    gen_id = 3104,
}
_DR["G03105"] = {
    title = "Condição FUEL-3105: correlação 87.6%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003106", "SKU-GEN-003736" },
    notes = "Ver procedimento PROC-L1-03106 se aplicável.",
    gen_id = 3105,
}
_DR["G03106"] = {
    title = "Condição STEER-3106: correlação 71.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003107", "SKU-GEN-003743" },
    notes = "Ver procedimento PROC-L1-03107 se aplicável.",
    gen_id = 3106,
}
_DR["G03107"] = {
    title = "Condição HV-3107: correlação 7.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003108", "SKU-GEN-003750" },
    notes = "Ver procedimento PROC-L1-03108 se aplicável.",
    gen_id = 3107,
}
_DR["G03108"] = {
    title = "Condição BODY-3108: correlação 27.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003109", "SKU-GEN-003757" },
    notes = "Ver procedimento PROC-L1-03109 se aplicável.",
    gen_id = 3108,
}
_DR["G03109"] = {
    title = "Condição INFO-3109: correlação 37.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003110", "SKU-GEN-003764" },
    notes = "Ver procedimento PROC-L1-03110 se aplicável.",
    gen_id = 3109,
}
_DR["G03110"] = {
    title = "Condição ENGINE-3110: correlação 83.3%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003111", "SKU-GEN-003771" },
    notes = "Ver procedimento PROC-L1-03111 se aplicável.",
    gen_id = 3110,
}
_DR["G03111"] = {
    title = "Condição ABS-3111: correlação 47.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003112", "SKU-GEN-003778" },
    notes = "Ver procedimento PROC-L1-03112 se aplicável.",
    gen_id = 3111,
}
_DR["G03112"] = {
    title = "Condição SRS-3112: correlação 23.3%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003113", "SKU-GEN-003785" },
    notes = "Ver procedimento PROC-L1-03113 se aplicável.",
    gen_id = 3112,
}
_DR["G03113"] = {
    title = "Condição CLIMATE-3113: correlação 51.6%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003114", "SKU-GEN-003792" },
    notes = "Ver procedimento PROC-L1-03114 se aplicável.",
    gen_id = 3113,
}
_DR["G03114"] = {
    title = "Condição TRANS-3114: correlação 36.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003115", "SKU-GEN-003799" },
    notes = "Ver procedimento PROC-L1-03115 se aplicável.",
    gen_id = 3114,
}
_DR["G03115"] = {
    title = "Condição FUEL-3115: correlação 97.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003116", "SKU-GEN-003806" },
    notes = "Ver procedimento PROC-L1-03116 se aplicável.",
    gen_id = 3115,
}
_DR["G03116"] = {
    title = "Condição STEER-3116: correlação 31.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003117", "SKU-GEN-003813" },
    notes = "Ver procedimento PROC-L1-03117 se aplicável.",
    gen_id = 3116,
}
_DR["G03117"] = {
    title = "Condição HV-3117: correlação 53.0%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003118", "SKU-GEN-003820" },
    notes = "Ver procedimento PROC-L1-03118 se aplicável.",
    gen_id = 3117,
}
_DR["G03118"] = {
    title = "Condição BODY-3118: correlação 6.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003119", "SKU-GEN-003827" },
    notes = "Ver procedimento PROC-L1-03119 se aplicável.",
    gen_id = 3118,
}
_DR["G03119"] = {
    title = "Condição INFO-3119: correlação 33.4%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003120", "SKU-GEN-003834" },
    notes = "Ver procedimento PROC-L1-03120 se aplicável.",
    gen_id = 3119,
}
_DR["G03120"] = {
    title = "Condição ENGINE-3120: correlação 64.7%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003121", "SKU-GEN-003841" },
    notes = "Ver procedimento PROC-L1-03121 se aplicável.",
    gen_id = 3120,
}
_DR["G03121"] = {
    title = "Condição ABS-3121: correlação 40.7%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003122", "SKU-GEN-003848" },
    notes = "Ver procedimento PROC-L1-03122 se aplicável.",
    gen_id = 3121,
}
_DR["G03122"] = {
    title = "Condição SRS-3122: correlação 83.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003123", "SKU-GEN-003855" },
    notes = "Ver procedimento PROC-L1-03123 se aplicável.",
    gen_id = 3122,
}
_DR["G03123"] = {
    title = "Condição CLIMATE-3123: correlação 4.7%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003124", "SKU-GEN-003862" },
    notes = "Ver procedimento PROC-L1-03124 se aplicável.",
    gen_id = 3123,
}
_DR["G03124"] = {
    title = "Condição TRANS-3124: correlação 28.1%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003125", "SKU-GEN-003869" },
    notes = "Ver procedimento PROC-L1-03125 se aplicável.",
    gen_id = 3124,
}
_DR["G03125"] = {
    title = "Condição FUEL-3125: correlação 13.0%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003126", "SKU-GEN-003876" },
    notes = "Ver procedimento PROC-L1-03126 se aplicável.",
    gen_id = 3125,
}
_DR["G03126"] = {
    title = "Condição STEER-3126: correlação 10.1%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003127", "SKU-GEN-003883" },
    notes = "Ver procedimento PROC-L1-03127 se aplicável.",
    gen_id = 3126,
}
_DR["G03127"] = {
    title = "Condição HV-3127: correlação 89.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003128", "SKU-GEN-003890" },
    notes = "Ver procedimento PROC-L1-03128 se aplicável.",
    gen_id = 3127,
}
_DR["G03128"] = {
    title = "Condição BODY-3128: correlação 99.2%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003129", "SKU-GEN-003897" },
    notes = "Ver procedimento PROC-L1-03129 se aplicável.",
    gen_id = 3128,
}
_DR["G03129"] = {
    title = "Condição INFO-3129: correlação 66.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003130", "SKU-GEN-003904" },
    notes = "Ver procedimento PROC-L1-03130 se aplicável.",
    gen_id = 3129,
}
_DR["G03130"] = {
    title = "Condição ENGINE-3130: correlação 5.4%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003131", "SKU-GEN-003911" },
    notes = "Ver procedimento PROC-L1-03131 se aplicável.",
    gen_id = 3130,
}
_DR["G03131"] = {
    title = "Condição ABS-3131: correlação 41.0%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003132", "SKU-GEN-003918" },
    notes = "Ver procedimento PROC-L1-03132 se aplicável.",
    gen_id = 3131,
}
_DR["G03132"] = {
    title = "Condição SRS-3132: correlação 93.9%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003133", "SKU-GEN-003925" },
    notes = "Ver procedimento PROC-L1-03133 se aplicável.",
    gen_id = 3132,
}
_DR["G03133"] = {
    title = "Condição CLIMATE-3133: correlação 15.4%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003134", "SKU-GEN-003932" },
    notes = "Ver procedimento PROC-L1-03134 se aplicável.",
    gen_id = 3133,
}
_DR["G03134"] = {
    title = "Condição TRANS-3134: correlação 64.0%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003135", "SKU-GEN-003939" },
    notes = "Ver procedimento PROC-L1-03135 se aplicável.",
    gen_id = 3134,
}
_DR["G03135"] = {
    title = "Condição FUEL-3135: correlação 48.2%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003136", "SKU-GEN-003946" },
    notes = "Ver procedimento PROC-L1-03136 se aplicável.",
    gen_id = 3135,
}
_DR["G03136"] = {
    title = "Condição STEER-3136: correlação 7.2%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003137", "SKU-GEN-003953" },
    notes = "Ver procedimento PROC-L1-03137 se aplicável.",
    gen_id = 3136,
}
_DR["G03137"] = {
    title = "Condição HV-3137: correlação 18.8%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003138", "SKU-GEN-003960" },
    notes = "Ver procedimento PROC-L1-03138 se aplicável.",
    gen_id = 3137,
}
_DR["G03138"] = {
    title = "Condição BODY-3138: correlação 10.8%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003139", "SKU-GEN-003967" },
    notes = "Ver procedimento PROC-L1-03139 se aplicável.",
    gen_id = 3138,
}
_DR["G03139"] = {
    title = "Condição INFO-3139: correlação 40.3%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003140", "SKU-GEN-003974" },
    notes = "Ver procedimento PROC-L1-03140 se aplicável.",
    gen_id = 3139,
}
_DR["G03140"] = {
    title = "Condição ENGINE-3140: correlação 34.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003141", "SKU-GEN-003981" },
    notes = "Ver procedimento PROC-L1-03141 se aplicável.",
    gen_id = 3140,
}
_DR["G03141"] = {
    title = "Condição ABS-3141: correlação 1.8%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003142", "SKU-GEN-003988" },
    notes = "Ver procedimento PROC-L1-03142 se aplicável.",
    gen_id = 3141,
}
_DR["G03142"] = {
    title = "Condição SRS-3142: correlação 39.4%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003143", "SKU-GEN-003995" },
    notes = "Ver procedimento PROC-L1-03143 se aplicável.",
    gen_id = 3142,
}
_DR["G03143"] = {
    title = "Condição CLIMATE-3143: correlação 6.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003144", "SKU-GEN-004002" },
    notes = "Ver procedimento PROC-L1-03144 se aplicável.",
    gen_id = 3143,
}
_DR["G03144"] = {
    title = "Condição TRANS-3144: correlação 7.8%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003145", "SKU-GEN-004009" },
    notes = "Ver procedimento PROC-L1-03145 se aplicável.",
    gen_id = 3144,
}
_DR["G03145"] = {
    title = "Condição FUEL-3145: correlação 11.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003146", "SKU-GEN-004016" },
    notes = "Ver procedimento PROC-L1-03146 se aplicável.",
    gen_id = 3145,
}
_DR["G03146"] = {
    title = "Condição STEER-3146: correlação 77.8%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003147", "SKU-GEN-004023" },
    notes = "Ver procedimento PROC-L1-03147 se aplicável.",
    gen_id = 3146,
}
_DR["G03147"] = {
    title = "Condição HV-3147: correlação 19.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003148", "SKU-GEN-004030" },
    notes = "Ver procedimento PROC-L1-03148 se aplicável.",
    gen_id = 3147,
}
_DR["G03148"] = {
    title = "Condição BODY-3148: correlação 0.1%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003149", "SKU-GEN-004037" },
    notes = "Ver procedimento PROC-L1-03149 se aplicável.",
    gen_id = 3148,
}
_DR["G03149"] = {
    title = "Condição INFO-3149: correlação 52.7%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003150", "SKU-GEN-004044" },
    notes = "Ver procedimento PROC-L1-03150 se aplicável.",
    gen_id = 3149,
}
_DR["G03150"] = {
    title = "Condição ENGINE-3150: correlação 50.6%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003151", "SKU-GEN-004051" },
    notes = "Ver procedimento PROC-L1-03151 se aplicável.",
    gen_id = 3150,
}
_DR["G03151"] = {
    title = "Condição ABS-3151: correlação 66.6%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003152", "SKU-GEN-004058" },
    notes = "Ver procedimento PROC-L1-03152 se aplicável.",
    gen_id = 3151,
}
_DR["G03152"] = {
    title = "Condição SRS-3152: correlação 89.0%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003153", "SKU-GEN-004065" },
    notes = "Ver procedimento PROC-L1-03153 se aplicável.",
    gen_id = 3152,
}
_DR["G03153"] = {
    title = "Condição CLIMATE-3153: correlação 77.9%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003154", "SKU-GEN-004072" },
    notes = "Ver procedimento PROC-L1-03154 se aplicável.",
    gen_id = 3153,
}
_DR["G03154"] = {
    title = "Condição TRANS-3154: correlação 34.7%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003155", "SKU-GEN-004079" },
    notes = "Ver procedimento PROC-L1-03155 se aplicável.",
    gen_id = 3154,
}
_DR["G03155"] = {
    title = "Condição FUEL-3155: correlação 47.4%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003156", "SKU-GEN-004086" },
    notes = "Ver procedimento PROC-L1-03156 se aplicável.",
    gen_id = 3155,
}
_DR["G03156"] = {
    title = "Condição STEER-3156: correlação 79.0%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003157", "SKU-GEN-004093" },
    notes = "Ver procedimento PROC-L1-03157 se aplicável.",
    gen_id = 3156,
}
_DR["G03157"] = {
    title = "Condição HV-3157: correlação 39.6%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003158", "SKU-GEN-004100" },
    notes = "Ver procedimento PROC-L1-03158 se aplicável.",
    gen_id = 3157,
}
_DR["G03158"] = {
    title = "Condição BODY-3158: correlação 27.5%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003159", "SKU-GEN-004107" },
    notes = "Ver procedimento PROC-L1-03159 se aplicável.",
    gen_id = 3158,
}
_DR["G03159"] = {
    title = "Condição INFO-3159: correlação 80.1%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003160", "SKU-GEN-004114" },
    notes = "Ver procedimento PROC-L1-03160 se aplicável.",
    gen_id = 3159,
}
_DR["G03160"] = {
    title = "Condição ENGINE-3160: correlação 19.9%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003161", "SKU-GEN-004121" },
    notes = "Ver procedimento PROC-L1-03161 se aplicável.",
    gen_id = 3160,
}
_DR["G03161"] = {
    title = "Condição ABS-3161: correlação 25.9%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003162", "SKU-GEN-004128" },
    notes = "Ver procedimento PROC-L1-03162 se aplicável.",
    gen_id = 3161,
}
_DR["G03162"] = {
    title = "Condição SRS-3162: correlação 73.5%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003163", "SKU-GEN-004135" },
    notes = "Ver procedimento PROC-L1-03163 se aplicável.",
    gen_id = 3162,
}
_DR["G03163"] = {
    title = "Condição CLIMATE-3163: correlação 21.2%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003164", "SKU-GEN-004142" },
    notes = "Ver procedimento PROC-L1-03164 se aplicável.",
    gen_id = 3163,
}
_DR["G03164"] = {
    title = "Condição TRANS-3164: correlação 78.2%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003165", "SKU-GEN-004149" },
    notes = "Ver procedimento PROC-L1-03165 se aplicável.",
    gen_id = 3164,
}
_DR["G03165"] = {
    title = "Condição FUEL-3165: correlação 32.8%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003166", "SKU-GEN-004156" },
    notes = "Ver procedimento PROC-L1-03166 se aplicável.",
    gen_id = 3165,
}
_DR["G03166"] = {
    title = "Condição STEER-3166: correlação 19.7%",
    subsystem = "STEER",
    severity = 2,
    related_skus = { "SKU-GEN-003167", "SKU-GEN-004163" },
    notes = "Ver procedimento PROC-L1-03167 se aplicável.",
    gen_id = 3166,
}
_DR["G03167"] = {
    title = "Condição HV-3167: correlação 5.3%",
    subsystem = "HV",
    severity = 3,
    related_skus = { "SKU-GEN-003168", "SKU-GEN-004170" },
    notes = "Ver procedimento PROC-L1-03168 se aplicável.",
    gen_id = 3167,
}
_DR["G03168"] = {
    title = "Condição BODY-3168: correlação 43.9%",
    subsystem = "BODY",
    severity = 4,
    related_skus = { "SKU-GEN-003169", "SKU-GEN-004177" },
    notes = "Ver procedimento PROC-L1-03169 se aplicável.",
    gen_id = 3168,
}
_DR["G03169"] = {
    title = "Condição INFO-3169: correlação 50.8%",
    subsystem = "INFO",
    severity = 5,
    related_skus = { "SKU-GEN-003170", "SKU-GEN-004184" },
    notes = "Ver procedimento PROC-L1-03170 se aplicável.",
    gen_id = 3169,
}
_DR["G03170"] = {
    title = "Condição ENGINE-3170: correlação 94.8%",
    subsystem = "ENGINE",
    severity = 1,
    related_skus = { "SKU-GEN-003171", "SKU-GEN-004191" },
    notes = "Ver procedimento PROC-L1-03171 se aplicável.",
    gen_id = 3170,
}
_DR["G03171"] = {
    title = "Condição ABS-3171: correlação 46.5%",
    subsystem = "ABS",
    severity = 2,
    related_skus = { "SKU-GEN-003172", "SKU-GEN-004198" },
    notes = "Ver procedimento PROC-L1-03172 se aplicável.",
    gen_id = 3171,
}
_DR["G03172"] = {
    title = "Condição SRS-3172: correlação 80.7%",
    subsystem = "SRS",
    severity = 3,
    related_skus = { "SKU-GEN-003173", "SKU-GEN-004205" },
    notes = "Ver procedimento PROC-L1-03173 se aplicável.",
    gen_id = 3172,
}
_DR["G03173"] = {
    title = "Condição CLIMATE-3173: correlação 65.8%",
    subsystem = "CLIMATE",
    severity = 4,
    related_skus = { "SKU-GEN-003174", "SKU-GEN-004212" },
    notes = "Ver procedimento PROC-L1-03174 se aplicável.",
    gen_id = 3173,
}
_DR["G03174"] = {
    title = "Condição TRANS-3174: correlação 32.4%",
    subsystem = "TRANS",
    severity = 5,
    related_skus = { "SKU-GEN-003175", "SKU-GEN-004219" },
    notes = "Ver procedimento PROC-L1-03175 se aplicável.",
    gen_id = 3174,
}
_DR["G03175"] = {
    title = "Condição FUEL-3175: correlação 64.7%",
    subsystem = "FUEL",
    severity = 1,
    related_skus = { "SKU-GEN-003176", "SKU-GEN-004226" },
    notes = "Ver procedimento PROC-L1-03176 se aplicável.",
    gen_id = 3175,
}

MECHANIC_GEN_DTC_COUNT = 3175
