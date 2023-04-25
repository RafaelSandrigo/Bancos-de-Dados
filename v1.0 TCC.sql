CREATE DATABASE  IF NOT EXISTS `projecttcc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projecttcc`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: projecttcc
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `emailCliente` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telCliente` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `tel2Cliente` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cpfCliente` varchar(17) COLLATE utf8mb4_general_ci NOT NULL,
  `endCliente` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cepCliente` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `nome` (`nomeCliente`),
  UNIQUE KEY `cpf` (`cpfCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'ri','tamiris_ia@hotmail.com','(12) 12121-2121','(21) 21212-1212','21212121212','Bairro: sap, Rua: aa, Numero: dddd','12121-212'),(3,'Richard','richard@gmail.com','(11) 11111-1111','(18) 99800-0219','47119841866','Bairro: Santo Antonio, Rua: Conceição, Numero: aaa','00000-000');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final`
--

DROP TABLE IF EXISTS `final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final` (
  `idProduto` int NOT NULL,
  `idFinal` int NOT NULL AUTO_INCREMENT,
  `nomeRetira` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `dataSaida` datetime NOT NULL,
  PRIMARY KEY (`idFinal`),
  KEY `fk_idProdutoF` (`idProduto`),
  CONSTRAINT `fk_idProdutoF` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final`
--

LOCK TABLES `final` WRITE;
/*!40000 ALTER TABLE `final` DISABLE KEYS */;
/*!40000 ALTER TABLE `final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `idFuncionario` int NOT NULL AUTO_INCREMENT,
  `poder` char(1) COLLATE utf8mb3_bin NOT NULL,
  `estatos` int NOT NULL,
  `primeiroNome` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `login` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `senha` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`idFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'D',1,'richard','richardviolin','2211');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL AUTO_INCREMENT,
  `descProduto` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acompProduto` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `entradaProduto` date NOT NULL,
  `idCliente` int NOT NULL,
  `modeloProduto` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `estatos` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idProduto`),
  KEY `fk_idCliente` (`idCliente`),
  CONSTRAINT `fk_idCliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,' Bateria Carregamento','carregador, ','2023-03-28',1,'aa','F'),(2,' Bateria Carregamento','carregador','2023-03-30',1,'x10','F'),(3,' Bateria Tela','aaa','2023-03-30',1,'aaa','F'),(4,' Bateria','Chip e carregador','2023-04-06',3,'S10 pro','A'),(5,' Bateria','Carregador e Fone','2023-04-06',3,'nokia','E');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `idServico` int NOT NULL AUTO_INCREMENT,
  `orcamento` float NOT NULL,
  `entrada` datetime NOT NULL,
  `idProduto` int NOT NULL,
  `relatorio` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `tecnico` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pecas` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `previsao` int NOT NULL,
  PRIMARY KEY (`idServico`),
  KEY `fk_idProduto` (`idProduto`),
  CONSTRAINT `fk_idProduto` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,200,'2023-03-28 19:18:44',1,'erro no carregador','richard','carregador',3),(2,300,'2023-03-30 19:14:47',2,'aaa','richard','tewla e sei la',4),(3,200,'2023-04-06 13:40:28',3,'problema por sujeira','richard','entrada do carredor, bateria e fones',1),(4,150,'2023-04-06 15:10:44',4,'eqweqwe','richard','eqweqwe',1);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-25 19:57:45
