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
-- Table structure for table `jpa_order_items`
--

DROP TABLE IF EXISTS `jpa_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jpa_order_items` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `total_price` int NOT NULL,
  `order_order_id` varchar(255) DEFAULT NULL,
  `product_product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `FKknas4eh1jf3sv36nmdfu4y2n0` (`order_order_id`),
  KEY `FKcfl0bc5jptw1sf8g1dtjwawr` (`product_product_id`),
  CONSTRAINT `FKcfl0bc5jptw1sf8g1dtjwawr` FOREIGN KEY (`product_product_id`) REFERENCES `jpa_products` (`product_id`),
  CONSTRAINT `FKknas4eh1jf3sv36nmdfu4y2n0` FOREIGN KEY (`order_order_id`) REFERENCES `jpa_orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpa_order_items`
--

LOCK TABLES `jpa_order_items` WRITE;
/*!40000 ALTER TABLE `jpa_order_items` DISABLE KEYS */;
INSERT INTO `jpa_order_items` VALUES (1,3,900000,'38d9407e-9839-46c7-abcc-5169a5ea5326','5f2e10c9-80f5-4392-97bd-3e1a26445102'),(2,3,900000,'3c2cb915-4e09-4082-bbf2-9a403082cec7','5f2e10c9-80f5-4392-97bd-3e1a26445102');
/*!40000 ALTER TABLE `jpa_order_items` ENABLE KEYS */;
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
