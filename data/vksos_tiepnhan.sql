-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2018 at 09:23 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluearc`
--

-- --------------------------------------------------------

--
-- Table structure for table `vksos_tiepnhan`
--

CREATE TABLE `vksos_tiepnhan` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Sex` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Job` varchar(100) NOT NULL,
  `Service` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Note` text NOT NULL,
  `Status` int(11) NOT NULL,
  `IdBV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vksos_tiepnhan`
--

INSERT INTO `vksos_tiepnhan` (`Id`, `FullName`, `Phone`, `Email`, `Sex`, `Birthday`, `Job`, `Service`, `Address`, `Note`, `Status`, `IdBV`) VALUES
(1, 'nguyen nguyen 1', '0122', 'Emial', 2, '2018-01-04', '', 3, 'a', 'asdas2', 1, 0),
(2, '', '', '', 0, '0000-00-00', '', 0, '', '', 0, 0),
(3, '', '', '', 0, '0000-00-00', '', 0, '', '', 0, 0),
(4, '', '', '', 0, '0000-00-00', '', 0, '', '', 0, 0),
(5, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0),
(6, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0),
(7, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vksos_tiepnhan`
--
ALTER TABLE `vksos_tiepnhan`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vksos_tiepnhan`
--
ALTER TABLE `vksos_tiepnhan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
