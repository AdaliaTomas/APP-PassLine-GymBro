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
-- Table structure for table `audit_membresia`
--

DROP TABLE IF EXISTS `audit_membresia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_membresia` (
  `ID_Audit` int NOT NULL AUTO_INCREMENT,
  `ID_Membresia` int DEFAULT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  `Descripcion` text,
  `Precio` decimal(10,2) DEFAULT NULL,
  `FechaCambio` datetime DEFAULT CURRENT_TIMESTAMP,
  `Accion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Audit`),
  KEY `ID_Membresia` (`ID_Membresia`),
  CONSTRAINT `audit_membresia_ibfk_1` FOREIGN KEY (`ID_Membresia`) REFERENCES `membresia` (`ID_Membresia`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_membresia`
--

LOCK TABLES `audit_membresia` WRITE;
/*!40000 ALTER TABLE `audit_membresia` DISABLE KEYS */;
INSERT INTO `audit_membresia` VALUES (1,1,'Básica','Membresía básica con acceso a todas las áreas comunes',29.99,'2024-08-20 20:48:32','Creación'),(2,2,'Estándar','Membresía estándar con acceso completo a las instalaciones y clases grupales',49.99,'2024-08-20 20:48:32','Creación'),(3,3,'Premium','Membresía premium con acceso completo y sesiones ilimitadas con entrenadores personales',79.99,'2024-08-20 20:48:32','Creación'),(4,1,'Básica','Actualización de precios',34.99,'2024-08-20 20:48:32','Actualización'),(5,2,'Estándar','Actualización de descripción',54.99,'2024-08-20 20:48:32','Actualización'),(6,3,'Premium','Cambio en la descripción',74.99,'2024-08-20 20:48:32','Actualización');
/*!40000 ALTER TABLE `audit_membresia` ENABLE KEYS */;
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
