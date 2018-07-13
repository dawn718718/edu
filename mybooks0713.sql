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
  `cover_path` varchar(100) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `publisher` varchar(20) DEFAULT NULL,
  `pub_date` date DEFAULT NULL,
  `read_date` date DEFAULT NULL,
  `audio_path` varchar(100) DEFAULT NULL,
  `rem_words` text,
  `comments` text,
  `moreinfo` varchar(50) DEFAULT NULL,
  `book_reg_date` datetime NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`isbn`,`email`,`cover_path`,`title`,`writer`,`publisher`,`pub_date`,`read_date`,`audio_path`,`rem_words`,`comments`,`moreinfo`,`book_reg_date`) values ('1130614425 9791130614427','a@a.com','https://bookthumb-phinf.pstatic.net/cover/125/947/12594716.jpg?type=m1&udate=20171101','근데, 영화 한 편 씹어먹어 봤니?','신왕국','다산4.0','2017-09-29','0000-00-00','','','','http://www.naver.com','2018-07-13 12:03:14'),('1162205989 9791162205983','a@a.com','https://bookthumb-phinf.pstatic.net/cover/137/185/13718551.jpg?type=m1&udate=20180620','오를 지역만 짚어주는 부동산 투자 전략','채상욱','위즈덤하우스','2018-06-15','0000-00-00','','','','http://www.naver.com','2018-07-13 11:57:28'),('1162540125 9791162540121','a@a.com','https://bookthumb-phinf.pstatic.net/cover/134/978/13497821.jpg?type=m1&udate=20180703','나는 직원 없이도 10억 번다 (직원 없이 사무실 없이','일레인 포펠트','비즈니스북스',NULL,'0000-00-00','','','','http://www.naver.com','2018-07-10 15:12:43'),('1162540168 9791162540169','a@a.com','https://bookthumb-phinf.pstatic.net/cover/135/499/13549940.jpg?type=m1&udate=20180619','유튜브의 신 (1인 크리에이터들의 롤모델 대도서관이 들','대도서관','비즈니스북스','2018-05-10','0000-00-00','','','','http://www.naver.com','2018-07-13 11:58:55'),('1185541381 9791185541389','a@a.com','https://bookthumb-phinf.pstatic.net/cover/109/331/10933159.jpg?type=m1&udate=20170907','부모공부 (','고영성','스마트북스','2016-08-25','0000-00-00','','','','http://www.naver.com','2018-07-13 12:02:47'),('1185541756 9791185541754','a@a.com','https://bookthumb-phinf.pstatic.net/cover/135/839/13583925.jpg?type=m1&udate=20180619','주식투자 오늘부터 1일 (가성비 국내 최고 주식입문서)','강준혁','스마트북스','2018-05-12','2018-08-01','','가나다라','주식최고','http://www.naver.com','2018-07-11 10:51:10'),('1185584455 9791185584454','a@a.com','https://bookthumb-phinf.pstatic.net/cover/126/441/12644121.jpg?type=m1&udate=20180116','나는 4시간만 일한다 (디지털 노마드 시대 완전히 새로','팀 페리스','다른상상','2017-10-20','0000-00-00','','','','http://www.naver.com','2018-07-13 12:13:41'),('1185609121 9791185609126','a@a.com','https://bookthumb-phinf.pstatic.net/cover/074/496/07449693.jpg?type=m1&udate=20180516','픽업아티스트 연애의 기술 (밀당의 기술)','kenshin','책과나무','2014-03-03','0000-00-00','','기쁨이 완전히 사라지고 오로지 벗어날 수 없는 고통만 남은 상황에서 그 고통을 견디면서 삶을 이어나가는데 스스로 아무 의미도 부여할 수 없다면 그 사람이 자유 의지에 따라 죽을 권리를 인정해주자','','http://www.naver.com','2018-07-13 10:55:36'),('1186117761 9791186117767','a@a.com','https://bookthumb-phinf.pstatic.net/cover/120/568/12056809.jpg?type=m1&udate=20180515','똑게육아 올인원','로리','예담프렌드','2017-05-10','0000-00-00','','','','http://www.naver.com','2018-07-13 12:01:17'),('118749609X 9791187496090','a@a.com','https://bookthumb-phinf.pstatic.net/cover/112/705/11270563.jpg?type=m1&udate=20180104','프랑스 와인 여행 (','엄정선|배두환','꿈의지도','2016-11-30','0000-00-00','','','','http://www.naver.com','2018-07-13 12:02:11'),('1188451073 9791188451074','a@a.com','https://bookthumb-phinf.pstatic.net/cover/128/420/12842039.jpg?type=m1&udate=20180214','오늘의 인생','마스다 미리','이봄',NULL,'0000-00-00','','','','http://www.naver.com','2018-07-10 15:12:00'),('1188941003 9791188941001','a@a.com','https://bookthumb-phinf.pstatic.net/cover/134/397/13439776.jpg?type=m1&udate=20180331','세계 종교의 역사','리처드 할러웨이','소소의책','2018-03-27','0000-00-00','','기쁨이 완전히 사라지고 오로지 벗어날 수 없는 고통만 남은 상황에서 그 고통을 견디면서 삶을 이어나가는데 스스로 아무 의미도 부여할 수 없다면 그 사람이 자유 의지에 따라 죽을 권리를 인정해주자','다시한번 책을 읽었다\r\n작가가 이 책을 집필하면서 자신의 내면을 직시할 기회를 가졌다 말했듯이\r\n나 역시 이 책을 읽는 동안 수도없이 나의 과거를 회상하고 나의 내면과 대화해야만했기 때문이다','http://www.naver.com','2018-07-13 10:57:03'),('1612680194 9781612680194','a@a.com','https://bookthumb-phinf.pstatic.net/cover/122/267/12226717.jpg?type=m1&udate=20170712','Rich Dad Poor Dad (What the Ri','KIYOSAKI|Robert T.','PlataPublishing','2017-04-11','2018-07-31','','f','f','http://www.naver.com','2018-07-13 10:43:15'),('8925562057 9788925562056','a@a.com','https://bookthumb-phinf.pstatic.net/cover/122/579/12257945.jpg?type=m1&udate=20170929','최고의 휴식 (왜 아무리 쉬어도 피곤이 풀리지 않는 걸','구가야 아키라','알에이치코리아','2017-07-20','0000-00-00','','기쁨이 완전히 사라지고 오로지 벗어날 수 없는 고통만 남은 상황에서 그 고통을 견디면서 삶을 이어나가는데 스스로 아무 의미도 부여할 수 없다면 그 사람이 자유 의지에 따라 죽을 권리를 인정해주자\r\n','다시한번 책을 읽었다\r\n작가가 이 책을 집필하면서 자신의 내면을 직시할 기회를 가졌다 말했듯이\r\n나 역시 이 책을 읽는 동안 수도없이 나의 과거를 회상하고 나의 내면과 대화해야만했기 때문이다','http://www.naver.com','2018-07-13 11:00:45'),('8932918716 9788932918716','a@a.com','https://bookthumb-phinf.pstatic.net/cover/129/756/12975688.jpg?type=m1&udate=20180323','침대부터 정리하라','윌리엄 H. 맥레이븐','열린책들','2017-12-20','0000-00-00','','','','http://www.naver.com','2018-07-13 13:21:48'),('8935212059 9788935212057','a@a.com','https://bookthumb-phinf.pstatic.net/cover/133/638/13363841.jpg?type=m1&udate=20180414','알고리즘, 인생을 계산하다','브라이언 크리스천|톰 그리피스','청림출판',NULL,'0000-00-00','','','','http://www.naver.com','2018-07-10 15:11:35'),('8937885239 9788937885235','a@a.com','https://bookthumb-phinf.pstatic.net/cover/068/694/06869420.jpg?type=m1&udate=20171229','주강현의 제주도 이야기 (어린이 제주 인문서)','주강현','아이세움','2012-04-10','2018-07-31','','ㄹ','ㄹ','http://www.naver.com','2018-07-11 10:59:57'),('8952770021 9788952770028','a@a.com','https://bookthumb-phinf.pstatic.net/cover/073/047/07304756.jpg?type=m1&udate=20171110','힐링 코드 (평생 병 걱정 없이 사는 하루 6분의 비밀','알렉산더 로이드|벤 존슨','시공사','2013-09-05','0000-00-00','','','','http://www.naver.com','2018-07-13 13:23:24'),('8952790308 9788952790309','a@a.com','https://bookthumb-phinf.pstatic.net/cover/135/527/13552738.jpg?type=m1&udate=20180628','저스트고 스페인 포르투갈 (2018~2019,자유여행자','<b>김지영</b>','시공사',NULL,'2018-07-01','','ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','','2018-07-10 00:00:00'),('895462183X 9788954621830','a@a.com','https://bookthumb-phinf.pstatic.net/cover/072/624/07262425.jpg?type=m1&udate=20180213','지금 이대로 괜찮은 걸까?','마스다 미리','이봄',NULL,'2018-07-09','','ㄹ','ㄹ','http://www.naver.com','2018-07-11 10:20:55'),('8960863653 9788960863651','a@a.com','https://bookthumb-phinf.pstatic.net/cover/121/052/12105212.jpg?type=m1&udate=20170621','돈 되는 아파트 돈 안 되는 아파트 (부동산 애널리스트','채상욱','위즈덤하우스','2017-05-25','2018-07-28','','','','http://www.naver.com','2018-07-13 11:56:14'),('8962621150 9788962621150','a@a.com','https://bookthumb-phinf.pstatic.net/cover/095/759/09575904.jpg?type=m1&udate=20180518','세상물정의 물리학 (복잡한 세상을 꿰뚫어 보는 통계물리','김범준','동아시아','2015-09-16','0000-00-00','','','','http://www.naver.com','2018-07-13 12:04:34'),('8963244199 9788963244198','a@a.com','https://bookthumb-phinf.pstatic.net/cover/089/951/08995135.jpg?type=m1&udate=20160218','이공계 Technical Writing 가이드','김경화','북코리아','2015-04-20','0000-00-00','','\"','','http://www.naver.com','2018-07-13 12:03:46'),('8965400015 9788965400011','a@a.com','https://bookthumb-phinf.pstatic.net/cover/063/488/06348837.jpg?type=m1&udate=20150716','열혈강의 오용철의 데이터베이스 모델링 (유쾌하게 풀어주','오용철','프리렉','2010-08-17','0000-00-00','','','','http://www.naver.com','2018-07-13 12:00:17'),('896848225X 9788968482250','a@a.com','https://bookthumb-phinf.pstatic.net/cover/096/858/09685859.jpg?type=m1&udate=20170103','Modern PHP (네임스페이스, 트레이트, 클로저부','조시 록하트','한빛미디어','2015-10-20','2018-07-09','','','','http://www.naver.com','2018-07-13 10:46:53'),('8968482411 9788968482410','a@a.com','https://bookthumb-phinf.pstatic.net/cover/100/013/10001329.jpg?type=m1&udate=20170302','Google 구글 웹로그 분석 (유입률과 재방문율, 구','미나가와 아키히로','한빛미디어',NULL,'0000-00-00','','','','http://www.naver.com','2018-07-10 15:12:18'),('8970508783 9788970508788','a@a.com','https://bookthumb-phinf.pstatic.net/cover/110/203/11020352.jpg?type=m1&udate=20160903','쉽게 배우는 HTML5 웹 프로그래밍 입문 (차별 없는','임순범|박희민','생능출판사','2016-08-30','0000-00-00','','','정말 기초적인부분이고 웹표준에대해서 좀더 자세한 설명이 나와있었으면 완벽했었을텐데 ','http://www.naver.com','2018-07-13 10:59:38'),('8984459542 9788984459540','a@a.com','https://bookthumb-phinf.pstatic.net/cover/130/163/13016397.jpg?type=m1&udate=20180327','머릿속 생각을 제대로 말하는 법','마둥|마웨이웨이|황즈중|저우쉬안이|후','시그마북스','2018-01-15','0000-00-00','','기쁨이 완전히 사라지고 오로지 벗어날 수 없는 고통만 남은 상황에서 그 고통을 견디면서 삶을 이어나가는데 스스로 아무 의미도 부여할 수 없다면 그 사람이 자유 의지에 따라 죽을 권리를 인정해주자','다시한번 책을 읽었다\r\n작가가 이 책을 집필하면서 자신의 내면을 직시할 기회를 가졌다 말했듯이\r\n나 역시 이 책을 읽는 동안 수도없이 나의 과거를 회상하고 나의 내면과 대화해야만했기 때문이다','http://www.naver.com','2018-07-13 10:58:07'),('899051438X 9788990514387','a@a.com','https://bookthumb-phinf.pstatic.net/cover/061/023/06102345.jpg?type=m1&udate=20150821','나는 살기 위해 자연식한다 (목숨 걸고 편식하는 남자 ','송학운','동녘라이프','2009-10-20','0000-00-00','','','','http://www.naver.com','2018-07-13 12:06:23'),('899230997X 9788992309974','a@a.com','https://bookthumb-phinf.pstatic.net/cover/074/889/07488926.jpg?type=m1&udate=20151127','라이프 스타일을 팔다 (다이칸야마 프로젝트)','마스다 무네아키','베가북스','2014-04-08','0000-00-00','','','','http://www.naver.com','2018-07-13 10:53:44'),('8992649207 9788992649209','a@a.com','https://bookthumb-phinf.pstatic.net/cover/073/944/07394492.jpg?type=m1&udate=20170906','HTML5 + CSS3 + JavaScript로 배우는','천인국','인피니티북스','2013-12-19','2018-07-04','','','','http://www.naver.com','2018-07-13 10:44:23'),('8998417332 9788998417338','a@a.com','https://bookthumb-phinf.pstatic.net/cover/134/245/13424521.jpg?type=m1&udate=20180316','런던 여행백서 (런던 11개 구역과 근교도시 9곳을 세','정꽃나래','나무자전거','2018-03-15','0000-00-00','','기쁨이 완전히 사라지고 오로지 벗어날 수 없는 고통만 남은 상황에서 그 고통을 견디면서 삶을 이어나가는데 스스로 아무 의미도 부여할 수 없다면 그 사람이 자유 의지에 따라 죽을 권리를 인정해주자','','http://www.naver.com','2018-07-13 10:54:27'),('8998417375 9788998417376','a@a.com','https://bookthumb-phinf.pstatic.net/cover/137/456/13745680.jpg?type=m1&udate=20180627','강원도 여행백서 (대한민국 여행자를 위한)','강정임','나무자전거','2018-06-25','0000-00-00','','','','http://www.naver.com','2018-07-13 13:22:48');

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
  `user_reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`email`,`username`,`pwd`,`user_reg_date`) values ('11@a.com','fbnv','','0000-00-00 00:00:00'),('a@a.com','ppppp','111111','0000-00-00 00:00:00'),('ab@ab.com','gege','','0000-00-00 00:00:00'),('feh@a.com','feh','','0000-00-00 00:00:00'),('ff@123.com','ff','222222','0000-00-00 00:00:00'),('gf@gf.com','gf','111111','2018-07-11 14:07:37'),('sdfsd@sdfds3.com','jen2','1','0000-00-00 00:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
