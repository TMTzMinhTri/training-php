# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 125.212.244.26 (MySQL 5.5.5-10.1.22-MariaDB)
# Database: khachhang_io
# Generation Time: 2019-03-08 08:19:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table customer_activities
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customer_activities`;

CREATE TABLE `customer_activities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_uuid` varchar(32) NOT NULL,
  `customer_key` varchar(128) NOT NULL,
  `page_root` varchar(128) NOT NULL,
  `page_url` text NOT NULL,
  `page_title` text,
  `page_description` text,
  `page_image` text,
  `customer_ip` varchar(128) DEFAULT NULL,
  `customer_user_agent` varchar(256) DEFAULT NULL,
  `customer_phonenumber` varchar(32) DEFAULT NULL,
  `Network_Name` varchar(32) DEFAULT NULL,
  `Network_Type` varchar(32) DEFAULT NULL,
  `Device_Brand` varchar(32) DEFAULT NULL,
  `Device_Model` varchar(32) DEFAULT NULL,
  `Device_osName` varchar(32) DEFAULT NULL,
  `Device_osVersion` varchar(32) DEFAULT NULL,
  `Device_browser` varchar(32) DEFAULT NULL,
  `Device_browserShortName` varchar(32) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  `ads_type` tinyint(4) DEFAULT NULL COMMENT '1: adwords, 2: facebook',
  `ads_keywords` varchar(128) DEFAULT NULL,
  `fromType` varchar(32) NOT NULL DEFAULT 'AUTO' COMMENT 'AUTO: tu dong, Theo nguon',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_uuid`),
  KEY `customer_ip` (`customer_ip`),
  KEY `customer_uuid` (`customer_uuid`),
  KEY `customer_key` (`customer_key`),
  KEY `page_root` (`page_root`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
