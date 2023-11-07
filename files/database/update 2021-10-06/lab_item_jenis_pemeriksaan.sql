-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 03:14 AM
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
-- Table structure for table `lab_item_jenis_pemeriksaan`
--

CREATE TABLE `lab_item_jenis_pemeriksaan` (
  `sub_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL,
  `item` varchar(200) NOT NULL,
  `nilai_rujukan` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_item_jenis_pemeriksaan`
--
ALTER TABLE `lab_item_jenis_pemeriksaan`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `jenis_id` (`jenis_id`),
  ADD KEY `item` (`item`),
  ADD KEY `nilai_rujukan` (`nilai_rujukan`),
  ADD KEY `satuan` (`satuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_item_jenis_pemeriksaan`
--
ALTER TABLE `lab_item_jenis_pemeriksaan`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
