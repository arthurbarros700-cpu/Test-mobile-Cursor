CREATE TABLE IF NOT EXISTS `vx_mechanic_vehicles` (
  `vehicle_key` varchar(80) NOT NULL,
  `plate` varchar(20) DEFAULT NULL,
  `model_name` varchar(80) DEFAULT NULL,
  `data` longtext NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`vehicle_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `vx_mechanic_workshops` (
  `workshop_id` varchar(50) NOT NULL,
  `data` longtext NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`workshop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
