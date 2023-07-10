CREATE DATABASE  IF NOT EXISTS `alphas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alphas`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: alphas
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `administradores`
--

DROP TABLE IF EXISTS `administradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administradores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradores`
--

LOCK TABLES `administradores` WRITE;
/*!40000 ALTER TABLE `administradores` DISABLE KEYS */;
INSERT INTO `administradores` VALUES (1,'JAVR','password');
/*!40000 ALTER TABLE `administradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `expediente` int NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `skills` varchar(160) NOT NULL,
  PRIMARY KEY (`expediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (290242,'Manuel','Perez Garcia','manuelperez@gmail.com','Javascript'),(290246,'Enrique','Ramirez Hernandez','enriqueramirez@gmail.com','HTML, CSS, Javascript'),(290248,'Jimena','Perez Torres','jimenaperez@gmail.com','HTML, CSS, Javascript'),(290250,'Liliana','Hernandez Jimenez','lilianahernandez@gmail.com','HTML, CSS'),(290252,'Paola','Garcia Ramirez','paolagarcia@gmail.com','HTML'),(297802,'Dany','Gomez','wsedfrg@gmail.com','HTML, CSS, C#'),(307075,'Jesus Alberto','Vazquez Rioja','jvazquezrioja@gmail.com','HTML, CSS, C++'),(409383,'Paul ','Straws','adfsrg@gmail.com','c++,php');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_certificados`
--

DROP TABLE IF EXISTS `alumnos_certificados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_certificados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `expediente_alumno` int DEFAULT NULL,
  `certificado_id` int DEFAULT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expediente_alumno` (`expediente_alumno`),
  KEY `certificado_id` (`certificado_id`),
  CONSTRAINT `alumnos_certificados_ibfk_1` FOREIGN KEY (`expediente_alumno`) REFERENCES `alumnos` (`expediente`),
  CONSTRAINT `alumnos_certificados_ibfk_2` FOREIGN KEY (`certificado_id`) REFERENCES `certificados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_certificados`
--

LOCK TABLES `alumnos_certificados` WRITE;
/*!40000 ALTER TABLE `alumnos_certificados` DISABLE KEYS */;
INSERT INTO `alumnos_certificados` VALUES (1,290246,1,'2023-05-01','2023-05-29'),(2,290246,2,'2023-03-12','2023-04-10'),(3,290252,1,'2023-04-05','2023-05-05'),(4,290252,3,'2023-02-01','2023-04-06'),(5,307075,1,'2023-02-01','2023-04-06'),(6,307075,1,'2023-01-01','2023-01-25');
/*!40000 ALTER TABLE `alumnos_certificados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificados`
--

DROP TABLE IF EXISTS `certificados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificados`
--

LOCK TABLES `certificados` WRITE;
/*!40000 ALTER TABLE `certificados` DISABLE KEYS */;
INSERT INTO `certificados` VALUES (1,'alfas','curso para aprender fundamentos basicos de desarrollo web','https://alfas.com'),(2,'betas','curso para aprender sobre los fundamentos de base de datos y backend','https://betas.com'),(3,'ada girls','curso de ada girls','https://adagirls.com'),(4,'Prueba','srdtcfgbhnj','tcfyvgbh');
/*!40000 ALTER TABLE `certificados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  0:12:10
