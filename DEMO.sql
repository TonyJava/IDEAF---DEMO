
create database if not exists `dbtbl_0`;

USE `dbtbl_0`;

/*Table structure for table `book_0` */

DROP TABLE IF EXISTS `book_0`;

CREATE TABLE `book_0` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `book_1` */

DROP TABLE IF EXISTS `book_1`;

CREATE TABLE `book_1` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



create database if not exists `dbtbl_0_slave_0`;

USE `dbtbl_0_slave_0`;

/*Table structure for table `book_0` */

DROP TABLE IF EXISTS `book_0`;

CREATE TABLE `book_0` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `book_1` */

DROP TABLE IF EXISTS `book_1`;

CREATE TABLE `book_1` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



create database if not exists `dbtbl_0_slave_1`;

USE `dbtbl_0_slave_1`;

/*Table structure for table `book_0` */

DROP TABLE IF EXISTS `book_0`;

CREATE TABLE `book_0` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `book_1` */

DROP TABLE IF EXISTS `book_1`;

CREATE TABLE `book_1` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



create database if not exists `dbtbl_1`;

USE `dbtbl_1`;

/*Table structure for table `book_0` */

DROP TABLE IF EXISTS `book_0`;

CREATE TABLE `book_0` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `book_1` */

DROP TABLE IF EXISTS `book_1`;

CREATE TABLE `book_1` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



create database if not exists `dbtbl_1_slave_0`;

USE `dbtbl_1_slave_0`;

/*Table structure for table `book_0` */

DROP TABLE IF EXISTS `book_0`;

CREATE TABLE `book_0` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `book_1` */

DROP TABLE IF EXISTS `book_1`;

CREATE TABLE `book_1` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



create database if not exists `dbtbl_1_slave_1`;

USE `dbtbl_1_slave_1`;

/*Table structure for table `book_0` */

DROP TABLE IF EXISTS `book_0`;

CREATE TABLE `book_0` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Table structure for table `book_1` */

DROP TABLE IF EXISTS `book_1`;

CREATE TABLE `book_1` (
  `ID` bigint(128) NOT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `AUTHOR` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLISHER` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PUBLICATION_TIME` date DEFAULT NULL,
  `PRICE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


