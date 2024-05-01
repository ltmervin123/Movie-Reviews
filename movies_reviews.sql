-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 02:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies_reviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `mID` int(3) NOT NULL,
  `Title` varchar(30) DEFAULT NULL,
  `Years` int(4) DEFAULT NULL,
  `Director` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`mID`, `Title`, `Years`, `Director`) VALUES
(101, 'Top Gun', 1986, 'Tony Scott'),
(102, 'Titanic', 1997, 'James Cameron'),
(103, 'The Lion King', 1994, 'Rob Minkoff'),
(104, 'Gravity', 2013, 'Alfonso Cuaron'),
(105, 'Harry Potter', 2001, NULL),
(106, 'Cast Away', 2000, 'Robert Zemeckis'),
(107, 'Spider Man', 2002, 'Sam Raimi'),
(108, 'The Godfather', 1972, 'Francis Coppola');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `uID` int(3) DEFAULT NULL,
  `mID` int(3) DEFAULT NULL,
  `Rating` int(1) DEFAULT NULL,
  `RatingDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`uID`, `mID`, `Rating`, `RatingDate`) VALUES
(201, 101, 2, '2014-03-09'),
(201, 101, 4, '2014-03-02'),
(202, 104, 4, NULL),
(203, 107, 2, '2014-03-24'),
(204, 103, 4, '2014-03-17'),
(204, 104, 2, '2014-03-13'),
(205, 108, 3, '2014-03-24'),
(206, 102, 3, '2014-03-02'),
(207, 104, 5, NULL),
(207, 106, 4, '2014-03-07'),
(208, 105, 2, '2013-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uID` int(3) NOT NULL,
  `Name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uID`, `Name`) VALUES
(201, 'James Dean'),
(202, 'Chris Anderson'),
(203, 'Ashley Burley'),
(204, 'Ralph Truman'),
(205, 'Gordon Maximus'),
(206, 'Sarah Rodriguez'),
(207, 'Darrel Sherman'),
(208, 'Lisa Jackson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`mID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
