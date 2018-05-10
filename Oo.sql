-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_project
DROP DATABASE IF EXISTS `db_project`;
CREATE DATABASE IF NOT EXISTS `db_project` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_project`;

-- Dumping structure for table db_project.tbl_additionaldetails
DROP TABLE IF EXISTS `tbl_additionaldetails`;
CREATE TABLE IF NOT EXISTS `tbl_additionaldetails` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `ADDdetails` varchar(250) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_additionaldetails: ~8 rows (approximately)
DELETE FROM `tbl_additionaldetails`;
/*!40000 ALTER TABLE `tbl_additionaldetails` DISABLE KEYS */;
INSERT INTO `tbl_additionaldetails` (`id`, `userid`, `ADDdetails`) VALUES
	(1, 91775, 'dsdsdsd'),
	(2, 91775, 'dsdsdsd'),
	(3, 91775, 'sdfsdfdfddfd'),
	(4, 91775, 'sdfsdfdfddfd'),
	(5, 91775, 'sdfsdfdfddfd'),
	(6, 91775, 'sdfsdfdfddfd'),
	(7, 91775, 'dddddd'),
	(8, 91775, 'dddddd');
/*!40000 ALTER TABLE `tbl_additionaldetails` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_appliedapplication
DROP TABLE IF EXISTS `tbl_appliedapplication`;
CREATE TABLE IF NOT EXISTS `tbl_appliedapplication` (
  `id` int(11) NOT NULL auto_increment,
  `UserId` varchar(50) NOT NULL default '0',
  `Oid` varchar(50) NOT NULL default '0',
  `JobID` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UserId_Oid_JobID` (`UserId`,`Oid`,`JobID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_appliedapplication: ~1 rows (approximately)
DELETE FROM `tbl_appliedapplication`;
/*!40000 ALTER TABLE `tbl_appliedapplication` DISABLE KEYS */;
INSERT INTO `tbl_appliedapplication` (`id`, `UserId`, `Oid`, `JobID`) VALUES
	(1, '12221', '93326', '7603');
/*!40000 ALTER TABLE `tbl_appliedapplication` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_candidateselskill
DROP TABLE IF EXISTS `tbl_candidateselskill`;
CREATE TABLE IF NOT EXISTS `tbl_candidateselskill` (
  `id` int(11) NOT NULL auto_increment,
  `Slevel_id` int(11) NOT NULL default '0',
  `userid` int(11) default NULL,
  `Skill_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_candidateselskill: ~11 rows (approximately)
DELETE FROM `tbl_candidateselskill`;
/*!40000 ALTER TABLE `tbl_candidateselskill` DISABLE KEYS */;
INSERT INTO `tbl_candidateselskill` (`id`, `Slevel_id`, `userid`, `Skill_id`) VALUES
	(13, 1, 66825, 2),
	(14, 2, 66825, 3),
	(16, 2, 91775, 1),
	(17, 3, 91775, 3),
	(18, 1, 91775, 4),
	(19, 2, 91775, 5),
	(20, 3, 56882, 3),
	(21, 2, 56882, 4),
	(23, 1, 12221, 1),
	(24, 2, 12221, 3),
	(25, 1, 61808, 3);
/*!40000 ALTER TABLE `tbl_candidateselskill` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_canjobfield
DROP TABLE IF EXISTS `tbl_canjobfield`;
CREATE TABLE IF NOT EXISTS `tbl_canjobfield` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `JobField_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid_JobField_id` (`userid`,`JobField_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_canjobfield: ~5 rows (approximately)
DELETE FROM `tbl_canjobfield`;
/*!40000 ALTER TABLE `tbl_canjobfield` DISABLE KEYS */;
INSERT INTO `tbl_canjobfield` (`id`, `userid`, `JobField_id`) VALUES
	(15, 12221, 1),
	(14, 12221, 3),
	(16, 61808, 1),
	(17, 61808, 3),
	(18, 61808, 4);
/*!40000 ALTER TABLE `tbl_canjobfield` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_canprefjoblocation
DROP TABLE IF EXISTS `tbl_canprefjoblocation`;
CREATE TABLE IF NOT EXISTS `tbl_canprefjoblocation` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `locationid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid_locationid` (`userid`,`locationid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_canprefjoblocation: ~6 rows (approximately)
DELETE FROM `tbl_canprefjoblocation`;
/*!40000 ALTER TABLE `tbl_canprefjoblocation` DISABLE KEYS */;
INSERT INTO `tbl_canprefjoblocation` (`id`, `userid`, `locationid`) VALUES
	(3, 12221, 1),
	(4, 12221, 3),
	(5, 61808, 1),
	(6, 61808, 3),
	(1, 91775, 1),
	(2, 91775, 3);
/*!40000 ALTER TABLE `tbl_canprefjoblocation` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_company
DROP TABLE IF EXISTS `tbl_company`;
CREATE TABLE IF NOT EXISTS `tbl_company` (
  `company_id` int(11) NOT NULL auto_increment,
  `company_name` varchar(50) NOT NULL default '0',
  `company_logo` varchar(50) NOT NULL default '0',
  `company_address` varchar(50) NOT NULL default '0',
  `company_contact` varchar(50) NOT NULL default '0',
  `company_emailid` varchar(50) NOT NULL default '0',
  `company_website` varchar(50) NOT NULL default '0',
  `company_employeesno` int(11) NOT NULL default '0',
  `company_revenue` int(11) NOT NULL default '0',
  `company_founded` year(4) NOT NULL default '0000',
  `company_founders` varchar(50) NOT NULL default '0',
  `company_username` varchar(50) NOT NULL default '0',
  `company_password` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_company: ~5 rows (approximately)
DELETE FROM `tbl_company`;
/*!40000 ALTER TABLE `tbl_company` DISABLE KEYS */;
INSERT INTO `tbl_company` (`company_id`, `company_name`, `company_logo`, `company_address`, `company_contact`, `company_emailid`, `company_website`, `company_employeesno`, `company_revenue`, `company_founded`, `company_founders`, `company_username`, `company_password`) VALUES
	(1, 'Basa', '0', 'bassad\r\nadd', '1234567890', 'sdsds@gmail.com', 'ssdd.com', 5, 200000, '2000', 'jjhjh', 'uuuu', 'pppp'),
	(2, 'Basa', '0', 'bassad\r\nadd', '1234567890', 'sdsds@gmail.com', 'ssdd.com', 5, 200000, '2000', 'jjhjh', 'uuuu', 'pppp'),
	(3, 'Basa', '0', 'bassad\r\nadd', '1234567890', 'sdsds@gmail.com', 'ssdd.com', 5, 200000, '2000', 'jjhjh', 'uuuu', 'pppp'),
	(4, 'Basa', '0', 'bassad\r\nadd', '1234567890', 'sdsds@gmail.com', 'ssdd.com', 5, 200000, '2000', 'jjhjh', 'uuuu', 'pppp'),
	(5, 'Basa', '0', 'bassad\r\nadd', '1234567890', 'sdsds@gmail.com', 'ssdd.com', 5, 200000, '2000', 'jjhjh', 'uuuu', 'pppp');
/*!40000 ALTER TABLE `tbl_company` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_companylogo
DROP TABLE IF EXISTS `tbl_companylogo`;
CREATE TABLE IF NOT EXISTS `tbl_companylogo` (
  `userid` int(11) NOT NULL,
  `PicAdress` varchar(50) NOT NULL,
  PRIMARY KEY  (`userid`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_companylogo: ~1 rows (approximately)
DELETE FROM `tbl_companylogo`;
/*!40000 ALTER TABLE `tbl_companylogo` DISABLE KEYS */;
INSERT INTO `tbl_companylogo` (`userid`, `PicAdress`) VALUES
	(93326, 'IMG_1527.jpg');
/*!40000 ALTER TABLE `tbl_companylogo` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_degree
DROP TABLE IF EXISTS `tbl_degree`;
CREATE TABLE IF NOT EXISTS `tbl_degree` (
  `did` int(11) NOT NULL auto_increment,
  `degre` varchar(100) default NULL,
  `eid` int(11) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_degree: ~40 rows (approximately)
DELETE FROM `tbl_degree`;
/*!40000 ALTER TABLE `tbl_degree` DISABLE KEYS */;
INSERT INTO `tbl_degree` (`did`, `degre`, `eid`) VALUES
	(1, 'B.Arch', 1),
	(4, 'Aeronautical Engineering', 1),
	(5, 'BCA', 1),
	(6, 'B.plan', 1),
	(7, '.B.Sc IT / Computer Science', 1),
	(8, 'B.Tech', 1),
	(9, 'Other Bachelor Degree In Engineering', 1),
	(10, 'M.Arch', 2),
	(11, 'MCA', 2),
	(12, 'M.Sc IT / Computer Science', 2),
	(13, 'MS(Engg)', 2),
	(14, 'M.Tech', 2),
	(15, 'PGDCA', 2),
	(16, 'Other Master Degree In Engineering', 2),
	(17, 'BA', 3),
	(18, 'B.com', 3),
	(19, 'B.Ed', 3),
	(20, 'BFA', 3),
	(21, 'BFT', 3),
	(22, 'BLIS', 3),
	(23, 'B.M.M', 3),
	(24, 'B.Sc', 3),
	(25, 'BSW', 3),
	(26, 'B.Phil', 3),
	(27, 'Other Bachelor Degree In Arts / Science', 3),
	(31, 'M.A', 4),
	(32, 'M.Ed', 4),
	(33, 'MFA', 4),
	(34, 'MLIS', 4),
	(35, 'M.Sc', 4),
	(36, 'M.phil', 4),
	(37, 'Other Master Degree In Arts / Science', 4),
	(38, 'BBA', 5),
	(39, 'BFM', 5),
	(40, 'BHM(Hotel Management)', 5),
	(41, 'Other Bachelor Degree In Management', 5),
	(42, 'MBA', 6),
	(43, 'MFM', 6),
	(44, 'MHM(Hotel Management)', 6),
	(45, 'Other Master Degree In Management', 6);
/*!40000 ALTER TABLE `tbl_degree` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_edu
DROP TABLE IF EXISTS `tbl_edu`;
CREATE TABLE IF NOT EXISTS `tbl_edu` (
  `edu_id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL default '0',
  `did` int(11) NOT NULL default '0',
  `college` varchar(50) NOT NULL default '0',
  `stream` varchar(50) default '0',
  `Syr` varchar(50) NOT NULL default '0',
  `Eyr` varchar(50) NOT NULL default '0',
  `percentage` varchar(50) default '0',
  PRIMARY KEY  (`edu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_edu: ~9 rows (approximately)
DELETE FROM `tbl_edu`;
/*!40000 ALTER TABLE `tbl_edu` DISABLE KEYS */;
INSERT INTO `tbl_edu` (`edu_id`, `userid`, `did`, `college`, `stream`, `Syr`, `Eyr`, `percentage`) VALUES
	(5, 38035, 10, 'ewewe', '', '2000', '2000', '80'),
	(6, 38035, 5, 'jjbjj', '', '2000', '2000', '80'),
	(7, 66825, 11, 'ilahia sdsd', '', '2000', '2000', '80'),
	(8, 91775, 11, 'ilahia college of engineering and technology', '', '2000', '2000', '70'),
	(9, 91775, 5, 'mec kottappady', '', '2000', '2000', '70'),
	(10, 56882, 5, 'Mar Elias College Kottappady', 'computer', '2000', '2000', '65%'),
	(11, 12221, 38, 'vbbv', 'fgf', '2000', '2000', '75'),
	(12, 61808, 5, 'nghg', 'computer', '2000', '2000', '70%'),
	(13, 49828, 11, 'ilahia', 's4', '2000', '2000', '70');
/*!40000 ALTER TABLE `tbl_edu` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_education
DROP TABLE IF EXISTS `tbl_education`;
CREATE TABLE IF NOT EXISTS `tbl_education` (
  `eid` int(11) NOT NULL auto_increment,
  `Degree` varchar(100) default '0',
  `DegreeType` varchar(50) default '0',
  PRIMARY KEY  (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_education: ~13 rows (approximately)
DELETE FROM `tbl_education`;
/*!40000 ALTER TABLE `tbl_education` DISABLE KEYS */;
INSERT INTO `tbl_education` (`eid`, `Degree`, `DegreeType`) VALUES
	(1, '--Any Bachelor in Engineering /Computers--', 'Bachelor'),
	(2, '--Any Master in Engineering /Computers--', 'Master'),
	(3, '--Any Bachelor in Arts / Science--', 'Bachelor'),
	(4, '--Any Master in Arts / Science--', 'Master'),
	(5, '--Any Bachelor in Management--', 'Bachelor'),
	(6, '--Any Master in Management--', 'Master'),
	(7, '--Any Finantial Qualification -ICWAI / CA / CS / CFA --', 'Master'),
	(8, '--Any Bachelor in Medicine in General /Dental / Surgeon--', 'Master'),
	(9, '--Any Master in Legal--', 'Master'),
	(10, '--Service IAS / IPS / IRS / IES / IFS /--', 'Master'),
	(11, '--Ph.D--', 'Master'),
	(12, '--Any Deploma--', 'Bachelor'),
	(13, '--Higher Secondary / Secondary--', 'Bachelor');
/*!40000 ALTER TABLE `tbl_education` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_jobadditionaldetails
DROP TABLE IF EXISTS `tbl_jobadditionaldetails`;
CREATE TABLE IF NOT EXISTS `tbl_jobadditionaldetails` (
  `id` int(11) NOT NULL auto_increment,
  `jobOpenId` int(11) NOT NULL,
  `about` varchar(250) NOT NULL,
  `NoOfOpening` int(11) NOT NULL,
  `Experience` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_jobadditionaldetails: ~2 rows (approximately)
DELETE FROM `tbl_jobadditionaldetails`;
/*!40000 ALTER TABLE `tbl_jobadditionaldetails` DISABLE KEYS */;
INSERT INTO `tbl_jobadditionaldetails` (`id`, `jobOpenId`, `about`, `NoOfOpening`, `Experience`) VALUES
	(2, 7603, 'jbhhbh', 2, '1 year'),
	(4, 3552, 'tgdgd\r\njhjhjjhjh', 2, '1yr');
/*!40000 ALTER TABLE `tbl_jobadditionaldetails` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_jobdetails
DROP TABLE IF EXISTS `tbl_jobdetails`;
CREATE TABLE IF NOT EXISTS `tbl_jobdetails` (
  `id` int(11) NOT NULL auto_increment,
  `organization` varchar(50) NOT NULL default '0',
  `location` varchar(50) NOT NULL default '0',
  `Syear` varchar(50) NOT NULL default '0',
  `Eyear` varchar(50) NOT NULL default '0',
  `Description` varchar(250) NOT NULL default '0',
  `userid` varchar(250) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_jobdetails: ~7 rows (approximately)
DELETE FROM `tbl_jobdetails`;
/*!40000 ALTER TABLE `tbl_jobdetails` DISABLE KEYS */;
INSERT INTO `tbl_jobdetails` (`id`, `organization`, `location`, `Syear`, `Eyear`, `Description`, `userid`) VALUES
	(1, 'bnbnbnb', 'nmnmnm', '2000', '2000', 'ytyjgjhgjhg\r\nfdfdfdf\r\ndfdfdfdf', '66825'),
	(3, 'bnbnbnb', 'nmnmnm', '2000', '2000', 'ytyjgjhgjhg\r\nfdfdfdf\r\ndfdfdfdf', '66825'),
	(4, 'bnbnbnb', 'nmnmnm', '2000', '2000', 'ytyjgjhgjhg\r\nfdfdfdf\r\ndfdfdfdf', '66825'),
	(5, 'bnbnbnb', 'nmnmnm', '2000', '2000', 'ytyjgjhgjhg\r\nfdfdfdf\r\ndfdfdfdf', '66825'),
	(6, 'bnbnbnb', 'nmnmnm', '2000', '2000', 'ytyjgjhgjhg\r\nfdfdfdf\r\ndfdfdfdf', '66825'),
	(7, 'bnbnbnb', 'nmnmnm', '2000', '2000', 'ytyjgjhgjhg\r\nfdfdfdf\r\ndfdfdfdf', '66825'),
	(8, 'mbnb', 'vbv', '2000', '2000', 'hgjgfjhgjh\r\nyuyuyuyuy', '91775');
/*!40000 ALTER TABLE `tbl_jobdetails` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_jobfield
DROP TABLE IF EXISTS `tbl_jobfield`;
CREATE TABLE IF NOT EXISTS `tbl_jobfield` (
  `id` int(11) NOT NULL auto_increment,
  `field` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_jobfield: ~5 rows (approximately)
DELETE FROM `tbl_jobfield`;
/*!40000 ALTER TABLE `tbl_jobfield` DISABLE KEYS */;
INSERT INTO `tbl_jobfield` (`id`, `field`) VALUES
	(1, 'Software Development'),
	(2, 'Mobile App Development'),
	(3, 'Programming'),
	(4, 'UI/UX Design'),
	(5, 'Software Testing');
/*!40000 ALTER TABLE `tbl_jobfield` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_jobopening
DROP TABLE IF EXISTS `tbl_jobopening`;
CREATE TABLE IF NOT EXISTS `tbl_jobopening` (
  `id` int(11) NOT NULL auto_increment,
  `JobOpenId` int(11) NOT NULL default '0',
  `jobFieldId` int(11) NOT NULL default '0',
  `locationId` int(11) NOT NULL default '0',
  `experiDate` date default NULL,
  `Oid` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_jobopening: ~2 rows (approximately)
DELETE FROM `tbl_jobopening`;
/*!40000 ALTER TABLE `tbl_jobopening` DISABLE KEYS */;
INSERT INTO `tbl_jobopening` (`id`, `JobOpenId`, `jobFieldId`, `locationId`, `experiDate`, `Oid`) VALUES
	(8, 7603, 3, 3, '2018-02-16', 93326),
	(10, 3552, 1, 1, '2018-04-21', 93326);
/*!40000 ALTER TABLE `tbl_jobopening` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_jobskillrequired
DROP TABLE IF EXISTS `tbl_jobskillrequired`;
CREATE TABLE IF NOT EXISTS `tbl_jobskillrequired` (
  `id` int(11) NOT NULL auto_increment,
  `JobOpenId` int(11) default NULL,
  `SkillId` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `Oid_JobOpenId_SkillId` (`JobOpenId`,`SkillId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_jobskillrequired: ~8 rows (approximately)
DELETE FROM `tbl_jobskillrequired`;
/*!40000 ALTER TABLE `tbl_jobskillrequired` DISABLE KEYS */;
INSERT INTO `tbl_jobskillrequired` (`id`, `JobOpenId`, `SkillId`) VALUES
	(9, 6612, 1),
	(7, 6612, 2),
	(8, 6612, 3),
	(4, 7603, 1),
	(5, 7603, 3),
	(6, 7603, 4),
	(2, 9423, 3),
	(3, 9423, 4);
/*!40000 ALTER TABLE `tbl_jobskillrequired` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_location
DROP TABLE IF EXISTS `tbl_location`;
CREATE TABLE IF NOT EXISTS `tbl_location` (
  `id` int(11) NOT NULL auto_increment,
  `location` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_location: ~2 rows (approximately)
DELETE FROM `tbl_location`;
/*!40000 ALTER TABLE `tbl_location` DISABLE KEYS */;
INSERT INTO `tbl_location` (`id`, `location`) VALUES
	(1, 'kochi'),
	(3, 'Bangloore');
/*!40000 ALTER TABLE `tbl_location` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_login
DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE IF NOT EXISTS `tbl_login` (
  `id` int(11) NOT NULL default '0',
  `Username` varchar(50) default NULL,
  `email_id` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_login: ~22 rows (approximately)
DELETE FROM `tbl_login`;
/*!40000 ALTER TABLE `tbl_login` DISABLE KEYS */;
INSERT INTO `tbl_login` (`id`, `Username`, `email_id`, `password`) VALUES
	(12221, 'neena', 'neena@gmail.com', 'nnnn'),
	(19377, 'er', 'e@gmail.com', 'sds'),
	(24045, 'basil', 'basil@gmail.com', 'dsdsd'),
	(28426, 'basil', 'basil@gmail.com', 'dsd'),
	(31268, 'xcxc', 'q@gmail.com', '5454545'),
	(32930, 'xcxc', 'q@gmail.com', 'yuy'),
	(33279, 'basil', 'basil@gmail.com', 'bvbv'),
	(38035, 'baa', 'b@gmail.com', '454545'),
	(48826, 'jhjikhkjhkj', 'e@gmail.com', 'nbnbn'),
	(49828, 'Anju', 'anjua645@gmail.com', 'anju'),
	(53699, 'sdsd', 'd@gmail.com', '32we'),
	(54737, 'basil', 'basil@gmail.com', 'dsdsd'),
	(56882, 'basil', 'b@gmai.com', 'basil5222'),
	(60849, 'basil', 'basil@gmail.com', 'ghhgh'),
	(61808, 'Anju', 'anjua645@gmail.com', 'anju'),
	(66825, 'hhgh', 'b@gmail.com', 'vvb'),
	(75336, 'sdsd', 'd@gmail.com', 'hgh'),
	(75427, 'basil', 'basil@gmail.com', 'ghg'),
	(81400, 'xcxc', 'q@gmail.com', '12345'),
	(82185, 'basil', 'basil@gmail.com', 'weew'),
	(90982, 'sdsd', 'd@gmail.com', 'bbnb'),
	(91775, 'basil', 'basil@gmail.com', 'bnbnb');
/*!40000 ALTER TABLE `tbl_login` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_organization
DROP TABLE IF EXISTS `tbl_organization`;
CREATE TABLE IF NOT EXISTS `tbl_organization` (
  `id` int(11) NOT NULL auto_increment,
  `Oid` int(11) NOT NULL default '0',
  `Oname` varchar(50) NOT NULL default '0',
  `Uname` varchar(50) NOT NULL default '0',
  `password` varchar(50) NOT NULL default '0',
  `EmailId` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `Oid` (`Oid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_organization: ~10 rows (approximately)
DELETE FROM `tbl_organization`;
/*!40000 ALTER TABLE `tbl_organization` DISABLE KEYS */;
INSERT INTO `tbl_organization` (`id`, `Oid`, `Oname`, `Uname`, `password`, `EmailId`) VALUES
	(2, 26839, 'jhjhjhj', 'njhjh', 'hr@jhjh.com', '3243'),
	(3, 98579, 'x xcxc', 'xcxc', 'ccxcx@fdff.com', 'xcxc'),
	(4, 93244, 'x xcxc', 'xcxc', 'ccxcx@fdff.com', 'hghg'),
	(5, 48429, 'dsd', 'sds', 'sdsd@dds.com', 'dsds'),
	(6, 17389, 'dsd', 'sds', 'sdsd@dds.com', 'hhg'),
	(7, 51589, 'uytrfhtfrghf', 'jghjgjh', 'hr@ghg.com', 'vbvvbv'),
	(8, 20909, 'cfdfd', 'ssds', 'b@gmail.com', 'sdsss'),
	(9, 43536, 'xdsd', 'cxcxc', 'e@gmail.com', 'sddssd'),
	(10, 47599, 'rer', 'ere', 'e@gmail.com', 'ewew'),
	(11, 93326, 'gfgf', 'fggf', 'ghg@dfdfd.com', '12345');
/*!40000 ALTER TABLE `tbl_organization` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_organization2
DROP TABLE IF EXISTS `tbl_organization2`;
CREATE TABLE IF NOT EXISTS `tbl_organization2` (
  `id` int(11) NOT NULL auto_increment,
  `Oid` int(11) NOT NULL default '0',
  `adress` varchar(250) NOT NULL default '0',
  `ContactNo` int(11) NOT NULL default '0',
  `AboutFirm` varchar(250) NOT NULL default '0',
  `Web` varchar(250) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `Oid` (`Oid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_organization2: ~4 rows (approximately)
DELETE FROM `tbl_organization2`;
/*!40000 ALTER TABLE `tbl_organization2` DISABLE KEYS */;
INSERT INTO `tbl_organization2` (`id`, `Oid`, `adress`, `ContactNo`, `AboutFirm`, `Web`) VALUES
	(1, 93326, 'scscs', 211212, 'sdsds', 'sdsd'),
	(2, 20909, 'ddfdfd', 545454545, 'sdsdsdds\r\nsdsds\r\ndsdsdsd', 'vcvcvcv'),
	(3, 43536, 'lklklk\r\nfdfdf', 78778, 'kklklklkkl\r\nsdfdfdf\r\nfdfdfdfdfd', 'lklklk'),
	(4, 47599, 'dsds', 23232, 'dsdsdsd\r\nsdsd\r\nsd\r\nfdd', 'sdsds');
/*!40000 ALTER TABLE `tbl_organization2` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_personaldetails
DROP TABLE IF EXISTS `tbl_personaldetails`;
CREATE TABLE IF NOT EXISTS `tbl_personaldetails` (
  `id` int(11) NOT NULL default '0',
  `Title` varchar(50) default NULL,
  `Name` varchar(50) default NULL,
  `Country_code` int(11) default NULL,
  `Phone_no` varchar(50) default NULL,
  `City` varchar(50) default NULL,
  `2city` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_personaldetails: ~11 rows (approximately)
DELETE FROM `tbl_personaldetails`;
/*!40000 ALTER TABLE `tbl_personaldetails` DISABLE KEYS */;
INSERT INTO `tbl_personaldetails` (`id`, `Title`, `Name`, `Country_code`, `Phone_no`, `City`, `2city`) VALUES
	(12221, 'Ms', 'neena pallath', 2, '080980808908', 'Mr', 'Mr'),
	(31268, 'Mr', 'basil hhh', 11, '123', 'Mr', 'Mr'),
	(32930, 'Ms', 'yuyuyuyuyu hgggh', 19, '576555', 'Mr', 'Mr'),
	(33279, 'Mr', 'Basil Jose', 2, '7878787', 'Mr', 'Mr'),
	(38035, 'Mr', 'b e', 2, '45454545454', 'Mr', 'Mr'),
	(49828, 'Ms', 'anju kunjumon', 2, '', 'Kochi', 'Kochi'),
	(56882, 'Mr', ' ', 0, '', 'Mr', 'Ms'),
	(61808, 'Ms', 'Anju KunjuMon', 2, '8606170536', 'Trivandrum', 'Kochi'),
	(66825, 'Mr', 'Basil Jose', 2, '8893320889', 'Mr', 'Mr'),
	(81400, 'Mr.', 'd d', 18, '3232323', 'Mr.', 'Mr.'),
	(91775, 'Mr', 'basil jose', 2, '677676767676', 'Mr', 'Mr');
/*!40000 ALTER TABLE `tbl_personaldetails` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_propic
DROP TABLE IF EXISTS `tbl_propic`;
CREATE TABLE IF NOT EXISTS `tbl_propic` (
  `userid` int(11) NOT NULL,
  `picaddress2` varchar(100) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_propic: ~3 rows (approximately)
DELETE FROM `tbl_propic`;
/*!40000 ALTER TABLE `tbl_propic` DISABLE KEYS */;
INSERT INTO `tbl_propic` (`userid`, `picaddress2`) VALUES
	(12221, 'IMG_1368.jpg'),
	(56882, 'IMG_1826.jpg'),
	(61808, 'IMG_1152.jpg');
/*!40000 ALTER TABLE `tbl_propic` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_skillevel
DROP TABLE IF EXISTS `tbl_skillevel`;
CREATE TABLE IF NOT EXISTS `tbl_skillevel` (
  `Slevel_id` int(11) NOT NULL auto_increment,
  `skillevel` varchar(50) NOT NULL default '0',
  PRIMARY KEY  (`Slevel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_skillevel: ~3 rows (approximately)
DELETE FROM `tbl_skillevel`;
/*!40000 ALTER TABLE `tbl_skillevel` DISABLE KEYS */;
INSERT INTO `tbl_skillevel` (`Slevel_id`, `skillevel`) VALUES
	(1, 'Beginer'),
	(2, 'Intermediate'),
	(3, 'Excellent');
/*!40000 ALTER TABLE `tbl_skillevel` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_skills
DROP TABLE IF EXISTS `tbl_skills`;
CREATE TABLE IF NOT EXISTS `tbl_skills` (
  `skill_id` int(11) NOT NULL auto_increment,
  `skill` varchar(50) default NULL,
  PRIMARY KEY  (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_skills: ~5 rows (approximately)
DELETE FROM `tbl_skills`;
/*!40000 ALTER TABLE `tbl_skills` DISABLE KEYS */;
INSERT INTO `tbl_skills` (`skill_id`, `skill`) VALUES
	(1, 'java'),
	(2, '.Net'),
	(3, 'javascript'),
	(4, 'css'),
	(5, 'html');
/*!40000 ALTER TABLE `tbl_skills` ENABLE KEYS */;

-- Dumping structure for table db_project.tbl_worksample
DROP TABLE IF EXISTS `tbl_worksample`;
CREATE TABLE IF NOT EXISTS `tbl_worksample` (
  `id` int(11) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL default '0',
  `blog` varchar(150) default '0',
  `playstore` varchar(150) default '0',
  `github` varchar(150) default '0',
  `behance` varchar(150) default '0',
  `other` varchar(150) default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_project.tbl_worksample: ~2 rows (approximately)
DELETE FROM `tbl_worksample`;
/*!40000 ALTER TABLE `tbl_worksample` DISABLE KEYS */;
INSERT INTO `tbl_worksample` (`id`, `userid`, `blog`, `playstore`, `github`, `behance`, `other`) VALUES
	(1, '66825', 'xcxcx', '', 'xcxcxc', '', ''),
	(3, '91775', '', '', 'http://github.com/matrimoni', '', '');
/*!40000 ALTER TABLE `tbl_worksample` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
