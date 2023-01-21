-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jan 2023 pada 12.31
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bwastartup2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `perks` text DEFAULT NULL,
  `backer_count` int(11) DEFAULT NULL,
  `goal_amount` int(11) DEFAULT NULL,
  `current_amount` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `campaigns`
--

INSERT INTO `campaigns` (`id`, `user_id`, `name`, `short_description`, `description`, `perks`, `backer_count`, `goal_amount`, `current_amount`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Campaign Test', 'test_1', 'testing campaign user id 1', 'ini 1,yg ini 2,nah ini mah ke 3', 0, 10, 5, 'campaign 1', '2022-12-04 13:33:36', '2023-01-18 15:10:33'),
(2, 2, 'Campaign Test', 'test_1', 'testing campaign user id 1', 'ini 1, yg ini 2, nah ini mah ke 3', 0, 10, 5, 'campaign 1', '2022-12-04 13:33:36', '2022-12-04 07:33:36'),
(3, 1, 'test penggalangan dana', 'short1', 'description', 'hadiah 1, hadiah 1, hadiah 3', 0, 1000000, 0, 'test-penggalangan-dana-1', '2022-12-12 09:34:50', '2022-12-12 09:34:50'),
(4, 1, 'test penggalangan WoW', 'short1', 'description', 'as', 0, 1000000000, 0, 'test-penggalangan-dana2-1', '2022-12-13 20:11:30', '2022-12-15 09:10:40'),
(5, 1, 'tes frontend', 'tes dari vue nuxt', 'coba ngetes responsedari frontend', 'dapet tampilan, response backend, dll', 0, 100000, 0, 'tes-frontend-1', '2023-01-18 11:02:38', '2023-01-18 11:02:38'),
(6, 20, 'tes campaign CMS', '<a>www.apaja.com</a>', 'coba tes upated', 'coba, ini aja, msa iya', 0, 1000000, 0, 'tes-campaign-cms-20', '2023-01-21 14:48:59', '2023-01-21 16:57:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `campaign_images`
--

CREATE TABLE `campaign_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `is_primary` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `campaign_images`
--

INSERT INTO `campaign_images` (`id`, `campaign_id`, `file_name`, `is_primary`, `created_at`, `updated_at`) VALUES
(8, 4, 'images/1-altgeek logo.jpeg', 0, '2022-12-18 16:25:31', '2022-12-18 16:28:41'),
(9, 4, 'images/1-altgeek logo.jpeg', 1, '2022-12-18 16:28:41', '2022-12-18 16:28:41'),
(10, 1, 'images/1-project-image.jpg', 0, '2023-01-14 09:36:25', '2023-01-21 15:04:03'),
(11, 1, 'images/1-project-slider-1.jpg', 0, '2023-01-14 09:36:58', '2023-01-21 15:04:03'),
(12, 2, 'images/2-project-slider-1.jpg', 0, '2023-01-14 09:39:05', '2023-01-14 09:39:22'),
(13, 2, 'images/2-project-image.jpg', 1, '2023-01-14 09:39:22', '2023-01-14 09:39:22'),
(14, 3, 'images/1-project-image.jpg', 1, '2023-01-14 09:40:44', '2023-01-14 09:40:44'),
(15, 3, 'images/1-project-slider-1.jpg', 0, '2023-01-14 09:41:01', '2023-01-14 09:41:01'),
(16, 1, 'images/1-project-slider-2.jpg', 0, '2023-01-18 14:53:34', '2023-01-21 15:04:03'),
(17, 1, 'images/1-project-thumbnail-5.jpg', 1, '2023-01-21 15:04:03', '2023-01-21 15:04:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `campaign_id`, `user_id`, `amount`, `status`, `code`, `payment_url`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100000, 'paid', NULL, NULL, '2023-01-05 15:36:51', NULL),
(2, 1, 1, 100000, 'paid', NULL, NULL, '2023-01-05 15:36:51', NULL),
(7, 4, 1, 10000000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/0742566e-5f44-4226-81d8-3bea879f8f36', '2023-01-07 20:47:05', '2023-01-07 20:47:06'),
(8, 3, 1, 1, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/56a40927-0c25-4868-9e95-0e8271e91d12', '2023-01-08 16:24:30', '2023-01-08 16:24:32'),
(9, 3, 1, 100000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/93da9bb7-eff3-49fa-9a28-a47f5bef9a26', '2023-01-09 17:41:12', '2023-01-09 17:41:13'),
(10, 1, 1, 1000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/363d7dd9-8375-457a-97a3-8d950be0cea8', '2023-01-16 16:12:21', '2023-01-16 16:12:22'),
(11, 1, 1, 10000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/74942c06-b7a6-4e53-89f6-fc8938f372f4', '2023-01-16 16:17:09', '2023-01-16 16:17:10'),
(12, 1, 1, 10000, 'pending', '', 'https://app.sandbox.midtrans.com/snap/v3/redirection/05b61809-d878-48fa-a80f-5d7aede98d51', '2023-01-16 16:19:30', '2023-01-16 16:19:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `avatar_file_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `token`, `created_at`, `updated_at`) VALUES
(1, 'muhammad nur', 'programmer', 'kucobaberdikari@gmail.com', '$2a$04$cDoUPNqPWGNVQobPMKarN.fOH4xlXPL7.4Uq0IP.JcECIje22le92', 'images/1-DSC_0666-removebg-preview.png', 'user', NULL, '2022-10-11 17:19:58', '2022-12-03 21:01:59'),
(2, 'agung', 'programmer', 'kucobaberdikari1@gmail.com', '$2a$04$cDoUPNqPWGNVQobPMKarN.fOH4xlXPL7.4Uq0IP.JcECIje22le92', '', 'user', NULL, '2022-10-11 17:19:58', '2022-10-11 17:19:58'),
(3, 'judika', 'musisi', 'kucobaberdikari2@gmail.com', '$2a$04$cDoUPNqPWGNVQobPMKarN.fOH4xlXPL7.4Uq0IP.JcECIje22le92', '', 'user', NULL, '2022-10-11 17:19:58', '2022-10-11 17:19:58'),
(4, 'test simpan1', 'pekerja', 'contoh@s.com', '$2a$04$45HjktszxR2Ixs4jOvRRv.mtkMsdO//IlXir1GtFIs0TyvjNx1J4i', 'images/4-logo telak.png', 'user', NULL, '2022-11-24 21:08:09', '2022-12-03 20:59:29'),
(13, 'test handler postman1', 'CEO', 'test_handlerPostman@gmail.com', '$2a$04$YvFJVIfcMQx2skXOXt23TO7FMCJbPNtf5ztzrveupC7bW1PzZXqpW', '', 'user', NULL, '2022-11-27 02:20:34', '2022-11-27 02:20:34'),
(14, 'test handler postman1', 'CEO', 'test_handlerPostman@gmail.com', '$2a$04$cDoUPNqPWGNVQobPMKarN.fOH4xlXPL7.4Uq0IP.JcECIje22le92', '', 'user', NULL, '2022-11-27 02:22:04', '2022-11-27 02:22:04'),
(15, 'tes token', 'tester', 'tes@gmail.com', '$2a$04$6KsdYX.srCX1tFL4UJ4daOtBI8PfJIn9W1izseHA9JS9W.wKYYdAS', '', 'user', NULL, '2022-12-03 12:40:29', '2022-12-03 12:40:29'),
(16, 'tes token', 'tester', 'tes@gmail.com', '$2a$04$cUjQCQ7e38C0xGqf71YAdewBXcEQpUCQ6a93oklZTqrYsrIPI0XM6', '', 'user', NULL, '2022-12-12 09:41:23', '2022-12-12 09:41:23'),
(17, 'muhammad nur alam', 'Rider', 'kucobaberdikari98@gmail.com', '$2a$04$CIr5BZ4BTaWGTTvSpPe/weHGKMUTDesiwKtsu1SJK0CljvstApzaO', '', 'user', NULL, '2023-01-14 16:25:04', '2023-01-14 16:25:04'),
(20, 'master_admin', 'administrator', 'admin@admin.com', '$2a$04$bUA1xnx6w319rN4OP0m97O/9fi2uVG99t0XvoW8GN3bX0HR7gJN2u', 'images/20-project-thumbnail-1.jpg', 'admin', NULL, '2023-01-20 17:09:35', '2023-01-21 11:48:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `campaign_images`
--
ALTER TABLE `campaign_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `campaign_images`
--
ALTER TABLE `campaign_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
