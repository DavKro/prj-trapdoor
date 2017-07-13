-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2017 at 12:02 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TrapdoorIndustries`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblBank`
--

CREATE TABLE `tblBank` (
  `userID` int(4) NOT NULL,
  `accountID` varchar(16) NOT NULL,
  `BSB` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblBank`
--

INSERT INTO `tblBank` (`userID`, `accountID`, `BSB`) VALUES
(1, '7755048575648980', 610748),
(2, '1984445631986580', 308798),
(3, '6030290526054094', 30641);

-- --------------------------------------------------------

--
-- Table structure for table `tblPayslip`
--

CREATE TABLE `tblPayslip` (
  `payslipID` int(4) NOT NULL,
  `userID` int(4) NOT NULL,
  `uName` varchar(10) NOT NULL,
  `uRate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblShift`
--

CREATE TABLE `tblShift` (
  `shiftID` int(5) NOT NULL,
  `userID` int(4) NOT NULL,
  `shiftDate` date NOT NULL,
  `clockON` time NOT NULL,
  `clockOFF` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblShift`
--

INSERT INTO `tblShift` (`shiftID`, `userID`, `shiftDate`, `clockON`, `clockOFF`) VALUES
(12345, 1, '2017-06-16', '16:49:30', '16:49:30'),
(12346, 2, '2017-06-16', '16:54:19', '16:54:19'),
(12347, 3, '2017-06-16', '17:00:25', NULL),
(12348, 4, '2017-06-16', '17:56:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblUser`
--

CREATE TABLE `tblUser` (
  `userID` int(4) NOT NULL DEFAULT '1',
  `uPass` varchar(30) NOT NULL,
  `uType` tinyint(1) NOT NULL DEFAULT '0',
  `uName` varchar(27) NOT NULL,
  `uEmail` varchar(30) NOT NULL DEFAULT '',
  `uPhone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblUser`
--

INSERT INTO `tblUser` (`userID`, `uPass`, `uType`, `uName`, `uEmail`, `uPhone`) VALUES
(1, 'password123', 1, 'Dwight Schultz', 'dschultz@gmail.com', '0402600001'),
(2, 'password456', 0, 'Dirk Benedict', 'dbenedict@gmail.com', '0478151177'),
(3, 'alexnorth', 0, 'Mr T', 'therealmrt@gmail.com', '04941296');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblBank`
--
ALTER TABLE `tblBank`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tblPayslip`
--
ALTER TABLE `tblPayslip`
  ADD PRIMARY KEY (`payslipID`);

--
-- Indexes for table `tblShift`
--
ALTER TABLE `tblShift`
  ADD PRIMARY KEY (`shiftID`);

--
-- Indexes for table `tblUser`
--
ALTER TABLE `tblUser`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblShift`
--
ALTER TABLE `tblShift`
  MODIFY `shiftID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12349;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
