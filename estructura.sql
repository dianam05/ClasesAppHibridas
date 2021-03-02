/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 8.0.21 : Database - claseshibridas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`claseshibridas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `claseshibridas`;

/*Data for the table `alumnos_alumno` */

LOCK TABLES `alumnos_alumno` WRITE;

insert  into `alumnos_alumno`(`id`,`estado`,`nombre`,`codigo`,`curso_id`,`statura`,`fecha_nacimiento`,`fecha_creacion`) values 
(1,1,'Pepito 5',1,1,1.74,'2000-02-27','2021-02-27 01:30:37.788429'),
(2,1,'Pepito 4',108,546,NULL,'2001-02-27','2021-02-27 01:40:37.541429');

UNLOCK TABLES;

/*Data for the table `alumnos_curso` */

LOCK TABLES `alumnos_curso` WRITE;

UNLOCK TABLES;

/*Data for the table `auth_group` */

LOCK TABLES `auth_group` WRITE;

insert  into `auth_group`(`id`,`name`) values 
(1,'Estudiantes');

UNLOCK TABLES;

/*Data for the table `auth_group_permissions` */

LOCK TABLES `auth_group_permissions` WRITE;

insert  into `auth_group_permissions`(`id`,`group_id`,`permission_id`) values 
(1,1,28);

UNLOCK TABLES;

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
(25,'Can add alumno',7,'add_alumno'),
(26,'Can change alumno',7,'change_alumno'),
(27,'Can delete alumno',7,'delete_alumno'),
(28,'Can view alumno',7,'view_alumno'),
(29,'Can add curso',8,'add_curso'),
(30,'Can change curso',8,'change_curso'),
(31,'Can delete curso',8,'delete_curso'),
(32,'Can view curso',8,'view_curso');

UNLOCK TABLES;

/*Data for the table `auth_user` */

LOCK TABLES `auth_user` WRITE;

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$216000$kT8Cs3hm8ZSY$sakTMMhtDU0LEpo2ohv+1hyaen4OR2j3YzchnpKwvQ4=','2021-02-27 01:24:22.671429',1,'superadmin','','','',1,1,'2021-02-27 01:07:11.930428');

UNLOCK TABLES;

/*Data for the table `auth_user_groups` */

LOCK TABLES `auth_user_groups` WRITE;

UNLOCK TABLES;

/*Data for the table `auth_user_user_permissions` */

LOCK TABLES `auth_user_user_permissions` WRITE;

UNLOCK TABLES;

/*Data for the table `django_admin_log` */

LOCK TABLES `django_admin_log` WRITE;

insert  into `django_admin_log`(`id`,`action_time`,`object_id`,`object_repr`,`action_flag`,`change_message`,`content_type_id`,`user_id`) values 
(1,'2021-02-27 01:13:15.792430','1','Estudiantes',1,'[{\"added\": {}}]',3,1),
(2,'2021-02-27 01:30:37.793429','1','Pepito 4',1,'[{\"added\": {}}]',7,1),
(3,'2021-02-27 01:40:37.546429','2','Pepito 4',1,'[{\"added\": {}}]',7,1);

UNLOCK TABLES;

/*Data for the table `django_content_type` */

LOCK TABLES `django_content_type` WRITE;

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(7,'alumnos','alumno'),
(8,'alumnos','curso'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(6,'sessions','session');

UNLOCK TABLES;

/*Data for the table `django_migrations` */

LOCK TABLES `django_migrations` WRITE;

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2021-02-27 00:55:33.673430'),
(2,'auth','0001_initial','2021-02-27 00:55:34.182429'),
(3,'admin','0001_initial','2021-02-27 00:55:36.406429'),
(4,'admin','0002_logentry_remove_auto_add','2021-02-27 00:55:36.715429'),
(5,'admin','0003_logentry_add_action_flag_choices','2021-02-27 00:55:36.742428'),
(6,'alumnos','0001_initial','2021-02-27 00:55:36.822430'),
(7,'contenttypes','0002_remove_content_type_name','2021-02-27 00:55:37.204429'),
(8,'auth','0002_alter_permission_name_max_length','2021-02-27 00:55:37.332429'),
(9,'auth','0003_alter_user_email_max_length','2021-02-27 00:55:37.389430'),
(10,'auth','0004_alter_user_username_opts','2021-02-27 00:55:37.421429'),
(11,'auth','0005_alter_user_last_login_null','2021-02-27 00:55:37.606435'),
(12,'auth','0006_require_contenttypes_0002','2021-02-27 00:55:37.615430'),
(13,'auth','0007_alter_validators_add_error_messages','2021-02-27 00:55:37.641429'),
(14,'auth','0008_alter_user_username_max_length','2021-02-27 00:55:37.857428'),
(15,'auth','0009_alter_user_last_name_max_length','2021-02-27 00:55:38.137429'),
(16,'auth','0010_alter_group_name_max_length','2021-02-27 00:55:38.233429'),
(17,'auth','0011_update_proxy_permissions','2021-02-27 00:55:38.266428'),
(18,'auth','0012_alter_user_first_name_max_length','2021-02-27 00:55:38.679428'),
(19,'sessions','0001_initial','2021-02-27 00:55:38.773429'),
(20,'alumnos','0002_auto_20210226_2035','2021-02-27 01:38:33.280430'),
(21,'alumnos','0003_curso','2021-03-02 00:26:14.176691'),
(22,'alumnos','0004_auto_20210301_1923','2021-03-02 00:26:14.390691'),
(23,'alumnos','0005_remove_curso_fecha_nacimiento','2021-03-02 00:26:14.483691');

UNLOCK TABLES;

/*Data for the table `django_session` */

LOCK TABLES `django_session` WRITE;

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('8m9emci1ycu2q6i0d87p4628s6x4f03n','.eJxVjDsOwyAQRO9CHSG-BqdM7zOgXRaCkwgkY1dR7h5bcpGUM-_NvFmAbS1h62kJM7Erk-zy2yHEZ6oHoAfUe-Ox1XWZkR8KP2nnU6P0up3u30GBXva18TKjTsKSd87YHK016EnlhEYS5UEpEHvyasiEUQvhITqpxjFbcKTZ5wvsqzg1:1lFoLG:kypXxu0v5-NVf6GDTJA0pxdP9QZLPs73OSEHskrgMSM','2021-03-13 01:24:22.679436'),
('gtp42ozkz1p3qcqmnozjnq3jcfm182h8','.eJxVjDsOwyAQRO9CHSG-BqdM7zOgXRaCkwgkY1dR7h5bcpGUM-_NvFmAbS1h62kJM7Erk-zy2yHEZ6oHoAfUe-Ox1XWZkR8KP2nnU6P0up3u30GBXva18TKjTsKSd87YHK016EnlhEYS5UEpEHvyasiEUQvhITqpxjFbcKTZ5wvsqzg1:1lFo6A:QVPYqmhvznEzEpAwT-w6ViFkIxbplRTm8DVjTdHkMhY','2021-03-13 01:08:46.669429');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
