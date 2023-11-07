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
-- Table structure for table `lab_data_notes`
--

CREATE TABLE `lab_data_notes` (
  `id` int(11) NOT NULL,
  `note_group` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  `english` text NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_data_notes`
--

INSERT INTO `lab_data_notes` (`id`, `note_group`, `notes`, `english`, `created_by`, `created_at`) VALUES
(15, '', 'Dianjurkan untuk melakukan pemeriksaan lebih lanjut dengan swab test PCR.', 'It is advisable to carry out further examination with a PCR swab test.', '', '2021-01-07 14:27:15'),
(17, '', 'Dianjurkan untuk melakukan pemeriksaan ulang 3 hari kemudian.', 'It is advisable to do a re-examination 3 days later.', '', '2021-01-07 14:27:49'),
(18, '', 'Pemeriksaan ulang sebaiknya berdasarkan rekomendasi Dokter.', 'Re-examination should be based on the doctor\'s recommendation.', '', '2021-01-07 18:00:41'),
(7, '', 'Disarankan melakukan Swab test PCR ulang tiga hari kemudian', 'It is recommended to do another PCR Swab test three days later', '', '2021-01-06 12:55:44'),
(14, '', 'Hasil PCR negatif tidak selalu berarti pasien tidak terinfeksi oleh pathogen, namun hanya menunjukan bahwa material genetic pathogen tidak ditemukan dalam sample.', 'A negative PCR result does not necessarily mean that the patient is not infected with the pathogen, but only indicates that pathogenic genetic material is not present in the sample.', '', '2021-01-07 14:26:42'),
(16, '', 'Dianjurkan untuk melakukan isolasi mandiri', 'Self-isolation is advisable', '', '2021-01-07 14:27:34'),
(13, '', 'Hasil ini menggambarkan kondisi pada saat specimen diambil, jika muncul gejala klinis atau kontak dengan pasien terkonfirmasi setelah pemeriksaan dapat menghubungi  Dokter/ Faskes terdekat.', 'These results describe the condition at the time the specimen was collected, if clinical symptoms appear or if contact with a confirmed patient after the examination, you can contact the nearest doctor / health facility.', '', '2021-01-07 14:26:18'),
(19, '', 'Hasil PCR ini tidak dapat dibandingkan antar satu laboratorium dengan laboratorium yang lain.', 'The PCR results cannot be compared from one laboratory to another.', '', '2021-06-25 14:22:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lab_data_notes`
--
ALTER TABLE `lab_data_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `note_group` (`note_group`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_at` (`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_data_notes`
--
ALTER TABLE `lab_data_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
