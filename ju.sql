-- MySQL dump 10.11
--
-- Host: localhost    Database: ju
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `account` (
  `fname` varchar(100) default NULL,
  `lname` varchar(100) default NULL,
  `gender` varchar(25) default NULL,
  `mobile` varchar(50) default NULL,
  `email` varchar(90) default NULL,
  `password` varchar(62) default NULL,
  `confirmpass` varchar(100) default NULL,
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('Shruti','Goyal','female','9414021501','shrutigoyal@gmail.com','goyalji','goyalji');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankdetails`
--

DROP TABLE IF EXISTS `bankdetails`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bankdetails` (
  `name` varchar(100) default NULL,
  `email` varchar(80) default NULL,
  `balance` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bankdetails`
--

LOCK TABLES `bankdetails` WRITE;
/*!40000 ALTER TABLE `bankdetails` DISABLE KEYS */;
INSERT INTO `bankdetails` VALUES ('Vanshika Singh','vanshika@gmail.com','40600'),('Tarushika Kumawat','tarushika@gmail.com','697580'),('Vishakha Tak','vishakha@yahoo.com','87450'),('Bhavya Sharma','bhavya@gmail.com','47670'),('Shruti Goyal','shruti@gmail.com','69200'),('Ruchika sarin','ruchika89@gmail.com','93631'),('Lovely Bhagtani','lovely@gmail.com','55300'),('Naira Singh','nairasingh@gmail.com','546550'),('Nikita Ola','nikitaola@gmail.com','551309'),('Corona Shek','corona@gmail.com','320000');
/*!40000 ALTER TABLE `bankdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bhavya`
--

DROP TABLE IF EXISTS `bhavya`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bhavya` (
  `datetime` varchar(100) default NULL,
  `info` varchar(100) default NULL,
  `mode` varchar(30) default NULL,
  `amount` varchar(50) default NULL,
  `balance` varchar(70) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `bhavya`
--

LOCK TABLES `bhavya` WRITE;
/*!40000 ALTER TABLE `bhavya` DISABLE KEYS */;
/*!40000 ALTER TABLE `bhavya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covid`
--

DROP TABLE IF EXISTS `covid`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `covid` (
  `firstname` varchar(20) default NULL,
  `lastname` varchar(20) default NULL,
  `gender` varchar(20) default NULL,
  `address` varchar(55) default NULL,
  `contactno` varchar(11) default NULL,
  `covidpos` varchar(9) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `covid`
--

LOCK TABLES `covid` WRITE;
/*!40000 ALTER TABLE `covid` DISABLE KEYS */;
INSERT INTO `covid` VALUES ('Pulkit','Sarin','male','dholpur','9309369438','no'),('sirat','khan','female','clock tower','9414586247','yes'),('Anisha','Mathur','female','bhilwara','856974123','no'),('subhash','yadav','male','jaipur','896321457','yes'),('','','male','','','yes'),('Nayan','sarin','male','dholpur','748596123','no');
/*!40000 ALTER TABLE `covid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `details` (
  `account_num` varchar(245) default NULL,
  `name` varchar(100) default NULL,
  `IFSC` varchar(90) default NULL,
  `Balance` varchar(255) default NULL,
  UNIQUE KEY `account_num` (`account_num`),
  UNIQUE KEY `IFSC` (`IFSC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES ('510432567811','Bhavya','PBN3456','123456'),('510432789122','Pulkit','PBN7845','147763'),('510432546782','Shruti','PBN58745','121600'),('510432345672','Nikita','PBN2211','39322'),('54123678922','Ayush','PBN6789','45678');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `login` (
  `fname` varchar(200) default NULL,
  `password` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('Ayush','ayushi'),('Ayush','ayushi'),('Pulkit','2105'),('Ayush','ayushi'),('Pulkit Sarin','2105'),('Shruti','shruti'),('tru','bhui'),('Ayush','ayushi'),('Pulkit Sarin','2105'),('Shruti','shruti'),('tru','bhui'),('Tarun','123456'),('chcu','789456'),('tara','741852'),('brush','brush'),('guru','guru'),('vry','vrytry'),('wer','654321'),('Shruti','goyalji');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pulkit`
--

DROP TABLE IF EXISTS `pulkit`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pulkit` (
  `datetime` varchar(50) default NULL,
  `info` varchar(100) default NULL,
  `mode` varchar(20) default NULL,
  `amount` varchar(80) default NULL,
  `balance` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pulkit`
--

LOCK TABLES `pulkit` WRITE;
/*!40000 ALTER TABLE `pulkit` DISABLE KEYS */;
INSERT INTO `pulkit` VALUES ('09-06-2021 16:25:46','Shruti','credited','8000','147763');
/*!40000 ALTER TABLE `pulkit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg`
--

DROP TABLE IF EXISTS `reg`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `reg` (
  `name` varchar(25) default NULL,
  `mobile` varchar(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `reg`
--

LOCK TABLES `reg` WRITE;
/*!40000 ALTER TABLE `reg` DISABLE KEYS */;
INSERT INTO `reg` VALUES ('bhavya','9413335004'),('pulkit','9309369438'),('lokendra','9414021501');
/*!40000 ALTER TABLE `reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shruti`
--

DROP TABLE IF EXISTS `shruti`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `shruti` (
  `datetime` varchar(100) default NULL,
  `info` varchar(100) default NULL,
  `mode` varchar(30) default NULL,
  `amount` varchar(50) default NULL,
  `balance` varchar(70) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `shruti`
--

LOCK TABLES `shruti` WRITE;
/*!40000 ALTER TABLE `shruti` DISABLE KEYS */;
INSERT INTO `shruti` VALUES ('09-06-2021 16:25:46','Pulkit','debited','8000','121600');
/*!40000 ALTER TABLE `shruti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transrecords`
--

DROP TABLE IF EXISTS `transrecords`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `transrecords` (
  `sender` varchar(40) default NULL,
  `amount` varchar(20) default NULL,
  `datetime` varchar(80) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `transrecords`
--

LOCK TABLES `transrecords` WRITE;
/*!40000 ALTER TABLE `transrecords` DISABLE KEYS */;
INSERT INTO `transrecords` VALUES ('Ruchika sarin','950','14-06-2021 16:30:22'),('Naira Singh','950','14-06-2021 16:33:06'),('Tarushika Kumawat','800','14-06-2021 16:38:53'),('Tarushika Kumawat','1620','14-06-2021 16:39:56'),('Naira Singh','800','14-06-2021 17:22:06'),('Ruchika sarin','1719','14-06-2021 17:24:50'),('Nikita Ola','500','15-06-2021 12:31:47'),('Naira Singh','800','15-06-2021 12:36:52'),('Bhavya Sharma','100','15-06-2021 17:36:15'),('Vishakha Tak','100','15-06-2021 19:05:15'),('Naira Singh','1000','16-06-2021 16:01:53');
/*!40000 ALTER TABLE `transrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaccine`
--

DROP TABLE IF EXISTS `vaccine`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `vaccine` (
  `fname` varchar(10) default NULL,
  `mname` varchar(10) default NULL,
  `lname` varchar(10) default NULL,
  `gender` varchar(8) default NULL,
  `phone` varchar(11) default NULL,
  `email` varchar(35) default NULL,
  `acn` varchar(15) default NULL,
  `address` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `vaccine`
--

LOCK TABLES `vaccine` WRITE;
/*!40000 ALTER TABLE `vaccine` DISABLE KEYS */;
INSERT INTO `vaccine` VALUES ('','','','','9413335004','bhavya.18bcon117@gmail.com','',NULL),('deepika','kumari','padukone','female','852741963','deepikaaunty@gmail.com','852741963789',NULL),('','','','','','','',NULL),('','','','','','','',NULL),('','','','','','','','789456123'),('Narendra ','','Modi','male','789456541','narendramodi@gmail.com','741258963','parliament delhi'),('nayantara','singh','shekhawat','female','987456321','nsshekhawat21@gmail.com','741258963','23, padmavati colony'),('Nayan','','sarin','male','748596123','nayansarin@gmail.com','741852963','dholpur'),('','','',NULL,'','','',''),('Bhavya','singh','khan','female','','','','');
/*!40000 ALTER TABLE `vaccine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-20 12:28:09
