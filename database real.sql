/*
SQLyog - Free MySQL GUI v5.17
Host - 5.1.53-community-log : Database - pg
*********************************************************************
Server version : 5.1.53-community-log
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `pg`;

USE `pg`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL AUTO_INCREMENT,
  `property_id` int(10) NOT NULL,
  `cust_name` varchar(40) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `amount` int(12) NOT NULL,
  `date_tm` varchar(30) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert into `booking` (`booking_id`,`property_id`,`cust_name`,`cardno`,`password`,`amount`,`date_tm`) values (1,8,'rolu','1312313','abcds34',500,'2016-10-31 14:34:01'),(2,8,'rolu','1312313','abcds34',500,'2016-10-31 14:35:56'),(3,12,'8','8','8',88,'2016-11-02 16:34:40'),(4,8,'8','8','8',8,'2016-11-02 17:29:55'),(5,13,'ramu','1312','31132',9000,'2016-11-02 20:34:30'),(6,14,'raghu','5555555','23423',23423,'2016-11-04 11:56:20'),(7,9,'reet','4667','reet',5000,'2016-11-04 12:25:05'),(8,9,'reet','5667','reet',6000,'2016-11-04 12:28:16');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `username` varchar(40) NOT NULL,
  `comments` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `rating` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert into `feedback` (`username`,`comments`,`email`,`rating`,`date_time`) values ('a','a','12','','2016-10-11 10:35:51');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `type` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert into `login` (`username`,`password`,`type`,`email`,`phone`) values ('admin','admin','Admin','',''),('admin','admin','Admin','',''),('rajan','12345','Owner','34444444','abc@gmail.com'),('','','Owner','',''),('','','Customer','',''),('ramu','ramu','Customer','abc@gmail.com','23232333'),('reet','reet','Customer','9887655444','ccv'),('','','','',''),('charan','12301234','owner','454','454');

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `owner` varchar(30) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `sector` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `floors` varchar(30) DEFAULT NULL,
  `rent` int(10) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `sharing` varchar(30) DEFAULT NULL,
  `sharing_people` int(5) DEFAULT NULL,
  `terms` varchar(60) DEFAULT NULL,
  `facilities` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `avg_price` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `property` */

insert into `property` (`id`,`owner`,`name`,`city`,`sector`,`address`,`size`,`floors`,`rent`,`type`,`sharing`,`sharing_people`,`terms`,`facilities`,`phone`,`email`,`image`,`status`,`avg_price`) values (8,'','2','2','2','2','2','2',2,'2','2',2,'2','2','2','2','f.jpg','Available',0),(9,'','4xas','4','4','4','4','',4,'4','4',4,'4','4','44','4','f.jpg','',0),(10,'','4','4','4','4','4','4',4,'4','4',4,'4','4','44','4','f.jpg','Booked',0),(11,'','9','9','9','9','9','9',9,'9','9',99,'9','9','9','9','f.jpg','Booked',0),(12,'','8','8','8','8','8','',8,'8','8',8,'8','8','8','8','f.jpg','Booked',0),(13,'','polu','chd','123','343','34','3',34,'33','34',34,'34','34','34','34','f.jpg','Available',0),(14,'','66','66','66','66','66','',66,'66','66',66,'66','66','66','66','f.jpg','Booked',6),(15,'','Mr','Chandigarh','35','#345,sec','3 bkh','',7000,'kothi','yes',3,'7','7','7','7','f.jpg','Booked',7000),(16,'','Mr. Ravjeet Dhillon','chandigarh','23','23c','2bkh','',6000,'kothi','yes',3,'follow','parking,well','9876543234','cddxx','f.jpg','available',6000),(17,'','77','7','7','7','7','7',7,'7','7',7,'7','7','7','7','f.jpg','Booked',7),(18,'raman','ss','ss','3','3','3','3',3,'3','3',3,'3','3','3223','3','f.jpg','available',3),(19,'9','9','9','9','9','9','9',9,'9','9',9,'9','9','9','9','f.jpg','available',9),(20,'9','9','9','9','9','9','9',9,'9','9',9,'9','9','9','9','f.jpg','available',9),(21,'9','9','9','9','9','9','9',9,'9','9',9,'9','9','9','9','f.jpg','available',9),(22,'9','9','9','9','9','9','9',9,'9','9',9,'9','9','9','9','f.jpg','available',9),(23,'rajan','99','9','9','9','9','9',9,'9','9',9,'9','9','9','9','f.jpg','available',9);

/*Table structure for table `property_owner` */

DROP TABLE IF EXISTS `property_owner`;

CREATE TABLE `property_owner` (
  `username` varchar(30) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `property_owner` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `sector` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `floor` int(30) DEFAULT NULL,
  `rent` int(20) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `sharing` varchar(30) DEFAULT NULL,
  `sharingp` int(30) DEFAULT NULL,
  `terms` varchar(50) DEFAULT NULL,
  `facilities` varchar(100) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

/*Table structure for table `suggestions` */

DROP TABLE IF EXISTS `suggestions`;

CREATE TABLE `suggestions` (
  `username` varchar(40) NOT NULL,
  `suggestions` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `suggestions` */

insert into `suggestions` (`username`,`suggestions`,`email`,`date_time`) values ('a','a','12','2016-10-11 10:32:56'),('','cccv','zxcg','2016-10-14 11:10:09'),('','gvbbb','cvvh','2016-10-14 11:17:13'),('','xcvbnnn','','2016-10-18 11:37:08');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
