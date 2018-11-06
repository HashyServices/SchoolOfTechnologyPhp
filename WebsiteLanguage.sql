-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2018 at 05:12 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.0.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebsiteLanguage`
--

-- --------------------------------------------------------

--
-- Table structure for table `All Types Of Adds`
--

CREATE TABLE `All Types Of Adds` (
  `AdId` varchar(20) NOT NULL,
  `Descr` text,
  `Image` int(20) DEFAULT NULL,
  `CategoryId` int(20) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `RegisterDate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `CategoryId` int(20) NOT NULL,
  `CategoryDesc` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Members`
--

CREATE TABLE `Members` (
  `idName` int(20) NOT NULL,
  `Adress` int(20) NOT NULL,
  `PhoneNumber` int(20) NOT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `MemberType` varchar(20) NOT NULL,
  `RegisterDate` date NOT NULL,
  `ExpireDate` date NOT NULL,
  `CategoryId` int(20) NOT NULL,
  `AddId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `AdId` int(20) NOT NULL,
  `PaymentId` int(20) DEFAULT NULL,
  `Total#OfImage` int(20) DEFAULT NULL,
  `TotalPayment` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Payment Ads`
--

CREATE TABLE `Payment Ads` (
  `AddId` int(20) NOT NULL,
  `Image` int(20) DEFAULT NULL,
  `OrderAdd` varchar(20) DEFAULT NULL,
  `RegisterDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Product Categories`
--

CREATE TABLE `Product Categories` (
  `CategoryId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `All Types Of Adds`
--
ALTER TABLE `All Types Of Adds`
  ADD PRIMARY KEY (`AdId`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `Members`
--
ALTER TABLE `Members`
  ADD PRIMARY KEY (`idName`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`AdId`);

--
-- Indexes for table `Payment Ads`
--
ALTER TABLE `Payment Ads`
  ADD PRIMARY KEY (`AddId`);

--
-- Indexes for table `Product Categories`
--
ALTER TABLE `Product Categories`
  ADD PRIMARY KEY (`CategoryId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
