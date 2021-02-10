-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 10, 2021 at 11:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myDb`
--

-- --------------------------------------------------------

--
-- Table structure for table `Space`
--

CREATE TABLE `Space` (
  `idSpace` int(11) NOT NULL,
  `Space` float DEFAULT NULL,
  `time` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Space`
--

INSERT INTO `Space` (`idSpace`, `Space`, `time`) VALUES
(1, 0, 0),
(2, 10, 1),
(3, 20, 2),
(4, 30, 3),
(5, 40, 4),
(6, 50, 5),
(7, 60, 6),
(8, 70, 7),
(9, 80, 8),
(10, 90, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Speed`
--

CREATE TABLE `Speed` (
  `idSpeed` int(11) NOT NULL,
  `Speed` float DEFAULT NULL,
  `time` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Speed`
--

INSERT INTO `Speed` (`idSpeed`, `Speed`, `time`) VALUES
(1, 0, 0),
(2, 1, 1),
(3, 2, 2),
(4, 3, 3),
(5, 4, 4),
(6, 5, 5),
(7, 6, 6),
(8, 7, 7),
(9, 8, 8),
(10, 9, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Space`
--
ALTER TABLE `Space`
  ADD PRIMARY KEY (`idSpace`);

--
-- Indexes for table `Speed`
--
ALTER TABLE `Speed`
  ADD PRIMARY KEY (`idSpeed`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
