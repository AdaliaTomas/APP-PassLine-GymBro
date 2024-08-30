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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_Cliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Nacimiento` date NOT NULL,
  `Edad` int NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `ID_Membresia` int DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente`),
  UNIQUE KEY `Email` (`Email`),
  KEY `ID_Membresia` (`ID_Membresia`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_Membresia`) REFERENCES `membresia` (`ID_Membresia`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan Perez','1985-04-23',39,'juan.perez@example.com','555-1234',1),(2,'Maria Lopez','1990-08-15',34,'maria.lopez@example.com','555-5678',2),(3,'Carlos Gomez','1978-11-02',45,'carlos.gomez@example.com','555-8765',3),(4,'Laura Sanchez','1992-06-30',32,'laura.sanchez@example.com','555-4321',NULL),(5,'Ana Martinez','1988-03-14',36,'ana.martinez@example.com','555-6789',NULL),(6,'Luis Hernandez','1982-12-09',41,'luis.hernandez@example.com','555-3456',1),(7,'Sofia Diaz','1995-01-21',29,'sofia.diaz@example.com','555-2345',2),(8,'Pedro Torres','1983-09-27',40,'pedro.torres@example.com','555-8769',3),(9,'Marta Ruiz','1987-05-19',37,'marta.ruiz@example.com','555-7890',NULL),(10,'Jose Garcia','1981-07-03',43,'jose.garcia@example.com','555-4567',NULL),(11,'Carla Fernandez','1993-10-08',30,'carla.fernandez@example.com','555-9876',1),(12,'Miguel Rodriguez','1986-02-25',38,'miguel.rodriguez@example.com','555-5432',2),(13,'Elena Moreno','1991-12-13',29,'elena.moreno@example.com','555-6543',3),(14,'Jorge Morales','1979-04-05',45,'jorge.morales@example.com','555-3210',NULL),(15,'Laura Cruz','1984-11-22',39,'laura.cruz@example.com','555-2109',NULL),(16,'Roberto Vega','1980-08-11',43,'roberto.vega@example.com','555-1098',1),(17,'Natalia Romero','1994-01-30',30,'natalia.romero@example.com','555-0987',2),(18,'Daniel Ortiz','1989-06-18',34,'daniel.ortiz@example.com','555-8907',3),(19,'Gabriela Vazquez','1985-09-23',38,'gabriela.vazquez@example.com','555-6780',NULL),(20,'Alberto Herrera','1987-10-15',36,'alberto.herrera@example.com','555-8763',NULL),(21,'Pedro Martinez','1985-11-22',38,'pedro.martinez@example.com','555-1235',1),(22,'Julia Fernandez','1994-03-29',30,'julia.fernandez@example.com','555-1236',2),(23,'Victor Salazar','1980-09-09',43,'victor.salazar@example.com','555-1237',3),(24,'Veronica Ramirez','1992-01-11',32,'veronica.ramirez@example.com','555-1238',NULL),(25,'Ricardo Vega','1986-06-15',37,'ricardo.vega@example.com','555-1239',NULL),(26,'Gabriela Ortega','1989-12-20',34,'gabriela.ortega@example.com','555-1240',NULL),(27,'Fernando Castillo','1991-05-17',33,'fernando.castillo@example.com','555-1241',NULL),(28,'Isabel Sanchez','1984-08-25',39,'isabel.sanchez@example.com','555-1242',NULL),(29,'Eduardo Ruiz','1996-02-14',28,'eduardo.ruiz@example.com','555-1243',NULL),(30,'Carmen Torres','1983-10-30',40,'carmen.torres@example.com','555-1244',NULL),(31,'Ricardo Morales','1979-07-09',45,'ricardo.morales@example.com','555-1245',NULL),(32,'Alicia Moreno','1987-03-18',37,'alicia.moreno@example.com','555-1246',NULL),(33,'Manuel Jimenez','1992-09-29',31,'manuel.jimenez@example.com','555-1247',NULL),(34,'Susana Castro','1988-01-25',36,'susana.castro@example.com','555-1248',NULL),(35,'Laura Rodriguez','1994-07-12',29,'laura.rodriguez@example.com','555-1249',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
