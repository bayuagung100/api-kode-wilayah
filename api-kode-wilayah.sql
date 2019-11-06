-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2019 at 10:50 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-kode-wilayah`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(255) NOT NULL,
  `provinsi_id` int(255) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `type` enum('Kabupaten','Kota') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `provinsi_id`, `city_name`, `type`) VALUES
(1, 1, 'Aceh Barat', 'Kabupaten'),
(2, 1, 'Aceh Barat Daya', 'Kabupaten'),
(3, 1, 'Aceh Besar', 'Kabupaten'),
(4, 1, 'Aceh Jaya', 'Kabupaten'),
(5, 1, 'Aceh Selatan', 'Kabupaten'),
(6, 1, 'Aceh Singkil', 'Kabupaten'),
(7, 1, 'Aceh Tamiang', 'Kabupaten'),
(8, 1, 'Aceh Tengah', 'Kabupaten'),
(9, 1, 'Aceh Tenggara', 'Kabupaten'),
(10, 1, 'Aceh Timur', 'Kabupaten'),
(11, 1, 'Aceh Utara', 'Kabupaten'),
(12, 1, 'Banda Aceh', 'Kota'),
(13, 1, 'Bener Meriah', 'Kabupaten'),
(14, 1, 'Bireuen', 'Kabupaten'),
(15, 1, 'Gayo Lues', 'Kabupaten'),
(16, 1, 'Langsa', 'Kota'),
(17, 1, 'Lhokseumawe', 'Kota'),
(18, 1, 'Nagan Raya', 'Kabupaten'),
(19, 1, 'Pidie', 'Kabupaten'),
(20, 1, 'Pidie Jaya', 'Kabupaten'),
(21, 1, 'Sabang', 'Kota'),
(22, 1, 'Simeulue', 'Kabupaten'),
(23, 1, 'Subulussalam', 'Kota');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kecamatan_id` int(255) NOT NULL,
  `city_id` int(255) NOT NULL,
  `kecamatan_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kecamatan_id`, `city_id`, `kecamatan_name`) VALUES
(1, 1, 'Arongan Lambalek'),
(2, 1, 'Bubon'),
(3, 1, 'Johan Pahwalan (Johan Pahlawan)'),
(4, 1, 'Kaway XVI'),
(5, 1, 'Meureubo'),
(6, 1, 'Pante Ceureumen (Pantai Ceuremen)'),
(7, 1, 'Panton Reu'),
(8, 1, 'Samatiga'),
(9, 1, 'Sungai Mas'),
(10, 1, 'Woyla'),
(11, 1, 'Woyla Barat'),
(12, 1, 'Woyla Timur');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `kelurahan_id` int(255) NOT NULL,
  `kecamatan_id` int(255) NOT NULL,
  `kode_pos` int(5) NOT NULL,
  `kelurahan_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`kelurahan_id`, `kecamatan_id`, `kode_pos`, `kelurahan_name`) VALUES
(1, 1, 23652, 'Alue Bagok'),
(2, 1, 23652, 'Alue Batee');

-- --------------------------------------------------------

--
-- Table structure for table `kode_pos`
--

CREATE TABLE `kode_pos` (
  `kode_pos_id` int(255) NOT NULL,
  `kode_pos` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kode_pos`
--

INSERT INTO `kode_pos` (`kode_pos_id`, `kode_pos`) VALUES
(34, 23350),
(64, 23351),
(33, 23352),
(57, 23353),
(61, 23354),
(58, 23355),
(32, 23360),
(68, 23361),
(62, 23362),
(36, 23363),
(38, 23364),
(53, 23365),
(54, 23370),
(37, 23371),
(55, 23372),
(31, 23373),
(35, 23374),
(67, 23375),
(63, 23381),
(65, 23391),
(12, 23611),
(13, 23612),
(14, 23613),
(15, 23614),
(4, 23615),
(20, 23616),
(21, 23618),
(7, 23650),
(2, 23651),
(1, 23652),
(9, 23654),
(5, 23680),
(3, 23681),
(10, 23682),
(11, 23683),
(6, 23684),
(8, 23685),
(27, 23760),
(26, 23762),
(28, 23763),
(23, 23764),
(29, 23765),
(25, 23766),
(22, 23767),
(30, 23768),
(24, 23769),
(40, 23911),
(47, 23912),
(52, 23913),
(46, 23915),
(39, 23917),
(43, 23918),
(42, 23919),
(66, 23951),
(56, 23952);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `provinsi_id` int(255) NOT NULL,
  `provinsi_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`provinsi_id`, `provinsi_name`) VALUES
(1, 'Aceh (NAD)'),
(2, 'Bali'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Bangka Belitung'),
(18, 'Kepulauan Riau'),
(19, 'Lampung'),
(20, 'Maluku'),
(21, 'Maluku Utara'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `provinsi_id` (`provinsi_id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kecamatan_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`kelurahan_id`),
  ADD KEY `kelurahan_ibfk_1` (`kecamatan_id`),
  ADD KEY `kode_pos_ibfk_1` (`kode_pos`);

--
-- Indexes for table `kode_pos`
--
ALTER TABLE `kode_pos`
  ADD PRIMARY KEY (`kode_pos_id`),
  ADD UNIQUE KEY `kode_pos` (`kode_pos`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `kecamatan_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `kelurahan_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kode_pos`
--
ALTER TABLE `kode_pos`
  MODIFY `kode_pos_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `provinsi_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`provinsi_id`);

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD CONSTRAINT `kelurahan_ibfk_1` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`kecamatan_id`),
  ADD CONSTRAINT `kode_pos_ibfk_1` FOREIGN KEY (`kode_pos`) REFERENCES `kode_pos` (`kode_pos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
