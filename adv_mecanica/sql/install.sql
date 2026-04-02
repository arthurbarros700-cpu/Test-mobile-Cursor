-- ═══════════════════════════════════════════════════════════════════════════
-- ADV Mecânica – Instalação do Banco de Dados
-- Execute este arquivo uma única vez para criar todas as tabelas necessárias.
-- ═══════════════════════════════════════════════════════════════════════════

SET NAMES utf8mb4;
SET time_zone = '+00:00';

-- ─── Perfil de Mecânicos ─────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS `adv_mec_mechanics` (
    `id`           INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    `identifier`   VARCHAR(64)     NOT NULL,
    `xp`           INT UNSIGNED    NOT NULL DEFAULT 0,
    `repairs`      INT UNSIGNED    NOT NULL DEFAULT 0,
    `updated_at`   DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ─── Danos de Veículos ───────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS `adv_mec_vehicle_damage` (
    `id`           INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    `net_id`       INT UNSIGNED    NOT NULL,
    `plate`        VARCHAR(16)     NULL,
    `damage_json`  LONGTEXT        NOT NULL,
    `updated_at`   DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_net_id` (`net_id`),
    INDEX `idx_plate` (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ─── Log de Peças Reparadas ──────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS `adv_mec_repair_log` (
    `id`           BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `identifier`   VARCHAR(64)     NOT NULL,
    `net_id`       INT UNSIGNED    NOT NULL,
    `part_key`     VARCHAR(32)     NOT NULL,
    `repaired_at`  DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    INDEX `idx_identifier` (`identifier`),
    INDEX `idx_part_key`   (`part_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ─── Sessões de Reparo ───────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS `adv_mec_repair_sessions` (
    `id`               BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `identifier`       VARCHAR(64)     NOT NULL,
    `net_id`           INT UNSIGNED    NOT NULL,
    `parts_json`       TEXT            NOT NULL,
    `total_charged`    DECIMAL(10,2)   NOT NULL DEFAULT 0.00,
    `mechanic_payout`  DECIMAL(10,2)   NOT NULL DEFAULT 0.00,
    `created_at`       DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    INDEX `idx_identifier` (`identifier`),
    INDEX `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ─── Estoque da Oficina ──────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS `adv_mec_stock` (
    `id`           INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    `item`         VARCHAR(64)     NOT NULL,
    `qty`          SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    `updated_at`   DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_item` (`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ─── Pedidos de Restock ──────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS `adv_mec_restock_orders` (
    `id`           INT UNSIGNED    NOT NULL AUTO_INCREMENT,
    `identifier`   VARCHAR(64)     NOT NULL,
    `items_json`   TEXT            NOT NULL,
    `total_cost`   DECIMAL(10,2)   NOT NULL DEFAULT 0.00,
    `status`       ENUM('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
    `created_at`   DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `completed_at` DATETIME        NULL,
    PRIMARY KEY (`id`),
    INDEX `idx_identifier` (`identifier`),
    INDEX `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
