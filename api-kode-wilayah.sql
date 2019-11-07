-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 07, 2019 at 08:36 AM
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
(2, 1, 23652, 'Alue Batee'),
(3, 1, 23652, 'Alue Sundak'),
(4, 1, 23652, 'Arongan'),
(5, 1, 23652, 'Cot Buloh'),
(6, 1, 23652, 'Cot Juru Mudi (Cot Jurumudi)'),
(7, 1, 23652, 'Cot Kumbang'),
(8, 1, 23652, 'Drien Rampak'),
(9, 1, 23652, 'Gunong Pulo'),
(10, 1, 23652, 'Karang Hampa'),
(11, 1, 23652, 'Keub'),
(12, 1, 23652, 'Kubu'),
(13, 1, 23652, 'Pante Mutia (Pante Meutia)'),
(14, 1, 23652, 'Panton Bahagia'),
(15, 1, 23652, 'Panton Makmu (Panton Makmur)'),
(16, 1, 23652, 'Peribu (Peuribu)'),
(17, 1, 23652, 'Peulanteu LB'),
(18, 1, 23652, 'Rimba Langgeh'),
(19, 1, 23652, 'Seuneubok Lhong (Seuneubok Lueng)'),
(20, 1, 23652, 'Seuneubok Teungoh'),
(21, 1, 23652, 'Simpang Peut'),
(22, 1, 23652, 'Suak Bidok'),
(23, 1, 23652, 'Suak Ie Beuso (Suak Ie Beusou)'),
(24, 1, 23652, 'Suak Keumudee'),
(25, 1, 23652, 'Teupin Peraho (Teupin Peuraho)'),
(26, 1, 23652, 'Ujong Beusa'),
(27, 1, 23652, 'Ujong Simpang'),
(28, 2, 23651, 'Alue Bakong'),
(29, 2, 23651, 'Alue Lhok'),
(30, 2, 23651, 'Berawang (Beurawang)'),
(31, 2, 23651, 'Blang Sibeutong'),
(32, 2, 23651, 'Cot Keumuneng'),
(33, 2, 23651, 'Cot Lada'),
(34, 2, 23651, 'Gunong Panah	'),
(35, 2, 23651, 'Kuala Pling'),
(36, 2, 23651, 'Kuta Padang'),
(37, 2, 23651, 'Layung'),
(38, 2, 23651, 'Liceh'),
(39, 2, 23651, 'Peulanteu SP (Peulanteu Sp)'),
(40, 2, 23651, 'Rambong'),
(41, 2, 23651, 'Seumuleng'),
(42, 2, 23651, 'Seuneubok Trap'),
(43, 2, 23651, 'Suak Pangkat'),
(44, 2, 23651, 'Ulee Blang'),
(66, 3, 23611, 'Seuneugok (Seuneubok)'),
(67, 3, 23618, 'Blang Beurandang (Blang Berandang)'),
(68, 3, 23617, 'Drien Rampak'),
(69, 3, 23611, 'Gampa'),
(70, 3, 23611, 'Gampong Darat (Kampung Darat)'),
(71, 3, 23611, 'Kampung Belakang'),
(72, 3, 23614, 'Kuta Padang'),
(73, 3, 23618, 'Lapang'),
(74, 3, 23611, 'Leuhan'),
(75, 3, 23611, 'Padang Seurahet'),
(76, 3, 23612, 'Panggong'),
(77, 3, 23612, 'Pasar Aceh'),
(78, 3, 23611, 'Pasir (Kampung Pasir)'),
(79, 3, 23616, 'Rundeng'),
(80, 3, 23611, 'Suak Indrapuri (Suwak Indrapuri)'),
(81, 3, 23611, 'Suak Nie'),
(82, 3, 23611, 'Suak Raya'),
(83, 3, 23611, 'Suak Ribee'),
(84, 3, 23611, 'Suak Sigadeng'),
(85, 3, 23615, 'Ujong Baroh'),
(86, 3, 23613, 'Ujung Kalak'),
(87, 4, 23681, 'Alue Lhee'),
(88, 4, 23681, 'Alue Lhok'),
(89, 4, 23681, 'Alue On'),
(90, 4, 23681, 'Alue Peudeung'),
(91, 4, 23681, 'Alue Tampak'),
(92, 4, 23681, 'Babah Meulaboh'),
(93, 4, 23681, 'Beureugang'),
(94, 4, 23681, 'Blang Dalam'),
(95, 4, 23681, 'Blang Geunang'),
(96, 4, 23681, 'Butu Jaya (Batu Jaya)'),
(97, 4, 23681, 'Drien Caleue (Drien Calee)'),
(98, 4, 23681, 'Kampung Masjid (Mesjid)'),
(99, 4, 23681, 'Keude Aron'),
(100, 4, 23681, 'Keude Tanjong'),
(101, 4, 23681, 'Keuramat'),
(102, 4, 23681, 'Marek'),
(103, 4, 23681, 'Meunasah Ara'),
(104, 4, 23681, 'Meunasah Buloh'),
(105, 4, 23681, 'Meunasah Gantung'),
(106, 4, 23681, 'Meunasah Rambot'),
(107, 4, 23681, 'Meunasah Rayeuk'),
(108, 4, 23681, 'Meunuang Tanjong (Menuang Tanjong)'),
(109, 4, 23681, 'Muko'),
(110, 4, 23681, 'Padang Mancang'),
(111, 4, 23681, 'Padang Sikabu'),
(112, 4, 23681, 'Palimbungan'),
(113, 4, 23681, 'Pasi Ara'),
(114, 4, 23681, 'Pasi Jambu'),
(115, 4, 23681, 'Pasi Jeumpa'),
(116, 4, 23681, 'Pasi Kumbang'),
(117, 4, 23681, 'Pasi Meugat'),
(118, 4, 23681, 'Pasi Teungoh'),
(119, 4, 23681, 'Peunia'),
(120, 4, 23681, 'Pucok Pungkie'),
(121, 4, 23681, 'Pungkie'),
(122, 4, 23681, 'Putim'),
(123, 4, 23681, 'Puuk'),
(124, 4, 23681, 'Sawang Teubei (Sawang Teubee)'),
(125, 4, 23681, 'Simpang'),
(126, 4, 23681, 'Tanjong Bungong (Tanjong Bunga)'),
(127, 4, 23681, 'Tanjong Meulaboh'),
(128, 4, 23681, 'Teladan (Teuladan)'),
(129, 4, 23681, 'Teupin Panah'),
(130, 4, 23681, 'Tumpok Ladang'),
(131, 5, 23615, 'Bakit Jaya (Bukit Jaya)'),
(132, 5, 23615, 'Balee'),
(133, 5, 23615, 'Buloh'),
(134, 5, 23615, 'Gunong Kleng'),
(135, 5, 23615, 'Langung'),
(136, 5, 23615, 'Mesjid Tuha'),
(137, 5, 23615, 'Meureubo'),
(138, 5, 23615, 'Pasi Aceh Baroh'),
(139, 5, 23615, 'Pasi Aceh Tunong'),
(140, 5, 23615, 'Pasi Mesjid'),
(141, 5, 23615, 'Pasi Pinang'),
(142, 5, 23615, 'Paya Baro Ranto P (Paya Baro RP)'),
(143, 5, 23615, 'Paya Peunaga'),
(144, 5, 23615, 'Peunaga Cut Ujong'),
(145, 5, 23615, 'Peunaga Pasi'),
(146, 5, 23615, 'Peunaga Rayeuk'),
(147, 5, 23615, 'Pucok Reudeup'),
(148, 5, 23615, 'PuloTeungoh Ranto P. (Pulo Teungoh Ranto)'),
(149, 5, 23615, 'Ranto Panyang Barat'),
(150, 5, 23615, 'Ranto Panyang Timur'),
(151, 5, 23615, 'Ranub Dong'),
(152, 5, 23615, 'Reudeup'),
(153, 5, 23615, 'Sumber Batu'),
(154, 5, 23615, 'Ujong Drien'),
(155, 5, 23615, 'Ujong Tanjung (Ujong Tanjong)'),
(156, 5, 23615, 'Ujong Tanoh Darat'),
(157, 6, 23680, 'Alue Keumang'),
(158, 6, 23680, 'Babah Iseung'),
(159, 6, 23680, 'Babah Krueng Tep Lep (Babah Krueng Teklep)'),
(160, 6, 23680, 'Babah Leung (Babah Lueng)'),
(161, 6, 23680, 'Berdikari'),
(162, 6, 23680, 'Canggai'),
(163, 6, 23680, 'Gunong Tarok'),
(164, 6, 23680, 'Jambak'),
(165, 6, 23680, 'Keude Suak Awe (Keude Suwak Awe)'),
(166, 6, 23680, 'Keutambang'),
(167, 6, 23680, 'Kreung Beukah (Krueng Beukah)'),
(168, 6, 23680, 'Lango'),
(169, 6, 23680, 'Lawet'),
(170, 6, 23680, 'Lhok Guci'),
(171, 6, 23680, 'Lhok Sari'),
(172, 6, 23680, 'Manjeng'),
(173, 6, 23680, 'Meunuang Kinco (Menuang Kinco)'),
(174, 6, 23680, 'Pante Ceuremen (Pante Ceureumen / Pante Cermin)'),
(175, 6, 23680, 'Pulo Teungoh Manjeng (Pulo Teungoh Manyeng)'),
(176, 6, 23680, 'Sawang Rambot'),
(177, 6, 23680, 'Seumantok'),
(178, 6, 23680, 'Seumara'),
(179, 6, 23680, 'Sikundo'),
(180, 6, 23680, 'Suak Awe (Suwak Awe)'),
(181, 6, 23680, 'Tegal Sari'),
(182, 8, 23650, 'Alue Raya'),
(183, 8, 23650, 'Cot Amun'),
(184, 8, 23650, 'Cot Darat'),
(185, 8, 23650, 'Cot Lampise'),
(186, 8, 23650, 'Cot Masjid (Cot Mesjid)'),
(187, 8, 23650, 'Cot Pluh'),
(188, 8, 23650, 'Cot Seulamat'),
(189, 8, 23650, 'Cot Seumeurung (Cot Seumeureng)'),
(190, 8, 23650, 'Deuah'),
(191, 8, 23650, 'Gampong Cot'),
(192, 8, 23650, 'Gampong Ladang'),
(193, 8, 23650, 'Gampong Teungoh'),
(194, 8, 23650, 'Keureuseng'),
(195, 8, 23650, 'Krueng Tinggai'),
(196, 8, 23650, 'Kuala Bubon'),
(197, 8, 23650, 'Leubok (Lubok)'),
(198, 8, 23650, 'Leuken (Leukeun)'),
(199, 8, 23650, 'Lhok Bubon'),
(200, 8, 23650, 'Mesjid Baro'),
(201, 8, 23650, 'Pange'),
(202, 8, 23650, 'Paya Lumpat'),
(203, 8, 23650, 'Pinem'),
(204, 8, 23650, 'Pucok Lueng'),
(205, 8, 23650, 'Rangkileh'),
(206, 8, 23650, 'Reusak'),
(207, 8, 23650, 'Suak Geudeubang (Suak Geudubang)'),
(208, 8, 23650, 'Suak Pandan'),
(209, 8, 23650, 'Suak Pante Breh (Suak Pante Breuh)'),
(210, 8, 23650, 'Suak Seuke (Suak Seukee)'),
(211, 8, 23650, 'Suak Seumaseh'),
(212, 8, 23650, 'Suak Timah'),
(213, 8, 23650, 'Ujong Nga'),
(214, 9, 23685, 'Drien Sibak'),
(215, 9, 23685, 'Gaseu'),
(216, 9, 23685, 'Geudong'),
(217, 9, 23685, 'Gleng (Gleung)'),
(218, 9, 23685, 'Gunong Buloh'),
(219, 9, 23685, 'Kajeung'),
(220, 9, 23685, 'Lancong'),
(221, 9, 23685, 'Lubok Beutong (Leubok Beutong)'),
(222, 9, 23685, 'Lueng Baro'),
(223, 9, 23685, 'Pungki (Pungkie)'),
(224, 9, 23685, 'Ramitie'),
(225, 9, 23685, 'Sakuy'),
(226, 9, 23685, 'Sarah Perlak'),
(227, 9, 23685, 'Sipot'),
(228, 9, 23685, 'Tanoh Mirah'),
(229, 9, 23685, 'ungkop'),
(230, 9, 23685, 'Tutut	'),
(231, 9, 23685, 'Tuwi Saya');

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
(69, 23617),
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
  MODIFY `kelurahan_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `kode_pos`
--
ALTER TABLE `kode_pos`
  MODIFY `kode_pos_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

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
