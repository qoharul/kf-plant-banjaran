-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 02:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atkmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_keluar`
--

CREATE TABLE `tb_barang_keluar` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `id_transaksi` varchar(50) NOT NULL,
  `tanggal_masuk` varchar(20) NOT NULL,
  `tanggal_keluar` varchar(20) NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jumlah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_keluar`
--

INSERT INTO `tb_barang_keluar` (`id`, `id_transaksi`, `tanggal_masuk`, `tanggal_keluar`, `bagian`, `kode_barang`, `nama_barang`, `satuan`, `jumlah`) VALUES
(000029, '07-08-2021.8973', '07/08/2021', '07/08/2021', 'Sekretariat (Keuangan)', '243177628530', 'Kertas', 'Rim', '12'),
(000030, '07-08-2021.0712', '07/08/2021', '07/08/2021', 'TU Pimpinan', '718045366342', 'Tinta Epson L 120 664 Black', 'Buah', '2'),
(000031, '07-08-2021.8973', '07/08/2021', '07/08/2021', 'Bidang (Poldagri)', '243177628530', 'Kertas', 'Rim', '8'),
(000032, '16-08-2021.8473', '16/08/2021', '16/08/2021', 'Sekretariat (Keuangan)', '238681470362', 'Tip X', 'Buah', '20'),
(000033, '16-08-2021.0312', '16/08/2021', '16/08/2021', 'Sekretariat (Keuangan)', '362678003591', 'Kertas F4', 'Rim', '3'),
(000034, '07-08-2021.0712', '07/08/2021', '24/08/2021', 'Bidang (Wasda)', '718045366342', 'Tinta Epson L 120 664 Black', 'Buah', '8'),
(000035, '24-08-2021.0649', '24/08/2021', '24/08/2021', 'Bidang (Wasda)', '251749653388', 'Ballpoint Biasa V-5 Hitam', 'Pack', '1'),
(000036, '24-08-2021.5846', '24/08/2021', '27/08/2021', 'Bidang (Kesbak)', '439068370115', 'Kertas F4', 'Rim', '1'),
(000037, '', '', '02-11-2021', 'Bidang (Poldagri)', '48127593713', 'Bolpoin', 'Dus', '1'),
(000038, '', '01/11/2021', '02-11-2021', 'TU Pimpinan', '5123213123', 'Kertas A4', 'Rim', '1'),
(000039, '', '01/11/2021', '02-11-2021', 'Bidang (Poldagri)', '48127593713', 'Bolpoin', 'Dus', '25');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_masuk`
--

CREATE TABLE `tb_barang_masuk` (
  `id_transaksi` int(6) UNSIGNED ZEROFILL NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jumlah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_masuk`
--

INSERT INTO `tb_barang_masuk` (`id_transaksi`, `tanggal`, `kode_barang`, `nama_barang`, `satuan`, `jumlah`) VALUES
(000009, '01/11/2021', '5123213123', 'Kertas A4', 'Rim', '4'),
(000010, '01/11/2021', '48127593713', 'Bolpoin', 'Dus', '150');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil_masuk`
--

CREATE TABLE `tb_mobil_masuk` (
  `id_transaksi` int(6) UNSIGNED ZEROFILL NOT NULL,
  `tahun_mobil` varchar(10) NOT NULL,
  `plat_mobil` varchar(100) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `tipe_mobil` varchar(50) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `diperuntukkan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mobil_masuk`
--

INSERT INTO `tb_mobil_masuk` (`id_transaksi`, `tahun_mobil`, `plat_mobil`, `merk_mobil`, `tipe_mobil`, `jumlah`, `diperuntukkan`) VALUES
(000001, '2016', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000002, '2013', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000003, '2009', 'D 1394 F', 'Toyota Kijang Inova G', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000004, '2013', 'D 1654 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '0', 'Kendaraan Operasional Pool Kendaraan'),
(000005, '2013', 'D 1554 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000006, '2013', 'D 1480 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_satuan`
--

CREATE TABLE `tb_satuan` (
  `id_satuan` int(6) UNSIGNED ZEROFILL NOT NULL,
  `kode_satuan` varchar(100) NOT NULL,
  `nama_satuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_satuan`
--

INSERT INTO `tb_satuan` (`id_satuan`, `kode_satuan`, `nama_satuan`) VALUES
(000001, 'Dus', 'Dus'),
(000002, 'Pcs', 'Pcs'),
(000005, 'Pack', 'Pack'),
(000006, 'Buah', 'Buah'),
(000007, 'Rim', 'Rim');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `salt` varchar(300) DEFAULT NULL,
  `role` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `role`) VALUES
(2, 'admin2', '0192023a7bbd73250516f069df18b5006166ed4f655484.81990142', '6166ed4f655484.81990142', 1),
(3, 'user', 'b5b73fae0d87d8b4e2573105f8fbe7bc6166f1269e9690.07496509', '6166f1269e9690.07496509', 2),
(4, 'cobadaftar', 'bc1a8457f95e10d05dc4d9e273b7a154617211bcbbd137.82521114', '617211bcbbd137.82521114', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_mobil_masuk`
--
ALTER TABLE `tb_mobil_masuk`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_satuan`
--
ALTER TABLE `tb_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  MODIFY `id_transaksi` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_mobil_masuk`
--
ALTER TABLE `tb_mobil_masuk`
  MODIFY `id_transaksi` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_satuan`
--
ALTER TABLE `tb_satuan`
  MODIFY `id_satuan` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
