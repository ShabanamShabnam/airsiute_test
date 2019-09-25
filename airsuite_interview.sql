-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 05:39 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airsuite`
--

-- --------------------------------------------------------

--
-- Table structure for table `airsuite_interview`
--

DROP TABLE IF EXISTS `airsuite_interview`;
CREATE TABLE `airsuite_interview` (
  `Id` int(11) NOT NULL,
  `ValueKey` varchar(6) NOT NULL,
  `ValueData` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airsuite_interview`
--

INSERT INTO `airsuite_interview` (`Id`, `ValueKey`, `ValueData`) VALUES
(1, 'FIRSTK', NULL),
(2, 'SECOND', 'This is the second entry'),
(3, 'THIRDK', 'THIS is THE third ENTRY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airsuite_interview`
--
ALTER TABLE `airsuite_interview`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airsuite_interview`
--
ALTER TABLE `airsuite_interview`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
