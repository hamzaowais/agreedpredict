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
-- Table structure for table `CALLOUT`
--

DROP TABLE IF EXISTS `CALLOUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CALLOUT` (
  `ROW_ID` smallint(5) unsigned NOT NULL,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `HADM_ID` mediumint(8) unsigned NOT NULL,
  `SUBMIT_WARDID` tinyint(3) unsigned DEFAULT NULL,
  `SUBMIT_CAREUNIT` varchar(255) DEFAULT NULL,
  `CURR_WARDID` tinyint(3) unsigned DEFAULT NULL,
  `CURR_CAREUNIT` varchar(255) DEFAULT NULL,
  `CALLOUT_WARDID` tinyint(3) unsigned NOT NULL,
  `CALLOUT_SERVICE` varchar(255) NOT NULL,
  `REQUEST_TELE` tinyint(3) unsigned NOT NULL,
  `REQUEST_RESP` tinyint(3) unsigned NOT NULL,
  `REQUEST_CDIFF` tinyint(3) unsigned NOT NULL,
  `REQUEST_MRSA` tinyint(3) unsigned NOT NULL,
  `REQUEST_VRE` tinyint(3) unsigned NOT NULL,
  `CALLOUT_STATUS` varchar(255) NOT NULL,
  `CALLOUT_OUTCOME` varchar(255) NOT NULL,
  `DISCHARGE_WARDID` tinyint(3) unsigned DEFAULT NULL,
  `ACKNOWLEDGE_STATUS` varchar(255) NOT NULL,
  `CREATETIME` datetime NOT NULL,
  `UPDATETIME` datetime NOT NULL,
  `ACKNOWLEDGETIME` datetime DEFAULT NULL,
  `OUTCOMETIME` datetime NOT NULL,
  `FIRSTRESERVATIONTIME` datetime DEFAULT NULL,
  `CURRENTRESERVATIONTIME` datetime DEFAULT NULL,
  UNIQUE KEY `CALLOUT_ROW_ID` (`ROW_ID`),
  UNIQUE KEY `CALLOUT_CURRENTRESERVATIONTIME` (`CURRENTRESERVATIONTIME`),
  KEY `CALLOUT_IDX01` (`SUBJECT_ID`,`HADM_ID`),
  KEY `CALLOUT_IDX02` (`CURR_CAREUNIT`),
  KEY `CALLOUT_IDX03` (`CALLOUT_SERVICE`),
  KEY `CALLOUT_IDX04` (`CURR_WARDID`,`CALLOUT_WARDID`,`DISCHARGE_WARDID`),
  KEY `CALLOUT_IDX05` (`CALLOUT_STATUS`,`CALLOUT_OUTCOME`),
  KEY `CALLOUT_IDX06` (`CREATETIME`,`UPDATETIME`,`ACKNOWLEDGETIME`,`OUTCOMETIME`),
  KEY `callout_fk_hadm_id` (`HADM_ID`),
  CONSTRAINT `callout_fk_hadm_id` FOREIGN KEY (`HADM_ID`) REFERENCES `ADMISSIONS` (`HADM_ID`),
  CONSTRAINT `callout_fk_subject_id` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `PATIENTS` (`SUBJECT_ID`)
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

-- Dump completed on 2017-05-08  9:34:17
