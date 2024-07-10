/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - ams
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ams` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ams`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`name`,`password`) values 
('a','a'),
('aby','a');

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ktu_id` varchar(12) DEFAULT NULL,
  `cst301a` int(11) DEFAULT NULL,
  `cst302a` int(11) DEFAULT NULL,
  `cst303a` int(11) DEFAULT NULL,
  `cst304a` int(11) DEFAULT NULL,
  `cst305a` int(11) DEFAULT NULL,
  `cst306a` int(11) DEFAULT NULL,
  `cst301s` int(11) DEFAULT NULL,
  `cst302s` int(11) DEFAULT NULL,
  `cst303s` int(11) DEFAULT NULL,
  `cst304s` int(11) DEFAULT NULL,
  `cst305s` int(11) DEFAULT NULL,
  `cst306s` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`id`,`ktu_id`,`cst301a`,`cst302a`,`cst303a`,`cst304a`,`cst305a`,`cst306a`,`cst301s`,`cst302s`,`cst303s`,`cst304s`,`cst305s`,`cst306s`) values 
(1,'a',2,2,2,2,2,2,2,2,2,2,2,2),
(2,'ss234',7,7,1,8,6,4,9,9,7,4,7,5),
(3,'LKTE21',34,88,12,23,54,23,50,90,30,26,58,23),
(4,'600',66,13,78,65,77,66,77,88,87,67,78,67);

/*Table structure for table `slogin` */

DROP TABLE IF EXISTS `slogin`;

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `userid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `slogin` */

insert  into `slogin`(`id`,`username`,`userid`) values 
(4,'aby','7410'),
(5,'aby','12345'),
(6,'ABY','B'),
(7,'a','a'),
(8,'NAKUL','600'),
(9,'NISHA','NIS123'),
(10,'NISHA','NIS123');

/*Table structure for table `student_list` */

DROP TABLE IF EXISTS `student_list`;

CREATE TABLE `student_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `roll` int(11) DEFAULT NULL,
  `ktu_id` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `eligible` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `student_list` */

insert  into `student_list`(`id`,`name`,`roll`,`ktu_id`,`dob`,`eligible`) values 
(1,'a',2,'2','2222-07-20','y'),
(4,'aby',57,'LKTE21CS065','2002-07-22','Y'),
(5,'aby pious',57,'7410','2023-12-06','N'),
(6,'a',68,'a','2023-12-07','n'),
(7,'aa',2,'ss234','2001-09-07','NO'),
(8,'NAKYL',65,'LKTE21','1999-12-12','NO'),
(9,'NAKUL',65,'600','1024-08-08','NO'),
(10,'NAKUL',65,'600','2000-09-09','NO');

/*Table structure for table `tlogin` */

DROP TABLE IF EXISTS `tlogin`;

CREATE TABLE `tlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `userid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tlogin` */

insert  into `tlogin`(`id`,`username`,`userid`) values 
(1,'aby','a'),
(2,'a','a'),
(3,'nisha','nis123');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
