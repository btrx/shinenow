-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_elearning
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ db_elearning;
USE db_elearning;

--
-- Table structure for table `db_elearning`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_elearning`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`username`,`password`) VALUES 
 (1,'admin','admin'),
 (3,'dany','123'),
 (5,'123456','123456'),
 (6,'12345','12345'),
 (8,'ahsvaj','asbkadb'),
 (10,'sagjdsgj','sjgdsjD'),
 (11,'afagajg','hagjgaja');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `db_elearning`.`nilai`
--

DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `benar` int(100) DEFAULT NULL,
  `salah` int(100) DEFAULT NULL,
  `kosong` int(100) DEFAULT NULL,
  `score` int(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_elearning`.`nilai`
--

/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;


--
-- Table structure for table `db_elearning`.`s_admin`
--

DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_elearning`.`s_admin`
--

/*!40000 ALTER TABLE `s_admin` DISABLE KEYS */;
INSERT INTO `s_admin` (`id`,`username`,`password`) VALUES 
 (1,'sadmin','sadmin');
/*!40000 ALTER TABLE `s_admin` ENABLE KEYS */;


--
-- Table structure for table `db_elearning`.`user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jns_kelamin` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_elearning`.`user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`username`,`password`,`nama`,`jns_kelamin`,`alamat`,`email`,`gambar`) VALUES 
 (13,'12345','$2y$10$b8HIqKg2wba2JQyDihsOHe9kjhl1O42KRPe.OBp55wX6qxSeqVPQC','dany','laki-laki','','a@gmail.com',''),
 (14,'123456','$2y$10$bRpwOzaAueVNKnAfxDPx.uocXrac06IxTBnEfd7uCAFuS0zaS3R8a','fafagh','laki-laki','','',''),
 (16,'123','$2y$10$5h9hnhYlXQby1EhfQSkno.kA7HzOzwsN34MYqTXAyqH0V4i9.Zcz.','ica','perempuan','jakarta','ica@gmail.com',''),
 (17,'1234567','$2y$10$PeYWD4.QrMKFUXXhJGWSpOOLwgm/2lqB1/dzfWXHsby/6J0CMrMjq','','laki-laki','','',''),
 (18,'dany','$2y$10$4M.NirNKn5LkwnPdsZS0OOos8M6.nNyq.v5oq5E5hDdr0VE6/AYXO','dany','laki-laki','kebumen','dany@gmail.com','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
