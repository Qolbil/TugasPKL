-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2019 pada 20.11
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `db_jawaban`
--

CREATE TABLE `db_jawaban` (
  `jwb_id` int(100) NOT NULL,
  `jwb_userid` int(100) NOT NULL,
  `jwb_tgl` datetime NOT NULL,
  `jwb_1` varchar(10) NOT NULL,
  `jwb_2` varchar(10) NOT NULL,
  `jwb_3` varchar(10) NOT NULL,
  `jwb_4` varchar(10) NOT NULL,
  `jwb_5` varchar(10) NOT NULL,
  `jwb_6` varchar(10) NOT NULL,
  `jwb_7` varchar(10) NOT NULL,
  `jwb_8` varchar(10) NOT NULL,
  `jwb_9` varchar(10) NOT NULL,
  `jwb_10` varchar(10) NOT NULL,
  `jwb_11` varchar(10) NOT NULL,
  `jwb_12` varchar(10) NOT NULL,
  `jwb_13` varchar(10) NOT NULL,
  `jwb_14` varchar(10) NOT NULL,
  `jwb_15` varchar(10) NOT NULL,
  `jwb_16` varchar(10) NOT NULL,
  `jwb_17` varchar(10) NOT NULL,
  `jwb_18` varchar(10) NOT NULL,
  `jwb_19` varchar(10) NOT NULL,
  `jwb_20` varchar(10) NOT NULL,
  `jwb_21` varchar(10) NOT NULL,
  `jwb_22` varchar(10) NOT NULL,
  `jwb_23` varchar(10) NOT NULL,
  `jwb_24` varchar(10) NOT NULL,
  `jwb_27` varchar(10) NOT NULL,
  `jwb_28` varchar(10) NOT NULL,
  `jwb_29` varchar(10) NOT NULL,
  `jwb_30` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `soal_id` int(100) NOT NULL,
  `soal_pertanyaan` varchar(100) NOT NULL,
  `soal_jawaban` int(11) NOT NULL,
  `soal_type` enum('+','-') NOT NULL,
  `soal_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`soal_id`, `soal_pertanyaan`, `soal_jawaban`, `soal_type`, `soal_status`) VALUES
(1, 'dimana ?', 0, '+', 1),
(2, 'ngapain ?', 0, '+', 1),
(3, 'apakah ?', 0, '+', 1),
(4, 'sebutkan ?', 0, '+', 1),
(5, 'bagaimana ?', 0, '+', 1),
(6, 'sebegaimana ?', 0, '+', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$zNg4zKffo1cGr13FKYwERuk7bJvaIjZc0HI3f/RS5zzbrzFNhczM.', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1551756278, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '::1', 'qolbil', '$2y$10$KZeAjqSxPR/ZpB2q5lBJceG0gkXcCTW.eKBgTHZZ7GJwVQGqa0JY6', 'qolbilatiq1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1546841518, 1548736448, 1, 'qolbil', 'atiq', 'polinema', NULL),
(3, '::1', 'izzul', '$2y$10$xsWOgq2Vwh4DVqdNjmCPIu/tvNCDUPZYzPSLOOzH7EqtD/1HOSErK', 'izzul123@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1546943594, NULL, 1, 'izzul', 'fikri', 'polinema', NULL),
(4, '::1', 'alwan', '$2y$10$LEGV0kfxQeEqqDKkB.I8NufeR7nzHg7AS5SPG3DNnDWSZbxZwBTJG', 'Alwan@gk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1547094972, NULL, 1, 'alwan', 'gk', 'polinema', NULL),
(5, '::1', 'fajar', '$2y$10$P1JtrzIiT7a8.sTHMjUYfe5Wh7F.8jfMF3aXrQdQ2ZZxiYLTCXKfq', 'fajar_lukman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1547095264, NULL, 1, 'fajar', 'lukman', 'polinema', NULL),
(6, '::1', 'awang', '$2y$10$gQnXizOlkkApLnUcnIP7m.EZ68ATwEug07K1iQ7mT8MKpZ5GLg/TS', 'awang@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1547095291, NULL, 1, 'awang', 'riza', 'polinema', NULL),
(7, '::1', 'abror', '$2y$10$wprW3dnwd1w47mQjtc0za.2ghOB54BhZ7AZlKtzfyw7s6qLokIqs2', 'abror@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1547095396, NULL, 1, 'abror', 'rahma', 'polinema', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(6, 5, 2),
(7, 6, 2),
(8, 7, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `db_jawaban`
--
ALTER TABLE `db_jawaban`
  ADD PRIMARY KEY (`jwb_id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`soal_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `db_jawaban`
--
ALTER TABLE `db_jawaban`
  MODIFY `jwb_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `soal_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
