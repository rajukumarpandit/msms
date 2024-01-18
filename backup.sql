-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: msms
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Admin_ID` char(6) NOT NULL,
  `Admin_Name` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` char(6) DEFAULT NULL,
  `Mobile_No` char(10) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Village_Name` varchar(50) DEFAULT NULL,
  `State_Name` varchar(50) DEFAULT NULL,
  `City_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('A00001','prince raj','2021-03-05','2021-03-02','Male','6474484888','national123@gmail.com','muzaffarpur','Bihar','Muzaffarpur'),('A00002','santosh kumar','2021-03-05','2020-03-05','Male','8988887786','santosh@gmai.com','muzaffarpur','Bihar','Muzaffarpur'),('A00003','','2021-03-08','2021-03-11','None','','','','Assam','Arwal'),('A00004','Raju Kumar','2021-03-08','2019-02-07','Male','8097987878','ramesh@gmail.com','muzaffarpur','Bihar','Muzaffarpur'),('A00005','Rahul singh','2021-03-09','2019-09-12','Male','8097987878','rahulssingh@gmail.com','kolhua','Bihar','Muzaffarpur');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companyinfo`
--

DROP TABLE IF EXISTS `companyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companyinfo` (
  `Company_ID` char(6) NOT NULL,
  `Company_Name` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Place_Name` varchar(50) DEFAULT NULL,
  `State_Name` char(20) DEFAULT NULL,
  `City_Name` char(20) DEFAULT NULL,
  `Pin_Code` int(11) DEFAULT NULL,
  `Mobile_No` char(10) DEFAULT NULL,
  PRIMARY KEY (`Company_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companyinfo`
--

LOCK TABLES `companyinfo` WRITE;
/*!40000 ALTER TABLE `companyinfo` DISABLE KEYS */;
INSERT INTO `companyinfo` VALUES ('C00001','national panjab hardware','2021-03-04','national123@gmail.com','kolhua paigamber pur','Assam','Arwal',833128,'6474484888'),('C00002','microsoft pvt','2021-03-05','national123@gmail.com','kolhua paigamber pur','Bihar','Bhagalpur',876786,'6474484888'),('C00003','sonu medical shop','2021-03-09','sonu@gmail.com','chandni chowk','Bihar','Muzaffarpur',122332,'8686869595'),('C00004','Prashant Medicl Shop','2021-03-10','sonu@gmail.com','Chandani Chowk','Bihar','Muzaffarpur',842003,'8097987878'),('C00005','sonu medical shop','2021-03-10','sonu@gmail.com','motijhil','Bihar','Muzaffarpur',842003,'8097987878'),('C00006','eye Medical shop','2021-03-10','eyemediclshop@gmail.com','Bhagwanpur','Bihar','Muzaffarpur',842003,'8664564345'),('C00007','sonu medical shop','2021-03-10','sonu@gmail.com','motijhil','Bihar','Muzaffarpur',842003,'8097987878'),('C00008','sonu medical shop','2021-03-11','sonu@gmail.com','motijhil','Bihar','Muzaffarpur',842003,'8097987878'),('C00009','medical shop','2021-03-12','ramesh@gmail.com','motijhil','Bihar','Muzaffarpur',384787,''),('C00010','sonu medical shop','2021-03-15','ramesh@gmail.com','motijhil','Assam','Arwal',842003,'8097987878');
/*!40000 ALTER TABLE `companyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composition`
--

DROP TABLE IF EXISTS `composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composition` (
  `SN` int(11) NOT NULL AUTO_INCREMENT,
  `Item_ID` char(6) DEFAULT NULL,
  `Composition` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SN`),
  KEY `Item_ID` (`Item_ID`),
  CONSTRAINT `composition_ibfk_1` FOREIGN KEY (`Item_ID`) REFERENCES `stockItem` (`Item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composition`
--

LOCK TABLES `composition` WRITE;
/*!40000 ALTER TABLE `composition` DISABLE KEYS */;
INSERT INTO `composition` VALUES (1,NULL,''),(2,NULL,'paracitamol'),(3,NULL,'paracitamol');
/*!40000 ALTER TABLE `composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_ID` char(6) NOT NULL,
  `Date` date DEFAULT NULL,
  `Patient_Name` varchar(50) DEFAULT NULL,
  `Patient_Age` int(11) DEFAULT NULL,
  `Gender` char(6) DEFAULT NULL,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Mobile_No` char(10) DEFAULT NULL,
  `Village_Name` varchar(50) DEFAULT NULL,
  `State_Name` varchar(50) DEFAULT NULL,
  `City_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('A00001','2021-03-08','',5,'None','','','','Assam','Arwal'),('A00002','2021-03-08','raju kumar',21,'Male','santosh kumar','8097987878','muzaffarpur','Bihar','Muzaffarpur'),('A00003','2021-03-09','raju kumar',21,'Male','santosh kumar','8097987878','kolhua','Bihar','Muzaffarpur');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `Payment_ID` char(6) NOT NULL,
  `Supplier_ID` char(6) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Mode` char(6) DEFAULT NULL,
  `Dues_Amount` double DEFAULT NULL,
  `Pay_Amount` double DEFAULT NULL,
  `Current_Dues_Amount` double DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `Purchase_ID` char(6) NOT NULL,
  `Date` date DEFAULT NULL,
  `Supplier_ID` char(6) DEFAULT NULL,
  `Mode` char(6) DEFAULT NULL,
  `Total_Amount` double DEFAULT NULL,
  `Pay_Amount` double DEFAULT NULL,
  `Dues_Amount` double DEFAULT NULL,
  PRIMARY KEY (`Purchase_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseItem`
--

DROP TABLE IF EXISTS `purchaseItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseItem` (
  `SN` int(11) NOT NULL AUTO_INCREMENT,
  `Purchase_ID` char(6) DEFAULT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Batch_No` varchar(6) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `Output_GST` float DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  PRIMARY KEY (`SN`),
  KEY `Purchase_ID` (`Purchase_ID`),
  CONSTRAINT `purchaseItem_ibfk_1` FOREIGN KEY (`Purchase_ID`) REFERENCES `purchase` (`Purchase_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseItem`
--

LOCK TABLES `purchaseItem` WRITE;
/*!40000 ALTER TABLE `purchaseItem` DISABLE KEYS */;
INSERT INTO `purchaseItem` VALUES (1,NULL,'Nice','356376',5,7,5,35,5),(2,NULL,'paracitamol','356376',10,7,5,70,5);
/*!40000 ALTER TABLE `purchaseItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receivePayment`
--

DROP TABLE IF EXISTS `receivePayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receivePayment` (
  `Payment_ID` char(6) NOT NULL,
  `Customer_ID` char(6) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Mode` char(6) DEFAULT NULL,
  `Dues_Amount` double DEFAULT NULL,
  `Pay_Amount` double DEFAULT NULL,
  `Current_Dues_Amount` double DEFAULT NULL,
  PRIMARY KEY (`Payment_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `receivePayment_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receivePayment`
--

LOCK TABLES `receivePayment` WRITE;
/*!40000 ALTER TABLE `receivePayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `receivePayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnItems`
--

DROP TABLE IF EXISTS `returnItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returnItems` (
  `SN` int(11) NOT NULL AUTO_INCREMENT,
  `Return_ID` char(6) DEFAULT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Batch_No` char(6) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `Input_GST` float DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  PRIMARY KEY (`SN`),
  KEY `Return_ID` (`Return_ID`),
  CONSTRAINT `returnItems_ibfk_1` FOREIGN KEY (`Return_ID`) REFERENCES `returnsItem` (`Return_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnItems`
--

LOCK TABLES `returnItems` WRITE;
/*!40000 ALTER TABLE `returnItems` DISABLE KEYS */;
INSERT INTO `returnItems` VALUES (1,NULL,'Nice','356376',5,7,2,5,35);
/*!40000 ALTER TABLE `returnItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returnsItem`
--

DROP TABLE IF EXISTS `returnsItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returnsItem` (
  `Return_ID` char(6) NOT NULL,
  `Date` date DEFAULT NULL,
  `Supplier_ID` char(6) DEFAULT NULL,
  `Mode` char(6) DEFAULT NULL,
  `Total_Amount` double DEFAULT NULL,
  `Dues_Amount` double DEFAULT NULL,
  `Current_Dues_Amount` double DEFAULT NULL,
  PRIMARY KEY (`Return_ID`),
  KEY `Supplier_ID` (`Supplier_ID`),
  CONSTRAINT `returnsItem_ibfk_1` FOREIGN KEY (`Supplier_ID`) REFERENCES `supplier` (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returnsItem`
--

LOCK TABLES `returnsItem` WRITE;
/*!40000 ALTER TABLE `returnsItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `returnsItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `Sales_ID` char(6) NOT NULL,
  `Date` date DEFAULT NULL,
  `Customer_ID` char(6) DEFAULT NULL,
  `Mode` char(6) DEFAULT NULL,
  `Total_Amount` double DEFAULT NULL,
  `Pay_Amount` double DEFAULT NULL,
  `Dues_Amount` double DEFAULT NULL,
  PRIMARY KEY (`Sales_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesItem`
--

DROP TABLE IF EXISTS `salesItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesItem` (
  `SN` int(11) NOT NULL AUTO_INCREMENT,
  `Sales_ID` char(6) DEFAULT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Batch_No` varchar(6) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `Input_GST` float DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  PRIMARY KEY (`SN`),
  KEY `Sales_ID` (`Sales_ID`),
  CONSTRAINT `salesItem_ibfk_1` FOREIGN KEY (`Sales_ID`) REFERENCES `sales` (`Sales_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesItem`
--

LOCK TABLES `salesItem` WRITE;
/*!40000 ALTER TABLE `salesItem` DISABLE KEYS */;
INSERT INTO `salesItem` VALUES (1,NULL,'Nice','356376',5,7,2,35,5),(2,NULL,'paracitamol','356376',5,7,2,35,5),(3,NULL,'paracitamol','356376',10,7,2,70,5),(4,NULL,'Nice','356376',5,7,2,35,5);
/*!40000 ALTER TABLE `salesItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `Staff_ID` char(6) NOT NULL,
  `Date` date DEFAULT NULL,
  `Staff_Name` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` char(6) DEFAULT NULL,
  `Mobile_No` char(10) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Village_Name` varchar(50) DEFAULT NULL,
  `State_Name` varchar(50) DEFAULT NULL,
  `City_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('','2021-03-05','Raju kumar','2020-12-10','Male','6474484888','raju123@gmail.com','muzaffarpur','Bihar','Muzaffarpur'),('A00001','2021-03-05','Raju kumar','2020-12-10','Male','6474484888','raju123@gmail.com','muzaffarpur','Bihar','Muzaffarpur'),('A00002','2021-03-08','rameh kumar','2021-03-01','Male','8097987878','ramesh@gmail.com','muzaffarpur','Bihar','Muzaffarpur'),('A00003','2021-03-08','','2021-03-12','None','','','','Assam','Arwal');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockItem`
--

DROP TABLE IF EXISTS `stockItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockItem` (
  `Date` date DEFAULT NULL,
  `Item_ID` char(6) NOT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Unit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockItem`
--

LOCK TABLES `stockItem` WRITE;
/*!40000 ALTER TABLE `stockItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `Supplier_ID` char(6) NOT NULL,
  `Date` date DEFAULT NULL,
  `Supplier_Name` varchar(50) DEFAULT NULL,
  `Shop_Name` varchar(50) DEFAULT NULL,
  `Mobile_No` char(10) DEFAULT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Place_Name` varchar(50) DEFAULT NULL,
  `State_Name` varchar(50) DEFAULT NULL,
  `City_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Supplier_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('A00001','2021-03-08','Ravi singh','ravi medical shop','8097987878','ramesh@gmail.com','motijhil','Bihar','Muzaffarpur'),('A00002','2021-03-09','akash singh','akash medical shop','8097987878','akash@gmail.com','motijhil','Bihar','Muzaffarpur');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userAccount`
--

DROP TABLE IF EXISTS `userAccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userAccount` (
  `UserName` varchar(50) NOT NULL,
  `Email_ID` varchar(50) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userAccount`
--

LOCK TABLES `userAccount` WRITE;
/*!40000 ALTER TABLE `userAccount` DISABLE KEYS */;
INSERT INTO `userAccount` VALUES ('raju kumar','rajuju@gmail.com','12345'),('Santosh Kumar','skumar@gmail.com','123');
/*!40000 ALTER TABLE `userAccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16  8:04:50
