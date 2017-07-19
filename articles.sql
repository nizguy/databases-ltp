-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 05:27 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `articles`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablearticle`
--

CREATE TABLE `tablearticle` (
  `ArticleID` int(11) NOT NULL,
  `ArticleTitle` varchar(255) NOT NULL,
  `Article Date` date NOT NULL,
  `Topic` varchar(255) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `ShortDescription` text NOT NULL,
  `Keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablearticle`
--

INSERT INTO `tablearticle` (`ArticleID`, `ArticleTitle`, `Article Date`, `Topic`, `AuthorID`, `ShortDescription`, `Keywords`) VALUES
(1, 'Getting Started With Databases', '2017-07-02', 'Databases,mysql', 1, 'Learn about databases using Mysql.', 'databvases,mysql'),
(2, 'This CSS', '2017-07-03', 'CSS Web Design', 1, 'Learn CSS and learn how to really design for the web', ''),
(3, 'Learning HTML5', '2017-07-11', 'HTML5', 2, 'Learn HTML5 and create your own web pages.', 'HTML5, web dev');

-- --------------------------------------------------------

--
-- Table structure for table `tableauthor`
--

CREATE TABLE `tableauthor` (
  `AuthorID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `PhoneNumber` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tableauthor`
--

INSERT INTO `tableauthor` (`AuthorID`, `FirstName`, `LastName`, `EmailAddress`, `PhoneNumber`) VALUES
(1, 'Mark', 'B', 'mb@fake.com', '2122225555'),
(2, 'B', 'Mark', 'bm@anotherfake.com', '5552328888'),
(3, 'Fred', 'Fish', 'fs@fishfake.com', '3339996666'),
(4, 'Maryu', 'Johansson', 'maryu@johansson.com', '7533579512');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablearticle`
--
ALTER TABLE `tablearticle`
  ADD PRIMARY KEY (`ArticleID`);

--
-- Indexes for table `tableauthor`
--
ALTER TABLE `tableauthor`
  ADD PRIMARY KEY (`AuthorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tablearticle`
--
ALTER TABLE `tablearticle`
  MODIFY `ArticleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tableauthor`
--
ALTER TABLE `tableauthor`
  MODIFY `AuthorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
