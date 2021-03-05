/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 8.0.21 : Database - iaudio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`iaudio` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `iaudio`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

LOCK TABLES `auth_group` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

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

/*Data for the table `auth_group_permissions` */

LOCK TABLES `auth_group_permissions` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

LOCK TABLES `auth_permission` WRITE;

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add type',7,'add_type'),
(26,'Can change type',7,'change_type'),
(27,'Can delete type',7,'delete_type'),
(28,'Can view type',7,'view_type'),
(29,'Can add transducer',8,'add_transducer'),
(30,'Can change transducer',8,'change_transducer'),
(31,'Can delete transducer',8,'delete_transducer'),
(32,'Can view transducer',8,'view_transducer'),
(33,'Can add equipment',9,'add_equipment'),
(34,'Can change equipment',9,'change_equipment'),
(35,'Can delete equipment',9,'delete_equipment'),
(36,'Can view equipment',9,'view_equipment'),
(37,'Can add mark',10,'add_mark'),
(38,'Can change mark',10,'change_mark'),
(39,'Can delete mark',10,'delete_mark'),
(40,'Can view mark',10,'view_mark'),
(41,'Can add polar pattern',11,'add_polarpattern'),
(42,'Can change polar pattern',11,'change_polarpattern'),
(43,'Can delete polar pattern',11,'delete_polarpattern'),
(44,'Can view polar pattern',11,'view_polarpattern'),
(45,'Can add equipment polar pattern',12,'add_equipmentpolarpattern'),
(46,'Can change equipment polar pattern',12,'change_equipmentpolarpattern'),
(47,'Can delete equipment polar pattern',12,'delete_equipmentpolarpattern'),
(48,'Can view equipment polar pattern',12,'view_equipmentpolarpattern');

UNLOCK TABLES;

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

LOCK TABLES `auth_user` WRITE;

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$216000$sQTh0R4P1bge$sOsjBTqgSuZ4vl/FT7WU0CigxgvG7QSdySzeIZuvmZQ=','2021-03-03 01:53:29.994705',1,'admin','','','',1,1,'2021-02-19 02:55:31.770082');

UNLOCK TABLES;

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

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

/*Data for the table `auth_user_groups` */

LOCK TABLES `auth_user_groups` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

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

/*Data for the table `auth_user_user_permissions` */

LOCK TABLES `auth_user_user_permissions` WRITE;

UNLOCK TABLES;

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

LOCK TABLES `django_admin_log` WRITE;

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2021-02-26 19:58:15.166229','43','AEA',1,'new through import_export',10,1),
(2,'2021-02-26 19:58:15.180228','44','AKG',1,'new through import_export',10,1),
(3,'2021-02-26 19:58:15.188234','45','Audio Technica',1,'new through import_export',10,1),
(4,'2021-02-26 19:58:15.195232','46','Audix',1,'new through import_export',10,1),
(5,'2021-02-26 19:58:15.203229','47','Beyerdynamic',1,'new through import_export',10,1),
(6,'2021-02-26 19:58:15.210228','48','Earthworks',1,'new through import_export',10,1),
(7,'2021-02-26 19:58:15.219235','49','Manley ',1,'new through import_export',10,1),
(8,'2021-02-26 19:58:15.225234','50','MXL',1,'new through import_export',10,1),
(9,'2021-02-26 19:58:15.233228','51','Neumann',1,'new through import_export',10,1),
(10,'2021-02-26 19:58:15.244229','52','RODE',1,'new through import_export',10,1),
(11,'2021-02-26 19:58:15.274229','53','Royer',1,'new through import_export',10,1),
(12,'2021-02-26 19:58:15.284228','54','Sennheiser',1,'new through import_export',10,1),
(13,'2021-02-26 19:58:15.290229','55','Shure',1,'new through import_export',10,1),
(14,'2021-02-26 19:58:15.297228','56','Telefunken',1,'new through import_export',10,1),
(15,'2021-02-26 19:59:41.255227','56','Telefunken',3,'',10,1),
(16,'2021-02-26 19:59:41.272230','55','Shure',3,'',10,1),
(17,'2021-02-26 19:59:41.279231','54','Sennheiser',3,'',10,1),
(18,'2021-02-26 19:59:41.383234','53','Royer',3,'',10,1),
(19,'2021-02-26 19:59:41.430228','52','RODE',3,'',10,1),
(20,'2021-02-26 19:59:41.452228','51','Neumann',3,'',10,1),
(21,'2021-02-26 19:59:41.476229','50','MXL',3,'',10,1),
(22,'2021-02-26 19:59:41.489230','49','Manley ',3,'',10,1),
(23,'2021-02-26 19:59:41.513229','48','Earthworks',3,'',10,1),
(24,'2021-02-26 19:59:41.530228','47','Beyerdynamic',3,'',10,1),
(25,'2021-02-26 19:59:41.556228','46','Audix',3,'',10,1),
(26,'2021-02-26 19:59:41.574228','45','Audio Technica',3,'',10,1),
(27,'2021-02-26 19:59:41.580228','44','AKG',3,'',10,1),
(28,'2021-02-26 19:59:41.588229','43','AEA',3,'',10,1),
(29,'2021-02-26 19:59:52.749235','71','AEA',1,'new through import_export',10,1),
(30,'2021-02-26 19:59:52.757228','72','AKG',1,'new through import_export',10,1),
(31,'2021-02-26 19:59:52.764228','73','Audio Technica',1,'new through import_export',10,1),
(32,'2021-02-26 19:59:52.772229','74','Audix',1,'new through import_export',10,1),
(33,'2021-02-26 19:59:52.780228','75','Beyerdynamic',1,'new through import_export',10,1),
(34,'2021-02-26 19:59:52.788229','76','Earthworks',1,'new through import_export',10,1),
(35,'2021-02-26 19:59:52.796228','77','Manley ',1,'new through import_export',10,1),
(36,'2021-02-26 19:59:52.804229','78','MXL',1,'new through import_export',10,1),
(37,'2021-02-26 19:59:52.810229','79','Neumann',1,'new through import_export',10,1),
(38,'2021-02-26 19:59:52.818228','80','RODE',1,'new through import_export',10,1),
(39,'2021-02-26 19:59:52.827230','81','Royer',1,'new through import_export',10,1),
(40,'2021-02-26 19:59:52.835235','82','Sennheiser',1,'new through import_export',10,1),
(41,'2021-02-26 19:59:52.842229','83','Shure',1,'new through import_export',10,1),
(42,'2021-02-26 19:59:52.849228','84','Telefunken',1,'new through import_export',10,1),
(43,'2021-02-26 20:00:54.009235','84','Telefunken',2,'[{\"changed\": {\"fields\": [\"Created by\"]}}]',10,1),
(44,'2021-02-26 20:37:11.224229','10','Dinamico',1,'new through import_export',8,1),
(45,'2021-02-26 20:37:11.236229','11','Dinamico ',1,'new through import_export',8,1),
(46,'2021-02-26 20:37:11.244229','12','Condensador ',1,'new through import_export',8,1),
(47,'2021-02-26 20:37:11.251229','13','Condenser pressure gradient mic',1,'new through import_export',8,1),
(48,'2021-02-26 20:37:11.258231','14','Condensador gradiente',1,'new through import_export',8,1),
(49,'2021-02-26 20:37:11.265235','15','Condenser',1,'new through import_export',8,1),
(50,'2021-02-26 20:37:11.272228','16','Ribbon',1,'new through import_export',8,1),
(51,'2021-02-26 20:37:11.280228','17','Dynamic',1,'new through import_export',8,1),
(52,'2021-02-26 20:37:11.286229','18','Electret Condenser',1,'new through import_export',8,1),
(53,'2021-02-26 20:41:26.776234','18','Electret Condenser',3,'',8,1),
(54,'2021-02-26 20:41:26.783230','17','Dynamic',3,'',8,1),
(55,'2021-02-26 20:41:26.791229','16','Ribbon',3,'',8,1),
(56,'2021-02-26 20:41:26.797234','15','Condenser',3,'',8,1),
(57,'2021-02-26 20:41:26.804229','14','Condensador gradiente',3,'',8,1),
(58,'2021-02-26 20:41:26.809228','13','Condenser pressure gradient mic',3,'',8,1),
(59,'2021-02-26 20:41:26.815228','12','Condensador ',3,'',8,1),
(60,'2021-02-26 20:41:26.823228','11','Dinamico ',3,'',8,1),
(61,'2021-02-26 20:41:26.828229','10','Dinamico',3,'',8,1),
(62,'2021-02-26 20:52:01.629228','1','Dinamico',1,'new through import_export',8,1),
(63,'2021-02-26 20:52:01.640228','2','Condensador ',1,'new through import_export',8,1),
(64,'2021-02-26 20:52:01.646229','3','Condensador gradiente',1,'new through import_export',8,1),
(65,'2021-02-26 20:52:01.652228','4','Condensador',1,'new through import_export',8,1),
(66,'2021-02-26 20:52:01.684229','5','Ribbon',1,'new through import_export',8,1),
(67,'2021-02-26 20:52:01.690227','6','Condensador Electred',1,'new through import_export',8,1),
(68,'2021-02-26 20:53:25.287229','1','Micrófono',1,'[{\"added\": {}}]',7,1),
(69,'2021-02-26 21:28:51.602229','1','Cardioide',1,'[{\"added\": {}}]',11,1),
(70,'2021-02-26 21:29:51.300235','2','Hipercardioide',1,'[{\"added\": {}}]',11,1),
(71,'2021-02-26 21:30:25.729229','1','Fw730',1,'[{\"added\": {}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 1\"}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 2\"}}]',9,1),
(72,'2021-02-27 01:21:02.797436','6','Condensador Electred',3,'',8,1),
(73,'2021-02-27 01:21:02.807433','5','Ribbon',3,'',8,1),
(74,'2021-02-27 01:21:02.814429','4','Condensador',3,'',8,1),
(75,'2021-02-27 01:21:02.822430','3','Condensador gradiente',3,'',8,1),
(76,'2021-02-27 01:21:02.828429','2','Condensador ',3,'',8,1),
(77,'2021-02-27 01:21:02.836428','1','Dinamico',3,'',8,1),
(78,'2021-02-27 01:22:28.314429','1','Dinamico',1,'new through import_export',8,1),
(79,'2021-02-27 01:22:28.322429','2','Condensador ',1,'new through import_export',8,1),
(80,'2021-02-27 01:22:28.328431','3','Condensador gradiente',1,'new through import_export',8,1),
(81,'2021-02-27 01:22:28.336429','4','Condensador',1,'new through import_export',8,1),
(82,'2021-02-27 01:22:28.342428','5','Ribbon',1,'new through import_export',8,1),
(83,'2021-02-27 01:22:28.348429','6','Condensador Electred',1,'new through import_export',8,1),
(84,'2021-02-27 03:49:53.840930','2','Fw730',1,'[{\"added\": {}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 3\"}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 4\"}}]',9,1),
(85,'2021-03-01 17:21:03.944691','3','Omnidireccional',1,'[{\"added\": {}}]',11,1),
(86,'2021-03-01 17:21:33.764691','4','Bidireccional',1,'[{\"added\": {}}]',11,1),
(87,'2021-03-01 17:21:45.428691','3','KMS44A',1,'[{\"added\": {}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 5\"}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 6\"}}, {\"added\": {\"name\": \"equipment polar pattern\", \"object\": \"EquipmentPolarPattern 7\"}}]',9,1),
(88,'2021-03-02 20:51:55.338713','3','sm57',2,'update through import_export',9,1),
(89,'2021-03-02 20:51:55.348706','4','sm58',1,'new through import_export',9,1),
(90,'2021-03-02 20:51:55.358707','5','sm7b',1,'new through import_export',9,1),
(91,'2021-03-02 20:51:55.373706','6','super55',1,'new through import_export',9,1),
(92,'2021-03-02 20:51:55.379706','7','mv7',1,'new through import_export',9,1),
(93,'2021-03-02 20:51:55.386706','8','_990',1,'new through import_export',9,1),
(94,'2021-03-02 20:51:55.392706','9','_991',1,'new through import_export',9,1),
(95,'2021-03-02 20:51:55.398706','10','_770',1,'new through import_export',9,1),
(96,'2021-03-02 20:51:55.405707','11','Qtc40',1,'new through import_export',9,1),
(97,'2021-03-02 20:51:55.411706','12','Pm40',1,'new through import_export',9,1),
(98,'2021-03-02 20:51:55.418706','13','dm20',1,'new through import_export',9,1),
(99,'2021-03-02 20:51:55.427706','14','M23',1,'new through import_export',9,1),
(100,'2021-03-02 20:51:55.434707','15','at5045',1,'new through import_export',9,1),
(101,'2021-03-02 20:51:55.442706','16','ae3000',1,'new through import_export',9,1),
(102,'2021-03-02 20:51:55.450707','17','bp4071',1,'new through import_export',9,1),
(103,'2021-03-02 20:51:55.458706','18','AT4081',1,'new through import_export',9,1),
(104,'2021-03-02 20:51:55.465708','19','AT5040',1,'new through import_export',9,1),
(105,'2021-03-02 20:51:55.479707','20','AT4040',1,'new through import_export',9,1),
(106,'2021-03-02 20:51:55.486706','21','BETA 58A',1,'new through import_export',9,1),
(107,'2021-03-02 20:51:55.492707','22','KSM8',1,'new through import_export',9,1),
(108,'2021-03-02 20:51:55.498707','23','KSM313 / NE',1,'new through import_export',9,1),
(109,'2021-03-02 20:51:55.506706','24','NTR',1,'new through import_export',9,1),
(110,'2021-03-02 20:51:55.512706','25','MD 421-II',1,'new through import_export',9,1),
(111,'2021-03-02 20:51:55.519707','26','MD 441-U',1,'new through import_export',9,1),
(112,'2021-03-02 20:51:55.524706','27','MKH 800 TWIN',1,'new through import_export',9,1),
(113,'2021-03-02 20:51:55.532706','28','U47 fet i',1,'new through import_export',9,1),
(114,'2021-03-02 20:51:55.538706','29','R-122 MKII',1,'new through import_export',9,1),
(115,'2021-03-02 20:51:55.544706','30','R84',1,'new through import_export',9,1),
(116,'2021-03-02 20:51:55.550705','31','KU4',1,'new through import_export',9,1),
(117,'2021-03-02 20:51:55.556707','32','sE2200',1,'new through import_export',9,1),
(118,'2021-03-02 20:51:55.562706','33','D6',1,'new through import_export',9,1),
(119,'2021-03-02 21:22:27.276706','20','AT4040',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(120,'2021-03-02 21:28:04.380706','19','AT5040',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(121,'2021-03-02 21:29:17.347707','18','AT4081',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(122,'2021-03-02 21:29:50.244706','8','_990',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(123,'2021-03-02 21:30:24.874708','4','sm58',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(124,'2021-03-02 21:32:27.825706','21','BETA 58A',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(125,'2021-03-02 21:34:31.285707','22','KSM8',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(126,'2021-03-02 21:35:31.418705','23','KSM313 / NE',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(127,'2021-03-02 21:37:01.286713','24','NTR',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(128,'2021-03-02 21:38:17.766706','25','MD 421-II',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(129,'2021-03-02 21:39:22.040706','27','MKH 800 TWIN',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(130,'2021-03-02 21:40:27.403706','26','MD 441-U',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(131,'2021-03-02 21:41:43.296706','31','KU4',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(132,'2021-03-02 21:42:48.845707','29','R-122 MKII',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(133,'2021-03-02 21:43:31.709707','30','R84',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(134,'2021-03-02 21:44:55.319708','28','U47 fet i',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(135,'2021-03-02 21:45:33.732707','32','sE2200',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(136,'2021-03-02 21:46:14.289707','33','D6',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(137,'2021-03-02 22:12:16.507706','33','D6',2,'[{\"changed\": {\"fields\": [\"Polar pattern image\"]}}]',9,1),
(138,'2021-03-02 22:27:26.608707','32','sE2200',2,'[{\"changed\": {\"fields\": [\"Frequency response\"]}}]',9,1),
(139,'2021-03-03 02:04:46.382706','3','sm57',2,'update through import_export',9,1),
(140,'2021-03-03 02:04:46.395707','4','sm58',2,'update through import_export',9,1),
(141,'2021-03-03 02:04:46.401706','5','sm7b',2,'update through import_export',9,1),
(142,'2021-03-03 02:04:46.407713','6','super55',2,'update through import_export',9,1),
(143,'2021-03-03 02:04:46.414706','7','mv7',2,'update through import_export',9,1),
(144,'2021-03-03 02:04:46.421707','8','_990',2,'update through import_export',9,1),
(145,'2021-03-03 02:04:46.427706','9','_991',2,'update through import_export',9,1),
(146,'2021-03-03 02:04:46.434706','10','_770',2,'update through import_export',9,1),
(147,'2021-03-03 02:04:46.440706','11','Qtc40',2,'update through import_export',9,1),
(148,'2021-03-03 02:04:46.446705','12','Pm40',2,'update through import_export',9,1),
(149,'2021-03-03 02:04:46.453706','13','dm20',2,'update through import_export',9,1),
(150,'2021-03-03 02:04:46.461705','14','M23',2,'update through import_export',9,1),
(151,'2021-03-03 02:04:46.469706','15','at5045',2,'update through import_export',9,1),
(152,'2021-03-03 02:04:46.475707','16','ae3000',2,'update through import_export',9,1),
(153,'2021-03-03 02:04:46.482706','17','bp4071',2,'update through import_export',9,1),
(154,'2021-03-03 02:04:46.489711','18','AT4081',2,'update through import_export',9,1),
(155,'2021-03-03 02:04:46.495706','19','AT5040',2,'update through import_export',9,1),
(156,'2021-03-03 02:04:46.502707','20','AT4040',2,'update through import_export',9,1),
(157,'2021-03-03 02:04:46.508712','21','BETA 58A',2,'update through import_export',9,1),
(158,'2021-03-03 02:04:46.514712','22','KSM8',2,'update through import_export',9,1),
(159,'2021-03-03 02:04:46.520710','23','KSM313 / NE',2,'update through import_export',9,1),
(160,'2021-03-03 02:04:46.526712','24','NTR',2,'update through import_export',9,1),
(161,'2021-03-03 02:04:46.532707','25','MD 421-II',2,'update through import_export',9,1),
(162,'2021-03-03 02:04:46.538711','26','MD 441-U',2,'update through import_export',9,1),
(163,'2021-03-03 02:04:46.544713','27','MKH 800 TWIN',2,'update through import_export',9,1),
(164,'2021-03-03 02:04:46.551708','28','U47 fet i',2,'update through import_export',9,1),
(165,'2021-03-03 02:04:46.556712','29','R-122 MKII',2,'update through import_export',9,1),
(166,'2021-03-03 02:04:46.562713','30','R84',2,'update through import_export',9,1),
(167,'2021-03-03 02:04:46.569707','31','KU4',2,'update through import_export',9,1),
(168,'2021-03-03 02:04:46.575707','32','sE2200',2,'update through import_export',9,1),
(169,'2021-03-03 02:04:46.581707','33','D6',2,'update through import_export',9,1),
(170,'2021-03-03 02:18:26.287706','4','sm58',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1),
(171,'2021-03-03 02:19:05.846706','23','KSM313 / NE',2,'[{\"changed\": {\"fields\": [\"Principal img\"]}}]',9,1);

UNLOCK TABLES;

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

LOCK TABLES `django_content_type` WRITE;

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(9,'equipment','equipment'),
(12,'equipment','equipmentpolarpattern'),
(10,'equipment','mark'),
(11,'equipment','polarpattern'),
(8,'equipment','transducer'),
(7,'equipment','type'),
(6,'sessions','session');

UNLOCK TABLES;

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

LOCK TABLES `django_migrations` WRITE;

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2021-02-19 02:54:39.036081'),
(2,'auth','0001_initial','2021-02-19 02:54:39.499081'),
(3,'admin','0001_initial','2021-02-19 02:54:40.865083'),
(4,'admin','0002_logentry_remove_auto_add','2021-02-19 02:54:41.209083'),
(5,'admin','0003_logentry_add_action_flag_choices','2021-02-19 02:54:41.243082'),
(6,'contenttypes','0002_remove_content_type_name','2021-02-19 02:54:41.578083'),
(7,'auth','0002_alter_permission_name_max_length','2021-02-19 02:54:41.772081'),
(8,'auth','0003_alter_user_email_max_length','2021-02-19 02:54:41.847081'),
(9,'auth','0004_alter_user_username_opts','2021-02-19 02:54:41.866081'),
(10,'auth','0005_alter_user_last_login_null','2021-02-19 02:54:41.975083'),
(11,'auth','0006_require_contenttypes_0002','2021-02-19 02:54:41.985083'),
(12,'auth','0007_alter_validators_add_error_messages','2021-02-19 02:54:42.002083'),
(13,'auth','0008_alter_user_username_max_length','2021-02-19 02:54:42.325083'),
(14,'auth','0009_alter_user_last_name_max_length','2021-02-19 02:54:42.597082'),
(15,'auth','0010_alter_group_name_max_length','2021-02-19 02:54:42.660082'),
(16,'auth','0011_update_proxy_permissions','2021-02-19 02:54:42.684084'),
(17,'auth','0012_alter_user_first_name_max_length','2021-02-19 02:54:42.822083'),
(18,'equipment','0001_initial','2021-02-19 02:54:43.146083'),
(19,'sessions','0001_initial','2021-02-19 02:54:44.004083'),
(20,'equipment','0002_equipment_type','2021-02-19 03:23:41.187083'),
(21,'equipment','0003_auto_20210223_2132','2021-02-24 02:38:05.758863'),
(22,'equipment','0004_auto_20210223_2255','2021-02-24 03:55:39.277863'),
(23,'equipment','0005_auto_20210224_2147','2021-02-25 02:47:13.394178');

UNLOCK TABLES;

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

LOCK TABLES `django_session` WRITE;

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('1rw9t8a9gs53h9ua4i61k3vwexqo3xt9','.eJxVjEEOwiAQAP_C2RC2yFI8eu8byLJLpGpoUtqT8e9K0oNeZybzUpH2rcS95TXOoi4K1OmXJeJHrl3Inept0bzUbZ2T7ok-bNPTIvl5Pdq_QaFW-pasGb2FwbLNiYGQrQSwhEEYEA2iD4g4oAnOiwd24xcacA5zcmf1_gCyaDYh:1lFqYm:p_HiJYeOme6wC72MD0Np8wQ9d9FPo1XTdB-53m5EfIY','2021-03-13 03:46:28.351929'),
('623fsyrkxm0ylkot39ymql6d3o443yza','.eJxVjEEOwiAQAP_C2RC2yFI8eu8byLJLpGpoUtqT8e9K0oNeZybzUpH2rcS95TXOoi4K1OmXJeJHrl3Inept0bzUbZ2T7ok-bNPTIvl5Pdq_QaFW-pasGb2FwbLNiYGQrQSwhEEYEA2iD4g4oAnOiwd24xcacA5zcmf1_gCyaDYh:1lHCKp:y5cUuVA7K2AyuYvBmtY04qg6e7byfWdERnshNeX7tzI','2021-03-16 21:13:39.740713'),
('fdgc60n4i3z927gktf6ebdt4m6ezjqcv','.eJxVjMEOgjAQRP-lZ9O0LEuLR-98Q7Ptbi1qIKFwMv67kHDQ22Tem3mrQNtawlZlCSOrq7Lq8ttFSk-ZDsAPmu6zTvO0LmPUh6JPWvUws7xup_t3UKiWfZ174zBaZkQS33KTjXhxjhvYE4PEFnxnPFkEIcg2AwKaXjymxnCnPl_ufTfU:1lFkBP:0IR8O2z8hVW57jFM31D25PwUGXJYxeRXZtpbHVJGk50','2021-03-12 20:57:55.872229'),
('fubbmmtrohlh246fnhrwmcmm8sw7sr3f','.eJxVjEEOwiAQAP_C2RC2yFI8eu8byLJLpGpoUtqT8e9K0oNeZybzUpH2rcS95TXOoi4K1OmXJeJHrl3Inept0bzUbZ2T7ok-bNPTIvl5Pdq_QaFW-pasGb2FwbLNiYGQrQSwhEEYEA2iD4g4oAnOiwd24xcacA5zcmf1_gCyaDYh:1lHAG3:U9MzLWMDIgUHITiHKIztHzOqXSPNhmbu97T--YUECDg','2021-03-16 19:00:35.703207'),
('iunn1q0jnt73pjqrv4n13ed4ndrcjslk','.eJxVjEEOwiAQAP_C2RC2yFI8eu8byLJLpGpoUtqT8e9K0oNeZybzUpH2rcS95TXOoi4K1OmXJeJHrl3Inept0bzUbZ2T7ok-bNPTIvl5Pdq_QaFW-pasGb2FwbLNiYGQrQSwhEEYEA2iD4g4oAnOiwd24xcacA5zcmf1_gCyaDYh:1lHGhe:tMH0l6zEtVdfHWuziNyb6hVatL1Ddbp-Nyrnp-kWzPo','2021-03-17 01:53:30.003713'),
('jz1qg9qz4ak8bujorh352gmpftv6pumk','.eJxVjMEOgjAQRP-lZ9O0LEuLR-98Q7Ptbi1qIKFwMv67kHDQ22Tem3mrQNtawlZlCSOrq7Lq8ttFSk-ZDsAPmu6zTvO0LmPUh6JPWvUws7xup_t3UKiWfZ174zBaZkQS33KTjXhxjhvYE4PEFnxnPFkEIcg2AwKaXjymxnCnPl_ufTfU:1lFkdW:tmFH1qD4GJ3aF_RI_9K5BVfjETTbpRH4WTEJR60vZ3o','2021-03-12 21:26:58.369229'),
('knahtkb9rxwodolmhljhekgzjz3h4cdw','.eJxVjEEOwiAQAP_C2RC2yFI8eu8byLJLpGpoUtqT8e9K0oNeZybzUpH2rcS95TXOoi4K1OmXJeJHrl3Inept0bzUbZ2T7ok-bNPTIvl5Pdq_QaFW-pasGb2FwbLNiYGQrQSwhEEYEA2iD4g4oAnOiwd24xcacA5zcmf1_gCyaDYh:1lGm9h:fhPaqvGWXpQmWjHKhrVDmEagW2BE7tv-2DEEGNvF9b8','2021-03-15 17:16:25.112693'),
('nqmc3ulmtfi731taa3e4xmq12f5aiak0','.eJxVjMEOgjAQRP-lZ9O0LEuLR-98Q7Ptbi1qIKFwMv67kHDQ22Tem3mrQNtawlZlCSOrq7Lq8ttFSk-ZDsAPmu6zTvO0LmPUh6JPWvUws7xup_t3UKiWfZ174zBaZkQS33KTjXhxjhvYE4PEFnxnPFkEIcg2AwKaXjymxnCnPl_ufTfU:1lFhgA:lAxisVtSiO5FEpq2aFcp3y5IiTW54sElhXhmtQMsNd4','2021-03-12 18:17:30.415229'),
('s962657rz5hsvds8obxxennosl2b1kp3','.eJxVjMEOgjAQRP-lZ9O0LEuLR-98Q7Ptbi1qIKFwMv67kHDQ22Tem3mrQNtawlZlCSOrq7Lq8ttFSk-ZDsAPmu6zTvO0LmPUh6JPWvUws7xup_t3UKiWfZ174zBaZkQS33KTjXhxjhvYE4PEFnxnPFkEIcg2AwKaXjymxnCnPl_ufTfU:1lFoHf:uQwoMZsiGiKC81CPTP8u3vYJf9tVDO_OtKGFyhprPLg','2021-03-13 01:20:39.244429'),
('wa7k4qngsjjg9izxmcfz23s098hfowvv','.eJxVjMEOgjAQRP-lZ9O0LEuLR-98Q7Ptbi1qIKFwMv67kHDQ22Tem3mrQNtawlZlCSOrq7Lq8ttFSk-ZDsAPmu6zTvO0LmPUh6JPWvUws7xup_t3UKiWfZ174zBaZkQS33KTjXhxjhvYE4PEFnxnPFkEIcg2AwKaXjymxnCnPl_ufTfU:1lEkk5:NiMtjGEZBEIvltkX_kEGQGFS7qoc8rUx2zU4kt9rhYM','2021-03-10 03:21:37.621868'),
('xz6cgunf1susg3huavcn8ceggo9ot6a5','.eJxVjMEOgjAQRP-lZ9O0LEuLR-98Q7Ptbi1qIKFwMv67kHDQ22Tem3mrQNtawlZlCSOrq7Lq8ttFSk-ZDsAPmu6zTvO0LmPUh6JPWvUws7xup_t3UKiWfZ174zBaZkQS33KTjXhxjhvYE4PEFnxnPFkEIcg2AwKaXjymxnCnPl_ufTfU:1lCvxI:Mukbqv874k3IXblrU8A0kOiWnrTB-5b4cVQAwR3tnfA','2021-03-05 02:55:44.348082');

UNLOCK TABLES;

/*Table structure for table `equipment_equipment` */

DROP TABLE IF EXISTS `equipment_equipment`;

CREATE TABLE `equipment_equipment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `principal_img` varchar(100) NOT NULL,
  `impedance` double DEFAULT NULL,
  `typical_applications` longtext,
  `frequency_response` varchar(100) DEFAULT NULL,
  `created_by_id` int DEFAULT NULL,
  `modified_by_id` int DEFAULT NULL,
  `transducer_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `mark_id` int NOT NULL,
  `polar_pattern_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_equipment_created_by_id_4bc728b7_fk_auth_user_id` (`created_by_id`),
  KEY `equipment_equipment_modified_by_id_019f4451_fk_auth_user_id` (`modified_by_id`),
  KEY `equipment_equipment_transducer_id_2902c8a0_fk_equipment` (`transducer_id`),
  KEY `equipment_equipment_type_id_560f608d_fk_equipment_type_id` (`type_id`),
  KEY `equipment_equipment_mark_id_74f11dba_fk_equipment_mark_id` (`mark_id`),
  CONSTRAINT `equipment_equipment_created_by_id_4bc728b7_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_equipment_mark_id_74f11dba_fk_equipment_mark_id` FOREIGN KEY (`mark_id`) REFERENCES `equipment_mark` (`id`),
  CONSTRAINT `equipment_equipment_modified_by_id_019f4451_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_equipment_transducer_id_2902c8a0_fk_equipment` FOREIGN KEY (`transducer_id`) REFERENCES `equipment_transducer` (`id`),
  CONSTRAINT `equipment_equipment_type_id_560f608d_fk_equipment_type_id` FOREIGN KEY (`type_id`) REFERENCES `equipment_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `equipment_equipment` */

LOCK TABLES `equipment_equipment` WRITE;

insert  into `equipment_equipment`(`id`,`created_at`,`modified_at`,`status`,`name`,`principal_img`,`impedance`,`typical_applications`,`frequency_response`,`created_by_id`,`modified_by_id`,`transducer_id`,`type_id`,`mark_id`,`polar_pattern_image`) values 
(2,'2021-02-27 03:49:53.811930','2021-02-27 03:49:53.811930',1,'Fw730','equipment/EARTH-FW730-3_ncoreJn.jpg',600,'Choir Overheads','',1,NULL,2,1,76,''),
(3,'2021-03-01 17:21:45.397690','2021-03-03 02:04:44.986712',1,'sm57','equipment\\sm57.jpg',310,'Toms, Snare, Guitar& Bass amp And Vocals','equipment\\57Fr.jpg',1,NULL,1,1,83,'equipment\\57 polar.jpg'),
(4,'2021-03-02 20:51:54.354706','2021-03-03 02:18:26.277712',1,'sm58','equipment/58_sxFMJeQ.png',300,'Vocals','equipment\\58Fr.png',1,NULL,1,1,83,'equipment\\58polar.png'),
(5,'2021-03-02 20:51:54.399706','2021-03-03 02:04:45.070708',1,'sm7b','equipment\\sm7b.jpg',150,'Vocals (Podcast/Radio)','equipment\\sm7b Fr.png',1,NULL,2,1,83,'equipment\\sm7b polar.png'),
(6,'2021-03-02 20:51:54.434708','2021-03-03 02:04:45.112706',1,'super55','equipment\\super55.jpg',290,'Vocals(Stage/Recording)','equipment\\super55Fr.png',1,NULL,1,1,83,'equipment\\super55polar.png'),
(7,'2021-03-02 20:51:54.465713','2021-03-03 02:04:45.154707',1,'mv7','equipment\\mv7.jpg',314,'Vocals (Podcast/Radio)','equipment\\mv7Fr.png',1,NULL,1,1,83,'equipment\\mv7polar.jpg'),
(8,'2021-03-02 20:51:54.497708','2021-03-03 02:04:45.195708',1,'_990','equipment\\990.png',200,'Vocals( Recording)','equipment\\900Fr.png',1,NULL,2,1,78,'equipment\\990polar.jpg'),
(9,'2021-03-02 20:51:54.528713','2021-03-03 02:04:45.236706',1,'_991','equipment\\991.jpg',110,'Vocals, Drums , Acustic Guitar','equipment\\991Fr.jpg',1,NULL,3,1,78,'equipment\\991POlar.jpg'),
(10,'2021-03-02 20:51:54.559705','2021-03-03 02:04:45.280708',1,'_770','equipment\\770.jpg',150,'Vocals( Recording)','equipment\\770Fr.png',1,NULL,2,1,78,'equipment\\770Polar.jpg'),
(11,'2021-03-02 20:51:54.590706','2021-03-03 02:04:45.321708',1,'Qtc40','equipment\\Qtc40.jpg',600,'Room Ambience','equipment\\qtc40Fr.jpg',1,NULL,2,1,76,'equipment\\qtc40Polar.jpg'),
(12,'2021-03-02 20:51:54.622713','2021-03-03 02:04:45.362707',1,'Pm40','equipment\\Pm40.jpg',600,'Piano recording','equipment\\Pm40Fr.jpg',1,NULL,2,1,76,'equipment\\Pm40 Polar.jpg'),
(13,'2021-03-02 20:51:54.653713','2021-03-03 02:04:45.427705',1,'dm20','equipment\\dm20.jpg',200,'Drums heads','equipment\\dm20 Fr.jpg',1,NULL,2,1,76,'equipment\\dm20 polar.jpg'),
(14,'2021-03-02 20:51:54.683707','2021-03-03 02:04:45.481706',1,'M23','equipment\\M23.jpg',600,'Measurement','equipment\\M23Fr.jpg',1,NULL,2,1,76,'equipment\\M23Polar.jpg'),
(15,'2021-03-02 20:51:54.717707','2021-03-03 02:04:45.530708',1,'at5045','equipment\\at5045.jpg',100,'Instruments','equipment\\at5045Fr.jpg',1,NULL,2,1,73,'equipment\\at5054polar.jpg'),
(16,'2021-03-02 20:51:54.755707','2021-03-03 02:04:45.582707',1,'ae3000','equipment\\ae3000.jpg',100,'Instruments','equipment\\ae3000fr.png',1,NULL,2,1,73,'equipment\\ae3000polar.jpg'),
(17,'2021-03-02 20:51:54.785708','2021-03-03 02:04:45.623713',1,'bp4071','equipment\\bp4071.jpg',50,'Broadcast ,film/ Tv, theathre','equipment\\bp4071fr.png',1,NULL,3,1,73,'equipment\\bp4071polar.jpg'),
(18,'2021-03-02 20:51:54.819706','2021-03-03 02:04:45.663707',1,'AT4081','equipment\\AT4081.jpg',100,'Horns, strings, acoustic instruments, drum overheads','equipment\\at4081fr.jpg',1,NULL,5,1,73,'equipment\\at4081polar.jpg'),
(19,'2021-03-02 20:51:54.848714','2021-03-03 02:04:45.704713',1,'AT5040','equipment\\AT5040.jpg',50,'Piano, guitar, strings saxophone','equipment\\at5040fr.jpg',1,NULL,4,1,73,'equipment\\at5040polar.jpg'),
(20,'2021-03-02 20:51:54.882712','2021-03-03 02:04:45.745713',1,'AT4040','equipment\\AT4040.jpg',100,'Vocals, Instrument','equipment\\at4040fr.jpg',1,NULL,4,1,73,'equipment\\at4040polar.jpg'),
(21,'2021-03-02 20:51:54.912708','2021-03-03 02:04:45.785707',1,'BETA 58A','equipment\\BETA 58A.jpg',150,'Vocals(Stage/Recording)','equipment\\beta58afr.jpg',1,NULL,1,1,83,'equipment\\beta58apolar.jpg'),
(22,'2021-03-02 20:51:54.943707','2021-03-03 02:04:45.826707',1,'KSM8','equipment\\KSM8.jpg',300,'Vocals(Stage/Recording)','equipment\\ksm8fr.png',1,NULL,1,1,83,'equipment\\ksm8polar.png'),
(23,'2021-03-02 20:51:54.975713','2021-03-03 02:19:05.814707',1,'KSM313 / NE','equipment/ksm313.png',270,'Amplified instruments, intimate vocals','equipment\\ksm313fr.png',1,NULL,5,1,83,'equipment\\ksm313polar.png'),
(24,'2021-03-02 20:51:55.006706','2021-03-03 02:04:45.909712',1,'NTR','equipment\\NTR.jpg',200,'Vocals, strings, brass, overheads, room miking','equipment\\ntrfr.jpg',1,NULL,5,1,80,'equipment\\ntrpolar.jpg'),
(25,'2021-03-02 20:51:55.041706','2021-03-03 02:04:45.962706',1,'MD 421-II','equipment\\MD 421-II.jpg',200,'Vocals (Podcast/Radio), guitars, drums','equipment\\md421-iifr.jpg',1,NULL,1,1,82,'equipment\\md421-iipolar.jpg'),
(26,'2021-03-02 20:51:55.073707','2021-03-03 02:04:46.014707',1,'MD 441-U','equipment\\MD 441-U.jpg',200,'Vocal, Instrument (Rec/Stage)','equipment\\md441-ufr.jpg',1,NULL,1,1,82,'equipment\\md441-upolar.jpg'),
(27,'2021-03-02 20:51:55.106706','2021-03-03 02:04:46.067706',1,'MKH 800 TWIN','equipment\\MKH 800 TWIN.jpg',200,'Vocal, Instrument (Rec)','equipment\\mkh800twinfr.jpg',1,NULL,4,1,82,'equipment\\mkh800twinpolar.jpg'),
(28,'2021-03-02 20:51:55.138706','2021-03-03 02:04:46.125706',1,'U47 fet i','equipment\\U47 fet i.jpg',150,'Vocals, Instruments, Film/Foley/Voice Over','equipment\\u47fetifr.jpg',1,NULL,4,1,79,'equipment\\u47fetipolar.jpg'),
(29,'2021-03-02 20:51:55.173706','2021-03-03 02:04:46.169706',1,'R-122 MKII','equipment\\R-122 MKII.jpg',200,'Vocals(Stage/Recording), Orchestra, strings, woodwinds, percussion','equipment\\r-122mkiifr.jpg',1,NULL,5,1,81,'equipment\\r-122mkiipolar.jpg'),
(30,'2021-03-02 20:51:55.206706','2021-03-03 02:04:46.222706',1,'R84','equipment\\R84.jpg',270,'Vocal, Acoustic Instruments (Rec), Drums, Strings','equipment\\r84fr.jpg',1,NULL,5,1,71,'equipment\\r84polar.jpg'),
(31,'2021-03-02 20:51:55.240706','2021-03-03 02:04:46.273707',1,'KU4','equipment\\KU4.jpg',92,'Vocal, Acoustic Instruments (Rec), Drums','equipment\\ku4fr.jpg',1,NULL,5,1,71,'equipment\\ku4polar.jpg'),
(32,'2021-03-02 20:51:55.272706','2021-03-03 02:04:46.318706',1,'sE2200','equipment\\sE2200.jpg',250,'Vocal, Acoustic Instruments (Rec), voiceover','equipment\\sE2200fr.jpg',1,NULL,4,1,77,'equipment\\sE2200polar.jpg'),
(33,'2021-03-02 20:51:55.309707','2021-03-03 02:04:46.359706',1,'D6','equipment\\D6.jpg',280,'Kick, Bass, Toms','equipment\\d6fr.jpg',1,NULL,1,1,74,'equipment\\d6polar-lo d6polar-hi.jpg');

UNLOCK TABLES;

/*Table structure for table `equipment_equipmentpolarpattern` */

DROP TABLE IF EXISTS `equipment_equipmentpolarpattern`;

CREATE TABLE `equipment_equipmentpolarpattern` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `sensitivity` double NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `equipment_id` int NOT NULL,
  `modified_by_id` int DEFAULT NULL,
  `polarpattern_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_equipmentp_created_by_id_3e5b6e9d_fk_auth_user` (`created_by_id`),
  KEY `equipment_equipmentp_equipment_id_0add7f4d_fk_equipment` (`equipment_id`),
  KEY `equipment_equipmentp_modified_by_id_0d0102fc_fk_auth_user` (`modified_by_id`),
  KEY `equipment_equipmentp_polarpattern_id_d1e9cc59_fk_equipment` (`polarpattern_id`),
  CONSTRAINT `equipment_equipmentp_created_by_id_3e5b6e9d_fk_auth_user` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_equipmentp_equipment_id_0add7f4d_fk_equipment` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_equipment` (`id`),
  CONSTRAINT `equipment_equipmentp_modified_by_id_0d0102fc_fk_auth_user` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_equipmentp_polarpattern_id_d1e9cc59_fk_equipment` FOREIGN KEY (`polarpattern_id`) REFERENCES `equipment_polarpattern` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `equipment_equipmentpolarpattern` */

LOCK TABLES `equipment_equipmentpolarpattern` WRITE;

insert  into `equipment_equipmentpolarpattern`(`id`,`created_at`,`modified_at`,`status`,`sensitivity`,`created_by_id`,`equipment_id`,`modified_by_id`,`polarpattern_id`) values 
(3,'2021-02-27 03:49:53.829929','2021-02-27 03:49:53.829929',1,10,1,2,NULL,1),
(4,'2021-02-27 03:49:53.837928','2021-02-27 03:49:53.837928',1,20,1,2,NULL,2);

UNLOCK TABLES;

/*Table structure for table `equipment_mark` */

DROP TABLE IF EXISTS `equipment_mark`;

CREATE TABLE `equipment_mark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `modified_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_mark_created_by_id_c2883e21_fk_auth_user_id` (`created_by_id`),
  KEY `equipment_mark_modified_by_id_f6e63412_fk_auth_user_id` (`modified_by_id`),
  CONSTRAINT `equipment_mark_created_by_id_c2883e21_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_mark_modified_by_id_f6e63412_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `equipment_mark` */

LOCK TABLES `equipment_mark` WRITE;

insert  into `equipment_mark`(`id`,`created_at`,`modified_at`,`status`,`name`,`image`,`created_by_id`,`modified_by_id`) values 
(71,'2021-02-26 19:59:52.618230','2021-02-26 19:59:52.618230',1,'AEA','Mark\\AEA.jpg',NULL,NULL),
(72,'2021-02-26 19:59:52.625229','2021-02-26 19:59:52.626234',1,'AKG','Mark\\AKG.jpg',NULL,NULL),
(73,'2021-02-26 19:59:52.637229','2021-02-26 19:59:52.637229',1,'Audio Technica','Mark\\Audio Technica.jpg',NULL,NULL),
(74,'2021-02-26 19:59:52.645230','2021-02-26 19:59:52.645230',1,'Audix','Mark\\Audix.jpg',NULL,NULL),
(75,'2021-02-26 19:59:52.652233','2021-02-26 19:59:52.652233',1,'Beyerdynamic','Mark\\Beyerdynamic.jpg',NULL,NULL),
(76,'2021-02-26 19:59:52.660230','2021-02-26 19:59:52.661229',1,'Earthworks','Mark\\Earthworks.jpg',NULL,NULL),
(77,'2021-02-26 19:59:52.669229','2021-02-26 19:59:52.669229',1,'Manley ','Mark\\Manley .jpg',NULL,NULL),
(78,'2021-02-26 19:59:52.677229','2021-02-26 19:59:52.677229',1,'MXL','Mark\\MXL.jpg',NULL,NULL),
(79,'2021-02-26 19:59:52.686232','2021-02-26 19:59:52.686232',1,'Neumann','Mark\\Neumann.jpg',NULL,NULL),
(80,'2021-02-26 19:59:52.693228','2021-02-26 19:59:52.694235',1,'RODE','Mark\\RODE.jpg',NULL,NULL),
(81,'2021-02-26 19:59:52.703229','2021-02-26 19:59:52.703229',1,'Royer','Mark\\Royer.jpg',NULL,NULL),
(82,'2021-02-26 19:59:52.713229','2021-02-26 19:59:52.713229',1,'Sennheiser','Mark\\Sennheiser.jpg',NULL,NULL),
(83,'2021-02-26 19:59:52.721232','2021-02-26 19:59:52.721232',1,'Shure','Mark\\Shure.jpg',NULL,NULL),
(84,'2021-02-26 19:59:52.733230','2021-02-26 20:00:54.005234',1,'Telefunken','Mark\\Telefunken.jpg',1,NULL);

UNLOCK TABLES;

/*Table structure for table `equipment_polarpattern` */

DROP TABLE IF EXISTS `equipment_polarpattern`;

CREATE TABLE `equipment_polarpattern` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `modified_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_polarpattern_created_by_id_402ecb4d_fk_auth_user_id` (`created_by_id`),
  KEY `equipment_polarpattern_modified_by_id_81ca43a6_fk_auth_user_id` (`modified_by_id`),
  CONSTRAINT `equipment_polarpattern_created_by_id_402ecb4d_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_polarpattern_modified_by_id_81ca43a6_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `equipment_polarpattern` */

LOCK TABLES `equipment_polarpattern` WRITE;

insert  into `equipment_polarpattern`(`id`,`created_at`,`modified_at`,`status`,`name`,`created_by_id`,`modified_by_id`) values 
(1,'2021-02-26 21:28:51.596229','2021-02-26 21:28:51.596229',1,'Cardioide',1,NULL),
(2,'2021-02-26 21:29:51.297230','2021-02-26 21:29:51.297230',1,'Hipercardioide',1,NULL),
(3,'2021-03-01 17:21:03.935691','2021-03-01 17:21:03.935691',1,'Omnidireccional',1,NULL),
(4,'2021-03-01 17:21:33.759693','2021-03-01 17:21:33.760691',1,'Bidireccional',1,NULL);

UNLOCK TABLES;

/*Table structure for table `equipment_transducer` */

DROP TABLE IF EXISTS `equipment_transducer`;

CREATE TABLE `equipment_transducer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `modified_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_transducer_created_by_id_211b0af8_fk_auth_user_id` (`created_by_id`),
  KEY `equipment_transducer_modified_by_id_54d06cbe_fk_auth_user_id` (`modified_by_id`),
  CONSTRAINT `equipment_transducer_created_by_id_211b0af8_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_transducer_modified_by_id_54d06cbe_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `equipment_transducer` */

LOCK TABLES `equipment_transducer` WRITE;

insert  into `equipment_transducer`(`id`,`created_at`,`modified_at`,`status`,`name`,`created_by_id`,`modified_by_id`) values 
(1,'2021-02-27 01:22:28.197436','2021-02-27 01:22:28.197436',1,'Dinamico',1,NULL),
(2,'2021-02-27 01:22:28.215430','2021-02-27 01:22:28.215430',1,'Condensador ',1,NULL),
(3,'2021-02-27 01:22:28.236429','2021-02-27 01:22:28.236429',1,'Condensador gradiente',1,NULL),
(4,'2021-02-27 01:22:28.260429','2021-02-27 01:22:28.260429',1,'Condensador',1,NULL),
(5,'2021-02-27 01:22:28.279429','2021-02-27 01:22:28.279429',1,'Ribbon',1,NULL),
(6,'2021-02-27 01:22:28.297430','2021-02-27 01:22:28.297430',1,'Condensador Electred',1,NULL);

UNLOCK TABLES;

/*Table structure for table `equipment_type` */

DROP TABLE IF EXISTS `equipment_type`;

CREATE TABLE `equipment_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `status` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_by_id` int DEFAULT NULL,
  `modified_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_type_created_by_id_2979de7c_fk_auth_user_id` (`created_by_id`),
  KEY `equipment_type_modified_by_id_7f9b56b2_fk_auth_user_id` (`modified_by_id`),
  CONSTRAINT `equipment_type_created_by_id_2979de7c_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `equipment_type_modified_by_id_7f9b56b2_fk_auth_user_id` FOREIGN KEY (`modified_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `equipment_type` */

LOCK TABLES `equipment_type` WRITE;

insert  into `equipment_type`(`id`,`created_at`,`modified_at`,`status`,`name`,`created_by_id`,`modified_by_id`) values 
(1,'2021-02-26 20:53:25.282229','2021-02-26 20:53:25.282229',1,'Micrófono',1,1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
