-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2025 pada 04.28
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webfau`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `created_at`) VALUES
(4, 1, '2025-01-15 01:31:56'),
(5, 1, '2025-01-15 01:32:05'),
(6, 1, '2025-01-15 01:33:33'),
(7, 1, '2025-01-15 01:36:34'),
(8, 1, '2025-01-15 01:43:08'),
(9, 1, '2025-01-15 01:43:44'),
(10, 1, '2025-01-15 01:46:59'),
(11, 1, '2025-01-15 01:48:21'),
(12, 1, '2025-01-15 01:53:15'),
(13, 1, '2025-01-15 01:54:24'),
(14, 1, '2025-01-15 01:54:34'),
(15, 1, '2025-01-15 01:57:41'),
(16, 1, '2025-01-15 02:00:49'),
(17, 1, '2025-01-15 02:02:20'),
(18, 1, '2025-01-15 02:02:48'),
(19, 1, '2025-01-15 02:04:19'),
(20, 1, '2025-01-15 02:05:43'),
(21, 1, '2025-01-15 02:06:34'),
(22, 1, '2025-01-15 02:08:19'),
(23, 1, '2025-01-15 02:08:25'),
(24, 1, '2025-01-15 02:08:47'),
(25, 1, '2025-01-15 02:09:03'),
(26, 1, '2025-01-15 02:09:49'),
(27, 1, '2025-01-15 02:10:25'),
(28, 1, '2025-01-15 02:10:44'),
(29, 1, '2025-01-15 02:12:22'),
(30, 1, '2025-01-15 02:15:37'),
(31, 1, '2025-01-15 02:17:03'),
(32, 1, '2025-01-15 02:22:50'),
(33, 1, '2025-01-15 02:23:23'),
(34, 1, '2025-01-15 02:24:42'),
(35, 1, '2025-01-15 02:24:54'),
(36, 1, '2025-01-15 02:25:38'),
(37, 1, '2025-01-15 02:26:00'),
(38, 1, '2025-01-15 02:26:30'),
(39, 1, '2025-01-15 02:28:04'),
(40, 1, '2025-01-15 02:32:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `id_card` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `subtotal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `status` enum('DIPROSES','DIKIRIM','SELESAI') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `nama_produk`, `harga`, `deskripsi`, `foto`) VALUES
(4, 'cute', 50000, 'husband', 'endors.jpg'),
(5, 'Sayang', 500000, 'babe', 'bazaar.jpg'),
(6, 'vgbhcfgbhf', 300000, 'fjfghjghj', 'ga.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('User','Admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `role`) VALUES
(1, 'din', '$2y$10$Scjylh/0OTip1hNeBm9RAO/aaOkYisuR0Uviq/PtqNYtGRdJXylVi', 'User'),
(2, 'ldy', '$2y$10$1w9FoPZynEq5Zd7na/wzzOjn8FCHRZOxHsuwlyftp1nZaabdqAEZ6', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_card` (`id_card`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_3` FOREIGN KEY (`id_card`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `cart_item_ibfk_4` FOREIGN KEY (`produk_id`) REFERENCES `tb_produk` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tb_penjualan` (`id`),
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id`);

--
-- Ketidakleluasaan untuk tabel `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD CONSTRAINT `tb_penjualan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
