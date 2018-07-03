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
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `pub_date` date NOT NULL,
  `pages` int(11) NOT NULL,
  `audio_path` varchar(20) DEFAULT NULL,
  `read_date` date DEFAULT NULL,
  `comments` text,
  `rem_words` text,
  `cover_path` varchar(20) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`book_id`,`title`,`writer`,`publisher`,`pub_date`,`pages`,`audio_path`,`read_date`,`comments`,`rem_words`,`cover_path`) values (1,'aaa','aaa','aaa','2010-06-01',150,'audio/a.mp3','2018-06-30','aaa','aaa','img/a.jpg');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`username`,`userid`,`email`,`pwd`) values ('aaa',NULL,'asdf@gmail.com','aaaaaaa'),('aaaa',NULL,'asdf@gmail.com','aaaaaaa'),('sdfsdf',NULL,'asdf@gmail.com','1111111'),('wer',NULL,'asdf@gmail.com','3333333'),('ㅁㅁㅁ',NULL,'asdf@gmail.com','aaaaaaa');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
