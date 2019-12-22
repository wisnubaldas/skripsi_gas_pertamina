-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2019 at 03:54 PM
-- Server version: 10.1.43-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.12-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `couriers`
--

CREATE TABLE `couriers` (
  `id` int(100) UNSIGNED NOT NULL,
  `users_id` int(100) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `wrapping_message` text,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `couriers`
--

INSERT INTO `couriers` (`id`, `users_id`, `name`, `wrapping_message`, `firstname`, `lastname`, `email`, `phone`) VALUES
(1, 1, 'Maryanto Marpaung', 'Sunt tempore quibusdam id sunt veritatis.', 'Kartika', 'Laksita', 'iirawan@nuraini.com', '+2804942337361'),
(2, 1, 'Cahyo Tamba', 'Accusantium culpa et suscipit et eveniet.', 'Amelia', 'Wijayanti', 'laksmiwati.saiful@wacana.sch.id', '+2842196570718'),
(3, 1, 'Kiandra Purwanti', 'Dolores nihil molestiae quia.', 'Nadine', 'Marpaung', 'caket.pertiwi@gmail.com', '+8008562277313'),
(4, 1, 'Irma Andriani', 'Et qui laudantium aut ullam eum quod nisi.', 'Usyi', 'Hutasoit', 'wastuti.ganda@yahoo.co.id', '+5790742554908'),
(5, 1, 'Raisa Utami', 'Eius error quas est qui.', 'Rahmi', 'Wastuti', 'opan.padmasari@yahoo.com', '+9132043600933'),
(6, 1, 'Hartaka Sirait', 'Doloremque et quia ipsa similique ea.', 'Yulia', 'Yulianti', 'wwastuti@siregar.name', '+2852153820512'),
(7, 1, 'Intan Elma Usamah S.I.Kom', 'Eius sed asperiores consequuntur recusandae.', 'Tasnim', 'Nuraini', 'gsuryatmi@mansur.my.id', '+8672459428258'),
(8, 1, 'Hasna Zulaika S.Ked', 'Laborum alias optio error.', 'Tedi', 'Pratiwi', 'umi83@hastuti.in', '+8556180174162'),
(9, 1, 'Karsana Sinaga S.Gz', 'Animi qui qui sequi reiciendis.', 'Ayu', 'Kuswandari', 'halima44@napitupulu.co.id', '+9579517357730'),
(10, 1, 'Kariman Pradipta S.T.', 'Maxime dolor et doloribus et.', 'Humaira', 'Lestari', 'pertiwi.eka@pangestu.sch.id', '+5071247442963'),
(11, 1, 'Fathonah Usamah', 'Fuga quo sint temporibus porro delectus.', 'Uda', 'Kusmawati', 'waluyo.safina@gmail.com', '+1132396956648'),
(12, 1, 'Tiara Permata', 'Eum totam omnis quod ullam nihil aliquid sit.', 'Dinda', 'Wahyudin', 'zsitumorang@sitorus.mil.id', '+9664539129038'),
(13, 1, 'Tari Mulyani', 'Laudantium quae tenetur tenetur eaque in ad.', 'Ira', 'Setiawan', 'nprastuti@lailasari.biz.id', '+2263843207659'),
(14, 1, 'Maida Permata M.Kom.', 'Hic doloremque architecto velit quaerat quia.', 'Ifa', 'Najmudin', 'emas.nasyiah@gmail.co.id', '+2764801850433'),
(15, 1, 'Virman Mulya Lazuardi S.E.', 'Minus odit inventore numquam non.', 'Mustika', 'Suryono', 'frahayu@yahoo.co.id', '+8201330752679'),
(16, 1, 'Irma Pudjiastuti', 'Rerum qui placeat provident laudantium.', 'Ade', 'Prayoga', 'marpaung.kania@astuti.desa.id', '+6494562305552'),
(17, 1, 'Lili Genta Mayasari S.Farm', 'Deserunt sed quasi aut quod.', 'Mulyono', 'Tamba', 'ghaliyati73@yahoo.co.id', '+7053613308394'),
(18, 1, 'Tami Nasyidah', 'Non magni dolor ea tempora et ut repellat.', 'Najwa', 'Pratiwi', 'dipa85@yahoo.com', '+5295311633908'),
(19, 1, 'Kartika Lailasari', 'Non similique et dignissimos.', 'Hasna', 'Pudjiastuti', 'jono19@riyanti.in', '+6390260569411'),
(20, 1, 'Limar Manullang', 'Et autem autem dolor enim.', 'Samiah', 'Maryadi', 'girawan@gmail.com', '+6152012709619'),
(21, 1, 'Hilda Hasanah S.Psi', 'Et aliquid eligendi excepturi.', 'Makara', 'Halimah', 'malika.pangestu@yahoo.com', '+6971582232358'),
(22, 1, 'Nadia Riyanti', 'Aut et deserunt velit eos qui voluptate ut rem.', 'Tirta', 'Wacana', 'widya.maryati@yahoo.com', '+8978323798700'),
(23, 1, 'Ika Kusmawati', 'Neque mollitia sunt id voluptas mollitia ut.', 'Janet', 'Suryono', 'fitriani20@gmail.co.id', '+4449332921924'),
(24, 1, 'Asman Irawan', 'Quod consequatur rerum inventore facilis quod.', 'Widya', 'Yuniar', 'zmardhiyah@hasanah.name', '+1280323272170'),
(25, 1, 'Samiah Winarsih M.TI.', 'Et perferendis a suscipit quia blanditiis.', 'Sabrina', 'Ardianto', 'mila36@safitri.co', '+3298670576955'),
(26, 1, 'Amelia Astuti', 'Dolores ipsam qui accusamus laborum.', 'Garan', 'Hassanah', 'nsuwarno@ramadan.com', '+6906809814835'),
(27, 1, 'Ade Sinaga S.Pd', 'Facilis sint non beatae quaerat.', 'Jamil', 'Mardhiyah', 'arsipatra05@gmail.com', '+3725650611258'),
(28, 1, 'Fitriani Oktaviani', 'Sit et laborum quo exercitationem.', 'Gilang', 'Situmorang', 'gwahyuni@prabowo.org', '+8780717161032'),
(29, 1, 'Gawati Prastuti M.Ak', 'Iure quisquam et deserunt.', 'Luhung', 'Suartini', 'danu28@gmail.com', '+9685981655321'),
(30, 1, 'Viman Januar', 'Qui vel aliquam incidunt aut qui beatae.', 'Nadia', 'Hassanah', 'aryani.puti@gmail.com', '+5604671213763'),
(31, 1, 'Najwa Wulandari', 'Numquam alias rerum illum officia nam.', 'Rahmi', 'Andriani', 'cakrabuana.maheswara@iswahyudi.co.id', '+6988533829930'),
(32, 1, 'Asmadi Saka Waskita', 'Debitis beatae ut earum culpa.', 'Teddy', 'Napitupulu', 'ihalimah@pangestu.co', '+9670769465290'),
(33, 1, 'Kasiyah Yance Mulyani S.Pt', 'Iste hic et id architecto occaecati.', 'Karsa', 'Astuti', 'hwijaya@yahoo.com', '+6863055411618'),
(34, 1, 'Yoga Widodo', 'Est quia fuga ut porro dolorem.', 'Kajen', 'Kuswandari', 'bakianto50@tarihoran.biz.id', '+6793408593140'),
(35, 1, 'Ciaobella Namaga', 'Ut nihil laboriosam vitae ut.', 'Zaenab', 'Lestari', 'marpaung.empluk@yahoo.com', '+3441716210306'),
(36, 1, 'Paramita Winarsih', 'Exercitationem assumenda quia dolorem facere.', 'Ayu', 'Yuniar', 'psitompul@yuliarti.in', '+6239332997561'),
(37, 1, 'Sabri Wibisono', 'Maxime nam quae blanditiis ipsum.', 'Tania', 'Sudiati', 'winarsih.latif@yahoo.co.id', '+1617165937886'),
(38, 1, 'Paramita Novitasari', 'Exercitationem unde quia cum et quia est.', 'Chelsea', 'Wibisono', 'saiful90@wastuti.id', '+7385193455360'),
(39, 1, 'Timbul Gaiman Nainggolan', 'Ipsam nesciunt perspiciatis doloremque non.', 'Yuni', 'Hardiansyah', 'umandasari@saptono.net', '+3865157492130'),
(40, 1, 'Mitra Rajasa', 'Maxime nesciunt ut hic esse velit quia.', 'Gangsar', 'Setiawan', 'diana51@wastuti.my.id', '+1312444752970'),
(41, 1, 'Oliva Sudiati', 'Temporibus atque consectetur nisi.', 'Yosef', 'Riyanti', 'hamima16@gmail.com', '+8441695917747'),
(42, 1, 'Budi Narpati S.Farm', 'Sequi voluptas accusantium iusto.', 'Raihan', 'Nasyiah', 'purnawati.ade@pratiwi.net', '+8436312115553'),
(43, 1, 'Jamalia Ani Anggraini M.TI.', 'Ut at autem quasi aliquam qui.', 'Suci', 'Lestari', 'irawan.kasiyah@wahyudin.biz', '+4779816262921'),
(44, 1, 'Lintang Usamah', 'Ut quod quod voluptatum placeat similique error.', 'Uli', 'Hutapea', 'devi.nuraini@januar.co.id', '+2128402912215'),
(45, 1, 'Rika Devi Laksita', 'Ut et ducimus sed nemo.', 'Zelda', 'Waluyo', 'wacana.cakrajiya@gmail.com', '+6692199434640'),
(46, 1, 'Rendy Dimas Tarihoran', 'Praesentium iusto quaerat qui deserunt dolor.', 'Jarwi', 'Hariyah', 'rahman80@lailasari.asia', '+7224869921622'),
(47, 1, 'Kani Ani Yolanda S.I.Kom', 'Quia facere cumque velit totam dolores impedit.', 'Yulia', 'Suryono', 'saefullah.saadat@gmail.co.id', '+8394308629706'),
(48, 1, 'Gina Yuliana Yolanda', 'Et sit quo nam voluptas nisi tempore ab.', 'Queen', 'Mayasari', 'astuti.karimah@pertiwi.mil.id', '+9447336776513'),
(49, 1, 'Rachel Novitasari', 'Sit voluptatem temporibus ut adipisci ut in.', 'Artanto', 'Firmansyah', 'utama.bahuraksa@gmail.co.id', '+5104023260610'),
(50, 1, 'Wawan Saiful Hidayat', 'Ut dolores amet ipsam non.', 'Kiandra', 'Maulana', 'tampubolon.nabila@safitri.web.id', '+5992640084177'),
(51, 1, 'Dinda Yulia Mardhiyah', 'Voluptatum hic tempora aliquid sit.', 'Carla', 'Maheswara', 'bahuraksa23@lestari.com', '+6606437444306'),
(52, 1, 'Halima Paris Anggraini', 'Ut quae earum quis mollitia eligendi sit ut ipsa.', 'Kala', 'Sihombing', 'pudjiastuti.artanto@hidayanto.co.id', '+4709342432776'),
(53, 1, 'Rachel Ulya Rahmawati M.Kom.', 'Quia accusantium mollitia quisquam itaque.', 'Ophelia', 'Aryani', 'pwastuti@saefullah.name', '+7020989004933'),
(54, 1, 'Asmianto Eluh Sirait', 'Dolor et reprehenderit dicta atque aperiam.', 'Raina', 'Tarihoran', 'nadine.budiyanto@astuti.com', '+3317908549499'),
(55, 1, 'Calista Sudiati', 'Id ab ut repudiandae.', 'Martani', 'Suryatmi', 'pratiwi.banawi@gmail.com', '+6362830572653'),
(56, 1, 'Kasiran Surya Adriansyah', 'Accusantium quis et accusamus earum qui id.', 'Melinda', 'Wulandari', 'sihotang.galur@hassanah.net', '+2305060293974'),
(57, 1, 'Ina Safitri', 'Sint facere aut esse temporibus.', 'Tantri', 'Pangestu', 'ian28@yahoo.com', '+3179130019219'),
(58, 1, 'Jaga Prasetyo', 'Saepe at quibusdam explicabo aut impedit nobis.', 'Maras', 'Kuswandari', 'ysiregar@gmail.co.id', '+3013479613499'),
(59, 1, 'Julia Zelda Andriani', 'Iste excepturi minus nihil aut nihil.', 'Prayoga', 'Aryani', 'wlaksmiwati@yahoo.com', '+9237392541583'),
(60, 1, 'Amelia Yulianti', 'A aspernatur atque qui officia eaque maxime.', 'Upik', 'Siregar', 'azulkarnain@lazuardi.or.id', '+8862174210887'),
(61, 1, 'Gabriella Yolanda', 'Est et praesentium quasi provident.', 'Ibrahim', 'Suryatmi', 'purwanti.lutfan@purwanti.net', '+4687007800492'),
(62, 1, 'Cemani Nugroho', 'Ad corrupti nihil optio magnam.', 'Cinta', 'Mandala', 'karman01@firgantoro.co', '+5926280714045'),
(63, 1, 'Mahfud Santoso', 'Velit ut et architecto fuga sunt deleniti et.', 'Tira', 'Salahudin', 'kenari34@yahoo.co.id', '+9760275601769'),
(64, 1, 'Hasna Yunita Haryanti S.Gz', 'Et illum rerum dolor.', 'Maryadi', 'Aryani', 'raden00@maryadi.org', '+6886820842995'),
(65, 1, 'Kariman Maryadi', 'Sed et cupiditate error.', 'Irfan', 'Handayani', 'nnashiruddin@oktaviani.mil.id', '+8993854348704'),
(66, 1, 'Garang Bala Jailani S.T.', 'Consequatur tempore facilis et quo blanditiis.', 'Harsana', 'Yuliarti', 'ulva.astuti@yahoo.com', '+6758611882253'),
(67, 1, 'Usman Narpati', 'Voluptate velit amet totam voluptas est aliquam.', 'Alika', 'Nuraini', 'nova25@prasasta.com', '+3801636754617'),
(68, 1, 'Atma Sitorus', 'Vel veritatis provident quidem et est.', 'Gina', 'Yulianti', 'farah76@susanti.sch.id', '+3690521426758'),
(69, 1, 'Mala Agustina S.I.Kom', 'Dolorem nam perspiciatis sapiente consequatur.', 'Samsul', 'Wacana', 'garda.pudjiastuti@widiastuti.co.id', '+5897200927228'),
(70, 1, 'Tiara Yance Wijayanti M.Kom.', 'Nulla id a commodi.', 'Ifa', 'Iswahyudi', 'tania93@hidayanto.or.id', '+3945875255182'),
(71, 1, 'Silvia Pertiwi', 'Qui saepe deleniti qui placeat.', 'Hesti', 'Prayoga', 'megantara.ika@simbolon.id', '+2381982766230'),
(72, 1, 'Garang Baktianto Rajata S.Ked', 'Nisi quibusdam quia voluptas in.', 'Suci', 'Sinaga', 'snasyiah@tarihoran.desa.id', '+7790898286245'),
(73, 1, 'Ifa Hassanah', 'Et et dolores autem quisquam nostrum et.', 'Maryanto', 'Halimah', 'latika.hakim@gmail.com', '+8041523813256'),
(74, 1, 'Fathonah Utami', 'Nobis labore enim vel deserunt.', 'Devi', 'Fujiati', 'bpranowo@yahoo.com', '+5962352551838'),
(75, 1, 'Daryani Natsir', 'Aperiam ut beatae eum.', 'Jelita', 'Wahyudin', 'gantar51@sitompul.net', '+3032761675996'),
(76, 1, 'Hamzah Wisnu Haryanto S.I.Kom', 'Est ut totam recusandae quisquam iure velit fuga.', 'Hardi', 'Mangunsong', 'kusumo.titin@mardhiyah.desa.id', '+3009330867092'),
(77, 1, 'Jarwi Putra', 'Soluta iure aut sequi inventore expedita.', 'Lintang', 'Prakasa', 'zulkarnain.zaenab@budiman.my.id', '+4046402223994'),
(78, 1, 'Oman Kemba Sihotang', 'Cumque nihil laboriosam ut ab quae atque fuga.', 'Ade', 'Prasasta', 'winarno.kemal@yahoo.com', '+7760200773220'),
(79, 1, 'Wulan Wulandari M.Pd', 'Earum et mollitia quia doloribus ea occaecati et.', 'Michelle', 'Tarihoran', 'ztarihoran@susanti.asia', '+8829967982199'),
(80, 1, 'Cindy Jane Hariyah S.H.', 'Aut quia ipsa similique nulla et.', 'Eva', 'Safitri', 'lhandayani@yahoo.com', '+3651297505835'),
(81, 1, 'Elisa Purnawati', 'Et eum nemo nihil dignissimos asperiores rerum.', 'Imam', 'Anggraini', 'among.mustofa@gmail.com', '+3275232827757'),
(82, 1, 'Viktor Tamba', 'Vero rem voluptas ut veniam modi vitae.', 'Ivan', 'Hakim', 'cici.uwais@yahoo.com', '+5251490171425'),
(83, 1, 'Rahmi Padmasari', 'Expedita impedit commodi et optio quo provident.', 'Eman', 'Wahyudin', 'nasyiah.adikara@nasyiah.co', '+6262820578202'),
(84, 1, 'Latika Farida', 'Quia ipsam quasi ad sequi est est minus at.', 'Pangestu', 'Nasyidah', 'yolanda.balijan@yahoo.co.id', '+3581667697199'),
(85, 1, 'Cahyono Viktor Hutapea S.I.Kom', 'Sit sunt sit amet dicta sit.', 'Bakda', 'Rajata', 'mpratiwi@wijaya.asia', '+6628345283920'),
(86, 1, 'Daryani Saputra', 'Sit corrupti non officia inventore ex.', 'Surya', 'Pratama', 'uyainah.putu@yahoo.com', '+3623434678715'),
(87, 1, 'Keisha Elvina Widiastuti', 'Optio consectetur quos vel hic.', 'Safina', 'Prasasta', 'xaryani@yahoo.com', '+1421370041493'),
(88, 1, 'Umar Sinaga', 'Fuga eligendi ad aliquam nulla et.', 'Wakiman', 'Hutagalung', 'gasti03@gmail.co.id', '+5328828059555'),
(89, 1, 'Lalita Pertiwi', 'Aut labore et temporibus autem est in.', 'Emin', 'Utami', 'iriana14@hariyah.sch.id', '+9739287773841'),
(90, 1, 'Zamira Hasanah', 'Quo nesciunt fugit numquam a et.', 'Damu', 'Prakasa', 'yono72@gmail.com', '+8878571202533'),
(91, 1, 'Betania Dalima Suartini', 'Vel aut doloribus maxime nobis saepe ad autem.', 'Prima', 'Mustofa', 'ida.hidayanto@rajasa.asia', '+8075999961129'),
(92, 1, 'Cayadi Gatra Hutagalung', 'Laboriosam facere mollitia quia placeat.', 'Mala', 'Suartini', 'ira.adriansyah@sudiati.biz.id', '+8725510554234'),
(93, 1, 'Kayla Rina Palastri S.Pd', 'Rerum dolore et ut et illo ea omnis.', 'Dimas', 'Yulianti', 'permata.dagel@iswahyudi.sch.id', '+1544230800311'),
(94, 1, 'Emas Hidayanto', 'Facilis voluptas voluptates dolore commodi vel.', 'Edi', 'Maryati', 'xprasetyo@yahoo.com', '+8420171246957'),
(95, 1, 'Sakti Budiman', 'Odio voluptates laudantium possimus modi eos.', 'Agnes', 'Laksmiwati', 'rini.gunawan@puspasari.co', '+5648607605605'),
(96, 1, 'Cinta Puspita M.Pd', 'Ullam officiis beatae enim rerum.', 'Padmi', 'Narpati', 'qdabukke@gmail.com', '+8909772463694'),
(97, 1, 'Putri Gawati Mardhiyah', 'Vitae corrupti a qui in quae aspernatur.', 'Prayoga', 'Mahendra', 'usamah.faizah@anggraini.sch.id', '+5057028052791'),
(98, 1, 'Tedi Hutagalung', 'Aut sit suscipit distinctio beatae.', 'Kartika', 'Mandasari', 'diana.haryanti@yahoo.co.id', '+7806577655098'),
(99, 1, 'Bagus Wibowo', 'Vel beatae omnis voluptatem et qui.', 'Jumadi', 'Dongoran', 'kani50@haryanto.web.id', '+6015569660607'),
(100, 1, 'Nasim Sihombing', 'Expedita consequatur et qui architecto.', 'Mulyanto', 'Wahyuni', 'laksita.alika@yahoo.co.id', '+1428885619260');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `groups_id` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `dob` datetime DEFAULT NULL,
  `email_address` varchar(96) NOT NULL,
  `default_address` text,
  `telephone` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `newsletter` char(1) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `ip_address` varchar(15) DEFAULT NULL,
  `credits` decimal(15,4) DEFAULT '0.0000',
  `date_last_logon` datetime DEFAULT NULL,
  `number_of_logons` int(5) DEFAULT NULL,
  `date_account_created` datetime DEFAULT NULL,
  `date_account_last_modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `groups_id`, `gender`, `firstname`, `lastname`, `dob`, `email_address`, `default_address`, `telephone`, `fax`, `newsletter`, `status`, `ip_address`, `credits`, `date_last_logon`, `number_of_logons`, `date_account_created`, `date_account_last_modified`) VALUES
(1, 1, 1, 'f', 'Asman', 'Uyainah', '2019-12-14 00:16:38', 'Asman@yahoo.com', 'Jl.W.R. Supratman, Kpg. Gegerkalong Hilir No. 698, Batu 62751, KalSel', '+8841337871367', '(+62) 450 3675 2689', '1', 1, '132.47.55.152', '178700.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(2, 1, 1, 'f', 'Rahmi', 'Yulianti', '2019-12-14 00:16:38', 'Rahmi@yahoo.com', 'Jl.Tambak, Jln. Suniaraja No. 708, Padang 65117, JaBar', '+8911765462646', '(+62) 742 7779 7726', '1', 1, '191.130.5.176', '260302.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(3, 1, 1, 'm', 'Tami', 'Sudiati', '2019-12-14 00:16:38', 'Tami@yahoo.com', 'Jl.Raden Saleh, Jln. Yohanes No. 746, Padangpanjang 31738, Lampung', '+5872242275556', '(+62) 469 4811 1390', '1', 1, '93.52.46.228', '663154.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(4, 1, 1, 'f', 'Putri', 'Hastuti', '2019-12-14 00:16:38', 'Putri@yahoo.com', 'Jl.Aceh, Ds. Nanas No. 851, Tasikmalaya 91659, SulSel', '+2737734491508', '0329 0767 975', '1', 1, '96.89.29.239', '569901.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(5, 1, 1, 'f', 'Ghaliyati', 'Budiman', '2019-12-14 00:16:38', 'Ghaliyati@yahoo.com', 'Jl.Bara Tambar, Ki. Ciumbuleuit No. 228, Palu 23206, BaBel', '+6919313116809', '0253 0563 1979', '1', 1, '8.62.47.36', '245206.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(6, 1, 1, 'f', 'Digdaya', 'Nasyiah', '2019-12-14 00:16:38', 'Digdaya@yahoo.co.id', 'Jl.Imam Bonjol, Dk. Imam No. 115, Manado 64154, JaTeng', '+2518533698109', '(+62) 29 1661 714', '1', 1, '59.184.213.184', '519536.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(7, 1, 1, 'f', 'Indah', 'Wahyuni', '2019-12-14 00:16:38', 'Indah@yahoo.co.id', 'Jl.Cut Nyak Dien, Ki. Urip Sumoharjo No. 43, Cirebon 83650, KepR', '+4102456253188', '(+62) 591 3482 566', '1', 1, '87.137.91.118', '375310.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(8, 1, 1, 'f', 'Gabriella', 'Wahyuni', '2019-12-14 00:16:38', 'Gabriella@yahoo.com', 'Jl.Gading, Gg. Baja Raya No. 487, Probolinggo 96205, SumUt', '+4029486821913', '0297 2365 476', '1', 1, '218.137.169.72', '806624.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(9, 1, 1, 'f', 'Unjani', 'Suryatmi', '2019-12-14 00:16:38', 'Unjani@gmail.com', 'Jl.Raya Ujungberung, Psr. Baranang No. 109, Padang 75277, SulTra', '+5328100039396', '0617 7566 950', '1', 1, '12.253.48.212', '749946.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(10, 1, 1, 'm', 'Mumpuni', 'Ardianto', '2019-12-14 00:16:38', 'Mumpuni@gmail.com', 'Jl.Surapati, Kpg. Kartini No. 200, Jayapura 79607, SulUt', '+2017708101494', '(+62) 624 0283 8407', '1', 1, '231.143.112.77', '793278.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(11, 1, 1, 'm', 'Galang', 'Megantara', '2019-12-14 00:16:38', 'Galang@yahoo.co.id', 'Jl.Ters. Pasir Koja, Psr. Baranang Siang No. 26, Depok 29953, NTT', '+8793631403080', '(+62) 435 1010 735', '1', 1, '87.126.231.41', '433802.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(12, 1, 1, 'm', 'Intan', 'Haryanti', '2019-12-14 00:16:38', 'Intan@gmail.co.id', 'Jl.Babakan, Psr. Mulyadi No. 925, Sukabumi 38761, Lampung', '+1591428234680', '(+62) 621 6426 2715', '1', 1, '232.89.101.12', '414236.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(13, 1, 1, 'f', 'Taufik', 'Pradipta', '2019-12-14 00:16:38', 'Taufik@gmail.co.id', 'Jl.Abang, Gg. Bambu No. 430, Administrasi Jakarta Utara 29454, Papua', '+7679089241161', '0621 1605 279', '1', 1, '109.209.225.174', '515843.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(14, 1, 1, 'f', 'Kamal', 'Hutasoit', '2019-12-14 00:16:38', 'Kamal@gmail.co.id', 'Jl.Agus Salim, Dk. Bawal No. 358, Malang 57516, PapBar', '+4685968472159', '0585 7746 108', '1', 1, '71.249.148.130', '212402.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(15, 1, 1, 'f', 'Wawan', 'Padmasari', '2019-12-14 00:16:38', 'Wawan@gmail.co.id', 'Jl.Bakit , Jr. Banal No. 46, Mataram 77236, NTT', '+6620466302839', '0435 0607 726', '1', 1, '97.202.81.219', '290392.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(16, 1, 1, 'm', 'Hari', 'Handayani', '2019-12-14 00:16:38', 'Hari@gmail.com', 'Jl.Camar, Dk. Banda No. 984, Sibolga 75127, PapBar', '+3573996223420', '0906 0718 4215', '1', 1, '253.187.109.196', '317863.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(17, 1, 1, 'f', 'Galang', 'Winarsih', '2019-12-14 00:16:38', 'Galang@gmail.co.id', 'Jl.Abdullah, Ds. Casablanca No. 769, Bandar Lampung 45296, KalBar', '+6188958118243', '(+62) 259 2630 4971', '1', 1, '221.185.17.26', '733610.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(18, 1, 1, 'm', 'Elisa', 'Halimah', '2019-12-14 00:16:38', 'Elisa@gmail.com', 'Jl.Bayam, Ki. Bayan No. 319, Bukittinggi 29981, SulTra', '+5241280317066', '0801 2704 4056', '1', 1, '81.104.177.187', '851598.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(19, 1, 1, 'f', 'Olga', 'Megantara', '2019-12-14 00:16:38', 'Olga@yahoo.com', 'Jl.Pasirkoja, Kpg. Arifin No. 450, Sawahlunto 73058, MalUt', '+1682678222723', '0600 5233 690', '1', 1, '36.200.151.138', '569183.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(20, 1, 1, 'f', 'Hasna', 'Yuliarti', '2019-12-14 00:16:38', 'Hasna@yahoo.com', 'Jl.Bara, Ds. Suharso No. 389, Kupang 46280, Aceh', '+4357850537909', '0468 5106 2841', '1', 1, '46.214.148.193', '181143.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(21, 1, 1, 'm', 'Clara', 'Wijayanti', '2019-12-14 00:16:38', 'Clara@yahoo.co.id', 'Jl.Batako, Ds. Salatiga No. 288, Administrasi Jakarta Pusat 53826, Lampung', '+3178121793634', '0658 9685 3893', '1', 1, '247.162.44.204', '615729.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(22, 1, 1, 'f', 'Galur', 'Sihombing', '2019-12-14 00:16:38', 'Galur@yahoo.com', 'Jl.Honggowongso, Gg. Monginsidi No. 427, Bontang 17986, SulBar', '+4528393033115', '0981 5263 3693', '1', 1, '24.81.109.69', '454520.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(23, 1, 1, 'f', 'Ophelia', 'Farida', '2019-12-14 00:16:38', 'Ophelia@gmail.com', 'Jl.Barat, Jr. Panjaitan No. 175, Sorong 84670, KalUt', '+1738096312956', '0457 9179 6006', '1', 1, '24.184.99.46', '522251.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(24, 1, 1, 'm', 'Syahrini', 'Pratiwi', '2019-12-14 00:16:38', 'Syahrini@gmail.com', 'Jl.Sutarjo, Dk. Taman No. 826, Banjar 65435, DIY', '+8488331906120', '(+62) 680 0658 4959', '1', 1, '105.133.215.220', '870458.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(25, 1, 1, 'm', 'Jefri', 'Firgantoro', '2019-12-14 00:16:38', 'Jefri@yahoo.com', 'Jl.Ciwastra, Psr. Salatiga No. 239, Pontianak 35904, MalUt', '+5142202485129', '(+62) 693 4934 978', '1', 1, '137.216.157.41', '800879.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(26, 1, 1, 'f', 'Rahmi', 'Winarno', '2019-12-14 00:16:38', 'Rahmi@gmail.co.id', 'Jl.Bara, Ds. Baja Raya No. 891, Batam 55963, BaBel', '+9865894992829', '(+62) 921 8660 060', '1', 1, '218.94.148.233', '580746.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(27, 1, 1, 'm', 'Irsad', 'Dongoran', '2019-12-14 00:16:38', 'Irsad@yahoo.com', 'Jl.S. Parman, Jr. Gading No. 246, Subulussalam 33660, Jambi', '+2060123023511', '(+62) 434 4074 056', '1', 1, '182.210.184.37', '358157.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(28, 1, 1, 'm', 'Jamil', 'Wulandari', '2019-12-14 00:16:38', 'Jamil@gmail.com', 'Jl.Orang, Kpg. R.E. Martadinata No. 65, Tegal 69154, NTB', '+3554029854881', '0379 0507 9253', '1', 1, '129.210.210.51', '372513.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(29, 1, 1, 'f', 'Diana', 'Melani', '2019-12-14 00:16:38', 'Diana@gmail.co.id', 'Jl.Halim, Ki. Bakau Griya Utama No. 482, Depok 75589, KepR', '+1779645090257', '(+62) 356 5001 152', '1', 1, '143.137.208.232', '836919.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(30, 1, 1, 'm', 'Nalar', 'Hariyah', '2019-12-14 00:16:38', 'Nalar@yahoo.co.id', 'Jl.B.Agam 1, Jr. Yoga No. 542, Bengkulu 69506, PapBar', '+5993079659041', '0579 2425 6832', '1', 1, '90.170.71.58', '609057.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(31, 1, 1, 'm', 'Maman', 'Puspita', '2019-12-14 00:16:38', 'Maman@yahoo.co.id', 'Jl.Tangkuban Perahu, Kpg. Baung No. 918, Tidore Kepulauan 67020, PapBar', '+9109411602001', '0971 8215 0785', '1', 1, '209.103.167.182', '381042.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(32, 1, 1, 'f', 'Harjaya', 'Melani', '2019-12-14 00:16:38', 'Harjaya@gmail.co.id', 'Jl.Cemara, Gg. Kiaracondong No. 501, Sungai Penuh 98904, Aceh', '+3142452062789', '0450 8551 659', '1', 1, '91.200.197.168', '215794.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(33, 1, 1, 'm', 'Samiah', 'Aryani', '2019-12-14 00:16:38', 'Samiah@gmail.com', 'Jl.Kali, Dk. Kali No. 27, Ternate 64221, SulBar', '+9722654083543', '(+62) 663 1239 458', '1', 1, '216.86.240.56', '419887.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(34, 1, 1, 'm', 'Daniswara', 'Yuliarti', '2019-12-14 00:16:38', 'Daniswara@yahoo.com', 'Jl.Sam Ratulangi, Dk. Arifin No. 983, Probolinggo 86976, Maluku', '+7347806712595', '0813 630 431', '1', 1, '233.191.130.133', '245684.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(35, 1, 1, 'f', 'Lanang', 'Usada', '2019-12-14 00:16:38', 'Lanang@yahoo.co.id', 'Jl.Tentara Pelajar, Gg. Ters. Jakarta No. 748, Administrasi Jakarta Barat 41349, SulTeng', '+8795941575244', '(+62) 738 7849 1251', '1', 1, '69.8.14.75', '577623.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(36, 1, 1, 'f', 'Laila', 'Hasanah', '2019-12-14 00:16:38', 'Laila@yahoo.com', 'Jl.Sampangan, Dk. Teuku Umar No. 822, Langsa 95651, Maluku', '+3188949111745', '0850 328 243', '1', 1, '233.63.245.133', '442451.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(37, 1, 1, 'f', 'Mala', 'Melani', '2019-12-14 00:16:38', 'Mala@gmail.co.id', 'Jl.Bappenas, Jln. Barat No. 540, Kendari 48222, Lampung', '+6765428003995', '0963 9107 6843', '1', 1, '116.111.51.227', '221291.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(38, 1, 1, 'm', 'Danuja', 'Prastuti', '2019-12-14 00:16:38', 'Danuja@gmail.co.id', 'Jl.Camar, Jr. Kalimantan No. 497, Manado 24169, SumBar', '+7197845470366', '0963 6675 414', '1', 1, '94.228.116.113', '721096.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(39, 1, 1, 'm', 'Septi', 'Kurniawan', '2019-12-14 00:16:38', 'Septi@yahoo.co.id', 'Jl.Basoka Raya, Jln. Orang No. 172, Cirebon 16957, SumUt', '+7336494903987', '(+62) 316 8657 187', '1', 1, '8.251.109.131', '659927.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(40, 1, 1, 'm', 'Cengkal', 'Kusumo', '2019-12-14 00:16:38', 'Cengkal@yahoo.com', 'Jl.Mulyadi, Dk. Baung No. 5, Administrasi Jakarta Barat 14468, Bengkulu', '+3377160915078', '(+62) 20 3450 9800', '1', 1, '75.168.155.194', '321193.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(41, 1, 1, 'f', 'Belinda', 'Nababan', '2019-12-14 00:16:38', 'Belinda@gmail.co.id', 'Jl.Basuki Rahmat , Jr. Aceh No. 759, Cimahi 10562, JaBar', '+7420115887937', '(+62) 512 4542 7388', '1', 1, '16.11.92.81', '670144.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(42, 1, 1, 'f', 'Dadi', 'Wibowo', '2019-12-14 00:16:38', 'Dadi@yahoo.co.id', 'Jl.Yohanes, Psr. Ciwastra No. 954, Kediri 73185, Bengkulu', '+3234483331763', '(+62) 838 879 287', '1', 1, '188.199.62.251', '641418.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(43, 1, 1, 'f', 'Wirda', 'Sitorus', '2019-12-14 00:16:38', 'Wirda@yahoo.co.id', 'Jl.Baiduri, Kpg. Laksamana No. 548, Bandung 62487, Maluku', '+1391579800060', '0812 144 861', '1', 1, '18.220.234.207', '274531.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(44, 1, 1, 'm', 'Unjani', 'Oktaviani', '2019-12-14 00:16:38', 'Unjani@yahoo.com', 'Jl.Kebangkitan Nasional, Jln. Jend. Sudirman No. 753, Kendari 25045, KalSel', '+3092118370801', '(+62) 25 5233 2286', '1', 1, '252.195.33.77', '710502.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(45, 1, 1, 'm', 'Kambali', 'Irawan', '2019-12-14 00:16:38', 'Kambali@yahoo.co.id', 'Jl.Bahagia, Jr. Madiun No. 760, Tidore Kepulauan 16209, KalTeng', '+2034353080729', '0353 0289 5573', '1', 1, '181.208.126.237', '496579.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(46, 1, 1, 'm', 'Victoria', 'Wastuti', '2019-12-14 00:16:38', 'Victoria@gmail.com', 'Jl.Bazuka Raya, Psr. Cikutra Barat No. 301, Pekanbaru 35760, Lampung', '+9597137921069', '(+62) 884 225 361', '1', 1, '11.216.95.170', '343918.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(47, 1, 1, 'f', 'Ella', 'Maheswara', '2019-12-14 00:16:38', 'Ella@gmail.com', 'Jl.Kyai Gede, Psr. Rumah Sakit No. 600, Administrasi Jakarta Pusat 22151, SulTra', '+7057107453017', '(+62) 792 7684 164', '1', 1, '143.78.223.28', '582201.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(48, 1, 1, 'm', 'Dewi', 'Siregar', '2019-12-14 00:16:38', 'Dewi@gmail.com', 'Jl.Moch. Ramdan, Kpg. Elang No. 837, Metro 30006, SulSel', '+5257374376009', '0887 6870 8071', '1', 1, '176.147.209.72', '453516.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(49, 1, 1, 'm', 'Mursita', 'Andriani', '2019-12-14 00:16:38', 'Mursita@yahoo.com', 'Jl.Barat, Dk. W.R. Supratman No. 884, Ternate 23050, NTT', '+6808400831353', '(+62) 594 3223 183', '1', 1, '80.236.201.147', '749889.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(50, 1, 1, 'f', 'Among', 'Astuti', '2019-12-14 00:16:38', 'Among@yahoo.co.id', 'Jl.Siliwangi, Jr. Monginsidi No. 18, Administrasi Jakarta Selatan 39347, DKI', '+6159904242262', '0244 5771 759', '1', 1, '192.70.70.53', '228682.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(51, 1, 1, 'm', 'Pangestu', 'Mulyani', '2019-12-14 00:16:38', 'Pangestu@gmail.com', 'Jl.Abdul Muis, Ds. Yoga No. 831, Solok 41870, KalUt', '+5898504498087', '(+62) 27 5188 709', '1', 1, '83.170.122.56', '843875.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(52, 1, 1, 'm', 'Purwanto', 'Hutapea', '2019-12-14 00:16:38', 'Purwanto@gmail.com', 'Jl.Bakin, Kpg. Bagonwoto  No. 974, Tasikmalaya 93779, Riau', '+6799664876068', '(+62) 541 7946 087', '1', 1, '204.142.82.164', '544352.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(53, 1, 1, 'm', 'Nabila', 'Zulkarnain', '2019-12-14 00:16:38', 'Nabila@yahoo.com', 'Jl.Suryo Pranoto, Jln. Ahmad Dahlan No. 816, Medan 96671, DIY', '+8424775701073', '0888 8413 2799', '1', 1, '95.161.224.82', '466819.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(54, 1, 1, 'f', 'Samiah', 'Nashiruddin', '2019-12-14 00:16:38', 'Samiah@yahoo.co.id', 'Jl.Dahlia, Ki. Baya Kali Bungur No. 569, Jayapura 13481, Jambi', '+5838018131537', '(+62) 226 0947 2874', '1', 1, '204.33.102.191', '571306.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(55, 1, 1, 'f', 'Bajragin', 'Puspita', '2019-12-14 00:16:38', 'Bajragin@yahoo.co.id', 'Jl.Yosodipuro, Psr. Uluwatu No. 374, Sorong 67082, SulBar', '+7362125473357', '(+62) 723 1344 9432', '1', 1, '157.187.153.47', '768945.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(56, 1, 1, 'm', 'Adinata', 'Damanik', '2019-12-14 00:16:38', 'Adinata@gmail.com', 'Jl.Cut Nyak Dien, Ki. Cokroaminoto No. 793, Bau-Bau 51129, SumUt', '+1894927628398', '(+62) 875 1557 077', '1', 1, '191.65.213.164', '562022.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(57, 1, 1, 'f', 'Harimurti', 'Laksmiwati', '2019-12-14 00:16:38', 'Harimurti@gmail.co.id', 'Jl.Basket, Kpg. Setiabudhi No. 371, Pekalongan 59945, BaBel', '+9609861570166', '0436 7180 4428', '1', 1, '229.159.65.110', '310019.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(58, 1, 1, 'f', 'Yuliana', 'Winarno', '2019-12-14 00:16:38', 'Yuliana@yahoo.co.id', 'Jl.Peta, Ki. Bara No. 873, Administrasi Jakarta Barat 81889, NTB', '+8079652170490', '0869 3357 3882', '1', 1, '171.59.49.217', '726886.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(59, 1, 1, 'm', 'Yuliana', 'Yuniar', '2019-12-14 00:16:38', 'Yuliana@yahoo.com', 'Jl.Basuki, Gg. Veteran No. 625, Tangerang Selatan 58006, KalSel', '+9724817946999', '(+62) 299 2291 4686', '1', 1, '17.164.24.251', '631234.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(60, 1, 1, 'm', 'Saadat', 'Prasetya', '2019-12-14 00:16:38', 'Saadat@yahoo.co.id', 'Jl.Baik, Jln. Camar No. 948, Administrasi Jakarta Barat 37347, KepR', '+5356853616436', '(+62) 585 7354 328', '1', 1, '129.90.27.216', '598979.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(61, 1, 1, 'm', 'Shania', 'Gunawan', '2019-12-14 00:16:38', 'Shania@yahoo.com', 'Jl.Sutan Syahrir, Jr. Dr. Junjunan No. 373, Banda Aceh 57239, Banten', '+6690107544748', '(+62) 218 0488 5235', '1', 1, '5.5.253.165', '553034.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(62, 1, 1, 'f', 'Puti', 'Wijaya', '2019-12-14 00:16:38', 'Puti@yahoo.co.id', 'Jl.Batako, Ds. Baladewa No. 792, Dumai 18407, KalTeng', '+9199250070310', '0302 1947 810', '1', 1, '208.132.197.115', '306047.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(63, 1, 1, 'f', 'Cagak', 'Budiman', '2019-12-14 00:16:38', 'Cagak@yahoo.co.id', 'Jl.Arifin, Ki. Labu No. 42, Mojokerto 73362, SulSel', '+2164942283721', '0229 6051 8336', '1', 1, '59.100.125.150', '353778.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(64, 1, 1, 'f', 'Cawuk', 'Kusumo', '2019-12-14 00:16:38', 'Cawuk@gmail.co.id', 'Jl.Yos, Ds. Sugiyopranoto No. 284, Banjarbaru 57696, KalTeng', '+1146030588975', '0444 6350 703', '1', 1, '93.92.128.148', '769257.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(65, 1, 1, 'f', 'Jais', 'Siregar', '2019-12-14 00:16:38', 'Jais@yahoo.co.id', 'Jl.Bata Putih, Psr. Gardujati No. 607, Serang 48507, Bali', '+3125898685033', '0802 226 423', '1', 1, '97.173.245.135', '116224.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(66, 1, 1, 'm', 'Wadi', 'Ardianto', '2019-12-14 00:16:38', 'Wadi@gmail.co.id', 'Jl.Baya Kali Bungur, Kpg. Salatiga No. 576, Depok 16611, MalUt', '+8504045618060', '0893 8057 172', '1', 1, '168.129.144.143', '239180.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(67, 1, 1, 'f', 'Tasnim', 'Manullang', '2019-12-14 00:16:38', 'Tasnim@yahoo.co.id', 'Jl.Baha, Psr. Sunaryo No. 975, Kotamobagu 31241, Maluku', '+7058390548132', '(+62) 665 8704 179', '1', 1, '121.117.238.34', '212323.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(68, 1, 1, 'f', 'Widya', 'Winarsih', '2019-12-14 00:16:38', 'Widya@gmail.co.id', 'Jl.Kalimantan, Ki. Sampangan No. 499, Sawahlunto 47910, NTT', '+3426831259985', '0851 770 021', '1', 1, '93.62.211.31', '797016.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(69, 1, 1, 'm', 'Raden', 'Purwanti', '2019-12-14 00:16:38', 'Raden@yahoo.com', 'Jl.Ters. Pasir Koja, Ki. Kebonjati No. 264, Administrasi Jakarta Barat 51408, KalSel', '+9898846355771', '(+62) 527 4067 962', '1', 1, '38.33.43.12', '166774.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(70, 1, 1, 'f', 'Citra', 'Hartati', '2019-12-14 00:16:38', 'Citra@yahoo.co.id', 'Jl.Bayan, Dk. Achmad No. 258, Bima 39467, SumBar', '+4553303199826', '0796 6321 811', '1', 1, '15.156.243.144', '886415.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(71, 1, 1, 'm', 'Irma', 'Wahyuni', '2019-12-14 00:16:38', 'Irma@gmail.com', 'Jl.Babah, Kpg. Gajah Mada No. 433, Administrasi Jakarta Utara 76837, MalUt', '+6806410365400', '0694 0387 6713', '1', 1, '142.29.86.139', '665845.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(72, 1, 1, 'f', 'Mumpuni', 'Wastuti', '2019-12-14 00:16:38', 'Mumpuni@gmail.com', 'Jl.PHH. Mustofa, Ki. Pelajar Pejuang 45 No. 178, Palangka Raya 80751, SumSel', '+9863000070649', '(+62) 755 3005 7051', '1', 1, '145.65.33.51', '770217.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(73, 1, 1, 'm', 'Among', 'Agustina', '2019-12-14 00:16:38', 'Among@yahoo.com', 'Jl.Sunaryo, Jln. Sutami No. 461, Tasikmalaya 56168, Riau', '+9715406724990', '(+62) 593 5833 149', '1', 1, '187.29.202.190', '382273.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(74, 1, 1, 'f', 'Vera', 'Nashiruddin', '2019-12-14 00:16:38', 'Vera@yahoo.co.id', 'Jl.Uluwatu, Dk. Baan No. 761, Batu 54403, Bengkulu', '+3650367971849', '0912 5380 8155', '1', 1, '119.168.28.221', '432560.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(75, 1, 1, 'm', 'Aslijan', 'Damanik', '2019-12-14 00:16:38', 'Aslijan@gmail.com', 'Jl.Bah Jaya, Psr. Jend. A. Yani No. 419, Depok 57041, SumSel', '+4910001307594', '0722 2447 7227', '1', 1, '103.209.172.180', '255694.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(76, 1, 1, 'f', 'Hamima', 'Laksita', '2019-12-14 00:16:38', 'Hamima@yahoo.com', 'Jl.Ahmad Dahlan, Ki. Ujung No. 815, Samarinda 75622, JaTim', '+4729311787676', '(+62) 855 574 386', '1', 1, '219.39.82.164', '646781.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(77, 1, 1, 'm', 'Shakila', 'Puspasari', '2019-12-14 00:16:38', 'Shakila@gmail.com', 'Jl.Rumah Sakit, Dk. Kyai Gede No. 644, Jayapura 35481, Riau', '+9643111413072', '0719 4818 029', '1', 1, '44.122.80.25', '169271.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(78, 1, 1, 'm', 'Queen', 'Laksmiwati', '2019-12-14 00:16:38', 'Queen@yahoo.co.id', 'Jl.Kalimantan, Gg. Ters. Kiaracondong No. 739, Pasuruan 27405, Aceh', '+8085222283992', '0636 5234 370', '1', 1, '75.235.144.24', '303876.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(79, 1, 1, 'm', 'Aurora', 'Suartini', '2019-12-14 00:16:38', 'Aurora@yahoo.co.id', 'Jl.Ters. Buah Batu, Jln. Arifin No. 280, Gorontalo 19456, NTB', '+7956187913929', '0552 0567 991', '1', 1, '122.69.31.124', '242772.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(80, 1, 1, 'f', 'Dalima', 'Rahmawati', '2019-12-14 00:16:38', 'Dalima@gmail.com', 'Jl.Reksoninten, Kpg. Soekarno Hatta No. 617, Pekalongan 46341, Riau', '+3708765078921', '(+62) 25 0588 8766', '1', 1, '175.103.23.71', '621526.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(81, 1, 1, 'f', 'Martana', 'Haryanti', '2019-12-14 00:16:38', 'Martana@yahoo.co.id', 'Jl.Salak, Ds. Radio No. 9, Blitar 60207, KalUt', '+8091674821305', '(+62) 513 9049 448', '1', 1, '170.22.66.188', '464391.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(82, 1, 1, 'f', 'Bancar', 'Natsir', '2019-12-14 00:16:38', 'Bancar@yahoo.co.id', 'Jl.Kebangkitan Nasional, Kpg. Bambon No. 172, Tarakan 31180, JaTim', '+1683040826447', '0945 4069 7547', '1', 1, '44.247.28.182', '794159.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(83, 1, 1, 'f', 'Fitria', 'Wasita', '2019-12-14 00:16:38', 'Fitria@gmail.com', 'Jl.Nangka, Ds. Baung No. 712, Tidore Kepulauan 34280, KepR', '+9701101020495', '024 7483 961', '1', 1, '41.233.46.37', '713936.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(84, 1, 1, 'f', 'Lintang', 'Haryanto', '2019-12-14 00:16:38', 'Lintang@yahoo.co.id', 'Jl.Astana Anyar, Ki. Ujung No. 302, Mataram 82211, DIY', '+1190523882754', '(+62) 353 6650 2601', '1', 1, '10.156.189.165', '803269.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(85, 1, 1, 'f', 'Raina', 'Winarno', '2019-12-14 00:16:38', 'Raina@gmail.co.id', 'Jl.Bappenas, Kpg. Yohanes No. 298, Pagar Alam 99228, SumUt', '+8623109565607', '023 2228 9070', '1', 1, '3.246.8.155', '866949.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(86, 1, 1, 'm', 'Raisa', 'Oktaviani', '2019-12-14 00:16:38', 'Raisa@gmail.co.id', 'Jl.Gedebage Selatan, Jr. Uluwatu No. 136, Yogyakarta 27010, SulTra', '+7614926784407', '(+62) 733 0637 3533', '1', 1, '239.110.190.98', '112729.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(87, 1, 1, 'm', 'Zaenab', 'Pradipta', '2019-12-14 00:16:38', 'Zaenab@yahoo.co.id', 'Jl.Abdullah, Kpg. Kalimantan No. 315, Tasikmalaya 27525, KalBar', '+8769231167851', '0544 7427 409', '1', 1, '42.215.41.165', '545513.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(88, 1, 1, 'f', 'Nyana', 'Tarihoran', '2019-12-14 00:16:38', 'Nyana@yahoo.co.id', 'Jl.Bagis Utama, Jln. Gremet No. 93, Tual 69852, JaTim', '+3224508910372', '0953 7103 0646', '1', 1, '72.126.7.134', '335303.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(89, 1, 1, 'f', 'Darijan', 'Suwarno', '2019-12-14 00:16:38', 'Darijan@yahoo.co.id', 'Jl.Raya Ujungberung, Kpg. Barat No. 19, Serang 68542, KepR', '+1986407011213', '(+62) 807 3060 5146', '1', 1, '155.235.19.148', '414793.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(90, 1, 1, 'f', 'Jamal', 'Budiyanto', '2019-12-14 00:16:38', 'Jamal@yahoo.com', 'Jl.Sampangan, Psr. Katamso No. 47, Pariaman 68929, SulUt', '+4661055029242', '0432 2455 906', '1', 1, '227.178.134.79', '584989.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(91, 1, 1, 'f', 'Elvin', 'Wahyuni', '2019-12-14 00:16:38', 'Elvin@yahoo.com', 'Jl.Siliwangi, Ki. Nangka No. 177, Bengkulu 77922, JaBar', '+1198166947632', '0818 5012 891', '1', 1, '41.23.160.137', '445902.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(92, 1, 1, 'm', 'Rendy', 'Simanjuntak', '2019-12-14 00:16:38', 'Rendy@yahoo.co.id', 'Jl.Setia Budi, Gg. Sam Ratulangi No. 232, Sukabumi 89221, Riau', '+3444475377832', '026 5568 334', '1', 1, '141.76.124.205', '894064.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(93, 1, 1, 'm', 'Tiara', 'Mustofa', '2019-12-14 00:16:38', 'Tiara@gmail.com', 'Jl.Bappenas, Ds. Kartini No. 381, Cirebon 93271, Maluku', '+7162581692837', '029 2627 1800', '1', 1, '182.39.59.103', '374282.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(94, 1, 1, 'f', 'Gamani', 'Palastri', '2019-12-14 00:16:38', 'Gamani@gmail.co.id', 'Jl.Suprapto, Ki. Bak Mandi No. 766, Dumai 85176, Aceh', '+2867935474664', '021 7894 578', '1', 1, '138.141.102.120', '322278.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(95, 1, 1, 'f', 'Najib', 'Pratiwi', '2019-12-14 00:16:38', 'Najib@yahoo.com', 'Jl.Mahakam, Dk. Flora No. 380, Tegal 26276, MalUt', '+3954784317032', '0373 7487 1478', '1', 1, '14.144.29.168', '423378.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(96, 1, 1, 'f', 'Gantar', 'Suryono', '2019-12-14 00:16:38', 'Gantar@gmail.co.id', 'Jl.Bahagia , Jln. Adisucipto No. 536, Metro 79134, MalUt', '+4135611432235', '0598 9992 4781', '1', 1, '68.119.146.39', '458057.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(97, 1, 1, 'f', 'Eli', 'Mayasari', '2019-12-14 00:16:38', 'Eli@yahoo.com', 'Jl.Bara, Jln. Moch. Toha No. 77, Serang 24966, JaTim', '+6824498979202', '(+62) 909 0280 606', '1', 1, '4.146.182.74', '601981.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(98, 1, 1, 'f', 'Tira', 'Megantara', '2019-12-14 00:16:38', 'Tira@yahoo.com', 'Jl.Veteran, Dk. Samanhudi No. 638, Batu 76759, KalTeng', '+9403966624170', '(+62) 819 4884 2354', '1', 1, '101.44.180.87', '353955.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(99, 1, 1, 'm', 'Lili', 'Mahendra', '2019-12-14 00:16:38', 'Lili@gmail.co.id', 'Jl.Pelajar Pejuang 45, Ds. Raden Saleh No. 685, Magelang 66293, JaTeng', '+1716591455764', '(+62) 948 5416 7032', '1', 1, '248.1.205.28', '618381.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38'),
(100, 1, 1, 'm', 'Dewi', 'Padmasari', '2019-12-14 00:16:38', 'Dewi@yahoo.com', 'Jl.Pacuan Kuda, Dk. Astana Anyar No. 313, Samarinda 72499, KepR', '+8136038119508', '(+62) 704 5800 061', '1', 1, '250.17.252.165', '518796.0000', '2019-12-14 00:16:38', 1, '2019-12-14 00:16:38', '2019-12-14 00:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` int(8) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(8) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `username`, `ip`, `created_at`) VALUES
(1, 'wisnu', '127.0.0.1', '2019-12-14 03:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20191214001350);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) UNSIGNED NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `customers_id` int(100) UNSIGNED NOT NULL,
  `delivery_name` varchar(100) NOT NULL,
  `delivery_company` varchar(100) NOT NULL,
  `delivery_street_address` text,
  `delivery_city` varchar(100) NOT NULL,
  `delivery_postcode` varchar(100) NOT NULL,
  `delivery_state` varchar(100) NOT NULL,
  `delivery_phone` varchar(100) NOT NULL,
  `billing_name` varchar(100) NOT NULL,
  `billing_company` varchar(100) NOT NULL,
  `billing_street_address` text,
  `payment_method` text,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `customers_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_phone`, `billing_name`, `billing_company`, `billing_street_address`, `payment_method`, `latitude`, `longitude`) VALUES
(1, 'INV-72281320191214', 79, 'Waluyo Mandala S.Kom', 'PT Riyanti Yuliarti', 'Gg. Banal No. 400, Padang 93529, Papua', 'Surakarta', '58167', 'Jawa Tengah', '+8945897399266', 'Lukita Mandala', 'PT Yulianti', 'Ki. Dr. Junjunan No. 147, Administrasi Jakarta Selatan 74033, SulTeng', 'cash', '29.062863', '52.983965'),
(2, 'INV-59062720191214', 56, 'Kajen Pangestu', 'CV Yuniar Tbk', 'Psr. Cikutra Barat No. 350, Palembang 15159, KalTim', 'Tegal', '58177', 'Sulawesi Barat', '+4300872634158', 'Citra Pratiwi', 'PT Halimah Tbk', 'Ki. Otista No. 43, Ambon 26182, SumBar', 'cash', '73.384061', '59.510315'),
(3, 'INV-22279920191214', 62, 'Pardi Thamrin', 'CV Agustina Nashiruddin Tbk', 'Kpg. Moch. Yamin No. 253, Gunungsitoli 44476, JaBar', 'Pagar Alam', '41702', 'Sumatera Selatan', '+1926416399418', 'Teguh Karma Nainggolan', 'PT Maryati Safitri', 'Ds. Ters. Jakarta No. 167, Administrasi Jakarta Timur 57508, Gorontalo', 'credit', '97.145625', '37.947284'),
(4, 'INV-80050820191214', 81, 'Elma Yani Lestari', 'Perum Aryani Tbk', 'Psr. Babah No. 73, Ambon 19814, SulBar', 'Gorontalo', '28280', 'Kalimantan Barat', '+9986413700966', 'Argono Wacana', 'PT Prasasta Irawan', 'Jr. Barasak No. 38, Bekasi 73279, Papua', 'cash', '-1.910837', '36.407549'),
(5, 'INV-36030020191214', 81, 'Pranata Gunawan', 'UD Nasyiah Mayasari Tbk', 'Dk. Flora No. 852, Mataram 58001, DIY', 'Kotamobagu', '83331', 'Sulawesi Tenggara', '+9788906806327', 'Salimah Nasyidah', 'Perum Tamba Wastuti Tbk', 'Ki. Abdul No. 860, Jambi 14266, Bali', 'credit', '61.918365', '17.167994'),
(6, 'INV-60369720191214', 84, 'Garang Situmorang', 'Perum Simanjuntak Simanjuntak (Persero) Tbk', 'Psr. Achmad No. 641, Jayapura 98392, KalBar', 'Sibolga', '97097', 'Bengkulu', '+5952137738217', 'Jasmin Prastuti', 'UD Rahmawati Rahmawati', 'Jr. Zamrud No. 193, Ambon 10244, SulUt', 'credit', '48.44037', '88.164158'),
(7, 'INV-33506120191214', 66, 'Asirwada Marbun', 'Perum Suryono Mandasari', 'Ds. Bah Jaya No. 323, Pasuruan 57033, KalTim', 'Magelang', '30667', 'Gorontalo', '+9749266239392', 'Adikara Saefullah S.Farm', 'PT Farida Tbk', 'Ki. Panjaitan No. 565, Sibolga 88184, BaBel', 'cash', '28.095377', '100.357781'),
(8, 'INV-14785920191214', 42, 'Abyasa Bakiadi Sitompul S.H.', 'CV Susanti Tbk', 'Ki. Cemara No. 676, Administrasi Jakarta Timur 76073, NTT', 'Bengkulu', '10283', 'Jambi', '+4880922411106', 'Gadang Danang Wibisono S.Psi', 'CV Suryatmi Natsir Tbk', 'Jln. Orang No. 11, Jayapura 86769, Maluku', 'credit', '21.643142', '77.114676'),
(9, 'INV-74329420191214', 83, 'Prayogo Mansur S.H.', 'PT Mandala Tampubolon Tbk', 'Gg. Surapati No. 156, Tual 83877, DIY', 'Malang', '95113', 'Sumatera Selatan', '+7838456077315', 'Anastasia Dewi Purnawati', 'PT Rahmawati (Persero) Tbk', 'Jr. Flores No. 456, Tangerang Selatan 62433, Gorontalo', 'credit', '22.489152', '50.360772'),
(10, 'INV-40927520191214', 39, 'Purwanto Nainggolan', 'PT Habibi Yuliarti', 'Jln. Moch. Toha No. 505, Gorontalo 89956, JaBar', 'Prabumulih', '57868', 'Jawa Tengah', '+3259592467176', 'Elvin Wijaya', 'CV Laksita', 'Dk. Madrasah No. 630, Batam 45420, KalBar', 'credit', '52.764604', '91.10287'),
(11, 'INV-2135820191214', 59, 'Kani Mulyani M.TI.', 'CV Puspasari', 'Gg. Yos Sudarso No. 511, Langsa 20785, SumSel', 'Malang', '72574', 'Banten', '+2977983480581', 'Diah Indah Padmasari', 'CV Pratiwi Budiyanto', 'Ds. Abdul Muis No. 970, Palembang 11282, KepR', 'credit', '52.157696', '74.940755'),
(12, 'INV-42420220191214', 92, 'Jati Prasetya', 'Perum Wahyuni Tbk', 'Kpg. Achmad Yani No. 481, Solok 86274, JaBar', 'Bau-Bau', '95885', 'Sulawesi Tengah', '+3605439431183', 'Ina Pertiwi', 'PT Riyanti (Persero) Tbk', 'Jr. Jamika No. 809, Langsa 42372, JaBar', 'credit', '67.293694', '93.926827'),
(13, 'INV-30904520191214', 31, 'Usyi Rahayu', 'PT Saefullah', 'Psr. Jayawijaya No. 534, Metro 29217, JaTim', 'Balikpapan', '76260', 'Kalimantan Barat', '+2377997749279', 'Baktiadi Suryono', 'PD Usamah (Persero) Tbk', 'Jr. Ronggowarsito No. 62, Binjai 46121, Maluku', 'cash', '86.233348', '38.237159'),
(14, 'INV-53926320191214', 75, 'Satya Sitorus', 'Perum Dabukke Rahmawati Tbk', 'Jr. Kali No. 780, Pekalongan 24630, Bali', 'Salatiga', '66375', 'Sumatera Utara', '+9431670707082', 'Martaka Pratama M.Pd', 'CV Rahayu', 'Psr. Sumpah Pemuda No. 318, Sawahlunto 34921, SulTeng', 'credit', '13.971246', '87.168797'),
(15, 'INV-87005220191214', 61, 'Farhunnisa Yolanda S.Sos', 'UD Dongoran Yuniar (Persero) Tbk', 'Jr. Acordion No. 233, Pagar Alam 74328, KalTeng', 'Balikpapan', '12648', 'Sulawesi Tengah', '+6810404843355', 'Wadi Damu Budiman', 'PT Hutagalung (Persero) Tbk', 'Dk. Raya Setiabudhi No. 725, Surabaya 20458, Maluku', 'cash', '96.483843', '48.031479'),
(16, 'INV-26858020191214', 11, 'Gasti Paramita Nasyidah', 'PT Yuliarti Nuraini Tbk', 'Ki. Yap Tjwan Bing No. 12, Bandung 79745, SulSel', 'Tidore Kepulauan', '25503', 'Nusa Tenggara Barat', '+9178737603401', 'Zahra Winarsih', 'CV Suryatmi Putra Tbk', 'Dk. Labu No. 893, Mojokerto 40778, KalSel', 'cash', '87.713922', '14.782526'),
(17, 'INV-21220920191214', 41, 'Rachel Kamila Hartati M.Farm', 'PD Maulana Hidayat', 'Dk. Nanas No. 567, Banjar 71182, Aceh', 'Sawahlunto', '78868', 'Kepulauan Riau', '+2371166879130', 'Belinda Kuswandari', 'CV Napitupulu', 'Ds. Otto No. 438, Lhokseumawe 64964, BaBel', 'cash', '101.098663', '0.551219'),
(18, 'INV-32336520191214', 45, 'Ulya Widiastuti M.Farm', 'Perum Mulyani', 'Jr. Banal No. 611, Surabaya 86808, MalUt', 'Metro', '22115', 'Jawa Barat', '+7256482592098', 'Hani Riyanti S.Sos', 'UD Permadi Tbk', 'Ds. Dr. Junjunan No. 372, Pematangsiantar 67732, SumSel', 'credit', '22.230038', '-5.676068'),
(19, 'INV-8850520191214', 77, 'Irsad Estiono Mansur M.Kom.', 'PD Pertiwi', 'Dk. Sentot Alibasa No. 646, Gorontalo 49481, KalBar', 'Banjarmasin', '56170', 'Sumatera Selatan', '+5771074825995', 'Darsirah Anggabaya Wijaya', 'PD Sudiati Tbk', 'Jln. Radio No. 384, Mojokerto 71811, DIY', 'credit', '63.415373', '54.250951'),
(20, 'INV-64267820191214', 57, 'Emas Surya Latupono S.T.', 'CV Wahyuni', 'Kpg. B.Agam Dlm No. 929, Batu 15611, DKI', 'Pekalongan', '92752', 'Jambi', '+8851383527594', 'Slamet Firgantoro', 'PT Zulkarnain Hassanah', 'Gg. Ketandan No. 863, Probolinggo 75204, KalTim', 'cash', '58.165683', '87.39546'),
(21, 'INV-51524720191214', 79, 'Gamblang Prasasta', 'CV Suryono Susanti (Persero) Tbk', 'Dk. Kusmanto No. 920, Banda Aceh 63535, SulSel', 'Tanjungbalai', '44348', 'Sulawesi Barat', '+4550803381538', 'Titi Andriani M.Farm', 'Perum Nugroho Wijaya', 'Ki. Moch. Yamin No. 708, Gorontalo 94322, JaTim', 'credit', '28.053213', '36.471856'),
(22, 'INV-89885520191214', 3, 'Belinda Salwa Yolanda S.Pt', 'Perum Laksita Tbk', 'Jln. Rajawali Barat No. 111, Serang 26922, SulUt', 'Pekanbaru', '56305', 'Riau', '+5400128669805', 'Umar Wardaya Suryono M.Kom.', 'PD Siregar', 'Ki. Cihampelas No. 733, Mojokerto 68757, MalUt', 'credit', '91.293363', '101.439629'),
(23, 'INV-52306520191214', 31, 'Legawa Gara Pradipta M.Kom.', 'PD Fujiati (Persero) Tbk', 'Kpg. Kyai Mojo No. 515, Jayapura 70444, Lampung', 'Mojokerto', '50961', 'Banten', '+5764404217858', 'Tasnim Samosir', 'UD Novitasari Rajata', 'Dk. Honggowongso No. 984, Surabaya 45190, Jambi', 'cash', '75.8853', '71.079389'),
(24, 'INV-81613120191214', 14, 'Gadang Hidayat S.Pt', 'PD Kuswoyo (Persero) Tbk', 'Jr. Gegerkalong Hilir No. 712, Bontang 26374, Banten', 'Batu', '61508', 'Nusa Tenggara Barat', '+5764420625280', 'Almira Faizah Puspasari S.Pd', 'UD Lailasari Lestari', 'Jln. Sumpah Pemuda No. 932, Pematangsiantar 46198, Bali', 'cash', '-5.225382', '29.290902'),
(25, 'INV-65714820191214', 45, 'Rendy Laksana Prasetya', 'UD Usamah Tbk', 'Ds. Otto No. 22, Jambi 34514, KalTim', 'Yogyakarta', '41655', 'Kepulauan Riau', '+5780009978752', 'Gina Suartini', 'PD Narpati Hakim Tbk', 'Psr. Kalimalang No. 47, Lhokseumawe 11750, NTT', 'credit', '27.245542', '59.002038'),
(26, 'INV-41426320191214', 54, 'Unggul Kamidin Uwais', 'CV Safitri Widodo Tbk', 'Psr. Banal No. 157, Sibolga 73445, Lampung', 'Tanjung Pinang', '81243', 'Riau', '+4230138350211', 'Ibrahim Anggriawan', 'CV Purnawati (Persero) Tbk', 'Dk. Antapani Lama No. 367, Bengkulu 73990, JaBar', 'cash', '10.04236', '74.959399'),
(27, 'INV-53311320191214', 20, 'Malika Widiastuti', 'PT Januar Rahmawati', 'Ki. Kusmanto No. 910, Pematangsiantar 21166, SumUt', 'Bandar Lampung', '93209', 'Banten', '+9403612656944', 'Gabriella Laksita', 'UD Padmasari Halimah Tbk', 'Gg. Jayawijaya No. 200, Surabaya 27029, Riau', 'credit', '67.405765', '61.451136'),
(28, 'INV-21452920191214', 19, 'Gamblang Haryanto S.Pd', 'PT Wibowo Budiyanto (Persero) Tbk', 'Gg. Eka No. 587, Madiun 60742, NTB', 'Banda Aceh', '22375', 'Riau', '+3371216436576', 'Umay Marpaung', 'UD Melani Purwanti (Persero) Tbk', 'Jr. Abdul. Muis No. 3, Sorong 97640, NTB', 'credit', '15.292896', '71.238147'),
(29, 'INV-18903720191214', 69, 'Salsabila Novitasari M.Pd', 'Perum Firmansyah Pratama', 'Kpg. Salak No. 653, Kendari 40132, Aceh', 'Padang', '38875', 'Nusa Tenggara Timur', '+1588146116157', 'Maya Eka Melani S.Kom', 'PD Widodo Tbk', 'Psr. Taman No. 805, Depok 31515, Banten', 'credit', '11.318213', '57.215919'),
(30, 'INV-30394820191214', 37, 'Lintang Intan Yolanda', 'Perum Sudiati (Persero) Tbk', 'Ki. Lumban Tobing No. 262, Pangkal Pinang 52681, KalTim', 'Sungai Penuh', '11357', 'Sumatera Selatan', '+2269648838181', 'Cemani Wibisono', 'Perum Simbolon Yuliarti (Persero) Tbk', 'Dk. Tentara Pelajar No. 770, Dumai 10663, JaTim', 'cash', '83.450666', '80.943069'),
(31, 'INV-12806520191214', 88, 'Bahuraksa Manullang', 'Perum Pradipta', 'Jr. Soekarno Hatta No. 216, Palopo 18507, Maluku', 'Serang', '96852', 'Jawa Tengah', '+7354280292554', 'Samiah Suartini', 'CV Thamrin Tbk', 'Kpg. Gegerkalong Hilir No. 481, Kediri 91559, SumBar', 'cash', '106.438456', '28.368204'),
(32, 'INV-77028020191214', 71, 'Halima Palastri', 'CV Santoso', 'Kpg. Untung Suropati No. 432, Pasuruan 35988, SumSel', 'Jayapura', '66138', 'Kalimantan Timur', '+1597217519387', 'Maria Widiastuti S.Gz', 'Perum Astuti Rajata', 'Kpg. Wahid Hasyim No. 612, Sibolga 44109, Riau', 'cash', '74.944027', '51.243519'),
(33, 'INV-41425120191214', 99, 'Farah Padmasari', 'CV Saputra Tbk', 'Dk. Ki Hajar Dewantara No. 879, Tasikmalaya 54349, Banten', 'Palembang', '83730', 'Maluku', '+2003634912817', 'Patricia Hasna Puspita', 'CV Simbolon Safitri (Persero) Tbk', 'Kpg. Supono No. 956, Pematangsiantar 81719, PapBar', 'cash', '-3.037061', '67.568838'),
(34, 'INV-78944320191214', 18, 'Dimaz Rajasa', 'CV Mandala Tbk', 'Kpg. Abang No. 910, Yogyakarta 32012, Maluku', 'Bukittinggi', '69792', 'DKI Jakarta', '+7018006532270', 'Warsita Sihombing', 'Perum Uyainah', 'Dk. Pattimura No. 562, Jayapura 58624, Gorontalo', 'credit', '83.271773', '25.799864'),
(35, 'INV-44138120191214', 59, 'Niyaga Enteng Halim', 'CV Novitasari Haryanti Tbk', 'Ki. Sukabumi No. 829, Tanjungbalai 78978, PapBar', 'Sabang', '72116', 'Kalimantan Selatan', '+4598649650620', 'Lili Permata', 'PD Haryanti Waluyo', 'Kpg. B.Agam Dlm No. 235, Palembang 59004, Maluku', 'credit', '52.676091', '34.211422'),
(36, 'INV-62419920191214', 52, 'Umi Endah Maryati', 'UD Prasetya Saputra (Persero) Tbk', 'Jln. Achmad Yani No. 413, Pekalongan 22395, KalTeng', 'Pontianak', '33687', 'Lampung', '+4194002154957', 'Asirwanda Tedi Kuswoyo', 'UD Anggraini Yuniar (Persero) Tbk', 'Jln. Kiaracondong No. 969, Manado 33888, PapBar', 'cash', '64.100602', '69.970248'),
(37, 'INV-83582320191214', 60, 'Cici Prastuti M.Ak', 'UD Kuswandari', 'Jr. Ters. Buah Batu No. 297, Yogyakarta 41360, Bali', 'Magelang', '40118', 'Jawa Barat', '+4927913788847', 'Kanda Wibowo', 'UD Lailasari Tbk', 'Dk. Cikutra Barat No. 603, Administrasi Jakarta Pusat 81265, NTB', 'cash', '-3.690561', '8.604631'),
(38, 'INV-45733920191214', 50, 'Cecep Cahyono Latupono S.Sos', 'CV Prayoga Nurdiyanti', 'Ki. Ciumbuleuit No. 872, Depok 41973, KalUt', 'Palangka Raya', '31487', 'Papua', '+4403960347597', 'Najwa Irma Nasyiah', 'CV Najmudin Maulana', 'Kpg. Setiabudhi No. 249, Ternate 78846, Bali', 'cash', '88.818795', '0.984453'),
(39, 'INV-76176620191214', 78, 'Mitra Damanik', 'CV Hidayanto Saragih (Persero) Tbk', 'Dk. Raden No. 945, Semarang 38950, KalUt', 'Batam', '16669', 'Papua Barat', '+8825825277189', 'Hamima Laksita', 'CV Wahyuni Hasanah', 'Ds. Ters. Buah Batu No. 508, Binjai 88922, Bengkulu', 'credit', '6.035322', '33.676508'),
(40, 'INV-37130420191214', 2, 'Wulan Yolanda', 'PT Pudjiastuti (Persero) Tbk', 'Psr. Cikutra Barat No. 378, Blitar 77069, DKI', 'Tanjungbalai', '63237', 'Sumatera Utara', '+7582384036460', 'Asirwanda Gaduh Hidayat', 'UD Hasanah Yuliarti Tbk', 'Psr. Untung Suropati No. 998, Malang 38189, Riau', 'cash', '0.712648', '63.307015'),
(41, 'INV-40073320191214', 44, 'Akarsana Marsito Mustofa S.IP', 'Perum Mulyani Hariyah (Persero) Tbk', 'Psr. Yohanes No. 853, Dumai 89985, SulSel', 'Probolinggo', '87852', 'Maluku', '+6397178253189', 'Bakti Sihotang', 'UD Sirait Purnawati', 'Ki. Sunaryo No. 467, Cimahi 72954, JaTim', 'credit', '4.818447', '15.961921'),
(42, 'INV-11251420191214', 47, 'Febi Laksita S.Pt', 'PD Sudiati', 'Jln. Adisucipto No. 293, Serang 92306, SumUt', 'Prabumulih', '50193', 'Jawa Timur', '+4786159971658', 'Kurnia Napitupulu', 'PT Prasasta Puspasari Tbk', 'Jln. Moch. Yamin No. 990, Tual 13274, Gorontalo', 'cash', '39.095818', '58.575421'),
(43, 'INV-37197320191214', 31, 'Qori Oliva Utami', 'Perum Safitri', 'Kpg. Perintis Kemerdekaan No. 664, Bogor 24455, PapBar', 'Palu', '77543', 'Nusa Tenggara Barat', '+1998555565203', 'Xanana Estiawan Budiman', 'CV Narpati Tbk', 'Jln. Raya Setiabudhi No. 162, Bandar Lampung 15669, NTT', 'credit', '61.762107', '34.159365'),
(44, 'INV-77054220191214', 83, 'Rina Kartika Fujiati', 'Perum Yuliarti (Persero) Tbk', 'Gg. Raya Setiabudhi No. 972, Padang 75063, Bengkulu', 'Kupang', '97531', 'Sumatera Utara', '+9983290313144', 'Cecep Situmorang', 'PT Aryani', 'Gg. M.T. Haryono No. 43, Semarang 15016, SumUt', 'cash', '13.464013', '46.317428'),
(45, 'INV-22823720191214', 20, 'Gawati Cornelia Hariyah', 'CV Widodo Pertiwi (Persero) Tbk', 'Dk. Babadan No. 793, Surabaya 85253, PapBar', 'Palangka Raya', '24127', 'Lampung', '+8340779252820', 'Queen Nasyidah', 'UD Pranowo', 'Dk. Basuki No. 432, Probolinggo 74607, BaBel', 'cash', '54.591803', '104.310821'),
(46, 'INV-80640220191214', 34, 'Danu Setiawan', 'PD Safitri Tbk', 'Jr. Padang No. 703, Palangka Raya 78787, Maluku', 'Bukittinggi', '84684', 'Jawa Timur', '+4216193905418', 'Daruna Wacana S.Pt', 'UD Marbun', 'Gg. Ujung No. 736, Singkawang 12432, Maluku', 'credit', '91.750728', '77.121288'),
(47, 'INV-14796720191214', 40, 'Gandi Saragih', 'UD Anggraini Tbk', 'Gg. Yohanes No. 884, Balikpapan 15509, Banten', 'Banjar', '72640', 'Sulawesi Tenggara', '+6728971450793', 'Baktiono Pangestu', 'PT Latupono Sirait', 'Jr. Cokroaminoto No. 787, Binjai 84413, Aceh', 'credit', '10.373578', '77.023187'),
(48, 'INV-42038820191214', 96, 'Vicky Hasanah', 'CV Rahayu', 'Psr. Kiaracondong No. 614, Cimahi 38401, SumBar', 'Pekalongan', '16245', 'Banten', '+9171060595749', 'Purwadi Daru Rajasa', 'PT Prasasta (Persero) Tbk', 'Jln. Moch. Ramdan No. 668, Prabumulih 18710, Aceh', 'cash', '9.150467', '17.262028'),
(49, 'INV-84852820191214', 97, 'Rina Kusmawati', 'PD Prayoga', 'Jr. Yos Sudarso No. 885, Palangka Raya 46129, KalTim', 'Kediri', '93585', 'Bali', '+6097406219529', 'Lili Umi Purwanti', 'PT Riyanti Widiastuti (Persero) Tbk', 'Gg. Bagis Utama No. 384, Padang 42752, SulBar', 'cash', '9.843866', '97.31892'),
(50, 'INV-76980220191214', 92, 'Hamima Oliva Wijayanti', 'CV Kusumo Tbk', 'Jln. Pasirkoja No. 886, Palu 40840, SumUt', 'Tasikmalaya', '33792', 'Kalimantan Utara', '+7760753421531', 'Tasnim Prasetyo', 'PT Wahyuni (Persero) Tbk', 'Gg. Pasirkoja No. 8, Salatiga 69189, Banten', 'credit', '0.205885', '0.415979'),
(51, 'INV-49452920191214', 25, 'Kairav Sirait S.Psi', 'CV Hutapea Hutasoit', 'Gg. Jagakarsa No. 759, Batam 72911, Bengkulu', 'Semarang', '95292', 'Riau', '+1855613607815', 'Kalim Galuh Natsir S.Sos', 'UD Maryati Permata', 'Ki. Villa No. 538, Mojokerto 77644, Banten', 'cash', '79.140239', '47.276149'),
(52, 'INV-42194420191214', 40, 'Sakti Waluyo', 'PD Tarihoran Novitasari Tbk', 'Ki. Bagonwoto  No. 843, Mataram 32816, Bengkulu', 'Pematangsiantar', '97836', 'Kalimantan Utara', '+7137562561357', 'Umay Pangeran Prayoga', 'PD Fujiati (Persero) Tbk', 'Kpg. Moch. Yamin No. 790, Banjar 46501, SumUt', 'credit', '21.089768', '100.349211'),
(53, 'INV-10991620191214', 83, 'Candra Salahudin', 'UD Hakim', 'Dk. Suniaraja No. 285, Palopo 94756, Riau', 'Pangkal Pinang', '59603', 'Sulawesi Tengah', '+6547110188017', 'Adika Firmansyah', 'PD Kusmawati Iswahyudi (Persero) Tbk', 'Dk. Otto No. 570, Banda Aceh 47590, Aceh', 'credit', '-3.657456', '39.563789'),
(54, 'INV-67255820191214', 82, 'Naradi Setiawan', 'CV Pratiwi Thamrin Tbk', 'Psr. Tambun No. 731, Sukabumi 44444, SulBar', 'Kendari', '22263', 'Kalimantan Barat', '+7413169418698', 'Najwa Laksmiwati', 'PD Oktaviani', 'Jr. Ir. H. Juanda No. 346, Surabaya 88593, SumSel', 'credit', '87.600959', '13.009542'),
(55, 'INV-21415420191214', 67, 'Icha Utami', 'CV Rahimah (Persero) Tbk', 'Jln. Yohanes No. 467, Tanjungbalai 26223, KepR', 'Padangsidempuan', '67272', 'Kepulauan Riau', '+9466356443430', 'Almira Prastuti S.Psi', 'CV Tamba (Persero) Tbk', 'Ds. Bagis Utama No. 496, Kediri 15936, SulUt', 'credit', '54.340584', '4.362454'),
(56, 'INV-59906020191214', 30, 'Jamal Bagus Waluyo S.I.Kom', 'PT Lestari', 'Psr. Gegerkalong Hilir No. 767, Cimahi 11046, JaTim', 'Salatiga', '12676', 'Riau', '+4449092157878', 'Jaiman Pranowo', 'PT Suryatmi Mahendra', 'Gg. Gajah Mada No. 622, Gorontalo 99370, Papua', 'credit', '96.645191', '61.477885'),
(57, 'INV-4005920191214', 25, 'Vino Narpati', 'PD Sirait Uyainah', 'Psr. Umalas No. 208, Administrasi Jakarta Pusat 50470, SumSel', 'Lhokseumawe', '80557', 'Jawa Tengah', '+5000012665507', 'Umi Laksita', 'CV Kusumo (Persero) Tbk', 'Psr. Radio No. 458, Bekasi 46083, Lampung', 'cash', '50.083432', '19.843893'),
(58, 'INV-582820191214', 49, 'Alambana Sihombing S.Psi', 'PD Melani', 'Gg. Jagakarsa No. 422, Administrasi Jakarta Pusat 61993, Jambi', 'Cirebon', '55920', 'Maluku', '+5311381770225', 'Ibrahim Rajasa', 'PD Puspita Saputra', 'Gg. Tentara Pelajar No. 320, Depok 31893, SulUt', 'credit', '50.773785', '67.337006'),
(59, 'INV-10491720191214', 44, 'Agnes Hasanah S.Pd', 'UD Maryati Purnawati', 'Psr. Surapati No. 2, Payakumbuh 18601, MalUt', 'Gorontalo', '38290', 'Jawa Barat', '+5971829176581', 'Karya Situmorang', 'PT Siregar Tbk', 'Ki. Jakarta No. 711, Gorontalo 46506, SulTeng', 'cash', '79.410044', '17.980122'),
(60, 'INV-33859420191214', 23, 'Lasmanto Mangunsong', 'UD Astuti Tbk', 'Psr. Arifin No. 361, Lhokseumawe 88916, DKI', 'Lubuklinggau', '40232', 'Sulawesi Selatan', '+1823590249343', 'Ghaliyati Pratiwi', 'UD Palastri', 'Gg. Laksamana No. 672, Lubuklinggau 27165, BaBel', 'credit', '3.688416', '51.333898'),
(61, 'INV-27190320191214', 27, 'Kania Devi Rahmawati', 'Perum Yuliarti Widiastuti', 'Ds. Barat No. 908, Depok 16473, SulTeng', 'Administrasi Jakarta Utara', '31966', 'Jawa Tengah', '+5572404434304', 'Zelaya Permata', 'UD Budiman', 'Jr. Radio No. 134, Palangka Raya 84795, Bali', 'cash', '15.511197', '-3.460708'),
(62, 'INV-78941920191214', 45, 'Luhung Lanang Prabowo S.Sos', 'PT Palastri Tbk', 'Dk. Antapani Lama No. 468, Balikpapan 45559, SumUt', 'Metro', '74717', 'Sumatera Barat', '+7861281397418', 'Raisa Wulandari', 'UD Usada Kusumo', 'Kpg. Perintis Kemerdekaan No. 338, Dumai 77399, Bali', 'cash', '41.823304', '29.404603'),
(63, 'INV-37090620191214', 16, 'Carub Martani Prasetyo M.Ak', 'Perum Farida Tbk', 'Ki. Supono No. 151, Banda Aceh 59943, KepR', 'Medan', '82345', 'Sumatera Barat', '+1434480250719', 'Karen Winarsih S.E.I', 'PT Handayani (Persero) Tbk', 'Jr. Pacuan Kuda No. 694, Bekasi 85053, SulTra', 'credit', '83.250895', '76.918777'),
(64, 'INV-53583720191214', 68, 'Irnanto Megantara', 'PT Prayoga Laksmiwati (Persero) Tbk', 'Ki. Camar No. 300, Pekalongan 44899, SumUt', 'Manado', '95522', 'Sumatera Utara', '+8615616832984', 'Latika Pratiwi', 'CV Astuti Sinaga Tbk', 'Gg. Villa No. 577, Cimahi 16012, JaTim', 'cash', '82.181706', '73.88566'),
(65, 'INV-66103020191214', 79, 'Patricia Nuraini', 'UD Yuliarti', 'Jln. Monginsidi No. 415, Tual 57606, JaTim', 'Palangka Raya', '91581', 'Nusa Tenggara Barat', '+3496948426664', 'Laksana Bakda Uwais', 'Perum Napitupulu Agustina Tbk', 'Ki. Bakau Griya Utama No. 198, Sukabumi 58867, SumUt', 'cash', '94.36963', '89.071248'),
(66, 'INV-84980020191214', 78, 'Nova Hassanah', 'PT Marpaung Marbun', 'Ds. Salatiga No. 554, Administrasi Jakarta Pusat 61057, KalSel', 'Tasikmalaya', '57574', 'Sulawesi Barat', '+1535694816161', 'Jaeman Galur Saptono S.IP', 'CV Kuswandari', 'Kpg. Bakau Griya Utama No. 272, Cirebon 77349, Lampung', 'cash', '68.987028', '86.998678'),
(67, 'INV-15268520191214', 70, 'Diah Agustina', 'CV Maulana Tbk', 'Psr. Sukajadi No. 878, Sawahlunto 59731, SulTra', 'Magelang', '67633', 'Bali', '+1553661110297', 'Daliono Mangunsong', 'Perum Namaga Damanik (Persero) Tbk', 'Ds. Nanas No. 860, Tanjungbalai 32487, Riau', 'credit', '28.905668', '42.805354'),
(68, 'INV-48364220191214', 12, 'Ratih Victoria Rahmawati', 'CV Waskita', 'Dk. Samanhudi No. 417, Probolinggo 21102, SulTra', 'Tomohon', '48950', 'Sulawesi Barat', '+1736805325505', 'Nasim Nainggolan', 'CV Rahayu Safitri', 'Psr. Rajawali Timur No. 328, Makassar 97294, PapBar', 'credit', '80.063167', '90.699932'),
(69, 'INV-67252220191214', 65, 'Tiara Mulyani S.E.', 'Perum Andriani Sihombing (Persero) Tbk', 'Psr. Casablanca No. 640, Bandung 23719, MalUt', 'Kupang', '54923', 'Banten', '+8368525161794', 'Lasmono Cagak Tarihoran S.Pd', 'UD Kurniawan Fujiati Tbk', 'Kpg. Eka No. 471, Padangsidempuan 15739, SulTra', 'cash', '33.216604', '2.400407'),
(70, 'INV-69900120191214', 43, 'Digdaya Garan Adriansyah S.IP', 'Perum Widiastuti Tbk', 'Jln. Bahagia  No. 134, Balikpapan 93262, KalTim', 'Cirebon', '78311', 'Sulawesi Tenggara', '+9911490251040', 'Dimaz Salahudin', 'Perum Habibi Manullang (Persero) Tbk', 'Ds. Eka No. 710, Lubuklinggau 35473, KalUt', 'cash', '82.972441', '97.165717'),
(71, 'INV-59149020191214', 26, 'Darijan Galiono Rajata S.Ked', 'Perum Zulaika', 'Ds. Sugiyopranoto No. 941, Sabang 25490, SulBar', 'Tomohon', '84084', 'Lampung', '+9541280151257', 'Kamal Respati Prabowo', 'PT Riyanti Putra', 'Jln. Kiaracondong No. 637, Tanjungbalai 97757, NTB', 'cash', '64.840005', '21.810229'),
(72, 'INV-19854420191214', 6, 'Michelle Riyanti', 'PT Widiastuti Haryanto', 'Ds. Sadang Serang No. 731, Banjarmasin 56199, JaTeng', 'Lhokseumawe', '50275', 'Sumatera Selatan', '+9624191787579', 'Dwi Olga Hutagalung S.H.', 'PD Maryadi Siregar', 'Kpg. Yos Sudarso No. 379, Administrasi Jakarta Utara 75040, KalUt', 'cash', '64.287983', '-3.936989'),
(73, 'INV-30891320191214', 13, 'Ellis Pratiwi', 'PD Hartati', 'Jln. Pasir Koja No. 858, Palu 21037, KalTeng', 'Administrasi Jakarta Pusat', '67633', 'Kalimantan Timur', '+6420774368220', 'Vega Prasetya', 'UD Palastri', 'Psr. Tambun No. 708, Blitar 46308, Jambi', 'credit', '38.205594', '94.973292'),
(74, 'INV-48096020191214', 21, 'Aslijan Kuswoyo', 'Perum Susanti Tbk', 'Ds. Pasirkoja No. 417, Pariaman 20504, JaTeng', 'Ternate', '58151', 'Maluku Utara', '+6041756458581', 'Hesti Anggraini', 'Perum Najmudin Rajata', 'Ds. Abdul Muis No. 109, Lhokseumawe 51329, JaTeng', 'credit', '13.38112', '47.056951'),
(75, 'INV-52611620191214', 84, 'Samsul Gaiman Jailani M.M.', 'UD Prasetyo (Persero) Tbk', 'Kpg. Hang No. 637, Bukittinggi 87554, SulTra', 'Mojokerto', '44063', 'Jawa Barat', '+5416414787897', 'Luis Galih Anggriawan', 'PD Waluyo Laksmiwati', 'Ki. Jakarta No. 53, Bengkulu 30336, SulTeng', 'credit', '35.693771', '62.239108'),
(76, 'INV-63587020191214', 1, 'Elma Laksita', 'CV Wibisono Laksita', 'Dk. Sudirman No. 51, Sukabumi 73001, SumUt', 'Metro', '67982', 'Papua', '+4901539403048', 'Rizki Suryono', 'CV Pertiwi', 'Kpg. Aceh No. 22, Singkawang 19592, KalUt', 'cash', '26.775781', '5.248148'),
(77, 'INV-45770720191214', 31, 'Sakura Kusmawati', 'Perum Prakasa Sirait', 'Jln. Kyai Mojo No. 237, Batu 86762, JaTeng', 'Banjar', '18590', 'Sulawesi Barat', '+9039568330219', 'Hasna Halimah', 'UD Tarihoran Safitri (Persero) Tbk', 'Dk. Pacuan Kuda No. 592, Pekanbaru 43542, PapBar', 'cash', '52.488358', '-2.745825'),
(78, 'INV-83917020191214', 1, 'Intan Oktaviani', 'PT Safitri Yulianti', 'Psr. Ki Hajar Dewantara No. 308, Tangerang 73764, KalBar', 'Gorontalo', '19101', 'Papua', '+8505173325339', 'Cager Luis Halim S.Kom', 'PT Pangestu Melani', 'Psr. Ronggowarsito No. 247, Bontang 59823, SumBar', 'credit', '70.677794', '16.716345'),
(79, 'INV-19292120191214', 38, 'Cinta Lestari', 'UD Sitompul Megantara (Persero) Tbk', 'Gg. Achmad No. 390, Bau-Bau 52688, SulBar', 'Sabang', '56672', 'DKI Jakarta', '+9948997833591', 'Salman Saragih S.I.Kom', 'PD Kurniawan Puspita', 'Kpg. Juanda No. 98, Parepare 99680, KepR', 'cash', '67.002771', '70.360319'),
(80, 'INV-63229820191214', 12, 'Vanesa Purwanti', 'Perum Putra', 'Gg. Ters. Kiaracondong No. 462, Tangerang 60355, Aceh', 'Palangka Raya', '85750', 'Gorontalo', '+9951249918017', 'Caket Nainggolan', 'PT Napitupulu (Persero) Tbk', 'Psr. Raya Setiabudhi No. 325, Ternate 73055, JaTeng', 'credit', '15.393351', '8.487277'),
(81, 'INV-22910120191214', 83, 'Catur Heryanto Jailani S.H.', 'Perum Waluyo Siregar', 'Gg. Bank Dagang Negara No. 148, Ambon 72517, Lampung', 'Manado', '56867', 'Kalimantan Tengah', '+8522156234444', 'Eva Puspasari', 'CV Oktaviani (Persero) Tbk', 'Kpg. Basket No. 842, Palu 36348, SumSel', 'cash', '45.326196', '84.241421'),
(82, 'INV-63220820191214', 56, 'Purwa Aslijan Ardianto', 'PT Mandasari Rahmawati', 'Gg. Samanhudi No. 447, Palembang 86325, Jambi', 'Tidore Kepulauan', '92003', 'Kalimantan Tengah', '+7956231490557', 'Sakura Laksita', 'PD Wasita Sitorus (Persero) Tbk', 'Gg. Bara No. 875, Pekalongan 38916, KalTim', 'cash', '67.154599', '15.809638'),
(83, 'INV-1268220191214', 73, 'Kania Astuti', 'CV Sihombing Tbk', 'Psr. M.T. Haryono No. 770, Cilegon 87330, Riau', 'Bekasi', '29905', 'Lampung', '+7843730033281', 'Karsana Tamba', 'PD Mandasari Tbk', 'Jln. Tambun No. 502, Denpasar 17127, KalBar', 'cash', '19.168257', '9.363044'),
(84, 'INV-51185820191214', 57, 'Sadina Intan Sudiati', 'Perum Prayoga Damanik Tbk', 'Ds. Bahagia No. 250, Bukittinggi 96670, Banten', 'Manado', '64766', 'Lampung', '+9145284158699', 'Carla Karen Laksita', 'CV Mangunsong', 'Dk. Raya Ujungberung No. 869, Tarakan 22086, JaTeng', 'cash', '101.234465', '76.920784'),
(85, 'INV-89480020191214', 4, 'Hasna Shakila Farida S.Ked', 'PT Tamba Lailasari Tbk', 'Jr. Nakula No. 745, Kupang 17202, KalTim', 'Administrasi Jakarta Timur', '76618', 'DI Yogyakarta', '+3803008340196', 'Emin Bagus Jailani', 'Perum Prakasa Sitorus', 'Kpg. Bagis Utama No. 530, Sukabumi 36948, NTT', 'cash', '28.780325', '36.073458'),
(86, 'INV-22358720191214', 44, 'Raisa Lestari', 'PD Mahendra Hutapea Tbk', 'Psr. Tubagus Ismail No. 134, Sukabumi 17123, DKI', 'Pangkal Pinang', '33844', 'Sulawesi Utara', '+9893243781896', 'Rahayu Hasanah', 'PD Prasetyo Uyainah (Persero) Tbk', 'Kpg. Radio No. 401, Cirebon 50181, DKI', 'cash', '15.500371', '103.733056'),
(87, 'INV-76841320191214', 68, 'Empluk Adriansyah M.M.', 'PT Wijaya (Persero) Tbk', 'Kpg. Suryo Pranoto No. 979, Cimahi 33889, Banten', 'Tarakan', '48402', 'Banten', '+4123492685496', 'Shakila Pudjiastuti', 'PT Uyainah', 'Dk. Pasteur No. 744, Pematangsiantar 95143, JaBar', 'cash', '1.85717', '5.473503'),
(88, 'INV-14316520191214', 27, 'Harjasa Winarno', 'PD Oktaviani Palastri', 'Ds. Astana Anyar No. 440, Bau-Bau 75832, KalUt', 'Solok', '16555', 'DI Yogyakarta', '+1779511753494', 'Bella Patricia Puspasari S.T.', 'UD Aryani Sihombing (Persero) Tbk', 'Jln. Bank Dagang Negara No. 929, Tomohon 38686, Riau', 'cash', '80.66991', '88.656077'),
(89, 'INV-79657820191214', 77, 'Limar Cager Iswahyudi', 'CV Hakim Wacana Tbk', 'Gg. Basuki No. 45, Subulussalam 96774, Lampung', 'Sabang', '84950', 'Sumatera Utara', '+8004066881931', 'Anastasia Nasyidah', 'PT Waskita Widiastuti', 'Gg. Krakatau No. 685, Pontianak 78831, JaTeng', 'credit', '104.637857', '104.771879'),
(90, 'INV-42122220191214', 88, 'Virman Waluyo M.Kom.', 'Perum Haryanti Salahudin', 'Kpg. Soekarno Hatta No. 770, Lubuklinggau 60507, BaBel', 'Gorontalo', '48882', 'Jawa Tengah', '+5612715566549', 'Alika Puspasari', 'PD Pranowo Hutagalung', 'Kpg. Bank Dagang Negara No. 161, Tegal 85434, Jambi', 'credit', '98.56551', '81.814701'),
(91, 'INV-48534920191214', 82, 'Faizah Uyainah', 'UD Hidayat Rajasa (Persero) Tbk', 'Dk. Bata Putih No. 892, Sukabumi 46784, DKI', 'Metro', '22086', 'Kalimantan Selatan', '+1618650683911', 'Ifa Yuniar', 'PT Purwanti', 'Gg. Kusmanto No. 677, Bau-Bau 62172, Gorontalo', 'cash', '101.64854', '50.044424'),
(92, 'INV-61263320191214', 30, 'Anastasia Permata M.Pd', 'CV Padmasari Hastuti', 'Jln. Suprapto No. 726, Yogyakarta 35514, PapBar', 'Administrasi Jakarta Timur', '66542', 'Papua Barat', '+5034648696987', 'Lintang Laksita', 'CV Sihotang Gunawan (Persero) Tbk', 'Jr. Pasirkoja No. 637, Tasikmalaya 21311, Banten', 'credit', '99.353828', '2.893288'),
(93, 'INV-43585920191214', 4, 'Diana Rahmawati', 'PD Lazuardi', 'Ki. Mahakam No. 109, Administrasi Jakarta Barat 12601, Gorontalo', 'Pematangsiantar', '69530', 'Papua', '+3940090801553', 'Kemba Sihombing', 'UD Saefullah', 'Ds. Basmol Raya No. 731, Semarang 81685, Aceh', 'credit', '102.290106', '35.621689'),
(94, 'INV-10478020191214', 33, 'Jessica Latika Nasyiah', 'UD Aryani Mulyani', 'Ki. Abdul. Muis No. 390, Depok 52464, KalBar', 'Sungai Penuh', '45497', 'DKI Jakarta', '+8141050235976', 'Yono Wasita M.Kom.', 'CV Oktaviani Tbk', 'Ki. Villa No. 995, Palembang 84941, KepR', 'cash', '9.236578', '104.364269'),
(95, 'INV-80506920191214', 57, 'Kezia Mulyani', 'Perum Kuswandari Prasetyo', 'Dk. Abang No. 897, Banda Aceh 32125, NTT', 'Madiun', '24160', 'Sumatera Barat', '+4516106305741', 'Ellis Rahimah', 'UD Uyainah Purnawati Tbk', 'Psr. Perintis Kemerdekaan No. 590, Denpasar 48924, Lampung', 'credit', '87.373109', '-0.193018'),
(96, 'INV-71403220191214', 64, 'Cinthia Nurdiyanti', 'PD Prasasta (Persero) Tbk', 'Kpg. Bambon No. 578, Banda Aceh 31459, SumUt', 'Depok', '42799', 'Jawa Timur', '+6299550205580', 'Tomi Jindra Saefullah', 'PT Setiawan (Persero) Tbk', 'Gg. Abdul No. 849, Semarang 54232, SumUt', 'cash', '96.794766', '77.813987'),
(97, 'INV-2090620191214', 23, 'Rendy Sitompul', 'CV Haryanti Pangestu', 'Dk. Imam No. 832, Salatiga 17183, MalUt', 'Blitar', '59719', 'Kalimantan Barat', '+7668831666944', 'Sadina Pertiwi', 'PT Novitasari Prasetya', 'Dk. Mulyadi No. 358, Subulussalam 84232, Riau', 'credit', '93.535319', '80.794724'),
(98, 'INV-60823120191214', 79, 'Jabal Rafid Ramadan', 'CV Utami Manullang Tbk', 'Ki. Diponegoro No. 618, Ternate 31876, KalUt', 'Banjarbaru', '36684', 'Maluku Utara', '+1571857235363', 'Dewi Oktaviani', 'PT Prasasta (Persero) Tbk', 'Psr. Merdeka No. 781, Bandar Lampung 69077, DIY', 'credit', '28.610735', '0.172789'),
(99, 'INV-1043120191214', 25, 'Elma Cindy Hariyah', 'UD Utami', 'Dk. Sutan Syahrir No. 880, Bima 58292, NTB', 'Mojokerto', '48225', 'Riau', '+6216983290837', 'Bella Utami S.E.I', 'UD Prabowo', 'Gg. Baabur Royan No. 986, Bogor 98813, KepR', 'cash', '2.510209', '70.496395'),
(100, 'INV-15964220191214', 82, 'Melinda Titi Nasyiah M.TI.', 'PT Budiyanto Tbk', 'Dk. Suprapto No. 151, Probolinggo 26116, SulUt', 'Bengkulu', '95634', 'Sulawesi Tenggara', '+4975646317530', 'Lasmono Dabukke', 'UD Dabukke Tbk', 'Ds. Salam No. 376, Malang 96284, KalTeng', 'credit', '-1.24643', '33.248921');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_type` int(4) NOT NULL DEFAULT '0',
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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(8) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `products_type` int(4) DEFAULT '0',
  `products_quantity` int(4) DEFAULT '1',
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
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `quantity_discount_groups_id` int(11) DEFAULT NULL,
  `quantity_unit_class` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `products_type`, `products_quantity`, `products_name`, `products_price`, `products_sku`, `products_model`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_class`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `quantity_discount_groups_id`, `quantity_unit_class`) VALUES
(1, 7, 3, 'iPhone 4', '1865', 'NjGU0z33pgE4sTEED7VR', 'SpecialCode979327', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 4, 1, 7, 3829, 1549, NULL, 2),
(2, 7, 3, 'iPhone 4', '6289', 'ejfjnRNInxh0363JC2WM', 'GreatPromotion965430', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 4, 1, 9, 8524, 7831, NULL, 2),
(3, 9, 1, 'iPhone SE', '5608', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'PremiumSale193714', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 3, 1, 7, 8515, 5654, NULL, 2),
(4, 3, 3, 'iPhone SE', '8679', 'PTIA6Ff3GBvGh3j', 'KillerSale550119', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 3, 1, 4, 8772, 3916, NULL, 2),
(5, 5, 3, 'iPhone 4', '5334', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'PremiumPromotion356091', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 9, 1, 3, 3254, 4907, NULL, 2),
(6, 5, 2, 'iPhone 5C', '1819', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'AmazingDeal216544', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '7', 2, 1, 9, 3302, 2993, NULL, 2),
(7, 4, 0, 'iPhone 7 / 7 Plus', '2936', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'SpecialPrice325690', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 1, 1, 6, 3336, 2142, NULL, 2),
(8, 6, 2, 'iPhone X', '7104', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'AmazingPromotion188662', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 3, 1, 8, 8918, 6622, NULL, 2),
(9, 6, 1, 'iPhone X', '3585', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'SweetCode935872', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 9, 1, 0, 4305, 6843, NULL, 2),
(10, 9, 0, 'iPhone 5C', '7620', 'ToFVWLzGTJhQxAaJlDDn', 'CoolDiscount795744', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 4, 1, 6, 6806, 4287, NULL, 2),
(11, 3, 9, 'iPhone 3GS', '5310', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'AwesomeDeal190824', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 4, 1, 8, 2667, 2059, NULL, 2),
(12, 9, 6, 'iPhone 5', '6371', 'hrR8nflThDDaSXO', 'StellarSavings654635', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 3, 1, 9, 1906, 1556, NULL, 2),
(13, 3, 4, 'iPhone 6S / 6S Plus', '5717', 'PTIA6Ff3GBvGh3j', 'AmazingPrice988301', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 8, 1, 4, 6879, 4539, NULL, 2),
(14, 2, 6, 'iPhone 3GS', '1605', 'Kl2ZroV9a', 'AmazingCode459016', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 0, 1, 8, 4126, 6694, NULL, 2),
(15, 7, 2, 'iPhone 4', '7556', 'Kl2ZroV9a', 'AwesomeCode411056', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '7', 6, 1, 3, 8353, 8661, NULL, 2),
(16, 6, 1, 'iPhone 6 / 6 Plus', '1870', 'T6UuMUTani3VGY4vXGia', 'KillerDiscount981215', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 5, 1, 9, 6150, 7435, NULL, 2),
(17, 5, 6, 'iPhone 3GS', '7704', 'hrR8nflThDDaSXO', 'GoodPromo650699', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 0, 1, 8, 1911, 3207, NULL, 2),
(18, 9, 4, 'iPhone 5C', '7342', 'hHhDJaHCO', 'AmazingDiscount591880', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 0, 1, 0, 5790, 8916, NULL, 2),
(19, 4, 8, 'iPhone 6 / 6 Plus', '8047', 'ToFVWLzGTJhQxAaJlDDn', 'StellarSale714567', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 3, 1, 2, 4962, 8170, NULL, 2),
(20, 4, 2, 'iPhone 5', '8462', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'AmazingSavings229036', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 5, 1, 7, 7528, 1102, NULL, 2),
(21, 9, 3, 'iPhone', '6164', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'CoolDeal515554', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 1, 1, 1, 6001, 3810, NULL, 2),
(22, 4, 8, 'iPhone 4', '4611', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'StellarSavings394203', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 6, 1, 1, 5357, 1979, NULL, 2),
(23, 2, 3, 'iPhone', '8478', 'T6UuMUTani3VGY4vXGia', 'GoodDeal339485', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 8, 1, 1, 7620, 6192, NULL, 2),
(24, 0, 8, 'iPhone 4S', '2061', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'SweetSavings429253', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 4, 1, 1, 8872, 2212, NULL, 2),
(25, 8, 8, 'iPhone 4', '3215', 'm6aHiiHOc', 'GoodPromo400043', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 4, 1, 4, 4486, 2603, NULL, 2),
(26, 8, 1, 'iPhone 4S', '6872', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'AwesomePromo441925', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '7', 3, 1, 2, 3660, 2272, NULL, 2),
(27, 4, 6, 'iPhone X', '8873', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'GreatDeal750038', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 7, 1, 5, 6456, 8827, NULL, 2),
(28, 8, 3, 'iPhone X', '1695', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'PremiumPromo939127', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 7, 1, 6, 1641, 3053, NULL, 2),
(29, 9, 1, 'iPhone 3G', '1461', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'KillerCode161893', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 9, 1, 5, 7242, 3145, NULL, 2),
(30, 4, 0, 'iPhone 5C', '7825', 'hrR8nflThDDaSXO', 'PremiumPromotion898320', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 2, 1, 1, 1048, 8027, NULL, 2),
(31, 8, 7, 'iPhone 5C', '2316', 'SJMZOmtU0csrv4R', 'AmazingSavings590570', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 6, 1, 5, 5770, 2496, NULL, 2),
(32, 5, 3, 'iPhone X', '5277', 'OezkV3nTii0sMK0', 'GoodSale790971', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 1, 1, 5, 1581, 6264, NULL, 2),
(33, 2, 7, 'iPhone X', '2412', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'GoodSale710360', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 2, 1, 5, 5519, 3486, NULL, 2),
(34, 9, 2, 'iPhone 5C', '3795', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'SweetDiscount249925', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 3, 1, 0, 2373, 5643, NULL, 2),
(35, 7, 1, 'iPhone 4S', '7920', 'hrR8nflThDDaSXO', 'AwesomeCode329491', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 9, 1, 0, 6720, 7467, NULL, 2),
(36, 1, 4, 'iPhone 4S', '8424', 'm6aHiiHOc', 'SweetCode710250', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 9, 1, 5, 1153, 1918, NULL, 2),
(37, 9, 5, 'iPhone 4S', '8361', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'AmazingSale209850', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 2, 1, 2, 5669, 5708, NULL, 2),
(38, 4, 9, 'iPhone 5C', '1546', 'hrR8nflThDDaSXO', 'IncredibleSavings816161', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 0, 1, 1, 1630, 7954, NULL, 2),
(39, 8, 7, 'iPhone 3GS', '4424', 'SJMZOmtU0csrv4R', 'AmazingPromo134936', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 4, 1, 1, 2493, 4635, NULL, 2),
(40, 8, 5, 'iPhone 4', '6650', '05skEogwZlX7j6twhhXX', 'SweetDeal800891', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 6, 1, 7, 6879, 2342, NULL, 2),
(41, 7, 7, 'iPhone 3GS', '5124', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'CoolPromotion464298', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 5, 1, 1, 1828, 7001, NULL, 2),
(42, 6, 9, 'iPhone 3GS', '8966', 'ejfjnRNInxh0363JC2WM', 'GoodDiscount799991', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 3, 1, 2, 5321, 5112, NULL, 2),
(43, 4, 3, 'iPhone 3GS', '7194', 'Kl2ZroV9a', 'SweetSale603317', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 0, 1, 7, 1082, 7221, NULL, 2),
(44, 1, 7, 'iPhone 7 / 7 Plus', '4063', 'hrR8nflThDDaSXO', 'CoolDiscount973065', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 6, 1, 3, 1640, 6381, NULL, 2),
(45, 9, 7, 'iPhone 3GS', '6543', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'IncredibleSale402148', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 0, 1, 3, 8897, 6475, NULL, 2),
(46, 2, 8, 'iPhone 5S', '5056', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'GoodDeal666436', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 2, 1, 9, 8957, 3963, NULL, 2),
(47, 9, 2, 'iPhone 3GS', '8602', 'OezkV3nTii0sMK0', 'IncrediblePrice304163', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 0, 1, 6, 6400, 6247, NULL, 2),
(48, 6, 9, 'iPhone 8 / 8 Plus', '8419', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'SpecialPromotion929707', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 5, 1, 6, 3362, 1804, NULL, 2),
(49, 8, 5, 'iPhone 5C', '3222', 'm6aHiiHOc', 'AmazingDiscount471631', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 9, 1, 9, 8187, 3626, NULL, 2),
(50, 2, 4, 'iPhone 4S', '8482', 'NjGU0z33pgE4sTEED7VR', 'AmazingPrice456359', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 4, 1, 0, 5818, 6828, NULL, 2),
(51, 8, 6, 'iPhone SE', '2147', 'PTIA6Ff3GBvGh3j', 'AwesomeDiscount314462', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 1, 1, 9, 2541, 7671, NULL, 2),
(52, 5, 3, 'iPhone 4S', '7030', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'CoolDiscount371764', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 6, 1, 4, 2535, 6755, NULL, 2),
(53, 8, 3, 'iPhone 6 / 6 Plus', '8061', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'CoolCode957989', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 3, 1, 8, 5956, 6620, NULL, 2),
(54, 3, 2, 'iPhone 5', '6795', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'SweetPromo254083', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 7, 1, 4, 3478, 2452, NULL, 2),
(55, 2, 0, 'iPhone SE', '6013', 'ejfjnRNInxh0363JC2WM', 'GoodDiscount328691', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 3, 1, 3, 1807, 6596, NULL, 2),
(56, 9, 6, 'iPhone', '8521', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'PremiumSale694720', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 3, 1, 7, 8901, 2250, NULL, 2),
(57, 1, 8, 'iPhone 3G', '6626', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'CoolSavings404351', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 6, 1, 1, 2756, 3299, NULL, 2),
(58, 4, 6, 'iPhone 3G', '2256', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'GreatPromotion896559', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 3, 1, 1, 1385, 2397, NULL, 2),
(59, 0, 3, 'iPhone 6 / 6 Plus', '8250', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'GreatPromo284490', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 1, 1, 9, 1476, 3144, NULL, 2),
(60, 9, 4, 'iPhone SE', '2742', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'GreatPromo621611', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 6, 1, 0, 3278, 5289, NULL, 2),
(61, 4, 1, 'iPhone 6 / 6 Plus', '7783', 'NjGU0z33pgE4sTEED7VR', 'IncredibleSale360930', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 5, 1, 4, 8714, 5443, NULL, 2),
(62, 1, 4, 'iPhone 3GS', '5263', '05skEogwZlX7j6twhhXX', 'SpecialPromotion872405', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 3, 1, 5, 4110, 6782, NULL, 2),
(63, 2, 7, 'iPhone 3GS', '5859', '05skEogwZlX7j6twhhXX', 'CoolDeal271136', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 0, 1, 6, 2565, 1566, NULL, 2),
(64, 7, 8, 'iPhone 6S / 6S Plus', '6617', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'GreatDeal808416', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 4, 1, 7, 1511, 7104, NULL, 2),
(65, 8, 5, 'iPhone 8 / 8 Plus', '7036', 'Kl2ZroV9a', 'StellarSale500224', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 9, 1, 3, 5735, 7296, NULL, 2),
(66, 3, 3, 'iPhone 5S', '6757', 'PTIA6Ff3GBvGh3j', 'KillerSavings106879', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 1, 1, 6, 6135, 5384, NULL, 2),
(67, 5, 4, 'iPhone 8 / 8 Plus', '6783', 'T6UuMUTani3VGY4vXGia', 'KillerPromotion102721', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 8, 1, 7, 1673, 6247, NULL, 2),
(68, 3, 2, 'iPhone 6 / 6 Plus', '4282', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'AwesomeSavings138981', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 7, 1, 9, 1970, 1974, NULL, 2),
(69, 4, 1, 'iPhone 4S', '8226', 'ToFVWLzGTJhQxAaJlDDn', 'GoodSale307523', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 0, 1, 4, 3830, 2043, NULL, 2),
(70, 0, 5, 'iPhone 5', '1054', 'm6aHiiHOc', 'SpecialSavings333184', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 7, 1, 4, 8684, 3769, NULL, 2),
(71, 3, 6, 'iPhone SE', '4068', 'hHhDJaHCO', 'StellarDiscount794296', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 6, 1, 5, 1647, 6856, NULL, 2),
(72, 5, 5, 'iPhone 4', '5086', 'm6aHiiHOc', 'SpecialCode339356', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '4', 8, 1, 6, 5973, 1764, NULL, 2),
(73, 6, 3, 'iPhone 5C', '2693', 'hrR8nflThDDaSXO', 'SweetPrice845652', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 7, 1, 8, 4891, 8289, NULL, 2),
(74, 6, 3, 'iPhone 7 / 7 Plus', '5362', 'UVr864F8zUbyYOAUd4cFOW9hpsZuGn', 'PremiumPrice635914', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 0, 1, 8, 2864, 3994, NULL, 2),
(75, 0, 3, 'iPhone 4', '8359', 'ejfjnRNInxh0363JC2WM', 'SweetDeal673056', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 0, 1, 2, 5729, 3067, NULL, 2),
(76, 1, 8, 'iPhone 6S / 6S Plus', '4501', 'Yr9Vt13BlgvXO9zgJTPuCLv6F82r5S', 'KillerDiscount779751', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 0, 1, 3, 6817, 1737, NULL, 2),
(77, 1, 3, 'iPhone 6S / 6S Plus', '4022', 'trDuJXhT8PnD3JEtw4lsluEuYSn1Xh', 'PremiumDiscount126944', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 7, 1, 9, 5197, 8201, NULL, 2),
(78, 8, 4, 'iPhone', '4742', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'GoodDeal274492', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '6', 0, 1, 0, 2088, 8350, NULL, 2),
(79, 2, 7, 'iPhone 3GS', '7066', 'VMTnd2mMQWvjbtNcZh7UIdULKb1mMo', 'IncredibleDiscount877548', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 2, 1, 3, 5225, 5494, NULL, 2),
(80, 8, 0, 'iPhone X', '7907', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'PremiumPrice161657', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 5, 1, 5, 1792, 2496, NULL, 2),
(81, 1, 8, 'iPhone 5', '2523', 'ToFVWLzGTJhQxAaJlDDn', 'SweetDeal199815', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 1, 1, 4, 8098, 2175, NULL, 2),
(82, 0, 1, 'iPhone SE', '1768', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'AmazingDeal360282', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 4, 1, 2, 5007, 7568, NULL, 2),
(83, 5, 4, 'iPhone 5', '4401', 'PTIA6Ff3GBvGh3j', 'SweetSale693184', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 1, 1, 0, 8652, 7298, NULL, 2),
(84, 0, 9, 'iPhone 3G', '6141', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'KillerDiscount243604', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '5', 1, 1, 7, 7834, 4609, NULL, 2),
(85, 4, 5, 'iPhone 5', '3304', 'PTIA6Ff3GBvGh3j', 'KillerPromotion264994', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 3, 1, 2, 8079, 6076, NULL, 2),
(86, 9, 8, 'iPhone 3GS', '1798', 'PTIA6Ff3GBvGh3j', 'GoodSavings622017', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2', 7, 1, 4, 1274, 8635, NULL, 2),
(87, 9, 8, 'iPhone 8 / 8 Plus', '5697', 'Kl2ZroV9a', 'KillerPromotion184996', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 7, 1, 9, 4116, 1765, NULL, 2),
(88, 0, 3, 'iPhone SE', '8181', 'hrR8nflThDDaSXO', 'GreatDeal513888', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 8, 1, 5, 1044, 3662, NULL, 2),
(89, 2, 2, 'iPhone 5', '1432', 'NjGU0z33pgE4sTEED7VR', 'AmazingPrice783224', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 5, 1, 5, 7007, 8245, NULL, 2),
(90, 6, 7, 'iPhone 8 / 8 Plus', '2238', 'ToFVWLzGTJhQxAaJlDDn', 'StellarDiscount881057', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 1, 1, 3, 2420, 7662, NULL, 2),
(91, 1, 7, 'iPhone 3G', '1931', '9vxM9fCsG9nXg8EjTN5ygV2LvaDZdG', 'AmazingSavings976026', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 8, 1, 4, 4418, 1424, NULL, 2),
(92, 6, 6, 'iPhone 3G', '1729', 'T6UuMUTani3VGY4vXGia', 'GoodDeal999239', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 5, 1, 5, 1202, 1147, NULL, 2),
(93, 5, 1, 'iPhone X', '2187', 'm6aHiiHOc', 'PremiumPromo158975', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 8, 1, 1, 6028, 2664, NULL, 2),
(94, 5, 4, 'iPhone', '3488', 'CdNevWfqDPQw4iJgUhtyCqwCggV12T', 'GreatDiscount541346', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '0', 6, 1, 8, 6201, 8804, NULL, 2),
(95, 0, 5, 'iPhone 8 / 8 Plus', '8893', '05skEogwZlX7j6twhhXX', 'IncredibleSale700769', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '3', 0, 1, 5, 3785, 4411, NULL, 2),
(96, 6, 4, 'iPhone 6 / 6 Plus', '5630', 'OezkV3nTii0sMK0', 'KillerPromo188667', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 6, 1, 1, 4595, 3191, NULL, 2),
(97, 0, 9, 'iPhone 5S', '2552', 'pEekWH7zGxVITv6NTa5KHjLSwr5Ie4', 'GreatDeal418420', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '1', 6, 1, 3, 6331, 3991, NULL, 2),
(98, 9, 2, 'iPhone X', '7489', '39gPmcOKpwhDezLdiIOZ7SH89Pbjp4', 'GoodDeal934043', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 4, 1, 1, 1931, 4758, NULL, 2),
(99, 9, 5, 'iPhone 6 / 6 Plus', '6352', 'OezkV3nTii0sMK0', 'StellarPrice291049', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '8', 6, 1, 8, 1747, 7136, NULL, 2),
(100, 0, 1, 'iPhone 3G', '2347', 'NjGU0z33pgE4sTEED7VR', 'SpecialDiscount109810', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '2019-12-14 00:16:38', '9', 1, 1, 1, 3057, 8064, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quota_gases`
--

CREATE TABLE `quota_gases` (
  `id` int(100) UNSIGNED NOT NULL,
  `tgl` date NOT NULL,
  `composisi` int(100) UNSIGNED NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `ket` text,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quota_gases`
--

INSERT INTO `quota_gases` (`id`, `tgl`, `composisi`, `satuan`, `ket`, `status`) VALUES
(1, '2019-12-14', 142, 'KG', 'dasdasdasdasdasdasd', NULL),
(2, '2019-11-14', 316, 'KG', 'dasdasdasdasdasdasd', NULL),
(3, '2019-10-14', 270, 'KG', 'dasdasdasdasdasdasd', NULL),
(4, '2019-09-14', 307, 'KG', 'dasdasdasdasdasdasd', NULL),
(5, '2019-08-14', 148, 'KG', 'dasdasdasdasdasdasd', NULL),
(6, '2019-07-14', 188, 'KG', 'dasdasdasdasdasdasd', NULL),
(7, '2019-06-14', 434, 'KG', 'dasdasdasdasdasdasd', NULL),
(8, '2019-05-14', 170, 'KG', 'dasdasdasdasdasdasd', NULL),
(9, '2019-04-14', 206, 'KG', 'dasdasdasdasdasdasd', NULL),
(10, '2019-03-14', 236, 'KG', 'dasdasdasdasdasdasd', NULL),
(11, '2019-02-14', 480, 'KG', 'dasdasdasdasdasdasd', NULL),
(12, '2019-01-14', 181, 'KG', 'dasdasdasdasdasdasd', NULL),
(13, '2018-12-14', 102, 'KG', 'dasdasdasdasdasdasd', NULL),
(14, '2018-11-14', 356, 'KG', 'dasdasdasdasdasdasd', NULL),
(15, '2018-10-14', 116, 'KG', 'dasdasdasdasdasdasd', NULL),
(16, '2018-09-14', 495, 'KG', 'dasdasdasdasdasdasd', NULL),
(17, '2018-08-14', 449, 'KG', 'dasdasdasdasdasdasd', NULL),
(18, '2018-07-14', 425, 'KG', 'dasdasdasdasdasdasd', NULL),
(19, '2018-06-14', 430, 'KG', 'dasdasdasdasdasdasd', NULL),
(20, '2018-05-14', 478, 'KG', 'dasdasdasdasdasdasd', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(100) UNSIGNED NOT NULL,
  `tgl_schedules` date NOT NULL,
  `tgl_pickup` date NOT NULL,
  `transport` varchar(100) NOT NULL,
  `jml_tabung` varchar(100) NOT NULL,
  `ket` text,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `active` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `verified` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `gender`, `email`, `password`, `role`, `remember_token`, `active`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin', 'm', 'admin@admin.com', '$2y$10$TQSWJCwt3PD.xLGsygyDreBCoyMnOM1LsXl.sMm6ifKYShOD9WY1y', 'admin', '', 1, 1, '2019-12-14 00:16:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` int(8) UNSIGNED NOT NULL,
  `user_id` int(8) UNSIGNED NOT NULL,
  `category_id` int(8) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions_categories`
--

CREATE TABLE `user_permissions_categories` (
  `id` int(8) UNSIGNED NOT NULL,
  `name` varchar(65) NOT NULL,
  `parent_id` int(8) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `couriers`
--
ALTER TABLE `couriers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `quota_gases`
--
ALTER TABLE `quota_gases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `couriers`
--
ALTER TABLE `couriers`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `quota_gases`
--
ALTER TABLE `quota_gases`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  MODIFY `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD CONSTRAINT `user_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_permissions_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `user_permissions_categories` (`id`);

--
-- Constraints for table `user_permissions_categories`
--
ALTER TABLE `user_permissions_categories`
  ADD CONSTRAINT `user_permissions_categories_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `user_permissions_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
