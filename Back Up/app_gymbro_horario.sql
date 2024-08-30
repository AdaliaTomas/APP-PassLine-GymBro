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
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `ID_Horario` int NOT NULL AUTO_INCREMENT,
  `ID_TipoClase` int NOT NULL,
  `ID_TipoReserva` int NOT NULL,
  `Horario` varchar(100) NOT NULL,
  `Descripcion` text,
  `Disponible` tinyint(1) DEFAULT (_utf8mb4'Si o No'),
  `Cancelacion` datetime DEFAULT (now()),
  PRIMARY KEY (`ID_Horario`),
  KEY `ID_TipoClase` (`ID_TipoClase`),
  KEY `ID_TipoReserva` (`ID_TipoReserva`),
  CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`ID_TipoClase`) REFERENCES `tipoclase` (`ID_TipoClase`),
  CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`ID_TipoReserva`) REFERENCES `tiporeserva` (`ID_TipoReserva`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,1,1,'07:00-08:00','Clase de entrenamiento funcional',1,'2024-07-30 12:00:00'),(2,2,1,'08:15-09:15','Clase de yoga',1,'2024-07-30 12:00:00'),(3,4,1,'09:30-10:30','Clase de pilates',1,'2024-07-30 12:00:00'),(4,5,1,'10:45-11:45','Clase de aeróbic',1,'2024-07-30 12:00:00'),(5,6,1,'12:00-13:00','Clase de crossfit',1,'2024-07-30 12:00:00'),(6,7,1,'13:15-14:15','Clase de zumba',1,'2024-07-30 12:00:00'),(7,8,1,'14:30-15:30','Clase de boxeo',1,'2024-07-30 12:00:00'),(8,9,1,'15:45-16:45','Clase de natación',1,'2024-07-30 12:00:00'),(9,1,2,'17:00-18:00','Clase de entrenamiento funcional',1,'2024-07-30 12:00:00'),(10,2,2,'18:15-19:15','Clase de yoga',1,'2024-07-30 12:00:00'),(11,4,2,'19:30-20:30','Clase de pilates',1,'2024-07-30 12:00:00'),(12,5,2,'20:45-21:45','Clase de aeróbic',1,'2024-07-30 12:00:00'),(13,6,2,'22:00-23:00','Clase de crossfit',1,'2024-07-30 12:00:00'),(14,3,1,'08:00-09:00','Clase de musculación',1,'2024-07-30 12:00:00'),(15,3,1,'07:00-08:00','Clase de musculación',1,'2024-07-30 12:00:00'),(16,3,1,'08:15-09:15','Clase de musculación',1,'2024-07-30 12:00:00'),(17,3,1,'09:30-10:30','Clase de musculación',1,'2024-07-30 12:00:00'),(18,3,1,'10:45-11:45','Clase de musculación',1,'2024-07-30 12:00:00'),(19,3,1,'12:00-13:00','Clase de musculación',1,'2024-07-30 12:00:00'),(20,3,1,'13:15-14:15','Clase de musculación',1,'2024-07-30 12:00:00'),(21,3,1,'14:30-15:30','Clase de musculación',1,'2024-07-30 12:00:00'),(22,3,1,'15:45-16:45','Clase de musculación',1,'2024-07-30 12:00:00'),(23,3,1,'17:00-18:00','Clase de musculación',1,'2024-07-30 12:00:00'),(24,3,1,'18:15-19:15','Clase de musculación',1,'2024-07-30 12:00:00'),(25,3,1,'19:30-20:30','Clase de musculación',1,'2024-07-30 12:00:00'),(26,3,1,'20:45-21:45','Clase de musculación',1,'2024-07-30 12:00:00'),(27,3,1,'22:00-23:00','Clase de musculación',1,'2024-07-30 12:00:00');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
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
