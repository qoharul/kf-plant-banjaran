-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 06:58 PM
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
  `jumlah` varchar(10) NOT NULL,
  `status` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_keluar`
--

INSERT INTO `tb_barang_keluar` (`id`, `id_transaksi`, `tanggal_masuk`, `tanggal_keluar`, `bagian`, `kode_barang`, `nama_barang`, `satuan`, `jumlah`, `status`) VALUES
(000029, '07-08-2021.8973', '07/08/2021', '07/08/2021', 'Sekretariat (Keuangan)', '243177628530', 'Kertas', 'Rim', '12', 'Disetujui'),
(000030, '07-08-2021.0712', '07/08/2021', '07/08/2021', 'TU Pimpinan', '718045366342', 'Tinta Epson L 120 664 Black', 'Buah', '2', 'Disetujui'),
(000031, '07-08-2021.8973', '07/08/2021', '07/08/2021', 'Bidang (Poldagri)', '243177628530', 'Kertas', 'Rim', '8', 'Disetujui'),
(000032, '16-08-2021.8473', '16/08/2021', '16/08/2021', 'Sekretariat (Keuangan)', '238681470362', 'Tip X', 'Buah', '20', 'Disetujui'),
(000033, '16-08-2021.0312', '16/08/2021', '16/08/2021', 'Sekretariat (Keuangan)', '362678003591', 'Kertas F4', 'Rim', '3', 'Disetujui'),
(000034, '07-08-2021.0712', '07/08/2021', '24/08/2021', 'Bidang (Wasda)', '718045366342', 'Tinta Epson L 120 664 Black', 'Buah', '8', 'Disetujui'),
(000035, '24-08-2021.0649', '24/08/2021', '24/08/2021', 'Bidang (Wasda)', '251749653388', 'Ballpoint Biasa V-5 Hitam', 'Pack', '1', 'Disetujui'),
(000036, '24-08-2021.5846', '24/08/2021', '27/08/2021', 'Bidang (Kesbak)', '439068370115', 'Kertas F4', 'Rim', '1', 'Disetujui'),
(000037, '', '', '02-11-2021', 'Bidang (Poldagri)', '48127593713', 'Bolpoin', 'Dus', '1', 'Disetujui'),
(000038, '', '01/11/2021', '02-11-2021', 'TU Pimpinan', '5123213123', 'Kertas A4', 'Rim', '1', 'Disetujui'),
(000039, '', '01/11/2021', '02-11-2021', 'Bidang (Poldagri)', '48127593713', 'Bolpoin', 'Dus', '25', 'Disetujui'),
(000040, '', '01/11/2021', '02-11-2021', 'Bidang (Idwasbang)', '48127593713', 'Bolpoin', 'Dus', '10', 'Disetujui'),
(000041, '', '01/11/2021', '02-11-2021', 'Bidang (Idwasbang)', '48127593713', 'Bolpoin', 'Dus', '5', 'Disetujui'),
(000042, '000009', '01/11/2021', '08-11-2021', 'Bidang (Poldagri)', '5123213123', 'Kertas A4', 'Rim', '1', 'Disetujui'),
(000043, '000010', '01/11/2021', '09-11-2021', 'Bidang (Wasda)', '48127593713', 'Bolpoin', 'Dus', '2', 'Disetujui'),
(000044, '000010', '01/11/2021', '09-11-2021', 'Bidang (Idwasbang)', '48127593713', 'Printer', 'Dus', '8', 'Disetujui'),
(000045, '000010', '01/11/2021', '09-11-2021', 'Sekretariat (Keuangan)', '48127593713', 'Bolpoin', 'Dus', '1', 'Disetujui'),
(000046, '000003', '', '', 'TU Pimpinan', '', '', '', '1', 'Disetujui'),
(000047, '000009', '01/11/2021', '18/11/2021', 'Bidang (Kesbak)', '5123213123', 'Kertas A4', 'Rim', '3', 'Disetujui'),
(000048, '000013', '18/11/2021', '18/11/2021', 'Bidang (Wasda)', '515125', 'Kertas A4', 'Rim', '301', 'Disetujui'),
(000049, '000010', '01/11/2021', '20/11/2021', 'Bidang (Wasda)', '48127593713', 'Bolpoin', 'Dus', '1', 'Disetujui'),
(000050, '000010', '01/11/2021', '20/11/2021', 'Bidang (Idwasbang)', '48127593713', 'Bolpoin', 'Dus', '33', 'Disetujui');

--
-- Triggers `tb_barang_keluar`
--
DELIMITER $$
CREATE TRIGGER `TG_BARANG_KELUAR` AFTER INSERT ON `tb_barang_keluar` FOR EACH ROW BEGIN
 UPDATE tb_barang_masuk SET jumlah=jumlah-NEW.jumlah
 WHERE kode_barang=NEW.kode_barang;
 DELETE FROM tb_barang_masuk WHERE jumlah = 0;

END
$$
DELIMITER ;

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
(000010, '01/11/2021', '48127593713', 'Bolpoin', 'Dus', '95'),
(000011, '16/11/2021', '48127591231', 'Kertas F4', 'Rim', '12'),
(000013, '18/11/2021', '515125', 'Kertas A4', 'Rim', '321');

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
  `plat_mobil` varchar(100) NOT NULL,
  `merk_mobil` varchar(100) NOT NULL,
  `tahun_mobil` varchar(10) NOT NULL,
  `tanggal_dikembalikan` varchar(20) NOT NULL,
  `tipe_mobil` varchar(50) NOT NULL,
  `status_pinjaman` varchar(20) NOT NULL,
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

INSERT INTO `tb_mobil_keluar` (`id`, `id_mobil`, `tanggal_berangkat`, `tanggal_kembali`, `bagian`, `plat_mobil`, `merk_mobil`, `tahun_mobil`, `tanggal_dikembalikan`, `tipe_mobil`, `status_pinjaman`, `jumlah`, `nama_peminjam`, `nip_peminjam`, `pangkat_peminjam`, `jabatan_peminjam`, `alamat_peminjam`, `telp_peminjam`, `tujuan_meminjam`) VALUES
(000074, '31-08-2021.3247', '31/08/2021', '01/09/2021', 'Bidang (Poldagri)', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', '2016', '01/09/2021', 'Minibus', 'Selesai', 0, 'Arul', '3411181003', 'Mythic II', 'Ketua Divisi', 'Kotabaru', '081212348484', 'Tournamen PUBG Mobile'),
(000075, '31-08-2021.9140', '29/08/2021', '31/08/2021', 'Sekretariat (Arsip)', 'D 1394 F', 'Toyota Kijang Inova G', '2009', '09/11/2021', 'Minibus', 'Selesai', 0, 'Jackson Hwang', '3411181002', 'Legend IV', 'Wakil Ketua Divisi', 'Kotabaru', '081215268564', 'Dinas Luar Kota'),
(000076, '000001', '09/11/2021', '11/11/2021', 'Bidang (Idwasbang)', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', '2016', '10/11/2021', 'Minibus', 'Selesai', 1, 'Agus', '34111', 'Legend', 'Kepala Pundak', 'Bandung', '081288141234', 'Dinas Luar Kota'),
(000077, '000003', '10/11/2021', '12/11/2021', 'TU Pimpinan', 'D 1394 F', 'Toyota Kijang Inova G', '2009', '11/11/2021', 'Minibus', 'Selesai', 1, 'Cecep', '123458691', 'III', 'Kepala Kaki', 'Lembang', '081248128501', 'Dinas Luar Kota'),
(000078, '000001', '10/11/2021', '11/11/2021', 'Sekretariat (Arsip)', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', '2016', '11/11/2021', 'Minibus', 'Selesai', 1, 'Dedi', '5135135', 'IV', 'Kepala Lutut', 'Bandung', '08124614641', 'Dinas Luar Kota'),
(000079, '000006', '10/11/2021', '11/11/2021', 'TU Pimpinan', 'D 1480 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '12/11/2021', 'Minibus', 'Selesai', 1, 'Arul', '123458691', 'Legend', 'Kepala Pundak', 'Lembang', '081288141234', 'Dinas Luar Kota'),
(000080, '000001', '10/11/2021', '11/11/2021', 'Bidang (Poldagri)', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', '2016', '12/11/2021', 'Minibus', 'Selesai', 0, 'Arul', '123458691', 'Legend', 'Kepala Pundak', 'Lembang', '081288141234', 'Dinas Luar Kota'),
(000081, '000002', '10/11/2021', '11/11/2021', 'Bidang (Idwasbang)', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '12/11/2021', 'Minibus', 'Selesai', 0, 'Dedi', '34111', 'Legend', 'Kepala Kaki', 'Bandung', '08124614641', 'Dinas Luar Kota'),
(000083, '000002', '12/11/2021', '13/11/2021', 'Sekretariat (Kepegawaian)', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '13/11/2021', 'Minibus', 'Selesai', 0, 'Qoharul Jabbar', '32132', 'Asda', 'Asdad', 'Bandung', '0812312', 'Dinas Luar Kota'),
(000084, '000002', '12/11/2021', '13/11/2021', 'Bidang (Wasda)', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', '2013', '-', 'Minibus', 'Belum Selesai', 1, 'Qoharul Jabbar', '32132', 'Asda', 'Asdad', 'Bandung', '0812312', 'Dinas Luar Kota');

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
 UPDATE tb_mobil_masuk SET jumlah=jumlah + OLD.jumlah
 WHERE id_mobil=OLD.id_mobil;

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
(000001, '2016', 'D 1079 B', 'Toyota Avanza 1.5 Veloz A/T', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000002, '2013', 'D 1479 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '0', 'Kendaraan Operasional Pool Kendaraan'),
(000003, '2009', 'D 1394 F', 'Toyota Kijang Inova G', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000004, '2013', 'D 1654 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000005, '2013', 'D 1554 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan'),
(000006, '2013', 'D 1480 E', 'Toyota Rush 1.5S S M/T TRD', 'Minibus', '1', 'Kendaraan Operasional Pool Kendaraan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(11) UNSIGNED ZEROFILL NOT NULL,
  `nip` varchar(22) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bagian` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `nip`, `nama`, `bagian`, `pangkat`, `jabatan`, `alamat`, `telp`) VALUES
(00000000001, '195718075222492891', 'Bakiadi Waluyo', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ki. Orang No. 350, Lhokseumawe 53062, Kalsel', '022 3525 7685'),
(00000000002, '196880495487236924', 'Fitria Permata', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Sudiarto No. 836, Kediri 55616, Bengkulu', '0396 0538 438'),
(00000000003, '198383924842288636', 'Sidiq Marwata Suryono S.Sos', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. Bacang No. 145, Pekalongan 64975, NTB', '(+62) 910 2420 094'),
(00000000004, '196215995005749533', 'Dirja Ardianto', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Dk. Wora Wari No. 83, Tegal 60153, Sulut', '(+62) 23 4423 427'),
(00000000005, '198128740702379825', 'Zahra Astuti', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. Ketandan No. 312, Solok 40605, Riau', '0882 408 449'),
(00000000006, '196039794862538718', 'Lega Adriansyah', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jln. Zamrud No. 319, Bukittinggi 63464, Kaltara', '0818 7915 9082'),
(00000000007, '198559019593035345', 'Ulva Hariyah M.Pd', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Dk. K.H. Maskur No. 692, Tebing Tinggi 22595, Aceh', '(+62) 853 729 326'),
(00000000008, '198951789755366938', 'Elisa Yance Safitri S.Gz', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Bakti No. 727, Sabang 77606, Sumut', '0271 6045 689'),
(00000000009, '197962694397508004', 'Adikara Setiawan M.M.', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Gg. Raden Saleh No. 223, Serang 38257, Riau', '0375 3849 805'),
(00000000010, '195632684793531831', 'Zahra Usada', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Merdeka No. 672, Surakarta 60632, Sulteng', '0304 2924 8829'),
(00000000011, '197153015995427803', 'Intan Pratiwi', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Dago No. 416, Banjarbaru 60360, Jatim', '(+62) 682 8872 756'),
(00000000012, '197815625396425937', 'Rini Violet Rahayu', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ds. Otista No. 116, Sorong 62154, Riau', '(+62) 748 1374 0817'),
(00000000013, '197741203022747048', 'Cinta Ellis Rahimah', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Ki. Baja Raya No. 676, Langsa 22175, Jabar', '0847 187 388'),
(00000000014, '195390729389820914', 'Yulia Oktaviani', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Kpg. Gajah No. 383, Tual 39698, Sumbar', '0524 0728 500'),
(00000000015, '197657125577866569', 'Jane Astuti S.Sos', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ki. Bakau No. 643, Sibolga 10522, Babel', '0928 1820 855'),
(00000000016, '195352007582902998', 'Saadat Dabukke', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Psr. Ketandan No. 388, Pangkal Pinang 52348, Sulut', '(+62) 452 5464 5877'),
(00000000017, '195805955761118507', 'Gangsar Prasetya S.Pd', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Psr. Soekarno Hatta No. 164, Bontang 46283, DIY', '(+62) 919 6598 6680'),
(00000000018, '197737244192138962', 'Lulut Dipa Januar S.H.', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Untung Suropati No. 154, Makassar 35940, Papua', '(+62) 740 6101 8532'),
(00000000019, '198054150754049041', 'Farah Hartati S.Sos', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Kpg. Camar No. 43, Bau-Bau 99408, DKI', '(+62) 528 1244 620'),
(00000000020, '195683704686597876', 'Vera Fitria Agustina S.E.I', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. Teuku Umar No. 859, Magelang 37098, Maluku', '0848 9480 243'),
(00000000021, '198582171357138469', 'Kamaria Yessi Nurdiyanti S.T.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. Bhayangkara No. 103, Tegal 34273, Sulteng', '(+62) 861 942 343'),
(00000000022, '197559759412098204', 'Dartono Harjo Wacana', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ds. Lumban Tobing No. 676, Depok 52387, Sulut', '0709 8521 8794'),
(00000000023, '196093745396367092', 'Ida Halimah', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. PHH. Mustofa No. 341, Banjar 81626, Sulbar', '(+62) 367 7558 2713'),
(00000000024, '197444387143754954', 'Kariman Prasetyo M.TI.', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jln. Bayam No. 390, Tebing Tinggi 51481, Aceh', '0242 2510 432'),
(00000000025, '199275960956856130', 'Aisyah Nasyidah', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Kpg. Yosodipuro No. 377, Depok 28099, Jateng', '022 7243 1528'),
(00000000026, '197600180334891215', 'Titin Zulaika S.E.I', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Kpg. Kyai Gede No. 486, Payakumbuh 18388, Kaltara', '0869 3667 2733'),
(00000000027, '199444052221611000', 'Irwan Sihotang', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. B.Agam Dlm No. 262, Tarakan 88623, Sumbar', '(+62) 942 9824 4480'),
(00000000028, '197743504979264423', 'Jessica Winarsih', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Gg. Cikutra Timur No. 512, Pematangsiantar 51020, Kepri', '0695 5837 811'),
(00000000029, '198902585502493681', 'Vicky Zulfa Winarsih', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ki. Basket No. 119, Makassar 69546, Sulut', '0733 1532 771'),
(00000000030, '197229742284815988', 'Balidin Mahendra', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Gading No. 298, Mojokerto 55905, Sulut', '(+62) 989 1459 546'),
(00000000031, '199651893597532443', 'Rafid Siregar S.E.', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ki. Bara Tambar No. 58, Langsa 54942, Aceh', '0793 1515 1220'),
(00000000032, '199370207189609954', 'Emin Siregar S.IP', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Ki. Babadak No. 63, Sawahlunto 85429, Pabar', '0962 2314 961'),
(00000000033, '198978050716014055', 'Wirda Olivia Wastuti S.Ked', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ki. Padang No. 771, Bima 42392, Kepri', '(+62) 857 3017 582'),
(00000000034, '197705256032912958', 'Carub Tamba S.Psi', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Psr. Cut Nyak Dien No. 880, Bandung 46063, Kaltara', '0672 0018 147'),
(00000000035, '196994515718572679', 'Vicky Agustina S.Ked', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Gg. Bagonwoto  No. 386, Cimahi 68184, Lampung', '0646 4768 6363'),
(00000000036, '197641163887320723', 'Zizi Malika Safitri S.IP', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ki. Bak Air No. 103, Kotamobagu 57038, Jateng', '0205 6468 4623'),
(00000000037, '198048580277415023', 'Jaga Habibi', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Psr. Rajawali Barat No. 325, Cimahi 82869, Sumbar', '0772 5661 2851'),
(00000000038, '199445951737865350', 'Gangsar Simbolon', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Kpg. Cikutra Barat No. 950, Tomohon 46524, Bali', '(+62) 27 2728 773'),
(00000000039, '198671428927907319', 'Rahmi Suartini', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ki. Ciwastra No. 193, Pagar Alam 83716, Sumsel', '(+62) 287 8985 2621'),
(00000000040, '198309654313081856', 'Syahrini Zalindra Wahyuni', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Dk. Imam Bonjol No. 742, Tebing Tinggi 46518, Jateng', '(+62) 324 3157 8370'),
(00000000041, '198109882790115977', 'Aisyah Genta Prastuti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Lumban Tobing No. 962, Cilegon 96020, Sumut', '0691 0032 462'),
(00000000042, '198979210873434917', 'Darman Jayadi Natsir S.E.I', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. Cihampelas No. 278, Payakumbuh 74146, Babel', '(+62) 887 6989 9651'),
(00000000043, '198567504646833476', 'Galar Bakti Salahudin', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Sutoyo No. 439, Palopo 33006, Jateng', '0748 7169 262'),
(00000000044, '197753610430650762', 'Vivi Farida', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Panjaitan No. 517, Salatiga 24934, Riau', '0924 2053 6420'),
(00000000045, '197240381988302784', 'Parman Rajasa S.Gz', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ki. Baik No. 675, Sabang 82386, Sulsel', '(+62) 425 0675 4023'),
(00000000046, '198975692463209278', 'Prayoga Saragih M.Farm', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Gg. Yap Tjwan Bing No. 583, Salatiga 75803, NTT', '(+62) 412 1789 6123'),
(00000000047, '195186952731016690', 'Gawati Clara Kuswandari', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jln. Mahakam No. 548, Ambon 89688, Riau', '(+62) 621 1255 684'),
(00000000048, '195297636543722446', 'Cinthia Laksmiwati', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jr. Kyai Mojo No. 102, Bandung 19237, DKI', '(+62) 472 5917 687'),
(00000000049, '195197894452951773', 'Paiman Balangga Mandala', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jr. Bak Air No. 989, Mojokerto 42180, Kalbar', '(+62) 535 9687 995'),
(00000000050, '199709678099003801', 'Salwa Agustina', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Sudiarto No. 471, Kendari 49702, Sulsel', '0425 4806 851'),
(00000000051, '196459326779036798', 'Kani Melani', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Babadan No. 280, Pekalongan 76311, Kalsel', '(+62) 429 9537 715'),
(00000000052, '199265112721027890', 'Jumadi Warsita Nugroho', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Dk. Merdeka No. 426, Administrasi Jakarta Pusat 75509, Sulut', '(+62) 966 5006 9076'),
(00000000053, '195253611056142992', 'Arta Jailani', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Gardujati No. 157, Tanjung Pinang 83802, Jateng', '0319 4858 659'),
(00000000054, '196898937583490036', 'Bella Dalima Nasyidah S.IP', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Psr. Honggowongso No. 573, Sawahlunto 69368, Kalteng', '(+62) 514 0107 8819'),
(00000000055, '199760787514152477', 'Ratih Laksmiwati', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Jln. Urip Sumoharjo No. 895, Jayapura 52469, Kepri', '(+62) 589 5897 377'),
(00000000056, '199119275227682991', 'Hani Mardhiyah', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Jln. Yos No. 438, Jayapura 92912, Kepri', '0739 9348 6579'),
(00000000057, '197358620304163036', 'Balangga Tampubolon', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jln. Sugiyopranoto No. 475, Tangerang 28951, Gorontalo', '(+62) 858 573 529'),
(00000000058, '199321570238268309', 'Wirda Prastuti M.TI.', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Psr. Gajah No. 99, Tegal 24064, DKI', '(+62) 522 4987 6398'),
(00000000059, '195455588780821339', 'Ratna Laksita', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Kpg. Ki Hajar Dewantara No. 666, Tanjung Pinang 10578, Sulteng', '(+62) 27 7371 699'),
(00000000060, '198524506097703836', 'Cahyanto Manullang', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Dk. Industri No. 879, Bogor 42049, DIY', '(+62) 819 546 267'),
(00000000061, '196516767052387291', 'Sadina Kusmawati', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Kpg. Abdullah No. 224, Tual 60023, NTT', '(+62) 840 704 076'),
(00000000062, '196615947546576809', 'Banawa Warsita Kurniawan M.Pd', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Psr. Baranangsiang No. 13, Lubuklinggau 43160, Sulbar', '(+62) 354 4571 038'),
(00000000063, '195043229255701386', 'Ani Padmasari', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Ds. Madiun No. 481, Makassar 50410, Kepri', '0773 3237 4554'),
(00000000064, '197838967994089276', 'Kezia Wijayanti', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ki. Baha No. 89, Pasuruan 93949, Kaltim', '0330 6465 669'),
(00000000065, '199964965361864612', 'Farhunnisa Anggraini', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Gg. Ters. Kiaracondong No. 812, Palopo 87321, Sulbar', '0329 9100 7171'),
(00000000066, '195388600933742116', 'Edison Suryono S.Pd', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Jln. Barasak No. 692, Banjarmasin 93679, Sulteng', '(+62) 29 3946 895'),
(00000000067, '198858528030156027', 'Ami Safina Zulaika M.Kom.', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Kpg. Urip Sumoharjo No. 612, Sungai Penuh 64365, DKI', '023 4150 1792'),
(00000000068, '198750435266003305', 'Jabal Hadi Sihombing S.Gz', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Batako No. 673, Bekasi 97455, NTT', '(+62) 823 869 371'),
(00000000069, '197385303105532772', 'Cahyono Hidayat M.Ak', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Psr. Adisumarmo No. 218, Tidore Kepulauan 17502, DKI', '(+62) 865 7119 474'),
(00000000070, '196967332042409801', 'Dadap Putra', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Dk. Rajiman No. 234, Solok 93519, Kaltim', '025 5983 6276'),
(00000000071, '197915057702512041', 'Adinata Gangsar Hutasoit M.Farm', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Gg. Bagas Pati No. 892, Tual 40550, Jateng', '(+62) 736 1116 308'),
(00000000072, '198870759611664338', 'Wulan Maryati M.Kom.', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Psr. Basuki Rahmat  No. 702, Surakarta 55501, Sumbar', '0498 8309 648'),
(00000000073, '198356261537961654', 'Olga Winarno', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Jr. Sutami No. 748, Sibolga 18451, Sulut', '(+62) 352 9365 828'),
(00000000074, '198602637752804212', 'Tantri Hastuti', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Jayawijaya No. 952, Pagar Alam 63015, DIY', '(+62) 252 3586 935'),
(00000000075, '197114556997038492', 'Dimas Hasan Megantara S.E.', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Psr. Merdeka No. 204, Administrasi Jakarta Timur 63956, NTB', '0739 7291 3481'),
(00000000076, '197281461336990392', 'Ihsan Hutagalung', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jln. Basuki No. 665, Kotamobagu 72802, Jatim', '(+62) 399 2425 586'),
(00000000077, '198643923137918504', 'Balangga Gunawan', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. Dipatiukur No. 662, Banjarbaru 97892, Sumut', '(+62) 788 6556 498'),
(00000000078, '199307167831790973', 'Luluh Pradana', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. Rumah Sakit No. 892, Administrasi Jakarta Utara 29730, Sulteng', '0652 0543 988'),
(00000000079, '196403670444683879', 'Tina Lalita Padmasari M.M.', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jr. Antapani Lama No. 448, Administrasi Jakarta Timur 80112, Sulteng', '028 7114 6346'),
(00000000080, '198688983839235934', 'Kenari Sitompul', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Kpg. Jaksa No. 126, Padangpanjang 77689, Sumbar', '(+62) 475 4858 3608'),
(00000000081, '199109858675507424', 'Edi Nababan', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jr. Villa No. 96, Tomohon 13348, Jambi', '(+62) 448 7821 310'),
(00000000082, '199282411996791686', 'Edi Santoso', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Ds. Cikutra Timur No. 817, Pagar Alam 55751, Riau', '(+62) 638 8239 101'),
(00000000083, '196341935955696274', 'Cawuk Pangestu', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ds. Ters. Pasir Koja No. 128, Sibolga 86695, Kepri', '0382 3662 337'),
(00000000084, '197378006728717025', 'Luwes Jail Sitompul S.Farm', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Psr. Kebonjati No. 836, Padangsidempuan 16220, Banten', '0924 3213 965'),
(00000000085, '198002526792263221', 'Pandu Aris Waskita S.Pd', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Ki. Agus Salim No. 655, Jayapura 68697, Kaltara', '0531 2330 900'),
(00000000086, '197265641467225731', 'Vero Sihombing', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Gg. Bakhita No. 688, Bima 27746, Kaltara', '0969 3676 218'),
(00000000087, '197252915005663369', 'Viktor Irsad Pradipta', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Gg. Jagakarsa No. 939, Palangka Raya 60587, Kalsel', '0715 9288 3121'),
(00000000088, '197475073382927645', 'Mulyono Caturangga Saptono', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Gading No. 566, Bogor 39065, Jatim', '0274 1666 496'),
(00000000089, '195482557275676827', 'Mitra Tarihoran S.H.', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jr. Agus Salim No. 164, Padang 17751, Jambi', '(+62) 788 2081 0281'),
(00000000090, '198993202648918513', 'Salimah Rahayu', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Ds. Bakhita No. 76, Ambon 28694, Riau', '(+62) 320 4273 203'),
(00000000091, '195766146325260335', 'Fathonah Sabrina Pertiwi', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ds. Sugiono No. 897, Banjarbaru 95659, DIY', '0954 7393 948'),
(00000000092, '197856742766128594', 'Gamblang Habibi', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ki. BKR No. 674, Palembang 90932, Jateng', '0591 8148 147'),
(00000000093, '197937246439571096', 'Bakianto Enteng Megantara', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ki. Abdullah No. 893, Semarang 82999, Jambi', '0563 2415 544'),
(00000000094, '196007406757560051', 'Kawaya Situmorang', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jln. Gajah No. 598, Bitung 30820, Sultra', '0268 7402 532'),
(00000000095, '199569713531449259', 'Humaira Umi Uyainah M.Farm', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Ki. Padang No. 851, Jambi 51500, Aceh', '0293 5909 706'),
(00000000096, '195805677085573690', 'Raina Kasiyah Yuliarti', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ki. Sukajadi No. 702, Mojokerto 62825, Bengkulu', '0415 7078 915'),
(00000000097, '197191961095727513', 'Jaka Mahendra', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Dk. Umalas No. 222, Bogor 15161, NTB', '0942 0666 191'),
(00000000098, '195297948093759628', 'Raharja Reza Prakasa S.IP', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Dk. Gegerkalong Hilir No. 834, Metro 20767, Papua', '(+62) 354 7402 9254'),
(00000000099, '196678078423966017', 'Yuliana Winarsih', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Psr. Jaksa No. 968, Pariaman 22395, Kalsel', '0206 6403 766'),
(00000000100, '197726968040661514', 'Liman Uwais', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Kpg. B.Agam Dlm No. 43, Padang 25614, Pabar', '(+62) 343 9908 9109'),
(00000000101, '196465642645125987', 'Violet Kusmawati M.Kom.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. Bakhita No. 687, Bau-Bau 34803, Sumut', '(+62) 911 2897 5553'),
(00000000102, '195979612511463706', 'Ade Prasetya', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ki. Sutoyo No. 15, Probolinggo 32676, DKI', '0464 6117 470'),
(00000000103, '195045433840984434', 'Bakiono Tamba', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Raya Setiabudhi No. 508, Tasikmalaya 21624, Kaltim', '(+62) 252 3955 705'),
(00000000104, '195883064373144708', 'Muhammad Waskita', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ds. Jakarta No. 165, Sukabumi 47850, Sulbar', '(+62) 575 5204 084'),
(00000000105, '199608471501525105', 'Daru Irfan Wacana', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ds. Adisumarmo No. 980, Padangsidempuan 18942, Kalteng', '(+62) 701 8244 6119'),
(00000000106, '197500075443675505', 'Widya Padma Mandasari', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Kebangkitan Nasional No. 340, Serang 30374, Sulut', '(+62) 516 0333 2241'),
(00000000107, '196367536057773449', 'Betania Laksmiwati M.Ak', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Kpg. Sadang Serang No. 611, Cilegon 54603, Sulteng', '(+62) 374 8906 890'),
(00000000108, '198582736902784057', 'Dono Ramadan', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Industri No. 726, Sungai Penuh 51686, Jatim', '(+62) 20 0270 856'),
(00000000109, '199974602128779486', 'Agnes Amelia Pudjiastuti', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Wahidin No. 88, Parepare 86316, Aceh', '0430 1636 304'),
(00000000110, '195456581392606354', 'Mahfud Hidayat', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ki. Ciwastra No. 683, Banda Aceh 15410, Sulteng', '0850 9684 497'),
(00000000111, '198122596843503278', 'Harjaya Uda Simanjuntak', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Ketandan No. 956, Ambon 33981, Gorontalo', '0622 1500 157'),
(00000000112, '198431486867106346', 'Rina Yuniar', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Bank Dagang Negara No. 106, Pariaman 84316, Pabar', '0314 9751 4679'),
(00000000113, '199461892133587339', 'Rina Maya Purwanti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Dk. Abang No. 141, Pasuruan 73538, Sumsel', '(+62) 284 4524 940'),
(00000000114, '198135788379383573', 'Kariman Dadap Uwais M.TI.', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ki. Sentot Alibasa No. 63, Administrasi Jakarta Selatan 82756, Papua', '(+62) 320 6577 846'),
(00000000115, '196186112990387200', 'Daruna Wibowo', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Kebangkitan Nasional No. 568, Singkawang 88195, Maluku', '(+62) 814 8431 964'),
(00000000116, '195296542628166966', 'Rangga Tampubolon S.Ked', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jr. Zamrud No. 424, Semarang 40848, Riau', '0484 3643 7243'),
(00000000117, '195549345125851759', 'Violet Pratiwi S.T.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Kartini No. 265, Samarinda 31532, Papua', '(+62) 238 3683 427'),
(00000000118, '197850999703155876', 'Tami Uyainah S.Gz', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Baha No. 888, Makassar 28106, Bengkulu', '0837 6383 957'),
(00000000119, '199467231425310235', 'Raditya Budiyanto M.TI.', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ki. Bayam No. 164, Palopo 86950, Sulsel', '0479 2294 218'),
(00000000120, '195895328697394130', 'Hilda Siti Usada M.TI.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ds. Cikutra Barat No. 354, Payakumbuh 52103, NTT', '0985 4902 525'),
(00000000121, '195914892400089478', 'Bagya Utama S.I.Kom', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jln. Achmad No. 558, Administrasi Jakarta Pusat 20433, Malut', '(+62) 25 5502 8956'),
(00000000122, '199679471330987605', 'Uchita Titi Wahyuni', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Barat No. 72, Balikpapan 30856, Jatim', '(+62) 839 3860 883'),
(00000000123, '196841690364617428', 'Puji Suartini M.TI.', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Dk. W.R. Supratman No. 939, Padangpanjang 97272, Kepri', '(+62) 573 5936 3127'),
(00000000124, '197515408312798920', 'Cindy Kania Safitri M.M.', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Baik No. 400, Bogor 14335, Papua', '0418 7403 1001'),
(00000000125, '197988058827470369', 'Yunita Nuraini', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ds. Ki Hajar Dewantara No. 578, Medan 30297, DIY', '0226 3657 147'),
(00000000126, '198625828743971641', 'Artanto Drajat Ardianto S.Psi', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Ketandan No. 158, Denpasar 88194, Kaltara', '(+62) 969 1504 046'),
(00000000127, '195760510919441053', 'Aisyah Mandasari', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ds. Abdul Muis No. 768, Dumai 17931, Kepri', '0507 4690 510'),
(00000000128, '199081652957352366', 'Lala Zulaika', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ds. Mulyadi No. 776, Payakumbuh 73512, Papua', '0658 9863 9746'),
(00000000129, '196103707612163877', 'Rini Rahayu', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Bah Jaya No. 282, Batam 60092, Jatim', '(+62) 527 9725 848'),
(00000000130, '196303659888692864', 'Winda Susanti', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ds. Barat No. 445, Solok 10074, Jambi', '0203 0334 0415'),
(00000000131, '199288292856091062', 'Pia Irma Suartini', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Kusmanto No. 651, Bontang 72829, Sumut', '(+62) 333 6111 902'),
(00000000132, '199549910810204061', 'Upik Hardiansyah', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Elang No. 440, Yogyakarta 98154, Kalsel', '0818 0250 316'),
(00000000133, '199841523860131697', 'Oni Pertiwi', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Kpg. Bakhita No. 346, Ternate 64663, DKI', '(+62) 817 5032 167'),
(00000000134, '196383182442950502', 'Bakiadi Cawuk Napitupulu S.Ked', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Psr. Bagis Utama No. 279, Banjar 14938, Sulsel', '(+62) 814 7065 1791'),
(00000000135, '198454350311715349', 'Rangga Hasim Najmudin S.H.', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Psr. W.R. Supratman No. 517, Administrasi Jakarta Timur 93285, Kepri', '(+62) 23 7707 4091'),
(00000000136, '197957197995996235', 'Jumari Siregar', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ki. Nangka No. 419, Pekanbaru 90102, NTB', '0460 2257 1310'),
(00000000137, '196398315142207846', 'Zelaya Melani M.Ak', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Ters. Kiaracondong No. 473, Administrasi Jakarta Barat 90072, Papua', '0654 2584 1294'),
(00000000138, '195191826696701742', 'Cawisono Darmaji Sitompul S.Pt', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Bakin No. 960, Palangka Raya 77976, Sultra', '(+62) 25 0649 9687'),
(00000000139, '197711677641616555', 'Jati Wijaya', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ki. Baya Kali Bungur No. 330, Batam 94459, Riau', '0512 3703 786'),
(00000000140, '196384080179504592', 'Qori Diah Usamah S.Pd', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Baiduri No. 325, Cimahi 50398, Kalsel', '(+62) 28 5739 861'),
(00000000141, '199570286580230933', 'Jamalia Novi Haryanti', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ki. Dipenogoro No. 155, Blitar 85250, Pabar', '0381 4965 175'),
(00000000142, '199358105004728600', 'Jamil Winarno S.Sos', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. Tambak No. 278, Depok 98738, Maluku', '0740 3877 9527'),
(00000000143, '198562071706475659', 'Cagak Jail Prabowo S.I.Kom', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Dk. Abdullah No. 413, Banjar 30426, Kalbar', '0787 9846 716'),
(00000000144, '198817745498558118', 'Reksa Anggriawan S.E.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Barat No. 361, Palangka Raya 94037, Kepri', '0878 837 807'),
(00000000145, '198116851441625536', 'Fitriani Samiah Mayasari M.TI.', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Baabur Royan No. 111, Palangka Raya 51793, DIY', '0561 8776 1214'),
(00000000146, '199047888633158086', 'Nabila Titi Yulianti M.Pd', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Gg. Laswi No. 10, Palu 39831, Babel', '0627 5699 950'),
(00000000147, '195639005329177181', 'Respati Irawan M.Pd', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. Sam Ratulangi No. 560, Tasikmalaya 10412, Lampung', '0206 1466 1518'),
(00000000148, '195117980579314107', 'Adika Kusumo S.Gz', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Psr. Kalimantan No. 247, Pekalongan 41453, Sulbar', '0988 4487 666'),
(00000000149, '198613694068396273', 'Hamima Gina Rahayu', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ki. Raya Ujungberung No. 105, Administrasi Jakarta Barat 70264, Gorontalo', '0702 7772 0502'),
(00000000150, '197634293971751013', 'Nugraha Maras Wacana', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Dk. K.H. Wahid Hasyim (Kopo) No. 228, Pariaman 53011, Pabar', '022 2612 3521'),
(00000000151, '198580219010696250', 'Ira Jane Puspasari S.Farm', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ki. Dipatiukur No. 809, Sabang 22047, Kalteng', '0766 5512 4278'),
(00000000152, '195231106347358325', 'Cager Wacana M.Ak', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Banceng Pondok No. 867, Gorontalo 12547, Sulsel', '0717 6089 7116'),
(00000000153, '199382987063578562', 'Limar Latupono S.I.Kom', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Sumpah Pemuda No. 846, Padangpanjang 58198, Jateng', '(+62) 993 6207 207'),
(00000000154, '198914925104525790', 'Hadi Karsa Saefullah S.H.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. K.H. Maskur No. 706, Sorong 92196, Pabar', '0214 6975 755'),
(00000000155, '195699872706255272', 'Julia Astuti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Abdullah No. 888, Serang 34228, Papua', '0996 4201 523'),
(00000000156, '196120416857278985', 'Tami Tantri Wahyuni', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Antapani Lama No. 939, Palopo 84909, Kalteng', '(+62) 795 4436 909'),
(00000000157, '195654243245611076', 'Kadir Jailani', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. Baing No. 678, Samarinda 24429, Jatim', '0807 185 344'),
(00000000158, '197562468293049261', 'Kasiyah Yulianti', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Gg. Tambun No. 474, Bima 74811, Kaltara', '(+62) 702 9235 118'),
(00000000159, '197528276744460000', 'Wira Langgeng Sitompul M.Pd', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Kpg. Ki Hajar Dewantara No. 379, Denpasar 42586, Sumsel', '(+62) 362 6182 7882'),
(00000000160, '196875706687286075', 'Lurhur Kambali Ardianto', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jln. Bazuka Raya No. 607, Tangerang 19038, Lampung', '(+62) 437 6931 4525'),
(00000000161, '198737374326794581', 'Galih Maheswara', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Psr. Baranang Siang Indah No. 540, Bitung 38371, Sulteng', '0276 0061 6350'),
(00000000162, '199539190052729643', 'Nyana Gatra Simbolon', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ds. Abdul. Muis No. 102, Depok 15814, Malut', '(+62) 25 2335 7352'),
(00000000163, '199042100210758147', 'Eli Rina Halimah S.T.', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jr. Baranang Siang No. 91, Pagar Alam 23084, Aceh', '(+62) 861 4792 750'),
(00000000164, '197030053434964689', 'Surya Pranowo', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Psr. Haji No. 218, Sabang 65705, Sumut', '0469 9871 3435'),
(00000000165, '196626105919434099', 'Ulya Nurdiyanti', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Teuku Umar No. 48, Administrasi Jakarta Selatan 79935, Sultra', '(+62) 24 6667 4179'),
(00000000166, '197397275799362125', 'Yuni Nasyidah', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Kpg. Sumpah Pemuda No. 433, Makassar 49661, Bali', '(+62) 387 8833 1695'),
(00000000167, '196126501315956414', 'Cakrawangsa Ikin Thamrin', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Bakti No. 595, Pekalongan 66078, DKI', '(+62) 388 2557 5019'),
(00000000168, '195994548215646083', 'Edison Rizki Jailani M.M.', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Kpg. Untung Suropati No. 841, Palangka Raya 62357, Kalsel', '0881 6272 6269'),
(00000000169, '195285060119648445', 'Galang Salahudin S.Kom', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Dk. Wora Wari No. 832, Kupang 29891, Lampung', '0305 1364 1605'),
(00000000170, '195624740954102295', 'Bala Prayoga S.H.', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ds. Baing No. 654, Bau-Bau 12973, Papua', '(+62) 921 2618 680'),
(00000000171, '199037841165500320', 'Sari Tari Sudiati', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Kpg. Banal No. 652, Administrasi Jakarta Selatan 28700, Lampung', '(+62) 233 1128 614'),
(00000000172, '199181623287503907', 'Makara Lazuardi', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ki. Setiabudhi No. 132, Bengkulu 10677, Maluku', '0669 0660 011'),
(00000000173, '197807759850804452', 'Hesti Maryati M.Ak', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Kpg. Sugiyopranoto No. 213, Metro 60288, Kalsel', '0672 9117 9465'),
(00000000174, '199855331800726737', 'Radit Widodo', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jln. Babakan No. 666, Mojokerto 37614, Sulteng', '022 0015 9841'),
(00000000175, '197050372957630232', 'Niyaga Ghani Santoso', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Kpg. Abdullah No. 930, Bogor 16343, Lampung', '0499 0660 8952'),
(00000000176, '196648700373519741', 'Victoria Purwanti', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. Bagis Utama No. 177, Sibolga 97485, Sumut', '0702 3876 7204'),
(00000000177, '196820531350673377', 'Siti Kusmawati', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ki. Camar No. 108, Pariaman 45552, Pabar', '0686 4983 9136'),
(00000000178, '198733443493424460', 'Jessica Icha Haryanti M.M.', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ds. Pahlawan No. 49, Ambon 22235, NTB', '0500 5633 813'),
(00000000179, '198329073098951734', 'Olivia Prastuti', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Dk. Adisucipto No. 917, Langsa 54770, Malut', '(+62) 863 6050 1857'),
(00000000180, '197687994327108695', 'Suci Ciaobella Hariyah', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jln. Fajar No. 467, Semarang 11677, Aceh', '(+62) 637 5060 396'),
(00000000181, '195183543953770531', 'Laras Wahyuni', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. R.E. Martadinata No. 205, Sungai Penuh 59193, Kepri', '0948 8727 0562'),
(00000000182, '198757357308647749', 'Raden Wawan Utama S.Farm', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Kpg. Otto No. 859, Jambi 37516, Pabar', '0512 8507 393'),
(00000000183, '197347180033289011', 'Jessica Maryati', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Raya Ujungberung No. 741, Pekanbaru 50242, Aceh', '0988 7331 020'),
(00000000184, '197786752757965829', 'Bagya Waluyo', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jln. Labu No. 508, Salatiga 25109, Jatim', '(+62) 22 4205 7981'),
(00000000185, '195195674178342617', 'Jamil Gunawan', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Bhayangkara No. 661, Padangpanjang 70574, Sulteng', '0324 1035 3056'),
(00000000186, '197447392738097083', 'Omar Permadi', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Bacang No. 837, Gorontalo 66294, Riau', '0877 9555 7928'),
(00000000187, '197464266276934482', 'Lutfan Nababan', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Baya Kali Bungur No. 49, Palembang 28440, Maluku', '(+62) 905 6708 5682'),
(00000000188, '197035151651998918', 'Kunthara Nalar Habibi S.Gz', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Kpg. Ekonomi No. 627, Administrasi Jakarta Utara 10447, Riau', '022 4090 7954'),
(00000000189, '198989073785271456', 'Warta Tri Prayoga', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jr. Ters. Kiaracondong No. 150, Bengkulu 17779, Kepri', '(+62) 706 8645 4027'),
(00000000190, '197070741684438151', 'Galiono Opan Prabowo S.Ked', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Dk. Jaksa No. 409, Pekalongan 74550, Maluku', '0205 4559 315'),
(00000000191, '195171769786663580', 'Oliva Riyanti', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Sam Ratulangi No. 63, Bogor 12950, Lampung', '(+62) 971 1692 0250'),
(00000000192, '198365799302060861', 'Salman Dabukke', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Bayam No. 282, Sorong 64975, DKI', '020 0532 792'),
(00000000193, '197468885300607250', 'Hamima Prastuti M.Kom.', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Dk. Pelajar Pejuang 45 No. 766, Pekanbaru 40912, Papua', '(+62) 585 8016 4295'),
(00000000194, '195262473531385886', 'Imam Tomi Wahyudin', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Kyai Mojo No. 915, Binjai 15546, Kalteng', '(+62) 827 0910 3539'),
(00000000195, '199221158573851486', 'Garda Uwais', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Tentara Pelajar No. 729, Kupang 86993, Banten', '0885 997 250'),
(00000000196, '199387642465574753', 'Wardaya Hasim Marpaung', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Kpg. Merdeka No. 112, Kendari 39100, DIY', '(+62) 672 3051 6531'),
(00000000197, '195605187624286154', 'Wani Puspa Rahayu M.Ak', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. Flora No. 784, Bandung 77657, Jatim', '(+62) 222 4019 7991'),
(00000000198, '196286153582373757', 'Usyi Ira Farida S.Pt', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Bank Dagang Negara No. 204, Medan 50072, Kalbar', '0872 3913 6117'),
(00000000199, '195280207482118599', 'Daniswara Mangunsong M.Pd', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Dk. Dipatiukur No. 617, Gorontalo 85046, Sulut', '0331 9728 7116'),
(00000000200, '198549191683001788', 'Ratna Lailasari', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Madrasah No. 263, Tidore Kepulauan 81254, Malut', '0744 2052 4093'),
(00000000201, '198807486975862587', 'Nasim Hutagalung', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Basket No. 234, Sawahlunto 88195, Banten', '0826 246 394'),
(00000000202, '199040493064371233', 'Chelsea Hassanah', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Kpg. Gajah Mada No. 540, Pagar Alam 25804, Sumbar', '(+62) 613 4585 922'),
(00000000203, '196912415313639398', 'Zulfa Nasyidah', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 575, Pangkal Pinang 47636, Kepri', '(+62) 784 7151 4273'),
(00000000204, '198086000021316589', 'Warji Najmudin M.TI.', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Bank Dagang Negara No. 830, Pekalongan 96380, Sulbar', '0347 5839 170'),
(00000000205, '197070238432370934', 'Argono Luluh Pranowo', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ds. Daan No. 506, Tanjungbalai 82981, Kaltara', '0988 7529 6398'),
(00000000206, '196073306705664907', 'Dimaz Prasetyo', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Dk. Raya Setiabudhi No. 542, Palangka Raya 56870, Jambi', '0313 6912 274'),
(00000000207, '197566870920583524', 'Talia Mulyani', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jr. Lembong No. 134, Pematangsiantar 93839, Sumbar', '0406 3703 3133'),
(00000000208, '196288721433404412', 'Michelle Winarsih', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jln. Lada No. 291, Tidore Kepulauan 88493, Bali', '(+62) 676 4386 355'),
(00000000209, '198889732950004546', 'Simon Mustofa', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Dewi Sartika No. 416, Bengkulu 82406, Gorontalo', '0342 3243 1770'),
(00000000210, '198356844002746345', 'Eka Wahyuni', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Dk. Daan No. 383, Palopo 23435, Kaltim', '0300 6851 730'),
(00000000211, '198646112734136541', 'Halim Nasab Sitompul', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ds. Rumah Sakit No. 866, Bontang 99472, Pabar', '0556 2135 7618'),
(00000000212, '199276346212218673', 'Panji Waskita', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jr. Pattimura No. 140, Tasikmalaya 67222, Bengkulu', '029 2155 216'),
(00000000213, '199339663194801695', 'Kuncara Firgantoro', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Dk. Banal No. 699, Ambon 99743, NTB', '0872 2678 7881'),
(00000000214, '197165348820936786', 'Anom Lazuardi S.E.I', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Merdeka No. 98, Mojokerto 62472, NTT', '0420 4186 281'),
(00000000215, '197938025917481188', 'Jaswadi Saragih', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ki. Sugiyopranoto No. 831, Kupang 87228, Kaltim', '0910 4754 708'),
(00000000216, '199998313715765897', 'Darsirah Hidayanto S.H.', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jr. Bahagia  No. 336, Balikpapan 26076, Sumbar', '0900 4917 5416'),
(00000000217, '196650513855344342', 'Suci Yuliarti', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Warga No. 506, Kotamobagu 55691, Sulut', '(+62) 274 1258 667'),
(00000000218, '197428745143222696', 'Ratih Kiandra Yulianti', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Kpg. Sentot Alibasa No. 673, Bandung 92229, Aceh', '0528 6451 6521'),
(00000000219, '198828148171919853', 'Dian Andriani', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. Jagakarsa No. 260, Padang 93317, Jatim', '0225 9399 238'),
(00000000220, '197794715855905107', 'Ellis Utami', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jr. Bacang No. 117, Padangsidempuan 44047, Sumsel', '0223 1023 232'),
(00000000221, '196429134248632574', 'Fitria Puspasari', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Wora Wari No. 989, Bitung 75378, DIY', '0847 5022 3846'),
(00000000222, '195242795037379840', 'Sabar Hutapea', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. Bakau No. 776, Tasikmalaya 99649, Sulsel', '0568 6916 682'),
(00000000223, '199820214257044923', 'Salimah Malika Nasyiah S.Farm', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Setiabudhi No. 156, Surabaya 73218, Sulsel', '0419 4585 3123'),
(00000000224, '196117363755341920', 'Prasetya Anggriawan', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. S. Parman No. 308, Tidore Kepulauan 20140, Kalsel', '(+62) 708 6558 932'),
(00000000225, '199394506999453824', 'Siti Mardhiyah', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Gg. Kartini No. 622, Samarinda 91163, Kaltim', '(+62) 259 1219 8763'),
(00000000226, '199763134512521934', 'Faizah Anggraini', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Psr. Basket No. 911, Yogyakarta 27603, Banten', '0261 5508 642'),
(00000000227, '198519149145567224', 'Ghaliyati Kamaria Handayani S.T.', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Pasirkoja No. 937, Ternate 46061, Kalteng', '0549 6714 4926'),
(00000000228, '197875925113905408', 'Wulan Hartati', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. Acordion No. 757, Padang 13486, NTT', '0292 9891 717'),
(00000000229, '195806919217761416', 'Farhunnisa Ophelia Usamah', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Laswi No. 424, Subulussalam 41497, Aceh', '(+62) 635 5518 5478'),
(00000000230, '198163021704011499', 'Gangsa Nyana Mahendra M.Pd', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Bagas Pati No. 751, Kediri 13599, Jambi', '(+62) 780 7594 182'),
(00000000231, '196497121147858657', 'Syahrini Yuniar', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ki. Baja Raya No. 685, Langsa 70726, Aceh', '(+62) 836 914 767'),
(00000000232, '196285851746617415', 'Gina Winarsih', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jr. Baladewa No. 904, Tanjung Pinang 59273, Kaltim', '0422 2425 2454'),
(00000000233, '195851974698677565', 'Yahya Damar Putra S.Gz', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ds. Bakhita No. 814, Manado 37266, Pabar', '0567 7282 022'),
(00000000234, '196905163258311244', 'Ika Yolanda', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Bagas Pati No. 71, Jayapura 46235, Maluku', '(+62) 710 6669 822'),
(00000000235, '199178762614142454', 'Maida Usada', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Bhayangkara No. 294, Sawahlunto 36430, Jabar', '(+62) 701 6781 413'),
(00000000236, '196528039722400057', 'Candra Ian Wasita', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jln. Adisumarmo No. 553, Administrasi Jakarta Barat 74734, Sumsel', '(+62) 977 9088 679'),
(00000000237, '197215813021740003', 'Galiono Saragih', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Dk. S. Parman No. 649, Binjai 42714, Bali', '(+62) 266 9615 8595'),
(00000000238, '195398084088585817', 'Cinta Wulan Haryanti S.I.Kom', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ds. Moch. Yamin No. 19, Parepare 18574, Papua', '0593 9612 466'),
(00000000239, '198998671569328568', 'Bella Kusmawati', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Bara No. 772, Palembang 24202, Kalsel', '0501 6577 5243'),
(00000000240, '199742821582366557', 'Yunita Icha Yolanda', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ds. Bhayangkara No. 507, Denpasar 53394, NTB', '(+62) 960 5180 935'),
(00000000241, '197010619348687916', 'Ega Jaiman Firgantoro', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Zamrud No. 812, Sungai Penuh 14723, Malut', '0684 3906 579'),
(00000000242, '199642725952474268', 'Opan Saptono', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ki. Surapati No. 977, Palopo 12253, Kaltara', '(+62) 550 0490 973'),
(00000000243, '196341233279041295', 'Hasta Damu Nashiruddin', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Gg. Uluwatu No. 105, Lhokseumawe 74152, Riau', '0547 5252 9820'),
(00000000244, '199971126756147083', 'Elisa Winarsih', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Yogyakarta No. 278, Banjarbaru 93182, Gorontalo', '0766 3098 897'),
(00000000245, '197410229577035665', 'Ani Fitria Hasanah M.Pd', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Kpg. Adisumarmo No. 905, Subulussalam 90564, Bengkulu', '(+62) 200 4831 947'),
(00000000246, '195539086866397785', 'Jelita Zulaika', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Suryo Pranoto No. 89, Kupang 72938, Lampung', '022 5450 502'),
(00000000247, '196928613858010698', 'Elvina Wulandari', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Kpg. Pelajar Pejuang 45 No. 808, Samarinda 54820, Jatim', '(+62) 806 183 744'),
(00000000248, '197640024621774409', 'Hesti Ana Halimah S.Kom', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Babah No. 603, Padangpanjang 22303, Jambi', '(+62) 436 1131 4748'),
(00000000249, '199320620802399834', 'Tania Usada', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. Wahidin Sudirohusodo No. 128, Bandar Lampung 43822, Sumsel', '0981 0790 700'),
(00000000250, '199472450596418135', 'Panji Haryanto', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ki. Bara No. 146, Sibolga 62273, Riau', '(+62) 28 0183 8715'),
(00000000251, '196719282530106921', 'Caraka Saputra', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jr. Achmad No. 192, Metro 17104, Kalsel', '(+62) 595 8023 7547'),
(00000000252, '195236828367552606', 'Zamira Titi Melani', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Kpg. Basuki No. 626, Gunungsitoli 38763, Jambi', '025 5872 743'),
(00000000253, '197606882902946705', 'Taufik Winarno', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Jr. Raden No. 82, Bogor 67275, Jabar', '0743 1793 975'),
(00000000254, '197912879391171681', 'Siti Widya Maryati', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Psr. Dago No. 231, Payakumbuh 77997, Malut', '(+62) 525 4873 6349'),
(00000000255, '195973117730774447', 'Lili Melani', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Dk. Zamrud No. 986, Binjai 94599, Sumsel', '0422 9814 439'),
(00000000256, '195566976168966622', 'Darman Yoga Prasetya S.Psi', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ki. Honggowongso No. 521, Payakumbuh 64992, Lampung', '0853 8661 075'),
(00000000257, '197001835847420295', 'Michelle Salsabila Usada', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Laksamana No. 287, Mojokerto 18620, Papua', '(+62) 728 6866 5922'),
(00000000258, '199242212484432095', 'Niyaga Maryadi', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Psr. Bhayangkara No. 605, Padangsidempuan 28012, Gorontalo', '(+62) 287 5547 0558'),
(00000000259, '198975324952846246', 'Syahrini Nuraini', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ki. Setia Budi No. 503, Batu 41803, Kalbar', '0556 1533 3602'),
(00000000260, '196551018792748885', 'Carla Wijayanti S.Pt', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Psr. Yap Tjwan Bing No. 550, Cirebon 80011, Kaltara', '0676 9030 664'),
(00000000261, '195433826449782176', 'Viktor Mulyono Prakasa M.TI.', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Ters. Pasir Koja No. 304, Tarakan 51628, Aceh', '0484 3906 511'),
(00000000262, '198595180382637735', 'Eka Widiastuti M.M.', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ki. Reksoninten No. 501, Tebing Tinggi 69520, Sulteng', '(+62) 428 5813 6081'),
(00000000263, '199476648457108327', 'Cici Wulandari', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Jayawijaya No. 461, Pematangsiantar 76068, Pabar', '0220 4067 7104'),
(00000000264, '196858649182985888', 'Rachel Puput Nasyidah S.Psi', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ki. K.H. Wahid Hasyim (Kopo) No. 477, Salatiga 38225, Bengkulu', '0902 8307 7119'),
(00000000265, '196951585908102974', 'Fitriani Yunita Utami S.I.Kom', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Rajiman No. 121, Singkawang 65912, Sulsel', '(+62) 804 6628 433'),
(00000000266, '198177238056128520', 'Vicky Yuliarti', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Lembong No. 822, Padang 82682, Maluku', '(+62) 723 1384 749'),
(00000000267, '196194578183543595', 'Mitra Luis Natsir', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Gg. Sutarjo No. 186, Pematangsiantar 33273, NTT', '0928 4187 9322'),
(00000000268, '197896888755506237', 'Tami Puspita', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jln. Jaksa No. 950, Prabumulih 21195, Sulbar', '(+62) 450 3404 728'),
(00000000269, '198382934982955488', 'Siti Suryatmi S.I.Kom', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Warga No. 446, Bogor 38136, Sultra', '0802 5888 2010'),
(00000000270, '198901955745351056', 'Niyaga Tamba', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Gg. Abdul No. 699, Singkawang 69323, Sulbar', '(+62) 552 5356 304'),
(00000000271, '197018033356020145', 'Ellis Puspita', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 901, Pekalongan 33838, NTT', '(+62) 445 7218 572'),
(00000000272, '199671816696260222', 'Ella Hafshah Palastri', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Kpg. Bakin No. 447, Administrasi Jakarta Pusat 63167, Papua', '025 7453 7645'),
(00000000273, '196020345560866309', 'Samiah Novitasari S.I.Kom', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Jr. Abdul. Muis No. 225, Bandar Lampung 83966, Jatim', '(+62) 400 9767 398'),
(00000000274, '195948975652977841', 'Darsirah Tugiman Sirait M.Farm', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ds. Tubagus Ismail No. 615, Sorong 15150, Pabar', '0222 9727 3366'),
(00000000275, '196526531472714595', 'Lanang Mandala', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Psr. Urip Sumoharjo No. 244, Sabang 10610, Jabar', '0270 7213 749'),
(00000000276, '196302782921145612', 'Fitriani Wulandari S.H.', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ds. Baing No. 663, Kendari 66349, Banten', '0813 361 313'),
(00000000277, '199336311598881922', 'Harsanto Haryanto', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Babakan No. 758, Banjarbaru 82427, Maluku', '0771 4252 383'),
(00000000278, '199881551043792004', 'Gasti Silvia Widiastuti', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Babakan No. 750, Lhokseumawe 39518, Sumbar', '(+62) 354 9218 483'),
(00000000279, '195453894953041314', 'Kamaria Talia Riyanti', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Kpg. Bagas Pati No. 406, Lhokseumawe 41136, Sultra', '0391 4284 982'),
(00000000280, '199156086830049214', 'Cager Mahendra', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Umalas No. 802, Sibolga 46948, NTT', '(+62) 204 9503 2333'),
(00000000281, '196042216412408175', 'Adiarja Marpaung M.Pd', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Psr. Baabur Royan No. 809, Singkawang 77641, DKI', '026 9711 1019'),
(00000000282, '197442676895913532', 'Ajimat Rendy Hardiansyah M.TI.', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ds. Samanhudi No. 623, Solok 19415, Gorontalo', '(+62) 473 9460 764'),
(00000000283, '196234710353037409', 'Oni Gasti Puspasari', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Gg. Cikutra Barat No. 390, Mojokerto 61441, Jabar', '0696 3970 1180'),
(00000000284, '197051945052387179', 'Tina Safitri', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Kartini No. 518, Padangpanjang 81496, Bali', '021 3937 4570'),
(00000000285, '195670038171748875', 'Zulaikha Lailasari S.Pd', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Psr. Gatot Subroto No. 211, Kotamobagu 29234, Babel', '0914 4691 0892'),
(00000000286, '197060964082166156', 'Gawati Rahimah', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ds. Adisumarmo No. 16, Parepare 12598, Jateng', '0950 0542 2562');
INSERT INTO `tb_pegawai` (`id_pegawai`, `nip`, `nama`, `bagian`, `pangkat`, `jabatan`, `alamat`, `telp`) VALUES
(00000000287, '197141730709966051', 'Siti Rahmi Maryati', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jln. Sam Ratulangi No. 810, Bitung 27615, Kaltim', '(+62) 461 7817 5702'),
(00000000288, '195989567818445164', 'Adiarja Sirait', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jln. Bayam No. 569, Bogor 34732, Jatim', '(+62) 833 5615 9665'),
(00000000289, '196619788503933645', 'Tasnim Sihotang', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Yogyakarta No. 583, Bandar Lampung 98171, Kaltara', '(+62) 216 7023 4824'),
(00000000290, '199076889911365586', 'Betania Pertiwi M.M.', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Reksoninten No. 403, Pekanbaru 50867, NTB', '0951 3639 918'),
(00000000291, '196939753672063675', 'Ade Mutia Permata', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Wora Wari No. 869, Palembang 24267, Jatim', '0509 3584 7002'),
(00000000292, '196134254825930095', 'Wulan Laksmiwati M.Farm', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Uluwatu No. 824, Bitung 60799, Papua', '0922 5460 0026'),
(00000000293, '195084729901683625', 'Kayla Susanti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Dk. Sudirman No. 2, Administrasi Jakarta Selatan 10629, Sulteng', '(+62) 355 4394 456'),
(00000000294, '196647488164786062', 'Digdaya Narji Sitorus S.Kom', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Otto No. 851, Bekasi 13508, Pabar', '0208 1828 185'),
(00000000295, '198635330315734834', 'Aurora Usamah', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ki. Acordion No. 452, Pekanbaru 93507, DKI', '(+62) 583 8524 8466'),
(00000000296, '199996878956714667', 'Amalia Haryanti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Lumban Tobing No. 236, Palopo 14924, Bengkulu', '0320 0395 469'),
(00000000297, '196666366136535046', 'Tina Haryanti', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Jln. Lada No. 251, Pematangsiantar 50873, Malut', '0517 4060 9241'),
(00000000298, '197948520704456260', 'Cawisadi Jindra Nainggolan S.Pd', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Abdul. Muis No. 718, Pekalongan 25143, Malut', '(+62) 481 6327 854'),
(00000000299, '197881107361739746', 'Padmi Riyanti S.I.Kom', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. Abang No. 446, Bontang 63097, Jabar', '(+62) 521 3213 764'),
(00000000300, '196660709271285360', 'Kemal Maryadi S.E.I', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Jln. Cokroaminoto No. 126, Padangpanjang 53467, Malut', '020 0958 2806'),
(00000000301, '197301648271269697', 'Enteng Najmudin', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Otto No. 405, Denpasar 19414, Jatim', '(+62) 855 850 532'),
(00000000302, '195022416548393892', 'Mursita Sitompul', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Gg. Babadan No. 696, Yogyakarta 97689, NTB', '(+62) 472 1928 542'),
(00000000303, '198628389014075858', 'Ifa Kusmawati', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ds. Imam Bonjol No. 67, Dumai 10356, NTB', '(+62) 259 5254 3738'),
(00000000304, '198332372967458831', 'Amalia Sudiati', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jr. Bayan No. 878, Tual 99469, Sulut', '0396 0440 7468'),
(00000000305, '197551995332489697', 'Ana Rahmawati S.IP', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ds. Baha No. 572, Gunungsitoli 96124, Kaltim', '0948 0695 3920'),
(00000000306, '195518105255116531', 'Jessica Nova Astuti', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Psr. Juanda No. 220, Pematangsiantar 88061, Malut', '(+62) 720 4792 137'),
(00000000307, '198430766870724467', 'Victoria Aryani', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ds. Bappenas No. 456, Pontianak 92584, Pabar', '(+62) 544 0754 727'),
(00000000308, '199806402491897482', 'Taufan Cahyanto Prasetya', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ds. Madrasah No. 716, Sibolga 53034, Babel', '0228 0828 2010'),
(00000000309, '198453952674417114', 'Mustofa Adriansyah M.Pd', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Gajah No. 714, Pekalongan 75777, Sumbar', '021 6270 1517'),
(00000000310, '195577847079627418', 'Gara Naradi Wibowo S.E.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Bara No. 809, Salatiga 22088, Riau', '0979 0513 321'),
(00000000311, '197625124358044909', 'Yuni Gawati Hartati', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Bass No. 569, Gunungsitoli 93460, Kaltara', '0875 5614 1905'),
(00000000312, '195995189658550337', 'Karma Eko Habibi', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Jr. Baik No. 539, Singkawang 12661, Jambi', '(+62) 363 9200 0398'),
(00000000313, '195168018081386057', 'Pangeran Hasim Jailani', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jr. Laswi No. 454, Samarinda 33068, Sulbar', '0539 2952 5842'),
(00000000314, '198476589910619127', 'Karman Hutapea S.T.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Gg. Krakatau No. 555, Kupang 98392, Kalteng', '0761 0380 2230'),
(00000000315, '199399956323958679', 'Sarah Astuti S.E.I', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Wahidin No. 836, Sukabumi 53246, Kalbar', '(+62) 304 9408 735'),
(00000000316, '197417125053535308', 'Zulaikha Ulva Mandasari', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Psr. Baja Raya No. 662, Padangpanjang 64222, Bengkulu', '(+62) 25 8757 523'),
(00000000317, '199774899856615570', 'Koko Galar Waluyo S.Kom', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Gg. Gambang No. 115, Bekasi 88773, NTT', '0801 4958 360'),
(00000000318, '196589690114060537', 'Eka Titi Kuswandari', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Psr. Baranang Siang Indah No. 445, Sukabumi 61367, Papua', '(+62) 642 1963 611'),
(00000000319, '199945171853167080', 'Tomi Daniswara Mustofa S.T.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jr. Acordion No. 93, Sabang 93959, Sultra', '(+62) 387 1697 062'),
(00000000320, '196576550015517168', 'Erik Tampubolon', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Gg. Suryo Pranoto No. 949, Ambon 33445, Jabar', '(+62) 265 2867 271'),
(00000000321, '196200668475542030', 'Endah Melani', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Kpg. Cikutra Barat No. 727, Madiun 28087, Sumbar', '0570 9319 894'),
(00000000322, '195608583778355567', 'Julia Yuniar', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Cokroaminoto No. 779, Tarakan 44039, Bengkulu', '(+62) 20 2718 704'),
(00000000323, '196926993473570646', 'Marwata Simanjuntak', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Kpg. Tambak No. 790, Palopo 37635, Jabar', '0663 2920 2670'),
(00000000324, '197511603122074794', 'Titi Cici Aryani S.Pd', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jr. Kusmanto No. 938, Bau-Bau 94534, Sulteng', '0567 1835 8541'),
(00000000325, '197850434634750322', 'Gaduh Rajasa S.E.', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Gg. Halim No. 805, Kotamobagu 98843, Jabar', '(+62) 441 6488 1014'),
(00000000326, '197557254454992211', 'Damu Haryanto', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Psr. Muwardi No. 438, Jayapura 58152, Jabar', '(+62) 953 4294 044'),
(00000000327, '199609233107861107', 'Gilda Laksmiwati', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. Bayam No. 329, Medan 36671, Kalbar', '(+62) 648 1227 735'),
(00000000328, '199294862620462263', 'Vino Manullang', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Dk. Jagakarsa No. 768, Blitar 65535, DKI', '0649 8972 665'),
(00000000329, '198827213664155158', 'Bancar Wibowo', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ds. Jend. Sudirman No. 981, Pontianak 52366, Jateng', '0894 773 389'),
(00000000330, '197294851120649517', 'Perkasa Maulana', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Banceng Pondok No. 162, Singkawang 49284, Sumsel', '(+62) 899 1279 149'),
(00000000331, '195315830693024573', 'Umaya Najmudin M.M.', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Kpg. Salak No. 551, Bogor 80115, Pabar', '0320 0602 0327'),
(00000000332, '196738124100237434', 'Leo Niyaga Wibowo M.Farm', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Kpg. Basoka No. 183, Bogor 34920, Banten', '(+62) 360 4238 739'),
(00000000333, '195959897129329562', 'Maras Setiawan', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Gg. Yos Sudarso No. 420, Pagar Alam 15666, Riau', '(+62) 923 3669 4653'),
(00000000334, '199171729765017221', 'Lulut Bakijan Prabowo S.Psi', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ds. Peta No. 806, Padangsidempuan 89802, Kaltara', '(+62) 630 0577 932'),
(00000000335, '195365692468642749', 'Farhunnisa Rahimah', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. Eka No. 864, Bogor 84187, Malut', '0677 7406 261'),
(00000000336, '199800602191323003', 'Jatmiko Dirja Napitupulu M.Farm', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jln. Pacuan Kuda No. 118, Mojokerto 68550, Bengkulu', '0963 9066 2813'),
(00000000337, '195427472536289311', 'Dariati Suryono S.Ked', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jln. Baya Kali Bungur No. 372, Bekasi 19213, Bengkulu', '(+62) 839 626 517'),
(00000000338, '199253504220293119', 'Paris Hasanah S.Kom', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Psr. Sadang Serang No. 871, Dumai 56829, Kaltara', '(+62) 871 7907 074'),
(00000000339, '199950066096938647', 'Tomi Kasiran Mahendra S.Kom', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. Gatot Subroto No. 502, Batu 16923, Sumbar', '0936 4677 3633'),
(00000000340, '195261299801910837', 'Ika Suartini', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Gg. Kiaracondong No. 487, Metro 74097, Bengkulu', '0842 2130 513'),
(00000000341, '197835742666183402', 'Mila Cinta Wahyuni M.M.', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ds. Bakaru No. 430, Metro 47552, Banten', '0945 4075 2288'),
(00000000342, '199877521107925418', 'Olivia Almira Suartini S.Gz', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Gg. Sam Ratulangi No. 500, Palu 78785, NTB', '(+62) 475 9848 442'),
(00000000343, '198524080653154640', 'Banara Budiman S.Psi', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jr. Laksamana No. 894, Pasuruan 74362, Bali', '(+62) 700 4521 1302'),
(00000000344, '195189168985601804', 'Elvina Hariyah', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Lada No. 137, Tomohon 59685, Sulbar', '(+62) 702 5035 0553'),
(00000000345, '197764953967114760', 'Kamila Riyanti', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Dk. Cemara No. 711, Bandung 97564, Sulbar', '(+62) 805 418 164'),
(00000000346, '195143338500883313', 'Agus Hutapea', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. Nanas No. 720, Pekalongan 64973, Maluku', '(+62) 990 5543 752'),
(00000000347, '196484206494084470', 'Banawa Hidayanto', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ki. Pasirkoja No. 979, Probolinggo 77466, DIY', '(+62) 571 5371 991'),
(00000000348, '198900882664309760', 'Martaka Siregar', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Pasir Koja No. 901, Banjar 36947, NTT', '(+62) 456 9808 075'),
(00000000349, '195260975851847734', 'Karsana Hutagalung', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Daan No. 664, Semarang 60009, Sulteng', '(+62) 25 6323 5818'),
(00000000350, '195670171063433563', 'Sabri Kenari Iswahyudi S.T.', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jr. Gajah No. 616, Banjar 82228, Sulsel', '(+62) 974 6042 5370'),
(00000000351, '199871764004883416', 'Pardi Siregar', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Bacang No. 464, Prabumulih 30172, Bengkulu', '(+62) 24 6959 647'),
(00000000352, '197020510433768570', 'Yahya Samosir', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Ekonomi No. 901, Bontang 90566, Bali', '(+62) 535 2541 0685'),
(00000000353, '198542590073909777', 'Kala Waluyo M.Ak', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Imam No. 946, Langsa 79659, Aceh', '(+62) 22 0050 7814'),
(00000000354, '198062779732992108', 'Rahayu Hastuti', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Kpg. Hang No. 208, Tasikmalaya 15968, Sulsel', '0396 7480 6160'),
(00000000355, '197483897606960337', 'Nasim Hardiansyah', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Baha No. 135, Banjar 24628, Sumut', '(+62) 27 1491 198'),
(00000000356, '198767908395397605', 'Ibrahim Mahendra S.Farm', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Yos Sudarso No. 469, Yogyakarta 21332, Jabar', '0494 7871 936'),
(00000000357, '197202335701973028', 'Keisha Nuraini', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Ikan No. 295, Mojokerto 93887, Sumbar', '0346 8257 1733'),
(00000000358, '199995836387275789', 'Puput Mardhiyah', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Madrasah No. 297, Gorontalo 37800, Sulteng', '(+62) 981 3895 3882'),
(00000000359, '195823150149249560', 'Puti Jelita Agustina', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Pasteur No. 365, Mojokerto 93377, Sulbar', '021 6118 1418'),
(00000000360, '196563182805227202', 'Vanesa Prastuti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Tambak No. 823, Bandung 87790, Bali', '(+62) 598 3040 568'),
(00000000361, '198072494320921766', 'Maida Pratiwi', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Kpg. Baranang No. 923, Padangsidempuan 74497, Banten', '(+62) 984 9747 0457'),
(00000000362, '198753715885769917', 'Kayun Pratama S.Kom', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Antapani Lama No. 537, Sungai Penuh 59104, Sulsel', '(+62) 632 2645 1459'),
(00000000363, '196154342885222000', 'Febi Ana Nasyidah', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ds. Nanas No. 239, Palangka Raya 26695, Sumsel', '(+62) 890 358 903'),
(00000000364, '197888622649034145', 'Gandewa Hutapea S.H.', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Gg. Lada No. 252, Gorontalo 64102, Jabar', '(+62) 353 1625 1465'),
(00000000365, '195014137492561021', 'Asmadi Jaya Marpaung S.Farm', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Samanhudi No. 772, Probolinggo 92762, Sulsel', '(+62) 331 3735 7384'),
(00000000366, '195324921955346348', 'Cahyadi Putra', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. Setia Budi No. 466, Kendari 45128, Jateng', '0562 8369 966'),
(00000000367, '198483202169182484', 'Ulya Mulyani M.TI.', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ki. Kyai Mojo No. 106, Sabang 39291, Sulut', '025 1211 130'),
(00000000368, '196437676147506755', 'Dalima Wahyuni', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ki. Laksamana No. 672, Yogyakarta 65602, Kepri', '(+62) 240 3538 2519'),
(00000000369, '198588474634505224', 'Drajat Bambang Wacana', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Moch. Toha No. 413, Bogor 71264, Jambi', '0203 0977 0298'),
(00000000370, '195261879461651862', 'Gatra Mulyanto Ramadan', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jln. Samanhudi No. 56, Administrasi Jakarta Selatan 86623, Sulteng', '0393 2795 9055'),
(00000000371, '198534402580875372', 'Patricia Oliva Astuti S.IP', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Salatiga No. 481, Kupang 63719, Sultra', '(+62) 803 0942 6710'),
(00000000372, '196014279501492197', 'Vera Safitri', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ds. Wora Wari No. 482, Malang 22737, Babel', '(+62) 781 5266 777'),
(00000000373, '196100235288540792', 'Kania Belinda Wulandari S.Sos', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Gg. Bacang No. 513, Surabaya 80094, NTB', '0741 6656 3983'),
(00000000374, '198475978812228047', 'Zahra Padmasari', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Kpg. Halim No. 392, Kendari 88504, Maluku', '(+62) 641 2524 0322'),
(00000000375, '195355170692494824', 'Cawisadi Dongoran S.Sos', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Psr. Pattimura No. 165, Surabaya 83075, Jatim', '(+62) 976 8571 5545'),
(00000000376, '195077783805020437', 'Pandu Pratama', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jr. Barasak No. 407, Batam 96593, DIY', '0813 1445 7191'),
(00000000377, '196802222434633430', 'Niyaga Irsad Iswahyudi', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Achmad No. 301, Payakumbuh 90780, Babel', '(+62) 637 1666 324'),
(00000000378, '195668148856315788', 'Safina Mulyani', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Batako No. 533, Tegal 42230, Sumut', '(+62) 373 3655 6275'),
(00000000379, '198504535023652237', 'Cawisadi Pratama M.M.', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ds. Mulyadi No. 254, Sorong 35319, Pabar', '0718 4642 9297'),
(00000000380, '196126594244826505', 'Estiono Setiawan', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Bambon No. 339, Tasikmalaya 57009, Lampung', '(+62) 959 5209 965'),
(00000000381, '196296935232752477', 'Darmaji Uda Situmorang M.Pd', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Gg. Jend. A. Yani No. 600, Cimahi 11815, Babel', '0580 5481 8721'),
(00000000382, '195774459884628367', 'Ulya Nasyiah', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Abdul Muis No. 9, Tangerang 71636, Pabar', '(+62) 428 7590 2341'),
(00000000383, '195484712377226834', 'Salsabila Suartini', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Kpg. Baan No. 291, Batu 96340, NTB', '(+62) 338 8091 6681'),
(00000000384, '197564585931576444', 'Elma Pratiwi', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Dk. Honggowongso No. 966, Binjai 58727, Kalteng', '(+62) 829 4110 061'),
(00000000385, '195622086782544790', 'Violet Puspa Prastuti S.E.I', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Industri No. 440, Cimahi 82588, Kaltim', '0428 7125 5186'),
(00000000386, '199124528521618280', 'Langgeng Ghani Tamba', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Bacang No. 476, Gunungsitoli 90417, NTB', '0619 2142 141'),
(00000000387, '199189196245605443', 'Adika Wibisono', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jr. Yoga No. 723, Batu 65198, Kaltim', '(+62) 600 7189 859'),
(00000000388, '197747457689578953', 'Caket Saragih', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Baranangsiang No. 316, Tual 51003, Sultra', '0314 1071 3863'),
(00000000389, '199870078978954298', 'Rahmi Suryatmi', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ki. PHH. Mustofa No. 808, Probolinggo 17459, Sulsel', '(+62) 392 1223 2473'),
(00000000390, '198137746923147822', 'Mahmud Jais Santoso S.Farm', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Kpg. Yoga No. 159, Bandar Lampung 76368, Malut', '0260 8267 384'),
(00000000391, '197194820707792619', 'Dian Lestari', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Jr. Yos Sudarso No. 881, Pangkal Pinang 21338, Sulteng', '(+62) 701 2139 801'),
(00000000392, '197480168661716281', 'Bakda Pradana', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Pahlawan No. 971, Pematangsiantar 69669, NTT', '0258 9005 6130'),
(00000000393, '198964323914351249', 'Tantri Dina Farida M.Ak', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Gg. Baing No. 429, Malang 28503, Sultra', '021 7563 9482'),
(00000000394, '197621250115707537', 'Empluk Sihombing S.T.', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Sugiono No. 175, Ternate 80470, Kalsel', '(+62) 21 8918 5292'),
(00000000395, '199697395116079800', 'Olivia Aryani', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Gg. Bak Mandi No. 994, Pontianak 40923, Sultra', '(+62) 240 3910 0549'),
(00000000396, '196949094552393488', 'Candrakanta Bala Mangunsong', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Psr. Kebonjati No. 962, Bekasi 98812, Sulbar', '0346 9012 0612'),
(00000000397, '199900043005735601', 'Laswi Eman Firgantoro', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jln. Ikan No. 442, Surakarta 61528, Kaltara', '(+62) 705 2084 6029'),
(00000000398, '195905086145515163', 'Fitria Astuti S.Sos', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Psr. Basoka Raya No. 384, Administrasi Jakarta Utara 61592, Papua', '(+62) 303 8091 6323'),
(00000000399, '197600413319682726', 'Diah Namaga', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Cikutra Barat No. 895, Tanjung Pinang 12571, Sulut', '(+62) 551 3681 3243'),
(00000000400, '196050806559131732', 'Putri Hassanah', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ki. Bawal No. 697, Tomohon 49678, Riau', '0578 7435 528'),
(00000000401, '197161950077843533', 'Diah Purwanti', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Psr. Bayan No. 346, Surakarta 92580, Bali', '0605 1136 9884'),
(00000000402, '198618501033705123', 'Yance Ifa Maryati S.H.', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Psr. Salak No. 152, Kendari 98897, Kalbar', '0865 838 797'),
(00000000403, '196213026230589365', 'Ismail Ajiono Mansur S.I.Kom', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Cikapayang No. 988, Pekalongan 80581, Lampung', '0290 9363 198'),
(00000000404, '198169226026591715', 'Ade Laksita', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Gg. Baranang Siang Indah No. 638, Pekanbaru 28659, Aceh', '(+62) 762 0651 071'),
(00000000405, '198921230200593941', 'Gina Yulianti S.Ked', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jr. Bakau Griya Utama No. 59, Jayapura 70670, Sumsel', '0773 1413 6211'),
(00000000406, '198692776338520004', 'Asirwanda Rahman Prasasta', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jr. Laksamana No. 97, Pematangsiantar 90619, Jateng', '0915 9847 063'),
(00000000407, '195039711831193660', 'Irma Ghaliyati Nurdiyanti S.H.', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ki. Kali No. 980, Pasuruan 39957, Sulbar', '0279 5231 4913'),
(00000000408, '199817049873715116', 'Ulva Mulyani S.Farm', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Psr. Sugiono No. 107, Tangerang Selatan 87232, Maluku', '0898 1201 0892'),
(00000000409, '195184187160454839', 'Lanang Gunarto', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Kpg. Cihampelas No. 400, Pekalongan 90600, Bengkulu', '0903 6900 389'),
(00000000410, '198007568053637162', 'Jarwa Najmudin', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Dk. Wahidin Sudirohusodo No. 750, Cimahi 93843, DIY', '(+62) 24 3831 1803'),
(00000000411, '199993021722435971', 'Eli Suryatmi', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jr. Diponegoro No. 386, Tangerang Selatan 10468, Kalteng', '(+62) 547 2178 9153'),
(00000000412, '199100617727036697', 'Fitria Wahyuni', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ki. Kiaracondong No. 355, Manado 86043, Pabar', '(+62) 322 3226 5955'),
(00000000413, '198361349905409935', 'Sadina Laksmiwati', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jln. Nanas No. 322, Pematangsiantar 38590, Sulsel', '0965 9546 047'),
(00000000414, '196035108327076156', 'Wardaya Salahudin', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Ki. Ciumbuleuit No. 589, Medan 31219, Pabar', '(+62) 496 4286 8106'),
(00000000415, '198146018973418040', 'Zulaikha Wijayanti S.Pd', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Gg. Suprapto No. 835, Kotamobagu 71627, Bengkulu', '(+62) 395 5931 248'),
(00000000416, '195936784411756980', 'Warsa Siregar', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Gg. Tentara Pelajar No. 614, Langsa 75875, Bengkulu', '(+62) 846 838 966'),
(00000000417, '197231677330302380', 'Jelita Permata', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Jr. Tambak No. 668, Administrasi Jakarta Timur 77277, Sulut', '0598 9717 5622'),
(00000000418, '196655882593400201', 'Langgeng Arta Sitompul S.E.I', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Psr. Bakit  No. 508, Metro 93325, DIY', '(+62) 981 1275 1769'),
(00000000419, '199749911432158179', 'Koko Heru Kuswoyo S.E.I', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jr. Asia Afrika No. 184, Tanjung Pinang 46717, NTB', '0879 6262 9215'),
(00000000420, '195203329213590347', 'Tami Suartini', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jln. Thamrin No. 150, Palembang 39421, Sumut', '0460 4788 202'),
(00000000421, '199283021382315116', 'Lutfan Putra', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ki. B.Agam Dlm No. 493, Denpasar 90438, Jatim', '(+62) 983 1687 687'),
(00000000422, '197323421216515660', 'Eli Zulfa Winarsih', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Gg. Bagis Utama No. 221, Depok 30126, Jateng', '0293 6042 093'),
(00000000423, '196192872308880545', 'Oskar Irawan M.M.', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Dk. Veteran No. 897, Ternate 23960, Jatim', '(+62) 411 5037 7174'),
(00000000424, '199879675804066393', 'Argono Anggriawan', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Dk. Baja No. 295, Pangkal Pinang 55715, Kalsel', '(+62) 870 740 085'),
(00000000425, '199393521317412621', 'Emin Purwanto Sirait', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Gg. Jagakarsa No. 449, Dumai 74586, Riau', '0837 379 363'),
(00000000426, '196218271828309908', 'Patricia Zulaika S.E.', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jr. Sadang Serang No. 729, Banda Aceh 20900, Malut', '0547 6617 396'),
(00000000427, '198533971473424309', 'Cakrawala Haryanto', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Ki. Gajah Mada No. 191, Bau-Bau 34734, Kepri', '(+62) 22 1201 0485'),
(00000000428, '196306616547736097', 'Harjaya Warta Sirait', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Ds. Baranang Siang Indah No. 919, Serang 99436, Kalsel', '0901 4533 212'),
(00000000429, '199432500008141513', 'Janet Nurdiyanti', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Ds. Ujung No. 788, Magelang 27616, Banten', '0809 984 040'),
(00000000430, '195455497710054060', 'Kasiyah Yuliarti S.Pt', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Ki. Pasteur No. 561, Kediri 71506, Jabar', '(+62) 935 4860 558'),
(00000000431, '198941784287195823', 'Jelita Aryani', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Psr. Yohanes No. 853, Padangpanjang 65577, Bali', '0664 3676 109'),
(00000000432, '196312188535609564', 'Lasmanto Danu Najmudin M.Kom.', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Psr. Nangka No. 794, Tarakan 59924, Pabar', '0618 5786 2408'),
(00000000433, '199116703365194109', 'Septi Usada', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jr. M.T. Haryono No. 181, Pangkal Pinang 76243, Kepri', '(+62) 757 3897 4510'),
(00000000434, '196386890866585979', 'Muhammad Pradipta S.Farm', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Ketandan No. 816, Kotamobagu 30683, NTB', '0464 7439 770'),
(00000000435, '198110686189727267', 'Gina Kusmawati', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Ki. Baja No. 47, Singkawang 87612, DKI', '(+62) 484 9981 004'),
(00000000436, '196807032257806216', 'Satya Maryadi', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Gg. Dipenogoro No. 362, Probolinggo 81130, Kepri', '0291 1934 946'),
(00000000437, '196095568500269916', 'Nalar Kunthara Simanjuntak', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Gg. Baja Raya No. 795, Mojokerto 61722, DKI', '(+62) 848 1867 364'),
(00000000438, '197597080364139585', 'Warsa Prakasa S.E.', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Gg. Suniaraja No. 203, Padangpanjang 23665, DIY', '025 1375 127'),
(00000000439, '197013898513003996', 'Bakiadi Gandi Latupono M.Kom.', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ki. Tambun No. 277, Bengkulu 67646, Kalbar', '(+62) 957 4391 628'),
(00000000440, '197378441637918872', 'Raina Padmasari', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ds. Gotong Royong No. 779, Bandar Lampung 99449, Kaltara', '026 1110 2107'),
(00000000441, '196775972877099748', 'Aslijan Najmudin', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Jr. Ciwastra No. 236, Gunungsitoli 20044, Sumsel', '(+62) 453 4129 2162'),
(00000000442, '196936007268225815', 'Ani Safitri', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ds. Baja No. 520, Sorong 73092, Jatim', '0827 9267 4757'),
(00000000443, '198898821096015586', 'Ghaliyati Yuliarti', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Gg. Bayam No. 622, Medan 55204, Kalbar', '(+62) 25 1310 457'),
(00000000444, '198205139367398782', 'Bagus Saptono M.Farm', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Psr. Supomo No. 339, Sorong 59352, Sumbar', '0306 2455 1479'),
(00000000445, '196555458656705765', 'Makuta Wibowo M.TI.', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Ki. Lumban Tobing No. 504, Mataram 12452, Jatim', '0800 848 149'),
(00000000446, '199922485345539235', 'Mulyono Salahudin', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ds. Raya Ujungberung No. 520, Sungai Penuh 25745, Malut', '0881 1644 841'),
(00000000447, '195611699883903917', 'Enteng Prayoga', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Ds. Setia Budi No. 659, Madiun 63539, Kalsel', '(+62) 305 7345 330'),
(00000000448, '196643135666677916', 'Agnes Safitri', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jr. Umalas No. 758, Batam 74894, Papua', '(+62) 970 0465 459'),
(00000000449, '199676898532959127', 'Dewi Rika Pudjiastuti S.Psi', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ds. Abdul. Muis No. 971, Bandar Lampung 99467, Maluku', '0299 1324 0127'),
(00000000450, '196012916080426529', 'Murti Siregar', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Ki. Taman No. 917, Palembang 44257, Kalbar', '0371 6079 643'),
(00000000451, '199460070926063704', 'Hilda Hasna Prastuti', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Dk. Bakau No. 326, Serang 28415, Riau', '0231 3117 974'),
(00000000452, '198254195398532320', 'Ida Jane Wijayanti S.I.Kom', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Jln. PHH. Mustofa No. 193, Pematangsiantar 54806, Sulbar', '(+62) 491 8565 730'),
(00000000453, '195956669468853171', 'Victoria Halima Safitri M.M.', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Jln. Gegerkalong Hilir No. 585, Gorontalo 98497, Pabar', '0373 3056 5193'),
(00000000454, '199475780940810902', 'Vinsen Saefullah S.E.I', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jln. Untung Suropati No. 933, Pekanbaru 17396, Jabar', '(+62) 840 2538 209'),
(00000000455, '198815531960336502', 'Putu Gaman Kusumo', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jr. BKR No. 522, Batu 30737, Kalbar', '0471 8793 989'),
(00000000456, '197854931874663405', 'Waluyo Anggriawan', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Dk. Otto No. 961, Batam 86566, NTB', '(+62) 462 3636 3103'),
(00000000457, '199635332567498969', 'Hendra Gunawan M.Kom.', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ki. Raden Saleh No. 646, Bogor 49785, Sulbar', '(+62) 430 1786 2290'),
(00000000458, '199154787217566060', 'Parman Dongoran', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Psr. Kusmanto No. 653, Batam 25161, Sumsel', '(+62) 554 6191 1268'),
(00000000459, '195185774355955896', 'Taufik Yusuf Mansur', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ki. Untung Suropati No. 250, Yogyakarta 88488, Sumut', '(+62) 673 4509 4744'),
(00000000460, '197583846436183404', 'Padmi Mandasari', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jln. Dahlia No. 185, Sibolga 30388, Sulsel', '0988 4932 534'),
(00000000461, '197193497902179596', 'Bambang Ibrahim Marbun S.IP', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Psr. Cemara No. 192, Pematangsiantar 70967, Kalsel', '(+62) 661 0659 6066'),
(00000000462, '199564605910436409', 'Vanya Puspita', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Jr. Baik No. 202, Cirebon 80587, Maluku', '0801 066 103'),
(00000000463, '196077552329352196', 'Vero Hakim S.E.I', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Jr. Jambu No. 423, Lubuklinggau 93354, DKI', '(+62) 277 1853 173'),
(00000000464, '197815227602536641', 'Perkasa Luwar Natsir', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Dk. Honggowongso No. 224, Tual 35919, Sulteng', '0823 380 385'),
(00000000465, '197371747982443685', 'Vega Kurniawan S.Pd', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jln. Rajiman No. 868, Padang 30400, Gorontalo', '0464 4967 3007'),
(00000000466, '199976315480634162', 'Wardaya Tarihoran', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jln. Labu No. 777, Tarakan 99835, NTB', '0964 7296 342'),
(00000000467, '198257495640929723', 'Okta Zulkarnain', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Gg. Wahid Hasyim No. 894, Subulussalam 89005, Sumsel', '(+62) 661 8734 796'),
(00000000468, '196200937118631251', 'Almira Astuti S.I.Kom', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Ki. Basket No. 824, Surabaya 95594, Kaltim', '0658 4892 1047'),
(00000000469, '199486959206580569', 'Febi Haryanti S.T.', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Psr. Ciwastra No. 478, Sabang 76898, Riau', '(+62) 29 7653 228'),
(00000000470, '196187281586558612', 'Slamet Waluyo S.I.Kom', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Psr. Ki Hajar Dewantara No. 874, Banjar 82311, Sulteng', '0968 9070 704'),
(00000000471, '195887874817631044', 'Lidya Permata', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ds. Bambu No. 231, Pariaman 63819, Maluku', '0415 2612 113'),
(00000000472, '196990499483055070', 'Bella Usada S.Kom', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jln. Otto No. 354, Sukabumi 47201, Sulsel', '(+62) 741 7828 700'),
(00000000473, '197008156130114225', 'Martana Gunawan M.TI.', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Jr. Bakau No. 731, Makassar 12981, Papua', '(+62) 437 5686 0112'),
(00000000474, '197179674183126377', 'Tira Uyainah', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Psr. Agus Salim No. 336, Madiun 20200, Bali', '(+62) 877 199 171'),
(00000000475, '196781449986552088', 'Ozy Gunarto', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Gg. Honggowongso No. 21, Tanjung Pinang 70656, Jateng', '(+62) 406 4610 9191'),
(00000000476, '195621031802791376', 'Umar Jaka Hutagalung', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Baiduri No. 4, Tanjungbalai 33248, Sulsel', '0403 1800 007'),
(00000000477, '197621800051512733', 'Mursinin Firmansyah', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Ki. Bakit  No. 344, Blitar 50066, Kalbar', '0951 8702 7815'),
(00000000478, '195646554654565654', 'Sabri Situmorang', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Bahagia  No. 955, Bandung 74261, Kalbar', '0799 8963 228'),
(00000000479, '197974241906869136', 'Soleh Tamba', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Samanhudi No. 265, Bengkulu 10173, Jambi', '(+62) 855 542 856'),
(00000000480, '199544440560966798', 'Cakrawala Sabar Jailani S.H.', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Ds. Soekarno Hatta No. 602, Banjarbaru 55905, Kalsel', '0729 9542 170'),
(00000000481, '198165908658566553', 'Wisnu Nababan', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Psr. Kebonjati No. 934, Payakumbuh 74847, Sultra', '(+62) 817 6017 505'),
(00000000482, '198845559166059952', 'Simon Purwa Hidayat S.Pd', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ki. Cikutra Timur No. 558, Batam 71739, Sulbar', '(+62) 224 1923 552'),
(00000000483, '196264501981344068', 'Jaiman Nashiruddin', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Jln. Sutan Syahrir No. 252, Pekanbaru 49760, NTT', '0503 5996 216'),
(00000000484, '197928642772599205', 'Nadia Laksita M.Farm', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Kpg. Madrasah No. 379, Malang 89187, NTB', '(+62) 28 7769 205'),
(00000000485, '196979543667154541', 'Cawuk Nababan', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jln. Tubagus Ismail No. 567, Denpasar 38804, DIY', '0304 6710 2363'),
(00000000486, '198466732717003643', 'Koko Januar', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Gg. Bank Dagang Negara No. 332, Tegal 61405, Maluku', '(+62) 846 803 863'),
(00000000487, '198974927738151358', 'Cakrawangsa Natsir S.Sos', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Jr. Adisumarmo No. 527, Administrasi Jakarta Selatan 30033, Babel', '(+62) 812 873 009'),
(00000000488, '196334905496288713', 'Kiandra Kartika Suartini', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ki. Surapati No. 427, Gorontalo 54437, Sultra', '0665 7142 4722'),
(00000000489, '199028160548090384', 'Maras Hutagalung', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Jr. Rumah Sakit No. 718, Jambi 55764, Sumbar', '0709 7014 4536'),
(00000000490, '195801032919086043', 'Puji Farida', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Dk. Kyai Mojo No. 843, Payakumbuh 32424, Sulteng', '(+62) 558 8926 9274'),
(00000000491, '198994532143805118', 'Gatot Pradana', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ds. Monginsidi No. 733, Binjai 34811, Sumut', '(+62) 904 2419 021'),
(00000000492, '199196947686694295', 'Silvia Anggraini', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jr. Imam Bonjol No. 648, Administrasi Jakarta Pusat 70951, Riau', '0967 6467 657'),
(00000000493, '196709861643739683', 'Rendy Harsaya Maryadi', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Psr. Basmol Raya No. 312, Salatiga 52391, Pabar', '(+62) 25 1443 359'),
(00000000494, '198194565407701267', 'Iriana Halimah', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Kpg. Dipenogoro No. 730, Pekalongan 85860, NTB', '0742 6194 113'),
(00000000495, '198096887620951678', 'Lukita Hamzah Mansur M.TI.', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Psr. Banda No. 643, Probolinggo 12001, Sulteng', '(+62) 225 6661 077'),
(00000000496, '199831688052439555', 'Kurnia Wibowo', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jr. Salatiga No. 779, Metro 44797, Kalbar', '(+62) 25 2977 339'),
(00000000497, '196942645810026559', 'Hartaka Niyaga Hardiansyah', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ki. Yos No. 943, Cirebon 77034, Sulut', '(+62) 456 1352 1766'),
(00000000498, '196423812604002203', 'Titin Tiara Susanti M.TI.', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jln. BKR No. 811, Tegal 42643, Malut', '(+62) 469 1521 675'),
(00000000499, '198797593935171588', 'Cakrabirawa Januar', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ds. Padang No. 183, Pontianak 64789, Sulsel', '(+62) 896 6787 7173'),
(00000000500, '198349020887529796', 'Kadir Putu Sitorus', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Jr. Imam Bonjol No. 762, Pontianak 10977, Bengkulu', '(+62) 26 7538 8173'),
(00000000501, '195817495737884113', 'Purwanto Balidin Sitompul S.I.Kom', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Gg. Abdul No. 371, Padangpanjang 66812, DIY', '0318 7800 5314'),
(00000000502, '198611567540909064', 'Mustofa Himawan Hidayat S.Kom', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ds. Wahid Hasyim No. 184, Tomohon 58739, Papua', '028 5400 6801'),
(00000000503, '199732252678976181', 'Nyana Rajata', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Kpg. Villa No. 65, Denpasar 91289, Sumbar', '(+62) 270 1713 887'),
(00000000504, '199087119774037755', 'Ibun Saefullah', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Jr. Abdul No. 463, Padangsidempuan 60793, Jatim', '0529 1523 0014'),
(00000000505, '198593001116751319', 'Ellis Patricia Melani', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Ki. Ikan No. 738, Tual 56290, Kaltara', '(+62) 812 2118 950'),
(00000000506, '195688740167021228', 'Ifa Yuniar', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. R.E. Martadinata No. 983, Administrasi Jakarta Barat 19034, Sumut', '(+62) 424 2416 532'),
(00000000507, '197011110333841938', 'Ratih Padmasari', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Ds. Elang No. 292, Langsa 22298, Sulbar', '0549 4215 9800'),
(00000000508, '196668731894823314', 'Hafshah Ida Fujiati S.Psi', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Ki. Eka No. 225, Lhokseumawe 13914, Sulsel', '0983 8309 7567'),
(00000000509, '196634160803914168', 'Artanto Nugroho', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Dk. Bambu No. 328, Lhokseumawe 74161, Banten', '0903 6087 829'),
(00000000510, '196868341978739159', 'Irma Widiastuti', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Yos No. 199, Palangka Raya 35914, Jambi', '0873 6348 7768'),
(00000000511, '197586289281766844', 'Prakosa Marpaung S.IP', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jr. Yos Sudarso No. 165, Subulussalam 90590, Sulsel', '(+62) 814 439 088'),
(00000000512, '198240975025684463', 'Umaya Prasetyo S.Sos', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Dk. Qrisdoren No. 844, Gorontalo 35573, Kalsel', '0682 9481 385'),
(00000000513, '195062726826916347', 'Aris Catur Wibowo S.E.I', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jln. Ikan No. 422, Batu 49124, Sumut', '0595 2922 1131'),
(00000000514, '195447665898247867', 'Betania Purwanti', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Kpg. Kartini No. 298, Tarakan 35296, Malut', '0386 4728 6623'),
(00000000515, '199740851311218661', 'Ciaobella Fitriani Aryani S.Ked', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ki. Bass No. 855, Metro 20202, Aceh', '(+62) 706 4944 091'),
(00000000516, '197727981787731266', 'Kiandra Padmasari', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ds. Baha No. 438, Pagar Alam 81467, Kepri', '0848 619 404'),
(00000000517, '196256553857645613', 'Ratna Maryati', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ki. Sentot Alibasa No. 227, Tangerang Selatan 77877, Jatim', '022 1970 7906'),
(00000000518, '198587343843930281', 'Baktianto Wibowo', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Jln. Baja Raya No. 924, Tidore Kepulauan 86481, Jatim', '0808 972 955'),
(00000000519, '196071373833473647', 'Kayla Aryani', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jln. Bambon No. 644, Tangerang 22646, Maluku', '0214 8619 6086'),
(00000000520, '195023325949595832', 'Jane Fujiati S.Sos', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Gg. Basket No. 260, Banjarbaru 58412, Aceh', '(+62) 613 7346 044'),
(00000000521, '199452096026008890', 'Putri Pertiwi', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Ki. Arifin No. 254, Subulussalam 68123, NTB', '(+62) 342 2659 9342'),
(00000000522, '196031240765707737', 'Surya Adriansyah', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Kpg. Banda No. 257, Kupang 95713, Jateng', '0446 0951 926'),
(00000000523, '198934434159797438', 'Bakiadi Viman Putra M.Pd', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Jr. Thamrin No. 441, Magelang 32003, Kalsel', '0785 7693 6383'),
(00000000524, '197103123792237092', 'Harsanto Narpati', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Gg. Basudewo No. 236, Batu 68603, Banten', '(+62) 975 9071 3856'),
(00000000525, '195752850783714000', 'Tina Rahayu', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Gg. Batako No. 808, Parepare 23215, DIY', '0761 6570 624'),
(00000000526, '195770823964952058', 'Fathonah Laksita', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Jln. Abdul Muis No. 221, Parepare 71138, Malut', '(+62) 372 0989 3507'),
(00000000527, '196492045355697205', 'Ophelia Oliva Purnawati', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Psr. Suprapto No. 212, Pasuruan 18308, Kepri', '0449 5360 735'),
(00000000528, '197713849298536316', 'Balapati Hardiansyah', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Gg. Gajah Mada No. 399, Pekalongan 71198, Sulut', '0838 607 200'),
(00000000529, '196854857097601407', 'Belinda Usamah S.Ked', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Gg. Zamrud No. 869, Denpasar 27609, Sultra', '0701 6154 046'),
(00000000530, '195039014888751806', 'Cemeti Adriansyah M.TI.', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ds. Nangka No. 438, Madiun 53588, Kaltara', '(+62) 627 8937 693'),
(00000000531, '196320879576597308', 'Endah Samiah Agustina S.IP', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Gg. Gremet No. 789, Banda Aceh 99130, Kalteng', '(+62) 661 2919 9927'),
(00000000532, '196779107103079834', 'Elvin Rendy Maulana', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Psr. Abdul. Muis No. 870, Parepare 12948, Gorontalo', '(+62) 603 5350 865'),
(00000000533, '198782713767665861', 'Eva Purwanti', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Jr. Abdullah No. 65, Sawahlunto 39017, Banten', '0886 2840 425'),
(00000000534, '195700458802042547', 'Vinsen Mahendra S.Psi', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ki. Cokroaminoto No. 555, Bukittinggi 92919, Kalteng', '0288 7735 860'),
(00000000535, '197761476269305240', 'Dacin Prayoga', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Ki. Basuki No. 868, Pematangsiantar 20431, Gorontalo', '0860 1135 893'),
(00000000536, '198188347805043700', 'Ulva Lalita Rahayu', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Adisumarmo No. 645, Blitar 32549, Jabar', '(+62) 987 9338 337'),
(00000000537, '196371359991207139', 'Nadine Padmasari S.Farm', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jln. Bhayangkara No. 36, Mataram 60941, Sultra', '(+62) 311 7630 950'),
(00000000538, '199442428160418182', 'Ilsa Sudiati M.TI.', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Tentara Pelajar No. 642, Denpasar 12177, Kaltara', '0768 7260 081'),
(00000000539, '198363621984809314', 'Unjani Elvina Susanti M.Pd', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Dk. Salatiga No. 705, Depok 90640, Babel', '(+62) 521 1570 0263'),
(00000000540, '199431988668279564', 'Panji Pradana', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Gg. Gegerkalong Hilir No. 756, Malang 72743, Sumbar', '0434 6738 373'),
(00000000541, '197808386477071801', 'Eli Suryatmi', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jr. R.E. Martadinata No. 970, Manado 10538, Bali', '(+62) 423 9402 869'),
(00000000542, '196327755200058518', 'Kayun Habibi M.TI.', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Gg. Ciwastra No. 79, Tanjung Pinang 92093, Bali', '(+62) 20 2724 8252'),
(00000000543, '195325071911250839', 'Zelda Olivia Wijayanti', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Ds. Moch. Ramdan No. 865, Padang 23542, NTT', '0395 2900 6671'),
(00000000544, '199028895387293324', 'Darimin Adriansyah', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Bakaru No. 110, Sungai Penuh 97491, Pabar', '(+62) 535 8553 1877'),
(00000000545, '197654163806310712', 'Karsana Natsir', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ki. Basudewo No. 331, Probolinggo 46325, Sulbar', '(+62) 468 1178 589'),
(00000000546, '196488246373178138', 'Cornelia Laksita', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ds. Sadang Serang No. 785, Denpasar 61152, Sumut', '0645 8701 214'),
(00000000547, '195594578139934866', 'Rahmi Padma Suartini', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Psr. Ujung No. 566, Palembang 54478, Kalteng', '(+62) 478 1479 020'),
(00000000548, '195632957123553710', 'Hartana Sihombing', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Jln. Jagakarsa No. 292, Salatiga 63815, Riau', '(+62) 875 1639 0330'),
(00000000549, '198854649112479649', 'Catur Permadi', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Psr. Kiaracondong No. 222, Batu 20988, Sumsel', '0594 3661 398'),
(00000000550, '196939371835379414', 'Luthfi Sihombing', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. Salatiga No. 752, Tanjung Pinang 67560, Jateng', '(+62) 299 1510 7529'),
(00000000551, '198096246574988958', 'Shania Rahayu', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Kpg. Kyai Mojo No. 312, Lubuklinggau 61954, Jatim', '0579 2742 7260'),
(00000000552, '198796853582136452', 'Gina Andriani S.E.I', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Psr. Jakarta No. 240, Sungai Penuh 47787, Aceh', '(+62) 950 5405 501'),
(00000000553, '199386394303481435', 'Luis Mustofa Situmorang S.E.', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Ki. Baranang Siang Indah No. 244, Tasikmalaya 35036, Sumsel', '0993 0065 174'),
(00000000554, '198481262952454133', 'Jane Gabriella Purwanti S.H.', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ki. Suryo Pranoto No. 33, Banda Aceh 37217, Kalteng', '0669 5460 076'),
(00000000555, '199692289960978438', 'Cayadi Januar', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Dk. Wahid No. 244, Subulussalam 70031, Sulteng', '(+62) 287 9667 172'),
(00000000556, '195156314645588911', 'Marsudi Saputra', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ds. Ujung No. 432, Pontianak 52074, Papua', '(+62) 428 0779 470'),
(00000000557, '195920294229818037', 'Naradi Kurniawan', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Ds. Rajiman No. 277, Palopo 95131, Sulsel', '(+62) 900 4703 7426'),
(00000000558, '195402507409540777', 'Sabar Maryadi Pradana S.E.I', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jr. Rajawali Timur No. 638, Pangkal Pinang 20221, Sulsel', '(+62) 683 9796 474'),
(00000000559, '198502591291763167', 'Agnes Wulandari', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Jln. Barasak No. 445, Palembang 86331, NTT', '0918 2914 992'),
(00000000560, '196223661379638156', 'Raihan Simbolon', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Dk. Bara No. 92, Gunungsitoli 80255, Lampung', '0233 2868 6062'),
(00000000561, '197295371259975621', 'Genta Karen Usada', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Jln. Gremet No. 81, Samarinda 91898, Gorontalo', '(+62) 369 3630 6461'),
(00000000562, '196104546121380012', 'Oman Siregar', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Ds. Perintis Kemerdekaan No. 536, Gunungsitoli 90980, Jabar', '024 1553 512'),
(00000000563, '197023218558825207', 'Rahmi Winda Usamah', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Gg. Ketandan No. 772, Cilegon 72462, NTB', '(+62) 592 0247 1669'),
(00000000564, '198479471686241717', 'Putri Yolanda', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Ki. Kyai Gede No. 205, Singkawang 41813, Sulteng', '0877 3916 5347'),
(00000000565, '195356683146300783', 'Raina Riyanti', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Ki. Babadak No. 721, Tanjungbalai 55727, Jateng', '0767 5263 3794'),
(00000000566, '195568577140110660', 'Virman Yusuf Gunawan M.Farm', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Jr. Jambu No. 129, Makassar 62387, Pabar', '0879 2498 1799'),
(00000000567, '198977424160776783', 'Agnes Suartini', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Kpg. Bata Putih No. 226, Administrasi Jakarta Timur 53356, Kepri', '(+62) 203 2588 0524'),
(00000000568, '199755350220194391', 'Kala Pratama', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Ciumbuleuit No. 990, Pagar Alam 71162, Lampung', '0928 2394 533'),
(00000000569, '196383720164635297', 'Fathonah Talia Kusmawati', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Gg. Haji No. 950, Bogor 32357, Sulteng', '0566 5361 668'),
(00000000570, '195914449775582467', 'Queen Qori Puspita', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. Baja Raya No. 131, Kupang 78756, Kalbar', '(+62) 843 2366 006'),
(00000000571, '196667091209898042', 'Kani Mandasari', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Psr. R.E. Martadinata No. 990, Tasikmalaya 91348, Sulsel', '0872 5201 2773'),
(00000000572, '197130453604707583', 'Winda Novitasari', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ki. Cikutra Barat No. 588, Langsa 60857, Babel', '(+62) 916 1401 617');
INSERT INTO `tb_pegawai` (`id_pegawai`, `nip`, `nama`, `bagian`, `pangkat`, `jabatan`, `alamat`, `telp`) VALUES
(00000000573, '199985157074372120', 'Ika Suryatmi', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Dk. Samanhudi No. 233, Palembang 10019, Kaltara', '0337 3569 413'),
(00000000574, '199564929506074267', 'Mustofa Nugroho', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Dk. M.T. Haryono No. 202, Sukabumi 53496, Aceh', '(+62) 789 2154 3315'),
(00000000575, '199881053466410426', 'Caraka Wasis Kurniawan S.Psi', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Ds. Rajiman No. 82, Lubuklinggau 19892, Sumut', '(+62) 28 0059 5181'),
(00000000576, '195213196128491070', 'Gatra Darmana Hutagalung M.Pd', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Psr. Jambu No. 63, Kotamobagu 23108, Jambi', '023 1584 398'),
(00000000577, '196761243714479594', 'Elisa Zulaika', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jr. Ters. Pasir Koja No. 725, Tidore Kepulauan 18587, Kalteng', '(+62) 753 2412 6710'),
(00000000578, '199401227804638065', 'Ilsa Olivia Puspita S.E.', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Kpg. Gajah No. 296, Palembang 69334, Sulsel', '(+62) 654 7840 184'),
(00000000579, '195627884712997522', 'Gandi Sirait', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Gg. Ir. H. Juanda No. 732, Singkawang 24611, Babel', '0919 7427 033'),
(00000000580, '198089547065836037', 'Hasim Sirait', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ds. Rajawali No. 640, Payakumbuh 10631, Sumsel', '0444 8179 390'),
(00000000581, '195181549855169208', 'Hamzah Winarno', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Dk. Babadan No. 915, Banjar 69758, Kalbar', '0472 0775 1755'),
(00000000582, '198360528808139871', 'Bella Unjani Yolanda M.Pd', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Sukajadi No. 22, Cimahi 96093, Kalsel', '0699 3851 6362'),
(00000000583, '198843174330558310', 'Darsirah Wisnu Prakasa', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Ds. Rajawali No. 126, Subulussalam 86626, Gorontalo', '(+62) 302 1577 832'),
(00000000584, '198972561384216490', 'Mitra Taufan Santoso S.I.Kom', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Gg. Veteran No. 243, Medan 88947, Sulsel', '(+62) 639 8596 9013'),
(00000000585, '197708742116943497', 'Hartaka Tamba', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Psr. Bacang No. 863, Tangerang 63654, Sumsel', '(+62) 602 9363 4843'),
(00000000586, '196668606434052220', 'Kala Kenari Mansur S.E.', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Imam Bonjol No. 858, Pasuruan 72376, Bali', '0526 5862 282'),
(00000000587, '198698226871238847', 'Hana Widiastuti', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Psr. Bagis Utama No. 603, Banjarbaru 60706, DIY', '(+62) 776 4057 9631'),
(00000000588, '198677866694297745', 'Anita Puspita', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ki. Supomo No. 596, Kendari 76930, Jambi', '0478 2947 750'),
(00000000589, '195623936908957490', 'Yulia Palastri', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ds. Warga No. 573, Padang 13720, Bengkulu', '0848 9634 060'),
(00000000590, '197939907627297840', 'Rachel Salimah Padmasari S.Psi', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ds. Katamso No. 228, Bau-Bau 85767, Kalbar', '(+62) 297 3492 7771'),
(00000000591, '197096072828571373', 'Zelda Nurdiyanti', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Psr. Kali No. 583, Administrasi Jakarta Timur 75480, NTB', '0486 5295 8205'),
(00000000592, '198514210413091441', 'Maria Uyainah S.T.', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Kpg. R.E. Martadinata No. 383, Payakumbuh 40097, Banten', '(+62) 876 3956 3801'),
(00000000593, '196631876489109164', 'Queen Yuniar', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Ki. Sukabumi No. 21, Binjai 50657, Kaltim', '0910 4871 029'),
(00000000594, '199800563940040346', 'Candrakanta Rusman Saputra', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Gg. Sam Ratulangi No. 867, Sorong 49446, Sulsel', '0535 0379 744'),
(00000000595, '196886748455222102', 'Sadina Nabila Nuraini', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ds. Yosodipuro No. 635, Yogyakarta 62790, Lampung', '(+62) 779 3963 1066'),
(00000000596, '199214787894585797', 'Natalia Karimah Susanti', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Ds. Eka No. 440, Payakumbuh 82466, Kalsel', '0775 1943 9613'),
(00000000597, '195784645206539360', 'Nadine Gawati Hastuti M.Pd', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Psr. Sadang Serang No. 177, Jambi 96865, DKI', '0480 5737 152'),
(00000000598, '195967454143685727', 'Warta Jail Marpaung', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jln. Pacuan Kuda No. 869, Salatiga 37851, Sumsel', '0347 5685 4325'),
(00000000599, '195236714822121406', 'Galak Putra', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Gg. Dipatiukur No. 143, Singkawang 65364, Aceh', '0712 6456 452'),
(00000000600, '198127985373528001', 'Ikin Napitupulu', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ki. Kebonjati No. 311, Banjar 36838, Sumsel', '(+62) 869 2620 7688'),
(00000000601, '198886767050852524', 'Narji Ramadan', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Jln. Bambon No. 224, Pangkal Pinang 29162, Jatim', '0714 3534 9084'),
(00000000602, '199447139687548162', 'Latif Hakim S.E.I', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Laswi No. 268, Singkawang 54406, Jabar', '022 4929 344'),
(00000000603, '195942635829654157', 'Teguh Galiono Rajasa', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jr. Asia Afrika No. 92, Bandar Lampung 63480, Sulsel', '0630 3910 2239'),
(00000000604, '196627430553775613', 'Damu Ian Hidayanto', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jln. Arifin No. 826, Bogor 72722, Kalsel', '0925 6029 7066'),
(00000000605, '195410650938697336', 'Raisa Mulyani', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jr. Sunaryo No. 226, Pontianak 63730, Riau', '(+62) 927 5948 138'),
(00000000606, '196155057246265170', 'Nadine Usamah', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Psr. Ters. Kiaracondong No. 597, Pasuruan 30968, Pabar', '0710 6068 793'),
(00000000607, '199516213118299300', 'Darman Wijaya', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jln. Haji No. 730, Malang 22071, Papua', '(+62) 308 2533 2262'),
(00000000608, '197441549415549312', 'Gandewa Simanjuntak', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Jr. Hasanuddin No. 757, Bontang 72573, Jateng', '0299 9490 410'),
(00000000609, '198033635884567303', 'Jais Vino Hidayat', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jln. Cokroaminoto No. 915, Administrasi Jakarta Timur 26802, Kepri', '(+62) 806 0285 190'),
(00000000610, '196440074003163823', 'Bancar Upik Marpaung', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Psr. Sutarjo No. 356, Kotamobagu 74884, Jatim', '(+62) 815 5600 6291'),
(00000000611, '198965195003436374', 'Raina Nurul Nuraini S.Gz', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ki. Pelajar Pejuang 45 No. 966, Padangsidempuan 68280, Kalsel', '(+62) 509 5286 720'),
(00000000612, '196324492604944783', 'Kusuma Gunarto', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jr. BKR No. 479, Metro 94996, Sulsel', '(+62) 499 7677 7184'),
(00000000613, '199121786483065649', 'Warta Prasasta S.T.', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Ds. Rajawali Barat No. 580, Administrasi Jakarta Barat 55251, Gorontalo', '(+62) 324 7809 5405'),
(00000000614, '198422594861845144', 'Karya Firmansyah', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Gg. Kartini No. 748, Administrasi Jakarta Pusat 12995, Kaltara', '0688 4343 100'),
(00000000615, '199572474199956575', 'Hilda Ani Winarsih S.Pd', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Dk. Haji No. 293, Bau-Bau 35515, Kalsel', '(+62) 413 8271 2832'),
(00000000616, '197217999215236719', 'Dalima Mayasari M.Farm', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Dk. Jend. A. Yani No. 139, Palembang 63973, Kalbar', '0885 384 215'),
(00000000617, '198480821159890920', 'Raharja Tampubolon', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Kpg. Mahakam No. 579, Surabaya 75161, Sumbar', '(+62) 514 3695 9610'),
(00000000618, '197183265777318855', 'Talia Zahra Lestari M.Ak', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Jln. Rumah Sakit No. 545, Sorong 94928, Riau', '(+62) 238 8459 007'),
(00000000619, '196084442406475396', 'Raden Ade Budiyanto', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Jln. Otista No. 367, Makassar 84184, Sumut', '0303 4176 2310'),
(00000000620, '198146912315576785', 'Maras Widodo', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Psr. Setia Budi No. 955, Pekalongan 32625, Kalbar', '0400 9211 9432'),
(00000000621, '195943097869705888', 'Bella Pertiwi', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ki. Moch. Toha No. 176, Surabaya 20761, Papua', '(+62) 490 0556 482'),
(00000000622, '199735473329515505', 'Ifa Ellis Puspasari S.Pd', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ds. Bakin No. 723, Pasuruan 97627, Jabar', '(+62) 408 0129 097'),
(00000000623, '197708336236694193', 'Kacung Zulkarnain', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Psr. Imam No. 353, Sorong 17785, Gorontalo', '0792 0587 1423'),
(00000000624, '199705548934526422', 'Caturangga Thamrin', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Ds. Labu No. 592, Samarinda 81941, DIY', '0374 1579 1715'),
(00000000625, '197776121610693309', 'Tami Fathonah Hastuti M.Ak', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Kpg. Bagonwoto  No. 609, Ambon 10878, Kaltara', '(+62) 744 0106 6589'),
(00000000626, '199339473338010105', 'Anastasia Ratih Anggraini', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Ds. Basuki No. 157, Batu 31500, Malut', '0643 3892 9892'),
(00000000627, '197301564325278537', 'Ira Maya Handayani', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Krakatau No. 443, Pariaman 64698, Kalteng', '0633 8672 4159'),
(00000000628, '197455523839811992', 'Jarwadi Prayitna Maheswara', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Kpg. Madrasah No. 947, Bau-Bau 80423, Gorontalo', '(+62) 771 4026 898'),
(00000000629, '199207670473183903', 'Makuta Prasetya Wacana S.Farm', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ki. Sumpah Pemuda No. 50, Tanjung Pinang 25221, DIY', '(+62) 212 7369 3094'),
(00000000630, '198045613274083239', 'Gilang Dongoran', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Kpg. Umalas No. 217, Dumai 80728, Jateng', '027 6139 045'),
(00000000631, '199158086078729129', 'Eva Melani', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Gg. Ikan No. 919, Semarang 54267, Bali', '(+62) 200 3933 398'),
(00000000632, '199848803527385875', 'Sarah Oktaviani M.Kom.', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jln. Astana Anyar No. 463, Balikpapan 16331, Sumbar', '(+62) 243 4665 1045'),
(00000000633, '197506603269503500', 'Maya Nabila Nasyiah S.Gz', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Dk. Pasirkoja No. 633, Gunungsitoli 57977, Babel', '(+62) 510 3740 126'),
(00000000634, '199931372892369418', 'Elvina Usamah', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jln. Wahid Hasyim No. 485, Kotamobagu 91345, Aceh', '0427 5313 327'),
(00000000635, '199012346048809828', 'Umaya Budiman', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Ki. Padma No. 340, Lubuklinggau 14756, Sulsel', '0381 1675 5932'),
(00000000636, '195776028613961396', 'Zahra Suartini', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Psr. Laswi No. 416, Tasikmalaya 29583, Gorontalo', '(+62) 215 8118 491'),
(00000000637, '196000749163468969', 'Bakti Widodo', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Gg. Bakaru No. 12, Banda Aceh 90209, NTB', '(+62) 29 6233 605'),
(00000000638, '196801501450700674', 'Uli Aryani', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Dk. Yos No. 303, Mataram 38156, DIY', '027 9334 848'),
(00000000639, '199071237715650878', 'Jaswadi Nardi Simanjuntak S.Farm', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Jln. Padang No. 455, Balikpapan 16838, NTT', '(+62) 826 3624 5910'),
(00000000640, '196975402081359268', 'Adinata Mustofa', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Dk. Labu No. 805, Batu 79638, NTB', '0715 7048 2729'),
(00000000641, '199877141700792868', 'Sakti Maheswara', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Ds. Yos No. 673, Banjarmasin 87009, Gorontalo', '0500 7047 097'),
(00000000642, '197405895834644676', 'Teguh Gamblang Waskita', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Psr. Eka No. 475, Padang 45408, DIY', '(+62) 722 2088 7952'),
(00000000643, '199688330816614617', 'Kamila Farah Purnawati', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Dk. Cut Nyak Dien No. 67, Madiun 56299, Sulut', '0792 0260 946'),
(00000000644, '199197840779947394', 'Syahrini Hassanah', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Ds. M.T. Haryono No. 677, Pangkal Pinang 88399, Aceh', '(+62) 523 0349 9170'),
(00000000645, '196682141025465411', 'Reksa Uwais', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Jln. Salam No. 213, Pontianak 66922, Banten', '0213 5584 1678'),
(00000000646, '195908204952477661', 'Diana Agustina', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jr. Ters. Pasir Koja No. 761, Jambi 29446, Jabar', '(+62) 27 6478 840'),
(00000000647, '198444432934526383', 'Yusuf Yahya Pranowo S.T.', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Ds. BKR No. 819, Jayapura 69160, Jateng', '0840 3650 700'),
(00000000648, '197905339074940350', 'Harja Praba Sihombing S.E.', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Jr. PHH. Mustofa No. 68, Pekalongan 71177, Jatim', '(+62) 21 0286 054'),
(00000000649, '195730573545160154', 'Eka Yuniar', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Kpg. Imam Bonjol No. 673, Administrasi Jakarta Selatan 74128, Sultra', '0241 5218 6290'),
(00000000650, '195842457654016225', 'Sarah Novitasari', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Ki. Basoka No. 868, Lhokseumawe 18493, Gorontalo', '0669 0159 661'),
(00000000651, '197842901297008688', 'Maya Susanti', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Gg. Tentara Pelajar No. 385, Sawahlunto 15182, Jatim', '0307 8225 780'),
(00000000652, '195331619862629113', 'Ulya Fitria Purnawati', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Kpg. Rajawali Barat No. 746, Pangkal Pinang 87969, DIY', '(+62) 248 3857 088'),
(00000000653, '198028422499845474', 'Mulyono Prasetyo', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Dk. M.T. Haryono No. 74, Padangpanjang 11591, Sulteng', '0311 6989 3103'),
(00000000654, '198537121140820240', 'Panca Ghani Siregar', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Psr. Wahidin Sudirohusodo No. 496, Tual 58973, NTB', '(+62) 437 1826 034'),
(00000000655, '195363768369540891', 'Nilam Agustina', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Jln. Lumban Tobing No. 502, Sukabumi 29243, Riau', '0724 3891 9837'),
(00000000656, '195035940669023703', 'Zamira Ifa Nasyidah', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Dk. Bakau Griya Utama No. 635, Depok 12248, Sulut', '(+62) 21 6028 9304'),
(00000000657, '198307044559336314', 'Violet Anggraini', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Jln. Jamika No. 170, Serang 14502, Sulsel', '(+62) 955 0648 838'),
(00000000658, '199278627102658280', 'Bahuwirya Lulut Hutapea', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Ki. Dewi Sartika No. 353, Banjarmasin 93942, Malut', '020 9946 3775'),
(00000000659, '198916071328173217', 'Diana Astuti', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Gg. Pattimura No. 86, Administrasi Jakarta Selatan 38178, Kepri', '0282 8772 9067'),
(00000000660, '197914472402193125', 'Yunita Farida', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Ds. Jamika No. 351, Solok 77877, Kalbar', '(+62) 739 9341 1520'),
(00000000661, '197126244046991964', 'Clara Riyanti', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Jln. Padang No. 698, Bima 38027, NTB', '(+62) 749 5902 940'),
(00000000662, '195928196390892273', 'Hamima Clara Aryani S.E.', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Dk. M.T. Haryono No. 957, Metro 12048, Sulut', '025 1776 0780'),
(00000000663, '195607076135958779', 'Harimurti Anggriawan', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Jr. Baranangsiang No. 299, Kotamobagu 43276, Maluku', '(+62) 998 7254 3965'),
(00000000664, '195859678605740403', 'Daliman Wasita', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Psr. Jayawijaya No. 662, Banjar 12069, Kalteng', '0396 4008 696'),
(00000000665, '198434505182969714', 'Maria Aryani', 'Sekretariat (Keuangan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Wahidin Sudirohusodo No. 39, Bitung 19017, Lampung', '(+62) 646 5943 4741'),
(00000000666, '196586049851501190', 'Maya Ani Anggraini', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Jr. B.Agam Dlm No. 456, Balikpapan 36135, Gorontalo', '(+62) 874 5209 079'),
(00000000667, '195975822127734307', 'Prayitna Sihombing', 'Bidang (Poldagri)', 'IV/a', 'Pembina Tk.I', 'Jln. Achmad Yani No. 926, Pematangsiantar 46558, Riau', '(+62) 761 5940 6182'),
(00000000668, '197665886517223543', 'Salimah Purnawati S.E.I', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Kpg. Moch. Toha No. 707, Lhokseumawe 24484, Malut', '0315 6027 3931'),
(00000000669, '197089587182785416', 'Cawisono Harto Kusumo', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Jln. Jend. Sudirman No. 20, Tidore Kepulauan 84242, Sulbar', '0823 6411 751'),
(00000000670, '196478732829256527', 'Bambang Dongoran S.Psi', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Yap Tjwan Bing No. 414, Tegal 41848, Sulteng', '(+62) 677 1837 984'),
(00000000671, '197619145462535424', 'Candrakanta Eka Firmansyah S.Pd', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ds. Kalimantan No. 527, Palembang 63630, Jatim', '(+62) 982 6512 927'),
(00000000672, '195059333478993957', 'Qori Safitri', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Jr. Villa No. 450, Manado 21062, Papua', '(+62) 552 4997 440'),
(00000000673, '199458022046532082', 'Johan Kayun Tamba S.I.Kom', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Psr. Jend. A. Yani No. 929, Binjai 13824, Riau', '026 3007 2196'),
(00000000674, '195427401074759492', 'Marwata Nugroho M.Kom.', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Kpg. Supono No. 460, Tomohon 70734, Bengkulu', '0552 2010 8201'),
(00000000675, '195745190306674758', 'Prabu Simbolon', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Ki. Hasanuddin No. 601, Bukittinggi 85051, Banten', '(+62) 342 9561 8809'),
(00000000676, '195417628538861605', 'Yahya Jailani S.E.', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ds. Yogyakarta No. 654, Jayapura 39523, Jambi', '(+62) 845 5435 9607'),
(00000000677, '195279151229448568', 'Emas Manullang', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Psr. Jaksa No. 530, Bandar Lampung 28804, Kalbar', '0758 1499 7853'),
(00000000678, '199275733775609665', 'Ibun Gunarto', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Jr. Adisucipto No. 672, Medan 12415, Sumut', '029 9758 7377'),
(00000000679, '197228500501206953', 'Eman Simbolon', 'Sekretariat (Perencanaan)', 'IV/a', 'Pembina Tk.I', 'Kpg. Bak Air No. 464, Sabang 13159, Sumbar', '020 0727 5262'),
(00000000680, '199001969662611973', 'Cornelia Safitri S.Pd', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Dk. Wahidin Sudirohusodo No. 820, Solok 26201, Kalbar', '0332 8845 3373'),
(00000000681, '198831513166508939', 'Legawa Siregar', 'Sekretariat (Perencanaan)', 'IV/b', 'Pembina Tk.I', 'Ki. Veteran No. 944, Bandar Lampung 95359, Sumut', '0984 2218 005'),
(00000000682, '197888649476351193', 'Cawisadi Prayitna Kurniawan S.IP', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Jln. Kyai Gede No. 959, Manado 84064, Bali', '(+62) 764 7957 501'),
(00000000683, '195325233311411017', 'Najam Saputra M.Ak', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Jr. Baladewa No. 505, Mataram 28869, Jateng', '0971 8327 9788'),
(00000000684, '199813871363872848', 'Nardi Prabowo S.Kom', 'Sekretariat (Arsip)', 'IV/a', 'Pembina Tk.I', 'Jln. Baranang Siang Indah No. 565, Administrasi Jakarta Barat 20310, Malut', '(+62) 898 109 772'),
(00000000685, '199734692624483834', 'Mulyono Marbun', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Kpg. Lada No. 272, Tomohon 96013, Sumut', '0963 7459 3752'),
(00000000686, '198105051709556763', 'Ade Sudiati', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Psr. Yoga No. 861, Langsa 44618, Kaltim', '0858 2000 545'),
(00000000687, '199954745515640886', 'Kala Setiawan', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Gg. Hang No. 509, Bontang 73673, Sultra', '(+62) 663 5863 7714'),
(00000000688, '197530516754521253', 'Gawati Mila Namaga S.T.', 'Bidang (Kesbak)', 'IV/b', 'Pembina Tk.I', 'Jr. Salak No. 182, Batu 83909, Babel', '0457 5190 1258'),
(00000000689, '196745619940365006', 'Jelita Paulin Purnawati', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Jln. Labu No. 767, Pontianak 25935, Kaltim', '(+62) 220 6666 9807'),
(00000000690, '199722383457574116', 'Wakiman Mansur', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Gg. Bakti No. 462, Bukittinggi 43029, Gorontalo', '(+62) 452 1187 945'),
(00000000691, '196065075431002603', 'Genta Puti Hastuti S.Ked', 'Sekretariat (Kepegawaian)', 'IV/b', 'Pembina Tk.I', 'Kpg. Kusmanto No. 924, Samarinda 85601, Kepri', '0807 928 528'),
(00000000692, '196922480322528888', 'Endah Pudjiastuti', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Gg. Bak Air No. 113, Payakumbuh 20479, Sulut', '(+62) 897 3744 7191'),
(00000000693, '199157163386578104', 'Emong Ardianto', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Psr. Jayawijaya No. 491, Administrasi Jakarta Utara 27862, Jatim', '(+62) 606 6955 612'),
(00000000694, '195602675212163317', 'Titin Puspita', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Ki. Abdul No. 445, Samarinda 10168, Pabar', '0848 4269 5388'),
(00000000695, '198071554205149494', 'Malika Maryati', 'Bidang (Kesbak)', 'IV/a', 'Pembina Tk.I', 'Dk. Pahlawan No. 217, Pontianak 31613, Sulut', '(+62) 961 7638 0574'),
(00000000696, '199916867163097410', 'Dwi Hidayat', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Kpg. Otto No. 208, Samarinda 15497, NTB', '0974 1423 9665'),
(00000000697, '196243071510655438', 'Paulin Mardhiyah', 'Bidang (Idwasbang)', 'IV/a', 'Pembina Tk.I', 'Jln. Asia Afrika No. 804, Jayapura 72775, Jatim', '0508 6115 847'),
(00000000698, '199376843529773927', 'Saiful Marbun', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Psr. Baik No. 248, Sukabumi 21902, Sulteng', '0985 8915 330'),
(00000000699, '198915192134175101', 'Rangga Ganda Dabukke S.T.', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Psr. Nakula No. 366, Padangsidempuan 61986, Banten', '(+62) 980 6048 437'),
(00000000700, '195952354926403113', 'Vanya Wijayanti S.E.', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Gg. Dipatiukur No. 218, Pariaman 22549, DKI', '0390 1778 2998'),
(00000000701, '198060880810959350', 'Aurora Najwa Puspita', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Kpg. Sudiarto No. 655, Manado 46502, Sulbar', '0704 6607 0634'),
(00000000702, '197850395286304275', 'Ade Bakti Najmudin', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Yohanes No. 958, Semarang 65966, Pabar', '0725 8418 186'),
(00000000703, '199243579406498722', 'Eka Andriani S.I.Kom', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jln. Bakau No. 20, Cirebon 42090, Sulbar', '0639 4598 1423'),
(00000000704, '198774673823854929', 'Harja Mustofa', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jln. Cikapayang No. 938, Padangpanjang 92945, Babel', '023 0764 4119'),
(00000000705, '196072675689712137', 'Agnes Sudiati', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jr. Kyai Gede No. 111, Cimahi 67833, Kaltara', '0615 4052 529'),
(00000000706, '197595442649786276', 'Siska Nuraini S.IP', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Flora No. 535, Tebing Tinggi 67426, Gorontalo', '(+62) 893 766 468'),
(00000000707, '198868336475226519', 'Vivi Puspita S.T.', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jr. Sugiyopranoto No. 501, Palembang 89476, Sulbar', '(+62) 877 3525 7498'),
(00000000708, '199043000107001509', 'Kasim Widodo S.IP', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Padang No. 72, Solok 60912, DIY', '(+62) 230 1978 8428'),
(00000000709, '199505928158119220', 'Eka Luthfi Damanik', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Cut Nyak Dien No. 40, Gorontalo 69568, Pabar', '0744 4238 165'),
(00000000710, '199735330237736057', 'Mulya Marpaung', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jr. PHH. Mustofa No. 42, Administrasi Jakarta Timur 46565, Jabar', '(+62) 778 1626 483'),
(00000000711, '196259004155286576', 'Rahman Prasetyo M.Farm', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Dk. Bata Putih No. 111, Tangerang Selatan 62116, Kaltara', '(+62) 533 2204 448'),
(00000000712, '195387032737098600', 'Rahmi Wahyuni', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Dk. Arifin No. 555, Kediri 50109, Banten', '(+62) 332 5830 743'),
(00000000713, '197839294884976769', 'Artanto Arta Prasetya', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Moch. Yamin No. 28, Medan 63245, Bali', '(+62) 338 3927 8744'),
(00000000714, '196035794204397537', 'Michelle Sadina Nurdiyanti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Gg. Suryo No. 807, Solok 41213, Maluku', '0763 6363 998'),
(00000000715, '196618718458828645', 'Hairyanto Dadap Hutasoit', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Dk. Rajawali Barat No. 553, Tidore Kepulauan 86190, DIY', '(+62) 332 0251 059'),
(00000000716, '199007715451456385', 'Cinta Prastuti', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Salak No. 856, Pekalongan 74830, Riau', '(+62) 20 1647 025'),
(00000000717, '195465015392622073', 'Hamima Tiara Handayani', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Gg. Yos Sudarso No. 827, Sorong 44498, Riau', '0787 0520 610'),
(00000000718, '198800383878482874', 'Galak Natsir', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Bakit  No. 5, Tebing Tinggi 34323, Jambi', '0214 1627 6663'),
(00000000719, '197883909146129167', 'Prakosa Yono Nainggolan S.E.', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Psr. Bazuka Raya No. 996, Jayapura 95161, Sultra', '0941 3047 9838'),
(00000000720, '199264435400853019', 'Elma Zulaika S.Ked', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Dk. Bakti No. 304, Pariaman 46496, Aceh', '(+62) 797 7060 188'),
(00000000721, '198481623945732345', 'Estiawan Firmansyah', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Psr. Basoka Raya No. 874, Bukittinggi 96493, Sulbar', '(+62) 245 6630 5051'),
(00000000722, '198306656612840249', 'Lili Ayu Suryatmi S.Farm', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Gg. Yos Sudarso No. 103, Binjai 99218, Banten', '0717 8428 2279'),
(00000000723, '195714183539925655', 'Opan Simbolon', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Gg. Baladewa No. 258, Magelang 45920, Sumbar', '(+62) 618 9927 274'),
(00000000724, '196169106189752747', 'Amelia Dinda Riyanti S.Gz', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Wora Wari No. 316, Manado 64342, Sumut', '(+62) 25 0564 109'),
(00000000725, '199278315756062544', 'Jayadi Kariman Wasita S.Sos', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Sutarjo No. 424, Mojokerto 13701, Babel', '0235 9748 0835'),
(00000000726, '196248384696005017', 'Eka Permata M.Farm', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Kpg. Antapani Lama No. 961, Sibolga 54581, DKI', '0893 1080 3879'),
(00000000727, '199448541032698708', 'Unjani Puspasari S.Farm', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jr. Babadan No. 368, Depok 62691, Riau', '(+62) 953 2179 8403'),
(00000000728, '195727311797442183', 'Zamira Haryanti M.Farm', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Pacuan Kuda No. 895, Palopo 67310, Papua', '0427 7098 1578'),
(00000000729, '198319939946711031', 'Tira Zulaika', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Kalimalang No. 105, Sibolga 59494, Sulbar', '0679 3086 6780'),
(00000000730, '197866068594402430', 'Ibrahim Situmorang', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ds. Jambu No. 106, Administrasi Jakarta Timur 97414, NTB', '0423 8717 535'),
(00000000731, '197377131428064637', 'Kania Wahyuni', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Padma No. 999, Magelang 30555, Maluku', '0879 5934 665'),
(00000000732, '197607882906786830', 'Marwata Jailani', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Dk. Uluwatu No. 188, Palu 21104, Sumbar', '0901 4355 0582'),
(00000000733, '196109903765517287', 'Humaira Irma Hariyah M.Ak', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Psr. Baiduri No. 314, Sukabumi 56169, Gorontalo', '(+62) 364 5235 811'),
(00000000734, '199594233084093998', 'Diah Syahrini Novitasari S.Psi', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Jend. Sudirman No. 308, Cirebon 17332, Maluku', '029 7483 8301'),
(00000000735, '195450253378549822', 'Soleh Haryanto', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Dk. Nakula No. 21, Bau-Bau 39037, NTT', '(+62) 973 9746 563'),
(00000000736, '199449155837034177', 'Argono Tampubolon S.Farm', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Dk. Camar No. 747, Bontang 28137, Bengkulu', '(+62) 768 1918 1476'),
(00000000737, '195135460413590051', 'Kiandra Rahayu', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Psr. Jakarta No. 652, Bandung 99536, Kalteng', '0861 4007 4584'),
(00000000738, '199370522952832505', 'Ade Digdaya Wasita', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Sugiono No. 149, Kupang 39045, Kaltim', '(+62) 547 6976 027'),
(00000000739, '198725151580182548', 'Gina Handayani S.Pd', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. B.Agam Dlm No. 808, Pariaman 63550, Kepri', '(+62) 752 8938 6455'),
(00000000740, '199507856720033944', 'Mulyanto Budiman', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Kpg. Bappenas No. 778, Administrasi Jakarta Selatan 99433, Lampung', '0577 5453 291'),
(00000000741, '198806076789869416', 'Dono Adiarja Suwarno', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Dk. Kebangkitan Nasional No. 553, Pagar Alam 95725, Pabar', '0464 9601 718'),
(00000000742, '197650438030247493', 'Carla Mardhiyah', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Orang No. 666, Mojokerto 52203, Kaltara', '0337 8563 524'),
(00000000743, '197257487255958941', 'Lintang Namaga M.TI.', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Pasir Koja No. 526, Kediri 98371, Sumbar', '(+62) 610 0191 0338'),
(00000000744, '198998456939701722', 'Arsipatra Samosir', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jr. Wahid Hasyim No. 886, Probolinggo 30860, Sultra', '0364 3432 0392'),
(00000000745, '197821125868943478', 'Rika Kusmawati', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Nakula No. 734, Pariaman 11595, Sulut', '0342 7057 2067'),
(00000000746, '199853953924592486', 'Eva Kusmawati M.M.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ds. Baranangsiang No. 305, Balikpapan 36418, Bali', '0971 3073 6364'),
(00000000747, '198426379191229303', 'Cakrabuana Nardi Uwais', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Laswi No. 518, Subulussalam 88329, Sulteng', '(+62) 345 7262 6742'),
(00000000748, '196417620188968178', 'Garan Siregar', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Kpg. Bakau Griya Utama No. 863, Serang 58424, Sulsel', '(+62) 921 0751 526'),
(00000000749, '197410076147159408', 'Raden Adinata Hidayat M.Ak', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ki. Labu No. 78, Palopo 29426, Sulsel', '(+62) 693 4128 992'),
(00000000750, '199692976065372792', 'Alika Hassanah', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ki. Raya Setiabudhi No. 974, Administrasi Jakarta Barat 17019, NTB', '(+62) 828 4552 928'),
(00000000751, '199675497389780735', 'Anastasia Widiastuti S.E.', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Baan No. 512, Palangka Raya 29831, Aceh', '0386 6529 3173'),
(00000000752, '197161518034696494', 'Najwa Wani Safitri', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Kpg. Diponegoro No. 888, Ternate 73116, Kaltara', '(+62) 392 9178 0165'),
(00000000753, '199731774469715621', 'Jarwadi Cahyanto Rajata S.I.Kom', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Kpg. Raden Saleh No. 267, Palopo 79834, Kalteng', '(+62) 545 3328 950'),
(00000000754, '197550723871360694', 'Farah Cici Maryati M.Farm', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ki. Hang No. 216, Prabumulih 82415, Sultra', '(+62) 209 4235 709'),
(00000000755, '197996831634610824', 'Makara Dongoran', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Gg. Pasir Koja No. 268, Tanjungbalai 78084, Jatim', '0527 9217 802'),
(00000000756, '198084477154942294', 'Anastasia Pertiwi S.E.I', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ds. Abdul. Muis No. 393, Bogor 16531, Lampung', '(+62) 273 2184 379'),
(00000000757, '195115263250913372', 'Vanesa Agustina', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Dk. Bayan No. 867, Kotamobagu 93997, Jabar', '0438 5618 934'),
(00000000758, '195274134111588658', 'Empluk Jail Siregar', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Kalimantan No. 486, Pasuruan 89448, Kalbar', '0554 6154 8286'),
(00000000759, '197478399772670773', 'Shania Kusmawati', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Jend. Sudirman No. 954, Padangpanjang 98988, DKI', '(+62) 522 1698 562'),
(00000000760, '197720791719063942', 'Garan Widodo S.I.Kom', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Veteran No. 938, Metro 16620, DKI', '(+62) 26 5225 063'),
(00000000761, '199258727814884945', 'Nabila Rahimah S.Pd', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Gg. Acordion No. 107, Sungai Penuh 15837, Malut', '0734 2316 6446'),
(00000000762, '195052073973643686', 'Elvin Mandala', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Pasirkoja No. 116, Samarinda 71412, Sumut', '0410 5417 957'),
(00000000763, '195902784772641601', 'Padma Utami S.Psi', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Bakit  No. 991, Kendari 56892, Kalsel', '(+62) 542 1635 2644'),
(00000000764, '195836448411843738', 'Mutia Cici Widiastuti', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Kpg. Muwardi No. 601, Administrasi Jakarta Barat 89896, DIY', '0867 822 680'),
(00000000765, '196780842021659379', 'Daru Balangga Marpaung M.Ak', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Cikapayang No. 380, Administrasi Jakarta Timur 41889, Kalsel', '(+62) 322 5349 924'),
(00000000766, '198434641872488455', 'Karimah Widya Usamah S.I.Kom', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jln. Babadan No. 602, Binjai 41569, Kepri', '(+62) 309 7376 300'),
(00000000767, '197976508763122789', 'Liman Nugroho', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. Peta No. 227, Mojokerto 24313, Aceh', '0961 7926 389'),
(00000000768, '195598379252939708', 'Ajeng Suartini S.IP', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Bazuka Raya No. 690, Pasuruan 49640, Kepri', '(+62) 259 7351 3964'),
(00000000769, '198665682236988192', 'Mahdi Luluh Saputra', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ki. Mahakam No. 251, Pagar Alam 87393, Sultra', '(+62) 863 4453 8038'),
(00000000770, '195171441517666927', 'Shania Rahayu Suryatmi S.Ked', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Arifin No. 873, Tangerang Selatan 28818, Kaltara', '0552 7054 232'),
(00000000771, '195841887375979353', 'Warsa Jais Adriansyah', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ki. Flora No. 299, Tidore Kepulauan 13883, Sumbar', '(+62) 733 3041 971'),
(00000000772, '197431082517768439', 'Aurora Kusmawati S.Psi', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Dk. Peta No. 214, Sungai Penuh 40512, DIY', '025 1187 113'),
(00000000773, '196581072695031479', 'Tomi Harjasa Sirait S.I.Kom', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Baranang Siang Indah No. 252, Bukittinggi 38685, Bengkulu', '0657 0216 596'),
(00000000774, '197155564009832936', 'Vicky Agustina', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Kpg. Perintis Kemerdekaan No. 315, Tangerang Selatan 59965, Kaltara', '027 5973 747'),
(00000000775, '199847814232180598', 'Harsaya Wijaya', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jr. Basmol Raya No. 97, Tarakan 81784, Papua', '(+62) 284 4237 7455'),
(00000000776, '196595794010091862', 'Argono Marpaung S.Farm', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Psr. Bazuka Raya No. 314, Yogyakarta 32413, Sulsel', '0939 7053 652'),
(00000000777, '195976032744190939', 'Dalimin Saputra', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Imam Bonjol No. 12, Semarang 38140, Aceh', '0449 0151 506'),
(00000000778, '197028057653200970', 'Embuh Najmudin', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Gg. Baya Kali Bungur No. 592, Administrasi Jakarta Utara 23910, Bengkulu', '(+62) 953 5441 654'),
(00000000779, '199603675007433029', 'Imam Uwais', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ds. Baranang Siang Indah No. 329, Administrasi Jakarta Barat 22466, Aceh', '025 3384 1702'),
(00000000780, '195843491149563533', 'Taufik Ardianto', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Jagakarsa No. 789, Denpasar 38134, Kepri', '(+62) 942 5433 918'),
(00000000781, '198035622058897755', 'Mila Ajeng Riyanti', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Acordion No. 394, Pontianak 27613, Kaltara', '(+62) 21 5691 6898'),
(00000000782, '197980278814632502', 'Eluh Saka Nashiruddin', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Gg. Camar No. 590, Palangka Raya 24876, Gorontalo', '0256 3678 2188'),
(00000000783, '199114109831037611', 'Bala Ridwan Iswahyudi', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Gg. Sam Ratulangi No. 970, Metro 82119, Sumbar', '(+62) 388 5500 8960'),
(00000000784, '195908107479878761', 'Ratih Paris Wastuti S.Farm', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ki. Ikan No. 496, Jambi 83243, Sulbar', '0915 1769 577'),
(00000000785, '195029625965039401', 'Kalim Hutagalung', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Jagakarsa No. 537, Palangka Raya 89591, Kalteng', '(+62) 840 3763 074'),
(00000000786, '198922769908210397', 'Ami Wirda Winarsih', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ki. Hang No. 780, Metro 25584, Kalsel', '(+62) 828 246 540'),
(00000000787, '197311365665294329', 'Chelsea Jessica Nurdiyanti', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Gg. Bahagia  No. 799, Bontang 23705, Kalbar', '(+62) 314 0296 5094'),
(00000000788, '196849041751763680', 'Yuliana Nasyiah S.Pd', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Kpg. Sugiyopranoto No. 195, Ternate 87564, Sumsel', '0496 1279 810'),
(00000000789, '196753550163286266', 'Vera Siska Melani', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ki. Adisumarmo No. 291, Salatiga 58472, Gorontalo', '026 1037 919'),
(00000000790, '198713048251459126', 'Prabowo Wibowo', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Kebonjati No. 690, Tanjungbalai 72563, Pabar', '(+62) 325 9880 737'),
(00000000791, '199247761519570223', 'Zamira Wahyuni S.Sos', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Dk. Yohanes No. 490, Surakarta 14517, Sulbar', '(+62) 643 1481 1425'),
(00000000792, '198289427943607851', 'Dadap Lazuardi', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jr. BKR No. 297, Tangerang 42240, Gorontalo', '020 4434 399'),
(00000000793, '195791316224669937', 'Tina Sudiati S.IP', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Achmad Yani No. 57, Bogor 50876, Malut', '0577 5252 252'),
(00000000794, '198598109339640398', 'Darmanto Januar', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jln. Aceh No. 481, Kupang 62630, Jambi', '(+62) 339 2816 160'),
(00000000795, '198347923251254026', 'Indah Permata', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jr. Ketandan No. 601, Sabang 37025, Jabar', '0954 3620 780'),
(00000000796, '196026021770541868', 'Prima Prasetya', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jln. Abdul Rahmat No. 313, Yogyakarta 85598, Pabar', '(+62) 703 7734 950'),
(00000000797, '199487290299962987', 'Raharja Wasita', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jr. Bayam No. 796, Lhokseumawe 89240, Bengkulu', '0550 8085 6288'),
(00000000798, '198244879259742786', 'Yosef Narpati', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Gremet No. 814, Yogyakarta 83929, DKI', '0588 2380 1851'),
(00000000799, '199730701725583113', 'Almira Nasyiah', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Cikutra Timur No. 572, Sukabumi 57588, Kalteng', '0842 8442 6535'),
(00000000800, '196077831386736746', 'Okto Firgantoro S.Psi', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Gg. Lembong No. 100, Tangerang Selatan 97096, DKI', '(+62) 708 5513 8111'),
(00000000801, '198512402555027252', 'Rosman Makara Ardianto', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Jln. Cut Nyak Dien No. 231, Semarang 47601, Sulut', '(+62) 223 7509 5924'),
(00000000802, '198969491716383027', 'Lala Pudjiastuti S.Kom', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ki. Bakti No. 192, Palu 97314, Sumbar', '(+62) 394 1350 0469'),
(00000000803, '199968621141727368', 'Eka Zulaikha Permata', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jr. Nakula No. 277, Administrasi Jakarta Timur 69716, Jatim', '(+62) 711 2276 818'),
(00000000804, '196218005702429804', 'Keisha Uyainah S.E.I', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Dk. Cikutra Barat No. 226, Tarakan 67476, Kalsel', '(+62) 996 3213 995'),
(00000000805, '196280509078686400', 'Pia Oktaviani', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Adisumarmo No. 442, Tangerang 39833, Bengkulu', '(+62) 621 2851 844'),
(00000000806, '197876896847644322', 'Amalia Raina Hastuti', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Psr. Pacuan Kuda No. 243, Metro 14147, Sulbar', '(+62) 829 2308 8909'),
(00000000807, '195974168168235071', 'Tugiman Kuswoyo', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Jaksa No. 410, Banjarbaru 69808, Kaltim', '0344 8653 202'),
(00000000808, '195088352761504281', 'Prabawa Teddy Maryadi S.H.', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ds. Wora Wari No. 998, Manado 59327, Kalteng', '0323 6478 163'),
(00000000809, '195789990974504838', 'Usman Galar Simanjuntak S.Psi', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Abdul Rahmat No. 802, Singkawang 43238, Kalsel', '(+62) 674 0172 8738'),
(00000000810, '199588666348568973', 'Hani Wulandari', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Basmol Raya No. 632, Serang 22430, DIY', '(+62) 994 9143 5018'),
(00000000811, '195163702244352915', 'Natalia Silvia Aryani S.H.', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Pahlawan No. 213, Semarang 61934, NTB', '(+62) 652 5033 433'),
(00000000812, '197974477716550895', 'Paramita Mulyani', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Psr. Achmad No. 869, Cimahi 84687, Sumsel', '0203 8219 409'),
(00000000813, '195677492439769912', 'Raihan Dartono Waskita', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Bakau No. 538, Administrasi Jakarta Utara 65253, Sumut', '0923 2402 420'),
(00000000814, '198406882590852954', 'Jaga Marbun S.Sos', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ki. Pahlawan No. 795, Denpasar 91789, NTT', '(+62) 842 5345 895'),
(00000000815, '199749772156465251', 'Almira Intan Kusmawati M.Kom.', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Kpg. Baik No. 239, Lubuklinggau 23450, NTT', '(+62) 870 2991 9010'),
(00000000816, '196251448731610921', 'Genta Uyainah S.Pd', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Wahidin No. 443, Sukabumi 99861, Sumut', '0878 476 995'),
(00000000817, '196839622556816538', 'Wani Padmasari', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ki. Gegerkalong Hilir No. 355, Prabumulih 90615, NTT', '0793 5565 249'),
(00000000818, '196945471636546256', 'Gadang Wibowo', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ds. Babadak No. 33, Tanjungbalai 35687, Kalsel', '0402 0522 486'),
(00000000819, '198754854724440775', 'Ade Halimah M.Farm', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Merdeka No. 179, Kupang 35520, Kalteng', '0394 1382 989'),
(00000000820, '195834527034642643', 'Bahuwarna Setiawan', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jr. Muwardi No. 358, Tual 56919, Sultra', '(+62) 382 5989 434'),
(00000000821, '195499896504637348', 'Bakijan Adiarja Natsir', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Jln. Otista No. 800, Yogyakarta 41000, DKI', '(+62) 25 5407 102'),
(00000000822, '195677973226627004', 'Timbul Hutasoit', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Yogyakarta No. 401, Tanjungbalai 10884, Sultra', '(+62) 865 047 149'),
(00000000823, '199048953063517611', 'Gatra Sihombing', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ds. Basudewo No. 643, Subulussalam 26834, Sulut', '0267 3378 061'),
(00000000824, '199588872309913250', 'Galih Maman Samosir S.IP', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Kpg. Basoka No. 523, Banda Aceh 10547, Jambi', '(+62) 552 5504 5576'),
(00000000825, '196476941629618993', 'Elvina Azalea Puspita', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Psr. Acordion No. 100, Bogor 41837, Babel', '0360 0148 265'),
(00000000826, '195435163929271152', 'Belinda Halimah', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Psr. Gajah No. 899, Batam 85262, Kalsel', '(+62) 603 1156 361'),
(00000000827, '198434535824745189', 'Irfan Vinsen Damanik M.M.', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Veteran No. 522, Bekasi 98747, Jambi', '(+62) 876 2074 628'),
(00000000828, '198423437496278669', 'Putri Purnawati S.E.', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Bak Mandi No. 643, Denpasar 24348, Bali', '0230 7416 295'),
(00000000829, '198343543824001567', 'Amalia Pratiwi', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Ekonomi No. 431, Administrasi Jakarta Timur 18044, Jatim', '(+62) 649 5792 767'),
(00000000830, '197018444462927079', 'Irfan Adriansyah S.IP', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Jln. Achmad No. 188, Bogor 74085, Sulsel', '0477 1368 592'),
(00000000831, '199164489502878426', 'Jumadi Galur Mangunsong', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Pelajar Pejuang 45 No. 38, Semarang 52350, Riau', '0909 6714 910'),
(00000000832, '196632020889102060', 'Edison Santoso', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jln. Baha No. 942, Depok 12757, Kepri', '(+62) 364 8161 9505'),
(00000000833, '195426030801010530', 'Salimah Nuraini M.Farm', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Gg. Baja Raya No. 789, Pasuruan 95964, NTT', '0863 107 661'),
(00000000834, '197752769435074029', 'Queen Riyanti', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Baranang Siang No. 149, Administrasi Jakarta Utara 63655, Malut', '0266 7042 630'),
(00000000835, '196266480504376271', 'Radika Edi Saefullah S.Kom', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Gg. Babadak No. 76, Pangkal Pinang 89470, Lampung', '024 3809 9482'),
(00000000836, '197674146380422860', 'Jessica Vanesa Kusmawati', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Kpg. BKR No. 547, Bukittinggi 13069, Kalteng', '0567 6401 800'),
(00000000837, '198856336189977651', 'Unggul Emil Marpaung', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Kpg. Siliwangi No. 137, Semarang 42367, Lampung', '(+62) 682 4595 0461'),
(00000000838, '196603133850574954', 'Radit Mustofa', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Kpg. M.T. Haryono No. 199, Probolinggo 87222, Jateng', '0852 7920 712'),
(00000000839, '199910590891682738', 'Zelda Hariyah', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jr. R.M. Said No. 164, Sibolga 79542, Gorontalo', '(+62) 521 7650 4595'),
(00000000840, '199184493195851233', 'Jefri Thamrin M.TI.', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Karel S. Tubun No. 644, Bima 12997, Jatim', '0889 9409 4039'),
(00000000841, '198462860979901145', 'Bakiman Damanik S.E.I', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Gg. Wahid Hasyim No. 974, Administrasi Jakarta Selatan 14727, Banten', '020 2817 2612'),
(00000000842, '195466126229871370', 'Dinda Kuswandari', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Kpg. Gading No. 807, Cirebon 55280, Sumut', '(+62) 985 6700 8852'),
(00000000843, '195813640335170453', 'Putri Wulandari M.M.', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Sutarjo No. 862, Binjai 56413, Sumut', '(+62) 731 3679 786'),
(00000000844, '199618664499333003', 'Yessi Zamira Yolanda', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ki. Monginsidi No. 987, Mataram 48076, Jateng', '(+62) 25 8808 744'),
(00000000845, '197392728354643342', 'Cornelia Zulaika S.Pd', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Psr. Aceh No. 805, Tebing Tinggi 55427, Kepri', '0479 1478 540'),
(00000000846, '197995853184300497', 'Caket Saragih', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Dk. Eka No. 910, Bukittinggi 64981, Sulut', '(+62) 566 4967 373'),
(00000000847, '195223363341358622', 'Rahayu Ami Yuliarti S.Kom', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jln. Baladewa No. 41, Padang 64621, Kaltara', '0312 5664 918'),
(00000000848, '197742406764459649', 'Jumari Saadat Sirait S.Sos', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ki. Sugiono No. 720, Payakumbuh 27507, DKI', '(+62) 853 784 745'),
(00000000849, '196426108127030309', 'Kala Pratama', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jr. Sugiono No. 296, Padangpanjang 99601, Sumsel', '(+62) 827 8334 4211'),
(00000000850, '197608352439113573', 'Nadia Nuraini M.TI.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Kpg. Arifin No. 674, Bau-Bau 19769, Jambi', '(+62) 997 1799 7423'),
(00000000851, '199987400099020761', 'Lala Laras Fujiati M.Ak', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Psr. Rajawali Barat No. 161, Cimahi 27953, Malut', '(+62) 819 2430 0641'),
(00000000852, '199872609169037718', 'Cindy Talia Purnawati', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Psr. Yos No. 736, Pematangsiantar 68422, Bengkulu', '(+62) 28 2786 055'),
(00000000853, '199167005612876041', 'Virman Mulyanto Irawan', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Dk. Kyai Mojo No. 509, Sukabumi 41247, Papua', '0954 5515 1764'),
(00000000854, '196383143979712592', 'Rangga Waluyo', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Basuki Rahmat  No. 516, Pematangsiantar 88654, Pabar', '0398 3590 384'),
(00000000855, '197374552565337613', 'Rahman Sitompul S.Kom', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jr. Baranangsiang No. 801, Bogor 74784, DIY', '(+62) 768 3393 879'),
(00000000856, '196622076399400429', 'Kadir Lazuardi', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jln. Baja Raya No. 571, Cilegon 56152, Aceh', '(+62) 24 0596 953');
INSERT INTO `tb_pegawai` (`id_pegawai`, `nip`, `nama`, `bagian`, `pangkat`, `jabatan`, `alamat`, `telp`) VALUES
(00000000857, '197292635314493664', 'Damar Sinaga', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ki. Baranangsiang No. 281, Ternate 15043, Sumbar', '(+62) 667 6543 731'),
(00000000858, '195208593015844070', 'Tari Anggraini', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. Tambak No. 794, Ternate 48022, Sulbar', '0473 7696 634'),
(00000000859, '195669305701337870', 'Kanda Dabukke S.Pt', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Kpg. Bass No. 473, Malang 62052, Pabar', '(+62) 904 7623 129'),
(00000000860, '198392610259799949', 'Reza Wibisono M.Kom.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jr. Pelajar Pejuang 45 No. 997, Kupang 63681, Sumsel', '0611 7631 0405'),
(00000000861, '196705804955717310', 'Wadi Nugroho M.Kom.', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ds. Radio No. 535, Bitung 91776, Banten', '(+62) 838 109 136'),
(00000000862, '197074474569957463', 'Indah Ghaliyati Lailasari', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ki. Bayan No. 263, Subulussalam 13547, Jateng', '0961 4235 3588'),
(00000000863, '199945441521193702', 'Faizah Lestari', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Dahlia No. 825, Yogyakarta 11043, Riau', '(+62) 625 1297 278'),
(00000000864, '199570437445910884', 'Kemba Nashiruddin', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. Basuki No. 511, Batu 94191, Jateng', '027 7649 900'),
(00000000865, '195429848041264104', 'Nilam Aryani S.Pd', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Gg. Baranang Siang Indah No. 561, Jayapura 13146, Sulbar', '(+62) 856 1433 6555'),
(00000000866, '197747780194596534', 'Tania Hastuti', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Psr. Jayawijaya No. 22, Denpasar 28854, Jateng', '(+62) 20 4422 336'),
(00000000867, '199755270160913049', 'Marsudi Simanjuntak', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Psr. Tubagus Ismail No. 705, Probolinggo 92796, Kalbar', '0690 7406 529'),
(00000000868, '199671379477376207', 'Karen Maryati', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Gg. Untung Suropati No. 917, Palopo 22616, Jambi', '0528 5869 8746'),
(00000000869, '199027193620351281', 'Titin Sadina Pudjiastuti M.TI.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. M.T. Haryono No. 229, Pasuruan 90218, Pabar', '0827 8482 117'),
(00000000870, '198160274882861448', 'Purwa Iswahyudi S.Pd', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ki. Gegerkalong Hilir No. 213, Samarinda 93013, Sulut', '0208 7235 5371'),
(00000000871, '197171196647758346', 'Gading Narpati S.Ked', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Ds. Padang No. 714, Palembang 75591, Aceh', '029 3850 690'),
(00000000872, '199564456552195368', 'Ajiman Ivan Ramadan', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Dewi Sartika No. 796, Batam 19928, Maluku', '(+62) 982 7535 336'),
(00000000873, '198454226735305382', 'Nova Salwa Pratiwi', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Gg. Elang No. 274, Binjai 38703, Sulsel', '(+62) 25 3082 183'),
(00000000874, '199941243334318783', 'Yessi Maida Puspita', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Dk. Wahidin No. 694, Salatiga 44832, Gorontalo', '(+62) 271 9980 7931'),
(00000000875, '195839260763298656', 'Ani Widya Nasyiah', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jr. Moch. Yamin No. 915, Bima 20424, Jabar', '(+62) 723 6229 388'),
(00000000876, '195087174460931063', 'Samiah Uyainah', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jln. Gajah Mada No. 610, Denpasar 29270, Bali', '0841 2666 890'),
(00000000877, '198988221076700431', 'Anita Raina Wulandari', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Dk. Baja Raya No. 810, Pangkal Pinang 96594, Pabar', '(+62) 288 2968 9937'),
(00000000878, '197732245029600314', 'Darimin Danuja Adriansyah S.Kom', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Gg. Otista No. 36, Padang 98663, DKI', '(+62) 897 465 726'),
(00000000879, '196499743484850590', 'Winda Zulaika', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jln. Ciumbuleuit No. 383, Bekasi 81341, DKI', '0515 8205 8393'),
(00000000880, '198560830725778898', 'Balamantri Saptono', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Pasteur No. 217, Padangsidempuan 24620, Jabar', '(+62) 559 0567 7310'),
(00000000881, '197541260522570246', 'Iriana Handayani', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Psr. Suryo Pranoto No. 534, Sawahlunto 37897, Kepri', '(+62) 26 3534 903'),
(00000000882, '196382216647140429', 'Puspa Wulandari', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jln. Salam No. 655, Magelang 95179, Jabar', '0619 6313 282'),
(00000000883, '198616605506177022', 'Rina Karen Permata', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Psr. Eka No. 107, Cimahi 36551, Kalsel', '(+62) 893 7546 040'),
(00000000884, '196035058791236577', 'Indah Puspasari S.E.I', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Dk. Banal No. 61, Pasuruan 40588, Banten', '0485 3306 692'),
(00000000885, '196962342346442878', 'Mahdi Tugiman Situmorang', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Kpg. Teuku Umar No. 491, Banjarmasin 50396, Jambi', '(+62) 748 4707 544'),
(00000000886, '195737759965745764', 'Banara Lantar Widodo', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Dk. Bara Tambar No. 773, Bontang 45004, Sumut', '(+62) 510 6403 901'),
(00000000887, '199940001807534130', 'Qori Laksita', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Babah No. 147, Sibolga 90511, Malut', '(+62) 653 4325 9794'),
(00000000888, '196023381275120697', 'Patricia Wahyuni', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Yoga No. 905, Bandung 61394, Kalteng', '(+62) 821 0990 592'),
(00000000889, '195518915181917157', 'Lalita Nuraini', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Gading No. 401, Tual 78538, Jatim', '(+62) 485 1975 8237'),
(00000000890, '195846595589020566', 'Olivia Permata', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. Abdul. Muis No. 328, Makassar 21176, Sumut', '(+62) 385 5056 248'),
(00000000891, '198584538301919413', 'Labuh Megantara', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Jln. Umalas No. 837, Metro 74003, Aceh', '(+62) 959 8484 901'),
(00000000892, '197310720806197055', 'Silvia Novi Suartini', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Dk. Bappenas No. 35, Semarang 17945, Jabar', '(+62) 235 2931 860'),
(00000000893, '196126126169802820', 'Jaka Hardana Prayoga M.Pd', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Cikutra Barat No. 636, Tasikmalaya 98405, Lampung', '0312 0943 5767'),
(00000000894, '195924527852280902', 'Vanya Suryatmi M.M.', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ds. Jambu No. 878, Semarang 29376, Jambi', '(+62) 684 1759 588'),
(00000000895, '195024022392840113', 'Dartono Permadi', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Kpg. Barat No. 688, Bengkulu 58818, Bengkulu', '0888 661 512'),
(00000000896, '197617317799006615', 'Lukita Maulana', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jln. Bass No. 327, Ternate 56939, Jabar', '(+62) 867 8499 8568'),
(00000000897, '198873376560597060', 'Gandewa Waskita M.Ak', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Kebonjati No. 2, Pematangsiantar 79069, Sumut', '(+62) 668 8699 8970'),
(00000000898, '198494807050665871', 'Kania Widiastuti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Ds. R.M. Said No. 903, Cimahi 96231, Kaltara', '(+62) 23 9800 6767'),
(00000000899, '196926537371275262', 'Patricia Chelsea Wahyuni', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ds. Aceh No. 774, Mojokerto 91538, Banten', '029 9149 7400'),
(00000000900, '199130782109647481', 'Jane Michelle Wastuti', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Psr. Urip Sumoharjo No. 712, Probolinggo 71547, Babel', '0811 062 285'),
(00000000901, '195628717899628173', 'Wani Yani Novitasari', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ds. Cihampelas No. 174, Pagar Alam 47366, NTT', '(+62) 203 4968 6080'),
(00000000902, '195441398910190329', 'Wardi Sihotang M.Pd', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Dk. Baan No. 244, Kotamobagu 30622, Lampung', '0902 2678 214'),
(00000000903, '195934844897949197', 'Hasta Danu Napitupulu', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ki. Nanas No. 529, Banda Aceh 12205, DKI', '0258 5841 8021'),
(00000000904, '197880806911194725', 'Laras Mayasari', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. W.R. Supratman No. 78, Jayapura 18004, Sulsel', '(+62) 340 6772 9019'),
(00000000905, '195126978619770350', 'Kasiyah Hartati', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. Babakan No. 761, Denpasar 98421, Pabar', '(+62) 521 0174 591'),
(00000000906, '195427938978516420', 'Indra Ivan Saputra M.TI.', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jln. Jamika No. 952, Banjarmasin 79469, DIY', '(+62) 222 0078 830'),
(00000000907, '199244749138547959', 'Vega Harjo Mandala M.TI.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Kpg. Surapati No. 367, Surakarta 20534, Pabar', '(+62) 634 9066 062'),
(00000000908, '197300768373483074', 'Cindy Yuniar', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ds. Baja No. 240, Medan 90009, Jabar', '0851 9703 220'),
(00000000909, '195514045649211846', 'Aisyah Uyainah', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jln. M.T. Haryono No. 530, Banjarmasin 98719, DKI', '(+62) 331 7645 568'),
(00000000910, '195344009057313343', 'Rahayu Nabila Hastuti S.Farm', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Batako No. 872, Bengkulu 33472, Banten', '0860 8859 766'),
(00000000911, '199146805734681559', 'Diana Kuswandari', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Karel S. Tubun No. 116, Pangkal Pinang 12057, Bali', '0750 4685 2865'),
(00000000912, '196316551896443765', 'Kambali Sihombing', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Psr. Bagas Pati No. 113, Kotamobagu 78458, Jatim', '(+62) 372 6867 775'),
(00000000913, '195454941595766451', 'Ajiman Santoso S.Gz', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Gg. Baranang No. 55, Salatiga 54397, Kalsel', '0855 143 667'),
(00000000914, '195655862310271968', 'Fathonah Nasyidah', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Gg. Cikapayang No. 10, Sibolga 15448, Maluku', '0218 8362 836'),
(00000000915, '196801933321127001', 'Sadina Tami Mandasari S.H.', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jr. Baabur Royan No. 779, Tomohon 67685, Jatim', '(+62) 741 5254 3784'),
(00000000916, '196389027033387894', 'Nyoman Hidayanto', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Psr. Baiduri No. 491, Tanjungbalai 12524, Lampung', '0653 3214 5684'),
(00000000917, '196731106573518505', 'Aris Pranowo S.Pt', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Kpg. Sukajadi No. 808, Tomohon 17084, Riau', '(+62) 920 2517 898'),
(00000000918, '199752408910163207', 'Drajat Hidayanto', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Panjaitan No. 729, Ternate 88092, NTT', '0931 5959 081'),
(00000000919, '195056216804794903', 'Mustika Siregar', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jr. Lada No. 248, Lubuklinggau 18242, Pabar', '0988 2815 8161'),
(00000000920, '195601225462798445', 'Hesti Hartati', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Dk. Sukabumi No. 949, Blitar 32793, DKI', '0442 3262 033'),
(00000000921, '199484122475366703', 'Chelsea Winarsih S.IP', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ki. Bambu No. 952, Tegal 87986, Aceh', '(+62) 897 2881 822'),
(00000000922, '197518733936498486', 'Marsito Pradana', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ki. Moch. Toha No. 874, Gorontalo 54050, Maluku', '(+62) 731 9184 062'),
(00000000923, '196916151852409721', 'Jelita Lailasari', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Psr. Banceng Pondok No. 589, Cirebon 76733, Kaltara', '0951 9255 155'),
(00000000924, '198052248599221392', 'Yuni Julia Purnawati', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Batako No. 18, Makassar 76800, Kaltara', '(+62) 900 9106 5226'),
(00000000925, '195777251989338789', 'Tami Namaga', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Halim No. 760, Manado 80912, Bali', '0954 3895 5089'),
(00000000926, '198661388086193640', 'Clara Safitri', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Jln. Cikutra Timur No. 693, Bima 28004, Sulut', '(+62) 256 2357 513'),
(00000000927, '197759877145374741', 'Aisyah Halima Usamah S.Sos', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Kpg. Cihampelas No. 456, Bandung 15305, Jabar', '(+62) 656 4522 762'),
(00000000928, '198343888199833553', 'Yulia Ulva Kusmawati', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ki. Baranang Siang Indah No. 170, Jambi 91840, Jabar', '(+62) 217 1097 9635'),
(00000000929, '197649312662507957', 'Salwa Nuraini', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Yos No. 211, Batam 39148, Kalteng', '0937 5328 8439'),
(00000000930, '198028369568116331', 'Ayu Pratiwi', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jr. Suprapto No. 961, Tanjung Pinang 66683, DIY', '(+62) 958 5725 752'),
(00000000931, '196429958096417521', 'Raisa Hariyah S.I.Kom', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Sudiarto No. 238, Bekasi 39311, Banten', '0344 0204 5588'),
(00000000932, '198056693369922965', 'Fitriani Hariyah', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Jend. Sudirman No. 419, Solok 54718, Papua', '0208 7931 971'),
(00000000933, '196794062074459152', 'Kenes Nashiruddin', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Ujung No. 408, Bengkulu 80671, Jabar', '(+62) 28 0285 1472'),
(00000000934, '199146441503603587', 'Asmianto Salahudin M.Farm', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Gg. Thamrin No. 28, Parepare 71560, Gorontalo', '(+62) 998 3877 098'),
(00000000935, '199558414063386270', 'Mursita Budiman S.Ked', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Jr. Ters. Jakarta No. 637, Magelang 40820, Sulteng', '(+62) 691 2677 8228'),
(00000000936, '197604883411820546', 'Caraka Halim', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Psr. Tubagus Ismail No. 92, Administrasi Jakarta Timur 53606, Sulbar', '0908 2463 859'),
(00000000937, '195343941608974490', 'Galang Thamrin', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Jr. Kebangkitan Nasional No. 96, Banjarmasin 79119, Kaltim', '(+62) 425 9610 8596'),
(00000000938, '199914477650851890', 'Cindy Winarsih M.Kom.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jln. Urip Sumoharjo No. 835, Yogyakarta 63300, Gorontalo', '0677 9380 780'),
(00000000939, '195932334069449433', 'Tari Yulianti', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ki. Sumpah Pemuda No. 500, Malang 91918, Kalbar', '(+62) 621 2504 2597'),
(00000000940, '199362564480915718', 'Galiono Gatot Natsir M.M.', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Ki. Yos Sudarso No. 180, Tomohon 64465, Gorontalo', '024 8637 1899'),
(00000000941, '196077130824537612', 'Titin Carla Hassanah S.I.Kom', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Cikutra Barat No. 758, Bogor 16113, Papua', '0901 8050 480'),
(00000000942, '195218027455716361', 'Prabowo Gaiman Saragih', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Kpg. Supono No. 673, Subulussalam 35987, DKI', '0379 4235 030'),
(00000000943, '197327406604409930', 'Gantar Dongoran', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Jln. Siliwangi No. 745, Solok 47542, Kaltara', '(+62) 888 176 820'),
(00000000944, '197464834509327064', 'Panji Simanjuntak S.T.', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Jambu No. 220, Gorontalo 88673, Maluku', '(+62) 763 2554 954'),
(00000000945, '196382156755637683', 'Ibrahim Latupono S.IP', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ds. Cihampelas No. 564, Administrasi Jakarta Utara 58250, Gorontalo', '0715 9946 8395'),
(00000000946, '196148878713844082', 'Rahmi Gina Andriani S.IP', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jr. Bass No. 566, Kupang 65163, DIY', '(+62) 423 8705 6827'),
(00000000947, '196302630696761256', 'Siti Farida', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ds. Jaksa No. 728, Tegal 91329, Jateng', '0379 1131 9398'),
(00000000948, '199571175963682065', 'Novi Permata S.Pd', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Jln. Taman No. 58, Palembang 68331, Sulbar', '(+62) 430 2472 0544'),
(00000000949, '198805216372637615', 'Almira Wulandari S.Gz', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Kpg. Halim No. 525, Banjarbaru 81800, Lampung', '0669 5932 080'),
(00000000950, '198484195691485103', 'Salsabila Mandasari', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Psr. Bak Air No. 940, Pekanbaru 35316, Sumut', '(+62) 951 8334 801'),
(00000000951, '195514477584847111', 'Drajat Prakasa', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Bahagia  No. 855, Bima 94976, NTT', '(+62) 644 4485 656'),
(00000000952, '198048982827648583', 'Mulyanto Wasita', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Dk. Baiduri No. 847, Jayapura 42833, Banten', '022 8730 4473'),
(00000000953, '196623054158823250', 'Shakila Mutia Maryati', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Gg. Ronggowarsito No. 241, Tanjungbalai 70583, Jabar', '0315 7619 151'),
(00000000954, '199623293801131559', 'Rama Mansur', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Bakaru No. 994, Administrasi Jakarta Selatan 62475, Sumbar', '0422 4431 111'),
(00000000955, '197800919116896630', 'Mutia Yulianti', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Gg. Bazuka Raya No. 738, Sorong 83330, NTT', '(+62) 419 7463 8332'),
(00000000956, '197745544136527974', 'Liman Salman Januar', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jr. Tambun No. 155, Bima 16222, Malut', '029 3543 148'),
(00000000957, '195878317302434394', 'Mala Wastuti', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Gg. Bata Putih No. 938, Administrasi Jakarta Pusat 32007, Sumsel', '(+62) 28 2940 821'),
(00000000958, '199761466571141336', 'Carla Tami Safitri', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Surapati No. 860, Sawahlunto 16615, Lampung', '0593 1087 927'),
(00000000959, '196039460964481567', 'Paramita Kamaria Nuraini', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Kpg. Sugiyopranoto No. 480, Bengkulu 33813, Bengkulu', '027 7923 030'),
(00000000960, '198116734861658859', 'Oni Suryatmi', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Psr. Dahlia No. 630, Pekalongan 95669, Sulsel', '(+62) 493 8123 4256'),
(00000000961, '198182337561947748', 'Ani Halimah', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Kpg. Pasirkoja No. 814, Bandar Lampung 41323, DKI', '0334 7996 4401'),
(00000000962, '197321795250439245', 'Qori Padmi Aryani', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Psr. Lumban Tobing No. 805, Madiun 90852, Kaltim', '0450 5180 7493'),
(00000000963, '195579151177052948', 'Irwan Tarihoran S.Ked', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Bambon No. 861, Depok 79191, Sulbar', '023 2847 679'),
(00000000964, '195611733089903515', 'Pangeran Januar', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. Barat No. 89, Sabang 30761, DIY', '(+62) 770 3320 7451'),
(00000000965, '197113291073132358', 'Naradi Marpaung', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Baja No. 559, Pematangsiantar 91798, NTT', '(+62) 522 9009 7689'),
(00000000966, '196133853845186901', 'Sakura Gina Zulaika', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Dk. Abdul Rahmat No. 434, Cirebon 69753, Gorontalo', '(+62) 816 232 597'),
(00000000967, '196371749411170959', 'Siska Sarah Mandasari S.Ked', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Kpg. Bara Tambar No. 607, Sibolga 92396, Sultra', '(+62) 987 7811 581'),
(00000000968, '195838337365517894', 'Bahuraksa Olga Firmansyah S.I.Kom', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Rajawali Timur No. 42, Bau-Bau 54448, Lampung', '(+62) 224 2150 4961'),
(00000000969, '195037170673243119', 'Daniswara Siregar', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Gg. Merdeka No. 95, Kupang 44998, Aceh', '0688 5706 6889'),
(00000000970, '198787629290978586', 'Balamantri Halim', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Kpg. Abdullah No. 500, Ambon 71877, Sultra', '(+62) 446 5822 356'),
(00000000971, '199031418289257765', 'Dimas Sihotang S.I.Kom', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Gg. Radio No. 529, Kediri 41004, Pabar', '025 1315 476'),
(00000000972, '196956032007908178', 'Balidin Asirwanda Firmansyah', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Ds. Umalas No. 784, Tomohon 68804, NTB', '0976 1259 5933'),
(00000000973, '195049251765696744', 'Kairav Salahudin', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Ir. H. Juanda No. 462, Bandung 71861, Sumut', '022 7647 4595'),
(00000000974, '195368061287243038', 'Siska Restu Usada M.Ak', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Dk. Jayawijaya No. 497, Blitar 80941, Sultra', '(+62) 924 7443 531'),
(00000000975, '199445642228448387', 'Bajragin Anggabaya Sirait', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Psr. Gajah No. 715, Sungai Penuh 48957, Sumsel', '(+62) 484 8943 548'),
(00000000976, '199362805843262019', 'Alambana Widodo', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Psr. Bakhita No. 254, Kotamobagu 63313, Papua', '0761 2263 790'),
(00000000977, '198232773739242449', 'Qori Tina Handayani M.Pd', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Ds. Agus Salim No. 923, Pekanbaru 49536, NTB', '0705 6187 7883'),
(00000000978, '197208219224129416', 'Samsul Mustika Gunarto S.Gz', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Sumpah Pemuda No. 581, Prabumulih 11411, Riau', '(+62) 29 3189 3174'),
(00000000979, '198743355761083209', 'Luwar Hutapea M.Kom.', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Psr. Nanas No. 618, Pontianak 65733, Banten', '(+62) 22 1658 1616'),
(00000000980, '198786623966201202', 'Alika Gilda Kusmawati', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Kpg. Bawal No. 170, Kupang 91751, Kaltim', '(+62) 24 3517 8522'),
(00000000981, '197177299768195354', 'Karta Sirait', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Gg. Baabur Royan No. 241, Jambi 19123, Kepri', '(+62) 409 3364 316'),
(00000000982, '196154847352840758', 'Daliman Habibi', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Ds. Casablanca No. 76, Tomohon 90021, DKI', '0478 3814 486'),
(00000000983, '196521967584418777', 'Julia Silvia Yolanda', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Ds. Soekarno Hatta No. 792, Samarinda 87553, Banten', '(+62) 744 8963 116'),
(00000000984, '195220873465464874', 'Amelia Laksita', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Kpg. Dewi Sartika No. 327, Palembang 32247, Malut', '0457 0404 608'),
(00000000985, '196521408477946173', 'Gadang Wakiman Ramadan', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Dk. Gegerkalong Hilir No. 496, Sukabumi 33019, Sulsel', '0486 9277 466'),
(00000000986, '199077271437151155', 'Dewi Natalia Susanti', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Ki. Raya Setiabudhi No. 361, Binjai 53479, Gorontalo', '0848 4642 5682'),
(00000000987, '195117874698942585', 'Shakila Kusmawati', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Dk. Dipenogoro No. 200, Administrasi Jakarta Pusat 67578, Kaltim', '0410 6450 967'),
(00000000988, '198212776805607897', 'Cinthia Maryati', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. Ekonomi No. 712, Padangpanjang 92443, Sulbar', '(+62) 436 3089 3124'),
(00000000989, '199593634089588015', 'Salimah Yuniar', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Jln. Badak No. 236, Pariaman 63569, NTB', '(+62) 241 7296 812'),
(00000000990, '195257202576338871', 'Hasim Danu Damanik S.Ked', 'Bidang (Wasda)', 'III/c', 'Penata Tk.I', 'Jr. Merdeka No. 301, Ambon 89635, DIY', '0969 0773 838'),
(00000000991, '197717031789136549', 'Gamani Waskita', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 554, Magelang 41494, Sumsel', '0726 2591 347'),
(00000000992, '198824387834679301', 'Kasim Rusman Situmorang M.Ak', 'Bidang (Idwasbang)', 'III/c', 'Penata Tk.I', 'Psr. Cokroaminoto No. 620, Tual 32605, Kalteng', '0904 3808 954'),
(00000000993, '195609109626139583', 'Lamar Winarno', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Jr. Ahmad Dahlan No. 212, Kotamobagu 50200, Lampung', '0806 7573 4791'),
(00000000994, '195514258304122829', 'Prima Hasan Hutasoit M.M.', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Kpg. Jaksa No. 456, Bandung 20283, Kalbar', '(+62) 975 1118 4941'),
(00000000995, '197607160988341595', 'Parman Simanjuntak S.Pt', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Dk. Ahmad Dahlan No. 812, Kotamobagu 82567, Babel', '0640 5726 1692'),
(00000000996, '197330446000115659', 'Nurul Namaga', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Dk. Cikutra Timur No. 738, Sawahlunto 34934, Jateng', '0431 3440 1816'),
(00000000997, '196128802857665750', 'Diana Ayu Halimah', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ki. Sampangan No. 612, Palu 71604, Sultra', '(+62) 696 6668 349'),
(00000000998, '197009727001943132', 'Arsipatra Putra', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Dk. Lada No. 942, Payakumbuh 59475, Kaltim', '(+62) 477 7730 861'),
(00000000999, '197381263912082809', 'Olivia Nova Puspita', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Ki. Sam Ratulangi No. 738, Solok 56341, Jateng', '(+62) 717 0193 4914'),
(00000001000, '197294733090158424', 'Karya Prabowo', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ki. Radio No. 187, Sungai Penuh 11471, Jambi', '0488 9769 8139'),
(00000001001, '196479472116605264', 'Raisa Nadia Palastri M.M.', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Psr. Agus Salim No. 767, Ambon 95226, Lampung', '0590 3767 2674'),
(00000001002, '196632177163390662', 'Hasta Hidayanto', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Gg. Villa No. 424, Tarakan 34077, Jabar', '(+62) 25 5435 1271'),
(00000001003, '198957811241219118', 'Hamima Palastri', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Ki. Sadang Serang No. 298, Medan 64134, Gorontalo', '0872 1581 344'),
(00000001004, '198712252771069504', 'Wakiman Tarihoran', 'Bidang (Kesbak)', 'III/c', 'Penata Tk.I', 'Kpg. Radio No. 104, Gorontalo 55514, DKI', '(+62) 780 9889 600'),
(00000001005, '197850797839840754', 'Cakrabuana Budiman', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Ronggowarsito No. 511, Sabang 94602, Papua', '(+62) 838 7130 1251'),
(00000001006, '197985013796990091', 'Okto Simanjuntak', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jln. Ters. Kiaracondong No. 96, Cimahi 15425, Kalteng', '(+62) 22 7104 835'),
(00000001007, '199682465120807028', 'Gantar Lazuardi', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Gg. Gajah No. 52, Bau-Bau 27899, Kaltara', '(+62) 272 3169 6766'),
(00000001008, '198196931918356610', 'Diana Uchita Hastuti', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Gg. Daan No. 423, Lhokseumawe 31681, Sulsel', '(+62) 965 3227 282'),
(00000001009, '198449854992395916', 'Halima Betania Suryatmi', 'Bidang (Poldagri)', 'III/c', 'Penata Tk.I', 'Kpg. Bacang No. 188, Gorontalo 49111, Sumut', '(+62) 975 1502 3930'),
(00000001010, '197992557369125846', 'Fathonah Malika Susanti S.E.I', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Jln. Bagas Pati No. 547, Pariaman 55816, Sumut', '0486 2004 0279'),
(00000001011, '198463287204385343', 'Gamani Dongoran S.I.Kom', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. Cokroaminoto No. 544, Palangka Raya 31809, Kaltara', '0241 8638 9349'),
(00000001012, '195975042907592814', 'Malika Gasti Nasyidah', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Kpg. Panjaitan No. 394, Serang 90979, Sumsel', '(+62) 803 480 681'),
(00000001013, '198758497772505606', 'Tasdik Luthfi Zulkarnain S.Pd', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Gg. Jakarta No. 11, Bima 69193, Sumut', '(+62) 569 3373 2711'),
(00000001014, '198025276476887230', 'Lanjar Emas Rajasa S.Kom', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Ds. Basuki No. 476, Pontianak 20546, Jambi', '0270 9493 926'),
(00000001015, '195485723379713565', 'Rafid Winarno S.I.Kom', 'Bidang (Wasda)', 'III/d', 'Penata Tk.I', 'Ds. PHH. Mustofa No. 136, Makassar 39158, Riau', '(+62) 738 4838 3829'),
(00000001016, '199323482224202355', 'Cici Haryanti', 'Sekretariat (Kepegawaian)', 'III/d', 'Penata Tk.I', 'Ki. Bayam No. 315, Balikpapan 99938, Kalteng', '(+62) 971 8085 360'),
(00000001017, '198817942919802204', 'Saiful Anggriawan S.E.', 'Sekretariat (Kepegawaian)', 'III/c', 'Penata Tk.I', 'Jln. Baladewa No. 932, Banda Aceh 36405, Sumut', '(+62) 720 9744 612'),
(00000001018, '199100105949953279', 'Zulfa Patricia Mulyani', 'Sekretariat (Arsip)', 'III/d', 'Penata Tk.I', 'Ds. Bahagia No. 305, Kotamobagu 58714, Sumut', '0359 9863 719'),
(00000001019, '198058300287903392', 'Rahmi Yuniar', 'Bidang (Poldagri)', 'III/d', 'Penata Tk.I', 'Psr. Labu No. 360, Gunungsitoli 94265, Sulbar', '(+62) 276 3353 950'),
(00000001020, '195534307468328980', 'Ulva Wahyuni', 'Sekretariat (Keuangan)', 'III/d', 'Penata Tk.I', 'Jln. Jagakarsa No. 89, Balikpapan 20212, Sulut', '(+62) 825 4523 559');

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
(001, 'pengelola', '3c7913bc17671596a43dcb4581992bdf619917b79ed106.89382150', '619917b79ed106.89382150', 1, '197494939920237105', 'Rizki Damanik', 'Bidang (Idwasbang)', 'IV/b', 'Pembina Tk.I', 'Jr. Imam No. 778, Tomohon 10326, DKI', '0601 4265 330'),
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
(025, 'margana06', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 2, '199616069539710660', 'Lidya Yuliarti S.I.Kom', 'Bidang (Idwasbang)', 'III/d', 'Penata Tk.I', 'Jr. Sutoyo No. 249, Sungai Penuh 48516, DIY', '0937 2496 135'),
(026, 'pnashiruddin', '827ccb0eea8a706c4c34a16891f84e7b619917d7650567.87460747', '619917d7650567.87460747', 1, '197872247369256121', 'Cakrawala Adriansyah', 'Bidang (Poldagri)', 'IV/b', 'Pembina Tk.I', 'Jln. Suharso No. 906, Pangkal Pinang 93064, Lampung', '(+62) 335 3064 485'),
(032, 'rahimah.yuliana', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 2, '195193079756764055', 'Makuta Jumadi Jailani', 'Sekretariat (Keuangan)', 'IV/a', 'Pembina Tk.I', 'Ds. Honggowongso No. 262, Denpasar 43580, Sumbar', '0851 3884 194'),
(033, 'galang.kurniawan', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 2, '195078451851136757', 'Dalima Nurdiyanti', 'Sekretariat (Arsip)', 'IV/b', 'Pembina Tk.I', 'Dk. Pacuan Kuda No. 388, Cilegon 13350, Malut', '0616 9939 3661'),
(035, 'wijayanti.nurul', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 1, '196388327303590339', 'Elisa Usada', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Ki. Bakaru No. 562, Bengkulu 72751, Sumut', '0690 7102 055'),
(036, 'xlestari', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 1, '196613321702981823', 'Tomi Hutagalung S.Pd', 'Bidang (Wasda)', 'IV/a', 'Pembina Tk.I', 'Ki. Ketandan No. 337, Tegal 23418, DKI', '0554 2188 030'),
(039, 'kartika.prabowo', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 2, '198523896012031450', 'Jamalia Vicky Aryani', 'Sekretariat (Perencanaan)', 'III/c', 'Penata Tk.I', 'Ki. Monginsidi No. 96, Solok 17027, Sulut', '(+62) 911 2281 407'),
(040, 'enteng.adriansyah', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 1, '198592296673307924', 'Oskar Marbun', 'Bidang (Wasda)', 'IV/b', 'Pembina Tk.I', 'Jr. Nakula No. 834, Mataram 93317, Kepri', '0668 5453 9166'),
(041, 'lala.mulyani', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 2, '198387020473264502', 'Agus Anggriawan', 'Sekretariat (Kepegawaian)', 'IV/a', 'Pembina Tk.I', 'Ds. Bakau Griya Utama No. 604, Tarakan 18022, NTB', '(+62) 441 6505 340'),
(044, 'haryanti.hadi', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 1, '199740863261404992', 'Emil Saefullah', 'Sekretariat (Perencanaan)', 'III/d', 'Penata Tk.I', 'Gg. Sutarto No. 148, Subulussalam 99933, Kepri', '0357 5216 4904'),
(045, 'ehalim', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 1, '195141427579912862', 'Virman Nainggolan', 'Bidang (Kesbak)', 'III/d', 'Penata Tk.I', 'Jln. Laswi No. 686, Pekalongan 93317, Kaltim', '0953 6926 864'),
(049, 'saragih.harjasa', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 2, '198864242424248475', 'Paris Zahra Puspita', 'Sekretariat (Arsip)', 'III/c', 'Penata Tk.I', 'Jr. Bakit  No. 618, Pasuruan 79666, Jatim', '0940 7002 8041'),
(050, 'agnes05', '827ccb0eea8a706c4c34a16891f84e7b6199183596d936.64236627', '6199183596d936.64236627', 1, '199616765763854840', 'Ratih Mulyani S.Psi', 'Sekretariat (Keuangan)', 'III/c', 'Penata Tk.I', 'Jr. Flora No. 604, Tasikmalaya 73262, Sumut', '0288 1582 995');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  MODIFY `id_transaksi` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_mobil_keluar`
--
ALTER TABLE `tb_mobil_keluar`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tb_mobil_masuk`
--
ALTER TABLE `tb_mobil_masuk`
  MODIFY `id_mobil` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id_pegawai` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT for table `tb_satuan`
--
ALTER TABLE `tb_satuan`
  MODIFY `id_satuan` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
