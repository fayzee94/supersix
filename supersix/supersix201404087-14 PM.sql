# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.28)
# Database: supersix
# Generation Time: 2014-04-08 11:14:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table match
# ------------------------------------------------------------

DROP TABLE IF EXISTS `match`;

CREATE TABLE `match` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `h_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `h_s` int(11) DEFAULT NULL,
  `a_s` int(11) DEFAULT NULL,
  `stage` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;

INSERT INTO `match` (`id`, `h_id`, `a_id`, `h_s`, `a_s`, `stage`)
VALUES
	(1,5,1,12,1,NULL),
	(2,4,5,NULL,NULL,NULL),
	(3,4,5,NULL,NULL,NULL);

/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sekolah
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sekolah`;

CREATE TABLE IF NOT EXISTS `sekolah` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_a` varchar(50) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  `short_a` varchar(20) DEFAULT NULL,
  `group` varchar(1) DEFAULT NULL,
  `division` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

LOCK TABLES `sekolah` WRITE;
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;

INSERT INTO `sekolah` (`id`, `name_a`, `code`, `short_a`, `group`, `division`) VALUES
(1, 'Sekolah Tuanku Abdul Rahman', 'A1', 'STAR', 'A', '1'),
(2, 'SM Sains Tuanku Syed Putra', 'A2', 'SMSTSP', 'A', '1'),
(3, 'SM Sains Tengku Abdullah', 'A3', 'SEMESTA', 'A', '1'),
(4, 'SBP Integrasi Rawang, Selangor', 'A4', 'SBPI Gombak', 'A', '1'),
(5, 'SBP Integrasi Selandar', 'B1', 'SBPI Selandar', 'B', '1'),
(6, 'Maktab Tentera DiRaja', 'B2', 'MTD', 'B', '1'),
(7, 'Sekolah Alam Shah', 'B3', 'SSAS', 'B', '1'),
(8, 'SMS Sultan Mohamad Jiwa', 'B4', 'SMSSMJ', 'B', '1'),
(9, 'Sekolah Menengah Sains Kuala Selangor', 'C1', 'KUSSES', 'C', '1'),
(10, 'SBP Integrasi Kuantan', 'C2', 'SBPI Kuantan', 'C', '1'),
(11, 'SM Sains Sultan Mahmud', 'C3', 'SESMA', 'C', '1'),
(12, 'SM Sains Kota Tinggi', 'C4', 'SAKTI', 'C', '1'),
(13, 'SM Sains Hulu Selangor', 'D1', 'SEMASHUR', 'D', '1'),
(14, 'SM Sains Raja Azlan Shah', 'D2', 'SERATAS', 'D', '1'),
(15, 'SM Agama Persekutuan Kajang', 'D3', 'SMAP Kajang', 'D', '1'),
(16, 'SM Sultan Abdul Halim', 'D4', 'SMSAH', 'D', '1'),
(17, 'Sekolah Dato Abdul Razak', 'E1', 'SDAR', 'E', '1'),
(18, 'Kolej Melayu Kuala Kangsar', 'E2', 'MCKK', 'E', '1'),
(19, 'SM Sains Tapah', 'E3', 'SESTA', 'E', '1'),
(20, 'SM Sains Lahad Datu', 'E4', 'SMSLD', 'E', '1'),
(21, 'SBP Integrasi Jempol', 'F1', 'SBPI Jempol', 'F', '1'),
(22, 'SM Sains Kepala Batas', 'F2', 'SMS K.Batas', 'F', '1'),
(23, 'SM Sains Tun Syed Sheh Shahabudin', 'F3', 'SMSTSSS', 'F', '1'),
(24, 'SM Sains Sultan Hj Ahmad Shah', 'F4', 'SEMSAS', 'F', '1'),
(25, 'SBP Integrasi Batu Rakit Terengganu', 'G1', 'BRAINS', 'G', '1'),
(26, 'SM Sains Muzaffar Syah', 'G2', 'MOZAC', 'G', '1'),
(27, 'SM Sains Pokok Sena', 'G3', 'SAINA', 'G', '1'),
(28, 'SM Sains Tuanku Jaafar', 'G4', 'STJ', 'G', '1'),
(29, 'SM Sains Selangor', 'H1', 'SMSS', 'H', '1'),
(30, 'SM Sains Johor', 'H2', 'SMS Johor', 'H', '1'),
(31, 'SM Sains Kuching', 'H3', 'SMS Kuching', 'H', '1'),
(32, 'SBP Integrasi Sabak Bernam', 'H4', 'SABER', 'H', '1'),
(33, 'Sekolah Menengah Agama Persekutuan Labu', 'J1', 'SMAP LABU', 'J', '2'),
(34, 'Sekolah Menengah Sains Teluk Intan', 'J2', 'SEMESTI', 'J', '2'),
(35, 'Sekolah Menengah Sains Sultan Iskandar', 'J3', 'SMSSI', 'J', '2'),
(36, 'Sekolah Sains Sultan Haji Ahmad Shah Pekan', 'K1', 'SHAH PEKAN', 'K', '2'),
(37, 'Sekolah Menengah Sains Muar', 'K2', 'SAMURA', 'K', '2'),
(38, 'Sekolah Menengah Sains Sabah', 'K3', 'SMESH', 'K', '2'),
(39, 'Sekolah Menengah Sains Rembau', 'K4', 'SEMESRA', 'K', '2'),
(40, 'Sekolah Berasrama Penuh Integrasi Gopeng', 'L1', 'IGOP', 'L', '2'),
(41, 'Sekolah Menengah Sains Alam Shah', 'L2', 'ASIS', 'L', '2'),
(42, 'SM Sains Kubang Pasu', 'L3', 'SMSKP', 'L', '2'),
(43, 'SM Sains Semberong', 'L4', 'SASEM', 'L', '2'),
(44, 'SM Sains Miri', 'M1', 'SMS MIRI', 'M', '2'),
(45, 'Sekolah Menengah Sains Kuala Terengganu', 'M2', 'SESTER', 'M', '2'),
(46, 'Sekolah Menengah Sains Machang', 'M3', 'SMACH', 'M', '2'),
(47, 'SM Sains Kuching Utara', 'M4', 'SAKURA', 'M', '2'),
(48, 'Sekolah Berasrama Penuh Integrasi Tun Abdul Razak', 'N1', 'INSTAR', 'N', '2'),
(49, 'SM Sains Banting', 'N2', 'SMS BANTING', 'N', '2'),
(50, 'SBP Integrasi Temerloh', 'N3', 'SBPI TEMERLOH', 'N', '2'),
(51, 'SM Sains Hulu Terengganu', 'N4', 'SAHUT', 'N', '2'),
(52, 'Sekolah Menengah Sains Setiu', 'O1', 'SAIS', 'O', '2'),
(53, 'SM Sains Batu Pahat', 'O2', 'SMS BATU PAHAT', 'O', '2'),
(54, 'SBP Integrasi Rawang', 'O3', 'SBPIR', 'O', '2'),
(55, 'Kolej Islam Sultan Alam Shah', 'O4', 'KISAS', 'O', '2'),
(56, 'SBP Integrasi  Kubang Pasu', 'P1', 'SBPI KP', 'P', '2'),
(57, 'Sekolah Menengah Sains Dungun', 'P2', 'SEMERDU', 'P', '2'),
(58, 'SM Sains Tengku Muhammad Faris Petra', 'P3', 'SMSTFP', 'P', '2'),
(59, 'SM Sains Seremban', 'P4', 'SASER', 'P', '2'),
(60, 'SM Sains Bagan Datoh', 'Q1', 'SABDA', 'Q', '2'),
(61, 'SM Sains Labuan', 'Q2', 'SMSL', 'Q', '2'),
(62, 'Sekolah Menengah Agama Persekutuan Labu', 'Q3', 'SMAPL', 'Q', '2');


/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `sekolah2`;

CREATE TABLE IF NOT EXISTS `sekolah2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_b` varchar(50) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL,
  `short_b` varchar(20) DEFAULT NULL,
  `group` varchar(1) DEFAULT NULL,
  `division` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63;

LOCK TABLES `sekolah2` WRITE;
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;

INSERT INTO `sekolah` (`id`, `name_a`, `code`, `short_a`, `group`, `division`) VALUES
(1, 'Sekolah Tuanku Abdul Rahman', 'A1', 'STAR', 'A', '1'),
(2, 'SM Sains Tuanku Syed Putra', 'A2', 'SMSTSP', 'A', '1'),
(3, 'SM Sains Tengku Abdullah', 'A3', 'SEMESTA', 'A', '1'),
(4, 'SBP Integrasi Rawang, Selangor', 'A4', 'SBPI Gombak', 'A', '1'),
(5, 'SBP Integrasi Selandar', 'B1', 'SBPI Selandar', 'B', '1'),
(6, 'Maktab Tentera DiRaja', 'B2', 'MTD', 'B', '1'),
(7, 'Sekolah Alam Shah', 'B3', 'SSAS', 'B', '1'),
(8, 'SMS Sultan Mohamad Jiwa', 'B4', 'SMSSMJ', 'B', '1'),
(9, 'Sekolah Menengah Sains Kuala Selangor', 'C1', 'KUSSES', 'C', '1'),
(10, 'SBP Integrasi Kuantan', 'C2', 'SBPI Kuantan', 'C', '1'),
(11, 'SM Sains Sultan Mahmud', 'C3', 'SESMA', 'C', '1'),
(12, 'SM Sains Kota Tinggi', 'C4', 'SAKTI', 'C', '1'),
(13, 'SM Sains Hulu Selangor', 'D1', 'SEMASHUR', 'D', '1'),
(14, 'SM Sains Raja Azlan Shah', 'D2', 'SERATAS', 'D', '1'),
(15, 'SM Agama Persekutuan Kajang', 'D3', 'SMAP Kajang', 'D', '1'),
(16, 'SM Sultan Abdul Halim', 'D4', 'SMSAH', 'D', '1'),
(17, 'Sekolah Dato Abdul Razak', 'E1', 'SDAR', 'E', '1'),
(18, 'Kolej Melayu Kuala Kangsar', 'E2', 'MCKK', 'E', '1'),
(19, 'SM Sains Tapah', 'E3', 'SESTA', 'E', '1'),
(20, 'SM Sains Lahad Datu', 'E4', 'SMSLD', 'E', '1'),
(21, 'SBP Integrasi Jempol', 'F1', 'SBPI Jempol', 'F', '1'),
(22, 'SM Sains Kepala Batas', 'F2', 'SMS K.Batas', 'F', '1'),
(23, 'SM Sains Tun Syed Sheh Shahabudin', 'F3', 'SMSTSSS', 'F', '1'),
(24, 'SM Sains Sultan Hj Ahmad Shah', 'F4', 'SEMSAS', 'F', '1'),
(25, 'SBP Integrasi Batu Rakit Terengganu', 'G1', 'BRAINS', 'G', '1'),
(26, 'SM Sains Muzaffar Syah', 'G2', 'MOZAC', 'G', '1'),
(27, 'SM Sains Pokok Sena', 'G3', 'SAINA', 'G', '1'),
(28, 'SM Sains Tuanku Jaafar', 'G4', 'STJ', 'G', '1'),
(29, 'SM Sains Selangor', 'H1', 'SMSS', 'H', '1'),
(30, 'SM Sains Johor', 'H2', 'SMS Johor', 'H', '1'),
(31, 'SM Sains Kuching', 'H3', 'SMS Kuching', 'H', '1'),
(32, 'SBP Integrasi Sabak Bernam', 'H4', 'SABER', 'H', '1'),
(33, 'Sekolah Menengah Agama Persekutuan Labu', 'J1', 'SMAP LABU', 'J', '2'),
(34, 'Sekolah Menengah Sains Teluk Intan', 'J2', 'SEMESTI', 'J', '2'),
(35, 'Sekolah Menengah Sains Sultan Iskandar', 'J3', 'SMSSI', 'J', '2'),
(36, 'Sekolah Sains Sultan Haji Ahmad Shah Pekan', 'K1', 'SHAH PEKAN', 'K', '2'),
(37, 'Sekolah Menengah Sains Muar', 'K2', 'SAMURA', 'K', '2'),
(38, 'Sekolah Menengah Sains Sabah', 'K3', 'SMESH', 'K', '2'),
(39, 'Sekolah Menengah Sains Rembau', 'K4', 'SEMESRA', 'K', '2'),
(40, 'Sekolah Berasrama Penuh Integrasi Gopeng', 'L1', 'IGOP', 'L', '2'),
(41, 'Sekolah Menengah Sains Alam Shah', 'L2', 'ASIS', 'L', '2'),
(42, 'SM Sains Kubang Pasu', 'L3', 'SMSKP', 'L', '2'),
(43, 'SM Sains Semberong', 'L4', 'SASEM', 'L', '2'),
(44, 'SM Sains Miri', 'M1', 'SMS MIRI', 'M', '2'),
(45, 'Sekolah Menengah Sains Kuala Terengganu', 'M2', 'SESTER', 'M', '2'),
(46, 'Sekolah Menengah Sains Machang', 'M3', 'SMACH', 'M', '2'),
(47, 'SM Sains Kuching Utara', 'M4', 'SAKURA', 'M', '2'),
(48, 'Sekolah Berasrama Penuh Integrasi Tun Abdul Razak', 'N1', 'INSTAR', 'N', '2'),
(49, 'SM Sains Banting', 'N2', 'SMS BANTING', 'N', '2'),
(50, 'SBP Integrasi Temerloh', 'N3', 'SBPI TEMERLOH', 'N', '2'),
(51, 'SM Sains Hulu Terengganu', 'N4', 'SAHUT', 'N', '2'),
(52, 'Sekolah Menengah Sains Setiu', 'O1', 'SAIS', 'O', '2'),
(53, 'SM Sains Batu Pahat', 'O2', 'SMS BATU PAHAT', 'O', '2'),
(54, 'SBP Integrasi Rawang', 'O3', 'SBPIR', 'O', '2'),
(55, 'Kolej Islam Sultan Alam Shah', 'O4', 'KISAS', 'O', '2'),
(56, 'SBP Integrasi  Kubang Pasu', 'P1', 'SBPI KP', 'P', '2'),
(57, 'Sekolah Menengah Sains Dungun', 'P2', 'SEMERDU', 'P', '2'),
(58, 'SM Sains Tengku Muhammad Faris Petra', 'P3', 'SMSTFP', 'P', '2'),
(59, 'SM Sains Seremban', 'P4', 'SASER', 'P', '2'),
(60, 'SM Sains Bagan Datoh', 'Q1', 'SABDA', 'Q', '2'),
(61, 'SM Sains Labuan', 'Q2', 'SMSL', 'Q', '2'),
(62, 'Sekolah Menengah Agama Persekutuan Labu', 'Q3', 'SMAPL', 'Q', '2');


/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;
UNLOCK TABLES;


