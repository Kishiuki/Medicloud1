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
-- Table structure for table `lab_jenis_sampling`
--

CREATE TABLE `lab_jenis_sampling` (
  `id` int(11) NOT NULL,
  `nama_sampling` varchar(50) NOT NULL,
  `nama_sampling_en` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_jenis_sampling`
--

INSERT INTO `lab_jenis_sampling` (`id`, `nama_sampling`, `nama_sampling_en`, `created_at`, `created_by`) VALUES
(1, 'Nasofaring', 'Nasopharynx', '0000-00-00 00:00:00', ''),
(3, 'Nasofaring dan Orofaring', 'Nasopharynx and Oropharynx', '2021-01-06 12:47:46', ''),
(4, 'Darah Perifer', 'Peripheral Blood ', '2021-01-06 12:48:04', ''),
(5, 'Air Liur', 'Saliva', '2021-03-01 13:30:26', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_jenis_sampling`
--
ALTER TABLE `lab_jenis_sampling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_sampling` (`nama_sampling`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `nama_sampling_en` (`nama_sampling_en`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_jenis_sampling`
--
ALTER TABLE `lab_jenis_sampling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
