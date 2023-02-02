-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: prison_database
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `tbl_document`
--

DROP TABLE IF EXISTS `tbl_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_document` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `status` enum('Publish','Unpublished') NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_document`
--

LOCK TABLES `tbl_document` WRITE;
/*!40000 ALTER TABLE `tbl_document` DISABLE KEYS */;
INSERT INTO `tbl_document` VALUES (1,'System Report','1618834256_','Unpublished'),(2,'System Design','1618835271_','Publish'),(3,'System Report','1618831599_HR1.PDF','Publish'),(4,'System Design','1618835223_SSRN-id3532759.pdf','Unpublished'),(5,'System Design','1618845159_6 Bhushan Kapoor.pdf','Publish'),(6,'System Design','1618861181_HR 3.pdf','Unpublished'),(7,'System Report','1628407236_','Publish'),(8,'PPT-1','1619018294_RERS-Proposal.pptx','Publish'),(9,'PPT-1','1619880109_final.pptx','Publish'),(10,'PPT-1','1619896470_final.pptx','Unpublished'),(11,'PPT-1','1620119708_Prison Management System.pdf','Publish');
/*!40000 ALTER TABLE `tbl_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logs`
--

DROP TABLE IF EXISTS `tbl_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time DEFAULT NULL,
  `police_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `fk3_police_no` (`police_no`),
  CONSTRAINT `fk3_police_no` FOREIGN KEY (`police_no`) REFERENCES `tbl_police` (`police_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1237 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logs`
--

LOCK TABLES `tbl_logs` WRITE;
/*!40000 ALTER TABLE `tbl_logs` DISABLE KEYS */;
INSERT INTO `tbl_logs` VALUES (1176,'Hassan','Salum','hassan','Boss','2021-08-08','09:37:29',500),(1177,'Zafaran','Abdalla','zafa','Staff','2021-08-08','09:37:55',501),(1178,'Hassan','Salum','hassan','Boss','2021-08-08','09:38:14',500),(1179,'Hassan','Salum','hassan','Boss','2021-08-08','09:38:26',500),(1180,'Zafaran','Abdalla','zafa','Staff','2021-08-08','09:57:19',501),(1181,'Zafaran','Abdalla','zafa','Staff','2021-08-08','10:08:50',501),(1182,'Zafaran','Abdalla','zafa','Staff','2021-08-08','10:32:57',501),(1183,'Hassan','Salum','hassan','Boss','2021-08-08','10:33:30',500),(1184,'Zafaran','Abdalla','zafa','Staff','2021-08-08','12:35:44',501),(1185,'Zafaran','Abdalla','zafa','Staff','2021-08-08','12:44:04',501),(1186,'Hassan','Salum','hassan','Boss','2021-08-08','13:04:40',500),(1187,'Zafaran','Abdalla','zafa','Staff','2021-08-08','13:20:30',501),(1188,'Hassan','Salum','hassan','Boss','2021-08-08','13:38:57',500),(1189,'Zafaran','Abdalla','zafa','Staff','2021-08-08','14:06:33',501),(1190,'Hassan','Salum','hassan','Boss','2021-08-08','15:28:55',500),(1191,'Zafaran','Abdalla','zafa','Staff','2021-08-18','17:21:05',501),(1192,'Hassan','Salum','hassan','Boss','2021-09-18','20:40:22',500),(1194,'Zafaran','Abdalla','zafa','Staff','2021-10-14','19:04:21',501),(1196,'Hassan','Salum','hassan','Boss','2021-10-14','21:43:39',500),(1197,'Hassan','Salum','hassan','Boss','2021-10-14','21:45:36',500),(1198,'Hassan','Salum','hassan','Boss','2021-10-14','21:57:12',500),(1199,'Hassan','Salum','hassan','Boss','2021-10-14','21:57:35',500),(1200,'Hassan','Salum','hassan','Boss','2021-10-15','07:53:24',500),(1201,'Hassan','Salum','hassan','Boss','2021-10-15','08:05:29',500),(1202,'Zafaran','Abdalla','zafa','Staff','2021-10-15','08:10:55',501),(1203,'Hassan','Salum','hassan','Boss','2021-10-15','08:19:38',500),(1204,'Zafaran','Abdalla','zafa','Staff','2021-10-15','12:32:27',501),(1205,'Zafaran','Abdalla','zafa','Staff','2022-01-13','18:45:19',501),(1206,'Zafaran','Abdalla','zafa','Staff','2022-01-17','18:33:20',501),(1209,'Hassan','Salum','hassan','ICT','2022-03-15','10:05:36',500),(1210,'Hassan','Salum','hassan','ICT','2022-03-15','10:08:24',500),(1211,'Zafaran','Abdalla','zafa','ICT','2022-03-15','10:09:23',501),(1212,'Zafaran','Abdalla','zafa','Staff','2022-03-15','10:10:46',501),(1213,'Zafaran','Abdalla','zafa','Staff','2022-03-15','10:16:39',501),(1214,'Zafaran','Abdalla','zafa','Staff','2022-03-15','10:17:35',501),(1215,'Zafaran','Abdalla','zafa','Staff','2022-03-15','10:19:15',501),(1216,'Hassan','Salum','hassan','Boss','2022-03-15','10:19:27',500),(1217,'Hassan','Salum','hassan','Boss','2022-03-15','10:20:01',500),(1218,'Hassan','Salum','hassan','Boss','2022-03-16','09:36:29',500),(1219,'Hassan','Salum','hassan','Boss','2022-03-16','09:41:21',500),(1220,'Hassan','Salum','hassan','Boss','2022-03-17','10:22:48',500),(1221,'Hassan','Salum','hassan','Boss','2022-03-18','21:59:03',500),(1222,'Hassan','Salum','hassan','Boss','2022-03-18','22:01:00',500),(1223,'Hassan','Makungu','hassan','Boss','2022-03-25','00:20:39',500),(1224,'Zafaran','Abdalla','zafa','Staff','2022-04-14','11:57:35',501),(1225,'Hassan','Makungu','hassan','Boss','2022-04-22','23:20:51',500),(1226,'Hassan','Makungu','hassan','Boss','2022-04-26','21:55:26',500),(1227,'Hassan','Makungu','hassan','Boss','2022-04-29','05:13:29',500),(1228,'Zafaran','Abdalla','zafa','Staff','2022-05-13','19:35:16',501),(1229,'Zafaran','Abdalla','zafa','Staff','2022-05-13','19:36:16',501),(1230,'Hassan','Makungu','hassan','Boss','2022-05-17','04:38:00',500),(1231,'Hassan','Makungu','hassan','Boss','2022-05-18','16:37:12',500),(1232,'Hassan','Makungu','hassan','Boss','2022-05-18','18:49:43',500),(1233,'Hassan','Makungu','hassan','Boss','2022-05-21','23:34:02',500),(1234,'Hassan','Makungu','hassan','Boss','2022-06-01','18:15:42',500),(1235,'Hassan','Makungu','hassan','Boss','2022-06-02','23:52:41',500),(1236,'Hassan','Makungu','hassan','Boss','2022-06-07','16:41:19',500);
/*!40000 ALTER TABLE `tbl_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_police`
--

DROP TABLE IF EXISTS `tbl_police`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_police` (
  `police_no` int(11) NOT NULL AUTO_INCREMENT,
  `police_fname` varchar(20) NOT NULL,
  `police_lname` varchar(20) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(20) NOT NULL,
  `house_no` varchar(20) DEFAULT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `tribe` varchar(20) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  `national_id` int(9) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `status` enum('Active','Passive') DEFAULT NULL,
  PRIMARY KEY (`police_no`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_police`
--

LOCK TABLES `tbl_police` WRITE;
/*!40000 ALTER TABLE `tbl_police` DISABLE KEYS */;
INSERT INTO `tbl_police` VALUES (500,'Hassan','Makungu','Male','1989-07-12',32,'Kihinani','K/123','+255776948606','Mtumbatu','ICT',555555555,'hassan','123','Boss','1624134339_1618906877_m13.jpg','Active'),(501,'Zafaran','Abdalla','Female','1997-12-11',23,'BUBUBU','C.SHK 666','+255778898989','Mtumbatu','ICT',99999999,'zafa','123','Staff','1627735300_1618860438_f5.jpg','Active'),(502,'Hamis','Ali','Male','1996-03-31',25,'Kinyasini','C.SHK 999','0779909092','Mtumbat','ICT',55555521,'juma','123','Boss','1619010770_m11.jpg','Passive'),(503,'Mohammed','Yussuf','Male','1996-10-02',24,'Fuon','MW/A/14','077543213','Shiraz','HRM',10023,'moo','1234','Staff','1620545224_m2.jpg','Active'),(504,'Gheda','Mbarouk','Female','1999-05-20',22,'Fuon','MW/103','+255777235222','Mtumbatu','Statistics',14,'gheda','123','Askari','1621058960_f11.jpg','Active'),(506,'Said','Juma','Male','1997-12-12',23,'Fuon','MW/123','+255777645','Mshihiri','ICT',123,'said','123','Staff','1627036432_f7.jpg','Active'),(507,'Thuwaiba','Ally','Female','1999-05-05',22,'Kihinan','MT/87','07765432','Mshihiri','ICT',123,'thuu','123','Askari','1621060036_f11.jpg','Active'),(508,'Gheda','Mbarouk','Female','1999-05-04',22,'Fuon','MW/123','077765432','Mtumbatu','ICT',12,'gheda','123','Askari','1621060820_f11.jpg','Passive'),(509,'Salha','Mohamed','Female','1976-02-11',45,'Mtonn','MW/128','0777543212','Mshihiri','ICT',8765,'salha','123','Corplo',NULL,'Active'),(510,'Khadija','Juma','Female','1999-12-12',21,'Bumbwin','MW/12','0772413362','Mshihiri','Statistics',12,'dyda','123','Askari',NULL,'Passive'),(511,'Hasan','Said','Male','1999-02-11',22,'BUBUBU','MW/15','0777234542','Mtumbatu','Statistics',8,'zafha','123','Askari',NULL,'Passive'),(512,'Halima','Mzungu','Female','2000-12-12',20,'Fuon','FW/123','+255773456','Mtumbatu','ICT',25,'halima','1234','Boss','1627876226_1618347062_f2.jpg','Passive'),(513,'Arafa','Said','Female','1997-02-12',24,'Fuon','K/273','+255765234','Mtumbatu','Statistics',29,'arafa','1234','Staff','1627907264_1618604886_1618389632469.JPG','Passive'),(514,'Jeremia','John','Male','2000-10-14',21,'Mton','12','+255266646278','Mtumbatu','Statistics',123,'jeneral','123','Corplo',NULL,'Active');
/*!40000 ALTER TABLE `tbl_police` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prisoners`
--

DROP TABLE IF EXISTS `tbl_prisoners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_prisoners` (
  `prison_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(20) NOT NULL,
  `house_no` varchar(20) DEFAULT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `work_name` varchar(20) DEFAULT NULL,
  `tribe` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) NOT NULL,
  `nid` int(9) NOT NULL,
  `crime` enum('Robery','Child Abuse','Kidnapping','Rape') DEFAULT NULL,
  `case_number` varchar(50) NOT NULL,
  `judgment_date` date DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `punish_duration` varchar(20) NOT NULL,
  `block_name` enum('Block A','Block B','Block C') DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `police_no` int(11) DEFAULT NULL,
  `status` enum('Active','Passive') DEFAULT NULL,
  PRIMARY KEY (`prison_id`),
  KEY `fk1_police_no` (`police_no`),
  CONSTRAINT `fk1_police_no` FOREIGN KEY (`police_no`) REFERENCES `tbl_police` (`police_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prisoners`
--

LOCK TABLES `tbl_prisoners` WRITE;
/*!40000 ALTER TABLE `tbl_prisoners` DISABLE KEYS */;
INSERT INTO `tbl_prisoners` VALUES (100,'Ashura','Haroon','Female','1997-07-07',24,'Saaten','C.SHK 55','+255773322233','Housewife','Mtumbatu','Tanzania',555555555,'Child Abuse','k661','2000-04-19','2000-06-19','Two Months','Block B','1618859001_m6.jpg',500,'Passive'),(101,'Ally','Othman','Male','2000-12-12',20,'Kwerekwe','C.SHK 777','+255777116767','Plumber','Mtumbatu','Tanzania',111111111,'Robery','k90','2006-04-20','2006-07-20','Three Months','Block C','1618904927_m11.jpg',501,'Active'),(103,'Ramadhan','Babu','Male','1996-04-09',25,'Bububu','MW/90','0772345342','Teacher','Shiraz','Kenya',1002,'Kidnapping','k200','2021-04-20','2025-04-20','Six Months','Block B','1619717886_m8.jpg',500,''),(204,'Arafa','Vuai','Female','2000-01-02',21,'Saaten','MW/A/14','0774455345','House wife','Shiraz','Uganda',1043,'Child Abuse','2033','2021-05-05','2021-05-11','20','Block B',NULL,500,'Passive'),(210,'Fatma','Khatib','Female','1992-12-12',28,'Mwera','C11','111111111','House Girl','Mtumbatu','Tanzania',1826,'Child Abuse','k232','2021-05-12','2021-07-19','One Month','Block A','1626803557_f6.jpg',501,''),(211,'Juma','Ally','Female','2000-02-12',21,'Mton','MW/12','+25577253','Plumber','Mtumbatu','Tanzania',1912,'Child Abuse','k29','2010-03-12','2020-11-10','Two Months','Block B','1627875759_1618341037_m3.jpg',500,''),(212,'Saum','Hamid','Female','2000-02-12',21,'Bububu','K/30','+255772345122','Plumber','Mtumbatu','Kenya',7788725,'Child Abuse','k/53','2020-02-12','2021-02-20','Two Months','Block B',NULL,500,'Active'),(213,'Halimaaa','Juma','Male','2000-02-12',21,'Mton','K/OQUQ','+255776524125','Plumber','Mtumbatu','Tanzania',116,'Kidnapping','k/35722','2019-03-12','2000-02-12','Two Months','Block B',NULL,500,'Active'),(214,'Saum','Juma','Female','1999-02-12',22,'Mton','K/2334','+255777352','Plumber','Mtumbatu','Kenya',1234,'Child Abuse','k/12','2000-03-12','2020-02-20','One Month','Block B','1627908046_1618340587_m5.jpg',500,'Active'),(215,'Fatma','Khatib','Female','2000-02-12',21,'Mton','MW/192','+255777253622','Plumber','Mtumbatu','Tanzania',128881,'Child Abuse','k/253','2016-12-12','2017-12-12','Three Months','Block A',NULL,500,'Active'),(216,'Salum','Juma','Male','1999-04-12',22,'Fuon','MW/6344','+255724425344','Teacher','Mtumbatu','Tanzania',9865,'Kidnapping','k/362','2010-03-12','2020-03-12','One Month','Block A','1628417440_1618604886_1618389632469.JPG',500,'Active');
/*!40000 ALTER TABLE `tbl_prisoners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prisons`
--

DROP TABLE IF EXISTS `tbl_prisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_prisons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prison_name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `district` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `status` enum('Published','Unpublished') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prisons`
--

LOCK TABLES `tbl_prisons` WRITE;
/*!40000 ALTER TABLE `tbl_prisons` DISABLE KEYS */;
INSERT INTO `tbl_prisons` VALUES (1,'Kinua Miguu','Kilimani','West A','Urban','1618968064_h5.jfif','Unpublished'),(2,'Kufa Uongo','Mton','West B','Urban','1619005072_h12.jfif','Published'),(3,'Mgeni Haji','Fuoni','West B','Urban','1618951233_h3.jpg','Published'),(4,'Mafunzo','Kilimani','West A','Urban','1619003890_h10.jfif','Published'),(5,'Kizimban','Mjini','West B','Urban','1628406704_1618967998_h5.jfif','Published'),(6,'Bumbwi Sudi','Mton','West B','Kusini Unguja','1624363915_1618968064_h5.jfif','Unpublished');
/*!40000 ALTER TABLE `tbl_prisons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_remand_prisoners`
--

DROP TABLE IF EXISTS `tbl_remand_prisoners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_remand_prisoners` (
  `prison_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(20) NOT NULL,
  `house_no` varchar(20) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `work_name` varchar(20) DEFAULT NULL,
  `tribe` varchar(20) DEFAULT NULL,
  `nationality` varchar(20) NOT NULL,
  `nid` int(9) NOT NULL,
  `crime` enum('Robery','Child Abuse','Kidnapping','Rape') DEFAULT NULL,
  `case_number` varchar(50) NOT NULL,
  `block_name` enum('Block A','Block B','Block C') DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `police_no` int(11) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `status` enum('Active','Passive') DEFAULT NULL,
  PRIMARY KEY (`prison_id`),
  KEY `fk2_police_no` (`police_no`),
  CONSTRAINT `fk2_police_no` FOREIGN KEY (`police_no`) REFERENCES `tbl_police` (`police_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_remand_prisoners`
--

LOCK TABLES `tbl_remand_prisoners` WRITE;
/*!40000 ALTER TABLE `tbl_remand_prisoners` DISABLE KEYS */;
INSERT INTO `tbl_remand_prisoners` VALUES (200,'Sauda','Makame','Female','1990-06-06',31,'Kihinani','C.SHK 123','0778898989','House Girl','Mtumbatu','Tanzania',111111111,'Child Abuse','k11','Block A','1618857929_f1.jpg',500,'2021-04-19',''),(201,'Mussa','Juma','Male','0989-02-21',1032,'Fuoni','C.SHK 222','0772232323','Capenter','Mshihiri','Uganda',1114,'Kidnapping','k221','Block B','1619011446_m1.jpg',500,'2021-04-19',''),(202,'Juma','Mtumwa','Male','1999-01-11',23,'Chuin','MNM1/12','077231423','House Girl','Mshihiri','Tanzania',11,'Kidnapping','1234','Block B','1619896741_f10.jpg',500,'2021-05-01','Active'),(203,'Thuwaiba','Saleh','Female','1997-05-11',24,'Bububu','mw/a/12','0774455432','House wife','Shiraz','Tanzanian',1002,'Rape','2030','Block A','1620236180_f9.jpg',501,'2021-05-04','Passive'),(204,'khadija','mtumwa ','Female','1996-10-02',24,'bububu','mw/a/12','0774455432','teacher','shiraz','uganda',1233,'Kidnapping','2033','Block B',NULL,501,'2021-05-09','Passive'),(205,'Haji','Makame','Male','1995-05-07',26,'Fuon','MN1233','077234565','Teacher','Shiraz','Kenya',12321,'Child Abuse','k1234','Block B','1620273851_m3.jpg',501,'2021-05-06',''),(206,'Halima','Said','Female','1997-05-05',24,'Fuon','MW/12345','077243545','House Girl','Mshihiri','Tanzania',1234,'Robery','k12','Block B','1627732575_1618346600_f1.jpg',500,'2021-05-15','Active'),(207,'Hamis','Ally','Male','1994-03-12',27,'H','MQ/12','077654321','Capenter','Mtumbatu','Tanzania',1234,'Robery','12','Block A',NULL,500,'2021-05-15',''),(208,'Nuru','Hassan','Female','1999-11-12',21,'Mton','K/23','0777342312','Capenter','Mshihiri','Tanzania',12,'Child Abuse','k12','Block B','1625488300_1620236180_f9.jpg',500,'2021-07-05',''),(209,'Salma','Hamis','Female','2000-02-12',21,'Mton','K/72625','0777253461','Capenter','Mshihiri','Kenya',18273,'Child Abuse','k/39','Block B','1628160753_1618347130_f2.jpg',500,'2021-08-02','Active'),(210,'Khamis','Kombo','Male','1994-02-12',27,'Fuon','MW/22','+255772715','Teacher','Mshirazi','Kenya',1725367,'Child Abuse','k/1234','Block B','1628162189_1618340761_m3.jpg',500,'2021-08-05','Active'),(211,'Khamiss','Juma','Male','2000-02-12',21,'Mton','MW/200','+255765432','Capenter','Mshihiri','Kenya',20371,'Child Abuse','k/200','Block B','1628417265_1618341037_m3.jpg',500,'2021-08-08','Active');
/*!40000 ALTER TABLE `tbl_remand_prisoners` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-20 21:45:20
