/*
SQLyog - Free MySQL GUI v5.17
Host - 5.1.53-community-log : Database - struts_demo
*********************************************************************
Server version : 5.1.53-community-log
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `struts_demo`;

USE `struts_demo`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  `cardno` int(10) DEFAULT NULL,
  `dt` varchar(30) DEFAULT NULL,
  `amount` decimal(12,2) DEFAULT NULL,
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert into `booking` (`id`,`cname`,`cardno`,`dt`,`amount`,`pid`) values (1,'mm',79798,'Sun Jul 17 13:23:53 IST 2016','1000.00',1);
insert into `booking` (`id`,`cname`,`cardno`,`dt`,`amount`,`pid`) values (2,'mmm',98998989,'Mon Jul 18 10:09:01 IST 2016','1000.00',2);

/*Table structure for table `loan` */

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `id` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `amount` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) DEFAULT NULL,
  `no_of_months` varchar(30) DEFAULT NULL,
  `rate_of_int` varchar(30) DEFAULT NULL,
  `emi` varchar(30) DEFAULT NULL,
  `loan_type` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `loan` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `image` varchar(60) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert into `login` (`id`,`username`,`password`,`gender`,`address`,`country`,`email`,`image`,`type`) values (1,'amit','21343','Male','wrwer','India','qq','upload_a6657008_9301_4c77_96d6_30f5babf677b_00000006.tmp','customer');
insert into `login` (`id`,`username`,`password`,`gender`,`address`,`country`,`email`,`image`,`type`) values (2,'haria','9888','Male','hno','Us','aa@us.net','rose5.jpg','customer');
insert into `login` (`id`,`username`,`password`,`gender`,`address`,`country`,`email`,`image`,`type`) values (3,'zozo','3232','Male','hno','Canada','asa@us.net','elegance.jpg','custoer');
insert into `login` (`id`,`username`,`password`,`gender`,`address`,`country`,`email`,`image`,`type`) values (4,'bob','3232','Male','hno','Us','aa@us.net','rose6.jpg','customer');
insert into `login` (`id`,`username`,`password`,`gender`,`address`,`country`,`email`,`image`,`type`) values (6,'pop','343','Male','sdfd','India','sdf','6_rose5.jpg','owner');
insert into `login` (`id`,`username`,`password`,`gender`,`address`,`country`,`email`,`image`,`type`) values (7,'admin','1234',NULL,NULL,NULL,NULL,NULL,'admin');

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) DEFAULT NULL,
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
  `status` varchar(30) DEFAULT NULL,
  `pstatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `property` */

insert into `property` (`id`,`owner_id`,`name`,`city`,`sector`,`address`,`size`,`floors`,`rent`,`type`,`sharing`,`sharing_people`,`terms`,`facilities`,`phone`,`email`,`image`,`status`,`pstatus`) values (1,NULL,'raju','add',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'vacant');
insert into `property` (`id`,`owner_id`,`name`,`city`,`sector`,`address`,`size`,`floors`,`rent`,`type`,`sharing`,`sharing_people`,`terms`,`facilities`,`phone`,`email`,`image`,`status`,`pstatus`) values (2,NULL,'ramu','Chandigarh','22','12','223','First',43,'boys','Yes',0,'232','Ac, Invertor, Almirah','34','ww','pg_2_flower_207299.jpg',NULL,'vacant');
insert into `property` (`id`,`owner_id`,`name`,`city`,`sector`,`address`,`size`,`floors`,`rent`,`type`,`sharing`,`sharing_people`,`terms`,`facilities`,`phone`,`email`,`image`,`status`,`pstatus`) values (3,NULL,'polu','Chandigarh','23','df','23','Ground',23,'girls','Yes',0,'23','Ac','232','23','pg_3_elegance.jpg',NULL,'vacant');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
