-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 05:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `no` varchar(50) NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`no`, `nama_ortu`, `nik`, `pekerjaan`, `telpon`, `alamat`) VALUES
('1', 'Mandra', '8678298754321098', 'Pengusaha', '082224105678', 'BJM');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `no` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `nisn` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nama_wali_kelas` varchar(20) NOT NULL,
  `nama_orang_tua` varchar(20) NOT NULL,
  `telp/hp_orang_tua` varchar(15) NOT NULL,
  `jenis_pelanggaran` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tahun_pelajaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`no`, `nama_siswa`, `nis`, `nisn`, `jenis_kelamin`, `jurusan`, `nama_wali_kelas`, `nama_orang_tua`, `telp/hp_orang_tua`, `jenis_pelanggaran`, `keterangan`, `bulan`, `tahun_pelajaran`) VALUES
('1', 'Manda', '19825583', '0974472', 'perempuan', 'TI', 'ahmadi', 'mandra', '081256789034', 'tidak ada', '-', 'desember', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `no` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `nisn` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `nama_wali_kelas` varchar(30) NOT NULL,
  `nama_orang_tua` varchar(30) NOT NULL,
  `telp/hp_orang_tua` varchar(15) NOT NULL,
  `jenis_prestasi` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tahun_pelajaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`no`, `nama_siswa`, `nis`, `nisn`, `jenis_kelamin`, `jurusan`, `nama_wali_kelas`, `nama_orang_tua`, `telp/hp_orang_tua`, `jenis_prestasi`, `keterangan`, `bulan`, `tahun_pelajaran`) VALUES
('1', 'Mia', '19825583', '09744678', 'perempuan', 'TI', 'andi', 'dino', '087543215789', 'atlet voli', '-', 'mei', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `rangkuman_prestasi&pelanggaran`
--

CREATE TABLE `rangkuman_prestasi&pelanggaran` (
  `no` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `nama_wali_kelas` varchar(20) NOT NULL,
  `nama_orang_tua` varchar(30) NOT NULL,
  `jenis_prestasi` varchar(30) NOT NULL,
  `jumlah_point_prestasi` varchar(30) NOT NULL,
  `jenis_pelanggaran` varchar(30) NOT NULL,
  `jumlah_point_pelanggaran` varchar(30) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `bulan` varchar(10) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `tahun_pelajaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rangkuman_prestasi&pelanggaran`
--

INSERT INTO `rangkuman_prestasi&pelanggaran` (`no`, `nama_siswa`, `nis`, `nisn`, `jenis_kelamin`, `jurusan`, `nama_wali_kelas`, `nama_orang_tua`, `jenis_prestasi`, `jumlah_point_prestasi`, `jenis_pelanggaran`, `jumlah_point_pelanggaran`, `telpon`, `bulan`, `semester`, `tahun_pelajaran`) VALUES
('1', 'andre', '7625729', '927652071', 'laki-laki', 'SI', 'ahmad', 'saiful', 'atlet renang', '85', 'sering terlambat', '10', '081234667789', 'april', '3', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `no` int(50) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tingkat_kelas` varchar(10) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `wali_kelas` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`no`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telpon`, `hp`, `status`) VALUES
(1, '927610962', '927557291', 'khalifa', '176527909724337892', 'tanah laut', '2003-06-07', 'perempuan', '3', 'IPA', 'ani', 'bjb', '081245098765', '082563498170', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pelanggaran`
--

CREATE TABLE `tabel_pelanggaran` (
  `no` varchar(50) NOT NULL,
  `jenis_pelanggaran` char(50) NOT NULL,
  `point` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_pelanggaran`
--

INSERT INTO `tabel_pelanggaran` (`no`, `jenis_pelanggaran`, `point`) VALUES
('1', 'sering terlambat datang ke sekolah', '5'),
('2', 'sering tidur di kelas', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_prestasi`
--

CREATE TABLE `tabel_prestasi` (
  `no` varchar(50) NOT NULL,
  `jenis_prestasi` char(50) NOT NULL,
  `point` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_prestasi`
--

INSERT INTO `tabel_prestasi` (`no`, `jenis_prestasi`, `point`) VALUES
('1', 'hafidz qur\'an', '10'),
('2', 'atlet badminton', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `no` varchar(50) NOT NULL,
  `nama_wali_kelas` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `field` varchar(20) NOT NULL,
  `tingkat_kelas` varchar(20) NOT NULL,
  `jurusan` varchar(10) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`no`, `nama_wali_kelas`, `jenis_kelamin`, `alamat`, `field`, `tingkat_kelas`, `jurusan`, `telpon`, `hp`) VALUES
('1', 'rina', 'perempuan', 'jl. sukamaju', 'olahraga', '2', 'IPA', '081245789065', '081234768909');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `rangkuman_prestasi&pelanggaran`
--
ALTER TABLE `rangkuman_prestasi&pelanggaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tabel_pelanggaran`
--
ALTER TABLE `tabel_pelanggaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tabel_prestasi`
--
ALTER TABLE `tabel_prestasi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
