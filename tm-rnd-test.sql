-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2018 at 12:27 PM
-- Server version: 5.7.20
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tm-rnd-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 0, 0, 'Tickets', 'fa-ticket', '/tickets', '2018-06-07 17:23:07', '2018-06-07 17:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-06-07 17:07:39', '2018-06-07 17:07:39'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-07 17:21:50', '2018-06-07 17:21:50'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Tickets\",\"icon\":\"fa-ticket\",\"uri\":\"\\/tickets\",\"roles\":[null],\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 17:23:06', '2018-06-07 17:23:06'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-07 17:23:07', '2018-06-07 17:23:07'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-06-07 17:23:14', '2018-06-07 17:23:14'),
(6, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:24:10', '2018-06-07 17:24:10'),
(7, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:25:26', '2018-06-07 17:25:26'),
(8, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:25:32', '2018-06-07 17:25:32'),
(9, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:42:06', '2018-06-07 17:42:06'),
(10, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:44:16', '2018-06-07 17:44:16'),
(11, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:45:15', '2018-06-07 17:45:15'),
(12, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:46:03', '2018-06-07 17:46:03'),
(13, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:46:09', '2018-06-07 17:46:09'),
(14, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:46:38', '2018-06-07 17:46:38'),
(15, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:46:39', '2018-06-07 17:46:39'),
(16, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:48:23', '2018-06-07 17:48:23'),
(17, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:48:25', '2018-06-07 17:48:25'),
(18, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:48:48', '2018-06-07 17:48:48'),
(19, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:53:09', '2018-06-07 17:53:09'),
(20, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:53:11', '2018-06-07 17:53:11'),
(21, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 17:54:36', '2018-06-07 17:54:36'),
(22, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 17:54:54', '2018-06-07 17:54:54'),
(23, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-12312\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 17:55:53', '2018-06-07 17:55:53'),
(24, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:55:53', '2018-06-07 17:55:53'),
(25, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:56:09', '2018-06-07 17:56:09'),
(26, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 17:56:17', '2018-06-07 17:56:17'),
(27, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-12312\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\"}', '2018-06-07 17:56:27', '2018-06-07 17:56:27'),
(28, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:56:27', '2018-06-07 17:56:27'),
(29, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:56:30', '2018-06-07 17:56:30'),
(30, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-12312\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 17:56:33', '2018-06-07 17:56:33'),
(31, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:56:33', '2018-06-07 17:56:33'),
(32, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:56:36', '2018-06-07 17:56:36'),
(33, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-123122\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 17:56:41', '2018-06-07 17:56:41'),
(34, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:56:41', '2018-06-07 17:56:41'),
(35, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:56:43', '2018-06-07 17:56:43'),
(36, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 17:57:18', '2018-06-07 17:57:18'),
(37, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-123123\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\"}', '2018-06-07 17:57:23', '2018-06-07 17:57:23'),
(38, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:57:23', '2018-06-07 17:57:23'),
(39, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 17:57:27', '2018-06-07 17:57:27'),
(40, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 17:59:43', '2018-06-07 17:59:43'),
(41, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-123123\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"2\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\"}', '2018-06-07 17:59:50', '2018-06-07 17:59:50'),
(42, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 17:59:50', '2018-06-07 17:59:50'),
(43, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:00:18', '2018-06-07 18:00:18'),
(44, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:00:20', '2018-06-07 18:00:20'),
(45, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-123123\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Completed\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 18:00:26', '2018-06-07 18:00:26'),
(46, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:00:26', '2018-06-07 18:00:26'),
(47, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:02:28', '2018-06-07 18:02:28'),
(48, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:02:30', '2018-06-07 18:02:30'),
(49, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 18:03:25', '2018-06-07 18:03:25'),
(50, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 18:03:32', '2018-06-07 18:03:32'),
(51, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 18:05:04', '2018-06-07 18:05:04'),
(52, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 18:05:47', '2018-06-07 18:05:47'),
(53, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"2-324234\",\"service_number\":\"werwer\",\"segment_group\":\"werwe\",\"product_name\":\"werew\",\"remark\":\"werwerwer\",\"ticket_status\":\"Completed\",\"state\":\"Perlis\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 18:06:13', '2018-06-07 18:06:13'),
(54, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:06:13', '2018-06-07 18:06:13'),
(55, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:06:32', '2018-06-07 18:06:32'),
(56, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:10:26', '2018-06-07 18:10:26'),
(57, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:10:32', '2018-06-07 18:10:32'),
(58, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:11:00', '2018-06-07 18:11:00'),
(59, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:14:35', '2018-06-07 18:14:35'),
(60, 1, 'admin/tickets/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:14:43', '2018-06-07 18:14:43'),
(61, 1, 'admin/tickets/1', 'PUT', '127.0.0.1', '{\"ticket_id\":\"1-123123\",\"service_number\":\"03230942\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 18:14:49', '2018-06-07 18:14:49'),
(62, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:14:49', '2018-06-07 18:14:49'),
(63, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:14:52', '2018-06-07 18:14:52'),
(64, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:17:19', '2018-06-07 18:17:19'),
(65, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:17:30', '2018-06-07 18:17:30'),
(66, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:17:38', '2018-06-07 18:17:38'),
(67, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:17:40', '2018-06-07 18:17:40'),
(68, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:17:43', '2018-06-07 18:17:43'),
(69, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:19:35', '2018-06-07 18:19:35'),
(70, 1, 'admin/tickets/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 18:21:35', '2018-06-07 18:21:35'),
(71, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:21:35', '2018-06-07 18:21:35'),
(72, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:21:45', '2018-06-07 18:21:45'),
(73, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"3-453453\",\"service_number\":\"werwerw\",\"segment_group\":\"werwer\",\"product_name\":\"werewrw\",\"remark\":\"werwe\",\"ticket_status\":\"Processing\",\"state\":\"Selangor\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 18:22:01', '2018-06-07 18:22:01'),
(74, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:22:01', '2018-06-07 18:22:01'),
(75, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:24:13', '2018-06-07 18:24:13'),
(76, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:25:46', '2018-06-07 18:25:46'),
(77, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:26:20', '2018-06-07 18:26:20'),
(78, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:27:28', '2018-06-07 18:27:28'),
(79, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:29:15', '2018-06-07 18:29:15'),
(80, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:29:36', '2018-06-07 18:29:36'),
(81, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:31:04', '2018-06-07 18:31:04'),
(82, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:33:06', '2018-06-07 18:33:06'),
(83, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:36:51', '2018-06-07 18:36:51'),
(84, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:37:09', '2018-06-07 18:37:09'),
(85, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:37:22', '2018-06-07 18:37:22'),
(86, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:38:14', '2018-06-07 18:38:14'),
(87, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 18:38:46', '2018-06-07 18:38:46'),
(88, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:39:17', '2018-06-07 18:39:17'),
(89, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:39:44', '2018-06-07 18:39:44'),
(90, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:39:47', '2018-06-07 18:39:47'),
(91, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:39:58', '2018-06-07 18:39:58'),
(92, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:43:26', '2018-06-07 18:43:26'),
(93, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:43:33', '2018-06-07 18:43:33'),
(94, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:43:35', '2018-06-07 18:43:35'),
(95, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:43:43', '2018-06-07 18:43:43'),
(96, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:43:45', '2018-06-07 18:43:45'),
(97, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:44:05', '2018-06-07 18:44:05'),
(98, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:50:21', '2018-06-07 18:50:21'),
(99, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:51:31', '2018-06-07 18:51:31'),
(100, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:51:36', '2018-06-07 18:51:36'),
(101, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:51:39', '2018-06-07 18:51:39'),
(102, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:52:55', '2018-06-07 18:52:55'),
(103, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:53:18', '2018-06-07 18:53:18'),
(104, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:53:21', '2018-06-07 18:53:21'),
(105, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:53:22', '2018-06-07 18:53:22'),
(106, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:53:26', '2018-06-07 18:53:26'),
(107, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-12312\",\"service_number\":\"dsfsfsf\",\"segment_group\":\"werwe\",\"product_name\":\"werewrw\",\"remark\":\"werwerwer\",\"ticket_status\":\"Processing\",\"state\":\"Kuala Lumpur\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 18:53:41', '2018-06-07 18:53:41'),
(108, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:53:41', '2018-06-07 18:53:41'),
(109, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:53:53', '2018-06-07 18:53:53'),
(110, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-686111\",\"service_number\":\"00707875217\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"ticket_status\":\"Processing\",\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 18:54:59', '2018-06-07 18:54:59'),
(111, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:54:59', '2018-06-07 18:54:59'),
(112, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:55:14', '2018-06-07 18:55:14'),
(113, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-78334\",\"service_number\":\"00246433\",\"segment_group\":\"SME\",\"product_name\":\"Business Line\",\"remark\":\"Processing the ticket\",\"ticket_status\":\"Processing\",\"state\":\"Kuala Lumpur\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 18:56:36', '2018-06-07 18:56:36'),
(114, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 18:56:37', '2018-06-07 18:56:37'),
(115, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 18:56:39', '2018-06-07 18:56:39'),
(116, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:00:15', '2018-06-07 19:00:15'),
(117, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:00:17', '2018-06-07 19:00:17'),
(118, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:00:17', '2018-06-07 19:00:17'),
(119, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-78334\",\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:00:26', '2018-06-07 19:00:26'),
(120, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:00:26', '2018-06-07 19:00:26'),
(121, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:02:10', '2018-06-07 19:02:10'),
(122, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-686111\",\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:02:15', '2018-06-07 19:02:15'),
(123, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:02:15', '2018-06-07 19:02:15'),
(124, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:02:38', '2018-06-07 19:02:38'),
(125, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:02:40', '2018-06-07 19:02:40'),
(126, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:02:44', '2018-06-07 19:02:44'),
(127, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:02:44', '2018-06-07 19:02:44'),
(128, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-686111\",\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:02:50', '2018-06-07 19:02:50'),
(129, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:02:50', '2018-06-07 19:02:50'),
(130, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:03:06', '2018-06-07 19:03:06'),
(131, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:04:04', '2018-06-07 19:04:04'),
(132, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:04:07', '2018-06-07 19:04:07'),
(133, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:04:12', '2018-06-07 19:04:12'),
(134, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 19:04:16', '2018-06-07 19:04:16'),
(135, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:04:16', '2018-06-07 19:04:16'),
(136, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1312313\",\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:04:23', '2018-06-07 19:04:23'),
(137, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:04:24', '2018-06-07 19:04:24'),
(138, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:05:37', '2018-06-07 19:05:37'),
(139, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"3-453453\",\"service_number\":\"0183135361\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"werwerwer\",\"ticket_status\":\"Processing\",\"state\":\"Kuala Lumpur\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:05:52', '2018-06-07 19:05:52'),
(140, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:05:52', '2018-06-07 19:05:52'),
(141, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:05:56', '2018-06-07 19:05:56'),
(142, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-12312\",\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/tickets\"}', '2018-06-07 19:06:01', '2018-06-07 19:06:01'),
(143, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:06:02', '2018-06-07 19:06:02'),
(144, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:07:33', '2018-06-07 19:07:33'),
(145, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:09:24', '2018-06-07 19:09:24'),
(146, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:09:27', '2018-06-07 19:09:27'),
(147, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:09:27', '2018-06-07 19:09:27'),
(148, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:10:27', '2018-06-07 19:10:27'),
(149, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:10:30', '2018-06-07 19:10:30'),
(150, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:10:46', '2018-06-07 19:10:46'),
(151, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:10:48', '2018-06-07 19:10:48'),
(152, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:10:49', '2018-06-07 19:10:49'),
(153, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"3-453453\",\"service_number\":\"0183135361\",\"segment_group\":null,\"product_name\":null,\"remark\":\"werwerwer\",\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:11:02', '2018-06-07 19:11:02'),
(154, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:11:02', '2018-06-07 19:11:02'),
(155, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"3-453453\",\"service_number\":\"0183135361\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"werwerwer\",\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:11:18', '2018-06-07 19:11:18'),
(156, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:11:18', '2018-06-07 19:11:18'),
(157, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:12:46', '2018-06-07 19:12:46'),
(158, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:12:48', '2018-06-07 19:12:48'),
(159, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:13:52', '2018-06-07 19:13:52'),
(160, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:13:55', '2018-06-07 19:13:55'),
(161, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:13:55', '2018-06-07 19:13:55'),
(162, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:13:59', '2018-06-07 19:13:59'),
(163, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:15:24', '2018-06-07 19:15:24'),
(164, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:15:28', '2018-06-07 19:15:28'),
(165, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:16:20', '2018-06-07 19:16:20'),
(166, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":null,\"service_number\":null,\"segment_group\":null,\"product_name\":null,\"remark\":null,\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:16:23', '2018-06-07 19:16:23'),
(167, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:16:23', '2018-06-07 19:16:23'),
(168, 1, 'admin/tickets', 'POST', '127.0.0.1', '{\"ticket_id\":\"1-12312\",\"service_number\":\"0183135361\",\"segment_group\":\"Consumer\",\"product_name\":\"Streamyx\",\"remark\":\"test remark\",\"state\":\"0\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:16:38', '2018-06-07 19:16:38'),
(169, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:16:38', '2018-06-07 19:16:38'),
(170, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:16:42', '2018-06-07 19:16:42'),
(171, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:17:47', '2018-06-07 19:17:47'),
(172, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:19:26', '2018-06-07 19:19:26'),
(173, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:20:27', '2018-06-07 19:20:27'),
(174, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:22:17', '2018-06-07 19:22:17'),
(175, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:26:53', '2018-06-07 19:26:53'),
(176, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 19:30:42', '2018-06-07 19:30:42'),
(177, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 19:30:51', '2018-06-07 19:30:51'),
(178, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:30:57', '2018-06-07 19:30:57'),
(179, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:31:22', '2018-06-07 19:31:22'),
(180, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:32:49', '2018-06-07 19:32:49'),
(181, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:34:40', '2018-06-07 19:34:40'),
(182, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:38:05', '2018-06-07 19:38:05'),
(183, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:38:09', '2018-06-07 19:38:09'),
(184, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:38:17', '2018-06-07 19:38:17'),
(185, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:38:21', '2018-06-07 19:38:21'),
(186, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:38:23', '2018-06-07 19:38:23'),
(187, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:39:12', '2018-06-07 19:39:12'),
(188, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 19:42:18', '2018-06-07 19:42:18'),
(189, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 19:42:54', '2018-06-07 19:42:54'),
(190, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '[]', '2018-06-07 19:49:10', '2018-06-07 19:49:10'),
(191, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:49:19', '2018-06-07 19:49:19'),
(192, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:51:44', '2018-06-07 19:51:44'),
(193, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:51:46', '2018-06-07 19:51:46'),
(194, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:52:07', '2018-06-07 19:52:07'),
(195, 1, 'admin/tickets/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:54:29', '2018-06-07 19:54:29'),
(196, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:54:29', '2018-06-07 19:54:29'),
(197, 1, 'admin/tickets/8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"PvcqGzzQYvSvCjJXIEBjQzuyaIg5oU7suxRsvwMI\"}', '2018-06-07 19:54:33', '2018-06-07 19:54:33'),
(198, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:54:33', '2018-06-07 19:54:33'),
(199, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:54:38', '2018-06-07 19:54:38'),
(200, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 19:55:41', '2018-06-07 19:55:41'),
(201, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 19:55:45', '2018-06-07 19:55:45'),
(202, 1, 'admin/tickets/create', 'GET', '127.0.0.1', '[]', '2018-06-07 20:00:26', '2018-06-07 20:00:26'),
(203, 1, 'admin/tickets', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 20:00:31', '2018-06-07 20:00:31'),
(204, 1, 'admin/tickets/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-06-07 20:00:38', '2018-06-07 20:00:38'),
(205, 1, 'admin/tickets', 'GET', '127.0.0.1', '[]', '2018-06-07 20:17:29', '2018-06-07 20:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2018-06-07 17:06:48', '2018-06-07 17:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$pj0.u/rdygd1UcHvuepvaeVGZsLcsld/19blDG2rEyuCtA7JMDiDS', 'Administrator', NULL, NULL, '2018-06-07 17:06:48', '2018-06-07 17:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1);

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
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL,
  `ticket_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `service_number` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `segment_group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_id`, `service_number`, `segment_group`, `product_name`, `remark`, `ticket_status`, `state`, `created_at`, `updated_at`) VALUES
(2, '2-324234', 'werwer', 'werwe', 'werew', 'werwerwer', 'Completed', 'Perlis', '2018-06-08 02:06:13', '2018-06-08 02:06:13'),
(3, '3-453453', 'werwerw', 'werwer', 'werewrw', 'werwe', 'Processing', 'Selangor', '2018-06-08 02:22:01', '2018-06-08 02:22:01'),
(4, '1-12312', 'dsfsfsf', 'werwe', 'werewrw', 'werwerwer', 'Processing', 'Kuala Lumpur', '2018-06-08 02:53:41', '2018-06-08 02:53:41'),
(5, '1-686111', '00707875217', 'Consumer', 'Streamyx', 'test remark', 'Processing', '0', '2018-06-08 02:54:59', '2018-06-08 02:54:59'),
(6, '1-78334', '00246433', 'SME', 'Business Line', 'Processing the ticket', 'Processing', 'Kuala Lumpur', '2018-06-08 02:56:36', '2018-06-08 02:56:36'),
(7, '3-453453', '0183135361', 'Consumer', 'Streamyx', 'werwerwer', 'Processing', 'Kuala Lumpur', '2018-06-08 03:05:52', '2018-06-08 03:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

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
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
