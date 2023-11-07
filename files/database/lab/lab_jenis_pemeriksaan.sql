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
-- Table structure for table `lab_jenis_pemeriksaan`
--

CREATE TABLE `lab_jenis_pemeriksaan` (
  `id` int(11) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `nama_pemeriksaan` varchar(200) NOT NULL,
  `hasil` varchar(100) NOT NULL,
  `nilai_rujukan` varchar(20) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `main` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_jenis_pemeriksaan`
--

INSERT INTO `lab_jenis_pemeriksaan` (`id`, `jenis`, `nama_pemeriksaan`, `hasil`, `nilai_rujukan`, `metode`, `main`, `created_at`, `created_by`) VALUES
(5, 'Swab Tes Antigen', '', '', '', '-', 0, '2021-01-07 12:24:06', '36859187'),
(6, 'Rapid Antibody', '', '', '', '-', 0, '2021-01-07 12:54:01', '91705900'),
(8, 'Rapid Saliva Antigen Covid19', '', '', '', 'Saliva', 0, '2021-03-01 13:27:18', '91705900');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_jenis_pemeriksaan`
--
ALTER TABLE `lab_jenis_pemeriksaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis` (`jenis`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `created_by` (`created_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_jenis_pemeriksaan`
--
ALTER TABLE `lab_jenis_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
