-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: guarderia
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id_actividades` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `fecha_actividad` date NOT NULL,
  PRIMARY KEY (`id_actividades`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Recreativas','2025-10-28'),(2,'Culturales','2025-09-28'),(3,'salidas pedagogicas','2025-08-17'),(4,'pintura con hielo','2025-07-18'),(5,'mesas sensoriales','2025-06-08'),(6,'manualidades con material reciclado','2025-05-28'),(7,'canciones','2025-04-28'),(8,' cuentos motores','2025-03-28'),(9,'juegos de trasvase (arena/agua)','2025-02-05'),(10,' plastilina casera y circuitos','2025-01-13');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acudiente`
--

DROP TABLE IF EXISTS `acudiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acudiente` (
  `id_acudiente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_acudiente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acudiente`
--

LOCK TABLES `acudiente` WRITE;
/*!40000 ALTER TABLE `acudiente` DISABLE KEYS */;
INSERT INTO `acudiente` VALUES (1,'juan','Acosta','1012456789','3125214526'),(2,'Pablo','Ramirez','1016456780','3105645987'),(3,'Angelica','Rojas','1013425889','3052005124'),(4,'Camila','Pinzon','20520156','3015269857'),(5,'Sofia','Ocampo','1003521648','3163695821'),(6,'Karla','Guerrero','30256897','3201320256'),(7,'Cristian','Olaya','1016256896','3218569824'),(8,'Manuel','Tovar','80297156','3112185138'),(9,'Chucho','Ospina','1030697792','3125569857'),(10,'Mencho','Perez','1004435959','3105721333');
/*!40000 ALTER TABLE `acudiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ambiente`
--

DROP TABLE IF EXISTS `ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambiente` (
  `id_ambiente` int NOT NULL AUTO_INCREMENT,
  `numero_ambiente` varchar(45) NOT NULL,
  PRIMARY KEY (`id_ambiente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambiente`
--

LOCK TABLES `ambiente` WRITE;
/*!40000 ALTER TABLE `ambiente` DISABLE KEYS */;
INSERT INTO `ambiente` VALUES (1,'401'),(2,'202'),(3,'203'),(4,'402'),(5,'205'),(6,'206'),(7,'403'),(8,'404'),(9,'209'),(10,'405');
/*!40000 ALTER TABLE `ambiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia` (
  `id_asistencia` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `id_ninos` int DEFAULT NULL,
  `id_estado_asistencia` int DEFAULT NULL,
  PRIMARY KEY (`id_asistencia`),
  KEY `FK_ninos_Asistencia` (`id_ninos`),
  KEY `FK_estado_asistencia` (`id_estado_asistencia`),
  CONSTRAINT `FK_estado_asistencia` FOREIGN KEY (`id_estado_asistencia`) REFERENCES `estadoasistencia` (`id_estado_asistencia`),
  CONSTRAINT `FK_ninos_Asistencia` FOREIGN KEY (`id_ninos`) REFERENCES `ninos` (`id_ninos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia`
--

LOCK TABLES `asistencia` WRITE;
/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` VALUES (1,'2025-12-05',1,1),(2,'2025-11-06',2,2),(3,'2025-10-12',3,3),(4,'2025-09-28',4,1),(5,'2025-08-15',5,2),(6,'2025-07-23',6,3),(7,'2025-06-21',7,1),(8,'2025-05-08',8,3),(9,'2025-06-05',9,2),(10,'2025-04-01',10,1);
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `id_docentes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  PRIMARY KEY (`id_docentes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'jaimito','perez'),(2,'carolina','Cifuentes'),(3,'Matha','Casas'),(4,'Pablo','Jimenez'),(5,'Paula','Zambrano'),(6,'Nicol','Perez'),(7,'sofia','Cifuentes'),(8,'Sara','suarez'),(9,'Valentina','Pinzon'),(10,'Carlos','Castro');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadoasistencia`
--

DROP TABLE IF EXISTS `estadoasistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadoasistencia` (
  `id_estado_asistencia` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(45) NOT NULL,
  `excusa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_estado_asistencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadoasistencia`
--

LOCK TABLES `estadoasistencia` WRITE;
/*!40000 ALTER TABLE `estadoasistencia` DISABLE KEYS */;
INSERT INTO `estadoasistencia` VALUES (1,'Asistio',NULL),(2,'No Asistio',NULL),(3,'Excusa',NULL);
/*!40000 ALTER TABLE `estadoasistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id_grupo` int NOT NULL AUTO_INCREMENT,
  `cupos` int NOT NULL,
  `nombre_grupo` varchar(45) NOT NULL,
  `id_docente` int DEFAULT NULL,
  `id_ambiente` int DEFAULT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `FK_docente_grupo` (`id_docente`),
  KEY `FK_ambiente_grupo` (`id_ambiente`),
  CONSTRAINT `FK_ambiente_grupo` FOREIGN KEY (`id_ambiente`) REFERENCES `ambiente` (`id_ambiente`),
  CONSTRAINT `FK_docente_grupo` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id_docentes`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` VALUES (1,3,'grupo_sayayin',1,1),(2,3,'grupo_Software',2,2),(3,3,'grupo_Modas',3,3),(4,3,'grupo_los alfas',4,4),(5,3,'grupo_gorila',5,5),(6,3,'grupo_salchicha',6,6),(7,3,'grupo_cohete',7,7),(8,3,'grupo_dinamita',8,8),(9,3,'grupo_los crack',9,9),(10,3,'grupo_telecomunicaciones',10,10);
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupoyactividad`
--

DROP TABLE IF EXISTS `grupoyactividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupoyactividad` (
  `id_grupo` int DEFAULT NULL,
  `id_actividades` int DEFAULT NULL,
  KEY `FK_grupo_actividad` (`id_grupo`),
  KEY `FK_actividades_grupo` (`id_actividades`),
  CONSTRAINT `FK_actividades_grupo` FOREIGN KEY (`id_actividades`) REFERENCES `actividades` (`id_actividades`),
  CONSTRAINT `FK_grupo_actividad` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupoyactividad`
--

LOCK TABLES `grupoyactividad` WRITE;
/*!40000 ALTER TABLE `grupoyactividad` DISABLE KEYS */;
INSERT INTO `grupoyactividad` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `grupoyactividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ninos`
--

DROP TABLE IF EXISTS `ninos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ninos` (
  `id_ninos` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `codigo_unico` varchar(45) NOT NULL,
  `numero_documento` varchar(45) DEFAULT NULL,
  `id_grupo` int DEFAULT NULL,
  PRIMARY KEY (`id_ninos`),
  KEY `FK_grupo_Ninos` (`id_grupo`),
  CONSTRAINT `FK_grupo_Ninos` FOREIGN KEY (`id_grupo`) REFERENCES `grupos` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ninos`
--

LOCK TABLES `ninos` WRITE;
/*!40000 ALTER TABLE `ninos` DISABLE KEYS */;
INSERT INTO `ninos` VALUES (1,'pedro','cifuentes','A1_011','1005441144',1),(2,'camilo','Paez','A1_021','2512441512',1),(3,'sofia','Rojas','A1_031','1003536547',1),(4,'Camila','Pinzon','A1_041','1003269257',1),(5,'Sofia','Montañez','A1_051','1003521548',1),(6,'Karla','Guerrero','B1_061','1016568972',2),(7,'paola','Olaya','B1_071','1016256896',2),(8,'Martha','Ospina','B1_081','1003297156',2),(9,'Michaell','Tovar','B1_091','1030658792',2),(10,'valentina','suarez','B1_101','1015258974',2);
/*!40000 ALTER TABLE `ninos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ninosyacudientes`
--

DROP TABLE IF EXISTS `ninosyacudientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ninosyacudientes` (
  `id_ninos` int DEFAULT NULL,
  `id_acudientes` int DEFAULT NULL,
  KEY `FK_ninos_acudiente` (`id_ninos`),
  KEY `FK_acudientes_ninos` (`id_acudientes`),
  CONSTRAINT `FK_acudientes_ninos` FOREIGN KEY (`id_acudientes`) REFERENCES `acudiente` (`id_acudiente`),
  CONSTRAINT `FK_ninos_acudiente` FOREIGN KEY (`id_ninos`) REFERENCES `ninos` (`id_ninos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ninosyacudientes`
--

LOCK TABLES `ninosyacudientes` WRITE;
/*!40000 ALTER TABLE `ninosyacudientes` DISABLE KEYS */;
INSERT INTO `ninosyacudientes` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `ninosyacudientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registromedico`
--

DROP TABLE IF EXISTS `registromedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registromedico` (
  `id_registro_medico` int NOT NULL AUTO_INCREMENT,
  `observaciones` varchar(45) NOT NULL,
  `Alergias` varchar(45) NOT NULL,
  `contacto_emergencia` varchar(45) NOT NULL,
  `id_ninos` int DEFAULT NULL,
  PRIMARY KEY (`id_registro_medico`),
  KEY `FK_ninos_Registro` (`id_ninos`),
  CONSTRAINT `FK_ninos_Registro` FOREIGN KEY (`id_ninos`) REFERENCES `ninos` (`id_ninos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registromedico`
--

LOCK TABLES `registromedico` WRITE;
/*!40000 ALTER TABLE `registromedico` DISABLE KEYS */;
INSERT INTO `registromedico` VALUES (1,'sin observaciones','sin alergias','60152454',1),(3,'sin observaciones','sin alergias','60152454',3),(4,'sin observaciones','sin alergias','60152454',4),(7,'sin observaciones','sin alergias','60152454',7),(10,'sin observaciones','sin alergias','60152454',10);
/*!40000 ALTER TABLE `registromedico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-21  0:04:38
