-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 05:26 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabledepartment`
--

CREATE TABLE `tabledepartment` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL,
  `DepartmentHead` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabledepartment`
--

INSERT INTO `tabledepartment` (`DepartmentID`, `DepartmentName`, `DepartmentHead`) VALUES
(1, 'Administration', 1),
(2, 'Accounting', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tableemployee`
--

CREATE TABLE `tableemployee` (
  `EmpID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `SSN` int(9) NOT NULL,
  `DeptmentID` int(11) DEFAULT NULL,
  `HourlyPay` float NOT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(12) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tableemployee`
--

INSERT INTO `tableemployee` (`EmpID`, `FirstName`, `LastName`, `SSN`, `DeptmentID`, `HourlyPay`, `EmailAddress`, `PhoneNumber`) VALUES
(1, 'Bob', 'Uncle', 1234456789, 1, 8.5, 'bob@company.com', '12345678910'),
(2, 'Not', 'Bob', 234567890, 2, 8.5, 'notbob@company.com', '13456789101'),
(3, 'Jane', 'Doe', 987951357, 1, 9.5, 'jane@company.com', '13654789630'),
(4, 'Jill', 'Jack', 951357852, 1, 9.5, 'jill@company.com', '14567893698'),
(5, 'Jack', 'Frost', 546879213, 2, 10.8, 'jfrost@company.com', '16543691478'),
(6, 'Bubba', 'Louis', 537591456, 2, 10.5, 'bubba@company.com', '18643491258'),
(7, 'Bridgette', 'Burns', 379122558, 1, 22.5, 'bridgette@company.com', '15558887894');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabledepartment`
--
ALTER TABLE `tabledepartment`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `tableemployee`
--
ALTER TABLE `tableemployee`
  ADD PRIMARY KEY (`EmpID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabledepartment`
--
ALTER TABLE `tabledepartment`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tableemployee`
--
ALTER TABLE `tableemployee`
  MODIFY `EmpID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
