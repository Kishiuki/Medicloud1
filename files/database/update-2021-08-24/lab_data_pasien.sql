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
  `kewarganegaraan` varchar(50) NOT NULL DEFAULT 'INDONESIA',
  `akun_id_pasien` int(6) NOT NULL DEFAULT 0 COMMENT 'related to c_userpasien',
  `reg_as` varchar(40) NOT NULL COMMENT 'sendiri,keluarga'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_data_pasien`
--

INSERT INTO `lab_data_pasien` (`id`, `nama_lengkap`, `nik`, `no_anggota`, `kode_inisial`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `hp`, `email`, `passwd`, `provider_id`, `created_at`, `created_by`, `self_register`, `verified`, `reg_pemeriksaan`, `verified_at`, `verified_by`, `deleted`, `deleted_at`, `deleted_by`, `import_id`, `kewarganegaraan`, `akun_id_pasien`, `reg_as`) VALUES
(1, 'Alif Perdana', '1212106771912810', 1, '', 'laki-laki', 'Medan', '1995-08-02', 'Jakarta Barat', '08128918191', 'alifperdana@gmail.com', '', 0, '2021-08-09 13:31:26', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(2, 'Alif Perdana', '121210677191275', 2, '', 'laki-laki', 'Medan', '1995-08-02', 'Jakarta Barat', '08128918191', 'alifperdana@gmail.com', '', 0, '2021-08-09 13:31:52', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(3, 'Sri Julianifah', '1212106207950001', 3, '', 'perempuan', 'Huta Batu', '1995-07-22', 'Griya Pratama Blok Cc 22 Batu Aji', '08126870560', 'anifah834@gmail.com', '', 0, '2021-08-09 13:33:52', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(4, 'Doni Saputra', '423423', 4, '', 'laki-laki', 'Batam', '1995-08-08', 'Batam', '5345345', 'doni@gmail.com', '', 1, '2021-08-09 13:37:27', '136793619', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'IDN', 0, ''),
(5, 'Abdulloh', '122344567890', 5, '', 'laki-laki', 'Bandung', '1987-08-09', 'Buana Central Park Blok M-02', '081728181917', 'abdul@gmail.com', '', 0, '2021-08-09 13:41:25', '35234607', 0, 1, '6', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(6, 'Astuti', '121745532537548', 6, '', 'perempuan', 'Deli Serdang', '1995-08-09', 'Batam', '0812191738191', 'astuti@gmail.com', '', 0, '2021-08-09 13:56:59', '35234607', 0, 1, '6', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(7, 'doni', '4345345', 7, '', 'laki-laki', 'Ngawi', '2013-08-07', 'ngawi', '3234', 'doni@gmail.com', '', 0, '2021-08-09 13:59:57', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'IDN', 0, ''),
(8, 'doni', '4345345999', 8, '', 'laki-laki', 'Ngawi', '2013-08-07', 'ngawi', '3234', 'doni@gmail.com', '', 0, '2021-08-09 14:00:13', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'IDN', 0, ''),
(9, 'Dini Asmira', '11231415623734', 9, '', 'perempuan', 'Huta Batu', '1999-08-09', 'Griya Pratama', '081628187671', 'dini12@gmailcom', '', 0, '2021-08-09 14:07:46', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(10, 'TESS', '131414', 10, '', 'laki-laki', 'BATAM', '2021-08-09', 'BATAM', '0821292922', '-', '', 0, '2021-08-09 14:22:23', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'WIN', 0, ''),
(11, 'Sarah Asri', '1162757642532', 11, '', 'perempuan', 'Batam', '1995-08-09', 'Batam', '0810771719', 'sarah@gmail.com', '', 1, '2021-08-09 14:30:13', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(12, 'Arianto', '15818312318', 12, '', 'laki-laki', 'Ranah Minang', '1996-08-02', 'Batam', '081928919123', 'ari@gmai.com', '', 1, '2021-08-09 14:38:48', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(13, 'Agustian', '13141525', 13, '', 'laki-laki', 'Batam', '1996-08-16', 'Jakarta', '0812831810218', 'agustin@gmail.com', '', 1, '2021-08-16 08:40:19', '35234607', 0, 1, '8', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(14, 'Gina', '121261368163152', 14, '', 'perempuan', 'Jakarta', '1997-08-16', 'Jakarta', '08125643127', 'gina@gmail.com', '', 1, '2021-08-16 09:12:44', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(15, 'Sintia', '131251516', 15, '', 'perempuan', 'Pariaman', '1995-08-19', 'Batam', '081237611182', 'sintia@gmail.com', '', 1, '2021-08-19 15:37:12', '35234607', 0, 1, '6', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(16, 'Abdi Maulana', '131415151515', 16, '', 'laki-laki', 'Medan', '1996-08-19', 'Batam', '081291913193', 'abdi@gmail.com', '', 1, '2021-08-19 15:45:26', '35234607', 0, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(17, 'Rini Hasibuan', '12131731320193109', 17, '', 'perempuan', 'Batang Toru', '1996-08-20', 'Griya Prima Blok Rindam blok C23', '08137892340', 'rini@upb.co.id', '', 1, '2021-08-20 08:48:38', '35234607', 0, 1, '8', NULL, '', 0, '0000-00-00', '', '', 'Indonesia', 0, ''),
(18, 'test cbd', '1231313131231', 18, '', 'perempuan', 'sjfdl', '2021-08-23', '123dsfsfs', '131038102830182', 'yans@gmail.com', '', 0, '2021-08-23 13:49:43', '', 1, 1, '5', NULL, '', 0, '0000-00-00', '', '', 'INDONESIA', 2, 'sendiri');

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
  ADD KEY `kewarganegaraan` (`kewarganegaraan`),
  ADD KEY `akun_id_pasien` (`akun_id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_data_pasien`
--
ALTER TABLE `lab_data_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
