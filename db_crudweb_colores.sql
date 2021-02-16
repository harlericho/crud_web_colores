-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.17-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_crudweb_colores
CREATE DATABASE IF NOT EXISTS `db_crudweb_colores` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_crudweb_colores`;

-- Dumping structure for table db_crudweb_colores.colores
CREATE TABLE IF NOT EXISTS `colores` (
  `id_colores` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `fecha_c` datetime NOT NULL DEFAULT current_timestamp(),
  `estado` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id_colores`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for procedure db_crudweb_colores.new_procedure
DELIMITER //
CREATE PROCEDURE `new_procedure`()
BEGIN
select * from colores where estado ='A';
END//
DELIMITER ;

-- Dumping structure for procedure db_crudweb_colores.new_procedure1
DELIMITER //
CREATE PROCEDURE `new_procedure1`(IN id_verificador int(11))
BEGIN
update colores set estado ='I' where id_colores=id_verificador;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
