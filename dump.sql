-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: MYProject
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CITY1_DETAILS`
--

DROP TABLE IF EXISTS `CITY1_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CITY1_DETAILS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(400) DEFAULT NULL,
  `CATEGORY` varchar(400) DEFAULT NULL,
  `EMAIL` varchar(400) DEFAULT NULL,
  `ADDRESS` varchar(400) DEFAULT NULL,
  `CITY` varchar(400) DEFAULT NULL,
  `CONTACT` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITY1_DETAILS`
--

LOCK TABLES `CITY1_DETAILS` WRITE;
/*!40000 ALTER TABLE `CITY1_DETAILS` DISABLE KEYS */;
INSERT INTO `CITY1_DETAILS` VALUES (1,'Aims ','Hospital','aims@gmail.com','123,raipur','delhi','8433001626'),(2,'Max','Hospital','max@gmail.com','12,gandhinagar','Mumbai','8433001626'),(3,'DPS','School','dps@gmail.com','delhi ina','delhi','8433001626'),(4,'Canara Bank','BANK','canara@gmail.com','112,kiran nagar','bangaluru','8433001626'),(5,'PNB','ATM','pnb@gmail.com','12,gandhinagar','chennai','8433001626'),(6,'delhi university','Colleges','du@gmail.com','delhi ina','delhi','8433001626'),(7,'state bank','BANK','state@gmail.com','123,raipur','chennai','8433001626'),(8,'grd','School','grd@gmail.com','112,kiran nagar','kolkata','8433001626');
/*!40000 ALTER TABLE `CITY1_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CITY1_USER`
--

DROP TABLE IF EXISTS `CITY1_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CITY1_USER` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(400) DEFAULT NULL,
  `PASSWORD` varchar(400) DEFAULT NULL,
  `EMAIL` varchar(400) DEFAULT NULL,
  `ADDRESS` varchar(400) DEFAULT NULL,
  `COUNTRY` varchar(400) DEFAULT NULL,
  `CONTACT` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITY1_USER`
--

LOCK TABLES `CITY1_USER` WRITE;
/*!40000 ALTER TABLE `CITY1_USER` DISABLE KEYS */;
INSERT INTO `CITY1_USER` VALUES (1,'shilpa pandey','Shilpa1311@','shilpa@gmail.com','123,raipur','Dehradun',NULL),(2,'Shivani Gupta','shivani','shivani@mail.com','12,greencity','Gurgaon',NULL),(3,'pragya','pragya','pragya@gmail.com','delhi ina','Delhi',NULL),(4,'Prathiksha','prathiksha','p@gmail.com','11,crossroad','Chennai',NULL),(5,'saurav','123','saurav@gmail.com','112,kiran nagar','Raipur',NULL);
/*!40000 ALTER TABLE `CITY1_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CITY_CLASSIFIED`
--

DROP TABLE IF EXISTS `CITY_CLASSIFIED`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CITY_CLASSIFIED` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `BUYSELL` varchar(400) DEFAULT NULL,
  `NAME` varchar(400) DEFAULT NULL,
  `DESCRIPTION` varchar(400) DEFAULT NULL,
  `USERID` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CITY_CLASSIFIED`
--

LOCK TABLES `CITY_CLASSIFIED` WRITE;
/*!40000 ALTER TABLE `CITY_CLASSIFIED` DISABLE KEYS */;
INSERT INTO `CITY_CLASSIFIED` VALUES (1,'SELL','shoes','black color shoes,bata company,lightweight',2),(2,'SELL','dress','party wear dress,red color,georgett type',2),(3,'BUY','car','nano car,blue color,',1),(4,'SELL','watch','titan watch,silver in color,mans watch',1),(5,'SELL','phone','miphone,redmi 6 pro,4 gb ram,28 gb internal memory',1),(6,'BUY','hand bag','gucci bag',3);
/*!40000 ALTER TABLE `CITY_CLASSIFIED` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (10,'shilpa','1234','shilpa@gmail.com',NULL),(11,'Shivani Gupta','123','shivani@mail.com',NULL),(12,'shilpa','123','shilpa@gmail.com','Europe');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (17,'Shilpa PAndey','India','123','shilpa@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user1`
--

DROP TABLE IF EXISTS `user1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user1` (
  `Name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user1`
--

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;
INSERT INTO `user1` VALUES ('shilpa','123','shilpa@gmail.com','UK'),('shilpa','134','shilpa@gmail.com','UK');
/*!40000 ALTER TABLE `user1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_register`
--

DROP TABLE IF EXISTS `user_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_register`
--

LOCK TABLES `user_register` WRITE;
/*!40000 ALTER TABLE `user_register` DISABLE KEYS */;
INSERT INTO `user_register` VALUES (21,'shilpa','shilpa@gmail.com','India','123'),(22,'java','java@mail.com','Europe','java'),(23,'its','its@mail.com','Europe','123'),(24,'shruti','shurti@mail.com','Europe','123'),(25,'ini','ini@gmail.com','India','123');
/*!40000 ALTER TABLE `user_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-28 16:26:26
