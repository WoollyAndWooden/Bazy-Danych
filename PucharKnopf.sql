-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: knopfd
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DecyzjeSedziow`
--

DROP TABLE IF EXISTS `DecyzjeSedziow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DecyzjeSedziow` (
  `DecyzjaId` int NOT NULL AUTO_INCREMENT,
  `Sedzia1` int DEFAULT NULL,
  `Sedzia2` int DEFAULT NULL,
  `Sedzia3` int DEFAULT NULL,
  `Sedzia4` int DEFAULT NULL,
  `Sedzia5` int DEFAULT NULL,
  `PrzyznanePunkty` float DEFAULT NULL,
  PRIMARY KEY (`DecyzjaId`),
  KEY `Sedzia1_idx` (`Sedzia1`),
  KEY `Sedzia2_idx` (`Sedzia2`),
  KEY `Sedzia3_idx` (`Sedzia3`),
  KEY `Sedzia4_idx` (`Sedzia4`),
  KEY `Sedzia5_idx` (`Sedzia5`),
  CONSTRAINT `Sedzia1` FOREIGN KEY (`Sedzia1`) REFERENCES `Sędziowie` (`SędziaId`),
  CONSTRAINT `Sedzia2` FOREIGN KEY (`Sedzia2`) REFERENCES `Sędziowie` (`SędziaId`),
  CONSTRAINT `Sedzia3` FOREIGN KEY (`Sedzia3`) REFERENCES `Sędziowie` (`SędziaId`),
  CONSTRAINT `Sedzia4` FOREIGN KEY (`Sedzia4`) REFERENCES `Sędziowie` (`SędziaId`),
  CONSTRAINT `Sedzia5` FOREIGN KEY (`Sedzia5`) REFERENCES `Sędziowie` (`SędziaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DecyzjeSedziow`
--

LOCK TABLES `DecyzjeSedziow` WRITE;
/*!40000 ALTER TABLE `DecyzjeSedziow` DISABLE KEYS */;
INSERT INTO `DecyzjeSedziow` VALUES (1,1,2,3,4,5,18.5),(2,2,3,4,5,1,17),(3,1,2,3,4,5,19),(4,1,2,3,4,5,19.5);
/*!40000 ALTER TABLE `DecyzjeSedziow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Konkursy`
--

DROP TABLE IF EXISTS `Konkursy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Konkursy` (
  `KonkursId` int NOT NULL AUTO_INCREMENT,
  `DataKonkursu` date DEFAULT NULL,
  `Skocznia` int NOT NULL,
  `Turniej` int DEFAULT NULL,
  PRIMARY KEY (`KonkursId`),
  KEY `Turniej_idx` (`Turniej`),
  CONSTRAINT `Turniej` FOREIGN KEY (`Turniej`) REFERENCES `Turnieje` (`TurniejId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Konkursy`
--

LOCK TABLES `Konkursy` WRITE;
/*!40000 ALTER TABLE `Konkursy` DISABLE KEYS */;
INSERT INTO `Konkursy` VALUES (1,'2020-12-22',1,1),(2,'2020-01-03',2,1);
/*!40000 ALTER TABLE `Konkursy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reprezentacje`
--

DROP TABLE IF EXISTS `Reprezentacje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reprezentacje` (
  `Reprezentacja` varchar(5) NOT NULL,
  `Kraj` varchar(45) DEFAULT NULL,
  `PunktyPucharuNarodow` int DEFAULT NULL,
  PRIMARY KEY (`Reprezentacja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reprezentacje`
--

LOCK TABLES `Reprezentacje` WRITE;
/*!40000 ALTER TABLE `Reprezentacje` DISABLE KEYS */;
INSERT INTO `Reprezentacje` VALUES ('CZE','Czechy',NULL),('PL','Polska',NULL),('RU','Rosja',NULL);
/*!40000 ALTER TABLE `Reprezentacje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skocznie`
--

DROP TABLE IF EXISTS `Skocznie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Skocznie` (
  `SkoczniaId` int NOT NULL AUTO_INCREMENT,
  `NazwaSkoczni` varchar(45) DEFAULT NULL,
  `Kraj` varchar(45) DEFAULT NULL,
  `Miejscowość` varchar(45) DEFAULT NULL,
  `Ulica` varchar(45) DEFAULT NULL,
  `NrUlicy` varchar(45) DEFAULT NULL,
  `HS` int NOT NULL,
  `K` int NOT NULL,
  `Przelicznik` float DEFAULT NULL,
  PRIMARY KEY (`SkoczniaId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skocznie`
--

LOCK TABLES `Skocznie` WRITE;
/*!40000 ALTER TABLE `Skocznie` DISABLE KEYS */;
INSERT INTO `Skocznie` VALUES (1,'Schattenbergschanze','Niemcy','Oberstdorf','Niemiecka','15',137,120,1.8),(2,'Große Olympiaschanze','Niemcy','Garmisch','Dwuniemiecka','30',142,125,1.8);
/*!40000 ALTER TABLE `Skocznie` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`knopfd`@`localhost`*/ /*!50003 TRIGGER `PrzelicznikBeforeInsert` BEFORE INSERT ON `Skocznie` FOR EACH ROW begin
	call PrzeliczPunkty(NEW.K, @PrzelicznikPunktow);
    set NEW.Przelicznik = @PrzelicznikPunktow;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`knopfd`@`localhost`*/ /*!50003 TRIGGER `PrzelicznikBeforeUpdate` BEFORE UPDATE ON `Skocznie` FOR EACH ROW begin
	call PrzeliczPunkty(NEW.K, @PrzelicznikPunktow);
    set NEW.Przelicznik = @PrzelicznikPunktow;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Skoki`
--

DROP TABLE IF EXISTS `Skoki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Skoki` (
  `SkokId` int NOT NULL AUTO_INCREMENT,
  `Skoczek` int NOT NULL,
  `Konkurs` int NOT NULL,
  `Seria` enum('I','II') NOT NULL,
  `Odleglosc` float DEFAULT NULL,
  `DecyzjaSedziow` int NOT NULL,
  `Punkty` float DEFAULT NULL,
  PRIMARY KEY (`SkokId`),
  UNIQUE KEY `DecyzjaSedziow_UNIQUE` (`DecyzjaSedziow`),
  KEY `Konkurs_idx` (`Konkurs`),
  KEY `DecyzjaSedziow_idx` (`DecyzjaSedziow`),
  KEY `Skoczek_idx` (`Skoczek`),
  CONSTRAINT `DecyzjaSedziow` FOREIGN KEY (`DecyzjaSedziow`) REFERENCES `DecyzjeSedziow` (`DecyzjaId`),
  CONSTRAINT `Konkurs` FOREIGN KEY (`Konkurs`) REFERENCES `Konkursy` (`KonkursId`),
  CONSTRAINT `Skoczek` FOREIGN KEY (`Skoczek`) REFERENCES `Zawodnicy` (`ZawodnikId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skoki`
--

LOCK TABLES `Skoki` WRITE;
/*!40000 ALTER TABLE `Skoki` DISABLE KEYS */;
INSERT INTO `Skoki` VALUES (1,1,1,'I',141,1,116.3),(2,1,1,'II',140,2,104);
/*!40000 ALTER TABLE `Skoki` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`knopfd`@`localhost`*/ /*!50003 TRIGGER `PrzyznajPunktyBeforeInsert` BEFORE INSERT ON `Skoki` FOR EACH ROW begin
	call PunktyZaSkok(NEW.SkokId, @p);
	set NEW.Punkty = round(@p, 2);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`knopfd`@`localhost`*/ /*!50003 TRIGGER `PrzyznajPunktyBeforeUpdate` BEFORE UPDATE ON `Skoki` FOR EACH ROW begin
	call PunktyZaSkok(NEW.SkokId, @p);
	set NEW.Punkty = round(@p, 2);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `Sędziowie`
--

DROP TABLE IF EXISTS `Sędziowie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sędziowie` (
  `SędziaId` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(45) DEFAULT NULL,
  `Nazwisko` varchar(45) DEFAULT NULL,
  `Wiek` int DEFAULT NULL,
  `NrTelefonu` varchar(45) DEFAULT NULL,
  `MiastoZamieszkania` varchar(45) DEFAULT NULL,
  `Ulica` varchar(45) DEFAULT NULL,
  `NrUlicy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SędziaId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sędziowie`
--

LOCK TABLES `Sędziowie` WRITE;
/*!40000 ALTER TABLE `Sędziowie` DISABLE KEYS */;
INSERT INTO `Sędziowie` VALUES (1,'Andzej','Duda',40,'111111111','Warszawa','Belweder','30'),(2,'Andrju','Djudja',40,'222222222','Kijów','Kijowska','10'),(3,'Zdzisiek','Maślany',40,'333333333','Masłowo','Masłowska','20'),(4,'Krychu','Krychowiak',30,'444444444','Krychkowsko','Krychkowa','50'),(5,'Wiesiek','Miastowy',32,'555555555','Miastowsko','Miastowa','2');
/*!40000 ALTER TABLE `Sędziowie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trenerzy`
--

DROP TABLE IF EXISTS `Trenerzy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trenerzy` (
  `TrenerId` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(45) DEFAULT NULL,
  `Nazwisko` varchar(45) DEFAULT NULL,
  `Wiek` int DEFAULT NULL,
  `NrTelefonu` varchar(45) DEFAULT NULL,
  `MiastoZamieszkania` varchar(45) DEFAULT NULL,
  `Ulica` varchar(45) DEFAULT NULL,
  `NrUlicy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`TrenerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trenerzy`
--

LOCK TABLES `Trenerzy` WRITE;
/*!40000 ALTER TABLE `Trenerzy` DISABLE KEYS */;
INSERT INTO `Trenerzy` VALUES (1,'Trener','Trenerowski',30,'513245145','Trenerowo','Skokowa','5'),(2,'Trienerieczek','Trieneriowunio',20,'5432145623','Trienowo','Skakajowa','10');
/*!40000 ALTER TABLE `Trenerzy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Turnieje`
--

DROP TABLE IF EXISTS `Turnieje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Turnieje` (
  `TurniejId` int NOT NULL AUTO_INCREMENT,
  `NazwaTurnieju` varchar(45) DEFAULT NULL,
  `DataPoczatek` date DEFAULT NULL,
  `DataKoniec` date DEFAULT NULL,
  PRIMARY KEY (`TurniejId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Turnieje`
--

LOCK TABLES `Turnieje` WRITE;
/*!40000 ALTER TABLE `Turnieje` DISABLE KEYS */;
INSERT INTO `Turnieje` VALUES (1,'Turniej Czterech Skoczni','2020-12-20','2021-01-06');
/*!40000 ALTER TABLE `Turnieje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `WynikPucharuNarodow`
--

DROP TABLE IF EXISTS `WynikPucharuNarodow`;
/*!50001 DROP VIEW IF EXISTS `WynikPucharuNarodow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `WynikPucharuNarodow` AS SELECT 
 1 AS `Kraj`,
 1 AS `Miejsce`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `WynikiPucharuSwiata`
--

DROP TABLE IF EXISTS `WynikiPucharuSwiata`;
/*!50001 DROP VIEW IF EXISTS `WynikiPucharuSwiata`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `WynikiPucharuSwiata` AS SELECT 
 1 AS `Zawodnik`,
 1 AS `ZdobytePunkty`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Zawodnicy`
--

DROP TABLE IF EXISTS `Zawodnicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zawodnicy` (
  `ZawodnikId` int NOT NULL AUTO_INCREMENT,
  `Imie` varchar(45) DEFAULT NULL,
  `Nazwisko` varchar(45) DEFAULT NULL,
  `Wiek` int DEFAULT NULL,
  `NrTelefonu` varchar(45) DEFAULT NULL,
  `MiastoZamieszkania` varchar(45) DEFAULT NULL,
  `Ulica` varchar(45) DEFAULT NULL,
  `NrUlicy` varchar(45) DEFAULT NULL,
  `ReprezentujeKraj` varchar(5) NOT NULL,
  `Trener` int DEFAULT NULL,
  `PunktyPucharu` int DEFAULT NULL,
  PRIMARY KEY (`ZawodnikId`),
  KEY `Trener_idx` (`Trener`),
  KEY `Reprezentacja_idx` (`ReprezentujeKraj`),
  CONSTRAINT `Reprezentacja` FOREIGN KEY (`ReprezentujeKraj`) REFERENCES `Reprezentacje` (`Reprezentacja`),
  CONSTRAINT `Trener` FOREIGN KEY (`Trener`) REFERENCES `Trenerzy` (`TrenerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zawodnicy`
--

LOCK TABLES `Zawodnicy` WRITE;
/*!40000 ALTER TABLE `Zawodnicy` DISABLE KEYS */;
INSERT INTO `Zawodnicy` VALUES (1,'Piotr','Żyła',40,'432536745','Warszawa','Radość','22','PL',1,NULL),(2,'Damian','Prevc',13,'5342673445','Praga','Warszawska','42','CZE',2,NULL);
/*!40000 ALTER TABLE `Zawodnicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'knopfd'
--
/*!50003 DROP FUNCTION IF EXISTS `PunktyWKonkursie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`knopfd`@`localhost` FUNCTION `PunktyWKonkursie`(IdSkoczka int, IdKonkursu int) RETURNS float
begin
	declare PunktySkoczka float;
    select round(sum(Punkty), 2) into @PunktySkoczka
    from Skoki
	where Skoczek = IdSkoczka and Konkurs = IdKonkursu;
    return @PunktySkoczka;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PrzeliczPunkty` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`knopfd`@`localhost` PROCEDURE `PrzeliczPunkty`(in PunktK int, out PrzelicznikPunktow float)
begin
	if PunktK between 20 and 24
		then set PrzelicznikPunktow = 4.8;
    
    elseif PunktK between 25 and 29
		then set PrzelicznikPunktow = 4.4;
    
    elseif PunktK between 30 and 34
		then set PrzelicznikPunktow = 4;
    
    elseif PunktK between 35 and 39
		then set PrzelicznikPunktow = 3.6;
    
    elseif PunktK between 40 and 49
		then set PrzelicznikPunktow = 3.2;
    
    elseif PunktK between 50 and 59
		then set PrzelicznikPunktow = 2.8;
    
    elseif PunktK between 60 and 69
		then set PrzelicznikPunktow = 2.4;
    
    elseif PunktK between 70 and 79
		then set PrzelicznikPunktow = 2.2;
    
    elseif PunktK between 80 and 99
		then set PrzelicznikPunktow = 2;
    
    elseif PunktK between 100 and 169
		then set PrzelicznikPunktow = 1.8;
    
    else
		set PrzelicznikPunktow = 1.2;
	
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PunktyZaSkok` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`knopfd`@`localhost` PROCEDURE `PunktyZaSkok`(in Id int, out PunktySkoczka float)
begin
	select 60 + (Skok.Odleglosc - Punkt.K) * Punkt.Przelicznik + Nota.PrzyznanePunkty as Punkty
    into PunktySkoczka
	from Skoki as Skok
		inner join Konkursy on Skok.Konkurs = Konkursy.KonkursId
			inner join Skocznie as Punkt on Konkursy.Skocznia = Punkt.SkoczniaId
		inner join DecyzjeSedziow as Nota on Skok.DecyzjaSedziow = Nota.DecyzjaId
	where Skok.SkokId = Id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `WynikPucharuNarodow`
--

/*!50001 DROP VIEW IF EXISTS `WynikPucharuNarodow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`knopfd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `WynikPucharuNarodow` AS select `Reprezentacje`.`Kraj` AS `Kraj`,`Reprezentacje`.`PunktyPucharuNarodow` AS `Miejsce` from `Reprezentacje` order by `Reprezentacje`.`PunktyPucharuNarodow` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `WynikiPucharuSwiata`
--

/*!50001 DROP VIEW IF EXISTS `WynikiPucharuSwiata`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`knopfd`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `WynikiPucharuSwiata` AS select concat(`Zawodnicy`.`Imie`,' ',`Zawodnicy`.`Nazwisko`) AS `Zawodnik`,`Zawodnicy`.`PunktyPucharu` AS `ZdobytePunkty` from `Zawodnicy` order by `Zawodnicy`.`PunktyPucharu` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-24  0:18:54
