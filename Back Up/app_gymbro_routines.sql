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
-- Temporary view structure for view `ingresos_totales_franquicia`
--

DROP TABLE IF EXISTS `ingresos_totales_franquicia`;
/*!50001 DROP VIEW IF EXISTS `ingresos_totales_franquicia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ingresos_totales_franquicia` AS SELECT 
 1 AS `Franquicia`,
 1 AS `IngresosTotales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_cliente`
--

DROP TABLE IF EXISTS `vista_reservas_cliente`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_cliente` AS SELECT 
 1 AS `ID_Cliente`,
 1 AS `Cliente`,
 1 AS `ID_Reserva`,
 1 AS `Franquicia`,
 1 AS `TipoClase`,
 1 AS `Horario`,
 1 AS `Fecha`,
 1 AS `Empleado_Frecuente`,
 1 AS `Cantidad_Reservas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_franquicia`
--

DROP TABLE IF EXISTS `vista_reservas_franquicia`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_franquicia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_franquicia` AS SELECT 
 1 AS `ID_Franquicia`,
 1 AS `Franquicia`,
 1 AS `ID_Reserva`,
 1 AS `Cliente`,
 1 AS `TipoClase`,
 1 AS `Horario`,
 1 AS `Fecha`,
 1 AS `ClasePopular`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas`
--

DROP TABLE IF EXISTS `vista_reservas`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas` AS SELECT 
 1 AS `ID_Reserva`,
 1 AS `Cliente`,
 1 AS `Franquicia`,
 1 AS `TipoClase`,
 1 AS `Horario`,
 1 AS `Fecha`,
 1 AS `Total_Reservas_Cliente`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_empleados_franquicia`
--

DROP TABLE IF EXISTS `vista_empleados_franquicia`;
/*!50001 DROP VIEW IF EXISTS `vista_empleados_franquicia`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_empleados_franquicia` AS SELECT 
 1 AS `ID_Empleados`,
 1 AS `Empleado`,
 1 AS `Franquicia`,
 1 AS `Telefono`,
 1 AS `Email`,
 1 AS `Descripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `ingresos_totales_franquicia`
--

/*!50001 DROP VIEW IF EXISTS `ingresos_totales_franquicia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ingresos_totales_franquicia` AS select `f`.`Nombre` AS `Franquicia`,sum(`hr`.`Costo`) AS `IngresosTotales` from (`hechoreserva` `hr` join `franquicia` `f` on((`hr`.`ID_Franquicia` = `f`.`ID_Franquicia`))) group by `f`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_cliente` AS select `c`.`ID_Cliente` AS `ID_Cliente`,`c`.`Nombre` AS `Cliente`,`r`.`ID_Reserva` AS `ID_Reserva`,`f`.`Nombre` AS `Franquicia`,`t`.`Tipo` AS `TipoClase`,`h`.`Horario` AS `Horario`,`r`.`Fecha` AS `Fecha`,(select `e`.`Nombre` from `empleados` `e` where (`e`.`ID_Empleados` = (select `r2`.`ID_Empleados` from `reserva` `r2` where (`r2`.`ID_Cliente` = `c`.`ID_Cliente`) group by `r2`.`ID_Empleados` order by count(0) desc limit 1))) AS `Empleado_Frecuente`,(select count(0) from `reserva` `r3` where (`r3`.`ID_Cliente` = `c`.`ID_Cliente`)) AS `Cantidad_Reservas` from ((((`cliente` `c` join `reserva` `r` on((`c`.`ID_Cliente` = `r`.`ID_Cliente`))) join `franquicia` `f` on((`r`.`ID_Franquicia` = `f`.`ID_Franquicia`))) join `tipoclase` `t` on((`r`.`ID_TipoClase` = `t`.`ID_TipoClase`))) join `horario` `h` on((`r`.`ID_Horario` = `h`.`ID_Horario`))) order by (select count(0) from `reserva` `r3` where (`r3`.`ID_Cliente` = `c`.`ID_Cliente`)) desc,(select `e`.`Nombre` from `empleados` `e` where (`e`.`ID_Empleados` = (select `r2`.`ID_Empleados` from `reserva` `r2` where (`r2`.`ID_Cliente` = `c`.`ID_Cliente`) group by `r2`.`ID_Empleados` order by count(0) desc limit 1))) desc,`f`.`Nombre` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_franquicia`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_franquicia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_franquicia` AS select `f`.`ID_Franquicia` AS `ID_Franquicia`,`f`.`Nombre` AS `Franquicia`,`r`.`ID_Reserva` AS `ID_Reserva`,`c`.`Nombre` AS `Cliente`,`t`.`Tipo` AS `TipoClase`,`h`.`Horario` AS `Horario`,`r`.`Fecha` AS `Fecha`,(select `t2`.`Tipo` from `tipoclase` `t2` where (`t2`.`ID_TipoClase` = (select `r2`.`ID_TipoClase` from `reserva` `r2` where (`r2`.`ID_Franquicia` = `f`.`ID_Franquicia`) group by `r2`.`ID_TipoClase` order by count(0) desc limit 1))) AS `ClasePopular` from ((((`franquicia` `f` join `reserva` `r` on((`f`.`ID_Franquicia` = `r`.`ID_Franquicia`))) join `cliente` `c` on((`r`.`ID_Cliente` = `c`.`ID_Cliente`))) join `tipoclase` `t` on((`r`.`ID_TipoClase` = `t`.`ID_TipoClase`))) join `horario` `h` on((`r`.`ID_Horario` = `h`.`ID_Horario`))) order by `f`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas` AS select `r`.`ID_Reserva` AS `ID_Reserva`,`c`.`Nombre` AS `Cliente`,`f`.`Nombre` AS `Franquicia`,`t`.`Tipo` AS `TipoClase`,`h`.`Horario` AS `Horario`,`r`.`Fecha` AS `Fecha`,(select count(0) from `reserva` `r2` where (`r2`.`ID_Cliente` = `r`.`ID_Cliente`)) AS `Total_Reservas_Cliente` from ((((`reserva` `r` left join `cliente` `c` on((`r`.`ID_Cliente` = `c`.`ID_Cliente`))) left join `franquicia` `f` on((`r`.`ID_Franquicia` = `f`.`ID_Franquicia`))) left join `tipoclase` `t` on((`r`.`ID_TipoClase` = `t`.`ID_TipoClase`))) left join `horario` `h` on((`r`.`ID_Horario` = `h`.`ID_Horario`))) order by (select count(0) from `reserva` `r2` where (`r2`.`ID_Cliente` = `r`.`ID_Cliente`)) desc,`f`.`Nombre` desc,`c`.`Nombre` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_empleados_franquicia`
--

/*!50001 DROP VIEW IF EXISTS `vista_empleados_franquicia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_empleados_franquicia` AS select `e`.`ID_Empleados` AS `ID_Empleados`,`e`.`Nombre` AS `Empleado`,`f`.`Nombre` AS `Franquicia`,`e`.`Telefono` AS `Telefono`,`e`.`Email` AS `Email`,`e`.`Descripcion` AS `Descripcion` from (`empleados` `e` left join `franquicia` `f` on((`e`.`ID_Franquicia` = `f`.`ID_Franquicia`))) order by `f`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'app_gymbro'
--

--
-- Dumping routines for database 'app_gymbro'
--
/*!50003 DROP FUNCTION IF EXISTS `ClienteConMayorReservas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `ClienteConMayorReservas`(cliente varchar(50), reserva int) RETURNS varchar(100) CHARSET utf8mb4
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE clienteNombre VARCHAR(100);

    -- Consulta para encontrar el cliente con la mayor cantidad de reservas
    SELECT cliente.Nombre
    INTO clienteNombre
    FROM cliente
    JOIN (
        SELECT ID_Cliente
        FROM reserva
        GROUP BY ID_Cliente
        ORDER BY COUNT(*) DESC
        LIMIT 1
    ) r ON c.ID_Cliente = r.ID_Cliente;

    RETURN clienteNombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerReservasCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerReservasCliente`(IN ID_Cliente INT)
BEGIN
    SELECT
        r.ID_Reserva,
        c.Nombre AS Cliente,
        e.Nombre AS Empleado,
        f.Nombre AS Franquicia,
        tr.Tipo AS TipoReserva,
        tc.Tipo AS TipoClase,
        h.Horario AS Horario,
        r.Fecha AS FechaReserva,
        r.Cancelacion AS FechaCancelacion
    FROM Reserva r
    JOIN Cliente c ON r.ID_Cliente = c.ID_Cliente
    JOIN Empleados e ON r.ID_Empleados = e.ID_Empleados
    JOIN Franquicia f ON r.ID_Franquicia = f.ID_Franquicia
    JOIN TipoReserva tr ON r.ID_TipoReserva = tr.ID_TipoReserva
    JOIN TipoClase tc ON r.ID_TipoClase = tc.ID_TipoClase
    JOIN Horario h ON r.ID_Horario = h.ID_Horario
    WHERE r.ID_Cliente = ID_Cliente;
END ;;
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

-- Dump completed on 2024-08-23 21:36:32
