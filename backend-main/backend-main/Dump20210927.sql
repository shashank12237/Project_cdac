CREATE DATABASE  IF NOT EXISTS `eci_db_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eci_db_test`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: eci_db_test
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `announcment`
--

DROP TABLE IF EXISTS `announcment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcment` (
  `announcid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`announcid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcment`
--

LOCK TABLES `announcment` WRITE;
/*!40000 ALTER TABLE `announcment` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assemblycandidate`
--

DROP TABLE IF EXISTS `assemblycandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblycandidate` (
  `candidateid` int NOT NULL AUTO_INCREMENT,
  `assemblyid` int DEFAULT NULL,
  `parliamentid` int DEFAULT NULL,
  `partyid` int DEFAULT NULL,
  `electionid` int DEFAULT NULL,
  `criminaldetails` varchar(100) DEFAULT NULL,
  `incomedetails` double DEFAULT NULL,
  `voterid` int DEFAULT NULL,
  PRIMARY KEY (`candidateid`),
  KEY `assemblyid` (`assemblyid`),
  KEY `partyid` (`partyid`),
  KEY `voterid` (`voterid`),
  CONSTRAINT `assemblycandidate_ibfk_1` FOREIGN KEY (`assemblyid`) REFERENCES `assemblyinfo` (`assemblyid`),
  CONSTRAINT `assemblycandidate_ibfk_2` FOREIGN KEY (`partyid`) REFERENCES `politicalparty` (`partyid`),
  CONSTRAINT `assemblycandidate_ibfk_3` FOREIGN KEY (`voterid`) REFERENCES `voterinfo` (`voterid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblycandidate`
--

LOCK TABLES `assemblycandidate` WRITE;
/*!40000 ALTER TABLE `assemblycandidate` DISABLE KEYS */;
INSERT INTO `assemblycandidate` VALUES (2,2001,NULL,214,101,'No',500000,1005),(3,2004,NULL,215,101,'No',1000000,1006),(4,2008,NULL,216,101,'Yes',1500000,1007),(5,2004,NULL,217,101,'Yes',750000,1008),(6,2001,NULL,218,101,'No',10000,1009),(7,2008,NULL,219,101,'Yes',10000000,1010),(11,2002,NULL,214,103,'No',780000,1005);
/*!40000 ALTER TABLE `assemblycandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assemblyinfo`
--

DROP TABLE IF EXISTS `assemblyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblyinfo` (
  `assemblyid` int NOT NULL AUTO_INCREMENT,
  `state` varchar(15) DEFAULT NULL,
  `notation` varchar(5) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `assemblyname` varchar(20) DEFAULT NULL,
  `parliamentid` int DEFAULT NULL,
  PRIMARY KEY (`assemblyid`)
) ENGINE=InnoDB AUTO_INCREMENT=2022 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblyinfo`
--

LOCK TABLES `assemblyinfo` WRITE;
/*!40000 ALTER TABLE `assemblyinfo` DISABLE KEYS */;
INSERT INTO `assemblyinfo` VALUES (2001,'Maharashtra','MH','Satara','Vadgaon',5001),(2002,'Maharashtra','MH','Pune','ShivajiNagar',5001),(2003,'Maharashtra','MH','Pune','Kothrud',5001),(2004,'Maharashtra','MH','Satara','Wai',5002),(2005,'Maharashtra','MH','Satara','Koregaon',5002),(2006,'Maharashtra','MH','Satara','Patan',5002),(2007,'Maharashtra','MH','Solapur','Mohol',5003),(2008,'Maharashtra','MH','Solapur','Akkalkot',5003),(2009,'Maharashtra','MH','Solapur','Pandharpur',5003),(2010,'Karnataka','KAR','Mysore','Krishnaraja',5004),(2011,'Karnataka','KAR','Mysore','Chamaraja',5004),(2012,'Karnataka','KAR','Mysore','Narsimharaja',5004),(2013,'Karnataka','KAR','Gulbarga','Jewargi',5005),(2014,'Karnataka','KAR','Gulbarga','Chittapur',5005),(2015,'Karnataka','KAR','Gulbarga','Sedam',5005),(2016,'Kerala','KER','Malapurram','Manjeri',5006),(2017,'Kerala','KER','Malapurram','Mankada',5006),(2018,'Kerala','KER','Malapurram','Vengara',5006),(2019,'Kerala','KER','Kollam','Chavara',5007),(2020,'Kerala','KER','Kollam','Kundara',5007);
/*!40000 ALTER TABLE `assemblyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assemblyresult`
--

DROP TABLE IF EXISTS `assemblyresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assemblyresult` (
  `assemblyresultid` int NOT NULL AUTO_INCREMENT,
  `assemblyid` int DEFAULT NULL,
  `candidateid` int DEFAULT NULL,
  `electionid` int DEFAULT NULL,
  PRIMARY KEY (`assemblyresultid`),
  KEY `assemblyid` (`assemblyid`),
  KEY `electionid` (`electionid`),
  KEY `candidateid` (`candidateid`),
  CONSTRAINT `assemblyresult_ibfk_1` FOREIGN KEY (`assemblyid`) REFERENCES `assemblyinfo` (`assemblyid`),
  CONSTRAINT `assemblyresult_ibfk_2` FOREIGN KEY (`electionid`) REFERENCES `election` (`electionid`),
  CONSTRAINT `assemblyresult_ibfk_3` FOREIGN KEY (`candidateid`) REFERENCES `assemblycandidate` (`candidateid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assemblyresult`
--

LOCK TABLES `assemblyresult` WRITE;
/*!40000 ALTER TABLE `assemblyresult` DISABLE KEYS */;
INSERT INTO `assemblyresult` VALUES (10,2001,2,101),(11,2004,3,101),(12,2008,7,101),(13,2002,5,101);
/*!40000 ALTER TABLE `assemblyresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `complaintid` int NOT NULL AUTO_INCREMENT,
  `assemblyid` int DEFAULT NULL,
  `complaintdescription` varchar(300) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `parliamentid` int DEFAULT NULL,
  PRIMARY KEY (`complaintid`),
  KEY `assemblyid` (`assemblyid`),
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`assemblyid`) REFERENCES `assemblyinfo` (`assemblyid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `election` (
  `electionid` int NOT NULL AUTO_INCREMENT,
  `electionname` varchar(15) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `resultdate` date DEFAULT NULL,
  PRIMARY KEY (`electionid`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `election`
--

LOCK TABLES `election` WRITE;
/*!40000 ALTER TABLE `election` DISABLE KEYS */;
INSERT INTO `election` VALUES (101,'Assembly','Maharashtra',2021,'2021-09-24','2021-09-30'),(102,'Parliament','Kerala',2021,'2021-09-25','2021-09-30'),(103,'Parliament','Karnataka',2021,'2021-09-26','2021-09-30'),(105,'Assembly-3','Maharashtra',2024,'2021-09-21','2021-09-26');
/*!40000 ALTER TABLE `election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parliamentcandidate`
--

DROP TABLE IF EXISTS `parliamentcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parliamentcandidate` (
  `candidateid` int NOT NULL AUTO_INCREMENT,
  `parliamentid` int DEFAULT NULL,
  `partyid` int DEFAULT NULL,
  `electionid` int DEFAULT NULL,
  `criminaldetails` varchar(100) DEFAULT NULL,
  `incomedetails` double DEFAULT NULL,
  `voterid` int DEFAULT NULL,
  PRIMARY KEY (`candidateid`),
  KEY `parliamentid` (`parliamentid`),
  KEY `partyid` (`partyid`),
  KEY `voterid` (`voterid`),
  CONSTRAINT `parliamentcandidate_ibfk_1` FOREIGN KEY (`parliamentid`) REFERENCES `parliamentinfo` (`parliamentid`),
  CONSTRAINT `parliamentcandidate_ibfk_2` FOREIGN KEY (`partyid`) REFERENCES `politicalparty` (`partyid`),
  CONSTRAINT `parliamentcandidate_ibfk_3` FOREIGN KEY (`voterid`) REFERENCES `voterinfo` (`voterid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parliamentcandidate`
--

LOCK TABLES `parliamentcandidate` WRITE;
/*!40000 ALTER TABLE `parliamentcandidate` DISABLE KEYS */;
INSERT INTO `parliamentcandidate` VALUES (12,5001,217,102,'No',300000,1005),(13,5001,214,102,'No',30000,1011),(14,5007,218,102,'No',350000,1012),(15,5004,219,103,'No',30500,1013),(16,5004,214,103,'No',40000,1014),(17,5007,215,102,'No',780000,1015);
/*!40000 ALTER TABLE `parliamentcandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parliamentinfo`
--

DROP TABLE IF EXISTS `parliamentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parliamentinfo` (
  `parliamentid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`parliamentid`)
) ENGINE=InnoDB AUTO_INCREMENT=5008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parliamentinfo`
--

LOCK TABLES `parliamentinfo` WRITE;
/*!40000 ALTER TABLE `parliamentinfo` DISABLE KEYS */;
INSERT INTO `parliamentinfo` VALUES (5001,'Pune','Maharashtra','Pune'),(5002,'Satara','Maharashtra','Satara'),(5003,'Solapur','Maharashtra','Solapur'),(5004,'Mysore','Karnataka','Mysore'),(5005,'Gulbarga','Karnataka','Gulbarga'),(5006,'Malapurram','Kerala','Malapurram'),(5007,'Kollam','Kerala','Kollam');
/*!40000 ALTER TABLE `parliamentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parliamentresult`
--

DROP TABLE IF EXISTS `parliamentresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parliamentresult` (
  `parliamentresultid` int NOT NULL AUTO_INCREMENT,
  `parliamentid` int DEFAULT NULL,
  `candidateid` int DEFAULT NULL,
  `electionid` int DEFAULT NULL,
  PRIMARY KEY (`parliamentresultid`),
  KEY `electionid` (`electionid`),
  KEY `candidateid` (`candidateid`),
  KEY `parliamentid` (`parliamentid`),
  CONSTRAINT `parliamentresult_ibfk_1` FOREIGN KEY (`electionid`) REFERENCES `election` (`electionid`),
  CONSTRAINT `parliamentresult_ibfk_2` FOREIGN KEY (`candidateid`) REFERENCES `parliamentcandidate` (`candidateid`),
  CONSTRAINT `parliamentresult_ibfk_3` FOREIGN KEY (`parliamentid`) REFERENCES `parliamentinfo` (`parliamentid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parliamentresult`
--

LOCK TABLES `parliamentresult` WRITE;
/*!40000 ALTER TABLE `parliamentresult` DISABLE KEYS */;
INSERT INTO `parliamentresult` VALUES (1,5001,12,102),(2,5001,12,102),(3,5007,14,102),(4,5004,15,103);
/*!40000 ALTER TABLE `parliamentresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `politicalparty`
--

DROP TABLE IF EXISTS `politicalparty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `politicalparty` (
  `partyid` int NOT NULL AUTO_INCREMENT,
  `partyname` varchar(30) DEFAULT NULL,
  `presidentname` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `partysymbol` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`partyid`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `politicalparty`
--

LOCK TABLES `politicalparty` WRITE;
/*!40000 ALTER TABLE `politicalparty` DISABLE KEYS */;
INSERT INTO `politicalparty` VALUES (214,'Aadmi Party','Arvind Shinde','Delhi','New Delhi','New Delhi','Groom.png'),(215,'National Congress','Rahul Chavan','Maharashtra','Mumbai','Mumbai','Hand.png'),(216,'Janata Party','Amit Jagtap','Maharashtra','Mumbai','Mumbai','Kamal.png'),(217,'Nationalist Congress','Sharad Patil','Maharashtra','Pune','Pune','Clock.jpg'),(218,'Jan Sena','Aditya Kale','Maharashtra','Mumbai','Mumbai','Bow.jpg'),(219,'Janata Dal','Raj Jadhav','Karnataka','Mysore','Mysore','Train.png'),(220,'Shivsena','Uddhav Thakare','Maharashtra','Mumbai','Mumbai','Bow.jpg');
/*!40000 ALTER TABLE `politicalparty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uniqueid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (116,'nitin@gmail.com','8806352124','112233'),(117,'ninad@gmail.com','7706352188','445566'),(118,'ajay@gmail.com','8804125632','778899'),(119,'suraj@gmail.com','7745862415','115599'),(120,'arvind@gmail.com','9955478624','668877'),(121,'rahul@gmail.com','9964752134','774455'),(122,'rahul@gmail.com','9562487962','123456'),(123,'amit@gmail.com','8745241256','668877'),(124,'sharad@gmail.com','9874512457','748748'),(125,'aditya@gmail.com','8745962315','996633'),(126,'raj@gmail.com','8574621542','523523'),(127,'sachin@gmail.com','9635241578','447766'),(128,'ajit@gmail.com','7276847547','652652'),(129,'ashish@gmail.com','9988564785','857857'),(130,'sangram@gmail.com','7768046436','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voteraddress`
--

DROP TABLE IF EXISTS `voteraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voteraddress` (
  `addressid` int NOT NULL AUTO_INCREMENT,
  `state` varchar(15) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `taluka` varchar(20) DEFAULT NULL,
  `village` varchar(20) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `assemblyid` int DEFAULT NULL,
  `parliamentid` int DEFAULT NULL,
  `voterid` int DEFAULT NULL,
  PRIMARY KEY (`addressid`),
  KEY `voterid` (`voterid`),
  KEY `assemblyid` (`assemblyid`),
  KEY `parliamentid` (`parliamentid`),
  CONSTRAINT `voteraddress_ibfk_1` FOREIGN KEY (`voterid`) REFERENCES `voterinfo` (`voterid`),
  CONSTRAINT `voteraddress_ibfk_2` FOREIGN KEY (`assemblyid`) REFERENCES `assemblyinfo` (`assemblyid`),
  CONSTRAINT `voteraddress_ibfk_3` FOREIGN KEY (`parliamentid`) REFERENCES `parliamentinfo` (`parliamentid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voteraddress`
--

LOCK TABLES `voteraddress` WRITE;
/*!40000 ALTER TABLE `voteraddress` DISABLE KEYS */;
INSERT INTO `voteraddress` VALUES (6,'Maharashtra','Pune','Haveli','Hadapsar','411028',2001,5001,1005),(7,'Maharashtra','Pune','Haveli','Kharadi','411028',2004,5002,1006),(8,'Maharashtra','Solapur','Akkalkot','Akkalkot','413216',2008,5003,1007),(9,'Maharashtra','Satara','Wai','Wai','412803',2004,5002,1008),(10,'Karnataka','Mysore','Mysore','Mysore North','570001',2010,5004,1009),(11,'Karnataka','Gulbarga','Sedam','Sedam','585222',2015,5005,1010),(12,'Maharashtra','Satara','Wai','Wai','412803',2004,5002,1011),(13,'Maharashtra','Pune','Haveli','Haveli','411001',2002,5001,1012),(14,'Maharashtra','Solapur','Akkalkot','Akkalkot','413216',2008,5003,1013),(15,'Maharashtra','Satara','Koregaon','Koregaon','415501',2005,5002,1014),(16,'Maharashtra','Solapur','Pandharpur','Pandharpur','413304',2009,5003,1015),(17,'Maharashtra','Satara','Patan','Patan','415206',2006,5002,1016),(18,'Maharashtra','Pune','Haveli','Kharadi','411013',2001,NULL,1017);
/*!40000 ALTER TABLE `voteraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voterdocument`
--

DROP TABLE IF EXISTS `voterdocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voterdocument` (
  `docid` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `voterid` int DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `voterid` (`voterid`),
  CONSTRAINT `voterdocument_ibfk_1` FOREIGN KEY (`voterid`) REFERENCES `voterinfo` (`voterid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voterdocument`
--

LOCK TABLES `voterdocument` WRITE;
/*!40000 ALTER TABLE `voterdocument` DISABLE KEYS */;
INSERT INTO `voterdocument` VALUES (5,NULL,NULL,'ae3e4eef2fb249be883a311c51a74ea6',1005),(6,NULL,NULL,'ae3e4eef2fb249be883a311c51a74ea6',1006),(7,NULL,NULL,'d684ee109af344fc91fbf3e9c3c50307',1007),(8,NULL,NULL,'d684ee109af344fc91fbf3e9c3c50307',1008),(9,NULL,NULL,'d684ee109af344fc91fbf3e9c3c50307',1009),(10,NULL,NULL,'d684ee109af344fc91fbf3e9c3c50307',1010),(11,NULL,NULL,'48d9d3c9ebf449e2b8a56b538a248eb7',1011),(12,NULL,NULL,'48d9d3c9ebf449e2b8a56b538a248eb7',1012),(13,NULL,NULL,'48d9d3c9ebf449e2b8a56b538a248eb7',1013),(14,NULL,NULL,'48d9d3c9ebf449e2b8a56b538a248eb7',1014),(15,NULL,NULL,'ae3e4eef2fb249be883a311c51a74ea6',1015),(16,NULL,NULL,'ae3e4eef2fb249be883a311c51a74ea6',1016),(17,'01cd2cf5ef844ff2bfa854db80b61c18','f4eb45adcfb746a28562014e2d0f968a','899163bc87bf4813a09bcb53865d31cd',1017);
/*!40000 ALTER TABLE `voterdocument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voterinfo`
--

DROP TABLE IF EXISTS `voterinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voterinfo` (
  `voterid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(15) DEFAULT NULL,
  `middlename` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `uid` varchar(20) DEFAULT NULL,
  `pan` varchar(20) DEFAULT NULL,
  `uniqueid` int DEFAULT NULL,
  PRIMARY KEY (`voterid`),
  KEY `uniqueid` (`uniqueid`),
  CONSTRAINT `voterinfo_ibfk_1` FOREIGN KEY (`uniqueid`) REFERENCES `user` (`uniqueid`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voterinfo`
--

LOCK TABLES `voterinfo` WRITE;
/*!40000 ALTER TABLE `voterinfo` DISABLE KEYS */;
INSERT INTO `voterinfo` VALUES (1005,'Nitin','Ashok','Gorte','1996-04-23',25,'M','112234','PAN123',116),(1006,'Ninad','Sanjay','Jagtap','1999-08-20',22,'M','152641','PAN141',117),(1007,'Ajay','Vitthal','Ingale','1998-10-15',23,'M','154786','PAN457',118),(1008,'Suraj','Pramod','Kapse','2000-12-06',21,'M','784596','PAN568',119),(1009,'Arvind','Ram','Shinde','1970-12-21',51,'M','887456','PAN784',120),(1010,'Amit','Rajesh','Jagtap','1965-04-23',55,'M','968451','PAN785',123),(1011,'Sharad','Vilas','Patil','1960-01-12',61,'M','896874','PAN542',124),(1012,'Aditya','Shyam','Kale','1980-05-04',40,'M','964857','PAN687',125),(1013,'Raj','Madhav','Jadhav','1960-01-01',61,'M','856217','PAN325',126),(1014,'Sachin','Ashok','Chavan','1995-08-23',26,'M','568475','PAN415',127),(1015,'Ajit','Govind','Jadhav','1996-05-18',25,'M','784598','PAN457',128),(1016,'Ashish','Bal','Kore','1998-05-16',23,'M','874598','PAN632',129),(1017,'Sangram','Sanjay','Jagtap','2021-09-10',22,'M','123545','PAN-14',130);
/*!40000 ALTER TABLE `voterinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-27 22:34:59
