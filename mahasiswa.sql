-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2020 at 01:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama`, `ket`) VALUES
(1, 'Teknologi Informasi', 'Teknologi Informasi, atau dalam bahasa Inggris dikenal dengan istilah Information technology adalah istilah umum untuk teknologi apa pun yang membantu manusia dalam membuat, mengubah, menyimpan, mengomunikasikan dan/atau menyebarkan informasi.'),
(2, 'Teknik Sipil', 'Teknik sipil adalah salah satu cabang ilmu teknik yang mempelajari tentang bagaimana merancang, membangun, merenovasi tidak hanya gedung dan infrastruktur, tetapi juga mencakup lingkungan untuk kemaslahatan hidup manusia.');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama`) VALUES
(1, 'Rekayasa Perangkat Lunak'),
(2, 'Teknik Komputer'),
(3, 'Manajemen Informatika'),
(4, 'Teknik Perancangan Irigasi dan Rawa'),
(5, 'Struktur Bangunan'),
(6, 'Manajemen Konstruksi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Id_Mahasiswa` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jalan` text NOT NULL,
  `Kelurahan` varchar(50) NOT NULL,
  `Kecamatan` varchar(50) NOT NULL,
  `Kabupaten` varchar(50) NOT NULL,
  `Provinsi` varchar(50) NOT NULL,
  `Id_Fakultas` int(11) NOT NULL,
  `Id_Jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Id_Mahasiswa`, `Nama`, `Jalan`, `Kelurahan`, `Kecamatan`, `Kabupaten`, `Provinsi`, `Id_Fakultas`, `Id_Jurusan`) VALUES
(1811082002, 'Afza Sorfina', 'Koto tengah', 'Semerap', 'Keliling Danau', 'Kerinci', 'Jambi', 1, 1),
(1811082003, 'Fina', 'Yos sudarso', 'Sungai penuh', 'Sungai penuh', 'Sungai penuh', 'Jambi', 2, 6),
(1811082004, 'Afza', 'Jln.H.Bakri simpang 4 STIT YPI', 'Dusun baru', 'Sungai penuh', 'Sungai penuh', 'Jambi', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `Id_Matkul` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`Id_Matkul`, `nama`) VALUES
(1, 'Manajemen Proyek'),
(2, 'Bahasa Inggris'),
(3, 'Metodelogi Penelitian'),
(4, 'Struktur Baja'),
(5, 'Gambar Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `Id_mahasiswa` int(11) NOT NULL,
  `Id_matkul` int(11) NOT NULL,
  `nilai` double NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`Id_mahasiswa`, `Id_matkul`, `nilai`, `semester`) VALUES
(1811082002, 1, 85, 1),
(1811082002, 2, 90, 1),
(1811082003, 5, 100, 1),
(1811082003, 6, 65, 1),
(1811082004, 1, 96, 1),
(1811082004, 2, 77, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`Id_Mahasiswa`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`Id_Matkul`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `Id_Mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1811082008;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `Id_Matkul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
