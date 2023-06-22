-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: stocktrading
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `'dailyticks_000002_sz'`
--

DROP TABLE IF EXISTS `'dailyticks_000002_sz'`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `'dailyticks_000002_sz'` (
  `DAILY_TICKS` varchar(64) DEFAULT NULL,
  `REAL_TIME_QUOTES` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `'dailyticks_000002_sz'`
--

LOCK TABLES `'dailyticks_000002_sz'` WRITE;
/*!40000 ALTER TABLE `'dailyticks_000002_sz'` DISABLE KEYS */;
INSERT INTO `'dailyticks_000002_sz'` VALUES ('10:18:12',31.72),('11:10:45',31.55),('11:13:42',31.54),('11:16:45',31.56),('11:19:48',31.5),('11:23:06',31.54),('11:26:12',31.56),('11:29:00',31.55),('13:00:09',31.56),('13:03:27',31.5),('13:08:36',31.39),('13:13:15',31.53),('13:18:03',31.54),('13:22:57',31.56),('13:28:42',31.56),('13:34:09',31.53),('13:40:21',31.53),('13:45:06',31.53),('13:50:09',31.54),('13:53:21',31.53),('13:56:30',31.59),('13:59:45',31.54),('14:02:51',31.56),('14:05:57',31.54),('14:09:12',31.55),('14:12:39',31.51),('14:16:03',31.48),('14:19:30',31.47),('14:22:57',31.46),('14:26:24',31.48),('14:29:51',31.5),('14:32:57',31.55),('14:36:06',31.57),('14:39:15',31.58),('14:42:12',31.63),('14:45:00',31.65),('14:48:06',31.72),('14:50:48',31.66),('14:53:27',31.73),('14:56:09',31.73),('14:58:48',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76),('15:00:03',31.76);
/*!40000 ALTER TABLE `'dailyticks_000002_sz'` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-07 20:05:57
`'dailyticks_000001_sz'`