-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 12:12 AM
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
-- Table structure for table `lab_data_pemeriksaan`
--

CREATE TABLE `lab_data_pemeriksaan` (
  `id` int(11) NOT NULL,
  `no_test` double NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `id_provider` int(10) NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `tgl_periksa` date NOT NULL,
  `tgl_sampling` datetime DEFAULT NULL,
  `keluhan` text NOT NULL,
  `jenis_sample` varchar(50) NOT NULL,
  `jenis_pemeriksaan` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(30) NOT NULL,
  `hasil` varchar(30) NOT NULL,
  `update_hasil_at` datetime DEFAULT NULL,
  `update_hasil_by` varchar(30) NOT NULL,
  `masa_berlaku` int(10) NOT NULL DEFAULT 0,
  `masa_berlaku_opt` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `id_notes` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` int(1) NOT NULL DEFAULT 0,
  `deleted_at` date DEFAULT NULL,
  `deleted_by` varchar(40) NOT NULL,
  `cancel_remarks` text NOT NULL,
  `import_id` varchar(50) NOT NULL,
  `qr_check` int(1) NOT NULL DEFAULT 0,
  `qr_checkdate` datetime DEFAULT NULL,
  `src_check` varchar(100) NOT NULL,
  `admin_remarks` text NOT NULL,
  `biaya` double NOT NULL,
  `bayar` double NOT NULL,
  `metode_bayar` varchar(40) NOT NULL,
  `referensi_bayar` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_data_pemeriksaan`
--

INSERT INTO `lab_data_pemeriksaan` (`id`, `no_test`, `id_pasien`, `nama_pasien`, `id_provider`, `id_dokter`, `tgl_periksa`, `tgl_sampling`, `keluhan`, `jenis_sample`, `jenis_pemeriksaan`, `created_at`, `created_by`, `hasil`, `update_hasil_at`, `update_hasil_by`, `masa_berlaku`, `masa_berlaku_opt`, `status`, `id_notes`, `last_update`, `deleted`, `deleted_at`, `deleted_by`, `cancel_remarks`, `import_id`, `qr_check`, `qr_checkdate`, `src_check`, `admin_remarks`, `biaya`, `bayar`, `metode_bayar`, `referensi_bayar`) VALUES
(1, 1, 1, 'test', 1, 1, '2021-08-09', '2021-08-09 00:00:00', '', '1', 5, '2021-08-05 13:06:12', '', 'Negatif', '2021-08-09 15:24:00', '', 1, 'day', 'SELESAI', '18', '2021-08-08 23:13:06', 0, NULL, '', '', '', 0, NULL, '', '', 100000, 100000, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_data_pemeriksaan`
--
ALTER TABLE `lab_data_pemeriksaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_test` (`no_test`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_provider` (`id_provider`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `tgl_periksa` (`tgl_periksa`),
  ADD KEY `jenis_sample` (`jenis_sample`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `jenis_pemeriksaan` (`jenis_pemeriksaan`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `hasil` (`hasil`),
  ADD KEY `update_hasil_at` (`update_hasil_at`),
  ADD KEY `status` (`status`),
  ADD KEY `id_notes` (`id_notes`),
  ADD KEY `masa_berlaku` (`masa_berlaku`),
  ADD KEY `masa_berlaku_opt` (`masa_berlaku_opt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_data_pemeriksaan`
--
ALTER TABLE `lab_data_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
