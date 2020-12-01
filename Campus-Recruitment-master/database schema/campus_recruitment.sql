-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 20, 2019 at 04:44 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_recruitment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `admin_usn` varchar(10) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_usn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_usn`, `admin_password`) VALUES
(0, 'PES1201701', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
CREATE TABLE IF NOT EXISTS `application` (
  `usn` varchar(10) NOT NULL,
  `job_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`usn`,`job_id`),
  KEY `job_id` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `company_job_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(25) NOT NULL,
  `company_website` varchar(25) DEFAULT NULL,
  `company_phone_no` int(10) DEFAULT NULL,
  `company_city` varchar(15) DEFAULT NULL,
  `company_address` varchar(25) DEFAULT NULL,
  `company_description` varchar(50) DEFAULT NULL,
  `salary_package` float DEFAULT NULL,
  `job_role` varchar(15) NOT NULL,
  `cutoff` float DEFAULT NULL,
  PRIMARY KEY (`company_job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_job_id`, `company_name`, `company_website`, `company_phone_no`, `company_city`, `company_address`, `company_description`, `salary_package`, `job_role`, `cutoff`) VALUES
(1, 'Google', 'www.google.com', 12345678, 'Bangalore', 'Bangalore', 'Bangalore', 12345, 'Software Dev', 9);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_usn` varchar(10) NOT NULL,
  `student_name` varchar(25) NOT NULL,
  `student_mobile_no` int(10) NOT NULL,
  `student_email` varchar(25) NOT NULL,
  `student_cgpa` float DEFAULT NULL,
  PRIMARY KEY (`student_usn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_usn`, `student_name`, `student_mobile_no`, `student_email`, `student_cgpa`) VALUES
('PES1201701', 'Vishal Ratnam', 987654321, 'vishalratnam@gmail.com', 9.5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_usn_fk` FOREIGN KEY (`student_usn`) REFERENCES `admin` (`admin_usn`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
