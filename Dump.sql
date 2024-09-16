-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: teste
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cli` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(80) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Papelaria Bom Caderno Ltda','Itajai','SC'),(2,'Papelaria Bom Caderno Ltda','Itajai','SC'),(3,'Papelaria Dicionario Ltda','Balneario Camboriu','SC'),(4,'Papelaria Lapis Preto Ltda','Brusque','SC'),(5,'Papelaria Universitaria Ltda','Navegantes','SC'),(6,'Papelaria Estudantes Ltda','Florianopolis','SC'),(7,'Distribuidora Papel e Compania  Ltda','Barra Velha','SC'),(8,'Entregadora Catarinense Ltda','Brusque','SC'),(9,'Grafica Brusquense Ltda','Brusque','SC'),(10,'Armarinho Renata Ltda','Balneario Camboriu','SC'),(11,'Bazar Praia Limpa Ltda','Balneario Camboriu','SC'),(12,'Mercado Bom Cliente Ltda','Itajai','SC'),(13,'Lojao do Ricardo Ltda','Itajai','SC'),(14,'Grafica do Luiz Ltda','Florianopolis','SC'),(15,'Empacotadora Floripa Ltda','Florianopolis','SC'),(16,'Clinica do caderno Ltda','Navegantes','SC'),(17,'Livraria Tecnica e Estilos Ltda','Navegantes','SC'),(18,'Cristina Artefatos Ltda','Joenvile','SC'),(19,'Mercado da Vila Ltda','Chapeco','SC'),(20,'Feira de Livros Ltda','Nova Trento','SC'),(21,'Informatica Luiz Ltda','Camboriu','SC');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosgerais`
--

DROP TABLE IF EXISTS `pedidosgerais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidosgerais` (
  `id_pedido` int NOT NULL,
  `data_Emissao` date NOT NULL,
  `cod_cliente` int NOT NULL,
  `valorTotal` double NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `cod_cliente` (`cod_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosgerais`
--

LOCK TABLES `pedidosgerais` WRITE;
/*!40000 ALTER TABLE `pedidosgerais` DISABLE KEYS */;
INSERT INTO `pedidosgerais` VALUES (2,'2024-09-15',0,293.1);
/*!40000 ALTER TABLE `pedidosgerais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidosprodutos`
--

DROP TABLE IF EXISTS `pedidosprodutos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidosprodutos` (
  `id_chave` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_produto` int NOT NULL,
  `quantidade` int NOT NULL,
  `valorUnitario` double NOT NULL,
  `valorTotal` double NOT NULL,
  PRIMARY KEY (`id_chave`),
  KEY `id_produto` (`id_produto`),
  KEY `id_pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidosprodutos`
--

LOCK TABLES `pedidosprodutos` WRITE;
/*!40000 ALTER TABLE `pedidosprodutos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidosprodutos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_prod` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  `valor_venda` double NOT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Lapis preto nº 7',6.7),(2,'Lapis preto nº 5',5.7),(3,'Lapis preto nº 5',5.7),(4,'Caderno 50 folhas',11.5),(5,'Caderno 100 folhas',13.5),(6,'Caderno capa dura 50 folhas',15),(7,'Caderno capa dura 100 folhas',19),(8,'Borracha simples',3),(9,'Borracha dupla',5.2),(10,'Lapis Borracha',8.15),(11,'Caneta Bic cor Azul',2.3),(12,'Caneta Bic cor Vermelha',2.3),(13,'Caneta Bic cor Preta',2.3),(14,'Papel Sulfite A4 pacote 100 folhas',31),(15,'Papel Sulfite A4 pacote 500 folhas',130),(16,'Cola Tenaz',16.9),(17,'Cartolina',5.5),(18,'Pincel Atomico',11),(19,'Tesoura pequena',25),(20,'Grampo para grampeadores Caixa',34.3),(21,'Clips caixa com 500',54),(22,'Marca Texto',12);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'teste'
--

--
-- Dumping routines for database 'teste'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 12:07:04
