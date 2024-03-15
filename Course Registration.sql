-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2024 at 04:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Classes`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `CourseNumber` varchar(7) CHARACTER SET utf8 NOT NULL,
  `CRN` varchar(5) CHARACTER SET utf8 NOT NULL,
  `Credits` int(1) DEFAULT NULL,
  `MeetingTimes` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `CourseName` varchar(34) CHARACTER SET utf8 DEFAULT NULL,
  `Section` varchar(2) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`CourseNumber`, `CRN`, `Credits`, `MeetingTimes`, `CourseName`, `Section`) VALUES
('BCHB524', '000', 5, 'MW 1:30-3pm; F 10-12pm', 'Bioinformatics Computing', '01'),
('BCHB524', '15000', 5, 'MW 1:30-3pm; F 10-12pm', 'Bioinformatics Computing', '01'),
('BCHB580', '16441', 3, 'MW 1:30-3pm', 'Systems Biology and Bioinformatics', '01'),
('TBIO530', '22973', 3, 'MW 1:30-3pm', 'Systems Biology and Bioinformatics', '01'),
('BCHB524', '29771', 3, 'MW 1:30-3pm', 'Bioinformatics Computing', '02'),
('BCHB620', '30952', 1, 'F 1-2', 'Bioinformatics Algorithms', '01'),
('BCHB620', '30952', 2, 'F 1-2', 'Bioinformatics Algorithms', '02'),
('BCHB594', '34641', 1, 'T 12-1', 'Bioinformatics Seminar II', '01'),
('BCHB697', '36959', 3, 'F 10-1', 'Databases for Bioinformatics', '01');

-- --------------------------------------------------------

--
-- Table structure for table `currently_enrolled`
--

CREATE TABLE `currently_enrolled` (
  `StudentNetID` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `CRN` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Section` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `CourseNumber` varchar(7) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currently_enrolled`
--

INSERT INTO `currently_enrolled` (`StudentNetID`, `CRN`, `Section`, `CourseNumber`) VALUES
('ls1340', '000', '01', 'BCHB524'),
('lmw116', '36959', '01', 'BCHB697'),
('my511', '16441', '01', 'BCHB580'),
('mdw83', '16441', '01', 'BCHB580'),
('vr380', '29771', '02', 'BCHB524'),
('rcf57', '34641', '01', 'BCHB594'),
('zsw6', '30952', '01', 'BCHB620'),
('yl1009', '36959', '01', 'BCHB697'),
('bm999', '15000', '01', 'BCHB524'),
('ss4218', '34641', '01', 'BCHB594'),
('zsw6', '16441', '01', 'BCHB580'),
('ls1340', '36959', '01', 'BCHB697'),
('lmw116', '15000', '01', 'BCHB524'),
('bm999', '16441', '01', 'BCHB580'),
('sg1386', '30952', '01', 'BCHB620'),
('yw575', '15000', '01', 'BCHB524'),
('yk625', '36959', '01', 'BCHB697'),
('zsw6', '36959', '01', 'BCHB697'),
('bm999', '36959', '01', 'BCHB697'),
('ls1340', '34641', '01', 'BCHB594'),
('kg737', '16441', '01', 'BCHB580'),
('yw575', '36959', '01', 'BCHB697'),
('sdh74', '22973', '01', 'TBIO530'),
('yl1009', '16441', '01', 'BCHB580'),
('yk625', '30952', '02', 'BCHB620'),
('bh658', '15000', '01', 'BCHB524'),
('ss4218', '16441', '01', 'BCHB580'),
('gj202', '15000', '01', 'BCHB524'),
('bh658', '36959', '01', 'BCHB697'),
('zsw6', '34641', '01', 'BCHB594'),
('ss4218', '36959', '01', 'BCHB697'),
('bm999', '30952', '01', 'BCHB620'),
('kec274', '22973', '01', 'TBIO530'),
('yl1009', '30952', '02', 'BCHB620'),
('ic364', '22973', '01', 'TBIO530'),
('bh658', '30952', '01', 'BCHB620'),
('sg1386', '15000', '01', 'BCHB524'),
('bh658', '16441', '01', 'BCHB580'),
('ss4218', '15000', '01', 'BCHB524'),
('yk625', '34641', '01', 'BCHB594'),
('sls358', '16441', '01', 'BCHB580'),
('zsw6', '15000', '01', 'BCHB524'),
('yl1009', '15000', '01', 'BCHB524'),
('lmw116', '30952', '02', 'BCHB620'),
('yw575', '30952', '01', 'BCHB620'),
('bm999', '34641', '01', 'BCHB594'),
('sg1386', '36959', '01', 'BCHB697'),
('aju9', '22973', '01', 'TBIO530'),
('sg1386', '34641', '01', 'BCHB594'),
('ng606', '29771', '02', 'BCHB524'),
('rdp50', '29771', '02', 'BCHB524'),
('ls1340', '16441', '01', 'BCHB580'),
('kg737', '15000', '01', 'BCHB524'),
('xh61', '36959', '01', 'BCHB697'),
('ss4218', '30952', '01', 'BCHB620'),
('yk625', '16441', '01', 'BCHB580'),
('yl1009', '34641', '01', 'BCHB594'),
('yk625', '15000', '01', 'BCHB524'),
('sg1386', '16441', '01', 'BCHB580'),
('xh61', '29771', '02', 'BCHB524'),
('kg737', '34641', '01', 'BCHB594'),
('yw575', '16441', '01', 'BCHB580');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `CourseDirector` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `CRN` varchar(5) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`CourseDirector`, `CRN`) VALUES
('Edwards', '000'),
('Edwards', '36959'),
('Ross,Edwards', '16441'),
('Ross,Edwards', '16441'),
('Edwards', '29771'),
('Edwards', '34641'),
('Edwards', '30952'),
('Edwards', '36959'),
('Edwards', '15000'),
('Edwards', '34641'),
('Ross,Edwards', '16441'),
('Edwards', '36959'),
('Edwards', '15000'),
('Ross,Edwards', '16441'),
('Edwards', '30952'),
('Edwards', '15000'),
('Edwards', '36959'),
('Edwards', '36959'),
('Edwards', '36959'),
('Edwards', '34641'),
('Ross,Edwards', '16441'),
('Edwards', '36959'),
('Edwards,Ross', '22973'),
('Ross,Edwards', '16441'),
('Edwards', '30952'),
('Edwards', '15000'),
('Ross,Edwards', '16441'),
('Edwards', '15000'),
('Edwards', '36959'),
('Edwards', '34641'),
('Edwards', '36959'),
('Edwards', '30952'),
('Edwards,Ross', '22973'),
('Edwards', '30952'),
('Edwards,Ross', '22973'),
('Edwards', '30952'),
('Edwards', '15000'),
('Ross,Edwards', '16441'),
('Edwards', '15000'),
('Edwards', '34641'),
('Ross,Edwards', '16441'),
('Edwards', '15000'),
('Edwards', '15000'),
('Edwards', '30952'),
('Edwards', '30952'),
('Edwards', '34641'),
('Edwards', '36959'),
('Edwards,Ross', '22973'),
('Edwards', '34641'),
('Edwards', '29771'),
('Edwards', '29771'),
('Ross,Edwards', '16441'),
('Edwards', '15000'),
('Edwards', '36959'),
('Edwards', '30952'),
('Ross,Edwards', '16441'),
('Edwards', '34641'),
('Edwards', '15000'),
('Ross,Edwards', '16441'),
('Edwards', '29771'),
('Edwards', '34641'),
('Ross,Edwards', '16441');

-- --------------------------------------------------------

--
-- Table structure for table `Students`
--

CREATE TABLE `Students` (
  `StudentNetID` varchar(6) CHARACTER SET utf8 NOT NULL,
  `StudentName` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `Degree` varchar(4) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Students`
--

INSERT INTO `Students` (`StudentNetID`, `StudentName`, `Degree`) VALUES
('aju9', 'Uhlman, Andrew J. ', 'MS'),
('bh658', 'Hai, Bin ', 'MS'),
('bm999', 'Matthiasardottir, Brynja ', 'MS'),
('gj202', 'Ji, Guangchuan ', 'MS'),
('ic364', 'Conde, Isabel P. ', 'MS'),
('kec274', 'Castro, Kyleen E. ', 'MS'),
('kg737', 'Ghaffari, Kian ', 'MS'),
('lmw116', 'Walker, Lacey ', 'MS'),
('ls1340', 'Sandoval, Lorena ', 'MS'),
('mdw83', 'Whipple, Matthew D. ', 'MS'),
('my511', 'Yuan, Meng ', 'PhD'),
('ng606', 'Ghuznavi, Nureen ', 'NDGD'),
('rcf57', 'Fuchs, Rebecca C. ', 'MS'),
('rdp50', 'Peterson, Rose D. ', 'NDGD'),
('sdh74', 'Hall, Spencer D. ', 'MS'),
('sg1386', 'Gautam, Shruti ', 'MS'),
('sls358', 'Seagrave, Sarah L. ', 'MS'),
('ss4218', 'Shah, Sanjana ', 'MS'),
('vr380', 'Rodriguez, Victoria ', 'NDGD'),
('xh61', 'Huang, Xu ', 'MS'),
('yk625', 'Kwon, Yonghyun ', 'MS'),
('yl1009', 'Li, Yingqi ', 'MS'),
('yw575', 'Wu, Yixin ', 'MS'),
('zsw6', 'Wallace, Zachary S. ', 'MS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`CRN`,`CourseNumber`,`Section`);

--
-- Indexes for table `currently_enrolled`
--
ALTER TABLE `currently_enrolled`
  ADD KEY `FK_CRN_CourseNumber_Section` (`CRN`,`CourseNumber`,`Section`),
  ADD KEY `FK_StudentNetID` (`StudentNetID`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD KEY `FK_CRN` (`CRN`);

--
-- Indexes for table `Students`
--
ALTER TABLE `Students`
  ADD PRIMARY KEY (`StudentNetID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `currently_enrolled`
--
ALTER TABLE `currently_enrolled`
  ADD CONSTRAINT `FK_CRN_CourseNumber_Section` FOREIGN KEY (`CRN`,`CourseNumber`,`Section`) REFERENCES `Courses` (`CRN`, `CourseNumber`, `Section`),
  ADD CONSTRAINT `FK_StudentNetID` FOREIGN KEY (`StudentNetID`) REFERENCES `Students` (`StudentNetID`);

--
-- Constraints for table `professors`
--
ALTER TABLE `professors`
  ADD CONSTRAINT `FK_CRN` FOREIGN KEY (`CRN`) REFERENCES `Courses` (`CRN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
