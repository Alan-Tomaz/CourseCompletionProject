-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: rc_db
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

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
-- Table structure for table `tb_clients`
--

DROP TABLE IF EXISTS `tb_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clients` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `name_cli` varchar(50) NOT NULL,
  `cpf_cli` varchar(50) NOT NULL,
  `birth_cli` varchar(50) NOT NULL,
  `sex_cli` varchar(10) NOT NULL,
  `email_cli` varchar(50) DEFAULT NULL,
  `phone_cli` varchar(50) NOT NULL,
  `adres_cli` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cli`),
  UNIQUE KEY `cpf_cli` (`cpf_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clients`
--

LOCK TABLES `tb_clients` WRITE;
/*!40000 ALTER TABLE `tb_clients` DISABLE KEYS */;
INSERT INTO `tb_clients` VALUES (1,'Alan','160.847.876-90','19/09/2004','Masculino','alan4tomaz8@gmail.com','(31)98870-9707','Montreal, Rua das Petúnias, 207');
/*!40000 ALTER TABLE `tb_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_os`
--

DROP TABLE IF EXISTS `tb_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_os` (
  `os` int(11) NOT NULL AUTO_INCREMENT,
  `data_os` timestamp NOT NULL DEFAULT current_timestamp(),
  `name_os` varchar(50) NOT NULL,
  `descr_os` text NOT NULL,
  `id_wor` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  PRIMARY KEY (`os`),
  KEY `id_wor` (`id_wor`),
  KEY `id_cli` (`id_cli`),
  KEY `id_pro` (`id_pro`),
  CONSTRAINT `tb_os_ibfk_1` FOREIGN KEY (`id_wor`) REFERENCES `tb_workers` (`id_wor`),
  CONSTRAINT `tb_os_ibfk_2` FOREIGN KEY (`id_cli`) REFERENCES `tb_clients` (`id_cli`),
  CONSTRAINT `tb_os_ibfk_3` FOREIGN KEY (`id_pro`) REFERENCES `tb_products` (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_os`
--

LOCK TABLES `tb_os` WRITE;
/*!40000 ALTER TABLE `tb_os` DISABLE KEYS */;
INSERT INTO `tb_os` VALUES (1,'2022-11-14 01:06:47','Venda de Loção','O cliente Lucas solicitou uma loção Deluxe Lotion da empresa oBoticário',1,1,1);
/*!40000 ALTER TABLE `tb_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_products` (
  `id_pro` int(11) NOT NULL AUTO_INCREMENT,
  `name_pro` varchar(50) NOT NULL,
  `descr_pro` text DEFAULT NULL,
  `model_pro` varchar(50) NOT NULL,
  `mark_pro` varchar(50) NOT NULL,
  `price_pro` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'Creme de Pele Deluxe Altus','Produto de alta qualidade para tornar sua pele macia e brilhosa','Creme','oBoticário',112.76);
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `login` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (1,'Administrador','admin','12345678'),(2,'Alan','alan','renata'),(3,'Renata','renata','renata'),(4,'Camila','camila','camila'),(5,'Nicanor','nica','alvez');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_workers`
--

DROP TABLE IF EXISTS `tb_workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_workers` (
  `id_wor` int(11) NOT NULL AUTO_INCREMENT,
  `name_wor` varchar(50) NOT NULL,
  `cpf_wor` varchar(50) NOT NULL,
  `birth_wor` varchar(50) NOT NULL,
  `sex_wor` varchar(10) DEFAULT NULL,
  `post_wor` varchar(50) NOT NULL,
  `email_wor` varchar(50) DEFAULT NULL,
  `phone_wor` varchar(50) NOT NULL,
  `adres_wor` varchar(100) NOT NULL,
  PRIMARY KEY (`id_wor`),
  UNIQUE KEY `cpf_wor` (`cpf_wor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_workers`
--

LOCK TABLES `tb_workers` WRITE;
/*!40000 ALTER TABLE `tb_workers` DISABLE KEYS */;
INSERT INTO `tb_workers` VALUES (1,'Renata','000.000.000-00','24/03/1985','Feminino','Atendente','borges@gmail.com','(00)00000-0000','Canadá, Rua dos Bobos, 21');
/*!40000 ALTER TABLE `tb_workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rc_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-13 22:16:50
