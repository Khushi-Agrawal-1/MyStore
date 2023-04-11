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
-- Table structure for table `jpa_orders`
--

DROP TABLE IF EXISTS `jpa_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jpa_orders` (
  `order_id` varchar(255) NOT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `delivered_date` datetime(6) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `ordered_date` datetime(6) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `total_amount` int NOT NULL,
  `user_user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKgx683l3bgebjb2wowxe85niei` (`user_user_id`),
  CONSTRAINT `FKgx683l3bgebjb2wowxe85niei` FOREIGN KEY (`user_user_id`) REFERENCES `jpa_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpa_orders`
--

LOCK TABLES `jpa_orders` WRITE;
/*!40000 ALTER TABLE `jpa_orders` DISABLE KEYS */;
INSERT INTO `jpa_orders` VALUES ('38d9407e-9839-46c7-abcc-5169a5ea5326','sec 19','mayank','9876543233','2022-12-16 15:37:35.835000','pending','2022-12-16 15:37:35.835000','pending',900000,'bf7ef4ee-89d8-4605-9f2b-61553659f64c'),('3c2cb915-4e09-4082-bbf2-9a403082cec7','sec 19','ayank','8876543233','2022-12-16 15:37:35.835000','pending','2022-12-16 15:37:35.835000','pending',900000,'0c711423-d63f-4847-8510-ec2f95ba9645');
/*!40000 ALTER TABLE `jpa_orders` ENABLE KEYS */;
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
