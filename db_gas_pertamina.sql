-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2020 pada 15.50
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gas_pertamina`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `couriers`
--

CREATE TABLE `couriers` (
  `id` int(100) UNSIGNED NOT NULL,
  `users_id` int(100) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `wrapping_message` text DEFAULT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `type_angkutan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `couriers`
--

INSERT INTO `couriers` (`id`, `users_id`, `name`, `wrapping_message`, `firstname`, `lastname`, `email`, `phone`, `type_angkutan`) VALUES
(10, 2, 'B210090BAC', 'SDAS ASDKLASDLKASD ASDKL', 'DAVIT', 'KK090KK090', '', '09819231099231', 'truk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `company` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `dob` datetime DEFAULT NULL,
  `email_address` varchar(96) NOT NULL,
  `default_address` text DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `newsletter` char(1) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  `ip_address` varchar(15) DEFAULT NULL,
  `credits` decimal(15,4) DEFAULT 0.0000,
  `date_last_logon` datetime DEFAULT NULL,
  `number_of_logons` int(5) DEFAULT NULL,
  `date_account_created` datetime DEFAULT NULL,
  `date_account_last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `company`, `user_id`, `groups_id`, `gender`, `firstname`, `lastname`, `dob`, `email_address`, `default_address`, `telephone`, `fax`, `newsletter`, `status`, `ip_address`, `credits`, `date_last_logon`, `number_of_logons`, `date_account_created`, `date_account_last_modified`) VALUES
(1, 'PT Hardiansyah Thamrin', 1, 1, 'f', 'Ajiman', 'Winarno', '2020-01-05 06:20:45', 'Ajiman@yahoo.co.id', 'Jl.Cemara, Ds. Madrasah No. 470, Tangerang 66840, Lampung', '+6474745145768', '(+62) 286 9098 7272', '1', 1, '60.22.17.167', '160504.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(2, 'Perum Suryono Utama', 1, 1, 'm', 'Prasetya', 'Sihotang', '2020-01-05 06:20:45', 'Prasetya@gmail.com', 'Jl.Bayam, Jr. Kartini No. 1, Mataram 14894, Maluku', '+2900711235894', '(+62) 675 6169 795', '1', 1, '10.120.48.204', '345945.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(3, 'UD Mustofa Kurniawan', 1, 1, 'm', 'Prayogo', 'Mardhiyah', '2020-01-05 06:20:45', 'Prayogo@gmail.com', 'Jl.Pelajar Pejuang 45, Ki. Yohanes No. 38, Makassar 95973, KalUt', '+2892468835096', '0484 5588 9756', '1', 1, '92.250.27.112', '738873.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(4, 'PD Nugroho Nasyidah Tbk', 1, 1, 'f', 'Putri', 'Oktaviani', '2020-01-05 06:20:45', 'Putri@yahoo.co.id', 'Jl.Orang, Ki. Sutami No. 619, Surakarta 69779, KalBar', '+5750220149468', '(+62) 491 6486 625', '1', 1, '22.73.14.69', '698780.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(5, 'PT Thamrin Nababan', 1, 1, 'f', 'Gatot', 'Saputra', '2020-01-05 06:20:45', 'Gatot@gmail.com', 'Jl.Pacuan Kuda, Gg. Perintis Kemerdekaan No. 94, Pekalongan 72448, BaBel', '+9131594060990', '0739 2076 597', '1', 1, '167.5.253.112', '423996.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(6, 'UD Wijaya Zulaika', 1, 1, 'f', 'Julia', 'Nashiruddin', '2020-01-05 06:20:45', 'Julia@yahoo.com', 'Jl.Sutan Syahrir, Gg. Wora Wari No. 863, Tomohon 29027, KalBar', '+3024704673351', '0872 0824 5474', '1', 1, '131.78.165.98', '828465.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(7, 'PD Hakim Zulaika', 1, 1, 'm', 'Jarwa', 'Lailasari', '2020-01-05 06:20:45', 'Jarwa@yahoo.co.id', 'Jl.Panjaitan, Kpg. Pattimura No. 364, Semarang 64403, MalUt', '+2001251803564', '(+62) 542 2379 3889', '1', 1, '224.219.131.96', '375500.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(8, 'CV Mansur Siregar', 1, 1, 'm', 'Titin', 'Suryatmi', '2020-01-05 06:20:45', 'Titin@yahoo.com', 'Jl.Baya Kali Bungur, Dk. Sugiyopranoto No. 660, Madiun 19471, KepR', '+6572365021164', '(+62) 567 2900 7074', '1', 1, '37.119.146.92', '352992.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(9, 'PD Budiman (Persero) Tbk', 1, 1, 'm', 'Hafshah', 'Handayani', '2020-01-05 06:20:45', 'Hafshah@yahoo.com', 'Jl.Sam Ratulangi, Jln. Kalimantan No. 965, Jambi 82535, KalTeng', '+6542232659399', '0707 1383 054', '1', 1, '153.198.103.31', '757443.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45'),
(10, 'PT Winarsih (Persero) Tbk', 1, 1, 'f', 'Caraka', 'Purwanti', '2020-01-05 06:20:45', 'Caraka@yahoo.co.id', 'Jl.Cut Nyak Dien, Psr. Lumban Tobing No. 859, Parepare 86542, KalTim', '+7522076451476', '0641 1603 0597', '1', 1, '196.55.53.174', '315369.0000', '2020-01-05 06:20:45', 1, '2020-01-05 06:20:45', '2020-01-05 06:20:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` int(8) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(8) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20191214001350);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(100) UNSIGNED NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `customers_id` int(100) UNSIGNED NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_company` varchar(100) NOT NULL,
  `delivery_street_address` text DEFAULT NULL,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_postcode` varchar(100) NOT NULL,
  `delivery_state` varchar(100) NOT NULL,
  `delivery_phone` varchar(100) NOT NULL,
  `billing_name` varchar(100) NOT NULL,
  `billing_company` varchar(100) NOT NULL,
  `billing_street_address` text DEFAULT NULL,
  `payment_method` text DEFAULT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `customers_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_phone`, `billing_name`, `billing_company`, `billing_street_address`, `payment_method`, `latitude`, `longitude`) VALUES
(1, 'INV-34967220200105', 72, 'Tri Permadi', 'PD Sitorus Habibi', 'Jr. Dr. Junjunan No. 326, Lhokseumawe 96373, NTT', 'Sukabumi', '14557', 'Kalimantan Barat', '+7107727331714', 'Genta Raina Novitasari M.M.', 'UD Mayasari Sihombing', 'Jr. Achmad Yani No. 804, Ambon 91800, NTT', 'cash', '44.391749', '8.572397'),
(2, 'INV-36791420200105', 21, 'Jaswadi Santoso', 'CV Samosir Mahendra', 'Kpg. Surapati No. 566, Bandar Lampung 56978, Maluku', 'Ambon', '51412', 'Nusa Tenggara Barat', '+9854306670304', 'Nasab Rajasa M.Farm', 'PD Dabukke', 'Psr. Dr. Junjunan No. 871, Tasikmalaya 53409, SumSel', 'credit', '61.924942', '22.779718'),
(3, 'INV-54539820200105', 31, 'Putu Nashiruddin', 'PD Suwarno Wijaya', 'Gg. Rajawali No. 780, Administrasi Jakarta Barat 92806, SumUt', 'Administrasi Jakarta Pusat', '76553', 'Nusa Tenggara Timur', '+6021273228674', 'Himawan Halim', 'Perum Novitasari Maryati (Persero) Tbk', 'Psr. R.E. Martadinata No. 805, Pontianak 26882, SulTra', 'credit', '61.557829', '47.527713'),
(4, 'INV-84425020200105', 85, 'Langgeng Suryono', 'UD Wijayanti (Persero) Tbk', 'Psr. Ekonomi No. 715, Ambon 72740, BaBel', 'Pagar Alam', '47454', 'Nusa Tenggara Timur', '+5664260363205', 'Elvina Mayasari', 'PT Nugroho Tbk', 'Jr. B.Agam Dlm No. 648, Manado 45125, SulTeng', 'cash', '54.499725', '76.957381'),
(5, 'INV-65049020200105', 41, 'Dalima Laila Palastri', 'UD Nasyiah Tbk', 'Psr. Halim No. 816, Mataram 56171, SumUt', 'Pontianak', '29970', 'Maluku', '+6489466185427', 'Jessica Julia Mandasari', 'PT Wulandari', 'Psr. Pasteur No. 502, Administrasi Jakarta Barat 48752, JaBar', 'credit', '78.816975', '75.615067'),
(6, 'INV-59878020200105', 11, 'Joko Satya Salahudin', 'Perum Iswahyudi', 'Jln. Pahlawan No. 106, Metro 22515, KalBar', 'Balikpapan', '11769', 'Papua Barat', '+1966897072416', 'Sarah Zamira Yolanda S.E.I', 'CV Nuraini Anggraini Tbk', 'Gg. Batako No. 922, Gunungsitoli 70539, JaTeng', 'credit', '83.696344', '85.576767'),
(7, 'INV-57596320200105', 78, 'Sari Sudiati', 'PD Fujiati (Persero) Tbk', 'Psr. B.Agam Dlm No. 41, Kupang 76852, DKI', 'Pekanbaru', '84588', 'Maluku Utara', '+4307987726044', 'Vero Hutagalung', 'PD Wastuti', 'Dk. Dipatiukur No. 677, Solok 89111, KalSel', 'cash', '105.863733', '57.797061'),
(8, 'INV-73870120200105', 21, 'Uchita Hassanah', 'PD Hidayat', 'Psr. Bayam No. 201, Madiun 24239, DIY', 'Palu', '31576', 'Kepulauan Riau', '+6783729255772', 'Azalea Nurdiyanti M.M.', 'UD Wacana Utami (Persero) Tbk', 'Gg. Wahidin No. 116, Metro 12536, SumSel', 'credit', '0.40775', '5.529885'),
(9, 'INV-4856620200105', 82, 'Reksa Wibisono S.E.I', 'PD Wastuti Winarno (Persero) Tbk', 'Gg. Bayan No. 221, Cirebon 75493, Banten', 'Kotamobagu', '96486', 'Sulawesi Tenggara', '+3984778496392', 'Olga Ghani Wahyudin S.Ked', 'CV Kusmawati Saragih (Persero) Tbk', 'Ki. Jakarta No. 870, Pagar Alam 67409, Maluku', 'credit', '99.036936', '3.10263'),
(10, 'INV-19708620200105', 32, 'Hamima Sudiati S.Pt', 'CV Nuraini Tbk', 'Ds. Pahlawan No. 246, Gorontalo 45155, NTT', 'Serang', '53701', 'Sulawesi Selatan', '+5174429489871', 'Ani Sabrina Agustina', 'PD Tampubolon', 'Ki. Gedebage Selatan No. 401, Bontang 93879, SulUt', 'cash', '55.790933', '63.135247'),
(11, 'INV-32947820200105', 7, 'Nardi Adriansyah', 'CV Anggraini Jailani', 'Kpg. Daan No. 21, Jambi 52583, DIY', 'Bitung', '26978', 'Papua', '+7055858448350', 'Zulaikha Karen Suartini', 'Perum Hardiansyah (Persero) Tbk', 'Ki. Madrasah No. 500, Tebing Tinggi 80136, DKI', 'cash', '35.980073', '50.079956'),
(12, 'INV-83629120200105', 66, 'Irma Yuniar', 'PT Kuswoyo Tbk', 'Jln. Aceh No. 196, Sukabumi 92034, KepR', 'Sibolga', '68138', 'Bali', '+4414380313082', 'Uli Rahayu S.Sos', 'Perum Napitupulu Suartini', 'Psr. Cikapayang No. 34, Pariaman 28346, KepR', 'cash', '3.571788', '74.492796'),
(13, 'INV-39839720200105', 87, 'Legawa Ian Tamba', 'UD Tarihoran', 'Psr. BKR No. 614, Pematangsiantar 59562, Lampung', 'Madiun', '84427', 'Nusa Tenggara Barat', '+2764514039716', 'Joko Jaswadi Firmansyah', 'Perum Mandasari Tbk', 'Ki. Babah No. 230, Kupang 82747, KalTeng', 'cash', '-2.393945', '38.638306'),
(14, 'INV-41605520200105', 41, 'Wasis Luwes Irawan', 'PT Hasanah', 'Dk. Baan No. 983, Depok 21256, BaBel', 'Makassar', '18218', 'Nusa Tenggara Barat', '+9615790150846', 'Tina Mulyani', 'PD Rahmawati Tbk', 'Dk. Ters. Kiaracondong No. 515, Banjar 19335, Lampung', 'cash', '55.814582', '11.892168'),
(15, 'INV-71819020200105', 21, 'Hari Prasetyo', 'PT Pratiwi Suryatmi Tbk', 'Ds. Kebonjati No. 660, Tarakan 88427, JaTeng', 'Yogyakarta', '87568', 'Sulawesi Tengah', '+5262170409995', 'Septi Wulandari', 'UD Suryono Mardhiyah Tbk', 'Psr. Madrasah No. 863, Kotamobagu 87802, JaTim', 'credit', '73.332534', '14.527364'),
(16, 'INV-3214120200105', 90, 'Maryadi Wasita', 'CV Hutapea', 'Gg. Basoka Raya No. 178, Dumai 62919, KalSel', 'Cimahi', '34537', 'Maluku Utara', '+8814731355777', 'Galih Sirait', 'PD Sinaga', 'Dk. Rajiman No. 437, Lubuklinggau 10963, Aceh', 'cash', '80.08063', '105.947414'),
(17, 'INV-31344020200105', 79, 'Wadi Hairyanto Lazuardi S.Farm', 'PD Manullang', 'Kpg. Bagis Utama No. 858, Bima 26018, SulUt', 'Magelang', '69223', 'Riau', '+6133418764702', 'Tri Oskar Mahendra S.H.', 'Perum Rajasa Tbk', 'Gg. PHH. Mustofa No. 57, Metro 48943, JaBar', 'cash', '92.47146', '36.150108'),
(18, 'INV-33094820200105', 88, 'Nabila Uchita Prastuti', 'UD Marpaung Nasyidah', 'Dk. Gambang No. 984, Probolinggo 32822, DIY', 'Gunungsitoli', '44818', 'Sumatera Barat', '+1768955002560', 'Rachel Nasyiah', 'UD Budiyanto Prabowo Tbk', 'Ki. Ekonomi No. 911, Sukabumi 59632, JaTeng', 'credit', '25.157368', '66.627403'),
(19, 'INV-38329120200105', 83, 'Prima Cayadi Mangunsong', 'PD Mardhiyah', 'Ds. Bappenas No. 608, Banjarmasin 21909, Aceh', 'Semarang', '93578', 'Bali', '+5045524449975', 'Cawisono Sakti Irawan', 'Perum Widodo Wahyuni (Persero) Tbk', 'Jln. K.H. Wahid Hasyim (Kopo) No. 826, Solok 83204, KalSel', 'credit', '-3.473259', '8.849998'),
(20, 'INV-84879120200105', 16, 'Puspa Widiastuti M.Ak', 'Perum Wahyuni Prayoga (Persero) Tbk', 'Kpg. Yosodipuro No. 830, Serang 34446, Riau', 'Jambi', '64105', 'Papua', '+9170274374660', 'Cornelia Ira Nuraini', 'Perum Puspasari Gunawan (Persero) Tbk', 'Gg. Bawal No. 845, Semarang 55429, Bengkulu', 'cash', '83.558684', '42.399664'),
(21, 'INV-55823220200105', 38, 'Melinda Yulianti', 'CV Usada Tbk', 'Psr. Baladewa No. 917, Jayapura 24844, KalTeng', 'Subulussalam', '58512', 'Jawa Timur', '+4610963469547', 'Kamaria Yuliarti', 'CV Astuti Laksmiwati Tbk', 'Jln. Thamrin No. 740, Tarakan 26030, MalUt', 'cash', '23.210477', '104.950915'),
(22, 'INV-64638420200105', 68, 'Eva Haryanti M.Ak', 'CV Usamah Rahayu', 'Kpg. BKR No. 969, Palopo 33253, Aceh', 'Tebing Tinggi', '77824', 'Maluku', '+8862407018070', 'Siska Ulva Hariyah M.TI.', 'Perum Saptono Iswahyudi Tbk', 'Dk. BKR No. 834, Pekanbaru 49911, SumBar', 'cash', '73.618188', '96.513285'),
(23, 'INV-15733120200105', 50, 'Maya Pudjiastuti S.Gz', 'UD Wibowo (Persero) Tbk', 'Ds. Dipatiukur No. 697, Banjarmasin 30098, SulBar', 'Blitar', '58031', 'Bali', '+9782608533659', 'Muni Megantara S.Gz', 'CV Marbun Uyainah', 'Kpg. Gedebage Selatan No. 922, Sorong 65456, JaBar', 'credit', '30.157121', '80.729199'),
(24, 'INV-9965020200105', 26, 'Ratna Hastuti', 'UD Halim Setiawan (Persero) Tbk', 'Jln. Adisumarmo No. 739, Tangerang Selatan 33418, MalUt', 'Pontianak', '82909', 'Jawa Barat', '+2736453342339', 'Nrima Adriansyah M.Kom.', 'UD Wijayanti Tbk', 'Kpg. Abdul No. 729, Pangkal Pinang 94185, JaTeng', 'cash', '83.949145', '42.218697'),
(25, 'INV-35150720200105', 16, 'Yessi Laksmiwati', 'PT Laksita Narpati (Persero) Tbk', 'Jr. Ketandan No. 950, Padangpanjang 70088, Aceh', 'Batam', '56798', 'Nusa Tenggara Timur', '+7728418245079', 'Dwi Pradipta M.Kom.', 'Perum Hartati Suryono', 'Kpg. Bagonwoto  No. 244, Sungai Penuh 47977, JaTeng', 'cash', '20.25664', '80.500361'),
(26, 'INV-32756720200105', 30, 'Bajragin Darmanto Saptono S.Psi', 'PD Sitompul (Persero) Tbk', 'Jln. Sumpah Pemuda No. 283, Dumai 36523, SumSel', 'Yogyakarta', '29406', 'Gorontalo', '+5361870245987', 'Irsad Harsaya Pradana M.TI.', 'PT Dongoran', 'Dk. Peta No. 765, Palopo 70337, Aceh', 'credit', '3.643662', '31.914208'),
(27, 'INV-79708320200105', 9, 'Hairyanto Balapati Zulkarnain S.Pt', 'UD Palastri Tbk', 'Gg. Nakula No. 895, Palangka Raya 82011, KepR', 'Palopo', '43290', 'Sumatera Utara', '+3764197958766', 'Mitra Martaka Mangunsong S.E.I', 'UD Rahayu (Persero) Tbk', 'Jr. Ters. Buah Batu No. 229, Padangpanjang 62529, SumUt', 'credit', '2.560939', '86.625872'),
(28, 'INV-56602920200105', 6, 'Belinda Jamalia Laksita', 'UD Simanjuntak Wulandari', 'Gg. Raya Setiabudhi No. 597, Malang 28526, SulTra', 'Blitar', '73344', 'Jawa Tengah', '+7752858569983', 'Ani Anggraini', 'Perum Widiastuti Maryati', 'Ki. Suprapto No. 766, Administrasi Jakarta Pusat 44639, MalUt', 'cash', '91.722175', '7.037488'),
(29, 'INV-34716020200105', 71, 'Prayoga Lasmanto Suryono', 'Perum Mayasari (Persero) Tbk', 'Psr. Baung No. 655, Pagar Alam 48791, NTT', 'Tidore Kepulauan', '66459', 'Papua Barat', '+8829400983505', 'Juli Usyi Zulaika', 'CV Nugroho Waskita', 'Dk. Asia Afrika No. 307, Tebing Tinggi 56300, SumUt', 'credit', '92.619841', '94.445175'),
(30, 'INV-87130120200105', 66, 'Farhunnisa Hamima Fujiati S.Kom', 'CV Adriansyah Manullang', 'Jln. Kartini No. 93, Mataram 75847, SulSel', 'Tual', '20472', 'Jawa Tengah', '+6313747400999', 'Ikhsan Mangunsong', 'Perum Handayani Pratama', 'Gg. Rajawali Timur No. 284, Serang 84697, MalUt', 'cash', '105.613762', '14.611447'),
(31, 'INV-47048420200105', 37, 'Nadia Safitri M.TI.', 'Perum Prastuti Lazuardi Tbk', 'Gg. Urip Sumoharjo No. 959, Surakarta 76199, KalBar', 'Surabaya', '42372', 'DI Yogyakarta', '+5279161073299', 'Iriana Lestari S.Psi', 'CV Budiman Sihombing Tbk', 'Psr. Baing No. 216, Tidore Kepulauan 52517, SulBar', 'credit', '15.181027', '15.033922'),
(32, 'INV-47532720200105', 73, 'Yance Pratiwi', 'PT Sinaga (Persero) Tbk', 'Ds. Salak No. 815, Lhokseumawe 11442, Gorontalo', 'Padangpanjang', '58198', 'Kalimantan Utara', '+5696637558077', 'Mursinin Panji Uwais M.Pd', 'PT Wijayanti Napitupulu Tbk', 'Jln. K.H. Wahid Hasyim (Kopo) No. 742, Bontang 34931, SulSel', 'cash', '63.316093', '53.984153'),
(33, 'INV-11819120200105', 35, 'Jasmani Tamba S.T.', 'PT Suryono', 'Psr. Juanda No. 622, Mataram 21498, SulUt', 'Serang', '61114', 'Jawa Tengah', '+6211855407928', 'Farah Usamah', 'UD Puspasari Usada Tbk', 'Jln. Pasir Koja No. 832, Banjarmasin 21029, Lampung', 'cash', '95.054637', '25.677814'),
(34, 'INV-85849520200105', 18, 'Gawati Nilam Uyainah', 'PT Lailasari', 'Kpg. Zamrud No. 911, Prabumulih 68842, KalSel', 'Malang', '44989', 'Sulawesi Barat', '+2257268717161', 'Bakiman Jefri Lazuardi S.Kom', 'PT Kusumo Santoso Tbk', 'Ds. K.H. Maskur No. 995, Batam 18476, Gorontalo', 'credit', '0.272693', '-2.240248'),
(35, 'INV-34077820200105', 6, 'Bagas Gaiman Latupono S.E.I', 'UD Tamba Tbk', 'Ds. Cikapayang No. 393, Prabumulih 89197, KalSel', 'Bima', '18481', 'Sulawesi Selatan', '+7109305926949', 'Panji Siregar', 'CV Prakasa Tbk', 'Ki. Labu No. 176, Bima 37045, JaTeng', 'cash', '-0.350348', '2.54674'),
(36, 'INV-71006320200105', 84, 'Nrima Prasetyo', 'UD Usamah (Persero) Tbk', 'Ds. Gajah Mada No. 722, Administrasi Jakarta Utara 70903, MalUt', 'Kendari', '14124', 'Nusa Tenggara Timur', '+6482831588885', 'Cawisono Harto Rajasa', 'Perum Nababan', 'Dk. Gremet No. 586, Semarang 80387, JaTeng', 'credit', '35.991847', '46.012494'),
(37, 'INV-17676920200105', 11, 'Uchita Tiara Melani', 'PD Palastri Tbk', 'Kpg. Yap Tjwan Bing No. 232, Administrasi Jakarta Utara 94103, BaBel', 'Lubuklinggau', '86865', 'Kalimantan Selatan', '+8049521861402', 'Juli Maryati', 'PD Nasyiah Adriansyah', 'Psr. Ikan No. 368, Surabaya 88379, SumUt', 'cash', '10.057467', '6.186341'),
(38, 'INV-65352420200105', 68, 'Syahrini Wahyuni', 'Perum Suryono Wijaya', 'Kpg. Cihampelas No. 31, Bengkulu 38342, Lampung', 'Bandar Lampung', '60722', 'Aceh', '+1599533926767', 'Kania Suartini', 'PT Irawan', 'Psr. Honggowongso No. 175, Pasuruan 70918, JaTeng', 'cash', '87.073295', '2.783752'),
(39, 'INV-18386620200105', 63, 'Paulin Laras Namaga', 'PD Hutasoit', 'Psr. Bass No. 165, Padang 81781, JaBar', 'Blitar', '17105', 'Sulawesi Tengah', '+4736252586330', 'Rama Budiman', 'PD Zulkarnain Mulyani (Persero) Tbk', 'Jr. Orang No. 750, Dumai 35402, KalTim', 'cash', '62.93149', '84.494645'),
(40, 'INV-74798320200105', 84, 'Cahyono Budiyanto S.H.', 'UD Wibisono', 'Jln. Cemara No. 49, Kupang 72481, KalUt', 'Bengkulu', '30199', 'Papua', '+8447210515537', 'Carla Putri Maryati S.T.', 'UD Sihotang (Persero) Tbk', 'Jln. Wahidin Sudirohusodo No. 475, Pangkal Pinang 88137, SulSel', 'credit', '21.778259', '35.158216'),
(41, 'INV-59370520200105', 19, 'Intan Paramita Kuswandari M.M.', 'CV Megantara', 'Psr. Pacuan Kuda No. 281, Makassar 63016, SulBar', 'Bekasi', '99995', 'Sulawesi Tengah', '+9530220647588', 'Ika Hasanah', 'Perum Januar Riyanti', 'Jr. Pasteur No. 534, Depok 80029, SumUt', 'cash', '3.073774', '102.654955'),
(42, 'INV-84641220200105', 48, 'Vanya Laksita', 'PD Irawan Puspita (Persero) Tbk', 'Kpg. Uluwatu No. 976, Pasuruan 49389, SulSel', 'Semarang', '55423', 'DKI Jakarta', '+8536390466277', 'Laksana Mahendra', 'UD Gunawan Maulana Tbk', 'Dk. Adisucipto No. 396, Bitung 37208, Maluku', 'cash', '83.072859', '80.104572'),
(43, 'INV-47631520200105', 72, 'Adiarja Dabukke', 'Perum Pratama Astuti', 'Psr. Babakan No. 525, Palembang 31309, KepR', 'Pematangsiantar', '66362', 'Nusa Tenggara Barat', '+7943791159785', 'Nilam Zamira Usada', 'CV Prastuti', 'Jr. Uluwatu No. 955, Tanjungbalai 14692, KalBar', 'cash', '32.49418', '41.692321'),
(44, 'INV-39102320200105', 34, 'Aswani Umay Nainggolan S.Kom', 'Perum Hutagalung Tbk', 'Ki. Asia Afrika No. 548, Subulussalam 87960, DIY', 'Payakumbuh', '12527', 'Kalimantan Utara', '+8853900627701', 'Raisa Uyainah S.IP', 'UD Firgantoro Tbk', 'Kpg. Kalimalang No. 868, Serang 64484, Banten', 'cash', '42.557473', '37.063892'),
(45, 'INV-89647320200105', 72, 'Febi Pudjiastuti', 'UD Safitri (Persero) Tbk', 'Ds. Orang No. 191, Pematangsiantar 27285, Riau', 'Tanjung Pinang', '40640', 'Sulawesi Utara', '+3180552774072', 'Cager Siregar', 'Perum Mangunsong', 'Gg. Juanda No. 65, Tegal 94380, DKI', 'credit', '38.577245', '15.040491'),
(46, 'INV-74771220200105', 21, 'Balapati Permadi M.Ak', 'PT Setiawan', 'Psr. Yoga No. 216, Denpasar 13753, NTT', 'Banjarmasin', '48629', 'Sumatera Utara', '+8105146693815', 'Ira Sudiati', 'UD Nashiruddin Tbk', 'Ds. Gremet No. 180, Subulussalam 83208, SumBar', 'credit', '-4.392094', '85.371795'),
(47, 'INV-56975520200105', 49, 'Langgeng Rajata', 'PD Handayani (Persero) Tbk', 'Jr. Bata Putih No. 192, Kupang 50086, KalTeng', 'Solok', '68684', 'Riau', '+8052273554856', 'Hana Ami Rahimah', 'UD Kusmawati', 'Ds. Merdeka No. 44, Surabaya 81916, Jambi', 'cash', '88.122859', '63.294951'),
(48, 'INV-26724720200105', 24, 'Amalia Cindy Yulianti', 'Perum Anggriawan Tbk', 'Psr. Bass No. 723, Lhokseumawe 69693, KepR', 'Medan', '98020', 'Maluku Utara', '+9526329846389', 'Ellis Andriani', 'UD Tarihoran Tbk', 'Jln. Laswi No. 347, Kupang 33166, Gorontalo', 'credit', '106.083265', '32.214302'),
(49, 'INV-85435120200105', 42, 'Bagas Manullang S.E.I', 'CV Hakim Rahayu', 'Kpg. B.Agam Dlm No. 756, Palu 47878, JaTim', 'Pekalongan', '55126', 'Nusa Tenggara Timur', '+9115389657316', 'Garan Saputra', 'UD Lailasari Novitasari', 'Ki. Tangkuban Perahu No. 697, Administrasi Jakarta Timur 74167, KepR', 'cash', '68.678541', '-4.396038'),
(50, 'INV-6873120200105', 23, 'Ida Latika Purwanti M.TI.', 'Perum Hutasoit', 'Jr. Baha No. 109, Batam 66172, KalTeng', 'Administrasi Jakarta Utara', '86561', 'Nusa Tenggara Timur', '+7702594967448', 'Nrima Prayoga', 'Perum Yolanda Simanjuntak', 'Psr. Bagis Utama No. 604, Sawahlunto 96776, DIY', 'cash', '21.324277', '103.557023'),
(51, 'INV-45260720200105', 73, 'Sabri Iswahyudi S.Pt', 'Perum Lazuardi Tamba (Persero) Tbk', 'Gg. Urip Sumoharjo No. 34, Salatiga 55307, BaBel', 'Administrasi Jakarta Utara', '13289', 'Jawa Timur', '+3847789987763', 'Sarah Vicky Usada S.Kom', 'CV Saptono (Persero) Tbk', 'Ds. Setiabudhi No. 493, Jambi 30386, BaBel', 'cash', '28.987992', '72.012322'),
(52, 'INV-56164320200105', 27, 'Fitria Mulyani', 'Perum Hakim Tbk', 'Gg. Bambon No. 320, Jayapura 77204, KalBar', 'Tasikmalaya', '96945', 'Sulawesi Utara', '+2924377530348', 'Ilsa Wahyuni', 'UD Nashiruddin Sudiati Tbk', 'Psr. Babah No. 992, Banjarbaru 23421, Bali', 'cash', '21.441114', '94.467486'),
(53, 'INV-43930420200105', 59, 'Safina Susanti M.Pd', 'PD Safitri Simbolon', 'Jln. Yos No. 945, Pariaman 30970, Papua', 'Padang', '72086', 'Maluku', '+6270938069256', 'Cahyo Kasusra Nababan', 'Perum Prasetyo', 'Ki. Baranang No. 928, Bau-Bau 93999, Riau', 'credit', '34.568119', '79.535868'),
(54, 'INV-83807820200105', 67, 'Harjaya Nababan', 'UD Nurdiyanti Salahudin', 'Ki. Ujung No. 72, Singkawang 41471, Lampung', 'Sabang', '86249', 'Gorontalo', '+3851547712386', 'Gangsa Saka Sihombing', 'PT Lazuardi Melani', 'Jln. Casablanca No. 588, Administrasi Jakarta Selatan 62626, Banten', 'cash', '1.237586', '86.470978'),
(55, 'INV-34520720200105', 35, 'Manah Prayoga S.Pt', 'PT Yolanda Andriani', 'Dk. Pattimura No. 76, Padang 83714, KalTim', 'Mataram', '66699', 'Nusa Tenggara Barat', '+6979329094462', 'Silvia Gilda Suryatmi M.Kom.', 'CV Zulaika', 'Gg. Bawal No. 393, Pekalongan 14359, JaTeng', 'credit', '29.763958', '99.218715'),
(56, 'INV-88117720200105', 98, 'Kenzie Siregar S.Pt', 'UD Yuliarti Lestari (Persero) Tbk', 'Jr. Achmad No. 546, Palu 98650, SulTeng', 'Ternate', '39877', 'Nusa Tenggara Timur', '+5959680520640', 'Prabawa Pradana', 'CV Zulkarnain', 'Jln. Nangka No. 555, Madiun 38141, Banten', 'credit', '75.180992', '2.980521'),
(57, 'INV-43107020200105', 38, 'Michelle Prastuti', 'PD Rahmawati Nasyidah', 'Ds. Surapati No. 809, Makassar 38587, Bali', 'Cimahi', '21781', 'Lampung', '+6487026195091', 'Bella Elisa Hartati S.Ked', 'CV Firmansyah', 'Ds. Bak Air No. 63, Banda Aceh 78483, NTT', 'cash', '75.710649', '84.52777'),
(58, 'INV-25408720200105', 58, 'Erik Budiyanto', 'UD Manullang', 'Gg. Salatiga No. 201, Salatiga 84796, PapBar', 'Pekanbaru', '70482', 'Aceh', '+6639752411224', 'Purwa Maheswara', 'PD Napitupulu', 'Ds. Moch. Yamin No. 210, Bukittinggi 88307, KepR', 'credit', '-4.697874', '100.72473'),
(59, 'INV-67880320200105', 84, 'Hendri Raden Setiawan S.I.Kom', 'Perum Dabukke Gunawan', 'Gg. Ketandan No. 829, Tangerang 14600, NTT', 'Palembang', '15667', 'Kalimantan Timur', '+1835947695234', 'Makuta Sihombing S.I.Kom', 'PD Kuswandari', 'Psr. Achmad Yani No. 556, Administrasi Jakarta Timur 85533, Gorontalo', 'credit', '40.23907', '55.779276'),
(60, 'INV-58619220200105', 87, 'Kariman Rajasa', 'UD Tarihoran', 'Psr. Ciwastra No. 765, Batam 98433, SumBar', 'Tidore Kepulauan', '27757', 'Maluku', '+5674830207774', 'Silvia Anastasia Sudiati', 'UD Andriani', 'Psr. Sentot Alibasa No. 528, Padangpanjang 68001, Bali', 'cash', '15.797384', '46.271522'),
(61, 'INV-82309220200105', 7, 'Ida Wirda Haryanti S.E.I', 'CV Kurniawan Hastuti Tbk', 'Ds. Flores No. 424, Pasuruan 58555, DKI', 'Palopo', '64582', 'Kepulauan Riau', '+3926090419618', 'Kamaria Lailasari', 'PT Pratiwi', 'Jln. Panjaitan No. 27, Tasikmalaya 78264, NTB', 'cash', '52.59519', '14.348593'),
(62, 'INV-5812320200105', 91, 'Najam Upik Thamrin S.Psi', 'PD Usamah Uwais', 'Kpg. Cemara No. 175, Pekalongan 74329, Bengkulu', 'Pagar Alam', '42523', 'Kalimantan Tengah', '+1196375814871', 'Gading Prakasa S.E.I', 'PD Mustofa Tbk', 'Ki. Yosodipuro No. 450, Pagar Alam 22254, SulSel', 'cash', '81.196651', '98.246093'),
(63, 'INV-82698420200105', 76, 'Caturangga Hidayat S.Ked', 'Perum Nasyidah Jailani', 'Jr. Bayan No. 875, Ternate 50402, SulTeng', 'Medan', '51257', 'Maluku', '+4105904956127', 'Virman Waskita', 'PD Novitasari Palastri', 'Ds. Hasanuddin No. 4, Yogyakarta 77782, KepR', 'credit', '58.648535', '93.804832'),
(64, 'INV-54962420200105', 72, 'Sakura Melinda Riyanti', 'CV Wulandari', 'Psr. Baha No. 284, Blitar 52699, SulTra', 'Tual', '91382', 'DI Yogyakarta', '+1134951501281', 'Estiawan Lukman Mangunsong', 'PT Tamba Andriani', 'Dk. Baung No. 397, Banjar 30313, KalTeng', 'credit', '8.792989', '49.508914'),
(65, 'INV-42111620200105', 53, 'Luis Januar', 'Perum Widodo Mulyani Tbk', 'Dk. Soekarno Hatta No. 276, Semarang 20945, SumBar', 'Cirebon', '90797', 'Sumatera Barat', '+5103521486270', 'Humaira Ani Rahayu M.Ak', 'PT Safitri Saptono', 'Gg. Thamrin No. 516, Tanjungbalai 56468, JaTim', 'cash', '34.576223', '73.863664'),
(66, 'INV-5465920200105', 69, 'Eli Wahyuni', 'PD Lazuardi', 'Ds. R.M. Said No. 988, Parepare 48908, Lampung', 'Palembang', '72191', 'Gorontalo', '+2578927952627', 'Martana Dabukke', 'PD Nuraini', 'Jln. Mahakam No. 563, Pariaman 16600, DKI', 'credit', '13.412554', '91.251003'),
(67, 'INV-86069420200105', 70, 'Kamaria Mardhiyah M.Pd', 'CV Saputra Dabukke', 'Psr. Labu No. 40, Pariaman 93158, JaTim', 'Administrasi Jakarta Barat', '64379', 'DKI Jakarta', '+9332096499353', 'Emong Sitorus S.Pt', 'PD Novitasari Hardiansyah Tbk', 'Jln. Bakau No. 185, Palangka Raya 88143, KalTim', 'cash', '103.101661', '52.827734'),
(68, 'INV-85792820200105', 91, 'Julia Putri Nurdiyanti', 'Perum Sinaga (Persero) Tbk', 'Kpg. Asia Afrika No. 49, Bengkulu 72510, PapBar', 'Gorontalo', '64801', 'Sumatera Selatan', '+8085016194151', 'Nasrullah Zulkarnain', 'PT Saefullah Winarno', 'Ds. Bakau No. 349, Tanjungbalai 62944, SumBar', 'credit', '103.414207', '68.529379'),
(69, 'INV-57804520200105', 64, 'Putri Winarsih', 'PT Ramadan (Persero) Tbk', 'Gg. Baabur Royan No. 416, Pasuruan 92453, Bengkulu', 'Singkawang', '73526', 'Jambi', '+6063273178140', 'Lulut Marbun', 'PT Budiyanto (Persero) Tbk', 'Jln. Gatot Subroto No. 516, Cimahi 57077, Lampung', 'cash', '33.155621', '22.975634'),
(70, 'INV-3286920200105', 59, 'Cindy Hafshah Yulianti', 'UD Salahudin', 'Jr. Yosodipuro No. 924, Jambi 26750, Papua', 'Pekanbaru', '14615', 'DI Yogyakarta', '+2278637318942', 'Caraka Suryono', 'Perum Marbun (Persero) Tbk', 'Ds. Bah Jaya No. 166, Langsa 40966, SumSel', 'credit', '50.417924', '12.125493'),
(71, 'INV-81997120200105', 79, 'Lala Wijayanti', 'CV Aryani Lestari (Persero) Tbk', 'Gg. Ters. Jakarta No. 540, Langsa 10570, SumSel', 'Palu', '48890', 'Kalimantan Utara', '+5876271750361', 'Aditya Dadi Mahendra', 'UD Widodo Irawan Tbk', 'Gg. Lada No. 968, Lubuklinggau 80576, SumSel', 'credit', '17.313898', '33.990346'),
(72, 'INV-5172520200105', 53, 'Vega Prabowo', 'CV Tampubolon Nasyiah', 'Ds. Eka No. 794, Palu 42027, DIY', 'Binjai', '23428', 'Bengkulu', '+3804564164445', 'Diah Ida Suryatmi S.Gz', 'UD Utami Ardianto Tbk', 'Ds. Ir. H. Juanda No. 313, Bitung 62546, SulTeng', 'credit', '89.080603', '105.449222'),
(73, 'INV-17741920200105', 33, 'Yani Pertiwi', 'Perum Wahyuni Tbk', 'Psr. Kebangkitan Nasional No. 43, Pekalongan 86743, NTT', 'Pagar Alam', '42842', 'Sulawesi Barat', '+9158007136680', 'Cakrawangsa Wisnu Suryono', 'CV Hakim Wastuti', 'Psr. Jayawijaya No. 26, Kendari 93247, SulUt', 'credit', '71.610516', '88.767979'),
(74, 'INV-27973320200105', 54, 'Hardana Dongoran', 'UD Suwarno Nababan Tbk', 'Jr. Labu No. 333, Semarang 80273, Lampung', 'Semarang', '57825', 'Nusa Tenggara Timur', '+7084717384043', 'Eluh Mahendra', 'UD Napitupulu Puspita', 'Jr. Bawal No. 440, Bandar Lampung 54072, Banten', 'credit', '91.361469', '95.105446'),
(75, 'INV-52473620200105', 7, 'Wasis Pratama', 'PD Kusmawati Agustina', 'Ki. Bahagia  No. 16, Administrasi Jakarta Pusat 44056, SulUt', 'Jambi', '26404', 'Riau', '+1669629616312', 'Paulin Nadia Suryatmi', 'CV Saptono Pradipta (Persero) Tbk', 'Ds. Sukajadi No. 973, Administrasi Jakarta Pusat 93143, Jambi', 'cash', '43.12864', '44.06611'),
(76, 'INV-62160920200105', 33, 'Kezia Zelda Suryatmi M.Pd', 'PD Sihotang', 'Ds. Gegerkalong Hilir No. 674, Subulussalam 20616, JaTeng', 'Kupang', '67321', 'Kalimantan Barat', '+2555462395235', 'Raisa Zulaika M.Kom.', 'PD Hassanah Tbk', 'Ki. Bakhita No. 692, Tangerang 99917, Bali', 'credit', '92.266716', '83.475769'),
(77, 'INV-83700720200105', 85, 'Febi Yolanda S.Gz', 'Perum Marpaung', 'Psr. Mahakam No. 688, Padangsidempuan 80421, Jambi', 'Makassar', '43423', 'Sulawesi Tengah', '+8620175571269', 'Balapati Napitupulu S.Pd', 'UD Nugroho (Persero) Tbk', 'Gg. Rajiman No. 180, Pasuruan 77218, Riau', 'cash', '75.880636', '98.244041'),
(78, 'INV-17602520200105', 72, 'Galang Pangestu', 'CV Padmasari Usamah', 'Dk. Cikutra Timur No. 993, Sabang 56959, SulTeng', 'Kendari', '86813', 'Aceh', '+6801659242973', 'Mustofa Firmansyah', 'Perum Maryati Laksmiwati Tbk', 'Psr. Bagis Utama No. 413, Banjarbaru 92044, KepR', 'cash', '50.293226', '52.95075'),
(79, 'INV-74938520200105', 4, 'Tania Nurdiyanti', 'CV Suryatmi Pratama', 'Jr. Bhayangkara No. 765, Tasikmalaya 73072, KalBar', 'Bengkulu', '51968', 'Kalimantan Barat', '+8862520318147', 'Raihan Siregar', 'CV Farida', 'Kpg. Soekarno Hatta No. 775, Tanjungbalai 64540, KalBar', 'credit', '58.398506', '27.866825'),
(80, 'INV-41158320200105', 20, 'Unggul Ramadan', 'UD Rahimah', 'Dk. Baranang No. 207, Bontang 20679, SulUt', 'Bontang', '50469', 'Sulawesi Tenggara', '+4392945180654', 'Vinsen Setiawan', 'PT Winarno Prasasta (Persero) Tbk', 'Psr. Cemara No. 532, Lubuklinggau 36329, SulTra', 'credit', '81.291501', '56.716766'),
(81, 'INV-56277420200105', 37, 'Ibrahim Pradana', 'PT Manullang (Persero) Tbk', 'Dk. Baja No. 185, Pariaman 54985, SulTeng', 'Tarakan', '61890', 'Maluku Utara', '+5397498691264', 'Samsul Adriansyah', 'CV Firmansyah Tbk', 'Psr. Muwardi No. 947, Parepare 50560, DKI', 'credit', '97.155641', '93.59013'),
(82, 'INV-70835620200105', 29, 'Eman Eka Adriansyah', 'PT Habibi Maryati Tbk', 'Dk. Katamso No. 69, Batam 82474, PapBar', 'Sukabumi', '16254', 'Jawa Barat', '+1516190769020', 'Karya Ajimin Megantara S.Pt', 'PD Susanti Nainggolan Tbk', 'Psr. Pacuan Kuda No. 230, Pekalongan 56264, SulTra', 'cash', '1.011718', '13.417576'),
(83, 'INV-9583020200105', 2, 'Bakidin Adriansyah S.Pt', 'UD Napitupulu', 'Dk. Uluwatu No. 622, Bandung 45534, Lampung', 'Pasuruan', '40529', 'Bangka Belitung', '+3988252651563', 'Praba Lazuardi', 'PT Napitupulu', 'Psr. Jend. Sudirman No. 619, Banjar 67839, BaBel', 'credit', '61.365299', '69.966695'),
(84, 'INV-18890120200105', 83, 'Kemba Pratama M.TI.', 'CV Yolanda (Persero) Tbk', 'Kpg. Yohanes No. 506, Semarang 80533, SulSel', 'Dumai', '61621', 'Kalimantan Tengah', '+1939572996871', 'Ika Siska Pertiwi', 'Perum Prasetyo Suwarno Tbk', 'Ki. Baan No. 810, Administrasi Jakarta Timur 30195, NTT', 'cash', '38.830538', '34.716684'),
(85, 'INV-30325520200105', 42, 'Kasiyah Winarsih', 'PT Pertiwi Prastuti Tbk', 'Gg. Babah No. 338, Subulussalam 55503, NTT', 'Bitung', '85943', 'Sulawesi Tengah', '+2604088573670', 'Endah Wastuti', 'Perum Marbun', 'Jr. Imam Bonjol No. 101, Cirebon 95761, KalUt', 'cash', '71.723724', '-1.561299'),
(86, 'INV-54613620200105', 62, 'Bahuraksa Wacana M.TI.', 'PT Sudiati Farida', 'Ki. Basoka No. 852, Sibolga 22410, SumSel', 'Ambon', '33887', 'Kalimantan Barat', '+6481193035881', 'Marsudi Mahendra', 'PT Megantara Tbk', 'Dk. Rajiman No. 648, Ambon 41370, JaBar', 'credit', '32.079281', '75.751037'),
(87, 'INV-88080920200105', 11, 'Cinthia Pudjiastuti', 'PT Maryadi (Persero) Tbk', 'Jln. Padang No. 530, Palu 90632, Jambi', 'Tanjungbalai', '38594', 'DKI Jakarta', '+8898920397057', 'Hasan Simanjuntak', 'PD Oktaviani Hidayanto', 'Jln. Pasir Koja No. 743, Administrasi Jakarta Selatan 36893, KalBar', 'credit', '70.435292', '57.987474'),
(88, 'INV-54571420200105', 5, 'Ratih Padmasari S.Psi', 'Perum Pradipta Wahyuni (Persero) Tbk', 'Jln. Katamso No. 470, Palu 70691, Maluku', 'Batu', '81990', 'Bali', '+2918066061071', 'Samiah Yulianti', 'UD Purnawati Tbk', 'Ds. Kartini No. 340, Salatiga 56983, SumUt', 'credit', '26.742696', '80.636386'),
(89, 'INV-69074420200105', 78, 'Fathonah Pertiwi', 'PD Yulianti Hidayat', 'Psr. Raden Saleh No. 89, Tasikmalaya 17480, JaBar', 'Mojokerto', '46671', 'Bengkulu', '+8198736488360', 'Ifa Janet Pudjiastuti S.E.', 'CV Marpaung', 'Dk. Katamso No. 125, Serang 89049, KepR', 'cash', '12.66011', '42.961898'),
(90, 'INV-30945020200105', 93, 'Ika Usamah', 'PT Maryati Maryadi', 'Gg. Bagonwoto  No. 709, Bandung 24762, Bengkulu', 'Palopo', '72753', 'Kalimantan Barat', '+4180240416584', 'Kardi Gunarto', 'PD Habibi (Persero) Tbk', 'Gg. Bakau Griya Utama No. 479, Batam 21340, SulSel', 'cash', '44.113088', '2.398138'),
(91, 'INV-28252620200105', 22, 'Omar Estiono Simanjuntak', 'CV Wibisono Pratiwi', 'Psr. Kalimalang No. 758, Sawahlunto 54153, SulTeng', 'Bau-Bau', '38855', 'Maluku', '+1954557454142', 'Asirwada Nashiruddin', 'CV Hastuti Tbk', 'Dk. Sutoyo No. 983, Dumai 66564, KalTim', 'cash', '50.887875', '75.667157'),
(92, 'INV-34167020200105', 62, 'Agus Praba Latupono', 'PT Mayasari Tbk', 'Ki. M.T. Haryono No. 496, Balikpapan 70393, Maluku', 'Palopo', '21249', 'Papua Barat', '+4165989033906', 'Ozy Wibowo S.Farm', 'CV Wibowo', 'Psr. Kali No. 90, Cirebon 41385, BaBel', 'credit', '29.01507', '79.864459'),
(93, 'INV-40745020200105', 9, 'Ega Enteng Hutapea', 'PT Santoso (Persero) Tbk', 'Ki. Bah Jaya No. 914, Pekanbaru 76815, KalTeng', 'Malang', '64340', 'Kalimantan Tengah', '+4138458548597', 'Hardana Simanjuntak', 'PT Safitri Nasyidah Tbk', 'Kpg. Raden No. 606, Bima 24008, KepR', 'credit', '10.169775', '80.022322'),
(94, 'INV-49552520200105', 85, 'Raisa Mayasari', 'PD Hutasoit Saputra', 'Jln. Dewi Sartika No. 428, Palangka Raya 10381, Riau', 'Gorontalo', '51591', 'Jawa Timur', '+3824447655697', 'Jaiman Manullang', 'PD Thamrin Widodo (Persero) Tbk', 'Psr. Suryo No. 43, Metro 19395, Banten', 'cash', '44.491707', '51.89206'),
(95, 'INV-41589620200105', 61, 'Dian Aryani', 'Perum Astuti Usada', 'Jr. Setia Budi No. 552, Administrasi Jakarta Timur 28277, Bengkulu', 'Administrasi Jakarta Timur', '36121', 'Papua', '+8877840199426', 'Xanana Sihotang', 'PT Saptono Tbk', 'Ds. Arifin No. 532, Binjai 12302, SulTra', 'cash', '49.604185', '69.891286'),
(96, 'INV-63473320200105', 80, 'Wawan Santoso', 'UD Astuti', 'Gg. Baung No. 623, Tegal 44338, Bali', 'Prabumulih', '72880', 'Papua', '+4772268764759', 'Hesti Eka Riyanti S.E.I', 'PT Simbolon Rahmawati Tbk', 'Jln. Kebangkitan Nasional No. 417, Lhokseumawe 83126, SumBar', 'cash', '43.723695', '61.281412'),
(97, 'INV-74678820200105', 91, 'Raden Mandala', 'PT Handayani Pradana (Persero) Tbk', 'Ki. Gading No. 979, Cilegon 33603, Bali', 'Depok', '42506', 'Sulawesi Selatan', '+6508329183804', 'Jelita Widiastuti', 'PT Purwanti (Persero) Tbk', 'Ki. Tangkuban Perahu No. 412, Madiun 39804, Banten', 'credit', '61.504612', '97.184988'),
(98, 'INV-66448420200105', 97, 'Yance Andriani', 'CV Susanti Hutapea Tbk', 'Dk. Bayan No. 145, Padang 36913, SumBar', 'Prabumulih', '64466', 'Bengkulu', '+8992638177164', 'Maida Purwanti', 'PT Pratiwi', 'Dk. Batako No. 380, Administrasi Jakarta Utara 98708, KalBar', 'cash', '59.825654', '82.885885'),
(99, 'INV-69768920200105', 51, 'Zizi Purwanti S.IP', 'PT Pranowo Utama Tbk', 'Gg. Bayan No. 819, Gunungsitoli 64186, KalTeng', 'Metro', '83534', 'Kalimantan Timur', '+2107152346902', 'Garan Nashiruddin', 'UD Marpaung Budiman (Persero) Tbk', 'Ki. Basuki No. 875, Bengkulu 51864, Bengkulu', 'cash', '85.928042', '5.674428'),
(100, 'INV-48587620200105', 33, 'Yessi Farida', 'Perum Zulkarnain Safitri Tbk', 'Kpg. Ters. Pasir Koja No. 796, Tangerang 93311, SulTra', 'Payakumbuh', '82560', 'Aceh', '+8374175634884', 'Lidya Yuni Wastuti', 'UD Kusmawati Tampubolon', 'Psr. Babadan No. 617, Gorontalo 72353, MalUt', 'cash', '79.351168', '100.852748');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_type` int(4) NOT NULL DEFAULT 0,
  `products_sku` varchar(64) DEFAULT NULL,
  `products_name` varchar(255) NOT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  `products_return_quantity` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkalan`
--

CREATE TABLE `pangkalan` (
  `id` int(100) UNSIGNED NOT NULL,
  `no_reg` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `ket` text DEFAULT NULL,
  `wilayah` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pangkalan`
--

INSERT INTO `pangkalan` (`id`, `no_reg`, `company`, `address`, `phone`, `ket`, `wilayah`) VALUES
(1, 'ZOIXPZL3', 'UD Kuswoyo Puspita (Persero) Tbk', 'Jl.Gegerkalong Hilir, Psr. Taman No. 2, Lhokseumawe 87399, DKI', '+1251730547360', 'Iusto sit iure quo assumenda odio nesciunt deserunt qui magnam repudiandae est accusantium.', 'B1'),
(4, 'UWMYNHE1', 'PD Nasyidah Pradipta Tbk', 'Jl.Bakin, Kpg. R.E. Martadinata No. 818, Ternate 77617, SulTra', '+5169918074279', 'Maxime neque ex et neque nam praesentium.', 'B1'),
(5, 'NWQVRFFIO0D', 'PD Samosir', 'Jl.Ujung, Jr. Supono No. 743, Tegal 49543, SumUt', '+7588567102498', 'Asperiores soluta consequatur asperiores vel sit eveniet magnam quisquam rerum soluta.', 'B1'),
(8, 'UDAATFI0NEA', 'PD Wahyudin Budiman (Persero) Tbk', 'Jl.Bhayangkara, Dk. Baja No. 459, Solok 33631, JaBar', '+4975917472629', 'Vel voluptatibus provident doloremque delectus cupiditate sit nam quia quo quas sint quia.', 'C1'),
(10, 'PMMNUT231RV', 'Perum Melani Tbk', 'Jl.Gedebage Selatan, Ki. Babah No. 659, Bekasi 68502, SulTra', '+3581225210142', 'Rerum fugit qui assumenda atque fuga dolorem eum sed aut.', 'A1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(8) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `products_type` int(4) DEFAULT 0,
  `products_quantity` int(4) DEFAULT 1,
  `products_name` varchar(100) DEFAULT NULL,
  `products_price` varchar(15) NOT NULL,
  `products_sku` varchar(64) NOT NULL,
  `products_model` varchar(64) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(5) NOT NULL,
  `products_weight_class` int(11) NOT NULL,
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT 0,
  `quantity_discount_groups_id` int(11) DEFAULT NULL,
  `quantity_unit_class` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `products_type`, `products_quantity`, `products_name`, `products_price`, `products_sku`, `products_model`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_class`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `quantity_discount_groups_id`, `quantity_unit_class`) VALUES
(1, 9, 1, 'iPhone 4S', '1760', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'AmazingPromo148722', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 9, 1, 0, 5297, 8132, NULL, 2),
(2, 7, 8, 'iPhone 6S / 6S Plus', '3818', 'PTIA6Ff3GBvGh3j', 'GoodSavings534435', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 4, 1, 7, 7199, 1199, NULL, 2),
(3, 2, 2, 'iPhone', '5088', 'PTIA6Ff3GBvGh3j', 'SweetSavings742498', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 2, 1, 8, 2731, 7854, NULL, 2),
(4, 3, 0, 'iPhone 5S', '3419', 'hrR8nflThDDaSXO', 'AwesomeCode175052', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 9, 1, 1, 3667, 2897, NULL, 2),
(5, 0, 4, 'iPhone 5', '6245', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'CoolPrice530653', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 8, 1, 9, 1119, 5969, NULL, 2),
(6, 0, 0, 'iPhone 7 / 7 Plus', '5560', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'StellarSavings137247', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 5, 1, 3, 3226, 2189, NULL, 2),
(7, 0, 4, 'iPhone 3GS', '8017', 'ToFVWLzGTJhQxAaJlDDn', 'AmazingPromo508163', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 2, 1, 3, 1338, 5420, NULL, 2),
(8, 2, 3, 'iPhone 5', '6698', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'GreatPrice656045', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 1, 1, 0, 8498, 4629, NULL, 2),
(9, 2, 2, 'iPhone 5', '7078', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'SpecialPrice449315', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 8, 1, 3, 6825, 4044, NULL, 2),
(10, 6, 2, 'iPhone 3GS', '2511', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'SweetSale786470', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 5, 1, 0, 4889, 3935, NULL, 2),
(11, 6, 4, 'iPhone 6 / 6 Plus', '3319', 'ejfjnRNInxh0363JC2WM', 'GreatSale942815', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 1, 1, 2, 4053, 7074, NULL, 2),
(12, 9, 1, 'iPhone SE', '5792', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'SweetSale135641', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 1, 1, 0, 8030, 5647, NULL, 2),
(13, 6, 6, 'iPhone', '8255', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'SpecialPromo282329', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '3', 6, 1, 2, 4810, 8139, NULL, 2),
(14, 7, 5, 'iPhone SE', '2087', 'NjGU0z33pgE4sTEED7VR', 'KillerSale337709', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 3, 1, 1, 1996, 4647, NULL, 2),
(15, 0, 9, 'iPhone X', '1167', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'KillerSale802795', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 4, 1, 9, 3460, 7109, NULL, 2),
(16, 0, 1, 'iPhone 3GS', '5482', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'StellarCode632180', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 5, 1, 6, 7555, 4145, NULL, 2),
(17, 1, 4, 'iPhone', '1921', 'ToFVWLzGTJhQxAaJlDDn', 'CoolPromotion605526', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 5, 1, 0, 4016, 3135, NULL, 2),
(18, 2, 3, 'iPhone SE', '6562', 'ejfjnRNInxh0363JC2WM', 'SweetPrice597257', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 7, 1, 4, 4417, 2859, NULL, 2),
(19, 2, 5, 'iPhone 5C', '5863', 'Kl2ZroV9a', 'AwesomeDeal685045', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 8, 1, 4, 3933, 8408, NULL, 2),
(20, 2, 4, 'iPhone 6S / 6S Plus', '5870', 'SJMZOmtU0csrv4R', 'GoodSale944003', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 9, 1, 2, 1939, 4519, NULL, 2),
(21, 4, 0, 'iPhone 6S / 6S Plus', '1962', 'ToFVWLzGTJhQxAaJlDDn', 'PremiumSale436964', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 1, 1, 9, 6576, 7196, NULL, 2),
(22, 5, 1, 'iPhone 6S / 6S Plus', '7885', 'SJMZOmtU0csrv4R', 'PremiumSavings686242', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 2, 1, 3, 5618, 6103, NULL, 2),
(23, 4, 3, 'iPhone 5', '6506', '05skEogwZlX7j6twhhXX', 'StellarPromo305864', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 5, 1, 5, 2538, 7865, NULL, 2),
(24, 1, 0, 'iPhone 4', '5285', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'KillerCode238756', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 5, 1, 3, 1205, 6968, NULL, 2),
(25, 9, 0, 'iPhone 7 / 7 Plus', '3266', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'PremiumPromo165374', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 4, 1, 4, 1047, 3487, NULL, 2),
(26, 2, 0, 'iPhone 3GS', '5743', 'OezkV3nTii0sMK0', 'GreatDeal706509', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 2, 1, 1, 5649, 2005, NULL, 2),
(27, 4, 5, 'iPhone 5S', '6807', 'PTIA6Ff3GBvGh3j', 'PremiumPromo792281', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 6, 1, 6, 4133, 2380, NULL, 2),
(28, 8, 8, 'iPhone 5C', '2514', 'ToFVWLzGTJhQxAaJlDDn', 'AwesomePromo584992', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 2, 1, 2, 8651, 6817, NULL, 2),
(29, 4, 6, 'iPhone 4S', '2065', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'SweetPrice548762', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 5, 1, 6, 6728, 7601, NULL, 2),
(30, 7, 8, 'iPhone 6 / 6 Plus', '3626', 'Kl2ZroV9a', 'GoodPromotion856080', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 5, 1, 4, 4093, 4527, NULL, 2),
(31, 5, 4, 'iPhone', '8029', 'OezkV3nTii0sMK0', 'AmazingCode481189', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 4, 1, 7, 3790, 8968, NULL, 2),
(32, 7, 7, 'iPhone 7 / 7 Plus', '8281', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'StellarSale211792', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 8, 1, 0, 8591, 3021, NULL, 2),
(33, 2, 2, 'iPhone 3G', '7937', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'SweetPromotion720457', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 6, 1, 2, 7423, 3665, NULL, 2),
(34, 8, 7, 'iPhone 8 / 8 Plus', '2446', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'GoodCode192970', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 5, 1, 3, 7383, 7392, NULL, 2),
(35, 6, 8, 'iPhone 5', '6839', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'StellarDiscount304707', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 5, 1, 7, 2901, 2746, NULL, 2),
(36, 0, 8, 'iPhone 4', '4705', 'hHhDJaHCO', 'GoodDeal253947', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 7, 1, 5, 1212, 6092, NULL, 2),
(37, 1, 9, 'iPhone 7 / 7 Plus', '8502', 'hHhDJaHCO', 'AwesomeCode696273', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 9, 1, 3, 1030, 1998, NULL, 2),
(38, 6, 2, 'iPhone 4S', '8816', 'ToFVWLzGTJhQxAaJlDDn', 'KillerPromotion786497', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 6, 1, 2, 5061, 3427, NULL, 2),
(39, 9, 7, 'iPhone 5S', '6272', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'SpecialCode968102', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 5, 1, 2, 1539, 8521, NULL, 2),
(40, 1, 3, 'iPhone SE', '7870', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'IncredibleSale490895', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 2, 1, 3, 3423, 3472, NULL, 2),
(41, 2, 0, 'iPhone SE', '2292', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'AwesomePromo130038', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 4, 1, 5, 6251, 5093, NULL, 2),
(42, 2, 0, 'iPhone 7 / 7 Plus', '5703', 'ejfjnRNInxh0363JC2WM', 'KillerDeal261211', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 7, 1, 5, 3796, 5672, NULL, 2),
(43, 7, 1, 'iPhone 5', '8544', 'T6UuMUTani3VGY4vXGia', 'AmazingSavings772113', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 3, 1, 0, 8377, 4126, NULL, 2),
(44, 4, 7, 'iPhone 6S / 6S Plus', '6495', 'Kl2ZroV9a', 'StellarPrice409144', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 2, 1, 1, 5240, 5738, NULL, 2),
(45, 8, 3, 'iPhone 6S / 6S Plus', '7049', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'GreatPromotion101745', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 8, 1, 5, 2220, 3492, NULL, 2),
(46, 2, 1, 'iPhone SE', '7310', 'OezkV3nTii0sMK0', 'AmazingSale684727', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '3', 3, 1, 0, 1448, 2327, NULL, 2),
(47, 7, 8, 'iPhone 6S / 6S Plus', '6728', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'StellarSavings563005', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 5, 1, 5, 1559, 1241, NULL, 2),
(48, 6, 4, 'iPhone 5C', '2159', 'hHhDJaHCO', 'GoodCode573637', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 5, 1, 6, 7710, 8103, NULL, 2),
(49, 8, 1, 'iPhone 6S / 6S Plus', '2114', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'AmazingSavings888448', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 6, 1, 4, 3089, 4040, NULL, 2),
(50, 2, 1, 'iPhone 5C', '3449', 'hrR8nflThDDaSXO', 'AmazingPrice976940', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 0, 1, 4, 2082, 4039, NULL, 2),
(51, 7, 5, 'iPhone 5C', '5376', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'SweetPrice779553', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 6, 1, 2, 4524, 3803, NULL, 2),
(52, 4, 0, 'iPhone 3GS', '6302', 'NjGU0z33pgE4sTEED7VR', 'AmazingPrice389798', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 5, 1, 6, 1142, 8758, NULL, 2),
(53, 6, 5, 'iPhone 5S', '6568', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'SweetDeal534287', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 3, 1, 4, 7870, 6807, NULL, 2),
(54, 1, 8, 'iPhone 6S / 6S Plus', '7748', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'GoodPrice663323', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 6, 1, 8, 2517, 8123, NULL, 2),
(55, 4, 5, 'iPhone 3G', '5065', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'AwesomeSale586875', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 5, 1, 8, 1069, 2420, NULL, 2),
(56, 8, 6, 'iPhone X', '5732', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'GreatDeal966225', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 9, 1, 2, 2988, 8765, NULL, 2),
(57, 5, 9, 'iPhone 6 / 6 Plus', '5459', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'SweetPromo587581', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 1, 1, 1, 8480, 4409, NULL, 2),
(58, 4, 0, 'iPhone X', '2145', 'OezkV3nTii0sMK0', 'SweetPrice319449', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 1, 1, 3, 1959, 1428, NULL, 2),
(59, 8, 2, 'iPhone 6 / 6 Plus', '4675', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'AmazingPrice562963', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 2, 1, 2, 7084, 6411, NULL, 2),
(60, 8, 5, 'iPhone 6S / 6S Plus', '1686', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'IncrediblePrice941443', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 5, 1, 1, 3611, 5963, NULL, 2),
(61, 2, 8, 'iPhone 5', '7422', 'OezkV3nTii0sMK0', 'AwesomeSavings494977', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 3, 1, 8, 3010, 3083, NULL, 2),
(62, 9, 7, 'iPhone 3G', '4560', 'T6UuMUTani3VGY4vXGia', 'StellarCode809417', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 6, 1, 5, 3996, 8371, NULL, 2),
(63, 7, 5, 'iPhone 6 / 6 Plus', '3900', 'OezkV3nTii0sMK0', 'PremiumPromo202355', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '3', 6, 1, 3, 6986, 4840, NULL, 2),
(64, 3, 6, 'iPhone 3G', '3554', 'Kl2ZroV9a', 'KillerDiscount257631', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 2, 1, 5, 1408, 7036, NULL, 2),
(65, 2, 1, 'iPhone 5C', '5993', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'CoolCode968726', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 3, 1, 1, 3625, 7026, NULL, 2),
(66, 7, 1, 'iPhone 5S', '3694', 'NjGU0z33pgE4sTEED7VR', 'GreatPrice481118', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 2, 1, 6, 7774, 1044, NULL, 2),
(67, 1, 2, 'iPhone 5', '1233', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'KillerDiscount163732', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 6, 1, 8, 5444, 7794, NULL, 2),
(68, 1, 0, 'iPhone 3G', '5314', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'AwesomePromo292892', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 6, 1, 6, 1433, 3453, NULL, 2),
(69, 4, 5, 'iPhone 4', '3797', 'ejfjnRNInxh0363JC2WM', 'PremiumSavings373334', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 7, 1, 6, 7039, 6285, NULL, 2),
(70, 4, 3, 'iPhone', '3268', 'hHhDJaHCO', 'SpecialPrice188166', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 6, 1, 0, 2024, 5134, NULL, 2),
(71, 8, 1, 'iPhone 4', '6447', 'T6UuMUTani3VGY4vXGia', 'GoodPromotion461486', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 0, 1, 2, 3468, 5308, NULL, 2),
(72, 0, 9, 'iPhone SE', '6965', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'GoodCode722599', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 5, 1, 4, 7374, 5790, NULL, 2),
(73, 0, 8, 'iPhone', '2778', 'T6UuMUTani3VGY4vXGia', 'PremiumSale694514', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '3', 1, 1, 0, 5344, 2376, NULL, 2),
(74, 8, 1, 'iPhone 6 / 6 Plus', '3122', 'Kl2ZroV9a', 'StellarPromo514411', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 9, 1, 5, 6517, 1152, NULL, 2),
(75, 7, 0, 'iPhone 7 / 7 Plus', '1765', 'PTIA6Ff3GBvGh3j', 'GreatDiscount575904', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 5, 1, 0, 6406, 5154, NULL, 2),
(76, 6, 9, 'iPhone 3GS', '8731', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'GoodDeal842238', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 3, 1, 7, 1752, 6044, NULL, 2),
(77, 6, 2, 'iPhone 5C', '2126', 'hrR8nflThDDaSXO', 'AwesomePrice943860', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 3, 1, 0, 6034, 2567, NULL, 2),
(78, 6, 1, 'iPhone 3G', '4359', 'ToFVWLzGTJhQxAaJlDDn', 'CoolDeal468741', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 5, 1, 3, 6995, 6366, NULL, 2),
(79, 3, 9, 'iPhone 6S / 6S Plus', '4440', 'ejfjnRNInxh0363JC2WM', 'GreatSavings585679', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 0, 1, 6, 5219, 7584, NULL, 2),
(80, 8, 6, 'iPhone X', '7430', 'm6aHiiHOc', 'AwesomeCode643180', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '0', 4, 1, 5, 5378, 6961, NULL, 2),
(81, 6, 2, 'iPhone 3G', '4824', 'OezkV3nTii0sMK0', 'AmazingPrice693459', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '9', 4, 1, 4, 2112, 4476, NULL, 2),
(82, 5, 3, 'iPhone 3GS', '7205', '05skEogwZlX7j6twhhXX', 'SpecialSale277301', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 4, 1, 7, 8690, 1540, NULL, 2),
(83, 4, 7, 'iPhone SE', '5115', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'CoolSale136992', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 3, 1, 3, 3870, 2044, NULL, 2),
(84, 5, 4, 'iPhone 5S', '4751', 'Kl2ZroV9a', 'SweetDeal922160', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 4, 1, 6, 4241, 1809, NULL, 2),
(85, 6, 7, 'iPhone 6S / 6S Plus', '3684', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'GreatDeal195531', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 2, 1, 5, 8497, 7082, NULL, 2),
(86, 4, 4, 'iPhone 8 / 8 Plus', '6903', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'CoolCode464250', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '5', 4, 1, 5, 2328, 3935, NULL, 2),
(87, 1, 8, 'iPhone 5', '4413', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'GoodPromo957107', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 5, 1, 0, 2301, 8365, NULL, 2),
(88, 9, 8, 'iPhone SE', '5679', 'xC36G3Xy4n2Fu90keaW96c1Hw5QBJX', 'IncredibleSale888278', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '3', 6, 1, 9, 4025, 2569, NULL, 2),
(89, 7, 4, 'iPhone 6 / 6 Plus', '4294', 'Kl2ZroV9a', 'AwesomePrice392488', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 8, 1, 4, 8228, 8902, NULL, 2),
(90, 5, 3, 'iPhone 4S', '2574', 'SJMZOmtU0csrv4R', 'AmazingSale932055', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 2, 1, 2, 5450, 6550, NULL, 2),
(91, 8, 1, 'iPhone 5S', '4266', 'hHhDJaHCO', 'StellarPromo472158', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 9, 1, 7, 2002, 8645, NULL, 2),
(92, 8, 5, 'iPhone 3GS', '2956', 'ToFVWLzGTJhQxAaJlDDn', 'SpecialSavings159603', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 8, 1, 3, 2508, 3772, NULL, 2),
(93, 5, 6, 'iPhone', '7804', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'AmazingPromo301757', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 8, 1, 1, 8713, 6908, NULL, 2),
(94, 5, 4, 'iPhone 3GS', '8308', 'Kl2ZroV9a', 'GreatSavings361153', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 9, 1, 3, 7356, 2959, NULL, 2),
(95, 0, 0, 'iPhone SE', '1053', 'SJMZOmtU0csrv4R', 'AmazingPromotion341943', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '6', 8, 1, 1, 7452, 1576, NULL, 2),
(96, 7, 6, 'iPhone 5S', '5533', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'SweetSavings853037', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '7', 7, 1, 6, 6355, 6789, NULL, 2),
(97, 9, 9, 'iPhone 8 / 8 Plus', '2884', 'SJMZOmtU0csrv4R', 'PremiumPromotion371207', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2', 1, 1, 1, 2052, 4473, NULL, 2),
(98, 9, 0, 'iPhone', '3573', 'ToFVWLzGTJhQxAaJlDDn', 'SweetPrice847381', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '1', 4, 1, 8, 1360, 3959, NULL, 2),
(99, 0, 4, 'iPhone 3G', '7146', '05skEogwZlX7j6twhhXX', 'PremiumSale304200', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '8', 6, 1, 7, 3396, 8597, NULL, 2),
(100, 9, 3, 'iPhone', '4372', 'NjGU0z33pgE4sTEED7VR', 'AwesomePrice765242', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '2020-01-05 06:20:45', '4', 9, 1, 8, 3865, 5828, NULL, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `quota_gases`
--

CREATE TABLE `quota_gases` (
  `id` int(100) UNSIGNED NOT NULL,
  `tgl` date NOT NULL,
  `composisi` int(100) UNSIGNED NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `ket` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quota_gases`
--

INSERT INTO `quota_gases` (`id`, `tgl`, `composisi`, `satuan`, `ket`, `status`) VALUES
(1, '2020-01-05', 0, 'KG', 'Aperiam labore non dolorum pariatur dolor sequi quis et enim temporibus fugiat eum et.', 'complete'),
(21, '2019-12-01', 0, 'KG', 'baru', 'complete'),
(22, '2020-01-29', 0, 'KG', 'ok', 'complete'),
(23, '2020-01-29', 0, 'KG', '', 'complete');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedules`
--

CREATE TABLE `schedules` (
  `id` int(100) UNSIGNED NOT NULL,
  `tgl_schedules` date NOT NULL,
  `tgl_pickup` date NOT NULL,
  `transport` varchar(100) NOT NULL,
  `jml_tabung` varchar(100) NOT NULL,
  `ket` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_distribusi`
--

CREATE TABLE `t_distribusi` (
  `id` int(11) NOT NULL,
  `pangkalan_id` int(11) NOT NULL,
  `t_pengisian_id` int(11) NOT NULL,
  `rumahtangga` varchar(255) DEFAULT NULL,
  `ukm` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `balik` int(255) DEFAULT NULL,
  `void` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_distribusi`
--

INSERT INTO `t_distribusi` (`id`, `pangkalan_id`, `t_pengisian_id`, `rumahtangga`, `ukm`, `other`, `balik`, `void`, `created_at`, `updated_at`) VALUES
(20, 1, 12, '85', '', '', NULL, 0, '2020-01-10 09:14:18', '2020-01-10 09:14:18'),
(21, 8, 13, '40', '30', '30', NULL, 0, '2020-01-10 10:01:24', '2020-01-10 10:01:24'),
(22, 1, 14, '100', '400', '100', NULL, 0, '2020-01-11 14:10:40', '2020-01-11 14:10:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengisian`
--

CREATE TABLE `t_pengisian` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `composisi` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User create',
  `ket` text NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_pengisian`
--

INSERT INTO `t_pengisian` (`id`, `tgl`, `composisi`, `courier_id`, `user_id`, `ket`, `status`, `created_at`, `updated_at`) VALUES
(11, '2020-01-05', 100, 10, 1, '', 'complete', '2020-01-08 20:28:24', '2020-01-10 09:11:02'),
(12, '2020-01-05', 85, 10, 1, '', 'complete', '2020-01-08 20:29:29', '2020-01-10 09:14:18'),
(13, '2019-12-01', 100, 10, 1, 'sdasda', 'complete', '2020-01-10 15:58:32', '2020-01-10 10:01:24'),
(14, '2020-01-29', 600, 10, 1, '', 'complete', '2020-01-11 20:09:22', '2020-01-11 14:10:40'),
(15, '2020-01-29', 90, 10, 1, '', 'proses', '2020-01-11 20:11:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(8) UNSIGNED NOT NULL,
  `first_name` varchar(65) NOT NULL,
  `last_name` varchar(65) NOT NULL,
  `username` varchar(22) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `remember_token` varchar(128) NOT NULL,
  `active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `verified` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `gender`, `email`, `password`, `role`, `remember_token`, `active`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin', 'm', 'admin@admin.com', '$2y$10$CAFwYjsBMxWVhVOtUzBnreYcgbZ.9ZNoBtsOUKd8Z/z4GzceuFFfC', 'admin', '', 1, 1, '2020-01-05 12:20:43', NULL),
(2, 'ojol', 'ojol', 'ojol', 'm', 'ojol@ojol.com', '$2y$10$fXPbfAoQJRt4fb/9HNMvTOVNkdYuOOIMsoV.ioTO3NwGEpWuZHGTy', 'driver', '', 1, 0, '2020-01-08 14:00:39', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(8) UNSIGNED NOT NULL,
  `user_id` int(8) UNSIGNED NOT NULL,
  `category_id` int(8) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_permissions_categories`
--

CREATE TABLE `user_permissions_categories` (
  `id` int(8) UNSIGNED NOT NULL,
  `name` varchar(65) NOT NULL,
  `parent_id` int(8) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_id` (`customers_id`);

--
-- Indeks untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pangkalan`
--
ALTER TABLE `pangkalan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indeks untuk tabel `quota_gases`
--
ALTER TABLE `quota_gases`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_distribusi`
--
ALTER TABLE `t_distribusi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_pengisian`
--
ALTER TABLE `t_pengisian`
  ADD UNIQUE KEY `id_pengisian` (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pangkalan`
--
ALTER TABLE `pangkalan`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `quota_gases`
--
ALTER TABLE `quota_gases`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_distribusi`
--
ALTER TABLE `t_distribusi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `t_pengisian`
--
ALTER TABLE `t_pengisian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `user_permissions_categories` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  ADD CONSTRAINT `user_permissions_categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `user_permissions_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
