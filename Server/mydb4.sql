-- --------------------------------------------------------
-- Host:                         192.168.1.4
-- Server version:               10.4.17-MariaDB - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mydb
DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mydb`;

-- Dumping structure for table mydb.S
DROP TABLE IF EXISTS `S`;
CREATE TABLE IF NOT EXISTS `S` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s` float NOT NULL,
  `t` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mydb.S: ~10 rows (approximately)
DELETE FROM `S`;
/*!40000 ALTER TABLE `S` DISABLE KEYS */;
INSERT INTO `S` (`id`, `s`, `t`) VALUES
	(1, 0, 0),
	(2, 2, 1),
	(3, 4, 2),
	(4, 6, 3),
	(5, 8, 4),
	(6, 10, 5),
	(7, 12, 6),
	(8, 14, 7),
	(9, 16, 8),
	(10, 18, 9);
/*!40000 ALTER TABLE `S` ENABLE KEYS */;

-- Dumping structure for table mydb.U
DROP TABLE IF EXISTS `U`;
CREATE TABLE IF NOT EXISTS `U` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `u` float NOT NULL,
  `t` float NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table mydb.U: ~10 rows (approximately)
DELETE FROM `U`;
/*!40000 ALTER TABLE `U` DISABLE KEYS */;
INSERT INTO `U` (`Id`, `u`, `t`) VALUES
	(1, 2, 0),
	(2, 2, 1),
	(3, 2, 2),
	(4, 2, 3),
	(5, 2, 4),
	(6, 2, 5),
	(7, 2, 6),
	(8, 2, 7),
	(9, 2, 8),
	(10, 2, 9);
/*!40000 ALTER TABLE `U` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
