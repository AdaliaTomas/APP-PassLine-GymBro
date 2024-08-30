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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `ID_Empleados` int NOT NULL AUTO_INCREMENT,
  `ID_Franquicia` int DEFAULT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Descripcion` text,
  PRIMARY KEY (`ID_Empleados`),
  UNIQUE KEY `Email` (`Email`),
  KEY `ID_Franquicia` (`ID_Franquicia`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`ID_Franquicia`) REFERENCES `franquicia` (`ID_Franquicia`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1,'Carlos Perez','555-1111','carlos.perez@gymbro.com','Instructor de Yoga'),(2,2,'Ana Lopez','555-2222','ana.lopez@gymbro.com','Entrenadora de Pilates'),(3,3,'Luis Gomez','555-3333','luis.gomez@gymbro.com','Entrenador Personal'),(4,4,'Sofia Martinez','555-4444','sofia.martinez@gymbro.com','Instructor de Musculación'),(5,5,'Pedro Sanchez','555-5555','pedro.sanchez@gymbro.com','Entrenador Funcional'),(6,6,'Laura Hernandez','555-6666','laura.hernandez@gymbro.com','Instructora de Aeróbic'),(7,7,'Jorge Torres','555-7777','jorge.torres@gymbro.com','Entrenador de Crossfit'),(8,8,'Marta Ruiz','555-8888','marta.ruiz@gymbro.com','Instructora de Zumba'),(9,9,'Jose Fernandez','555-9999','jose.fernandez@gymbro.com','Entrenador de Boxeo'),(10,10,'Carla Garcia','555-1010','carla.garcia@gymbro.com','Entrenadora de Natación'),(11,1,'Miguel Rodriguez','555-2020','miguel.rodriguez@gymbro.com','Instructor de Yoga'),(12,2,'Elena Morales','555-3030','elena.morales@gymbro.com','Entrenadora de Pilates'),(13,3,'Daniel Vega','555-4040','daniel.vega@gymbro.com','Entrenador Personal'),(14,4,'Gabriela Cruz','555-5050','gabriela.cruz@gymbro.com','Instructora de Musculación'),(15,5,'Roberto Romero','555-6060','roberto.romero@gymbro.com','Entrenador Funcional'),(16,6,'Natalia Ortiz','555-7070','natalia.ortiz@gymbro.com','Instructora de Aeróbic'),(17,7,'Alberto Herrera','555-8080','alberto.herrera@gymbro.com','Entrenador de Crossfit'),(18,8,'Sandra Diaz','555-9090','sandra.diaz@gymbro.com','Instructora de Zumba'),(19,9,'Ricardo Morales','555-0111','ricardo.morales@gymbro.com','Entrenador de Boxeo');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
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
