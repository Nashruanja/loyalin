-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2025 at 11:17 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suricrypt_loyalty`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int NOT NULL,
  `business_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `description` text,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `business_id`, `user_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Rumah Makan Sate (Default) (ID: 1)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 09:57:28'),
(2, 1, 1, 'UPDATE_USER', 'Updated user ID: 2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 09:57:46'),
(3, 2, 1, 'CREATE_USER', 'Created user: Admin Bubur Mantap (admin) in business ID: 2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 09:59:34'),
(4, 3, 1, 'CREATE_USER', 'Created user: Admin Kopi nusantara (admin) in business ID: 3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:00:38'),
(5, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Rumah Makan Sate Ayam (ID: 1)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:03:01'),
(6, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Warung Bubur Ayam Mantap (ID: 2)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:04:41'),
(7, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Kedai Kopi Nusantara (ID: 3)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:05:53'),
(8, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:27:31'),
(9, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:34:17'),
(10, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:34:54'),
(11, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:35:15'),
(12, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:36:00'),
(13, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:36:23'),
(14, 2, 4, 'CREATE_REWARD', 'Created reward: 1 Tusuk sate Telur Puyuh', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:49:01'),
(15, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:49:23'),
(16, 3, 5, 'CREATE_REWARD', 'Created reward: Air Mineral', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:49:46'),
(17, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:50:06'),
(18, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:50:25'),
(19, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:50:34'),
(20, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:51:19'),
(21, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:51:47'),
(22, 1, 3, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 10:52:09'),
(23, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:45:16'),
(24, 2, 4, 'UPDATE_POINTS_RATIO', 'Updated points ratio to: 1 poin = Rp 10000', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:45:58'),
(25, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:46:07'),
(26, 1, 2, 'UPDATE_POINTS_RATIO', 'Updated points ratio to: 1 poin = Rp 50000', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:46:34'),
(27, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:46:42'),
(28, 2, 6, 'REGISTER', 'New customer registered', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:47:28'),
(29, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:47:41'),
(30, 2, 7, 'REGISTER', 'New customer registered', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:48:19'),
(31, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:49:00'),
(32, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:49:30'),
(33, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:49:40'),
(34, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', '2025-11-05 11:50:37'),
(35, 1, 2, 'ADD_TRANSACTION', 'Added transaction for SiDewa: Rp 100000, earned 2 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:32:35'),
(36, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:33:36'),
(37, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:34:28'),
(38, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:35:48'),
(39, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:35:59'),
(40, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:36:22'),
(41, 2, 4, 'ADD_TRANSACTION', 'Added transaction for Nutul: Rp 45000, earned 4 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:36:39'),
(42, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:37:02'),
(43, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:39:38'),
(44, 1, 2, 'ADD_TRANSACTION', 'Added transaction for SiDewa: Rp 810500, earned 16 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:44:03'),
(45, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:44:14'),
(46, 2, 4, 'ADD_TRANSACTION', 'Added transaction for sidewa: Rp 450000, earned 45 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:44:25'),
(47, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:46:26'),
(48, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:46:39'),
(49, 2, 4, 'CREATE_REWARD', 'Created reward: Es Teh Hangat Dingin', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:47:32'),
(50, 2, 4, 'ADD_TRANSACTION', 'Added transaction for sidewa: Rp 1000000, earned 100 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:47:59'),
(51, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:59:53'),
(52, 2, 7, 'REDEEM_REWARD', 'Redeemed Es Teh Hangat Dingin for 100 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 22:59:57'),
(53, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:47:41'),
(54, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:50:04'),
(55, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:50:43'),
(56, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:50:54'),
(57, 3, 5, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:51:15'),
(58, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:51:26'),
(59, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-05 23:53:08'),
(60, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 00:03:40'),
(61, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 00:04:01'),
(62, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 03:55:29'),
(63, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 03:55:47'),
(64, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 03:58:46'),
(65, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 03:59:10'),
(66, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 03:59:23'),
(67, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:00:25'),
(68, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:00:50'),
(69, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:12:31'),
(70, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:13:02'),
(71, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:14:25'),
(72, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:17:42'),
(73, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:21:15'),
(74, 2, 4, 'REDEEM_REWARD', 'Verified redemption code: SATE-9524', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:42:31'),
(75, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:43:15'),
(76, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:43:54'),
(77, 1, 3, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:44:23'),
(78, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 04:44:46'),
(79, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:24:14'),
(80, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:25:27'),
(81, 1, 3, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:28:17'),
(82, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', '2025-11-06 05:31:04'),
(83, 2, 6, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:31:39'),
(84, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:31:56'),
(85, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:32:17'),
(86, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-06 05:42:25'),
(87, 1, 3, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 01:52:44'),
(88, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 01:54:58'),
(89, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Rumah Makan Sate Ayam Cak Suri (ID: 1)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 01:55:56'),
(90, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Lontong Tahu Mbah Sumardi (ID: 2)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 01:57:37'),
(91, NULL, 1, 'UPDATE_BUSINESS', 'Updated business: Lontong Tahu Mbah Sumardi (ID: 2)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 01:57:54'),
(92, 2, 4, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 01:58:19'),
(93, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:01:24'),
(94, 2, 7, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:03:05'),
(95, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:04:21'),
(96, 1, 1, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:10:34'),
(97, NULL, 1, 'ADD_PAYMENT', 'Added payment for business ID: 3, amount: 50000', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:18:00'),
(98, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:19:11'),
(99, 1, 2, 'ADD_TRANSACTION', 'Added transaction for SiDewa: Rp 2000000, earned 40 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:21:21'),
(100, 1, 2, 'CREATE_REWARD', 'Created reward: areng', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:22:21'),
(101, 1, 2, 'UPDATE_REWARD', 'Updated reward ID: 8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:22:37'),
(102, 1, 3, 'LOGIN', 'User logged in via business selection', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:25:48'),
(103, 1, 3, 'REDEEM_REWARD', 'Redeemed Es Jeruk for 2 points', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:26:15'),
(104, 1, 2, 'LOGIN', 'User logged in', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:38:04'),
(105, 1, 2, 'REDEEM_REWARD', 'Verified redemption code: RDM-FCDC', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', '2025-11-07 02:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int NOT NULL,
  `business_name` varchar(255) NOT NULL,
  `business_slug` varchar(255) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `logo_path` varchar(255) DEFAULT NULL,
  `points_ratio` int DEFAULT '10000',
  `primary_color` varchar(7) DEFAULT '#e63946',
  `secondary_color` varchar(7) DEFAULT '#f1faee',
  `accent_color` varchar(7) DEFAULT '#f8a963',
  `subscription_status` enum('active','suspended','cancelled') DEFAULT 'active',
  `subscription_start_date` date DEFAULT NULL,
  `subscription_end_date` date DEFAULT NULL,
  `monthly_fee` decimal(10,2) DEFAULT '50000.00',
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `business_name`, `business_slug`, `owner_name`, `phone`, `email`, `address`, `logo_path`, `points_ratio`, `primary_color`, `secondary_color`, `accent_color`, `subscription_status`, `subscription_start_date`, `subscription_end_date`, `monthly_fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rumah Makan Sate Ayam Cak Suri', 'sate-default', 'Cak Suri', '628123456789', 'info@suricrypt-sate.com', 'Jl. Sreni Indah, Bategede, Nalumsari, Jepara', 'uploads/logos/690d51accd9ed_1762480556.png', 50000, '#e63946', '#f1faee', '#f8a963', 'active', '2025-11-05', '2026-11-05', 50000.00, 'active', '2025-11-05 02:31:07', '2025-11-07 01:55:56'),
(2, 'Lontong Tahu Mbah Sumardi', 'bubur-mantap', 'Om piq', '628111222333', 'info@lontongmantap.com', 'Jl. Raya Jepara - Kudus, Rw. 04, Pelemkerep, Kec. Mayong, Kabupaten Jepara, Jawa Tengah 59465', 'uploads/logos/690d5211d9145_1762480657.png', 10000, '#4caf50', '#f1faee', '#f8a963', 'active', '2025-11-05', '2025-12-05', 50000.00, 'active', '2025-11-05 02:31:07', '2025-11-07 01:57:54'),
(3, 'Kedai Kopi Nusantara', 'kopi-nusantara', 'Siti Rahma', '628222333444', 'hello@kopinusantara.com', 'Gemiring Lor, Kec. Nalumsari, Kabupaten Jepara, Jawa Tengah 59466', 'uploads/logos/690b2181787f7_1762337153.jpg', 8000, '#795548', '#f1faee', '#f8a963', 'active', '2025-11-05', '2025-12-07', 50000.00, 'active', '2025-11-05 02:31:07', '2025-11-07 02:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `redemptions`
--

CREATE TABLE `redemptions` (
  `id` int NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reward_id` int NOT NULL,
  `points_used` int NOT NULL,
  `redemption_code` varchar(20) NOT NULL,
  `status` enum('pending','redeemed','claimed','completed','cancelled','expired') NOT NULL DEFAULT 'pending',
  `redemption_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `claimed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `redemptions`
--

INSERT INTO `redemptions` (`id`, `business_id`, `user_id`, `reward_id`, `points_used`, `redemption_code`, `status`, `redemption_date`, `claimed_at`) VALUES
(1, 1, 3, 4, 10, 'SATE-5FC3', 'redeemed', '2025-05-14 02:06:04', NULL),
(2, 1, 3, 4, 10, 'SATE-0596', 'redeemed', '2025-06-04 01:12:36', NULL),
(3, 1, 3, 3, 100, 'SATE-A61C', 'redeemed', '2025-10-01 06:05:46', NULL),
(4, 2, 7, 7, 100, 'SATE-9524', 'claimed', '2025-11-05 22:59:57', '2025-11-06 11:42:31'),
(5, 1, 3, 8, 2, 'RDM-FCDC', 'claimed', '2025-11-07 02:26:15', '2025-11-07 09:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int NOT NULL,
  `business_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `points_required` int NOT NULL,
  `description` text,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `business_id`, `name`, `points_required`, `description`, `status`, `created_at`) VALUES
(1, 1, '1 Tusuk Sate', 25, 'Gratis 1 tusuk sate pilihan', 'active', '2025-04-20 04:42:28'),
(2, 1, 'Es Teh Manis', 50, 'Gratis 1 gelas es teh manis', 'active', '2025-04-20 04:42:28'),
(3, 1, 'Sate Paket Kecil', 100, 'Gratis 5 tusuk sate dengan nasi dan sambal', 'active', '2025-04-20 04:42:28'),
(4, 1, 'Extra Bumbu', 10, 'Bumbu nikmat', 'active', '2025-05-14 02:05:14'),
(5, 2, '1 Tusuk sate Telur Puyuh', 500, '', 'active', '2025-11-05 10:49:01'),
(6, 3, 'Air Mineral', 100, '', 'active', '2025-11-05 10:49:46'),
(7, 2, 'Es Teh Hangat Dingin', 100, '', 'active', '2025-11-05 22:47:32'),
(8, 1, 'Es Jeruk', 2, 'areng pilihan', 'active', '2025-11-07 02:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `business_id` int DEFAULT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_description` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `business_id`, `setting_key`, `setting_value`, `setting_description`, `updated_at`) VALUES
(1, 1, 'points_ratio', '10000', 'Jumlah transaksi (Rp) untuk mendapatkan 1 poin', '2025-11-05 02:31:07'),
(2, 1, 'site_name', 'SuriCrypt Loyalty - Rumah Makan Sate', 'Nama situs', '2025-11-05 02:31:07'),
(3, 1, 'resto_address', 'Jl. Sate No. 123, Jepara', 'Alamat rumah makan', '2025-11-05 02:31:07'),
(4, 1, 'resto_phone', '021-1234567', 'Nomor telepon rumah makan', '2025-11-05 02:31:07'),
(5, 1, 'resto_email', 'Suricrypt@gmail.com', 'Email rumah makan', '2025-11-05 02:31:07'),
(6, NULL, 'site_name', 'Loyalin - Hidupkan UMKM Anda', NULL, '2025-11-05 10:07:10'),
(7, NULL, 'resto_address', 'Jl. Nusaindah No. 123, Jepara', NULL, '2025-11-05 10:07:10'),
(8, NULL, 'resto_phone', '021-1234567', NULL, '2025-11-05 10:06:20'),
(9, NULL, 'resto_email', 'Loyalin@gmail.com', NULL, '2025-11-05 10:07:10'),
(10, NULL, 'points_ratio', '15000', NULL, '2025-11-05 10:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_payments`
--

CREATE TABLE `subscription_payments` (
  `id` int NOT NULL,
  `business_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `period_start` date NOT NULL,
  `period_end` date NOT NULL,
  `status` enum('paid','pending','failed') DEFAULT 'pending',
  `notes` text,
  `proof_image` varchar(255) DEFAULT NULL,
  `verified_by` int DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subscription_payments`
--

INSERT INTO `subscription_payments` (`id`, `business_id`, `amount`, `payment_date`, `payment_method`, `period_start`, `period_end`, `status`, `notes`, `proof_image`, `verified_by`, `verified_at`, `created_at`) VALUES
(1, 3, 50000.00, '2025-11-07', 'Transfer Bank', '2025-11-07', '2025-12-07', 'paid', '', NULL, 1, '2025-11-07 02:18:00', '2025-11-07 02:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `points_earned` int NOT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `business_id`, `user_id`, `amount`, `points_earned`, `transaction_date`) VALUES
(1, 1, 3, 250000.00, 25, '2025-06-04 00:56:43'),
(2, 1, 3, 35000.00, 3, '2025-10-01 06:04:45'),
(3, 1, 3, 3000000.00, 300, '2025-10-01 06:05:15'),
(4, 1, 3, 100000.00, 2, '2025-11-05 22:32:35'),
(5, 2, 6, 45000.00, 4, '2025-11-05 22:36:39'),
(6, 1, 3, 810500.00, 16, '2025-11-05 22:44:03'),
(7, 2, 7, 450000.00, 45, '2025-11-05 22:44:25'),
(8, 2, 7, 1000000.00, 100, '2025-11-05 22:47:59'),
(9, 1, 3, 2000000.00, 40, '2025-11-07 02:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `business_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('superadmin','admin','customer') NOT NULL DEFAULT 'customer',
  `is_active` tinyint(1) DEFAULT '1',
  `total_points` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `business_id`, `name`, `phone`, `password`, `role`, `is_active`, `total_points`, `created_at`) VALUES
(1, 1, 'Superadmin', '6282123456789', '$2y$10$DdBWe0B1dB1dGz5k4POXhe39x3C.pYM1z.8Qkp.XT5PBR5BkYO7Ei', 'superadmin', 1, 0, '2025-04-20 04:42:28'),
(2, 1, 'Cak Suri', '628123456789', '$2y$10$uCE/MnJQUKF1LZmVYZsT7u0sG1/DOnJJVzdA6d6YHqHSJwgu1fNLa', 'admin', 1, 0, '2025-04-20 04:42:28'),
(3, 1, 'SiDewa', '628181818181', '$2y$10$TM44oBYUPoPlMXJ9jzWMOevcoGxR2duCiMOv02P3czL79hfLF815u', 'customer', 1, 274, '2025-04-23 01:32:05'),
(4, 2, 'Admin Bubur Mantap', '628123456777', '$2y$10$ojUSUSs7v357Fl49/Cov2.ZmL9OE4gZhawnINRFy3h4.BVreChqW6', 'admin', 1, 0, '2025-11-05 09:59:34'),
(5, 3, 'Admin Kopi nusantara', '628123456888', '$2y$10$glMVBAXDR6HKFqigP/kjYubXl0Bsu0XltvHoU8zvLHH.qvb8bHz52', 'admin', 1, 0, '2025-11-05 10:00:38'),
(6, 2, 'Nutul', '628282828282', '$2y$10$SSaJAFGykIMwcEbValK3N.aeCMFjhDBHR9/rFRFJnBFWd4XDAQXnq', 'customer', 1, 4, '2025-11-05 11:47:28'),
(7, 2, 'sidewa', '628181818181', '$2y$10$ITbBANhwC./iw0X41iTIeui2Pzkz4w5zNaA3XsR4iSN5hirMBy18m', 'customer', 1, 45, '2025-11-05 11:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_business_access`
--

CREATE TABLE `user_business_access` (
  `id` int NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `last_accessed` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_business_access`
--

INSERT INTO `user_business_access` (`id`, `user_phone`, `business_id`, `user_id`, `last_accessed`, `created_at`) VALUES
(1, '628181818181', 1, 3, '2025-11-07 02:25:48', '2025-11-05 02:31:07'),
(2, '6282123456789', 1, 1, '2025-11-07 02:10:34', '2025-11-05 10:27:31'),
(3, '628123456789', 1, 2, '2025-11-07 02:38:04', '2025-11-05 10:34:54'),
(4, '628123456777', 2, 4, '2025-11-07 01:58:19', '2025-11-05 10:35:15'),
(5, '628123456888', 3, 5, '2025-11-05 23:51:15', '2025-11-05 10:36:00'),
(6, '628282828282', 2, 6, '2025-11-06 05:31:39', '2025-11-05 11:47:28'),
(7, '628181818181', 2, 7, '2025-11-07 02:03:05', '2025-11-05 11:48:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_business` (`business_id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `business_slug` (`business_slug`),
  ADD KEY `idx_slug` (`business_slug`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_subscription` (`subscription_status`);

--
-- Indexes for table `redemptions`
--
ALTER TABLE `redemptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `redemption_code` (`redemption_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reward_id` (`reward_id`),
  ADD KEY `idx_business_status` (`business_id`,`status`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_business_status` (`business_id`,`status`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_key_business` (`setting_key`,`business_id`);

--
-- Indexes for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verified_by` (`verified_by`),
  ADD KEY `idx_business` (`business_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_payment_date` (`payment_date`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_business_user` (`business_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_phone_business` (`phone`,`business_id`),
  ADD KEY `idx_business_role` (`business_id`,`role`);

--
-- Indexes for table `user_business_access`
--
ALTER TABLE `user_business_access`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_phone_business_access` (`user_phone`,`business_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_phone` (`user_phone`),
  ADD KEY `idx_business` (`business_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `redemptions`
--
ALTER TABLE `redemptions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_business_access`
--
ALTER TABLE `user_business_access`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `activity_logs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `redemptions`
--
ALTER TABLE `redemptions`
  ADD CONSTRAINT `fk_redemptions_business` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `redemptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `redemptions_ibfk_2` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `fk_rewards_business` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_payments`
--
ALTER TABLE `subscription_payments`
  ADD CONSTRAINT `subscription_payments_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscription_payments_ibfk_2` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `fk_transactions_business` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_business` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_business_access`
--
ALTER TABLE `user_business_access`
  ADD CONSTRAINT `user_business_access_ibfk_1` FOREIGN KEY (`business_id`) REFERENCES `businesses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_business_access_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
