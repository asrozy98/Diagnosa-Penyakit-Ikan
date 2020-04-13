-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2020 pada 01.07
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diagnosa_ikan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kd_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kd_gejala`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'G01', 'Kurang nafsu makan', NULL, NULL),
(2, 'G02', 'Efisiensi pakan buruk', NULL, NULL),
(3, 'G03', 'Perubahan Warna kulit', NULL, NULL),
(4, 'G04', 'Kelainan bentuk tulang', NULL, NULL),
(5, 'G05', 'Perut kembung', NULL, NULL),
(6, 'G06', 'Rentan penyakit', NULL, NULL),
(7, 'G07', 'Sirip rontok', NULL, NULL),
(8, 'G08', 'Mata menonjol ', NULL, NULL),
(9, 'G09', 'Megap-megap/ lemas', NULL, NULL),
(10, 'G10', 'Tumbuh lambat', NULL, NULL),
(11, 'G11', 'Pendarahan kulit', NULL, NULL),
(12, 'G12', 'Iritasi\r\n', NULL, NULL),
(13, 'G13', 'Luka dibagian tubuh', NULL, NULL),
(14, 'G14', 'Berenang dipermukaan', NULL, NULL),
(15, 'G15', 'Ada benjolan dan pendarahan', NULL, NULL),
(16, 'G16', 'Adanya borok', NULL, NULL),
(17, 'G17', 'Telur gagal menetas', NULL, NULL),
(18, 'G18', 'Munculnya noktah benang-benang halus pada tubuh ikan', NULL, NULL),
(19, 'G19', 'Adanya lapisan kapur pada telur', NULL, NULL),
(20, 'G20', 'Ikan kehilangan sebagian tubuh posteriornya', NULL, NULL),
(21, 'G21', 'Kondisi melemah', NULL, NULL),
(22, 'G22', 'Sering menggosok-gosokan tubuhnya di tepi atau dasar kolam', NULL, NULL),
(23, 'G23', 'Tubuhnya menjadi kurus', NULL, NULL),
(24, 'G24', 'Tampak bintik putih', NULL, NULL),
(25, 'G25', 'Nampak kista putih pada kulit dan insang ikan', NULL, NULL),
(26, 'G26', 'Ikan tampak kekurangan oksigen', NULL, NULL),
(27, 'G27', 'Terdapat bercak seperti kapas yang menempel dikuli, sisik, atau sirip', NULL, NULL),
(28, 'G28', 'Adanya bercak pada tubuh ikan', NULL, NULL),
(29, 'G29', 'Terjadi inflamasi', NULL, NULL),
(30, 'G30', 'Pembengkakan di perut', NULL, NULL),
(31, 'G31', 'Mata pucat', NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_01_24_120019_create_pencegahan_table', 1),
(6, '2020_01_24_120101_create_penyakit_table', 1),
(7, '2020_01_24_120128_create_rule_table', 1),
(8, '2020_01_24_120146_create_solusi_table', 1),
(9, '2020_01_24_115850_create_gejala_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyebab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama_penyakit`, `penyebab`, `created_at`, `updated_at`) VALUES
(1, 'P001', 'Kekurangan nutrisi', 'Kurang napsu makan,efisiensi pakan buruk, perubahan warna kulit, kelainan bentuk tulang, perut kembung, rentan penyakit, sirip rontok, mata menonjol,  megap-megap/lemas, tumbuh lambat, pendarahan kulit, iritasi', NULL, NULL),
(2, 'P002', 'Neoplasia', 'Megap-megap/lemas, berenang di permukaan, kurang nafsu makan, ada benjolan dan pendarahan', NULL, NULL),
(3, 'P003', 'Penyakit bakteri Aeromonas sp. Dan Pseudomonas sp', 'Adanya borok, megap-megap/lemas, pendarahan, warna permukaan tubuh menjadi merah darah, sirip rontok', NULL, NULL),
(4, 'P004', 'Penyakit bakteri Enterobacter sp., Chromobacter sp., Actinobacter sp', 'Megap-megap/lemas, luka dibagian tubuh', NULL, NULL),
(5, 'P005', 'Penyakit jamur Saprolegnia sp', 'Telur gagal menetas, munculnya noktah benang-benang halus pada tubuh ikan, megap-megap/lemas, adanya lapisan kapur pada telur', NULL, NULL),
(6, 'P006', 'Penyakit jamur Achliya sp.', 'Adanya borok pada ikan, ikan kehilangan sebagian tubuh posteriornya, megap-megap/lemas', NULL, NULL),
(7, 'P007', 'Penyakit Protozoa Ichthyophthirius multifiliis (bintik putih)', 'Kurang nafsu makan, kondisi melemah, sering menggosok-gosokan tubuhnya ditepi atau dasar kolam', NULL, NULL),
(8, 'P008', 'Penyakit Protozoa Trichodina sp', 'Megap-megap/lemas, warna tubuh pucat, sering menggosokkan tubuhnya pada dasar kolam, nafsu makan berkurang, tubuhnya menjadi kurus, tampak bintik putih', NULL, NULL),
(9, 'P009', 'Penyakit Protozoa Henneguya sp.', 'Megap-megap/lemas, nampak kista putih pada kulit dan insang ikan, ikan tampak kekurangan oksigen', NULL, NULL),
(10, 'P010', 'Penyakit Protozoa Spistylis sp', 'Terdapat bercak seperti kapas yang menempel dikulit, sisik, atau sirip', NULL, NULL),
(11, 'P011', 'Penyakit yang disebabkan oleh Trematoda Dactylogyrussp', 'Ikan berenang dipermukaan, megap-megap/lemas, ikan tampak kekurangan oksigen, terjadi pendarahan', NULL, NULL),
(12, 'P012', 'Penyakit yang disebabkan oleh Trematoda Gyrodactylus sp', 'Ikan berenang dipermukaan, adanya bercak pada tubuh ikan, sirip rontok', NULL, NULL),
(13, 'P013', 'Penyakit yang disebabkan oleh nematoda', 'Kurang nafsu makan, terjadi inflamasi, pendarahan, pembengkakan di perut, megap-megap/lemas', NULL, NULL),
(14, 'P014', 'Penyakit yang disebabkan oleh copepoda Argulus sp', 'Megap-megap/lemas, terjadi pendarahan', NULL, NULL),
(15, 'P015', 'Penyakit yang disebabkan oleh Lernea sp', 'Adanya bekas tusukan, terjadi pendarahan', NULL, NULL),
(16, 'P016', 'Penyakit yang disebabkan oleh virus', 'Terjadi pendarahan, bercak putih, mata pucat, terjadinya borok di tubuh ikan, megap-megap/lemas', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rule`
--

CREATE TABLE `rule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maka_penyakit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rule`
--

INSERT INTO `rule` (`id`, `rule`, `maka_penyakit`, `created_at`, `updated_at`) VALUES
(1, 'G01ANDG02ANDG03ANDG04ANDG05ANDG06ANDG07ANDG08ANDG09ANDG10ANDG11ANDG12', 'P001', NULL, NULL),
(2, 'G01ANDG09ANDG14ANDG15', 'P002', NULL, NULL),
(3, 'G07ANDG09ANDG11ANDG12ANDG16', 'P003', NULL, NULL),
(4, 'G09ANDG13', 'P004', NULL, NULL),
(5, 'G09ANDG17ANDG18ANDG19', 'P005', NULL, NULL),
(6, 'G09ANDG16ANDG20', 'P006', NULL, NULL),
(7, 'G01ANDG21ANDG22', 'P007', NULL, NULL),
(8, 'G01ANDG03G09ANDG22ANDG23ANDG24', 'P008', NULL, NULL),
(9, 'G09ANDG25ANDG26', 'P009', NULL, NULL),
(10, 'G09ANDG16ANDG27', 'P010', NULL, NULL),
(11, 'G09ANDANDG11G14ANDG26', 'P011', NULL, NULL),
(12, 'G07ANDG14ANDG28', 'P012', NULL, NULL),
(13, 'G01ANDG09ANDG11ANDG29ANDG30', 'P013', NULL, NULL),
(14, 'G09ANDG11', 'P014', NULL, NULL),
(15, 'G11ANDG13', 'P015', NULL, NULL),
(16, 'G09ANDG11ANDG16G24ANDG31', 'P016', NULL, NULL);

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
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
