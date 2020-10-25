-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2020 at 03:35 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/DlOde9jkSBTL4skZeDJa4vVjkLx54ySnrxiwsffL.jpeg', NULL, '2020-10-19 21:39:52', '2020-10-19 21:39:52'),
(2, 2, 'assets/gallery/E1rcgrHp4AfMVKuRppHGeYIQuvCiwHuin8QeiRxf.jpeg', NULL, '2020-10-19 21:40:05', '2020-10-20 00:17:53'),
(3, 1, 'assets/gallery/MgrfquTlwbgyprJkUkvmlEhrS9OVJh5PZCRALINh.jpeg', '2020-10-19 21:48:36', '2020-10-19 21:41:34', '2020-10-19 21:48:36'),
(4, 3, 'assets/gallery/14s3jjRasONI12ATnca97W5iMbYlYEE7mGQeW2BE.jpeg', NULL, '2020-10-20 00:18:10', '2020-10-20 00:18:19'),
(5, 4, 'assets/gallery/tpfOMJEyuWbVfwHtQPu6IdLGQsgh4PxMm68CFBxT.jpeg', NULL, '2020-10-20 00:19:11', '2020-10-20 00:19:11'),
(6, 1, 'assets/gallery/HbCDFrhKYQrlDMNKrUouychC4bGaxmr3xfxGXjTR.jpeg', NULL, '2020-10-21 21:41:32', '2020-10-21 21:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_19_030738_create_travel_packages_table', 1),
(5, '2020_10_19_032126_create_galleries_table', 2),
(6, '2020_10_19_032812_create_transactions_table', 3),
(7, '2020_10_19_033843_create_transaction_details_table', 4),
(8, '2020_10_19_041332_add_roles_field_to_users_table', 5),
(9, '2020_10_19_051048_add_username_field_to_users_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 190, 290, 'SUCCESS', NULL, NULL, '2020-10-19 23:50:05'),
(2, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:17', '2020-10-21 23:25:20', '2020-10-22 00:21:17'),
(3, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:18', '2020-10-21 23:25:55', '2020-10-22 00:21:18'),
(4, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:13', '2020-10-21 23:28:26', '2020-10-22 00:21:13'),
(5, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:14', '2020-10-21 23:29:04', '2020-10-22 00:21:14'),
(6, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:15', '2020-10-21 23:30:52', '2020-10-22 00:21:15'),
(7, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:11', '2020-10-21 23:34:07', '2020-10-22 00:21:11'),
(8, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:16', '2020-10-21 23:35:09', '2020-10-22 00:21:16'),
(9, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:16', '2020-10-21 23:45:54', '2020-10-22 00:21:16'),
(10, 1, 3, 0, 500, 'IN_CART', '2020-10-22 00:21:09', '2020-10-22 00:00:17', '2020-10-22 00:21:09'),
(11, 1, 3, 190, 1190, 'PENDING', NULL, '2020-10-22 00:10:36', '2020-10-22 00:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'yogapradana', 'ID', 1, '2020-10-20', NULL, NULL, NULL),
(2, 9, 'yogapradana', 'ID', 0, '2025-10-22', NULL, '2020-10-21 23:45:54', '2020-10-21 23:45:54'),
(3, 10, 'yogapradana', 'ID', 0, '2025-10-22', NULL, '2020-10-22 00:00:17', '2020-10-22 00:00:17'),
(4, 11, 'yogapradana', 'ID', 0, '2025-10-22', NULL, '2020-10-22 00:10:36', '2020-10-22 00:10:36'),
(5, 11, 'yanuarrahmat', 'ID', 1, '2020-09-02', '2020-10-22 00:15:24', '2020-10-22 00:13:27', '2020-10-22 00:15:24'),
(6, 11, 'yanuarrahmat', 'ID', 1, '2021-01-01', NULL, '2020-10-22 00:16:45', '2020-10-22 00:16:45'),
(7, 11, 'yanuarrahmat', 'ID', 1, '2021-01-01', '2020-10-22 00:16:49', '2020-10-22 00:16:46', '2020-10-22 00:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'DERATAN, BALI', 'deratan-bali', 'INDONESIA', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung \r\nRegency that includes the neighbouring small island of Nusa Lembongan. The Badung \r\nStrait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum \r\naltitude of 524 metres. It is drier than the nearby island of Bali.\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of \r\nNusa Lembongan. The Badung Strait separates the island and Bali.', 'Tari Kecak', 'Bahasa Indonesia', 'Local Foods', '2020-10-19', '3D', 'Open Trip', 500, NULL, '2020-10-19 00:58:00', '2020-10-20 00:15:28'),
(2, 'BROMO, MALANG', 'bromo-malang', 'INDONESIA', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung \r\nRegency that includes the neighbouring small island of Nusa Lembongan. The Badung \r\nStrait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum \r\naltitude of 524 metres. It is drier than the nearby island of Bali.\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of \r\nNusa Lembongan. The Badung Strait separates the island and Bali.', 'Reog', 'Jawa', 'Bakso', '2020-10-13', '2D', 'Open Trip', 200, NULL, '2020-10-19 20:23:36', '2020-10-20 00:16:22'),
(3, 'NUSA PENIDA', 'nusa-penida', 'INDONESIA', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung \r\nRegency that includes the neighbouring small island of Nusa Lembongan. The Badung \r\nStrait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum \r\naltitude of 524 metres. It is drier than the nearby island of Bali.\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of \r\nNusa Lembongan. The Badung Strait separates the island and Bali.', 'Tari Kecak', 'Bahasa Indonesia', 'Local Foods', '2020-10-20', '2D', 'Open Trip', 200, NULL, '2020-10-20 00:16:58', '2020-10-20 00:16:58'),
(4, 'DUBAI', 'dubai', 'MIDDLE EAST', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung \r\nRegency that includes the neighbouring small island of Nusa Lembongan. The Badung \r\nStrait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum \r\naltitude of 524 metres. It is drier than the nearby island of Bali.\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of \r\nNusa Lembongan. The Badung Strait separates the island and Bali.', 'Samba', 'English', 'Canai', '2020-10-20', '2D', 'Open Trip', 200, NULL, '2020-10-20 00:17:34', '2020-10-20 00:17:34'),
(5, 'KAWAH IJEN', 'kawah-ijen', 'BANYUWANGI', 'Nusa Penida is an island southeast of Indonesia’s island Bali and a district of Klungkung \r\nRegency that includes the neighbouring small island of Nusa Lembongan. The Badung \r\nStrait separates the island and Bali. The interior of Nusa Penida is hilly with a maximum \r\naltitude of 524 metres. It is drier than the nearby island of Bali.\r\nBali and a district of Klungkung Regency that includes the neighbouring small island of \r\nNusa Lembongan. The Badung Strait separates the island and Bali.', 'Tari Gandrung', 'Osing', 'Nasi Tempong', '2020-10-20', '3D', 'Open Trip', 300, '2020-10-20 00:20:36', '2020-10-20 00:20:04', '2020-10-20 00:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'Yanuar', 'yanuar.ryp@gmail.com', NULL, 'yanuar123', NULL, NULL, NULL, 'ADMIN', ''),
(2, 'Yanuar Rahmat', 'yanuarjombang98@gmail.com', '2020-10-18 22:00:04', '$2y$10$ZR3ljV7YbLaQ7tfLp59Z8egATSVBRAMu0.dhUxIRFmZOnet5zmSiy', NULL, '2020-10-18 21:57:59', '2020-10-18 22:00:04', 'USER', 'yanuarrahmat'),
(3, 'Yoga Pradana', 'yoga@gmail.com', '2020-10-18 22:20:08', '$2y$10$oYF/SHUafUzpQPW8b3vMF.icu4soLqH32/OHNBxnUefPXY410pKlC', NULL, '2020-10-18 22:19:35', '2020-10-18 22:20:08', 'ADMIN', 'yogapradana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
