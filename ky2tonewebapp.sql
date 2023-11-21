-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2023 at 08:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ky2tonewebapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `house_categories`
--

CREATE TABLE `house_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `house_categories`
--

INSERT INTO `house_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mrs. Sandy Zieme', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(2, 'Nova Stoltenberg', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(3, 'Tamia Kling', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(4, 'Jesse Barrows', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(5, 'Lela Shanahan PhD', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(6, 'Mr. Arnulfo Gibson V', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(7, 'Chesley Terry II', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(8, 'Maybelle Bode', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(9, 'Camilla Hartmann', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(10, 'Jalyn Johnson', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(11, 'Fred Emmerich', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(12, 'Dr. Vivien Hermiston', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(13, 'Mr. Austyn Shanahan PhD', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(14, 'Edward Altenwerth', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(15, 'Emiliano Walter MD', '2023-02-03 06:43:37', '2023-02-03 06:43:37', NULL),
(16, 'Friedrich Heaney', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(17, 'Lonie Lang', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(18, 'Zane Bartell', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(19, 'Chyna Lindgren', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(20, 'Dr. Winifred Strosin', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(21, 'Libbie Deckow', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(22, 'Logan Douglas', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(23, 'Omer Reinger', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(24, 'Alfred Christiansen', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(25, 'Zita Flatley V', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(26, 'Dominic Gaylord DVM', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(27, 'Alisha Farrell', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(28, 'Rebecca Bartoletti', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(29, 'Kaitlin Heathcote', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(30, 'Margaretta O\'Kon DVM', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(31, 'Prof. Owen Schoen', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(32, 'Beulah Farrell', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(33, 'Enid Klocko', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(34, 'Marjolaine Boyle DVM', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(35, 'Prof. Annabell Bashirian', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(36, 'Jarrett Conroy IV', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(37, 'Deondre Lowe', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(38, 'Omari Jacobs', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(39, 'Andrew Wiegand', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(40, 'Toby O\'Reilly', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(41, 'Maryjane Hackett DDS', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(42, 'Manley Bayer', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(43, 'Prof. Kylee Auer II', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(44, 'Lavon Murray', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(45, 'Emile Zemlak', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(46, 'Prof. Cara Windler', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(47, 'Susanna Rogahn', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(48, 'Kariane Hammes I', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(49, 'Shawn Towne', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL),
(50, 'Gerry Gorczany III', '2023-02-03 06:43:38', '2023-02-03 06:43:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `material_categories`
--

CREATE TABLE `material_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_categories`
--

INSERT INTO `material_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mr. Larry Harber', 0, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(2, 'Nova Beier', 4, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(3, 'Itzel Stiedemann MD', 0, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(4, 'Dr. Anita Bartell Sr.', 2, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(5, 'Osbaldo O\'Conner', 4, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(6, 'Jordon Schumm', 7, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(7, 'Jules Schroeder', 4, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(8, 'Prof. Verona Mosciski', 7, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(9, 'Keyon Graham', 2, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(10, 'Kristoffer Von', 9, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(11, 'Antonina Kovacek', 4, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(12, 'Jaleel Lynch', 5, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(13, 'Korey Stiedemann', 7, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(14, 'Dr. Aurelie Steuber Sr.', 5, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(15, 'Bryana Borer', 1, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(16, 'Toni Jast PhD', 3, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(17, 'Jeremy Zemlak', 9, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(18, 'Alysha Stoltenberg', 9, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(19, 'Miss Gladyce Leuschke MD', 7, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(20, 'Itzel Rippin', 1, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(21, 'Susie Willms', 9, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(22, 'Jesse Dicki', 3, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(23, 'Dr. Khalil Schulist DVM', 1, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(24, 'Don Ernser', 2, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(25, 'Elias Berge', 4, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(26, 'Giovanna Bogan', 7, '2023-02-03 08:04:37', '2023-02-03 08:04:37', NULL),
(27, 'Miss Emma Walsh', 8, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(28, 'Jacynthe Wunsch', 8, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(29, 'Reese McDermott', 1, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(30, 'Marquise Cronin', 2, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(31, 'Dr. Gilbert Koepp I', 0, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(32, 'Cary Langworth', 2, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(33, 'Dr. Alexandre Greenfelder', 4, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(34, 'Samantha Crona DDS', 0, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(35, 'Catalina Cormier', 4, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(36, 'Dr. Hobart O\'Kon', 7, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(37, 'Lizzie Kunze', 0, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(38, 'Verdie Stamm', 3, '2023-02-03 08:04:38', '2023-02-03 08:04:38', NULL),
(39, 'Gladys Wilderman', 1, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(40, 'Antwan Gulgowski', 3, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(41, 'Jewel Spencer', 9, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(42, 'Abby Murray', 9, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(43, 'Brook Dickens', 5, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(44, 'Ike Schowalter', 3, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(45, 'Dr. Bret Kuhn', 2, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(46, 'Mr. Jerrell Nicolas I', 8, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(47, 'Emilio Kutch', 7, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(48, 'Mr. Dedrick Langosh', 1, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(49, 'Rebeka Schneider II', 0, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL),
(50, 'Cristopher Pacocha', 2, '2023-02-03 08:04:39', '2023-02-03 08:04:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_30_104152_create_admins_table', 1),
(6, '2023_02_03_050359_create_house_categories_table', 1),
(7, '2023_02_03_135059_create_material_categories_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Abul Khair', 'a@m', NULL, '$2a$12$3b3ZESQLhjJUGNfmEcr7euAmqDUJgdCs0u6qly0YI14yGmU63IEk.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `house_categories`
--
ALTER TABLE `house_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_categories`
--
ALTER TABLE `material_categories`
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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `house_categories`
--
ALTER TABLE `house_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `material_categories`
--
ALTER TABLE `material_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
