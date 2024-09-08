-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 06:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_isp`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sic_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`, `deleted`, `website`, `type`, `industry`, `sic_code`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_postal_code`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_country`, `shipping_address_postal_code`, `description`, `created_at`, `modified_at`, `campaign_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('651d5299d98bb5e7a', 'GTPL', 0, 'gtpl.com', 'Reseller', 'Aerospace', NULL, NULL, 'Vadodara', NULL, 'India', NULL, NULL, NULL, NULL, NULL, NULL, 'Account 1 Internet Service provider', '2023-10-04 11:55:05', '2023-10-04 11:55:05', NULL, '650885b2867dac511', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_contact`
--

CREATE TABLE `account_contact` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `account_contact`
--

INSERT INTO `account_contact` (`id`, `account_id`, `contact_id`, `role`, `is_inactive`, `deleted`) VALUES
(1, '651d5299d98bb5e7a', '651d579971446a0c1', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `account_document`
--

CREATE TABLE `account_document` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_portal_user`
--

CREATE TABLE `account_portal_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_target_list`
--

CREATE TABLE `account_target_list` (
  `id` bigint(20) NOT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `action_history_record`
--

CREATE TABLE `action_history_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_log_record_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `action_history_record`
--

INSERT INTO `action_history_record` (`id`, `deleted`, `number`, `target_type`, `data`, `action`, `created_at`, `ip_address`, `target_id`, `user_id`, `auth_token_id`, `auth_log_record_id`) VALUES
('651d529e68abd2775', 0, 1, 'Account', NULL, 'create', '2023-10-04 11:55:10', '::1', '651d5299d98bb5e7a', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5538cafb5aa91', 0, 2, 'Account', NULL, 'read', '2023-10-04 12:06:16', '::1', '651d5299d98bb5e7a', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d579a198bb8c27', 0, 3, 'Contact', NULL, 'create', '2023-10-04 12:16:26', '::1', '651d579971446a0c1', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d579bdb443048d', 0, 4, 'Contact', NULL, 'read', '2023-10-04 12:16:27', '::1', '651d579971446a0c1', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5d60813199e13', 0, 5, 'Campaign', NULL, 'create', '2023-10-04 12:41:04', '::1', '651d5d5dc86a79893', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5d758d2c85f41', 0, 6, 'Lead', NULL, 'create', '2023-10-04 12:41:25', '::1', '651d5d74a21e83f74', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5d76d9b8155e1', 0, 7, 'Lead', NULL, 'read', '2023-10-04 12:41:26', '::1', '651d5d74a21e83f74', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5df30182a8258', 0, 8, 'Opportunity', NULL, 'create', '2023-10-04 12:43:31', '::1', '651d5df2a4e4ffaf7', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5df43043e3790', 0, 9, 'Opportunity', NULL, 'read', '2023-10-04 12:43:32', '::1', '651d5df2a4e4ffaf7', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5e3e5cb7a20d3', 0, 10, 'Attachment', NULL, 'create', '2023-10-04 12:44:46', '::1', '651d5e3de47831bb6', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5e4376abb8664', 0, 11, 'Case', NULL, 'create', '2023-10-04 12:44:51', '::1', '651d5e434a82daa59', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5e44af8df09a8', 0, 12, 'Case', NULL, 'read', '2023-10-04 12:44:52', '::1', '651d5e434a82daa59', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5ef25910c9345', 0, 13, 'Meeting', NULL, 'create', '2023-10-04 12:47:46', '::1', '651d5ef1cd0ab98b9', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5ef3c2d4aad48', 0, 14, 'Meeting', NULL, 'read', '2023-10-04 12:47:47', '::1', '651d5ef1cd0ab98b9', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5f39c9acbd797', 0, 15, 'Call', NULL, 'create', '2023-10-04 12:48:57', '::1', '651d5f38d8bf9757a', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5f3b3774d1bdb', 0, 16, 'Call', NULL, 'read', '2023-10-04 12:48:59', '::1', '651d5f38d8bf9757a', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5fc31f8cdee83', 0, 17, 'Attachment', NULL, 'create', '2023-10-04 12:51:15', '::1', '651d5fc306048d8ad', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5fc6876b56d18', 0, 18, 'Task', NULL, 'create', '2023-10-04 12:51:18', '::1', '651d5fc644ec989a6', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d5fc7df5ef33b1', 0, 19, 'Task', NULL, 'read', '2023-10-04 12:51:19', '::1', '651d5fc644ec989a6', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d60212e39a8235', 0, 20, 'Attachment', NULL, 'create', '2023-10-04 12:52:49', '::1', '651d60210eb3cd0f4', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d603db7856b5a8', 0, 21, 'Document', NULL, 'create', '2023-10-04 12:53:17', '::1', '651d603da2f5f03ec', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d60464f36d4f9d', 0, 22, 'Document', NULL, 'read', '2023-10-04 12:53:26', '::1', '651d603da2f5f03ec', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d6081e0cb008c2', 0, 23, 'Campaign', NULL, 'read', '2023-10-04 12:54:25', '::1', '651d5d5dc86a79893', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d61d4a92f63f19', 0, 24, 'KnowledgeBaseArticle', NULL, 'create', '2023-10-04 13:00:04', '::1', '651d61d44a519c9fa', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d64060aeb81166', 0, 25, 'Task', NULL, 'read', '2023-10-04 13:09:26', '::1', '651d5fc644ec989a6', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d65125d554180a', 0, 26, 'WorkingTimeCalendar', NULL, 'create', '2023-10-04 13:13:54', '::1', '651d65124b00eb2b0', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d65340a77a032d', 0, 27, 'User', NULL, 'create', '2023-10-04 13:14:28', '::1', '651d6533729b9712e', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d6535c1c90d3dc', 0, 28, 'User', NULL, 'read', '2023-10-04 13:14:29', '::1', '651d6533729b9712e', '650885b2867dac511', '651d5182a2c8ad3ac', '651d5184cbf938e18'),
('651d65830f092e12e', 0, 29, 'User', NULL, 'read', '2023-10-04 13:15:47', '::1', '651d6533729b9712e', '651d6533729b9712e', '651d654d0aaf81c0b', '651d654d0b984825b'),
('652cbdd216fdf21e9', 0, 30, 'User', NULL, 'read', '2023-10-16 04:36:34', '::1', '650885b2867dac511', '650885b2867dac511', '652cb8876ff5298af', '652cb887993984694'),
('652cbe9d6f0a8e2de', 0, 31, 'Campaign', NULL, 'read', '2023-10-16 04:39:57', '::1', '651d5d5dc86a79893', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d57a0c850fa420', 0, 32, 'Lead', NULL, 'read', '2023-10-16 15:32:48', '::1', '651d5d74a21e83f74', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d57ba704077718', 0, 33, 'Lead', NULL, 'read', '2023-10-16 15:33:14', '::1', '651d5d74a21e83f74', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5811bfc020206', 0, 34, 'Lead', NULL, 'update', '2023-10-16 15:34:41', '::1', '651d5d74a21e83f74', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5b15ac20ceb0a', 0, 35, 'Email', NULL, 'create', '2023-10-16 15:47:33', '::1', '652d5b141c4f948c0', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5b448fd4ec9e7', 0, 36, 'Email', NULL, 'create', '2023-10-16 15:48:20', '::1', '652d5b440d996c8af', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5bdab71271cd0', 0, 37, 'Email', NULL, 'create', '2023-10-16 15:50:50', '::1', '652d5bd0e85e29000', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5c03864e0558e', 0, 38, 'Email', NULL, 'create', '2023-10-16 15:51:31', '::1', '652d5c0301a6f0d5c', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5c09643582615', 0, 39, 'Email', NULL, 'create', '2023-10-16 15:51:37', '::1', '652d5c08e287665c0', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5c1f2f6a76aca', 0, 40, 'Email', NULL, 'read', '2023-10-16 15:51:59', '::1', '652d5c08e287665c0', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5c4ea41a65231', 0, 41, 'Call', NULL, 'read', '2023-10-16 15:52:46', '::1', '651d5f38d8bf9757a', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5c642a2574e5c', 0, 42, 'User', NULL, 'read', '2023-10-16 15:53:08', '::1', '650885b2867dac511', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5c855885a988f', 0, 43, 'User', NULL, 'update', '2023-10-16 15:53:41', '::1', '650885b2867dac511', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5cf314e3cddc6', 0, 44, 'User', NULL, 'read', '2023-10-16 15:55:31', '::1', '651d6533729b9712e', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5d28750296f04', 0, 45, 'User', NULL, 'read', '2023-10-16 15:56:24', '::1', '651d6533729b9712e', '650885b2867dac511', '652cbe6d93d9010e7', '652cbe6d987287fb3'),
('652d5d7f8c22f5940', 0, 46, 'Note', NULL, 'create', '2023-10-16 15:57:51', '::1', '652d5d7ecb33433f5', '651d6533729b9712e', '652d5d4599452e8a9', '652d5d459d61c526e'),
('652d5d9a8a07bf8c5', 0, 47, 'Note', NULL, 'create', '2023-10-16 15:58:18', '::1', '652d5d9a70aee04fe', '651d6533729b9712e', '652d5d4599452e8a9', '652d5d459d61c526e'),
('652d5dbc914b91b15', 0, 48, 'Task', NULL, 'read', '2023-10-16 15:58:52', '::1', '651d5fc644ec989a6', '650885b2867dac511', '652d5dae9a8e4995a', '652d5dae9d22727cf'),
('652d5dd9c8c554e4d', 0, 49, 'Lead', NULL, 'read', '2023-10-16 15:59:21', '::1', '651d5d74a21e83f74', '650885b2867dac511', '652d5dae9a8e4995a', '652d5dae9d22727cf'),
('652d5e22675ca371c', 0, 50, 'Task', NULL, 'read', '2023-10-16 16:00:34', '::1', '651d5fc644ec989a6', '650885b2867dac511', '652d5dae9a8e4995a', '652d5dae9d22727cf');

-- --------------------------------------------------------

--
-- Table structure for table `array_value`
--

CREATE TABLE `array_value` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE `attachment` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_being_uploaded` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `role` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_file_path` varchar(260) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `global` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attachment`
--

INSERT INTO `attachment` (`id`, `name`, `deleted`, `type`, `size`, `field`, `is_being_uploaded`, `created_at`, `role`, `storage`, `storage_file_path`, `global`, `parent_id`, `parent_type`, `related_id`, `related_type`, `source_id`, `created_by_id`) VALUES
('651d5e3de47831bb6', 'Campus-Placement (1).pdf', 0, 'application/pdf', 1652487, 'attachments', 0, '2023-10-04 12:44:45', 'Attachment', 'EspoUploadDir', NULL, 0, '651d5e434a82daa59', 'Case', NULL, NULL, NULL, '650885b2867dac511'),
('651d5fc306048d8ad', 'Resume 1.pdf', 0, 'application/pdf', 212633, 'attachments', 0, '2023-10-04 12:51:15', 'Attachment', 'EspoUploadDir', NULL, 0, '651d5fc644ec989a6', 'Task', NULL, NULL, NULL, '650885b2867dac511'),
('651d60210eb3cd0f4', 'Resume 1.pdf', 0, 'application/pdf', 212633, 'file', 0, '2023-10-04 12:52:49', 'Attachment', 'EspoUploadDir', NULL, 0, NULL, NULL, '651d603da2f5f03ec', 'Document', NULL, '650885b2867dac511');

-- --------------------------------------------------------

--
-- Table structure for table `authentication_provider`
--

CREATE TABLE `authentication_provider` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_authorization_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_token_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwks_endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_jwt_signature_algorithm_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_scopes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oidc_create_user` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_username_claim` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'sub',
  `oidc_sync` tinyint(1) NOT NULL DEFAULT 0,
  `oidc_logout_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_log_record`
--

CREATE TABLE `auth_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_denied` tinyint(1) NOT NULL DEFAULT 0,
  `denial_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_time` double DEFAULT NULL,
  `request_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_log_record`
--

INSERT INTO `auth_log_record` (`id`, `deleted`, `username`, `ip_address`, `created_at`, `is_denied`, `denial_reason`, `request_time`, `request_url`, `request_method`, `authentication_method`, `portal_id`, `user_id`, `auth_token_id`) VALUES
('65088608675a6e253', 0, 'admin', '::1', '2023-09-18 17:16:56', 0, NULL, 1695057415.7468, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '650885b2867dac511', '65088608660f24a64'),
('651d5184cbf938e18', 0, 'admin', '::1', '2023-10-04 11:50:28', 0, NULL, 1696420195.3974, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '650885b2867dac511', '651d5182a2c8ad3ac'),
('651d654d0b984825b', 0, 'user1', '::1', '2023-10-04 13:14:53', 0, NULL, 1696425292.5094, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '651d6533729b9712e', '651d654d0aaf81c0b'),
('651d6590555f05d04', 0, 'admin', '::1', '2023-10-04 13:16:00', 0, NULL, 1696425359.8344, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '650885b2867dac511', '651d659053dcfdb22'),
('652cb887993984694', 0, 'admin', '::1', '2023-10-16 04:13:59', 0, NULL, 1697429637.7644, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '650885b2867dac511', '652cb8876ff5298af'),
('652cbe554aa37b35d', 0, 'accountant', '::1', '2023-10-16 04:38:45', 1, 'CREDENTIALS', 1697431123.9549, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, NULL, NULL),
('652cbe5e12d3e68f0', 0, 'accountant', '::1', '2023-10-16 04:38:54', 1, 'CREDENTIALS', 1697431132.5403, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, NULL, NULL),
('652cbe67af1d8f3f1', 0, 'admin admin', '::1', '2023-10-16 04:39:03', 1, 'CREDENTIALS', 1697431142.6125, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, NULL, NULL),
('652cbe6d987287fb3', 0, 'admin', '::1', '2023-10-16 04:39:09', 0, NULL, 1697431148.1361, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '650885b2867dac511', '652cbe6d93d9010e7'),
('652d5d459d61c526e', 0, 'user1', '::1', '2023-10-16 15:56:53', 0, NULL, 1697471812.4076, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '651d6533729b9712e', '652d5d4599452e8a9'),
('652d5dae9d22727cf', 0, 'admin', '::1', '2023-10-16 15:58:38', 0, NULL, 1697471918.015, 'http://localhost/CRM_ISP/api/v1/App/user', 'GET', 'Espo', NULL, '650885b2867dac511', '652d5dae9a8e4995a');

-- --------------------------------------------------------

--
-- Table structure for table `auth_token`
--

CREATE TABLE `auth_token` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `last_access` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_token`
--

INSERT INTO `auth_token` (`id`, `deleted`, `token`, `hash`, `secret`, `ip_address`, `is_active`, `last_access`, `created_at`, `modified_at`, `user_id`, `portal_id`) VALUES
('65088608660f24a64', 0, '1041f437290a219c393368fa17d9c4b8', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', '022811fd70c95ca43a6ab9cabbabcc08', '::1', 0, '2023-10-16 04:13:28', '2023-09-18 17:16:56', '2023-10-16 04:13:28', '650885b2867dac511', NULL),
('651d5182a2c8ad3ac', 0, '8278d268821e177ab48d9ba181a5c09d', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', '057e543623a16bd648e74c085cd88ae8', '::1', 0, '2023-10-04 13:14:45', '2023-10-04 11:50:27', '2023-10-04 13:14:45', '650885b2867dac511', NULL),
('651d654d0aaf81c0b', 0, 'd9515133b3f181c0f46677e1abf524cd', 'Uh.47nk9irn2ct7l6px/SXr0RB9Rwro7BY6xZVPpJpN.7nvzDCZMnEHL4b6ZTTrga/KCsMZ7BuSp9lHmF/xlr.', '5522cc5453625c1cb1c07c2bfe4eef6c', '::1', 0, '2023-10-04 13:15:55', '2023-10-04 13:14:53', '2023-10-04 13:15:55', '651d6533729b9712e', NULL),
('651d659053dcfdb22', 0, 'aa8de8f1c98d818e1ef353dd36f15c38', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', '904048143c8df00a54196e4cfecdca8e', '::1', 1, '2023-10-10 04:49:49', '2023-10-04 13:16:00', '2023-10-10 04:49:49', '650885b2867dac511', NULL),
('652cb8876ff5298af', 0, 'd315441b752172c0196798c79213073d', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', 'ebdbadb400696a6ae09ac1b0060e2f2e', '::1', 0, '2023-10-16 04:38:31', '2023-10-16 04:13:59', '2023-10-16 04:38:31', '650885b2867dac511', NULL),
('652cbe6d93d9010e7', 0, 'fcbc895461209ab6433aff1fd1cde6f7', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', 'c33b965e9604b62db45877fdac26fe99', '::1', 0, '2023-10-16 15:56:46', '2023-10-16 04:39:09', '2023-10-16 15:56:46', '650885b2867dac511', NULL),
('652d5d4599452e8a9', 0, '5bcba0cf3cd5f14b2d6c505e09fc1178', 'Uh.47nk9irn2ct7l6px/SXr0RB9Rwro7BY6xZVPpJpN.7nvzDCZMnEHL4b6ZTTrga/KCsMZ7BuSp9lHmF/xlr.', '8fe278f971be417b8f331a2fe8e1a16c', '::1', 0, '2023-10-16 15:58:29', '2023-10-16 15:56:53', '2023-10-16 15:58:29', '651d6533729b9712e', NULL),
('652d5dae9a8e4995a', 0, 'a4f50d9140bf6e6c9491f9cfbc88b525', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', '625f68f51037875f3cae086085c5038b', '::1', 1, '2023-10-16 16:01:41', '2023-10-16 15:58:38', '2023-10-16 16:01:41', '650885b2867dac511', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `autofollow`
--

CREATE TABLE `autofollow` (
  `id` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call`
--

CREATE TABLE `call` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Outbound',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `call`
--

INSERT INTO `call` (`id`, `name`, `deleted`, `status`, `date_start`, `date_end`, `direction`, `description`, `created_at`, `modified_at`, `parent_id`, `parent_type`, `account_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('651d5f38d8bf9757a', 'call 1', 0, 'Planned', '2023-10-04 21:30:00', '2023-10-04 21:35:00', 'Outbound', 'mobvhgcc ', '2023-10-04 12:48:56', '2023-10-04 12:48:56', '651d5299d98bb5e7a', 'Account', '651d5299d98bb5e7a', '650885b2867dac511', NULL, '650885b2867dac511');

-- --------------------------------------------------------

--
-- Table structure for table `call_contact`
--

CREATE TABLE `call_contact` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `call_contact`
--

INSERT INTO `call_contact` (`id`, `call_id`, `contact_id`, `status`, `deleted`) VALUES
(1, '651d5f38d8bf9757a', '651d579971446a0c1', 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `call_lead`
--

CREATE TABLE `call_lead` (
  `id` bigint(20) NOT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `call_lead`
--

INSERT INTO `call_lead` (`id`, `call_id`, `lead_id`, `status`, `deleted`) VALUES
(1, '651d5f38d8bf9757a', '651d5d74a21e83f74', 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `call_user`
--

CREATE TABLE `call_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `call_user`
--

INSERT INTO `call_user` (`id`, `user_id`, `call_id`, `status`, `deleted`) VALUES
(1, '650885b2867dac511', '651d5f38d8bf9757a', 'Accepted', 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planning',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Email',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `mail_merge_only_with_address` tinyint(1) NOT NULL DEFAULT 1,
  `budget_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leads_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounts_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `name`, `deleted`, `status`, `type`, `start_date`, `end_date`, `description`, `created_at`, `modified_at`, `budget`, `mail_merge_only_with_address`, `budget_currency`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `contacts_template_id`, `leads_template_id`, `accounts_template_id`, `users_template_id`) VALUES
('651d5d5dc86a79893', 'campaign1', 0, 'Planning', 'Email', NULL, '2023-10-06', NULL, '2023-10-04 12:41:01', '2023-10-04 12:41:01', NULL, 1, NULL, '650885b2867dac511', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log_record`
--

CREATE TABLE `campaign_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string_additional_data` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Espo',
  `created_at` datetime DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue_item_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `campaign_log_record`
--

INSERT INTO `campaign_log_record` (`id`, `deleted`, `action`, `action_date`, `data`, `string_data`, `string_additional_data`, `application`, `created_at`, `is_test`, `created_by_id`, `campaign_id`, `parent_id`, `parent_type`, `object_id`, `object_type`, `queue_item_id`) VALUES
('651d5d757b74e44d3', 0, 'Lead Created', '2023-10-04 12:41:25', NULL, NULL, NULL, 'Espo', '2023-10-04 12:41:25', 0, '650885b2867dac511', '651d5d5dc86a79893', '651d5d74a21e83f74', 'Lead', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_target_list`
--

CREATE TABLE `campaign_target_list` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_target_list_excluding`
--

CREATE TABLE `campaign_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_tracking_url`
--

CREATE TABLE `campaign_tracking_url` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Redirect',
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case`
--

CREATE TABLE `case` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `case`
--

INSERT INTO `case` (`id`, `name`, `deleted`, `number`, `status`, `priority`, `type`, `description`, `created_at`, `modified_at`, `account_id`, `lead_id`, `contact_id`, `inbound_email_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('651d5e434a82daa59', 'slow internet', 0, 1, 'New', 'Normal', 'Problem', 'skluiftyfc', '2023-10-04 12:44:51', '2023-10-04 12:44:51', NULL, NULL, NULL, NULL, '650885b2867dac511', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `case_contact`
--

CREATE TABLE `case_contact` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_knowledge_base_article`
--

CREATE TABLE `case_knowledge_base_article` (
  `id` bigint(20) NOT NULL,
  `case_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `deleted`, `salutation_name`, `first_name`, `last_name`, `description`, `do_not_call`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postal_code`, `created_at`, `modified_at`, `middle_name`, `account_id`, `campaign_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('651d579971446a0c1', 0, 'Mr.', 'GTPL', 'Cable', 'Internet service ', 0, NULL, 'Vadodara', NULL, 'India', NULL, '2023-10-04 12:16:25', '2023-10-04 12:16:25', NULL, '651d5299d98bb5e7a', NULL, '650885b2867dac511', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_document`
--

CREATE TABLE `contact_document` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_meeting`
--

CREATE TABLE `contact_meeting` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_opportunity`
--

CREATE TABLE `contact_opportunity` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_opportunity`
--

INSERT INTO `contact_opportunity` (`id`, `contact_id`, `opportunity_id`, `role`, `deleted`) VALUES
(1, '651d579971446a0c1', '651d5df2a4e4ffaf7', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_target_list`
--

CREATE TABLE `contact_target_list` (
  `id` bigint(20) NOT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `rate`) VALUES
('USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_template`
--

CREATE TABLE `dashboard_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `name`, `deleted`, `status`, `type`, `publish_date`, `expiration_date`, `description`, `created_at`, `modified_at`, `file_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `folder_id`) VALUES
('651d603da2f5f03ec', 'Resume 1.pdf', 0, 'Active', NULL, '2023-10-04', NULL, 'zxcvbnm', '2023-10-04 12:53:17', '2023-10-04 12:53:17', '651d60210eb3cd0f4', '650885b2867dac511', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `document_folder`
--

CREATE TABLE `document_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_folder_path`
--

CREATE TABLE `document_folder_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_lead`
--

CREATE TABLE `document_lead` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document_opportunity`
--

CREATE TABLE `document_opportunity` (
  `id` bigint(20) NOT NULL,
  `document_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_name_map` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `message_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_id_internal` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_plain` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `has_attachment` tinyint(1) NOT NULL DEFAULT 0,
  `date_sent` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_system` tinyint(1) NOT NULL DEFAULT 0,
  `ics_contents` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ics_event_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_event_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `name`, `deleted`, `from_string`, `reply_to_string`, `address_name_map`, `is_replied`, `message_id`, `message_id_internal`, `body_plain`, `body`, `is_html`, `status`, `has_attachment`, `date_sent`, `delivery_date`, `created_at`, `modified_at`, `is_system`, `ics_contents`, `ics_event_uid`, `from_email_address_id`, `parent_id`, `parent_type`, `created_by_id`, `sent_by_id`, `modified_by_id`, `assigned_user_id`, `replied_id`, `created_event_id`, `created_event_type`, `group_folder_id`, `account_id`) VALUES
('652d5b141c4f948c0', 'Subject', 0, NULL, NULL, NULL, 0, '<Account/651d5299d98bb5e7a/1697471252/3853@espo>', NULL, 'gybhj\n\n', '<p>gybhj</p>', 1, 'Sending', 0, NULL, NULL, '2023-10-16 15:47:32', '2023-10-16 15:47:32', 0, NULL, NULL, NULL, '651d5299d98bb5e7a', 'Account', '650885b2867dac511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '651d5299d98bb5e7a'),
('652d5b440d996c8af', 'Subject', 0, NULL, NULL, NULL, 0, '<Account/651d5299d98bb5e7a/1697471300/7871@espo>', NULL, 'gybhj\n\n', '<p>gybhj</p>', 1, 'Sending', 0, NULL, NULL, '2023-10-16 15:48:20', '2023-10-16 15:48:20', 0, NULL, NULL, NULL, '651d5299d98bb5e7a', 'Account', '650885b2867dac511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '651d5299d98bb5e7a'),
('652d5bd0e85e29000', 'Case has been created', 0, NULL, NULL, NULL, 0, '<Account/651d5299d98bb5e7a/1697471440/1817@espo>', NULL, 'User1,\n\nCase \'Slow Internet\' has been created with number 5431ZAD45 and assigned to Admin.\n\n', '<p>User1,</p><p>Case \'Slow Internet\' has been created with number 5431ZAD45 and assigned to Admin.</p>', 1, 'Sending', 0, NULL, NULL, '2023-10-16 15:50:40', '2023-10-16 15:50:40', 0, NULL, NULL, NULL, '651d5299d98bb5e7a', 'Account', '650885b2867dac511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '651d5299d98bb5e7a'),
('652d5c0301a6f0d5c', 'Case has been created', 0, NULL, NULL, NULL, 0, '<Account/651d5299d98bb5e7a/1697471491/6279@espo>', NULL, 'User1,\n\nCase \'Slow Internet\' has been created with number 5431ZAD45 and assigned to Admin.\n\n', '<p>User1,</p><p>Case \'Slow Internet\' has been created with number 5431ZAD45 and assigned to Admin.</p>', 1, 'Sending', 0, NULL, NULL, '2023-10-16 15:51:31', '2023-10-16 15:51:31', 0, NULL, NULL, NULL, '651d5299d98bb5e7a', 'Account', '650885b2867dac511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '651d5299d98bb5e7a'),
('652d5c08e287665c0', 'Case has been created', 0, NULL, NULL, NULL, 0, 'dummy:652d5c08e29e1f37b', NULL, 'User1,\n\nCase \'Slow Internet\' has been created with number 5431ZAD45 and assigned to Admin.\n\n', '<p>User1,</p><p>Case \'Slow Internet\' has been created with number 5431ZAD45 and assigned to Admin.</p>', 1, 'Draft', 0, NULL, NULL, '2023-10-16 15:51:36', '2023-10-16 15:51:36', 0, NULL, NULL, NULL, '651d5299d98bb5e7a', 'Account', '650885b2867dac511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '651d5299d98bb5e7a');

-- --------------------------------------------------------

--
-- Table structure for table `email_account`
--

CREATE TABLE `email_account` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_address`
--

CREATE TABLE `email_address` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `lower` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_address`
--

INSERT INTO `email_address` (`id`, `name`, `deleted`, `lower`, `invalid`, `opt_out`) VALUES
('651d529b43bd59923', 'gtpl@gmail.com', 0, 'gtpl@gmail.com', 0, 0),
('651d579985853ef74', 'gtpl@g.com', 0, 'gtpl@g.com', 0, 0),
('651d5d74d5c151828', 'manager@gmail.com', 0, 'manager@gmail.com', 0, 0),
('651d653391ffd4b44', 'user1@gmail.com', 0, 'user1@gmail.com', 0, 0),
('652d5b142947dd239', 'Account@gmail.com', 0, 'account@gmail.com', 0, 0),
('652d5c84adb905353', 'admin@isp.com', 0, 'admin@isp.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_email_account`
--

CREATE TABLE `email_email_account` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_email_address`
--

CREATE TABLE `email_email_address` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_email_address`
--

INSERT INTO `email_email_address` (`id`, `email_id`, `email_address_id`, `address_type`, `deleted`) VALUES
(1, '652d5b141c4f948c0', '652d5b142947dd239', 'to', 0),
(2, '652d5b440d996c8af', '652d5b142947dd239', 'to', 0),
(3, '652d5bd0e85e29000', '652d5b142947dd239', 'to', 0),
(4, '652d5c0301a6f0d5c', '652d5b142947dd239', 'to', 0),
(5, '652d5c08e287665c0', '652d5b142947dd239', 'to', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_filter`
--

CREATE TABLE `email_filter` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_contains_all` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Skip',
  `mark_as_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_folder`
--

CREATE TABLE `email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `skip_notifications` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_inbound_email`
--

CREATE TABLE `email_inbound_email` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_queue_item`
--

CREATE TABLE `email_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_test` tinyint(1) NOT NULL DEFAULT 0,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_html` tinyint(1) NOT NULL DEFAULT 1,
  `one_off` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`id`, `name`, `deleted`, `subject`, `body`, `is_html`, `one_off`, `created_at`, `modified_at`, `category_id`, `assigned_user_id`, `created_by_id`, `modified_by_id`, `version_number`) VALUES
('650885ee917ce1a44', 'Case-to-Email auto-reply', 0, 'Case has been created', '<p>{Person.name},</p><p>Case \'{Case.name}\' has been created with number {Case.number} and assigned to {User.name}.</p>', 1, 0, '2023-09-18 17:16:30', '2023-09-18 17:16:30', NULL, NULL, 'system', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_template_category`
--

CREATE TABLE `email_template_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template_category_path`
--

CREATE TABLE `email_template_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_user`
--

CREATE TABLE `email_user` (
  `id` bigint(20) NOT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `is_important` tinyint(1) DEFAULT 0,
  `in_trash` tinyint(1) DEFAULT 0,
  `folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_user`
--

INSERT INTO `email_user` (`id`, `email_id`, `user_id`, `is_read`, `is_important`, `in_trash`, `folder_id`, `deleted`) VALUES
(1, '652d5b141c4f948c0', '650885b2867dac511', 1, 0, 0, NULL, 0),
(2, '652d5b440d996c8af', '650885b2867dac511', 1, 0, 0, NULL, 0),
(3, '652d5bd0e85e29000', '650885b2867dac511', 1, 0, 0, NULL, 0),
(4, '652d5c0301a6f0d5c', '650885b2867dac511', 1, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `entity_email_address`
--

CREATE TABLE `entity_email_address` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_address_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entity_email_address`
--

INSERT INTO `entity_email_address` (`id`, `entity_id`, `email_address_id`, `entity_type`, `primary`, `deleted`) VALUES
(1, '651d5299d98bb5e7a', '651d529b43bd59923', 'Account', 1, 0),
(2, '651d579971446a0c1', '651d579985853ef74', 'Contact', 1, 0),
(3, '651d5d74a21e83f74', '651d5d74d5c151828', 'Lead', 1, 0),
(4, '651d6533729b9712e', '651d653391ffd4b44', 'User', 1, 0),
(5, '650885b2867dac511', '652d5c84adb905353', 'User', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `entity_phone_number`
--

CREATE TABLE `entity_phone_number` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `entity_phone_number`
--

INSERT INTO `entity_phone_number` (`id`, `entity_id`, `phone_number_id`, `entity_type`, `primary`, `deleted`) VALUES
(1, '651d5299d98bb5e7a', '651d529b541df1dd3', 'Account', 1, 0),
(2, '651d579971446a0c1', '651d57998cb773e82', 'Contact', 1, 0),
(3, '651d5d74a21e83f74', '651d5d74e5b63578d', 'Lead', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `entity_team`
--

CREATE TABLE `entity_team` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entity_user`
--

CREATE TABLE `entity_user` (
  `id` bigint(20) NOT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `export`
--

CREATE TABLE `export` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE `extension` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_status_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT 0,
  `check_version_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_account`
--

CREATE TABLE `external_account` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_email_folder`
--

CREATE TABLE `group_email_folder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_email_folder_team`
--

CREATE TABLE `group_email_folder_team` (
  `id` bigint(20) NOT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_index` int(11) DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `file_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_entity`
--

CREATE TABLE `import_entity` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_imported` tinyint(1) NOT NULL DEFAULT 0,
  `is_updated` tinyint(1) NOT NULL DEFAULT 0,
  `is_duplicate` tinyint(1) NOT NULL DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_error`
--

CREATE TABLE `import_error` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `row_index` int(11) DEFAULT NULL,
  `export_row_index` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validation_failures` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `email_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` int(11) DEFAULT 993,
  `security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SSL',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monitored_folders` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fetch_since` date DEFAULT NULL,
  `fetch_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_all_team_users` tinyint(1) NOT NULL DEFAULT 1,
  `sent_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `keep_fetched_emails_unread` tinyint(1) NOT NULL DEFAULT 0,
  `use_imap` tinyint(1) NOT NULL DEFAULT 1,
  `use_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_shared` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_is_for_mass_email` tinyint(1) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` int(11) DEFAULT 587,
  `smtp_auth` tinyint(1) NOT NULL DEFAULT 1,
  `smtp_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'TLS',
  `smtp_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_auth_mechanism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'login',
  `create_case` tinyint(1) NOT NULL DEFAULT 0,
  `case_distribution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Direct-Assignment',
  `target_user_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` tinyint(1) NOT NULL DEFAULT 0,
  `reply_from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imap_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `assign_to_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email_folder_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_team`
--

CREATE TABLE `inbound_email_team` (
  `id` bigint(20) NOT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `integration`
--

CREATE TABLE `integration` (
  `id` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `execute_time` datetime DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `queue` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_group` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `executed_at` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `target_id` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `name`, `deleted`, `status`, `execute_time`, `number`, `class_name`, `service_name`, `method_name`, `job`, `data`, `queue`, `group`, `target_group`, `started_at`, `executed_at`, `pid`, `attempts`, `target_id`, `target_type`, `failed_attempts`, `created_at`, `modified_at`, `scheduled_job_id`) VALUES
('650885eec990f6370', 'Dummy', 0, 'Pending', '2023-09-18 17:16:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', '650885a3e6c76b9b0'),
('652d5811974f8b5ff', 'Espo\\Tools\\Stream\\Jobs\\ControlFollowers', 0, 'Pending', '2023-10-16 15:34:41', 2, 'Espo\\Tools\\Stream\\Jobs\\ControlFollowers', NULL, NULL, NULL, '{\"entityType\":\"Lead\",\"entityId\":\"651d5d74a21e83f74\"}', 'q1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2023-10-16 15:34:41', '2023-10-16 15:34:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kanban_order`
--

CREATE TABLE `kanban_order` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `order` smallint(6) DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_article`
--

CREATE TABLE `knowledge_base_article` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Draft',
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Article',
  `publish_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `knowledge_base_article`
--

INSERT INTO `knowledge_base_article` (`id`, `name`, `deleted`, `status`, `language`, `type`, `publish_date`, `expiration_date`, `order`, `description`, `created_at`, `modified_at`, `body`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `version_number`) VALUES
('651d61d44a519c9fa', 'Artical1', 0, 'Draft', 'en_US', 'Article', NULL, NULL, 9998, NULL, '2023-10-04 13:00:04', '2023-10-04 13:00:04', '<section id=\"blackbox-overlay\" class=\"blackbox-overlay\" style=\"position: fixed; right: -424px; top: 0px; height: 725.6px; width: 424px; z-index: 9999; background-color: rgb(18, 21, 27); transition: all 0.3s ease 0s;\"><div class=\"drawer-control-x-button blackbox-button-holder\" style=\"width: 40px; height: 150px; gap: 18px; cursor: pointer; background-color: rgb(16, 17, 25); border-top-left-radius: 16px; border-bottom-left-radius: 16px; flex-direction: column; justify-content: center; align-items: center; margin-top: auto; margin-bottom: auto; padding: 10px; display: flex; position: absolute; inset: 0px auto 0px -40px; transition: all 0.3s cubic-bezier(0.165, 0.84, 0.44, 1) 0s; font-family: sans-serif !important;\"><img src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/logo-vertical.svg\" loading=\"lazy\" alt=\"\" class=\"image-36\" style=\"filter: none; width: 20px; height: 103px; min-height: unset; min-width: unset;\"></div><div data-current=\"Tab 1\" data-easing=\"ease\" data-duration-in=\"300\" data-duration-out=\"100\" class=\"tabs-2 w-tabs\" style=\"height: 725.6px; font-family: sans-serif !important;\"><div class=\"chrome-heading-menu\" style=\"justify-content: space-between; align-items: center; padding: 10px 20px; display: flex;\"><img src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/logo_1.svg\" loading=\"lazy\" alt=\"\" class=\"image-34\" style=\"filter: none; height: 30px; min-height: unset; min-width: unset;\"><div class=\"right-holder\" style=\"display: flex; align-items: center; gap: 5px;\"><div class=\"open-confirm-modal\" style=\"font-size: 10px; cursor: pointer; color: rgba(255, 255, 255, 0.8);\">Settings</div><div class=\"link-block-7 close-overlay\" style=\"width: 20px; height: 20px; justify-content: center; align-self: center; align-items: center; display: flex; cursor: pointer;\"><img src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/chevron-right.svg\" loading=\"lazy\" alt=\"\" style=\"filter: none; min-height: unset; min-width: unset;\"></div></div></div><div class=\"tabs-content-2\" style=\"height: 725.6px; margin-top: -40px; padding-top: 40px;\"><div data-w-tab=\"Tab 1\" class=\"tab-pane-vscode w-tab-pane w--tab-active\" style=\"height: 685.6px;\"><div class=\"div-block-69\" style=\"height: 685.6px; flex-direction: column; display: flex;\"><div class=\"chatlog-container chat-area\" style=\"overflow: auto; padding: 20px; flex-direction: column; width: 424px; text-align: center; flex: 1 1 0%; justify-content: flex-start; margin-left: auto; margin-right: auto; display: flex; position: relative;\"><div class=\"vscode-chartbox\" style=\"z-index: 3; max-width: 790px; gap: 8px; background-color: rgb(37, 40, 49); border: 1px solid rgba(255, 255, 255, 0.1); border-radius: 10px; flex-direction: column; margin-bottom: 16px; margin-left: 0px; padding: 16px; display: flex; position: static;\"><div class=\"div-block-68\" style=\"column-gap: 12px; display: flex;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">Hi! Here some our recommendations to get the best out of BLACKBOX:</div></div><div class=\"indent\" style=\"gap: 8px; flex-direction: column; margin-left: 32px; display: flex; position: relative;\"><div class=\"div-block-68\" style=\"column-gap: 12px; display: flex;\"><img alt=\"\" loading=\"lazy\" src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/check_1.svg\" class=\"icon-vscode\" style=\"filter: none; width: 20px; height: 20px; min-height: unset; min-width: unset;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">Be as clear as possible</div></div><div class=\"div-block-68\" style=\"column-gap: 12px; display: flex;\"><img alt=\"\" loading=\"lazy\" src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/check_1.svg\" class=\"icon-vscode\" style=\"filter: none; width: 20px; height: 20px; min-height: unset; min-width: unset;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">End the question in what language you want the answer to be, e.g: ‘connect to mongodb in python</div></div></div><div class=\"chat-button-containber\" style=\"gap: 16px; flex-flow: wrap; justify-content: flex-end; align-items: center; display: flex;\"><div class=\"text-block-7 no-margin\" style=\"margin-bottom: 0px; color: rgb(196, 203, 218); letter-spacing: 0.3px; font-size: 12px; line-height: 16px;\">or you can just</div><a href=\"https://www.useblackbox.io/\" target=\"_blank\" class=\"vscode-button white\" style=\"color: rgb(13, 17, 22); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); letter-spacing: 0.5px; background-color: rgb(255, 255, 255); border-radius: 99px; justify-content: center; padding: 8px 20px; font-size: 13px; line-height: 20px; display: flex; border: 0px; cursor: pointer; outline: 0px;\">Go to Blackbox</a></div></div><div class=\"vscode-chartbox right-no-outline no-border\" style=\"z-index: 3; max-width: 790px; gap: 8px; background-color: rgba(32, 38, 51, 0.8); border-width: 0.5px; border-color: rgba(255, 255, 255, 0.1); border-image: initial; border-radius: 10px; flex-direction: column; margin-bottom: 16px; margin-left: auto; padding: 0px; display: flex; position: static; border-style: none !important;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">Here are some suggestion (choose one):</div></div><div class=\"vscode-chartbox right-no-outline starter-text\" style=\"z-index: 3; max-width: 790px; gap: 8px; background-color: rgba(32, 38, 51, 0.8); border: 0.5px solid rgba(255, 255, 255, 0.1); border-radius: 10px; flex-direction: column; margin-bottom: 16px; margin-left: auto; padding: 8px 16px; display: flex; position: static; cursor: pointer;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">Write a function that reads data from a json file</div></div><div class=\"vscode-chartbox right-no-outline starter-text\" style=\"z-index: 3; max-width: 790px; gap: 8px; background-color: rgba(32, 38, 51, 0.8); border: 0.5px solid rgba(255, 255, 255, 0.1); border-radius: 10px; flex-direction: column; margin-bottom: 16px; margin-left: auto; padding: 8px 16px; display: flex; position: static; cursor: pointer;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">How to delete docs from mongodb in phyton</div></div><div class=\"vscode-chartbox right-no-outline starter-text\" style=\"z-index: 3; max-width: 790px; gap: 8px; background-color: rgba(32, 38, 51, 0.8); border: 0.5px solid rgba(255, 255, 255, 0.1); border-radius: 10px; flex-direction: column; margin-bottom: 16px; margin-left: auto; padding: 8px 16px; display: flex; position: static; cursor: pointer;\"><div class=\"text-block-10\" style=\"color: rgba(255, 255, 255, 0.8); text-align: left; flex: 1 1 0%; font-size: 13px; line-height: 20px;\">Connect to mongodb in nodejs</div></div></div><div class=\"chat-field-vscode\" style=\"padding: 20px; z-index: 9; height: auto; gap: 9px 16px; flex-direction: column; align-self: stretch; display: flex;\"><div class=\"button-holder\" style=\"display: flex; align-items: center; gap: 10px; flex-shrink: 0; justify-content: center; padding-top: 16px;\"></div><div class=\"chatfield-container\" style=\"gap: 24px; align-items: center; display: flex;\"><div class=\"form-block w-form\" style=\"flex: 1 1 0%; margin: 0px 0px 15px;\"><div id=\"email-form\" class=\"form\" style=\"align-items: center; gap: 16px; display: flex;\"><textarea type=\"text\" class=\"text-field-copy send-message\" autofocus=\"true\" placeholder=\"Ask any coding question\" style=\"resize: none; height: 45px; max-height: 300px; display: block; width: 280px; line-height: 23px; min-height: unset; outline: 0px; font-family: sans-serif !important; font-size: 14px !important; color: rgb(255, 255, 255) !important; background-color: rgb(36, 40, 50) !important; border-color: rgba(255, 255, 255, 0) !important; padding: 10px 20px !important; border-radius: 10px !important;\"></textarea><span class=\"button-circle send-message-icon\" style=\"opacity: 1; background-color: rgb(36, 40, 50); border-radius: 99px; justify-content: center; align-items: center; padding: 10px; display: flex; cursor: pointer;\"><img loading=\"lazy\" src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/send.svg\" alt=\"send\" class=\"icon-24\" style=\"filter: none; cursor: pointer; max-width: none; width: 16px; height: 16px; display: inline-block; min-height: unset; min-width: unset;\"></span><span class=\"button-circle reset-chat\" style=\"opacity: 1; background-color: rgb(36, 40, 50); border-radius: 99px; justify-content: center; align-items: center; padding: 10px; display: flex; cursor: pointer;\"><img loading=\"lazy\" src=\"chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/images/refresh-ccw.svg\" alt=\"refresh\" class=\"icon-24 reset-chat\" style=\"filter: none; cursor: pointer; max-width: none; width: 16px; height: 16px; display: inline-block; min-height: unset; min-width: unset;\"></span></div></div></div><div class=\"text-block-10-copy\" style=\"opacity: 0.7; color: rgba(255, 255, 255, 0.5); font-size: 8px; line-height: 16px;\">Blackbox AI Chat is in beta and Blackbox is not liable for the content generated. By using Blackbox, you acknowledge that you agree to agree to Blackbox\'s&nbsp;<a tyle=\"color:inherit\" href=\"https://www.useblackbox.io/terms\" target=\"_blank\" class=\"link-item\" style=\"color: rgba(255, 255, 255, 0.5); text-decoration-line: underline; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Terms</a>&nbsp;and&nbsp;<a href=\"https://www.useblackbox.io/privacy\" class=\"link-item\" style=\"text-decoration-line: underline; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Privacy Policy</a></div></div></div></div></div></div></section><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_1\"></div><h2 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-weight: 700; margin: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Accessibility links</h2><div jscontroller=\"EufiNb\" class=\"wYq63b\" style=\"display: flex; left: 0px; position: absolute; top: 0px; z-index: 1001;\"><div class=\"S6VXfe\" style=\"align-items: center; background-color: rgb(32, 33, 36); border-radius: 0px 2px 2px 0px; box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 2px 0px, rgba(0, 0, 0, 0.08) 0px 0px 0px 1px; display: flex; margin: 80px auto 8px 0px; overflow: hidden;\"><a jsname=\"BKxS1e\" class=\"gyPpGe\" role=\"link\" tabindex=\"0\" jsaction=\"i3viod\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ67oDCAU\" style=\"color: rgb(197, 138, 249); text-decoration-line: underline; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); border: 2px solid rgba(255, 255, 255, 0.16); border-radius: 2px; cursor: pointer; display: inline-block; line-height: 20px; margin: 6px 11px; min-height: 32px; text-align: center; width: 106px; clip: rect(1px, 1px, 1px, 1px); overflow: hidden; position: absolute; padding: 0px; outline: 0px;\">Skip to main content</a><a jsname=\"PwyVob\" class=\"o8xTWc gyPpGe\" href=\"https://www.google.com/search?q=draft&amp;oq=draft&amp;gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg80gEIMTM1MGowajGoAgCwAgA&amp;sourceid=chrome&amp;ie=UTF-8#\" role=\"link\" jsaction=\"xoizsc\" style=\"color: rgb(197, 138, 249); text-decoration-line: underline; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); border: 2px solid rgba(255, 255, 255, 0.16); border-radius: 2px; cursor: pointer; display: inline-block; line-height: 20px; margin: 6px 11px; min-height: 32px; text-align: center; width: 106px; clip: rect(1px, 1px, 1px, 1px); overflow: hidden; position: absolute; padding: 0px; outline: 0px;\">Turn off continuous scrolling</a><span id=\"tsuid_3\"></span><a jsname=\"KI37ad\" class=\"gyPpGe\" href=\"https://support.google.com/websearch/answer/181196?hl=en-IN\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;url=https://support.google.com/websearch/answer/181196%3Fhl%3Den-IN&amp;ved=0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQwcMDCAc&amp;bl=LEMF&amp;opi=89978449\" style=\"color: rgb(197, 138, 249); text-decoration-line: underline; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); border: 2px solid rgba(255, 255, 255, 0.16); border-radius: 2px; cursor: pointer; display: inline-block; line-height: 20px; margin: 6px 11px; min-height: 32px; text-align: center; width: 106px; clip: rect(1px, 1px, 1px, 1px); overflow: hidden; position: absolute; padding: 0px; outline: 0px;\">Accessibility help</a><div data-async-context=\"async_id:duf3-78;authority:0;card_id:;entry_point:0;feature_id:;ftoe:0;header:0;is_jobs_spam_form:0;open:0;preselect_answer_index:-1;suggestions:;suggestions_subtypes:;suggestions_types:;surface:0;title:;type:78\"><div id=\"duf3-78\" data-jiis=\"up\" data-async-type=\"duffy3\" data-async-context-required=\"type,open,feature_id,async_id,entry_point,authority,card_id,ftoe,title,header,suggestions,surface,suggestions_types,suggestions_subtypes,preselect_answer_index,is_jobs_spam_form\" class=\"yp\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ-0EICA\"></div><a jsname=\"JUypV\" class=\"gyPpGe\" data-async-trigger=\"duf3-78\" role=\"link\" tabindex=\"0\" jsaction=\"trigger.szjOR\" style=\"color: rgb(197, 138, 249); text-decoration-line: underline; -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); border: 2px solid rgba(255, 255, 255, 0.16); border-radius: 2px; cursor: pointer; display: inline-block; line-height: 20px; margin: 6px 11px; min-height: 32px; text-align: center; width: 106px; clip: rect(1px, 1px, 1px, 1px); overflow: hidden; position: absolute; padding: 0px; outline: 0px;\">Accessibility feedback</a></div></div></div><div class=\"CvDJxb\" jscontroller=\"tIj4fb\" jsaction=\"rcuQ6b:npT2md;\" id=\"searchform\" style=\"min-width: 1124px; width: 1519.2px; z-index: 128; position: absolute; top: 20px; margin-top: 6px;\"><div class=\"sfbg\" style=\"background: rgb(32, 33, 36); height: 69px; left: 0px; position: absolute; width: 1519.2px; margin-top: -20px;\"></div><div class=\"Q3DXx yIbDgf\" style=\"display: flex; justify-content: space-between;\"><form class=\"tsf\" action=\"https://www.google.com/search\" id=\"tsf\" autocomplete=\"off\" data-submitfalse=\"q\" method=\"GET\" name=\"f\" role=\"search\" style=\"width: calc(var(--center-abs-margin) + 652px);\"><div jsmodel=\"ZrDSAb vNzKHd\" jsdata=\"MuIEvd;_;CpN2Wk\"><div jscontroller=\"cnjECf\" jsmodel=\"VYkzu kjkykd a4L2gc LM7wx BFDhle gx0hCb TnHSdd L97mud \" class=\"A8SBwf\" data-adhe=\"false\" data-alt=\"true\" data-ehswwf=\"false\" data-hp=\"false\" data-mof=\"false\" jsdata=\"LVplcb;_;\" jsaction=\"lX6RWd:w3Wsmc;ocDSvd:duwfG;DR74Fd:KyvVPe;DkpM0b:d3sQLd;IQOavd:dFyQEf;XzZZPe:jI3wzf;Aghsf:AVsnlb;iHd9U:Q7Cnrc;f5hEHe:G0jgYd;vmxUb:j3bJnb;nTzfpf:YPRawb;R2c5O:LuRugf;qiCkJd:ANdidc;htNNz:SNIJTd;NOg9L:HLgh3;uGoIkd:epUokb;zLdLw:eaGBS;H9muVd:J4e6lb;djyPCf:nMeUJf;hBEIVb:nUZ9le;rcuQ6b:npT2md\" style=\"width: 692px; padding-left: 27px; margin-top: 0px; margin-right: auto; margin-bottom: 0px; margin-left: calc(var(--center-abs-margin) - 47px); position: relative;\"><div class=\"logo\" style=\"position: absolute; left: -139px; padding: 4px 28px 0px 30px; top: 6px;\"><a href=\"https://www.google.com/webhp?hl=en&amp;sa=X&amp;ved=0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQPAgJ\" title=\"Go to Google Home\" id=\"logo\" data-hveid=\"9\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px; overflow: hidden; position: relative; display: block;\"><img class=\"jfN4p\" src=\"https://www.google.com/images/branding/googlelogo/2x/googlelogo_light_color_92x30dp.png\" alt=\"Google\" height=\"30\" width=\"92\" data-atf=\"1\" data-frt=\"0\" style=\"filter: none; background: none;\"></a></div><div class=\"RNNXgb\" jsname=\"RNNXgb\" style=\"display: flex; z-index: 3; min-height: 44px; background: rgb(48, 49, 52); border: 1px solid transparent; box-shadow: rgba(23, 23, 23, 0.24) 0px 1px 3px; border-radius: 24px; margin: 0px auto; width: 690px;\"><div class=\"SDkEP\" style=\"flex: 1 1 0%; display: flex; padding: 5px 4px 0px 14px;\"><div class=\"iblpc\" jsname=\"uFMOof\" style=\"display: flex; align-items: center; padding-right: 6px; margin-top: -7px; height: 46px;\"><div class=\"CcAdNb\" style=\"margin: auto;\"></div></div><div jscontroller=\"vZr2rb\" class=\"a4bIc\" data-hpmde=\"false\" data-mnr=\"4\" jsname=\"gLFyf\" jsaction=\"h5M12e;input:d3sQLd;blur:jI3wzf;keydown:uYT2Vb\" style=\"display: flex; flex-wrap: wrap; flex: 1 1 0%; margin-top: 6px;\"><div jsname=\"vdLsw\" class=\"YacQv\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 16px; line-height: 22px; font-family: arial, sans-serif; flex: 1 1 100%; margin-bottom: 8px; overflow-x: hidden; color: transparent; white-space: pre; position: absolute; pointer-events: none;\"></div><div jsname=\"aJyGR\" jscontroller=\"xMclgd\" class=\"gLFyf i4ySpb\" data-promo-open-duration=\"2000\" jsaction=\"rcuQ6b:npT2md\" style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 16px; line-height: 39px; font-family: arial, sans-serif; flex: 1 1 100%; resize: none; background-color: transparent; border: none; margin: 0px; padding: 0px 0px 3px; color: rgb(232, 234, 237); overflow-wrap: break-word; outline: none; -webkit-tap-highlight-color: transparent; position: absolute;\"></div><textarea jsname=\"yZiJbe\" class=\"gLFyf\" jsaction=\"paste:puy29d; mouseenter:MJEKMe; mouseleave:iFHZnf;\" id=\"APjFqb\" maxlength=\"2048\" name=\"q\" rows=\"1\" aria-activedescendant=\"\" aria-autocomplete=\"both\" aria-controls=\"Alh6id\" aria-expanded=\"false\" aria-haspopup=\"both\" aria-owns=\"Alh6id\" autocapitalize=\"off\" autocomplete=\"off\" autocorrect=\"off\" role=\"combobox\" spellcheck=\"false\" type=\"search\" value=\"draft\" aria-label=\"Search\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ39UDCAw\" style=\"font: 16px / 22px arial, sans-serif; flex: 1 1 100%; resize: none; border-width: initial; border-style: none; border-color: initial; margin-bottom: 8px; padding: 0px 0px 3px; color: rgb(232, 234, 237); outline: 0px; display: flex; -webkit-tap-highlight-color: transparent; overflow: hidden; white-space: nowrap;\"></textarea></div><div class=\"dRYYxd\" style=\"display: flex; flex: 0 0 auto; margin-top: -5px; align-items: stretch; flex-direction: row; height: 44px;\"><div jscontroller=\"PymCCe\" jsname=\"RP0xob\" class=\"BKRPef\" style=\"background: transparent; align-items: center; flex: 1 0 auto; flex-direction: row; display: flex; cursor: pointer; padding-right: 4px;\"><div class=\"M2vV3 vOY7J\" tabindex=\"0\" jsname=\"pkjasb\" aria-label=\"Clear\" role=\"button\" jsaction=\"AVsnlb;rcuQ6b:npT2md\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ05YFCA0\" style=\"background: transparent; border: 0px; align-items: center; flex: 1 0 auto; display: flex; height: 44px; line-height: 44px; outline: 0px; padding: 0px 12px;\"><span class=\"ExCKkf z1asCe rzyADb\" jsname=\"itVqKe\" style=\"display: inline-block; fill: currentcolor; height: 44px; line-height: 24px; position: relative; width: 24px; color: rgb(154, 160, 166); vertical-align: middle; outline: none;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z\"></path></svg></span></div><span jsname=\"s1VaRe\" class=\"ACRAdd M2vV3\" style=\"display: block; border-left: 1px solid rgb(95, 99, 104); height: 28.6px;\"></span></div><div jscontroller=\"unV4T\" jsname=\"F7uqIe\" class=\"XDyW0e\" aria-label=\"Search by voice\" role=\"button\" tabindex=\"0\" jsaction=\"h5M12e;rcuQ6b:npT2md\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvs8DCA4\" style=\"flex: 1 0 auto; display: flex; align-items: center; border: 0px; background: transparent; outline: 0px; padding: 0px 8px; width: 24px; line-height: 44px;\"><svg class=\"goxjub\" focusable=\"false\" viewBox=\"0 0 24 24\" xmlns=\"http://www.w3.org/2000/svg\"><path fill=\"#4285f4\" d=\"m12 15c1.66 0 3-1.31 3-2.97v-7.02c0-1.66-1.34-3.01-3-3.01s-3 1.34-3 3.01v7.02c0 1.66 1.34 2.97 3 2.97z\"></path><path fill=\"#34a853\" d=\"m11 18.08h2v3.92h-2z\"></path><path fill=\"#fbbc04\" d=\"m7.05 16.87c-1.27-1.33-2.05-2.83-2.05-4.87h2c0 1.45 0.56 2.42 1.47 3.38v0.32l-1.15 1.18z\"></path><path fill=\"#ea4335\" d=\"m12 16.93a4.97 5.25 0 0 1 -3.54 -1.55l-1.41 1.49c1.26 1.34 3.02 2.13 4.95 2.13 3.87 0 6.99-2.92 6.99-7h-1.99c0 2.92-2.24 4.93-5 4.93z\"></path></svg></div><div jscontroller=\"lpsUAf\" jsname=\"R5mgy\" class=\"nDcEnd\" data-base-lens-url=\"https://lens.google.com\" data-checkerboard-transparent-images-background-enabled=\"false\" data-convert-transparent-images=\"true\" data-downscaling-enabled=\"true\" data-downscaling-max-longest-edge-pixels=\"1000\" data-encoding-compression-ratio=\"0.4\" data-image-processor-enabled=\"true\" data-is-images-mode=\"false\" data-is-send-dimensions-in-body-enabled=\"false\" data-preferred-mime-type=\"image/jpeg\" data-propagated-experiment-ids=\"72276982,\" data-transparent-image-background-color=\"#fff\" data-transparent-image-checkerboard-color=\"#fff\" data-upload-path=\"/v3/upload?ssb=1&amp;cpe=1&amp;ifg204=1&amp;\" aria-label=\"Search by image\" role=\"button\" tabindex=\"0\" jsaction=\"rcuQ6b:npT2md;h5M12e\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQhqEICA8\" style=\"flex: 1 0 auto; display: flex; align-items: center; border: 0px; background: transparent; outline: 0px; padding: 0px 8px; width: 24px; line-height: 44px;\"><svg class=\"Gdd5U\" focusable=\"false\" viewBox=\"0 0 192 192\" xmlns=\"http://www.w3.org/2000/svg\"><rect fill=\"none\" height=\"192\" width=\"192\"></rect><g><circle fill=\"#34a853\" cx=\"144.07\" cy=\"144\" r=\"16\"></circle><circle fill=\"#4285f4\" cx=\"96.07\" cy=\"104\" r=\"24\"></circle><path fill=\"#ea4335\" d=\"M24,135.2c0,18.11,14.69,32.8,32.8,32.8H96v-16l-40.1-0.1c-8.8,0-15.9-8.19-15.9-17.9v-18H24V135.2z\"></path><path fill=\"#fbbc04\" d=\"M168,72.8c0-18.11-14.69-32.8-32.8-32.8H116l20,16c8.8,0,16,8.29,16,18v30h16V72.8z\"></path><path fill=\"#4285f4\" d=\"M112,24l-32,0L68,40H56.8C38.69,40,24,54.69,24,72.8V92h16V74c0-9.71,7.2-18,16-18h80L112,24z\"></path></g></svg></div></div></div><button jsname=\"Tg7LZd\" class=\"Tg7LZd\" aria-label=\"Search\" type=\"submit\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ4dUDCBA\" style=\"height: 44px; width: 44px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border-width: initial; border-style: none; border-color: initial; flex: 0 0 auto; padding: 0px 13px 0px 0px; outline: 0px;\"><div class=\"zgAlFc\" style=\"background: none; color: rgb(138, 180, 248); height: 24px; width: 24px; margin: auto;\"><span class=\"z1asCe MZy1Rb\" style=\"display: inline-block; fill: currentcolor; height: 24px; line-height: 24px; position: relative; width: 24px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z\"></path></svg></span></div></button></div><div jsname=\"mvaK7d\" class=\"M8H8pb\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ4d8ICBg\" style=\"position: absolute; top: 0px; left: 0px; right: 0px; padding: inherit; width: inherit;\"></div></div><div style=\"background: url(&quot;/images/searchbox/desktop_searchbox_sprites318_hr.webp&quot;);\"></div></div><div id=\"tophf\"></div></form><div class=\"Q3DXx\" style=\"display: flex;\"><div class=\"c58wS\" style=\"display: flex; margin-right: -14px; position: relative; z-index: 99;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_5\" jscontroller=\"vTw9Fc\" jsname=\"gRWMdb\" data-triggering-tag=\"UMK4Dc\" jsaction=\"fj1r1d:qiause\"><div jscontroller=\"w4UyN\" class=\"fLciMb\" data-po=\"360\" aria-label=\"Settings\" role=\"button\" tabindex=\"0\" jsaction=\"rcuQ6b:npT2md;HfCvm;mouseenter:eGiyHb;focus:eGiyHb;focusin:eGiyHb;mouseleave:LfDNce;focusout:LfDNce\" data-ved=\"0ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ6psICBk\" style=\"border-radius: 50%; color: rgb(232, 234, 237); height: 24px; margin-top: 4px; padding: 8px; width: 24px; outline: 0px;\"><span class=\"z1asCe E9hVAb\" style=\"display: inline-block; fill: currentcolor; height: 24px; line-height: 24px; position: relative; width: 24px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M13.85 22.25h-3.7c-.74 0-1.36-.54-1.45-1.27l-.27-1.89c-.27-.14-.53-.29-.79-.46l-1.8.72c-.7.26-1.47-.03-1.81-.65L2.2 15.53c-.35-.66-.2-1.44.36-1.88l1.53-1.19c-.01-.15-.02-.3-.02-.46 0-.15.01-.31.02-.46l-1.52-1.19c-.59-.45-.74-1.26-.37-1.88l1.85-3.19c.34-.62 1.11-.9 1.79-.63l1.81.73c.26-.17.52-.32.78-.46l.27-1.91c.09-.7.71-1.25 1.44-1.25h3.7c.74 0 1.36.54 1.45 1.27l.27 1.89c.27.14.53.29.79.46l1.8-.72c.71-.26 1.48.03 1.82.65l1.84 3.18c.36.66.2 1.44-.36 1.88l-1.52 1.19c.01.15.02.3.02.46s-.01.31-.02.46l1.52 1.19c.56.45.72 1.23.37 1.86l-1.86 3.22c-.34.62-1.11.9-1.8.63l-1.8-.72c-.26.17-.52.32-.78.46l-.27 1.91c-.1.68-.72 1.22-1.46 1.22zm-3.23-2h2.76l.37-2.55.53-.22c.44-.18.88-.44 1.34-.78l.45-.34 2.38.96 1.38-2.4-2.03-1.58.07-.56c.03-.26.06-.51.06-.78s-.03-.53-.06-.78l-.07-.56 2.03-1.58-1.39-2.4-2.39.96-.45-.35c-.42-.32-.87-.58-1.33-.77l-.52-.22-.37-2.55h-2.76l-.37 2.55-.53.21c-.44.19-.88.44-1.34.79l-.45.33-2.38-.95-1.39 2.39 2.03 1.58-.07.56a7 7 0 0 0-.06.79c0 .26.02.53.06.78l.07.56-2.03 1.58 1.38 2.4 2.39-.96.45.35c.43.33.86.58 1.33.77l.53.22.38 2.55z\"></path><circle cx=\"12\" cy=\"12\" r=\"3.5\"></circle></svg></span><div jsname=\"suEOdc\" class=\"ZOyvub\" style=\"visibility: hidden; position: absolute; top: 50px; padding: 5px 6px; background-color: rgb(66, 69, 72); color: rgb(248, 249, 250); border-radius: 4px; font-size: 12px; letter-spacing: 1px; left: 20px; transform: translateX(-50%); width: max-content;\"></div></div></div></div><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_7\"><div class=\"gb_Na gb_f gb_eb gb_j gb_Mc gb_Xc\" id=\"gb\" style=\"color: white; min-width: unset; position: relative; transition: box-shadow 250ms ease 0s; height: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-stretch: normal; font-size: 13px; line-height: 27px; font-family: Roboto, Arial, sans-serif; z-index: 986; padding-left: 16px; padding-right: 16px; float: none; background-color: rgb(32, 33, 36);\"><div class=\"gb_yd gb_cb gb_nd\" data-ogsr-up=\"\" style=\"height: 48px; vertical-align: middle; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; user-select: none; line-height: normal; padding: 0px 4px 0px 0px; -webkit-box-flex: 0; flex: 0 0 auto; justify-content: flex-end; float: none;\"><div class=\"gb_Sd\" style=\"position: relative; float: right;\"><div class=\"gb_4c\" style=\"display: inline;\"><div class=\"gb_l gb_v gb_H\" data-ogsr-fb=\"true\" data-ogsr-alt=\"\" id=\"gbwa\" style=\"display: inline-block; vertical-align: middle; padding: 4px;\"><div class=\"gb_g\" style=\"position: relative;\"><a class=\"gb_d\" aria-label=\"Google apps\" href=\"https://www.google.co.in/intl/en/about/products?tab=wh\" aria-expanded=\"false\" role=\"button\" tabindex=\"0\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: inline-block; outline: 0px; vertical-align: middle; border-radius: 50%; height: 40px; width: 40px; padding: 8px; background-position: -64px -29px; opacity: 1;\"><svg class=\"gb_i\" focusable=\"false\" viewBox=\"0 0 24 24\"><path d=\"M6,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM16,6c0,1.1 0.9,2 2,2s2,-0.9 2,-2 -0.9,-2 -2,-2 -2,0.9 -2,2zM12,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2z\"></path></svg></a></div></div></div><div class=\"gb_b gb_v gb_Zf gb_H\" style=\"display: inline-block; vertical-align: middle; padding: 4px; -webkit-box-flex: 0; flex: 0 1 auto;\"><div class=\"gb_g gb_bb gb_Zf gb_H\" style=\"position: relative; -webkit-box-flex: 0; flex: 0 1 auto;\"><a class=\"gb_d gb_Da gb_H\" aria-label=\"Google Account: No Name  \n(defaultbyvk@gmail.com)\" href=\"https://accounts.google.com/SignOutOptions?hl=en&amp;continue=https://www.google.com/search%3Fq%3Ddraft%26oq%3Ddraft%26gs_lcrp%3DEgZjaHJvbWUyBggAEEUYOTIGCAEQRRg80gEIMTM1MGowajGoAgCwAgA%26sourceid%3Dchrome%26ie%3DUTF-8&amp;ec=GBRAAQ\" role=\"button\" tabindex=\"0\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: inline-block; outline: 0px; vertical-align: middle; border-radius: 50%; height: 40px; width: 40px; padding: 4px; -webkit-box-flex: 0; flex: 0 1 auto;\"><img class=\"gb_n gbii\" src=\"https://lh3.googleusercontent.com/ogw/AKPQZvzEMMseiEzkKhA6BEcLESsViMhaDWjKfgg7nwg=s32-c-mo\" srcset=\"https://lh3.googleusercontent.com/ogw/AKPQZvzEMMseiEzkKhA6BEcLESsViMhaDWjKfgg7nwg=s32-c-mo 1x, https://lh3.googleusercontent.com/ogw/AKPQZvzEMMseiEzkKhA6BEcLESsViMhaDWjKfgg7nwg=s64-c-mo 2x \" alt=\"\" aria-hidden=\"true\" data-noaft=\"\" style=\"filter: none; background-size: 32px 32px; border-radius: 50%; display: block; margin: 0px; position: relative; height: 32px; width: 32px; z-index: 0;\"></a></div></div></div><div style=\"overflow: hidden; position: absolute; top: 0px; visibility: hidden; width: 370px; z-index: 991; height: 0px; margin-top: 50px; transition: height 0.3s ease-in-out 0s; right: 0px; margin-right: 4px;\"></div><div style=\"overflow: hidden; position: absolute; top: 0px; visibility: hidden; width: 436px; z-index: 991; height: 0px; margin-top: 50px; right: 0px; margin-right: 4px;\"></div></div></div></div></div></div></div><div id=\"gac_scont\"></div><div class=\"main\" id=\"main\" style=\"min-width: calc(var(--center-abs-margin) + var(--center-width) + var(--rhs-margin) + var(--rhs-width) + var(--lhs-refinements-width)); width: 1519.2px;\"><div jsmodel=\" ROaKxe\" class=\"e9EfHf\" id=\"cnt\" style=\"font-family: arial, sans-serif; clear: both; margin-left: 0px; padding-top: 20px; position: relative; min-height: 100vh;\"><div class=\"dodTBe\" id=\"sfcnt\" style=\"height: 65px;\"></div><div data-st-cnt=\"ee\" id=\"easter-egg\"></div><div jscontroller=\"HYSCof\" class=\"gke0pe\" id=\"top_nav\" jsdata=\"Z1JpA;_;CpN2XE\" jsaction=\"rcuQ6b:npT2md\"><h2 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-weight: 700; margin: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Search modes</h2><div class=\"GLcBOb cCvmNd\" role=\"navigation\" id=\"hdtb\" style=\"color: rgb(154, 160, 166); font-family: &quot;Google Sans&quot;, arial, sans-serif; border-bottom: none; position: relative; z-index: 126;\"><div class=\"yg51vc\" id=\"pTwnEc\" style=\"background: rgb(32, 33, 36); height: 47px; padding: 0px; position: relative; z-index: 126; text-wrap: nowrap;\"><div class=\"IC1Ck\" id=\"hdtb-msb\" style=\"position: relative; align-items: baseline; display: flex; float: left; justify-content: space-between; min-width: calc(var(--center-abs-margin) + 652px);\"><div><div class=\"MUFPAc\" style=\"display: inline; margin-left: calc(var(--center-abs-margin) + -11px);\"><div class=\"hdtb-mitem hdtb-msel\" aria-current=\"page\" style=\"height: 16px; line-height: 16px; margin: 0px 1px; display: inline-block; color: rgb(138, 180, 248); padding: 17px 12px 11px 10px; border-bottom: none;\"><span class=\"bmaJhd iJddsb\" style=\"margin-right: 5px; vertical-align: text-bottom; display: inline-block; fill: currentcolor; height: 16px; width: 16px;\"><svg focusable=\"false\" viewBox=\"0 0 24 24\"><path fill=\"#34a853\" d=\"M10 2v2a6 6 0 0 1 6 6h2a8 8 0 0 0-8-8\"></path><path fill=\"#ea4335\" d=\"M10 4V2a8 8 0 0 0-8 8h2c0-3.3 2.7-6 6-6\"></path><path fill=\"#fbbc04\" d=\"M4 10H2a8 8 0 0 0 8 8v-2c-3.3 0-6-2.69-6-6\"></path><path fill=\"#4285f4\" d=\"M22 20.59l-5.69-5.69A7.96 7.96 0 0 0 18 10h-2a6 6 0 0 1-6 6v2c1.85 0 3.52-.64 4.88-1.68l5.69 5.69L22 20.59\"></path></svg></span>All<div class=\"YTDezd\" style=\"background: rgb(138, 180, 248); height: 3px; margin-top: 11px;\"></div></div><div class=\"hdtb-mitem\" style=\"height: 16px; line-height: 16px; margin: 0px 1px; display: inline-block;\"><a href=\"https://www.google.com/search?q=draft&amp;sca_esv=570661384&amp;tbm=isch&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;source=lnms&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_AUoAXoECAIQAw\" data-hveid=\"CAIQAw\" style=\"color: rgb(150, 155, 161); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: inline-block; padding: 17px 12px 11px 10px; outline: 0px;\"><span class=\"bmaJhd iJddsb\" style=\"margin-right: 5px; vertical-align: text-bottom; display: inline-block; fill: currentcolor; height: 16px; width: 16px;\"><svg focusable=\"false\" viewBox=\"0 0 24 24\"><path d=\"M14 13l4 5H6l4-4 1.79 1.78L14 13zm-6.01-2.99A2 2 0 0 0 8 6a2 2 0 0 0-.01 4.01zM22 5v14a3 3 0 0 1-3 2.99H5c-1.64 0-3-1.36-3-3V5c0-1.64 1.36-3 3-3h14c1.65 0 3 1.36 3 3zm-2.01 0a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h7v-.01h7a1 1 0 0 0 1-1V5\"></path></svg></span>Images</a></div><div class=\"hdtb-mitem\" style=\"height: 16px; line-height: 16px; margin: 0px 1px; display: inline-block;\"><a href=\"https://www.google.com/search?q=draft&amp;sca_esv=570661384&amp;tbm=nws&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;source=lnms&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_AUoAnoECAIQBA\" data-hveid=\"CAIQBA\" style=\"color: rgb(150, 155, 161); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: inline-block; padding: 17px 12px 11px 10px; outline: 0px;\"><span class=\"bmaJhd iJddsb\" style=\"margin-right: 5px; vertical-align: text-bottom; display: inline-block; fill: currentcolor; height: 16px; width: 16px;\"><svg focusable=\"false\" viewBox=\"0 0 24 24\"><path d=\"M12 11h6v2h-6v-2zm-6 6h12v-2H6v2zm0-4h4V7H6v6zm16-7.22v12.44c0 1.54-1.34 2.78-3 2.78H5c-1.64 0-3-1.25-3-2.78V5.78C2 4.26 3.36 3 5 3h14c1.64 0 3 1.25 3 2.78zM19.99 12V5.78c0-.42-.46-.78-1-.78H5c-.54 0-1 .36-1 .78v12.44c0 .42.46.78 1 .78h14c.54 0 1-.36 1-.78V12zM12 9h6V7h-6v2\"></path></svg></span>News</a></div><div class=\"hdtb-mitem\" style=\"height: 16px; line-height: 16px; margin: 0px 1px; display: inline-block;\"><a href=\"https://www.google.com/search?q=draft&amp;sca_esv=570661384&amp;tbm=shop&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;source=lnms&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_AUoA3oECAIQBQ\" data-hveid=\"CAIQBQ\" style=\"color: rgb(150, 155, 161); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: inline-block; padding: 17px 12px 11px 10px; outline: 0px;\"><span class=\"bmaJhd iJddsb\" style=\"margin-right: 5px; vertical-align: text-bottom; display: inline-block; fill: currentcolor; height: 16px; width: 16px;\"><svg focusable=\"false\" viewBox=\"0 0 24 24\"><path d=\"M21.11 2.89A3.02 3.02 0 0 0 18.95 2h-5.8c-.81 0-1.58.31-2.16.89L7.25 6.63 2.9 10.98a3.06 3.06 0 0 0 0 4.32l5.79 5.8a3.05 3.05 0 0 0 4.32.01l8.09-8.1c.58-.58.9-1.34.9-2.16v-5.8c0-.81-.32-1.59-.89-2.16zM20 10.85c0 .28-.12.54-.32.74l-3.73 3.74-4.36 4.36c-.41.41-1.08.41-1.49 0l-2.89-2.9-2.9-2.9a1.06 1.06 0 0 1 0-1.49l8.1-8.1c.2-.2.46-.3.74-.3l5.8-.01A1.05 1.05 0 0 1 20 5.05v5.8zM16 6c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2\"></path></svg></span>Shopping</a></div><div class=\"hdtb-mitem\" style=\"height: 16px; line-height: 16px; margin: 0px 1px; display: inline-block;\"><a href=\"https://www.google.com/search?q=draft&amp;sca_esv=570661384&amp;tbm=vid&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;source=lnms&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_AUoBHoECAIQBg\" data-hveid=\"CAIQBg\" style=\"color: rgb(150, 155, 161); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: inline-block; padding: 17px 12px 11px 10px; outline: 0px;\"><span class=\"bmaJhd iJddsb\" style=\"margin-right: 5px; vertical-align: text-bottom; display: inline-block; fill: currentcolor; height: 16px; width: 16px;\"><svg focusable=\"false\" viewBox=\"0 0 24 24\"><path d=\"M10 16.5l6-4.5-6-4.5v9zM5 20h14a1 1 0 0 0 1-1V5a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1zm14.5 2H5a3 3 0 0 1-3-3V4.4A2.4 2.4 0 0 1 4.4 2h15.2A2.4 2.4 0 0 1 22 4.4v15.1a2.5 2.5 0 0 1-2.5 2.5\"></path></svg></span>Videos</a></div></div><span class=\"hdtb-mitem\" jscontroller=\"nabPbb\" data-ffp=\"false\" jsaction=\"KyPa0e:Y0y4c;BVfjhf:VFzweb;wjOG7e:gDkf4c;\" style=\"height: 16px; line-height: 16px; margin: 0px 1px; display: inline-block;\"><g-popup jsname=\"V68bde\" jscontroller=\"DPreE\" jsaction=\"A05xBd:IYtByb;EOZ57e:WFrRFb;\" jsdata=\"mVjAjf;_;CpN2XU\"><div jsname=\"oYxtQd\" class=\"CcNe6e\" aria-expanded=\"false\" aria-haspopup=\"true\" role=\"button\" tabindex=\"0\" jsaction=\"WFrRFb;keydown:uYT2Vb\" style=\"display: inline-block; outline: 0px;\"><div jsname=\"LgbsSe\" class=\"GOE98c\" style=\"color: rgb(150, 155, 161); display: inline-block; padding: 17px 12px 11px 10px;\"><span class=\"MbEPDb z1asCe SaPW2b\" style=\"display: inline-block; fill: currentcolor; height: 16px; line-height: 16px; position: relative; width: 16px; margin-left: -4px; vertical-align: text-bottom;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span>More</div></div></g-popup></span></div><div><div class=\"t2vtad\" id=\"hdtb-tls\" aria-controls=\"hdtbMenus\" aria-expanded=\"false\" role=\"button\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2x96BAgCEA4\" style=\"color: rgb(150, 155, 161); display: inline-block; padding: 4px 11px; border: 1px solid transparent; text-align: center; border-radius: 2px; line-height: 19px; margin-left: -1px; margin-right: -11px; outline: 0px;\">Tools</div></div></div><ol class=\"pdswFd\" role=\"none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; float: right; position: relative; right: 17px; z-index: 3;\"><li class=\"hdtb-mitem\" style=\"margin-top: 0px; margin-right: 1px; margin-left: 1px; padding: 0px; list-style: none; height: 16px; line-height: 16px; display: inline-block;\"><div class=\"nr7I6e\"><span jscontroller=\"nabPbb\" data-ffp=\"false\" jsaction=\"KyPa0e:Y0y4c;BVfjhf:VFzweb;wjOG7e:gDkf4c;\"><g-popup jsname=\"V68bde\" jscontroller=\"DPreE\" jsaction=\"A05xBd:IYtByb;EOZ57e:WFrRFb;\" jsdata=\"mVjAjf;_;CpN2XU\"><div jsname=\"oYxtQd\" class=\"CcNe6e\" aria-expanded=\"false\" aria-haspopup=\"true\" role=\"button\" tabindex=\"0\" jsaction=\"WFrRFb;keydown:uYT2Vb\" style=\"display: inline-block; outline: 0px;\"><div jsname=\"LgbsSe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ7KcKegQIAhAQ\"><g-dropdown-button class=\"fFI3rb NkCsjc\" style=\"padding: 13px 6px 8px 12px; border-radius: 8px; position: relative; display: block; outline: none;\"><g-dropdown-menu-button-caption class=\"S7TGef BBwThe\" jscontroller=\"EbPKJf\" data-ddph=\"\" jsaction=\"rcuQ6b:npT2md\" style=\"height: 24px; line-height: 24px; margin-right: 1px; display: inline; color: rgb(189, 193, 198);\"><span jsname=\"vs0Yb\"><div class=\"F75bid\" style=\"color: rgb(150, 155, 161); display: inline-block;\">SafeSearch<span class=\"MmOzS z1asCe K1bG5d\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; vertical-align: middle; padding-bottom: 2px; padding-left: 4px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7 10l5 5 5-5z\"></path></svg></span></div></span></g-dropdown-menu-button-caption></g-dropdown-button></div></div></g-popup></span></div></li></ol></div></div></div><div id=\"before-appbar\"></div><div class=\"gTMtLb fp-nh\" id=\"lb\" style=\"z-index: 1001; position: absolute; top: -1000px;\"></div><div class=\"appbar\" data-st-cnt=\"top\" id=\"appbar\" style=\"background: rgb(32, 33, 36); position: relative; margin-left: var(--center-abs-margin);\"><div jscontroller=\"rlTQBf\" data-st-tgt=\"top\" jsaction=\"rcuQ6b:npT2md\"><div id=\"extabar\"><div style=\"position: relative;\"><div class=\"WE0UJf NyYcvd\" id=\"slim_appbar\" style=\"height: 43px;\"><div class=\"LHJvCe\" style=\"color: rgb(154, 160, 166); display: flex; justify-content: space-between; transition: all 220ms ease-in-out 0s; line-height: 43px; min-width: 652px; position: absolute; top: 0px;\"><div id=\"result-stats\" style=\"overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; font-family: &quot;Google Sans&quot;, arial, sans-serif; padding-top: 0px; padding-bottom: 0px; padding-right: 8px;\">About 2,61,00,00,000 results<nobr>&nbsp;(0.41 seconds)&nbsp;</nobr></div></div></div></div></div></div></div><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_9\"><div jsname=\"rSAM5d\"><div id=\"arc-stev\" data-jiis=\"up\" data-async-type=\"arc\" data-async-context-required=\"arc_id,q\" class=\"yp\" data-async-rclass=\"search\" style=\"opacity: 0;\"></div></div></div><div data-iatvcap=\"1\" data-st-cnt=\"atvcap\" id=\"atvcap\"></div><div class=\"GyAeWb EyBRub\" id=\"rcnt\" style=\"display: flex; justify-content: flex-start; flex-wrap: wrap; max-width: calc(var(--center-abs-margin) + var(--center-width) + var(--rhs-margin) + var(--rhs-width) + var(--lhs-refinements-width));\"><div class=\"mNh24c\" style=\"width: var(--center-width); margin-left: var(--center-abs-margin); flex: 0 1 auto;\"><div id=\"oFNiHe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQL3oECAkQAg\"></div><div id=\"tvcap\"></div></div><div class=\"XqFnDf\" data-hveid=\"CAkQAw\" style=\"flex: 0 1 auto; margin-left: var(--center-abs-margin); width: calc(var(--center-width) + var(--rhs-margin) + var(--rhs-width));\"><div data-hveid=\"CAkQBA\"><div jscontroller=\"I2A9n\" jsaction=\"rcuQ6b:npT2md\" class=\"kp-wholepage-osrp\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQqPUHegQIChAA\"><div jscontroller=\"Wo3n8\" jsname=\"aadvhe\" jsmodel=\"d5EhJe\" data-eas=\"\" data-fhs=\"\" data-kes=\"\" jsdata=\"vST7rb;_;CpN2Xg zEIyGd;_;\" jsaction=\"kPzEO:MlP2je;w8f1fc:hRwSgb;aIJAdf:UhDUnd;BqbTbe:naa5ve;kYAKrf:CqUGrf;hwhRRe:KyxjCd;rcuQ6b:npT2md\"><div jsname=\"GkjeIf\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_28\" data-jiis=\"up\" data-async-type=\"kp_feedback\" class=\"yp\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ68cEegQIChAB\"></div></div><div class=\"HdbW6 MjUjnf VM6qJ\" style=\"height: 58px; overflow: hidden; margin: 4px 0px 17px; padding-top: 8px; position: relative;\"><div class=\"hHq9Z\" style=\"float: left; margin-right: 16px;\"><div data-hveid=\"CAsQAA\"><div class=\"gyEfO\" style=\"display: inline-block;\"><div class=\"wDYxhc NFQFxe viOShc LKPcQc\" data-md=\"221\" data-hveid=\"CBEQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQnKEBegQIERAA\" style=\"clear: both;\"><div class=\"ZxoDOe yGdMVd UoezFf\" style=\"line-height: 1.2; position: relative; align-items: center; color: rgb(232, 234, 237); display: flex; height: 58px; padding-bottom: 0px; top: 5px;\"><div class=\"UFE1qd\"><div class=\"PyJv1b gsmt PZPZlf qRofMd\" data-attrid=\"title\" data-hveid=\"CBEQAQ\" style=\"font-size: 20px; overflow: hidden; padding: 10px 0px 0px; line-height: 26px; word-break: break-word; height: 36px; position: relative; text-overflow: ellipsis; top: -5px; text-wrap: nowrap; max-width: 576px; display: inline-block; vertical-align: middle;\"><span role=\"heading\" aria-level=\"1\" class=\"yKMVIe\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; font-size: 28px; line-height: 36px;\">draft</span></div><div class=\"EGmpye Mf9fnc\" style=\"opacity: 0; position: absolute; visibility: hidden; display: flex; max-width: 576px; padding-top: 2px; top: -5px;\"></div><div class=\"oQDTXb\" style=\"display: inline-block; flex: 0 0 22px; height: 20px; padding: 1px 0px 1px 6px; vertical-align: middle; width: 22px;\"><div jscontroller=\"rhe7Pb\" data-ias=\"false\" jsaction=\"oqw9D:j0y2Xe\"><div class=\"y1yadf\" style=\"position: relative; display: inline-block; z-index: 125;\"><g-dropdown-menu jsname=\"tcAyJf\" jscontroller=\"pFsdhd\" jsdata=\"xJGXK;_;CpN2Xo\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;mMf61e:GKlhgf;YraOve:cCpuJc;kNOP9c:bzkPEc;hmb6Ye:oyYkKb;KyPa0e:G8Ofmd;wjOG7e:rWoVB;ZvRO4b:L76sMb;LyWNEf:L76sMb\" style=\"display: inline-block; position: relative;\"><g-popup jsname=\"zpo2ue\" class=\"eNRwyf\" jscontroller=\"DPreE\" jsaction=\"A05xBd:IYtByb;EOZ57e:WFrRFb;\" jsdata=\"mVjAjf;_;CpN2XU\" style=\"height: 100%; width: 100%;\"><div jsname=\"oYxtQd\" class=\"CcNe6e v4Zpbe\" aria-expanded=\"false\" aria-haspopup=\"true\" jsslot=\"\" role=\"button\" tabindex=\"0\" jsaction=\"WFrRFb;keydown:uYT2Vb\" style=\"display: flex; height: 20px; width: 20px; outline: 0px;\"><span class=\"XQIMve wSFoM ZS5sq IzqbHb z1asCe SaPW2b\" aria-label=\"More options\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8sQCKAN6BAgREAQ\" style=\"display: inline-block; fill: currentcolor; height: 16px; line-height: 16px; position: relative; width: 16px; padding: 2px; border-radius: 50%;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></div></g-popup></g-dropdown-menu></div></div></div></div></div></div></div></div></div><div jsname=\"ntFePb\" class=\"GRl5yb a8pxAe\" style=\"max-height: 120px; visibility: inherit;\"><div jscontroller=\"B8bawb\" class=\"FJIcp\" id=\"JTPWx\" jsdata=\"vEURL;_;CpN2Xk\" role=\"tablist\" jsaction=\"rcuQ6b:npT2md\" data-hveid=\"CA8QAA\"><span jsname=\"AznF2e\" class=\"NQyKp Maj6Tc\" aria-selected=\"true\" data-ti=\"overview\" tabindex=\"0\" role=\"tab\" jsaction=\"keydown:uYT2Vb;R9zItb\" data-hveid=\"CAwQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyNoBKAB6BAgMEAA\" data-tab-index=\"0\" style=\"border-radius: 100px; cursor: pointer; display: inline-block; line-height: 16px; margin: 14px 0px 6px 8px; overflow: hidden; vertical-align: top; text-size-adjust: none; border: 1px solid currentcolor; outline: 0px; color: rgb(238, 240, 255);\"><span class=\"REySof\" style=\"background-color: currentcolor; display: block; font-family: &quot;Google Sans&quot;, arial, sans-serif; padding: 11px 19px; color: rgb(47, 59, 78);\"><span class=\"b0Xfjd\" style=\"display: inline-block; pointer-events: none; color: rgb(238, 240, 255);\">Overview</span></span></span><span jsname=\"AznF2e\" class=\"NQyKp\" aria-selected=\"false\" data-ti=\"Thesaurus\" tabindex=\"-1\" role=\"tab\" jsaction=\"keydown:uYT2Vb;R9zItb\" data-hveid=\"CBAQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyNoBKAB6BAgQEAA\" data-tab-index=\"1\" style=\"border-radius: 100px; cursor: pointer; display: inline-block; line-height: 16px; margin: 14px 0px 6px 8px; overflow: hidden; vertical-align: top; text-size-adjust: none; outline: 0px; color: rgb(238, 240, 255);\"><span class=\"REySof\" style=\"background-color: currentcolor; display: block; font-family: &quot;Google Sans&quot;, arial, sans-serif; padding: 12px 20px; color: rgb(47, 59, 78);\"><span class=\"b0Xfjd\" style=\"display: inline-block; pointer-events: none; color: rgb(238, 240, 255);\">Similar and opposite words</span></span></span><span jsname=\"AznF2e\" class=\"NQyKp\" aria-selected=\"false\" data-ti=\"g:UsageExamples\" tabindex=\"-1\" role=\"tab\" jsaction=\"keydown:uYT2Vb;R9zItb\" data-hveid=\"CA4QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyNoBKAB6BAgOEAA\" data-tab-index=\"2\" style=\"border-radius: 100px; cursor: pointer; display: inline-block; line-height: 16px; margin: 14px 0px 6px 8px; overflow: hidden; vertical-align: top; text-size-adjust: none; outline: 0px; color: rgb(238, 240, 255);\"><span class=\"REySof\" style=\"background-color: currentcolor; display: block; font-family: &quot;Google Sans&quot;, arial, sans-serif; padding: 12px 20px; color: rgb(47, 59, 78);\"><span class=\"b0Xfjd\" style=\"display: inline-block; pointer-events: none; color: rgb(238, 240, 255);\">Usage examples</span></span></span><span jsname=\"AznF2e\" class=\"NQyKp\" aria-selected=\"false\" data-ti=\"Pronunciation\" tabindex=\"-1\" role=\"tab\" jsaction=\"keydown:uYT2Vb;R9zItb\" data-hveid=\"CA0QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyNoBKAB6BAgNEAA\" data-tab-index=\"3\" style=\"border-radius: 100px; cursor: pointer; display: inline-block; line-height: 16px; margin: 14px 0px 6px 8px; overflow: hidden; vertical-align: top; text-size-adjust: none; outline: 0px; color: rgb(238, 240, 255);\"><span class=\"REySof\" style=\"background-color: currentcolor; display: block; font-family: &quot;Google Sans&quot;, arial, sans-serif; padding: 12px 20px; color: rgb(47, 59, 78);\"><span class=\"b0Xfjd\" style=\"display: inline-block; pointer-events: none; color: rgb(238, 240, 255);\">Pronunciation</span></span></span></div></div></div><div class=\"GCSyeb iNlBQe\" style=\"background: rgb(60, 64, 67); height: 1px; left: 0px; position: absolute; right: 0px;\"></div><div class=\"uzfIAc\" style=\"height: 25px;\"></div></div></div></div><div class=\"s6JM6d\" id=\"center_col\" style=\"width: var(--center-width); position: relative; margin-left: var(--center-abs-margin); flex: 0 1 auto;\"><div class=\"eqAnXb\" id=\"res\" role=\"main\" style=\"font-size: medium;\"><iframe class=\"a9gads\" id=\"yhostedframeidlongname\" scrolling=\"no\" frameborder=\"0\" src=\"https://searchways.net/go/search.php?subid2=9112&amp;h=bff440e302a6d69b761d690daea72919&amp;keyword=draft\" width=\"100%\" allowtransparency=\"true\" style=\"filter: none; outline: 0px; height: 0px; display: block; width: 652px; position: absolute; top: 0px; left: 0px; background: transparent;\"></iframe><div id=\"topstuff\"></div><div id=\"search\"><div data-hveid=\"CAkQBg\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQGnoECAkQBg\"><h1 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-family: arial, sans-serif; font-size: 14px; font-weight: 700; margin-top: 0px; margin-bottom: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Search Results</h1><div class=\"v7W49e\" eid=\"nGEdZcqwKp3X1e8Pp-G8wAY\" data-async-context=\"query:draft\" id=\"rso\" style=\"margin-top: 6px;\"><h2 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-weight: 700; margin: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Main results</h2><div class=\"ULSxyf\" style=\"margin-bottom: 44px;\"><div class=\"MjjYud\"><div jscontroller=\"sG005c\" jsaction=\"DuGcz:zaQPLb;wjeEFe:zaQPLb;i2Tjcd:zaQPLb\"><div jsname=\"TlEBqd\" jsmodel=\"HX2tLd\" class=\"kp-wholepage pEZBSb kp-wholepage-osrp Jb0Zif Ub31p\" data-hveid=\"CBIQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_-ABKAB6BAgSEAA\"><div class=\"fKw1wf osrp-blk\" jscontroller=\"fREC7d\" data-dep=\"1\" data-eprs=\"1\" data-esos=\"1\" data-sosm=\"24\" data-tfts=\"300\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_32\" jsdata=\"rj6Pjf;_;CpN2X0\" jsaction=\"rcuQ6b:npT2md;ZAPqle:OZ0lMc;DbzZ8e:R9zItb;jeZwFd:VimORe;DuGcz:f20zue;wjeEFe:f20zue;MpH3lc:QS7jMc;wGAPfc:xAMCof;VC04sf:gu6R4e\" style=\"margin: 0px 0px 8px; opacity: 1;\"><wholepage-tab-history-helper></wholepage-tab-history-helper><div class=\"V734yf eXEBMb Znsfnf\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_33\" jscontroller=\"SrMpob\" data-ii=\"0\" data-mcei=\"cubic-bezier(0.1,1,0.2,1)\" data-mcsi=\"cubic-bezier(0.2,0.6,0.2,1)\" data-mcso=\"cubic-bezier(0.4,0,1,0.8)\" data-md=\"300\" jsdata=\"bBCFHd;_;CpN2X8\" jsaction=\"EormBc:HFYvKc\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQztoBKAB6BAgSEAE\" style=\"position: relative;\"><div jsname=\"ibnC6b\" class=\"GhpATe pttBJc\"><div role=\"tabpanel\" id=\"kp-wp-tab-cont-overview\" jscontroller=\"etGP4c\" data-lopri=\"1\" data-rcov=\"1\" jsdata=\"gsRMGb;_;CpN2YA\" jsaction=\"rcuQ6b:npT2md;u16dZe:h1apBe;lgrA4c:LZRHNc;sQFYsc:J0vfUe;Vituk:iBD8fc;VWEuHf:Hh7WQb\" data-hveid=\"CBIQAg\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQydoBKAB6BAgSEAI\"><h1 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-family: arial, sans-serif; font-size: 14px; font-weight: 700; margin-top: 0px; margin-bottom: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Main results</h1><div class=\"xDKLO\"><div><div jscontroller=\"m1Ro8b\" jsdata=\"Qbxzod;_;CpN2X4\" jsaction=\"TenKae:BQOpGc;rcuQ6b:npT2md\"><div jsname=\"QvTDgf\" id=\"kp-wp-tab-overview\" data-hveid=\"CBYQAw\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQkt4BKAB6BAgWEAM\"><div class=\"TzHB6b cLjAic LMRCfc\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CCoQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQy9oBKAB6BAgqEAA\" style=\"font-size: 14px; margin: 0px 0px 44px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div class=\"wDYxhc\" data-md=\"14\" style=\"clear: both;\"><div jscontroller=\"g3PTRd\" data-corpus=\"en\" data-dsk=\"true\" data-hhdr=\"true\" data-language=\"en\" data-query-term=\"draft\" data-robtew=\"true\" data-tae=\"true\" jsdata=\"VCUYVd;_;CpN2YI\" jsaction=\"rcuQ6b:npT2md;KEXcpd:koL3x;wUL9Q:bO4mad\"><div data-hveid=\"CCgQAA\"><div jsname=\"zvWiOe\" class=\"dob-modules yp\" data-async-fc=\"EswBCowBQUxPbnBZVVd2Nmh6dmE1RTRycjFqQ19fNjRkOXhDV3dTck5Ta3hRSE13NVBrd1VhUE9IWlBnMVRXUmM4SmotaHk2MF80OFVwQ29pLThTRU5LSDBreWZhZTB6ZFJTZG5zSDBNZEFaQ2NqM25lTVdKUmljNkN0c2hKblVfd3ZkTHVhNGVxY0hldDNLQVASF25HRWRaY3F3S3AzWDFlOFBwLUc4d0FZGiJBSndrLThmVUVnLVp5MXF3SzZBd1NOMEVzS1J3R1d5WlB3\" data-async-fcv=\"3\" data-async-ons=\"5493\" id=\"fc_3\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQg4MCegQIKBAB\"><div decode-data-ved=\"1\"><div class=\"dG2XIf ouUsKb\" style=\"box-shadow: none; background: rgb(32, 33, 36); border: none; border-radius: 8px; position: relative; margin-left: 0px; margin-right: 0px;\"><div id=\"tsuid_49\" jscontroller=\"WklB4\" jsaction=\"rcuQ6b: npT2md;\" jsshadow=\"\" class=\"xpdbox xpdclose\"><span jsslot=\"\"><div data-inside-content-expander-position=\"\" jscontroller=\"pOAbs\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;ASLTGc:ruyrc;uounjb:rMeJ7b\"><div class=\"lr_container yc7KLc mBNN3d\" style=\"padding-bottom: 0px; padding-top: 0px;\"><div jsslot=\"\"><div class=\"vkc_np kkww4d\" data-hveid=\"CCgQAg\" style=\"margin-left: -16px; margin-right: -16px; position: relative; padding: 0px 16px; z-index: 1;\"><div class=\"HWLb2d\" style=\"padding-bottom: 16px;\"><div class=\"gJBeNe d2F2Td\" aria-level=\"2\" role=\"heading\" style=\"display: inline-block; font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 22px; line-height: 28px;\">Dictionary</div><div><div class=\"c07z9\" data-hveid=\"CCgQAw\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; padding-top: 4px;\">Definitions from&nbsp;<a href=\"https://languages.oup.com/google-dictionary-en\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://languages.oup.com/google-dictionary-en&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvecEegQIKBAE\" style=\"color: rgb(232, 234, 237); text-decoration-line: underline; text-decoration-color: rgb(154, 160, 166); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Oxford Languages</a><span aria-hidden=\"true\">&nbsp;·&nbsp;</span><a href=\"https://support.google.com/websearch/answer/10106608?hl=en\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://support.google.com/websearch/answer/10106608%3Fhl%3Den&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQmYQIegQIKBAF\" style=\"color: rgb(232, 234, 237); text-decoration-line: underline; text-decoration-color: rgb(154, 160, 166); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px; text-wrap: nowrap;\">Learn more</a></div></div></div><div class=\"k6tCkf UIN9K qOsn2e\" jscontroller=\"sTJdCd\" data-promo-corpus=\"indic_bilingual_promotion\" jsaction=\"rcuQ6b:npT2md;mMf61e:y31ice;wUL9Q:bO4mad;sFrcje:trigger.dwLmS;hrYh4e:aae8ye\" style=\"position: absolute; top: calc(25% - 10px); left: 0px; right: 0px; padding: inherit;\"><div class=\"TVMOhf RXADTd\" style=\"position: relative; text-align: right;\"><div jsname=\"q7vWce\" class=\"LNFYJc QlcHMc\" jscontroller=\"JlIvbd\" data-cgi-param=\"\" data-direction=\"2\" data-fp-cid=\"\" data-id=\"selector\" data-spor=\"true\" jsaction=\"rcuQ6b:npT2md\" style=\"display: inline-block; position: relative; top: -3px; opacity: 0; z-index: 1; padding-top: 4px; margin-top: -4px; padding-bottom: 3px; margin-bottom: -3px;\"></div>&nbsp;<span class=\"EryWwb\" style=\"border: 1px solid rgb(60, 64, 67); border-radius: 6px; display: inline-block; padding: 8px 12px;\"><div jsname=\"OceFlb\" class=\"XJLsh V5ByVb\" role=\"button\" tabindex=\"-1\" jsaction=\"f0FXdf\" style=\"display: inline-block; vertical-align: top; outline: 0px; padding: 14px 12px 14px 2px; margin: -14px 0px -14px -2px; line-height: 20px;\">English</div><g-dropdown-menu aria-label=\"English\" jscontroller=\"pFsdhd\" jsdata=\"xJGXK;_;CpN2Yk\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;mMf61e:GKlhgf;YraOve:cCpuJc;kNOP9c:bzkPEc;hmb6Ye:oyYkKb;KyPa0e:G8Ofmd;wjOG7e:rWoVB;ZvRO4b:L76sMb;LyWNEf:L76sMb\" style=\"display: inline-block; position: relative; vertical-align: middle;\"><g-popup jsname=\"zpo2ue\" jscontroller=\"DPreE\" jsaction=\"A05xBd:IYtByb;EOZ57e:WFrRFb;\" jsdata=\"mVjAjf;_;CpN2Yo\"><div jsname=\"oYxtQd\" class=\"CcNe6e\" aria-expanded=\"false\" aria-haspopup=\"true\" jsslot=\"\" role=\"button\" tabindex=\"0\" jsaction=\"WFrRFb;keydown:uYT2Vb\" style=\"display: inline-block; outline: 0px;\"><div class=\"B2Eind TtJRCf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQja0DegQIKBAJ\" style=\"z-index: 2; cursor: pointer; outline: none; vertical-align: top; margin: -14px -14px -14px -18px; padding: 14px 14px 14px 18px; display: inline-block; position: relative; height: 20px;\"><g-img class=\"YGdkmc dcs-sb\" style=\"display: inline-block; height: 20px; vertical-align: top; margin-right: -4px;\"><img id=\"dimg_1\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAoCAQAAAAm93DmAAAAN0lEQVR4Ae3StwEAIAzEQJZ2r81hAvKXOmqcmyRprai+eGRDkq2SbONkZ0l2PWQ3TvaIrsJJkgacHmCx+hF82QAAAABJRU5ErkJggg==\" data-deferred=\"2\" class=\"YQ4gaf zr758c wA1Bge\" height=\"20\" width=\"20\" alt=\"\" data-atf=\"1\" data-frt=\"0\" style=\"filter: none; display: block; position: relative;\"></g-img></div></div></g-popup></g-dropdown-menu></span></div></div></div></div><div jsslot=\"\"></div><div jsslot=\"\"><div jsname=\"x3Eknd\" class=\"VpH2eb vmod\" data-topic=\"computing,finance,military,sport\" data-hveid=\"CCgQEg\" style=\"padding-bottom: 10px; overflow-wrap: break-word;\"><div class=\"sxr04b\" style=\"padding-bottom: 2px;\"><div class=\"fAwxxf D5gqpe\" jscontroller=\"UYJibd\" jsname=\"mNipWe\" data-animation-enabled=\"true\" data-audio-play-tts=\"false\" data-language-code=\"\" data-tts-client-name=\"\" data-tts-string=\"\" data-use-default-audio-speed=\"false\" aria-label=\" Listen  \" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"rcuQ6b:npT2md;DiIjNc;xLXIyb:DGzHQ\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQlfQBegQIKBAT\" style=\"float: left; margin: -6px 6px -6px -6px; padding: 6px; position: relative; outline: 0px;\"><div class=\"brWULd Bheyob\" style=\"width: 36px; height: 36px; margin: -4px; padding: 4px; vertical-align: baseline; border-radius: 50%; border-width: 0px; background-clip: content-box; background-color: inherit;\"><div jsname=\"qpYryf\" class=\"g1baVc aqCVJb\" style=\"position: absolute; width: 34px; height: 34px; border-radius: 50%; border-width: 1px; border-style: solid; border-color: rgb(138, 180, 248); background-color: rgb(138, 180, 248);\"><div jsname=\"FJYLhd\" class=\"KnZOyc URgIvb\" style=\"position: absolute; top: -1px; left: -1px; height: 34px; width: 34px; border-radius: inherit; border-width: 1px; border-style: solid; border-color: rgb(138, 180, 248); opacity: 0;\"></div><div class=\"pkt1Wd fjnQw vjtNRe\" style=\"height: 22px; margin: 6px; position: absolute; width: 22px; background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMiIgaGVpZ2h0PSIyMiIgdmlld2JveD0iMCAwIDIyIDIyIj4KICA8cG9seWdvbiBmaWxsPSIjMjAyMTI0IiBwb2ludHM9IjIuNzUgOC4yNSAyLjc1IDEzLjc1IDYuNDE3IDEzLjc1IDExIDE4LjMzMyAxMSAzLjY2NyA2LjQxNyA4LjI1IiAvPgo8L3N2Zz4K&quot;);\"></div><div jsname=\"m1xdOb\" class=\"pkt1Wd nIW5Sd gfMd5c\" style=\"height: 22px; margin: 6px; position: absolute; width: 22px; background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMiIgaGVpZ2h0PSIyMiIgdmlld2JveD0iMCAwIDIyIDIyIj4KICA8cGF0aCBkPSJNMTUuMTI1LDExIEMxNS4xMjUsOS4zNzc1IDE0LjE5LDcuOTg0MTY2NjcgMTIuODMzMzMzMyw3LjMwNTgzMzMzIEwxMi44MzMzMzMzLDE0LjY4NSBDMTQuMTksMTQuMDE1ODMzMyAxNS4xMjUsMTIuNjIyNSAxNS4xMjUsMTEgWiIgZmlsbD0iIzIwMjEyNCIgZmlsbC1ydWxlPSJldmVub2RkIiAvPgo8L3N2Zz4K&quot;);\"></div><div jsname=\"DFrD7b\" class=\"pkt1Wd byDyWd N8ZFrc\" style=\"height: 22px; margin: 6px; position: absolute; width: 22px; background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMiIgaGVpZ2h0PSIyMiIgdmlld2JveD0iMCAwIDIyIDIyIj4KICA8cGF0aCBkPSJNMTIuODMzMzMzMywyLjk2MDgzMzMzIEwxMi44MzMzMzMzLDQuODQ5MTY2NjcgQzE1LjQ4MjUsNS42Mzc1IDE3LjQxNjY2NjcsOC4wOTQxNjY2NyAxNy40MTY2NjY3LDExIEMxNy40MTY2NjY3LDEzLjkwNTgzMzMgMTUuNDgyNSwxNi4zNjI1IDEyLjgzMzMzMzMsMTcuMTUwODMzMyBMMTIuODMzMzMzMywxOS4wMzkxNjY3IEMxNi41MDkxNjY3LDE4LjIwNSAxOS4yNSwxNC45MjMzMzMzIDE5LjI1LDExIEMxOS4yNSw3LjA3NjY2NjY3IDE2LjUwOTE2NjcsMy43OTUgMTIuODMzMzMzMywyLjk2MDgzMzMzIFoiIGZpbGw9IiMyMDIxMjQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgLz4KPC9zdmc+Cg==&quot;);\"></div></div></div></div><div class=\"kVF6d\" style=\"display: table; word-break: break-word;\"><div class=\"MiCl6d\" style=\"min-height: 36px; margin-bottom: 0px; line-height: normal;\"><div class=\"JgzqYd RES9jf xWMiCc\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; line-height: 36px; color: rgb(232, 234, 237); vertical-align: top;\"><span data-dobid=\"hdw\">draft</span></div></div><div><span class=\"wHYlTd\" style=\"line-height: 22px;\">/drɑːft/</span></div><div jscontroller=\"jhGntf\" class=\"K6GhFd\" data-is-bilingual=\"false\" aria-hidden=\"true\" jsaction=\"BtuVOb:V46pce\" style=\"max-height: 0px; opacity: 0; visibility: hidden; pointer-events: none; transition: max-height 0.3s ease 0s, opacity 0.3s ease 0s;\"><div class=\"b8aKlc\" style=\"padding: 8px 0px 6px;\"><a href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=how+to+pronounce+draft&amp;stick=H4sIAAAAAAAAAOMIfcRozi3w8sc9YSm9SWtOXmPU4OINKMrPK81LzkwsyczPExLkYglJLcoV4pRi52JNKUpMK7FiUWJKzeNZxCqWkV-uUJKvUADUkA_UkaoAlgcAJCDFJFUAAAA&amp;pron_lang=en&amp;pron_country=gb&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ3eEDegQIKBAU\" tabindex=\"-1\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><div class=\"S5TwIf\" style=\"display: inline-block; padding-right: 12px; box-shadow: rgb(60, 64, 67) 0px 0px 0px 1px inset; border-radius: 6px; overflow: hidden; vertical-align: top;\"><g-img class=\"FamOtd\" style=\"display: inline-block; height: 32px; vertical-align: middle;\"><img id=\"dimg_5\" src=\"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiI+CiAgPGRlZnM+CiAgICA8cG9seWdvbiBpZD0ic21hbGwtdmlzZW1lLXYzLWEiIHBvaW50cz0iMCAwIDMyIDAgMzIgMzIgMCAzMiIvPgogIDwvZGVmcz4KICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgPG1hc2sgaWQ9InNtYWxsLXZpc2VtZS12My1iIiBmaWxsPSIjZmZmIj4KICAgICAgPHVzZSB4bGluazpocmVmPSIjc21hbGwtdmlzZW1lLXYzLWEiLz4KICAgIDwvbWFzaz4KICAgIDx1c2UgZmlsbD0iIzQyODVGNCIgeGxpbms6aHJlZj0iI3NtYWxsLXZpc2VtZS12My1hIi8+CiAgICA8cGF0aCBmaWxsPSIjRDJFM0ZDIiBkPSJNMCwxNS4yMzk3OTYzIEMyLjU0Mzg1NzE0LDE4Ljg3MDUyMDMgNS42NTIsMjIuMDgyMTk0NiA5LjIwMjI4NTcxLDI0Ljc0NDg3NjkgQzEzLjIxMTU3MTQsMjcuNzUxNzA3NyAxOC43ODg0Mjg2LDI3Ljc1MTcwNzcgMjIuNzk3NzE0MywyNC43NDQ4NzY5IEMyNi4zNDgsMjIuMDgyMTk0NiAyOS40NTYxNDI5LDE4Ljg3MDUyMDMgMzIsMTUuMjM5Nzk2MyBMMzIsLTcgTDAsLTcgTDAsMTUuMjM5Nzk2MyBaIiBtYXNrPSJ1cmwoI3NtYWxsLXZpc2VtZS12My1iKSIvPgogICAgPHBhdGggZmlsbD0iIzQyODVGNCIgZmlsbC1vcGFjaXR5PSIuNiIgZD0iTTE2LDIxLjIzMDY0OTIgQzE2LjkyNjA5OTEsMjEuMjMwNjQ5MiAxNy43OTEyNDY3LDIxLjQ5NDMxNTcgMTguNTI3MjEzNSwyMS45NTE1MDE5IEMxOC44MTA0NDEsMjIuMTI3MzMwOSAxOS4xMzYyNzM4LDIxLjc4ODc0ODUgMTguOTQwMzc5OSwyMS41MTY0Njc0IEMxOC4yNzg1NTU2LDIwLjU5NzMyNjMgMTcuMjA4MTEzNiwyMCAxNiwyMCBDMTQuNzkxODg2NCwyMCAxMy43MjE0NDQ0LDIwLjU5NzMyNjMgMTMuMDU5NjIwMSwyMS41MTY0Njc0IEMxMi44NjM3MjYyLDIxLjc4ODc0ODUgMTMuMTg5NTU5LDIyLjEyNzMzMDkgMTMuNDcyNzg2NSwyMS45NTE1MDE5IEMxNC4yMDg3NTMzLDIxLjQ5NDMxNTcgMTUuMDczOTAwOSwyMS4yMzA2NDkyIDE2LDIxLjIzMDY0OTIiIG1hc2s9InVybCgjc21hbGwtdmlzZW1lLXYzLWIpIi8+CiAgICA8cGF0aCBzdHJva2U9IiM0Mjg1RjQiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIGQ9Ik0yNSwxMyBDMjMsMTUuMzMzMzMzMyAyMCwxNi41IDE2LDE2LjUgQzEyLDE2LjUgOSwxNS4zMzMzMzMzIDcsMTMgTDEzLDEwLjUgTDE5LDEwLjUgTDI1LDEzIFoiIG1hc2s9InVybCgjc21hbGwtdmlzZW1lLXYzLWIpIi8+CiAgICA8cG9seWdvbiBmaWxsPSIjNDI4NUY0IiBmaWxsLXJ1bGU9Im5vbnplcm8iIHBvaW50cz0iOCAxNCA3IDEzIDI1IDEzIDI0IDE0IiBtYXNrPSJ1cmwoI3NtYWxsLXZpc2VtZS12My1iKSIvPgogICAgPHBhdGggc3Ryb2tlPSIjNDI4NUY0IiBzdHJva2UtbGluZWNhcD0icm91bmQiIGQ9Ik0yMCwzIEwxNy43Njc4NzUsNS4yNTg5MjYyMiBDMTYuNzkxNSw2LjI0NzAyNDU5IDE1LjIwODUsNi4yNDcwMjQ1OSAxNC4yMzIxMjUsNS4yNTg5MjYyMiBMMTIsMyIgbWFzaz0idXJsKCNzbWFsbC12aXNlbWUtdjMtYikiLz4KICA8L2c+Cjwvc3ZnPgo=\" data-deferred=\"2\" class=\"YQ4gaf zr758c wA1Bge\" height=\"32\" width=\"32\" alt=\"\" data-atf=\"0\" data-frt=\"0\" style=\"filter: none; display: block; position: relative;\"></g-img><span class=\"fe69if\" style=\"margin-left: 10px; vertical-align: middle;\"></span></div></a></div></div></div></div><div class=\"vmod\"><div jsname=\"r5Nvmf\" class=\"vmod\" data-topic=\"computing,finance,military,sport\"><div class=\"lW8rQd\" style=\"align-items: center; display: flex;\"><div class=\"YrbPuc vdBwhd\" style=\"color: rgb(154, 160, 166); line-height: 22px; min-height: 20px;\"><i>noun</i></div><div jsname=\"jUIvqc\" class=\"xpdxpnd\" data-mh=\"-1\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span></div></div><ol class=\"eQJLDd\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; display: flex; flex-direction: column;\"><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\">1.</div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\">a preliminary version of a piece of writing.</div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\">\"the first draft of the party\'s manifesto\"</div></div></div></div></div><div style=\"margin-left: 20px;\"><div style=\"margin-left: -13px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_50\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div><div class=\"vmod qFRZdb\" jscontroller=\"QC6lPe\" data-dsk=\"true\" data-dtpe=\"false\" data-nlm=\"true\" data-requery=\"false\" jsaction=\"rcuQ6b:npT2md;Lesnae:X4aiyd;KyPa0e:yJjTGf;SJu0Rc:pnFSEb;NAozHc:Gmtrjd\"><div jsname=\"KM35l\" class=\"P2Dfkf vmod SkSOXb\" style=\"overflow: hidden; position: relative; max-height: 30px;\"><div jsname=\"deRYT\" class=\"bqVbBf jfFgAc CqMNyc\" role=\"list\" style=\"display: flex; max-width: 100%; flex-wrap: wrap; padding-right: 24px;\"><div class=\"k6UgDb\" aria-hidden=\"true\" style=\"flex-basis: 100%; width: 0px; height: 0px; overflow: hidden;\"></div><div class=\"qFRZdb\"><div class=\"q3q3Oc vmod YrbPuc s305xe\" style=\"color: rgb(154, 160, 166); line-height: 22px; display: inline-block; margin-top: 9px; margin-bottom: 2px; margin-right: 8px; height: 24px;\"><div class=\"pdpvld\" style=\"color: rgb(129, 201, 149);\"></div></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAX\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAY\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAZ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_52\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/outline--_gb_1.mp3\" data-df=\"a general description or plan showing the essential features of something but not the detail.\" data-ex=\"an outline of parliamentary procedure\" data-hw=\"outline\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+outline&amp;si=ALGXSlZCBshTM3a3nPTSW0d1OmQeMU49DdBfyymmyoWg4UerOebqtfOhhcbhq1xQB-5lVfkaVzXqmFsiI_4Pye2MTRle_U1MO8KYHW9JBANRUPj2-iiCHPw%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAa\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAb\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_54\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/plan--_gb_1.mp3\" data-df=\"a detailed proposal for doing or achieving something.\" data-ex=\"the UN peace plan\" data-hw=\"plan\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+plan&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqKs1SiqZcsMOl-q-6fJxuEvmXZvxe8COwwhC1K0yGhKQRPSLqJ-ul3-6E7PT0wNCAi4tJVg%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAc\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAd\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_56\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/blueprint--_gb_1.mp3\" data-df=\"a design plan or other technical drawing.\" data-ex=\"they are redrawing office blueprints to include large shared spaces\" data-hw=\"blueprint\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+blueprint&amp;si=ALGXSlYl_e3TsZvERASNGAvnwCgjeBLFIx7KnE66qDsjUF6OSlRFOpZBycqq4K2ZjMNvZlIWL6Wqp4vbDfx5zSE9fxBDT1MCdjrWBKYAbILsAkZ5XTIRTOs%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAe\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAf\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_58\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/skeleton--_gb_1.mp3\" data-df=\"the supporting framework, basic structure, or essential part of something.\" data-ex=\"the concrete skeleton of an unfinished building\" data-hw=\"skeleton\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+skeleton&amp;si=ALGXSlaYxyllm14_NEvUA9w95SVc4nZqt-3VxIaraGgFNwjIOTUYgutCsybAx81jc35i0vqT7nJPbk3oKVA79adfacXl2fA-pEiKun7e_oGUYPyuZuY46HY%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAg\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAh\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_60\"><div jsname=\"sUPGue\" data-au=\"\" data-df=\"a summary of the contents of a book, article, or speech.\" data-ex=\"an abstract of her speech\" data-hw=\"abstract\" data-lb=\"\" data-tae=\"true\" data-te=\"true\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+abstract&amp;si=ALGXSlaYxyllm14_NEvUA9w95SVcVK9giQzsZVNh3od6JQHHIvALiYxAGkhTCMYiH5GF2EXSYY09_RJtMlmyr9N9F0mDd7B8BeDJa0tyo0nREtd8dOc1bXo%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAi\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAj\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAk\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_62\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/bone--_gb_1.mp3\" data-df=\"any of the pieces of hard whitish tissue making up the skeleton in humans and other vertebrates.\" data-ex=\"his injuries included many broken bones\" data-hw=\"bone\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+bone&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSq9u11S58DMBks-TtKn_FX1jKVmT6TpaBKUACiYyZW2ow9-N3tXPT4BwphpnEBDixXc6u1ag%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAl\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAm\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_64\"><div jsname=\"sUPGue\" data-au=\"\" data-df=\"reduced to or comprising only the basic or essential elements of something.\" data-ex=\"a bare-bones version of the story\" data-hw=\"bare-bones\" data-lb=\"\" data-tae=\"true\" data-te=\"true\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+bare-bones&amp;si=ALGXSlbK6dNKc3P-z0hratVoTzWIGH77-Mnju3fn9I90AN59djoYceBM0RU5LX4iznIUbv9u5RMQBnJ1kXsGmmQzVNeExUYaiyoe3f-ZJk6btDtliz0hC3g%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAn\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAo\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_66\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/design--_gb_1.mp3\" data-df=\"a plan or drawing produced to show the look and function or workings of a building, garment, or other object before it is made.\" data-ex=\"he has just unveiled his design for the new museum\" data-hw=\"design\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+design&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9YqRaMNujC4Ngd2D_75hBdBTiCEI7ay5hRa7IXF1N9D5L03NvJ5aLK2li-e7NS_SgWyoonrAkhACrYoVkJ72khz0k3SMI%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAp\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAq\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_68\"><div jsname=\"sUPGue\" data-au=\"\" data-df=\"a sketch or drawing of someone or something, produced when no photograph is available.\" data-ex=\"an artist\'s impression of how the new venue will look has been released\" data-hw=\"artist\'s impression\" data-lb=\"\" data-tae=\"true\" data-te=\"true\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+artist%27s+impression&amp;si=ALGXSlYkAEgmi0WeiR8_hay702qsSDBHhQpCdnrc7ZzYStPbHFNJrJb1GsLEGa379uUWE_e408E-TliN6m1-KF1LlBdJ4VFIPi3kbzSfrvqI0dZwLaUz7X8cBBLCuS5LEk9TsHrwM0Gv\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAr\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAs\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_70\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/diagram--_gb_1.mp3\" data-df=\"a simplified drawing showing the appearance, structure, or workings of something; a schematic representation.\" data-ex=\"a diagram of the living room\" data-hw=\"diagram\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+diagram&amp;si=ALGXSlZCBshTM3a3nPTSW0d1OmQe4G9a8EvPTdOK1C7SpKNQWL39nPlvtR3DQhOLhpR3U9-EaJAcNIHp5irN9JT77agBeUNdbhXW1dKCH--hsL7eh4oAw2s%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAt\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAu\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_72\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/drawing--_gb_2.mp3\" data-df=\"a picture or diagram made with a pencil, pen, or crayon rather than paint.\" data-ex=\"a series of charcoal drawings on white paper\" data-hw=\"drawing\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+drawing&amp;si=ALGXSlZCBshTM3a3nPTSW0d1OmQekjZJngWwcnXwRrWtHIIcOePTDAsK1D6S0yaYzfy5NFt_97iN7ewnp4Eckz2uYtOgwIQDJLvS4_p3yKiB6WGEjt2LcfA%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAv\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAw\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAx\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_74\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/sketch--_gb_1.mp3\" data-df=\"a rough or unfinished drawing or painting, often made to assist in making a more finished picture.\" data-ex=\"a charcoal sketch\" data-hw=\"sketch\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+sketch&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9Yr6nYKhtNMa9Zz2Wumbzv3VRAC8Al9BAiAXDb2j79uHMtTaY4bdYxH2ez-USo1J7hFjsG-msefNE--_Lslca0DNPWZaY%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBAy\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBAz\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_76\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/pattern--_gb_1.mp3\" data-df=\"an arrangement or design regularly found in comparable objects.\" data-ex=\"the house had been built on the usual pattern\" data-hw=\"pattern\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+pattern&amp;si=ALGXSlZCBshTM3a3nPTSW0d1OmQe79Pto0fTxQ4MaKNIlsdovmlO5TIMoR8j3MzYh9o1NBMAdbPNC-Z4akDtWHE5NlpXu-3O-6WmT5qJ5Xu0kSRkTAhrmYM%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBA0\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBA1\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_78\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/map--_gb_1.mp3\" data-df=\"a diagrammatic representation of an area of land or sea showing physical features, cities, roads, etc.\" data-ex=\"a street map\" data-hw=\"map\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+map&amp;si=ALGXSlYVIDk175oRsopuTeQsnXfR_ywdwEmOiiqjCF1FllbXlDmWY4AUgFfkFfNTos0-7jHcnUIeNfpoKhQ_37UIuaWQ_W8_Lg%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBA2\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBA3\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_80\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/layout--_gb_1.mp3\" data-df=\"the way in which the parts of something are arranged or laid out.\" data-ex=\"the road layout\" data-hw=\"layout\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+layout&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9Yggb6jrSAG235iUa2LbqY2rHY5vttbe7MD8cbXxVUA17YN1rHqGEnx_KAcxTrlrfXiCILiyk9wbeGhtEgcz66pdfUceU%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBA4\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBA5\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_82\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/representation--_gb_1.mp3\" data-df=\"the action of speaking or acting on behalf of someone or the state of being so represented.\" data-ex=\"you may qualify for free legal representation\" data-hw=\"representation\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+representation&amp;si=ALGXSlaUtFsDtoqkZ-6ghxYf-ukHkECEtBAKOeSo8YRwLLMylOaBrrGw202d61Xq3ycO7Z859hBWJoq1QdRHhaJUhhAUU7DEWeqTHckoo2u_T91ic74TDLFXcnYMgpx6aaaPy0YN2E36\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBA6\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div class=\"k6UgDb\" aria-hidden=\"true\" style=\"flex-basis: 100%; width: 0px; height: 0px; overflow: hidden;\"></div><div class=\"qFRZdb\"><div class=\"q3q3Oc vmod YrbPuc s305xe\" style=\"color: rgb(154, 160, 166); line-height: 22px; display: inline-block; margin-top: 9px; margin-bottom: 2px; margin-right: 8px; height: 24px;\"><div class=\"hVpeib\" style=\"color: rgb(242, 139, 130);\"></div></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div></div></div></div></div></div></div></li><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"computing\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_84\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"></div></div></div></div></li></ul></div></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"finance\" style=\"line-height: 16px;\"><div style=\"float: left;\">2.</div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\">a written order to pay a specified sum.</div><div class=\"vmod qFRZdb\" jscontroller=\"QC6lPe\" data-dsk=\"true\" data-dtpe=\"false\" data-nlm=\"true\" data-requery=\"false\" jsaction=\"rcuQ6b:npT2md;Lesnae:X4aiyd;KyPa0e:yJjTGf;SJu0Rc:pnFSEb;NAozHc:Gmtrjd\"><div jsname=\"KM35l\" class=\"P2Dfkf vmod SkSOXb\" style=\"overflow: hidden; position: relative; max-height: 30px;\"><div jsname=\"deRYT\" class=\"bqVbBf jfFgAc CqMNyc\" role=\"list\" style=\"display: flex; max-width: 100%; flex-wrap: wrap; padding-right: 24px;\"><div class=\"k6UgDb\" aria-hidden=\"true\" style=\"flex-basis: 100%; width: 0px; height: 0px; overflow: hidden;\"></div><div class=\"qFRZdb\"><div class=\"q3q3Oc vmod YrbPuc s305xe\" style=\"color: rgb(154, 160, 166); line-height: 22px; display: inline-block; margin-top: 9px; margin-bottom: 2px; margin-right: 8px; height: 24px;\"><div class=\"pdpvld\" style=\"color: rgb(129, 201, 149);\">Similar:</div></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBA_\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\">cheque<div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_86\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/cheque--_gb_2.mp3\" data-df=\"an order to a bank to pay a stated sum from the drawer\'s account, written on a specially printed form.\" data-ex=\"they presented him with a <b>cheque for</b> £4,000\" data-hw=\"cheque\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+cheque&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9Y3CDdGQm3x30a7PB3xSUO3SeVSr05m6HUgQOON4yB8X614CHEm1xlXunWM4BXWxZtpirJ8GQHVtLPjrPUf6e1Hvo0bOw%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBA\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBB\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\">order<div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_88\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/order--_gb_1.mp3\" data-df=\"the arrangement or disposition of people or things in relation to each other according to a particular sequence, pattern, or method.\" data-ex=\"I filed the cards in alphabetical order\" data-hw=\"order\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+order&amp;si=ALGXSlZC_jbid1uaZGfc4a798NDvOlktKQ338DyDU9foIdWjRfN_pRamtDvthd2yH_2b6pGEeIekk_J8cExuxw2ZpBdvkw0y1iAagfXjT2__8cAzfPAveMU%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBC\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBD\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\">banker\'s order<div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_90\"><div jsname=\"sUPGue\" data-au=\"\" data-df=\"a standing order to a bank to make specified payments from one\'s account to a particular recipient.\" data-ex=\"\" data-hw=\"banker\'s order\" data-lb=\"\" data-tae=\"true\" data-te=\"true\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+banker%27s+order&amp;si=ALGXSlaUtFsDtoqkZ-6ghxYf-ukHlJ6egtUkWOxMGqf7LpxCROw6909v-V7n1o23Iw_qYpT738iNng3sYCECGD5Dqkt8YAiT2SX0MUYaf85-V6bY0frA544qFtjiM_2lSRgX4l7rr4FZ\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBE\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBF\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\">money order<div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_92\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/money_order--1_gb_2.mp3\" data-df=\"a printed order for payment of a specified sum, issued by a bank or Post Office.\" data-ex=\"\" data-hw=\"money order\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+money+order&amp;si=ALGXSlYpmWhtmlIZKYHTCPXiYmMEZwdglsmZvwICNV9g7MEj3KexJ9xZHjVLpfwtkttlRH19shrHiHwoG-R54TQMrdRNDHHmYNNWqeCiqHj6ksgHu0Ho9fo%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBG\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBH\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\">bill of exchange<div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_94\"><div jsname=\"sUPGue\" data-au=\"\" data-df=\"a written order to a person requiring them to make a specified payment to the signatory or to a named payee; a promissory note.\" data-ex=\"\" data-hw=\"bill of exchange\" data-lb=\"\" data-tae=\"true\" data-te=\"true\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+bill+of+exchange&amp;si=ALGXSlYOYDB4ngKZQZfaclN-FTEV4rnUEotvfnhi_vQoUpyI8UNgTxMFDgWCS4ayA1madtgcTGDTyFZRRa2GOT9gUCfFIcWQPl1Bqhqc06n4d_oXy7lodZoZebInh_H-rldNvfyA4mey\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBI\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBJ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\">postal order<div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_96\"><div jsname=\"sUPGue\" data-au=\"\" data-df=\"an order for payment of a specified sum to a named payee, issued by the Post Office.\" data-ex=\"\" data-hw=\"postal order\" data-lb=\"\" data-tae=\"true\" data-te=\"true\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+postal+order&amp;si=ALGXSlaVHN-2QMLnZeLOkIlLjnKybSGsleHbc6VR_sfDOVB3WXPlBI0eLaYMt8ggyJ7k93AsJ5zaVlQ4HP5D9hnEhfVobVchNC3YURTchppd0TXEJgPNeUU%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBK\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"technical\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\">negotiable instrument</div></div></div></div></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"xpdxpnd\" data-mh=\"-1\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_98\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"military\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=compulsory&amp;si=ALGXSlbxwhdHKc0fpoiOcM6OGd45SEjMe0ze4C-jKwtqkxI96YAHgFXehPRtidpDkBNnJStgn1C5_s1hJ3XtafN-GdTkS2DAQA%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegQIKBBO\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div></div><div style=\"margin-left: 20px;\"><div style=\"margin-left: -13px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"sport\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_100\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=whereby&amp;si=ALGXSlYwkgxr-HbbJwcOTTqB6ethGB340fRDqtSD7Tcd_Ktett-NNp5XmK-ugQyWlBABJu5bqUgfBQELSQ21g1323-viG-YObw%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegQIKBBR\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=weaker&amp;si=ALGXSlbD4fKmSL7CRU364kGH2u8k7QfCM6uoE6WYcZbbMmu5CPUn2qzY-rzupJ8A5Z13GAd3ermHg4nrEYbwflo3KJI4dOyDoQ%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegQIKBBS\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div></li><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"military\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_102\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div></li></ul></div></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"xpdxpnd\" data-mh=\"-1\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_104\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draught&amp;si=ALGXSlYwkgxr-HbbJwcOTTqB6eth6q2UiI3XXSUbbruthWvXtpvh7L8wFiivvYUPzwRUS3gmFaTwKB71z_JflukPbBxJ60-c-A%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQgCt6BAgoEFY\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li></ol></div><div jsname=\"r5Nvmf\" class=\"vmod\" data-topic=\"sport\"><div class=\"lW8rQd\" style=\"align-items: center; display: flex;\"><div class=\"YrbPuc vdBwhd\" style=\"color: rgb(154, 160, 166); line-height: 22px; min-height: 20px;\"><i>verb</i></div><div jsname=\"jUIvqc\" class=\"xpdxpnd\" data-mh=\"-1\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span></div></div><ol class=\"eQJLDd\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; display: flex; flex-direction: column;\"><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\">1.</div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\">prepare a preliminary version of (a document).</div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\">\"I drafted a letter of resignation\"</div></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\">2.</div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\">select (a person or group of people) and bring them somewhere for a certain purpose.</div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\">\"he was&nbsp;<b>drafted in</b>&nbsp;to help fix the engine\"</div></div></div></div></div><div style=\"margin-left: 20px;\"><div style=\"margin-left: -13px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_106\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=conscript&amp;si=ALGXSlbSiMNWMsv5Y0U_0sBS8EWzk3cufgwfYxOiTTGrWeSzKcPwTcNhh2B_Ax_A7FE8zSYOQT5yhHKKYvWdsxY8vWlfmOc9Fg%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegQIKBBb\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div></li><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"sport\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_108\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div></li></ul></div></div></div></div></li></ol></div><div jsname=\"r5Nvmf\" class=\"vmod\" data-topic=\"\"><div class=\"lW8rQd\" style=\"align-items: center; display: flex;\"><div class=\"YrbPuc vdBwhd\" style=\"color: rgb(154, 160, 166); line-height: 22px; min-height: 20px;\"><i>adjective</i></div></div><ol class=\"eQJLDd\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; display: flex; flex-direction: column;\"><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\">US spelling of&nbsp;<span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draught&amp;si=ALGXSlYwkgxr-HbbJwcOTTqB6eth6q2UiI3XXSUbbruthWvXtpvh7L8wFiivvYUPzwRUS3gmFaTwKB71z_JflukPbBxJ60-c-A%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQgCt6BAgoEF8\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">draught</a></span>&nbsp;(adjective).</div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li></ol></div></div><div jsname=\"Hqfs0d\"><div class=\"xpdxpnd\" data-mh=\"-1\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_110\"><div class=\"FpiMuf\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; color: rgb(232, 234, 237); font-size: 18px; line-height: 24px; margin: 20px 0px 0px;\"></div><div class=\"nQ8Joc\" style=\"filter: invert(87%) sepia(11%) saturate(297%) hue-rotate(187deg) brightness(93%) contrast(98%);\"><g-img aria-hidden=\"true\" style=\"display: inline-block; height: 80px;\"><img id=\"lr_dct_img_origin_nGEdZcqwKp3X1e8Pp-G8wAY_1\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" class=\"YQ4gaf zr758c wA1Bge\" height=\"58\" width=\"191\" alt=\"\" style=\"filter: none; display: block; position: relative; margin-top: 10px; margin-bottom: 12px;\"></g-img></div><div class=\"wHYlTd\" style=\"line-height: 22px;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draught&amp;si=ALGXSlYwkgxr-HbbJwcOTTqB6eth6q2UiI3XXSUbbruthWvXtpvh7L8wFiivvYUPzwRUS3gmFaTwKB71z_JflukPbBxJ60-c-A%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQgCt6BAgoEGA\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div></div></div></div></div></div><div class=\"xpdxpnd gi0Tyb\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_112\" data-mh=\"-1\" jsslot=\"\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px; margin-left: -36px; margin-right: -36px; padding-left: 36px; padding-right: 36px;\"><div jsname=\"x3Eknd\" class=\"VpH2eb vmod qgMjmc\" data-topic=\"nautical,fish,alcoholic\" data-hveid=\"CCgQYQ\" style=\"padding-bottom: 10px; overflow-wrap: break-word; padding-top: 20px;\"><div class=\"sxr04b\" style=\"padding-bottom: 2px;\"><div class=\"fAwxxf D5gqpe\" jscontroller=\"UYJibd\" jsname=\"mNipWe\" data-animation-enabled=\"true\" data-audio-play-tts=\"false\" data-language-code=\"\" data-tts-client-name=\"\" data-tts-string=\"\" data-use-default-audio-speed=\"false\" aria-label=\" Listen  \" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"rcuQ6b:npT2md;DiIjNc;xLXIyb:DGzHQ\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQlfQBegQIKBBi\" style=\"float: left; margin: -6px 6px -6px -6px; padding: 6px; position: relative; outline: 0px;\"><div class=\"brWULd Bheyob\" style=\"width: 36px; height: 36px; margin: -4px; padding: 4px; vertical-align: baseline; border-radius: 50%; border-width: 0px; background-clip: content-box; background-color: inherit;\"><div jsname=\"qpYryf\" class=\"g1baVc aqCVJb\" style=\"position: absolute; width: 34px; height: 34px; border-radius: 50%; border-width: 1px; border-style: solid; border-color: rgb(138, 180, 248); background-color: rgb(138, 180, 248);\"><div jsname=\"FJYLhd\" class=\"KnZOyc URgIvb\" style=\"position: absolute; top: -1px; left: -1px; height: 34px; width: 34px; border-radius: inherit; border-width: 1px; border-style: solid; border-color: rgb(138, 180, 248); opacity: 0;\"></div><div class=\"pkt1Wd fjnQw vjtNRe\" style=\"height: 22px; margin: 6px; position: absolute; width: 22px; background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMiIgaGVpZ2h0PSIyMiIgdmlld2JveD0iMCAwIDIyIDIyIj4KICA8cG9seWdvbiBmaWxsPSIjMjAyMTI0IiBwb2ludHM9IjIuNzUgOC4yNSAyLjc1IDEzLjc1IDYuNDE3IDEzLjc1IDExIDE4LjMzMyAxMSAzLjY2NyA2LjQxNyA4LjI1IiAvPgo8L3N2Zz4K&quot;);\"></div><div jsname=\"m1xdOb\" class=\"pkt1Wd nIW5Sd gfMd5c\" style=\"height: 22px; margin: 6px; position: absolute; width: 22px; background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMiIgaGVpZ2h0PSIyMiIgdmlld2JveD0iMCAwIDIyIDIyIj4KICA8cGF0aCBkPSJNMTUuMTI1LDExIEMxNS4xMjUsOS4zNzc1IDE0LjE5LDcuOTg0MTY2NjcgMTIuODMzMzMzMyw3LjMwNTgzMzMzIEwxMi44MzMzMzMzLDE0LjY4NSBDMTQuMTksMTQuMDE1ODMzMyAxNS4xMjUsMTIuNjIyNSAxNS4xMjUsMTEgWiIgZmlsbD0iIzIwMjEyNCIgZmlsbC1ydWxlPSJldmVub2RkIiAvPgo8L3N2Zz4K&quot;);\"></div><div jsname=\"DFrD7b\" class=\"pkt1Wd byDyWd N8ZFrc\" style=\"height: 22px; margin: 6px; position: absolute; width: 22px; background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMiIgaGVpZ2h0PSIyMiIgdmlld2JveD0iMCAwIDIyIDIyIj4KICA8cGF0aCBkPSJNMTIuODMzMzMzMywyLjk2MDgzMzMzIEwxMi44MzMzMzMzLDQuODQ5MTY2NjcgQzE1LjQ4MjUsNS42Mzc1IDE3LjQxNjY2NjcsOC4wOTQxNjY2NyAxNy40MTY2NjY3LDExIEMxNy40MTY2NjY3LDEzLjkwNTgzMzMgMTUuNDgyNSwxNi4zNjI1IDEyLjgzMzMzMzMsMTcuMTUwODMzMyBMMTIuODMzMzMzMywxOS4wMzkxNjY3IEMxNi41MDkxNjY3LDE4LjIwNSAxOS4yNSwxNC45MjMzMzMzIDE5LjI1LDExIEMxOS4yNSw3LjA3NjY2NjY3IDE2LjUwOTE2NjcsMy43OTUgMTIuODMzMzMzMywyLjk2MDgzMzMzIFoiIGZpbGw9IiMyMDIxMjQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgLz4KPC9zdmc+Cg==&quot;);\"></div></div></div></div><div class=\"kVF6d\" style=\"display: table; word-break: break-word;\"><div class=\"MiCl6d\" style=\"min-height: 36px; margin-bottom: 0px; line-height: normal;\"><div class=\"JgzqYd RES9jf xWMiCc\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 28px; line-height: 36px; color: rgb(232, 234, 237); vertical-align: top;\"><span data-dobid=\"hdw\"></span></div></div><div><span class=\"wHYlTd\" style=\"line-height: 22px;\"></span></div><div jscontroller=\"jhGntf\" class=\"K6GhFd\" data-is-bilingual=\"false\" aria-hidden=\"true\" jsaction=\"BtuVOb:V46pce\" style=\"max-height: 0px; opacity: 0; visibility: hidden; pointer-events: none; transition: max-height 0.3s ease 0s, opacity 0.3s ease 0s;\"><div class=\"b8aKlc\" style=\"padding: 8px 0px 6px;\"><a href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=how+to+pronounce+draught&amp;stick=H4sIAAAAAAAAAOMIfcRoyS3w8sc9YSmDSWtOXmPU4uINKMrPK81LzkwsyczPExLmYglJLcoV4pbi5GJPKUosTc8osWJRYkrN41nEKpGRX65Qkq9QANSSD9STqgBVAQA3Q0XDWQAAAA&amp;pron_lang=en&amp;pron_country=gb&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ3eEDegQIKBBj\" tabindex=\"-1\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><div class=\"S5TwIf\" style=\"display: inline-block; padding-right: 12px; box-shadow: rgb(60, 64, 67) 0px 0px 0px 1px inset; border-radius: 6px; overflow: hidden; vertical-align: top;\"><g-img class=\"FamOtd\" style=\"display: inline-block; height: 32px; vertical-align: middle;\"><img id=\"dimg_7\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" class=\"YQ4gaf zr758c wA1Bge\" height=\"32\" width=\"32\" alt=\"\" style=\"filter: none; display: block; position: relative;\"></g-img><span class=\"fe69if\" style=\"margin-left: 10px; vertical-align: middle;\"></span></div></a></div></div></div></div><div class=\"vmod\"><div jsname=\"r5Nvmf\" class=\"vmod\" data-topic=\"nautical,fish\"><div class=\"lW8rQd\" style=\"align-items: center; display: flex;\"><div class=\"YrbPuc vdBwhd\" style=\"color: rgb(154, 160, 166); line-height: 22px; min-height: 20px;\"><i><span class=\"YrbPuc\" style=\"line-height: 22px;\"></span></i></div><div jsname=\"jUIvqc\" class=\"vmod\"><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span></div></div><ol class=\"eQJLDd\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; display: flex; flex-direction: column;\"><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=confined&amp;si=ALGXSlY2XXqfLjvIaFfTE-GUlBx5DQ3G68qsXFED7DYG809obwGAvdfB4aw5lJWNsvAKbqxL5ssNM_RFu1KD3fwEyfmLy_bFfg%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegQIKBBl\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div><div class=\"vmod qFRZdb\" jscontroller=\"QC6lPe\" data-dsk=\"true\" data-dtpe=\"false\" data-nlm=\"true\" data-requery=\"false\" jsaction=\"rcuQ6b:npT2md;Lesnae:X4aiyd;KyPa0e:yJjTGf;SJu0Rc:pnFSEb;NAozHc:Gmtrjd\"><div jsname=\"KM35l\" class=\"P2Dfkf vmod SkSOXb\" style=\"overflow: hidden; position: relative; max-height: 30px;\"><div jsname=\"deRYT\" class=\"bqVbBf jfFgAc CqMNyc\" role=\"list\" style=\"display: flex; max-width: 100%; flex-wrap: wrap; padding-right: 24px;\"><div class=\"k6UgDb\" aria-hidden=\"true\" style=\"flex-basis: 100%; width: 0px; height: 0px; overflow: hidden;\"></div><div class=\"qFRZdb\"><div class=\"q3q3Oc vmod YrbPuc s305xe\" style=\"color: rgb(154, 160, 166); line-height: 22px; display: inline-block; margin-top: 9px; margin-bottom: 2px; margin-right: 8px; height: 24px;\"><div class=\"pdpvld\" style=\"color: rgb(129, 201, 149);\"></div></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBm\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU F5z5N pxhZNb jEdCLc D9aCIe LsYFnd p9F8Cd rjpYgb gjoUyf\" data-lb=\"\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; margin-top: 6px; padding: 0px 12px; margin-right: 4px; cursor: text; border: 1px solid transparent; height: 22px; line-height: 22px; font-size: 13px; background-color: rgb(48, 49, 52) !important;\"></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBn\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBo\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_114\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/breath--_gb_1.mp3\" data-df=\"the air taken into or expelled from the lungs.\" data-ex=\"I was gasping for breath\" data-hw=\"breath\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+breath&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9YNKMmYtAjoTYQsjiEN_HdXJAZeVFFm-fUItAeNX-VnLlmdgVZJrP-AStZNA8m4xOu2WemXJR2qy1NF_AhsWFBK1EaziY%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBp\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBq\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_116\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/whiff--_gb_6.mp3\" data-df=\"a puff or breath of air or smoke.\" data-ex=\"whiffs of smoke emerged from the boiler\" data-hw=\"whiff\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+whiff&amp;si=ALGXSlZC_jbid1uaZGfc4a798NDv88g0dTghIxPYPEHNoy-I-WfuUj65maAm1QiAn7AFYMbKX-hnQXrNidQVDjmy_IriqpPnPGKylkUHeEKMUs-mzUdBK6Y%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBr\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBs\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_118\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/waft--_gb_1.mp3\" data-df=\"a gentle movement of air.\" data-ex=\"\" data-hw=\"waft\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+waft&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSq1Ike1qiTqO1rXL660jLIkZ6egLPWqnDgUIS0xxQ75U0tpjJk6yMnx5ixfCxsX3_58yBK-g%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBt\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBu\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_120\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/wind--_gb_1.mp3\" data-df=\"the perceptible natural movement of the air, especially in the form of a current of air blowing from a particular direction.\" data-ex=\"the wind howled about the building\" data-hw=\"wind\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+wind&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqreRp_SqfuIKdE1wRhBw6GkNyaO3hMoAPhPD0JAVInLZMgoNszZT4E6HJnhndnXVTVY5dtw%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBv\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBw\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_122\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/breeze--_gb_1.mp3\" data-df=\"a gentle wind.\" data-ex=\"tantalizing cooking smells wafted on the evening breeze\" data-hw=\"breeze\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+breeze&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9YHGb2siaNb4bvT_3PwxYVwvGyrkdp7dsinJ5y6P_eeXuDKoOuZarBEHi-9vs006FK5XPUx32PzwEkBK2N80RZDgGB10I%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBx\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBBy\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_124\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/gust--_gb_1.mp3\" data-df=\"a sudden strong rush of wind.\" data-ex=\"\" data-hw=\"gust\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+gust&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqc-qlqqaDVJQ846rPHK1K8cY6b7bkQrLRgtsHK6PfVe3eo-CpvZ3rTQiuXeMbpBAw12sp6g%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBBz\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBB0\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_126\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/puff--_gb_1.mp3\" data-df=\"a short, explosive burst of breath or wind.\" data-ex=\"a puff of wind swung the weathercock round\" data-hw=\"puff\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+puff&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqbsU0tXFwpRmsOB5F0MK9o9IZDMdIIeyQxs4kHALxvbHZO98tw1CXSrcRaq_tIPu9RF0JYA%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBB1\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBB2\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_128\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/blast--_gb_1.mp3\" data-df=\"a strong gust of wind or air.\" data-ex=\"the icy blast hit them\" data-hw=\"blast\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+blast&amp;si=ALGXSlZC_jbid1uaZGfc4a798NDvEMK5oQreY-Lz6G_9Wj3YReZDqcQ09c-54kyY9zzgbSSEZB9gIOjZKeEyBeaIvhzTIeeyiaW8qyE2DtMSogjLDlyXE3c%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBB3\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBB4\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_130\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/gale--_gb_1.mp3\" data-df=\"a very strong wind.\" data-ex=\"I slept well despite the howling gales outside\" data-hw=\"gale\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+gale&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqZOF4EL9DrLU7tjXIJaHNHN2xJclzBBgbUgpS9tImG01M9wHjJIXM7Fr6u7GS_Gh3RtcHEA%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBB5\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"informal\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBB6\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_132\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/blow--_gb_1.mp3\" data-df=\"a strong wind.\" data-ex=\"we\'re in for a bit of a blow\" data-hw=\"blow\" data-lb=\"informal\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+blow&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqD2-RyKrbnlF8PbAQZJUy0NZsadJBVb2pD1UJjr4LyHQbnM9XqDu5DHWh1JiHExk96hj31w%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegQIKBB7\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"literary\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegQIKBB8\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_134\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/zephyr--_gb_1.mp3\" data-df=\"a soft gentle breeze.\" data-ex=\"\" data-hw=\"zephyr\" data-lb=\"literary\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+zephyr&amp;si=ALGXSlZs_yOcjbcvFwhB4E04oe9YgoL9IZmt0LoKFgyjLx5h7dCHJHCGqdUjn5GEjNZIT7qObBabdkO94HeUeznE9d0XBqBgAydoFJ2iBkDZ9KueuPKP9RE%3D\"></div></div></div></div></div></div></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=inhaling&amp;si=ALGXSlY2XXqfLjvIaFfTE-GUlBx5alUfdT1pQzAFTG4rm2_3vRzLmpq70apfTsq9ryyP5RQzxiIGP5Z2C_DsXo7OB1I7q0hP4g%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegQIKBB_\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div><div style=\"margin-left: 20px;\"><div style=\"margin-left: -13px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_136\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=swallowed&amp;si=ALGXSlbSiMNWMsv5Y0U_0sBS8EWz0XB2Kk7tWWNTJgnikseL6ppGjOyE-V_-N8woFUY-iZZFaKKbdTRC8ZYtcAkX2sy4pqYw-Q%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegUIKBCBAQ\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=inhaled&amp;si=ALGXSlYwkgxr-HbbJwcOTTqB6ethCkCit9mNIJVRUc3PQ1sIAKgr7KKHNqDj6A3cMd6e3eM4f0BZaEu6OsY78x9hALDpo05zPg%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegUIKBCCAQ\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div><div class=\"vmod qFRZdb\" jscontroller=\"QC6lPe\" data-dsk=\"true\" data-dtpe=\"false\" data-nlm=\"true\" data-requery=\"false\" jsaction=\"rcuQ6b:npT2md;Lesnae:X4aiyd;KyPa0e:yJjTGf;SJu0Rc:pnFSEb;NAozHc:Gmtrjd\"><div jsname=\"KM35l\" class=\"P2Dfkf vmod SkSOXb\" style=\"overflow: hidden; position: relative; max-height: 30px;\"><div jsname=\"deRYT\" class=\"bqVbBf jfFgAc CqMNyc\" role=\"list\" style=\"display: flex; max-width: 100%; flex-wrap: wrap; padding-right: 24px;\"><div class=\"k6UgDb\" aria-hidden=\"true\" style=\"flex-basis: 100%; width: 0px; height: 0px; overflow: hidden;\"></div><div class=\"qFRZdb\"><div class=\"q3q3Oc vmod YrbPuc s305xe\" style=\"color: rgb(154, 160, 166); line-height: 22px; display: inline-block; margin-top: 9px; margin-bottom: 2px; margin-right: 8px; height: 24px;\"><div class=\"pdpvld\" style=\"color: rgb(129, 201, 149);\"></div></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCDAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_138\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/gulp--_gb_1.mp3\" data-df=\"a large mouthful of liquid hastily drunk.\" data-ex=\"I took <b>a gulp of</b> beer\" data-hw=\"gulp\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+gulp&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSq_GrHKRRKjmhzYKek-9mkX9js_ZOM4sz14xRNHB7cZEBoifLLU4_dKw9omRLxLpDqMWM2Mg%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCEAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCFAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_140\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/drink--_gb_1.mp3\" data-df=\"a quantity of liquid swallowed at one go.\" data-ex=\"he had a drink of water\" data-hw=\"drink\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+drink&amp;si=ALGXSlZC_jbid1uaZGfc4a798NDvcrUhPh-Po2iLV-Vh_SQg9qP84MpY7r0IQw_qe8bCKlrog8IL8jxHwgWsqabVmkSSCCE8BcLxyYrZgDN9vwYrar5-M0I%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCGAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCHAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_142\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/swallow--_gb_1.mp3\" data-df=\"an act of swallowing something, especially food or drink.\" data-ex=\"he downed his drink in one swallow\" data-hw=\"swallow\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+swallow&amp;si=ALGXSlZCBshTM3a3nPTSW0d1OmQeACvvR07ikvtAeev8LDJDxG_LQvHYXiGq3a57j_MZZgxbE-brhPteQuGQ0B24P7PvLgh4vDuZ7uvlSmuEBcftMLZ6i6Y%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCIAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCJAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_144\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/mouthful--_gb_1.mp3\" data-df=\"a quantity of food or drink that fills or can be put in the mouth.\" data-ex=\"he took <b>a mouthful of</b> beer\" data-hw=\"mouthful\" data-lb=\"\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+mouthful&amp;si=ALGXSlaYxyllm14_NEvUA9w95SVcocI1UNgmqohgqSIc16mdhWfYYobX7EdkZjcjECi-zJL55R4_L6qlusBZhjkfnOxZ7OmwprkscrWj2_YMkjL3K0V-RFE%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCKAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"informal\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCLAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_146\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/swig--_gb_1.mp3\" data-df=\"a large gulp of drink.\" data-ex=\"he took a swig of tea\" data-hw=\"swig\" data-lb=\"informal\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+swig&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqGYLtjceWTFphy0LOfP9rVO_t79R4EXETErnzYnFk0bezY3WtebBcl8feYHSwIrG4I_9F9w%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCMAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"informal\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCNAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_148\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/swill--_gb_1.mp3\" data-df=\"a large mouthful of a drink.\" data-ex=\"a swill of ale\" data-hw=\"swill\" data-lb=\"informal\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+swill&amp;si=ALGXSlZC_jbid1uaZGfc4a798NDvo2j2NKKkI2im8EOs7IzxdEqQEFGh1NIDZBzWcgGD6PQVyetv5hQVORjYZfD5qfLr5Sf-bFNU7h1Drwm-NUbRFD6CFzE%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCOAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"informal\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCPAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_150\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/slug--_gb_1.mp3\" data-df=\"a tough-skinned terrestrial mollusc which typically lacks a shell and secretes a film of mucus for protection. It can be a serious plant pest.\" data-ex=\"\" data-hw=\"slug\" data-lb=\"informal\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+slug&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqJHBkDZrngu0-5b4dvxt-EmPj2J3jobpWbD1exnv9GfqSmoy-LdEjoQPT3gu02Qa43sAhOw%3D%3D\"></div></div></div><div jsname=\"Stv3Z\" class=\"gWUzU MR2UAc F5z5N AsWFZc Inx6Z I6a0ee En7IMd rjpYgb gjoUyf\" aria-hidden=\"true\" tabindex=\"-1\" jsaction=\"Aq3Esf\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8Y0DegUIKBCQAQ\" style=\"display: inline-block; position: relative; z-index: 0; border-radius: 32px; text-wrap: nowrap; cursor: pointer; background-origin: content-box; background-position: center center; background-repeat: no-repeat; border: 1px solid rgb(60, 64, 67); margin-top: 6px; width: 22px; margin-right: -24px; height: 22px; line-height: 22px; outline: 0px;\"><span class=\"D1MTm dZmT4d z1asCe bjaP2b\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166); margin: 1px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M7.41 8.59L12 13.17l4.59-4.58L18 10l-6 6-6-6 1.41-1.41z\"></path></svg></span></div></div><div data-mh=\"-1\" role=\"listitem\"><div jsname=\"F457ec\" class=\"EmSASc gWUzU MR2UAc F5z5N jEdCLc D9aCIe LsYFnd p9F8Cd I6a0ee rjpYgb gjoUyf\" data-lb=\"informal\" data-voc=\"false\" data-enc=\"1\" data-uti=\"1\" role=\"button\" tabindex=\"0\" jsaction=\"DAFmqe\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ8I0DegUIKBCRAQ\" style=\"display: inline-block; float: left; max-width: 250px; overflow: hidden; text-align: center; text-overflow: ellipsis; color: rgb(189, 193, 198); position: relative; border-radius: 32px; text-wrap: nowrap; border: 1px solid rgb(60, 64, 67); margin-top: 6px; padding: 0px 12px; margin-right: 4px; height: 22px; line-height: 22px; font-size: 13px; outline: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_152\"><div jsname=\"sUPGue\" data-au=\"//ssl.gstatic.com/dictionary/static/sounds/20220808/chug--_gb_1.mp3\" data-df=\"a muffled explosive sound or sounds.\" data-ex=\"the chug of a motorboat\" data-hw=\"chug\" data-lb=\"informal\" data-tae=\"true\" data-te=\"false\" data-tl=\"en\" data-tldf=\"\" data-url=\"/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=define+chug&amp;si=ALGXSlbay8QErRaW9ftxx-jGNHSqUtdb5syuqOrRoxSYFRyUqrUByj_1Ue-vTJueH_R6-ZdbMi_33UvdyesySYboH3PetQR4nA%3D%3D\"></div></div></div></div></div></div></div></div></div></li><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_154\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div><span class=\"mQo3nc aztjNb hsL7ld\" style=\"color: rgb(189, 193, 198); font-size: 11px; font-weight: 700; letter-spacing: 0.3px; line-height: 16px; text-transform: uppercase; display: inline-block; padding: 0px 6px; margin-top: -1px; border-radius: 2px; background-color: rgb(48, 49, 52); margin-right: 6px;\"><span class=\"BkZwPe\" style=\"margin: 0px 3px;\"></span></span></div><div><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=medicinal&amp;si=ALGXSlbSiMNWMsv5Y0U_0sBS8EWzaUzTBMy-pIGQTxX66Z2fj1s4zq5TDhBPjdeH4UMLW6H3CIUsoaZin7iFLaRpeu5SauWr2g%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegUIKBCWAQ\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div></li></ul></div></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"xpdxpnd\" data-mh=\"-1\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_156\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"nautical\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"xpdxpnd\" data-mh=\"-1\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_158\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"></div></div></div></div><div style=\"margin-left: 20px;\"><div style=\"margin-left: -13px;\"><ul style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><li jsname=\"z0mti\" class=\"xpdxpnd\" data-mh=\"-1\" data-topic=\"fish\" aria-hidden=\"true\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div class=\"csWlI\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_160\" style=\"display: list-item; list-style-type: disc; margin-left: 25px; padding-top: 5px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"></div></div></div></li></ul></div></div></div></div></li></ol></div><div jsname=\"r5Nvmf\" class=\"vmod\" data-topic=\"alcoholic\"><div class=\"lW8rQd\" style=\"align-items: center; display: flex;\"><div class=\"YrbPuc vdBwhd\" style=\"color: rgb(154, 160, 166); line-height: 22px; min-height: 20px;\"><i><span class=\"YrbPuc\" style=\"line-height: 22px;\"></span></i></div><div jsname=\"jUIvqc\" class=\"vmod\"><span class=\"kqEaA\" style=\"color: rgb(154, 160, 166); line-height: 22px;\"></span><span class=\"kqEaA z8gr9e\" style=\"color: rgb(189, 193, 198); line-height: 22px;\"><b></b></span></div></div><ol class=\"eQJLDd\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; display: flex; flex-direction: column;\"><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"alcoholic\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=cider&amp;si=ALGXSlanL1aSLkbkKVKYTZ8siJOeNwkN1l3kJw-bW7s02f8aUusg-TJ3RXs28iUsQ_uOVHzHUmpQ0SHBW2mjtAS10-ovcARObw%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQyecJegUIKBCbAQ\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li><li jsname=\"gskXhf\" style=\"margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><div class=\"vmod\"><div class=\"thODed\" style=\"padding-top: 8px;\"><div jsname=\"cJAsRb\" class=\"wHYlTd sY7ric\" data-topic=\"\" style=\"line-height: 16px;\"><div style=\"float: left;\"></div><div style=\"margin-left: 20px;\"><div class=\"wHYlTd sY7ric\" style=\"line-height: 16px;\"><div data-dobid=\"dfn\" style=\"display: inline;\"></div><div class=\"vmod\"><div class=\"ZYHQ7e\" style=\"color: rgb(154, 160, 166);\"></div></div></div></div></div><div style=\"margin-left: 20px;\"></div></div></div></li></ol></div></div><div jsname=\"Hqfs0d\"><div class=\"xpdxpnd\" data-mh=\"-1\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px;\"><div id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_162\"><div class=\"FpiMuf\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; color: rgb(232, 234, 237); font-size: 18px; line-height: 24px; margin: 20px 0px 0px;\"></div><div class=\"nQ8Joc\" style=\"filter: invert(87%) sepia(11%) saturate(297%) hue-rotate(187deg) brightness(93%) contrast(98%);\"><g-img aria-hidden=\"true\" style=\"display: inline-block; height: 175px;\"><img id=\"lr_dct_img_origin_nGEdZcqwKp3X1e8Pp-G8wAY_2\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" class=\"YQ4gaf wA1Bge\" height=\"153\" width=\"306\" alt=\"\" style=\"filter: none; display: block; position: relative; margin-top: 10px; margin-bottom: 12px;\"></g-img></div><div class=\"wHYlTd\" style=\"line-height: 22px;\"><i></i><i></i><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draw&amp;si=ALGXSlYftE7XViDpYdZ4PMnebYlvaRz7GR7LsxcS9qLQ8_Tg8rerm3YJxCklUQZok1JgTETGgoTeHhtiNW0XTDB0JifZ3ZAhBA%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQgCt6BQgoEJ0B\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span><span class=\"AraNOb\" style=\"text-decoration-line: underline;\"><a class=\"rMNQNe\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draft&amp;si=ALGXSlanL1aSLkbkKVKYTZ8siJOe6qW8pmchbMi_jeFIFUSl0G98D7My-Tq5eBYhWar8iA--gFNYFFGOnQDr_TPTp8Su9jqmwg%3D%3D&amp;expnd=1\" tabindex=\"0\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQgCt6BQgoEJ4B\" style=\"-webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"></a></span></div></div></div></div></div></div><div class=\"xpdxpnd gi0Tyb\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_164\" data-mh=\"-1\" jsslot=\"\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px; margin-left: -36px; margin-right: -36px; padding-left: 36px; padding-right: 36px;\"></div><div class=\"xpdxpnd gi0Tyb\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_166\" data-mh=\"-1\" jsslot=\"\" aria-hidden=\"true\" style=\"overflow: hidden; transition: max-height 0.3s ease 0s; max-height: 0px; margin-left: -36px; margin-right: -36px; padding-left: 36px; padding-right: 36px;\"><div jsname=\"Lfzded\" data-hveid=\"CCgQnwE\"><div aria-hidden=\"true\"><div class=\"FpiMuf\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; color: rgb(232, 234, 237); font-size: 18px; line-height: 24px; margin: 20px 0px 0px;\"></div><div class=\"nQ8Joc\" style=\"filter: invert(87%) sepia(11%) saturate(297%) hue-rotate(187deg) brightness(93%) contrast(98%);\"><a href=\"http://books.google.com/ngrams/graph?year_start=1800&amp;year_end=2019&amp;corpus=26&amp;smoothing=7&amp;case_insensitive=on&amp;content=draft\" data-uti=\"1\" tabindex=\"0\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=http://books.google.com/ngrams/graph%3Fyear_start%3D1800%26year_end%3D2019%26corpus%3D26%26smoothing%3D7%26case_insensitive%3Don%26content%3Ddraft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQhCx6BQgoEKAB\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><g-img aria-hidden=\"true\" style=\"display: inline-block; height: 142px;\"><img id=\"lr_dct_img_use\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" class=\"YQ4gaf wA1Bge\" height=\"120\" width=\"512\" alt=\"\" style=\"filter: none; display: block; position: relative; margin-top: 10px; margin-bottom: 12px;\"></g-img></a></div></div></div></div><div class=\"VZVCid vmod U5yxHb\" style=\"text-wrap: nowrap; margin-bottom: 4px; padding-top: 16px;\"><div class=\"EKJSGf\" style=\"margin-bottom: -18px; display: flex; align-items: center; justify-content: space-between;\"><div class=\"nPDigc dobdf\" data-dictionary-corpus=\"en\" data-dictionary-term=\"draft\" data-async-context=\"async_id:duf3-4;authority:0;card_id:;entry_point:0;feature_id:;ftoe:0;header:0;is_jobs_spam_form:0;open:0;preselect_answer_index:-1;suggestions:;suggestions_subtypes:;suggestions_types:;surface:0;title:;type:4\" style=\"flex: 1 1 0%;\"><div id=\"duf3-4\" data-jiis=\"up\" data-async-type=\"duffy3\" data-async-context-required=\"type,open,feature_id,async_id,entry_point,authority,card_id,ftoe,title,header,suggestions,surface,suggestions_types,suggestions_subtypes,preselect_answer_index,is_jobs_spam_form\" class=\"yp\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ-0F6BQgoEKEB\"></div><a class=\"oBa0Fe\" href=\"https://www.google.com/search?q=draft&amp;oq=draft&amp;gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg80gEIMTM1MGowajGoAgCwAgA&amp;sourceid=chrome&amp;ie=UTF-8#\" data-async-trigger=\"duf3-4\" aria-label=\"Give feedback on this result\" role=\"button\" jsaction=\"trigger.szjOR\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQtw96BQgoEKIB\" style=\"color: rgb(154, 160, 166); -webkit-tap-highlight-color: rgba(255, 255, 255, 0); float: right; font-style: italic; align-items: center; font-size: 12px; outline: 0px;\">Feedback</a></div></div></div></div></div></span><g-more-link class=\"zrlv1d xpdarr oYWfcb OSrXXb RB2q5e CHn7Qb\" jsaction=\"trigger.DtHYu;fastbutton:trigger.DtHYu\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQmDN6BQgoEKMB\" style=\"overflow: visible; text-overflow: ellipsis; margin-top: 18px; cursor: auto; display: block; line-height: 1.43; text-wrap: nowrap; font-size: 16px; text-align: center;\"><hr class=\"rhHIGd\" aria-hidden=\"true\" style=\"border-top: 0px; margin: 18px 0px 0px; background-color: rgb(60, 64, 67); height: 1px; left: 0px; position: absolute; width: 652px;\"><div class=\"S8ee5 CwbYXd wHYlTd vk_arc\" aria-controls=\"tsuid_49\" aria-expanded=\"false\" data-fbevent=\"fastbutton\" role=\"button\" tabindex=\"0\" style=\"border: 1px solid transparent; height: 36px; margin-bottom: -19px; overflow: hidden; padding: 7px 11px; font-size: 14px; line-height: 22px; background: rgb(48, 49, 52); pointer-events: auto; position: relative; width: 300px; -webkit-box-orient: horizontal; -webkit-box-direction: reverse; flex-direction: row-reverse; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-pack: center; justify-content: center; margin-left: auto; margin-right: auto; border-radius: 18px; color: rgb(232, 234, 237); outline: 0px;\"><span class=\"p8VO6e HbX59e\" aria-hidden=\"true\" style=\"color: rgb(189, 193, 198); margin-top: 0px; margin-bottom: -2px; height: 20px; -webkit-box-flex: 0; flex: 0 0 auto; margin-left: 0px;\"><span class=\"pmZ66 z1asCe QFl0Ff\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z\"></path></svg></span></span><span class=\"Z4Cazf OSrXXb\" style=\"overflow: hidden; text-overflow: ellipsis; width: auto; margin-right: 8px; display: inline-block; max-width: 220px;\"><span class=\"cfBJGe pmZ66\" style=\"color: rgb(189, 193, 198);\">More definitions</span></span></div></g-more-link></div></div></div></div></div></div></div></div></div></div><span id=\"z9PoV\"></span><span class=\"oUAcPd\" id=\"fld_1\"></span><span class=\"oUAcPd\" id=\"fld_2\"></span><div class=\"TzHB6b cLjAic\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CCsQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ16MCKAB6BAgrEAA\" style=\"font-size: 14px; margin: 44px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div class=\"JNkvid gsrt wp-ms\" style=\"display: flex; align-items: flex-start; margin: 0px 0px 16px;\"><div class=\"HnYYW\" style=\"flex: 1 1 0%; color: rgb(232, 234, 237); overflow: hidden; font-size: 22px; line-height: 24px; padding: 0px;\"><div aria-level=\"2\" role=\"heading\">People also ask<span class=\"QWHgYe\" style=\"position: relative; vertical-align: middle;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2ZA cECq7c;_;CpN2ZE\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIKxAC\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIKxAD\"></span></div></span></div></div></div><div><div jscontroller=\"Da4hkd\" jsname=\"bq0EGf\" class=\"cUnQKe\" data-initq=\"draft\" data-qc=\"CgVkcmFmdBAAffypMT8\" data-smqc=\"4\" data-ulkwtsb=\"1\" jsdata=\"Dmybpc;_;CpN2YY\" jsaction=\"HUiaHb:mlZWMd;FmigO:OKc46b;rcuQ6b:QyrbTd\" data-hveid=\"CBkQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQuU4oAHoECBkQAA\" style=\"margin-bottom: 44px; position: relative;\"><div class=\"Wt5Tfe\" style=\"padding-left: 0px; padding-right: 0px;\"><div jsname=\"N760b\" data-bs=\"c-OS4RIPz0gsUUjJV6jML1XITU3MU0gpSkwrsZc4GcKlwCUNls0shggqJOalKKRWJOYW5KQW20tsjeSS5hLzyC8Hak8tVkiEKirPL8q2l3jGxiXHJQnTDpNLyU8uzU3NAxo_KUmAEQA\" data-sgrd=\"true\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_39\"><div jsname=\"yEVEwb\"><div id=\"nGEdZcqwKp3X1e8Pp-G8wAY__24\"><div class=\"wQiwMc related-question-pair\" jscontroller=\"xfmZMb\" data-lk=\"GhZ3aGF0IGRvIHlvdSBtZWFuIGRyYWZ0\" data-q=\"What do you mean draft?\" decode-data-ved=\"1\" jsaction=\"rcuQ6b:npT2md;aVMkAb:o7YQ2;uUCWgf:NlNJyb\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQq7kBKAB6BAgiEAA\"><div jsname=\"YrZdPb\" class=\"HYvwY ilulF roMIYb oST1qe g7pt6d h373nd\" jscontroller=\"aD8OEe\" data-dic=\"\" data-g=\"\" data-ullb=\"\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;C0pONd:mhSdVe;A0VnDe:rXa5ib;IKGI6b:VrL1hd\" style=\"overflow: hidden; position: relative;\"><div jsname=\"clz4Ic\" class=\"ysxiae iRPzcb\" style=\"border-bottom: 1px solid rgb(60, 64, 67);\"></div><div><div role=\"button\" tabindex=\"0\" jsaction=\"AWEk5c\" jsname=\"tJHJj\" class=\"dnXCYb\" aria-controls=\"_nGEdZcqwKp3X1e8Pp-G8wAY_48\" aria-expanded=\"false\" data-hveid=\"CCIQAQ\" style=\"align-items: center; display: flex; max-height: none; position: relative; width: 652px; outline: 0px;\"><div jsname=\"lN6iy\" class=\"JlqpRe\" style=\"flex: 1 1 0%; margin: 12px 0px; overflow: hidden;\"><span class=\"JCzEY ZwRhJd\" style=\"font-size: 16px; line-height: 18px; color: rgb(232, 234, 237); display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: unset !important;\"><span class=\"CSkcDe\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; line-height: 24px;\">What do you mean draft?</span></span></div><div jsname=\"Q8Kwad\" class=\"aj35ze\" style=\"background-image: url(&quot;data:image/svg+xml,<svg focusable=\\&quot;false\\&quot; xmlns=\\&quot;http://www.w3.org/2000/svg\\&quot; viewBox=\\&quot;0 0 24 24\\&quot;><path fill=\\&quot;%239aa0a6\\&quot; d=\\&quot;M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z\\&quot;></path></svg>&quot;); display: inline-block; height: 24px; width: 24px;\"></div><div jsname=\"pcRaIe\" class=\"L3Ezfd\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQuk56BAgiEAI\" style=\"position: absolute; height: 48px; width: 652px; left: 0px; top: 0px;\"></div></div></div></div></div></div></div><div jsname=\"yEVEwb\"><div id=\"nGEdZcqwKp3X1e8Pp-G8wAY__28\"><div class=\"wQiwMc related-question-pair\" jscontroller=\"xfmZMb\" data-lk=\"Ghp3aGF0IGlzIGRyYWZ0IGFuZCBleGFtcGxlcw\" data-q=\"What is draft and examples?\" decode-data-ved=\"1\" jsaction=\"rcuQ6b:npT2md;aVMkAb:o7YQ2;uUCWgf:NlNJyb\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQq7kBKAB6BAgjEAA\"><div jsname=\"YrZdPb\" class=\"HYvwY ilulF roMIYb oST1qe g7pt6d h373nd\" jscontroller=\"aD8OEe\" data-dic=\"\" data-g=\"\" data-ullb=\"\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;C0pONd:mhSdVe;A0VnDe:rXa5ib;IKGI6b:VrL1hd\" style=\"overflow: hidden; position: relative;\"><div jsname=\"clz4Ic\" class=\"ysxiae iRPzcb\" style=\"border-bottom: 1px solid rgb(60, 64, 67);\"></div><div><div role=\"button\" tabindex=\"0\" jsaction=\"AWEk5c\" jsname=\"tJHJj\" class=\"dnXCYb\" aria-controls=\"_nGEdZcqwKp3X1e8Pp-G8wAY_47\" aria-expanded=\"false\" data-hveid=\"CCMQAQ\" style=\"align-items: center; display: flex; max-height: none; position: relative; width: 652px; outline: 0px;\"><div jsname=\"lN6iy\" class=\"JlqpRe\" style=\"flex: 1 1 0%; margin: 12px 0px; overflow: hidden;\"><span class=\"JCzEY ZwRhJd\" style=\"font-size: 16px; line-height: 18px; color: rgb(232, 234, 237); display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: unset !important;\"><span class=\"CSkcDe\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; line-height: 24px;\">What is draft and examples?</span></span></div><div jsname=\"Q8Kwad\" class=\"aj35ze\" style=\"background-image: url(&quot;data:image/svg+xml,<svg focusable=\\&quot;false\\&quot; xmlns=\\&quot;http://www.w3.org/2000/svg\\&quot; viewBox=\\&quot;0 0 24 24\\&quot;><path fill=\\&quot;%239aa0a6\\&quot; d=\\&quot;M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z\\&quot;></path></svg>&quot;); display: inline-block; height: 24px; width: 24px;\"></div><div jsname=\"pcRaIe\" class=\"L3Ezfd\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQuk56BAgjEAI\" style=\"position: absolute; height: 48px; width: 652px; left: 0px; top: 0px;\"></div></div></div></div></div></div></div><div jsname=\"yEVEwb\"><div id=\"nGEdZcqwKp3X1e8Pp-G8wAY__31\"><div class=\"wQiwMc related-question-pair\" jscontroller=\"xfmZMb\" data-lk=\"GhVob3cgZG9lcyBhIGRyYWZ0IHdvcms\" data-q=\"How does a draft work?\" decode-data-ved=\"1\" jsaction=\"rcuQ6b:npT2md;aVMkAb:o7YQ2;uUCWgf:NlNJyb\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQq7kBKAB6BAglEAA\"><div jsname=\"YrZdPb\" class=\"HYvwY ilulF roMIYb oST1qe g7pt6d h373nd\" jscontroller=\"aD8OEe\" data-dic=\"\" data-g=\"\" data-ullb=\"\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;C0pONd:mhSdVe;A0VnDe:rXa5ib;IKGI6b:VrL1hd\" style=\"overflow: hidden; position: relative;\"><div jsname=\"clz4Ic\" class=\"ysxiae iRPzcb\" style=\"border-bottom: 1px solid rgb(60, 64, 67);\"></div><div><div role=\"button\" tabindex=\"0\" jsaction=\"AWEk5c\" jsname=\"tJHJj\" class=\"dnXCYb\" aria-controls=\"_nGEdZcqwKp3X1e8Pp-G8wAY_46\" aria-expanded=\"false\" data-hveid=\"CCUQAQ\" style=\"align-items: center; display: flex; max-height: none; position: relative; width: 652px; outline: 0px;\"><div jsname=\"lN6iy\" class=\"JlqpRe\" style=\"flex: 1 1 0%; margin: 12px 0px; overflow: hidden;\"><span class=\"JCzEY ZwRhJd\" style=\"font-size: 16px; line-height: 18px; color: rgb(232, 234, 237); display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: unset !important;\"><span class=\"CSkcDe\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; line-height: 24px;\">How does a draft work?</span></span></div><div jsname=\"Q8Kwad\" class=\"aj35ze\" style=\"background-image: url(&quot;data:image/svg+xml,<svg focusable=\\&quot;false\\&quot; xmlns=\\&quot;http://www.w3.org/2000/svg\\&quot; viewBox=\\&quot;0 0 24 24\\&quot;><path fill=\\&quot;%239aa0a6\\&quot; d=\\&quot;M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z\\&quot;></path></svg>&quot;); display: inline-block; height: 24px; width: 24px;\"></div><div jsname=\"pcRaIe\" class=\"L3Ezfd\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQuk56BAglEAI\" style=\"position: absolute; height: 48px; width: 652px; left: 0px; top: 0px;\"></div></div></div></div></div></div></div><div jsname=\"yEVEwb\"><div id=\"nGEdZcqwKp3X1e8Pp-G8wAY__34\"><div class=\"wQiwMc related-question-pair\" jscontroller=\"xfmZMb\" data-lk=\"GhhkcmFmdCBhIGRvY3VtZW50IG1lYW5pbmc\" data-q=\"What is a draft document?\" decode-data-ved=\"1\" jsaction=\"rcuQ6b:npT2md;aVMkAb:o7YQ2;uUCWgf:NlNJyb\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQq7kBKAB6BAgkEAA\"><div jsname=\"YrZdPb\" class=\"HYvwY ilulF roMIYb oST1qe g7pt6d h373nd\" jscontroller=\"aD8OEe\" data-dic=\"\" data-g=\"\" data-ullb=\"\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;C0pONd:mhSdVe;A0VnDe:rXa5ib;IKGI6b:VrL1hd\" style=\"overflow: hidden; position: relative;\"><div jsname=\"clz4Ic\" class=\"ysxiae iRPzcb\" style=\"border-bottom: 1px solid rgb(60, 64, 67);\"></div><div><div role=\"button\" tabindex=\"0\" jsaction=\"AWEk5c\" jsname=\"tJHJj\" class=\"dnXCYb\" aria-controls=\"_nGEdZcqwKp3X1e8Pp-G8wAY_45\" aria-expanded=\"false\" data-hveid=\"CCQQAQ\" style=\"align-items: center; display: flex; max-height: none; position: relative; width: 652px; outline: 0px;\"><div jsname=\"lN6iy\" class=\"JlqpRe\" style=\"flex: 1 1 0%; margin: 12px 0px; overflow: hidden;\"><span class=\"JCzEY ZwRhJd\" style=\"font-size: 16px; line-height: 18px; color: rgb(232, 234, 237); display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; -webkit-line-clamp: unset !important;\"><span class=\"CSkcDe\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; line-height: 24px;\">What is a draft document?</span></span></div><div jsname=\"Q8Kwad\" class=\"aj35ze\" style=\"background-image: url(&quot;data:image/svg+xml,<svg focusable=\\&quot;false\\&quot; xmlns=\\&quot;http://www.w3.org/2000/svg\\&quot; viewBox=\\&quot;0 0 24 24\\&quot;><path fill=\\&quot;%239aa0a6\\&quot; d=\\&quot;M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z\\&quot;></path></svg>&quot;); display: inline-block; height: 24px; width: 24px;\"></div><div jsname=\"pcRaIe\" class=\"L3Ezfd\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQuk56BAgkEAI\" style=\"position: absolute; height: 48px; width: 652px; left: 0px; top: 0px;\"></div></div></div></div></div></div></div><div jsname=\"grQLgb\" class=\"yp\" data-async-fc=\"EosBCkxBTE9ucFlVOXJnVjhobFRVTm16ZXZNSFBKSFJWZGNzOFMzS00yRFpZelVFWUR3SnNxSXliQ01uX2NVZjhTTUdGOW5lLVZGSGRzMGlTEhduR0VkWmNxd0twM1gxZThQcC1HOHdBWRoiQUp3ay04Zk5QanQ5T0Q0Q1FfR3ZmM0JWdWQxVWpZWnNBQQ\" data-async-fcv=\"3\" data-async-ons=\"10041\" id=\"fc_2\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQzOMHKAB6BAgZEAE\"></div></div><div class=\"XVdSCb KFFQ0c xKf9F\" style=\"margin-top: 0px; align-items: center; display: flex; margin-bottom: 0px; width: 652px; height: 16px;\"><div class=\"akqY6\" style=\"background: rgb(60, 64, 67); height: 1px; width: 585.3px;\"></div><div class=\"YfftMc\" style=\"align-items: center; color: rgb(154, 160, 166); display: flex; font-size: 12px; margin: 0px 0px 0px 14px; padding: 0px; text-wrap: nowrap; flex-shrink: 0;\"><div class=\"EyBRub\" style=\"align-items: center; display: flex; margin: 0px; padding: 0px;\"><div jscontroller=\"Wo3n8\" jsname=\"aadvhe\" jsmodel=\"d5EhJe\" data-bkt=\"related_questions\" data-eas=\"\" data-fhs=\"\" data-kes=\"\" jsdata=\"vST7rb;_;CpN2Yc zEIyGd;_;\" jsaction=\"kPzEO:MlP2je;w8f1fc:hRwSgb;aIJAdf:UhDUnd;BqbTbe:naa5ve;kYAKrf:CqUGrf;hwhRRe:KyxjCd;rcuQ6b:npT2md\" style=\"align-items: center; display: flex; margin: 0px; padding: 0px;\"><div jsname=\"GkjeIf\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_42\" data-jiis=\"up\" data-async-type=\"kp_feedback\" class=\"yp\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ68cEKAJ6BAgZEAM\" style=\"align-items: center; display: flex; margin: 0px; padding: 0px;\"></div></div><div jscontroller=\"gSZvdb\" class=\"ff76ob\" role=\"button\" tabindex=\"0\" jsdata=\"vST7rb;_;CpN2Yc\" jsaction=\"i5KCU\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ6scEKAN6BAgZEAQ\" style=\"float: right; line-height: 16px; padding: 0px; outline: 0px; align-items: center; display: flex; margin: 0px;\"><div class=\"NhRr3b aBOYt\" style=\"cursor: pointer; position: relative; display: flex; align-items: center; margin: 0px; padding: 0px;\"><span style=\"align-items: center; display: flex; margin: 0px; padding: 0px;\">Feedback</span></div></div></div></div></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHkQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh5EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CEYQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIRhAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_gCKXDd\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.merriam-webster.com/dictionary/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECDIQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.merriam-webster.com/dictionary/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECDIQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft Definition &amp; Meaning</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAAAolBMVEX////65+jqmpzcRUrWAADUAADcQUbpk5X77O3gYGTke37zxsf++vr0y8zmhYjfV1vwtrjso6XurrDrnqD54OHXBRT+9vfhZWn76uvjdXj4+vzn7PPx9Pjp9PreTlKdr8oAKYO2w9cAOYpXealFbaOvvtTX3+oARY773NvbOD4nWpkzYJwAHX+QpMO+ytt8lbvR2eZgf60PT5N+m8AAFHzZKjAX17AGAAABGUlEQVR4Aa3S1WKDMABA0VtGitY9UDdc1///tFk143E7SNzDP2hpb7oQetto8ZtpCdsxXdfsdPWeWkxfGDwMxJAXIzFWupkYr+2mKNzJo62ptrtmtbiaGTQMe9dwLlya9GtvowWSHxLpeXi+73tL49rdymG92cJ6t8XfHzhuTv55G4TXDuYQxRCfgVPENvE44Op8E1O8ND5l67MEzv4+X2+PIK6FLsU6y0sqr96f0jr34r0Ece8227LLiQvg9F5QlXx3e5tQviY/yTgFqKDO4DYhzZZZhuSUZRLwQQKacdsEaJrcttTSaOivlF1WTJ9Zfd1FdRnyoE1Mpd2lq16TwWtiiGLe041gCm6gTVat5tU02t9XMzTG/N0nS8QVm4bIwcgAAAAASUVORK5CYII=\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Merriam-Webster</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.merriam-webster.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› dictionary › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2Z0 cECq7c;_;CpN2Z4\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIMhAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIMhAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\"><span class=\"lhLbod gEBHYd\" style=\"padding-top: 0px; margin-bottom: 0px; color: rgb(154, 160, 166);\">5 days ago&nbsp;—&nbsp;</span>1. : to select for some purpose: such as. a. : to conscript for military service · 2. a. : to draw the preliminary sketch, version, or plan of · 3.</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"3\" data-snf=\"gdePb\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"HiHjCd\" style=\"color: rgb(154, 160, 166);\">‎<a href=\"https://www.merriam-webster.com/thesaurus/draft\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.merriam-webster.com/thesaurus/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ0gIoAHoECDYQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Synonyms of draft</a>&nbsp;· ‎<a href=\"https://www.merriam-webster.com/dictionary/final%20draft\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.merriam-webster.com/dictionary/final%2520draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ0gIoAXoECDYQAg\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Final draft</a>&nbsp;· ‎<a href=\"https://www.merriam-webster.com/dictionary/rough%20draft\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.merriam-webster.com/dictionary/rough%2520draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ0gIoAnoECDYQAw\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Rough draft</a>&nbsp;· ‎<a href=\"https://www.merriam-webster.com/dictionary/anti-draft\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.merriam-webster.com/dictionary/anti-draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ0gIoA3oECDYQBA\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\">Anti-draft</a></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHwQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh8EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CEUQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIRRAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_McNrDd\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://dictionary.cambridge.org/dictionary/english/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECDEQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://dictionary.cambridge.org/dictionary/english/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECDEQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">DRAFT | English meaning - Cambridge Dictionary</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3MDc3NzU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3NzE1LDg3Nzc3Lzc1LzcwMDgvNy8tN//AABEIABwAHAMBEQACEQEDEQH/xAAaAAACAwEBAAAAAAAAAAAAAAADBgIEBQcA/8QAKhAAAQMDAwIEBwAAAAAAAAAAAQIDBAARIQUSMQYTIlGxwRQVMkFCcYH/xAAZAQACAwEAAAAAAAAAAAAAAAACAwEEBQD/xAAlEQACAgECBQUBAAAAAAAAAAAAAQIDEQQxIVFhcYESMkGh0SL/2gAMAwEAAhEDEQA/AOVAVoYEmzpXT07VGH3oqo4QzHckK7jhB2o5Awc+XrVV62qNkq3nMSzHSWSUWsf1wXnwUpMVcd1TTm0qTb6TcZF6sUXR1FashsxFtbql6ZbgO2abgDJ5KR965IjI/dJdQso0lyFMfaYEGK69G/AuupN0pJB8YNz4Dzas2+jUO1uKzH479TR091ShFN4ecPPLmv1cUL+uT1arqLkxwIBUABtQECwFuBWjpKrIUpW+75wUNRZGdjcNjNKBTsCskdNe7E+O5vKAHBuUOQk4P6wTmlPZhjZ8yigKLeoIRe1h8K0bAf0XOAb+/Ck+j+wn3Keu6i27CQ21JjvHckKKYyUKIA8wo2A4xamwfHZgyXAXS7mj9QOAKaBBMMmjBIrOKhkoATmgCP/Z\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Cambridge Dictionary</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://dictionary.cambridge.org<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› dictionary › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2Zc cECq7c;_;CpN2Zw\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIMRAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIMRAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\"><span class=\"lhLbod gEBHYd\" style=\"padding-top: 0px; margin-bottom: 0px; color: rgb(154, 160, 166);\">7 days ago&nbsp;—&nbsp;</span><span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;verb [T] (WRITE). to write something, esp. at an early stage before it is in final form: She&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">drafted</span>&nbsp;a letter to her lawyer. ·&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;verb [&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHgQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ16UCKAB6BAh4EAA\" style=\"font-size: 14px; margin: 44px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div class=\"JNkvid gsrt wp-ms\" style=\"display: flex; align-items: flex-start; margin: 0px 0px 16px;\"><div class=\"XmmGVd\" aria-level=\"2\" role=\"heading\" style=\"display: flex; flex-grow: 1;\"><a class=\"a-no-hover-decoration T9EeC\" href=\"https://www.google.com/search?q=draft&amp;sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;tbm=isch&amp;source=univ&amp;ictx=2&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQw_oBegQIeBAC\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQw_oBegQIeBAC\" style=\"color: rgba(255, 255, 255, 0.54); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); display: flex; align-items: normal; outline: 0px;\"><div class=\"HnYYW\" style=\"flex: 1 1 0%; color: rgb(232, 234, 237); overflow: hidden; font-size: 22px; line-height: 24px; padding: 0px;\">Images</div><span class=\"WeviRb z1asCe LV6CSb\" style=\"display: inline-block; fill: currentcolor; height: 24px; line-height: 24px; position: relative; width: 24px; margin: -1px 0px 0px 4px; color: rgb(154, 160, 166); top: 3px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z\"></path></svg></span></a></div></div><div><div class=\"wDYxhc NFQFxe oHglmf xzPb7d\" data-md=\"32\" data-hveid=\"CF0QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ4dMGegQIXRAA\" style=\"clear: none;\"><div class=\"kno-mrg kno-swp\" id=\"media_result_group\" data-hveid=\"CF0QAQ\" style=\"position: relative; overflow: visible;\"><div class=\"kno-fiu kno-liu\"><div jsmodel=\"Wn3aEc\" data-count=\"5\" data-hveid=\"CE4QAA\"><div></div><div class=\"xte2qe OXEsB o6uAG\" style=\"display: flex; border-radius: 12px; overflow: hidden;\"><div jsmodel=\"\" jscontroller=\"LdB9sd\" jsaction=\"PdWSXe:h5M12e;rcuQ6b:npT2md;\" jsdata=\"X2sNs;_;CpN2Z8\"><div class=\"RYdNQb\" data-h=\"130\" data-nr=\"1\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQxDAoAHoECE4QAg\" style=\"border-top-left-radius: 8px; border-top-right-radius: 8px; margin-right: -2px; margin-bottom: -2px;\"><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd ivg-i PZPZlf PtaMgb GMCzAd\" jscontroller=\"Um3BXb\" data-sd=\"\" jsdata=\"j0Opre;LMZxCOSbL1iXDM;CpN2aA\" data-attrid=\"secondary image\" data-docid=\"LMZxCOSbL1iXDM\" data-lpage=\"https://www.computerhope.com/jargon/d/drafmode.htm\" data-ref-docid=\"YDjZejtVlqEVtM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e\" data-hveid=\"CE8QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_R16BAhPEAA\" style=\"vertical-align: top; display: inline-block; margin: 0px; position: relative; cursor: pointer; overflow: hidden; float: left;\"><div jsname=\"IOBa3c\"><div jsname=\"qQjpJ\" class=\"XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px;\"><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 106px; width: 146px;\"><img alt=\"What is Draft Mode?\" id=\"dimg_10\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; transition: transform 200ms ease 0s; height: 106px; width: 146px; display: block;\"></div></div><div jsname=\"tdeeNb\" class=\"BfmEZb\" style=\"height: 106px; left: 0px; pointer-events: none; position: absolute; top: 0px; width: 146px;\"></div></div></div><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd ivg-i PZPZlf PtaMgb GMCzAd\" jscontroller=\"Um3BXb\" data-sd=\"\" jsdata=\"j0Opre;buuQber44Af1eM;CpN2aE\" data-attrid=\"secondary image\" data-docid=\"buuQber44Af1eM\" data-lpage=\"https://www.shutterstock.com/search/draft\" data-ref-docid=\"0Zhe_v8-JjpXYM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e\" data-hveid=\"CFAQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_R16BAhQEAA\" style=\"vertical-align: top; display: inline-block; margin: 0px 0px 0px 2px; position: relative; cursor: pointer; overflow: hidden; float: left;\"><div jsname=\"IOBa3c\"><div jsname=\"qQjpJ\" class=\"XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px;\"><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 106px; width: 139px;\"><img alt=\"482,409 Draft Images, Stock Photos &amp; Vectors | Shutterstock\" id=\"dimg_9\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; transition: transform 200ms ease 0s; height: 106px; width: 139px; display: block;\"></div></div><div jsname=\"tdeeNb\" class=\"BfmEZb\" style=\"height: 106px; left: 0px; pointer-events: none; position: absolute; top: 0px; width: 139px;\"></div></div></div><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd ivg-i PZPZlf PtaMgb GMCzAd\" jscontroller=\"Um3BXb\" data-sd=\"\" jsdata=\"j0Opre;KMUqXpPv5nF2BM;CpN2aM\" data-attrid=\"secondary image\" data-docid=\"KMUqXpPv5nF2BM\" data-lpage=\"https://www.dreamstime.com/draft-grunge-vintage-stamp-isolated-white-background-draft-sign-draft-stamp-image153900243\" data-ref-docid=\"zoCeu33vMsYeEM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e\" data-hveid=\"CFIQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_R16BAhSEAA\" style=\"vertical-align: top; display: inline-block; margin: 0px 0px 0px 2px; position: relative; cursor: pointer; overflow: hidden; float: left;\"><div jsname=\"IOBa3c\"><div jsname=\"qQjpJ\" class=\"XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px;\"><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 106px; width: 141px;\"><img alt=\"Draft stamp stock vector. Illustration of seal, insignia ...\" id=\"dimg_15\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; transition: transform 200ms ease 0s; height: 106px; width: 141px; display: block;\"></div></div><div jsname=\"tdeeNb\" class=\"BfmEZb\" style=\"height: 106px; left: 0px; pointer-events: none; position: absolute; top: 0px; width: 141px;\"></div></div></div><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd ivg-i PZPZlf PtaMgb GMCzAd\" jscontroller=\"Um3BXb\" data-sd=\"\" jsdata=\"j0Opre;0Eku-zoj_Jc5BM;CpN2aQ\" data-attrid=\"secondary image\" data-docid=\"0Eku-zoj_Jc5BM\" data-lpage=\"https://pixabay.com/vectors/draft-business-document-file-160132/\" data-ref-docid=\"UyezlXalQ9_UyM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e\" data-hveid=\"CFYQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_R16BAhWEAA\" style=\"vertical-align: top; display: inline-block; margin: 0px 0px 0px 2px; position: relative; cursor: pointer; overflow: hidden; float: left;\"><div jsname=\"IOBa3c\"><div jsname=\"qQjpJ\" class=\"XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px;\"><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 106px; width: 106px;\"><img alt=\"Download Draft Business Document Royalty-Free Vector Graphic ...\" id=\"dimg_17\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; transition: transform 200ms ease 0s; height: 106px; width: 106px; display: block;\"></div></div><div jsname=\"tdeeNb\" class=\"BfmEZb\" style=\"height: 106px; left: 0px; pointer-events: none; position: absolute; top: 0px; width: 106px;\"></div></div></div><div jsname=\"dTDiAc\" class=\"eA0Zlc WghbWd FnEtTd ivg-i PZPZlf PtaMgb GMCzAd\" jscontroller=\"Um3BXb\" data-sd=\"\" jsdata=\"j0Opre;TSTcp1f_tBlzZM;CpN2aI\" data-attrid=\"secondary image\" data-docid=\"TSTcp1f_tBlzZM\" data-lpage=\"https://en.wikipedia.org/wiki/National_Football_League_Draft\" data-ref-docid=\"nsBNlVgX5wdtRM\" jsaction=\"rcuQ6b:npT2md;tuz4af:RrAr1;nptbHe:XEuVS;h5M12e\" data-hveid=\"CFEQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ_R16BAhREAA\" style=\"vertical-align: top; display: inline-block; margin: 0px 0px 0px 2px; position: relative; cursor: pointer; overflow: hidden; float: left;\"><div jsname=\"IOBa3c\"><div jsname=\"qQjpJ\" class=\"XOEbc\" role=\"button\" tabindex=\"0\" style=\"outline: 0px;\"><div data-bla=\"\" class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 106px; width: 112px;\"><img alt=\"National Football League Draft - Wikipedia\" id=\"dimg_13\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; transition: transform 200ms ease 0s; height: 106px; width: 112px; display: block;\"></div></div><div jsname=\"tdeeNb\" class=\"BfmEZb\" style=\"height: 106px; left: 0px; pointer-events: none; position: absolute; top: 0px; width: 112px;\"></div></div></div></div></div></div><a href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draft&amp;tbm=isch&amp;source=univ&amp;fir=LMZxCOSbL1iXDM%252CYDjZejtVlqEVtM%252C_%253BbuuQber44Af1eM%252C0Zhe_v8-JjpXYM%252C_%253BKMUqXpPv5nF2BM%252CzoCeu33vMsYeEM%252C_%253B0Eku-zoj_Jc5BM%252CUyezlXalQ9_UyM%252C_%253BTSTcp1f_tBlzZM%252CnsBNlVgX5wdtRM%252C_&amp;usg=AI4_-kTBzqgVjtqOR6rpKtAgHznBk9oEaw&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQiR56BAhOEAM\" class=\"hisnlb M6Nvye\" data-hveid=\"CE4QAw\" style=\"color: rgb(255, 255, 255); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); bottom: 0px; background: rgba(0, 0, 0, 0.6); border-top-left-radius: 4px; font-size: 13px; height: 32px; padding: 0px 8px; right: 0px; align-items: center; display: flex; position: absolute; outline: 0px; border-bottom-right-radius: 12px;\"><span class=\"zx2uDe\" style=\"margin-right: 8px; margin-top: 6px;\"><span class=\"iJddsb\" style=\"display: inline-block; fill: currentcolor; height: 20px; width: 20px;\"><svg focusable=\"false\" viewBox=\"0 0 24 24\"><path d=\"M14 13l4 5H6l4-4 1.79 1.78L14 13zm-6.01-2.99A2 2 0 0 0 8 6a2 2 0 0 0-.01 4.01zM22 5v14a3 3 0 0 1-3 2.99H5c-1.64 0-3-1.36-3-3V5c0-1.64 1.36-3 3-3h14c1.65 0 3 1.36 3 3zm-2.01 0a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h7v-.01h7a1 1 0 0 0 1-1V5\"></path></svg></span></span>More images</a></div></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHIQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQz4gCKAB6BAhyEAA\" style=\"font-size: 14px; margin: 44px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div class=\"JNkvid gsrt wp-ms\" style=\"display: flex; align-items: flex-start; margin: 0px 0px 16px;\"><div class=\"HnYYW\" style=\"flex: 1 1 0%; color: rgb(232, 234, 237); overflow: hidden; font-size: 22px; line-height: 24px; padding: 0px;\"><div aria-level=\"2\" role=\"heading\">Top stories<span class=\"QWHgYe\" style=\"position: relative; vertical-align: middle;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2a4 cECq7c;_;CpN2ZE\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIchAC\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIchAD\"></span></div></span></div></div></div><div><g-section-with-header class=\"yG4QQe TBC9ub\" data-hveid=\"CFMQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQhckBKAB6BAhTEAA\" style=\"display: block; margin: 0px 0px 30px; position: relative;\"><div class=\"e2BEnf q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 20px; line-height: 1.3;\"></div><div class=\"zMVEOd\" data-hveid=\"CGMQAA\" style=\"padding-bottom: 25px;\"><div class=\"Kc1gdb xSK9ce\" style=\"padding-top: 4px; margin-top: -12px;\"><g-tray-header class=\"kno-fb-ctx\" aria-level=\"3\" role=\"heading\" style=\"display: block; padding: 0px 16px;\"><div class=\"N60dNb q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif;\"><div class=\"UG0mTe FpiMuf q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; margin-top: 0px; color: rgb(232, 234, 237); font-size: 18px; margin-bottom: 12px; margin-left: -16px; line-height: 24px;\">Maruti Suzuki\'s draft tax assessment order</div></div></g-tray-header></div><g-scrolling-carousel jscontroller=\"pgCXqb\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_170\" jsdata=\"JcTXNb;_;CpN2a0\" jsshadow=\"\" jsaction=\"OaAmdd:EDKYjb;JnGzAc:aJ8u7;qVN0Rc:nnsrCf;OW9R3e:Xj7hvb;EormBc:HFYvKc;gEKQDb:yUtVib;keydown:uYT2Vb;rcuQ6b:npT2md;lnkFzb:jCOVSe\" style=\"display: block; position: relative;\"><div jsname=\"haAclf\" class=\"acCJ4b\" jsaction=\"t3L5Dd:OR1BUb\" data-hveid=\"CGMQAw\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQlK0KegQIYxAD\" style=\"overflow: auto hidden; position: relative; text-wrap: nowrap; transform: translate3d(0px, 0px, 0px);\"><div jsname=\"s2gQvd\" class=\"EDblX GpHuwc\" jsslot=\"\" style=\"display: inline-block; padding-bottom: 12px;\"><div class=\"dcdtAb\" style=\"display: inline-block; margin-right: 10px; color: rgb(189, 193, 198); font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; line-height: 20px;\">In these articles</div><a class=\"SsQPYd\" href=\"https://www.google.com/search?q=TYO:7269&amp;oq=draft&amp;gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg80gEIMTM1MGowajGoAgCwAgA&amp;sourceid=chrome&amp;ie=UTF-8&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQkq0KKAB6BAhjEAU&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQkq0KKAB6BAhjEAU\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); margin-right: 10px; outline: 0px;\"><div class=\"bYE4qe\" style=\"height: 24px; padding: 2px 12px; border: 1px solid rgb(60, 64, 67); border-radius: 9999px; gap: 10px; display: inline-flex; align-items: center; justify-content: space-around; font-family: arial, sans-serif-medium, sans-serif; font-size: 12px; line-height: 12px;\"><div class=\"yvHZD\" style=\"color: rgb(189, 193, 198);\">7269</div><div class=\"x1juSd N3tRWd\" style=\"display: inline-flex; flex-direction: row; align-items: center; color: rgb(242, 139, 130);\"><span class=\"LmyvNd z1asCe bfFFU\" style=\"display: inline-block; fill: currentcolor; height: 12px; line-height: 12px; position: relative; width: 12px; transform: rotate(180deg);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8-8 8z\"></path></svg></span>4.70%</div></div></a><a class=\"SsQPYd\" href=\"https://www.google.com/search?q=NSE:MARUTI&amp;oq=draft&amp;gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQRRg80gEIMTM1MGowajGoAgCwAgA&amp;sourceid=chrome&amp;ie=UTF-8&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQkq0KKAF6BAhjEAY&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQkq0KKAF6BAhjEAY\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); margin-right: 0px; outline: 0px;\"><div class=\"bYE4qe\" style=\"height: 24px; padding: 2px 12px; border: 1px solid rgb(60, 64, 67); border-radius: 9999px; gap: 10px; display: inline-flex; align-items: center; justify-content: space-around; font-family: arial, sans-serif-medium, sans-serif; font-size: 12px; line-height: 12px;\"><div class=\"yvHZD\" style=\"color: rgb(189, 193, 198);\">MARUTI</div><div class=\"x1juSd N3tRWd\" style=\"display: inline-flex; flex-direction: row; align-items: center; color: rgb(242, 139, 130);\"><span class=\"LmyvNd z1asCe bfFFU\" style=\"display: inline-block; fill: currentcolor; height: 12px; line-height: 12px; position: relative; width: 12px; transform: rotate(180deg);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M4 12l1.41 1.41L11 7.83V20h2V7.83l5.58 5.59L20 12l-8-8-8 8z\"></path></svg></span>1.96%</div></div></a></div></div><div jsname=\"Y5ANHe\"><g-left-button jsname=\"sIJmDf\" class=\"pQXcHc pQXcHc wgbRNb bCwlI  OZ5bRd ENpXyb tHT0l\" aria-hidden=\"true\" jsaction=\"PfjCMb\" aria-label=\"Previous\" role=\"button\" style=\"margin-bottom: auto; margin-top: auto; cursor: default; height: 72px; position: absolute; display: block; visibility: hidden; width: 36px; bottom: 0px; opacity: 0; top: 0px; z-index: 101; transition: opacity 0.5s ease 0s, visibility 0.5s ease 0s; left: 0px; border-bottom-right-radius: 36px; border-top-right-radius: 36px; box-shadow: rgba(0, 0, 0, 0.5) 1px 0px 2px; background-color: rgb(32, 33, 36);\"><div class=\"b5K9zd vWtmKf OZ5bRd TBC9ub\" style=\"margin: auto 0px; bottom: 0px; top: 0px; background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAuCAYAAAAcEfjaAAABV0lEQVRIx+2VsW7CQBBEDwTpIkXICMuyJdtfQsGXQUVFlSpVmjTESOn4BAoXLigsueAvaM2MBAht7g6v06ZYwNK8893ezGLatjV5ni9QO2PMC599ZdI0nWdZdgbQ4vsH0NgLQLSn+FZ4/gY0cgJBELxCdHiEUF+AhlaAH9jWG0SleNOnDbr/iON4AlEloA9AAyvAiqIogPAooHcnwIJghqrFmTZOgJUkSQRRI6C1E7huL8GbTmJ7Ky2w/PuWVIcOw3Daua2qi1NZQ20+i723XnurA/QQ0aJTRJ8J/oEuAFvNqcjWPwV4ibzM66Weeck+8YhTUNhm7xIPaUAhPtCoVjGtLdxbMgK/zsCwMDRi5YrhsnaJcRQrHzkNrW1l0MXKNQeCy95rsXLDUeNK3EqsfOIQ8/0DLVWAeku9Du1rK6ehE1BfnNoavcwn7L3tZO9eARIRLW4RvQA0+6DNwTHW6QAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; height: 20px; width: 12px; filter: invert(1); background-position: 0px -26px; left: 8px; position: absolute !important;\"></div></g-left-button></div><div jsname=\"AK6yne\"><g-right-button jsname=\"IHFM4\" aria-hidden=\"true\" jsaction=\"sYPGdb\" class=\"pQXcHc wgbRNb VdehBf  OZ5bRd ENpXyb tHT0l\" aria-label=\"Next\" role=\"button\" style=\"margin-bottom: auto; margin-top: auto; cursor: default; height: 72px; position: absolute; display: block; visibility: hidden; width: 36px; bottom: 0px; opacity: 0; top: 0px; z-index: 101; transition: opacity 0.5s ease 0s, visibility 0.5s ease 0s; right: 0px; border-bottom-left-radius: 36px; border-top-left-radius: 36px; box-shadow: rgba(0, 0, 0, 0.5) -1px 0px 2px; background-color: rgb(32, 33, 36);\"><div class=\"b5K9zd PFY4o OZ5bRd TBC9ub\" style=\"margin: auto 0px; bottom: 0px; top: 0px; background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAuCAYAAAAcEfjaAAABV0lEQVRIx+2VsW7CQBBEDwTpIkXICMuyJdtfQsGXQUVFlSpVmjTESOn4BAoXLigsueAvaM2MBAht7g6v06ZYwNK8893ezGLatjV5ni9QO2PMC599ZdI0nWdZdgbQ4vsH0NgLQLSn+FZ4/gY0cgJBELxCdHiEUF+AhlaAH9jWG0SleNOnDbr/iON4AlEloA9AAyvAiqIogPAooHcnwIJghqrFmTZOgJUkSQRRI6C1E7huL8GbTmJ7Ky2w/PuWVIcOw3Daua2qi1NZQ20+i723XnurA/QQ0aJTRJ8J/oEuAFvNqcjWPwV4ibzM66Weeck+8YhTUNhm7xIPaUAhPtCoVjGtLdxbMgK/zsCwMDRi5YrhsnaJcRQrHzkNrW1l0MXKNQeCy95rsXLDUeNK3EqsfOIQ8/0DLVWAeku9Du1rK6ehE1BfnNoavcwn7L3tZO9eARIRLW4RvQA0+6DNwTHW6QAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; height: 20px; width: 12px; filter: invert(1); background-position: 0px 0px; right: 8px; position: absolute !important;\"></div></g-right-button></div></g-scrolling-carousel><div class=\"aUSklf\" style=\"border-top: 1px solid rgb(60, 64, 67);\"><div class=\"rJSR9b\" style=\"display: flex;\"><div class=\"Dnzdlc HdAYZc\" id=\"nGEdZcqwKp3X1e8Pp-G8wAY__143\" style=\"display: flex; flex-basis: 0px; flex-direction: column; flex-grow: 1; min-width: 0px; margin-bottom: -12px;\"><div class=\"IJl0Z\" data-hveid=\"CFQQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhUEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://www.moneycontrol.com/news/business/economy/maruti-suzuki-receives-rs-2160-crore-draft-income-tax-assessement-order-11471291.html\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhUEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.moneycontrol.com/news/business/economy/maruti-suzuki-receives-rs-2160-crore-draft-income-tax-assessement-order-11471291.html&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhUEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"z1kUhe\" style=\"min-height: 308px; height: 308px; padding-right: calc(10px); position: relative;\"><div class=\"DwVq2e\" style=\"padding-top: 12px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(17, 17, 17); height: 172px; width: 316px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 172px; width: 316px;\"><img alt=\"\" id=\"dimg_19\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 172px; width: 316px; display: block;\"></div></div></div><div class=\"ZJjs0c\" style=\"padding-top: 12px; padding-bottom: 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_23\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAOVBMVEVHcExLn0VLpR07j2cAZqBVqiZDohEAZqAAZqAAYqT6/PkxhXfh7t3C3bp7uWbV58+Qw4CmzZpYqjnu2Fj3AAAACXRSTlMA////////7XbbktCDAAAAa0lEQVQYlWWPjQ6AIAiEEQXENK33f9iwXH/eBhvfBncARAm3JALE8FEE+QIBa6q9umwwoJ5Mzi+L0xMEImZGRhpAiXNOJTV8QFpraZlfYC/bOoH6rBATIt1HQ3f0zqz9ADpSXcGm6NNz//cPC5QFvEgLQ4sAAAAASUVORK5CYII=\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>Moneycontrol</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 2;\">Maruti Suzuki receives Rs 2,160 crore draft income tax assessment order</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 325.6px; margin: 0px; bottom: 12px;\">22 hours ago</div></div></div></a></div></div><div class=\"GOE2if\" style=\"border-left: 1px solid rgb(60, 64, 67); margin-top: 12px;\"></div><div class=\"Dnzdlc\" style=\"display: flex; flex-basis: 0px; flex-direction: column; flex-grow: 1; min-width: 0px;\"><div><div class=\"IJl0Z\" data-hveid=\"CGIQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhiEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://www.livemint.com/market/stock-market-news/maruti-suzuki-share-price-falls-over-2-on-rs-2-160-crore-draft-income-tax-assessment-notice-11696395565418.html\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhiEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.livemint.com/market/stock-market-news/maruti-suzuki-share-price-falls-over-2-on-rs-2-160-crore-draft-income-tax-assessment-notice-11696395565418.html&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhiEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"vJOb1e Pw4Ldf RsCEN gpFCcc\" style=\"display: flex; flex-direction: row-reverse; justify-content: space-between; min-height: 148px; height: 148px; padding-left: calc(10px);\"><div class=\"FAkayc\" style=\"display: flex; justify-content: center; margin: 12px 0px 12px 20px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(184, 191, 217); height: 92px; width: 92px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 92px; width: 92px;\"><img alt=\"\" id=\"dimg_43\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 92px; width: 92px; display: block;\"></div></div></div><div class=\"iRPxbe\" style=\"flex-grow: 1; width: 0px; position: relative; padding: 12px 0px 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_45\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAaVBMVEX////5nRz5lwD4lAD5nBn5oCP5nRv5lQD5mQD5nBr+9un8ypL6rEP5oyP8y5b6qjz6tFj7x4b8xo3948L+8t/8yoz80KL/+/H806H816j7wHn//vn7vXT+7Nr94sf8xIj82Lb+6tD6rk05CdZrAAAAl0lEQVQYlWVPCQ6DMAwzadoGSssxWBns/v8jFwQa0mbFSmwpigMoqtRY26QKO0Yj7ByLGTfdUrGD2lV3X61Op/tGvCctbVKYCsGfc54GXOYFV5GAmhvgdgfSghNxDVsK0D8AM6jh7GaE/jBqpsPwuhL8ExhewKQRIiU9a2O0SheVehYzMZelkplpXqO+f6L/Pwfk7f28zh+o8gcQlYzp8AAAAABJRU5ErkJggg==\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>Mint</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 3;\">Maruti Suzuki share price falls over 2% on ₹2,160 crore draft income tax assessment notice | Mint</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 203.6px; margin: 0px; bottom: 12px;\">7 hours ago</div></div></div></a></div><hr class=\"wULTne HsnFBf\" role=\"presentation\" style=\"border-top: 0px; border-bottom: 1px solid rgb(60, 64, 67); margin: 0px 0px 0px calc(10px);\"></div><div class=\"vu9Nlb HdAYZc\" style=\"margin-bottom: -12px; display: flex; flex-direction: column; flex-grow: 1;\"><div class=\"IJl0Z\" data-hveid=\"CF8QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhfEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://m.economictimes.com/industry/auto/auto-news/maruti-suzuki-hit-with-rs-2159-crore-income-tax-draft-assessment-order/articleshow/104136434.cms\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhfEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://m.economictimes.com/industry/auto/auto-news/maruti-suzuki-hit-with-rs-2159-crore-income-tax-draft-assessment-order/articleshow/104136434.cms&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhfEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"vJOb1e Pw4Ldf hPN2bc gpFCcc\" style=\"display: flex; flex-direction: row-reverse; justify-content: space-between; min-height: 159px; height: 159.2px; padding-left: calc(10px);\"><div class=\"FAkayc\" style=\"display: flex; justify-content: center; margin: 12px 0px 12px 20px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(161, 157, 149); height: 92px; width: 92px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 92px; width: 92px;\"><img alt=\"\" id=\"dimg_35\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 92px; width: 92px; display: block;\"></div></div></div><div class=\"iRPxbe\" style=\"flex-grow: 1; width: 0px; position: relative; padding: 12px 0px 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_39\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAOVBMVEXtGjvvPU3/9vjybnntEDXpAAHuJ0PtGjvsACvrAB3rABP1gYr4n6P93N/yYG75uL/+6Ov5sLHxT2L6Ws9pAAAAAXRSTlP2FDiPTwAAAG9JREFUGJV1ztkKQyEQA9Crzj7j9v8/W5VSqLR5PISQ57nD3/kJaiKKKihqC4BnbSVGb9Xn0NWQNlAwDHNCpw2lIjRgzQmAD+Q0XQ4wvxvtAmMi+oCWPTppjcoGoOheoqv3oDMK55iymMKf6xfceQFbTwY0Uy0kLAAAAABJRU5ErkJggg==\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>The Economic Times</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 3;\">Maruti Suzuki hit with Rs 2,159 crore Income Tax Draft Assessment Order</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 203.6px; margin: 0px; bottom: 12px;\">23 hours ago</div></div></div></a></div></div></div></div></div></div><div class=\"zMVEOd\" data-hveid=\"CF4QAA\" style=\"padding-bottom: 25px;\"><div><g-tray-header class=\"kno-fb-ctx\" aria-level=\"3\" role=\"heading\" style=\"display: block; padding: 0px 16px;\"><div class=\"N60dNb q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif;\"><div class=\"UG0mTe FpiMuf q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; margin-top: 0px; color: rgb(232, 234, 237); font-size: 18px; margin-bottom: 12px; margin-left: -16px; line-height: 24px;\">News about Education, Students</div></div></g-tray-header></div><div class=\"aUSklf\" style=\"border-top: 1px solid rgb(60, 64, 67);\"><div class=\"rJSR9b\" style=\"display: flex;\"><div class=\"MkXWrd nyRJQc\" style=\"display: flex; flex-basis: 0px; flex-direction: column; flex-grow: 1; min-width: 0px; margin-bottom: -12px;\"><div class=\"IJl0Z\" data-hveid=\"CFUQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhVEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://m.timesofindia.com/india/set-up-wellness-teams-pick-up-warning-signs-schools-told/articleshow/104141081.cms\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhVEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://m.timesofindia.com/india/set-up-wellness-teams-pick-up-warning-signs-schools-told/articleshow/104141081.cms&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhVEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"vJOb1e Pw4Ldf RsCEN akVW1d\" style=\"display: flex; flex-direction: row-reverse; justify-content: space-between; min-height: 148px; height: 148px; padding-right: calc(10px);\"><div class=\"FAkayc\" style=\"display: flex; justify-content: center; margin: 12px 0px 12px 20px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(22, 25, 30); height: 92px; width: 92px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 92px; width: 92px;\"><img alt=\"\" id=\"dimg_21\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 92px; width: 92px; display: block;\"></div></div></div><div class=\"iRPxbe\" style=\"flex-grow: 1; width: 0px; position: relative; padding: 12px 0px 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_25\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAZlBMVEXMAQDMAADNBgbKAADJAADLAADIAAD43t722trmmJf////llJTODw7VR0f21tbsr6/on5/uuLjdbWzUPj7xwcHQKSn+8/PQHx7dZ2bccXH65eXSJCTQFhbooqLji4vee3v76+vYVVUTPZcvAAAAhklEQVQYlY2O2w6DMAxDkzpJGd0obMC4lF3+/ydX4Im9bJYiR0dKbKKD2NFvwLw67b4BQKAMPouyGNOlir6O1lxvbYe2v9NgobChrgxjb8ELKU6F2FRD5zIFj/wjA5kWaFfyCigDwyPP87WdsIvFrLKM7yZp9ClHQ3IFqIL39Y/qBzlyX/oAugAFO4H++JIAAAAASUVORK5CYII=\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>The Times of India</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 3;\">Set up wellness teams, pick up warning signs, schools told</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 203.6px; margin: 0px; bottom: 12px;\">16 hours ago</div></div></div></a></div></div><div class=\"ez8jFf\" style=\"border-left: 1px solid rgb(60, 64, 67); margin-top: 12px;\"></div><div class=\"MkXWrd nyRJQc\" style=\"display: flex; flex-basis: 0px; flex-direction: column; flex-grow: 1; min-width: 0px; margin-bottom: -12px;\"><div class=\"IJl0Z\" data-hveid=\"CFsQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhbEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://www.thequint.com/news/india/education-ministry-draft-guidelines-schools-prevent-student-suicides\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhbEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.thequint.com/news/india/education-ministry-draft-guidelines-schools-prevent-student-suicides&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhbEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"vJOb1e Pw4Ldf RsCEN gpFCcc\" style=\"display: flex; flex-direction: row-reverse; justify-content: space-between; min-height: 148px; height: 148px; padding-left: calc(10px);\"><div class=\"FAkayc\" style=\"display: flex; justify-content: center; margin: 12px 0px 12px 20px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(110, 122, 145); height: 92px; width: 92px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 92px; width: 92px;\"><img alt=\"\" id=\"dimg_31\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 92px; width: 92px; display: block;\"></div></div></div><div class=\"iRPxbe\" style=\"flex-grow: 1; width: 0px; position: relative; padding: 12px 0px 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_33\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAnFBMVEX1uSb2uiX////3uyTztyfhpDePV6jVweLtsCzqrS3xtCemZnGmbpCrdY6vdoG0eG6/gFjZmjytbGOuhsXz7fjezunbyeatf6/HiE+fXXTRu9/q4O+hcrb18PecW3jm2ux/PpuFSKB2MZS8msmYV3u1dWHFqdaZZa+7ele7ms+XWISUWpyUUXvLi0efaaKwisbDg1GEQIipaGjVlkLIfUirAAAAnklEQVQYlVXO2RKCMAwF0CYUKAUXlgK2Isomorj+/785TEHhPp5JckMIIUAdxolhkDFgut5qvdn6dIIgjCIR20kKGuhOorL2mfIcLfxgY34sBCa+PsMrG9WpkFimf8isokRZTysNYnOOUbi6B1pLijxHdZmAtVXXXePw5o+9AJyx/v4Ifr8OBk+r4mQeWr9MmAPwd28sRsD5kGVgaP0CsIIJ40K7Hh8AAAAASUVORK5CYII=\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>The Quint</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 3;\">Education Ministry Issues Draft Guidelines for Schools To Curb Student Suicides</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 203.6px; margin: 0px; bottom: 12px;\">6 hours ago</div></div></div></a></div></div></div></div></div><div data-hveid=\"CGQQAA\"><div><g-tray-header class=\"kno-fb-ctx\" aria-level=\"3\" role=\"heading\" style=\"display: block; padding: 0px 16px;\"><div class=\"N60dNb q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif;\"><div class=\"UG0mTe FpiMuf q8U8x\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif-medium, sans-serif; margin-top: 0px; color: rgb(232, 234, 237); font-size: 18px; margin-bottom: 12px; margin-left: -16px; line-height: 24px;\">Also in the news</div></div></g-tray-header></div><div class=\"aUSklf\" style=\"border-top: 1px solid rgb(60, 64, 67);\"><div class=\"rJSR9b\" style=\"display: flex;\"><div class=\"MkXWrd nyRJQc\" style=\"display: flex; flex-basis: 0px; flex-direction: column; flex-grow: 1; min-width: 0px; margin-bottom: -12px;\"><div class=\"IJl0Z\" data-hveid=\"CFcQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhXEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://www.moneycontrol.com/news/business/ipo/vibhor-steel-tubes-files-draft-papers-with-sebi-to-raise-rs-66-47-crore-via-ipo-11476761.html\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhXEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.moneycontrol.com/news/business/ipo/vibhor-steel-tubes-files-draft-papers-with-sebi-to-raise-rs-66-47-crore-via-ipo-11476761.html&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhXEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"vJOb1e Pw4Ldf RsCEN akVW1d\" style=\"display: flex; flex-direction: row-reverse; justify-content: space-between; min-height: 148px; height: 148px; padding-right: calc(10px);\"><div class=\"FAkayc\" style=\"display: flex; justify-content: center; margin: 12px 0px 12px 20px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(17, 17, 17); height: 92px; width: 92px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 92px; width: 92px;\"><img alt=\"\" id=\"dimg_27\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 92px; width: 92px; display: block;\"></div></div></div><div class=\"iRPxbe\" style=\"flex-grow: 1; width: 0px; position: relative; padding: 12px 0px 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_29\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAOVBMVEVHcExLn0VLpR07j2cAZqBVqiZDohEAZqAAZqAAYqT6/PkxhXfh7t3C3bp7uWbV58+Qw4CmzZpYqjnu2Fj3AAAACXRSTlMA////////7XbbktCDAAAAa0lEQVQYlWWPjQ6AIAiEEQXENK33f9iwXH/eBhvfBncARAm3JALE8FEE+QIBa6q9umwwoJ5Mzi+L0xMEImZGRhpAiXNOJTV8QFpraZlfYC/bOoH6rBATIt1HQ3f0zqz9ADpSXcGm6NNz//cPC5QFvEgLQ4sAAAAASUVORK5CYII=\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>Moneycontrol</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 3;\">Vibhor Steel Tubes files draft papers with Sebi to raise Rs 66.47 crore via IPO</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 203.6px; margin: 0px; bottom: 12px;\">2 hours ago</div></div></div></a></div></div><div class=\"ez8jFf\" style=\"border-left: 1px solid rgb(60, 64, 67); margin-top: 12px;\"></div><div class=\"MkXWrd nyRJQc\" style=\"display: flex; flex-basis: 0px; flex-direction: column; flex-grow: 1; min-width: 0px; margin-bottom: -12px;\"><div class=\"IJl0Z\" data-hveid=\"CGAQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQu-MEKAB6BAhgEAA\" style=\"display: flex; flex-direction: column; flex-grow: 1;\"><a jsname=\"YKoRaf\" class=\"WlydOe\" href=\"https://www.timesofisrael.com/haredi-minister-warns-hell-quit-if-bill-for-draft-exemption-delayed/\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhgEAE\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.timesofisrael.com/haredi-minister-warns-hell-quit-if-bill-for-draft-exemption-delayed/&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQvOMEKAB6BAhgEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline-offset: -1px; display: flex; flex-direction: column; flex-grow: 1; outline: 0px;\"><div class=\"vJOb1e Pw4Ldf RsCEN gpFCcc\" style=\"display: flex; flex-direction: row-reverse; justify-content: space-between; min-height: 148px; height: 148px; padding-left: calc(10px);\"><div class=\"FAkayc\" style=\"display: flex; justify-content: center; margin: 12px 0px 12px 20px;\"><div class=\"YEMaTe JFSfwc\" style=\"overflow: hidden; position: relative; border-radius: 8px; background-color: rgb(16, 46, 102); height: 92px; width: 92px;\"><div class=\"uhHOwf BYbUcd\" style=\"overflow: hidden; position: relative; height: 92px; width: 92px;\"><img alt=\"\" id=\"dimg_37\" src=\"data:image/gif;base64,R0lGODlhAQABAIAAAP///////yH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" data-deferred=\"1\" data-atf=\"4\" style=\"filter: none; height: 92px; width: 92px; display: block;\"></div></div></div><div class=\"iRPxbe\" style=\"flex-grow: 1; width: 0px; position: relative; padding: 12px 0px 40px;\"><div class=\"MgUUmf NUnG9d\" style=\"color: rgb(189, 193, 198); font-size: 12px; line-height: 16px; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; margin-bottom: 8px;\"><g-img class=\"QyR1Ze ZGomKf\" style=\"display: inline-block; height: 16px; vertical-align: top; background-color: rgb(255, 255, 255); border-radius: 2px; overflow: hidden; margin-right: 8px;\"><img id=\"dimg_41\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAQlBMVEUOT5f////D1OXi6vKHp8tpkb6lvdjx9fnH1ufS3ux3nMVahriqwdrT3+w7cKtUgrUdWp6atdRgi7ssZaS8zuJKe7Gwg1orAAAAXElEQVQYla3POxLAIAgEUEBQRKPmd/+rBgurtG75ZmFmAXYknUjhwpxTDPVwIHMApIwxGC1oDqvxS2ER6YUHd7YJhNlII1b/oRM46U0xODykzWG8AvOExdhky5IPSq8ChkS/tSAAAAAASUVORK5CYII=\" data-deferred=\"2\" class=\"YQ4gaf zr758c\" height=\"16\" width=\"16\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; border-radius: 2px;\"></g-img>The Times of Israel</div><div class=\"n0jPhd ynAwRc tNxQIb nDgy9d\" aria-level=\"4\" role=\"heading\" style=\"font-size: 16px; line-height: 24px; display: -webkit-box; overflow: hidden; -webkit-box-orient: vertical; -webkit-line-clamp: 3;\">Haredi minister warns he’ll quit if bill for draft exemption delayed</div><div class=\"OSrXXb rbYSKb LfVVr\" style=\"overflow: hidden; text-overflow: ellipsis; color: rgb(154, 160, 166); left: 0px; line-height: 16px; position: absolute; width: 203.6px; margin: 0px; bottom: 12px;\">6 hours ago</div></div></div></a></div></div></div></div></div><div class=\"TOQyFc U48fD\" style=\"-webkit-tap-highlight-color: transparent; cursor: pointer; line-height: 18px; text-overflow: ellipsis; text-wrap: nowrap; padding: 16px 16px 0px; margin-top: 0px; position: relative;\"><a class=\"jRKCUd\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=draft&amp;tbm=nws&amp;source=univ&amp;tbo=u&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQt8YBKAB6BAhTEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><hr class=\"Bi9oQd\" aria-hidden=\"true\" style=\"border-top: 0px; margin: 18px 0px 0px; background-color: rgb(60, 64, 67); position: absolute; height: 1px; left: 0px; width: 652px;\"><div class=\"ZFiwCf\" style=\"display: flex; align-items: center; justify-content: center; position: relative; margin: 0px auto; width: 300px; max-width: 300px; height: 36px; border-radius: 18px; background-color: rgb(48, 49, 52);\"><span class=\"LGwnxb\" style=\"overflow: hidden; text-overflow: ellipsis; width: auto; padding-left: 0px; padding-right: 8px; max-width: 200px; color: rgb(232, 234, 237);\"><span style=\"overflow: hidden; text-overflow: ellipsis; width: auto;\">More news</span></span><span class=\"w2fKdd z1asCe lYxQe\" style=\"display: inline-block; fill: currentcolor; height: 20px; line-height: 20px; position: relative; width: 20px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 4l-1.41 1.41L16.17 11H4v2h12.17l-5.58 5.59L12 20l8-8z\"></path></svg></span></div></a></div></g-section-with-header></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHcQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh3EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CGoQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIahAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_mWc3D\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.dictionary.com/browse/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFgQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.dictionary.com/browse/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFgQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft Definition &amp; Meaning</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABHElEQVR4AWNgUO6+z6DS/X8gMNhuEGNAMS6JUQeMOoAUcP/xx//7Tzz6H1+27b+C/Ux6OwAT1E88Sl0HvP/0nWRHnL/26r+A0STqOOD+kw//C5r3/XeIXvE/oWz7/wnzz4CCHOQwQo6gahSALMWIYwPfBXgd0TDxKNXTACg04OoU7GfhVfv+4w9QVFDXAfPXXkZxACGQULZtQB0ASjMD64ANu27T2QGYiXfAHTDC04B/xga6OgC9FAWpGzgHxJdtHzgHrN8Nzn50dgAi5VNWGy4AWkKaAxBVd0HLPuo0yQIy14MSESEHgFpE4ODOb9kH8jX124QNk46CfIbsALo3SkHtAHi00N8BCAxqFYGy1nBqlo86QLlrwLrnILsBIthS4ofLBq4AAAAASUVORK5CYII=\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Dictionary.com</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.dictionary.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› browse › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2ac cECq7c;_;CpN2ag\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIWBAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIWBAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\">to draw or pull. to take or select by&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>, especially for military service. Masonry. to cut a&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;on.</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHMQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAhzEAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CDoQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIOhAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_JdfYff\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.collinsdictionary.com/dictionary/english/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECC8QAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.collinsdictionary.com/dictionary/english/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECC8QAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft definition and meaning | Collins English Dictionary</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAAAbFBMVEXGLyTFKR3DHArCDQDDFQDDGQPEJBfFJhnRZV/ntLL14N/89fT//Pv45+brwsDZgn3EHw/TbGb////67+7BAADjp6TWd3Lbi4fgmpfRYVvFKx/JPjXMTETEIhPpu7nuysjNU0vx0tHXe3bKRDuJJLQuAAAA00lEQVR4Aa2RRQKFMAxECykEd3e5/xlxt6+za198yF/EsACUAnD8CSEIoiQriqxqunFg1FStRTbsGIgrOkJHG/5cz/R87QDZoGeBwyIiF1qWvIFR3DMfxkfiukG6Qi7rWO7MoYaxYYT2iQVzvXzYMdkhl0r9Dpb0GhpB3/IGpsFDJq8/9Izih2kJqNs9SRRFx3Etfe6aJEl0TLV8B3tfhfG2h65W6RkOUP1oGSby6KSiXJiNTG6tkuGwDxSaMmXnHp7uz0HiVZ5QA8XLcyAiE5Hf1QJJeBIhbQVYvQAAAABJRU5ErkJggg==\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Collins Dictionary</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.collinsdictionary.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› dictionary › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2ZQ cECq7c;_;CpN2Zg\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQILxAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQILxAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\"><span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;in American English · 1. a drawing, sketch, or design · 2. a first or preliminary form of any writing, subject to revision, copying, etc. · 3. act of drawing&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CH4QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh-EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CEEQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIQRAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_cwhvH\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.britannica.com/dictionary/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECC4QAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.britannica.com/dictionary/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECC4QAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft Definition &amp; Meaning | Britannica Dictionary</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgBAMAAACBVGfHAAAALVBMVEUzZppBbZyGo8Z2nLyUrstokrdUg6xIcqKgt8+qwdm3zN7z+Pri6fLU3ezF1uNqFr8tAAABiklEQVR4AYWMA3AYQBAA92r3vrZt27Zt2x3Wtm3bthvbtq0xYw2zZ1I0JpsqXYe32JyVKKUBau0/cmT0YQU2UWsPyJHuW2es6jMJiu2h9DvQVTWGH+i8BOi3CeYugmJj7L/7NoJSH0Hq3xHE4VXQ955iyrkIWux9U2r9jBtz8y4b1u8BqsZ/lr6+BzyuPDHlf4VuLl4qdOHCSz+dks797BEbPj3tKHJ8w6AaTkcO7L8yfmSNz1cULR7muDjhyf5R+59rYvgegObfzdoHvXr1+cDzfQhIxHWtkXBqwPGW2rd/J2Ddu+2LZdWXp5Fq7HZ+VTaZNUN/LDL+YycRfzG8piKYt/MsQ8cer3Pqf/1BAFTxONTnfd0xa//veBIFQNVFiV2m+PcN79VOV4oAFP9Y9+7xGyu8at0F2KTUkHrX7Oda3NeaIKCKLDb+1wdXVxGyUYG2YxUQBFBQiW87Gc0eKYDS9rlC7hQQ4vtOKk0uqiB9j28i94dky/Xji1EQcpHCD1Aktyw01twdyQBfgnQkElSk4gAAAABJRU5ErkJggg==\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Britannica</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.britannica.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› dictionary › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2ZY cECq7c;_;CpN2Zo\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQILhAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQILhAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\"><span style=\"font-weight: bold; color: rgb(188, 192, 195);\">DRAFT</span>&nbsp;meaning: 1 : a version of something (such as a document) that you make before you make the final version; 2 : cool air moving in a closed space (such&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CH0QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh9EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CEMQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIQxAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_THmmXd\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.vocabulary.com/dictionary/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECDAQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.vocabulary.com/dictionary/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECDAQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft - Definition, Meaning &amp; Synonyms</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDSUUFRAWIB0iIiAdHx8kKDQsJCYxJycfLT0tPTU1Ljo6Iys/RD0sNzQtMjIBCgoKDQwNFQ8PGjclHyU1ODc1Ny0rLS83NzgsNTgvLS0xKys1OCs3LSstLTgrLS03Ky0tLSs3Ny0tKzc3LzUtLf/AABEIABwAHAMBEQACEQEDEQH/xAAYAAADAQEAAAAAAAAAAAAAAAACBAUDBv/EACUQAAICAQIFBQEAAAAAAAAAAAECAAMRBCEUQUJRYQUjMoHwEv/EABkBAAIDAQAAAAAAAAAAAAAAAAIDAAEEBf/EAB0RAQEBAQABBQAAAAAAAAAAAAEAEQISAyExQVH/2gAMAwEAAhEDEQA/AOprfpf6M5I3KGJllJRIbNLaKBeU9snAaU8ObU8ubLFd4GQZNLSbbUqDKpdgoLHAGe8cc65O8dcmn0dtHqPAXfIEYcc17wnhO/BieE68W09XsDWLp69q6RgDzL9V98Pqnqvvh9U0rvEZJyZsryCDHJOSr8fpr9DXqb3Ua+hDWQTvYOR/eZoe+XnyfknPfLz5PyUJLCTiw5J6jMm/tl39jK7yZXk04EczWXcCAwNg4EBgYq7D/ODg47yDQb//2Q==\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Vocabulary.com</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.vocabulary.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› dictionary › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2ZU cECq7c;_;CpN2Zs\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIMBAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIMBAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\"><span style=\"font-weight: bold; color: rgb(188, 192, 195);\">Draft</span>&nbsp;means to draw, both in the sense of sketching an image onto paper, but also in terms of pulling — a&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;horse draws a wagon, a&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;of air is drawn&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHQQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh0EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CGUQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIZRAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_EF0XOb\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://en.wikipedia.org/wiki/Draft_(sports)\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFwQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://en.wikipedia.org/wiki/Draft_(sports)&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFwQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft (sports)</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAAAAABXZoBIAAAAnklEQVR4AeTNIQiDQABG4b+u17X1aF6PK3YEO9iMJqPVau82y4FgMezS0oVLhqsHtrcqeqzDXv3CEz/6L4yTtZM3dnHmPTtjzXZAXKYVo4agkU2GI2Lloc6JDez1+flswMu1EQZ3xlE7lK8eKDkjtwE+crBMV+wesKmCiisGGepZIfQJpMj9SNb2MYWrChjVkULuCyCfRvsdmBieyQQAsoDk/9ryhFMAAAAASUVORK5CYII=\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Wikipedia</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://en.wikipedia.org<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› wiki › Draft_(sports)</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2as cECq7c;_;CpN2aw\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIXBAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIXBAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\">A&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;is a process used in some countries (especially in North America) and sports (especially in closed leagues) to allocate certain players to teams.</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHYQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh2EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CGwQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIbBAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_v5jQsf\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.ldoceonline.com/dictionary/draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFkQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.ldoceonline.com/dictionary/draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFkQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">draft</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAw0lEQVR4AWLABX48EwVUSoYgDMNAFPUwqJ6qV1XT8apexaup6Xo1L0a9GPEqXtWrelWvbn/wxEHokRYeKQn/3eVIEYeoYmRPa+dH8M/mRHtX+H57DaKK8v08MuEipi4Bkk2YqFdCh9jFSAcGK2sOBS60IDP2clc3VDdRxBtR4j8W0HYWs5iEweH250jgQzNDNCj+LJL4gBdUP5PoCk1FWL0sukKGJyTCyZ1NZ4Iklk6GRsCBxQRDpL0Cexu8/qwTsrD6D1EJx/DiEcIpAAAAAElFTkSuQmCC\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Longman Dictionary of Contemporary English Online</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.ldoceonline.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› dictionary › draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2aU cECq7c;_;CpN2ak\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIWRAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIWRAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\"><span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;· a document or piece of writing that has to be checked and possibly changed, and so is not yet in its finished form · → exposure&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>&nbsp;· → see also bank&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHUQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh1EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CGsQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIaxAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_F1xc3\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://www.globalnegotiator.com/international-trade/dictionary/draft/\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFoQAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://www.globalnegotiator.com/international-trade/dictionary/draft/&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECFoQAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">What is Draft? Definition and meaning</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAMAAABF0y+mAAABZVBMVEVHcEyVnpyxr6tnZWJvcXJhYWBwa2W3t7aal5atrq/v6dNYVlRdUUrvl0ZxV0xramjh4NjQ0M93d3WwqaRzcnHdomvul0o7QkqDgoCTkpFfXFigoJ/n5uXt6uikpKRdXFvDxcW4uLfPzs5fXFn76Nf9+PLumkz5zqmSbE7qkUcdNksXM0gAKEIRMkkDM0tKSEVgZ22QjInx9PX7+/p4eHePkpVra2rNzc0MLURSYGuAfXucnZ/Cw8M6UmRXanivs7c0SVpUSk3p6+unpaTW1NGep64qQlVCQD0bO1O7YTLOoYja2tl1gImBgH5aWlhiYl/XfknxjzLobQX/2LY/QU3S19m+RB37uo9KWmbtxafltZGyfmycfm8/V2mzkX8rM0T4m0PrfzKJh4TtkEDf4uT0rGyXXljQvbfynGaEh4igJCAAFTXYZx6BZE/b3uD67uTeayzy07eGPD3/6NKKYkj/9+haJyp5qgdtAAAAKnRSTlMABRVN/Y0a/f79DHH58/nOIpLFdWIt0uefxtG+X5bzK5DVSO3q05yh96AAxbseAAAB5ElEQVQoka3S51vaUBQHYJBgGA9YtWqn3Ss3e5OQASHsvZcMrVvRzr+/NwHaR2y/9ff1fc4d5xyP5z9k/eHT/X108/Vf6MUWE7CCaDwupTZXza8wxZiZzR7Yhdnn5LM7tsErmgwwDAOXRpLl2Oc73t+2JfKmQzB44IbjOPY4stRwRYwREAiSxDXpqAexV3swN2+5IqYdiZ6cjE6lao9l2f7R8jHlCo1nr3O5gYW2CoV8Mpmc1fKLyjflxHn+LNcUVBSVUikpVWj16+hL19YoMdWojsmuEAiiqm0H49JpfRB/5aKP4RrfcQzQjKBmcSf67QVqBF3c5hpDDUA8ZGzc+Q3ZvlCDluriu29DpOtgqSRdygCQuXZTs9SAi2/7GUSH2OUVwShq5tVVgsCFwBw/DKiKIGOYyfNK6Xw0qSdIDCDMYxdDHynKgJcRIoLw+ePpkIQt1g+3F02gKKsIS9MV5kunqvCwkyCmhFzb03RKbKVl3Gz9OPvajaWd4dCPXNuRD/RxxpjR6E2nPSbBfDrI/NBQNdpkrkedzrT9k5yPDZ66vuj77mRSq03rtw3WjhEyAQBh0kvzeN5HIrufos0SXCBDKOq0uLG2ukXhvUwmQ1GJxBPf/fVzdtPvD/vuVf2J99+0kl8G62esWLJ6DgAAAABJRU5ErkJggg==\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Globalnegotiator</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://www.globalnegotiator.com<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› Home › Dictionary</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2aY cECq7c;_;CpN2ao\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQIWhAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQIWhAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\">An unconditional order in writing, signed by a person (drawer) such as a buyer, and addressed to other person (drawee), typically a bank, ordering the drawee to&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic K7khPe\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHoQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQubsFKAB6BAh6EAA\" style=\"font-size: 14px; margin: 30px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div jscontroller=\"SC7lYd\" class=\"g Ww4FFb vt6azd tF2Cxc asEBEc\" lang=\"en\" jsaction=\"QyLbLe:OMITjf;ewaord:qsYrDe;xd28Mb:A6j43c\" data-hveid=\"CEIQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFSgAegQIQhAA\" style=\"line-height: 1.58; width: 600px; margin: 0px 0px 30px; position: relative; background-color: rgb(32, 33, 36); border-radius: 0px;\"><div class=\"N54PNb BToiNc cvP2Ce\" data-snc=\"ih6Jnb_fetD6d\" style=\"display: flex; -webkit-box-orient: vertical; -webkit-box-direction: normal; flex-direction: column; -webkit-box-pack: start; justify-content: start; position: relative; contain: layout paint; overflow: hidden;\"><div class=\"kb0PBd cvP2Ce jGGQ5e\" data-snf=\"x5WNvb\" data-snhf=\"0\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"yuRUbf\" style=\"font-size: small; line-height: 1.58;\"><span jscontroller=\"msmzHf\" jsaction=\"rcuQ6b:npT2md;PYDNKe:bLV6Bd;mLt3mc\"><a jsname=\"UWckNb\" href=\"https://en.wikipedia.org/wiki/Draft\" jscontroller=\"M9mgyc\" jsaction=\"rcuQ6b:npT2md\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECC0QAQ\" ping=\"/url?sa=t&amp;source=web&amp;rct=j&amp;opi=89978449&amp;url=https://en.wikipedia.org/wiki/Draft&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQFnoECC0QAQ\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); outline: 0px;\"><br><h3 class=\"LC20lb MBeuO DKV0Md\" style=\"margin: 18px 0px 3px; padding: 5px 0px 0px; font-size: 20px; line-height: 1.3; font-family: arial, sans-serif; display: inline-block;\">Draft</h3><div class=\"notranslate TbwUpd NJjxre iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; position: absolute; left: 0px; top: 0px; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd Vwoesf\" aria-hidden=\"true\" style=\"vertical-align: middle; margin-right: 0px; display: inline-block;\"><img class=\"XNo5Ab\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAcCAAAAABXZoBIAAAAnklEQVR4AeTNIQiDQABG4b+u17X1aF6PK3YEO9iMJqPVau82y4FgMezS0oVLhqsHtrcqeqzDXv3CEz/6L4yTtZM3dnHmPTtjzXZAXKYVo4agkU2GI2Lloc6JDez1+flswMu1EQZ3xlE7lK8eKDkjtwE+crBMV+wesKmCiisGGepZIfQJpMj9SNb2MYWrChjVkULuCyCfRvsdmBieyQQAsoDk/9ryhFMAAAAASUVORK5CYII=\" alt=\"\" data-atf=\"4\" data-frt=\"0\" style=\"filter: none; display: block; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px; text-wrap: nowrap;\">Wikipedia</span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; text-wrap: nowrap; line-height: 18px;\">https://en.wikipedia.org<span class=\"dyjrff ob9lvb\" role=\"text\">&nbsp;› wiki › Draft</span></cite></div></div></div></a></span><div class=\"B6fmyf byrV5b Mg1HEd\" style=\"position: absolute; top: 0px; height: auto; visibility: hidden; text-wrap: nowrap; -webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><div class=\"TbwUpd iUh30 ojE3Fb\" style=\"font-size: 12px; line-height: 1.3; padding: 0px; display: flex; text-size-adjust: none; align-items: center;\"><span class=\"H9lube\" style=\"background-color: rgb(255, 255, 255); border: 1px solid rgb(60, 64, 67); border-radius: 50%; display: inline-flex; justify-content: center; align-items: center; height: 26px; width: 26px; margin-right: 12px; vertical-align: middle;\"><div class=\"eqA2re NjwKYd\" style=\"margin-right: 0px; height: 18px; width: 18px;\"></div></span><div><span class=\"VuuXrf\" style=\"color: rgb(218, 220, 224); font-size: 14px; display: block; line-height: 20px;\"></span><div class=\"byrV5b\" style=\"-webkit-box-align: center; align-items: center; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-direction: row;\"><cite class=\"qLRx3b tjvcx GvPZzd cHaqb\" role=\"text\" style=\"color: rgb(189, 193, 198); font-style: normal; overflow: hidden; text-overflow: ellipsis; line-height: 18px;\"><span class=\"dyjrff ob9lvb\" role=\"text\"></span></cite></div></div></div><div class=\"csDOgf BCF2pd ezY6nb L48a4c\" style=\"display: inline; visibility: visible; margin-left: 8px; position: relative; height: 18px; margin-top: 16px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" data-movewtractions=\"true\" jsdata=\"l7Bhpb;_;CpN2ZM cECq7c;_;CpN2Zk\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQILRAJ\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-right: 12px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c mBswFe\" style=\"height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQILRAK\"></span></div></div></div></div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"1\" data-snf=\"nke7rc\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"VwiC3b yXK7lf lyLwlc yDYNvb W8l4ac lEBKkf\" style=\"padding-top: 0px; margin-bottom: 0px; display: -webkit-box; -webkit-box-orient: vertical; overflow: hidden; color: rgb(189, 193, 198); -webkit-line-clamp: 2;\">WWE&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">draft</span>, a World Wrestling Entertainment program which&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">drafts</span>&nbsp;superstars to different WWE brands; Draughts, board game, a.k.a. checkers; The&nbsp;<span style=\"font-weight: bold; color: rgb(188, 192, 195);\">Draft</span>&nbsp;(The&nbsp;...</div></div><div class=\"kb0PBd cvP2Ce\" data-sncf=\"2\" data-snf=\"mCCBcf\" style=\"contain: layout paint; overflow: hidden; flex: 0 0 auto;\"><div class=\"fG8Fp uo4vr\" style=\"color: rgb(154, 160, 166); line-height: 1.58;\"></div></div></div></div></div></div></div><div class=\"TzHB6b cLjAic\" jsdata=\"PhoHd;_;CpN2Y8\" data-hveid=\"CHsQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQxOIEKAB6BAh7EAA\" style=\"font-size: 14px; margin: 44px 0px;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div data-abe=\"\" data-hveid=\"CCwQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ26YDegQILBAA\"><div class=\"oIk2Cb\" style=\"margin: 0px;\"><div class=\"kfsfbe adDDi\" style=\"display: flex; position: relative; flex-wrap: wrap; padding: 0px 0px 8px; margin: 0px;\"><div class=\"T6zPgb YC72Wc\" style=\"min-width: 0px; max-width: calc(100% - 22px);\"><div aria-level=\"2\" role=\"heading\"><span class=\"mgAbYb OSrXXb RES9jf IFnjPb\" style=\"font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 22px; line-height: 28px; overflow: hidden; text-overflow: ellipsis; color: rgb(232, 234, 237); display: block; text-wrap: nowrap;\">Related searches</span></div></div><span class=\"YR2tRd\" style=\"position: relative; align-self: center; height: 22px;\"><div jscontroller=\"exgaYe\" data-bsextraheight=\"0\" data-darkmode=\"true\" data-isdesktop=\"true\" jsdata=\"l7Bhpb;_;CpN2ZI cECq7c;_;CpN2ZE\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ2esEegQILBAC\"><div jsaction=\"KyPa0e:RvIhPd;wjOG7e:edHC5b;al5F3e:edHC5b;\"><div role=\"button\" tabindex=\"0\" jsaction=\"RvIhPd\" jsname=\"I3kE2c\" class=\"iTPLzd rNSxBe lUn2nc eY4mx\" aria-label=\"About this result\" style=\"top: 0px; line-height: 16px; left: 0px; width: 28px; z-index: 1; padding-bottom: 20px; padding-left: 12px; padding-right: 5px; outline: 0px; position: absolute;\"><span jsname=\"czHhOd\" class=\"D6lY4c IjabWd\" style=\"margin-left: 2px; height: 22px; width: 22px; position: absolute; border-radius: 11px;\"><span jsname=\"Bil8Ae\" class=\"xTFaxe z1asCe\" jsportable=\"sass-ported\" style=\"display: inline-block; fill: currentcolor; height: 18px; line-height: 18px; position: relative; width: 18px; top: 2px; color: rgb(154, 160, 166);\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z\"></path></svg></span></span></div><span jsname=\"zOVa8\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh-4GegQILBAD\"></span></div></div></span></div><div class=\"y6Uyqe\" style=\"margin-left: -8px; margin-right: -8px; padding: 6px 0px 0px;\"><div class=\"EIaa9b\" style=\"display: flex;\"><div class=\"AJLUJb\" style=\"display: flex; flex: 1 1 0%; flex-direction: column;\"><div data-hveid=\"CEgQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+meaning+in+Hindi&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAhIEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>meaning in hindi</b></div></a></div><div data-hveid=\"CEQQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+wind&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAhEEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>wind</b></div></a></div><div data-hveid=\"CD8QAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+meaning+in+Urdu&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAg_EAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>meaning in urdu</b></div></a></div><div data-hveid=\"CDkQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+meaning+in+Tamil&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAg5EAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>meaning in tamil</b></div></a></div></div><div class=\"AJLUJb\" style=\"display: flex; flex: 1 1 0%; flex-direction: column;\"><div data-hveid=\"CDcQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Cold+draft+meaning&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAg3EAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\"><b>cold</b>&nbsp;draft&nbsp;<b>meaning</b></div></a></div><div data-hveid=\"CDUQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+full+form&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAg1EAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>full form</b></div></a></div><div data-hveid=\"CDQQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+message+meaning&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAg0EAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>message meaning</b></div></a></div><div data-hveid=\"CDMQAA\"><a class=\"k8XOCe R0xfCb VCOFK s8bAkb\" href=\"https://www.google.com/search?sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;q=Draft+military&amp;sa=X&amp;ved=2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQ1QJ6BAgzEAE\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: rgba(255, 255, 255, 0.1); padding: 0px 17px; margin: 4px 8px; align-items: center; background-color: rgb(48, 49, 52); border-radius: 100px; display: flex; max-height: none; min-height: 48px; position: relative; outline: 0px;\"><div class=\"aXBZVd unhzXb\" style=\"background-image: url(&quot;data:image/svg+xml,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\'%3E%3Cpath fill=\'rgba(255,255,255,.54)\' d=\'M20.49 19l-5.73-5.73C15.53 12.2 16 10.91 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.41 0 2.7-.47 3.77-1.24L19 20.49 20.49 19zM5 9.5C5 7.01 7.01 5 9.5 5S14 7.01 14 9.5 11.99 14 9.5 14 5 11.99 5 9.5z\'/%3E%3C/svg%3E&quot;); background-position: center center; background-repeat: no-repeat; background-size: 20px; height: 20px; padding: 10px; width: 20px; border-radius: 4px;\"></div><div class=\"s75CSd u60jwe r2fjmd AB4Wff\" style=\"margin: 0px 0px 0px 16px; -webkit-box-orient: vertical; color: rgb(189, 193, 198); display: -webkit-box; flex: 1 1 0%; font-size: 16px; -webkit-line-clamp: 2; max-width: 227px; overflow-wrap: break-word; overflow: hidden;\">draft&nbsp;<b>military</b></div></a></div></div></div></div></div></div></div></div></div><div class=\"yi8zHf\"></div></div></div></div><div><div class=\"C4clhf\" style=\"margin: 10px 0px 0px;\"><div jscontroller=\"ogmBcd\" jsname=\"BRTknd\" jsmodel=\"oWVrne\" class=\"sdjuGf\" jsdata=\"A7MAsf;_;CpN2YE\" jsaction=\"rcuQ6b:npT2md;Jl3rxb:VimORe;BqPbQ:p5vRo;Kf5VV:CYKeQe;lQkSke:fj32se;aLHH2d:XV6jYd;LYjNec:cyaZJ;QEvNdb:teMyNc;K6ldnc:vK2xWc;xHsTDe:PoQGh\"><div jscontroller=\"Gg40M\" jsaction=\"rcuQ6b:npT2md;yFBEId:dNTL7c;AnqxQb:dNTL7c;aLHH2d:yTpwFc\"><div jsname=\"TCyEnb\" aria-owns=\"rhs\"></div><div jsname=\"nZDdGd\" tabindex=\"0\" style=\"outline: 0px;\"></div></div><div jsname=\"sgxt2d\" data-graft-type=\"insert\" id=\"arc-srp_1\" data-jiis=\"up\" data-async-type=\"arc\" data-async-context-required=\"arc_id,q\" class=\"yp\" data-async-rclass=\"search\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQxK8CegQIFhAG\"></div><div jsname=\"GDPwke\" class=\"WtZO4e\"></div><div class=\"WZH4jc w7LJsc\" jscontroller=\"bpec7b\" data-dt=\"1\" jsaction=\"AnqxQb:eFvKib;q8sV4d:eFvKib;Rlvoif:eFvKib;yFBEId:eFvKib\" style=\"text-align: center; height: 45px; margin-bottom: 28px;\"><h1 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-family: arial, sans-serif; font-size: 14px; font-weight: 700; margin-top: 0px; margin-bottom: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Page Navigation</h1><a class=\"T7sFge sW9g3e VknLRd\" href=\"https://www.google.com/search?q=draft&amp;sca_esv=570661384&amp;sxsrf=AM9HkKnSOXuhVcSp5XUSGs56DanS-socCw:1696424348700&amp;ei=nGEdZcqwKp3X1e8Pp-G8wAY&amp;start=10&amp;sa=N\" jsname=\"oHxHid\" jsaction=\"qBEZuc\" aria-label=\"More results\" data-ve-view=\"\" role=\"button\" data-hveid=\"CBYQCA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQqq4CegQIFhAI\" style=\"color: rgb(138, 180, 248); -webkit-tap-highlight-color: transparent; display: block; pointer-events: none; outline: 0px; transform: scale(1);\"><hr class=\"KXbwLb\" aria-hidden=\"true\" style=\"border-top: 0px; margin: 18px 0px 0px; background-color: rgb(60, 64, 67); height: 1px; left: 0px; position: absolute; width: 652px;\"><h3 aria-hidden=\"true\" style=\"margin: 0px; padding: 0px; font-size: 20px; line-height: 1.3;\"><div class=\"GNJvt ipz2Oe\" style=\"display: flex; background: rgb(48, 49, 52); font-size: 14px; color: rgb(189, 193, 198); border-radius: 18px; height: 36px; line-height: 20px; border: 1px solid rgba(255, 255, 255, 0); padding: 7px 11px; margin: 0px auto; position: relative; cursor: pointer; pointer-events: auto; width: 300px; flex-direction: row-reverse; align-items: center; justify-content: center;\"><span class=\"kQdGHd\" style=\"color: rgb(154, 160, 166); left: 0px; position: relative;\"><span class=\"OTvAmd z1asCe QFl0Ff\" style=\"display: block; fill: currentcolor; height: 24px; line-height: 24px; position: relative; width: 24px;\"><svg focusable=\"false\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path d=\"M16.59 8.59L12 13.17 7.41 8.59 6 10l6 6 6-6z\"></path></svg></span></span><span class=\"RVQdVd\" style=\"line-height: 20px; margin-right: 8px;\">More results</span></div></h3></a></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div><div id=\"bottomads\"></div><div id=\"botstuff\"><div data-hveid=\"CAUQAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQCHoECAUQAA\"><div></div><div id=\"bres\"></div><div><div class=\"fp-nh save-components-async yp\" data-api=\"AIzaSyBs-GJEDqBAn0NiEv03nkWgCUTr2vlaVl0\" data-jiis=\"up\" data-async-type=\"svcps\" id=\"gws-plugins-collections-tray__save-components-async\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQnbUCKAB6BAgFEAE\"></div></div></div></div><div data-hveid=\"CAkQBw\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQh6kJegQICRAH\"></div><div role=\"navigation\"><span id=\"xjs\"></span><div id=\"gfn\"></div><span id=\"fvf\"></span></div></div><div class=\"TQc1id IVvPP Jb0Zif rhstc4\" jscontroller=\"cSX9Xe\" data-pws=\"1300\" data-spe=\"true\" jsaction=\"rcuQ6b:npT2md\" id=\"rhs\" jsdata=\"MdeVKb;_;CpN2W0\" role=\"complementary\" data-hveid=\"CAEQAA\" style=\"margin-left: var(--rhs-margin); flex: 0 1 auto; width: var(--rhs-width); position: relative; padding-bottom: 15px; transition: opacity 0.3s ease 0s;\"><h2 class=\"bNg8Rb OhScic zsYMMe BBwThe\" style=\"font-weight: 700; margin: 0px; padding: 0px; clip: rect(1px, 1px, 1px, 1px); height: 1px; overflow: hidden; position: absolute; text-wrap: nowrap; width: 1px; z-index: -1000; user-select: none;\">Complementary results</h2><div id=\"rhsads\"></div><div class=\"TzHB6b Hwkikb WY0eLb gyswkf LMRCfc jHARG\" jscontroller=\"nPaQu\" id=\"_nGEdZcqwKp3X1e8Pp-G8wAY_44\" role=\"complementary\" jsaction=\"rcuQ6b:npT2md;jQLCKe:VimORe;\" jsdata=\"PhoHd;_;CpN2Yg\" data-hveid=\"CB8QAA\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQy9oBKAB6BAgfEAA\" style=\"max-width: 372px; margin-top: 6px; margin-bottom: 0px; border-left: 1px solid rgb(60, 64, 67); margin-left: calc(-21px); padding-bottom: 20px; padding-left: 20px; width: 372px; opacity: 1;\"><div jsname=\"xQjRM\"><div class=\"sATSHe\"><div class=\"wDYxhc\" data-md=\"14\" style=\"clear: both;\"><div jscontroller=\"g3PTRd\" data-corpus=\"en\" data-dsk=\"true\" data-htror=\"true\" data-language=\"en\" data-query-term=\"draft\" data-robtew=\"true\" data-tae=\"true\" jsdata=\"VCUYVd;_;CpN2YI\" jsaction=\"rcuQ6b:npT2md;KEXcpd:koL3x;wUL9Q:bO4mad\"><div data-hveid=\"CBcQAA\"><div jsname=\"zvWiOe\" class=\"dob-modules yp\" data-async-fc=\"EswBCowBQUxPbnBZV1NGVkVZeHp3M28wazAxalREZDhVa0NKNWJBbFdWT0RGNXZfM1BKbUp1MmQ4SDhodWs4RjhsbkhBYkNHdzVPdG5DOGwyVmJoMEk4eWJrdURvTWxPclFhaTdzbzZsbEFzdTBkMWhyRVNlZWhHdjBvajVhRU83c09UeUE2bWdqcExSYWtBU1ISF25HRWRaY3F3S3AzWDFlOFBwLUc4d0FZGiJBSndrLThkYVpwcVkwR1h5NF9qV1htd1hoNTFOY0xoVV9R\" data-async-fcv=\"3\" data-async-ons=\"5493\" id=\"fc_1\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQg4MCegQIFxAB\"><div decode-data-ved=\"1\"><div class=\"dG2XIf ouUsKb\" style=\"box-shadow: none; background: rgb(32, 33, 36); border: none; border-radius: 8px; line-height: 1.58; margin: 6px 0px 0px;\"><div class=\"xpdopen\"><div jscontroller=\"pOAbs\" jsshadow=\"\" jsaction=\"rcuQ6b:npT2md;ASLTGc:ruyrc;uounjb:rMeJ7b\"><div class=\"lr_container mBNN3d\" style=\"padding-bottom: 0px;\"><div jsslot=\"\"><div jscontroller=\"HuszEb\" jsname=\"L4Nn5e\" class=\"vmod x9mNre vfaaGe\" data-nts=\"0\" data-tae=\"true\" jsaction=\"rcuQ6b:npT2md;wUL9Q:bO4mad\" data-hveid=\"CBcQAg\" style=\"padding-bottom: 0px; padding-top: 30px; position: relative;\"><span jsname=\"cU2a6\" class=\"nA7Li mfsgsd why2ib\" style=\"display: inline-block; padding-left: 0px; color: rgb(189, 193, 198); font-family: arial, sans-serif-light, sans-serif; font-size: 16px; line-height: 38px;\"><span class=\"pttFI Pqkn2e\" style=\"font-family: arial, sans-serif; line-height: 22px; margin-right: 12px;\">Translate to</span><span class=\"X61Xb\" style=\"border-radius: 0px 0px 2px 2px; display: inline-block; position: relative; vertical-align: middle;\"><select class=\"LiOdre mfsgsd pOf5Yd H5sZMe JBcDBe Ojt9we\" data-pref-link=\"/setprefs?sig=0_9XQT_AbAw5-nrEyLdEmDnQCz3q4%3D\" id=\"tl_select\" data-log-string=\"translations-language-select\" data-uti=\"1\" tabindex=\"0\" jsaction=\"trigger.wlttBf;change:trigger.KEXcpd\" data-ved=\"2ahUKEwjK7sSVudyBAxWda_UHHacwD2gQmp0CegQIFxAD\" style=\"font-family: arial, sans-serif-light, sans-serif; color: rgb(189, 193, 198); font-size: 14px; line-height: 20px; text-indent: 5px; appearance: none; background: url(&quot;https://www.gstatic.com/images/icons/material/system/1x/arrow_drop_down_grey600_18dp.png&quot;) 204px center no-repeat rgb(32, 33, 36); border-color: rgb(95, 99, 104); padding: 5px; overflow: hidden; width: 240px; border-radius: 8px; cursor: pointer; outline: 0px;\"><option value=\"\">Choose language</option><option value=\"af\">Afrikaans</option><option value=\"sq\">Albanian</option><option value=\"am\">Amharic</option><option value=\"ar\">Arabic</option><option value=\"hy\">Armenian</option><option value=\"az\">Azerbaijani</option><option value=\"bn\">Bangla</option><option value=\"eu\">Basque</option><option value=\"be\">Belarusian</option><option value=\"bs\">Bosnian</option><option value=\"bg\">Bulgarian</option><option value=\"my\">Burmese</option><option value=\"ca\">Catalan</option><option value=\"ceb\">Cebuano</option><option value=\"zh-CN\">Chinese (Simplified)</option><option value=\"zh-TW\">Chinese (Traditional)</option><option value=\"co\">Corsican</option><option value=\"hr\">Croatian</option><option value=\"cs\">Czech</option><option value=\"da\">Danish</option><option value=\"nl\">Dutch</option><option value=\"eo\">Esperanto</option><option value=\"et\">Estonian</option><option value=\"tl\">Filipino</option><option value=\"fi\">Finnish</option><option value=\"fr\">French</option><option value=\"gl\">Galician</option><option value=\"ka\">Georgian</option><option value=\"de\">German</option><option value=\"el\">Greek</option><option value=\"gu\">Gujarati</option><option value=\"ht\">Haitian Creole</option><option value=\"ha\">Hausa</option><option value=\"haw\">Hawaiian</option><option value=\"iw\">Hebrew</option><option value=\"hi\">Hindi</option><option value=\"hmn\">Hmong</option><option value=\"hu\">Hungarian</option><option value=\"is\">Icelandic</option><option value=\"ig\">Igbo</option><option value=\"id\">Indonesian</option><option value=\"ga\">Irish</option><option value=\"it\">Italian</option><option value=\"ja\">Japanese</option><option value=\"jv\">Javanese</option><option value=\"kn\">Kannada</option><option value=\"kk\">Kazakh</option><option value=\"km\">Khmer</option><option value=\"rw\">Kinyarwanda</option><option value=\"ko\">Korean</option><option value=\"ku\">Kurdish</option><option value=\"ky\">Kyrgyz</option><option value=\"lo\">Lao</option><option value=\"la\">Latin</option><option value=\"lv\">Latvian</option><option value=\"lt\">Lithuanian</option><option value=\"lb\">Luxembourgish</option><option value=\"mk\">Macedonian</option><option value=\"mg\">Malagasy</option><option value=\"ms\">Malay</option><option value=\"ml\">Malayalam</option><option value=\"mt\">Maltese</option><option value=\"mi\">Māori</option><option value=\"mr\">Marathi</option><option value=\"mn\">Mongolian</option><option value=\"ne\">Nepali</option><option value=\"no\">Norwegian</option><option value=\"ny\">Nyanja</option><option value=\"or\">Odia</option><option value=\"ps\">Pashto</option><option value=\"fa\">Persian</option><option value=\"pl\">Polish</option><option value=\"pt\">Portuguese</option><option value=\"pa\">Punjabi</option><option value=\"ro\">Romanian</option><option value=\"ru\">Russian</option><option value=\"sm\">Samoan</option><option value=\"gd\">Scottish Gaelic</option><option value=\"sr\">Serbian</option><option value=\"sn\">Shona</option><option value=\"sd\">Sindhi</option><option value=\"si\">Sinhala</option><option value=\"sk\">Slovak</option><option value=\"sl\">Slovenian</option><option value=\"so\">Somali</option><option value=\"st\">Southern Sotho</option><option value=\"es\">Spanish</option><option value=\"su\">Sundanese</option><option value=\"sw\">Swahili</option><option value=\"sv\">Swedish</option><option value=\"tg\">Tajik</option><option value=\"ta\">Tamil</option><option value=\"tt\">Tatar</option><option value=\"te\">Telugu</option><option value=\"th\">Thai</option><option value=\"tr\">Turkish</option><option value=\"tk\">Turkmen</option><option value=\"uk\">Ukrainian</option><option value=\"ur\">Urdu</option><option value=\"ug\">Uyghur</option><option value=\"uz\">Uzbek</option><option value=\"vi\">Vietnamese</option><option value=\"cy\">Welsh</option><option value=\"fy\">Western Frisian</option><option value=\"xh\">Xhosa</option><option value=\"yi\">Yiddish</option><option value=\"yo\">Yoruba</option><option value=\"zu\">Zulu</option></select></span></span></div><div><span jsname=\"cU2a6\" class=\"nA7Li mfsgsd why2ib\" style=\"display: inline-block; padding-left: 0px; color: rgb(189, 193, 198); font-family: arial, sans-serif-light, sans-serif; font-size: 16px; line-height: 38px;\"><span class=\"X61Xb\" style=\"border-radius: 0px 0px 2px 2px; display: inline-block; position: relative; vertical-align: middle;\"><br></span></span></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div>', '650885b2867dac511', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_article_knowledge_base_category`
--

CREATE TABLE `knowledge_base_article_knowledge_base_category` (
  `id` bigint(20) NOT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_category_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_article_portal`
--

CREATE TABLE `knowledge_base_article_portal` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `knowledge_base_article_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_category`
--

CREATE TABLE `knowledge_base_category` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knowledge_base_category_path`
--

CREATE TABLE `knowledge_base_category_path` (
  `id` int(11) NOT NULL,
  `ascendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descendor_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layout_record`
--

CREATE TABLE `layout_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layout_set`
--

CREATE TABLE `layout_set` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `layout_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'New',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount` double DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opportunity_amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_opportunity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lead`
--

INSERT INTO `lead` (`id`, `deleted`, `salutation_name`, `first_name`, `last_name`, `title`, `status`, `source`, `industry`, `opportunity_amount`, `website`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postal_code`, `do_not_call`, `description`, `converted_at`, `created_at`, `modified_at`, `account_name`, `middle_name`, `opportunity_amount_currency`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `campaign_id`, `created_account_id`, `created_contact_id`, `created_opportunity_id`) VALUES
('651d5d74a21e83f74', 0, 'Mr.', 'manager', 'gtpl', 'gtpl manager', 'New', 'Call', 'Biotechnology', 10000, 'manager@gtpl.com', 'bob it hub', 'baroda', 'gujarat', 'india', '391760', 0, 'gjfdcghvjkl;lkjhgfxd', NULL, '2023-10-04 12:41:24', '2023-10-16 15:34:29', 'manager account', NULL, 'INR', '650885b2867dac511', '650885b2867dac511', '650885b2867dac511', '651d5d5dc86a79893', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lead_capture`
--

CREATE TABLE `lead_capture` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `subscribe_contact_to_target_list` tinyint(1) NOT NULL DEFAULT 1,
  `field_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duplicate_check` tinyint(1) NOT NULL DEFAULT 1,
  `opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `opt_in_confirmation_lifetime` int(11) DEFAULT 48,
  `opt_in_confirmation_success_message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_lead_before_opt_in_confirmation` tinyint(1) NOT NULL DEFAULT 0,
  `skip_opt_in_confirmation_if_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Web Site',
  `api_key` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt_in_confirmation_email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_capture_log_record`
--

CREATE TABLE `lead_capture_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` int(10) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_created` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `lead_capture_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_meeting`
--

CREATE TABLE `lead_meeting` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lead_target_list`
--

CREATE TABLE `lead_target_list` (
  `id` bigint(20) NOT NULL,
  `lead_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_action`
--

CREATE TABLE `mass_action` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `processed_count` int(11) DEFAULT NULL,
  `notify_on_finish` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_email`
--

CREATE TABLE `mass_email` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `store_sent_emails` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out_entirely` tinyint(1) NOT NULL DEFAULT 0,
  `from_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `email_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inbound_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_email_target_list`
--

CREATE TABLE `mass_email_target_list` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mass_email_target_list_excluding`
--

CREATE TABLE `mass_email_target_list_excluding` (
  `id` bigint(20) NOT NULL,
  `mass_email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Planned',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `is_all_day` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `name`, `deleted`, `status`, `date_start`, `date_end`, `is_all_day`, `description`, `created_at`, `modified_at`, `date_start_date`, `date_end_date`, `parent_id`, `parent_type`, `account_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('651d5ef1cd0ab98b9', 'meeting 1', 0, 'Planned', '2023-10-05 12:45:00', '2023-10-05 13:45:00', 0, 'no co', '2023-10-04 12:47:45', '2023-10-04 12:47:45', NULL, NULL, '651d5299d98bb5e7a', 'Account', '651d5299d98bb5e7a', '650885b2867dac511', NULL, '650885b2867dac511');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_user`
--

CREATE TABLE `meeting_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeting_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'None',
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `meeting_user`
--

INSERT INTO `meeting_user` (`id`, `user_id`, `meeting_id`, `status`, `deleted`) VALUES
(1, '650885b2867dac511', '651d5ef1cd0ab98b9', 'Accepted', 0);

-- --------------------------------------------------------

--
-- Table structure for table `next_number`
--

CREATE TABLE `next_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `post` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Post',
  `target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` bigint(20) UNSIGNED NOT NULL,
  `is_global` tinyint(1) NOT NULL DEFAULT 0,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `super_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`id`, `deleted`, `post`, `data`, `type`, `target_type`, `number`, `is_global`, `is_internal`, `created_at`, `modified_at`, `parent_id`, `parent_type`, `related_id`, `related_type`, `created_by_id`, `modified_by_id`, `super_parent_id`, `super_parent_type`) VALUES
('651d529bcbd472959', 0, NULL, '{}', 'Create', NULL, 1, 0, 0, '2023-10-04 11:55:07', '2023-10-04 11:55:07', '651d5299d98bb5e7a', 'Account', NULL, NULL, '650885b2867dac511', NULL, NULL, NULL),
('651d5799b36d2a0e3', 0, NULL, '{}', 'Create', NULL, 2, 0, 0, '2023-10-04 12:16:25', '2023-10-04 12:16:25', '651d579971446a0c1', 'Contact', NULL, NULL, '650885b2867dac511', NULL, '651d5299d98bb5e7a', 'Account'),
('651d5d7504de3f1f6', 0, NULL, '{\"statusValue\":\"New\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 3, 0, 0, '2023-10-04 12:41:25', '2023-10-04 12:41:25', '651d5d74a21e83f74', 'Lead', NULL, NULL, '650885b2867dac511', NULL, NULL, NULL),
('651d5df2ced18b898', 0, NULL, '{\"statusValue\":\"Proposal\",\"statusField\":\"stage\",\"statusStyle\":\"primary\"}', 'Create', NULL, 4, 0, 0, '2023-10-04 12:43:30', '2023-10-04 12:43:30', '651d5df2a4e4ffaf7', 'Opportunity', NULL, NULL, '650885b2867dac511', NULL, '651d5299d98bb5e7a', 'Account'),
('651d5e435a8f9f4b8', 0, NULL, '{\"statusValue\":\"New\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 5, 0, 0, '2023-10-04 12:44:51', '2023-10-04 12:44:51', '651d5e434a82daa59', 'Case', NULL, NULL, '650885b2867dac511', NULL, NULL, NULL),
('651d5ef2328221c98', 0, NULL, '{\"assignedUserId\":\"650885b2867dac511\",\"assignedUserName\":\"Admin\",\"statusValue\":\"Planned\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 6, 0, 0, '2023-10-04 12:47:46', '2023-10-04 12:47:46', '651d5ef1cd0ab98b9', 'Meeting', NULL, NULL, '650885b2867dac511', NULL, '651d5299d98bb5e7a', 'Account'),
('651d5ef23eb06d5e7', 0, NULL, NULL, 'CreateRelated', NULL, 7, 0, 0, '2023-10-04 12:47:46', '2023-10-04 12:47:46', '651d5299d98bb5e7a', 'Account', '651d5ef1cd0ab98b9', 'Meeting', '650885b2867dac511', NULL, '651d5299d98bb5e7a', 'Account'),
('651d5f390c01d0dac', 0, NULL, NULL, 'Relate', NULL, 8, 0, 0, '2023-10-04 12:48:57', '2023-10-04 12:48:57', '651d5d74a21e83f74', 'Lead', '651d5f38d8bf9757a', 'Call', '650885b2867dac511', NULL, NULL, NULL),
('651d5f392118ae24e', 0, NULL, NULL, 'Relate', NULL, 9, 0, 0, '2023-10-04 12:48:57', '2023-10-04 12:48:57', '651d579971446a0c1', 'Contact', '651d5f38d8bf9757a', 'Call', '650885b2867dac511', NULL, NULL, NULL),
('651d5f3927ec8d2fa', 0, NULL, NULL, 'CreateRelated', NULL, 10, 0, 0, '2023-10-04 12:48:57', '2023-10-04 12:48:57', '651d5299d98bb5e7a', 'Account', '651d5f38d8bf9757a', 'Call', '650885b2867dac511', NULL, '651d5299d98bb5e7a', 'Account'),
('651d5fc66faceae2a', 0, NULL, '{\"assignedUserId\":\"650885b2867dac511\",\"assignedUserName\":\"Admin\",\"statusValue\":\"Not Started\",\"statusField\":\"status\",\"statusStyle\":\"default\"}', 'Create', NULL, 11, 0, 0, '2023-10-04 12:51:18', '2023-10-04 12:51:18', '651d5fc644ec989a6', 'Task', NULL, NULL, '650885b2867dac511', NULL, NULL, NULL),
('651d5fc67ceb9dcf1', 0, NULL, NULL, 'CreateRelated', NULL, 12, 0, 0, '2023-10-04 12:51:18', '2023-10-04 12:51:18', '651d5d74a21e83f74', 'Lead', '651d5fc644ec989a6', 'Task', '650885b2867dac511', NULL, NULL, NULL),
('652d580f687291501', 0, NULL, '{\"assignedUserId\":\"650885b2867dac511\",\"assignedUserName\":\"Admin\"}', 'Assign', NULL, 13, 0, 0, '2023-10-16 15:34:39', '2023-10-16 15:34:39', '651d5d74a21e83f74', 'Lead', NULL, NULL, '650885b2867dac511', NULL, NULL, NULL),
('652d5d7ecb33433f5', 0, 'My router was lost a internet', '{}', 'Post', 'self', 14, 0, 0, '2023-10-16 15:57:50', '2023-10-16 15:57:50', NULL, NULL, NULL, NULL, '651d6533729b9712e', NULL, NULL, NULL),
('652d5d9a70aee04fe', 0, 'Hyyy admin Please give my salary', '{}', 'Post', 'self', 15, 0, 0, '2023-10-16 15:58:18', '2023-10-16 15:58:18', NULL, NULL, NULL, NULL, '651d6533729b9712e', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `note_portal`
--

CREATE TABLE `note_portal` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_team`
--

CREATE TABLE `note_team` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_user`
--

CREATE TABLE `note_user` (
  `id` bigint(20) NOT NULL,
  `note_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `note_user`
--

INSERT INTO `note_user` (`id`, `note_id`, `user_id`, `deleted`) VALUES
(1, '651d5ef2328221c98', '650885b2867dac511', 0),
(2, '651d5ef23eb06d5e7', '650885b2867dac511', 0),
(3, '651d5f390c01d0dac', '650885b2867dac511', 0),
(4, '651d5f392118ae24e', '650885b2867dac511', 0),
(5, '651d5f3927ec8d2fa', '650885b2867dac511', 0),
(6, '651d5fc67ceb9dcf1', '650885b2867dac511', 0),
(7, '652d5d7ecb33433f5', '651d6533729b9712e', 0),
(8, '652d5d9a70aee04fe', '651d6533729b9712e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `email_is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `message` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opportunity`
--

CREATE TABLE `opportunity` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `amount` double DEFAULT NULL,
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Prospecting',
  `last_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  `lead_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `close_date` date DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `amount_currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `opportunity`
--

INSERT INTO `opportunity` (`id`, `name`, `deleted`, `amount`, `stage`, `last_stage`, `probability`, `lead_source`, `close_date`, `description`, `created_at`, `modified_at`, `amount_currency`, `account_id`, `contact_id`, `campaign_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`) VALUES
('651d5df2a4e4ffaf7', 'opportunity 1', 0, 10110, 'Proposal', 'Proposal', 50, 'Partner', '2023-10-05', 'mastsrer hgyrfy', '2023-10-04 12:43:30', '2023-10-04 12:43:30', 'INR', '651d5299d98bb5e7a', '651d579971446a0c1', NULL, '650885b2867dac511', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_change_request`
--

CREATE TABLE `password_change_request` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_number`
--

CREATE TABLE `phone_number` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numeric` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) NOT NULL DEFAULT 0,
  `opt_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phone_number`
--

INSERT INTO `phone_number` (`id`, `name`, `deleted`, `type`, `numeric`, `invalid`, `opt_out`) VALUES
('651d529b541df1dd3', '987654310', 0, 'Office', '987654310', 0, 0),
('651d57998cb773e82', '8974566513', 0, 'Mobile', '8974566513', 0, 0),
('651d5d74e5b63578d', '7894561230', 0, 'Mobile', '7894561230', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `portal`
--

CREATE TABLE `portal` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `custom_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tab_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quick_create_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_params` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` int(11) DEFAULT -1,
  `default_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_layout` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashlets_options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authentication_provider_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_portal_role`
--

CREATE TABLE `portal_portal_role` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_role`
--

CREATE TABLE `portal_role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_role_user`
--

CREATE TABLE `portal_role_user` (
  `id` bigint(20) NOT NULL,
  `portal_role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portal_user`
--

CREATE TABLE `portal_user` (
  `id` bigint(20) NOT NULL,
  `portal_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `data`) VALUES
('650885b2867dac511', '{\n    \"id\": \"650885b2867dac511\",\n    \"weekStart\": -1,\n    \"thousandSeparator\": \",\",\n    \"decimalMark\": \".\",\n    \"dashboardLayout\": [\n        {\n            \"name\": \"My Espo\",\n            \"layout\": [\n                {\n                    \"id\": \"d702633\",\n                    \"name\": \"Meetings\",\n                    \"x\": 0,\n                    \"y\": \"0\",\n                    \"width\": 2,\n                    \"height\": \"2\"\n                },\n                {\n                    \"id\": \"default-activities\",\n                    \"name\": \"Activities\",\n                    \"x\": 2,\n                    \"y\": \"0\",\n                    \"width\": 2,\n                    \"height\": \"4\"\n                },\n                {\n                    \"id\": \"d415980\",\n                    \"name\": \"Calls\",\n                    \"x\": 0,\n                    \"y\": \"2\",\n                    \"width\": 2,\n                    \"height\": \"2\"\n                },\n                {\n                    \"id\": \"d388213\",\n                    \"name\": \"Calendar\",\n                    \"x\": 2,\n                    \"y\": \"4\",\n                    \"width\": 2,\n                    \"height\": \"2\"\n                },\n                {\n                    \"id\": \"default-stream\",\n                    \"name\": \"Stream\",\n                    \"x\": 0,\n                    \"y\": \"4\",\n                    \"width\": 2,\n                    \"height\": \"4\"\n                }\n            ]\n        },\n        {\n            \"name\": \"gtpl\",\n            \"layout\": [\n                {\n                    \"id\": \"d948235\",\n                    \"name\": \"Calendar\",\n                    \"x\": 0,\n                    \"y\": \"0\",\n                    \"width\": 2,\n                    \"height\": \"2\"\n                }\n            ]\n        }\n    ],\n    \"dashletsOptions\": {\n        \"default-stream\": {\n            \"title\": \"Stream\",\n            \"autorefreshInterval\": 0.5,\n            \"displayRecords\": 5,\n            \"skipOwn\": false\n        },\n        \"default-activities\": {\n            \"title\": \"My Activities\",\n            \"autorefreshInterval\": 0.5,\n            \"enabledScopeList\": [\n                \"Meeting\",\n                \"Call\",\n                \"Task\"\n            ],\n            \"displayRecords\": 3,\n            \"futureDays\": 3\n        }\n    },\n    \"dashboardLocked\": false,\n    \"exportDelimiter\": \",\",\n    \"receiveAssignmentEmailNotifications\": true,\n    \"receiveMentionEmailNotifications\": true,\n    \"receiveStreamEmailNotifications\": true,\n    \"assignmentNotificationsIgnoreEntityTypeList\": [],\n    \"defaultReminders\": [],\n    \"useCustomTabList\": false,\n    \"emailReplyToAllByDefault\": true,\n    \"emailReplyForceHtml\": false,\n    \"doNotFillAssignedUserIfNotRequired\": true,\n    \"followEntityOnStreamPost\": true,\n    \"followCreatedEntities\": false,\n    \"followCreatedEntityTypeList\": [],\n    \"emailUseExternalClient\": false,\n    \"scopeColorsDisabled\": false,\n    \"tabColorsDisabled\": false,\n    \"textSearchStoringDisabled\": false\n}');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `remind_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `type` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Popup',
  `seconds` int(11) DEFAULT 0,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_submitted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assignment_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `user_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `portal_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `group_email_account_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `export_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `mass_update_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data_privacy_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `follower_management_permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'not-set',
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_team`
--

CREATE TABLE `role_team` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) NOT NULL,
  `role_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_job`
--

CREATE TABLE `scheduled_job` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Active',
  `scheduling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `is_internal` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `scheduled_job`
--

INSERT INTO `scheduled_job` (`id`, `name`, `deleted`, `job`, `status`, `scheduling`, `last_run`, `created_at`, `modified_at`, `is_internal`, `created_by_id`, `modified_by_id`) VALUES
('650885a3a985da8b4', 'Submit Popup Reminders', 0, 'SubmitPopupReminders', 'Active', '* * * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a3d0451031b', 'Process Job Group', 0, 'ProcessJobGroup', 'Active', '* * * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a3d3df6ec68', 'Process Job Queue q0', 0, 'ProcessJobQueueQ0', 'Active', '* * * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a3dacce1c79', 'Process Job Queue q1', 0, 'ProcessJobQueueQ1', 'Active', '*/1 * * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a3e29abf4ca', 'Process Job Queue e0', 0, 'ProcessJobQueueE0', 'Active', '* * * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a3e6c76b9b0', 'Dummy', 0, 'Dummy', 'Active', '1 */12 * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a3ed6f9b679', 'Check for New Version', 0, 'CheckNewVersion', 'Active', '15 5 * * *', NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', 1, NULL, NULL),
('650885a400827908f', 'Check for New Versions of Installed Extensions', 0, 'CheckNewExtensionVersion', 'Active', '25 5 * * *', NULL, '2023-09-18 17:15:16', '2023-09-18 17:15:16', 1, NULL, NULL),
('650885eeb6f4095e9', 'Check Group Email Accounts', 0, 'CheckInboundEmails', 'Active', '*/2 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eeb8545ab53', 'Check Personal Email Accounts', 0, 'CheckEmailAccounts', 'Active', '*/1 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eeb93f86585', 'Send Email Reminders', 0, 'SendEmailReminders', 'Active', '*/2 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eebca7883b4', 'Send Email Notifications', 0, 'SendEmailNotifications', 'Active', '*/2 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eec0490436a', 'Clean-up', 0, 'Cleanup', 'Active', '1 1 * * 0', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eec181af22b', 'Send Mass Emails', 0, 'ProcessMassEmail', 'Active', '15 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eec271e9336', 'Auth Token Control', 0, 'AuthTokenControl', 'Active', '*/6 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eec537dec40', 'Control Knowledge Base Article Status', 0, 'ControlKnowledgeBaseArticleStatus', 'Active', '10 1 * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL),
('650885eec83a3474d', 'Process Webhook Queue', 0, 'ProcessWebhookQueue', 'Active', '*/5 * * * *', NULL, '2023-09-18 17:16:30', '2023-09-18 17:16:30', 0, 'system', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_job_log_record`
--

CREATE TABLE `scheduled_job_log_record` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `execution_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `scheduled_job_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Archived',
  `date_sent` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `from_phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `replied_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_phone_number`
--

CREATE TABLE `sms_phone_number` (
  `id` bigint(20) NOT NULL,
  `sms_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` bigint(20) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `entity_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `deleted`, `entity_id`, `entity_type`, `user_id`) VALUES
(1, 0, '651d5ef1cd0ab98b9', 'Meeting', '650885b2867dac511'),
(2, 0, '651d5fc644ec989a6', 'Task', '650885b2867dac511'),
(3, 0, '651d5d74a21e83f74', 'Lead', '650885b2867dac511');

-- --------------------------------------------------------

--
-- Table structure for table `target`
--

CREATE TABLE `target` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_postal_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_not_call` tinyint(1) NOT NULL DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target_list`
--

CREATE TABLE `target_list` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `target_list_user`
--

CREATE TABLE `target_list_user` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_list_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opted_out` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Not Started',
  `priority` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Normal',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `date_start_date` date DEFAULT NULL,
  `date_end_date` date DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `parent_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `deleted`, `status`, `priority`, `date_start`, `date_end`, `date_start_date`, `date_end_date`, `date_completed`, `description`, `created_at`, `modified_at`, `parent_id`, `parent_type`, `account_id`, `contact_id`, `created_by_id`, `modified_by_id`, `assigned_user_id`, `email_id`) VALUES
('651d5fc644ec989a6', 'task1', 0, 'Not Started', 'Low', '2023-10-04 00:00:00', '2023-10-07 00:00:00', '2023-10-04', '2023-10-06', NULL, 'monivgh', '2023-10-04 12:51:18', '2023-10-04 12:51:18', '651d5d74a21e83f74', 'Lead', NULL, NULL, '650885b2867dac511', NULL, '650885b2867dac511', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `position_list` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `layout_set_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) NOT NULL,
  `team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_margin` double DEFAULT 10,
  `right_margin` double DEFAULT 10,
  `top_margin` double DEFAULT 10,
  `bottom_margin` double DEFAULT 20,
  `print_footer` tinyint(1) NOT NULL DEFAULT 0,
  `print_header` tinyint(1) NOT NULL DEFAULT 0,
  `footer_position` double DEFAULT 10,
  `header_position` double DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `page_orientation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Portrait',
  `page_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'A4',
  `page_width` double DEFAULT NULL,
  `page_height` double DEFAULT NULL,
  `font_face` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_code`
--

CREATE TABLE `two_factor_code` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempts_left` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unique_id`
--

CREATE TABLE `unique_id` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `terminate_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `password` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_method` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salutation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `delete_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `middle_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_team_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboard_template_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `deleted`, `user_name`, `type`, `password`, `auth_method`, `api_key`, `salutation_name`, `first_name`, `last_name`, `is_active`, `title`, `gender`, `created_at`, `modified_at`, `delete_id`, `middle_name`, `default_team_id`, `contact_id`, `avatar_id`, `created_by_id`, `dashboard_template_id`, `working_time_calendar_id`) VALUES
('650885b2867dac511', 0, 'admin', 'admin', 'DrUvL2VYVynv6nl9qGLQwVSZvdGhYpoQBpCCnBQ1Qlp5meWQzNMRQOLZK5vsuqUCgA4y6dTeOq2ttgIjKPOsv/', NULL, NULL, NULL, NULL, 'Admin', 1, NULL, NULL, '2023-09-18 17:15:30', '2023-10-16 15:53:40', '0', NULL, NULL, NULL, NULL, 'system', NULL, NULL),
('651d6533729b9712e', 0, 'user1', 'regular', 'Uh.47nk9irn2ct7l6px/SXr0RB9Rwro7BY6xZVPpJpN.7nvzDCZMnEHL4b6ZTTrga/KCsMZ7BuSp9lHmF/xlr.', NULL, NULL, 'Ms.', 'User', '1', 1, 'User account', 'Female', '2023-10-04 13:14:27', '2023-10-04 13:14:27', '0', NULL, NULL, NULL, NULL, '650885b2867dac511', NULL, '651d65124b00eb2b0'),
('system', 0, 'system', 'system', NULL, NULL, NULL, NULL, NULL, 'System', 1, NULL, NULL, '2023-09-18 17:15:15', '2023-09-18 17:15:15', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `imap_handlers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_handlers` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a` tinyint(1) NOT NULL DEFAULT 0,
  `auth2_f_a_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_totp_secret` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth2_f_a_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_working_time_range`
--

CREATE TABLE `user_working_time_range` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook`
--

CREATE TABLE `webhook` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `entity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `user_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_event_queue_item`
--

CREATE TABLE `webhook_event_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_processed` tinyint(1) NOT NULL DEFAULT 0,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webhook_queue_item`
--

CREATE TABLE `webhook_queue_item` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `number` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Pending',
  `processed_at` datetime DEFAULT NULL,
  `attempts` int(11) DEFAULT 0,
  `process_at` datetime DEFAULT NULL,
  `webhook_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_time_calendar`
--

CREATE TABLE `working_time_calendar` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday0` tinyint(1) NOT NULL DEFAULT 0,
  `weekday1` tinyint(1) NOT NULL DEFAULT 1,
  `weekday2` tinyint(1) NOT NULL DEFAULT 1,
  `weekday3` tinyint(1) NOT NULL DEFAULT 1,
  `weekday4` tinyint(1) NOT NULL DEFAULT 1,
  `weekday5` tinyint(1) NOT NULL DEFAULT 1,
  `weekday6` tinyint(1) NOT NULL DEFAULT 0,
  `weekday0_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday1_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday2_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday3_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday4_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday5_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weekday6_time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `working_time_calendar`
--

INSERT INTO `working_time_calendar` (`id`, `name`, `deleted`, `description`, `time_zone`, `time_ranges`, `weekday0`, `weekday1`, `weekday2`, `weekday3`, `weekday4`, `weekday5`, `weekday6`, `weekday0_time_ranges`, `weekday1_time_ranges`, `weekday2_time_ranges`, `weekday3_time_ranges`, `weekday4_time_ranges`, `weekday5_time_ranges`, `weekday6_time_ranges`, `created_at`, `modified_at`, `created_by_id`, `modified_by_id`) VALUES
('651d65124b00eb2b0', 'User1', 0, 'User 1 office time', NULL, '[[\"09:00\",\"17:00\"]]', 0, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-04 13:13:54', '2023-10-04 13:13:54', '650885b2867dac511', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `working_time_calendar_working_time_range`
--

CREATE TABLE `working_time_calendar_working_time_range` (
  `id` bigint(20) NOT NULL,
  `working_time_calendar_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time_range_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `working_time_range`
--

CREATE TABLE `working_time_range` (
  `id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `time_ranges` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Non-working',
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `created_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by_id` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_NAME` (`name`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `account_contact`
--
ALTER TABLE `account_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_CONTACT_ID` (`account_id`,`contact_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `account_document`
--
ALTER TABLE `account_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_DOCUMENT_ID` (`account_id`,`document_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Indexes for table `account_portal_user`
--
ALTER TABLE `account_portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_ACCOUNT_ID` (`user_id`,`account_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);

--
-- Indexes for table `account_target_list`
--
ALTER TABLE `account_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ACCOUNT_ID_TARGET_LIST_ID` (`account_id`,`target_list_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `action_history_record`
--
ALTER TABLE `action_history_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_type`,`target_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`),
  ADD KEY `IDX_AUTH_LOG_RECORD_ID` (`auth_log_record_id`);

--
-- Indexes for table `array_value`
--
ALTER TABLE `array_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_VALUE` (`entity_type`,`value`),
  ADD KEY `IDX_ENTITY_VALUE` (`entity_type`,`entity_id`,`value`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_type`,`parent_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_SOURCE` (`source_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `authentication_provider`
--
ALTER TABLE `authentication_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_log_record`
--
ALTER TABLE `auth_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_IP_ADDRESS` (`ip_address`),
  ADD KEY `IDX_IP_ADDRESS_REQUEST_TIME` (`ip_address`,`request_time`),
  ADD KEY `IDX_REQUEST_TIME` (`request_time`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_AUTH_TOKEN_ID` (`auth_token_id`);

--
-- Indexes for table `auth_token`
--
ALTER TABLE `auth_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TOKEN` (`token`,`deleted`),
  ADD KEY `IDX_HASH` (`hash`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Indexes for table `autofollow`
--
ALTER TABLE `autofollow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `call`
--
ALTER TABLE `call`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `call_contact`
--
ALTER TABLE `call_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_CONTACT_ID` (`call_id`,`contact_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `call_lead`
--
ALTER TABLE `call_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CALL_ID_LEAD_ID` (`call_id`,`lead_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Indexes for table `call_user`
--
ALTER TABLE `call_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_CALL_ID` (`user_id`,`call_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CALL_ID` (`call_id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CONTACTS_TEMPLATE_ID` (`contacts_template_id`),
  ADD KEY `IDX_LEADS_TEMPLATE_ID` (`leads_template_id`),
  ADD KEY `IDX_ACCOUNTS_TEMPLATE_ID` (`accounts_template_id`),
  ADD KEY `IDX_USERS_TEMPLATE_ID` (`users_template_id`);

--
-- Indexes for table `campaign_log_record`
--
ALTER TABLE `campaign_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ACTION_DATE` (`action_date`,`deleted`),
  ADD KEY `IDX_ACTION` (`action`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_OBJECT` (`object_id`,`object_type`),
  ADD KEY `IDX_QUEUE_ITEM_ID` (`queue_item_id`);

--
-- Indexes for table `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CAMPAIGN_ID_TARGET_LIST_ID` (`campaign_id`,`target_list_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `campaign_tracking_url`
--
ALTER TABLE `campaign_tracking_url`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `case`
--
ALTER TABLE `case`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `case_contact`
--
ALTER TABLE `case_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_CONTACT_ID` (`case_id`,`contact_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`);

--
-- Indexes for table `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CASE_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`case_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_CASE_ID` (`case_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `contact_document`
--
ALTER TABLE `contact_document`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_DOCUMENT_ID` (`contact_id`,`document_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`);

--
-- Indexes for table `contact_meeting`
--
ALTER TABLE `contact_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_MEETING_ID` (`contact_id`,`meeting_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Indexes for table `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_OPPORTUNITY_ID` (`contact_id`,`opportunity_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Indexes for table `contact_target_list`
--
ALTER TABLE `contact_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CONTACT_ID_TARGET_LIST_ID` (`contact_id`,`target_list_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_template`
--
ALTER TABLE `dashboard_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_FOLDER_ID` (`folder_id`);

--
-- Indexes for table `document_folder`
--
ALTER TABLE `document_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `document_folder_path`
--
ALTER TABLE `document_folder_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `document_lead`
--
ALTER TABLE `document_lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_LEAD_ID` (`document_id`,`lead_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`);

--
-- Indexes for table `document_opportunity`
--
ALTER TABLE `document_opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DOCUMENT_ID_OPPORTUNITY_ID` (`document_id`,`opportunity_id`),
  ADD KEY `IDX_DOCUMENT_ID` (`document_id`),
  ADD KEY `IDX_OPPORTUNITY_ID` (`opportunity_id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_MESSAGE_ID` (`message_id`),
  ADD KEY `IDX_ICS_EVENT_UID` (`ics_event_uid`),
  ADD KEY `IDX_FROM_EMAIL_ADDRESS_ID` (`from_email_address_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_SENT_BY_ID` (`sent_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`),
  ADD KEY `IDX_CREATED_EVENT` (`created_event_id`,`created_event_type`),
  ADD KEY `IDX_GROUP_FOLDER_ID` (`group_folder_id`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`);
ALTER TABLE `email` ADD FULLTEXT KEY `IDX_SYSTEM_FULL_TEXT_SEARCH` (`name`,`body_plain`,`body`);

--
-- Indexes for table `email_account`
--
ALTER TABLE `email_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_address`
--
ALTER TABLE `email_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LOWER` (`lower`);

--
-- Indexes for table `email_email_account`
--
ALTER TABLE `email_email_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ACCOUNT_ID` (`email_id`,`email_account_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ACCOUNT_ID` (`email_account_id`);

--
-- Indexes for table `email_email_address`
--
ALTER TABLE `email_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_EMAIL_ADDRESS_ID_ADDRESS_TYPE` (`email_id`,`email_address_id`,`address_type`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Indexes for table `email_filter`
--
ALTER TABLE `email_filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_EMAIL_FOLDER_ID` (`email_folder_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_folder`
--
ALTER TABLE `email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_INBOUND_EMAIL_ID` (`email_id`,`inbound_email_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`);

--
-- Indexes for table `email_queue_item`
--
ALTER TABLE `email_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CATEGORY_ID` (`category_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `email_template_category`
--
ALTER TABLE `email_template_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `email_user`
--
ALTER TABLE `email_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EMAIL_ID_USER_ID` (`email_id`,`user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `entity_email_address`
--
ALTER TABLE `entity_email_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_EMAIL_ADDRESS_ID_ENTITY_TYPE` (`entity_id`,`email_address_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_EMAIL_ADDRESS_ID` (`email_address_id`);

--
-- Indexes for table `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_PHONE_NUMBER_ID_ENTITY_TYPE` (`entity_id`,`phone_number_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Indexes for table `entity_team`
--
ALTER TABLE `entity_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_TEAM_ID_ENTITY_TYPE` (`entity_id`,`team_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `entity_user`
--
ALTER TABLE `entity_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ENTITY_ID_USER_ID_ENTITY_TYPE` (`entity_id`,`user_id`,`entity_type`),
  ADD KEY `IDX_ENTITY_ID` (`entity_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `export`
--
ALTER TABLE `export`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_ATTACHMENT` (`attachment_id`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LICENSE_STATUS` (`license_status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `external_account`
--
ALTER TABLE `external_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_email_folder`
--
ALTER TABLE `group_email_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_GROUP_EMAIL_FOLDER_ID_TEAM_ID` (`group_email_folder_id`,`team_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `import_entity`
--
ALTER TABLE `import_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_IMPORT` (`import_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_IMPORT` (`import_id`);

--
-- Indexes for table `import_error`
--
ALTER TABLE `import_error`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ROW_INDEX` (`row_index`),
  ADD KEY `IDX_IMPORT_ROW_INDEX` (`import_id`,`row_index`),
  ADD KEY `IDX_IMPORT_ID` (`import_id`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASSIGN_TO_USER_ID` (`assign_to_user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_REPLY_EMAIL_TEMPLATE_ID` (`reply_email_template_id`),
  ADD KEY `IDX_GROUP_EMAIL_FOLDER_ID` (`group_email_folder_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_INBOUND_EMAIL_ID_TEAM_ID` (`inbound_email_id`,`team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_EXECUTE_TIME` (`status`,`execute_time`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_STATUS_SCHEDULED_JOB_ID` (`status`,`scheduled_job_id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`);

--
-- Indexes for table `kanban_order`
--
ALTER TABLE `kanban_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_USER_ID` (`entity_type`,`entity_id`,`user_id`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`),
  ADD KEY `IDX_ENTITY_TYPE_USER_ID` (`entity_type`,`user_id`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `knowledge_base_article`
--
ALTER TABLE `knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_KNOWLEDGE_BASE_ARTICLE_ID_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_article_id`,`knowledge_base_category_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_CATEGORY_ID` (`knowledge_base_category_id`);

--
-- Indexes for table `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_KNOWLEDGE_BASE_ARTICLE_ID` (`portal_id`,`knowledge_base_article_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_KNOWLEDGE_BASE_ARTICLE_ID` (`knowledge_base_article_id`);

--
-- Indexes for table `knowledge_base_category`
--
ALTER TABLE `knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_PARENT_ID` (`parent_id`);

--
-- Indexes for table `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ASCENDOR_ID` (`ascendor_id`),
  ADD KEY `IDX_DESCENDOR_ID` (`descendor_id`);

--
-- Indexes for table `layout_record`
--
ALTER TABLE `layout_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME_LAYOUT_SET_ID` (`name`,`layout_set_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`);

--
-- Indexes for table `layout_set`
--
ALTER TABLE `layout_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead`
--
ALTER TABLE `lead`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STATUS` (`created_at`,`status`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_ACCOUNT_ID` (`created_account_id`),
  ADD KEY `IDX_CREATED_CONTACT_ID` (`created_contact_id`),
  ADD KEY `IDX_CREATED_OPPORTUNITY_ID` (`created_opportunity_id`);

--
-- Indexes for table `lead_capture`
--
ALTER TABLE `lead_capture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`),
  ADD KEY `IDX_OPT_IN_CONFIRMATION_EMAIL_TEMPLATE_ID` (`opt_in_confirmation_email_template_id`),
  ADD KEY `IDX_TARGET_TEAM_ID` (`target_team_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_LEAD_CAPTURE_ID` (`lead_capture_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `lead_meeting`
--
ALTER TABLE `lead_meeting`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_MEETING_ID` (`lead_id`,`meeting_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Indexes for table `lead_target_list`
--
ALTER TABLE `lead_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_LEAD_ID_TARGET_LIST_ID` (`lead_id`,`target_list_id`),
  ADD KEY `IDX_LEAD_ID` (`lead_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `mass_action`
--
ALTER TABLE `mass_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `mass_email`
--
ALTER TABLE `mass_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EMAIL_TEMPLATE_ID` (`email_template_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_INBOUND_EMAIL_ID` (`inbound_email_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_MASS_EMAIL_ID_TARGET_LIST_ID` (`mass_email_id`,`target_list_id`),
  ADD KEY `IDX_MASS_EMAIL_ID` (`mass_email_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `meeting_user`
--
ALTER TABLE `meeting_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_MEETING_ID` (`user_id`,`meeting_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_MEETING_ID` (`meeting_id`);

--
-- Indexes for table `next_number`
--
ALTER TABLE `next_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD_NAME` (`entity_type`,`field_name`),
  ADD KEY `IDX_ENTITY_TYPE` (`entity_type`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_PARENT_AND_SUPER_PARENT` (`parent_id`,`parent_type`,`super_parent_id`,`super_parent_type`),
  ADD KEY `IDX_CREATED_BY_NUMBER` (`created_by_id`,`number`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_SUPER_PARENT` (`super_parent_id`,`super_parent_type`);

--
-- Indexes for table `note_portal`
--
ALTER TABLE `note_portal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_PORTAL_ID` (`note_id`,`portal_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`);

--
-- Indexes for table `note_team`
--
ALTER TABLE `note_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_TEAM_ID` (`note_id`,`team_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `note_user`
--
ALTER TABLE `note_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NOTE_ID_USER_ID` (`note_id`,`user_id`),
  ADD KEY `IDX_NOTE_ID` (`note_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER` (`user_id`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_RELATED` (`related_id`,`related_type`),
  ADD KEY `IDX_RELATED_PARENT` (`related_parent_id`,`related_parent_type`);

--
-- Indexes for table `opportunity`
--
ALTER TABLE `opportunity`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CREATED_AT_ID` (`created_at`,`id`),
  ADD KEY `IDX_STAGE` (`stage`,`deleted`),
  ADD KEY `IDX_LAST_STAGE` (`last_stage`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_AT_STAGE` (`created_at`,`stage`),
  ADD KEY `IDX_ASSIGNED_USER_STAGE` (`assigned_user_id`,`stage`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CAMPAIGN_ID` (`campaign_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `password_change_request`
--
ALTER TABLE `password_change_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REQUEST_ID` (`request_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `phone_number`
--
ALTER TABLE `phone_number`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_NUMERIC` (`numeric`);

--
-- Indexes for table `portal`
--
ALTER TABLE `portal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CUSTOM_ID` (`custom_id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_AUTHENTICATION_PROVIDER_ID` (`authentication_provider_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`);

--
-- Indexes for table `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_PORTAL_ROLE_ID` (`portal_id`,`portal_role_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`);

--
-- Indexes for table `portal_role`
--
ALTER TABLE `portal_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_role_user`
--
ALTER TABLE `portal_role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ROLE_ID_USER_ID` (`portal_role_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ROLE_ID` (`portal_role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `portal_user`
--
ALTER TABLE `portal_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_PORTAL_ID_USER_ID` (`portal_id`,`user_id`),
  ADD KEY `IDX_PORTAL_ID` (`portal_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_REMIND_AT` (`remind_at`),
  ADD KEY `IDX_START_AT` (`start_at`),
  ADD KEY `IDX_TYPE` (`type`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_team`
--
ALTER TABLE `role_team`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_TEAM_ID` (`role_id`,`team_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_ROLE_ID_USER_ID` (`role_id`,`user_id`),
  ADD KEY `IDX_ROLE_ID` (`role_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `scheduled_job`
--
ALTER TABLE `scheduled_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `scheduled_job_log_record`
--
ALTER TABLE `scheduled_job_log_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_SCHEDULED_JOB_ID_EXECUTION_TIME` (`scheduled_job_id`,`execution_time`),
  ADD KEY `IDX_SCHEDULED_JOB_ID` (`scheduled_job_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_SENT` (`date_sent`,`deleted`),
  ADD KEY `IDX_DATE_SENT_STATUS` (`date_sent`,`status`,`deleted`),
  ADD KEY `IDX_FROM_PHONE_NUMBER_ID` (`from_phone_number_id`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_REPLIED_ID` (`replied_id`);

--
-- Indexes for table `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_SMS_ID_PHONE_NUMBER_ID_ADDRESS_TYPE` (`sms_id`,`phone_number_id`,`address_type`),
  ADD KEY `IDX_SMS_ID` (`sms_id`),
  ADD KEY `IDX_PHONE_NUMBER_ID` (`phone_number_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ENTITY` (`user_id`,`entity_id`,`entity_type`),
  ADD KEY `IDX_ENTITY` (`entity_id`,`entity_type`),
  ADD KEY `IDX_USER` (`user_id`);

--
-- Indexes for table `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FIRST_NAME` (`first_name`,`deleted`),
  ADD KEY `IDX_NAME` (`first_name`,`last_name`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `target_list`
--
ALTER TABLE `target_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`,`deleted`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`);

--
-- Indexes for table `target_list_user`
--
ALTER TABLE `target_list_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_TARGET_LIST_ID` (`user_id`,`target_list_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_TARGET_LIST_ID` (`target_list_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DATE_START_STATUS` (`date_start`,`status`),
  ADD KEY `IDX_DATE_END_STATUS` (`date_end`,`status`),
  ADD KEY `IDX_DATE_START` (`date_start`,`deleted`),
  ADD KEY `IDX_STATUS` (`status`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER` (`assigned_user_id`,`deleted`),
  ADD KEY `IDX_ASSIGNED_USER_STATUS` (`assigned_user_id`,`status`),
  ADD KEY `IDX_PARENT` (`parent_id`,`parent_type`),
  ADD KEY `IDX_ACCOUNT_ID` (`account_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`),
  ADD KEY `IDX_ASSIGNED_USER_ID` (`assigned_user_id`),
  ADD KEY `IDX_EMAIL_ID` (`email_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_LAYOUT_SET_ID` (`layout_set_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_TEAM_ID_USER_ID` (`team_id`,`user_id`),
  ADD KEY `IDX_TEAM_ID` (`team_id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `two_factor_code`
--
ALTER TABLE `two_factor_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_AT` (`created_at`),
  ADD KEY `IDX_USER_ID_METHOD` (`user_id`,`method`),
  ADD KEY `IDX_USER_ID_METHOD_IS_ACTIVE` (`user_id`,`method`,`is_active`),
  ADD KEY `IDX_USER_ID_METHOD_CREATED_AT` (`user_id`,`method`,`created_at`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `unique_id`
--
ALTER TABLE `unique_id`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_NAME` (`name`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_NAME_DELETE_ID` (`user_name`,`delete_id`),
  ADD KEY `IDX_USER_NAME` (`user_name`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_DEFAULT_TEAM_ID` (`default_team_id`),
  ADD KEY `IDX_CONTACT_ID` (`contact_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_DASHBOARD_TEMPLATE_ID` (`dashboard_template_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_USER_ID` (`user_id`);

--
-- Indexes for table `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_USER_ID_WORKING_TIME_RANGE_ID` (`user_id`,`working_time_range_id`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Indexes for table `webhook`
--
ALTER TABLE `webhook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EVENT` (`event`),
  ADD KEY `IDX_ENTITY_TYPE_TYPE` (`entity_type`,`type`),
  ADD KEY `IDX_ENTITY_TYPE_FIELD` (`entity_type`,`field`),
  ADD KEY `IDX_USER_ID` (`user_id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_NUMBER` (`number`),
  ADD KEY `IDX_WEBHOOK_ID` (`webhook_id`),
  ADD KEY `IDX_TARGET` (`target_id`,`target_type`);

--
-- Indexes for table `working_time_calendar`
--
ALTER TABLE `working_time_calendar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- Indexes for table `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_WORKING_TIME_CALENDAR_ID_WORKING_TIME_RANGE_ID` (`working_time_calendar_id`,`working_time_range_id`),
  ADD KEY `IDX_WORKING_TIME_CALENDAR_ID` (`working_time_calendar_id`),
  ADD KEY `IDX_WORKING_TIME_RANGE_ID` (`working_time_range_id`);

--
-- Indexes for table `working_time_range`
--
ALTER TABLE `working_time_range`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_TYPE_RANGE` (`type`,`date_start`,`date_end`),
  ADD KEY `IDX_TYPE` (`type`),
  ADD KEY `IDX_CREATED_BY_ID` (`created_by_id`),
  ADD KEY `IDX_MODIFIED_BY_ID` (`modified_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_contact`
--
ALTER TABLE `account_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `account_document`
--
ALTER TABLE `account_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_portal_user`
--
ALTER TABLE `account_portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_target_list`
--
ALTER TABLE `account_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `action_history_record`
--
ALTER TABLE `action_history_record`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `autofollow`
--
ALTER TABLE `autofollow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_contact`
--
ALTER TABLE `call_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `call_lead`
--
ALTER TABLE `call_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `call_user`
--
ALTER TABLE `call_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaign_target_list`
--
ALTER TABLE `campaign_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_target_list_excluding`
--
ALTER TABLE `campaign_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case`
--
ALTER TABLE `case`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `case_contact`
--
ALTER TABLE `case_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `case_knowledge_base_article`
--
ALTER TABLE `case_knowledge_base_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_document`
--
ALTER TABLE `contact_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_meeting`
--
ALTER TABLE `contact_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_opportunity`
--
ALTER TABLE `contact_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_target_list`
--
ALTER TABLE `contact_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_folder_path`
--
ALTER TABLE `document_folder_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_lead`
--
ALTER TABLE `document_lead`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `document_opportunity`
--
ALTER TABLE `document_opportunity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_email_account`
--
ALTER TABLE `email_email_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_email_address`
--
ALTER TABLE `email_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_inbound_email`
--
ALTER TABLE `email_inbound_email`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_template_category_path`
--
ALTER TABLE `email_template_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_user`
--
ALTER TABLE `email_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `entity_email_address`
--
ALTER TABLE `entity_email_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `entity_phone_number`
--
ALTER TABLE `entity_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entity_team`
--
ALTER TABLE `entity_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entity_user`
--
ALTER TABLE `entity_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_email_folder_team`
--
ALTER TABLE `group_email_folder_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_entity`
--
ALTER TABLE `import_entity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inbound_email_team`
--
ALTER TABLE `inbound_email_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `knowledge_base_article_knowledge_base_category`
--
ALTER TABLE `knowledge_base_article_knowledge_base_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_article_portal`
--
ALTER TABLE `knowledge_base_article_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `knowledge_base_category_path`
--
ALTER TABLE `knowledge_base_category_path`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_capture_log_record`
--
ALTER TABLE `lead_capture_log_record`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_meeting`
--
ALTER TABLE `lead_meeting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_target_list`
--
ALTER TABLE `lead_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mass_email_target_list`
--
ALTER TABLE `mass_email_target_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mass_email_target_list_excluding`
--
ALTER TABLE `mass_email_target_list_excluding`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_user`
--
ALTER TABLE `meeting_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `note_portal`
--
ALTER TABLE `note_portal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_team`
--
ALTER TABLE `note_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_user`
--
ALTER TABLE `note_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_portal_role`
--
ALTER TABLE `portal_portal_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_role_user`
--
ALTER TABLE `portal_role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_user`
--
ALTER TABLE `portal_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_team`
--
ALTER TABLE `role_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_phone_number`
--
ALTER TABLE `sms_phone_number`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `target_list_user`
--
ALTER TABLE `target_list_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_working_time_range`
--
ALTER TABLE `user_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_event_queue_item`
--
ALTER TABLE `webhook_event_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_queue_item`
--
ALTER TABLE `webhook_queue_item`
  MODIFY `number` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `working_time_calendar_working_time_range`
--
ALTER TABLE `working_time_calendar_working_time_range`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
