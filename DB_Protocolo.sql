CREATE DATABASE  IF NOT EXISTS `db_protocolo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_protocolo`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: db_protocolo
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `tb_cidade`
--

DROP TABLE IF EXISTS `tb_cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cidade` (
  `IDCIDADE` int(11) NOT NULL AUTO_INCREMENT,
  `UF` varchar(2) DEFAULT NULL,
  `CIDADE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDCIDADE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cidade`
--

LOCK TABLES `tb_cidade` WRITE;
/*!40000 ALTER TABLE `tb_cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_departamento` (
  `IDDEPARTAMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDDEPARTAMENTO`),
  UNIQUE KEY `IDDEPARTAMENTO_UNIQUE` (`IDDEPARTAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_escolaridade`
--

DROP TABLE IF EXISTS `tb_escolaridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_escolaridade` (
  `IDESCOLARIDADE` int(11) NOT NULL AUTO_INCREMENT,
  `ESCOLARIDADE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDESCOLARIDADE`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_escolaridade`
--

LOCK TABLES `tb_escolaridade` WRITE;
/*!40000 ALTER TABLE `tb_escolaridade` DISABLE KEYS */;
INSERT INTO `tb_escolaridade` VALUES (1,'Nivel Fundamental (1º grau)'),(2,'Nivel Medio (2º grau)'),(3,'Superior'),(4,'Pós-Graduação'),(5,'Mestrado'),(6,'Doutorado'),(7,'Pós-Doutorado');
/*!40000 ALTER TABLE `tb_escolaridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estado`
--

DROP TABLE IF EXISTS `tb_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estado` (
  `UF` varchar(2) NOT NULL,
  `ESTADO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estado`
--

LOCK TABLES `tb_estado` WRITE;
/*!40000 ALTER TABLE `tb_estado` DISABLE KEYS */;
INSERT INTO `tb_estado` VALUES ('AC','Acre'),('AL','Alagoas'),('AM','Amazonas'),('AP','Amapá'),('BA','Bahia'),('CE','Ceará'),('DF','Distrito Federal'),('ES','Espírito Santo'),('GO','Goiás'),('MA','Maranhão'),('MG','Minas Gerais'),('MS','Mato Grosso do Sul'),('MT','Mato Grosso'),('PA','Pará'),('PB','Paraíba'),('PE','Pernambuco'),('PI','Piauí'),('PR','Paraná'),('RJ','Rio de Janeiro'),('RN','Rio Grande do Norte'),('RO','Rondônia'),('RR','Rorâima'),('RS','Rio Grande do Sul'),('SC','Santa Catarina'),('SE','Sergipe'),('SP','São Paulo'),('TO','Tocantins');
/*!40000 ALTER TABLE `tb_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_protocolo`
--

DROP TABLE IF EXISTS `tb_protocolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_protocolo` (
  `IDPROTOCOLO` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroProtocolo` varchar(45) DEFAULT NULL,
  `Assunto` varchar(100) DEFAULT NULL,
  `Data` datetime DEFAULT NULL,
  `Descricao` varchar(500) DEFAULT NULL,
  `Observacao` varchar(500) DEFAULT NULL,
  `NumeroEtiqueta` varchar(45) DEFAULT NULL,
  `Destinatario` int(11) DEFAULT NULL,
  `Solicitante` int(11) DEFAULT NULL,
  `CriadoPor` int(11) DEFAULT NULL,
  `IDTIPODOCUMENTO` int(11) DEFAULT NULL,
  `IDSTATUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDPROTOCOLO`),
  UNIQUE KEY `IDPROTOCOLO_UNIQUE` (`IDPROTOCOLO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_protocolo`
--

LOCK TABLES `tb_protocolo` WRITE;
/*!40000 ALTER TABLE `tb_protocolo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_protocolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_protocolo_anexo`
--

DROP TABLE IF EXISTS `tb_protocolo_anexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_protocolo_anexo` (
  `IDPROTOCOLOANEXO` int(11) NOT NULL AUTO_INCREMENT,
  `IDPROTOCOLO` int(11) DEFAULT NULL,
  `ARQUIVO` varchar(200) DEFAULT NULL,
  `TIPOARQUIVO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDPROTOCOLOANEXO`),
  UNIQUE KEY `IDPROTOCOLOANEXO_UNIQUE` (`IDPROTOCOLOANEXO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_protocolo_anexo`
--

LOCK TABLES `tb_protocolo_anexo` WRITE;
/*!40000 ALTER TABLE `tb_protocolo_anexo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_protocolo_anexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_protocolo_historico`
--

DROP TABLE IF EXISTS `tb_protocolo_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_protocolo_historico` (
  `IDPROTOCOLOHISTORICO` int(11) NOT NULL AUTO_INCREMENT,
  `IDUSUARIORESPONSAVEL` int(11) NOT NULL,
  `IDPROTOCOLO` int(11) NOT NULL,
  `IDDEPARTAMENTO` int(11) DEFAULT NULL,
  `DETALHAMENTO` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IDPROTOCOLOHISTORICO`),
  UNIQUE KEY `IDPROTOCOLOHISTORICO_UNIQUE` (`IDPROTOCOLOHISTORICO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_protocolo_historico`
--

LOCK TABLES `tb_protocolo_historico` WRITE;
/*!40000 ALTER TABLE `tb_protocolo_historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_protocolo_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_protocolo_status`
--

DROP TABLE IF EXISTS `tb_protocolo_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_protocolo_status` (
  `IDSTATUS` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDSTATUS`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_protocolo_status`
--

LOCK TABLES `tb_protocolo_status` WRITE;
/*!40000 ALTER TABLE `tb_protocolo_status` DISABLE KEYS */;
INSERT INTO `tb_protocolo_status` VALUES (1,'Pendente'),(2,'Arquivado'),(3,'Encaminhado'),(4,'Concluido');
/*!40000 ALTER TABLE `tb_protocolo_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tipodocumento`
--

DROP TABLE IF EXISTS `tb_tipodocumento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tipodocumento` (
  `IDTIPODOCUMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDTIPODOCUMENTO`),
  UNIQUE KEY `IDTIPODOCUMENTO_UNIQUE` (`IDTIPODOCUMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tipodocumento`
--

LOCK TABLES `tb_tipodocumento` WRITE;
/*!40000 ALTER TABLE `tb_tipodocumento` DISABLE KEYS */;
INSERT INTO `tb_tipodocumento` VALUES (1,'Atestado'),(2,'Autógrafo'),(3,'Emenda'),(4,'Requerimento'),(5,'Indicação'),(6,'Moção'),(7,'Ofício'),(8,'Convite'),(9,'Convênio'),(10,'Convocação'),(11,'Correspondência'),(12,'Certidão'),(13,'Resolução'),(14,'Relatório'),(15,'Declaração'),(16,'Despacho'),(17,'Decreto'),(18,'Portaria'),(19,'Parecer'),(20,'Lei'),(21,'Projeto de Lei'),(22,'Instrução Normativa'),(23,'Outros');
/*!40000 ALTER TABLE `tb_tipodocumento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario` (
  `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(100) DEFAULT NULL,
  `USUARIO` varchar(20) DEFAULT NULL,
  `SENHA` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `CPFCNPJ` varchar(20) DEFAULT NULL,
  `SEXO` varchar(1) DEFAULT NULL,
  `FAIXAETARIA` varchar(30) DEFAULT NULL,
  `PROFISSAO` varchar(100) DEFAULT NULL,
  `DDDTELEFONE` varchar(2) DEFAULT NULL,
  `TELEFONE` varchar(20) DEFAULT NULL,
  `DDDCELULAR` varchar(2) DEFAULT NULL,
  `CELULAR` varchar(20) DEFAULT NULL,
  `ENDERECO` varchar(100) DEFAULT NULL,
  `BAIRRO` varchar(80) DEFAULT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `IDCIDADE` int(11) DEFAULT NULL,
  `IDSTATUS` int(11) DEFAULT NULL,
  `IDNIVEL` int(11) DEFAULT NULL,
  `IDESCOLARIDADE` int(11) DEFAULT NULL,
  `IDDEPARTAMENTO` int(11) DEFAULT NULL,
  `OUTRALOCALIDADE` varchar(100) DEFAULT NULL,
  `IDGENERO` INT NULL,
  PRIMARY KEY (`IDUSUARIO`),
  UNIQUE KEY `IDUSUARIO_UNIQUE` (`IDUSUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario_nivel`
--

DROP TABLE IF EXISTS `tb_usuario_nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario_nivel` (
  `IDUSUARIONIVEL` int(11) NOT NULL AUTO_INCREMENT,
  `NIVEL` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIONIVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario_nivel`
--

LOCK TABLES `tb_usuario_nivel` WRITE;
/*!40000 ALTER TABLE `tb_usuario_nivel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuario_nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario_status`
--

DROP TABLE IF EXISTS `tb_usuario_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_usuario_status` (
  `IDUSUARIOSTATUS` int(11) NOT NULL AUTO_INCREMENT,
  `STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIOSTATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario_status`
--

LOCK TABLES `tb_usuario_status` WRITE;
/*!40000 ALTER TABLE `tb_usuario_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuario_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-17 16:59:12




--
-- Table structure for table `tb_usuario_genero`
--

DROP TABLE IF EXISTS `tb_usuario_genero`;

CREATE TABLE `tb_usuario_genero` 
(
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  
   `Genero` varchar(45) DEFAULT NULL,
 
    PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;





INSERT INTO `db_protocolo`.`tb_usuario_genero`
(`Genero`)
VALUES
("Pessoa Fisica");



INSERT INTO `db_protocolo`.`tb_usuario_genero`
(`Genero`)
VALUES
("Pessoa Juridica");



ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD INDEX `IDUSUARIONIVEL_idx` (`IDNIVEL` ASC);

ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD CONSTRAINT `IDUSUARIONIVEL`
  FOREIGN KEY (`IDNIVEL`)
  REFERENCES `db_protocolo`.`tb_usuario_nivel` (`IDUSUARIONIVEL`)
  ON DELETE SET NULL

  ON UPDATE SET NULL
;



ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD INDEX `IDGENERO_idx` (`IDGENERO` ASC);


ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD CONSTRAINT `IDGENERO`
  FOREIGN KEY (`IDGENERO`)
  REFERENCES `db_protocolo`.`tb_usuario_genero` (`idGenero`)
  ON DELETE SET NULL
  ON UPDATE SET NULL;


ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD INDEX `IDUSUARIOSTATUS_idx` (`IDSTATUS` ASC);

ALTER TABLE `db_protocolo`.`tb_usuario` 
ADD CONSTRAINT `IDUSUARIOSTATUS`
  FOREIGN KEY (`IDSTATUS`)
  REFERENCES `db_protocolo`.`tb_usuario_status` (`IDUSUARIOSTATUS`)
  ON DELETE SET NULL
  ON UPDATE SET NULL;


ALTER TABLE `db_protocolo`.`tb_protocolo` 
ADD INDEX `IDSTATUS_idx` (`IDSTATUS` ASC);

ALTER TABLE `db_protocolo`.`tb_protocolo` 
ADD CONSTRAINT `IDSTATUS`
  FOREIGN KEY (`IDSTATUS`)
  REFERENCES `db_protocolo`.`tb_protocolo_status` (`IDSTATUS`)
  ON DELETE SET NULL
  ON UPDATE SET NULL;


ALTER TABLE `db_protocolo`.`tb_protocolo_anexo` 
ADD INDEX `IDPROTOCOLO_idx` (`IDPROTOCOLO` ASC);

ALTER TABLE `db_protocolo`.`tb_protocolo_anexo` 
ADD CONSTRAINT `IDPROTOCOLO`
  FOREIGN KEY (`IDPROTOCOLO`)
  REFERENCES `db_protocolo`.`tb_protocolo` (`IDPROTOCOLO`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


ALTER TABLE `db_protocolo`.`tb_protocolo_historico` 
CHANGE COLUMN `IDPROTOCOLO` `IDPROTOCOLO` INT(11) NULL ;

ALTER TABLE `db_protocolo`.`tb_protocolo_historico` 
ADD CONSTRAINT `IDPROTOCOLOHIS`
  FOREIGN KEY (`IDPROTOCOLO`)
  REFERENCES `db_protocolo`.`tb_protocolo` (`IDPROTOCOLO`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


ALTER TABLE `db_protocolo`.`tb_protocolo` 
ADD COLUMN `Processo` VARCHAR(45) NULL AFTER `IDSTATUS`;


ALTER TABLE `db_protocolo`.`tb_protocolo` 
CHANGE COLUMN `Assunto` `Assunto` VARCHAR(200) NULL DEFAULT NULL;



INSERT INTO `db_protocolo`.`tb_departamento`
(`DEPARTAMENTO`)
VALUES
("Administrativo");


INSERT INTO `db_protocolo`.`tb_departamento`
(`DEPARTAMENTO`)
VALUES
("Financeiro");


INSERT INTO `db_protocolo`.`tb_departamento`
(`DEPARTAMENTO`)
VALUES
("Juridico");



