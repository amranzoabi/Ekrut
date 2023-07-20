-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ekrut
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
-- Table structure for table `category_percentage_permonth`
--

DROP TABLE IF EXISTS `category_percentage_permonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_percentage_permonth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Month` enum('January','February','March','April','May','June','July','August','September','October','November','December') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `Location` enum('the Baha''i Gardens','Maritime Museum','Haifa-University','Old City','Down Town','The Castle','Alna''ma','Ort Braude','North','Park','Jaffa','Yemenite Quarter','Tel Aviv Museum','Tel-Aviv University') DEFAULT NULL,
  `Category1` int DEFAULT NULL,
  `Category2` int DEFAULT NULL,
  `Category3` int DEFAULT NULL,
  `Category4` int DEFAULT NULL,
  `Category5` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Date` (`Month`,`Area`,`Location`),
  CONSTRAINT `category_percentage_permonth_chk_5` CHECK ((((((`Category1` + `Category2`) + `Category3`) + `Category4`) + `Category5`) = 100))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_percentage_permonth`
--

LOCK TABLES `category_percentage_permonth` WRITE;
/*!40000 ALTER TABLE `category_percentage_permonth` DISABLE KEYS */;
INSERT INTO `category_percentage_permonth` VALUES (2,'December','Shefa-Amer','Down Town',30,20,10,20,20),(3,'February','Haifa','Down Town',10,20,30,20,20),(4,'March','Haifa','Down Town',20,10,30,20,20),(5,'April','Haifa','Down Town',30,20,10,20,20),(6,'May','Haifa','Down Town',10,30,30,10,20),(7,'June','Haifa','Down Town',10,10,40,20,20),(8,'July','Haifa','Down Town',0,20,50,20,10),(9,'August','Haifa','Down Town',10,20,50,0,20),(11,'June','Shefa-Amer','The Castle',15,20,25,20,20),(12,'February','Haifa','the Baha\'i Gardens',20,20,20,20,20),(13,'December','Tel-Aviv','Yemenite Quarter',20,20,20,20,20),(25,'February','Shefa-Amer','The Castle',20,25,30,20,5),(26,'March','Karmiel','Ort Braude',15,20,25,30,10),(27,'April','Tel-Aviv','Yemenite Quarter',30,25,20,15,10),(28,'May','Haifa','Old City',10,15,20,25,30),(29,'June','Shefa-Amer','Old City',30,20,15,10,25),(30,'July','Karmiel','Ort Braude',25,30,20,15,10),(31,'August','Tel-Aviv','Yemenite Quarter',20,15,10,25,30),(32,'September','Haifa','the Baha\'i Gardens',15,10,25,30,20),(33,'October','Shefa-Amer','Old City',30,25,20,15,10),(34,'November','Karmiel','Ort Braude',25,30,20,15,10),(35,'December','Tel-Aviv','Maritime Museum',20,25,30,20,5),(37,'February','Shefa-Amer','Old City',30,25,20,15,10),(38,'March','Karmiel','Park',10,15,20,25,30),(39,'April','Tel-Aviv','Jaffa',30,20,15,10,25),(40,'May','Haifa','Haifa-University',25,30,20,15,10),(41,'June','Shefa-Amer','Down Town',20,15,10,25,30),(42,'July','Karmiel','Park',15,10,25,30,20),(43,'August','Tel-Aviv','Maritime Museum',30,25,20,15,10);
/*!40000 ALTER TABLE `category_percentage_permonth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_profit_permonth`
--

DROP TABLE IF EXISTS `category_profit_permonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_profit_permonth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Month` enum('January','February','March','April','May','June','July','August','September','October','November','December') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `Location` enum('the Baha''i Gardens','Maritime Museum','Haifa-University','Old City','Down Town','The Castle','Alna''ma','Ort Braude','North','Park','Jaffa','Yemenite Quarter','Tel Aviv Museum','Tel-Aviv University') DEFAULT NULL,
  `Category1` int DEFAULT NULL,
  `Category2` int DEFAULT NULL,
  `Category3` int DEFAULT NULL,
  `Category4` int DEFAULT NULL,
  `Category5` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Date` (`Month`,`Area`,`Location`),
  KEY `AreaEqualToReport_idx` (`Area`),
  KEY `LocationEqualsToReport_idx` (`Location`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_profit_permonth`
--

LOCK TABLES `category_profit_permonth` WRITE;
/*!40000 ALTER TABLE `category_profit_permonth` DISABLE KEYS */;
INSERT INTO `category_profit_permonth` VALUES (2,'May','Haifa','Down Town',900,850,800,750,700),(3,'June','Shefa-Amer','The Castle',600,550,500,450,400),(4,'December','Tel-Aviv','Yemenite Quarter',800,750,700,650,600),(5,'July','Haifa','Down Town',400,350,300,250,200),(6,'August','Shefa-Amer','The Castle',200,150,100,50,25),(7,'February','Tel-Aviv','Yemenite Quarter',400,350,300,250,200),(25,'February','Shefa-Amer','Down Town',2500,3000,3500,4000,4500),(26,'March','Karmiel','Park',2000,2500,3000,3500,4000),(27,'April','Tel-Aviv','Tel Aviv Museum',3500,3000,2500,2000,1500),(28,'May','Haifa','Haifa-University',1500,2000,2500,3000,3500),(29,'June','Shefa-Amer','Alna\'ma',4000,3500,3000,2500,2000),(30,'July','Karmiel','Park',3000,3500,4000,4500,5000),(31,'August','Tel-Aviv','Tel Aviv Museum',4500,4000,3500,3000,2500),(32,'September','Haifa','Haifa-University',2500,3000,3500,4000,4500),(33,'October','Shefa-Amer','Alna\'ma',4000,3500,3000,2500,2000),(34,'November','Karmiel','Park',3000,3500,4000,4500,5000),(35,'December','Tel-Aviv','Tel Aviv Museum',4500,4000,3500,3000,2500),(37,'February','Shefa-Amer','Alna\'ma',4000,3500,3000,2500,2000),(38,'March','Karmiel','North',3000,3500,4000,4500,5000),(39,'April','Tel-Aviv','Jaffa',4500,4000,3500,3000,2500),(40,'May','Haifa',NULL,2500,3000,3500,4000,4500),(41,'June','Shefa-Amer','Down Town',4000,3500,3000,2500,2000),(42,'July','Karmiel','North',3000,3500,4000,4500,5000),(43,'August','Tel-Aviv','Jaffa',3500,4000,4500,5000,5500),(44,'September','Haifa',NULL,4000,4500,5000,5500,6000),(45,'October','Shefa-Amer','The Castle',4500,5000,5500,6000,6500),(46,'November','Karmiel','North',5000,5500,6000,6500,7000),(47,'December','Tel-Aviv','Jaffa',5500,6000,6500,7000,7500),(49,'February','Shefa-Amer','The Castle',6500,7000,7500,8000,8500),(50,'March','Karmiel','Down Town',7000,7500,8000,8500,9000),(51,'April','Tel-Aviv','Tel-Aviv University',7500,8000,8500,9000,9500),(52,'May','Haifa',NULL,8000,8500,9000,9500,10000);
/*!40000 ALTER TABLE `category_profit_permonth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costumers`
--

DROP TABLE IF EXISTS `costumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costumers` (
  `costumerID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `debt` int DEFAULT NULL,
  `permissions` varchar(45) DEFAULT NULL,
  `storeCredit` double DEFAULT NULL,
  `creditCard` varchar(45) DEFAULT NULL,
  `expirationDate` varchar(45) DEFAULT NULL,
  `cvv` varchar(45) DEFAULT NULL,
  `cType` enum('Customer','Subscriber') DEFAULT NULL,
  PRIMARY KEY (`costumerID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costumers`
--

LOCK TABLES `costumers` WRITE;
/*!40000 ALTER TABLE `costumers` DISABLE KEYS */;
INSERT INTO `costumers` VALUES (1,'customer',0,'APPROVED',260,'5553222559632158','02/25','572','Customer'),(2,'subscriber',0,'APPROVED',0,'5553222559632158','03/25','694','Subscriber'),(3,'subscriber2',0,'APPROVED',0,'3456345634563456','04/25','695','Subscriber'),(4,'subscriber3',0,'APPROVED',0,'4567456745674567','05/25','696','Subscriber'),(5,'customer2',0,'APPROVED',0,'5678987656789545','06/25','697','Customer'),(6,'customer3',0,'APPROVED',0,'1678987656789042','07/25','698','Customer'),(7,'customer4',0,'APPROVED',0,'7656789876567874','08/25','699','Customer'),(8,'subscriber4',0,'APPROVED',0,'0678987656789078','09/25','700','Subscriber');
/*!40000 ALTER TABLE `costumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costumerssubscribers_number_permonth`
--

DROP TABLE IF EXISTS `costumerssubscribers_number_permonth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costumerssubscribers_number_permonth` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Month` enum('January','February','March','April','May','June','July','August','September','October','November','December') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `CostumersNum` int DEFAULT NULL,
  `SubscriberNum` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Date` (`Month`,`Area`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costumerssubscribers_number_permonth`
--

LOCK TABLES `costumerssubscribers_number_permonth` WRITE;
/*!40000 ALTER TABLE `costumerssubscribers_number_permonth` DISABLE KEYS */;
INSERT INTO `costumerssubscribers_number_permonth` VALUES (1,'February','Haifa',50,100),(2,'February','Shefa-Amer',100,50),(3,'April','Tel-Aviv',200,54),(4,'May','Haifa',45,14),(5,'March','Karmiel',90,70),(6,'September','Haifa',200,34),(7,'October','Shefa-Amer',150,43),(9,'March','Shefa-Amer',250,150),(10,'April','Karmiel',20,109),(11,'May','Tel-Aviv',19,177),(12,'June','Haifa',440,166),(13,'June','Shefa-Amer',15,50),(14,'July','Karmiel',80,50),(15,'August','Tel-Aviv',200,190);
/*!40000 ALTER TABLE `costumerssubscribers_number_permonth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `couponID` int NOT NULL AUTO_INCREMENT,
  `couponName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`couponID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,'Gift-5'),(2,'Gift-20');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons_for_costumers`
--

DROP TABLE IF EXISTS `coupons_for_costumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons_for_costumers` (
  `costumerID` int NOT NULL,
  `couponID` int NOT NULL,
  PRIMARY KEY (`costumerID`,`couponID`),
  KEY `couponID` (`couponID`),
  CONSTRAINT `coupons_for_costumers_ibfk_1` FOREIGN KEY (`costumerID`) REFERENCES `costumers` (`costumerID`),
  CONSTRAINT `coupons_for_costumers_ibfk_2` FOREIGN KEY (`couponID`) REFERENCES `coupons` (`couponID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_for_costumers`
--

LOCK TABLES `coupons_for_costumers` WRITE;
/*!40000 ALTER TABLE `coupons_for_costumers` DISABLE KEYS */;
INSERT INTO `coupons_for_costumers` VALUES (1,1),(2,1),(3,2),(4,2),(8,2);
/*!40000 ALTER TABLE `coupons_for_costumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_registirations`
--

DROP TABLE IF EXISTS `customer_registirations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_registirations` (
  `RID` int NOT NULL AUTO_INCREMENT,
  `IDNumber` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `CreditCardNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `subscriber` enum('NO','YES') DEFAULT NULL,
  `RegistirationStatus` enum('Needs Review','Approved','Not Approved') DEFAULT 'Needs Review',
  PRIMARY KEY (`RID`),
  UNIQUE KEY `IDNumber_UNIQUE` (`IDNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_registirations`
--

LOCK TABLES `customer_registirations` WRITE;
/*!40000 ALTER TABLE `customer_registirations` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_registirations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `deliveryID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `phoneNumeber` varchar(20) DEFAULT NULL,
  `houseNumber` varchar(20) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`deliveryID`),
  KEY `deliveries_ibfk_1` (`OrderID`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1,4,'Josh','Zaza','0525059989','101','32','Shefa-Amer');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machines` (
  `MachineID` int NOT NULL AUTO_INCREMENT,
  `Location` varchar(20) DEFAULT NULL,
  `Area` varchar(20) DEFAULT NULL,
  `LowLevel` int DEFAULT NULL,
  PRIMARY KEY (`MachineID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES (1,'the Baha\'i Gardens','Haifa',10),(2,'Down Town','Haifa',10),(3,'Maritime Museum','Haifa',10),(4,'Haifa-University','Haifa',10),(5,'Old City','Shefa-Amer',50),(6,'Down Town','Shefa-Amer',50),(7,'The Castle','Shefa-Amer',50),(8,'Alna\'ma','Shefa-Amer',50),(9,'Ort Braude','Karmiel',50),(10,'Down Town','Karmiel',50),(11,'North','Karmiel',50),(12,'Park','Karmiel',50),(13,'Jaffa','Tel-Aviv',20),(14,'Yemenite Quarter','Tel-Aviv',20),(15,'Tel Aviv Museum','Tel-Aviv',20),(16,'Tel-Aviv University','Tel-Aviv',20);
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthlycustomersreport`
--

DROP TABLE IF EXISTS `monthlycustomersreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthlycustomersreport` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `Month` enum('January','February','March','April','May','June','July','August','September','October','November','December') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `CustomerID1` int DEFAULT NULL,
  `NumberOfOrders1` int DEFAULT NULL,
  `CustomerID2` int DEFAULT NULL,
  `NumberOfOrders2` int DEFAULT NULL,
  `CustomerID3` int DEFAULT NULL,
  `NumberOfOrders3` int DEFAULT NULL,
  `MostValuableCustomerID` int DEFAULT NULL,
  `LeastValuableCustomerID` int DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  UNIQUE KEY `Date` (`Month`,`Area`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthlycustomersreport`
--

LOCK TABLES `monthlycustomersreport` WRITE;
/*!40000 ALTER TABLE `monthlycustomersreport` DISABLE KEYS */;
INSERT INTO `monthlycustomersreport` VALUES (1,'February','Haifa',1,25,2,20,3,15,1,3),(2,'February','Shefa-Amer',4,30,5,25,6,20,4,6),(3,'April','Tel-Aviv',8,35,5,30,4,25,8,3),(4,'May','Haifa',1,50,2,45,3,40,1,3),(5,'March','Karmiel',7,40,3,35,4,3,7,5),(6,'September','Haifa',3,50,4,45,5,40,3,5),(7,'October','Shefa-Amer',6,50,7,45,8,40,6,8),(9,'March','Shefa-Amer',5,40,1,35,3,30,5,3),(10,'April','Karmiel',6,50,2,40,4,35,6,4),(11,'May','Tel-Aviv',7,30,6,20,5,25,7,5),(12,'June','Haifa',8,45,7,30,6,35,8,6),(13,'June','Shefa-Amer',2,20,3,45,1,30,5,1),(14,'July','Karmiel',5,35,7,25,4,40,5,4),(15,'August','Tel-Aviv',1,15,7,28,6,32,7,1);
/*!40000 ALTER TABLE `monthlycustomersreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthlyordersreport`
--

DROP TABLE IF EXISTS `monthlyordersreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthlyordersreport` (
  `ReportID` int NOT NULL AUTO_INCREMENT,
  `Month` enum('January','February','March','April','May','June','July','August','September','October','November','December') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `Location` enum('the Baha''i Gardens','Maritime Museum','Haifa-University','Old City','Down Town','The Castle','Alna''ma','Ort Braude','North','Park','Jaffa','Yemenite Quarter','Tel Aviv Museum','Tel-Aviv University') DEFAULT NULL,
  `ProductID1` int DEFAULT NULL,
  `Quantity1` int DEFAULT NULL,
  `ProductID2` int DEFAULT NULL,
  `Quantity2` int DEFAULT NULL,
  `ProductID3` int DEFAULT NULL,
  `Quantity3` int DEFAULT NULL,
  `MostSoldProductID` int DEFAULT NULL,
  `LeastSoldProductID` int DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  UNIQUE KEY `Date` (`Month`,`Area`,`Location`),
  CONSTRAINT `ProfitPerMonth` FOREIGN KEY (`Month`, `Area`, `Location`) REFERENCES `category_profit_permonth` (`Month`, `Area`, `Location`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthlyordersreport`
--

LOCK TABLES `monthlyordersreport` WRITE;
/*!40000 ALTER TABLE `monthlyordersreport` DISABLE KEYS */;
INSERT INTO `monthlyordersreport` VALUES (2,'May','Haifa','Down Town',13,75,14,70,15,65,13,15),(3,'June','Shefa-Amer','The Castle',16,70,17,65,18,60,16,18),(4,'December','Tel-Aviv','Yemenite Quarter',7,35,8,30,9,25,7,9),(7,'April','Tel-Aviv','Tel-Aviv University',1,40,5,80,9,120,9,3),(8,'March','Karmiel','Down Town',1,40,5,10,9,120,9,3),(9,'February','Shefa-Amer','The Castle',1,20,5,80,9,120,9,3),(10,'December','Tel-Aviv','Jaffa',1,40,5,30,9,120,9,3),(11,'November','Karmiel','North',1,40,5,40,9,120,9,3),(12,'October','Shefa-Amer','The Castle',1,90,5,80,9,120,9,3),(13,'August','Tel-Aviv','Jaffa',1,40,5,10,9,120,9,3),(14,'July','Karmiel','North',1,20,5,80,9,120,9,3),(15,'June','Shefa-Amer','Down Town',1,40,5,30,9,120,9,3),(16,'April','Tel-Aviv','Jaffa',1,40,5,40,9,120,9,3),(17,'March','Karmiel','North',1,90,5,80,9,120,9,3),(18,'August','Tel-Aviv','Tel Aviv Museum',7,80,15,90,18,150,18,20),(19,'July','Karmiel','Park',7,80,15,90,18,150,18,4),(20,'June','Shefa-Amer','Alna\'ma',7,80,15,90,18,150,18,16),(21,'May','Haifa','Haifa-University',7,80,15,90,18,150,18,17),(26,'April','Tel-Aviv','Tel Aviv Museum',5,80,15,90,18,150,18,17),(27,'March','Karmiel','Park',4,80,15,90,18,150,18,18),(29,'February','Shefa-Amer','Down Town',7,80,15,90,18,150,18,1);
/*!40000 ALTER TABLE `monthlyordersreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthlystockreport`
--

DROP TABLE IF EXISTS `monthlystockreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthlystockreport` (
  `reportID` int NOT NULL AUTO_INCREMENT,
  `Month` enum('January','February','March','April','May','June','July','August','September','October','November','December') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `Location` enum('the Baha''i Gardens','Maritime Museum','Haifa-University','Old City','Down Town','The Castle','Alna''ma','Ort Braude','North','Park','Jaffa','Yemenite Quarter','Tel Aviv Museum','Tel-Aviv University') DEFAULT NULL,
  `overallproducts` int DEFAULT NULL,
  `day1` int DEFAULT NULL,
  `day5` int DEFAULT NULL,
  `day10` int DEFAULT NULL,
  `day15` int DEFAULT NULL,
  `day20` int DEFAULT NULL,
  `day25` int DEFAULT NULL,
  `day30` int DEFAULT NULL,
  `mostsold` enum('Soft-Drinks','Choclate-Bars','jelly-Sweets','Chips','Others') DEFAULT NULL,
  `leastsold` enum('Soft-Drinks','Choclate-Bars','jelly-Sweets','Chips','Others') DEFAULT NULL,
  `restocks` int DEFAULT NULL,
  PRIMARY KEY (`reportID`),
  UNIQUE KEY `Date` (`Month`,`Area`,`Location`),
  CONSTRAINT `PercentageReport` FOREIGN KEY (`Month`, `Area`, `Location`) REFERENCES `category_percentage_permonth` (`Month`, `Area`, `Location`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthlystockreport`
--

LOCK TABLES `monthlystockreport` WRITE;
/*!40000 ALTER TABLE `monthlystockreport` DISABLE KEYS */;
INSERT INTO `monthlystockreport` VALUES (1,'February','Haifa','the Baha\'i Gardens',500,10,15,20,25,30,25,20,'Soft-Drinks','Choclate-Bars',135),(2,'May','Haifa','Down Town',2500,20,15,10,5,2,1,0,'jelly-Sweets','Others',53),(3,'June','Shefa-Amer','The Castle',3000,15,10,5,2,1,0,0,'Chips','Soft-Drinks',33),(4,'December','Tel-Aviv','Yemenite Quarter',6000,0,0,0,0,0,0,0,'Others','jelly-Sweets',0),(13,'July','Haifa','Down Town',200,5,10,5,10,5,10,5,'Soft-Drinks','Soft-Drinks',50),(15,'August','Tel-Aviv','Maritime Museum',100,5,5,5,3,3,3,1,'Choclate-Bars','Chips',15),(16,'July','Karmiel','Park',100,5,5,5,3,3,3,1,'Choclate-Bars','Chips',15),(17,'June','Shefa-Amer','Down Town',100,5,5,5,3,3,3,1,'Choclate-Bars','Chips',15),(18,'May','Haifa','Haifa-University',100,5,5,5,3,3,3,1,'Choclate-Bars','Chips',15),(19,'April','Tel-Aviv','Jaffa',100,5,5,5,3,3,3,1,'Choclate-Bars','jelly-Sweets',15),(20,'March','Karmiel','Park',100,5,5,5,3,3,3,1,'Choclate-Bars','Chips',15),(21,'February','Shefa-Amer','Old City',100,5,5,5,4,3,5,1,'Choclate-Bars','jelly-Sweets',20),(23,'December','Tel-Aviv','Maritime Museum',100,5,6,5,3,5,3,1,'Choclate-Bars','Chips',20),(24,'November','Karmiel','Ort Braude',100,5,5,7,3,3,5,1,'Choclate-Bars','jelly-Sweets',20),(25,'October','Shefa-Amer','Old City',100,5,4,5,3,3,5,1,'Choclate-Bars','Chips',20),(26,'September','Haifa','the Baha\'i Gardens',100,5,5,5,4,3,5,1,'Choclate-Bars','Chips',17),(27,'August','Tel-Aviv','Yemenite Quarter',100,5,5,5,3,5,5,1,'Choclate-Bars','Chips',17),(28,'July','Karmiel','Ort Braude',100,5,6,5,3,5,3,1,'Choclate-Bars','Chips',17),(29,'June','Shefa-Amer','Old City',100,5,5,7,3,3,5,1,'Choclate-Bars','jelly-Sweets',17),(30,'May','Haifa','Old City',100,5,4,5,3,3,5,1,'Choclate-Bars','Chips',17),(31,'April','Tel-Aviv','Yemenite Quarter',100,8,5,5,4,3,5,1,'Choclate-Bars','jelly-Sweets',11),(32,'March','Karmiel','Ort Braude',100,5,5,5,3,5,5,1,'Choclate-Bars','jelly-Sweets',10),(33,'February','Shefa-Amer','The Castle',100,5,6,5,3,5,8,1,'Choclate-Bars','jelly-Sweets',13);
/*!40000 ALTER TABLE `monthlystockreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `TimeToArrive` text,
  `orderDate` text,
  `orderStatus` enum('Ready For Dispatch','Ready To Pickup','Cancelled','Confirmed','NotCompleted','Delivery Approved','Refunded','PickedUp') DEFAULT NULL,
  `costumerID` int DEFAULT NULL,
  `refund` double DEFAULT NULL,
  `supplyMethod` text,
  `paymentMethod` text,
  `MachineID` int DEFAULT NULL,
  `OrderCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `Order_DoneBy_Costumer` (`costumerID`),
  KEY `MachineID_idx` (`MachineID`),
  CONSTRAINT `MachineID` FOREIGN KEY (`MachineID`) REFERENCES `machines` (`MachineID`),
  CONSTRAINT `Order_DoneBy_Costumer` FOREIGN KEY (`costumerID`) REFERENCES `costumers` (`costumerID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,3,'20 Minutes','2023-01-17 21:54','Cancelled',1,0,'Delivery','CreditCard',2,'ekrut-50'),(4,31.1,'70 Minutes','2023-01-17 22:31','Confirmed',5,0,'Delivery','CreditCard',7,'ekrut-156'),(6,5.27,'','2023-01-17 22:33','Ready To Pickup',5,0,'PickUp','CreditCard',11,'ekrut-443');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pName` varchar(20) DEFAULT NULL,
  `pId` int NOT NULL AUTO_INCREMENT,
  `pCategory` varchar(20) DEFAULT NULL,
  `pPrice` varchar(20) DEFAULT NULL,
  `pSpecification` varchar(20) DEFAULT NULL,
  `pQuantity` varchar(20) DEFAULT NULL,
  `ProductStatus` enum('Available','Not Available','OnSale') DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('Sprite',1,'Soft-Drinks','1','Normal-Size','420','OnSale'),('Pregat-Mango',2,'Soft-Drinks','1.25','Low-Sugar','497','Available'),('Fanta',3,'Soft-Drinks','1','Normal-Size','436','Available'),('Jumex-Apple',4,'Soft-Drinks','1.25','Low-Sugar','495','Available'),('Red-Bul',5,'Soft-Drinks','1.50','Others','493','OnSale'),('Coca-Cola',6,'Soft-Drinks','1.30','Normal-Size','500','OnSale'),('Cola-Zero',7,'Soft-Drinks','1.60','Low-Sugar','500','OnSale'),('Simply-Orange',8,'Soft-Drinks','2.20','Healthy','500','Available'),('Water',9,'Others','0.50','Healthy','499','OnSale'),('Monster',10,'Soft-Drinks','2','Big-Size','441','Available'),('Elit-Bar',11,'Choclate-Bars','1.10','Normal-Size','498','Available'),('Yogueta',12,'jelly-Sweets','1','Normal-Size','499','Available'),('Kinder-Country',13,'Choclate-Bars','1.60','Others','480','Available'),('Pringles',14,'Chips','1.80','Big-Size','498','Available'),('Lays',15,'Chips','1.30','Big-Size','496','Available'),('Kinder-Surprise',16,'Others','1.10','Others','462','Available'),('Doritos',17,'Chips','1.60','Big-Size','497','Available'),('Sponge-Crunch',18,'jelly-Sweets','1.50','Big-Size','499','Available'),('Jumbo',19,'Others','0.80','Others','440','Available'),('Tropical-Bliss',20,'Others','2.60','Healthy','361','Available'),('Pringles-BBQ',21,'Chips','1.85','Big-Size','427','Available'),('Osem-Waffle',22,'Others','0.75','Normal-Size','380','Available'),('Osem-Bisly',23,'Others','0.90','Normal-Size','497','Available'),('Osem-Bamba',24,'Others','1','Others','438','Available'),('Orbit-Gum',25,'Others','0.30','Low-Sugar','499','Available'),('Kiner-Choclate',26,'Choclate-Bars','1.45','Normal-Size','496','Available'),('Energy-Bar',27,'Choclate-Bars','1.85','Healthy','498','Available'),('Hot-Meal',28,'Others','1.97','Others','498','Available');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_in_machine`
--

DROP TABLE IF EXISTS `products_in_machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_in_machine` (
  `MachineID` int NOT NULL,
  `pId` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `SaleStatus` enum('Normal Price','OnSale') DEFAULT NULL,
  `SalePercentage` enum('5%','10%','15%','20%','25%','30%','35%','40%','45%','50%') DEFAULT NULL,
  `AvailablityStatus` enum('Available','Not_Available') DEFAULT NULL,
  `RestockRequestStatus` enum('Sent','No Request') DEFAULT NULL,
  PRIMARY KEY (`MachineID`,`pId`),
  KEY `products_in_machine_ibfk_2` (`pId`),
  CONSTRAINT `products_in_machine_ibfk_1` FOREIGN KEY (`MachineID`) REFERENCES `machines` (`MachineID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_in_machine_ibfk_2` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_in_machine`
--

LOCK TABLES `products_in_machine` WRITE;
/*!40000 ALTER TABLE `products_in_machine` DISABLE KEYS */;
INSERT INTO `products_in_machine` VALUES (1,13,174,'Normal Price',NULL,'Available','No Request'),(1,14,57,'Normal Price',NULL,'Available','No Request'),(1,15,57,'Normal Price',NULL,'Available','No Request'),(1,16,57,'Normal Price',NULL,'Available','No Request'),(1,20,57,'Normal Price',NULL,'Available','No Request'),(1,23,100,'Normal Price',NULL,'Available','No Request'),(1,28,15,'Normal Price',NULL,'Available','No Request'),(2,1,15,'Normal Price',NULL,'Available','No Request'),(2,2,98,'Normal Price',NULL,'Available','No Request'),(2,8,100,'Normal Price',NULL,'Available','No Request'),(2,9,102,'Normal Price',NULL,'Available','No Request'),(2,18,19,'Normal Price',NULL,'Available','Sent'),(2,24,19,'Normal Price',NULL,'Available','Sent'),(2,25,57,'Normal Price',NULL,'Available','Sent'),(3,4,100,'Normal Price',NULL,'Available','No Request'),(3,23,57,'Normal Price',NULL,'Available','Sent'),(3,24,100,'Normal Price',NULL,'Available','No Request'),(3,25,57,'Normal Price',NULL,'Available','No Request'),(3,26,0,'Normal Price',NULL,'Not_Available','No Request'),(3,27,0,'Normal Price',NULL,'Not_Available','Sent'),(3,28,0,'Normal Price',NULL,'Not_Available','No Request'),(4,2,57,'Normal Price',NULL,'Available','No Request'),(4,4,100,'Normal Price',NULL,'Available','No Request'),(4,5,20,'Normal Price',NULL,'Available','No Request'),(4,6,100,'Normal Price',NULL,'Available','No Request'),(4,20,20,'Normal Price',NULL,'Available','No Request'),(4,25,100,'Normal Price',NULL,'Available','No Request'),(4,26,15,'Normal Price',NULL,'Available','No Request'),(5,1,100,'Normal Price',NULL,'Available','No Request'),(5,2,100,'Normal Price',NULL,'Available','No Request'),(5,10,59,'Normal Price',NULL,'Available','No Request'),(5,11,59,'Normal Price',NULL,'Available','No Request'),(5,15,58,'Normal Price',NULL,'Available','No Request'),(5,16,60,'Normal Price',NULL,'Available','No Request'),(5,17,57,'Normal Price',NULL,'Available','No Request'),(6,3,55,'Normal Price',NULL,'Available','No Request'),(6,4,54,'Normal Price',NULL,'Available','No Request'),(6,5,57,'Normal Price',NULL,'Available','No Request'),(6,21,60,'Normal Price',NULL,'Available','No Request'),(6,23,58,'Normal Price',NULL,'Available','No Request'),(6,24,60,'Normal Price',NULL,'Available','No Request'),(6,28,60,'Normal Price',NULL,'Available','No Request'),(7,1,100,'Normal Price',NULL,'Available','No Request'),(7,3,100,'Normal Price',NULL,'Available','No Request'),(7,19,100,'Normal Price',NULL,'Available','No Request'),(7,20,99,'Normal Price',NULL,'Available','No Request'),(7,21,85,'Normal Price',NULL,'Available','No Request'),(7,22,99,'Normal Price',NULL,'Available','No Request'),(7,24,100,'Normal Price',NULL,'Available','No Request'),(8,2,60,'Normal Price',NULL,'Available','No Request'),(8,5,59,'Normal Price',NULL,'Available','No Request'),(8,8,60,'Normal Price',NULL,'Available','No Request'),(8,10,59,'Normal Price',NULL,'Available','No Request'),(8,11,60,'Normal Price',NULL,'Available','No Request'),(8,12,60,'Normal Price',NULL,'Available','No Request'),(8,13,60,'Normal Price',NULL,'Available','No Request'),(9,1,59,'Normal Price',NULL,'Available','No Request'),(9,2,60,'Normal Price',NULL,'Available','No Request'),(9,14,60,'Normal Price',NULL,'Available','No Request'),(9,15,59,'Normal Price',NULL,'Available','No Request'),(9,16,60,'Normal Price',NULL,'Available','No Request'),(9,17,60,'Normal Price',NULL,'Available','No Request'),(9,19,60,'Normal Price',NULL,'Available','No Request'),(10,1,58,'Normal Price',NULL,'Available','No Request'),(10,11,58,'Normal Price',NULL,'Available','No Request'),(10,13,60,'Normal Price',NULL,'Available','No Request'),(10,14,60,'Normal Price',NULL,'Available','No Request'),(10,17,59,'Normal Price',NULL,'Available','No Request'),(10,22,59,'Normal Price',NULL,'Available','No Request'),(11,1,53,'Normal Price',NULL,'Available','No Request'),(11,5,54,'Normal Price',NULL,'Available','No Request'),(11,10,58,'Normal Price',NULL,'Available','No Request'),(11,15,56,'Normal Price',NULL,'Available','No Request'),(11,26,54,'Normal Price',NULL,'Available','No Request'),(11,27,58,'Normal Price',NULL,'Available','No Request'),(11,28,59,'Normal Price',NULL,'Available','No Request'),(12,1,59,'Normal Price',NULL,'Available','No Request'),(12,10,59,'Normal Price',NULL,'Available','No Request'),(12,17,60,'Normal Price',NULL,'Available','No Request'),(12,18,60,'Normal Price',NULL,'Available','No Request'),(12,19,60,'Normal Price',NULL,'Available','No Request'),(12,20,60,'Normal Price',NULL,'Available','No Request'),(12,21,60,'Normal Price',NULL,'Available','No Request'),(13,2,60,'Normal Price',NULL,'Available','No Request'),(13,3,60,'Normal Price',NULL,'Available','No Request'),(13,4,60,'Normal Price',NULL,'Available','No Request'),(13,5,59,'Normal Price',NULL,'Available','No Request'),(13,8,60,'Normal Price',NULL,'Available','No Request'),(13,9,60,'Normal Price',NULL,'Available','No Request'),(13,10,59,'Normal Price',NULL,'Available','No Request'),(14,10,0,'Normal Price',NULL,'Not_Available','No Request'),(14,20,0,'Normal Price',NULL,'Not_Available','No Request'),(14,22,0,'Normal Price',NULL,'Not_Available','No Request'),(14,23,62,'Normal Price',NULL,'Available','No Request'),(14,24,59,'Normal Price',NULL,'Available','No Request'),(14,25,59,'Normal Price',NULL,'Available','No Request'),(14,26,59,'Normal Price',NULL,'Available','No Request'),(15,12,59,'Normal Price',NULL,'Available','No Request'),(15,13,58,'Normal Price',NULL,'Available','No Request'),(15,14,58,'Normal Price',NULL,'Available','No Request'),(15,15,58,'Normal Price',NULL,'Available','No Request'),(15,20,60,'Normal Price',NULL,'Available','No Request'),(15,27,60,'Normal Price',NULL,'Available','No Request'),(15,28,60,'Normal Price',NULL,'Available','No Request'),(16,1,59,'Normal Price',NULL,'Available','No Request'),(16,2,60,'Normal Price',NULL,'Available','No Request'),(16,14,60,'Normal Price',NULL,'Available','No Request'),(16,17,60,'Normal Price',NULL,'Available','No Request'),(16,18,60,'Normal Price',NULL,'Available','No Request'),(16,22,60,'Normal Price',NULL,'Available','No Request'),(16,25,60,'Normal Price',NULL,'Available','No Request');
/*!40000 ALTER TABLE `products_in_machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_in_order`
--

DROP TABLE IF EXISTS `products_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_in_order` (
  `OrderID` int NOT NULL,
  `pId` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`OrderID`,`pId`),
  KEY `products_in_order_ibfk_2` (`pId`),
  CONSTRAINT `products_in_order_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_in_order_ibfk_2` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_in_order`
--

LOCK TABLES `products_in_order` WRITE;
/*!40000 ALTER TABLE `products_in_order` DISABLE KEYS */;
INSERT INTO `products_in_order` VALUES (2,9,0),(2,18,0),(2,24,0),(4,20,1),(4,21,15),(4,22,1),(6,26,1),(6,27,1),(6,28,1);
/*!40000 ALTER TABLE `products_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restockrequests`
--

DROP TABLE IF EXISTS `restockrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restockrequests` (
  `RequestID` int NOT NULL AUTO_INCREMENT,
  `Location` varchar(20) DEFAULT NULL,
  `Area` varchar(20) DEFAULT NULL,
  `pId` int DEFAULT NULL,
  `MachineID` int DEFAULT NULL,
  PRIMARY KEY (`RequestID`),
  UNIQUE KEY `Location` (`Location`,`Area`,`pId`,`MachineID`),
  KEY `pId` (`pId`),
  KEY `MachineID` (`MachineID`),
  CONSTRAINT `restockrequests_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`),
  CONSTRAINT `restockrequests_ibfk_2` FOREIGN KEY (`MachineID`) REFERENCES `machines` (`MachineID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restockrequests`
--

LOCK TABLES `restockrequests` WRITE;
/*!40000 ALTER TABLE `restockrequests` DISABLE KEYS */;
INSERT INTO `restockrequests` VALUES (1,'Down Town','Tel-Aviv',5,14);
/*!40000 ALTER TABLE `restockrequests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salerequest`
--

DROP TABLE IF EXISTS `salerequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salerequest` (
  `SaleTemplate` varchar(20) DEFAULT NULL,
  `RequestID` int NOT NULL AUTO_INCREMENT,
  `ProductsIDs` varchar(50) DEFAULT NULL,
  `RequestStatus` enum('Applyed','NOT_Applyed','Cancelled') DEFAULT NULL,
  `Area` enum('Haifa','Shefa-Amer','Karmiel','Tel-Aviv') DEFAULT NULL,
  `percentage` enum('5%','10%','15%','20%','25%','30%','35%','40%','45%','50%') NOT NULL,
  PRIMARY KEY (`RequestID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salerequest`
--

LOCK TABLES `salerequest` WRITE;
/*!40000 ALTER TABLE `salerequest` DISABLE KEYS */;
INSERT INTO `salerequest` VALUES ('Nearest Holiday',1,'5','NOT_Applyed','Shefa-Amer','10%'),('Nearest Holiday',2,'5','Cancelled','Karmiel','10%'),('Nearest Holiday',3,'3','NOT_Applyed','Shefa-Amer','15%'),('Dead Hours',4,'5','Cancelled','Tel-Aviv','20%'),('Dead Hours',5,'4','Cancelled','Shefa-Amer','25%'),('Nearest Holiday',13,'1,5','NOT_Applyed','Haifa','30%'),('Nearest Holiday',14,'1,9','NOT_Applyed','Haifa','30%'),('Nearest Holiday',15,'8,9','NOT_Applyed','Haifa','30%'),('Nearest Holiday',16,'4,5','NOT_Applyed','Haifa','30%'),('Nearest Holiday',17,'4,4','NOT_Applyed','Haifa','30%'),('Nearest Holiday',18,'8,9','NOT_Applyed','Tel-Aviv','30%'),('Nearest Holiday',19,'4,9','NOT_Applyed','Tel-Aviv','30%'),('Nearest Holiday',20,'5,8','NOT_Applyed','Tel-Aviv','30%'),('Nearest Holiday',21,'5,1','NOT_Applyed','Tel-Aviv','30%'),('Nearest Holiday',22,'1,9','NOT_Applyed','Tel-Aviv','30%'),('Nearest Holiday',23,'1,9','NOT_Applyed','Tel-Aviv','45%'),('Nearest Holiday',24,'1,5','NOT_Applyed','Tel-Aviv','45%'),('Nearest Holiday',25,'1,8','NOT_Applyed','Tel-Aviv','45%'),('Nearest Holiday',26,'8,4','NOT_Applyed','Tel-Aviv','45%'),('Dead Hours',27,'1,2,3','Cancelled','Shefa-Amer','15%'),('Weekend',28,'1,2,3','Cancelled','Shefa-Amer','30%'),('Weekend',29,'1,2','Cancelled','Karmiel','25%'),('Weekend',30,'5','Cancelled','Karmiel','40%');
/*!40000 ALTER TABLE `salerequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `IDNumber` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `HomeArea` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `type` enum('Costumer','Subscriber','Service Agent','Marketing Worker','Marketing Manager','Delivery Operator','Area Manager','Operations Worker','CEO') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Area` varchar(20) DEFAULT NULL,
  `isLoggedin` tinyint(1) DEFAULT NULL,
  `costumerID` int DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'209120096','customer','123456','Shadi','Abd Alkream','Shefa-Amr','shadiabdalkream@hotmail.com','0525056571','Costumer','',0,1),(2,'209120815','areamanager','123456','Mahran','Abd ellatif','Shefa-Amr','MahranAbdellatif@braude.ac.il','0525056577','Area Manager','Haifa',0,0),(3,'209120998','serviceagent','123456','Amran','Zoabi','Der gsane','AmranZoabi@hotmail.com','0525050678','Service Agent','',0,0),(4,'988733490','marketingmanager','123456','Mohamad','Khateb','Tamra','mm745@hotmail.com','0525050679','Marketing Manager','',0,0),(5,'988733491','marketingworker','123456','Natalie','Portman','Tel-Aviv','mw_nat@gmail.com','0525050671','Marketing Worker','Shefa-Amer',0,0),(6,'988733492','deliveryoperator','123456','Robert','JR','Haifa','JRrob45@gmail.com','0525050672','Delivery Operator','Shefa-Amer',0,0),(7,'988733493','ceo','123456','Keven','Hart','Karmeil','Hart_keven@gmail.com','0525050673','CEO','',0,0),(9,'209120067','operationsworker','123456','Hasan','Sun','Nazerth','breadAndMilk@wanted.com','0535958856','Operations Worker','Haifa',0,0),(10,'209120068','subscriber','123456','Johny','deep','Haifa','Johny@hotmail.com','0535958854','Subscriber','',0,2),(11,'345678901','subscriber2','123456','Michael','Smith','North','michaelsmith@gmail.com','0503456789','Subscriber','',0,3),(12,'456789012','subscriber3','123456','Rachel','Brown','North','rachelbrown@gmail.com','0504567890','Subscriber','',0,4),(13,'567890123','customer2','123456','Joshua','Davis','North','joshuadavis@gmail.com','0505678901','Costumer','',0,5),(14,'219876543','customer3','123456','Ella','Cooper','North','ellacooper@gmail.com','0219876545','Costumer','',0,6),(15,'876543219','customer4','123456','Avery','Simpson','North','averysimpson@gmail.com','0587654323','Costumer','',0,7),(16,'890123457','subscriber4','123456','Jessica','Murray','North','jessicamurray@gmail.com','0589012344','Subscriber','',0,8),(17,'203645784','areamanager2','123456','John','Wick','South','JohnWIck@hotmail.com','0578454568','Area Manager','Shefa-Amer',0,0),(18,'187654832','areamanager3','123456','Tomy','shelbey','Center','Tomy54@gmail.com','0598754214','Area Manager','Karmiel',0,0),(19,'206987894','areamanager3','123456','Margot','Robbie','North','Robbie67@outlook.com','0545756456','Area Manager','Tel-Aviv',0,0),(20,'123456789','marketingworker2','123456','Jane','Doe','Haifa','jane.doe@email.com','0501234567','Marketing Worker','Haifa',0,0),(22,'345678901','marketingworker3','123456','Sara','Johnson','Karmiel','sara.johnson@email.com','0501234569','Marketing Worker','Karmiel',0,0),(23,'456789012','marketingworker4','123456','Mike','Brown','Tel-Aviv','mike.brown@email.com','0501234570','Marketing Worker','Tel-Aviv',0,0),(24,'567890123','deliveryoperator2','123456','Ahmed','Ali','Haifa','ahmed.ali@email.com','0509876543','Delivery Operator','Haifa',0,0),(26,'789012345','deliveryoperator3','123456','David','Levy','Karmiel','david.levy@email.com','0509876545','Delivery Operator','Karmiel',0,0),(27,'890123456','deliveryoperator4','123456','Tamar','Cohen','Tel-Aviv','tamar.cohen@email.com','0509876546','Delivery Operator','Tel-Aviv',0,0),(28,'901234567','operationsworker2','123456','Rami','Abu','Haifa','rami.abu@email.com','0508765432','Operations Worker','Tel-Aviv',0,0),(29,'012345678','operationsworker3','123456','Eli','Katz','Shefa-Amer','eli.katz@email.com','0508765433','Operations Worker','Shefa-Amer',0,0),(30,'123456789','operationsworker4','123456','Shir','Rosen','Karmiel','shir.rosen@email.com','0508765434','Operations Worker','Karmiel',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker_registirations`
--

DROP TABLE IF EXISTS `worker_registirations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker_registirations` (
  `WID` int NOT NULL AUTO_INCREMENT,
  `IDNumber` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `CreditCardNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `role` enum('Service Agent','Marketing Worker','Marketing Manager','Delivery Operator','Area Manager','Operations Worker','CEO') DEFAULT NULL,
  `Area` varchar(45) DEFAULT NULL,
  `RegistirationStatus` enum('Needs Review','Approved','Not Approved') DEFAULT 'Needs Review',
  PRIMARY KEY (`WID`),
  UNIQUE KEY `IDNumber_UNIQUE` (`IDNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_registirations`
--

LOCK TABLES `worker_registirations` WRITE;
/*!40000 ALTER TABLE `worker_registirations` DISABLE KEYS */;
INSERT INTO `worker_registirations` VALUES (3,'34567890','worker3','password789','Michael','Garcia','910191019110191','michaelgarcia@email.com','0501234569','Delivery Operator','Haifa','Needs Review'),(4,'45678901','worker4','password111','Olivia','Smith','1213121312131213','oliviasmith@email.com','0501234570','Delivery Operator','Tel-Aviv','Needs Review'),(5,'56789012','worker5','password222','Jacob','Jones','2323232323232323','jacobjones@email.com','0501234571','Operations Worker','Tel-Aviv','Needs Review');
/*!40000 ALTER TABLE `worker_registirations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-20 12:33:04
