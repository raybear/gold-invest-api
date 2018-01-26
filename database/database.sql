-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: localhost    Database: gi
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apartments` (
  `area` int(10) DEFAULT NULL,
  `side` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `rooms` int(10) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imgHailight` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imgBase` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `imgModel` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `floor` int(10) unsigned DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apartments_floors_id_fk` (`floor`),
  CONSTRAINT `apartments_floors_id_fk` FOREIGN KEY (`floor`) REFERENCES `floors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` VALUES (54,'Jug',2,'Prodato','leonardo4/suteren/a1highlight.png','leonardo4/tip2','leonardo4/model/tip2',1,1,NULL),(35,'Jug',1,'Prodato','leonardo4/suteren/a2highlight.png','leonardo4/tip3','leonardo4/model/tip3',1,2,NULL),(37,'Jug',1,'Prodato','leonardo4/suteren/a3highlight.png','leonardo4/tip5','leonardo4/model/tip5',1,3,NULL),(35,'Jug',1,'Prodato','leonardo4/suteren/a4highlight.png','leonardo4/tip4','leonardo4/model/tip4',1,4,NULL),(54,'Jug',2,'Slobodno','leonardo4/suteren/a5highlight.png','leonardo4/tip2','leonardo4/model/tip2',1,5,NULL),(36,'Zapad',1,'Prodato','leonardo4/prizemlje/a6highlight.png','leonardo4/tip4','leonardo4/model/tip4',2,6,NULL),(54,'Jug',2,'Prodato','leonardo4/prizemlje/a7highlight.png','leonardo4/tip2','leonardo4/model/tip2',2,7,NULL),(35,'Jug',1,'Prodato','leonardo4/prizemlje/a8highlight.png','leonardo4/tip4','leonardo4/model/tip4',2,8,NULL),(37,'Jug',1,'Prodato','leonardo4/prizemlje/a9highlight.png','leonardo4/tip5','leonardo4/model/tip5',2,9,NULL),(35,'Jug',1,'Prodato','leonardo4/prizemlje/a10highlight.png','leonardo4/tip4','leonardo4/model/tip4',2,10,NULL),(54,'Jug',2,'Prodato','leonardo4/prizemlje/a11highlight.png','leonardo4/tip2','leonardo4/model/tip2',2,11,NULL),(36,'Istok',1,'Prodato','leonardo4/prizemlje/a12highlight.png','leonardo4/tip1','leonardo4/model/tip1',2,12,NULL),(36,'Zapad',1,'Prodato','leonardo4/1sprat/a13highlight.png','leonardo4/tip1','leonardo4/model/tip1',3,13,NULL),(54,'Jug',2,'Prodato','leonardo4/1sprat/a14highlight.png','leonardo4/tip2','leonardo4/model/tip2',3,14,NULL),(44,'Jug',1,'Prodato','leonardo4/1sprat/a15highlight.png','leonardo4/tip6','leonardo4/model/tip6',3,15,NULL),(44,'Jug',2,'Prdato','leonardo4/1sprat/a16highlight.png','leonardo4/tip7','leonardo4/model/tip7',3,16,NULL),(54,'Jug',2,'Prodato','leonardo4/1sprat/a17highlight.png','leonardo4/tip2','leonardo4/model/tip2',3,17,NULL),(36,'Istok',1,'Prodato','leonardo4/1sprat/a18highlight.png','leonardo4/tip1','leonardo4/model/tip1',3,18,NULL),(36,'Zapad',1,'Prodato','leonardo4/2sprat/a19highlight.png','leonardo4/tip1','leonardo4/model/tip1',4,19,NULL),(44,'Jug',2,'Prodato','leonardo4/2sprat/a20highlight.png','leonardo4/tip7','leonardo4/model/tip7',4,20,NULL),(44,'Jug',2,'Prodato','leonardo4/2sprat/a21highlight.png','leonardo4/tip7','leonardo4/model/tip7',4,21,NULL),(36,'Istok',1,'Prodato','leonardo4/2sprat/a22highlight.png','leonardo4/tip1','leonardo4/model/tip',4,22,NULL),(54,'Jug',2,'Prodato','leonardo4/2sprat/a23highlight.png','leonardo4/tip2','leonardo4/model/tip2',4,23,NULL),(54,'Jug',2,'Prodato','leonardo4/2sprat/a24highlight.png','leonardo4/tip2','leonardo4/model/tip2',4,24,NULL),(36,'Zapad',1,'Prodato','leonardo4/3sprat/a25highlight.png','leonardo4/tip1','leonardo4/model/tip1',5,25,NULL),(44,'Jug',1,'Prodato','leonardo4/3sprat/a26highlight.png','leonardo4/tip6','leonardo4/model/tip6',5,26,NULL),(44,'Jug',1,'Prodato','leonardo4/3sprat/a27highlight.png','leonardo4/tip6','leonardo4/model/tip6',5,27,NULL),(36,'Istok',1,'Prodato','leonardo4/3sprat/a28highlight.png','leonardo4/tip1','leonardo4/model/tip1',5,28,NULL),(62,'Jug',2,'Rezervisano','leonardo4/3sprat/a29highlight(1).png','leonardo4/tip8','leonardo4/model/tip8',5,29,NULL),(62,'Jug',2,'Slobodno','leonardo4/3sprat/a30highlight(1).png','leonardo4/tip8','leonardo4/model/tip8',5,30,NULL),(42,'Zapad',1,'Prodato','leonardo4/potkrovlje1/a31highlight.png','leonardo4/tip9','leonardo4/model/tip9',6,31,NULL),(46,'Jug',1,'Prodato','leonardo4/potkrovlje1/a32highlight.png','leonardo4/tip6','leonardo4/model/tip6',6,32,NULL),(46,'Jug',1,'Prodato','leonardo4/potkrovlje1/a33highlight.png','leonardo4/tip6','leonardo4/model/tip6',6,33,NULL),(42,'Istok',1,'Prodato','leonardo4/potkrovlje1/a34highlight.png','leonardo4/tip10','leonardo4/model/tip10',6,34,NULL),(62,'Jug',2,'Prodato','leonardo4/potkrovlje2/a35highlight.png','leonardo4/tip11','leonardo4/model/tip11',7,35,NULL),(62,'Jug',2,'Prodato','leonardo4/potkrovlje2/a36highlight.png','leonardo4/tip11','leonardo4/model/tip11',7,36,NULL),(NULL,NULL,NULL,'Prodato',NULL,NULL,NULL,8,37,'Garažno mesto 1'),(NULL,NULL,NULL,'Prodato',NULL,NULL,NULL,8,38,'Garažno mesto 2'),(NULL,NULL,NULL,'Prodato',NULL,NULL,NULL,8,39,'Garažno mesto 3'),(NULL,NULL,NULL,'Prodato',NULL,NULL,NULL,8,40,'Garažno mesto 4'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,41,'Garažno mesto 5'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,42,'Garažno mesto 6'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,43,'Garažno mesto 7'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,44,'Garažno mesto 8'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,45,'Garažno mesto 9'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,46,'Garažno mesto 10'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,47,'Garažno mesto 11'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,48,'Garažno mesto 12'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,49,'Garažno mesto 13'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,50,'Garažno mesto 14'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,51,'Garažno mesto 15'),(NULL,NULL,NULL,'Prodato',NULL,NULL,NULL,8,52,'Garažno mesto 16'),(NULL,NULL,NULL,'Slobodno',NULL,NULL,NULL,8,53,'Garažno mesto 17'),(NULL,NULL,NULL,'Prodato',NULL,NULL,NULL,8,54,'Garažno mesto 18'),(38,'Zapad',1,'Slobodno','leonardo5/suteren/a1highlight.png','leonardo5/stan1','leonardo5/model/tip1',9,55,NULL),(55,'Jug',2,'Slobodno','leonardo5/suteren/a2highlight.png','leonardo5/stan2','leonardo5/model/tip5',9,56,NULL),(57,'Jug',2,'Slobodno','leonardo5/suteren/a3highlight.png','leonardo5/stan3','leonardo5/model/tip6',9,57,NULL),(40,'Jug',1,'Slobodno','leonardo5/prizemlje/a4highlight.png','leonardo5/stan4','leonardo5/model/tip2',10,58,NULL),(38,'Jug',1,'Slobodno','leonardo5/prizemlje/a5highlight.png','leonardo5/stan5','leonardo5/model/tip3',10,59,NULL),(47,'Jug',2,'Slobodno','leonardo5/prizemlje/a6highlight.png','leonardo5/stan6','leonardo5/model/tip4',10,60,NULL),(38,'Zapad',1,'Slobodno','leonardo5/prizemlje/a7highlight.png','leonardo5/stan7','leonardo5/model/tip1',10,61,NULL),(38,'Istok',1,'Prodato','leonardo5/sprat/a8highlight.png','leonardo5/stan8','leonardo5/model/tip1a',11,62,NULL),(40,'Jug',1,'Slobodno','leonardo5/sprat/a9highlight.png','leonardo5/stan9','leonardo5/model/tip2',11,63,NULL),(38,'Jug',1,'Slobodno','leonardo5/sprat/a10highlight.png','leonardo5/stan10','leonardo5/model/tip3',11,64,NULL),(47,'Jug',2,'Slobodno','leonardo5/sprat/a11highlight.png','leonardo5/stan11','leonardo5/model/tip4',11,65,NULL),(38,'Zapad',1,'Slobodno','leonardo5/sprat/a12highlight.png','leonardo5/stan12','leonardo5/model/tip1',11,66,NULL),(38,'Istok',1,'Slobodno','leonardo5/sprat/a8highlight.png','leonardo5/stan13','leonardo5/model/tip1a',12,67,NULL),(40,'Jug',1,'Slobodno','leonardo5/sprat/a9highlight.png','leonardo5/stan14','leonardo5/model/tip2',12,68,NULL),(38,'Jug',1,'Prodato','leonardo5/sprat/a10highlight.png','leonardo5/stan15','leonardo5/model/tip3',12,69,NULL),(47,'Jug',2,'Slobodno','leonardo5/sprat/a11highlight.png','leonardo5/stan16','leonardo5/model/tip4',12,70,NULL),(38,'Zapad',1,'Prodato','leonardo5/sprat/a12highlight.png','leonardo5/stan17','leonardo5/model/tip1',12,71,NULL),(38,'Istok',1,'Slobodno','leonardo5/sprat/a8highlight.png','leonardo5/stan18','leonardo5/model/tip1a',13,72,NULL),(40,'Jug',1,'Slobodno','leonardo5/sprat/a9highlight.png','leonardo5/stan19','leonardo5/model/tip2',13,73,NULL),(38,'Jug',1,'Slobodno','leonardo5/sprat/a10highlight.png','leonardo5/stan20','leonardo5/model/tip3',13,74,NULL),(47,'Jug',2,'Slobodno','leonardo5/sprat/a11highlight.png','leonardo5/stan21','leonardo5/model/tip4',13,75,NULL),(38,'Istok',1,'Slobodno','leonardo5/sprat/a12highlight.png','leonardo5/stan22','leonardo5/model/tip1',13,76,NULL),(38,'Zapad',1,'Slobodno','leonardo5/sprat/a8highlight.png','leonardo5/stan18','leonardo5/model/tip1a',14,77,NULL),(40,'Jug',1,'Slobodno','leonardo5/sprat/a9highlight.png','leonardo5/stan19','leonardo5/model/tip2',14,78,NULL),(38,'Jug',1,'Slobodno','leonardo5/sprat/a10highlight.png','leonardo5/stan20','leonardo5/model/tip3',14,79,NULL),(47,'Jug',2,'Slobodno','leonardo5/sprat/a11highlight.png','leonardo5/stan21','leonardo5/model/tip4',14,80,NULL),(38,'Istok',1,'Slobodno','leonardo5/sprat/a12highlight.png','leonardo5/stan22','leonardo5/model/tip1',14,81,NULL);
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `sold` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `soldOut` varchar(255) COLLATE utf8_bin NOT NULL,
  `block` tinyint(1) DEFAULT '1',
  `city` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `contract` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `finished` int(10) DEFAULT NULL,
  `mainImage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pdfCatalogUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pdfCatalogImage` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (3,'Villa Leonardo I',1,'2018-01-24 00:41:56','2018-01-23 16:01:06','RASPRODATO',1,'ZLATIBOR','351-169/04-03',2004,'leonardo1/leonardo1main',NULL,NULL),(4,'Villa Leonardo II',1,'2018-01-24 00:41:56','2018-01-23 16:01:21','RASPRODATO',1,'ZLATIBOR','351-180/08-03',2008,'leonardo2/leonardo2main',NULL,NULL),(7,'Villa Leonardo III',1,'2018-01-24 00:41:56','2018-01-23 16:02:52','RASPRODATO',1,'ZLATIBOR','351-117/2014-03',2013,'leonardo3/leonardo3main',NULL,NULL),(8,'Villa Leonardo IV',0,'2018-01-24 00:44:42','2018-01-23 16:03:07','SLOBODNO',1,'ZLATIBOR','351-117/2014-03',207,'leonardo4/leonardo4main','leonardo4Header','leonardo4/leonardo4pdf'),(9,'Villa Leonardo V',0,'2018-01-24 00:44:42','2018-01-23 16:03:20','SLOBODNO',0,'ZLATIBOR','351-117/2014-03',NULL,'leonardo4/leonardo4main','leonardo5Header','leonardo5/leonardo5pdf'),(10,'Zgrada Užice',1,'2018-01-24 00:41:56','2018-01-23 21:02:23','RASPRODATO',1,'UŽICE','351-187/14-02',2013,'zgradaUzice/zgradaUziceMain',NULL,NULL);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floors`
--

DROP TABLE IF EXISTS `floors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `building` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  CONSTRAINT `building` FOREIGN KEY (`building`) REFERENCES `buildings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floors`
--

LOCK TABLES `floors` WRITE;
/*!40000 ALTER TABLE `floors` DISABLE KEYS */;
INSERT INTO `floors` VALUES (1,'SUTEREN',8,'2018-01-23 16:04:53','2018-01-23 16:04:53'),(2,'PRIZEMLJE ',8,'2018-01-23 16:05:03','2018-01-23 16:05:03'),(3,'SPRAT I',8,'2018-01-23 16:05:34','2018-01-23 16:05:34'),(4,'SPRAT II',8,'2018-01-23 16:05:34','2018-01-23 16:05:34'),(5,'SPRAT III',8,'2018-01-23 16:05:34','2018-01-23 16:05:34'),(6,'POTKROVLJE I',8,'2018-01-24 23:48:09','2018-01-24 23:48:09'),(7,'POTKROVLJE II',8,'2018-01-24 23:48:09','2018-01-24 23:48:09'),(8,'GARAŽA',8,'2018-01-24 23:48:09','2018-01-24 23:48:09'),(9,'SUTEREN',9,'2018-01-24 23:50:29','2018-01-24 23:50:29'),(10,'PRIZEMLJE',9,'2018-01-24 23:50:29','2018-01-24 23:50:29'),(11,'SPRAT I',9,'2018-01-24 23:50:29','2018-01-24 23:50:29'),(12,'SPRAT II',9,'2018-01-24 23:50:29','2018-01-24 23:50:29'),(13,'SPRAT III',9,'2018-01-24 23:50:29','2018-01-24 23:50:29'),(14,'SPRAT IV',9,'2018-01-24 23:50:29','2018-01-24 23:50:29');
/*!40000 ALTER TABLE `floors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `building` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_buildings_id_fk` (`building`),
  CONSTRAINT `images_buildings_id_fk` FOREIGN KEY (`building`) REFERENCES `buildings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (2,'leonardo1/slika1',3),(3,'leonardo1/slika2',3),(4,'leonardo1/slika3',3),(5,'leonardo1/slika4',3),(6,'leonardo2/slika1',4),(7,'leonardo2/slika2',4),(8,'leonardo2/slika3',4),(9,'leonardo2/slika4',4),(10,'leonardo3/slika1',7),(11,'leonardo3/slika2',7),(12,'leonardo3/slika3',7),(13,'leonardo3/slika4',7),(14,'zgradaUzice/slika1',10),(15,'zgradaUzice/slika2',10),(16,'zgradaUzice/slika3',10),(17,'zgradaUzice/slika4',10);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `locations` text COLLATE utf8_bin,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parcela` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `building` int(10) unsigned DEFAULT NULL,
  `lat` decimal(9,7) DEFAULT NULL,
  `lng` decimal(9,7) DEFAULT NULL,
  KEY `locations_buildings_id_fk` (`building`),
  CONSTRAINT `locations_buildings_id_fk` FOREIGN KEY (`building`) REFERENCES `buildings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES ('  Objekat se nalazi na 500m od centra Zlatibora, kod picerije Miris Dunja.','Miajla Radovića 1, Zlatibor','4577/511',3,NULL,NULL),('Objekat se nalazi na 1km od centra zlatibora, u naselju Sloboda, preko puta stare kafane Sloboda.','Ćaldov put bb, Zlatibor.','4487/3',4,NULL,NULL),('Objekat se nalazi na 200m od centra zlatibora, u naselju kod crkve.','Adresa: Svetogorska bb, Zlatibor.','4574/10',7,NULL,NULL),('Objekat se nalazi na 50m od muzeja u Užicu.','Adresa: Dimitrija Tucovića 6, Užice.','9568',10,NULL,NULL),(NULL,NULL,NULL,8,43.7283089,19.6950906),(NULL,NULL,NULL,9,43.7308392,19.7039917);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `apartment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_apartments_id_fk` (`apartment`),
  CONSTRAINT `rooms_apartments_id_fk` FOREIGN KEY (`apartment`) REFERENCES `apartments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES ('Dnevni Boravak sa Kuhinjom',29.76,1,'parket, keramičke pločice',1),('Soba',8.97,2,'parket',1),('Soba',6.49,3,'parket',1),('Kupatilo',4.78,4,'keramičke pločice',1),('Terasa',4.00,5,'keramičke pločice',1),('Dnevni Boravak sa Kuhinjom',13.63,6,'parket, keramičke pločice',2),('Soba',8.65,7,'parket',2),('Hodnik',4.57,8,'keramicke pločice',2),('Kupatilo',4.42,9,'keramicke pločice',2),('Terasa',3.00,10,'keramicke pločice',2),('Dnevni Boravak sa Kuhinjom',18.02,11,'parket, keramičke pločice',3),('Soba',10.32,12,'parket',3),('Kupatilo',5.08,13,'keramičke pločice',3),('Terasa',3.90,14,'keramičke pločice',3),('Dnevni Boravak sa Kuhinjom',13.63,15,'parket, keramičke pločice',4),('Soba',8.65,16,'parket',4),('Hodnik',4.57,17,'keramičke pločice',4),('Terasa',3.48,18,'keramičke pločice',4),('Dnevni Boravak sa Kuhinjom',29.76,19,'parket, keramičke pločice',5),('Soba',8.97,20,'parket',5),('Soba',6.49,21,'parket',5),('Kupatilo',4.78,22,'keramičke pločice',5),('Terasa',4.00,23,'keramičke pločice',5),('Dnevni Boravak sa Kuhinjom',14.59,24,'parket, keramičke pločice',6),('Soba',9.13,25,'parket',6),('Hodnik',3.92,26,'keramičke pločice',6),('Kupatilo',4.71,27,'keramičke pločice',6),('Terasa',3.81,28,'keramičke pločice',6),('Dnevni Boravak sa Kuhinjom',29.76,29,'parket, keramičke pločice',7),('Soba',8.97,30,'parket',7),('Soba',6.49,31,'parket',7),('Kupatilo',4.78,32,'keramičke pločice',7),('Dnevni Boravak sa Kuhinjom',13.63,33,'parket, keramičke pločice',8),('Soba',8.65,34,'parket',8),('Hodnik',4.57,35,'keramičke pločice',8),('Kupatilo',4.42,36,'keramičke pločice',8),('Terasa',3.48,37,'keramičke pločice',8),('Dnevni Boravak sa Kuhinjom',18.02,38,'parket, keramičke pločice',9),('Soba',10.32,39,'parket',9),('Kupatilo',5.08,40,'keramičke pločice',9),('Terasa',3.90,41,'keramičke pločice',9),('Dnevni Boravak sa Kuhinjom',13.63,42,'parket, keramičke pločice',10),('Soba',8.65,43,'parket',10),('Hodnik',4.57,44,'keramičke pločice',10),('Kupatilo',4.42,45,'keramičke pločice',10),('Terasa',3.48,46,'keramičke pločice',10),('Dnevni Boravak sa Kuhinjom',29.76,47,'parket, keramičke pločice',11),('Soba',8.97,48,'parket',11),('Soba',6.49,49,'parket',11),('Kupatilo',4.78,50,'keramičke pločice',11),('Terasa',4.00,51,'keramičke pločice',11),('Dnevni Boravak sa Kuhinjom',14.59,52,'parket, keramičke pločice',12),('Soba',9.13,53,'parket',12),('Hodnik',3.92,54,'keramičke pločice',12),('Kupatilo',4.71,55,'keramičke pločice',12),('Terasa',3.81,56,'keramičke pločice',12),('Dnevni Boravak sa Kuhinjom',14.59,57,'parket, keramičke pločice',13),('Soba',9.13,58,'keramičke pločice',13),('Hodnik',3.92,59,'keramičke pločice',13),('Kupatilo',4.71,60,'keramičke pločice',13),('Terasa',3.81,61,'keramičke pločice',13),('Dnevni Boravak sa Kuhinjom',29.76,62,'parket, keramičke pločice',14),('Soba',8.97,63,'parket',14),('Soba',6.49,64,'parket',14),('Kupatilo',4.78,65,'keramičke pločice',14),('Terasa',4.00,66,'keramičke pločice',14),('Dnevni Boravak sa Kuhinjom',26.63,67,'parket, keramičke pločice',15),('Soba',8.65,68,'parket',15),('Kupatilo',4.22,69,'keramičke pločice',15),('Terasa',4.38,70,'keramičke pločice',15),('Dnevni Boravak sa Kuhinjom',26.63,71,'parket, keramičke pločice',16),('Soba',8.65,72,'parket',16),('Kupatilo',4.22,73,'keramičke pločice',16),('Terasa',4.38,74,'keramičke pločice',16),('Dnevni Boravak sa Kuhinjom',29.76,75,'parket, keramičke pločice',17),('Soba',8.97,76,'parket',17),('Soba',6.49,77,'parket',17),('Kupatilo',4.78,78,'keramičke pločice',17),('Terasa',4.00,79,'keramičke pločice',17),('Dnevni Boravak sa Kuhinjom',14.59,80,'parket, keramičke pločice',18),('Soba',9.13,81,'parket',18),('Hodnik',3.92,82,'keramičke pločice',18),('Kupatilo',4.71,83,'keramičke pločice',18),('Terasa',3.81,84,'keramičke pločice',18),('Dnevni Boravak sa Kuhinjom',14.59,85,'parket, keramičke pločice',19),('Soba',9.13,86,'parket',19),('Hodnik',3.92,87,'keramičke pločice',19),('Kupatilo',4.71,88,'keramičke pločice',19),('Terasa',3.81,89,'keramičke pločice',19),('Dnevni Boravak sa Kuhinjom',26.63,90,'parket, keramičke pločice',20),('Soba',8.65,91,'parket',20),('Kupatilo',4.22,92,'keramičke pločice',20),('Terasa',4.38,93,'keramičke pločice',20),('Dnevni Boravak sa Kuhinjom',26.63,94,'parket, keramičke pločice',21),('Soba',8.65,95,'parket',21),('Kupatilo',4.22,96,'keramičke pločice',21),('Terasa',4.38,97,'keramičke pločice',21),('Dnevni Boravak sa Kuhinjom',14.59,98,'parket, keramičke pločice',22),('Soba',9.13,99,'parket',22),('Hodnik',3.92,100,'keramičke pločice',22),('Kupatilo',4.71,101,'keramičke pločice',22),('Terasa',3.81,102,'keramičke pločice',22),('Dnevni Boravak sa Kuhinjom',29.76,103,'parket, keramičke pločice',23),('Soba',8.97,104,'parket',23),('Soba',6.49,105,'parket',23),('Kupatilo',4.78,106,'keramičke pločice',23),('Terasa',4.00,107,'keramičke pločice',23),('Dnevni Boravak sa Kuhinjom',29.76,108,'parket, keramičke pločice',24),('Soba',8.97,109,'parket',24),('Soba',6.49,110,'parket',24),('Kupatilo',4.78,111,'keramičke pločice',24),('Terasa',4.00,112,'keramičke pločice',24),('Dnevni Boravak sa Kuhinjom',14.59,113,'parket, keramičke pločice',25),('Soba',9.13,114,'parket',25),('Hodnik',3.92,115,'keramičke pločice',25),('Kupatilo',4.71,116,'keramičke pločice',25),('Terasa',3.81,117,'keramičke pločice',25),('Dnevni Boravak sa Kuhinjom',26.63,118,'parket, keramičke pločice',26),('Soba',8.65,119,'parket',26),('Kupatilo',4.22,120,'keramičke pločice',26),('Terasa',4.38,121,'keramičke pločice',26),('Dnevni Boravak sa Kuhinjom',26.63,122,'parket, keramičke pločice',27),('Soba',8.65,123,'parket',27),('Kupatilo',4.22,124,'keramičke pločice',27),('Terasa',4.38,125,'keramičke pločice',27),('Dnevni Boravak sa Kuhinjom',14.59,126,'parket, keramičke pločice',28),('Soba',9.13,127,'parket',28),('Hodnik',3.92,128,'keramičke pločice',28),('Kupatilo',4.71,129,'keramičke pločice',28),('Terasa',3.81,130,'keramičke pločice',28),('Dnevni Boravak sa Kuhinjom',32.48,131,'parket, keramičke pločice',29),('Soba',8.46,132,'parket',29),('Soba-sprat',10.28,133,'parket',29),('Kupatilo',4.92,134,'keramičke pločice',29),('Terasa',3.88,135,'keramičke pločice',29),('Unutrašnje stepenice',2.23,136,'drvo-metal',29),('Dnevni Boravak sa Kuhinjom',32.48,137,'parket, keramičke pločice',30),('Soba',8.46,138,'parket',30),('Soba-sprat',10.28,139,'parket',30),('Kupatilo',4.92,140,'keramičke pločice',30),('Terasa',3.88,141,'keramičke pločice',30),('Unutrašnje stepenice',2.23,142,'drvo-metal',30),('Dnevni Boravak sa Kuhinjom',18.94,143,'parket, keramičke pločice',31),('Soba',10.40,144,'parket',31),('Kupatilo',4.55,145,'keramičke pločice',31),('Terasa',4.47,146,'keramičke pločice',31),('Hodnik',3.23,147,'parket',31),('Dnevni Boravak sa Kuhinjom',22.13,148,'parket, keramičke pločice',32),('Soba',12.29,149,'parket',32),('Kupatilo',6.46,150,'keramičke pločice',32),('Terasa',4.77,151,'keramičke pločice',32),('Dnevni Boravak sa Kuhinjom',22.13,152,'parket, keramičke pločice',33),('Soba',12.29,153,'parket',33),('Kupatilo',6.46,154,'keramičke pločice',33),('Terasa',4.77,155,'keramičke pločice',33),('Dnevni Boravak sa Kuhinjom',18.94,156,'parket, keramičke pločice',34),('Soba',10.40,157,'parket',34),('Kupatilo',4.55,158,'keramičke pločice',34),('Terasa',4.47,159,'keramičke pločice',34),('Hodnik',3.23,160,'parket',34),('Dnevni Boravak sa Kuhinjom',22.17,161,'parket, keramičke pločice',35),('Soba',5.27,162,'parket',35),('Soba',12.66,163,'parket',35),('Kupatilo',5.10,164,'keramičke pločice',35),('Terasa',4.12,165,'keramičke pločice',35),('Terasa',4.38,166,'keramičke pločice',35),('Terasa',4.54,167,'keramičke pločice',35),('Garderoba',3.55,168,'parket',35),('Dnevni Boravak sa Kuhinjom',22.17,169,'parket, keramičke pločice',36),('Soba',5.27,170,'parket',36),('Soba',12.66,171,'parket',36),('Kupatilo',5.10,172,'keramičke pločice',36),('Terasa',4.12,173,'keramičke pločice',36),('Terasa',4.38,174,'keramičke pločice',36),('Terasa',4.54,175,'keramičke pločice',36),('Garderoba',3.55,176,'parket',36),('Predsoblje',3.78,177,'parket',55),('Dnevna soba, Trpezarija',14.66,178,'parket',55),('Kuhinja',2.71,179,'keramičke pločice',55),('Kupatilo',3.86,180,'keramičke pločice',55),('Spavaća soba',9.41,181,'parket',55),('Terasa',3.84,182,'keramičke pločice',55),('Predsoblje',3.84,183,'parket',56),('Dnevna soba, Trpezarija',15.79,184,'parket',56),('Kuhinja',3.30,185,'keramičke pločice',56),('Kupatilo',4.32,186,'keramičke pločice',56),('Spavaća soba',11.06,187,'parket',56),('Spavaća soba',9.45,188,'parket',56),('Terasa',3.61,189,'keramičke pločice',56),('Terasa',4.06,190,'keramičke pločice',56),('Predsoblje',4.03,191,'parket',57),('Dnevna soba, Trpezarija',15.81,192,'parket',57),('Kuhinja',3.40,193,'keramičke pločice',57),('Kupatilo',4.16,194,'keramičke pločice',57),('Spavaća soba',11.86,195,'parket',57),('Spavaća soba',9.52,196,'parket',57),('Terasa',4.45,197,'keramičke pločice',57),('Terasa',4.06,198,'keramičke pločice',57),('Predsoblje',3.84,199,'parket',58),('Dnevna soba, Trpezarija',15.79,200,'parket',58),('Kuhinja',3.30,201,'keramičke pločice',58),('Kupatilo',4.42,202,'keramičke pločice',58),('Spavaća soba',9.69,203,'parket',58),('Terasa',4.17,204,'keramičke pločice',58),('Predsoblje',4.09,205,'parket',59),('Dnevna soba, Trpezarija',13.92,206,'parket',59),('Kuhinja',2.73,207,'keramičke pločice',59),('Kupatilo',4.47,208,'keramičke pločice',59),('Spavaća soba',9.99,209,'parket',59),('Terasa',3.68,210,'keramičke pločice',59),('Predsoblje',3.99,211,'parket',60),('Dnevna soba, Trpezarija',19.83,212,'parket',60),('Kuhinja',4.06,213,'keramičke pločice',60),('Kupatilo',6.40,214,'keramičke pločice',60),('Spavaća soba',9.09,215,'parket',60),('Terasa',4.17,216,'keramičke pločice',60),('Predsoblje',3.78,217,'parket',61),('Dnevna soba, Trpezarija',14.66,218,'parket',61),('Kuhinja',2.71,219,'keramičke pločice',61),('Kupatilo',3.68,220,'keramičke pločice',61),('Spavaća soba',9.41,221,'parket',61),('Terasa',3.84,222,'keramičke pločice',61),('Predsoblje',3.72,223,'parket',62),('Dnevna soba, Trpezarija',15.49,224,'parket',62),('Kuhinja',2.63,225,'keramičke pločice',62),('Kupatilo',3.58,226,'keramičke pločice',62),('Spavaća soba',9.38,227,'parket',62),('Terasa',4.33,228,'keramičke pločice',62),('Predsoblje',3.84,229,'parket',63),('Dnevna soba, Trpezarija',15.79,230,'parket',63),('Kuhinja',3.30,231,'keramičke pločice',63),('Kupatilo',4.42,232,'keramičke pločice',63),('Spavaća soba',9.69,233,'parket',63),('Terasa',4.17,234,'keramičke pločice',63),('Predsoblje',4.09,235,'parket',64),('Dnevna soba, Trpezarija',13.92,236,'parket',64),('Kuhinja',2.73,237,'keramičke pločice',64),('Kupatilo',4.47,238,'keramičke pločice',64),('Spavaća soba',9.99,239,'parket',64),('Terasa',3.68,240,'keramičke pločice',64),('Predsoblje',3.99,241,'parket',65),('Dnevna soba, Trpezarija',19.83,242,'parket',65),('Kuhinja',4.06,243,'keramičke pločice',65),('Kupatilo',6.40,244,'keramičke pločice',65),('Spavaća soba',9.09,245,'parket',65),('Terasa',4.17,246,'keramičke pločice',65),('Predsoblje',3.78,247,'parket',66),('Dnevna soba, Trpezarija',14.66,248,'parket',66),('Kuhinja',2.71,249,'keramičke pločice',66),('Kupatilo',3.86,250,'keramičke pločice',66),('Spavaća soba',9.41,251,'parket',66),('Terasa',3.84,252,'keramičke pločice',66),('Predsoblje',3.72,253,'parket',67),('Dnevna soba, Trpezarija',15.49,254,'parket',67),('Kuhinja',2.63,255,'keramičke pločice',67),('Kupatilo',3.58,256,'keramičke pločice',67),('Spavaća soba',9.38,257,'parket',67),('Terasa',4.33,258,'keramičke pločice',67),('Predsoblje',3.84,259,'parket',68),('Dnevna soba, Trpezarija',15.79,260,'parket',68),('Kuhinja',3.30,261,'keramičke pločice',68),('Kupatilo',4.42,262,'keramičke pločice',68),('Spavaća soba',9.69,263,'parket',68),('Terasa',4.17,264,'keramičke pločice',68),('Predsoblje',4.09,265,'parket',69),('Dnevna soba, Trpezarija',13.92,266,'parket',69),('Kuhinja',2.73,267,'keramičke pločice',69),('Kupatilo',4.47,268,'keramičke pločice',69),('Spavaća soba',9.99,269,'parket',69),('Terasa',3.68,270,'keramičke pločice',69),('Predsoblje',3.99,271,'parket',70),('Dnevna soba, Trpezarija',19.83,272,'parket',70),('Kuhinja',4.06,273,'keramičke pločice',70),('Kupatilo',6.40,274,'keramičke pločice',70),('Spavaća soba',9.09,275,'parket',70),('Terasa',4.17,276,'keramičke pločice',70),('Predsoblje',3.78,277,'parket',71),('Dnevna soba, Trpezarija',14.66,278,'parket',71),('Kuhinja',2.71,279,'keramičke pločice',71),('Kupatilo',3.86,280,'keramičke pločice',71),('Spavaća soba',9.41,281,'parket',71),('Terasa',3.84,282,'keramičke pločice',71),('Predsoblje',3.72,283,'parket',72),('Dnevna soba, Trpezarija',15.49,284,'parket',72),('Kuhinja',2.63,285,'keramičke pločice',72),('Kupatilo',3.58,286,'keramičke pločice',72),('Spavaća soba',9.38,287,'parket',72),('Terasa',4.33,288,'keramičke pločice',72),('Predsoblje',3.84,289,'parket',73),('Dnevna soba, Trpezarija',15.79,290,'parket',73),('Kuhinja',3.30,291,'keramičke pločice',73),('Kupatilo',4.42,292,'keramičke pločice',73),('Spavaća soba',9.69,293,'parket',73),('Terasa',4.17,294,'keramičke pločice',73),('Predsoblje',4.09,295,'parket',74),('Dnevna soba, Trpezarija',13.92,296,'parket',74),('Kuhinja',2.73,297,'keramičke pločice',74),('Kupatilo',4.47,298,'keramičke pločice',74),('Spavaća soba',9.99,299,'parket',74),('Terasa',3.68,300,'keramičke pločice',74),('Predsoblje',3.99,301,'parket',75),('Dnevna soba, Trpezarija',19.83,302,'parket',75),('Kuhinja',4.06,303,'keramičke pločice',75),('Kupatilo',6.40,304,'keramičke pločice',75),('Spavaća soba',9.09,305,'parket',75),('Terasa',4.17,306,'keramičke pločice',75),('Predsoblje',3.78,307,'parket',76),('Dnevna soba, Trpezarija',14.66,308,'parket',76),('Kuhinja',2.71,309,'keramičke pločice',76),('Kupatilo',3.86,310,'keramičke pločice',76),('Spavaća soba',9.41,311,'parket',76),('Terasa',3.84,312,'keramičke pločice',76),('Predsoblje',3.72,313,'parket',77),('Dnevna soba, Trpezarija',15.49,314,'parket',77),('Kuhinja',2.63,315,'keramičke pločice',77),('Kupatilo',3.58,316,'keramičke pločice',77),('Spavaća soba',9.38,317,'parket',77),('Terasa',4.33,318,'keramičke pločice',77),('Predsoblje',3.84,319,'parket',78),('Dnevna soba, Trpezarija',15.79,320,'parket',78),('Kuhinja',3.30,321,'keramičke pločice',78),('Kupatilo',4.42,322,'keramičke pločice',78),('Spavaća soba',9.69,323,'parket',78),('Terasa',4.17,324,'keramičke pločice',78),('Predsoblje',4.09,325,'parket',79),('Dnevna soba, Trpezarija',13.92,326,'parket',79),('Kuhinja',2.73,327,'keramičke pločice',79),('Kupatilo',4.47,328,'keramičke pločice',79),('Spavaća soba',9.99,329,'parket',79),('Terasa',3.68,330,'keramičke pločice',79),('Predsoblje',3.99,331,'parket',80),('Dnevna soba, Trpezarija',19.83,332,'parket',80),('Kuhinja',4.06,333,'keramičke pločice',80),('Kupatilo',6.40,334,'keramičke pločice',80),('Spavaća soba',9.09,335,'parket',80),('Terasa',4.17,336,'keramičke pločice',80),('Predsoblje',3.78,337,'parket',81),('Dnevna soba, Trpezarija',14.66,338,'parket',81),('Kuhinja',2.71,339,'keramičke pločice',81),('Kupatilo',3.86,340,'keramičke pločice',81),('Spavaća soba',9.41,341,'parket',81),('Terasa',3.84,342,'keramičke pločice',81);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-26 21:55:41
