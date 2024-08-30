CREATE DATABASE  IF NOT EXISTS `app_gymbro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `app_gymbro`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: app_gymbro
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `ID_Reserva` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int NOT NULL,
  `ID_Empleados` int NOT NULL,
  `ID_Franquicia` int NOT NULL,
  `ID_TipoReserva` int NOT NULL,
  `ID_TipoClase` int NOT NULL,
  `ID_Horario` int NOT NULL,
  `Fecha` datetime NOT NULL DEFAULT (curdate()),
  `Cancelacion` datetime DEFAULT NULL,
  `ID_Membresia` int DEFAULT NULL,
  PRIMARY KEY (`ID_Reserva`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Empleados` (`ID_Empleados`),
  KEY `ID_Franquicia` (`ID_Franquicia`),
  KEY `ID_TipoReserva` (`ID_TipoReserva`),
  KEY `ID_TipoClase` (`ID_TipoClase`),
  KEY `ID_Horario` (`ID_Horario`),
  KEY `ID_Membresia` (`ID_Membresia`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`ID_Empleados`) REFERENCES `empleados` (`ID_Empleados`),
  CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`ID_Franquicia`) REFERENCES `franquicia` (`ID_Franquicia`),
  CONSTRAINT `reserva_ibfk_4` FOREIGN KEY (`ID_TipoReserva`) REFERENCES `tiporeserva` (`ID_TipoReserva`),
  CONSTRAINT `reserva_ibfk_5` FOREIGN KEY (`ID_TipoClase`) REFERENCES `tipoclase` (`ID_TipoClase`),
  CONSTRAINT `reserva_ibfk_6` FOREIGN KEY (`ID_Horario`) REFERENCES `horario` (`ID_Horario`),
  CONSTRAINT `reserva_ibfk_7` FOREIGN KEY (`ID_Membresia`) REFERENCES `membresia` (`ID_Membresia`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,1,1,1,1,1,1,'2024-01-01 08:00:00',NULL,1),(2,2,2,2,2,2,2,'2024-01-02 09:00:00',NULL,2),(3,3,3,3,3,3,3,'2024-01-03 10:00:00',NULL,3),(4,4,4,4,4,4,4,'2024-01-04 11:00:00',NULL,3),(5,5,5,5,4,5,5,'2024-01-05 12:00:00',NULL,3),(6,6,6,1,1,1,6,'2024-01-06 13:00:00',NULL,3),(7,7,7,2,2,2,7,'2024-01-07 14:00:00',NULL,1),(8,8,8,3,3,3,8,'2024-01-08 15:00:00',NULL,3),(9,9,9,4,4,4,9,'2024-01-09 16:00:00',NULL,3),(10,10,10,4,4,5,10,'2024-01-10 17:00:00',NULL,1),(11,11,1,1,1,1,1,'2024-01-11 08:00:00',NULL,1),(12,12,2,2,2,2,2,'2024-01-12 09:00:00',NULL,3),(13,13,3,3,3,3,3,'2024-01-13 10:00:00',NULL,3),(14,14,4,4,4,4,4,'2024-01-14 11:00:00',NULL,2),(15,15,5,5,4,5,5,'2024-01-15 12:00:00',NULL,1),(16,16,6,1,1,1,6,'2024-01-16 13:00:00',NULL,3),(17,17,7,2,2,2,7,'2024-01-17 14:00:00',NULL,2),(18,18,8,3,3,3,8,'2024-01-18 15:00:00',NULL,1),(19,19,9,4,4,4,9,'2024-01-19 16:00:00',NULL,3),(20,20,10,5,4,5,10,'2024-01-20 17:00:00',NULL,1),(21,21,1,1,1,1,1,'2024-01-21 08:00:00',NULL,2),(22,22,2,2,2,2,2,'2024-01-22 09:00:00',NULL,3),(23,23,3,3,3,3,3,'2024-01-23 10:00:00',NULL,1),(24,25,4,4,4,4,4,'2024-01-24 11:00:00',NULL,3),(25,21,5,5,4,5,5,'2024-01-25 12:00:00',NULL,3),(26,22,6,1,1,1,6,'2024-01-26 13:00:00',NULL,2),(27,27,7,2,2,2,7,'2024-01-27 14:00:00',NULL,3),(28,25,8,3,3,3,8,'2024-01-28 15:00:00',NULL,1),(29,24,9,4,4,4,9,'2024-01-29 16:00:00',NULL,3),(30,11,10,5,4,5,10,'2024-01-30 17:00:00',NULL,1),(31,11,1,1,1,1,1,'2024-01-31 08:00:00',NULL,3),(32,12,2,2,2,2,2,'2024-02-01 09:00:00',NULL,1),(33,13,3,3,3,3,3,'2024-02-02 10:00:00',NULL,3),(34,14,4,4,4,4,4,'2024-02-03 11:00:00',NULL,3),(35,15,5,5,4,5,5,'2024-02-04 12:00:00',NULL,1),(36,16,6,1,1,1,6,'2024-02-05 13:00:00',NULL,2),(37,27,7,2,2,2,7,'2024-02-06 14:00:00',NULL,3),(38,28,8,3,3,3,8,'2024-02-07 15:00:00',NULL,2),(39,32,9,4,4,4,9,'2024-02-08 16:00:00',NULL,3),(40,20,10,5,4,5,10,'2024-02-09 17:00:00',NULL,2),(41,1,1,1,1,1,1,'2024-02-10 08:00:00',NULL,2),(42,2,2,2,2,2,2,'2024-02-11 09:00:00',NULL,3),(43,3,3,3,3,3,3,'2024-02-12 10:00:00',NULL,3),(44,4,4,4,4,4,4,'2024-02-13 11:00:00',NULL,1),(45,5,5,5,4,5,5,'2024-02-14 12:00:00',NULL,1),(46,6,6,1,1,1,6,'2024-02-15 13:00:00',NULL,3),(47,7,7,2,2,2,7,'2024-02-16 14:00:00',NULL,1),(48,8,8,3,3,3,8,'2024-02-17 15:00:00',NULL,2),(49,9,9,4,4,4,9,'2024-02-18 16:00:00',NULL,3),(50,5,10,5,4,2,10,'2024-02-19 17:00:00',NULL,3),(51,17,1,1,1,1,1,'2024-02-20 08:00:00',NULL,2),(52,25,2,2,2,2,2,'2024-02-21 09:00:00',NULL,3),(53,12,3,3,3,3,3,'2024-02-22 10:00:00',NULL,1),(54,17,4,4,4,4,4,'2024-02-23 11:00:00',NULL,3),(55,16,5,5,4,1,5,'2024-02-24 12:00:00',NULL,2),(56,15,6,1,1,1,6,'2024-02-25 13:00:00',NULL,2),(57,23,7,2,2,2,7,'2024-02-26 14:00:00',NULL,3),(58,30,8,3,3,3,8,'2024-02-27 15:00:00',NULL,2),(59,31,9,4,4,4,9,'2024-02-28 16:00:00',NULL,3),(60,32,10,5,4,5,10,'2024-02-29 17:00:00',NULL,1),(61,31,1,1,1,1,1,'2024-03-01 08:00:00',NULL,3),(62,26,2,2,2,2,2,'2024-03-02 09:00:00',NULL,3),(63,23,3,3,3,3,3,'2024-03-03 10:00:00',NULL,1),(64,12,4,4,4,4,4,'2024-03-04 11:00:00',NULL,2),(65,32,5,5,4,5,5,'2024-03-05 12:00:00',NULL,3),(66,23,6,1,1,1,6,'2024-03-06 13:00:00',NULL,1),(67,7,7,2,2,2,7,'2024-03-07 14:00:00',NULL,3),(68,6,8,3,3,3,8,'2024-03-08 15:00:00',NULL,2),(69,5,9,4,4,4,9,'2024-03-09 16:00:00',NULL,3),(70,24,10,5,2,5,10,'2024-03-10 17:00:00',NULL,2),(71,1,2,2,2,1,1,'2024-02-28 16:00:00',NULL,1),(72,3,1,2,3,5,8,'2024-02-29 17:00:00',NULL,3),(73,16,3,4,2,2,6,'2024-03-01 08:00:00',NULL,1),(74,2,3,3,2,3,2,'2024-03-02 09:00:00',NULL,2),(75,23,3,3,3,3,4,'2024-03-03 10:00:00',NULL,1),(76,12,1,2,3,5,5,'2024-03-04 11:00:00',NULL,3),(77,32,4,3,3,2,2,'2024-03-05 12:00:00',NULL,3),(78,23,6,2,3,4,2,'2024-03-06 13:00:00',NULL,1),(79,7,3,4,2,2,5,'2024-03-07 14:00:00',NULL,2),(80,6,1,1,4,3,8,'2024-03-08 15:00:00',NULL,3),(81,5,8,3,2,4,10,'2024-03-09 16:00:00',NULL,1),(82,24,9,3,2,5,1,'2024-03-10 17:00:00',NULL,2);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UnicaReservaPorDia` BEFORE INSERT ON `reserva` FOR EACH ROW BEGIN
    DECLARE reserva_existente INT;

    -- Verifica si ya existe una reserva para el mismo cliente en el mismo día
    SELECT COUNT(*) INTO reserva_existente
    FROM Reserva
    WHERE ID_Cliente = NEW.ID_Cliente
      AND DATE(Fecha) = DATE(NEW.Fecha);

    -- Si ya existe una reserva, levanta un error y no permite la inserción
    IF reserva_existente > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Solo se permite una reserva por día';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AfterInsertReserva` AFTER INSERT ON `reserva` FOR EACH ROW BEGIN
    -- Actualizar la cantidad de reservas del cliente
    UPDATE cliente
    SET CantidadReservas = CantidadReservas + 1
    WHERE ID_Cliente = NEW.ID_Cliente;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23 21:36:31
