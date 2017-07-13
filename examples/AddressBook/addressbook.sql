SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; 
SET time_zone = "+00:00"; 
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; 
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; 
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; 
/*!40101 SET NAMES utf8mb4 */; 
 
-- 
-- Database: `addressBook` 
-- 
 
-- -------------------------------------------------------- 
 
-- 
-- Table structure for table `postcodes` 
-- 
 
CREATE TABLE `postcodes` ( 
  `postCodeID` int(11) NOT NULL, 
  `postCode` varchar(4) NOT NULL, 
  `suburb` varchar(20) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 
 
-- 
-- Dumping data for table `postcodes` 
-- 
 
INSERT INTO `postcodes` (`postCodeID`, `postCode`, `suburb`) VALUES 
(1, '4519', 'Beerwah'), 
(2, '4519', 'Landsborough'), 
(3, '4000', 'Brisbane'), 
(4, '2200', 'St Kilda'); 
 
-- -------------------------------------------------------- 
 
-- 
-- Table structure for table `tbladdressbook` 
-- 
 
CREATE TABLE `tbladdressbook` ( 
  `contactID` smallint(6) NOT NULL, 
  `firstName` varchar(50) NOT NULL, 
  `surname` varchar(50) NOT NULL, 
  `address` tinytext NOT NULL, 
  `suburb` varchar(20) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 
 
-- 
-- Dumping data for table `tbladdressbook` 
-- 
 
INSERT INTO `tbladdressbook` (`contactID`, `firstName`, `surname`, `address`, `suburb`) VALUES 
(2, 'Harold', 'Smith', '27 Smith St', 'Beerwah'), 
(4, 'Mark', 'Black', '2', 'Landsborough'), 
(5, 'Brown', 'Bruno', 'Keel St', 'St Kilda'), 
(8, 'Brown', 'Hilda', 'Keel St', 'St Kilda'), 
(9, 'Brannigan', 'Gerry', 'More St', 'Brisbane'), 
(10, 'Brannigan', 'Linda', 'More St', 'Brisbane'), 
(11, 'Bill', 'Gates', 'Microsoft', 'Beerwah'), 
(12, 'John', 'Black', '3 Orange St', 'Beerwah'), 
(13, 'Susan', 'Lee', '34 Holt St', 'Buderim'), 
(14, 'Jane', 'Doe', '7 Fleet St', 'Mountain Creek'), 
(15, 'Martin', 'King', '4 Stringy Bark Rd', 'Buderim'), 
(17, '  Nev', '  Grigor', '  3 Grigor Rd', 'Buderim'), 
(18, '  John', '  Wilkins', '  2 Will Road', 'Sippy Downs'), 
(19, 'Harold', 'Hobsen', '3 Black St', 'Mountain Creek'), 
(20, 'Greta', 'King', '2 King St', 'Buderim'), 
(21, 'greta', 'Grinder', '45 echo St', 'Sippy Downs'); 
 
-- 
-- Indexes for dumped tables 
-- 
 
-- 
-- Indexes for table `postcodes` 
-- 
ALTER TABLE `postcodes` 
  ADD PRIMARY KEY (`postCodeID`); 
 
-- 
-- Indexes for table `tbladdressbook` 
-- 
ALTER TABLE `tbladdressbook` 
  ADD PRIMARY KEY (`contactID`); 
 
-- 
-- AUTO_INCREMENT for dumped tables 
-- 
 
-- 
-- AUTO_INCREMENT for table `postcodes` 
-- 
ALTER TABLE `postcodes` 
  MODIFY `postCodeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5; 
-- 
-- AUTO_INCREMENT for table `tbladdressbook` 
-- 
ALTER TABLE `tbladdressbook` 
  MODIFY `contactID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22; 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; 
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; 