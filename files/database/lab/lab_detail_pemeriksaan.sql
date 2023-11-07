-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 05:33 AM
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
-- Table structure for table `lab_detail_pemeriksaan`
--

CREATE TABLE `lab_detail_pemeriksaan` (
  `id` int(11) NOT NULL,
  `id_pemeriksaan` int(10) NOT NULL,
  `nama_pemeriksaan` varchar(100) NOT NULL,
  `id_jenis` int(10) NOT NULL,
  `id_sampling` int(10) NOT NULL,
  `hasil` varchar(40) NOT NULL,
  `metode` varchar(40) NOT NULL,
  `nilai_rujukan` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_detail_pemeriksaan`
--
ALTER TABLE `lab_detail_pemeriksaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemeriksaan` (`id_pemeriksaan`),
  ADD KEY `nama_pemeriksaan` (`nama_pemeriksaan`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_sampling` (`id_sampling`),
  ADD KEY `hasil` (`hasil`),
  ADD KEY `metode` (`metode`),
  ADD KEY `nilai_rujukan` (`nilai_rujukan`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_detail_pemeriksaan`
--
ALTER TABLE `lab_detail_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
