-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinemedicalstore
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carddetails`
--

DROP TABLE IF EXISTS `carddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carddetails` (
  `CardDetailsID` int(11) NOT NULL AUTO_INCREMENT,
  `CardNumber` varchar(45) NOT NULL,
  `CardType` varchar(45) NOT NULL,
  `Customer_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`CardDetailsID`,`Customer_CustomerID`),
  KEY `fk_CardDetails_Customer1_idx` (`Customer_CustomerID`),
  CONSTRAINT `fk_CardDetails_Customer1` FOREIGN KEY (`Customer_CustomerID`) REFERENCES `customer` (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carddetails`
--

LOCK TABLES `carddetails` WRITE;
/*!40000 ALTER TABLE `carddetails` DISABLE KEYS */;
INSERT INTO `carddetails` VALUES (1,'4111111111111111','visa',1),(2,'5105105105105100','mastercard',1),(3,'4222222222222222','visa',2),(4,'520205205205200','mastercard',3);
/*!40000 ALTER TABLE `carddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactdetails`
--

DROP TABLE IF EXISTS `contactdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contactdetails` (
  `ContactDetailsID` int(11) NOT NULL AUTO_INCREMENT,
  `CellphoneNum` varchar(45) NOT NULL,
  `HomeNum` varchar(45) DEFAULT NULL,
  `OtherNum` varchar(45) DEFAULT NULL,
  `Customer_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`ContactDetailsID`,`Customer_CustomerID`),
  KEY `fk_ContactDetails_Customer1_idx` (`Customer_CustomerID`),
  KEY `celphonenumber` (`CellphoneNum`),
  CONSTRAINT `fk_ContactDetails_Customer1` FOREIGN KEY (`Customer_CustomerID`) REFERENCES `customer` (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactdetails`
--

LOCK TABLES `contactdetails` WRITE;
/*!40000 ALTER TABLE `contactdetails` DISABLE KEYS */;
INSERT INTO `contactdetails` VALUES (1,'+1857000100','617000001','+1857100100',1),(2,'+1857000101','617000002','+1857100101',3),(3,'+1857000102','617000003','+1857100102',2);
/*!40000 ALTER TABLE `contactdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Dob` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'John','Cena','1990-01-01'),(2,'Bruce','Wayne','1980-12-01'),(3,'Jeff','Bezos','1964-12-01');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerdetails_employee`
--

DROP TABLE IF EXISTS `customerdetails_employee`;
/*!50001 DROP VIEW IF EXISTS `customerdetails_employee`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `customerdetails_employee` AS SELECT 
 1 AS `Full Name`,
 1 AS `Number of Orders`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customerlogin`
--

DROP TABLE IF EXISTS `customerlogin`;
/*!50001 DROP VIEW IF EXISTS `customerlogin`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `customerlogin` AS SELECT 
 1 AS `Full Name`,
 1 AS `USERNAME`,
 1 AS `PASSWORD`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Raj','Malhotra'),(2,'Mit','Katwala');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homeaddress`
--

DROP TABLE IF EXISTS `homeaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `homeaddress` (
  `HAid` int(11) NOT NULL AUTO_INCREMENT,
  `StreetName` varchar(100) NOT NULL,
  `AptNo` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `Customer_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`HAid`,`Customer_CustomerID`),
  KEY `fk_HomeAddress_Customer1_idx` (`Customer_CustomerID`),
  CONSTRAINT `fk_HomeAddress_Customer1` FOREIGN KEY (`Customer_CustomerID`) REFERENCES `customer` (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homeaddress`
--

LOCK TABLES `homeaddress` WRITE;
/*!40000 ALTER TABLE `homeaddress` DISABLE KEYS */;
INSERT INTO `homeaddress` VALUES (1,'Jersey Street','Apt 20','New York','NY','1001',1),(2,'Boylston Street','Apt 201','Boston','MA','02215',1),(3,'California Street','Apt 001','Sunnyvale','CA','90001',2),(4,'Amazon Street','Apt 001','Seattle','WA','20001',2);
/*!40000 ALTER TABLE `homeaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logindetails`
--

DROP TABLE IF EXISTS `logindetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `logindetails` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Customer_CustomerID` int(11) DEFAULT NULL,
  `Employee_EmployeeID` int(11) DEFAULT NULL,
  `Shipper_ShipperID` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `fk_LoginDetails_Customer_idx` (`Customer_CustomerID`),
  KEY `fk_LoginDetails_Employee1_idx` (`Employee_EmployeeID`),
  KEY `fk_LoginDetails_Shipper1_idx` (`Shipper_ShipperID`),
  CONSTRAINT `fk_LoginDetails_Customer` FOREIGN KEY (`Customer_CustomerID`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `fk_LoginDetails_Employee1` FOREIGN KEY (`Employee_EmployeeID`) REFERENCES `employee` (`employeeid`),
  CONSTRAINT `fk_LoginDetails_Shipper1` FOREIGN KEY (`Shipper_ShipperID`) REFERENCES `shipper` (`shipperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logindetails`
--

LOCK TABLES `logindetails` WRITE;
/*!40000 ALTER TABLE `logindetails` DISABLE KEYS */;
INSERT INTO `logindetails` VALUES ('amazon','amazon@123',NULL,NULL,1),('boston','boston123',NULL,NULL,2),('bruce','bruce123',2,NULL,NULL),('jeff','jeff123',3,NULL,NULL),('john','john123',1,NULL,NULL),('mit','mit123',NULL,2,NULL),('raj','raj123',NULL,1,NULL);
/*!40000 ALTER TABLE `logindetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `LoginDetailsRecord` AFTER UPDATE ON `logindetails` FOR EACH ROW BEGIN
	INSERT INTO LoginDetailsChange VALUES (NEW.username,now(),OLD.password,NEW.password);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `logindetailschange`
--

DROP TABLE IF EXISTS `logindetailschange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `logindetailschange` (
  `username` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `oldpassword` varchar(45) NOT NULL,
  `newpassword` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logindetailschange`
--

LOCK TABLES `logindetailschange` WRITE;
/*!40000 ALTER TABLE `logindetailschange` DISABLE KEYS */;
INSERT INTO `logindetailschange` VALUES ('amazon','2018-12-11','amazon123','amazon@123');
/*!40000 ALTER TABLE `logindetailschange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `TotalPrice` double NOT NULL DEFAULT '0',
  `orderdetails_OrderDetailsID` int(11) NOT NULL,
  `orderdetails_Customer_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`OrderID`,`orderdetails_OrderDetailsID`,`orderdetails_Customer_CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,34.2,1,1),(2,90,2,1),(3,228,3,2),(4,45,4,3);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_has_product`
--

DROP TABLE IF EXISTS `order_has_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_has_product` (
  `Order_OrderID` int(11) NOT NULL,
  `Order_OrderDetails_OrderDetailsID` int(11) NOT NULL,
  `Order_OrderDetails_Customer_CustomerID` int(11) NOT NULL,
  `Product_ProductID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`Order_OrderID`,`Order_OrderDetails_OrderDetailsID`,`Order_OrderDetails_Customer_CustomerID`,`Product_ProductID`),
  KEY `fk_Order_has_Product_Product1_idx` (`Product_ProductID`),
  KEY `fk_Order_has_Product_Order1_idx` (`Order_OrderID`,`Order_OrderDetails_OrderDetailsID`,`Order_OrderDetails_Customer_CustomerID`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_Order_has_Product_Product1` FOREIGN KEY (`Product_ProductID`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_has_product`
--

LOCK TABLES `order_has_product` WRITE;
/*!40000 ALTER TABLE `order_has_product` DISABLE KEYS */;
INSERT INTO `order_has_product` VALUES (1,1,1,1,4),(2,2,1,5,20),(3,3,2,3,15),(4,4,3,5,10);
/*!40000 ALTER TABLE `order_has_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `UpdateOrderPrice` AFTER INSERT ON `order_has_product` FOR EACH ROW BEGIN
SET @quantity = new.quantity;
SET @productid = new.Product_ProductID;
SET @price = (select discountprice from product where ProductID=@productid);
UPDATE onlinemedicalstore.order
SET Totalprice= @quantity*@price
WHERE onlinemedicalstore.order.OrderID = new.Order_OrderDetails_OrderDetailsID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderdetails` (
  `OrderDetailsID` int(11) NOT NULL,
  `Order_status` varchar(45) NOT NULL,
  `Customer_CustomerID` int(11) NOT NULL,
  `employee_EmployeeID` int(11) NOT NULL,
  `shipper_ShipperID` int(11) NOT NULL,
  PRIMARY KEY (`OrderDetailsID`,`Customer_CustomerID`,`employee_EmployeeID`,`shipper_ShipperID`),
  KEY `fk_OrderDetails_Customer1_idx` (`Customer_CustomerID`),
  KEY `fk_orderdetails_employee1_idx` (`employee_EmployeeID`),
  KEY `fk_orderdetails_shipper1_idx` (`shipper_ShipperID`),
  CONSTRAINT `fk_OrderDetails_Customer1` FOREIGN KEY (`Customer_CustomerID`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `fk_orderdetails_employee1` FOREIGN KEY (`employee_EmployeeID`) REFERENCES `employee` (`employeeid`),
  CONSTRAINT `fk_orderdetails_shipper1` FOREIGN KEY (`shipper_ShipperID`) REFERENCES `shipper` (`shipperid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,'Pending',1,1,2),(2,'Delivered',1,2,1),(3,'Pending',2,2,2),(4,'Delivered',3,2,1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentType` varchar(30) NOT NULL,
  `Order_OrderID` int(11) NOT NULL,
  `Order_OrderDetails_OrderDetailsID` int(11) NOT NULL,
  `Order_OrderDetails_Customer_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`PaymentID`,`Order_OrderID`,`Order_OrderDetails_OrderDetailsID`,`Order_OrderDetails_Customer_CustomerID`),
  KEY `fk_Payment_Order1_idx` (`Order_OrderID`,`Order_OrderDetails_OrderDetailsID`,`Order_OrderDetails_Customer_CustomerID`),
  CONSTRAINT `fk_Payment_Order1` FOREIGN KEY (`Order_OrderID`) REFERENCES `order` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'Debit card',1,1,1),(2,'Credit card',2,2,1),(3,'Cash',3,3,2),(4,'Credit card',4,4,3);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `OriginalPrice` double NOT NULL,
  `DiscountPrice` double DEFAULT '0',
  PRIMARY KEY (`ProductID`),
  KEY `ProductName` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Hydrocodone',9.5,8.55),(2,'Generic Zocor',12,10.2),(3,'Azithromycin',19,15.2),(4,'Amoxicillin',15,14.25),(5,'Aceon',5,4.5),(6,'Ibuprofen',20.7,0),(7,'Diazepam',7,0),(8,'Haloperidol',13.2,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoffers`
--

DROP TABLE IF EXISTS `productoffers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `productoffers` (
  `offerID` int(11) NOT NULL,
  `offerPercent` double NOT NULL,
  `Product_ProductID` int(11) NOT NULL,
  PRIMARY KEY (`offerID`,`Product_ProductID`),
  KEY `fk_ProductOffers_Product1_idx` (`Product_ProductID`),
  CONSTRAINT `fk_ProductOffers_Product1` FOREIGN KEY (`Product_ProductID`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoffers`
--

LOCK TABLES `productoffers` WRITE;
/*!40000 ALTER TABLE `productoffers` DISABLE KEYS */;
INSERT INTO `productoffers` VALUES (1,10,1),(2,15,2),(3,20,3),(4,5,4),(5,10,5);
/*!40000 ALTER TABLE `productoffers` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Productpriceupdate` AFTER INSERT ON `productoffers` FOR EACH ROW BEGIN
SET @offer = new.offerPercent;
UPDATE product
SET DiscountPrice = round(originalprice*((100-@offer)/100),2)
WHERE product.ProductID = new.Product_ProductID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipper` (
  `ShipperID` int(11) NOT NULL AUTO_INCREMENT,
  `ShipperName` varchar(100) NOT NULL,
  `ContactNo` varchar(13) NOT NULL,
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
INSERT INTO `shipper` VALUES (1,'AmazonShipper','857000001'),(2,'BostonShipper','857000002');
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shipperorderstatus`
--

DROP TABLE IF EXISTS `shipperorderstatus`;
/*!50001 DROP VIEW IF EXISTS `shipperorderstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `shipperorderstatus` AS SELECT 
 1 AS `Full Name`,
 1 AS `Status`,
 1 AS `Shipper Name`,
 1 AS `Contact Number`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shippingaddress`
--

DROP TABLE IF EXISTS `shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shippingaddress` (
  `SAid` int(11) NOT NULL AUTO_INCREMENT,
  `StreetName` varchar(100) NOT NULL,
  `AptNo` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `State` varchar(45) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `Customer_CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`SAid`,`Customer_CustomerID`),
  KEY `fk_ShippingAddress_Customer1_idx` (`Customer_CustomerID`),
  CONSTRAINT `fk_ShippingAddress_Customer1` FOREIGN KEY (`Customer_CustomerID`) REFERENCES `customer` (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingaddress`
--

LOCK TABLES `shippingaddress` WRITE;
/*!40000 ALTER TABLE `shippingaddress` DISABLE KEYS */;
INSERT INTO `shippingaddress` VALUES (1,'Jersey Street','Apt 20','New York','NY','1001',1),(2,'California Street','Apt 001','Sunnyvale','CA','90001',2),(3,'Amazon Street','Apt 001','Seattle','WA','20001',3),(4,'Amazon HQ','#1','Seattle','WA','20001',3);
/*!40000 ALTER TABLE `shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'onlinemedicalstore'
--

--
-- Dumping routines for database 'onlinemedicalstore'
--
/*!50003 DROP FUNCTION IF EXISTS `findage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findage`(birthdate DATE) RETURNS int(11)
    DETERMINISTIC
return year(curdate())-year(birthdate) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `findpaymenttype` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `findpaymenttype`(paymentType varchar(50)) RETURNS varchar(50) CHARSET utf8
    DETERMINISTIC
return IF(paymentType in ("Credit card","Debit card"),"ONLINE","OFFLINE") ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `productofferdiscount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `productofferdiscount`()
BEGIN
select p.Name as "ProductName" ,p.OriginalPrice as "Original Price",f.offerPercent as "Discount OFFER"
from product p 
inner join productoffers f
on p.ProductID = f.Product_ProductID
where f.offerPercent>5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RevenuefromCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RevenuefromCustomer`(in firstname varchar(50))
BEGIN
	select concat_ws(" ",c.Firstname,c.Lastname) as "Full Name",sum(round(ord.TotalPrice,2))as "Total Revenue"
	from customer c
	inner join onlinemedicalstore.order ord
	on c.CustomerID = ord.orderdetails_Customer_CustomerID 
    where c.firstName = firstname
	group by concat_ws(" ",c.Firstname,c.Lastname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customerdetails_employee`
--

/*!50001 DROP VIEW IF EXISTS `customerdetails_employee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerdetails_employee` AS select concat_ws(' ',`c`.`FirstName`,`c`.`LastName`) AS `Full Name`,count(`o`.`Customer_CustomerID`) AS `Number of Orders` from (`customer` `c` join `orderdetails` `o` on((`c`.`CustomerID` = `o`.`Customer_CustomerID`))) group by `c`.`FirstName`,`c`.`LastName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customerlogin`
--

/*!50001 DROP VIEW IF EXISTS `customerlogin`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerlogin` AS select concat_ws(' ',`c`.`FirstName`,`c`.`LastName`) AS `Full Name`,`l`.`username` AS `USERNAME`,md5(`l`.`password`) AS `PASSWORD` from (`customer` `c` join `logindetails` `l` on((`c`.`CustomerID` = `l`.`Customer_CustomerID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shipperorderstatus`
--

/*!50001 DROP VIEW IF EXISTS `shipperorderstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shipperorderstatus` AS select concat_ws(' ',`c`.`FirstName`,`c`.`LastName`) AS `Full Name`,`o`.`Order_status` AS `Status`,`s`.`ShipperName` AS `Shipper Name`,`s`.`ContactNo` AS `Contact Number` from ((`customer` `c` join `orderdetails` `o` on((`c`.`CustomerID` = `o`.`Customer_CustomerID`))) join `shipper` `s` on((`s`.`ShipperID` = `o`.`shipper_ShipperID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-12 20:25:04
