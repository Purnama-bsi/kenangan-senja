-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 15.53
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kenangan_senja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `send_to` int(5) NOT NULL,
  `send_by` int(3) NOT NULL,
  `message` tinytext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `komentar` text NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `nama`, `komentar`, `time`) VALUES
(17, 'Pelanggan', 'Tes running', 'Rabu, 12 Juni 2024 ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `kopi` varchar(128) NOT NULL,
  `deskrpsi` varchar(1024) NOT NULL,
  `image` varchar(128) NOT NULL,
  `harga` varchar(128) NOT NULL,
  `category` varchar(25) NOT NULL,
  `rekomendasi` varchar(18) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `kopi`, `deskrpsi`, `image`, `harga`, `category`, `rekomendasi`, `date_created`) VALUES
(48, 'Espresso', 'kopi yang dihasilkan dari proses penyeduhan kopi dengan tekanan dan suhu tinggi', 'Espresso1.PNG', '17000', 'Coffee', 'Rekomendasi', 1718039426),
(49, 'Moccachino', 'mochaccino adalah cappuccino yang ditambah cokelat', 'Moccachino1.PNG', '21000', 'Coffee', 'Rekomendasi', 1718040091),
(50, 'pastry', 'pastry adalah jenis makanan yang terbuat dari bahan tepung, gula, shortening,', 'Pastry1.PNG', '12000', 'Makanan', 'Tidak Rekomendasi', 1718040132),
(53, 'Latte_art', 'kopi susu yang memiliki lapisan busa halus sebagai highlight minumannya. ', 'Latte_art1.PNG', '45000', 'Coffee', 'Rekomendasi', 1718040433),
(54, 'Chocolate ice', 'minuman manis yang cocok dijadikan sebagai hidangan penutup', 'Chocolate_ice1.PNG', '17000', 'Non Coffee', 'Rekomendasi', 1718040535),
(55, 'Vanilla ice', 'Es krim vanila adalah rasa klasik yang biasa dibuat dengan ekstrak vanila', 'Vanilla_ice1.PNG', '17000', 'Non Coffee', 'Rekomendasi', 1718040674),
(56, 'Manggo mix', 'minuman yang nikmat dan menyegarkan.', 'Manggo_mix1.PNG', '25000', 'Non Coffee', 'Rekomendasi', 1718040774),
(57, 'kebab', 'akanan yang memiliki akar dari masakan kuno Timur Tengah', 'Kebab1.PNG', '12000', 'Makanan', 'Rekomendasi', 1718040868),
(58, 'pastel', 'makanan semacam pastry yang dibuat dengan meletakkan isian diatas adonan lalu dilipat dan dibentuk', 'Pastel1.PNG', '12000', 'Makanan', 'Rekomendasi', 1718040938),
(59, 'martabak', 'makanan sejenis roti pipih (flatbread) ', 'Martabak1.PNG', '12000', 'Makanan', 'Tidak Rekomendasi', 1718041099),
(60, 'Strawberry mix', ' es krim rasa yang dibuat dengan perasa stroberi ', 'Strawbery_mix1.PNG', '17000', 'Non Coffee', 'Rekomendasi', 1718041191),
(61, 'Mocca ice', 'mochaccino adalah cappuccino yang ditambah cokelat', 'Mocca_ice1.PNG', '17000', 'Non Coffee', 'Rekomendasi', 1718041248),
(63, 'Affogato', 'kopi susu yang memiliki lapisan busa halus sebagai highlight minumannya. ', 'Affogato1.PNG', '17000', 'Coffee', 'Rekomendasi', 1718159069),
(65, 'Lemon tea', 'minuman teh dengan ekstrak lemon', 'Lemon_tea1.PNG', '12000', 'Non Coffee', 'Rekomendasi', 1718183664),
(67, 'Cocopandan squash', 'syrup segar rasa cocopandan', 'Cocopandan_squash2.PNG', '12000', 'Non Coffee', 'Tidak Rekomendasi', 1718183889),
(68, 'ristreto', 'kopi yang dihasilkan dari proses penyeduhan kopi dengan tekanan dan suhu tinggi', 'ristretto1.jpg', '21000', 'Coffee', 'Rekomendasi', 1718184013);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `no_pesanan` int(11) NOT NULL,
  `total_bayar` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `no_pesanan`, `total_bayar`, `date_created`) VALUES
(37, 4, '66000', 1718156054);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `no_pesanan` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `order` varchar(12) NOT NULL,
  `subtotal` varchar(128) NOT NULL,
  `lunas` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `no_pesanan`, `username`, `menu_id`, `quantity`, `order`, `subtotal`, `lunas`) VALUES
(89, 3, '', 7, 1, '', '8000', 1),
(93, 4, '', 49, 2, '', '42000', 1),
(94, 4, '', 50, 2, '', '24000', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `unique_id` varchar(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `name` varchar(35) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `user_status` varchar(20) NOT NULL,
  `date_created` int(11) NOT NULL,
  `last_logout` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `unique_id`, `email`, `username`, `name`, `password`, `role_id`, `is_active`, `user_status`, `date_created`, `last_logout`) VALUES
(1, '841157', 'admin@admin.com', 'Admin', 'Administrator', '$2y$10$rVy68lv6hY4dMYbmQNnNbOLkllSf7f1BJRYMw/Xw5WdMv.V1Sdeyu', 1, 1, 'active', 1649402646, ''),
(2, 'fe367e', 'tester@yahoo.com', 'Tester', 'Tester', '$2y$10$IfY6KHiiu3bOCusb/FFGzevVcBh1wIQsYKx4XmNSCHeRg9pH3kVsq', 2, 1, 'active', 1652339290, ''),
(14, 'a61127', 'purnama69mira@gmail.com', 'PURNAMA', 'PURNAMA', '$2y$10$OutBOiiszv2RRtxT5xf0CeVuhXCQ8n.qH1OzfmDLX34YdoR7K91H2', 1, 1, 'active', 1718036452, ''),
(15, 'd215eb', 'pelanggan@gmail.com', 'pelanggan', 'pelanggan', '$2y$10$2BRKF1ukoCmjGL3AmVFRf.BrR.no8Lm6NnztYUJbvNV5ripHSlykO', 2, 1, 'active', 1718041724, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_messages`
--

CREATE TABLE `user_messages` (
  `time` datetime(6) NOT NULL,
  `sender_message_id` varchar(20) NOT NULL,
  `receiver_message_id` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_messages`
--

INSERT INTO `user_messages` (`time`, `sender_message_id`, `receiver_message_id`, `message`) VALUES
('2022-04-23 21:54:27.000000', '2bc812', '7c9bc3', 'tes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(5, 'purnama69mira@gmail.com', 'lkwhzjaDNNNM0veKrBPp2gwGWoUSXYbxUfzrlgCtrjU=', 1718036452),
(6, 'pelanggan@gmail.com', 'Nz0FPN5IIR1uZsxvw1/YCKfs8HUaML2pYIvJlEkvnlY=', 1718041724);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `sent_to` (`send_to`),
  ADD KEY `send_by` (`send_by`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
