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
-- Table structure for table `lab_opsi_hasil`
--

CREATE TABLE `lab_opsi_hasil` (
  `id` int(11) NOT NULL,
  `jenis_id` int(10) NOT NULL,
  `group_hasil` varchar(30) NOT NULL,
  `nama_pemeriksaan` varchar(100) NOT NULL,
  `hasil` varchar(30) NOT NULL,
  `nilai_rujukan` varchar(30) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `is_main` int(1) NOT NULL DEFAULT 0,
  `created_by` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_opsi_hasil`
--

INSERT INTO `lab_opsi_hasil` (`id`, `jenis_id`, `group_hasil`, `nama_pemeriksaan`, `hasil`, `nilai_rujukan`, `metode`, `is_main`, `created_by`, `created_at`) VALUES
(8, 5, 'Negatif', 'Rapid Antigen Covid 19', 'Negatif', 'Negatif', '-', 1, '91705900', '2021-01-07 12:24:06'),
(9, 6, 'Reaktif', 'Rapid Antibody IgM/IgG Covid 19', 'Reaktif', 'Non Reaktif', '-', 1, '91705900', '2021-01-07 12:54:01'),
(10, 6, 'Non Reaktif', 'Rapid Antibody IgM/IgG Covid 19', 'Non Reaktif', 'Non Reaktif', '-', 1, '91705900', '2021-01-07 12:54:01'),
(19, 5, 'Positif', 'Rapid Antigen Covid 19', 'Negatif', 'Negatif', '-', 0, '91705900', '2021-01-07 12:24:06'),
(17, 8, 'Positif', 'Rapid Saliva Antigen Covid 19', 'Positif', 'Negatif', 'Saliva', 1, '91705900', '2021-03-01 13:27:18'),
(18, 8, 'Negatif', 'Rapid Saliva Antigen Covid 19', 'Negatif', 'Negatif', 'Saliva', 1, '91705900', '2021-03-01 13:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_opsi_hasil`
--
ALTER TABLE `lab_opsi_hasil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_id` (`jenis_id`),
  ADD KEY `group_hasil` (`group_hasil`),
  ADD KEY `nama_pemeriksaan` (`nama_pemeriksaan`),
  ADD KEY `hasil` (`hasil`),
  ADD KEY `nilai_rujukan` (`nilai_rujukan`),
  ADD KEY `metode` (`metode`),
  ADD KEY `is_main` (`is_main`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_at` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_opsi_hasil`
--
ALTER TABLE `lab_opsi_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
