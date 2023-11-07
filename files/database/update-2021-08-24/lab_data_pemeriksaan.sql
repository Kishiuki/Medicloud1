-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 11:36 PM
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
  `referensi_bayar` varchar(40) NOT NULL,
  `self_register` int(1) NOT NULL DEFAULT 0,
  `verified` int(1) NOT NULL DEFAULT 1,
  `verified_by` varchar(40) NOT NULL,
  `verified_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_data_pemeriksaan`
--

INSERT INTO `lab_data_pemeriksaan` (`id`, `no_test`, `id_pasien`, `nama_pasien`, `id_provider`, `id_dokter`, `tgl_periksa`, `tgl_sampling`, `keluhan`, `jenis_sample`, `jenis_pemeriksaan`, `created_at`, `created_by`, `hasil`, `update_hasil_at`, `update_hasil_by`, `masa_berlaku`, `masa_berlaku_opt`, `status`, `id_notes`, `last_update`, `deleted`, `deleted_at`, `deleted_by`, `cancel_remarks`, `import_id`, `qr_check`, `qr_checkdate`, `src_check`, `admin_remarks`, `biaya`, `bayar`, `metode_bayar`, `referensi_bayar`, `self_register`, `verified`, `verified_by`, `verified_date`) VALUES
(1, 1, 1, 'test', 1, 1, '2021-08-09', '2021-08-09 00:00:00', '', '1', 5, '2021-08-05 13:06:12', '', 'Negatif', '2021-08-09 15:24:00', '', 1, 'day', 'SELESAI', '18', '2021-08-08 23:13:06', 0, NULL, '', '', '', 0, NULL, '', '', 100000, 100000, '', '', 0, 1, '', NULL),
(2, 2, 1, 'Alif Perdana', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 5, '2021-08-09 13:31:26', '', '', NULL, '', 0, '', '', '', '2021-08-09 06:31:26', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(3, 3, 2, 'Alif Perdana', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 5, '2021-08-09 13:31:52', '', '', NULL, '', 0, '', '', '', '2021-08-09 06:31:52', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(4, 4, 3, 'Sri Julianifah', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 5, '2021-08-09 13:33:52', '', '', NULL, '', 0, '', '', '', '2021-08-09 06:33:52', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(5, 5, 4, 'Doni Saputra', 1, 2, '2021-08-09', '2021-08-02 00:00:00', '', '1', 5, '2021-08-09 13:37:27', '', 'Positif', '2021-08-09 13:42:00', '', 2, 'day', 'SELESAI', '15', '2021-08-09 06:43:01', 0, NULL, '', '', '', 0, NULL, '', '', 150000, 150000, '', '', 0, 1, '', NULL),
(6, 6, 5, 'Abdulloh', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 6, '2021-08-09 13:41:25', '', '', NULL, '', 0, '', '', '', '2021-08-09 06:41:25', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(7, 7, 6, 'Astuti', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 6, '2021-08-09 13:56:59', '', '', NULL, '', 0, '', '', '', '2021-08-09 06:56:59', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(8, 8, 7, 'doni', 0, 0, '2021-08-09', '2021-08-02 00:00:00', '', '', 5, '2021-08-09 13:59:57', '', '', NULL, '', 0, '', '', '', '2021-08-09 06:59:57', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(9, 9, 8, 'doni', 0, 0, '2021-08-09', '2021-08-02 00:00:00', '', '', 5, '2021-08-09 14:00:13', '', '', NULL, '', 0, '', '', '', '2021-08-09 07:00:13', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(10, 10, 9, 'Dini Asmira', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 5, '2021-08-09 14:07:46', '', '', NULL, '', 0, '', '', '', '2021-08-09 07:07:46', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(11, 11, 10, 'TESS', 0, 0, '2021-08-09', '2021-08-09 00:00:00', '', '', 5, '2021-08-09 14:22:23', '', '', NULL, '', 0, '', '', '', '2021-08-09 07:22:23', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(12, 12, 11, 'Sarah Asri', 1, 4, '2021-08-09', '2021-08-09 00:00:00', '', '1', 5, '2021-08-09 14:30:13', '', 'Positif', '2021-08-09 14:32:00', '', 3, 'day', 'SELESAI', '17', '2021-08-09 07:32:50', 0, NULL, '', '', '', 0, NULL, '', '', 150000, 150000, '', '', 0, 1, '', NULL),
(13, 13, 12, 'Arianto', 1, 2, '2021-08-09', '2021-08-09 00:00:00', '', '1', 5, '2021-08-09 14:38:48', '', 'Positif', '2021-08-09 14:39:00', '', 2, 'day', 'SELESAI', '16,15', '2021-08-09 07:39:55', 0, NULL, '', '', '', 0, NULL, '', '', 150000, 150000, '', '', 0, 1, '', NULL),
(14, 14, 12, 'Arianto', 1, 1, '2021-08-15', '2021-08-15 12:00:00', '', '3', 5, '2021-08-15 11:58:30', '', 'Negatif', '2021-08-15 11:58:00', '', 2, 'day', 'SELESAI', '15,18,7', '2021-08-15 05:05:24', 0, NULL, '', '', '', 0, NULL, '', '', 150000, 150000, '', '', 0, 1, '', NULL),
(15, 15, 13, 'Agustian', 1, 1, '2021-08-16', '2021-08-16 00:00:00', '', '6', 8, '2021-08-16 08:40:19', '', 'Positif', '2021-08-16 09:21:00', '', 2, 'day', 'SELESAI', '15', '2021-08-16 02:21:11', 0, NULL, '', '', '', 0, NULL, '', '', 0, 300000, '', '', 0, 1, '', NULL),
(16, 16, 14, 'Gina', 1, 6, '2021-08-16', '2021-08-16 00:00:00', '', '5', 5, '2021-08-16 09:12:44', '', 'Positif', '2021-08-16 09:18:00', '', 2, 'day', 'SELESAI', '15', '2021-08-16 02:18:40', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(17, 17, 14, 'Gina', 1, 2, '2021-08-19', '2021-08-19 10:00:00', '', '1', 5, '2021-08-19 11:13:26', '', 'Negatif', '2021-08-19 11:13:00', '', 1, 'day', 'SELESAI', '15', '2021-08-19 08:39:54', 0, NULL, '', '', '', 0, NULL, '', '', 250000, 250000, '', '', 0, 1, '', NULL),
(18, 18, 15, 'Sintia', 1, 2, '2021-08-19', '2021-08-19 00:00:00', '', '5', 6, '2021-08-19 15:37:12', '', 'Non Reaktif', '2021-08-19 15:38:00', '', 1, 'day', 'SELESAI', '18', '2021-08-19 08:39:40', 0, NULL, '', '', '', 0, NULL, '', '', 100000, 100000, '', '', 0, 1, '', NULL),
(19, 19, 16, 'Abdi Maulana', 1, 6, '2021-08-19', '2021-08-19 00:00:00', '', '1', 5, '2021-08-19 15:45:26', '', 'Positif', '2021-08-19 15:46:00', '', 2, 'day', 'SELESAI', '15', '2021-08-19 08:48:08', 0, NULL, '', '', '', 0, NULL, '', '', 250000, 250000, '', '', 0, 1, '', NULL),
(20, 20, 17, 'Rini Hasibuan', 1, 0, '2021-08-20', '2021-08-20 00:00:00', '', '', 8, '2021-08-20 08:48:38', '', '', NULL, '', 0, '', '', '', '2021-08-20 01:48:38', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 0, 1, '', NULL),
(21, 21, 18, 'test cbd', 1, 1, '2021-08-23', '2021-08-23 08:00:00', '', '1', 5, '2021-08-23 13:49:43', '', 'Negatif', '2021-08-23 14:23:00', '', 1, 'day', 'SELESAI', '15', '2021-08-23 07:23:07', 0, NULL, '', '', '', 0, NULL, '', '', 250000, 0, '', '', 1, 1, '', NULL),
(22, 22, 18, 'test cbd', 1, 0, '2021-07-20', '0000-00-00 00:00:00', '', '', 5, '2021-08-23 13:51:59', '', '', NULL, '', 0, '', '', '', '2021-08-23 13:38:36', 0, NULL, '', '', '', 0, NULL, '', '', 0, 0, '', '', 1, 0, '', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
