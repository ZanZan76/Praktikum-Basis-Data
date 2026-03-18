-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sia
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` varchar(15) NOT NULL,
  `Nama` char(80) NOT NULL,
  `Jurusan` char(50) NOT NULL,
  PRIMARY KEY (`NPM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('2501','Jajang Sugiman','Teknik Informatika'),('2502','Wira Malira','Teknik Informatika'),('2503','Ahmad Muhammad','Teknik Komputer'),('2504','Meru Mahameru','Teknik Komputer'),('2505','Sri Dewisri','Teknologi Informasi'),('2506','Raja Raharja','Teknologi Informasi'),('2507','Sujatmiko Arafuru','Teknik Mekatronika'),('2508','Wilson','Teknik Mekatronika'),('2509','Palpero','Teknik Komputer');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_kuliah` (
  `Kode_Matkul` varchar(10) NOT NULL,
  `Matkul` varchar(100) NOT NULL,
  `SKS` int(11) NOT NULL,
  PRIMARY KEY (`Kode_Matkul`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_kuliah`
--

LOCK TABLES `mata_kuliah` WRITE;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
INSERT INTO `mata_kuliah` VALUES ('MK001','BASIS DATA',3),('MK002','Pemrograman Web',3),('MK003','Algoritma Pemrograman',3),('MK004','Jaringan Komputer',3),('MK005','Struktur Data',3);
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NPM` varchar(15) NOT NULL,
  `Kode_MK` varchar(10) NOT NULL,
  `Nilai` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `NPM` (`NPM`),
  KEY `Kode_MK` (`Kode_MK`),
  CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`NPM`) REFERENCES `mahasiswa` (`NPM`),
  CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`Kode_MK`) REFERENCES `mata_kuliah` (`Kode_Matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,'2501','MK001',85.00),(2,'2501','MK002',80.00),(3,'2501','MK003',90.00),(4,'2502','MK001',80.00),(5,'2502','MK002',80.00),(6,'2502','MK003',78.00),(7,'2503','MK001',78.00),(8,'2503','MK003',79.00),(9,'2503','MK005',83.00),(10,'2504','MK001',93.00),(11,'2504','MK003',90.00),(12,'2504','MK005',86.00),(13,'2505','MK002',88.00),(14,'2505','MK003',89.00),(15,'2505','MK004',87.00),(16,'2506','MK002',85.00),(17,'2506','MK003',86.00),(18,'2506','MK004',83.00),(19,'2507','MK001',80.00),(20,'2507','MK002',90.00),(21,'2507','MK005',90.00),(22,'2508','MK001',85.00),(23,'2508','MK002',95.00),(24,'2508','MK005',79.00),(25,'2509','MK001',90.00),(26,'2509','MK002',85.00),(27,'2509','MK003',75.00);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-18  9:50:53
