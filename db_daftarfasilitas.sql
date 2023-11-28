-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 10:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_daftarfasilitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `info_fasilitas`
--

CREATE TABLE `info_fasilitas` (
  `No` int(11) NOT NULL,
  `Fasilitas` varchar(100) NOT NULL,
  `Jumlah` int(100) NOT NULL,
  `Status` enum('Baik','Rusak') NOT NULL,
  `Asrama` varchar(50) NOT NULL,
  `Nomor_Kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_fasilitas`
--

INSERT INTO `info_fasilitas` (`No`, `Fasilitas`, `Jumlah`, `Status`, `Asrama`, `Nomor_Kamar`) VALUES
(1, 'meja', 2, 'Rusak', 'Jasmine', 302),
(4, 'meja', 2, 'Baik', 'Edel', 302),
(5, 'lemari', 4, 'Baik', 'jasmine', 102),
(6, 'lemari', 4, 'Baik', 'edel', 104);

-- --------------------------------------------------------

--
-- Table structure for table `table_asrama`
--

CREATE TABLE `table_asrama` (
  `id_asrama` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `NIM` varchar(16) NOT NULL,
  `NoTelpon` varchar(13) NOT NULL,
  `NoTelponOrangtua` varchar(13) NOT NULL,
  `Kamar` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_asrama`
--

INSERT INTO `table_asrama` (`id_asrama`, `Nama`, `NIM`, `NoTelpon`, `NoTelponOrangtua`, `Kamar`) VALUES
(1, 'Grace', '123456789', '987654123', '2345678', 102),
(3, 'gwen agista', '9876543', '821567843', '8212222', 403);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info_fasilitas`
--
ALTER TABLE `info_fasilitas`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `table_asrama`
--
ALTER TABLE `table_asrama`
  ADD PRIMARY KEY (`id_asrama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info_fasilitas`
--
ALTER TABLE `info_fasilitas`
  MODIFY `No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_asrama`
--
ALTER TABLE `table_asrama`
  MODIFY `id_asrama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
