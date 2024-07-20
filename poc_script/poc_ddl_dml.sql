CREATE DATABASE  IF NOT EXISTS `poc_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `poc_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 192.168.0.30    Database: poc_db
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
-- Table structure for table `board_members_and_advisor_dtls`
--

DROP TABLE IF EXISTS `board_members_and_advisor_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_members_and_advisor_dtls` (
  `board_member_or_advisor_dtl_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`board_member_or_advisor_dtl_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `board_members_and_advisor_dtls_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_members_and_advisor_dtls`
--

LOCK TABLES `board_members_and_advisor_dtls` WRITE;
/*!40000 ALTER TABLE `board_members_and_advisor_dtls` DISABLE KEYS */;
INSERT INTO `board_members_and_advisor_dtls` VALUES (1,3,'Alberto Garuccio','Advisor',NULL,'2024-06-12 20:16:42',NULL,NULL,NULL,NULL),(2,6,'Victor Pascucci','Board Member',NULL,'2024-06-12 20:17:12',NULL,NULL,NULL,NULL),(3,8,'Stan Miroshnik','Board Member',NULL,'2024-06-12 20:17:36',NULL,NULL,NULL,NULL),(4,8,'Sachin Jaitly','Board Member',NULL,'2024-06-12 20:17:38',NULL,NULL,NULL,NULL),(5,8,'Jonathan Strike','Board Member',NULL,'2024-06-12 20:17:40',NULL,NULL,NULL,NULL),(6,8,'Laurie Katz','Advisor',NULL,'2024-06-12 20:17:42',NULL,NULL,NULL,NULL),(7,8,'Michael Cagney','Board Member',NULL,'2024-06-12 20:17:43',NULL,NULL,NULL,NULL),(8,10,'Scott Kriens','Board Member',NULL,'2024-06-12 20:18:03',NULL,NULL,NULL,NULL),(9,10,'Jim Dolce','Board Member',NULL,'2024-06-12 20:18:05',NULL,NULL,NULL,NULL),(10,10,'William Stensrud','Board Member',NULL,'2024-06-12 20:18:06',NULL,NULL,NULL,NULL),(11,10,'Janet Haugen','Board Member',NULL,'2024-06-12 20:18:08',NULL,NULL,NULL,NULL),(12,10,'Kevin DeNuccio','Board Member',NULL,'2024-06-12 20:25:27',NULL,NULL,NULL,NULL),(13,10,'Christine M. Gorjanc','Board Member',NULL,'2024-06-12 20:25:29',NULL,NULL,NULL,NULL),(14,10,'Robert Calderoni','Board Member',NULL,'2024-06-12 20:25:31',NULL,NULL,NULL,NULL),(15,10,'Mercedes Johnson','Board Member',NULL,'2024-06-12 20:25:33',NULL,NULL,NULL,NULL),(16,26,'Ryan Sanders','Board Member',NULL,'2024-06-13 19:42:11',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `board_members_and_advisor_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_profile`
--

DROP TABLE IF EXISTS `employee_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_profile` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `employee_profile_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_profile`
--

LOCK TABLES `employee_profile` WRITE;
/*!40000 ALTER TABLE `employee_profile` DISABLE KEYS */;
INSERT INTO `employee_profile` VALUES (1,2,'Sandeep Tandon','Founder & Partner',NULL,NULL,NULL,'2024-06-12 19:54:55',NULL,NULL,NULL,NULL),(2,2,'Kunal Shah','Co-Founder',NULL,NULL,NULL,'2024-06-12 20:07:51',NULL,NULL,NULL,NULL),(3,3,'Vishwa Chandra','Co-Founder',NULL,NULL,NULL,'2024-06-12 20:10:11',NULL,NULL,NULL,NULL),(4,3,'Tejus Sawjiani','Co-Founder',NULL,NULL,NULL,'2024-06-12 20:10:14',NULL,NULL,NULL,NULL),(5,3,'Stefan Einarsson','Co-Founder/Co-CEO',NULL,NULL,NULL,'2024-06-12 20:10:15',NULL,NULL,NULL,NULL),(6,4,'Arshad Balwa','Founder and CEO',NULL,NULL,NULL,'2024-06-12 20:10:25',NULL,NULL,NULL,NULL),(7,4,'Giridhar Malpani','Investor',NULL,NULL,NULL,'2024-06-12 20:10:27',NULL,NULL,NULL,NULL),(8,6,'Gurinder Nagra','CEO',NULL,NULL,NULL,'2024-06-12 20:10:59',NULL,NULL,NULL,NULL),(9,8,'Jennifer Mitrenga Maymon','Vice-President of Strategic Partnerships',NULL,NULL,NULL,'2024-06-12 20:11:33',NULL,NULL,NULL,NULL),(10,8,'Ashley Harris','General Counsel',NULL,NULL,NULL,'2024-06-12 20:11:35',NULL,NULL,NULL,NULL),(11,8,'Joanna Riley','Investor',NULL,NULL,NULL,'2024-06-12 20:11:38',NULL,NULL,NULL,NULL),(12,8,'Asiff Hirji','President',NULL,NULL,NULL,'2024-06-12 20:11:40',NULL,NULL,NULL,NULL),(13,8,'Ruben Padron','Chief Data Officer',NULL,NULL,NULL,'2024-06-12 20:11:42',NULL,NULL,NULL,NULL),(14,8,'Jim Del Favero','Head of Product',NULL,NULL,NULL,'2024-06-12 20:11:44',NULL,NULL,NULL,NULL),(15,8,'Jason Brausewetter','President, EQ Private Company Solutions - Astrella',NULL,NULL,NULL,'2024-06-12 20:11:46',NULL,NULL,NULL,NULL),(16,8,'Michael Tannenbaum','CEO',NULL,NULL,NULL,'2024-06-12 20:11:48',NULL,NULL,NULL,NULL),(17,10,'Rami Rahim','CEO',NULL,NULL,NULL,'2024-06-12 20:12:24',NULL,NULL,NULL,NULL),(18,10,'Pradeep Sindhu','Founder & Chief Scientist',NULL,NULL,NULL,'2024-06-12 20:12:26',NULL,NULL,NULL,NULL),(19,10,'Anand. S. Athreya','EVP Engineering, Chief Development Officer',NULL,NULL,NULL,'2024-06-12 20:12:28',NULL,NULL,NULL,NULL),(20,10,'Kevin Hutchins','SVP, Strategy & Product Mgmt',NULL,NULL,NULL,'2024-06-12 20:12:30',NULL,NULL,NULL,NULL),(21,10,'Ken Miller','Executive Vice President, Chief Financial Officer',NULL,NULL,NULL,'2024-06-12 20:12:32',NULL,NULL,NULL,NULL),(22,10,'Darshan T G','Software Engineer',NULL,NULL,NULL,'2024-06-12 20:12:34',NULL,NULL,NULL,NULL),(23,10,'Guy Davies','Senior Consulting Engineer Specialist',NULL,NULL,NULL,'2024-06-12 20:12:36',NULL,NULL,NULL,NULL),(24,10,'Alex Gray','Senior Vice President, Customer Services and Support',NULL,NULL,NULL,'2024-06-12 20:12:38',NULL,NULL,NULL,NULL),(25,14,'Carlos Alberto Arroyo Gil','Founder',NULL,NULL,NULL,'2024-06-13 19:16:18',NULL,NULL,NULL,NULL),(26,14,'Daniel Arroyo Gil','Co-Founder',NULL,NULL,NULL,'2024-06-13 19:16:21',NULL,NULL,NULL,NULL),(27,17,'Srikanth Pakala','Co-Founder and Chairman',NULL,NULL,NULL,'2024-06-13 19:16:55',NULL,NULL,NULL,NULL),(28,17,'Ravi Reddy','Co-Founder and CEO',NULL,NULL,NULL,'2024-06-13 19:16:58',NULL,NULL,NULL,NULL),(29,17,'Vinil Vadi','Chief Digital Officer',NULL,NULL,NULL,'2024-06-13 19:17:01',NULL,NULL,NULL,NULL),(30,17,'Ravindra Sarawagi','Chief Financial Officer, Vice President Finance and Accounts',NULL,NULL,NULL,'2024-06-13 19:17:04',NULL,NULL,NULL,NULL),(31,17,'Sudheer Mareddi','Co-Founder and Managing Director',NULL,NULL,NULL,'2024-06-13 19:17:07',NULL,NULL,NULL,NULL),(32,17,'Anil Thalakera','COO',NULL,NULL,NULL,'2024-06-13 19:17:10',NULL,NULL,NULL,NULL),(33,17,'Craig Upton','Regional Partner & Head',NULL,NULL,NULL,'2024-06-13 19:17:13',NULL,NULL,NULL,NULL),(34,18,'Billy Jones','CFO',NULL,NULL,NULL,'2024-06-13 19:17:26',NULL,NULL,NULL,NULL),(35,20,'Venkata Raju Chakka','Chief Executive Officer',NULL,NULL,NULL,'2024-06-13 19:17:49',NULL,NULL,NULL,NULL),(36,20,'Y. V. S. S. MURTY','Founder',NULL,NULL,NULL,'2024-06-13 19:17:52',NULL,NULL,NULL,NULL),(37,21,'Kalyan Kar','Cofounder & Director',NULL,NULL,NULL,'2024-06-13 19:18:07',NULL,NULL,NULL,NULL),(38,21,'Subhalakshmi Samanta','CEO',NULL,NULL,NULL,'2024-06-13 19:21:41',NULL,NULL,NULL,NULL),(39,21,'Kalpadip Basu','COO',NULL,NULL,NULL,'2024-06-13 19:21:44',NULL,NULL,NULL,NULL),(40,21,'Abhishek Nandy','Chief Data Scientist,Cofounder',NULL,NULL,NULL,'2024-06-13 19:21:47',NULL,NULL,NULL,NULL),(41,21,'Indranil Mukhopadhyay','CIO',NULL,NULL,NULL,'2024-06-13 19:21:50',NULL,NULL,NULL,NULL),(42,23,'Jiaming Li','Co-Founder',NULL,NULL,NULL,'2024-06-13 19:22:15',NULL,NULL,NULL,NULL),(43,23,'Chong Wang','Founder Partner',NULL,NULL,NULL,'2024-06-13 19:22:18',NULL,NULL,NULL,NULL),(44,25,'Charlie Rapple','Chief Customer Officer Co-founder',NULL,NULL,NULL,'2024-06-13 19:22:42',NULL,NULL,NULL,NULL),(45,25,'David Sommer','Chief Product Officer and Co-founder',NULL,NULL,NULL,'2024-06-13 19:22:46',NULL,NULL,NULL,NULL),(46,25,'Stuart Dawson','CFO',NULL,NULL,NULL,'2024-06-13 19:22:49',NULL,NULL,NULL,NULL),(47,25,'Melinda Kenneway','Chief Executive Officer Co-founder',NULL,NULL,NULL,'2024-06-13 19:22:52',NULL,NULL,NULL,NULL),(48,26,'Stephen Balaban','Co-Founder & CEO',NULL,NULL,NULL,'2024-06-13 19:23:03',NULL,NULL,NULL,NULL),(49,26,'Michael Balaban','Co-Founder & Head of Engineering',NULL,NULL,NULL,'2024-06-13 19:23:07',NULL,NULL,NULL,NULL),(50,26,'Chris MacNaughton','Senior Software Engineer',NULL,NULL,NULL,'2024-06-13 19:23:10',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employee_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_acquisitions`
--

DROP TABLE IF EXISTS `org_acquisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_acquisitions` (
  `org_acquisition_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `acquiree_name` varchar(100) DEFAULT NULL,
  `announced_date` date DEFAULT NULL,
  `acquiring_amount` bigint DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`org_acquisition_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_acquisitions_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_acquisitions`
--

LOCK TABLES `org_acquisitions` WRITE;
/*!40000 ALTER TABLE `org_acquisitions` DISABLE KEYS */;
INSERT INTO `org_acquisitions` VALUES (1,10,'WiteSand','2022-02-14',NULL,NULL,NULL,'2024-06-13 17:00:09',NULL,NULL,NULL,NULL),(2,10,'Apstra','2020-12-07',NULL,NULL,NULL,'2024-06-13 17:02:23',NULL,NULL,NULL,NULL),(3,10,'SISRA','2020-11-25',NULL,NULL,NULL,'2024-06-13 17:02:59',NULL,NULL,NULL,NULL),(4,10,'128 Technology','2020-10-19',450000000,'$',NULL,'2024-06-13 17:03:03',NULL,NULL,NULL,NULL),(5,10,'Mist Systems','2019-03-05',405000000,'$',NULL,'2024-06-13 17:03:05',NULL,NULL,NULL,NULL),(6,10,'HTBASE','2018-11-29',NULL,NULL,NULL,'2024-06-13 17:03:08',NULL,NULL,NULL,NULL),(7,10,'Cyphort','2017-08-31',NULL,NULL,NULL,'2024-06-13 17:03:12',NULL,NULL,NULL,NULL),(8,10,'AppFormix','2016-12-01',NULL,NULL,NULL,'2024-06-13 17:03:15',NULL,NULL,NULL,NULL),(9,10,'Aurrion','2016-08-02',NULL,NULL,NULL,'2024-06-13 17:03:19',NULL,NULL,NULL,NULL),(10,10,'BTI Systems','2016-04-04',NULL,NULL,NULL,'2024-06-13 17:03:21',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_acquisitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_contact_details`
--

DROP TABLE IF EXISTS `org_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_contact_details` (
  `contact_dtl_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `profile_photo` blob,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`contact_dtl_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_contact_details_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_contact_details`
--

LOCK TABLES `org_contact_details` WRITE;
/*!40000 ALTER TABLE `org_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_event_contestants`
--

DROP TABLE IF EXISTS `org_event_contestants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_event_contestants` (
  `event_contestant_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `contestant_name` varchar(100) DEFAULT NULL,
  `contestant_desc` varchar(500) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_contestant_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `org_event_contestants_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `org_events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_event_contestants`
--

LOCK TABLES `org_event_contestants` WRITE;
/*!40000 ALTER TABLE `org_event_contestants` DISABLE KEYS */;
INSERT INTO `org_event_contestants` VALUES (1,1,'Second State','WasmEdge: a lightweight, high-performance open source WebAssembly runtime specifically optimized for server-side & edge applications',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(2,2,'Alex Konviser','Founder',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(3,2,'Brey Laude','Founder',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(4,2,'Entitle','Automated least privilege access for critical cloud applications.',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(5,2,'Neu Ocean Technologies','Scalable AI-powered business management and automation PaaS & IaaS Provider.',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(6,2,'Alex Konviser','Founder',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(7,2,'Brey Laude','Founder',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(8,2,'Entitle','Automated least privilege access for critical cloud applications.',NULL,'2024-06-17 17:07:14',NULL,NULL,NULL,NULL),(9,2,'Neu Ocean Technologies','Scalable AI-powered business management and automation PaaS & IaaS Provider.',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(10,6,'MedUX','MedUX is the leading Internet Quality of Experience testing and monitoring company for fixed and mobile networks',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(11,8,'ReasonLabs','ReasonLabs is a leading cybersecurity company providing home users with the same level of cyber protection used by Fortune 500 companies.',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(12,17,'Aaron Mishkin','',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(13,17,'Aaron Roth','Professor',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(14,17,'Adish Singla','Tenure-track Faculty',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(15,17,'Akihiko Torii','Assistant Professor',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(16,17,'Alessandro Sordoni','Research Scientist',NULL,'2024-06-17 17:07:15',NULL,NULL,NULL,NULL),(17,17,'Alexander Rush','Associate Professor',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(18,17,'Alexandre Gramfort','Senior Research Scientist',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(19,17,'Alex Dimakis','Assistant Professor',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(20,17,'360 Security Center','360 Security Center is an all-in-one mobile optimizer and security app offering Internet and mobile security products.',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(21,17,'AITRICS','AITRICS is taking on the ultimate role of giving everyone access to the power of data-driven health intelligence.',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(22,17,'Alibaba Group','Alibaba Group enables businesses to transform the way they market, sell, operate, and improve their efficiencies.',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(23,17,'Amazon','Amazon is a global tech firm with a focus on e-commerce, cloud computing, digital streaming, and artificial intelligence.',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(24,17,'Ant Group','Ant Group strives to enable all consumers and small businesses to have equal access to financial and other services through technology.',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(25,17,'Apple','Apple is a corporation that designs, manufactures, and markets consumer electronics, personal computers, and software.',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL),(26,17,'AimBrain','AimBrain helps organisations detect and prevent fraud. Anomaly detection, behavioural biometrics & 3 active biometric authentication modules',NULL,'2024-06-17 17:07:16',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_event_contestants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_event_exibitors`
--

DROP TABLE IF EXISTS `org_event_exibitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_event_exibitors` (
  `event_exibitor_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `exibitor_name` varchar(100) DEFAULT NULL,
  `exibitor_desc` varchar(500) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_exibitor_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `org_event_exibitors_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `org_events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_event_exibitors`
--

LOCK TABLES `org_event_exibitors` WRITE;
/*!40000 ALTER TABLE `org_event_exibitors` DISABLE KEYS */;
INSERT INTO `org_event_exibitors` VALUES (1,9,' Accenture ','Accenture is a professional services company, providing services and solutions in strategy, consulting, digital, technology and operations.',NULL,'2024-06-17 12:56:30',NULL,NULL,NULL,NULL),(2,9,' Accu-Time Systems ','Accu-Time Systems provides integrated, advanced and easy to use, time and attendance solutions.',NULL,'2024-06-17 12:56:55',NULL,NULL,NULL,NULL),(3,9,' Actifio ','Actifio delivers enterprise data-as-a-service to global enterprise customers and service provider partners.',NULL,'2024-06-17 12:56:56',NULL,NULL,NULL,NULL),(4,9,' API Wizard ','API Wizard they entire focus on helping organizations spend less time on data entry & maintenance while improving data quality, get quicker.',NULL,'2024-06-17 12:56:57',NULL,NULL,NULL,NULL),(5,9,' Applaud ','Description',NULL,'2024-06-17 14:07:08',NULL,NULL,NULL,NULL),(6,9,' AppsForte ','AppsForte Inc is specializes in providing IT services including Managed Hosting, Application Development, and Disaster Recovery services.',NULL,'2024-06-17 14:09:36',NULL,NULL,NULL,NULL),(7,10,' Accu-Time Systems ','Accu-Time Systems provides integrated, advanced and easy to use, time and attendance solutions.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(8,10,' Actifio ','Actifio delivers enterprise data-as-a-service to global enterprise customers and service provider partners.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(9,10,' ADP ','ADP provides business outsourcing solutions that facilitate businesses in HR, payroll, and administration processes.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(10,10,' Agamon ','Agamon is an AI-powered healthcare platform that converts clinical text into structured data.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(11,10,' Akgun Software ','Akgun is a software company providing solutions in the fields of healthcare information systems.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(12,10,' Alpha Net Consulting ','Anetcorp India is a IT services company offering solutions to complex business problems.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(13,11,' 3Di Systems ','3Di Systems is recognized as a leading expert in providing custom web and mobile.',NULL,'2024-06-17 14:09:37',NULL,NULL,NULL,NULL),(14,11,' Accenture ','Accenture is a professional services company, providing services and solutions in strategy, consulting, digital, technology and operations.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(15,11,' Accu-Time Systems ','Accu-Time Systems provides integrated, advanced and easy to use, time and attendance solutions.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(16,11,' Actifio ','Actifio delivers enterprise data-as-a-service to global enterprise customers and service provider partners.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(17,11,' ADP ','ADP provides business outsourcing solutions that facilitate businesses in HR, payroll, and administration processes.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(18,11,' AlphaNet Solutions ','AlphaNet Solutions is a company providing IT services and computer repairs.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(19,1,' Acqueon ','Acqueon is an innovative provider of conversational engagement software.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(20,1,' Aisera ','Aisera is a leading provider of Generative AI Solutions that helps enterprises boost revenue, improve user productivity & get immediate ROI.',NULL,'2024-06-17 14:09:38',NULL,NULL,NULL,NULL),(21,1,' aptpod ','aptpod has been in pursuit of frameworks that optimize all layers of data gathering.',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(22,1,' Armory ','Armory is an enterprise software company commercializing the open-source continuous delivery platform, Spinnaker.',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(23,1,' BICS ','BICS is recognized in the wholesale communications market as a top global voice carrier and the leading provider of mobile data services',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(24,1,' Bloombase ','Bloombase is an intelligent storage firewall company',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(25,2,' 0pass ','0pass is an authentication platform that removes the number one cybersecurity risk facing organizations.',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(26,2,' 1Password ','1Password operates as a password manager for documents, credit card information, and addresses.',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(27,2,' A2secure ','A2Secure specializes in digital security, helping its clients to manage the risk against the threats from electronic communications.',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(28,2,' A3Sec ','A3Sec is a CyberSecurity company providing Managed Detection & Response Services',NULL,'2024-06-17 14:09:39',NULL,NULL,NULL,NULL),(29,2,' Abacode ','Abacode is a cybersecurity and compliance services company.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(30,2,' Abnormal Security ','Abnormal Security is an email security company that protects enterprises and organizations from targeted email attacks.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(31,2,' 0pass ','0pass is an authentication platform that removes the number one cybersecurity risk facing organizations.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(32,2,' 1Password ','1Password operates as a password manager for documents, credit card information, and addresses.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(33,2,' A2secure ','A2Secure specializes in digital security, helping its clients to manage the risk against the threats from electronic communications.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(34,2,' A3Sec ','A3Sec is a CyberSecurity company providing Managed Detection & Response Services',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(35,2,' Abacode ','Abacode is a cybersecurity and compliance services company.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(36,2,' Abnormal Security ','Abnormal Security is an email security company that protects enterprises and organizations from targeted email attacks.',NULL,'2024-06-17 14:09:40',NULL,NULL,NULL,NULL),(37,4,' FitVity ','FitVity sells everything from the best value high-quality whey protein concentrate, to the latest US pre-workout supplements.',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(38,4,' Mondoo ','A security solution for DevOps and security teams',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(39,4,' Pepperdata ','Pepperdata provides real-time, automated cost optimization for Amazon EMR & EKS with no manual tuning and no application changes',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(40,5,' Akamai ','Akamai is a healthy personal care consumer goods company. It creates and sells healthy, natural, nutrient-rich, and more.',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(41,5,' Anomali ','Anomali is the leader in intelligence driven extended detection and response cybersecurity solutions.',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(42,5,' AT&T CyberSecurity ','AT&T CyberSecurity provides threat intelligence, collaborative defense, and security solutions for businesses.',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(43,5,' Auconet, Inc. ','Auconet’s technology and its ease of integration allow partners to elevate the value they offer to their enterprise customers.',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(44,5,' BigID ','BigID is a data intelligence company that helps organizations discover, manage, and protect sensitive information.',NULL,'2024-06-17 14:09:41',NULL,NULL,NULL,NULL),(45,5,' Bitdefender ','Bitdefender is a security technology company that provides advanced threat protection to both business and consumer customers.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(46,6,' ADB ','System Solutions for Pay-TV and Telco operators, content distributors and hospitality property owners',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(47,6,' Aerial ','Aerial leverages AI and existing wireless infrastructure to create Sensing Intelligence that enables smarter applications',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(48,6,' Aethra Telecommunications ','Aethra is a provider and manufacturer of telecommunication products and networks.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(49,6,' Albis Elcon ','Albis Elcon supplies communication service providers (CSP) in the telecommunications industry.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(50,6,' Allied Telesis ','A Telesis operates sales, leasing, distribution, and maintenance facilities in the United States, Canada, United Kingdom, Finland and China.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(51,6,' Altice Labs ','Altice Labs is focused on the development of innovative products and services for ICT markets.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(52,7,' Andrew Lewman ','Andrew Lewman is the Technical Advisor at SPJ GTM. He attended Framingham State University.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(53,7,' Jscrambler ','Jscrambler is the leading client-side security solution for JavaScript protection and webpage real-time monitoring.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(54,7,' Mesh7 ','Mesh7 provides run-time cloud application security observability to detect and mitigate all blind spot risks of modern applications.',NULL,'2024-06-17 14:09:42',NULL,NULL,NULL,NULL),(55,8,' Akamai Technologies ','Akamai is a provider of cloud services that help enterprises provide secure, high-performing user experiences on any device.',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(56,8,' Authomize (Now part of Delinea) ','Authomize is an Detect and Eliminate Identity threats across cloud and IAM.',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(57,8,' Bloombase ','Bloombase is an intelligent storage firewall company',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(58,8,' FireEye ','FireEye is an intelligence-led security company that protects customers using innovative technology and expertise from the front lines.',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(59,8,' Fortinet ','Fortinet is a provider of network security appliances that include firewalls, security gateways, and complementary products.',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(60,8,' Juniper Networks ','Juniper Networks is a networking company that markets and develops networking products for enterprise companies.',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(61,12,' Heyday AI ','Heyday is the leading Conversational AI platform for retailers.',NULL,'2024-06-17 14:09:43',NULL,NULL,NULL,NULL),(62,12,' Lambda ','Lambda is a cloud-based GPU company catering to developers throughout the entire lifecycle of AI development.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(63,12,' MachEye ','Natural Search & AI-Powered Interactive Analytics',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(64,12,' Rasa ','Rasa provides an open platform for generative conversational AI, enabling the creation and deployment of advanced AI assistants.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(65,12,' Valohai ','Valohai develops a MLOps platform designed for ML pioneers.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(66,12,' Weights & Biases ','Weights & Biases is a developer-first MLOps platform that builds machine learning performance visualization tools.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(67,14,' 3dMD ','3dMD is the world leader in the development of anatomically-precise 3D and “temporal-3D” (4D) surface imaging systems.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(68,14,' ABEJA ','ABEJA is a platform that integrate state-of-the-art AI technologies including IoT, big data, and deep learning.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(69,14,' Adobe ','Adobe is a software company that provides its users with digital marketing and media solutions.',NULL,'2024-06-17 14:09:44',NULL,NULL,NULL,NULL),(70,14,' Aibee ','Aibee is an AI startup that develops speech recognition, big data analysis, and natural language processing technologies.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(71,14,' Alegion ','Alegion’s platform blends human and machine intelligence to provide accurate labeled data used to train or validate machine learning models.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(72,14,' Algolux ','Algolux empowers vision systems with the most robust perception technology for all conditions.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(73,14,' 3dMD ','3dMD is the world leader in the development of anatomically-precise 3D and “temporal-3D” (4D) surface imaging systems.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(74,14,' ABEJA ','ABEJA is a platform that integrate state-of-the-art AI technologies including IoT, big data, and deep learning.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(75,14,' Adobe ','Adobe is a software company that provides its users with digital marketing and media solutions.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(76,14,' Aibee ','Aibee is an AI startup that develops speech recognition, big data analysis, and natural language processing technologies.',NULL,'2024-06-17 14:09:45',NULL,NULL,NULL,NULL),(77,14,' Alegion ','Alegion’s platform blends human and machine intelligence to provide accurate labeled data used to train or validate machine learning models.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(78,14,' Algolux ','Algolux empowers vision systems with the most robust perception technology for all conditions.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(79,16,' Chatbase ','We develop AI technologies and tools to help Contact Center create smarter virtual agents more effectively.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(80,16,' Determined AI ','Determined AI is a machine learning tech company that revolutionizes the way deep models are trained and deployed.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(81,16,' iMerit ','iMerit provides AI data solutions across computer vision and natural language processing for AI developers.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(82,16,' Next AI ','Next AI is a global innovation hub for artificial intelligence related venture creation and technology commercialization.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(83,16,' NFLabs ','NFLabs’ mission is to simplify the way the world analyzes data.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(84,16,' Ouster ','Ouster builds high-resolution digital lidar sensors for industrial automation, smart infrastructure, robotics, and automotive.',NULL,'2024-06-17 14:09:46',NULL,NULL,NULL,NULL),(85,19,' Blue Scan Labs ','Blue Scan Labs is a real time cancer screening platform powered by artificial intelligence.',NULL,'2024-06-17 14:09:47',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_event_exibitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_event_speakers`
--

DROP TABLE IF EXISTS `org_event_speakers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_event_speakers` (
  `event_speaker_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `speaker_name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_speaker_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `org_event_speakers_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `org_events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_event_speakers`
--

LOCK TABLES `org_event_speakers` WRITE;
/*!40000 ALTER TABLE `org_event_speakers` DISABLE KEYS */;
INSERT INTO `org_event_speakers` VALUES (1,1,' Ana Margarita Medina ','Staff Developer Advocate',' LightStep ',NULL,'2024-06-17 15:22:13',NULL,NULL,NULL,NULL),(2,1,' Bhaskarjyoti Saikia ','','',NULL,'2024-06-17 15:22:15',NULL,NULL,NULL,NULL),(3,1,' Joshua Burgin ','','',NULL,'2024-06-17 15:22:17',NULL,NULL,NULL,NULL),(4,1,' Luis Maldonado ','','',NULL,'2024-06-17 15:22:19',NULL,NULL,NULL,NULL),(5,1,' Provectus ','','',NULL,'2024-06-17 15:22:22',NULL,NULL,NULL,NULL),(6,2,' Aakash Shah ','CTO',' oak9 ',NULL,'2024-06-17 15:22:24',NULL,NULL,NULL,NULL),(7,2,' Aaron Rosenmund ','Director of Security Research and Curriculum',' Pluralsight ',NULL,'2024-06-17 15:22:27',NULL,NULL,NULL,NULL),(8,2,' Aaron Stanley ','VP of Security',' dbt Labs ',NULL,'2024-06-17 15:22:29',NULL,NULL,NULL,NULL),(9,2,' Aaron Turner ','SaaS CTO',' Vectra Networks ',NULL,'2024-06-17 15:22:32',NULL,NULL,NULL,NULL),(10,2,' Abel Rodriguez ','','',NULL,'2024-06-17 15:22:34',NULL,NULL,NULL,NULL),(11,2,' Abhay Bhargav ','Founder and CEO',' we45 ',NULL,'2024-06-17 15:22:36',NULL,NULL,NULL,NULL),(12,2,' Abhijith B R ','Founder',' Adversary Village ',NULL,'2024-06-17 15:22:39',NULL,NULL,NULL,NULL),(13,2,' Abhilasha Bhargav-Spantzel ','Partner Security Architect',' Microsoft ',NULL,'2024-06-17 15:22:41',NULL,NULL,NULL,NULL),(14,2,' Aakash Shah ','CTO',' oak9 ',NULL,'2024-06-17 15:22:44',NULL,NULL,NULL,NULL),(15,2,' Aaron Rosenmund ','Director of Security Research and Curriculum',' Pluralsight ',NULL,'2024-06-17 15:22:46',NULL,NULL,NULL,NULL),(16,2,' Aaron Stanley ','VP of Security',' dbt Labs ',NULL,'2024-06-17 15:22:49',NULL,NULL,NULL,NULL),(17,2,' Aaron Turner ','SaaS CTO',' Vectra Networks ',NULL,'2024-06-17 15:22:51',NULL,NULL,NULL,NULL),(18,2,' Abel Rodriguez ','','',NULL,'2024-06-17 15:22:53',NULL,NULL,NULL,NULL),(19,2,' Abhay Bhargav ','Founder and CEO',' we45 ',NULL,'2024-06-17 15:22:56',NULL,NULL,NULL,NULL),(20,2,' Abhijith B R ','Founder',' Adversary Village ',NULL,'2024-06-17 15:22:58',NULL,NULL,NULL,NULL),(21,2,' Abhilasha Bhargav-Spantzel ','Partner Security Architect',' Microsoft ',NULL,'2024-06-17 15:23:01',NULL,NULL,NULL,NULL),(22,4,' Abdullah Gharaibeh ','','',NULL,'2024-06-17 15:23:03',NULL,NULL,NULL,NULL),(23,4,' Abdul Qadeer ','Member Of Technical Staff',' PayPal ',NULL,'2024-06-17 15:23:05',NULL,NULL,NULL,NULL),(24,4,' Abu Kashem ','Principal Software Engineer',' Red Hat ',NULL,'2024-06-17 15:23:07',NULL,NULL,NULL,NULL),(25,4,' Adam Kaplan ','','',NULL,'2024-06-17 15:23:09',NULL,NULL,NULL,NULL),(26,4,' Adam Parco ','','',NULL,'2024-06-17 15:23:12',NULL,NULL,NULL,NULL),(27,4,' Adi Polak ','','',NULL,'2024-06-17 15:23:15',NULL,NULL,NULL,NULL),(28,4,' Aditi Ghag ','','',NULL,'2024-06-17 15:23:17',NULL,NULL,NULL,NULL),(29,4,' Adolfo García Veytia ','Staff Software Engineer',' Chainguard ',NULL,'2024-06-17 15:23:19',NULL,NULL,NULL,NULL),(30,5,' Aaron Rosenmund ','Director of Security Research and Curriculum',' Pluralsight ',NULL,'2024-06-17 15:23:22',NULL,NULL,NULL,NULL),(31,5,' Amy Hogan- Burney ','General Manager of the Digital Crimes Unit/Associate General Counsel',' Microsoft ',NULL,'2024-06-17 15:23:24',NULL,NULL,NULL,NULL),(32,5,' Andrew Kirkland ','','',NULL,'2024-06-17 15:23:26',NULL,NULL,NULL,NULL),(33,5,' Beat Buesser ','Research Staff Member, AI Security and Privacy',' IBM Research ',NULL,'2024-06-17 15:23:29',NULL,NULL,NULL,NULL),(34,5,' Bobbie Stempfley ','Vice President and Business Unit Security Officer',' Dell Technologies ',NULL,'2024-06-17 15:23:31',NULL,NULL,NULL,NULL),(35,5,' Bob Lord ','CSO',' Democratic National Committee ',NULL,'2024-06-17 15:23:34',NULL,NULL,NULL,NULL),(36,5,' Bob Quinn ','Operations and Training Lead',' TPCM-USA ',NULL,'2024-06-17 15:23:36',NULL,NULL,NULL,NULL),(37,5,' Bruce Schneier ','Adjunct Lecturer in Public Policy',' Harvard Kennedy School ',NULL,'2024-06-17 15:23:39',NULL,NULL,NULL,NULL),(38,6,' Ahmed Hafez ','','',NULL,'2024-06-17 15:23:41',NULL,NULL,NULL,NULL),(39,6,' Alex Goldblum ','Chief Executive Officer',' Eurofiber ',NULL,'2024-06-17 15:23:43',NULL,NULL,NULL,NULL),(40,6,' Anders Bloom ','','',NULL,'2024-06-17 15:23:45',NULL,NULL,NULL,NULL),(41,6,' Babak Fouladi ','Group CTIO',' MTN Group ',NULL,'2024-06-17 15:23:48',NULL,NULL,NULL,NULL),(42,6,' Boris Dragovic ','Chief Strategy and Transformation Officer',' Hyperoptic ',NULL,'2024-06-17 15:23:50',NULL,NULL,NULL,NULL),(43,6,' Brian Danfield ','Vice President, Commercial and 5G Planning',' Verizon ',NULL,'2024-06-17 15:23:52',NULL,NULL,NULL,NULL),(44,6,' Cemil Soylu ','','',NULL,'2024-06-17 15:23:54',NULL,NULL,NULL,NULL),(45,6,' David Cullen ','','',NULL,'2024-06-17 15:23:57',NULL,NULL,NULL,NULL),(46,7,' Aika Sengirbay ','','',NULL,'2024-06-17 15:23:59',NULL,NULL,NULL,NULL),(47,7,' Aladdin Almubayed ','','',NULL,'2024-06-17 15:24:01',NULL,NULL,NULL,NULL),(48,7,' Alessandro Di Pinto ','Director of Security Research',' Nozomi Networks ',NULL,'2024-06-17 15:24:03',NULL,NULL,NULL,NULL),(49,7,' Alexander Klimburg ','Senior Fellow',' Institute for Advanced Studies (IHS), Vienna ',NULL,'2024-06-17 15:24:06',NULL,NULL,NULL,NULL),(50,7,' Alexandre Adamski ','R&D Engineer',' QUARKS LAB ',NULL,'2024-06-17 15:24:08',NULL,NULL,NULL,NULL),(51,7,' Alexandre Gazet ','Information Security Researcher',' Airbus ',NULL,'2024-06-17 15:24:10',NULL,NULL,NULL,NULL),(52,7,' Alex Matrosov ','Founder and CEO',' BINARLY ',NULL,'2024-06-17 15:24:13',NULL,NULL,NULL,NULL),(53,7,' Allan Friedman ','Director of Cybersecurity',' U.S. Department of Commerce ',NULL,'2024-06-17 15:24:15',NULL,NULL,NULL,NULL),(54,8,' Edwin Kwan ','','',NULL,'2024-06-17 15:24:17',NULL,NULL,NULL,NULL),(55,8,' Shannon Lietz ','Founder',' ThirdScore ',NULL,'2024-06-17 15:24:19',NULL,NULL,NULL,NULL),(56,12,' Abhinav Gupta ','Director of Product Design',' ThoughtSpot ',NULL,'2024-06-17 15:24:23',NULL,NULL,NULL,NULL),(57,12,' Ajay Singh ','Principal Investor',' Samsung NEXT ',NULL,'2024-06-17 15:24:25',NULL,NULL,NULL,NULL),(58,12,' Anh Nguyen ','','',NULL,'2024-06-17 15:24:27',NULL,NULL,NULL,NULL),(59,12,' Anirudh Koul ','','',NULL,'2024-06-17 15:24:30',NULL,NULL,NULL,NULL),(60,12,' Aravind Srinivas ','Co-Founder and Chief Executive Officer',' Perplexity AI ',NULL,'2024-06-17 15:24:32',NULL,NULL,NULL,NULL),(61,12,' Ari Morcos ','CEO',' DatologyAI ',NULL,'2024-06-17 15:24:34',NULL,NULL,NULL,NULL),(62,12,' Azalia Mirhoseini ','Member of Technical Staff',' Anthropic ',NULL,'2024-06-17 15:24:36',NULL,NULL,NULL,NULL),(63,12,' Balaji Lakshminarayanan ','Staff Research Scientist (TL/Manager)',' Google ',NULL,'2024-06-17 15:24:39',NULL,NULL,NULL,NULL),(64,13,' doc.ai ','','',NULL,'2024-06-17 15:24:41',NULL,NULL,NULL,NULL),(65,14,' StradVision ','','',NULL,'2024-06-17 15:24:43',NULL,NULL,NULL,NULL),(66,14,' StradVision ','','',NULL,'2024-06-17 15:24:45',NULL,NULL,NULL,NULL),(67,16,' Abhishek Gupta ','AI Ethics Researcher',' McGill University ',NULL,'2024-06-17 15:24:48',NULL,NULL,NULL,NULL),(68,16,' Ajay Singh ','Principal Investor',' Samsung NEXT ',NULL,'2024-06-17 15:24:50',NULL,NULL,NULL,NULL),(69,16,' Ben Roome ','Founder',' Knowledgestreem ',NULL,'2024-06-17 15:24:52',NULL,NULL,NULL,NULL),(70,16,' Catherine Lu ','Founder & Managing Partner',' Basecamp Fund ',NULL,'2024-06-17 15:24:55',NULL,NULL,NULL,NULL),(71,16,' Chelsea Finn ','','',NULL,'2024-06-17 15:24:57',NULL,NULL,NULL,NULL),(72,16,' Dr. Alicia Kavelaars ','Co-founder and Chief Technology Officer',' OffWorld ',NULL,'2024-06-17 15:24:59',NULL,NULL,NULL,NULL),(73,16,' Fiona J McEvoy ','Founder and Tech Ethics Writer/Researcher',' YouTheData ',NULL,'2024-06-17 15:25:02',NULL,NULL,NULL,NULL),(74,16,' Georgia Gkioxari ','Research Scientist at Facebook AI Research',' Meta ',NULL,'2024-06-17 15:25:04',NULL,NULL,NULL,NULL),(75,17,' Aaron Mishkin ','','',NULL,'2024-06-17 15:25:06',NULL,NULL,NULL,NULL),(76,17,' Aaron Roth ','Professor',' University of Pennsylvania ',NULL,'2024-06-17 15:25:09',NULL,NULL,NULL,NULL),(77,17,' Adish Singla ','Tenure-track Faculty',' Max Planck Institute for Software Systems ',NULL,'2024-06-17 15:25:11',NULL,NULL,NULL,NULL),(78,17,' Akihiko Torii ','Assistant Professor',' Tokyo Institute of Technology ',NULL,'2024-06-17 15:25:13',NULL,NULL,NULL,NULL),(79,17,' Alessandro Sordoni ','Research Scientist',' Microsoft ',NULL,'2024-06-17 15:25:16',NULL,NULL,NULL,NULL),(80,17,' Alexander Rush ','Associate Professor',' Cornell Tech ',NULL,'2024-06-17 15:25:18',NULL,NULL,NULL,NULL),(81,17,' Alexandre Gramfort ','Senior Research Scientist',' INRIA ',NULL,'2024-06-17 15:25:20',NULL,NULL,NULL,NULL),(82,17,' Alex Dimakis ','Assistant Professor',' The University of Texas at Austin ',NULL,'2024-06-17 15:25:23',NULL,NULL,NULL,NULL),(83,18,' Charles Giancarlo ','CEO and Chairman',' Pure Storage ',NULL,'2024-06-17 15:25:25',NULL,NULL,NULL,NULL),(84,18,' David Hatfield ','Co-Chief Executive Officer',' Lacework ',NULL,'2024-06-17 15:25:28',NULL,NULL,NULL,NULL),(85,18,' Kate Darling ','IP Research Specialist',' MIT Media Lab ',NULL,'2024-06-17 15:25:30',NULL,NULL,NULL,NULL),(86,18,' Matt Kixmoeller ','VP, Strategy',' Pure Storage ',NULL,'2024-06-17 15:25:33',NULL,NULL,NULL,NULL),(87,19,' Adam Al-Natsheh ','Quantitative Research Analyst',' Citadel Securities ',NULL,'2024-06-17 15:25:35',NULL,NULL,NULL,NULL),(88,19,' Adrian Dalca ','','',NULL,'2024-06-17 15:25:37',NULL,NULL,NULL,NULL),(89,19,' Adrian Weller ','Principal Research Fellow',' University of Cambridge ',NULL,'2024-06-17 15:25:39',NULL,NULL,NULL,NULL),(90,19,' Alán Aspuru-Guzik ','Chief Visionary Officer',' Kebotix ',NULL,'2024-06-17 15:25:42',NULL,NULL,NULL,NULL),(91,19,' Alborz Geramifard ','Senior Research Manager',' Meta ',NULL,'2024-06-17 15:25:44',NULL,NULL,NULL,NULL),(92,19,' Alekh Agarwal ','Staff Research Scientist',' Google ',NULL,'2024-06-17 15:25:46',NULL,NULL,NULL,NULL),(93,19,' Alessandra Tosi ','','',NULL,'2024-06-17 15:25:49',NULL,NULL,NULL,NULL),(94,19,' Alexander Ratner ','Co-Founder and CEO',' Snorkel AI ',NULL,'2024-06-17 15:25:51',NULL,NULL,NULL,NULL),(95,9,' Nader Sabry ','','',NULL,'2024-06-17 15:25:54',NULL,NULL,NULL,NULL),(96,9,' Netifi ','','',NULL,'2024-06-17 15:25:57',NULL,NULL,NULL,NULL),(97,9,' Rajesh Easwaramoorthy ','','',NULL,'2024-06-17 15:25:59',NULL,NULL,NULL,NULL),(98,10,' Amity Millhiser ','Vice Chair',' PwC ',NULL,'2024-06-17 15:26:01',NULL,NULL,NULL,NULL),(99,10,' Anil Dash ','Chief Executive Officer',' Glitch ',NULL,'2024-06-17 15:26:04',NULL,NULL,NULL,NULL),(100,10,' Beth Boettcher ','Senior Vice President, Customer Champion Leader',' Oracle ',NULL,'2024-06-17 15:26:06',NULL,NULL,NULL,NULL),(101,10,' Beverly Rider ','Executive Director',' NEOM ',NULL,'2024-06-17 15:26:08',NULL,NULL,NULL,NULL),(102,10,' Brian Greene ','Founder',' World Science Festival ',NULL,'2024-06-17 15:26:11',NULL,NULL,NULL,NULL),(103,10,' Claudia Saran ','Vice Chair, Culture',' KPMG ',NULL,'2024-06-17 15:26:13',NULL,NULL,NULL,NULL),(104,10,' Diego Pantoja-Navajas ','Vice President of New Products, AWS Business Applications',' Amazon Web Services ',NULL,'2024-06-17 15:26:16',NULL,NULL,NULL,NULL),(105,10,' Edward Screven ','Chief Corporate Architect',' Oracle ',NULL,'2024-06-17 15:26:18',NULL,NULL,NULL,NULL),(106,11,' Barbara Boxer ','','',NULL,'2024-06-17 15:26:20',NULL,NULL,NULL,NULL),(107,11,' Becky Sage ','Director of Acceleration',' EDUCATE Ventures Research ',NULL,'2024-06-17 15:26:22',NULL,NULL,NULL,NULL),(108,11,' Christy Haubegger ','Executive',' Creative Artists Agency ',NULL,'2024-06-17 15:26:25',NULL,NULL,NULL,NULL),(109,11,' Dave Donatelli ','EVP & General Manager, Enterprise Group',' HP ',NULL,'2024-06-17 15:26:27',NULL,NULL,NULL,NULL),(110,11,' Debbie Sterling ','Founder / CEO',' GoldieBlox ',NULL,'2024-06-17 15:26:29',NULL,NULL,NULL,NULL),(111,11,' Douglas Fisher ','Senior Vice President & Chief Security Officer',' Lenovo ',NULL,'2024-06-17 15:26:32',NULL,NULL,NULL,NULL),(112,11,' Ganesan Rathinam ','Founder, Executive Director, Chain-Sys Corporation',' Chain Sys ',NULL,'2024-06-17 15:26:34',NULL,NULL,NULL,NULL),(113,11,' Jerry West ','','',NULL,'2024-06-17 15:26:36',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_event_speakers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_event_sponsors`
--

DROP TABLE IF EXISTS `org_event_sponsors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_event_sponsors` (
  `event_sponsor_id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `sponsor_name` varchar(100) DEFAULT NULL,
  `sponsor_desc` varchar(500) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_sponsor_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `org_event_sponsors_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `org_events` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_event_sponsors`
--

LOCK TABLES `org_event_sponsors` WRITE;
/*!40000 ALTER TABLE `org_event_sponsors` DISABLE KEYS */;
INSERT INTO `org_event_sponsors` VALUES (1,1,'128 Technology','128 Technology provides software-based routing solutions that enable enterprises and service providers to build networks.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(2,1,'2nd Watch','2nd Watch is an AWS Premier Partner and a Microsoft Azure Gold Partner that provides consulting and managed cloud services to enterprises.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(3,1,'8x8','8x8 offers secure and reliable cloud-based, enterprise-class business phone systems, unified communications, and contact center solutions.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(4,1,'Ab Initio','Ab Initio is a software platform providing high-volume data processing systems and enterprise application integration for businesses.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(5,1,'Accenture','Accenture is a professional services company, providing services and solutions in strategy, consulting, digital, technology and operations.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(6,1,'A Cloud Guru','A Cloud Guru is a social learning platform for cloud computing.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(7,2,'Acronis','Acronis unifies data protection & cybersecurity to deliver integrated, automated cyber protection to solve challenges of the digital world.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(8,2,'Actimize','NICE Actimize provides real-time fraud prevention, anti-money laundering, enterprise investigations and risk management solutions.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(9,2,'Akamai Technologies','Akamai is a provider of cloud services that help enterprises provide secure, high-performing user experiences on any device.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(10,2,'Armis Security','Armis is a developer of an asset intelligence platform to analyze endpoint behavior to identify risks and attacks.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(11,2,'AT&T CyberSecurity','AT&T CyberSecurity provides threat intelligence, collaborative defense, and security solutions for businesses.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(12,2,'Axonius','Axonius is an asset inventory management platform that focuses on cybersecurity solutions and policies.',NULL,'2024-06-17 16:34:00',NULL,NULL,NULL,NULL),(13,2,'Acronis','Acronis unifies data protection & cybersecurity to deliver integrated, automated cyber protection to solve challenges of the digital world.',NULL,'2024-06-17 16:34:01',NULL,NULL,NULL,NULL),(14,2,'Actimize','NICE Actimize provides real-time fraud prevention, anti-money laundering, enterprise investigations and risk management solutions.',NULL,'2024-06-17 16:34:01',NULL,NULL,NULL,NULL),(15,2,'Akamai Technologies','Akamai is a provider of cloud services that help enterprises provide secure, high-performing user experiences on any device.',NULL,'2024-06-17 16:34:01',NULL,NULL,NULL,NULL),(16,2,'Armis Security','Armis is a developer of an asset intelligence platform to analyze endpoint behavior to identify risks and attacks.',NULL,'2024-06-17 16:34:01',NULL,NULL,NULL,NULL),(17,2,'AT&T CyberSecurity','AT&T CyberSecurity provides threat intelligence, collaborative defense, and security solutions for businesses.',NULL,'2024-06-17 16:34:01',NULL,NULL,NULL,NULL),(18,2,'Axonius','Axonius is an asset inventory management platform that focuses on cybersecurity solutions and policies.',NULL,'2024-06-17 16:34:01',NULL,NULL,NULL,NULL),(19,4,'Accurics','Accurics is a cloud cyber resilience specialist that enables resilient, self-healing cloud-native infrastructure.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(20,4,'Acnodal, Inc.','Acnodal is a cloud native network infrastructure company.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(21,4,'Aiven','Aiven is a technology-driven company that enables businesses to manage an open-source data infrastructure in the cloud.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(22,4,'Amazon Web Services','Amazon Web Services provides information technology infrastructure services to businesses in the form of web services.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(23,4,'Ambassador','Ambassador turns your customers into new revenue by automating and scaling referral, partner, influencer & affiliate marketing programs.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(24,4,'Anchore','Anchore helps organizations implement secure container-based workflows without compromising velocity.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(25,5,'Anitian','Delivering the fastest path to security and compliance in the cloud.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(26,5,'AT&T CyberSecurity','AT&T CyberSecurity provides threat intelligence, collaborative defense, and security solutions for businesses.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(27,5,'BigID','BigID is a data intelligence company that helps organizations discover, manage, and protect sensitive information.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(28,5,'Bitglass','Bitglass is an information technology company that helps enterprises move to SaaS-based and mobile deployments securely.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(29,5,'Blackberry','BlackBerry provides wireless devices and solutions for the worldwide mobile communications market.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(30,5,'BrandShield','BrandShield is a brand-oriented digital risk protection company providing threat detection and remediation solutions.',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(31,6,'ADTRAN','ADTRAN, Inc. designs, manufactures, markets, and services network access solutions that enable voice, data, video, and Internet',NULL,'2024-06-17 16:34:02',NULL,NULL,NULL,NULL),(32,6,'ASSIA','Broadband and Wi-Fi performance monitoring, management and optimization solutions for Internet Service Providers',NULL,'2024-06-17 16:34:03',NULL,NULL,NULL,NULL),(33,6,'Cambridge Industries Group','CIG can partner with your company to better serve your customer needs.',NULL,'2024-06-17 16:34:03',NULL,NULL,NULL,NULL),(34,6,'FiberHome Technologies','FiberHome Technologies is China\'s outstanding field of information and communication products and integrated solutions provider.',NULL,'2024-06-17 16:38:41',NULL,NULL,NULL,NULL),(35,6,'F-Secure','F-Secure is an IT security company that specializes in providing security software and solutions.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(36,6,'Huawei Technologies','Huawei Technologies provides infrastructure application software and devices with wireline, wireless, and IP technologies.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(37,7,'1Password','1Password operates as a password manager for documents, credit card information, and addresses.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(38,7,'A10 Networks','A10 Networks offers solutions for accelerating web application delivery, bandwidth management and network identity issues.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(39,7,'Abnormal Security','Abnormal Security is an email security company that protects enterprises and organizations from targeted email attacks.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(40,7,'Acalvio Technologies','Acalvio, the leader in cyber deception technology, helps enterprises actively defend against advanced security threats.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(41,7,'Accenture','Accenture is a professional services company, providing services and solutions in strategy, consulting, digital, technology and operations.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(42,7,'Active CounterMeasures','Active CounterMeasures produces threat hunting software that can detect malware and malicious backdoors.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(43,8,'Check Point Software Technologies','Check Point Software Technologies provides and protects customers from cyberattacks.',NULL,'2024-06-17 16:38:42',NULL,NULL,NULL,NULL),(44,8,'Cisco','Cisco develops, manufactures, and sells networking hardware, telecommunications equipment, and other technology services and products.',NULL,'2024-06-17 16:38:43',NULL,NULL,NULL,NULL),(45,8,'Exabeam','Exabeam is a global cybersecurity leader that delivers AI-driven security operations. Learn more at www.exabeam.com.',NULL,'2024-06-17 16:38:43',NULL,NULL,NULL,NULL),(46,8,'Forcepoint','Forcepoint is a data protection cybersecurity firm that helps businesses in securing users, data, and networks while enabling development.',NULL,'2024-06-17 16:38:43',NULL,NULL,NULL,NULL),(47,8,'IBM','IBM is an IT technology and consulting firm providing computer hardware, software, infrastructure, and hosting services.',NULL,'2024-06-17 16:38:43',NULL,NULL,NULL,NULL),(48,8,'McAfee','McAfee is an online security company that provides virus alerts and analysis on malware, network security threats, and web vulnerabilities.',NULL,'2024-06-17 16:38:43',NULL,NULL,NULL,NULL),(49,12,'Comet','Comet allows data scientists to automatically track their datasets, code changes, experimentation history, and production models.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(50,12,'Microsoft','Microsoft is a software corporation that develops, manufactures, licenses, supports, and sells a range of software products and services.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(51,12,'NGD Systems','NGD Systems manufactures the world’s most advanced computational storage drives (CSDs) that allow customers to compute anywhere.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(52,12,'PGS Software','PGS Software is an IT outsourcing company, providing services in nearshore development, custom software development & mobile application.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(53,12,'Sama','Sama is a training data partner trusted by organizations to develop accurate artificial intelligence and machine learning models.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(54,13,'Habana','Habana Labs is a semiconductor company focusing on developing disruptive solutions for data center and cloud efficiency.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(55,13,'Lambda','Lambda is a cloud-based GPU company catering to developers throughout the entire lifecycle of AI development.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(56,13,'Pryon','Pryon is an AI company that focuses on enterprise knowledge management.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(57,14,'ABEJA','ABEJA is a platform that integrate state-of-the-art AI technologies including IoT, big data, and deep learning.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(58,14,'Adobe','Adobe is a software company that provides its users with digital marketing and media solutions.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(59,14,'Aibee','Aibee is an AI startup that develops speech recognition, big data analysis, and natural language processing technologies.',NULL,'2024-06-17 16:38:44',NULL,NULL,NULL,NULL),(60,14,'Algolux','Algolux empowers vision systems with the most robust perception technology for all conditions.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(61,14,'Alibaba Group','Alibaba Group enables businesses to transform the way they market, sell, operate, and improve their efficiencies.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(62,14,'AMAX Engineering Corporation','Founded in 1979, AMAX specializes in engineering and manufacturing custom Cluster, Server and Storage solutions in North America.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(63,14,'ABEJA','ABEJA is a platform that integrate state-of-the-art AI technologies including IoT, big data, and deep learning.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(64,14,'Adobe','Adobe is a software company that provides its users with digital marketing and media solutions.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(65,14,'Aibee','Aibee is an AI startup that develops speech recognition, big data analysis, and natural language processing technologies.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(66,14,'Algolux','Algolux empowers vision systems with the most robust perception technology for all conditions.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(67,14,'Alibaba Group','Alibaba Group enables businesses to transform the way they market, sell, operate, and improve their efficiencies.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(68,14,'AMAX Engineering Corporation','Founded in 1979, AMAX specializes in engineering and manufacturing custom Cluster, Server and Storage solutions in North America.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(69,16,'Bitext','Bitext develops the most accurate multilingual text analysis engines in the market such as middleware for chatbots and lemmatization.',NULL,'2024-06-17 16:38:45',NULL,NULL,NULL,NULL),(70,16,'Lambda','Lambda is a cloud-based GPU company catering to developers throughout the entire lifecycle of AI development.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(71,16,'PipelineAI','Real-Time Enterprise AI Platform',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(72,16,'Pure Storage','Pure Storage is an all-flash enterprise storage company that enables broad deployment of flash in data centers.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(73,16,'VideoKen','VideoKen’s AI-based Video Interactivity solution',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(74,17,'360 Security Center','360 Security Center is an all-in-one mobile optimizer and security app offering Internet and mobile security products.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(75,17,'AITRICS','AITRICS is taking on the ultimate role of giving everyone access to the power of data-driven health intelligence.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(76,17,'Alibaba Group','Alibaba Group enables businesses to transform the way they market, sell, operate, and improve their efficiencies.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(77,17,'Amazon','Amazon is a global tech firm with a focus on e-commerce, cloud computing, digital streaming, and artificial intelligence.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(78,17,'Ant Group','Ant Group strives to enable all consumers and small businesses to have equal access to financial and other services through technology.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(79,17,'Apple','Apple is a corporation that designs, manufactures, and markets consumer electronics, personal computers, and software.',NULL,'2024-06-17 16:38:46',NULL,NULL,NULL,NULL),(80,18,'APTARE','Enterprise storage software company.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(81,18,'Arista Networks','Arista Networks is a computer networking firm delivering cloud networking solutions for large data center and computer environments.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(82,18,'Catalogic','Catalogic is a provider of smart data protection solutions.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(83,18,'Cisco','Cisco develops, manufactures, and sells networking hardware, telecommunications equipment, and other technology services and products.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(84,18,'Cohesity','Cohesity offers hyperconverged secondary storage for backups, test/dev, file services, and analytics use cases.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(85,18,'Commvault','Commvault provides a data and enterprise backup software.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(86,19,'Adobe','Adobe is a software company that provides its users with digital marketing and media solutions.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(87,19,'AIG','American International Group provides property insurance, life insurance, and financial services.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(88,19,'Airbnb','Airbnb is an online community marketplace for people to list, discover, and book accommodations through mobile phones or the internet.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(89,19,'Alibaba Group','Alibaba Group enables businesses to transform the way they market, sell, operate, and improve their efficiencies.',NULL,'2024-06-17 16:38:47',NULL,NULL,NULL,NULL),(90,19,'Amazon','Amazon is a global tech firm with a focus on e-commerce, cloud computing, digital streaming, and artificial intelligence.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(91,19,'Apple','Apple is a corporation that designs, manufactures, and markets consumer electronics, personal computers, and software.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(92,9,'Arrow Electronics','Arrow Electronics designs, manufactures and distributes electronic components for industrial and commercial sectors.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(93,9,'Baker Tilly','Baker Tilly is a advisory CPA firm, providing clients with a genuine coast-to-coast and global advantage in major regions.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(94,9,'Capgemini','Capgemini provides consulting, technology, and digital transformation services.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(95,9,'Cognizant','Cognizant is a professional services company, transforming clients’ business, operating and technology models for the digital era.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(96,9,'Couchbase','Couchbase is a NoSQL cloud database for business-critical applications.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(97,9,'Data Intensity','Solution Expertise. Boutique Service. Trusted Advisor.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(98,10,'Accenture','Accenture is a professional services company, providing services and solutions in strategy, consulting, digital, technology and operations.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(99,10,'Arrow Electronics','Arrow Electronics designs, manufactures and distributes electronic components for industrial and commercial sectors.',NULL,'2024-06-17 16:38:48',NULL,NULL,NULL,NULL),(100,10,'Automation Anywhere','Automation Anywhere is a digital workforce platform that provides end-to-end automation solutions and business processes.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(101,10,'Baker Tilly','Baker Tilly is a advisory CPA firm, providing clients with a genuine coast-to-coast and global advantage in major regions.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(102,10,'Capgemini','Capgemini provides consulting, technology, and digital transformation services.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(103,10,'Celonis','Celonis provides an execution management system that helps companies in running their business processes.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(104,11,'Accenture','Accenture is a professional services company, providing services and solutions in strategy, consulting, digital, technology and operations.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(105,11,'Arrow Electronics','Arrow Electronics designs, manufactures and distributes electronic components for industrial and commercial sectors.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(106,11,'Baker Tilly','Baker Tilly is a advisory CPA firm, providing clients with a genuine coast-to-coast and global advantage in major regions.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(107,11,'Capgemini','Capgemini provides consulting, technology, and digital transformation services.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(108,11,'Celonis','Celonis provides an execution management system that helps companies in running their business processes.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL),(109,11,'Cognizant','Cognizant is a professional services company, transforming clients’ business, operating and technology models for the digital era.',NULL,'2024-06-17 16:38:49',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_event_sponsors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_events`
--

DROP TABLE IF EXISTS `org_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_type` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `event_url` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_events_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_events`
--

LOCK TABLES `org_events` WRITE;
/*!40000 ALTER TABLE `org_events` DISABLE KEYS */;
INSERT INTO `org_events` VALUES (1,10,' AWS re:Invent ','Conference','2024-12-02','2024-12-06','Las Vegas, Nevada, United States','reinvent.awsevents.com/',NULL,'2024-06-14 18:54:40',NULL,NULL,NULL,NULL),(2,10,' RSA Conference 2023 ','Null','2023-04-24','2023-04-27','San Francisco, California, United States','www.rsaconference.com/usa',NULL,'2024-06-14 19:00:32',NULL,NULL,NULL,NULL),(3,10,' RSA Conference 2023 ','Null','2023-04-24','2023-04-27','San Francisco, California, United States','www.rsaconference.com/usa',NULL,'2024-06-14 19:00:36',NULL,NULL,NULL,NULL),(4,10,' KubeCon + CloudNativeCon North America 2022 ','Conference','2022-10-11','2022-10-15','Los Angeles, California, United States','events.linuxfoundation.org/kubecon-cloudnativec...',NULL,'2024-06-14 19:00:40',NULL,NULL,NULL,NULL),(5,10,' RSA Conference 2022 ','Conference','2022-06-06','2022-06-09','San Francisco, California, United States','www.rsaconference.com/usa',NULL,'2024-06-14 19:00:43',NULL,NULL,NULL,NULL),(6,10,' Broadband World Forum ','Conference','2021-10-12','2021-10-14','Amsterdam, Noord-Holland, The Netherlands','tmt.knect365.com/bbwf/',NULL,'2024-06-14 19:00:46',NULL,NULL,NULL,NULL),(7,10,' Black Hat USA 2021 ','Conference','2021-08-01','2021-08-05','','www.blackhat.com',NULL,'2024-06-14 19:00:49',NULL,NULL,NULL,NULL),(8,10,' RSA Conference 2021 ','Conference','2021-05-17','2021-05-20','San Francisco, California, United States','www.rsaconference.com/usa',NULL,'2024-06-14 19:00:52',NULL,NULL,NULL,NULL),(9,17,' Oracle OpenWorld 2019 ','Conference','2019-09-16','2019-09-19','San Francisco, California, United States','www.oracle.com/openworld/',NULL,'2024-06-14 19:01:30',NULL,NULL,NULL,NULL),(10,17,' Oracle OpenWorld 2018 ','Conference','2018-10-22','2018-10-25','San Francisco, California, United States','www.oracle.com/openworld/index.html',NULL,'2024-06-14 19:01:34',NULL,NULL,NULL,NULL),(11,17,' Oracle Openworld 2017 ','Conference','2017-10-01','2017-10-05','San Francisco, California, United States','www.oracle.com/openworld/index.html',NULL,'2024-06-14 19:01:40',NULL,NULL,NULL,NULL),(12,26,' Deep Learning Summit San Francisco 2020 ','Conference','2020-01-30','2020-01-31','San Francisco, California, United States','www.re-work.co/events/deep-learning-summit-san-...',NULL,'2024-06-14 19:02:21',NULL,NULL,NULL,NULL),(13,26,' NIPS 2019 ','Conference','2019-12-08','2019-12-14','Vancouver, Alberta, Canada','nips.cc/',NULL,'2024-06-14 19:02:25',NULL,NULL,NULL,NULL),(14,26,' CVPR 2019 ','Conference','2019-06-16','2019-06-20','Long Beach, California, United States','cvpr2019.thecvf.com/',NULL,'2024-06-14 19:02:29',NULL,NULL,NULL,NULL),(15,26,' CVPR 2019 ','Conference','2019-06-16','2019-06-20','Long Beach, California, United States','cvpr2019.thecvf.com/',NULL,'2024-06-14 19:02:33',NULL,NULL,NULL,NULL),(16,26,' Deep Learning Summit San Francisco 2019 ','Conference','2019-01-24','2019-01-25','San Francisco, California, United States','www.re-work.co/events/deep-learning-summit-san-...',NULL,'2024-06-14 19:02:37',NULL,NULL,NULL,NULL),(17,26,' NIPS 2018 ','Conference','2018-12-03','2018-12-08','Montréal, Quebec, Canada','nips.cc/',NULL,'2024-06-14 19:02:41',NULL,NULL,NULL,NULL),(18,26,' Pure // Accelerate 2018 ','Conference','2018-05-22','2018-05-24','San Francisco, California, United States','www.purestorage.com/events/accelerate-2018.html',NULL,'2024-06-14 19:02:45',NULL,NULL,NULL,NULL),(19,26,' NIPS 2017 ','Conference','2017-12-04','2017-12-09','Long Beach, California, United States','nips.cc/',NULL,'2024-06-14 19:02:49',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_fundings`
--

DROP TABLE IF EXISTS `org_fundings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_fundings` (
  `org_funding_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `transaction_name` varchar(100) DEFAULT NULL,
  `announced_date` date DEFAULT NULL,
  `money_raised` int DEFAULT NULL,
  `no_of_investors` int DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`org_funding_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_fundings_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_fundings`
--

LOCK TABLES `org_fundings` WRITE;
/*!40000 ALTER TABLE `org_fundings` DISABLE KEYS */;
INSERT INTO `org_fundings` VALUES (1,8,'Series B - Figure 1','2017-06-13',10000000,7,'$',NULL,'2024-06-13 19:10:02',NULL,NULL,NULL,NULL),(2,8,'Series A - Figure 1','2015-10-15',5000000,5,'$',NULL,'2024-06-13 19:10:50',NULL,NULL,NULL,NULL),(3,8,'Venture Round - Figure 1','2015-08-04',2500000,0,'$',NULL,'2024-06-13 19:10:55',NULL,NULL,NULL,NULL),(4,8,'Series A - Figure 1','2014-08-06',4000000,4,'$',NULL,'2024-06-13 19:10:58',NULL,NULL,NULL,NULL),(5,8,'Seed Round - Figure 1','2013-12-09',2000000,9,'$',NULL,'2024-06-13 19:11:01',NULL,NULL,NULL,NULL),(6,6,'Seed Round - Furno','2024-02-02',6500000,4,'$',NULL,'2024-06-13 19:11:05',NULL,NULL,NULL,NULL),(7,6,'Seed Round - Furno','2023-07-14',4500000,2,'$',NULL,'2024-06-13 19:11:07',NULL,NULL,NULL,NULL),(8,9,'Pre Seed Round - G2Q Computing','2024-02-19',120000,1,'$',NULL,'2024-06-13 19:11:12',NULL,NULL,NULL,NULL),(9,5,'Pre Seed Round - Interviewgpt.io','2024-05-01',100000,0,'$',NULL,'2024-06-13 19:11:16',NULL,NULL,NULL,NULL),(10,4,'Seed Round - Jugyah','2023-11-03',100000,13,NULL,NULL,'2024-06-13 19:11:19',NULL,NULL,NULL,NULL),(11,10,'Post-IPO Equity - Juniper Networks','2021-01-27',4300000,0,'$',NULL,'2024-06-13 19:11:23',NULL,NULL,NULL,NULL),(12,10,'Post-IPO Equity - Juniper Networks','2020-11-30',18100000,0,'$',NULL,'2024-06-13 19:11:26',NULL,NULL,NULL,NULL),(13,10,'Post-IPO Equity - Juniper Networks','2018-12-13',1600000,0,'$',NULL,'2024-06-13 19:11:29',NULL,NULL,NULL,NULL),(14,10,'Post-IPO Equity - Juniper Networks','2014-01-22',18800000,0,'$',NULL,'2024-06-13 19:11:32',NULL,NULL,NULL,NULL),(15,10,'Seed Round - Juniper Networks','1996-08-01',50000000,1,NULL,NULL,'2024-06-13 19:11:34',NULL,NULL,NULL,NULL),(16,10,'Pre Seed Round - Juniper Networks','1996-01-01',200000,1,'$',NULL,'2024-06-13 19:11:37',NULL,NULL,NULL,NULL),(17,24,'Series A - Matel Motion','2024-05-16',333000000,3,'₹',NULL,'2024-06-13 19:11:41',NULL,NULL,NULL,NULL),(18,14,'Pre Seed Round - Open Insurtech','2022-01-01',100000,0,'$',NULL,'2024-06-13 19:11:46',NULL,NULL,NULL,NULL),(19,7,'Pre Seed Round - Reviway','2024-02-19',120000,1,'$',NULL,'2024-06-13 19:11:51',NULL,NULL,NULL,NULL),(20,27,'Pre Seed Round - Sarla Aviation','2024-05-13',1500000,2,NULL,NULL,'2024-06-13 19:11:54',NULL,NULL,NULL,NULL),(21,25,'Venture Round - Kudos','2021-12-06',10000000,1,'$',NULL,'2024-06-13 19:17:54',NULL,NULL,NULL,NULL),(22,25,'Seed Round - Kudos','2019-04-30',600000,0,'$',NULL,'2024-06-13 19:17:57',NULL,NULL,NULL,NULL),(23,25,'Angel Round - Kudos','2014-04-01',3000000,0,'$',NULL,'2024-06-13 19:18:00',NULL,NULL,NULL,NULL),(24,25,'Angel Round - Kudos','2013-07-01',1500000,0,'$',NULL,'2024-06-13 19:18:03',NULL,NULL,NULL,NULL),(25,25,'Seed Round - Kudos','2012-05-01',680000,0,'$',NULL,'2024-06-13 19:18:06',NULL,NULL,NULL,NULL),(26,25,'Seed Round - Kudos','2011-05-01',375000,0,'$',NULL,'2024-06-13 19:19:42',NULL,NULL,NULL,NULL),(27,23,'Series A - MineOne','2021-11-10',20000000,0,'$',NULL,'2024-06-13 19:19:46',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_fundings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_investments`
--

DROP TABLE IF EXISTS `org_investments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_investments` (
  `investment_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `announced_date` date DEFAULT NULL,
  `invested_org_name` varchar(100) DEFAULT NULL,
  `funding_round` varchar(100) DEFAULT NULL,
  `is_lead_investor` varchar(45) DEFAULT NULL,
  `invested_amount` int DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`investment_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_investments_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_investments`
--

LOCK TABLES `org_investments` WRITE;
/*!40000 ALTER TABLE `org_investments` DISABLE KEYS */;
INSERT INTO `org_investments` VALUES (1,10,'2024-02-07','ZEDEDA','Series C - ZEDEDA','No',72000000,'$',NULL,'2024-06-13 16:11:50',NULL,NULL,NULL,NULL),(2,10,'2022-07-21','ZEDEDA','Series B - ZEDEDA','No',26000000,'$',NULL,'2024-06-13 16:14:27',NULL,NULL,NULL,NULL),(3,10,'2022-06-23','Tibit Communications','Series C - Tibit Communications','No',30000000,'$',NULL,'2024-06-13 16:14:35',NULL,NULL,NULL,NULL),(4,10,'2022-02-22','Cohere Technologies','Series D - Cohere Technologies','No',46000000,'$',NULL,'2024-06-13 16:14:44',NULL,NULL,NULL,NULL),(5,10,'2021-03-31','ZEDEDA','Series A - ZEDEDA','Yes',12500000,'$',NULL,'2024-06-13 16:15:03',NULL,NULL,NULL,NULL),(6,10,'2020-03-17','STACKPATH','Series B - STACKPATH','Yes',216000000,'$',NULL,'2024-06-13 16:15:10',NULL,NULL,NULL,NULL),(7,10,'2020-03-09','Lightbend','Series D - Lightbend','No',25000000,'$',NULL,'2024-06-13 16:15:18',NULL,NULL,NULL,NULL),(8,10,'2019-12-20','Nstream','Series B - Nstream','No',7000000,'$',NULL,'2024-06-13 16:15:27',NULL,NULL,NULL,NULL),(9,10,'2019-01-23','Alchemist Accelerator','Venture Round - Alchemist Accelerator','Yes',2500000,'$',NULL,'2024-06-13 16:15:59',NULL,NULL,NULL,NULL),(10,10,'2019-01-01','Mesh7','Venture Round - Mesh7','No',8400000,'$',NULL,'2024-06-13 16:16:06',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_investments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_investors`
--

DROP TABLE IF EXISTS `org_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_investors` (
  `investor_id` int NOT NULL AUTO_INCREMENT,
  `org_funding_id` int DEFAULT NULL,
  `investor_name` varchar(100) DEFAULT NULL,
  `no_of_investments` int DEFAULT NULL,
  `no_of_exits` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`investor_id`),
  KEY `org_funding_id` (`org_funding_id`),
  CONSTRAINT `org_investors_ibfk_1` FOREIGN KEY (`org_funding_id`) REFERENCES `org_fundings` (`org_funding_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_investors`
--

LOCK TABLES `org_investors` WRITE;
/*!40000 ALTER TABLE `org_investors` DISABLE KEYS */;
INSERT INTO `org_investors` VALUES (1,1,'Union Square Ventures',453,59,'New York , New York , United States',NULL,'2024-06-14 15:09:26',NULL,NULL,NULL,NULL),(2,1,'Samsung NEXT',328,35,'Mountain View , California , United States',NULL,'2024-06-14 15:09:28',NULL,NULL,NULL,NULL),(3,1,'Version One Ventures',151,33,'Vancouver , British Columbia , Canada',NULL,'2024-06-14 15:09:29',NULL,NULL,NULL,NULL),(4,1,'Hedgewood',117,25,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:11:00',NULL,NULL,NULL,NULL),(5,1,'Kensington Capital Partners Limited',70,26,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:11:02',NULL,NULL,NULL,NULL),(6,1,'Rho Canada Ventures',45,15,'New York , New York , United States',NULL,'2024-06-14 15:12:41',NULL,NULL,NULL,NULL),(7,1,'Manulife Financial',17,8,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:12:43',NULL,NULL,NULL,NULL),(8,2,'Union Square Ventures',453,59,'New York , New York , United States',NULL,'2024-06-14 15:12:45',NULL,NULL,NULL,NULL),(9,2,'Allen & Company',179,67,'Lakeland , Florida , United States',NULL,'2024-06-14 15:12:47',NULL,NULL,NULL,NULL),(10,2,'Graph Ventures',158,28,'Palo Alto , California , United States',NULL,'2024-06-14 15:12:49',NULL,NULL,NULL,NULL),(11,2,'Version One Ventures',151,33,'Vancouver , British Columbia , Canada',NULL,'2024-06-14 15:12:50',NULL,NULL,NULL,NULL),(12,2,'Rho Canada Ventures',45,15,'New York , New York , United States',NULL,'2024-06-14 15:12:52',NULL,NULL,NULL,NULL),(13,4,'Union Square Ventures',453,59,'New York , New York , United States',NULL,'2024-06-14 15:12:54',NULL,NULL,NULL,NULL),(14,4,'Version One Ventures',151,33,'Vancouver , British Columbia , Canada',NULL,'2024-06-14 15:12:56',NULL,NULL,NULL,NULL),(15,4,'Rho Canada Ventures',45,15,'New York , New York , United States',NULL,'2024-06-14 15:12:58',NULL,NULL,NULL,NULL),(16,4,'Jevon MacDonald',13,4,'Halifax , Nova Scotia , Canada',NULL,'2024-06-14 15:12:59',NULL,NULL,NULL,NULL),(17,5,'DMZ',277,36,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:13:38',NULL,NULL,NULL,NULL),(18,5,'MaRS Investment Accelerator Fund',225,64,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:13:42',NULL,NULL,NULL,NULL),(19,5,'Version One Ventures',151,33,'Vancouver , British Columbia , Canada',NULL,'2024-06-14 15:13:52',NULL,NULL,NULL,NULL),(20,5,'Rho Canada Ventures',45,15,'New York , New York , United States',NULL,'2024-06-14 15:13:56',NULL,NULL,NULL,NULL),(21,5,'Fastbreak Ventures',23,7,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:13:58',NULL,NULL,NULL,NULL),(22,5,'RFI',22,3,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:14:00',NULL,NULL,NULL,NULL),(23,5,'Daniel Debow',13,6,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:14:02',NULL,NULL,NULL,NULL),(24,5,'Jevon MacDonald',13,4,'Halifax , Nova Scotia , Canada',NULL,'2024-06-14 15:14:04',NULL,NULL,NULL,NULL),(25,5,'Zen Chu',5,2,'Cambridge , Massachusetts , United States',NULL,'2024-06-14 15:14:05',NULL,NULL,NULL,NULL),(26,6,'Cantos',98,8,'San Francisco , California , United States',NULL,'2024-06-14 15:14:42',NULL,NULL,NULL,NULL),(27,6,'Neotribe Ventures',62,8,'San Francisco , California , United States',NULL,'2024-06-14 15:14:43',NULL,NULL,NULL,NULL),(28,6,'OShaughnessy Ventures',13,0,'Greenwich , Connecticut , United States',NULL,'2024-06-14 15:32:24',NULL,NULL,NULL,NULL),(29,6,'Energy Capital Ventures',6,0,'Chicago , Illinois , United States',NULL,'2024-06-14 15:32:44',NULL,NULL,NULL,NULL),(30,7,'Cantos',98,8,'San Francisco , California , United States',NULL,'2024-06-14 15:32:47',NULL,NULL,NULL,NULL),(31,7,'Energy Capital Ventures',6,0,'Chicago , Illinois , United States',NULL,'2024-06-14 15:32:50',NULL,NULL,NULL,NULL),(32,8,'Techstars',6027,487,'Boulder , Colorado , United States',NULL,'2024-06-14 15:33:01',NULL,NULL,NULL,NULL),(33,10,'QED Investors',332,40,'Alexandria , Virginia , United States',NULL,'2024-06-14 15:33:16',NULL,NULL,NULL,NULL),(34,10,'Kunal hchv',266,15,'Bengaluru , Karnataka , India',NULL,'2024-06-14 15:33:19',NULL,NULL,NULL,NULL),(35,10,'Ramakant Sharma',85,1,'Bengaluru , Karnataka , India',NULL,'2024-06-14 15:33:23',NULL,NULL,NULL,NULL),(36,10,'Whiteboard Capital',71,3,'Mumbai , Maharashtra , India',NULL,'2024-06-14 15:33:26',NULL,NULL,NULL,NULL),(37,10,'Singularity Ventures',19,3,'Chennai , Tamil Nadu , India',NULL,'2024-06-14 15:33:29',NULL,NULL,NULL,NULL),(38,10,'White Venture Capital',10,0,'Singapore , Central Region , Singapore',NULL,'2024-06-14 15:33:32',NULL,NULL,NULL,NULL),(39,10,'Climber Capital',6,0,'Mumbai , Maharashtra , India',NULL,'2024-06-14 15:33:35',NULL,NULL,NULL,NULL),(40,10,'Satyam Singh',6,0,'Mumbai , Maharashtra , India',NULL,'2024-06-14 15:33:38',NULL,NULL,NULL,NULL),(41,10,'AJ Capital',4,0,'Singapore , Central Region , Singapore',NULL,'2024-06-14 15:33:42',NULL,NULL,NULL,NULL),(42,10,'Pirojsha Godrej',3,0,'Mumbai , Maharashtra , India',NULL,'2024-06-14 15:33:45',NULL,NULL,NULL,NULL),(43,10,'Lodha Group',2,1,'Mumbai , Maharashtra , India',NULL,'2024-06-14 15:33:48',NULL,NULL,NULL,NULL),(44,10,'Gaurav Gupta',2,0,'Mumbai , Maharashtra , India',NULL,'2024-06-14 15:33:52',NULL,NULL,NULL,NULL),(45,10,'Prestige Group',1,0,'Bengaluru , Karnataka , India',NULL,'2024-06-14 15:33:55',NULL,NULL,NULL,NULL),(46,15,'New Enterprise Associates',2188,594,'Menlo Park , California , United States',NULL,'2024-06-14 15:34:15',NULL,NULL,NULL,NULL),(47,16,'Kleiner Perkins',1417,337,'Menlo Park , California , United States',NULL,'2024-06-14 15:34:19',NULL,NULL,NULL,NULL),(48,21,'Canadian Business Growth Fund',37,3,'Toronto , Ontario , Canada',NULL,'2024-06-14 15:34:45',NULL,NULL,NULL,NULL),(49,17,'Gruhas',31,0,'Bangalore , Karnataka , India',NULL,'2024-06-14 15:34:55',NULL,NULL,NULL,NULL),(50,17,'Transition Venture Capital',4,0,'Bengaluru , Karnataka , India',NULL,'2024-06-14 15:34:58',NULL,NULL,NULL,NULL),(51,17,'Haresh Abichandani',1,0,'Pune , Maharashtra , India',NULL,'2024-06-14 15:35:01',NULL,NULL,NULL,NULL),(52,19,'Techstars',6027,487,'Boulder , Colorado , United States',NULL,'2024-06-14 15:35:11',NULL,NULL,NULL,NULL),(53,20,'Campus Fund',14,0,'Bengaluru , Karnataka , India',NULL,'2024-06-14 15:35:26',NULL,NULL,NULL,NULL),(54,20,'Theia Ventures',6,0,'Bangalore , Karnataka , India',NULL,'2024-06-14 15:35:29',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_ipo_stock_dtls`
--

DROP TABLE IF EXISTS `org_ipo_stock_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_ipo_stock_dtls` (
  `ipo_stock_dtl_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `stock_symbol` varchar(100) DEFAULT NULL,
  `valuation_at_ipo` varchar(100) DEFAULT NULL,
  `money_raised_at_ipo` varchar(100) DEFAULT NULL,
  `ipo_share_price` varchar(50) DEFAULT NULL,
  `ipo_date` varchar(50) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ipo_stock_dtl_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_ipo_stock_dtls_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_ipo_stock_dtls`
--

LOCK TABLES `org_ipo_stock_dtls` WRITE;
/*!40000 ALTER TABLE `org_ipo_stock_dtls` DISABLE KEYS */;
INSERT INTO `org_ipo_stock_dtls` VALUES (1,10,'NYSE:JNPR','$1.7B','$163.2M','$34.00','2-Jul-99',NULL,'2024-06-14 16:43:51',NULL,NULL,NULL,NULL),(2,20,'NSE:ALKALI','','','','7-Nov-08',NULL,'2024-06-14 16:44:12',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_ipo_stock_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_news`
--

DROP TABLE IF EXISTS `org_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `announced_date` date DEFAULT NULL,
  `news_desc` varchar(500) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_news_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_news`
--

LOCK TABLES `org_news` WRITE;
/*!40000 ALTER TABLE `org_news` DISABLE KEYS */;
INSERT INTO `org_news` VALUES (1,15,'2024-04-30',' Globe Newswire —  EasyQuote Reimagined: The Pioneering UK Price Comparison Website Relaunches ',NULL,'2024-06-14 19:00:09',NULL,NULL,NULL,NULL),(2,8,'2024-03-05','PR Newswire —Physicians Weekly Acquires Figure 1 to Enhance Digital Tools for Healthcare Professionals',NULL,'2024-06-14 19:07:03',NULL,NULL,NULL,NULL),(3,8,'2024-03-05','BetaKit —Medical sharing platform Figure 1 acquired by Physicians Weekly',NULL,'2024-06-14 19:07:07',NULL,NULL,NULL,NULL),(4,8,'2024-02-26','BetaKit —Medical sharing platform Figure 1 acquired by Physicians Weekly',NULL,'2024-06-14 19:07:14',NULL,NULL,NULL,NULL),(5,8,'2024-02-26','BetaKit —Medical sharing platform Figure 1 acquired by Physician’s Weekly',NULL,'2024-06-14 19:07:17',NULL,NULL,NULL,NULL),(6,8,'2024-02-22','PR Newswire —Physicians Weekly Acquires Figure 1 to Enhance Digital Tools for Healthcare Professionals',NULL,'2024-06-14 19:07:22',NULL,NULL,NULL,NULL),(7,8,'2020-05-11','Benzinga —Gold Outshines Silver As Economics Widen Price Ratio',NULL,'2024-06-14 19:07:56',NULL,NULL,NULL,NULL),(8,8,'2020-04-27','Business Wire —Privet Fund and UPG Enterprises Issue Letter to Synalloy Stakeholders Regarding the Significant Opportunities Associated with Better Leadership',NULL,'2024-06-14 19:08:00',NULL,NULL,NULL,NULL),(9,8,'2020-04-22','Computer World UK —Windows 10s pandemic support extension: What it means',NULL,'2024-06-14 19:08:01',NULL,NULL,NULL,NULL),(10,8,'2020-04-09','Forbes —Riskiest Dividend Yields',NULL,'2024-06-14 19:08:03',NULL,NULL,NULL,NULL),(11,10,'2024-06-07','Computer Weekly —Juniper Networks claims first with AIOps to WAN routing',NULL,'2024-06-14 19:10:04',NULL,NULL,NULL,NULL),(12,10,'2024-06-05','Business Wire —Juniper Networks Brings Industrys First and Only AIOps to WAN Routing, Delivering AI-Native Insight for Exceptional Experiences',NULL,'2024-06-14 19:10:05',NULL,NULL,NULL,NULL),(13,10,'2024-06-04','Computer Reseller News UK —Juniper Networks and Westcon-Comstor expand EMEA distribution deal to the UK, Ireland and France',NULL,'2024-06-14 19:10:07',NULL,NULL,NULL,NULL),(14,10,'2024-06-04','Leviathan Security Group —Vulnerability Research and the Importance of Supporting Young Talent — Leviathan Security Group - Penetration Testing, Security Assessment, Risk Advisory',NULL,'2024-06-14 19:10:08',NULL,NULL,NULL,NULL),(15,10,'2024-05-07','SeekingAlpha —Juniper Networks/HP Enterprise deal spread widens amid report on DOJ review',NULL,'2024-06-14 19:10:09',NULL,NULL,NULL,NULL),(16,10,'2024-04-29','PRNewswire —Microland announces Global Elite Plus Status with Juniper Networks to launch Network as a Service offering',NULL,'2024-06-14 19:10:11',NULL,NULL,NULL,NULL),(17,10,'2024-04-25','SeekingAlpha —Juniper Networks Non-GAAP EPS of $0.29 misses by $0.11, revenue of $1.15B misses by $80M',NULL,'2024-06-14 19:10:12',NULL,NULL,NULL,NULL),(18,10,'2024-04-25','SeekingAlpha —Juniper Networks reports Q1 top and bottom line miss, says HPE merger on track to close',NULL,'2024-06-14 19:10:16',NULL,NULL,NULL,NULL),(19,10,'2024-04-23','Globe Newswire —SHAREHOLDER ALERT: Planned Mergers of M.D.C. Holdings, Agiliti Inc, Juniper Networks, and Kaman Corporation Under Investigation by Johnson Fistel',NULL,'2024-06-14 19:10:18',NULL,NULL,NULL,NULL),(20,10,'2024-04-15','Security Week —Juniper Networks Publishes Dozens of New Security Advisories',NULL,'2024-06-14 19:10:19',NULL,NULL,NULL,NULL),(21,17,'2023-10-06','openPR.com —Registered Agent Service Market Insights by Business Growth, Development Factors, Revenue Strategies, and Futu',NULL,'2024-06-14 19:11:02',NULL,NULL,NULL,NULL),(22,17,'2016-01-22','Sramana Mitra —Thought Leaders in Cloud Computing: Ravi Reddy, CEO of Sunera Technologies (Part 5)',NULL,'2024-06-14 19:11:03',NULL,NULL,NULL,NULL),(23,17,'2016-01-21','Sramana Mitra —Thought Leaders in Cloud Computing: Ravi Reddy, CEO of Sunera Technologies (Part 4)',NULL,'2024-06-14 19:11:04',NULL,NULL,NULL,NULL),(24,17,'2016-01-20','Sramana Mitra —Thought Leaders in Cloud Computing: Ravi Reddy, CEO of Sunera Technologies (Part 3)',NULL,'2024-06-14 19:11:06',NULL,NULL,NULL,NULL),(25,17,'2016-01-19','Sramana Mitra —Thought Leaders in Cloud Computing: Ravi Reddy, CEO of Sunera Technologies (Part 2)',NULL,'2024-06-14 19:11:07',NULL,NULL,NULL,NULL),(26,17,'2016-01-18','Sramana Mitra —Thought Leaders in Cloud Computing: Ravi Reddy, CEO of Sunera Technologies (Part 1)',NULL,'2024-06-14 19:11:08',NULL,NULL,NULL,NULL),(27,17,'2015-10-27','Market Wired - Top —Partners Drive Innovation and Customer Success With Oracle Cloud Platform',NULL,'2024-06-14 19:11:10',NULL,NULL,NULL,NULL),(28,17,'2015-06-05','YourStory News —Know your customers better with Meltag, an IoT, mobile and cloud-based loyalty program for brands',NULL,'2024-06-14 19:11:11',NULL,NULL,NULL,NULL),(29,1,'2022-11-10','The Economic Times —Fintech fund White Venture Capital launches programme to help executives start up',NULL,'2024-06-14 19:11:19',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_product_dtls`
--

DROP TABLE IF EXISTS `org_product_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_product_dtls` (
  `product_dtl_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`product_dtl_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_product_dtls_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_product_dtls`
--

LOCK TABLES `org_product_dtls` WRITE;
/*!40000 ALTER TABLE `org_product_dtls` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_product_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_signals`
--

DROP TABLE IF EXISTS `org_signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_signals` (
  `signal_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `announced_date` date DEFAULT NULL,
  `signal_desc` varchar(500) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`signal_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_signals_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_signals`
--

LOCK TABLES `org_signals` WRITE;
/*!40000 ALTER TABLE `org_signals` DISABLE KEYS */;
INSERT INTO `org_signals` VALUES (1,10,'2023-05-16','Juniper Networks Appoints New Chief Marketing Officer',NULL,'2024-06-14 19:36:11',NULL,NULL,NULL,NULL),(2,10,'2019-12-02','Juniper Networks Appoints New Chief Technology Officer',NULL,'2024-06-14 19:36:32',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_signals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_technology_dtls`
--

DROP TABLE IF EXISTS `org_technology_dtls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_technology_dtls` (
  `technology_dtl_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int DEFAULT NULL,
  `technology_name` varchar(100) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`technology_dtl_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_technology_dtls_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_technology_dtls`
--

LOCK TABLES `org_technology_dtls` WRITE;
/*!40000 ALTER TABLE `org_technology_dtls` DISABLE KEYS */;
INSERT INTO `org_technology_dtls` VALUES (1,1,'Pound Sterling  Squarespace Hosted',1,'2024-06-18 19:38:39',NULL,NULL,NULL,NULL),(2,2,'US Server Location  Common Name Invalid',1,'2024-06-18 19:38:41',NULL,NULL,NULL,NULL),(3,3,'Amazon',1,'2024-06-18 19:38:43',NULL,NULL,NULL,NULL),(4,3,'Google Apps for Business',1,'2024-06-18 19:38:44',NULL,NULL,NULL,NULL),(5,3,'GoDaddy DNS',1,'2024-06-18 19:38:44',NULL,NULL,NULL,NULL),(6,4,'Font Awesome',1,'2024-06-18 19:38:46',NULL,NULL,NULL,NULL),(7,4,'Cloudflare JS',1,'2024-06-18 19:38:47',NULL,NULL,NULL,NULL),(8,4,'CDN JS',1,'2024-06-18 19:38:47',NULL,NULL,NULL,NULL),(9,5,'CrUX Top 50m',1,'2024-06-18 19:40:28',NULL,NULL,NULL,NULL),(10,5,'CrUX Dataset',1,'2024-06-18 19:40:29',NULL,NULL,NULL,NULL),(11,5,'Express',1,'2024-06-18 19:40:30',NULL,NULL,NULL,NULL),(12,6,'Google Apps for Business',1,'2024-06-18 19:40:32',NULL,NULL,NULL,NULL),(13,6,'Microsoft Azure DNS',1,'2024-06-18 19:40:33',NULL,NULL,NULL,NULL),(14,6,'Black Lotus',1,'2024-06-18 19:40:33',NULL,NULL,NULL,NULL),(16,8,'HTML5',1,'2024-06-18 19:40:38',NULL,NULL,NULL,NULL),(17,8,'jQuery',1,'2024-06-18 19:40:39',NULL,NULL,NULL,NULL),(18,8,'Google Analytics',1,'2024-06-18 19:40:40',NULL,NULL,NULL,NULL),(20,10,'HTML5',1,'2024-06-18 19:40:45',NULL,NULL,NULL,NULL),(21,10,'jQuery',1,'2024-06-18 19:40:45',NULL,NULL,NULL,NULL),(22,10,'Google Analytics',1,'2024-06-18 19:40:46',NULL,NULL,NULL,NULL),(23,13,'SPF',1,'2024-06-18 19:40:48',NULL,NULL,NULL,NULL),(24,13,'LetsEncrypt',1,'2024-06-18 19:40:49',NULL,NULL,NULL,NULL),(25,13,'Mobile Non Scaleable Content',1,'2024-06-18 19:40:49',NULL,NULL,NULL,NULL),(26,26,'HTML5',1,'2024-06-18 19:40:52',NULL,NULL,NULL,NULL),(27,26,'jQuery',1,'2024-06-18 19:40:53',NULL,NULL,NULL,NULL),(28,26,'Google Analytics',1,'2024-06-18 19:40:53',NULL,NULL,NULL,NULL),(30,14,'Viewport Meta',1,'2024-06-18 19:40:59',NULL,NULL,NULL,NULL),(31,14,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:00',NULL,NULL,NULL,NULL),(32,14,'SPF',1,'2024-06-18 19:41:00',NULL,NULL,NULL,NULL),(34,16,'Viewport Meta',1,'2024-06-18 19:41:05',NULL,NULL,NULL,NULL),(35,16,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:06',NULL,NULL,NULL,NULL),(36,16,'Amazon',1,'2024-06-18 19:41:07',NULL,NULL,NULL,NULL),(37,17,'HTML5',1,'2024-06-18 19:41:09',NULL,NULL,NULL,NULL),(38,17,'jQuery',1,'2024-06-18 19:41:09',NULL,NULL,NULL,NULL),(39,17,'Google Analytics',1,'2024-06-18 19:41:10',NULL,NULL,NULL,NULL),(40,18,'HTML5',1,'2024-06-18 19:41:13',NULL,NULL,NULL,NULL),(41,18,'jQuery',1,'2024-06-18 19:41:13',NULL,NULL,NULL,NULL),(42,18,'Google Analytics',1,'2024-06-18 19:41:14',NULL,NULL,NULL,NULL),(43,24,'Domain Not Resolving',1,'2024-06-18 19:41:16',NULL,NULL,NULL,NULL),(44,24,'Facebook Sharer',1,'2024-06-18 19:41:17',NULL,NULL,NULL,NULL),(45,24,'Gravatar Profiles',1,'2024-06-18 19:41:17',NULL,NULL,NULL,NULL),(46,19,'Amazon',1,'2024-06-18 19:41:20',NULL,NULL,NULL,NULL),(47,19,'Person Schema',1,'2024-06-18 19:41:20',NULL,NULL,NULL,NULL),(48,19,'Gravatar Profiles',1,'2024-06-18 19:41:21',NULL,NULL,NULL,NULL),(49,20,'Viewport Meta',1,'2024-06-18 19:41:23',NULL,NULL,NULL,NULL),(50,20,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:24',NULL,NULL,NULL,NULL),(51,20,'Domain Not Resolving',1,'2024-06-18 19:41:24',NULL,NULL,NULL,NULL),(52,21,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:27',NULL,NULL,NULL,NULL),(53,21,'SPF',1,'2024-06-18 19:41:27',NULL,NULL,NULL,NULL),(54,21,'Apple Mobile Web Clips Icon',1,'2024-06-18 19:41:28',NULL,NULL,NULL,NULL),(55,22,'Viewport Meta',1,'2024-06-18 19:41:30',NULL,NULL,NULL,NULL),(56,22,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:30',NULL,NULL,NULL,NULL),(57,22,'Apple Mobile Web Clips Icon',1,'2024-06-18 19:41:31',NULL,NULL,NULL,NULL),(58,23,'Viewport Meta',1,'2024-06-18 19:41:33',NULL,NULL,NULL,NULL),(59,23,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:34',NULL,NULL,NULL,NULL),(60,23,'SPF',1,'2024-06-18 19:41:34',NULL,NULL,NULL,NULL),(61,25,'Viewport Meta',1,'2024-06-18 19:41:37',NULL,NULL,NULL,NULL),(62,25,'IPhone / Mobile Compatible',1,'2024-06-18 19:41:37',NULL,NULL,NULL,NULL),(63,25,'Domain Not Resolving',1,'2024-06-18 19:41:38',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_technology_dtls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_visits`
--

DROP TABLE IF EXISTS `org_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_visits` (
  `org_visit_id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `monthly_visit` bigint DEFAULT NULL,
  `monthly_visit_growth` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`org_visit_id`),
  KEY `org_id` (`org_id`),
  CONSTRAINT `org_visits_ibfk_1` FOREIGN KEY (`org_id`) REFERENCES `organization_master` (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_visits`
--

LOCK TABLES `org_visits` WRITE;
/*!40000 ALTER TABLE `org_visits` DISABLE KEYS */;
INSERT INTO `org_visits` VALUES (1,1,921,15,NULL,'2024-06-19 10:16:04',NULL,NULL,NULL,NULL),(2,2,197,NULL,NULL,'2024-06-19 10:34:27',NULL,NULL,NULL,NULL),(3,4,4065,-97,NULL,'2024-06-19 10:34:31',NULL,NULL,NULL,NULL),(6,5,2302,2,NULL,'2024-06-19 10:41:43',NULL,NULL,NULL,NULL),(7,8,281590,0,NULL,'2024-06-19 10:41:57',NULL,NULL,NULL,NULL),(8,10,1783785,0,NULL,'2024-06-19 10:41:59',NULL,NULL,NULL,NULL),(9,17,6727,0,NULL,'2024-06-19 10:42:01',NULL,NULL,NULL,NULL),(10,19,4085,-1,NULL,'2024-06-19 10:42:03',NULL,NULL,NULL,NULL),(11,21,731,NULL,NULL,'2024-06-19 10:42:04',NULL,NULL,NULL,NULL),(12,24,1462,1,NULL,'2024-06-19 10:42:06',NULL,NULL,NULL,NULL),(13,25,49730,0,NULL,'2024-06-19 10:42:08',NULL,NULL,NULL,NULL),(14,26,146261,0,NULL,'2024-06-19 10:42:11',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `org_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_master`
--

DROP TABLE IF EXISTS `organization_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_master` (
  `org_id` int NOT NULL AUTO_INCREMENT,
  `org_name` varchar(100) DEFAULT NULL,
  `about` varchar(500) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `org_type` varchar(100) DEFAULT NULL,
  `org_website` varchar(100) DEFAULT NULL,
  `company_ranking` varchar(10) DEFAULT NULL,
  `headquarters_region` varchar(100) DEFAULT NULL,
  `founded_date` varchar(100) DEFAULT NULL,
  `equity_type` varchar(50) DEFAULT NULL,
  `founders_name` varchar(250) DEFAULT NULL,
  `investor_type` varchar(50) DEFAULT NULL,
  `operating_status` varchar(50) DEFAULT NULL,
  `investment_stage` varchar(50) DEFAULT NULL,
  `number_of_exits` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_master`
--

LOCK TABLES `organization_master` WRITE;
/*!40000 ALTER TABLE `organization_master` DISABLE KEYS */;
INSERT INTO `organization_master` VALUES (1,'White Venture Capital','Singapore based venture capital firm specialising in India FinTechs','Singapore, Central Region, Singapore',NULL,'www.whiteventurecap.com','18,470','Asia-Pacific (APAC) , Association of Southeast Asian Nations (ASEAN) , Southeast Asia','2021',NULL,'Amrish Rau , Jitendra Gupta , Sweta Rau','Venture Capital','Active','Early Stage Venture, Seed, Venture',NULL,NULL,'2024-06-12 15:43:51',NULL,NULL,NULL,NULL),(2,'Whiteboard Capital','Whiteboard Capital is Mumbai based early stage investment firm.',' Mumbai, Maharashtra, India',NULL,' whiteboardcap.com/index.html ','10999','Asia-Pacific (APAC)','2016',NULL,'Kunal Shah , Sandeep Tandon','Venture Capital','Active','Early Stage Venture, Seed',3,NULL,'2024-06-12 16:41:59',NULL,NULL,NULL,NULL),(3,'Singularity Ventures','Singularity Ventures is a multi-strategy emerging markets investment firm that invests in both public as well as private companies..trimmed',' Chennai, Tamil Nadu, India.trimmed',NULL,'singularityventures.in','22604','Asia-Pacific (APAC)','Jan 18, 2007',NULL,'Tejus Sawjiani , Vishwa Chandra , Yash Kela','Venture Capital','Active','Seed',3,NULL,'2024-06-12 16:45:20',NULL,NULL,NULL,NULL),(4,'Jugyah','India\'s only fin-tech powered, end to end, digital home rental platform.',' Mumbai, Maharashtra, India','Private',' www.jugyah.com ','145228','Asia-Pacific (APAC)','May 1, 2023','Seed ','Ansuman Mohanty , Arshad Balwa','','Active','',NULL,NULL,'2024-06-12 17:24:39',NULL,NULL,NULL,NULL),(5,'Interviewgpt.io','We conduct AI interviews which are on point, faster and cheaper because of our custom LLM\'s.',' Hyderabad, Andhra Pradesh, India','Private',' interviewgpt.io/ ','278893','Asia-Pacific (APAC)','Aug 10, 2023','Pre-Seed ','Chaitra Latha Ravada , Kapil Verma , Manikanta Nath G P','','Active','',NULL,NULL,'2024-06-12 17:24:41',NULL,NULL,NULL,NULL),(6,'Furno','Furno is a climate technology company that produces zero-emission ordinary Portland cement.',' Palo Alto, California, United States','Private',' furnomaterials.com/ ','5175','San Francisco Bay Area , Silicon Valley , West Coast','2020','Seed ','Gurinder Nagra','','Active','',NULL,NULL,'2024-06-12 17:24:42',NULL,NULL,NULL,NULL),(7,'Reviway','Road Surface Maintenance Solution',' Reggio Nell Emilia, Emilia-Romagna, Italy','Private',' www.reviway.com/ ','141853','European Union (EU) , Europe, Middle East, and Africa (EMEA)','','Pre-Seed ','Firas Bunni','','Active','',NULL,NULL,'2024-06-12 17:24:43',NULL,NULL,NULL,NULL),(8,'Figure','Figure is a financial services company leveraging blockchain technology.',' San Francisco, California, United States','Private',' figure.com ','22988','San Francisco Bay Area , West Coast , Western US','Jan 1, 2018','Series Unknown ','Alana Ackerson , Cynthia Chen , June Ou , Michael Cagney , Sara Priola','','Active','',NULL,NULL,'2024-06-12 17:24:44',NULL,NULL,NULL,NULL),(9,'G2Q Computing','Quantum Computing software, AI & ML',' Milan, Lombardia, Italy','Private',' g2qcomputing.com/ ','142925','European Union (EU) , Europe, Middle East, and Africa (EMEA)','Mar 15, 2023','Pre-Seed ','','','Active','',NULL,NULL,'2024-06-12 17:24:45',NULL,NULL,NULL,NULL),(10,'Juniper Networks','Juniper Networks is a networking company that markets and develops networking products for enterprise companies.',' Sunnyvale, California, United States','Public',' www.juniper.net ','1480','San Francisco Bay Area , Silicon Valley , West Coast','1996','Post-IPO Equity ','Pradeep Sindhu','','Active','',31,NULL,'2024-06-12 17:25:01',NULL,NULL,NULL,NULL),(11,'Imli Strategy','We craft tailored SEO strategies for Solar Businesses, attracting the right audience and boosting your organic online visibility.',' Dimapur, Assam, India','Private',' imlistrategy.com/ ','334811','Asia-Pacific (APAC)','Jul 31, 2023',NULL,'Abbaz Uddin','','Active','',NULL,NULL,'2024-06-13 18:41:57',NULL,NULL,NULL,NULL),(12,'Bricx | UI/UX Design For B2B SaaS','We design stunning MVPs, uplift your SaaS design, or integrate with your design team to improve user experience & ship new features fast',' Delhi, Delhi, India','Private',' www.bricxlabs.com ','520023','Asia-Pacific (APAC)','Sep-23',NULL,'Divij Rakhra , Siddharth Vij','','Active','',NULL,NULL,'2024-06-13 18:42:13',NULL,NULL,NULL,NULL),(13,'PublishMe','PublishMe is a gaming marketing agency that provides various services based on performance.',' Üsküdar, Istanbul, Turkey','Private',' www.publishme.agency/ ','212587','Europe, Middle East, and Africa (EMEA) , Middle East , Europe, Middle East, and Africa (EMEA)','2019',NULL,'Levent Gökçeler , Özgür Özalp','','Active','',NULL,NULL,'2024-06-13 18:42:13',NULL,NULL,NULL,NULL),(14,'Open Insurtech','Open Insurtech is an InsurTech as a service (IaaS) company that is oriented around financial, insurance, and wellness products/services.','New York, New York, United States','Private',' openinsurtech.com ','126934','','Aug 23, 2023','Pre-Seed ','Carlos Alberto Arroyo Gil, Carlos Ramon Arroyo Maciel, Daniel Arroyo Gil','','Active','',NULL,NULL,'2024-06-13 18:42:14',NULL,NULL,NULL,NULL),(15,'EasyQuote','EasyQuote is a leading insurance comparison platform launched in 2023, dedicated to simplifying the search for affordable insurance quotes.',' Fleet, Hampshire, United Kingdom','Private',' www.easyquote.co.uk ','274147','Europe, Middle East, and Africa (EMEA)','Jul 17, 2023',NULL,'Chris Richards','','Active','',NULL,NULL,'2024-06-13 18:42:14',NULL,NULL,NULL,NULL),(16,'LinkoFruit','LinkoFruit is working in SEO field since last 7 years and have professional experts to work on client websites.',' Haryana, Haryana, India','Private',' linkofruit.com/ ','2862545','Asia-Pacific (APAC)','Oct 31, 2011',NULL,'','','Active','',NULL,NULL,'2024-06-13 18:42:15',NULL,NULL,NULL,NULL),(17,'Sunera Technologies','SuneraTech is now at the frontline of Digital Transformation and enables innovation to promote futuristic organizations. Our successful customer-centric initiatives around Cloud Transformation, Digital Transformation and Innovation, Data monetization, Digital Assurance, Enterprise, and App Modernization positioned it as a preferred IT partner for',' Troy, Michigan, United States','Private',' www.suneratech.com/ ','168200','Greater Detroit Area , Great Lakes , Midwestern US','2004',NULL,'Ravi Reddy , Srikanth Pakala , Sudheer Mareddi','','Active','',NULL,NULL,'2024-06-13 18:42:15',NULL,NULL,NULL,NULL),(18,'Joe Gear Companies','The Joe Gear Companies have grown to six separate companies over the last 55 years with its own unique contribution to the global community.',' Monroe, Louisiana, United States','Private',' www.joegearco.com ','1935954','Southern US','Jan 1, 1957',NULL,'','','Active','',NULL,NULL,'2024-06-13 18:42:15',NULL,NULL,NULL,NULL),(19,'Studentpeeps','Get student discounts when you shop',' Jaipur, Rajasthan, India','Private',' studentpeeps.club/ ','139532','Asia-Pacific (APAC)','Feb 10, 2021',NULL,'Ayush Kumar Mittal , Chirag Mittal','','Active','',NULL,NULL,'2024-06-13 18:42:16',NULL,NULL,NULL,NULL),(20,'Alkali Metals','Alkali Metals is a manufacturer and seller of chemicals.',' Hyderabad, Andhra Pradesh, India','Public',' www.alkalimetals.com/ ','200333','Asia-Pacific (APAC)','Jan 1, 1968',NULL,'Y. V. S. S. MURTY','','Active','',NULL,NULL,'2024-06-13 18:42:16',NULL,NULL,NULL,NULL),(21,'PrediQt','PrediQt is a AI/ML and Data Analytics start up empowering businesses to leverage data-driven insights for strategic decision-making',' Salt Lake City, West Bengal, India','Private',' www.prediqt.it ','184198','Asia-Pacific (APAC)','2017',NULL,'Abhishek Nandy , Indranil Mukhopadhyay , Kalpadip Basu , Kalyan Kar , Subhalakshmi Samanta','','Active','',NULL,NULL,'2024-06-13 18:42:17',NULL,NULL,NULL,NULL),(22,'Andhra Pradesh Tanneries','Andhra Pradesh Tanneries is engaged in the leather business',' Vizianagaram, Andhra Pradesh, India','Public',' www.aptl.net.in ','227329','Asia-Pacific (APAC)','',NULL,'','','Active','',NULL,NULL,'2024-06-13 18:42:17',NULL,NULL,NULL,NULL),(23,'MineOne','MineOne is a cryptocurrency mining investment firm that provides consistent crypto mining value investments.',' New York, New York, United States','Private',' mineone.io/ ','9370','Greater New York Area , East Coast , Northeastern US','2021','Series A ','Chong Wang , Jiaming Li','','Active','',NULL,NULL,'2024-06-13 18:42:18',NULL,NULL,NULL,NULL),(24,'Matel motion','Matel Motion manufactures synchronous machines for industrial, HVAC, pumping, and e-mobility applications.',' Pune, Maharashtra, India','Private',' matel.co.in ','170735','Asia-Pacific (APAC)','2016','Series A ','','','Active','',NULL,NULL,'2024-06-13 18:42:18',NULL,NULL,NULL,NULL),(25,'Kudos','Kudos offers web-based tools and services to help researchers, institutions, publishers, and funders increase the impact of their research.',' Oxford, Oxfordshire, United Kingdom','Private',' www.growkudos.com ','67354','Europe, Middle East, and Africa (EMEA)','Aug 13, 2013','Angel ','Charlie Rapple , David Sommer , Melinda Kenneway','','Active','',NULL,NULL,'2024-06-13 18:42:19',NULL,NULL,NULL,NULL),(26,'Lambda','Lambda is a cloud-based GPU company catering to developers throughout the entire lifecycle of AI development.',' San Francisco, California, United States','Private',' lambdalabs.com ','13','San Francisco Bay Area , West Coast , Western US','2012','Debt Financing ','Michael Balaban , Stephen Balaban','','Active','',NULL,NULL,'2024-06-13 18:42:19',NULL,NULL,NULL,NULL),(27,'Sarla Aviation','Sarla Aviation creates electric vertical take-off and landing eVTOL aircraft.',' Bengaluru, Karnataka, India','Private',' sarla-aviation.com/ ','','Asia-Pacific (APAC)','Jan-24','Pre-Seed ','','','Active','',NULL,NULL,'2024-06-13 18:42:20',NULL,NULL,NULL,NULL),(28,'Assert AI','Assert AI is a computer vision- SaaS company that offers artificial intelligence-0based video analytics solutions.\r','Mumbai, Maharashtra, India','Private','www.assertai.com/','17,959',NULL,NULL,'Series A',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:26',NULL,NULL,NULL,NULL),(29,'DaMENSCH','DaMENSCH designs men\'s apparel to create premium essential wear for modern men.\r','Bengaluru, Karnataka, India','Private','www.damensch.com','1,984',NULL,NULL,'Series B',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:27',NULL,NULL,NULL,NULL),(30,'ChargeZone','Charge+Zone provides services in renewable energy solutions, product development, and software engineering company.\r','Vadodara, Gujarat, India','Private','www.chargezone.co/','50,196',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:27',NULL,NULL,NULL,NULL),(31,'Pointo','360° EV ecosystem for Electric 3 Wheelers & Electric Fleet\r','Kolkata, West Bengal, India','Private','pointo.in','170,877',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:28',NULL,NULL,NULL,NULL),(32,'Dexif','Dexif is a fixed income products platform.\r','New Delhi, Delhi, India','Private','www.dexif.in','170,877',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:28',NULL,NULL,NULL,NULL),(33,'GO DESi','GO DESi is a packaged foods startup that manufactures confectionery and regional-focussed treats.\r','Bangalore, Karnataka, India','Private','godesi.in','5,722',NULL,NULL,'Series B',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:29',NULL,NULL,NULL,NULL),(34,'1K Networks','1K provides distribution network services that connect merchants directly with food and FMCG product manufacturers.\r','Gurgaon, Haryana, India','Private','www.1knetworks.com','5,963',NULL,NULL,'Series B',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:29',NULL,NULL,NULL,NULL),(35,'Kyari','Kyari is a plant nursery and online home garden store that offers indoor plants, succulents, planters, and pots online.\r','Indore, Madhya Pradesh, India','Private','kyari.co','141,102',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:29',NULL,NULL,NULL,NULL),(36,'TalkEsport','TalkEsport is a global esports media and technology portal.\r','Calcutta, West Bengal, India','Private','www.talkesport.com','87,673',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:30',NULL,NULL,NULL,NULL),(37,'BriskPe','Cross-Border Payment Service\r','Mumbai, Maharashtra, India','Private','briskpe.com','128,248',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:30',NULL,NULL,NULL,NULL),(38,'Knight Ai','Knight Ai: Pioneering AI-powered software solutions. Crafting intelligent mobile apps, web apps, Chrome extensions, and WordPress plugins.\r','London, England, United Kingdom','Private','knightai.co/','128,248',NULL,NULL,'Series E',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:31',NULL,NULL,NULL,NULL),(39,'BharatRohan','BharatRohan collects data from agricultural farms and converts it into actionable information and reports for industrial producers.\r','Hyderabad, Andhra Pradesh, India','Private','www.bharatrohan.in/','23,119',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:31',NULL,NULL,NULL,NULL),(40,'Cornext','Cornext Agri Products is a National Best Startup Award winner that develops simple feeding solutions for Indian dairy farmers.\r','Hyderabad, Andhra Pradesh, India','Private','www.cornext.in','69,546',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:32',NULL,NULL,NULL,NULL),(41,'Poshn','Poshn is a digital agri-trading network that enables buyers and sellers of agricultural commodities to trade online.\r','New Delhi, Delhi, India','Private','poshn.co','3,569',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:32',NULL,NULL,NULL,NULL),(42,'Parseable','Free and Open Source Log Storage and Observability Platform\r','Bengaluru, Karnataka, India','Private','www.parseable.io','163,338',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:33',NULL,NULL,NULL,NULL),(43,'Atomgrid','Atomgrid builds a tech enabled custom manufacturing and sourcing platform for speciality chemicals.\r','Bengaluru, Karnataka, India','Private','www.atomgrid.in/','163,338',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:33',NULL,NULL,NULL,NULL),(44,'Ecozen','Ecozen is a technology company that enables a farm-to-fork value chain for perishables.\r','Pune, Maharashtra, India','Private','ecozensolutions.com','62,458',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:34',NULL,NULL,NULL,NULL),(45,'GRE Renew Enertech','GRE Renew Enertech operates as a manufacturer, exporter and supplier of LED lighting.\r','Mehsana, Gujarat, India','Private','greindia.com/','62,458',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:35',NULL,NULL,NULL,NULL),(46,'Razorpay','Razorpay is a platform that enables businesses to accept, process, and disburse payments.\r','Bangalore, Karnataka, India','Private','razorpay.com/','22,751',NULL,NULL,'Secondary Market',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:35',NULL,NULL,NULL,NULL),(47,'Unacademy','Unacademy is an online learning platform that provides educational content such as video lectures and examinations.\r','Bangalore, Karnataka, India','Private','unacademy.com','25,549',NULL,NULL,'Series H',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:36',NULL,NULL,NULL,NULL),(48,'Cure.fit','Cult.fit is a health and fitness company offering digital and offline experiences across fitness, nutrition, and mental well-being.\r','Bangalore, Karnataka, India','Private','www.cult.fit','428',NULL,NULL,'Series F',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:36',NULL,NULL,NULL,NULL),(49,'Licious','Licious is an online meat and seafood ordering startup that follows an end-to-end business.\r','Bengaluru, Karnataka, India','Private','www.licious.in','1,082',NULL,NULL,'Series F',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:37',NULL,NULL,NULL,NULL),(50,'Bounce','Bounce is a transportation company providing scooter rentals.\r','Bangalore, Karnataka, India','Private','bounceshare.com','5,417',NULL,NULL,'Series E',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:37',NULL,NULL,NULL,NULL),(51,'Rivigo','Rivigo is a technology-enabled logistics platform provider that offers transport services.\r','Gurgaon, Haryana, India','Private','rivigo.com','46,299',NULL,NULL,'Series H',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:38',NULL,NULL,NULL,NULL),(52,'Khatabook','Khatabook is the fintech startup that provides a digital ledger app targeted primarily at small businesses.\r','Bangalore, Karnataka, India','Private','khatabook.com','986',NULL,NULL,'Series C',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:38',NULL,NULL,NULL,NULL),(53,'WhiteHat Jr.','Whitehar Jr - leading and best computer programming learning websites teaching kids to code.\r','Andheri, Maharashtra, India','Private','www.whitehatjr.com','9,279',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:39',NULL,NULL,NULL,NULL),(54,'Meesho','Meesho is a social commerce platform that enables individuals and small businesses to start their online stores without any investment.\r','Bangalore, Karnataka, India','Private','www.meesho.com','17,882',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:39',NULL,NULL,NULL,NULL),(55,'Ninjacart','Ninjacart is a business-to-business fresh produce supply chain that connects farmers, manufactures, and brands to retailers directly.\r','Bengaluru, Karnataka, India','Private','ninjacart.com/','160',NULL,NULL,'Series D',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:39',NULL,NULL,NULL,NULL),(56,'Zomato','Zomato is a restaurant discovery platform that allows users to search for restaurants, browse menus, and place orders for food delivery.\r','Gurgaon, Haryana, India','Public','www.zomato.com','15,465',NULL,NULL,'Post-IPO Secondary',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:33:40',NULL,NULL,NULL,NULL),(57,'BYJU\'S','BYJU\'S is an educational technology company that develops personalized learning programs for K-12 students.\r','Bangalore, Karnataka, India','Private','www.byjus.com','18,289',NULL,NULL,'Private Equity',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:52',NULL,NULL,NULL,NULL),(58,'Rupeek','Rupeek is an online lending platform that specializes in credit risk, gold loans, and personal loans.\r','Bangalore, Karnataka, India','Private','rupeek.com/','2,174',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:53',NULL,NULL,NULL,NULL),(59,'Urban Company','Urban provides a marketplace for freelance labor.\r','Gurgaon, Haryana, India','Private','www.urbancompany.com','421',NULL,NULL,'Secondary Market',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:53',NULL,NULL,NULL,NULL),(60,'Dunzo','Dunzo is a hyper-local delivery app that connects users to the nearest delivery partner.\r','Bangalore, Karnataka, India','Private','www.dunzo.com','37,948',NULL,NULL,'Convertible Note',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:54',NULL,NULL,NULL,NULL),(61,'NoBroker','NoBroker is India\'s first and only proptech unicorn that is 100% brokerage free. It is a one stop shop for all property related needs.\r','Bengaluru, Karnataka, India','Private','www.nobroker.in','13,022',NULL,NULL,'Series E',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:54',NULL,NULL,NULL,NULL),(62,'Lendingkart','Lendingkart is a fintech company that provides financing solutions and working capital loans to small and medium-sized enterprises.\r','Ahmedabad, Gujarat, India','Private','www.lendingkart.com','913',NULL,NULL,'Convertible Note',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:55',NULL,NULL,NULL,NULL),(63,'Upstox','Upstox is a fintech company that allows innovative investment options for its users.\r','Mumbai, Maharashtra, India','Private','upstox.com/','37,832',NULL,NULL,'Series C',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:55',NULL,NULL,NULL,NULL),(64,'PharmEasy','PharmEasy is an online health service that connects users to local pharmacies and labs for medicine delivery and diagnostic services.\r','Mumbai, Maharashtra, India','Private','pharmeasy.in','483',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:56',NULL,NULL,NULL,NULL),(65,'Jumbotail','Jumbotail is a B2B marketplace and retail platform for food and grocery shopping.\r','Bangalore, Karnataka, India','Private','www.jumbotail.com','40,120',NULL,NULL,'Series C',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:56',NULL,NULL,NULL,NULL),(66,'Shiprocket','Shiprocket is an e-commerce shipping platform that enables cost-effective shipping for direct-to-consumer retailers.\r','New Delhi, Delhi, India','Private','www.shiprocket.in','32,287',NULL,NULL,'Series E',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:57',NULL,NULL,NULL,NULL),(67,'Myelin Foundry','Myelin Foundry develops Artificial Intelligence algorithms on video, voice, and sensor data, for edge devices.\r','Bengaluru, Karnataka, India','-','www.myelinfoundry.com/','-',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:57',NULL,NULL,NULL,NULL),(68,'CRED','CRED is a fintech startup that offers rewards for customers who use its platform to pay their credit card bills.\r','Bangalore, Karnataka, India','-','www.cred.club','2,814',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:58',NULL,NULL,NULL,NULL),(69,'BharatPe','BharatPe is a financial services platform that processes payments via UPI and POS, and provides credit or loans to their merchants.\r','New Delhi, Delhi, India','-','bharatpe.com','3,917',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:58',NULL,NULL,NULL,NULL),(70,'Cars24','CARS24 offers a tech-enabled marketplace for buying and selling pre-owned cars.\r','Gurgaon, Haryana, India','-','www.cars24.com','87',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:58',NULL,NULL,NULL,NULL),(71,'Zerodha','Zerodha is an online website with stock trading information and capabilities.\r','Bangalore, Karnataka, India','Private','www.zerodha.com','250,938',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:59',NULL,NULL,NULL,NULL),(72,'Fresh From Farm','Fresh Farms is a farm that produces grapes, vegetables, and watermelons.\r','Hermosillo, Sonora, Mexico','Private','freshfarms.com.mx','405,624',NULL,NULL,'-',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:34:59',NULL,NULL,NULL,NULL),(73,'Niqo Robotics','Niqo Robotics is an AI powered robotics solutions provider empowering small farm holders.\r','Bangalore, Karnataka, India','Private','niqorobotics.com/','19,183',NULL,NULL,'Series B',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:35:00',NULL,NULL,NULL,NULL),(74,'vHub.ai','vHub.ai is an influencer marketing platform that enables campaign management, influencer discovery, and ROI analytics.\r','Bangalore, Karnataka, India','Private','www.vhub.ai','-',NULL,NULL,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:35:00',NULL,NULL,NULL,NULL),(75,'Mu Sigma','Mu Sigma offers management consulting services designed to provide decision sciences and big data analysis.\r','Bengaluru, Karnataka, India','Private','www.mu-sigma.com','100,817',NULL,NULL,'Venture - Series Unknown',NULL,NULL,NULL,NULL,NULL,NULL,'2024-06-18 19:35:01',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `organization_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 11:26:53
