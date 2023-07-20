-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: external
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'209120096','customer','123456','Shadi','Abd Alkream','Shefa-Amr','shadiabdalkream@hotmail.com','0525056571','Costumer','',0,1),(2,'209120815','areamanager','123456','Mahran','Abd ellatif','Shefa-Amr','MahranAbdellatif@braude.ac.il','0525056577','Area Manager','Haifa',0,0),(3,'209120998','serviceagent','123456','Amran','Zoabi','Der gsane','AmranZoabi@hotmail.com','0525050678','Service Agent','',0,0),(4,'988733490','marketingmanager','123456','Mohamad','Khateb','Tamra','mm745@hotmail.com','0525050679','Marketing Manager','',0,0),(5,'988733491','marketingworker','123456','Natalie','Portman','Tel-Aviv','mw_nat@gmail.com','0525050671','Marketing Worker','Shefa-Amer',0,0),(6,'988733492','deliveryoperator','123456','Robert','JR','Haifa','JRrob45@gmail.com','0525050672','Delivery Operator','Shefa-Amer',0,0),(7,'988733493','ceo','123456','Keven','Hart','Karmeil','Hart_keven@gmail.com','0525050673','CEO','',0,0),(9,'209120067','operationsworker','123456','Hasan','Sun','Nazerth','breadAndMilk@wanted.com','0535958856','Operations Worker','Haifa',0,0),(10,'209120068','customer2','123456','Johny','deep','Haifa','Johny@hotmail.com','0535958854','Subscriber','',0,2),(11,'345678901','subscriber2','123456','Michael','Smith','North','michaelsmith@gmail.com','0503456789','Subscriber','',0,3),(12,'456789012','subscriber3','123456','Rachel','Brown','North','rachelbrown@gmail.com','0504567890','Subscriber','',0,4),(13,'567890123','customer2','123456','Joshua','Davis','North','joshuadavis@gmail.com','0505678901','Costumer','',0,5),(14,'219876543','customer3','123456','Ella','Cooper','North','ellacooper@gmail.com','0219876545','Costumer','',0,6),(15,'876543219','customer4','123456','Avery','Simpson','North','averysimpson@gmail.com','0587654323','Costumer','',0,7),(16,'890123457','subscriber4','123456','Jessica','Murray','North','jessicamurray@gmail.com','0589012344','Subscriber','',0,8),(17,'203645784','areamanager2','123456','John','Wick','South','JohnWIck@hotmail.com','0578454568','Area Manager','Shefa-Amer',0,0),(18,'187654832','areamanager3','123456','Tomy','shelbey','Center','Tomy54@gmail.com','0598754214','Area Manager','Karmiel',0,0),(19,'206987894','areamanager3','123456','Margot','Robbie','North','Robbie67@outlook.com','0545756456','Area Manager','Tel-Aviv',0,0),(20,'123456789','marketingworker2','123456','Jane','Doe','Haifa','jane.doe@email.com','0501234567','Marketing Worker','Haifa',0,0),(22,'345678901','marketingworker3','123456','Sara','Johnson','Karmiel','sara.johnson@email.com','0501234569','Marketing Worker','Karmiel',0,0),(23,'456789012','marketingworker4','123456','Mike','Brown','Tel-Aviv','mike.brown@email.com','0501234570','Marketing Worker','Tel-Aviv',0,0),(24,'567890123','deliveryoperator2','123456','Ahmed','Ali','Haifa','ahmed.ali@email.com','0509876543','Delivery Operator','Haifa',0,0),(26,'789012345','deliveryoperator3','123456','David','Levy','Karmiel','david.levy@email.com','0509876545','Delivery Operator','Karmiel',0,0),(27,'890123456','deliveryoperator4','123456','Tamar','Cohen','Tel-Aviv','tamar.cohen@email.com','0509876546','Delivery Operator','Tel-Aviv',0,0),(28,'901234567','operationsworker2','123456','Rami','Abu','Haifa','rami.abu@email.com','0508765432','Operations Worker','Tel-Aviv',0,0),(29,'012345678','operationsworker3','123456','Eli','Katz','Shefa-Amer','eli.katz@email.com','0508765433','Operations Worker','Shefa-Amer',0,0),(30,'123456789','operationsworker4','123456','Shir','Rosen','Karmiel','shir.rosen@email.com','0508765434','Operations Worker','Karmiel',0,0),(59,'56781234','MarkWorker1','123456','Mark','Worker1','Tel Aviv','markworker1@email.com','0555545559','Marketing Worker','Tel-Aviv',0,0),(60,'67892345','MarkWorker2','123456','Mark','Worker2','Jerusalem','markworker2@email.com','0575465484','Marketing Worker','Shefa-Amer',0,0),(61,'78901234','OpWorker1','123456','Op','Worker1','Haifa','opworker1@email.com','0546848564','Operations Worker','Haifa',0,0),(62,'89012345','OpWorker2','123456','Op','Worker2','Beersheba','opworker2@email.com','0565486721','Operations Worker','Karmiel',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-18  0:57:37
