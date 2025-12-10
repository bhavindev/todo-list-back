-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2025 at 06:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Dotodo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_03_104532_create_personal_access_tokens_table', 1),
(5, '2025_12_03_104708_create_tasks_table', 1),
(6, '2025_12_03_124101_add_priority_to_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'dbc616e9dd83a5addf4f0ca99240388ccda799015c7d4861e0960e96d1dff13c', '[\"*\"]', '2025-12-03 05:55:27', NULL, '2025-12-03 05:32:54', '2025-12-03 05:55:27'),
(2, 'App\\Models\\User', 1, 'auth_token', '98680017aee834cb6c1a6af090c5594b47b0d85c2137244151c2eeaf3e91e41f', '[\"*\"]', NULL, NULL, '2025-12-03 05:33:07', '2025-12-03 05:33:07'),
(3, 'App\\Models\\User', 2, 'auth_token', '3203a5cf6b46ae3f22e161e138fd701a461b47172fca25482ee8b9e7aa7b313e', '[\"*\"]', NULL, NULL, '2025-12-03 05:52:59', '2025-12-03 05:52:59'),
(4, 'App\\Models\\User', 2, 'auth_token', 'cd9ebe7adea48fcc10641b0972aef2f85cfaf0bdf0bebcbc54ed2c260f996209', '[\"*\"]', '2025-12-03 06:04:04', NULL, '2025-12-03 05:53:29', '2025-12-03 06:04:04'),
(5, 'App\\Models\\User', 2, 'auth_token', '416cc4b85d5ff5247bf3d1ff503b4054aa5f50f2953f48058a5e99f56c8fe468', '[\"*\"]', '2025-12-03 06:02:00', NULL, '2025-12-03 06:01:54', '2025-12-03 06:02:00'),
(6, 'App\\Models\\User', 2, 'auth_token', 'b69511d8d63f69774fdd86ce5dc171af2ec03b8c6f4eecbb40a855c3bfc3cdbe', '[\"*\"]', '2025-12-03 06:03:08', NULL, '2025-12-03 06:03:02', '2025-12-03 06:03:08'),
(7, 'App\\Models\\User', 2, 'auth_token', '9c5963278aa4ca79429fcf5f36b092f129846db0c033fe319eca2d8e99a40a68', '[\"*\"]', NULL, NULL, '2025-12-03 06:04:08', '2025-12-03 06:04:08'),
(8, 'App\\Models\\User', 2, 'auth_token', 'd649700c9c26e3ff5ed9cad64eccc5a0d5f058dc3348c0925e1b4fdcdbba2b30', '[\"*\"]', '2025-12-03 07:20:40', NULL, '2025-12-03 06:04:09', '2025-12-03 07:20:40'),
(9, 'App\\Models\\User', 2, 'auth_token', '3c841888044dd9fc2afe68ea4f775a13e5f5599e640949a85034c9013d4d4bce', '[\"*\"]', '2025-12-03 07:16:55', NULL, '2025-12-03 06:05:24', '2025-12-03 07:16:55'),
(10, 'App\\Models\\User', 2, 'auth_token', '369c14948f87421feca0c873eb151b291d64ba3b87e2f51b10fc6d16baac3cdf', '[\"*\"]', '2025-12-03 06:47:26', NULL, '2025-12-03 06:16:56', '2025-12-03 06:47:26'),
(11, 'App\\Models\\User', 2, 'auth_token', 'fddbf2cf0a9faf4c89f6ff337063e99ed2a6b699db1f67f4a694ce854a760e9b', '[\"*\"]', '2025-12-03 06:46:58', NULL, '2025-12-03 06:24:57', '2025-12-03 06:46:58'),
(12, 'App\\Models\\User', 2, 'auth_token', 'aed73ffac253e9571ed73b08ada8a4740ce18236e10a13dba563423a6d4ec7e9', '[\"*\"]', '2025-12-03 06:55:57', NULL, '2025-12-03 06:46:05', '2025-12-03 06:55:57'),
(13, 'App\\Models\\User', 2, 'auth_token', '213f93cd6edc3f871bbccc65a1b9a97e42e4b6b166e7a4ea423ba6998399a092', '[\"*\"]', NULL, NULL, '2025-12-03 06:47:52', '2025-12-03 06:47:52'),
(14, 'App\\Models\\User', 2, 'auth_token', 'f8257f1369296aee8f23c26c7dccb98ac1fe727fd5b8c1d8ce53be3cfd41d81f', '[\"*\"]', NULL, NULL, '2025-12-03 06:52:28', '2025-12-03 06:52:28'),
(15, 'App\\Models\\User', 2, 'auth_token', '268b9a436d24d79166e3b795f2952eb91b76fd8d1c7d03751846e41b0d4ef481', '[\"*\"]', NULL, NULL, '2025-12-03 06:54:08', '2025-12-03 06:54:08'),
(16, 'App\\Models\\User', 2, 'auth_token', '17ee6c8c284b702490c9d12a2e82faa88711a3111aa27f4e0388dd0da2a965a5', '[\"*\"]', '2025-12-03 07:01:36', NULL, '2025-12-03 06:54:53', '2025-12-03 07:01:36'),
(17, 'App\\Models\\User', 1, 'auth_token', 'aa59e6c4405551e7661dc787c5d87b1121755c736ba99c3ed8ab88ccf16e077a', '[\"*\"]', '2025-12-03 06:57:25', NULL, '2025-12-03 06:55:50', '2025-12-03 06:57:25'),
(18, 'App\\Models\\User', 3, 'auth_token', 'e4148a454fcf70b00b1af763d911e68017e9ad35ef051fe8f8ce9ade91022d58', '[\"*\"]', NULL, NULL, '2025-12-03 07:01:48', '2025-12-03 07:01:48'),
(19, 'App\\Models\\User', 2, 'auth_token', '9e3f586ec0ce5f7cc4349a43aa152287e403eb00cd23d982fa8f9f77810d34fd', '[\"*\"]', '2025-12-03 07:11:03', NULL, '2025-12-03 07:06:16', '2025-12-03 07:11:03'),
(20, 'App\\Models\\User', 4, 'auth_token', '1032b155e2374c3f2efafdcd75b2351f7ce88da9c9375fb1a899bc94725d3c07', '[\"*\"]', NULL, NULL, '2025-12-03 07:08:07', '2025-12-03 07:08:07'),
(21, 'App\\Models\\User', 5, 'auth_token', '575823af00c37c6cb057518eb8e5f5169db357177b00dd177c814935a8f17fcd', '[\"*\"]', NULL, NULL, '2025-12-03 07:11:31', '2025-12-03 07:11:31'),
(22, 'App\\Models\\User', 6, 'auth_token', '624fabc63681334796b2bfa8627157c067191177da49d42d4e2b625f26b59138', '[\"*\"]', '2025-12-03 07:17:28', NULL, '2025-12-03 07:13:45', '2025-12-03 07:17:28'),
(23, 'App\\Models\\User', 3, 'auth_token', 'e19cc2ab23607a90ac6fc96b0e480f3acf72447bb25f909bd67638faed0117e8', '[\"*\"]', '2025-12-03 07:18:36', NULL, '2025-12-03 07:17:03', '2025-12-03 07:18:36'),
(24, 'App\\Models\\User', 2, 'auth_token', '0c758842558843b6d9394f4f59ad8195126ce9063685493379135f7bf96163b9', '[\"*\"]', '2025-12-03 23:21:13', NULL, '2025-12-03 07:17:38', '2025-12-03 23:21:13'),
(25, 'App\\Models\\User', 3, 'auth_token', '7149e2cde6d919ba8970ec7ee60b787035ab887b48d7cd98e9433a6bfc3916cd', '[\"*\"]', '2025-12-03 07:19:33', NULL, '2025-12-03 07:18:54', '2025-12-03 07:19:33'),
(26, 'App\\Models\\User', 3, 'auth_token', 'fbff1ac00528f705812e3bf48b91ebdcfbac3719bed8c51ec3ced44946a428eb', '[\"*\"]', '2025-12-03 22:14:15', NULL, '2025-12-03 07:20:29', '2025-12-03 22:14:15'),
(27, 'App\\Models\\User', 7, 'auth_token', '2bdf426c3701fc6b2c46e99a3e597fbcf58c58c637a2fd6a04f2f6f842e879a9', '[\"*\"]', NULL, NULL, '2025-12-03 22:07:58', '2025-12-03 22:07:58'),
(28, 'App\\Models\\User', 7, 'auth_token', '6285b7f5dc211c904d42bff251cac120680c09e9761c120e1e81f2347ebe5f9f', '[\"*\"]', '2025-12-03 22:11:05', NULL, '2025-12-03 22:08:23', '2025-12-03 22:11:05'),
(29, 'App\\Models\\User', 7, 'auth_token', 'c33ae3dcff941df01f72e0d027fff2a47bea8ee9ccaac0f48e744f09fa074e64', '[\"*\"]', '2025-12-03 23:01:31', NULL, '2025-12-03 22:15:12', '2025-12-03 23:01:31'),
(30, 'App\\Models\\User', 7, 'auth_token', '1f2055e41df55e03b756ed79dc62db6c5b7cb433b1b4367bedb6946664fb21ef', '[\"*\"]', '2025-12-03 22:51:25', NULL, '2025-12-03 22:29:56', '2025-12-03 22:51:25'),
(31, 'App\\Models\\User', 2, 'auth_token', 'b9de955a4c471c4170b4918e807b5c560234c283da23644e23c3ede69aca5b5c', '[\"*\"]', '2025-12-03 23:02:10', NULL, '2025-12-03 22:43:55', '2025-12-03 23:02:10'),
(32, 'App\\Models\\User', 8, 'auth_token', 'e987ef9da890b085495db208cb732c1447900fe0d843703bf0be0ff207a25f1c', '[\"*\"]', '2025-12-03 23:23:00', NULL, '2025-12-03 23:22:27', '2025-12-03 23:23:00'),
(33, 'App\\Models\\User', 2, 'auth_token', 'cedafff505209e2e31ce8ab1764a82cf87e51f938720b250802eeedb43a6275f', '[\"*\"]', '2025-12-03 23:26:45', NULL, '2025-12-03 23:25:06', '2025-12-03 23:26:45'),
(34, 'App\\Models\\User', 9, 'auth_token', '3a895b151e1feab2e509bdeb6021a9ed852de4df87f1c80e441efdd1b78065ff', '[\"*\"]', '2025-12-03 23:39:06', NULL, '2025-12-03 23:38:17', '2025-12-03 23:39:06'),
(35, 'App\\Models\\User', 9, 'auth_token', '425eb2864347c4cc0c4aabc71fa13f2a333b7aca117557c44fb6064a384c9ba7', '[\"*\"]', '2025-12-03 23:39:28', NULL, '2025-12-03 23:39:28', '2025-12-03 23:39:28');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2RV32NlHAo8s0WvVXIfTR66GMpRNfYwqX88MqYVL', NULL, '127.0.0.1', 'PostmanRuntime/7.29.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUVrdUFFQk5FYklmRFZ1WGU0cGhkTVY1VFBMdzlIeTFWdk9FQ0pGYyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8wNjY2MWZlYTAwOGMubmdyb2stZnJlZS5hcHAiO3M6NToicm91dGUiO047fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764766221),
('dst8JuSf0P2hsv0qOmybsG3NTCVunkYsO8nS6EMB', NULL, '127.0.0.1', 'PostmanRuntime/7.29.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOVJFQU5QVGtoek84dUNldlY3Qm55YTlxWTlzSWRLTFJBWXoxZFZEeSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly81ODkxYzZlZDU3MjIubmdyb2stZnJlZS5hcHAiO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UTBCVlM1VzlrbEphc3Y4cSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764764076),
('Du8n2O6TuzW5o1GBr9qNwSYSkjsw2e7UJIxYJWML', NULL, '127.0.0.1', 'PostmanRuntime/7.29.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREh0RGN6YTg2ZlRidkZxMFcxZWowNmtuS1dnNjdKcmxRSTExQVlQZyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8wNjY2MWZlYTAwOGMubmdyb2stZnJlZS5hcHAiO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6UTBCVlM1VzlrbEphc3Y4cSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764764205),
('HWM5Akch3AMKC4cEtx55m86DPWFFFiIpTmaEjeU6', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR0hWSGFLSHEzcDR0SHhza21JYUo4Sk5lOGJsOHpBaXdXZUdzUU54byI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7czo1OiJyb3V0ZSI7czoyNzoiZ2VuZXJhdGVkOjpSV2diZktyNTZyenJ3eDVuIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764761992),
('wRXxtvlXSqkGYMfm8x0RbK4vDrGOY1OAxT5SrCgi', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ252eFY2OFpKZjhlQWdlOVRObGhVMXpqVzBCakNZNVFtWUo4SWVjVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly81ODkxYzZlZDU3MjIubmdyb2stZnJlZS5hcHAiO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6NzVCdGFWU0FyQzZEbDBUSyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764762363),
('wXiwahqCBgrDJG2oHInbECqJpsDTQZSxLElcpR6c', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGtkeHR3SDZoMERRMUdBVzRJSjFKVmNRblFnSDBGWTJ4ZjkySjg3RiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly81ODkxYzZlZDU3MjIubmdyb2stZnJlZS5hcHAiO3M6NToicm91dGUiO3M6Mjc6ImdlbmVyYXRlZDo6NzVCdGFWU0FyQzZEbDBUSyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764762473),
('YJL4C3lvoMjJuVDhZ0aMRrM8CEh3MHLG2Qxkx4IG', NULL, '127.0.0.1', 'PostmanRuntime/7.29.4', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2tDMXIzYVZWZ1loeU9WRG5KTElTVWVXcXR1VjlYVjJFY05YeXNyVCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czoyNzoiZ2VuZXJhdGVkOjo3NUJ0YVZTQXJDNkRsMFRLIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1764762328);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` enum('low','medium','high') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `priority`, `file_path`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'today task', 'today description', 'medium', 'tasks/1764761817_sample.pdf', 3, '2025-12-03 06:06:57', '2025-12-03 07:39:46'),
(4, 'task1', 'description', 'medium', 'tasks/1764762486_sample.pdf', 2, '2025-12-03 06:18:06', '2025-12-03 06:18:06'),
(5, 'Test Task 1', 'Test Description', 'medium', 'tasks/1764764790_Technical Task - Full Stack (2).pdf', 2, '2025-12-03 06:56:30', '2025-12-03 06:56:30'),
(6, 'Test task 2', 'Test description', 'medium', NULL, 2, '2025-12-03 07:06:41', '2025-12-03 07:06:41'),
(7, 'task1', 'description', 'high', 'tasks/1764765774_sample.pdf', 2, '2025-12-03 07:12:54', '2025-12-03 07:12:54'),
(10, 'hhshs', 'today description', 'high', 'tasks/1764822691_sample.pdf', 7, '2025-12-03 22:08:52', '2025-12-03 23:01:31'),
(16, 'Test titles', 'Test Descri', 'low', NULL, 8, '2025-12-03 23:22:48', '2025-12-03 23:22:56'),
(17, 'test title 1', 'test description', 'low', NULL, 9, '2025-12-03 23:38:34', '2025-12-03 23:39:06'),
(18, 'test title 2', 'test description 1', 'high', NULL, 9, '2025-12-03 23:38:50', '2025-12-03 23:39:01');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john_doe', 'john@example.com', NULL, '$2y$12$Xzk4ooYv3CLZGhVHITT7Ve/UWGb2h2s5JN2OSCSjBuYO1i6uex652', NULL, '2025-12-03 05:32:54', '2025-12-03 05:32:54'),
(2, 'test', 'test@example.com', NULL, '$2y$12$BWwzkg6kFf.PAj9AM45SuuwEP/BSWQiztTUQK1FsBsV38hDBe0j5S', NULL, '2025-12-03 05:52:59', '2025-12-03 05:52:59'),
(3, 'vam', 'vam@example.com', NULL, '$2y$12$Hr5boCHy2E7ZdpEkHAUuV.0s3wKh.1X3mCEDxD07a/SbFqqbaLO.S', NULL, '2025-12-03 07:01:48', '2025-12-03 07:01:48'),
(4, 'testing', 'vam2@example.com', NULL, '$2y$12$SF.6T4K31f06vBi7vNTTHuxTCqIJbLAMCOOpCw8qLyetYhbXjMvbS', NULL, '2025-12-03 07:08:07', '2025-12-03 07:08:07'),
(5, 'Test2', 'test1@example.com', NULL, '$2y$12$2AjE9nxL.jTjuGYVxlTT3uSTmHSOoCzdkmUrxG3LZWi0Iieqvks8q', NULL, '2025-12-03 07:11:31', '2025-12-03 07:11:31'),
(6, 'test1', 'test2@example.com', NULL, '$2y$12$g8CbkIR.QKsBuSLAc.CRDORhr1/YNQqScudU/ZpFBZ63QlNJWhz66', NULL, '2025-12-03 07:13:45', '2025-12-03 07:13:45'),
(7, 'Developer', 'developer@example.com', NULL, '$2y$12$vlyI7Ubi3OlMBR/.kC5maOgaZ3DaECnRn.yfJvPuqXr2hNyKlsdTK', NULL, '2025-12-03 22:07:58', '2025-12-03 22:07:58'),
(8, 'Test User', 'testuser@gmail.com', NULL, '$2y$12$C1KREtXbIKzTBobwEhkEt.DusWPE3FISbg18TdHuynH2OlV78XoL.', NULL, '2025-12-03 23:22:27', '2025-12-03 23:22:27'),
(9, 'test user 1', 'test1@gmail.com', NULL, '$2y$12$pt7Pa.84iaUMhJ0vYOmoQur/X2UsIQXM5/JQbMAZVUyrBEApkl6ka', NULL, '2025-12-03 23:38:17', '2025-12-03 23:38:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
