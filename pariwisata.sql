-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2025 at 11:57 AM
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
-- Database: `pariwisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_berita`
--

CREATE TABLE `data_berita` (
  `id` int(8) NOT NULL,
  `nama_penulis` char(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_berita`
--

INSERT INTO `data_berita` (`id`, `nama_penulis`, `judul`, `tanggal`, `isi`) VALUES
(1, 'Udin', 'UdinPool capybara shortage', '2024-11-07', 'Kami selaku staff udinpool perlu kapibara lebih'),
(2, 'Andin', 'Tongkat Masjid diambil orang', '2025-01-12', 'Umaa ae, tongkat masjid sebutingannya, sawat hja lagi dicuntan, klu pina jadi ular ngintu');

-- --------------------------------------------------------

--
-- Table structure for table `data_kategori`
--

CREATE TABLE `data_kategori` (
  `id` int(8) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_kategori`
--

INSERT INTO `data_kategori` (`id`, `nama_kategori`, `deskripsi`) VALUES
(1, 'Kehutanan', 'Pariwisata yang ada di hutan lah');

-- --------------------------------------------------------

--
-- Table structure for table `data_pariwisata`
--

CREATE TABLE `data_pariwisata` (
  `id` int(8) NOT NULL,
  `nama_pengirim` char(50) NOT NULL,
  `nama_pariwisata` varchar(100) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `isi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pariwisata`
--

INSERT INTO `data_pariwisata` (`id`, `nama_pengirim`, `nama_pariwisata`, `tanggal_pengajuan`, `isi`) VALUES
(1, 'Udin', 'UdinPool', '2024-11-07', 'Ini adalah pariwisata kolam renang kapibara walaupun gak ada kapibaranya'),
(2, 'Adun', 'Seluncuran Banyuwangi', '2025-01-12', 'Ini adalah seluncuran yang baru dibangun tahun ini');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengaduan`
--

CREATE TABLE `data_pengaduan` (
  `id` int(8) NOT NULL,
  `nama_pengadu` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `isi` varchar(500) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pengaduan`
--

INSERT INTO `data_pengaduan` (`id`, `nama_pengadu`, `email`, `isi`, `tanggal`) VALUES
(1, 'Udin', 'udin@gmail.com', 'Saya kecewa tidak ada kapibara', '2024-11-07'),
(2, 'Adin', 'Adin@gmail.com', 'Saya kecewa, nggak ada temen aja', '2025-01-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_berita`
--
ALTER TABLE `data_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kategori`
--
ALTER TABLE `data_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pariwisata`
--
ALTER TABLE `data_pariwisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pengaduan`
--
ALTER TABLE `data_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_berita`
--
ALTER TABLE `data_berita`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_kategori`
--
ALTER TABLE `data_kategori`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_pariwisata`
--
ALTER TABLE `data_pariwisata`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_pengaduan`
--
ALTER TABLE `data_pengaduan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
