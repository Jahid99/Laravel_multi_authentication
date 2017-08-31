-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2017 at 07:40 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_test_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2017_02_10_144319_create_roles_table', 1),
(9, '2017_02_10_174656_create_user_role_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, '2017-02-10 13:55:37', '2017-02-10 13:55:37', 'User', 'A normal User'),
(2, '2017-02-10 13:55:37', '2017-02-10 13:55:37', 'Author', 'An Author'),
(3, '2017-02-10 13:55:37', '2017-02-10 13:55:37', 'Admin', 'A Admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Victor', 'Visitor', 'visitor@example.com', '$2y$10$2y9TulNTXZSMoFIph7vW2eanm4KNmDD98XsVuSsEFCZuY/UXEehpK', 'zOG4aka1KNo8RsEuvXeIjxqCV0WlmKT0YQMicCkLJMRpQbIljGUWQ6jldcjt', '2017-02-10 13:55:37', '2017-02-10 13:55:37'),
(2, 'Alex', 'Admin', 'admin@example.com', '$2y$10$nMGyoTvP/fzikdh23c06sOsj7TNKGUDOYml98sAwiO8rWr5zBzZ6S', 'CePwT7YS26E4kjkLzuQ0bu9SaJj0rVoMsoZEyGH8iMhldgnhO3xwtRUsopoN', '2017-02-10 13:55:37', '2017-02-10 13:55:37'),
(3, 'Andy', 'Author', 'author@example.com', '$2y$10$sZO0aGCMEGm2.1eqsynThO943AUACCNWpfk/TnP3xAaNeB0z26z8i', NULL, '2017-02-10 13:55:37', '2017-02-10 13:55:37'),
(4, 'jahid', 'pathan', 'pathan@gmail.com', '123', 'qPL26BUVq6ZlkvZ4bzokXPwXvlSdBeSUgEcDLvLW5dSiTZ4514sm5Vmc87ju', '2017-02-14 07:54:28', '2017-02-14 07:54:28'),
(5, 'pat', 'an', 'pat@example.com', '$2y$10$G9ztwIU.9qyNZaz9miUXU.VStq8jyn9yLfiDd8TuKEdX9oGpAGa.e', 'sykZjRmSx1kQhCWSuov192G9h1GcqNwUC1BeG8isvwO5JmaidM7JRWH3bKJZ', '2017-02-14 12:37:00', '2017-02-14 12:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `created_at`, `updated_at`, `user_id`, `role_id`) VALUES
(3, NULL, NULL, 3, 2),
(4, NULL, NULL, 4, 1),
(5, NULL, NULL, 1, 1),
(6, NULL, NULL, 1, 2),
(9, NULL, NULL, 2, 1),
(10, NULL, NULL, 2, 2),
(11, NULL, NULL, 2, 3),
(12, NULL, NULL, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
