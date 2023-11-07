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
-- Table structure for table `lab_data_provider`
--

CREATE TABLE `lab_data_provider` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL,
  `penanggung_jawab` varchar(50) NOT NULL,
  `provider_group` varchar(15) NOT NULL DEFAULT 'cabang',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_data_provider`
--

INSERT INTO `lab_data_provider` (`id`, `nama`, `alamat`, `telp`, `penanggung_jawab`, `provider_group`, `created_at`, `created_by`) VALUES
(1, 'dr. Gusna Ridha', '', '', '', 'pusat', '2021-01-03 21:09:26', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_data_provider`
--
ALTER TABLE `lab_data_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `telp` (`telp`),
  ADD KEY `penanggung_jawab` (`penanggung_jawab`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_data_provider`
--
ALTER TABLE `lab_data_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
