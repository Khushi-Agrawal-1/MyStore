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
-- Table structure for table `jpa_users`
--

DROP TABLE IF EXISTS `jpa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jpa_users` (
  `user_id` varchar(255) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_sft1v53gr7si14rwa142ifueb` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jpa_users`
--

LOCK TABLES `jpa_users` WRITE;
/*!40000 ALTER TABLE `jpa_users` DISABLE KEYS */;
INSERT INTO `jpa_users` VALUES ('0c711423-d63f-4847-8510-ec2f95ba9645','manager','1988-10-18 05:30:00.000000','kammo453@gmail.com','female','KammoBhatt@12','$2a$10$M1OM.Ctgnp3rmhALZPuNMua1AOQDpGJVOoMO.6RQVQsQxfC6p11e6'),('7f7bb0dd-a1a3-469d-ac4e-72910d345fa0','teacher','1958-01-10 05:30:00.000000','rahul21@gmail.com','male','Rahul@00','$2a$10$3xo.7YfOtKKJbL4p9/U9wuHXDpKLIBAjeCePCBG4re/viGlLk1AiG'),('9ddd556b-342e-4e48-8240-f3176dfb4d65','dotnet trainee','1988-10-17 05:30:00.000000','khushi123@gmail.com','female','Khushi@510','$2a$10$jKdch8abhUfs5oWpDHakYOkwcgW1uHwsmk0tTP6QyESTHxIa40una'),('bf7ef4ee-89d8-4605-9f2b-61553659f64c','java trainee','1988-10-11 05:30:00.000000','kqw213@gmail.com','male','whatehA@i2','shy#djsA'),('dc7df174-1369-489a-8d3b-6f6a39dbabe5','guard','1958-02-17 05:30:00.000000','aakash21@gmail.com','male','AAkash@00','$2a$10$r/Wzbv0n7hL1peFR8Nn0GOBXmgiTZpIy67aC7mA91FXIrB9IBJuvi'),('qwert12345','manager','2012-03-20 00:00:00.000000','khushi56@gmail.com','female','Khushi','12345csA');
/*!40000 ALTER TABLE `jpa_users` ENABLE KEYS */;
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
