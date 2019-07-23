-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: pokemon_tp
-- ------------------------------------------------------
-- Server version	10.4.6-MariaDB

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
-- Table structure for table `attack`
--

DROP TABLE IF EXISTS `attack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attack` (
  `attack_id` int(11) NOT NULL AUTO_INCREMENT,
  `attack_name` varchar(79) NOT NULL,
  `damages` smallint(6) DEFAULT NULL,
  `attack_accuracy` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`attack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attack`
--

LOCK TABLES `attack` WRITE;
/*!40000 ALTER TABLE `attack` DISABLE KEYS */;
INSERT INTO `attack` VALUES (2,'karate-chop',25,100),(3,'double-slap',10,85),(4,'comet-punch',15,85),(5,'mega-punch',20,85),(6,'pay-day',20,100),(7,'fire-punch',15,100),(8,'ice-punch',15,100),(9,'thunder-punch',15,100),(10,'scratch',35,100),(11,'vice-grip',30,100),(12,'guillotine',5,30),(13,'razor-wind',10,100),(14,'swords-dance',20,30),(15,'cut',30,95);
/*!40000 ALTER TABLE `attack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_attack_pokemon`
--

DROP TABLE IF EXISTS `join_attack_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_attack_pokemon` (
  `fk_attack_id` int(11) DEFAULT NULL,
  `fk_pok_id` int(11) DEFAULT NULL,
  KEY `fk_attack_id` (`fk_attack_id`),
  KEY `fk_pok_id` (`fk_pok_id`),
  CONSTRAINT `join_attack_pokemon_ibfk_1` FOREIGN KEY (`fk_attack_id`) REFERENCES `attack` (`attack_id`),
  CONSTRAINT `join_attack_pokemon_ibfk_2` FOREIGN KEY (`fk_pok_id`) REFERENCES `pokemon` (`pok_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_attack_pokemon`
--

LOCK TABLES `join_attack_pokemon` WRITE;
/*!40000 ALTER TABLE `join_attack_pokemon` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_attack_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_users_pokemon`
--

DROP TABLE IF EXISTS `join_users_pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_users_pokemon` (
  `fk_id_user` int(11) DEFAULT NULL,
  `fk_pok_id` int(11) DEFAULT NULL,
  KEY `fk_id_user` (`fk_id_user`),
  KEY `fk_pok_id` (`fk_pok_id`),
  CONSTRAINT `join_users_pokemon_ibfk_1` FOREIGN KEY (`fk_id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `join_users_pokemon_ibfk_2` FOREIGN KEY (`fk_pok_id`) REFERENCES `pokemon` (`pok_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_users_pokemon`
--

LOCK TABLES `join_users_pokemon` WRITE;
/*!40000 ALTER TABLE `join_users_pokemon` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_users_pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `pok_id` int(11) NOT NULL AUTO_INCREMENT,
  `pok_name` varchar(79) NOT NULL,
  `pok_base_experience` int(11) DEFAULT NULL,
  `evolution` int(11) DEFAULT NULL,
  `urlimage` varchar(2083) DEFAULT NULL,
  `vie_base` int(11) NOT NULL,
  PRIMARY KEY (`pok_id`)
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'axew',64,2,NULL,0),(2,'fraxure',144,3,NULL,0),(3,'haxorus',243,NULL,NULL,0),(4,'piplup',63,5,NULL,0),(5,'prinplup',142,6,NULL,0),(6,'empoleon',239,NULL,NULL,0),(7,'lillipup',55,NULL,NULL,0),(8,'herdier',130,NULL,NULL,0),(9,'stoutland',225,NULL,NULL,0),(10,'sandile',58,NULL,NULL,0),(11,'krokorok',123,NULL,NULL,0),(12,'krookodile',234,NULL,NULL,0),(13,'shinx',53,NULL,NULL,0),(14,'luxio',127,NULL,NULL,0),(15,'luxray',235,NULL,NULL,0),(16,'tepig',62,NULL,NULL,0),(17,'pignite',146,NULL,NULL,0),(18,'emboar',238,NULL,NULL,0),(19,'cranidos',70,NULL,NULL,0),(20,'rampardos',173,NULL,NULL,0),(21,'turtwig',64,NULL,NULL,0),(22,'grotle',142,NULL,NULL,0),(23,'torterra',236,NULL,NULL,0);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-23 22:19:28
