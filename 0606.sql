CREATE DATABASE jendb;
SHOW DATABASE;
CHARACTER SET utf8;
USE jendb;
CREATE TABLE users(
	userid VARCHAR(20) NOT NULL,
	userpw VARCHAR(20) NOT NULL,
	NAME VARCHAR(20) NOT NULL,
	PRIMARY KEY(userid));
	
INSERT INTO users (userid, userpw, NAME) VALUES ("dawn718","1111","Jayon");
INSERT INTO users (userid, userpw, NAME) VALUES ("abc","1111","Tom");
INSERT INTO users (userid, userpw, NAME) VALUES ("efg","1111","Jason");
