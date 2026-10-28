-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: syria_reconstruction_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `macro_forecast`
--

DROP TABLE IF EXISTS `macro_forecast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `macro_forecast` (
  `year_period` varchar(20) NOT NULL,
  `gdp_growth_pct` float DEFAULT NULL,
  `reconstruction_budget_billion` float DEFAULT NULL,
  `inflation_rate_pct` float DEFAULT NULL,
  `unemployment_rate_pct` float DEFAULT NULL,
  `returnees_thousands` int DEFAULT NULL,
  PRIMARY KEY (`year_period`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `macro_forecast`
--

LOCK TABLES `macro_forecast` WRITE;
/*!40000 ALTER TABLE `macro_forecast` DISABLE KEYS */;
INSERT INTO `macro_forecast` VALUES ('2025 (Jan-Dec)',2.5,8,35,42,250),('2026',10.5,18,15,30,500),('2027',9.8,25,8,22,650),('2028',7.5,28,6,18,500),('2029',6,25,5,15,350),('2030 (Q1-Mar)',5.5,7,4,13.5,100);
/*!40000 ALTER TABLE `macro_forecast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risk_assessment`
--

DROP TABLE IF EXISTS `risk_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `risk_assessment` (
  `risk_id` int NOT NULL AUTO_INCREMENT,
  `year_period` varchar(20) DEFAULT NULL,
  `political_stability_score` int DEFAULT NULL,
  `sanctions_relief_score` int DEFAULT NULL,
  `institutional_capacity` int DEFAULT NULL,
  PRIMARY KEY (`risk_id`),
  KEY `year_period` (`year_period`),
  CONSTRAINT `risk_assessment_ibfk_1` FOREIGN KEY (`year_period`) REFERENCES `macro_forecast` (`year_period`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risk_assessment`
--

LOCK TABLES `risk_assessment` WRITE;
/*!40000 ALTER TABLE `risk_assessment` DISABLE KEYS */;
INSERT INTO `risk_assessment` VALUES (1,'2025 (Jan-Dec)',4,5,4),(2,'2026',7,10,6),(3,'2027',8,10,7),(4,'2028',8,10,8),(5,'2029',9,10,8),(6,'2030 (Q1-Mar)',9,10,9),(7,'2025 (Jan-Dec)',4,5,4),(8,'2026',7,10,6),(9,'2027',8,10,7),(10,'2028',8,10,8),(11,'2029',9,10,8),(12,'2030 (Q1-Mar)',9,10,9);
/*!40000 ALTER TABLE `risk_assessment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-28 23:59:18
