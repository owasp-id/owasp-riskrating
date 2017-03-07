-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 30, 2016 at 01:28 AM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'A1 - Injection', '2016-08-26 08:43:10', '2016-08-26 10:55:25'),
(2, 'A2 - Broken Authentication and Session M', '2016-08-26 08:43:16', '2016-08-26 10:55:40'),
(3, 'A3 - Cros Site Scripting', '2016-08-26 08:43:21', '2016-08-26 10:55:57'),
(4, 'A4 - Insecure Direct Object', '2016-08-26 08:43:25', '2016-08-26 10:56:09'),
(5, 'A5 - Security Misconfiguration', '2016-08-26 08:43:30', '2016-08-26 10:56:19'),
(6, 'A6 - Sensitive Data Exposure', '2016-08-26 08:43:34', '2016-08-26 10:56:36'),
(7, 'A7 - Missing Function Level Access Contr', '2016-08-26 08:43:38', '2016-08-26 10:57:14'),
(8, 'A8 - Cross Site Request Forgery', '2016-08-26 08:43:41', '2016-08-26 10:57:27'),
(9, 'A9 - Using Components with Known Vulnera', '2016-08-26 08:43:45', '2016-08-26 10:57:38'),
(10, 'A10 - Unvalidated Redirects and Forwards', '2016-08-26 08:43:49', '2016-08-26 10:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `factor`
--

CREATE TABLE IF NOT EXISTS `factor` (
  `id_factor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_host` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `skill_level` int(11) NOT NULL,
  `motive` int(11) NOT NULL,
  `opportunity` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `ease_discovery` int(11) NOT NULL,
  `ease_exploit` int(11) NOT NULL,
  `awareness` int(11) NOT NULL,
  `intrusion_detection` int(11) NOT NULL,
  `loss_confidentiality` int(11) NOT NULL,
  `loss_integrity` int(11) NOT NULL,
  `loss_availability` int(11) NOT NULL,
  `loss_accountability` int(11) NOT NULL,
  `financial_damage` int(11) NOT NULL,
  `reputation_damage` int(11) NOT NULL,
  `non_compliance` int(11) NOT NULL,
  `privacy_voilation` int(11) NOT NULL,
  `impact` enum('low','medium','high') COLLATE utf8_unicode_ci NOT NULL,
  `likelihood` enum('low','medium','high') COLLATE utf8_unicode_ci NOT NULL,
  `overall` enum('note','low','medium','high','critical') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_factor`),
  KEY `factor_id_host_foreign` (`id_host`),
  KEY `factor_id_category_foreign` (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=231 ;

--
-- Dumping data for table `factor`
--

INSERT INTO `factor` (`id_factor`, `id_host`, `id_category`, `skill_level`, `motive`, `opportunity`, `size`, `ease_discovery`, `ease_exploit`, `awareness`, `intrusion_detection`, `loss_confidentiality`, `loss_integrity`, `loss_availability`, `loss_accountability`, `financial_damage`, `reputation_damage`, `non_compliance`, `privacy_voilation`, `impact`, `likelihood`, `overall`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 4, 7, 6, 9, 5, 9, 3, 2, 3, 5, 7, 3, 1, 2, 5, 'medium', 'medium', 'medium', '2016-08-26 08:49:51', '2016-08-26 10:44:50'),
(2, 1, 2, 3, 9, 4, 6, 7, 5, 9, 3, 2, 3, 5, 7, 7, 9, 5, 5, 'medium', 'medium', 'medium', '2016-08-26 08:49:51', '2016-08-26 10:45:44'),
(3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 08:49:51', '2016-08-26 10:46:01'),
(4, 1, 4, 3, 4, 7, 9, 7, 5, 9, 8, 6, 5, 5, 7, 1, 1, 2, 5, 'medium', 'high', 'high', '2016-08-26 08:49:51', '2016-08-26 10:46:37'),
(5, 1, 5, 3, 4, 4, 2, 7, 5, 9, 6, 2, 1, 5, 1, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 08:49:51', '2016-08-26 10:47:14'),
(6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 08:49:51', '2016-08-26 10:47:44'),
(7, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 08:49:51', '2016-08-26 10:48:37'),
(8, 1, 8, 5, 4, 9, 9, 3, 1, 4, 3, 2, 3, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 08:49:51', '2016-08-26 10:49:29'),
(9, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 08:49:51', '2016-08-26 10:49:50'),
(10, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 08:49:51', '2016-08-26 08:49:51'),
(21, 3, 1, 3, 4, 7, 6, 9, 5, 9, 3, 7, 5, 7, 7, 7, 4, 5, 5, 'medium', 'medium', 'medium', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(22, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(23, 3, 3, 5, 4, 4, 4, 3, 3, 4, 3, 6, 3, 5, 7, 3, 1, 2, 3, 'medium', 'medium', 'medium', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(24, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(25, 3, 5, 3, 4, 4, 6, 7, 5, 6, 8, 6, 5, 5, 7, 7, 4, 5, 5, 'medium', 'medium', 'medium', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(26, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(27, 3, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(28, 3, 8, 5, 4, 4, 4, 3, 3, 4, 3, 2, 3, 1, 7, 1, 1, 2, 5, 'low', 'medium', 'low', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(29, 3, 9, 5, 4, 4, 6, 7, 5, 9, 8, 6, 5, 7, 7, 7, 4, 2, 5, 'medium', 'high', 'high', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(30, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:26:40', '2016-08-26 11:26:40'),
(31, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(32, 4, 2, 3, 4, 4, 2, 7, 5, 6, 3, 2, 3, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(33, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(34, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(35, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(36, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(37, 4, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(38, 4, 8, 5, 4, 4, 2, 7, 5, 4, 3, 2, 1, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(39, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(40, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:29:44', '2016-08-26 11:29:44'),
(41, 5, 1, 3, 4, 4, 6, 7, 5, 9, 3, 2, 1, 1, 7, 1, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(42, 5, 2, 3, 4, 7, 4, 3, 3, 6, 3, 6, 3, 1, 1, 3, 1, 5, 3, 'low', 'medium', 'low', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(43, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(44, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(45, 5, 5, 3, 4, 4, 9, 7, 5, 6, 8, 2, 3, 1, 1, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(46, 5, 6, 5, 4, 4, 6, 3, 3, 6, 3, 7, 5, 7, 7, 7, 5, 5, 5, 'high', 'medium', 'high', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(47, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(48, 5, 8, 5, 4, 7, 6, 3, 3, 4, 8, 2, 1, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(49, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(50, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 11:35:42', '2016-08-26 11:35:42'),
(61, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(62, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(63, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(64, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(65, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(66, 7, 6, 3, 4, 4, 4, 3, 5, 4, 3, 2, 1, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(67, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(68, 7, 8, 5, 1, 4, 2, 7, 5, 4, 3, 2, 1, 1, 7, 1, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(69, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(70, 7, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:20:15', '2016-08-26 17:20:15'),
(71, 8, 1, 3, 4, 7, 5, 7, 5, 9, 3, 6, 1, 1, 1, 1, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(72, 8, 2, 5, 4, 4, 2, 3, 3, 6, 3, 2, 3, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(73, 8, 3, 5, 4, 4, 6, 9, 3, 6, 3, 7, 5, 5, 7, 7, 1, 2, 5, 'medium', 'medium', 'medium', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(74, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(75, 8, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(76, 8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(77, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(78, 8, 8, 5, 4, 7, 2, 3, 3, 6, 8, 2, 1, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(79, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(80, 8, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 17:25:21', '2016-08-26 17:25:21'),
(181, 17, 1, 3, 9, 4, 6, 9, 5, 9, 3, 7, 5, 7, 7, 3, 4, 5, 5, 'medium', 'high', 'high', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(182, 17, 2, 3, 4, 7, 2, 7, 5, 4, 8, 2, 1, 1, 7, 1, 1, 2, 5, 'low', 'medium', 'low', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(183, 17, 3, 5, 4, 7, 6, 7, 5, 6, 8, 6, 5, 7, 7, 3, 4, 5, 5, 'medium', 'high', 'high', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(184, 17, 4, 3, 4, 7, 9, 7, 5, 6, 3, 7, 3, 5, 7, 3, 1, 2, 5, 'medium', 'medium', 'medium', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(185, 17, 5, 3, 4, 4, 9, 7, 5, 9, 3, 7, 7, 7, 7, 3, 4, 5, 5, 'medium', 'medium', 'medium', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(186, 17, 6, 5, 4, 7, 6, 3, 3, 4, 3, 7, 5, 7, 7, 3, 4, 5, 5, 'medium', 'medium', 'medium', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(187, 17, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(188, 17, 8, 5, 4, 7, 6, 7, 5, 6, 3, 2, 1, 1, 7, 1, 4, 2, 5, 'low', 'medium', 'low', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(189, 17, 9, 6, 4, 7, 9, 3, 5, 4, 8, 7, 5, 7, 7, 3, 4, 5, 5, 'medium', 'medium', 'medium', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(190, 17, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 18:50:18', '2016-08-26 18:50:18'),
(191, 18, 1, 3, 4, 7, 6, 9, 5, 9, 3, 2, 3, 5, 7, 3, 1, 2, 5, 'medium', 'medium', 'medium', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(192, 18, 2, 5, 4, 7, 6, 9, 5, 4, 3, 2, 3, 1, 7, 1, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(193, 18, 3, 5, 4, 4, 5, 7, 5, 9, 3, 6, 5, 7, 1, 7, 4, 5, 7, 'medium', 'medium', 'medium', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(194, 18, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(195, 18, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(196, 18, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(197, 18, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(198, 18, 8, 5, 4, 4, 2, 3, 1, 4, 3, 2, 3, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(199, 18, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(200, 18, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:18:51', '2016-08-26 19:18:51'),
(201, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(202, 19, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(203, 19, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(204, 19, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(205, 19, 5, 5, 4, 7, 9, 3, 3, 9, 3, 2, 3, 5, 7, 3, 1, 2, 5, 'medium', 'medium', 'medium', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(206, 19, 6, 5, 4, 7, 9, 3, 3, 6, 3, 7, 5, 7, 7, 3, 1, 2, 5, 'medium', 'medium', 'medium', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(207, 19, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(208, 19, 8, 5, 4, 9, 9, 3, 1, 4, 3, 2, 3, 1, 7, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(209, 19, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(210, 19, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:21:57', '2016-08-26 19:21:57'),
(211, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(212, 20, 2, 5, 4, 7, 9, 3, 3, 4, 8, 2, 1, 1, 7, 1, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(213, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(214, 20, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(215, 20, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(216, 20, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(217, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(218, 20, 8, 5, 4, 4, 6, 3, 3, 4, 3, 2, 3, 5, 1, 3, 1, 2, 3, 'low', 'medium', 'low', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(219, 20, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(220, 20, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 19:24:38', '2016-08-26 19:24:38'),
(221, 21, 1, 9, 9, 9, 9, 9, 9, 9, 9, 5, 5, 5, 5, 5, 5, 5, 5, 'medium', 'high', 'high', '2016-08-26 21:16:16', '2016-08-26 21:17:46'),
(222, 21, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(223, 21, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(224, 21, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(225, 21, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(226, 21, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(227, 21, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(228, 21, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(229, 21, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16'),
(230, 21, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'low', 'low', 'note', '2016-08-26 21:16:16', '2016-08-26 21:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE IF NOT EXISTS `host` (
  `id_host` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `host_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `summary` enum('note','low','medium','high','critical') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_host`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`id_host`, `host_name`, `summary`, `created_at`, `updated_at`) VALUES
(1, '1.atisisbada', 'high', '2016-08-26 08:42:52', '2016-08-26 17:16:26'),
(3, '3.direktori.bapusipda', 'high', '2016-08-26 11:23:18', '2016-08-26 17:16:50'),
(4, '4.disdik', 'low', '2016-08-26 11:27:42', '2016-08-26 17:17:02'),
(5, '5.dishub', 'high', '2016-08-26 11:31:31', '2016-08-26 17:17:09'),
(7, '6.diskominfo', 'low', '2016-08-26 17:16:12', '2016-08-26 17:22:27'),
(8, '7.dissos', 'medium', '2016-08-26 17:21:30', '2016-08-26 17:25:21'),
(17, '8.dprd', 'high', '2016-08-26 18:47:16', '2016-08-26 18:50:18'),
(18, '2.birokeu', 'medium', '2016-08-26 19:16:34', '2016-08-26 19:18:51'),
(19, '9.esdm', 'medium', '2016-08-26 19:20:20', '2016-08-26 19:22:10'),
(20, '10.humas', 'low', '2016-08-26 19:22:46', '2016-08-26 19:24:38'),
(21, 'unikom', 'high', '2016-08-26 21:15:51', '2016-08-26 21:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_08_25_172629_create_table_host', 1),
('2016_08_25_174212_create_category_table', 1),
('2016_08_25_175503_create_factor_table', 1),
('2016_08_26_022750_add_summary_column_to_host', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `factor`
--
ALTER TABLE `factor`
  ADD CONSTRAINT `factor_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `factor_id_host_foreign` FOREIGN KEY (`id_host`) REFERENCES `host` (`id_host`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;