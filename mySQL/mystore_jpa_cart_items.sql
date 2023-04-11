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
-- Table structure for table `jpa_cart_items`
--

DROP TABLE IF EXISTS `jpa_cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jpa_cart_items` (
  `card_item_id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `total_price` int NOT NULL,
  `cart_card_id` int DEFAULT NULL,
  `product_product_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`card_item_id`),
  KEY `FK1hqgq2gxlg5uq6rsi3aoovavj` (`cart_card_id`),
  KEY `FKrgmncijtlb3844hgsjhyiemhy` (`product_product_id`),
  CONSTRAINT `FK1hqgq2gxlg5uq6rsi3aoovavj` FOREIGN KEY (`cart_card_id`) REFERENCES `jpa_cart` (`card_id`),
  CONSTRAINT `FKrgmncijtlb3844hgsjhyiemhy` FOREIGN KEY (`product_product_id`) REFERENCES `jpa_products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpa_cart_items`
--

LOCK TABLES `jpa_cart_items` WRITE;
/*!40000 ALTER TABLE `jpa_cart_items` DISABLE KEYS */;
INSERT INTO `jpa_cart_items` VALUES (3,1,100000,3,'10344985-ec1d-400e-a24d-ba88da9bc4cf'),(7,12,1200000,4,'10344985-ec1d-400e-a24d-ba88da9bc4cf'),(9,1,300000,5,'5f2e10c9-80f5-4392-97bd-3e1a26445102');
/*!40000 ALTER TABLE `jpa_cart_items` ENABLE KEYS */;
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
