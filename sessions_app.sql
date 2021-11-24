-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2021 at 03:49 PM
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
(3, 1, '2021-11-18 23:01:22', '2021-11-18 23:01:22'),
(5, 1, '2021-11-18 23:01:22', '2021-11-18 23:01:22'),
(15, 1, '2021-11-18 23:01:22', '2021-11-18 23:01:22'),
(14, 2, '2021-11-19 00:08:53', '2021-11-19 00:08:53'),
(173, 2, '2021-11-19 00:08:53', '2021-11-19 00:08:53'),
(176, 2, '2021-11-19 00:08:53', '2021-11-19 00:08:53'),
(626, 2, '2021-11-19 00:08:53', '2021-11-19 00:08:53'),
(602, 3, '2021-11-19 00:17:58', '2021-11-19 00:17:58'),
(604, 3, '2021-11-19 00:17:58', '2021-11-19 00:17:58'),
(602, 4, '2021-11-19 00:18:37', '2021-11-19 00:18:37'),
(618, 4, '2021-11-19 00:18:37', '2021-11-19 00:18:37'),
(602, 5, '2021-11-19 00:20:51', '2021-11-19 00:20:51'),
(606, 5, '2021-11-19 00:20:51', '2021-11-19 00:20:51'),
(602, 6, '2021-11-19 00:26:08', '2021-11-19 00:26:08'),
(618, 6, '2021-11-19 00:26:08', '2021-11-19 00:26:08');

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
(1, 7, 'AUTO INS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(2, 9, 'CRU', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(3, 15, 'MANAGEMENT OPS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(4, 21, 'ADMIN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(5, 22, 'COMPLIANCE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(6, 23, 'DB & DEVELOPMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(7, 24, 'DIALER ADMIN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(8, 25, 'DNC', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(9, 26, 'FINANCE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(10, 27, 'HUMAN EXCELLENCE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(11, 28, 'INFORMATION TECHNOLOGY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(12, 29, 'MIS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(13, 30, 'QUALITY ASSURANCE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(14, 31, 'MANAGEMENT SUPPORT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(15, 32, 'TRAINING', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(16, 1033, 'AUTO WARRANTY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(17, 1034, 'NON-VOICE TRAINING', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(18, 1035, 'NV-1', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(19, 1046, 'LENDING TREE-3', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(20, 1047, 'ICE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(21, 1048, 'BUSINESS DEVELOPMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(22, 1049, 'NV-PP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(23, 1058, 'JUST FINANCIAL ', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(24, 1064, 'RECRUITMENT ', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(25, 1068, 'NV-WFH', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(26, 1069, 'SWAT TEAM', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(27, 2077, 'GUIDANCE FINANCIAL', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(28, 2079, 'COMPASS LENDING', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(29, 2084, 'CLIENTS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(30, 2092, 'ALLIED', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(31, 2093, 'COOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(32, 2100, 'CROSS COUNTRY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(33, 2105, 'O2', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(34, 2106, 'HBS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(35, 2108, 'HOME FIRST MORG', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(36, 2109, 'NEW PRODUCT DEVELOPMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(37, 2111, 'CRU SALES', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(38, 2112, 'MORTGAGE VERT ISB', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(39, 2113, 'MORTGAGE VERT RWP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(40, 2114, 'SOLAR RWP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(41, 2116, 'AUTO INS-RWP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(42, 2117, 'VERIFIER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(43, 2118, 'SOLAR ISB', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(44, 2119, 'CMU', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(45, 2120, 'DISCOUNT SCHOOL SUPPLY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(46, 2121, 'ASTORIA', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(47, 2124, 'TAX', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(48, 2125, 'NV AUDITOR-OPS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(49, 2126, 'CONCORDE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(50, 2127, 'EXTERNAL CLIENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(51, 2129, 'TELE DOC', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(52, 2130, 'GLOBALTEK', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(53, 2131, 'DEBT SETTLEMENT-RWP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(54, 2132, 'GC-DEBT SETTLEMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(55, 2133, 'MARKETING', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(56, 2134, 'EDDY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(57, 3134, 'RGS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(58, 3135, 'AUTO INS-BROWN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(59, 3136, 'ZDS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(60, 3137, 'DEBT SETTLEMENT-ISB', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(61, 3138, 'FINAL EXPENSE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(62, 3139, 'AUTO WARRANTY RWP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(63, 3140, 'CMU-KPK', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(64, 3141, 'AFINITI', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(65, 3142, 'ANALYTICS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(66, 3143, 'SOCIAL MEDIA', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(67, 3145, 'SOLAR KPK', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(68, 3146, 'CDRS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(69, 3147, 'THRU-LINE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(70, 3149, 'HEALTH INSURANCE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(71, 3150, 'BFC', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(72, 3151, 'QUALITY ASSURANCE-NV', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(73, 3152, 'BD', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(74, 3153, 'EDDY-IB', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(75, 3154, 'EDDY-OB', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(76, 3155, 'BYKEA', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(77, 3156, 'JR. DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(78, 3157, 'SOLAR ISB-HASHAM', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(79, 3158, 'ENABLERS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_meeting_type`
--

CREATE TABLE `campaign_meeting_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `meeting_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_meeting_type`
--

INSERT INTO `campaign_meeting_type` (`id`, `campaign_id`, `meeting_type_id`, `created_at`, `updated_at`) VALUES
(3, 6, 17, NULL, NULL);

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
(1, 2, 'ASSISTANT MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(2, 3, 'AUDITOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(3, 4, 'BI MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(4, 5, 'CEO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(5, 6, 'CFO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(6, 7, 'COACH', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(7, 8, 'COMPANY DOCTOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(8, 9, 'COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(9, 10, 'COMPLIANCE MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(10, 11, 'COORDINATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(11, 12, 'CSA', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(12, 13, 'DATABASE ADMINISTRATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(13, 14, 'DIALER ADMIN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(14, 15, 'DIRECTOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(15, 16, 'DNC EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(16, 17, 'DRIVER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(17, 18, 'ELECTRICIAN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(18, 19, 'EMPLOYEE RELATION OFFICER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(19, 20, 'FINANCE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(20, 21, 'GENERATOR OPERATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(21, 22, 'GRAPHIC DESIGNER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(22, 23, 'GUARD', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(23, 24, 'HARDWARE ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(24, 25, 'HR MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(25, 26, 'INTERNEE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(26, 27, 'JANITOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(27, 28, 'JUNIOR SOFTWARE ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(28, 29, 'JUNIOR SYSTEM ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(29, 30, 'JUNIOR WEB DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(30, 31, 'MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(31, 32, 'MIS EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(32, 33, 'NETWORK ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(33, 34, 'QA EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(34, 35, 'RECRUITMENT EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(35, 36, 'RECRUITMENT MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(36, 37, 'SECURITY EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(37, 38, 'SENIOR BI MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(38, 39, 'SENIOR DNC EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(39, 40, 'SENIOR MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(40, 41, 'SENIOR MIS EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(41, 42, 'SENIOR QA EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(42, 43, 'SENIOR SOFTWARE ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(43, 44, 'SOFTWARE ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(44, 45, 'SYSTEM ENGINEER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(45, 46, 'TEA BOY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(46, 47, 'TEAM LEAD', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(47, 48, 'TECHNICIAN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(48, 49, 'TRAINER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(49, 50, 'VERIFIER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(50, 51, 'VP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(51, 52, 'WEB DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(52, 53, 'HE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(53, 1053, 'EXECUTIVE ASSISTANT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(54, 2053, 'TRAINEE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(55, 2054, 'TL IN TRAINING', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(56, 2055, 'ASSISTANT DIRECTOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(57, 2056, 'CUSTOMER CARE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(58, 2057, 'CUSTOMER SERVICES EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(59, 2058, 'SENIOR COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(60, 2059, 'DIRECTOR BUSINESS DEVELOPMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(61, 2060, 'MANAGER BUSINESS DEVELOPMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(62, 2061, 'DATA ANALYST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(63, 2062, 'CCO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(64, 2063, 'COO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(65, 2064, 'TL TRAINING ', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(66, 2065, 'COMPLIANCE & LEGAL ADVISOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(67, 2066, 'TL DA', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(68, 2067, 'CIO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(69, 2068, 'SR. DIRECTOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(70, 2069, 'SR. DNC EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(71, 2070, 'SR.DIALER ADMIN', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(72, 2071, 'DIALER & DATA SPECIALIST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(73, 2072, 'HOME IMPROVEMENTS 1', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(74, 2073, 'HOME IMPROVEMENTS 2', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(75, 2074, 'TRAINING & DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(76, 2075, 'TRAINING & DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(77, 2076, 'STL-LENDING TREE 2', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(78, 2077, 'NV COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(79, 2078, 'NV COMPLIANCE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(80, 2079, 'SYSTEM ADMINISTRATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(81, 2080, 'EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(82, 2081, 'SR. MANAGER RECRUITEMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(83, 2082, 'GENERAL MANAGER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(84, 2083, 'CLIENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(85, 2084, 'COMPLIANCE ASSOCIATE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(86, 2085, 'BUSINESS PROCESS ANALYST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(87, 2086, 'MANAGEMENT TRAINING OFFICER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(88, 2087, 'ENGLISH LANGUAGE INSTRUCTOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(89, 2088, 'SEO SPECIALIST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(90, 2089, 'RESEARCH ANALYST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(91, 2090, 'CTO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(92, 2091, 'SOFTWARE DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(93, 2092, 'CONTENT STRATEGIST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(94, 2093, 'OFFICE BOY', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(95, 2094, 'MARKETING ANALYST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(96, 2095, 'FRONTEND DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(97, 2096, 'BACKEND DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(98, 2097, 'SUCCESSOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(99, 2098, 'Consultant', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(100, 2099, 'SENIOR MANAGER-DIGITAL MARKETING', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(101, 2100, 'SENIOR FRONTEND DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(102, 2101, 'DIRECTOR IT & DEVELOPMENT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(103, 2102, 'SUPERVISOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(104, 2103, 'SOCIAL MEDIA STRATEGIST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(105, 3103, 'SECURITY SUPERVISOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(106, 3104, 'SENIOR MANAGER ANALYTICS', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(107, 3105, 'COMMUNICATIONS TRAINER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(108, 3106, 'NPD SWAT OFFICER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(109, 3107, 'SR. HE EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(110, 3108, 'ACTIVITIES COORDINATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(111, 3109, 'DIGITAL MARKETING STRATEGIST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(112, 3110, 'HRBP', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(113, 3111, 'SR. DATABASE ADMINISTRATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(114, 3112, 'CMO', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(115, 3113, 'PHOTOGRAPHER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(116, 3114, 'PPC EXPERT', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(117, 3115, 'BD EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(118, 3116, 'BUSINESS DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(119, 3117, 'MIS ANALYST', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(120, 3118, 'JR. DATABASE ADMINISTRATOR', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(121, 3119, 'JR. DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(122, 3120, 'DOCUMENT CONTROL ASSOCIATE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(123, 3121, 'AFFILIATE ACCOUNT EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(124, 3122, 'FULL STACK DEVELOPER', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50'),
(125, 3123, 'DEVELOPMENT EXECUTIVE', 1, NULL, '2021-11-18 22:58:50', '2021-11-18 22:58:50');

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
  `head_count` int(11) NOT NULL DEFAULT '0',
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
(1, 2, 30, 1, NULL, NULL, NULL, NULL, 2, 20, '2021-11-20', '04:01:00', '05:01:00', 'Lorem Ipsum', 4.00, 'Testinadasdsa', 1, NULL, '2021-11-18 23:01:22', '2021-11-18 23:01:31'),
(2, 2, 43, 1, NULL, NULL, NULL, NULL, 2, 20, '2021-11-20', '04:06:00', '06:06:00', 'Lorem Ipsum', 0.00, NULL, 0, NULL, '2021-11-19 00:06:26', '2021-11-19 00:06:26'),
(3, 2, 76, 1, NULL, NULL, NULL, NULL, 3, 20, '2021-11-23', '04:17:00', '06:17:00', NULL, 0.00, NULL, 0, NULL, '2021-11-19 00:17:58', '2021-11-19 00:17:58'),
(4, 2, 76, 1, NULL, NULL, NULL, NULL, 2, 10, '2021-11-25', '03:18:00', '05:18:00', 'Lorem Ipsum', 0.00, NULL, 1, NULL, '2021-11-19 00:18:37', '2021-11-19 00:18:37'),
(5, 2, 76, 1, NULL, NULL, NULL, NULL, 3, 10, '2021-11-19', '07:20:00', '11:20:00', 'Lorem Ipsum', 4.00, 'Testing Feedback', 1, NULL, '2021-11-19 00:20:51', '2021-11-19 00:20:51'),
(6, 2, 76, 1, NULL, NULL, NULL, NULL, 2, 20, '2021-11-20', '04:25:00', '06:25:00', 'Lorem Ipsum', 4.00, 'Lorem Ipsum', 1, NULL, '2021-11-19 00:26:08', '2021-11-19 00:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_requests`
--

CREATE TABLE `meeting_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `team_lead_id` int(10) UNSIGNED NOT NULL,
  `reason_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_types`
--

CREATE TABLE `meeting_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_types`
--

INSERT INTO `meeting_types` (`id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'One on One Session', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(2, 'QA Caliberation Session', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(3, 'Mass Training Session', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(4, 'Testing Type', 1, NULL, '2021-11-19 00:56:14', '2021-11-19 00:56:14'),
(5, 'Testing Meeting Type 1', 1, NULL, '2021-11-19 15:44:43', '2021-11-19 15:44:43'),
(6, 'Testing Campaign Type', 1, NULL, '2021-11-19 15:45:47', '2021-11-19 15:45:47');

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
(229, '2014_10_12_000000_create_users_table', 1),
(230, '2014_10_12_100000_create_password_resets_table', 1),
(231, '2019_08_19_000000_create_failed_jobs_table', 1),
(232, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(233, '2021_11_15_220416_create_campaigns_table', 1),
(234, '2021_11_15_220624_create_meetings_table', 1),
(235, '2021_11_15_220643_create_attendees_table', 1),
(236, '2021_11_15_220721_create_reasons_table', 1),
(237, '2021_11_15_221016_create_meeting_requests_table', 1),
(238, '2021_11_15_221459_create_meeting_types_table', 1),
(239, '2021_11_16_200808_create_permission_tables', 1),
(240, '2021_11_19_020320_create_designations_table', 1),
(241, '2021_11_19_054313_create_campaign_meeting_type_table', 2);

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
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(5, 'App\\Models\\User', 25),
(5, 'App\\Models\\User', 26),
(5, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(5, 'App\\Models\\User', 29),
(5, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(5, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(4, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(5, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(4, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48),
(5, 'App\\Models\\User', 49),
(5, 'App\\Models\\User', 50),
(5, 'App\\Models\\User', 51),
(5, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(5, 'App\\Models\\User', 55),
(5, 'App\\Models\\User', 56),
(5, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(5, 'App\\Models\\User', 59),
(5, 'App\\Models\\User', 60),
(5, 'App\\Models\\User', 61),
(5, 'App\\Models\\User', 62),
(5, 'App\\Models\\User', 63),
(5, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(4, 'App\\Models\\User', 66),
(4, 'App\\Models\\User', 67),
(5, 'App\\Models\\User', 68),
(4, 'App\\Models\\User', 69),
(5, 'App\\Models\\User', 70),
(5, 'App\\Models\\User', 71),
(5, 'App\\Models\\User', 72),
(5, 'App\\Models\\User', 73),
(5, 'App\\Models\\User', 74),
(5, 'App\\Models\\User', 75),
(5, 'App\\Models\\User', 76),
(5, 'App\\Models\\User', 77),
(5, 'App\\Models\\User', 78),
(5, 'App\\Models\\User', 79),
(5, 'App\\Models\\User', 80),
(5, 'App\\Models\\User', 81),
(5, 'App\\Models\\User', 82),
(5, 'App\\Models\\User', 83),
(5, 'App\\Models\\User', 84),
(5, 'App\\Models\\User', 85),
(4, 'App\\Models\\User', 86),
(4, 'App\\Models\\User', 87),
(5, 'App\\Models\\User', 88),
(5, 'App\\Models\\User', 89),
(5, 'App\\Models\\User', 90),
(5, 'App\\Models\\User', 91),
(5, 'App\\Models\\User', 92),
(5, 'App\\Models\\User', 93),
(5, 'App\\Models\\User', 94),
(5, 'App\\Models\\User', 95),
(5, 'App\\Models\\User', 96),
(5, 'App\\Models\\User', 97),
(3, 'App\\Models\\User', 98),
(5, 'App\\Models\\User', 99),
(5, 'App\\Models\\User', 100),
(2, 'App\\Models\\User', 101),
(3, 'App\\Models\\User', 102),
(3, 'App\\Models\\User', 103),
(5, 'App\\Models\\User', 104),
(5, 'App\\Models\\User', 105),
(5, 'App\\Models\\User', 106),
(5, 'App\\Models\\User', 107),
(5, 'App\\Models\\User', 108),
(4, 'App\\Models\\User', 109),
(5, 'App\\Models\\User', 110),
(5, 'App\\Models\\User', 111),
(5, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(5, 'App\\Models\\User', 114),
(4, 'App\\Models\\User', 115),
(5, 'App\\Models\\User', 116),
(5, 'App\\Models\\User', 117),
(3, 'App\\Models\\User', 118),
(5, 'App\\Models\\User', 119),
(3, 'App\\Models\\User', 120),
(5, 'App\\Models\\User', 121),
(5, 'App\\Models\\User', 122),
(5, 'App\\Models\\User', 123),
(5, 'App\\Models\\User', 124),
(5, 'App\\Models\\User', 125),
(5, 'App\\Models\\User', 126),
(4, 'App\\Models\\User', 127),
(3, 'App\\Models\\User', 128),
(5, 'App\\Models\\User', 129),
(5, 'App\\Models\\User', 130),
(5, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(5, 'App\\Models\\User', 133),
(5, 'App\\Models\\User', 134),
(5, 'App\\Models\\User', 135),
(2, 'App\\Models\\User', 136),
(2, 'App\\Models\\User', 137),
(5, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(5, 'App\\Models\\User', 140),
(5, 'App\\Models\\User', 141),
(5, 'App\\Models\\User', 142),
(3, 'App\\Models\\User', 143),
(5, 'App\\Models\\User', 144),
(5, 'App\\Models\\User', 145),
(5, 'App\\Models\\User', 146),
(5, 'App\\Models\\User', 147),
(5, 'App\\Models\\User', 148),
(5, 'App\\Models\\User', 149),
(5, 'App\\Models\\User', 150),
(5, 'App\\Models\\User', 151),
(5, 'App\\Models\\User', 152),
(4, 'App\\Models\\User', 153),
(4, 'App\\Models\\User', 154),
(4, 'App\\Models\\User', 155),
(5, 'App\\Models\\User', 156),
(5, 'App\\Models\\User', 157),
(5, 'App\\Models\\User', 158),
(5, 'App\\Models\\User', 159),
(5, 'App\\Models\\User', 160),
(5, 'App\\Models\\User', 161),
(5, 'App\\Models\\User', 162),
(5, 'App\\Models\\User', 163),
(4, 'App\\Models\\User', 164),
(5, 'App\\Models\\User', 165),
(5, 'App\\Models\\User', 166),
(5, 'App\\Models\\User', 167),
(5, 'App\\Models\\User', 168),
(4, 'App\\Models\\User', 169),
(5, 'App\\Models\\User', 170),
(5, 'App\\Models\\User', 171),
(5, 'App\\Models\\User', 172),
(5, 'App\\Models\\User', 173),
(5, 'App\\Models\\User', 174),
(5, 'App\\Models\\User', 175),
(5, 'App\\Models\\User', 176),
(5, 'App\\Models\\User', 177),
(5, 'App\\Models\\User', 178),
(5, 'App\\Models\\User', 179),
(5, 'App\\Models\\User', 180),
(5, 'App\\Models\\User', 181),
(5, 'App\\Models\\User', 182),
(5, 'App\\Models\\User', 183),
(5, 'App\\Models\\User', 184),
(5, 'App\\Models\\User', 185),
(5, 'App\\Models\\User', 186),
(5, 'App\\Models\\User', 187),
(5, 'App\\Models\\User', 188),
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
(3, 'App\\Models\\User', 203),
(5, 'App\\Models\\User', 204),
(5, 'App\\Models\\User', 205),
(5, 'App\\Models\\User', 206),
(5, 'App\\Models\\User', 207),
(5, 'App\\Models\\User', 208),
(5, 'App\\Models\\User', 209),
(5, 'App\\Models\\User', 210),
(5, 'App\\Models\\User', 211),
(5, 'App\\Models\\User', 212),
(3, 'App\\Models\\User', 213),
(5, 'App\\Models\\User', 214),
(5, 'App\\Models\\User', 215),
(5, 'App\\Models\\User', 216),
(3, 'App\\Models\\User', 217),
(3, 'App\\Models\\User', 218),
(3, 'App\\Models\\User', 219),
(3, 'App\\Models\\User', 220),
(5, 'App\\Models\\User', 221),
(5, 'App\\Models\\User', 222),
(5, 'App\\Models\\User', 223),
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
(5, 'App\\Models\\User', 234),
(5, 'App\\Models\\User', 235),
(5, 'App\\Models\\User', 236),
(5, 'App\\Models\\User', 237),
(5, 'App\\Models\\User', 238),
(5, 'App\\Models\\User', 239),
(5, 'App\\Models\\User', 240),
(5, 'App\\Models\\User', 241),
(5, 'App\\Models\\User', 242),
(5, 'App\\Models\\User', 243),
(5, 'App\\Models\\User', 244),
(5, 'App\\Models\\User', 245),
(5, 'App\\Models\\User', 246),
(5, 'App\\Models\\User', 247),
(5, 'App\\Models\\User', 248),
(5, 'App\\Models\\User', 249),
(5, 'App\\Models\\User', 250),
(4, 'App\\Models\\User', 251),
(5, 'App\\Models\\User', 252),
(5, 'App\\Models\\User', 253),
(5, 'App\\Models\\User', 254),
(5, 'App\\Models\\User', 255),
(3, 'App\\Models\\User', 256),
(5, 'App\\Models\\User', 257),
(5, 'App\\Models\\User', 258),
(5, 'App\\Models\\User', 259),
(5, 'App\\Models\\User', 260),
(5, 'App\\Models\\User', 261),
(5, 'App\\Models\\User', 262),
(5, 'App\\Models\\User', 263),
(3, 'App\\Models\\User', 264),
(5, 'App\\Models\\User', 265),
(5, 'App\\Models\\User', 266),
(3, 'App\\Models\\User', 267),
(5, 'App\\Models\\User', 268),
(5, 'App\\Models\\User', 269),
(5, 'App\\Models\\User', 270),
(5, 'App\\Models\\User', 271),
(5, 'App\\Models\\User', 272),
(5, 'App\\Models\\User', 273),
(5, 'App\\Models\\User', 274),
(5, 'App\\Models\\User', 275),
(5, 'App\\Models\\User', 276),
(5, 'App\\Models\\User', 277),
(5, 'App\\Models\\User', 278),
(5, 'App\\Models\\User', 279),
(5, 'App\\Models\\User', 280),
(5, 'App\\Models\\User', 281),
(5, 'App\\Models\\User', 282),
(5, 'App\\Models\\User', 283),
(5, 'App\\Models\\User', 284),
(5, 'App\\Models\\User', 285),
(5, 'App\\Models\\User', 286),
(5, 'App\\Models\\User', 287),
(5, 'App\\Models\\User', 288),
(5, 'App\\Models\\User', 289),
(5, 'App\\Models\\User', 290),
(5, 'App\\Models\\User', 291),
(5, 'App\\Models\\User', 292),
(3, 'App\\Models\\User', 293),
(5, 'App\\Models\\User', 294),
(5, 'App\\Models\\User', 295),
(5, 'App\\Models\\User', 296),
(5, 'App\\Models\\User', 297),
(5, 'App\\Models\\User', 298),
(5, 'App\\Models\\User', 299),
(5, 'App\\Models\\User', 300),
(5, 'App\\Models\\User', 301),
(5, 'App\\Models\\User', 302),
(5, 'App\\Models\\User', 303),
(3, 'App\\Models\\User', 304),
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
(5, 'App\\Models\\User', 320),
(5, 'App\\Models\\User', 321),
(5, 'App\\Models\\User', 322),
(5, 'App\\Models\\User', 323),
(5, 'App\\Models\\User', 324),
(5, 'App\\Models\\User', 325),
(5, 'App\\Models\\User', 326),
(5, 'App\\Models\\User', 327),
(5, 'App\\Models\\User', 328),
(5, 'App\\Models\\User', 329),
(5, 'App\\Models\\User', 330),
(5, 'App\\Models\\User', 331),
(5, 'App\\Models\\User', 332),
(5, 'App\\Models\\User', 333),
(5, 'App\\Models\\User', 334),
(5, 'App\\Models\\User', 335),
(3, 'App\\Models\\User', 336),
(5, 'App\\Models\\User', 337),
(5, 'App\\Models\\User', 338),
(5, 'App\\Models\\User', 339),
(5, 'App\\Models\\User', 340),
(5, 'App\\Models\\User', 341),
(5, 'App\\Models\\User', 342),
(5, 'App\\Models\\User', 343),
(5, 'App\\Models\\User', 344),
(5, 'App\\Models\\User', 345),
(3, 'App\\Models\\User', 346),
(5, 'App\\Models\\User', 347),
(5, 'App\\Models\\User', 348),
(5, 'App\\Models\\User', 349),
(5, 'App\\Models\\User', 350),
(5, 'App\\Models\\User', 351),
(5, 'App\\Models\\User', 352),
(3, 'App\\Models\\User', 353),
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
(5, 'App\\Models\\User', 365),
(5, 'App\\Models\\User', 366),
(5, 'App\\Models\\User', 367),
(5, 'App\\Models\\User', 368),
(5, 'App\\Models\\User', 369),
(5, 'App\\Models\\User', 370),
(5, 'App\\Models\\User', 371),
(5, 'App\\Models\\User', 372),
(5, 'App\\Models\\User', 373),
(5, 'App\\Models\\User', 374),
(5, 'App\\Models\\User', 375),
(5, 'App\\Models\\User', 376),
(5, 'App\\Models\\User', 377),
(5, 'App\\Models\\User', 378),
(3, 'App\\Models\\User', 379),
(5, 'App\\Models\\User', 380),
(5, 'App\\Models\\User', 381),
(5, 'App\\Models\\User', 382),
(5, 'App\\Models\\User', 383),
(5, 'App\\Models\\User', 384),
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
(4, 'App\\Models\\User', 404),
(5, 'App\\Models\\User', 405),
(5, 'App\\Models\\User', 406),
(5, 'App\\Models\\User', 407),
(5, 'App\\Models\\User', 408),
(5, 'App\\Models\\User', 409),
(5, 'App\\Models\\User', 410),
(5, 'App\\Models\\User', 411),
(5, 'App\\Models\\User', 412),
(5, 'App\\Models\\User', 413),
(5, 'App\\Models\\User', 414),
(5, 'App\\Models\\User', 415),
(5, 'App\\Models\\User', 416),
(3, 'App\\Models\\User', 417),
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
(5, 'App\\Models\\User', 428),
(5, 'App\\Models\\User', 429),
(5, 'App\\Models\\User', 430),
(5, 'App\\Models\\User', 431),
(5, 'App\\Models\\User', 432),
(5, 'App\\Models\\User', 433),
(5, 'App\\Models\\User', 434),
(5, 'App\\Models\\User', 435),
(5, 'App\\Models\\User', 436),
(5, 'App\\Models\\User', 437),
(5, 'App\\Models\\User', 438),
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
(5, 'App\\Models\\User', 451),
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
(3, 'App\\Models\\User', 473),
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
(5, 'App\\Models\\User', 489),
(5, 'App\\Models\\User', 490),
(5, 'App\\Models\\User', 491),
(5, 'App\\Models\\User', 492),
(5, 'App\\Models\\User', 493),
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
(5, 'App\\Models\\User', 509),
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
(3, 'App\\Models\\User', 557),
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
(3, 'App\\Models\\User', 572),
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
(5, 'App\\Models\\User', 592),
(5, 'App\\Models\\User', 593),
(5, 'App\\Models\\User', 594),
(5, 'App\\Models\\User', 595),
(5, 'App\\Models\\User', 596),
(5, 'App\\Models\\User', 597),
(3, 'App\\Models\\User', 598),
(5, 'App\\Models\\User', 599),
(5, 'App\\Models\\User', 600),
(2, 'App\\Models\\User', 601),
(5, 'App\\Models\\User', 602),
(5, 'App\\Models\\User', 603),
(5, 'App\\Models\\User', 604),
(5, 'App\\Models\\User', 605),
(5, 'App\\Models\\User', 606),
(5, 'App\\Models\\User', 607),
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
(5, 'App\\Models\\User', 633),
(5, 'App\\Models\\User', 634),
(5, 'App\\Models\\User', 635),
(5, 'App\\Models\\User', 636),
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
(5, 'App\\Models\\User', 651),
(5, 'App\\Models\\User', 652),
(5, 'App\\Models\\User', 653),
(5, 'App\\Models\\User', 654),
(5, 'App\\Models\\User', 655),
(5, 'App\\Models\\User', 656),
(5, 'App\\Models\\User', 657);

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
(1, 'Requested by Team', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(2, 'Performance Evaluation', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(3, 'Quality Assurance', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(4, 'Sales Target', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(5, 'Other', 1, NULL, '2021-11-18 22:58:45', '2021-11-18 22:58:45');

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
(1, 'Super Admin', 'web', '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(2, 'Director', 'web', '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(3, 'Manager', 'web', '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(4, 'Team Lead', 'web', '2021-11-18 22:58:45', '2021-11-18 22:58:45'),
(5, 'Associate', 'web', '2021-11-18 22:58:45', '2021-11-18 22:58:45');

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
(1, NULL, NULL, NULL, NULL, 'Adminstrator', 'admin@touchstone.com.pk', NULL, '$2y$10$xgffQmUgnik6j69MBche5.WfA.YoLUY.EaCCUpdic/jYB2jY/0VH2', 1, NULL, NULL, '2021-11-18 22:58:51', '2021-11-18 22:58:51'),
(2, 3, 8, 14, 15, 'WAQAS AHMED', 'waqasa@touchstone.com.pk', NULL, '$2y$10$WtGfjNfqngg6n12UrEAWC.TqZMmmyB2/Dgkua4DRhkb.X8BYmvlc2', 1, NULL, NULL, '2021-11-18 22:58:51', '2021-11-19 00:39:36'),
(3, 14, 10, 14, 15, 'GHULAM RABBANI', 'srabbani@touchstone.com.pk', NULL, '$2y$10$YJ2dymNx0epa4zEDBkz.oeVUfAiId1UXTDnxIF4g4/myZ7jkjG1N2', 1, NULL, NULL, '2021-11-18 22:58:51', '2021-11-19 00:39:36'),
(4, 14, 20, 30, 31, 'WAQAR AHMED', 'wahmed@touchstone.com.pk', NULL, '$2y$10$FiRmbLZEL8NNzul9uyKSn.fkMZkcGLCTzG6Hy1xv8HgySE8/4balu', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(5, 3, 30, 46, 47, 'FURQAN BADSHAH', 'fbadshah@touchstone.com.pk', NULL, '$2y$10$/4b.VgXkCdT3Tw1N4K4xXu5ofjEFam4tOQwLEvAp7hjMsg4Uj3L52', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(6, 3, 32, 14, 15, 'NAVEED AKHTER', 'nakhtar@touchstone.com.pk', NULL, '$2y$10$HjoWjy.AoIvtHLPqzrtKTeHhGyhhbf.Z.CYREpuoXa9/F9onVBJpm', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(7, 3, 35, 39, 40, 'IRAM AHMED', 'ishahzadi@touchstone.com.pk', NULL, '$2y$10$mfXeWOa4.3.7BCS763Fs0ei.yR76uwjA4L03vNbeyVegobc8645c.', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(8, 3, 37, 39, 40, 'MUHAMMAD IKRAM', 'mikram@touchstone.com.pk', NULL, '$2y$10$/UqjN34bLmEUvoTW5Vy9h.rOMam2e60aEwaNOsU5CswNjlbwm3kae', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(9, 3, 41, 1, 2, 'USAMA RAHEEM ', 'usraheem@touchstone.com.pk', NULL, '$2y$10$Vqu.HgGpeCnG/N11Mj19UesHAkeIi1EVN8/Lz4R8nANTuzMo70x0u', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(10, 16, 51, 11, 12, 'ANIL CHRISTOPHER ', 'achristopher@touchstone.com.pk', NULL, '$2y$10$Ju7EuwJNRQ.Ds39dQssJWuLzenTH7.rDl4R1wsSghleEnYimSS2f2', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(11, 2, 62, 11, 12, 'SHAGHIL SHAKEEL ', 'sshakeel@touchstone.com.pk', NULL, '$2y$10$ublVUHZUXaUoXEvo6oYoj.tPXJy2xML6jXPs5OoKe1OBFQWjnYvXW', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(12, 39, 71, 11, 12, 'MUHAMMAD USMAN RABBANI CHAUDHRY', 'mrchaudhry@touchstone.com.pk', NULL, '$2y$10$wnntq96Hgcqo0nldgz1ifeUTf4D7ktLdVv17ndkCCD5YxNHfWWZHy', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:36'),
(13, 3, 81, 1, 2, 'ZAMEER HUSSAIN', 'zhussain@touchstone.com.pk', NULL, '$2y$10$bUAHw884oTQ4h99yqphG4uWIZvriAwwAvGJ3X7CSEQrbZrBMbHyQG', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:37'),
(14, 43, 87, 11, 12, 'KAMRAN NAWAZ', 'knawaz@touchstone.com.pk', NULL, '$2y$10$pcYlJReD0N3Qi/l69VBqNOIZYFIaX6DJI5/sCw0Gl3HzabRtyNCNa', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:37'),
(15, 39, 96, 11, 12, 'SHAKEEL MASIH', 'smasih@touchstone.com.pk', NULL, '$2y$10$O2dMcVrtUsoj/XMmUqnHme8Y1.CCAqoX2qXMIcTsUAlSDXmdmHB7u', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:37'),
(16, 16, 103, 11, 12, 'ISHAQ AHMED', 'iahmed@touchstone.com.pk', NULL, '$2y$10$E.1fi/U2PX8EmTRdEOSWee4egGcmuHorLccIaZ7FrrzMbqmx8aDOm', 1, NULL, NULL, '2021-11-18 22:58:52', '2021-11-19 00:39:37'),
(17, 16, 163, 11, 12, 'ZAHIDA NAWAZ', 'znawaz@touchstone.com.pk', NULL, '$2y$10$T5Nva.py.9MO9o4q1KFjYOCCP9.XxUd9gQXFYOhsGwAmSmfyyTlym', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(18, 2, 164, 11, 12, 'HAIDER MASOOD ', 'hamasood@touchstone.com.pk', NULL, '$2y$10$I0Yaw5XBTXfoV7ViVa8muOgKXo26seF7jbvCq4..ntFMwbZmMsm4q', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(19, 14, 166, 46, 47, 'MUHAMMAD IBTISAM SARFRAZ', 'isarfarz@touchstone.com.pk', NULL, '$2y$10$yZALT2lkdx.caTC7BSEjEOiKAbaEc/cSBAH6KyhQHPfIXUXF0Cs8.', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(20, 2, 173, 11, 12, 'SHEHZADA EHTISHAM ', 'sehtisham@touchstone.com.pk', NULL, '$2y$10$mEoh2YVORvrtbrgdKoFQD.n5V3KOpyEDOAHxJy0oJ6.ySHjU9rSaq', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(21, 2, 174, 11, 12, 'SYED MUHAMMAD ALI', 'syali@touchstone.com.pk', NULL, '$2y$10$WyxhM0Raou9IPghmP7HmvOtZBlpBI5Ftt0uqFaik8kL8uYdarNRf2', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(22, 14, 180, 30, 31, 'FARHAN ANWAR', 'fanwar@touchstone.com.pk', NULL, '$2y$10$sqex1eRTnB.63Uub8ULgO.VNAWOQJVpPRO4UW3L9mqFhOkZb4jkmO', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(23, 3, 181, 46, 47, 'GHUFRAN ULLAH', 'Muanwar@touchstone.com.pk', NULL, '$2y$10$R4ahxpKwnHkcN.RRXVwiSuB4kJPGLUm3vWrH2UscVLRBGbc5TpdAa', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(24, 3, 182, 46, 47, 'JENNY UFAQ', 'jufaq@touchstone.com.pk', NULL, '$2y$10$ly2uygRpyPKyR2DbOyejZOU3sawx/iFutmW70DA97gnOYfBKzxVbK', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(25, 2, 184, 11, 12, 'MUHAMMAD KHURRAM JILLANI', 'mkjillani@touchstone.com.pk', NULL, '$2y$10$BHM4jrep72Xh4Er/sozPZuEV8iqMSvifo754kF4I7qSxvPdSSBE0y', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:37'),
(26, 2, 193, 11, 12, 'ZULQARNAIN RAZA', 'zraza@touchstone.com.pk', NULL, '$2y$10$WZ752IR2fi4pHQ9X2JlRxudCVqMO1bgaUqBDbAgR.J/eVssgkypSy', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:38'),
(27, 2, 194, 11, 12, 'ALI RAZA MALIK', 'alraza@touchstone.com.pk', NULL, '$2y$10$0JCwyQxtvBeRm2UToP.95.z7MDEf3go.CXHQGIpWzUv1pmVr8XXVq', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:38'),
(28, 3, 195, 46, 47, 'AMIR MURAD', 'amurad@touchstone.com.pk', NULL, '$2y$10$/Ylytd1CPKxcyLpPQCEN7eupipPS88naGyuzDWtWyHiinAmFG6XPS', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:38'),
(29, 2, 206, 11, 12, 'ZAHEEN ULLAH', 'zkhattak@touchstone.com.pk', NULL, '$2y$10$G4wubERRFpOpfQG3SvhqyeYSw1I8YMSFMWluPf9vx6v1ZKlgWSCLK', 1, NULL, NULL, '2021-11-18 22:58:53', '2021-11-19 00:39:38'),
(30, 2, 207, 11, 12, 'AAMIR NAWAZ KHAN', 'anakhan@touchstone.com.pk', NULL, '$2y$10$3aUOPEISxvmDikbdRMa53ObZ08aU6nMdxF7T8OgslA0MxHeuuCYri', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(31, 3, 210, 46, 47, 'KANZA NOOR', 'knoor@touchstone.com.pk', NULL, '$2y$10$TJETubVQpfJQ9OO2PxWRielenohdCI4.ATNwoUumOwBKsmsSzMzHe', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(32, 3, 212, 39, 40, 'MUHAMMAD ATIF ABBASI', 'mabbasi@touchstone.com.pk', NULL, '$2y$10$VtDEHz9qdqjG67m5VvbzWutjh382tJTHp0CfZ9fCAmkIEj.92k4GO', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(33, 2, 213, 11, 12, 'MUHAMMAD FAHEEM KHAN', 'mfkhan@touchstone.com.pk', NULL, '$2y$10$tRm1PrluOhq.aj1.QAa2/u4qRt6UhavOt8nQeVI9WWKSvIrAmV2C.', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(34, 3, 216, 1, 2, 'RAJA ASIF GULZAR', 'ragulzar@touchstone.com.pk', NULL, '$2y$10$AjCZQkApFqVn88/v.4HnCelLNoeOo1U99xYxOSznPt61QFz2kCO1O', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(35, 3, 217, 30, 31, 'ROHAIL BHATTI', 'rbhatti@touchstone.com.pk', NULL, '$2y$10$3Akg/RE53Uo.7YbXCo6t/erA7rbJ7Wdbtr520hYtsKREmv6Lzguei', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(36, 39, 231, 11, 12, 'MUHAMMAD AHSAN AMIN', 'mamin@touchstone.com.pk', NULL, '$2y$10$g9reFgq.gLrYlrH9MVObXemDlA/8qZBH4yQfCO8GivweRj0OhCls.', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(37, 3, 241, 1, 2, 'ISRAR HUSSAIN ', 'ishussain@touchstone.com.pk', NULL, '$2y$10$pnOG.tRUOxgGGgu1m5CvjubyziitVY/MdJc5JskKw3M6VdyfM.32C', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(38, 3, 256, 30, 31, 'ALI JAFFAR', 'ajaffer@touchstone.com.pk', NULL, '$2y$10$tuDy29bvCQV9uF.OgWE4AOKnDA8rD.Fo75bMgBnBVYpKgAi7ui0ze', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:38'),
(39, 14, 324, 30, 31, 'SHAHID IQBAL', 'siqbal@touchstone.com.pk', NULL, '$2y$10$g3ZqDzOzH9WHE/77r.F0pu8M4HWCSfVt5CmCo3sU6eGxkgO1iJxZu', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:39'),
(40, 14, 330, 39, 40, 'ZORAIN SHAHID', 'zshahid@touchstone.com.pk', NULL, '$2y$10$gGQbtm0CmuZPCjjuGiPbZOeFaJjbp4GDyNF5crSuKAlXRbzKi1zfG', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:39'),
(41, 14, 336, 39, 40, 'KASHIF SHAHZAD', 'kshahzad@touchstone.com.pk', NULL, '$2y$10$s7Y.zH1nlCNahTN0ZIQTWuezwOpt6eTAZVi57pjWymaO/CujOwoDy', 1, NULL, NULL, '2021-11-18 22:58:54', '2021-11-19 00:39:39'),
(42, 14, 346, 46, 47, 'TAHIR YASIN', 'tyasin@touchstone.com.pk', NULL, '$2y$10$eXKjveg6GceJTSKrK2.NJ.eUTDGFybkJDgzE.vUVccSpIVEhLoypu', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(43, 14, 349, 30, 31, 'ZEESHAN AHMED KHAN', 'zikhan@touchstone.com.pk', NULL, '$2y$10$kd7F8QM/3WDMVrUJmdY6POr3/5YAEKTPBkbJ2GYovOZQpEZXLnOnm', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(44, 14, 352, 30, 31, 'MOUAZ SHAHID', 'mbutt@touchstone.com.pk', NULL, '$2y$10$E4JBiqU488qYowzkAeVmBey4ijkuZU6rAjfZEhpp/G.aBwRh1guqq', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(45, 27, 363, 11, 12, 'SUFYAN NAZIR', 'sunazir@touchstone.com.pk', NULL, '$2y$10$zsPhfMViTiSHVgDEp5GR5.nnHaNNav6xMa7yew8dx9mzX/u3MrsF2', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(46, 14, 368, 56, 2055, 'ANAM ZORAIN', 'azorain@touchstone.com.pk', NULL, '$2y$10$bGt8/2DR4J/tDPuvaiW03uK0NijMf47qbApRZaJl4v/dvRyiQDble', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(47, 3, 1064, 46, 47, 'HUSSAIN KHALID', 'HKhalid@touchstone.com.pk', NULL, '$2y$10$hkZblcrH0gbxJ4C21/q9HuWNll2RnvCACZC.0G1zp6WhxfQOcm8zK', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(48, 3, 1071, 30, 31, 'SAMSON RIAZ', 'sriaz@touchstone.com.pk', NULL, '$2y$10$oh0QwPyUyLucdoA./arHoOlrfjgOEgaN23Ji7efCW1k.IoVrYN5LS', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(49, 2, 1105, 11, 12, 'ZULQARNAIN SHAH', 'zshah@touchstone.com.pk', NULL, '$2y$10$fRvA1wavB6d5eP4BaY3hWu.Cawuy3Y4ydPS.NX1W.Lvq.0XQaG0Sa', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(50, NULL, 2049, 11, 12, 'ABEER QAZI', 'aqazi@touchstone.com.pk', NULL, '$2y$10$4zXcV4xm06t0KA0Ha7YhyeOY9xuSktdLpRjSVncljwCNE8ESW2rhS', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(51, 2, 2075, 11, 12, 'UMAMA ANWAR', 'umlone@touchstone.com.pk', NULL, '$2y$10$Q8RDGMxmPowmmCbJIrdwDe01W3LpWzxp3BTP6mxzmFngQ.XdOjgLm', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:39'),
(52, 2, 2087, 11, 12, 'KHALIL AHMED ', 'Kahmed@touchstone.com.pk', NULL, '$2y$10$XVVwqbcuuJQNEy.nuKhaw.14PLGJRzzj.k3.WKMTYzJKqV9RHBena', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:40'),
(53, 3, 2102, 39, 40, 'FAIZAN JAMIL HASHMI', 'fhashmi@touchstone.com.pk', NULL, '$2y$10$4GxdnISZHuJ12WfR1HRn0uZ55pkZ1zUOtv7q9kl6kDUJXcSZFwLKa', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:40'),
(54, 3, 2105, 1, 2, 'MUHAMMAD ASIF ALI', 'maasif@touchstone.com.pk', NULL, '$2y$10$mkI2m8oulHQT87Mu3wISzuKjBSa16zfdcQ20k2UwU4ipwjvjUaZ9S', 1, NULL, NULL, '2021-11-18 22:58:55', '2021-11-19 00:39:40'),
(55, 2, 2110, 11, 12, 'FARHAN HASSAN', 'fhassan@touchstone.com.pk', NULL, '$2y$10$rRqyQm28t4O.u1sCdHaPje3SH.hJzKsruvQG0SlLsR2CWI15tJ4Ku', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(56, 2, 2117, 11, 12, 'ABDUL JABBAR', 'aj@touchstone.com', NULL, '$2y$10$EPpgm5wGwmSK4HNz4VmliedGkqIl7yO/QoGrfQQiiD2GDxUDYJXWq', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(57, 78, 2123, 11, 12, 'AANIS MEHROZE', 'amehroze@touchstone.com.pk', NULL, '$2y$10$ff6kL6NrgTvByyuMYgyHqOYvJoV//8FHtASBGy7DU4OGD.5Hm89Mu', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(58, 3, 2148, 14, 15, 'HASHAM HASHIM', 'hhashim@touchstone.com.pk', NULL, '$2y$10$HciMY6b7zfaWC0kXTwcShuVve2sEzzMZEwOA9hbOr35qxeZYJBhaC', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(59, 2, 2151, 11, 12, 'IQRA MIRZA', 'imirza@touchstone.com.pk', NULL, '$2y$10$lVg73jedoL1mnuI2Gf4iEe1l3Xz2yOTdIFF0HEFtklXMYQoaH6Kdi', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(60, 2, 2154, 11, 12, 'ZAIN UL ABIDEEN', 'zabideen@touchstone.com.pk', NULL, '$2y$10$tBqN9F1PXe8gCLYalTS33O121dH.AnFM5O7DxlCKNzbZdAzd/d0bK', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(61, 2, 2158, 11, 12, 'GOHAR ABBAS', 'gabbas@touchstone.com.pk', NULL, '$2y$10$7STzLMHmLWwhllj3r0HUuOLyUUk9dUkYqjcEaYFQYytKMlIxh2P8K', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(62, 2, 2160, 11, 12, 'SHEHERYAR AHMED', 'shahmed@touchstone.com.pk', NULL, '$2y$10$Je6zxNNoGhltopjdXkFYEO8TUF4baCrdXpujMMCoNpQWapN89WcEu', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(63, 44, 2161, 11, 12, 'MUHAMMAD ZIA UR REHMAN', 'mza@touchstone.com.pk', NULL, '$2y$10$18U0OMLAuZOedInGWCOF9e31i4VxmShjK3fW4Bf0aYQWUTbLvEMSK', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(64, 2, 2164, 11, 12, 'SYEDA HANIA BATOOL', 'sha@touchstone.com.pk', NULL, '$2y$10$6w7oxAW.UbEU.vJE3M2EyOJbPSKmFcodEYciGftRoCLLsjboxudYG', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:40'),
(65, 3, 2183, 1, 2, 'SYED ZAHID HUSSAIN', 'SZHussain@touchstone.com.pk', NULL, '$2y$10$SSgsYb2q.UDy0rHtEm.IwO0R5X3uT0Cqmz4t6Uhtk0NB71KTVKENa', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:41'),
(66, 14, 2196, 46, 47, 'QASIM HUSSAIN', 'qhussain@touchstone.com.pk', NULL, '$2y$10$jq4hjEtaxiedgLTLiqSIjef3BJkURURnSPx4ifICq7FioAymaw95m', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:41'),
(67, 3, 2198, 55, 2054, 'MUHAMMAD ALI SHAH', 'mas@touchstone.com.pk', NULL, '$2y$10$YPfeU2UhDJSH/SpT0h4X8eFV2V0Xv5WRky7cG0CZ0AJ2n5FLVea6C', 1, NULL, NULL, '2021-11-18 22:58:56', '2021-11-19 00:39:41'),
(68, 16, 2243, 11, 12, 'SYED ALI RAZA', 'asz@touchstone.com.pk', NULL, '$2y$10$pOLlF.084rHET6COIeCHk.902QOZqbeUppI33tafPDnEVjs6/2R/a', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(69, 3, 2244, 46, 47, 'USMAN HABIB', 'uhabib@touchstone.com.pk', NULL, '$2y$10$Qiu971z3kwYibEokW6maG.nyGvobLxSfhwdCG2evSf7oU.6Iy0W3S', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(70, 2, 2257, 11, 12, 'MUHAMMAD ALI', 'mast@touchstone.com.pk', NULL, '$2y$10$v3euq3G3Cm9VosLCKHPnXeaFIUnw/qwnuBaTDgYz8OSlD0/o1X6wu', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(71, 2, 2289, 11, 12, 'RAJA SAMI UL HAQ SATTI', 'rsatti@touchstone.com.pk', NULL, '$2y$10$MS9NC7zBmf8yl0PSX84JxeSjghVSWoHHMHEGjnY0AhfTCZEyaoUGe', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(72, 2, 2290, 11, 12, 'ZOHAIB TARIQ MINHAS', 'ztminhas@touchstone.com.pk', NULL, '$2y$10$w.7aaTAs5awchVCHngksA.RRDCH60HKcc.CI8E2GupeqfzmeS63h.', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(73, 2, 2292, 11, 12, 'FARHAN SIDDIQI', 'fsiddiqi@touchstone.com.pk', NULL, '$2y$10$UL76ChIN2pcQAe0HBCjMw.iYhWUGJqq3k3.3AUfYtpasZFCmL1gMm', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(74, 2, 2296, 11, 12, 'MUHAMMAD NOUMAN FAROOQ', 'mnfarooq@touchstone.com.pk', NULL, '$2y$10$AaSVi4drIxScWjO4It527OLFUt5Ib.Hc7r0cVnFKqEHuk.J3KVHtG', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(75, 2, 2301, 11, 12, 'SYED FAISAL LIAQAT', 'fliaqat@touchstone.com.pk', NULL, '$2y$10$JCjU3obPhzLzvJT99mYzUuPz85.0XeC4yrakiDMO1q2agQ1Hd.orq', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:41'),
(76, 2, 2313, 11, 12, 'RAJA OMER KHAYYAM', 'rok@touchstone.com.pk', NULL, '$2y$10$dzXKwqBCuEWU.fpURwMhn.dqzIF.3e6.9Cxb.NX1xCGQHZsXGeTZG', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:42'),
(77, 2, 2315, 11, 12, 'HAMMAD AHMED HAFEEZ', 'has@touchstone.com.pk', NULL, '$2y$10$7MXzg/qDU51bj.LCyUmtD.cv/UO90TrDWsDdX5thbCWZvaUW05J0K', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:42'),
(78, 2, 2323, 11, 12, 'SYED ALI HASSAN', 'sal@touchstone.com.pk', NULL, '$2y$10$biJlTvX.zXc4TqgRXpBwyugGuhuNhNWEw5IpIFvPmHElbVJCMu9Qi', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:42'),
(79, 2, 2325, 11, 12, 'SYED INTASHAM ANWAR', 'sia@touchstone.com.pk', NULL, '$2y$10$A3UdQre5PgL8k.TGIKvs1OCT4G7Yu8RY3/Sy2B2Tr.V5XVp.ydKsa', 1, NULL, NULL, '2021-11-18 22:58:57', '2021-11-19 00:39:42'),
(80, 2, 2340, 11, 12, 'KAMRAN KHALID', 'kha@touchstone.com.pk', NULL, '$2y$10$9bZ5s5feVsBIXJMo0iAR1OUjX4G1N/aeYj0UBaf8SOG6LAvg5z7km', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(81, 2, 2341, 11, 12, 'MUHAMMAD WASEEM', 'mwsa@touchstone.com.pk', NULL, '$2y$10$3f1vkA5cV1UyIBqIvLVduehLhJjc/a9pJUKL4etQe8g7hHJGxRdca', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(82, 2, 2348, 11, 12, 'HAQ NAWAZ', 'hnw@touchstone.com.pk', NULL, '$2y$10$9qAbdWBWbfhdPEe65gu28uqIC0ymQNvry3tnI1qX9UekTncHrZ2Te', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(83, 2, 2370, 11, 12, 'SANAM SHAHZAD', 'ssh@touchstone.com.pk', NULL, '$2y$10$CXXKwWlzmeFnr/ZAQYhA6O0ZERslJuyyntUbGhLKkvUhqYV7Ue.h6', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(84, 2, 2375, 11, 12, 'ZEESHAN MUKHTAR', 'zmk@touchstone.com.pk', NULL, '$2y$10$YWULD6pMoc3kRx.3Gof2.efy35t8RSZg/YaFZx/xcbYIoq6oDDAMW', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(85, 2, 2377, 11, 12, 'MUHAMMAD MUNEER ABBASI', 'mma@touchstone.com.pk', NULL, '$2y$10$g4A3ngrKTKspYBN8..zFoe8FlL13LuPH45SxuqhoGrRh.89LPznii', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(86, 3, 2390, 46, 47, 'KAYNAT AKHTER', 'kakhter@touchstone.com.pk', NULL, '$2y$10$Y5u7Rmp4O5lrc5oQXi1cWu4pqUU7T9d4d1kI0B2YIBMPkOr6br4KC', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(87, 3, 2391, 55, 2054, 'DANYAL MANSOOR', 'dms@touchstone.com.pk', NULL, '$2y$10$uhqR8Tx0j0PjQDipYY24rOsMtLCzNZHSCrxuRbdNJI5CKyTh4g8na', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(88, 2, 2426, 11, 12, 'ATIF GILL ', 'agl@touchstone.com.pk', NULL, '$2y$10$8i1bT2i0AzaOfFzwNpemoeO8f4aQSGe5/r.R28n.g2scAWHh8sLSS', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:42'),
(89, 75, 2439, 11, 12, 'FARJAD KHAN', 'frk@touchstone.com.pk', NULL, '$2y$10$X2YHDjDUA1bHz2FQkqCmbeP0NhjttBQP7dcd/Bi0dOk/0ddhk2Qou', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:43'),
(90, 16, 2463, 11, 12, 'MALIK USMAN', 'mlk@touchstone.com.pk', NULL, '$2y$10$HkZYT.1hbfTbTiQ7QmSS1u0u2J4QBb7DZ.tAc2BxaIyC8YOQPYS/u', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:43'),
(91, 38, 2471, 11, 12, 'MALIK IMRAN ULLAH', 'immalik@touchstone.com.pk', NULL, '$2y$10$fVKdZeOnHMfKQz4G5VTwyeXuyFj8RFjcrPU32ghiLPEHG9i6jRysa', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:43'),
(92, 2, 2495, 11, 12, 'NAVEED E SAHAR', 'nvds@touchstone.com.pk', NULL, '$2y$10$WzW44obRgHRD4FvwNTipcOaDY/Tv7UHt5esHbpfJ49sevG33TDhRC', 1, NULL, NULL, '2021-11-18 22:58:58', '2021-11-19 00:39:43'),
(93, 2, 2499, 11, 12, 'AQSA ANUM', 'aqsq@touchstone.com.pk', NULL, '$2y$10$d.YgFVsH3fvLgGrO6cn5DuEYnIk4YiFWbqCjSBvvx3GkmWCzx9NqC', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(94, NULL, 2511, 11, 12, 'UDESH DELADIA', 'udsh@touchstone.com.pk', NULL, '$2y$10$63i.Bqw9y3rz0hY/Em11QehLB6Q3uTfKqRg3L9oWVmbZzZbM3gh7S', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(95, 2, 2554, 11, 12, 'SOHAIL EJAZ', 'she@touchstone.com.pk', NULL, '$2y$10$Y9zVyuxaZlOT/TL7Kqysu./PUOa4cjSY2bTbgGgr1ShAo3U.dUO5.', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(96, 2, 2555, 11, 12, 'MUHAMMAD  FAIZAN', 'mhfz@touchstone.com.pk', NULL, '$2y$10$DfcgkT01uzelF/ThQugE.eLIOVTJGUo3WzCm8n2Umh9fP9AJYZMn.', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(97, 2, 2556, 11, 12, 'SHADAB SHAH', 'shadabsh@touchstone.com.pk', NULL, '$2y$10$VM/bN4.jiYjLnNpQM1c3Ou7.kWvDfnwcOwYrO9QEvbcpBp2giP9W2', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(98, 3, 2606, 1, 2, 'QUSAIN AZIZ', 'qsnaz@touchstone.com.pk', NULL, '$2y$10$VyH.u3z7nMx9BkvYIryCjONCtJtQpah1w2AVUVwFl4X.JJxaUBpvW', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(99, 16, 2633, 11, 12, 'RAHIM ALI NOOR', 'rahimno@touchstone.com.pk', NULL, '$2y$10$pu.T2WaNkYJ.aS71LukWUuMTgVF.YOQ7/DKKd6vlo6U1BnM2Wut92', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(100, 16, 2646, 11, 12, 'SUNIL KAFEEL', 'skafeel@touchstone.com.pk', NULL, '$2y$10$zGBMWzRsYdYZnGVR7h1PWOg7UP.hdhRNS1vH8/8wA2DX.4rGgBG7y', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(101, 3, 2658, 14, 15, 'SHAGUFTA ABDULLAH', 'sabdullah@touchstone.com.pk', NULL, '$2y$10$wIwFp0pn35YvdlzX3jhu/uObmOrY0YKdw88hAYVeb6xH4gGgwzYh6', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:43'),
(102, 3, 2674, 1, 2, 'SYED MUHAMMAD AHMAD NAQVI ', 'sanaqvi@touchstone.com.pk', NULL, '$2y$10$DQZCHBJ.e3j.xb5ATEsho.A1MxofD8XN6Kyuhhs7rpk030FEVb0ji', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:44'),
(103, 3, 2744, 39, 40, 'MASSAWAR HANIF SAHABYAL', 'mhsahabyal@touchstone.com.pk', NULL, '$2y$10$ZB6Fsq6V61gM9p/axqf1GOJIHtlwLLGZaoYELlKmvQwxWkb.tnUjy', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:44'),
(104, 2, 2776, 11, 12, 'AMEER HAMZA JR.', 'hamzakhalil10@gmail.com', NULL, '$2y$10$4CTnOql6LcPeRjS3.zUN5e26saMOjio7dtScj7OlymKwa9AJgQebu', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:44'),
(105, 2, 2779, 11, 12, 'SHAHID MEHMOOD', 'smmehmood@touchstone.com.pk', NULL, '$2y$10$aDeZc3Smequ9pmHv7DJ3d.MzH1N5d/ZNETGtPtK3C94VbRaRvvSOG', 1, NULL, NULL, '2021-11-18 22:58:59', '2021-11-19 00:39:44'),
(106, 2, 2780, 11, 12, 'ELISHA ASAPH AWAN', 'easaph@touchstone.com.pk', NULL, '$2y$10$XNYRWBvkd2M2mnmSTmI/8.fs.8IHvuWdysfE7eW2/gozrdY5tKJAW', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(107, 2, 2785, 11, 12, 'ADIL MAJEED', 'amajeed@touchstone.com.pk', NULL, '$2y$10$VseUSPOb187.nPJSEkPOV.j6FDqrFvChHaEG4Fpae5qSKThzZhAs6', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(108, 2, 2801, 11, 12, 'AIMEN NASEER', 'anaseer@touchstone.com.pk', NULL, '$2y$10$a5nO4a8hnCbzQDWRIv3shOlIf.jsX5YvmtIFko.xs1FpKd8FBO6Ay', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(109, 3, 2811, 46, 47, 'AIZA KHAN ', 'aikhan@touchstone.com.pk', NULL, '$2y$10$uPIsstk.nPtFODCNTRe4L.KX0IRhP42WPtqjaHuvBQI3yUtO4LNAG', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(110, 2, 2815, 11, 12, 'HASEEB AHMED', 'hahmed@touchstone.com.pk', NULL, '$2y$10$00TfLhsr6eakOhTf3W6j6e.4Oy3SEul19M44RlStN595OuTc44c9e', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(111, 27, 2848, 11, 12, 'TABITHA SOMMER ALBERT', 'tsalbert@touchstone.com.pk', NULL, '$2y$10$Sa60nSh4f9bvi9UzMq.WveUesIA9Ers.k559dnwSkeSkW3Bd.HilC', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(112, 71, 2858, 11, 12, 'MUHAMMAD NAUMAN', 'mnauman@touchstone.com.pk', NULL, '$2y$10$39djj.5IeB7uX54fZF8.0eyJi41zUWTHNpHwgg9mXs4BIFUbfWRzq', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(113, 3, 2884, 1, 2, 'SYED SHAHAB KAZMI', 'sskazmi@touchstone.com.pk', NULL, '$2y$10$w6wW9wVRE/VpBSGq2i3GO.PIF.IPmRN2yLPxgAC/7dowwt8K3/HbO', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(114, 2, 2895, 11, 12, 'ASHIR BHATTI', 'abhatti@touchstone.com.pk', NULL, '$2y$10$0vvj6XqblMzS5YrByS92BOPLnJAEIl0waVe24d1U6F3746SrZ74Hi', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:44'),
(115, 3, 2928, 46, 47, 'NAEEM HUSSAIN', 'nhussain@touchstone.com.pk', NULL, '$2y$10$ZjIJUhmiZcrxgzyJq4ozk.mxk9Hu9tgSNOPd5tRpQWBKGbhAMXmJe', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:45'),
(116, 16, 2933, 11, 12, 'SHAROON GILL', 'sgill@touchsone.com.pk', NULL, '$2y$10$0cdf7/Nwa2Wdw7iXbKgx1.68jBM4VVRucSd7vI67078JSpMNmrNv.', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:45'),
(117, 75, 2943, 11, 12, 'AHMER AFLAK CHEEMA', 'acheema@touchstone.com.pk', NULL, '$2y$10$BsrG7i6fcoNZ1o8oLeUEzuu7J9D0pV96jRtbQjM8Wert2npzTpeyy', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:45'),
(118, 29, 2970, 30, 31, 'SEAN STEVENS', 'SEAN@touchstonebpo.com', NULL, '$2y$10$0CITZ2LyRr3bgQIYFLjqEOX.sJx4FCJdfhZnfhcv/NO8jbSsAFtmK', 1, NULL, NULL, '2021-11-18 22:59:00', '2021-11-19 00:39:45'),
(119, 27, 2986, 11, 12, 'MUHAMMAD AYAZ', 'mayaz@touchstone.com.pk', NULL, '$2y$10$Ae2XLznTPvfb2mYcCcX1WOH891.zZshvqUmmu4WSewQ2ukeybqITq', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(120, 3, 2990, 1, 2, 'YAWAR MEHBOOB', 'ymehboob@touchstone.com.pk', NULL, '$2y$10$KYqz./fDGdM6EVb8XkyJ1.K5ptFVs13l5Wc6LO8EvZkUretsenXpC', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(121, 39, 3029, 11, 12, 'SHANZAIB ABID', 'SHANZAIBABID9001@GMAIL.COM', NULL, '$2y$10$vYt1wrIzItLVnfZSZQcrfeZkvJdhHK0E6Ayj3MTPW/bwH0TI6nhVW', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(122, 2, 3053, 11, 12, 'MUHAMMAD MATEEN ZAHID', 'mzahid@touchstone.com.pk', NULL, '$2y$10$s7hmzIc3gWNXy3zdpnV3p.uafs0sFglSCIO.2bSo9wQjXL6IZJAfq', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(123, 2, 3056, 11, 12, 'SYED MOHIB ALI', 'smali@touchstone.com.pk', NULL, '$2y$10$M8XQtNx1Ys3idRhaNetCveWpL3IjTnuUIxJawinX10nSK655N/7rq', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(124, 27, 3071, 11, 12, 'NIMRA ALEEM', 'naleem@touchstone.com.pk', NULL, '$2y$10$uQZ1xISEKMzos6ElYex2m.E24FZC651DrTtzsysxocLNwweVeBQSG', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(125, 2, 3081, 11, 12, 'DANISH ALI', 'dali@touchstone.com.pk', NULL, '$2y$10$W4Aw5mDgStpW/RJX8pOM8uNQhdx5Q68uu03938CvqN3ZFqH2.4Cb2', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(126, 2, 3096, 11, 12, 'MUHAMMAD FAHAD AMJAD', 'famjad@touchstone.com.pk', NULL, '$2y$10$zN/2eWs6EtKTJ5rw33raTuVK2F4PLtVtjh0hTBTIkb5sXq2bPjphO', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:45'),
(127, 3, 3104, 46, 47, 'TALHA UR REHMAN', 'tarehman@touchstone.com.pk', NULL, '$2y$10$89BNJcxMux8CzBKtoS817.K/47g/LN576UyrZUiUle5z7ZHxPzge2', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:46'),
(128, 29, 11407, 30, 31, 'HomeFirstCA', 'test@gmail.com', NULL, '$2y$10$vq7kcLEKFofS5.D4Z3oNs.AcEJEwQn9h4R9xh0/3Wv3MwqYIlosDq', 0, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:40:31'),
(129, 78, 3148, 11, 12, 'RAVEED GILL', 'rvgill@touchstone.com.pk', NULL, '$2y$10$4oEaI3ZPZroB0YPUv9ZM9e1EU5x9AnTfXxe1O.yX.xpYyiEXrxjrK', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:46'),
(130, 39, 3153, 11, 12, 'RAPHAEL WYLIE	', 'raphaelwylie@hotmail.com', NULL, '$2y$10$VSBPD56GssOrFO7UfRbrkO.DW6VeiR9ZZ1psy4/afPKxHhXGnafxa', 1, NULL, NULL, '2021-11-18 22:59:01', '2021-11-19 00:39:46'),
(131, 2, 3157, 11, 12, 'AHMAD AWAIS ANSARI', 'aansari@touchstone.com.pk', NULL, '$2y$10$FmfrPpRBBKhLEaRmYBW8nOSGexLeVmEZ.qha06S7s10MVLQLB1bIy', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(132, 3, 3183, 30, 31, 'SUMIYA QURESHI', 'suqureshi@touchstone.com.pk', NULL, '$2y$10$lST7ERKWy2h1x40C7Evs4.EWW/GOHBnds1EHPfcuIgzuG7niUsHxe', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(133, 14, 3190, 53, 1053, 'FATIMA KHAN', 'fatima.khan@touchstone.com.pk', NULL, '$2y$10$UIYFyYx2xNbcSviMQRgXLeH43aYRqgTRoDaXc1sx5jWPrDZPtJvVO', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(134, 2, 3201, 11, 12, 'SYED NOMAN SHAH', 'sshah@touchstone.com.pk', NULL, '$2y$10$1ym29q7xQhL09sK5EQhkT.pZiX7RQ7CH2Jwp68RzVgCEdyJdVvkHu', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(135, 39, 3219, 11, 12, 'MUHAMMAD TALHA KHAN', 'mtkhan@touchstone.com.pk', NULL, '$2y$10$g9Cc82KaT5IJ0n3uGkr7X.R1jNVJWrq2Dh2Q6veclegEcQwjE1jYW', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(136, 14, 3231, 14, 15, 'ABBAS MOHIUDDIN', 'amohiuddin@touchstonebpo.com', NULL, '$2y$10$c.6fQYmol5Ix4XLRfv3eNODxauJtUIYyC2P3ru36pXVc1MbalqjKG', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(137, 3, 3232, 56, 2055, 'ALI HAMAYUN EASHAI', 'ahumayun@touchstonebpo.com', NULL, '$2y$10$pLK7j5f27CF//.bFqw/uMeKKSf0kncfUzc8O2xbvJBKQJNzhqpI6i', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:46'),
(138, 43, 3240, 11, 12, 'UMAR ZAIB SHOUKAT', 'ushoukat@touchstone.com.pk', NULL, '$2y$10$YBFs50P52CZsfWwVj2FqNOzwD/j3m2NHdkNIsTOZWLuOxu8iViITi', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:47'),
(139, 14, 3284, 30, 31, 'NASIR ALI', 'nali@touchstone.com.pk', NULL, '$2y$10$EVTd./HFX9PBVbUotSlNVOuQGc21j9mIb8FC99q5zHqjpFPFVwUea', 0, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:40:31'),
(140, 40, 3292, 11, 12, 'SHEIKH MOHAMMAD WALEED ', 'smwaleed@touchstone.com.pk', NULL, '$2y$10$ifC.4evy9I46BKUtiH3zLe3AkONRiGyeSUoXyEFuSDBQJd6pglqEe', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:47'),
(141, 44, 3308, 11, 12, 'SARDAR SHUMAIL AZEEM', 'sazeem@touchstone.com.pk', NULL, '$2y$10$UreTL5.tReLS/Zicg6S0hO.aMKVIRUDPCd/y3P1FyTNJz44Y1zDBy', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:47'),
(142, 71, 3310, 11, 12, 'ISMA MAZHAR', 'imazhar@touchstone.com.pk', NULL, '$2y$10$AziHz4GzHiWeG2cMVozFL.UJbM0DgbA1SFKxqYbTVn0TMfD3DBAA2', 1, NULL, NULL, '2021-11-18 22:59:02', '2021-11-19 00:39:47'),
(143, 29, 3311, 30, 31, 'SOLARCLIENT', 'SOLAR@GMAIL.COM', NULL, '$2y$10$GpTZn0cWCQO7P2NvNQTvwuK1TRLRmUQLc9VrJi3/XEQPvru8qmH.W', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:47'),
(144, 39, 3323, 11, 12, 'WAQAR MANZOOR KAYANI', 'wkayani@touchstone.com.pk', NULL, '$2y$10$H.f8hVvQytp5q0IAUl6FB.2RfZM0H3ntqQcFDVrvXBY24IJ899keq', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:47'),
(145, 40, 3335, 11, 12, 'ANEESA MAZHAR', 'anmazhar@touchstone.com.pk', NULL, '$2y$10$M84wylLuFs15rgIjVeFh3Od0HPb1qah6JZ8QS6Sq/uA0/xVymPtHa', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:47'),
(146, 16, 3349, 11, 12, 'ABDUL AZAM', 'aazam@touchstone.com.pk', NULL, '$2y$10$qT8XxhoVJzM.2zZ06Ngd8.6S1amV6v27Tia.LmOe7TEA04b93bQpa', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:47'),
(147, 40, 3387, 11, 12, 'MEHROZE GULRAIZ', 'mgulraiz@touchstone.com.pk', NULL, '$2y$10$QDRr6UkuGN.Tdh3S9Y2fs.u6HkzQnKvfN5pLIQlZuFYCCpioEBMbK', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:47'),
(148, 43, 3406, 11, 12, 'AMMAR SAJID', 'asajid@touchstone.com.pk', NULL, '$2y$10$PMFrWKz4jGLzajDoUF8IgeVcLeASmcWpzOhN2Bkp5HkLrcb3dWXlu', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:48'),
(149, 2, 3419, 11, 12, 'RAJA RAMEEZ ABBASI', 'rrabbasi@touchstone.com.pk', NULL, '$2y$10$QThs0gAR9ISLpqfH5WgbIeqpZZDhn8hcKx2Ago2fvynA5haFLRVj2', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:48'),
(150, 40, 3425, 11, 12, 'SHAYAN BABAR', 'sbabar@touchstone.com.pk', NULL, '$2y$10$x.sWUj2p75s154EgcfS/XemCiYKgFSeNeqLv9KxS0lD9O52l.Tsv2', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:48'),
(151, 2, 3438, 11, 12, 'UMER MASOOD KHAN', 'umkhan@touchstone.com.pk', NULL, '$2y$10$Po4VIB19zSFtINRdHpRZOOstwhk8nksddb1bZfeWuJn9RubKndo6a', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:48'),
(152, 39, 3465, 11, 12, 'JONATHAN SHAHID', 'jshahid@touchstone.com', NULL, '$2y$10$F1CY/mvDBZvj9rVgYiKHX.XHn9fRSeCKD9uEFBvaNXyKhKyFsR5MK', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:48'),
(153, 3, 3495, 46, 47, 'ABDULLAH ZUBAIR', 'azubair@touchstone.com.pk', NULL, '$2y$10$673Fl1qSWOIk5Tp4ZF8SHuZnhWdBMWsaqjCKUhuCym1lpgXRq09JG', 1, NULL, NULL, '2021-11-18 22:59:03', '2021-11-19 00:39:48'),
(154, 3, 3496, 46, 47, 'FASIH UR RAHMAN KHAN', 'frkhan@touchstone.com.pk', NULL, '$2y$10$wzAlxdgkUA1tc3qYT2bZQuRgF3d87rZSagFWkNCjaw2nIzu5QFimq', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(155, 3, 3497, 55, 2054, 'HASEEB UR REHMAN KHAN', 'hrkhan@touchstone.com.pk', NULL, '$2y$10$c.rAPdsPpMayqNsqc7QXJOTYpbrx5Bx14U..p2Llz3/tyJGnMBgUi', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(156, 2, 3508, 11, 12, 'WALEED IFTIKHAR', 'wiftikhar@touchstone.com.pk', NULL, '$2y$10$.lTOEAWpG5nYH2yQC4iia.3CC2VMNngz7vxuToFtwVRuU4zStsO1q', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(157, 2, 3510, 11, 12, 'ASIM AHMED PERVEZ', 'apervez@touchstone.com.pk', NULL, '$2y$10$ajLYrwCkBocpi35AzuNaFOkYi6QuXCRZWxAA4fg6EP0zMT13wYOJO', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(158, 74, 3512, 11, 12, 'MOHSIN ALI ASIF', 'moasif@touchstone.com.pk', NULL, '$2y$10$8cqIq2xL6cXPqWp9dyWa/OeX6U5mpYIk2tZta6GY9wwXu.UvYQwPu', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(159, 44, 3513, 11, 12, 'ALI RAZA', 'alich@touchstone.com.pk', NULL, '$2y$10$Upl/JoYjKj5cEyq6pkCYleSRXMSWcYXq7wseeMzI2abpr6o.HrkBm', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(160, 40, 3518, 11, 12, 'FAHAD YOUNIS', 'fyounis@touchstone.com.pk', NULL, '$2y$10$2HVS0KhJWV9pGYDj3nq9De4OnVFXpZZxV4xjYXkh./3URss3rRitW', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:48'),
(161, 44, 3579, 11, 12, 'UZAIR KHAN KHATTAK', 'ukhattak@touchstone.com.pk', NULL, '$2y$10$RPRMcsw2BU5kMoVo.t6grOfVmiPEskQFyZJRcrhwTzist6ZN.DLwe', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:49'),
(162, 2, 3604, 11, 12, 'SHOAIB SAEED', 'shsaeed@touchstone.com.pk', NULL, '$2y$10$K5u414kRZIiATLs8BMCareYwsfHlXi.J9h4PB5wsM4agxy2S5hLYq', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:49'),
(163, 45, 4626, 11, 12, 'SHAHZAIB KHAN', 'shzkhan@touchstone.com.pk', NULL, '$2y$10$BoloWZ5DULP9u3y0yzF/HugiYDAfawyREWQ7rh1VccwmK2M1Hb3qu', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:49'),
(164, 3, 4637, 55, 2054, 'SAQIB PARWAIZ', 'sparwaiz@touchstone.com.pk', NULL, '$2y$10$ZVlmC0b2eWycPVTZtKx80.TAivjxVVEmfeAekWhK1EMYe0UhQG4Le', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:49'),
(165, 27, 4640, 11, 12, 'RABBIA KHAN', 'rakhan@touchstone.com.pk', NULL, '$2y$10$o1xQqcuAT7xBoXPbue.RaOl/U.qvbQ3TCCBAKYpTM8PZfRsTA0X5e', 1, NULL, NULL, '2021-11-18 22:59:04', '2021-11-19 00:39:49'),
(166, 2, 4641, 11, 12, 'MUHAMMAD SHOAIB', 'mshoaib@touchstone.com.pk', NULL, '$2y$10$XJNZt7Le8APlYCleTmhTyOOz2.FvtT./V6Xj/KA9ypxePFc5p5CLO', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(167, 44, 4663, 11, 12, 'JALWA ALI', 'jalli@touchstone.com.pk', NULL, '$2y$10$jl8zVPoWdXCI1YzRwVOeXefhiMXnEUxFCUuCA6IduFSBZuIxdRDqu', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(168, 44, 4665, 11, 12, 'ZARAFSHAN ALI', 'zarali@touchstone.com.pk', NULL, '$2y$10$Ka7oQACob3RJbjej5eXN2unxEV0RXVlekZP63uP5eNHqAlGEwkyDS', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(169, 3, 4699, 46, 47, 'SUMREEN STEPHEN', 'sstephen@touchstone.com.pk', NULL, '$2y$10$icG6dpZ4Gv51xEk4MkXaD.HOHCgr3kjNPgW8GcGkxs6g0zIbaYjKq', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(170, 75, 4701, 11, 12, 'EHSAN UL HAQ', 'euhaq@touchstone.com.pk', NULL, '$2y$10$MRu6dFOKgpEw/5/0fuOMPOD2aSWyqIu4FFZSATBHJHNNpPIZO3uKe', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(171, 75, 4707, 11, 12, 'SHERWIN ROBINSON', 'srobinson@touchstone.com.pk', NULL, '$2y$10$fTnLZOT37qrnHMDDOOFCFO2F0u8wxqZmtQ3V7Vd2HPcP/VHCohbMy', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(172, 44, 4720, 11, 12, 'MUHAMMAD UMAR', 'muhumar@touchstone.com.pk', NULL, '$2y$10$l2SP6t/fvULkSmIpSRGIZu72slqtNpf6JfnSOrdUs4jg0/DdYTdjW', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:49'),
(173, 43, 4731, 11, 12, 'WAQAR SHAHID', 'wshahid@touchstone.cm.pk', NULL, '$2y$10$1gmHapWBirnyR2eizX6DyeJ5bh1fdycHGq3tDihiQ.FdEfM8JNegG', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:50'),
(174, 43, 4734, 11, 12, 'OBAID UR REHMAN', 'ourehman@touchstone.com.pk', NULL, '$2y$10$en3RrhOnsr01epqE1zYz/Obo25uwkmK3j.ZHBy4m9tuEmucUU1vyq', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:50'),
(175, 62, 4737, 11, 12, 'SAQIB WAHEED KHAN', 'sqawan@touchstone.com.pk', NULL, '$2y$10$.Bn7FrsIkWgRVUOpnabxpe4M8sA6Wn6grmySq8l0wWUFBzjeb534C', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:50'),
(176, 43, 4746, 11, 12, 'AWAIS HASSAN', 'awhassan@touchstone.com.pk', NULL, '$2y$10$N5kYG3k4SEPA8W5K4.9lIOq1A176gNvAA.o7SYHwFlujuyuzlZWba', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:50'),
(177, 1, 4750, 11, 12, 'SAJJAD PERVAIZ', 'spervaiz@touchstone.com.pk', NULL, '$2y$10$HpMBzCaa4/BH7fbXCEmcFedCb4V.0FrS58hpbYyHbL8TOOEqioVHC', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:50'),
(178, 16, 4752, 11, 12, 'MUHAMMAD SHOAIB', 'mushoaib@touchstone.com.pk', NULL, '$2y$10$4Tlo9Zf2axggXuh13pWvqOpFF1IxcRUrofFBcoXnE0z3fYwcDfeFe', 1, NULL, NULL, '2021-11-18 22:59:05', '2021-11-19 00:39:50'),
(179, 44, 4785, 11, 12, 'MUHAMMAD TAIMOOR', 'mtaimoor@touchstone.com.pk', NULL, '$2y$10$Sc708IpH8f9nKIBSwRPpiuJgfiSDtScrs24D6mpYEltliT0ym0z1K', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(180, 44, 4790, 11, 12, 'MUHAMMAD USAMA KHAN', 'usamakhan@touchstone.com.pk', NULL, '$2y$10$eeSN03EO3q12TE8iOODF5OcUMNj4MSpaAUSWqVdDvaIgXw9dhK39O', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(181, 40, 4798, 11, 12, 'JAWAD SARFARAZ', 'jsarfaraz@touchstone.com.pk', NULL, '$2y$10$MiQ.2yvfZe90gtZrYBDIheoMFyMfGBkuKp8ZGZVmdspt988KYJVe2', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(182, 40, 4803, 11, 12, ' QAISAR NAWAZ', 'qnawaz@touchstone.com.pk', NULL, '$2y$10$rr2OghHhEPqN34DeTFE1LOCBM2eIfhaCGpaClTT6FwHnqcE0Bx.XS', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(183, 44, 4807, 11, 12, 'ABDUL QAYYUM', 'abqayyum@touchstone.com.pk', NULL, '$2y$10$J567FlnYtBsdIwZ3eNUZhezTI8ZbNgen1SwmAU02b6uJKw.G8/g3.', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(184, 44, 4810, 11, 12, 'ROHAIL HASSAN AKHTAR', 'rhakhtar@touchstone.com.pk', NULL, '$2y$10$5HChOYnjyvq8A7MYGp5v3OTeLTmSjBbHnphMSNW2FTxWBAXw8Z7TW', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(185, 75, 4814, 11, 12, 'ZAYAN NOOR', 'znoor@touchstone.com.pk', NULL, '$2y$10$r01g7CvlucQpqBAp0fix9.m0ccT9LzmBXkYR6ypgcxKo9zM57xY4K', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:50'),
(186, 44, 4821, 11, 12, 'AHMAD NOOR', 'anoor@touchstone.com.pk', NULL, '$2y$10$3HDv3C5peJyU6QoVJXFvQ.7/xzIiCg0FszIUIsdfm1wNjKqJrdeva', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:51'),
(187, 2, 4823, 11, 12, 'KANZIC JOHN', 'kjohn@touchstone.com.pk', NULL, '$2y$10$bFh7wfR2sWUOmCZmcIdmp.Kjng80kqahAGVVyyfUQpbYyIBYr0pDG', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:51'),
(188, 44, 4840, 11, 12, 'OMER FARID', 'ofarid@touchstone.com.pk', NULL, '$2y$10$Ve50h0WKxy.eRPoXbKDnxO5qYXDGBLUJ8s0LAZ5.twtwOL3GqB.MW', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:51'),
(189, 16, 4864, 11, 12, 'MUHAMMAD ARSHAD', 'marshad@touchstone.com.pk', NULL, '$2y$10$POUdB1xoUcIFcht8uDub7ufZEEA6tBU8Z5MqBZr5.2eTILAurp.oS', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:51'),
(190, 43, 4881, 11, 12, 'RIDA KHAN', 'ridakhan@touchstone.com.pk', NULL, '$2y$10$.aP83./YIUv6UVx0Cvq26u4uD.Gso6V5EmjqPxKOSWW0.E0tDoZw.', 1, NULL, NULL, '2021-11-18 22:59:06', '2021-11-19 00:39:51'),
(191, 43, 4883, 11, 12, 'REHAN ABBASI', 'rabbasi@touchstone.com.pk', NULL, '$2y$10$kYMXqZrw9MYeX7FD/rEW4OvWF11hbIL6GFDEBDvoRSEqSesWUH8mm', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:51'),
(192, 40, 5890, 11, 12, 'QASIM ANWAR ABBASI', 'qaabbasi@touchstone.com.pk', NULL, '$2y$10$A2aoUkUfVjBN32iKT292Re6y0aDksBpAolFaUK1SVNSMu7aSyo0f2', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:51'),
(193, 40, 5893, 11, 12, 'MUHAMMAD ALI', 'muhammadalii@touchstone.com.pk', NULL, '$2y$10$T1R9wwWTiY75lj2nNL1Vo.Y.t/.R34fWrXVAhOL0n.B40CzhLseTu', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:51'),
(194, 2, 5898, 11, 12, 'JERSHUEM JERRY', 'jjerry@touchstone.com.pk', NULL, '$2y$10$5V2eEJ3o0sDNsCxjDzfEP.VRqgdbTDBFW/jcs1gO8vXY/Jc7BCNWG', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:51'),
(195, 2, 5905, 11, 12, 'SHAHRUKH KHAN', 'shahrukhkhan@touchstone.com.pk', NULL, '$2y$10$yqawzuo2sDIG.sIErq.KKeTQsmtst8FnH9khaU8aF7/OP2TJsIMRq', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:51'),
(196, 2, 5906, 11, 12, 'HARIS ELAHI MIR', 'hmir@touchstone.com.pk', NULL, '$2y$10$lREZ6wsOmV1jI.uuvzWDAeS3yELsQYpmB31dDw2PLMubU.DumRLA.', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:51'),
(197, 2, 5916, 11, 12, 'PETER LAWRENCE', 'Plawrence@touchstone.com.pk', NULL, '$2y$10$WkKZwQABWjTCw16GZegQQOUIQGBlwDZcCHNr5lLuJT04a9Z0LhFou', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(198, 43, 5919, 11, 12, 'MUHAMMAD TALHA', 'mutalha@touchstone.com.pk', NULL, '$2y$10$9PXCUWhBMR38ProrVfUS5.rFNwrXLSEujLOTM.3L6iYCRhU0taT62', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(199, 43, 5923, 11, 12, 'SYED EHTESHAM HUSSAIN', 'sehussain@touchstone.com.pk', NULL, '$2y$10$ImyeThNRj0wu7WPQdSpxt.zEZT8Kw0qX0sc9nouUmKOaMtQgKY2x.', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(200, 16, 5931, 11, 12, 'OMAIR MUKHTAR', 'omukhtar@touchstone.com.pk', NULL, '$2y$10$iB9I3Rq1hhBpLp5oxa69O.6KuZYbDEqR1KmYoFyH5qKgfCySQydQu', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(201, 40, 5942, 11, 12, 'DANIEL RAZZAQ', 'drazzaq@touchstone.com.pk', NULL, '$2y$10$Yum4n00JGXrA8MgZ6HQjKey6079zYp4wvjv1Evla5y5ALWgn7/pVm', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(202, 27, 5946, 11, 12, 'RIDA ANWAR', 'ranwar@touchstone.com.pk', NULL, '$2y$10$uwgrTbLoR/2fqTsKsh2BMeW9Le4jLOeA1NJGV4w.Cheu2/EeVW6VK', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(203, 29, 5965, 30, 31, 'Solar Genesis', 'solarnv@touchstone.com', NULL, '$2y$10$FW5SDltGTZQj9KD9WgzLG.A/A4LB0CsnhAGGeiB/eSfPweHdIrtW2', 1, NULL, NULL, '2021-11-18 22:59:07', '2021-11-19 00:39:52'),
(204, 27, 5972, 11, 12, 'AMMARA BRAIKHNA', 'abraikhna@touchstone.com.pk', NULL, '$2y$10$zQEYcdZ2KbdOJEDmry6jsuToUjTAN/kZzPDvvaqnH6OukRP/rIzs6', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:52'),
(205, 43, 5981, 11, 12, 'MUHAMMAD BIN QASIM', 'mbqasim@touchstone.com.pk', NULL, '$2y$10$dVPyYVvd2nc9trsHZ7RpvuQR4f9Lf9xpw/cMY5vV8Wr/o2Ff0eAsO', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:52'),
(206, 44, 5990, 11, 12, 'DANISH SHAHID', 'dshahid@touchstone.com.pk', NULL, '$2y$10$l5quxM9BZxnkgG5/hbAwu.gO7RYTLenEsX1652wjzDHvtK/GApMYi', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:52'),
(207, 44, 7015, 11, 12, 'IQRA ILYAS', 'iqilyas@touchstone.com.pk', NULL, '$2y$10$mjYz1NhhY4dDV5s251zg9ey2hQj4IiZF50EZcn.z5Z83AYLZD7DCm', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:52'),
(208, 44, 7038, 11, 12, 'NAILA AKRAM', 'naakram@touchstone.com.pk', NULL, '$2y$10$LKZJ0riYeZQ3ndTdTSbLyO5eH9qOJJDy923TImq6WOFUZXQS2eZ1u', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:52'),
(209, 44, 7046, 11, 12, 'BISMA ANWAR', 'banwar@touchstone.com.pk', NULL, '$2y$10$HQ8yUj.4jJxWYjO8/g8LlO8.y8cZ5p2AOTWQ7COPTAuS1VQDAUh1q', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(210, 2, 7048, 11, 12, 'MUHAMMAD DAOUD BAIG', 'dbaig@touchstone.com.pk', NULL, '$2y$10$hfA851IcVOO5YK28pbbZrOCXGGj7O9evyaq3VdVPf.9deVVeBCul6', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(211, 16, 7053, 11, 12, 'SYED HAMAAD UL HASSAN SHAH', 'hahashah@touchstone.com.pk', NULL, '$2y$10$ifaPdJe7NY6z5ClHUZS5ceOBVhGXoc7XR9Diz1poDBRoLu1K5Irzm', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(212, 43, 7056, 11, 12, 'MUHAMMAD USMAN', 'muhausman@touchstone.com.pk', NULL, '$2y$10$ePF7DKQKibso2WoDouT8sOA3KL0rZUPfVWb3FH2r.OCemsuLE5BxW', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(213, 29, 7057, 30, 31, 'Cody Henderson ', 'cody@touchstonebpo.com', NULL, '$2y$10$FLWqPapbpqndKhThG2I.7eqUcNUJ9F4j2IhT0nHCzY0RuoQS.NJSa', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(214, 2, 7059, 11, 12, 'ABDUL MOIEZ MEHMOOD', 'ammehmood@touchstone.com.pk', NULL, '$2y$10$8m.LSHg15pOFlUE4xdymV.wTXw1GWwuRtBc5RTcjxypEAqnXBVcXS', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(215, 2, 7061, 11, 12, 'SOHAIL AHMAD', 'sohailah@touchstone.com.pk', NULL, '$2y$10$YCrrqA9LWGEAih5ftxaZr.w7eCoQ13t3kfJ9PmQTs.zBlzUfDTyUe', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(216, 2, 7062, 11, 12, 'USMAN SHAFIQUE SATTI', 'usatti@touchstone.com.pk', NULL, '$2y$10$WBnFLyHgTS6/Y.yWtybQQ.cWPD1ouvy5HZIg/n8pn1y36J4Vl9iRm', 1, NULL, NULL, '2021-11-18 22:59:08', '2021-11-19 00:39:53'),
(217, 29, 7075, 30, 31, 'Raymond Wilson', 'RaymondWilson@gmail.com', NULL, '$2y$10$Vjwgf2JnjaB/5yA8GfFVWOcqXboBFJ4AjKTe.ye7Ei7pAU0QPU9a2', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:53'),
(218, 29, 7077, 30, 31, 'Jay Roldan (Spanish)', 'JayRoldan@gmail.com', NULL, '$2y$10$L46SzGJzI7/DD2n/6vxw4uGRgstcbK8rg2v9kb7.iJw43j8ij3WIq', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:53'),
(219, 29, 7081, 30, 31, 'Albert Valenzuela (Spanish)', 'PeterMazzola@gmail.com', NULL, '$2y$10$jFupCfF2leq3fg6ToeSgS.PvTzOsrgs7m6Jot.qOOKOKZ59.qLRku', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(220, 29, 7083, 30, 31, 'Aleksandr Baranov', 'AleksandrBaranov@gmail.com', NULL, '$2y$10$aYHz.UNQCs9HHXGXWP5KmOZIWcqMdaDi4B9nDkG50w.z2vb4sPZoy', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(221, 2, 7085, 11, 12, 'FARHAN HAMAYUN', 'fhamayun@touchstone.com.pk', NULL, '$2y$10$ZQHgS2vsDM5DlbUToyW/zuQv8wSVAxwQMA9NcjHbfOK0gQKO0BVhG', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(222, 2, 7124, 11, 12, 'NABEEL AHMED QURESHI', 'Nqureshi@touchstone.com.pk', NULL, '$2y$10$pUzFZ3h83Pzg1i7xbPfrXuUjRFHP9kLGMTJ7HPx5fFbNeobGwvlLa', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(223, 2, 7129, 11, 12, 'SHARJEEL SHAKEEL', 'sashakeel@touchstone.com.pk', NULL, '$2y$10$uUUNzkQYhRlyezjLb.YVqOpZsyHBh5hBkMBhiTDlmUDeXiNnmg2c.', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(224, 44, 7131, 11, 12, 'MUHAMMAD AQEEL', 'muaqeel@touchstone.com.pk', NULL, '$2y$10$/wqxbs7seXpOL7h9f5a.luI7H6wOcV8ubt8VhuPUHli4k.IpImZ7G', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(225, 44, 7135, 11, 12, 'MUHAMMAD ALI', 'muuali@touchstone.com.pk', NULL, '$2y$10$zPQavl.GsJovh0M5IXhXyOot5xmC6wv7MndFu79sG.g8KyYk8aBje', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(226, 2, 7138, 11, 12, 'MOHSIN IQBAL', 'mohiqbal@touchstone.com.pk', NULL, '$2y$10$6pyEvA5sbe0Kw7V8cmryX.vU85vUs4NHhfjmYR0WPHqMLthyI98pq', 1, NULL, NULL, '2021-11-18 22:59:09', '2021-11-19 00:39:54'),
(227, 44, 7146, 11, 12, 'HAMZA MUNEEB KHOSA', 'hkhosa@touchstone.com.pk', NULL, '$2y$10$3EanuHS4Lq9j5ZiFEgwwZ.dlBahhbL8metcs62YEXNuhogVL4gH0C', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:54'),
(228, 44, 7158, 11, 12, 'JAZIB', 'jazib@touchstone.com.pk', NULL, '$2y$10$pb5CF828qclMx1H42vI8te9vRgF8AvHIp/yhOEP5djDL141ezz1ea', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:54'),
(229, 44, 7161, 11, 12, 'MUHAMMAD YOUSUF', 'myousuf@touchstone.com.pk', NULL, '$2y$10$5kI0yAj7I/MzIUelsAw4OOuwQylWeguDnsIaNVNPCvCjKfIoMpoBe', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:54'),
(230, 75, 7172, 11, 12, 'MANAL AMIR', 'mamir@touchstone.com.pk', NULL, '$2y$10$H3QMUCMHsFyj1LDXl5ITQe1IAEaa8BVzYNEb.OlUDX5TeLDE1EaHC', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:54'),
(231, 40, 7181, 11, 12, 'MUHAMMAD SALEEM', 'msaleem@touchstone.com.pk', NULL, '$2y$10$BthbBipcyv4S507YVpPmK.fuUnW8TnMF5A8M/CRbNKytMSqPQZAU6', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(232, 27, 7191, 11, 12, 'HASSAN RAZA HASHMI', 'hrhashmi@touchstone.com.pk', NULL, '$2y$10$X0/UDsIUtj6seVvqONQt1.JySGxfMWq6WJnpgNy1WygheGbxEv.4i', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(233, 44, 7196, 11, 12, 'TEHSEEN KHAN', 'tehseenkhan@touchstone.com.pk', NULL, '$2y$10$2yU8MAygU4OBLhixk.9PZeEmVNzshIT2htujDYtNlNsEL0ywbVjQu', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(234, 44, 7204, 11, 12, 'AFSHEEN ROBIN', 'arobin@touchstone.com.pk', NULL, '$2y$10$okSgRfVLkXlOQIXcbxzjLuQGiO/ahlII.N3hVKI7Q/CgtZDrnpO..', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(235, 2, 7211, 11, 12, 'CH M UZAIR RIZWAN', 'urizwan@touchstone.com.pk', NULL, '$2y$10$7v2BTPwN0oATZV8aHSWP8u4YamcFy5tx1Q7OaegXtBVwDhqYVp6Zu', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(236, 2, 7223, 11, 12, 'ARSLAN TAHIR', 'artahir@touchstone.com.pk', NULL, '$2y$10$eCUGiyvaafgGgUGTV787peFlgsd9gX1rc6zAhk3I8Z0BTlmv06GYu', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(237, 44, 8242, 11, 12, 'SALMAN IQBAL', 'saliqbal@touchstone.com.pk', NULL, '$2y$10$MrizYwqXn4AmUMWcEbCWgOiXP/EG1.VBWzu3WKgjtvDv0uiU3cXdq', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(238, 44, 8258, 11, 12, 'SHEHERYAR UMAR', 'sumar@touchstone.com.pk', NULL, '$2y$10$zM4fFLzcTYqk4IuFqBx1Weh1PfgnXfZepMZTZ0VWJwPd9XhrnM1tS', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(239, 44, 8259, 11, 12, 'IKRAM UR REHMAN', 'irehman@toucstone.com.pk', NULL, '$2y$10$4v5w9TSadPXsCB.c9OAKDu55gBYQs0IMJ79xqKWO6eoUHsBtWMybi', 1, NULL, NULL, '2021-11-18 22:59:10', '2021-11-19 00:39:55'),
(240, 40, 8263, 11, 12, 'ANGEL DAVID', 'angeldavidgs55@gmail.com', NULL, '$2y$10$SlTcLiDdk.jd1WhlOR6uSuHrTd22E.B7/nM0SR2PHicIOoHvR9w2y', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:55'),
(241, 44, 8265, 11, 12, 'ABDULLAH ZAFAR', 'azafar@touchstone.com.pk', NULL, '$2y$10$l79Xd728uGPwCGIteYtQmuzv7b1sBBniQLf6tKtoaK3ThWjg0IkLK', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:55'),
(242, 40, 8271, 11, 12, 'MAKHDOOM MUSTAFA SHAH', 'makhshah@touchstone.com.pk', NULL, '$2y$10$d3B0tDINlxOXKHVf/8n9PO1rXMFhjK0XgSHV5UlkYfYoMyvllh2TC', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:55'),
(243, 74, 8276, 11, 12, 'SYEDA TAFSEER ZEHRA', 'tzehra@touchstone.com.pk', NULL, '$2y$10$X8lsFp65p4aPOMvkYVQtROeYuXXeuT5O/.kcm.PHQI7.ra2WtA/.a', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:55'),
(244, 43, 9281, 11, 12, 'MUNEEB NAWAZ', 'mnawaz@touchstone.com.pk', NULL, '$2y$10$MGxpTExTnhwdlho6rE3Mk.JLnO4r98Yvfc/w.ITRG88q/Y7yYlAou', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(245, 43, 9282, 11, 12, 'ALI MUNAWAR', 'amunawar@touchstone.com.pk', NULL, '$2y$10$MWrsx/68SYwq68TubdMpz.KokxUFJwVcLF/iEA.szYmefjh/dt49e', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(246, 43, 9283, 11, 12, 'ALI AHMED KHAN', 'ahkhan@touchstone.com.pk', NULL, '$2y$10$CfQL07VR2B4XQtXPvXwPm.JiLQgNG9AM9pkawACSd4oC/V.rZ4ibm', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(247, 43, 9284, 11, 12, 'HAIDER RAZA', 'hdraza@touchstone.com.pk', NULL, '$2y$10$W8KzBNelxJAXeOauGu9gmOD5yQWTxhuIBP8AydczNUXHt/tr0Nk4i', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(248, 27, 9286, 11, 12, 'HAFSA AAMIR', 'haamir@touchstone.com.pk', NULL, '$2y$10$HXbcfG1bM3/kexGC35sGA.saL5rinj/8.JQgKX/X9z/T/FeSFDZVS', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(249, 39, 9287, 11, 12, 'SYED MUHAMMAD ABDULLAH SAFDAR', 's.abdullah.safdar@gmail.com', NULL, '$2y$10$zXKmmCiMMVLWNt5ZmRVxS.qskmcO.JjUcwOYsAMTtoi2GDKuUo4Ye', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56');
INSERT INTO `users` (`id`, `campaign_id`, `hrms_id`, `designation_id`, `hrms_designation_id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(250, 74, 9294, 11, 12, 'HIRA RAZZAQ', 'hirazzaq@touchstone.com.pk', NULL, '$2y$10$f7cWtoigcN02miBW3YQzs.LACVm0fP/HzSJev81qX6KFMmGJAgGWm', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(251, 3, 9297, 46, 47, 'ABDUL MANNAN', 'abmannan@touchstone.com.pk', NULL, '$2y$10$oIMpWyIZDG2qRAqGnNlMae1rvmjwfJSVqM4QqvT6aU1d7fvbMWZIW', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(252, 40, 10300, 11, 12, 'SHAHZAD', 'shahzad@touchstone.com.pk', NULL, '$2y$10$Gk5Yv0ubUz7rM3Bh60hAcORLL/5CYGzfz.DGTsVFcHsKafgtLyHxy', 1, NULL, NULL, '2021-11-18 22:59:11', '2021-11-19 00:39:56'),
(253, 40, 10309, 11, 12, 'PERSCEKLA PATRAS', 'ppatras@touchstone.com.pk', NULL, '$2y$10$UG1lf5j3FQ8QD5alvuhnH.doF0mNYsbE0Gq0Kcc7Cvmszrd6mCZG6', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:56'),
(254, 16, 11330, 11, 12, 'MUBASHAR HUSSAIN', 'muhussain@touchstone.com.pk', NULL, '$2y$10$0O0AdDpS9P8EF3WG2wA7Ke36asaPP9LLCPWhG3C4r2B9QnmoBpFJW', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:56'),
(255, 39, 11339, 11, 12, 'HUNAIN SHERAZI ', 'hunainsherazi911@gmail.com', NULL, '$2y$10$C.j9Is5saxPbJorWvoiu/.xjZ4YZ1vcMX2nkImYANmDwM7MIhiLzi', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:56'),
(256, 29, 11357, 30, 31, 'SolarLT', 'lt@touchstone.com.pk', NULL, '$2y$10$VlwMU6gYN4Y.gE7n9XpHa.NS1fmQZbInhTJKprxseki89xWnvG3TS', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(257, 43, 11362, 11, 12, 'RIZWAN ULLAH QURESHI', 'rqureshi@touchstone.com.pk', NULL, '$2y$10$iVvQuquDZMtU/hbLUEN61ObDsE9T5KUmkJFn7uAunQF..mM.S39RS', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(258, 44, 11367, 11, 12, 'SHAHARYAR HUSSAIN', 'shussain@touchstone.com.pk', NULL, '$2y$10$fgstjJyeyD/9EKMlM7Wh7ON082y0tFB2iqsqvDMKDvtLp.qiJQpxy', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(259, 44, 11379, 11, 12, 'TAHA BIN SOHAIL', 'tsohail@touchstone.com.pk', NULL, '$2y$10$5lubjyRKutVQkTL2RSSzxeMao1.TXZFvbMwcm/CGGm6wo7EghHj0m', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(260, 45, 11385, 11, 12, 'SOLAMON ILYAS', 'sailyas@touchstone.com.pk', NULL, '$2y$10$biCC8ggA4rJpUGolIeLsQuTCX975fM0Nn5VLKjRuE6Wc.fo/yZeMO', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(261, 39, 11390, 11, 12, 'KASHAN MUSTAFA', 'kashanr218@gmail.com', NULL, '$2y$10$DLRU9FoASYHdpL7KoklYdeObgjO901E5HyTew5utWKofKv2AusxLS', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(262, 39, 11391, 11, 12, 'SYED MOHSIN ALI SHAH ', 'mohsinsheerazi85@gmail.com', NULL, '$2y$10$Pb/ODNyFryIzRlOczWsdIeGSeE2nR23NeGD8eXnkD0KMH7OPgZRGy', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(263, 75, 11423, 11, 12, 'JASPHER JOHN', 'jajohn@touchstone.com.pk', NULL, '$2y$10$RHzm3Wms9q935x2Q9dYlf.mkZltWfUNI9cqsbMft5AK8dAnlNGowW', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(264, 14, 11426, 30, 31, 'MUSTFEEZ RASUL', 'mrasul@touchstone.com.pk', NULL, '$2y$10$nvZexrRGe7U8c65ZAoxPgOBo9mRh/T9Yoe0zNGlORqeetEm5aql0m', 1, NULL, NULL, '2021-11-18 22:59:12', '2021-11-19 00:39:57'),
(265, 38, 11427, 11, 12, 'MOIZ ALI ', 'moiza@touchstone.com.pk', NULL, '$2y$10$wFU9.VJCbDo.80pcc69B.e6bPX6gHWrbAZVKmqKIUtCZEa3W/Wzqm', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:57'),
(266, 40, 11435, 11, 12, 'LAIBA IQBAL ', 'laibainqbal396@gmail.com', NULL, '$2y$10$1Xk7JeQdQHm/QrDnhOHalOsJYebcMtss6uraP10jNl/ErrxDcy5Le', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:57'),
(267, 29, 11442, 30, 31, 'Solar Soleeva', 'solarsoleeva@touchstone.com', NULL, '$2y$10$eNSE8QtL5To1Y/FTz3G7aOwC7Ibg6eS3ri.0LLv1Q9P31eff3EBHm', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:57'),
(268, 74, 11444, 11, 12, 'HUMAYUN JAVED', 'hujaved@touchstone.com.pk', NULL, '$2y$10$o.vVyRqbO/Bx3HvUoFwQUOzswjzglTyOLOFiNSg7RVPPja0wjAe9C', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(269, 16, 11447, 11, 12, 'HASSAM GULZAIB', 'hgulzaib@touchstone.com.pk', NULL, '$2y$10$bYo/fLGBje6fqeaEmdFdhO7M26YZwq/rwqSdhxBT03tm43xe.yp0e', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(270, 44, 11451, 11, 12, 'MUHAMMAD UZAIR QURESHI', 'uqureshi@touchstone.com.pk', NULL, '$2y$10$vzEGeBSYanP6pJAX0GWZiuK1MSRwaOmRkik6kdWhz/uvepebp61Ye', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(271, 44, 11452, 11, 12, 'AMINA SHOAIB', 'ashoaib@touchstone.com.pk', NULL, '$2y$10$awMDPozohTLDmuSuVfUpBOjDvFm.sA4QXJRfbzCAXr5amzXY.3Qki', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(272, 39, 11456, 11, 12, 'MUSTAFA SHAHBAZ ', 'shahbazbhatti006@hotmail.com', NULL, '$2y$10$AsXJzWOg1ISJbf1EUGNIke.GIkmmH6MBI.rpyzrIs5czd1NxQgb8u', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(273, 21, 11459, 81, 2080, 'ABDUL WAHAB ', 'jwilson@touchstonebpo.com', NULL, '$2y$10$OtjvrypDZ5.fCdvQ8qsxzuS6pZiGT/kB10/nOAemzARo32t0oN3ey', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(274, 75, 11462, 11, 12, 'ABEER ASLAM', 'aaslam@touchstone.com.pk', NULL, '$2y$10$lnUmyLXgHOb8VZ0W7tRKfuac1BMVJ4B/NzB6ZKidOfl.tstoBv3Pi', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(275, 27, 11465, 11, 12, 'SEYED HASSAN RAZAVI', 'shrazavi@touchstone.com.pk', NULL, '$2y$10$YUIvixmD3Uvh4sDsHwz1/OnoC7aqgfVQQIL.glVEfEp0XdQPOciom', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(276, 43, 11469, 11, 12, 'MIRZA ATIF BAIG', 'mabaig@touchtone.com.pk', NULL, '$2y$10$UGJPCC0dPh6dAJQLa4ptI.jwUM4xghTWX9K/kl95RKJACPp.8KZVu', 1, NULL, NULL, '2021-11-18 22:59:13', '2021-11-19 00:39:58'),
(277, 44, 11476, 11, 12, 'MUHAMMAD SALAR ARIF', 'msarif@touchstone.com.pk', NULL, '$2y$10$2jACWUZwG7nS33QRCFjUF.T4NZp5d0ZAxtacxFSTmCw70lUv0gYee', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:58'),
(278, 16, 11490, 11, 12, 'UMAR USMAN QURESHI ', 'uumarusman8862@gmail.com', NULL, '$2y$10$aQP6f125X0X3gb8lCOfdV.RmgPoU.M.n2TpRb/h/V3F682Xj8oyny', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:58'),
(279, 75, 11492, 11, 12, 'SYED MOHSIN ALI', 'smhali@touchstone.com.pk', NULL, '$2y$10$ko/wb8MghUfEor.mXMcHEOdry5TUCwB4I7qljc/ddKpZw3wBXWPJ.', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:58'),
(280, 16, 11493, 11, 12, 'ASJAD MUMTAZ', 'asmumtaz@touchstone.com.pk', NULL, '$2y$10$zK9tGibNn/AOCe.wCX4aNeCfcP9Z0b5noiedRFKHmHlCIT1rPWDOu', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:58'),
(281, 63, 11506, 11, 12, 'JONATHAN BHATTI', 'jonbhatti@touchstone.com.pk', NULL, '$2y$10$WUVhF6HtJUuYXJy5AqyRFuvCAYt07zxkdHtAK5X0fLPvtO7abJqRW', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(282, 63, 11510, 11, 12, 'HUMZA HAROON', 'huharoon@touchstone.com.pk', NULL, '$2y$10$uZ/6./uxKhQehhjBiTILwuPA3mTTiCLxmwb/mkFEutdqYOAk8IMVO', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(283, 44, 11516, 11, 12, 'LUQMAN AWAIS', 'lawais@touchstone.com.pk', NULL, '$2y$10$4rcroOMz/0AzGsGcQvxhl.UbYIZT2qWYcIm0tPQsykYLu47UOsUEm', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(284, 43, 11520, 11, 12, 'HAMZA IMTIAZ', 'hmimtiaz@touchstone.com.pk', NULL, '$2y$10$5jeVwmvwvuJIfKauxSnrPOyxqZaYYEJYQ8JVsDggKG3LvmSMVsERm', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(285, 16, 11523, 11, 12, 'IAN DANIEL', 'idaniel@touchstone.com.pk', NULL, '$2y$10$lGi3Sh/4b3g7muPPoeL8N.AA/8oLzhlbaJl6AuJMSmjYEp7IF691G', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(286, 43, 11531, 11, 12, 'JAWAD HAIDER', 'jwhaider@touchstone.com.pk', NULL, '$2y$10$RjkwjMnhYkrX4SnFHHQr2uSwbbm3Vk/Q5nzioXxPCclFPj5Qfs7tu', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(287, 44, 11534, 11, 12, 'ZOHAIB ASGHAR', 'zasghar@touchtone.com.pk', NULL, '$2y$10$c3Seo3JAsI4HZbVK62ZDz.iX7XGcnUFp4snZDTWTKrhtQrx9USfmu', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(288, 44, 11535, 11, 12, 'MARIAM SHOAIB', 'myshoaib@touchstone.com.pk', NULL, '$2y$10$5VgdBH9QiE7IVQERDC.51uIiY/EwV6tmYXBwXuZ66S64H56/OXNke', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(289, 63, 11537, 11, 12, 'AWAB HAMEED UD DIN', 'ahdin@touchstone.com.pk', NULL, '$2y$10$lcvzf8Bc/suqNrG8zoen4OZcMDSeJvpY5M.AWrBf6HfAJ93E/.toO', 1, NULL, NULL, '2021-11-18 22:59:14', '2021-11-19 00:39:59'),
(290, 16, 11546, 11, 12, 'JAWAD SHAH', 'jwshah@touchstone.com.pk', NULL, '$2y$10$u86U/SGUZLSJY7sH97J5buRP/H1Nf3OrgmCDsvCXFqpEDDSphi03O', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:39:59'),
(291, 38, 11549, 11, 12, 'SHAHARYAR JAVED', 'shajaved@touchstone.com.pk', NULL, '$2y$10$nF/CX2Gm/XyDNsxkBaSqKevHcE19a4jisKwYvxIkLOUHQ11hpLBVe', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:39:59'),
(292, 44, 11551, 11, 12, 'SYED ALI AUSAF SHERAZI', 'sasherazi@touchstone.com.pk', NULL, '$2y$10$XhvePa9.W95KaMBJcl3oZOmcrSdvY2Hq7i4dc/rcCwyA.UbpPJPqe', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:39:59'),
(293, 29, 11560, 30, 31, 'Champ_Mortgage', 'champ_mort@touchstone.com.pk', NULL, '$2y$10$k1PzZhcEgN5TP1pi193ZEuHU1cSQAV89chkYU4KKppSItvAaMixY6', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:39:59'),
(294, 10, 11561, 52, 53, 'MUHAMMAD ABDULLAH TAYYAB', 'atayyab@touchstone.com.pk', NULL, '$2y$10$kuhzBU59ggObtqcwKqycZeM6FkYGQQ6TUE/d9cGng1G1KMWMHkZb2', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(295, 16, 11568, 11, 12, 'ABUZAR SHAHID', 'abushahid@touchstone.com.pk', NULL, '$2y$10$cwmnGCNL4A1zrFWbfotNteSDA7Q8.Px0olTzsAhHlitY2sI9GP3u6', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(296, 44, 11572, 11, 12, 'UZAIR YOUNAS', 'uyounas@touchstone.com.pk', NULL, '$2y$10$WcgysvulKFY9uxDDANT1yOsRp2L2kZx2hAPSnTtCKwYQjFuAGTJsS', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(297, 63, 12576, 11, 12, 'SHAHROZ MEHMOOD KIANI', 'smkiani@touchstone.com.pk', NULL, '$2y$10$BH64NqjN04AU3cR8LlnMNOU6eSvSVltdFW7GcB2arGLaRGlxIRG9K', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(298, 63, 12582, 11, 12, 'MUHAMMAD IBRAHIM', 'mhibrahim@touchstone.com.pk', NULL, '$2y$10$bOXRFN/2qnaz1cuPR0C.h.s89kS64tdUKWlHnICn.aTl3Sm4.KPUq', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(299, 63, 12583, 11, 12, 'HARMEET GIL', 'hgil@touchstone.com.pk', NULL, '$2y$10$M.sgOl1sNQBcYYdqrZFysOaJ4QsurkVUN0/ZkE73xMkuEuJ0FSLOO', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(300, 43, 12586, 11, 12, 'MUZAMMIL NAZAKAT', 'mnazakat@touchstone.com.pk', NULL, '$2y$10$knL57bqJsis0H9IIWc753OH5T3SfckyxB2WRKZ945w.PEPFEM6JNy', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(301, 16, 12587, 11, 12, 'MUHAMMAD BALAJ ABBASI', 'mbabbasi@touchstone.com.pk', NULL, '$2y$10$w2dxzG1OoQqdpSVugAjcD.EfrDJDPU88WS7.EW9H4rkkwm1a1GbSS', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(302, 44, 12595, 11, 12, 'JUNAID FAROOQ', 'jfarooq@touchstone.com.pk', NULL, '$2y$10$gOFi0KrAScSjnu2jt8h4lu5uVRxvlnBkpM.omv7tSPPargyx2V8QG', 1, NULL, NULL, '2021-11-18 22:59:15', '2021-11-19 00:40:00'),
(303, 44, 12596, 11, 12, 'ARHAM BABAR', 'ababar@touchstone.com.pk', NULL, '$2y$10$Yo396RAHE397nqMWDN8ZfeinQ.YrNnDYM13GVq5mmpH9w0hwcdemq', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:00'),
(304, 29, 13603, 30, 31, 'MKC Mortgage', 'mkc@touchstone.com', NULL, '$2y$10$KWwqXNZt0ivxoiikID5Z4ukDnhm4LPAinjEWphbE38qK7MVv8RVQK', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:00'),
(305, 74, 14599, 11, 12, 'SUNDUS IMRAN SMITH', 'ssmith@touchstone.com.pk', NULL, '$2y$10$pCEnxapboUv5Wuo0RpD5VuDFRQP0rRmEb/6IZzIrtdnShUNwc0EuC', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:00'),
(306, 16, 14601, 11, 12, 'KHWAJA MUHAMMED MOBEEN AHMED', 'kmahmed@touchstone.com.pk', NULL, '$2y$10$n2YpKNa7wWaOfwt4dROZ.e1FYBh38NYTQcsDRa4yxEnKIZ1jOHmPC', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:00'),
(307, 75, 14603, 11, 12, 'MANAHIM IMRAN SMITH', 'mismith@touchstone.com.pk', NULL, '$2y$10$dRb68MlTSPpc81hgh/orfuUZ7mbMo5HrgMUeQLFF2C.1jphMFw.s.', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(308, 74, 14609, 11, 12, 'RYAN RIAZ', 'rriaz@touchstone.com.pk', NULL, '$2y$10$C6UiBtVx809PQT/vUfOt3.gNpFrJbAvPw/ZWxpDjEi5Hylw06KNGK', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(309, 38, 14612, 11, 12, 'ADIL ZAFAR', 'adzafar@touchstone.com.pk', NULL, '$2y$10$1f683CbqOymrEnvhpAFRSu.wiGvij8VKlYF/IMbn7vCJvzyGylBAO', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(310, 63, 14620, 11, 12, 'SAMI ULLAH KHAN', 'smkhan@touchstone.com.pk', NULL, '$2y$10$M/5C1xUmmnk5L81TiBIBkOG7O3f180s3FSTNPpia4r6TUSsS4O5EO', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(311, 44, 14621, 11, 12, 'SHERAZ AHMAD', 'shahmad@touchstone.com.pk', NULL, '$2y$10$2eJSMrvfrosGFi4/HURkiOJpJFeX1ouz8t5W.rysJUjyiXXmj9D7.', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(312, 63, 14623, 11, 12, 'FAHAD AHMAD', 'daahmad@touchstone.com.pk', NULL, '$2y$10$Le.W4oEIaWGL3KQ.TztoyeL0iIVtKqPM9Q3W7ZNX/YGFwLerKBBA2', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(313, 44, 15619, 11, 12, 'WABSA AMMAD MALIK', 'wbmalik@touchstone.com.pk', NULL, '$2y$10$u9DMu/ZWXSUpKmhhXzrzCe7cWAAclZLNnHMRQl0FHHUTKfDDfQXOy', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(314, 44, 15622, 11, 12, 'HARIS NADEEM', 'hnadeem@touchstone.com.pk', NULL, '$2y$10$2kBytQ4pd1pET1wTjuzKce/29T9OlLCwprFEmJ2T8HXZSOq5Z5DbK', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(315, 44, 15626, 11, 12, 'JOEL DANIEL', 'jdaniel@touchstone.com.pk', NULL, '$2y$10$jFSEKnFg98l1GlHYd.UctOalSDlcDH/F.7wqRNHSdIN8ub8EUJk22', 1, NULL, NULL, '2021-11-18 22:59:16', '2021-11-19 00:40:01'),
(316, 74, 15628, 11, 12, 'MUHAMMAD UMAR TANVEER', 'mutanveer@touchstone.com.pk', NULL, '$2y$10$RWuHkts4RwH.EpA39sPXpeeZCaD0O.7bkGH81lmE5wWG/840JFdbu', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:01'),
(317, 27, 16634, 11, 12, 'MUHAMMAD SAAD TANVEER', 'mstanveer@touchstone.com.pk', NULL, '$2y$10$K2w8XGGPVCGuPvxFpJvZjOwmgpxCUdsr54XoPlD7/B4R9S3aQvo1W', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:01'),
(318, 4, 16639, 81, 2080, 'RANA KHIZAR HAYAT KHAN', 'rkkhan@touchstone.com.pk', NULL, '$2y$10$cEF6S7j94zG7HI/F0/Ejae7tLNsugzG26OtPhZZm.tOPdVaa.mDhC', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:01'),
(319, 27, 16646, 11, 12, 'M TABRAIZ ANJUM', 'tanjum@touchstone.com.pk', NULL, '$2y$10$GTQ4RbJO5d1AeAn2eV6PguEmxYt4XgUDN0aiPBpWKyWW4Sf0fIKdi', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:01'),
(320, 44, 17649, 11, 12, 'USMAN NASEER', 'usnaseer@touchstone.com.pk', NULL, '$2y$10$eYTSVFHYUTYNVel.WADgBu4DcCOzMmvUVt2Gb5lSzU/wyzjEXLz7e', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(321, 63, 17652, 11, 12, 'ASAD ULLAH KHAN', 'aukhan@touchstone.com.pk', NULL, '$2y$10$fnKpMxOl5o0/3BrM6xI.0utb2QiJt2Hd2ljDkTtsI3WvCE0nCbHUK', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(322, 2, 17657, 11, 12, 'AZHA AKHTAR KHAN', 'azhakhan@touchstone.com.pk', NULL, '$2y$10$.qDWZ9IIePsg8QqXQG9UZOUXtDlvC.7y6oMkub2.L2axxCMxJnXiG', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(323, 2, 17659, 11, 12, 'MUHAMMAD KAMRAN GHUMMAN', 'kghumman@touchstone.com.pk', NULL, '$2y$10$KGPUt9Z8SMsIckubyo4pjuTs2VGA4OSYGhq.WnJ6LdotV3WpekehK', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(324, 40, 17665, 11, 12, 'YASIR HUSSAIN', 'ykhany125@gmail.com', NULL, '$2y$10$aoEdd0y9ZAjIMRDafb6c2eg7NLjm7AVH1wKoIw.MlTZr/63dpW28S', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(325, 40, 17666, 11, 12, 'MUHAMMAD QOSAIN KHAN', 'sugarpot44@gmail.com', NULL, '$2y$10$pivTxxmDLCoeKDFApaAoCelM.PZsoUfDIw0IQKNL4qPOEFzCJRS42', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(326, 74, 17673, 11, 12, 'SHAYAN TARIQ', 'sytariq@touchstone.com.pk', NULL, '$2y$10$Lz2rQa2Gy6AN/sAlPnuXreWZ0Y7xDdTDu7gZeF1pa3Tz5iYCar11K', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(327, 2, 17675, 11, 12, 'HAFIZ ABDUL HADI KHAWAJA', 'hkhawaja@touchstone.com.pk', NULL, '$2y$10$Yk3GTfombV0E1GyI2smdFO4Z4JZARJYfMDLLBlFFYze0NZ0brf/Ni', 1, NULL, NULL, '2021-11-18 22:59:17', '2021-11-19 00:40:02'),
(328, 40, 17677, 11, 12, 'MUHAMMAD HASHAM', 'mhasham6@gmail.com', NULL, '$2y$10$43K4elC9qB.3iWR7aPD3k.oU8F5DkIIIXLytSlJWq3wRWN7tzVFPS', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:02'),
(329, 40, 17686, 11, 12, 'GERARD SALEEM ', 'greradsaleem@outlook.com', NULL, '$2y$10$wZIymQlbqmznUslTPdsp3.hCU27/fkmnxznfV6kno8dMNziWenbTO', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:02'),
(330, 40, 17687, 11, 12, 'MUHAMMAD USMAN AKRAM ', 'm.usmanakram93@gmail.com', NULL, '$2y$10$u51OZHU/Eem5gV1JHglW2u4NsbpKmSlyME.EZsHbAbp4HShTo8VmK', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:02'),
(331, 44, 17692, 11, 12, 'HASSAN RAZA', 'hsraza@touchstone.com.pk', NULL, '$2y$10$eeY1bLq2iFwmjuyYTxLeM.mSh3ZD8MiQ23k2vZmThCflkMafguCyK', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:02'),
(332, 43, 17694, 11, 12, 'HASSAN AZEEM URAIB', 'hauraib@touchstone.com.pk', NULL, '$2y$10$wO/gR2.fpb3RQwBhvjzd0O1W70U/qwHtuSMuCcKpWOuRjiAzod07e', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(333, 78, 17695, 11, 12, 'RADEEL GILL', 'radgill@touchstone.com.pk', NULL, '$2y$10$OW7BwCT93nsKYoFkxtQfA.aJqRFAoO9xpWdE3mdVVA05.ZyjnGv6C', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(334, 16, 17708, 11, 12, 'HASEEB UR REHMAN', 'hurehman@touchstone.com.pk', NULL, '$2y$10$pl3HDL5NWEb0nwvU2DWTjOfLVroC.Bt9j8YnpTSl3rsjaMXdT1A3m', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(335, 9, 17709, 81, 2080, 'MUHAMMAD SUBHAN MALIK', 'msmalik@touchstone.com.pk', NULL, '$2y$10$CXfUjPbJq.Kmao5eEJoF9OUjMrYECxaDiP1PM5zHC3jSgCaGiWpzK', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(336, 29, 17717, 30, 31, 'MPP', 'mpp@touchstone.com', NULL, '$2y$10$.McJLbVUu1Zd7DVhcK/knu9u6cYAw5tcGIzJMnBeASq0oLe.otq/K', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(337, 78, 17719, 11, 12, 'ALI HAIDER KAYANI', 'ahkayani@touchstone.com.pk', NULL, '$2y$10$x.7cEdSvju0UuLLcUYfPteTILtGTYSBE7zfyrIL4Nh0cQDFQXcTm.', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(338, 75, 17720, 11, 12, 'RAZIA FAZAL	', 'rfazal@touchstone.com.pk', NULL, '$2y$10$9JTKmvrpeo76Pzwbzz/eaOyEPHpVJBfLFiZC.vVxN994B4/z/ogYW', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(339, 44, 17724, 11, 12, 'MANAHIL AMJAD', 'mrasheed@touchstone.com.pk', NULL, '$2y$10$Wox3GLGAt03Z9WAICJ5xZ.r1X2O0GVOIPmwyFV3t57JOdy3pJFlYm', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(340, 75, 17725, 11, 12, 'MUHAMMAD', 'muhammaddd@touchstone.com.pk', NULL, '$2y$10$MKLUcEgqlBaIOPC6gD4OUOPQsKTFo9KWJvKouKxEQ0wMHWgm9QgIG', 1, NULL, NULL, '2021-11-18 22:59:18', '2021-11-19 00:40:03'),
(341, 63, 17727, 11, 12, 'FAISAL KHAN', 'fskhan@touchstone.com.pk', NULL, '$2y$10$Ypebyul7W64TDyLb1lJiD.rlqgDN8pS.vnYGNFFYh5YYlF/0GHezi', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:03'),
(342, 75, 17730, 11, 12, 'USAMA IKRAM MALIK', 'uimalik@touchstone.com.pk', NULL, '$2y$10$i.7jYQEWKihMNFXUTXpLV./S0RqXQxPyuPiuSkHiuwdn6ZFpAabz2', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:03'),
(343, 43, 17731, 11, 12, 'KHURRAM KHAWAJA', 'khkhawaja@touchstone.com.pk', NULL, '$2y$10$MeCwgA30qLkJDgEsz4jrkupjBJK41SG8KPxyjXpMNae6ewJQWg9N2', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:03'),
(344, 43, 17732, 11, 12, 'WAJAHAT ULLAH ABBASI', 'waabbasi@touchstone.com.pk', NULL, '$2y$10$HH0TYJBd2aZ366kdCNHZMebq1yxJGCNKOVMGDkvK57R/0RlyouziS', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:03'),
(345, 75, 17741, 11, 12, 'LYMA MARIYAM SAMUEL', 'lmsamuel@touchstone.com.pk', NULL, '$2y$10$0otUbkjuk0s6vk5CWpj5XehtbepeLRQKgoGfeyvzrl5gm5N5Y7fG.', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(346, 14, 17742, 30, 31, 'AHMAD ABDUL AZIZ', 'ahaziz@touchstone.com.pk', NULL, '$2y$10$PlRMICqCtIW8Lda8lnXPoucMrM9iVqH4DXzG3I9pgD19kcWG4jRbi', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(347, 78, 17744, 11, 12, 'AHMAD UBAIDULLAH', 'aubaidullah@touchstone.com.pk', NULL, '$2y$10$5o32gW5KRPODBOLLdgf1e.QV24kmY3XdkCiYBqPgpRtX4pOuKWydO', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(348, 44, 17754, 11, 12, 'ABDUL MUSTAFA', 'amustafa@touchstone.com.pk', NULL, '$2y$10$pX4xnaF6hkerTosYLoHeg.2CdfPTafDEyqTR2Q9A0.e8Gxyj9Bv26', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(349, 44, 17758, 11, 12, 'MUHAMMAD SALAAR FAROOQ', 'msfarooq@touchstone.com', NULL, '$2y$10$SVrk9JocOQe4/5hNsDXGTOxddjw9SzZOpcFDexfk3X7sazWm92cDK', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(350, 44, 17759, 11, 12, 'MALIKA AFTAB', 'maftab@touchstone.com.pk', NULL, '$2y$10$QxT3Ob0Icp20/pp7rS2B6ev9kK1zP2pq8Ru5V3fYdz.oLerSFLWA.', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(351, 44, 17763, 11, 12, 'MOAZZAM ABBAS', 'moaabbas@touchstone.com.pk', NULL, '$2y$10$3m7imGWb.EiPBgZori8ezOWaJBwXNfMwL0WLaHcyxzPKApcMXhPDW', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(352, 27, 17766, 11, 12, 'LAVIZA FATIMA', 'lfatima@touchstone.com.pk', NULL, '$2y$10$FrhSHQ9tkzBzGbMig7WjterC2Chc2eDGFltyO/fEe68xe9BANVbTW', 1, NULL, NULL, '2021-11-18 22:59:19', '2021-11-19 00:40:04'),
(353, 29, 17769, 30, 31, 'DH_MTG', 'DHMTG@touchstone.com', NULL, '$2y$10$QcN5kjnWUtUfy7vWrkSEfO.3JDuQGj99nxmaQD2qCEM5LFO04TQ6W', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:04'),
(354, 63, 17770, 11, 12, 'ADNAN AFRIDI', 'aafridi@touchstone.com.pk', NULL, '$2y$10$bzwvZCGdveWqmujh.bRzhu3WfpZn1PeqZ547JqAQA/ZRK7haYahFq', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:04'),
(355, 63, 17772, 11, 12, 'MUHAMMAD ANEEQ', 'maneeq@touchstone.com.pk', NULL, '$2y$10$bd/lLrJ9FUQRiNg7ukLZout4kWynFholM87DSZq0Ouf2ShiVIVAS.', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:04'),
(356, 63, 17773, 11, 12, 'SYED SAAD SUBHAN', 'sasubhan@touchstone.com.pk', NULL, '$2y$10$XnQ1us1bmq9wcScjNis4a.17lV19UlgQ0nVUNx8Zr6GNVeAb2sIUW', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:04'),
(357, 63, 17774, 11, 12, 'SULEMAN YOUSAF', 'syousaf@touchstone.com.pk', NULL, '$2y$10$AUsBXLyzVi6XsHaJDy1E7e8xE8utPsRyvaWsXHDdGx0CeJw87OYK.', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:04'),
(358, 74, 17778, 11, 12, 'DANYAL GEORGE', 'dageorge@touchstone.com.pk', NULL, '$2y$10$.U3qQPRd4LIrvYz/.sgtb.CimOdAe3sLQl2AAKw2A2OdGeuVdt39G', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(359, 16, 17788, 11, 12, 'JUNAID', 'junaid@touchstone.com.pk', NULL, '$2y$10$KtnGZFdoWzE7m4PQOV2VseQuL3MWIG2K7uizCzp6M48r8hy9hyWxG', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(360, 71, 17790, 11, 12, 'JEVON WALTER', 'testj502@gmail.com', NULL, '$2y$10$Vrhm2ak4Z3/EIu5D0wRy4uM4Li9T2WVXWq00AXx4Hz14denBKjhzW', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(361, 27, 17793, 11, 12, 'REHMAN NAWAZ', 'rnawaz@touchstone.com.pk', NULL, '$2y$10$5ZibaQ7OO340sNpDx1XiU.P9a0d/3X/FVvHppE7.Chvc3/GZt80YK', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(362, 63, 17810, 11, 12, 'MUHAMMAD SHAHZAIB HUSSAIN', 'mshussain@touchstone.com.pk', NULL, '$2y$10$nMUwxTvr/vdYykiVsxxO2OINJpXWnV/vyHOKDm5T.qJI5XB.MZ7dO', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(363, 44, 17816, 11, 12, 'UMAIR ALI KHAN', 'uakhan@touchstone.com.pk', NULL, '$2y$10$dRLiuc3B7C/xHK8YchNxrONd6YPipM6n0x7YWlUdSZ/oICxkOKqka', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(364, 63, 17818, 11, 12, 'SAYON ISSAC', 'sissac@touchstone.com.pk', NULL, '$2y$10$CjKMPnwhSgo73pwgTiQWyOeWE.95XlWAPc8cTRf7c7dgLL9f3jAx2', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(365, 63, 17820, 11, 12, 'MUHAMMAD SALEEM SIDDIQUI', 'mssiddiqui@touchstone.com.pk', NULL, '$2y$10$5bn.ZdkcNJjbDhFiaiDQy.VdtVv0UXJarBOYJmDpC7WHISrwu27Ly', 1, NULL, NULL, '2021-11-18 22:59:20', '2021-11-19 00:40:05'),
(366, 75, 17827, 11, 12, 'ARSLAN SHAHID', 'arshahid@touchstone.com.pk', NULL, '$2y$10$TwmX/qZIxCaGfTejxR5MSuSZRQLsa.pGQAqaajD91jP3Y4zvX91rq', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:05'),
(367, 63, 17832, 11, 12, 'SHARAZAR SHAHID', 'shshahid@touchstone.com.pk', NULL, '$2y$10$Phx4pSZkZu4uUZTEdnW7uOGNSv2kt4LUevVlkFt8P7W1cl/rpcF3K', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:05'),
(368, 63, 17835, 11, 12, 'MUHAMMAD TAHIR ASHRAF', 'mtashraf@touchstone.com.pk', NULL, '$2y$10$GbSXR.U3sVGMnHW.NId.bOB9nxO811kmq4B7RTzQMwlif5ELvAYm2', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:05'),
(369, 2, 17837, 11, 12, 'ABDUL HASEEB', 'ahaseeb@touchstone.com.pk', NULL, '$2y$10$Abhdp4e3GA722FhUKzoPquXShfUbYE8AsjkirIh5mNo814incXPPq', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:05'),
(370, 16, 17838, 11, 12, 'SYED MUHAMMAD AMMAR RIZVI', 'smarizvi@touchstone.com.pk', NULL, '$2y$10$ImXD8LKS7249R5gXD3PnEuJdxgw3u7fykGbRaPdQhMhI1Ja10cS9C', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(371, 43, 17840, 11, 12, 'MUHAMMAD YASEEN', 'muyaseen@touchstone.com.pk', NULL, '$2y$10$/w6m0SfTNR2pLsJ66nMMNeT/b7LOEf9kYX4VQZNW/Dh6xMzeUgZw.', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(372, 43, 17841, 11, 12, 'M JAMAL', 'mujamal@touchstone.com.pk', NULL, '$2y$10$sdnhgHNSyoX6fbRu1nX/SemHTFcCd8gGs3yxxNorDYIkmvq8QFBAS', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(373, 63, 17875, 11, 12, 'SHAKEEL UR REHMAN', 'surehman@toustone.com.pk', NULL, '$2y$10$7eijNphB2Ro8HZst7lSoa.lw.VrcGSvGMeT6TWHalCiUhkt9R31ey', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(374, 63, 17876, 11, 12, 'ABDUL HASEEB', 'abhaseeb@touchstone.com.pk', NULL, '$2y$10$SyPRfsuPWXACgB05VEajcudvtCwWnSCErTHrM4jKbjL0Q4ggxvY/a', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(375, 44, 17889, 11, 12, 'SYED ZAIN UL ABIDEEN NAQVI', 'SZANAQVI@TOUCHSTONE.COM.PK', NULL, '$2y$10$wHXSNir/NFcSAbkZF3uit.w4kqF09s8Rb1EnuKm1JrmsYLAeBhKgy', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(376, 27, 17892, 11, 12, 'MAHRUKH DURRANI', 'madurrani@touchstone.com.pk', NULL, '$2y$10$/lKork8fY7/DE1H4E2Uf1Ol3lwB2flxBbLhMQCTWzsjUEkpEuZJS.', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(377, 40, 17893, 11, 12, 'MUHAMMAD AAZAN', 'aazansatti1@gmail.com', NULL, '$2y$10$uBN985Ty7YlCqJm47hSzHOkz5ooPHneB3w90OSGbpkGUKa4fmjct.', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(378, 39, 17898, 11, 12, 'SYED FAKHAR ABBAS', 'syedfakharshah699@gmail.com', NULL, '$2y$10$5uhcCVJ1fv0skaBEZJmoDOyFmk3ADoJ.Gd5f84XwGpdzlAdFcntrC', 1, NULL, NULL, '2021-11-18 22:59:21', '2021-11-19 00:40:06'),
(379, 29, 18156, 30, 31, 'HomeFirst', 'hufl@touchstone.com', NULL, '$2y$10$WxCvf6GX6dVKG3iqgZomDezeZjggBNJzikPlx7stQzOXu/vLXpT8.', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:13'),
(380, 63, 17928, 11, 12, 'SHALIM KIANI', 'shkiani@touchstone.com.pk', NULL, '$2y$10$N.ubdJvzqSOkdcnDCRRm2uZdatTP1KuPLoNZcme78oilKAMvsvwlG', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:06'),
(381, 63, 17929, 11, 12, 'FARHAN ZIA', 'fzia@touchstone.com.pk', NULL, '$2y$10$LWtYzT/fNNxTqndvw4fcmO0rGB/ET0gtiW1B1S.RaZ31iGur.AJGa', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:06'),
(382, 63, 17931, 11, 12, 'AMIR HAMZA KHAN', 'ahzkhan@touchstone.com.pk', NULL, '$2y$10$BsG.J084fSks49kfrModJOOXCMEPnKQBWjPWdLnltJJCF40EBPZAG', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:06'),
(383, 63, 17932, 11, 12, 'MUHAMMAD YASIR', 'myasir@touchstone.com.pk', NULL, '$2y$10$wg1dG8tEzAX8qMvymGDDyurh/RX2Eo1Elct0vq22nUSqEeAEPSvTq', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(384, 2, 17949, 11, 12, 'MUHAMMAD UMAIR KHALID', 'mrkhalid@touchstone.com.pk', NULL, '$2y$10$d2KigNErWq0yAWUPhg/zNuS2GxX.S0ei2UN4u/6tKbKHP.xrIXqxe', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(385, 2, 17950, 11, 12, 'BILAL ARSHAD SIDDIQUI', 'masiddiqui@touchstone.com.pk', NULL, '$2y$10$5DtxX.iGNd75n/OqQCOHGOaWo/F9LHGkDNKtCPpXJ342K2SRPYLSa', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(386, 2, 17951, 11, 12, 'MUHAMMAD FAKHAR ALI', 'rfali@touchstone.com.pk', NULL, '$2y$10$2mOgrtgE8GmZel6tSxRh7OgdMYGXxrZTRUVnMKlT6sIA2cw5Gnawi', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(387, 2, 17952, 11, 12, 'SHAROON', 'sharoon@touchstone.com.pk', NULL, '$2y$10$KleU/t1nEbbcMEebXqxhXO0JM2vzqKnDYRE.tKEQcTR0nsvCpUvLa', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(388, 2, 17953, 11, 12, 'MERAB MESHILE', 'mmeshile@touchstone.com.pk', NULL, '$2y$10$VfeicrLOvdUqRcYqWPjbL.ecorXvt1jVNyHrR09MMc9FhssEjSEaK', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(389, 2, 17954, 11, 12, 'AFSANA BIBI', 'afbibi@touchstone.com.pk', NULL, '$2y$10$kY.ywF8ruEkV0df68ewfIe8PXls0npH1OMtLdhZQvLl5Adsw3kIDC', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(390, 2, 17955, 11, 12, 'WASEEM SAJJAD', 'wmsajjad@touchstone.com.pk', NULL, '$2y$10$2pDWrlPZK/jhauXMgLmWB.0zDCgO6LUzddIab0XUM0aj9uJGyIqbS', 1, NULL, NULL, '2021-11-18 22:59:22', '2021-11-19 00:40:07'),
(391, 27, 17957, 11, 12, 'SUNDAS ASLAM', 'ssaslam@touchstone.com.pk', NULL, '$2y$10$u/SDHpBn2GJjKTVy3BKDmeBKBNeW0DlqNGl3F1f4LJ02lBeHgLiSq', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:07'),
(392, 27, 17960, 11, 12, 'ALISHBA AHMED', 'alahmed@touchstone.com.pk', NULL, '$2y$10$WITm46mghOghaQOJj8BvoOdo7lFhrPk5jxFkZQBC.HQSypylyNEqi', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:07'),
(393, 27, 17964, 11, 12, 'HYDER QASIM KHAN', 'hqkhan@touchstone.com.pk', NULL, '$2y$10$./VkrV5p8fN/5eSzpRcqmOd44oGH5CGP1sqBhKd4L6JxEiKE2y5US', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:07'),
(394, 74, 17967, 11, 12, 'TAHIR ALI', 'tarali@gtouchstone.com.pk', NULL, '$2y$10$Fu4QOx5Aj0tFL/E8MNFrAeiXYPgmdVEtv.MeNihUmCHHfCUWVV7Fq', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:07'),
(395, 74, 17972, 11, 12, 'AREESHA ZAHID', 'arzahid@touchstone.com.pk', NULL, '$2y$10$Kq2jZDb7n3oIlOl9QqhIUOeHBH3rHIRdJ3ZJlw68ndByUTOA11A/G', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(396, 74, 17974, 11, 12, 'DANIYAL SHAHID RATHORE', 'drathore@touchstone.com.pk', NULL, '$2y$10$maLKDUkl43UlrhYBkh2p6.uyXU1Dntlmm.CDumq7QsXSA9yaoGQbi', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(397, 74, 17975, 11, 12, 'NAUMAN SHAUKAT', 'nshaukat@touchstone.com.pk', NULL, '$2y$10$caGUWbbBJWlqTqvUjKidtu8s6BO4P.CgNW/XaHGIKUM61ftkheJaG', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(398, 44, 17976, 11, 12, 'MUHAMMAD OSAMA SHEHZAD', 'moshehzad@touchstone.com.pk', NULL, '$2y$10$howoNlH4IQo3zy/YVG4pOOMpJ4GWva0mZ87ulkuKMZhVxDiLvlwJS', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(399, 44, 17977, 11, 12, 'ABDULLAH', 'abdullahr@touchstone.com.pk', NULL, '$2y$10$m2kBFUgTgOEHckar0eg1OehDfbXE60R1uVRakpjMHNjq1jdNRckny', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(400, 44, 17979, 11, 12, 'MUHAMMAD SAAD', 'msaad@touchstone.com.pk', NULL, '$2y$10$QPN76qqLh2/EFRJPE5n7Zexj4eyVKM/uEhWIkgjRDNLtMTrsk3T5C', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(401, 74, 17995, 11, 12, 'SIDRA KHADIM', 'skhadim098@touchstone.com.pk', NULL, '$2y$10$7kOGHs5K0B03wooVkqBEXeYIIe6QqZuc38TsWgw0pFwNT2ROp8ume', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(402, 63, 17996, 11, 12, 'HAMZA AHMAD', 'hamahmad@touchstone.com.pk', NULL, '$2y$10$rz8XoaJEWwo692YW4pyVT.3V9AKP4/ns.rhguVeZOwWPNhM0F8aZe', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(403, 63, 17999, 11, 12, 'ABDUL HAYEE SEEMAB', 'Ahayee@touchstone.com.pk', NULL, '$2y$10$mvm8MPTMuK2trdVIuyKrHOkM6lYRPlQugQj2d2dLqsWLFM.dsykF6', 1, NULL, NULL, '2021-11-18 22:59:23', '2021-11-19 00:40:08'),
(404, 3, 18014, 46, 47, 'RAJA MUHAMMAD ASIF FARZAUQ', 'rmfarzauq@touchstone.com.pk', NULL, '$2y$10$MLurMDAtCPFmoTQ.NjFOyusx2z3qhKPvt43yVVv2wdydngMH0k8Z.', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:08'),
(405, 2, 18016, 11, 12, 'ANIR AMIR', 'anamir@touchstone.com.pk', NULL, '$2y$10$EUFuUl9.yMzZGM9aciIXNeGuvdTRCzAWtfqGKxs0KsecKIVgOj.2S', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:08'),
(406, 38, 18017, 11, 12, 'MUHAMMAD AMMAR HAMEED', 'ahameed@touchstone.com.pk', NULL, '$2y$10$J/xO8oh8hXG47ZJMWwsVUuu2FVfttSw4LNfcd.rBZISs0sO3nDEEy', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:08'),
(407, 45, 18018, 11, 12, 'ISRA', 'isra@touchstone.com.pk', NULL, '$2y$10$rp2i0hbdTCwogvLFnv1oGOWx8tX9yqMDWsYOFSapZin51JxPlMF3e', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:08'),
(408, 75, 18019, 11, 12, 'UZAIR IFTIKHAR', 'uiftikhar123@touchstone.com.pk', NULL, '$2y$10$gpF4sEmLODuGdY0ARcVjqeobqdUNkAPrt0.jU1R3UgC6l8ekUl4Ye', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(409, 38, 18021, 11, 12, 'MINAHIL PAUL KHOKAR', 'mpaul@touchstone.com.pk', NULL, '$2y$10$r8xB1QAsYuu/k/pesu5JmOqIZ1pzn78LtweuSRB9xLSJOyX6W8DmO', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(410, 71, 18022, 11, 12, 'SHANESSA VICTOR', 'svictor@touchstone.com.pk', NULL, '$2y$10$jSc6CdOtC.fVaD8HkPulWeLyv/d3m/CVHG0ZF4EwwVW.NM7fVSs82', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(411, 44, 18024, 11, 12, 'MEHROZ HAIDER', 'mhhaider@touchstone.com.pk', NULL, '$2y$10$EQ17p4LoomNHcO13AS1VqeF6aKGcjdhMe2FfzWVGfXdckH8JQP5LW', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(412, 44, 18026, 11, 12, 'MUHAMMAD HASHIR ANSARI', 'hansari@touchstone.com.pk', NULL, '$2y$10$09m/3NYxg6a9zbtPTo/W..lvyiayvnMhxWeGtI8VrUgVU1JdnZvme', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(413, 38, 18028, 11, 12, 'MUHAMMAD BILAL', 'mbilal123@touchstone.com.pk', NULL, '$2y$10$Ae2mM0GL2JfEIu3ZuAdCD.Rosscsg0qxwpHWTlDUTIQeNbsF08nX2', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(414, 39, 18029, 11, 12, 'SYED MASOOD IQBAL', 'smiqbal@touchstone.com.pk', NULL, '$2y$10$9tlJyhPWIk.QsqiN6XVcFOk8DATqSm7IQw3fk/YkIXz6KD7WyP1h6', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(415, 40, 18030, 11, 12, 'MUHAMMAD SHAYAN', 'mshayan@touchstone.com.pk', NULL, '$2y$10$FFHN65TGPW4GTsZfFb8s9ORF4epzS6AVaphc8gsdvk1TvOAFCoCeC', 1, NULL, NULL, '2021-11-18 22:59:24', '2021-11-19 00:40:09'),
(416, 40, 18031, 11, 12, 'ABIEZER GARSTIN', 'agarstin@touchstone.com.pk', NULL, '$2y$10$HwVs1RZoW8vjCJ.pZiTZRO7BktzgXXOGq5qNPlMkCB.BTjolu2z2W', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:09'),
(417, 29, 18033, 30, 31, 'Powers_MKT', 'powermkc@touchstone.com.pk', NULL, '$2y$10$Q7wEPWVAn.kxMz9ICyve..1HtMyPWpJSDg8jMImvZr7SgYBJNPkry', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:09'),
(418, 44, 18034, 11, 12, 'MUHAMMAD ALI RAZA JAN', 'Araza012@touchstone.com.pk', NULL, '$2y$10$XDFkN.hPnlX40q1Wzbg4ReuOPXXV7yGISndehd0h9SVBvF7heoO0m', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:09'),
(419, 44, 18035, 11, 12, 'SAIM', 'saim1456@touchstone.com.pk', NULL, '$2y$10$wxBDWSZwJiuDXK6PvQ.WaeEd5ilh9tYqjU9DNaT0rUs3ZVM8XGRS2', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:09'),
(420, 44, 18036, 11, 12, 'MUHAMMAD SHAWAL KHAN', 'mshawal@touchstone.com.pk', NULL, '$2y$10$N4wnGipvz4OOQV4dtBy8Uuh8j2C0rzKbzrow1.RMajTiN/5vhZqoC', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:09'),
(421, 44, 18037, 11, 12, 'FATIR HUSSAIN', 'fhussain123@touchstone.com.pk', NULL, '$2y$10$knFrP0B4Kdn/cqM5HD6AOOarsOp1bfAc9rmg4E1DQR6YDf63eCg2u', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(422, 75, 18039, 11, 12, 'SCHANZAY IMTIAZ', 'simtiaz123@touchstone.com.pk', NULL, '$2y$10$TvBC6Vlc3ElGx3Ipuyw0dusn7MTMiShYxefhvLHOe491G1PU7JWx.', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(423, 38, 18042, 11, 12, 'IFTKHAR ALI', 'iali12@touchstone.com.pk', NULL, '$2y$10$B1roGcXEt032Q3GC.1Gl6uxThfnDP7X/lUFGWYm9wxf48p7oakDFq', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(424, 16, 18044, 11, 12, 'SYED HAMMAD ZAHID TIRMAZI', 'shammad12@touchstone.com.pk', NULL, '$2y$10$ft51O6mVC7F/DKQnzp00M.yVglYMxORW2mCEnN7Cw.98bHEFqfCq.', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(425, 75, 18045, 11, 12, 'RAZA PERVAIZ', 'rpervaiz@touchstone.com.pk', NULL, '$2y$10$BzHx6rlD5rZU0r6Ev1MtaufVoSmK3XbvB0IGJwJHElkdHnxYbUmQ.', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(426, 2, 18048, 11, 12, 'BUSHRA ALI', 'bali123@touchstone.com.pk', NULL, '$2y$10$fYrB0MIB0nGzv9pNX/w3mOFIUmKCnG2q0SKApqse0iH3nWOyTmTbq', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(427, 2, 18049, 11, 12, 'DAWOOD NASEEM CHAUDHARY', 'Dnaseem12@touchstone.com.pk', NULL, '$2y$10$UX/nClS7DlbaWhRawWBT6.05IaTqD7Vn/WuhqpoMFVHTu2JZ5edoS', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(428, 74, 18052, 11, 12, 'BEHRAM KHAN', 'bkhan12@touchstone.com.pk', NULL, '$2y$10$c76NEFsWtfuiu5cMsEY/nuGOAQXSo.5AVgPx2lgCy11ZYnNcDa0DC', 1, NULL, NULL, '2021-11-18 22:59:25', '2021-11-19 00:40:10'),
(429, 74, 18053, 11, 12, 'MUNAD AHMAD NOOR', 'mahmad12@touchstone.com.pk', NULL, '$2y$10$EIVYq5xy9d.pm5adka1PVeC6OgrYXpMbrzKZ0dGTLrhz2Ncvszvwu', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:10'),
(430, 75, 18054, 11, 12, 'SUNNIA KIRAN', 'sukiran@touchstone.com.pl', NULL, '$2y$10$37nF9.BH2AiGDJFgsZWqj.VaeLwfOGXxUqiw9Djauddm6b5cvpxSW', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:10'),
(431, 75, 18055, 11, 12, 'TUBA REHMAN', 'trehman123@touchstone.com.pk', NULL, '$2y$10$oraDhGYHDM2S1Bj4OdkVHuOO1Of3AwL39ri.FC1Ool4q/qWNla.sy', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:10'),
(432, 39, 18060, 11, 12, 'AREEHA IFTIKHAR', 'aikhar@touchstone.com.pk', NULL, '$2y$10$Bzf4Qv8fZJfia6tNY8GgGOknJcOERRwsqkACVtJKmacum8lMW2WfW', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:10'),
(433, 40, 18064, 11, 12, 'NUMAIR SALEEM', 'nsaleem@touchstone.com.pk', NULL, '$2y$10$YV.CmHqO/DdKAVC/McjGZOyg7PDrP3BJmJ3mO5qnMOuQ16sJyM6L2', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:10'),
(434, 63, 18065, 11, 12, 'MUHAMMAD UMER FAROOQ', 'mufarooq@touchstone.com.pk', NULL, '$2y$10$XP2Z7jTvG1j/dLG9QePkv.28nAysbBHGnEPckBsHs57JEEMFiqXdq', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(435, 63, 18066, 11, 12, 'NAEEM AHMAD', 'inaeemkn@touchstone.com.pk', NULL, '$2y$10$4mLplXRIkhcDuXbaFn30QuKzd9c4kBEHfn5DSEscuhsSQaktXrLOq', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(436, 38, 18067, 11, 12, 'RAMISH IDREES', 'ridrees@touchstone.com.pk', NULL, '$2y$10$qOMrM3g1m6ycUpIjKbMyd.zkiQnv/quL9EUgtZScCkpkwugwxj7qu', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(437, 16, 18071, 11, 12, 'MUHAMMAD ASIM ZARIN', 'mazarin@touchstone.com.pk', NULL, '$2y$10$Xbmh4ZkY.Or1RM4V5ifkdu.twNqPJPcjvvNtTdTKhsX9rC/zBsqW6', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(438, 71, 18072, 11, 12, 'MUHAMMAD SHEHRYAR SHAKIL', 'mshehryar@touchstone.com.pk', NULL, '$2y$10$UvM9.UskQq3hzloj8Kn/vOUNCZ0rR4INOWGdQx3ZXS5tTtMm2p0MS', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(439, 74, 18077, 11, 12, 'HASSNAT ABBASI', 'habbasi123@touchstone.com.pk', NULL, '$2y$10$YQiP0LfVIyuDBhVfsu2BI.AMOZlzVCEZyOEnAmZEbMyujA02CeS2C', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(440, 44, 18079, 11, 12, 'MAMOONA MUMTAZ', 'mmumtaz@touchstone.com.pk', NULL, '$2y$10$I6nEZX0hjGqOhZ6mp9HCl.cgDt1xUg27PEfWHEW8wcU6tcvwN.Zpy', 1, NULL, NULL, '2021-11-18 22:59:26', '2021-11-19 00:40:11'),
(441, 44, 18084, 11, 12, 'MALIK MUHAMMAD HASSAN AWAN', 'muhawan@touchstone.com.pk', NULL, '$2y$10$5aSf/JeRLDbirK37UHlIZuxu9a15DYysnwa7KV2dzk4N6RGEaE6ia', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:11'),
(442, 44, 18086, 11, 12, 'JASON SALEEM', 'jasonm@touchstone.com.pk', NULL, '$2y$10$mW/lhrrLojdd.6.Kp6kOyuiEqLbpCVUalOvJK4eJB0FJjQsKxIuzq', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:11'),
(443, 44, 18087, 11, 12, 'EHTISHAM ZAFAR', 'ezafar12@touchstone.com.pk', NULL, '$2y$10$q6ipErcGAwrsJOl97FvMfO4OUvhtcLumK7KJwbrtGxJXNP0Hs2LrS', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:11'),
(444, 40, 18092, 11, 12, 'ABDUL SUBOOR ZAHEER ABBASI ', 'aszaheer@touchstone.com.pk', NULL, '$2y$10$FfVcdD92lBEH7UGk5AVGt.NY8fDJHHYvLWBzzCmfqLFWpmNT4.H9y', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:11'),
(445, 44, 18094, 11, 12, 'FARAN SALEEM', 'fsaleem12@touchstone.com.pk', NULL, '$2y$10$0U8TunGquAsi4RVcIxdBxuQOM8geoGubSvQbrC9/ppRkCiZEusI8y', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:11'),
(446, 75, 18095, 11, 12, 'MUHAMMAD USAMA ILYAS', 'muilyas@touchstone.com.pk', NULL, '$2y$10$hEIotMfeGkX.63uHOkizdO9gQfBAnyFtsUR9SeX05JdLLJflbG4wq', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:11'),
(447, 74, 18097, 11, 12, 'SHAYAN AKHUND', 'sakhund@touchstone.com.pk', NULL, '$2y$10$KBcwED3kaSViaDbYTrGnG.Qt6JHBacjEe6CCs91vhoASy3fy/9MO2', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(448, 38, 18102, 11, 12, 'MUHAMMAD FAHEEM KHAN', 'mdfkhan@touchstone.com.pk', NULL, '$2y$10$AEXqam0u3VJZj8TMlAUpmu.5lVWQBUTXiahFo2ZvZo5hyvj.jUzDS', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(449, 38, 18103, 11, 12, 'NOUMAN SAFEER', 'nsafeer12@touchstone.com.pk', NULL, '$2y$10$x2gzHltyZoyMvFyR0RSTOe405OSC.AGyMJejwl.AzarNQLYAZfqPa', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(450, 38, 18104, 11, 12, 'EHTISHAM TALAT', 'emtalat@touchstone.com.pk', NULL, '$2y$10$0xaNLAvoK2s7uM4zddyy0.XYrp9DlxHx92Dn33NNmwrCgPINsM98W', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(451, 43, 18112, 11, 12, 'HASSAN UMER KHAN', 'humerkhan@touchstone.com', NULL, '$2y$10$KG5iIY1S1oPnsySj4.rOKeo.NEiGEReqSit9F42eJqaHXxODuMSYK', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(452, 39, 18120, 11, 12, 'ABDUL SAMAD', 'asamad123@touchstone.com.pk', NULL, '$2y$10$n.3UPAjcXLOBY5.1ClxJoOClBiYgz.TP8lqsXPZt34VmoaFJ4w5Cm', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(453, 44, 18122, 11, 12, 'SHAMAYL KHALID', 'shamayl@touchstone.com.pk', NULL, '$2y$10$mpCQMwx8mtO8zB5diq9Ow.JUNK0DD8qzy4EtBc34lT9TLO/HlLMsa', 1, NULL, NULL, '2021-11-18 22:59:27', '2021-11-19 00:40:12'),
(454, 39, 18123, 11, 12, 'ABDUL SHAFAY', 'ashafay@touchstone.com.pk', NULL, '$2y$10$F1Efdb.h2s1jAzcImQ8KLuR.21iLS7ZBrWbbuiQn0mgPFtnHL08AS', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:12'),
(455, 63, 18130, 11, 12, 'WAHAJ UD DIN', 'wahaj@touchstone.com.pk', NULL, '$2y$10$n8xJt5/vjGqwkyQfB8cWrOjMAfYOa/DtEbQJJ2iy.xtNc6CcgLLyK', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:12'),
(456, 63, 18133, 11, 12, 'YASEEN IQBAL', 'yiqbal1@touchstone.com.pk', NULL, '$2y$10$PtEKXF4b95wr3DA.JHSpQe1D0P0wq5YGp4bkQA/AwsB0w4OTd5EdK', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:12'),
(457, 63, 18134, 11, 12, 'MUHAMMAD USMAN GHANI', 'musmanghani@touchstone.com.pk', NULL, '$2y$10$OXN2.ImBQYETMgPH0ykrsuHMYIyj0990oSVpHIjD.wFa4.YGLblWa', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:12'),
(458, 39, 18138, 11, 12, 'NOUMAN NADEEM', 'Nnadeem@touchstone.com.pk', NULL, '$2y$10$NuP4vIC4NIa9cz1m.hDELOGadmCBriKtlhBot2mQTo62lQQapjiwG', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:12'),
(459, 39, 18139, 11, 12, 'SAIMON', 'simon@touchstone.com.pk', NULL, '$2y$10$pKJ6I9Se1umPI1GbEqf3g.cW.WZDotgDQjG3r3g8J6SPovJmXjBHC', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:13'),
(460, 44, 18142, 11, 12, 'AMNA', 'amna123@touchstone.com.pk', NULL, '$2y$10$agBcw/tsAoUA1YGDcJbBqu1LVSIS04nRFvRKGrjYbIAt3PElo9Kf2', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:13'),
(461, 44, 18146, 11, 12, 'MUHAMMAD HARIS', 'mharis12@touchstone.com.pk', NULL, '$2y$10$8tx/ywGzLDYYNR0GnAaMiu/UMbnEn18oNM.BktgE/3/xhPOFF1W.W', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:13'),
(462, 75, 18149, 11, 12, 'RIDA', 'rida12@touchstone.com.pk', NULL, '$2y$10$A536/xP/cKIruhwlhkP28OdTeeiQYEA3Xa1D6zOUt7RmYCESjKPz2', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:13'),
(463, 39, 18150, 11, 12, 'SYED ALI HASSAN HAMDANI', 'salihamdani@touchstone.com.pk', NULL, '$2y$10$P6DUddbnH7GhVvehMf8/e.lM0LbNzo8wjOfl.jGzaZa.kqTwh/mZy', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:13'),
(464, 21, 18152, 81, 2080, 'SAAD AHMED NAEEM', 'emartin@touchstonebpo.com', NULL, '$2y$10$dv3/c3kXuEy/hO7VoKr49O6BoDGSYpj8CEtH4UWUfJkN69jl1/zIq', 1, NULL, NULL, '2021-11-18 22:59:28', '2021-11-19 00:40:13'),
(465, 43, 18161, 11, 12, 'TANZEEL UR REHMAN JANJUA', 'trehmanjanjua@touchstone.com.pk', NULL, '$2y$10$Vkz2dZNICYwNCOMGOPgQLuCsr29omQshaNYCTa/jCkTzgb45kK13y', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:13'),
(466, 43, 18163, 11, 12, 'MUHAMMAD ZAIN AKRAM', 'mzainakram@touchstone.com.pk', NULL, '$2y$10$0vN9/Z/zITPZdYfbs9Gq9uziJ3SAxunYLViwO3FSMkp3BqSIV.QwC', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:13'),
(467, 43, 18164, 11, 12, 'MUHAMMAD TANVEER', 'mtanveer1@touchstone.com.pk', NULL, '$2y$10$.U9JBNgwt0BNZzzvRArqzuN7MwC/i009.l4XkFOb2qJQaHROUQYXW', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:13'),
(468, 78, 18168, 11, 12, 'BASIT AWAN', 'bawan@touchstone.com.pk', NULL, '$2y$10$.JYk0FB5MLR7HEx67p4XD.mm80LXtFarNYg.2ffA0ikaKJL.ApUdm', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:13'),
(469, 39, 18178, 11, 12, 'LAIBA ASHFAQ', 'lashfaq@touchstone.com', NULL, '$2y$10$mx7e1PfFAWQnwriwFt4mYe2rCb8J1PIW5G.DJxtITquilJV7bX.A2', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:13'),
(470, 40, 18179, 11, 12, 'MUHAMMAD SHOAIB ', 'muhshoaib@touchstone.com.pk', NULL, '$2y$10$MvOOpnJgomIco6XulYc8vuQmeF/YRcJ.kXaEhHRn/WUNrQmoRljGG', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:13'),
(471, 39, 18181, 11, 12, 'AMBER QADEER', 'amqadeer@touchstone.com.pk', NULL, '$2y$10$naAY/aYFRADUQKqN829V1OL55wKTM/L/0nlG2Yqy6Io5neurJ0UK6', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(472, 39, 18182, 11, 12, 'HAMZA MEHMOOD', 'hmehmood@touchstone.com', NULL, '$2y$10$1Dj.nBGRVq8NrpQpheWdneiaXh5/IZypf8gm41uJEhsn/QQClgCBS', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(473, 14, 18184, 30, 31, 'AAMIR KHAN', 'aamir.khan@touchstone.com.pk', NULL, '$2y$10$9gD84m01WCDNt2V/171IfuR1dReiIUYn20.9yqja9ovrW5UPYtPqu', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(474, 78, 18185, 11, 12, 'ALISHBA GILL', 'agill@touchstone.com.pk', NULL, '$2y$10$S2PfZlh6LP83GEG.NDPgK.Gw.8L4C3LUG6LEikM38yGWyeb/QIGdC', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(475, 2, 18191, 11, 12, 'MUBASHER SHAHZAD', 'mshahzad@touchstone.com.pk', NULL, '$2y$10$OluZsu.aqq99gQxEXNh0Zepv4IwsAINzjMADZeUBqF5obJLt9r0sS', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(476, 16, 18192, 11, 12, 'ABID HUSSAIN', 'ahussain1@touchstone.com.pk', NULL, '$2y$10$CrvBIq4HviLaHRNKoLACJukCFCw/vjqEy7GAvM.Zma87DwwYhF0vm', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(477, 78, 18200, 11, 12, 'SYED KHYBER ALI SHAH', 'skyhberali@touchstone.com.pk', NULL, '$2y$10$olQq5plIzTaZpYezDZ5zXOOxf1x6nftAcXNHqTABLuWlGVvZE40qW', 1, NULL, NULL, '2021-11-18 22:59:29', '2021-11-19 00:40:14'),
(478, 43, 18204, 11, 12, 'ADNAN HASSAN', 'ahassan1@touchstone.com.pk', NULL, '$2y$10$iAtCkNpp.9.aU405TZfqteJyNZNNvx2Y9EH/khnKBY2pcwaXbvQN2', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:14'),
(479, 43, 18206, 11, 12, 'MUHAMMAD ABU BAKAR', 'mabubakar1@touchstone.com.pk', NULL, '$2y$10$Km6E/Fqoh3CE1RexEvO1c.5NmHWfdhTciH7TG0tM1CPWQGxNnFnYi', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:14'),
(480, 75, 18207, 11, 12, 'NAWAFIL', 'nawafil@touchstone.com.pk', NULL, '$2y$10$hP60bZmddDV4MeOigYb10u60.VA7iJ73EkPZee/krXvHjaHPEfzyi', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:14'),
(481, 74, 18209, 11, 12, 'MARWA DURRANI', 'mdurrani1@touchstone.com.pk', NULL, '$2y$10$zUAQSGuTebhzXN.HLR3tGeSAjLIZZKaZjrRWWTD3qIq/SBxbgiwiO', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:14'),
(482, 75, 18210, 11, 12, 'FARGHAM ARFEEN BHATTI', 'farfeen@touchstone.com.pk', NULL, '$2y$10$.NScqb2PR14C.wjj49NzJ.TNHlM5XJkjo6o3pQPaFlHYF8lWGQrS2', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:14'),
(483, 75, 18211, 11, 12, 'MUHAMMAD NOMAN ALI', 'mnomanali@touchstone.com.pk', NULL, '$2y$10$t2OvyzULznLPTni9LDFdWetauAcsmLWpGSsqgLGwvIi3FfRI6fAHa', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:14'),
(484, 75, 18212, 11, 12, 'CHAHAT ZAHRA', 'czahra@touchstone.com.pk', NULL, '$2y$10$I1dIxHBswqKEKI8sKOvNAuMqqRzl/Sb8Ntlz0.WUptcizsZb2MNTu', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(485, 63, 18215, 11, 12, 'MUHAMMAD BILAL ZEESHAN', 'mbilalzeeshan@touchstone.com.pk', NULL, '$2y$10$HQO/bQUAeyzNKZU8N7Zj/.HWRXUZQlrVdRdg7WHb8tIxIgunHzeYy', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(486, 63, 18216, 11, 12, 'HASSAN IQBAL', 'hiqbal1@touchstone.com.pk', NULL, '$2y$10$tl2bAbLkj4/6BBD9UuyryORHENVxYow99.nz2epkRzIujkNN6MwzG', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(487, 39, 18219, 11, 12, 'QAMAR JAVAID', 'qjavaid@touchstone.com.pk', NULL, '$2y$10$gEzGZM5ezGVhSIXsplzYAeSohSPgLcPty/sjJDjyg2dyE1htdRc9.', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(488, 44, 18222, 11, 12, 'ANAS TARIQ', 'atariq1@touchstone.com.pk', NULL, '$2y$10$S63EF2PwoZu2t4K7JIWO2eE7dERQMueR9bk39hIAOI7RccGYHw.j.', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(489, 44, 18223, 11, 12, 'SYED SHOAIB ALI', 'ssali@toucshtone.com.pk', NULL, '$2y$10$jv4oLqFTsaLyF4lCKEkMCueRSKOMIcfIjm8ydtuURO5BrxOHHIeCC', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(490, 74, 18226, 11, 12, 'MARIA IQBAL', 'maiqbal@touchstone.com.pk', NULL, '$2y$10$df5/yRopPGZhM1JlmWIE/e.Wum7QqY7gHfSwFppvRWpel1LsXQckO', 1, NULL, NULL, '2021-11-18 22:59:30', '2021-11-19 00:40:15'),
(491, 63, 18228, 11, 12, 'USAMA', 'ollafkhan@gmail.com', NULL, '$2y$10$kBc93W.sq0dSG4P8u/ik3OaiWc9C78uTAwnugTVHN4ivWtvx7/.G2', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:15'),
(492, 63, 18229, 11, 12, 'MUHAMMAD ANAS', 'manas12@touchstone.com.pk', NULL, '$2y$10$kCTsMPgzpBHivslSNutosuP41dltP9tY/3LsgVjeONCVYQG7dfym.', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:15'),
(493, 10, 18231, 52, 53, 'IQRA NASIR', 'inasir@touchstone.com.pk', NULL, '$2y$10$buK/ag28TKf2jeHu3xsbFOtnKUXx6j1TNj9A..rjS7ougujoftsdi', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:15'),
(494, 39, 18236, 11, 12, 'HAMMAD HUSSAIN', 'hhussain@touchstone.com.pk', NULL, '$2y$10$NzDKT8MjnxW5JJSv/rIdVuAbJ9PdGKG1/u9t63gaVuKFxrRP9RWZy', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:15');
INSERT INTO `users` (`id`, `campaign_id`, `hrms_id`, `designation_id`, `hrms_designation_id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(495, 39, 18239, 11, 12, 'SHALOM BASHARAT', 'sbasharat@touchstone.com.pk', NULL, '$2y$10$XhrN0CwR9FkpcCGor9g1vutZWqwjpYqgWky8XpaxMghlY6msnttv.', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:15'),
(496, 39, 18240, 11, 12, 'ABBAS RAZA', 'abraza@touchstone.com.pk', NULL, '$2y$10$BLwRHY57kuOQWL9Pj2v6oOd4o5RvYQzZAXeyTZ74JtnKQ97BPLI02', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:15'),
(497, 40, 18241, 11, 12, 'ZAIN AHMED QURESHI', 'zaqureshi@touchstone.com.pk', NULL, '$2y$10$J/XhyOooxcl0M4K0ydUfJuCNtq7ltJLy4iP43aQJjtxKEwWbmyK9O', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(498, 44, 18244, 11, 12, 'MUHAMMAD JUNAID JAHANGIR', 'mjunaidjahangir@touchstone.com.pk', NULL, '$2y$10$Zhr/aTKdEwx4xYIu45IhYuW3WYyTg1eNvLyxeKF4Jc659ZlPqrk3a', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(499, 44, 18245, 11, 12, 'ABDULLAH NAWAZ', 'anawaz1@touchstone.com.pk', NULL, '$2y$10$iwaXSAAAlr7Up61E/pats.0gUoXdufNfE4jGFoq/ZcqMfOH3UhHui', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(500, 40, 18248, 11, 12, 'FAHAD ALI', 'fahali@touchstone.com.pk', NULL, '$2y$10$ovtmN/Z5xwLX5STpNICebuTDrktOasJZFUDwUuVmwKIpgmdrBUUfm', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(501, 75, 18252, 11, 12, 'RAJA MOIZ UR REHMAN', 'rmoizurrehman@touchstone.com.pk', NULL, '$2y$10$nB5EcIgr/v0jF0PMEcPdxu9PnBwVEpoB62586r0CX622qAgyw1gxK', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(502, 43, 18256, 11, 12, 'MUHAMMAD ARSALAN ZAFAR', 'marsalanzafar@touchstone.com.pk', NULL, '$2y$10$JKgElllpFoirq6f2m/kxlOnsjXO.9.PHQGSON7ufoQlFRiG0zR6OC', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(503, 78, 18257, 11, 12, 'ASHBEEL IQBAL', 'ashbeeliqbal@touchstone.com.pk', NULL, '$2y$10$M3GqzfzUuNZZpBx77BlQPu.cNMRwPjLTBsxl1ZcYSzg4O2pNx9QqO', 1, NULL, NULL, '2021-11-18 22:59:31', '2021-11-19 00:40:16'),
(504, 78, 18258, 11, 12, 'KANWAL FAROOQ', 'kfarooq@touchstone.com.pk', NULL, '$2y$10$xmHYKZ41mC4mCYhjt6sbrOhGLjto8FbPqWCMsgCPnKu.GGQnkkhH2', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:16'),
(505, 38, 18259, 11, 12, 'RANA AHSAN ALI', 'rahsanali@touchstone.com.pk', NULL, '$2y$10$kj9ZpShsSuo5/8d.e/Sd3.YdxxwiutkxGAO3VrL74dagxGNbE4SQG', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:16'),
(506, 78, 18264, 11, 12, 'HUZAIFA TARIQ QURESHI', 'htariqqureshi@touchstone.com.pk', NULL, '$2y$10$kyL0pJq0Tg6LRakaSMfHqOOo134J0ss6y37t37cm8ISISx/CEugea', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:16'),
(507, 78, 18265, 11, 12, 'USAMA BIN FAROOQ', 'ubinfarooq@touchstone.com.pk', NULL, '$2y$10$8JcTi4k/o2iFtSnIC2HKBOplf21IXUmdgrH1G.k/ARJ9uYN/nHCn.', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:16'),
(508, 78, 18266, 11, 12, 'ANUM ASHIR', 'aashir@touchstone.com.pk', NULL, '$2y$10$KAqDAAtacNkjuV.f8X8TV..V3.GYZxFeFxRR87eG4S3bHFpNCb/Y.', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:16'),
(509, 43, 18268, 11, 12, 'ABER GREGORY', 'agregory@touchstone.com.pk', NULL, '$2y$10$E350TTP5Sz56ALZAYBPD/OQ0CKkwcLEQHapsnTO1pcixkvufOQ6s.', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:16'),
(510, 43, 18271, 11, 12, 'SHAYAN ALI', 'sali@touchstone.com.pk', NULL, '$2y$10$OcGZ4XxHHd8PUkvEveFu2em5howRYE9Kj5nmhwu.sPs50WcgRKQjC', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(511, 43, 18272, 11, 12, 'ELZABAD VICTOR', 'evictor@touchstone.com.pk', NULL, '$2y$10$5hZEhS2cf7KrKVaYREpBbOZDoXDG51TSfbTPWIx5J1MSxE.bE0rgm', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(512, 63, 18273, 11, 12, 'M SALEEM KHAN', 'thesaleemk@gmail.com', NULL, '$2y$10$yjQraXLNjfkSsxHDntr8cOYikaKxTESuy9nkBkxmBLOwc3h5i2Cuu', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(513, 63, 18275, 11, 12, 'BASIT ALI AWAN', 'abdulbasitfat@gmail.com', NULL, '$2y$10$NtmuEdjWS8xsVM92uD3Qfub76ynyMfs4wJCWpT9zj6jPcakTF1VQq', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(514, 63, 18276, 11, 12, 'MUHAMMAD ARSALAN', 'parachaarxlan@gmail.com', NULL, '$2y$10$J8ehAoQwe08ePs52GOQVfutEHXr.ED2ZYt2GfAhTYg/86em1ZBDEu', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(515, 78, 18278, 11, 12, 'MUHAMMAD USMAN QURESHI', 'musmanqureshi@touchstone.com.pk', NULL, '$2y$10$sYFc20CrcQHyo7fQ4EfvGeH5n2GkwZbNqaGEovLz/wsma3wzN34lu', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(516, 2, 18279, 11, 12, 'CHAUDHARY ABDULLAH ZAFAR', 'cazafar@touchstone.com.pk', NULL, '$2y$10$JV0XL/8i/Xi8jHxeZpZLcO.yDSAG46P3h6VVq3RaNnEXgCK.kXRBq', 1, NULL, NULL, '2021-11-18 22:59:32', '2021-11-19 00:40:17'),
(517, 2, 18280, 11, 12, 'HASSAN NAZIR', 'hnazir@touchstone.com.pk', NULL, '$2y$10$P.RxNnqkfIwKL/f8GrxBl.BRQHEOjJL8R0Lb2s/lisNTJeSC3wMq6', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:17'),
(518, 2, 18281, 11, 12, 'MUHAMMAD FAHAD MURTAZA', 'mfahadmurtaza@touchstone.com.pk', NULL, '$2y$10$fzMj3Jtl3qhcri8LHgRuD.J6UFU7.iD92Iws7hZOfJgjwFc6/gIPW', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:17'),
(519, 2, 18282, 11, 12, 'BILAL AHMAD TAHIR', 'batahir@touchstone.com.pk', NULL, '$2y$10$HWEVkjF33MvycgBi4gVJ2O3.1UGVYuX3rlOXbVJGbnlZzOvze4Zxu', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:17'),
(520, 2, 18283, 11, 12, 'UM E FARWA', 'umefarwa@touchstone.com.pk', NULL, '$2y$10$Vf6TiIT.tLwRuCMkSpVYdeDyyI4GYTALm7yxYGBid0WN6PSnEaPNS', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:17'),
(521, 2, 18286, 11, 12, 'TALHA HAFEEZ', 'thafeez@touchstone.com.pk', NULL, '$2y$10$8FZefqV0wtOBOrEcmDdij.GUHnPS6I0w4Zcnh4EZ2hv4vuBAHi5G2', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:17'),
(522, 63, 18287, 11, 12, 'FAHAD SHOAIB', 'fahadshoaib474@gmail.com', NULL, '$2y$10$5vibApMUVHqx//ZVRK2m8ePc9XPDXqAJQEg74J6e78v4pmEdB9wfO', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(523, 63, 18288, 11, 12, 'MATI ULLAH', 'std102643@uop.edu.pk', NULL, '$2y$10$KtZ0mwVaYKlOpdpyT6OireOcIpwytWwWTj51xkMh.AuyJX0hYNLdu', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(524, 39, 18289, 11, 12, 'ASHBEEL KHAN', 'asbkhan@touchstone.com.pk', NULL, '$2y$10$.bj07EBlqJLrpPdMxur3muL9WXA7iATVwJakY85k66y7CXCljn27i', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(525, 39, 18290, 11, 12, 'HAROON JAVED', 'Hajaved@touchstone.com.pk', NULL, '$2y$10$DIbACcn00Xo2JnA7D5Btgu.B/Rhf.Ba4kuckC2R.RQgs3GILf6aM6', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(526, 39, 18291, 11, 12, 'BAREERA AFAQ', 'bafaq@touchstone.com.pk', NULL, '$2y$10$h9wT1v8k2sHRTHTG/5eUjOZcLLivCrQSQTd24KEFOaLsSexdb1Vm.', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(527, 39, 18292, 11, 12, 'SIMON SOHAIL', 'Simsohail@touchstone.com.pk', NULL, '$2y$10$ScEYdYQeK1Q0LXkH5y6amuxz5OE9/vGnzpGUGb6rF7/knfDRRbSMG', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(528, 16, 18294, 11, 12, 'MUHAMMAD AHSAN NADEEM', 'manadeem@touchstone.com.pk', NULL, '$2y$10$yPAyzxffgWvusjAYmHe0gushFhbQ.Y1qT.0PuwKxnSViTfzvpJKMK', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(529, 38, 18298, 11, 12, 'MAHAM IRFAN', 'mirfan1@touchstone.com.pk', NULL, '$2y$10$pTtI4OcOopp2litbaF0Voe/AOt.LWwgorQjOuGhxdINOsWK3H5kZy', 1, NULL, NULL, '2021-11-18 22:59:33', '2021-11-19 00:40:18'),
(530, 38, 18299, 11, 12, 'ALI ABDULLAH TASHFEEN', 'aatashfeen@touchstone.com.pk', NULL, '$2y$10$G63ailxQDygXI0zzIZLMquNMnz76WAVpEi16GM8KwU0NRzfWc0E02', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:18'),
(531, 43, 18302, 11, 12, 'ZAFAR ALI', 'zali12@touchstone.com.pk', NULL, '$2y$10$DHOzFBd40rBMMq62YPBZFOQB.XsepN9khFVw2W333YTV1JRwXa3MC', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:18'),
(532, 63, 18305, 11, 12, 'FAWAD AHMAD KHAN ', 'fahmadkhan@touchstone.com.pk', NULL, '$2y$10$CuIeGHXb8vIlDqx4ftybHuL0hdKsGxY82OUlscHnVLubmWV0.NFIS', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:18'),
(533, 74, 18306, 11, 12, 'OSAMA IQBAL', 'oiqbal1@touchstone.com.pk', NULL, '$2y$10$K.IVtOh1lx50wvLUeb5Qju9dlKlP/Yg8GSKayQ7.D89gZmtLDQVJO', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:18'),
(534, 78, 18307, 11, 12, 'MOIZ KHAN', 'mkhan1@touchstone.com.pk', NULL, '$2y$10$pDZdBSF9JOfVsy0EQ5Du3OOzIaUQW1pF9vntw7RAwqe8YBKh606um', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:18'),
(535, 43, 18309, 11, 12, 'SOHAIL MAHMOOD KHOKHAR', 'smahmoodkhokar@touchstone.com.pk', NULL, '$2y$10$rPjKa/86QObUvbxi/bnpROTyjLu.gJagcsZZlTg3u6G516fyUYyT2', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(536, 78, 18314, 11, 12, 'KASHIF SAEED', 'ksaeed@touchstone.com.pk', NULL, '$2y$10$GOZAGpX17Nwrz/WXwVSRSOf8DqioGQ1VwA5toGJRfECfSLI0vTvgW', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(537, 74, 18315, 11, 12, 'AYESHA JAMSHED', 'ayesha12@touchstone.com.pk', NULL, '$2y$10$YfD6qxlDnIGm.hUhpNJLpOqBcJlXI1BZkFfwiTzyD4edvgfzM0viy', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(538, 38, 18317, 11, 12, 'MUHAMMAD ADIL', 'madil1@touchstone.com.pk', NULL, '$2y$10$ICnNfCaGLyFUoKaM3mWSpeWb8HNhmgJEKfiwDAeAhL.H5vIrM6cxe', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(539, 78, 18318, 11, 12, 'MUHAMMAD RAFI ULLAH OSAMA', 'mrullahosama@touchstone.com.pk', NULL, '$2y$10$CLQTJcXJrmrwJWOu8SZWeOQ5OFWcQfsEFHg3AKoILb2M.YrVf6Kwa', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(540, 44, 18320, 11, 12, 'ABDULLAH BIN TARIQ', 'abintariq@touchstone.com.pk', NULL, '$2y$10$Wg4m4InyJFfPcaaELM1W4OwCAJesFPHUgRPCVSeclmbtUt794epCK', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(541, 2, 18321, 11, 12, 'MALIK ABDUR RAFAY', 'mabdurrafay@touchstone.com.pk', NULL, '$2y$10$HUIkcgpE5ZtZPhdO9KmDpu.AzkGQC.IP9MK6l1sj0nfT7wDRB7G8m', 1, NULL, NULL, '2021-11-18 22:59:34', '2021-11-19 00:40:19'),
(542, 2, 18323, 11, 12, 'HAMZA USMAN', 'husman@touchstone.com.pk', NULL, '$2y$10$mjgkh29.c27At/Kf51Elq.HGzI3TqDkE3r7rWnJtcDuNDIpGdV59O', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:19'),
(543, 2, 18325, 11, 12, 'MALIK SANA ULLAH SAQIB', 'msullahsaqib@touchstone.com.pk', NULL, '$2y$10$M7lyG8hyusgVmnPnSf0YY.visSnCGap28/a6acyK6snWU0O1pyhjG', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:19'),
(544, 2, 18326, 11, 12, 'KHIZAR MEHMOOD', 'Kmehmood@touchstone.com.pk', NULL, '$2y$10$fExIeI7/jjXXUTRhO4JTDOBKCqDPX4qiA8TAviZq0uEc9ISFDNa5K', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:19'),
(545, 2, 18327, 11, 12, 'CHAUDRY MOHAMMAD SAAD RIZWAN', 'chsaadrizwan@touchstone.com.pk', NULL, '$2y$10$iKA87AxnWlZ3e9wZbrpYWuitrN4uxgI9b55kv8YRB9JJGf6NhY8eO', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:19'),
(546, 2, 18328, 11, 12, 'MUHAMMAD SHAHZEB AHSAN CHEEMA', 'Msahsancheema@touchstone.com.pk', NULL, '$2y$10$zdEhy.OvUiVfWi4g4rzL9.viJk1dcGeQ5X2Y8wX3EAJ2kukDS81xq', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:19'),
(547, 2, 18329, 11, 12, 'ZAIN ALI', 'zali1@touchstone.com.pk', NULL, '$2y$10$eX8BrfKgHNrC0Vdk0Q1RP.AtVHANtFc3zGaFlKjBqe2w6gHZcKn0C', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:19'),
(548, 44, 18330, 11, 12, 'MUHAMMAD USMAN', 'musman1@touchstone.com.pk', NULL, '$2y$10$M6kSIO6G7gTVljTOJBPx/.DIwfTYcQ0q5qPkDOpNvfDtSASfAO23W', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(549, 44, 18331, 11, 12, 'MUHAMMAD ALI ASIF', 'maliasif@touchstone.com.pk', NULL, '$2y$10$nw23hCxZS460qa2wCDEBnu4dxT/34lYGpY3GI8GZhw2qCUgt0ZZRu', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(550, 63, 18354, 11, 12, 'AFRAHIM AHMAD', 'afrahmad@touchstone.com.pk', NULL, '$2y$10$895sE6sHrtDAkmcf9uKCfOxtgaAQRv5SwXRiFSziops88cdkj1Gc6', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(551, 63, 18355, 11, 12, 'YASIR LIAQAT', 'yliaqat@touchstone.com.pk', NULL, '$2y$10$OEYTI0RR7mkhsT9HVTLx9.qdirkuyWiSoDSyyx.dqGprGKT8OJzeq', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(552, 63, 18356, 11, 12, 'MUHAMMAD SHAHAB', 'mshahab12@touchstone.com.pk', NULL, '$2y$10$Mw0cPBOlrSpuvm.JfBGFyuYurcrOvTnaEQ7RsynZGNsnnoDY547tu', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(553, 40, 18358, 11, 12, 'AHMED BILAL MUGHAL', 'abmughal@touchstone.com.pk', NULL, '$2y$10$3OCSjok6htit0cw9FGbLguWNiYbZH7QY9ozCUJ5gIpO.KEf5nC4MO', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(554, 40, 18360, 11, 12, 'MAHAD ALI', 'MahAli@touchstone.com.pk', NULL, '$2y$10$p2eDE3p6QhW/o0moOYJAWeH.NuTasbp97qtJO829WxLYjXRE2xkhK', 1, NULL, NULL, '2021-11-18 22:59:35', '2021-11-19 00:40:20'),
(555, 39, 18361, 11, 12, 'WALEED TARIQ', 'Watariq@touchstone.com.pk', NULL, '$2y$10$n5cYzYeGlZskKyEKOaX9q.WV8WpDh4tJntNbkSfiXk34wrwSUoxTW', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:20'),
(556, 39, 18365, 11, 12, 'FAREHA SAROOD', 'FSarood@touchstone.com.pk', NULL, '$2y$10$5yMIswehZ7JLh4qW0z0fAecZsYcqZIBrWFIlQjI2.o2OneDrvkNUy', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:20'),
(557, 3, 18369, 30, 31, 'MUHAMMAD ANIL SHEIKH', 'masheikh@touchstone.com.pk', NULL, '$2y$10$QgeJRgHVI05wJx4PzbcvV.VeHQSFU/ZAyU6.I/jssTMtT5YJaC2qi', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:20'),
(558, 44, 18373, 11, 12, 'SYED HASEEB ALI SHAH ZAIDI', 'shaszaidi@touchstone.com.pk', NULL, '$2y$10$A7zrb1LPhHdjmrHnkexaQ.ZqJT3sfcgcq6s/5b/TiYZm3pF.Ufune', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:20'),
(559, 44, 18374, 11, 12, 'FARRUKH MEHMOOD AWAN', 'fmehmoodawan@touchstone.com.pk', NULL, '$2y$10$RrMStIIi2WxEvh2O5wv3ze0rFilJPC/vrYEOw3zwZchuEc2j/IcOe', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:20'),
(560, 45, 18375, 11, 12, 'USAMA SHAKEEL ', 'usshakeel@touchstone.com.pk', NULL, '$2y$10$Z7KMECfA2km7yu8fZAoIJ.02g6AUovpQiWVVA6Aas3F2gQS0F3iwi', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:20'),
(561, 43, 18376, 11, 12, 'MUHAMMAD TALHA KHURSHID', 'mtkhurshid@toucshtone.com.pk', NULL, '$2y$10$uAnqj5d6X7DYfz.Siq3S1eynLVwxbcC2hSEW6G/7YptrRHyil9Jr6', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(562, 16, 18382, 11, 12, 'MUHAMMAD HASEEB GUL', 'mhasgul@touchstone.com.pk', NULL, '$2y$10$wpqy.AeNEeJH2CMEKBDkiucqKtZiCnF.UP/98pPXq29lntuYU/.4O', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(563, 75, 18383, 11, 12, 'SHAHZAIB WAHEED', 'shawaheed@touchstone.com.pk', NULL, '$2y$10$i8Ben2XM0Ud7/5wnRwGrm.buexz.F9t2Aa9FFW8vQnEnCLjgZ50K.', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(564, 63, 18396, 11, 12, 'ADREES SALEEM', 'adreessaleem38@gmail.com', NULL, '$2y$10$qRRG5LsDCegoC3QQXdMEw.SzgqvaxVEY.B9iRo9mSIrslfCP/V/hS', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(565, 63, 18397, 11, 12, 'NADEEM ALI', 'alifkhanxyz6@gmail.com', NULL, '$2y$10$oewe3HCOsUkM8reulfr5/.e7Xj43Q8I5q41qNL7h0uJntfSnzYA8C', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(566, 44, 18405, 11, 12, 'ZULQUARNAIN HAIDER', 'zulquarnain@touchstone.com.pk', NULL, '$2y$10$E2TrvbMa5hV2qurxqLymIu03kotWseJaJPDKu0B6exdj3hzcyXNGW', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(567, 44, 18407, 11, 12, 'HAMZA KHAN', 'hamzakhan@touchstone.com.pk', NULL, '$2y$10$uZ./3pFA9dGIKRVdcBi2p.Ee2kceiWc0n6HgWtbVc.banifX/fSaa', 1, NULL, NULL, '2021-11-18 22:59:36', '2021-11-19 00:40:21'),
(568, 44, 18409, 11, 12, 'ATIF MEHBOOB', 'atifmehboob@touchstone.com.pk', NULL, '$2y$10$Z.3/ZLkjCC0R4UEgZlw6kuX1BtFnhe0cbS5uK9Lud5cR.cEy5DKLO', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:21'),
(569, 44, 18411, 11, 12, 'ZARYAB KHAN', 'zaryabkhan@touchstone.com.pk', NULL, '$2y$10$3Aruh..draW/GRo1qbPKTeUmYYUzeT89MuinBV6L.YEwKKo3l5KIa', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:21'),
(570, 44, 18412, 11, 12, 'MUHAMMAD JUNAID', 'mujunaid@touchstone.com.pk', NULL, '$2y$10$53fa5nlNOMt6wn5fFUeI.OEe1/kVbnf19Ylanm/pmW2AxEMmCZhmK', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:21'),
(571, 2, 18415, 11, 12, 'AARIJ FAZAIL', 'aafazail@touchstone.com.pk', NULL, '$2y$10$p0kE3IW23NisMUZSrV5GKe4/eji.XDH6BjKPE.ayqiskpl611qTu6', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:21'),
(572, 14, 18416, 39, 40, 'MUHAMMAD TAIMUR JAN KHAN BABAR', 'tbabar@touchstone.com.pk', NULL, '$2y$10$aizEA7/HUf3SLrPHrQxcWO9pWRQKtTwmPtD8MLfg3Io2Pyt5loAlm', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:21'),
(573, 40, 18418, 11, 12, 'MUHAMMAD HAMMAD', 'muhhammad@touchstone.com.pk', NULL, '$2y$10$WQnrhmVAXa2I43MsI4aWHuHq6h1Toz5BtKWvOJ8PKdFhwSDv.Q.DK', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:21'),
(574, 39, 18421, 11, 12, 'AGHLAMASH KASHFEET', 'AKashfeet@touchstone.com.pk', NULL, '$2y$10$o7NnWw/kmczvpP2/g5J8JOSkxiLfZ3c3fmfiQeySHf6CRXDjl5xkq', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(575, 38, 18426, 11, 12, 'MUHAMMAD RAFAY SHOAIB', 'mrafayshoaib@touchstone.com.pk', NULL, '$2y$10$sYjtJEID9Aeg/aAq37JP0OyaGH/Prscz8yBRSi4dT8et57wcPUBcG', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(576, 63, 18430, 11, 12, 'MUHAMMAD SHAMAL KHAN', 'spider_sml2000@yahoo.com', NULL, '$2y$10$26ty6eiECVQtkNy8rtAVNu2wmRspl09pG2Oqk0d6ZHxRuhUlvmiX2', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(577, 63, 18431, 11, 12, 'MUSSADIQ ALI BAIG', 'mussadiq54@gmail.com', NULL, '$2y$10$1wOZ.g8WrPaOKtcil5g.j.tQDzuR8zV2DwSyndi9uPT8.8.svvt66', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(578, 63, 18432, 11, 12, 'HAMID AFRIDI', 'hamidafridi687@gmail.com', NULL, '$2y$10$jq64S3036gs5nTCYwET8gezb4nGWggf4CQVYjzc703.3sAa2CZS9u', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(579, 63, 18434, 11, 12, 'MUHAMMAD AWAIS', 'awaiseqarni696@gmail.com', NULL, '$2y$10$s2v/qZOtnGebS/EkO0g21ujH9QxYOmdRJdkn1.c3mdp/Sid33dNNS', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(580, 63, 18435, 11, 12, 'IJAZ AHMAD FAROOQI', 'ijazahedf@gmail.com', NULL, '$2y$10$jHscVv8MpJWK2NaJmmFca.wtkKmebR/mPpzB9CwhBjYZt95oTdyXS', 1, NULL, NULL, '2021-11-18 22:59:37', '2021-11-19 00:40:22'),
(581, 2, 18436, 11, 12, 'HASEEB AHMAD', 'haseebahmad1@touchstone.com.pk', NULL, '$2y$10$xw844/Wo3nsrXavFWPYTuOTfaIg28POUjaFMRPe9Q0UgBJ6rISCyq', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:22'),
(582, 2, 18437, 11, 12, 'AHSAN SARFRAZ', 'ahsarfraz@touchstone.com.pk', NULL, '$2y$10$mCkpXl2C3yKeFbAPTrj/eu0IbU1FN/v6wH1HYvwy6Y.GEmVOksORy', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:22'),
(583, 2, 18438, 11, 12, 'SHAHZAD ADIL', 'Shahadil@touchstone.com.pk', NULL, '$2y$10$rRHxi9KcLUiRRjAqZwrTUOXr47gwzm05i9kmkDgf3iCxXbjcwRk7e', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:22'),
(584, 2, 18439, 11, 12, 'MOHSIN ALI SYED', 'mohalisyed@touchstone.com.pk', NULL, '$2y$10$n/9uh8RE97PoGdP0HABHgujqXTJj39wUPtBWz.D2NcrLkMmB2GmBu', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:22'),
(585, 2, 18440, 11, 12, 'MUHAMMAD ABRAR', 'muhammadabrar1@touchstone.com.pk', NULL, '$2y$10$MdhsHz/bxBe5fh/7nMHubOCv1G/Ae3/M9FugAM6awoMC0Kwyjm66S', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:22'),
(586, 2, 18441, 11, 12, 'FAHAD NAZIR', 'fnazir1@touchstone.com.pk', NULL, '$2y$10$reoLdYgIbHDuP3vrnraW.uXmZtwYd9P5yhHKbTEMJeb2WPfjFkOu6', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:22'),
(587, 2, 18442, 11, 12, 'USAMA UMAR', 'usamaumar@touchstone.com.pk', NULL, '$2y$10$Jvr4123xZRZnCyhTnzpJYO/ovL4M2xSgYMOKtJufdmk4BvSbr2Dpu', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(588, 2, 18443, 11, 12, 'ABDUL SHAKOOR', 'abdulshakoor@touchstone.com.pk', NULL, '$2y$10$90g4mXPSUFlyxa6Xm/HYdOPYQX33fB2a4TMYv9nshiL3jd.9njxK6', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(589, 63, 18448, 11, 12, 'NAVEED KHALID', 'naveedkhalid140@gmail.com', NULL, '$2y$10$HDkbaGLITzdo8mLdJx4DYe6DRjsx7Nd.FXIDpJayaJwXkPx/sM9XG', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(590, 63, 18452, 11, 12, 'MUBBASHIR AHMED', 'mubashira174@gmail.com', NULL, '$2y$10$sfn113Oo5cEUeiX2kYSEiesT6tv0KXLGKtdV3Kj3cukpi32aQ/p3W', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(591, 40, 18453, 11, 12, 'MUBEEN ALAF KHAN', 'malaf@touchstone.com.pk', NULL, '$2y$10$vs1eQnufOMkiIaiR509i2O87QLt6WlwqZ7/kq7zhlakhKnbAjonp2', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(592, 39, 18454, 11, 12, 'IMRAN MASOOD', 'imasood@touchstone.com.pk', NULL, '$2y$10$dCVoBwQAfPnJE0.W5XqO3.4KyIoyNqe4fsDQ307fMWfPAuw8xpHY2', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(593, 39, 18455, 11, 12, 'HASSAM ALI', 'hasmali@touchstone.com.pk', NULL, '$2y$10$ILAG4dWce6iax5Vs99SHnO3CoXbrVCIZd.J6yYXDkrXtcFGIIZoFy', 1, NULL, NULL, '2021-11-18 22:59:38', '2021-11-19 00:40:23'),
(594, 74, 18457, 11, 12, 'AANAB TAHIR', 'aanabtahir@touchstone.com.pk', NULL, '$2y$10$.EKvGPtZ4UtwbIZcwysr1OC4oXCjPQdNZCwx3YljJy.7eyBhesSVG', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:23'),
(595, 78, 18459, 11, 12, 'IQBAL MOEEN', 'iqbalmoeen@touchstone.com.pk', NULL, '$2y$10$WJ8CEioRG1YronNmb9uipuck3B6GyRhMhxU6gPxKuP3ULK9j15vna', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:23'),
(596, 16, 18460, 11, 12, 'AMIR HAYAT KHAN', 'Amirhayatkhan@touchstone.com.pk', NULL, '$2y$10$UOv.yw2IMHTH58jW9kRgcOUV/ZsaD8Km56lKTYNR2/Y0CuIynV2Ga', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:23'),
(597, 40, 18463, 11, 12, 'SYED SHEHERYAR HAIDER RIZVI', 'srizvi@touchstone.com.pk', NULL, '$2y$10$97jQ/pxeW2JC7PXYnLf6OelGcfOWXgj5hU6TSosgylJ9raZOQIeTW', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:23'),
(598, 3, 18469, 30, 31, 'RAMEEZ ARSHAD', 'rameezarshad@touchstone.com.pk', NULL, '$2y$10$JmoPy9fQVHJioOQjyiwWhOQQaK.TBVXr7v33UQcc/KPUI9A.m9d2u', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:23'),
(599, 56, 18470, 11, 12, 'HUZAIFA HAMMAD MALIK', 'huzaifahammadmalik@touchstone.com.pk', NULL, '$2y$10$XluKtYhhUHXtbJ75kJP76OCn6VsBd0fVR2XIaCztUx2n403l7rGpW', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(600, 40, 18471, 11, 12, 'RAI HARIS MANZOOR', 'rhmanzoor@touchstone.com.pk', NULL, '$2y$10$J4CWFFaDOy7oH0HEa2qXveZqARjo0coie2xsXHiwyItDtLDQOTM8u', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(601, 14, 18473, 14, 15, 'IRFAN FEROZE', 'iferoze@touchstone.com.pk', NULL, '$2y$10$K6QVg5P04ehVh7LeszpAu.FZ9j5uNO/VGTIWBFyb5yjseOIvUQaPm', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(602, 76, 18481, 11, 12, 'SARA ZAHID', 'srzahid@touchstone.com.pk', NULL, '$2y$10$4CCo9LspHcRg56WjfplteuophQ0WURyE/NIBOfANUdzoQhHK0Beve', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(603, 76, 18482, 11, 12, 'MUHAMMAD FAHAD', 'mhfahad@touchstone.com.pk', NULL, '$2y$10$zjERPbQnqMWAVXgtZ8WJc..VR77uEpCN6zK6NaBlAaVaMZf/Dnnb6', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(604, 76, 18483, 11, 12, 'MUHAMMAD HARIS', 'mharis1@touchstone.com.pk', NULL, '$2y$10$PRMjEfqKMtB1s2myOsp9seGUS5pCYtXYXUwQv5oxKpNB1qYmdYwsm', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(605, 76, 18484, 11, 12, 'RABBIA RASOOL', 'rrasool@touchstone.com.pk', NULL, '$2y$10$3ufzp6RMxNqNwp/3hUQUku08at1w.l6nD1SRJAp/y4qyHgW99Dzs.', 1, NULL, NULL, '2021-11-18 22:59:39', '2021-11-19 00:40:24'),
(606, 76, 18485, 11, 12, 'MUZAMMIL SHAHZAD', 'mzshahzad@touchstone.com.pk', NULL, '$2y$10$EIJHCr39PAVUJSGfSiaK9ezA7ZNCDyqfyxdfjs86aXmA5n41MF7yS', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:24'),
(607, 76, 18486, 11, 12, 'SHAHEEN HUSSAIN ', 'snhussain@touchstone.com.pk', NULL, '$2y$10$VOSVgMQ5yQyaiq4ERtkQLuT0wN3JErwjzypL4TKwloKn1Ief6iXzC', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:24'),
(608, 76, 18487, 11, 12, 'MUHAMMAD SEEMAB QASIM', 'msqasim@touchstone.com.pk', NULL, '$2y$10$7wD008OYOvadsFOXLomW/uaynQWH66sjr0QWG8Nf83pCVIQghAsJ2', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:24'),
(609, 76, 18488, 11, 12, 'ANEEQ J SAMUEL', 'ajsamuel@touchstone.com.pk', NULL, '$2y$10$9yaVBNxk/CUomCZfowA3POa23HPiW8ZCpEVtmsKJkBoJ7cbYrI0Ju', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:24'),
(610, 76, 18489, 11, 12, 'HUMA SAJID', 'husajid@touchstone.com.pk', NULL, '$2y$10$TF9Qvq4V/H5eA6Vwp4jFPevK3/TyHmH6z7XJAC5.Ln5kP3.zPmGcq', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:24'),
(611, 76, 18494, 11, 12, 'AJMAL HUSSAIN', 'ajhussain@touchstone.com.pk', NULL, '$2y$10$rvXRWFM4Bo7jLnqLqiRTMeO634MPO3ATM0o0LUiUuOUqnDqsxpdQ.', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:24'),
(612, 76, 18495, 11, 12, 'NAUMAN MUNIR', 'nmunir@touchstone.com.pk', NULL, '$2y$10$sWf1A80KHx1rLNXG1ZGU1OMZeq2w7s8joiT8yVE3KHbrc4H8cZaZW', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(613, 76, 18496, 11, 12, 'AHMED ANWAR', 'ahanwar@touchstone.com.pk', NULL, '$2y$10$JXgJPTaY5q4kalhBDa2okeMGXNJKy32fFFba9tbEaPmvtK/hSbI7a', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(614, 39, 18500, 11, 12, 'MASHOOD ALAM', 'malam@touchstone.com.pk', NULL, '$2y$10$ZiqfCHtggxYLg43qloT6Re4bbVibCKhV3hdjhJs1Gk4tkmeL/IKla', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(615, 40, 18503, 11, 12, 'ABISHAI PERVAIZ', 'Abpervaiz@touchstone.com.pk', NULL, '$2y$10$tBUDCj1S0Dpy6fLcSNe41OIP.QeWO5ObEk.kvftuAJVmSev3/EokG', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(616, 40, 18504, 11, 12, 'ALI RAUF TURABI', 'arturabi@touchstone.com.pk', NULL, '$2y$10$.fIo.MG/TqLw4vkrS1JGvuwVaR6V0iR4fOvwTbjz6lb2y3Gu4AMqG', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(617, 74, 18509, 11, 12, 'KAMIL KAMAL', 'kkamal@touchstone.com.pk', NULL, '$2y$10$ZjRsghUlzQ4ApfkB8SW3/uJY8cHvAYuMHrWovx/Ya9jWVxOZGxQwK', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(618, 76, 18510, 11, 12, 'MARYAM IRSHAD', 'mirshad@touchstone.com.pk', NULL, '$2y$10$3WTzgToaYDZSK7tzn5iLBOC91FEAFd2KBfFZRvrmBd1wSIZp2wQlW', 1, NULL, NULL, '2021-11-18 22:59:40', '2021-11-19 00:40:25'),
(619, 39, 18512, 11, 12, 'DANIYAL AMIR', 'dyamir@touchstone.com.pk', NULL, '$2y$10$Wkz62Tv2DatGNOPjQ9pDaOQJGFAa7HXWFc5jNd5onAuNMzDmw2Squ', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:25'),
(620, 40, 18513, 11, 12, 'ASJAD BIN SAJID MUGHAL', 'absajid@touchstone.com.pk', NULL, '$2y$10$j2BDS66dthI7tO9bpJYfgeLJvsRnK1QWwLuqZ45E//F3tsJW6OzPK', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:25'),
(621, 40, 18514, 11, 12, 'AZAAN HASSAN QURESHI', 'ahqureshi@touchstone.com.pk', NULL, '$2y$10$1xT5rqva4vbB91R.FwkpIuIox9Jwhtc9YkP.TgQd/ASiMgUdHeiZu', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:25'),
(622, 39, 18515, 11, 12, 'USAMA NISAR', 'unasir@touchstone.com.pk', NULL, '$2y$10$XiuEj4OF7D6htShkYxchvOZ2fROaOJDYOoy9aGAJSXqobAaPsfAny', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:25'),
(623, 56, 18516, 11, 12, 'EBIJAIL', 'ebijail@touchstone.com.pk', NULL, '$2y$10$sd7lTD1/Eu/egHYK3ojUaO9Fld33XuIxg30Ja/gidUJHdpvZ9lJ7O', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:25'),
(624, 56, 18517, 11, 12, 'RAMISH MAHER', 'rmaher@touchstone.com.pk', NULL, '$2y$10$9VUdYRv9joZOs9aXu1MS2uxHNId2sCcDIo8gQa6AGelNWt4qCGv8O', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:25'),
(625, 43, 18518, 11, 12, 'MUHAMMAD ISTEFAR ULLAH KHAN', 'istefar@touchstone.com.pk', NULL, '$2y$10$LNDqTvf1FRa1jh7ti0.HCekOwKYfPuPZ.jTxGK9tnuRO7TM1cYz/e', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(626, 43, 18519, 11, 12, 'SHAHBAZ KHAN MAHSUD', 'shahbazkhan@touchstone.com.pk', NULL, '$2y$10$.BhhcFSHxwCa3b0BFH0UCuiTfYuQjuWB2Db9TsPh36.8OuidEfvTi', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(627, 43, 18520, 11, 12, 'ASAD NASEER', 'asadnaseer@touchstone.com.pk', NULL, '$2y$10$OevKFd9lt3m1U8pyETprf.3i8LKkB/8ui0XGcGpYn8GGOmzaPlvAe', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(628, 43, 18521, 11, 12, 'MUHAMMAD UMAR', 'muhammadumar@touchstone.com.pk', NULL, '$2y$10$FMoio3rtcykaERJWuZFRXO8vWizzj3HV6yfqtfehwPI.zU0C6HTV6', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(629, 43, 18522, 11, 12, 'MAAZ AHMED', 'maazahmed@touchstone.com.pk', NULL, '$2y$10$0uE17BwG26xSAUdPiptZfuGPOIqlkhZ3WzOzVsM6IKMBQjJfhdG66', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(630, 76, 18525, 11, 12, 'MEHAK', 'mehak@touchstone.com.pk', NULL, '$2y$10$PjAvdttIGiiRcX20yiASae4b/cGHMaapmV3yF7c12RVx1JV6qopa6', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(631, 2, 18528, 11, 12, 'WAQAS ARIF', 'waqasarif@touchstone.com.pk', NULL, '$2y$10$PrbwSNTrtsFxRieneiuyB.tfOizGBE/znzbHBPXuPGPHj24pb/gNS', 1, NULL, NULL, '2021-11-18 22:59:41', '2021-11-19 00:40:26'),
(632, 2, 18529, 11, 12, 'USAMA BHATTI', 'usamabhatti@touchstone.com.pk', NULL, '$2y$10$Nplt1gEFfesduz3QVoVauuHpqklzs3usm1UP5d5g4P1Xnz/1i7NGi', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:26'),
(633, 2, 18530, 11, 12, 'HUMA HUSSAIN', 'humahussain@touchstone.com.pk', NULL, '$2y$10$TXLhHfADtbLL2rX203RFfuFozAgtKNwzVaRSkYmotADrMOOn9FS0e', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:26'),
(634, 2, 18531, 11, 12, 'SALMAN TARIQ', 'salmantariq@touchstone.com.pk', NULL, '$2y$10$tQwaMo7yuzBlAVEHtEI2U.dxoPN3l/pph/ax7m4wGErdPn1mjYy6.', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:26'),
(635, 2, 18532, 11, 12, 'MUHAMMAD HAMZA ALI', 'muhammadhamzaali@touchstone.com.pk', NULL, '$2y$10$VZ7yitLeYuDXLsGYlVHVK.5QUtHpW6cvMrjxgESK.hcwU.pAkP9ri', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:26'),
(636, 2, 18533, 11, 12, 'MUHAMMAD AASHIR', 'Muhammadaashir@touchstone.com.pk', NULL, '$2y$10$dhkT265Ok11MkSdOZz3znecGN3xmLB0jOjLX9mCBvxAn0GZwkUqoe', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:26'),
(637, 45, 18535, 11, 12, 'DUA FATIMA ', 'duafatima@touchstone.com.pk', NULL, '$2y$10$n.s3NnLhtmHHLMcphsr5qOIxjCUOSmQbqWyzWlL5zTTyRLYK3NLlK', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:26'),
(638, 56, 18536, 11, 12, 'TAHIR ZAMAN', 'tahirzaman@touchstone.com.pk', NULL, '$2y$10$1EfeSpDdJa/lAnz7EY84puDedOe1JNfEy2JYsQKozK4DMRdJstim.', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(639, 56, 18537, 11, 12, 'ZOHAIB ASHFAQ QURESHI', 'zohaibashfaq@touchstone.com.pk', NULL, '$2y$10$IG5o5AJ2jlBnn6QS05uJv.F62KNcPHF.iqzzwGCjTrPsRbSwyWsSe', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(640, 56, 18538, 11, 12, 'MUHAMMAD MUBEEN MALIK', 'mubeenmalik@touchstone.com.pk', NULL, '$2y$10$EKBOkQPuEeyXwU4fFpXjpeDcXqZGhCrwiA.zMTu0GCo8JAkg.4.fC', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(641, 56, 18539, 11, 12, 'SACHA', 'sacha@touchstone.com.pk', NULL, '$2y$10$Uo49THKO43UfmMAFiuHhiOuyCAeFSKhbYvBPhXfN/ltEJbfftMusW', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(642, 78, 18540, 11, 12, 'TARIQ MEHMOOD', 'tariqmehmood@touchstone.com.pk', NULL, '$2y$10$AgSQbcJY0kKnvlmIYGljjOpMiDyT3lnVIjeLp.DBlFSIyrLFMMB4a', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(643, 78, 18541, 11, 12, 'HASHIR FAROOQ', 'hashirfarooq@touchstone.com.pk', NULL, '$2y$10$sxGQ9MrL6bWJDiCRotsh8e/d3X6BvryBObvW/rt.TBlC.cLOVyAvK', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(644, 43, 18542, 11, 12, 'AMMAD UDDIN', 'ammaduddin@touchstone.com.pk', NULL, '$2y$10$.dQAOOWGZRVGQNFpmLILS.deO4laEUlZHJ2srRpXyzOsAJmzSoEAi', 1, NULL, NULL, '2021-11-18 22:59:42', '2021-11-19 00:40:27'),
(645, 78, 18543, 11, 12, 'AQIB HUSSAIN SHAH', 'aqibhussainshah@touchstone.com.pk', NULL, '$2y$10$nSzHABJVz2MS3UXjXRS7xOxHM3Xt4LLOhL1oeDuMNwYiFhkkhmE3u', 1, NULL, NULL, '2021-11-18 22:59:43', '2021-11-19 00:40:27'),
(646, 78, 18544, 11, 12, 'SYED ISRAR HUSSAIN SHAH', 'syedisrarhussain@touchstone.com.pk', NULL, '$2y$10$UygZAOKhcYNQ9mJEJ8E/N.O1pKIUKA74EsSojTezuXN6qmFRagE.u', 1, NULL, NULL, '2021-11-18 22:59:43', '2021-11-19 00:40:27'),
(647, 40, 18545, 11, 12, 'DANISH KHATEEB', 'dkhateeb@touchstone.com.pk', NULL, '$2y$10$zOOhiifDrKMeRzBY8t08o.hI1/zk38T/N9rzM/fyxhsz56944hlpO', 1, NULL, NULL, '2021-11-18 22:59:43', '2021-11-19 00:40:27'),
(648, 40, 18546, 11, 12, 'TALHA MIRZADA', 'tmirzada@touchstone.com.pk', NULL, '$2y$10$TEhs17r1cORBJxB1hKOVquad9TgoWQFJYhcut2cACxUpVVQFIANL6', 1, NULL, NULL, '2021-11-18 22:59:43', '2021-11-19 00:40:27'),
(649, 39, 18547, 11, 12, 'LAIBA NAJAF', 'narana@touchstone.com.pk', NULL, '$2y$10$V2wtln45jpfVu1sUkkLgmujHOxPUre.TYbuv20YKmNLHCklzSD36W', 1, NULL, NULL, '2021-11-18 22:59:43', '2021-11-19 00:40:27'),
(651, 15, 2252, 75, 2074, 'AWAIS HASSAN RASHID', 'ahr@touchstone.com.pk', NULL, '$2y$10$Sojs8XUMTRKlOoP/K81fCOeK.aXUrOwfo5aEF.B/C9Et0/JrE1rH.', 1, NULL, NULL, '2021-11-19 00:39:41', '2021-11-19 00:39:41'),
(652, 15, 3030, 75, 2074, 'ARBAZ KHAN', 'hbs26@hbs.com', NULL, '$2y$10$1WQpU.fbFaa1Z3cAgo6uAOO3x9OwJeE3gFkQJmUqyLJSt.3nmn4rK', 1, NULL, NULL, '2021-11-19 00:39:45', '2021-11-19 00:39:45'),
(653, 15, 3394, 75, 2074, 'ZEESHAN MUSHTAQ', 'zemushtaq@touchstone.com.pk', NULL, '$2y$10$CcPOwjUgHcZKi9AHpnHjrOcP7fZC6LHStw4UpuBeoZfyYrCKx0/fq', 1, NULL, NULL, '2021-11-19 00:39:47', '2021-11-19 00:39:47'),
(654, 15, 4858, 75, 2074, 'HAFIZ SALMAN KHALID', 'hskhalid@touchstone.com.pk', NULL, '$2y$10$EUaUFSCwMLLx7eN1rkq8luU4Pd.vENoFm9n6Ep29uLLl2na.x.8Re', 1, NULL, NULL, '2021-11-19 00:39:51', '2021-11-19 00:39:51'),
(655, 15, 5992, 75, 2074, 'AQSA HAFEEZ', 'ahafeez@touchstone.com.pk', NULL, '$2y$10$dG0Sx4xCFAQeDV8t5NR8Susx7TjTgQefRZNQUUgKx9RlpfUOZ4gqm', 1, NULL, NULL, '2021-11-19 00:39:52', '2021-11-19 00:39:52'),
(656, 15, 7092, 75, 2074, 'HARRIS AZHAR GHAURI', 'haghauri@touchstone.com.pk', NULL, '$2y$10$59i0vfGEiJAHx55/xkYAIOhmwDWUf0yJ4VmS13S/phbQ9i6LlE/Me', 1, NULL, NULL, '2021-11-19 00:39:54', '2021-11-19 00:39:54'),
(657, 15, 17784, 75, 2074, 'SYED MUHAMMAD ALI', 'smuali@touchstone.com.pk', NULL, '$2y$10$NQhWJvkBtQhE/qK8VSf83u8Cw23FwUfPVtRNYwz0cynGf9lzyFaPG', 1, NULL, NULL, '2021-11-19 00:40:05', '2021-11-19 00:40:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_meeting_type`
--
ALTER TABLE `campaign_meeting_type`
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
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `campaign_meeting_type`
--
ALTER TABLE `campaign_meeting_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meeting_requests`
--
ALTER TABLE `meeting_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_types`
--
ALTER TABLE `meeting_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=658;

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
