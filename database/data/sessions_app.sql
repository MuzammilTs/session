-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2021 at 01:47 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sessions_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowed_campaigns`
--

CREATE TABLE `allowed_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hrms_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`user_id`, `meeting_id`, `created_at`, `updated_at`) VALUES
(2, 1, '2021-11-19 18:44:08', '2021-11-19 18:44:08'),
(5, 1, '2021-11-19 18:44:08', '2021-11-19 18:44:08'),
(21, 1, '2021-11-19 18:44:08', '2021-11-19 18:44:08'),
(4, 3, '2021-11-19 18:55:27', '2021-11-19 18:55:27'),
(25, 4, '2021-11-19 18:57:58', '2021-11-19 18:57:58'),
(53, 4, '2021-11-19 18:57:58', '2021-11-19 18:57:58'),
(71, 4, '2021-11-19 18:57:58', '2021-11-19 18:57:58'),
(5, 5, '2021-11-19 18:58:29', '2021-11-19 18:58:29'),
(24, 5, '2021-11-19 18:58:29', '2021-11-19 18:58:29'),
(3, 2, '2021-11-19 19:30:03', '2021-11-19 19:30:03'),
(7, 2, '2021-11-19 19:30:03', '2021-11-19 19:30:03'),
(124, 2, '2021-11-19 19:30:03', '2021-11-19 19:30:03'),
(291, 2, '2021-11-19 19:30:03', '2021-11-19 19:30:03'),
(4, 6, '2021-11-19 19:36:48', '2021-11-19 19:36:48'),
(20, 6, '2021-11-19 19:36:48', '2021-11-19 19:36:48'),
(291, 7, '2021-11-19 20:11:31', '2021-11-19 20:11:31'),
(293, 7, '2021-11-19 20:11:31', '2021-11-19 20:11:31'),
(311, 7, '2021-11-19 20:11:31', '2021-11-19 20:11:31'),
(4, 8, '2021-11-19 20:13:40', '2021-11-19 20:13:40'),
(21, 8, '2021-11-19 20:13:40', '2021-11-19 20:13:40'),
(28, 8, '2021-11-19 20:13:40', '2021-11-19 20:13:40'),
(291, 9, '2021-11-19 20:15:11', '2021-11-19 20:15:11'),
(293, 9, '2021-11-19 20:15:11', '2021-11-19 20:15:11'),
(4, 10, '2021-11-19 21:12:12', '2021-11-19 21:12:12'),
(10, 10, '2021-11-19 21:12:12', '2021-11-19 21:12:12'),
(33, 10, '2021-11-19 21:12:12', '2021-11-19 21:12:12'),
(4, 11, '2021-11-19 21:25:24', '2021-11-19 21:25:24'),
(18, 11, '2021-11-19 21:25:24', '2021-11-19 21:25:24'),
(37, 11, '2021-11-19 21:25:24', '2021-11-19 21:25:24'),
(4, 12, '2021-11-19 23:05:35', '2021-11-19 23:05:35'),
(25, 12, '2021-11-19 23:05:35', '2021-11-19 23:05:35'),
(4, 13, '2021-11-19 23:07:46', '2021-11-19 23:07:46'),
(124, 14, '2021-11-22 11:56:11', '2021-11-22 11:56:11'),
(291, 14, '2021-11-22 11:56:11', '2021-11-22 11:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hrms_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `hrms_id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 7, 'AUTO INS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(2, 9, 'CRU', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(3, 15, 'MANAGEMENT OPS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(4, 21, 'ADMIN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(5, 22, 'COMPLIANCE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(6, 23, 'DB & DEVELOPMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(7, 24, 'DIALER ADMIN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(8, 25, 'DNC', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(9, 26, 'FINANCE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(10, 27, 'HUMAN EXCELLENCE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(11, 28, 'INFORMATION TECHNOLOGY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(12, 29, 'MIS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(13, 30, 'QUALITY ASSURANCE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(14, 31, 'MANAGEMENT SUPPORT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(15, 32, 'TRAINING', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(16, 1033, 'AUTO WARRANTY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(17, 1034, 'NON-VOICE TRAINING', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(18, 1035, 'NV-1', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(19, 1046, 'LENDING TREE-3', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(20, 1047, 'ICE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(21, 1048, 'BUSINESS DEVELOPMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(22, 1049, 'NV-PP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(23, 1058, 'JUST FINANCIAL ', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(24, 1064, 'RECRUITMENT ', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(25, 1068, 'NV-WFH', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(26, 1069, 'SWAT TEAM', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(27, 2077, 'GUIDANCE FINANCIAL', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(28, 2079, 'COMPASS LENDING', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(29, 2084, 'CLIENTS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(30, 2092, 'ALLIED', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(31, 2093, 'COOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(32, 2100, 'CROSS COUNTRY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(33, 2105, 'O2', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(34, 2106, 'HBS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(35, 2108, 'HOME FIRST MORG', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(36, 2109, 'NEW PRODUCT DEVELOPMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(37, 2111, 'CRU SALES', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(38, 2112, 'MORTGAGE VERT ISB', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(39, 2113, 'MORTGAGE VERT RWP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(40, 2114, 'SOLAR RWP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(41, 2116, 'AUTO INS-RWP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(42, 2117, 'VERIFIER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(43, 2118, 'SOLAR ISB', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(44, 2119, 'CMU', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(45, 2120, 'DISCOUNT SCHOOL SUPPLY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(46, 2121, 'ASTORIA', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(47, 2124, 'TAX', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(48, 2125, 'NV AUDITOR-OPS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(49, 2126, 'CONCORDE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(50, 2127, 'EXTERNAL CLIENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(51, 2129, 'TELE DOC', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(52, 2130, 'GLOBALTEK', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(53, 2131, 'DEBT SETTLEMENT-RWP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(54, 2132, 'GC-DEBT SETTLEMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(55, 2133, 'MARKETING', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(56, 2134, 'EDDY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(57, 3134, 'RGS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(58, 3135, 'AUTO INS-BROWN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(59, 3136, 'ZDS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(60, 3137, 'DEBT SETTLEMENT-ISB', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(61, 3138, 'FINAL EXPENSE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(62, 3139, 'AUTO WARRANTY RWP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(63, 3140, 'CMU-KPK', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(64, 3141, 'AFINITI', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(65, 3142, 'ANALYTICS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(66, 3143, 'SOCIAL MEDIA', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(67, 3145, 'SOLAR KPK', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(68, 3146, 'CDRS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(69, 3147, 'THRU-LINE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(70, 3149, 'HEALTH INSURANCE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(71, 3150, 'BFC', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(72, 3151, 'QUALITY ASSURANCE-NV', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(73, 3152, 'BD', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(74, 3153, 'EDDY-IB', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(75, 3154, 'EDDY-OB', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(76, 3155, 'BYKEA', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(77, 3156, 'JR. DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(78, 3157, 'SOLAR ISB-HASHAM', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(79, 3158, 'ENABLERS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_meeting_type`
--

CREATE TABLE `campaign_meeting_type` (
  `campaign_id` int(11) NOT NULL,
  `meeting_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_meeting_type`
--

INSERT INTO `campaign_meeting_type` (`campaign_id`, `meeting_type_id`) VALUES
(1, 4),
(7, 4),
(19, 4),
(13, 2),
(72, 2),
(15, 3),
(17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hrms_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `hrms_id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'ASSISTANT MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(2, 3, 'AUDITOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(3, 4, 'BI MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(4, 5, 'CEO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(5, 6, 'CFO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(6, 7, 'COACH', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(7, 8, 'COMPANY DOCTOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(8, 9, 'COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(9, 10, 'COMPLIANCE MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(10, 11, 'COORDINATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(11, 12, 'CSA', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(12, 13, 'DATABASE ADMINISTRATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(13, 14, 'DIALER ADMIN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(14, 15, 'DIRECTOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(15, 16, 'DNC EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(16, 17, 'DRIVER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(17, 18, 'ELECTRICIAN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(18, 19, 'EMPLOYEE RELATION OFFICER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(19, 20, 'FINANCE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(20, 21, 'GENERATOR OPERATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(21, 22, 'GRAPHIC DESIGNER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(22, 23, 'GUARD', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(23, 24, 'HARDWARE ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(24, 25, 'HR MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(25, 26, 'INTERNEE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(26, 27, 'JANITOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(27, 28, 'JUNIOR SOFTWARE ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(28, 29, 'JUNIOR SYSTEM ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(29, 30, 'JUNIOR WEB DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(30, 31, 'MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(31, 32, 'MIS EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(32, 33, 'NETWORK ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(33, 34, 'QA EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(34, 35, 'RECRUITMENT EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(35, 36, 'RECRUITMENT MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(36, 37, 'SECURITY EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(37, 38, 'SENIOR BI MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(38, 39, 'SENIOR DNC EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(39, 40, 'SENIOR MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(40, 41, 'SENIOR MIS EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(41, 42, 'SENIOR QA EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(42, 43, 'SENIOR SOFTWARE ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(43, 44, 'SOFTWARE ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(44, 45, 'SYSTEM ENGINEER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(45, 46, 'TEA BOY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(46, 47, 'TEAM LEAD', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(47, 48, 'TECHNICIAN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(48, 49, 'TRAINER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(49, 50, 'VERIFIER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(50, 51, 'VP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(51, 52, 'WEB DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(52, 53, 'HE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(53, 1053, 'EXECUTIVE ASSISTANT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(54, 2053, 'TRAINEE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(55, 2054, 'TL IN TRAINING', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(56, 2055, 'ASSISTANT DIRECTOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(57, 2056, 'CUSTOMER CARE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(58, 2057, 'CUSTOMER SERVICES EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(59, 2058, 'SENIOR COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(60, 2059, 'DIRECTOR BUSINESS DEVELOPMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(61, 2060, 'MANAGER BUSINESS DEVELOPMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(62, 2061, 'DATA ANALYST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(63, 2062, 'CCO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(64, 2063, 'COO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(65, 2064, 'TL TRAINING ', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(66, 2065, 'COMPLIANCE & LEGAL ADVISOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(67, 2066, 'TL DA', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(68, 2067, 'CIO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(69, 2068, 'SR. DIRECTOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(70, 2069, 'SR. DNC EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(71, 2070, 'SR.DIALER ADMIN', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(72, 2071, 'DIALER & DATA SPECIALIST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(73, 2072, 'HOME IMPROVEMENTS 1', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(74, 2073, 'HOME IMPROVEMENTS 2', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(75, 2074, 'TRAINING & DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(76, 2075, 'TRAINING & DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(77, 2076, 'STL-LENDING TREE 2', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(78, 2077, 'NV COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(79, 2078, 'NV COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(80, 2079, 'SYSTEM ADMINISTRATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(81, 2080, 'EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(82, 2081, 'SR. MANAGER RECRUITEMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(83, 2082, 'GENERAL MANAGER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(84, 2083, 'CLIENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(85, 2084, 'COMPLIANCE ASSOCIATE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(86, 2085, 'BUSINESS PROCESS ANALYST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(87, 2086, 'MANAGEMENT TRAINING OFFICER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(88, 2087, 'ENGLISH LANGUAGE INSTRUCTOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(89, 2088, 'SEO SPECIALIST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(90, 2089, 'RESEARCH ANALYST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(91, 2090, 'CTO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(92, 2091, 'SOFTWARE DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(93, 2092, 'CONTENT STRATEGIST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(94, 2093, 'OFFICE BOY', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(95, 2094, 'MARKETING ANALYST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(96, 2095, 'FRONTEND DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(97, 2096, 'BACKEND DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(98, 2097, 'SUCCESSOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(99, 2098, 'Consultant', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(100, 2099, 'SENIOR MANAGER-DIGITAL MARKETING', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(101, 2100, 'SENIOR FRONTEND DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(102, 2101, 'DIRECTOR IT & DEVELOPMENT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(103, 2102, 'SUPERVISOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(104, 2103, 'SOCIAL MEDIA STRATEGIST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(105, 3103, 'SECURITY SUPERVISOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(106, 3104, 'SENIOR MANAGER ANALYTICS', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(107, 3105, 'COMMUNICATIONS TRAINER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(108, 3106, 'NPD SWAT OFFICER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(109, 3107, 'SR. HE EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(110, 3108, 'ACTIVITIES COORDINATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(111, 3109, 'DIGITAL MARKETING STRATEGIST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(112, 3110, 'HRBP', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(113, 3111, 'SR. DATABASE ADMINISTRATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(114, 3112, 'CMO', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(115, 3113, 'PHOTOGRAPHER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(116, 3114, 'PPC EXPERT', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(117, 3115, 'BD EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(118, 3116, 'BUSINESS DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(119, 3117, 'MIS ANALYST', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(120, 3118, 'JR. DATABASE ADMINISTRATOR', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(121, 3119, 'JR. DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(122, 3120, 'DOCUMENT CONTROL ASSOCIATE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(123, 3121, 'AFFILIATE ACCOUNT EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(124, 3122, 'FULL STACK DEVELOPER', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(125, 3123, 'DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_type_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `associate_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_request_id` int(10) UNSIGNED DEFAULT NULL,
  `team_lead_id` int(11) DEFAULT NULL,
  `team_lead_status` int(11) DEFAULT NULL,
  `reason_id` int(10) UNSIGNED NOT NULL,
  `head_count` int(11) DEFAULT '0',
  `date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `synopsis` longtext COLLATE utf8mb4_unicode_ci,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `meeting_type_id`, `campaign_id`, `user_id`, `associate_id`, `meeting_request_id`, `team_lead_id`, `team_lead_status`, `reason_id`, `head_count`, `date`, `start_time`, `end_time`, `synopsis`, `rating`, `comments`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 13, 34, NULL, NULL, NULL, NULL, 1, 20, '2021-11-20', '22:43:00', '23:43:00', 'Lorem Ipsum', 4.00, 'Lorem Ipsum', 1, NULL, '2021-11-19 18:44:08', '2021-11-19 18:44:08'),
(2, 2, 13, 34, NULL, NULL, NULL, NULL, 2, 10, '2021-11-23', '20:46:00', '23:46:00', '<p>Loirem AIsdassa</p>', 4.00, 'Lorem Iopsum', 1, NULL, '2021-11-19 18:48:17', '2021-11-19 21:38:39'),
(3, 2, 13, 34, NULL, NULL, NULL, NULL, 4, NULL, '2021-11-19', '23:55:00', '23:55:00', NULL, 0.00, NULL, 0, '2021-11-19 18:55:33', '2021-11-19 18:55:27', '2021-11-19 18:55:33'),
(4, 1, 13, 34, 330, NULL, NULL, NULL, 1, 0, '2021-11-27', '21:57:00', '01:57:00', NULL, 0.00, NULL, 0, NULL, '2021-11-19 18:57:58', '2021-11-19 18:57:58'),
(5, 1, 13, 34, NULL, NULL, NULL, NULL, 3, 0, '2021-11-25', '21:58:00', '23:58:00', 'Lorem Ipsum', 4.00, 'Lorem Ipsum', 1, NULL, '2021-11-19 18:58:29', '2021-11-19 18:58:29'),
(6, 1, 13, 34, 124, NULL, NULL, NULL, 4, 0, '2021-11-25', '00:36:00', '02:36:00', NULL, 0.00, NULL, 0, NULL, '2021-11-19 19:36:48', '2021-11-19 19:36:48'),
(7, 2, 13, 34, NULL, NULL, NULL, NULL, 1, 20, '2021-11-25', '01:10:00', '03:10:00', 'Lorem Ipsum', 4.00, 'sadasdsa', 1, NULL, '2021-11-19 20:11:31', '2021-11-19 20:11:31'),
(8, 3, 15, 166, NULL, NULL, NULL, NULL, 2, 0, '2021-11-25', '00:13:00', '02:13:00', NULL, 0.00, NULL, 0, NULL, '2021-11-19 20:13:40', '2021-11-19 20:13:40'),
(9, 1, 15, 166, 208, NULL, NULL, NULL, 2, 0, '2021-11-24', '23:14:00', '03:14:00', NULL, 4.00, 'Lorem Ipsum', 1, NULL, '2021-11-19 20:14:38', '2021-11-19 20:15:23'),
(10, 2, 13, 34, NULL, NULL, NULL, NULL, 1, 20, '2021-11-25', '00:11:00', '04:11:00', 'Losadsad', 4.00, 'Lsadsa', 1, NULL, '2021-11-19 21:12:12', '2021-11-19 21:12:12'),
(11, 2, 13, 34, NULL, NULL, NULL, NULL, 1, 20, '2021-11-25', '00:24:00', '02:24:00', '<p>Hello there,</p><p><br></p><table class=\"table table-bordered\"><tbody><tr><td>Testing</td><td>tera</td><td>adsad</td></tr><tr><td>asdsad</td><td>sadsad</td><td>asdsad</td></tr><tr><td>asdsad</td><td>sadsad</td><td>asdsad</td></tr><tr><td>asdsad</td><td>asdsadsa</td><td>asdsadsad</td></tr></tbody></table><p><br></p><p><b>Lorem Ipsum</b></p>', 4.00, 'Loremrawd', 1, NULL, '2021-11-19 21:25:24', '2021-11-19 21:25:24'),
(13, 1, 13, 34, 124, 2, NULL, NULL, 1, 0, '2021-11-26', '04:07:00', '04:07:00', NULL, 0.00, NULL, 0, NULL, '2021-11-19 23:07:46', '2021-11-19 23:07:46'),
(14, 2, 13, 34, NULL, NULL, NULL, NULL, 3, 10, '2021-11-24', '14:56:00', '16:56:00', '<p>Lorem Ipsum</p>', 4.00, 'Lorem Ipsum', 1, NULL, '2021-11-22 11:56:11', '2021-11-22 11:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_requests`
--

CREATE TABLE `meeting_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `team_lead_id` int(10) UNSIGNED NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_requests`
--

INSERT INTO `meeting_requests` (`id`, `user_id`, `team_lead_id`, `reason`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 124, 34, 'Lorem Ipsum text', 0, '2021-11-19 22:38:29', '2021-11-19 22:15:53', '2021-11-19 22:38:29'),
(2, 124, 34, 'Testing request', 1, NULL, '2021-11-19 22:19:02', '2021-11-19 23:07:46'),
(3, 124, 34, 'Request for sessionss', 2, NULL, '2021-11-19 22:19:20', '2021-11-19 22:49:15'),
(4, 124, 34, 'asdsadsad', 0, NULL, '2021-11-19 23:09:23', '2021-11-19 23:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_reviews`
--

CREATE TABLE `meeting_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_reviews`
--

INSERT INTO `meeting_reviews` (`id`, `user_id`, `meeting_id`, `rating`, `comments`, `status`, `created_at`, `updated_at`) VALUES
(3, 124, 14, 4.00, 'Lorem Ipsum text', 0, '2021-11-22 12:52:15', '2021-11-22 12:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_types`
--

CREATE TABLE `meeting_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_types`
--

INSERT INTO `meeting_types` (`id`, `name`, `icon`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'One on One Session', 'fas fa-people-arrows', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(2, 'QA Caliberation Session', 'fab fa-chromecast', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(3, 'Mass Training Session', 'fas fa-chalkboard', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(4, 'Test Meeting Type', NULL, 1, '2021-11-19 17:56:22', '2021-11-19 17:52:14', '2021-11-19 17:56:22');

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
(243, '2014_10_12_000000_create_users_table', 1),
(244, '2014_10_12_100000_create_password_resets_table', 1),
(245, '2019_08_19_000000_create_failed_jobs_table', 1),
(246, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(247, '2021_11_15_220416_create_campaigns_table', 1),
(248, '2021_11_15_220624_create_meetings_table', 1),
(249, '2021_11_15_220643_create_attendees_table', 1),
(250, '2021_11_15_220721_create_reasons_table', 1),
(251, '2021_11_15_221016_create_meeting_requests_table', 1),
(252, '2021_11_15_221459_create_meeting_types_table', 1),
(253, '2021_11_16_200808_create_permission_tables', 1),
(254, '2021_11_19_020320_create_designations_table', 1),
(255, '2021_11_19_054313_create_campaign_meeting_type_table', 1),
(256, '2021_11_19_211642_create_allowed_campaigns_table', 1),
(257, '2021_11_22_170001_create_meeting_reviews_table', 2),
(258, '2021_11_22_182548_create_notifications_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 10),
(5, 'App\\Models\\User', 11),
(5, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(5, 'App\\Models\\User', 14),
(5, 'App\\Models\\User', 15),
(5, 'App\\Models\\User', 16),
(5, 'App\\Models\\User', 17),
(5, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(5, 'App\\Models\\User', 20),
(5, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(5, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(5, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(5, 'App\\Models\\User', 31),
(5, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(5, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(4, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(5, 'App\\Models\\User', 54),
(5, 'App\\Models\\User', 55),
(5, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(5, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(5, 'App\\Models\\User', 61),
(5, 'App\\Models\\User', 62),
(5, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 64),
(5, 'App\\Models\\User', 65),
(5, 'App\\Models\\User', 66),
(5, 'App\\Models\\User', 67),
(5, 'App\\Models\\User', 68),
(5, 'App\\Models\\User', 69),
(5, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(4, 'App\\Models\\User', 72),
(4, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(5, 'App\\Models\\User', 75),
(4, 'App\\Models\\User', 76),
(5, 'App\\Models\\User', 77),
(5, 'App\\Models\\User', 78),
(5, 'App\\Models\\User', 79),
(5, 'App\\Models\\User', 80),
(5, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(5, 'App\\Models\\User', 83),
(5, 'App\\Models\\User', 84),
(5, 'App\\Models\\User', 85),
(5, 'App\\Models\\User', 86),
(5, 'App\\Models\\User', 87),
(5, 'App\\Models\\User', 88),
(5, 'App\\Models\\User', 89),
(5, 'App\\Models\\User', 90),
(5, 'App\\Models\\User', 91),
(5, 'App\\Models\\User', 92),
(5, 'App\\Models\\User', 93),
(5, 'App\\Models\\User', 94),
(4, 'App\\Models\\User', 95),
(4, 'App\\Models\\User', 96),
(5, 'App\\Models\\User', 97),
(5, 'App\\Models\\User', 98),
(5, 'App\\Models\\User', 99),
(5, 'App\\Models\\User', 100),
(5, 'App\\Models\\User', 101),
(5, 'App\\Models\\User', 102),
(5, 'App\\Models\\User', 103),
(5, 'App\\Models\\User', 104),
(5, 'App\\Models\\User', 105),
(5, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 107),
(3, 'App\\Models\\User', 108),
(3, 'App\\Models\\User', 109),
(5, 'App\\Models\\User', 110),
(5, 'App\\Models\\User', 111),
(2, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 114),
(5, 'App\\Models\\User', 115),
(5, 'App\\Models\\User', 116),
(5, 'App\\Models\\User', 117),
(5, 'App\\Models\\User', 118),
(5, 'App\\Models\\User', 119),
(4, 'App\\Models\\User', 120),
(5, 'App\\Models\\User', 121),
(5, 'App\\Models\\User', 122),
(5, 'App\\Models\\User', 123),
(5, 'App\\Models\\User', 124),
(3, 'App\\Models\\User', 125),
(5, 'App\\Models\\User', 126),
(4, 'App\\Models\\User', 127),
(5, 'App\\Models\\User', 128),
(5, 'App\\Models\\User', 129),
(3, 'App\\Models\\User', 130),
(5, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(3, 'App\\Models\\User', 133),
(5, 'App\\Models\\User', 134),
(5, 'App\\Models\\User', 135),
(3, 'App\\Models\\User', 136),
(5, 'App\\Models\\User', 137),
(3, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(5, 'App\\Models\\User', 140),
(5, 'App\\Models\\User', 141),
(5, 'App\\Models\\User', 142),
(4, 'App\\Models\\User', 143),
(3, 'App\\Models\\User', 144),
(5, 'App\\Models\\User', 145),
(3, 'App\\Models\\User', 146),
(5, 'App\\Models\\User', 147),
(5, 'App\\Models\\User', 148),
(3, 'App\\Models\\User', 149),
(5, 'App\\Models\\User', 150),
(5, 'App\\Models\\User', 151),
(5, 'App\\Models\\User', 152),
(2, 'App\\Models\\User', 153),
(2, 'App\\Models\\User', 154),
(5, 'App\\Models\\User', 155),
(3, 'App\\Models\\User', 156),
(3, 'App\\Models\\User', 157),
(5, 'App\\Models\\User', 158),
(5, 'App\\Models\\User', 159),
(5, 'App\\Models\\User', 160),
(3, 'App\\Models\\User', 161),
(5, 'App\\Models\\User', 162),
(5, 'App\\Models\\User', 163),
(5, 'App\\Models\\User', 164),
(5, 'App\\Models\\User', 165),
(3, 'App\\Models\\User', 166),
(5, 'App\\Models\\User', 167),
(5, 'App\\Models\\User', 168),
(5, 'App\\Models\\User', 169),
(5, 'App\\Models\\User', 170),
(5, 'App\\Models\\User', 171),
(4, 'App\\Models\\User', 172),
(4, 'App\\Models\\User', 173),
(4, 'App\\Models\\User', 174),
(5, 'App\\Models\\User', 175),
(5, 'App\\Models\\User', 176),
(5, 'App\\Models\\User', 177),
(5, 'App\\Models\\User', 178),
(5, 'App\\Models\\User', 179),
(5, 'App\\Models\\User', 180),
(5, 'App\\Models\\User', 181),
(5, 'App\\Models\\User', 182),
(4, 'App\\Models\\User', 183),
(5, 'App\\Models\\User', 184),
(5, 'App\\Models\\User', 185),
(5, 'App\\Models\\User', 186),
(5, 'App\\Models\\User', 187),
(4, 'App\\Models\\User', 188),
(5, 'App\\Models\\User', 189),
(5, 'App\\Models\\User', 190),
(5, 'App\\Models\\User', 191),
(5, 'App\\Models\\User', 192),
(5, 'App\\Models\\User', 193),
(5, 'App\\Models\\User', 194),
(5, 'App\\Models\\User', 195),
(5, 'App\\Models\\User', 196),
(5, 'App\\Models\\User', 197),
(5, 'App\\Models\\User', 198),
(5, 'App\\Models\\User', 199),
(5, 'App\\Models\\User', 200),
(5, 'App\\Models\\User', 201),
(5, 'App\\Models\\User', 202),
(5, 'App\\Models\\User', 203),
(5, 'App\\Models\\User', 204),
(5, 'App\\Models\\User', 205),
(5, 'App\\Models\\User', 206),
(5, 'App\\Models\\User', 207),
(5, 'App\\Models\\User', 208),
(5, 'App\\Models\\User', 209),
(5, 'App\\Models\\User', 210),
(5, 'App\\Models\\User', 211),
(5, 'App\\Models\\User', 212),
(5, 'App\\Models\\User', 213),
(5, 'App\\Models\\User', 214),
(5, 'App\\Models\\User', 215),
(5, 'App\\Models\\User', 216),
(5, 'App\\Models\\User', 217),
(5, 'App\\Models\\User', 218),
(5, 'App\\Models\\User', 219),
(5, 'App\\Models\\User', 220),
(5, 'App\\Models\\User', 221),
(5, 'App\\Models\\User', 222),
(3, 'App\\Models\\User', 223),
(5, 'App\\Models\\User', 224),
(5, 'App\\Models\\User', 225),
(5, 'App\\Models\\User', 226),
(5, 'App\\Models\\User', 227),
(5, 'App\\Models\\User', 228),
(5, 'App\\Models\\User', 229),
(5, 'App\\Models\\User', 230),
(5, 'App\\Models\\User', 231),
(5, 'App\\Models\\User', 232),
(5, 'App\\Models\\User', 233),
(3, 'App\\Models\\User', 234),
(5, 'App\\Models\\User', 235),
(5, 'App\\Models\\User', 236),
(5, 'App\\Models\\User', 237),
(3, 'App\\Models\\User', 238),
(3, 'App\\Models\\User', 239),
(3, 'App\\Models\\User', 240),
(3, 'App\\Models\\User', 241),
(5, 'App\\Models\\User', 242),
(5, 'App\\Models\\User', 243),
(5, 'App\\Models\\User', 244),
(5, 'App\\Models\\User', 245),
(5, 'App\\Models\\User', 246),
(5, 'App\\Models\\User', 247),
(5, 'App\\Models\\User', 248),
(3, 'App\\Models\\User', 249),
(3, 'App\\Models\\User', 250),
(5, 'App\\Models\\User', 251),
(5, 'App\\Models\\User', 252),
(5, 'App\\Models\\User', 253),
(3, 'App\\Models\\User', 254),
(5, 'App\\Models\\User', 255),
(5, 'App\\Models\\User', 256),
(5, 'App\\Models\\User', 257),
(5, 'App\\Models\\User', 258),
(3, 'App\\Models\\User', 259),
(5, 'App\\Models\\User', 260),
(5, 'App\\Models\\User', 261),
(5, 'App\\Models\\User', 262),
(5, 'App\\Models\\User', 263),
(5, 'App\\Models\\User', 264),
(5, 'App\\Models\\User', 265),
(5, 'App\\Models\\User', 266),
(5, 'App\\Models\\User', 267),
(5, 'App\\Models\\User', 268),
(5, 'App\\Models\\User', 269),
(5, 'App\\Models\\User', 270),
(5, 'App\\Models\\User', 271),
(5, 'App\\Models\\User', 272),
(5, 'App\\Models\\User', 273),
(5, 'App\\Models\\User', 274),
(5, 'App\\Models\\User', 275),
(5, 'App\\Models\\User', 276),
(4, 'App\\Models\\User', 277),
(5, 'App\\Models\\User', 278),
(3, 'App\\Models\\User', 279),
(5, 'App\\Models\\User', 280),
(5, 'App\\Models\\User', 281),
(5, 'App\\Models\\User', 282),
(3, 'App\\Models\\User', 283),
(5, 'App\\Models\\User', 284),
(5, 'App\\Models\\User', 285),
(5, 'App\\Models\\User', 286),
(5, 'App\\Models\\User', 287),
(5, 'App\\Models\\User', 288),
(5, 'App\\Models\\User', 289),
(5, 'App\\Models\\User', 290),
(3, 'App\\Models\\User', 291),
(5, 'App\\Models\\User', 292),
(5, 'App\\Models\\User', 293),
(3, 'App\\Models\\User', 294),
(5, 'App\\Models\\User', 295),
(5, 'App\\Models\\User', 296),
(5, 'App\\Models\\User', 297),
(5, 'App\\Models\\User', 298),
(5, 'App\\Models\\User', 299),
(5, 'App\\Models\\User', 300),
(5, 'App\\Models\\User', 301),
(5, 'App\\Models\\User', 302),
(5, 'App\\Models\\User', 303),
(5, 'App\\Models\\User', 304),
(5, 'App\\Models\\User', 305),
(5, 'App\\Models\\User', 306),
(5, 'App\\Models\\User', 307),
(5, 'App\\Models\\User', 308),
(5, 'App\\Models\\User', 309),
(5, 'App\\Models\\User', 310),
(5, 'App\\Models\\User', 311),
(5, 'App\\Models\\User', 312),
(5, 'App\\Models\\User', 313),
(5, 'App\\Models\\User', 314),
(5, 'App\\Models\\User', 315),
(5, 'App\\Models\\User', 316),
(5, 'App\\Models\\User', 317),
(5, 'App\\Models\\User', 318),
(5, 'App\\Models\\User', 319),
(3, 'App\\Models\\User', 320),
(5, 'App\\Models\\User', 321),
(3, 'App\\Models\\User', 322),
(5, 'App\\Models\\User', 323),
(5, 'App\\Models\\User', 324),
(5, 'App\\Models\\User', 325),
(5, 'App\\Models\\User', 326),
(5, 'App\\Models\\User', 327),
(5, 'App\\Models\\User', 328),
(5, 'App\\Models\\User', 329),
(3, 'App\\Models\\User', 330),
(5, 'App\\Models\\User', 331),
(5, 'App\\Models\\User', 332),
(3, 'App\\Models\\User', 333),
(5, 'App\\Models\\User', 334),
(5, 'App\\Models\\User', 335),
(5, 'App\\Models\\User', 336),
(5, 'App\\Models\\User', 337),
(5, 'App\\Models\\User', 338),
(5, 'App\\Models\\User', 339),
(5, 'App\\Models\\User', 340),
(5, 'App\\Models\\User', 341),
(5, 'App\\Models\\User', 342),
(5, 'App\\Models\\User', 343),
(5, 'App\\Models\\User', 344),
(5, 'App\\Models\\User', 345),
(5, 'App\\Models\\User', 346),
(5, 'App\\Models\\User', 347),
(5, 'App\\Models\\User', 348),
(5, 'App\\Models\\User', 349),
(5, 'App\\Models\\User', 350),
(5, 'App\\Models\\User', 351),
(5, 'App\\Models\\User', 352),
(5, 'App\\Models\\User', 353),
(5, 'App\\Models\\User', 354),
(5, 'App\\Models\\User', 355),
(5, 'App\\Models\\User', 356),
(5, 'App\\Models\\User', 357),
(5, 'App\\Models\\User', 358),
(5, 'App\\Models\\User', 359),
(5, 'App\\Models\\User', 360),
(5, 'App\\Models\\User', 361),
(5, 'App\\Models\\User', 362),
(5, 'App\\Models\\User', 363),
(5, 'App\\Models\\User', 364),
(3, 'App\\Models\\User', 365),
(5, 'App\\Models\\User', 366),
(5, 'App\\Models\\User', 367),
(5, 'App\\Models\\User', 368),
(5, 'App\\Models\\User', 369),
(5, 'App\\Models\\User', 370),
(5, 'App\\Models\\User', 371),
(5, 'App\\Models\\User', 372),
(5, 'App\\Models\\User', 373),
(3, 'App\\Models\\User', 374),
(5, 'App\\Models\\User', 375),
(3, 'App\\Models\\User', 376),
(3, 'App\\Models\\User', 377),
(5, 'App\\Models\\User', 378),
(5, 'App\\Models\\User', 379),
(5, 'App\\Models\\User', 380),
(5, 'App\\Models\\User', 381),
(5, 'App\\Models\\User', 382),
(5, 'App\\Models\\User', 383),
(3, 'App\\Models\\User', 384),
(5, 'App\\Models\\User', 385),
(5, 'App\\Models\\User', 386),
(5, 'App\\Models\\User', 387),
(5, 'App\\Models\\User', 388),
(5, 'App\\Models\\User', 389),
(5, 'App\\Models\\User', 390),
(5, 'App\\Models\\User', 391),
(5, 'App\\Models\\User', 392),
(5, 'App\\Models\\User', 393),
(5, 'App\\Models\\User', 394),
(5, 'App\\Models\\User', 395),
(5, 'App\\Models\\User', 396),
(5, 'App\\Models\\User', 397),
(5, 'App\\Models\\User', 398),
(5, 'App\\Models\\User', 399),
(5, 'App\\Models\\User', 400),
(5, 'App\\Models\\User', 401),
(5, 'App\\Models\\User', 402),
(5, 'App\\Models\\User', 403),
(5, 'App\\Models\\User', 404),
(3, 'App\\Models\\User', 405),
(5, 'App\\Models\\User', 406),
(5, 'App\\Models\\User', 407),
(5, 'App\\Models\\User', 408),
(5, 'App\\Models\\User', 409),
(5, 'App\\Models\\User', 410),
(5, 'App\\Models\\User', 411),
(3, 'App\\Models\\User', 412),
(5, 'App\\Models\\User', 413),
(5, 'App\\Models\\User', 414),
(5, 'App\\Models\\User', 415),
(5, 'App\\Models\\User', 416),
(5, 'App\\Models\\User', 417),
(5, 'App\\Models\\User', 418),
(5, 'App\\Models\\User', 419),
(5, 'App\\Models\\User', 420),
(5, 'App\\Models\\User', 421),
(5, 'App\\Models\\User', 422),
(5, 'App\\Models\\User', 423),
(5, 'App\\Models\\User', 424),
(5, 'App\\Models\\User', 425),
(5, 'App\\Models\\User', 426),
(5, 'App\\Models\\User', 427),
(3, 'App\\Models\\User', 428),
(5, 'App\\Models\\User', 429),
(5, 'App\\Models\\User', 430),
(5, 'App\\Models\\User', 431),
(5, 'App\\Models\\User', 432),
(5, 'App\\Models\\User', 433),
(5, 'App\\Models\\User', 434),
(5, 'App\\Models\\User', 435),
(5, 'App\\Models\\User', 436),
(5, 'App\\Models\\User', 437),
(4, 'App\\Models\\User', 438),
(5, 'App\\Models\\User', 439),
(5, 'App\\Models\\User', 440),
(5, 'App\\Models\\User', 441),
(5, 'App\\Models\\User', 442),
(5, 'App\\Models\\User', 443),
(5, 'App\\Models\\User', 444),
(5, 'App\\Models\\User', 445),
(5, 'App\\Models\\User', 446),
(5, 'App\\Models\\User', 447),
(5, 'App\\Models\\User', 448),
(5, 'App\\Models\\User', 449),
(5, 'App\\Models\\User', 450),
(3, 'App\\Models\\User', 451),
(5, 'App\\Models\\User', 452),
(5, 'App\\Models\\User', 453),
(5, 'App\\Models\\User', 454),
(5, 'App\\Models\\User', 455),
(5, 'App\\Models\\User', 456),
(5, 'App\\Models\\User', 457),
(5, 'App\\Models\\User', 458),
(5, 'App\\Models\\User', 459),
(5, 'App\\Models\\User', 460),
(5, 'App\\Models\\User', 461),
(5, 'App\\Models\\User', 462),
(5, 'App\\Models\\User', 463),
(5, 'App\\Models\\User', 464),
(5, 'App\\Models\\User', 465),
(5, 'App\\Models\\User', 466),
(5, 'App\\Models\\User', 467),
(5, 'App\\Models\\User', 468),
(5, 'App\\Models\\User', 469),
(5, 'App\\Models\\User', 470),
(5, 'App\\Models\\User', 471),
(5, 'App\\Models\\User', 472),
(5, 'App\\Models\\User', 473),
(5, 'App\\Models\\User', 474),
(5, 'App\\Models\\User', 475),
(5, 'App\\Models\\User', 476),
(5, 'App\\Models\\User', 477),
(5, 'App\\Models\\User', 478),
(5, 'App\\Models\\User', 479),
(5, 'App\\Models\\User', 480),
(5, 'App\\Models\\User', 481),
(5, 'App\\Models\\User', 482),
(5, 'App\\Models\\User', 483),
(5, 'App\\Models\\User', 484),
(5, 'App\\Models\\User', 485),
(5, 'App\\Models\\User', 486),
(5, 'App\\Models\\User', 487),
(5, 'App\\Models\\User', 488),
(3, 'App\\Models\\User', 489),
(5, 'App\\Models\\User', 490),
(5, 'App\\Models\\User', 491),
(5, 'App\\Models\\User', 492),
(3, 'App\\Models\\User', 493),
(5, 'App\\Models\\User', 494),
(5, 'App\\Models\\User', 495),
(5, 'App\\Models\\User', 496),
(5, 'App\\Models\\User', 497),
(5, 'App\\Models\\User', 498),
(5, 'App\\Models\\User', 499),
(5, 'App\\Models\\User', 500),
(5, 'App\\Models\\User', 501),
(5, 'App\\Models\\User', 502),
(5, 'App\\Models\\User', 503),
(5, 'App\\Models\\User', 504),
(5, 'App\\Models\\User', 505),
(5, 'App\\Models\\User', 506),
(5, 'App\\Models\\User', 507),
(5, 'App\\Models\\User', 508),
(3, 'App\\Models\\User', 509),
(5, 'App\\Models\\User', 510),
(5, 'App\\Models\\User', 511),
(5, 'App\\Models\\User', 512),
(5, 'App\\Models\\User', 513),
(5, 'App\\Models\\User', 514),
(5, 'App\\Models\\User', 515),
(5, 'App\\Models\\User', 516),
(5, 'App\\Models\\User', 517),
(5, 'App\\Models\\User', 518),
(5, 'App\\Models\\User', 519),
(5, 'App\\Models\\User', 520),
(5, 'App\\Models\\User', 521),
(5, 'App\\Models\\User', 522),
(5, 'App\\Models\\User', 523),
(5, 'App\\Models\\User', 524),
(5, 'App\\Models\\User', 525),
(5, 'App\\Models\\User', 526),
(5, 'App\\Models\\User', 527),
(5, 'App\\Models\\User', 528),
(5, 'App\\Models\\User', 529),
(5, 'App\\Models\\User', 530),
(5, 'App\\Models\\User', 531),
(5, 'App\\Models\\User', 532),
(5, 'App\\Models\\User', 533),
(5, 'App\\Models\\User', 534),
(5, 'App\\Models\\User', 535),
(5, 'App\\Models\\User', 536),
(5, 'App\\Models\\User', 537),
(5, 'App\\Models\\User', 538),
(5, 'App\\Models\\User', 539),
(5, 'App\\Models\\User', 540),
(5, 'App\\Models\\User', 541),
(5, 'App\\Models\\User', 542),
(5, 'App\\Models\\User', 543),
(5, 'App\\Models\\User', 544),
(5, 'App\\Models\\User', 545),
(5, 'App\\Models\\User', 546),
(5, 'App\\Models\\User', 547),
(5, 'App\\Models\\User', 548),
(5, 'App\\Models\\User', 549),
(5, 'App\\Models\\User', 550),
(5, 'App\\Models\\User', 551),
(5, 'App\\Models\\User', 552),
(5, 'App\\Models\\User', 553),
(5, 'App\\Models\\User', 554),
(5, 'App\\Models\\User', 555),
(5, 'App\\Models\\User', 556),
(5, 'App\\Models\\User', 557),
(5, 'App\\Models\\User', 558),
(5, 'App\\Models\\User', 559),
(5, 'App\\Models\\User', 560),
(5, 'App\\Models\\User', 561),
(5, 'App\\Models\\User', 562),
(5, 'App\\Models\\User', 563),
(5, 'App\\Models\\User', 564),
(5, 'App\\Models\\User', 565),
(5, 'App\\Models\\User', 566),
(5, 'App\\Models\\User', 567),
(5, 'App\\Models\\User', 568),
(5, 'App\\Models\\User', 569),
(5, 'App\\Models\\User', 570),
(5, 'App\\Models\\User', 571),
(5, 'App\\Models\\User', 572),
(5, 'App\\Models\\User', 573),
(5, 'App\\Models\\User', 574),
(5, 'App\\Models\\User', 575),
(5, 'App\\Models\\User', 576),
(5, 'App\\Models\\User', 577),
(5, 'App\\Models\\User', 578),
(5, 'App\\Models\\User', 579),
(5, 'App\\Models\\User', 580),
(5, 'App\\Models\\User', 581),
(5, 'App\\Models\\User', 582),
(5, 'App\\Models\\User', 583),
(5, 'App\\Models\\User', 584),
(5, 'App\\Models\\User', 585),
(5, 'App\\Models\\User', 586),
(5, 'App\\Models\\User', 587),
(5, 'App\\Models\\User', 588),
(5, 'App\\Models\\User', 589),
(5, 'App\\Models\\User', 590),
(5, 'App\\Models\\User', 591),
(3, 'App\\Models\\User', 592),
(5, 'App\\Models\\User', 593),
(5, 'App\\Models\\User', 594),
(5, 'App\\Models\\User', 595),
(5, 'App\\Models\\User', 596),
(5, 'App\\Models\\User', 597),
(5, 'App\\Models\\User', 598),
(5, 'App\\Models\\User', 599),
(5, 'App\\Models\\User', 600),
(5, 'App\\Models\\User', 601),
(5, 'App\\Models\\User', 602),
(5, 'App\\Models\\User', 603),
(5, 'App\\Models\\User', 604),
(5, 'App\\Models\\User', 605),
(5, 'App\\Models\\User', 606),
(3, 'App\\Models\\User', 607),
(5, 'App\\Models\\User', 608),
(5, 'App\\Models\\User', 609),
(5, 'App\\Models\\User', 610),
(5, 'App\\Models\\User', 611),
(5, 'App\\Models\\User', 612),
(5, 'App\\Models\\User', 613),
(5, 'App\\Models\\User', 614),
(5, 'App\\Models\\User', 615),
(5, 'App\\Models\\User', 616),
(5, 'App\\Models\\User', 617),
(5, 'App\\Models\\User', 618),
(5, 'App\\Models\\User', 619),
(5, 'App\\Models\\User', 620),
(5, 'App\\Models\\User', 621),
(5, 'App\\Models\\User', 622),
(5, 'App\\Models\\User', 623),
(5, 'App\\Models\\User', 624),
(5, 'App\\Models\\User', 625),
(5, 'App\\Models\\User', 626),
(5, 'App\\Models\\User', 627),
(5, 'App\\Models\\User', 628),
(5, 'App\\Models\\User', 629),
(5, 'App\\Models\\User', 630),
(5, 'App\\Models\\User', 631),
(5, 'App\\Models\\User', 632),
(3, 'App\\Models\\User', 633),
(5, 'App\\Models\\User', 634),
(5, 'App\\Models\\User', 635),
(2, 'App\\Models\\User', 636),
(5, 'App\\Models\\User', 637),
(5, 'App\\Models\\User', 638),
(5, 'App\\Models\\User', 639),
(5, 'App\\Models\\User', 640),
(5, 'App\\Models\\User', 641),
(5, 'App\\Models\\User', 642),
(5, 'App\\Models\\User', 643),
(5, 'App\\Models\\User', 644),
(5, 'App\\Models\\User', 645),
(5, 'App\\Models\\User', 646),
(5, 'App\\Models\\User', 647),
(5, 'App\\Models\\User', 648),
(5, 'App\\Models\\User', 649),
(5, 'App\\Models\\User', 650),
(5, 'App\\Models\\User', 651),
(5, 'App\\Models\\User', 652),
(5, 'App\\Models\\User', 653),
(5, 'App\\Models\\User', 654),
(5, 'App\\Models\\User', 655),
(5, 'App\\Models\\User', 656),
(5, 'App\\Models\\User', 657),
(5, 'App\\Models\\User', 658),
(5, 'App\\Models\\User', 659),
(5, 'App\\Models\\User', 660),
(5, 'App\\Models\\User', 661),
(5, 'App\\Models\\User', 662),
(5, 'App\\Models\\User', 663),
(5, 'App\\Models\\User', 664),
(3, 'App\\Models\\User', 665),
(5, 'App\\Models\\User', 666),
(5, 'App\\Models\\User', 667),
(5, 'App\\Models\\User', 668),
(5, 'App\\Models\\User', 669),
(5, 'App\\Models\\User', 670),
(5, 'App\\Models\\User', 671),
(5, 'App\\Models\\User', 672),
(5, 'App\\Models\\User', 673),
(5, 'App\\Models\\User', 674),
(5, 'App\\Models\\User', 675),
(5, 'App\\Models\\User', 676),
(5, 'App\\Models\\User', 677),
(5, 'App\\Models\\User', 678),
(5, 'App\\Models\\User', 679),
(5, 'App\\Models\\User', 680),
(5, 'App\\Models\\User', 681),
(5, 'App\\Models\\User', 682),
(5, 'App\\Models\\User', 683),
(5, 'App\\Models\\User', 684),
(5, 'App\\Models\\User', 685);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('b621df9b-dd54-4862-8a12-ccf480cb5b91', 'App\\Notifications\\WebNotification', 'App\\Models\\User', 1, '{\"title\":\"Test Title\",\"content\":\"Test Content\",\"route\":\"home\"}', NULL, '2021-11-22 13:26:02', '2021-11-22 13:26:02');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reasons`
--

CREATE TABLE `reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reasons`
--

INSERT INTO `reasons` (`id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Requested by Team', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(2, 'Performance Evaluation', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(3, 'Quality Assurance', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(4, 'Sales Target', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(5, 'Other', 1, NULL, '2021-11-19 17:13:14', '2021-11-19 17:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(2, 'Director', 'web', '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(3, 'Manager', 'web', '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(4, 'Team Lead', 'web', '2021-11-19 17:13:14', '2021-11-19 17:13:14'),
(5, 'Associate', 'web', '2021-11-19 17:13:14', '2021-11-19 17:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `hrms_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `hrms_designation_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `campaign_id`, `hrms_id`, `designation_id`, `hrms_designation_id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'Adminstrator', 'admin@touchstone.com.pk', NULL, '$2y$10$7EIW6LKO7liSL9lz4Bfx4epdWiwRDrW.GztNj/OdZThMCGqSwNg2G', 1, NULL, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(2, 3, 8, 14, 15, 'WAQAS AHMED', 'waqasa@touchstone.com.pk', NULL, '$2y$10$PLAUFpEgSqOaNCDhgEmm6.C5NsgUb9x2kPMH4lti/hJITgnzOo1dm', 1, NULL, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(3, 14, 10, 14, 15, 'GHULAM RABBANI', 'srabbani@touchstone.com.pk', NULL, '$2y$10$8kj/8LYBsa3oSSYq5.tKvupWjIqYWVvs.Repbh6CUh8686E1nx1Nq', 1, NULL, NULL, '2021-11-19 17:13:19', '2021-11-19 17:13:19'),
(4, 14, 20, 30, 31, 'WAQAR AHMED', 'wahmed@touchstone.com.pk', NULL, '$2y$10$jg47JS41a9lrhvlXlKAKFevywBTZVh7.YHEg6IcWJn2kfJxRHFL2S', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(5, 3, 30, 46, 47, 'FURQAN BADSHAH', 'fbadshah@touchstone.com.pk', NULL, '$2y$10$EPTOGXH.2WqOtUKHCFcfhOeKyCC.XFg5XYTY3/HI3oO/1ec1lVgEa', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(6, 3, 32, 14, 15, 'NAVEED AKHTER', 'nakhtar@touchstone.com.pk', NULL, '$2y$10$aUP1.P37nDo95r8pAVCkr.G6YAYcQe8J.vFjPbvBktVZCDbDy6Ymm', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(7, 3, 35, 39, 40, 'IRAM AHMED', 'ishahzadi@touchstone.com.pk', NULL, '$2y$10$OiVyBjMmtlLw2NM18kUbKOwQoP5I/SyPprDPLeLBtCT9LMqGIqIRe', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(8, 3, 37, 39, 40, 'MUHAMMAD IKRAM', 'mikram@touchstone.com.pk', NULL, '$2y$10$hWq8qIx.PGylJKZIjlVi9.kM5hpnye9dVlHibmFXWp8sXy3.nnfDK', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(9, 3, 41, 1, 2, 'USAMA RAHEEM ', 'usraheem@touchstone.com.pk', NULL, '$2y$10$cn7K7CqZS1jt6UOVjklQgud53otu9rAqwQMKFuQPB/L7oxl9A2/3.', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(10, 16, 51, 11, 12, 'ANIL CHRISTOPHER ', 'achristopher@touchstone.com.pk', NULL, '$2y$10$u.C6jFOwQ/iY3C/MJmRzBO2Dg1B5sz/5YFK0uX9emv99XwxbFByLC', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(11, 2, 62, 11, 12, 'SHAGHIL SHAKEEL ', 'sshakeel@touchstone.com.pk', NULL, '$2y$10$A4JR4BkHQNBA1VIPmrUbXOZKEpjtOmNAkmyh3MB30nV82Lq4jG2qa', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(12, 39, 71, 11, 12, 'MUHAMMAD USMAN RABBANI CHAUDHRY', 'mrchaudhry@touchstone.com.pk', NULL, '$2y$10$Tg5TAxYpz8vw9n24iZliSecqHOf8H/kqA8b6KLU/dryFnXwQORHkG', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(13, 3, 81, 1, 2, 'ZAMEER HUSSAIN', 'zhussain@touchstone.com.pk', NULL, '$2y$10$PIQaRlEWR23VTfRsiSvjde8uyrO0yv4trH9Fr4QXT6gKik/ZjZvJ.', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(14, 43, 87, 11, 12, 'KAMRAN NAWAZ', 'knawaz@touchstone.com.pk', NULL, '$2y$10$QT67CFOP9huvYuyUAnOziuZ2OlOINVmGPY4V9amKoIueHlt.bl57W', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(15, 39, 96, 11, 12, 'SHAKEEL MASIH', 'smasih@touchstone.com.pk', NULL, '$2y$10$4Pnlgqm0SjAYe0wfX0.5GeP1c0hXbBvoNAlX4e2hQvzj7Eh9A1Eie', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(16, 16, 103, 11, 12, 'ISHAQ AHMED', 'iahmed@touchstone.com.pk', NULL, '$2y$10$uoMdmrefmXYW4kQ7axWl4.DDjJz6aGsWp26tMGspd4y9O/r3Lq09S', 1, NULL, NULL, '2021-11-19 17:13:20', '2021-11-19 17:13:20'),
(17, 16, 163, 11, 12, 'ZAHIDA NAWAZ', 'znawaz@touchstone.com.pk', NULL, '$2y$10$qYTDTwlSja4ZLEcGKTtqpeFdOsPnxoIU3GeekEd6SSA5bpigee/zK', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(18, 2, 164, 11, 12, 'HAIDER MASOOD ', 'hamasood@touchstone.com.pk', NULL, '$2y$10$KAS6tB8VmT2G4NkMD.DEa.Wo1StP1GLTAiMtk5tf5whCUl47nQHDi', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(19, 14, 166, 46, 47, 'MUHAMMAD IBTISAM SARFRAZ', 'isarfarz@touchstone.com.pk', NULL, '$2y$10$fnZotrr22iW0jbg8YErXsOmbxDmfAljudAWyKnPVPotJNTvup58ia', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(20, 2, 173, 11, 12, 'SHEHZADA EHTISHAM ', 'sehtisham@touchstone.com.pk', NULL, '$2y$10$t3XF15i9FT0oTaAxOahZDuDUeAwAlTxjU7nkIeKWznaqCrYm5EwlO', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(21, 2, 174, 11, 12, 'SYED MUHAMMAD ALI', 'syali@touchstone.com.pk', NULL, '$2y$10$GUC5tQdMoH/zZbLYkHZ5ceMtDsDf1s/MJDYZEqCKvexEdQeRMGq.a', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(22, 72, 178, 33, 34, 'AMNA SHAHID ABBASI', 'asabbasi@touchstone.com.pk', NULL, '$2y$10$3VvBSeHc3yMtZi6VRVShsunpr.DIymmnQXNjtYzR38tDFVk2A9sga', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(23, 14, 180, 30, 31, 'FARHAN ANWAR', 'fanwar@touchstone.com.pk', NULL, '$2y$10$IdMFNXq5y2CGG7qbCRKGJ.B8FAQ6tSFJvMjQ4bzYRZLeqyTwIhu0q', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(24, 3, 181, 46, 47, 'GHUFRAN ULLAH', 'Muanwar@touchstone.com.pk', NULL, '$2y$10$Wx8ultDtldcPlYg4DbSNDeJzzsaSUVcSWGYPAb7LsS4VxOWQDrSm6', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(25, 3, 182, 46, 47, 'JENNY UFAQ', 'jufaq@touchstone.com.pk', NULL, '$2y$10$nrdSiVDFxDD5BX7yOh1k.ujn57y05Hfc5TRgN0.nZTcCPD12skBLS', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(26, 2, 184, 11, 12, 'MUHAMMAD KHURRAM JILLANI', 'mkjillani@touchstone.com.pk', NULL, '$2y$10$YBBVgwYHfm4tgAtnLRPVZuKVWo2mp11sfS2.JivDBm0//OKXPRgj2', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(27, 72, 187, 33, 34, 'OMER MAJEED', 'oqureshi@touchstone.com.pk', NULL, '$2y$10$glWNZ926p4GKay9uHt.NNOoDC8nbbZPC4FsAXT3H5YBuQwjh9OAj.', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(28, 2, 193, 11, 12, 'ZULQARNAIN RAZA', 'zraza@touchstone.com.pk', NULL, '$2y$10$Se9K.wHg5L9smzJHzTC32eLvHDVLbtvwHiuRdo8wpk.HiQvxwQzPS', 1, NULL, NULL, '2021-11-19 17:13:21', '2021-11-19 17:13:21'),
(29, 2, 194, 11, 12, 'ALI RAZA MALIK', 'alraza@touchstone.com.pk', NULL, '$2y$10$Q02xefmVjYr7Bvo/pK5eSeoathyW0DJrLtVBTBk26p9Kkp9F84mkS', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(30, 3, 195, 46, 47, 'AMIR MURAD', 'amurad@touchstone.com.pk', NULL, '$2y$10$cYbHjrGtAzFUANujmqVVU.CnohYHQRPE3FQTuYjGg00jgiFkrH.2u', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(31, 2, 206, 11, 12, 'ZAHEEN ULLAH', 'zkhattak@touchstone.com.pk', NULL, '$2y$10$qbeMf.lLd9eptYYsWiA76uoNmJd19soAH6ncEyahaU1DZF48qITlW', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(32, 2, 207, 11, 12, 'AAMIR NAWAZ KHAN', 'anakhan@touchstone.com.pk', NULL, '$2y$10$F9QEUjJt/MwtpTkHURzlBusXNdXbwR7sTesE1vPdwRHDAgm5tSRRy', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(33, 3, 210, 46, 47, 'KANZA NOOR', 'knoor@touchstone.com.pk', NULL, '$2y$10$BvZhTqj.VLKr/aFmEUewreEhd9MNqUFvvaQT4ZyNU9/e0tcqJCTuu', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(34, 13, 211, 33, 34, 'MIAN UBAID UR REHMAN', 'mubaid@touchstone.com.pk', NULL, '$2y$10$tvvQrA0KvEx/KJu/liss0ejVKI9nlGhPuFUQcebs6exPhdENVMFSC', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(35, 3, 212, 39, 40, 'MUHAMMAD ATIF ABBASI', 'mabbasi@touchstone.com.pk', NULL, '$2y$10$uLfo1WDSRvYWQ.AiGxk0Nuxc/PDLKkvMA8X3RNgU5jKuPX9rozmVS', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(36, 2, 213, 11, 12, 'MUHAMMAD FAHEEM KHAN', 'mfkhan@touchstone.com.pk', NULL, '$2y$10$iw4XGZgTRwkwotkp25.JleX..PnMkJQFGveEBQyPLhJDXUZB9Gvou', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(37, 3, 216, 1, 2, 'RAJA ASIF GULZAR', 'ragulzar@touchstone.com.pk', NULL, '$2y$10$8KgMOxxyMqZpNaGu/VOBoOPuxI1DodY0iqWr8adJEej/ERGaPSqeG', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(38, 3, 217, 30, 31, 'ROHAIL BHATTI', 'rbhatti@touchstone.com.pk', NULL, '$2y$10$QaUPItiJkh15bQ1.d13pB.KHYq79N8JD3O2ZCh1Z3ZePO8oKdi2da', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(39, 39, 231, 11, 12, 'MUHAMMAD AHSAN AMIN', 'mamin@touchstone.com.pk', NULL, '$2y$10$6GzHjTf/jh.dNyQSdGqOXO9ijM1JcjuddXm7Cygu6m4qNnAcvXJKG', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(40, 3, 241, 1, 2, 'ISRAR HUSSAIN ', 'ishussain@touchstone.com.pk', NULL, '$2y$10$jddRmqs6K7eYfkaRLJNxbOBck.bPb5yM.xAN6CGH8Ct8DOVc.0bXm', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(41, 3, 256, 30, 31, 'ALI JAFFAR', 'ajaffer@touchstone.com.pk', NULL, '$2y$10$XBA.p9Y0xYtPUOXyjfPRiu1DAyGpCfwDOy8teaGJbLNl1T1q0waY6', 1, NULL, NULL, '2021-11-19 17:13:22', '2021-11-19 17:13:22'),
(42, 14, 324, 30, 31, 'SHAHID IQBAL', 'siqbal@touchstone.com.pk', NULL, '$2y$10$n4giwZihkjHdenPMbsTALOut.S92AI4rvaJHNPVoCtXuUFNKEK6qu', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(43, 14, 330, 39, 40, 'ZORAIN SHAHID', 'zshahid@touchstone.com.pk', NULL, '$2y$10$1lf.TPvSjnklnpfbS5HBiuSRCrzaQahC70388NzTPygiDlWkwTrTa', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(44, 14, 336, 39, 40, 'KASHIF SHAHZAD', 'kshahzad@touchstone.com.pk', NULL, '$2y$10$sTD86Nb4nY4i7q6624egJejJO57avyYbL3AZPUuso2FliIEg4fore', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(45, 14, 346, 46, 47, 'TAHIR YASIN', 'tyasin@touchstone.com.pk', NULL, '$2y$10$6AI9QP.hPYMgXTWOqNHFBeEnzSAC9JfFjSJXkbeX.nSSr4SEc8wzm', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(46, 14, 349, 30, 31, 'ZEESHAN AHMED KHAN', 'zikhan@touchstone.com.pk', NULL, '$2y$10$D/p7cQFL88/DAeP/7GuAI.gDH6LgO0AN12hUBX1CLfbbl1PDY7IW2', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(47, 14, 352, 30, 31, 'MOUAZ SHAHID', 'mbutt@touchstone.com.pk', NULL, '$2y$10$Wx1n/HK5tLRzZZdd2B.ScencoC5fqqUw0g3r1jzpI6AK/QoQkm2Eq', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(48, 27, 363, 11, 12, 'SUFYAN NAZIR', 'sunazir@touchstone.com.pk', NULL, '$2y$10$.lrm3cBxmIr/R8spbSWznu2lHoRH0.cQumUf9qiXZaa8.lSbwhFoK', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(49, 14, 368, 56, 2055, 'ANAM ZORAIN', 'azorain@touchstone.com.pk', NULL, '$2y$10$ODiOZskPA1Ysy/rG.vA7LuPUqbYo88mywOn8qjOcPQAcqJb3wAjlu', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(50, 72, 1056, 33, 34, 'MUHAMMAD TALHA HASSAN', 'mtalha@touchstone.com.pk', NULL, '$2y$10$tNmua6ihohD3EcglBucNl.yLkX7cFABLkUVyjCW6bwrVBUzQPiYLy', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(51, 3, 1064, 46, 47, 'HUSSAIN KHALID', 'HKhalid@touchstone.com.pk', NULL, '$2y$10$5yhJNACw1.I7q3wto33qFeoUtNV61UqC2Gtl74KCwPCrmGlPvdmrW', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(52, 3, 1071, 30, 31, 'SAMSON RIAZ', 'sriaz@touchstone.com.pk', NULL, '$2y$10$LfMu6dW/U5vUSwDWP3cYne4Z0yT0I9Jlpri59SQmHy82TcXtQb4Fy', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(53, 72, 1104, 33, 34, 'WALEED AZHAR', 'wazhar@touchstone.com.pk', NULL, '$2y$10$5Pq0rjzprh8NvuwxvouE8eXs7DdYsM6BA8R2//l/Dwc2qAXk.i58a', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(54, 2, 1105, 11, 12, 'ZULQARNAIN SHAH', 'zshah@touchstone.com.pk', NULL, '$2y$10$38EJe3mP7TEK3wG5qBGBAO32PvDUObIk6fmZxfaXh0hb7NjT4CG5G', 1, NULL, NULL, '2021-11-19 17:13:23', '2021-11-19 17:13:23'),
(55, NULL, 2049, 11, 12, 'ABEER QAZI', 'aqazi@touchstone.com.pk', NULL, '$2y$10$Qr24YmZ9hC6LhSfR14mehOEFujBXuqAknJ60JRASUsShrA4k0CBci', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(56, 2, 2075, 11, 12, 'UMAMA ANWAR', 'umlone@touchstone.com.pk', NULL, '$2y$10$5q6vC/5F/OwDJUlCqz/XU.WPRLHGxz11t3rwpA5ui4A9kPgmiQ4zm', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(57, 72, 2084, 33, 34, 'MUHAMMAD QASIM', 'mqasim@touchstone.com.pk', NULL, '$2y$10$5M0YWE3Uxbr.A4fwdF/H3O2G2qsde6ZGd/NVomYu66wTW4nKWX1mW', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(58, 2, 2087, 11, 12, 'KHALIL AHMED ', 'Kahmed@touchstone.com.pk', NULL, '$2y$10$R7OnwqT5jgBGaA5WZCu0DuDGU8vUND6IN/2VQbisbM1buPnBUVFyK', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(59, 3, 2102, 39, 40, 'FAIZAN JAMIL HASHMI', 'fhashmi@touchstone.com.pk', NULL, '$2y$10$jcKVQ4IUN07Xe9Jr6lYq0.CN0ks/q.7Z7ry1fN643exjnRVWgAbeO', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(60, 3, 2105, 1, 2, 'MUHAMMAD ASIF ALI', 'maasif@touchstone.com.pk', NULL, '$2y$10$orsuyqDCJoIk4OFD5rJ36OiLQ8E/oIjXxz7PeXGrASMf5Gl4ln.ai', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(61, 2, 2110, 11, 12, 'FARHAN HASSAN', 'fhassan@touchstone.com.pk', NULL, '$2y$10$PINlTdDvhOZdFlIea9sDwe93nW4KaB8O57oGOQesX1zuITJ51pGHe', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(62, 2, 2117, 11, 12, 'ABDUL JABBAR', 'aj@touchstone.com', NULL, '$2y$10$ffOwAuzgZHRw3xaoR.CvXe3rZvhySTlaCxkZXyu7vfE91T22R4B02', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(63, 78, 2123, 11, 12, 'AANIS MEHROZE', 'amehroze@touchstone.com.pk', NULL, '$2y$10$EZBrp.dCYx7NCVRQqeBlIeujJRmDSiak0G6EpZwINUsMFnaFZf3Wy', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(64, 3, 2148, 14, 15, 'HASHAM HASHIM', 'hhashim@touchstone.com.pk', NULL, '$2y$10$hneq6sYqPaZSc8EtsxGWNOrXyeI.RG94tpucuEuN6mfrfH7XFKepa', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(65, 2, 2151, 11, 12, 'IQRA MIRZA', 'imirza@touchstone.com.pk', NULL, '$2y$10$s5V/2dnExyzp57nnCSTXburaqwKSQpWOnVtRAnbSv7h1I1mp3P0pu', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(66, 2, 2154, 11, 12, 'ZAIN UL ABIDEEN', 'zabideen@touchstone.com.pk', NULL, '$2y$10$yqKE5sjitNRwvsrDvGYkDOmUXd/3ys/tmW3BsJk8/UPnebtxbJEsy', 1, NULL, NULL, '2021-11-19 17:13:24', '2021-11-19 17:13:24'),
(67, 2, 2158, 11, 12, 'GOHAR ABBAS', 'gabbas@touchstone.com.pk', NULL, '$2y$10$LazL2C4yJLggUt35cXBlzu3jCRsVsjmiDPbHm7rQpaILKrRswgC2y', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(68, 2, 2160, 11, 12, 'SHEHERYAR AHMED', 'shahmed@touchstone.com.pk', NULL, '$2y$10$cE4EMygYfNL0mo.DGbfD/.8Xz4Q6d8n1ywhrailQyiw0Sf4mSIGo2', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(69, 44, 2161, 11, 12, 'MUHAMMAD ZIA UR REHMAN', 'mza@touchstone.com.pk', NULL, '$2y$10$YzpET60frUKU6sVf8GLnVuCfZL8gVvwUFD4YpXWnNeHUOac/ZvdSG', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(70, 2, 2164, 11, 12, 'SYEDA HANIA BATOOL', 'sha@touchstone.com.pk', NULL, '$2y$10$jOsKOhRCJUznndyPrb3QSe1jJJubjBK4QIX/hfvoDuaDwr4U85X.q', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(71, 3, 2183, 1, 2, 'SYED ZAHID HUSSAIN', 'SZHussain@touchstone.com.pk', NULL, '$2y$10$OXjCR7WeKwKCEPHlkJKUoOzOhAy3E9hPfWEsHDHU31VNsWN4By7UG', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(72, 14, 2196, 46, 47, 'QASIM HUSSAIN', 'qhussain@touchstone.com.pk', NULL, '$2y$10$g33qaXSJfyE.qEmAFvbb2uXSS3mOkTHyd6FPdJMt2DKC1ugSvK9rq', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(73, 3, 2198, 55, 2054, 'MUHAMMAD ALI SHAH', 'mas@touchstone.com.pk', NULL, '$2y$10$UDju9n9B6SagacIL.dvYie1p/nlDeyHZhBjiqoQI973VPPOXAJp0C', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(74, 72, 2204, 33, 34, 'SHAHRYAR SABIR', 'sa@touchstone.com.pk', NULL, '$2y$10$9epepVGneGbDfKMPoqckFOqk/j85kdEyHEI1a6RopM7.5jAxGYTKK', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(75, 16, 2243, 11, 12, 'SYED ALI RAZA', 'asz@touchstone.com.pk', NULL, '$2y$10$92zZaUEDxWpp7om7DZiV..wEZergCtPJqkofYeWxplq4T70ipiJbS', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(76, 3, 2244, 46, 47, 'USMAN HABIB', 'uhabib@touchstone.com.pk', NULL, '$2y$10$Daf8p0WgT7vHazMz/5LcmOySH.DYA8IG4YwPClxCZvZChs6ADZFFa', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(77, 15, 2252, 75, 2074, 'AWAIS HASSAN RASHID', 'ahr@touchstone.com.pk', NULL, '$2y$10$q9.xITdvtE8kLQmyWOFOqORrpLCPlFpBgl3PwZJHe3FXQwAwIFF/.', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(78, 2, 2257, 11, 12, 'MUHAMMAD ALI', 'mast@touchstone.com.pk', NULL, '$2y$10$402j7nzW./D30FeyMtEpnOPblh260Ieov63d6tC6qLXE193mEccgi', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(79, 2, 2289, 11, 12, 'RAJA SAMI UL HAQ SATTI', 'rsatti@touchstone.com.pk', NULL, '$2y$10$GxYerPkIenDxe/GYCUmX8.xdr0iYpR5EdXMqvvvCfM6k3YuuhwDtO', 1, NULL, NULL, '2021-11-19 17:13:25', '2021-11-19 17:13:25'),
(80, 2, 2290, 11, 12, 'ZOHAIB TARIQ MINHAS', 'ztminhas@touchstone.com.pk', NULL, '$2y$10$MP/91eDIW7CXTCTDJNBAcODDleGArq1mrfnnyFCbkLK2pY/.Sqf4u', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(81, 2, 2292, 11, 12, 'FARHAN SIDDIQI', 'fsiddiqi@touchstone.com.pk', NULL, '$2y$10$IMB6pciZxSmDyhKopR/So.Bg1I25262hZvb17iha/nOrgpIGWQimy', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(82, 72, 2294, 33, 34, 'SYED HASSAN RAZA', 'syhraza@touchstone.com.pk', NULL, '$2y$10$oUCn4xzTpAhcPjnll.53/eUUMiUXjOKc9DwsLEXHyRhN2Mo8k.WFq', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(83, 2, 2296, 11, 12, 'MUHAMMAD NOUMAN FAROOQ', 'mnfarooq@touchstone.com.pk', NULL, '$2y$10$Qf2XI/JwwGVm/ylMoIQh0en0AGq2pxqFWQoGaiW7o7XctgROO29wa', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(84, 2, 2301, 11, 12, 'SYED FAISAL LIAQAT', 'fliaqat@touchstone.com.pk', NULL, '$2y$10$AqUU2vLULq..aKMKO4pOsO.Jj8We3D13d8tPxEcSjzoVu3kQBKYca', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(85, 2, 2313, 11, 12, 'RAJA OMER KHAYYAM', 'rok@touchstone.com.pk', NULL, '$2y$10$nfzaVucEbiZ5Npn6TA2xI.4qgrLlrmwyqmKWDPqG3LXdrlebQqqIy', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(86, 2, 2315, 11, 12, 'HAMMAD AHMED HAFEEZ', 'has@touchstone.com.pk', NULL, '$2y$10$QYBaNs2UI/PDBkT2J2QOeunokNue2hIP5qy0tkIr9lpRxBTdBgNSK', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(87, 2, 2323, 11, 12, 'SYED ALI HASSAN', 'sal@touchstone.com.pk', NULL, '$2y$10$OwYZaDfo6ifb2HlKGbOiz.mjJW17rT8EdoOpmRy2xpljdMfam26Q.', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(88, 2, 2325, 11, 12, 'SYED INTASHAM ANWAR', 'sia@touchstone.com.pk', NULL, '$2y$10$SC/zO3hLT2sM9QBQp0UZNe9z1CEyWtfPF7c.9kEdhT/NkVhzX330O', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(89, 2, 2340, 11, 12, 'KAMRAN KHALID', 'kha@touchstone.com.pk', NULL, '$2y$10$zAbof7Fyk8vVCWmgJB/U9OGI8IDnj6ohZJSNHQpO5hp76rsWJUgby', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(90, 2, 2341, 11, 12, 'MUHAMMAD WASEEM', 'mwsa@touchstone.com.pk', NULL, '$2y$10$uHqvC..7NvFiRO.gnPgLTeWiRWO7muaAb4nTOQw5NgSOYH9dqyW2y', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(91, 2, 2348, 11, 12, 'HAQ NAWAZ', 'hnw@touchstone.com.pk', NULL, '$2y$10$HaRC8hk0JO87uV0OQjfuCueYEVAqrKhM20BUIs0EzDYeFXhi4zq/6', 1, NULL, NULL, '2021-11-19 17:13:26', '2021-11-19 17:13:26'),
(92, 2, 2370, 11, 12, 'SANAM SHAHZAD', 'ssh@touchstone.com.pk', NULL, '$2y$10$98mLaBr6s7Em./HnszppUO86aBtoHLHpjMP4xTZPYNu9W281yQf0e', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(93, 2, 2375, 11, 12, 'ZEESHAN MUKHTAR', 'zmk@touchstone.com.pk', NULL, '$2y$10$ROdvnLoag4jALgoTtqZmQums/JVuh6sL9eq67KY7jwDTOidXMfLfm', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(94, 2, 2377, 11, 12, 'MUHAMMAD MUNEER ABBASI', 'mma@touchstone.com.pk', NULL, '$2y$10$NfYs0sxLM6ZcYRadSfTX4eGjCkm3BIjdH6yjI5Fst1GWOp52VJWeK', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(95, 3, 2390, 46, 47, 'KAYNAT AKHTER', 'kakhter@touchstone.com.pk', NULL, '$2y$10$RXVyyPi6Cj5eL9FncojDL..zRQR0Oto8xnNZQbfi6m2/r/c4NiY0O', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(96, 3, 2391, 55, 2054, 'DANYAL MANSOOR', 'dms@touchstone.com.pk', NULL, '$2y$10$TX2VKvyTmYU/YhujQSfQV.9ty1dQ7Nm3JE14fSrZ1q0X53XryWQL.', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(97, 2, 2426, 11, 12, 'ATIF GILL ', 'agl@touchstone.com.pk', NULL, '$2y$10$dAYSvenUXCtkw7jGSei7puUCG9b9yWXVocoorNGDKyhWZaeVd8Cfa', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(98, 75, 2439, 11, 12, 'FARJAD KHAN', 'frk@touchstone.com.pk', NULL, '$2y$10$sPjorMCXmcVDvji4ES2oLe3YWeqa48ycshNSlUiGmvMcaCpPRzNeu', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(99, 16, 2463, 11, 12, 'MALIK USMAN', 'mlk@touchstone.com.pk', NULL, '$2y$10$plfc.DJObOU5yQ4iGYkgnuKm0dC4wgASddk46QBjT/YE2B/MMVxeO', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(100, 38, 2471, 11, 12, 'MALIK IMRAN ULLAH', 'immalik@touchstone.com.pk', NULL, '$2y$10$OPm9KAjDBaKugyaqU1rU5u1OqcCn5cxZ9LmNfmq6Zcldg4b9vMXXC', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(101, 2, 2495, 11, 12, 'NAVEED E SAHAR', 'nvds@touchstone.com.pk', NULL, '$2y$10$v6HacYWLfx1PlBFvykWSGuRJUqNd65Lu6R7kqYtsqw6kN1q54qA3K', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(102, 2, 2499, 11, 12, 'AQSA ANUM', 'aqsq@touchstone.com.pk', NULL, '$2y$10$zvQVAuei9SiQBMzLJB2JLOZCctGjvudXTj1KE/tyxuYyCy7.rTABC', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(103, NULL, 2511, 11, 12, 'UDESH DELADIA', 'udsh@touchstone.com.pk', NULL, '$2y$10$qdJ17e8PudtvsERnOtZzKuN4UI46fDJ68WzY6IHmS/ns.Lt9cgFpO', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(104, 2, 2554, 11, 12, 'SOHAIL EJAZ', 'she@touchstone.com.pk', NULL, '$2y$10$CQhUqJ0PBzYa5TzG7BboAOu.vY6UituSuLGnPJx1bHJmfpAoTmvQG', 1, NULL, NULL, '2021-11-19 17:13:27', '2021-11-19 17:13:27'),
(105, 2, 2555, 11, 12, 'MUHAMMAD  FAIZAN', 'mhfz@touchstone.com.pk', NULL, '$2y$10$V3jzplvKci8wr53ObygDu.MspU8yvMoQLFPtPtIIKaU9uVImgZtMq', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(106, 2, 2556, 11, 12, 'SHADAB SHAH', 'shadabsh@touchstone.com.pk', NULL, '$2y$10$YulHSD2cEtV0PBpZxhG1ge/8Rmsxpze89adessO0.3c2lCkzHLjKq', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(107, 72, 2557, 33, 34, 'BILAL SAJID', 'blsj@touchstone.com.pk', NULL, '$2y$10$jGiTI8O2g03sVZg29danZOwIocT57N1Ha5P9StAid1iiC9F11agvm', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(108, 72, 2559, 33, 34, 'SHAHZAIB SOHAIL KHAN', 'shzbsuh@touchstone.com.pk', NULL, '$2y$10$gLP7z17s4OaCkKPptaY2UOecTNxyry10Rd6xJmN/awwvSUeyNeRaa', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(109, 3, 2606, 1, 2, 'QUSAIN AZIZ', 'qsnaz@touchstone.com.pk', NULL, '$2y$10$CwSkFsBul87WRyh7uSQzLOQne4aD3.XHYYDUXMJzcYakW78xPu3T6', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(110, 16, 2633, 11, 12, 'RAHIM ALI NOOR', 'rahimno@touchstone.com.pk', NULL, '$2y$10$H.kBwXe0h8oogsUXwe9VPOPQbQJF21fe9rA6BF7.tHoQpJZX84wLq', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(111, 16, 2646, 11, 12, 'SUNIL KAFEEL', 'skafeel@touchstone.com.pk', NULL, '$2y$10$7QxiNbQ0xsl2MThNYgJkRebMwrQE86tnyfg9NJXsH76/9rRQ8kkui', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(112, 3, 2658, 14, 15, 'SHAGUFTA ABDULLAH', 'sabdullah@touchstone.com.pk', NULL, '$2y$10$uISFPI/Ighdp9obpsujew.T9D1D/wfibwHOZsvzqj3.Iajv8A6Cva', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(113, 3, 2674, 1, 2, 'SYED MUHAMMAD AHMAD NAQVI ', 'sanaqvi@touchstone.com.pk', NULL, '$2y$10$ZiPZSJiYZPmEjLUGly8r9uwrCCVzrGWDfiHMrZBsM2sVh1lOnBZ/S', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(114, 3, 2744, 39, 40, 'MASSAWAR HANIF SAHABYAL', 'mhsahabyal@touchstone.com.pk', NULL, '$2y$10$jknFNsYMK8ECEY29o2XhS.4YM0yRX0jQtDZHO3gviBbUW6iWPfday', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(115, 2, 2776, 11, 12, 'AMEER HAMZA JR.', 'hamzakhalil10@gmail.com', NULL, '$2y$10$tXnyFySmRMIr4l3SFQsmxesFYizO/zO6WNraEC519SyAS6EsHZ1UW', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(116, 2, 2779, 11, 12, 'SHAHID MEHMOOD', 'smmehmood@touchstone.com.pk', NULL, '$2y$10$0HmfIV1IHUx/W16tJ6XYiOQKp8ZtsKTF0BMM4JYGCkqUmvBU81IlG', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(117, 2, 2780, 11, 12, 'ELISHA ASAPH AWAN', 'easaph@touchstone.com.pk', NULL, '$2y$10$AMFqQv.hmJDcX03in4BJ...eDKhwHQ0vtO3aZ3p15EKAixzgeSs7S', 1, NULL, NULL, '2021-11-19 17:13:28', '2021-11-19 17:13:28'),
(118, 2, 2785, 11, 12, 'ADIL MAJEED', 'amajeed@touchstone.com.pk', NULL, '$2y$10$dCbX.3mRcQmSA2/XzK34FuQN1K7MBONs08tcWCY2tBtH22S4.9tR6', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(119, 2, 2801, 11, 12, 'AIMEN NASEER', 'anaseer@touchstone.com.pk', NULL, '$2y$10$QXMvIXvQ0qY.zKmwSUOXX.zxiaWMTQMXJ7tKZCBC/YVtVpTeZag2m', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(120, 3, 2811, 46, 47, 'AIZA KHAN ', 'aikhan@touchstone.com.pk', NULL, '$2y$10$NTCg9x.TXJV3.1fE8kL0I.ZK8ERbxCui4ekIQE1kCKVRo6mkkwPum', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(121, 2, 2815, 11, 12, 'HASEEB AHMED', 'hahmed@touchstone.com.pk', NULL, '$2y$10$SMW2rDWNXme8Tgkx0YrCEuMeTgXmb54p8ReD9/YHJGK95lpPD/bEO', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(122, 27, 2848, 11, 12, 'TABITHA SOMMER ALBERT', 'tsalbert@touchstone.com.pk', NULL, '$2y$10$ZvdsEfVSiOMOCmQ00a0/weYjGsd6oMeWLs6Nr.WBegAfTPOs7nE2e', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(123, 71, 2858, 11, 12, 'MUHAMMAD NAUMAN', 'mnauman@touchstone.com.pk', NULL, '$2y$10$B4HE7vKwlY6mZ20KDXsnmuPYaUmFqJfADebmtM/MV4E1MDkgVl0xi', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(124, 13, 2867, 33, 34, 'MARYAM EMAN TASHFEEN', 'mtashfeen@touchstone.com.pk', NULL, '$2y$10$7ykvMibGfEqEihtSEAqdkeq8gGLpuw3TcDcAC4kw51ObCFA5XTCma', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(125, 3, 2884, 1, 2, 'SYED SHAHAB KAZMI', 'sskazmi@touchstone.com.pk', NULL, '$2y$10$icrXb0Y8cDwHxXfQvzcDOuKPFcwma9kE7Igs4GS802ii.rbRa3GKG', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(126, 2, 2895, 11, 12, 'ASHIR BHATTI', 'abhatti@touchstone.com.pk', NULL, '$2y$10$MUM1tHg21teJqQHKg4tJMOiv.qGvZM0zAjDudgQmkNkBx5euvTQ8u', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(127, 3, 2928, 46, 47, 'NAEEM HUSSAIN', 'nhussain@touchstone.com.pk', NULL, '$2y$10$f75GbUz3noJSNYab377kpuC6tjT0JGP8ZKUhOFnfFxcBGZoMnjJZa', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(128, 16, 2933, 11, 12, 'SHAROON GILL', 'sgill@touchsone.com.pk', NULL, '$2y$10$wehABcE3Qblcds1wjhGFDOjBxPgs2rGtooeoAgO/QBGhyUARlygHq', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(129, 75, 2943, 11, 12, 'AHMER AFLAK CHEEMA', 'acheema@touchstone.com.pk', NULL, '$2y$10$WzSqsIzdJkTzMG8haccXkeB45tmm2jZMOykkx9bwrJeePkFmrcRTi', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(130, 29, 2970, 30, 31, 'SEAN STEVENS', 'SEAN@touchstonebpo.com', NULL, '$2y$10$4Ci2LGcq5rfWZooT81.EbuaLcBy2n76syQUAzX8yxRNyBjPcyGNAu', 1, NULL, NULL, '2021-11-19 17:13:29', '2021-11-19 17:13:29'),
(131, 27, 2986, 11, 12, 'MUHAMMAD AYAZ', 'mayaz@touchstone.com.pk', NULL, '$2y$10$jSsQgaWbYSpAH11R.5vhlutq83L8sgYMBdje116je0ObZ6vgWPuwG', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(132, 3, 2990, 1, 2, 'YAWAR MEHBOOB', 'ymehboob@touchstone.com.pk', NULL, '$2y$10$syIxdd8S/wNdRREKetOBY.EIupy7QKqMzeuJXZdi1PTolYckz37dq', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(133, 13, 2999, 33, 34, 'WALEED AZEEM', 'wazeem@touchstone.com.pk', NULL, '$2y$10$m1ml5T3fXbKlBI1XqhRy4.iQHD8jnRPehjxCho40yQKH2yjNR2cfS', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(134, 39, 3029, 11, 12, 'SHANZAIB ABID', 'SHANZAIBABID9001@GMAIL.COM', NULL, '$2y$10$tMeV4a5aYk56Litvg6Pdfe2UveZhcBpThmH4n/nPFU5HioJ2dLaoS', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(135, 15, 3030, 75, 2074, 'ARBAZ KHAN', 'hbs26@hbs.com', NULL, '$2y$10$1mpPwt2nRe64DiF4KpD5cOF0H99wZrWTXv081RY2CuslcuQF80rL6', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(136, 13, 3045, 33, 34, 'HASSAM UL HAQ MIR', 'hhmir@touchstone.com.pk', NULL, '$2y$10$MDr4uND6S432Phr5a80NVO09ubrFOfVM2tkYKU.rWMFTtdMLA0Lva', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(137, 2, 3053, 11, 12, 'MUHAMMAD MATEEN ZAHID', 'mzahid@touchstone.com.pk', NULL, '$2y$10$svPr2QIQxLCWY0KZ2ktiyOtDsabAyuD79i9D8hdj.2gq4a4vQHaDG', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(138, 72, 3055, 33, 34, 'ASAD JEHANGIR QURESHI', 'ajqureshi@touchstone.com.pk', NULL, '$2y$10$UU9q1HoLEUZqihPEqlJOruY9B7hueHOyHS1n8XFdo3XGAsZdV89.q', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(139, 13, 3065, 33, 34, 'CHAUDHRY TOQEER SARFRAZ', 'tsarfraz@touchstone.com.pk', NULL, '$2y$10$qVjh7.6Ipes9Yc0I/K3zkO9iUz4432iRvvysjxYvOPQruqydbTM9i', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(140, 27, 3071, 11, 12, 'NIMRA ALEEM', 'naleem@touchstone.com.pk', NULL, '$2y$10$kkdw.h6/sEd2Lq2vp8ovWe7Up9WR7HC7VMkb7Mnw1OLVcTidXus/S', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(141, 2, 3081, 11, 12, 'DANISH ALI', 'dali@touchstone.com.pk', NULL, '$2y$10$SYSIzjuZYfx/8ofBZXoeDOYZweKOZP2kcazTvrGdOjgBYGwrwPxPi', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(142, 2, 3096, 11, 12, 'MUHAMMAD FAHAD AMJAD', 'famjad@touchstone.com.pk', NULL, '$2y$10$Nvqj.UtZoyaF1JxZC23VnuVkEnJz1PHvwpPb3J3qsHq3CvA37ZrO.', 1, NULL, NULL, '2021-11-19 17:13:30', '2021-11-19 17:13:30'),
(143, 3, 3104, 46, 47, 'TALHA UR REHMAN', 'tarehman@touchstone.com.pk', NULL, '$2y$10$g9Hjp0QITxq7M7LuWsFa7.4ZV6QJVwevfs03KZ4bXuPEbethjr4z6', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(144, 29, 11407, 30, 31, 'HomeFirstCA', 'test@gmail.com', NULL, '$2y$10$1jrJhq8Ngr.A1gUKYGynkupYtvqP4qERut8WQwE4hHu0tFYXWrbN6', 0, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:14:16'),
(145, 78, 3148, 11, 12, 'RAVEED GILL', 'rvgill@touchstone.com.pk', NULL, '$2y$10$KMkQhNh/jGtCeorYFMLtJeMvudyCib9aj7YcYyoLerUEAMeXEG/ie', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(146, 72, 3150, 33, 34, 'SYED BADAR UL HASSAN', 'shassan@touchstone.com.pk', NULL, '$2y$10$RgQaTVnpq/viheGRFTJ54eOiokF1.pIA6hYxzN39eOBmazf3lcso6', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(147, 39, 3153, 11, 12, 'RAPHAEL WYLIE	', 'raphaelwylie@hotmail.com', NULL, '$2y$10$3f2tslSTRTvHNPuxmF3ZX.6ztETiocdJTouU4mT7fq.ehj64MjxBm', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(148, 2, 3157, 11, 12, 'AHMAD AWAIS ANSARI', 'aansari@touchstone.com.pk', NULL, '$2y$10$PGnVFm2txW/p7p7PFIDmIeJO34ogUcwaXQKzcaET27h6dnSnL5ALK', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(149, 3, 3183, 30, 31, 'SUMIYA QURESHI', 'suqureshi@touchstone.com.pk', NULL, '$2y$10$2snnraMgGHZmwV3UdXEvl.KxfgQm2vk39Q4t//rz/ajPAvCYCoDgW', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(150, 14, 3190, 53, 1053, 'FATIMA KHAN', 'fatima.khan@touchstone.com.pk', NULL, '$2y$10$707cqslfhgzj6Q.nAISTG.J8OULDlWYxM/GNRBAyKcIUHqpdYaxDG', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(151, 2, 3201, 11, 12, 'SYED NOMAN SHAH', 'sshah@touchstone.com.pk', NULL, '$2y$10$8PDrgcG2uLFnr7yoWBRQ4esj2kcWawPBIyiQoFDqOIu0PkWXf0Zbe', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(152, 39, 3219, 11, 12, 'MUHAMMAD TALHA KHAN', 'mtkhan@touchstone.com.pk', NULL, '$2y$10$N3CLLWL/ZZzV0sdmEsNmlOMYuq7Rw9uIOPdgxqw3pldNdQctXU0S.', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(153, 14, 3231, 14, 15, 'ABBAS MOHIUDDIN', 'amohiuddin@touchstonebpo.com', NULL, '$2y$10$37eyJLrux2vc/7Q98IiQQuqFvRK4Sr3sQLLjsk7WVDBT5P1OGHjmK', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(154, 3, 3232, 56, 2055, 'ALI HAMAYUN EASHAI', 'ahumayun@touchstonebpo.com', NULL, '$2y$10$PLw5bhHkmpt.xKWnzMG4seU14DpkCEzWgaqA5AX75OV6BSuLG1p4.', 1, NULL, NULL, '2021-11-19 17:13:31', '2021-11-19 17:13:31'),
(155, 43, 3240, 11, 12, 'UMAR ZAIB SHOUKAT', 'ushoukat@touchstone.com.pk', NULL, '$2y$10$VObLFWoI0rSIJAibHPoo5eAZB05jSjjajc/nqTYN79VbTZxKIxU5e', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(156, 13, 3242, 33, 34, 'MUHAMMAD AASHAN BILAWAL', 'mabilawal@touchstone.com.pk', NULL, '$2y$10$0Qrk4KTkMd5eXJAx/obpmOhBwVRXVNP/3tkQyoli58I6ZNJufE1zq', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(157, 14, 3284, 30, 31, 'NASIR ALI', 'nali@touchstone.com.pk', NULL, '$2y$10$BrlRRk2Ubhpy/rU.PttUfenKjKn09B7hbOTkGvIIEq6.QTgd0hNyC', 0, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:14:16'),
(158, 40, 3292, 11, 12, 'SHEIKH MOHAMMAD WALEED ', 'smwaleed@touchstone.com.pk', NULL, '$2y$10$D49dfONk2btXKTh/l4Y/Sun50pLg/tbWQnKnoGTzMD.Okidx7kP.K', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(159, 44, 3308, 11, 12, 'SARDAR SHUMAIL AZEEM', 'sazeem@touchstone.com.pk', NULL, '$2y$10$LAoCkqhOREoqhKf9MnJJwuWSD.uJboWnhI.1pX7c9dfX/c.eJihlS', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(160, 71, 3310, 11, 12, 'ISMA MAZHAR', 'imazhar@touchstone.com.pk', NULL, '$2y$10$S27bbvGhUqRQ87iuYmEcEOoMsFHA5c3rxKwvEwoDTRDOQjZbQkV9C', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(161, 29, 3311, 30, 31, 'SOLARCLIENT', 'SOLAR@GMAIL.COM', NULL, '$2y$10$WVVWGnFlS0PYd8TVRSV5FeRJpz3nIFFjVaaIDNNbNNJmJmHWxVlHK', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(162, 39, 3323, 11, 12, 'WAQAR MANZOOR KAYANI', 'wkayani@touchstone.com.pk', NULL, '$2y$10$jPDfTRMQumntnLg3TiTtXu1qlLzLK6kxUy0oT75FNH2.C37NWZsEm', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(163, 40, 3335, 11, 12, 'ANEESA MAZHAR', 'anmazhar@touchstone.com.pk', NULL, '$2y$10$iO38pEOJ5ecfz3A3V6llqeUfIUGLiSwuGI7PeaX3wSf9o1VCD..Iy', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(164, 16, 3349, 11, 12, 'ABDUL AZAM', 'aazam@touchstone.com.pk', NULL, '$2y$10$KGBH7vxQwokpDdI.RW8xeuCkVlR8qydjVUN09XM4ie3dTbdyOlN2.', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(165, 40, 3387, 11, 12, 'MEHROZE GULRAIZ', 'mgulraiz@touchstone.com.pk', NULL, '$2y$10$X0Cs6.SZDImoSDH5JQQ9DehlK6CLPV8u/zEVmG88U0.t38k1Y/Gge', 1, NULL, NULL, '2021-11-19 17:13:32', '2021-11-19 17:13:32'),
(166, 15, 3394, 75, 2074, 'ZEESHAN MUSHTAQ', 'zemushtaq@touchstone.com.pk', NULL, '$2y$10$RQvGf/IW.ruQ4MiAWadzQO8evZgh0gj/i.pC0PdFTSA1VRUaHu5wW', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(167, 43, 3406, 11, 12, 'AMMAR SAJID', 'asajid@touchstone.com.pk', NULL, '$2y$10$nyZ8n4j3NMZxICaCNuOEwev7uCcM4u5Lnkv/bysU0rMrwnQhWVlGK', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(168, 2, 3419, 11, 12, 'RAJA RAMEEZ ABBASI', 'rrabbasi@touchstone.com.pk', NULL, '$2y$10$0p1AwyN1DAWTeAfGNQgIp.v/7Isg36WM4LoiKam5o38tZxd1NGXCy', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(169, 40, 3425, 11, 12, 'SHAYAN BABAR', 'sbabar@touchstone.com.pk', NULL, '$2y$10$oyMgrC2WBaaxQsEcYe0tb.FEMYOa.ltKdjG64A9CqRqbNCEosz5by', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(170, 2, 3438, 11, 12, 'UMER MASOOD KHAN', 'umkhan@touchstone.com.pk', NULL, '$2y$10$rwJLCo8Pqhd.PiUtOJkS.u9Oi5DtEvHDDYrBHPR8Dz95Qi0Qux9tW', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(171, 39, 3465, 11, 12, 'JONATHAN SHAHID', 'jshahid@touchstone.com', NULL, '$2y$10$BCiUahOvxgO3mmjaICCjd.5Kbp1nDXShcp7HYPghj8qHWNJmlFncS', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(172, 3, 3495, 46, 47, 'ABDULLAH ZUBAIR', 'azubair@touchstone.com.pk', NULL, '$2y$10$QKXI/HsLAwH5snCql4eJEOr/ci3N8wLpVHxNHdqq/eXFW18WXOlMm', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(173, 3, 3496, 46, 47, 'FASIH UR RAHMAN KHAN', 'frkhan@touchstone.com.pk', NULL, '$2y$10$MKP06YuhCTlr7aH1V.ufk.XBTzdVwfqmJQ9vD13NdXQISR1pliGsq', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(174, 3, 3497, 55, 2054, 'HASEEB UR REHMAN KHAN', 'hrkhan@touchstone.com.pk', NULL, '$2y$10$5rn9Q1l2DCByqX0KpyNeROB8aD83g/ClQpo/aL4U43jbWmRWtBIl6', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(175, 2, 3508, 11, 12, 'WALEED IFTIKHAR', 'wiftikhar@touchstone.com.pk', NULL, '$2y$10$kx7oBQVL1J/F.HQ6PsgxO.ecNjseNkbeYP6gacTUYQQG1yO3y26Xa', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(176, 2, 3510, 11, 12, 'ASIM AHMED PERVEZ', 'apervez@touchstone.com.pk', NULL, '$2y$10$BZmHbHLNXp1IsMtfWecKi.R0n5fd2SMrjePda/fn7yqMReNa9/0RO', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(177, 74, 3512, 11, 12, 'MOHSIN ALI ASIF', 'moasif@touchstone.com.pk', NULL, '$2y$10$YnnUhXyDeBQdH6.TRYtfJO3CN/IiPiY7D1hp3wGOkVFj8CYoZFjGC', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(178, 44, 3513, 11, 12, 'ALI RAZA', 'alich@touchstone.com.pk', NULL, '$2y$10$gL.Mp0ybO39uECblL2/cM.48rGF04e1iVgtC09yxnYPUiPfF.TZXO', 1, NULL, NULL, '2021-11-19 17:13:33', '2021-11-19 17:13:33'),
(179, 40, 3518, 11, 12, 'FAHAD YOUNIS', 'fyounis@touchstone.com.pk', NULL, '$2y$10$nrPshMdUA1dqYd.PsB6QmOu6bUBtNQfBza4fP.bFnTGQCSQWtcvk.', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(180, 44, 3579, 11, 12, 'UZAIR KHAN KHATTAK', 'ukhattak@touchstone.com.pk', NULL, '$2y$10$RNDLdO15BV1kuPLsF9.2hewWcUaNoflnQClyjVox6gmq8NOdO5W9W', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(181, 2, 3604, 11, 12, 'SHOAIB SAEED', 'shsaeed@touchstone.com.pk', NULL, '$2y$10$Wt11ucGeo1yOMppzJ3YGeuxeCC0xLTaOYf.E1GyQ8jGQS8VnMe4de', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(182, 45, 4626, 11, 12, 'SHAHZAIB KHAN', 'shzkhan@touchstone.com.pk', NULL, '$2y$10$ICN.l09UVdAceexeyVS2o.Qb4BiMPek2vOJa3z7PZfZ98J6A/OvnO', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(183, 3, 4637, 55, 2054, 'SAQIB PARWAIZ', 'sparwaiz@touchstone.com.pk', NULL, '$2y$10$SmImN5HV3ZaoJxQrBvyuVugpszH4d.5.hJGUvaRotiWKng4IWuUju', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(184, 27, 4640, 11, 12, 'RABBIA KHAN', 'rakhan@touchstone.com.pk', NULL, '$2y$10$RmYaQtsKCT3Ex0jrVJF8Y.M9HQ/Coe1GysNK.9Q1XddXgeRdje6MC', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(185, 2, 4641, 11, 12, 'MUHAMMAD SHOAIB', 'mshoaib@touchstone.com.pk', NULL, '$2y$10$LbkaqOSnLWXCaCKP7G1nhOf5qeIJYIc9./bc.xVhSCAmKI1rhqQk2', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(186, 44, 4663, 11, 12, 'JALWA ALI', 'jalli@touchstone.com.pk', NULL, '$2y$10$DsnlHUGwY34XntXET8YGQe05ohY6eOC2plXVbCogJ59slHnkTzrGG', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(187, 44, 4665, 11, 12, 'ZARAFSHAN ALI', 'zarali@touchstone.com.pk', NULL, '$2y$10$cAMjHrVVjEASJUW9cdOGA.Gh/kuZNooxvtmwPYc8winlRuk98tA/6', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(188, 3, 4699, 46, 47, 'SUMREEN STEPHEN', 'sstephen@touchstone.com.pk', NULL, '$2y$10$yuGdgLaORYv8Z6AYccwJ4e74Y1U.q0PWBM0hzrpMqDflIq.FECY/G', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(189, 75, 4701, 11, 12, 'EHSAN UL HAQ', 'euhaq@touchstone.com.pk', NULL, '$2y$10$eCGaUMjlX8BoJt95U5MYe.l8oFLAA0iclmDMpkG7ugHx8kAJD3QPW', 1, NULL, NULL, '2021-11-19 17:13:34', '2021-11-19 17:13:34'),
(190, 75, 4707, 11, 12, 'SHERWIN ROBINSON', 'srobinson@touchstone.com.pk', NULL, '$2y$10$ozBqydYjhmwdgBtI0sAtdeWhs0mYsjmd47TwjPN706P628esF9U0.', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(191, 44, 4720, 11, 12, 'MUHAMMAD UMAR', 'muhumar@touchstone.com.pk', NULL, '$2y$10$vOChSLxlbZGbWLBif36wWOJilWPrdRUfl6ZuZWvcRHnU.HKogTniK', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(192, 43, 4731, 11, 12, 'WAQAR SHAHID', 'wshahid@touchstone.cm.pk', NULL, '$2y$10$e/iXrAK1jD0YIJhKXGmODuwxohqZ3xe2HbAZEO24ypCKICLSAS2yK', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(193, 43, 4734, 11, 12, 'OBAID UR REHMAN', 'ourehman@touchstone.com.pk', NULL, '$2y$10$/46dD0b1HB8z6FpUXzjW5egXbekGuL2kEn58dXBh/3LslT0R8CPm2', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(194, 62, 4737, 11, 12, 'SAQIB WAHEED KHAN', 'sqawan@touchstone.com.pk', NULL, '$2y$10$eowGnKLznHSAb2YBOPc52ep6rEU0fC0pl4/hfjt8kbPMoVKO4Lzw2', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(195, 43, 4746, 11, 12, 'AWAIS HASSAN', 'awhassan@touchstone.com.pk', NULL, '$2y$10$eDiPk3bBcRVCbkzkSexQfeAH2CA/vJ11UrN./c.3Ast5fOSk5AuL2', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(196, 1, 4750, 11, 12, 'SAJJAD PERVAIZ', 'spervaiz@touchstone.com.pk', NULL, '$2y$10$JjAq2u9JNln8/ngTU0lhFehhXCOCQHiZPXbPW84aqlRT9zxBbiav6', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(197, 16, 4752, 11, 12, 'MUHAMMAD SHOAIB', 'mushoaib@touchstone.com.pk', NULL, '$2y$10$WH1JXuDH39u8zsz1MIFsZu2n7MwSpPOaf200AFBfTD.zjNmEA5Vum', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(198, 44, 4785, 11, 12, 'MUHAMMAD TAIMOOR', 'mtaimoor@touchstone.com.pk', NULL, '$2y$10$j2qgKfHoa7oWoqg/uo271eGHzwgEx3jlQvSlqoBhnWiwBIthsHkYW', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(199, 44, 4790, 11, 12, 'MUHAMMAD USAMA KHAN', 'usamakhan@touchstone.com.pk', NULL, '$2y$10$v2eCEVicz2Je8mm1VFTF8.154yLKogHxdUvQACRQd3nD4fFo3XSy2', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(200, 40, 4798, 11, 12, 'JAWAD SARFARAZ', 'jsarfaraz@touchstone.com.pk', NULL, '$2y$10$hTyCMIbobW4DGmrOVIsTWuzycPOf5oiYGKhhHvUIU2IjaiagOizIG', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(201, 40, 4803, 11, 12, ' QAISAR NAWAZ', 'qnawaz@touchstone.com.pk', NULL, '$2y$10$eN0TE60OujAu7t0Vn9Gpn.EfxjpSQgD7fi8a0OkNL2SyMmqsKIiS.', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(202, 44, 4807, 11, 12, 'ABDUL QAYYUM', 'abqayyum@touchstone.com.pk', NULL, '$2y$10$FBKxWxAqg8NZOHh4ak80dukSOa9f6NrB181jtXlzp.3PgIrGWcxxW', 1, NULL, NULL, '2021-11-19 17:13:35', '2021-11-19 17:13:35'),
(203, 44, 4810, 11, 12, 'ROHAIL HASSAN AKHTAR', 'rhakhtar@touchstone.com.pk', NULL, '$2y$10$tvqwVhV/xsae/wugdFHtk.MtMlElfQi1BTxZIIuNtlNdqbrliZr86', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(204, 75, 4814, 11, 12, 'ZAYAN NOOR', 'znoor@touchstone.com.pk', NULL, '$2y$10$XZqikgfEsh3khdKOlvX1OeCnJWinwISX7vreLH3l/A3Twju36JdEm', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(205, 44, 4821, 11, 12, 'AHMAD NOOR', 'anoor@touchstone.com.pk', NULL, '$2y$10$TKulujQDCqjnq86j70wH8O8dZ.1TJ.4o67jhZbsHndhkGqfEuyE.6', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(206, 2, 4823, 11, 12, 'KANZIC JOHN', 'kjohn@touchstone.com.pk', NULL, '$2y$10$PPlCwfLtuq3kcOwXJwN/xOR3RRpw9Q.oGpa.tPx20SR.ShW5P0SAK', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(207, 44, 4840, 11, 12, 'OMER FARID', 'ofarid@touchstone.com.pk', NULL, '$2y$10$b1bM8QVUlVQGDA6l6Xx3terApRZl2MutCgJFzlI.p7HpfVS3pmKca', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(208, 15, 4858, 75, 2074, 'HAFIZ SALMAN KHALID', 'hskhalid@touchstone.com.pk', NULL, '$2y$10$YeAbHHQ6Vhke4TjYkvr66OgIn2jwPfXvIHfPgjY5whq4iQ/.XVsBq', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(209, 16, 4864, 11, 12, 'MUHAMMAD ARSHAD', 'marshad@touchstone.com.pk', NULL, '$2y$10$W8TG0ALorrnTTyKlhcgyPu.WSDjYewLbhmA0Fqm.eQZ69C/dkSC3a', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(210, 43, 4881, 11, 12, 'RIDA KHAN', 'ridakhan@touchstone.com.pk', NULL, '$2y$10$pAleXsZvrGgZ3/JZh307Y..QvsLKt2Opz8QtfkqOzkcG2.NXMQBsO', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(211, 43, 4883, 11, 12, 'REHAN ABBASI', 'rabbasi@touchstone.com.pk', NULL, '$2y$10$ORu71Vz10kkI6CloZ5Gp1.9wZlQUTn5E8OjuwkutosgYnEGhE0wrC', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(212, 40, 5890, 11, 12, 'QASIM ANWAR ABBASI', 'qaabbasi@touchstone.com.pk', NULL, '$2y$10$2GZE2nNuvUiwsnGguLfgQuOGSZUSSYYtpzYCikssmOkGcZiKii5om', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(213, 40, 5893, 11, 12, 'MUHAMMAD ALI', 'muhammadalii@touchstone.com.pk', NULL, '$2y$10$rRZAX1yjK2TS5Qj673hZNOutF1cw2k.YFzq0iRq3UdRbmLLLP5Eh.', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(214, 2, 5898, 11, 12, 'JERSHUEM JERRY', 'jjerry@touchstone.com.pk', NULL, '$2y$10$IU43PUmOX8vvNPp/nnuLoO4k09OUrmv.SCebg0KQIsRYUIwyDz4i6', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(215, 2, 5905, 11, 12, 'SHAHRUKH KHAN', 'shahrukhkhan@touchstone.com.pk', NULL, '$2y$10$k.QDNRwaTzYNrhJnhLOVkefA33E1.BBbpQWOwOxTLutqWOq/lcKdq', 1, NULL, NULL, '2021-11-19 17:13:36', '2021-11-19 17:13:36'),
(216, 2, 5906, 11, 12, 'HARIS ELAHI MIR', 'hmir@touchstone.com.pk', NULL, '$2y$10$zSZ4dtxZob4c9TbX/lnaXedjufjQjumYLQ58hQuU5RqobUgZ6Bs4a', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(217, 2, 5916, 11, 12, 'PETER LAWRENCE', 'Plawrence@touchstone.com.pk', NULL, '$2y$10$fziIADLnKw./QH5obBCtyuO5iuFv9VtD7Lho950Q04yk5iqUpuPQS', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(218, 43, 5919, 11, 12, 'MUHAMMAD TALHA', 'mutalha@touchstone.com.pk', NULL, '$2y$10$AMNSdwS1FgvC08aJ8hetYeqxqTxGGE5we8HU0/4UI1X0qlmKLatGK', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(219, 43, 5923, 11, 12, 'SYED EHTESHAM HUSSAIN', 'sehussain@touchstone.com.pk', NULL, '$2y$10$UMiO1oY06ygbUtG3JZxI7OaXlKVcOuZ7s5YX7NSbK5JcV0eDOgbyi', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(220, 16, 5931, 11, 12, 'OMAIR MUKHTAR', 'omukhtar@touchstone.com.pk', NULL, '$2y$10$Vo2W77v7L4Mz0gOe5j4Ny.SM0IVAQ2kvBa.iY1IVlJ.h5Ca92Ibve', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(221, 40, 5942, 11, 12, 'DANIEL RAZZAQ', 'drazzaq@touchstone.com.pk', NULL, '$2y$10$4rDIsueLzTAjy3/Qr1fOCuaO41RsckMQ9.mxyqTWe3WKA.ticfxTe', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(222, 27, 5946, 11, 12, 'RIDA ANWAR', 'ranwar@touchstone.com.pk', NULL, '$2y$10$pVU1hJ7Xp1iuW2wbBjQEMeS6U5OoHhjU7VS1T5dgAFKTuoQOMTgYu', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(223, 29, 5965, 30, 31, 'Solar Genesis', 'solarnv@touchstone.com', NULL, '$2y$10$.vK.BTFv.0WgxkX1h5REv.ds2lVXwsXNrJdzgoBfTKdnPqNaEfkVO', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(224, 27, 5972, 11, 12, 'AMMARA BRAIKHNA', 'abraikhna@touchstone.com.pk', NULL, '$2y$10$nATwNHkvh1QZF6HRx7OYK.TqGklEQRNuTE8nFk2oAOx6fEZCFgj/u', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(225, 43, 5981, 11, 12, 'MUHAMMAD BIN QASIM', 'mbqasim@touchstone.com.pk', NULL, '$2y$10$Ot5h/r0dhEM8/d81UStuuuZN/ujuJ4aFChz2XWEJgyoGW06t9xmQK', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(226, 44, 5990, 11, 12, 'DANISH SHAHID', 'dshahid@touchstone.com.pk', NULL, '$2y$10$FjROXqHYviYoFLu1yH8Od.y7hktAiaS2ZY0wXU7xuoVnjN4.WUtyK', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(227, 15, 5992, 75, 2074, 'AQSA HAFEEZ', 'ahafeez@touchstone.com.pk', NULL, '$2y$10$VIrGwArnGPfXu./UPX6oGOSf0zcg.J8gN2jeN6WUtOQT/yiXajVAC', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(228, 44, 7015, 11, 12, 'IQRA ILYAS', 'iqilyas@touchstone.com.pk', NULL, '$2y$10$lnQcDzYmTMbNfd691iOvduyUnnMSVP2KbNX/ZZ9NfO71JQWn99v9W', 1, NULL, NULL, '2021-11-19 17:13:37', '2021-11-19 17:13:37'),
(229, 44, 7038, 11, 12, 'NAILA AKRAM', 'naakram@touchstone.com.pk', NULL, '$2y$10$LyDEcUn9Z4Lm5HoynDXHsOr2yJMS0w4a8vXViW/jJFkS0LMKIg6VC', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(230, 44, 7046, 11, 12, 'BISMA ANWAR', 'banwar@touchstone.com.pk', NULL, '$2y$10$1pe3iXsdHTAOno5cXrDdHedKLUOV/8gjYZsWhZij.77WM.Sl..GhS', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(231, 2, 7048, 11, 12, 'MUHAMMAD DAOUD BAIG', 'dbaig@touchstone.com.pk', NULL, '$2y$10$A.FZh6NQ8Z/OL/7eavAmiOCAulQk3cf2cO91R2oz85taVLicj/zgm', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(232, 16, 7053, 11, 12, 'SYED HAMAAD UL HASSAN SHAH', 'hahashah@touchstone.com.pk', NULL, '$2y$10$EY/..KfJKY.73kf/Fj7BSebARzJr34NuNBOHqyWn7tejremXQcB2S', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(233, 43, 7056, 11, 12, 'MUHAMMAD USMAN', 'muhausman@touchstone.com.pk', NULL, '$2y$10$R96VJCgTqFqzj5D4etsNkOL7i8lGejS52TxqmAlY59JecHb8RJZN.', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(234, 29, 7057, 30, 31, 'Cody Henderson ', 'cody@touchstonebpo.com', NULL, '$2y$10$vK0YmxdEOfnaEYnJeSQu1ePqkAPCRo.J6/N.IAteEa9X7fZrRAJbO', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(235, 2, 7059, 11, 12, 'ABDUL MOIEZ MEHMOOD', 'ammehmood@touchstone.com.pk', NULL, '$2y$10$9hA419lpJQM3BehCwre7k.jpGFIPPy0FjUoY5mNfeF3pC09AFpdWu', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(236, 2, 7061, 11, 12, 'SOHAIL AHMAD', 'sohailah@touchstone.com.pk', NULL, '$2y$10$cxaELLCnGeONVCx6RtyRD.lXqHdke98wqYiagv16twMEm2.afdVDO', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(237, 2, 7062, 11, 12, 'USMAN SHAFIQUE SATTI', 'usatti@touchstone.com.pk', NULL, '$2y$10$j2eUFEm/b5Os4MK3eoaDeOlodNrUE5TzvRI/Aq8nuy2HtlBF6xPVm', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(238, 29, 7075, 30, 31, 'Raymond Wilson', 'RaymondWilson@gmail.com', NULL, '$2y$10$9GDGMFZMIfaATX/eW6VlM.uiaffIdutVeH5YjIc/KZdIYEbzUvxvq', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(239, 29, 7077, 30, 31, 'Jay Roldan (Spanish)', 'JayRoldan@gmail.com', NULL, '$2y$10$pXRk0HUue3n2tfmgBKL/D.9hz8KRFV1B33wBQ3cCAGvvsjQ8omdv6', 1, NULL, NULL, '2021-11-19 17:13:38', '2021-11-19 17:13:38'),
(240, 29, 7081, 30, 31, 'Albert Valenzuela (Spanish)', 'PeterMazzola@gmail.com', NULL, '$2y$10$da.TzMxCnc4YA7uQIhuiEuCYPqlDG.KIwgZOvX/WoRtsjzMEAeLOW', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(241, 29, 7083, 30, 31, 'Aleksandr Baranov', 'AleksandrBaranov@gmail.com', NULL, '$2y$10$PuyEHk1iSmqlx/cuNoIfqOSWFSU/LCDv2yyuqQh4ReMlOGmh4VcB6', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(242, 2, 7085, 11, 12, 'FARHAN HAMAYUN', 'fhamayun@touchstone.com.pk', NULL, '$2y$10$cY8J61ZK5mM1whLKkaTgCuOl1gxIeyPxkT0wbRNZ.UsCJkfXVukmW', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(243, 15, 7092, 75, 2074, 'HARRIS AZHAR GHAURI', 'haghauri@touchstone.com.pk', NULL, '$2y$10$E3mheg1BWejzWppYzEVKP.SdkzVlpbkYgDzJNZU9RYX3wJvBsLX9i', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(244, 2, 7124, 11, 12, 'NABEEL AHMED QURESHI', 'Nqureshi@touchstone.com.pk', NULL, '$2y$10$BOddIHHWXToiznvSIoQ1EuG5j/FLhmBK1x17Nw0mC3xHJFBAqfkV6', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(245, 2, 7129, 11, 12, 'SHARJEEL SHAKEEL', 'sashakeel@touchstone.com.pk', NULL, '$2y$10$4SKl.IWyyrglgzi.UIOXMOKLT4zTxvc860AePMgmJH5PeIq8ts7o6', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(246, 44, 7131, 11, 12, 'MUHAMMAD AQEEL', 'muaqeel@touchstone.com.pk', NULL, '$2y$10$3J7exdE.WN9rxwi0FUYwtukyNfpsaySa7RxSVBXJSrHLQMvamEkCq', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(247, 44, 7135, 11, 12, 'MUHAMMAD ALI', 'muuali@touchstone.com.pk', NULL, '$2y$10$pwb8SlinRMYqdT9zIVyp9usMQMVlFyqqcUr4kvRjB3h2mfau3PSQi', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(248, 2, 7138, 11, 12, 'MOHSIN IQBAL', 'mohiqbal@touchstone.com.pk', NULL, '$2y$10$47q5zctZA7uXBRPsaIfUge6SwHl7AEbBGor0RtoxluUO0SsTOSOK.', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39');
INSERT INTO `users` (`id`, `campaign_id`, `hrms_id`, `designation_id`, `hrms_designation_id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(249, 72, 7141, 33, 34, 'KAMRAN IQBAL', 'kiqbal@touchstone.com.pk', NULL, '$2y$10$vFDRAlY3xwA27dq0u0rgHeayduOPog7RZG0nMWdzAbs89ymfe9pxi', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(250, 13, 7145, 33, 34, 'WALEED AHMED', 'wahmed@toucstone.com.pk', NULL, '$2y$10$f2Oqk6syR1w0WyquHUZ9GuvZoIpA4QgrPpZZo8OKm2kURZeSU10py', 1, NULL, NULL, '2021-11-19 17:13:39', '2021-11-19 17:13:39'),
(251, 44, 7146, 11, 12, 'HAMZA MUNEEB KHOSA', 'hkhosa@touchstone.com.pk', NULL, '$2y$10$ryp3T1OZDCmQxFgWR6.x3euewNy.y7CgHKwVZsekiFORdnf11iM8C', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(252, 44, 7158, 11, 12, 'JAZIB', 'jazib@touchstone.com.pk', NULL, '$2y$10$bnfDGxIkGArfCuxbKQuVeui3FjM8XZjZPwy6nzUT5KDhGuyFaDB5S', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(253, 44, 7161, 11, 12, 'MUHAMMAD YOUSUF', 'myousuf@touchstone.com.pk', NULL, '$2y$10$kAnirLLI9LciQJgIvTreOurGxhlLcivBn2SejupV1y1szjsaPJh06', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(254, 72, 7171, 33, 34, 'LARAIB BINT E RAFI', 'lrafi@touchstone.com.pk', NULL, '$2y$10$vvpyE1G5q.uSJqxti7zphuBq.ul7Fs3H30zG4qDRU5B9s77GO5Yoy', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(255, 75, 7172, 11, 12, 'MANAL AMIR', 'mamir@touchstone.com.pk', NULL, '$2y$10$/UqjTKE3Czbzx5mfsuLUSOYHkaA1qt5Gbzn.pgS0AziRL0fswuy42', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(256, 40, 7181, 11, 12, 'MUHAMMAD SALEEM', 'msaleem@touchstone.com.pk', NULL, '$2y$10$T8C6s15HO3xqot9iN1Zr2OAotxuapIJtCC7h3dEzxN0G01Z1dutL6', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(257, 27, 7191, 11, 12, 'HASSAN RAZA HASHMI', 'hrhashmi@touchstone.com.pk', NULL, '$2y$10$kG7MghzN5Qsl6CKc0xuOqO0zU7.brdydeyfcdQzPLWRxf6vqVGS26', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(258, 44, 7196, 11, 12, 'TEHSEEN KHAN', 'tehseenkhan@touchstone.com.pk', NULL, '$2y$10$itOsLF.hObeNId3hBOoTXuMbmQKtLr1MM8n6A4mB4nON5s6UkRVpi', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(259, 13, 7198, 33, 34, 'SHARJEEL ADAM RAJA ', 'shadraja@touchstone.com.pk', NULL, '$2y$10$8GFx6VgbPlUPBMDQi8wZj.vJKsIHFFeJvE/opQbrm2qHu7Fl50kFy', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(260, 44, 7204, 11, 12, 'AFSHEEN ROBIN', 'arobin@touchstone.com.pk', NULL, '$2y$10$Xn9q2YumYT3k.xBo5bgwH.WGl5tHI/Zx4wfeb4xrEy8Hplzdrzpa6', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(261, 2, 7211, 11, 12, 'CH M UZAIR RIZWAN', 'urizwan@touchstone.com.pk', NULL, '$2y$10$yK8CkOJfZHxfkvGJ207WR.zd/qwmcV0JNqqclz/Bdolp0TttpCmpm', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(262, 2, 7223, 11, 12, 'ARSLAN TAHIR', 'artahir@touchstone.com.pk', NULL, '$2y$10$gIFvkRJwHpOkMmgww6bi1Od8PwhLXKEA0B1yXDQgLjd0uR.U.mqtC', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(263, 44, 8242, 11, 12, 'SALMAN IQBAL', 'saliqbal@touchstone.com.pk', NULL, '$2y$10$7n6DXVaAc3muGaZ0UmsNK.ptj5FzSvGWvSMHlz6ZHgFCj/DgQVJEy', 1, NULL, NULL, '2021-11-19 17:13:40', '2021-11-19 17:13:40'),
(264, 44, 8258, 11, 12, 'SHEHERYAR UMAR', 'sumar@touchstone.com.pk', NULL, '$2y$10$hM5jfQbsLTfmxMa3sxTi.ela4aTrROEyThn1dnbfUnP5rCbTQdPaO', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(265, 44, 8259, 11, 12, 'IKRAM UR REHMAN', 'irehman@toucstone.com.pk', NULL, '$2y$10$IG.gri./uutYUXu07y.UCO0vfJDeIcjyq6XxspHrgaT9WVspSB62C', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(266, 40, 8263, 11, 12, 'ANGEL DAVID', 'angeldavidgs55@gmail.com', NULL, '$2y$10$ILadiMcs5idVJOjpdT1lg.ThW6kjx9y9Z0/T21GMjanrhpcsr1YwS', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(267, 44, 8265, 11, 12, 'ABDULLAH ZAFAR', 'azafar@touchstone.com.pk', NULL, '$2y$10$qqGtnypBGm9AcNQaT8a/2ep8q11ThuimTnUlCzdWf3t0ZKnXEwJ3W', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(268, 40, 8271, 11, 12, 'MAKHDOOM MUSTAFA SHAH', 'makhshah@touchstone.com.pk', NULL, '$2y$10$cU6PE6SfDwmE33fwClYvreq3HnDu5in//Lq1fo1VOymqvV01xqdyG', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(269, 74, 8276, 11, 12, 'SYEDA TAFSEER ZEHRA', 'tzehra@touchstone.com.pk', NULL, '$2y$10$7PQ3tA4Y9Kc8MNj1/nIR7uTFU..T/Q6cw7vM62aP5nHNec6hiOjCq', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(270, 43, 9281, 11, 12, 'MUNEEB NAWAZ', 'mnawaz@touchstone.com.pk', NULL, '$2y$10$.b5NqvBB78AhXLYP0Vk9DultKHOAUgZmDyRVmD5r7RYhdy09Bc0pe', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(271, 43, 9282, 11, 12, 'ALI MUNAWAR', 'amunawar@touchstone.com.pk', NULL, '$2y$10$oJY7YZnSYu/Nslk8QL1vO./ShkFbTY/l.ho7z8Byqd5AOEClaw3B6', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(272, 43, 9283, 11, 12, 'ALI AHMED KHAN', 'ahkhan@touchstone.com.pk', NULL, '$2y$10$59io1.sSVHwj0e03I9Q2T.3OfzWzVbOeegM5Po3YA60sALPOB15n.', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(273, 43, 9284, 11, 12, 'HAIDER RAZA', 'hdraza@touchstone.com.pk', NULL, '$2y$10$65KnD43SjI5/ZgMgX85FseB2WfYsM8vB6WmpU7vpyaz3Grb1AmGCG', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(274, 27, 9286, 11, 12, 'HAFSA AAMIR', 'haamir@touchstone.com.pk', NULL, '$2y$10$gi50qplMcjcZIY0uqFOig.qfmt4muj2dPNskVFqk12kSZ3DUZvpP6', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(275, 39, 9287, 11, 12, 'SYED MUHAMMAD ABDULLAH SAFDAR', 's.abdullah.safdar@gmail.com', NULL, '$2y$10$gLOJaSvwTQd94h1kF9BO/OEekzRttuoLCANu4x6ByOE/mKWDb5Ul2', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(276, 74, 9294, 11, 12, 'HIRA RAZZAQ', 'hirazzaq@touchstone.com.pk', NULL, '$2y$10$YFRWJubiqA.9LqOmz/qckeFBEyRAMP944OF6aznc5UrYtzxA5sH1G', 1, NULL, NULL, '2021-11-19 17:13:41', '2021-11-19 17:13:41'),
(277, 3, 9297, 46, 47, 'ABDUL MANNAN', 'abmannan@touchstone.com.pk', NULL, '$2y$10$r9AWTqX2XxddIhLYhyNreeKKhWZcUsFMzkZzvGbeeAEsXQroBTRiC', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(278, 40, 10300, 11, 12, 'SHAHZAD', 'shahzad@touchstone.com.pk', NULL, '$2y$10$gIi1Db7HMpGpoyGmCqIYkeV.mW1mLtqq6PsEjhp5XoxX6JBO6uFZm', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(279, 13, 10303, 33, 34, 'IQRA KHAN', 'ikhan@touchstone.com.pk', NULL, '$2y$10$nnbNacmSnwGq4h3ATxROzulzHFqFSMJG1RJNJmOI6712ghxO4j8RO', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(280, 40, 10309, 11, 12, 'PERSCEKLA PATRAS', 'ppatras@touchstone.com.pk', NULL, '$2y$10$480.07ixFf1/MTWKttYY4uBPfq.MrsVAeNY70y0B4DWHV3W42fNu6', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(281, 16, 11330, 11, 12, 'MUBASHAR HUSSAIN', 'muhussain@touchstone.com.pk', NULL, '$2y$10$3KlOkp75cApLkZkUr403bueFpiohvvSh1ZPhdTugpbJH64rkC.VkO', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(282, 39, 11339, 11, 12, 'HUNAIN SHERAZI ', 'hunainsherazi911@gmail.com', NULL, '$2y$10$qHgJtuRHXPg2DRO7Sl1wLOFQXGN8NTWzu8s0hLBkQvYQqnAn.Ar62', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(283, 29, 11357, 30, 31, 'SolarLT', 'lt@touchstone.com.pk', NULL, '$2y$10$CepaI3VklIN4iH1X12PLE.F6s0XllUaSoSvYAeFgzso/BG1Z802va', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(284, 43, 11362, 11, 12, 'RIZWAN ULLAH QURESHI', 'rqureshi@touchstone.com.pk', NULL, '$2y$10$mD2v/8vfb6EksBll5upe3OenBKlOsnBr0/Xdu323DQmazmkk1BUE2', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(285, 44, 11367, 11, 12, 'SHAHARYAR HUSSAIN', 'shussain@touchstone.com.pk', NULL, '$2y$10$LWPSUK6.YRG7X/yceiUjZOW46iofdSMRNUbpk.uNrGjJDckzMyHgu', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(286, 44, 11379, 11, 12, 'TAHA BIN SOHAIL', 'tsohail@touchstone.com.pk', NULL, '$2y$10$pwYl0FgAA2YONQA7vEYSueRFNDTSnaQL1gtwAjBycFX0OTs1Lt9eG', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(287, 45, 11385, 11, 12, 'SOLAMON ILYAS', 'sailyas@touchstone.com.pk', NULL, '$2y$10$fbtQbB0RGl9X65poE5cTAOin0.iAwHSttcW/TmMiJwtJYNBOkVk6K', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(288, 39, 11390, 11, 12, 'KASHAN MUSTAFA', 'kashanr218@gmail.com', NULL, '$2y$10$Ip4ovNJC5DePMwOamF5jkua.pszkZr/qin7mR/kt7gXNZ/Wx42aDu', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(289, 39, 11391, 11, 12, 'SYED MOHSIN ALI SHAH ', 'mohsinsheerazi85@gmail.com', NULL, '$2y$10$w9o6NxL.i4MLH0LSbPN.a.IFRWWbVylh5l./BcnXEv1yz864XZ1Em', 1, NULL, NULL, '2021-11-19 17:13:42', '2021-11-19 17:13:42'),
(290, 75, 11423, 11, 12, 'JASPHER JOHN', 'jajohn@touchstone.com.pk', NULL, '$2y$10$JaES4.hn/fkaufpizCudlucatWipS13/UC6wqTmPPKEkW2NgocmTu', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(291, 14, 11426, 30, 31, 'MUSTFEEZ RASUL', 'mrasul@touchstone.com.pk', NULL, '$2y$10$G1N9EaskeIL/zt.Vy3BMGusGsz/5GirFE26lwoXAdUZdD4eHWD/aq', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(292, 38, 11427, 11, 12, 'MOIZ ALI ', 'moiza@touchstone.com.pk', NULL, '$2y$10$ysvxSdEjHVYORtHhgTl8KOhJItPNOEhwSD0YWTvyrkEomE.Vnbxcq', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(293, 40, 11435, 11, 12, 'LAIBA IQBAL ', 'laibainqbal396@gmail.com', NULL, '$2y$10$ojZZp3VSWaJNAUehsDm77eP3ckIGRpMvcy9oRXXnaLQLt/Jr6wH2G', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(294, 29, 11442, 30, 31, 'Solar Soleeva', 'solarsoleeva@touchstone.com', NULL, '$2y$10$YCbaTSJpRCyD.5F82IiJhuqlWaz9gz0qa1.To4nOFcWuPzXJjtq/u', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(295, 74, 11444, 11, 12, 'HUMAYUN JAVED', 'hujaved@touchstone.com.pk', NULL, '$2y$10$s/QylbT8DFB8ec/Z7dkUp.5YK4Y83ZHTytCbVdKTLw2Onw3ofrfkO', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(296, 16, 11447, 11, 12, 'HASSAM GULZAIB', 'hgulzaib@touchstone.com.pk', NULL, '$2y$10$.Lp.wK/6heFimWfYd7hFOeBAHk1TOSSpTHneDJpbjoDPIaTKvEMMS', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(297, 44, 11451, 11, 12, 'MUHAMMAD UZAIR QURESHI', 'uqureshi@touchstone.com.pk', NULL, '$2y$10$shi5qV3UMAoyHDwIpGIQS.LXuoOvh9Ul/cF.udKpsxxZyHZ88P4mi', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(298, 44, 11452, 11, 12, 'AMINA SHOAIB', 'ashoaib@touchstone.com.pk', NULL, '$2y$10$wpSdKRurVKVdd/HGiRHawOgYmS770r3ZSLUisIrfTB6NrPdI57alS', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(299, 39, 11456, 11, 12, 'MUSTAFA SHAHBAZ ', 'shahbazbhatti006@hotmail.com', NULL, '$2y$10$e7hFPxSbj1khv0Q2JgKdguZZ4u5k1GZEq6tWdN/kOeqE9IPIV2vFm', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(300, 21, 11459, 81, 2080, 'ABDUL WAHAB ', 'jwilson@touchstonebpo.com', NULL, '$2y$10$/GDho4AlvAR2Ya6Kt165SumnTkULcwOY8Eo56/l/9MA6dJElX0yey', 1, NULL, NULL, '2021-11-19 17:13:43', '2021-11-19 17:13:43'),
(301, 75, 11462, 11, 12, 'ABEER ASLAM', 'aaslam@touchstone.com.pk', NULL, '$2y$10$JagioluI6sh/kCocShkw9esTJJYigzuFSu2cQIO9YgTulMKpS7L8K', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(302, 27, 11465, 11, 12, 'SEYED HASSAN RAZAVI', 'shrazavi@touchstone.com.pk', NULL, '$2y$10$DVptN2vph7nWxM9dPctj0.a7W6l64w7rArUWRbPNdMhu50Gj5pYSS', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(303, 43, 11469, 11, 12, 'MIRZA ATIF BAIG', 'mabaig@touchtone.com.pk', NULL, '$2y$10$N059pi71Y1Hl9Zitk4NK/OOr.OZJPIYWcauzFhc.sdkMYUwfEN44G', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(304, 44, 11476, 11, 12, 'MUHAMMAD SALAR ARIF', 'msarif@touchstone.com.pk', NULL, '$2y$10$Qwz.P4c0o2gLTnRzinauJuiuRfgY6gop.NtB6nz3JHXUc6fN/yPV2', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(305, 16, 11490, 11, 12, 'UMAR USMAN QURESHI ', 'uumarusman8862@gmail.com', NULL, '$2y$10$9qutECjCr9PxmqYFannk9.Dlil/mBFxTnkDSRDzfJFPqsfXPAfj8.', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(306, 75, 11492, 11, 12, 'SYED MOHSIN ALI', 'smhali@touchstone.com.pk', NULL, '$2y$10$E.GLURfWuy/ExP01Xnew9eUeKZtrY9zv5/evTAd8a2bJX8SPODFay', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(307, 16, 11493, 11, 12, 'ASJAD MUMTAZ', 'asmumtaz@touchstone.com.pk', NULL, '$2y$10$cNwcDKtvMoZu.jjiPlq.pOkTdYVFDzp9aHgAC7axZejPt92J3VmoG', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(308, 63, 11506, 11, 12, 'JONATHAN BHATTI', 'jonbhatti@touchstone.com.pk', NULL, '$2y$10$1CgSEbtKbe7b3DdEV2zAhuzhVOk3yHCguRyaH6SYiLokO2HTRmGnG', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(309, 63, 11510, 11, 12, 'HUMZA HAROON', 'huharoon@touchstone.com.pk', NULL, '$2y$10$n/.yV5Ur6SSzjDAC4HBmL.7Eyf.rsFyYa0pxfSpdoT0yFUjTmD/Dq', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(310, 44, 11516, 11, 12, 'LUQMAN AWAIS', 'lawais@touchstone.com.pk', NULL, '$2y$10$z4rR0EhZnoGLY9UP3cd1hujSPnMJAogjmk9U/JV.emGbN5TKGK8mu', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(311, 43, 11520, 11, 12, 'HAMZA IMTIAZ', 'hmimtiaz@touchstone.com.pk', NULL, '$2y$10$QgQRyAq3251bQ47yHj/W.eq93KB6pDN7fHAWecerL4D6Scqt8QyrG', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(312, 16, 11523, 11, 12, 'IAN DANIEL', 'idaniel@touchstone.com.pk', NULL, '$2y$10$XPlYIuUMOqPikHVQvjqnSeF6zoOMDXbSZMsGQF4uOafTkmGZ8KZ3K', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(313, 43, 11531, 11, 12, 'JAWAD HAIDER', 'jwhaider@touchstone.com.pk', NULL, '$2y$10$MB0HfFGOercwQT1YrsGz6O9RoovufihKwcm0/8NGrj39e.gnlbCuK', 1, NULL, NULL, '2021-11-19 17:13:44', '2021-11-19 17:13:44'),
(314, 44, 11534, 11, 12, 'ZOHAIB ASGHAR', 'zasghar@touchtone.com.pk', NULL, '$2y$10$rbODQA/0JBM7BfARjQ4Z8urck2fPPXw.sicu54udvJaVJdZcefmR2', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(315, 44, 11535, 11, 12, 'MARIAM SHOAIB', 'myshoaib@touchstone.com.pk', NULL, '$2y$10$y5RxatOfRQ8qD4qxjE8qcuRy4SzTE5rTjWQFbb6/u7GreEHyFNq5m', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(316, 63, 11537, 11, 12, 'AWAB HAMEED UD DIN', 'ahdin@touchstone.com.pk', NULL, '$2y$10$P.BA4wo.1asuwwJxjrfjJesvea/0oTXsRkhaJUCsb9DUqcxjuo.NS', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(317, 16, 11546, 11, 12, 'JAWAD SHAH', 'jwshah@touchstone.com.pk', NULL, '$2y$10$m6HhZQI6bs9Cu5lILkBrXOH5okRxyCWJwSTEt.tWPZFntiHhi2Jd.', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(318, 38, 11549, 11, 12, 'SHAHARYAR JAVED', 'shajaved@touchstone.com.pk', NULL, '$2y$10$OnevzB8Fn6mw.4DdfZbgB.Ih51LD2sidC7P1Ugwi/Jdfs6Xkyj0Dy', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(319, 44, 11551, 11, 12, 'SYED ALI AUSAF SHERAZI', 'sasherazi@touchstone.com.pk', NULL, '$2y$10$bGObRbAKvPa1msaP6hYinuEhGVzoZtnbo4P9EIBzFMi5ktei56qvi', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(320, 29, 11560, 30, 31, 'Champ_Mortgage', 'champ_mort@touchstone.com.pk', NULL, '$2y$10$EYTRbz5KSneMbYB9OGgnDuxG3L4.Esnda/Fj1IEAEP7mIou2kVXMK', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(321, 10, 11561, 52, 53, 'MUHAMMAD ABDULLAH TAYYAB', 'atayyab@touchstone.com.pk', NULL, '$2y$10$OTG..ueBFq.z2B2yRqOywu2NlYVxyp8hyL/nSF378YcEhSH.Y8DNC', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(322, 13, 11567, 33, 34, 'TAIMOOR USMAN', 'taiusman@touchstone.com.pk', NULL, '$2y$10$HSSOWbiM9Dkd7/XPbxRrnOs/O8IXlBU50CHVRzZ9wZLwUrXRABGqK', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(323, 16, 11568, 11, 12, 'ABUZAR SHAHID', 'abushahid@touchstone.com.pk', NULL, '$2y$10$EXkrVjw1MKiiFNUfGqPeceQ.dzNLYHMOlt/U0JbFvSYMntB3k1NA.', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(324, 44, 11572, 11, 12, 'UZAIR YOUNAS', 'uyounas@touchstone.com.pk', NULL, '$2y$10$ddsPchOQzQ23WWWK.pazAO3GF2zyrh79GXu9.yLqLsm3bALtl44Ty', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(325, 63, 12576, 11, 12, 'SHAHROZ MEHMOOD KIANI', 'smkiani@touchstone.com.pk', NULL, '$2y$10$iDq1xFQKzy1LKbwNZcl6w.V.JlcX0ipV6y5dxttuiIkMt8Gr2SZ0i', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(326, 63, 12582, 11, 12, 'MUHAMMAD IBRAHIM', 'mhibrahim@touchstone.com.pk', NULL, '$2y$10$JDTpXWUyfjCISZqw9aDc8evH1x6RSqSBsSsxH3203G6pdlcKYxG12', 1, NULL, NULL, '2021-11-19 17:13:45', '2021-11-19 17:13:45'),
(327, 63, 12583, 11, 12, 'HARMEET GIL', 'hgil@touchstone.com.pk', NULL, '$2y$10$s9jyuKku2dRIuirmxDRo6uFE42pMu67.ZHdKwE7ZYgK6GVNOnKbBC', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(328, 43, 12586, 11, 12, 'MUZAMMIL NAZAKAT', 'mnazakat@touchstone.com.pk', NULL, '$2y$10$fEI9D73mOXpBmpJpvrx.Fuzr7kkXkLNQv4x/cSFbj5QV6PUgoYr36', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(329, 16, 12587, 11, 12, 'MUHAMMAD BALAJ ABBASI', 'mbabbasi@touchstone.com.pk', NULL, '$2y$10$hig5kRAjLmHfC52ATZLkSebPoe3ls/LmTBJvDR7q98L62UzvsPCMm', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(330, 13, 12594, 33, 34, 'DANISH GEORGE', 'dgeorge@touchstone.com.pk', NULL, '$2y$10$NjVcXZ3EGPpU1jizxByL7.gKvEG9hvDP2cE4DgmVJQlXteJ5AIqu6', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(331, 44, 12595, 11, 12, 'JUNAID FAROOQ', 'jfarooq@touchstone.com.pk', NULL, '$2y$10$3As7qJhugxdYA9jYxSbd/uoF3yqxnVABY.qbIpVJjuoVoet4bDw9a', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(332, 44, 12596, 11, 12, 'ARHAM BABAR', 'ababar@touchstone.com.pk', NULL, '$2y$10$VhFx6qhI5dg6KlrNT6My3uro/7XQalC3eMiZDdbtyy6qcV6ntK4Lu', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(333, 29, 13603, 30, 31, 'MKC Mortgage', 'mkc@touchstone.com', NULL, '$2y$10$IStvQAIXsrYIDbagFrSC2O0X5FVPgfs.9vmYYYrtbu6NFPYQiC.iO', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(334, 74, 14599, 11, 12, 'SUNDUS IMRAN SMITH', 'ssmith@touchstone.com.pk', NULL, '$2y$10$IVXMOPTl3hNHdNTLnk9NyOs.Pp9x0FlCMEn/vGeTTBpOHfn12QBES', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(335, 16, 14601, 11, 12, 'KHWAJA MUHAMMED MOBEEN AHMED', 'kmahmed@touchstone.com.pk', NULL, '$2y$10$QgoWLCj0iHq2QBZirpIrvu5P0F5e6o2owrFZc83vJVDXYXKdPF4yq', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(336, 75, 14603, 11, 12, 'MANAHIM IMRAN SMITH', 'mismith@touchstone.com.pk', NULL, '$2y$10$OjwbSoE9HxfNpLrLaYK7bOGkw/AXKTcbkFqpHsEN5XhiEdEH4Aal.', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(337, 74, 14609, 11, 12, 'RYAN RIAZ', 'rriaz@touchstone.com.pk', NULL, '$2y$10$MmVZJVfXml4DxoNls06c3OFligseC.vcKQUEAZr40ZAIK7n24wkqK', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(338, 38, 14612, 11, 12, 'ADIL ZAFAR', 'adzafar@touchstone.com.pk', NULL, '$2y$10$zcFFR/Oev06/OvfaG4618OtRQqMP7qHqmWAaUsUpS/aHq4X873sc.', 1, NULL, NULL, '2021-11-19 17:13:46', '2021-11-19 17:13:46'),
(339, 63, 14620, 11, 12, 'SAMI ULLAH KHAN', 'smkhan@touchstone.com.pk', NULL, '$2y$10$4uULBu56VL0cwj3/jShZb.tXdINIUMGIG9.rhYuD9ATgHLqRTgJfW', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(340, 44, 14621, 11, 12, 'SHERAZ AHMAD', 'shahmad@touchstone.com.pk', NULL, '$2y$10$VTOuvWGtLhA.od.pPPyb/OXj/pGY6GeaYfle0bc/t2kYgVg9ik9di', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(341, 63, 14623, 11, 12, 'FAHAD AHMAD', 'daahmad@touchstone.com.pk', NULL, '$2y$10$ObTE13PZGqBJ0GFPlEDuruB.cLC814KkSMhYneaagGlhgu0rzI0e6', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(342, 44, 15619, 11, 12, 'WABSA AMMAD MALIK', 'wbmalik@touchstone.com.pk', NULL, '$2y$10$2T1GjYRlkAPQ1Ubv4rO5aeQs6Mv8XVS1KoVY21Z1gGX3P.MEL/5LK', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(343, 44, 15622, 11, 12, 'HARIS NADEEM', 'hnadeem@touchstone.com.pk', NULL, '$2y$10$TVnYr7ZQf6RuLlgTochkDuzz1CSI4ysbUSKyDAKdo391NXacOpLu6', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(344, 44, 15626, 11, 12, 'JOEL DANIEL', 'jdaniel@touchstone.com.pk', NULL, '$2y$10$D2r/dUb11KrgbhgTCfoJe.rnWg9WCW3yBytPDceSxQjpchLmBhKui', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(345, 74, 15628, 11, 12, 'MUHAMMAD UMAR TANVEER', 'mutanveer@touchstone.com.pk', NULL, '$2y$10$3Cvl237xiaM5eC2Vr7nK..75ybg7dVl0DmBvTPakWpAebssjaAiPS', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(346, 27, 16634, 11, 12, 'MUHAMMAD SAAD TANVEER', 'mstanveer@touchstone.com.pk', NULL, '$2y$10$JvxC8lIudHdYmZQwiNvtReDvMqAllk5cFJU/lbRwOxuGZXNVgayS6', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(347, 4, 16639, 81, 2080, 'RANA KHIZAR HAYAT KHAN', 'rkkhan@touchstone.com.pk', NULL, '$2y$10$Lx2q8SsiUoi4Ea1FTb0Ik.ZDZd0DIZtWJajtsrAEh.VbAxuTTlQI2', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(348, 27, 16646, 11, 12, 'M TABRAIZ ANJUM', 'tanjum@touchstone.com.pk', NULL, '$2y$10$PrEfjUsx/OycWEAEDzCuXOwKmQ4Q4RtAsKJq2LgnPaQxYvsRWCjXS', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(349, 44, 17649, 11, 12, 'USMAN NASEER', 'usnaseer@touchstone.com.pk', NULL, '$2y$10$oF0C2TpEnWROrphnIwO32udqwaHwTDY.C78a0kkB./Nh4fcnUVnnO', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(350, 63, 17652, 11, 12, 'ASAD ULLAH KHAN', 'aukhan@touchstone.com.pk', NULL, '$2y$10$kEcwXAGAjsd6eANdrfjlLurRMAxeSNE1iVdM.pfGL0PjvX5lvvr.e', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(351, 2, 17657, 11, 12, 'AZHA AKHTAR KHAN', 'azhakhan@touchstone.com.pk', NULL, '$2y$10$kj8Cdho0pmtUy0Lj4XQd1.UWrlr.iWHt0rNqmtfkQvWJ1oX7kMjHi', 1, NULL, NULL, '2021-11-19 17:13:47', '2021-11-19 17:13:47'),
(352, 2, 17659, 11, 12, 'MUHAMMAD KAMRAN GHUMMAN', 'kghumman@touchstone.com.pk', NULL, '$2y$10$S4qNhjPGMPbIBzRStaT/VO/D0C9WHj.F.CSKVjSOQn1y7.k1bdGNm', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(353, 40, 17665, 11, 12, 'YASIR HUSSAIN', 'ykhany125@gmail.com', NULL, '$2y$10$NUClcn0NsR9V9ZSjZG/FE.5bSaCHR24HnUFDYcBrN/dEao9JVPFny', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(354, 40, 17666, 11, 12, 'MUHAMMAD QOSAIN KHAN', 'sugarpot44@gmail.com', NULL, '$2y$10$oB2UL5bfWuqgeWqamr1JKeaBwoNQeQjQQDbSnYqqD8ZdypiYWow56', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(355, 74, 17673, 11, 12, 'SHAYAN TARIQ', 'sytariq@touchstone.com.pk', NULL, '$2y$10$yGCkEJnaG8aL1IWJHn3vlOmMdrUbDg.U3hwpDY8Lpl9Fe51ZwLHNC', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(356, 2, 17675, 11, 12, 'HAFIZ ABDUL HADI KHAWAJA', 'hkhawaja@touchstone.com.pk', NULL, '$2y$10$av6M3ikHh4AihE7gwEwhLuIajTzANmftGtR6cO4fKS6SH.lWBBjM2', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(357, 40, 17677, 11, 12, 'MUHAMMAD HASHAM', 'mhasham6@gmail.com', NULL, '$2y$10$2I6KgisXS099DdM7O8t24.Ah4H.8bjpCPO8mX2KEbznwHRMSNZ6vu', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(358, 40, 17686, 11, 12, 'GERARD SALEEM ', 'greradsaleem@outlook.com', NULL, '$2y$10$IbD6T5/OsII4g5cjZAl7h.hoGkgtork2zK5bCnLPvNz5JI159NXp2', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(359, 40, 17687, 11, 12, 'MUHAMMAD USMAN AKRAM ', 'm.usmanakram93@gmail.com', NULL, '$2y$10$yWAK/3v3RCehFOjSRd06rOa2dlTrOn2uqtttSfep8jsAf.dA1asMu', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(360, 44, 17692, 11, 12, 'HASSAN RAZA', 'hsraza@touchstone.com.pk', NULL, '$2y$10$KItu5CRmHiPxRlTndbDOw.Td2kgxcZbx.uMiskM.KcUAd.GbbTjj2', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(361, 43, 17694, 11, 12, 'HASSAN AZEEM URAIB', 'hauraib@touchstone.com.pk', NULL, '$2y$10$2mDW0A59RBhFkFXESTx6Q.E9nNH.cEeuP49APDDXIin6JZEzb5fAK', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(362, 78, 17695, 11, 12, 'RADEEL GILL', 'radgill@touchstone.com.pk', NULL, '$2y$10$ex06QoQr5OyipfweiPOXBO4Ibva46njYVIathJAXMTtssE3SPa45m', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(363, 16, 17708, 11, 12, 'HASEEB UR REHMAN', 'hurehman@touchstone.com.pk', NULL, '$2y$10$MjnuUi70QqGIia3kfghXd.1JEm4lBVe.nWTTK9eQqxigcSFLKysAq', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(364, 9, 17709, 81, 2080, 'MUHAMMAD SUBHAN MALIK', 'msmalik@touchstone.com.pk', NULL, '$2y$10$0vMVOtK.Te5qmvrYqwQOhOOD0aQLiK9GYQ44N64a1sh2whqCXvEoq', 1, NULL, NULL, '2021-11-19 17:13:48', '2021-11-19 17:13:48'),
(365, 29, 17717, 30, 31, 'MPP', 'mpp@touchstone.com', NULL, '$2y$10$mYTP9M90liOGbVyJsbN7M.gimb9yRwDN9Uh24DXYR42qOrOBi1DXG', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(366, 78, 17719, 11, 12, 'ALI HAIDER KAYANI', 'ahkayani@touchstone.com.pk', NULL, '$2y$10$180tR/utakqoOQZIf/n4l.Wr9AyDLqFw/.KMlCyfNavp3wc4.2dbe', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(367, 75, 17720, 11, 12, 'RAZIA FAZAL	', 'rfazal@touchstone.com.pk', NULL, '$2y$10$dE9L/a6xxdqKNPSErhhEAOVRQaxkZLbmZjHyDD/jRstOyHHTg0/O2', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(368, 44, 17724, 11, 12, 'MANAHIL AMJAD', 'mrasheed@touchstone.com.pk', NULL, '$2y$10$pLDPQ9z/mpQSgmP/LzJVzOXcoO3TND52MPNrGmYO//4LDQU2IQLHC', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(369, 75, 17725, 11, 12, 'MUHAMMAD', 'muhammaddd@touchstone.com.pk', NULL, '$2y$10$y7agSe7whQ1QjYIRNhYcyO02lETWNP9D1viBBDcIjq0UeEjp80u6C', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(370, 63, 17727, 11, 12, 'FAISAL KHAN', 'fskhan@touchstone.com.pk', NULL, '$2y$10$DSmr3nLiXmsbn3GcOu3tOuPCboy0N/I8kqAP7tyVIwvzkAOx5qWPm', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(371, 75, 17730, 11, 12, 'USAMA IKRAM MALIK', 'uimalik@touchstone.com.pk', NULL, '$2y$10$Enf1jLQ8A3MOzfKdkYb8guLSuNe4olnc9J1aef/33.N9v6lLMmlWy', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(372, 43, 17731, 11, 12, 'KHURRAM KHAWAJA', 'khkhawaja@touchstone.com.pk', NULL, '$2y$10$PlTLg9sYPKz6LBZudHrbB.mrJx8ez1Ryf6gtQpN74Jfd.ACWu1hwm', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(373, 43, 17732, 11, 12, 'WAJAHAT ULLAH ABBASI', 'waabbasi@touchstone.com.pk', NULL, '$2y$10$FdVl7t2g2MplQYRexfU4WOUKyZZ2kRoohLE0JKij70CkQZTXzVO/C', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(374, 72, 17740, 33, 34, 'IQRA AZHAR', 'iazhar@touchstone.com.pk', NULL, '$2y$10$apw7JfraUj9TN.7ZSWWvZO5vZFr8bzWJSKtaTbTbX5fWlyL66CvZy', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(375, 75, 17741, 11, 12, 'LYMA MARIYAM SAMUEL', 'lmsamuel@touchstone.com.pk', NULL, '$2y$10$ULFnoOVm5sj7nhVInl8qYefVzgziECg2Q1sfl02J/kOUpNEJ2t8BC', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(376, 14, 17742, 30, 31, 'AHMAD ABDUL AZIZ', 'ahaziz@touchstone.com.pk', NULL, '$2y$10$8pcWur.8nR6REIjcwHOsBevRa5/pzqX7sUmp6MJao2eTJ00uJOF1e', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(377, 72, 17743, 33, 34, 'ZARMINAY IMTIAZ', 'zimtiaz@touchstone.com.pk', NULL, '$2y$10$.q8uIJD9VTkFWpL2/uoiaO5qjudn3iWhVppVT6HKkOewqsv4/9DF2', 1, NULL, NULL, '2021-11-19 17:13:49', '2021-11-19 17:13:49'),
(378, 78, 17744, 11, 12, 'AHMAD UBAIDULLAH', 'aubaidullah@touchstone.com.pk', NULL, '$2y$10$CWkXvbRtlSvjjIrn2HEiM.AeKvL21o4.C8ld51.zeeHoQOx5simxy', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(379, 44, 17754, 11, 12, 'ABDUL MUSTAFA', 'amustafa@touchstone.com.pk', NULL, '$2y$10$qiOjw3jkDrdpQNdpFujhnewv3W8ESCQPY.u5xG6PGH0oupdCVHm0W', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(380, 44, 17758, 11, 12, 'MUHAMMAD SALAAR FAROOQ', 'msfarooq@touchstone.com', NULL, '$2y$10$su/TaoojAJjF4wwl6e47hOjXxco5CHzYNBbtD6iz9.1.sn.bY3HcK', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(381, 44, 17759, 11, 12, 'MALIKA AFTAB', 'maftab@touchstone.com.pk', NULL, '$2y$10$yEYclyCSgMgMpOetgcxIYeVvcqcLSC.Vnq3B3a1SydzeLanOlHppW', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(382, 44, 17763, 11, 12, 'MOAZZAM ABBAS', 'moaabbas@touchstone.com.pk', NULL, '$2y$10$ggRTV5rtQYpu14S/9jqApuCpB9/rB8HaM15hmSu1f.myMI81NdYL.', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(383, 27, 17766, 11, 12, 'LAVIZA FATIMA', 'lfatima@touchstone.com.pk', NULL, '$2y$10$J5y6vv.NyrsEeB5NxbvAMuGsCNG4/jZSV.I/kYo21.5DOsE3pMkxG', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(384, 29, 17769, 30, 31, 'DH_MTG', 'DHMTG@touchstone.com', NULL, '$2y$10$xtiiKlHDK7HkTleBCh4NE.3XwStId5KokQRcFBZ3spfRDOhDYXaYm', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(385, 63, 17770, 11, 12, 'ADNAN AFRIDI', 'aafridi@touchstone.com.pk', NULL, '$2y$10$CQKDMTA4gwCjdxGfM2sfgek0QQfjpQrEjy00WeWl/LcmBduRQIRk2', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(386, 63, 17772, 11, 12, 'MUHAMMAD ANEEQ', 'maneeq@touchstone.com.pk', NULL, '$2y$10$WRXwoYw02rsPzJKhbaZzkOj1VU9HfYdj4CUkY2fjPBOZSTBuWVciK', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(387, 63, 17773, 11, 12, 'SYED SAAD SUBHAN', 'sasubhan@touchstone.com.pk', NULL, '$2y$10$auEEbc89blynm6jcBvQaxuxy20LXfbMrmTUHStxYGDKF9reG.sSGm', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(388, 63, 17774, 11, 12, 'SULEMAN YOUSAF', 'syousaf@touchstone.com.pk', NULL, '$2y$10$hJvKfWXHcCysozO1XhppAOx8WmMqZhIXSfBrALpFHCeOYdRUMp5HO', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(389, 74, 17778, 11, 12, 'DANYAL GEORGE', 'dageorge@touchstone.com.pk', NULL, '$2y$10$9oG4L0b0UKLfpLQB9qB5q.lKQ7HjrhlIwUv.29kCS.bTTzHzeZNGS', 1, NULL, NULL, '2021-11-19 17:13:50', '2021-11-19 17:13:50'),
(390, 15, 17784, 75, 2074, 'SYED MUHAMMAD ALI', 'smuali@touchstone.com.pk', NULL, '$2y$10$Bv08f0cJwLNQXMh1AwmqJOrTbAdilggsAmfU5P.vADGyuQ.DCW8MG', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(391, 16, 17788, 11, 12, 'JUNAID', 'junaid@touchstone.com.pk', NULL, '$2y$10$ci1CqxGDuRRF6c1zmMiJd.5SF6oxD2o7wABy5p/aeyD/s1w4AscBy', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(392, 71, 17790, 11, 12, 'JEVON WALTER', 'testj502@gmail.com', NULL, '$2y$10$uX3MrxdqYPrQhEtZvOfbsu/e.LZGnAsaZFaX5N75hqm3sL/OmSd.e', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(393, 27, 17793, 11, 12, 'REHMAN NAWAZ', 'rnawaz@touchstone.com.pk', NULL, '$2y$10$tVGUKKL39Puym29ndIHXbOgfvq3ENHEoEqkSu0vuRowbJ2esRdRle', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(394, 63, 17810, 11, 12, 'MUHAMMAD SHAHZAIB HUSSAIN', 'mshussain@touchstone.com.pk', NULL, '$2y$10$5mCXpvrX.nophy4N/XPDp.AUfQMm2CK/45dG65d5wxiL6laEKHj/K', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(395, 44, 17816, 11, 12, 'UMAIR ALI KHAN', 'uakhan@touchstone.com.pk', NULL, '$2y$10$t/xqejoZ7Z5d5XvR8O3dbOXSohmADea5CvC580rqCdXWMXIGTDjSi', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(396, 63, 17818, 11, 12, 'SAYON ISSAC', 'sissac@touchstone.com.pk', NULL, '$2y$10$upNs2WK1pEqVyK/zLbCZFuTrY1AxxM7CSkq5K7UT7OWmsfBx9XWQi', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(397, 63, 17820, 11, 12, 'MUHAMMAD SALEEM SIDDIQUI', 'mssiddiqui@touchstone.com.pk', NULL, '$2y$10$bkaPBVZ9q.vKhTt0r/QK0uFldTBOF1g0AmRwWvalM997rkOD9Opzu', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(398, 75, 17827, 11, 12, 'ARSLAN SHAHID', 'arshahid@touchstone.com.pk', NULL, '$2y$10$Wc.ftq7BIYUDISBkuzV/7.UMdOlfRl8z5fJt1kqRTmDviEBoKfiJi', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(399, 63, 17832, 11, 12, 'SHARAZAR SHAHID', 'shshahid@touchstone.com.pk', NULL, '$2y$10$yWyT1dFrEN884H35P1UeBu7eA9XXMkQOxODInqU.Q3WCGZ1yCrBZ2', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(400, 63, 17835, 11, 12, 'MUHAMMAD TAHIR ASHRAF', 'mtashraf@touchstone.com.pk', NULL, '$2y$10$O1vjU1Jx6ChbX77CFGtFO.QRLUmvAjc0hc6EGlVFo65nnfNa4Xuy6', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(401, 2, 17837, 11, 12, 'ABDUL HASEEB', 'ahaseeb@touchstone.com.pk', NULL, '$2y$10$i3IJNi9kJDs.jSJuqCgojeHaU1/kc5Zrpfo5IuzBm2G1TpqkYEGQa', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(402, 16, 17838, 11, 12, 'SYED MUHAMMAD AMMAR RIZVI', 'smarizvi@touchstone.com.pk', NULL, '$2y$10$gjuvI45qOrQrdOwis.QycePG.7K.unT35OSMKCxJqcoifkcgZC3Iy', 1, NULL, NULL, '2021-11-19 17:13:51', '2021-11-19 17:13:51'),
(403, 43, 17840, 11, 12, 'MUHAMMAD YASEEN', 'muyaseen@touchstone.com.pk', NULL, '$2y$10$XK.0vcwvjSKVaJYIWmSqPORf/Dp3Z9zwBYWkYRGlL48.qzNro8fE2', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(404, 43, 17841, 11, 12, 'M JAMAL', 'mujamal@touchstone.com.pk', NULL, '$2y$10$ck4evSZwvT5wQ0RgLM5UZevAHKn4h82vgiqAt6SG/vIF9OYcYiLO6', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(405, 13, 17848, 33, 34, 'HAMZA REHMAN QURESHI', 'hrqureshi@touchstone.com.pk', NULL, '$2y$10$RtOpECXR9j3A2MiFx09wDuXcpZHizgNwIkeia4fizbxetdC/eFYrO', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(406, 63, 17875, 11, 12, 'SHAKEEL UR REHMAN', 'surehman@toustone.com.pk', NULL, '$2y$10$WiyrWPKWjpEHAJHz1ozciOMEU2thVfmNVb0goQQxkzFV84ZebBSCu', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(407, 63, 17876, 11, 12, 'ABDUL HASEEB', 'abhaseeb@touchstone.com.pk', NULL, '$2y$10$B.ucJTlKfiyAbb1QGQFAp.ANX7NIZTDbrdLbMlesdanTuMxHwbUea', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(408, 44, 17889, 11, 12, 'SYED ZAIN UL ABIDEEN NAQVI', 'SZANAQVI@TOUCHSTONE.COM.PK', NULL, '$2y$10$RqcurEzELiFnzVfJCaw5OOblIgvR8oJtc1AKpw65VB7xFzy3wIl0u', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(409, 27, 17892, 11, 12, 'MAHRUKH DURRANI', 'madurrani@touchstone.com.pk', NULL, '$2y$10$I83ID4PfltFPH.p6F4mks.TQglhXKIjM8.sckiolSqbh652XUrOhm', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(410, 40, 17893, 11, 12, 'MUHAMMAD AAZAN', 'aazansatti1@gmail.com', NULL, '$2y$10$QbK0hYjDH60iq3anWraOU.Cumlg1yKIwE0piUmkowEn8GvOzc8r5m', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(411, 39, 17898, 11, 12, 'SYED FAKHAR ABBAS', 'syedfakharshah699@gmail.com', NULL, '$2y$10$mlJlVV499Ow7TXjSh65fpOcILS1BdKYi2eVK9VXijeThG46dH3UFi', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(412, 29, 18156, 30, 31, 'HomeFirst', 'hufl@touchstone.com', NULL, '$2y$10$WhNN8XU1KGwcKyggsqelAu7nc79azvujYrgSyh.cgW3mjJD2CvNiK', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:59'),
(413, 63, 17928, 11, 12, 'SHALIM KIANI', 'shkiani@touchstone.com.pk', NULL, '$2y$10$A2j.VbB1rmwxezIcwR34tOwt5g8t7u5hJ4WhonW2QyFTYNyEeJT8K', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(414, 63, 17929, 11, 12, 'FARHAN ZIA', 'fzia@touchstone.com.pk', NULL, '$2y$10$yA8gOV24V/8vtJTzjDHDUeMBkOcd98/vYd1yuE/UxqoNMlNOGg3Au', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(415, 63, 17931, 11, 12, 'AMIR HAMZA KHAN', 'ahzkhan@touchstone.com.pk', NULL, '$2y$10$EDKo4bhFJYQCqsuKic406u6vjs300NxSk461lR8PiHptnJK8a65H.', 1, NULL, NULL, '2021-11-19 17:13:52', '2021-11-19 17:13:52'),
(416, 63, 17932, 11, 12, 'MUHAMMAD YASIR', 'myasir@touchstone.com.pk', NULL, '$2y$10$XazqhD93GBHgBB8HnvvbM.r4/hgAcL7ZyJ2OFh5aTkPxS24xt/lQW', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(417, 2, 17949, 11, 12, 'MUHAMMAD UMAIR KHALID', 'mrkhalid@touchstone.com.pk', NULL, '$2y$10$/K/LkBJ4QRKHMB3RWAKk/OMo3GPO8yY4wNy/8rH1wMyZwlIF18OpW', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(418, 2, 17950, 11, 12, 'BILAL ARSHAD SIDDIQUI', 'masiddiqui@touchstone.com.pk', NULL, '$2y$10$NfOEkKJwMAbXa5i.RpMXqe.srklmq66n3kQluC84kSzzphZxOEodS', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(419, 2, 17951, 11, 12, 'MUHAMMAD FAKHAR ALI', 'rfali@touchstone.com.pk', NULL, '$2y$10$FdXuQ0ElqZ7MhZgMmwi1xepAVFE88Y3fPJtsUMENqwXHagkaOm9ee', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(420, 2, 17952, 11, 12, 'SHAROON', 'sharoon@touchstone.com.pk', NULL, '$2y$10$yV4eaQymgb0g50GyZeZ6lO7dUMnpprQMXFEl9t7p/95GvihgAhpla', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(421, 2, 17953, 11, 12, 'MERAB MESHILE', 'mmeshile@touchstone.com.pk', NULL, '$2y$10$D/KMpb89UMSINTdtHomNg.6vYfM6.Mpo3TUXI1KOdWgBR55O8jz42', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(422, 2, 17954, 11, 12, 'AFSANA BIBI', 'afbibi@touchstone.com.pk', NULL, '$2y$10$qo2/59eykfjW78F2CT6bOOZ.DvmNTYSuhDfBMMg.fpFbgcC2GkvuO', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(423, 2, 17955, 11, 12, 'WASEEM SAJJAD', 'wmsajjad@touchstone.com.pk', NULL, '$2y$10$A211Ki7ANjpscrQHHNtT4O9hL3daNbLvrALQcoV..d/bdQc1ONAgy', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(424, 27, 17957, 11, 12, 'SUNDAS ASLAM', 'ssaslam@touchstone.com.pk', NULL, '$2y$10$p/RMXTyP9w22yqyYoZfU7uX.v0vevevow.pkREt35jMGik/1oL4Nm', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(425, 27, 17960, 11, 12, 'ALISHBA AHMED', 'alahmed@touchstone.com.pk', NULL, '$2y$10$PUj0jQ.AIKoxqXXd8jC/Zefyeqs/DRqmrQ/P303RL0gY.8X5gYE0u', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(426, 27, 17964, 11, 12, 'HYDER QASIM KHAN', 'hqkhan@touchstone.com.pk', NULL, '$2y$10$N1OKLH110x45yfRqiLApmu/3Bo2qXIMX/LgkYu1scr63fP2k28Ox6', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(427, 74, 17967, 11, 12, 'TAHIR ALI', 'tarali@gtouchstone.com.pk', NULL, '$2y$10$CuATXq7aFs.lc3Ac4A1vaevBCTQAvvkyIKMNAJTtBtsfMWtmtuxqu', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(428, 72, 17968, 33, 34, 'MARIAM AAMIR', 'maamir@touchstone.com.pk', NULL, '$2y$10$BOB9YPxtVXHBasxoPkMj3eTNhJ4nd3NiCa2krzm89Zagdzl62JaZ.', 1, NULL, NULL, '2021-11-19 17:13:53', '2021-11-19 17:13:53'),
(429, 74, 17972, 11, 12, 'AREESHA ZAHID', 'arzahid@touchstone.com.pk', NULL, '$2y$10$fuELzgKcZuS5x/RBT9WMqOdB3Y//2aPB0GWcsoCke1zYL.B2gMRYS', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(430, 74, 17974, 11, 12, 'DANIYAL SHAHID RATHORE', 'drathore@touchstone.com.pk', NULL, '$2y$10$mLbvK.tcNnq3lz1lG9kTJOR4Q.A.LNETRAu56OT6p9Llv4Ws4BPd6', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(431, 74, 17975, 11, 12, 'NAUMAN SHAUKAT', 'nshaukat@touchstone.com.pk', NULL, '$2y$10$MltHtvcQxxpm2je8XIN4U.1wpE07c..6S/qy6mMLMPa4PCSC5M91u', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(432, 44, 17976, 11, 12, 'MUHAMMAD OSAMA SHEHZAD', 'moshehzad@touchstone.com.pk', NULL, '$2y$10$G7TVV6G.rBY5MMRe.O21m.knIiG3ubqdPrrdzbmseaS6ZMTrRRnuy', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(433, 44, 17977, 11, 12, 'ABDULLAH', 'abdullahr@touchstone.com.pk', NULL, '$2y$10$866p5HTKLG2loxEbq1eZTeV1Bt3mkAtglrnsfN9ZNmVNTenJIxIF6', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(434, 44, 17979, 11, 12, 'MUHAMMAD SAAD', 'msaad@touchstone.com.pk', NULL, '$2y$10$TlQWu/zSwETCf5j4XY7Thua1rJvO8H.bpxyhfKy2oLl4r8uMAhsaG', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(435, 74, 17995, 11, 12, 'SIDRA KHADIM', 'skhadim098@touchstone.com.pk', NULL, '$2y$10$XSl6P1LtJUwirGwcwqd8le0XABOqQBWO2vBomaSKDYed/dF4MYYJW', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(436, 63, 17996, 11, 12, 'HAMZA AHMAD', 'hamahmad@touchstone.com.pk', NULL, '$2y$10$VODVQknzznc9QqinqWqO4.poGmatlnaQoRc4mm8Va3acAPTqYQnku', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(437, 63, 17999, 11, 12, 'ABDUL HAYEE SEEMAB', 'Ahayee@touchstone.com.pk', NULL, '$2y$10$SarQoME7V90ZWbj3HTKltOkGUKFtDlMkOELkMy.o6saszJFO/EBky', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(438, 3, 18014, 46, 47, 'RAJA MUHAMMAD ASIF FARZAUQ', 'rmfarzauq@touchstone.com.pk', NULL, '$2y$10$U5LoPnBB7YWW.f.bpbNoAO0p3WQ6Nw.XVyEauohL9IObQAjXffABe', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(439, 2, 18016, 11, 12, 'ANIR AMIR', 'anamir@touchstone.com.pk', NULL, '$2y$10$7Mj8QkYyf9117u4rxz8vf.5WNp8V4m9Y9nON00KAJKchwNamOTNka', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(440, 38, 18017, 11, 12, 'MUHAMMAD AMMAR HAMEED', 'ahameed@touchstone.com.pk', NULL, '$2y$10$EuWYMOOII/yPs5Wv04mDH.pETEDD6jwMNjEbi.A4/ssV1Q9POIW.6', 1, NULL, NULL, '2021-11-19 17:13:54', '2021-11-19 17:13:54'),
(441, 45, 18018, 11, 12, 'ISRA', 'isra@touchstone.com.pk', NULL, '$2y$10$C/oOmVUke0CQBsCqCebY4Omye3WBURQXHhjT.TQpHnlvI5vLlkDXC', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(442, 75, 18019, 11, 12, 'UZAIR IFTIKHAR', 'uiftikhar123@touchstone.com.pk', NULL, '$2y$10$b3Md.lfnIms09FVL6Q/7Re/GwRpPfoADrI.1PoK0bVl8fv/vcBK6y', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(443, 38, 18021, 11, 12, 'MINAHIL PAUL KHOKAR', 'mpaul@touchstone.com.pk', NULL, '$2y$10$qaFxTH9G3AZhorRWLDGabunx4y2M3TYD1d4MR4LxcwD6eYTQhXc/2', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(444, 71, 18022, 11, 12, 'SHANESSA VICTOR', 'svictor@touchstone.com.pk', NULL, '$2y$10$nipINRD2Wa.jTCNQYyfc.uNRU5VzekZ6TKExt.NpefxriR2rh1TCy', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(445, 44, 18024, 11, 12, 'MEHROZ HAIDER', 'mhhaider@touchstone.com.pk', NULL, '$2y$10$dYnjbrCc9IcXRqnztTK1ju/TiFqzVqkLFD9ODybBnheDSXaTkuLIO', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(446, 44, 18026, 11, 12, 'MUHAMMAD HASHIR ANSARI', 'hansari@touchstone.com.pk', NULL, '$2y$10$DzKqVFamuwJXGA4E3TorjemHYC0QevLcqgHgJ4FGcMNg7VpKugvIq', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(447, 38, 18028, 11, 12, 'MUHAMMAD BILAL', 'mbilal123@touchstone.com.pk', NULL, '$2y$10$OB9729imQDdOz5wepEM0hu.2h6iqjoey.M1AULRUmmVPTsrbbVbji', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(448, 39, 18029, 11, 12, 'SYED MASOOD IQBAL', 'smiqbal@touchstone.com.pk', NULL, '$2y$10$nEYWYWsm3uS9gRUIhzxeSeA8mxBu/bzVAW.qQRYkFK9CwtjJKu/6W', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(449, 40, 18030, 11, 12, 'MUHAMMAD SHAYAN', 'mshayan@touchstone.com.pk', NULL, '$2y$10$PRH/MwM50TkiXT4iCgyf7.RhOf6AGVsF8h3H5lOE4u/6D1vdcvdYO', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(450, 40, 18031, 11, 12, 'ABIEZER GARSTIN', 'agarstin@touchstone.com.pk', NULL, '$2y$10$pccsz4KVueSWmlcM50EWXe5CKE2A/U.uY3U/lZ5rHUPLFXuHVg2DO', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(451, 29, 18033, 30, 31, 'Powers_MKT', 'powermkc@touchstone.com.pk', NULL, '$2y$10$YON75QUifmQcvyvOBFi9sOVArPwNVqYfZLe4Ku1zLV5X8ns3K2q1K', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(452, 44, 18034, 11, 12, 'MUHAMMAD ALI RAZA JAN', 'Araza012@touchstone.com.pk', NULL, '$2y$10$kOIjv/yh4BNKR1k6buempOkemkUacaDaxXsPMWcvw8a1JHe3SimaG', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(453, 44, 18035, 11, 12, 'SAIM', 'saim1456@touchstone.com.pk', NULL, '$2y$10$HNO44SlQlKJZwoMcmQ0WzuZWtFiwnb2PkKN15gJHHnxYWwE5Cj/US', 1, NULL, NULL, '2021-11-19 17:13:55', '2021-11-19 17:13:55'),
(454, 44, 18036, 11, 12, 'MUHAMMAD SHAWAL KHAN', 'mshawal@touchstone.com.pk', NULL, '$2y$10$S8dCQErDOAM4cdYc4mAKWuB9b5GW4If8vT2wL7K75YV9yZk1WFcnq', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(455, 44, 18037, 11, 12, 'FATIR HUSSAIN', 'fhussain123@touchstone.com.pk', NULL, '$2y$10$fxwqZBid2HtKMqug8tBjvOCWzP58LxD0PKeKk6WGLYBkzt0.B6GUK', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(456, 75, 18039, 11, 12, 'SCHANZAY IMTIAZ', 'simtiaz123@touchstone.com.pk', NULL, '$2y$10$ym.n5cz5O.DpnbqM5naW2.ZjcV7AYS2GxQ9.r1L3EQgc.y3loA.a2', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(457, 38, 18042, 11, 12, 'IFTKHAR ALI', 'iali12@touchstone.com.pk', NULL, '$2y$10$zPbNqSfAmjhvYT.Phu56A.ulDhNpty9PZw/Pjy5coBthV.cRjjroO', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(458, 16, 18044, 11, 12, 'SYED HAMMAD ZAHID TIRMAZI', 'shammad12@touchstone.com.pk', NULL, '$2y$10$whV5RT/ys/OCPKVjnPQu4eTAQpTaoBEnK0o8TfOz6Dvp.gQWYqK1.', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(459, 75, 18045, 11, 12, 'RAZA PERVAIZ', 'rpervaiz@touchstone.com.pk', NULL, '$2y$10$CY44huEyumvNpqOr2r8m.u13Rug5.34qi9F6dGYmDsSJUl0C0neza', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(460, 2, 18048, 11, 12, 'BUSHRA ALI', 'bali123@touchstone.com.pk', NULL, '$2y$10$a8O2Fb.rpP5S1orNZSGFeeNufO6FVwjvX4.H0wlNTlQwrwkdZ/dWS', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(461, 2, 18049, 11, 12, 'DAWOOD NASEEM CHAUDHARY', 'Dnaseem12@touchstone.com.pk', NULL, '$2y$10$5qO5f5aJMY3xXz/GRoMsQeaJpz5jiuVQmE7wTees1jzVrLAkN04fm', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(462, 74, 18052, 11, 12, 'BEHRAM KHAN', 'bkhan12@touchstone.com.pk', NULL, '$2y$10$H4qpjDnw7Fe7RP40jxF40Ov7O1as1sVudjo3fIx2qcqHG2SNc36Iu', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(463, 74, 18053, 11, 12, 'MUNAD AHMAD NOOR', 'mahmad12@touchstone.com.pk', NULL, '$2y$10$hNpQZ3SBJ2G2i9geUH97jOtkz6JFv8c3v4iM8exeZuTv0DE8edp0e', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(464, 75, 18054, 11, 12, 'SUNNIA KIRAN', 'sukiran@touchstone.com.pl', NULL, '$2y$10$fLOdOE.EDnZ8MPK26KkAfOi07fMmF6yoHkjYxSfnWXmEuELo.mzZS', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(465, 75, 18055, 11, 12, 'TUBA REHMAN', 'trehman123@touchstone.com.pk', NULL, '$2y$10$LTiKrtud99TfIeM9flk88OsmVvq7HHnb1HFC89yAcPGDRd25H3QLi', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(466, 39, 18060, 11, 12, 'AREEHA IFTIKHAR', 'aikhar@touchstone.com.pk', NULL, '$2y$10$hpZQsqc9ggDopx2/m6UnuencUCEOQpqvF2K/uxCL0d10F5RU8D9bq', 1, NULL, NULL, '2021-11-19 17:13:56', '2021-11-19 17:13:56'),
(467, 40, 18064, 11, 12, 'NUMAIR SALEEM', 'nsaleem@touchstone.com.pk', NULL, '$2y$10$txOoMQIkxS8zrBqeZQEa6OCWdL1QXH2iaqmUqofNz7gqnstTon3o2', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(468, 63, 18065, 11, 12, 'MUHAMMAD UMER FAROOQ', 'mufarooq@touchstone.com.pk', NULL, '$2y$10$kbzzSnGER6KoGdfb9ATp0Oixz93jDY8IqnbGnLYh7fulEeWhWiNGC', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(469, 63, 18066, 11, 12, 'NAEEM AHMAD', 'inaeemkn@touchstone.com.pk', NULL, '$2y$10$RPX5XXjubQQde6ZY6p1IQ.IxFKtAh2n5QkRk80V0aQO.AzegW.vDi', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(470, 38, 18067, 11, 12, 'RAMISH IDREES', 'ridrees@touchstone.com.pk', NULL, '$2y$10$yJeo7eZTJ3I4000pEvcyf.HF5b9HhzxJTcD0Avqcxay.TOFqSFAxi', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(471, 16, 18071, 11, 12, 'MUHAMMAD ASIM ZARIN', 'mazarin@touchstone.com.pk', NULL, '$2y$10$bDlZADswmWmOLauVcc.yneFpcs2O0LEo.tg87GFOxxUjZDC13h46C', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(472, 71, 18072, 11, 12, 'MUHAMMAD SHEHRYAR SHAKIL', 'mshehryar@touchstone.com.pk', NULL, '$2y$10$B6bpLgZmZC4wA9NVtHmAUOb.dsl3PaYlwal5KIhWtdNgZoMgDhyl.', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(473, 74, 18077, 11, 12, 'HASSNAT ABBASI', 'habbasi123@touchstone.com.pk', NULL, '$2y$10$oz4.amNxQLkuxB624Q9sZ.6ofjVwerpPm/xJRqZmUD0w3MIYPXDnm', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(474, 44, 18079, 11, 12, 'MAMOONA MUMTAZ', 'mmumtaz@touchstone.com.pk', NULL, '$2y$10$Eu2yoMJCKIlkzavSmNVf/OGeON.bq6jKxuDXNn3Pm23AIgzuoFnU6', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(475, 44, 18084, 11, 12, 'MALIK MUHAMMAD HASSAN AWAN', 'muhawan@touchstone.com.pk', NULL, '$2y$10$Ii8dbelrkCywR8ACIUDmF.xQQg/eHuCeAqXNXDfWtKElFALyYqY2K', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(476, 44, 18086, 11, 12, 'JASON SALEEM', 'jasonm@touchstone.com.pk', NULL, '$2y$10$Q0QnNGI8EoAA.tVYBzHpgO4q/Nh78PG0A2L2Qj0cvJZ0NR3yuhEjW', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(477, 44, 18087, 11, 12, 'EHTISHAM ZAFAR', 'ezafar12@touchstone.com.pk', NULL, '$2y$10$01UqrgAnRskwKq6/RGIhRuuc9lwJUapbDsG6wD9HaenFyw/3IfjJq', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(478, 40, 18092, 11, 12, 'ABDUL SUBOOR ZAHEER ABBASI ', 'aszaheer@touchstone.com.pk', NULL, '$2y$10$nFAbW/5cvzs6htelrAs9J.wPOAcA7rZJmAVYk5XrE/tCZf8w1oxgu', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(479, 44, 18094, 11, 12, 'FARAN SALEEM', 'fsaleem12@touchstone.com.pk', NULL, '$2y$10$8xet1TDZ7hBNVRuA08iqqOYG1CUImaGYDDj4wwtZ.A3MNsO5H4v1m', 1, NULL, NULL, '2021-11-19 17:13:57', '2021-11-19 17:13:57'),
(480, 75, 18095, 11, 12, 'MUHAMMAD USAMA ILYAS', 'muilyas@touchstone.com.pk', NULL, '$2y$10$SmFmA4662dNd8YY8D2XMMOCocoSHEnlnRTdpkgFHUtEO5d5ljqLBW', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(481, 74, 18097, 11, 12, 'SHAYAN AKHUND', 'sakhund@touchstone.com.pk', NULL, '$2y$10$upKidqNQb6CRBkBgNOq6lub2aPHmM4dwXmWgP1iiCpavZwna9QAGm', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(482, 38, 18102, 11, 12, 'MUHAMMAD FAHEEM KHAN', 'mdfkhan@touchstone.com.pk', NULL, '$2y$10$IIm5lNLNP4Rq3JLOsc2n1OzIW.PppzpjfsPKzFQBUeDhWOhUOgI7.', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(483, 38, 18103, 11, 12, 'NOUMAN SAFEER', 'nsafeer12@touchstone.com.pk', NULL, '$2y$10$WG9mie5Igh/BKYJTdcWewu0O2KVE1ZtEJaatNYYxoV/WaCPr1VYFu', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(484, 38, 18104, 11, 12, 'EHTISHAM TALAT', 'emtalat@touchstone.com.pk', NULL, '$2y$10$aMbGMUITtv88RuofNKagM.frjT6BTOpsqing1lKo.eMjobsUiuBZm', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(485, 43, 18112, 11, 12, 'HASSAN UMER KHAN', 'humerkhan@touchstone.com', NULL, '$2y$10$TJK3U51ofHHecl6H2.aMl.cwCFdQOm3Nc02A0XqAC1/7TEkLBMIeK', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(486, 39, 18120, 11, 12, 'ABDUL SAMAD', 'asamad123@touchstone.com.pk', NULL, '$2y$10$d.6xWZVwzI5Tkwv1ki1Yy.oex2rvxXl6s626qTchsK2yRCRFGOQtu', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(487, 44, 18122, 11, 12, 'SHAMAYL KHALID', 'shamayl@touchstone.com.pk', NULL, '$2y$10$cn5ONe3F4oEIEPHfqZUqW.ICEfK5y7lbg4.8MTd62ekYDE2zPRc2.', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(488, 39, 18123, 11, 12, 'ABDUL SHAFAY', 'ashafay@touchstone.com.pk', NULL, '$2y$10$E0/f8lmwfqB7Ths4xaWaGu7O9yw7jGzVUB0dyYqoE0lVTSAsFfMhG', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(489, 13, 18128, 33, 34, 'SYED HASSAN RAZA', 'shassanraza@touchstone.com.pk', NULL, '$2y$10$JyegWXBd9D9VXHHUQiulT.7jRWZ295B85wwWi8k6zGXzuFNLhYbtu', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(490, 63, 18130, 11, 12, 'WAHAJ UD DIN', 'wahaj@touchstone.com.pk', NULL, '$2y$10$80o0PCJLOHz9L2LR5jA3luWSalLT0ZjKYVijiulMEq7JYgL1fQY5G', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(491, 63, 18133, 11, 12, 'YASEEN IQBAL', 'yiqbal1@touchstone.com.pk', NULL, '$2y$10$oqziRqcDiVO4Cp9mBlyfJ.z.7AgvYEWPMGWPaINhqYWHbQeWGGlb6', 1, NULL, NULL, '2021-11-19 17:13:58', '2021-11-19 17:13:58'),
(492, 63, 18134, 11, 12, 'MUHAMMAD USMAN GHANI', 'musmanghani@touchstone.com.pk', NULL, '$2y$10$2DpX2QWg82dIJWWeB0Lt2.onjOZf8dOQS9gK0fEBDYnJFOuTPQIYS', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(493, 13, 18135, 33, 34, 'SHEHERYAR ZAHID', 'szahid@touchstone.com.pk', NULL, '$2y$10$aw4DemOCWcSeLB2KNIfWsevl3fkpaWmEUxco3uSGv7IPtScAfqeRC', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59');
INSERT INTO `users` (`id`, `campaign_id`, `hrms_id`, `designation_id`, `hrms_designation_id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(494, 39, 18138, 11, 12, 'NOUMAN NADEEM', 'Nnadeem@touchstone.com.pk', NULL, '$2y$10$wrsK7N72koutpUlqNWALwOGKB1NDdWXHu1DDr4DbO.DcFoO9tuzce', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(495, 39, 18139, 11, 12, 'SAIMON', 'simon@touchstone.com.pk', NULL, '$2y$10$mQ9ToK3txE2u82PXBIybPOG9j9A8gEa6Lv8X7tfYdB/KMYWOGwZi6', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(496, 44, 18142, 11, 12, 'AMNA', 'amna123@touchstone.com.pk', NULL, '$2y$10$JMCg01GOeCK8ibacZYM1nOQmjYM8c//onuRJVnhvn7qAqf2vDHVhm', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(497, 44, 18146, 11, 12, 'MUHAMMAD HARIS', 'mharis12@touchstone.com.pk', NULL, '$2y$10$MulL.29N70S7fL92wSGGcOGXtQQP4LUfeXnCx1sHHXsvGsCEobqFW', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(498, 75, 18149, 11, 12, 'RIDA', 'rida12@touchstone.com.pk', NULL, '$2y$10$ZgySm0Ph7NlNkoDkS4ueLuljnwlmd4SNb0Po53vZPhc72PVTbKCre', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(499, 39, 18150, 11, 12, 'SYED ALI HASSAN HAMDANI', 'salihamdani@touchstone.com.pk', NULL, '$2y$10$BWa8Um10TtMpydRGxMmmp.od4fnJgRDm6DTwMJCS1F6vC.Nr0yyCu', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(500, 21, 18152, 81, 2080, 'SAAD AHMED NAEEM', 'emartin@touchstonebpo.com', NULL, '$2y$10$0DzozGsv6KPGWX/KMT1U5OVd9l4J/1OvoqQAoxYzdkMj4K58FLK/G', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(501, 43, 18161, 11, 12, 'TANZEEL UR REHMAN JANJUA', 'trehmanjanjua@touchstone.com.pk', NULL, '$2y$10$uJZr7M3.AYKOvNI.07ubXeDK58C8DVqkPIQb6u424Wpi4FtpZveLK', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(502, 43, 18163, 11, 12, 'MUHAMMAD ZAIN AKRAM', 'mzainakram@touchstone.com.pk', NULL, '$2y$10$Jth4ppYJLofiML/8PcMweeVx6DSIK2N0gTixHinHqo1kkNdb.n2gG', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(503, 43, 18164, 11, 12, 'MUHAMMAD TANVEER', 'mtanveer1@touchstone.com.pk', NULL, '$2y$10$wJ28StkttLXjtQuwMAW1nu/aGg6REbZO1VIiLA4zJ0XVst7ujm3ge', 1, NULL, NULL, '2021-11-19 17:13:59', '2021-11-19 17:13:59'),
(504, 78, 18168, 11, 12, 'BASIT AWAN', 'bawan@touchstone.com.pk', NULL, '$2y$10$CcmFXACIylG31Bag9NxZO.uEj9Kf5lq2EC8lDuUyid85z73Ume8G2', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(505, 39, 18178, 11, 12, 'LAIBA ASHFAQ', 'lashfaq@touchstone.com', NULL, '$2y$10$lrD8vE9FTJLOUIWdvbUpJeL0T384hRHB3L0wVLhsrQWh5FTCOzGXG', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(506, 40, 18179, 11, 12, 'MUHAMMAD SHOAIB ', 'muhshoaib@touchstone.com.pk', NULL, '$2y$10$Py4ZnmVhJgRzCnf3.yHgnelfH3KEXJFaXXTD8xkcuqMgiNob.wv8K', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(507, 39, 18181, 11, 12, 'AMBER QADEER', 'amqadeer@touchstone.com.pk', NULL, '$2y$10$KAK88WizdG/my3QIdfdTNuZee.yCFLuts0ya6xOQlheX6xAGQP4sK', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(508, 39, 18182, 11, 12, 'HAMZA MEHMOOD', 'hmehmood@touchstone.com', NULL, '$2y$10$330tBthw3auBfV7HdMguKutWvLQeWuTAYMTl6bagFlEPoclyn0a4m', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(509, 14, 18184, 30, 31, 'AAMIR KHAN', 'aamir.khan@touchstone.com.pk', NULL, '$2y$10$RzN/it7k9ueB50KZ/41Em.vK0LnS8D.7lryaQUzL17I7jnq6kTmBu', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(510, 78, 18185, 11, 12, 'ALISHBA GILL', 'agill@touchstone.com.pk', NULL, '$2y$10$uvDP5dx91ph5F3UAViLIaOZtllgLfMwbPgmsjCqeEXCH3c5fyUCF2', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(511, 2, 18191, 11, 12, 'MUBASHER SHAHZAD', 'mshahzad@touchstone.com.pk', NULL, '$2y$10$HSZVgLtT6zByB4ywf7BltON5etqzksIxci98uJBMrZ5QoiFpZatWy', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(512, 16, 18192, 11, 12, 'ABID HUSSAIN', 'ahussain1@touchstone.com.pk', NULL, '$2y$10$Ia317zQmYiTEyXY3XkG20eZgE1v5xkoBqNLPoEuyvg.vUWue6tCFK', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(513, 78, 18200, 11, 12, 'SYED KHYBER ALI SHAH', 'skyhberali@touchstone.com.pk', NULL, '$2y$10$EgMVkBXWJIUevdFaqDOHkejEgg0DAoNkWVrX9HUH5e5yKya0SWIAC', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(514, 43, 18204, 11, 12, 'ADNAN HASSAN', 'ahassan1@touchstone.com.pk', NULL, '$2y$10$hBg4lSgKoAgXeSNM0JdFeOMIw.ItBTz9AhYNv/zvUgf0pFpSnsuZS', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(515, 43, 18206, 11, 12, 'MUHAMMAD ABU BAKAR', 'mabubakar1@touchstone.com.pk', NULL, '$2y$10$mSpMj4zUcmHhZUZAxcQkjuktdFcSbFufvJddfzg9DIKlXEg4qA2Pe', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(516, 75, 18207, 11, 12, 'NAWAFIL', 'nawafil@touchstone.com.pk', NULL, '$2y$10$qWfZ0Q3gccP.31.sHgUc9uXUwZZQAlGFP6bpP00h0QDMigH5RUmue', 1, NULL, NULL, '2021-11-19 17:14:00', '2021-11-19 17:14:00'),
(517, 74, 18209, 11, 12, 'MARWA DURRANI', 'mdurrani1@touchstone.com.pk', NULL, '$2y$10$AwQvojHTKKoQLHhHPn1JJuDIpdM1yFmiv6EzSnLBRJpwmpH.FyrYu', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(518, 75, 18210, 11, 12, 'FARGHAM ARFEEN BHATTI', 'farfeen@touchstone.com.pk', NULL, '$2y$10$T.s7cusAgU0PEY46LmTHu.Re2KUSmfzDIs92jb4gNy8y4wv3o8JG6', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(519, 75, 18211, 11, 12, 'MUHAMMAD NOMAN ALI', 'mnomanali@touchstone.com.pk', NULL, '$2y$10$5onv3SXAupVJqBLIjQ4BtuvVAvToK4LuWYPZjVLqebza0uz6aRwvG', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(520, 75, 18212, 11, 12, 'CHAHAT ZAHRA', 'czahra@touchstone.com.pk', NULL, '$2y$10$k8MGDqFNLF38hPyJ3RIBoO13f1/Aad45qs506OvLjdHAohmApYh3e', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(521, 63, 18215, 11, 12, 'MUHAMMAD BILAL ZEESHAN', 'mbilalzeeshan@touchstone.com.pk', NULL, '$2y$10$yLlLSJgxBLYJG/Ux6TrQUe6ZaQA2BmNPfes3HRBJgmTHgx336aANS', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(522, 63, 18216, 11, 12, 'HASSAN IQBAL', 'hiqbal1@touchstone.com.pk', NULL, '$2y$10$EPG9P2NXOQugdvDgVmee1OFQvoqu247T0KSZ4ZYOTwNSHuePUiHoa', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(523, 39, 18219, 11, 12, 'QAMAR JAVAID', 'qjavaid@touchstone.com.pk', NULL, '$2y$10$c93ar8icO8K3WX.C2n/T3Oy.BEYjLCwrDn0KrZBkRGRai6ds.0hpK', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(524, 44, 18222, 11, 12, 'ANAS TARIQ', 'atariq1@touchstone.com.pk', NULL, '$2y$10$ASw05SyXFtJ681Cnk5MS3.khw7ExrRxj3XfjyG.U7ou5etMFcPRL2', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(525, 44, 18223, 11, 12, 'SYED SHOAIB ALI', 'ssali@toucshtone.com.pk', NULL, '$2y$10$Eo3yQViCaUuzU0pNf6.PqevdHB/i9Yp1ixLdbrYK6jfmsGCzrX.5m', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(526, 74, 18226, 11, 12, 'MARIA IQBAL', 'maiqbal@touchstone.com.pk', NULL, '$2y$10$Pm2InfIWtpF8P71muFLaaeeAcpdmjFyKFy9FDge2Ch9IanOu3nT6m', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(527, 63, 18228, 11, 12, 'USAMA', 'ollafkhan@gmail.com', NULL, '$2y$10$AdYEoxnOef6PfHC6FV/kEOVik/OODVW236/Lyc7Clj4Sw1OUBMyw6', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(528, 63, 18229, 11, 12, 'MUHAMMAD ANAS', 'manas12@touchstone.com.pk', NULL, '$2y$10$mTxsHcZEmGsntalcpTcThOg06EgYrGFO5YvANvQOAiJKc4otCRNJe', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(529, 10, 18231, 52, 53, 'IQRA NASIR', 'inasir@touchstone.com.pk', NULL, '$2y$10$uUI07F/MEiIkfZvXF9Xv5eczj6Z5mDO7sFFM0OywZshIXIazCKLW2', 1, NULL, NULL, '2021-11-19 17:14:01', '2021-11-19 17:14:01'),
(530, 39, 18236, 11, 12, 'HAMMAD HUSSAIN', 'hhussain@touchstone.com.pk', NULL, '$2y$10$bPCmph9rsuzvDfc5SdSEZO98TnR79HHjHfkiFvwNfsKKEYd4v0wzO', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(531, 39, 18239, 11, 12, 'SHALOM BASHARAT', 'sbasharat@touchstone.com.pk', NULL, '$2y$10$W1Zc6D288QrO.Jj5Eb8wPubwjrE9GUIp1I0M7rkY/IKsSCg4qvp2S', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(532, 39, 18240, 11, 12, 'ABBAS RAZA', 'abraza@touchstone.com.pk', NULL, '$2y$10$3748weadZXSBq7mCA/iW2OaHT1R/qFpZxvwt5V2hFs7aHz/5fjuTW', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(533, 40, 18241, 11, 12, 'ZAIN AHMED QURESHI', 'zaqureshi@touchstone.com.pk', NULL, '$2y$10$lArxFFFvpclAkHiaDwdmXOtNYB/NDjlu2OYrtTEoKXhuXCJiHWski', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(534, 44, 18244, 11, 12, 'MUHAMMAD JUNAID JAHANGIR', 'mjunaidjahangir@touchstone.com.pk', NULL, '$2y$10$DggMetDyobtEoMTh7hq1iuKkuDszPusC9xRubeQAumeKuRY.eRBr6', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(535, 44, 18245, 11, 12, 'ABDULLAH NAWAZ', 'anawaz1@touchstone.com.pk', NULL, '$2y$10$hnnxxrxgyswVhYjiH/tlT.G7SblDBwNG7Nh0OUpRAEGkmB1lS8MVu', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(536, 40, 18248, 11, 12, 'FAHAD ALI', 'fahali@touchstone.com.pk', NULL, '$2y$10$eJMrKsZ9SMsdi8VhxxO5oeJhESy9X/6zcy.IBc8L4dVuBgzQLakaG', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(537, 75, 18252, 11, 12, 'RAJA MOIZ UR REHMAN', 'rmoizurrehman@touchstone.com.pk', NULL, '$2y$10$Hb2DIxbuS9ho2ZRVtTtTn.otMfFdsGevE7vpLGqt1xjcMnlJk2Kn6', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(538, 43, 18256, 11, 12, 'MUHAMMAD ARSALAN ZAFAR', 'marsalanzafar@touchstone.com.pk', NULL, '$2y$10$9RQUt4zFoya2AUStMvAvS.ccKXGUWr1H8A5dBPnhHAIPVVUjXXLMu', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(539, 78, 18257, 11, 12, 'ASHBEEL IQBAL', 'ashbeeliqbal@touchstone.com.pk', NULL, '$2y$10$SyCoTgcCQl2agE4ivjVDQuipPxWewvqouIVB987ObdFXJuFhc/Zhm', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(540, 78, 18258, 11, 12, 'KANWAL FAROOQ', 'kfarooq@touchstone.com.pk', NULL, '$2y$10$Kdigg9YI9hebVQnk8L7QkurWjNRvHiRs7OpbWroJGlIJF8BD6NAte', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(541, 38, 18259, 11, 12, 'RANA AHSAN ALI', 'rahsanali@touchstone.com.pk', NULL, '$2y$10$6/HoXg.E/1hiosJfuByXOOirlS/SAk2vVcxSr59yLHutDwDuIP8ta', 1, NULL, NULL, '2021-11-19 17:14:02', '2021-11-19 17:14:02'),
(542, 78, 18264, 11, 12, 'HUZAIFA TARIQ QURESHI', 'htariqqureshi@touchstone.com.pk', NULL, '$2y$10$CSz4FqbEmHSKAMDrjyM8R.DgcK9Ou5mNzxJsbdOxLzMBX3IfT7KtO', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(543, 78, 18265, 11, 12, 'USAMA BIN FAROOQ', 'ubinfarooq@touchstone.com.pk', NULL, '$2y$10$ziImLfwMcDo8324N/Bp9R.BH98eKEmJun5E/i47B7FcmRZxlIf1xu', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(544, 78, 18266, 11, 12, 'ANUM ASHIR', 'aashir@touchstone.com.pk', NULL, '$2y$10$sJIQDgB.EY9QVp9FLnLtJe5ngaYT9wQo.uda6DuM5oWT/CiL1MWGu', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(545, 43, 18268, 11, 12, 'ABER GREGORY', 'agregory@touchstone.com.pk', NULL, '$2y$10$DdQG.txZ1nH5bkww/T4kXu0udhrIj4d5vKW8gug/j62xNZ31EFhYu', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(546, 43, 18272, 11, 12, 'ELZABAD VICTOR', 'evictor@touchstone.com.pk', NULL, '$2y$10$xuTW33nYASbam.wVQiKuV.4lFCLrQ4Nv8cC3d2aIRMXyFmEjpanF6', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(547, 63, 18273, 11, 12, 'M SALEEM KHAN', 'thesaleemk@gmail.com', NULL, '$2y$10$nqgOJGz3i7D86k0PxXxNn.EaBWg8vShB1X7KCJUMy62Y6tE3bX36e', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(548, 63, 18275, 11, 12, 'BASIT ALI AWAN', 'abdulbasitfat@gmail.com', NULL, '$2y$10$eQf2QYhinpQ1t8KgzvqOBupDWGaR5Or5e9nAxfewF36bsPlmTBN/W', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(549, 63, 18276, 11, 12, 'MUHAMMAD ARSALAN', 'parachaarxlan@gmail.com', NULL, '$2y$10$hip4SrQWiKC3HwjUnR2FTui8ORI3AvrB38WiFY8guDHjG9D/L65ay', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(550, 78, 18278, 11, 12, 'MUHAMMAD USMAN QURESHI', 'musmanqureshi@touchstone.com.pk', NULL, '$2y$10$varbS2TRAiP8cma29naAVetRpM0s88bW7R/7FcfjP8ivcA3SEhB6G', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(551, 2, 18279, 11, 12, 'CHAUDHARY ABDULLAH ZAFAR', 'cazafar@touchstone.com.pk', NULL, '$2y$10$VdPLkY2B3Z21zsggPsJa1OFQNio/IBiN.B/6S4Wn79PyLKr7mQqjW', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(552, 2, 18280, 11, 12, 'HASSAN NAZIR', 'hnazir@touchstone.com.pk', NULL, '$2y$10$NYOfGXnEmrh90vOzZ09xsez4KerpzejRjRXS.vR9T36ZmvBtckjDa', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(553, 2, 18281, 11, 12, 'MUHAMMAD FAHAD MURTAZA', 'mfahadmurtaza@touchstone.com.pk', NULL, '$2y$10$RBYc8ybrUEr65iurWeYlkOfu.DUsgbDoxTR/iZF1tE2IOllJnlyx.', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(554, 2, 18282, 11, 12, 'BILAL AHMAD TAHIR', 'batahir@touchstone.com.pk', NULL, '$2y$10$OfmRQuYACZuqlCZVy1idcOE90jw7lictfV9QU2BykXh.dPusWENGy', 1, NULL, NULL, '2021-11-19 17:14:03', '2021-11-19 17:14:03'),
(555, 2, 18283, 11, 12, 'UM E FARWA', 'umefarwa@touchstone.com.pk', NULL, '$2y$10$JfyV4OytJmat2TDJ3nzmXOHhCFhLenn15q4MEJa/s5R1nCYmebh62', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(556, 2, 18286, 11, 12, 'TALHA HAFEEZ', 'thafeez@touchstone.com.pk', NULL, '$2y$10$q8mHyfDkvcMGwm9Pcjj8AOIGQU/64woYuLrmYGKrzOMwKNiTtH3ry', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(557, 63, 18287, 11, 12, 'FAHAD SHOAIB', 'fahadshoaib474@gmail.com', NULL, '$2y$10$M4Wum3rYRpw18z4OntpIX.jdwNPDHKecDn9d7iwopiMGpYACB57e.', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(558, 63, 18288, 11, 12, 'MATI ULLAH', 'std102643@uop.edu.pk', NULL, '$2y$10$HYnJpCRTFI0vBxz1McPbne1VLYgLeW0rU.bF08qrN/VKdfnkYil3y', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(559, 39, 18289, 11, 12, 'ASHBEEL KHAN', 'asbkhan@touchstone.com.pk', NULL, '$2y$10$.rnAfpZKWCRujRpHFvUZlOy/zkAOujfeHOCmnXqWS2KUNuZPMG2uy', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(560, 39, 18290, 11, 12, 'HAROON JAVED', 'Hajaved@touchstone.com.pk', NULL, '$2y$10$/x3y43LsEn0CCu1NthKjDO2UBuqgOfsf.6dTSp/LCtqWUJL17TGP.', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(561, 39, 18291, 11, 12, 'BAREERA AFAQ', 'bafaq@touchstone.com.pk', NULL, '$2y$10$FhU2coPlK1A.G1z2F4022Oo8cvJNqNW7VlxCY.A09FkUofHR9TK2a', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(562, 39, 18292, 11, 12, 'SIMON SOHAIL', 'Simsohail@touchstone.com.pk', NULL, '$2y$10$JqE07uZhCM5UsaZGrECpr.KD05bkwA0B67Bgf9/dOWKA4mPwXopq6', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(563, 16, 18294, 11, 12, 'MUHAMMAD AHSAN NADEEM', 'manadeem@touchstone.com.pk', NULL, '$2y$10$Wa9s/mzDNx8uCk3K5tWoAuKn3Eyou872OpA8B1xU/gFIOXBRiovFe', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(564, 38, 18298, 11, 12, 'MAHAM IRFAN', 'mirfan1@touchstone.com.pk', NULL, '$2y$10$Mfvro4ys8o8fLjCbCgVUOepTwjA3NALXl4guVyiKTmXCtWB7cuqaG', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(565, 38, 18299, 11, 12, 'ALI ABDULLAH TASHFEEN', 'aatashfeen@touchstone.com.pk', NULL, '$2y$10$oeMLLBC5hAwDqGiDegFPfufkHHipQ6jCH4TyPFL5KYTtiLCADy4OW', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(566, 43, 18302, 11, 12, 'ZAFAR ALI', 'zali12@touchstone.com.pk', NULL, '$2y$10$.9szrXjBEtRR5ZhX3RJS8OxLDSsarFSE6bZgqt/tlWb5ufQnECNpK', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(567, 63, 18305, 11, 12, 'FAWAD AHMAD KHAN ', 'fahmadkhan@touchstone.com.pk', NULL, '$2y$10$Q.UKigwXXR9LSdGq9UWciumwyRQHvHoBz2i6YBEK1qyaRCdJ2Iabq', 1, NULL, NULL, '2021-11-19 17:14:04', '2021-11-19 17:14:04'),
(568, 74, 18306, 11, 12, 'OSAMA IQBAL', 'oiqbal1@touchstone.com.pk', NULL, '$2y$10$L8MLq89MdLAT/9n79EOjVOTPt1lIRDN41252vTjAcbQulAudhBDVK', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(569, 78, 18307, 11, 12, 'MOIZ KHAN', 'mkhan1@touchstone.com.pk', NULL, '$2y$10$6Z6CdRmdsJJwp8hxaVSM4eczsgvIJIX3i7VtiesVkwKAUkQsGJUfW', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(570, 43, 18309, 11, 12, 'SOHAIL MAHMOOD KHOKHAR', 'smahmoodkhokar@touchstone.com.pk', NULL, '$2y$10$ZO.Pwj/lLiINLKVh4nigA.wssnrnRwS2ddc1cEDyrG6JlAy0xbS32', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(571, 78, 18314, 11, 12, 'KASHIF SAEED', 'ksaeed@touchstone.com.pk', NULL, '$2y$10$JAY5uh9bb2EjKo9W2EVDlu8F./4jjiZuokL9A3mZeaTTQo3aP2/Da', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(572, 74, 18315, 11, 12, 'AYESHA JAMSHED', 'ayesha12@touchstone.com.pk', NULL, '$2y$10$nULGmMdzr.RFNTnGeMT7VeorMc1qRRF8uL1lgA/7Z3ISsMelD2kva', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(573, 38, 18317, 11, 12, 'MUHAMMAD ADIL', 'madil1@touchstone.com.pk', NULL, '$2y$10$KQLJLpBXIrlEuP/hW9tLhuZyjH2GjnIbiUpg3nmYP2J3ex98n1oqC', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(574, 78, 18318, 11, 12, 'MUHAMMAD RAFI ULLAH OSAMA', 'mrullahosama@touchstone.com.pk', NULL, '$2y$10$OmHBa0gXQktn50I2.wVpp.FAglxkyvNUHZUdarE1dCkmiUC0UzMou', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(575, 44, 18320, 11, 12, 'ABDULLAH BIN TARIQ', 'abintariq@touchstone.com.pk', NULL, '$2y$10$DIMutPiBmOLV9Vlakxx2xOFVUBIlOzQTmraKzQBEg7CDp4frVgBaS', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(576, 2, 18321, 11, 12, 'MALIK ABDUR RAFAY', 'mabdurrafay@touchstone.com.pk', NULL, '$2y$10$ZBrA9UnP5jSUbsF81HhTRuo7Rs1hTPYCIj4nD/9PZ9M5j.2vCQBJS', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(577, 2, 18323, 11, 12, 'HAMZA USMAN', 'husman@touchstone.com.pk', NULL, '$2y$10$tIE8Xt2Jk4Nh/pcBmsPdSOUAiYzyBx0ww9NMxSZ3JxcEYsrL29m5W', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(578, 2, 18325, 11, 12, 'MALIK SANA ULLAH SAQIB', 'msullahsaqib@touchstone.com.pk', NULL, '$2y$10$1xktaeZRtoFiy1308HxTf.uZqNFka91/beHxpI0AmKcA2qAuXgN/G', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(579, 2, 18326, 11, 12, 'KHIZAR MEHMOOD', 'Kmehmood@touchstone.com.pk', NULL, '$2y$10$6Y9aHfjh42UsbOiqiaQtmug9sXtWly/0UAtJUbFTOuQ564o.hnZFG', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(580, 2, 18327, 11, 12, 'CHAUDRY MOHAMMAD SAAD RIZWAN', 'chsaadrizwan@touchstone.com.pk', NULL, '$2y$10$yCS7wQEZMjN74hbhGRh9g.rb2Gzt0MhGaUP8.Z1FneSIsWLlZNLHO', 1, NULL, NULL, '2021-11-19 17:14:05', '2021-11-19 17:14:05'),
(581, 2, 18328, 11, 12, 'MUHAMMAD SHAHZEB AHSAN CHEEMA', 'Msahsancheema@touchstone.com.pk', NULL, '$2y$10$TpvW3TpTEc35bdWdIBXn.uSBbm/hN5ugL9x4WoeIn9tNljiYR7ZR.', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(582, 2, 18329, 11, 12, 'ZAIN ALI', 'zali1@touchstone.com.pk', NULL, '$2y$10$U0lR.pHlVYO.p2HADq4G/Oe9brAV.fdo5fGY5YGOBV4M9MsKNgCTG', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(583, 44, 18330, 11, 12, 'MUHAMMAD USMAN', 'musman1@touchstone.com.pk', NULL, '$2y$10$bMjF6StDMAYT8q8hUoUEBuu/MZ9UV6Wa3w57DDzlMpak6X4k4EPxq', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(584, 44, 18331, 11, 12, 'MUHAMMAD ALI ASIF', 'maliasif@touchstone.com.pk', NULL, '$2y$10$EEt6qxrMayWyoTk0DaMBx.CEpwPVf4zFLnXPZKz55cDAp0x8SBFb6', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(585, 63, 18354, 11, 12, 'AFRAHIM AHMAD', 'afrahmad@touchstone.com.pk', NULL, '$2y$10$3zmPi/v/.upUYlCCuB2P5.prqJ6Z.OKWosjgmt8LVmiXB1XtcK0W.', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(586, 63, 18355, 11, 12, 'YASIR LIAQAT', 'yliaqat@touchstone.com.pk', NULL, '$2y$10$oid/yoNU/jF3NlK0A66lPO3bXtDtHbBDZr3XeiWktbIw2NmtPW.3e', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(587, 63, 18356, 11, 12, 'MUHAMMAD SHAHAB', 'mshahab12@touchstone.com.pk', NULL, '$2y$10$bi3MYZHeISMzS4d9uTnjL.jEOXq.N5798Xo/4cVX5Ke2tcKVIc8u6', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(588, 40, 18358, 11, 12, 'AHMED BILAL MUGHAL', 'abmughal@touchstone.com.pk', NULL, '$2y$10$vh893qz2gVrxmK0ewo8VnO17H0zahmy9M1rVY22.v1ot5hJFkRi5a', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(589, 40, 18360, 11, 12, 'MAHAD ALI', 'MahAli@touchstone.com.pk', NULL, '$2y$10$UM26GoZKeSTl43iciutDpOWY.P8kboJwFezwAWZo0lqTalQxga1gK', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(590, 39, 18361, 11, 12, 'WALEED TARIQ', 'Watariq@touchstone.com.pk', NULL, '$2y$10$CPk2vsOA2u2bbhxxmPBoeeOgyK7gD3Fph1rF5k4PzZcEtOHxlQMN6', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(591, 39, 18365, 11, 12, 'FAREHA SAROOD', 'FSarood@touchstone.com.pk', NULL, '$2y$10$/dykTcoHzQWqJU5w4TWmGeo5FCFVJMAzkPKDsZQqBiNVpRnAoVpcm', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(592, 3, 18369, 30, 31, 'MUHAMMAD ANIL SHEIKH', 'masheikh@touchstone.com.pk', NULL, '$2y$10$uLtFjurFQxCGEyn06ZkMTu4coRQR1QgSKJ7HDtmXcIwG1Xp6hPtue', 1, NULL, NULL, '2021-11-19 17:14:06', '2021-11-19 17:14:06'),
(593, 44, 18373, 11, 12, 'SYED HASEEB ALI SHAH ZAIDI', 'shaszaidi@touchstone.com.pk', NULL, '$2y$10$8LIVXjrWeI01HN08ygxdKesM9O3coif6DB9Q/WVvYA3Sz6Wt8/1b.', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(594, 44, 18374, 11, 12, 'FARRUKH MEHMOOD AWAN', 'fmehmoodawan@touchstone.com.pk', NULL, '$2y$10$Q32O8RB4qbBwNaBTeYBPbOE/wq9JBrEk/PdE1iook3p00LKXmqge.', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(595, 45, 18375, 11, 12, 'USAMA SHAKEEL ', 'usshakeel@touchstone.com.pk', NULL, '$2y$10$xL1TnotX1Vsk.gNxL2HIVe83IldTsWI3nm0.d6/pkWt6myHLebjTa', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(596, 43, 18376, 11, 12, 'MUHAMMAD TALHA KHURSHID', 'mtkhurshid@toucshtone.com.pk', NULL, '$2y$10$W0Y/3/t/LAKub5NAhLt1Wej8yHfutQVslS8WqAtZzefOSPvGWXwZO', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(597, 16, 18382, 11, 12, 'MUHAMMAD HASEEB GUL', 'mhasgul@touchstone.com.pk', NULL, '$2y$10$4hEEWryZur9Gp.bnraN29OmRGd.iKuequ6YSi5bVDkl200JFpbBZ6', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(598, 75, 18383, 11, 12, 'SHAHZAIB WAHEED', 'shawaheed@touchstone.com.pk', NULL, '$2y$10$kANhItKlb.zdkje4.KmPUuGLJa0HiDVXoNVbdpFgTRQCc/J1b5/cm', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(599, 63, 18396, 11, 12, 'ADREES SALEEM', 'adreessaleem38@gmail.com', NULL, '$2y$10$srhihSe1ad37Uhl1QCXPvOEWc8h52y6DGdiO31nqCB9x7SfxqLu5y', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(600, 63, 18397, 11, 12, 'NADEEM ALI', 'alifkhanxyz6@gmail.com', NULL, '$2y$10$/T/3vtemtdXnAS6b1.jE7eph5D.MvPnqMFWucuPayNssUGJKkK6Fu', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(601, 44, 18405, 11, 12, 'ZULQUARNAIN HAIDER', 'zulquarnain@touchstone.com.pk', NULL, '$2y$10$FhT3dMceugseyveGE2ip5.cMyx.IAuHmiJzAd3kGfuRmjyjuRZIi.', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(602, 44, 18407, 11, 12, 'HAMZA KHAN', 'hamzakhan@touchstone.com.pk', NULL, '$2y$10$s.8PwGFrSZ9Zb3qIWM2dJu1IaHuOTs.Gjj2rkynzJ8/H6Nmt.oVV.', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(603, 44, 18409, 11, 12, 'ATIF MEHBOOB', 'atifmehboob@touchstone.com.pk', NULL, '$2y$10$S6Yrt5SOXpV8CeGXUNuso.Ywzc//3OgxrvbDolNoE0P5aHLF8eVbC', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(604, 44, 18411, 11, 12, 'ZARYAB KHAN', 'zaryabkhan@touchstone.com.pk', NULL, '$2y$10$PtXV7gB037itCPAmmOEaD.zL4Ythd3KP2oC8BlS8jmwgMr1w7gysO', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(605, 44, 18412, 11, 12, 'MUHAMMAD JUNAID', 'mujunaid@touchstone.com.pk', NULL, '$2y$10$z/tUYJPHg1oTxBoCqAE/Ou3wjg8NIusnGv/e7ZtTM2BWXB4L3jMEq', 1, NULL, NULL, '2021-11-19 17:14:07', '2021-11-19 17:14:07'),
(606, 2, 18415, 11, 12, 'AARIJ FAZAIL', 'aafazail@touchstone.com.pk', NULL, '$2y$10$qz0/Ggivb7/B4SdZax/juebFDTLy9jL6tgeaYt/sisHfonJgPCBeu', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(607, 14, 18416, 39, 40, 'MUHAMMAD TAIMUR JAN KHAN BABAR', 'tbabar@touchstone.com.pk', NULL, '$2y$10$gnOvCx86kEawpStzNq5hZe3vRmsFgEuRlQE4eEEGMHNMOC4lgHKBq', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(608, 40, 18418, 11, 12, 'MUHAMMAD HAMMAD', 'muhhammad@touchstone.com.pk', NULL, '$2y$10$nVDTx79NXs39FiP6pTkaseQe7gkkG.ZO5r9V61seBzD31bgn4CU3.', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(609, 39, 18421, 11, 12, 'AGHLAMASH KASHFEET', 'AKashfeet@touchstone.com.pk', NULL, '$2y$10$6UvRElrq/BN5ICnuRQhHNuO3MhD4wkS.NOx03tsCSkeyajyjLQ0pu', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(610, 38, 18426, 11, 12, 'MUHAMMAD RAFAY SHOAIB', 'mrafayshoaib@touchstone.com.pk', NULL, '$2y$10$RaeL3Lg32cye0xdxwviPPODKPT.aphCaB0IioCEXjbQphTz7Iw4eq', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(611, 63, 18430, 11, 12, 'MUHAMMAD SHAMAL KHAN', 'spider_sml2000@yahoo.com', NULL, '$2y$10$lMI9TBi8dd4cLeDjYsJ9guTd0s.rriYh7LzdyxEBSeO1hHZyAr89a', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(612, 63, 18431, 11, 12, 'MUSSADIQ ALI BAIG', 'mussadiq54@gmail.com', NULL, '$2y$10$77gu/6QHQAmH9YX0XC8wuO9Pjw/7W3rGptpe0yK4oly87KenHLn4C', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(613, 63, 18432, 11, 12, 'HAMID AFRIDI', 'hamidafridi687@gmail.com', NULL, '$2y$10$rY3B3l05wcnK70M2tWVtVeBlpXU7hMOMegkhml1jFKx8Ytgecnlb.', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(614, 63, 18434, 11, 12, 'MUHAMMAD AWAIS', 'awaiseqarni696@gmail.com', NULL, '$2y$10$Fv492wd2UaT.l0svu62fceQ5krqyZLC.2vPdFb.ao7FOEQR4ENg6K', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(615, 63, 18435, 11, 12, 'IJAZ AHMAD FAROOQI', 'ijazahedf@gmail.com', NULL, '$2y$10$bElr.HCzpHZHf./ch29Wye/BxUFqaOn8QfKh8yZOjl1O3D/vcW0eW', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(616, 2, 18436, 11, 12, 'HASEEB AHMAD', 'haseebahmad1@touchstone.com.pk', NULL, '$2y$10$MVs/Oin6uub9sOwWJYWy2u2P7b759q6HNDMIejXA8qpFmrOJ0Kk9a', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(617, 2, 18437, 11, 12, 'AHSAN SARFRAZ', 'ahsarfraz@touchstone.com.pk', NULL, '$2y$10$2EefBkjv2Ls34Ii/87/55eXN0tFO9NCvbkbEWYfTq8aOuXgT0wEBu', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(618, 2, 18438, 11, 12, 'SHAHZAD ADIL', 'Shahadil@touchstone.com.pk', NULL, '$2y$10$kbyrChhdkbGsp7CBqyMCCe7iknsNF/ZaNk.4Tnmw4EnZJPz/gAIUC', 1, NULL, NULL, '2021-11-19 17:14:08', '2021-11-19 17:14:08'),
(619, 2, 18439, 11, 12, 'MOHSIN ALI SYED', 'mohalisyed@touchstone.com.pk', NULL, '$2y$10$b5OzWs2AbsnS5ma8RfRKcOZHZlaxQ8vDbZ3cjdTi6dqL/Xy/KFeba', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(620, 2, 18440, 11, 12, 'MUHAMMAD ABRAR', 'muhammadabrar1@touchstone.com.pk', NULL, '$2y$10$JqI9iMU6nvf02w3OAJlxqexNoG54vkn2whUkE1a1dU0qhBtqaqTNG', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(621, 2, 18441, 11, 12, 'FAHAD NAZIR', 'fnazir1@touchstone.com.pk', NULL, '$2y$10$f3ewNRLx9empm6gTvSmrreVBfIlsvZ/L2GMmDJx4Lb.zPb9ge6QU.', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(622, 2, 18442, 11, 12, 'USAMA UMAR', 'usamaumar@touchstone.com.pk', NULL, '$2y$10$vPmU05H8x64RJ1aOVQzbFeiOybOobl1I9YeV5W3K/9w./JlcLf93.', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(623, 2, 18443, 11, 12, 'ABDUL SHAKOOR', 'abdulshakoor@touchstone.com.pk', NULL, '$2y$10$aN00ULLpPxzzbcTWE622Hebxgt7wCAIgCjp.SsOHz3cfkIt4C6Tim', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(624, 63, 18448, 11, 12, 'NAVEED KHALID', 'naveedkhalid140@gmail.com', NULL, '$2y$10$EwaL2nS.wDSElafscqqc7uQBDypM1vMVeOlLAMsxNMH6F7IuAYdGS', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(625, 63, 18452, 11, 12, 'MUBBASHIR AHMED', 'mubashira174@gmail.com', NULL, '$2y$10$MHGYkycbWBFs2TItNikJNeW8R9fSr7LxCr6GLDl7KnWEQONaS5Rla', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(626, 40, 18453, 11, 12, 'MUBEEN ALAF KHAN', 'malaf@touchstone.com.pk', NULL, '$2y$10$tpI4blRUscgKAWLW.UXFLO6rWDnKHDaYb97gkebzqt65SoNj21r8.', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(627, 39, 18454, 11, 12, 'IMRAN MASOOD', 'imasood@touchstone.com.pk', NULL, '$2y$10$7i8Be6YkCsrGt8qNAvAX9OoSHeIDP/x9M8LTs7XX4lTIXOyrODkjy', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(628, 39, 18455, 11, 12, 'HASSAM ALI', 'hasmali@touchstone.com.pk', NULL, '$2y$10$EjcTC2HArOjFjxU21o3gpuGK8EMGr.V3kqTPYGAgw4WTolK0bpwXq', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(629, 74, 18457, 11, 12, 'AANAB TAHIR', 'aanabtahir@touchstone.com.pk', NULL, '$2y$10$gUOhdHvK/3/O0t6Hq5QKNemeYBukSWZVvJMuiG8B0p3ljOIj.SEC6', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(630, 78, 18459, 11, 12, 'IQBAL MOEEN', 'iqbalmoeen@touchstone.com.pk', NULL, '$2y$10$cEee7iEbM7.f9A1EVlKOWO4AqQD3C1L4Y5.VfVD3mLsZsBXFJw5Lu', 1, NULL, NULL, '2021-11-19 17:14:09', '2021-11-19 17:14:09'),
(631, 16, 18460, 11, 12, 'AMIR HAYAT KHAN', 'Amirhayatkhan@touchstone.com.pk', NULL, '$2y$10$bUOJJyu54yNnI8zmWQhLkeS3WRgNTr36ymw3MhZrQFVx.LctF8Pp.', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(632, 40, 18463, 11, 12, 'SYED SHEHERYAR HAIDER RIZVI', 'srizvi@touchstone.com.pk', NULL, '$2y$10$ePwdbEpBdayAh2fAEmvt4ehWvf9syCbvgvoCXrhk0ZbDyx5DzAWJy', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(633, 3, 18469, 30, 31, 'RAMEEZ ARSHAD', 'rameezarshad@touchstone.com.pk', NULL, '$2y$10$UUpFUrmq6mJO/5cs6dfmhOvD4GK28qKAcff2mNdaREG8P98QDCuqK', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(634, 56, 18470, 11, 12, 'HUZAIFA HAMMAD MALIK', 'huzaifahammadmalik@touchstone.com.pk', NULL, '$2y$10$nlL2VsQ.Z0k4O7LOlw.iSuzH9aFwPkKOqYwM8P7tozf2hDYYu.R/S', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(635, 40, 18471, 11, 12, 'RAI HARIS MANZOOR', 'rhmanzoor@touchstone.com.pk', NULL, '$2y$10$jUwH6j7Bfvf8hwVH0d8D4ePbJ8tqp2fgYMyJjpGnVRE31ZHpJuV42', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(636, 14, 18473, 14, 15, 'IRFAN FEROZE', 'iferoze@touchstone.com.pk', NULL, '$2y$10$1CqUeFqGs539xKtnUjw.0.D7Cc/I6ae6RXqvYnO.iXgPnCfMGqPh2', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(637, 76, 18481, 11, 12, 'SARA ZAHID', 'srzahid@touchstone.com.pk', NULL, '$2y$10$SaP/4rd.U1KbMOLY9YpXcep/WZ.9oM16FRFERK0FkxOOEAk.12JNW', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(638, 76, 18482, 11, 12, 'MUHAMMAD FAHAD', 'mhfahad@touchstone.com.pk', NULL, '$2y$10$JRIPsJEWMgESwjKkCP9Tlu1/ruQnGAAwWUG/vc.9JYlaG174i7aaS', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(639, 76, 18483, 11, 12, 'MUHAMMAD HARIS', 'mharis1@touchstone.com.pk', NULL, '$2y$10$FQMuNvzMlLb22qei/unYIeRG8v8HiIDD7CqtWBLsKG16kujzqv2Ae', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(640, 76, 18484, 11, 12, 'RABBIA RASOOL', 'rrasool@touchstone.com.pk', NULL, '$2y$10$Ll0s7ewCjiTHdMgrjFdS3u96rsTpPwOCBQZJOA4ggPPCPtD6vGeh.', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(641, 76, 18485, 11, 12, 'MUZAMMIL SHAHZAD', 'mzshahzad@touchstone.com.pk', NULL, '$2y$10$.aC4z9XG3QlzahkxEBdZe.et/8nuMohnYqHXC4kqDKUQdLKXu6mZe', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(642, 76, 18486, 11, 12, 'SHAHEEN HUSSAIN ', 'snhussain@touchstone.com.pk', NULL, '$2y$10$JS58LepTH4PDFvNZPbMB2.czy2veqrjpEY2OPLXmObe5KeU3MW0Ou', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(643, 76, 18487, 11, 12, 'MUHAMMAD SEEMAB QASIM', 'msqasim@touchstone.com.pk', NULL, '$2y$10$yCUlUHlJgSqDs6J0tKMaCuVZCHofNFhabHJl7P6SIOrUsW/VdtuHi', 1, NULL, NULL, '2021-11-19 17:14:10', '2021-11-19 17:14:10'),
(644, 76, 18488, 11, 12, 'ANEEQ J SAMUEL', 'ajsamuel@touchstone.com.pk', NULL, '$2y$10$cD.nQcbET81.MEktqIR/cebcXD0tdWXHxd1A3sdbm90rKBpqQoSd2', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(645, 76, 18489, 11, 12, 'HUMA SAJID', 'husajid@touchstone.com.pk', NULL, '$2y$10$pCKRGxBMAkUIzs4s9oSctencnau9A.sT9DXFgoftaTsA7oNuIO/eO', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(646, 76, 18494, 11, 12, 'AJMAL HUSSAIN', 'ajhussain@touchstone.com.pk', NULL, '$2y$10$Z5kxw4c9cgZn19oKUqsn4.0bb3RkY.DgB/CjOmdo5DWLo4viTRgg.', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(647, 76, 18495, 11, 12, 'NAUMAN MUNIR', 'nmunir@touchstone.com.pk', NULL, '$2y$10$T4LOpbz.eEKgfJ5Yh0ur3OxxKYDTpqNQnoBwXwS8YdVkkMzXZNaH2', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(648, 76, 18496, 11, 12, 'AHMED ANWAR', 'ahanwar@touchstone.com.pk', NULL, '$2y$10$tFiRSe2ALzMaAKeQDSOMlOhN8dtJjxYyfHD3qPR1bsV0VwhgFW.TW', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(649, 39, 18500, 11, 12, 'MASHOOD ALAM', 'malam@touchstone.com.pk', NULL, '$2y$10$mweKolJ7vP1e1BB.0KglEOTxKsOEVyUbgxAggoqRMhWC7pMLdHQFe', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(650, 40, 18503, 11, 12, 'ABISHAI PERVAIZ', 'Abpervaiz@touchstone.com.pk', NULL, '$2y$10$BQvSD0Rcqu1bo3/Ckeciy.6THZn3YhjjS.3tGmNm0RaseRFrrrxWa', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(651, 40, 18504, 11, 12, 'ALI RAUF TURABI', 'arturabi@touchstone.com.pk', NULL, '$2y$10$CueJl1w.QRXGnYJUcc6jy.ZrySzFm3oVROowrW9zoC6HYadOf4nP2', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(652, 74, 18509, 11, 12, 'KAMIL KAMAL', 'kkamal@touchstone.com.pk', NULL, '$2y$10$DQh10gdOlmFEDH.dN1c9beUXGh6nuUrWDAiV4c5NW9JEOl8cmhLha', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(653, 76, 18510, 11, 12, 'MARYAM IRSHAD', 'mirshad@touchstone.com.pk', NULL, '$2y$10$yxiOlv3ysf2Z4A9hphcNNu/rr5g9e4SLsyZIW43lfihVPZ2WFJjfS', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(654, 39, 18512, 11, 12, 'DANIYAL AMIR', 'dyamir@touchstone.com.pk', NULL, '$2y$10$NY8KsANlL16BvFPguZl03.eeXKT8k3BlQ9wq9xUUXSL2/VcNyET9S', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(655, 40, 18513, 11, 12, 'ASJAD BIN SAJID MUGHAL', 'absajid@touchstone.com.pk', NULL, '$2y$10$gC0SEymnuwdBLTwPEzO0p.eJzaj4wnCeHyFbL/iJ.i2jDADNkWUDm', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(656, 40, 18514, 11, 12, 'AZAAN HASSAN QURESHI', 'ahqureshi@touchstone.com.pk', NULL, '$2y$10$iJ2ZCX68ucNcSmWT8Artduh8HUN5wq1NqEcR0bKwzCzECOJzlJVTO', 1, NULL, NULL, '2021-11-19 17:14:11', '2021-11-19 17:14:11'),
(657, 39, 18515, 11, 12, 'USAMA NISAR', 'unasir@touchstone.com.pk', NULL, '$2y$10$LTDV7vA0NZ/DGifKNI2VGufoIR7NhpXzGALrvCEKwADTFB3rxXSC.', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(658, 56, 18516, 11, 12, 'EBIJAIL', 'ebijail@touchstone.com.pk', NULL, '$2y$10$mcMMLtMFLCuw27Twn5MYvuWaMukQIPdVfhjmQJUVlR2UQr6wGp./S', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(659, 56, 18517, 11, 12, 'RAMISH MAHER', 'rmaher@touchstone.com.pk', NULL, '$2y$10$KHUaW5XU/ahV1QHfBTJHxe6Ukvsw2.NmcobCtfDq1TWaAnWL7Vzvm', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(660, 43, 18518, 11, 12, 'MUHAMMAD ISTEFAR ULLAH KHAN', 'istefar@touchstone.com.pk', NULL, '$2y$10$ggDuo/yoDlOeLO8EJg8d6uymL.m/UmPoRIf8OtGJHCA/zniMGeD32', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(661, 43, 18519, 11, 12, 'SHAHBAZ KHAN MAHSUD', 'shahbazkhan@touchstone.com.pk', NULL, '$2y$10$QtOTy.TFK/OmCiamctOlseLGssK8m2y/.9A4lqUMhKspoMmFRLXLy', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(662, 43, 18520, 11, 12, 'ASAD NASEER', 'asadnaseer@touchstone.com.pk', NULL, '$2y$10$c3PyfHYvvHPUE0GsUizXZOyHunMKnFLmxJqut6qyvZE5/TUye4dCe', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(663, 43, 18521, 11, 12, 'MUHAMMAD UMAR', 'muhammadumar@touchstone.com.pk', NULL, '$2y$10$fQJbKWyNLPHubZCXRDIspuuzH3ugMAw/rti6wYGcCE6gr94SQYRX.', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(664, 43, 18522, 11, 12, 'MAAZ AHMED', 'maazahmed@touchstone.com.pk', NULL, '$2y$10$pK28lY7AO1vu8fFxIqlO7.JxqFZCVizFdMRj4gfrIAjwm0dUmrOea', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(665, 13, 18524, 33, 34, 'SAMMAR ZAHRA', 'szahra@touchstone.com.pk', NULL, '$2y$10$Ryhgi4S5ABzK3B7KxuUjIuB1Fr.HWvl8scQ1cmv8ZVUGdXNOCIAQG', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(666, 76, 18525, 11, 12, 'MEHAK', 'mehak@touchstone.com.pk', NULL, '$2y$10$RF7P8aWDIaf1A6HrCcS5C.BGhP/XbJIogZ3NnmS6moPIuPp2irfOu', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(667, 2, 18528, 11, 12, 'WAQAS ARIF', 'waqasarif@touchstone.com.pk', NULL, '$2y$10$VY.CPgT5jhKT07UIhblyaO0LPYb9xKn0.zdcRSgYBFd4hd6HSVWKC', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(668, 2, 18529, 11, 12, 'USAMA BHATTI', 'usamabhatti@touchstone.com.pk', NULL, '$2y$10$Q9FCZk8luZBX6i574oWJpOoqXdSqcczXkpo.mqWOdAKEm4IbWUxbW', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(669, 2, 18530, 11, 12, 'HUMA HUSSAIN', 'humahussain@touchstone.com.pk', NULL, '$2y$10$RXEmbn5e9JkbLU5UTQjjQuIJbVT0/J5sPhEQcI0yoAafjHuwC69iy', 1, NULL, NULL, '2021-11-19 17:14:12', '2021-11-19 17:14:12'),
(670, 2, 18531, 11, 12, 'SALMAN TARIQ', 'salmantariq@touchstone.com.pk', NULL, '$2y$10$hXqBO2htIRxTs8ZC5lQEgu8t.8sDIx4BcwrLBpM2aSMJB5/TnSEKa', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(671, 2, 18532, 11, 12, 'MUHAMMAD HAMZA ALI', 'muhammadhamzaali@touchstone.com.pk', NULL, '$2y$10$0rOdHRFz25iRnDrKZnlrxuDEixr0JXr1G73lWplhqsgvFIJFpg3cu', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(672, 2, 18533, 11, 12, 'MUHAMMAD AASHIR', 'Muhammadaashir@touchstone.com.pk', NULL, '$2y$10$E4kEi1MdRfC4x816jDXZIOCXLzbdRnSlIoHj96LriypD6J6QhgjaW', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(673, 45, 18535, 11, 12, 'DUA FATIMA ', 'duafatima@touchstone.com.pk', NULL, '$2y$10$Do2g2cYcYItwuiqikjbrh.Zhzmg6a84aXYtDaxJdptnx.CdUoqugO', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(674, 56, 18536, 11, 12, 'TAHIR ZAMAN', 'tahirzaman@touchstone.com.pk', NULL, '$2y$10$JbfABdmL.GPEfIwqURn.OOnTSbDgF8/MOBBfJrALntxY7/GUnHfTa', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(675, 56, 18537, 11, 12, 'ZOHAIB ASHFAQ QURESHI', 'zohaibashfaq@touchstone.com.pk', NULL, '$2y$10$.xEgarbX9cKArdAACB24wOqlh7wj6VGU6ViuHXr2b/HUgf1K0L.k.', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(676, 56, 18538, 11, 12, 'MUHAMMAD MUBEEN MALIK', 'mubeenmalik@touchstone.com.pk', NULL, '$2y$10$lYrY.qoosso9TWfIoiWhNulDhwNm35KNsEJx3S0g8DDwEHt0w259G', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(677, 56, 18539, 11, 12, 'SACHA', 'sacha@touchstone.com.pk', NULL, '$2y$10$EddIiEkACQDiTa/coIGYg.lHromf/CqViaW.I76rxtPAbUHRf5WpK', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(678, 78, 18540, 11, 12, 'TARIQ MEHMOOD', 'tariqmehmood@touchstone.com.pk', NULL, '$2y$10$lxu7lJnEwMe26LnLfKYmgOe4wX480yeWmfIGzhPy7D6HQZO7VO/OO', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(679, 78, 18541, 11, 12, 'HASHIR FAROOQ', 'hashirfarooq@touchstone.com.pk', NULL, '$2y$10$PwUXSar/DR3Ml2niyCZQc.W55.hWhwoWquEt/zbPegisO8pPIzhK6', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(680, 43, 18542, 11, 12, 'AMMAD UDDIN', 'ammaduddin@touchstone.com.pk', NULL, '$2y$10$/MHvaCSbSat3CuaH51UYzeU1A7S626ihITwNhMASKk74qWx.RziHq', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(681, 78, 18543, 11, 12, 'AQIB HUSSAIN SHAH', 'aqibhussainshah@touchstone.com.pk', NULL, '$2y$10$2ZPOc5/fnl6cZ12vpuS7Ke1p5E4dx6erYfgfDOOtk0wm/38pyo.0K', 1, NULL, NULL, '2021-11-19 17:14:13', '2021-11-19 17:14:13'),
(682, 78, 18544, 11, 12, 'SYED ISRAR HUSSAIN SHAH', 'syedisrarhussain@touchstone.com.pk', NULL, '$2y$10$XekGVn3UJEoNYyUOonngJOC0GDHD3GiVyCAge7y6LlmD0gCcxn0da', 1, NULL, NULL, '2021-11-19 17:14:14', '2021-11-19 17:14:14'),
(683, 40, 18545, 11, 12, 'DANISH KHATEEB', 'dkhateeb@touchstone.com.pk', NULL, '$2y$10$yUhI7uNk58QkkhBpTt.koufe2eL2gpNaiEUSTsOi6iYz3nD1eSc8y', 1, NULL, NULL, '2021-11-19 17:14:14', '2021-11-19 17:14:14'),
(684, 40, 18546, 11, 12, 'TALHA MIRZADA', 'tmirzada@touchstone.com.pk', NULL, '$2y$10$Q2w5isicez0w8GUnEkXUL..auLtLWDozkvggm2QV1XsDY.1jrM/ya', 1, NULL, NULL, '2021-11-19 17:14:14', '2021-11-19 17:14:14'),
(685, 39, 18547, 11, 12, 'LAIBA NAJAF', 'narana@touchstone.com.pk', NULL, '$2y$10$RUNdOJ1R78FqCs1sP19jq.gO.P5tZAWQD4.yLpJZSYmy6FsOcQ1EC', 1, NULL, NULL, '2021-11-19 17:14:14', '2021-11-19 17:14:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed_campaigns`
--
ALTER TABLE `allowed_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_requests`
--
ALTER TABLE `meeting_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_reviews`
--
ALTER TABLE `meeting_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_types`
--
ALTER TABLE `meeting_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reasons`
--
ALTER TABLE `reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `allowed_campaigns`
--
ALTER TABLE `allowed_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `meeting_requests`
--
ALTER TABLE `meeting_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meeting_reviews`
--
ALTER TABLE `meeting_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `meeting_types`
--
ALTER TABLE `meeting_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reasons`
--
ALTER TABLE `reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
