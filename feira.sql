CREATE DATABASE  IF NOT EXISTS `placarfeira` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `placarfeira`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: placarfeira
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Temporary view structure for view `contar`
--

DROP TABLE IF EXISTS `contar`;
/*!50001 DROP VIEW IF EXISTS `contar`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contar` AS SELECT 
 1 AS `visitante`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idC` int unsigned NOT NULL AUTO_INCREMENT,
  `nomeCurso` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`idC`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Administração'),(2,'Recursos Humanos'),(3,'Contabilidade'),(4,'Finanças'),(5,'Comércio Exterior'),(6,'Marketing'),(7,'Design Gráfico'),(8,'Meio Ambiente'),(9,'Ensino Médio'),(10,'Enfermagem'),(11,'Desenvolvimento de Sistemas'),(12,'Manutenção de Computadores'),(13,'Nutrição e Dietética'),(14,'Massoterapia'),(15,'Serviços Juridicos'),(16,'Ciência de Dados'),(17,'Eventos'),(18,'Farmácia'),(19,'Gastronomia'),(20,'Informática para Internet'),(21,'Lazer'),(22,'Logística'),(23,'Multimídia'),(24,'Organização Esportiva'),(25,'Processos Fotográficos'),(26,'Produção de Áudio e Vídeo'),(27,'Qualidade'),(28,'Secretariado'),(29,'Segurança do Trabalho');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_visitante`
--

DROP TABLE IF EXISTS `curso_visitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_visitante` (
  `idC` int unsigned NOT NULL,
  `idV` int unsigned NOT NULL,
  PRIMARY KEY (`idC`,`idV`),
  KEY `Curso_has_Visitante_FKIndex1` (`idC`),
  KEY `Curso_has_Visitante_FKIndex2` (`idV`),
  CONSTRAINT `curso_visitante_ibfk_1` FOREIGN KEY (`idC`) REFERENCES `curso` (`idC`),
  CONSTRAINT `curso_visitante_ibfk_2` FOREIGN KEY (`idV`) REFERENCES `visitante` (`idV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_visitante`
--

LOCK TABLES `curso_visitante` WRITE;
/*!40000 ALTER TABLE `curso_visitante` DISABLE KEYS */;
INSERT INTO `curso_visitante` VALUES (1,4),(1,5),(1,20),(1,24),(1,27),(1,28),(1,31),(1,43),(1,52),(1,81),(2,22),(2,29),(2,33),(2,79),(3,21),(3,45),(3,77),(3,79),(3,88),(4,16),(4,31),(4,41),(5,4),(5,42),(5,46),(6,7),(6,17),(6,18),(6,21),(6,54),(6,82),(7,18),(7,30),(7,37),(7,40),(7,51),(7,65),(7,67),(7,71),(7,72),(7,74),(7,76),(7,77),(7,83),(7,84),(7,89),(8,25),(8,30),(8,50),(9,24),(9,25),(9,34),(9,35),(9,36),(9,38),(9,39),(9,43),(9,52),(9,67),(10,32),(10,48),(10,57),(10,85),(11,1),(11,2),(11,3),(11,8),(11,17),(11,19),(11,23),(11,26),(11,37),(11,43),(11,53),(11,55),(11,57),(11,65),(11,66),(11,67),(11,71),(11,72),(11,75),(11,76),(11,77),(11,78),(11,81),(11,85),(11,86),(11,87),(11,89),(11,90),(12,17),(12,19),(12,64),(12,65),(12,71),(13,7),(13,67),(13,77),(13,79),(13,80),(13,84),(14,32),(14,47),(15,7),(16,5),(16,23),(16,37),(16,63),(16,67),(16,75),(16,78),(17,61),(18,44),(19,5),(19,21),(19,25),(19,30),(19,32),(19,49),(19,67),(20,17),(20,19),(20,20),(20,56),(20,60),(20,64),(20,65),(20,70),(20,75),(20,82),(20,85),(21,71),(21,89),(25,37),(25,43),(26,65),(26,79),(26,80),(28,24);
/*!40000 ALTER TABLE `curso_visitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogo` (
  `idJ` int unsigned NOT NULL AUTO_INCREMENT,
  `idP` int unsigned NOT NULL,
  `nomeJogo` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `imgFundo` varchar(255) DEFAULT NULL,
  `tipoPont` varchar(25) DEFAULT NULL,
  `ordem` varchar(10) NOT NULL,
  PRIMARY KEY (`idJ`),
  KEY `Jogo_FKIndex1` (`idP`),
  CONSTRAINT `jogo_ibfk_1` FOREIGN KEY (`idP`) REFERENCES `plataforma` (`idP`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
INSERT INTO `jogo` VALUES (1,1,'Horizon Chase','../images/logotipos/63645aafdb221.png','../images/fundos/63645aafdb07c.png','tempo','ASC'),(3,2,'Sonic','../images/logotipos/63645b538f720.png','../images/fundos/63645b538f597.png','tempo','ASC'),(5,1,'Metal Slug','../images/logotipos/6364600e5a879.png','../images/fundos/6364600e5a54e.png','ponto','DESC'),(6,3,'Tetris','../images/logotipos/6364fee6ec908.png','../images/fundos/6364fee6ec616.png','ponto','DESC'),(7,3,'Pac-Man','../images/logotipos/6364ff4058012.png','../images/fundos/6364ff4057dea.png','ponto','DESC'),(8,1,'Tartarugas Ninjas','../images/logotipos/6365000ce8b54.png','../images/fundos/6365000ce892d.png','tempo','ASC'),(9,4,'F-Zero','../images/logotipos/6365003f82449.png','../images/fundos/6365003f82227.png','tempo','ASC'),(10,1,'Pigeons Attack','../images/logotipos/63650309e572b.png','../images/fundos/63650309e55c3.png','ponto','DESC');
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mais_jogados`
--

DROP TABLE IF EXISTS `mais_jogados`;
/*!50001 DROP VIEW IF EXISTS `mais_jogados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mais_jogados` AS SELECT 
 1 AS `nomeJogo`,
 1 AS `logo`,
 1 AS `nomePlataforma`,
 1 AS `imgPlataforma`,
 1 AS `jogadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plataforma` (
  `idP` int unsigned NOT NULL AUTO_INCREMENT,
  `nomePlataforma` varchar(20) DEFAULT NULL,
  `imgPlataforma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plataforma`
--

LOCK TABLES `plataforma` WRITE;
/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` VALUES (1,'PC','../images/plataformas/63645a7d7e5d8.png'),(2,'Mega Drive','../images/plataformas/63645b2b6a284.png'),(3,'Atari','../images/plataformas/6364fe989b57b.png'),(4,'Super Nintendo','../images/plataformas/6364feabb23d4.png');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idproduto` int NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `qtdProduto` float(9,3) DEFAULT NULL,
  `precoProduto` float(9,2) DEFAULT NULL,
  PRIMARY KEY (`idproduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado` (
  `idR` int unsigned NOT NULL AUTO_INCREMENT,
  `idJ` int unsigned NOT NULL,
  `idV` int unsigned NOT NULL,
  `ponto` int unsigned DEFAULT NULL,
  `tempo` time(3) DEFAULT NULL,
  PRIMARY KEY (`idR`),
  KEY `Resultado_FKIndex1` (`idV`),
  KEY `Resultado_FKIndex2` (`idJ`),
  CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`idV`) REFERENCES `visitante` (`idV`),
  CONSTRAINT `resultado_ibfk_2` FOREIGN KEY (`idJ`) REFERENCES `jogo` (`idJ`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
INSERT INTO `resultado` VALUES (3,8,2,NULL,'00:05:26.015'),(4,6,2,5670,NULL),(5,6,3,18355,NULL),(7,9,3,NULL,'00:02:32.007'),(8,1,8,NULL,'00:02:41.400'),(9,5,4,22225,NULL),(10,10,3,3330,NULL),(11,3,19,NULL,'00:02:41.350'),(12,6,8,2469,NULL),(13,8,16,NULL,'00:08:34.037'),(14,8,18,NULL,'00:07:59.800'),(15,7,22,18100,NULL),(16,1,23,NULL,'00:02:36.031'),(17,6,25,2869,NULL),(18,10,24,250,NULL),(19,9,8,NULL,'00:02:28.053'),(20,1,22,NULL,'00:02:24.010'),(21,8,17,NULL,'00:05:29.031'),(22,9,22,NULL,'00:02:30.048'),(23,10,8,3800,NULL),(24,6,25,3879,NULL),(25,5,19,15501,NULL),(26,6,8,15300,NULL),(27,8,22,NULL,'00:05:12.072'),(28,8,27,NULL,'00:08:00.018'),(29,3,29,NULL,'00:05:01.990'),(30,6,28,34802,NULL),(31,1,30,NULL,'00:03:28.350'),(32,10,23,2870,NULL),(33,5,8,15100,NULL),(34,6,27,5322,NULL),(35,8,28,NULL,'00:06:37.620'),(36,10,23,4820,NULL),(37,6,22,2398,NULL),(38,9,31,NULL,'00:02:27.009'),(39,7,38,14920,NULL),(40,1,22,NULL,'00:02:46.038'),(41,7,39,7070,NULL),(42,8,31,NULL,'00:06:59.370'),(44,7,39,6620,NULL),(45,8,40,NULL,'00:06:13.000'),(46,9,8,NULL,'00:02:25.085'),(48,6,38,28141,NULL),(50,3,30,NULL,'00:02:10.014'),(51,10,3,2570,NULL),(52,9,22,NULL,'00:02:19.060'),(53,7,39,479,NULL),(54,1,22,NULL,'00:02:45.061'),(55,10,3,3890,NULL),(56,7,39,13890,NULL),(57,3,31,NULL,'00:01:51.015'),(59,6,38,50797,NULL),(61,1,44,NULL,'00:03:00.000'),(62,7,39,11150,NULL),(63,1,45,NULL,'00:03:02.042'),(64,3,22,NULL,'00:02:25.510'),(65,9,8,NULL,'00:02:21.013'),(66,10,23,3130,NULL),(67,6,22,9509,NULL),(68,3,47,NULL,'00:01:44.300'),(69,10,23,6240,NULL),(70,8,8,NULL,'00:05:30.910'),(71,6,51,44937,NULL),(72,1,50,NULL,'00:03:18.038'),(73,5,39,21704,NULL),(74,10,28,1540,NULL),(76,3,52,NULL,'00:03:01.720'),(77,9,3,NULL,'00:02:21.000'),(78,3,47,NULL,'00:01:32.700'),(79,7,38,20550,NULL),(80,6,51,38744,NULL),(81,10,28,1870,NULL),(82,10,52,1400,NULL),(83,9,22,NULL,'00:02:30.018'),(84,5,54,61823,NULL),(85,8,1,NULL,'00:05:12.310'),(86,1,8,NULL,'00:02:35.000'),(87,6,28,13035,NULL),(88,6,51,28284,NULL),(89,3,3,NULL,'00:01:55.002'),(90,1,43,NULL,'00:02:40.000'),(91,6,51,32924,NULL),(92,8,52,NULL,'00:06:42.007'),(93,10,8,6520,NULL),(94,9,47,NULL,'00:02:32.050'),(95,6,28,33119,NULL),(96,9,2,NULL,'00:02:34.077'),(97,6,51,34373,NULL),(98,8,8,NULL,'00:04:40.021'),(99,3,59,NULL,'00:01:38.520'),(100,5,2,17601,NULL),(101,8,57,NULL,'00:05:46.000'),(102,6,55,62469,NULL),(103,6,43,6139,NULL),(104,5,59,146863,NULL),(105,1,59,NULL,'00:02:24.660'),(106,9,59,NULL,'00:02:22.007'),(107,6,2,10559,NULL),(108,6,2,11137,NULL),(109,6,59,87372,NULL),(110,5,2,21901,NULL),(111,5,2,17701,NULL),(112,7,59,14600,NULL),(113,8,59,NULL,'00:05:02.000'),(114,10,59,4070,NULL),(115,1,2,NULL,'00:02:26.000'),(116,1,2,NULL,'00:02:23.098'),(117,1,59,NULL,'00:02:19.520'),(118,9,66,NULL,'00:02:33.000'),(119,9,63,NULL,'00:02:32.060'),(120,10,74,560,NULL),(121,7,71,25000,NULL),(122,8,68,NULL,'00:07:41.000'),(123,6,72,15014,NULL),(124,7,71,15340,NULL),(125,1,77,NULL,'00:02:18.081'),(127,1,67,NULL,'00:02:23.026'),(128,9,78,NULL,'00:02:41.330'),(129,10,71,5110,NULL),(130,1,67,NULL,'00:02:16.073'),(131,1,77,NULL,'00:02:19.860'),(132,10,64,4590,NULL),(133,8,78,NULL,'00:05:52.980'),(135,1,67,NULL,'00:02:20.006'),(136,1,77,NULL,'00:02:18.093'),(137,10,64,4810,NULL),(138,1,67,NULL,'00:02:16.035'),(139,1,77,NULL,'00:02:20.840'),(140,1,81,NULL,'00:02:37.004'),(141,6,78,90820,NULL),(142,10,64,6140,NULL),(143,7,82,11540,NULL),(144,1,80,NULL,'00:02:26.950'),(145,1,81,NULL,'00:02:28.008'),(146,6,83,19030,NULL),(147,3,82,NULL,'00:02:41.100'),(148,9,81,NULL,'00:02:32.085'),(149,1,65,NULL,'00:02:27.610'),(150,1,65,NULL,'00:02:17.300'),(151,6,82,34163,NULL),(152,1,65,NULL,'00:02:21.068'),(153,8,84,NULL,'00:05:45.230'),(154,1,64,NULL,'00:02:29.470'),(155,3,65,NULL,'00:02:30.000'),(156,1,64,NULL,'00:02:19.340'),(157,3,59,NULL,'00:01:44.350'),(158,8,85,NULL,'00:06:39.440'),(159,10,64,7060,NULL),(160,9,83,NULL,'00:02:41.170'),(161,6,41,3256,NULL),(162,5,64,77712,NULL),(163,8,70,NULL,'00:06:19.040'),(164,6,59,95582,NULL),(165,9,65,NULL,'00:02:34.320'),(166,5,64,183373,NULL),(167,9,65,NULL,'00:02:19.005'),(168,3,83,NULL,'00:01:34.790'),(169,1,59,NULL,'00:02:16.550'),(170,7,87,15040,NULL),(171,8,70,NULL,'00:05:15.090'),(172,5,59,160893,NULL),(173,3,65,NULL,'00:01:31.420'),(174,10,21,111111111,NULL);
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `telsilvio`
--

DROP TABLE IF EXISTS `telsilvio`;
/*!50001 DROP VIEW IF EXISTS `telsilvio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `telsilvio` AS SELECT 
 1 AS `nomeVisitante`,
 1 AS `celular`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `visitante`
--

DROP TABLE IF EXISTS `visitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitante` (
  `idV` int unsigned NOT NULL AUTO_INCREMENT,
  `nomeVisitante` varchar(255) DEFAULT NULL,
  `celular` varchar(11) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `nick` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idV`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitante`
--

LOCK TABLES `visitante` WRITE;
/*!40000 ALTER TABLE `visitante` DISABLE KEYS */;
INSERT INTO `visitante` VALUES (1,'Gustavo Novais','18981079662','2004-05-28','Gusta'),(2,'Raryson Kaue Nicolau Oliveira','18991673843','2004-07-02','Rarydade'),(3,'Enzo SimÃ£o Felix ','18996208911','2005-05-31','YouPleb'),(4,'Gabriel Slavez Frare','18991204545','2005-01-07','g213'),(5,'Michael  Pegoraro','18996160975','2004-01-23','Michael '),(6,'Michael  Pegoraro','18996160975','2004-01-23','Pegoraro'),(7,'Julia Crystina','18997189621','2005-07-04','Ju'),(8,'Bruno Takeo AÃ§ano','18997217124','2004-01-08','Bruno'),(9,'Gustavo ','','0000-00-00','Gustavo '),(16,'Artur dos Santos de AraÃºjo ','18996921628','2008-01-30','Tutuh'),(17,'Gustavo Jesus Silva','18991440966','2007-03-08','Gusta'),(18,'Matheus Garcia Lauretto ','18998212640','2007-04-10','Fixz'),(19,'Luis Eduardo Santos Donato','18997245082','2008-01-08','Luistoise'),(20,'Lucas Magri Tavares','','2007-07-18','LC'),(21,'Arthur Bertechini Moura ','00000000','2008-02-15','Thurzin'),(22,'Isaac Andrew','18988264987','2004-04-11','Isaac Andre'),(23,'Caio Henrique Santos Carvalho ','18996937323','2011-03-12','Caio '),(24,'Nycole Nunes Garcia','18996902044','2007-10-25','Nyck'),(25,'Pablo Miquel de Carvalho Casarin','18996780625','2007-11-10','GordoEmagrecido'),(26,'Lucas Miquel Neres  ','00000000','2008-01-21','Luquinhas'),(27,'Lorena Andrade','18996892184','2006-11-10','lorena'),(28,'Mariana Sanchez','18996677834','2007-02-08','MariLinda'),(29,'Bianca Andretto','18988155929','2004-10-22','Bia'),(30,'Luany VitÃ³ria Teixeira','18996463058','2005-05-02','LuanyLinda'),(31,'JoÃ£o Damasceno','18997156697','2005-02-02','Scaramouche'),(32,'Samara Lunna Pereira','18997032970','2005-04-05','Lunna'),(33,'Jaquelini Gomes','18988072237','2004-11-07','Jaque'),(34,'Isabelli MarÃ§al','18996608394','2005-08-20','Vick'),(35,'Barbara Planet','18996403025','2005-10-08','Barbie'),(36,'Rayane Dias','18988275906','2005-10-19','Ray'),(37,'DhÃ©bora Wendy Rocha Vieira','18988147659','2003-11-13','Deb_Mental'),(38,'Theo Pariz','18997602401','2006-12-24','Shirou'),(39,'Felipe Correia','18981798519','2006-04-07','CGgamer_Zin'),(40,'Vitor Siqueroli Mariotto','18997890504','2005-10-18','Briana'),(41,'Maria Fernanda','18997796829','2005-09-12','Fernanda'),(42,'Kaike Alexandre','18996288381','2005-10-20','Kiry'),(43,'Kamilly Dias','18991549749','2004-09-16','Kah Dias'),(44,'Mateus Pasqual de Carvalho ','18991918007','2006-05-09','GligliTenebroso'),(45,'Gustavo Condes','18996670826','2005-08-25','Mane Simpatia'),(46,'Rayane Estevan ','18996101050','2004-10-30','Ray'),(47,'Guilherme Silva','18996544443','2003-11-28','MagrÃ£o'),(48,'Yasmin Padilha de Moraes ','18997206479','2004-10-25','Nimsay '),(49,'Gabriel Dias','18997580482','2005-01-05','Macaco Dias doKuDuro'),(50,'Zaira Eduarda da Silva ','18996016803','2005-04-04','ZAS'),(51,'Francisco Isaac','18981294009','2005-11-02','Izaki'),(52,'Isadora PechÃ³','18981613667','2005-04-26','StephanieKATIE09'),(53,'Gabriel Godoy da Silva','18997074107','2004-10-22','Godoy'),(54,'Kaike Bassan','18997918438','2005-01-11','Kaik'),(55,'Vinius AndrÃ© Luzia de Holanda','18935001821','2004-03-11','Vash '),(56,'Larissa Isabela','18997214074','2005-11-02','Lari'),(57,'CauÃ£','18998132948','2004-08-11','Tsukune '),(59,'Fiori Zonta','1111111','1985-04-06','Fiori Zonta'),(60,'Andre Lima','1899622466','2004-09-04','Andre77'),(61,'Maria Eduarda Laranjo','18991203444','2007-06-29','Laranjo'),(62,'Maria Eduarda Laranjo','18991203444','2007-06-29','Laranjo'),(63,'WAGNER SOUZA','988114698','1980-09-25','WORVOC'),(64,'Nicolas Rafael Xavier','18991223029','2005-10-12','FOX'),(65,'Alexandre Magno Fernandes Amorim','18996244391','2001-10-14','Cynbard'),(66,'Carlos','18988057616','1999-03-31','CACO'),(67,'Brenno Henrique Carvalho Da Rocha Camargo','18988293726','2005-12-23','Brennobola'),(68,'Anna Luisa Fernandes Amorim','18 99102063','2004-04-05','Nana'),(70,'Arthur Novais De Oliveira','18981235079','2009-05-04','Thur'),(71,'Leonardo Mulato Dametto','18996680348','2006-10-17','linkzinho'),(72,'KauÃ£ Cardoso Ferraz','18 98829116','2006-07-10','kinzinho'),(73,'Wemilly','','0000-00-00','Wemilly '),(74,'Wemilly KÃªnia Santos Silva','18988150886','2006-12-26','Milly'),(75,'Ivan Gessinger','18996746311','2004-06-02','folker2000'),(76,'Luana Borborema Nascimento','18997775458','2008-08-20','Luali'),(77,'Alyson AntÃ´nio Belancieri','18 99825260','2005-08-18','ALyÃ“'),(78,'NatÃ£ Nogueira Ferreira','14 99115151','2005-02-09','Pato'),(79,'Guilherme Henrique Duarte','18 99635249','2005-10-07','GuizinhoSeduÃ§Ã£o'),(80,'Leandro Gabriel Arcain','18996000624','2006-05-17','LeandroGabriel'),(81,' Pedro KauÃ£ da Silva Veronezi','18 99812620','2006-05-22','rdpedrinn'),(82,'Samuel Lucas Fonseca de Oliveira','18 99126894','2006-02-05','Nexus'),(83,'Gustavo Matias Felipe Santos','18 99646363','2004-12-15','InazumaBoy'),(84,'Davy Cezar ','18997706827','2001-11-13','AlvoDeCorno'),(85,'Pedro Henrique Santos','18998180202','2007-01-24','Pepo'),(86,'AbraÃ£o','14 99764075','1974-07-01','Mumm RÃ¡'),(87,'Rafael Sandrigo Rabal','','2006-06-30','BAMBI'),(88,'Tatiana Dias','18996047877','1987-08-30','TaVdias'),(89,'Fabio Ozorio ','18 99767048','2011-08-24','binho'),(90,'Wilson','18988034748','1999-02-10','Will_blindex'),(91,'LaÃ­s Mattiazzo Rodrigues','18996016876','1995-03-06','LaÃ­s Mattiazzo');
/*!40000 ALTER TABLE `visitante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `visitante_mais_jogos`
--

DROP TABLE IF EXISTS `visitante_mais_jogos`;
/*!50001 DROP VIEW IF EXISTS `visitante_mais_jogos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `visitante_mais_jogos` AS SELECT 
 1 AS `nick`,
 1 AS `jogadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `contar`
--

/*!50001 DROP VIEW IF EXISTS `contar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contar` AS select count(0) AS `visitante` from `visitante` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mais_jogados`
--

/*!50001 DROP VIEW IF EXISTS `mais_jogados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mais_jogados` AS select `jogo`.`nomeJogo` AS `nomeJogo`,`jogo`.`logo` AS `logo`,`plataforma`.`nomePlataforma` AS `nomePlataforma`,`plataforma`.`imgPlataforma` AS `imgPlataforma`,count(`resultado`.`idJ`) AS `jogadas` from ((`jogo` join `resultado`) join `plataforma`) where ((`jogo`.`idJ` = `resultado`.`idJ`) and (0 <> `jogo`.`idP`)) group by `jogo`.`idJ` order by `jogadas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `telsilvio`
--

/*!50001 DROP VIEW IF EXISTS `telsilvio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `telsilvio` AS select `visitante`.`nomeVisitante` AS `nomeVisitante`,`visitante`.`celular` AS `celular` from `visitante` order by `visitante`.`nomeVisitante` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `visitante_mais_jogos`
--

/*!50001 DROP VIEW IF EXISTS `visitante_mais_jogos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `visitante_mais_jogos` AS select `visitante`.`nick` AS `nick`,count(`resultado`.`idR`) AS `jogadas` from (`visitante` join `resultado`) where (`visitante`.`idV` = `resultado`.`idV`) group by `visitante`.`idV` order by `jogadas` desc */;
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

-- Dump completed on 2023-04-25 20:06:11
