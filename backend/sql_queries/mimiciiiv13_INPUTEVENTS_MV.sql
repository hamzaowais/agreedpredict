-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: mimiciiiv13
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `INPUTEVENTS_MV`
--

DROP TABLE IF EXISTS `INPUTEVENTS_MV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INPUTEVENTS_MV` (
  `ROW_ID` mediumint(8) unsigned NOT NULL,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `HADM_ID` mediumint(8) unsigned NOT NULL,
  `ICUSTAY_ID` mediumint(8) unsigned DEFAULT NULL,
  `STARTTIME` datetime NOT NULL,
  `ENDTIME` datetime NOT NULL,
  `ITEMID` mediumint(8) unsigned NOT NULL,
  `AMOUNT` float NOT NULL,
  `AMOUNTUOM` varchar(255) NOT NULL,
  `RATE` float DEFAULT NULL,
  `RATEUOM` varchar(255) DEFAULT NULL,
  `STORETIME` datetime NOT NULL,
  `CGID` smallint(5) unsigned NOT NULL,
  `ORDERID` mediumint(8) unsigned NOT NULL,
  `LINKORDERID` mediumint(8) unsigned NOT NULL,
  `ORDERCATEGORYNAME` varchar(255) NOT NULL,
  `SECONDARYORDERCATEGORYNAME` varchar(255) DEFAULT NULL,
  `ORDERCOMPONENTTYPEDESCRIPTION` varchar(255) NOT NULL,
  `ORDERCATEGORYDESCRIPTION` varchar(255) NOT NULL,
  `PATIENTWEIGHT` float NOT NULL,
  `TOTALAMOUNT` float DEFAULT NULL,
  `TOTALAMOUNTUOM` varchar(255) DEFAULT NULL,
  `ISOPENBAG` tinyint(3) unsigned NOT NULL,
  `CONTINUEINNEXTDEPT` tinyint(3) unsigned NOT NULL,
  `CANCELREASON` tinyint(3) unsigned NOT NULL,
  `STATUSDESCRIPTION` varchar(255) NOT NULL,
  `COMMENTS_EDITEDBY` varchar(255) DEFAULT NULL,
  `COMMENTS_CANCELEDBY` varchar(255) DEFAULT NULL,
  `COMMENTS_DATE` datetime DEFAULT NULL,
  `ORIGINALAMOUNT` float NOT NULL,
  `ORIGINALRATE` float NOT NULL,
  UNIQUE KEY `INPUTEVENTS_MV_ROW_ID` (`ROW_ID`),
  KEY `INPUTEVENTS_MV_idx01` (`SUBJECT_ID`,`HADM_ID`),
  KEY `INPUTEVENTS_MV_idx02` (`ICUSTAY_ID`),
  KEY `INPUTEVENTS_MV_idx03` (`ENDTIME`,`STARTTIME`),
  KEY `INPUTEVENTS_MV_idx04` (`ITEMID`),
  KEY `INPUTEVENTS_MV_idx05` (`RATE`),
  KEY `INPUTEVENTS_MV_idx06` (`AMOUNT`),
  KEY `INPUTEVENTS_MV_idx07` (`CGID`),
  KEY `INPUTEVENTS_MV_idx08` (`LINKORDERID`,`ORDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-08  9:34:21
