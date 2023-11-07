-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 05:44 AM
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
-- Table structure for table `c_registered_clinics`
--

CREATE TABLE `c_registered_clinics` (
  `rc_id` int(11) NOT NULL,
  `clinic_code` varchar(30) NOT NULL,
  `clinic_name` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `reg_date` datetime NOT NULL DEFAULT current_timestamp(),
  `reg_by` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COMMENT='data klinik yang terdaftar. added 2021-09-20';

--
-- Dumping data for table `c_registered_clinics`
--

INSERT INTO `c_registered_clinics` (`rc_id`, `clinic_code`, `clinic_name`, `logo`, `is_active`, `reg_date`, `reg_by`, `timestamp`) VALUES
(1, 'demo', 'Demo Klinik', '/assets/img/clinics/inara_logo.png', 1, '2021-09-26 18:01:51', 'system', '2021-09-27 05:43:59'),
(2, 'inara2021', 'Klinik Inara', '/assets/img/clinics/inara_logo.png', 1, '2021-09-26 18:01:51', 'system', '2021-09-27 05:42:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_registered_clinics`
--
ALTER TABLE `c_registered_clinics`
  ADD PRIMARY KEY (`rc_id`),
  ADD KEY `clinic_name` (`clinic_name`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `reg_date` (`reg_date`),
  ADD KEY `reg_by` (`reg_by`),
  ADD KEY `clinic_code` (`clinic_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_registered_clinics`
--
ALTER TABLE `c_registered_clinics`
  MODIFY `rc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
