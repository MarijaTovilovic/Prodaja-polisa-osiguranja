-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.7.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for piivt_app
DROP DATABASE IF EXISTS `piivt_app`;
CREATE DATABASE IF NOT EXISTS `piivt_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `piivt_app`;

-- Dumping structure for table piivt_app.accident_insurance
DROP TABLE IF EXISTS `accident_insurance`;
CREATE TABLE IF NOT EXISTS `accident_insurance` (
  `accident_insurance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duration_of_insurance` date NOT NULL,
  `type_of_coverage` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum_insured` decimal(10,2) NOT NULL,
  `general_terms_and_conditional` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`accident_insurance_id`),
  KEY `fk_accident_insurance_insured_id` (`insured_id`),
  CONSTRAINT `fk_accident_insurance_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.adress_insured
DROP TABLE IF EXISTS `adress_insured`;
CREATE TABLE IF NOT EXISTS `adress_insured` (
  `adress_insured_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `township` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_number` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_and_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`adress_insured_id`),
  KEY `fk_address_insured_insured_id` (`insured_id`),
  CONSTRAINT `fk_address_insured_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.change_insured
DROP TABLE IF EXISTS `change_insured`;
CREATE TABLE IF NOT EXISTS `change_insured` (
  `change_insured_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `insured_id` int(10) unsigned NOT NULL,
  `list_of_insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`change_insured_id`),
  KEY `fk_change_insured_insured_id` (`insured_id`),
  KEY `fk_change_insured_list_of_insured_id` (`list_of_insured_id`),
  CONSTRAINT `fk_change_insured_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_change_insured_list_of_insured_id` FOREIGN KEY (`list_of_insured_id`) REFERENCES `list_of_insured` (`list_of_insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.creation_new_insured
DROP TABLE IF EXISTS `creation_new_insured`;
CREATE TABLE IF NOT EXISTS `creation_new_insured` (
  `creation_new_insured_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `insured_id` int(10) unsigned NOT NULL,
  `list_of_insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`creation_new_insured_id`),
  KEY `fk_creation_new_insured_insured_id` (`insured_id`),
  KEY `fk_creation_new_insured_list_of_insured_id` (`list_of_insured_id`),
  CONSTRAINT `fk_creation_new_insured_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_creation_new_insured_list_of_insured_id` FOREIGN KEY (`list_of_insured_id`) REFERENCES `list_of_insured` (`list_of_insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.crop_insurance
DROP TABLE IF EXISTS `crop_insurance`;
CREATE TABLE IF NOT EXISTS `crop_insurance` (
  `crop_insurance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duration_of_insurance` date NOT NULL,
  `type_of_risk` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum_insured` decimal(10,2) NOT NULL,
  `source_of_finance` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_crop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `general_terms_and_conditional` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`crop_insurance_id`),
  KEY `fk_crop_insurance_insured_id` (`insured_id`),
  CONSTRAINT `fk_crop_insurance_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.insured
DROP TABLE IF EXISTS `insured`;
CREATE TABLE IF NOT EXISTS `insured` (
  `insured_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jmbg` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress_insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`insured_id`),
  UNIQUE KEY `uq_insured_jmbg` (`jmbg`),
  UNIQUE KEY `uq_insured_email` (`email`),
  UNIQUE KEY `uq_insured_passport_number` (`passport_number`),
  KEY `fk_insured_adress_insured_id` (`adress_insured_id`),
  CONSTRAINT `fk_insured_adress_insured_id` FOREIGN KEY (`adress_insured_id`) REFERENCES `adress_insured` (`adress_insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.list_of_insured
DROP TABLE IF EXISTS `list_of_insured`;
CREATE TABLE IF NOT EXISTS `list_of_insured` (
  `list_of_insured_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`list_of_insured_id`),
  KEY `fk_list_of_insured_insured_id` (`insured_id`),
  CONSTRAINT `fk_list_of_insured_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.policyao
DROP TABLE IF EXISTS `policyao`;
CREATE TABLE IF NOT EXISTS `policyao` (
  `policyao_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_of_issue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `insured_id` int(10) unsigned NOT NULL,
  `vehicle_data_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`policyao_id`) USING BTREE,
  KEY `fk_policyAO_vehicle_data_id` (`vehicle_data_id`),
  KEY `fk_policyao_insured_id` (`insured_id`),
  CONSTRAINT `fk_policyAO_vehicle_data_id` FOREIGN KEY (`vehicle_data_id`) REFERENCES `vehicle_data` (`vehicle_data_id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_policyao_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.property_insurance
DROP TABLE IF EXISTS `property_insurance`;
CREATE TABLE IF NOT EXISTS `property_insurance` (
  `property_insurance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surface` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_construction` date NOT NULL,
  `risk_assessment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_of_insurance` date NOT NULL,
  `sum_insured` decimal(10,2) NOT NULL,
  `general_terms_and_conditional` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `insured_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`property_insurance_id`),
  UNIQUE KEY `uq_property_insurance_adress` (`adress`),
  KEY `fk_property_insurance_insured_id` (`insured_id`),
  CONSTRAINT `fk_property_insurance_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.staff
DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `uq_staff_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.travel_insurance
DROP TABLE IF EXISTS `travel_insurance`;
CREATE TABLE IF NOT EXISTS `travel_insurance` (
  `travel_insurance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duration_of_insurance` date NOT NULL,
  `age_group` smallint(8) NOT NULL,
  `type_of_travel` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose_of_the_trip` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sum_insured` decimal(10,2) NOT NULL,
  `general_terms_and_conditional` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `insured_id` int(10) unsigned NOT NULL,
  `destinations` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`travel_insurance_id`),
  KEY `fk_travel_insurance_insured_id` (`insured_id`),
  CONSTRAINT `fk_travel_insurance_insured_id` FOREIGN KEY (`insured_id`) REFERENCES `insured` (`insured_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.type_of_ insurance
DROP TABLE IF EXISTS `type_of_ insurance`;
CREATE TABLE IF NOT EXISTS `type_of_ insurance` (
  `type_of_ insurance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_of_ insurance_id`),
  UNIQUE KEY `uq_type_of_ insurance_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

-- Dumping structure for table piivt_app.vehicle_data
DROP TABLE IF EXISTS `vehicle_data`;
CREATE TABLE IF NOT EXISTS `vehicle_data` (
  `vehicle_data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_of_vehicle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_brand` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_number` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_mass` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mass` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine_dispacement` smallint(8) NOT NULL,
  `engine_power` smallint(8) NOT NULL,
  `vehicle_color` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vin` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_of_insurance` date NOT NULL,
  `reason_for_filling` enum('prva registracija','produzenje registracije','promena vlasnika') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'prva registracija',
  `sum_insured` decimal(10,2) NOT NULL,
  `general_terms_and_conditional` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`vehicle_data_id`),
  UNIQUE KEY `uq_vehicle_data_registration_number` (`registration_number`),
  UNIQUE KEY `uq_vehicle_data_vin` (`vin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
