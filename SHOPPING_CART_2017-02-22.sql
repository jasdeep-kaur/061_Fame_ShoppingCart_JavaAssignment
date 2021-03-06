# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.26)
# Database: SHOPPING_CART
# Generation Time: 2017-02-22 12:42:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table ORDER_DETAILS
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ORDER_DETAILS`;

CREATE TABLE `ORDER_DETAILS` (
  `OD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `OD_PRODUCT_ID` int(11) NOT NULL,
  `OD_QTY` int(3) NOT NULL,
  `OD_UNITPRICE` int(11) NOT NULL,
  `OD_TOTALPRICE` int(11) NOT NULL,
  `OD_ORDER_ID` int(11) NOT NULL,
  PRIMARY KEY (`OD_ID`),
  KEY `FOREIGN_KEY_OD_PRODUCTID` (`OD_PRODUCT_ID`),
  KEY `FOREIGN_KEY_OD_ORDERID` (`OD_ORDER_ID`),
  CONSTRAINT `FOREIGN_KEY_OD_ORDERID` FOREIGN KEY (`OD_ORDER_ID`) REFERENCES `ORDERS` (`ORDER_ID`),
  CONSTRAINT `FOREIGN_KEY_OD_PRODUCTID` FOREIGN KEY (`OD_PRODUCT_ID`) REFERENCES `PRODUCT` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
