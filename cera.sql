-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 06:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cera`
--

-- --------------------------------------------------------

--
-- Table structure for table `regdoctors`
--

CREATE TABLE `regdoctors` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reginstitutions`
--

CREATE TABLE `reginstitutions` (
  `id` int(11) NOT NULL,
  `institutionName` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `emailAddress` varchar(100) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `illnesses` varchar(200) NOT NULL,
  `postalAddress` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `regpatients`
--

CREATE TABLE `regpatients` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `institution` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `illness` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phoneNumber` int(14) NOT NULL,
  `profilePhoto` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regpatients`
--

INSERT INTO `regpatients` (`id`, `firstName`, `lastName`, `emailAddress`, `institution`, `password`, `illness`, `address`, `age`, `gender`, `phoneNumber`, `profilePhoto`) VALUES
(3, '1', '1', '1@mail.com', 'Institution A', '123', 'Condition A', '123', 23, 'Prefer not', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `regdoctors`
--
ALTER TABLE `regdoctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reginstitutions`
--
ALTER TABLE `reginstitutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regpatients`
--
ALTER TABLE `regpatients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD UNIQUE KEY `emailAddress` (`emailAddress`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `regdoctors`
--
ALTER TABLE `regdoctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reginstitutions`
--
ALTER TABLE `reginstitutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regpatients`
--
ALTER TABLE `regpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
