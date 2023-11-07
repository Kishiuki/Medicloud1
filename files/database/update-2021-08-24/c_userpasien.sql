-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 11:36 PM
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
-- Table structure for table `c_userpasien`
--

CREATE TABLE `c_userpasien` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `name` varchar(40) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='added 2021-08-22';

--
-- Dumping data for table `c_userpasien`
--

INSERT INTO `c_userpasien` (`id`, `email`, `passwd`, `name`, `hp`, `createdAt`, `enabled`) VALUES
(2, 'yans@gmail.com', '87d9bb400c0634691f0e3baaf1e2fd0d', 'YANS', '', '2021-08-22 21:36:32', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_userpasien`
--
ALTER TABLE `c_userpasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `passwd` (`passwd`),
  ADD KEY `name` (`name`),
  ADD KEY `createdAt` (`createdAt`),
  ADD KEY `enabled` (`enabled`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_userpasien`
--
ALTER TABLE `c_userpasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
