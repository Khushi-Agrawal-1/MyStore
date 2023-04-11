-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: mystore
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `jpa_users_roles`
--

DROP TABLE IF EXISTS `jpa_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jpa_users_roles` (
  `user_user_id` varchar(255) NOT NULL,
  `roles_role_id` varchar(255) NOT NULL,
  PRIMARY KEY (`user_user_id`,`roles_role_id`),
  KEY `FKbh036cqxl15we3w7jbt5vcsvc` (`roles_role_id`),
  CONSTRAINT `FKbh036cqxl15we3w7jbt5vcsvc` FOREIGN KEY (`roles_role_id`) REFERENCES `jpa_roles` (`role_id`),
  CONSTRAINT `FKfxax1y09o7ireib93dhcrbjxf` FOREIGN KEY (`user_user_id`) REFERENCES `jpa_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpa_users_roles`
--

LOCK TABLES `jpa_users_roles` WRITE;
/*!40000 ALTER TABLE `jpa_users_roles` DISABLE KEYS */;
INSERT INTO `jpa_users_roles` VALUES ('0c711423-d63f-4847-8510-ec2f95ba9645','awetafwedrgveswaebwht'),('9ddd556b-342e-4e48-8240-f3176dfb4d65','awetafwedrgveswaebwht'),('qwert12345','awetafwedrgveswaebwht'),('0c711423-d63f-4847-8510-ec2f95ba9645','setvy5tbehgfcwtwevv'),('7f7bb0dd-a1a3-469d-ac4e-72910d345fa0','setvy5tbehgfcwtwevv'),('9ddd556b-342e-4e48-8240-f3176dfb4d65','setvy5tbehgfcwtwevv'),('bf7ef4ee-89d8-4605-9f2b-61553659f64c','setvy5tbehgfcwtwevv'),('dc7df174-1369-489a-8d3b-6f6a39dbabe5','setvy5tbehgfcwtwevv');
/*!40000 ALTER TABLE `jpa_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 14:41:41
