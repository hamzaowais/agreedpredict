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
-- Table structure for table `ADMISSIONS`
--

DROP TABLE IF EXISTS `ADMISSIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMISSIONS` (
  `ROW_ID` smallint(5) unsigned NOT NULL,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `HADM_ID` mediumint(8) unsigned NOT NULL,
  `ADMITTIME` datetime NOT NULL,
  `DISCHTIME` datetime NOT NULL,
  `DEATHTIME` datetime DEFAULT NULL,
  `ADMISSION_TYPE` varchar(255) NOT NULL,
  `ADMISSION_LOCATION` varchar(255) NOT NULL,
  `DISCHARGE_LOCATION` varchar(255) NOT NULL,
  `INSURANCE` varchar(255) NOT NULL,
  `LANGUAGE` varchar(255) DEFAULT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `MARITAL_STATUS` varchar(255) DEFAULT NULL,
  `ETHNICITY` varchar(255) NOT NULL,
  `EDREGTIME` datetime DEFAULT NULL,
  `EDOUTTIME` datetime DEFAULT NULL,
  `DIAGNOSIS` text,
  `HOSPITAL_EXPIRE_FLAG` tinyint(3) unsigned NOT NULL,
  `HAS_CHARTEVENTS_DATA` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `ADMISSIONS_ROW_ID` (`ROW_ID`),
  UNIQUE KEY `ADMISSIONS_HADM_ID` (`HADM_ID`),
  KEY `ADMISSIONS_IDX01` (`SUBJECT_ID`,`HADM_ID`),
  KEY `ADMISSIONS_IDX02` (`ADMITTIME`,`DISCHTIME`,`DEATHTIME`),
  KEY `ADMISSIONS_IDX03` (`ADMISSION_TYPE`),
  CONSTRAINT `admissions_fk_subject_id` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `PATIENTS` (`SUBJECT_ID`)
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
