-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2024 pada 17.47
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kemenlu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `direktorats`
--

CREATE TABLE `direktorats` (
  `id_direktorat` bigint(20) UNSIGNED NOT NULL,
  `nama_direktorat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `direktorats`
--

INSERT INTO `direktorats` (`id_direktorat`, `nama_direktorat`, `created_at`, `updated_at`) VALUES
(1, 'Aspasaf', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(2, 'Amerop', '2024-08-26 04:38:34', '2024-08-26 04:38:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kawasans`
--

CREATE TABLE `kawasans` (
  `id_kawasan` bigint(20) UNSIGNED NOT NULL,
  `id_direktorat` bigint(20) UNSIGNED NOT NULL,
  `nama_kawasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kawasans`
--

INSERT INTO `kawasans` (`id_kawasan`, `id_direktorat`, `nama_kawasan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Asia Timur', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(2, 1, 'Asia Tenggara', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(3, 1, 'Asia Selatan & Tengah', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(4, 2, 'Amerika 1', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(5, 2, 'Eropa 1', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(6, 2, 'Eropa 2', '2024-08-26 04:38:34', '2024-08-26 04:38:34'),
(7, 2, 'Amerika 2', '2024-08-26 04:38:34', '2024-08-26 04:38:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_26_112757_direktorat', 1),
(6, '2024_08_26_113046_kawasan', 1),
(7, '2024_08_26_114926_negara', 1),
(8, '2024_08_26_133157_add_column_to_table_name', 2),
(9, '2024_08_26_133241_add_latitude_to_negaras', 2),
(10, '2024_08_26_133418_add_latitude_to_negaras_table', 3),
(11, '2024_08_26_133458_add_latitude_to_negaras_table', 3),
(12, '2024_08_26_133921_add_latitude_to_negaras_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `negaras`
--

CREATE TABLE `negaras` (
  `id_negara` bigint(20) UNSIGNED NOT NULL,
  `id_kawasan` bigint(20) UNSIGNED NOT NULL,
  `id_direktorat` bigint(20) UNSIGNED NOT NULL,
  `nama_negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_negara` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `negaras`
--

INSERT INTO `negaras` (`id_negara`, `id_kawasan`, `id_direktorat`, `nama_negara`, `kode_negara`, `created_at`, `updated_at`, `latitude`, `longitude`) VALUES
(1, 1, 1, 'REP.RAKYAT CINA', 'CN', '2024-08-26 04:38:35', '2024-08-26 04:38:35', 34.5119, 102.749),
(2, 2, 1, 'MALAYSIA', 'MY', '2024-08-26 04:38:35', '2024-08-26 04:38:35', 3.96417, 102.809),
(3, 3, 1, 'INDIA', 'IN', '2024-08-26 04:38:35', '2024-08-26 04:38:35', 22.9554, 79.1394),
(4, 4, 2, 'AMERIKA SERIKAT', 'US', '2024-08-26 04:38:35', '2024-08-26 04:38:35', 40.8113, -101.3),
(5, 5, 2, 'BELANDA', 'NL', '2024-08-26 04:38:35', '2024-08-26 04:38:35', 52.5528, 5.70131),
(6, 6, 2, 'JERMAN', 'DE', '2024-08-26 04:38:35', '2024-08-26 04:38:35', 51.0432, 10.6652),
(7, 7, 2, 'ARGENTINA', 'RA', '2024-08-26 04:38:35', '2024-08-26 04:38:35', -34.9712, -65.4211);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `direktorats`
--
ALTER TABLE `direktorats`
  ADD PRIMARY KEY (`id_direktorat`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kawasans`
--
ALTER TABLE `kawasans`
  ADD PRIMARY KEY (`id_kawasan`),
  ADD KEY `kawasans_id_direktorat_foreign` (`id_direktorat`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `negaras`
--
ALTER TABLE `negaras`
  ADD PRIMARY KEY (`id_negara`),
  ADD KEY `negaras_id_kawasan_foreign` (`id_kawasan`),
  ADD KEY `negaras_id_direktorat_foreign` (`id_direktorat`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `direktorats`
--
ALTER TABLE `direktorats`
  MODIFY `id_direktorat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kawasans`
--
ALTER TABLE `kawasans`
  MODIFY `id_kawasan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `negaras`
--
ALTER TABLE `negaras`
  MODIFY `id_negara` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kawasans`
--
ALTER TABLE `kawasans`
  ADD CONSTRAINT `kawasans_id_direktorat_foreign` FOREIGN KEY (`id_direktorat`) REFERENCES `direktorats` (`id_direktorat`);

--
-- Ketidakleluasaan untuk tabel `negaras`
--
ALTER TABLE `negaras`
  ADD CONSTRAINT `negaras_id_direktorat_foreign` FOREIGN KEY (`id_direktorat`) REFERENCES `direktorats` (`id_direktorat`),
  ADD CONSTRAINT `negaras_id_kawasan_foreign` FOREIGN KEY (`id_kawasan`) REFERENCES `kawasans` (`id_kawasan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
