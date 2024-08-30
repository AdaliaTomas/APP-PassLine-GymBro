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
-- Table structure for table `hechoreserva`
--

DROP TABLE IF EXISTS `hechoreserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hechoreserva` (
  `ID_HechoReserva` int NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int NOT NULL,
  `ID_Franquicia` int NOT NULL,
  `ID_Empleados` int NOT NULL,
  `ID_TipoReserva` int NOT NULL,
  `ID_TipoClase` int NOT NULL,
  `ID_Horario` int NOT NULL,
  `ID_Membresia` int NOT NULL,
  `Fecha` datetime NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  `Asistio` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_HechoReserva`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `ID_Franquicia` (`ID_Franquicia`),
  KEY `ID_Empleados` (`ID_Empleados`),
  KEY `ID_TipoReserva` (`ID_TipoReserva`),
  KEY `ID_TipoClase` (`ID_TipoClase`),
  KEY `ID_Horario` (`ID_Horario`),
  KEY `ID_Membresia` (`ID_Membresia`),
  CONSTRAINT `hechoreserva_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`),
  CONSTRAINT `hechoreserva_ibfk_2` FOREIGN KEY (`ID_Franquicia`) REFERENCES `franquicia` (`ID_Franquicia`),
  CONSTRAINT `hechoreserva_ibfk_3` FOREIGN KEY (`ID_Empleados`) REFERENCES `empleados` (`ID_Empleados`),
  CONSTRAINT `hechoreserva_ibfk_4` FOREIGN KEY (`ID_TipoReserva`) REFERENCES `tiporeserva` (`ID_TipoReserva`),
  CONSTRAINT `hechoreserva_ibfk_5` FOREIGN KEY (`ID_TipoClase`) REFERENCES `tipoclase` (`ID_TipoClase`),
  CONSTRAINT `hechoreserva_ibfk_6` FOREIGN KEY (`ID_Horario`) REFERENCES `horario` (`ID_Horario`),
  CONSTRAINT `hechoreserva_ibfk_7` FOREIGN KEY (`ID_Membresia`) REFERENCES `membresia` (`ID_Membresia`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hechoreserva`
--

LOCK TABLES `hechoreserva` WRITE;
/*!40000 ALTER TABLE `hechoreserva` DISABLE KEYS */;
INSERT INTO `hechoreserva` VALUES (1,1,1,1,1,1,1,1,'2024-08-01 00:00:00',50.00,1),(2,2,2,2,1,2,2,1,'2024-08-01 00:00:00',40.00,0),(3,3,3,3,2,3,3,2,'2024-08-02 00:00:00',45.00,1),(4,4,4,4,2,4,4,3,'2024-08-02 00:00:00',30.00,1),(5,5,5,5,1,5,5,1,'2024-08-03 00:00:00',55.00,0),(6,6,6,6,2,6,6,2,'2024-08-03 00:00:00',35.00,1),(7,7,7,7,1,7,7,3,'2024-08-04 00:00:00',60.00,1),(8,8,8,8,2,8,8,1,'2024-08-04 00:00:00',50.00,0),(9,9,9,9,1,9,1,2,'2024-08-05 00:00:00',70.00,1),(10,10,10,10,2,1,2,3,'2024-08-05 00:00:00',65.00,0),(11,11,1,2,1,2,3,1,'2024-08-06 00:00:00',55.00,1),(12,12,2,3,2,3,4,2,'2024-08-06 00:00:00',40.00,0),(13,13,3,4,1,4,5,3,'2024-08-07 00:00:00',45.00,1),(14,14,4,5,2,5,6,1,'2024-08-07 00:00:00',50.00,1),(15,15,5,6,1,1,7,2,'2024-08-08 00:00:00',60.00,0),(16,16,6,7,2,2,8,3,'2024-08-08 00:00:00',55.00,1),(17,17,7,8,1,3,1,1,'2024-08-09 00:00:00',70.00,1),(18,18,8,9,2,4,2,2,'2024-08-09 00:00:00',65.00,0),(19,19,9,10,1,5,3,3,'2024-08-10 00:00:00',75.00,1),(20,20,10,1,2,1,4,1,'2024-08-10 00:00:00',80.00,1),(21,21,1,2,1,2,5,2,'2024-08-11 00:00:00',55.00,0),(22,22,2,3,2,3,6,3,'2024-08-11 00:00:00',45.00,1),(23,23,3,4,1,4,7,1,'2024-08-12 00:00:00',60.00,1),(24,24,4,5,2,5,8,2,'2024-08-12 00:00:00',50.00,0),(25,25,5,6,1,1,9,3,'2024-08-13 00:00:00',65.00,1),(26,26,6,7,2,2,1,1,'2024-08-13 00:00:00',55.00,0),(27,27,7,8,1,3,2,2,'2024-08-14 00:00:00',70.00,1),(28,28,8,9,2,4,3,3,'2024-08-14 00:00:00',60.00,1),(29,29,9,10,1,5,4,1,'2024-08-15 00:00:00',75.00,0),(30,10,10,1,2,1,5,2,'2024-08-15 00:00:00',80.00,1),(31,21,1,2,1,2,6,3,'2024-08-16 00:00:00',60.00,1),(32,22,2,3,2,3,7,1,'2024-08-16 00:00:00',50.00,0),(33,32,3,4,1,4,8,2,'2024-08-17 00:00:00',65.00,1),(34,12,4,5,2,5,9,3,'2024-08-17 00:00:00',55.00,1),(35,32,5,6,1,1,1,1,'2024-08-18 00:00:00',70.00,0),(36,32,6,7,2,2,2,2,'2024-08-18 00:00:00',60.00,1),(37,27,7,8,1,3,3,3,'2024-08-19 00:00:00',75.00,1),(38,28,8,9,2,4,4,1,'2024-08-19 00:00:00',65.00,0),(39,19,9,10,1,5,5,2,'2024-08-20 00:00:00',80.00,1),(40,10,10,1,2,1,6,3,'2024-08-20 00:00:00',85.00,1),(41,11,1,2,1,2,7,1,'2024-08-21 00:00:00',55.00,1),(42,12,2,3,2,3,8,2,'2024-08-21 00:00:00',45.00,0),(43,13,3,4,1,4,9,3,'2024-08-22 00:00:00',60.00,1),(44,14,4,5,2,5,1,1,'2024-08-22 00:00:00',50.00,1),(45,15,5,6,1,1,2,2,'2024-08-23 00:00:00',65.00,0),(46,16,6,7,2,2,3,3,'2024-08-23 00:00:00',55.00,1),(47,7,7,8,1,3,4,1,'2024-08-24 00:00:00',70.00,1),(48,4,8,9,2,4,5,2,'2024-08-24 00:00:00',60.00,0),(49,9,9,10,1,5,6,3,'2024-08-25 00:00:00',75.00,1),(50,5,10,1,2,1,7,1,'2024-08-25 00:00:00',80.00,1),(51,1,1,2,1,2,8,2,'2024-08-26 00:00:00',60.00,0),(52,2,2,3,2,3,9,3,'2024-08-26 00:00:00',50.00,1),(53,3,3,4,1,4,1,1,'2024-08-27 00:00:00',65.00,1),(54,4,4,5,2,5,2,2,'2024-08-27 00:00:00',65.00,1);
/*!40000 ALTER TABLE `hechoreserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23 21:36:31
