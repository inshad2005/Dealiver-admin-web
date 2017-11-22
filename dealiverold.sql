-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2017 at 07:14 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dealiverold`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `created_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-09-21 07:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `decoded_password` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '''0=inactive''&''1=active''',
  `remember_token` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `works_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `username`, `password`, `email`, `user_email`, `image`, `decoded_password`, `status`, `remember_token`, `created`, `updated`, `works_image`) VALUES
(1, 'Kavita', 'k', 'admin', 'sha1$6ce1fff2$1$f9a7bf117b49f7a7ceae60186255d616a5da9422', 'admin@dealiver.com', 'promatics.tajinder@gmail.com', 'i40io1or.jpg', '1234567', '1', 'w3lmbyO2dRrjr0PKlEtyY17bXqyoHOCpbACRJYpkipnCs3fXe6xj5OBHwFlW', '2017-05-26 00:00:00', '2017-05-24 18:30:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `created`, `status`) VALUES
(1, 'fgjfhfh', 'fg@gmail.com', 'dfd', 'sdfd', '2017-09-20 12:53:43', 'Inactive'),
(2, 'hfg fghfh', 'fg@gmail.com', 'dhruu', 'chhfhff', '2017-09-20 12:58:21', 'Inactive'),
(3, 'Chandan Goyal', 'goyalchandan5@gmail.com', 'bdeh', 'ehhwh', '2017-09-21 11:44:37', 'Inactive'),
(4, 'Gopal', 'a@mailinator.com', 'aaaaaaaaaaaaaa', 'hey there', '2017-09-22 04:16:48', 'Inactive'),
(5, 'Kavita k', 'promatics.kavita@gmail.com', 'send reply', 'hey there', '2017-09-22 04:51:05', 'Inactive'),
(6, 'aa aa', 'b@mailinator.com', 'hhff', 'ggff\njj', '2017-09-22 05:07:23', 'Inactive'),
(7, 'aa aa', 'b@mailinator.com', 'xcv', 'Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.', '2017-09-22 05:11:36', 'Inactive'),
(8, 'Romil Sharma', 'uk@mailinator.com', 'hello', 'Dffgddd', '2017-09-26 13:41:55', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deal_title` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `attached_file` varchar(500) DEFAULT NULL,
  `attached_image` varchar(500) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `user_id`, `deal_title`, `price`, `address`, `latitude`, `longitude`, `description`, `attached_file`, `attached_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '8', 3453, 'Ludhiana', '', NULL, 'svdsfsd', NULL, NULL, 'active', '2017-09-23 10:06:36', '2017-09-23 10:06:36'),
(2, 1, '8', 3453, 'Ludhiana', '', NULL, 'svdsfsd', 'thumbs_up_hand_symbol.png', NULL, 'active', '2017-09-23 10:12:40', '2017-09-23 10:12:40'),
(3, 1, '8', 3453, 'Ludhiana', '', NULL, 'svdsfsd', 'thumbs_up_hand_symbol.png', 'translation.png', 'active', '2017-09-23 10:13:09', '2017-09-23 10:13:09'),
(4, 1, '8', 3453, 'Ludhiana', '', NULL, 'svdsfsd', NULL, 'translation.png', 'active', '2017-09-23 10:13:27', '2017-09-23 10:13:27'),
(5, 28, '8', 5959, 'DDA Flats, Doctor Ambedkar Nagar, New Delhi, Delhi, India', '56.7507203', '-2.9753168', 'degwggw', NULL, NULL, 'active', '2017-09-25 10:08:28', '2017-09-25 10:08:28'),
(6, 28, '8', 123, 'Ludhiana Bus Stand, Mullanpur Dakha, Punjab, India', '30.9377785', '75.8780969', 'hrrgh', NULL, NULL, 'active', '2017-09-25 10:18:50', '2017-09-25 10:18:50'),
(7, 1, '8', 3453, 'Ludhiana', NULL, NULL, 'svdsfsd', 'Insightuk iOS Apk 230917.pdf', NULL, 'active', '2017-09-25 10:20:55', '2017-09-25 10:20:55'),
(8, 1, '8', 3453, 'Ludhiana', NULL, NULL, 'svdsfsd', 'Insightuk iOS Apk 230917.pdf', 'translation.png', 'active', '2017-09-25 10:21:07', '2017-09-25 10:21:07'),
(9, 1, '8', 3453, 'Ludhiana', NULL, NULL, 'svdsfsd', 'Insightuk iOS Apk 230917.pdf', NULL, 'active', '2017-09-25 10:21:28', '2017-09-25 10:21:28'),
(10, 28, '8', 4949, 'SGS Société Générale de Surveillance SA - Gambia, Banjul, The Gambia', '13.4530556', '-16.5775', 'svvseh', NULL, 'IMG-20170923-WA0000.jpg', 'active', '2017-09-25 10:23:09', '2017-09-25 10:23:09'),
(11, 28, '8', 4959, 'SGS College - WISE Campus, New Road, Stoke Gifford, United Kingdom', '51.512327', '-2.555179', 'svswg', NULL, 'IMG-20170922-WA0000.jpg', 'active', '2017-09-25 10:40:55', '2017-09-25 10:40:55'),
(12, 1, '8', 3453, 'Ludhiana', NULL, NULL, 'svdsfsd', NULL, NULL, 'active', '2017-09-25 10:44:39', '2017-09-25 10:44:39'),
(13, 28, '8', 4959, 'DD8, United Kingdom', '56.7507203', '-2.9753168', 'bedbdb', NULL, 'IMG-20170922-WA0000.jpg', 'active', '2017-09-25 11:11:49', '2017-09-25 11:11:49'),
(14, 1, '8', 3453, 'Ludhiana', NULL, NULL, 'svdsfsd', 'InsightukQuery.pdf', NULL, 'active', '2017-09-25 11:14:47', '2017-09-25 11:14:47'),
(15, 1, '8', 3453, 'Ludhiana', NULL, NULL, 'svdsfsd', 'InsightukQuery.pdf', NULL, 'active', '2017-09-25 12:19:56', '2017-09-25 12:19:56'),
(16, 1, '8', 3453, 'Ludhiana', '30.2', '70.8', 'svdsfsd', 'InsightukQuery.pdf', NULL, 'active', '2017-09-25 12:20:24', '2017-09-25 12:20:24'),
(17, 1, '8', 3453, 'Ludhiana', '30.2', '70.8', 'svdsfsd', 'InsightukQuery.pdf', NULL, 'active', '2017-09-25 12:20:38', '2017-09-25 12:20:38'),
(18, 1, '8', 3453, 'Ludhiana', '30.2', '70.8', 'svdsfsd', 'InsightukQuery.pdf', NULL, 'active', '2017-09-25 12:20:43', '2017-09-25 12:20:43'),
(19, 28, '8', 565649, 'DDDN Pizza Noth Vancouver, Capilano Road, North Vancouver, BC, Canada', '36.3670891', '127.3606362', 'shdnsbsbsb', '2017-05-25 123455.pdf', NULL, 'active', '2017-09-25 12:43:48', '2017-09-25 12:43:48'),
(20, 28, '8', 49, 'Food@SBS, Herbert Street, Artarmon, New South Wales, Australia', '51.5143133', '-2.6656125', 'sbbssvav', '2017-05-25 123455.pdf', 'IMG-20170925-WA0000.jpg', 'active', '2017-09-25 12:47:30', '2017-09-25 12:47:30'),
(21, 28, '8', 888, 'Qesm Marsa Alam, Red Sea Governorate, Egypt', '28.7622002', '34.0641419', 'fnnfdbdbb', '2017-05-25 123455.pdf', NULL, 'active', '2017-09-26 05:25:45', '2017-09-26 05:25:45'),
(22, 28, '8', 88, 'Sveavägen, Stockholm, Sweden', '44.2887995', '8.265058', 'twhehwwh', 'Invoice_3754751696.pdf', NULL, 'active', '2017-09-26 06:31:39', '2017-09-26 06:31:39'),
(23, 28, '8', 5949, 'Zvartnots Cathedral, Vagharshapat, Armavir Province, Armenia', '40.1872678', '-75.4705997', 'gsgwwv', NULL, 'IMG-20170925-WA0000.jpg', 'active', '2017-09-26 09:15:57', '2017-09-26 09:15:57'),
(24, 28, '8', 7979, 'Qwa-Qwa, Free State, South Africa', '48.9254954', '2.3287101', 'nddndndb', '2017-05-25 123455.pdf', 'IMG-20170926-WA0001.jpg', 'active', '2017-09-26 09:45:35', '2017-09-26 09:45:35'),
(25, 3, '6', 1231321, 'Ludhiana, Punjab, India', '0.0', '0.0', 'Assad', 'Lavi Motwal Updated resume.docx', 'image.jpg', 'active', '2017-09-26 10:22:52', '2017-09-26 10:22:52'),
(26, 28, '8', 120, 'Ludhiana Jn, Ludhiana, Punjab, India', '30.9377785', '75.8780969', 'Good', 'What-is-GST.pdf', 'IMG-20170625-WA0002.jpg', 'active', '2017-09-26 10:56:26', '2017-09-26 10:56:26'),
(27, 36, '8', 80, 'Ludhiana, Punjab, India', '30.9117241', '75.8536659', 'No', 'IMG_0011.PNG', 'image.jpg', 'active', '2017-09-26 13:35:18', '2017-09-26 13:35:18'),
(28, 36, '8', 80, 'Ludhiana, Punjab, India', '30.9117241', '75.8536659', 'No', 'IMG_0011.PNG', 'image.jpg', 'active', '2017-09-26 13:35:40', '2017-09-26 13:35:40'),
(29, 36, '8', 80, 'Ludhiana, Punjab, India', '30.9117241', '75.8536659', 'No', 'IMG_0011.PNG', 'image.jpg', 'active', '2017-09-26 13:36:55', '2017-09-26 13:36:55'),
(30, 1, 'zdfsdfz', 3453, 'Ludhiana', '30.2', '70.8', 'svdsfsd', NULL, NULL, 'active', '2017-09-27 06:37:06', '2017-09-27 06:37:06'),
(31, 40, 'Hello buddy', 1230, 'Ludhiana, Punjab, India', '30.9377785', '75.8780969', 'ahhsehhjh', NULL, 'IMG-20170927-WA0000.jpg', 'active', '2017-09-27 09:11:48', '2017-09-27 09:11:48'),
(32, 28, 'Don', 1200, 'Germiston, Gauteng, South Africa', '48.13518089999999', '11.3690889', 'dbshwbw', 'Invoice_3754751696.pdf', 'IMG-20170923-WA0000.jpg', 'active', '2017-09-27 09:15:19', '2017-09-27 09:15:19'),
(33, 41, 'Rent House', 1000, 'Ludhiana, Punjab, India', '30.9117241', '75.8536659', 'Lorem ipsum is simply dummy', 'Lavi Motwal Updated resume.docx', 'image.jpg', 'active', '2017-09-28 08:42:24', '2017-09-28 08:42:24'),
(34, 51, 'dummy', 100, 'Ludhiana, Punjab, India', '30.90924759999999', '75.8834425', 'djdoxbdlfbdkdn', 'Solera 2 Multipager 1 & 2 BHK _ (210mm x 297mm)_21-06-2017.pdf', NULL, 'active', '2017-10-26 05:45:51', '2017-10-26 05:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `deals_comments`
--

CREATE TABLE `deals_comments` (
  `id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user who comment',
  `comment` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deals_comments`
--

INSERT INTO `deals_comments` (`id`, `deal_id`, `user_id`, `comment`, `status`, `created_at`) VALUES
(1, 5, 1, 'NYC ONE !!!', 'active', '2017-09-26 09:11:42'),
(2, 6, 1, 'Awesome blossem', 'active', '2017-09-26 09:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`) VALUES
(1, 'status?', 'As You See', 'active', '2017-09-11 13:04:41'),
(2, 'Policies', 'Given in separate document', 'active', '2017-09-11 13:05:07'),
(6, 'xc', 'cssc', 'inactive', '2017-09-14 09:54:08'),
(8, 'list', '<ul>\r\n<li>vcdhbcdncmc</li>\r\n<li>nbvcnsc</li>\r\n<li>bcnbcsn</li>\r\n<li>nscmsc</li>\r\n</ul>', 'active', '2017-09-15 05:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `gcm_devices`
--

CREATE TABLE `gcm_devices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device_id` varchar(500) NOT NULL,
  `device_token` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prefrences_lists`
--

CREATE TABLE `prefrences_lists` (
  `id` int(11) NOT NULL,
  `pref_name` varchar(255) NOT NULL,
  `pref_image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prefrences_lists`
--

INSERT INTO `prefrences_lists` (`id`, `pref_name`, `pref_image`, `status`, `created_at`) VALUES
(6, 'test', '1501246630_74113.png', 'active', '2017-09-15 07:10:36'),
(7, 'Food', '1506083818_99060.jpg', 'active', '2017-09-19 09:19:59'),
(8, 'chinese food', '1501312683_60885.jpg', 'active', '2017-09-19 11:49:24'),
(9, 'Fast Food', '1506150031_77707.jpg', 'active', '2017-09-23 07:00:31'),
(10, 'cricket', '1506150106_28955.jpg', 'inactive', '2017-09-23 07:01:08'),
(11, 'test', '1501246630_74113.png', 'active', '2017-09-15 07:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `linkedin_id` varchar(500) DEFAULT NULL,
  `google_plus_id` varchar(500) DEFAULT NULL,
  `prefrence_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  `decoded_password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `address` varchar(255) DEFAULT NULL,
  `short_description` text,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `linkedin_id`, `google_plus_id`, `prefrence_id`, `user_type`, `first_name`, `last_name`, `email`, `password`, `decoded_password`, `phone_no`, `image`, `address`, `short_description`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '', 6, 'investor', 'dfd', 'fddf', 'promatics.subodhkumar@gmail.com', 'sha1$fa1773c1$1$ee2a052998cdb52e92f0efd5b27cea2bb45cfec3', 'password', '4354', 'three_circling_arrows.png', 'Ludhiana', 'gfhfh', 'active', '2017-09-09 09:21:25', '2017-09-09 09:21:25'),
(2, NULL, '', 6, 'investor', 'a', 'a', 'a@mailinator.com', 'sha1$4ca5c718$1$b02eaffec76f53764e42d764427891472462e72e', '000000', '12313213', 'no_image.jpg', NULL, NULL, 'active', '2017-09-13 07:32:02', '2017-09-13 07:32:02'),
(3, NULL, '', 6, 'investor', 'Gopal', 'krishan', 'b@mailinator.com', 'sha1$04a83f44$1$8b24f80c66f67944423f1730f8a14f3970d73c5c', '123456', '1321321', 'image.jpg', 'Ludhiana Ludhiana ludhiana', 'Lorem ipsum is simply dummy', 'active', '2017-09-13 09:06:05', '2017-09-13 09:06:05'),
(4, NULL, '', 6, 'investor', 'aa', 'aa', 'c@mailinator.com', 'sha1$14456b6c$1$0dec12c394cef7265960c03752438e952fd45bac', '123456', '1231312', 'no_image.jpg', NULL, NULL, 'active', '2017-09-13 09:10:56', '2017-09-13 09:10:56'),
(5, NULL, '', 6, 'investor', 'raj', 'kush', 'aa@aa.com', 'sha1$f9750b6e$1$8c88ed56005b8b7627e2d20d1d357939358bb2c6', '2313', '9513578246', 'no_image.jpg', 'punjab', NULL, 'active', '2017-09-13 09:12:20', '2017-09-13 09:12:20'),
(6, NULL, '', 6, 'investor', 'as', 'aa', 'aa@aaa..com', 'sha1$3e42fb92$1$e3e88e33ea301d7a00f05708cf1e3076cf754d92', 'aaa', 'aa', 'no_image.jpg', NULL, NULL, 'active', '2017-09-13 09:13:37', '2017-09-13 09:13:37'),
(8, NULL, '', 6, 'investor', 'hfg', 'fghfh', 'fg@gmail.com', 'sha1$2a3446c7$1$77d793a3ccc8d1f7e6f54a80fa21f42e43b53d31', 'qwerty', '452354252', 'no_image.jpg', NULL, NULL, 'active', '2017-09-18 04:53:09', '2017-09-18 04:53:09'),
(9, NULL, '', 6, 'investor', 'hfg', 'fghfh', 'afg@gmail.com', 'sha1$046a59df$1$1e8b54ede4c171f2825c805ed7d5a752e45bb16c', '123456', '452354252', 'no_image.jpg', NULL, NULL, 'active', '2017-09-18 05:19:21', '2017-09-18 05:19:21'),
(10, NULL, '', 6, 'agent', 'sbdbdb', 'sbsb', 'xbsv@gmail.com', 'sha1$75dc1708$1$538445399500ebcc441e25dc837404681f73e7b5', 'fnfndn', '595955949', 'no_image.jpg', NULL, NULL, 'active', '2017-09-18 05:52:28', '2017-09-18 05:52:28'),
(11, NULL, '', 6, 'investor', 'romil', 'sharma', 'romil@mailinator.com', 'sha1$488c08d5$1$a14e8109b0346fdae46619b15ee257e8998ded01', '123456', '9646558831', 'no_image.jpg', NULL, NULL, 'inactive', '2017-09-19 12:30:27', '2017-09-19 12:30:27'),
(12, NULL, '', 6, 'investor', 'abcd', 'abcd', 'rml@mailinator.com', 'sha1$0c87c335$1$c21b20ea23a0eee9ac38cd5123b82c73e4be0118', '123456', '9898999989', 'no_image.jpg', NULL, NULL, 'active', '2017-09-19 12:40:39', '2017-09-19 12:40:39'),
(13, NULL, '', 6, 'investor', 'ancd', 'abcd', 'abc@mailinator.com', 'sha1$a116680a$1$320b8340c15d8eff19d8f3ea3140a3b61a88421a', '1234567', '123456789', 'no_image.jpg', NULL, NULL, 'active', '2017-09-19 12:50:45', '2017-09-19 12:50:45'),
(14, NULL, '', 6, 'investor', 'aa', 'aaa', 'as@mailinator.com', 'sha1$f08555b6$1$8503e6f1786228cb4567d5351fe9d68cd2572c64', '123456', '1321654', 'no_image.jpg', NULL, NULL, 'active', '2017-09-19 13:02:13', '2017-09-19 13:02:13'),
(15, NULL, '', 6, 'investor', 'a', 'a', 'aa@mailinator.com', 'sha1$43614ea4$1$44217830ae324b42a3c974af2ee8606d0ada8528', '123456', '2124254', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 04:17:16', '2017-09-20 04:17:16'),
(16, NULL, '', 6, 'agent', 'Dharmendra', 'Vishwakrma', 'promatics.dharmendra@gmail.com', 'sha1$2d73b52f$1$c3a2effb3113d2876b10018bf5f7026873e178d6', '000000', '9898987458', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:19:10', '2017-09-20 12:19:10'),
(17, NULL, '', 6, 'investor', 'aaaa', 'bbbb', 'ab@mailinator.com', 'sha1$00e911d3$1$92bd47601b669e3e26c464da106d26c8bd7f8210', '000000', '7898513694', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:22:20', '2017-09-20 12:22:20'),
(18, NULL, '', 6, 'investor', 'ggg', 'huu', 'ty@mailinator.com', 'sha1$bb1d52a3$1$cbeb447e428f6ab90ea60a56e544f7df150210e9', '000000', '3654289632', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:23:28', '2017-09-20 12:23:28'),
(19, NULL, '', 6, 'investor', 'eeee', 'e', 'e@mailinator.com', 'sha1$9ecf5169$1$96823d04ef57d20482000dc6c6ea2421e0a2ea60', 'e', 'we', 'no_image.jpg', NULL, NULL, 'inactive', '2017-09-20 12:26:08', '2017-09-20 12:26:08'),
(20, NULL, '', 6, 'investor', 'eee', 'ffff', 'r@mailinator.com', 'sha1$2e746692$1$2c2840c5e2c70fe1d408007e7a07aa9a8b1ba530', '000000', '4444', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:29:05', '2017-09-20 12:29:05'),
(21, NULL, '', 6, 'investor', 'rrrrr', 'ggg', 'y@mailinator.com', 'sha1$f65dcb48$1$7645c7fb57733f3e2cce3443208975d838bcfa98', '000000', '111', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:39:27', '2017-09-20 12:39:27'),
(22, NULL, '', 6, 'investor', 'Rgggg', 'Uuuuu', 'p@mailinator.com', 'sha1$f9cd5e2a$1$ecd3ffea065063bd1807ef0c2c271c1e6e0a6ad7', '000000', '0206523953', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:50:24', '2017-09-20 12:50:24'),
(23, NULL, '', 6, 'investor', 'Aaaa', 'ssss', 'o@mailinator.com', 'sha1$0eee780b$1$542a112ef3092f91f61882ee5dc837dca574b059', '000000', '3422456787', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 12:51:47', '2017-09-20 12:51:47'),
(24, NULL, '', 6, 'investor', 'rf', 'ff', 'u@mailinator.com', 'sha1$9c444f0b$1$4f71e99a9620fd91023971e3f53a8d1cb8581680', '000000', '555', 'no_image.jpg', NULL, NULL, 'active', '2017-09-20 13:01:33', '2017-09-20 13:01:33'),
(25, '3453fgds', '', 6, 'investor', 'sdf', 'sdfsdf', 'sdfd@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-09-21 06:05:27', '2017-09-21 06:05:27'),
(26, NULL, '3453fgdhgg567', 6, 'investor', 'sdf', 'sdfsdf', 'sdfdhh@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-09-21 06:15:11', '2017-09-21 06:15:11'),
(27, NULL, '3453fgdhgg567i', 6, 'investor', 'dfd', 'fddf', 'sdfidhh@gmail.com', NULL, NULL, '', 'no_image.jpg', 'Ludhiana', 'sdsdss', 'active', '2017-09-21 06:58:16', '2017-09-21 06:58:16'),
(29, NULL, '107955028872929582385', 6, 'investor', 'Device', 'Promatics', 'promatics.device@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-09-21 13:31:59', '2017-09-21 13:31:59'),
(31, NULL, '', 6, 'investor', 'Gil', 'Siso', 'gili.siso@gmail.com', 'sha1$3f92b10b$1$dac3754232f7fa910612907c17445f65fc5d9a4e', '1234567', '0545414334', 'no_image.jpg', NULL, NULL, 'active', '2017-09-23 10:19:57', '2017-09-23 10:19:57'),
(32, 'etVbnqQzk7', '', 6, 'investor', 'Subodh', 'Kumar', 'subodh.jethi95@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-09-23 12:50:43', '2017-09-23 12:50:43'),
(33, 'TxPZQhcNs2', '', 6, 'investor', 'Dharmendra', 'Vishwakrma', 'dharmendravishwakrma53@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-09-23 12:52:39', '2017-09-23 12:52:39'),
(34, NULL, '', 6, 'investor', 'eyal', 'hilel', 'eyalhl@gmail.com', 'sha1$c724d133$1$6a309213f750e917eb4f3e4f72e70603368a3f67', '123456', '0524442565', 'no_image.jpg', NULL, NULL, 'active', '2017-09-25 10:33:27', '2017-09-25 10:33:27'),
(35, NULL, '', 6, 'investor', 'Romil', 'Sharma', 'shrma@mailinator.com', 'sha1$9c19ae26$1$0137a732fd0084aa4550a06aab4c0b685dbeb34d', '123456', '9646558831', 'no_image.jpg', NULL, NULL, 'active', '2017-09-26 13:09:28', '2017-09-26 13:09:28'),
(36, NULL, '', 6, 'investor', 'Romil', 'Sharma', 'uk@mailinator.com', 'sha1$da1cb124$1$887d8784511c49b8add05013d5ce446bbaef5346', '1234567', '9646558823', 'image.jpg', 'Ludhiana Jn, Ludhiana, Punjab, India', 'Hello romil here', 'active', '2017-09-26 13:12:47', '2017-09-26 13:12:47'),
(37, NULL, '', 6, 'investor', 'Romil', 'Sharma', 'promatics.romil@gmail.com', 'sha1$ab648398$1$72aef23beea786d900c6a0584d02eceaffc8f5bb', '123456', '9646558813', 'no_image.jpg', NULL, NULL, 'active', '2017-09-26 13:13:56', '2017-09-26 13:13:56'),
(38, NULL, '114011221022175960184', 6, 'investor', 'joe', 'willson', 'joewillson9562@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-09-26 13:43:29', '2017-09-26 13:43:29'),
(39, NULL, '', 8, 'investor', 'hfg', 'fghfh', 'afgQ@gmail.com', 'sha1$3997d208$1$6e01c66504a046a2bd23d54e2378df6645785a6c', '123456', '452354252', 'no_image.jpg', NULL, NULL, 'active', '2017-09-27 06:18:53', '2017-09-27 06:18:53'),
(40, NULL, '', 9, 'investor', 'New', 'Demo', 'new@mailinator.com', 'sha1$c753e434$1$f67c546a664b11e67873b9b3e0d1cab3a1d09112', '000000', '1234568097', 'no_image.jpg', 'Ludhiana Jn, Ludhiana, Punjab, India', NULL, 'active', '2017-09-27 07:01:37', '2017-09-27 07:01:37'),
(41, NULL, '', 8, 'investor', 'aa', 'bb', 'xx@x.com', 'sha1$68942ddb$1$78ffd8ca7bd85b6077481a04c2a04d9344523dcf', '123456', '1234564564', 'image.jpg', 'Ludhiana, Punjab, India', 'lorem ipsum is simply dummy', 'active', '2017-09-27 11:09:51', '2017-09-27 11:09:51'),
(42, NULL, '', 8, 'investor', 'Yy', 'Y', 'yy@y.com', 'sha1$73c42649$1$368ebae619cefa84b6455652f20e9a558feb45e9', '123456', '1235456456', 'no_image.jpg', NULL, NULL, 'active', '2017-09-27 11:16:33', '2017-09-27 11:16:33'),
(43, NULL, '', 6, 'investor', 'X', 'X', 'x@x.com', 'sha1$599a38cf$1$e1e542d2794807217e0d8c557b0f3b04db936af1', '123456', '1231231230', 'image.jpg', 'Ludhiana, Punjab, India', 'Enter short description', 'active', '2017-09-28 09:43:58', '2017-09-28 09:43:58'),
(44, NULL, '', 6, 'agent', 'subodh', 'kumar', 'kumar@mailinator.com', 'sha1$88ffa625$1$fbd891e8d6063a8a1d870ccfc5f3ad652a8ef4ad', '123456', '9876453127', 'no_image.jpg', NULL, NULL, 'active', '2017-10-23 07:46:32', '2017-10-23 07:46:32'),
(45, NULL, '', 8, 'agent', 'pp', 'pp', 'pp@mailinator.com', 'sha1$5e338b61$1$582c7413439e49ec66301e13ad2f26b4da6990e6', '000000', '1234567890', 'no_image.jpg', NULL, NULL, 'active', '2017-10-23 09:19:52', '2017-10-23 09:19:52'),
(46, NULL, '', 8, 'agent', 'X', 'Y', 'xy@x.com', 'sha1$6ca4dcd7$1$2b9af012eb5980cbaff999812a93c7dac913581e', '123456', '1234567890', 'no_image.jpg', NULL, NULL, 'active', '2017-10-23 09:20:39', '2017-10-23 09:20:39'),
(47, 'ty465', '', 6, NULL, 'dfgf', 'dfg', 'dfgdf@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-10-23 09:25:33', '2017-10-23 09:25:33'),
(48, NULL, '', 8, 'investor', 'X', 'Y', 'xyz@x.com', 'sha1$a85cb872$1$0c6ee646237cc5ec4a6a56730d03ad211cce4a9f', '1234586', '1234561230', 'no_image.jpg', NULL, NULL, 'active', '2017-10-23 09:26:57', '2017-10-23 09:26:57'),
(52, NULL, NULL, 8, 'agent', 'Aman', 'jaz', 'aman@mailinator.com', 'sha1$4510b644$1$d3b28e7ccb4d717ad1b50d93a9bc98dd03f31e31', 'qwerty', '7688464046', 'no_image.jpg', NULL, NULL, 'active', '2017-10-30 05:23:29', '2017-10-30 05:23:29'),
(53, NULL, NULL, 6, 'agent', 'Dharmendra', 'Vishwakrma', 'abcde@mailinator.com', 'sha1$66c13943$1$cbf2c8f9ff58490a4b0ef4d90cad9455d3b96df6', '000000', '8569874589', 'image.jpg', '', 'Enter short description', 'inactive', '2017-11-09 06:26:28', '2017-11-09 06:26:28'),
(54, NULL, NULL, 6, 'investor', 'Deli', 'ver', 'dummy@mailinator.com', 'sha1$b9f1e409$1$014e6a79df90b17b74c7017b39cc9fff59085c94', '123456', '235243443', 'no_image.jpg', 'Ludhiana', 'sdffsdfsdfsfsfsf', 'inactive', '2017-11-09 07:07:15', '2017-11-09 07:07:15'),
(55, NULL, NULL, 9, 'agent', 'Delii', 'ver', 'deli@mailinator.com', 'sha1$26a24ba5$1$eb753e2e699ef426140e03e60e4d598045b9a6ec', 'wbeta0jp', '8737373855', 'IMG-20171025-WA0000.jpg', 'Ludhiana, Punjab, India', '', 'inactive', '2017-11-09 07:19:21', '2017-11-09 07:19:21'),
(56, NULL, NULL, 6, 'agent', 'Dharme', 'Vish', 'dh@mailinator.com', 'sha1$ed20434b$1$ad95613657edb4b5d6f5decb324cadd268531c5d', '000000', '8536987458', 'image.jpg', '', 'Enter short description', 'inactive', '2017-11-09 10:13:11', '2017-11-09 10:13:11'),
(57, NULL, NULL, 6, 'agent', 'Ddffjjjj', 'Jjjj', 'dj@mailinator.com', 'sha1$d18442b3$1$1a857c06c4480aa5ea9596e266bbaebe147a9e30', '8cssfaxr', '9656324158', 'no_image.jpg', NULL, NULL, 'active', '2017-11-09 10:25:30', '2017-11-09 10:25:30'),
(58, NULL, NULL, 8, 'investor', 'Dharmendra', 'Investor', 'dhi@mailinator.com', 'sha1$ac9c95de$1$469cdb351ffdf2fb27ec70041785a7727c4fe678', '000000', '9653215487', 'no_image.jpg', NULL, NULL, 'inactive', '2017-11-09 10:57:46', '2017-11-09 10:57:46'),
(59, NULL, NULL, 8, 'investor', 'investor', 'dealiver', 'investor@mailinator.com', 'sha1$9c8f8c20$1$b5669403a12ef802b73e3a9482b89e4fcea580f2', '123456', '9870645132', 'IMG-20171011-WA0000.jpg', '', '', 'inactive', '2017-11-09 12:00:30', '2017-11-09 12:00:30'),
(60, NULL, NULL, 6, 'agent', 'Eyal', 'Hilel', 'eyal@zangula.com', 'sha1$46f5b8ec$1$d4f3274d27078315cbcda58c198c88e3a5476d13', '123456', '0524442565', 'no_image.jpg', NULL, NULL, 'inactive', '2017-11-10 13:49:28', '2017-11-10 13:49:28'),
(61, NULL, NULL, 8, 'agent', 'sagiv', 'rosano', 'sagiv@dealiverapp.com', 'sha1$07b46967$1$38ea8ee304fb593067d7d7ece7509587ea446bb4', '4svegr1303', '3109268959', 'no_image.jpg', NULL, NULL, 'inactive', '2017-11-12 17:38:31', '2017-11-12 17:38:31'),
(62, NULL, NULL, 8, 'agent', 'New', 'User ', 'new1@mailinator.com', 'sha1$2fb4133e$1$d1e5076405f7f1a4d9dc432aa18458df8c8d0372', '123456', '895046846', 'no_image.jpg', NULL, NULL, 'inactive', '2017-11-15 07:29:38', '2017-11-15 07:29:38'),
(63, NULL, '109509548380384650401', 6, 'agent', 'anuj', 'mishra', 'promatics.anujmishra@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-11-17 08:42:24', '2017-11-17 08:42:24'),
(64, NULL, '115444157418891204454', 6, 'agent', 'lavi', 'motwal', 'lavimotwal12@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-11-17 08:51:34', '2017-11-17 08:51:34'),
(66, 'Fv1oigApbl', NULL, 6, 'agent', 'Chandan', 'Goyal', 'goyalchandan5@gmail.com', NULL, NULL, NULL, 'no_image.jpg', NULL, NULL, 'active', '2017-11-17 09:21:26', '2017-11-17 09:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact_lists`
--

CREATE TABLE `user_contact_lists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `request_status` enum('pending','requested','accepted','rejected','hide') NOT NULL DEFAULT 'pending',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_contact_lists`
--

INSERT INTO `user_contact_lists` (`id`, `user_id`, `receiver_id`, `request_status`, `status`, `created_at`) VALUES
(29, 62, 59, 'requested', 'active', '2017-11-16 04:54:31'),
(30, 62, 58, 'pending', 'active', '2017-11-16 04:54:31'),
(31, 49, 59, 'pending', 'active', '2017-11-16 09:24:25'),
(32, 56, 13, 'requested', 'active', '2017-11-17 05:45:33'),
(33, 65, 59, 'pending', 'active', '2017-11-17 09:16:43'),
(34, 66, 59, 'pending', 'active', '2017-11-17 09:23:59'),
(35, 56, 21, 'accepted', 'active', '2017-11-17 09:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_prefrences`
--

CREATE TABLE `user_prefrences` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prefrence_list_id` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_prefrences`
--

INSERT INTO `user_prefrences` (`id`, `user_id`, `prefrence_list_id`, `status`, `created_at`) VALUES
(1, 28, 6, 'active', '2017-09-26 09:05:45'),
(2, 28, 8, 'active', '2017-09-26 09:05:45'),
(3, 3, 0, 'active', '2017-09-26 10:41:31'),
(4, 3, 0, 'active', '2017-09-26 10:47:09'),
(5, 3, 1, 'active', '2017-09-26 10:47:09'),
(6, 3, 0, 'active', '2017-09-26 10:54:00'),
(7, 3, 0, 'active', '2017-09-26 13:02:04'),
(8, 3, 1, 'active', '2017-09-26 13:02:04'),
(9, 36, 1, 'active', '2017-09-26 13:17:30'),
(10, 36, 2, 'active', '2017-09-26 13:17:30'),
(11, 36, 0, 'active', '2017-09-26 13:38:55'),
(12, 3, 0, 'active', '2017-09-26 13:42:31'),
(13, 38, 1, 'active', '2017-09-26 13:43:37'),
(14, 38, 2, 'active', '2017-09-26 13:43:37'),
(15, 38, 0, 'active', '2017-09-26 13:43:37'),
(16, 36, 0, 'active', '2017-09-26 13:46:18'),
(17, 36, 1, 'active', '2017-09-26 13:46:18'),
(18, 36, 2, 'active', '2017-09-26 13:46:18'),
(19, 3, 0, 'active', '2017-09-26 13:51:57'),
(20, 3, 0, 'active', '2017-09-26 13:56:33'),
(21, 3, 0, 'active', '2017-09-26 14:06:06'),
(22, 3, 0, 'active', '2017-09-27 04:23:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals_comments`
--
ALTER TABLE `deals_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gcm_devices`
--
ALTER TABLE `gcm_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prefrences_lists`
--
ALTER TABLE `prefrences_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_contact_lists`
--
ALTER TABLE `user_contact_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_prefrences`
--
ALTER TABLE `user_prefrences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `deals_comments`
--
ALTER TABLE `deals_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gcm_devices`
--
ALTER TABLE `gcm_devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prefrences_lists`
--
ALTER TABLE `prefrences_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `user_contact_lists`
--
ALTER TABLE `user_contact_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `user_prefrences`
--
ALTER TABLE `user_prefrences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
