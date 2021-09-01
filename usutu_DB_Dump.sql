-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: usutu
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add menu',1,'add_menu'),(2,'Can change menu',1,'change_menu'),(3,'Can delete menu',1,'delete_menu'),(4,'Can view menu',1,'view_menu'),(5,'Can add card',2,'add_card'),(6,'Can change card',2,'change_card'),(7,'Can delete card',2,'delete_card'),(8,'Can view card',2,'view_card'),(9,'Can add template',3,'add_template'),(10,'Can change template',3,'change_template'),(11,'Can delete template',3,'delete_template'),(12,'Can view template',3,'view_template'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$psF0iTFik7lL$y2oq2J9LMOPu/KNGEQsS4+qTY1Puw+NMHjgzG+o0UBU=','2021-09-01 07:29:07.503242',1,'admin','','','',1,1,'2020-10-04 13:24:18.698800');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards_card`
--

DROP TABLE IF EXISTS `cards_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards_card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `card_type` varchar(200) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `team_member_description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards_card`
--

LOCK TABLES `cards_card` WRITE;
/*!40000 ALTER TABLE `cards_card` DISABLE KEYS */;
INSERT INTO `cards_card` VALUES (1,'photos/2021/07/06/professional_vbmah2E.png','Trading and Risk Management Consulting','We have a deep understanding of trading and risk management systems from front to back across multiple asset classes. We understand both the technology aspects and the related pricing and valuation of different financial instruments.','S',1,''),(2,'photos/2021/07/06/professional.png','Investments Management Consulting','We offer services in investments management systems consulting and related portfolio construction.\r\nWe appreciate both portfolio management theory and the technology applicable to the space.','S',1,''),(3,'photos/2021/07/06/flexible.png','Portfolio Optimization and Asset Allocation','We assist asset managements in running models for portfolio optimization and related asset allocation.\r\nSuch services are provided in all phases of asset management i.e. policy setting and periodic reviews.','S',1,''),(4,'photos/2021/07/04/mugu_pic_nFiONq1.jpg','Mugu Mtsetfwa','Mugu is the founder of Great Usutu. He started his career in IT, nuclear research before transitioning into finance and related technology. Mugu has over 15 years working experience applying technology in different sectors. He holds a Masters in Nuclear Engineering from North West University and is also a Chartered Financial Analyst Level 3 candidate. He is passionate about science/technology, civil rights and social action.','T',1,'Mugu is the founder of Great Usutu. He started his career in nuclear research before transitioning into finance and related technology. Mugu has over 15 years working experience applying technology in different sectors. He holds a Masters in Nuclear Engineering from North West University and is also a Chartered Financial Analyst Level 3 candidate. He is passionate about science/technology, civil rights and social action.'),(5,'photos/2021/07/06/service_icon.png','Software Implementations','We offer software project implementations services in capital markets. This includes software development targeted to quantitative based asset management and trading and risk management.','S',1,'We offer software project implementations services in capital markets. This includes software development targeted to quantitative based asset management and trading and risk management.'),(6,'photos/2021/07/07/splash.jpg','Associate Consultant','Vacant','T',1,'Vacant');
/*!40000 ALTER TABLE `cards_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-10-04 13:30:05.973382','1','XXXX',1,'[{\"added\": {}}]',3,1),(2,'2021-07-04 20:47:51.039086','1','Trading and Asset Management Consulting',2,'[{\"changed\": {\"fields\": [\"Banner title\", \"Banner text\", \"Button text\", \"Feature card text\", \"About text\"]}}]',3,1),(3,'2021-07-04 20:50:55.328603','1','Trading and Asset Management Consulting',2,'[{\"changed\": {\"fields\": [\"Banner text\"]}}]',3,1),(4,'2021-07-04 20:53:08.664983','1','Services',1,'[{\"added\": {}}]',2,1),(5,'2021-07-04 20:55:52.677324','2','Investments Management Systems Consulting',1,'[{\"added\": {}}]',2,1),(6,'2021-07-04 20:59:37.248058','3','Portfolio Optimization and Asset Allocation',1,'[{\"added\": {}}]',2,1),(7,'2021-07-04 21:01:51.795877','1','Trading and Risk Management Consulting',2,'[{\"changed\": {\"fields\": [\"Title\", \"Text\"]}}]',2,1),(8,'2021-07-04 21:06:11.166741','2','Investments Management Consulting',2,'[{\"changed\": {\"fields\": [\"Title\", \"Text\"]}}]',2,1),(9,'2021-07-04 21:08:00.989963','1','Trading and Asset Management Consulting',2,'[{\"changed\": {\"fields\": [\"Banner text\"]}}]',3,1),(10,'2021-07-04 21:09:29.797086','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner title\", \"Banner text\"]}}]',3,1),(11,'2021-07-04 21:21:50.402972','4','Mugu Mtsetfwa',1,'[{\"added\": {}}]',2,1),(12,'2021-07-04 21:23:38.922849','4','Mugu Mtsetfwa',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',2,1),(13,'2021-07-04 21:25:51.692722','4','Mugu Mtsetfwa',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',2,1),(14,'2021-07-06 20:05:16.482276','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner image\"]}}]',3,1),(15,'2021-07-06 20:07:53.550356','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner image\"]}}]',3,1),(16,'2021-07-06 20:22:20.315336','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner image\"]}}]',3,1),(17,'2021-07-06 20:24:03.396390','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner text\"]}}]',3,1),(18,'2021-07-06 20:29:46.592981','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner text\", \"Team text\"]}}]',3,1),(19,'2021-07-06 20:32:05.090351','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner text\"]}}]',3,1),(20,'2021-07-06 20:33:56.920546','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner image\"]}}]',3,1),(21,'2021-07-06 20:34:33.097703','1','Capital Markets Consulting',2,'[{\"changed\": {\"fields\": [\"Banner text\"]}}]',3,1),(22,'2021-07-06 20:35:12.749286','4','Mugu Mtsetfwa',2,'[{\"changed\": {\"fields\": [\"Text\"]}}]',2,1),(23,'2021-07-06 20:35:36.512664','3','Portfolio Optimization and Asset Allocation',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',2,1),(24,'2021-07-06 20:35:55.909738','2','Investments Management Consulting',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',2,1),(25,'2021-07-06 20:36:15.012122','1','Trading and Risk Management Consulting',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',2,1),(26,'2021-07-06 20:44:16.774949','5','Software Implementations',1,'[{\"added\": {}}]',2,1),(27,'2021-07-06 20:54:19.611990','1','Capital Markets Consulting',2,'[]',3,1),(28,'2021-07-07 19:27:33.640064','6','Associate Consultant',1,'[{\"added\": {}}]',2,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(2,'cards','card'),(8,'contenttypes','contenttype'),(3,'home_template','template'),(1,'menu','menu'),(9,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-10-04 13:13:46.984630'),(2,'auth','0001_initial','2020-10-04 13:13:47.321769'),(3,'admin','0001_initial','2020-10-04 13:13:48.123289'),(4,'admin','0002_logentry_remove_auto_add','2020-10-04 13:13:48.311479'),(5,'admin','0003_logentry_add_action_flag_choices','2020-10-04 13:13:48.327099'),(6,'contenttypes','0002_remove_content_type_name','2020-10-04 13:13:48.529151'),(7,'auth','0002_alter_permission_name_max_length','2020-10-04 13:13:48.643516'),(8,'auth','0003_alter_user_email_max_length','2020-10-04 13:13:48.665642'),(9,'auth','0004_alter_user_username_opts','2020-10-04 13:13:48.681268'),(10,'auth','0005_alter_user_last_login_null','2020-10-04 13:13:48.781537'),(11,'auth','0006_require_contenttypes_0002','2020-10-04 13:13:48.797215'),(12,'auth','0007_alter_validators_add_error_messages','2020-10-04 13:13:48.812811'),(13,'auth','0008_alter_user_username_max_length','2020-10-04 13:13:48.928688'),(14,'auth','0009_alter_user_last_name_max_length','2020-10-04 13:13:49.029375'),(15,'auth','0010_alter_group_name_max_length','2020-10-04 13:13:49.066711'),(16,'auth','0011_update_proxy_permissions','2020-10-04 13:13:49.066711'),(17,'cards','0001_initial','2020-10-04 13:13:49.144822'),(18,'cards','0002_auto_20200909_0404','2020-10-04 13:13:49.176755'),(19,'cards','0003_auto_20200911_0322','2020-10-04 13:13:49.185117'),(20,'cards','0004_auto_20200911_0345','2020-10-04 13:13:49.185117'),(21,'cards','0005_card_team_member_description','2020-10-04 13:13:49.283170'),(22,'home_template','0001_initial','2020-10-04 13:13:49.367781'),(23,'home_template','0002_menu','2020-10-04 13:13:49.430276'),(24,'home_template','0003_delete_menu','2020-10-04 13:13:49.445904'),(25,'home_template','0004_auto_20200911_0409','2020-10-04 13:13:49.461513'),(26,'home_template','0005_auto_20200912_0142','2020-10-04 13:13:49.468020'),(27,'menu','0001_initial','2020-10-04 13:13:49.532234'),(28,'menu','0002_auto_20200909_1603','2020-10-04 13:13:49.547452'),(29,'menu','0003_auto_20200911_0322','2020-10-04 13:13:49.583746'),(30,'menu','0004_auto_20200911_0409','2020-10-04 13:13:49.583746'),(31,'sessions','0001_initial','2020-10-04 13:13:49.646230');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('23xts73pq1v6x6bn34eyeabm1fva734t','MmViMzA2MjRhZmRjYmY5NGJjZGQ4NjQwYjhhZmE5YjU2ZTYzNWQzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGU2ZTI3ZGU5NTlmZjNjZWJjNThlNTg3MjdkZjA0NjAzY2ZjNGIyIn0=','2020-10-18 13:25:04.199202'),('37xseiipa4sfawqldca1tmf20gd2azz6','MmViMzA2MjRhZmRjYmY5NGJjZGQ4NjQwYjhhZmE5YjU2ZTYzNWQzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGU2ZTI3ZGU5NTlmZjNjZWJjNThlNTg3MjdkZjA0NjAzY2ZjNGIyIn0=','2021-07-01 19:37:55.217421'),('7snn6vcobwtrihpy3ggbt11276pds3dr','MmViMzA2MjRhZmRjYmY5NGJjZGQ4NjQwYjhhZmE5YjU2ZTYzNWQzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGU2ZTI3ZGU5NTlmZjNjZWJjNThlNTg3MjdkZjA0NjAzY2ZjNGIyIn0=','2020-12-14 16:53:29.088133'),('b9wr9karbl8aa0g5vdp6u7u4lnt6eek1','MmViMzA2MjRhZmRjYmY5NGJjZGQ4NjQwYjhhZmE5YjU2ZTYzNWQzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGU2ZTI3ZGU5NTlmZjNjZWJjNThlNTg3MjdkZjA0NjAzY2ZjNGIyIn0=','2021-07-21 19:04:37.795058'),('kpj8xch2jbtim76yklmpxwej0a13p0i1','MmViMzA2MjRhZmRjYmY5NGJjZGQ4NjQwYjhhZmE5YjU2ZTYzNWQzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGU2ZTI3ZGU5NTlmZjNjZWJjNThlNTg3MjdkZjA0NjAzY2ZjNGIyIn0=','2020-11-22 14:22:38.899808'),('l133teabw62wp7jxigtrukebwdga42k8','MmViMzA2MjRhZmRjYmY5NGJjZGQ4NjQwYjhhZmE5YjU2ZTYzNWQzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwMGU2ZTI3ZGU5NTlmZjNjZWJjNThlNTg3MjdkZjA0NjAzY2ZjNGIyIn0=','2021-09-15 07:29:07.508238');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_template_template`
--

DROP TABLE IF EXISTS `home_template_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_template_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) NOT NULL,
  `banner_image` varchar(100) NOT NULL,
  `banner_title` varchar(200) NOT NULL,
  `banner_text` longtext NOT NULL,
  `button_text` varchar(20) NOT NULL,
  `button_will_take_to` varchar(200) NOT NULL,
  `feature_card_title` varchar(200) NOT NULL,
  `feature_card_text` longtext NOT NULL,
  `about_image` varchar(100) NOT NULL,
  `about_title` varchar(200) NOT NULL,
  `about_text` longtext NOT NULL,
  `service_title` varchar(200) NOT NULL,
  `team_title` varchar(200) NOT NULL,
  `team_text` longtext NOT NULL,
  `social_image_1` varchar(100) NOT NULL,
  `social_link_1` varchar(200) NOT NULL,
  `social_image_2` varchar(100) NOT NULL,
  `social_link_2` varchar(200) NOT NULL,
  `social_image_3` varchar(100) NOT NULL,
  `social_link_3` varchar(200) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_template_template`
--

LOCK TABLES `home_template_template` WRITE;
/*!40000 ALTER TABLE `home_template_template` DISABLE KEYS */;
INSERT INTO `home_template_template` VALUES (1,'photos/2020/10/04/logo.png','photos/2021/07/06/wish.jpg','Capital Markets Consulting','Specialist trading, risk and asset management consulting services','About Us','about','We get our hands dirty, with our clients..','We are able to understand capital market problems at a high level and conceptualize solutions at a detailed level with the changing competitive landscape our customers operate under in mind.','photos/2020/10/04/about_image.jpg','About Us','We are a team of scientific minded people who understand the niche intersection of technology and capital markets.\r\nWe understand capital markets fundamentals, related modelling and application of technology in this niche area in corporate and investment banks and asset management firms.','Services','Our Team','We are multidisciplinary team of highly motivated individuals rich in our diversity.','photos/2020/10/04/facebook.png','www.facebook.com','photos/2020/10/04/instagram.png','www.instagram.com','photos/2020/10/04/twitter.png','www.twitter.com',1);
/*!40000 ALTER TABLE `home_template_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu`
--

DROP TABLE IF EXISTS `menu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `external_link` varchar(20) NOT NULL,
  `internal_link` varchar(200) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu`
--

LOCK TABLES `menu_menu` WRITE;
/*!40000 ALTER TABLE `menu_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-01  9:44:31
