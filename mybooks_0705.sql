/*
SQLyog Community v12.09 (64 bit)
MySQL - 10.1.13-MariaDB : Database - mybooks
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mybooks` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mybooks`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `isbn` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cover_path` varchar(20) NOT NULL,
  `title` varchar(30) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `pub_date` date DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `read_date` date DEFAULT NULL,
  `audio_path` varchar(20) DEFAULT NULL,
  `rem_words` text,
  `comments` text,
  `book_reg_date` date DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`isbn`,`email`,`cover_path`,`title`,`writer`,`publisher`,`pub_date`,`pages`,`read_date`,`audio_path`,`rem_words`,`comments`,`book_reg_date`) values ('11111','c@a.com','images/physics.jpg','물리학','김길동','김길동출판사','2018-05-05',100,'2018-06-01','audio/a.mp3','good','i love you','2000-01-01'),('12345','a@a.com','images/fuck.jpg','에잇','홍길동','길동출판사','2018-05-05',100,'2018-06-01','audio/a.mp3','good','i love you','2000-01-01'),('22222','d@a.com','images/physics.jpg','물리학','김길동','김길동출판사','2018-05-05',100,'2018-06-01','audio/a.mp3','good','i love you','2000-01-01'),('33333','e@a.com','images/physics.jpg','물리학','김길동','김길동출판사','2018-05-05',100,'2018-06-01','audio/a.mp3','good','i love you','2000-01-01'),('55555','f@a.com','images/physics.jpg','물리학','김길동','김길동출판사','2018-05-05',100,'2018-06-01','audio/a.mp3','good','i love you','2000-01-01'),('78912','b@a.com','images/physics.jpg','물리학','김길동','김길동출판사','2018-05-05',100,'2018-06-01','audio/a.mp3','good','i love you','2000-01-01');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `notice_no` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(30) NOT NULL,
  `notice_reg_date` date NOT NULL,
  `notice_content` text NOT NULL,
  PRIMARY KEY (`notice_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notice` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `user_reg_date` date NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
