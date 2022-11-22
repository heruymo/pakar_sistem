-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 03:42 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi_spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'kiyai', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` char(3) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `tingkat_kepercayaan` float NOT NULL,
  `jawaban_ya` char(3) DEFAULT NULL,
  `jawaban_tidak` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`, `tingkat_kepercayaan`, `jawaban_ya`, `jawaban_tidak`) VALUES
('G01', 'Daun berwarna hijau gelap', 0.4, '', 'G06'),
('G02', 'Permukaan daun menelungkup,layu dan gugur\r\n', 0.5, 'G01', 'G06'),
('G03', 'Akar terdapat benang putih\r\n', 0.5, 'G02', 'G06'),
('G04', 'akar membusuk, lunak dan berwarna coklat\r\n', 0.6, 'G03', 'G06'),
('G05', 'Mati mendadak seperti tersiram air panas pada musim hujan\r\n', 0.6, 'G04', 'G06'),
('G06', 'Adanya selaput putih pada bidang sadap\r\n', 0.4, '', 'G05'),
('G07', 'Lateks berwarna coklat\r\n', 0.5, 'G06', 'G06'),
('G08', 'Garis-garis pada biadang sadap berkembang\r\n', 0.5, 'G07', 'G06'),
('G09', 'Terdapat benjolan-benjolan\r\n', 0.5, 'G08', 'G06'),
('G10', 'Terdapat bercak-bercak hitam pada bidang sadap\r\n', 0.6, 'G09', 'G06'),
('G11', 'Bercak memanjang dan berbentuk elips.', 0.7, '', 'G77'),
('G12', 'Tanaman cepat mati atau mengering.', 0.8, 'G11', 'G77'),
('G13', 'Bercak berbentuk kumparan memanjang dan teratur.', 0.9, 'G77', 'G61'),
('G14', 'Biji jagung rusak/busuk.', 0.7, 'G13', 'G61'),
('G15', 'Tongkol jagung gugur.', 0.6, 'G14', 'G61'),
('G16', 'Tanaman jagung tampak layu atau mati.', 0.9, 'G15', 'G61'),
('G17', 'Bagian dalam batang busuk.', 0.8, 'G61', 'G22'),
('G18', 'Tanaman mudah rebah.', 0.6, 'G17', 'G22'),
('G19', 'Pangkal batang yang terinfeksi berwarna merah jambu sampai kemerahan.', 0.7, 'G18', 'G22'),
('G20', 'Isi batang terbelah-belah berongga.', 0.9, 'G19', 'G22'),
('G21', 'Daun berwarna hijau keabu-abuan pudar.', 0.7, 'G20', 'G22'),
('G22', 'Bercak berwarna agak kemerahan atau abu-abu pada pelepah daun.', 0.8, '', 'G24'),
('G23', 'Bercak berkembang dan terpisah-pisah seperti gejala panu.', 0.8, 'G22', 'G24'),
('G24', 'Terdapat bercak coklat dan kelayuan pada akar.', 0.7, '', 'G27'),
('G25', 'Buku-buku batang bawah membelah.', 0.8, 'G24', 'G27'),
('G26', 'Bagian dalam batang terutama serabut berwarna hitam.', 0.7, 'G25', 'G27'),
('G27', 'Pembengkakan pada biji-biji tongkol.', 0.8, '', 'G30'),
('G28', 'Bengkakan biji-biji tongkol ditutupi jaringan kehijauan, putih perak dan berkilau.', 0.9, 'G27', 'G30'),
('G29', 'Bagian dalam  bengkakan biji tongkol berwarna gelap.', 0.8, 'G28', 'G30'),
('G30', 'Pangkal kelobot tongkol yang terinfeksi tampat memucat.', 0.7, '', 'G44'),
('G31', 'Kelobot yang terinfeksi berwarna coklat.', 0.75, 'G30', 'G44'),
('G32', 'Biji berubah menjadi coklat, kisut, dan busuk.', 0.85, 'G31', 'G44'),
('G33', 'Pangkal biji terlihat jamur putih.', 0.75, 'G32', 'G44'),
('G34', 'Daun berwarna mosaik dan hijau dengan diselingi garis-garis kuning.', 0.65, 'G55', 'G01'),
('G35', 'Tanaman tampak lebih kekuningan.', 0.74, 'G34', 'G01'),
('G44', 'Tanaman jagung kerdil ', 0.68, '', 'G01'),
('G55', 'Ukuran tongkol kecil ', 0.79, 'G44', 'G01'),
('G61', 'Tanaman jagung tampak layu atau mati ', 0.66, '', 'G22'),
('G66', 'Permukaan daun atas dan bawah terdapat bercak kecil, bulat sampai oval', 0.77, '', 'G77'),
('G77', 'Bercak berwarna coklat kemerahan pada daun ', 0.69, '', 'G61');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id_konsultasi` int(11) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `tingkat_kepercayaan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_konsultasi`, `id_penyakit`, `tingkat_kepercayaan`, `id_pengguna`, `tanggal`) VALUES
(50, 'P01', 58, 3, '2022-08-11 11:16:29'),
(51, 'P01', 54, 3, '2022-08-11 11:24:37'),
(52, 'P01', 0, 3, '2022-08-11 11:35:06'),
(53, 'P01', 0, 3, '2022-08-11 11:35:46'),
(54, 'P01', 0, 3, '2022-08-11 11:35:59'),
(55, 'P01', 0, 3, '2022-08-11 11:36:06'),
(56, 'P01', 0, 3, '2022-08-11 11:36:15'),
(57, 'P01', 54, 3, '2022-08-11 11:39:49'),
(58, 'P01', 15, 3, '2022-08-11 16:45:03'),
(59, 'P01', 8, 3, '2022-08-11 16:46:08'),
(60, 'P01', 0, 3, '2022-08-20 15:58:17'),
(61, 'P01', 59, 3, '2022-08-20 15:59:51'),
(62, 'P02', 7, 9, '2022-08-24 17:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `pengetahuan`
--

CREATE TABLE `pengetahuan` (
  `id` int(11) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `id_gejala` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengetahuan`
--

INSERT INTO `pengetahuan` (`id`, `id_penyakit`, `id_gejala`) VALUES
(1, 'P01', 'G01'),
(2, 'P01', 'G02'),
(3, 'P01', 'G03'),
(6, 'P02', 'G06'),
(7, 'P02', 'G07'),
(8, 'P02', 'G07'),
(9, 'P02', 'G08'),
(10, 'P02', 'G09'),
(12, 'P01', 'G04');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_pengguna`, `alamat`, `email`, `username`, `password`) VALUES
(3, 'z', '', 'z@gmail.com', 'z', 'z'),
(8, 'hb', '', 'sdua3997@gmail.com', 'z', 'guru'),
(9, 'hb', 'rk 1 rt 2 brabasan tanjung raya', 'AY@MAIL.COM', 'heruyus', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` char(3) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `faktor_kepastian` float NOT NULL,
  `definisi` text DEFAULT NULL,
  `solusi` text DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nama_penyakit`, `faktor_kepastian`, `definisi`, `solusi`, `foto1`, `foto2`, `foto3`) VALUES
('P01', 'Jamur akar putih', 0.8, 'Tanaman jagung yang terinfeksi dan tumbuh selama musim kemarau merupakan sumber inokulum pertama di Indonesia. Jamur dapat bertahan hidup sebagai miselium dalam embrio biji yang terinfeksi. Bila biji ini ditanam, jamurnya ikut berkembang dan menginfeksi bibit, selanjutnya dapat menjadi sumber inokulum (penyakit). Infeksi terjadi melalui stomata daun jagung muda (di bawah umur satu bulan) dan jamur berkembang secara lokal atau sistemik. Sporangia (konidia) dan sporangiofora dihasilkan pada permukaan daun yang basah dalam gelap. Sporangia berperan sebagai inokulum sekunder. ', '1.Tanam varietas jagung yang tahan bulai seperti Kalingga, Arjuna.\r\n2.Wiyasa, Bromo, Parikesit, dan Hibrida Cl.\r\n3.Tidak menanam benih jagung yang berasal dari tanaman sakit.\r\n4.Tanam jagung secara serempak pada awal sampai akhir musim kemarau. Penanaman jagung pada peralihan musim (marengan atau labuhan) akan menderita kerugian besar karena bulai.\r\n5.Perlakuan benih dengan fungisida sistemik seperti Ridomil 35 SD ,(5 g formulasi/kg benih Ridomil mengandung bahan aktif metalaksil 35%).\r\n', '', NULL, NULL),
('P02', 'Karat Daun (Puccinia Polysora Underw)', 0.7, 'Teliospora jamur jarang ditemukan dan tahap spora ini tidak begitu penting dalam siklus penyakit. Urediniospora berperan penting sebagai inokulum pertama dan kedua melalui penyebaran angin dan Trieng inf eksi tanaman jagung lainriya. Jamur karat ini sekurang kurangnya terdiri dari dua ras berdasarkan ukuran urediniospora. Di Bogor ditemukan berukuran (25-37) x (20-25) atau rata-rata 30 x 22,9 m, sedang di dataran tinggi di Pacet (1150 berukuran lebih besar, (2853) x (20-30) atau rata-rata 36 x 24. Di Amerika Serikat telah ditemukan 7 ras jamur karat ini.\r\n', '1.Menanam varietas tahankarat daun, seperti Lamuru, Sukmaraga, Palakka, Bima-1 atau Semar-10.\r\n2.Pemusnahan seluruh bagian tanaman sampai ke akarnya (Eradikasi tanaman) pada tanaman terinfeksi karat daun maupun gulma.\r\n3.Penyemprotan fungisida menggunakan bahan aktif benomil. Dosis/konsentrasi sesuai petunjuk  di kemasan.\r\n', 'p2 - Copy - Copy.jpg', 'p2 - Copy.jpg', 'p2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_diagnosa`
--

CREATE TABLE `tmp_diagnosa` (
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `id_gejala` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `id_pengguna` int(11) NOT NULL,
  `id_gejala` char(3) DEFAULT NULL,
  `status` int(3) NOT NULL,
  `cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_penyakit` (`id_penyakit`);
ALTER TABLE `hasil_diagnosa` ADD FULLTEXT KEY `id_penyakit_2` (`id_penyakit`);

--
-- Indexes for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD CONSTRAINT `hasil_diagnosa_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `hasil_diagnosa_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`);

--
-- Constraints for table `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD CONSTRAINT `pengetahuan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`),
  ADD CONSTRAINT `pengetahuan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
