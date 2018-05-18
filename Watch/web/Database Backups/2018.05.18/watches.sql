-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: watches
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Brand`
--

DROP TABLE IF EXISTS `Brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brand` (
  `idBrand` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBrand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brand`
--

LOCK TABLES `Brand` WRITE;
/*!40000 ALTER TABLE `Brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `Brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CardDetails`
--

DROP TABLE IF EXISTS `CardDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CardDetails` (
  `idCardDetails` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Type` varchar(45) DEFAULT NULL,
  `Number` varchar(45) DEFAULT NULL,
  `CSV` varchar(45) DEFAULT NULL,
  `ExpDate` varchar(45) DEFAULT NULL,
  `User_idUser` int(11) NOT NULL,
  PRIMARY KEY (`idCardDetails`),
  KEY `fk_CardDetails_User1_idx` (`User_idUser`),
  CONSTRAINT `fk_CardDetails_User1` FOREIGN KEY (`User_idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CardDetails`
--

LOCK TABLES `CardDetails` WRITE;
/*!40000 ALTER TABLE `CardDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `CardDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cart`
--

DROP TABLE IF EXISTS `Cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cart` (
  `idCart` int(11) NOT NULL AUTO_INCREMENT,
  `Qty` double DEFAULT NULL,
  `TotPrice` double DEFAULT NULL,
  `Product_idProduct` int(11) NOT NULL,
  PRIMARY KEY (`idCart`),
  KEY `fk_Cart_Product1_idx` (`Product_idProduct`),
  CONSTRAINT `fk_Cart_Product1` FOREIGN KEY (`Product_idProduct`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cart`
--

LOCK TABLES `Cart` WRITE;
/*!40000 ALTER TABLE `Cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `idCategory` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Checkout`
--

DROP TABLE IF EXISTS `Checkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Checkout` (
  `idCheckout` int(11) NOT NULL AUTO_INCREMENT,
  `PurchasedDate` date DEFAULT NULL,
  `DeliveryStatus` varchar(45) DEFAULT NULL,
  `PaidStatus` varchar(45) DEFAULT NULL,
  `SubTotal` double DEFAULT NULL,
  `MyCost` double DEFAULT NULL,
  `ShippingCost_idShippingCost` int(11) NOT NULL,
  `PaymentMethod_idPaymentMethod` int(11) NOT NULL,
  `CardDetails_idCardDetails` int(11) NOT NULL,
  `ShippingAddress_idShippingAddress` int(11) NOT NULL,
  `User_idUser` int(11) NOT NULL,
  PRIMARY KEY (`idCheckout`),
  KEY `fk_Checkout_ShippingCost1_idx` (`ShippingCost_idShippingCost`),
  KEY `fk_Checkout_PaymentMethod1_idx` (`PaymentMethod_idPaymentMethod`),
  KEY `fk_Checkout_CardDetails1_idx` (`CardDetails_idCardDetails`),
  KEY `fk_Checkout_ShippingAddress1_idx` (`ShippingAddress_idShippingAddress`),
  KEY `fk_Checkout_User1_idx` (`User_idUser`),
  CONSTRAINT `fk_Checkout_CardDetails1` FOREIGN KEY (`CardDetails_idCardDetails`) REFERENCES `CardDetails` (`idCardDetails`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Checkout_PaymentMethod1` FOREIGN KEY (`PaymentMethod_idPaymentMethod`) REFERENCES `PaymentMethod` (`idPaymentMethod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Checkout_ShippingAddress1` FOREIGN KEY (`ShippingAddress_idShippingAddress`) REFERENCES `ShippingAddress` (`idShippingAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Checkout_ShippingCost1` FOREIGN KEY (`ShippingCost_idShippingCost`) REFERENCES `ShippingCost` (`idShippingCost`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Checkout_User1` FOREIGN KEY (`User_idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Checkout`
--

LOCK TABLES `Checkout` WRITE;
/*!40000 ALTER TABLE `Checkout` DISABLE KEYS */;
/*!40000 ALTER TABLE `Checkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Checkout_has_Product`
--

DROP TABLE IF EXISTS `Checkout_has_Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Checkout_has_Product` (
  `CHPId` int(11) NOT NULL AUTO_INCREMENT,
  `Qty` double DEFAULT NULL,
  `Checkout_idCheckout` int(11) NOT NULL,
  `Product_idProduct` int(11) NOT NULL,
  PRIMARY KEY (`CHPId`),
  KEY `fk_Checkout_has_Product_Product1_idx` (`Product_idProduct`),
  KEY `fk_Checkout_has_Product_Checkout1_idx` (`Checkout_idCheckout`),
  CONSTRAINT `fk_Checkout_has_Product_Checkout1` FOREIGN KEY (`Checkout_idCheckout`) REFERENCES `Checkout` (`idCheckout`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Checkout_has_Product_Product1` FOREIGN KEY (`Product_idProduct`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Checkout_has_Product`
--

LOCK TABLES `Checkout_has_Product` WRITE;
/*!40000 ALTER TABLE `Checkout_has_Product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Checkout_has_Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GRN`
--

DROP TABLE IF EXISTS `GRN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GRN` (
  `idGRN` int(11) NOT NULL AUTO_INCREMENT,
  `BuyPrice` double DEFAULT NULL,
  `SelPrice` double DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `AddedDate` date DEFAULT NULL,
  `Product_idProduct` int(11) NOT NULL,
  PRIMARY KEY (`idGRN`),
  KEY `fk_GRN_Product1_idx` (`Product_idProduct`),
  CONSTRAINT `fk_GRN_Product1` FOREIGN KEY (`Product_idProduct`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GRN`
--

LOCK TABLES `GRN` WRITE;
/*!40000 ALTER TABLE `GRN` DISABLE KEYS */;
/*!40000 ALTER TABLE `GRN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomeTown`
--

DROP TABLE IF EXISTS `HomeTown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomeTown` (
  `idHomeTown` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHomeTown`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomeTown`
--

LOCK TABLES `HomeTown` WRITE;
/*!40000 ALTER TABLE `HomeTown` DISABLE KEYS */;
/*!40000 ALTER TABLE `HomeTown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PaymentMethod`
--

DROP TABLE IF EXISTS `PaymentMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PaymentMethod` (
  `idPaymentMethod` int(11) NOT NULL AUTO_INCREMENT,
  `Method` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPaymentMethod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PaymentMethod`
--

LOCK TABLES `PaymentMethod` WRITE;
/*!40000 ALTER TABLE `PaymentMethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `PaymentMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `idProduct` int(11) NOT NULL AUTO_INCREMENT,
  `ProductCode` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Movement` varchar(45) DEFAULT NULL,
  `Display` varchar(45) DEFAULT NULL,
  `Style` varchar(45) DEFAULT NULL,
  `Features` varchar(45) DEFAULT NULL,
  `CaseMaterial` varchar(45) DEFAULT NULL,
  `CaseDiameter` varchar(45) DEFAULT NULL,
  `CaseThickness` varchar(45) DEFAULT NULL,
  `BandMaterial` varchar(45) DEFAULT NULL,
  `BandLength` varchar(45) DEFAULT NULL,
  `BandWidth` varchar(45) DEFAULT NULL,
  `Category_idCategory` int(11) NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `fk_Product_Category1_idx` (`Category_idCategory`),
  CONSTRAINT `fk_Product_Category1` FOREIGN KEY (`Category_idCategory`) REFERENCES `Category` (`idCategory`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductImage`
--

DROP TABLE IF EXISTS `ProductImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductImage` (
  `idProductImage` int(11) NOT NULL AUTO_INCREMENT,
  `ImageOne` varchar(45) DEFAULT NULL,
  `ImageTwo` varchar(45) DEFAULT NULL,
  `ImageThree` varchar(45) DEFAULT NULL,
  `Product_idProduct` int(11) NOT NULL,
  PRIMARY KEY (`idProductImage`),
  KEY `fk_ProductImage_Product_idx` (`Product_idProduct`),
  CONSTRAINT `fk_ProductImage_Product` FOREIGN KEY (`Product_idProduct`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductImage`
--

LOCK TABLES `ProductImage` WRITE;
/*!40000 ALTER TABLE `ProductImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProductImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShippingAddress`
--

DROP TABLE IF EXISTS `ShippingAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShippingAddress` (
  `idShippingAddress` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(45) DEFAULT NULL,
  `HomeTown_idHomeTown` int(11) NOT NULL,
  `User_idUser` int(11) NOT NULL,
  PRIMARY KEY (`idShippingAddress`),
  KEY `fk_ShippingAddress_HomeTown1_idx` (`HomeTown_idHomeTown`),
  KEY `fk_ShippingAddress_User1_idx` (`User_idUser`),
  CONSTRAINT `fk_ShippingAddress_HomeTown1` FOREIGN KEY (`HomeTown_idHomeTown`) REFERENCES `HomeTown` (`idHomeTown`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ShippingAddress_User1` FOREIGN KEY (`User_idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShippingAddress`
--

LOCK TABLES `ShippingAddress` WRITE;
/*!40000 ALTER TABLE `ShippingAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShippingAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShippingCost`
--

DROP TABLE IF EXISTS `ShippingCost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShippingCost` (
  `idShippingCost` int(11) NOT NULL AUTO_INCREMENT,
  `Cost` double DEFAULT NULL,
  `HomeTown_idHomeTown` int(11) NOT NULL,
  PRIMARY KEY (`idShippingCost`),
  KEY `fk_ShippingCost_HomeTown1_idx` (`HomeTown_idHomeTown`),
  CONSTRAINT `fk_ShippingCost_HomeTown1` FOREIGN KEY (`HomeTown_idHomeTown`) REFERENCES `HomeTown` (`idHomeTown`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShippingCost`
--

LOCK TABLES `ShippingCost` WRITE;
/*!40000 ALTER TABLE `ShippingCost` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShippingCost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stock` (
  `idStock` int(11) NOT NULL AUTO_INCREMENT,
  `BuyPrice` double DEFAULT NULL,
  `SelPrice` double DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `AddedDate` date DEFAULT NULL,
  `Product_idProduct` int(11) NOT NULL,
  PRIMARY KEY (`idStock`),
  KEY `fk_Stock_Product1_idx` (`Product_idProduct`),
  CONSTRAINT `fk_Stock_Product1` FOREIGN KEY (`Product_idProduct`) REFERENCES `Product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `PhoneNo` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `UserType_idUserType` int(11) NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  KEY `fk_User_UserType1_idx` (`UserType_idUserType`),
  CONSTRAINT `fk_User_UserType1` FOREIGN KEY (`UserType_idUserType`) REFERENCES `UserType` (`idUserType`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (2,'Lahiru Sandaruwan','0714942345','wlahirusandaruwan@gmail.com',2,'Lahiru',NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserLogin`
--

DROP TABLE IF EXISTS `UserLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserLogin` (
  `idUserLogin` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) DEFAULT NULL,
  `PassWord` varchar(45) DEFAULT NULL,
  `User_idUser` int(11) NOT NULL,
  PRIMARY KEY (`idUserLogin`),
  KEY `fk_UserLogin_User1_idx` (`User_idUser`),
  CONSTRAINT `fk_UserLogin_User1` FOREIGN KEY (`User_idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserLogin`
--

LOCK TABLES `UserLogin` WRITE;
/*!40000 ALTER TABLE `UserLogin` DISABLE KEYS */;
INSERT INTO `UserLogin` VALUES (1,'Lahiru','933632202v',2);
/*!40000 ALTER TABLE `UserLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserType`
--

DROP TABLE IF EXISTS `UserType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserType` (
  `idUserType` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUserType`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserType`
--

LOCK TABLES `UserType` WRITE;
/*!40000 ALTER TABLE `UserType` DISABLE KEYS */;
INSERT INTO `UserType` VALUES (1,'Admin'),(2,'Buyer');
/*!40000 ALTER TABLE `UserType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WishList`
--

DROP TABLE IF EXISTS `WishList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WishList` (
  `idWishList` int(11) NOT NULL AUTO_INCREMENT,
  `User_idUser` int(11) NOT NULL,
  `Stock_idStock` int(11) NOT NULL,
  PRIMARY KEY (`idWishList`),
  KEY `fk_WishList_User1_idx` (`User_idUser`),
  KEY `fk_WishList_Stock1_idx` (`Stock_idStock`),
  CONSTRAINT `fk_WishList_Stock1` FOREIGN KEY (`Stock_idStock`) REFERENCES `Stock` (`idStock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_WishList_User1` FOREIGN KEY (`User_idUser`) REFERENCES `User` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WishList`
--

LOCK TABLES `WishList` WRITE;
/*!40000 ALTER TABLE `WishList` DISABLE KEYS */;
/*!40000 ALTER TABLE `WishList` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-18 20:30:12
