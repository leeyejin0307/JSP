-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: jsp
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

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
-- Table structure for table `member_table`
--

DROP TABLE IF EXISTS `member_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_table` (
  `custno` int(6) NOT NULL AUTO_INCREMENT,
  `custname` varchar(20) DEFAULT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `grade` varchar(1) DEFAULT NULL,
  `city` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`custno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_table`
--

LOCK TABLES `member_table` WRITE;
/*!40000 ALTER TABLE `member_table` DISABLE KEYS */;
INSERT INTO `member_table` VALUES (2,'leeyejin','01050022735','Seoul','2018-03-29','A','SE'),(3,'admin','01012341234','Seoul','2018-03-29','B','SE'),(4,'test','01012345678','Busan','2018-03-29','D','BS'),(5,'kimjonghyoun','01033337777','Ansan','2018-03-07','F','AS'),(6,'123123','12321321321',NULL,NULL,NULL,NULL),(7,'123','123213213',NULL,NULL,NULL,NULL),(8,'lowell','0108523421',NULL,NULL,NULL,NULL),(9,'jkj','kjk','hjk',NULL,NULL,NULL),(10,'leeyejin0307','010500222789','seoul',NULL,'A',NULL),(11,'lowelll','010500222465',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `member_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_table`
--

DROP TABLE IF EXISTS `money_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_table` (
  `custno` int(6) NOT NULL,
  `salenum` int(8) NOT NULL,
  `pcost` int(8) DEFAULT NULL,
  `amount` int(4) DEFAULT NULL,
  `price` int(8) DEFAULT NULL,
  `pcode` varchar(4) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`custno`,`salenum`),
  CONSTRAINT `money_table_ibfk_1` FOREIGN KEY (`custno`) REFERENCES `member_table` (`custno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_table`
--

LOCK TABLES `money_table` WRITE;
/*!40000 ALTER TABLE `money_table` DISABLE KEYS */;
INSERT INTO `money_table` VALUES (2,1000,2000,5,10000,'BP','2018-03-29'),(3,1001,3000,1,3000,'NT','2018-03-29'),(4,1002,5000,4,20000,'PC','2018-03-29'),(5,1003,1000,10,10000,'BN','2018-03-29');
/*!40000 ALTER TABLE `money_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-29 17:43:29
