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
-- Table structure for table `franquicia`
--

DROP TABLE IF EXISTS `franquicia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franquicia` (
  `ID_Franquicia` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefonos` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Franquicia`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franquicia`
--

LOCK TABLES `franquicia` WRITE;
/*!40000 ALTER TABLE `franquicia` DISABLE KEYS */;
INSERT INTO `franquicia` VALUES (1,'Gymbro Central','Calle Principal 123','central@gymbro.com','555-1000'),(2,'Gymbro Norte','Avenida Norte 456','norte@gymbro.com','555-2000'),(3,'Gymbro Sur','Calle Sur 789','sur@gymbro.com','555-3000'),(4,'Gymbro Este','Avenida Este 101','este@gymbro.com','555-4000'),(5,'Gymbro Oeste','Calle Oeste 112','oeste@gymbro.com','555-5000'),(6,'Gymbro Downtown','Centro 133','downtown@gymbro.com','555-6000'),(7,'Gymbro Uptown','Altos 145','uptown@gymbro.com','555-7000'),(8,'Gymbro City','Ciudad 156','city@gymbro.com','555-8000'),(9,'Gymbro Village','Pueblo 167','village@gymbro.com','555-9000'),(10,'Gymbro Plaza','Plaza 178','plaza@gymbro.com','555-1100');
/*!40000 ALTER TABLE `franquicia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23 21:36:32
