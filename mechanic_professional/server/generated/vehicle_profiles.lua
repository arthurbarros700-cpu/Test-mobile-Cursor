--[[
    Perfis de veículo sintéticos (cadastro master para diagnóstico / estoque).
    Gerado por tools/gen-megadata.mjs
]]

VEHICLE_PROFILES = VEHICLE_PROFILES or {}
local _VP = VEHICLE_PROFILES
_VP["VP-000001"] = {
    label = "RioVeículos modelo 2001 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 10137,
    wear_curve = 0.1544,
    preferred_supplier_ids = { "SUP-000002", "SUP-000004" },
    gen_id = 1,
}
_VP["VP-000002"] = {
    label = "NorteAuto modelo 2002 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 10274,
    wear_curve = 0.2224,
    preferred_supplier_ids = { "SUP-000003", "SUP-000007" },
    gen_id = 2,
}
_VP["VP-000003"] = {
    label = "DeltaMob modelo 2003 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 10411,
    wear_curve = 0.6858,
    preferred_supplier_ids = { "SUP-000004", "SUP-000010" },
    gen_id = 3,
}
_VP["VP-000004"] = {
    label = "OrionTruck modelo 2004 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 10548,
    wear_curve = 0.1869,
    preferred_supplier_ids = { "SUP-000005", "SUP-000013" },
    gen_id = 4,
}
_VP["VP-000005"] = {
    label = "SigmaBike modelo 2005 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 10685,
    wear_curve = 0.4755,
    preferred_supplier_ids = { "SUP-000006", "SUP-000016" },
    gen_id = 5,
}
_VP["VP-000006"] = {
    label = "AstraMotors modelo 2006 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 10822,
    wear_curve = 0.5081,
    preferred_supplier_ids = { "SUP-000007", "SUP-000019" },
    gen_id = 6,
}
_VP["VP-000007"] = {
    label = "RioVeículos modelo 2007 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 10959,
    wear_curve = 0.2196,
    preferred_supplier_ids = { "SUP-000008", "SUP-000022" },
    gen_id = 7,
}
_VP["VP-000008"] = {
    label = "NorteAuto modelo 2008 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 11096,
    wear_curve = 0.2598,
    preferred_supplier_ids = { "SUP-000009", "SUP-000025" },
    gen_id = 8,
}
_VP["VP-000009"] = {
    label = "DeltaMob modelo 2009 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 11233,
    wear_curve = 0.7186,
    preferred_supplier_ids = { "SUP-000010", "SUP-000028" },
    gen_id = 9,
}
_VP["VP-000010"] = {
    label = "OrionTruck modelo 2010 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 11370,
    wear_curve = 0.9072,
    preferred_supplier_ids = { "SUP-000011", "SUP-000031" },
    gen_id = 10,
}
_VP["VP-000011"] = {
    label = "SigmaBike modelo 2011 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 11507,
    wear_curve = 0.4228,
    preferred_supplier_ids = { "SUP-000012", "SUP-000034" },
    gen_id = 11,
}
_VP["VP-000012"] = {
    label = "AstraMotors modelo 2012 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 11644,
    wear_curve = 0.6271,
    preferred_supplier_ids = { "SUP-000013", "SUP-000037" },
    gen_id = 12,
}
_VP["VP-000013"] = {
    label = "RioVeículos modelo 2013 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 11781,
    wear_curve = 0.3034,
    preferred_supplier_ids = { "SUP-000014", "SUP-000040" },
    gen_id = 13,
}
_VP["VP-000014"] = {
    label = "NorteAuto modelo 2014 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 11918,
    wear_curve = 0.1731,
    preferred_supplier_ids = { "SUP-000015", "SUP-000043" },
    gen_id = 14,
}
_VP["VP-000015"] = {
    label = "DeltaMob modelo 2015 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 12055,
    wear_curve = 0.9034,
    preferred_supplier_ids = { "SUP-000016", "SUP-000046" },
    gen_id = 15,
}
_VP["VP-000016"] = {
    label = "OrionTruck modelo 2016 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 12192,
    wear_curve = 0.3776,
    preferred_supplier_ids = { "SUP-000017", "SUP-000049" },
    gen_id = 16,
}
_VP["VP-000017"] = {
    label = "SigmaBike modelo 2017 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 12329,
    wear_curve = 0.8560,
    preferred_supplier_ids = { "SUP-000018", "SUP-000052" },
    gen_id = 17,
}
_VP["VP-000018"] = {
    label = "AstraMotors modelo 2018 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 12466,
    wear_curve = 0.3722,
    preferred_supplier_ids = { "SUP-000019", "SUP-000055" },
    gen_id = 18,
}
_VP["VP-000019"] = {
    label = "RioVeículos modelo 2019 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 12603,
    wear_curve = 0.9959,
    preferred_supplier_ids = { "SUP-000020", "SUP-000058" },
    gen_id = 19,
}
_VP["VP-000020"] = {
    label = "NorteAuto modelo 2020 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 12740,
    wear_curve = 0.2121,
    preferred_supplier_ids = { "SUP-000021", "SUP-000061" },
    gen_id = 20,
}
_VP["VP-000021"] = {
    label = "DeltaMob modelo 2021 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 12877,
    wear_curve = 0.2962,
    preferred_supplier_ids = { "SUP-000022", "SUP-000064" },
    gen_id = 21,
}
_VP["VP-000022"] = {
    label = "OrionTruck modelo 2022 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 13014,
    wear_curve = 0.3290,
    preferred_supplier_ids = { "SUP-000023", "SUP-000067" },
    gen_id = 22,
}
_VP["VP-000023"] = {
    label = "SigmaBike modelo 2023 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 13151,
    wear_curve = 0.6824,
    preferred_supplier_ids = { "SUP-000024", "SUP-000070" },
    gen_id = 23,
}
_VP["VP-000024"] = {
    label = "AstraMotors modelo 2024 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 13288,
    wear_curve = 0.3620,
    preferred_supplier_ids = { "SUP-000025", "SUP-000073" },
    gen_id = 24,
}
_VP["VP-000025"] = {
    label = "RioVeículos modelo 2025 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 13425,
    wear_curve = 0.7142,
    preferred_supplier_ids = { "SUP-000026", "SUP-000076" },
    gen_id = 25,
}
_VP["VP-000026"] = {
    label = "NorteAuto modelo 2026 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 13562,
    wear_curve = 0.4660,
    preferred_supplier_ids = { "SUP-000027", "SUP-000079" },
    gen_id = 26,
}
_VP["VP-000027"] = {
    label = "DeltaMob modelo 2027 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 13699,
    wear_curve = 0.4880,
    preferred_supplier_ids = { "SUP-000028", "SUP-000082" },
    gen_id = 27,
}
_VP["VP-000028"] = {
    label = "OrionTruck modelo 2028 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 13836,
    wear_curve = 0.9066,
    preferred_supplier_ids = { "SUP-000029", "SUP-000085" },
    gen_id = 28,
}
_VP["VP-000029"] = {
    label = "SigmaBike modelo 2029 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 13973,
    wear_curve = 0.2488,
    preferred_supplier_ids = { "SUP-000030", "SUP-000088" },
    gen_id = 29,
}
_VP["VP-000030"] = {
    label = "AstraMotors modelo 2030 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 14110,
    wear_curve = 0.6731,
    preferred_supplier_ids = { "SUP-000031", "SUP-000091" },
    gen_id = 30,
}
_VP["VP-000031"] = {
    label = "RioVeículos modelo 2031 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 14247,
    wear_curve = 0.4180,
    preferred_supplier_ids = { "SUP-000032", "SUP-000094" },
    gen_id = 31,
}
_VP["VP-000032"] = {
    label = "NorteAuto modelo 2032 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 14384,
    wear_curve = 0.2514,
    preferred_supplier_ids = { "SUP-000033", "SUP-000097" },
    gen_id = 32,
}
_VP["VP-000033"] = {
    label = "DeltaMob modelo 2033 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 14521,
    wear_curve = 0.5875,
    preferred_supplier_ids = { "SUP-000034", "SUP-000100" },
    gen_id = 33,
}
_VP["VP-000034"] = {
    label = "OrionTruck modelo 2034 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 14658,
    wear_curve = 0.2489,
    preferred_supplier_ids = { "SUP-000035", "SUP-000103" },
    gen_id = 34,
}
_VP["VP-000035"] = {
    label = "SigmaBike modelo 2035 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 14795,
    wear_curve = 0.7651,
    preferred_supplier_ids = { "SUP-000036", "SUP-000106" },
    gen_id = 35,
}
_VP["VP-000036"] = {
    label = "AstraMotors modelo 2036 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 14932,
    wear_curve = 0.4942,
    preferred_supplier_ids = { "SUP-000037", "SUP-000109" },
    gen_id = 36,
}
_VP["VP-000037"] = {
    label = "RioVeículos modelo 2037 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 15069,
    wear_curve = 0.7251,
    preferred_supplier_ids = { "SUP-000038", "SUP-000112" },
    gen_id = 37,
}
_VP["VP-000038"] = {
    label = "NorteAuto modelo 2038 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 15206,
    wear_curve = 0.6721,
    preferred_supplier_ids = { "SUP-000039", "SUP-000115" },
    gen_id = 38,
}
_VP["VP-000039"] = {
    label = "DeltaMob modelo 2039 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 15343,
    wear_curve = 0.1776,
    preferred_supplier_ids = { "SUP-000040", "SUP-000118" },
    gen_id = 39,
}
_VP["VP-000040"] = {
    label = "OrionTruck modelo 2040 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 15480,
    wear_curve = 0.5659,
    preferred_supplier_ids = { "SUP-000041", "SUP-000121" },
    gen_id = 40,
}
_VP["VP-000041"] = {
    label = "SigmaBike modelo 2041 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 15617,
    wear_curve = 0.5276,
    preferred_supplier_ids = { "SUP-000042", "SUP-000124" },
    gen_id = 41,
}
_VP["VP-000042"] = {
    label = "AstraMotors modelo 2042 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 15754,
    wear_curve = 0.2716,
    preferred_supplier_ids = { "SUP-000043", "SUP-000127" },
    gen_id = 42,
}
_VP["VP-000043"] = {
    label = "RioVeículos modelo 2043 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 15891,
    wear_curve = 0.1939,
    preferred_supplier_ids = { "SUP-000044", "SUP-000130" },
    gen_id = 43,
}
_VP["VP-000044"] = {
    label = "NorteAuto modelo 2044 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 16028,
    wear_curve = 0.7478,
    preferred_supplier_ids = { "SUP-000045", "SUP-000133" },
    gen_id = 44,
}
_VP["VP-000045"] = {
    label = "DeltaMob modelo 2045 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 16165,
    wear_curve = 0.4629,
    preferred_supplier_ids = { "SUP-000046", "SUP-000136" },
    gen_id = 45,
}
_VP["VP-000046"] = {
    label = "OrionTruck modelo 2046 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 16302,
    wear_curve = 0.6790,
    preferred_supplier_ids = { "SUP-000047", "SUP-000139" },
    gen_id = 46,
}
_VP["VP-000047"] = {
    label = "SigmaBike modelo 2047 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 16439,
    wear_curve = 0.1584,
    preferred_supplier_ids = { "SUP-000048", "SUP-000142" },
    gen_id = 47,
}
_VP["VP-000048"] = {
    label = "AstraMotors modelo 2048 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 16576,
    wear_curve = 0.7288,
    preferred_supplier_ids = { "SUP-000049", "SUP-000145" },
    gen_id = 48,
}
_VP["VP-000049"] = {
    label = "RioVeículos modelo 2049 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 16713,
    wear_curve = 0.2187,
    preferred_supplier_ids = { "SUP-000050", "SUP-000148" },
    gen_id = 49,
}
_VP["VP-000050"] = {
    label = "NorteAuto modelo 2050 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 16850,
    wear_curve = 0.9558,
    preferred_supplier_ids = { "SUP-000051", "SUP-000151" },
    gen_id = 50,
}
_VP["VP-000051"] = {
    label = "DeltaMob modelo 2051 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 16987,
    wear_curve = 0.6485,
    preferred_supplier_ids = { "SUP-000052", "SUP-000154" },
    gen_id = 51,
}
_VP["VP-000052"] = {
    label = "OrionTruck modelo 2052 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 17124,
    wear_curve = 0.7770,
    preferred_supplier_ids = { "SUP-000053", "SUP-000157" },
    gen_id = 52,
}
_VP["VP-000053"] = {
    label = "SigmaBike modelo 2053 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 17261,
    wear_curve = 0.8452,
    preferred_supplier_ids = { "SUP-000054", "SUP-000160" },
    gen_id = 53,
}
_VP["VP-000054"] = {
    label = "AstraMotors modelo 2054 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 17398,
    wear_curve = 0.5541,
    preferred_supplier_ids = { "SUP-000055", "SUP-000163" },
    gen_id = 54,
}
_VP["VP-000055"] = {
    label = "RioVeículos modelo 2055 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 17535,
    wear_curve = 0.6033,
    preferred_supplier_ids = { "SUP-000056", "SUP-000166" },
    gen_id = 55,
}
_VP["VP-000056"] = {
    label = "NorteAuto modelo 2056 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 17672,
    wear_curve = 0.5159,
    preferred_supplier_ids = { "SUP-000057", "SUP-000169" },
    gen_id = 56,
}
_VP["VP-000057"] = {
    label = "DeltaMob modelo 2057 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 17809,
    wear_curve = 0.8185,
    preferred_supplier_ids = { "SUP-000058", "SUP-000172" },
    gen_id = 57,
}
_VP["VP-000058"] = {
    label = "OrionTruck modelo 2058 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 17946,
    wear_curve = 0.1793,
    preferred_supplier_ids = { "SUP-000059", "SUP-000175" },
    gen_id = 58,
}
_VP["VP-000059"] = {
    label = "SigmaBike modelo 2059 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 18083,
    wear_curve = 0.7590,
    preferred_supplier_ids = { "SUP-000060", "SUP-000178" },
    gen_id = 59,
}
_VP["VP-000060"] = {
    label = "AstraMotors modelo 2060 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 18220,
    wear_curve = 0.2040,
    preferred_supplier_ids = { "SUP-000061", "SUP-000181" },
    gen_id = 60,
}
_VP["VP-000061"] = {
    label = "RioVeículos modelo 2061 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 18357,
    wear_curve = 0.4360,
    preferred_supplier_ids = { "SUP-000062", "SUP-000184" },
    gen_id = 61,
}
_VP["VP-000062"] = {
    label = "NorteAuto modelo 2062 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 18494,
    wear_curve = 0.8879,
    preferred_supplier_ids = { "SUP-000063", "SUP-000187" },
    gen_id = 62,
}
_VP["VP-000063"] = {
    label = "DeltaMob modelo 2063 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 18631,
    wear_curve = 0.7065,
    preferred_supplier_ids = { "SUP-000064", "SUP-000190" },
    gen_id = 63,
}
_VP["VP-000064"] = {
    label = "OrionTruck modelo 2064 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 18768,
    wear_curve = 0.2828,
    preferred_supplier_ids = { "SUP-000065", "SUP-000193" },
    gen_id = 64,
}
_VP["VP-000065"] = {
    label = "SigmaBike modelo 2065 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 18905,
    wear_curve = 0.2653,
    preferred_supplier_ids = { "SUP-000066", "SUP-000196" },
    gen_id = 65,
}
_VP["VP-000066"] = {
    label = "AstraMotors modelo 2066 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 19042,
    wear_curve = 0.2633,
    preferred_supplier_ids = { "SUP-000067", "SUP-000199" },
    gen_id = 66,
}
_VP["VP-000067"] = {
    label = "RioVeículos modelo 2067 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 19179,
    wear_curve = 0.9002,
    preferred_supplier_ids = { "SUP-000068", "SUP-000202" },
    gen_id = 67,
}
_VP["VP-000068"] = {
    label = "NorteAuto modelo 2068 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 19316,
    wear_curve = 0.2677,
    preferred_supplier_ids = { "SUP-000069", "SUP-000205" },
    gen_id = 68,
}
_VP["VP-000069"] = {
    label = "DeltaMob modelo 2069 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 19453,
    wear_curve = 0.8328,
    preferred_supplier_ids = { "SUP-000070", "SUP-000208" },
    gen_id = 69,
}
_VP["VP-000070"] = {
    label = "OrionTruck modelo 2070 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 19590,
    wear_curve = 0.8783,
    preferred_supplier_ids = { "SUP-000071", "SUP-000211" },
    gen_id = 70,
}
_VP["VP-000071"] = {
    label = "SigmaBike modelo 2071 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 19727,
    wear_curve = 0.7603,
    preferred_supplier_ids = { "SUP-000072", "SUP-000214" },
    gen_id = 71,
}
_VP["VP-000072"] = {
    label = "AstraMotors modelo 2072 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 19864,
    wear_curve = 0.8206,
    preferred_supplier_ids = { "SUP-000073", "SUP-000217" },
    gen_id = 72,
}
_VP["VP-000073"] = {
    label = "RioVeículos modelo 2073 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 20001,
    wear_curve = 0.7498,
    preferred_supplier_ids = { "SUP-000074", "SUP-000220" },
    gen_id = 73,
}
_VP["VP-000074"] = {
    label = "NorteAuto modelo 2074 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 20138,
    wear_curve = 0.5631,
    preferred_supplier_ids = { "SUP-000075", "SUP-000223" },
    gen_id = 74,
}
_VP["VP-000075"] = {
    label = "DeltaMob modelo 2075 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 20275,
    wear_curve = 0.3710,
    preferred_supplier_ids = { "SUP-000076", "SUP-000226" },
    gen_id = 75,
}
_VP["VP-000076"] = {
    label = "OrionTruck modelo 2076 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 20412,
    wear_curve = 0.3055,
    preferred_supplier_ids = { "SUP-000077", "SUP-000229" },
    gen_id = 76,
}
_VP["VP-000077"] = {
    label = "SigmaBike modelo 2077 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 20549,
    wear_curve = 0.8842,
    preferred_supplier_ids = { "SUP-000078", "SUP-000232" },
    gen_id = 77,
}
_VP["VP-000078"] = {
    label = "AstraMotors modelo 2078 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 20686,
    wear_curve = 0.5102,
    preferred_supplier_ids = { "SUP-000079", "SUP-000235" },
    gen_id = 78,
}
_VP["VP-000079"] = {
    label = "RioVeículos modelo 2079 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 20823,
    wear_curve = 0.7423,
    preferred_supplier_ids = { "SUP-000080", "SUP-000238" },
    gen_id = 79,
}
_VP["VP-000080"] = {
    label = "NorteAuto modelo 2080 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 20960,
    wear_curve = 0.2893,
    preferred_supplier_ids = { "SUP-000081", "SUP-000241" },
    gen_id = 80,
}
_VP["VP-000081"] = {
    label = "DeltaMob modelo 2081 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 21097,
    wear_curve = 0.3038,
    preferred_supplier_ids = { "SUP-000082", "SUP-000244" },
    gen_id = 81,
}
_VP["VP-000082"] = {
    label = "OrionTruck modelo 2082 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 21234,
    wear_curve = 0.3121,
    preferred_supplier_ids = { "SUP-000083", "SUP-000247" },
    gen_id = 82,
}
_VP["VP-000083"] = {
    label = "SigmaBike modelo 2083 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 21371,
    wear_curve = 0.3642,
    preferred_supplier_ids = { "SUP-000084", "SUP-000250" },
    gen_id = 83,
}
_VP["VP-000084"] = {
    label = "AstraMotors modelo 2084 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 21508,
    wear_curve = 0.6641,
    preferred_supplier_ids = { "SUP-000085", "SUP-000253" },
    gen_id = 84,
}
_VP["VP-000085"] = {
    label = "RioVeículos modelo 2085 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 21645,
    wear_curve = 0.5231,
    preferred_supplier_ids = { "SUP-000086", "SUP-000256" },
    gen_id = 85,
}
_VP["VP-000086"] = {
    label = "NorteAuto modelo 2086 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 21782,
    wear_curve = 0.2381,
    preferred_supplier_ids = { "SUP-000087", "SUP-000259" },
    gen_id = 86,
}
_VP["VP-000087"] = {
    label = "DeltaMob modelo 2087 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 21919,
    wear_curve = 0.4432,
    preferred_supplier_ids = { "SUP-000088", "SUP-000262" },
    gen_id = 87,
}
_VP["VP-000088"] = {
    label = "OrionTruck modelo 2088 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 22056,
    wear_curve = 0.9800,
    preferred_supplier_ids = { "SUP-000089", "SUP-000265" },
    gen_id = 88,
}
_VP["VP-000089"] = {
    label = "SigmaBike modelo 2089 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 22193,
    wear_curve = 0.8033,
    preferred_supplier_ids = { "SUP-000090", "SUP-000268" },
    gen_id = 89,
}
_VP["VP-000090"] = {
    label = "AstraMotors modelo 2090 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 22330,
    wear_curve = 0.6688,
    preferred_supplier_ids = { "SUP-000091", "SUP-000271" },
    gen_id = 90,
}
_VP["VP-000091"] = {
    label = "RioVeículos modelo 2091 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 22467,
    wear_curve = 0.8275,
    preferred_supplier_ids = { "SUP-000092", "SUP-000274" },
    gen_id = 91,
}
_VP["VP-000092"] = {
    label = "NorteAuto modelo 2092 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 22604,
    wear_curve = 0.9875,
    preferred_supplier_ids = { "SUP-000093", "SUP-000277" },
    gen_id = 92,
}
_VP["VP-000093"] = {
    label = "DeltaMob modelo 2093 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 22741,
    wear_curve = 0.6155,
    preferred_supplier_ids = { "SUP-000094", "SUP-000280" },
    gen_id = 93,
}
_VP["VP-000094"] = {
    label = "OrionTruck modelo 2094 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 22878,
    wear_curve = 0.7226,
    preferred_supplier_ids = { "SUP-000095", "SUP-000283" },
    gen_id = 94,
}
_VP["VP-000095"] = {
    label = "SigmaBike modelo 2095 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 23015,
    wear_curve = 0.2850,
    preferred_supplier_ids = { "SUP-000096", "SUP-000286" },
    gen_id = 95,
}
_VP["VP-000096"] = {
    label = "AstraMotors modelo 2096 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 23152,
    wear_curve = 0.4048,
    preferred_supplier_ids = { "SUP-000097", "SUP-000289" },
    gen_id = 96,
}
_VP["VP-000097"] = {
    label = "RioVeículos modelo 2097 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 23289,
    wear_curve = 0.9380,
    preferred_supplier_ids = { "SUP-000098", "SUP-000292" },
    gen_id = 97,
}
_VP["VP-000098"] = {
    label = "NorteAuto modelo 2098 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 23426,
    wear_curve = 0.8666,
    preferred_supplier_ids = { "SUP-000099", "SUP-000295" },
    gen_id = 98,
}
_VP["VP-000099"] = {
    label = "DeltaMob modelo 2099 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 23563,
    wear_curve = 0.5645,
    preferred_supplier_ids = { "SUP-000100", "SUP-000298" },
    gen_id = 99,
}
_VP["VP-000100"] = {
    label = "OrionTruck modelo 2100 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 23700,
    wear_curve = 0.6836,
    preferred_supplier_ids = { "SUP-000101", "SUP-000301" },
    gen_id = 100,
}
_VP["VP-000101"] = {
    label = "SigmaBike modelo 2101 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 23837,
    wear_curve = 0.5254,
    preferred_supplier_ids = { "SUP-000102", "SUP-000304" },
    gen_id = 101,
}
_VP["VP-000102"] = {
    label = "AstraMotors modelo 2102 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 23974,
    wear_curve = 0.9195,
    preferred_supplier_ids = { "SUP-000103", "SUP-000307" },
    gen_id = 102,
}
_VP["VP-000103"] = {
    label = "RioVeículos modelo 2103 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 24111,
    wear_curve = 0.2806,
    preferred_supplier_ids = { "SUP-000104", "SUP-000310" },
    gen_id = 103,
}
_VP["VP-000104"] = {
    label = "NorteAuto modelo 2104 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 24248,
    wear_curve = 0.7144,
    preferred_supplier_ids = { "SUP-000105", "SUP-000313" },
    gen_id = 104,
}
_VP["VP-000105"] = {
    label = "DeltaMob modelo 2105 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 24385,
    wear_curve = 0.4957,
    preferred_supplier_ids = { "SUP-000106", "SUP-000316" },
    gen_id = 105,
}
_VP["VP-000106"] = {
    label = "OrionTruck modelo 2106 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 24522,
    wear_curve = 0.3673,
    preferred_supplier_ids = { "SUP-000107", "SUP-000319" },
    gen_id = 106,
}
_VP["VP-000107"] = {
    label = "SigmaBike modelo 2107 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 24659,
    wear_curve = 0.5768,
    preferred_supplier_ids = { "SUP-000108", "SUP-000322" },
    gen_id = 107,
}
_VP["VP-000108"] = {
    label = "AstraMotors modelo 2108 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 24796,
    wear_curve = 0.7188,
    preferred_supplier_ids = { "SUP-000109", "SUP-000325" },
    gen_id = 108,
}
_VP["VP-000109"] = {
    label = "RioVeículos modelo 2109 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 24933,
    wear_curve = 0.1949,
    preferred_supplier_ids = { "SUP-000110", "SUP-000328" },
    gen_id = 109,
}
_VP["VP-000110"] = {
    label = "NorteAuto modelo 2110 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 25070,
    wear_curve = 0.4718,
    preferred_supplier_ids = { "SUP-000111", "SUP-000331" },
    gen_id = 110,
}
_VP["VP-000111"] = {
    label = "DeltaMob modelo 2111 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 25207,
    wear_curve = 0.5331,
    preferred_supplier_ids = { "SUP-000112", "SUP-000334" },
    gen_id = 111,
}
_VP["VP-000112"] = {
    label = "OrionTruck modelo 2112 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 25344,
    wear_curve = 0.7450,
    preferred_supplier_ids = { "SUP-000113", "SUP-000337" },
    gen_id = 112,
}
_VP["VP-000113"] = {
    label = "SigmaBike modelo 2113 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 25481,
    wear_curve = 0.6636,
    preferred_supplier_ids = { "SUP-000114", "SUP-000340" },
    gen_id = 113,
}
_VP["VP-000114"] = {
    label = "AstraMotors modelo 2114 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 25618,
    wear_curve = 0.2176,
    preferred_supplier_ids = { "SUP-000115", "SUP-000343" },
    gen_id = 114,
}
_VP["VP-000115"] = {
    label = "RioVeículos modelo 2115 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 25755,
    wear_curve = 0.4464,
    preferred_supplier_ids = { "SUP-000116", "SUP-000346" },
    gen_id = 115,
}
_VP["VP-000116"] = {
    label = "NorteAuto modelo 2116 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 25892,
    wear_curve = 0.7908,
    preferred_supplier_ids = { "SUP-000117", "SUP-000349" },
    gen_id = 116,
}
_VP["VP-000117"] = {
    label = "DeltaMob modelo 2117 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 26029,
    wear_curve = 0.7896,
    preferred_supplier_ids = { "SUP-000118", "SUP-000352" },
    gen_id = 117,
}
_VP["VP-000118"] = {
    label = "OrionTruck modelo 2118 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 26166,
    wear_curve = 0.4551,
    preferred_supplier_ids = { "SUP-000119", "SUP-000355" },
    gen_id = 118,
}
_VP["VP-000119"] = {
    label = "SigmaBike modelo 2119 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 26303,
    wear_curve = 0.7263,
    preferred_supplier_ids = { "SUP-000120", "SUP-000358" },
    gen_id = 119,
}
_VP["VP-000120"] = {
    label = "AstraMotors modelo 2120 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 26440,
    wear_curve = 0.4421,
    preferred_supplier_ids = { "SUP-000121", "SUP-000361" },
    gen_id = 120,
}
_VP["VP-000121"] = {
    label = "RioVeículos modelo 2121 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 26577,
    wear_curve = 0.3437,
    preferred_supplier_ids = { "SUP-000122", "SUP-000364" },
    gen_id = 121,
}
_VP["VP-000122"] = {
    label = "NorteAuto modelo 2122 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 26714,
    wear_curve = 0.2079,
    preferred_supplier_ids = { "SUP-000123", "SUP-000367" },
    gen_id = 122,
}
_VP["VP-000123"] = {
    label = "DeltaMob modelo 2123 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 26851,
    wear_curve = 0.5087,
    preferred_supplier_ids = { "SUP-000124", "SUP-000370" },
    gen_id = 123,
}
_VP["VP-000124"] = {
    label = "OrionTruck modelo 2124 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 26988,
    wear_curve = 0.3793,
    preferred_supplier_ids = { "SUP-000125", "SUP-000373" },
    gen_id = 124,
}
_VP["VP-000125"] = {
    label = "SigmaBike modelo 2125 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 27125,
    wear_curve = 0.5105,
    preferred_supplier_ids = { "SUP-000126", "SUP-000376" },
    gen_id = 125,
}
_VP["VP-000126"] = {
    label = "AstraMotors modelo 2126 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 27262,
    wear_curve = 0.7767,
    preferred_supplier_ids = { "SUP-000127", "SUP-000379" },
    gen_id = 126,
}
_VP["VP-000127"] = {
    label = "RioVeículos modelo 2127 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 27399,
    wear_curve = 0.3054,
    preferred_supplier_ids = { "SUP-000128", "SUP-000382" },
    gen_id = 127,
}
_VP["VP-000128"] = {
    label = "NorteAuto modelo 2128 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 27536,
    wear_curve = 0.6629,
    preferred_supplier_ids = { "SUP-000129", "SUP-000385" },
    gen_id = 128,
}
_VP["VP-000129"] = {
    label = "DeltaMob modelo 2129 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 27673,
    wear_curve = 0.3848,
    preferred_supplier_ids = { "SUP-000130", "SUP-000388" },
    gen_id = 129,
}
_VP["VP-000130"] = {
    label = "OrionTruck modelo 2130 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 27810,
    wear_curve = 0.3357,
    preferred_supplier_ids = { "SUP-000131", "SUP-000391" },
    gen_id = 130,
}
_VP["VP-000131"] = {
    label = "SigmaBike modelo 2131 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 27947,
    wear_curve = 0.4666,
    preferred_supplier_ids = { "SUP-000132", "SUP-000394" },
    gen_id = 131,
}
_VP["VP-000132"] = {
    label = "AstraMotors modelo 2132 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 28084,
    wear_curve = 0.2755,
    preferred_supplier_ids = { "SUP-000133", "SUP-000397" },
    gen_id = 132,
}
_VP["VP-000133"] = {
    label = "RioVeículos modelo 2133 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 28221,
    wear_curve = 0.8708,
    preferred_supplier_ids = { "SUP-000134", "SUP-000400" },
    gen_id = 133,
}
_VP["VP-000134"] = {
    label = "NorteAuto modelo 2134 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 28358,
    wear_curve = 0.1765,
    preferred_supplier_ids = { "SUP-000135", "SUP-000403" },
    gen_id = 134,
}
_VP["VP-000135"] = {
    label = "DeltaMob modelo 2135 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 28495,
    wear_curve = 0.1992,
    preferred_supplier_ids = { "SUP-000136", "SUP-000406" },
    gen_id = 135,
}
_VP["VP-000136"] = {
    label = "OrionTruck modelo 2136 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 28632,
    wear_curve = 0.9075,
    preferred_supplier_ids = { "SUP-000137", "SUP-000409" },
    gen_id = 136,
}
_VP["VP-000137"] = {
    label = "SigmaBike modelo 2137 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 28769,
    wear_curve = 0.4300,
    preferred_supplier_ids = { "SUP-000138", "SUP-000412" },
    gen_id = 137,
}
_VP["VP-000138"] = {
    label = "AstraMotors modelo 2138 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 28906,
    wear_curve = 0.6208,
    preferred_supplier_ids = { "SUP-000139", "SUP-000415" },
    gen_id = 138,
}
_VP["VP-000139"] = {
    label = "RioVeículos modelo 2139 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 29043,
    wear_curve = 0.3945,
    preferred_supplier_ids = { "SUP-000140", "SUP-000418" },
    gen_id = 139,
}
_VP["VP-000140"] = {
    label = "NorteAuto modelo 2140 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 29180,
    wear_curve = 0.3385,
    preferred_supplier_ids = { "SUP-000141", "SUP-000421" },
    gen_id = 140,
}
_VP["VP-000141"] = {
    label = "DeltaMob modelo 2141 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 29317,
    wear_curve = 0.4888,
    preferred_supplier_ids = { "SUP-000142", "SUP-000424" },
    gen_id = 141,
}
_VP["VP-000142"] = {
    label = "OrionTruck modelo 2142 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 29454,
    wear_curve = 0.5324,
    preferred_supplier_ids = { "SUP-000143", "SUP-000427" },
    gen_id = 142,
}
_VP["VP-000143"] = {
    label = "SigmaBike modelo 2143 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 29591,
    wear_curve = 0.9815,
    preferred_supplier_ids = { "SUP-000144", "SUP-000430" },
    gen_id = 143,
}
_VP["VP-000144"] = {
    label = "AstraMotors modelo 2144 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 29728,
    wear_curve = 0.9266,
    preferred_supplier_ids = { "SUP-000145", "SUP-000433" },
    gen_id = 144,
}
_VP["VP-000145"] = {
    label = "RioVeículos modelo 2145 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 29865,
    wear_curve = 0.2793,
    preferred_supplier_ids = { "SUP-000146", "SUP-000436" },
    gen_id = 145,
}
_VP["VP-000146"] = {
    label = "NorteAuto modelo 2146 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 30002,
    wear_curve = 0.9744,
    preferred_supplier_ids = { "SUP-000147", "SUP-000439" },
    gen_id = 146,
}
_VP["VP-000147"] = {
    label = "DeltaMob modelo 2147 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 30139,
    wear_curve = 0.7339,
    preferred_supplier_ids = { "SUP-000148", "SUP-000442" },
    gen_id = 147,
}
_VP["VP-000148"] = {
    label = "OrionTruck modelo 2148 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 30276,
    wear_curve = 0.2813,
    preferred_supplier_ids = { "SUP-000149", "SUP-000445" },
    gen_id = 148,
}
_VP["VP-000149"] = {
    label = "SigmaBike modelo 2149 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 30413,
    wear_curve = 0.1959,
    preferred_supplier_ids = { "SUP-000150", "SUP-000448" },
    gen_id = 149,
}
_VP["VP-000150"] = {
    label = "AstraMotors modelo 2150 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 30550,
    wear_curve = 0.1677,
    preferred_supplier_ids = { "SUP-000151", "SUP-000451" },
    gen_id = 150,
}
_VP["VP-000151"] = {
    label = "RioVeículos modelo 2151 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 30687,
    wear_curve = 0.8745,
    preferred_supplier_ids = { "SUP-000152", "SUP-000454" },
    gen_id = 151,
}
_VP["VP-000152"] = {
    label = "NorteAuto modelo 2152 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 30824,
    wear_curve = 0.2594,
    preferred_supplier_ids = { "SUP-000153", "SUP-000457" },
    gen_id = 152,
}
_VP["VP-000153"] = {
    label = "DeltaMob modelo 2153 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 30961,
    wear_curve = 0.6687,
    preferred_supplier_ids = { "SUP-000154", "SUP-000460" },
    gen_id = 153,
}
_VP["VP-000154"] = {
    label = "OrionTruck modelo 2154 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 31098,
    wear_curve = 0.2709,
    preferred_supplier_ids = { "SUP-000155", "SUP-000463" },
    gen_id = 154,
}
_VP["VP-000155"] = {
    label = "SigmaBike modelo 2155 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 31235,
    wear_curve = 0.4283,
    preferred_supplier_ids = { "SUP-000156", "SUP-000466" },
    gen_id = 155,
}
_VP["VP-000156"] = {
    label = "AstraMotors modelo 2156 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 31372,
    wear_curve = 0.9336,
    preferred_supplier_ids = { "SUP-000157", "SUP-000469" },
    gen_id = 156,
}
_VP["VP-000157"] = {
    label = "RioVeículos modelo 2157 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 31509,
    wear_curve = 0.7607,
    preferred_supplier_ids = { "SUP-000158", "SUP-000472" },
    gen_id = 157,
}
_VP["VP-000158"] = {
    label = "NorteAuto modelo 2158 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 31646,
    wear_curve = 0.8127,
    preferred_supplier_ids = { "SUP-000159", "SUP-000475" },
    gen_id = 158,
}
_VP["VP-000159"] = {
    label = "DeltaMob modelo 2159 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 31783,
    wear_curve = 0.3922,
    preferred_supplier_ids = { "SUP-000160", "SUP-000478" },
    gen_id = 159,
}
_VP["VP-000160"] = {
    label = "OrionTruck modelo 2160 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 31920,
    wear_curve = 0.7977,
    preferred_supplier_ids = { "SUP-000161", "SUP-000481" },
    gen_id = 160,
}
_VP["VP-000161"] = {
    label = "SigmaBike modelo 2161 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 32057,
    wear_curve = 0.9140,
    preferred_supplier_ids = { "SUP-000162", "SUP-000484" },
    gen_id = 161,
}
_VP["VP-000162"] = {
    label = "AstraMotors modelo 2162 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 32194,
    wear_curve = 0.5732,
    preferred_supplier_ids = { "SUP-000163", "SUP-000487" },
    gen_id = 162,
}
_VP["VP-000163"] = {
    label = "RioVeículos modelo 2163 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 32331,
    wear_curve = 0.8501,
    preferred_supplier_ids = { "SUP-000164", "SUP-000490" },
    gen_id = 163,
}
_VP["VP-000164"] = {
    label = "NorteAuto modelo 2164 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 32468,
    wear_curve = 0.8836,
    preferred_supplier_ids = { "SUP-000165", "SUP-000493" },
    gen_id = 164,
}
_VP["VP-000165"] = {
    label = "DeltaMob modelo 2165 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 32605,
    wear_curve = 0.8785,
    preferred_supplier_ids = { "SUP-000166", "SUP-000496" },
    gen_id = 165,
}
_VP["VP-000166"] = {
    label = "OrionTruck modelo 2166 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 32742,
    wear_curve = 0.1684,
    preferred_supplier_ids = { "SUP-000167", "SUP-000499" },
    gen_id = 166,
}
_VP["VP-000167"] = {
    label = "SigmaBike modelo 2167 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 32879,
    wear_curve = 0.8742,
    preferred_supplier_ids = { "SUP-000168", "SUP-000502" },
    gen_id = 167,
}
_VP["VP-000168"] = {
    label = "AstraMotors modelo 2168 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 33016,
    wear_curve = 0.4792,
    preferred_supplier_ids = { "SUP-000169", "SUP-000505" },
    gen_id = 168,
}
_VP["VP-000169"] = {
    label = "RioVeículos modelo 2169 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 33153,
    wear_curve = 0.2211,
    preferred_supplier_ids = { "SUP-000170", "SUP-000508" },
    gen_id = 169,
}
_VP["VP-000170"] = {
    label = "NorteAuto modelo 2170 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 33290,
    wear_curve = 0.3606,
    preferred_supplier_ids = { "SUP-000171", "SUP-000511" },
    gen_id = 170,
}
_VP["VP-000171"] = {
    label = "DeltaMob modelo 2171 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 33427,
    wear_curve = 0.2172,
    preferred_supplier_ids = { "SUP-000172", "SUP-000514" },
    gen_id = 171,
}
_VP["VP-000172"] = {
    label = "OrionTruck modelo 2172 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 33564,
    wear_curve = 0.3974,
    preferred_supplier_ids = { "SUP-000173", "SUP-000517" },
    gen_id = 172,
}
_VP["VP-000173"] = {
    label = "SigmaBike modelo 2173 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 33701,
    wear_curve = 0.5265,
    preferred_supplier_ids = { "SUP-000174", "SUP-000520" },
    gen_id = 173,
}
_VP["VP-000174"] = {
    label = "AstraMotors modelo 2174 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 33838,
    wear_curve = 0.6738,
    preferred_supplier_ids = { "SUP-000175", "SUP-000523" },
    gen_id = 174,
}
_VP["VP-000175"] = {
    label = "RioVeículos modelo 2175 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 33975,
    wear_curve = 0.3107,
    preferred_supplier_ids = { "SUP-000176", "SUP-000526" },
    gen_id = 175,
}
_VP["VP-000176"] = {
    label = "NorteAuto modelo 2176 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 34112,
    wear_curve = 0.2091,
    preferred_supplier_ids = { "SUP-000177", "SUP-000529" },
    gen_id = 176,
}
_VP["VP-000177"] = {
    label = "DeltaMob modelo 2177 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 34249,
    wear_curve = 0.9609,
    preferred_supplier_ids = { "SUP-000178", "SUP-000532" },
    gen_id = 177,
}
_VP["VP-000178"] = {
    label = "OrionTruck modelo 2178 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 34386,
    wear_curve = 0.5606,
    preferred_supplier_ids = { "SUP-000179", "SUP-000535" },
    gen_id = 178,
}
_VP["VP-000179"] = {
    label = "SigmaBike modelo 2179 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 34523,
    wear_curve = 0.6004,
    preferred_supplier_ids = { "SUP-000180", "SUP-000538" },
    gen_id = 179,
}
_VP["VP-000180"] = {
    label = "AstraMotors modelo 2180 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 34660,
    wear_curve = 0.7172,
    preferred_supplier_ids = { "SUP-000181", "SUP-000541" },
    gen_id = 180,
}
_VP["VP-000181"] = {
    label = "RioVeículos modelo 2181 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 34797,
    wear_curve = 0.3347,
    preferred_supplier_ids = { "SUP-000182", "SUP-000544" },
    gen_id = 181,
}
_VP["VP-000182"] = {
    label = "NorteAuto modelo 2182 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 34934,
    wear_curve = 0.4767,
    preferred_supplier_ids = { "SUP-000183", "SUP-000547" },
    gen_id = 182,
}
_VP["VP-000183"] = {
    label = "DeltaMob modelo 2183 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 35071,
    wear_curve = 0.9076,
    preferred_supplier_ids = { "SUP-000184", "SUP-000550" },
    gen_id = 183,
}
_VP["VP-000184"] = {
    label = "OrionTruck modelo 2184 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 35208,
    wear_curve = 0.2088,
    preferred_supplier_ids = { "SUP-000185", "SUP-000553" },
    gen_id = 184,
}
_VP["VP-000185"] = {
    label = "SigmaBike modelo 2185 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 35345,
    wear_curve = 0.3112,
    preferred_supplier_ids = { "SUP-000186", "SUP-000556" },
    gen_id = 185,
}
_VP["VP-000186"] = {
    label = "AstraMotors modelo 2186 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 35482,
    wear_curve = 0.4330,
    preferred_supplier_ids = { "SUP-000187", "SUP-000559" },
    gen_id = 186,
}
_VP["VP-000187"] = {
    label = "RioVeículos modelo 2187 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 35619,
    wear_curve = 0.3220,
    preferred_supplier_ids = { "SUP-000188", "SUP-000562" },
    gen_id = 187,
}
_VP["VP-000188"] = {
    label = "NorteAuto modelo 2188 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 35756,
    wear_curve = 0.4367,
    preferred_supplier_ids = { "SUP-000189", "SUP-000565" },
    gen_id = 188,
}
_VP["VP-000189"] = {
    label = "DeltaMob modelo 2189 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 35893,
    wear_curve = 0.3722,
    preferred_supplier_ids = { "SUP-000190", "SUP-000568" },
    gen_id = 189,
}
_VP["VP-000190"] = {
    label = "OrionTruck modelo 2190 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 36030,
    wear_curve = 0.6068,
    preferred_supplier_ids = { "SUP-000191", "SUP-000571" },
    gen_id = 190,
}
_VP["VP-000191"] = {
    label = "SigmaBike modelo 2191 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 36167,
    wear_curve = 0.3426,
    preferred_supplier_ids = { "SUP-000192", "SUP-000574" },
    gen_id = 191,
}
_VP["VP-000192"] = {
    label = "AstraMotors modelo 2192 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 36304,
    wear_curve = 0.2437,
    preferred_supplier_ids = { "SUP-000193", "SUP-000577" },
    gen_id = 192,
}
_VP["VP-000193"] = {
    label = "RioVeículos modelo 2193 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 36441,
    wear_curve = 0.8625,
    preferred_supplier_ids = { "SUP-000194", "SUP-000580" },
    gen_id = 193,
}
_VP["VP-000194"] = {
    label = "NorteAuto modelo 2194 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 36578,
    wear_curve = 0.3075,
    preferred_supplier_ids = { "SUP-000195", "SUP-000583" },
    gen_id = 194,
}
_VP["VP-000195"] = {
    label = "DeltaMob modelo 2195 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 36715,
    wear_curve = 0.6440,
    preferred_supplier_ids = { "SUP-000196", "SUP-000586" },
    gen_id = 195,
}
_VP["VP-000196"] = {
    label = "OrionTruck modelo 2196 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 36852,
    wear_curve = 0.8553,
    preferred_supplier_ids = { "SUP-000197", "SUP-000589" },
    gen_id = 196,
}
_VP["VP-000197"] = {
    label = "SigmaBike modelo 2197 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 36989,
    wear_curve = 0.8991,
    preferred_supplier_ids = { "SUP-000198", "SUP-000592" },
    gen_id = 197,
}
_VP["VP-000198"] = {
    label = "AstraMotors modelo 2198 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 37126,
    wear_curve = 0.3026,
    preferred_supplier_ids = { "SUP-000199", "SUP-000595" },
    gen_id = 198,
}
_VP["VP-000199"] = {
    label = "RioVeículos modelo 2199 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 37263,
    wear_curve = 0.7118,
    preferred_supplier_ids = { "SUP-000200", "SUP-000598" },
    gen_id = 199,
}
_VP["VP-000200"] = {
    label = "NorteAuto modelo 2200 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 37400,
    wear_curve = 0.3288,
    preferred_supplier_ids = { "SUP-000201", "SUP-000601" },
    gen_id = 200,
}
_VP["VP-000201"] = {
    label = "DeltaMob modelo 2201 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 37537,
    wear_curve = 0.2414,
    preferred_supplier_ids = { "SUP-000202", "SUP-000604" },
    gen_id = 201,
}
_VP["VP-000202"] = {
    label = "OrionTruck modelo 2202 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 37674,
    wear_curve = 0.9748,
    preferred_supplier_ids = { "SUP-000203", "SUP-000607" },
    gen_id = 202,
}
_VP["VP-000203"] = {
    label = "SigmaBike modelo 2203 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 37811,
    wear_curve = 0.3980,
    preferred_supplier_ids = { "SUP-000204", "SUP-000610" },
    gen_id = 203,
}
_VP["VP-000204"] = {
    label = "AstraMotors modelo 2204 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 37948,
    wear_curve = 0.7602,
    preferred_supplier_ids = { "SUP-000205", "SUP-000613" },
    gen_id = 204,
}
_VP["VP-000205"] = {
    label = "RioVeículos modelo 2205 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 38085,
    wear_curve = 0.8346,
    preferred_supplier_ids = { "SUP-000206", "SUP-000616" },
    gen_id = 205,
}
_VP["VP-000206"] = {
    label = "NorteAuto modelo 2206 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 38222,
    wear_curve = 0.8913,
    preferred_supplier_ids = { "SUP-000207", "SUP-000619" },
    gen_id = 206,
}
_VP["VP-000207"] = {
    label = "DeltaMob modelo 2207 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 38359,
    wear_curve = 0.3168,
    preferred_supplier_ids = { "SUP-000208", "SUP-000622" },
    gen_id = 207,
}
_VP["VP-000208"] = {
    label = "OrionTruck modelo 2208 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 38496,
    wear_curve = 0.2120,
    preferred_supplier_ids = { "SUP-000209", "SUP-000625" },
    gen_id = 208,
}
_VP["VP-000209"] = {
    label = "SigmaBike modelo 2209 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 38633,
    wear_curve = 0.5475,
    preferred_supplier_ids = { "SUP-000210", "SUP-000628" },
    gen_id = 209,
}
_VP["VP-000210"] = {
    label = "AstraMotors modelo 2210 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 38770,
    wear_curve = 0.5801,
    preferred_supplier_ids = { "SUP-000211", "SUP-000631" },
    gen_id = 210,
}
_VP["VP-000211"] = {
    label = "RioVeículos modelo 2211 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 38907,
    wear_curve = 0.6549,
    preferred_supplier_ids = { "SUP-000212", "SUP-000634" },
    gen_id = 211,
}
_VP["VP-000212"] = {
    label = "NorteAuto modelo 2212 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 39044,
    wear_curve = 0.1869,
    preferred_supplier_ids = { "SUP-000213", "SUP-000637" },
    gen_id = 212,
}
_VP["VP-000213"] = {
    label = "DeltaMob modelo 2213 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 39181,
    wear_curve = 0.7400,
    preferred_supplier_ids = { "SUP-000214", "SUP-000640" },
    gen_id = 213,
}
_VP["VP-000214"] = {
    label = "OrionTruck modelo 2214 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 39318,
    wear_curve = 0.3711,
    preferred_supplier_ids = { "SUP-000215", "SUP-000643" },
    gen_id = 214,
}
_VP["VP-000215"] = {
    label = "SigmaBike modelo 2215 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 39455,
    wear_curve = 0.5927,
    preferred_supplier_ids = { "SUP-000216", "SUP-000646" },
    gen_id = 215,
}
_VP["VP-000216"] = {
    label = "AstraMotors modelo 2216 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 39592,
    wear_curve = 0.1866,
    preferred_supplier_ids = { "SUP-000217", "SUP-000649" },
    gen_id = 216,
}
_VP["VP-000217"] = {
    label = "RioVeículos modelo 2217 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 39729,
    wear_curve = 0.2081,
    preferred_supplier_ids = { "SUP-000218", "SUP-000652" },
    gen_id = 217,
}
_VP["VP-000218"] = {
    label = "NorteAuto modelo 2218 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 39866,
    wear_curve = 0.9200,
    preferred_supplier_ids = { "SUP-000219", "SUP-000655" },
    gen_id = 218,
}
_VP["VP-000219"] = {
    label = "DeltaMob modelo 2219 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 40003,
    wear_curve = 0.7356,
    preferred_supplier_ids = { "SUP-000220", "SUP-000658" },
    gen_id = 219,
}
_VP["VP-000220"] = {
    label = "OrionTruck modelo 2220 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 40140,
    wear_curve = 0.4069,
    preferred_supplier_ids = { "SUP-000221", "SUP-000661" },
    gen_id = 220,
}
_VP["VP-000221"] = {
    label = "SigmaBike modelo 2221 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 40277,
    wear_curve = 0.9674,
    preferred_supplier_ids = { "SUP-000222", "SUP-000664" },
    gen_id = 221,
}
_VP["VP-000222"] = {
    label = "AstraMotors modelo 2222 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 40414,
    wear_curve = 0.7982,
    preferred_supplier_ids = { "SUP-000223", "SUP-000667" },
    gen_id = 222,
}
_VP["VP-000223"] = {
    label = "RioVeículos modelo 2223 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 40551,
    wear_curve = 0.9762,
    preferred_supplier_ids = { "SUP-000224", "SUP-000670" },
    gen_id = 223,
}
_VP["VP-000224"] = {
    label = "NorteAuto modelo 2224 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 40688,
    wear_curve = 0.6805,
    preferred_supplier_ids = { "SUP-000225", "SUP-000673" },
    gen_id = 224,
}
_VP["VP-000225"] = {
    label = "DeltaMob modelo 2225 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 40825,
    wear_curve = 0.5464,
    preferred_supplier_ids = { "SUP-000226", "SUP-000676" },
    gen_id = 225,
}
_VP["VP-000226"] = {
    label = "OrionTruck modelo 2226 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 40962,
    wear_curve = 0.1929,
    preferred_supplier_ids = { "SUP-000227", "SUP-000679" },
    gen_id = 226,
}
_VP["VP-000227"] = {
    label = "SigmaBike modelo 2227 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 41099,
    wear_curve = 0.8624,
    preferred_supplier_ids = { "SUP-000228", "SUP-000682" },
    gen_id = 227,
}
_VP["VP-000228"] = {
    label = "AstraMotors modelo 2228 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 41236,
    wear_curve = 0.9952,
    preferred_supplier_ids = { "SUP-000229", "SUP-000685" },
    gen_id = 228,
}
_VP["VP-000229"] = {
    label = "RioVeículos modelo 2229 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 41373,
    wear_curve = 0.9250,
    preferred_supplier_ids = { "SUP-000230", "SUP-000688" },
    gen_id = 229,
}
_VP["VP-000230"] = {
    label = "NorteAuto modelo 2230 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 41510,
    wear_curve = 0.4250,
    preferred_supplier_ids = { "SUP-000231", "SUP-000691" },
    gen_id = 230,
}
_VP["VP-000231"] = {
    label = "DeltaMob modelo 2231 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 41647,
    wear_curve = 0.4153,
    preferred_supplier_ids = { "SUP-000232", "SUP-000694" },
    gen_id = 231,
}
_VP["VP-000232"] = {
    label = "OrionTruck modelo 2232 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 41784,
    wear_curve = 0.6247,
    preferred_supplier_ids = { "SUP-000233", "SUP-000697" },
    gen_id = 232,
}
_VP["VP-000233"] = {
    label = "SigmaBike modelo 2233 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 41921,
    wear_curve = 0.7172,
    preferred_supplier_ids = { "SUP-000234", "SUP-000700" },
    gen_id = 233,
}
_VP["VP-000234"] = {
    label = "AstraMotors modelo 2234 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 42058,
    wear_curve = 0.2522,
    preferred_supplier_ids = { "SUP-000235", "SUP-000703" },
    gen_id = 234,
}
_VP["VP-000235"] = {
    label = "RioVeículos modelo 2235 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 42195,
    wear_curve = 0.4006,
    preferred_supplier_ids = { "SUP-000236", "SUP-000706" },
    gen_id = 235,
}
_VP["VP-000236"] = {
    label = "NorteAuto modelo 2236 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 42332,
    wear_curve = 0.7739,
    preferred_supplier_ids = { "SUP-000237", "SUP-000709" },
    gen_id = 236,
}
_VP["VP-000237"] = {
    label = "DeltaMob modelo 2237 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 42469,
    wear_curve = 0.3064,
    preferred_supplier_ids = { "SUP-000238", "SUP-000712" },
    gen_id = 237,
}
_VP["VP-000238"] = {
    label = "OrionTruck modelo 2238 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 42606,
    wear_curve = 0.3431,
    preferred_supplier_ids = { "SUP-000239", "SUP-000715" },
    gen_id = 238,
}
_VP["VP-000239"] = {
    label = "SigmaBike modelo 2239 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 42743,
    wear_curve = 0.4184,
    preferred_supplier_ids = { "SUP-000240", "SUP-000718" },
    gen_id = 239,
}
_VP["VP-000240"] = {
    label = "AstraMotors modelo 2240 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 42880,
    wear_curve = 0.5496,
    preferred_supplier_ids = { "SUP-000241", "SUP-000721" },
    gen_id = 240,
}
_VP["VP-000241"] = {
    label = "RioVeículos modelo 2241 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 43017,
    wear_curve = 0.5570,
    preferred_supplier_ids = { "SUP-000242", "SUP-000724" },
    gen_id = 241,
}
_VP["VP-000242"] = {
    label = "NorteAuto modelo 2242 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 43154,
    wear_curve = 0.3124,
    preferred_supplier_ids = { "SUP-000243", "SUP-000727" },
    gen_id = 242,
}
_VP["VP-000243"] = {
    label = "DeltaMob modelo 2243 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 43291,
    wear_curve = 0.1916,
    preferred_supplier_ids = { "SUP-000244", "SUP-000730" },
    gen_id = 243,
}
_VP["VP-000244"] = {
    label = "OrionTruck modelo 2244 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 43428,
    wear_curve = 0.9357,
    preferred_supplier_ids = { "SUP-000245", "SUP-000733" },
    gen_id = 244,
}
_VP["VP-000245"] = {
    label = "SigmaBike modelo 2245 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 43565,
    wear_curve = 0.5871,
    preferred_supplier_ids = { "SUP-000246", "SUP-000736" },
    gen_id = 245,
}
_VP["VP-000246"] = {
    label = "AstraMotors modelo 2246 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 43702,
    wear_curve = 0.9783,
    preferred_supplier_ids = { "SUP-000247", "SUP-000739" },
    gen_id = 246,
}
_VP["VP-000247"] = {
    label = "RioVeículos modelo 2247 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 43839,
    wear_curve = 0.2947,
    preferred_supplier_ids = { "SUP-000248", "SUP-000742" },
    gen_id = 247,
}
_VP["VP-000248"] = {
    label = "NorteAuto modelo 2248 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 43976,
    wear_curve = 0.2087,
    preferred_supplier_ids = { "SUP-000249", "SUP-000745" },
    gen_id = 248,
}
_VP["VP-000249"] = {
    label = "DeltaMob modelo 2249 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 44113,
    wear_curve = 0.3001,
    preferred_supplier_ids = { "SUP-000250", "SUP-000748" },
    gen_id = 249,
}
_VP["VP-000250"] = {
    label = "OrionTruck modelo 2250 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 44250,
    wear_curve = 0.9086,
    preferred_supplier_ids = { "SUP-000251", "SUP-000751" },
    gen_id = 250,
}
_VP["VP-000251"] = {
    label = "SigmaBike modelo 2251 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 44387,
    wear_curve = 0.4753,
    preferred_supplier_ids = { "SUP-000252", "SUP-000754" },
    gen_id = 251,
}
_VP["VP-000252"] = {
    label = "AstraMotors modelo 2252 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 44524,
    wear_curve = 0.9946,
    preferred_supplier_ids = { "SUP-000253", "SUP-000757" },
    gen_id = 252,
}
_VP["VP-000253"] = {
    label = "RioVeículos modelo 2253 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 44661,
    wear_curve = 0.8354,
    preferred_supplier_ids = { "SUP-000254", "SUP-000760" },
    gen_id = 253,
}
_VP["VP-000254"] = {
    label = "NorteAuto modelo 2254 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 44798,
    wear_curve = 0.3393,
    preferred_supplier_ids = { "SUP-000255", "SUP-000763" },
    gen_id = 254,
}
_VP["VP-000255"] = {
    label = "DeltaMob modelo 2255 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 44935,
    wear_curve = 0.7357,
    preferred_supplier_ids = { "SUP-000256", "SUP-000766" },
    gen_id = 255,
}
_VP["VP-000256"] = {
    label = "OrionTruck modelo 2256 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 45072,
    wear_curve = 0.9319,
    preferred_supplier_ids = { "SUP-000257", "SUP-000769" },
    gen_id = 256,
}
_VP["VP-000257"] = {
    label = "SigmaBike modelo 2257 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 45209,
    wear_curve = 0.5604,
    preferred_supplier_ids = { "SUP-000258", "SUP-000772" },
    gen_id = 257,
}
_VP["VP-000258"] = {
    label = "AstraMotors modelo 2258 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 45346,
    wear_curve = 0.2594,
    preferred_supplier_ids = { "SUP-000259", "SUP-000775" },
    gen_id = 258,
}
_VP["VP-000259"] = {
    label = "RioVeículos modelo 2259 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 45483,
    wear_curve = 0.3544,
    preferred_supplier_ids = { "SUP-000260", "SUP-000778" },
    gen_id = 259,
}
_VP["VP-000260"] = {
    label = "NorteAuto modelo 2260 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 45620,
    wear_curve = 0.3146,
    preferred_supplier_ids = { "SUP-000261", "SUP-000781" },
    gen_id = 260,
}
_VP["VP-000261"] = {
    label = "DeltaMob modelo 2261 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 45757,
    wear_curve = 0.5897,
    preferred_supplier_ids = { "SUP-000262", "SUP-000784" },
    gen_id = 261,
}
_VP["VP-000262"] = {
    label = "OrionTruck modelo 2262 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 45894,
    wear_curve = 0.8194,
    preferred_supplier_ids = { "SUP-000263", "SUP-000787" },
    gen_id = 262,
}
_VP["VP-000263"] = {
    label = "SigmaBike modelo 2263 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 46031,
    wear_curve = 0.4362,
    preferred_supplier_ids = { "SUP-000264", "SUP-000790" },
    gen_id = 263,
}
_VP["VP-000264"] = {
    label = "AstraMotors modelo 2264 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 46168,
    wear_curve = 0.8053,
    preferred_supplier_ids = { "SUP-000265", "SUP-000793" },
    gen_id = 264,
}
_VP["VP-000265"] = {
    label = "RioVeículos modelo 2265 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 46305,
    wear_curve = 0.8788,
    preferred_supplier_ids = { "SUP-000266", "SUP-000796" },
    gen_id = 265,
}
_VP["VP-000266"] = {
    label = "NorteAuto modelo 2266 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 46442,
    wear_curve = 0.8824,
    preferred_supplier_ids = { "SUP-000267", "SUP-000799" },
    gen_id = 266,
}
_VP["VP-000267"] = {
    label = "DeltaMob modelo 2267 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 46579,
    wear_curve = 0.4986,
    preferred_supplier_ids = { "SUP-000268", "SUP-000802" },
    gen_id = 267,
}
_VP["VP-000268"] = {
    label = "OrionTruck modelo 2268 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 46716,
    wear_curve = 0.9672,
    preferred_supplier_ids = { "SUP-000269", "SUP-000805" },
    gen_id = 268,
}
_VP["VP-000269"] = {
    label = "SigmaBike modelo 2269 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 46853,
    wear_curve = 0.4515,
    preferred_supplier_ids = { "SUP-000270", "SUP-000808" },
    gen_id = 269,
}
_VP["VP-000270"] = {
    label = "AstraMotors modelo 2270 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 46990,
    wear_curve = 0.7510,
    preferred_supplier_ids = { "SUP-000271", "SUP-000811" },
    gen_id = 270,
}
_VP["VP-000271"] = {
    label = "RioVeículos modelo 2271 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 47127,
    wear_curve = 0.2067,
    preferred_supplier_ids = { "SUP-000272", "SUP-000814" },
    gen_id = 271,
}
_VP["VP-000272"] = {
    label = "NorteAuto modelo 2272 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 47264,
    wear_curve = 0.5303,
    preferred_supplier_ids = { "SUP-000273", "SUP-000817" },
    gen_id = 272,
}
_VP["VP-000273"] = {
    label = "DeltaMob modelo 2273 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 47401,
    wear_curve = 0.2361,
    preferred_supplier_ids = { "SUP-000274", "SUP-000820" },
    gen_id = 273,
}
_VP["VP-000274"] = {
    label = "OrionTruck modelo 2274 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 47538,
    wear_curve = 0.9629,
    preferred_supplier_ids = { "SUP-000275", "SUP-000823" },
    gen_id = 274,
}
_VP["VP-000275"] = {
    label = "SigmaBike modelo 2275 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 47675,
    wear_curve = 0.5897,
    preferred_supplier_ids = { "SUP-000276", "SUP-000826" },
    gen_id = 275,
}
_VP["VP-000276"] = {
    label = "AstraMotors modelo 2276 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 47812,
    wear_curve = 0.8663,
    preferred_supplier_ids = { "SUP-000277", "SUP-000829" },
    gen_id = 276,
}
_VP["VP-000277"] = {
    label = "RioVeículos modelo 2277 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 47949,
    wear_curve = 0.3929,
    preferred_supplier_ids = { "SUP-000278", "SUP-000832" },
    gen_id = 277,
}
_VP["VP-000278"] = {
    label = "NorteAuto modelo 2278 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 48086,
    wear_curve = 0.4639,
    preferred_supplier_ids = { "SUP-000279", "SUP-000835" },
    gen_id = 278,
}
_VP["VP-000279"] = {
    label = "DeltaMob modelo 2279 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 48223,
    wear_curve = 0.9763,
    preferred_supplier_ids = { "SUP-000280", "SUP-000838" },
    gen_id = 279,
}
_VP["VP-000280"] = {
    label = "OrionTruck modelo 2280 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 48360,
    wear_curve = 0.4105,
    preferred_supplier_ids = { "SUP-000281", "SUP-000841" },
    gen_id = 280,
}
_VP["VP-000281"] = {
    label = "SigmaBike modelo 2281 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 48497,
    wear_curve = 0.3819,
    preferred_supplier_ids = { "SUP-000282", "SUP-000844" },
    gen_id = 281,
}
_VP["VP-000282"] = {
    label = "AstraMotors modelo 2282 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 48634,
    wear_curve = 0.2263,
    preferred_supplier_ids = { "SUP-000283", "SUP-000847" },
    gen_id = 282,
}
_VP["VP-000283"] = {
    label = "RioVeículos modelo 2283 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 48771,
    wear_curve = 0.8571,
    preferred_supplier_ids = { "SUP-000284", "SUP-000850" },
    gen_id = 283,
}
_VP["VP-000284"] = {
    label = "NorteAuto modelo 2284 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 48908,
    wear_curve = 0.9821,
    preferred_supplier_ids = { "SUP-000285", "SUP-000853" },
    gen_id = 284,
}
_VP["VP-000285"] = {
    label = "DeltaMob modelo 2285 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 49045,
    wear_curve = 0.8813,
    preferred_supplier_ids = { "SUP-000286", "SUP-000856" },
    gen_id = 285,
}
_VP["VP-000286"] = {
    label = "OrionTruck modelo 2286 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 49182,
    wear_curve = 0.7461,
    preferred_supplier_ids = { "SUP-000287", "SUP-000859" },
    gen_id = 286,
}
_VP["VP-000287"] = {
    label = "SigmaBike modelo 2287 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 49319,
    wear_curve = 0.7862,
    preferred_supplier_ids = { "SUP-000288", "SUP-000862" },
    gen_id = 287,
}
_VP["VP-000288"] = {
    label = "AstraMotors modelo 2288 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 49456,
    wear_curve = 0.3662,
    preferred_supplier_ids = { "SUP-000289", "SUP-000865" },
    gen_id = 288,
}
_VP["VP-000289"] = {
    label = "RioVeículos modelo 2289 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 49593,
    wear_curve = 0.9283,
    preferred_supplier_ids = { "SUP-000290", "SUP-000868" },
    gen_id = 289,
}
_VP["VP-000290"] = {
    label = "NorteAuto modelo 2290 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 49730,
    wear_curve = 0.7627,
    preferred_supplier_ids = { "SUP-000291", "SUP-000871" },
    gen_id = 290,
}
_VP["VP-000291"] = {
    label = "DeltaMob modelo 2291 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 49867,
    wear_curve = 0.9043,
    preferred_supplier_ids = { "SUP-000292", "SUP-000874" },
    gen_id = 291,
}
_VP["VP-000292"] = {
    label = "OrionTruck modelo 2292 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 50004,
    wear_curve = 0.2821,
    preferred_supplier_ids = { "SUP-000293", "SUP-000877" },
    gen_id = 292,
}
_VP["VP-000293"] = {
    label = "SigmaBike modelo 2293 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 50141,
    wear_curve = 0.8684,
    preferred_supplier_ids = { "SUP-000294", "SUP-000880" },
    gen_id = 293,
}
_VP["VP-000294"] = {
    label = "AstraMotors modelo 2294 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 50278,
    wear_curve = 0.5081,
    preferred_supplier_ids = { "SUP-000295", "SUP-000883" },
    gen_id = 294,
}
_VP["VP-000295"] = {
    label = "RioVeículos modelo 2295 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 50415,
    wear_curve = 0.9733,
    preferred_supplier_ids = { "SUP-000296", "SUP-000886" },
    gen_id = 295,
}
_VP["VP-000296"] = {
    label = "NorteAuto modelo 2296 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 50552,
    wear_curve = 0.4280,
    preferred_supplier_ids = { "SUP-000297", "SUP-000889" },
    gen_id = 296,
}
_VP["VP-000297"] = {
    label = "DeltaMob modelo 2297 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 50689,
    wear_curve = 0.6602,
    preferred_supplier_ids = { "SUP-000298", "SUP-000892" },
    gen_id = 297,
}
_VP["VP-000298"] = {
    label = "OrionTruck modelo 2298 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 50826,
    wear_curve = 0.2556,
    preferred_supplier_ids = { "SUP-000299", "SUP-000895" },
    gen_id = 298,
}
_VP["VP-000299"] = {
    label = "SigmaBike modelo 2299 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 50963,
    wear_curve = 0.9256,
    preferred_supplier_ids = { "SUP-000300", "SUP-000898" },
    gen_id = 299,
}
_VP["VP-000300"] = {
    label = "AstraMotors modelo 2300 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 51100,
    wear_curve = 0.5010,
    preferred_supplier_ids = { "SUP-000301", "SUP-000901" },
    gen_id = 300,
}
_VP["VP-000301"] = {
    label = "RioVeículos modelo 2301 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 51237,
    wear_curve = 0.2959,
    preferred_supplier_ids = { "SUP-000302", "SUP-000904" },
    gen_id = 301,
}
_VP["VP-000302"] = {
    label = "NorteAuto modelo 2302 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 51374,
    wear_curve = 0.4499,
    preferred_supplier_ids = { "SUP-000303", "SUP-000907" },
    gen_id = 302,
}
_VP["VP-000303"] = {
    label = "DeltaMob modelo 2303 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 51511,
    wear_curve = 0.2958,
    preferred_supplier_ids = { "SUP-000304", "SUP-000910" },
    gen_id = 303,
}
_VP["VP-000304"] = {
    label = "OrionTruck modelo 2304 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 51648,
    wear_curve = 0.8575,
    preferred_supplier_ids = { "SUP-000305", "SUP-000913" },
    gen_id = 304,
}
_VP["VP-000305"] = {
    label = "SigmaBike modelo 2305 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 51785,
    wear_curve = 0.8107,
    preferred_supplier_ids = { "SUP-000306", "SUP-000916" },
    gen_id = 305,
}
_VP["VP-000306"] = {
    label = "AstraMotors modelo 2306 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 51922,
    wear_curve = 0.5628,
    preferred_supplier_ids = { "SUP-000307", "SUP-000919" },
    gen_id = 306,
}
_VP["VP-000307"] = {
    label = "RioVeículos modelo 2307 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 52059,
    wear_curve = 0.2136,
    preferred_supplier_ids = { "SUP-000308", "SUP-000922" },
    gen_id = 307,
}
_VP["VP-000308"] = {
    label = "NorteAuto modelo 2308 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 52196,
    wear_curve = 0.3382,
    preferred_supplier_ids = { "SUP-000309", "SUP-000925" },
    gen_id = 308,
}
_VP["VP-000309"] = {
    label = "DeltaMob modelo 2309 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 52333,
    wear_curve = 0.3157,
    preferred_supplier_ids = { "SUP-000310", "SUP-000928" },
    gen_id = 309,
}
_VP["VP-000310"] = {
    label = "OrionTruck modelo 2310 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 52470,
    wear_curve = 0.8318,
    preferred_supplier_ids = { "SUP-000311", "SUP-000931" },
    gen_id = 310,
}
_VP["VP-000311"] = {
    label = "SigmaBike modelo 2311 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 52607,
    wear_curve = 0.7978,
    preferred_supplier_ids = { "SUP-000312", "SUP-000934" },
    gen_id = 311,
}
_VP["VP-000312"] = {
    label = "AstraMotors modelo 2312 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 52744,
    wear_curve = 0.1969,
    preferred_supplier_ids = { "SUP-000313", "SUP-000937" },
    gen_id = 312,
}
_VP["VP-000313"] = {
    label = "RioVeículos modelo 2313 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 52881,
    wear_curve = 0.9521,
    preferred_supplier_ids = { "SUP-000314", "SUP-000940" },
    gen_id = 313,
}
_VP["VP-000314"] = {
    label = "NorteAuto modelo 2314 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 53018,
    wear_curve = 0.2012,
    preferred_supplier_ids = { "SUP-000315", "SUP-000943" },
    gen_id = 314,
}
_VP["VP-000315"] = {
    label = "DeltaMob modelo 2315 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 53155,
    wear_curve = 0.6075,
    preferred_supplier_ids = { "SUP-000316", "SUP-000946" },
    gen_id = 315,
}
_VP["VP-000316"] = {
    label = "OrionTruck modelo 2316 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 53292,
    wear_curve = 0.3339,
    preferred_supplier_ids = { "SUP-000317", "SUP-000949" },
    gen_id = 316,
}
_VP["VP-000317"] = {
    label = "SigmaBike modelo 2317 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 53429,
    wear_curve = 0.3769,
    preferred_supplier_ids = { "SUP-000318", "SUP-000952" },
    gen_id = 317,
}
_VP["VP-000318"] = {
    label = "AstraMotors modelo 2318 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 53566,
    wear_curve = 0.9977,
    preferred_supplier_ids = { "SUP-000319", "SUP-000955" },
    gen_id = 318,
}
_VP["VP-000319"] = {
    label = "RioVeículos modelo 2319 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 53703,
    wear_curve = 0.7653,
    preferred_supplier_ids = { "SUP-000320", "SUP-000958" },
    gen_id = 319,
}
_VP["VP-000320"] = {
    label = "NorteAuto modelo 2320 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 53840,
    wear_curve = 0.5965,
    preferred_supplier_ids = { "SUP-000321", "SUP-000961" },
    gen_id = 320,
}
_VP["VP-000321"] = {
    label = "DeltaMob modelo 2321 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 53977,
    wear_curve = 0.2528,
    preferred_supplier_ids = { "SUP-000322", "SUP-000964" },
    gen_id = 321,
}
_VP["VP-000322"] = {
    label = "OrionTruck modelo 2322 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 54114,
    wear_curve = 0.4844,
    preferred_supplier_ids = { "SUP-000323", "SUP-000967" },
    gen_id = 322,
}
_VP["VP-000323"] = {
    label = "SigmaBike modelo 2323 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 54251,
    wear_curve = 0.4318,
    preferred_supplier_ids = { "SUP-000324", "SUP-000970" },
    gen_id = 323,
}
_VP["VP-000324"] = {
    label = "AstraMotors modelo 2324 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 54388,
    wear_curve = 0.5733,
    preferred_supplier_ids = { "SUP-000325", "SUP-000973" },
    gen_id = 324,
}
_VP["VP-000325"] = {
    label = "RioVeículos modelo 2325 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 54525,
    wear_curve = 0.6774,
    preferred_supplier_ids = { "SUP-000326", "SUP-000976" },
    gen_id = 325,
}
_VP["VP-000326"] = {
    label = "NorteAuto modelo 2326 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 54662,
    wear_curve = 0.6517,
    preferred_supplier_ids = { "SUP-000327", "SUP-000979" },
    gen_id = 326,
}
_VP["VP-000327"] = {
    label = "DeltaMob modelo 2327 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 54799,
    wear_curve = 0.2732,
    preferred_supplier_ids = { "SUP-000328", "SUP-000982" },
    gen_id = 327,
}
_VP["VP-000328"] = {
    label = "OrionTruck modelo 2328 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 54936,
    wear_curve = 0.8701,
    preferred_supplier_ids = { "SUP-000329", "SUP-000985" },
    gen_id = 328,
}
_VP["VP-000329"] = {
    label = "SigmaBike modelo 2329 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 55073,
    wear_curve = 0.6994,
    preferred_supplier_ids = { "SUP-000330", "SUP-000988" },
    gen_id = 329,
}
_VP["VP-000330"] = {
    label = "AstraMotors modelo 2330 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 55210,
    wear_curve = 0.6630,
    preferred_supplier_ids = { "SUP-000331", "SUP-000991" },
    gen_id = 330,
}
_VP["VP-000331"] = {
    label = "RioVeículos modelo 2331 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 55347,
    wear_curve = 0.1756,
    preferred_supplier_ids = { "SUP-000332", "SUP-000994" },
    gen_id = 331,
}
_VP["VP-000332"] = {
    label = "NorteAuto modelo 2332 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 55484,
    wear_curve = 0.5683,
    preferred_supplier_ids = { "SUP-000333", "SUP-000997" },
    gen_id = 332,
}
_VP["VP-000333"] = {
    label = "DeltaMob modelo 2333 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 55621,
    wear_curve = 0.6319,
    preferred_supplier_ids = { "SUP-000334", "SUP-001000" },
    gen_id = 333,
}
_VP["VP-000334"] = {
    label = "OrionTruck modelo 2334 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 55758,
    wear_curve = 0.3381,
    preferred_supplier_ids = { "SUP-000335", "SUP-001003" },
    gen_id = 334,
}
_VP["VP-000335"] = {
    label = "SigmaBike modelo 2335 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 55895,
    wear_curve = 0.6223,
    preferred_supplier_ids = { "SUP-000336", "SUP-001006" },
    gen_id = 335,
}
_VP["VP-000336"] = {
    label = "AstraMotors modelo 2336 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 56032,
    wear_curve = 0.2287,
    preferred_supplier_ids = { "SUP-000337", "SUP-001009" },
    gen_id = 336,
}
_VP["VP-000337"] = {
    label = "RioVeículos modelo 2337 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 56169,
    wear_curve = 0.3852,
    preferred_supplier_ids = { "SUP-000338", "SUP-001012" },
    gen_id = 337,
}
_VP["VP-000338"] = {
    label = "NorteAuto modelo 2338 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 56306,
    wear_curve = 0.7690,
    preferred_supplier_ids = { "SUP-000339", "SUP-001015" },
    gen_id = 338,
}
_VP["VP-000339"] = {
    label = "DeltaMob modelo 2339 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 56443,
    wear_curve = 0.3629,
    preferred_supplier_ids = { "SUP-000340", "SUP-001018" },
    gen_id = 339,
}
_VP["VP-000340"] = {
    label = "OrionTruck modelo 2340 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 56580,
    wear_curve = 0.4678,
    preferred_supplier_ids = { "SUP-000341", "SUP-001021" },
    gen_id = 340,
}
_VP["VP-000341"] = {
    label = "SigmaBike modelo 2341 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 56717,
    wear_curve = 0.1550,
    preferred_supplier_ids = { "SUP-000342", "SUP-001024" },
    gen_id = 341,
}
_VP["VP-000342"] = {
    label = "AstraMotors modelo 2342 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 56854,
    wear_curve = 0.2742,
    preferred_supplier_ids = { "SUP-000343", "SUP-001027" },
    gen_id = 342,
}
_VP["VP-000343"] = {
    label = "RioVeículos modelo 2343 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 56991,
    wear_curve = 0.2169,
    preferred_supplier_ids = { "SUP-000344", "SUP-001030" },
    gen_id = 343,
}
_VP["VP-000344"] = {
    label = "NorteAuto modelo 2344 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 57128,
    wear_curve = 0.7924,
    preferred_supplier_ids = { "SUP-000345", "SUP-001033" },
    gen_id = 344,
}
_VP["VP-000345"] = {
    label = "DeltaMob modelo 2345 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 57265,
    wear_curve = 0.6631,
    preferred_supplier_ids = { "SUP-000346", "SUP-001036" },
    gen_id = 345,
}
_VP["VP-000346"] = {
    label = "OrionTruck modelo 2346 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 57402,
    wear_curve = 0.2625,
    preferred_supplier_ids = { "SUP-000347", "SUP-001039" },
    gen_id = 346,
}
_VP["VP-000347"] = {
    label = "SigmaBike modelo 2347 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 57539,
    wear_curve = 0.9629,
    preferred_supplier_ids = { "SUP-000348", "SUP-001042" },
    gen_id = 347,
}
_VP["VP-000348"] = {
    label = "AstraMotors modelo 2348 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 57676,
    wear_curve = 0.1964,
    preferred_supplier_ids = { "SUP-000349", "SUP-001045" },
    gen_id = 348,
}
_VP["VP-000349"] = {
    label = "RioVeículos modelo 2349 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 57813,
    wear_curve = 0.3603,
    preferred_supplier_ids = { "SUP-000350", "SUP-001048" },
    gen_id = 349,
}
_VP["VP-000350"] = {
    label = "NorteAuto modelo 2350 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 57950,
    wear_curve = 0.9364,
    preferred_supplier_ids = { "SUP-000351", "SUP-001051" },
    gen_id = 350,
}
_VP["VP-000351"] = {
    label = "DeltaMob modelo 2351 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 58087,
    wear_curve = 0.4835,
    preferred_supplier_ids = { "SUP-000352", "SUP-001054" },
    gen_id = 351,
}
_VP["VP-000352"] = {
    label = "OrionTruck modelo 2352 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 58224,
    wear_curve = 0.3803,
    preferred_supplier_ids = { "SUP-000353", "SUP-001057" },
    gen_id = 352,
}
_VP["VP-000353"] = {
    label = "SigmaBike modelo 2353 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 58361,
    wear_curve = 0.8154,
    preferred_supplier_ids = { "SUP-000354", "SUP-001060" },
    gen_id = 353,
}
_VP["VP-000354"] = {
    label = "AstraMotors modelo 2354 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 58498,
    wear_curve = 0.9817,
    preferred_supplier_ids = { "SUP-000355", "SUP-001063" },
    gen_id = 354,
}
_VP["VP-000355"] = {
    label = "RioVeículos modelo 2355 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 58635,
    wear_curve = 0.6414,
    preferred_supplier_ids = { "SUP-000356", "SUP-001066" },
    gen_id = 355,
}
_VP["VP-000356"] = {
    label = "NorteAuto modelo 2356 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 58772,
    wear_curve = 0.7708,
    preferred_supplier_ids = { "SUP-000357", "SUP-001069" },
    gen_id = 356,
}
_VP["VP-000357"] = {
    label = "DeltaMob modelo 2357 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 58909,
    wear_curve = 0.2746,
    preferred_supplier_ids = { "SUP-000358", "SUP-001072" },
    gen_id = 357,
}
_VP["VP-000358"] = {
    label = "OrionTruck modelo 2358 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 59046,
    wear_curve = 0.2990,
    preferred_supplier_ids = { "SUP-000359", "SUP-001075" },
    gen_id = 358,
}
_VP["VP-000359"] = {
    label = "SigmaBike modelo 2359 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 59183,
    wear_curve = 0.5801,
    preferred_supplier_ids = { "SUP-000360", "SUP-001078" },
    gen_id = 359,
}
_VP["VP-000360"] = {
    label = "AstraMotors modelo 2360 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 59320,
    wear_curve = 0.2285,
    preferred_supplier_ids = { "SUP-000361", "SUP-001081" },
    gen_id = 360,
}
_VP["VP-000361"] = {
    label = "RioVeículos modelo 2361 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 59457,
    wear_curve = 0.6385,
    preferred_supplier_ids = { "SUP-000362", "SUP-001084" },
    gen_id = 361,
}
_VP["VP-000362"] = {
    label = "NorteAuto modelo 2362 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 59594,
    wear_curve = 0.7964,
    preferred_supplier_ids = { "SUP-000363", "SUP-001087" },
    gen_id = 362,
}
_VP["VP-000363"] = {
    label = "DeltaMob modelo 2363 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 59731,
    wear_curve = 0.9528,
    preferred_supplier_ids = { "SUP-000364", "SUP-001090" },
    gen_id = 363,
}
_VP["VP-000364"] = {
    label = "OrionTruck modelo 2364 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 59868,
    wear_curve = 0.9940,
    preferred_supplier_ids = { "SUP-000365", "SUP-001093" },
    gen_id = 364,
}
_VP["VP-000365"] = {
    label = "SigmaBike modelo 2365 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 60005,
    wear_curve = 0.6185,
    preferred_supplier_ids = { "SUP-000366", "SUP-001096" },
    gen_id = 365,
}
_VP["VP-000366"] = {
    label = "AstraMotors modelo 2366 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 60142,
    wear_curve = 0.4771,
    preferred_supplier_ids = { "SUP-000367", "SUP-001099" },
    gen_id = 366,
}
_VP["VP-000367"] = {
    label = "RioVeículos modelo 2367 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 60279,
    wear_curve = 0.4453,
    preferred_supplier_ids = { "SUP-000368", "SUP-001102" },
    gen_id = 367,
}
_VP["VP-000368"] = {
    label = "NorteAuto modelo 2368 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 60416,
    wear_curve = 0.4364,
    preferred_supplier_ids = { "SUP-000369", "SUP-001105" },
    gen_id = 368,
}
_VP["VP-000369"] = {
    label = "DeltaMob modelo 2369 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 60553,
    wear_curve = 0.7433,
    preferred_supplier_ids = { "SUP-000370", "SUP-001108" },
    gen_id = 369,
}
_VP["VP-000370"] = {
    label = "OrionTruck modelo 2370 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 60690,
    wear_curve = 0.9142,
    preferred_supplier_ids = { "SUP-000371", "SUP-001111" },
    gen_id = 370,
}
_VP["VP-000371"] = {
    label = "SigmaBike modelo 2371 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 60827,
    wear_curve = 0.1725,
    preferred_supplier_ids = { "SUP-000372", "SUP-001114" },
    gen_id = 371,
}
_VP["VP-000372"] = {
    label = "AstraMotors modelo 2372 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 60964,
    wear_curve = 0.5788,
    preferred_supplier_ids = { "SUP-000373", "SUP-001117" },
    gen_id = 372,
}
_VP["VP-000373"] = {
    label = "RioVeículos modelo 2373 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 61101,
    wear_curve = 0.2020,
    preferred_supplier_ids = { "SUP-000374", "SUP-001120" },
    gen_id = 373,
}
_VP["VP-000374"] = {
    label = "NorteAuto modelo 2374 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 61238,
    wear_curve = 0.8216,
    preferred_supplier_ids = { "SUP-000375", "SUP-001123" },
    gen_id = 374,
}
_VP["VP-000375"] = {
    label = "DeltaMob modelo 2375 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 61375,
    wear_curve = 0.2892,
    preferred_supplier_ids = { "SUP-000376", "SUP-001126" },
    gen_id = 375,
}
_VP["VP-000376"] = {
    label = "OrionTruck modelo 2376 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 61512,
    wear_curve = 0.9910,
    preferred_supplier_ids = { "SUP-000377", "SUP-001129" },
    gen_id = 376,
}
_VP["VP-000377"] = {
    label = "SigmaBike modelo 2377 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 61649,
    wear_curve = 0.5713,
    preferred_supplier_ids = { "SUP-000378", "SUP-001132" },
    gen_id = 377,
}
_VP["VP-000378"] = {
    label = "AstraMotors modelo 2378 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 61786,
    wear_curve = 0.4898,
    preferred_supplier_ids = { "SUP-000379", "SUP-001135" },
    gen_id = 378,
}
_VP["VP-000379"] = {
    label = "RioVeículos modelo 2379 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 61923,
    wear_curve = 0.5700,
    preferred_supplier_ids = { "SUP-000380", "SUP-001138" },
    gen_id = 379,
}
_VP["VP-000380"] = {
    label = "NorteAuto modelo 2380 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 62060,
    wear_curve = 0.3481,
    preferred_supplier_ids = { "SUP-000381", "SUP-001141" },
    gen_id = 380,
}
_VP["VP-000381"] = {
    label = "DeltaMob modelo 2381 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 62197,
    wear_curve = 0.2360,
    preferred_supplier_ids = { "SUP-000382", "SUP-001144" },
    gen_id = 381,
}
_VP["VP-000382"] = {
    label = "OrionTruck modelo 2382 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 62334,
    wear_curve = 0.4179,
    preferred_supplier_ids = { "SUP-000383", "SUP-001147" },
    gen_id = 382,
}
_VP["VP-000383"] = {
    label = "SigmaBike modelo 2383 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 62471,
    wear_curve = 0.7740,
    preferred_supplier_ids = { "SUP-000384", "SUP-001150" },
    gen_id = 383,
}
_VP["VP-000384"] = {
    label = "AstraMotors modelo 2384 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 62608,
    wear_curve = 0.7195,
    preferred_supplier_ids = { "SUP-000385", "SUP-001153" },
    gen_id = 384,
}
_VP["VP-000385"] = {
    label = "RioVeículos modelo 2385 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 62745,
    wear_curve = 0.9267,
    preferred_supplier_ids = { "SUP-000386", "SUP-001156" },
    gen_id = 385,
}
_VP["VP-000386"] = {
    label = "NorteAuto modelo 2386 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 62882,
    wear_curve = 0.6379,
    preferred_supplier_ids = { "SUP-000387", "SUP-001159" },
    gen_id = 386,
}
_VP["VP-000387"] = {
    label = "DeltaMob modelo 2387 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 63019,
    wear_curve = 0.2230,
    preferred_supplier_ids = { "SUP-000388", "SUP-001162" },
    gen_id = 387,
}
_VP["VP-000388"] = {
    label = "OrionTruck modelo 2388 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 63156,
    wear_curve = 0.3640,
    preferred_supplier_ids = { "SUP-000389", "SUP-001165" },
    gen_id = 388,
}
_VP["VP-000389"] = {
    label = "SigmaBike modelo 2389 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 63293,
    wear_curve = 0.4092,
    preferred_supplier_ids = { "SUP-000390", "SUP-001168" },
    gen_id = 389,
}
_VP["VP-000390"] = {
    label = "AstraMotors modelo 2390 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 63430,
    wear_curve = 0.6371,
    preferred_supplier_ids = { "SUP-000391", "SUP-001171" },
    gen_id = 390,
}
_VP["VP-000391"] = {
    label = "RioVeículos modelo 2391 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 63567,
    wear_curve = 0.4859,
    preferred_supplier_ids = { "SUP-000392", "SUP-001174" },
    gen_id = 391,
}
_VP["VP-000392"] = {
    label = "NorteAuto modelo 2392 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 63704,
    wear_curve = 0.9692,
    preferred_supplier_ids = { "SUP-000393", "SUP-001177" },
    gen_id = 392,
}
_VP["VP-000393"] = {
    label = "DeltaMob modelo 2393 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 63841,
    wear_curve = 0.8232,
    preferred_supplier_ids = { "SUP-000394", "SUP-001180" },
    gen_id = 393,
}
_VP["VP-000394"] = {
    label = "OrionTruck modelo 2394 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 63978,
    wear_curve = 0.8487,
    preferred_supplier_ids = { "SUP-000395", "SUP-001183" },
    gen_id = 394,
}
_VP["VP-000395"] = {
    label = "SigmaBike modelo 2395 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 64115,
    wear_curve = 0.8213,
    preferred_supplier_ids = { "SUP-000396", "SUP-001186" },
    gen_id = 395,
}
_VP["VP-000396"] = {
    label = "AstraMotors modelo 2396 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 64252,
    wear_curve = 0.2352,
    preferred_supplier_ids = { "SUP-000397", "SUP-001189" },
    gen_id = 396,
}
_VP["VP-000397"] = {
    label = "RioVeículos modelo 2397 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 64389,
    wear_curve = 0.3308,
    preferred_supplier_ids = { "SUP-000398", "SUP-001192" },
    gen_id = 397,
}
_VP["VP-000398"] = {
    label = "NorteAuto modelo 2398 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 64526,
    wear_curve = 0.9418,
    preferred_supplier_ids = { "SUP-000399", "SUP-001195" },
    gen_id = 398,
}
_VP["VP-000399"] = {
    label = "DeltaMob modelo 2399 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 64663,
    wear_curve = 0.8969,
    preferred_supplier_ids = { "SUP-000400", "SUP-001198" },
    gen_id = 399,
}
_VP["VP-000400"] = {
    label = "OrionTruck modelo 2400 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 64800,
    wear_curve = 0.4172,
    preferred_supplier_ids = { "SUP-000401", "SUP-001201" },
    gen_id = 400,
}
_VP["VP-000401"] = {
    label = "SigmaBike modelo 2401 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 64937,
    wear_curve = 0.5473,
    preferred_supplier_ids = { "SUP-000402", "SUP-001204" },
    gen_id = 401,
}
_VP["VP-000402"] = {
    label = "AstraMotors modelo 2402 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 65074,
    wear_curve = 0.5570,
    preferred_supplier_ids = { "SUP-000403", "SUP-001207" },
    gen_id = 402,
}
_VP["VP-000403"] = {
    label = "RioVeículos modelo 2403 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 65211,
    wear_curve = 0.8621,
    preferred_supplier_ids = { "SUP-000404", "SUP-001210" },
    gen_id = 403,
}
_VP["VP-000404"] = {
    label = "NorteAuto modelo 2404 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 65348,
    wear_curve = 0.7519,
    preferred_supplier_ids = { "SUP-000405", "SUP-001213" },
    gen_id = 404,
}
_VP["VP-000405"] = {
    label = "DeltaMob modelo 2405 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 65485,
    wear_curve = 0.3891,
    preferred_supplier_ids = { "SUP-000406", "SUP-001216" },
    gen_id = 405,
}
_VP["VP-000406"] = {
    label = "OrionTruck modelo 2406 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 65622,
    wear_curve = 0.6928,
    preferred_supplier_ids = { "SUP-000407", "SUP-001219" },
    gen_id = 406,
}
_VP["VP-000407"] = {
    label = "SigmaBike modelo 2407 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 65759,
    wear_curve = 0.9680,
    preferred_supplier_ids = { "SUP-000408", "SUP-001222" },
    gen_id = 407,
}
_VP["VP-000408"] = {
    label = "AstraMotors modelo 2408 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 65896,
    wear_curve = 0.5563,
    preferred_supplier_ids = { "SUP-000409", "SUP-001225" },
    gen_id = 408,
}
_VP["VP-000409"] = {
    label = "RioVeículos modelo 2409 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 66033,
    wear_curve = 0.7370,
    preferred_supplier_ids = { "SUP-000410", "SUP-001228" },
    gen_id = 409,
}
_VP["VP-000410"] = {
    label = "NorteAuto modelo 2410 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 66170,
    wear_curve = 0.7638,
    preferred_supplier_ids = { "SUP-000411", "SUP-001231" },
    gen_id = 410,
}
_VP["VP-000411"] = {
    label = "DeltaMob modelo 2411 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 66307,
    wear_curve = 0.5857,
    preferred_supplier_ids = { "SUP-000412", "SUP-001234" },
    gen_id = 411,
}
_VP["VP-000412"] = {
    label = "OrionTruck modelo 2412 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 66444,
    wear_curve = 0.8994,
    preferred_supplier_ids = { "SUP-000413", "SUP-001237" },
    gen_id = 412,
}
_VP["VP-000413"] = {
    label = "SigmaBike modelo 2413 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 66581,
    wear_curve = 0.3250,
    preferred_supplier_ids = { "SUP-000414", "SUP-001240" },
    gen_id = 413,
}
_VP["VP-000414"] = {
    label = "AstraMotors modelo 2414 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 66718,
    wear_curve = 0.1611,
    preferred_supplier_ids = { "SUP-000415", "SUP-001243" },
    gen_id = 414,
}
_VP["VP-000415"] = {
    label = "RioVeículos modelo 2415 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 66855,
    wear_curve = 0.9425,
    preferred_supplier_ids = { "SUP-000416", "SUP-001246" },
    gen_id = 415,
}
_VP["VP-000416"] = {
    label = "NorteAuto modelo 2416 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 66992,
    wear_curve = 0.6106,
    preferred_supplier_ids = { "SUP-000417", "SUP-001249" },
    gen_id = 416,
}
_VP["VP-000417"] = {
    label = "DeltaMob modelo 2417 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 67129,
    wear_curve = 0.8760,
    preferred_supplier_ids = { "SUP-000418", "SUP-001252" },
    gen_id = 417,
}
_VP["VP-000418"] = {
    label = "OrionTruck modelo 2418 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 67266,
    wear_curve = 0.6117,
    preferred_supplier_ids = { "SUP-000419", "SUP-001255" },
    gen_id = 418,
}
_VP["VP-000419"] = {
    label = "SigmaBike modelo 2419 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 67403,
    wear_curve = 0.8016,
    preferred_supplier_ids = { "SUP-000420", "SUP-001258" },
    gen_id = 419,
}
_VP["VP-000420"] = {
    label = "AstraMotors modelo 2420 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 67540,
    wear_curve = 0.4497,
    preferred_supplier_ids = { "SUP-000421", "SUP-001261" },
    gen_id = 420,
}
_VP["VP-000421"] = {
    label = "RioVeículos modelo 2421 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 67677,
    wear_curve = 0.6218,
    preferred_supplier_ids = { "SUP-000422", "SUP-001264" },
    gen_id = 421,
}
_VP["VP-000422"] = {
    label = "NorteAuto modelo 2422 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 67814,
    wear_curve = 0.7415,
    preferred_supplier_ids = { "SUP-000423", "SUP-001267" },
    gen_id = 422,
}
_VP["VP-000423"] = {
    label = "DeltaMob modelo 2423 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 67951,
    wear_curve = 0.8800,
    preferred_supplier_ids = { "SUP-000424", "SUP-001270" },
    gen_id = 423,
}
_VP["VP-000424"] = {
    label = "OrionTruck modelo 2424 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 68088,
    wear_curve = 0.5782,
    preferred_supplier_ids = { "SUP-000425", "SUP-001273" },
    gen_id = 424,
}
_VP["VP-000425"] = {
    label = "SigmaBike modelo 2425 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 68225,
    wear_curve = 0.6032,
    preferred_supplier_ids = { "SUP-000426", "SUP-001276" },
    gen_id = 425,
}
_VP["VP-000426"] = {
    label = "AstraMotors modelo 2426 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 68362,
    wear_curve = 0.8132,
    preferred_supplier_ids = { "SUP-000427", "SUP-001279" },
    gen_id = 426,
}
_VP["VP-000427"] = {
    label = "RioVeículos modelo 2427 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 68499,
    wear_curve = 0.7055,
    preferred_supplier_ids = { "SUP-000428", "SUP-001282" },
    gen_id = 427,
}
_VP["VP-000428"] = {
    label = "NorteAuto modelo 2428 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 68636,
    wear_curve = 0.4808,
    preferred_supplier_ids = { "SUP-000429", "SUP-001285" },
    gen_id = 428,
}
_VP["VP-000429"] = {
    label = "DeltaMob modelo 2429 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 68773,
    wear_curve = 0.7605,
    preferred_supplier_ids = { "SUP-000430", "SUP-001288" },
    gen_id = 429,
}
_VP["VP-000430"] = {
    label = "OrionTruck modelo 2430 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 68910,
    wear_curve = 0.9701,
    preferred_supplier_ids = { "SUP-000431", "SUP-001291" },
    gen_id = 430,
}
_VP["VP-000431"] = {
    label = "SigmaBike modelo 2431 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 69047,
    wear_curve = 0.7315,
    preferred_supplier_ids = { "SUP-000432", "SUP-001294" },
    gen_id = 431,
}
_VP["VP-000432"] = {
    label = "AstraMotors modelo 2432 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 69184,
    wear_curve = 0.5024,
    preferred_supplier_ids = { "SUP-000433", "SUP-001297" },
    gen_id = 432,
}
_VP["VP-000433"] = {
    label = "RioVeículos modelo 2433 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 69321,
    wear_curve = 0.4386,
    preferred_supplier_ids = { "SUP-000434", "SUP-001300" },
    gen_id = 433,
}
_VP["VP-000434"] = {
    label = "NorteAuto modelo 2434 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 69458,
    wear_curve = 0.3315,
    preferred_supplier_ids = { "SUP-000435", "SUP-001303" },
    gen_id = 434,
}
_VP["VP-000435"] = {
    label = "DeltaMob modelo 2435 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 69595,
    wear_curve = 0.6369,
    preferred_supplier_ids = { "SUP-000436", "SUP-001306" },
    gen_id = 435,
}
_VP["VP-000436"] = {
    label = "OrionTruck modelo 2436 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 69732,
    wear_curve = 0.9746,
    preferred_supplier_ids = { "SUP-000437", "SUP-001309" },
    gen_id = 436,
}
_VP["VP-000437"] = {
    label = "SigmaBike modelo 2437 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 69869,
    wear_curve = 0.2901,
    preferred_supplier_ids = { "SUP-000438", "SUP-001312" },
    gen_id = 437,
}
_VP["VP-000438"] = {
    label = "AstraMotors modelo 2438 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 70006,
    wear_curve = 0.2448,
    preferred_supplier_ids = { "SUP-000439", "SUP-001315" },
    gen_id = 438,
}
_VP["VP-000439"] = {
    label = "RioVeículos modelo 2439 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 70143,
    wear_curve = 0.2540,
    preferred_supplier_ids = { "SUP-000440", "SUP-001318" },
    gen_id = 439,
}
_VP["VP-000440"] = {
    label = "NorteAuto modelo 2440 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 70280,
    wear_curve = 0.2212,
    preferred_supplier_ids = { "SUP-000441", "SUP-001321" },
    gen_id = 440,
}
_VP["VP-000441"] = {
    label = "DeltaMob modelo 2441 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 70417,
    wear_curve = 0.2245,
    preferred_supplier_ids = { "SUP-000442", "SUP-001324" },
    gen_id = 441,
}
_VP["VP-000442"] = {
    label = "OrionTruck modelo 2442 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 70554,
    wear_curve = 0.7658,
    preferred_supplier_ids = { "SUP-000443", "SUP-001327" },
    gen_id = 442,
}
_VP["VP-000443"] = {
    label = "SigmaBike modelo 2443 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 70691,
    wear_curve = 0.4269,
    preferred_supplier_ids = { "SUP-000444", "SUP-001330" },
    gen_id = 443,
}
_VP["VP-000444"] = {
    label = "AstraMotors modelo 2444 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 70828,
    wear_curve = 0.5930,
    preferred_supplier_ids = { "SUP-000445", "SUP-001333" },
    gen_id = 444,
}
_VP["VP-000445"] = {
    label = "RioVeículos modelo 2445 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 70965,
    wear_curve = 0.1646,
    preferred_supplier_ids = { "SUP-000446", "SUP-001336" },
    gen_id = 445,
}
_VP["VP-000446"] = {
    label = "NorteAuto modelo 2446 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 71102,
    wear_curve = 0.8984,
    preferred_supplier_ids = { "SUP-000447", "SUP-001339" },
    gen_id = 446,
}
_VP["VP-000447"] = {
    label = "DeltaMob modelo 2447 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 71239,
    wear_curve = 0.4673,
    preferred_supplier_ids = { "SUP-000448", "SUP-001342" },
    gen_id = 447,
}
_VP["VP-000448"] = {
    label = "OrionTruck modelo 2448 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 71376,
    wear_curve = 0.4448,
    preferred_supplier_ids = { "SUP-000449", "SUP-001345" },
    gen_id = 448,
}
_VP["VP-000449"] = {
    label = "SigmaBike modelo 2449 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 71513,
    wear_curve = 0.3816,
    preferred_supplier_ids = { "SUP-000450", "SUP-001348" },
    gen_id = 449,
}
_VP["VP-000450"] = {
    label = "AstraMotors modelo 2450 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 71650,
    wear_curve = 0.5880,
    preferred_supplier_ids = { "SUP-000451", "SUP-001351" },
    gen_id = 450,
}
_VP["VP-000451"] = {
    label = "RioVeículos modelo 2451 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 71787,
    wear_curve = 0.9873,
    preferred_supplier_ids = { "SUP-000452", "SUP-001354" },
    gen_id = 451,
}
_VP["VP-000452"] = {
    label = "NorteAuto modelo 2452 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 71924,
    wear_curve = 0.3316,
    preferred_supplier_ids = { "SUP-000453", "SUP-001357" },
    gen_id = 452,
}
_VP["VP-000453"] = {
    label = "DeltaMob modelo 2453 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 72061,
    wear_curve = 0.9447,
    preferred_supplier_ids = { "SUP-000454", "SUP-001360" },
    gen_id = 453,
}
_VP["VP-000454"] = {
    label = "OrionTruck modelo 2454 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 72198,
    wear_curve = 0.9758,
    preferred_supplier_ids = { "SUP-000455", "SUP-001363" },
    gen_id = 454,
}
_VP["VP-000455"] = {
    label = "SigmaBike modelo 2455 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 72335,
    wear_curve = 0.6998,
    preferred_supplier_ids = { "SUP-000456", "SUP-001366" },
    gen_id = 455,
}
_VP["VP-000456"] = {
    label = "AstraMotors modelo 2456 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 72472,
    wear_curve = 0.9107,
    preferred_supplier_ids = { "SUP-000457", "SUP-001369" },
    gen_id = 456,
}
_VP["VP-000457"] = {
    label = "RioVeículos modelo 2457 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 72609,
    wear_curve = 0.8822,
    preferred_supplier_ids = { "SUP-000458", "SUP-001372" },
    gen_id = 457,
}
_VP["VP-000458"] = {
    label = "NorteAuto modelo 2458 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 72746,
    wear_curve = 0.4841,
    preferred_supplier_ids = { "SUP-000459", "SUP-001375" },
    gen_id = 458,
}
_VP["VP-000459"] = {
    label = "DeltaMob modelo 2459 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 72883,
    wear_curve = 0.6401,
    preferred_supplier_ids = { "SUP-000460", "SUP-001378" },
    gen_id = 459,
}
_VP["VP-000460"] = {
    label = "OrionTruck modelo 2460 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 73020,
    wear_curve = 0.8519,
    preferred_supplier_ids = { "SUP-000461", "SUP-001381" },
    gen_id = 460,
}
_VP["VP-000461"] = {
    label = "SigmaBike modelo 2461 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 73157,
    wear_curve = 0.4156,
    preferred_supplier_ids = { "SUP-000462", "SUP-001384" },
    gen_id = 461,
}
_VP["VP-000462"] = {
    label = "AstraMotors modelo 2462 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 73294,
    wear_curve = 0.6636,
    preferred_supplier_ids = { "SUP-000463", "SUP-001387" },
    gen_id = 462,
}
_VP["VP-000463"] = {
    label = "RioVeículos modelo 2463 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 73431,
    wear_curve = 0.5764,
    preferred_supplier_ids = { "SUP-000464", "SUP-001390" },
    gen_id = 463,
}
_VP["VP-000464"] = {
    label = "NorteAuto modelo 2464 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 73568,
    wear_curve = 0.7179,
    preferred_supplier_ids = { "SUP-000465", "SUP-001393" },
    gen_id = 464,
}
_VP["VP-000465"] = {
    label = "DeltaMob modelo 2465 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 73705,
    wear_curve = 0.4875,
    preferred_supplier_ids = { "SUP-000466", "SUP-001396" },
    gen_id = 465,
}
_VP["VP-000466"] = {
    label = "OrionTruck modelo 2466 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 73842,
    wear_curve = 0.2480,
    preferred_supplier_ids = { "SUP-000467", "SUP-001399" },
    gen_id = 466,
}
_VP["VP-000467"] = {
    label = "SigmaBike modelo 2467 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 73979,
    wear_curve = 0.6370,
    preferred_supplier_ids = { "SUP-000468", "SUP-001402" },
    gen_id = 467,
}
_VP["VP-000468"] = {
    label = "AstraMotors modelo 2468 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 74116,
    wear_curve = 0.2917,
    preferred_supplier_ids = { "SUP-000469", "SUP-001405" },
    gen_id = 468,
}
_VP["VP-000469"] = {
    label = "RioVeículos modelo 2469 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 74253,
    wear_curve = 0.8203,
    preferred_supplier_ids = { "SUP-000470", "SUP-001408" },
    gen_id = 469,
}
_VP["VP-000470"] = {
    label = "NorteAuto modelo 2470 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 74390,
    wear_curve = 0.2728,
    preferred_supplier_ids = { "SUP-000471", "SUP-001411" },
    gen_id = 470,
}
_VP["VP-000471"] = {
    label = "DeltaMob modelo 2471 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 74527,
    wear_curve = 0.9959,
    preferred_supplier_ids = { "SUP-000472", "SUP-001414" },
    gen_id = 471,
}
_VP["VP-000472"] = {
    label = "OrionTruck modelo 2472 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 74664,
    wear_curve = 0.8385,
    preferred_supplier_ids = { "SUP-000473", "SUP-001417" },
    gen_id = 472,
}
_VP["VP-000473"] = {
    label = "SigmaBike modelo 2473 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 74801,
    wear_curve = 0.5017,
    preferred_supplier_ids = { "SUP-000474", "SUP-001420" },
    gen_id = 473,
}
_VP["VP-000474"] = {
    label = "AstraMotors modelo 2474 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 74938,
    wear_curve = 0.8279,
    preferred_supplier_ids = { "SUP-000475", "SUP-001423" },
    gen_id = 474,
}
_VP["VP-000475"] = {
    label = "RioVeículos modelo 2475 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 75075,
    wear_curve = 0.3207,
    preferred_supplier_ids = { "SUP-000476", "SUP-001426" },
    gen_id = 475,
}
_VP["VP-000476"] = {
    label = "NorteAuto modelo 2476 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 75212,
    wear_curve = 0.2033,
    preferred_supplier_ids = { "SUP-000477", "SUP-001429" },
    gen_id = 476,
}
_VP["VP-000477"] = {
    label = "DeltaMob modelo 2477 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 75349,
    wear_curve = 0.2085,
    preferred_supplier_ids = { "SUP-000478", "SUP-001432" },
    gen_id = 477,
}
_VP["VP-000478"] = {
    label = "OrionTruck modelo 2478 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 75486,
    wear_curve = 0.8251,
    preferred_supplier_ids = { "SUP-000479", "SUP-001435" },
    gen_id = 478,
}
_VP["VP-000479"] = {
    label = "SigmaBike modelo 2479 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 75623,
    wear_curve = 0.6995,
    preferred_supplier_ids = { "SUP-000480", "SUP-001438" },
    gen_id = 479,
}
_VP["VP-000480"] = {
    label = "AstraMotors modelo 2480 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 75760,
    wear_curve = 0.3076,
    preferred_supplier_ids = { "SUP-000481", "SUP-001441" },
    gen_id = 480,
}
_VP["VP-000481"] = {
    label = "RioVeículos modelo 2481 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 75897,
    wear_curve = 0.2907,
    preferred_supplier_ids = { "SUP-000482", "SUP-001444" },
    gen_id = 481,
}
_VP["VP-000482"] = {
    label = "NorteAuto modelo 2482 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 76034,
    wear_curve = 0.4770,
    preferred_supplier_ids = { "SUP-000483", "SUP-001447" },
    gen_id = 482,
}
_VP["VP-000483"] = {
    label = "DeltaMob modelo 2483 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 76171,
    wear_curve = 0.6254,
    preferred_supplier_ids = { "SUP-000484", "SUP-001450" },
    gen_id = 483,
}
_VP["VP-000484"] = {
    label = "OrionTruck modelo 2484 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 76308,
    wear_curve = 0.9202,
    preferred_supplier_ids = { "SUP-000485", "SUP-001453" },
    gen_id = 484,
}
_VP["VP-000485"] = {
    label = "SigmaBike modelo 2485 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 76445,
    wear_curve = 0.2011,
    preferred_supplier_ids = { "SUP-000486", "SUP-001456" },
    gen_id = 485,
}
_VP["VP-000486"] = {
    label = "AstraMotors modelo 2486 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 76582,
    wear_curve = 0.4420,
    preferred_supplier_ids = { "SUP-000487", "SUP-001459" },
    gen_id = 486,
}
_VP["VP-000487"] = {
    label = "RioVeículos modelo 2487 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 76719,
    wear_curve = 0.3300,
    preferred_supplier_ids = { "SUP-000488", "SUP-001462" },
    gen_id = 487,
}
_VP["VP-000488"] = {
    label = "NorteAuto modelo 2488 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 76856,
    wear_curve = 0.5416,
    preferred_supplier_ids = { "SUP-000489", "SUP-001465" },
    gen_id = 488,
}
_VP["VP-000489"] = {
    label = "DeltaMob modelo 2489 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 76993,
    wear_curve = 0.7178,
    preferred_supplier_ids = { "SUP-000490", "SUP-001468" },
    gen_id = 489,
}
_VP["VP-000490"] = {
    label = "OrionTruck modelo 2490 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 77130,
    wear_curve = 0.3066,
    preferred_supplier_ids = { "SUP-000491", "SUP-001471" },
    gen_id = 490,
}
_VP["VP-000491"] = {
    label = "SigmaBike modelo 2491 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 77267,
    wear_curve = 0.6196,
    preferred_supplier_ids = { "SUP-000492", "SUP-001474" },
    gen_id = 491,
}
_VP["VP-000492"] = {
    label = "AstraMotors modelo 2492 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 77404,
    wear_curve = 0.8015,
    preferred_supplier_ids = { "SUP-000493", "SUP-001477" },
    gen_id = 492,
}
_VP["VP-000493"] = {
    label = "RioVeículos modelo 2493 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 77541,
    wear_curve = 0.4205,
    preferred_supplier_ids = { "SUP-000494", "SUP-001480" },
    gen_id = 493,
}
_VP["VP-000494"] = {
    label = "NorteAuto modelo 2494 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 77678,
    wear_curve = 0.9868,
    preferred_supplier_ids = { "SUP-000495", "SUP-001483" },
    gen_id = 494,
}
_VP["VP-000495"] = {
    label = "DeltaMob modelo 2495 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 77815,
    wear_curve = 0.3815,
    preferred_supplier_ids = { "SUP-000496", "SUP-001486" },
    gen_id = 495,
}
_VP["VP-000496"] = {
    label = "OrionTruck modelo 2496 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 77952,
    wear_curve = 0.7840,
    preferred_supplier_ids = { "SUP-000497", "SUP-001489" },
    gen_id = 496,
}
_VP["VP-000497"] = {
    label = "SigmaBike modelo 2497 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 78089,
    wear_curve = 0.1931,
    preferred_supplier_ids = { "SUP-000498", "SUP-001492" },
    gen_id = 497,
}
_VP["VP-000498"] = {
    label = "AstraMotors modelo 2498 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 78226,
    wear_curve = 0.5421,
    preferred_supplier_ids = { "SUP-000499", "SUP-001495" },
    gen_id = 498,
}
_VP["VP-000499"] = {
    label = "RioVeículos modelo 2499 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 78363,
    wear_curve = 0.6879,
    preferred_supplier_ids = { "SUP-000500", "SUP-001498" },
    gen_id = 499,
}
_VP["VP-000500"] = {
    label = "NorteAuto modelo 2500 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 78500,
    wear_curve = 0.2048,
    preferred_supplier_ids = { "SUP-000501", "SUP-001501" },
    gen_id = 500,
}
_VP["VP-000501"] = {
    label = "DeltaMob modelo 2501 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 78637,
    wear_curve = 0.8364,
    preferred_supplier_ids = { "SUP-000502", "SUP-001504" },
    gen_id = 501,
}
_VP["VP-000502"] = {
    label = "OrionTruck modelo 2502 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 78774,
    wear_curve = 0.3106,
    preferred_supplier_ids = { "SUP-000503", "SUP-001507" },
    gen_id = 502,
}
_VP["VP-000503"] = {
    label = "SigmaBike modelo 2503 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 78911,
    wear_curve = 0.6897,
    preferred_supplier_ids = { "SUP-000504", "SUP-001510" },
    gen_id = 503,
}
_VP["VP-000504"] = {
    label = "AstraMotors modelo 2504 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 79048,
    wear_curve = 0.8301,
    preferred_supplier_ids = { "SUP-000505", "SUP-001513" },
    gen_id = 504,
}
_VP["VP-000505"] = {
    label = "RioVeículos modelo 2505 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 79185,
    wear_curve = 0.3406,
    preferred_supplier_ids = { "SUP-000506", "SUP-001516" },
    gen_id = 505,
}
_VP["VP-000506"] = {
    label = "NorteAuto modelo 2506 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 79322,
    wear_curve = 0.2331,
    preferred_supplier_ids = { "SUP-000507", "SUP-001519" },
    gen_id = 506,
}
_VP["VP-000507"] = {
    label = "DeltaMob modelo 2507 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 79459,
    wear_curve = 0.4544,
    preferred_supplier_ids = { "SUP-000508", "SUP-001522" },
    gen_id = 507,
}
_VP["VP-000508"] = {
    label = "OrionTruck modelo 2508 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 79596,
    wear_curve = 0.8370,
    preferred_supplier_ids = { "SUP-000509", "SUP-001525" },
    gen_id = 508,
}
_VP["VP-000509"] = {
    label = "SigmaBike modelo 2509 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 79733,
    wear_curve = 0.9769,
    preferred_supplier_ids = { "SUP-000510", "SUP-001528" },
    gen_id = 509,
}
_VP["VP-000510"] = {
    label = "AstraMotors modelo 2510 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 79870,
    wear_curve = 0.7002,
    preferred_supplier_ids = { "SUP-000511", "SUP-001531" },
    gen_id = 510,
}
_VP["VP-000511"] = {
    label = "RioVeículos modelo 2511 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 80007,
    wear_curve = 0.6128,
    preferred_supplier_ids = { "SUP-000512", "SUP-001534" },
    gen_id = 511,
}
_VP["VP-000512"] = {
    label = "NorteAuto modelo 2512 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 80144,
    wear_curve = 0.8292,
    preferred_supplier_ids = { "SUP-000513", "SUP-001537" },
    gen_id = 512,
}
_VP["VP-000513"] = {
    label = "DeltaMob modelo 2513 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 80281,
    wear_curve = 0.8795,
    preferred_supplier_ids = { "SUP-000514", "SUP-001540" },
    gen_id = 513,
}
_VP["VP-000514"] = {
    label = "OrionTruck modelo 2514 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 80418,
    wear_curve = 0.4151,
    preferred_supplier_ids = { "SUP-000515", "SUP-001543" },
    gen_id = 514,
}
_VP["VP-000515"] = {
    label = "SigmaBike modelo 2515 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 80555,
    wear_curve = 0.7964,
    preferred_supplier_ids = { "SUP-000516", "SUP-001546" },
    gen_id = 515,
}
_VP["VP-000516"] = {
    label = "AstraMotors modelo 2516 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 80692,
    wear_curve = 0.4835,
    preferred_supplier_ids = { "SUP-000517", "SUP-001549" },
    gen_id = 516,
}
_VP["VP-000517"] = {
    label = "RioVeículos modelo 2517 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 80829,
    wear_curve = 0.2560,
    preferred_supplier_ids = { "SUP-000518", "SUP-001552" },
    gen_id = 517,
}
_VP["VP-000518"] = {
    label = "NorteAuto modelo 2518 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 80966,
    wear_curve = 0.3802,
    preferred_supplier_ids = { "SUP-000519", "SUP-001555" },
    gen_id = 518,
}
_VP["VP-000519"] = {
    label = "DeltaMob modelo 2519 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 81103,
    wear_curve = 0.7532,
    preferred_supplier_ids = { "SUP-000520", "SUP-001558" },
    gen_id = 519,
}
_VP["VP-000520"] = {
    label = "OrionTruck modelo 2520 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 81240,
    wear_curve = 0.7153,
    preferred_supplier_ids = { "SUP-000521", "SUP-001561" },
    gen_id = 520,
}
_VP["VP-000521"] = {
    label = "SigmaBike modelo 2521 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 81377,
    wear_curve = 0.7213,
    preferred_supplier_ids = { "SUP-000522", "SUP-001564" },
    gen_id = 521,
}
_VP["VP-000522"] = {
    label = "AstraMotors modelo 2522 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 81514,
    wear_curve = 0.5264,
    preferred_supplier_ids = { "SUP-000523", "SUP-001567" },
    gen_id = 522,
}
_VP["VP-000523"] = {
    label = "RioVeículos modelo 2523 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 81651,
    wear_curve = 0.5990,
    preferred_supplier_ids = { "SUP-000524", "SUP-001570" },
    gen_id = 523,
}
_VP["VP-000524"] = {
    label = "NorteAuto modelo 2524 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 81788,
    wear_curve = 0.9649,
    preferred_supplier_ids = { "SUP-000525", "SUP-001573" },
    gen_id = 524,
}
_VP["VP-000525"] = {
    label = "DeltaMob modelo 2525 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 81925,
    wear_curve = 0.2662,
    preferred_supplier_ids = { "SUP-000526", "SUP-001576" },
    gen_id = 525,
}
_VP["VP-000526"] = {
    label = "OrionTruck modelo 2526 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 82062,
    wear_curve = 0.3677,
    preferred_supplier_ids = { "SUP-000527", "SUP-001579" },
    gen_id = 526,
}
_VP["VP-000527"] = {
    label = "SigmaBike modelo 2527 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 82199,
    wear_curve = 0.2694,
    preferred_supplier_ids = { "SUP-000528", "SUP-001582" },
    gen_id = 527,
}
_VP["VP-000528"] = {
    label = "AstraMotors modelo 2528 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 82336,
    wear_curve = 0.9657,
    preferred_supplier_ids = { "SUP-000529", "SUP-001585" },
    gen_id = 528,
}
_VP["VP-000529"] = {
    label = "RioVeículos modelo 2529 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 82473,
    wear_curve = 0.1834,
    preferred_supplier_ids = { "SUP-000530", "SUP-001588" },
    gen_id = 529,
}
_VP["VP-000530"] = {
    label = "NorteAuto modelo 2530 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 82610,
    wear_curve = 0.8257,
    preferred_supplier_ids = { "SUP-000531", "SUP-001591" },
    gen_id = 530,
}
_VP["VP-000531"] = {
    label = "DeltaMob modelo 2531 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 82747,
    wear_curve = 0.1500,
    preferred_supplier_ids = { "SUP-000532", "SUP-001594" },
    gen_id = 531,
}
_VP["VP-000532"] = {
    label = "OrionTruck modelo 2532 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 82884,
    wear_curve = 0.4228,
    preferred_supplier_ids = { "SUP-000533", "SUP-001597" },
    gen_id = 532,
}
_VP["VP-000533"] = {
    label = "SigmaBike modelo 2533 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 83021,
    wear_curve = 0.5364,
    preferred_supplier_ids = { "SUP-000534", "SUP-001600" },
    gen_id = 533,
}
_VP["VP-000534"] = {
    label = "AstraMotors modelo 2534 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 83158,
    wear_curve = 0.3299,
    preferred_supplier_ids = { "SUP-000535", "SUP-001603" },
    gen_id = 534,
}
_VP["VP-000535"] = {
    label = "RioVeículos modelo 2535 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 83295,
    wear_curve = 0.8294,
    preferred_supplier_ids = { "SUP-000536", "SUP-001606" },
    gen_id = 535,
}
_VP["VP-000536"] = {
    label = "NorteAuto modelo 2536 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 83432,
    wear_curve = 0.4378,
    preferred_supplier_ids = { "SUP-000537", "SUP-001609" },
    gen_id = 536,
}
_VP["VP-000537"] = {
    label = "DeltaMob modelo 2537 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 83569,
    wear_curve = 0.9173,
    preferred_supplier_ids = { "SUP-000538", "SUP-001612" },
    gen_id = 537,
}
_VP["VP-000538"] = {
    label = "OrionTruck modelo 2538 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 83706,
    wear_curve = 0.6150,
    preferred_supplier_ids = { "SUP-000539", "SUP-001615" },
    gen_id = 538,
}
_VP["VP-000539"] = {
    label = "SigmaBike modelo 2539 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 83843,
    wear_curve = 0.9754,
    preferred_supplier_ids = { "SUP-000540", "SUP-001618" },
    gen_id = 539,
}
_VP["VP-000540"] = {
    label = "AstraMotors modelo 2540 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 83980,
    wear_curve = 0.5327,
    preferred_supplier_ids = { "SUP-000541", "SUP-001621" },
    gen_id = 540,
}
_VP["VP-000541"] = {
    label = "RioVeículos modelo 2541 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 84117,
    wear_curve = 0.5063,
    preferred_supplier_ids = { "SUP-000542", "SUP-001624" },
    gen_id = 541,
}
_VP["VP-000542"] = {
    label = "NorteAuto modelo 2542 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 84254,
    wear_curve = 0.4456,
    preferred_supplier_ids = { "SUP-000543", "SUP-001627" },
    gen_id = 542,
}
_VP["VP-000543"] = {
    label = "DeltaMob modelo 2543 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 84391,
    wear_curve = 0.2037,
    preferred_supplier_ids = { "SUP-000544", "SUP-001630" },
    gen_id = 543,
}
_VP["VP-000544"] = {
    label = "OrionTruck modelo 2544 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 84528,
    wear_curve = 0.6343,
    preferred_supplier_ids = { "SUP-000545", "SUP-001633" },
    gen_id = 544,
}
_VP["VP-000545"] = {
    label = "SigmaBike modelo 2545 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 84665,
    wear_curve = 0.1529,
    preferred_supplier_ids = { "SUP-000546", "SUP-001636" },
    gen_id = 545,
}
_VP["VP-000546"] = {
    label = "AstraMotors modelo 2546 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 84802,
    wear_curve = 0.7644,
    preferred_supplier_ids = { "SUP-000547", "SUP-001639" },
    gen_id = 546,
}
_VP["VP-000547"] = {
    label = "RioVeículos modelo 2547 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 84939,
    wear_curve = 0.4158,
    preferred_supplier_ids = { "SUP-000548", "SUP-001642" },
    gen_id = 547,
}
_VP["VP-000548"] = {
    label = "NorteAuto modelo 2548 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 85076,
    wear_curve = 0.5960,
    preferred_supplier_ids = { "SUP-000549", "SUP-001645" },
    gen_id = 548,
}
_VP["VP-000549"] = {
    label = "DeltaMob modelo 2549 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 85213,
    wear_curve = 0.9157,
    preferred_supplier_ids = { "SUP-000550", "SUP-001648" },
    gen_id = 549,
}
_VP["VP-000550"] = {
    label = "OrionTruck modelo 2550 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 85350,
    wear_curve = 0.7691,
    preferred_supplier_ids = { "SUP-000551", "SUP-001651" },
    gen_id = 550,
}
_VP["VP-000551"] = {
    label = "SigmaBike modelo 2551 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 85487,
    wear_curve = 0.9994,
    preferred_supplier_ids = { "SUP-000552", "SUP-001654" },
    gen_id = 551,
}
_VP["VP-000552"] = {
    label = "AstraMotors modelo 2552 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 85624,
    wear_curve = 0.2458,
    preferred_supplier_ids = { "SUP-000553", "SUP-001657" },
    gen_id = 552,
}
_VP["VP-000553"] = {
    label = "RioVeículos modelo 2553 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 85761,
    wear_curve = 0.5083,
    preferred_supplier_ids = { "SUP-000554", "SUP-001660" },
    gen_id = 553,
}
_VP["VP-000554"] = {
    label = "NorteAuto modelo 2554 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 85898,
    wear_curve = 0.3400,
    preferred_supplier_ids = { "SUP-000555", "SUP-001663" },
    gen_id = 554,
}
_VP["VP-000555"] = {
    label = "DeltaMob modelo 2555 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 86035,
    wear_curve = 0.4933,
    preferred_supplier_ids = { "SUP-000556", "SUP-001666" },
    gen_id = 555,
}
_VP["VP-000556"] = {
    label = "OrionTruck modelo 2556 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 86172,
    wear_curve = 0.6091,
    preferred_supplier_ids = { "SUP-000557", "SUP-001669" },
    gen_id = 556,
}
_VP["VP-000557"] = {
    label = "SigmaBike modelo 2557 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 86309,
    wear_curve = 0.3598,
    preferred_supplier_ids = { "SUP-000558", "SUP-001672" },
    gen_id = 557,
}
_VP["VP-000558"] = {
    label = "AstraMotors modelo 2558 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 86446,
    wear_curve = 0.6475,
    preferred_supplier_ids = { "SUP-000559", "SUP-001675" },
    gen_id = 558,
}
_VP["VP-000559"] = {
    label = "RioVeículos modelo 2559 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 86583,
    wear_curve = 0.5352,
    preferred_supplier_ids = { "SUP-000560", "SUP-001678" },
    gen_id = 559,
}
_VP["VP-000560"] = {
    label = "NorteAuto modelo 2560 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 86720,
    wear_curve = 0.3724,
    preferred_supplier_ids = { "SUP-000561", "SUP-001681" },
    gen_id = 560,
}
_VP["VP-000561"] = {
    label = "DeltaMob modelo 2561 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 86857,
    wear_curve = 0.5155,
    preferred_supplier_ids = { "SUP-000562", "SUP-001684" },
    gen_id = 561,
}
_VP["VP-000562"] = {
    label = "OrionTruck modelo 2562 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 86994,
    wear_curve = 0.9360,
    preferred_supplier_ids = { "SUP-000563", "SUP-001687" },
    gen_id = 562,
}
_VP["VP-000563"] = {
    label = "SigmaBike modelo 2563 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 87131,
    wear_curve = 0.4691,
    preferred_supplier_ids = { "SUP-000564", "SUP-001690" },
    gen_id = 563,
}
_VP["VP-000564"] = {
    label = "AstraMotors modelo 2564 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 87268,
    wear_curve = 0.5613,
    preferred_supplier_ids = { "SUP-000565", "SUP-001693" },
    gen_id = 564,
}
_VP["VP-000565"] = {
    label = "RioVeículos modelo 2565 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 87405,
    wear_curve = 0.6099,
    preferred_supplier_ids = { "SUP-000566", "SUP-001696" },
    gen_id = 565,
}
_VP["VP-000566"] = {
    label = "NorteAuto modelo 2566 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 87542,
    wear_curve = 0.7410,
    preferred_supplier_ids = { "SUP-000567", "SUP-001699" },
    gen_id = 566,
}
_VP["VP-000567"] = {
    label = "DeltaMob modelo 2567 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 87679,
    wear_curve = 0.9564,
    preferred_supplier_ids = { "SUP-000568", "SUP-001702" },
    gen_id = 567,
}
_VP["VP-000568"] = {
    label = "OrionTruck modelo 2568 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 87816,
    wear_curve = 0.8728,
    preferred_supplier_ids = { "SUP-000569", "SUP-001705" },
    gen_id = 568,
}
_VP["VP-000569"] = {
    label = "SigmaBike modelo 2569 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 87953,
    wear_curve = 0.7115,
    preferred_supplier_ids = { "SUP-000570", "SUP-001708" },
    gen_id = 569,
}
_VP["VP-000570"] = {
    label = "AstraMotors modelo 2570 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 88090,
    wear_curve = 0.8582,
    preferred_supplier_ids = { "SUP-000571", "SUP-001711" },
    gen_id = 570,
}
_VP["VP-000571"] = {
    label = "RioVeículos modelo 2571 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 88227,
    wear_curve = 0.2914,
    preferred_supplier_ids = { "SUP-000572", "SUP-001714" },
    gen_id = 571,
}
_VP["VP-000572"] = {
    label = "NorteAuto modelo 2572 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 88364,
    wear_curve = 0.2111,
    preferred_supplier_ids = { "SUP-000573", "SUP-001717" },
    gen_id = 572,
}
_VP["VP-000573"] = {
    label = "DeltaMob modelo 2573 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 88501,
    wear_curve = 0.2997,
    preferred_supplier_ids = { "SUP-000574", "SUP-001720" },
    gen_id = 573,
}
_VP["VP-000574"] = {
    label = "OrionTruck modelo 2574 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 88638,
    wear_curve = 0.8468,
    preferred_supplier_ids = { "SUP-000575", "SUP-001723" },
    gen_id = 574,
}
_VP["VP-000575"] = {
    label = "SigmaBike modelo 2575 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 88775,
    wear_curve = 0.4911,
    preferred_supplier_ids = { "SUP-000576", "SUP-001726" },
    gen_id = 575,
}
_VP["VP-000576"] = {
    label = "AstraMotors modelo 2576 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 88912,
    wear_curve = 0.5920,
    preferred_supplier_ids = { "SUP-000577", "SUP-001729" },
    gen_id = 576,
}
_VP["VP-000577"] = {
    label = "RioVeículos modelo 2577 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 89049,
    wear_curve = 0.6448,
    preferred_supplier_ids = { "SUP-000578", "SUP-001732" },
    gen_id = 577,
}
_VP["VP-000578"] = {
    label = "NorteAuto modelo 2578 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 89186,
    wear_curve = 0.4125,
    preferred_supplier_ids = { "SUP-000579", "SUP-001735" },
    gen_id = 578,
}
_VP["VP-000579"] = {
    label = "DeltaMob modelo 2579 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 89323,
    wear_curve = 0.4845,
    preferred_supplier_ids = { "SUP-000580", "SUP-001738" },
    gen_id = 579,
}
_VP["VP-000580"] = {
    label = "OrionTruck modelo 2580 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 89460,
    wear_curve = 0.1897,
    preferred_supplier_ids = { "SUP-000581", "SUP-001741" },
    gen_id = 580,
}
_VP["VP-000581"] = {
    label = "SigmaBike modelo 2581 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 89597,
    wear_curve = 0.7779,
    preferred_supplier_ids = { "SUP-000582", "SUP-001744" },
    gen_id = 581,
}
_VP["VP-000582"] = {
    label = "AstraMotors modelo 2582 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 89734,
    wear_curve = 0.3254,
    preferred_supplier_ids = { "SUP-000583", "SUP-001747" },
    gen_id = 582,
}
_VP["VP-000583"] = {
    label = "RioVeículos modelo 2583 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 89871,
    wear_curve = 0.6966,
    preferred_supplier_ids = { "SUP-000584", "SUP-001750" },
    gen_id = 583,
}
_VP["VP-000584"] = {
    label = "NorteAuto modelo 2584 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 90008,
    wear_curve = 0.6164,
    preferred_supplier_ids = { "SUP-000585", "SUP-001753" },
    gen_id = 584,
}
_VP["VP-000585"] = {
    label = "DeltaMob modelo 2585 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 90145,
    wear_curve = 0.3978,
    preferred_supplier_ids = { "SUP-000586", "SUP-001756" },
    gen_id = 585,
}
_VP["VP-000586"] = {
    label = "OrionTruck modelo 2586 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 90282,
    wear_curve = 0.4450,
    preferred_supplier_ids = { "SUP-000587", "SUP-001759" },
    gen_id = 586,
}
_VP["VP-000587"] = {
    label = "SigmaBike modelo 2587 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 90419,
    wear_curve = 0.1777,
    preferred_supplier_ids = { "SUP-000588", "SUP-001762" },
    gen_id = 587,
}
_VP["VP-000588"] = {
    label = "AstraMotors modelo 2588 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 90556,
    wear_curve = 0.1833,
    preferred_supplier_ids = { "SUP-000589", "SUP-001765" },
    gen_id = 588,
}
_VP["VP-000589"] = {
    label = "RioVeículos modelo 2589 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 90693,
    wear_curve = 0.3251,
    preferred_supplier_ids = { "SUP-000590", "SUP-001768" },
    gen_id = 589,
}
_VP["VP-000590"] = {
    label = "NorteAuto modelo 2590 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 90830,
    wear_curve = 0.2806,
    preferred_supplier_ids = { "SUP-000591", "SUP-001771" },
    gen_id = 590,
}
_VP["VP-000591"] = {
    label = "DeltaMob modelo 2591 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 90967,
    wear_curve = 0.7968,
    preferred_supplier_ids = { "SUP-000592", "SUP-001774" },
    gen_id = 591,
}
_VP["VP-000592"] = {
    label = "OrionTruck modelo 2592 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 91104,
    wear_curve = 0.3579,
    preferred_supplier_ids = { "SUP-000593", "SUP-001777" },
    gen_id = 592,
}
_VP["VP-000593"] = {
    label = "SigmaBike modelo 2593 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 91241,
    wear_curve = 0.6752,
    preferred_supplier_ids = { "SUP-000594", "SUP-001780" },
    gen_id = 593,
}
_VP["VP-000594"] = {
    label = "AstraMotors modelo 2594 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 91378,
    wear_curve = 0.9362,
    preferred_supplier_ids = { "SUP-000595", "SUP-001783" },
    gen_id = 594,
}
_VP["VP-000595"] = {
    label = "RioVeículos modelo 2595 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 91515,
    wear_curve = 0.9260,
    preferred_supplier_ids = { "SUP-000596", "SUP-001786" },
    gen_id = 595,
}
_VP["VP-000596"] = {
    label = "NorteAuto modelo 2596 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 91652,
    wear_curve = 0.9933,
    preferred_supplier_ids = { "SUP-000597", "SUP-001789" },
    gen_id = 596,
}
_VP["VP-000597"] = {
    label = "DeltaMob modelo 2597 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 91789,
    wear_curve = 0.5376,
    preferred_supplier_ids = { "SUP-000598", "SUP-001792" },
    gen_id = 597,
}
_VP["VP-000598"] = {
    label = "OrionTruck modelo 2598 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 91926,
    wear_curve = 0.6923,
    preferred_supplier_ids = { "SUP-000599", "SUP-001795" },
    gen_id = 598,
}
_VP["VP-000599"] = {
    label = "SigmaBike modelo 2599 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 92063,
    wear_curve = 0.3598,
    preferred_supplier_ids = { "SUP-000600", "SUP-001798" },
    gen_id = 599,
}
_VP["VP-000600"] = {
    label = "AstraMotors modelo 2600 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 92200,
    wear_curve = 0.9158,
    preferred_supplier_ids = { "SUP-000601", "SUP-001801" },
    gen_id = 600,
}
_VP["VP-000601"] = {
    label = "RioVeículos modelo 2601 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 92337,
    wear_curve = 0.6069,
    preferred_supplier_ids = { "SUP-000602", "SUP-001804" },
    gen_id = 601,
}
_VP["VP-000602"] = {
    label = "NorteAuto modelo 2602 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 92474,
    wear_curve = 0.4979,
    preferred_supplier_ids = { "SUP-000603", "SUP-001807" },
    gen_id = 602,
}
_VP["VP-000603"] = {
    label = "DeltaMob modelo 2603 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 92611,
    wear_curve = 0.1702,
    preferred_supplier_ids = { "SUP-000604", "SUP-001810" },
    gen_id = 603,
}
_VP["VP-000604"] = {
    label = "OrionTruck modelo 2604 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 92748,
    wear_curve = 0.2749,
    preferred_supplier_ids = { "SUP-000605", "SUP-001813" },
    gen_id = 604,
}
_VP["VP-000605"] = {
    label = "SigmaBike modelo 2605 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 92885,
    wear_curve = 0.2265,
    preferred_supplier_ids = { "SUP-000606", "SUP-001816" },
    gen_id = 605,
}
_VP["VP-000606"] = {
    label = "AstraMotors modelo 2606 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 93022,
    wear_curve = 0.1524,
    preferred_supplier_ids = { "SUP-000607", "SUP-001819" },
    gen_id = 606,
}
_VP["VP-000607"] = {
    label = "RioVeículos modelo 2607 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 93159,
    wear_curve = 0.9666,
    preferred_supplier_ids = { "SUP-000608", "SUP-001822" },
    gen_id = 607,
}
_VP["VP-000608"] = {
    label = "NorteAuto modelo 2608 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 93296,
    wear_curve = 0.4160,
    preferred_supplier_ids = { "SUP-000609", "SUP-001825" },
    gen_id = 608,
}
_VP["VP-000609"] = {
    label = "DeltaMob modelo 2609 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 93433,
    wear_curve = 0.9181,
    preferred_supplier_ids = { "SUP-000610", "SUP-001828" },
    gen_id = 609,
}
_VP["VP-000610"] = {
    label = "OrionTruck modelo 2610 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 93570,
    wear_curve = 0.1730,
    preferred_supplier_ids = { "SUP-000611", "SUP-001831" },
    gen_id = 610,
}
_VP["VP-000611"] = {
    label = "SigmaBike modelo 2611 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 93707,
    wear_curve = 0.6883,
    preferred_supplier_ids = { "SUP-000612", "SUP-001834" },
    gen_id = 611,
}
_VP["VP-000612"] = {
    label = "AstraMotors modelo 2612 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 93844,
    wear_curve = 0.6533,
    preferred_supplier_ids = { "SUP-000613", "SUP-001837" },
    gen_id = 612,
}
_VP["VP-000613"] = {
    label = "RioVeículos modelo 2613 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 93981,
    wear_curve = 0.6316,
    preferred_supplier_ids = { "SUP-000614", "SUP-001840" },
    gen_id = 613,
}
_VP["VP-000614"] = {
    label = "NorteAuto modelo 2614 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 94118,
    wear_curve = 0.7543,
    preferred_supplier_ids = { "SUP-000615", "SUP-001843" },
    gen_id = 614,
}
_VP["VP-000615"] = {
    label = "DeltaMob modelo 2615 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 94255,
    wear_curve = 0.9201,
    preferred_supplier_ids = { "SUP-000616", "SUP-001846" },
    gen_id = 615,
}
_VP["VP-000616"] = {
    label = "OrionTruck modelo 2616 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 94392,
    wear_curve = 0.8802,
    preferred_supplier_ids = { "SUP-000617", "SUP-001849" },
    gen_id = 616,
}
_VP["VP-000617"] = {
    label = "SigmaBike modelo 2617 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 94529,
    wear_curve = 0.5632,
    preferred_supplier_ids = { "SUP-000618", "SUP-001852" },
    gen_id = 617,
}
_VP["VP-000618"] = {
    label = "AstraMotors modelo 2618 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 94666,
    wear_curve = 0.4893,
    preferred_supplier_ids = { "SUP-000619", "SUP-001855" },
    gen_id = 618,
}
_VP["VP-000619"] = {
    label = "RioVeículos modelo 2619 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 94803,
    wear_curve = 0.3375,
    preferred_supplier_ids = { "SUP-000620", "SUP-001858" },
    gen_id = 619,
}
_VP["VP-000620"] = {
    label = "NorteAuto modelo 2620 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 94940,
    wear_curve = 0.4687,
    preferred_supplier_ids = { "SUP-000621", "SUP-001861" },
    gen_id = 620,
}
_VP["VP-000621"] = {
    label = "DeltaMob modelo 2621 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 95077,
    wear_curve = 0.7020,
    preferred_supplier_ids = { "SUP-000622", "SUP-001864" },
    gen_id = 621,
}
_VP["VP-000622"] = {
    label = "OrionTruck modelo 2622 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 95214,
    wear_curve = 0.2850,
    preferred_supplier_ids = { "SUP-000623", "SUP-001867" },
    gen_id = 622,
}
_VP["VP-000623"] = {
    label = "SigmaBike modelo 2623 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 95351,
    wear_curve = 0.8446,
    preferred_supplier_ids = { "SUP-000624", "SUP-001870" },
    gen_id = 623,
}
_VP["VP-000624"] = {
    label = "AstraMotors modelo 2624 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 95488,
    wear_curve = 0.2710,
    preferred_supplier_ids = { "SUP-000625", "SUP-001873" },
    gen_id = 624,
}
_VP["VP-000625"] = {
    label = "RioVeículos modelo 2625 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 95625,
    wear_curve = 0.4272,
    preferred_supplier_ids = { "SUP-000626", "SUP-001876" },
    gen_id = 625,
}
_VP["VP-000626"] = {
    label = "NorteAuto modelo 2626 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 95762,
    wear_curve = 0.2654,
    preferred_supplier_ids = { "SUP-000627", "SUP-001879" },
    gen_id = 626,
}
_VP["VP-000627"] = {
    label = "DeltaMob modelo 2627 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 95899,
    wear_curve = 0.3367,
    preferred_supplier_ids = { "SUP-000628", "SUP-001882" },
    gen_id = 627,
}
_VP["VP-000628"] = {
    label = "OrionTruck modelo 2628 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 96036,
    wear_curve = 0.2985,
    preferred_supplier_ids = { "SUP-000629", "SUP-001885" },
    gen_id = 628,
}
_VP["VP-000629"] = {
    label = "SigmaBike modelo 2629 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 96173,
    wear_curve = 0.2921,
    preferred_supplier_ids = { "SUP-000630", "SUP-001888" },
    gen_id = 629,
}
_VP["VP-000630"] = {
    label = "AstraMotors modelo 2630 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 96310,
    wear_curve = 0.6205,
    preferred_supplier_ids = { "SUP-000631", "SUP-001891" },
    gen_id = 630,
}
_VP["VP-000631"] = {
    label = "RioVeículos modelo 2631 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 96447,
    wear_curve = 0.6264,
    preferred_supplier_ids = { "SUP-000632", "SUP-001894" },
    gen_id = 631,
}
_VP["VP-000632"] = {
    label = "NorteAuto modelo 2632 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 96584,
    wear_curve = 0.3169,
    preferred_supplier_ids = { "SUP-000633", "SUP-001897" },
    gen_id = 632,
}
_VP["VP-000633"] = {
    label = "DeltaMob modelo 2633 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 96721,
    wear_curve = 0.4912,
    preferred_supplier_ids = { "SUP-000634", "SUP-001900" },
    gen_id = 633,
}
_VP["VP-000634"] = {
    label = "OrionTruck modelo 2634 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 96858,
    wear_curve = 0.5701,
    preferred_supplier_ids = { "SUP-000635", "SUP-001903" },
    gen_id = 634,
}
_VP["VP-000635"] = {
    label = "SigmaBike modelo 2635 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 96995,
    wear_curve = 0.6395,
    preferred_supplier_ids = { "SUP-000636", "SUP-001906" },
    gen_id = 635,
}
_VP["VP-000636"] = {
    label = "AstraMotors modelo 2636 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 97132,
    wear_curve = 0.6087,
    preferred_supplier_ids = { "SUP-000637", "SUP-001909" },
    gen_id = 636,
}
_VP["VP-000637"] = {
    label = "RioVeículos modelo 2637 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 97269,
    wear_curve = 0.2224,
    preferred_supplier_ids = { "SUP-000638", "SUP-001912" },
    gen_id = 637,
}
_VP["VP-000638"] = {
    label = "NorteAuto modelo 2638 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 97406,
    wear_curve = 0.8742,
    preferred_supplier_ids = { "SUP-000639", "SUP-001915" },
    gen_id = 638,
}
_VP["VP-000639"] = {
    label = "DeltaMob modelo 2639 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 97543,
    wear_curve = 0.4448,
    preferred_supplier_ids = { "SUP-000640", "SUP-001918" },
    gen_id = 639,
}
_VP["VP-000640"] = {
    label = "OrionTruck modelo 2640 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 97680,
    wear_curve = 0.3647,
    preferred_supplier_ids = { "SUP-000641", "SUP-001921" },
    gen_id = 640,
}
_VP["VP-000641"] = {
    label = "SigmaBike modelo 2641 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 97817,
    wear_curve = 0.6645,
    preferred_supplier_ids = { "SUP-000642", "SUP-001924" },
    gen_id = 641,
}
_VP["VP-000642"] = {
    label = "AstraMotors modelo 2642 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 97954,
    wear_curve = 0.2354,
    preferred_supplier_ids = { "SUP-000643", "SUP-001927" },
    gen_id = 642,
}
_VP["VP-000643"] = {
    label = "RioVeículos modelo 2643 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 98091,
    wear_curve = 0.2483,
    preferred_supplier_ids = { "SUP-000644", "SUP-001930" },
    gen_id = 643,
}
_VP["VP-000644"] = {
    label = "NorteAuto modelo 2644 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 98228,
    wear_curve = 0.7327,
    preferred_supplier_ids = { "SUP-000645", "SUP-001933" },
    gen_id = 644,
}
_VP["VP-000645"] = {
    label = "DeltaMob modelo 2645 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 98365,
    wear_curve = 0.9073,
    preferred_supplier_ids = { "SUP-000646", "SUP-001936" },
    gen_id = 645,
}
_VP["VP-000646"] = {
    label = "OrionTruck modelo 2646 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 98502,
    wear_curve = 0.7990,
    preferred_supplier_ids = { "SUP-000647", "SUP-001939" },
    gen_id = 646,
}
_VP["VP-000647"] = {
    label = "SigmaBike modelo 2647 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 98639,
    wear_curve = 0.7932,
    preferred_supplier_ids = { "SUP-000648", "SUP-001942" },
    gen_id = 647,
}
_VP["VP-000648"] = {
    label = "AstraMotors modelo 2648 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 98776,
    wear_curve = 0.2096,
    preferred_supplier_ids = { "SUP-000649", "SUP-001945" },
    gen_id = 648,
}
_VP["VP-000649"] = {
    label = "RioVeículos modelo 2649 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 98913,
    wear_curve = 0.1815,
    preferred_supplier_ids = { "SUP-000650", "SUP-001948" },
    gen_id = 649,
}
_VP["VP-000650"] = {
    label = "NorteAuto modelo 2650 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 99050,
    wear_curve = 0.7720,
    preferred_supplier_ids = { "SUP-000651", "SUP-001951" },
    gen_id = 650,
}
_VP["VP-000651"] = {
    label = "DeltaMob modelo 2651 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 99187,
    wear_curve = 0.7681,
    preferred_supplier_ids = { "SUP-000652", "SUP-001954" },
    gen_id = 651,
}
_VP["VP-000652"] = {
    label = "OrionTruck modelo 2652 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 99324,
    wear_curve = 0.8785,
    preferred_supplier_ids = { "SUP-000653", "SUP-001957" },
    gen_id = 652,
}
_VP["VP-000653"] = {
    label = "SigmaBike modelo 2653 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 99461,
    wear_curve = 0.3971,
    preferred_supplier_ids = { "SUP-000654", "SUP-001960" },
    gen_id = 653,
}
_VP["VP-000654"] = {
    label = "AstraMotors modelo 2654 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 99598,
    wear_curve = 0.8416,
    preferred_supplier_ids = { "SUP-000655", "SUP-001963" },
    gen_id = 654,
}
_VP["VP-000655"] = {
    label = "RioVeículos modelo 2655 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 99735,
    wear_curve = 0.6419,
    preferred_supplier_ids = { "SUP-000656", "SUP-001966" },
    gen_id = 655,
}
_VP["VP-000656"] = {
    label = "NorteAuto modelo 2656 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 99872,
    wear_curve = 0.8544,
    preferred_supplier_ids = { "SUP-000657", "SUP-001969" },
    gen_id = 656,
}
_VP["VP-000657"] = {
    label = "DeltaMob modelo 2657 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 100009,
    wear_curve = 0.6653,
    preferred_supplier_ids = { "SUP-000658", "SUP-001972" },
    gen_id = 657,
}
_VP["VP-000658"] = {
    label = "OrionTruck modelo 2658 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 100146,
    wear_curve = 0.2882,
    preferred_supplier_ids = { "SUP-000659", "SUP-001975" },
    gen_id = 658,
}
_VP["VP-000659"] = {
    label = "SigmaBike modelo 2659 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 100283,
    wear_curve = 0.4523,
    preferred_supplier_ids = { "SUP-000660", "SUP-001978" },
    gen_id = 659,
}
_VP["VP-000660"] = {
    label = "AstraMotors modelo 2660 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 100420,
    wear_curve = 0.3638,
    preferred_supplier_ids = { "SUP-000661", "SUP-001981" },
    gen_id = 660,
}
_VP["VP-000661"] = {
    label = "RioVeículos modelo 2661 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 100557,
    wear_curve = 0.3368,
    preferred_supplier_ids = { "SUP-000662", "SUP-001984" },
    gen_id = 661,
}
_VP["VP-000662"] = {
    label = "NorteAuto modelo 2662 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 100694,
    wear_curve = 0.5506,
    preferred_supplier_ids = { "SUP-000663", "SUP-001987" },
    gen_id = 662,
}
_VP["VP-000663"] = {
    label = "DeltaMob modelo 2663 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 100831,
    wear_curve = 0.5408,
    preferred_supplier_ids = { "SUP-000664", "SUP-001990" },
    gen_id = 663,
}
_VP["VP-000664"] = {
    label = "OrionTruck modelo 2664 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 100968,
    wear_curve = 0.6461,
    preferred_supplier_ids = { "SUP-000665", "SUP-001993" },
    gen_id = 664,
}
_VP["VP-000665"] = {
    label = "SigmaBike modelo 2665 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 101105,
    wear_curve = 0.9559,
    preferred_supplier_ids = { "SUP-000666", "SUP-001996" },
    gen_id = 665,
}
_VP["VP-000666"] = {
    label = "AstraMotors modelo 2666 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 101242,
    wear_curve = 0.2116,
    preferred_supplier_ids = { "SUP-000667", "SUP-001999" },
    gen_id = 666,
}
_VP["VP-000667"] = {
    label = "RioVeículos modelo 2667 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 101379,
    wear_curve = 0.8376,
    preferred_supplier_ids = { "SUP-000668", "SUP-002002" },
    gen_id = 667,
}
_VP["VP-000668"] = {
    label = "NorteAuto modelo 2668 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 101516,
    wear_curve = 0.5793,
    preferred_supplier_ids = { "SUP-000669", "SUP-002005" },
    gen_id = 668,
}
_VP["VP-000669"] = {
    label = "DeltaMob modelo 2669 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 101653,
    wear_curve = 0.2897,
    preferred_supplier_ids = { "SUP-000670", "SUP-002008" },
    gen_id = 669,
}
_VP["VP-000670"] = {
    label = "OrionTruck modelo 2670 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 101790,
    wear_curve = 0.4376,
    preferred_supplier_ids = { "SUP-000671", "SUP-002011" },
    gen_id = 670,
}
_VP["VP-000671"] = {
    label = "SigmaBike modelo 2671 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 101927,
    wear_curve = 0.4624,
    preferred_supplier_ids = { "SUP-000672", "SUP-002014" },
    gen_id = 671,
}
_VP["VP-000672"] = {
    label = "AstraMotors modelo 2672 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 102064,
    wear_curve = 0.3908,
    preferred_supplier_ids = { "SUP-000673", "SUP-002017" },
    gen_id = 672,
}
_VP["VP-000673"] = {
    label = "RioVeículos modelo 2673 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 102201,
    wear_curve = 0.7046,
    preferred_supplier_ids = { "SUP-000674", "SUP-002020" },
    gen_id = 673,
}
_VP["VP-000674"] = {
    label = "NorteAuto modelo 2674 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 102338,
    wear_curve = 0.1647,
    preferred_supplier_ids = { "SUP-000675", "SUP-002023" },
    gen_id = 674,
}
_VP["VP-000675"] = {
    label = "DeltaMob modelo 2675 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 102475,
    wear_curve = 0.4707,
    preferred_supplier_ids = { "SUP-000676", "SUP-002026" },
    gen_id = 675,
}
_VP["VP-000676"] = {
    label = "OrionTruck modelo 2676 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 102612,
    wear_curve = 0.7808,
    preferred_supplier_ids = { "SUP-000677", "SUP-002029" },
    gen_id = 676,
}
_VP["VP-000677"] = {
    label = "SigmaBike modelo 2677 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 102749,
    wear_curve = 0.8270,
    preferred_supplier_ids = { "SUP-000678", "SUP-002032" },
    gen_id = 677,
}
_VP["VP-000678"] = {
    label = "AstraMotors modelo 2678 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 102886,
    wear_curve = 0.4913,
    preferred_supplier_ids = { "SUP-000679", "SUP-002035" },
    gen_id = 678,
}
_VP["VP-000679"] = {
    label = "RioVeículos modelo 2679 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 103023,
    wear_curve = 0.8865,
    preferred_supplier_ids = { "SUP-000680", "SUP-002038" },
    gen_id = 679,
}
_VP["VP-000680"] = {
    label = "NorteAuto modelo 2680 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 103160,
    wear_curve = 0.4468,
    preferred_supplier_ids = { "SUP-000681", "SUP-002041" },
    gen_id = 680,
}
_VP["VP-000681"] = {
    label = "DeltaMob modelo 2681 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 103297,
    wear_curve = 0.8336,
    preferred_supplier_ids = { "SUP-000682", "SUP-002044" },
    gen_id = 681,
}
_VP["VP-000682"] = {
    label = "OrionTruck modelo 2682 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 103434,
    wear_curve = 0.5428,
    preferred_supplier_ids = { "SUP-000683", "SUP-002047" },
    gen_id = 682,
}
_VP["VP-000683"] = {
    label = "SigmaBike modelo 2683 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 103571,
    wear_curve = 0.3753,
    preferred_supplier_ids = { "SUP-000684", "SUP-002050" },
    gen_id = 683,
}
_VP["VP-000684"] = {
    label = "AstraMotors modelo 2684 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 103708,
    wear_curve = 0.3081,
    preferred_supplier_ids = { "SUP-000685", "SUP-002053" },
    gen_id = 684,
}
_VP["VP-000685"] = {
    label = "RioVeículos modelo 2685 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 103845,
    wear_curve = 0.9333,
    preferred_supplier_ids = { "SUP-000686", "SUP-002056" },
    gen_id = 685,
}
_VP["VP-000686"] = {
    label = "NorteAuto modelo 2686 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 103982,
    wear_curve = 0.4447,
    preferred_supplier_ids = { "SUP-000687", "SUP-002059" },
    gen_id = 686,
}
_VP["VP-000687"] = {
    label = "DeltaMob modelo 2687 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 104119,
    wear_curve = 0.3245,
    preferred_supplier_ids = { "SUP-000688", "SUP-002062" },
    gen_id = 687,
}
_VP["VP-000688"] = {
    label = "OrionTruck modelo 2688 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 104256,
    wear_curve = 0.8459,
    preferred_supplier_ids = { "SUP-000689", "SUP-002065" },
    gen_id = 688,
}
_VP["VP-000689"] = {
    label = "SigmaBike modelo 2689 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 104393,
    wear_curve = 0.8620,
    preferred_supplier_ids = { "SUP-000690", "SUP-002068" },
    gen_id = 689,
}
_VP["VP-000690"] = {
    label = "AstraMotors modelo 2690 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 104530,
    wear_curve = 0.8952,
    preferred_supplier_ids = { "SUP-000691", "SUP-002071" },
    gen_id = 690,
}
_VP["VP-000691"] = {
    label = "RioVeículos modelo 2691 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 104667,
    wear_curve = 0.8591,
    preferred_supplier_ids = { "SUP-000692", "SUP-002074" },
    gen_id = 691,
}
_VP["VP-000692"] = {
    label = "NorteAuto modelo 2692 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 104804,
    wear_curve = 0.4331,
    preferred_supplier_ids = { "SUP-000693", "SUP-002077" },
    gen_id = 692,
}
_VP["VP-000693"] = {
    label = "DeltaMob modelo 2693 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 104941,
    wear_curve = 0.7770,
    preferred_supplier_ids = { "SUP-000694", "SUP-002080" },
    gen_id = 693,
}
_VP["VP-000694"] = {
    label = "OrionTruck modelo 2694 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 105078,
    wear_curve = 0.9459,
    preferred_supplier_ids = { "SUP-000695", "SUP-002083" },
    gen_id = 694,
}
_VP["VP-000695"] = {
    label = "SigmaBike modelo 2695 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 105215,
    wear_curve = 0.3349,
    preferred_supplier_ids = { "SUP-000696", "SUP-002086" },
    gen_id = 695,
}
_VP["VP-000696"] = {
    label = "AstraMotors modelo 2696 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 105352,
    wear_curve = 0.1926,
    preferred_supplier_ids = { "SUP-000697", "SUP-002089" },
    gen_id = 696,
}
_VP["VP-000697"] = {
    label = "RioVeículos modelo 2697 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 105489,
    wear_curve = 0.7464,
    preferred_supplier_ids = { "SUP-000698", "SUP-002092" },
    gen_id = 697,
}
_VP["VP-000698"] = {
    label = "NorteAuto modelo 2698 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 105626,
    wear_curve = 0.9102,
    preferred_supplier_ids = { "SUP-000699", "SUP-002095" },
    gen_id = 698,
}
_VP["VP-000699"] = {
    label = "DeltaMob modelo 2699 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 105763,
    wear_curve = 0.7125,
    preferred_supplier_ids = { "SUP-000700", "SUP-002098" },
    gen_id = 699,
}
_VP["VP-000700"] = {
    label = "OrionTruck modelo 2700 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 105900,
    wear_curve = 0.7356,
    preferred_supplier_ids = { "SUP-000701", "SUP-002101" },
    gen_id = 700,
}
_VP["VP-000701"] = {
    label = "SigmaBike modelo 2701 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 106037,
    wear_curve = 0.4968,
    preferred_supplier_ids = { "SUP-000702", "SUP-002104" },
    gen_id = 701,
}
_VP["VP-000702"] = {
    label = "AstraMotors modelo 2702 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 106174,
    wear_curve = 0.5309,
    preferred_supplier_ids = { "SUP-000703", "SUP-002107" },
    gen_id = 702,
}
_VP["VP-000703"] = {
    label = "RioVeículos modelo 2703 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 106311,
    wear_curve = 0.1793,
    preferred_supplier_ids = { "SUP-000704", "SUP-002110" },
    gen_id = 703,
}
_VP["VP-000704"] = {
    label = "NorteAuto modelo 2704 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 106448,
    wear_curve = 0.9916,
    preferred_supplier_ids = { "SUP-000705", "SUP-002113" },
    gen_id = 704,
}
_VP["VP-000705"] = {
    label = "DeltaMob modelo 2705 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 106585,
    wear_curve = 0.4380,
    preferred_supplier_ids = { "SUP-000706", "SUP-002116" },
    gen_id = 705,
}
_VP["VP-000706"] = {
    label = "OrionTruck modelo 2706 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 106722,
    wear_curve = 0.6020,
    preferred_supplier_ids = { "SUP-000707", "SUP-002119" },
    gen_id = 706,
}
_VP["VP-000707"] = {
    label = "SigmaBike modelo 2707 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 106859,
    wear_curve = 0.4971,
    preferred_supplier_ids = { "SUP-000708", "SUP-002122" },
    gen_id = 707,
}
_VP["VP-000708"] = {
    label = "AstraMotors modelo 2708 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 106996,
    wear_curve = 0.2075,
    preferred_supplier_ids = { "SUP-000709", "SUP-002125" },
    gen_id = 708,
}
_VP["VP-000709"] = {
    label = "RioVeículos modelo 2709 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 107133,
    wear_curve = 0.9540,
    preferred_supplier_ids = { "SUP-000710", "SUP-002128" },
    gen_id = 709,
}
_VP["VP-000710"] = {
    label = "NorteAuto modelo 2710 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 107270,
    wear_curve = 0.3010,
    preferred_supplier_ids = { "SUP-000711", "SUP-002131" },
    gen_id = 710,
}
_VP["VP-000711"] = {
    label = "DeltaMob modelo 2711 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 107407,
    wear_curve = 0.6686,
    preferred_supplier_ids = { "SUP-000712", "SUP-002134" },
    gen_id = 711,
}
_VP["VP-000712"] = {
    label = "OrionTruck modelo 2712 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 107544,
    wear_curve = 0.1533,
    preferred_supplier_ids = { "SUP-000713", "SUP-002137" },
    gen_id = 712,
}
_VP["VP-000713"] = {
    label = "SigmaBike modelo 2713 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 107681,
    wear_curve = 0.5546,
    preferred_supplier_ids = { "SUP-000714", "SUP-002140" },
    gen_id = 713,
}
_VP["VP-000714"] = {
    label = "AstraMotors modelo 2714 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 107818,
    wear_curve = 0.5521,
    preferred_supplier_ids = { "SUP-000715", "SUP-002143" },
    gen_id = 714,
}
_VP["VP-000715"] = {
    label = "RioVeículos modelo 2715 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 107955,
    wear_curve = 0.5748,
    preferred_supplier_ids = { "SUP-000716", "SUP-002146" },
    gen_id = 715,
}
_VP["VP-000716"] = {
    label = "NorteAuto modelo 2716 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 108092,
    wear_curve = 0.5347,
    preferred_supplier_ids = { "SUP-000717", "SUP-002149" },
    gen_id = 716,
}
_VP["VP-000717"] = {
    label = "DeltaMob modelo 2717 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 108229,
    wear_curve = 0.4998,
    preferred_supplier_ids = { "SUP-000718", "SUP-002152" },
    gen_id = 717,
}
_VP["VP-000718"] = {
    label = "OrionTruck modelo 2718 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 108366,
    wear_curve = 0.1521,
    preferred_supplier_ids = { "SUP-000719", "SUP-002155" },
    gen_id = 718,
}
_VP["VP-000719"] = {
    label = "SigmaBike modelo 2719 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 108503,
    wear_curve = 0.2009,
    preferred_supplier_ids = { "SUP-000720", "SUP-002158" },
    gen_id = 719,
}
_VP["VP-000720"] = {
    label = "AstraMotors modelo 2720 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 108640,
    wear_curve = 0.3775,
    preferred_supplier_ids = { "SUP-000721", "SUP-002161" },
    gen_id = 720,
}
_VP["VP-000721"] = {
    label = "RioVeículos modelo 2721 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 108777,
    wear_curve = 0.7689,
    preferred_supplier_ids = { "SUP-000722", "SUP-002164" },
    gen_id = 721,
}
_VP["VP-000722"] = {
    label = "NorteAuto modelo 2722 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 108914,
    wear_curve = 0.5028,
    preferred_supplier_ids = { "SUP-000723", "SUP-002167" },
    gen_id = 722,
}
_VP["VP-000723"] = {
    label = "DeltaMob modelo 2723 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 109051,
    wear_curve = 0.6787,
    preferred_supplier_ids = { "SUP-000724", "SUP-002170" },
    gen_id = 723,
}
_VP["VP-000724"] = {
    label = "OrionTruck modelo 2724 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 109188,
    wear_curve = 0.5073,
    preferred_supplier_ids = { "SUP-000725", "SUP-002173" },
    gen_id = 724,
}
_VP["VP-000725"] = {
    label = "SigmaBike modelo 2725 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 109325,
    wear_curve = 0.5091,
    preferred_supplier_ids = { "SUP-000726", "SUP-002176" },
    gen_id = 725,
}
_VP["VP-000726"] = {
    label = "AstraMotors modelo 2726 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 109462,
    wear_curve = 0.1580,
    preferred_supplier_ids = { "SUP-000727", "SUP-002179" },
    gen_id = 726,
}
_VP["VP-000727"] = {
    label = "RioVeículos modelo 2727 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 109599,
    wear_curve = 0.8387,
    preferred_supplier_ids = { "SUP-000728", "SUP-002182" },
    gen_id = 727,
}
_VP["VP-000728"] = {
    label = "NorteAuto modelo 2728 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 109736,
    wear_curve = 0.7653,
    preferred_supplier_ids = { "SUP-000729", "SUP-002185" },
    gen_id = 728,
}
_VP["VP-000729"] = {
    label = "DeltaMob modelo 2729 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 109873,
    wear_curve = 0.1622,
    preferred_supplier_ids = { "SUP-000730", "SUP-002188" },
    gen_id = 729,
}
_VP["VP-000730"] = {
    label = "OrionTruck modelo 2730 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 110010,
    wear_curve = 0.5540,
    preferred_supplier_ids = { "SUP-000731", "SUP-002191" },
    gen_id = 730,
}
_VP["VP-000731"] = {
    label = "SigmaBike modelo 2731 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 110147,
    wear_curve = 0.1728,
    preferred_supplier_ids = { "SUP-000732", "SUP-002194" },
    gen_id = 731,
}
_VP["VP-000732"] = {
    label = "AstraMotors modelo 2732 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 110284,
    wear_curve = 0.2583,
    preferred_supplier_ids = { "SUP-000733", "SUP-002197" },
    gen_id = 732,
}
_VP["VP-000733"] = {
    label = "RioVeículos modelo 2733 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 110421,
    wear_curve = 0.9788,
    preferred_supplier_ids = { "SUP-000734", "SUP-002200" },
    gen_id = 733,
}
_VP["VP-000734"] = {
    label = "NorteAuto modelo 2734 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 110558,
    wear_curve = 0.3060,
    preferred_supplier_ids = { "SUP-000735", "SUP-002203" },
    gen_id = 734,
}
_VP["VP-000735"] = {
    label = "DeltaMob modelo 2735 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 110695,
    wear_curve = 0.6276,
    preferred_supplier_ids = { "SUP-000736", "SUP-002206" },
    gen_id = 735,
}
_VP["VP-000736"] = {
    label = "OrionTruck modelo 2736 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 110832,
    wear_curve = 0.6590,
    preferred_supplier_ids = { "SUP-000737", "SUP-002209" },
    gen_id = 736,
}
_VP["VP-000737"] = {
    label = "SigmaBike modelo 2737 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 110969,
    wear_curve = 0.3931,
    preferred_supplier_ids = { "SUP-000738", "SUP-002212" },
    gen_id = 737,
}
_VP["VP-000738"] = {
    label = "AstraMotors modelo 2738 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 111106,
    wear_curve = 0.7138,
    preferred_supplier_ids = { "SUP-000739", "SUP-002215" },
    gen_id = 738,
}
_VP["VP-000739"] = {
    label = "RioVeículos modelo 2739 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 111243,
    wear_curve = 0.7037,
    preferred_supplier_ids = { "SUP-000740", "SUP-002218" },
    gen_id = 739,
}
_VP["VP-000740"] = {
    label = "NorteAuto modelo 2740 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 111380,
    wear_curve = 0.8798,
    preferred_supplier_ids = { "SUP-000741", "SUP-002221" },
    gen_id = 740,
}
_VP["VP-000741"] = {
    label = "DeltaMob modelo 2741 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 111517,
    wear_curve = 0.6429,
    preferred_supplier_ids = { "SUP-000742", "SUP-002224" },
    gen_id = 741,
}
_VP["VP-000742"] = {
    label = "OrionTruck modelo 2742 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 111654,
    wear_curve = 0.2864,
    preferred_supplier_ids = { "SUP-000743", "SUP-002227" },
    gen_id = 742,
}
_VP["VP-000743"] = {
    label = "SigmaBike modelo 2743 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 111791,
    wear_curve = 0.2055,
    preferred_supplier_ids = { "SUP-000744", "SUP-002230" },
    gen_id = 743,
}
_VP["VP-000744"] = {
    label = "AstraMotors modelo 2744 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 111928,
    wear_curve = 0.5602,
    preferred_supplier_ids = { "SUP-000745", "SUP-002233" },
    gen_id = 744,
}
_VP["VP-000745"] = {
    label = "RioVeículos modelo 2745 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 112065,
    wear_curve = 0.6331,
    preferred_supplier_ids = { "SUP-000746", "SUP-002236" },
    gen_id = 745,
}
_VP["VP-000746"] = {
    label = "NorteAuto modelo 2746 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 112202,
    wear_curve = 0.5013,
    preferred_supplier_ids = { "SUP-000747", "SUP-002239" },
    gen_id = 746,
}
_VP["VP-000747"] = {
    label = "DeltaMob modelo 2747 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 112339,
    wear_curve = 0.1927,
    preferred_supplier_ids = { "SUP-000748", "SUP-002242" },
    gen_id = 747,
}
_VP["VP-000748"] = {
    label = "OrionTruck modelo 2748 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 112476,
    wear_curve = 0.2677,
    preferred_supplier_ids = { "SUP-000749", "SUP-002245" },
    gen_id = 748,
}
_VP["VP-000749"] = {
    label = "SigmaBike modelo 2749 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 112613,
    wear_curve = 0.7524,
    preferred_supplier_ids = { "SUP-000750", "SUP-002248" },
    gen_id = 749,
}
_VP["VP-000750"] = {
    label = "AstraMotors modelo 2750 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 112750,
    wear_curve = 0.1846,
    preferred_supplier_ids = { "SUP-000751", "SUP-002251" },
    gen_id = 750,
}
_VP["VP-000751"] = {
    label = "RioVeículos modelo 2751 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 112887,
    wear_curve = 0.7521,
    preferred_supplier_ids = { "SUP-000752", "SUP-002254" },
    gen_id = 751,
}
_VP["VP-000752"] = {
    label = "NorteAuto modelo 2752 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 113024,
    wear_curve = 0.9758,
    preferred_supplier_ids = { "SUP-000753", "SUP-002257" },
    gen_id = 752,
}
_VP["VP-000753"] = {
    label = "DeltaMob modelo 2753 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 113161,
    wear_curve = 0.4163,
    preferred_supplier_ids = { "SUP-000754", "SUP-002260" },
    gen_id = 753,
}
_VP["VP-000754"] = {
    label = "OrionTruck modelo 2754 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 113298,
    wear_curve = 0.3030,
    preferred_supplier_ids = { "SUP-000755", "SUP-002263" },
    gen_id = 754,
}
_VP["VP-000755"] = {
    label = "SigmaBike modelo 2755 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 113435,
    wear_curve = 0.2676,
    preferred_supplier_ids = { "SUP-000756", "SUP-002266" },
    gen_id = 755,
}
_VP["VP-000756"] = {
    label = "AstraMotors modelo 2756 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 113572,
    wear_curve = 0.4945,
    preferred_supplier_ids = { "SUP-000757", "SUP-002269" },
    gen_id = 756,
}
_VP["VP-000757"] = {
    label = "RioVeículos modelo 2757 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 113709,
    wear_curve = 0.6211,
    preferred_supplier_ids = { "SUP-000758", "SUP-002272" },
    gen_id = 757,
}
_VP["VP-000758"] = {
    label = "NorteAuto modelo 2758 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 113846,
    wear_curve = 0.3767,
    preferred_supplier_ids = { "SUP-000759", "SUP-002275" },
    gen_id = 758,
}
_VP["VP-000759"] = {
    label = "DeltaMob modelo 2759 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 113983,
    wear_curve = 0.9294,
    preferred_supplier_ids = { "SUP-000760", "SUP-002278" },
    gen_id = 759,
}
_VP["VP-000760"] = {
    label = "OrionTruck modelo 2760 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 114120,
    wear_curve = 0.8925,
    preferred_supplier_ids = { "SUP-000761", "SUP-002281" },
    gen_id = 760,
}
_VP["VP-000761"] = {
    label = "SigmaBike modelo 2761 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 114257,
    wear_curve = 0.2063,
    preferred_supplier_ids = { "SUP-000762", "SUP-002284" },
    gen_id = 761,
}
_VP["VP-000762"] = {
    label = "AstraMotors modelo 2762 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 114394,
    wear_curve = 0.2324,
    preferred_supplier_ids = { "SUP-000763", "SUP-002287" },
    gen_id = 762,
}
_VP["VP-000763"] = {
    label = "RioVeículos modelo 2763 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 114531,
    wear_curve = 0.7869,
    preferred_supplier_ids = { "SUP-000764", "SUP-002290" },
    gen_id = 763,
}
_VP["VP-000764"] = {
    label = "NorteAuto modelo 2764 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 114668,
    wear_curve = 0.3603,
    preferred_supplier_ids = { "SUP-000765", "SUP-002293" },
    gen_id = 764,
}
_VP["VP-000765"] = {
    label = "DeltaMob modelo 2765 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 114805,
    wear_curve = 0.2371,
    preferred_supplier_ids = { "SUP-000766", "SUP-002296" },
    gen_id = 765,
}
_VP["VP-000766"] = {
    label = "OrionTruck modelo 2766 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 114942,
    wear_curve = 0.6278,
    preferred_supplier_ids = { "SUP-000767", "SUP-002299" },
    gen_id = 766,
}
_VP["VP-000767"] = {
    label = "SigmaBike modelo 2767 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 115079,
    wear_curve = 0.4624,
    preferred_supplier_ids = { "SUP-000768", "SUP-002302" },
    gen_id = 767,
}
_VP["VP-000768"] = {
    label = "AstraMotors modelo 2768 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 115216,
    wear_curve = 0.9794,
    preferred_supplier_ids = { "SUP-000769", "SUP-002305" },
    gen_id = 768,
}
_VP["VP-000769"] = {
    label = "RioVeículos modelo 2769 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 115353,
    wear_curve = 0.5273,
    preferred_supplier_ids = { "SUP-000770", "SUP-002308" },
    gen_id = 769,
}
_VP["VP-000770"] = {
    label = "NorteAuto modelo 2770 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 115490,
    wear_curve = 0.7428,
    preferred_supplier_ids = { "SUP-000771", "SUP-002311" },
    gen_id = 770,
}
_VP["VP-000771"] = {
    label = "DeltaMob modelo 2771 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 115627,
    wear_curve = 0.1525,
    preferred_supplier_ids = { "SUP-000772", "SUP-002314" },
    gen_id = 771,
}
_VP["VP-000772"] = {
    label = "OrionTruck modelo 2772 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 115764,
    wear_curve = 0.3216,
    preferred_supplier_ids = { "SUP-000773", "SUP-002317" },
    gen_id = 772,
}
_VP["VP-000773"] = {
    label = "SigmaBike modelo 2773 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 115901,
    wear_curve = 0.5899,
    preferred_supplier_ids = { "SUP-000774", "SUP-002320" },
    gen_id = 773,
}
_VP["VP-000774"] = {
    label = "AstraMotors modelo 2774 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 116038,
    wear_curve = 0.9439,
    preferred_supplier_ids = { "SUP-000775", "SUP-002323" },
    gen_id = 774,
}
_VP["VP-000775"] = {
    label = "RioVeículos modelo 2775 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 116175,
    wear_curve = 0.1610,
    preferred_supplier_ids = { "SUP-000776", "SUP-002326" },
    gen_id = 775,
}
_VP["VP-000776"] = {
    label = "NorteAuto modelo 2776 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 116312,
    wear_curve = 0.4681,
    preferred_supplier_ids = { "SUP-000777", "SUP-002329" },
    gen_id = 776,
}
_VP["VP-000777"] = {
    label = "DeltaMob modelo 2777 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 116449,
    wear_curve = 0.5118,
    preferred_supplier_ids = { "SUP-000778", "SUP-002332" },
    gen_id = 777,
}
_VP["VP-000778"] = {
    label = "OrionTruck modelo 2778 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 116586,
    wear_curve = 0.7423,
    preferred_supplier_ids = { "SUP-000779", "SUP-002335" },
    gen_id = 778,
}
_VP["VP-000779"] = {
    label = "SigmaBike modelo 2779 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 116723,
    wear_curve = 0.5649,
    preferred_supplier_ids = { "SUP-000780", "SUP-002338" },
    gen_id = 779,
}
_VP["VP-000780"] = {
    label = "AstraMotors modelo 2780 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 116860,
    wear_curve = 0.2484,
    preferred_supplier_ids = { "SUP-000781", "SUP-002341" },
    gen_id = 780,
}
_VP["VP-000781"] = {
    label = "RioVeículos modelo 2781 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 116997,
    wear_curve = 0.8631,
    preferred_supplier_ids = { "SUP-000782", "SUP-002344" },
    gen_id = 781,
}
_VP["VP-000782"] = {
    label = "NorteAuto modelo 2782 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 117134,
    wear_curve = 0.7764,
    preferred_supplier_ids = { "SUP-000783", "SUP-002347" },
    gen_id = 782,
}
_VP["VP-000783"] = {
    label = "DeltaMob modelo 2783 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 117271,
    wear_curve = 0.9320,
    preferred_supplier_ids = { "SUP-000784", "SUP-002350" },
    gen_id = 783,
}
_VP["VP-000784"] = {
    label = "OrionTruck modelo 2784 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 117408,
    wear_curve = 0.4619,
    preferred_supplier_ids = { "SUP-000785", "SUP-002353" },
    gen_id = 784,
}
_VP["VP-000785"] = {
    label = "SigmaBike modelo 2785 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 117545,
    wear_curve = 0.9636,
    preferred_supplier_ids = { "SUP-000786", "SUP-002356" },
    gen_id = 785,
}
_VP["VP-000786"] = {
    label = "AstraMotors modelo 2786 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 117682,
    wear_curve = 0.8636,
    preferred_supplier_ids = { "SUP-000787", "SUP-002359" },
    gen_id = 786,
}
_VP["VP-000787"] = {
    label = "RioVeículos modelo 2787 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 117819,
    wear_curve = 0.3677,
    preferred_supplier_ids = { "SUP-000788", "SUP-002362" },
    gen_id = 787,
}
_VP["VP-000788"] = {
    label = "NorteAuto modelo 2788 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 117956,
    wear_curve = 0.2096,
    preferred_supplier_ids = { "SUP-000789", "SUP-002365" },
    gen_id = 788,
}
_VP["VP-000789"] = {
    label = "DeltaMob modelo 2789 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 118093,
    wear_curve = 0.9922,
    preferred_supplier_ids = { "SUP-000790", "SUP-002368" },
    gen_id = 789,
}
_VP["VP-000790"] = {
    label = "OrionTruck modelo 2790 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 118230,
    wear_curve = 0.8302,
    preferred_supplier_ids = { "SUP-000791", "SUP-002371" },
    gen_id = 790,
}
_VP["VP-000791"] = {
    label = "SigmaBike modelo 2791 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 118367,
    wear_curve = 0.9322,
    preferred_supplier_ids = { "SUP-000792", "SUP-002374" },
    gen_id = 791,
}
_VP["VP-000792"] = {
    label = "AstraMotors modelo 2792 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 118504,
    wear_curve = 0.9222,
    preferred_supplier_ids = { "SUP-000793", "SUP-002377" },
    gen_id = 792,
}
_VP["VP-000793"] = {
    label = "RioVeículos modelo 2793 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 118641,
    wear_curve = 0.8861,
    preferred_supplier_ids = { "SUP-000794", "SUP-002380" },
    gen_id = 793,
}
_VP["VP-000794"] = {
    label = "NorteAuto modelo 2794 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 118778,
    wear_curve = 0.8353,
    preferred_supplier_ids = { "SUP-000795", "SUP-002383" },
    gen_id = 794,
}
_VP["VP-000795"] = {
    label = "DeltaMob modelo 2795 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 118915,
    wear_curve = 0.6835,
    preferred_supplier_ids = { "SUP-000796", "SUP-002386" },
    gen_id = 795,
}
_VP["VP-000796"] = {
    label = "OrionTruck modelo 2796 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 119052,
    wear_curve = 0.8865,
    preferred_supplier_ids = { "SUP-000797", "SUP-002389" },
    gen_id = 796,
}
_VP["VP-000797"] = {
    label = "SigmaBike modelo 2797 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 119189,
    wear_curve = 0.2395,
    preferred_supplier_ids = { "SUP-000798", "SUP-002392" },
    gen_id = 797,
}
_VP["VP-000798"] = {
    label = "AstraMotors modelo 2798 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 119326,
    wear_curve = 0.6748,
    preferred_supplier_ids = { "SUP-000799", "SUP-002395" },
    gen_id = 798,
}
_VP["VP-000799"] = {
    label = "RioVeículos modelo 2799 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 119463,
    wear_curve = 0.2112,
    preferred_supplier_ids = { "SUP-000800", "SUP-002398" },
    gen_id = 799,
}
_VP["VP-000800"] = {
    label = "NorteAuto modelo 2800 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 119600,
    wear_curve = 0.6837,
    preferred_supplier_ids = { "SUP-000801", "SUP-002401" },
    gen_id = 800,
}
_VP["VP-000801"] = {
    label = "DeltaMob modelo 2801 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 119737,
    wear_curve = 0.2269,
    preferred_supplier_ids = { "SUP-000802", "SUP-002404" },
    gen_id = 801,
}
_VP["VP-000802"] = {
    label = "OrionTruck modelo 2802 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 119874,
    wear_curve = 0.3070,
    preferred_supplier_ids = { "SUP-000803", "SUP-002407" },
    gen_id = 802,
}
_VP["VP-000803"] = {
    label = "SigmaBike modelo 2803 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 120011,
    wear_curve = 0.8402,
    preferred_supplier_ids = { "SUP-000804", "SUP-002410" },
    gen_id = 803,
}
_VP["VP-000804"] = {
    label = "AstraMotors modelo 2804 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 120148,
    wear_curve = 0.2139,
    preferred_supplier_ids = { "SUP-000805", "SUP-002413" },
    gen_id = 804,
}
_VP["VP-000805"] = {
    label = "RioVeículos modelo 2805 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 120285,
    wear_curve = 0.2826,
    preferred_supplier_ids = { "SUP-000806", "SUP-002416" },
    gen_id = 805,
}
_VP["VP-000806"] = {
    label = "NorteAuto modelo 2806 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 120422,
    wear_curve = 0.6583,
    preferred_supplier_ids = { "SUP-000807", "SUP-002419" },
    gen_id = 806,
}
_VP["VP-000807"] = {
    label = "DeltaMob modelo 2807 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 120559,
    wear_curve = 0.9465,
    preferred_supplier_ids = { "SUP-000808", "SUP-002422" },
    gen_id = 807,
}
_VP["VP-000808"] = {
    label = "OrionTruck modelo 2808 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 120696,
    wear_curve = 0.4973,
    preferred_supplier_ids = { "SUP-000809", "SUP-002425" },
    gen_id = 808,
}
_VP["VP-000809"] = {
    label = "SigmaBike modelo 2809 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 120833,
    wear_curve = 0.3375,
    preferred_supplier_ids = { "SUP-000810", "SUP-002428" },
    gen_id = 809,
}
_VP["VP-000810"] = {
    label = "AstraMotors modelo 2810 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 120970,
    wear_curve = 0.5781,
    preferred_supplier_ids = { "SUP-000811", "SUP-002431" },
    gen_id = 810,
}
_VP["VP-000811"] = {
    label = "RioVeículos modelo 2811 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 121107,
    wear_curve = 0.4378,
    preferred_supplier_ids = { "SUP-000812", "SUP-002434" },
    gen_id = 811,
}
_VP["VP-000812"] = {
    label = "NorteAuto modelo 2812 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 121244,
    wear_curve = 0.7002,
    preferred_supplier_ids = { "SUP-000813", "SUP-002437" },
    gen_id = 812,
}
_VP["VP-000813"] = {
    label = "DeltaMob modelo 2813 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 121381,
    wear_curve = 0.9204,
    preferred_supplier_ids = { "SUP-000814", "SUP-002440" },
    gen_id = 813,
}
_VP["VP-000814"] = {
    label = "OrionTruck modelo 2814 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 121518,
    wear_curve = 0.4749,
    preferred_supplier_ids = { "SUP-000815", "SUP-002443" },
    gen_id = 814,
}
_VP["VP-000815"] = {
    label = "SigmaBike modelo 2815 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 121655,
    wear_curve = 0.7171,
    preferred_supplier_ids = { "SUP-000816", "SUP-002446" },
    gen_id = 815,
}
_VP["VP-000816"] = {
    label = "AstraMotors modelo 2816 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 121792,
    wear_curve = 0.6016,
    preferred_supplier_ids = { "SUP-000817", "SUP-002449" },
    gen_id = 816,
}
_VP["VP-000817"] = {
    label = "RioVeículos modelo 2817 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 121929,
    wear_curve = 0.4489,
    preferred_supplier_ids = { "SUP-000818", "SUP-002452" },
    gen_id = 817,
}
_VP["VP-000818"] = {
    label = "NorteAuto modelo 2818 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 122066,
    wear_curve = 0.4285,
    preferred_supplier_ids = { "SUP-000819", "SUP-002455" },
    gen_id = 818,
}
_VP["VP-000819"] = {
    label = "DeltaMob modelo 2819 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 122203,
    wear_curve = 0.4058,
    preferred_supplier_ids = { "SUP-000820", "SUP-002458" },
    gen_id = 819,
}
_VP["VP-000820"] = {
    label = "OrionTruck modelo 2820 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 122340,
    wear_curve = 0.2246,
    preferred_supplier_ids = { "SUP-000821", "SUP-002461" },
    gen_id = 820,
}
_VP["VP-000821"] = {
    label = "SigmaBike modelo 2821 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 122477,
    wear_curve = 0.2934,
    preferred_supplier_ids = { "SUP-000822", "SUP-002464" },
    gen_id = 821,
}
_VP["VP-000822"] = {
    label = "AstraMotors modelo 2822 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 122614,
    wear_curve = 0.3348,
    preferred_supplier_ids = { "SUP-000823", "SUP-002467" },
    gen_id = 822,
}
_VP["VP-000823"] = {
    label = "RioVeículos modelo 2823 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 122751,
    wear_curve = 0.9198,
    preferred_supplier_ids = { "SUP-000824", "SUP-002470" },
    gen_id = 823,
}
_VP["VP-000824"] = {
    label = "NorteAuto modelo 2824 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 122888,
    wear_curve = 0.4717,
    preferred_supplier_ids = { "SUP-000825", "SUP-002473" },
    gen_id = 824,
}
_VP["VP-000825"] = {
    label = "DeltaMob modelo 2825 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 123025,
    wear_curve = 0.3625,
    preferred_supplier_ids = { "SUP-000826", "SUP-002476" },
    gen_id = 825,
}
_VP["VP-000826"] = {
    label = "OrionTruck modelo 2826 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 123162,
    wear_curve = 0.5033,
    preferred_supplier_ids = { "SUP-000827", "SUP-002479" },
    gen_id = 826,
}
_VP["VP-000827"] = {
    label = "SigmaBike modelo 2827 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 123299,
    wear_curve = 0.5015,
    preferred_supplier_ids = { "SUP-000828", "SUP-002482" },
    gen_id = 827,
}
_VP["VP-000828"] = {
    label = "AstraMotors modelo 2828 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 123436,
    wear_curve = 0.3137,
    preferred_supplier_ids = { "SUP-000829", "SUP-002485" },
    gen_id = 828,
}
_VP["VP-000829"] = {
    label = "RioVeículos modelo 2829 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 123573,
    wear_curve = 0.4702,
    preferred_supplier_ids = { "SUP-000830", "SUP-002488" },
    gen_id = 829,
}
_VP["VP-000830"] = {
    label = "NorteAuto modelo 2830 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 123710,
    wear_curve = 0.4885,
    preferred_supplier_ids = { "SUP-000831", "SUP-002491" },
    gen_id = 830,
}
_VP["VP-000831"] = {
    label = "DeltaMob modelo 2831 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 123847,
    wear_curve = 0.5744,
    preferred_supplier_ids = { "SUP-000832", "SUP-002494" },
    gen_id = 831,
}
_VP["VP-000832"] = {
    label = "OrionTruck modelo 2832 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 123984,
    wear_curve = 0.7472,
    preferred_supplier_ids = { "SUP-000833", "SUP-002497" },
    gen_id = 832,
}
_VP["VP-000833"] = {
    label = "SigmaBike modelo 2833 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 124121,
    wear_curve = 0.8569,
    preferred_supplier_ids = { "SUP-000834", "SUP-002500" },
    gen_id = 833,
}
_VP["VP-000834"] = {
    label = "AstraMotors modelo 2834 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 124258,
    wear_curve = 0.9507,
    preferred_supplier_ids = { "SUP-000835", "SUP-002503" },
    gen_id = 834,
}
_VP["VP-000835"] = {
    label = "RioVeículos modelo 2835 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 124395,
    wear_curve = 0.8989,
    preferred_supplier_ids = { "SUP-000836", "SUP-002506" },
    gen_id = 835,
}
_VP["VP-000836"] = {
    label = "NorteAuto modelo 2836 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 124532,
    wear_curve = 0.4449,
    preferred_supplier_ids = { "SUP-000837", "SUP-002509" },
    gen_id = 836,
}
_VP["VP-000837"] = {
    label = "DeltaMob modelo 2837 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 124669,
    wear_curve = 0.5499,
    preferred_supplier_ids = { "SUP-000838", "SUP-002512" },
    gen_id = 837,
}
_VP["VP-000838"] = {
    label = "OrionTruck modelo 2838 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 124806,
    wear_curve = 0.8028,
    preferred_supplier_ids = { "SUP-000839", "SUP-002515" },
    gen_id = 838,
}
_VP["VP-000839"] = {
    label = "SigmaBike modelo 2839 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 124943,
    wear_curve = 0.1710,
    preferred_supplier_ids = { "SUP-000840", "SUP-002518" },
    gen_id = 839,
}
_VP["VP-000840"] = {
    label = "AstraMotors modelo 2840 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 125080,
    wear_curve = 0.5374,
    preferred_supplier_ids = { "SUP-000841", "SUP-002521" },
    gen_id = 840,
}
_VP["VP-000841"] = {
    label = "RioVeículos modelo 2841 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 125217,
    wear_curve = 0.9606,
    preferred_supplier_ids = { "SUP-000842", "SUP-002524" },
    gen_id = 841,
}
_VP["VP-000842"] = {
    label = "NorteAuto modelo 2842 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 125354,
    wear_curve = 0.8122,
    preferred_supplier_ids = { "SUP-000843", "SUP-002527" },
    gen_id = 842,
}
_VP["VP-000843"] = {
    label = "DeltaMob modelo 2843 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 125491,
    wear_curve = 0.2178,
    preferred_supplier_ids = { "SUP-000844", "SUP-002530" },
    gen_id = 843,
}
_VP["VP-000844"] = {
    label = "OrionTruck modelo 2844 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 125628,
    wear_curve = 0.4785,
    preferred_supplier_ids = { "SUP-000845", "SUP-002533" },
    gen_id = 844,
}
_VP["VP-000845"] = {
    label = "SigmaBike modelo 2845 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 125765,
    wear_curve = 0.2293,
    preferred_supplier_ids = { "SUP-000846", "SUP-002536" },
    gen_id = 845,
}
_VP["VP-000846"] = {
    label = "AstraMotors modelo 2846 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 125902,
    wear_curve = 0.3909,
    preferred_supplier_ids = { "SUP-000847", "SUP-002539" },
    gen_id = 846,
}
_VP["VP-000847"] = {
    label = "RioVeículos modelo 2847 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 126039,
    wear_curve = 0.2564,
    preferred_supplier_ids = { "SUP-000848", "SUP-002542" },
    gen_id = 847,
}
_VP["VP-000848"] = {
    label = "NorteAuto modelo 2848 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 126176,
    wear_curve = 0.3050,
    preferred_supplier_ids = { "SUP-000849", "SUP-002545" },
    gen_id = 848,
}
_VP["VP-000849"] = {
    label = "DeltaMob modelo 2849 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 126313,
    wear_curve = 0.5894,
    preferred_supplier_ids = { "SUP-000850", "SUP-002548" },
    gen_id = 849,
}
_VP["VP-000850"] = {
    label = "OrionTruck modelo 2850 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 126450,
    wear_curve = 0.8669,
    preferred_supplier_ids = { "SUP-000851", "SUP-002551" },
    gen_id = 850,
}
_VP["VP-000851"] = {
    label = "SigmaBike modelo 2851 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 126587,
    wear_curve = 0.1940,
    preferred_supplier_ids = { "SUP-000852", "SUP-002554" },
    gen_id = 851,
}
_VP["VP-000852"] = {
    label = "AstraMotors modelo 2852 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 126724,
    wear_curve = 0.1687,
    preferred_supplier_ids = { "SUP-000853", "SUP-002557" },
    gen_id = 852,
}
_VP["VP-000853"] = {
    label = "RioVeículos modelo 2853 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 126861,
    wear_curve = 0.2365,
    preferred_supplier_ids = { "SUP-000854", "SUP-002560" },
    gen_id = 853,
}
_VP["VP-000854"] = {
    label = "NorteAuto modelo 2854 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 126998,
    wear_curve = 0.6953,
    preferred_supplier_ids = { "SUP-000855", "SUP-002563" },
    gen_id = 854,
}
_VP["VP-000855"] = {
    label = "DeltaMob modelo 2855 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 127135,
    wear_curve = 0.7126,
    preferred_supplier_ids = { "SUP-000856", "SUP-002566" },
    gen_id = 855,
}
_VP["VP-000856"] = {
    label = "OrionTruck modelo 2856 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 127272,
    wear_curve = 0.9781,
    preferred_supplier_ids = { "SUP-000857", "SUP-002569" },
    gen_id = 856,
}
_VP["VP-000857"] = {
    label = "SigmaBike modelo 2857 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 127409,
    wear_curve = 0.9005,
    preferred_supplier_ids = { "SUP-000858", "SUP-002572" },
    gen_id = 857,
}
_VP["VP-000858"] = {
    label = "AstraMotors modelo 2858 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 127546,
    wear_curve = 0.5781,
    preferred_supplier_ids = { "SUP-000859", "SUP-002575" },
    gen_id = 858,
}
_VP["VP-000859"] = {
    label = "RioVeículos modelo 2859 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 127683,
    wear_curve = 0.8399,
    preferred_supplier_ids = { "SUP-000860", "SUP-002578" },
    gen_id = 859,
}
_VP["VP-000860"] = {
    label = "NorteAuto modelo 2860 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 127820,
    wear_curve = 0.8510,
    preferred_supplier_ids = { "SUP-000861", "SUP-002581" },
    gen_id = 860,
}
_VP["VP-000861"] = {
    label = "DeltaMob modelo 2861 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 127957,
    wear_curve = 0.4798,
    preferred_supplier_ids = { "SUP-000862", "SUP-002584" },
    gen_id = 861,
}
_VP["VP-000862"] = {
    label = "OrionTruck modelo 2862 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 128094,
    wear_curve = 0.9738,
    preferred_supplier_ids = { "SUP-000863", "SUP-002587" },
    gen_id = 862,
}
_VP["VP-000863"] = {
    label = "SigmaBike modelo 2863 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 128231,
    wear_curve = 0.7249,
    preferred_supplier_ids = { "SUP-000864", "SUP-002590" },
    gen_id = 863,
}
_VP["VP-000864"] = {
    label = "AstraMotors modelo 2864 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 128368,
    wear_curve = 0.9901,
    preferred_supplier_ids = { "SUP-000865", "SUP-002593" },
    gen_id = 864,
}
_VP["VP-000865"] = {
    label = "RioVeículos modelo 2865 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 128505,
    wear_curve = 0.6616,
    preferred_supplier_ids = { "SUP-000866", "SUP-002596" },
    gen_id = 865,
}
_VP["VP-000866"] = {
    label = "NorteAuto modelo 2866 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 128642,
    wear_curve = 0.1936,
    preferred_supplier_ids = { "SUP-000867", "SUP-002599" },
    gen_id = 866,
}
_VP["VP-000867"] = {
    label = "DeltaMob modelo 2867 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 128779,
    wear_curve = 0.5457,
    preferred_supplier_ids = { "SUP-000868", "SUP-002602" },
    gen_id = 867,
}
_VP["VP-000868"] = {
    label = "OrionTruck modelo 2868 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 128916,
    wear_curve = 0.8094,
    preferred_supplier_ids = { "SUP-000869", "SUP-002605" },
    gen_id = 868,
}
_VP["VP-000869"] = {
    label = "SigmaBike modelo 2869 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 129053,
    wear_curve = 0.1621,
    preferred_supplier_ids = { "SUP-000870", "SUP-002608" },
    gen_id = 869,
}
_VP["VP-000870"] = {
    label = "AstraMotors modelo 2870 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 129190,
    wear_curve = 0.6385,
    preferred_supplier_ids = { "SUP-000871", "SUP-002611" },
    gen_id = 870,
}
_VP["VP-000871"] = {
    label = "RioVeículos modelo 2871 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 129327,
    wear_curve = 0.2913,
    preferred_supplier_ids = { "SUP-000872", "SUP-002614" },
    gen_id = 871,
}
_VP["VP-000872"] = {
    label = "NorteAuto modelo 2872 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 129464,
    wear_curve = 0.5977,
    preferred_supplier_ids = { "SUP-000873", "SUP-002617" },
    gen_id = 872,
}
_VP["VP-000873"] = {
    label = "DeltaMob modelo 2873 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 129601,
    wear_curve = 0.5355,
    preferred_supplier_ids = { "SUP-000874", "SUP-002620" },
    gen_id = 873,
}
_VP["VP-000874"] = {
    label = "OrionTruck modelo 2874 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 129738,
    wear_curve = 0.3491,
    preferred_supplier_ids = { "SUP-000875", "SUP-002623" },
    gen_id = 874,
}
_VP["VP-000875"] = {
    label = "SigmaBike modelo 2875 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 129875,
    wear_curve = 0.2715,
    preferred_supplier_ids = { "SUP-000876", "SUP-002626" },
    gen_id = 875,
}
_VP["VP-000876"] = {
    label = "AstraMotors modelo 2876 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 130012,
    wear_curve = 0.4709,
    preferred_supplier_ids = { "SUP-000877", "SUP-002629" },
    gen_id = 876,
}
_VP["VP-000877"] = {
    label = "RioVeículos modelo 2877 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 130149,
    wear_curve = 0.7111,
    preferred_supplier_ids = { "SUP-000878", "SUP-002632" },
    gen_id = 877,
}
_VP["VP-000878"] = {
    label = "NorteAuto modelo 2878 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 130286,
    wear_curve = 0.7985,
    preferred_supplier_ids = { "SUP-000879", "SUP-002635" },
    gen_id = 878,
}
_VP["VP-000879"] = {
    label = "DeltaMob modelo 2879 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 130423,
    wear_curve = 0.7216,
    preferred_supplier_ids = { "SUP-000880", "SUP-002638" },
    gen_id = 879,
}
_VP["VP-000880"] = {
    label = "OrionTruck modelo 2880 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 130560,
    wear_curve = 0.7269,
    preferred_supplier_ids = { "SUP-000881", "SUP-002641" },
    gen_id = 880,
}
_VP["VP-000881"] = {
    label = "SigmaBike modelo 2881 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 130697,
    wear_curve = 0.8311,
    preferred_supplier_ids = { "SUP-000882", "SUP-002644" },
    gen_id = 881,
}
_VP["VP-000882"] = {
    label = "AstraMotors modelo 2882 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 130834,
    wear_curve = 0.8741,
    preferred_supplier_ids = { "SUP-000883", "SUP-002647" },
    gen_id = 882,
}
_VP["VP-000883"] = {
    label = "RioVeículos modelo 2883 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 130971,
    wear_curve = 0.7796,
    preferred_supplier_ids = { "SUP-000884", "SUP-002650" },
    gen_id = 883,
}
_VP["VP-000884"] = {
    label = "NorteAuto modelo 2884 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 131108,
    wear_curve = 0.4278,
    preferred_supplier_ids = { "SUP-000885", "SUP-002653" },
    gen_id = 884,
}
_VP["VP-000885"] = {
    label = "DeltaMob modelo 2885 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 131245,
    wear_curve = 0.4753,
    preferred_supplier_ids = { "SUP-000886", "SUP-002656" },
    gen_id = 885,
}
_VP["VP-000886"] = {
    label = "OrionTruck modelo 2886 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 131382,
    wear_curve = 0.7547,
    preferred_supplier_ids = { "SUP-000887", "SUP-002659" },
    gen_id = 886,
}
_VP["VP-000887"] = {
    label = "SigmaBike modelo 2887 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 131519,
    wear_curve = 0.7286,
    preferred_supplier_ids = { "SUP-000888", "SUP-002662" },
    gen_id = 887,
}
_VP["VP-000888"] = {
    label = "AstraMotors modelo 2888 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 131656,
    wear_curve = 0.5979,
    preferred_supplier_ids = { "SUP-000889", "SUP-002665" },
    gen_id = 888,
}
_VP["VP-000889"] = {
    label = "RioVeículos modelo 2889 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 131793,
    wear_curve = 0.3691,
    preferred_supplier_ids = { "SUP-000890", "SUP-002668" },
    gen_id = 889,
}
_VP["VP-000890"] = {
    label = "NorteAuto modelo 2890 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 131930,
    wear_curve = 0.5018,
    preferred_supplier_ids = { "SUP-000891", "SUP-002671" },
    gen_id = 890,
}
_VP["VP-000891"] = {
    label = "DeltaMob modelo 2891 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 132067,
    wear_curve = 0.5578,
    preferred_supplier_ids = { "SUP-000892", "SUP-002674" },
    gen_id = 891,
}
_VP["VP-000892"] = {
    label = "OrionTruck modelo 2892 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 132204,
    wear_curve = 0.7892,
    preferred_supplier_ids = { "SUP-000893", "SUP-002677" },
    gen_id = 892,
}
_VP["VP-000893"] = {
    label = "SigmaBike modelo 2893 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 132341,
    wear_curve = 0.7354,
    preferred_supplier_ids = { "SUP-000894", "SUP-002680" },
    gen_id = 893,
}
_VP["VP-000894"] = {
    label = "AstraMotors modelo 2894 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 132478,
    wear_curve = 0.4989,
    preferred_supplier_ids = { "SUP-000895", "SUP-002683" },
    gen_id = 894,
}
_VP["VP-000895"] = {
    label = "RioVeículos modelo 2895 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 132615,
    wear_curve = 0.8583,
    preferred_supplier_ids = { "SUP-000896", "SUP-002686" },
    gen_id = 895,
}
_VP["VP-000896"] = {
    label = "NorteAuto modelo 2896 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 132752,
    wear_curve = 0.9268,
    preferred_supplier_ids = { "SUP-000897", "SUP-002689" },
    gen_id = 896,
}
_VP["VP-000897"] = {
    label = "DeltaMob modelo 2897 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 132889,
    wear_curve = 0.7138,
    preferred_supplier_ids = { "SUP-000898", "SUP-002692" },
    gen_id = 897,
}
_VP["VP-000898"] = {
    label = "OrionTruck modelo 2898 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 133026,
    wear_curve = 0.8814,
    preferred_supplier_ids = { "SUP-000899", "SUP-002695" },
    gen_id = 898,
}
_VP["VP-000899"] = {
    label = "SigmaBike modelo 2899 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 133163,
    wear_curve = 0.3829,
    preferred_supplier_ids = { "SUP-000900", "SUP-002698" },
    gen_id = 899,
}
_VP["VP-000900"] = {
    label = "AstraMotors modelo 2000 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 133300,
    wear_curve = 0.1598,
    preferred_supplier_ids = { "SUP-000901", "SUP-002701" },
    gen_id = 900,
}
_VP["VP-000901"] = {
    label = "RioVeículos modelo 2001 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 133437,
    wear_curve = 0.9309,
    preferred_supplier_ids = { "SUP-000902", "SUP-002704" },
    gen_id = 901,
}
_VP["VP-000902"] = {
    label = "NorteAuto modelo 2002 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 133574,
    wear_curve = 0.7152,
    preferred_supplier_ids = { "SUP-000903", "SUP-002707" },
    gen_id = 902,
}
_VP["VP-000903"] = {
    label = "DeltaMob modelo 2003 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 133711,
    wear_curve = 0.9617,
    preferred_supplier_ids = { "SUP-000904", "SUP-002710" },
    gen_id = 903,
}
_VP["VP-000904"] = {
    label = "OrionTruck modelo 2004 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 133848,
    wear_curve = 0.8069,
    preferred_supplier_ids = { "SUP-000905", "SUP-002713" },
    gen_id = 904,
}
_VP["VP-000905"] = {
    label = "SigmaBike modelo 2005 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 133985,
    wear_curve = 0.4706,
    preferred_supplier_ids = { "SUP-000906", "SUP-002716" },
    gen_id = 905,
}
_VP["VP-000906"] = {
    label = "AstraMotors modelo 2006 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 134122,
    wear_curve = 0.4439,
    preferred_supplier_ids = { "SUP-000907", "SUP-002719" },
    gen_id = 906,
}
_VP["VP-000907"] = {
    label = "RioVeículos modelo 2007 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 134259,
    wear_curve = 0.9256,
    preferred_supplier_ids = { "SUP-000908", "SUP-002722" },
    gen_id = 907,
}
_VP["VP-000908"] = {
    label = "NorteAuto modelo 2008 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 134396,
    wear_curve = 0.1967,
    preferred_supplier_ids = { "SUP-000909", "SUP-002725" },
    gen_id = 908,
}
_VP["VP-000909"] = {
    label = "DeltaMob modelo 2009 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 134533,
    wear_curve = 0.9535,
    preferred_supplier_ids = { "SUP-000910", "SUP-002728" },
    gen_id = 909,
}
_VP["VP-000910"] = {
    label = "OrionTruck modelo 2010 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 134670,
    wear_curve = 0.2849,
    preferred_supplier_ids = { "SUP-000911", "SUP-002731" },
    gen_id = 910,
}
_VP["VP-000911"] = {
    label = "SigmaBike modelo 2011 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 134807,
    wear_curve = 0.9073,
    preferred_supplier_ids = { "SUP-000912", "SUP-002734" },
    gen_id = 911,
}
_VP["VP-000912"] = {
    label = "AstraMotors modelo 2012 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 134944,
    wear_curve = 0.1666,
    preferred_supplier_ids = { "SUP-000913", "SUP-002737" },
    gen_id = 912,
}
_VP["VP-000913"] = {
    label = "RioVeículos modelo 2013 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 135081,
    wear_curve = 0.8990,
    preferred_supplier_ids = { "SUP-000914", "SUP-002740" },
    gen_id = 913,
}
_VP["VP-000914"] = {
    label = "NorteAuto modelo 2014 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 135218,
    wear_curve = 0.2212,
    preferred_supplier_ids = { "SUP-000915", "SUP-002743" },
    gen_id = 914,
}
_VP["VP-000915"] = {
    label = "DeltaMob modelo 2015 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 135355,
    wear_curve = 0.1950,
    preferred_supplier_ids = { "SUP-000916", "SUP-002746" },
    gen_id = 915,
}
_VP["VP-000916"] = {
    label = "OrionTruck modelo 2016 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 135492,
    wear_curve = 0.4451,
    preferred_supplier_ids = { "SUP-000917", "SUP-002749" },
    gen_id = 916,
}
_VP["VP-000917"] = {
    label = "SigmaBike modelo 2017 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 135629,
    wear_curve = 0.3047,
    preferred_supplier_ids = { "SUP-000918", "SUP-002752" },
    gen_id = 917,
}
_VP["VP-000918"] = {
    label = "AstraMotors modelo 2018 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 135766,
    wear_curve = 0.6441,
    preferred_supplier_ids = { "SUP-000919", "SUP-002755" },
    gen_id = 918,
}
_VP["VP-000919"] = {
    label = "RioVeículos modelo 2019 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 135903,
    wear_curve = 0.2836,
    preferred_supplier_ids = { "SUP-000920", "SUP-002758" },
    gen_id = 919,
}
_VP["VP-000920"] = {
    label = "NorteAuto modelo 2020 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 136040,
    wear_curve = 0.1570,
    preferred_supplier_ids = { "SUP-000921", "SUP-002761" },
    gen_id = 920,
}
_VP["VP-000921"] = {
    label = "DeltaMob modelo 2021 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 136177,
    wear_curve = 0.7409,
    preferred_supplier_ids = { "SUP-000922", "SUP-002764" },
    gen_id = 921,
}
_VP["VP-000922"] = {
    label = "OrionTruck modelo 2022 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 136314,
    wear_curve = 0.3676,
    preferred_supplier_ids = { "SUP-000923", "SUP-002767" },
    gen_id = 922,
}
_VP["VP-000923"] = {
    label = "SigmaBike modelo 2023 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 136451,
    wear_curve = 0.1746,
    preferred_supplier_ids = { "SUP-000924", "SUP-002770" },
    gen_id = 923,
}
_VP["VP-000924"] = {
    label = "AstraMotors modelo 2024 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 136588,
    wear_curve = 0.4515,
    preferred_supplier_ids = { "SUP-000925", "SUP-002773" },
    gen_id = 924,
}
_VP["VP-000925"] = {
    label = "RioVeículos modelo 2025 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 136725,
    wear_curve = 0.9203,
    preferred_supplier_ids = { "SUP-000926", "SUP-002776" },
    gen_id = 925,
}
_VP["VP-000926"] = {
    label = "NorteAuto modelo 2026 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 136862,
    wear_curve = 0.8452,
    preferred_supplier_ids = { "SUP-000927", "SUP-002779" },
    gen_id = 926,
}
_VP["VP-000927"] = {
    label = "DeltaMob modelo 2027 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 136999,
    wear_curve = 0.4927,
    preferred_supplier_ids = { "SUP-000928", "SUP-002782" },
    gen_id = 927,
}
_VP["VP-000928"] = {
    label = "OrionTruck modelo 2028 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 137136,
    wear_curve = 0.6164,
    preferred_supplier_ids = { "SUP-000929", "SUP-002785" },
    gen_id = 928,
}
_VP["VP-000929"] = {
    label = "SigmaBike modelo 2029 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 137273,
    wear_curve = 0.6654,
    preferred_supplier_ids = { "SUP-000930", "SUP-002788" },
    gen_id = 929,
}
_VP["VP-000930"] = {
    label = "AstraMotors modelo 2030 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 137410,
    wear_curve = 0.9854,
    preferred_supplier_ids = { "SUP-000931", "SUP-002791" },
    gen_id = 930,
}
_VP["VP-000931"] = {
    label = "RioVeículos modelo 2031 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 137547,
    wear_curve = 0.5481,
    preferred_supplier_ids = { "SUP-000932", "SUP-002794" },
    gen_id = 931,
}
_VP["VP-000932"] = {
    label = "NorteAuto modelo 2032 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 137684,
    wear_curve = 0.6551,
    preferred_supplier_ids = { "SUP-000933", "SUP-002797" },
    gen_id = 932,
}
_VP["VP-000933"] = {
    label = "DeltaMob modelo 2033 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 137821,
    wear_curve = 0.9096,
    preferred_supplier_ids = { "SUP-000934", "SUP-002800" },
    gen_id = 933,
}
_VP["VP-000934"] = {
    label = "OrionTruck modelo 2034 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 137958,
    wear_curve = 0.3208,
    preferred_supplier_ids = { "SUP-000935", "SUP-002803" },
    gen_id = 934,
}
_VP["VP-000935"] = {
    label = "SigmaBike modelo 2035 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 138095,
    wear_curve = 0.7343,
    preferred_supplier_ids = { "SUP-000936", "SUP-002806" },
    gen_id = 935,
}
_VP["VP-000936"] = {
    label = "AstraMotors modelo 2036 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 138232,
    wear_curve = 0.5633,
    preferred_supplier_ids = { "SUP-000937", "SUP-002809" },
    gen_id = 936,
}
_VP["VP-000937"] = {
    label = "RioVeículos modelo 2037 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 138369,
    wear_curve = 0.3281,
    preferred_supplier_ids = { "SUP-000938", "SUP-002812" },
    gen_id = 937,
}
_VP["VP-000938"] = {
    label = "NorteAuto modelo 2038 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 138506,
    wear_curve = 0.4526,
    preferred_supplier_ids = { "SUP-000939", "SUP-002815" },
    gen_id = 938,
}
_VP["VP-000939"] = {
    label = "DeltaMob modelo 2039 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 138643,
    wear_curve = 0.7671,
    preferred_supplier_ids = { "SUP-000940", "SUP-002818" },
    gen_id = 939,
}
_VP["VP-000940"] = {
    label = "OrionTruck modelo 2040 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 138780,
    wear_curve = 0.3575,
    preferred_supplier_ids = { "SUP-000941", "SUP-002821" },
    gen_id = 940,
}
_VP["VP-000941"] = {
    label = "SigmaBike modelo 2041 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 138917,
    wear_curve = 0.4606,
    preferred_supplier_ids = { "SUP-000942", "SUP-002824" },
    gen_id = 941,
}
_VP["VP-000942"] = {
    label = "AstraMotors modelo 2042 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 139054,
    wear_curve = 0.8507,
    preferred_supplier_ids = { "SUP-000943", "SUP-002827" },
    gen_id = 942,
}
_VP["VP-000943"] = {
    label = "RioVeículos modelo 2043 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 139191,
    wear_curve = 0.6305,
    preferred_supplier_ids = { "SUP-000944", "SUP-002830" },
    gen_id = 943,
}
_VP["VP-000944"] = {
    label = "NorteAuto modelo 2044 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 139328,
    wear_curve = 0.8679,
    preferred_supplier_ids = { "SUP-000945", "SUP-002833" },
    gen_id = 944,
}
_VP["VP-000945"] = {
    label = "DeltaMob modelo 2045 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 139465,
    wear_curve = 0.7968,
    preferred_supplier_ids = { "SUP-000946", "SUP-002836" },
    gen_id = 945,
}
_VP["VP-000946"] = {
    label = "OrionTruck modelo 2046 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 139602,
    wear_curve = 0.6048,
    preferred_supplier_ids = { "SUP-000947", "SUP-002839" },
    gen_id = 946,
}
_VP["VP-000947"] = {
    label = "SigmaBike modelo 2047 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 139739,
    wear_curve = 0.2578,
    preferred_supplier_ids = { "SUP-000948", "SUP-002842" },
    gen_id = 947,
}
_VP["VP-000948"] = {
    label = "AstraMotors modelo 2048 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 139876,
    wear_curve = 0.4208,
    preferred_supplier_ids = { "SUP-000949", "SUP-002845" },
    gen_id = 948,
}
_VP["VP-000949"] = {
    label = "RioVeículos modelo 2049 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 140013,
    wear_curve = 0.3610,
    preferred_supplier_ids = { "SUP-000950", "SUP-002848" },
    gen_id = 949,
}
_VP["VP-000950"] = {
    label = "NorteAuto modelo 2050 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 140150,
    wear_curve = 0.9332,
    preferred_supplier_ids = { "SUP-000951", "SUP-002851" },
    gen_id = 950,
}
_VP["VP-000951"] = {
    label = "DeltaMob modelo 2051 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 140287,
    wear_curve = 0.9909,
    preferred_supplier_ids = { "SUP-000952", "SUP-002854" },
    gen_id = 951,
}
_VP["VP-000952"] = {
    label = "OrionTruck modelo 2052 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 140424,
    wear_curve = 0.6011,
    preferred_supplier_ids = { "SUP-000953", "SUP-002857" },
    gen_id = 952,
}
_VP["VP-000953"] = {
    label = "SigmaBike modelo 2053 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 140561,
    wear_curve = 0.4428,
    preferred_supplier_ids = { "SUP-000954", "SUP-002860" },
    gen_id = 953,
}
_VP["VP-000954"] = {
    label = "AstraMotors modelo 2054 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 140698,
    wear_curve = 0.9193,
    preferred_supplier_ids = { "SUP-000955", "SUP-002863" },
    gen_id = 954,
}
_VP["VP-000955"] = {
    label = "RioVeículos modelo 2055 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 140835,
    wear_curve = 0.1697,
    preferred_supplier_ids = { "SUP-000956", "SUP-002866" },
    gen_id = 955,
}
_VP["VP-000956"] = {
    label = "NorteAuto modelo 2056 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 140972,
    wear_curve = 0.4927,
    preferred_supplier_ids = { "SUP-000957", "SUP-002869" },
    gen_id = 956,
}
_VP["VP-000957"] = {
    label = "DeltaMob modelo 2057 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 141109,
    wear_curve = 0.7844,
    preferred_supplier_ids = { "SUP-000958", "SUP-002872" },
    gen_id = 957,
}
_VP["VP-000958"] = {
    label = "OrionTruck modelo 2058 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 141246,
    wear_curve = 0.4075,
    preferred_supplier_ids = { "SUP-000959", "SUP-002875" },
    gen_id = 958,
}
_VP["VP-000959"] = {
    label = "SigmaBike modelo 2059 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 141383,
    wear_curve = 0.1692,
    preferred_supplier_ids = { "SUP-000960", "SUP-002878" },
    gen_id = 959,
}
_VP["VP-000960"] = {
    label = "AstraMotors modelo 2060 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 141520,
    wear_curve = 0.6624,
    preferred_supplier_ids = { "SUP-000961", "SUP-002881" },
    gen_id = 960,
}
_VP["VP-000961"] = {
    label = "RioVeículos modelo 2061 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 141657,
    wear_curve = 0.4473,
    preferred_supplier_ids = { "SUP-000962", "SUP-002884" },
    gen_id = 961,
}
_VP["VP-000962"] = {
    label = "NorteAuto modelo 2062 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 141794,
    wear_curve = 0.4027,
    preferred_supplier_ids = { "SUP-000963", "SUP-002887" },
    gen_id = 962,
}
_VP["VP-000963"] = {
    label = "DeltaMob modelo 2063 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 141931,
    wear_curve = 0.7139,
    preferred_supplier_ids = { "SUP-000964", "SUP-002890" },
    gen_id = 963,
}
_VP["VP-000964"] = {
    label = "OrionTruck modelo 2064 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 142068,
    wear_curve = 0.9614,
    preferred_supplier_ids = { "SUP-000965", "SUP-002893" },
    gen_id = 964,
}
_VP["VP-000965"] = {
    label = "SigmaBike modelo 2065 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 142205,
    wear_curve = 0.3426,
    preferred_supplier_ids = { "SUP-000966", "SUP-002896" },
    gen_id = 965,
}
_VP["VP-000966"] = {
    label = "AstraMotors modelo 2066 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 142342,
    wear_curve = 0.8813,
    preferred_supplier_ids = { "SUP-000967", "SUP-002899" },
    gen_id = 966,
}
_VP["VP-000967"] = {
    label = "RioVeículos modelo 2067 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 142479,
    wear_curve = 0.4588,
    preferred_supplier_ids = { "SUP-000968", "SUP-002902" },
    gen_id = 967,
}
_VP["VP-000968"] = {
    label = "NorteAuto modelo 2068 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 142616,
    wear_curve = 0.2347,
    preferred_supplier_ids = { "SUP-000969", "SUP-002905" },
    gen_id = 968,
}
_VP["VP-000969"] = {
    label = "DeltaMob modelo 2069 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 142753,
    wear_curve = 0.3741,
    preferred_supplier_ids = { "SUP-000970", "SUP-002908" },
    gen_id = 969,
}
_VP["VP-000970"] = {
    label = "OrionTruck modelo 2070 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 142890,
    wear_curve = 0.3819,
    preferred_supplier_ids = { "SUP-000971", "SUP-002911" },
    gen_id = 970,
}
_VP["VP-000971"] = {
    label = "SigmaBike modelo 2071 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 143027,
    wear_curve = 0.8929,
    preferred_supplier_ids = { "SUP-000972", "SUP-002914" },
    gen_id = 971,
}
_VP["VP-000972"] = {
    label = "AstraMotors modelo 2072 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 143164,
    wear_curve = 0.2869,
    preferred_supplier_ids = { "SUP-000973", "SUP-002917" },
    gen_id = 972,
}
_VP["VP-000973"] = {
    label = "RioVeículos modelo 2073 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 143301,
    wear_curve = 0.5030,
    preferred_supplier_ids = { "SUP-000974", "SUP-002920" },
    gen_id = 973,
}
_VP["VP-000974"] = {
    label = "NorteAuto modelo 2074 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 143438,
    wear_curve = 0.2599,
    preferred_supplier_ids = { "SUP-000975", "SUP-002923" },
    gen_id = 974,
}
_VP["VP-000975"] = {
    label = "DeltaMob modelo 2075 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 143575,
    wear_curve = 0.7308,
    preferred_supplier_ids = { "SUP-000976", "SUP-002926" },
    gen_id = 975,
}
_VP["VP-000976"] = {
    label = "OrionTruck modelo 2076 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 143712,
    wear_curve = 0.5190,
    preferred_supplier_ids = { "SUP-000977", "SUP-002929" },
    gen_id = 976,
}
_VP["VP-000977"] = {
    label = "SigmaBike modelo 2077 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 143849,
    wear_curve = 0.8074,
    preferred_supplier_ids = { "SUP-000978", "SUP-002932" },
    gen_id = 977,
}
_VP["VP-000978"] = {
    label = "AstraMotors modelo 2078 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 143986,
    wear_curve = 0.5476,
    preferred_supplier_ids = { "SUP-000979", "SUP-002935" },
    gen_id = 978,
}
_VP["VP-000979"] = {
    label = "RioVeículos modelo 2079 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 144123,
    wear_curve = 0.6207,
    preferred_supplier_ids = { "SUP-000980", "SUP-002938" },
    gen_id = 979,
}
_VP["VP-000980"] = {
    label = "NorteAuto modelo 2080 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 144260,
    wear_curve = 0.4620,
    preferred_supplier_ids = { "SUP-000981", "SUP-002941" },
    gen_id = 980,
}
_VP["VP-000981"] = {
    label = "DeltaMob modelo 2081 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 144397,
    wear_curve = 0.9220,
    preferred_supplier_ids = { "SUP-000982", "SUP-002944" },
    gen_id = 981,
}
_VP["VP-000982"] = {
    label = "OrionTruck modelo 2082 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 144534,
    wear_curve = 0.9297,
    preferred_supplier_ids = { "SUP-000983", "SUP-002947" },
    gen_id = 982,
}
_VP["VP-000983"] = {
    label = "SigmaBike modelo 2083 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 144671,
    wear_curve = 0.8116,
    preferred_supplier_ids = { "SUP-000984", "SUP-002950" },
    gen_id = 983,
}
_VP["VP-000984"] = {
    label = "AstraMotors modelo 2084 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 144808,
    wear_curve = 0.4452,
    preferred_supplier_ids = { "SUP-000985", "SUP-002953" },
    gen_id = 984,
}
_VP["VP-000985"] = {
    label = "RioVeículos modelo 2085 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 144945,
    wear_curve = 0.3052,
    preferred_supplier_ids = { "SUP-000986", "SUP-002956" },
    gen_id = 985,
}
_VP["VP-000986"] = {
    label = "NorteAuto modelo 2086 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 145082,
    wear_curve = 0.1516,
    preferred_supplier_ids = { "SUP-000987", "SUP-002959" },
    gen_id = 986,
}
_VP["VP-000987"] = {
    label = "DeltaMob modelo 2087 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 145219,
    wear_curve = 0.9827,
    preferred_supplier_ids = { "SUP-000988", "SUP-002962" },
    gen_id = 987,
}
_VP["VP-000988"] = {
    label = "OrionTruck modelo 2088 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 145356,
    wear_curve = 0.2001,
    preferred_supplier_ids = { "SUP-000989", "SUP-002965" },
    gen_id = 988,
}
_VP["VP-000989"] = {
    label = "SigmaBike modelo 2089 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 145493,
    wear_curve = 0.9940,
    preferred_supplier_ids = { "SUP-000990", "SUP-002968" },
    gen_id = 989,
}
_VP["VP-000990"] = {
    label = "AstraMotors modelo 2090 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 145630,
    wear_curve = 0.9938,
    preferred_supplier_ids = { "SUP-000991", "SUP-002971" },
    gen_id = 990,
}
_VP["VP-000991"] = {
    label = "RioVeículos modelo 2091 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 145767,
    wear_curve = 0.6012,
    preferred_supplier_ids = { "SUP-000992", "SUP-002974" },
    gen_id = 991,
}
_VP["VP-000992"] = {
    label = "NorteAuto modelo 2092 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 145904,
    wear_curve = 0.5129,
    preferred_supplier_ids = { "SUP-000993", "SUP-002977" },
    gen_id = 992,
}
_VP["VP-000993"] = {
    label = "DeltaMob modelo 2093 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 146041,
    wear_curve = 0.2691,
    preferred_supplier_ids = { "SUP-000994", "SUP-002980" },
    gen_id = 993,
}
_VP["VP-000994"] = {
    label = "OrionTruck modelo 2094 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 146178,
    wear_curve = 0.9565,
    preferred_supplier_ids = { "SUP-000995", "SUP-002983" },
    gen_id = 994,
}
_VP["VP-000995"] = {
    label = "SigmaBike modelo 2095 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 146315,
    wear_curve = 0.9380,
    preferred_supplier_ids = { "SUP-000996", "SUP-002986" },
    gen_id = 995,
}
_VP["VP-000996"] = {
    label = "AstraMotors modelo 2096 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 146452,
    wear_curve = 0.5020,
    preferred_supplier_ids = { "SUP-000997", "SUP-002989" },
    gen_id = 996,
}
_VP["VP-000997"] = {
    label = "RioVeículos modelo 2097 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 146589,
    wear_curve = 0.8160,
    preferred_supplier_ids = { "SUP-000998", "SUP-002992" },
    gen_id = 997,
}
_VP["VP-000998"] = {
    label = "NorteAuto modelo 2098 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 146726,
    wear_curve = 0.8613,
    preferred_supplier_ids = { "SUP-000999", "SUP-002995" },
    gen_id = 998,
}
_VP["VP-000999"] = {
    label = "DeltaMob modelo 2099 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 146863,
    wear_curve = 0.7325,
    preferred_supplier_ids = { "SUP-001000", "SUP-002998" },
    gen_id = 999,
}
_VP["VP-001000"] = {
    label = "OrionTruck modelo 2100 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 147000,
    wear_curve = 0.3086,
    preferred_supplier_ids = { "SUP-001001", "SUP-003001" },
    gen_id = 1000,
}
_VP["VP-001001"] = {
    label = "SigmaBike modelo 2101 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 147137,
    wear_curve = 0.7288,
    preferred_supplier_ids = { "SUP-001002", "SUP-003004" },
    gen_id = 1001,
}
_VP["VP-001002"] = {
    label = "AstraMotors modelo 2102 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 147274,
    wear_curve = 0.8894,
    preferred_supplier_ids = { "SUP-001003", "SUP-003007" },
    gen_id = 1002,
}
_VP["VP-001003"] = {
    label = "RioVeículos modelo 2103 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 147411,
    wear_curve = 0.6604,
    preferred_supplier_ids = { "SUP-001004", "SUP-003010" },
    gen_id = 1003,
}
_VP["VP-001004"] = {
    label = "NorteAuto modelo 2104 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 147548,
    wear_curve = 0.5005,
    preferred_supplier_ids = { "SUP-001005", "SUP-003013" },
    gen_id = 1004,
}
_VP["VP-001005"] = {
    label = "DeltaMob modelo 2105 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 147685,
    wear_curve = 0.7176,
    preferred_supplier_ids = { "SUP-001006", "SUP-003016" },
    gen_id = 1005,
}
_VP["VP-001006"] = {
    label = "OrionTruck modelo 2106 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 147822,
    wear_curve = 0.5396,
    preferred_supplier_ids = { "SUP-001007", "SUP-003019" },
    gen_id = 1006,
}
_VP["VP-001007"] = {
    label = "SigmaBike modelo 2107 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 147959,
    wear_curve = 0.5207,
    preferred_supplier_ids = { "SUP-001008", "SUP-003022" },
    gen_id = 1007,
}
_VP["VP-001008"] = {
    label = "AstraMotors modelo 2108 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 148096,
    wear_curve = 0.7529,
    preferred_supplier_ids = { "SUP-001009", "SUP-003025" },
    gen_id = 1008,
}
_VP["VP-001009"] = {
    label = "RioVeículos modelo 2109 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 148233,
    wear_curve = 0.6423,
    preferred_supplier_ids = { "SUP-001010", "SUP-003028" },
    gen_id = 1009,
}
_VP["VP-001010"] = {
    label = "NorteAuto modelo 2110 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 148370,
    wear_curve = 0.4980,
    preferred_supplier_ids = { "SUP-001011", "SUP-003031" },
    gen_id = 1010,
}
_VP["VP-001011"] = {
    label = "DeltaMob modelo 2111 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 148507,
    wear_curve = 0.4715,
    preferred_supplier_ids = { "SUP-001012", "SUP-003034" },
    gen_id = 1011,
}
_VP["VP-001012"] = {
    label = "OrionTruck modelo 2112 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 148644,
    wear_curve = 0.5830,
    preferred_supplier_ids = { "SUP-001013", "SUP-003037" },
    gen_id = 1012,
}
_VP["VP-001013"] = {
    label = "SigmaBike modelo 2113 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 148781,
    wear_curve = 0.2068,
    preferred_supplier_ids = { "SUP-001014", "SUP-003040" },
    gen_id = 1013,
}
_VP["VP-001014"] = {
    label = "AstraMotors modelo 2114 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 148918,
    wear_curve = 0.3798,
    preferred_supplier_ids = { "SUP-001015", "SUP-003043" },
    gen_id = 1014,
}
_VP["VP-001015"] = {
    label = "RioVeículos modelo 2115 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 149055,
    wear_curve = 0.8543,
    preferred_supplier_ids = { "SUP-001016", "SUP-003046" },
    gen_id = 1015,
}
_VP["VP-001016"] = {
    label = "NorteAuto modelo 2116 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 149192,
    wear_curve = 0.8740,
    preferred_supplier_ids = { "SUP-001017", "SUP-003049" },
    gen_id = 1016,
}
_VP["VP-001017"] = {
    label = "DeltaMob modelo 2117 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 149329,
    wear_curve = 0.1627,
    preferred_supplier_ids = { "SUP-001018", "SUP-003052" },
    gen_id = 1017,
}
_VP["VP-001018"] = {
    label = "OrionTruck modelo 2118 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 149466,
    wear_curve = 0.9598,
    preferred_supplier_ids = { "SUP-001019", "SUP-003055" },
    gen_id = 1018,
}
_VP["VP-001019"] = {
    label = "SigmaBike modelo 2119 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 149603,
    wear_curve = 0.4635,
    preferred_supplier_ids = { "SUP-001020", "SUP-003058" },
    gen_id = 1019,
}
_VP["VP-001020"] = {
    label = "AstraMotors modelo 2120 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 149740,
    wear_curve = 0.8927,
    preferred_supplier_ids = { "SUP-001021", "SUP-003061" },
    gen_id = 1020,
}
_VP["VP-001021"] = {
    label = "RioVeículos modelo 2121 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 149877,
    wear_curve = 0.5817,
    preferred_supplier_ids = { "SUP-001022", "SUP-003064" },
    gen_id = 1021,
}
_VP["VP-001022"] = {
    label = "NorteAuto modelo 2122 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 150014,
    wear_curve = 0.1753,
    preferred_supplier_ids = { "SUP-001023", "SUP-003067" },
    gen_id = 1022,
}
_VP["VP-001023"] = {
    label = "DeltaMob modelo 2123 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 150151,
    wear_curve = 0.9750,
    preferred_supplier_ids = { "SUP-001024", "SUP-003070" },
    gen_id = 1023,
}
_VP["VP-001024"] = {
    label = "OrionTruck modelo 2124 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 150288,
    wear_curve = 0.1605,
    preferred_supplier_ids = { "SUP-001025", "SUP-003073" },
    gen_id = 1024,
}
_VP["VP-001025"] = {
    label = "SigmaBike modelo 2125 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 150425,
    wear_curve = 0.6195,
    preferred_supplier_ids = { "SUP-001026", "SUP-003076" },
    gen_id = 1025,
}
_VP["VP-001026"] = {
    label = "AstraMotors modelo 2126 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 150562,
    wear_curve = 0.4454,
    preferred_supplier_ids = { "SUP-001027", "SUP-003079" },
    gen_id = 1026,
}
_VP["VP-001027"] = {
    label = "RioVeículos modelo 2127 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 150699,
    wear_curve = 0.8134,
    preferred_supplier_ids = { "SUP-001028", "SUP-003082" },
    gen_id = 1027,
}
_VP["VP-001028"] = {
    label = "NorteAuto modelo 2128 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 150836,
    wear_curve = 0.3071,
    preferred_supplier_ids = { "SUP-001029", "SUP-003085" },
    gen_id = 1028,
}
_VP["VP-001029"] = {
    label = "DeltaMob modelo 2129 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 150973,
    wear_curve = 0.1571,
    preferred_supplier_ids = { "SUP-001030", "SUP-003088" },
    gen_id = 1029,
}
_VP["VP-001030"] = {
    label = "OrionTruck modelo 2130 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 151110,
    wear_curve = 0.8635,
    preferred_supplier_ids = { "SUP-001031", "SUP-003091" },
    gen_id = 1030,
}
_VP["VP-001031"] = {
    label = "SigmaBike modelo 2131 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 151247,
    wear_curve = 0.2004,
    preferred_supplier_ids = { "SUP-001032", "SUP-003094" },
    gen_id = 1031,
}
_VP["VP-001032"] = {
    label = "AstraMotors modelo 2132 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 151384,
    wear_curve = 0.5418,
    preferred_supplier_ids = { "SUP-001033", "SUP-003097" },
    gen_id = 1032,
}
_VP["VP-001033"] = {
    label = "RioVeículos modelo 2133 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 151521,
    wear_curve = 0.5159,
    preferred_supplier_ids = { "SUP-001034", "SUP-003100" },
    gen_id = 1033,
}
_VP["VP-001034"] = {
    label = "NorteAuto modelo 2134 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 151658,
    wear_curve = 0.7334,
    preferred_supplier_ids = { "SUP-001035", "SUP-003103" },
    gen_id = 1034,
}
_VP["VP-001035"] = {
    label = "DeltaMob modelo 2135 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 151795,
    wear_curve = 0.2367,
    preferred_supplier_ids = { "SUP-001036", "SUP-003106" },
    gen_id = 1035,
}
_VP["VP-001036"] = {
    label = "OrionTruck modelo 2136 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 151932,
    wear_curve = 0.9958,
    preferred_supplier_ids = { "SUP-001037", "SUP-003109" },
    gen_id = 1036,
}
_VP["VP-001037"] = {
    label = "SigmaBike modelo 2137 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 152069,
    wear_curve = 0.8078,
    preferred_supplier_ids = { "SUP-001038", "SUP-003112" },
    gen_id = 1037,
}
_VP["VP-001038"] = {
    label = "AstraMotors modelo 2138 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 152206,
    wear_curve = 0.3301,
    preferred_supplier_ids = { "SUP-001039", "SUP-003115" },
    gen_id = 1038,
}
_VP["VP-001039"] = {
    label = "RioVeículos modelo 2139 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 152343,
    wear_curve = 0.3353,
    preferred_supplier_ids = { "SUP-001040", "SUP-003118" },
    gen_id = 1039,
}
_VP["VP-001040"] = {
    label = "NorteAuto modelo 2140 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 152480,
    wear_curve = 0.3471,
    preferred_supplier_ids = { "SUP-001041", "SUP-003121" },
    gen_id = 1040,
}
_VP["VP-001041"] = {
    label = "DeltaMob modelo 2141 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 152617,
    wear_curve = 0.2922,
    preferred_supplier_ids = { "SUP-001042", "SUP-003124" },
    gen_id = 1041,
}
_VP["VP-001042"] = {
    label = "OrionTruck modelo 2142 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 152754,
    wear_curve = 0.2799,
    preferred_supplier_ids = { "SUP-001043", "SUP-003127" },
    gen_id = 1042,
}
_VP["VP-001043"] = {
    label = "SigmaBike modelo 2143 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 152891,
    wear_curve = 0.2332,
    preferred_supplier_ids = { "SUP-001044", "SUP-003130" },
    gen_id = 1043,
}
_VP["VP-001044"] = {
    label = "AstraMotors modelo 2144 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 153028,
    wear_curve = 0.7050,
    preferred_supplier_ids = { "SUP-001045", "SUP-003133" },
    gen_id = 1044,
}
_VP["VP-001045"] = {
    label = "RioVeículos modelo 2145 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 153165,
    wear_curve = 0.3261,
    preferred_supplier_ids = { "SUP-001046", "SUP-003136" },
    gen_id = 1045,
}
_VP["VP-001046"] = {
    label = "NorteAuto modelo 2146 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 153302,
    wear_curve = 0.3178,
    preferred_supplier_ids = { "SUP-001047", "SUP-003139" },
    gen_id = 1046,
}
_VP["VP-001047"] = {
    label = "DeltaMob modelo 2147 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 153439,
    wear_curve = 0.2752,
    preferred_supplier_ids = { "SUP-001048", "SUP-003142" },
    gen_id = 1047,
}
_VP["VP-001048"] = {
    label = "OrionTruck modelo 2148 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 153576,
    wear_curve = 0.6417,
    preferred_supplier_ids = { "SUP-001049", "SUP-003145" },
    gen_id = 1048,
}
_VP["VP-001049"] = {
    label = "SigmaBike modelo 2149 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 153713,
    wear_curve = 0.5537,
    preferred_supplier_ids = { "SUP-001050", "SUP-003148" },
    gen_id = 1049,
}
_VP["VP-001050"] = {
    label = "AstraMotors modelo 2150 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 153850,
    wear_curve = 0.9402,
    preferred_supplier_ids = { "SUP-001051", "SUP-003151" },
    gen_id = 1050,
}
_VP["VP-001051"] = {
    label = "RioVeículos modelo 2151 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 153987,
    wear_curve = 0.6720,
    preferred_supplier_ids = { "SUP-001052", "SUP-003154" },
    gen_id = 1051,
}
_VP["VP-001052"] = {
    label = "NorteAuto modelo 2152 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 154124,
    wear_curve = 0.8215,
    preferred_supplier_ids = { "SUP-001053", "SUP-003157" },
    gen_id = 1052,
}
_VP["VP-001053"] = {
    label = "DeltaMob modelo 2153 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 154261,
    wear_curve = 0.3465,
    preferred_supplier_ids = { "SUP-001054", "SUP-003160" },
    gen_id = 1053,
}
_VP["VP-001054"] = {
    label = "OrionTruck modelo 2154 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 154398,
    wear_curve = 0.6367,
    preferred_supplier_ids = { "SUP-001055", "SUP-003163" },
    gen_id = 1054,
}
_VP["VP-001055"] = {
    label = "SigmaBike modelo 2155 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 154535,
    wear_curve = 0.6494,
    preferred_supplier_ids = { "SUP-001056", "SUP-003166" },
    gen_id = 1055,
}
_VP["VP-001056"] = {
    label = "AstraMotors modelo 2156 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 154672,
    wear_curve = 0.9925,
    preferred_supplier_ids = { "SUP-001057", "SUP-003169" },
    gen_id = 1056,
}
_VP["VP-001057"] = {
    label = "RioVeículos modelo 2157 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 154809,
    wear_curve = 0.5659,
    preferred_supplier_ids = { "SUP-001058", "SUP-003172" },
    gen_id = 1057,
}
_VP["VP-001058"] = {
    label = "NorteAuto modelo 2158 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 154946,
    wear_curve = 0.2938,
    preferred_supplier_ids = { "SUP-001059", "SUP-003175" },
    gen_id = 1058,
}
_VP["VP-001059"] = {
    label = "DeltaMob modelo 2159 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 155083,
    wear_curve = 0.3182,
    preferred_supplier_ids = { "SUP-001060", "SUP-003178" },
    gen_id = 1059,
}
_VP["VP-001060"] = {
    label = "OrionTruck modelo 2160 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 155220,
    wear_curve = 0.4640,
    preferred_supplier_ids = { "SUP-001061", "SUP-003181" },
    gen_id = 1060,
}
_VP["VP-001061"] = {
    label = "SigmaBike modelo 2161 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 155357,
    wear_curve = 0.9348,
    preferred_supplier_ids = { "SUP-001062", "SUP-003184" },
    gen_id = 1061,
}
_VP["VP-001062"] = {
    label = "AstraMotors modelo 2162 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 155494,
    wear_curve = 0.2289,
    preferred_supplier_ids = { "SUP-001063", "SUP-003187" },
    gen_id = 1062,
}
_VP["VP-001063"] = {
    label = "RioVeículos modelo 2163 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 155631,
    wear_curve = 0.6551,
    preferred_supplier_ids = { "SUP-001064", "SUP-003190" },
    gen_id = 1063,
}
_VP["VP-001064"] = {
    label = "NorteAuto modelo 2164 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 155768,
    wear_curve = 0.8107,
    preferred_supplier_ids = { "SUP-001065", "SUP-003193" },
    gen_id = 1064,
}
_VP["VP-001065"] = {
    label = "DeltaMob modelo 2165 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 155905,
    wear_curve = 0.4135,
    preferred_supplier_ids = { "SUP-001066", "SUP-003196" },
    gen_id = 1065,
}
_VP["VP-001066"] = {
    label = "OrionTruck modelo 2166 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 156042,
    wear_curve = 0.1729,
    preferred_supplier_ids = { "SUP-001067", "SUP-003199" },
    gen_id = 1066,
}
_VP["VP-001067"] = {
    label = "SigmaBike modelo 2167 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 156179,
    wear_curve = 0.5996,
    preferred_supplier_ids = { "SUP-001068", "SUP-003202" },
    gen_id = 1067,
}
_VP["VP-001068"] = {
    label = "AstraMotors modelo 2168 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 156316,
    wear_curve = 0.4025,
    preferred_supplier_ids = { "SUP-001069", "SUP-003205" },
    gen_id = 1068,
}
_VP["VP-001069"] = {
    label = "RioVeículos modelo 2169 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 156453,
    wear_curve = 0.5433,
    preferred_supplier_ids = { "SUP-001070", "SUP-003208" },
    gen_id = 1069,
}
_VP["VP-001070"] = {
    label = "NorteAuto modelo 2170 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 156590,
    wear_curve = 0.8353,
    preferred_supplier_ids = { "SUP-001071", "SUP-003211" },
    gen_id = 1070,
}
_VP["VP-001071"] = {
    label = "DeltaMob modelo 2171 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 156727,
    wear_curve = 0.6822,
    preferred_supplier_ids = { "SUP-001072", "SUP-003214" },
    gen_id = 1071,
}
_VP["VP-001072"] = {
    label = "OrionTruck modelo 2172 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 156864,
    wear_curve = 0.3233,
    preferred_supplier_ids = { "SUP-001073", "SUP-003217" },
    gen_id = 1072,
}
_VP["VP-001073"] = {
    label = "SigmaBike modelo 2173 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 157001,
    wear_curve = 0.8764,
    preferred_supplier_ids = { "SUP-001074", "SUP-003220" },
    gen_id = 1073,
}
_VP["VP-001074"] = {
    label = "AstraMotors modelo 2174 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 157138,
    wear_curve = 0.7934,
    preferred_supplier_ids = { "SUP-001075", "SUP-003223" },
    gen_id = 1074,
}
_VP["VP-001075"] = {
    label = "RioVeículos modelo 2175 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 157275,
    wear_curve = 0.7141,
    preferred_supplier_ids = { "SUP-001076", "SUP-003226" },
    gen_id = 1075,
}
_VP["VP-001076"] = {
    label = "NorteAuto modelo 2176 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 157412,
    wear_curve = 0.6563,
    preferred_supplier_ids = { "SUP-001077", "SUP-003229" },
    gen_id = 1076,
}
_VP["VP-001077"] = {
    label = "DeltaMob modelo 2177 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 157549,
    wear_curve = 0.4818,
    preferred_supplier_ids = { "SUP-001078", "SUP-003232" },
    gen_id = 1077,
}
_VP["VP-001078"] = {
    label = "OrionTruck modelo 2178 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 157686,
    wear_curve = 0.5164,
    preferred_supplier_ids = { "SUP-001079", "SUP-003235" },
    gen_id = 1078,
}
_VP["VP-001079"] = {
    label = "SigmaBike modelo 2179 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 157823,
    wear_curve = 0.5286,
    preferred_supplier_ids = { "SUP-001080", "SUP-003238" },
    gen_id = 1079,
}
_VP["VP-001080"] = {
    label = "AstraMotors modelo 2180 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 157960,
    wear_curve = 0.3218,
    preferred_supplier_ids = { "SUP-001081", "SUP-003241" },
    gen_id = 1080,
}
_VP["VP-001081"] = {
    label = "RioVeículos modelo 2181 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 158097,
    wear_curve = 0.1706,
    preferred_supplier_ids = { "SUP-001082", "SUP-003244" },
    gen_id = 1081,
}
_VP["VP-001082"] = {
    label = "NorteAuto modelo 2182 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 158234,
    wear_curve = 0.8898,
    preferred_supplier_ids = { "SUP-001083", "SUP-003247" },
    gen_id = 1082,
}
_VP["VP-001083"] = {
    label = "DeltaMob modelo 2183 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 158371,
    wear_curve = 0.2283,
    preferred_supplier_ids = { "SUP-001084", "SUP-003250" },
    gen_id = 1083,
}
_VP["VP-001084"] = {
    label = "OrionTruck modelo 2184 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 158508,
    wear_curve = 0.2699,
    preferred_supplier_ids = { "SUP-001085", "SUP-003253" },
    gen_id = 1084,
}
_VP["VP-001085"] = {
    label = "SigmaBike modelo 2185 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 158645,
    wear_curve = 0.3039,
    preferred_supplier_ids = { "SUP-001086", "SUP-003256" },
    gen_id = 1085,
}
_VP["VP-001086"] = {
    label = "AstraMotors modelo 2186 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 158782,
    wear_curve = 0.8258,
    preferred_supplier_ids = { "SUP-001087", "SUP-003259" },
    gen_id = 1086,
}
_VP["VP-001087"] = {
    label = "RioVeículos modelo 2187 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 158919,
    wear_curve = 0.8560,
    preferred_supplier_ids = { "SUP-001088", "SUP-003262" },
    gen_id = 1087,
}
_VP["VP-001088"] = {
    label = "NorteAuto modelo 2188 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 159056,
    wear_curve = 0.6905,
    preferred_supplier_ids = { "SUP-001089", "SUP-003265" },
    gen_id = 1088,
}
_VP["VP-001089"] = {
    label = "DeltaMob modelo 2189 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 159193,
    wear_curve = 0.3048,
    preferred_supplier_ids = { "SUP-001090", "SUP-003268" },
    gen_id = 1089,
}
_VP["VP-001090"] = {
    label = "OrionTruck modelo 2190 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 159330,
    wear_curve = 0.4522,
    preferred_supplier_ids = { "SUP-001091", "SUP-003271" },
    gen_id = 1090,
}
_VP["VP-001091"] = {
    label = "SigmaBike modelo 2191 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 159467,
    wear_curve = 0.6657,
    preferred_supplier_ids = { "SUP-001092", "SUP-003274" },
    gen_id = 1091,
}
_VP["VP-001092"] = {
    label = "AstraMotors modelo 2192 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 159604,
    wear_curve = 0.9669,
    preferred_supplier_ids = { "SUP-001093", "SUP-003277" },
    gen_id = 1092,
}
_VP["VP-001093"] = {
    label = "RioVeículos modelo 2193 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 159741,
    wear_curve = 0.2591,
    preferred_supplier_ids = { "SUP-001094", "SUP-003280" },
    gen_id = 1093,
}
_VP["VP-001094"] = {
    label = "NorteAuto modelo 2194 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 159878,
    wear_curve = 0.4368,
    preferred_supplier_ids = { "SUP-001095", "SUP-003283" },
    gen_id = 1094,
}
_VP["VP-001095"] = {
    label = "DeltaMob modelo 2195 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 160015,
    wear_curve = 0.2371,
    preferred_supplier_ids = { "SUP-001096", "SUP-003286" },
    gen_id = 1095,
}
_VP["VP-001096"] = {
    label = "OrionTruck modelo 2196 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 160152,
    wear_curve = 0.2613,
    preferred_supplier_ids = { "SUP-001097", "SUP-003289" },
    gen_id = 1096,
}
_VP["VP-001097"] = {
    label = "SigmaBike modelo 2197 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 160289,
    wear_curve = 0.9533,
    preferred_supplier_ids = { "SUP-001098", "SUP-003292" },
    gen_id = 1097,
}
_VP["VP-001098"] = {
    label = "AstraMotors modelo 2198 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 160426,
    wear_curve = 0.9679,
    preferred_supplier_ids = { "SUP-001099", "SUP-003295" },
    gen_id = 1098,
}
_VP["VP-001099"] = {
    label = "RioVeículos modelo 2199 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 160563,
    wear_curve = 0.9866,
    preferred_supplier_ids = { "SUP-001100", "SUP-003298" },
    gen_id = 1099,
}
_VP["VP-001100"] = {
    label = "NorteAuto modelo 2200 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 160700,
    wear_curve = 0.2322,
    preferred_supplier_ids = { "SUP-001101", "SUP-003301" },
    gen_id = 1100,
}
_VP["VP-001101"] = {
    label = "DeltaMob modelo 2201 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 160837,
    wear_curve = 0.6103,
    preferred_supplier_ids = { "SUP-001102", "SUP-003304" },
    gen_id = 1101,
}
_VP["VP-001102"] = {
    label = "OrionTruck modelo 2202 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 160974,
    wear_curve = 0.7220,
    preferred_supplier_ids = { "SUP-001103", "SUP-003307" },
    gen_id = 1102,
}
_VP["VP-001103"] = {
    label = "SigmaBike modelo 2203 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 161111,
    wear_curve = 0.5418,
    preferred_supplier_ids = { "SUP-001104", "SUP-003310" },
    gen_id = 1103,
}
_VP["VP-001104"] = {
    label = "AstraMotors modelo 2204 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 161248,
    wear_curve = 0.5480,
    preferred_supplier_ids = { "SUP-001105", "SUP-003313" },
    gen_id = 1104,
}
_VP["VP-001105"] = {
    label = "RioVeículos modelo 2205 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 161385,
    wear_curve = 0.3935,
    preferred_supplier_ids = { "SUP-001106", "SUP-003316" },
    gen_id = 1105,
}
_VP["VP-001106"] = {
    label = "NorteAuto modelo 2206 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 161522,
    wear_curve = 0.6142,
    preferred_supplier_ids = { "SUP-001107", "SUP-003319" },
    gen_id = 1106,
}
_VP["VP-001107"] = {
    label = "DeltaMob modelo 2207 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 161659,
    wear_curve = 0.5575,
    preferred_supplier_ids = { "SUP-001108", "SUP-003322" },
    gen_id = 1107,
}
_VP["VP-001108"] = {
    label = "OrionTruck modelo 2208 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 161796,
    wear_curve = 0.1721,
    preferred_supplier_ids = { "SUP-001109", "SUP-003325" },
    gen_id = 1108,
}
_VP["VP-001109"] = {
    label = "SigmaBike modelo 2209 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 161933,
    wear_curve = 0.3673,
    preferred_supplier_ids = { "SUP-001110", "SUP-003328" },
    gen_id = 1109,
}
_VP["VP-001110"] = {
    label = "AstraMotors modelo 2210 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 162070,
    wear_curve = 0.3365,
    preferred_supplier_ids = { "SUP-001111", "SUP-003331" },
    gen_id = 1110,
}
_VP["VP-001111"] = {
    label = "RioVeículos modelo 2211 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 162207,
    wear_curve = 0.2658,
    preferred_supplier_ids = { "SUP-001112", "SUP-003334" },
    gen_id = 1111,
}
_VP["VP-001112"] = {
    label = "NorteAuto modelo 2212 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 162344,
    wear_curve = 0.6077,
    preferred_supplier_ids = { "SUP-001113", "SUP-003337" },
    gen_id = 1112,
}
_VP["VP-001113"] = {
    label = "DeltaMob modelo 2213 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 162481,
    wear_curve = 0.9594,
    preferred_supplier_ids = { "SUP-001114", "SUP-003340" },
    gen_id = 1113,
}
_VP["VP-001114"] = {
    label = "OrionTruck modelo 2214 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 162618,
    wear_curve = 0.5562,
    preferred_supplier_ids = { "SUP-001115", "SUP-003343" },
    gen_id = 1114,
}
_VP["VP-001115"] = {
    label = "SigmaBike modelo 2215 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 162755,
    wear_curve = 0.2626,
    preferred_supplier_ids = { "SUP-001116", "SUP-003346" },
    gen_id = 1115,
}
_VP["VP-001116"] = {
    label = "AstraMotors modelo 2216 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 162892,
    wear_curve = 0.7029,
    preferred_supplier_ids = { "SUP-001117", "SUP-003349" },
    gen_id = 1116,
}
_VP["VP-001117"] = {
    label = "RioVeículos modelo 2217 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 163029,
    wear_curve = 0.5358,
    preferred_supplier_ids = { "SUP-001118", "SUP-003352" },
    gen_id = 1117,
}
_VP["VP-001118"] = {
    label = "NorteAuto modelo 2218 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 163166,
    wear_curve = 0.9038,
    preferred_supplier_ids = { "SUP-001119", "SUP-003355" },
    gen_id = 1118,
}
_VP["VP-001119"] = {
    label = "DeltaMob modelo 2219 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 163303,
    wear_curve = 0.4490,
    preferred_supplier_ids = { "SUP-001120", "SUP-003358" },
    gen_id = 1119,
}
_VP["VP-001120"] = {
    label = "OrionTruck modelo 2220 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 163440,
    wear_curve = 0.8807,
    preferred_supplier_ids = { "SUP-001121", "SUP-003361" },
    gen_id = 1120,
}
_VP["VP-001121"] = {
    label = "SigmaBike modelo 2221 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 163577,
    wear_curve = 0.3115,
    preferred_supplier_ids = { "SUP-001122", "SUP-003364" },
    gen_id = 1121,
}
_VP["VP-001122"] = {
    label = "AstraMotors modelo 2222 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 163714,
    wear_curve = 0.2466,
    preferred_supplier_ids = { "SUP-001123", "SUP-003367" },
    gen_id = 1122,
}
_VP["VP-001123"] = {
    label = "RioVeículos modelo 2223 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 163851,
    wear_curve = 0.9044,
    preferred_supplier_ids = { "SUP-001124", "SUP-003370" },
    gen_id = 1123,
}
_VP["VP-001124"] = {
    label = "NorteAuto modelo 2224 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 163988,
    wear_curve = 0.8673,
    preferred_supplier_ids = { "SUP-001125", "SUP-003373" },
    gen_id = 1124,
}
_VP["VP-001125"] = {
    label = "DeltaMob modelo 2225 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 164125,
    wear_curve = 0.8317,
    preferred_supplier_ids = { "SUP-001126", "SUP-003376" },
    gen_id = 1125,
}
_VP["VP-001126"] = {
    label = "OrionTruck modelo 2226 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 164262,
    wear_curve = 0.8549,
    preferred_supplier_ids = { "SUP-001127", "SUP-003379" },
    gen_id = 1126,
}
_VP["VP-001127"] = {
    label = "SigmaBike modelo 2227 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 164399,
    wear_curve = 0.2342,
    preferred_supplier_ids = { "SUP-001128", "SUP-003382" },
    gen_id = 1127,
}
_VP["VP-001128"] = {
    label = "AstraMotors modelo 2228 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 164536,
    wear_curve = 0.7091,
    preferred_supplier_ids = { "SUP-001129", "SUP-003385" },
    gen_id = 1128,
}
_VP["VP-001129"] = {
    label = "RioVeículos modelo 2229 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 164673,
    wear_curve = 0.8210,
    preferred_supplier_ids = { "SUP-001130", "SUP-003388" },
    gen_id = 1129,
}
_VP["VP-001130"] = {
    label = "NorteAuto modelo 2230 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 164810,
    wear_curve = 0.4289,
    preferred_supplier_ids = { "SUP-001131", "SUP-003391" },
    gen_id = 1130,
}
_VP["VP-001131"] = {
    label = "DeltaMob modelo 2231 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 164947,
    wear_curve = 0.5955,
    preferred_supplier_ids = { "SUP-001132", "SUP-003394" },
    gen_id = 1131,
}
_VP["VP-001132"] = {
    label = "OrionTruck modelo 2232 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 165084,
    wear_curve = 0.6288,
    preferred_supplier_ids = { "SUP-001133", "SUP-003397" },
    gen_id = 1132,
}
_VP["VP-001133"] = {
    label = "SigmaBike modelo 2233 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 165221,
    wear_curve = 0.9113,
    preferred_supplier_ids = { "SUP-001134", "SUP-003400" },
    gen_id = 1133,
}
_VP["VP-001134"] = {
    label = "AstraMotors modelo 2234 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 165358,
    wear_curve = 0.3707,
    preferred_supplier_ids = { "SUP-001135", "SUP-003403" },
    gen_id = 1134,
}
_VP["VP-001135"] = {
    label = "RioVeículos modelo 2235 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 165495,
    wear_curve = 0.7670,
    preferred_supplier_ids = { "SUP-001136", "SUP-003406" },
    gen_id = 1135,
}
_VP["VP-001136"] = {
    label = "NorteAuto modelo 2236 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 165632,
    wear_curve = 0.5824,
    preferred_supplier_ids = { "SUP-001137", "SUP-003409" },
    gen_id = 1136,
}
_VP["VP-001137"] = {
    label = "DeltaMob modelo 2237 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 165769,
    wear_curve = 0.5206,
    preferred_supplier_ids = { "SUP-001138", "SUP-003412" },
    gen_id = 1137,
}
_VP["VP-001138"] = {
    label = "OrionTruck modelo 2238 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 165906,
    wear_curve = 0.2436,
    preferred_supplier_ids = { "SUP-001139", "SUP-003415" },
    gen_id = 1138,
}
_VP["VP-001139"] = {
    label = "SigmaBike modelo 2239 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 166043,
    wear_curve = 0.4919,
    preferred_supplier_ids = { "SUP-001140", "SUP-003418" },
    gen_id = 1139,
}
_VP["VP-001140"] = {
    label = "AstraMotors modelo 2240 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 166180,
    wear_curve = 0.5949,
    preferred_supplier_ids = { "SUP-001141", "SUP-003421" },
    gen_id = 1140,
}
_VP["VP-001141"] = {
    label = "RioVeículos modelo 2241 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 166317,
    wear_curve = 0.1675,
    preferred_supplier_ids = { "SUP-001142", "SUP-003424" },
    gen_id = 1141,
}
_VP["VP-001142"] = {
    label = "NorteAuto modelo 2242 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 166454,
    wear_curve = 0.4274,
    preferred_supplier_ids = { "SUP-001143", "SUP-003427" },
    gen_id = 1142,
}
_VP["VP-001143"] = {
    label = "DeltaMob modelo 2243 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 166591,
    wear_curve = 0.4364,
    preferred_supplier_ids = { "SUP-001144", "SUP-003430" },
    gen_id = 1143,
}
_VP["VP-001144"] = {
    label = "OrionTruck modelo 2244 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 166728,
    wear_curve = 0.6120,
    preferred_supplier_ids = { "SUP-001145", "SUP-003433" },
    gen_id = 1144,
}
_VP["VP-001145"] = {
    label = "SigmaBike modelo 2245 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 166865,
    wear_curve = 0.4705,
    preferred_supplier_ids = { "SUP-001146", "SUP-003436" },
    gen_id = 1145,
}
_VP["VP-001146"] = {
    label = "AstraMotors modelo 2246 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 167002,
    wear_curve = 0.3381,
    preferred_supplier_ids = { "SUP-001147", "SUP-003439" },
    gen_id = 1146,
}
_VP["VP-001147"] = {
    label = "RioVeículos modelo 2247 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 167139,
    wear_curve = 0.1654,
    preferred_supplier_ids = { "SUP-001148", "SUP-003442" },
    gen_id = 1147,
}
_VP["VP-001148"] = {
    label = "NorteAuto modelo 2248 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 167276,
    wear_curve = 0.5179,
    preferred_supplier_ids = { "SUP-001149", "SUP-003445" },
    gen_id = 1148,
}
_VP["VP-001149"] = {
    label = "DeltaMob modelo 2249 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 167413,
    wear_curve = 0.3405,
    preferred_supplier_ids = { "SUP-001150", "SUP-003448" },
    gen_id = 1149,
}
_VP["VP-001150"] = {
    label = "OrionTruck modelo 2250 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 167550,
    wear_curve = 0.1950,
    preferred_supplier_ids = { "SUP-001151", "SUP-003451" },
    gen_id = 1150,
}
_VP["VP-001151"] = {
    label = "SigmaBike modelo 2251 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 167687,
    wear_curve = 0.1552,
    preferred_supplier_ids = { "SUP-001152", "SUP-003454" },
    gen_id = 1151,
}
_VP["VP-001152"] = {
    label = "AstraMotors modelo 2252 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 167824,
    wear_curve = 0.3340,
    preferred_supplier_ids = { "SUP-001153", "SUP-003457" },
    gen_id = 1152,
}
_VP["VP-001153"] = {
    label = "RioVeículos modelo 2253 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 167961,
    wear_curve = 0.4902,
    preferred_supplier_ids = { "SUP-001154", "SUP-003460" },
    gen_id = 1153,
}
_VP["VP-001154"] = {
    label = "NorteAuto modelo 2254 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 168098,
    wear_curve = 0.9289,
    preferred_supplier_ids = { "SUP-001155", "SUP-003463" },
    gen_id = 1154,
}
_VP["VP-001155"] = {
    label = "DeltaMob modelo 2255 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 168235,
    wear_curve = 0.4677,
    preferred_supplier_ids = { "SUP-001156", "SUP-003466" },
    gen_id = 1155,
}
_VP["VP-001156"] = {
    label = "OrionTruck modelo 2256 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 168372,
    wear_curve = 0.8233,
    preferred_supplier_ids = { "SUP-001157", "SUP-003469" },
    gen_id = 1156,
}
_VP["VP-001157"] = {
    label = "SigmaBike modelo 2257 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 168509,
    wear_curve = 0.7456,
    preferred_supplier_ids = { "SUP-001158", "SUP-003472" },
    gen_id = 1157,
}
_VP["VP-001158"] = {
    label = "AstraMotors modelo 2258 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 168646,
    wear_curve = 0.4389,
    preferred_supplier_ids = { "SUP-001159", "SUP-003475" },
    gen_id = 1158,
}
_VP["VP-001159"] = {
    label = "RioVeículos modelo 2259 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 168783,
    wear_curve = 0.8321,
    preferred_supplier_ids = { "SUP-001160", "SUP-003478" },
    gen_id = 1159,
}
_VP["VP-001160"] = {
    label = "NorteAuto modelo 2260 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 168920,
    wear_curve = 0.6890,
    preferred_supplier_ids = { "SUP-001161", "SUP-003481" },
    gen_id = 1160,
}
_VP["VP-001161"] = {
    label = "DeltaMob modelo 2261 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 169057,
    wear_curve = 0.2561,
    preferred_supplier_ids = { "SUP-001162", "SUP-003484" },
    gen_id = 1161,
}
_VP["VP-001162"] = {
    label = "OrionTruck modelo 2262 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 169194,
    wear_curve = 0.7674,
    preferred_supplier_ids = { "SUP-001163", "SUP-003487" },
    gen_id = 1162,
}
_VP["VP-001163"] = {
    label = "SigmaBike modelo 2263 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 169331,
    wear_curve = 0.2845,
    preferred_supplier_ids = { "SUP-001164", "SUP-003490" },
    gen_id = 1163,
}
_VP["VP-001164"] = {
    label = "AstraMotors modelo 2264 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 169468,
    wear_curve = 0.3678,
    preferred_supplier_ids = { "SUP-001165", "SUP-003493" },
    gen_id = 1164,
}
_VP["VP-001165"] = {
    label = "RioVeículos modelo 2265 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 169605,
    wear_curve = 0.5654,
    preferred_supplier_ids = { "SUP-001166", "SUP-003496" },
    gen_id = 1165,
}
_VP["VP-001166"] = {
    label = "NorteAuto modelo 2266 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 169742,
    wear_curve = 0.1748,
    preferred_supplier_ids = { "SUP-001167", "SUP-003499" },
    gen_id = 1166,
}
_VP["VP-001167"] = {
    label = "DeltaMob modelo 2267 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 169879,
    wear_curve = 0.6836,
    preferred_supplier_ids = { "SUP-001168", "SUP-003502" },
    gen_id = 1167,
}
_VP["VP-001168"] = {
    label = "OrionTruck modelo 2268 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 170016,
    wear_curve = 0.5318,
    preferred_supplier_ids = { "SUP-001169", "SUP-003505" },
    gen_id = 1168,
}
_VP["VP-001169"] = {
    label = "SigmaBike modelo 2269 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 170153,
    wear_curve = 0.6639,
    preferred_supplier_ids = { "SUP-001170", "SUP-003508" },
    gen_id = 1169,
}
_VP["VP-001170"] = {
    label = "AstraMotors modelo 2270 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 170290,
    wear_curve = 0.4090,
    preferred_supplier_ids = { "SUP-001171", "SUP-003511" },
    gen_id = 1170,
}
_VP["VP-001171"] = {
    label = "RioVeículos modelo 2271 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 170427,
    wear_curve = 0.7810,
    preferred_supplier_ids = { "SUP-001172", "SUP-003514" },
    gen_id = 1171,
}
_VP["VP-001172"] = {
    label = "NorteAuto modelo 2272 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 170564,
    wear_curve = 0.6240,
    preferred_supplier_ids = { "SUP-001173", "SUP-003517" },
    gen_id = 1172,
}
_VP["VP-001173"] = {
    label = "DeltaMob modelo 2273 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 170701,
    wear_curve = 0.5584,
    preferred_supplier_ids = { "SUP-001174", "SUP-003520" },
    gen_id = 1173,
}
_VP["VP-001174"] = {
    label = "OrionTruck modelo 2274 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 170838,
    wear_curve = 0.1766,
    preferred_supplier_ids = { "SUP-001175", "SUP-003523" },
    gen_id = 1174,
}
_VP["VP-001175"] = {
    label = "SigmaBike modelo 2275 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 170975,
    wear_curve = 0.8871,
    preferred_supplier_ids = { "SUP-001176", "SUP-003526" },
    gen_id = 1175,
}
_VP["VP-001176"] = {
    label = "AstraMotors modelo 2276 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 171112,
    wear_curve = 0.4171,
    preferred_supplier_ids = { "SUP-001177", "SUP-003529" },
    gen_id = 1176,
}
_VP["VP-001177"] = {
    label = "RioVeículos modelo 2277 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 171249,
    wear_curve = 0.3577,
    preferred_supplier_ids = { "SUP-001178", "SUP-003532" },
    gen_id = 1177,
}
_VP["VP-001178"] = {
    label = "NorteAuto modelo 2278 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 171386,
    wear_curve = 0.4348,
    preferred_supplier_ids = { "SUP-001179", "SUP-003535" },
    gen_id = 1178,
}
_VP["VP-001179"] = {
    label = "DeltaMob modelo 2279 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 171523,
    wear_curve = 0.9873,
    preferred_supplier_ids = { "SUP-001180", "SUP-003538" },
    gen_id = 1179,
}
_VP["VP-001180"] = {
    label = "OrionTruck modelo 2280 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 171660,
    wear_curve = 0.9939,
    preferred_supplier_ids = { "SUP-001181", "SUP-003541" },
    gen_id = 1180,
}
_VP["VP-001181"] = {
    label = "SigmaBike modelo 2281 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 171797,
    wear_curve = 0.7825,
    preferred_supplier_ids = { "SUP-001182", "SUP-003544" },
    gen_id = 1181,
}
_VP["VP-001182"] = {
    label = "AstraMotors modelo 2282 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 171934,
    wear_curve = 0.5872,
    preferred_supplier_ids = { "SUP-001183", "SUP-003547" },
    gen_id = 1182,
}
_VP["VP-001183"] = {
    label = "RioVeículos modelo 2283 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 172071,
    wear_curve = 0.8740,
    preferred_supplier_ids = { "SUP-001184", "SUP-003550" },
    gen_id = 1183,
}
_VP["VP-001184"] = {
    label = "NorteAuto modelo 2284 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 172208,
    wear_curve = 0.9155,
    preferred_supplier_ids = { "SUP-001185", "SUP-003553" },
    gen_id = 1184,
}
_VP["VP-001185"] = {
    label = "DeltaMob modelo 2285 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 172345,
    wear_curve = 0.1741,
    preferred_supplier_ids = { "SUP-001186", "SUP-003556" },
    gen_id = 1185,
}
_VP["VP-001186"] = {
    label = "OrionTruck modelo 2286 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 172482,
    wear_curve = 0.5767,
    preferred_supplier_ids = { "SUP-001187", "SUP-003559" },
    gen_id = 1186,
}
_VP["VP-001187"] = {
    label = "SigmaBike modelo 2287 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 172619,
    wear_curve = 0.8744,
    preferred_supplier_ids = { "SUP-001188", "SUP-003562" },
    gen_id = 1187,
}
_VP["VP-001188"] = {
    label = "AstraMotors modelo 2288 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 172756,
    wear_curve = 0.5505,
    preferred_supplier_ids = { "SUP-001189", "SUP-003565" },
    gen_id = 1188,
}
_VP["VP-001189"] = {
    label = "RioVeículos modelo 2289 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 172893,
    wear_curve = 0.2852,
    preferred_supplier_ids = { "SUP-001190", "SUP-003568" },
    gen_id = 1189,
}
_VP["VP-001190"] = {
    label = "NorteAuto modelo 2290 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 173030,
    wear_curve = 0.2831,
    preferred_supplier_ids = { "SUP-001191", "SUP-003571" },
    gen_id = 1190,
}
_VP["VP-001191"] = {
    label = "DeltaMob modelo 2291 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 173167,
    wear_curve = 0.2640,
    preferred_supplier_ids = { "SUP-001192", "SUP-003574" },
    gen_id = 1191,
}
_VP["VP-001192"] = {
    label = "OrionTruck modelo 2292 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 173304,
    wear_curve = 0.5557,
    preferred_supplier_ids = { "SUP-001193", "SUP-003577" },
    gen_id = 1192,
}
_VP["VP-001193"] = {
    label = "SigmaBike modelo 2293 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 173441,
    wear_curve = 0.2021,
    preferred_supplier_ids = { "SUP-001194", "SUP-003580" },
    gen_id = 1193,
}
_VP["VP-001194"] = {
    label = "AstraMotors modelo 2294 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 173578,
    wear_curve = 0.5957,
    preferred_supplier_ids = { "SUP-001195", "SUP-003583" },
    gen_id = 1194,
}
_VP["VP-001195"] = {
    label = "RioVeículos modelo 2295 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 173715,
    wear_curve = 0.8715,
    preferred_supplier_ids = { "SUP-001196", "SUP-003586" },
    gen_id = 1195,
}
_VP["VP-001196"] = {
    label = "NorteAuto modelo 2296 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 173852,
    wear_curve = 0.2572,
    preferred_supplier_ids = { "SUP-001197", "SUP-003589" },
    gen_id = 1196,
}
_VP["VP-001197"] = {
    label = "DeltaMob modelo 2297 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 173989,
    wear_curve = 0.4579,
    preferred_supplier_ids = { "SUP-001198", "SUP-003592" },
    gen_id = 1197,
}
_VP["VP-001198"] = {
    label = "OrionTruck modelo 2298 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 174126,
    wear_curve = 0.5413,
    preferred_supplier_ids = { "SUP-001199", "SUP-003595" },
    gen_id = 1198,
}
_VP["VP-001199"] = {
    label = "SigmaBike modelo 2299 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 174263,
    wear_curve = 0.6399,
    preferred_supplier_ids = { "SUP-001200", "SUP-003598" },
    gen_id = 1199,
}
_VP["VP-001200"] = {
    label = "AstraMotors modelo 2300 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 174400,
    wear_curve = 0.1963,
    preferred_supplier_ids = { "SUP-001201", "SUP-003601" },
    gen_id = 1200,
}
_VP["VP-001201"] = {
    label = "RioVeículos modelo 2301 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 174537,
    wear_curve = 0.5085,
    preferred_supplier_ids = { "SUP-001202", "SUP-003604" },
    gen_id = 1201,
}
_VP["VP-001202"] = {
    label = "NorteAuto modelo 2302 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 174674,
    wear_curve = 0.3634,
    preferred_supplier_ids = { "SUP-001203", "SUP-003607" },
    gen_id = 1202,
}
_VP["VP-001203"] = {
    label = "DeltaMob modelo 2303 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 174811,
    wear_curve = 0.3735,
    preferred_supplier_ids = { "SUP-001204", "SUP-003610" },
    gen_id = 1203,
}
_VP["VP-001204"] = {
    label = "OrionTruck modelo 2304 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 174948,
    wear_curve = 0.5659,
    preferred_supplier_ids = { "SUP-001205", "SUP-003613" },
    gen_id = 1204,
}
_VP["VP-001205"] = {
    label = "SigmaBike modelo 2305 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 175085,
    wear_curve = 0.1578,
    preferred_supplier_ids = { "SUP-001206", "SUP-003616" },
    gen_id = 1205,
}
_VP["VP-001206"] = {
    label = "AstraMotors modelo 2306 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 175222,
    wear_curve = 0.2598,
    preferred_supplier_ids = { "SUP-001207", "SUP-003619" },
    gen_id = 1206,
}
_VP["VP-001207"] = {
    label = "RioVeículos modelo 2307 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 175359,
    wear_curve = 0.3627,
    preferred_supplier_ids = { "SUP-001208", "SUP-003622" },
    gen_id = 1207,
}
_VP["VP-001208"] = {
    label = "NorteAuto modelo 2308 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 175496,
    wear_curve = 0.2248,
    preferred_supplier_ids = { "SUP-001209", "SUP-003625" },
    gen_id = 1208,
}
_VP["VP-001209"] = {
    label = "DeltaMob modelo 2309 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 175633,
    wear_curve = 0.4291,
    preferred_supplier_ids = { "SUP-001210", "SUP-003628" },
    gen_id = 1209,
}
_VP["VP-001210"] = {
    label = "OrionTruck modelo 2310 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 175770,
    wear_curve = 0.8463,
    preferred_supplier_ids = { "SUP-001211", "SUP-003631" },
    gen_id = 1210,
}
_VP["VP-001211"] = {
    label = "SigmaBike modelo 2311 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 175907,
    wear_curve = 0.3388,
    preferred_supplier_ids = { "SUP-001212", "SUP-003634" },
    gen_id = 1211,
}
_VP["VP-001212"] = {
    label = "AstraMotors modelo 2312 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 176044,
    wear_curve = 0.3425,
    preferred_supplier_ids = { "SUP-001213", "SUP-003637" },
    gen_id = 1212,
}
_VP["VP-001213"] = {
    label = "RioVeículos modelo 2313 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 176181,
    wear_curve = 0.4431,
    preferred_supplier_ids = { "SUP-001214", "SUP-003640" },
    gen_id = 1213,
}
_VP["VP-001214"] = {
    label = "NorteAuto modelo 2314 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 176318,
    wear_curve = 0.5814,
    preferred_supplier_ids = { "SUP-001215", "SUP-003643" },
    gen_id = 1214,
}
_VP["VP-001215"] = {
    label = "DeltaMob modelo 2315 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 176455,
    wear_curve = 0.2776,
    preferred_supplier_ids = { "SUP-001216", "SUP-003646" },
    gen_id = 1215,
}
_VP["VP-001216"] = {
    label = "OrionTruck modelo 2316 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 176592,
    wear_curve = 0.7851,
    preferred_supplier_ids = { "SUP-001217", "SUP-003649" },
    gen_id = 1216,
}
_VP["VP-001217"] = {
    label = "SigmaBike modelo 2317 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 176729,
    wear_curve = 0.6752,
    preferred_supplier_ids = { "SUP-001218", "SUP-003652" },
    gen_id = 1217,
}
_VP["VP-001218"] = {
    label = "AstraMotors modelo 2318 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 176866,
    wear_curve = 0.8933,
    preferred_supplier_ids = { "SUP-001219", "SUP-003655" },
    gen_id = 1218,
}
_VP["VP-001219"] = {
    label = "RioVeículos modelo 2319 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 177003,
    wear_curve = 0.6284,
    preferred_supplier_ids = { "SUP-001220", "SUP-003658" },
    gen_id = 1219,
}
_VP["VP-001220"] = {
    label = "NorteAuto modelo 2320 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 177140,
    wear_curve = 0.5212,
    preferred_supplier_ids = { "SUP-001221", "SUP-003661" },
    gen_id = 1220,
}
_VP["VP-001221"] = {
    label = "DeltaMob modelo 2321 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 177277,
    wear_curve = 0.2263,
    preferred_supplier_ids = { "SUP-001222", "SUP-003664" },
    gen_id = 1221,
}
_VP["VP-001222"] = {
    label = "OrionTruck modelo 2322 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 177414,
    wear_curve = 0.2198,
    preferred_supplier_ids = { "SUP-001223", "SUP-003667" },
    gen_id = 1222,
}
_VP["VP-001223"] = {
    label = "SigmaBike modelo 2323 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 177551,
    wear_curve = 0.7610,
    preferred_supplier_ids = { "SUP-001224", "SUP-003670" },
    gen_id = 1223,
}
_VP["VP-001224"] = {
    label = "AstraMotors modelo 2324 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 177688,
    wear_curve = 0.7832,
    preferred_supplier_ids = { "SUP-001225", "SUP-003673" },
    gen_id = 1224,
}
_VP["VP-001225"] = {
    label = "RioVeículos modelo 2325 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 177825,
    wear_curve = 0.6065,
    preferred_supplier_ids = { "SUP-001226", "SUP-003676" },
    gen_id = 1225,
}
_VP["VP-001226"] = {
    label = "NorteAuto modelo 2326 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 177962,
    wear_curve = 0.8767,
    preferred_supplier_ids = { "SUP-001227", "SUP-003679" },
    gen_id = 1226,
}
_VP["VP-001227"] = {
    label = "DeltaMob modelo 2327 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 178099,
    wear_curve = 0.5850,
    preferred_supplier_ids = { "SUP-001228", "SUP-003682" },
    gen_id = 1227,
}
_VP["VP-001228"] = {
    label = "OrionTruck modelo 2328 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 178236,
    wear_curve = 0.5866,
    preferred_supplier_ids = { "SUP-001229", "SUP-003685" },
    gen_id = 1228,
}
_VP["VP-001229"] = {
    label = "SigmaBike modelo 2329 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 178373,
    wear_curve = 0.6907,
    preferred_supplier_ids = { "SUP-001230", "SUP-003688" },
    gen_id = 1229,
}
_VP["VP-001230"] = {
    label = "AstraMotors modelo 2330 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 178510,
    wear_curve = 0.1901,
    preferred_supplier_ids = { "SUP-001231", "SUP-003691" },
    gen_id = 1230,
}
_VP["VP-001231"] = {
    label = "RioVeículos modelo 2331 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 178647,
    wear_curve = 0.3068,
    preferred_supplier_ids = { "SUP-001232", "SUP-003694" },
    gen_id = 1231,
}
_VP["VP-001232"] = {
    label = "NorteAuto modelo 2332 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 178784,
    wear_curve = 0.7706,
    preferred_supplier_ids = { "SUP-001233", "SUP-003697" },
    gen_id = 1232,
}
_VP["VP-001233"] = {
    label = "DeltaMob modelo 2333 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 178921,
    wear_curve = 0.8685,
    preferred_supplier_ids = { "SUP-001234", "SUP-003700" },
    gen_id = 1233,
}
_VP["VP-001234"] = {
    label = "OrionTruck modelo 2334 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 179058,
    wear_curve = 0.4357,
    preferred_supplier_ids = { "SUP-001235", "SUP-003703" },
    gen_id = 1234,
}
_VP["VP-001235"] = {
    label = "SigmaBike modelo 2335 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 179195,
    wear_curve = 0.3035,
    preferred_supplier_ids = { "SUP-001236", "SUP-003706" },
    gen_id = 1235,
}
_VP["VP-001236"] = {
    label = "AstraMotors modelo 2336 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 179332,
    wear_curve = 0.6338,
    preferred_supplier_ids = { "SUP-001237", "SUP-003709" },
    gen_id = 1236,
}
_VP["VP-001237"] = {
    label = "RioVeículos modelo 2337 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 179469,
    wear_curve = 0.6246,
    preferred_supplier_ids = { "SUP-001238", "SUP-003712" },
    gen_id = 1237,
}
_VP["VP-001238"] = {
    label = "NorteAuto modelo 2338 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 179606,
    wear_curve = 0.9412,
    preferred_supplier_ids = { "SUP-001239", "SUP-003715" },
    gen_id = 1238,
}
_VP["VP-001239"] = {
    label = "DeltaMob modelo 2339 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 179743,
    wear_curve = 0.7553,
    preferred_supplier_ids = { "SUP-001240", "SUP-003718" },
    gen_id = 1239,
}
_VP["VP-001240"] = {
    label = "OrionTruck modelo 2340 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 179880,
    wear_curve = 0.3564,
    preferred_supplier_ids = { "SUP-001241", "SUP-003721" },
    gen_id = 1240,
}
_VP["VP-001241"] = {
    label = "SigmaBike modelo 2341 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 180017,
    wear_curve = 0.3464,
    preferred_supplier_ids = { "SUP-001242", "SUP-003724" },
    gen_id = 1241,
}
_VP["VP-001242"] = {
    label = "AstraMotors modelo 2342 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 180154,
    wear_curve = 0.5236,
    preferred_supplier_ids = { "SUP-001243", "SUP-003727" },
    gen_id = 1242,
}
_VP["VP-001243"] = {
    label = "RioVeículos modelo 2343 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 180291,
    wear_curve = 0.8910,
    preferred_supplier_ids = { "SUP-001244", "SUP-003730" },
    gen_id = 1243,
}
_VP["VP-001244"] = {
    label = "NorteAuto modelo 2344 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 180428,
    wear_curve = 0.5067,
    preferred_supplier_ids = { "SUP-001245", "SUP-003733" },
    gen_id = 1244,
}
_VP["VP-001245"] = {
    label = "DeltaMob modelo 2345 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 180565,
    wear_curve = 0.5197,
    preferred_supplier_ids = { "SUP-001246", "SUP-003736" },
    gen_id = 1245,
}
_VP["VP-001246"] = {
    label = "OrionTruck modelo 2346 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 180702,
    wear_curve = 0.3917,
    preferred_supplier_ids = { "SUP-001247", "SUP-003739" },
    gen_id = 1246,
}
_VP["VP-001247"] = {
    label = "SigmaBike modelo 2347 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 180839,
    wear_curve = 0.4609,
    preferred_supplier_ids = { "SUP-001248", "SUP-003742" },
    gen_id = 1247,
}
_VP["VP-001248"] = {
    label = "AstraMotors modelo 2348 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 180976,
    wear_curve = 0.3472,
    preferred_supplier_ids = { "SUP-001249", "SUP-003745" },
    gen_id = 1248,
}
_VP["VP-001249"] = {
    label = "RioVeículos modelo 2349 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 181113,
    wear_curve = 0.1844,
    preferred_supplier_ids = { "SUP-001250", "SUP-003748" },
    gen_id = 1249,
}
_VP["VP-001250"] = {
    label = "NorteAuto modelo 2350 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 181250,
    wear_curve = 0.4082,
    preferred_supplier_ids = { "SUP-001251", "SUP-003751" },
    gen_id = 1250,
}
_VP["VP-001251"] = {
    label = "DeltaMob modelo 2351 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 181387,
    wear_curve = 0.3187,
    preferred_supplier_ids = { "SUP-001252", "SUP-003754" },
    gen_id = 1251,
}
_VP["VP-001252"] = {
    label = "OrionTruck modelo 2352 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 181524,
    wear_curve = 0.2650,
    preferred_supplier_ids = { "SUP-001253", "SUP-003757" },
    gen_id = 1252,
}
_VP["VP-001253"] = {
    label = "SigmaBike modelo 2353 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 181661,
    wear_curve = 0.9861,
    preferred_supplier_ids = { "SUP-001254", "SUP-003760" },
    gen_id = 1253,
}
_VP["VP-001254"] = {
    label = "AstraMotors modelo 2354 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 181798,
    wear_curve = 0.5198,
    preferred_supplier_ids = { "SUP-001255", "SUP-003763" },
    gen_id = 1254,
}
_VP["VP-001255"] = {
    label = "RioVeículos modelo 2355 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 181935,
    wear_curve = 0.9015,
    preferred_supplier_ids = { "SUP-001256", "SUP-003766" },
    gen_id = 1255,
}
_VP["VP-001256"] = {
    label = "NorteAuto modelo 2356 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 182072,
    wear_curve = 0.2651,
    preferred_supplier_ids = { "SUP-001257", "SUP-003769" },
    gen_id = 1256,
}
_VP["VP-001257"] = {
    label = "DeltaMob modelo 2357 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 182209,
    wear_curve = 0.4205,
    preferred_supplier_ids = { "SUP-001258", "SUP-003772" },
    gen_id = 1257,
}
_VP["VP-001258"] = {
    label = "OrionTruck modelo 2358 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 182346,
    wear_curve = 0.6742,
    preferred_supplier_ids = { "SUP-001259", "SUP-003775" },
    gen_id = 1258,
}
_VP["VP-001259"] = {
    label = "SigmaBike modelo 2359 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 182483,
    wear_curve = 0.1634,
    preferred_supplier_ids = { "SUP-001260", "SUP-003778" },
    gen_id = 1259,
}
_VP["VP-001260"] = {
    label = "AstraMotors modelo 2360 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 182620,
    wear_curve = 0.2780,
    preferred_supplier_ids = { "SUP-001261", "SUP-003781" },
    gen_id = 1260,
}
_VP["VP-001261"] = {
    label = "RioVeículos modelo 2361 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 182757,
    wear_curve = 0.5818,
    preferred_supplier_ids = { "SUP-001262", "SUP-003784" },
    gen_id = 1261,
}
_VP["VP-001262"] = {
    label = "NorteAuto modelo 2362 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 182894,
    wear_curve = 0.4048,
    preferred_supplier_ids = { "SUP-001263", "SUP-003787" },
    gen_id = 1262,
}
_VP["VP-001263"] = {
    label = "DeltaMob modelo 2363 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 183031,
    wear_curve = 0.3780,
    preferred_supplier_ids = { "SUP-001264", "SUP-003790" },
    gen_id = 1263,
}
_VP["VP-001264"] = {
    label = "OrionTruck modelo 2364 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 183168,
    wear_curve = 0.5937,
    preferred_supplier_ids = { "SUP-001265", "SUP-003793" },
    gen_id = 1264,
}
_VP["VP-001265"] = {
    label = "SigmaBike modelo 2365 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 183305,
    wear_curve = 0.2866,
    preferred_supplier_ids = { "SUP-001266", "SUP-003796" },
    gen_id = 1265,
}
_VP["VP-001266"] = {
    label = "AstraMotors modelo 2366 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 183442,
    wear_curve = 0.3303,
    preferred_supplier_ids = { "SUP-001267", "SUP-003799" },
    gen_id = 1266,
}
_VP["VP-001267"] = {
    label = "RioVeículos modelo 2367 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 183579,
    wear_curve = 0.2899,
    preferred_supplier_ids = { "SUP-001268", "SUP-003802" },
    gen_id = 1267,
}
_VP["VP-001268"] = {
    label = "NorteAuto modelo 2368 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 183716,
    wear_curve = 0.9484,
    preferred_supplier_ids = { "SUP-001269", "SUP-003805" },
    gen_id = 1268,
}
_VP["VP-001269"] = {
    label = "DeltaMob modelo 2369 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 183853,
    wear_curve = 0.7092,
    preferred_supplier_ids = { "SUP-001270", "SUP-003808" },
    gen_id = 1269,
}
_VP["VP-001270"] = {
    label = "OrionTruck modelo 2370 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 183990,
    wear_curve = 0.3730,
    preferred_supplier_ids = { "SUP-001271", "SUP-003811" },
    gen_id = 1270,
}
_VP["VP-001271"] = {
    label = "SigmaBike modelo 2371 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 184127,
    wear_curve = 0.3050,
    preferred_supplier_ids = { "SUP-001272", "SUP-003814" },
    gen_id = 1271,
}
_VP["VP-001272"] = {
    label = "AstraMotors modelo 2372 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 184264,
    wear_curve = 0.4028,
    preferred_supplier_ids = { "SUP-001273", "SUP-003817" },
    gen_id = 1272,
}
_VP["VP-001273"] = {
    label = "RioVeículos modelo 2373 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 184401,
    wear_curve = 0.4755,
    preferred_supplier_ids = { "SUP-001274", "SUP-003820" },
    gen_id = 1273,
}
_VP["VP-001274"] = {
    label = "NorteAuto modelo 2374 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 184538,
    wear_curve = 0.7684,
    preferred_supplier_ids = { "SUP-001275", "SUP-003823" },
    gen_id = 1274,
}
_VP["VP-001275"] = {
    label = "DeltaMob modelo 2375 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 184675,
    wear_curve = 0.1749,
    preferred_supplier_ids = { "SUP-001276", "SUP-003826" },
    gen_id = 1275,
}
_VP["VP-001276"] = {
    label = "OrionTruck modelo 2376 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 184812,
    wear_curve = 0.3621,
    preferred_supplier_ids = { "SUP-001277", "SUP-003829" },
    gen_id = 1276,
}
_VP["VP-001277"] = {
    label = "SigmaBike modelo 2377 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 184949,
    wear_curve = 0.5762,
    preferred_supplier_ids = { "SUP-001278", "SUP-003832" },
    gen_id = 1277,
}
_VP["VP-001278"] = {
    label = "AstraMotors modelo 2378 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 185086,
    wear_curve = 0.2458,
    preferred_supplier_ids = { "SUP-001279", "SUP-003835" },
    gen_id = 1278,
}
_VP["VP-001279"] = {
    label = "RioVeículos modelo 2379 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 185223,
    wear_curve = 0.2913,
    preferred_supplier_ids = { "SUP-001280", "SUP-003838" },
    gen_id = 1279,
}
_VP["VP-001280"] = {
    label = "NorteAuto modelo 2380 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 185360,
    wear_curve = 0.5507,
    preferred_supplier_ids = { "SUP-001281", "SUP-003841" },
    gen_id = 1280,
}
_VP["VP-001281"] = {
    label = "DeltaMob modelo 2381 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 185497,
    wear_curve = 0.5717,
    preferred_supplier_ids = { "SUP-001282", "SUP-003844" },
    gen_id = 1281,
}
_VP["VP-001282"] = {
    label = "OrionTruck modelo 2382 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 185634,
    wear_curve = 0.4261,
    preferred_supplier_ids = { "SUP-001283", "SUP-003847" },
    gen_id = 1282,
}
_VP["VP-001283"] = {
    label = "SigmaBike modelo 2383 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 185771,
    wear_curve = 0.9196,
    preferred_supplier_ids = { "SUP-001284", "SUP-003850" },
    gen_id = 1283,
}
_VP["VP-001284"] = {
    label = "AstraMotors modelo 2384 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 185908,
    wear_curve = 0.9182,
    preferred_supplier_ids = { "SUP-001285", "SUP-003853" },
    gen_id = 1284,
}
_VP["VP-001285"] = {
    label = "RioVeículos modelo 2385 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 186045,
    wear_curve = 0.9232,
    preferred_supplier_ids = { "SUP-001286", "SUP-003856" },
    gen_id = 1285,
}
_VP["VP-001286"] = {
    label = "NorteAuto modelo 2386 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 186182,
    wear_curve = 0.1921,
    preferred_supplier_ids = { "SUP-001287", "SUP-003859" },
    gen_id = 1286,
}
_VP["VP-001287"] = {
    label = "DeltaMob modelo 2387 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 186319,
    wear_curve = 0.7119,
    preferred_supplier_ids = { "SUP-001288", "SUP-003862" },
    gen_id = 1287,
}
_VP["VP-001288"] = {
    label = "OrionTruck modelo 2388 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 186456,
    wear_curve = 0.5645,
    preferred_supplier_ids = { "SUP-001289", "SUP-003865" },
    gen_id = 1288,
}
_VP["VP-001289"] = {
    label = "SigmaBike modelo 2389 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 186593,
    wear_curve = 0.9993,
    preferred_supplier_ids = { "SUP-001290", "SUP-003868" },
    gen_id = 1289,
}
_VP["VP-001290"] = {
    label = "AstraMotors modelo 2390 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 186730,
    wear_curve = 0.5527,
    preferred_supplier_ids = { "SUP-001291", "SUP-003871" },
    gen_id = 1290,
}
_VP["VP-001291"] = {
    label = "RioVeículos modelo 2391 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 186867,
    wear_curve = 0.3052,
    preferred_supplier_ids = { "SUP-001292", "SUP-003874" },
    gen_id = 1291,
}
_VP["VP-001292"] = {
    label = "NorteAuto modelo 2392 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 187004,
    wear_curve = 0.2852,
    preferred_supplier_ids = { "SUP-001293", "SUP-003877" },
    gen_id = 1292,
}
_VP["VP-001293"] = {
    label = "DeltaMob modelo 2393 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 187141,
    wear_curve = 0.3659,
    preferred_supplier_ids = { "SUP-001294", "SUP-003880" },
    gen_id = 1293,
}
_VP["VP-001294"] = {
    label = "OrionTruck modelo 2394 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 187278,
    wear_curve = 0.7820,
    preferred_supplier_ids = { "SUP-001295", "SUP-003883" },
    gen_id = 1294,
}
_VP["VP-001295"] = {
    label = "SigmaBike modelo 2395 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 187415,
    wear_curve = 0.8698,
    preferred_supplier_ids = { "SUP-001296", "SUP-003886" },
    gen_id = 1295,
}
_VP["VP-001296"] = {
    label = "AstraMotors modelo 2396 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 187552,
    wear_curve = 0.2493,
    preferred_supplier_ids = { "SUP-001297", "SUP-003889" },
    gen_id = 1296,
}
_VP["VP-001297"] = {
    label = "RioVeículos modelo 2397 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 187689,
    wear_curve = 0.9848,
    preferred_supplier_ids = { "SUP-001298", "SUP-003892" },
    gen_id = 1297,
}
_VP["VP-001298"] = {
    label = "NorteAuto modelo 2398 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 187826,
    wear_curve = 0.8277,
    preferred_supplier_ids = { "SUP-001299", "SUP-003895" },
    gen_id = 1298,
}
_VP["VP-001299"] = {
    label = "DeltaMob modelo 2399 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 187963,
    wear_curve = 0.4373,
    preferred_supplier_ids = { "SUP-001300", "SUP-003898" },
    gen_id = 1299,
}
_VP["VP-001300"] = {
    label = "OrionTruck modelo 2400 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 188100,
    wear_curve = 0.6870,
    preferred_supplier_ids = { "SUP-001301", "SUP-003901" },
    gen_id = 1300,
}
_VP["VP-001301"] = {
    label = "SigmaBike modelo 2401 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 188237,
    wear_curve = 0.5036,
    preferred_supplier_ids = { "SUP-001302", "SUP-003904" },
    gen_id = 1301,
}
_VP["VP-001302"] = {
    label = "AstraMotors modelo 2402 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 188374,
    wear_curve = 0.5459,
    preferred_supplier_ids = { "SUP-001303", "SUP-003907" },
    gen_id = 1302,
}
_VP["VP-001303"] = {
    label = "RioVeículos modelo 2403 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 188511,
    wear_curve = 0.3993,
    preferred_supplier_ids = { "SUP-001304", "SUP-003910" },
    gen_id = 1303,
}
_VP["VP-001304"] = {
    label = "NorteAuto modelo 2404 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 188648,
    wear_curve = 0.9244,
    preferred_supplier_ids = { "SUP-001305", "SUP-003913" },
    gen_id = 1304,
}
_VP["VP-001305"] = {
    label = "DeltaMob modelo 2405 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 188785,
    wear_curve = 0.1860,
    preferred_supplier_ids = { "SUP-001306", "SUP-003916" },
    gen_id = 1305,
}
_VP["VP-001306"] = {
    label = "OrionTruck modelo 2406 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 188922,
    wear_curve = 0.9830,
    preferred_supplier_ids = { "SUP-001307", "SUP-003919" },
    gen_id = 1306,
}
_VP["VP-001307"] = {
    label = "SigmaBike modelo 2407 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 189059,
    wear_curve = 0.7816,
    preferred_supplier_ids = { "SUP-001308", "SUP-003922" },
    gen_id = 1307,
}
_VP["VP-001308"] = {
    label = "AstraMotors modelo 2408 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 189196,
    wear_curve = 0.8160,
    preferred_supplier_ids = { "SUP-001309", "SUP-003925" },
    gen_id = 1308,
}
_VP["VP-001309"] = {
    label = "RioVeículos modelo 2409 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 189333,
    wear_curve = 0.2429,
    preferred_supplier_ids = { "SUP-001310", "SUP-003928" },
    gen_id = 1309,
}
_VP["VP-001310"] = {
    label = "NorteAuto modelo 2410 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 189470,
    wear_curve = 0.3846,
    preferred_supplier_ids = { "SUP-001311", "SUP-003931" },
    gen_id = 1310,
}
_VP["VP-001311"] = {
    label = "DeltaMob modelo 2411 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 189607,
    wear_curve = 0.5089,
    preferred_supplier_ids = { "SUP-001312", "SUP-003934" },
    gen_id = 1311,
}
_VP["VP-001312"] = {
    label = "OrionTruck modelo 2412 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 189744,
    wear_curve = 0.3389,
    preferred_supplier_ids = { "SUP-001313", "SUP-003937" },
    gen_id = 1312,
}
_VP["VP-001313"] = {
    label = "SigmaBike modelo 2413 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 189881,
    wear_curve = 0.5857,
    preferred_supplier_ids = { "SUP-001314", "SUP-003940" },
    gen_id = 1313,
}
_VP["VP-001314"] = {
    label = "AstraMotors modelo 2414 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 190018,
    wear_curve = 0.7779,
    preferred_supplier_ids = { "SUP-001315", "SUP-003943" },
    gen_id = 1314,
}
_VP["VP-001315"] = {
    label = "RioVeículos modelo 2415 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 190155,
    wear_curve = 0.3904,
    preferred_supplier_ids = { "SUP-001316", "SUP-003946" },
    gen_id = 1315,
}
_VP["VP-001316"] = {
    label = "NorteAuto modelo 2416 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 190292,
    wear_curve = 0.9743,
    preferred_supplier_ids = { "SUP-001317", "SUP-003949" },
    gen_id = 1316,
}
_VP["VP-001317"] = {
    label = "DeltaMob modelo 2417 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 190429,
    wear_curve = 0.5877,
    preferred_supplier_ids = { "SUP-001318", "SUP-003952" },
    gen_id = 1317,
}
_VP["VP-001318"] = {
    label = "OrionTruck modelo 2418 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 190566,
    wear_curve = 0.3838,
    preferred_supplier_ids = { "SUP-001319", "SUP-003955" },
    gen_id = 1318,
}
_VP["VP-001319"] = {
    label = "SigmaBike modelo 2419 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 190703,
    wear_curve = 0.8160,
    preferred_supplier_ids = { "SUP-001320", "SUP-003958" },
    gen_id = 1319,
}
_VP["VP-001320"] = {
    label = "AstraMotors modelo 2420 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 190840,
    wear_curve = 0.8142,
    preferred_supplier_ids = { "SUP-001321", "SUP-003961" },
    gen_id = 1320,
}
_VP["VP-001321"] = {
    label = "RioVeículos modelo 2421 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 190977,
    wear_curve = 0.1520,
    preferred_supplier_ids = { "SUP-001322", "SUP-003964" },
    gen_id = 1321,
}
_VP["VP-001322"] = {
    label = "NorteAuto modelo 2422 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 191114,
    wear_curve = 0.8776,
    preferred_supplier_ids = { "SUP-001323", "SUP-003967" },
    gen_id = 1322,
}
_VP["VP-001323"] = {
    label = "DeltaMob modelo 2423 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 191251,
    wear_curve = 0.8193,
    preferred_supplier_ids = { "SUP-001324", "SUP-003970" },
    gen_id = 1323,
}
_VP["VP-001324"] = {
    label = "OrionTruck modelo 2424 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 191388,
    wear_curve = 0.1940,
    preferred_supplier_ids = { "SUP-001325", "SUP-003973" },
    gen_id = 1324,
}
_VP["VP-001325"] = {
    label = "SigmaBike modelo 2425 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 191525,
    wear_curve = 0.3440,
    preferred_supplier_ids = { "SUP-001326", "SUP-003976" },
    gen_id = 1325,
}
_VP["VP-001326"] = {
    label = "AstraMotors modelo 2426 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 191662,
    wear_curve = 0.9317,
    preferred_supplier_ids = { "SUP-001327", "SUP-003979" },
    gen_id = 1326,
}
_VP["VP-001327"] = {
    label = "RioVeículos modelo 2427 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 191799,
    wear_curve = 0.2711,
    preferred_supplier_ids = { "SUP-001328", "SUP-003982" },
    gen_id = 1327,
}
_VP["VP-001328"] = {
    label = "NorteAuto modelo 2428 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 191936,
    wear_curve = 0.8655,
    preferred_supplier_ids = { "SUP-001329", "SUP-003985" },
    gen_id = 1328,
}
_VP["VP-001329"] = {
    label = "DeltaMob modelo 2429 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 192073,
    wear_curve = 0.3637,
    preferred_supplier_ids = { "SUP-001330", "SUP-003988" },
    gen_id = 1329,
}
_VP["VP-001330"] = {
    label = "OrionTruck modelo 2430 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 192210,
    wear_curve = 0.3840,
    preferred_supplier_ids = { "SUP-001331", "SUP-003991" },
    gen_id = 1330,
}
_VP["VP-001331"] = {
    label = "SigmaBike modelo 2431 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 192347,
    wear_curve = 0.3848,
    preferred_supplier_ids = { "SUP-001332", "SUP-003994" },
    gen_id = 1331,
}
_VP["VP-001332"] = {
    label = "AstraMotors modelo 2432 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 192484,
    wear_curve = 0.6343,
    preferred_supplier_ids = { "SUP-001333", "SUP-003997" },
    gen_id = 1332,
}
_VP["VP-001333"] = {
    label = "RioVeículos modelo 2433 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 192621,
    wear_curve = 0.5908,
    preferred_supplier_ids = { "SUP-001334", "SUP-004000" },
    gen_id = 1333,
}
_VP["VP-001334"] = {
    label = "NorteAuto modelo 2434 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 192758,
    wear_curve = 0.4888,
    preferred_supplier_ids = { "SUP-001335", "SUP-004003" },
    gen_id = 1334,
}
_VP["VP-001335"] = {
    label = "DeltaMob modelo 2435 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 192895,
    wear_curve = 0.4734,
    preferred_supplier_ids = { "SUP-001336", "SUP-004006" },
    gen_id = 1335,
}
_VP["VP-001336"] = {
    label = "OrionTruck modelo 2436 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 193032,
    wear_curve = 0.9012,
    preferred_supplier_ids = { "SUP-001337", "SUP-004009" },
    gen_id = 1336,
}
_VP["VP-001337"] = {
    label = "SigmaBike modelo 2437 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 193169,
    wear_curve = 0.4014,
    preferred_supplier_ids = { "SUP-001338", "SUP-004012" },
    gen_id = 1337,
}
_VP["VP-001338"] = {
    label = "AstraMotors modelo 2438 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 193306,
    wear_curve = 0.3707,
    preferred_supplier_ids = { "SUP-001339", "SUP-004015" },
    gen_id = 1338,
}
_VP["VP-001339"] = {
    label = "RioVeículos modelo 2439 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 193443,
    wear_curve = 0.1625,
    preferred_supplier_ids = { "SUP-001340", "SUP-004018" },
    gen_id = 1339,
}
_VP["VP-001340"] = {
    label = "NorteAuto modelo 2440 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 193580,
    wear_curve = 0.5577,
    preferred_supplier_ids = { "SUP-001341", "SUP-004021" },
    gen_id = 1340,
}
_VP["VP-001341"] = {
    label = "DeltaMob modelo 2441 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 193717,
    wear_curve = 0.9165,
    preferred_supplier_ids = { "SUP-001342", "SUP-004024" },
    gen_id = 1341,
}
_VP["VP-001342"] = {
    label = "OrionTruck modelo 2442 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 193854,
    wear_curve = 0.2120,
    preferred_supplier_ids = { "SUP-001343", "SUP-004027" },
    gen_id = 1342,
}
_VP["VP-001343"] = {
    label = "SigmaBike modelo 2443 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 193991,
    wear_curve = 0.3265,
    preferred_supplier_ids = { "SUP-001344", "SUP-004030" },
    gen_id = 1343,
}
_VP["VP-001344"] = {
    label = "AstraMotors modelo 2444 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 194128,
    wear_curve = 0.8998,
    preferred_supplier_ids = { "SUP-001345", "SUP-004033" },
    gen_id = 1344,
}
_VP["VP-001345"] = {
    label = "RioVeículos modelo 2445 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 194265,
    wear_curve = 0.9541,
    preferred_supplier_ids = { "SUP-001346", "SUP-004036" },
    gen_id = 1345,
}
_VP["VP-001346"] = {
    label = "NorteAuto modelo 2446 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 194402,
    wear_curve = 0.6702,
    preferred_supplier_ids = { "SUP-001347", "SUP-004039" },
    gen_id = 1346,
}
_VP["VP-001347"] = {
    label = "DeltaMob modelo 2447 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 194539,
    wear_curve = 0.4756,
    preferred_supplier_ids = { "SUP-001348", "SUP-004042" },
    gen_id = 1347,
}
_VP["VP-001348"] = {
    label = "OrionTruck modelo 2448 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 194676,
    wear_curve = 0.5341,
    preferred_supplier_ids = { "SUP-001349", "SUP-004045" },
    gen_id = 1348,
}
_VP["VP-001349"] = {
    label = "SigmaBike modelo 2449 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 194813,
    wear_curve = 0.1711,
    preferred_supplier_ids = { "SUP-001350", "SUP-004048" },
    gen_id = 1349,
}
_VP["VP-001350"] = {
    label = "AstraMotors modelo 2450 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 194950,
    wear_curve = 0.9807,
    preferred_supplier_ids = { "SUP-001351", "SUP-004051" },
    gen_id = 1350,
}
_VP["VP-001351"] = {
    label = "RioVeículos modelo 2451 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 195087,
    wear_curve = 0.7355,
    preferred_supplier_ids = { "SUP-001352", "SUP-004054" },
    gen_id = 1351,
}
_VP["VP-001352"] = {
    label = "NorteAuto modelo 2452 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 195224,
    wear_curve = 0.2663,
    preferred_supplier_ids = { "SUP-001353", "SUP-004057" },
    gen_id = 1352,
}
_VP["VP-001353"] = {
    label = "DeltaMob modelo 2453 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 195361,
    wear_curve = 0.6417,
    preferred_supplier_ids = { "SUP-001354", "SUP-004060" },
    gen_id = 1353,
}
_VP["VP-001354"] = {
    label = "OrionTruck modelo 2454 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 195498,
    wear_curve = 0.9650,
    preferred_supplier_ids = { "SUP-001355", "SUP-004063" },
    gen_id = 1354,
}
_VP["VP-001355"] = {
    label = "SigmaBike modelo 2455 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 195635,
    wear_curve = 0.6246,
    preferred_supplier_ids = { "SUP-001356", "SUP-004066" },
    gen_id = 1355,
}
_VP["VP-001356"] = {
    label = "AstraMotors modelo 2456 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 195772,
    wear_curve = 0.7725,
    preferred_supplier_ids = { "SUP-001357", "SUP-004069" },
    gen_id = 1356,
}
_VP["VP-001357"] = {
    label = "RioVeículos modelo 2457 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 195909,
    wear_curve = 0.8836,
    preferred_supplier_ids = { "SUP-001358", "SUP-004072" },
    gen_id = 1357,
}
_VP["VP-001358"] = {
    label = "NorteAuto modelo 2458 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 196046,
    wear_curve = 0.4771,
    preferred_supplier_ids = { "SUP-001359", "SUP-004075" },
    gen_id = 1358,
}
_VP["VP-001359"] = {
    label = "DeltaMob modelo 2459 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 196183,
    wear_curve = 0.6435,
    preferred_supplier_ids = { "SUP-001360", "SUP-004078" },
    gen_id = 1359,
}
_VP["VP-001360"] = {
    label = "OrionTruck modelo 2460 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 196320,
    wear_curve = 0.7152,
    preferred_supplier_ids = { "SUP-001361", "SUP-004081" },
    gen_id = 1360,
}
_VP["VP-001361"] = {
    label = "SigmaBike modelo 2461 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 196457,
    wear_curve = 0.3530,
    preferred_supplier_ids = { "SUP-001362", "SUP-004084" },
    gen_id = 1361,
}
_VP["VP-001362"] = {
    label = "AstraMotors modelo 2462 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 196594,
    wear_curve = 0.2312,
    preferred_supplier_ids = { "SUP-001363", "SUP-004087" },
    gen_id = 1362,
}
_VP["VP-001363"] = {
    label = "RioVeículos modelo 2463 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 196731,
    wear_curve = 0.1573,
    preferred_supplier_ids = { "SUP-001364", "SUP-004090" },
    gen_id = 1363,
}
_VP["VP-001364"] = {
    label = "NorteAuto modelo 2464 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 196868,
    wear_curve = 0.6318,
    preferred_supplier_ids = { "SUP-001365", "SUP-004093" },
    gen_id = 1364,
}
_VP["VP-001365"] = {
    label = "DeltaMob modelo 2465 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 197005,
    wear_curve = 0.3456,
    preferred_supplier_ids = { "SUP-001366", "SUP-004096" },
    gen_id = 1365,
}
_VP["VP-001366"] = {
    label = "OrionTruck modelo 2466 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 197142,
    wear_curve = 0.5190,
    preferred_supplier_ids = { "SUP-001367", "SUP-004099" },
    gen_id = 1366,
}
_VP["VP-001367"] = {
    label = "SigmaBike modelo 2467 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 197279,
    wear_curve = 0.5602,
    preferred_supplier_ids = { "SUP-001368", "SUP-004102" },
    gen_id = 1367,
}
_VP["VP-001368"] = {
    label = "AstraMotors modelo 2468 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 197416,
    wear_curve = 0.2825,
    preferred_supplier_ids = { "SUP-001369", "SUP-004105" },
    gen_id = 1368,
}
_VP["VP-001369"] = {
    label = "RioVeículos modelo 2469 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 197553,
    wear_curve = 0.1993,
    preferred_supplier_ids = { "SUP-001370", "SUP-004108" },
    gen_id = 1369,
}
_VP["VP-001370"] = {
    label = "NorteAuto modelo 2470 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 197690,
    wear_curve = 0.4855,
    preferred_supplier_ids = { "SUP-001371", "SUP-004111" },
    gen_id = 1370,
}
_VP["VP-001371"] = {
    label = "DeltaMob modelo 2471 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 197827,
    wear_curve = 0.8291,
    preferred_supplier_ids = { "SUP-001372", "SUP-004114" },
    gen_id = 1371,
}
_VP["VP-001372"] = {
    label = "OrionTruck modelo 2472 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 197964,
    wear_curve = 0.3088,
    preferred_supplier_ids = { "SUP-001373", "SUP-004117" },
    gen_id = 1372,
}
_VP["VP-001373"] = {
    label = "SigmaBike modelo 2473 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 198101,
    wear_curve = 0.6602,
    preferred_supplier_ids = { "SUP-001374", "SUP-004120" },
    gen_id = 1373,
}
_VP["VP-001374"] = {
    label = "AstraMotors modelo 2474 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 198238,
    wear_curve = 0.8455,
    preferred_supplier_ids = { "SUP-001375", "SUP-004123" },
    gen_id = 1374,
}
_VP["VP-001375"] = {
    label = "RioVeículos modelo 2475 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 198375,
    wear_curve = 0.8295,
    preferred_supplier_ids = { "SUP-001376", "SUP-004126" },
    gen_id = 1375,
}
_VP["VP-001376"] = {
    label = "NorteAuto modelo 2476 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 198512,
    wear_curve = 0.5659,
    preferred_supplier_ids = { "SUP-001377", "SUP-004129" },
    gen_id = 1376,
}
_VP["VP-001377"] = {
    label = "DeltaMob modelo 2477 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 198649,
    wear_curve = 0.9836,
    preferred_supplier_ids = { "SUP-001378", "SUP-004132" },
    gen_id = 1377,
}
_VP["VP-001378"] = {
    label = "OrionTruck modelo 2478 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 198786,
    wear_curve = 0.3852,
    preferred_supplier_ids = { "SUP-001379", "SUP-004135" },
    gen_id = 1378,
}
_VP["VP-001379"] = {
    label = "SigmaBike modelo 2479 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 198923,
    wear_curve = 0.7548,
    preferred_supplier_ids = { "SUP-001380", "SUP-004138" },
    gen_id = 1379,
}
_VP["VP-001380"] = {
    label = "AstraMotors modelo 2480 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 199060,
    wear_curve = 0.4549,
    preferred_supplier_ids = { "SUP-001381", "SUP-004141" },
    gen_id = 1380,
}
_VP["VP-001381"] = {
    label = "RioVeículos modelo 2481 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 199197,
    wear_curve = 0.3561,
    preferred_supplier_ids = { "SUP-001382", "SUP-004144" },
    gen_id = 1381,
}
_VP["VP-001382"] = {
    label = "NorteAuto modelo 2482 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 199334,
    wear_curve = 0.6064,
    preferred_supplier_ids = { "SUP-001383", "SUP-004147" },
    gen_id = 1382,
}
_VP["VP-001383"] = {
    label = "DeltaMob modelo 2483 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 199471,
    wear_curve = 0.5895,
    preferred_supplier_ids = { "SUP-001384", "SUP-004150" },
    gen_id = 1383,
}
_VP["VP-001384"] = {
    label = "OrionTruck modelo 2484 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 199608,
    wear_curve = 0.8426,
    preferred_supplier_ids = { "SUP-001385", "SUP-004153" },
    gen_id = 1384,
}
_VP["VP-001385"] = {
    label = "SigmaBike modelo 2485 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 199745,
    wear_curve = 0.8353,
    preferred_supplier_ids = { "SUP-001386", "SUP-004156" },
    gen_id = 1385,
}
_VP["VP-001386"] = {
    label = "AstraMotors modelo 2486 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 199882,
    wear_curve = 0.7818,
    preferred_supplier_ids = { "SUP-001387", "SUP-004159" },
    gen_id = 1386,
}
_VP["VP-001387"] = {
    label = "RioVeículos modelo 2487 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 200019,
    wear_curve = 0.3002,
    preferred_supplier_ids = { "SUP-001388", "SUP-004162" },
    gen_id = 1387,
}
_VP["VP-001388"] = {
    label = "NorteAuto modelo 2488 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 200156,
    wear_curve = 0.5705,
    preferred_supplier_ids = { "SUP-001389", "SUP-004165" },
    gen_id = 1388,
}
_VP["VP-001389"] = {
    label = "DeltaMob modelo 2489 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 200293,
    wear_curve = 0.7184,
    preferred_supplier_ids = { "SUP-001390", "SUP-004168" },
    gen_id = 1389,
}
_VP["VP-001390"] = {
    label = "OrionTruck modelo 2490 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 200430,
    wear_curve = 0.7548,
    preferred_supplier_ids = { "SUP-001391", "SUP-004171" },
    gen_id = 1390,
}
_VP["VP-001391"] = {
    label = "SigmaBike modelo 2491 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 200567,
    wear_curve = 0.8214,
    preferred_supplier_ids = { "SUP-001392", "SUP-004174" },
    gen_id = 1391,
}
_VP["VP-001392"] = {
    label = "AstraMotors modelo 2492 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 200704,
    wear_curve = 0.3154,
    preferred_supplier_ids = { "SUP-001393", "SUP-004177" },
    gen_id = 1392,
}
_VP["VP-001393"] = {
    label = "RioVeículos modelo 2493 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 200841,
    wear_curve = 0.6112,
    preferred_supplier_ids = { "SUP-001394", "SUP-004180" },
    gen_id = 1393,
}
_VP["VP-001394"] = {
    label = "NorteAuto modelo 2494 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 200978,
    wear_curve = 0.9770,
    preferred_supplier_ids = { "SUP-001395", "SUP-004183" },
    gen_id = 1394,
}
_VP["VP-001395"] = {
    label = "DeltaMob modelo 2495 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 201115,
    wear_curve = 0.1643,
    preferred_supplier_ids = { "SUP-001396", "SUP-004186" },
    gen_id = 1395,
}
_VP["VP-001396"] = {
    label = "OrionTruck modelo 2496 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 201252,
    wear_curve = 0.4280,
    preferred_supplier_ids = { "SUP-001397", "SUP-004189" },
    gen_id = 1396,
}
_VP["VP-001397"] = {
    label = "SigmaBike modelo 2497 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 201389,
    wear_curve = 0.4841,
    preferred_supplier_ids = { "SUP-001398", "SUP-004192" },
    gen_id = 1397,
}
_VP["VP-001398"] = {
    label = "AstraMotors modelo 2498 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 201526,
    wear_curve = 0.5418,
    preferred_supplier_ids = { "SUP-001399", "SUP-004195" },
    gen_id = 1398,
}
_VP["VP-001399"] = {
    label = "RioVeículos modelo 2499 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 201663,
    wear_curve = 0.4403,
    preferred_supplier_ids = { "SUP-001400", "SUP-004198" },
    gen_id = 1399,
}
_VP["VP-001400"] = {
    label = "NorteAuto modelo 2500 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 201800,
    wear_curve = 0.8375,
    preferred_supplier_ids = { "SUP-001401", "SUP-004201" },
    gen_id = 1400,
}
_VP["VP-001401"] = {
    label = "DeltaMob modelo 2501 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 201937,
    wear_curve = 0.2110,
    preferred_supplier_ids = { "SUP-001402", "SUP-004204" },
    gen_id = 1401,
}
_VP["VP-001402"] = {
    label = "OrionTruck modelo 2502 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 202074,
    wear_curve = 0.9822,
    preferred_supplier_ids = { "SUP-001403", "SUP-004207" },
    gen_id = 1402,
}
_VP["VP-001403"] = {
    label = "SigmaBike modelo 2503 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 202211,
    wear_curve = 0.1531,
    preferred_supplier_ids = { "SUP-001404", "SUP-004210" },
    gen_id = 1403,
}
_VP["VP-001404"] = {
    label = "AstraMotors modelo 2504 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 202348,
    wear_curve = 0.2727,
    preferred_supplier_ids = { "SUP-001405", "SUP-004213" },
    gen_id = 1404,
}
_VP["VP-001405"] = {
    label = "RioVeículos modelo 2505 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 202485,
    wear_curve = 0.1534,
    preferred_supplier_ids = { "SUP-001406", "SUP-004216" },
    gen_id = 1405,
}
_VP["VP-001406"] = {
    label = "NorteAuto modelo 2506 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 202622,
    wear_curve = 0.8657,
    preferred_supplier_ids = { "SUP-001407", "SUP-004219" },
    gen_id = 1406,
}
_VP["VP-001407"] = {
    label = "DeltaMob modelo 2507 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 202759,
    wear_curve = 0.7261,
    preferred_supplier_ids = { "SUP-001408", "SUP-004222" },
    gen_id = 1407,
}
_VP["VP-001408"] = {
    label = "OrionTruck modelo 2508 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 202896,
    wear_curve = 0.7642,
    preferred_supplier_ids = { "SUP-001409", "SUP-004225" },
    gen_id = 1408,
}
_VP["VP-001409"] = {
    label = "SigmaBike modelo 2509 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 203033,
    wear_curve = 0.2595,
    preferred_supplier_ids = { "SUP-001410", "SUP-004228" },
    gen_id = 1409,
}
_VP["VP-001410"] = {
    label = "AstraMotors modelo 2510 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 203170,
    wear_curve = 0.4311,
    preferred_supplier_ids = { "SUP-001411", "SUP-004231" },
    gen_id = 1410,
}
_VP["VP-001411"] = {
    label = "RioVeículos modelo 2511 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 203307,
    wear_curve = 0.3430,
    preferred_supplier_ids = { "SUP-001412", "SUP-004234" },
    gen_id = 1411,
}
_VP["VP-001412"] = {
    label = "NorteAuto modelo 2512 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 203444,
    wear_curve = 0.6514,
    preferred_supplier_ids = { "SUP-001413", "SUP-004237" },
    gen_id = 1412,
}
_VP["VP-001413"] = {
    label = "DeltaMob modelo 2513 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 203581,
    wear_curve = 0.6170,
    preferred_supplier_ids = { "SUP-001414", "SUP-004240" },
    gen_id = 1413,
}
_VP["VP-001414"] = {
    label = "OrionTruck modelo 2514 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 203718,
    wear_curve = 0.8732,
    preferred_supplier_ids = { "SUP-001415", "SUP-004243" },
    gen_id = 1414,
}
_VP["VP-001415"] = {
    label = "SigmaBike modelo 2515 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 203855,
    wear_curve = 0.2449,
    preferred_supplier_ids = { "SUP-001416", "SUP-004246" },
    gen_id = 1415,
}
_VP["VP-001416"] = {
    label = "AstraMotors modelo 2516 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 203992,
    wear_curve = 0.3343,
    preferred_supplier_ids = { "SUP-001417", "SUP-004249" },
    gen_id = 1416,
}
_VP["VP-001417"] = {
    label = "RioVeículos modelo 2517 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 204129,
    wear_curve = 0.6536,
    preferred_supplier_ids = { "SUP-001418", "SUP-004252" },
    gen_id = 1417,
}
_VP["VP-001418"] = {
    label = "NorteAuto modelo 2518 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 204266,
    wear_curve = 0.9458,
    preferred_supplier_ids = { "SUP-001419", "SUP-004255" },
    gen_id = 1418,
}
_VP["VP-001419"] = {
    label = "DeltaMob modelo 2519 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 204403,
    wear_curve = 0.3852,
    preferred_supplier_ids = { "SUP-001420", "SUP-004258" },
    gen_id = 1419,
}
_VP["VP-001420"] = {
    label = "OrionTruck modelo 2520 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 204540,
    wear_curve = 0.1701,
    preferred_supplier_ids = { "SUP-001421", "SUP-004261" },
    gen_id = 1420,
}
_VP["VP-001421"] = {
    label = "SigmaBike modelo 2521 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 204677,
    wear_curve = 0.3487,
    preferred_supplier_ids = { "SUP-001422", "SUP-004264" },
    gen_id = 1421,
}
_VP["VP-001422"] = {
    label = "AstraMotors modelo 2522 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 204814,
    wear_curve = 0.5645,
    preferred_supplier_ids = { "SUP-001423", "SUP-004267" },
    gen_id = 1422,
}
_VP["VP-001423"] = {
    label = "RioVeículos modelo 2523 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 204951,
    wear_curve = 0.6615,
    preferred_supplier_ids = { "SUP-001424", "SUP-004270" },
    gen_id = 1423,
}
_VP["VP-001424"] = {
    label = "NorteAuto modelo 2524 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 205088,
    wear_curve = 0.7281,
    preferred_supplier_ids = { "SUP-001425", "SUP-004273" },
    gen_id = 1424,
}
_VP["VP-001425"] = {
    label = "DeltaMob modelo 2525 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 205225,
    wear_curve = 0.2257,
    preferred_supplier_ids = { "SUP-001426", "SUP-004276" },
    gen_id = 1425,
}
_VP["VP-001426"] = {
    label = "OrionTruck modelo 2526 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 205362,
    wear_curve = 0.9049,
    preferred_supplier_ids = { "SUP-001427", "SUP-004279" },
    gen_id = 1426,
}
_VP["VP-001427"] = {
    label = "SigmaBike modelo 2527 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 205499,
    wear_curve = 0.3508,
    preferred_supplier_ids = { "SUP-001428", "SUP-004282" },
    gen_id = 1427,
}
_VP["VP-001428"] = {
    label = "AstraMotors modelo 2528 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 205636,
    wear_curve = 0.5287,
    preferred_supplier_ids = { "SUP-001429", "SUP-004285" },
    gen_id = 1428,
}
_VP["VP-001429"] = {
    label = "RioVeículos modelo 2529 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 205773,
    wear_curve = 0.5135,
    preferred_supplier_ids = { "SUP-001430", "SUP-004288" },
    gen_id = 1429,
}
_VP["VP-001430"] = {
    label = "NorteAuto modelo 2530 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 205910,
    wear_curve = 0.9011,
    preferred_supplier_ids = { "SUP-001431", "SUP-004291" },
    gen_id = 1430,
}
_VP["VP-001431"] = {
    label = "DeltaMob modelo 2531 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 206047,
    wear_curve = 0.4918,
    preferred_supplier_ids = { "SUP-001432", "SUP-004294" },
    gen_id = 1431,
}
_VP["VP-001432"] = {
    label = "OrionTruck modelo 2532 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 206184,
    wear_curve = 0.2045,
    preferred_supplier_ids = { "SUP-001433", "SUP-004297" },
    gen_id = 1432,
}
_VP["VP-001433"] = {
    label = "SigmaBike modelo 2533 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 206321,
    wear_curve = 0.9218,
    preferred_supplier_ids = { "SUP-001434", "SUP-004300" },
    gen_id = 1433,
}
_VP["VP-001434"] = {
    label = "AstraMotors modelo 2534 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 206458,
    wear_curve = 0.4664,
    preferred_supplier_ids = { "SUP-001435", "SUP-004303" },
    gen_id = 1434,
}
_VP["VP-001435"] = {
    label = "RioVeículos modelo 2535 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 206595,
    wear_curve = 0.5663,
    preferred_supplier_ids = { "SUP-001436", "SUP-004306" },
    gen_id = 1435,
}
_VP["VP-001436"] = {
    label = "NorteAuto modelo 2536 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 206732,
    wear_curve = 0.9849,
    preferred_supplier_ids = { "SUP-001437", "SUP-004309" },
    gen_id = 1436,
}
_VP["VP-001437"] = {
    label = "DeltaMob modelo 2537 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 206869,
    wear_curve = 0.9920,
    preferred_supplier_ids = { "SUP-001438", "SUP-004312" },
    gen_id = 1437,
}
_VP["VP-001438"] = {
    label = "OrionTruck modelo 2538 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 207006,
    wear_curve = 0.5667,
    preferred_supplier_ids = { "SUP-001439", "SUP-004315" },
    gen_id = 1438,
}
_VP["VP-001439"] = {
    label = "SigmaBike modelo 2539 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 207143,
    wear_curve = 0.5968,
    preferred_supplier_ids = { "SUP-001440", "SUP-004318" },
    gen_id = 1439,
}
_VP["VP-001440"] = {
    label = "AstraMotors modelo 2540 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 207280,
    wear_curve = 0.9162,
    preferred_supplier_ids = { "SUP-001441", "SUP-004321" },
    gen_id = 1440,
}
_VP["VP-001441"] = {
    label = "RioVeículos modelo 2541 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 207417,
    wear_curve = 0.3463,
    preferred_supplier_ids = { "SUP-001442", "SUP-004324" },
    gen_id = 1441,
}
_VP["VP-001442"] = {
    label = "NorteAuto modelo 2542 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 207554,
    wear_curve = 0.6918,
    preferred_supplier_ids = { "SUP-001443", "SUP-004327" },
    gen_id = 1442,
}
_VP["VP-001443"] = {
    label = "DeltaMob modelo 2543 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 207691,
    wear_curve = 0.4401,
    preferred_supplier_ids = { "SUP-001444", "SUP-004330" },
    gen_id = 1443,
}
_VP["VP-001444"] = {
    label = "OrionTruck modelo 2544 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 207828,
    wear_curve = 0.9453,
    preferred_supplier_ids = { "SUP-001445", "SUP-004333" },
    gen_id = 1444,
}
_VP["VP-001445"] = {
    label = "SigmaBike modelo 2545 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 207965,
    wear_curve = 0.9194,
    preferred_supplier_ids = { "SUP-001446", "SUP-004336" },
    gen_id = 1445,
}
_VP["VP-001446"] = {
    label = "AstraMotors modelo 2546 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 208102,
    wear_curve = 0.4314,
    preferred_supplier_ids = { "SUP-001447", "SUP-004339" },
    gen_id = 1446,
}
_VP["VP-001447"] = {
    label = "RioVeículos modelo 2547 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 208239,
    wear_curve = 0.1663,
    preferred_supplier_ids = { "SUP-001448", "SUP-004342" },
    gen_id = 1447,
}
_VP["VP-001448"] = {
    label = "NorteAuto modelo 2548 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 208376,
    wear_curve = 0.9022,
    preferred_supplier_ids = { "SUP-001449", "SUP-004345" },
    gen_id = 1448,
}
_VP["VP-001449"] = {
    label = "DeltaMob modelo 2549 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 208513,
    wear_curve = 0.7214,
    preferred_supplier_ids = { "SUP-001450", "SUP-004348" },
    gen_id = 1449,
}
_VP["VP-001450"] = {
    label = "OrionTruck modelo 2550 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 208650,
    wear_curve = 0.1752,
    preferred_supplier_ids = { "SUP-001451", "SUP-004351" },
    gen_id = 1450,
}
_VP["VP-001451"] = {
    label = "SigmaBike modelo 2551 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 208787,
    wear_curve = 0.5292,
    preferred_supplier_ids = { "SUP-001452", "SUP-004354" },
    gen_id = 1451,
}
_VP["VP-001452"] = {
    label = "AstraMotors modelo 2552 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 208924,
    wear_curve = 0.4852,
    preferred_supplier_ids = { "SUP-001453", "SUP-004357" },
    gen_id = 1452,
}
_VP["VP-001453"] = {
    label = "RioVeículos modelo 2553 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 209061,
    wear_curve = 0.3410,
    preferred_supplier_ids = { "SUP-001454", "SUP-004360" },
    gen_id = 1453,
}
_VP["VP-001454"] = {
    label = "NorteAuto modelo 2554 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 209198,
    wear_curve = 0.4194,
    preferred_supplier_ids = { "SUP-001455", "SUP-004363" },
    gen_id = 1454,
}
_VP["VP-001455"] = {
    label = "DeltaMob modelo 2555 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 209335,
    wear_curve = 0.1935,
    preferred_supplier_ids = { "SUP-001456", "SUP-004366" },
    gen_id = 1455,
}
_VP["VP-001456"] = {
    label = "OrionTruck modelo 2556 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 209472,
    wear_curve = 0.1594,
    preferred_supplier_ids = { "SUP-001457", "SUP-004369" },
    gen_id = 1456,
}
_VP["VP-001457"] = {
    label = "SigmaBike modelo 2557 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 209609,
    wear_curve = 0.2628,
    preferred_supplier_ids = { "SUP-001458", "SUP-004372" },
    gen_id = 1457,
}
_VP["VP-001458"] = {
    label = "AstraMotors modelo 2558 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 209746,
    wear_curve = 0.2242,
    preferred_supplier_ids = { "SUP-001459", "SUP-004375" },
    gen_id = 1458,
}
_VP["VP-001459"] = {
    label = "RioVeículos modelo 2559 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 209883,
    wear_curve = 0.1969,
    preferred_supplier_ids = { "SUP-001460", "SUP-004378" },
    gen_id = 1459,
}
_VP["VP-001460"] = {
    label = "NorteAuto modelo 2560 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 210020,
    wear_curve = 0.4964,
    preferred_supplier_ids = { "SUP-001461", "SUP-004381" },
    gen_id = 1460,
}
_VP["VP-001461"] = {
    label = "DeltaMob modelo 2561 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 210157,
    wear_curve = 0.4329,
    preferred_supplier_ids = { "SUP-001462", "SUP-004384" },
    gen_id = 1461,
}
_VP["VP-001462"] = {
    label = "OrionTruck modelo 2562 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 210294,
    wear_curve = 0.6789,
    preferred_supplier_ids = { "SUP-001463", "SUP-004387" },
    gen_id = 1462,
}
_VP["VP-001463"] = {
    label = "SigmaBike modelo 2563 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 210431,
    wear_curve = 0.8407,
    preferred_supplier_ids = { "SUP-001464", "SUP-004390" },
    gen_id = 1463,
}
_VP["VP-001464"] = {
    label = "AstraMotors modelo 2564 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 210568,
    wear_curve = 0.3918,
    preferred_supplier_ids = { "SUP-001465", "SUP-004393" },
    gen_id = 1464,
}
_VP["VP-001465"] = {
    label = "RioVeículos modelo 2565 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 210705,
    wear_curve = 0.9709,
    preferred_supplier_ids = { "SUP-001466", "SUP-004396" },
    gen_id = 1465,
}
_VP["VP-001466"] = {
    label = "NorteAuto modelo 2566 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 210842,
    wear_curve = 0.7444,
    preferred_supplier_ids = { "SUP-001467", "SUP-004399" },
    gen_id = 1466,
}
_VP["VP-001467"] = {
    label = "DeltaMob modelo 2567 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 210979,
    wear_curve = 0.2107,
    preferred_supplier_ids = { "SUP-001468", "SUP-004402" },
    gen_id = 1467,
}
_VP["VP-001468"] = {
    label = "OrionTruck modelo 2568 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 211116,
    wear_curve = 0.7629,
    preferred_supplier_ids = { "SUP-001469", "SUP-004405" },
    gen_id = 1468,
}
_VP["VP-001469"] = {
    label = "SigmaBike modelo 2569 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 211253,
    wear_curve = 0.5885,
    preferred_supplier_ids = { "SUP-001470", "SUP-004408" },
    gen_id = 1469,
}
_VP["VP-001470"] = {
    label = "AstraMotors modelo 2570 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 211390,
    wear_curve = 0.2555,
    preferred_supplier_ids = { "SUP-001471", "SUP-004411" },
    gen_id = 1470,
}
_VP["VP-001471"] = {
    label = "RioVeículos modelo 2571 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 211527,
    wear_curve = 0.3453,
    preferred_supplier_ids = { "SUP-001472", "SUP-004414" },
    gen_id = 1471,
}
_VP["VP-001472"] = {
    label = "NorteAuto modelo 2572 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 211664,
    wear_curve = 0.9880,
    preferred_supplier_ids = { "SUP-001473", "SUP-004417" },
    gen_id = 1472,
}
_VP["VP-001473"] = {
    label = "DeltaMob modelo 2573 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 211801,
    wear_curve = 0.5373,
    preferred_supplier_ids = { "SUP-001474", "SUP-004420" },
    gen_id = 1473,
}
_VP["VP-001474"] = {
    label = "OrionTruck modelo 2574 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 211938,
    wear_curve = 0.4269,
    preferred_supplier_ids = { "SUP-001475", "SUP-004423" },
    gen_id = 1474,
}
_VP["VP-001475"] = {
    label = "SigmaBike modelo 2575 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 212075,
    wear_curve = 0.9312,
    preferred_supplier_ids = { "SUP-001476", "SUP-004426" },
    gen_id = 1475,
}
_VP["VP-001476"] = {
    label = "AstraMotors modelo 2576 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 212212,
    wear_curve = 0.2152,
    preferred_supplier_ids = { "SUP-001477", "SUP-004429" },
    gen_id = 1476,
}
_VP["VP-001477"] = {
    label = "RioVeículos modelo 2577 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 212349,
    wear_curve = 0.8705,
    preferred_supplier_ids = { "SUP-001478", "SUP-004432" },
    gen_id = 1477,
}
_VP["VP-001478"] = {
    label = "NorteAuto modelo 2578 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 212486,
    wear_curve = 0.9198,
    preferred_supplier_ids = { "SUP-001479", "SUP-004435" },
    gen_id = 1478,
}
_VP["VP-001479"] = {
    label = "DeltaMob modelo 2579 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 212623,
    wear_curve = 0.5658,
    preferred_supplier_ids = { "SUP-001480", "SUP-004438" },
    gen_id = 1479,
}
_VP["VP-001480"] = {
    label = "OrionTruck modelo 2580 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 212760,
    wear_curve = 0.5767,
    preferred_supplier_ids = { "SUP-001481", "SUP-004441" },
    gen_id = 1480,
}
_VP["VP-001481"] = {
    label = "SigmaBike modelo 2581 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 212897,
    wear_curve = 0.6673,
    preferred_supplier_ids = { "SUP-001482", "SUP-004444" },
    gen_id = 1481,
}
_VP["VP-001482"] = {
    label = "AstraMotors modelo 2582 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 213034,
    wear_curve = 0.3895,
    preferred_supplier_ids = { "SUP-001483", "SUP-004447" },
    gen_id = 1482,
}
_VP["VP-001483"] = {
    label = "RioVeículos modelo 2583 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 213171,
    wear_curve = 0.3417,
    preferred_supplier_ids = { "SUP-001484", "SUP-004450" },
    gen_id = 1483,
}
_VP["VP-001484"] = {
    label = "NorteAuto modelo 2584 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 213308,
    wear_curve = 0.2120,
    preferred_supplier_ids = { "SUP-001485", "SUP-004453" },
    gen_id = 1484,
}
_VP["VP-001485"] = {
    label = "DeltaMob modelo 2585 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 213445,
    wear_curve = 0.4785,
    preferred_supplier_ids = { "SUP-001486", "SUP-004456" },
    gen_id = 1485,
}
_VP["VP-001486"] = {
    label = "OrionTruck modelo 2586 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 213582,
    wear_curve = 0.8459,
    preferred_supplier_ids = { "SUP-001487", "SUP-004459" },
    gen_id = 1486,
}
_VP["VP-001487"] = {
    label = "SigmaBike modelo 2587 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 213719,
    wear_curve = 0.4695,
    preferred_supplier_ids = { "SUP-001488", "SUP-004462" },
    gen_id = 1487,
}
_VP["VP-001488"] = {
    label = "AstraMotors modelo 2588 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 213856,
    wear_curve = 0.7603,
    preferred_supplier_ids = { "SUP-001489", "SUP-004465" },
    gen_id = 1488,
}
_VP["VP-001489"] = {
    label = "RioVeículos modelo 2589 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 213993,
    wear_curve = 0.3679,
    preferred_supplier_ids = { "SUP-001490", "SUP-004468" },
    gen_id = 1489,
}
_VP["VP-001490"] = {
    label = "NorteAuto modelo 2590 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 214130,
    wear_curve = 0.2200,
    preferred_supplier_ids = { "SUP-001491", "SUP-004471" },
    gen_id = 1490,
}
_VP["VP-001491"] = {
    label = "DeltaMob modelo 2591 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 214267,
    wear_curve = 0.4177,
    preferred_supplier_ids = { "SUP-001492", "SUP-004474" },
    gen_id = 1491,
}
_VP["VP-001492"] = {
    label = "OrionTruck modelo 2592 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 214404,
    wear_curve = 0.6508,
    preferred_supplier_ids = { "SUP-001493", "SUP-004477" },
    gen_id = 1492,
}
_VP["VP-001493"] = {
    label = "SigmaBike modelo 2593 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 214541,
    wear_curve = 0.7325,
    preferred_supplier_ids = { "SUP-001494", "SUP-004480" },
    gen_id = 1493,
}
_VP["VP-001494"] = {
    label = "AstraMotors modelo 2594 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 214678,
    wear_curve = 0.2454,
    preferred_supplier_ids = { "SUP-001495", "SUP-004483" },
    gen_id = 1494,
}
_VP["VP-001495"] = {
    label = "RioVeículos modelo 2595 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 214815,
    wear_curve = 0.5105,
    preferred_supplier_ids = { "SUP-001496", "SUP-004486" },
    gen_id = 1495,
}
_VP["VP-001496"] = {
    label = "NorteAuto modelo 2596 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 214952,
    wear_curve = 0.9769,
    preferred_supplier_ids = { "SUP-001497", "SUP-004489" },
    gen_id = 1496,
}
_VP["VP-001497"] = {
    label = "DeltaMob modelo 2597 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 215089,
    wear_curve = 0.5514,
    preferred_supplier_ids = { "SUP-001498", "SUP-004492" },
    gen_id = 1497,
}
_VP["VP-001498"] = {
    label = "OrionTruck modelo 2598 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 215226,
    wear_curve = 0.8733,
    preferred_supplier_ids = { "SUP-001499", "SUP-004495" },
    gen_id = 1498,
}
_VP["VP-001499"] = {
    label = "SigmaBike modelo 2599 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 215363,
    wear_curve = 0.5883,
    preferred_supplier_ids = { "SUP-001500", "SUP-004498" },
    gen_id = 1499,
}
_VP["VP-001500"] = {
    label = "AstraMotors modelo 2600 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 215500,
    wear_curve = 0.8064,
    preferred_supplier_ids = { "SUP-001501", "SUP-004501" },
    gen_id = 1500,
}
_VP["VP-001501"] = {
    label = "RioVeículos modelo 2601 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 215637,
    wear_curve = 0.6716,
    preferred_supplier_ids = { "SUP-001502", "SUP-004504" },
    gen_id = 1501,
}
_VP["VP-001502"] = {
    label = "NorteAuto modelo 2602 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 215774,
    wear_curve = 0.2529,
    preferred_supplier_ids = { "SUP-001503", "SUP-004507" },
    gen_id = 1502,
}
_VP["VP-001503"] = {
    label = "DeltaMob modelo 2603 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 215911,
    wear_curve = 0.8974,
    preferred_supplier_ids = { "SUP-001504", "SUP-004510" },
    gen_id = 1503,
}
_VP["VP-001504"] = {
    label = "OrionTruck modelo 2604 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 216048,
    wear_curve = 0.6403,
    preferred_supplier_ids = { "SUP-001505", "SUP-004513" },
    gen_id = 1504,
}
_VP["VP-001505"] = {
    label = "SigmaBike modelo 2605 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 216185,
    wear_curve = 0.4046,
    preferred_supplier_ids = { "SUP-001506", "SUP-004516" },
    gen_id = 1505,
}
_VP["VP-001506"] = {
    label = "AstraMotors modelo 2606 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 216322,
    wear_curve = 0.8219,
    preferred_supplier_ids = { "SUP-001507", "SUP-004519" },
    gen_id = 1506,
}
_VP["VP-001507"] = {
    label = "RioVeículos modelo 2607 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 216459,
    wear_curve = 0.3866,
    preferred_supplier_ids = { "SUP-001508", "SUP-004522" },
    gen_id = 1507,
}
_VP["VP-001508"] = {
    label = "NorteAuto modelo 2608 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 216596,
    wear_curve = 0.6468,
    preferred_supplier_ids = { "SUP-001509", "SUP-004525" },
    gen_id = 1508,
}
_VP["VP-001509"] = {
    label = "DeltaMob modelo 2609 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 216733,
    wear_curve = 0.5687,
    preferred_supplier_ids = { "SUP-001510", "SUP-004528" },
    gen_id = 1509,
}
_VP["VP-001510"] = {
    label = "OrionTruck modelo 2610 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 216870,
    wear_curve = 0.1651,
    preferred_supplier_ids = { "SUP-001511", "SUP-004531" },
    gen_id = 1510,
}
_VP["VP-001511"] = {
    label = "SigmaBike modelo 2611 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 217007,
    wear_curve = 0.5532,
    preferred_supplier_ids = { "SUP-001512", "SUP-004534" },
    gen_id = 1511,
}
_VP["VP-001512"] = {
    label = "AstraMotors modelo 2612 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 217144,
    wear_curve = 0.9076,
    preferred_supplier_ids = { "SUP-001513", "SUP-004537" },
    gen_id = 1512,
}
_VP["VP-001513"] = {
    label = "RioVeículos modelo 2613 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 217281,
    wear_curve = 0.8238,
    preferred_supplier_ids = { "SUP-001514", "SUP-004540" },
    gen_id = 1513,
}
_VP["VP-001514"] = {
    label = "NorteAuto modelo 2614 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 217418,
    wear_curve = 0.7586,
    preferred_supplier_ids = { "SUP-001515", "SUP-004543" },
    gen_id = 1514,
}
_VP["VP-001515"] = {
    label = "DeltaMob modelo 2615 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 217555,
    wear_curve = 0.2423,
    preferred_supplier_ids = { "SUP-001516", "SUP-004546" },
    gen_id = 1515,
}
_VP["VP-001516"] = {
    label = "OrionTruck modelo 2616 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 217692,
    wear_curve = 0.9284,
    preferred_supplier_ids = { "SUP-001517", "SUP-004549" },
    gen_id = 1516,
}
_VP["VP-001517"] = {
    label = "SigmaBike modelo 2617 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 217829,
    wear_curve = 0.6106,
    preferred_supplier_ids = { "SUP-001518", "SUP-004552" },
    gen_id = 1517,
}
_VP["VP-001518"] = {
    label = "AstraMotors modelo 2618 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 217966,
    wear_curve = 0.6835,
    preferred_supplier_ids = { "SUP-001519", "SUP-004555" },
    gen_id = 1518,
}
_VP["VP-001519"] = {
    label = "RioVeículos modelo 2619 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 218103,
    wear_curve = 0.1646,
    preferred_supplier_ids = { "SUP-001520", "SUP-004558" },
    gen_id = 1519,
}
_VP["VP-001520"] = {
    label = "NorteAuto modelo 2620 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 218240,
    wear_curve = 0.9761,
    preferred_supplier_ids = { "SUP-001521", "SUP-004561" },
    gen_id = 1520,
}
_VP["VP-001521"] = {
    label = "DeltaMob modelo 2621 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 218377,
    wear_curve = 0.4650,
    preferred_supplier_ids = { "SUP-001522", "SUP-004564" },
    gen_id = 1521,
}
_VP["VP-001522"] = {
    label = "OrionTruck modelo 2622 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 218514,
    wear_curve = 0.7030,
    preferred_supplier_ids = { "SUP-001523", "SUP-004567" },
    gen_id = 1522,
}
_VP["VP-001523"] = {
    label = "SigmaBike modelo 2623 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 218651,
    wear_curve = 0.4138,
    preferred_supplier_ids = { "SUP-001524", "SUP-004570" },
    gen_id = 1523,
}
_VP["VP-001524"] = {
    label = "AstraMotors modelo 2624 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 218788,
    wear_curve = 0.3687,
    preferred_supplier_ids = { "SUP-001525", "SUP-004573" },
    gen_id = 1524,
}
_VP["VP-001525"] = {
    label = "RioVeículos modelo 2625 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 218925,
    wear_curve = 0.6939,
    preferred_supplier_ids = { "SUP-001526", "SUP-004576" },
    gen_id = 1525,
}
_VP["VP-001526"] = {
    label = "NorteAuto modelo 2626 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 219062,
    wear_curve = 0.4094,
    preferred_supplier_ids = { "SUP-001527", "SUP-004579" },
    gen_id = 1526,
}
_VP["VP-001527"] = {
    label = "DeltaMob modelo 2627 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 219199,
    wear_curve = 0.8222,
    preferred_supplier_ids = { "SUP-001528", "SUP-004582" },
    gen_id = 1527,
}
_VP["VP-001528"] = {
    label = "OrionTruck modelo 2628 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 219336,
    wear_curve = 0.8069,
    preferred_supplier_ids = { "SUP-001529", "SUP-004585" },
    gen_id = 1528,
}
_VP["VP-001529"] = {
    label = "SigmaBike modelo 2629 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 219473,
    wear_curve = 0.5603,
    preferred_supplier_ids = { "SUP-001530", "SUP-004588" },
    gen_id = 1529,
}
_VP["VP-001530"] = {
    label = "AstraMotors modelo 2630 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 219610,
    wear_curve = 0.5612,
    preferred_supplier_ids = { "SUP-001531", "SUP-004591" },
    gen_id = 1530,
}
_VP["VP-001531"] = {
    label = "RioVeículos modelo 2631 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 219747,
    wear_curve = 0.6115,
    preferred_supplier_ids = { "SUP-001532", "SUP-004594" },
    gen_id = 1531,
}
_VP["VP-001532"] = {
    label = "NorteAuto modelo 2632 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 219884,
    wear_curve = 0.9468,
    preferred_supplier_ids = { "SUP-001533", "SUP-004597" },
    gen_id = 1532,
}
_VP["VP-001533"] = {
    label = "DeltaMob modelo 2633 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 220021,
    wear_curve = 0.4863,
    preferred_supplier_ids = { "SUP-001534", "SUP-004600" },
    gen_id = 1533,
}
_VP["VP-001534"] = {
    label = "OrionTruck modelo 2634 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 220158,
    wear_curve = 0.8925,
    preferred_supplier_ids = { "SUP-001535", "SUP-004603" },
    gen_id = 1534,
}
_VP["VP-001535"] = {
    label = "SigmaBike modelo 2635 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 220295,
    wear_curve = 0.8020,
    preferred_supplier_ids = { "SUP-001536", "SUP-004606" },
    gen_id = 1535,
}
_VP["VP-001536"] = {
    label = "AstraMotors modelo 2636 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 220432,
    wear_curve = 0.9280,
    preferred_supplier_ids = { "SUP-001537", "SUP-004609" },
    gen_id = 1536,
}
_VP["VP-001537"] = {
    label = "RioVeículos modelo 2637 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 220569,
    wear_curve = 0.6494,
    preferred_supplier_ids = { "SUP-001538", "SUP-004612" },
    gen_id = 1537,
}
_VP["VP-001538"] = {
    label = "NorteAuto modelo 2638 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 220706,
    wear_curve = 0.7381,
    preferred_supplier_ids = { "SUP-001539", "SUP-004615" },
    gen_id = 1538,
}
_VP["VP-001539"] = {
    label = "DeltaMob modelo 2639 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 220843,
    wear_curve = 0.3118,
    preferred_supplier_ids = { "SUP-001540", "SUP-004618" },
    gen_id = 1539,
}
_VP["VP-001540"] = {
    label = "OrionTruck modelo 2640 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 220980,
    wear_curve = 0.9328,
    preferred_supplier_ids = { "SUP-001541", "SUP-004621" },
    gen_id = 1540,
}
_VP["VP-001541"] = {
    label = "SigmaBike modelo 2641 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 221117,
    wear_curve = 0.6038,
    preferred_supplier_ids = { "SUP-001542", "SUP-004624" },
    gen_id = 1541,
}
_VP["VP-001542"] = {
    label = "AstraMotors modelo 2642 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 221254,
    wear_curve = 0.6828,
    preferred_supplier_ids = { "SUP-001543", "SUP-004627" },
    gen_id = 1542,
}
_VP["VP-001543"] = {
    label = "RioVeículos modelo 2643 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 221391,
    wear_curve = 0.6862,
    preferred_supplier_ids = { "SUP-001544", "SUP-004630" },
    gen_id = 1543,
}
_VP["VP-001544"] = {
    label = "NorteAuto modelo 2644 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 221528,
    wear_curve = 0.1643,
    preferred_supplier_ids = { "SUP-001545", "SUP-004633" },
    gen_id = 1544,
}
_VP["VP-001545"] = {
    label = "DeltaMob modelo 2645 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 221665,
    wear_curve = 0.5274,
    preferred_supplier_ids = { "SUP-001546", "SUP-004636" },
    gen_id = 1545,
}
_VP["VP-001546"] = {
    label = "OrionTruck modelo 2646 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 221802,
    wear_curve = 0.2533,
    preferred_supplier_ids = { "SUP-001547", "SUP-004639" },
    gen_id = 1546,
}
_VP["VP-001547"] = {
    label = "SigmaBike modelo 2647 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 221939,
    wear_curve = 0.6109,
    preferred_supplier_ids = { "SUP-001548", "SUP-004642" },
    gen_id = 1547,
}
_VP["VP-001548"] = {
    label = "AstraMotors modelo 2648 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 222076,
    wear_curve = 0.2947,
    preferred_supplier_ids = { "SUP-001549", "SUP-004645" },
    gen_id = 1548,
}
_VP["VP-001549"] = {
    label = "RioVeículos modelo 2649 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 222213,
    wear_curve = 0.6531,
    preferred_supplier_ids = { "SUP-001550", "SUP-004648" },
    gen_id = 1549,
}
_VP["VP-001550"] = {
    label = "NorteAuto modelo 2650 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 222350,
    wear_curve = 0.4853,
    preferred_supplier_ids = { "SUP-001551", "SUP-004651" },
    gen_id = 1550,
}
_VP["VP-001551"] = {
    label = "DeltaMob modelo 2651 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 222487,
    wear_curve = 0.6762,
    preferred_supplier_ids = { "SUP-001552", "SUP-004654" },
    gen_id = 1551,
}
_VP["VP-001552"] = {
    label = "OrionTruck modelo 2652 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 222624,
    wear_curve = 0.6467,
    preferred_supplier_ids = { "SUP-001553", "SUP-004657" },
    gen_id = 1552,
}
_VP["VP-001553"] = {
    label = "SigmaBike modelo 2653 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 222761,
    wear_curve = 0.7572,
    preferred_supplier_ids = { "SUP-001554", "SUP-004660" },
    gen_id = 1553,
}
_VP["VP-001554"] = {
    label = "AstraMotors modelo 2654 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 222898,
    wear_curve = 0.8600,
    preferred_supplier_ids = { "SUP-001555", "SUP-004663" },
    gen_id = 1554,
}
_VP["VP-001555"] = {
    label = "RioVeículos modelo 2655 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 223035,
    wear_curve = 0.8204,
    preferred_supplier_ids = { "SUP-001556", "SUP-004666" },
    gen_id = 1555,
}
_VP["VP-001556"] = {
    label = "NorteAuto modelo 2656 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 223172,
    wear_curve = 0.6338,
    preferred_supplier_ids = { "SUP-001557", "SUP-004669" },
    gen_id = 1556,
}
_VP["VP-001557"] = {
    label = "DeltaMob modelo 2657 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 223309,
    wear_curve = 0.9403,
    preferred_supplier_ids = { "SUP-001558", "SUP-004672" },
    gen_id = 1557,
}
_VP["VP-001558"] = {
    label = "OrionTruck modelo 2658 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 223446,
    wear_curve = 0.7176,
    preferred_supplier_ids = { "SUP-001559", "SUP-004675" },
    gen_id = 1558,
}
_VP["VP-001559"] = {
    label = "SigmaBike modelo 2659 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 223583,
    wear_curve = 0.2949,
    preferred_supplier_ids = { "SUP-001560", "SUP-004678" },
    gen_id = 1559,
}
_VP["VP-001560"] = {
    label = "AstraMotors modelo 2660 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 223720,
    wear_curve = 0.5485,
    preferred_supplier_ids = { "SUP-001561", "SUP-004681" },
    gen_id = 1560,
}
_VP["VP-001561"] = {
    label = "RioVeículos modelo 2661 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 223857,
    wear_curve = 0.8984,
    preferred_supplier_ids = { "SUP-001562", "SUP-004684" },
    gen_id = 1561,
}
_VP["VP-001562"] = {
    label = "NorteAuto modelo 2662 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 223994,
    wear_curve = 0.1666,
    preferred_supplier_ids = { "SUP-001563", "SUP-004687" },
    gen_id = 1562,
}
_VP["VP-001563"] = {
    label = "DeltaMob modelo 2663 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 224131,
    wear_curve = 0.8528,
    preferred_supplier_ids = { "SUP-001564", "SUP-004690" },
    gen_id = 1563,
}
_VP["VP-001564"] = {
    label = "OrionTruck modelo 2664 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 224268,
    wear_curve = 0.4979,
    preferred_supplier_ids = { "SUP-001565", "SUP-004693" },
    gen_id = 1564,
}
_VP["VP-001565"] = {
    label = "SigmaBike modelo 2665 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 224405,
    wear_curve = 0.1944,
    preferred_supplier_ids = { "SUP-001566", "SUP-004696" },
    gen_id = 1565,
}
_VP["VP-001566"] = {
    label = "AstraMotors modelo 2666 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 224542,
    wear_curve = 0.8214,
    preferred_supplier_ids = { "SUP-001567", "SUP-004699" },
    gen_id = 1566,
}
_VP["VP-001567"] = {
    label = "RioVeículos modelo 2667 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 224679,
    wear_curve = 0.4803,
    preferred_supplier_ids = { "SUP-001568", "SUP-004702" },
    gen_id = 1567,
}
_VP["VP-001568"] = {
    label = "NorteAuto modelo 2668 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 224816,
    wear_curve = 0.9010,
    preferred_supplier_ids = { "SUP-001569", "SUP-004705" },
    gen_id = 1568,
}
_VP["VP-001569"] = {
    label = "DeltaMob modelo 2669 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 224953,
    wear_curve = 0.5517,
    preferred_supplier_ids = { "SUP-001570", "SUP-004708" },
    gen_id = 1569,
}
_VP["VP-001570"] = {
    label = "OrionTruck modelo 2670 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 225090,
    wear_curve = 0.9624,
    preferred_supplier_ids = { "SUP-001571", "SUP-004711" },
    gen_id = 1570,
}
_VP["VP-001571"] = {
    label = "SigmaBike modelo 2671 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 225227,
    wear_curve = 0.8973,
    preferred_supplier_ids = { "SUP-001572", "SUP-004714" },
    gen_id = 1571,
}
_VP["VP-001572"] = {
    label = "AstraMotors modelo 2672 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 225364,
    wear_curve = 0.5231,
    preferred_supplier_ids = { "SUP-001573", "SUP-004717" },
    gen_id = 1572,
}
_VP["VP-001573"] = {
    label = "RioVeículos modelo 2673 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 225501,
    wear_curve = 0.3572,
    preferred_supplier_ids = { "SUP-001574", "SUP-004720" },
    gen_id = 1573,
}
_VP["VP-001574"] = {
    label = "NorteAuto modelo 2674 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 225638,
    wear_curve = 0.3263,
    preferred_supplier_ids = { "SUP-001575", "SUP-004723" },
    gen_id = 1574,
}
_VP["VP-001575"] = {
    label = "DeltaMob modelo 2675 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 225775,
    wear_curve = 0.4198,
    preferred_supplier_ids = { "SUP-001576", "SUP-004726" },
    gen_id = 1575,
}
_VP["VP-001576"] = {
    label = "OrionTruck modelo 2676 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 225912,
    wear_curve = 0.9858,
    preferred_supplier_ids = { "SUP-001577", "SUP-004729" },
    gen_id = 1576,
}
_VP["VP-001577"] = {
    label = "SigmaBike modelo 2677 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 226049,
    wear_curve = 0.6685,
    preferred_supplier_ids = { "SUP-001578", "SUP-004732" },
    gen_id = 1577,
}
_VP["VP-001578"] = {
    label = "AstraMotors modelo 2678 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 226186,
    wear_curve = 0.1953,
    preferred_supplier_ids = { "SUP-001579", "SUP-004735" },
    gen_id = 1578,
}
_VP["VP-001579"] = {
    label = "RioVeículos modelo 2679 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 226323,
    wear_curve = 0.9376,
    preferred_supplier_ids = { "SUP-001580", "SUP-004738" },
    gen_id = 1579,
}
_VP["VP-001580"] = {
    label = "NorteAuto modelo 2680 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 226460,
    wear_curve = 0.5530,
    preferred_supplier_ids = { "SUP-001581", "SUP-004741" },
    gen_id = 1580,
}
_VP["VP-001581"] = {
    label = "DeltaMob modelo 2681 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 226597,
    wear_curve = 0.5883,
    preferred_supplier_ids = { "SUP-001582", "SUP-004744" },
    gen_id = 1581,
}
_VP["VP-001582"] = {
    label = "OrionTruck modelo 2682 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 226734,
    wear_curve = 0.8174,
    preferred_supplier_ids = { "SUP-001583", "SUP-004747" },
    gen_id = 1582,
}
_VP["VP-001583"] = {
    label = "SigmaBike modelo 2683 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 226871,
    wear_curve = 0.1745,
    preferred_supplier_ids = { "SUP-001584", "SUP-004750" },
    gen_id = 1583,
}
_VP["VP-001584"] = {
    label = "AstraMotors modelo 2684 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 227008,
    wear_curve = 0.1565,
    preferred_supplier_ids = { "SUP-001585", "SUP-004753" },
    gen_id = 1584,
}
_VP["VP-001585"] = {
    label = "RioVeículos modelo 2685 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 227145,
    wear_curve = 0.8765,
    preferred_supplier_ids = { "SUP-001586", "SUP-004756" },
    gen_id = 1585,
}
_VP["VP-001586"] = {
    label = "NorteAuto modelo 2686 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 227282,
    wear_curve = 0.9533,
    preferred_supplier_ids = { "SUP-001587", "SUP-004759" },
    gen_id = 1586,
}
_VP["VP-001587"] = {
    label = "DeltaMob modelo 2687 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 227419,
    wear_curve = 0.9585,
    preferred_supplier_ids = { "SUP-001588", "SUP-004762" },
    gen_id = 1587,
}
_VP["VP-001588"] = {
    label = "OrionTruck modelo 2688 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 227556,
    wear_curve = 0.6369,
    preferred_supplier_ids = { "SUP-001589", "SUP-004765" },
    gen_id = 1588,
}
_VP["VP-001589"] = {
    label = "SigmaBike modelo 2689 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 227693,
    wear_curve = 0.8860,
    preferred_supplier_ids = { "SUP-001590", "SUP-004768" },
    gen_id = 1589,
}
_VP["VP-001590"] = {
    label = "AstraMotors modelo 2690 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 227830,
    wear_curve = 0.3053,
    preferred_supplier_ids = { "SUP-001591", "SUP-004771" },
    gen_id = 1590,
}
_VP["VP-001591"] = {
    label = "RioVeículos modelo 2691 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 227967,
    wear_curve = 0.5948,
    preferred_supplier_ids = { "SUP-001592", "SUP-004774" },
    gen_id = 1591,
}
_VP["VP-001592"] = {
    label = "NorteAuto modelo 2692 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 228104,
    wear_curve = 0.9879,
    preferred_supplier_ids = { "SUP-001593", "SUP-004777" },
    gen_id = 1592,
}
_VP["VP-001593"] = {
    label = "DeltaMob modelo 2693 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 228241,
    wear_curve = 0.4707,
    preferred_supplier_ids = { "SUP-001594", "SUP-004780" },
    gen_id = 1593,
}
_VP["VP-001594"] = {
    label = "OrionTruck modelo 2694 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 228378,
    wear_curve = 0.6991,
    preferred_supplier_ids = { "SUP-001595", "SUP-004783" },
    gen_id = 1594,
}
_VP["VP-001595"] = {
    label = "SigmaBike modelo 2695 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 228515,
    wear_curve = 0.9946,
    preferred_supplier_ids = { "SUP-001596", "SUP-004786" },
    gen_id = 1595,
}
_VP["VP-001596"] = {
    label = "AstraMotors modelo 2696 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 228652,
    wear_curve = 0.8053,
    preferred_supplier_ids = { "SUP-001597", "SUP-004789" },
    gen_id = 1596,
}
_VP["VP-001597"] = {
    label = "RioVeículos modelo 2697 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 228789,
    wear_curve = 0.8736,
    preferred_supplier_ids = { "SUP-001598", "SUP-004792" },
    gen_id = 1597,
}
_VP["VP-001598"] = {
    label = "NorteAuto modelo 2698 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 228926,
    wear_curve = 0.4000,
    preferred_supplier_ids = { "SUP-001599", "SUP-004795" },
    gen_id = 1598,
}
_VP["VP-001599"] = {
    label = "DeltaMob modelo 2699 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 229063,
    wear_curve = 0.5265,
    preferred_supplier_ids = { "SUP-001600", "SUP-004798" },
    gen_id = 1599,
}
_VP["VP-001600"] = {
    label = "OrionTruck modelo 2700 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 229200,
    wear_curve = 0.1534,
    preferred_supplier_ids = { "SUP-001601", "SUP-004801" },
    gen_id = 1600,
}
_VP["VP-001601"] = {
    label = "SigmaBike modelo 2701 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 229337,
    wear_curve = 0.5204,
    preferred_supplier_ids = { "SUP-001602", "SUP-004804" },
    gen_id = 1601,
}
_VP["VP-001602"] = {
    label = "AstraMotors modelo 2702 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 229474,
    wear_curve = 0.8077,
    preferred_supplier_ids = { "SUP-001603", "SUP-004807" },
    gen_id = 1602,
}
_VP["VP-001603"] = {
    label = "RioVeículos modelo 2703 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 229611,
    wear_curve = 0.1690,
    preferred_supplier_ids = { "SUP-001604", "SUP-004810" },
    gen_id = 1603,
}
_VP["VP-001604"] = {
    label = "NorteAuto modelo 2704 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 229748,
    wear_curve = 0.4743,
    preferred_supplier_ids = { "SUP-001605", "SUP-004813" },
    gen_id = 1604,
}
_VP["VP-001605"] = {
    label = "DeltaMob modelo 2705 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 229885,
    wear_curve = 0.5515,
    preferred_supplier_ids = { "SUP-001606", "SUP-004816" },
    gen_id = 1605,
}
_VP["VP-001606"] = {
    label = "OrionTruck modelo 2706 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 230022,
    wear_curve = 0.7875,
    preferred_supplier_ids = { "SUP-001607", "SUP-004819" },
    gen_id = 1606,
}
_VP["VP-001607"] = {
    label = "SigmaBike modelo 2707 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 230159,
    wear_curve = 0.6568,
    preferred_supplier_ids = { "SUP-001608", "SUP-004822" },
    gen_id = 1607,
}
_VP["VP-001608"] = {
    label = "AstraMotors modelo 2708 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 230296,
    wear_curve = 0.1804,
    preferred_supplier_ids = { "SUP-001609", "SUP-004825" },
    gen_id = 1608,
}
_VP["VP-001609"] = {
    label = "RioVeículos modelo 2709 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 230433,
    wear_curve = 0.2913,
    preferred_supplier_ids = { "SUP-001610", "SUP-004828" },
    gen_id = 1609,
}
_VP["VP-001610"] = {
    label = "NorteAuto modelo 2710 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 230570,
    wear_curve = 0.8568,
    preferred_supplier_ids = { "SUP-001611", "SUP-004831" },
    gen_id = 1610,
}
_VP["VP-001611"] = {
    label = "DeltaMob modelo 2711 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 230707,
    wear_curve = 0.6725,
    preferred_supplier_ids = { "SUP-001612", "SUP-004834" },
    gen_id = 1611,
}
_VP["VP-001612"] = {
    label = "OrionTruck modelo 2712 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 230844,
    wear_curve = 0.8774,
    preferred_supplier_ids = { "SUP-001613", "SUP-004837" },
    gen_id = 1612,
}
_VP["VP-001613"] = {
    label = "SigmaBike modelo 2713 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 230981,
    wear_curve = 0.4649,
    preferred_supplier_ids = { "SUP-001614", "SUP-004840" },
    gen_id = 1613,
}
_VP["VP-001614"] = {
    label = "AstraMotors modelo 2714 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 231118,
    wear_curve = 0.5593,
    preferred_supplier_ids = { "SUP-001615", "SUP-004843" },
    gen_id = 1614,
}
_VP["VP-001615"] = {
    label = "RioVeículos modelo 2715 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 231255,
    wear_curve = 0.4024,
    preferred_supplier_ids = { "SUP-001616", "SUP-004846" },
    gen_id = 1615,
}
_VP["VP-001616"] = {
    label = "NorteAuto modelo 2716 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 231392,
    wear_curve = 0.4345,
    preferred_supplier_ids = { "SUP-001617", "SUP-004849" },
    gen_id = 1616,
}
_VP["VP-001617"] = {
    label = "DeltaMob modelo 2717 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 231529,
    wear_curve = 0.7337,
    preferred_supplier_ids = { "SUP-001618", "SUP-004852" },
    gen_id = 1617,
}
_VP["VP-001618"] = {
    label = "OrionTruck modelo 2718 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 231666,
    wear_curve = 0.6211,
    preferred_supplier_ids = { "SUP-001619", "SUP-004855" },
    gen_id = 1618,
}
_VP["VP-001619"] = {
    label = "SigmaBike modelo 2719 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 231803,
    wear_curve = 0.5338,
    preferred_supplier_ids = { "SUP-001620", "SUP-004858" },
    gen_id = 1619,
}
_VP["VP-001620"] = {
    label = "AstraMotors modelo 2720 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 231940,
    wear_curve = 0.3257,
    preferred_supplier_ids = { "SUP-001621", "SUP-004861" },
    gen_id = 1620,
}
_VP["VP-001621"] = {
    label = "RioVeículos modelo 2721 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 232077,
    wear_curve = 0.4371,
    preferred_supplier_ids = { "SUP-001622", "SUP-004864" },
    gen_id = 1621,
}
_VP["VP-001622"] = {
    label = "NorteAuto modelo 2722 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 232214,
    wear_curve = 0.4458,
    preferred_supplier_ids = { "SUP-001623", "SUP-004867" },
    gen_id = 1622,
}
_VP["VP-001623"] = {
    label = "DeltaMob modelo 2723 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 232351,
    wear_curve = 0.5863,
    preferred_supplier_ids = { "SUP-001624", "SUP-004870" },
    gen_id = 1623,
}
_VP["VP-001624"] = {
    label = "OrionTruck modelo 2724 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 232488,
    wear_curve = 0.4807,
    preferred_supplier_ids = { "SUP-001625", "SUP-004873" },
    gen_id = 1624,
}
_VP["VP-001625"] = {
    label = "SigmaBike modelo 2725 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 232625,
    wear_curve = 0.5858,
    preferred_supplier_ids = { "SUP-001626", "SUP-004876" },
    gen_id = 1625,
}
_VP["VP-001626"] = {
    label = "AstraMotors modelo 2726 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 232762,
    wear_curve = 0.4189,
    preferred_supplier_ids = { "SUP-001627", "SUP-004879" },
    gen_id = 1626,
}
_VP["VP-001627"] = {
    label = "RioVeículos modelo 2727 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 232899,
    wear_curve = 0.6799,
    preferred_supplier_ids = { "SUP-001628", "SUP-004882" },
    gen_id = 1627,
}
_VP["VP-001628"] = {
    label = "NorteAuto modelo 2728 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 233036,
    wear_curve = 0.9967,
    preferred_supplier_ids = { "SUP-001629", "SUP-004885" },
    gen_id = 1628,
}
_VP["VP-001629"] = {
    label = "DeltaMob modelo 2729 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 233173,
    wear_curve = 0.2684,
    preferred_supplier_ids = { "SUP-001630", "SUP-004888" },
    gen_id = 1629,
}
_VP["VP-001630"] = {
    label = "OrionTruck modelo 2730 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 233310,
    wear_curve = 0.8519,
    preferred_supplier_ids = { "SUP-001631", "SUP-004891" },
    gen_id = 1630,
}
_VP["VP-001631"] = {
    label = "SigmaBike modelo 2731 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 233447,
    wear_curve = 0.8571,
    preferred_supplier_ids = { "SUP-001632", "SUP-004894" },
    gen_id = 1631,
}
_VP["VP-001632"] = {
    label = "AstraMotors modelo 2732 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 233584,
    wear_curve = 0.5238,
    preferred_supplier_ids = { "SUP-001633", "SUP-004897" },
    gen_id = 1632,
}
_VP["VP-001633"] = {
    label = "RioVeículos modelo 2733 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 233721,
    wear_curve = 0.3933,
    preferred_supplier_ids = { "SUP-001634", "SUP-004900" },
    gen_id = 1633,
}
_VP["VP-001634"] = {
    label = "NorteAuto modelo 2734 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 233858,
    wear_curve = 0.6625,
    preferred_supplier_ids = { "SUP-001635", "SUP-004903" },
    gen_id = 1634,
}
_VP["VP-001635"] = {
    label = "DeltaMob modelo 2735 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 233995,
    wear_curve = 0.7878,
    preferred_supplier_ids = { "SUP-001636", "SUP-004906" },
    gen_id = 1635,
}
_VP["VP-001636"] = {
    label = "OrionTruck modelo 2736 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 234132,
    wear_curve = 0.9004,
    preferred_supplier_ids = { "SUP-001637", "SUP-004909" },
    gen_id = 1636,
}
_VP["VP-001637"] = {
    label = "SigmaBike modelo 2737 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 234269,
    wear_curve = 0.7008,
    preferred_supplier_ids = { "SUP-001638", "SUP-004912" },
    gen_id = 1637,
}
_VP["VP-001638"] = {
    label = "AstraMotors modelo 2738 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 234406,
    wear_curve = 0.7963,
    preferred_supplier_ids = { "SUP-001639", "SUP-004915" },
    gen_id = 1638,
}
_VP["VP-001639"] = {
    label = "RioVeículos modelo 2739 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 234543,
    wear_curve = 0.3478,
    preferred_supplier_ids = { "SUP-001640", "SUP-004918" },
    gen_id = 1639,
}
_VP["VP-001640"] = {
    label = "NorteAuto modelo 2740 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 234680,
    wear_curve = 0.6262,
    preferred_supplier_ids = { "SUP-001641", "SUP-004921" },
    gen_id = 1640,
}
_VP["VP-001641"] = {
    label = "DeltaMob modelo 2741 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 234817,
    wear_curve = 0.8441,
    preferred_supplier_ids = { "SUP-001642", "SUP-004924" },
    gen_id = 1641,
}
_VP["VP-001642"] = {
    label = "OrionTruck modelo 2742 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 234954,
    wear_curve = 0.6111,
    preferred_supplier_ids = { "SUP-001643", "SUP-004927" },
    gen_id = 1642,
}
_VP["VP-001643"] = {
    label = "SigmaBike modelo 2743 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 235091,
    wear_curve = 0.9260,
    preferred_supplier_ids = { "SUP-001644", "SUP-004930" },
    gen_id = 1643,
}
_VP["VP-001644"] = {
    label = "AstraMotors modelo 2744 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 235228,
    wear_curve = 0.7741,
    preferred_supplier_ids = { "SUP-001645", "SUP-004933" },
    gen_id = 1644,
}
_VP["VP-001645"] = {
    label = "RioVeículos modelo 2745 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 235365,
    wear_curve = 0.3979,
    preferred_supplier_ids = { "SUP-001646", "SUP-004936" },
    gen_id = 1645,
}
_VP["VP-001646"] = {
    label = "NorteAuto modelo 2746 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 235502,
    wear_curve = 0.3039,
    preferred_supplier_ids = { "SUP-001647", "SUP-004939" },
    gen_id = 1646,
}
_VP["VP-001647"] = {
    label = "DeltaMob modelo 2747 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 235639,
    wear_curve = 0.7253,
    preferred_supplier_ids = { "SUP-001648", "SUP-004942" },
    gen_id = 1647,
}
_VP["VP-001648"] = {
    label = "OrionTruck modelo 2748 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 235776,
    wear_curve = 0.4042,
    preferred_supplier_ids = { "SUP-001649", "SUP-004945" },
    gen_id = 1648,
}
_VP["VP-001649"] = {
    label = "SigmaBike modelo 2749 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 235913,
    wear_curve = 0.5187,
    preferred_supplier_ids = { "SUP-001650", "SUP-004948" },
    gen_id = 1649,
}
_VP["VP-001650"] = {
    label = "AstraMotors modelo 2750 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 236050,
    wear_curve = 0.5774,
    preferred_supplier_ids = { "SUP-001651", "SUP-004951" },
    gen_id = 1650,
}
_VP["VP-001651"] = {
    label = "RioVeículos modelo 2751 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 236187,
    wear_curve = 0.4872,
    preferred_supplier_ids = { "SUP-001652", "SUP-004954" },
    gen_id = 1651,
}
_VP["VP-001652"] = {
    label = "NorteAuto modelo 2752 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 236324,
    wear_curve = 0.4052,
    preferred_supplier_ids = { "SUP-001653", "SUP-004957" },
    gen_id = 1652,
}
_VP["VP-001653"] = {
    label = "DeltaMob modelo 2753 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 236461,
    wear_curve = 0.8408,
    preferred_supplier_ids = { "SUP-001654", "SUP-004960" },
    gen_id = 1653,
}
_VP["VP-001654"] = {
    label = "OrionTruck modelo 2754 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 236598,
    wear_curve = 0.3010,
    preferred_supplier_ids = { "SUP-001655", "SUP-004963" },
    gen_id = 1654,
}
_VP["VP-001655"] = {
    label = "SigmaBike modelo 2755 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 236735,
    wear_curve = 0.5810,
    preferred_supplier_ids = { "SUP-001656", "SUP-004966" },
    gen_id = 1655,
}
_VP["VP-001656"] = {
    label = "AstraMotors modelo 2756 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 236872,
    wear_curve = 0.9023,
    preferred_supplier_ids = { "SUP-001657", "SUP-004969" },
    gen_id = 1656,
}
_VP["VP-001657"] = {
    label = "RioVeículos modelo 2757 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 237009,
    wear_curve = 0.7064,
    preferred_supplier_ids = { "SUP-001658", "SUP-004972" },
    gen_id = 1657,
}
_VP["VP-001658"] = {
    label = "NorteAuto modelo 2758 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 237146,
    wear_curve = 0.7871,
    preferred_supplier_ids = { "SUP-001659", "SUP-004975" },
    gen_id = 1658,
}
_VP["VP-001659"] = {
    label = "DeltaMob modelo 2759 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 237283,
    wear_curve = 0.3614,
    preferred_supplier_ids = { "SUP-001660", "SUP-004978" },
    gen_id = 1659,
}
_VP["VP-001660"] = {
    label = "OrionTruck modelo 2760 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 237420,
    wear_curve = 0.5318,
    preferred_supplier_ids = { "SUP-001661", "SUP-004981" },
    gen_id = 1660,
}
_VP["VP-001661"] = {
    label = "SigmaBike modelo 2761 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 237557,
    wear_curve = 0.4396,
    preferred_supplier_ids = { "SUP-001662", "SUP-004984" },
    gen_id = 1661,
}
_VP["VP-001662"] = {
    label = "AstraMotors modelo 2762 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 237694,
    wear_curve = 0.8641,
    preferred_supplier_ids = { "SUP-001663", "SUP-004987" },
    gen_id = 1662,
}
_VP["VP-001663"] = {
    label = "RioVeículos modelo 2763 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 237831,
    wear_curve = 0.7116,
    preferred_supplier_ids = { "SUP-001664", "SUP-004990" },
    gen_id = 1663,
}
_VP["VP-001664"] = {
    label = "NorteAuto modelo 2764 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 237968,
    wear_curve = 0.9957,
    preferred_supplier_ids = { "SUP-001665", "SUP-004993" },
    gen_id = 1664,
}
_VP["VP-001665"] = {
    label = "DeltaMob modelo 2765 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 238105,
    wear_curve = 0.2872,
    preferred_supplier_ids = { "SUP-001666", "SUP-004996" },
    gen_id = 1665,
}
_VP["VP-001666"] = {
    label = "OrionTruck modelo 2766 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 238242,
    wear_curve = 0.2912,
    preferred_supplier_ids = { "SUP-001667", "SUP-004999" },
    gen_id = 1666,
}
_VP["VP-001667"] = {
    label = "SigmaBike modelo 2767 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 238379,
    wear_curve = 0.6997,
    preferred_supplier_ids = { "SUP-001668", "SUP-000002" },
    gen_id = 1667,
}
_VP["VP-001668"] = {
    label = "AstraMotors modelo 2768 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 238516,
    wear_curve = 0.9722,
    preferred_supplier_ids = { "SUP-001669", "SUP-000005" },
    gen_id = 1668,
}
_VP["VP-001669"] = {
    label = "RioVeículos modelo 2769 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 238653,
    wear_curve = 0.8107,
    preferred_supplier_ids = { "SUP-001670", "SUP-000008" },
    gen_id = 1669,
}
_VP["VP-001670"] = {
    label = "NorteAuto modelo 2770 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 238790,
    wear_curve = 0.3712,
    preferred_supplier_ids = { "SUP-001671", "SUP-000011" },
    gen_id = 1670,
}
_VP["VP-001671"] = {
    label = "DeltaMob modelo 2771 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 238927,
    wear_curve = 0.7408,
    preferred_supplier_ids = { "SUP-001672", "SUP-000014" },
    gen_id = 1671,
}
_VP["VP-001672"] = {
    label = "OrionTruck modelo 2772 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 239064,
    wear_curve = 0.2207,
    preferred_supplier_ids = { "SUP-001673", "SUP-000017" },
    gen_id = 1672,
}
_VP["VP-001673"] = {
    label = "SigmaBike modelo 2773 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 239201,
    wear_curve = 0.2288,
    preferred_supplier_ids = { "SUP-001674", "SUP-000020" },
    gen_id = 1673,
}
_VP["VP-001674"] = {
    label = "AstraMotors modelo 2774 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 239338,
    wear_curve = 0.1820,
    preferred_supplier_ids = { "SUP-001675", "SUP-000023" },
    gen_id = 1674,
}
_VP["VP-001675"] = {
    label = "RioVeículos modelo 2775 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 239475,
    wear_curve = 0.2186,
    preferred_supplier_ids = { "SUP-001676", "SUP-000026" },
    gen_id = 1675,
}
_VP["VP-001676"] = {
    label = "NorteAuto modelo 2776 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 239612,
    wear_curve = 0.9315,
    preferred_supplier_ids = { "SUP-001677", "SUP-000029" },
    gen_id = 1676,
}
_VP["VP-001677"] = {
    label = "DeltaMob modelo 2777 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 239749,
    wear_curve = 0.5688,
    preferred_supplier_ids = { "SUP-001678", "SUP-000032" },
    gen_id = 1677,
}
_VP["VP-001678"] = {
    label = "OrionTruck modelo 2778 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 239886,
    wear_curve = 0.6571,
    preferred_supplier_ids = { "SUP-001679", "SUP-000035" },
    gen_id = 1678,
}
_VP["VP-001679"] = {
    label = "SigmaBike modelo 2779 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 240023,
    wear_curve = 0.6815,
    preferred_supplier_ids = { "SUP-001680", "SUP-000038" },
    gen_id = 1679,
}
_VP["VP-001680"] = {
    label = "AstraMotors modelo 2780 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 240160,
    wear_curve = 0.3836,
    preferred_supplier_ids = { "SUP-001681", "SUP-000041" },
    gen_id = 1680,
}
_VP["VP-001681"] = {
    label = "RioVeículos modelo 2781 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 240297,
    wear_curve = 0.7000,
    preferred_supplier_ids = { "SUP-001682", "SUP-000044" },
    gen_id = 1681,
}
_VP["VP-001682"] = {
    label = "NorteAuto modelo 2782 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 240434,
    wear_curve = 0.9120,
    preferred_supplier_ids = { "SUP-001683", "SUP-000047" },
    gen_id = 1682,
}
_VP["VP-001683"] = {
    label = "DeltaMob modelo 2783 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 240571,
    wear_curve = 0.4450,
    preferred_supplier_ids = { "SUP-001684", "SUP-000050" },
    gen_id = 1683,
}
_VP["VP-001684"] = {
    label = "OrionTruck modelo 2784 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 240708,
    wear_curve = 0.6372,
    preferred_supplier_ids = { "SUP-001685", "SUP-000053" },
    gen_id = 1684,
}
_VP["VP-001685"] = {
    label = "SigmaBike modelo 2785 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 240845,
    wear_curve = 0.4357,
    preferred_supplier_ids = { "SUP-001686", "SUP-000056" },
    gen_id = 1685,
}
_VP["VP-001686"] = {
    label = "AstraMotors modelo 2786 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 240982,
    wear_curve = 0.3208,
    preferred_supplier_ids = { "SUP-001687", "SUP-000059" },
    gen_id = 1686,
}
_VP["VP-001687"] = {
    label = "RioVeículos modelo 2787 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 241119,
    wear_curve = 0.6385,
    preferred_supplier_ids = { "SUP-001688", "SUP-000062" },
    gen_id = 1687,
}
_VP["VP-001688"] = {
    label = "NorteAuto modelo 2788 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 241256,
    wear_curve = 0.8474,
    preferred_supplier_ids = { "SUP-001689", "SUP-000065" },
    gen_id = 1688,
}
_VP["VP-001689"] = {
    label = "DeltaMob modelo 2789 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 241393,
    wear_curve = 0.9990,
    preferred_supplier_ids = { "SUP-001690", "SUP-000068" },
    gen_id = 1689,
}
_VP["VP-001690"] = {
    label = "OrionTruck modelo 2790 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 241530,
    wear_curve = 0.5154,
    preferred_supplier_ids = { "SUP-001691", "SUP-000071" },
    gen_id = 1690,
}
_VP["VP-001691"] = {
    label = "SigmaBike modelo 2791 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 241667,
    wear_curve = 0.4523,
    preferred_supplier_ids = { "SUP-001692", "SUP-000074" },
    gen_id = 1691,
}
_VP["VP-001692"] = {
    label = "AstraMotors modelo 2792 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 241804,
    wear_curve = 0.9024,
    preferred_supplier_ids = { "SUP-001693", "SUP-000077" },
    gen_id = 1692,
}
_VP["VP-001693"] = {
    label = "RioVeículos modelo 2793 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 241941,
    wear_curve = 0.9644,
    preferred_supplier_ids = { "SUP-001694", "SUP-000080" },
    gen_id = 1693,
}
_VP["VP-001694"] = {
    label = "NorteAuto modelo 2794 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 242078,
    wear_curve = 0.8367,
    preferred_supplier_ids = { "SUP-001695", "SUP-000083" },
    gen_id = 1694,
}
_VP["VP-001695"] = {
    label = "DeltaMob modelo 2795 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 242215,
    wear_curve = 0.3519,
    preferred_supplier_ids = { "SUP-001696", "SUP-000086" },
    gen_id = 1695,
}
_VP["VP-001696"] = {
    label = "OrionTruck modelo 2796 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 242352,
    wear_curve = 0.2467,
    preferred_supplier_ids = { "SUP-001697", "SUP-000089" },
    gen_id = 1696,
}
_VP["VP-001697"] = {
    label = "SigmaBike modelo 2797 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 242489,
    wear_curve = 0.5976,
    preferred_supplier_ids = { "SUP-001698", "SUP-000092" },
    gen_id = 1697,
}
_VP["VP-001698"] = {
    label = "AstraMotors modelo 2798 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 242626,
    wear_curve = 0.5339,
    preferred_supplier_ids = { "SUP-001699", "SUP-000095" },
    gen_id = 1698,
}
_VP["VP-001699"] = {
    label = "RioVeículos modelo 2799 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 242763,
    wear_curve = 0.7859,
    preferred_supplier_ids = { "SUP-001700", "SUP-000098" },
    gen_id = 1699,
}
_VP["VP-001700"] = {
    label = "NorteAuto modelo 2800 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 242900,
    wear_curve = 0.6175,
    preferred_supplier_ids = { "SUP-001701", "SUP-000101" },
    gen_id = 1700,
}
_VP["VP-001701"] = {
    label = "DeltaMob modelo 2801 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 243037,
    wear_curve = 0.5280,
    preferred_supplier_ids = { "SUP-001702", "SUP-000104" },
    gen_id = 1701,
}
_VP["VP-001702"] = {
    label = "OrionTruck modelo 2802 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 243174,
    wear_curve = 0.8189,
    preferred_supplier_ids = { "SUP-001703", "SUP-000107" },
    gen_id = 1702,
}
_VP["VP-001703"] = {
    label = "SigmaBike modelo 2803 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 243311,
    wear_curve = 0.2817,
    preferred_supplier_ids = { "SUP-001704", "SUP-000110" },
    gen_id = 1703,
}
_VP["VP-001704"] = {
    label = "AstraMotors modelo 2804 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 243448,
    wear_curve = 0.3809,
    preferred_supplier_ids = { "SUP-001705", "SUP-000113" },
    gen_id = 1704,
}
_VP["VP-001705"] = {
    label = "RioVeículos modelo 2805 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 243585,
    wear_curve = 0.4515,
    preferred_supplier_ids = { "SUP-001706", "SUP-000116" },
    gen_id = 1705,
}
_VP["VP-001706"] = {
    label = "NorteAuto modelo 2806 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 243722,
    wear_curve = 0.9443,
    preferred_supplier_ids = { "SUP-001707", "SUP-000119" },
    gen_id = 1706,
}
_VP["VP-001707"] = {
    label = "DeltaMob modelo 2807 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 243859,
    wear_curve = 0.4308,
    preferred_supplier_ids = { "SUP-001708", "SUP-000122" },
    gen_id = 1707,
}
_VP["VP-001708"] = {
    label = "OrionTruck modelo 2808 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 243996,
    wear_curve = 0.6697,
    preferred_supplier_ids = { "SUP-001709", "SUP-000125" },
    gen_id = 1708,
}
_VP["VP-001709"] = {
    label = "SigmaBike modelo 2809 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 244133,
    wear_curve = 0.3754,
    preferred_supplier_ids = { "SUP-001710", "SUP-000128" },
    gen_id = 1709,
}
_VP["VP-001710"] = {
    label = "AstraMotors modelo 2810 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 244270,
    wear_curve = 0.5384,
    preferred_supplier_ids = { "SUP-001711", "SUP-000131" },
    gen_id = 1710,
}
_VP["VP-001711"] = {
    label = "RioVeículos modelo 2811 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 244407,
    wear_curve = 0.8318,
    preferred_supplier_ids = { "SUP-001712", "SUP-000134" },
    gen_id = 1711,
}
_VP["VP-001712"] = {
    label = "NorteAuto modelo 2812 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 244544,
    wear_curve = 0.3853,
    preferred_supplier_ids = { "SUP-001713", "SUP-000137" },
    gen_id = 1712,
}
_VP["VP-001713"] = {
    label = "DeltaMob modelo 2813 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 244681,
    wear_curve = 0.3254,
    preferred_supplier_ids = { "SUP-001714", "SUP-000140" },
    gen_id = 1713,
}
_VP["VP-001714"] = {
    label = "OrionTruck modelo 2814 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 244818,
    wear_curve = 0.2403,
    preferred_supplier_ids = { "SUP-001715", "SUP-000143" },
    gen_id = 1714,
}
_VP["VP-001715"] = {
    label = "SigmaBike modelo 2815 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 244955,
    wear_curve = 0.4185,
    preferred_supplier_ids = { "SUP-001716", "SUP-000146" },
    gen_id = 1715,
}
_VP["VP-001716"] = {
    label = "AstraMotors modelo 2816 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 245092,
    wear_curve = 0.6905,
    preferred_supplier_ids = { "SUP-001717", "SUP-000149" },
    gen_id = 1716,
}
_VP["VP-001717"] = {
    label = "RioVeículos modelo 2817 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 245229,
    wear_curve = 0.6021,
    preferred_supplier_ids = { "SUP-001718", "SUP-000152" },
    gen_id = 1717,
}
_VP["VP-001718"] = {
    label = "NorteAuto modelo 2818 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 245366,
    wear_curve = 0.5435,
    preferred_supplier_ids = { "SUP-001719", "SUP-000155" },
    gen_id = 1718,
}
_VP["VP-001719"] = {
    label = "DeltaMob modelo 2819 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 245503,
    wear_curve = 0.5658,
    preferred_supplier_ids = { "SUP-001720", "SUP-000158" },
    gen_id = 1719,
}
_VP["VP-001720"] = {
    label = "OrionTruck modelo 2820 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 245640,
    wear_curve = 0.7303,
    preferred_supplier_ids = { "SUP-001721", "SUP-000161" },
    gen_id = 1720,
}
_VP["VP-001721"] = {
    label = "SigmaBike modelo 2821 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 245777,
    wear_curve = 0.6340,
    preferred_supplier_ids = { "SUP-001722", "SUP-000164" },
    gen_id = 1721,
}
_VP["VP-001722"] = {
    label = "AstraMotors modelo 2822 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 245914,
    wear_curve = 0.6665,
    preferred_supplier_ids = { "SUP-001723", "SUP-000167" },
    gen_id = 1722,
}
_VP["VP-001723"] = {
    label = "RioVeículos modelo 2823 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 246051,
    wear_curve = 0.4758,
    preferred_supplier_ids = { "SUP-001724", "SUP-000170" },
    gen_id = 1723,
}
_VP["VP-001724"] = {
    label = "NorteAuto modelo 2824 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 246188,
    wear_curve = 0.5322,
    preferred_supplier_ids = { "SUP-001725", "SUP-000173" },
    gen_id = 1724,
}
_VP["VP-001725"] = {
    label = "DeltaMob modelo 2825 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 246325,
    wear_curve = 0.6362,
    preferred_supplier_ids = { "SUP-001726", "SUP-000176" },
    gen_id = 1725,
}
_VP["VP-001726"] = {
    label = "OrionTruck modelo 2826 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 246462,
    wear_curve = 0.3332,
    preferred_supplier_ids = { "SUP-001727", "SUP-000179" },
    gen_id = 1726,
}
_VP["VP-001727"] = {
    label = "SigmaBike modelo 2827 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 246599,
    wear_curve = 0.2127,
    preferred_supplier_ids = { "SUP-001728", "SUP-000182" },
    gen_id = 1727,
}
_VP["VP-001728"] = {
    label = "AstraMotors modelo 2828 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 246736,
    wear_curve = 0.8993,
    preferred_supplier_ids = { "SUP-001729", "SUP-000185" },
    gen_id = 1728,
}
_VP["VP-001729"] = {
    label = "RioVeículos modelo 2829 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 246873,
    wear_curve = 0.2992,
    preferred_supplier_ids = { "SUP-001730", "SUP-000188" },
    gen_id = 1729,
}
_VP["VP-001730"] = {
    label = "NorteAuto modelo 2830 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 247010,
    wear_curve = 0.7566,
    preferred_supplier_ids = { "SUP-001731", "SUP-000191" },
    gen_id = 1730,
}
_VP["VP-001731"] = {
    label = "DeltaMob modelo 2831 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 247147,
    wear_curve = 0.6130,
    preferred_supplier_ids = { "SUP-001732", "SUP-000194" },
    gen_id = 1731,
}
_VP["VP-001732"] = {
    label = "OrionTruck modelo 2832 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 247284,
    wear_curve = 0.5213,
    preferred_supplier_ids = { "SUP-001733", "SUP-000197" },
    gen_id = 1732,
}
_VP["VP-001733"] = {
    label = "SigmaBike modelo 2833 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 247421,
    wear_curve = 0.8410,
    preferred_supplier_ids = { "SUP-001734", "SUP-000200" },
    gen_id = 1733,
}
_VP["VP-001734"] = {
    label = "AstraMotors modelo 2834 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 247558,
    wear_curve = 0.4842,
    preferred_supplier_ids = { "SUP-001735", "SUP-000203" },
    gen_id = 1734,
}
_VP["VP-001735"] = {
    label = "RioVeículos modelo 2835 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 247695,
    wear_curve = 0.5638,
    preferred_supplier_ids = { "SUP-001736", "SUP-000206" },
    gen_id = 1735,
}
_VP["VP-001736"] = {
    label = "NorteAuto modelo 2836 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 247832,
    wear_curve = 0.9435,
    preferred_supplier_ids = { "SUP-001737", "SUP-000209" },
    gen_id = 1736,
}
_VP["VP-001737"] = {
    label = "DeltaMob modelo 2837 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 247969,
    wear_curve = 0.8221,
    preferred_supplier_ids = { "SUP-001738", "SUP-000212" },
    gen_id = 1737,
}
_VP["VP-001738"] = {
    label = "OrionTruck modelo 2838 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 248106,
    wear_curve = 0.6735,
    preferred_supplier_ids = { "SUP-001739", "SUP-000215" },
    gen_id = 1738,
}
_VP["VP-001739"] = {
    label = "SigmaBike modelo 2839 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 248243,
    wear_curve = 0.8535,
    preferred_supplier_ids = { "SUP-001740", "SUP-000218" },
    gen_id = 1739,
}
_VP["VP-001740"] = {
    label = "AstraMotors modelo 2840 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 248380,
    wear_curve = 0.4910,
    preferred_supplier_ids = { "SUP-001741", "SUP-000221" },
    gen_id = 1740,
}
_VP["VP-001741"] = {
    label = "RioVeículos modelo 2841 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 248517,
    wear_curve = 0.9822,
    preferred_supplier_ids = { "SUP-001742", "SUP-000224" },
    gen_id = 1741,
}
_VP["VP-001742"] = {
    label = "NorteAuto modelo 2842 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 248654,
    wear_curve = 0.5803,
    preferred_supplier_ids = { "SUP-001743", "SUP-000227" },
    gen_id = 1742,
}
_VP["VP-001743"] = {
    label = "DeltaMob modelo 2843 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 248791,
    wear_curve = 0.2096,
    preferred_supplier_ids = { "SUP-001744", "SUP-000230" },
    gen_id = 1743,
}
_VP["VP-001744"] = {
    label = "OrionTruck modelo 2844 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 248928,
    wear_curve = 0.9663,
    preferred_supplier_ids = { "SUP-001745", "SUP-000233" },
    gen_id = 1744,
}
_VP["VP-001745"] = {
    label = "SigmaBike modelo 2845 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 249065,
    wear_curve = 0.4212,
    preferred_supplier_ids = { "SUP-001746", "SUP-000236" },
    gen_id = 1745,
}
_VP["VP-001746"] = {
    label = "AstraMotors modelo 2846 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 249202,
    wear_curve = 0.8037,
    preferred_supplier_ids = { "SUP-001747", "SUP-000239" },
    gen_id = 1746,
}
_VP["VP-001747"] = {
    label = "RioVeículos modelo 2847 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 249339,
    wear_curve = 0.8041,
    preferred_supplier_ids = { "SUP-001748", "SUP-000242" },
    gen_id = 1747,
}
_VP["VP-001748"] = {
    label = "NorteAuto modelo 2848 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 249476,
    wear_curve = 0.9912,
    preferred_supplier_ids = { "SUP-001749", "SUP-000245" },
    gen_id = 1748,
}
_VP["VP-001749"] = {
    label = "DeltaMob modelo 2849 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 249613,
    wear_curve = 0.6614,
    preferred_supplier_ids = { "SUP-001750", "SUP-000248" },
    gen_id = 1749,
}
_VP["VP-001750"] = {
    label = "OrionTruck modelo 2850 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 249750,
    wear_curve = 0.5956,
    preferred_supplier_ids = { "SUP-001751", "SUP-000251" },
    gen_id = 1750,
}
_VP["VP-001751"] = {
    label = "SigmaBike modelo 2851 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 249887,
    wear_curve = 0.7677,
    preferred_supplier_ids = { "SUP-001752", "SUP-000254" },
    gen_id = 1751,
}
_VP["VP-001752"] = {
    label = "AstraMotors modelo 2852 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 250024,
    wear_curve = 0.2349,
    preferred_supplier_ids = { "SUP-001753", "SUP-000257" },
    gen_id = 1752,
}
_VP["VP-001753"] = {
    label = "RioVeículos modelo 2853 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 250161,
    wear_curve = 0.3358,
    preferred_supplier_ids = { "SUP-001754", "SUP-000260" },
    gen_id = 1753,
}
_VP["VP-001754"] = {
    label = "NorteAuto modelo 2854 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 250298,
    wear_curve = 0.4038,
    preferred_supplier_ids = { "SUP-001755", "SUP-000263" },
    gen_id = 1754,
}
_VP["VP-001755"] = {
    label = "DeltaMob modelo 2855 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 250435,
    wear_curve = 0.7652,
    preferred_supplier_ids = { "SUP-001756", "SUP-000266" },
    gen_id = 1755,
}
_VP["VP-001756"] = {
    label = "OrionTruck modelo 2856 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 250572,
    wear_curve = 0.7271,
    preferred_supplier_ids = { "SUP-001757", "SUP-000269" },
    gen_id = 1756,
}
_VP["VP-001757"] = {
    label = "SigmaBike modelo 2857 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 250709,
    wear_curve = 0.8652,
    preferred_supplier_ids = { "SUP-001758", "SUP-000272" },
    gen_id = 1757,
}
_VP["VP-001758"] = {
    label = "AstraMotors modelo 2858 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 250846,
    wear_curve = 0.6304,
    preferred_supplier_ids = { "SUP-001759", "SUP-000275" },
    gen_id = 1758,
}
_VP["VP-001759"] = {
    label = "RioVeículos modelo 2859 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 250983,
    wear_curve = 0.9013,
    preferred_supplier_ids = { "SUP-001760", "SUP-000278" },
    gen_id = 1759,
}
_VP["VP-001760"] = {
    label = "NorteAuto modelo 2860 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 251120,
    wear_curve = 0.1701,
    preferred_supplier_ids = { "SUP-001761", "SUP-000281" },
    gen_id = 1760,
}
_VP["VP-001761"] = {
    label = "DeltaMob modelo 2861 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 251257,
    wear_curve = 0.3453,
    preferred_supplier_ids = { "SUP-001762", "SUP-000284" },
    gen_id = 1761,
}
_VP["VP-001762"] = {
    label = "OrionTruck modelo 2862 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 251394,
    wear_curve = 0.5510,
    preferred_supplier_ids = { "SUP-001763", "SUP-000287" },
    gen_id = 1762,
}
_VP["VP-001763"] = {
    label = "SigmaBike modelo 2863 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 251531,
    wear_curve = 0.9823,
    preferred_supplier_ids = { "SUP-001764", "SUP-000290" },
    gen_id = 1763,
}
_VP["VP-001764"] = {
    label = "AstraMotors modelo 2864 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 251668,
    wear_curve = 0.4256,
    preferred_supplier_ids = { "SUP-001765", "SUP-000293" },
    gen_id = 1764,
}
_VP["VP-001765"] = {
    label = "RioVeículos modelo 2865 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 251805,
    wear_curve = 0.6795,
    preferred_supplier_ids = { "SUP-001766", "SUP-000296" },
    gen_id = 1765,
}
_VP["VP-001766"] = {
    label = "NorteAuto modelo 2866 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 251942,
    wear_curve = 0.7004,
    preferred_supplier_ids = { "SUP-001767", "SUP-000299" },
    gen_id = 1766,
}
_VP["VP-001767"] = {
    label = "DeltaMob modelo 2867 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 252079,
    wear_curve = 0.3783,
    preferred_supplier_ids = { "SUP-001768", "SUP-000302" },
    gen_id = 1767,
}
_VP["VP-001768"] = {
    label = "OrionTruck modelo 2868 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 252216,
    wear_curve = 0.1644,
    preferred_supplier_ids = { "SUP-001769", "SUP-000305" },
    gen_id = 1768,
}
_VP["VP-001769"] = {
    label = "SigmaBike modelo 2869 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 252353,
    wear_curve = 0.5044,
    preferred_supplier_ids = { "SUP-001770", "SUP-000308" },
    gen_id = 1769,
}
_VP["VP-001770"] = {
    label = "AstraMotors modelo 2870 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 252490,
    wear_curve = 0.3459,
    preferred_supplier_ids = { "SUP-001771", "SUP-000311" },
    gen_id = 1770,
}
_VP["VP-001771"] = {
    label = "RioVeículos modelo 2871 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 252627,
    wear_curve = 0.7377,
    preferred_supplier_ids = { "SUP-001772", "SUP-000314" },
    gen_id = 1771,
}
_VP["VP-001772"] = {
    label = "NorteAuto modelo 2872 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 252764,
    wear_curve = 0.3799,
    preferred_supplier_ids = { "SUP-001773", "SUP-000317" },
    gen_id = 1772,
}
_VP["VP-001773"] = {
    label = "DeltaMob modelo 2873 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 252901,
    wear_curve = 0.2197,
    preferred_supplier_ids = { "SUP-001774", "SUP-000320" },
    gen_id = 1773,
}
_VP["VP-001774"] = {
    label = "OrionTruck modelo 2874 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 253038,
    wear_curve = 0.5788,
    preferred_supplier_ids = { "SUP-001775", "SUP-000323" },
    gen_id = 1774,
}
_VP["VP-001775"] = {
    label = "SigmaBike modelo 2875 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 253175,
    wear_curve = 0.5711,
    preferred_supplier_ids = { "SUP-001776", "SUP-000326" },
    gen_id = 1775,
}
_VP["VP-001776"] = {
    label = "AstraMotors modelo 2876 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 253312,
    wear_curve = 0.6783,
    preferred_supplier_ids = { "SUP-001777", "SUP-000329" },
    gen_id = 1776,
}
_VP["VP-001777"] = {
    label = "RioVeículos modelo 2877 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 253449,
    wear_curve = 0.5929,
    preferred_supplier_ids = { "SUP-001778", "SUP-000332" },
    gen_id = 1777,
}
_VP["VP-001778"] = {
    label = "NorteAuto modelo 2878 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 253586,
    wear_curve = 0.8193,
    preferred_supplier_ids = { "SUP-001779", "SUP-000335" },
    gen_id = 1778,
}
_VP["VP-001779"] = {
    label = "DeltaMob modelo 2879 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 253723,
    wear_curve = 0.6835,
    preferred_supplier_ids = { "SUP-001780", "SUP-000338" },
    gen_id = 1779,
}
_VP["VP-001780"] = {
    label = "OrionTruck modelo 2880 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 253860,
    wear_curve = 0.1722,
    preferred_supplier_ids = { "SUP-001781", "SUP-000341" },
    gen_id = 1780,
}
_VP["VP-001781"] = {
    label = "SigmaBike modelo 2881 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 253997,
    wear_curve = 0.4265,
    preferred_supplier_ids = { "SUP-001782", "SUP-000344" },
    gen_id = 1781,
}
_VP["VP-001782"] = {
    label = "AstraMotors modelo 2882 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 254134,
    wear_curve = 0.5421,
    preferred_supplier_ids = { "SUP-001783", "SUP-000347" },
    gen_id = 1782,
}
_VP["VP-001783"] = {
    label = "RioVeículos modelo 2883 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 254271,
    wear_curve = 0.5466,
    preferred_supplier_ids = { "SUP-001784", "SUP-000350" },
    gen_id = 1783,
}
_VP["VP-001784"] = {
    label = "NorteAuto modelo 2884 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 254408,
    wear_curve = 0.8646,
    preferred_supplier_ids = { "SUP-001785", "SUP-000353" },
    gen_id = 1784,
}
_VP["VP-001785"] = {
    label = "DeltaMob modelo 2885 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 254545,
    wear_curve = 0.6826,
    preferred_supplier_ids = { "SUP-001786", "SUP-000356" },
    gen_id = 1785,
}
_VP["VP-001786"] = {
    label = "OrionTruck modelo 2886 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 254682,
    wear_curve = 0.3914,
    preferred_supplier_ids = { "SUP-001787", "SUP-000359" },
    gen_id = 1786,
}
_VP["VP-001787"] = {
    label = "SigmaBike modelo 2887 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 254819,
    wear_curve = 0.7641,
    preferred_supplier_ids = { "SUP-001788", "SUP-000362" },
    gen_id = 1787,
}
_VP["VP-001788"] = {
    label = "AstraMotors modelo 2888 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 254956,
    wear_curve = 0.5749,
    preferred_supplier_ids = { "SUP-001789", "SUP-000365" },
    gen_id = 1788,
}
_VP["VP-001789"] = {
    label = "RioVeículos modelo 2889 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 255093,
    wear_curve = 0.5777,
    preferred_supplier_ids = { "SUP-001790", "SUP-000368" },
    gen_id = 1789,
}
_VP["VP-001790"] = {
    label = "NorteAuto modelo 2890 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 255230,
    wear_curve = 0.4684,
    preferred_supplier_ids = { "SUP-001791", "SUP-000371" },
    gen_id = 1790,
}
_VP["VP-001791"] = {
    label = "DeltaMob modelo 2891 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 255367,
    wear_curve = 0.6476,
    preferred_supplier_ids = { "SUP-001792", "SUP-000374" },
    gen_id = 1791,
}
_VP["VP-001792"] = {
    label = "OrionTruck modelo 2892 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 255504,
    wear_curve = 0.9207,
    preferred_supplier_ids = { "SUP-001793", "SUP-000377" },
    gen_id = 1792,
}
_VP["VP-001793"] = {
    label = "SigmaBike modelo 2893 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 255641,
    wear_curve = 0.2684,
    preferred_supplier_ids = { "SUP-001794", "SUP-000380" },
    gen_id = 1793,
}
_VP["VP-001794"] = {
    label = "AstraMotors modelo 2894 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 255778,
    wear_curve = 0.5845,
    preferred_supplier_ids = { "SUP-001795", "SUP-000383" },
    gen_id = 1794,
}
_VP["VP-001795"] = {
    label = "RioVeículos modelo 2895 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 255915,
    wear_curve = 0.5306,
    preferred_supplier_ids = { "SUP-001796", "SUP-000386" },
    gen_id = 1795,
}
_VP["VP-001796"] = {
    label = "NorteAuto modelo 2896 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 256052,
    wear_curve = 0.8293,
    preferred_supplier_ids = { "SUP-001797", "SUP-000389" },
    gen_id = 1796,
}
_VP["VP-001797"] = {
    label = "DeltaMob modelo 2897 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 256189,
    wear_curve = 0.3145,
    preferred_supplier_ids = { "SUP-001798", "SUP-000392" },
    gen_id = 1797,
}
_VP["VP-001798"] = {
    label = "OrionTruck modelo 2898 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 256326,
    wear_curve = 0.6889,
    preferred_supplier_ids = { "SUP-001799", "SUP-000395" },
    gen_id = 1798,
}
_VP["VP-001799"] = {
    label = "SigmaBike modelo 2899 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 256463,
    wear_curve = 0.8139,
    preferred_supplier_ids = { "SUP-001800", "SUP-000398" },
    gen_id = 1799,
}
_VP["VP-001800"] = {
    label = "AstraMotors modelo 2000 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 256600,
    wear_curve = 0.6694,
    preferred_supplier_ids = { "SUP-001801", "SUP-000401" },
    gen_id = 1800,
}
_VP["VP-001801"] = {
    label = "RioVeículos modelo 2001 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 256737,
    wear_curve = 0.2160,
    preferred_supplier_ids = { "SUP-001802", "SUP-000404" },
    gen_id = 1801,
}
_VP["VP-001802"] = {
    label = "NorteAuto modelo 2002 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 256874,
    wear_curve = 0.7384,
    preferred_supplier_ids = { "SUP-001803", "SUP-000407" },
    gen_id = 1802,
}
_VP["VP-001803"] = {
    label = "DeltaMob modelo 2003 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 257011,
    wear_curve = 0.9945,
    preferred_supplier_ids = { "SUP-001804", "SUP-000410" },
    gen_id = 1803,
}
_VP["VP-001804"] = {
    label = "OrionTruck modelo 2004 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 257148,
    wear_curve = 0.6526,
    preferred_supplier_ids = { "SUP-001805", "SUP-000413" },
    gen_id = 1804,
}
_VP["VP-001805"] = {
    label = "SigmaBike modelo 2005 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 257285,
    wear_curve = 0.2350,
    preferred_supplier_ids = { "SUP-001806", "SUP-000416" },
    gen_id = 1805,
}
_VP["VP-001806"] = {
    label = "AstraMotors modelo 2006 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 257422,
    wear_curve = 0.3430,
    preferred_supplier_ids = { "SUP-001807", "SUP-000419" },
    gen_id = 1806,
}
_VP["VP-001807"] = {
    label = "RioVeículos modelo 2007 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 257559,
    wear_curve = 0.4450,
    preferred_supplier_ids = { "SUP-001808", "SUP-000422" },
    gen_id = 1807,
}
_VP["VP-001808"] = {
    label = "NorteAuto modelo 2008 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 257696,
    wear_curve = 0.3174,
    preferred_supplier_ids = { "SUP-001809", "SUP-000425" },
    gen_id = 1808,
}
_VP["VP-001809"] = {
    label = "DeltaMob modelo 2009 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 257833,
    wear_curve = 0.7249,
    preferred_supplier_ids = { "SUP-001810", "SUP-000428" },
    gen_id = 1809,
}
_VP["VP-001810"] = {
    label = "OrionTruck modelo 2010 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 257970,
    wear_curve = 0.4300,
    preferred_supplier_ids = { "SUP-001811", "SUP-000431" },
    gen_id = 1810,
}
_VP["VP-001811"] = {
    label = "SigmaBike modelo 2011 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 258107,
    wear_curve = 0.3734,
    preferred_supplier_ids = { "SUP-001812", "SUP-000434" },
    gen_id = 1811,
}
_VP["VP-001812"] = {
    label = "AstraMotors modelo 2012 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 258244,
    wear_curve = 0.1735,
    preferred_supplier_ids = { "SUP-001813", "SUP-000437" },
    gen_id = 1812,
}
_VP["VP-001813"] = {
    label = "RioVeículos modelo 2013 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 258381,
    wear_curve = 0.2018,
    preferred_supplier_ids = { "SUP-001814", "SUP-000440" },
    gen_id = 1813,
}
_VP["VP-001814"] = {
    label = "NorteAuto modelo 2014 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 258518,
    wear_curve = 0.8860,
    preferred_supplier_ids = { "SUP-001815", "SUP-000443" },
    gen_id = 1814,
}
_VP["VP-001815"] = {
    label = "DeltaMob modelo 2015 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 258655,
    wear_curve = 0.6527,
    preferred_supplier_ids = { "SUP-001816", "SUP-000446" },
    gen_id = 1815,
}
_VP["VP-001816"] = {
    label = "OrionTruck modelo 2016 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 258792,
    wear_curve = 0.8422,
    preferred_supplier_ids = { "SUP-001817", "SUP-000449" },
    gen_id = 1816,
}
_VP["VP-001817"] = {
    label = "SigmaBike modelo 2017 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 258929,
    wear_curve = 0.4067,
    preferred_supplier_ids = { "SUP-001818", "SUP-000452" },
    gen_id = 1817,
}
_VP["VP-001818"] = {
    label = "AstraMotors modelo 2018 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 259066,
    wear_curve = 0.2443,
    preferred_supplier_ids = { "SUP-001819", "SUP-000455" },
    gen_id = 1818,
}
_VP["VP-001819"] = {
    label = "RioVeículos modelo 2019 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 259203,
    wear_curve = 0.7263,
    preferred_supplier_ids = { "SUP-001820", "SUP-000458" },
    gen_id = 1819,
}
_VP["VP-001820"] = {
    label = "NorteAuto modelo 2020 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 259340,
    wear_curve = 0.3456,
    preferred_supplier_ids = { "SUP-001821", "SUP-000461" },
    gen_id = 1820,
}
_VP["VP-001821"] = {
    label = "DeltaMob modelo 2021 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 259477,
    wear_curve = 0.4665,
    preferred_supplier_ids = { "SUP-001822", "SUP-000464" },
    gen_id = 1821,
}
_VP["VP-001822"] = {
    label = "OrionTruck modelo 2022 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 259614,
    wear_curve = 0.3004,
    preferred_supplier_ids = { "SUP-001823", "SUP-000467" },
    gen_id = 1822,
}
_VP["VP-001823"] = {
    label = "SigmaBike modelo 2023 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 259751,
    wear_curve = 0.4042,
    preferred_supplier_ids = { "SUP-001824", "SUP-000470" },
    gen_id = 1823,
}
_VP["VP-001824"] = {
    label = "AstraMotors modelo 2024 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 259888,
    wear_curve = 0.6069,
    preferred_supplier_ids = { "SUP-001825", "SUP-000473" },
    gen_id = 1824,
}
_VP["VP-001825"] = {
    label = "RioVeículos modelo 2025 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 260025,
    wear_curve = 0.7297,
    preferred_supplier_ids = { "SUP-001826", "SUP-000476" },
    gen_id = 1825,
}
_VP["VP-001826"] = {
    label = "NorteAuto modelo 2026 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 260162,
    wear_curve = 0.9004,
    preferred_supplier_ids = { "SUP-001827", "SUP-000479" },
    gen_id = 1826,
}
_VP["VP-001827"] = {
    label = "DeltaMob modelo 2027 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 260299,
    wear_curve = 0.8297,
    preferred_supplier_ids = { "SUP-001828", "SUP-000482" },
    gen_id = 1827,
}
_VP["VP-001828"] = {
    label = "OrionTruck modelo 2028 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 260436,
    wear_curve = 0.4384,
    preferred_supplier_ids = { "SUP-001829", "SUP-000485" },
    gen_id = 1828,
}
_VP["VP-001829"] = {
    label = "SigmaBike modelo 2029 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 260573,
    wear_curve = 0.5087,
    preferred_supplier_ids = { "SUP-001830", "SUP-000488" },
    gen_id = 1829,
}
_VP["VP-001830"] = {
    label = "AstraMotors modelo 2030 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 260710,
    wear_curve = 0.9595,
    preferred_supplier_ids = { "SUP-001831", "SUP-000491" },
    gen_id = 1830,
}
_VP["VP-001831"] = {
    label = "RioVeículos modelo 2031 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 260847,
    wear_curve = 0.1570,
    preferred_supplier_ids = { "SUP-001832", "SUP-000494" },
    gen_id = 1831,
}
_VP["VP-001832"] = {
    label = "NorteAuto modelo 2032 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 260984,
    wear_curve = 0.9537,
    preferred_supplier_ids = { "SUP-001833", "SUP-000497" },
    gen_id = 1832,
}
_VP["VP-001833"] = {
    label = "DeltaMob modelo 2033 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 261121,
    wear_curve = 0.5287,
    preferred_supplier_ids = { "SUP-001834", "SUP-000500" },
    gen_id = 1833,
}
_VP["VP-001834"] = {
    label = "OrionTruck modelo 2034 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 261258,
    wear_curve = 0.7291,
    preferred_supplier_ids = { "SUP-001835", "SUP-000503" },
    gen_id = 1834,
}
_VP["VP-001835"] = {
    label = "SigmaBike modelo 2035 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 261395,
    wear_curve = 0.7951,
    preferred_supplier_ids = { "SUP-001836", "SUP-000506" },
    gen_id = 1835,
}
_VP["VP-001836"] = {
    label = "AstraMotors modelo 2036 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 261532,
    wear_curve = 0.2575,
    preferred_supplier_ids = { "SUP-001837", "SUP-000509" },
    gen_id = 1836,
}
_VP["VP-001837"] = {
    label = "RioVeículos modelo 2037 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 261669,
    wear_curve = 0.6918,
    preferred_supplier_ids = { "SUP-001838", "SUP-000512" },
    gen_id = 1837,
}
_VP["VP-001838"] = {
    label = "NorteAuto modelo 2038 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 261806,
    wear_curve = 0.5454,
    preferred_supplier_ids = { "SUP-001839", "SUP-000515" },
    gen_id = 1838,
}
_VP["VP-001839"] = {
    label = "DeltaMob modelo 2039 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 261943,
    wear_curve = 0.2329,
    preferred_supplier_ids = { "SUP-001840", "SUP-000518" },
    gen_id = 1839,
}
_VP["VP-001840"] = {
    label = "OrionTruck modelo 2040 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 262080,
    wear_curve = 0.3743,
    preferred_supplier_ids = { "SUP-001841", "SUP-000521" },
    gen_id = 1840,
}
_VP["VP-001841"] = {
    label = "SigmaBike modelo 2041 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 262217,
    wear_curve = 0.9802,
    preferred_supplier_ids = { "SUP-001842", "SUP-000524" },
    gen_id = 1841,
}
_VP["VP-001842"] = {
    label = "AstraMotors modelo 2042 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 262354,
    wear_curve = 0.8544,
    preferred_supplier_ids = { "SUP-001843", "SUP-000527" },
    gen_id = 1842,
}
_VP["VP-001843"] = {
    label = "RioVeículos modelo 2043 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 262491,
    wear_curve = 0.5758,
    preferred_supplier_ids = { "SUP-001844", "SUP-000530" },
    gen_id = 1843,
}
_VP["VP-001844"] = {
    label = "NorteAuto modelo 2044 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 262628,
    wear_curve = 0.2921,
    preferred_supplier_ids = { "SUP-001845", "SUP-000533" },
    gen_id = 1844,
}
_VP["VP-001845"] = {
    label = "DeltaMob modelo 2045 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 262765,
    wear_curve = 0.7831,
    preferred_supplier_ids = { "SUP-001846", "SUP-000536" },
    gen_id = 1845,
}
_VP["VP-001846"] = {
    label = "OrionTruck modelo 2046 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 262902,
    wear_curve = 0.8688,
    preferred_supplier_ids = { "SUP-001847", "SUP-000539" },
    gen_id = 1846,
}
_VP["VP-001847"] = {
    label = "SigmaBike modelo 2047 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 263039,
    wear_curve = 0.7336,
    preferred_supplier_ids = { "SUP-001848", "SUP-000542" },
    gen_id = 1847,
}
_VP["VP-001848"] = {
    label = "AstraMotors modelo 2048 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 263176,
    wear_curve = 0.2102,
    preferred_supplier_ids = { "SUP-001849", "SUP-000545" },
    gen_id = 1848,
}
_VP["VP-001849"] = {
    label = "RioVeículos modelo 2049 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 263313,
    wear_curve = 0.6440,
    preferred_supplier_ids = { "SUP-001850", "SUP-000548" },
    gen_id = 1849,
}
_VP["VP-001850"] = {
    label = "NorteAuto modelo 2050 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 263450,
    wear_curve = 0.2282,
    preferred_supplier_ids = { "SUP-001851", "SUP-000551" },
    gen_id = 1850,
}
_VP["VP-001851"] = {
    label = "DeltaMob modelo 2051 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 263587,
    wear_curve = 0.8654,
    preferred_supplier_ids = { "SUP-001852", "SUP-000554" },
    gen_id = 1851,
}
_VP["VP-001852"] = {
    label = "OrionTruck modelo 2052 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 263724,
    wear_curve = 0.6409,
    preferred_supplier_ids = { "SUP-001853", "SUP-000557" },
    gen_id = 1852,
}
_VP["VP-001853"] = {
    label = "SigmaBike modelo 2053 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 263861,
    wear_curve = 0.4408,
    preferred_supplier_ids = { "SUP-001854", "SUP-000560" },
    gen_id = 1853,
}
_VP["VP-001854"] = {
    label = "AstraMotors modelo 2054 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 263998,
    wear_curve = 0.5931,
    preferred_supplier_ids = { "SUP-001855", "SUP-000563" },
    gen_id = 1854,
}
_VP["VP-001855"] = {
    label = "RioVeículos modelo 2055 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 264135,
    wear_curve = 0.4465,
    preferred_supplier_ids = { "SUP-001856", "SUP-000566" },
    gen_id = 1855,
}
_VP["VP-001856"] = {
    label = "NorteAuto modelo 2056 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 264272,
    wear_curve = 0.6292,
    preferred_supplier_ids = { "SUP-001857", "SUP-000569" },
    gen_id = 1856,
}
_VP["VP-001857"] = {
    label = "DeltaMob modelo 2057 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 264409,
    wear_curve = 0.9693,
    preferred_supplier_ids = { "SUP-001858", "SUP-000572" },
    gen_id = 1857,
}
_VP["VP-001858"] = {
    label = "OrionTruck modelo 2058 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 264546,
    wear_curve = 0.9178,
    preferred_supplier_ids = { "SUP-001859", "SUP-000575" },
    gen_id = 1858,
}
_VP["VP-001859"] = {
    label = "SigmaBike modelo 2059 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 264683,
    wear_curve = 0.4368,
    preferred_supplier_ids = { "SUP-001860", "SUP-000578" },
    gen_id = 1859,
}
_VP["VP-001860"] = {
    label = "AstraMotors modelo 2060 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 264820,
    wear_curve = 0.4159,
    preferred_supplier_ids = { "SUP-001861", "SUP-000581" },
    gen_id = 1860,
}
_VP["VP-001861"] = {
    label = "RioVeículos modelo 2061 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 264957,
    wear_curve = 0.8160,
    preferred_supplier_ids = { "SUP-001862", "SUP-000584" },
    gen_id = 1861,
}
_VP["VP-001862"] = {
    label = "NorteAuto modelo 2062 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 265094,
    wear_curve = 0.7603,
    preferred_supplier_ids = { "SUP-001863", "SUP-000587" },
    gen_id = 1862,
}
_VP["VP-001863"] = {
    label = "DeltaMob modelo 2063 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 265231,
    wear_curve = 0.6918,
    preferred_supplier_ids = { "SUP-001864", "SUP-000590" },
    gen_id = 1863,
}
_VP["VP-001864"] = {
    label = "OrionTruck modelo 2064 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 265368,
    wear_curve = 0.4818,
    preferred_supplier_ids = { "SUP-001865", "SUP-000593" },
    gen_id = 1864,
}
_VP["VP-001865"] = {
    label = "SigmaBike modelo 2065 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 265505,
    wear_curve = 0.1678,
    preferred_supplier_ids = { "SUP-001866", "SUP-000596" },
    gen_id = 1865,
}
_VP["VP-001866"] = {
    label = "AstraMotors modelo 2066 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 265642,
    wear_curve = 0.6963,
    preferred_supplier_ids = { "SUP-001867", "SUP-000599" },
    gen_id = 1866,
}
_VP["VP-001867"] = {
    label = "RioVeículos modelo 2067 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 265779,
    wear_curve = 0.9710,
    preferred_supplier_ids = { "SUP-001868", "SUP-000602" },
    gen_id = 1867,
}
_VP["VP-001868"] = {
    label = "NorteAuto modelo 2068 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 265916,
    wear_curve = 0.1751,
    preferred_supplier_ids = { "SUP-001869", "SUP-000605" },
    gen_id = 1868,
}
_VP["VP-001869"] = {
    label = "DeltaMob modelo 2069 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 266053,
    wear_curve = 0.4698,
    preferred_supplier_ids = { "SUP-001870", "SUP-000608" },
    gen_id = 1869,
}
_VP["VP-001870"] = {
    label = "OrionTruck modelo 2070 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 266190,
    wear_curve = 0.1718,
    preferred_supplier_ids = { "SUP-001871", "SUP-000611" },
    gen_id = 1870,
}
_VP["VP-001871"] = {
    label = "SigmaBike modelo 2071 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 266327,
    wear_curve = 0.5088,
    preferred_supplier_ids = { "SUP-001872", "SUP-000614" },
    gen_id = 1871,
}
_VP["VP-001872"] = {
    label = "AstraMotors modelo 2072 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 266464,
    wear_curve = 0.1842,
    preferred_supplier_ids = { "SUP-001873", "SUP-000617" },
    gen_id = 1872,
}
_VP["VP-001873"] = {
    label = "RioVeículos modelo 2073 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 266601,
    wear_curve = 0.9511,
    preferred_supplier_ids = { "SUP-001874", "SUP-000620" },
    gen_id = 1873,
}
_VP["VP-001874"] = {
    label = "NorteAuto modelo 2074 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 266738,
    wear_curve = 0.9870,
    preferred_supplier_ids = { "SUP-001875", "SUP-000623" },
    gen_id = 1874,
}
_VP["VP-001875"] = {
    label = "DeltaMob modelo 2075 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 266875,
    wear_curve = 0.6777,
    preferred_supplier_ids = { "SUP-001876", "SUP-000626" },
    gen_id = 1875,
}
_VP["VP-001876"] = {
    label = "OrionTruck modelo 2076 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 267012,
    wear_curve = 0.5821,
    preferred_supplier_ids = { "SUP-001877", "SUP-000629" },
    gen_id = 1876,
}
_VP["VP-001877"] = {
    label = "SigmaBike modelo 2077 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 267149,
    wear_curve = 0.9073,
    preferred_supplier_ids = { "SUP-001878", "SUP-000632" },
    gen_id = 1877,
}
_VP["VP-001878"] = {
    label = "AstraMotors modelo 2078 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 267286,
    wear_curve = 0.1702,
    preferred_supplier_ids = { "SUP-001879", "SUP-000635" },
    gen_id = 1878,
}
_VP["VP-001879"] = {
    label = "RioVeículos modelo 2079 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 267423,
    wear_curve = 0.1847,
    preferred_supplier_ids = { "SUP-001880", "SUP-000638" },
    gen_id = 1879,
}
_VP["VP-001880"] = {
    label = "NorteAuto modelo 2080 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 267560,
    wear_curve = 0.8305,
    preferred_supplier_ids = { "SUP-001881", "SUP-000641" },
    gen_id = 1880,
}
_VP["VP-001881"] = {
    label = "DeltaMob modelo 2081 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 267697,
    wear_curve = 0.6845,
    preferred_supplier_ids = { "SUP-001882", "SUP-000644" },
    gen_id = 1881,
}
_VP["VP-001882"] = {
    label = "OrionTruck modelo 2082 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 267834,
    wear_curve = 0.4097,
    preferred_supplier_ids = { "SUP-001883", "SUP-000647" },
    gen_id = 1882,
}
_VP["VP-001883"] = {
    label = "SigmaBike modelo 2083 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 267971,
    wear_curve = 0.5056,
    preferred_supplier_ids = { "SUP-001884", "SUP-000650" },
    gen_id = 1883,
}
_VP["VP-001884"] = {
    label = "AstraMotors modelo 2084 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 268108,
    wear_curve = 0.6948,
    preferred_supplier_ids = { "SUP-001885", "SUP-000653" },
    gen_id = 1884,
}
_VP["VP-001885"] = {
    label = "RioVeículos modelo 2085 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 268245,
    wear_curve = 0.4763,
    preferred_supplier_ids = { "SUP-001886", "SUP-000656" },
    gen_id = 1885,
}
_VP["VP-001886"] = {
    label = "NorteAuto modelo 2086 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 268382,
    wear_curve = 0.9763,
    preferred_supplier_ids = { "SUP-001887", "SUP-000659" },
    gen_id = 1886,
}
_VP["VP-001887"] = {
    label = "DeltaMob modelo 2087 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 268519,
    wear_curve = 0.3724,
    preferred_supplier_ids = { "SUP-001888", "SUP-000662" },
    gen_id = 1887,
}
_VP["VP-001888"] = {
    label = "OrionTruck modelo 2088 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 268656,
    wear_curve = 0.3826,
    preferred_supplier_ids = { "SUP-001889", "SUP-000665" },
    gen_id = 1888,
}
_VP["VP-001889"] = {
    label = "SigmaBike modelo 2089 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 268793,
    wear_curve = 0.5064,
    preferred_supplier_ids = { "SUP-001890", "SUP-000668" },
    gen_id = 1889,
}
_VP["VP-001890"] = {
    label = "AstraMotors modelo 2090 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 268930,
    wear_curve = 0.2815,
    preferred_supplier_ids = { "SUP-001891", "SUP-000671" },
    gen_id = 1890,
}
_VP["VP-001891"] = {
    label = "RioVeículos modelo 2091 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 269067,
    wear_curve = 0.8438,
    preferred_supplier_ids = { "SUP-001892", "SUP-000674" },
    gen_id = 1891,
}
_VP["VP-001892"] = {
    label = "NorteAuto modelo 2092 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 269204,
    wear_curve = 0.9821,
    preferred_supplier_ids = { "SUP-001893", "SUP-000677" },
    gen_id = 1892,
}
_VP["VP-001893"] = {
    label = "DeltaMob modelo 2093 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 269341,
    wear_curve = 0.4316,
    preferred_supplier_ids = { "SUP-001894", "SUP-000680" },
    gen_id = 1893,
}
_VP["VP-001894"] = {
    label = "OrionTruck modelo 2094 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 269478,
    wear_curve = 0.6277,
    preferred_supplier_ids = { "SUP-001895", "SUP-000683" },
    gen_id = 1894,
}
_VP["VP-001895"] = {
    label = "SigmaBike modelo 2095 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 269615,
    wear_curve = 0.1998,
    preferred_supplier_ids = { "SUP-001896", "SUP-000686" },
    gen_id = 1895,
}
_VP["VP-001896"] = {
    label = "AstraMotors modelo 2096 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 269752,
    wear_curve = 0.5382,
    preferred_supplier_ids = { "SUP-001897", "SUP-000689" },
    gen_id = 1896,
}
_VP["VP-001897"] = {
    label = "RioVeículos modelo 2097 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 269889,
    wear_curve = 0.2629,
    preferred_supplier_ids = { "SUP-001898", "SUP-000692" },
    gen_id = 1897,
}
_VP["VP-001898"] = {
    label = "NorteAuto modelo 2098 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 270026,
    wear_curve = 0.8197,
    preferred_supplier_ids = { "SUP-001899", "SUP-000695" },
    gen_id = 1898,
}
_VP["VP-001899"] = {
    label = "DeltaMob modelo 2099 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 270163,
    wear_curve = 0.6137,
    preferred_supplier_ids = { "SUP-001900", "SUP-000698" },
    gen_id = 1899,
}
_VP["VP-001900"] = {
    label = "OrionTruck modelo 2100 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 270300,
    wear_curve = 0.8679,
    preferred_supplier_ids = { "SUP-001901", "SUP-000701" },
    gen_id = 1900,
}
_VP["VP-001901"] = {
    label = "SigmaBike modelo 2101 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 270437,
    wear_curve = 0.2154,
    preferred_supplier_ids = { "SUP-001902", "SUP-000704" },
    gen_id = 1901,
}
_VP["VP-001902"] = {
    label = "AstraMotors modelo 2102 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 270574,
    wear_curve = 0.7711,
    preferred_supplier_ids = { "SUP-001903", "SUP-000707" },
    gen_id = 1902,
}
_VP["VP-001903"] = {
    label = "RioVeículos modelo 2103 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 270711,
    wear_curve = 0.3195,
    preferred_supplier_ids = { "SUP-001904", "SUP-000710" },
    gen_id = 1903,
}
_VP["VP-001904"] = {
    label = "NorteAuto modelo 2104 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 270848,
    wear_curve = 0.4769,
    preferred_supplier_ids = { "SUP-001905", "SUP-000713" },
    gen_id = 1904,
}
_VP["VP-001905"] = {
    label = "DeltaMob modelo 2105 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 270985,
    wear_curve = 0.5085,
    preferred_supplier_ids = { "SUP-001906", "SUP-000716" },
    gen_id = 1905,
}
_VP["VP-001906"] = {
    label = "OrionTruck modelo 2106 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 271122,
    wear_curve = 0.7979,
    preferred_supplier_ids = { "SUP-001907", "SUP-000719" },
    gen_id = 1906,
}
_VP["VP-001907"] = {
    label = "SigmaBike modelo 2107 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 271259,
    wear_curve = 0.4514,
    preferred_supplier_ids = { "SUP-001908", "SUP-000722" },
    gen_id = 1907,
}
_VP["VP-001908"] = {
    label = "AstraMotors modelo 2108 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 271396,
    wear_curve = 0.1546,
    preferred_supplier_ids = { "SUP-001909", "SUP-000725" },
    gen_id = 1908,
}
_VP["VP-001909"] = {
    label = "RioVeículos modelo 2109 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 271533,
    wear_curve = 0.6532,
    preferred_supplier_ids = { "SUP-001910", "SUP-000728" },
    gen_id = 1909,
}
_VP["VP-001910"] = {
    label = "NorteAuto modelo 2110 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 271670,
    wear_curve = 0.6081,
    preferred_supplier_ids = { "SUP-001911", "SUP-000731" },
    gen_id = 1910,
}
_VP["VP-001911"] = {
    label = "DeltaMob modelo 2111 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 271807,
    wear_curve = 0.6992,
    preferred_supplier_ids = { "SUP-001912", "SUP-000734" },
    gen_id = 1911,
}
_VP["VP-001912"] = {
    label = "OrionTruck modelo 2112 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 271944,
    wear_curve = 0.4347,
    preferred_supplier_ids = { "SUP-001913", "SUP-000737" },
    gen_id = 1912,
}
_VP["VP-001913"] = {
    label = "SigmaBike modelo 2113 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 272081,
    wear_curve = 0.5222,
    preferred_supplier_ids = { "SUP-001914", "SUP-000740" },
    gen_id = 1913,
}
_VP["VP-001914"] = {
    label = "AstraMotors modelo 2114 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 272218,
    wear_curve = 0.6559,
    preferred_supplier_ids = { "SUP-001915", "SUP-000743" },
    gen_id = 1914,
}
_VP["VP-001915"] = {
    label = "RioVeículos modelo 2115 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 272355,
    wear_curve = 0.6310,
    preferred_supplier_ids = { "SUP-001916", "SUP-000746" },
    gen_id = 1915,
}
_VP["VP-001916"] = {
    label = "NorteAuto modelo 2116 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 272492,
    wear_curve = 0.9234,
    preferred_supplier_ids = { "SUP-001917", "SUP-000749" },
    gen_id = 1916,
}
_VP["VP-001917"] = {
    label = "DeltaMob modelo 2117 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 272629,
    wear_curve = 0.6150,
    preferred_supplier_ids = { "SUP-001918", "SUP-000752" },
    gen_id = 1917,
}
_VP["VP-001918"] = {
    label = "OrionTruck modelo 2118 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 272766,
    wear_curve = 0.2433,
    preferred_supplier_ids = { "SUP-001919", "SUP-000755" },
    gen_id = 1918,
}
_VP["VP-001919"] = {
    label = "SigmaBike modelo 2119 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 272903,
    wear_curve = 0.8024,
    preferred_supplier_ids = { "SUP-001920", "SUP-000758" },
    gen_id = 1919,
}
_VP["VP-001920"] = {
    label = "AstraMotors modelo 2120 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 273040,
    wear_curve = 0.6566,
    preferred_supplier_ids = { "SUP-001921", "SUP-000761" },
    gen_id = 1920,
}
_VP["VP-001921"] = {
    label = "RioVeículos modelo 2121 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 273177,
    wear_curve = 0.8389,
    preferred_supplier_ids = { "SUP-001922", "SUP-000764" },
    gen_id = 1921,
}
_VP["VP-001922"] = {
    label = "NorteAuto modelo 2122 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 273314,
    wear_curve = 0.5621,
    preferred_supplier_ids = { "SUP-001923", "SUP-000767" },
    gen_id = 1922,
}
_VP["VP-001923"] = {
    label = "DeltaMob modelo 2123 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 273451,
    wear_curve = 0.5283,
    preferred_supplier_ids = { "SUP-001924", "SUP-000770" },
    gen_id = 1923,
}
_VP["VP-001924"] = {
    label = "OrionTruck modelo 2124 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 273588,
    wear_curve = 0.5638,
    preferred_supplier_ids = { "SUP-001925", "SUP-000773" },
    gen_id = 1924,
}
_VP["VP-001925"] = {
    label = "SigmaBike modelo 2125 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 273725,
    wear_curve = 0.7424,
    preferred_supplier_ids = { "SUP-001926", "SUP-000776" },
    gen_id = 1925,
}
_VP["VP-001926"] = {
    label = "AstraMotors modelo 2126 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 273862,
    wear_curve = 0.6861,
    preferred_supplier_ids = { "SUP-001927", "SUP-000779" },
    gen_id = 1926,
}
_VP["VP-001927"] = {
    label = "RioVeículos modelo 2127 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 273999,
    wear_curve = 0.4605,
    preferred_supplier_ids = { "SUP-001928", "SUP-000782" },
    gen_id = 1927,
}
_VP["VP-001928"] = {
    label = "NorteAuto modelo 2128 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 274136,
    wear_curve = 0.8265,
    preferred_supplier_ids = { "SUP-001929", "SUP-000785" },
    gen_id = 1928,
}
_VP["VP-001929"] = {
    label = "DeltaMob modelo 2129 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 274273,
    wear_curve = 0.9473,
    preferred_supplier_ids = { "SUP-001930", "SUP-000788" },
    gen_id = 1929,
}
_VP["VP-001930"] = {
    label = "OrionTruck modelo 2130 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 274410,
    wear_curve = 0.2293,
    preferred_supplier_ids = { "SUP-001931", "SUP-000791" },
    gen_id = 1930,
}
_VP["VP-001931"] = {
    label = "SigmaBike modelo 2131 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 274547,
    wear_curve = 0.4751,
    preferred_supplier_ids = { "SUP-001932", "SUP-000794" },
    gen_id = 1931,
}
_VP["VP-001932"] = {
    label = "AstraMotors modelo 2132 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 274684,
    wear_curve = 0.5802,
    preferred_supplier_ids = { "SUP-001933", "SUP-000797" },
    gen_id = 1932,
}
_VP["VP-001933"] = {
    label = "RioVeículos modelo 2133 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 274821,
    wear_curve = 0.6414,
    preferred_supplier_ids = { "SUP-001934", "SUP-000800" },
    gen_id = 1933,
}
_VP["VP-001934"] = {
    label = "NorteAuto modelo 2134 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 274958,
    wear_curve = 0.5057,
    preferred_supplier_ids = { "SUP-001935", "SUP-000803" },
    gen_id = 1934,
}
_VP["VP-001935"] = {
    label = "DeltaMob modelo 2135 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 275095,
    wear_curve = 0.5844,
    preferred_supplier_ids = { "SUP-001936", "SUP-000806" },
    gen_id = 1935,
}
_VP["VP-001936"] = {
    label = "OrionTruck modelo 2136 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 275232,
    wear_curve = 0.8266,
    preferred_supplier_ids = { "SUP-001937", "SUP-000809" },
    gen_id = 1936,
}
_VP["VP-001937"] = {
    label = "SigmaBike modelo 2137 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 275369,
    wear_curve = 0.6525,
    preferred_supplier_ids = { "SUP-001938", "SUP-000812" },
    gen_id = 1937,
}
_VP["VP-001938"] = {
    label = "AstraMotors modelo 2138 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 275506,
    wear_curve = 0.4832,
    preferred_supplier_ids = { "SUP-001939", "SUP-000815" },
    gen_id = 1938,
}
_VP["VP-001939"] = {
    label = "RioVeículos modelo 2139 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 275643,
    wear_curve = 0.9044,
    preferred_supplier_ids = { "SUP-001940", "SUP-000818" },
    gen_id = 1939,
}
_VP["VP-001940"] = {
    label = "NorteAuto modelo 2140 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 275780,
    wear_curve = 0.5776,
    preferred_supplier_ids = { "SUP-001941", "SUP-000821" },
    gen_id = 1940,
}
_VP["VP-001941"] = {
    label = "DeltaMob modelo 2141 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 275917,
    wear_curve = 0.5906,
    preferred_supplier_ids = { "SUP-001942", "SUP-000824" },
    gen_id = 1941,
}
_VP["VP-001942"] = {
    label = "OrionTruck modelo 2142 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 276054,
    wear_curve = 0.1888,
    preferred_supplier_ids = { "SUP-001943", "SUP-000827" },
    gen_id = 1942,
}
_VP["VP-001943"] = {
    label = "SigmaBike modelo 2143 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 276191,
    wear_curve = 0.3176,
    preferred_supplier_ids = { "SUP-001944", "SUP-000830" },
    gen_id = 1943,
}
_VP["VP-001944"] = {
    label = "AstraMotors modelo 2144 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 276328,
    wear_curve = 0.2739,
    preferred_supplier_ids = { "SUP-001945", "SUP-000833" },
    gen_id = 1944,
}
_VP["VP-001945"] = {
    label = "RioVeículos modelo 2145 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 276465,
    wear_curve = 0.8547,
    preferred_supplier_ids = { "SUP-001946", "SUP-000836" },
    gen_id = 1945,
}
_VP["VP-001946"] = {
    label = "NorteAuto modelo 2146 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 276602,
    wear_curve = 0.6351,
    preferred_supplier_ids = { "SUP-001947", "SUP-000839" },
    gen_id = 1946,
}
_VP["VP-001947"] = {
    label = "DeltaMob modelo 2147 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 276739,
    wear_curve = 0.4859,
    preferred_supplier_ids = { "SUP-001948", "SUP-000842" },
    gen_id = 1947,
}
_VP["VP-001948"] = {
    label = "OrionTruck modelo 2148 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 276876,
    wear_curve = 0.3746,
    preferred_supplier_ids = { "SUP-001949", "SUP-000845" },
    gen_id = 1948,
}
_VP["VP-001949"] = {
    label = "SigmaBike modelo 2149 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 277013,
    wear_curve = 0.9652,
    preferred_supplier_ids = { "SUP-001950", "SUP-000848" },
    gen_id = 1949,
}
_VP["VP-001950"] = {
    label = "AstraMotors modelo 2150 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 277150,
    wear_curve = 0.6004,
    preferred_supplier_ids = { "SUP-001951", "SUP-000851" },
    gen_id = 1950,
}
_VP["VP-001951"] = {
    label = "RioVeículos modelo 2151 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 277287,
    wear_curve = 0.8298,
    preferred_supplier_ids = { "SUP-001952", "SUP-000854" },
    gen_id = 1951,
}
_VP["VP-001952"] = {
    label = "NorteAuto modelo 2152 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 277424,
    wear_curve = 0.2351,
    preferred_supplier_ids = { "SUP-001953", "SUP-000857" },
    gen_id = 1952,
}
_VP["VP-001953"] = {
    label = "DeltaMob modelo 2153 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 277561,
    wear_curve = 0.3437,
    preferred_supplier_ids = { "SUP-001954", "SUP-000860" },
    gen_id = 1953,
}
_VP["VP-001954"] = {
    label = "OrionTruck modelo 2154 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 277698,
    wear_curve = 0.1561,
    preferred_supplier_ids = { "SUP-001955", "SUP-000863" },
    gen_id = 1954,
}
_VP["VP-001955"] = {
    label = "SigmaBike modelo 2155 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 277835,
    wear_curve = 0.9025,
    preferred_supplier_ids = { "SUP-001956", "SUP-000866" },
    gen_id = 1955,
}
_VP["VP-001956"] = {
    label = "AstraMotors modelo 2156 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 277972,
    wear_curve = 0.8954,
    preferred_supplier_ids = { "SUP-001957", "SUP-000869" },
    gen_id = 1956,
}
_VP["VP-001957"] = {
    label = "RioVeículos modelo 2157 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 278109,
    wear_curve = 0.2264,
    preferred_supplier_ids = { "SUP-001958", "SUP-000872" },
    gen_id = 1957,
}
_VP["VP-001958"] = {
    label = "NorteAuto modelo 2158 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 278246,
    wear_curve = 0.6486,
    preferred_supplier_ids = { "SUP-001959", "SUP-000875" },
    gen_id = 1958,
}
_VP["VP-001959"] = {
    label = "DeltaMob modelo 2159 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 278383,
    wear_curve = 0.4509,
    preferred_supplier_ids = { "SUP-001960", "SUP-000878" },
    gen_id = 1959,
}
_VP["VP-001960"] = {
    label = "OrionTruck modelo 2160 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 278520,
    wear_curve = 0.3200,
    preferred_supplier_ids = { "SUP-001961", "SUP-000881" },
    gen_id = 1960,
}
_VP["VP-001961"] = {
    label = "SigmaBike modelo 2161 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 278657,
    wear_curve = 0.5081,
    preferred_supplier_ids = { "SUP-001962", "SUP-000884" },
    gen_id = 1961,
}
_VP["VP-001962"] = {
    label = "AstraMotors modelo 2162 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 278794,
    wear_curve = 0.4061,
    preferred_supplier_ids = { "SUP-001963", "SUP-000887" },
    gen_id = 1962,
}
_VP["VP-001963"] = {
    label = "RioVeículos modelo 2163 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 278931,
    wear_curve = 0.4169,
    preferred_supplier_ids = { "SUP-001964", "SUP-000890" },
    gen_id = 1963,
}
_VP["VP-001964"] = {
    label = "NorteAuto modelo 2164 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 279068,
    wear_curve = 0.4387,
    preferred_supplier_ids = { "SUP-001965", "SUP-000893" },
    gen_id = 1964,
}
_VP["VP-001965"] = {
    label = "DeltaMob modelo 2165 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 279205,
    wear_curve = 0.8268,
    preferred_supplier_ids = { "SUP-001966", "SUP-000896" },
    gen_id = 1965,
}
_VP["VP-001966"] = {
    label = "OrionTruck modelo 2166 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 279342,
    wear_curve = 0.9512,
    preferred_supplier_ids = { "SUP-001967", "SUP-000899" },
    gen_id = 1966,
}
_VP["VP-001967"] = {
    label = "SigmaBike modelo 2167 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 279479,
    wear_curve = 0.6955,
    preferred_supplier_ids = { "SUP-001968", "SUP-000902" },
    gen_id = 1967,
}
_VP["VP-001968"] = {
    label = "AstraMotors modelo 2168 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 279616,
    wear_curve = 0.5021,
    preferred_supplier_ids = { "SUP-001969", "SUP-000905" },
    gen_id = 1968,
}
_VP["VP-001969"] = {
    label = "RioVeículos modelo 2169 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 279753,
    wear_curve = 0.9617,
    preferred_supplier_ids = { "SUP-001970", "SUP-000908" },
    gen_id = 1969,
}
_VP["VP-001970"] = {
    label = "NorteAuto modelo 2170 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 279890,
    wear_curve = 0.4647,
    preferred_supplier_ids = { "SUP-001971", "SUP-000911" },
    gen_id = 1970,
}
_VP["VP-001971"] = {
    label = "DeltaMob modelo 2171 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 280027,
    wear_curve = 0.8791,
    preferred_supplier_ids = { "SUP-001972", "SUP-000914" },
    gen_id = 1971,
}
_VP["VP-001972"] = {
    label = "OrionTruck modelo 2172 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 280164,
    wear_curve = 0.7764,
    preferred_supplier_ids = { "SUP-001973", "SUP-000917" },
    gen_id = 1972,
}
_VP["VP-001973"] = {
    label = "SigmaBike modelo 2173 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 280301,
    wear_curve = 0.9309,
    preferred_supplier_ids = { "SUP-001974", "SUP-000920" },
    gen_id = 1973,
}
_VP["VP-001974"] = {
    label = "AstraMotors modelo 2174 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 280438,
    wear_curve = 0.7568,
    preferred_supplier_ids = { "SUP-001975", "SUP-000923" },
    gen_id = 1974,
}
_VP["VP-001975"] = {
    label = "RioVeículos modelo 2175 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 280575,
    wear_curve = 0.2284,
    preferred_supplier_ids = { "SUP-001976", "SUP-000926" },
    gen_id = 1975,
}
_VP["VP-001976"] = {
    label = "NorteAuto modelo 2176 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 280712,
    wear_curve = 0.8684,
    preferred_supplier_ids = { "SUP-001977", "SUP-000929" },
    gen_id = 1976,
}
_VP["VP-001977"] = {
    label = "DeltaMob modelo 2177 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 280849,
    wear_curve = 0.5339,
    preferred_supplier_ids = { "SUP-001978", "SUP-000932" },
    gen_id = 1977,
}
_VP["VP-001978"] = {
    label = "OrionTruck modelo 2178 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 280986,
    wear_curve = 0.6659,
    preferred_supplier_ids = { "SUP-001979", "SUP-000935" },
    gen_id = 1978,
}
_VP["VP-001979"] = {
    label = "SigmaBike modelo 2179 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 281123,
    wear_curve = 0.9749,
    preferred_supplier_ids = { "SUP-001980", "SUP-000938" },
    gen_id = 1979,
}
_VP["VP-001980"] = {
    label = "AstraMotors modelo 2180 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 281260,
    wear_curve = 0.9785,
    preferred_supplier_ids = { "SUP-001981", "SUP-000941" },
    gen_id = 1980,
}
_VP["VP-001981"] = {
    label = "RioVeículos modelo 2181 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 281397,
    wear_curve = 0.8519,
    preferred_supplier_ids = { "SUP-001982", "SUP-000944" },
    gen_id = 1981,
}
_VP["VP-001982"] = {
    label = "NorteAuto modelo 2182 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 281534,
    wear_curve = 0.8675,
    preferred_supplier_ids = { "SUP-001983", "SUP-000947" },
    gen_id = 1982,
}
_VP["VP-001983"] = {
    label = "DeltaMob modelo 2183 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 281671,
    wear_curve = 0.5706,
    preferred_supplier_ids = { "SUP-001984", "SUP-000950" },
    gen_id = 1983,
}
_VP["VP-001984"] = {
    label = "OrionTruck modelo 2184 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 281808,
    wear_curve = 0.9969,
    preferred_supplier_ids = { "SUP-001985", "SUP-000953" },
    gen_id = 1984,
}
_VP["VP-001985"] = {
    label = "SigmaBike modelo 2185 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 281945,
    wear_curve = 0.2265,
    preferred_supplier_ids = { "SUP-001986", "SUP-000956" },
    gen_id = 1985,
}
_VP["VP-001986"] = {
    label = "AstraMotors modelo 2186 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 282082,
    wear_curve = 0.2355,
    preferred_supplier_ids = { "SUP-001987", "SUP-000959" },
    gen_id = 1986,
}
_VP["VP-001987"] = {
    label = "RioVeículos modelo 2187 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 282219,
    wear_curve = 0.3643,
    preferred_supplier_ids = { "SUP-001988", "SUP-000962" },
    gen_id = 1987,
}
_VP["VP-001988"] = {
    label = "NorteAuto modelo 2188 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 282356,
    wear_curve = 0.2179,
    preferred_supplier_ids = { "SUP-001989", "SUP-000965" },
    gen_id = 1988,
}
_VP["VP-001989"] = {
    label = "DeltaMob modelo 2189 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 282493,
    wear_curve = 0.4033,
    preferred_supplier_ids = { "SUP-001990", "SUP-000968" },
    gen_id = 1989,
}
_VP["VP-001990"] = {
    label = "OrionTruck modelo 2190 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 282630,
    wear_curve = 0.6663,
    preferred_supplier_ids = { "SUP-001991", "SUP-000971" },
    gen_id = 1990,
}
_VP["VP-001991"] = {
    label = "SigmaBike modelo 2191 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 282767,
    wear_curve = 0.5958,
    preferred_supplier_ids = { "SUP-001992", "SUP-000974" },
    gen_id = 1991,
}
_VP["VP-001992"] = {
    label = "AstraMotors modelo 2192 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 282904,
    wear_curve = 0.6615,
    preferred_supplier_ids = { "SUP-001993", "SUP-000977" },
    gen_id = 1992,
}
_VP["VP-001993"] = {
    label = "RioVeículos modelo 2193 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 283041,
    wear_curve = 0.4867,
    preferred_supplier_ids = { "SUP-001994", "SUP-000980" },
    gen_id = 1993,
}
_VP["VP-001994"] = {
    label = "NorteAuto modelo 2194 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 283178,
    wear_curve = 0.9319,
    preferred_supplier_ids = { "SUP-001995", "SUP-000983" },
    gen_id = 1994,
}
_VP["VP-001995"] = {
    label = "DeltaMob modelo 2195 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 283315,
    wear_curve = 0.2612,
    preferred_supplier_ids = { "SUP-001996", "SUP-000986" },
    gen_id = 1995,
}
_VP["VP-001996"] = {
    label = "OrionTruck modelo 2196 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 283452,
    wear_curve = 0.2019,
    preferred_supplier_ids = { "SUP-001997", "SUP-000989" },
    gen_id = 1996,
}
_VP["VP-001997"] = {
    label = "SigmaBike modelo 2197 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 283589,
    wear_curve = 0.7672,
    preferred_supplier_ids = { "SUP-001998", "SUP-000992" },
    gen_id = 1997,
}
_VP["VP-001998"] = {
    label = "AstraMotors modelo 2198 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 283726,
    wear_curve = 0.2965,
    preferred_supplier_ids = { "SUP-001999", "SUP-000995" },
    gen_id = 1998,
}
_VP["VP-001999"] = {
    label = "RioVeículos modelo 2199 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 283863,
    wear_curve = 0.2176,
    preferred_supplier_ids = { "SUP-002000", "SUP-000998" },
    gen_id = 1999,
}
_VP["VP-002000"] = {
    label = "NorteAuto modelo 2200 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 284000,
    wear_curve = 0.1667,
    preferred_supplier_ids = { "SUP-002001", "SUP-001001" },
    gen_id = 2000,
}
_VP["VP-002001"] = {
    label = "DeltaMob modelo 2201 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 284137,
    wear_curve = 0.4441,
    preferred_supplier_ids = { "SUP-002002", "SUP-001004" },
    gen_id = 2001,
}
_VP["VP-002002"] = {
    label = "OrionTruck modelo 2202 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 284274,
    wear_curve = 0.5400,
    preferred_supplier_ids = { "SUP-002003", "SUP-001007" },
    gen_id = 2002,
}
_VP["VP-002003"] = {
    label = "SigmaBike modelo 2203 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 284411,
    wear_curve = 0.4533,
    preferred_supplier_ids = { "SUP-002004", "SUP-001010" },
    gen_id = 2003,
}
_VP["VP-002004"] = {
    label = "AstraMotors modelo 2204 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 284548,
    wear_curve = 0.4331,
    preferred_supplier_ids = { "SUP-002005", "SUP-001013" },
    gen_id = 2004,
}
_VP["VP-002005"] = {
    label = "RioVeículos modelo 2205 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 284685,
    wear_curve = 0.6769,
    preferred_supplier_ids = { "SUP-002006", "SUP-001016" },
    gen_id = 2005,
}
_VP["VP-002006"] = {
    label = "NorteAuto modelo 2206 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 284822,
    wear_curve = 0.3449,
    preferred_supplier_ids = { "SUP-002007", "SUP-001019" },
    gen_id = 2006,
}
_VP["VP-002007"] = {
    label = "DeltaMob modelo 2207 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 284959,
    wear_curve = 0.5175,
    preferred_supplier_ids = { "SUP-002008", "SUP-001022" },
    gen_id = 2007,
}
_VP["VP-002008"] = {
    label = "OrionTruck modelo 2208 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 285096,
    wear_curve = 0.3085,
    preferred_supplier_ids = { "SUP-002009", "SUP-001025" },
    gen_id = 2008,
}
_VP["VP-002009"] = {
    label = "SigmaBike modelo 2209 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 285233,
    wear_curve = 0.8152,
    preferred_supplier_ids = { "SUP-002010", "SUP-001028" },
    gen_id = 2009,
}
_VP["VP-002010"] = {
    label = "AstraMotors modelo 2210 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 285370,
    wear_curve = 0.8682,
    preferred_supplier_ids = { "SUP-002011", "SUP-001031" },
    gen_id = 2010,
}
_VP["VP-002011"] = {
    label = "RioVeículos modelo 2211 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 285507,
    wear_curve = 0.4124,
    preferred_supplier_ids = { "SUP-002012", "SUP-001034" },
    gen_id = 2011,
}
_VP["VP-002012"] = {
    label = "NorteAuto modelo 2212 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 285644,
    wear_curve = 0.7471,
    preferred_supplier_ids = { "SUP-002013", "SUP-001037" },
    gen_id = 2012,
}
_VP["VP-002013"] = {
    label = "DeltaMob modelo 2213 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 285781,
    wear_curve = 0.5162,
    preferred_supplier_ids = { "SUP-002014", "SUP-001040" },
    gen_id = 2013,
}
_VP["VP-002014"] = {
    label = "OrionTruck modelo 2214 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 285918,
    wear_curve = 0.7274,
    preferred_supplier_ids = { "SUP-002015", "SUP-001043" },
    gen_id = 2014,
}
_VP["VP-002015"] = {
    label = "SigmaBike modelo 2215 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 286055,
    wear_curve = 0.3131,
    preferred_supplier_ids = { "SUP-002016", "SUP-001046" },
    gen_id = 2015,
}
_VP["VP-002016"] = {
    label = "AstraMotors modelo 2216 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 286192,
    wear_curve = 0.2649,
    preferred_supplier_ids = { "SUP-002017", "SUP-001049" },
    gen_id = 2016,
}
_VP["VP-002017"] = {
    label = "RioVeículos modelo 2217 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 286329,
    wear_curve = 0.2722,
    preferred_supplier_ids = { "SUP-002018", "SUP-001052" },
    gen_id = 2017,
}
_VP["VP-002018"] = {
    label = "NorteAuto modelo 2218 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 286466,
    wear_curve = 0.4983,
    preferred_supplier_ids = { "SUP-002019", "SUP-001055" },
    gen_id = 2018,
}
_VP["VP-002019"] = {
    label = "DeltaMob modelo 2219 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 286603,
    wear_curve = 0.2463,
    preferred_supplier_ids = { "SUP-002020", "SUP-001058" },
    gen_id = 2019,
}
_VP["VP-002020"] = {
    label = "OrionTruck modelo 2220 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 286740,
    wear_curve = 0.9296,
    preferred_supplier_ids = { "SUP-002021", "SUP-001061" },
    gen_id = 2020,
}
_VP["VP-002021"] = {
    label = "SigmaBike modelo 2221 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 286877,
    wear_curve = 0.7341,
    preferred_supplier_ids = { "SUP-002022", "SUP-001064" },
    gen_id = 2021,
}
_VP["VP-002022"] = {
    label = "AstraMotors modelo 2222 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 287014,
    wear_curve = 0.4786,
    preferred_supplier_ids = { "SUP-002023", "SUP-001067" },
    gen_id = 2022,
}
_VP["VP-002023"] = {
    label = "RioVeículos modelo 2223 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 287151,
    wear_curve = 0.2173,
    preferred_supplier_ids = { "SUP-002024", "SUP-001070" },
    gen_id = 2023,
}
_VP["VP-002024"] = {
    label = "NorteAuto modelo 2224 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 287288,
    wear_curve = 0.2135,
    preferred_supplier_ids = { "SUP-002025", "SUP-001073" },
    gen_id = 2024,
}
_VP["VP-002025"] = {
    label = "DeltaMob modelo 2225 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 287425,
    wear_curve = 0.5779,
    preferred_supplier_ids = { "SUP-002026", "SUP-001076" },
    gen_id = 2025,
}
_VP["VP-002026"] = {
    label = "OrionTruck modelo 2226 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 287562,
    wear_curve = 0.3391,
    preferred_supplier_ids = { "SUP-002027", "SUP-001079" },
    gen_id = 2026,
}
_VP["VP-002027"] = {
    label = "SigmaBike modelo 2227 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 287699,
    wear_curve = 0.6403,
    preferred_supplier_ids = { "SUP-002028", "SUP-001082" },
    gen_id = 2027,
}
_VP["VP-002028"] = {
    label = "AstraMotors modelo 2228 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 287836,
    wear_curve = 0.8104,
    preferred_supplier_ids = { "SUP-002029", "SUP-001085" },
    gen_id = 2028,
}
_VP["VP-002029"] = {
    label = "RioVeículos modelo 2229 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 287973,
    wear_curve = 0.5246,
    preferred_supplier_ids = { "SUP-002030", "SUP-001088" },
    gen_id = 2029,
}
_VP["VP-002030"] = {
    label = "NorteAuto modelo 2230 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 288110,
    wear_curve = 0.9937,
    preferred_supplier_ids = { "SUP-002031", "SUP-001091" },
    gen_id = 2030,
}
_VP["VP-002031"] = {
    label = "DeltaMob modelo 2231 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 288247,
    wear_curve = 0.5881,
    preferred_supplier_ids = { "SUP-002032", "SUP-001094" },
    gen_id = 2031,
}
_VP["VP-002032"] = {
    label = "OrionTruck modelo 2232 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 288384,
    wear_curve = 0.1784,
    preferred_supplier_ids = { "SUP-002033", "SUP-001097" },
    gen_id = 2032,
}
_VP["VP-002033"] = {
    label = "SigmaBike modelo 2233 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 288521,
    wear_curve = 0.9362,
    preferred_supplier_ids = { "SUP-002034", "SUP-001100" },
    gen_id = 2033,
}
_VP["VP-002034"] = {
    label = "AstraMotors modelo 2234 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 288658,
    wear_curve = 0.7323,
    preferred_supplier_ids = { "SUP-002035", "SUP-001103" },
    gen_id = 2034,
}
_VP["VP-002035"] = {
    label = "RioVeículos modelo 2235 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 288795,
    wear_curve = 0.9398,
    preferred_supplier_ids = { "SUP-002036", "SUP-001106" },
    gen_id = 2035,
}
_VP["VP-002036"] = {
    label = "NorteAuto modelo 2236 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 288932,
    wear_curve = 0.8370,
    preferred_supplier_ids = { "SUP-002037", "SUP-001109" },
    gen_id = 2036,
}
_VP["VP-002037"] = {
    label = "DeltaMob modelo 2237 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 289069,
    wear_curve = 0.1727,
    preferred_supplier_ids = { "SUP-002038", "SUP-001112" },
    gen_id = 2037,
}
_VP["VP-002038"] = {
    label = "OrionTruck modelo 2238 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 289206,
    wear_curve = 0.8243,
    preferred_supplier_ids = { "SUP-002039", "SUP-001115" },
    gen_id = 2038,
}
_VP["VP-002039"] = {
    label = "SigmaBike modelo 2239 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 289343,
    wear_curve = 0.1687,
    preferred_supplier_ids = { "SUP-002040", "SUP-001118" },
    gen_id = 2039,
}
_VP["VP-002040"] = {
    label = "AstraMotors modelo 2240 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 289480,
    wear_curve = 0.2038,
    preferred_supplier_ids = { "SUP-002041", "SUP-001121" },
    gen_id = 2040,
}
_VP["VP-002041"] = {
    label = "RioVeículos modelo 2241 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 289617,
    wear_curve = 0.2582,
    preferred_supplier_ids = { "SUP-002042", "SUP-001124" },
    gen_id = 2041,
}
_VP["VP-002042"] = {
    label = "NorteAuto modelo 2242 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 289754,
    wear_curve = 0.3122,
    preferred_supplier_ids = { "SUP-002043", "SUP-001127" },
    gen_id = 2042,
}
_VP["VP-002043"] = {
    label = "DeltaMob modelo 2243 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 289891,
    wear_curve = 0.4734,
    preferred_supplier_ids = { "SUP-002044", "SUP-001130" },
    gen_id = 2043,
}
_VP["VP-002044"] = {
    label = "OrionTruck modelo 2244 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 10028,
    wear_curve = 0.5746,
    preferred_supplier_ids = { "SUP-002045", "SUP-001133" },
    gen_id = 2044,
}
_VP["VP-002045"] = {
    label = "SigmaBike modelo 2245 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 10165,
    wear_curve = 0.2659,
    preferred_supplier_ids = { "SUP-002046", "SUP-001136" },
    gen_id = 2045,
}
_VP["VP-002046"] = {
    label = "AstraMotors modelo 2246 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 10302,
    wear_curve = 0.7266,
    preferred_supplier_ids = { "SUP-002047", "SUP-001139" },
    gen_id = 2046,
}
_VP["VP-002047"] = {
    label = "RioVeículos modelo 2247 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 10439,
    wear_curve = 0.5187,
    preferred_supplier_ids = { "SUP-002048", "SUP-001142" },
    gen_id = 2047,
}
_VP["VP-002048"] = {
    label = "NorteAuto modelo 2248 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 10576,
    wear_curve = 0.1568,
    preferred_supplier_ids = { "SUP-002049", "SUP-001145" },
    gen_id = 2048,
}
_VP["VP-002049"] = {
    label = "DeltaMob modelo 2249 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 10713,
    wear_curve = 0.5443,
    preferred_supplier_ids = { "SUP-002050", "SUP-001148" },
    gen_id = 2049,
}
_VP["VP-002050"] = {
    label = "OrionTruck modelo 2250 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 10850,
    wear_curve = 0.8683,
    preferred_supplier_ids = { "SUP-002051", "SUP-001151" },
    gen_id = 2050,
}
_VP["VP-002051"] = {
    label = "SigmaBike modelo 2251 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 10987,
    wear_curve = 0.5666,
    preferred_supplier_ids = { "SUP-002052", "SUP-001154" },
    gen_id = 2051,
}
_VP["VP-002052"] = {
    label = "AstraMotors modelo 2252 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 11124,
    wear_curve = 0.2356,
    preferred_supplier_ids = { "SUP-002053", "SUP-001157" },
    gen_id = 2052,
}
_VP["VP-002053"] = {
    label = "RioVeículos modelo 2253 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 11261,
    wear_curve = 0.3211,
    preferred_supplier_ids = { "SUP-002054", "SUP-001160" },
    gen_id = 2053,
}
_VP["VP-002054"] = {
    label = "NorteAuto modelo 2254 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 11398,
    wear_curve = 0.2633,
    preferred_supplier_ids = { "SUP-002055", "SUP-001163" },
    gen_id = 2054,
}
_VP["VP-002055"] = {
    label = "DeltaMob modelo 2255 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 11535,
    wear_curve = 0.9357,
    preferred_supplier_ids = { "SUP-002056", "SUP-001166" },
    gen_id = 2055,
}
_VP["VP-002056"] = {
    label = "OrionTruck modelo 2256 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 11672,
    wear_curve = 0.8579,
    preferred_supplier_ids = { "SUP-002057", "SUP-001169" },
    gen_id = 2056,
}
_VP["VP-002057"] = {
    label = "SigmaBike modelo 2257 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 11809,
    wear_curve = 0.3308,
    preferred_supplier_ids = { "SUP-002058", "SUP-001172" },
    gen_id = 2057,
}
_VP["VP-002058"] = {
    label = "AstraMotors modelo 2258 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 11946,
    wear_curve = 0.3612,
    preferred_supplier_ids = { "SUP-002059", "SUP-001175" },
    gen_id = 2058,
}
_VP["VP-002059"] = {
    label = "RioVeículos modelo 2259 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 12083,
    wear_curve = 0.4466,
    preferred_supplier_ids = { "SUP-002060", "SUP-001178" },
    gen_id = 2059,
}
_VP["VP-002060"] = {
    label = "NorteAuto modelo 2260 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 12220,
    wear_curve = 0.9868,
    preferred_supplier_ids = { "SUP-002061", "SUP-001181" },
    gen_id = 2060,
}
_VP["VP-002061"] = {
    label = "DeltaMob modelo 2261 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 12357,
    wear_curve = 0.2272,
    preferred_supplier_ids = { "SUP-002062", "SUP-001184" },
    gen_id = 2061,
}
_VP["VP-002062"] = {
    label = "OrionTruck modelo 2262 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 12494,
    wear_curve = 0.4083,
    preferred_supplier_ids = { "SUP-002063", "SUP-001187" },
    gen_id = 2062,
}
_VP["VP-002063"] = {
    label = "SigmaBike modelo 2263 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 12631,
    wear_curve = 0.8670,
    preferred_supplier_ids = { "SUP-002064", "SUP-001190" },
    gen_id = 2063,
}
_VP["VP-002064"] = {
    label = "AstraMotors modelo 2264 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 12768,
    wear_curve = 0.5896,
    preferred_supplier_ids = { "SUP-002065", "SUP-001193" },
    gen_id = 2064,
}
_VP["VP-002065"] = {
    label = "RioVeículos modelo 2265 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 12905,
    wear_curve = 0.3035,
    preferred_supplier_ids = { "SUP-002066", "SUP-001196" },
    gen_id = 2065,
}
_VP["VP-002066"] = {
    label = "NorteAuto modelo 2266 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 13042,
    wear_curve = 0.4408,
    preferred_supplier_ids = { "SUP-002067", "SUP-001199" },
    gen_id = 2066,
}
_VP["VP-002067"] = {
    label = "DeltaMob modelo 2267 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 13179,
    wear_curve = 0.6367,
    preferred_supplier_ids = { "SUP-002068", "SUP-001202" },
    gen_id = 2067,
}
_VP["VP-002068"] = {
    label = "OrionTruck modelo 2268 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 13316,
    wear_curve = 0.6342,
    preferred_supplier_ids = { "SUP-002069", "SUP-001205" },
    gen_id = 2068,
}
_VP["VP-002069"] = {
    label = "SigmaBike modelo 2269 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 13453,
    wear_curve = 0.2539,
    preferred_supplier_ids = { "SUP-002070", "SUP-001208" },
    gen_id = 2069,
}
_VP["VP-002070"] = {
    label = "AstraMotors modelo 2270 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 13590,
    wear_curve = 0.2543,
    preferred_supplier_ids = { "SUP-002071", "SUP-001211" },
    gen_id = 2070,
}
_VP["VP-002071"] = {
    label = "RioVeículos modelo 2271 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 13727,
    wear_curve = 0.4633,
    preferred_supplier_ids = { "SUP-002072", "SUP-001214" },
    gen_id = 2071,
}
_VP["VP-002072"] = {
    label = "NorteAuto modelo 2272 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 13864,
    wear_curve = 0.5835,
    preferred_supplier_ids = { "SUP-002073", "SUP-001217" },
    gen_id = 2072,
}
_VP["VP-002073"] = {
    label = "DeltaMob modelo 2273 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 14001,
    wear_curve = 0.6764,
    preferred_supplier_ids = { "SUP-002074", "SUP-001220" },
    gen_id = 2073,
}
_VP["VP-002074"] = {
    label = "OrionTruck modelo 2274 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 14138,
    wear_curve = 0.4192,
    preferred_supplier_ids = { "SUP-002075", "SUP-001223" },
    gen_id = 2074,
}
_VP["VP-002075"] = {
    label = "SigmaBike modelo 2275 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 14275,
    wear_curve = 0.2427,
    preferred_supplier_ids = { "SUP-002076", "SUP-001226" },
    gen_id = 2075,
}
_VP["VP-002076"] = {
    label = "AstraMotors modelo 2276 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 14412,
    wear_curve = 0.8369,
    preferred_supplier_ids = { "SUP-002077", "SUP-001229" },
    gen_id = 2076,
}
_VP["VP-002077"] = {
    label = "RioVeículos modelo 2277 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 14549,
    wear_curve = 0.4749,
    preferred_supplier_ids = { "SUP-002078", "SUP-001232" },
    gen_id = 2077,
}
_VP["VP-002078"] = {
    label = "NorteAuto modelo 2278 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 14686,
    wear_curve = 0.5746,
    preferred_supplier_ids = { "SUP-002079", "SUP-001235" },
    gen_id = 2078,
}
_VP["VP-002079"] = {
    label = "DeltaMob modelo 2279 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 14823,
    wear_curve = 0.9713,
    preferred_supplier_ids = { "SUP-002080", "SUP-001238" },
    gen_id = 2079,
}
_VP["VP-002080"] = {
    label = "OrionTruck modelo 2280 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 14960,
    wear_curve = 0.7848,
    preferred_supplier_ids = { "SUP-002081", "SUP-001241" },
    gen_id = 2080,
}
_VP["VP-002081"] = {
    label = "SigmaBike modelo 2281 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 15097,
    wear_curve = 0.5352,
    preferred_supplier_ids = { "SUP-002082", "SUP-001244" },
    gen_id = 2081,
}
_VP["VP-002082"] = {
    label = "AstraMotors modelo 2282 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 15234,
    wear_curve = 0.6450,
    preferred_supplier_ids = { "SUP-002083", "SUP-001247" },
    gen_id = 2082,
}
_VP["VP-002083"] = {
    label = "RioVeículos modelo 2283 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 15371,
    wear_curve = 0.8782,
    preferred_supplier_ids = { "SUP-002084", "SUP-001250" },
    gen_id = 2083,
}
_VP["VP-002084"] = {
    label = "NorteAuto modelo 2284 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 15508,
    wear_curve = 0.3483,
    preferred_supplier_ids = { "SUP-002085", "SUP-001253" },
    gen_id = 2084,
}
_VP["VP-002085"] = {
    label = "DeltaMob modelo 2285 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 15645,
    wear_curve = 0.4580,
    preferred_supplier_ids = { "SUP-002086", "SUP-001256" },
    gen_id = 2085,
}
_VP["VP-002086"] = {
    label = "OrionTruck modelo 2286 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 15782,
    wear_curve = 0.6365,
    preferred_supplier_ids = { "SUP-002087", "SUP-001259" },
    gen_id = 2086,
}
_VP["VP-002087"] = {
    label = "SigmaBike modelo 2287 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 15919,
    wear_curve = 0.7184,
    preferred_supplier_ids = { "SUP-002088", "SUP-001262" },
    gen_id = 2087,
}
_VP["VP-002088"] = {
    label = "AstraMotors modelo 2288 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 16056,
    wear_curve = 0.3459,
    preferred_supplier_ids = { "SUP-002089", "SUP-001265" },
    gen_id = 2088,
}
_VP["VP-002089"] = {
    label = "RioVeículos modelo 2289 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 16193,
    wear_curve = 0.8481,
    preferred_supplier_ids = { "SUP-002090", "SUP-001268" },
    gen_id = 2089,
}
_VP["VP-002090"] = {
    label = "NorteAuto modelo 2290 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 16330,
    wear_curve = 0.8321,
    preferred_supplier_ids = { "SUP-002091", "SUP-001271" },
    gen_id = 2090,
}
_VP["VP-002091"] = {
    label = "DeltaMob modelo 2291 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 16467,
    wear_curve = 0.2324,
    preferred_supplier_ids = { "SUP-002092", "SUP-001274" },
    gen_id = 2091,
}
_VP["VP-002092"] = {
    label = "OrionTruck modelo 2292 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 16604,
    wear_curve = 0.6357,
    preferred_supplier_ids = { "SUP-002093", "SUP-001277" },
    gen_id = 2092,
}
_VP["VP-002093"] = {
    label = "SigmaBike modelo 2293 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 16741,
    wear_curve = 0.9200,
    preferred_supplier_ids = { "SUP-002094", "SUP-001280" },
    gen_id = 2093,
}
_VP["VP-002094"] = {
    label = "AstraMotors modelo 2294 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 16878,
    wear_curve = 0.1689,
    preferred_supplier_ids = { "SUP-002095", "SUP-001283" },
    gen_id = 2094,
}
_VP["VP-002095"] = {
    label = "RioVeículos modelo 2295 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 17015,
    wear_curve = 0.2871,
    preferred_supplier_ids = { "SUP-002096", "SUP-001286" },
    gen_id = 2095,
}
_VP["VP-002096"] = {
    label = "NorteAuto modelo 2296 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 17152,
    wear_curve = 0.2971,
    preferred_supplier_ids = { "SUP-002097", "SUP-001289" },
    gen_id = 2096,
}
_VP["VP-002097"] = {
    label = "DeltaMob modelo 2297 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 17289,
    wear_curve = 0.9406,
    preferred_supplier_ids = { "SUP-002098", "SUP-001292" },
    gen_id = 2097,
}
_VP["VP-002098"] = {
    label = "OrionTruck modelo 2298 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 17426,
    wear_curve = 0.9905,
    preferred_supplier_ids = { "SUP-002099", "SUP-001295" },
    gen_id = 2098,
}
_VP["VP-002099"] = {
    label = "SigmaBike modelo 2299 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 17563,
    wear_curve = 0.7773,
    preferred_supplier_ids = { "SUP-002100", "SUP-001298" },
    gen_id = 2099,
}
_VP["VP-002100"] = {
    label = "AstraMotors modelo 2300 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 17700,
    wear_curve = 0.9281,
    preferred_supplier_ids = { "SUP-002101", "SUP-001301" },
    gen_id = 2100,
}
_VP["VP-002101"] = {
    label = "RioVeículos modelo 2301 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 17837,
    wear_curve = 0.5476,
    preferred_supplier_ids = { "SUP-002102", "SUP-001304" },
    gen_id = 2101,
}
_VP["VP-002102"] = {
    label = "NorteAuto modelo 2302 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 17974,
    wear_curve = 0.5326,
    preferred_supplier_ids = { "SUP-002103", "SUP-001307" },
    gen_id = 2102,
}
_VP["VP-002103"] = {
    label = "DeltaMob modelo 2303 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 18111,
    wear_curve = 0.7302,
    preferred_supplier_ids = { "SUP-002104", "SUP-001310" },
    gen_id = 2103,
}
_VP["VP-002104"] = {
    label = "OrionTruck modelo 2304 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 18248,
    wear_curve = 0.7461,
    preferred_supplier_ids = { "SUP-002105", "SUP-001313" },
    gen_id = 2104,
}
_VP["VP-002105"] = {
    label = "SigmaBike modelo 2305 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 18385,
    wear_curve = 0.3369,
    preferred_supplier_ids = { "SUP-002106", "SUP-001316" },
    gen_id = 2105,
}
_VP["VP-002106"] = {
    label = "AstraMotors modelo 2306 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 18522,
    wear_curve = 0.7112,
    preferred_supplier_ids = { "SUP-002107", "SUP-001319" },
    gen_id = 2106,
}
_VP["VP-002107"] = {
    label = "RioVeículos modelo 2307 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 18659,
    wear_curve = 0.4654,
    preferred_supplier_ids = { "SUP-002108", "SUP-001322" },
    gen_id = 2107,
}
_VP["VP-002108"] = {
    label = "NorteAuto modelo 2308 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 18796,
    wear_curve = 0.5424,
    preferred_supplier_ids = { "SUP-002109", "SUP-001325" },
    gen_id = 2108,
}
_VP["VP-002109"] = {
    label = "DeltaMob modelo 2309 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 18933,
    wear_curve = 0.7338,
    preferred_supplier_ids = { "SUP-002110", "SUP-001328" },
    gen_id = 2109,
}
_VP["VP-002110"] = {
    label = "OrionTruck modelo 2310 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 19070,
    wear_curve = 0.8443,
    preferred_supplier_ids = { "SUP-002111", "SUP-001331" },
    gen_id = 2110,
}
_VP["VP-002111"] = {
    label = "SigmaBike modelo 2311 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 19207,
    wear_curve = 0.7773,
    preferred_supplier_ids = { "SUP-002112", "SUP-001334" },
    gen_id = 2111,
}
_VP["VP-002112"] = {
    label = "AstraMotors modelo 2312 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 19344,
    wear_curve = 0.2556,
    preferred_supplier_ids = { "SUP-002113", "SUP-001337" },
    gen_id = 2112,
}
_VP["VP-002113"] = {
    label = "RioVeículos modelo 2313 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 19481,
    wear_curve = 0.8665,
    preferred_supplier_ids = { "SUP-002114", "SUP-001340" },
    gen_id = 2113,
}
_VP["VP-002114"] = {
    label = "NorteAuto modelo 2314 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 19618,
    wear_curve = 0.2037,
    preferred_supplier_ids = { "SUP-002115", "SUP-001343" },
    gen_id = 2114,
}
_VP["VP-002115"] = {
    label = "DeltaMob modelo 2315 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 19755,
    wear_curve = 0.2694,
    preferred_supplier_ids = { "SUP-002116", "SUP-001346" },
    gen_id = 2115,
}
_VP["VP-002116"] = {
    label = "OrionTruck modelo 2316 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 19892,
    wear_curve = 0.8370,
    preferred_supplier_ids = { "SUP-002117", "SUP-001349" },
    gen_id = 2116,
}
_VP["VP-002117"] = {
    label = "SigmaBike modelo 2317 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 20029,
    wear_curve = 0.3801,
    preferred_supplier_ids = { "SUP-002118", "SUP-001352" },
    gen_id = 2117,
}
_VP["VP-002118"] = {
    label = "AstraMotors modelo 2318 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 20166,
    wear_curve = 0.9524,
    preferred_supplier_ids = { "SUP-002119", "SUP-001355" },
    gen_id = 2118,
}
_VP["VP-002119"] = {
    label = "RioVeículos modelo 2319 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 20303,
    wear_curve = 0.6809,
    preferred_supplier_ids = { "SUP-002120", "SUP-001358" },
    gen_id = 2119,
}
_VP["VP-002120"] = {
    label = "NorteAuto modelo 2320 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 20440,
    wear_curve = 0.7986,
    preferred_supplier_ids = { "SUP-002121", "SUP-001361" },
    gen_id = 2120,
}
_VP["VP-002121"] = {
    label = "DeltaMob modelo 2321 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 20577,
    wear_curve = 0.5368,
    preferred_supplier_ids = { "SUP-002122", "SUP-001364" },
    gen_id = 2121,
}
_VP["VP-002122"] = {
    label = "OrionTruck modelo 2322 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 20714,
    wear_curve = 0.5368,
    preferred_supplier_ids = { "SUP-002123", "SUP-001367" },
    gen_id = 2122,
}
_VP["VP-002123"] = {
    label = "SigmaBike modelo 2323 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 20851,
    wear_curve = 0.5106,
    preferred_supplier_ids = { "SUP-002124", "SUP-001370" },
    gen_id = 2123,
}
_VP["VP-002124"] = {
    label = "AstraMotors modelo 2324 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 20988,
    wear_curve = 0.8438,
    preferred_supplier_ids = { "SUP-002125", "SUP-001373" },
    gen_id = 2124,
}
_VP["VP-002125"] = {
    label = "RioVeículos modelo 2325 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 21125,
    wear_curve = 0.3139,
    preferred_supplier_ids = { "SUP-002126", "SUP-001376" },
    gen_id = 2125,
}
_VP["VP-002126"] = {
    label = "NorteAuto modelo 2326 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 21262,
    wear_curve = 0.2175,
    preferred_supplier_ids = { "SUP-002127", "SUP-001379" },
    gen_id = 2126,
}
_VP["VP-002127"] = {
    label = "DeltaMob modelo 2327 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 21399,
    wear_curve = 0.8035,
    preferred_supplier_ids = { "SUP-002128", "SUP-001382" },
    gen_id = 2127,
}
_VP["VP-002128"] = {
    label = "OrionTruck modelo 2328 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 21536,
    wear_curve = 0.4424,
    preferred_supplier_ids = { "SUP-002129", "SUP-001385" },
    gen_id = 2128,
}
_VP["VP-002129"] = {
    label = "SigmaBike modelo 2329 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 21673,
    wear_curve = 0.4209,
    preferred_supplier_ids = { "SUP-002130", "SUP-001388" },
    gen_id = 2129,
}
_VP["VP-002130"] = {
    label = "AstraMotors modelo 2330 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 21810,
    wear_curve = 0.5319,
    preferred_supplier_ids = { "SUP-002131", "SUP-001391" },
    gen_id = 2130,
}
_VP["VP-002131"] = {
    label = "RioVeículos modelo 2331 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 21947,
    wear_curve = 0.4297,
    preferred_supplier_ids = { "SUP-002132", "SUP-001394" },
    gen_id = 2131,
}
_VP["VP-002132"] = {
    label = "NorteAuto modelo 2332 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 22084,
    wear_curve = 0.1790,
    preferred_supplier_ids = { "SUP-002133", "SUP-001397" },
    gen_id = 2132,
}
_VP["VP-002133"] = {
    label = "DeltaMob modelo 2333 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 22221,
    wear_curve = 0.3220,
    preferred_supplier_ids = { "SUP-002134", "SUP-001400" },
    gen_id = 2133,
}
_VP["VP-002134"] = {
    label = "OrionTruck modelo 2334 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 22358,
    wear_curve = 0.5952,
    preferred_supplier_ids = { "SUP-002135", "SUP-001403" },
    gen_id = 2134,
}
_VP["VP-002135"] = {
    label = "SigmaBike modelo 2335 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 22495,
    wear_curve = 0.8961,
    preferred_supplier_ids = { "SUP-002136", "SUP-001406" },
    gen_id = 2135,
}
_VP["VP-002136"] = {
    label = "AstraMotors modelo 2336 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 22632,
    wear_curve = 0.9600,
    preferred_supplier_ids = { "SUP-002137", "SUP-001409" },
    gen_id = 2136,
}
_VP["VP-002137"] = {
    label = "RioVeículos modelo 2337 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 22769,
    wear_curve = 0.7611,
    preferred_supplier_ids = { "SUP-002138", "SUP-001412" },
    gen_id = 2137,
}
_VP["VP-002138"] = {
    label = "NorteAuto modelo 2338 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 22906,
    wear_curve = 0.5109,
    preferred_supplier_ids = { "SUP-002139", "SUP-001415" },
    gen_id = 2138,
}
_VP["VP-002139"] = {
    label = "DeltaMob modelo 2339 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 23043,
    wear_curve = 0.9969,
    preferred_supplier_ids = { "SUP-002140", "SUP-001418" },
    gen_id = 2139,
}
_VP["VP-002140"] = {
    label = "OrionTruck modelo 2340 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 23180,
    wear_curve = 0.7313,
    preferred_supplier_ids = { "SUP-002141", "SUP-001421" },
    gen_id = 2140,
}
_VP["VP-002141"] = {
    label = "SigmaBike modelo 2341 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 23317,
    wear_curve = 0.6994,
    preferred_supplier_ids = { "SUP-002142", "SUP-001424" },
    gen_id = 2141,
}
_VP["VP-002142"] = {
    label = "AstraMotors modelo 2342 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 23454,
    wear_curve = 0.4217,
    preferred_supplier_ids = { "SUP-002143", "SUP-001427" },
    gen_id = 2142,
}
_VP["VP-002143"] = {
    label = "RioVeículos modelo 2343 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 23591,
    wear_curve = 0.9160,
    preferred_supplier_ids = { "SUP-002144", "SUP-001430" },
    gen_id = 2143,
}
_VP["VP-002144"] = {
    label = "NorteAuto modelo 2344 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 23728,
    wear_curve = 0.6204,
    preferred_supplier_ids = { "SUP-002145", "SUP-001433" },
    gen_id = 2144,
}
_VP["VP-002145"] = {
    label = "DeltaMob modelo 2345 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 23865,
    wear_curve = 0.7385,
    preferred_supplier_ids = { "SUP-002146", "SUP-001436" },
    gen_id = 2145,
}
_VP["VP-002146"] = {
    label = "OrionTruck modelo 2346 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 24002,
    wear_curve = 0.9955,
    preferred_supplier_ids = { "SUP-002147", "SUP-001439" },
    gen_id = 2146,
}
_VP["VP-002147"] = {
    label = "SigmaBike modelo 2347 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 24139,
    wear_curve = 0.7636,
    preferred_supplier_ids = { "SUP-002148", "SUP-001442" },
    gen_id = 2147,
}
_VP["VP-002148"] = {
    label = "AstraMotors modelo 2348 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 24276,
    wear_curve = 0.3279,
    preferred_supplier_ids = { "SUP-002149", "SUP-001445" },
    gen_id = 2148,
}
_VP["VP-002149"] = {
    label = "RioVeículos modelo 2349 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 24413,
    wear_curve = 0.6640,
    preferred_supplier_ids = { "SUP-002150", "SUP-001448" },
    gen_id = 2149,
}
_VP["VP-002150"] = {
    label = "NorteAuto modelo 2350 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 24550,
    wear_curve = 0.1536,
    preferred_supplier_ids = { "SUP-002151", "SUP-001451" },
    gen_id = 2150,
}
_VP["VP-002151"] = {
    label = "DeltaMob modelo 2351 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 24687,
    wear_curve = 0.8360,
    preferred_supplier_ids = { "SUP-002152", "SUP-001454" },
    gen_id = 2151,
}
_VP["VP-002152"] = {
    label = "OrionTruck modelo 2352 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 24824,
    wear_curve = 0.2065,
    preferred_supplier_ids = { "SUP-002153", "SUP-001457" },
    gen_id = 2152,
}
_VP["VP-002153"] = {
    label = "SigmaBike modelo 2353 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 24961,
    wear_curve = 0.2075,
    preferred_supplier_ids = { "SUP-002154", "SUP-001460" },
    gen_id = 2153,
}
_VP["VP-002154"] = {
    label = "AstraMotors modelo 2354 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 25098,
    wear_curve = 0.6108,
    preferred_supplier_ids = { "SUP-002155", "SUP-001463" },
    gen_id = 2154,
}
_VP["VP-002155"] = {
    label = "RioVeículos modelo 2355 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 25235,
    wear_curve = 0.9039,
    preferred_supplier_ids = { "SUP-002156", "SUP-001466" },
    gen_id = 2155,
}
_VP["VP-002156"] = {
    label = "NorteAuto modelo 2356 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 25372,
    wear_curve = 0.4798,
    preferred_supplier_ids = { "SUP-002157", "SUP-001469" },
    gen_id = 2156,
}
_VP["VP-002157"] = {
    label = "DeltaMob modelo 2357 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 25509,
    wear_curve = 0.4366,
    preferred_supplier_ids = { "SUP-002158", "SUP-001472" },
    gen_id = 2157,
}
_VP["VP-002158"] = {
    label = "OrionTruck modelo 2358 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 25646,
    wear_curve = 0.5095,
    preferred_supplier_ids = { "SUP-002159", "SUP-001475" },
    gen_id = 2158,
}
_VP["VP-002159"] = {
    label = "SigmaBike modelo 2359 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 25783,
    wear_curve = 0.2945,
    preferred_supplier_ids = { "SUP-002160", "SUP-001478" },
    gen_id = 2159,
}
_VP["VP-002160"] = {
    label = "AstraMotors modelo 2360 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 25920,
    wear_curve = 0.1615,
    preferred_supplier_ids = { "SUP-002161", "SUP-001481" },
    gen_id = 2160,
}
_VP["VP-002161"] = {
    label = "RioVeículos modelo 2361 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 26057,
    wear_curve = 0.8465,
    preferred_supplier_ids = { "SUP-002162", "SUP-001484" },
    gen_id = 2161,
}
_VP["VP-002162"] = {
    label = "NorteAuto modelo 2362 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 26194,
    wear_curve = 0.8416,
    preferred_supplier_ids = { "SUP-002163", "SUP-001487" },
    gen_id = 2162,
}
_VP["VP-002163"] = {
    label = "DeltaMob modelo 2363 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 26331,
    wear_curve = 0.7475,
    preferred_supplier_ids = { "SUP-002164", "SUP-001490" },
    gen_id = 2163,
}
_VP["VP-002164"] = {
    label = "OrionTruck modelo 2364 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 26468,
    wear_curve = 0.1542,
    preferred_supplier_ids = { "SUP-002165", "SUP-001493" },
    gen_id = 2164,
}
_VP["VP-002165"] = {
    label = "SigmaBike modelo 2365 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 26605,
    wear_curve = 0.1870,
    preferred_supplier_ids = { "SUP-002166", "SUP-001496" },
    gen_id = 2165,
}
_VP["VP-002166"] = {
    label = "AstraMotors modelo 2366 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 26742,
    wear_curve = 0.6662,
    preferred_supplier_ids = { "SUP-002167", "SUP-001499" },
    gen_id = 2166,
}
_VP["VP-002167"] = {
    label = "RioVeículos modelo 2367 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 26879,
    wear_curve = 0.6354,
    preferred_supplier_ids = { "SUP-002168", "SUP-001502" },
    gen_id = 2167,
}
_VP["VP-002168"] = {
    label = "NorteAuto modelo 2368 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 27016,
    wear_curve = 0.7629,
    preferred_supplier_ids = { "SUP-002169", "SUP-001505" },
    gen_id = 2168,
}
_VP["VP-002169"] = {
    label = "DeltaMob modelo 2369 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 27153,
    wear_curve = 0.7740,
    preferred_supplier_ids = { "SUP-002170", "SUP-001508" },
    gen_id = 2169,
}
_VP["VP-002170"] = {
    label = "OrionTruck modelo 2370 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 27290,
    wear_curve = 0.6419,
    preferred_supplier_ids = { "SUP-002171", "SUP-001511" },
    gen_id = 2170,
}
_VP["VP-002171"] = {
    label = "SigmaBike modelo 2371 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 27427,
    wear_curve = 0.8025,
    preferred_supplier_ids = { "SUP-002172", "SUP-001514" },
    gen_id = 2171,
}
_VP["VP-002172"] = {
    label = "AstraMotors modelo 2372 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 27564,
    wear_curve = 0.2256,
    preferred_supplier_ids = { "SUP-002173", "SUP-001517" },
    gen_id = 2172,
}
_VP["VP-002173"] = {
    label = "RioVeículos modelo 2373 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 27701,
    wear_curve = 0.9449,
    preferred_supplier_ids = { "SUP-002174", "SUP-001520" },
    gen_id = 2173,
}
_VP["VP-002174"] = {
    label = "NorteAuto modelo 2374 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 27838,
    wear_curve = 0.7564,
    preferred_supplier_ids = { "SUP-002175", "SUP-001523" },
    gen_id = 2174,
}
_VP["VP-002175"] = {
    label = "DeltaMob modelo 2375 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 27975,
    wear_curve = 0.8391,
    preferred_supplier_ids = { "SUP-002176", "SUP-001526" },
    gen_id = 2175,
}
_VP["VP-002176"] = {
    label = "OrionTruck modelo 2376 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 28112,
    wear_curve = 0.2249,
    preferred_supplier_ids = { "SUP-002177", "SUP-001529" },
    gen_id = 2176,
}
_VP["VP-002177"] = {
    label = "SigmaBike modelo 2377 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 28249,
    wear_curve = 0.4803,
    preferred_supplier_ids = { "SUP-002178", "SUP-001532" },
    gen_id = 2177,
}
_VP["VP-002178"] = {
    label = "AstraMotors modelo 2378 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 28386,
    wear_curve = 0.4472,
    preferred_supplier_ids = { "SUP-002179", "SUP-001535" },
    gen_id = 2178,
}
_VP["VP-002179"] = {
    label = "RioVeículos modelo 2379 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 28523,
    wear_curve = 0.5194,
    preferred_supplier_ids = { "SUP-002180", "SUP-001538" },
    gen_id = 2179,
}
_VP["VP-002180"] = {
    label = "NorteAuto modelo 2380 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 28660,
    wear_curve = 0.7544,
    preferred_supplier_ids = { "SUP-002181", "SUP-001541" },
    gen_id = 2180,
}
_VP["VP-002181"] = {
    label = "DeltaMob modelo 2381 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 28797,
    wear_curve = 0.6776,
    preferred_supplier_ids = { "SUP-002182", "SUP-001544" },
    gen_id = 2181,
}
_VP["VP-002182"] = {
    label = "OrionTruck modelo 2382 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 28934,
    wear_curve = 0.1709,
    preferred_supplier_ids = { "SUP-002183", "SUP-001547" },
    gen_id = 2182,
}
_VP["VP-002183"] = {
    label = "SigmaBike modelo 2383 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 29071,
    wear_curve = 0.9445,
    preferred_supplier_ids = { "SUP-002184", "SUP-001550" },
    gen_id = 2183,
}
_VP["VP-002184"] = {
    label = "AstraMotors modelo 2384 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 29208,
    wear_curve = 0.9296,
    preferred_supplier_ids = { "SUP-002185", "SUP-001553" },
    gen_id = 2184,
}
_VP["VP-002185"] = {
    label = "RioVeículos modelo 2385 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 29345,
    wear_curve = 0.5246,
    preferred_supplier_ids = { "SUP-002186", "SUP-001556" },
    gen_id = 2185,
}
_VP["VP-002186"] = {
    label = "NorteAuto modelo 2386 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 29482,
    wear_curve = 0.2907,
    preferred_supplier_ids = { "SUP-002187", "SUP-001559" },
    gen_id = 2186,
}
_VP["VP-002187"] = {
    label = "DeltaMob modelo 2387 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 29619,
    wear_curve = 0.9954,
    preferred_supplier_ids = { "SUP-002188", "SUP-001562" },
    gen_id = 2187,
}
_VP["VP-002188"] = {
    label = "OrionTruck modelo 2388 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 29756,
    wear_curve = 0.4445,
    preferred_supplier_ids = { "SUP-002189", "SUP-001565" },
    gen_id = 2188,
}
_VP["VP-002189"] = {
    label = "SigmaBike modelo 2389 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 29893,
    wear_curve = 0.8321,
    preferred_supplier_ids = { "SUP-002190", "SUP-001568" },
    gen_id = 2189,
}
_VP["VP-002190"] = {
    label = "AstraMotors modelo 2390 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 30030,
    wear_curve = 0.1635,
    preferred_supplier_ids = { "SUP-002191", "SUP-001571" },
    gen_id = 2190,
}
_VP["VP-002191"] = {
    label = "RioVeículos modelo 2391 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 30167,
    wear_curve = 0.2106,
    preferred_supplier_ids = { "SUP-002192", "SUP-001574" },
    gen_id = 2191,
}
_VP["VP-002192"] = {
    label = "NorteAuto modelo 2392 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 30304,
    wear_curve = 0.8350,
    preferred_supplier_ids = { "SUP-002193", "SUP-001577" },
    gen_id = 2192,
}
_VP["VP-002193"] = {
    label = "DeltaMob modelo 2393 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 30441,
    wear_curve = 0.3487,
    preferred_supplier_ids = { "SUP-002194", "SUP-001580" },
    gen_id = 2193,
}
_VP["VP-002194"] = {
    label = "OrionTruck modelo 2394 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 30578,
    wear_curve = 0.5219,
    preferred_supplier_ids = { "SUP-002195", "SUP-001583" },
    gen_id = 2194,
}
_VP["VP-002195"] = {
    label = "SigmaBike modelo 2395 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 30715,
    wear_curve = 0.7194,
    preferred_supplier_ids = { "SUP-002196", "SUP-001586" },
    gen_id = 2195,
}
_VP["VP-002196"] = {
    label = "AstraMotors modelo 2396 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 30852,
    wear_curve = 0.8281,
    preferred_supplier_ids = { "SUP-002197", "SUP-001589" },
    gen_id = 2196,
}
_VP["VP-002197"] = {
    label = "RioVeículos modelo 2397 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 30989,
    wear_curve = 0.3938,
    preferred_supplier_ids = { "SUP-002198", "SUP-001592" },
    gen_id = 2197,
}
_VP["VP-002198"] = {
    label = "NorteAuto modelo 2398 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 31126,
    wear_curve = 0.5582,
    preferred_supplier_ids = { "SUP-002199", "SUP-001595" },
    gen_id = 2198,
}
_VP["VP-002199"] = {
    label = "DeltaMob modelo 2399 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 31263,
    wear_curve = 0.2199,
    preferred_supplier_ids = { "SUP-002200", "SUP-001598" },
    gen_id = 2199,
}
_VP["VP-002200"] = {
    label = "OrionTruck modelo 2400 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 31400,
    wear_curve = 0.6620,
    preferred_supplier_ids = { "SUP-002201", "SUP-001601" },
    gen_id = 2200,
}
_VP["VP-002201"] = {
    label = "SigmaBike modelo 2401 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 31537,
    wear_curve = 0.7548,
    preferred_supplier_ids = { "SUP-002202", "SUP-001604" },
    gen_id = 2201,
}
_VP["VP-002202"] = {
    label = "AstraMotors modelo 2402 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 31674,
    wear_curve = 0.8784,
    preferred_supplier_ids = { "SUP-002203", "SUP-001607" },
    gen_id = 2202,
}
_VP["VP-002203"] = {
    label = "RioVeículos modelo 2403 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 31811,
    wear_curve = 0.5078,
    preferred_supplier_ids = { "SUP-002204", "SUP-001610" },
    gen_id = 2203,
}
_VP["VP-002204"] = {
    label = "NorteAuto modelo 2404 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 31948,
    wear_curve = 0.7297,
    preferred_supplier_ids = { "SUP-002205", "SUP-001613" },
    gen_id = 2204,
}
_VP["VP-002205"] = {
    label = "DeltaMob modelo 2405 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 32085,
    wear_curve = 0.4101,
    preferred_supplier_ids = { "SUP-002206", "SUP-001616" },
    gen_id = 2205,
}
_VP["VP-002206"] = {
    label = "OrionTruck modelo 2406 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 32222,
    wear_curve = 0.7610,
    preferred_supplier_ids = { "SUP-002207", "SUP-001619" },
    gen_id = 2206,
}
_VP["VP-002207"] = {
    label = "SigmaBike modelo 2407 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 32359,
    wear_curve = 0.1712,
    preferred_supplier_ids = { "SUP-002208", "SUP-001622" },
    gen_id = 2207,
}
_VP["VP-002208"] = {
    label = "AstraMotors modelo 2408 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 32496,
    wear_curve = 0.5095,
    preferred_supplier_ids = { "SUP-002209", "SUP-001625" },
    gen_id = 2208,
}
_VP["VP-002209"] = {
    label = "RioVeículos modelo 2409 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 32633,
    wear_curve = 0.7001,
    preferred_supplier_ids = { "SUP-002210", "SUP-001628" },
    gen_id = 2209,
}
_VP["VP-002210"] = {
    label = "NorteAuto modelo 2410 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 32770,
    wear_curve = 0.4615,
    preferred_supplier_ids = { "SUP-002211", "SUP-001631" },
    gen_id = 2210,
}
_VP["VP-002211"] = {
    label = "DeltaMob modelo 2411 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 32907,
    wear_curve = 0.6305,
    preferred_supplier_ids = { "SUP-002212", "SUP-001634" },
    gen_id = 2211,
}
_VP["VP-002212"] = {
    label = "OrionTruck modelo 2412 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 33044,
    wear_curve = 0.5569,
    preferred_supplier_ids = { "SUP-002213", "SUP-001637" },
    gen_id = 2212,
}
_VP["VP-002213"] = {
    label = "SigmaBike modelo 2413 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 33181,
    wear_curve = 0.2804,
    preferred_supplier_ids = { "SUP-002214", "SUP-001640" },
    gen_id = 2213,
}
_VP["VP-002214"] = {
    label = "AstraMotors modelo 2414 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 33318,
    wear_curve = 0.8236,
    preferred_supplier_ids = { "SUP-002215", "SUP-001643" },
    gen_id = 2214,
}
_VP["VP-002215"] = {
    label = "RioVeículos modelo 2415 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 33455,
    wear_curve = 0.5146,
    preferred_supplier_ids = { "SUP-002216", "SUP-001646" },
    gen_id = 2215,
}
_VP["VP-002216"] = {
    label = "NorteAuto modelo 2416 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 33592,
    wear_curve = 0.3475,
    preferred_supplier_ids = { "SUP-002217", "SUP-001649" },
    gen_id = 2216,
}
_VP["VP-002217"] = {
    label = "DeltaMob modelo 2417 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 33729,
    wear_curve = 0.3069,
    preferred_supplier_ids = { "SUP-002218", "SUP-001652" },
    gen_id = 2217,
}
_VP["VP-002218"] = {
    label = "OrionTruck modelo 2418 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 33866,
    wear_curve = 0.3137,
    preferred_supplier_ids = { "SUP-002219", "SUP-001655" },
    gen_id = 2218,
}
_VP["VP-002219"] = {
    label = "SigmaBike modelo 2419 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 34003,
    wear_curve = 0.3281,
    preferred_supplier_ids = { "SUP-002220", "SUP-001658" },
    gen_id = 2219,
}
_VP["VP-002220"] = {
    label = "AstraMotors modelo 2420 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 34140,
    wear_curve = 0.2705,
    preferred_supplier_ids = { "SUP-002221", "SUP-001661" },
    gen_id = 2220,
}
_VP["VP-002221"] = {
    label = "RioVeículos modelo 2421 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 34277,
    wear_curve = 0.2607,
    preferred_supplier_ids = { "SUP-002222", "SUP-001664" },
    gen_id = 2221,
}
_VP["VP-002222"] = {
    label = "NorteAuto modelo 2422 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 34414,
    wear_curve = 0.8611,
    preferred_supplier_ids = { "SUP-002223", "SUP-001667" },
    gen_id = 2222,
}
_VP["VP-002223"] = {
    label = "DeltaMob modelo 2423 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 34551,
    wear_curve = 0.4752,
    preferred_supplier_ids = { "SUP-002224", "SUP-001670" },
    gen_id = 2223,
}
_VP["VP-002224"] = {
    label = "OrionTruck modelo 2424 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 34688,
    wear_curve = 0.9879,
    preferred_supplier_ids = { "SUP-002225", "SUP-001673" },
    gen_id = 2224,
}
_VP["VP-002225"] = {
    label = "SigmaBike modelo 2425 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 34825,
    wear_curve = 0.7376,
    preferred_supplier_ids = { "SUP-002226", "SUP-001676" },
    gen_id = 2225,
}
_VP["VP-002226"] = {
    label = "AstraMotors modelo 2426 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 34962,
    wear_curve = 0.9507,
    preferred_supplier_ids = { "SUP-002227", "SUP-001679" },
    gen_id = 2226,
}
_VP["VP-002227"] = {
    label = "RioVeículos modelo 2427 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 35099,
    wear_curve = 0.5692,
    preferred_supplier_ids = { "SUP-002228", "SUP-001682" },
    gen_id = 2227,
}
_VP["VP-002228"] = {
    label = "NorteAuto modelo 2428 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 35236,
    wear_curve = 0.3821,
    preferred_supplier_ids = { "SUP-002229", "SUP-001685" },
    gen_id = 2228,
}
_VP["VP-002229"] = {
    label = "DeltaMob modelo 2429 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 35373,
    wear_curve = 0.8350,
    preferred_supplier_ids = { "SUP-002230", "SUP-001688" },
    gen_id = 2229,
}
_VP["VP-002230"] = {
    label = "OrionTruck modelo 2430 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 35510,
    wear_curve = 0.5219,
    preferred_supplier_ids = { "SUP-002231", "SUP-001691" },
    gen_id = 2230,
}
_VP["VP-002231"] = {
    label = "SigmaBike modelo 2431 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 35647,
    wear_curve = 0.5192,
    preferred_supplier_ids = { "SUP-002232", "SUP-001694" },
    gen_id = 2231,
}
_VP["VP-002232"] = {
    label = "AstraMotors modelo 2432 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 35784,
    wear_curve = 0.4342,
    preferred_supplier_ids = { "SUP-002233", "SUP-001697" },
    gen_id = 2232,
}
_VP["VP-002233"] = {
    label = "RioVeículos modelo 2433 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 35921,
    wear_curve = 0.9362,
    preferred_supplier_ids = { "SUP-002234", "SUP-001700" },
    gen_id = 2233,
}
_VP["VP-002234"] = {
    label = "NorteAuto modelo 2434 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 36058,
    wear_curve = 0.7957,
    preferred_supplier_ids = { "SUP-002235", "SUP-001703" },
    gen_id = 2234,
}
_VP["VP-002235"] = {
    label = "DeltaMob modelo 2435 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 36195,
    wear_curve = 0.6985,
    preferred_supplier_ids = { "SUP-002236", "SUP-001706" },
    gen_id = 2235,
}
_VP["VP-002236"] = {
    label = "OrionTruck modelo 2436 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 36332,
    wear_curve = 0.8799,
    preferred_supplier_ids = { "SUP-002237", "SUP-001709" },
    gen_id = 2236,
}
_VP["VP-002237"] = {
    label = "SigmaBike modelo 2437 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 36469,
    wear_curve = 0.6511,
    preferred_supplier_ids = { "SUP-002238", "SUP-001712" },
    gen_id = 2237,
}
_VP["VP-002238"] = {
    label = "AstraMotors modelo 2438 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 36606,
    wear_curve = 0.2114,
    preferred_supplier_ids = { "SUP-002239", "SUP-001715" },
    gen_id = 2238,
}
_VP["VP-002239"] = {
    label = "RioVeículos modelo 2439 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 36743,
    wear_curve = 0.4095,
    preferred_supplier_ids = { "SUP-002240", "SUP-001718" },
    gen_id = 2239,
}
_VP["VP-002240"] = {
    label = "NorteAuto modelo 2440 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 36880,
    wear_curve = 0.9090,
    preferred_supplier_ids = { "SUP-002241", "SUP-001721" },
    gen_id = 2240,
}
_VP["VP-002241"] = {
    label = "DeltaMob modelo 2441 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 37017,
    wear_curve = 0.5850,
    preferred_supplier_ids = { "SUP-002242", "SUP-001724" },
    gen_id = 2241,
}
_VP["VP-002242"] = {
    label = "OrionTruck modelo 2442 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 37154,
    wear_curve = 0.6167,
    preferred_supplier_ids = { "SUP-002243", "SUP-001727" },
    gen_id = 2242,
}
_VP["VP-002243"] = {
    label = "SigmaBike modelo 2443 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 37291,
    wear_curve = 0.8758,
    preferred_supplier_ids = { "SUP-002244", "SUP-001730" },
    gen_id = 2243,
}
_VP["VP-002244"] = {
    label = "AstraMotors modelo 2444 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 37428,
    wear_curve = 0.6329,
    preferred_supplier_ids = { "SUP-002245", "SUP-001733" },
    gen_id = 2244,
}
_VP["VP-002245"] = {
    label = "RioVeículos modelo 2445 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 37565,
    wear_curve = 0.6732,
    preferred_supplier_ids = { "SUP-002246", "SUP-001736" },
    gen_id = 2245,
}
_VP["VP-002246"] = {
    label = "NorteAuto modelo 2446 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 37702,
    wear_curve = 0.6691,
    preferred_supplier_ids = { "SUP-002247", "SUP-001739" },
    gen_id = 2246,
}
_VP["VP-002247"] = {
    label = "DeltaMob modelo 2447 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 37839,
    wear_curve = 0.5022,
    preferred_supplier_ids = { "SUP-002248", "SUP-001742" },
    gen_id = 2247,
}
_VP["VP-002248"] = {
    label = "OrionTruck modelo 2448 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 37976,
    wear_curve = 0.2091,
    preferred_supplier_ids = { "SUP-002249", "SUP-001745" },
    gen_id = 2248,
}
_VP["VP-002249"] = {
    label = "SigmaBike modelo 2449 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 38113,
    wear_curve = 0.7765,
    preferred_supplier_ids = { "SUP-002250", "SUP-001748" },
    gen_id = 2249,
}
_VP["VP-002250"] = {
    label = "AstraMotors modelo 2450 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 38250,
    wear_curve = 0.3676,
    preferred_supplier_ids = { "SUP-002251", "SUP-001751" },
    gen_id = 2250,
}
_VP["VP-002251"] = {
    label = "RioVeículos modelo 2451 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 38387,
    wear_curve = 0.9554,
    preferred_supplier_ids = { "SUP-002252", "SUP-001754" },
    gen_id = 2251,
}
_VP["VP-002252"] = {
    label = "NorteAuto modelo 2452 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 38524,
    wear_curve = 0.6729,
    preferred_supplier_ids = { "SUP-002253", "SUP-001757" },
    gen_id = 2252,
}
_VP["VP-002253"] = {
    label = "DeltaMob modelo 2453 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 38661,
    wear_curve = 0.9493,
    preferred_supplier_ids = { "SUP-002254", "SUP-001760" },
    gen_id = 2253,
}
_VP["VP-002254"] = {
    label = "OrionTruck modelo 2454 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 38798,
    wear_curve = 0.8977,
    preferred_supplier_ids = { "SUP-002255", "SUP-001763" },
    gen_id = 2254,
}
_VP["VP-002255"] = {
    label = "SigmaBike modelo 2455 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 38935,
    wear_curve = 0.3342,
    preferred_supplier_ids = { "SUP-002256", "SUP-001766" },
    gen_id = 2255,
}
_VP["VP-002256"] = {
    label = "AstraMotors modelo 2456 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 39072,
    wear_curve = 0.5397,
    preferred_supplier_ids = { "SUP-002257", "SUP-001769" },
    gen_id = 2256,
}
_VP["VP-002257"] = {
    label = "RioVeículos modelo 2457 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 39209,
    wear_curve = 0.7021,
    preferred_supplier_ids = { "SUP-002258", "SUP-001772" },
    gen_id = 2257,
}
_VP["VP-002258"] = {
    label = "NorteAuto modelo 2458 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 39346,
    wear_curve = 0.3319,
    preferred_supplier_ids = { "SUP-002259", "SUP-001775" },
    gen_id = 2258,
}
_VP["VP-002259"] = {
    label = "DeltaMob modelo 2459 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 39483,
    wear_curve = 0.9058,
    preferred_supplier_ids = { "SUP-002260", "SUP-001778" },
    gen_id = 2259,
}
_VP["VP-002260"] = {
    label = "OrionTruck modelo 2460 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 39620,
    wear_curve = 0.3046,
    preferred_supplier_ids = { "SUP-002261", "SUP-001781" },
    gen_id = 2260,
}
_VP["VP-002261"] = {
    label = "SigmaBike modelo 2461 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 39757,
    wear_curve = 0.1946,
    preferred_supplier_ids = { "SUP-002262", "SUP-001784" },
    gen_id = 2261,
}
_VP["VP-002262"] = {
    label = "AstraMotors modelo 2462 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 39894,
    wear_curve = 0.3964,
    preferred_supplier_ids = { "SUP-002263", "SUP-001787" },
    gen_id = 2262,
}
_VP["VP-002263"] = {
    label = "RioVeículos modelo 2463 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 40031,
    wear_curve = 0.4507,
    preferred_supplier_ids = { "SUP-002264", "SUP-001790" },
    gen_id = 2263,
}
_VP["VP-002264"] = {
    label = "NorteAuto modelo 2464 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 40168,
    wear_curve = 0.8259,
    preferred_supplier_ids = { "SUP-002265", "SUP-001793" },
    gen_id = 2264,
}
_VP["VP-002265"] = {
    label = "DeltaMob modelo 2465 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 40305,
    wear_curve = 0.5553,
    preferred_supplier_ids = { "SUP-002266", "SUP-001796" },
    gen_id = 2265,
}
_VP["VP-002266"] = {
    label = "OrionTruck modelo 2466 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 40442,
    wear_curve = 0.6195,
    preferred_supplier_ids = { "SUP-002267", "SUP-001799" },
    gen_id = 2266,
}
_VP["VP-002267"] = {
    label = "SigmaBike modelo 2467 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 40579,
    wear_curve = 0.2205,
    preferred_supplier_ids = { "SUP-002268", "SUP-001802" },
    gen_id = 2267,
}
_VP["VP-002268"] = {
    label = "AstraMotors modelo 2468 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 40716,
    wear_curve = 0.4945,
    preferred_supplier_ids = { "SUP-002269", "SUP-001805" },
    gen_id = 2268,
}
_VP["VP-002269"] = {
    label = "RioVeículos modelo 2469 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 40853,
    wear_curve = 0.7402,
    preferred_supplier_ids = { "SUP-002270", "SUP-001808" },
    gen_id = 2269,
}
_VP["VP-002270"] = {
    label = "NorteAuto modelo 2470 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 40990,
    wear_curve = 0.5971,
    preferred_supplier_ids = { "SUP-002271", "SUP-001811" },
    gen_id = 2270,
}
_VP["VP-002271"] = {
    label = "DeltaMob modelo 2471 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 41127,
    wear_curve = 0.6736,
    preferred_supplier_ids = { "SUP-002272", "SUP-001814" },
    gen_id = 2271,
}
_VP["VP-002272"] = {
    label = "OrionTruck modelo 2472 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 41264,
    wear_curve = 0.5527,
    preferred_supplier_ids = { "SUP-002273", "SUP-001817" },
    gen_id = 2272,
}
_VP["VP-002273"] = {
    label = "SigmaBike modelo 2473 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 41401,
    wear_curve = 0.4508,
    preferred_supplier_ids = { "SUP-002274", "SUP-001820" },
    gen_id = 2273,
}
_VP["VP-002274"] = {
    label = "AstraMotors modelo 2474 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 41538,
    wear_curve = 0.7172,
    preferred_supplier_ids = { "SUP-002275", "SUP-001823" },
    gen_id = 2274,
}
_VP["VP-002275"] = {
    label = "RioVeículos modelo 2475 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 41675,
    wear_curve = 0.5694,
    preferred_supplier_ids = { "SUP-002276", "SUP-001826" },
    gen_id = 2275,
}
_VP["VP-002276"] = {
    label = "NorteAuto modelo 2476 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 41812,
    wear_curve = 0.9368,
    preferred_supplier_ids = { "SUP-002277", "SUP-001829" },
    gen_id = 2276,
}
_VP["VP-002277"] = {
    label = "DeltaMob modelo 2477 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 41949,
    wear_curve = 0.9982,
    preferred_supplier_ids = { "SUP-002278", "SUP-001832" },
    gen_id = 2277,
}
_VP["VP-002278"] = {
    label = "OrionTruck modelo 2478 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 42086,
    wear_curve = 0.4030,
    preferred_supplier_ids = { "SUP-002279", "SUP-001835" },
    gen_id = 2278,
}
_VP["VP-002279"] = {
    label = "SigmaBike modelo 2479 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 42223,
    wear_curve = 0.7609,
    preferred_supplier_ids = { "SUP-002280", "SUP-001838" },
    gen_id = 2279,
}
_VP["VP-002280"] = {
    label = "AstraMotors modelo 2480 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 42360,
    wear_curve = 0.6832,
    preferred_supplier_ids = { "SUP-002281", "SUP-001841" },
    gen_id = 2280,
}
_VP["VP-002281"] = {
    label = "RioVeículos modelo 2481 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 42497,
    wear_curve = 0.4599,
    preferred_supplier_ids = { "SUP-002282", "SUP-001844" },
    gen_id = 2281,
}
_VP["VP-002282"] = {
    label = "NorteAuto modelo 2482 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 42634,
    wear_curve = 0.7914,
    preferred_supplier_ids = { "SUP-002283", "SUP-001847" },
    gen_id = 2282,
}
_VP["VP-002283"] = {
    label = "DeltaMob modelo 2483 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 42771,
    wear_curve = 0.6408,
    preferred_supplier_ids = { "SUP-002284", "SUP-001850" },
    gen_id = 2283,
}
_VP["VP-002284"] = {
    label = "OrionTruck modelo 2484 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 42908,
    wear_curve = 0.9982,
    preferred_supplier_ids = { "SUP-002285", "SUP-001853" },
    gen_id = 2284,
}
_VP["VP-002285"] = {
    label = "SigmaBike modelo 2485 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 43045,
    wear_curve = 0.9410,
    preferred_supplier_ids = { "SUP-002286", "SUP-001856" },
    gen_id = 2285,
}
_VP["VP-002286"] = {
    label = "AstraMotors modelo 2486 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 43182,
    wear_curve = 0.2815,
    preferred_supplier_ids = { "SUP-002287", "SUP-001859" },
    gen_id = 2286,
}
_VP["VP-002287"] = {
    label = "RioVeículos modelo 2487 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 43319,
    wear_curve = 0.9063,
    preferred_supplier_ids = { "SUP-002288", "SUP-001862" },
    gen_id = 2287,
}
_VP["VP-002288"] = {
    label = "NorteAuto modelo 2488 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 43456,
    wear_curve = 0.8046,
    preferred_supplier_ids = { "SUP-002289", "SUP-001865" },
    gen_id = 2288,
}
_VP["VP-002289"] = {
    label = "DeltaMob modelo 2489 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 43593,
    wear_curve = 0.9103,
    preferred_supplier_ids = { "SUP-002290", "SUP-001868" },
    gen_id = 2289,
}
_VP["VP-002290"] = {
    label = "OrionTruck modelo 2490 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 43730,
    wear_curve = 0.4951,
    preferred_supplier_ids = { "SUP-002291", "SUP-001871" },
    gen_id = 2290,
}
_VP["VP-002291"] = {
    label = "SigmaBike modelo 2491 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 43867,
    wear_curve = 0.1733,
    preferred_supplier_ids = { "SUP-002292", "SUP-001874" },
    gen_id = 2291,
}
_VP["VP-002292"] = {
    label = "AstraMotors modelo 2492 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 44004,
    wear_curve = 0.2911,
    preferred_supplier_ids = { "SUP-002293", "SUP-001877" },
    gen_id = 2292,
}
_VP["VP-002293"] = {
    label = "RioVeículos modelo 2493 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 44141,
    wear_curve = 0.1980,
    preferred_supplier_ids = { "SUP-002294", "SUP-001880" },
    gen_id = 2293,
}
_VP["VP-002294"] = {
    label = "NorteAuto modelo 2494 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 44278,
    wear_curve = 0.4591,
    preferred_supplier_ids = { "SUP-002295", "SUP-001883" },
    gen_id = 2294,
}
_VP["VP-002295"] = {
    label = "DeltaMob modelo 2495 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 44415,
    wear_curve = 0.3792,
    preferred_supplier_ids = { "SUP-002296", "SUP-001886" },
    gen_id = 2295,
}
_VP["VP-002296"] = {
    label = "OrionTruck modelo 2496 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 44552,
    wear_curve = 0.1528,
    preferred_supplier_ids = { "SUP-002297", "SUP-001889" },
    gen_id = 2296,
}
_VP["VP-002297"] = {
    label = "SigmaBike modelo 2497 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 44689,
    wear_curve = 0.4027,
    preferred_supplier_ids = { "SUP-002298", "SUP-001892" },
    gen_id = 2297,
}
_VP["VP-002298"] = {
    label = "AstraMotors modelo 2498 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 44826,
    wear_curve = 0.3766,
    preferred_supplier_ids = { "SUP-002299", "SUP-001895" },
    gen_id = 2298,
}
_VP["VP-002299"] = {
    label = "RioVeículos modelo 2499 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 44963,
    wear_curve = 0.4298,
    preferred_supplier_ids = { "SUP-002300", "SUP-001898" },
    gen_id = 2299,
}
_VP["VP-002300"] = {
    label = "NorteAuto modelo 2500 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 45100,
    wear_curve = 0.5738,
    preferred_supplier_ids = { "SUP-002301", "SUP-001901" },
    gen_id = 2300,
}
_VP["VP-002301"] = {
    label = "DeltaMob modelo 2501 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 45237,
    wear_curve = 0.6665,
    preferred_supplier_ids = { "SUP-002302", "SUP-001904" },
    gen_id = 2301,
}
_VP["VP-002302"] = {
    label = "OrionTruck modelo 2502 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 45374,
    wear_curve = 0.8704,
    preferred_supplier_ids = { "SUP-002303", "SUP-001907" },
    gen_id = 2302,
}
_VP["VP-002303"] = {
    label = "SigmaBike modelo 2503 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 45511,
    wear_curve = 0.2561,
    preferred_supplier_ids = { "SUP-002304", "SUP-001910" },
    gen_id = 2303,
}
_VP["VP-002304"] = {
    label = "AstraMotors modelo 2504 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 45648,
    wear_curve = 0.8145,
    preferred_supplier_ids = { "SUP-002305", "SUP-001913" },
    gen_id = 2304,
}
_VP["VP-002305"] = {
    label = "RioVeículos modelo 2505 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 45785,
    wear_curve = 0.8926,
    preferred_supplier_ids = { "SUP-002306", "SUP-001916" },
    gen_id = 2305,
}
_VP["VP-002306"] = {
    label = "NorteAuto modelo 2506 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 45922,
    wear_curve = 0.7928,
    preferred_supplier_ids = { "SUP-002307", "SUP-001919" },
    gen_id = 2306,
}
_VP["VP-002307"] = {
    label = "DeltaMob modelo 2507 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 46059,
    wear_curve = 0.2605,
    preferred_supplier_ids = { "SUP-002308", "SUP-001922" },
    gen_id = 2307,
}
_VP["VP-002308"] = {
    label = "OrionTruck modelo 2508 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 46196,
    wear_curve = 0.4800,
    preferred_supplier_ids = { "SUP-002309", "SUP-001925" },
    gen_id = 2308,
}
_VP["VP-002309"] = {
    label = "SigmaBike modelo 2509 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 46333,
    wear_curve = 0.8889,
    preferred_supplier_ids = { "SUP-002310", "SUP-001928" },
    gen_id = 2309,
}
_VP["VP-002310"] = {
    label = "AstraMotors modelo 2510 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 46470,
    wear_curve = 0.3093,
    preferred_supplier_ids = { "SUP-002311", "SUP-001931" },
    gen_id = 2310,
}
_VP["VP-002311"] = {
    label = "RioVeículos modelo 2511 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 46607,
    wear_curve = 0.8921,
    preferred_supplier_ids = { "SUP-002312", "SUP-001934" },
    gen_id = 2311,
}
_VP["VP-002312"] = {
    label = "NorteAuto modelo 2512 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 46744,
    wear_curve = 0.3578,
    preferred_supplier_ids = { "SUP-002313", "SUP-001937" },
    gen_id = 2312,
}
_VP["VP-002313"] = {
    label = "DeltaMob modelo 2513 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 46881,
    wear_curve = 0.2872,
    preferred_supplier_ids = { "SUP-002314", "SUP-001940" },
    gen_id = 2313,
}
_VP["VP-002314"] = {
    label = "OrionTruck modelo 2514 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 47018,
    wear_curve = 0.8746,
    preferred_supplier_ids = { "SUP-002315", "SUP-001943" },
    gen_id = 2314,
}
_VP["VP-002315"] = {
    label = "SigmaBike modelo 2515 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 47155,
    wear_curve = 0.5078,
    preferred_supplier_ids = { "SUP-002316", "SUP-001946" },
    gen_id = 2315,
}
_VP["VP-002316"] = {
    label = "AstraMotors modelo 2516 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 47292,
    wear_curve = 0.9255,
    preferred_supplier_ids = { "SUP-002317", "SUP-001949" },
    gen_id = 2316,
}
_VP["VP-002317"] = {
    label = "RioVeículos modelo 2517 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 47429,
    wear_curve = 0.8954,
    preferred_supplier_ids = { "SUP-002318", "SUP-001952" },
    gen_id = 2317,
}
_VP["VP-002318"] = {
    label = "NorteAuto modelo 2518 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 47566,
    wear_curve = 0.7342,
    preferred_supplier_ids = { "SUP-002319", "SUP-001955" },
    gen_id = 2318,
}
_VP["VP-002319"] = {
    label = "DeltaMob modelo 2519 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 47703,
    wear_curve = 0.9327,
    preferred_supplier_ids = { "SUP-002320", "SUP-001958" },
    gen_id = 2319,
}
_VP["VP-002320"] = {
    label = "OrionTruck modelo 2520 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 47840,
    wear_curve = 0.2413,
    preferred_supplier_ids = { "SUP-002321", "SUP-001961" },
    gen_id = 2320,
}
_VP["VP-002321"] = {
    label = "SigmaBike modelo 2521 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 47977,
    wear_curve = 0.6087,
    preferred_supplier_ids = { "SUP-002322", "SUP-001964" },
    gen_id = 2321,
}
_VP["VP-002322"] = {
    label = "AstraMotors modelo 2522 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 48114,
    wear_curve = 0.9456,
    preferred_supplier_ids = { "SUP-002323", "SUP-001967" },
    gen_id = 2322,
}
_VP["VP-002323"] = {
    label = "RioVeículos modelo 2523 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 48251,
    wear_curve = 0.6011,
    preferred_supplier_ids = { "SUP-002324", "SUP-001970" },
    gen_id = 2323,
}
_VP["VP-002324"] = {
    label = "NorteAuto modelo 2524 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 48388,
    wear_curve = 0.7941,
    preferred_supplier_ids = { "SUP-002325", "SUP-001973" },
    gen_id = 2324,
}
_VP["VP-002325"] = {
    label = "DeltaMob modelo 2525 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 48525,
    wear_curve = 0.5121,
    preferred_supplier_ids = { "SUP-002326", "SUP-001976" },
    gen_id = 2325,
}
_VP["VP-002326"] = {
    label = "OrionTruck modelo 2526 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 48662,
    wear_curve = 0.5756,
    preferred_supplier_ids = { "SUP-002327", "SUP-001979" },
    gen_id = 2326,
}
_VP["VP-002327"] = {
    label = "SigmaBike modelo 2527 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 48799,
    wear_curve = 0.4174,
    preferred_supplier_ids = { "SUP-002328", "SUP-001982" },
    gen_id = 2327,
}
_VP["VP-002328"] = {
    label = "AstraMotors modelo 2528 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 48936,
    wear_curve = 0.2505,
    preferred_supplier_ids = { "SUP-002329", "SUP-001985" },
    gen_id = 2328,
}
_VP["VP-002329"] = {
    label = "RioVeículos modelo 2529 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 49073,
    wear_curve = 0.2731,
    preferred_supplier_ids = { "SUP-002330", "SUP-001988" },
    gen_id = 2329,
}
_VP["VP-002330"] = {
    label = "NorteAuto modelo 2530 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 49210,
    wear_curve = 0.7444,
    preferred_supplier_ids = { "SUP-002331", "SUP-001991" },
    gen_id = 2330,
}
_VP["VP-002331"] = {
    label = "DeltaMob modelo 2531 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 49347,
    wear_curve = 0.9426,
    preferred_supplier_ids = { "SUP-002332", "SUP-001994" },
    gen_id = 2331,
}
_VP["VP-002332"] = {
    label = "OrionTruck modelo 2532 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 49484,
    wear_curve = 0.7502,
    preferred_supplier_ids = { "SUP-002333", "SUP-001997" },
    gen_id = 2332,
}
_VP["VP-002333"] = {
    label = "SigmaBike modelo 2533 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 49621,
    wear_curve = 0.4853,
    preferred_supplier_ids = { "SUP-002334", "SUP-002000" },
    gen_id = 2333,
}
_VP["VP-002334"] = {
    label = "AstraMotors modelo 2534 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 49758,
    wear_curve = 0.8473,
    preferred_supplier_ids = { "SUP-002335", "SUP-002003" },
    gen_id = 2334,
}
_VP["VP-002335"] = {
    label = "RioVeículos modelo 2535 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 49895,
    wear_curve = 0.3222,
    preferred_supplier_ids = { "SUP-002336", "SUP-002006" },
    gen_id = 2335,
}
_VP["VP-002336"] = {
    label = "NorteAuto modelo 2536 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 50032,
    wear_curve = 0.2128,
    preferred_supplier_ids = { "SUP-002337", "SUP-002009" },
    gen_id = 2336,
}
_VP["VP-002337"] = {
    label = "DeltaMob modelo 2537 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 50169,
    wear_curve = 0.2339,
    preferred_supplier_ids = { "SUP-002338", "SUP-002012" },
    gen_id = 2337,
}
_VP["VP-002338"] = {
    label = "OrionTruck modelo 2538 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 50306,
    wear_curve = 0.2495,
    preferred_supplier_ids = { "SUP-002339", "SUP-002015" },
    gen_id = 2338,
}
_VP["VP-002339"] = {
    label = "SigmaBike modelo 2539 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 50443,
    wear_curve = 0.8833,
    preferred_supplier_ids = { "SUP-002340", "SUP-002018" },
    gen_id = 2339,
}
_VP["VP-002340"] = {
    label = "AstraMotors modelo 2540 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 50580,
    wear_curve = 0.7310,
    preferred_supplier_ids = { "SUP-002341", "SUP-002021" },
    gen_id = 2340,
}
_VP["VP-002341"] = {
    label = "RioVeículos modelo 2541 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 50717,
    wear_curve = 0.4706,
    preferred_supplier_ids = { "SUP-002342", "SUP-002024" },
    gen_id = 2341,
}
_VP["VP-002342"] = {
    label = "NorteAuto modelo 2542 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 50854,
    wear_curve = 0.2604,
    preferred_supplier_ids = { "SUP-002343", "SUP-002027" },
    gen_id = 2342,
}
_VP["VP-002343"] = {
    label = "DeltaMob modelo 2543 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 50991,
    wear_curve = 0.2445,
    preferred_supplier_ids = { "SUP-002344", "SUP-002030" },
    gen_id = 2343,
}
_VP["VP-002344"] = {
    label = "OrionTruck modelo 2544 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 51128,
    wear_curve = 0.4907,
    preferred_supplier_ids = { "SUP-002345", "SUP-002033" },
    gen_id = 2344,
}
_VP["VP-002345"] = {
    label = "SigmaBike modelo 2545 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 51265,
    wear_curve = 0.1925,
    preferred_supplier_ids = { "SUP-002346", "SUP-002036" },
    gen_id = 2345,
}
_VP["VP-002346"] = {
    label = "AstraMotors modelo 2546 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 51402,
    wear_curve = 0.5575,
    preferred_supplier_ids = { "SUP-002347", "SUP-002039" },
    gen_id = 2346,
}
_VP["VP-002347"] = {
    label = "RioVeículos modelo 2547 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 51539,
    wear_curve = 0.7902,
    preferred_supplier_ids = { "SUP-002348", "SUP-002042" },
    gen_id = 2347,
}
_VP["VP-002348"] = {
    label = "NorteAuto modelo 2548 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 51676,
    wear_curve = 0.4656,
    preferred_supplier_ids = { "SUP-002349", "SUP-002045" },
    gen_id = 2348,
}
_VP["VP-002349"] = {
    label = "DeltaMob modelo 2549 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 51813,
    wear_curve = 0.6886,
    preferred_supplier_ids = { "SUP-002350", "SUP-002048" },
    gen_id = 2349,
}
_VP["VP-002350"] = {
    label = "OrionTruck modelo 2550 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 51950,
    wear_curve = 0.5909,
    preferred_supplier_ids = { "SUP-002351", "SUP-002051" },
    gen_id = 2350,
}
_VP["VP-002351"] = {
    label = "SigmaBike modelo 2551 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 52087,
    wear_curve = 0.1775,
    preferred_supplier_ids = { "SUP-002352", "SUP-002054" },
    gen_id = 2351,
}
_VP["VP-002352"] = {
    label = "AstraMotors modelo 2552 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 52224,
    wear_curve = 0.4029,
    preferred_supplier_ids = { "SUP-002353", "SUP-002057" },
    gen_id = 2352,
}
_VP["VP-002353"] = {
    label = "RioVeículos modelo 2553 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 52361,
    wear_curve = 0.1733,
    preferred_supplier_ids = { "SUP-002354", "SUP-002060" },
    gen_id = 2353,
}
_VP["VP-002354"] = {
    label = "NorteAuto modelo 2554 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 52498,
    wear_curve = 0.5646,
    preferred_supplier_ids = { "SUP-002355", "SUP-002063" },
    gen_id = 2354,
}
_VP["VP-002355"] = {
    label = "DeltaMob modelo 2555 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 52635,
    wear_curve = 0.5536,
    preferred_supplier_ids = { "SUP-002356", "SUP-002066" },
    gen_id = 2355,
}
_VP["VP-002356"] = {
    label = "OrionTruck modelo 2556 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 52772,
    wear_curve = 0.4731,
    preferred_supplier_ids = { "SUP-002357", "SUP-002069" },
    gen_id = 2356,
}
_VP["VP-002357"] = {
    label = "SigmaBike modelo 2557 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 52909,
    wear_curve = 0.4451,
    preferred_supplier_ids = { "SUP-002358", "SUP-002072" },
    gen_id = 2357,
}
_VP["VP-002358"] = {
    label = "AstraMotors modelo 2558 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 53046,
    wear_curve = 0.1998,
    preferred_supplier_ids = { "SUP-002359", "SUP-002075" },
    gen_id = 2358,
}
_VP["VP-002359"] = {
    label = "RioVeículos modelo 2559 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 53183,
    wear_curve = 0.4254,
    preferred_supplier_ids = { "SUP-002360", "SUP-002078" },
    gen_id = 2359,
}
_VP["VP-002360"] = {
    label = "NorteAuto modelo 2560 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 53320,
    wear_curve = 0.5238,
    preferred_supplier_ids = { "SUP-002361", "SUP-002081" },
    gen_id = 2360,
}
_VP["VP-002361"] = {
    label = "DeltaMob modelo 2561 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 53457,
    wear_curve = 0.6651,
    preferred_supplier_ids = { "SUP-002362", "SUP-002084" },
    gen_id = 2361,
}
_VP["VP-002362"] = {
    label = "OrionTruck modelo 2562 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 53594,
    wear_curve = 0.5011,
    preferred_supplier_ids = { "SUP-002363", "SUP-002087" },
    gen_id = 2362,
}
_VP["VP-002363"] = {
    label = "SigmaBike modelo 2563 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 53731,
    wear_curve = 0.4853,
    preferred_supplier_ids = { "SUP-002364", "SUP-002090" },
    gen_id = 2363,
}
_VP["VP-002364"] = {
    label = "AstraMotors modelo 2564 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 53868,
    wear_curve = 0.9882,
    preferred_supplier_ids = { "SUP-002365", "SUP-002093" },
    gen_id = 2364,
}
_VP["VP-002365"] = {
    label = "RioVeículos modelo 2565 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 54005,
    wear_curve = 0.3181,
    preferred_supplier_ids = { "SUP-002366", "SUP-002096" },
    gen_id = 2365,
}
_VP["VP-002366"] = {
    label = "NorteAuto modelo 2566 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 54142,
    wear_curve = 0.3568,
    preferred_supplier_ids = { "SUP-002367", "SUP-002099" },
    gen_id = 2366,
}
_VP["VP-002367"] = {
    label = "DeltaMob modelo 2567 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 54279,
    wear_curve = 0.5095,
    preferred_supplier_ids = { "SUP-002368", "SUP-002102" },
    gen_id = 2367,
}
_VP["VP-002368"] = {
    label = "OrionTruck modelo 2568 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 54416,
    wear_curve = 0.3605,
    preferred_supplier_ids = { "SUP-002369", "SUP-002105" },
    gen_id = 2368,
}
_VP["VP-002369"] = {
    label = "SigmaBike modelo 2569 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 54553,
    wear_curve = 0.4776,
    preferred_supplier_ids = { "SUP-002370", "SUP-002108" },
    gen_id = 2369,
}
_VP["VP-002370"] = {
    label = "AstraMotors modelo 2570 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 54690,
    wear_curve = 0.4186,
    preferred_supplier_ids = { "SUP-002371", "SUP-002111" },
    gen_id = 2370,
}
_VP["VP-002371"] = {
    label = "RioVeículos modelo 2571 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 54827,
    wear_curve = 0.3575,
    preferred_supplier_ids = { "SUP-002372", "SUP-002114" },
    gen_id = 2371,
}
_VP["VP-002372"] = {
    label = "NorteAuto modelo 2572 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 54964,
    wear_curve = 0.5155,
    preferred_supplier_ids = { "SUP-002373", "SUP-002117" },
    gen_id = 2372,
}
_VP["VP-002373"] = {
    label = "DeltaMob modelo 2573 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 55101,
    wear_curve = 0.3595,
    preferred_supplier_ids = { "SUP-002374", "SUP-002120" },
    gen_id = 2373,
}
_VP["VP-002374"] = {
    label = "OrionTruck modelo 2574 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 55238,
    wear_curve = 0.5668,
    preferred_supplier_ids = { "SUP-002375", "SUP-002123" },
    gen_id = 2374,
}
_VP["VP-002375"] = {
    label = "SigmaBike modelo 2575 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 55375,
    wear_curve = 0.4648,
    preferred_supplier_ids = { "SUP-002376", "SUP-002126" },
    gen_id = 2375,
}
_VP["VP-002376"] = {
    label = "AstraMotors modelo 2576 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 55512,
    wear_curve = 0.7590,
    preferred_supplier_ids = { "SUP-002377", "SUP-002129" },
    gen_id = 2376,
}
_VP["VP-002377"] = {
    label = "RioVeículos modelo 2577 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 55649,
    wear_curve = 0.8139,
    preferred_supplier_ids = { "SUP-002378", "SUP-002132" },
    gen_id = 2377,
}
_VP["VP-002378"] = {
    label = "NorteAuto modelo 2578 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 55786,
    wear_curve = 0.4312,
    preferred_supplier_ids = { "SUP-002379", "SUP-002135" },
    gen_id = 2378,
}
_VP["VP-002379"] = {
    label = "DeltaMob modelo 2579 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 55923,
    wear_curve = 0.8320,
    preferred_supplier_ids = { "SUP-002380", "SUP-002138" },
    gen_id = 2379,
}
_VP["VP-002380"] = {
    label = "OrionTruck modelo 2580 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 56060,
    wear_curve = 0.8115,
    preferred_supplier_ids = { "SUP-002381", "SUP-002141" },
    gen_id = 2380,
}
_VP["VP-002381"] = {
    label = "SigmaBike modelo 2581 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 56197,
    wear_curve = 0.2629,
    preferred_supplier_ids = { "SUP-002382", "SUP-002144" },
    gen_id = 2381,
}
_VP["VP-002382"] = {
    label = "AstraMotors modelo 2582 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 56334,
    wear_curve = 0.7498,
    preferred_supplier_ids = { "SUP-002383", "SUP-002147" },
    gen_id = 2382,
}
_VP["VP-002383"] = {
    label = "RioVeículos modelo 2583 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 56471,
    wear_curve = 0.2772,
    preferred_supplier_ids = { "SUP-002384", "SUP-002150" },
    gen_id = 2383,
}
_VP["VP-002384"] = {
    label = "NorteAuto modelo 2584 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 56608,
    wear_curve = 0.8372,
    preferred_supplier_ids = { "SUP-002385", "SUP-002153" },
    gen_id = 2384,
}
_VP["VP-002385"] = {
    label = "DeltaMob modelo 2585 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 56745,
    wear_curve = 0.2586,
    preferred_supplier_ids = { "SUP-002386", "SUP-002156" },
    gen_id = 2385,
}
_VP["VP-002386"] = {
    label = "OrionTruck modelo 2586 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 56882,
    wear_curve = 0.1591,
    preferred_supplier_ids = { "SUP-002387", "SUP-002159" },
    gen_id = 2386,
}
_VP["VP-002387"] = {
    label = "SigmaBike modelo 2587 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 57019,
    wear_curve = 0.4803,
    preferred_supplier_ids = { "SUP-002388", "SUP-002162" },
    gen_id = 2387,
}
_VP["VP-002388"] = {
    label = "AstraMotors modelo 2588 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 57156,
    wear_curve = 0.4446,
    preferred_supplier_ids = { "SUP-002389", "SUP-002165" },
    gen_id = 2388,
}
_VP["VP-002389"] = {
    label = "RioVeículos modelo 2589 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 57293,
    wear_curve = 0.6466,
    preferred_supplier_ids = { "SUP-002390", "SUP-002168" },
    gen_id = 2389,
}
_VP["VP-002390"] = {
    label = "NorteAuto modelo 2590 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 57430,
    wear_curve = 0.9240,
    preferred_supplier_ids = { "SUP-002391", "SUP-002171" },
    gen_id = 2390,
}
_VP["VP-002391"] = {
    label = "DeltaMob modelo 2591 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 57567,
    wear_curve = 0.8612,
    preferred_supplier_ids = { "SUP-002392", "SUP-002174" },
    gen_id = 2391,
}
_VP["VP-002392"] = {
    label = "OrionTruck modelo 2592 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 57704,
    wear_curve = 0.4972,
    preferred_supplier_ids = { "SUP-002393", "SUP-002177" },
    gen_id = 2392,
}
_VP["VP-002393"] = {
    label = "SigmaBike modelo 2593 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 57841,
    wear_curve = 0.2311,
    preferred_supplier_ids = { "SUP-002394", "SUP-002180" },
    gen_id = 2393,
}
_VP["VP-002394"] = {
    label = "AstraMotors modelo 2594 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 57978,
    wear_curve = 0.7757,
    preferred_supplier_ids = { "SUP-002395", "SUP-002183" },
    gen_id = 2394,
}
_VP["VP-002395"] = {
    label = "RioVeículos modelo 2595 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 58115,
    wear_curve = 0.2944,
    preferred_supplier_ids = { "SUP-002396", "SUP-002186" },
    gen_id = 2395,
}
_VP["VP-002396"] = {
    label = "NorteAuto modelo 2596 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 58252,
    wear_curve = 0.7341,
    preferred_supplier_ids = { "SUP-002397", "SUP-002189" },
    gen_id = 2396,
}
_VP["VP-002397"] = {
    label = "DeltaMob modelo 2597 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 58389,
    wear_curve = 0.3533,
    preferred_supplier_ids = { "SUP-002398", "SUP-002192" },
    gen_id = 2397,
}
_VP["VP-002398"] = {
    label = "OrionTruck modelo 2598 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 58526,
    wear_curve = 0.9413,
    preferred_supplier_ids = { "SUP-002399", "SUP-002195" },
    gen_id = 2398,
}
_VP["VP-002399"] = {
    label = "SigmaBike modelo 2599 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 58663,
    wear_curve = 0.6285,
    preferred_supplier_ids = { "SUP-002400", "SUP-002198" },
    gen_id = 2399,
}
_VP["VP-002400"] = {
    label = "AstraMotors modelo 2600 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 58800,
    wear_curve = 0.8653,
    preferred_supplier_ids = { "SUP-002401", "SUP-002201" },
    gen_id = 2400,
}
_VP["VP-002401"] = {
    label = "RioVeículos modelo 2601 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 58937,
    wear_curve = 0.5051,
    preferred_supplier_ids = { "SUP-002402", "SUP-002204" },
    gen_id = 2401,
}
_VP["VP-002402"] = {
    label = "NorteAuto modelo 2602 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 59074,
    wear_curve = 0.3075,
    preferred_supplier_ids = { "SUP-002403", "SUP-002207" },
    gen_id = 2402,
}
_VP["VP-002403"] = {
    label = "DeltaMob modelo 2603 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 59211,
    wear_curve = 0.3877,
    preferred_supplier_ids = { "SUP-002404", "SUP-002210" },
    gen_id = 2403,
}
_VP["VP-002404"] = {
    label = "OrionTruck modelo 2604 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 59348,
    wear_curve = 0.2660,
    preferred_supplier_ids = { "SUP-002405", "SUP-002213" },
    gen_id = 2404,
}
_VP["VP-002405"] = {
    label = "SigmaBike modelo 2605 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 59485,
    wear_curve = 0.8136,
    preferred_supplier_ids = { "SUP-002406", "SUP-002216" },
    gen_id = 2405,
}
_VP["VP-002406"] = {
    label = "AstraMotors modelo 2606 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 59622,
    wear_curve = 0.2772,
    preferred_supplier_ids = { "SUP-002407", "SUP-002219" },
    gen_id = 2406,
}
_VP["VP-002407"] = {
    label = "RioVeículos modelo 2607 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 59759,
    wear_curve = 0.3972,
    preferred_supplier_ids = { "SUP-002408", "SUP-002222" },
    gen_id = 2407,
}
_VP["VP-002408"] = {
    label = "NorteAuto modelo 2608 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 59896,
    wear_curve = 0.9595,
    preferred_supplier_ids = { "SUP-002409", "SUP-002225" },
    gen_id = 2408,
}
_VP["VP-002409"] = {
    label = "DeltaMob modelo 2609 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 60033,
    wear_curve = 0.9433,
    preferred_supplier_ids = { "SUP-002410", "SUP-002228" },
    gen_id = 2409,
}
_VP["VP-002410"] = {
    label = "OrionTruck modelo 2610 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 60170,
    wear_curve = 0.8876,
    preferred_supplier_ids = { "SUP-002411", "SUP-002231" },
    gen_id = 2410,
}
_VP["VP-002411"] = {
    label = "SigmaBike modelo 2611 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 60307,
    wear_curve = 0.7872,
    preferred_supplier_ids = { "SUP-002412", "SUP-002234" },
    gen_id = 2411,
}
_VP["VP-002412"] = {
    label = "AstraMotors modelo 2612 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 60444,
    wear_curve = 0.9380,
    preferred_supplier_ids = { "SUP-002413", "SUP-002237" },
    gen_id = 2412,
}
_VP["VP-002413"] = {
    label = "RioVeículos modelo 2613 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 60581,
    wear_curve = 0.4771,
    preferred_supplier_ids = { "SUP-002414", "SUP-002240" },
    gen_id = 2413,
}
_VP["VP-002414"] = {
    label = "NorteAuto modelo 2614 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 60718,
    wear_curve = 0.4224,
    preferred_supplier_ids = { "SUP-002415", "SUP-002243" },
    gen_id = 2414,
}
_VP["VP-002415"] = {
    label = "DeltaMob modelo 2615 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 60855,
    wear_curve = 0.4910,
    preferred_supplier_ids = { "SUP-002416", "SUP-002246" },
    gen_id = 2415,
}
_VP["VP-002416"] = {
    label = "OrionTruck modelo 2616 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 60992,
    wear_curve = 0.7863,
    preferred_supplier_ids = { "SUP-002417", "SUP-002249" },
    gen_id = 2416,
}
_VP["VP-002417"] = {
    label = "SigmaBike modelo 2617 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 61129,
    wear_curve = 0.9481,
    preferred_supplier_ids = { "SUP-002418", "SUP-002252" },
    gen_id = 2417,
}
_VP["VP-002418"] = {
    label = "AstraMotors modelo 2618 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 61266,
    wear_curve = 0.7618,
    preferred_supplier_ids = { "SUP-002419", "SUP-002255" },
    gen_id = 2418,
}
_VP["VP-002419"] = {
    label = "RioVeículos modelo 2619 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 61403,
    wear_curve = 0.3661,
    preferred_supplier_ids = { "SUP-002420", "SUP-002258" },
    gen_id = 2419,
}
_VP["VP-002420"] = {
    label = "NorteAuto modelo 2620 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 61540,
    wear_curve = 0.8824,
    preferred_supplier_ids = { "SUP-002421", "SUP-002261" },
    gen_id = 2420,
}
_VP["VP-002421"] = {
    label = "DeltaMob modelo 2621 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 61677,
    wear_curve = 0.5577,
    preferred_supplier_ids = { "SUP-002422", "SUP-002264" },
    gen_id = 2421,
}
_VP["VP-002422"] = {
    label = "OrionTruck modelo 2622 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 61814,
    wear_curve = 0.5285,
    preferred_supplier_ids = { "SUP-002423", "SUP-002267" },
    gen_id = 2422,
}
_VP["VP-002423"] = {
    label = "SigmaBike modelo 2623 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 61951,
    wear_curve = 0.2303,
    preferred_supplier_ids = { "SUP-002424", "SUP-002270" },
    gen_id = 2423,
}
_VP["VP-002424"] = {
    label = "AstraMotors modelo 2624 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 62088,
    wear_curve = 0.6648,
    preferred_supplier_ids = { "SUP-002425", "SUP-002273" },
    gen_id = 2424,
}
_VP["VP-002425"] = {
    label = "RioVeículos modelo 2625 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 62225,
    wear_curve = 0.8775,
    preferred_supplier_ids = { "SUP-002426", "SUP-002276" },
    gen_id = 2425,
}
_VP["VP-002426"] = {
    label = "NorteAuto modelo 2626 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 62362,
    wear_curve = 0.7980,
    preferred_supplier_ids = { "SUP-002427", "SUP-002279" },
    gen_id = 2426,
}
_VP["VP-002427"] = {
    label = "DeltaMob modelo 2627 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 62499,
    wear_curve = 0.7165,
    preferred_supplier_ids = { "SUP-002428", "SUP-002282" },
    gen_id = 2427,
}
_VP["VP-002428"] = {
    label = "OrionTruck modelo 2628 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 62636,
    wear_curve = 0.6165,
    preferred_supplier_ids = { "SUP-002429", "SUP-002285" },
    gen_id = 2428,
}
_VP["VP-002429"] = {
    label = "SigmaBike modelo 2629 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 62773,
    wear_curve = 0.8452,
    preferred_supplier_ids = { "SUP-002430", "SUP-002288" },
    gen_id = 2429,
}
_VP["VP-002430"] = {
    label = "AstraMotors modelo 2630 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 62910,
    wear_curve = 0.7566,
    preferred_supplier_ids = { "SUP-002431", "SUP-002291" },
    gen_id = 2430,
}
_VP["VP-002431"] = {
    label = "RioVeículos modelo 2631 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 63047,
    wear_curve = 0.6623,
    preferred_supplier_ids = { "SUP-002432", "SUP-002294" },
    gen_id = 2431,
}
_VP["VP-002432"] = {
    label = "NorteAuto modelo 2632 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 63184,
    wear_curve = 0.1789,
    preferred_supplier_ids = { "SUP-002433", "SUP-002297" },
    gen_id = 2432,
}
_VP["VP-002433"] = {
    label = "DeltaMob modelo 2633 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 63321,
    wear_curve = 0.3269,
    preferred_supplier_ids = { "SUP-002434", "SUP-002300" },
    gen_id = 2433,
}
_VP["VP-002434"] = {
    label = "OrionTruck modelo 2634 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 63458,
    wear_curve = 0.8494,
    preferred_supplier_ids = { "SUP-002435", "SUP-002303" },
    gen_id = 2434,
}
_VP["VP-002435"] = {
    label = "SigmaBike modelo 2635 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 63595,
    wear_curve = 0.5137,
    preferred_supplier_ids = { "SUP-002436", "SUP-002306" },
    gen_id = 2435,
}
_VP["VP-002436"] = {
    label = "AstraMotors modelo 2636 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 63732,
    wear_curve = 0.3221,
    preferred_supplier_ids = { "SUP-002437", "SUP-002309" },
    gen_id = 2436,
}
_VP["VP-002437"] = {
    label = "RioVeículos modelo 2637 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 63869,
    wear_curve = 0.8821,
    preferred_supplier_ids = { "SUP-002438", "SUP-002312" },
    gen_id = 2437,
}
_VP["VP-002438"] = {
    label = "NorteAuto modelo 2638 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 64006,
    wear_curve = 0.5789,
    preferred_supplier_ids = { "SUP-002439", "SUP-002315" },
    gen_id = 2438,
}
_VP["VP-002439"] = {
    label = "DeltaMob modelo 2639 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 64143,
    wear_curve = 0.3335,
    preferred_supplier_ids = { "SUP-002440", "SUP-002318" },
    gen_id = 2439,
}
_VP["VP-002440"] = {
    label = "OrionTruck modelo 2640 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 64280,
    wear_curve = 0.1584,
    preferred_supplier_ids = { "SUP-002441", "SUP-002321" },
    gen_id = 2440,
}
_VP["VP-002441"] = {
    label = "SigmaBike modelo 2641 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 64417,
    wear_curve = 0.9265,
    preferred_supplier_ids = { "SUP-002442", "SUP-002324" },
    gen_id = 2441,
}
_VP["VP-002442"] = {
    label = "AstraMotors modelo 2642 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 64554,
    wear_curve = 0.4195,
    preferred_supplier_ids = { "SUP-002443", "SUP-002327" },
    gen_id = 2442,
}
_VP["VP-002443"] = {
    label = "RioVeículos modelo 2643 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 64691,
    wear_curve = 0.7701,
    preferred_supplier_ids = { "SUP-002444", "SUP-002330" },
    gen_id = 2443,
}
_VP["VP-002444"] = {
    label = "NorteAuto modelo 2644 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 64828,
    wear_curve = 0.1522,
    preferred_supplier_ids = { "SUP-002445", "SUP-002333" },
    gen_id = 2444,
}
_VP["VP-002445"] = {
    label = "DeltaMob modelo 2645 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 64965,
    wear_curve = 0.5566,
    preferred_supplier_ids = { "SUP-002446", "SUP-002336" },
    gen_id = 2445,
}
_VP["VP-002446"] = {
    label = "OrionTruck modelo 2646 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 65102,
    wear_curve = 0.5335,
    preferred_supplier_ids = { "SUP-002447", "SUP-002339" },
    gen_id = 2446,
}
_VP["VP-002447"] = {
    label = "SigmaBike modelo 2647 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 65239,
    wear_curve = 0.2509,
    preferred_supplier_ids = { "SUP-002448", "SUP-002342" },
    gen_id = 2447,
}
_VP["VP-002448"] = {
    label = "AstraMotors modelo 2648 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 65376,
    wear_curve = 0.8871,
    preferred_supplier_ids = { "SUP-002449", "SUP-002345" },
    gen_id = 2448,
}
_VP["VP-002449"] = {
    label = "RioVeículos modelo 2649 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 65513,
    wear_curve = 0.9043,
    preferred_supplier_ids = { "SUP-002450", "SUP-002348" },
    gen_id = 2449,
}
_VP["VP-002450"] = {
    label = "NorteAuto modelo 2650 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 65650,
    wear_curve = 0.2311,
    preferred_supplier_ids = { "SUP-002451", "SUP-002351" },
    gen_id = 2450,
}
_VP["VP-002451"] = {
    label = "DeltaMob modelo 2651 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 65787,
    wear_curve = 0.5807,
    preferred_supplier_ids = { "SUP-002452", "SUP-002354" },
    gen_id = 2451,
}
_VP["VP-002452"] = {
    label = "OrionTruck modelo 2652 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 65924,
    wear_curve = 0.1669,
    preferred_supplier_ids = { "SUP-002453", "SUP-002357" },
    gen_id = 2452,
}
_VP["VP-002453"] = {
    label = "SigmaBike modelo 2653 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 66061,
    wear_curve = 0.9609,
    preferred_supplier_ids = { "SUP-002454", "SUP-002360" },
    gen_id = 2453,
}
_VP["VP-002454"] = {
    label = "AstraMotors modelo 2654 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 66198,
    wear_curve = 0.6321,
    preferred_supplier_ids = { "SUP-002455", "SUP-002363" },
    gen_id = 2454,
}
_VP["VP-002455"] = {
    label = "RioVeículos modelo 2655 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 66335,
    wear_curve = 0.1859,
    preferred_supplier_ids = { "SUP-002456", "SUP-002366" },
    gen_id = 2455,
}
_VP["VP-002456"] = {
    label = "NorteAuto modelo 2656 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 66472,
    wear_curve = 0.7900,
    preferred_supplier_ids = { "SUP-002457", "SUP-002369" },
    gen_id = 2456,
}
_VP["VP-002457"] = {
    label = "DeltaMob modelo 2657 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 66609,
    wear_curve = 0.9647,
    preferred_supplier_ids = { "SUP-002458", "SUP-002372" },
    gen_id = 2457,
}
_VP["VP-002458"] = {
    label = "OrionTruck modelo 2658 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 66746,
    wear_curve = 0.4487,
    preferred_supplier_ids = { "SUP-002459", "SUP-002375" },
    gen_id = 2458,
}
_VP["VP-002459"] = {
    label = "SigmaBike modelo 2659 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 66883,
    wear_curve = 0.3585,
    preferred_supplier_ids = { "SUP-002460", "SUP-002378" },
    gen_id = 2459,
}
_VP["VP-002460"] = {
    label = "AstraMotors modelo 2660 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 67020,
    wear_curve = 0.7458,
    preferred_supplier_ids = { "SUP-002461", "SUP-002381" },
    gen_id = 2460,
}
_VP["VP-002461"] = {
    label = "RioVeículos modelo 2661 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 67157,
    wear_curve = 0.4148,
    preferred_supplier_ids = { "SUP-002462", "SUP-002384" },
    gen_id = 2461,
}
_VP["VP-002462"] = {
    label = "NorteAuto modelo 2662 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 67294,
    wear_curve = 0.5215,
    preferred_supplier_ids = { "SUP-002463", "SUP-002387" },
    gen_id = 2462,
}
_VP["VP-002463"] = {
    label = "DeltaMob modelo 2663 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 67431,
    wear_curve = 0.7667,
    preferred_supplier_ids = { "SUP-002464", "SUP-002390" },
    gen_id = 2463,
}
_VP["VP-002464"] = {
    label = "OrionTruck modelo 2664 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 67568,
    wear_curve = 0.6981,
    preferred_supplier_ids = { "SUP-002465", "SUP-002393" },
    gen_id = 2464,
}
_VP["VP-002465"] = {
    label = "SigmaBike modelo 2665 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 67705,
    wear_curve = 0.2325,
    preferred_supplier_ids = { "SUP-002466", "SUP-002396" },
    gen_id = 2465,
}
_VP["VP-002466"] = {
    label = "AstraMotors modelo 2666 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 67842,
    wear_curve = 0.6532,
    preferred_supplier_ids = { "SUP-002467", "SUP-002399" },
    gen_id = 2466,
}
_VP["VP-002467"] = {
    label = "RioVeículos modelo 2667 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 67979,
    wear_curve = 0.6605,
    preferred_supplier_ids = { "SUP-002468", "SUP-002402" },
    gen_id = 2467,
}
_VP["VP-002468"] = {
    label = "NorteAuto modelo 2668 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 68116,
    wear_curve = 0.9303,
    preferred_supplier_ids = { "SUP-002469", "SUP-002405" },
    gen_id = 2468,
}
_VP["VP-002469"] = {
    label = "DeltaMob modelo 2669 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 68253,
    wear_curve = 0.9555,
    preferred_supplier_ids = { "SUP-002470", "SUP-002408" },
    gen_id = 2469,
}
_VP["VP-002470"] = {
    label = "OrionTruck modelo 2670 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 68390,
    wear_curve = 0.5472,
    preferred_supplier_ids = { "SUP-002471", "SUP-002411" },
    gen_id = 2470,
}
_VP["VP-002471"] = {
    label = "SigmaBike modelo 2671 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 68527,
    wear_curve = 0.3133,
    preferred_supplier_ids = { "SUP-002472", "SUP-002414" },
    gen_id = 2471,
}
_VP["VP-002472"] = {
    label = "AstraMotors modelo 2672 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 68664,
    wear_curve = 0.9416,
    preferred_supplier_ids = { "SUP-002473", "SUP-002417" },
    gen_id = 2472,
}
_VP["VP-002473"] = {
    label = "RioVeículos modelo 2673 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 68801,
    wear_curve = 0.9633,
    preferred_supplier_ids = { "SUP-002474", "SUP-002420" },
    gen_id = 2473,
}
_VP["VP-002474"] = {
    label = "NorteAuto modelo 2674 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 68938,
    wear_curve = 0.7202,
    preferred_supplier_ids = { "SUP-002475", "SUP-002423" },
    gen_id = 2474,
}
_VP["VP-002475"] = {
    label = "DeltaMob modelo 2675 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 69075,
    wear_curve = 0.8551,
    preferred_supplier_ids = { "SUP-002476", "SUP-002426" },
    gen_id = 2475,
}
_VP["VP-002476"] = {
    label = "OrionTruck modelo 2676 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 69212,
    wear_curve = 0.6432,
    preferred_supplier_ids = { "SUP-002477", "SUP-002429" },
    gen_id = 2476,
}
_VP["VP-002477"] = {
    label = "SigmaBike modelo 2677 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 69349,
    wear_curve = 0.6429,
    preferred_supplier_ids = { "SUP-002478", "SUP-002432" },
    gen_id = 2477,
}
_VP["VP-002478"] = {
    label = "AstraMotors modelo 2678 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 69486,
    wear_curve = 0.3211,
    preferred_supplier_ids = { "SUP-002479", "SUP-002435" },
    gen_id = 2478,
}
_VP["VP-002479"] = {
    label = "RioVeículos modelo 2679 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 69623,
    wear_curve = 0.8615,
    preferred_supplier_ids = { "SUP-002480", "SUP-002438" },
    gen_id = 2479,
}
_VP["VP-002480"] = {
    label = "NorteAuto modelo 2680 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 69760,
    wear_curve = 0.6208,
    preferred_supplier_ids = { "SUP-002481", "SUP-002441" },
    gen_id = 2480,
}
_VP["VP-002481"] = {
    label = "DeltaMob modelo 2681 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 69897,
    wear_curve = 0.7685,
    preferred_supplier_ids = { "SUP-002482", "SUP-002444" },
    gen_id = 2481,
}
_VP["VP-002482"] = {
    label = "OrionTruck modelo 2682 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 70034,
    wear_curve = 0.9014,
    preferred_supplier_ids = { "SUP-002483", "SUP-002447" },
    gen_id = 2482,
}
_VP["VP-002483"] = {
    label = "SigmaBike modelo 2683 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 70171,
    wear_curve = 0.1794,
    preferred_supplier_ids = { "SUP-002484", "SUP-002450" },
    gen_id = 2483,
}
_VP["VP-002484"] = {
    label = "AstraMotors modelo 2684 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 70308,
    wear_curve = 0.8358,
    preferred_supplier_ids = { "SUP-002485", "SUP-002453" },
    gen_id = 2484,
}
_VP["VP-002485"] = {
    label = "RioVeículos modelo 2685 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 70445,
    wear_curve = 0.5799,
    preferred_supplier_ids = { "SUP-002486", "SUP-002456" },
    gen_id = 2485,
}
_VP["VP-002486"] = {
    label = "NorteAuto modelo 2686 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 70582,
    wear_curve = 0.7419,
    preferred_supplier_ids = { "SUP-002487", "SUP-002459" },
    gen_id = 2486,
}
_VP["VP-002487"] = {
    label = "DeltaMob modelo 2687 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 70719,
    wear_curve = 0.4289,
    preferred_supplier_ids = { "SUP-002488", "SUP-002462" },
    gen_id = 2487,
}
_VP["VP-002488"] = {
    label = "OrionTruck modelo 2688 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 70856,
    wear_curve = 0.7559,
    preferred_supplier_ids = { "SUP-002489", "SUP-002465" },
    gen_id = 2488,
}
_VP["VP-002489"] = {
    label = "SigmaBike modelo 2689 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 70993,
    wear_curve = 0.4067,
    preferred_supplier_ids = { "SUP-002490", "SUP-002468" },
    gen_id = 2489,
}
_VP["VP-002490"] = {
    label = "AstraMotors modelo 2690 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 71130,
    wear_curve = 0.2590,
    preferred_supplier_ids = { "SUP-002491", "SUP-002471" },
    gen_id = 2490,
}
_VP["VP-002491"] = {
    label = "RioVeículos modelo 2691 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 71267,
    wear_curve = 0.3373,
    preferred_supplier_ids = { "SUP-002492", "SUP-002474" },
    gen_id = 2491,
}
_VP["VP-002492"] = {
    label = "NorteAuto modelo 2692 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 71404,
    wear_curve = 0.7145,
    preferred_supplier_ids = { "SUP-002493", "SUP-002477" },
    gen_id = 2492,
}
_VP["VP-002493"] = {
    label = "DeltaMob modelo 2693 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 71541,
    wear_curve = 0.2995,
    preferred_supplier_ids = { "SUP-002494", "SUP-002480" },
    gen_id = 2493,
}
_VP["VP-002494"] = {
    label = "OrionTruck modelo 2694 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 71678,
    wear_curve = 0.9682,
    preferred_supplier_ids = { "SUP-002495", "SUP-002483" },
    gen_id = 2494,
}
_VP["VP-002495"] = {
    label = "SigmaBike modelo 2695 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 71815,
    wear_curve = 0.4200,
    preferred_supplier_ids = { "SUP-002496", "SUP-002486" },
    gen_id = 2495,
}
_VP["VP-002496"] = {
    label = "AstraMotors modelo 2696 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 71952,
    wear_curve = 0.2638,
    preferred_supplier_ids = { "SUP-002497", "SUP-002489" },
    gen_id = 2496,
}
_VP["VP-002497"] = {
    label = "RioVeículos modelo 2697 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 72089,
    wear_curve = 0.7901,
    preferred_supplier_ids = { "SUP-002498", "SUP-002492" },
    gen_id = 2497,
}
_VP["VP-002498"] = {
    label = "NorteAuto modelo 2698 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 72226,
    wear_curve = 0.2534,
    preferred_supplier_ids = { "SUP-002499", "SUP-002495" },
    gen_id = 2498,
}
_VP["VP-002499"] = {
    label = "DeltaMob modelo 2699 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 72363,
    wear_curve = 0.2882,
    preferred_supplier_ids = { "SUP-002500", "SUP-002498" },
    gen_id = 2499,
}
_VP["VP-002500"] = {
    label = "OrionTruck modelo 2700 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 72500,
    wear_curve = 0.5445,
    preferred_supplier_ids = { "SUP-002501", "SUP-002501" },
    gen_id = 2500,
}
_VP["VP-002501"] = {
    label = "SigmaBike modelo 2701 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 72637,
    wear_curve = 0.2161,
    preferred_supplier_ids = { "SUP-002502", "SUP-002504" },
    gen_id = 2501,
}
_VP["VP-002502"] = {
    label = "AstraMotors modelo 2702 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 72774,
    wear_curve = 0.5458,
    preferred_supplier_ids = { "SUP-002503", "SUP-002507" },
    gen_id = 2502,
}
_VP["VP-002503"] = {
    label = "RioVeículos modelo 2703 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 72911,
    wear_curve = 0.9738,
    preferred_supplier_ids = { "SUP-002504", "SUP-002510" },
    gen_id = 2503,
}
_VP["VP-002504"] = {
    label = "NorteAuto modelo 2704 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 73048,
    wear_curve = 0.9143,
    preferred_supplier_ids = { "SUP-002505", "SUP-002513" },
    gen_id = 2504,
}
_VP["VP-002505"] = {
    label = "DeltaMob modelo 2705 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 73185,
    wear_curve = 0.2573,
    preferred_supplier_ids = { "SUP-002506", "SUP-002516" },
    gen_id = 2505,
}
_VP["VP-002506"] = {
    label = "OrionTruck modelo 2706 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 73322,
    wear_curve = 0.7340,
    preferred_supplier_ids = { "SUP-002507", "SUP-002519" },
    gen_id = 2506,
}
_VP["VP-002507"] = {
    label = "SigmaBike modelo 2707 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 73459,
    wear_curve = 0.2267,
    preferred_supplier_ids = { "SUP-002508", "SUP-002522" },
    gen_id = 2507,
}
_VP["VP-002508"] = {
    label = "AstraMotors modelo 2708 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 73596,
    wear_curve = 0.6819,
    preferred_supplier_ids = { "SUP-002509", "SUP-002525" },
    gen_id = 2508,
}
_VP["VP-002509"] = {
    label = "RioVeículos modelo 2709 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 73733,
    wear_curve = 0.9440,
    preferred_supplier_ids = { "SUP-002510", "SUP-002528" },
    gen_id = 2509,
}
_VP["VP-002510"] = {
    label = "NorteAuto modelo 2710 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 73870,
    wear_curve = 0.7368,
    preferred_supplier_ids = { "SUP-002511", "SUP-002531" },
    gen_id = 2510,
}

MECHANIC_GEN_VEHICLE_COUNT = 2510
