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
    wear_curve = 0.4479,
    preferred_supplier_ids = { 2, 4 },
    gen_id = 1,
}
_VP["VP-000002"] = {
    label = "NorteAuto modelo 2002 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 10274,
    wear_curve = 0.5419,
    preferred_supplier_ids = { 3, 7 },
    gen_id = 2,
}
_VP["VP-000003"] = {
    label = "DeltaMob modelo 2003 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 10411,
    wear_curve = 0.2278,
    preferred_supplier_ids = { 4, 10 },
    gen_id = 3,
}
_VP["VP-000004"] = {
    label = "OrionTruck modelo 2004 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 10548,
    wear_curve = 0.2239,
    preferred_supplier_ids = { 5, 13 },
    gen_id = 4,
}
_VP["VP-000005"] = {
    label = "SigmaBike modelo 2005 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 10685,
    wear_curve = 0.9013,
    preferred_supplier_ids = { 6, 16 },
    gen_id = 5,
}
_VP["VP-000006"] = {
    label = "AstraMotors modelo 2006 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 10822,
    wear_curve = 0.2623,
    preferred_supplier_ids = { 7, 19 },
    gen_id = 6,
}
_VP["VP-000007"] = {
    label = "RioVeículos modelo 2007 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 10959,
    wear_curve = 0.6005,
    preferred_supplier_ids = { 8, 22 },
    gen_id = 7,
}
_VP["VP-000008"] = {
    label = "NorteAuto modelo 2008 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 11096,
    wear_curve = 0.4421,
    preferred_supplier_ids = { 9, 25 },
    gen_id = 8,
}
_VP["VP-000009"] = {
    label = "DeltaMob modelo 2009 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 11233,
    wear_curve = 0.7200,
    preferred_supplier_ids = { 10, 28 },
    gen_id = 9,
}
_VP["VP-000010"] = {
    label = "OrionTruck modelo 2010 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 11370,
    wear_curve = 0.4809,
    preferred_supplier_ids = { 11, 31 },
    gen_id = 10,
}
_VP["VP-000011"] = {
    label = "SigmaBike modelo 2011 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 11507,
    wear_curve = 0.7529,
    preferred_supplier_ids = { 12, 34 },
    gen_id = 11,
}
_VP["VP-000012"] = {
    label = "AstraMotors modelo 2012 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 11644,
    wear_curve = 0.5842,
    preferred_supplier_ids = { 13, 37 },
    gen_id = 12,
}
_VP["VP-000013"] = {
    label = "RioVeículos modelo 2013 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 11781,
    wear_curve = 0.2595,
    preferred_supplier_ids = { 14, 40 },
    gen_id = 13,
}
_VP["VP-000014"] = {
    label = "NorteAuto modelo 2014 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 11918,
    wear_curve = 0.7753,
    preferred_supplier_ids = { 15, 43 },
    gen_id = 14,
}
_VP["VP-000015"] = {
    label = "DeltaMob modelo 2015 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 12055,
    wear_curve = 0.1812,
    preferred_supplier_ids = { 16, 46 },
    gen_id = 15,
}
_VP["VP-000016"] = {
    label = "OrionTruck modelo 2016 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 12192,
    wear_curve = 0.9731,
    preferred_supplier_ids = { 17, 49 },
    gen_id = 16,
}
_VP["VP-000017"] = {
    label = "SigmaBike modelo 2017 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 12329,
    wear_curve = 0.8780,
    preferred_supplier_ids = { 18, 52 },
    gen_id = 17,
}
_VP["VP-000018"] = {
    label = "AstraMotors modelo 2018 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 12466,
    wear_curve = 0.8470,
    preferred_supplier_ids = { 19, 55 },
    gen_id = 18,
}
_VP["VP-000019"] = {
    label = "RioVeículos modelo 2019 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 12603,
    wear_curve = 0.5336,
    preferred_supplier_ids = { 20, 58 },
    gen_id = 19,
}
_VP["VP-000020"] = {
    label = "NorteAuto modelo 2020 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 12740,
    wear_curve = 0.4144,
    preferred_supplier_ids = { 21, 61 },
    gen_id = 20,
}
_VP["VP-000021"] = {
    label = "DeltaMob modelo 2021 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 12877,
    wear_curve = 0.3041,
    preferred_supplier_ids = { 22, 64 },
    gen_id = 21,
}
_VP["VP-000022"] = {
    label = "OrionTruck modelo 2022 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 13014,
    wear_curve = 0.9555,
    preferred_supplier_ids = { 23, 67 },
    gen_id = 22,
}
_VP["VP-000023"] = {
    label = "SigmaBike modelo 2023 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 13151,
    wear_curve = 0.6057,
    preferred_supplier_ids = { 24, 70 },
    gen_id = 23,
}
_VP["VP-000024"] = {
    label = "AstraMotors modelo 2024 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 13288,
    wear_curve = 0.9178,
    preferred_supplier_ids = { 25, 73 },
    gen_id = 24,
}
_VP["VP-000025"] = {
    label = "RioVeículos modelo 2025 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 13425,
    wear_curve = 0.6506,
    preferred_supplier_ids = { 26, 76 },
    gen_id = 25,
}
_VP["VP-000026"] = {
    label = "NorteAuto modelo 2026 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 13562,
    wear_curve = 0.5575,
    preferred_supplier_ids = { 27, 79 },
    gen_id = 26,
}
_VP["VP-000027"] = {
    label = "DeltaMob modelo 2027 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 13699,
    wear_curve = 0.7203,
    preferred_supplier_ids = { 28, 82 },
    gen_id = 27,
}
_VP["VP-000028"] = {
    label = "OrionTruck modelo 2028 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 13836,
    wear_curve = 0.5359,
    preferred_supplier_ids = { 29, 85 },
    gen_id = 28,
}
_VP["VP-000029"] = {
    label = "SigmaBike modelo 2029 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 13973,
    wear_curve = 0.9290,
    preferred_supplier_ids = { 30, 88 },
    gen_id = 29,
}
_VP["VP-000030"] = {
    label = "AstraMotors modelo 2030 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 14110,
    wear_curve = 0.7417,
    preferred_supplier_ids = { 31, 91 },
    gen_id = 30,
}
_VP["VP-000031"] = {
    label = "RioVeículos modelo 2031 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 14247,
    wear_curve = 0.7790,
    preferred_supplier_ids = { 32, 94 },
    gen_id = 31,
}
_VP["VP-000032"] = {
    label = "NorteAuto modelo 2032 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 14384,
    wear_curve = 0.4178,
    preferred_supplier_ids = { 33, 97 },
    gen_id = 32,
}
_VP["VP-000033"] = {
    label = "DeltaMob modelo 2033 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 14521,
    wear_curve = 0.5357,
    preferred_supplier_ids = { 34, 100 },
    gen_id = 33,
}
_VP["VP-000034"] = {
    label = "OrionTruck modelo 2034 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 14658,
    wear_curve = 0.9634,
    preferred_supplier_ids = { 35, 103 },
    gen_id = 34,
}
_VP["VP-000035"] = {
    label = "SigmaBike modelo 2035 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 14795,
    wear_curve = 0.2869,
    preferred_supplier_ids = { 36, 106 },
    gen_id = 35,
}
_VP["VP-000036"] = {
    label = "AstraMotors modelo 2036 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 14932,
    wear_curve = 0.5386,
    preferred_supplier_ids = { 37, 109 },
    gen_id = 36,
}
_VP["VP-000037"] = {
    label = "RioVeículos modelo 2037 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 15069,
    wear_curve = 0.4411,
    preferred_supplier_ids = { 38, 112 },
    gen_id = 37,
}
_VP["VP-000038"] = {
    label = "NorteAuto modelo 2038 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 15206,
    wear_curve = 0.3456,
    preferred_supplier_ids = { 39, 115 },
    gen_id = 38,
}
_VP["VP-000039"] = {
    label = "DeltaMob modelo 2039 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 15343,
    wear_curve = 0.3648,
    preferred_supplier_ids = { 40, 118 },
    gen_id = 39,
}
_VP["VP-000040"] = {
    label = "OrionTruck modelo 2040 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 15480,
    wear_curve = 0.4259,
    preferred_supplier_ids = { 41, 121 },
    gen_id = 40,
}
_VP["VP-000041"] = {
    label = "SigmaBike modelo 2041 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 15617,
    wear_curve = 0.9262,
    preferred_supplier_ids = { 42, 124 },
    gen_id = 41,
}
_VP["VP-000042"] = {
    label = "AstraMotors modelo 2042 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 15754,
    wear_curve = 0.4254,
    preferred_supplier_ids = { 43, 127 },
    gen_id = 42,
}
_VP["VP-000043"] = {
    label = "RioVeículos modelo 2043 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 15891,
    wear_curve = 0.3217,
    preferred_supplier_ids = { 44, 130 },
    gen_id = 43,
}
_VP["VP-000044"] = {
    label = "NorteAuto modelo 2044 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 16028,
    wear_curve = 0.1704,
    preferred_supplier_ids = { 45, 133 },
    gen_id = 44,
}
_VP["VP-000045"] = {
    label = "DeltaMob modelo 2045 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 16165,
    wear_curve = 0.8745,
    preferred_supplier_ids = { 46, 136 },
    gen_id = 45,
}
_VP["VP-000046"] = {
    label = "OrionTruck modelo 2046 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 16302,
    wear_curve = 0.4861,
    preferred_supplier_ids = { 47, 139 },
    gen_id = 46,
}
_VP["VP-000047"] = {
    label = "SigmaBike modelo 2047 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 16439,
    wear_curve = 0.2794,
    preferred_supplier_ids = { 48, 142 },
    gen_id = 47,
}
_VP["VP-000048"] = {
    label = "AstraMotors modelo 2048 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 16576,
    wear_curve = 0.6160,
    preferred_supplier_ids = { 49, 145 },
    gen_id = 48,
}
_VP["VP-000049"] = {
    label = "RioVeículos modelo 2049 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 16713,
    wear_curve = 0.4376,
    preferred_supplier_ids = { 50, 148 },
    gen_id = 49,
}
_VP["VP-000050"] = {
    label = "NorteAuto modelo 2050 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 16850,
    wear_curve = 0.6311,
    preferred_supplier_ids = { 51, 151 },
    gen_id = 50,
}
_VP["VP-000051"] = {
    label = "DeltaMob modelo 2051 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 16987,
    wear_curve = 0.2973,
    preferred_supplier_ids = { 52, 154 },
    gen_id = 51,
}
_VP["VP-000052"] = {
    label = "OrionTruck modelo 2052 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 17124,
    wear_curve = 0.9922,
    preferred_supplier_ids = { 53, 157 },
    gen_id = 52,
}
_VP["VP-000053"] = {
    label = "SigmaBike modelo 2053 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 17261,
    wear_curve = 0.6075,
    preferred_supplier_ids = { 54, 160 },
    gen_id = 53,
}
_VP["VP-000054"] = {
    label = "AstraMotors modelo 2054 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 17398,
    wear_curve = 0.7635,
    preferred_supplier_ids = { 55, 163 },
    gen_id = 54,
}
_VP["VP-000055"] = {
    label = "RioVeículos modelo 2055 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 17535,
    wear_curve = 0.2624,
    preferred_supplier_ids = { 56, 166 },
    gen_id = 55,
}
_VP["VP-000056"] = {
    label = "NorteAuto modelo 2056 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 17672,
    wear_curve = 0.9586,
    preferred_supplier_ids = { 57, 169 },
    gen_id = 56,
}
_VP["VP-000057"] = {
    label = "DeltaMob modelo 2057 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 17809,
    wear_curve = 0.2396,
    preferred_supplier_ids = { 58, 172 },
    gen_id = 57,
}
_VP["VP-000058"] = {
    label = "OrionTruck modelo 2058 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 17946,
    wear_curve = 0.8524,
    preferred_supplier_ids = { 59, 175 },
    gen_id = 58,
}
_VP["VP-000059"] = {
    label = "SigmaBike modelo 2059 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 18083,
    wear_curve = 0.7686,
    preferred_supplier_ids = { 60, 178 },
    gen_id = 59,
}
_VP["VP-000060"] = {
    label = "AstraMotors modelo 2060 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 18220,
    wear_curve = 0.6491,
    preferred_supplier_ids = { 61, 181 },
    gen_id = 60,
}
_VP["VP-000061"] = {
    label = "RioVeículos modelo 2061 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 18357,
    wear_curve = 0.6334,
    preferred_supplier_ids = { 62, 184 },
    gen_id = 61,
}
_VP["VP-000062"] = {
    label = "NorteAuto modelo 2062 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 18494,
    wear_curve = 0.4256,
    preferred_supplier_ids = { 63, 187 },
    gen_id = 62,
}
_VP["VP-000063"] = {
    label = "DeltaMob modelo 2063 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 18631,
    wear_curve = 0.3260,
    preferred_supplier_ids = { 64, 190 },
    gen_id = 63,
}
_VP["VP-000064"] = {
    label = "OrionTruck modelo 2064 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 18768,
    wear_curve = 0.1620,
    preferred_supplier_ids = { 65, 193 },
    gen_id = 64,
}
_VP["VP-000065"] = {
    label = "SigmaBike modelo 2065 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 18905,
    wear_curve = 0.7907,
    preferred_supplier_ids = { 66, 196 },
    gen_id = 65,
}
_VP["VP-000066"] = {
    label = "AstraMotors modelo 2066 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 19042,
    wear_curve = 0.5438,
    preferred_supplier_ids = { 67, 199 },
    gen_id = 66,
}
_VP["VP-000067"] = {
    label = "RioVeículos modelo 2067 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 19179,
    wear_curve = 0.5981,
    preferred_supplier_ids = { 68, 2 },
    gen_id = 67,
}
_VP["VP-000068"] = {
    label = "NorteAuto modelo 2068 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 19316,
    wear_curve = 0.1565,
    preferred_supplier_ids = { 69, 5 },
    gen_id = 68,
}
_VP["VP-000069"] = {
    label = "DeltaMob modelo 2069 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 19453,
    wear_curve = 0.6836,
    preferred_supplier_ids = { 70, 8 },
    gen_id = 69,
}
_VP["VP-000070"] = {
    label = "OrionTruck modelo 2070 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 19590,
    wear_curve = 0.6727,
    preferred_supplier_ids = { 71, 11 },
    gen_id = 70,
}
_VP["VP-000071"] = {
    label = "SigmaBike modelo 2071 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 19727,
    wear_curve = 0.9827,
    preferred_supplier_ids = { 72, 14 },
    gen_id = 71,
}
_VP["VP-000072"] = {
    label = "AstraMotors modelo 2072 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 19864,
    wear_curve = 0.3288,
    preferred_supplier_ids = { 73, 17 },
    gen_id = 72,
}
_VP["VP-000073"] = {
    label = "RioVeículos modelo 2073 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 20001,
    wear_curve = 0.3256,
    preferred_supplier_ids = { 74, 20 },
    gen_id = 73,
}
_VP["VP-000074"] = {
    label = "NorteAuto modelo 2074 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 20138,
    wear_curve = 0.9307,
    preferred_supplier_ids = { 75, 23 },
    gen_id = 74,
}
_VP["VP-000075"] = {
    label = "DeltaMob modelo 2075 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 20275,
    wear_curve = 0.6106,
    preferred_supplier_ids = { 76, 26 },
    gen_id = 75,
}
_VP["VP-000076"] = {
    label = "OrionTruck modelo 2076 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 20412,
    wear_curve = 0.4020,
    preferred_supplier_ids = { 77, 29 },
    gen_id = 76,
}
_VP["VP-000077"] = {
    label = "SigmaBike modelo 2077 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 20549,
    wear_curve = 0.5046,
    preferred_supplier_ids = { 78, 32 },
    gen_id = 77,
}
_VP["VP-000078"] = {
    label = "AstraMotors modelo 2078 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 20686,
    wear_curve = 0.8551,
    preferred_supplier_ids = { 79, 35 },
    gen_id = 78,
}
_VP["VP-000079"] = {
    label = "RioVeículos modelo 2079 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 20823,
    wear_curve = 0.5509,
    preferred_supplier_ids = { 80, 38 },
    gen_id = 79,
}
_VP["VP-000080"] = {
    label = "NorteAuto modelo 2080 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 20960,
    wear_curve = 0.8284,
    preferred_supplier_ids = { 81, 41 },
    gen_id = 80,
}
_VP["VP-000081"] = {
    label = "DeltaMob modelo 2081 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 21097,
    wear_curve = 0.1959,
    preferred_supplier_ids = { 82, 44 },
    gen_id = 81,
}
_VP["VP-000082"] = {
    label = "OrionTruck modelo 2082 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 21234,
    wear_curve = 0.4895,
    preferred_supplier_ids = { 83, 47 },
    gen_id = 82,
}
_VP["VP-000083"] = {
    label = "SigmaBike modelo 2083 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 21371,
    wear_curve = 0.9246,
    preferred_supplier_ids = { 84, 50 },
    gen_id = 83,
}
_VP["VP-000084"] = {
    label = "AstraMotors modelo 2084 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 21508,
    wear_curve = 0.6136,
    preferred_supplier_ids = { 85, 53 },
    gen_id = 84,
}
_VP["VP-000085"] = {
    label = "RioVeículos modelo 2085 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 21645,
    wear_curve = 0.3378,
    preferred_supplier_ids = { 86, 56 },
    gen_id = 85,
}
_VP["VP-000086"] = {
    label = "NorteAuto modelo 2086 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 21782,
    wear_curve = 0.4599,
    preferred_supplier_ids = { 87, 59 },
    gen_id = 86,
}
_VP["VP-000087"] = {
    label = "DeltaMob modelo 2087 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 21919,
    wear_curve = 0.5880,
    preferred_supplier_ids = { 88, 62 },
    gen_id = 87,
}
_VP["VP-000088"] = {
    label = "OrionTruck modelo 2088 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 22056,
    wear_curve = 0.9353,
    preferred_supplier_ids = { 89, 65 },
    gen_id = 88,
}
_VP["VP-000089"] = {
    label = "SigmaBike modelo 2089 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 22193,
    wear_curve = 0.9143,
    preferred_supplier_ids = { 90, 68 },
    gen_id = 89,
}
_VP["VP-000090"] = {
    label = "AstraMotors modelo 2090 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 22330,
    wear_curve = 0.4671,
    preferred_supplier_ids = { 91, 71 },
    gen_id = 90,
}
_VP["VP-000091"] = {
    label = "RioVeículos modelo 2091 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 22467,
    wear_curve = 0.4632,
    preferred_supplier_ids = { 92, 74 },
    gen_id = 91,
}
_VP["VP-000092"] = {
    label = "NorteAuto modelo 2092 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 22604,
    wear_curve = 0.4926,
    preferred_supplier_ids = { 93, 77 },
    gen_id = 92,
}
_VP["VP-000093"] = {
    label = "DeltaMob modelo 2093 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 22741,
    wear_curve = 0.6022,
    preferred_supplier_ids = { 94, 80 },
    gen_id = 93,
}
_VP["VP-000094"] = {
    label = "OrionTruck modelo 2094 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 22878,
    wear_curve = 0.9385,
    preferred_supplier_ids = { 95, 83 },
    gen_id = 94,
}
_VP["VP-000095"] = {
    label = "SigmaBike modelo 2095 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 23015,
    wear_curve = 0.7531,
    preferred_supplier_ids = { 96, 86 },
    gen_id = 95,
}
_VP["VP-000096"] = {
    label = "AstraMotors modelo 2096 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 23152,
    wear_curve = 0.1821,
    preferred_supplier_ids = { 97, 89 },
    gen_id = 96,
}
_VP["VP-000097"] = {
    label = "RioVeículos modelo 2097 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 23289,
    wear_curve = 0.8012,
    preferred_supplier_ids = { 98, 92 },
    gen_id = 97,
}
_VP["VP-000098"] = {
    label = "NorteAuto modelo 2098 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 23426,
    wear_curve = 0.8915,
    preferred_supplier_ids = { 99, 95 },
    gen_id = 98,
}
_VP["VP-000099"] = {
    label = "DeltaMob modelo 2099 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 23563,
    wear_curve = 0.3422,
    preferred_supplier_ids = { 100, 98 },
    gen_id = 99,
}
_VP["VP-000100"] = {
    label = "OrionTruck modelo 2100 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 23700,
    wear_curve = 0.9125,
    preferred_supplier_ids = { 101, 101 },
    gen_id = 100,
}
_VP["VP-000101"] = {
    label = "SigmaBike modelo 2101 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 23837,
    wear_curve = 0.7804,
    preferred_supplier_ids = { 102, 104 },
    gen_id = 101,
}
_VP["VP-000102"] = {
    label = "AstraMotors modelo 2102 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 23974,
    wear_curve = 0.5758,
    preferred_supplier_ids = { 103, 107 },
    gen_id = 102,
}
_VP["VP-000103"] = {
    label = "RioVeículos modelo 2103 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 24111,
    wear_curve = 0.9462,
    preferred_supplier_ids = { 104, 110 },
    gen_id = 103,
}
_VP["VP-000104"] = {
    label = "NorteAuto modelo 2104 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 24248,
    wear_curve = 0.6791,
    preferred_supplier_ids = { 105, 113 },
    gen_id = 104,
}
_VP["VP-000105"] = {
    label = "DeltaMob modelo 2105 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 24385,
    wear_curve = 0.6347,
    preferred_supplier_ids = { 106, 116 },
    gen_id = 105,
}
_VP["VP-000106"] = {
    label = "OrionTruck modelo 2106 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 24522,
    wear_curve = 0.6735,
    preferred_supplier_ids = { 107, 119 },
    gen_id = 106,
}
_VP["VP-000107"] = {
    label = "SigmaBike modelo 2107 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 24659,
    wear_curve = 0.9364,
    preferred_supplier_ids = { 108, 122 },
    gen_id = 107,
}
_VP["VP-000108"] = {
    label = "AstraMotors modelo 2108 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 24796,
    wear_curve = 0.6339,
    preferred_supplier_ids = { 109, 125 },
    gen_id = 108,
}
_VP["VP-000109"] = {
    label = "RioVeículos modelo 2109 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 24933,
    wear_curve = 0.9080,
    preferred_supplier_ids = { 110, 128 },
    gen_id = 109,
}
_VP["VP-000110"] = {
    label = "NorteAuto modelo 2110 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 25070,
    wear_curve = 0.2485,
    preferred_supplier_ids = { 111, 131 },
    gen_id = 110,
}
_VP["VP-000111"] = {
    label = "DeltaMob modelo 2111 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 25207,
    wear_curve = 0.5266,
    preferred_supplier_ids = { 112, 134 },
    gen_id = 111,
}
_VP["VP-000112"] = {
    label = "OrionTruck modelo 2112 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 25344,
    wear_curve = 0.3492,
    preferred_supplier_ids = { 113, 137 },
    gen_id = 112,
}
_VP["VP-000113"] = {
    label = "SigmaBike modelo 2113 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 25481,
    wear_curve = 0.7043,
    preferred_supplier_ids = { 114, 140 },
    gen_id = 113,
}
_VP["VP-000114"] = {
    label = "AstraMotors modelo 2114 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 25618,
    wear_curve = 0.9483,
    preferred_supplier_ids = { 115, 143 },
    gen_id = 114,
}
_VP["VP-000115"] = {
    label = "RioVeículos modelo 2115 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 25755,
    wear_curve = 0.2746,
    preferred_supplier_ids = { 116, 146 },
    gen_id = 115,
}
_VP["VP-000116"] = {
    label = "NorteAuto modelo 2116 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 25892,
    wear_curve = 0.9343,
    preferred_supplier_ids = { 117, 149 },
    gen_id = 116,
}
_VP["VP-000117"] = {
    label = "DeltaMob modelo 2117 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 26029,
    wear_curve = 0.5659,
    preferred_supplier_ids = { 118, 152 },
    gen_id = 117,
}
_VP["VP-000118"] = {
    label = "OrionTruck modelo 2118 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 26166,
    wear_curve = 0.5256,
    preferred_supplier_ids = { 119, 155 },
    gen_id = 118,
}
_VP["VP-000119"] = {
    label = "SigmaBike modelo 2119 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 26303,
    wear_curve = 0.5593,
    preferred_supplier_ids = { 120, 158 },
    gen_id = 119,
}
_VP["VP-000120"] = {
    label = "AstraMotors modelo 2120 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 26440,
    wear_curve = 0.8783,
    preferred_supplier_ids = { 121, 161 },
    gen_id = 120,
}
_VP["VP-000121"] = {
    label = "RioVeículos modelo 2121 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 26577,
    wear_curve = 0.4669,
    preferred_supplier_ids = { 122, 164 },
    gen_id = 121,
}
_VP["VP-000122"] = {
    label = "NorteAuto modelo 2122 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 26714,
    wear_curve = 0.6081,
    preferred_supplier_ids = { 123, 167 },
    gen_id = 122,
}
_VP["VP-000123"] = {
    label = "DeltaMob modelo 2123 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 26851,
    wear_curve = 0.5621,
    preferred_supplier_ids = { 124, 170 },
    gen_id = 123,
}
_VP["VP-000124"] = {
    label = "OrionTruck modelo 2124 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 26988,
    wear_curve = 0.3042,
    preferred_supplier_ids = { 125, 173 },
    gen_id = 124,
}
_VP["VP-000125"] = {
    label = "SigmaBike modelo 2125 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 27125,
    wear_curve = 0.4753,
    preferred_supplier_ids = { 126, 176 },
    gen_id = 125,
}
_VP["VP-000126"] = {
    label = "AstraMotors modelo 2126 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 27262,
    wear_curve = 0.3080,
    preferred_supplier_ids = { 127, 179 },
    gen_id = 126,
}
_VP["VP-000127"] = {
    label = "RioVeículos modelo 2127 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 27399,
    wear_curve = 0.5886,
    preferred_supplier_ids = { 128, 182 },
    gen_id = 127,
}
_VP["VP-000128"] = {
    label = "NorteAuto modelo 2128 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 27536,
    wear_curve = 0.6314,
    preferred_supplier_ids = { 129, 185 },
    gen_id = 128,
}
_VP["VP-000129"] = {
    label = "DeltaMob modelo 2129 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 27673,
    wear_curve = 0.8063,
    preferred_supplier_ids = { 130, 188 },
    gen_id = 129,
}
_VP["VP-000130"] = {
    label = "OrionTruck modelo 2130 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 27810,
    wear_curve = 0.1751,
    preferred_supplier_ids = { 131, 191 },
    gen_id = 130,
}
_VP["VP-000131"] = {
    label = "SigmaBike modelo 2131 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 27947,
    wear_curve = 0.7319,
    preferred_supplier_ids = { 132, 194 },
    gen_id = 131,
}
_VP["VP-000132"] = {
    label = "AstraMotors modelo 2132 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 28084,
    wear_curve = 0.4581,
    preferred_supplier_ids = { 133, 197 },
    gen_id = 132,
}
_VP["VP-000133"] = {
    label = "RioVeículos modelo 2133 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 28221,
    wear_curve = 0.7467,
    preferred_supplier_ids = { 134, 200 },
    gen_id = 133,
}
_VP["VP-000134"] = {
    label = "NorteAuto modelo 2134 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 28358,
    wear_curve = 0.4098,
    preferred_supplier_ids = { 135, 3 },
    gen_id = 134,
}
_VP["VP-000135"] = {
    label = "DeltaMob modelo 2135 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 28495,
    wear_curve = 0.9915,
    preferred_supplier_ids = { 136, 6 },
    gen_id = 135,
}
_VP["VP-000136"] = {
    label = "OrionTruck modelo 2136 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 28632,
    wear_curve = 0.5843,
    preferred_supplier_ids = { 137, 9 },
    gen_id = 136,
}
_VP["VP-000137"] = {
    label = "SigmaBike modelo 2137 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 28769,
    wear_curve = 0.3960,
    preferred_supplier_ids = { 138, 12 },
    gen_id = 137,
}
_VP["VP-000138"] = {
    label = "AstraMotors modelo 2138 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 28906,
    wear_curve = 0.4154,
    preferred_supplier_ids = { 139, 15 },
    gen_id = 138,
}
_VP["VP-000139"] = {
    label = "RioVeículos modelo 2139 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 29043,
    wear_curve = 0.5231,
    preferred_supplier_ids = { 140, 18 },
    gen_id = 139,
}
_VP["VP-000140"] = {
    label = "NorteAuto modelo 2140 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 29180,
    wear_curve = 0.7122,
    preferred_supplier_ids = { 141, 21 },
    gen_id = 140,
}
_VP["VP-000141"] = {
    label = "DeltaMob modelo 2141 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 29317,
    wear_curve = 0.8813,
    preferred_supplier_ids = { 142, 24 },
    gen_id = 141,
}
_VP["VP-000142"] = {
    label = "OrionTruck modelo 2142 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 29454,
    wear_curve = 0.1801,
    preferred_supplier_ids = { 143, 27 },
    gen_id = 142,
}
_VP["VP-000143"] = {
    label = "SigmaBike modelo 2143 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 29591,
    wear_curve = 0.7074,
    preferred_supplier_ids = { 144, 30 },
    gen_id = 143,
}
_VP["VP-000144"] = {
    label = "AstraMotors modelo 2144 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 29728,
    wear_curve = 0.3211,
    preferred_supplier_ids = { 145, 33 },
    gen_id = 144,
}
_VP["VP-000145"] = {
    label = "RioVeículos modelo 2145 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 29865,
    wear_curve = 0.6146,
    preferred_supplier_ids = { 146, 36 },
    gen_id = 145,
}
_VP["VP-000146"] = {
    label = "NorteAuto modelo 2146 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 30002,
    wear_curve = 0.7936,
    preferred_supplier_ids = { 147, 39 },
    gen_id = 146,
}
_VP["VP-000147"] = {
    label = "DeltaMob modelo 2147 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 30139,
    wear_curve = 0.7887,
    preferred_supplier_ids = { 148, 42 },
    gen_id = 147,
}
_VP["VP-000148"] = {
    label = "OrionTruck modelo 2148 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 30276,
    wear_curve = 0.2765,
    preferred_supplier_ids = { 149, 45 },
    gen_id = 148,
}
_VP["VP-000149"] = {
    label = "SigmaBike modelo 2149 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 30413,
    wear_curve = 0.6759,
    preferred_supplier_ids = { 150, 48 },
    gen_id = 149,
}
_VP["VP-000150"] = {
    label = "AstraMotors modelo 2150 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 30550,
    wear_curve = 0.7646,
    preferred_supplier_ids = { 151, 51 },
    gen_id = 150,
}
_VP["VP-000151"] = {
    label = "RioVeículos modelo 2151 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 30687,
    wear_curve = 0.5473,
    preferred_supplier_ids = { 152, 54 },
    gen_id = 151,
}
_VP["VP-000152"] = {
    label = "NorteAuto modelo 2152 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 30824,
    wear_curve = 0.2470,
    preferred_supplier_ids = { 153, 57 },
    gen_id = 152,
}
_VP["VP-000153"] = {
    label = "DeltaMob modelo 2153 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 30961,
    wear_curve = 0.3150,
    preferred_supplier_ids = { 154, 60 },
    gen_id = 153,
}
_VP["VP-000154"] = {
    label = "OrionTruck modelo 2154 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 31098,
    wear_curve = 0.3173,
    preferred_supplier_ids = { 155, 63 },
    gen_id = 154,
}
_VP["VP-000155"] = {
    label = "SigmaBike modelo 2155 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 31235,
    wear_curve = 0.8804,
    preferred_supplier_ids = { 156, 66 },
    gen_id = 155,
}
_VP["VP-000156"] = {
    label = "AstraMotors modelo 2156 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 31372,
    wear_curve = 0.8133,
    preferred_supplier_ids = { 157, 69 },
    gen_id = 156,
}
_VP["VP-000157"] = {
    label = "RioVeículos modelo 2157 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 31509,
    wear_curve = 0.3308,
    preferred_supplier_ids = { 158, 72 },
    gen_id = 157,
}
_VP["VP-000158"] = {
    label = "NorteAuto modelo 2158 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 31646,
    wear_curve = 0.5591,
    preferred_supplier_ids = { 159, 75 },
    gen_id = 158,
}
_VP["VP-000159"] = {
    label = "DeltaMob modelo 2159 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 31783,
    wear_curve = 0.1805,
    preferred_supplier_ids = { 160, 78 },
    gen_id = 159,
}
_VP["VP-000160"] = {
    label = "OrionTruck modelo 2160 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 31920,
    wear_curve = 0.6671,
    preferred_supplier_ids = { 161, 81 },
    gen_id = 160,
}
_VP["VP-000161"] = {
    label = "SigmaBike modelo 2161 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 32057,
    wear_curve = 0.8460,
    preferred_supplier_ids = { 162, 84 },
    gen_id = 161,
}
_VP["VP-000162"] = {
    label = "AstraMotors modelo 2162 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 32194,
    wear_curve = 0.7732,
    preferred_supplier_ids = { 163, 87 },
    gen_id = 162,
}
_VP["VP-000163"] = {
    label = "RioVeículos modelo 2163 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 32331,
    wear_curve = 0.7622,
    preferred_supplier_ids = { 164, 90 },
    gen_id = 163,
}
_VP["VP-000164"] = {
    label = "NorteAuto modelo 2164 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 32468,
    wear_curve = 0.7611,
    preferred_supplier_ids = { 165, 93 },
    gen_id = 164,
}
_VP["VP-000165"] = {
    label = "DeltaMob modelo 2165 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 32605,
    wear_curve = 0.6107,
    preferred_supplier_ids = { 166, 96 },
    gen_id = 165,
}
_VP["VP-000166"] = {
    label = "OrionTruck modelo 2166 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 32742,
    wear_curve = 0.7025,
    preferred_supplier_ids = { 167, 99 },
    gen_id = 166,
}
_VP["VP-000167"] = {
    label = "SigmaBike modelo 2167 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 32879,
    wear_curve = 0.6996,
    preferred_supplier_ids = { 168, 102 },
    gen_id = 167,
}
_VP["VP-000168"] = {
    label = "AstraMotors modelo 2168 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 33016,
    wear_curve = 0.2807,
    preferred_supplier_ids = { 169, 105 },
    gen_id = 168,
}
_VP["VP-000169"] = {
    label = "RioVeículos modelo 2169 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 33153,
    wear_curve = 0.9278,
    preferred_supplier_ids = { 170, 108 },
    gen_id = 169,
}
_VP["VP-000170"] = {
    label = "NorteAuto modelo 2170 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 33290,
    wear_curve = 0.4533,
    preferred_supplier_ids = { 171, 111 },
    gen_id = 170,
}
_VP["VP-000171"] = {
    label = "DeltaMob modelo 2171 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 33427,
    wear_curve = 0.2018,
    preferred_supplier_ids = { 172, 114 },
    gen_id = 171,
}
_VP["VP-000172"] = {
    label = "OrionTruck modelo 2172 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 33564,
    wear_curve = 0.9744,
    preferred_supplier_ids = { 173, 117 },
    gen_id = 172,
}
_VP["VP-000173"] = {
    label = "SigmaBike modelo 2173 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 33701,
    wear_curve = 0.5091,
    preferred_supplier_ids = { 174, 120 },
    gen_id = 173,
}
_VP["VP-000174"] = {
    label = "AstraMotors modelo 2174 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 33838,
    wear_curve = 0.2111,
    preferred_supplier_ids = { 175, 123 },
    gen_id = 174,
}
_VP["VP-000175"] = {
    label = "RioVeículos modelo 2175 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 33975,
    wear_curve = 0.8632,
    preferred_supplier_ids = { 176, 126 },
    gen_id = 175,
}
_VP["VP-000176"] = {
    label = "NorteAuto modelo 2176 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 34112,
    wear_curve = 0.8906,
    preferred_supplier_ids = { 177, 129 },
    gen_id = 176,
}
_VP["VP-000177"] = {
    label = "DeltaMob modelo 2177 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 34249,
    wear_curve = 0.9299,
    preferred_supplier_ids = { 178, 132 },
    gen_id = 177,
}
_VP["VP-000178"] = {
    label = "OrionTruck modelo 2178 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 34386,
    wear_curve = 0.4715,
    preferred_supplier_ids = { 179, 135 },
    gen_id = 178,
}
_VP["VP-000179"] = {
    label = "SigmaBike modelo 2179 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 34523,
    wear_curve = 0.9903,
    preferred_supplier_ids = { 180, 138 },
    gen_id = 179,
}
_VP["VP-000180"] = {
    label = "AstraMotors modelo 2180 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 34660,
    wear_curve = 0.4286,
    preferred_supplier_ids = { 181, 141 },
    gen_id = 180,
}
_VP["VP-000181"] = {
    label = "RioVeículos modelo 2181 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 34797,
    wear_curve = 0.9153,
    preferred_supplier_ids = { 182, 144 },
    gen_id = 181,
}
_VP["VP-000182"] = {
    label = "NorteAuto modelo 2182 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 34934,
    wear_curve = 0.3032,
    preferred_supplier_ids = { 183, 147 },
    gen_id = 182,
}
_VP["VP-000183"] = {
    label = "DeltaMob modelo 2183 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 35071,
    wear_curve = 0.6178,
    preferred_supplier_ids = { 184, 150 },
    gen_id = 183,
}
_VP["VP-000184"] = {
    label = "OrionTruck modelo 2184 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 35208,
    wear_curve = 0.4795,
    preferred_supplier_ids = { 185, 153 },
    gen_id = 184,
}
_VP["VP-000185"] = {
    label = "SigmaBike modelo 2185 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 35345,
    wear_curve = 0.4025,
    preferred_supplier_ids = { 186, 156 },
    gen_id = 185,
}
_VP["VP-000186"] = {
    label = "AstraMotors modelo 2186 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 35482,
    wear_curve = 0.7215,
    preferred_supplier_ids = { 187, 159 },
    gen_id = 186,
}
_VP["VP-000187"] = {
    label = "RioVeículos modelo 2187 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 35619,
    wear_curve = 0.2900,
    preferred_supplier_ids = { 188, 162 },
    gen_id = 187,
}
_VP["VP-000188"] = {
    label = "NorteAuto modelo 2188 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 35756,
    wear_curve = 0.6905,
    preferred_supplier_ids = { 189, 165 },
    gen_id = 188,
}
_VP["VP-000189"] = {
    label = "DeltaMob modelo 2189 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 35893,
    wear_curve = 0.6851,
    preferred_supplier_ids = { 190, 168 },
    gen_id = 189,
}
_VP["VP-000190"] = {
    label = "OrionTruck modelo 2190 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 36030,
    wear_curve = 0.9145,
    preferred_supplier_ids = { 191, 171 },
    gen_id = 190,
}
_VP["VP-000191"] = {
    label = "SigmaBike modelo 2191 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 36167,
    wear_curve = 0.8462,
    preferred_supplier_ids = { 192, 174 },
    gen_id = 191,
}
_VP["VP-000192"] = {
    label = "AstraMotors modelo 2192 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 36304,
    wear_curve = 0.1503,
    preferred_supplier_ids = { 193, 177 },
    gen_id = 192,
}
_VP["VP-000193"] = {
    label = "RioVeículos modelo 2193 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 36441,
    wear_curve = 0.7611,
    preferred_supplier_ids = { 194, 180 },
    gen_id = 193,
}
_VP["VP-000194"] = {
    label = "NorteAuto modelo 2194 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 36578,
    wear_curve = 0.7748,
    preferred_supplier_ids = { 195, 183 },
    gen_id = 194,
}
_VP["VP-000195"] = {
    label = "DeltaMob modelo 2195 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 36715,
    wear_curve = 0.6100,
    preferred_supplier_ids = { 196, 186 },
    gen_id = 195,
}
_VP["VP-000196"] = {
    label = "OrionTruck modelo 2196 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 36852,
    wear_curve = 0.4557,
    preferred_supplier_ids = { 197, 189 },
    gen_id = 196,
}
_VP["VP-000197"] = {
    label = "SigmaBike modelo 2197 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 36989,
    wear_curve = 0.4141,
    preferred_supplier_ids = { 198, 192 },
    gen_id = 197,
}
_VP["VP-000198"] = {
    label = "AstraMotors modelo 2198 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 37126,
    wear_curve = 0.4540,
    preferred_supplier_ids = { 199, 195 },
    gen_id = 198,
}
_VP["VP-000199"] = {
    label = "RioVeículos modelo 2199 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 37263,
    wear_curve = 0.1959,
    preferred_supplier_ids = { 200, 198 },
    gen_id = 199,
}
_VP["VP-000200"] = {
    label = "NorteAuto modelo 2200 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 37400,
    wear_curve = 0.2833,
    preferred_supplier_ids = { 1, 1 },
    gen_id = 200,
}
_VP["VP-000201"] = {
    label = "DeltaMob modelo 2201 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 37537,
    wear_curve = 0.3742,
    preferred_supplier_ids = { 2, 4 },
    gen_id = 201,
}
_VP["VP-000202"] = {
    label = "OrionTruck modelo 2202 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 37674,
    wear_curve = 0.6191,
    preferred_supplier_ids = { 3, 7 },
    gen_id = 202,
}
_VP["VP-000203"] = {
    label = "SigmaBike modelo 2203 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 37811,
    wear_curve = 0.7105,
    preferred_supplier_ids = { 4, 10 },
    gen_id = 203,
}
_VP["VP-000204"] = {
    label = "AstraMotors modelo 2204 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 37948,
    wear_curve = 0.5495,
    preferred_supplier_ids = { 5, 13 },
    gen_id = 204,
}
_VP["VP-000205"] = {
    label = "RioVeículos modelo 2205 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 38085,
    wear_curve = 0.3146,
    preferred_supplier_ids = { 6, 16 },
    gen_id = 205,
}
_VP["VP-000206"] = {
    label = "NorteAuto modelo 2206 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 38222,
    wear_curve = 0.5007,
    preferred_supplier_ids = { 7, 19 },
    gen_id = 206,
}
_VP["VP-000207"] = {
    label = "DeltaMob modelo 2207 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 38359,
    wear_curve = 0.8839,
    preferred_supplier_ids = { 8, 22 },
    gen_id = 207,
}
_VP["VP-000208"] = {
    label = "OrionTruck modelo 2208 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 38496,
    wear_curve = 0.3583,
    preferred_supplier_ids = { 9, 25 },
    gen_id = 208,
}
_VP["VP-000209"] = {
    label = "SigmaBike modelo 2209 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 38633,
    wear_curve = 0.7536,
    preferred_supplier_ids = { 10, 28 },
    gen_id = 209,
}
_VP["VP-000210"] = {
    label = "AstraMotors modelo 2210 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 38770,
    wear_curve = 0.3886,
    preferred_supplier_ids = { 11, 31 },
    gen_id = 210,
}
_VP["VP-000211"] = {
    label = "RioVeículos modelo 2211 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 38907,
    wear_curve = 0.5849,
    preferred_supplier_ids = { 12, 34 },
    gen_id = 211,
}
_VP["VP-000212"] = {
    label = "NorteAuto modelo 2212 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 39044,
    wear_curve = 0.6955,
    preferred_supplier_ids = { 13, 37 },
    gen_id = 212,
}
_VP["VP-000213"] = {
    label = "DeltaMob modelo 2213 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 39181,
    wear_curve = 0.6949,
    preferred_supplier_ids = { 14, 40 },
    gen_id = 213,
}
_VP["VP-000214"] = {
    label = "OrionTruck modelo 2214 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 39318,
    wear_curve = 0.9906,
    preferred_supplier_ids = { 15, 43 },
    gen_id = 214,
}
_VP["VP-000215"] = {
    label = "SigmaBike modelo 2215 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 39455,
    wear_curve = 0.5309,
    preferred_supplier_ids = { 16, 46 },
    gen_id = 215,
}
_VP["VP-000216"] = {
    label = "AstraMotors modelo 2216 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 39592,
    wear_curve = 0.7429,
    preferred_supplier_ids = { 17, 49 },
    gen_id = 216,
}
_VP["VP-000217"] = {
    label = "RioVeículos modelo 2217 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 39729,
    wear_curve = 0.8987,
    preferred_supplier_ids = { 18, 52 },
    gen_id = 217,
}
_VP["VP-000218"] = {
    label = "NorteAuto modelo 2218 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 39866,
    wear_curve = 0.7830,
    preferred_supplier_ids = { 19, 55 },
    gen_id = 218,
}
_VP["VP-000219"] = {
    label = "DeltaMob modelo 2219 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 40003,
    wear_curve = 0.9700,
    preferred_supplier_ids = { 20, 58 },
    gen_id = 219,
}
_VP["VP-000220"] = {
    label = "OrionTruck modelo 2220 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 40140,
    wear_curve = 0.7982,
    preferred_supplier_ids = { 21, 61 },
    gen_id = 220,
}
_VP["VP-000221"] = {
    label = "SigmaBike modelo 2221 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 40277,
    wear_curve = 0.7930,
    preferred_supplier_ids = { 22, 64 },
    gen_id = 221,
}
_VP["VP-000222"] = {
    label = "AstraMotors modelo 2222 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 40414,
    wear_curve = 0.3447,
    preferred_supplier_ids = { 23, 67 },
    gen_id = 222,
}
_VP["VP-000223"] = {
    label = "RioVeículos modelo 2223 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 40551,
    wear_curve = 0.6227,
    preferred_supplier_ids = { 24, 70 },
    gen_id = 223,
}
_VP["VP-000224"] = {
    label = "NorteAuto modelo 2224 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 40688,
    wear_curve = 0.4959,
    preferred_supplier_ids = { 25, 73 },
    gen_id = 224,
}
_VP["VP-000225"] = {
    label = "DeltaMob modelo 2225 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 40825,
    wear_curve = 0.1931,
    preferred_supplier_ids = { 26, 76 },
    gen_id = 225,
}
_VP["VP-000226"] = {
    label = "OrionTruck modelo 2226 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 40962,
    wear_curve = 0.7787,
    preferred_supplier_ids = { 27, 79 },
    gen_id = 226,
}
_VP["VP-000227"] = {
    label = "SigmaBike modelo 2227 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 41099,
    wear_curve = 0.7842,
    preferred_supplier_ids = { 28, 82 },
    gen_id = 227,
}
_VP["VP-000228"] = {
    label = "AstraMotors modelo 2228 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 41236,
    wear_curve = 0.7925,
    preferred_supplier_ids = { 29, 85 },
    gen_id = 228,
}
_VP["VP-000229"] = {
    label = "RioVeículos modelo 2229 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 41373,
    wear_curve = 0.2118,
    preferred_supplier_ids = { 30, 88 },
    gen_id = 229,
}
_VP["VP-000230"] = {
    label = "NorteAuto modelo 2230 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 41510,
    wear_curve = 0.5374,
    preferred_supplier_ids = { 31, 91 },
    gen_id = 230,
}
_VP["VP-000231"] = {
    label = "DeltaMob modelo 2231 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 41647,
    wear_curve = 0.1504,
    preferred_supplier_ids = { 32, 94 },
    gen_id = 231,
}
_VP["VP-000232"] = {
    label = "OrionTruck modelo 2232 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 41784,
    wear_curve = 0.5363,
    preferred_supplier_ids = { 33, 97 },
    gen_id = 232,
}
_VP["VP-000233"] = {
    label = "SigmaBike modelo 2233 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 41921,
    wear_curve = 0.5050,
    preferred_supplier_ids = { 34, 100 },
    gen_id = 233,
}
_VP["VP-000234"] = {
    label = "AstraMotors modelo 2234 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 42058,
    wear_curve = 0.2802,
    preferred_supplier_ids = { 35, 103 },
    gen_id = 234,
}
_VP["VP-000235"] = {
    label = "RioVeículos modelo 2235 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 42195,
    wear_curve = 0.9942,
    preferred_supplier_ids = { 36, 106 },
    gen_id = 235,
}
_VP["VP-000236"] = {
    label = "NorteAuto modelo 2236 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 42332,
    wear_curve = 0.7578,
    preferred_supplier_ids = { 37, 109 },
    gen_id = 236,
}
_VP["VP-000237"] = {
    label = "DeltaMob modelo 2237 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 42469,
    wear_curve = 0.4090,
    preferred_supplier_ids = { 38, 112 },
    gen_id = 237,
}
_VP["VP-000238"] = {
    label = "OrionTruck modelo 2238 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 42606,
    wear_curve = 0.9556,
    preferred_supplier_ids = { 39, 115 },
    gen_id = 238,
}
_VP["VP-000239"] = {
    label = "SigmaBike modelo 2239 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 42743,
    wear_curve = 0.7787,
    preferred_supplier_ids = { 40, 118 },
    gen_id = 239,
}
_VP["VP-000240"] = {
    label = "AstraMotors modelo 2240 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 42880,
    wear_curve = 0.2787,
    preferred_supplier_ids = { 41, 121 },
    gen_id = 240,
}
_VP["VP-000241"] = {
    label = "RioVeículos modelo 2241 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 43017,
    wear_curve = 0.6903,
    preferred_supplier_ids = { 42, 124 },
    gen_id = 241,
}
_VP["VP-000242"] = {
    label = "NorteAuto modelo 2242 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 43154,
    wear_curve = 0.9114,
    preferred_supplier_ids = { 43, 127 },
    gen_id = 242,
}
_VP["VP-000243"] = {
    label = "DeltaMob modelo 2243 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 43291,
    wear_curve = 0.4599,
    preferred_supplier_ids = { 44, 130 },
    gen_id = 243,
}
_VP["VP-000244"] = {
    label = "OrionTruck modelo 2244 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 43428,
    wear_curve = 0.4485,
    preferred_supplier_ids = { 45, 133 },
    gen_id = 244,
}
_VP["VP-000245"] = {
    label = "SigmaBike modelo 2245 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 43565,
    wear_curve = 0.2887,
    preferred_supplier_ids = { 46, 136 },
    gen_id = 245,
}
_VP["VP-000246"] = {
    label = "AstraMotors modelo 2246 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 43702,
    wear_curve = 0.5985,
    preferred_supplier_ids = { 47, 139 },
    gen_id = 246,
}
_VP["VP-000247"] = {
    label = "RioVeículos modelo 2247 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 43839,
    wear_curve = 0.5914,
    preferred_supplier_ids = { 48, 142 },
    gen_id = 247,
}
_VP["VP-000248"] = {
    label = "NorteAuto modelo 2248 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 43976,
    wear_curve = 0.4834,
    preferred_supplier_ids = { 49, 145 },
    gen_id = 248,
}
_VP["VP-000249"] = {
    label = "DeltaMob modelo 2249 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 44113,
    wear_curve = 0.4989,
    preferred_supplier_ids = { 50, 148 },
    gen_id = 249,
}
_VP["VP-000250"] = {
    label = "OrionTruck modelo 2250 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 44250,
    wear_curve = 0.6988,
    preferred_supplier_ids = { 51, 151 },
    gen_id = 250,
}
_VP["VP-000251"] = {
    label = "SigmaBike modelo 2251 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 44387,
    wear_curve = 0.7565,
    preferred_supplier_ids = { 52, 154 },
    gen_id = 251,
}
_VP["VP-000252"] = {
    label = "AstraMotors modelo 2252 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 44524,
    wear_curve = 0.7897,
    preferred_supplier_ids = { 53, 157 },
    gen_id = 252,
}
_VP["VP-000253"] = {
    label = "RioVeículos modelo 2253 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 44661,
    wear_curve = 0.3473,
    preferred_supplier_ids = { 54, 160 },
    gen_id = 253,
}
_VP["VP-000254"] = {
    label = "NorteAuto modelo 2254 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 44798,
    wear_curve = 0.9676,
    preferred_supplier_ids = { 55, 163 },
    gen_id = 254,
}
_VP["VP-000255"] = {
    label = "DeltaMob modelo 2255 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 44935,
    wear_curve = 0.2164,
    preferred_supplier_ids = { 56, 166 },
    gen_id = 255,
}
_VP["VP-000256"] = {
    label = "OrionTruck modelo 2256 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 45072,
    wear_curve = 0.4227,
    preferred_supplier_ids = { 57, 169 },
    gen_id = 256,
}
_VP["VP-000257"] = {
    label = "SigmaBike modelo 2257 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 45209,
    wear_curve = 0.2842,
    preferred_supplier_ids = { 58, 172 },
    gen_id = 257,
}
_VP["VP-000258"] = {
    label = "AstraMotors modelo 2258 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 45346,
    wear_curve = 0.4942,
    preferred_supplier_ids = { 59, 175 },
    gen_id = 258,
}
_VP["VP-000259"] = {
    label = "RioVeículos modelo 2259 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 45483,
    wear_curve = 0.4257,
    preferred_supplier_ids = { 60, 178 },
    gen_id = 259,
}
_VP["VP-000260"] = {
    label = "NorteAuto modelo 2260 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 45620,
    wear_curve = 0.5385,
    preferred_supplier_ids = { 61, 181 },
    gen_id = 260,
}
_VP["VP-000261"] = {
    label = "DeltaMob modelo 2261 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 45757,
    wear_curve = 0.9220,
    preferred_supplier_ids = { 62, 184 },
    gen_id = 261,
}
_VP["VP-000262"] = {
    label = "OrionTruck modelo 2262 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 45894,
    wear_curve = 0.2981,
    preferred_supplier_ids = { 63, 187 },
    gen_id = 262,
}
_VP["VP-000263"] = {
    label = "SigmaBike modelo 2263 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 46031,
    wear_curve = 0.9277,
    preferred_supplier_ids = { 64, 190 },
    gen_id = 263,
}
_VP["VP-000264"] = {
    label = "AstraMotors modelo 2264 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 46168,
    wear_curve = 0.4126,
    preferred_supplier_ids = { 65, 193 },
    gen_id = 264,
}
_VP["VP-000265"] = {
    label = "RioVeículos modelo 2265 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 46305,
    wear_curve = 0.7658,
    preferred_supplier_ids = { 66, 196 },
    gen_id = 265,
}
_VP["VP-000266"] = {
    label = "NorteAuto modelo 2266 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 46442,
    wear_curve = 0.8886,
    preferred_supplier_ids = { 67, 199 },
    gen_id = 266,
}
_VP["VP-000267"] = {
    label = "DeltaMob modelo 2267 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 46579,
    wear_curve = 0.7552,
    preferred_supplier_ids = { 68, 2 },
    gen_id = 267,
}
_VP["VP-000268"] = {
    label = "OrionTruck modelo 2268 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 46716,
    wear_curve = 0.8610,
    preferred_supplier_ids = { 69, 5 },
    gen_id = 268,
}
_VP["VP-000269"] = {
    label = "SigmaBike modelo 2269 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 46853,
    wear_curve = 0.4920,
    preferred_supplier_ids = { 70, 8 },
    gen_id = 269,
}
_VP["VP-000270"] = {
    label = "AstraMotors modelo 2270 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 46990,
    wear_curve = 0.3802,
    preferred_supplier_ids = { 71, 11 },
    gen_id = 270,
}
_VP["VP-000271"] = {
    label = "RioVeículos modelo 2271 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 47127,
    wear_curve = 0.6763,
    preferred_supplier_ids = { 72, 14 },
    gen_id = 271,
}
_VP["VP-000272"] = {
    label = "NorteAuto modelo 2272 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 47264,
    wear_curve = 0.3599,
    preferred_supplier_ids = { 73, 17 },
    gen_id = 272,
}
_VP["VP-000273"] = {
    label = "DeltaMob modelo 2273 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 47401,
    wear_curve = 0.2950,
    preferred_supplier_ids = { 74, 20 },
    gen_id = 273,
}
_VP["VP-000274"] = {
    label = "OrionTruck modelo 2274 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 47538,
    wear_curve = 0.6667,
    preferred_supplier_ids = { 75, 23 },
    gen_id = 274,
}
_VP["VP-000275"] = {
    label = "SigmaBike modelo 2275 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 47675,
    wear_curve = 0.9848,
    preferred_supplier_ids = { 76, 26 },
    gen_id = 275,
}
_VP["VP-000276"] = {
    label = "AstraMotors modelo 2276 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 47812,
    wear_curve = 0.8255,
    preferred_supplier_ids = { 77, 29 },
    gen_id = 276,
}
_VP["VP-000277"] = {
    label = "RioVeículos modelo 2277 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 47949,
    wear_curve = 0.8340,
    preferred_supplier_ids = { 78, 32 },
    gen_id = 277,
}
_VP["VP-000278"] = {
    label = "NorteAuto modelo 2278 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 48086,
    wear_curve = 0.4713,
    preferred_supplier_ids = { 79, 35 },
    gen_id = 278,
}
_VP["VP-000279"] = {
    label = "DeltaMob modelo 2279 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 48223,
    wear_curve = 0.7986,
    preferred_supplier_ids = { 80, 38 },
    gen_id = 279,
}
_VP["VP-000280"] = {
    label = "OrionTruck modelo 2280 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 48360,
    wear_curve = 0.2758,
    preferred_supplier_ids = { 81, 41 },
    gen_id = 280,
}
_VP["VP-000281"] = {
    label = "SigmaBike modelo 2281 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 48497,
    wear_curve = 0.6740,
    preferred_supplier_ids = { 82, 44 },
    gen_id = 281,
}
_VP["VP-000282"] = {
    label = "AstraMotors modelo 2282 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 48634,
    wear_curve = 0.2015,
    preferred_supplier_ids = { 83, 47 },
    gen_id = 282,
}
_VP["VP-000283"] = {
    label = "RioVeículos modelo 2283 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 48771,
    wear_curve = 0.7926,
    preferred_supplier_ids = { 84, 50 },
    gen_id = 283,
}
_VP["VP-000284"] = {
    label = "NorteAuto modelo 2284 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 48908,
    wear_curve = 0.8101,
    preferred_supplier_ids = { 85, 53 },
    gen_id = 284,
}
_VP["VP-000285"] = {
    label = "DeltaMob modelo 2285 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 49045,
    wear_curve = 0.3294,
    preferred_supplier_ids = { 86, 56 },
    gen_id = 285,
}
_VP["VP-000286"] = {
    label = "OrionTruck modelo 2286 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 49182,
    wear_curve = 0.3990,
    preferred_supplier_ids = { 87, 59 },
    gen_id = 286,
}
_VP["VP-000287"] = {
    label = "SigmaBike modelo 2287 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 49319,
    wear_curve = 0.4534,
    preferred_supplier_ids = { 88, 62 },
    gen_id = 287,
}
_VP["VP-000288"] = {
    label = "AstraMotors modelo 2288 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 49456,
    wear_curve = 0.2037,
    preferred_supplier_ids = { 89, 65 },
    gen_id = 288,
}
_VP["VP-000289"] = {
    label = "RioVeículos modelo 2289 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 49593,
    wear_curve = 0.2775,
    preferred_supplier_ids = { 90, 68 },
    gen_id = 289,
}
_VP["VP-000290"] = {
    label = "NorteAuto modelo 2290 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 49730,
    wear_curve = 0.4406,
    preferred_supplier_ids = { 91, 71 },
    gen_id = 290,
}
_VP["VP-000291"] = {
    label = "DeltaMob modelo 2291 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 49867,
    wear_curve = 0.7077,
    preferred_supplier_ids = { 92, 74 },
    gen_id = 291,
}
_VP["VP-000292"] = {
    label = "OrionTruck modelo 2292 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 50004,
    wear_curve = 0.2271,
    preferred_supplier_ids = { 93, 77 },
    gen_id = 292,
}
_VP["VP-000293"] = {
    label = "SigmaBike modelo 2293 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 50141,
    wear_curve = 0.9260,
    preferred_supplier_ids = { 94, 80 },
    gen_id = 293,
}
_VP["VP-000294"] = {
    label = "AstraMotors modelo 2294 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 50278,
    wear_curve = 0.9545,
    preferred_supplier_ids = { 95, 83 },
    gen_id = 294,
}
_VP["VP-000295"] = {
    label = "RioVeículos modelo 2295 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 50415,
    wear_curve = 0.8867,
    preferred_supplier_ids = { 96, 86 },
    gen_id = 295,
}
_VP["VP-000296"] = {
    label = "NorteAuto modelo 2296 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 50552,
    wear_curve = 0.4141,
    preferred_supplier_ids = { 97, 89 },
    gen_id = 296,
}
_VP["VP-000297"] = {
    label = "DeltaMob modelo 2297 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 50689,
    wear_curve = 0.8279,
    preferred_supplier_ids = { 98, 92 },
    gen_id = 297,
}
_VP["VP-000298"] = {
    label = "OrionTruck modelo 2298 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 50826,
    wear_curve = 0.8821,
    preferred_supplier_ids = { 99, 95 },
    gen_id = 298,
}
_VP["VP-000299"] = {
    label = "SigmaBike modelo 2299 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 50963,
    wear_curve = 0.4524,
    preferred_supplier_ids = { 100, 98 },
    gen_id = 299,
}
_VP["VP-000300"] = {
    label = "AstraMotors modelo 2300 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 51100,
    wear_curve = 0.6123,
    preferred_supplier_ids = { 101, 101 },
    gen_id = 300,
}
_VP["VP-000301"] = {
    label = "RioVeículos modelo 2301 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 51237,
    wear_curve = 0.7015,
    preferred_supplier_ids = { 102, 104 },
    gen_id = 301,
}
_VP["VP-000302"] = {
    label = "NorteAuto modelo 2302 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 51374,
    wear_curve = 0.7265,
    preferred_supplier_ids = { 103, 107 },
    gen_id = 302,
}
_VP["VP-000303"] = {
    label = "DeltaMob modelo 2303 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 51511,
    wear_curve = 0.8250,
    preferred_supplier_ids = { 104, 110 },
    gen_id = 303,
}
_VP["VP-000304"] = {
    label = "OrionTruck modelo 2304 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 51648,
    wear_curve = 0.1644,
    preferred_supplier_ids = { 105, 113 },
    gen_id = 304,
}
_VP["VP-000305"] = {
    label = "SigmaBike modelo 2305 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 51785,
    wear_curve = 0.6238,
    preferred_supplier_ids = { 106, 116 },
    gen_id = 305,
}
_VP["VP-000306"] = {
    label = "AstraMotors modelo 2306 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 51922,
    wear_curve = 0.7913,
    preferred_supplier_ids = { 107, 119 },
    gen_id = 306,
}
_VP["VP-000307"] = {
    label = "RioVeículos modelo 2307 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 52059,
    wear_curve = 0.3111,
    preferred_supplier_ids = { 108, 122 },
    gen_id = 307,
}
_VP["VP-000308"] = {
    label = "NorteAuto modelo 2308 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 52196,
    wear_curve = 0.4805,
    preferred_supplier_ids = { 109, 125 },
    gen_id = 308,
}
_VP["VP-000309"] = {
    label = "DeltaMob modelo 2309 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 52333,
    wear_curve = 0.9314,
    preferred_supplier_ids = { 110, 128 },
    gen_id = 309,
}
_VP["VP-000310"] = {
    label = "OrionTruck modelo 2310 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 52470,
    wear_curve = 0.4262,
    preferred_supplier_ids = { 111, 131 },
    gen_id = 310,
}
_VP["VP-000311"] = {
    label = "SigmaBike modelo 2311 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 52607,
    wear_curve = 0.8463,
    preferred_supplier_ids = { 112, 134 },
    gen_id = 311,
}
_VP["VP-000312"] = {
    label = "AstraMotors modelo 2312 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 52744,
    wear_curve = 0.9739,
    preferred_supplier_ids = { 113, 137 },
    gen_id = 312,
}
_VP["VP-000313"] = {
    label = "RioVeículos modelo 2313 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 52881,
    wear_curve = 0.5709,
    preferred_supplier_ids = { 114, 140 },
    gen_id = 313,
}
_VP["VP-000314"] = {
    label = "NorteAuto modelo 2314 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 53018,
    wear_curve = 0.2586,
    preferred_supplier_ids = { 115, 143 },
    gen_id = 314,
}
_VP["VP-000315"] = {
    label = "DeltaMob modelo 2315 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 53155,
    wear_curve = 0.4284,
    preferred_supplier_ids = { 116, 146 },
    gen_id = 315,
}
_VP["VP-000316"] = {
    label = "OrionTruck modelo 2316 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 53292,
    wear_curve = 0.6457,
    preferred_supplier_ids = { 117, 149 },
    gen_id = 316,
}
_VP["VP-000317"] = {
    label = "SigmaBike modelo 2317 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 53429,
    wear_curve = 0.4588,
    preferred_supplier_ids = { 118, 152 },
    gen_id = 317,
}
_VP["VP-000318"] = {
    label = "AstraMotors modelo 2318 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 53566,
    wear_curve = 0.2523,
    preferred_supplier_ids = { 119, 155 },
    gen_id = 318,
}
_VP["VP-000319"] = {
    label = "RioVeículos modelo 2319 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 53703,
    wear_curve = 0.5792,
    preferred_supplier_ids = { 120, 158 },
    gen_id = 319,
}
_VP["VP-000320"] = {
    label = "NorteAuto modelo 2320 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 53840,
    wear_curve = 0.8154,
    preferred_supplier_ids = { 121, 161 },
    gen_id = 320,
}
_VP["VP-000321"] = {
    label = "DeltaMob modelo 2321 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 53977,
    wear_curve = 0.9169,
    preferred_supplier_ids = { 122, 164 },
    gen_id = 321,
}
_VP["VP-000322"] = {
    label = "OrionTruck modelo 2322 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 54114,
    wear_curve = 0.2474,
    preferred_supplier_ids = { 123, 167 },
    gen_id = 322,
}
_VP["VP-000323"] = {
    label = "SigmaBike modelo 2323 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 54251,
    wear_curve = 0.5852,
    preferred_supplier_ids = { 124, 170 },
    gen_id = 323,
}
_VP["VP-000324"] = {
    label = "AstraMotors modelo 2324 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 54388,
    wear_curve = 0.4582,
    preferred_supplier_ids = { 125, 173 },
    gen_id = 324,
}
_VP["VP-000325"] = {
    label = "RioVeículos modelo 2325 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 54525,
    wear_curve = 0.3186,
    preferred_supplier_ids = { 126, 176 },
    gen_id = 325,
}
_VP["VP-000326"] = {
    label = "NorteAuto modelo 2326 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 54662,
    wear_curve = 0.4974,
    preferred_supplier_ids = { 127, 179 },
    gen_id = 326,
}
_VP["VP-000327"] = {
    label = "DeltaMob modelo 2327 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 54799,
    wear_curve = 0.6311,
    preferred_supplier_ids = { 128, 182 },
    gen_id = 327,
}
_VP["VP-000328"] = {
    label = "OrionTruck modelo 2328 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 54936,
    wear_curve = 0.4717,
    preferred_supplier_ids = { 129, 185 },
    gen_id = 328,
}
_VP["VP-000329"] = {
    label = "SigmaBike modelo 2329 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 55073,
    wear_curve = 0.5887,
    preferred_supplier_ids = { 130, 188 },
    gen_id = 329,
}
_VP["VP-000330"] = {
    label = "AstraMotors modelo 2330 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 55210,
    wear_curve = 0.7831,
    preferred_supplier_ids = { 131, 191 },
    gen_id = 330,
}
_VP["VP-000331"] = {
    label = "RioVeículos modelo 2331 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 55347,
    wear_curve = 0.4521,
    preferred_supplier_ids = { 132, 194 },
    gen_id = 331,
}
_VP["VP-000332"] = {
    label = "NorteAuto modelo 2332 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 55484,
    wear_curve = 0.2563,
    preferred_supplier_ids = { 133, 197 },
    gen_id = 332,
}
_VP["VP-000333"] = {
    label = "DeltaMob modelo 2333 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 55621,
    wear_curve = 0.7637,
    preferred_supplier_ids = { 134, 200 },
    gen_id = 333,
}
_VP["VP-000334"] = {
    label = "OrionTruck modelo 2334 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 55758,
    wear_curve = 0.2942,
    preferred_supplier_ids = { 135, 3 },
    gen_id = 334,
}
_VP["VP-000335"] = {
    label = "SigmaBike modelo 2335 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 55895,
    wear_curve = 0.7427,
    preferred_supplier_ids = { 136, 6 },
    gen_id = 335,
}
_VP["VP-000336"] = {
    label = "AstraMotors modelo 2336 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 56032,
    wear_curve = 0.8082,
    preferred_supplier_ids = { 137, 9 },
    gen_id = 336,
}
_VP["VP-000337"] = {
    label = "RioVeículos modelo 2337 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 56169,
    wear_curve = 0.8334,
    preferred_supplier_ids = { 138, 12 },
    gen_id = 337,
}
_VP["VP-000338"] = {
    label = "NorteAuto modelo 2338 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 56306,
    wear_curve = 0.6823,
    preferred_supplier_ids = { 139, 15 },
    gen_id = 338,
}
_VP["VP-000339"] = {
    label = "DeltaMob modelo 2339 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 56443,
    wear_curve = 0.3223,
    preferred_supplier_ids = { 140, 18 },
    gen_id = 339,
}
_VP["VP-000340"] = {
    label = "OrionTruck modelo 2340 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 56580,
    wear_curve = 0.6840,
    preferred_supplier_ids = { 141, 21 },
    gen_id = 340,
}
_VP["VP-000341"] = {
    label = "SigmaBike modelo 2341 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 56717,
    wear_curve = 0.8947,
    preferred_supplier_ids = { 142, 24 },
    gen_id = 341,
}
_VP["VP-000342"] = {
    label = "AstraMotors modelo 2342 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 56854,
    wear_curve = 0.4527,
    preferred_supplier_ids = { 143, 27 },
    gen_id = 342,
}
_VP["VP-000343"] = {
    label = "RioVeículos modelo 2343 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 56991,
    wear_curve = 0.9727,
    preferred_supplier_ids = { 144, 30 },
    gen_id = 343,
}
_VP["VP-000344"] = {
    label = "NorteAuto modelo 2344 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 57128,
    wear_curve = 0.3105,
    preferred_supplier_ids = { 145, 33 },
    gen_id = 344,
}
_VP["VP-000345"] = {
    label = "DeltaMob modelo 2345 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 57265,
    wear_curve = 0.4122,
    preferred_supplier_ids = { 146, 36 },
    gen_id = 345,
}
_VP["VP-000346"] = {
    label = "OrionTruck modelo 2346 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 57402,
    wear_curve = 0.5227,
    preferred_supplier_ids = { 147, 39 },
    gen_id = 346,
}
_VP["VP-000347"] = {
    label = "SigmaBike modelo 2347 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 57539,
    wear_curve = 0.6212,
    preferred_supplier_ids = { 148, 42 },
    gen_id = 347,
}
_VP["VP-000348"] = {
    label = "AstraMotors modelo 2348 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 57676,
    wear_curve = 0.5743,
    preferred_supplier_ids = { 149, 45 },
    gen_id = 348,
}
_VP["VP-000349"] = {
    label = "RioVeículos modelo 2349 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 57813,
    wear_curve = 0.8933,
    preferred_supplier_ids = { 150, 48 },
    gen_id = 349,
}
_VP["VP-000350"] = {
    label = "NorteAuto modelo 2350 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 57950,
    wear_curve = 0.1884,
    preferred_supplier_ids = { 151, 51 },
    gen_id = 350,
}
_VP["VP-000351"] = {
    label = "DeltaMob modelo 2351 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 58087,
    wear_curve = 0.8090,
    preferred_supplier_ids = { 152, 54 },
    gen_id = 351,
}
_VP["VP-000352"] = {
    label = "OrionTruck modelo 2352 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 58224,
    wear_curve = 0.5385,
    preferred_supplier_ids = { 153, 57 },
    gen_id = 352,
}
_VP["VP-000353"] = {
    label = "SigmaBike modelo 2353 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 58361,
    wear_curve = 0.1970,
    preferred_supplier_ids = { 154, 60 },
    gen_id = 353,
}
_VP["VP-000354"] = {
    label = "AstraMotors modelo 2354 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 58498,
    wear_curve = 0.3542,
    preferred_supplier_ids = { 155, 63 },
    gen_id = 354,
}
_VP["VP-000355"] = {
    label = "RioVeículos modelo 2355 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 58635,
    wear_curve = 0.1951,
    preferred_supplier_ids = { 156, 66 },
    gen_id = 355,
}
_VP["VP-000356"] = {
    label = "NorteAuto modelo 2356 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 58772,
    wear_curve = 0.1981,
    preferred_supplier_ids = { 157, 69 },
    gen_id = 356,
}
_VP["VP-000357"] = {
    label = "DeltaMob modelo 2357 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 58909,
    wear_curve = 0.9079,
    preferred_supplier_ids = { 158, 72 },
    gen_id = 357,
}
_VP["VP-000358"] = {
    label = "OrionTruck modelo 2358 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 59046,
    wear_curve = 0.4904,
    preferred_supplier_ids = { 159, 75 },
    gen_id = 358,
}
_VP["VP-000359"] = {
    label = "SigmaBike modelo 2359 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 59183,
    wear_curve = 0.4588,
    preferred_supplier_ids = { 160, 78 },
    gen_id = 359,
}
_VP["VP-000360"] = {
    label = "AstraMotors modelo 2360 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 59320,
    wear_curve = 0.7950,
    preferred_supplier_ids = { 161, 81 },
    gen_id = 360,
}
_VP["VP-000361"] = {
    label = "RioVeículos modelo 2361 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 59457,
    wear_curve = 0.1709,
    preferred_supplier_ids = { 162, 84 },
    gen_id = 361,
}
_VP["VP-000362"] = {
    label = "NorteAuto modelo 2362 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 59594,
    wear_curve = 0.6496,
    preferred_supplier_ids = { 163, 87 },
    gen_id = 362,
}
_VP["VP-000363"] = {
    label = "DeltaMob modelo 2363 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 59731,
    wear_curve = 0.1775,
    preferred_supplier_ids = { 164, 90 },
    gen_id = 363,
}
_VP["VP-000364"] = {
    label = "OrionTruck modelo 2364 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 59868,
    wear_curve = 0.5290,
    preferred_supplier_ids = { 165, 93 },
    gen_id = 364,
}
_VP["VP-000365"] = {
    label = "SigmaBike modelo 2365 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 60005,
    wear_curve = 0.8430,
    preferred_supplier_ids = { 166, 96 },
    gen_id = 365,
}
_VP["VP-000366"] = {
    label = "AstraMotors modelo 2366 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 60142,
    wear_curve = 0.5306,
    preferred_supplier_ids = { 167, 99 },
    gen_id = 366,
}
_VP["VP-000367"] = {
    label = "RioVeículos modelo 2367 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 60279,
    wear_curve = 0.9167,
    preferred_supplier_ids = { 168, 102 },
    gen_id = 367,
}
_VP["VP-000368"] = {
    label = "NorteAuto modelo 2368 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 60416,
    wear_curve = 0.7114,
    preferred_supplier_ids = { 169, 105 },
    gen_id = 368,
}
_VP["VP-000369"] = {
    label = "DeltaMob modelo 2369 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 60553,
    wear_curve = 0.7313,
    preferred_supplier_ids = { 170, 108 },
    gen_id = 369,
}
_VP["VP-000370"] = {
    label = "OrionTruck modelo 2370 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 60690,
    wear_curve = 0.5469,
    preferred_supplier_ids = { 171, 111 },
    gen_id = 370,
}
_VP["VP-000371"] = {
    label = "SigmaBike modelo 2371 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 60827,
    wear_curve = 0.6842,
    preferred_supplier_ids = { 172, 114 },
    gen_id = 371,
}
_VP["VP-000372"] = {
    label = "AstraMotors modelo 2372 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 60964,
    wear_curve = 0.2230,
    preferred_supplier_ids = { 173, 117 },
    gen_id = 372,
}
_VP["VP-000373"] = {
    label = "RioVeículos modelo 2373 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 61101,
    wear_curve = 0.2012,
    preferred_supplier_ids = { 174, 120 },
    gen_id = 373,
}
_VP["VP-000374"] = {
    label = "NorteAuto modelo 2374 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 61238,
    wear_curve = 0.7134,
    preferred_supplier_ids = { 175, 123 },
    gen_id = 374,
}
_VP["VP-000375"] = {
    label = "DeltaMob modelo 2375 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 61375,
    wear_curve = 0.2609,
    preferred_supplier_ids = { 176, 126 },
    gen_id = 375,
}
_VP["VP-000376"] = {
    label = "OrionTruck modelo 2376 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 61512,
    wear_curve = 0.5473,
    preferred_supplier_ids = { 177, 129 },
    gen_id = 376,
}
_VP["VP-000377"] = {
    label = "SigmaBike modelo 2377 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 61649,
    wear_curve = 0.6461,
    preferred_supplier_ids = { 178, 132 },
    gen_id = 377,
}
_VP["VP-000378"] = {
    label = "AstraMotors modelo 2378 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 61786,
    wear_curve = 0.1819,
    preferred_supplier_ids = { 179, 135 },
    gen_id = 378,
}
_VP["VP-000379"] = {
    label = "RioVeículos modelo 2379 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 61923,
    wear_curve = 0.5352,
    preferred_supplier_ids = { 180, 138 },
    gen_id = 379,
}
_VP["VP-000380"] = {
    label = "NorteAuto modelo 2380 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 62060,
    wear_curve = 0.5150,
    preferred_supplier_ids = { 181, 141 },
    gen_id = 380,
}
_VP["VP-000381"] = {
    label = "DeltaMob modelo 2381 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 62197,
    wear_curve = 0.5290,
    preferred_supplier_ids = { 182, 144 },
    gen_id = 381,
}
_VP["VP-000382"] = {
    label = "OrionTruck modelo 2382 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 62334,
    wear_curve = 0.4661,
    preferred_supplier_ids = { 183, 147 },
    gen_id = 382,
}
_VP["VP-000383"] = {
    label = "SigmaBike modelo 2383 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 62471,
    wear_curve = 0.6274,
    preferred_supplier_ids = { 184, 150 },
    gen_id = 383,
}
_VP["VP-000384"] = {
    label = "AstraMotors modelo 2384 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 62608,
    wear_curve = 0.9074,
    preferred_supplier_ids = { 185, 153 },
    gen_id = 384,
}
_VP["VP-000385"] = {
    label = "RioVeículos modelo 2385 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 62745,
    wear_curve = 0.1632,
    preferred_supplier_ids = { 186, 156 },
    gen_id = 385,
}
_VP["VP-000386"] = {
    label = "NorteAuto modelo 2386 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 62882,
    wear_curve = 0.3107,
    preferred_supplier_ids = { 187, 159 },
    gen_id = 386,
}
_VP["VP-000387"] = {
    label = "DeltaMob modelo 2387 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 63019,
    wear_curve = 0.8566,
    preferred_supplier_ids = { 188, 162 },
    gen_id = 387,
}
_VP["VP-000388"] = {
    label = "OrionTruck modelo 2388 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 63156,
    wear_curve = 0.1793,
    preferred_supplier_ids = { 189, 165 },
    gen_id = 388,
}
_VP["VP-000389"] = {
    label = "SigmaBike modelo 2389 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 63293,
    wear_curve = 0.2651,
    preferred_supplier_ids = { 190, 168 },
    gen_id = 389,
}
_VP["VP-000390"] = {
    label = "AstraMotors modelo 2390 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 63430,
    wear_curve = 0.9698,
    preferred_supplier_ids = { 191, 171 },
    gen_id = 390,
}
_VP["VP-000391"] = {
    label = "RioVeículos modelo 2391 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 63567,
    wear_curve = 0.3627,
    preferred_supplier_ids = { 192, 174 },
    gen_id = 391,
}
_VP["VP-000392"] = {
    label = "NorteAuto modelo 2392 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 63704,
    wear_curve = 0.1727,
    preferred_supplier_ids = { 193, 177 },
    gen_id = 392,
}
_VP["VP-000393"] = {
    label = "DeltaMob modelo 2393 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 63841,
    wear_curve = 0.7735,
    preferred_supplier_ids = { 194, 180 },
    gen_id = 393,
}
_VP["VP-000394"] = {
    label = "OrionTruck modelo 2394 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 63978,
    wear_curve = 0.9244,
    preferred_supplier_ids = { 195, 183 },
    gen_id = 394,
}
_VP["VP-000395"] = {
    label = "SigmaBike modelo 2395 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 64115,
    wear_curve = 0.6589,
    preferred_supplier_ids = { 196, 186 },
    gen_id = 395,
}
_VP["VP-000396"] = {
    label = "AstraMotors modelo 2396 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 64252,
    wear_curve = 0.9576,
    preferred_supplier_ids = { 197, 189 },
    gen_id = 396,
}
_VP["VP-000397"] = {
    label = "RioVeículos modelo 2397 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 64389,
    wear_curve = 0.6921,
    preferred_supplier_ids = { 198, 192 },
    gen_id = 397,
}
_VP["VP-000398"] = {
    label = "NorteAuto modelo 2398 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 64526,
    wear_curve = 0.9308,
    preferred_supplier_ids = { 199, 195 },
    gen_id = 398,
}
_VP["VP-000399"] = {
    label = "DeltaMob modelo 2399 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 64663,
    wear_curve = 0.2540,
    preferred_supplier_ids = { 200, 198 },
    gen_id = 399,
}
_VP["VP-000400"] = {
    label = "OrionTruck modelo 2400 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 64800,
    wear_curve = 0.6979,
    preferred_supplier_ids = { 1, 1 },
    gen_id = 400,
}
_VP["VP-000401"] = {
    label = "SigmaBike modelo 2401 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 64937,
    wear_curve = 0.7759,
    preferred_supplier_ids = { 2, 4 },
    gen_id = 401,
}
_VP["VP-000402"] = {
    label = "AstraMotors modelo 2402 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 65074,
    wear_curve = 0.5526,
    preferred_supplier_ids = { 3, 7 },
    gen_id = 402,
}
_VP["VP-000403"] = {
    label = "RioVeículos modelo 2403 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 65211,
    wear_curve = 0.5441,
    preferred_supplier_ids = { 4, 10 },
    gen_id = 403,
}
_VP["VP-000404"] = {
    label = "NorteAuto modelo 2404 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 65348,
    wear_curve = 0.5009,
    preferred_supplier_ids = { 5, 13 },
    gen_id = 404,
}
_VP["VP-000405"] = {
    label = "DeltaMob modelo 2405 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 65485,
    wear_curve = 0.8912,
    preferred_supplier_ids = { 6, 16 },
    gen_id = 405,
}
_VP["VP-000406"] = {
    label = "OrionTruck modelo 2406 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 65622,
    wear_curve = 0.6933,
    preferred_supplier_ids = { 7, 19 },
    gen_id = 406,
}
_VP["VP-000407"] = {
    label = "SigmaBike modelo 2407 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 65759,
    wear_curve = 0.8881,
    preferred_supplier_ids = { 8, 22 },
    gen_id = 407,
}
_VP["VP-000408"] = {
    label = "AstraMotors modelo 2408 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 65896,
    wear_curve = 0.8249,
    preferred_supplier_ids = { 9, 25 },
    gen_id = 408,
}
_VP["VP-000409"] = {
    label = "RioVeículos modelo 2409 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 66033,
    wear_curve = 0.2468,
    preferred_supplier_ids = { 10, 28 },
    gen_id = 409,
}
_VP["VP-000410"] = {
    label = "NorteAuto modelo 2410 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 66170,
    wear_curve = 0.5090,
    preferred_supplier_ids = { 11, 31 },
    gen_id = 410,
}
_VP["VP-000411"] = {
    label = "DeltaMob modelo 2411 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 66307,
    wear_curve = 0.9416,
    preferred_supplier_ids = { 12, 34 },
    gen_id = 411,
}
_VP["VP-000412"] = {
    label = "OrionTruck modelo 2412 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 66444,
    wear_curve = 0.8784,
    preferred_supplier_ids = { 13, 37 },
    gen_id = 412,
}
_VP["VP-000413"] = {
    label = "SigmaBike modelo 2413 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 66581,
    wear_curve = 0.4003,
    preferred_supplier_ids = { 14, 40 },
    gen_id = 413,
}
_VP["VP-000414"] = {
    label = "AstraMotors modelo 2414 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 66718,
    wear_curve = 0.2417,
    preferred_supplier_ids = { 15, 43 },
    gen_id = 414,
}
_VP["VP-000415"] = {
    label = "RioVeículos modelo 2415 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 66855,
    wear_curve = 0.4885,
    preferred_supplier_ids = { 16, 46 },
    gen_id = 415,
}
_VP["VP-000416"] = {
    label = "NorteAuto modelo 2416 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 66992,
    wear_curve = 0.7606,
    preferred_supplier_ids = { 17, 49 },
    gen_id = 416,
}
_VP["VP-000417"] = {
    label = "DeltaMob modelo 2417 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 67129,
    wear_curve = 0.9618,
    preferred_supplier_ids = { 18, 52 },
    gen_id = 417,
}
_VP["VP-000418"] = {
    label = "OrionTruck modelo 2418 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 67266,
    wear_curve = 0.4770,
    preferred_supplier_ids = { 19, 55 },
    gen_id = 418,
}
_VP["VP-000419"] = {
    label = "SigmaBike modelo 2419 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 67403,
    wear_curve = 0.8209,
    preferred_supplier_ids = { 20, 58 },
    gen_id = 419,
}
_VP["VP-000420"] = {
    label = "AstraMotors modelo 2420 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 67540,
    wear_curve = 0.3510,
    preferred_supplier_ids = { 21, 61 },
    gen_id = 420,
}
_VP["VP-000421"] = {
    label = "RioVeículos modelo 2421 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 67677,
    wear_curve = 0.2248,
    preferred_supplier_ids = { 22, 64 },
    gen_id = 421,
}
_VP["VP-000422"] = {
    label = "NorteAuto modelo 2422 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 67814,
    wear_curve = 0.4443,
    preferred_supplier_ids = { 23, 67 },
    gen_id = 422,
}
_VP["VP-000423"] = {
    label = "DeltaMob modelo 2423 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 67951,
    wear_curve = 0.8797,
    preferred_supplier_ids = { 24, 70 },
    gen_id = 423,
}
_VP["VP-000424"] = {
    label = "OrionTruck modelo 2424 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 68088,
    wear_curve = 0.2221,
    preferred_supplier_ids = { 25, 73 },
    gen_id = 424,
}
_VP["VP-000425"] = {
    label = "SigmaBike modelo 2425 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 68225,
    wear_curve = 0.4207,
    preferred_supplier_ids = { 26, 76 },
    gen_id = 425,
}
_VP["VP-000426"] = {
    label = "AstraMotors modelo 2426 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 68362,
    wear_curve = 0.7356,
    preferred_supplier_ids = { 27, 79 },
    gen_id = 426,
}
_VP["VP-000427"] = {
    label = "RioVeículos modelo 2427 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 68499,
    wear_curve = 0.2834,
    preferred_supplier_ids = { 28, 82 },
    gen_id = 427,
}
_VP["VP-000428"] = {
    label = "NorteAuto modelo 2428 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 68636,
    wear_curve = 0.7110,
    preferred_supplier_ids = { 29, 85 },
    gen_id = 428,
}
_VP["VP-000429"] = {
    label = "DeltaMob modelo 2429 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 68773,
    wear_curve = 0.5021,
    preferred_supplier_ids = { 30, 88 },
    gen_id = 429,
}
_VP["VP-000430"] = {
    label = "OrionTruck modelo 2430 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 68910,
    wear_curve = 0.7374,
    preferred_supplier_ids = { 31, 91 },
    gen_id = 430,
}
_VP["VP-000431"] = {
    label = "SigmaBike modelo 2431 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 69047,
    wear_curve = 0.3308,
    preferred_supplier_ids = { 32, 94 },
    gen_id = 431,
}
_VP["VP-000432"] = {
    label = "AstraMotors modelo 2432 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 69184,
    wear_curve = 0.5956,
    preferred_supplier_ids = { 33, 97 },
    gen_id = 432,
}
_VP["VP-000433"] = {
    label = "RioVeículos modelo 2433 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 69321,
    wear_curve = 0.3761,
    preferred_supplier_ids = { 34, 100 },
    gen_id = 433,
}
_VP["VP-000434"] = {
    label = "NorteAuto modelo 2434 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 69458,
    wear_curve = 0.8267,
    preferred_supplier_ids = { 35, 103 },
    gen_id = 434,
}
_VP["VP-000435"] = {
    label = "DeltaMob modelo 2435 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 69595,
    wear_curve = 0.2319,
    preferred_supplier_ids = { 36, 106 },
    gen_id = 435,
}
_VP["VP-000436"] = {
    label = "OrionTruck modelo 2436 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 69732,
    wear_curve = 0.4374,
    preferred_supplier_ids = { 37, 109 },
    gen_id = 436,
}
_VP["VP-000437"] = {
    label = "SigmaBike modelo 2437 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 69869,
    wear_curve = 0.7685,
    preferred_supplier_ids = { 38, 112 },
    gen_id = 437,
}
_VP["VP-000438"] = {
    label = "AstraMotors modelo 2438 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 70006,
    wear_curve = 0.9000,
    preferred_supplier_ids = { 39, 115 },
    gen_id = 438,
}
_VP["VP-000439"] = {
    label = "RioVeículos modelo 2439 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 70143,
    wear_curve = 0.4764,
    preferred_supplier_ids = { 40, 118 },
    gen_id = 439,
}
_VP["VP-000440"] = {
    label = "NorteAuto modelo 2440 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 70280,
    wear_curve = 0.5625,
    preferred_supplier_ids = { 41, 121 },
    gen_id = 440,
}
_VP["VP-000441"] = {
    label = "DeltaMob modelo 2441 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 70417,
    wear_curve = 0.9642,
    preferred_supplier_ids = { 42, 124 },
    gen_id = 441,
}
_VP["VP-000442"] = {
    label = "OrionTruck modelo 2442 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 70554,
    wear_curve = 0.6124,
    preferred_supplier_ids = { 43, 127 },
    gen_id = 442,
}
_VP["VP-000443"] = {
    label = "SigmaBike modelo 2443 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 70691,
    wear_curve = 0.8187,
    preferred_supplier_ids = { 44, 130 },
    gen_id = 443,
}
_VP["VP-000444"] = {
    label = "AstraMotors modelo 2444 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 70828,
    wear_curve = 0.8665,
    preferred_supplier_ids = { 45, 133 },
    gen_id = 444,
}
_VP["VP-000445"] = {
    label = "RioVeículos modelo 2445 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 70965,
    wear_curve = 0.2798,
    preferred_supplier_ids = { 46, 136 },
    gen_id = 445,
}
_VP["VP-000446"] = {
    label = "NorteAuto modelo 2446 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 71102,
    wear_curve = 0.9690,
    preferred_supplier_ids = { 47, 139 },
    gen_id = 446,
}
_VP["VP-000447"] = {
    label = "DeltaMob modelo 2447 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 71239,
    wear_curve = 0.9661,
    preferred_supplier_ids = { 48, 142 },
    gen_id = 447,
}
_VP["VP-000448"] = {
    label = "OrionTruck modelo 2448 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 71376,
    wear_curve = 0.4905,
    preferred_supplier_ids = { 49, 145 },
    gen_id = 448,
}
_VP["VP-000449"] = {
    label = "SigmaBike modelo 2449 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 71513,
    wear_curve = 0.8396,
    preferred_supplier_ids = { 50, 148 },
    gen_id = 449,
}
_VP["VP-000450"] = {
    label = "AstraMotors modelo 2450 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 71650,
    wear_curve = 0.3231,
    preferred_supplier_ids = { 51, 151 },
    gen_id = 450,
}
_VP["VP-000451"] = {
    label = "RioVeículos modelo 2451 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 71787,
    wear_curve = 0.3710,
    preferred_supplier_ids = { 52, 154 },
    gen_id = 451,
}
_VP["VP-000452"] = {
    label = "NorteAuto modelo 2452 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 71924,
    wear_curve = 0.7285,
    preferred_supplier_ids = { 53, 157 },
    gen_id = 452,
}
_VP["VP-000453"] = {
    label = "DeltaMob modelo 2453 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 72061,
    wear_curve = 0.9349,
    preferred_supplier_ids = { 54, 160 },
    gen_id = 453,
}
_VP["VP-000454"] = {
    label = "OrionTruck modelo 2454 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 72198,
    wear_curve = 0.9955,
    preferred_supplier_ids = { 55, 163 },
    gen_id = 454,
}
_VP["VP-000455"] = {
    label = "SigmaBike modelo 2455 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 72335,
    wear_curve = 0.5417,
    preferred_supplier_ids = { 56, 166 },
    gen_id = 455,
}
_VP["VP-000456"] = {
    label = "AstraMotors modelo 2456 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 72472,
    wear_curve = 0.2898,
    preferred_supplier_ids = { 57, 169 },
    gen_id = 456,
}
_VP["VP-000457"] = {
    label = "RioVeículos modelo 2457 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 72609,
    wear_curve = 0.7631,
    preferred_supplier_ids = { 58, 172 },
    gen_id = 457,
}
_VP["VP-000458"] = {
    label = "NorteAuto modelo 2458 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 72746,
    wear_curve = 0.4466,
    preferred_supplier_ids = { 59, 175 },
    gen_id = 458,
}
_VP["VP-000459"] = {
    label = "DeltaMob modelo 2459 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 72883,
    wear_curve = 0.7453,
    preferred_supplier_ids = { 60, 178 },
    gen_id = 459,
}
_VP["VP-000460"] = {
    label = "OrionTruck modelo 2460 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 73020,
    wear_curve = 0.2994,
    preferred_supplier_ids = { 61, 181 },
    gen_id = 460,
}
_VP["VP-000461"] = {
    label = "SigmaBike modelo 2461 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 73157,
    wear_curve = 0.9024,
    preferred_supplier_ids = { 62, 184 },
    gen_id = 461,
}
_VP["VP-000462"] = {
    label = "AstraMotors modelo 2462 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 73294,
    wear_curve = 0.6407,
    preferred_supplier_ids = { 63, 187 },
    gen_id = 462,
}
_VP["VP-000463"] = {
    label = "RioVeículos modelo 2463 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 73431,
    wear_curve = 0.2933,
    preferred_supplier_ids = { 64, 190 },
    gen_id = 463,
}
_VP["VP-000464"] = {
    label = "NorteAuto modelo 2464 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 73568,
    wear_curve = 0.9363,
    preferred_supplier_ids = { 65, 193 },
    gen_id = 464,
}
_VP["VP-000465"] = {
    label = "DeltaMob modelo 2465 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 73705,
    wear_curve = 0.4419,
    preferred_supplier_ids = { 66, 196 },
    gen_id = 465,
}
_VP["VP-000466"] = {
    label = "OrionTruck modelo 2466 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 73842,
    wear_curve = 0.6070,
    preferred_supplier_ids = { 67, 199 },
    gen_id = 466,
}
_VP["VP-000467"] = {
    label = "SigmaBike modelo 2467 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 73979,
    wear_curve = 0.4092,
    preferred_supplier_ids = { 68, 2 },
    gen_id = 467,
}
_VP["VP-000468"] = {
    label = "AstraMotors modelo 2468 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 74116,
    wear_curve = 0.7187,
    preferred_supplier_ids = { 69, 5 },
    gen_id = 468,
}
_VP["VP-000469"] = {
    label = "RioVeículos modelo 2469 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 74253,
    wear_curve = 0.2001,
    preferred_supplier_ids = { 70, 8 },
    gen_id = 469,
}
_VP["VP-000470"] = {
    label = "NorteAuto modelo 2470 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 74390,
    wear_curve = 0.3139,
    preferred_supplier_ids = { 71, 11 },
    gen_id = 470,
}
_VP["VP-000471"] = {
    label = "DeltaMob modelo 2471 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 74527,
    wear_curve = 0.5921,
    preferred_supplier_ids = { 72, 14 },
    gen_id = 471,
}
_VP["VP-000472"] = {
    label = "OrionTruck modelo 2472 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 74664,
    wear_curve = 0.3088,
    preferred_supplier_ids = { 73, 17 },
    gen_id = 472,
}
_VP["VP-000473"] = {
    label = "SigmaBike modelo 2473 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 74801,
    wear_curve = 0.5240,
    preferred_supplier_ids = { 74, 20 },
    gen_id = 473,
}
_VP["VP-000474"] = {
    label = "AstraMotors modelo 2474 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 74938,
    wear_curve = 0.8352,
    preferred_supplier_ids = { 75, 23 },
    gen_id = 474,
}
_VP["VP-000475"] = {
    label = "RioVeículos modelo 2475 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 75075,
    wear_curve = 0.7518,
    preferred_supplier_ids = { 76, 26 },
    gen_id = 475,
}
_VP["VP-000476"] = {
    label = "NorteAuto modelo 2476 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 75212,
    wear_curve = 0.1728,
    preferred_supplier_ids = { 77, 29 },
    gen_id = 476,
}
_VP["VP-000477"] = {
    label = "DeltaMob modelo 2477 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 75349,
    wear_curve = 0.3786,
    preferred_supplier_ids = { 78, 32 },
    gen_id = 477,
}
_VP["VP-000478"] = {
    label = "OrionTruck modelo 2478 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 75486,
    wear_curve = 0.4499,
    preferred_supplier_ids = { 79, 35 },
    gen_id = 478,
}
_VP["VP-000479"] = {
    label = "SigmaBike modelo 2479 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 75623,
    wear_curve = 0.2032,
    preferred_supplier_ids = { 80, 38 },
    gen_id = 479,
}
_VP["VP-000480"] = {
    label = "AstraMotors modelo 2480 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 75760,
    wear_curve = 0.3431,
    preferred_supplier_ids = { 81, 41 },
    gen_id = 480,
}
_VP["VP-000481"] = {
    label = "RioVeículos modelo 2481 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 75897,
    wear_curve = 0.3945,
    preferred_supplier_ids = { 82, 44 },
    gen_id = 481,
}
_VP["VP-000482"] = {
    label = "NorteAuto modelo 2482 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 76034,
    wear_curve = 0.9793,
    preferred_supplier_ids = { 83, 47 },
    gen_id = 482,
}
_VP["VP-000483"] = {
    label = "DeltaMob modelo 2483 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 76171,
    wear_curve = 0.9723,
    preferred_supplier_ids = { 84, 50 },
    gen_id = 483,
}
_VP["VP-000484"] = {
    label = "OrionTruck modelo 2484 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 76308,
    wear_curve = 0.5438,
    preferred_supplier_ids = { 85, 53 },
    gen_id = 484,
}
_VP["VP-000485"] = {
    label = "SigmaBike modelo 2485 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 76445,
    wear_curve = 0.8565,
    preferred_supplier_ids = { 86, 56 },
    gen_id = 485,
}
_VP["VP-000486"] = {
    label = "AstraMotors modelo 2486 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 76582,
    wear_curve = 0.6275,
    preferred_supplier_ids = { 87, 59 },
    gen_id = 486,
}
_VP["VP-000487"] = {
    label = "RioVeículos modelo 2487 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 76719,
    wear_curve = 0.9749,
    preferred_supplier_ids = { 88, 62 },
    gen_id = 487,
}
_VP["VP-000488"] = {
    label = "NorteAuto modelo 2488 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 76856,
    wear_curve = 0.8511,
    preferred_supplier_ids = { 89, 65 },
    gen_id = 488,
}
_VP["VP-000489"] = {
    label = "DeltaMob modelo 2489 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 76993,
    wear_curve = 0.2766,
    preferred_supplier_ids = { 90, 68 },
    gen_id = 489,
}
_VP["VP-000490"] = {
    label = "OrionTruck modelo 2490 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 77130,
    wear_curve = 0.8056,
    preferred_supplier_ids = { 91, 71 },
    gen_id = 490,
}
_VP["VP-000491"] = {
    label = "SigmaBike modelo 2491 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 77267,
    wear_curve = 0.2460,
    preferred_supplier_ids = { 92, 74 },
    gen_id = 491,
}
_VP["VP-000492"] = {
    label = "AstraMotors modelo 2492 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 77404,
    wear_curve = 0.7244,
    preferred_supplier_ids = { 93, 77 },
    gen_id = 492,
}
_VP["VP-000493"] = {
    label = "RioVeículos modelo 2493 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 77541,
    wear_curve = 0.4103,
    preferred_supplier_ids = { 94, 80 },
    gen_id = 493,
}
_VP["VP-000494"] = {
    label = "NorteAuto modelo 2494 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 77678,
    wear_curve = 0.2287,
    preferred_supplier_ids = { 95, 83 },
    gen_id = 494,
}
_VP["VP-000495"] = {
    label = "DeltaMob modelo 2495 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 77815,
    wear_curve = 0.2568,
    preferred_supplier_ids = { 96, 86 },
    gen_id = 495,
}
_VP["VP-000496"] = {
    label = "OrionTruck modelo 2496 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 77952,
    wear_curve = 0.4056,
    preferred_supplier_ids = { 97, 89 },
    gen_id = 496,
}
_VP["VP-000497"] = {
    label = "SigmaBike modelo 2497 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 78089,
    wear_curve = 0.8340,
    preferred_supplier_ids = { 98, 92 },
    gen_id = 497,
}
_VP["VP-000498"] = {
    label = "AstraMotors modelo 2498 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 78226,
    wear_curve = 0.7913,
    preferred_supplier_ids = { 99, 95 },
    gen_id = 498,
}
_VP["VP-000499"] = {
    label = "RioVeículos modelo 2499 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 78363,
    wear_curve = 0.3696,
    preferred_supplier_ids = { 100, 98 },
    gen_id = 499,
}
_VP["VP-000500"] = {
    label = "NorteAuto modelo 2500 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 78500,
    wear_curve = 0.3973,
    preferred_supplier_ids = { 101, 101 },
    gen_id = 500,
}
_VP["VP-000501"] = {
    label = "DeltaMob modelo 2501 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 78637,
    wear_curve = 0.4162,
    preferred_supplier_ids = { 102, 104 },
    gen_id = 501,
}
_VP["VP-000502"] = {
    label = "OrionTruck modelo 2502 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 78774,
    wear_curve = 0.6380,
    preferred_supplier_ids = { 103, 107 },
    gen_id = 502,
}
_VP["VP-000503"] = {
    label = "SigmaBike modelo 2503 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 78911,
    wear_curve = 0.7963,
    preferred_supplier_ids = { 104, 110 },
    gen_id = 503,
}
_VP["VP-000504"] = {
    label = "AstraMotors modelo 2504 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 79048,
    wear_curve = 0.8909,
    preferred_supplier_ids = { 105, 113 },
    gen_id = 504,
}
_VP["VP-000505"] = {
    label = "RioVeículos modelo 2505 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 79185,
    wear_curve = 0.2776,
    preferred_supplier_ids = { 106, 116 },
    gen_id = 505,
}
_VP["VP-000506"] = {
    label = "NorteAuto modelo 2506 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 79322,
    wear_curve = 0.2061,
    preferred_supplier_ids = { 107, 119 },
    gen_id = 506,
}
_VP["VP-000507"] = {
    label = "DeltaMob modelo 2507 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 79459,
    wear_curve = 0.3832,
    preferred_supplier_ids = { 108, 122 },
    gen_id = 507,
}
_VP["VP-000508"] = {
    label = "OrionTruck modelo 2508 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 79596,
    wear_curve = 0.6819,
    preferred_supplier_ids = { 109, 125 },
    gen_id = 508,
}
_VP["VP-000509"] = {
    label = "SigmaBike modelo 2509 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 79733,
    wear_curve = 0.4957,
    preferred_supplier_ids = { 110, 128 },
    gen_id = 509,
}
_VP["VP-000510"] = {
    label = "AstraMotors modelo 2510 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 79870,
    wear_curve = 0.4836,
    preferred_supplier_ids = { 111, 131 },
    gen_id = 510,
}
_VP["VP-000511"] = {
    label = "RioVeículos modelo 2511 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 80007,
    wear_curve = 0.7128,
    preferred_supplier_ids = { 112, 134 },
    gen_id = 511,
}
_VP["VP-000512"] = {
    label = "NorteAuto modelo 2512 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 80144,
    wear_curve = 0.4187,
    preferred_supplier_ids = { 113, 137 },
    gen_id = 512,
}
_VP["VP-000513"] = {
    label = "DeltaMob modelo 2513 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 80281,
    wear_curve = 0.8751,
    preferred_supplier_ids = { 114, 140 },
    gen_id = 513,
}
_VP["VP-000514"] = {
    label = "OrionTruck modelo 2514 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 80418,
    wear_curve = 0.9859,
    preferred_supplier_ids = { 115, 143 },
    gen_id = 514,
}
_VP["VP-000515"] = {
    label = "SigmaBike modelo 2515 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 80555,
    wear_curve = 0.1718,
    preferred_supplier_ids = { 116, 146 },
    gen_id = 515,
}
_VP["VP-000516"] = {
    label = "AstraMotors modelo 2516 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 80692,
    wear_curve = 0.7952,
    preferred_supplier_ids = { 117, 149 },
    gen_id = 516,
}
_VP["VP-000517"] = {
    label = "RioVeículos modelo 2517 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 80829,
    wear_curve = 0.1640,
    preferred_supplier_ids = { 118, 152 },
    gen_id = 517,
}
_VP["VP-000518"] = {
    label = "NorteAuto modelo 2518 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 80966,
    wear_curve = 0.9173,
    preferred_supplier_ids = { 119, 155 },
    gen_id = 518,
}
_VP["VP-000519"] = {
    label = "DeltaMob modelo 2519 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 81103,
    wear_curve = 0.9499,
    preferred_supplier_ids = { 120, 158 },
    gen_id = 519,
}
_VP["VP-000520"] = {
    label = "OrionTruck modelo 2520 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 81240,
    wear_curve = 0.9602,
    preferred_supplier_ids = { 121, 161 },
    gen_id = 520,
}
_VP["VP-000521"] = {
    label = "SigmaBike modelo 2521 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 81377,
    wear_curve = 0.2132,
    preferred_supplier_ids = { 122, 164 },
    gen_id = 521,
}
_VP["VP-000522"] = {
    label = "AstraMotors modelo 2522 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 81514,
    wear_curve = 0.3964,
    preferred_supplier_ids = { 123, 167 },
    gen_id = 522,
}
_VP["VP-000523"] = {
    label = "RioVeículos modelo 2523 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 81651,
    wear_curve = 0.2939,
    preferred_supplier_ids = { 124, 170 },
    gen_id = 523,
}
_VP["VP-000524"] = {
    label = "NorteAuto modelo 2524 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 81788,
    wear_curve = 0.9289,
    preferred_supplier_ids = { 125, 173 },
    gen_id = 524,
}
_VP["VP-000525"] = {
    label = "DeltaMob modelo 2525 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 81925,
    wear_curve = 0.5320,
    preferred_supplier_ids = { 126, 176 },
    gen_id = 525,
}
_VP["VP-000526"] = {
    label = "OrionTruck modelo 2526 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 82062,
    wear_curve = 0.5369,
    preferred_supplier_ids = { 127, 179 },
    gen_id = 526,
}
_VP["VP-000527"] = {
    label = "SigmaBike modelo 2527 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 82199,
    wear_curve = 0.4564,
    preferred_supplier_ids = { 128, 182 },
    gen_id = 527,
}
_VP["VP-000528"] = {
    label = "AstraMotors modelo 2528 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 82336,
    wear_curve = 0.9432,
    preferred_supplier_ids = { 129, 185 },
    gen_id = 528,
}
_VP["VP-000529"] = {
    label = "RioVeículos modelo 2529 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 82473,
    wear_curve = 0.3637,
    preferred_supplier_ids = { 130, 188 },
    gen_id = 529,
}
_VP["VP-000530"] = {
    label = "NorteAuto modelo 2530 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 82610,
    wear_curve = 0.5376,
    preferred_supplier_ids = { 131, 191 },
    gen_id = 530,
}
_VP["VP-000531"] = {
    label = "DeltaMob modelo 2531 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 82747,
    wear_curve = 0.5890,
    preferred_supplier_ids = { 132, 194 },
    gen_id = 531,
}
_VP["VP-000532"] = {
    label = "OrionTruck modelo 2532 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 82884,
    wear_curve = 0.2922,
    preferred_supplier_ids = { 133, 197 },
    gen_id = 532,
}
_VP["VP-000533"] = {
    label = "SigmaBike modelo 2533 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 83021,
    wear_curve = 0.9605,
    preferred_supplier_ids = { 134, 200 },
    gen_id = 533,
}
_VP["VP-000534"] = {
    label = "AstraMotors modelo 2534 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 83158,
    wear_curve = 0.3481,
    preferred_supplier_ids = { 135, 3 },
    gen_id = 534,
}
_VP["VP-000535"] = {
    label = "RioVeículos modelo 2535 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 83295,
    wear_curve = 0.3445,
    preferred_supplier_ids = { 136, 6 },
    gen_id = 535,
}
_VP["VP-000536"] = {
    label = "NorteAuto modelo 2536 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 83432,
    wear_curve = 0.8650,
    preferred_supplier_ids = { 137, 9 },
    gen_id = 536,
}
_VP["VP-000537"] = {
    label = "DeltaMob modelo 2537 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 83569,
    wear_curve = 0.9524,
    preferred_supplier_ids = { 138, 12 },
    gen_id = 537,
}
_VP["VP-000538"] = {
    label = "OrionTruck modelo 2538 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 83706,
    wear_curve = 0.6887,
    preferred_supplier_ids = { 139, 15 },
    gen_id = 538,
}
_VP["VP-000539"] = {
    label = "SigmaBike modelo 2539 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 83843,
    wear_curve = 0.9624,
    preferred_supplier_ids = { 140, 18 },
    gen_id = 539,
}
_VP["VP-000540"] = {
    label = "AstraMotors modelo 2540 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 83980,
    wear_curve = 0.5201,
    preferred_supplier_ids = { 141, 21 },
    gen_id = 540,
}
_VP["VP-000541"] = {
    label = "RioVeículos modelo 2541 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 84117,
    wear_curve = 0.8688,
    preferred_supplier_ids = { 142, 24 },
    gen_id = 541,
}
_VP["VP-000542"] = {
    label = "NorteAuto modelo 2542 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 84254,
    wear_curve = 0.9170,
    preferred_supplier_ids = { 143, 27 },
    gen_id = 542,
}
_VP["VP-000543"] = {
    label = "DeltaMob modelo 2543 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 84391,
    wear_curve = 0.8770,
    preferred_supplier_ids = { 144, 30 },
    gen_id = 543,
}
_VP["VP-000544"] = {
    label = "OrionTruck modelo 2544 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 84528,
    wear_curve = 0.6713,
    preferred_supplier_ids = { 145, 33 },
    gen_id = 544,
}
_VP["VP-000545"] = {
    label = "SigmaBike modelo 2545 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 84665,
    wear_curve = 0.7805,
    preferred_supplier_ids = { 146, 36 },
    gen_id = 545,
}
_VP["VP-000546"] = {
    label = "AstraMotors modelo 2546 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 84802,
    wear_curve = 0.5436,
    preferred_supplier_ids = { 147, 39 },
    gen_id = 546,
}
_VP["VP-000547"] = {
    label = "RioVeículos modelo 2547 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 84939,
    wear_curve = 0.9489,
    preferred_supplier_ids = { 148, 42 },
    gen_id = 547,
}
_VP["VP-000548"] = {
    label = "NorteAuto modelo 2548 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 85076,
    wear_curve = 0.8472,
    preferred_supplier_ids = { 149, 45 },
    gen_id = 548,
}
_VP["VP-000549"] = {
    label = "DeltaMob modelo 2549 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 85213,
    wear_curve = 0.7452,
    preferred_supplier_ids = { 150, 48 },
    gen_id = 549,
}
_VP["VP-000550"] = {
    label = "OrionTruck modelo 2550 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 85350,
    wear_curve = 0.2143,
    preferred_supplier_ids = { 151, 51 },
    gen_id = 550,
}
_VP["VP-000551"] = {
    label = "SigmaBike modelo 2551 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 85487,
    wear_curve = 0.6322,
    preferred_supplier_ids = { 152, 54 },
    gen_id = 551,
}
_VP["VP-000552"] = {
    label = "AstraMotors modelo 2552 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 85624,
    wear_curve = 0.8002,
    preferred_supplier_ids = { 153, 57 },
    gen_id = 552,
}
_VP["VP-000553"] = {
    label = "RioVeículos modelo 2553 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 85761,
    wear_curve = 0.3504,
    preferred_supplier_ids = { 154, 60 },
    gen_id = 553,
}
_VP["VP-000554"] = {
    label = "NorteAuto modelo 2554 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 85898,
    wear_curve = 0.7377,
    preferred_supplier_ids = { 155, 63 },
    gen_id = 554,
}
_VP["VP-000555"] = {
    label = "DeltaMob modelo 2555 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 86035,
    wear_curve = 0.6044,
    preferred_supplier_ids = { 156, 66 },
    gen_id = 555,
}
_VP["VP-000556"] = {
    label = "OrionTruck modelo 2556 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 86172,
    wear_curve = 0.3474,
    preferred_supplier_ids = { 157, 69 },
    gen_id = 556,
}
_VP["VP-000557"] = {
    label = "SigmaBike modelo 2557 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 86309,
    wear_curve = 0.6614,
    preferred_supplier_ids = { 158, 72 },
    gen_id = 557,
}
_VP["VP-000558"] = {
    label = "AstraMotors modelo 2558 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 86446,
    wear_curve = 0.6488,
    preferred_supplier_ids = { 159, 75 },
    gen_id = 558,
}
_VP["VP-000559"] = {
    label = "RioVeículos modelo 2559 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 86583,
    wear_curve = 0.3966,
    preferred_supplier_ids = { 160, 78 },
    gen_id = 559,
}
_VP["VP-000560"] = {
    label = "NorteAuto modelo 2560 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 86720,
    wear_curve = 0.9424,
    preferred_supplier_ids = { 161, 81 },
    gen_id = 560,
}
_VP["VP-000561"] = {
    label = "DeltaMob modelo 2561 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 86857,
    wear_curve = 0.1933,
    preferred_supplier_ids = { 162, 84 },
    gen_id = 561,
}
_VP["VP-000562"] = {
    label = "OrionTruck modelo 2562 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 86994,
    wear_curve = 0.6641,
    preferred_supplier_ids = { 163, 87 },
    gen_id = 562,
}
_VP["VP-000563"] = {
    label = "SigmaBike modelo 2563 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 87131,
    wear_curve = 0.1750,
    preferred_supplier_ids = { 164, 90 },
    gen_id = 563,
}
_VP["VP-000564"] = {
    label = "AstraMotors modelo 2564 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 87268,
    wear_curve = 0.4388,
    preferred_supplier_ids = { 165, 93 },
    gen_id = 564,
}
_VP["VP-000565"] = {
    label = "RioVeículos modelo 2565 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 87405,
    wear_curve = 0.5397,
    preferred_supplier_ids = { 166, 96 },
    gen_id = 565,
}
_VP["VP-000566"] = {
    label = "NorteAuto modelo 2566 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 87542,
    wear_curve = 0.6423,
    preferred_supplier_ids = { 167, 99 },
    gen_id = 566,
}
_VP["VP-000567"] = {
    label = "DeltaMob modelo 2567 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 87679,
    wear_curve = 0.7367,
    preferred_supplier_ids = { 168, 102 },
    gen_id = 567,
}
_VP["VP-000568"] = {
    label = "OrionTruck modelo 2568 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 87816,
    wear_curve = 0.7661,
    preferred_supplier_ids = { 169, 105 },
    gen_id = 568,
}
_VP["VP-000569"] = {
    label = "SigmaBike modelo 2569 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 87953,
    wear_curve = 0.9513,
    preferred_supplier_ids = { 170, 108 },
    gen_id = 569,
}
_VP["VP-000570"] = {
    label = "AstraMotors modelo 2570 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 88090,
    wear_curve = 0.3817,
    preferred_supplier_ids = { 171, 111 },
    gen_id = 570,
}
_VP["VP-000571"] = {
    label = "RioVeículos modelo 2571 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 88227,
    wear_curve = 0.2456,
    preferred_supplier_ids = { 172, 114 },
    gen_id = 571,
}
_VP["VP-000572"] = {
    label = "NorteAuto modelo 2572 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 88364,
    wear_curve = 0.8550,
    preferred_supplier_ids = { 173, 117 },
    gen_id = 572,
}
_VP["VP-000573"] = {
    label = "DeltaMob modelo 2573 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 88501,
    wear_curve = 0.4736,
    preferred_supplier_ids = { 174, 120 },
    gen_id = 573,
}
_VP["VP-000574"] = {
    label = "OrionTruck modelo 2574 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 88638,
    wear_curve = 0.4948,
    preferred_supplier_ids = { 175, 123 },
    gen_id = 574,
}
_VP["VP-000575"] = {
    label = "SigmaBike modelo 2575 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 88775,
    wear_curve = 0.8977,
    preferred_supplier_ids = { 176, 126 },
    gen_id = 575,
}
_VP["VP-000576"] = {
    label = "AstraMotors modelo 2576 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 88912,
    wear_curve = 0.9087,
    preferred_supplier_ids = { 177, 129 },
    gen_id = 576,
}
_VP["VP-000577"] = {
    label = "RioVeículos modelo 2577 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 89049,
    wear_curve = 0.9610,
    preferred_supplier_ids = { 178, 132 },
    gen_id = 577,
}
_VP["VP-000578"] = {
    label = "NorteAuto modelo 2578 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 89186,
    wear_curve = 0.6631,
    preferred_supplier_ids = { 179, 135 },
    gen_id = 578,
}
_VP["VP-000579"] = {
    label = "DeltaMob modelo 2579 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 89323,
    wear_curve = 0.6648,
    preferred_supplier_ids = { 180, 138 },
    gen_id = 579,
}
_VP["VP-000580"] = {
    label = "OrionTruck modelo 2580 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 89460,
    wear_curve = 0.9811,
    preferred_supplier_ids = { 181, 141 },
    gen_id = 580,
}
_VP["VP-000581"] = {
    label = "SigmaBike modelo 2581 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 89597,
    wear_curve = 0.2509,
    preferred_supplier_ids = { 182, 144 },
    gen_id = 581,
}
_VP["VP-000582"] = {
    label = "AstraMotors modelo 2582 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 89734,
    wear_curve = 0.4407,
    preferred_supplier_ids = { 183, 147 },
    gen_id = 582,
}
_VP["VP-000583"] = {
    label = "RioVeículos modelo 2583 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 89871,
    wear_curve = 0.7314,
    preferred_supplier_ids = { 184, 150 },
    gen_id = 583,
}
_VP["VP-000584"] = {
    label = "NorteAuto modelo 2584 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 90008,
    wear_curve = 0.8333,
    preferred_supplier_ids = { 185, 153 },
    gen_id = 584,
}
_VP["VP-000585"] = {
    label = "DeltaMob modelo 2585 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 90145,
    wear_curve = 0.6916,
    preferred_supplier_ids = { 186, 156 },
    gen_id = 585,
}
_VP["VP-000586"] = {
    label = "OrionTruck modelo 2586 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 90282,
    wear_curve = 0.3332,
    preferred_supplier_ids = { 187, 159 },
    gen_id = 586,
}
_VP["VP-000587"] = {
    label = "SigmaBike modelo 2587 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 90419,
    wear_curve = 0.7997,
    preferred_supplier_ids = { 188, 162 },
    gen_id = 587,
}
_VP["VP-000588"] = {
    label = "AstraMotors modelo 2588 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 90556,
    wear_curve = 0.6057,
    preferred_supplier_ids = { 189, 165 },
    gen_id = 588,
}
_VP["VP-000589"] = {
    label = "RioVeículos modelo 2589 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 90693,
    wear_curve = 0.6310,
    preferred_supplier_ids = { 190, 168 },
    gen_id = 589,
}
_VP["VP-000590"] = {
    label = "NorteAuto modelo 2590 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 90830,
    wear_curve = 0.2452,
    preferred_supplier_ids = { 191, 171 },
    gen_id = 590,
}
_VP["VP-000591"] = {
    label = "DeltaMob modelo 2591 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 90967,
    wear_curve = 0.5516,
    preferred_supplier_ids = { 192, 174 },
    gen_id = 591,
}
_VP["VP-000592"] = {
    label = "OrionTruck modelo 2592 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 91104,
    wear_curve = 0.3508,
    preferred_supplier_ids = { 193, 177 },
    gen_id = 592,
}
_VP["VP-000593"] = {
    label = "SigmaBike modelo 2593 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 91241,
    wear_curve = 0.4358,
    preferred_supplier_ids = { 194, 180 },
    gen_id = 593,
}
_VP["VP-000594"] = {
    label = "AstraMotors modelo 2594 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 91378,
    wear_curve = 0.2490,
    preferred_supplier_ids = { 195, 183 },
    gen_id = 594,
}
_VP["VP-000595"] = {
    label = "RioVeículos modelo 2595 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 91515,
    wear_curve = 0.2676,
    preferred_supplier_ids = { 196, 186 },
    gen_id = 595,
}
_VP["VP-000596"] = {
    label = "NorteAuto modelo 2596 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 91652,
    wear_curve = 0.9389,
    preferred_supplier_ids = { 197, 189 },
    gen_id = 596,
}
_VP["VP-000597"] = {
    label = "DeltaMob modelo 2597 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 91789,
    wear_curve = 0.4240,
    preferred_supplier_ids = { 198, 192 },
    gen_id = 597,
}
_VP["VP-000598"] = {
    label = "OrionTruck modelo 2598 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 91926,
    wear_curve = 0.3417,
    preferred_supplier_ids = { 199, 195 },
    gen_id = 598,
}
_VP["VP-000599"] = {
    label = "SigmaBike modelo 2599 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 92063,
    wear_curve = 0.6175,
    preferred_supplier_ids = { 200, 198 },
    gen_id = 599,
}
_VP["VP-000600"] = {
    label = "AstraMotors modelo 2600 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 92200,
    wear_curve = 0.5584,
    preferred_supplier_ids = { 1, 1 },
    gen_id = 600,
}
_VP["VP-000601"] = {
    label = "RioVeículos modelo 2601 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 92337,
    wear_curve = 0.6032,
    preferred_supplier_ids = { 2, 4 },
    gen_id = 601,
}
_VP["VP-000602"] = {
    label = "NorteAuto modelo 2602 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 92474,
    wear_curve = 0.3193,
    preferred_supplier_ids = { 3, 7 },
    gen_id = 602,
}
_VP["VP-000603"] = {
    label = "DeltaMob modelo 2603 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 92611,
    wear_curve = 0.9964,
    preferred_supplier_ids = { 4, 10 },
    gen_id = 603,
}
_VP["VP-000604"] = {
    label = "OrionTruck modelo 2604 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 92748,
    wear_curve = 0.7957,
    preferred_supplier_ids = { 5, 13 },
    gen_id = 604,
}
_VP["VP-000605"] = {
    label = "SigmaBike modelo 2605 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 92885,
    wear_curve = 0.4241,
    preferred_supplier_ids = { 6, 16 },
    gen_id = 605,
}
_VP["VP-000606"] = {
    label = "AstraMotors modelo 2606 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 93022,
    wear_curve = 0.2592,
    preferred_supplier_ids = { 7, 19 },
    gen_id = 606,
}
_VP["VP-000607"] = {
    label = "RioVeículos modelo 2607 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 93159,
    wear_curve = 0.2462,
    preferred_supplier_ids = { 8, 22 },
    gen_id = 607,
}
_VP["VP-000608"] = {
    label = "NorteAuto modelo 2608 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 93296,
    wear_curve = 0.7930,
    preferred_supplier_ids = { 9, 25 },
    gen_id = 608,
}
_VP["VP-000609"] = {
    label = "DeltaMob modelo 2609 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 93433,
    wear_curve = 0.3674,
    preferred_supplier_ids = { 10, 28 },
    gen_id = 609,
}
_VP["VP-000610"] = {
    label = "OrionTruck modelo 2610 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 93570,
    wear_curve = 0.6153,
    preferred_supplier_ids = { 11, 31 },
    gen_id = 610,
}
_VP["VP-000611"] = {
    label = "SigmaBike modelo 2611 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 93707,
    wear_curve = 0.4129,
    preferred_supplier_ids = { 12, 34 },
    gen_id = 611,
}
_VP["VP-000612"] = {
    label = "AstraMotors modelo 2612 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 93844,
    wear_curve = 0.6942,
    preferred_supplier_ids = { 13, 37 },
    gen_id = 612,
}
_VP["VP-000613"] = {
    label = "RioVeículos modelo 2613 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 93981,
    wear_curve = 0.5955,
    preferred_supplier_ids = { 14, 40 },
    gen_id = 613,
}
_VP["VP-000614"] = {
    label = "NorteAuto modelo 2614 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 94118,
    wear_curve = 0.2912,
    preferred_supplier_ids = { 15, 43 },
    gen_id = 614,
}
_VP["VP-000615"] = {
    label = "DeltaMob modelo 2615 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 94255,
    wear_curve = 0.8021,
    preferred_supplier_ids = { 16, 46 },
    gen_id = 615,
}
_VP["VP-000616"] = {
    label = "OrionTruck modelo 2616 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 94392,
    wear_curve = 0.9502,
    preferred_supplier_ids = { 17, 49 },
    gen_id = 616,
}
_VP["VP-000617"] = {
    label = "SigmaBike modelo 2617 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 94529,
    wear_curve = 0.6162,
    preferred_supplier_ids = { 18, 52 },
    gen_id = 617,
}
_VP["VP-000618"] = {
    label = "AstraMotors modelo 2618 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 94666,
    wear_curve = 0.6222,
    preferred_supplier_ids = { 19, 55 },
    gen_id = 618,
}
_VP["VP-000619"] = {
    label = "RioVeículos modelo 2619 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 94803,
    wear_curve = 0.4095,
    preferred_supplier_ids = { 20, 58 },
    gen_id = 619,
}
_VP["VP-000620"] = {
    label = "NorteAuto modelo 2620 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 94940,
    wear_curve = 0.4209,
    preferred_supplier_ids = { 21, 61 },
    gen_id = 620,
}
_VP["VP-000621"] = {
    label = "DeltaMob modelo 2621 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 95077,
    wear_curve = 0.7115,
    preferred_supplier_ids = { 22, 64 },
    gen_id = 621,
}
_VP["VP-000622"] = {
    label = "OrionTruck modelo 2622 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 95214,
    wear_curve = 0.4548,
    preferred_supplier_ids = { 23, 67 },
    gen_id = 622,
}
_VP["VP-000623"] = {
    label = "SigmaBike modelo 2623 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 95351,
    wear_curve = 0.6648,
    preferred_supplier_ids = { 24, 70 },
    gen_id = 623,
}
_VP["VP-000624"] = {
    label = "AstraMotors modelo 2624 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 95488,
    wear_curve = 0.6695,
    preferred_supplier_ids = { 25, 73 },
    gen_id = 624,
}
_VP["VP-000625"] = {
    label = "RioVeículos modelo 2625 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 95625,
    wear_curve = 0.1550,
    preferred_supplier_ids = { 26, 76 },
    gen_id = 625,
}
_VP["VP-000626"] = {
    label = "NorteAuto modelo 2626 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 95762,
    wear_curve = 0.8808,
    preferred_supplier_ids = { 27, 79 },
    gen_id = 626,
}
_VP["VP-000627"] = {
    label = "DeltaMob modelo 2627 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 95899,
    wear_curve = 0.6385,
    preferred_supplier_ids = { 28, 82 },
    gen_id = 627,
}
_VP["VP-000628"] = {
    label = "OrionTruck modelo 2628 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 96036,
    wear_curve = 0.2607,
    preferred_supplier_ids = { 29, 85 },
    gen_id = 628,
}
_VP["VP-000629"] = {
    label = "SigmaBike modelo 2629 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 96173,
    wear_curve = 0.1968,
    preferred_supplier_ids = { 30, 88 },
    gen_id = 629,
}
_VP["VP-000630"] = {
    label = "AstraMotors modelo 2630 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 96310,
    wear_curve = 0.9899,
    preferred_supplier_ids = { 31, 91 },
    gen_id = 630,
}
_VP["VP-000631"] = {
    label = "RioVeículos modelo 2631 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 96447,
    wear_curve = 0.8761,
    preferred_supplier_ids = { 32, 94 },
    gen_id = 631,
}
_VP["VP-000632"] = {
    label = "NorteAuto modelo 2632 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 96584,
    wear_curve = 0.4847,
    preferred_supplier_ids = { 33, 97 },
    gen_id = 632,
}
_VP["VP-000633"] = {
    label = "DeltaMob modelo 2633 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 96721,
    wear_curve = 0.4626,
    preferred_supplier_ids = { 34, 100 },
    gen_id = 633,
}
_VP["VP-000634"] = {
    label = "OrionTruck modelo 2634 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 96858,
    wear_curve = 0.2203,
    preferred_supplier_ids = { 35, 103 },
    gen_id = 634,
}
_VP["VP-000635"] = {
    label = "SigmaBike modelo 2635 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 96995,
    wear_curve = 0.7852,
    preferred_supplier_ids = { 36, 106 },
    gen_id = 635,
}
_VP["VP-000636"] = {
    label = "AstraMotors modelo 2636 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 97132,
    wear_curve = 0.7924,
    preferred_supplier_ids = { 37, 109 },
    gen_id = 636,
}
_VP["VP-000637"] = {
    label = "RioVeículos modelo 2637 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 97269,
    wear_curve = 0.5728,
    preferred_supplier_ids = { 38, 112 },
    gen_id = 637,
}
_VP["VP-000638"] = {
    label = "NorteAuto modelo 2638 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 97406,
    wear_curve = 0.1501,
    preferred_supplier_ids = { 39, 115 },
    gen_id = 638,
}
_VP["VP-000639"] = {
    label = "DeltaMob modelo 2639 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 97543,
    wear_curve = 0.2135,
    preferred_supplier_ids = { 40, 118 },
    gen_id = 639,
}
_VP["VP-000640"] = {
    label = "OrionTruck modelo 2640 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 97680,
    wear_curve = 0.6898,
    preferred_supplier_ids = { 41, 121 },
    gen_id = 640,
}
_VP["VP-000641"] = {
    label = "SigmaBike modelo 2641 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 97817,
    wear_curve = 0.3013,
    preferred_supplier_ids = { 42, 124 },
    gen_id = 641,
}
_VP["VP-000642"] = {
    label = "AstraMotors modelo 2642 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 97954,
    wear_curve = 0.4811,
    preferred_supplier_ids = { 43, 127 },
    gen_id = 642,
}
_VP["VP-000643"] = {
    label = "RioVeículos modelo 2643 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 98091,
    wear_curve = 0.7685,
    preferred_supplier_ids = { 44, 130 },
    gen_id = 643,
}
_VP["VP-000644"] = {
    label = "NorteAuto modelo 2644 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 98228,
    wear_curve = 0.4005,
    preferred_supplier_ids = { 45, 133 },
    gen_id = 644,
}
_VP["VP-000645"] = {
    label = "DeltaMob modelo 2645 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 98365,
    wear_curve = 0.3066,
    preferred_supplier_ids = { 46, 136 },
    gen_id = 645,
}
_VP["VP-000646"] = {
    label = "OrionTruck modelo 2646 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 98502,
    wear_curve = 0.3334,
    preferred_supplier_ids = { 47, 139 },
    gen_id = 646,
}
_VP["VP-000647"] = {
    label = "SigmaBike modelo 2647 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 98639,
    wear_curve = 0.9429,
    preferred_supplier_ids = { 48, 142 },
    gen_id = 647,
}
_VP["VP-000648"] = {
    label = "AstraMotors modelo 2648 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 98776,
    wear_curve = 0.4710,
    preferred_supplier_ids = { 49, 145 },
    gen_id = 648,
}
_VP["VP-000649"] = {
    label = "RioVeículos modelo 2649 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 98913,
    wear_curve = 0.5790,
    preferred_supplier_ids = { 50, 148 },
    gen_id = 649,
}
_VP["VP-000650"] = {
    label = "NorteAuto modelo 2650 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 99050,
    wear_curve = 0.8787,
    preferred_supplier_ids = { 51, 151 },
    gen_id = 650,
}
_VP["VP-000651"] = {
    label = "DeltaMob modelo 2651 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 99187,
    wear_curve = 0.5701,
    preferred_supplier_ids = { 52, 154 },
    gen_id = 651,
}
_VP["VP-000652"] = {
    label = "OrionTruck modelo 2652 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 99324,
    wear_curve = 0.7018,
    preferred_supplier_ids = { 53, 157 },
    gen_id = 652,
}
_VP["VP-000653"] = {
    label = "SigmaBike modelo 2653 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 99461,
    wear_curve = 0.7620,
    preferred_supplier_ids = { 54, 160 },
    gen_id = 653,
}
_VP["VP-000654"] = {
    label = "AstraMotors modelo 2654 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 99598,
    wear_curve = 0.4537,
    preferred_supplier_ids = { 55, 163 },
    gen_id = 654,
}
_VP["VP-000655"] = {
    label = "RioVeículos modelo 2655 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 99735,
    wear_curve = 0.5996,
    preferred_supplier_ids = { 56, 166 },
    gen_id = 655,
}
_VP["VP-000656"] = {
    label = "NorteAuto modelo 2656 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 99872,
    wear_curve = 0.7039,
    preferred_supplier_ids = { 57, 169 },
    gen_id = 656,
}
_VP["VP-000657"] = {
    label = "DeltaMob modelo 2657 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 100009,
    wear_curve = 0.7653,
    preferred_supplier_ids = { 58, 172 },
    gen_id = 657,
}
_VP["VP-000658"] = {
    label = "OrionTruck modelo 2658 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 100146,
    wear_curve = 0.7082,
    preferred_supplier_ids = { 59, 175 },
    gen_id = 658,
}
_VP["VP-000659"] = {
    label = "SigmaBike modelo 2659 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 100283,
    wear_curve = 0.5416,
    preferred_supplier_ids = { 60, 178 },
    gen_id = 659,
}
_VP["VP-000660"] = {
    label = "AstraMotors modelo 2660 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 100420,
    wear_curve = 0.3388,
    preferred_supplier_ids = { 61, 181 },
    gen_id = 660,
}
_VP["VP-000661"] = {
    label = "RioVeículos modelo 2661 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 100557,
    wear_curve = 0.3047,
    preferred_supplier_ids = { 62, 184 },
    gen_id = 661,
}
_VP["VP-000662"] = {
    label = "NorteAuto modelo 2662 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 100694,
    wear_curve = 0.9032,
    preferred_supplier_ids = { 63, 187 },
    gen_id = 662,
}
_VP["VP-000663"] = {
    label = "DeltaMob modelo 2663 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 100831,
    wear_curve = 0.3961,
    preferred_supplier_ids = { 64, 190 },
    gen_id = 663,
}
_VP["VP-000664"] = {
    label = "OrionTruck modelo 2664 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 100968,
    wear_curve = 0.2168,
    preferred_supplier_ids = { 65, 193 },
    gen_id = 664,
}
_VP["VP-000665"] = {
    label = "SigmaBike modelo 2665 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 101105,
    wear_curve = 0.4600,
    preferred_supplier_ids = { 66, 196 },
    gen_id = 665,
}
_VP["VP-000666"] = {
    label = "AstraMotors modelo 2666 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 101242,
    wear_curve = 0.1893,
    preferred_supplier_ids = { 67, 199 },
    gen_id = 666,
}
_VP["VP-000667"] = {
    label = "RioVeículos modelo 2667 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 101379,
    wear_curve = 0.4895,
    preferred_supplier_ids = { 68, 2 },
    gen_id = 667,
}
_VP["VP-000668"] = {
    label = "NorteAuto modelo 2668 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 101516,
    wear_curve = 0.9372,
    preferred_supplier_ids = { 69, 5 },
    gen_id = 668,
}
_VP["VP-000669"] = {
    label = "DeltaMob modelo 2669 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 101653,
    wear_curve = 0.3603,
    preferred_supplier_ids = { 70, 8 },
    gen_id = 669,
}
_VP["VP-000670"] = {
    label = "OrionTruck modelo 2670 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 101790,
    wear_curve = 0.7052,
    preferred_supplier_ids = { 71, 11 },
    gen_id = 670,
}
_VP["VP-000671"] = {
    label = "SigmaBike modelo 2671 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 101927,
    wear_curve = 0.5098,
    preferred_supplier_ids = { 72, 14 },
    gen_id = 671,
}
_VP["VP-000672"] = {
    label = "AstraMotors modelo 2672 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 102064,
    wear_curve = 0.8187,
    preferred_supplier_ids = { 73, 17 },
    gen_id = 672,
}
_VP["VP-000673"] = {
    label = "RioVeículos modelo 2673 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 102201,
    wear_curve = 0.1653,
    preferred_supplier_ids = { 74, 20 },
    gen_id = 673,
}
_VP["VP-000674"] = {
    label = "NorteAuto modelo 2674 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 102338,
    wear_curve = 0.3018,
    preferred_supplier_ids = { 75, 23 },
    gen_id = 674,
}
_VP["VP-000675"] = {
    label = "DeltaMob modelo 2675 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 102475,
    wear_curve = 0.9390,
    preferred_supplier_ids = { 76, 26 },
    gen_id = 675,
}
_VP["VP-000676"] = {
    label = "OrionTruck modelo 2676 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 102612,
    wear_curve = 0.5803,
    preferred_supplier_ids = { 77, 29 },
    gen_id = 676,
}
_VP["VP-000677"] = {
    label = "SigmaBike modelo 2677 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 102749,
    wear_curve = 0.4749,
    preferred_supplier_ids = { 78, 32 },
    gen_id = 677,
}
_VP["VP-000678"] = {
    label = "AstraMotors modelo 2678 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 102886,
    wear_curve = 0.4573,
    preferred_supplier_ids = { 79, 35 },
    gen_id = 678,
}
_VP["VP-000679"] = {
    label = "RioVeículos modelo 2679 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 103023,
    wear_curve = 0.9475,
    preferred_supplier_ids = { 80, 38 },
    gen_id = 679,
}
_VP["VP-000680"] = {
    label = "NorteAuto modelo 2680 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 103160,
    wear_curve = 0.6942,
    preferred_supplier_ids = { 81, 41 },
    gen_id = 680,
}
_VP["VP-000681"] = {
    label = "DeltaMob modelo 2681 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 103297,
    wear_curve = 0.4109,
    preferred_supplier_ids = { 82, 44 },
    gen_id = 681,
}
_VP["VP-000682"] = {
    label = "OrionTruck modelo 2682 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 103434,
    wear_curve = 0.7621,
    preferred_supplier_ids = { 83, 47 },
    gen_id = 682,
}
_VP["VP-000683"] = {
    label = "SigmaBike modelo 2683 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 103571,
    wear_curve = 0.6252,
    preferred_supplier_ids = { 84, 50 },
    gen_id = 683,
}
_VP["VP-000684"] = {
    label = "AstraMotors modelo 2684 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 103708,
    wear_curve = 0.2984,
    preferred_supplier_ids = { 85, 53 },
    gen_id = 684,
}
_VP["VP-000685"] = {
    label = "RioVeículos modelo 2685 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 103845,
    wear_curve = 0.2296,
    preferred_supplier_ids = { 86, 56 },
    gen_id = 685,
}
_VP["VP-000686"] = {
    label = "NorteAuto modelo 2686 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 103982,
    wear_curve = 0.8659,
    preferred_supplier_ids = { 87, 59 },
    gen_id = 686,
}
_VP["VP-000687"] = {
    label = "DeltaMob modelo 2687 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 104119,
    wear_curve = 0.3384,
    preferred_supplier_ids = { 88, 62 },
    gen_id = 687,
}
_VP["VP-000688"] = {
    label = "OrionTruck modelo 2688 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 104256,
    wear_curve = 0.8130,
    preferred_supplier_ids = { 89, 65 },
    gen_id = 688,
}
_VP["VP-000689"] = {
    label = "SigmaBike modelo 2689 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 104393,
    wear_curve = 0.9322,
    preferred_supplier_ids = { 90, 68 },
    gen_id = 689,
}
_VP["VP-000690"] = {
    label = "AstraMotors modelo 2690 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 104530,
    wear_curve = 0.3898,
    preferred_supplier_ids = { 91, 71 },
    gen_id = 690,
}
_VP["VP-000691"] = {
    label = "RioVeículos modelo 2691 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 104667,
    wear_curve = 0.4128,
    preferred_supplier_ids = { 92, 74 },
    gen_id = 691,
}
_VP["VP-000692"] = {
    label = "NorteAuto modelo 2692 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 104804,
    wear_curve = 0.6242,
    preferred_supplier_ids = { 93, 77 },
    gen_id = 692,
}
_VP["VP-000693"] = {
    label = "DeltaMob modelo 2693 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 104941,
    wear_curve = 0.3578,
    preferred_supplier_ids = { 94, 80 },
    gen_id = 693,
}
_VP["VP-000694"] = {
    label = "OrionTruck modelo 2694 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 105078,
    wear_curve = 0.2706,
    preferred_supplier_ids = { 95, 83 },
    gen_id = 694,
}
_VP["VP-000695"] = {
    label = "SigmaBike modelo 2695 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 105215,
    wear_curve = 0.3056,
    preferred_supplier_ids = { 96, 86 },
    gen_id = 695,
}
_VP["VP-000696"] = {
    label = "AstraMotors modelo 2696 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 105352,
    wear_curve = 0.5554,
    preferred_supplier_ids = { 97, 89 },
    gen_id = 696,
}
_VP["VP-000697"] = {
    label = "RioVeículos modelo 2697 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 105489,
    wear_curve = 0.7515,
    preferred_supplier_ids = { 98, 92 },
    gen_id = 697,
}
_VP["VP-000698"] = {
    label = "NorteAuto modelo 2698 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 105626,
    wear_curve = 0.7155,
    preferred_supplier_ids = { 99, 95 },
    gen_id = 698,
}
_VP["VP-000699"] = {
    label = "DeltaMob modelo 2699 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 105763,
    wear_curve = 0.8939,
    preferred_supplier_ids = { 100, 98 },
    gen_id = 699,
}
_VP["VP-000700"] = {
    label = "OrionTruck modelo 2700 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 105900,
    wear_curve = 0.9631,
    preferred_supplier_ids = { 101, 101 },
    gen_id = 700,
}
_VP["VP-000701"] = {
    label = "SigmaBike modelo 2701 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 106037,
    wear_curve = 0.5154,
    preferred_supplier_ids = { 102, 104 },
    gen_id = 701,
}
_VP["VP-000702"] = {
    label = "AstraMotors modelo 2702 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 106174,
    wear_curve = 0.5096,
    preferred_supplier_ids = { 103, 107 },
    gen_id = 702,
}
_VP["VP-000703"] = {
    label = "RioVeículos modelo 2703 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 106311,
    wear_curve = 0.9652,
    preferred_supplier_ids = { 104, 110 },
    gen_id = 703,
}
_VP["VP-000704"] = {
    label = "NorteAuto modelo 2704 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 106448,
    wear_curve = 0.4034,
    preferred_supplier_ids = { 105, 113 },
    gen_id = 704,
}
_VP["VP-000705"] = {
    label = "DeltaMob modelo 2705 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 106585,
    wear_curve = 0.8626,
    preferred_supplier_ids = { 106, 116 },
    gen_id = 705,
}
_VP["VP-000706"] = {
    label = "OrionTruck modelo 2706 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 106722,
    wear_curve = 0.9288,
    preferred_supplier_ids = { 107, 119 },
    gen_id = 706,
}
_VP["VP-000707"] = {
    label = "SigmaBike modelo 2707 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 106859,
    wear_curve = 0.4638,
    preferred_supplier_ids = { 108, 122 },
    gen_id = 707,
}
_VP["VP-000708"] = {
    label = "AstraMotors modelo 2708 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 106996,
    wear_curve = 0.9302,
    preferred_supplier_ids = { 109, 125 },
    gen_id = 708,
}
_VP["VP-000709"] = {
    label = "RioVeículos modelo 2709 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 107133,
    wear_curve = 0.5045,
    preferred_supplier_ids = { 110, 128 },
    gen_id = 709,
}
_VP["VP-000710"] = {
    label = "NorteAuto modelo 2710 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 107270,
    wear_curve = 0.7257,
    preferred_supplier_ids = { 111, 131 },
    gen_id = 710,
}
_VP["VP-000711"] = {
    label = "DeltaMob modelo 2711 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 107407,
    wear_curve = 0.3036,
    preferred_supplier_ids = { 112, 134 },
    gen_id = 711,
}
_VP["VP-000712"] = {
    label = "OrionTruck modelo 2712 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 107544,
    wear_curve = 0.6478,
    preferred_supplier_ids = { 113, 137 },
    gen_id = 712,
}
_VP["VP-000713"] = {
    label = "SigmaBike modelo 2713 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 107681,
    wear_curve = 0.1684,
    preferred_supplier_ids = { 114, 140 },
    gen_id = 713,
}
_VP["VP-000714"] = {
    label = "AstraMotors modelo 2714 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 107818,
    wear_curve = 0.3170,
    preferred_supplier_ids = { 115, 143 },
    gen_id = 714,
}
_VP["VP-000715"] = {
    label = "RioVeículos modelo 2715 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 107955,
    wear_curve = 0.6752,
    preferred_supplier_ids = { 116, 146 },
    gen_id = 715,
}
_VP["VP-000716"] = {
    label = "NorteAuto modelo 2716 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 108092,
    wear_curve = 0.2521,
    preferred_supplier_ids = { 117, 149 },
    gen_id = 716,
}
_VP["VP-000717"] = {
    label = "DeltaMob modelo 2717 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 108229,
    wear_curve = 0.7000,
    preferred_supplier_ids = { 118, 152 },
    gen_id = 717,
}
_VP["VP-000718"] = {
    label = "OrionTruck modelo 2718 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 108366,
    wear_curve = 0.3630,
    preferred_supplier_ids = { 119, 155 },
    gen_id = 718,
}
_VP["VP-000719"] = {
    label = "SigmaBike modelo 2719 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 108503,
    wear_curve = 0.8336,
    preferred_supplier_ids = { 120, 158 },
    gen_id = 719,
}
_VP["VP-000720"] = {
    label = "AstraMotors modelo 2720 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 108640,
    wear_curve = 0.3599,
    preferred_supplier_ids = { 121, 161 },
    gen_id = 720,
}
_VP["VP-000721"] = {
    label = "RioVeículos modelo 2721 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 108777,
    wear_curve = 0.8218,
    preferred_supplier_ids = { 122, 164 },
    gen_id = 721,
}
_VP["VP-000722"] = {
    label = "NorteAuto modelo 2722 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 108914,
    wear_curve = 0.5447,
    preferred_supplier_ids = { 123, 167 },
    gen_id = 722,
}
_VP["VP-000723"] = {
    label = "DeltaMob modelo 2723 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 109051,
    wear_curve = 0.1700,
    preferred_supplier_ids = { 124, 170 },
    gen_id = 723,
}
_VP["VP-000724"] = {
    label = "OrionTruck modelo 2724 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 109188,
    wear_curve = 0.6342,
    preferred_supplier_ids = { 125, 173 },
    gen_id = 724,
}
_VP["VP-000725"] = {
    label = "SigmaBike modelo 2725 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 109325,
    wear_curve = 0.8293,
    preferred_supplier_ids = { 126, 176 },
    gen_id = 725,
}
_VP["VP-000726"] = {
    label = "AstraMotors modelo 2726 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 109462,
    wear_curve = 0.3036,
    preferred_supplier_ids = { 127, 179 },
    gen_id = 726,
}
_VP["VP-000727"] = {
    label = "RioVeículos modelo 2727 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 109599,
    wear_curve = 0.5775,
    preferred_supplier_ids = { 128, 182 },
    gen_id = 727,
}
_VP["VP-000728"] = {
    label = "NorteAuto modelo 2728 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 109736,
    wear_curve = 0.8801,
    preferred_supplier_ids = { 129, 185 },
    gen_id = 728,
}
_VP["VP-000729"] = {
    label = "DeltaMob modelo 2729 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 109873,
    wear_curve = 0.8690,
    preferred_supplier_ids = { 130, 188 },
    gen_id = 729,
}
_VP["VP-000730"] = {
    label = "OrionTruck modelo 2730 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 110010,
    wear_curve = 0.9737,
    preferred_supplier_ids = { 131, 191 },
    gen_id = 730,
}
_VP["VP-000731"] = {
    label = "SigmaBike modelo 2731 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 110147,
    wear_curve = 0.9898,
    preferred_supplier_ids = { 132, 194 },
    gen_id = 731,
}
_VP["VP-000732"] = {
    label = "AstraMotors modelo 2732 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 110284,
    wear_curve = 0.2449,
    preferred_supplier_ids = { 133, 197 },
    gen_id = 732,
}
_VP["VP-000733"] = {
    label = "RioVeículos modelo 2733 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 110421,
    wear_curve = 0.5054,
    preferred_supplier_ids = { 134, 200 },
    gen_id = 733,
}
_VP["VP-000734"] = {
    label = "NorteAuto modelo 2734 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 110558,
    wear_curve = 0.4463,
    preferred_supplier_ids = { 135, 3 },
    gen_id = 734,
}
_VP["VP-000735"] = {
    label = "DeltaMob modelo 2735 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 110695,
    wear_curve = 0.6791,
    preferred_supplier_ids = { 136, 6 },
    gen_id = 735,
}
_VP["VP-000736"] = {
    label = "OrionTruck modelo 2736 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 110832,
    wear_curve = 0.2213,
    preferred_supplier_ids = { 137, 9 },
    gen_id = 736,
}
_VP["VP-000737"] = {
    label = "SigmaBike modelo 2737 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 110969,
    wear_curve = 0.5471,
    preferred_supplier_ids = { 138, 12 },
    gen_id = 737,
}
_VP["VP-000738"] = {
    label = "AstraMotors modelo 2738 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 111106,
    wear_curve = 0.6235,
    preferred_supplier_ids = { 139, 15 },
    gen_id = 738,
}
_VP["VP-000739"] = {
    label = "RioVeículos modelo 2739 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 111243,
    wear_curve = 0.9143,
    preferred_supplier_ids = { 140, 18 },
    gen_id = 739,
}
_VP["VP-000740"] = {
    label = "NorteAuto modelo 2740 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 111380,
    wear_curve = 0.3635,
    preferred_supplier_ids = { 141, 21 },
    gen_id = 740,
}
_VP["VP-000741"] = {
    label = "DeltaMob modelo 2741 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 111517,
    wear_curve = 0.6629,
    preferred_supplier_ids = { 142, 24 },
    gen_id = 741,
}
_VP["VP-000742"] = {
    label = "OrionTruck modelo 2742 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 111654,
    wear_curve = 0.5241,
    preferred_supplier_ids = { 143, 27 },
    gen_id = 742,
}
_VP["VP-000743"] = {
    label = "SigmaBike modelo 2743 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 111791,
    wear_curve = 0.7439,
    preferred_supplier_ids = { 144, 30 },
    gen_id = 743,
}
_VP["VP-000744"] = {
    label = "AstraMotors modelo 2744 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 111928,
    wear_curve = 0.4880,
    preferred_supplier_ids = { 145, 33 },
    gen_id = 744,
}
_VP["VP-000745"] = {
    label = "RioVeículos modelo 2745 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 112065,
    wear_curve = 0.9838,
    preferred_supplier_ids = { 146, 36 },
    gen_id = 745,
}
_VP["VP-000746"] = {
    label = "NorteAuto modelo 2746 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 112202,
    wear_curve = 0.8230,
    preferred_supplier_ids = { 147, 39 },
    gen_id = 746,
}
_VP["VP-000747"] = {
    label = "DeltaMob modelo 2747 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 112339,
    wear_curve = 0.7277,
    preferred_supplier_ids = { 148, 42 },
    gen_id = 747,
}
_VP["VP-000748"] = {
    label = "OrionTruck modelo 2748 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 112476,
    wear_curve = 0.3957,
    preferred_supplier_ids = { 149, 45 },
    gen_id = 748,
}
_VP["VP-000749"] = {
    label = "SigmaBike modelo 2749 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 112613,
    wear_curve = 0.7969,
    preferred_supplier_ids = { 150, 48 },
    gen_id = 749,
}
_VP["VP-000750"] = {
    label = "AstraMotors modelo 2750 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 112750,
    wear_curve = 0.7641,
    preferred_supplier_ids = { 151, 51 },
    gen_id = 750,
}
_VP["VP-000751"] = {
    label = "RioVeículos modelo 2751 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 112887,
    wear_curve = 0.6069,
    preferred_supplier_ids = { 152, 54 },
    gen_id = 751,
}
_VP["VP-000752"] = {
    label = "NorteAuto modelo 2752 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 113024,
    wear_curve = 0.2614,
    preferred_supplier_ids = { 153, 57 },
    gen_id = 752,
}
_VP["VP-000753"] = {
    label = "DeltaMob modelo 2753 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 113161,
    wear_curve = 0.4009,
    preferred_supplier_ids = { 154, 60 },
    gen_id = 753,
}
_VP["VP-000754"] = {
    label = "OrionTruck modelo 2754 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 113298,
    wear_curve = 0.9019,
    preferred_supplier_ids = { 155, 63 },
    gen_id = 754,
}
_VP["VP-000755"] = {
    label = "SigmaBike modelo 2755 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 113435,
    wear_curve = 0.9131,
    preferred_supplier_ids = { 156, 66 },
    gen_id = 755,
}
_VP["VP-000756"] = {
    label = "AstraMotors modelo 2756 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 113572,
    wear_curve = 0.8028,
    preferred_supplier_ids = { 157, 69 },
    gen_id = 756,
}
_VP["VP-000757"] = {
    label = "RioVeículos modelo 2757 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 113709,
    wear_curve = 0.5057,
    preferred_supplier_ids = { 158, 72 },
    gen_id = 757,
}
_VP["VP-000758"] = {
    label = "NorteAuto modelo 2758 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 113846,
    wear_curve = 0.6866,
    preferred_supplier_ids = { 159, 75 },
    gen_id = 758,
}
_VP["VP-000759"] = {
    label = "DeltaMob modelo 2759 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 113983,
    wear_curve = 0.8788,
    preferred_supplier_ids = { 160, 78 },
    gen_id = 759,
}
_VP["VP-000760"] = {
    label = "OrionTruck modelo 2760 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 114120,
    wear_curve = 0.8495,
    preferred_supplier_ids = { 161, 81 },
    gen_id = 760,
}
_VP["VP-000761"] = {
    label = "SigmaBike modelo 2761 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 114257,
    wear_curve = 0.5702,
    preferred_supplier_ids = { 162, 84 },
    gen_id = 761,
}
_VP["VP-000762"] = {
    label = "AstraMotors modelo 2762 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 114394,
    wear_curve = 0.5234,
    preferred_supplier_ids = { 163, 87 },
    gen_id = 762,
}
_VP["VP-000763"] = {
    label = "RioVeículos modelo 2763 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 114531,
    wear_curve = 0.5259,
    preferred_supplier_ids = { 164, 90 },
    gen_id = 763,
}
_VP["VP-000764"] = {
    label = "NorteAuto modelo 2764 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 114668,
    wear_curve = 0.3485,
    preferred_supplier_ids = { 165, 93 },
    gen_id = 764,
}
_VP["VP-000765"] = {
    label = "DeltaMob modelo 2765 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 114805,
    wear_curve = 0.2357,
    preferred_supplier_ids = { 166, 96 },
    gen_id = 765,
}
_VP["VP-000766"] = {
    label = "OrionTruck modelo 2766 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 114942,
    wear_curve = 0.2958,
    preferred_supplier_ids = { 167, 99 },
    gen_id = 766,
}
_VP["VP-000767"] = {
    label = "SigmaBike modelo 2767 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 115079,
    wear_curve = 0.5705,
    preferred_supplier_ids = { 168, 102 },
    gen_id = 767,
}
_VP["VP-000768"] = {
    label = "AstraMotors modelo 2768 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 115216,
    wear_curve = 0.9038,
    preferred_supplier_ids = { 169, 105 },
    gen_id = 768,
}
_VP["VP-000769"] = {
    label = "RioVeículos modelo 2769 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 115353,
    wear_curve = 0.5736,
    preferred_supplier_ids = { 170, 108 },
    gen_id = 769,
}
_VP["VP-000770"] = {
    label = "NorteAuto modelo 2770 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 115490,
    wear_curve = 0.1576,
    preferred_supplier_ids = { 171, 111 },
    gen_id = 770,
}
_VP["VP-000771"] = {
    label = "DeltaMob modelo 2771 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 115627,
    wear_curve = 0.7941,
    preferred_supplier_ids = { 172, 114 },
    gen_id = 771,
}
_VP["VP-000772"] = {
    label = "OrionTruck modelo 2772 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 115764,
    wear_curve = 0.4097,
    preferred_supplier_ids = { 173, 117 },
    gen_id = 772,
}
_VP["VP-000773"] = {
    label = "SigmaBike modelo 2773 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 115901,
    wear_curve = 0.3807,
    preferred_supplier_ids = { 174, 120 },
    gen_id = 773,
}
_VP["VP-000774"] = {
    label = "AstraMotors modelo 2774 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 116038,
    wear_curve = 0.2606,
    preferred_supplier_ids = { 175, 123 },
    gen_id = 774,
}
_VP["VP-000775"] = {
    label = "RioVeículos modelo 2775 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 116175,
    wear_curve = 0.2953,
    preferred_supplier_ids = { 176, 126 },
    gen_id = 775,
}
_VP["VP-000776"] = {
    label = "NorteAuto modelo 2776 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 116312,
    wear_curve = 0.6506,
    preferred_supplier_ids = { 177, 129 },
    gen_id = 776,
}
_VP["VP-000777"] = {
    label = "DeltaMob modelo 2777 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 116449,
    wear_curve = 0.8152,
    preferred_supplier_ids = { 178, 132 },
    gen_id = 777,
}
_VP["VP-000778"] = {
    label = "OrionTruck modelo 2778 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 116586,
    wear_curve = 0.5449,
    preferred_supplier_ids = { 179, 135 },
    gen_id = 778,
}
_VP["VP-000779"] = {
    label = "SigmaBike modelo 2779 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 116723,
    wear_curve = 0.6973,
    preferred_supplier_ids = { 180, 138 },
    gen_id = 779,
}
_VP["VP-000780"] = {
    label = "AstraMotors modelo 2780 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 116860,
    wear_curve = 0.2034,
    preferred_supplier_ids = { 181, 141 },
    gen_id = 780,
}
_VP["VP-000781"] = {
    label = "RioVeículos modelo 2781 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 116997,
    wear_curve = 0.4325,
    preferred_supplier_ids = { 182, 144 },
    gen_id = 781,
}
_VP["VP-000782"] = {
    label = "NorteAuto modelo 2782 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 117134,
    wear_curve = 0.2362,
    preferred_supplier_ids = { 183, 147 },
    gen_id = 782,
}
_VP["VP-000783"] = {
    label = "DeltaMob modelo 2783 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 117271,
    wear_curve = 0.8495,
    preferred_supplier_ids = { 184, 150 },
    gen_id = 783,
}
_VP["VP-000784"] = {
    label = "OrionTruck modelo 2784 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 117408,
    wear_curve = 0.4384,
    preferred_supplier_ids = { 185, 153 },
    gen_id = 784,
}
_VP["VP-000785"] = {
    label = "SigmaBike modelo 2785 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 117545,
    wear_curve = 0.2872,
    preferred_supplier_ids = { 186, 156 },
    gen_id = 785,
}
_VP["VP-000786"] = {
    label = "AstraMotors modelo 2786 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 117682,
    wear_curve = 0.3006,
    preferred_supplier_ids = { 187, 159 },
    gen_id = 786,
}
_VP["VP-000787"] = {
    label = "RioVeículos modelo 2787 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 117819,
    wear_curve = 0.6743,
    preferred_supplier_ids = { 188, 162 },
    gen_id = 787,
}
_VP["VP-000788"] = {
    label = "NorteAuto modelo 2788 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 117956,
    wear_curve = 0.7802,
    preferred_supplier_ids = { 189, 165 },
    gen_id = 788,
}
_VP["VP-000789"] = {
    label = "DeltaMob modelo 2789 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 118093,
    wear_curve = 0.7368,
    preferred_supplier_ids = { 190, 168 },
    gen_id = 789,
}
_VP["VP-000790"] = {
    label = "OrionTruck modelo 2790 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 118230,
    wear_curve = 0.4264,
    preferred_supplier_ids = { 191, 171 },
    gen_id = 790,
}
_VP["VP-000791"] = {
    label = "SigmaBike modelo 2791 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 118367,
    wear_curve = 0.5715,
    preferred_supplier_ids = { 192, 174 },
    gen_id = 791,
}
_VP["VP-000792"] = {
    label = "AstraMotors modelo 2792 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 118504,
    wear_curve = 0.4010,
    preferred_supplier_ids = { 193, 177 },
    gen_id = 792,
}
_VP["VP-000793"] = {
    label = "RioVeículos modelo 2793 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 118641,
    wear_curve = 0.6887,
    preferred_supplier_ids = { 194, 180 },
    gen_id = 793,
}
_VP["VP-000794"] = {
    label = "NorteAuto modelo 2794 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 118778,
    wear_curve = 0.1597,
    preferred_supplier_ids = { 195, 183 },
    gen_id = 794,
}
_VP["VP-000795"] = {
    label = "DeltaMob modelo 2795 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 118915,
    wear_curve = 0.8579,
    preferred_supplier_ids = { 196, 186 },
    gen_id = 795,
}
_VP["VP-000796"] = {
    label = "OrionTruck modelo 2796 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 119052,
    wear_curve = 0.7815,
    preferred_supplier_ids = { 197, 189 },
    gen_id = 796,
}
_VP["VP-000797"] = {
    label = "SigmaBike modelo 2797 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 119189,
    wear_curve = 0.9002,
    preferred_supplier_ids = { 198, 192 },
    gen_id = 797,
}
_VP["VP-000798"] = {
    label = "AstraMotors modelo 2798 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 119326,
    wear_curve = 0.4363,
    preferred_supplier_ids = { 199, 195 },
    gen_id = 798,
}
_VP["VP-000799"] = {
    label = "RioVeículos modelo 2799 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 119463,
    wear_curve = 0.8280,
    preferred_supplier_ids = { 200, 198 },
    gen_id = 799,
}
_VP["VP-000800"] = {
    label = "NorteAuto modelo 2800 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 119600,
    wear_curve = 0.3862,
    preferred_supplier_ids = { 1, 1 },
    gen_id = 800,
}
_VP["VP-000801"] = {
    label = "DeltaMob modelo 2801 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 119737,
    wear_curve = 0.3978,
    preferred_supplier_ids = { 2, 4 },
    gen_id = 801,
}
_VP["VP-000802"] = {
    label = "OrionTruck modelo 2802 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 119874,
    wear_curve = 0.2630,
    preferred_supplier_ids = { 3, 7 },
    gen_id = 802,
}
_VP["VP-000803"] = {
    label = "SigmaBike modelo 2803 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 120011,
    wear_curve = 0.6385,
    preferred_supplier_ids = { 4, 10 },
    gen_id = 803,
}
_VP["VP-000804"] = {
    label = "AstraMotors modelo 2804 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 120148,
    wear_curve = 0.9646,
    preferred_supplier_ids = { 5, 13 },
    gen_id = 804,
}
_VP["VP-000805"] = {
    label = "RioVeículos modelo 2805 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 120285,
    wear_curve = 0.8018,
    preferred_supplier_ids = { 6, 16 },
    gen_id = 805,
}
_VP["VP-000806"] = {
    label = "NorteAuto modelo 2806 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 120422,
    wear_curve = 0.5158,
    preferred_supplier_ids = { 7, 19 },
    gen_id = 806,
}
_VP["VP-000807"] = {
    label = "DeltaMob modelo 2807 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 120559,
    wear_curve = 0.9292,
    preferred_supplier_ids = { 8, 22 },
    gen_id = 807,
}
_VP["VP-000808"] = {
    label = "OrionTruck modelo 2808 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 120696,
    wear_curve = 0.9998,
    preferred_supplier_ids = { 9, 25 },
    gen_id = 808,
}
_VP["VP-000809"] = {
    label = "SigmaBike modelo 2809 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 120833,
    wear_curve = 0.3966,
    preferred_supplier_ids = { 10, 28 },
    gen_id = 809,
}
_VP["VP-000810"] = {
    label = "AstraMotors modelo 2810 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 120970,
    wear_curve = 0.6828,
    preferred_supplier_ids = { 11, 31 },
    gen_id = 810,
}
_VP["VP-000811"] = {
    label = "RioVeículos modelo 2811 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 121107,
    wear_curve = 0.4056,
    preferred_supplier_ids = { 12, 34 },
    gen_id = 811,
}
_VP["VP-000812"] = {
    label = "NorteAuto modelo 2812 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 121244,
    wear_curve = 0.4911,
    preferred_supplier_ids = { 13, 37 },
    gen_id = 812,
}
_VP["VP-000813"] = {
    label = "DeltaMob modelo 2813 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 121381,
    wear_curve = 0.8072,
    preferred_supplier_ids = { 14, 40 },
    gen_id = 813,
}
_VP["VP-000814"] = {
    label = "OrionTruck modelo 2814 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 121518,
    wear_curve = 0.9437,
    preferred_supplier_ids = { 15, 43 },
    gen_id = 814,
}
_VP["VP-000815"] = {
    label = "SigmaBike modelo 2815 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 121655,
    wear_curve = 0.3223,
    preferred_supplier_ids = { 16, 46 },
    gen_id = 815,
}
_VP["VP-000816"] = {
    label = "AstraMotors modelo 2816 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 121792,
    wear_curve = 0.6656,
    preferred_supplier_ids = { 17, 49 },
    gen_id = 816,
}
_VP["VP-000817"] = {
    label = "RioVeículos modelo 2817 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 121929,
    wear_curve = 0.8993,
    preferred_supplier_ids = { 18, 52 },
    gen_id = 817,
}
_VP["VP-000818"] = {
    label = "NorteAuto modelo 2818 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 122066,
    wear_curve = 0.9402,
    preferred_supplier_ids = { 19, 55 },
    gen_id = 818,
}
_VP["VP-000819"] = {
    label = "DeltaMob modelo 2819 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 122203,
    wear_curve = 0.3674,
    preferred_supplier_ids = { 20, 58 },
    gen_id = 819,
}
_VP["VP-000820"] = {
    label = "OrionTruck modelo 2820 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 122340,
    wear_curve = 0.2829,
    preferred_supplier_ids = { 21, 61 },
    gen_id = 820,
}
_VP["VP-000821"] = {
    label = "SigmaBike modelo 2821 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 122477,
    wear_curve = 0.3357,
    preferred_supplier_ids = { 22, 64 },
    gen_id = 821,
}
_VP["VP-000822"] = {
    label = "AstraMotors modelo 2822 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 122614,
    wear_curve = 0.4025,
    preferred_supplier_ids = { 23, 67 },
    gen_id = 822,
}
_VP["VP-000823"] = {
    label = "RioVeículos modelo 2823 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 122751,
    wear_curve = 0.4118,
    preferred_supplier_ids = { 24, 70 },
    gen_id = 823,
}
_VP["VP-000824"] = {
    label = "NorteAuto modelo 2824 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 122888,
    wear_curve = 0.6010,
    preferred_supplier_ids = { 25, 73 },
    gen_id = 824,
}
_VP["VP-000825"] = {
    label = "DeltaMob modelo 2825 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 123025,
    wear_curve = 0.5838,
    preferred_supplier_ids = { 26, 76 },
    gen_id = 825,
}
_VP["VP-000826"] = {
    label = "OrionTruck modelo 2826 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 123162,
    wear_curve = 0.2126,
    preferred_supplier_ids = { 27, 79 },
    gen_id = 826,
}
_VP["VP-000827"] = {
    label = "SigmaBike modelo 2827 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 123299,
    wear_curve = 0.6983,
    preferred_supplier_ids = { 28, 82 },
    gen_id = 827,
}
_VP["VP-000828"] = {
    label = "AstraMotors modelo 2828 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 123436,
    wear_curve = 0.6927,
    preferred_supplier_ids = { 29, 85 },
    gen_id = 828,
}
_VP["VP-000829"] = {
    label = "RioVeículos modelo 2829 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 123573,
    wear_curve = 0.7307,
    preferred_supplier_ids = { 30, 88 },
    gen_id = 829,
}
_VP["VP-000830"] = {
    label = "NorteAuto modelo 2830 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 123710,
    wear_curve = 0.9936,
    preferred_supplier_ids = { 31, 91 },
    gen_id = 830,
}
_VP["VP-000831"] = {
    label = "DeltaMob modelo 2831 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 123847,
    wear_curve = 0.9095,
    preferred_supplier_ids = { 32, 94 },
    gen_id = 831,
}
_VP["VP-000832"] = {
    label = "OrionTruck modelo 2832 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 123984,
    wear_curve = 0.7077,
    preferred_supplier_ids = { 33, 97 },
    gen_id = 832,
}
_VP["VP-000833"] = {
    label = "SigmaBike modelo 2833 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 124121,
    wear_curve = 0.9760,
    preferred_supplier_ids = { 34, 100 },
    gen_id = 833,
}
_VP["VP-000834"] = {
    label = "AstraMotors modelo 2834 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 124258,
    wear_curve = 0.7815,
    preferred_supplier_ids = { 35, 103 },
    gen_id = 834,
}
_VP["VP-000835"] = {
    label = "RioVeículos modelo 2835 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 124395,
    wear_curve = 0.4652,
    preferred_supplier_ids = { 36, 106 },
    gen_id = 835,
}
_VP["VP-000836"] = {
    label = "NorteAuto modelo 2836 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 124532,
    wear_curve = 0.2906,
    preferred_supplier_ids = { 37, 109 },
    gen_id = 836,
}
_VP["VP-000837"] = {
    label = "DeltaMob modelo 2837 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 124669,
    wear_curve = 0.5336,
    preferred_supplier_ids = { 38, 112 },
    gen_id = 837,
}
_VP["VP-000838"] = {
    label = "OrionTruck modelo 2838 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 124806,
    wear_curve = 0.3432,
    preferred_supplier_ids = { 39, 115 },
    gen_id = 838,
}
_VP["VP-000839"] = {
    label = "SigmaBike modelo 2839 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 124943,
    wear_curve = 0.9119,
    preferred_supplier_ids = { 40, 118 },
    gen_id = 839,
}
_VP["VP-000840"] = {
    label = "AstraMotors modelo 2840 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 125080,
    wear_curve = 0.8290,
    preferred_supplier_ids = { 41, 121 },
    gen_id = 840,
}
_VP["VP-000841"] = {
    label = "RioVeículos modelo 2841 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 125217,
    wear_curve = 0.6876,
    preferred_supplier_ids = { 42, 124 },
    gen_id = 841,
}
_VP["VP-000842"] = {
    label = "NorteAuto modelo 2842 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 125354,
    wear_curve = 0.2717,
    preferred_supplier_ids = { 43, 127 },
    gen_id = 842,
}
_VP["VP-000843"] = {
    label = "DeltaMob modelo 2843 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 125491,
    wear_curve = 0.4314,
    preferred_supplier_ids = { 44, 130 },
    gen_id = 843,
}
_VP["VP-000844"] = {
    label = "OrionTruck modelo 2844 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 125628,
    wear_curve = 0.8656,
    preferred_supplier_ids = { 45, 133 },
    gen_id = 844,
}
_VP["VP-000845"] = {
    label = "SigmaBike modelo 2845 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 125765,
    wear_curve = 0.1597,
    preferred_supplier_ids = { 46, 136 },
    gen_id = 845,
}
_VP["VP-000846"] = {
    label = "AstraMotors modelo 2846 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 125902,
    wear_curve = 0.5489,
    preferred_supplier_ids = { 47, 139 },
    gen_id = 846,
}
_VP["VP-000847"] = {
    label = "RioVeículos modelo 2847 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 126039,
    wear_curve = 0.4555,
    preferred_supplier_ids = { 48, 142 },
    gen_id = 847,
}
_VP["VP-000848"] = {
    label = "NorteAuto modelo 2848 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 126176,
    wear_curve = 0.5718,
    preferred_supplier_ids = { 49, 145 },
    gen_id = 848,
}
_VP["VP-000849"] = {
    label = "DeltaMob modelo 2849 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 126313,
    wear_curve = 0.7563,
    preferred_supplier_ids = { 50, 148 },
    gen_id = 849,
}
_VP["VP-000850"] = {
    label = "OrionTruck modelo 2850 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 126450,
    wear_curve = 0.7303,
    preferred_supplier_ids = { 51, 151 },
    gen_id = 850,
}
_VP["VP-000851"] = {
    label = "SigmaBike modelo 2851 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 126587,
    wear_curve = 0.3885,
    preferred_supplier_ids = { 52, 154 },
    gen_id = 851,
}
_VP["VP-000852"] = {
    label = "AstraMotors modelo 2852 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 126724,
    wear_curve = 0.7940,
    preferred_supplier_ids = { 53, 157 },
    gen_id = 852,
}
_VP["VP-000853"] = {
    label = "RioVeículos modelo 2853 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 126861,
    wear_curve = 0.6788,
    preferred_supplier_ids = { 54, 160 },
    gen_id = 853,
}
_VP["VP-000854"] = {
    label = "NorteAuto modelo 2854 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 126998,
    wear_curve = 0.8173,
    preferred_supplier_ids = { 55, 163 },
    gen_id = 854,
}
_VP["VP-000855"] = {
    label = "DeltaMob modelo 2855 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 127135,
    wear_curve = 0.8505,
    preferred_supplier_ids = { 56, 166 },
    gen_id = 855,
}
_VP["VP-000856"] = {
    label = "OrionTruck modelo 2856 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 127272,
    wear_curve = 0.2446,
    preferred_supplier_ids = { 57, 169 },
    gen_id = 856,
}
_VP["VP-000857"] = {
    label = "SigmaBike modelo 2857 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 127409,
    wear_curve = 0.6905,
    preferred_supplier_ids = { 58, 172 },
    gen_id = 857,
}
_VP["VP-000858"] = {
    label = "AstraMotors modelo 2858 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 127546,
    wear_curve = 0.5473,
    preferred_supplier_ids = { 59, 175 },
    gen_id = 858,
}
_VP["VP-000859"] = {
    label = "RioVeículos modelo 2859 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 127683,
    wear_curve = 0.3668,
    preferred_supplier_ids = { 60, 178 },
    gen_id = 859,
}
_VP["VP-000860"] = {
    label = "NorteAuto modelo 2860 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 127820,
    wear_curve = 0.5724,
    preferred_supplier_ids = { 61, 181 },
    gen_id = 860,
}
_VP["VP-000861"] = {
    label = "DeltaMob modelo 2861 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 127957,
    wear_curve = 0.9478,
    preferred_supplier_ids = { 62, 184 },
    gen_id = 861,
}
_VP["VP-000862"] = {
    label = "OrionTruck modelo 2862 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 128094,
    wear_curve = 0.9913,
    preferred_supplier_ids = { 63, 187 },
    gen_id = 862,
}
_VP["VP-000863"] = {
    label = "SigmaBike modelo 2863 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 128231,
    wear_curve = 0.3928,
    preferred_supplier_ids = { 64, 190 },
    gen_id = 863,
}
_VP["VP-000864"] = {
    label = "AstraMotors modelo 2864 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 128368,
    wear_curve = 0.3613,
    preferred_supplier_ids = { 65, 193 },
    gen_id = 864,
}
_VP["VP-000865"] = {
    label = "RioVeículos modelo 2865 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 128505,
    wear_curve = 0.5153,
    preferred_supplier_ids = { 66, 196 },
    gen_id = 865,
}
_VP["VP-000866"] = {
    label = "NorteAuto modelo 2866 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 128642,
    wear_curve = 0.6653,
    preferred_supplier_ids = { 67, 199 },
    gen_id = 866,
}
_VP["VP-000867"] = {
    label = "DeltaMob modelo 2867 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 128779,
    wear_curve = 0.6237,
    preferred_supplier_ids = { 68, 2 },
    gen_id = 867,
}
_VP["VP-000868"] = {
    label = "OrionTruck modelo 2868 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 128916,
    wear_curve = 0.9664,
    preferred_supplier_ids = { 69, 5 },
    gen_id = 868,
}
_VP["VP-000869"] = {
    label = "SigmaBike modelo 2869 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 129053,
    wear_curve = 0.7464,
    preferred_supplier_ids = { 70, 8 },
    gen_id = 869,
}
_VP["VP-000870"] = {
    label = "AstraMotors modelo 2870 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 129190,
    wear_curve = 0.6688,
    preferred_supplier_ids = { 71, 11 },
    gen_id = 870,
}
_VP["VP-000871"] = {
    label = "RioVeículos modelo 2871 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 129327,
    wear_curve = 0.7539,
    preferred_supplier_ids = { 72, 14 },
    gen_id = 871,
}
_VP["VP-000872"] = {
    label = "NorteAuto modelo 2872 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 129464,
    wear_curve = 0.5603,
    preferred_supplier_ids = { 73, 17 },
    gen_id = 872,
}
_VP["VP-000873"] = {
    label = "DeltaMob modelo 2873 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 129601,
    wear_curve = 0.3236,
    preferred_supplier_ids = { 74, 20 },
    gen_id = 873,
}
_VP["VP-000874"] = {
    label = "OrionTruck modelo 2874 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 129738,
    wear_curve = 0.4319,
    preferred_supplier_ids = { 75, 23 },
    gen_id = 874,
}
_VP["VP-000875"] = {
    label = "SigmaBike modelo 2875 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 129875,
    wear_curve = 0.4103,
    preferred_supplier_ids = { 76, 26 },
    gen_id = 875,
}
_VP["VP-000876"] = {
    label = "AstraMotors modelo 2876 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 130012,
    wear_curve = 0.5755,
    preferred_supplier_ids = { 77, 29 },
    gen_id = 876,
}
_VP["VP-000877"] = {
    label = "RioVeículos modelo 2877 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 130149,
    wear_curve = 0.5669,
    preferred_supplier_ids = { 78, 32 },
    gen_id = 877,
}
_VP["VP-000878"] = {
    label = "NorteAuto modelo 2878 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 130286,
    wear_curve = 0.7117,
    preferred_supplier_ids = { 79, 35 },
    gen_id = 878,
}
_VP["VP-000879"] = {
    label = "DeltaMob modelo 2879 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 130423,
    wear_curve = 0.2490,
    preferred_supplier_ids = { 80, 38 },
    gen_id = 879,
}
_VP["VP-000880"] = {
    label = "OrionTruck modelo 2880 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 130560,
    wear_curve = 0.4893,
    preferred_supplier_ids = { 81, 41 },
    gen_id = 880,
}
_VP["VP-000881"] = {
    label = "SigmaBike modelo 2881 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 130697,
    wear_curve = 0.7283,
    preferred_supplier_ids = { 82, 44 },
    gen_id = 881,
}
_VP["VP-000882"] = {
    label = "AstraMotors modelo 2882 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 130834,
    wear_curve = 0.9407,
    preferred_supplier_ids = { 83, 47 },
    gen_id = 882,
}
_VP["VP-000883"] = {
    label = "RioVeículos modelo 2883 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 130971,
    wear_curve = 0.6157,
    preferred_supplier_ids = { 84, 50 },
    gen_id = 883,
}
_VP["VP-000884"] = {
    label = "NorteAuto modelo 2884 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 131108,
    wear_curve = 0.4630,
    preferred_supplier_ids = { 85, 53 },
    gen_id = 884,
}
_VP["VP-000885"] = {
    label = "DeltaMob modelo 2885 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 131245,
    wear_curve = 0.6058,
    preferred_supplier_ids = { 86, 56 },
    gen_id = 885,
}
_VP["VP-000886"] = {
    label = "OrionTruck modelo 2886 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 131382,
    wear_curve = 0.3457,
    preferred_supplier_ids = { 87, 59 },
    gen_id = 886,
}
_VP["VP-000887"] = {
    label = "SigmaBike modelo 2887 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 131519,
    wear_curve = 0.3330,
    preferred_supplier_ids = { 88, 62 },
    gen_id = 887,
}
_VP["VP-000888"] = {
    label = "AstraMotors modelo 2888 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 131656,
    wear_curve = 0.9561,
    preferred_supplier_ids = { 89, 65 },
    gen_id = 888,
}
_VP["VP-000889"] = {
    label = "RioVeículos modelo 2889 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 131793,
    wear_curve = 0.8196,
    preferred_supplier_ids = { 90, 68 },
    gen_id = 889,
}
_VP["VP-000890"] = {
    label = "NorteAuto modelo 2890 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 131930,
    wear_curve = 0.5641,
    preferred_supplier_ids = { 91, 71 },
    gen_id = 890,
}
_VP["VP-000891"] = {
    label = "DeltaMob modelo 2891 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 132067,
    wear_curve = 0.9402,
    preferred_supplier_ids = { 92, 74 },
    gen_id = 891,
}
_VP["VP-000892"] = {
    label = "OrionTruck modelo 2892 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 132204,
    wear_curve = 0.5522,
    preferred_supplier_ids = { 93, 77 },
    gen_id = 892,
}
_VP["VP-000893"] = {
    label = "SigmaBike modelo 2893 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 132341,
    wear_curve = 0.6599,
    preferred_supplier_ids = { 94, 80 },
    gen_id = 893,
}
_VP["VP-000894"] = {
    label = "AstraMotors modelo 2894 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 132478,
    wear_curve = 0.9006,
    preferred_supplier_ids = { 95, 83 },
    gen_id = 894,
}
_VP["VP-000895"] = {
    label = "RioVeículos modelo 2895 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 132615,
    wear_curve = 0.6749,
    preferred_supplier_ids = { 96, 86 },
    gen_id = 895,
}
_VP["VP-000896"] = {
    label = "NorteAuto modelo 2896 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 132752,
    wear_curve = 0.2441,
    preferred_supplier_ids = { 97, 89 },
    gen_id = 896,
}
_VP["VP-000897"] = {
    label = "DeltaMob modelo 2897 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 132889,
    wear_curve = 0.4237,
    preferred_supplier_ids = { 98, 92 },
    gen_id = 897,
}
_VP["VP-000898"] = {
    label = "OrionTruck modelo 2898 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 133026,
    wear_curve = 0.5268,
    preferred_supplier_ids = { 99, 95 },
    gen_id = 898,
}
_VP["VP-000899"] = {
    label = "SigmaBike modelo 2899 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 133163,
    wear_curve = 0.9457,
    preferred_supplier_ids = { 100, 98 },
    gen_id = 899,
}
_VP["VP-000900"] = {
    label = "AstraMotors modelo 2000 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 133300,
    wear_curve = 0.5372,
    preferred_supplier_ids = { 101, 101 },
    gen_id = 900,
}
_VP["VP-000901"] = {
    label = "RioVeículos modelo 2001 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 133437,
    wear_curve = 0.9242,
    preferred_supplier_ids = { 102, 104 },
    gen_id = 901,
}
_VP["VP-000902"] = {
    label = "NorteAuto modelo 2002 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 133574,
    wear_curve = 0.8914,
    preferred_supplier_ids = { 103, 107 },
    gen_id = 902,
}
_VP["VP-000903"] = {
    label = "DeltaMob modelo 2003 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 133711,
    wear_curve = 0.6604,
    preferred_supplier_ids = { 104, 110 },
    gen_id = 903,
}
_VP["VP-000904"] = {
    label = "OrionTruck modelo 2004 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 133848,
    wear_curve = 0.8949,
    preferred_supplier_ids = { 105, 113 },
    gen_id = 904,
}
_VP["VP-000905"] = {
    label = "SigmaBike modelo 2005 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 133985,
    wear_curve = 0.7159,
    preferred_supplier_ids = { 106, 116 },
    gen_id = 905,
}
_VP["VP-000906"] = {
    label = "AstraMotors modelo 2006 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 134122,
    wear_curve = 0.9690,
    preferred_supplier_ids = { 107, 119 },
    gen_id = 906,
}
_VP["VP-000907"] = {
    label = "RioVeículos modelo 2007 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 134259,
    wear_curve = 0.7351,
    preferred_supplier_ids = { 108, 122 },
    gen_id = 907,
}
_VP["VP-000908"] = {
    label = "NorteAuto modelo 2008 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 134396,
    wear_curve = 0.2106,
    preferred_supplier_ids = { 109, 125 },
    gen_id = 908,
}
_VP["VP-000909"] = {
    label = "DeltaMob modelo 2009 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 134533,
    wear_curve = 0.2940,
    preferred_supplier_ids = { 110, 128 },
    gen_id = 909,
}
_VP["VP-000910"] = {
    label = "OrionTruck modelo 2010 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 134670,
    wear_curve = 0.2894,
    preferred_supplier_ids = { 111, 131 },
    gen_id = 910,
}
_VP["VP-000911"] = {
    label = "SigmaBike modelo 2011 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 134807,
    wear_curve = 0.5223,
    preferred_supplier_ids = { 112, 134 },
    gen_id = 911,
}
_VP["VP-000912"] = {
    label = "AstraMotors modelo 2012 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 134944,
    wear_curve = 0.6048,
    preferred_supplier_ids = { 113, 137 },
    gen_id = 912,
}
_VP["VP-000913"] = {
    label = "RioVeículos modelo 2013 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 135081,
    wear_curve = 0.6361,
    preferred_supplier_ids = { 114, 140 },
    gen_id = 913,
}
_VP["VP-000914"] = {
    label = "NorteAuto modelo 2014 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 135218,
    wear_curve = 0.2511,
    preferred_supplier_ids = { 115, 143 },
    gen_id = 914,
}
_VP["VP-000915"] = {
    label = "DeltaMob modelo 2015 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 135355,
    wear_curve = 0.4092,
    preferred_supplier_ids = { 116, 146 },
    gen_id = 915,
}
_VP["VP-000916"] = {
    label = "OrionTruck modelo 2016 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 135492,
    wear_curve = 0.9057,
    preferred_supplier_ids = { 117, 149 },
    gen_id = 916,
}
_VP["VP-000917"] = {
    label = "SigmaBike modelo 2017 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 135629,
    wear_curve = 0.6695,
    preferred_supplier_ids = { 118, 152 },
    gen_id = 917,
}
_VP["VP-000918"] = {
    label = "AstraMotors modelo 2018 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 135766,
    wear_curve = 0.3850,
    preferred_supplier_ids = { 119, 155 },
    gen_id = 918,
}
_VP["VP-000919"] = {
    label = "RioVeículos modelo 2019 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 135903,
    wear_curve = 0.3992,
    preferred_supplier_ids = { 120, 158 },
    gen_id = 919,
}
_VP["VP-000920"] = {
    label = "NorteAuto modelo 2020 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 136040,
    wear_curve = 0.3884,
    preferred_supplier_ids = { 121, 161 },
    gen_id = 920,
}
_VP["VP-000921"] = {
    label = "DeltaMob modelo 2021 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 136177,
    wear_curve = 0.1578,
    preferred_supplier_ids = { 122, 164 },
    gen_id = 921,
}
_VP["VP-000922"] = {
    label = "OrionTruck modelo 2022 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 136314,
    wear_curve = 0.8987,
    preferred_supplier_ids = { 123, 167 },
    gen_id = 922,
}
_VP["VP-000923"] = {
    label = "SigmaBike modelo 2023 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 136451,
    wear_curve = 0.8522,
    preferred_supplier_ids = { 124, 170 },
    gen_id = 923,
}
_VP["VP-000924"] = {
    label = "AstraMotors modelo 2024 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 136588,
    wear_curve = 0.4052,
    preferred_supplier_ids = { 125, 173 },
    gen_id = 924,
}
_VP["VP-000925"] = {
    label = "RioVeículos modelo 2025 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 136725,
    wear_curve = 0.2639,
    preferred_supplier_ids = { 126, 176 },
    gen_id = 925,
}
_VP["VP-000926"] = {
    label = "NorteAuto modelo 2026 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 136862,
    wear_curve = 0.9403,
    preferred_supplier_ids = { 127, 179 },
    gen_id = 926,
}
_VP["VP-000927"] = {
    label = "DeltaMob modelo 2027 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 136999,
    wear_curve = 0.7225,
    preferred_supplier_ids = { 128, 182 },
    gen_id = 927,
}
_VP["VP-000928"] = {
    label = "OrionTruck modelo 2028 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 137136,
    wear_curve = 0.2570,
    preferred_supplier_ids = { 129, 185 },
    gen_id = 928,
}
_VP["VP-000929"] = {
    label = "SigmaBike modelo 2029 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 137273,
    wear_curve = 0.2098,
    preferred_supplier_ids = { 130, 188 },
    gen_id = 929,
}
_VP["VP-000930"] = {
    label = "AstraMotors modelo 2030 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 137410,
    wear_curve = 0.9383,
    preferred_supplier_ids = { 131, 191 },
    gen_id = 930,
}
_VP["VP-000931"] = {
    label = "RioVeículos modelo 2031 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 137547,
    wear_curve = 0.7447,
    preferred_supplier_ids = { 132, 194 },
    gen_id = 931,
}
_VP["VP-000932"] = {
    label = "NorteAuto modelo 2032 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 137684,
    wear_curve = 0.8646,
    preferred_supplier_ids = { 133, 197 },
    gen_id = 932,
}
_VP["VP-000933"] = {
    label = "DeltaMob modelo 2033 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 137821,
    wear_curve = 0.5639,
    preferred_supplier_ids = { 134, 200 },
    gen_id = 933,
}
_VP["VP-000934"] = {
    label = "OrionTruck modelo 2034 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 137958,
    wear_curve = 0.5823,
    preferred_supplier_ids = { 135, 3 },
    gen_id = 934,
}
_VP["VP-000935"] = {
    label = "SigmaBike modelo 2035 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 138095,
    wear_curve = 0.5309,
    preferred_supplier_ids = { 136, 6 },
    gen_id = 935,
}
_VP["VP-000936"] = {
    label = "AstraMotors modelo 2036 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 138232,
    wear_curve = 0.2627,
    preferred_supplier_ids = { 137, 9 },
    gen_id = 936,
}
_VP["VP-000937"] = {
    label = "RioVeículos modelo 2037 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 138369,
    wear_curve = 0.9515,
    preferred_supplier_ids = { 138, 12 },
    gen_id = 937,
}
_VP["VP-000938"] = {
    label = "NorteAuto modelo 2038 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 138506,
    wear_curve = 0.3734,
    preferred_supplier_ids = { 139, 15 },
    gen_id = 938,
}
_VP["VP-000939"] = {
    label = "DeltaMob modelo 2039 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 138643,
    wear_curve = 0.8554,
    preferred_supplier_ids = { 140, 18 },
    gen_id = 939,
}
_VP["VP-000940"] = {
    label = "OrionTruck modelo 2040 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 138780,
    wear_curve = 0.8523,
    preferred_supplier_ids = { 141, 21 },
    gen_id = 940,
}
_VP["VP-000941"] = {
    label = "SigmaBike modelo 2041 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 138917,
    wear_curve = 0.5946,
    preferred_supplier_ids = { 142, 24 },
    gen_id = 941,
}
_VP["VP-000942"] = {
    label = "AstraMotors modelo 2042 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 139054,
    wear_curve = 0.4373,
    preferred_supplier_ids = { 143, 27 },
    gen_id = 942,
}
_VP["VP-000943"] = {
    label = "RioVeículos modelo 2043 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 139191,
    wear_curve = 0.5142,
    preferred_supplier_ids = { 144, 30 },
    gen_id = 943,
}
_VP["VP-000944"] = {
    label = "NorteAuto modelo 2044 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 139328,
    wear_curve = 0.9585,
    preferred_supplier_ids = { 145, 33 },
    gen_id = 944,
}
_VP["VP-000945"] = {
    label = "DeltaMob modelo 2045 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 139465,
    wear_curve = 0.9513,
    preferred_supplier_ids = { 146, 36 },
    gen_id = 945,
}
_VP["VP-000946"] = {
    label = "OrionTruck modelo 2046 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 139602,
    wear_curve = 0.7015,
    preferred_supplier_ids = { 147, 39 },
    gen_id = 946,
}
_VP["VP-000947"] = {
    label = "SigmaBike modelo 2047 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 139739,
    wear_curve = 0.3111,
    preferred_supplier_ids = { 148, 42 },
    gen_id = 947,
}
_VP["VP-000948"] = {
    label = "AstraMotors modelo 2048 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 139876,
    wear_curve = 0.4044,
    preferred_supplier_ids = { 149, 45 },
    gen_id = 948,
}
_VP["VP-000949"] = {
    label = "RioVeículos modelo 2049 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 140013,
    wear_curve = 0.5863,
    preferred_supplier_ids = { 150, 48 },
    gen_id = 949,
}
_VP["VP-000950"] = {
    label = "NorteAuto modelo 2050 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 140150,
    wear_curve = 0.8057,
    preferred_supplier_ids = { 151, 51 },
    gen_id = 950,
}
_VP["VP-000951"] = {
    label = "DeltaMob modelo 2051 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 140287,
    wear_curve = 0.5836,
    preferred_supplier_ids = { 152, 54 },
    gen_id = 951,
}
_VP["VP-000952"] = {
    label = "OrionTruck modelo 2052 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 140424,
    wear_curve = 0.7236,
    preferred_supplier_ids = { 153, 57 },
    gen_id = 952,
}
_VP["VP-000953"] = {
    label = "SigmaBike modelo 2053 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 140561,
    wear_curve = 0.6675,
    preferred_supplier_ids = { 154, 60 },
    gen_id = 953,
}
_VP["VP-000954"] = {
    label = "AstraMotors modelo 2054 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 140698,
    wear_curve = 0.8717,
    preferred_supplier_ids = { 155, 63 },
    gen_id = 954,
}
_VP["VP-000955"] = {
    label = "RioVeículos modelo 2055 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 140835,
    wear_curve = 0.9936,
    preferred_supplier_ids = { 156, 66 },
    gen_id = 955,
}
_VP["VP-000956"] = {
    label = "NorteAuto modelo 2056 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 140972,
    wear_curve = 0.3959,
    preferred_supplier_ids = { 157, 69 },
    gen_id = 956,
}
_VP["VP-000957"] = {
    label = "DeltaMob modelo 2057 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 141109,
    wear_curve = 0.5950,
    preferred_supplier_ids = { 158, 72 },
    gen_id = 957,
}
_VP["VP-000958"] = {
    label = "OrionTruck modelo 2058 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 141246,
    wear_curve = 0.2268,
    preferred_supplier_ids = { 159, 75 },
    gen_id = 958,
}
_VP["VP-000959"] = {
    label = "SigmaBike modelo 2059 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 141383,
    wear_curve = 0.4717,
    preferred_supplier_ids = { 160, 78 },
    gen_id = 959,
}
_VP["VP-000960"] = {
    label = "AstraMotors modelo 2060 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 141520,
    wear_curve = 0.1548,
    preferred_supplier_ids = { 161, 81 },
    gen_id = 960,
}
_VP["VP-000961"] = {
    label = "RioVeículos modelo 2061 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 141657,
    wear_curve = 0.8830,
    preferred_supplier_ids = { 162, 84 },
    gen_id = 961,
}
_VP["VP-000962"] = {
    label = "NorteAuto modelo 2062 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 141794,
    wear_curve = 0.7325,
    preferred_supplier_ids = { 163, 87 },
    gen_id = 962,
}
_VP["VP-000963"] = {
    label = "DeltaMob modelo 2063 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 141931,
    wear_curve = 0.5163,
    preferred_supplier_ids = { 164, 90 },
    gen_id = 963,
}
_VP["VP-000964"] = {
    label = "OrionTruck modelo 2064 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 142068,
    wear_curve = 0.4764,
    preferred_supplier_ids = { 165, 93 },
    gen_id = 964,
}
_VP["VP-000965"] = {
    label = "SigmaBike modelo 2065 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 142205,
    wear_curve = 0.8760,
    preferred_supplier_ids = { 166, 96 },
    gen_id = 965,
}
_VP["VP-000966"] = {
    label = "AstraMotors modelo 2066 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 142342,
    wear_curve = 0.3355,
    preferred_supplier_ids = { 167, 99 },
    gen_id = 966,
}
_VP["VP-000967"] = {
    label = "RioVeículos modelo 2067 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 142479,
    wear_curve = 0.8098,
    preferred_supplier_ids = { 168, 102 },
    gen_id = 967,
}
_VP["VP-000968"] = {
    label = "NorteAuto modelo 2068 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 142616,
    wear_curve = 0.7727,
    preferred_supplier_ids = { 169, 105 },
    gen_id = 968,
}
_VP["VP-000969"] = {
    label = "DeltaMob modelo 2069 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 142753,
    wear_curve = 0.3432,
    preferred_supplier_ids = { 170, 108 },
    gen_id = 969,
}
_VP["VP-000970"] = {
    label = "OrionTruck modelo 2070 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 142890,
    wear_curve = 0.9211,
    preferred_supplier_ids = { 171, 111 },
    gen_id = 970,
}
_VP["VP-000971"] = {
    label = "SigmaBike modelo 2071 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 143027,
    wear_curve = 0.9782,
    preferred_supplier_ids = { 172, 114 },
    gen_id = 971,
}
_VP["VP-000972"] = {
    label = "AstraMotors modelo 2072 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 143164,
    wear_curve = 0.6732,
    preferred_supplier_ids = { 173, 117 },
    gen_id = 972,
}
_VP["VP-000973"] = {
    label = "RioVeículos modelo 2073 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 143301,
    wear_curve = 0.6105,
    preferred_supplier_ids = { 174, 120 },
    gen_id = 973,
}
_VP["VP-000974"] = {
    label = "NorteAuto modelo 2074 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 143438,
    wear_curve = 0.3582,
    preferred_supplier_ids = { 175, 123 },
    gen_id = 974,
}
_VP["VP-000975"] = {
    label = "DeltaMob modelo 2075 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 143575,
    wear_curve = 0.4331,
    preferred_supplier_ids = { 176, 126 },
    gen_id = 975,
}
_VP["VP-000976"] = {
    label = "OrionTruck modelo 2076 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 143712,
    wear_curve = 0.5947,
    preferred_supplier_ids = { 177, 129 },
    gen_id = 976,
}
_VP["VP-000977"] = {
    label = "SigmaBike modelo 2077 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 143849,
    wear_curve = 0.2462,
    preferred_supplier_ids = { 178, 132 },
    gen_id = 977,
}
_VP["VP-000978"] = {
    label = "AstraMotors modelo 2078 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 143986,
    wear_curve = 0.8923,
    preferred_supplier_ids = { 179, 135 },
    gen_id = 978,
}
_VP["VP-000979"] = {
    label = "RioVeículos modelo 2079 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 144123,
    wear_curve = 0.3454,
    preferred_supplier_ids = { 180, 138 },
    gen_id = 979,
}
_VP["VP-000980"] = {
    label = "NorteAuto modelo 2080 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 144260,
    wear_curve = 0.7078,
    preferred_supplier_ids = { 181, 141 },
    gen_id = 980,
}
_VP["VP-000981"] = {
    label = "DeltaMob modelo 2081 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 144397,
    wear_curve = 0.9355,
    preferred_supplier_ids = { 182, 144 },
    gen_id = 981,
}
_VP["VP-000982"] = {
    label = "OrionTruck modelo 2082 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 144534,
    wear_curve = 0.8004,
    preferred_supplier_ids = { 183, 147 },
    gen_id = 982,
}
_VP["VP-000983"] = {
    label = "SigmaBike modelo 2083 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 144671,
    wear_curve = 0.9650,
    preferred_supplier_ids = { 184, 150 },
    gen_id = 983,
}
_VP["VP-000984"] = {
    label = "AstraMotors modelo 2084 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 144808,
    wear_curve = 0.1726,
    preferred_supplier_ids = { 185, 153 },
    gen_id = 984,
}
_VP["VP-000985"] = {
    label = "RioVeículos modelo 2085 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 144945,
    wear_curve = 0.2868,
    preferred_supplier_ids = { 186, 156 },
    gen_id = 985,
}
_VP["VP-000986"] = {
    label = "NorteAuto modelo 2086 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 145082,
    wear_curve = 0.1889,
    preferred_supplier_ids = { 187, 159 },
    gen_id = 986,
}
_VP["VP-000987"] = {
    label = "DeltaMob modelo 2087 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 145219,
    wear_curve = 0.4621,
    preferred_supplier_ids = { 188, 162 },
    gen_id = 987,
}
_VP["VP-000988"] = {
    label = "OrionTruck modelo 2088 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 145356,
    wear_curve = 0.4301,
    preferred_supplier_ids = { 189, 165 },
    gen_id = 988,
}
_VP["VP-000989"] = {
    label = "SigmaBike modelo 2089 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 145493,
    wear_curve = 0.3766,
    preferred_supplier_ids = { 190, 168 },
    gen_id = 989,
}
_VP["VP-000990"] = {
    label = "AstraMotors modelo 2090 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 145630,
    wear_curve = 0.1744,
    preferred_supplier_ids = { 191, 171 },
    gen_id = 990,
}
_VP["VP-000991"] = {
    label = "RioVeículos modelo 2091 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 145767,
    wear_curve = 0.8284,
    preferred_supplier_ids = { 192, 174 },
    gen_id = 991,
}
_VP["VP-000992"] = {
    label = "NorteAuto modelo 2092 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 145904,
    wear_curve = 0.3962,
    preferred_supplier_ids = { 193, 177 },
    gen_id = 992,
}
_VP["VP-000993"] = {
    label = "DeltaMob modelo 2093 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 146041,
    wear_curve = 0.7038,
    preferred_supplier_ids = { 194, 180 },
    gen_id = 993,
}
_VP["VP-000994"] = {
    label = "OrionTruck modelo 2094 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 146178,
    wear_curve = 0.4021,
    preferred_supplier_ids = { 195, 183 },
    gen_id = 994,
}
_VP["VP-000995"] = {
    label = "SigmaBike modelo 2095 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 146315,
    wear_curve = 0.2384,
    preferred_supplier_ids = { 196, 186 },
    gen_id = 995,
}
_VP["VP-000996"] = {
    label = "AstraMotors modelo 2096 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 146452,
    wear_curve = 0.5172,
    preferred_supplier_ids = { 197, 189 },
    gen_id = 996,
}
_VP["VP-000997"] = {
    label = "RioVeículos modelo 2097 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 146589,
    wear_curve = 0.5340,
    preferred_supplier_ids = { 198, 192 },
    gen_id = 997,
}
_VP["VP-000998"] = {
    label = "NorteAuto modelo 2098 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 146726,
    wear_curve = 0.9178,
    preferred_supplier_ids = { 199, 195 },
    gen_id = 998,
}
_VP["VP-000999"] = {
    label = "DeltaMob modelo 2099 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 146863,
    wear_curve = 0.7857,
    preferred_supplier_ids = { 200, 198 },
    gen_id = 999,
}
_VP["VP-001000"] = {
    label = "OrionTruck modelo 2100 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 147000,
    wear_curve = 0.5627,
    preferred_supplier_ids = { 1, 1 },
    gen_id = 1000,
}
_VP["VP-001001"] = {
    label = "SigmaBike modelo 2101 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 147137,
    wear_curve = 0.9797,
    preferred_supplier_ids = { 2, 4 },
    gen_id = 1001,
}
_VP["VP-001002"] = {
    label = "AstraMotors modelo 2102 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 147274,
    wear_curve = 0.1728,
    preferred_supplier_ids = { 3, 7 },
    gen_id = 1002,
}
_VP["VP-001003"] = {
    label = "RioVeículos modelo 2103 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 147411,
    wear_curve = 0.3672,
    preferred_supplier_ids = { 4, 10 },
    gen_id = 1003,
}
_VP["VP-001004"] = {
    label = "NorteAuto modelo 2104 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 147548,
    wear_curve = 0.8873,
    preferred_supplier_ids = { 5, 13 },
    gen_id = 1004,
}
_VP["VP-001005"] = {
    label = "DeltaMob modelo 2105 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 147685,
    wear_curve = 0.7718,
    preferred_supplier_ids = { 6, 16 },
    gen_id = 1005,
}
_VP["VP-001006"] = {
    label = "OrionTruck modelo 2106 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 147822,
    wear_curve = 0.7026,
    preferred_supplier_ids = { 7, 19 },
    gen_id = 1006,
}
_VP["VP-001007"] = {
    label = "SigmaBike modelo 2107 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 147959,
    wear_curve = 0.6072,
    preferred_supplier_ids = { 8, 22 },
    gen_id = 1007,
}
_VP["VP-001008"] = {
    label = "AstraMotors modelo 2108 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 148096,
    wear_curve = 0.9616,
    preferred_supplier_ids = { 9, 25 },
    gen_id = 1008,
}
_VP["VP-001009"] = {
    label = "RioVeículos modelo 2109 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 148233,
    wear_curve = 0.2940,
    preferred_supplier_ids = { 10, 28 },
    gen_id = 1009,
}
_VP["VP-001010"] = {
    label = "NorteAuto modelo 2110 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 148370,
    wear_curve = 0.2336,
    preferred_supplier_ids = { 11, 31 },
    gen_id = 1010,
}
_VP["VP-001011"] = {
    label = "DeltaMob modelo 2111 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 148507,
    wear_curve = 0.8686,
    preferred_supplier_ids = { 12, 34 },
    gen_id = 1011,
}
_VP["VP-001012"] = {
    label = "OrionTruck modelo 2112 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 148644,
    wear_curve = 0.2308,
    preferred_supplier_ids = { 13, 37 },
    gen_id = 1012,
}
_VP["VP-001013"] = {
    label = "SigmaBike modelo 2113 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 148781,
    wear_curve = 0.6101,
    preferred_supplier_ids = { 14, 40 },
    gen_id = 1013,
}
_VP["VP-001014"] = {
    label = "AstraMotors modelo 2114 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 148918,
    wear_curve = 0.5847,
    preferred_supplier_ids = { 15, 43 },
    gen_id = 1014,
}
_VP["VP-001015"] = {
    label = "RioVeículos modelo 2115 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 149055,
    wear_curve = 0.4671,
    preferred_supplier_ids = { 16, 46 },
    gen_id = 1015,
}
_VP["VP-001016"] = {
    label = "NorteAuto modelo 2116 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 149192,
    wear_curve = 0.6250,
    preferred_supplier_ids = { 17, 49 },
    gen_id = 1016,
}
_VP["VP-001017"] = {
    label = "DeltaMob modelo 2117 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 149329,
    wear_curve = 0.5798,
    preferred_supplier_ids = { 18, 52 },
    gen_id = 1017,
}
_VP["VP-001018"] = {
    label = "OrionTruck modelo 2118 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 149466,
    wear_curve = 0.6413,
    preferred_supplier_ids = { 19, 55 },
    gen_id = 1018,
}
_VP["VP-001019"] = {
    label = "SigmaBike modelo 2119 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 149603,
    wear_curve = 0.8127,
    preferred_supplier_ids = { 20, 58 },
    gen_id = 1019,
}
_VP["VP-001020"] = {
    label = "AstraMotors modelo 2120 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 149740,
    wear_curve = 0.9053,
    preferred_supplier_ids = { 21, 61 },
    gen_id = 1020,
}
_VP["VP-001021"] = {
    label = "RioVeículos modelo 2121 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 149877,
    wear_curve = 0.4706,
    preferred_supplier_ids = { 22, 64 },
    gen_id = 1021,
}
_VP["VP-001022"] = {
    label = "NorteAuto modelo 2122 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 150014,
    wear_curve = 0.2447,
    preferred_supplier_ids = { 23, 67 },
    gen_id = 1022,
}
_VP["VP-001023"] = {
    label = "DeltaMob modelo 2123 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 150151,
    wear_curve = 0.2676,
    preferred_supplier_ids = { 24, 70 },
    gen_id = 1023,
}
_VP["VP-001024"] = {
    label = "OrionTruck modelo 2124 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 150288,
    wear_curve = 0.4438,
    preferred_supplier_ids = { 25, 73 },
    gen_id = 1024,
}
_VP["VP-001025"] = {
    label = "SigmaBike modelo 2125 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 150425,
    wear_curve = 0.2831,
    preferred_supplier_ids = { 26, 76 },
    gen_id = 1025,
}
_VP["VP-001026"] = {
    label = "AstraMotors modelo 2126 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 150562,
    wear_curve = 0.4000,
    preferred_supplier_ids = { 27, 79 },
    gen_id = 1026,
}
_VP["VP-001027"] = {
    label = "RioVeículos modelo 2127 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 150699,
    wear_curve = 0.2206,
    preferred_supplier_ids = { 28, 82 },
    gen_id = 1027,
}
_VP["VP-001028"] = {
    label = "NorteAuto modelo 2128 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 150836,
    wear_curve = 0.4976,
    preferred_supplier_ids = { 29, 85 },
    gen_id = 1028,
}
_VP["VP-001029"] = {
    label = "DeltaMob modelo 2129 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 150973,
    wear_curve = 0.7750,
    preferred_supplier_ids = { 30, 88 },
    gen_id = 1029,
}
_VP["VP-001030"] = {
    label = "OrionTruck modelo 2130 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 151110,
    wear_curve = 0.7184,
    preferred_supplier_ids = { 31, 91 },
    gen_id = 1030,
}
_VP["VP-001031"] = {
    label = "SigmaBike modelo 2131 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 151247,
    wear_curve = 0.2918,
    preferred_supplier_ids = { 32, 94 },
    gen_id = 1031,
}
_VP["VP-001032"] = {
    label = "AstraMotors modelo 2132 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 151384,
    wear_curve = 0.5994,
    preferred_supplier_ids = { 33, 97 },
    gen_id = 1032,
}
_VP["VP-001033"] = {
    label = "RioVeículos modelo 2133 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 151521,
    wear_curve = 0.9251,
    preferred_supplier_ids = { 34, 100 },
    gen_id = 1033,
}
_VP["VP-001034"] = {
    label = "NorteAuto modelo 2134 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 151658,
    wear_curve = 0.3247,
    preferred_supplier_ids = { 35, 103 },
    gen_id = 1034,
}
_VP["VP-001035"] = {
    label = "DeltaMob modelo 2135 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 151795,
    wear_curve = 0.7433,
    preferred_supplier_ids = { 36, 106 },
    gen_id = 1035,
}
_VP["VP-001036"] = {
    label = "OrionTruck modelo 2136 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 151932,
    wear_curve = 0.6503,
    preferred_supplier_ids = { 37, 109 },
    gen_id = 1036,
}
_VP["VP-001037"] = {
    label = "SigmaBike modelo 2137 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 152069,
    wear_curve = 0.2468,
    preferred_supplier_ids = { 38, 112 },
    gen_id = 1037,
}
_VP["VP-001038"] = {
    label = "AstraMotors modelo 2138 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 152206,
    wear_curve = 0.1685,
    preferred_supplier_ids = { 39, 115 },
    gen_id = 1038,
}
_VP["VP-001039"] = {
    label = "RioVeículos modelo 2139 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 152343,
    wear_curve = 0.6338,
    preferred_supplier_ids = { 40, 118 },
    gen_id = 1039,
}
_VP["VP-001040"] = {
    label = "NorteAuto modelo 2140 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 152480,
    wear_curve = 0.8113,
    preferred_supplier_ids = { 41, 121 },
    gen_id = 1040,
}
_VP["VP-001041"] = {
    label = "DeltaMob modelo 2141 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 152617,
    wear_curve = 0.9686,
    preferred_supplier_ids = { 42, 124 },
    gen_id = 1041,
}
_VP["VP-001042"] = {
    label = "OrionTruck modelo 2142 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 152754,
    wear_curve = 0.6460,
    preferred_supplier_ids = { 43, 127 },
    gen_id = 1042,
}
_VP["VP-001043"] = {
    label = "SigmaBike modelo 2143 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 152891,
    wear_curve = 0.8687,
    preferred_supplier_ids = { 44, 130 },
    gen_id = 1043,
}
_VP["VP-001044"] = {
    label = "AstraMotors modelo 2144 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 153028,
    wear_curve = 0.8550,
    preferred_supplier_ids = { 45, 133 },
    gen_id = 1044,
}
_VP["VP-001045"] = {
    label = "RioVeículos modelo 2145 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 153165,
    wear_curve = 0.2159,
    preferred_supplier_ids = { 46, 136 },
    gen_id = 1045,
}
_VP["VP-001046"] = {
    label = "NorteAuto modelo 2146 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 153302,
    wear_curve = 0.5468,
    preferred_supplier_ids = { 47, 139 },
    gen_id = 1046,
}
_VP["VP-001047"] = {
    label = "DeltaMob modelo 2147 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 153439,
    wear_curve = 0.2578,
    preferred_supplier_ids = { 48, 142 },
    gen_id = 1047,
}
_VP["VP-001048"] = {
    label = "OrionTruck modelo 2148 série I",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 153576,
    wear_curve = 0.8496,
    preferred_supplier_ids = { 49, 145 },
    gen_id = 1048,
}
_VP["VP-001049"] = {
    label = "SigmaBike modelo 2149 série J",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 153713,
    wear_curve = 0.7862,
    preferred_supplier_ids = { 50, 148 },
    gen_id = 1049,
}
_VP["VP-001050"] = {
    label = "AstraMotors modelo 2150 série K",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 153850,
    wear_curve = 0.1552,
    preferred_supplier_ids = { 51, 151 },
    gen_id = 1050,
}
_VP["VP-001051"] = {
    label = "RioVeículos modelo 2151 série L",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 153987,
    wear_curve = 0.9572,
    preferred_supplier_ids = { 52, 154 },
    gen_id = 1051,
}
_VP["VP-001052"] = {
    label = "NorteAuto modelo 2152 série M",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 154124,
    wear_curve = 0.1600,
    preferred_supplier_ids = { 53, 157 },
    gen_id = 1052,
}
_VP["VP-001053"] = {
    label = "DeltaMob modelo 2153 série N",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 154261,
    wear_curve = 0.4767,
    preferred_supplier_ids = { 54, 160 },
    gen_id = 1053,
}
_VP["VP-001054"] = {
    label = "OrionTruck modelo 2154 série O",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 154398,
    wear_curve = 0.4974,
    preferred_supplier_ids = { 55, 163 },
    gen_id = 1054,
}
_VP["VP-001055"] = {
    label = "SigmaBike modelo 2155 série P",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 154535,
    wear_curve = 0.7843,
    preferred_supplier_ids = { 56, 166 },
    gen_id = 1055,
}
_VP["VP-001056"] = {
    label = "AstraMotors modelo 2156 série Q",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 154672,
    wear_curve = 0.4642,
    preferred_supplier_ids = { 57, 169 },
    gen_id = 1056,
}
_VP["VP-001057"] = {
    label = "RioVeículos modelo 2157 série R",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 154809,
    wear_curve = 0.8827,
    preferred_supplier_ids = { 58, 172 },
    gen_id = 1057,
}
_VP["VP-001058"] = {
    label = "NorteAuto modelo 2158 série S",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 154946,
    wear_curve = 0.2893,
    preferred_supplier_ids = { 59, 175 },
    gen_id = 1058,
}
_VP["VP-001059"] = {
    label = "DeltaMob modelo 2159 série T",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 155083,
    wear_curve = 0.2547,
    preferred_supplier_ids = { 60, 178 },
    gen_id = 1059,
}
_VP["VP-001060"] = {
    label = "OrionTruck modelo 2160 série U",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 155220,
    wear_curve = 0.8448,
    preferred_supplier_ids = { 61, 181 },
    gen_id = 1060,
}
_VP["VP-001061"] = {
    label = "SigmaBike modelo 2161 série V",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 155357,
    wear_curve = 0.2990,
    preferred_supplier_ids = { 62, 184 },
    gen_id = 1061,
}
_VP["VP-001062"] = {
    label = "AstraMotors modelo 2162 série W",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 155494,
    wear_curve = 0.8494,
    preferred_supplier_ids = { 63, 187 },
    gen_id = 1062,
}
_VP["VP-001063"] = {
    label = "RioVeículos modelo 2163 série X",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 155631,
    wear_curve = 0.5561,
    preferred_supplier_ids = { 64, 190 },
    gen_id = 1063,
}
_VP["VP-001064"] = {
    label = "NorteAuto modelo 2164 série Y",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 155768,
    wear_curve = 0.4285,
    preferred_supplier_ids = { 65, 193 },
    gen_id = 1064,
}
_VP["VP-001065"] = {
    label = "DeltaMob modelo 2165 série Z",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 155905,
    wear_curve = 0.1698,
    preferred_supplier_ids = { 66, 196 },
    gen_id = 1065,
}
_VP["VP-001066"] = {
    label = "OrionTruck modelo 2166 série A",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 156042,
    wear_curve = 0.5580,
    preferred_supplier_ids = { 67, 199 },
    gen_id = 1066,
}
_VP["VP-001067"] = {
    label = "SigmaBike modelo 2167 série B",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 156179,
    wear_curve = 0.3344,
    preferred_supplier_ids = { 68, 2 },
    gen_id = 1067,
}
_VP["VP-001068"] = {
    label = "AstraMotors modelo 2168 série C",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 156316,
    wear_curve = 0.4590,
    preferred_supplier_ids = { 69, 5 },
    gen_id = 1068,
}
_VP["VP-001069"] = {
    label = "RioVeículos modelo 2169 série D",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 156453,
    wear_curve = 0.3422,
    preferred_supplier_ids = { 70, 8 },
    gen_id = 1069,
}
_VP["VP-001070"] = {
    label = "NorteAuto modelo 2170 série E",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 156590,
    wear_curve = 0.6018,
    preferred_supplier_ids = { 71, 11 },
    gen_id = 1070,
}
_VP["VP-001071"] = {
    label = "DeltaMob modelo 2171 série F",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 156727,
    wear_curve = 0.2301,
    preferred_supplier_ids = { 72, 14 },
    gen_id = 1071,
}
_VP["VP-001072"] = {
    label = "OrionTruck modelo 2172 série G",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 156864,
    wear_curve = 0.4497,
    preferred_supplier_ids = { 73, 17 },
    gen_id = 1072,
}
_VP["VP-001073"] = {
    label = "SigmaBike modelo 2173 série H",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 157001,
    wear_curve = 0.2448,
    preferred_supplier_ids = { 74, 20 },
    gen_id = 1073,
}
_VP["VP-001074"] = {
    label = "AstraMotors modelo 2174 série I",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 157138,
    wear_curve = 0.6102,
    preferred_supplier_ids = { 75, 23 },
    gen_id = 1074,
}
_VP["VP-001075"] = {
    label = "RioVeículos modelo 2175 série J",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 157275,
    wear_curve = 0.5161,
    preferred_supplier_ids = { 76, 26 },
    gen_id = 1075,
}
_VP["VP-001076"] = {
    label = "NorteAuto modelo 2176 série K",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 157412,
    wear_curve = 0.2783,
    preferred_supplier_ids = { 77, 29 },
    gen_id = 1076,
}
_VP["VP-001077"] = {
    label = "DeltaMob modelo 2177 série L",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 157549,
    wear_curve = 0.3725,
    preferred_supplier_ids = { 78, 32 },
    gen_id = 1077,
}
_VP["VP-001078"] = {
    label = "OrionTruck modelo 2178 série M",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 157686,
    wear_curve = 0.3976,
    preferred_supplier_ids = { 79, 35 },
    gen_id = 1078,
}
_VP["VP-001079"] = {
    label = "SigmaBike modelo 2179 série N",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 157823,
    wear_curve = 0.3496,
    preferred_supplier_ids = { 80, 38 },
    gen_id = 1079,
}
_VP["VP-001080"] = {
    label = "AstraMotors modelo 2180 série O",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 157960,
    wear_curve = 0.7440,
    preferred_supplier_ids = { 81, 41 },
    gen_id = 1080,
}
_VP["VP-001081"] = {
    label = "RioVeículos modelo 2181 série P",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 158097,
    wear_curve = 0.3716,
    preferred_supplier_ids = { 82, 44 },
    gen_id = 1081,
}
_VP["VP-001082"] = {
    label = "NorteAuto modelo 2182 série Q",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 158234,
    wear_curve = 0.4417,
    preferred_supplier_ids = { 83, 47 },
    gen_id = 1082,
}
_VP["VP-001083"] = {
    label = "DeltaMob modelo 2183 série R",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 158371,
    wear_curve = 0.5645,
    preferred_supplier_ids = { 84, 50 },
    gen_id = 1083,
}
_VP["VP-001084"] = {
    label = "OrionTruck modelo 2184 série S",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 158508,
    wear_curve = 0.4245,
    preferred_supplier_ids = { 85, 53 },
    gen_id = 1084,
}
_VP["VP-001085"] = {
    label = "SigmaBike modelo 2185 série T",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 158645,
    wear_curve = 0.4335,
    preferred_supplier_ids = { 86, 56 },
    gen_id = 1085,
}
_VP["VP-001086"] = {
    label = "AstraMotors modelo 2186 série U",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 158782,
    wear_curve = 0.7394,
    preferred_supplier_ids = { 87, 59 },
    gen_id = 1086,
}
_VP["VP-001087"] = {
    label = "RioVeículos modelo 2187 série V",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 158919,
    wear_curve = 0.2428,
    preferred_supplier_ids = { 88, 62 },
    gen_id = 1087,
}
_VP["VP-001088"] = {
    label = "NorteAuto modelo 2188 série W",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 159056,
    wear_curve = 0.4778,
    preferred_supplier_ids = { 89, 65 },
    gen_id = 1088,
}
_VP["VP-001089"] = {
    label = "DeltaMob modelo 2189 série X",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 159193,
    wear_curve = 0.1652,
    preferred_supplier_ids = { 90, 68 },
    gen_id = 1089,
}
_VP["VP-001090"] = {
    label = "OrionTruck modelo 2190 série Y",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 159330,
    wear_curve = 0.4431,
    preferred_supplier_ids = { 91, 71 },
    gen_id = 1090,
}
_VP["VP-001091"] = {
    label = "SigmaBike modelo 2191 série Z",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 159467,
    wear_curve = 0.4645,
    preferred_supplier_ids = { 92, 74 },
    gen_id = 1091,
}
_VP["VP-001092"] = {
    label = "AstraMotors modelo 2192 série A",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 159604,
    wear_curve = 0.3524,
    preferred_supplier_ids = { 93, 77 },
    gen_id = 1092,
}
_VP["VP-001093"] = {
    label = "RioVeículos modelo 2193 série B",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 159741,
    wear_curve = 0.3697,
    preferred_supplier_ids = { 94, 80 },
    gen_id = 1093,
}
_VP["VP-001094"] = {
    label = "NorteAuto modelo 2194 série C",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 159878,
    wear_curve = 0.8954,
    preferred_supplier_ids = { 95, 83 },
    gen_id = 1094,
}
_VP["VP-001095"] = {
    label = "DeltaMob modelo 2195 série D",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 160015,
    wear_curve = 0.8007,
    preferred_supplier_ids = { 96, 86 },
    gen_id = 1095,
}
_VP["VP-001096"] = {
    label = "OrionTruck modelo 2196 série E",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 160152,
    wear_curve = 0.7245,
    preferred_supplier_ids = { 97, 89 },
    gen_id = 1096,
}
_VP["VP-001097"] = {
    label = "SigmaBike modelo 2197 série F",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 160289,
    wear_curve = 0.6296,
    preferred_supplier_ids = { 98, 92 },
    gen_id = 1097,
}
_VP["VP-001098"] = {
    label = "AstraMotors modelo 2198 série G",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 160426,
    wear_curve = 0.4390,
    preferred_supplier_ids = { 99, 95 },
    gen_id = 1098,
}
_VP["VP-001099"] = {
    label = "RioVeículos modelo 2199 série H",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 160563,
    wear_curve = 0.6753,
    preferred_supplier_ids = { 100, 98 },
    gen_id = 1099,
}
_VP["VP-001100"] = {
    label = "NorteAuto modelo 2200 série I",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 160700,
    wear_curve = 0.4517,
    preferred_supplier_ids = { 101, 101 },
    gen_id = 1100,
}
_VP["VP-001101"] = {
    label = "DeltaMob modelo 2201 série J",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 160837,
    wear_curve = 0.2529,
    preferred_supplier_ids = { 102, 104 },
    gen_id = 1101,
}
_VP["VP-001102"] = {
    label = "OrionTruck modelo 2202 série K",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 160974,
    wear_curve = 0.1959,
    preferred_supplier_ids = { 103, 107 },
    gen_id = 1102,
}
_VP["VP-001103"] = {
    label = "SigmaBike modelo 2203 série L",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 161111,
    wear_curve = 0.9326,
    preferred_supplier_ids = { 104, 110 },
    gen_id = 1103,
}
_VP["VP-001104"] = {
    label = "AstraMotors modelo 2204 série M",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 161248,
    wear_curve = 0.8868,
    preferred_supplier_ids = { 105, 113 },
    gen_id = 1104,
}
_VP["VP-001105"] = {
    label = "RioVeículos modelo 2205 série N",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 161385,
    wear_curve = 0.9980,
    preferred_supplier_ids = { 106, 116 },
    gen_id = 1105,
}
_VP["VP-001106"] = {
    label = "NorteAuto modelo 2206 série O",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 161522,
    wear_curve = 0.2669,
    preferred_supplier_ids = { 107, 119 },
    gen_id = 1106,
}
_VP["VP-001107"] = {
    label = "DeltaMob modelo 2207 série P",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 161659,
    wear_curve = 0.3131,
    preferred_supplier_ids = { 108, 122 },
    gen_id = 1107,
}
_VP["VP-001108"] = {
    label = "OrionTruck modelo 2208 série Q",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 161796,
    wear_curve = 0.5149,
    preferred_supplier_ids = { 109, 125 },
    gen_id = 1108,
}
_VP["VP-001109"] = {
    label = "SigmaBike modelo 2209 série R",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 161933,
    wear_curve = 0.8623,
    preferred_supplier_ids = { 110, 128 },
    gen_id = 1109,
}
_VP["VP-001110"] = {
    label = "AstraMotors modelo 2210 série S",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 162070,
    wear_curve = 0.8703,
    preferred_supplier_ids = { 111, 131 },
    gen_id = 1110,
}
_VP["VP-001111"] = {
    label = "RioVeículos modelo 2211 série T",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 162207,
    wear_curve = 0.4497,
    preferred_supplier_ids = { 112, 134 },
    gen_id = 1111,
}
_VP["VP-001112"] = {
    label = "NorteAuto modelo 2212 série U",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 162344,
    wear_curve = 0.4847,
    preferred_supplier_ids = { 113, 137 },
    gen_id = 1112,
}
_VP["VP-001113"] = {
    label = "DeltaMob modelo 2213 série V",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 162481,
    wear_curve = 0.7272,
    preferred_supplier_ids = { 114, 140 },
    gen_id = 1113,
}
_VP["VP-001114"] = {
    label = "OrionTruck modelo 2214 série W",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 162618,
    wear_curve = 0.1974,
    preferred_supplier_ids = { 115, 143 },
    gen_id = 1114,
}
_VP["VP-001115"] = {
    label = "SigmaBike modelo 2215 série X",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 162755,
    wear_curve = 0.9106,
    preferred_supplier_ids = { 116, 146 },
    gen_id = 1115,
}
_VP["VP-001116"] = {
    label = "AstraMotors modelo 2216 série Y",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 162892,
    wear_curve = 0.1701,
    preferred_supplier_ids = { 117, 149 },
    gen_id = 1116,
}
_VP["VP-001117"] = {
    label = "RioVeículos modelo 2217 série Z",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 163029,
    wear_curve = 0.8174,
    preferred_supplier_ids = { 118, 152 },
    gen_id = 1117,
}
_VP["VP-001118"] = {
    label = "NorteAuto modelo 2218 série A",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 163166,
    wear_curve = 0.5255,
    preferred_supplier_ids = { 119, 155 },
    gen_id = 1118,
}
_VP["VP-001119"] = {
    label = "DeltaMob modelo 2219 série B",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 163303,
    wear_curve = 0.8768,
    preferred_supplier_ids = { 120, 158 },
    gen_id = 1119,
}
_VP["VP-001120"] = {
    label = "OrionTruck modelo 2220 série C",
    family = VEHICLE_FAMILY.COMMERCIAL,
    base_mileage = 163440,
    wear_curve = 0.3590,
    preferred_supplier_ids = { 121, 161 },
    gen_id = 1120,
}
_VP["VP-001121"] = {
    label = "SigmaBike modelo 2221 série D",
    family = VEHICLE_FAMILY.MOTORCYCLE,
    base_mileage = 163577,
    wear_curve = 0.6941,
    preferred_supplier_ids = { 122, 164 },
    gen_id = 1121,
}
_VP["VP-001122"] = {
    label = "AstraMotors modelo 2222 série E",
    family = VEHICLE_FAMILY.COMPACT,
    base_mileage = 163714,
    wear_curve = 0.3450,
    preferred_supplier_ids = { 123, 167 },
    gen_id = 1122,
}
_VP["VP-001123"] = {
    label = "RioVeículos modelo 2223 série F",
    family = VEHICLE_FAMILY.SEDAN,
    base_mileage = 163851,
    wear_curve = 0.4557,
    preferred_supplier_ids = { 124, 170 },
    gen_id = 1123,
}
_VP["VP-001124"] = {
    label = "NorteAuto modelo 2224 série G",
    family = VEHICLE_FAMILY.SUV,
    base_mileage = 163988,
    wear_curve = 0.4304,
    preferred_supplier_ids = { 125, 173 },
    gen_id = 1124,
}
_VP["VP-001125"] = {
    label = "DeltaMob modelo 2225 série H",
    family = VEHICLE_FAMILY.SPORT,
    base_mileage = 164125,
    wear_curve = 0.5636,
    preferred_supplier_ids = { 126, 176 },
    gen_id = 1125,
}

MECHANIC_GEN_VEHICLE_COUNT = 1125
