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
-- Table structure for table `tipoclase`
--

DROP TABLE IF EXISTS `tipoclase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoclase` (
  `ID_TipoClase` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(100) NOT NULL,
  `Descripcion` text,
  `Disponible` tinyint(1) DEFAULT NULL,
  `Cancelacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_TipoClase`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoclase`
--

LOCK TABLES `tipoclase` WRITE;
/*!40000 ALTER TABLE `tipoclase` DISABLE KEYS */;
INSERT INTO `tipoclase` VALUES (1,'Funcional','Clase de entrenamiento funcional',1,'2024-07-30 12:00:00'),(2,'Yoga','Clase de yoga',1,'2024-07-30 12:00:00'),(3,'Musculación','Clase de musculación',1,'2024-07-30 12:00:00'),(4,'Pilates','Clase de pilates',1,'2024-07-30 12:00:00'),(5,'Aeróbic','Clase de aeróbic',1,'2024-07-30 12:00:00'),(6,'Crossfit','Clase de crossfit',1,'2024-07-30 12:00:00'),(7,'Zumba','Clase de zumba',1,'2024-07-30 12:00:00'),(8,'Boxeo','Clase de boxeo',1,'2024-07-30 12:00:00'),(9,'Natación','Clase de natación',1,'2024-07-30 12:00:00');
/*!40000 ALTER TABLE `tipoclase` ENABLE KEYS */;
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
