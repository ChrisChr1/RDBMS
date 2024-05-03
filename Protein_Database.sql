-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2024 at 06:57 PM
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
-- Database: `Protein_Database`
--

-- --------------------------------------------------------

--
-- Table structure for table `Gene`
--

CREATE TABLE `Gene` (
  `Gene ID` char(10) NOT NULL,
  `Gene Name` char(30) NOT NULL,
  `Protein ID` char(20) NOT NULL,
  `Gene Description` longtext NOT NULL,
  `Chromosome number` smallint(2) NOT NULL,
  `Gene start position` int(255) NOT NULL,
  `Gene end position` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Protein`
--

CREATE TABLE `Protein` (
  `Protein ID` char(20) NOT NULL,
  `Protein Name` varchar(6) NOT NULL,
  `Protein sequence` longtext NOT NULL,
  `Protein length` bigint(255) NOT NULL,
  `Protein function` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `SNP`
--

CREATE TABLE `SNP` (
  `SNP ID` varchar(10) NOT NULL,
  `SNP Position` int(6) NOT NULL,
  `SNP Allele` int(50) NOT NULL,
  `SNP Gene` text NOT NULL,
  `Protein ID` char(20) NOT NULL,
  `Gene ID` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Gene`
--
ALTER TABLE `Gene`
  ADD PRIMARY KEY (`Gene ID`),
  ADD UNIQUE KEY `Protein ID` (`Protein ID`),
  ADD UNIQUE KEY `Gene Name` (`Gene Name`);

--
-- Indexes for table `Protein`
--
ALTER TABLE `Protein`
  ADD PRIMARY KEY (`Protein ID`),
  ADD UNIQUE KEY `Protein Name` (`Protein Name`);

--
-- Indexes for table `SNP`
--
ALTER TABLE `SNP`
  ADD PRIMARY KEY (`SNP ID`),
  ADD KEY `Protein ID` (`Protein ID`),
  ADD KEY `Gene ID` (`Gene ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Gene`
--
ALTER TABLE `Gene`
  ADD CONSTRAINT `Protein ID` FOREIGN KEY (`Protein ID`) REFERENCES `Protein` (`Protein Name`);

--
-- Constraints for table `SNP`
--
ALTER TABLE `SNP`
  ADD CONSTRAINT `SNP_ibfk_1` FOREIGN KEY (`Gene ID`) REFERENCES `Gene` (`Gene ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
