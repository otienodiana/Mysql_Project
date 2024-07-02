-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: database_one
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Temporary view structure for view `novemberprojects`
--

DROP TABLE IF EXISTS `novemberprojects`;
/*!50001 DROP VIEW IF EXISTS `novemberprojects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `novemberprojects` AS SELECT 
 1 AS `ProjectName`,
 1 AS `ClientName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `clientcontacts`
--

DROP TABLE IF EXISTS `clientcontacts`;
/*!50001 DROP VIEW IF EXISTS `clientcontacts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientcontacts` AS SELECT 
 1 AS `ClientID`,
 1 AS `ClientName`,
 1 AS `ContactName`,
 1 AS `ContactEmail`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ongoingprojects`
--

DROP TABLE IF EXISTS `ongoingprojects`;
/*!50001 DROP VIEW IF EXISTS `ongoingprojects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ongoingprojects` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `ClientID`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectdetailswithteammembers`
--

DROP TABLE IF EXISTS `projectdetailswithteammembers`;
/*!50001 DROP VIEW IF EXISTS `projectdetailswithteammembers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectdetailswithteammembers` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `ClientID`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `TotalTeamMembers`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectsperemployee`
--

DROP TABLE IF EXISTS `projectsperemployee`;
/*!50001 DROP VIEW IF EXISTS `projectsperemployee`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectsperemployee` AS SELECT 
 1 AS `EmployeeName`,
 1 AS `TotalProjects`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `projectswithteamleads`
--

DROP TABLE IF EXISTS `projectswithteamleads`;
/*!50001 DROP VIEW IF EXISTS `projectswithteamleads`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `projectswithteamleads` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `ClientID`,
 1 AS `TeamLead`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `overdueprojects`
--

DROP TABLE IF EXISTS `overdueprojects`;
/*!50001 DROP VIEW IF EXISTS `overdueprojects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `overdueprojects` AS SELECT 
 1 AS `ProjectID`,
 1 AS `ProjectName`,
 1 AS `ClientID`,
 1 AS `Requirements`,
 1 AS `Deadline`,
 1 AS `DaysOverdue`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `novemberprojects`
--

/*!50001 DROP VIEW IF EXISTS `novemberprojects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `novemberprojects` AS select `projects`.`ProjectName` AS `ProjectName`,`clients`.`ClientName` AS `ClientName`,`clients`.`ContactName` AS `ContactName`,`clients`.`ContactEmail` AS `ContactEmail` from (`projects` join `clients` on((`projects`.`ClientID` = `clients`.`ClientID`))) where (`projects`.`Deadline` between '2024-11-01' and '2024-11-30') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientcontacts`
--

/*!50001 DROP VIEW IF EXISTS `clientcontacts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientcontacts` AS select `clients`.`ClientID` AS `ClientID`,`clients`.`ClientName` AS `ClientName`,`clients`.`ContactName` AS `ContactName`,`clients`.`ContactEmail` AS `ContactEmail` from `clients` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ongoingprojects`
--

/*!50001 DROP VIEW IF EXISTS `ongoingprojects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ongoingprojects` AS select `projects`.`ProjectID` AS `ProjectID`,`projects`.`ProjectName` AS `ProjectName`,`projects`.`Requirements` AS `Requirements`,`projects`.`Deadline` AS `Deadline`,`projects`.`ClientID` AS `ClientID` from `projects` where (`projects`.`Deadline` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectdetailswithteammembers`
--

/*!50001 DROP VIEW IF EXISTS `projectdetailswithteammembers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectdetailswithteammembers` AS select `projects`.`ProjectID` AS `ProjectID`,`projects`.`ProjectName` AS `ProjectName`,`projects`.`ClientID` AS `ClientID`,`projects`.`Requirements` AS `Requirements`,`projects`.`Deadline` AS `Deadline`,count(`teammembers`.`EmployeeID`) AS `TotalTeamMembers` from (`projects` left join `teammembers` on((`projects`.`ProjectID` = `teammembers`.`ProjectID`))) group by `projects`.`ProjectID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectsperemployee`
--

/*!50001 DROP VIEW IF EXISTS `projectsperemployee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectsperemployee` AS select `employees`.`EmployeeName` AS `EmployeeName`,count(`projectteam`.`ProjectID`) AS `TotalProjects` from (`employees` left join `projectteam` on((`employees`.`EmployeeID` = `projectteam`.`EmployeeID`))) group by `employees`.`EmployeeID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `projectswithteamleads`
--

/*!50001 DROP VIEW IF EXISTS `projectswithteamleads`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `projectswithteamleads` AS select `projects`.`ProjectID` AS `ProjectID`,`projects`.`ProjectName` AS `ProjectName`,`projects`.`Requirements` AS `Requirements`,`projects`.`Deadline` AS `Deadline`,`projects`.`ClientID` AS `ClientID`,`employees`.`EmployeeName` AS `TeamLead` from ((`projects` left join `projectteam` on((`projects`.`ProjectID` = `projectteam`.`ProjectID`))) left join `employees` on((`projectteam`.`EmployeeID` = `employees`.`EmployeeID`))) where (`projectteam`.`TeamLead` = 'Yes') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overdueprojects`
--

/*!50001 DROP VIEW IF EXISTS `overdueprojects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overdueprojects` AS select `projects`.`ProjectID` AS `ProjectID`,`projects`.`ProjectName` AS `ProjectName`,`projects`.`ClientID` AS `ClientID`,`projects`.`Requirements` AS `Requirements`,`projects`.`Deadline` AS `Deadline`,(to_days(curdate()) - to_days(`projects`.`Deadline`)) AS `DaysOverdue` from `projects` where (`projects`.`Deadline` < curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-02 19:31:16
