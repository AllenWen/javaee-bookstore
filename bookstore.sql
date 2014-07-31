CREATE DATABASE  IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bookstore`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	5.5.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `count` (
  `detail` varchar(255) NOT NULL,
  `curDate` varchar(255) NOT NULL,
  `total_price_str` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` varchar(20) NOT NULL,
  `book_name` varchar(40) NOT NULL,
  `author` varchar(20) NOT NULL,
  `press` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `price` float unsigned NOT NULL,
  `remain` int(10) unsigned NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('ISBN:7101054498','万历十五年','黄仁宇','中华书局','历史',12.5,33),('ISBN:7115111308','心理学与生活','理查德•格里格','人民邮电出版社','心理学',60.2,49),('ISBN:7507331652','毛泽东传','中共中央文献研究室','中央文献出版社','传记',130.9,96),('ISBN:7532743128','挪威的森林','村上春树','上海世纪出版公司','文学',18.4,64),('ISBN:9787111216322','JavaScript权威指南','David Flanagan','机械工业出版社','计算机',7.99,58),('ISBN:9787115230270','Python基础教程','Magnus Lie Hetland','人民邮电出版社','计算机',48.7,23),('ISBN:9787121194856','疯狂Android讲义','李刚','电子工业出版社','计算机',69.9,39),('ISBN:9787307075429','天才在左疯子在右','高铭','武汉大学出版社','心理学',14.6,100),('ISBN:9787508630069','史蒂夫•乔布斯传','沃尔特•艾萨克森','中信联合发行公司','传记',54.4,45),('ISBN:9787532142750','丰乳肥臀','莫言','上海文艺出版社','文学',30.2,120),('ISBN:9787544253994','百年孤独','加西亚•马尔克斯','南海出版公司','文学',25.5,32),('ISBN:9787551006125','为奴十二年','所罗门·诺瑟普','文心出版社','历史',14.7,33),('ISBN:9787801656087','明朝那些事儿','当年明月','中国海关出版社','历史',125.2,24);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  `post_code` varchar(6) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('guest_1','1111','李四','广东省深圳市南山区西丽大学城','0755-86245221','518055'),('guest_2','2222','张三','北京市海淀区西土城路10号','010-62282222','100876'),('guest_3','3333','王五','上海市杨浦区邯郸路220号','021-65642222','200433'),('guest_4','4444','全勇','北京邮电大学','1234567','222222'),('guest_5','5555','房金鑫','北京邮电大学','1234567','666666'),('guest_6','6666','张克辉','北京邮电大学','1234567','222222'),('guest_7','7777','文学国','北京邮电大学','1234567','111111'),('guest_8','8888','覃小秦','北京邮电大学','1234567','518055'),('guest_9','9999','蔡正翀','北京邮电大学','1234567','333333');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin_1','1234'),('admin_2','4321');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `order_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total_price` float NOT NULL,
  `detail` varchar(200) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `book_name` varchar(40) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `remain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-28 19:19:59
