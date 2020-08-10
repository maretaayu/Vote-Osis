-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2017 at 12:18 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `19881`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `nis` int(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `status_vote` varchar(13) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`nis`, `username`, `nama_lengkap`, `kelas`, `jurusan`, `status_vote`) VALUES
(1, 'jovvi', 'Joviandro nopier marbun', '12', 'RPL', '0'),
(2, 'Yiek', 'Yiek alfian', '12', 'RPL', '0'),
(3, 'Fahrizal', 'Fahrizal Syaripdin', '12', 'RPL', '0'),
(4, 'aqsa', 'Muhammad Aqsyal', '12', 'RPL', '0'),
(5, 'Aldin', 'Aldin abb', '12', 'RPL', '0'),
(8, 'Fadla', 'Fadlawalad dimas Zo Charli siregar', '12', 'RPL', '0'),
(9, 'Kevin', 'Kevin Hendra Wijaya', '12', 'RPL', '1');

-- --------------------------------------------------------

--
-- Table structure for table `log_vote`
--

CREATE TABLE `log_vote` (
  `user` text NOT NULL,
  `tanggal_waktu` varchar(255) NOT NULL,
  `add_log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `log_vote`
--

INSERT INTO `log_vote` (`user`, `tanggal_waktu`, `add_log`) VALUES
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 08:58:14 +0700', 'Login'),
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 08:58:33 +0700', 'ketua2,wakil1'),
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 09:00:28 +0700', 'ketua3,wakil3'),
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 09:00:31 +0700', 'Logout'),
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 09:02:52 +0700', 'Login'),
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 09:03:53 +0700', 'ketua1,wakil3'),
('Joviandro nopier marbun,12,RPL', 'Fri, 06 Oct 2017 09:03:56 +0700', 'Logout'),
('Fahrizal Syaripdin,12,RPL', 'Fri, 06 Oct 2017 19:38:53 +0700', 'Login'),
('Fahrizal Syaripdin,12,RPL', 'Fri, 06 Oct 2017 19:42:25 +0700', 'Logout'),
('Muhammad Aqsyal,12,RPL', 'Sat, 07 Oct 2017 17:23:59 +0700', 'Login'),
('Aldin abb,12,RPL', 'Sat, 07 Oct 2017 17:25:49 +0700', 'Login'),
('Aldin abb,12,RPL', 'Sat, 07 Oct 2017 17:26:59 +0700', 'ketua1,wakil1'),
('Muhammad Aqsyal,12,RPL', 'Sat, 07 Oct 2017 17:26:59 +0700', 'ketua1,wakil1'),
('Aldin abb,12,RPL', 'Sat, 07 Oct 2017 17:27:03 +0700', 'Logout'),
('Muhammad Aqsyal,12,RPL', 'Sat, 07 Oct 2017 17:27:03 +0700', 'Logout'),
('Yiek alfian,12,RPL', 'Sat, 07 Oct 2017 17:27:38 +0700', 'Login'),
('Fadlawalad dimas Zo Charli siregar,12,RPL', 'Sat, 07 Oct 2017 17:27:48 +0700', 'Login'),
('Yiek alfian,12,RPL', 'Sat, 07 Oct 2017 17:28:17 +0700', 'ketua1,wakil1'),
('Fadlawalad dimas Zo Charli siregar,12,RPL', 'Sat, 07 Oct 2017 17:28:17 +0700', 'ketua1,wakil1'),
('Yiek alfian,12,RPL', 'Sat, 07 Oct 2017 17:28:20 +0700', 'Logout'),
('Fadlawalad dimas Zo Charli siregar,12,RPL', 'Sat, 07 Oct 2017 17:28:20 +0700', 'Logout'),
('Fahrizal Syaripdin,12,RPL', 'Sat, 07 Oct 2017 17:32:45 +0700', 'Login'),
('Fahrizal Syaripdin,12,RPL', 'Sat, 07 Oct 2017 17:33:43 +0700', 'Logout'),
('Fahrizal Syaripdin,12,RPL', 'Sat, 07 Oct 2017 18:36:52 +0700', 'Login'),
('Fahrizal Syaripdin,12,RPL', 'Sat, 07 Oct 2017 19:15:58 +0700', 'Logout'),
('Fahrizal Syaripdin,12,RPL', 'Mon, 16 Oct 2017 15:18:28 +0700', 'Login'),
('Fahrizal Syaripdin,12,RPL', 'Mon, 16 Oct 2017 15:20:13 +0700', 'Logout'),
('Fahrizal Syaripdin,12,RPL', 'Mon, 16 Oct 2017 17:15:41 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 07:38:00 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 07:46:26 +0700', 'Logout'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 07:47:00 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 07:58:21 +0700', 'Logout'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 08:05:44 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 08:40:11 +0700', 'Logout'),
('Fahrizal Syaripdin,12,RPL', 'Tue, 17 Oct 2017 08:44:50 +0700', 'Login'),
('Fahrizal Syaripdin,12,RPL', 'Tue, 17 Oct 2017 08:45:10 +0700', 'ketua3,wakil3'),
('Fahrizal Syaripdin,12,RPL', 'Tue, 17 Oct 2017 08:45:13 +0700', 'Logout'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 11:55:24 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 15:54:49 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 16:14:36 +0700', 'Logout'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 16:15:12 +0700', 'Logout'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 16:15:24 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 16:17:18 +0700', 'Logout'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 16:27:40 +0700', 'Login'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 17:17:58 +0700', 'ketua3,wakil3'),
('Kevin Hendra Wijaya,12,RPL', 'Tue, 17 Oct 2017 17:17:59 +0700', 'Logout');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `calon` varchar(33) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `deskripsi_calon` text NOT NULL,
  `foto_calon` text NOT NULL,
  `jumlah_vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`calon`, `nama_calon`, `deskripsi_calon`, `foto_calon`, `jumlah_vote`) VALUES
('ketua1', 'Ikbal maulana', 'Saya tidak tau harus berkata apa', '11.jpg', 20),
('ketua2', 'Fahrizal syaripudin', 'Saya sangat bahagia bisa masuk osis', '22.jpg', 30),
('ketua3', 'JOvianro', 'asdsad', '3.jpg', 11),
('wakil1', 'Wawan kurniawan', 'Update status expert', '12.jpg', 11),
('wakil2', 'Muhammad aqsal', 'Tempat satu dua tiga empat', '2.jpg', 12),
('wakil3', 'Noor fadhil fadal ahmad', 'Tidak ada', '3.jpg', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`calon`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
