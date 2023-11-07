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
-- Table structure for table `lab_settings`
--

CREATE TABLE `lab_settings` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `size` int(3) NOT NULL,
  `content` text NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `updated_by` varchar(30) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_settings`
--

INSERT INTO `lab_settings` (`id`, `code`, `title`, `size`, `content`, `width`, `height`, `updated_by`, `updated_at`) VALUES
(1, 'qrcontent-print', 'Isi QRCode hasil pemeriksaan (pdf)', 2, '- Dokumen original dikeluarkan Lab Klinik Yuliarpan Medika. Telp. 021-22105268\r\n- Laboratorium Klinik Yuliarpan Medika terdaftar sebagai Laboratorium Pemeriksa PCR Covid 19 di Kementerian Kesehatan Republik Indonesia', 0, 0, '', '2021-07-09 03:01:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_settings`
--
ALTER TABLE `lab_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `title` (`title`),
  ADD KEY `width` (`width`),
  ADD KEY `height` (`height`),
  ADD KEY `size` (`size`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_settings`
--
ALTER TABLE `lab_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
