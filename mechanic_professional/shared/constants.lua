--[[
    Constantes compartilhadas: estados da OS, severidades de log, códigos de transação.
]]

JOB_STATE = {
    INTAKE = "INTAKE",
    DIAGNOSTIC = "DIAGNOSTIC",
    PARTS_PULL = "PARTS_PULL",
    LABOR = "LABOR",
    QC = "QC",
    READY = "READY",
    CLOSED = "CLOSED",
}

LOG_LEVEL = {
    DEBUG = 1,
    INFO = 2,
    WARN = 3,
    ERROR = 4,
    CRITICAL = 5,
}

LOG_LEVEL_NAME = {
    [1] = "DEBUG",
    [2] = "INFO",
    [3] = "WARN",
    [4] = "ERROR",
    [5] = "CRITICAL",
}

TXN = {
    RECEIPT = "RECEIPT",
    ISSUE = "ISSUE",
    RESERVE = "RESERVE",
    COMMIT = "COMMIT",
    RELEASE = "RELEASE",
    ADJUST = "ADJUST",
    SCRAP = "SCRAP",
}
