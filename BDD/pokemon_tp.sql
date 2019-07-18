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
  `scream` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attack_id`)
) ENGINE=InnoDB AUTO_INCREMENT=622 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attack`
--

LOCK TABLES `attack` WRITE;
/*!40000 ALTER TABLE `attack` DISABLE KEYS */;
INSERT INTO `attack` VALUES (2,'karate-chop',25,100,NULL),(3,'double-slap',10,85,NULL),(4,'comet-punch',15,85,NULL),(5,'mega-punch',20,85,NULL),(6,'pay-day',20,100,NULL),(7,'fire-punch',15,100,NULL),(8,'ice-punch',15,100,NULL),(9,'thunder-punch',15,100,NULL),(10,'scratch',35,100,NULL),(11,'vice-grip',30,100,NULL),(12,'guillotine',5,30,NULL),(13,'razor-wind',10,100,NULL),(14,'swords-dance',20,30,NULL),(15,'cut',30,95,NULL);
/*!40000 ALTER TABLE `attack` ENABLE KEYS */;
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
  `evolution` int(11) DEFAULT NULL,
  `urlImage` varchar(255) NOT NULL,
  `fk_attack_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pok_id`)
) ENGINE=InnoDB AUTO_INCREMENT=724 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'bulbasaur',NULL,'',NULL),(2,'ivysaur',3,'',NULL),(3,'venusaur',NULL,'',NULL),(4,'charmander',NULL,'',NULL),(5,'charmeleon',NULL,'',NULL),(6,'charizard',NULL,'',NULL),(7,'squirtle',NULL,'',NULL),(8,'wartortle',NULL,'',NULL),(9,'blastoise',NULL,'',NULL),(10,'caterpie',NULL,'',NULL),(11,'metapod',NULL,'',NULL),(12,'butterfree',NULL,'',NULL),(13,'weedle',NULL,'',NULL),(14,'kakuna',NULL,'',NULL),(15,'beedrill',NULL,'',NULL),(16,'pidgey',NULL,'',NULL),(17,'pidgeotto',NULL,'',NULL),(18,'pidgeot',NULL,'',NULL),(19,'rattata',NULL,'',NULL),(20,'raticate',NULL,'',NULL),(21,'spearow',NULL,'',NULL),(22,'fearow',NULL,'',NULL),(23,'ekans',NULL,'',NULL),(24,'arbok',NULL,'',NULL),(25,'pikachu',NULL,'',NULL),(26,'raichu',NULL,'',NULL),(27,'sandshrew',NULL,'',NULL),(28,'sandslash',NULL,'',NULL),(29,'nidoran-f',NULL,'',NULL),(30,'nidorina',NULL,'',NULL),(31,'nidoqueen',NULL,'',NULL),(32,'nidoran-m',NULL,'',NULL),(33,'nidorino',NULL,'',NULL),(34,'nidoking',NULL,'',NULL),(35,'clefairy',NULL,'',NULL),(36,'clefable',NULL,'',NULL),(37,'vulpix',NULL,'',NULL),(38,'ninetales',NULL,'',NULL),(39,'jigglypuff',NULL,'',NULL),(40,'wigglytuff',NULL,'',NULL),(41,'zubat',NULL,'',NULL),(42,'golbat',NULL,'',NULL),(43,'oddish',NULL,'',NULL),(44,'gloom',NULL,'',NULL),(45,'vileplume',NULL,'',NULL),(46,'paras',NULL,'',NULL),(47,'parasect',NULL,'',NULL),(48,'venonat',NULL,'',NULL),(49,'venomoth',NULL,'',NULL),(50,'diglett',NULL,'',NULL);
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
  `fk_id_pok` int(11) DEFAULT NULL,
  `xp_pok` int(11) DEFAULT NULL,
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

-- Dump completed on 2019-07-18 16:05:26
