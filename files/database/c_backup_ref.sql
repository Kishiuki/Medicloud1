-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 11:18 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctc_medicloud21`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_backup_ref`
--

CREATE TABLE `c_backup_ref` (
  `id` int(11) NOT NULL,
  `email_sender` varchar(50) NOT NULL,
  `pass_sender` text NOT NULL,
  `recipient` text NOT NULL,
  `duration_store` int(11) NOT NULL DEFAULT 2 COMMENT 'in day, save in internal directory',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_backup_ref`
--

INSERT INTO `c_backup_ref` (`id`, `email_sender`, `pass_sender`, `recipient`, `duration_store`, `timestamp`) VALUES
(1, 'bupsysctc@gmail.com', 'Q1RDIzIwMjEuLkJhY2t1cA==', 'yans.start@gmail.com,admin.bup@codewell.co.id', 2, '2021-10-08 11:17:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_backup_ref`
--
ALTER TABLE `c_backup_ref`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_sender` (`email_sender`),
  ADD KEY `duration_store` (`duration_store`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_backup_ref`
--
ALTER TABLE `c_backup_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
