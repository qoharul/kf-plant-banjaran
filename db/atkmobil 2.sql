-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 03:26 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-11-19-174613', 'App\\Database\\Migrations\\TbPegawai', 'default', 'App', 1637344556, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil_keluar`
--

CREATE TABLE `tb_mobil_keluar` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `id_mobil` varchar(50) NOT NULL,
  `tanggal_berangkat` varchar(20) NOT NULL,
  `tanggal_kembali` varchar(20) NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `sopir` varchar(100) NOT NULL,
  `plat_mobil` varchar(100) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `tahun_mobil` varchar(10) NOT NULL,
  `tanggal_dikembalikan` varchar(20) NOT NULL,
  `tipe_mobil` varchar(50) NOT NULL,
  `status_pengajuan` varchar(100) NOT NULL,
  `status_pinjaman` varchar(20) NOT NULL,
  `status_diterima` varchar(30) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `nip_peminjam` varchar(30) NOT NULL,
  `pangkat_peminjam` varchar(50) NOT NULL,
  `jabatan_peminjam` varchar(50) NOT NULL,
  `alamat_peminjam` varchar(250) NOT NULL,
  `telp_peminjam` varchar(15) NOT NULL,
  `tujuan_meminjam` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mobil_keluar`
--

INSERT INTO `tb_mobil_keluar` (`id`, `id_mobil`, `tanggal_berangkat`, `tanggal_kembali`, `bagian`, `sopir`, `plat_mobil`, `merk_mobil`, `tahun_mobil`, `tanggal_dikembalikan`, `tipe_mobil`, `status_pengajuan`, `status_pinjaman`, `status_diterima`, `jumlah`, `nama_peminjam`, `nip_peminjam`, `pangkat_peminjam`, `jabatan_peminjam`, `alamat_peminjam`, `telp_peminjam`, `tujuan_meminjam`) VALUES
(000091, '000003', '22/11/2021', '24/11/2021', 'Bidang (Idwasbang) ', '', 'D 1394 F', 'Toyota Kijang Inova G', '2009', '22/11/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000094, '000004', '18/11/2021', '23/11/2021', 'Bidang (Poldagri) ', '', 'D 1654 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '24/11/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Limar Ega Kusumo ', '196675088319754521 ', 'III/d ', 'Penata Tk.I ', 'Jr. BKR No. 257, Langsa 13682, Riau ', '0755 4620 8866 ', 'Dinas Luar Kota'),
(000095, '000001', '22/11/2021', '23/11/2021', 'Bidang (Poldagri) ', '', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', '2016', '28/12/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Limar Ega Kusumo ', '196675088319754521 ', 'III/d ', 'Penata Tk.I ', 'Jr. BKR No. 257, Langsa 13682, Riau ', '0755 4620 8866 ', 'Dinas Luar Kota'),
(000097, '000002', '28/12/2021', '29/12/2021', 'Bidang (Idwasbang) ', '', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '28/12/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000098, '000003', '28/12/2021', '29/12/2021', 'Bidang (Idwasbang) ', '', 'D 1394 F', 'Toyota Kijang Inova G', '2009', '29/12/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000099, '000005', '28/12/2021', '30/12/2021', 'Bidang (Idwasbang) ', '', 'D 1554 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '28/12/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000100, '000004', '28/12/2021', '30/12/2021', 'Bidang (Idwasbang) ', '', 'D 1654 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '30/12/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000102, '000003', '28/12/2021', '30/12/2021', 'Bidang (Idwasbang) ', '', 'D 1394 F', 'Toyota Kijang Inova G', '2009', '29/12/2021', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000103, '000005', '28/12/2021', '31/12/2021', 'Bidang (Idwasbang) ', 'Iwan Koswara', 'D 1554 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '08/12/2022', 'Minibus', 'Disetujui', 'Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', 'IV/a ', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Dinas Luar Kota'),
(000107, '000005', '08/12/2022', '09/12/2022', '', 'Jejen Jaenudin', 'D 1554 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '-', 'Minibus', 'Disetujui', 'Belum Selesai', 'Diterima', 1, 'Kasiyah Lestari ', '197446818421738864 ', '', 'Pembina Tk.I ', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY ', '(+62) 647 8321 ', 'Jalan jalan');

--
-- Triggers `tb_mobil_keluar`
--
DELIMITER $$
CREATE TRIGGER `TG_MOBIL_KELUAR` AFTER INSERT ON `tb_mobil_keluar` FOR EACH ROW BEGIN
 UPDATE tb_mobil_masuk SET jumlah=jumlah-NEW.jumlah
 WHERE id_mobil=NEW.id_mobil;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TG_PENGEMBALIAN_MOBIL` AFTER UPDATE ON `tb_mobil_keluar` FOR EACH ROW BEGIN
IF (NEW.status_pinjaman = 'Selesai') THEN
 UPDATE tb_mobil_masuk SET jumlah=jumlah + OLD.jumlah
 WHERE id_mobil=OLD.id_mobil;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TG_PENGEMBALIAN_MOBIL_HAPUS` AFTER DELETE ON `tb_mobil_keluar` FOR EACH ROW BEGIN
        UPDATE tb_mobil_masuk 
        SET jumlah=jumlah + OLD.jumlah
        WHERE id_mobil=OLD.id_mobil;
	END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil_masuk`
--

CREATE TABLE `tb_mobil_masuk` (
  `id_mobil` int(6) UNSIGNED ZEROFILL NOT NULL,
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

INSERT INTO `tb_mobil_masuk` (`id_mobil`, `tahun_mobil`, `plat_mobil`, `merk_mobil`, `tipe_mobil`, `jumlah`, `diperuntukkan`) VALUES
(000001, '2016', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', 'Minibus', '1', 'Merah'),
(000002, '2013', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kuning'),
(000003, '2009', 'D 1394 F', 'Toyota Kijang Inova G', 'Minibus', '1', 'Hijau'),
(000004, '2013', 'D 1654 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Biru'),
(000005, '2013', 'D 1554 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '0', 'Jingga'),
(000006, '2013', 'D 1480 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Ungu'),
(000013, '2022', 'AC 4 B', 'Toyota', 'Minibus', '1', 'Hitam met');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `salt` varchar(300) DEFAULT NULL,
  `role` int(2) DEFAULT NULL,
  `nip` varchar(22) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `salt`, `role`, `nip`, `nama`, `bagian`, `pangkat`, `jabatan`, `alamat`, `telp`) VALUES
(001, 'pengelola', '3c7913bc17671596a43dcb4581992bdf619917b79ed106.89382150', '619917b79ed106.89382150', 1, '197494939920237105', 'Rizki Damanik', '', '', 'Pembina Tk.I', 'Jr. Imam No. 778, Tomohon 10326, DKI', '0601 4265 330'),
(002, 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a619917c6a1ced9.49952914', '619917c6a1ced9.49952914', 2, '197446818421738864', 'Kasiyah Lestari', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Psr. Agus Salim No. 522, Tasikmalaya 91803, DIY', '(+62) 647 8321 0414'),
(006, 'nurdiyanti.rangga', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '199038001710042179', 'Farah Laksmiwati', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Dahlia No. 14, Subulussalam 85092, Babel', '0550 9189 3009'),
(007, 'palastri.zulaikha', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 2, '195042200782085407', 'Zelda Azalea Fujiati S.Pt', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Dk. Umalas No. 204, Sibolga 87795, NTB', '(+62) 453 5074 1762'),
(008, 'prasetya.anastasia', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 2, '198729956309864962', 'Embuh Hidayat S.Farm', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ds. Wahid No. 395, Depok 28222, Sulut', '(+62) 262 8679 9615'),
(010, 'jabal85', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '195697258858939805', 'Hasta Sihombing', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. PHH. Mustofa No. 653, Tidore Kepulauan 27942, Bali', '(+62) 212 9210 587'),
(013, 'chutapea', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '198249496393356681', 'Pia Purwanti', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Psr. Antapani Lama No. 450, Solok 24425, Sumut', '0672 1569 042'),
(016, 'rina.pertiwi', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '195066242621031795', 'Hartana Uwais S.H.', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Umalas No. 623, Blitar 38502, Kaltara', '0311 6914 6527'),
(017, 'siregar.okto', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 2, '196675088319754521', 'Limar Ega Kusumo', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jr. BKR No. 257, Langsa 13682, Riau', '0755 4620 8866'),
(020, 'safitri.ozy', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '198750455054626740', 'Tirta Tamba', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jr. Juanda No. 413, Sungai Penuh 10142, Lampung', '0811 2377 7527'),
(024, 'elma49', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '199283901000362394', 'Kenes Habibi', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Yogyakarta No. 784, Pekanbaru 46393, Sulbar', '(+62) 564 1156 9445'),
(025, 'margana06', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 2, '199616069539710660', 'Lidya Yuliarti S.I.Kom', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jr. Sutoyo No. 249, Sungai Penuh 48516, DIY', '0937 2496 135');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mobil_keluar`
--
ALTER TABLE `tb_mobil_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mobil_masuk`
--
ALTER TABLE `tb_mobil_masuk`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_mobil_keluar`
--
ALTER TABLE `tb_mobil_keluar`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `tb_mobil_masuk`
--
ALTER TABLE `tb_mobil_masuk`
  MODIFY `id_mobil` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1091;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
