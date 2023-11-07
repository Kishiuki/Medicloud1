-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 05:32 AM
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
-- Table structure for table `lab_data_pasien`
--

CREATE TABLE `lab_data_pasien` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `no_anggota` double NOT NULL,
  `kode_inisial` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(64) NOT NULL,
  `provider_id` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(30) NOT NULL,
  `self_register` int(1) NOT NULL DEFAULT 0,
  `verified` int(1) NOT NULL DEFAULT 0,
  `reg_pemeriksaan` varchar(40) NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` varchar(30) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `deleted_at` date NOT NULL,
  `deleted_by` varchar(40) NOT NULL,
  `import_id` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(50) NOT NULL DEFAULT 'INDONESIA'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_data_pasien`
--
ALTER TABLE `lab_data_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama_lengkap` (`nama_lengkap`),
  ADD KEY `nik` (`nik`),
  ADD KEY `kode_inisial` (`kode_inisial`),
  ADD KEY `jenis_kelamin` (`jenis_kelamin`),
  ADD KEY `tempat_lahir` (`tempat_lahir`,`tgl_lahir`),
  ADD KEY `hp` (`hp`,`email`),
  ADD KEY `passwd` (`passwd`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `created_at` (`created_at`,`created_by`),
  ADD KEY `self_register` (`self_register`,`verified`,`verified_at`,`verified_by`),
  ADD KEY `reg_pemeriksaan` (`reg_pemeriksaan`),
  ADD KEY `import_id` (`import_id`),
  ADD KEY `kewarganegaraan` (`kewarganegaraan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_data_pasien`
--
ALTER TABLE `lab_data_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
