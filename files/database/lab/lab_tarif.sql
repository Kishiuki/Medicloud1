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
-- Table structure for table `lab_tarif`
--

CREATE TABLE `lab_tarif` (
  `id` int(11) NOT NULL,
  `save_id` varchar(30) NOT NULL,
  `provider_id` int(10) NOT NULL,
  `jenis_id` int(10) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `nominal` double NOT NULL,
  `ongkir` double NOT NULL,
  `created_by` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `enabled` int(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_tarif`
--

INSERT INTO `lab_tarif` (`id`, `save_id`, `provider_id`, `jenis_id`, `start_date`, `end_date`, `nominal`, `ongkir`, `created_by`, `created_at`, `enabled`, `timestamp`) VALUES
(88, '844764374', 62, 7, '2021-07-14', '0000-00-00', 500000, 0, '91705900', '2021-07-14 09:21:01', 1, '2021-07-14 02:21:01'),
(89, '844764374', 62, 6, '2021-07-14', '0000-00-00', 0, 0, '91705900', '2021-07-14 09:21:01', 1, '2021-07-14 02:21:01'),
(91, '844764374', 62, 5, '2021-07-14', '0000-00-00', 0, 0, '91705900', '2021-07-14 09:21:01', 0, '2021-07-14 02:21:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_tarif`
--
ALTER TABLE `lab_tarif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `jenis_id` (`jenis_id`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `nominal` (`nominal`),
  ADD KEY `ongkir` (`ongkir`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `enabled` (`enabled`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `save_id` (`save_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_tarif`
--
ALTER TABLE `lab_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
