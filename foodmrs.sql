-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2022 at 06:26 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u505327537_foodie`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_content` longtext DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `fb` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `insta` text DEFAULT NULL,
  `android` text DEFAULT NULL,
  `ios` text DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_title` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_content`, `image`, `logo`, `footer_logo`, `favicon`, `fb`, `twitter`, `insta`, `android`, `ios`, `copyright`, `title`, `short_title`, `mobile`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Youmrsfood has been created by a team that is extremely passionate about food, wine and all things fine. As a collective group of Chefs and Hoteliers who have worked in some of the best hotels and restaurants around the world, we were always on the lookout for new dining experiences and exciting cuisines. It is this love and passion for eating and exploring that brought us together to create Youmrsfood. With every meal you book through Youmrsfood, there comes a phenomenal deal ranging from free alcoholic drinks to up to 50% off on your total bill. With no membership fees or reservations charge, what is best is that these eye-popping deals are not for just one person but are applicable on the entire table! Now, this is what I call a real deal!', 'about-63ff432e8ef9d.png', 'logo-63ff432e92c10.png', 'footer-63ff432e8f55f.png', 'favicon-63ff432e924c1.ico', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'https://play.google.com/store/apps/details?id=com.food.mrs', '#!', 'Copyright Youmrsfood Website © 2023.All Rights Reserved.', 'We are the world class food providers with the highest quality of food services', 'We have the glory be', '+91 7065893906', 'mrspizzacake@gmail.com', 'YOU MRS FOOD Restaurant, Noida', '2023-03-01 12:26:04', '2023-03-01 06:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL DEFAULT '0',
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `cat_id`, `item_id`, `name`, `price`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'banner-63ff4603ed60f.jpeg', '2023-03-01 07:03:07', '2023-03-01 07:03:07'),
(2, 3, 'banner-63ff461b91ef9.jpeg', '2023-03-01 07:03:31', '2023-03-01 07:03:31'),
(3, 10, 'banner-63ff46a0ce3b2.png', '2023-03-01 07:05:44', '2023-03-01 07:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `addons_id` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `item_notes` text DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes . 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item_id`, `addons_id`, `qty`, `price`, `item_notes`, `is_available`, `created_at`, `updated_at`) VALUES
(21, 12, 121, NULL, 1, '20', NULL, 1, '2023-03-06 02:13:53', '2023-03-06 02:13:53'),
(22, 13, 38, NULL, 1, '99', NULL, 1, '2023-03-06 03:26:14', '2023-03-06 03:26:14'),
(24, 15, 12, NULL, 1, '89', NULL, 1, '2023-03-06 03:51:24', '2023-03-06 03:51:24'),
(34, 24, 12, NULL, 2, '178', NULL, 1, '2023-03-08 02:55:11', '2023-03-08 12:22:38'),
(35, 27, 12, NULL, 1, '89', NULL, 1, '2023-03-08 07:50:25', '2023-03-08 07:51:19'),
(36, 27, 21, NULL, 1, '135', NULL, 1, '2023-03-08 07:50:44', '2023-03-08 07:50:44'),
(39, 33, 12, NULL, 3, '267', NULL, 1, '2023-03-08 12:34:34', '2023-03-08 12:34:34'),
(40, 35, 15, NULL, 1, '89', NULL, 1, '2023-03-09 11:37:26', '2023-03-09 11:37:26'),
(41, 37, 12, NULL, 1, '89', NULL, 1, '2023-03-09 13:19:07', '2023-03-09 13:19:07'),
(42, 37, 22, NULL, 1, '135', NULL, 1, '2023-03-11 04:33:14', '2023-03-11 04:33:14'),
(43, 44, 14, NULL, 3, '267', NULL, 1, '2023-03-12 12:37:19', '2023-03-12 12:37:19'),
(46, 49, 14, NULL, 2, '178', NULL, 1, '2023-03-17 08:26:08', '2023-03-17 08:26:08'),
(67, 52, 12, NULL, 1, '89', NULL, 1, '2023-03-26 10:15:31', '2023-03-26 10:25:02'),
(73, 48, 21, NULL, 1, '135', NULL, 1, '2023-05-07 08:11:06', '2023-05-07 08:11:06'),
(78, 30, 21, NULL, 1, '135', NULL, 1, '2023-06-10 14:03:33', '2023-06-10 14:03:33'),
(80, 2, 123, NULL, 1, '349', NULL, 1, '2024-01-17 18:07:44', '2024-01-17 18:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `image`, `is_available`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Pizza', 'category-63ff374226619.jpg', 1, 2, '2023-03-01 06:00:10', '2023-03-01 06:00:10'),
(2, 'Burger', 'category-63ff374f4ec41.jpeg', 1, 2, '2023-03-01 06:00:23', '2023-03-01 06:00:23'),
(3, 'Starters', 'category-63ff376656d45.jpg', 1, 2, '2023-03-01 06:00:46', '2023-03-01 06:00:46'),
(4, 'Sandwich', 'category-63ff37840c547.jpg', 1, 1, '2023-03-01 06:01:16', '2023-03-05 16:49:11'),
(5, 'Desserts', 'category-63ff3795387b9.jpeg', 1, 1, '2023-03-01 06:01:33', '2023-03-05 16:48:59'),
(6, 'Cakes & Pastery', 'category-63ff37d3cd8ee.png', 1, 2, '2023-03-01 06:02:35', '2023-03-01 06:02:35'),
(7, 'South Indian', 'category-63ff381361f5b.jpg', 1, 2, '2023-03-01 06:03:39', '2023-03-01 06:03:39'),
(8, 'Chinese Food', 'category-63ff382403606.jpg', 1, 2, '2023-03-01 06:03:56', '2023-03-01 06:03:56'),
(9, 'Drinks', 'category-63ff382da93de.jpeg', 1, 2, '2023-03-01 06:04:05', '2023-03-01 06:04:05'),
(10, 'Cloth', 'category-640400a7823cc.png', 1, 1, '2023-03-05 02:38:31', '2023-03-05 04:00:29'),
(11, 'Sweet', 'category-6404144a0aca3.jpg', 1, 1, '2023-03-05 04:02:18', '2023-03-05 07:47:47'),
(12, 'Bahi bahi dankaur', 'category-640428ff12888.jpg', 1, 1, '2023-03-05 05:30:39', '2023-03-05 07:47:53'),
(13, 'Biryani', 'category-64046604ae2a3.jpg', 1, 2, '2023-03-05 09:51:00', '2023-03-05 09:51:00'),
(14, 'Hotel food', 'category-6404c97488b56.jpg', 1, 2, '2023-03-05 16:55:16', '2023-03-05 16:55:16'),
(15, 'Vegitab', 'category-6404c9a8d1afb.jpg', 1, 2, '2023-03-05 16:56:08', '2023-03-05 16:56:08'),
(16, 'Fruit', 'category-6404e21617647.jpg', 1, 2, '2023-03-05 18:40:22', '2023-03-05 18:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Hari', 'Kumar', 'hk6426924@gmail.com', 'Ji', '2023-03-01 17:05:36', '2023-03-01 17:05:36'),
(2, 'Hari', 'Kumar', 'hk6426924@gmail.com', 'Hello', '2023-03-01 17:07:19', '2023-03-01 17:07:19'),
(3, 'Vishnu', 'Suryvanshi', 'vishnusuryvanshi91@gmail.com', '1 pizza', '2023-03-02 06:21:14', '2023-03-02 06:21:14'),
(4, 'Priya', 'Kashyap', 'kashyappriya32304@gmail.com', 'Right', '2023-03-03 04:51:25', '2023-03-03 04:51:25'),
(5, 'Varun', 'Jaat', 'jaatv0196@gmail.com', 'Hi', '2023-03-05 20:22:46', '2023-03-05 20:22:46'),
(6, 'Satish', 'Rathor', 'satishrathor.8464@gmail.com', 'Good', '2023-03-06 01:33:01', '2023-03-06 01:33:01'),
(7, 'Akash', 'Bhardwaj', 'akashbhardwaj865050@gmail.com', 'Hlo', '2023-03-06 04:04:28', '2023-03-06 04:04:28'),
(8, 'Umesh', 'Jatav', 'umeshjatav135@gmail.com', 'Dadupur dankaur Gautam Buddh nagar greater Noida Uttar Pradesh pin code 203201', '2023-03-07 02:45:08', '2023-03-07 02:45:08'),
(9, 'Sanjeev', 'Nagar', 'sanjeevnagar798@gmail.com', '1 pizza', '2023-03-08 02:16:38', '2023-03-08 02:16:38'),
(10, 'Manish', 'Nagar', 'nagarmanish748@gmail.com', 'Manish nagar', '2023-03-08 03:09:23', '2023-03-08 03:09:23'),
(11, 'Kapil', 'Bhati', 'kapilbhati9012912697@gmail.com', 'Offers pizza', '2023-03-08 03:22:59', '2023-03-08 03:22:59'),
(12, 'Shivam', 'Kumar', 'kshivam15217@gmail.com', 'Pizza', '2023-03-08 03:46:35', '2023-03-08 03:46:35'),
(13, 'Kishan', 'Yadav', 'kishanyadavji099@gmail.com', 'Send me pizza', '2023-03-09 06:34:10', '2023-03-09 06:34:10'),
(14, 'Kavita', 'Bhati', 'preebhati512@gmail.com', 'Pizza oder', '2023-03-09 09:41:42', '2023-03-09 09:41:42'),
(15, 'Anshu', 'Prajapati', 'anshuprajapati16042002@gmail.com', 'Abhii order krne pe disscount hoga.........?', '2023-03-09 11:42:13', '2023-03-09 11:42:13'),
(16, 'Ansar', 'Saifi', 'husainansar523@gmail.com', 'Hlo', '2023-03-10 04:29:25', '2023-03-10 04:29:25'),
(17, 'Arun', 'Arun', 'arunrajputa13@gmail.com', 'Price', '2023-03-11 04:17:51', '2023-03-11 04:17:51'),
(18, 'Aman', 'Lodhi', 'amanlodhi499@gmail.com', '30 rupes wala 2 pizza without onion', '2023-03-11 10:47:15', '2023-03-11 10:47:15'),
(19, 'Drx Vivek', 'Kumar', 'vive9163@gmail.com', 'Marw is app ke I\'d nahe ban raha hai', '2023-03-11 11:59:03', '2023-03-11 11:59:03'),
(20, 'Pramod', 'Bhati', 'pramodbhati4739@gmail.con', 'Pizza', '2023-03-12 17:51:22', '2023-03-12 17:51:22'),
(21, 'Vipin', 'Sharma', 'www.vipin25sharma@gmail.com', 'Bhatta', '2023-03-18 06:04:03', '2023-03-18 06:04:03'),
(22, 'Vipin', 'Sharma', 'www.vipin25sharma@gmail.com', 'deaf', '2023-03-18 06:04:37', '2023-03-18 06:04:37'),
(23, 'Vipin', 'Sharma', 'www.vipin25sharma@gmail.com', 'Noida', '2023-03-18 15:59:23', '2023-03-18 15:59:23'),
(24, 'Akash', 'Bhati', 'akashbhatiskd00@gmail.com', 'Hii', '2023-03-21 04:41:54', '2023-03-21 04:41:54'),
(25, 'Vivek', 'Bhati', 'vivekbhati936@gmail.com', 'Send me address Baroda sikandrabad', '2023-04-08 11:10:59', '2023-04-08 11:10:59'),
(26, 'Vivek', 'Bhati', 'vivekbhati936@gmail.com', 'Hlo', '2023-04-08 11:11:25', '2023-04-08 11:11:25'),
(27, 'Tanya', 'Raghuvanshi', 'tanyaraghuvanshi2@gmail.com', 'Hii sir', '2023-04-08 11:59:39', '2023-04-08 11:59:39'),
(28, 'Anjali', 'Nagar', 'nagarashey1@gmail.com', 'Thanks', '2023-05-01 11:39:55', '2023-05-01 11:39:55'),
(29, 'dev', 'Kumar', 'kumard1757@gmail.com', 'Hi', '2023-05-30 17:44:34', '2023-05-30 17:44:34'),
(30, 'Vishal', 'Nagar0007', 'vg721246@gmail.com', 'Very nice food', '2023-08-16 11:58:52', '2023-08-16 11:58:52'),
(31, 'Rihan', 'Khan', 'sanakhan21613@gmail.com', '8585949553', '2023-08-17 14:45:40', '2023-08-17 14:45:40'),
(32, 'Ishant', 'Sharma', 'as3429977@gmail.com', 'Capticum small pizza 89', '2023-08-18 13:13:42', '2023-08-18 13:13:42'),
(33, 'Shahadeen', 'Jaiswal', 'shahadeenjaiswal@gmail.com', 'No', '2023-08-19 12:22:45', '2023-08-19 12:22:45'),
(34, 'Tanish', 'Bhati', 'bhatitanish3@gmail.com', '1 kg patato', '2023-08-21 11:01:58', '2023-08-21 11:01:58'),
(35, 'Tanya', 'Raghuvanshi', 'tanyaraghuvanshi2@gmail.com', 'Hiii', '2023-09-06 11:43:46', '2023-09-06 11:43:46'),
(36, 'Abhishek', 'Tanwar', 'abhigujjargn@gmail.com', 'Faluda', '2023-11-10 10:41:14', '2023-11-10 10:41:14'),
(37, 'Sunny', 'Thakur', 'sunnythakur61052@gmail.com', 'Hello', '2023-12-15 05:20:14', '2023-12-15 05:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 12, 'ingredients-6402e0a2a8f2b.png', '2023-03-04 06:09:38', '2023-03-04 06:09:38'),
(2, 34, 'ingredients-640466ec1d741.jpg', '2023-03-05 09:54:52', '2023-03-05 09:54:52'),
(3, 36, 'ingredients-6404683b85fd6.jpg', '2023-03-05 10:00:27', '2023-03-05 10:00:27'),
(4, 37, 'ingredients-640468c6cbf9e.jpg', '2023-03-05 10:02:46', '2023-03-05 10:02:46'),
(5, 38, 'ingredients-64046937eae1a.jpg', '2023-03-05 10:04:39', '2023-03-05 10:04:39'),
(6, 39, 'ingredients-640469b7167e8.jpg', '2023-03-05 10:06:47', '2023-03-05 10:06:47'),
(7, 40, 'ingredients-64046c8f874b9.jpg', '2023-03-05 10:18:55', '2023-03-05 10:18:55'),
(8, 41, 'ingredients-64046cea2b1df.jpg', '2023-03-05 10:20:26', '2023-03-05 10:20:26'),
(9, 42, 'ingredients-64046d3ccb942.jpg', '2023-03-05 10:21:48', '2023-03-05 10:21:48'),
(10, 43, 'ingredients-64046f5ed7f79.jpg', '2023-03-05 10:30:54', '2023-03-05 10:30:54'),
(11, 44, 'ingredients-64046fb227876.jpg', '2023-03-05 10:32:18', '2023-03-05 10:32:18'),
(12, 45, 'ingredients-640470057fb4a.jpg', '2023-03-05 10:33:41', '2023-03-05 10:33:41'),
(13, 46, 'ingredients-64047048341c8.jpg', '2023-03-05 10:34:48', '2023-03-05 10:34:48'),
(14, 47, 'ingredients-6404757f85bea.jpg', '2023-03-05 10:57:03', '2023-03-05 10:57:03'),
(15, 48, 'ingredients-6404764b534f4.jpg', '2023-03-05 11:00:27', '2023-03-05 11:00:27'),
(16, 49, 'ingredients-6404773271fa6.jpg', '2023-03-05 11:04:18', '2023-03-05 11:04:18'),
(17, 50, 'ingredients-640477992b9cb.jpg', '2023-03-05 11:06:01', '2023-03-05 11:06:01'),
(18, 51, 'ingredients-64047930d223a.jpg', '2023-03-05 11:12:48', '2023-03-05 11:12:48'),
(19, 52, 'ingredients-6404799c19e88.jpg', '2023-03-05 11:14:36', '2023-03-05 11:14:36'),
(20, 53, 'ingredients-64047aae7159a.jpg', '2023-03-05 11:19:10', '2023-03-05 11:19:10'),
(21, 54, 'ingredients-64047b167357c.jpg', '2023-03-05 11:20:54', '2023-03-05 11:20:54'),
(22, 55, 'ingredients-64047ba4ae6b6.jpg', '2023-03-05 11:23:16', '2023-03-05 11:23:16'),
(23, 56, 'ingredients-64047c23db459.jpg', '2023-03-05 11:25:23', '2023-03-05 11:25:23'),
(24, 57, 'ingredients-640490cac769c.jpg', '2023-03-05 12:53:30', '2023-03-05 12:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` longtext DEFAULT NULL,
  `item_price` varchar(255) NOT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `item_status` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `is_deleted` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `cat_id`, `item_name`, `item_description`, `item_price`, `delivery_time`, `item_status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'Plain Cheese Pizza', 'An Authentic Italian Naples Pizza Prepared with our signature pizza base & our classic house red pizza sauce with tomatoes, mozzarella, fresh basil & extra virgin olive oil.', '1200', '30 Min', 1, 1, '2023-03-01 06:19:14', '2023-03-04 12:56:58'),
(2, 1, 'Capsicum, Onion Pizza', 'An Authentic Italian Naples Pizza Prepared with our signature pizza base & our classic house white pizza sauce with Garlic, Herb Roasted Cherry Tomato, Caramelized Onion & Burrata.', '500', '30 Min', 1, 1, '2023-03-01 06:21:48', '2023-03-04 12:56:44'),
(3, 2, 'Laziz cheese burger', 'Crispy and spicy paneer patty with creamy tandoori sauce and crispy lettuce topping.', '285', '45 Min', 1, 2, '2023-03-01 06:24:21', '2023-03-05 10:38:37'),
(4, 3, 'Veg. Fried Rice', 'Veg. Fried Rice', '300', '30 Min', 1, 2, '2023-03-01 06:26:52', '2023-03-01 06:26:52'),
(5, 4, 'Crunchy Sandwich', 'Crunchy Sandwich', '500', '30 Min', 1, 1, '2023-03-01 06:27:24', '2023-03-05 16:49:11'),
(6, 2, 'Ultimate Crunchy Burger', 'Ultimate Crunchy Burger', '185', '45 Min', 1, 2, '2023-03-01 06:32:58', '2023-03-05 10:39:26'),
(7, 4, 'Grilled Sandwich', 'Grilled Sandwich', '200', '30 Min', 1, 1, '2023-03-01 06:33:36', '2023-03-05 16:49:11'),
(8, 3, 'Chilly Paneer Dry', 'Chilly Paneer Dry', '250', '30 Min', 1, 2, '2023-03-01 06:34:28', '2023-03-01 06:34:28'),
(9, 6, 'The Cake Shine', 'The Cake Shine', '500', '30 Min', 1, 1, '2023-03-01 06:36:29', '2023-03-04 12:50:37'),
(10, 6, 'The Cake N Cafe', 'The Cake N Cafe', '699', '30 Min', 1, 2, '2023-03-01 06:38:10', '2023-03-04 13:05:48'),
(11, 1, 'Hot Pizza', NULL, '100', '30 Min', 1, 1, '2023-03-04 05:15:10', '2023-03-04 05:16:19'),
(12, 1, 'Onion pizza small', 'Get very hot with onions or cheese with mosrola fresh onion VIP pizza', '89', '45 mint', 1, 2, '2023-03-04 06:09:38', '2023-03-05 00:17:02'),
(13, 1, 'Gold corn small', 'Get hot pizza of gold corn with masrola cheese', '89', '45', 1, 2, '2023-03-04 12:31:01', '2024-01-18 05:02:54'),
(14, 1, 'Capticum small', 'Hot pizza of capsicum with masrola chess', '89', '45', 1, 2, '2023-03-04 12:36:13', '2023-03-05 00:16:06'),
(15, 1, 'Tamato small', 'Shoft or hot pizza Tamato with masrola chess pizza', '89', '45 mint', 1, 2, '2023-03-04 12:55:12', '2023-03-05 00:15:40'),
(16, 6, 'Choklate cake 1 kg', 'Choklate cake with 1 kg cake half kg cake free eagles cake', '349', '45 mint', 1, 2, '2023-03-04 12:59:38', '2023-03-05 00:15:24'),
(17, 6, 'Stobari cake 1 kg', 'Stobari cake eagles with low bread very soft cake', '299', '45 mint', 1, 2, '2023-03-04 13:02:51', '2023-03-05 00:15:07'),
(18, 6, 'Pineapple 1 kg', 'Eagles cake of pineapple with little bit bread very soft cake for everyone', '299', '45 mint', 1, 2, '2023-03-04 23:19:55', '2023-03-05 00:14:40'),
(19, 6, 'Butter scotch 1 kg', 'Eagles cake of butter scotch with little bit bread very soft cake for everyone', '299', '45 mint', 1, 2, '2023-03-04 23:26:32', '2023-03-05 00:14:15'),
(20, 6, 'Stobari cake 1 kg', 'Eagles cake of stobari with little bit bread very soft cake for everyone', '299', '45 mint', 1, 2, '2023-03-04 23:28:24', '2023-03-05 00:13:51'),
(21, 1, 'Panner gold corn small', 'Panner gold corn pizza with masrola chess pizza very hot and soft', '135', '45 mint', 1, 2, '2023-03-04 23:33:11', '2023-03-05 00:13:19'),
(22, 1, 'Panner capsicum small', 'Panner capsicum with masrola chess hot pizza VIP pizza', '135', '45 mint', 1, 2, '2023-03-04 23:36:50', '2023-03-05 00:12:57'),
(23, 1, 'Panner onion small', 'Panner onion pizza with mosrola chess pizza very hot soft pizza', '135', '45 mint', 1, 2, '2023-03-04 23:38:19', '2023-03-05 00:12:40'),
(24, 1, 'Panner Tamato small', 'Panner Tamato with masrola chess pizza very hot soft pizza', '135', '45 mint', 1, 2, '2023-03-04 23:39:50', '2023-03-05 00:12:26'),
(25, 1, 'Onion capsicum small', 'Onion capsicum pizza or hot pizza with mosrola chess pizza very hot', '109', '45 mint', 1, 2, '2023-03-04 23:44:55', '2023-03-05 00:12:12'),
(26, 1, 'Onion Tamato small', 'Onion Tamato with masrola chess hot pizza with mosrola', '109', '45 mint', 1, 2, '2023-03-04 23:47:26', '2023-03-05 00:11:54'),
(27, 1, 'Extra chess gold corn small', 'Extra chess hot pizza gold corn pizza very hot soft pizza', '145', '45 mint', 1, 2, '2023-03-04 23:53:14', '2023-03-05 00:11:38'),
(28, 6, 'Choklate cake 1 kg', 'Choklate cake fully chocolate very soft or fresh cake with low bread', '599', '45 mint', 1, 2, '2023-03-04 23:57:35', '2023-03-05 00:11:19'),
(29, 6, 'Choklate cake 1 kg', 'Eagles cake of chocolate cake with little bit bread very soft cake for everyone', '599', '45 mint', 1, 2, '2023-03-04 23:59:50', '2023-03-05 00:10:58'),
(30, 6, 'Name cake of your name latter per cake half kg', 'Per cake of name Eagles cake of mix flawers with little bit bread very soft cake for everyone', '100', '45 mint', 1, 2, '2023-03-05 00:03:15', '2023-03-05 00:10:33'),
(31, 1, 'Panner mix veg small', 'Panner mix veg pizza with masrola chess very hot soft pizza VIP', '199', '45 mint', 1, 2, '2023-03-05 00:09:20', '2023-03-05 00:09:20'),
(32, 6, 'Pineapple Half kg cake', 'Eagles cake of pineapple with little bit bread very soft cake for everyone half kg cake', '199', '45 mint', 1, 2, '2023-03-05 00:20:15', '2023-03-05 00:20:15'),
(33, 12, 'Eagroll', 'Chilli shose eag rool', '85', '45', 1, 1, '2023-03-05 05:45:03', '2023-03-05 07:47:53'),
(34, 13, 'Biryani hedrabad ,250 gram', 'This is hedrabad biryani with vegetables very testy or hot', '120', '45 mint', 1, 2, '2023-03-05 09:54:52', '2023-03-05 09:54:52'),
(35, 13, 'Biryani hedrabad ,500gram', 'Very hot and testy biryani hedrabad biryani with vegetables', '199', '45 mint', 1, 2, '2023-03-05 09:57:46', '2023-03-05 09:57:46'),
(36, 13, 'Biryani hedrabad ,1 kg', 'This is yummy biryani hedrabad biryani with vegetables and hot biryani', '299', '45 mint', 1, 2, '2023-03-05 10:00:27', '2023-03-05 10:00:27'),
(37, 13, 'Biryani hedrabad ,300gram', 'Very testy or hot biryani with vegetables hedrabad biryani with vegetables very yummy', '149', '45 mint', 1, 2, '2023-03-05 10:02:46', '2023-03-05 10:13:41'),
(38, 13, 'Biryani hedrabad ,200gram', 'Very testy or hot biryani with vegetables hedrabad biryani with vegetables very yummy', '99', '45 mint', 1, 2, '2023-03-05 10:04:39', '2023-03-05 10:04:39'),
(39, 13, 'Biryani hedrabad ,400gram', 'Very testy or hot biryani with vegetables hedrabad biryani with vegetables very yummy', '185', '45 mint', 1, 2, '2023-03-05 10:06:47', '2023-03-05 10:13:28'),
(40, 13, 'Chiken Biryani ,200gram', 'Very testy or hot biryani with chiken hedrabad biryani with chiken very yummy', '199', '45 mint', 1, 2, '2023-03-05 10:18:55', '2023-03-05 10:18:55'),
(41, 13, 'Chiken Biryani 250 gram', 'Very testy or hot biryani with chiken hedrabad biryani with chiken very yummy', '299', '45 mint', 1, 2, '2023-03-05 10:20:26', '2023-03-05 10:20:26'),
(42, 13, 'Chiken Biryani,500gram', 'Very testy or hot biryani with chiken hedrabad biryani with chiken very yummy', '399', '45 mint', 1, 2, '2023-03-05 10:21:48', '2023-03-05 10:21:48'),
(43, 2, 'Burger', 'Unike burger from market with chess very soft or hot burger', '99', '45 mint', 1, 2, '2023-03-05 10:30:54', '2023-03-05 10:30:54'),
(44, 2, 'Burger extra chess', 'Unike burger from market with chess very soft or hot burger with extra chess', '149', '45 mint', 1, 2, '2023-03-05 10:32:18', '2023-03-05 10:32:18'),
(45, 2, 'Burger panner', 'Unike burger from market with chess very soft or hot burger with panner', '199', '45 mint', 1, 2, '2023-03-05 10:33:41', '2023-03-05 10:33:41'),
(46, 2, 'Burger extra chess with panner', 'Unike burger from market with chess very soft or hot burger with extra chess with panner', '249', '45 mint', 1, 2, '2023-03-05 10:34:48', '2023-03-05 10:34:48'),
(47, 3, 'Honey chilly potato half', 'Honey chilly potato half very unique from market and testy chilly', '120', '45 mint', 1, 2, '2023-03-05 10:57:03', '2023-03-05 10:57:03'),
(48, 3, 'Honey chilly potato full', 'Very unique from market with potato honey chilly very hot soft and smooth testy', '199', '45 mint', 1, 2, '2023-03-05 11:00:27', '2023-03-05 11:00:27'),
(49, 3, 'Chilli panner half', 'Very unique from market with panner chilly very hot soft and smooth testy', '179', '45 mint', 1, 2, '2023-03-05 11:04:18', '2023-03-05 11:04:18'),
(50, 3, 'Chilli panner full', 'Very unique from market with panner chilly very hot soft and smooth testy', '249', '45 mint', 1, 2, '2023-03-05 11:06:01', '2023-03-05 11:06:01'),
(51, 3, 'Chilli patato half', 'Very unique from market with  chilly Patato very hot soft and smooth testy', '99', '45 mint', 1, 2, '2023-03-05 11:12:48', '2023-03-05 11:13:09'),
(52, 3, 'Chilli patato full', 'Very unique from market with  chilly Patato very hot soft and smooth testy', '149', '45 mint', 1, 2, '2023-03-05 11:14:36', '2023-03-05 11:14:36'),
(53, 3, 'Veg noodles half', 'It\'s veg noodles very hot soft and smooth testy or package good condition', '99', '45 mint', 1, 2, '2023-03-05 11:19:10', '2023-03-05 11:19:10'),
(54, 3, 'Veg noodles full', 'It\'s veg noodles very hot soft and smooth testy or package good condition', '149', '45 mint', 1, 2, '2023-03-05 11:20:54', '2023-03-05 11:20:54'),
(55, 3, 'Haaka Noodles half', 'It\'s Haaka noodles very hot soft and smooth testy or package good condition', '149', '45 mint', 1, 2, '2023-03-05 11:23:16', '2023-03-05 11:23:16'),
(56, 3, 'Haaka Noodles full', 'It\'s Haaka noodles very hot soft and smooth testy or package good condition', '249', '45 mint', 1, 2, '2023-03-05 11:25:23', '2023-03-05 11:25:23'),
(57, 8, 'Fry Momos half', 'Fry momos very hot and unick from market and VIP package', '59', '45 mint', 1, 2, '2023-03-05 12:53:30', '2023-03-05 12:53:30'),
(58, 8, 'Fry Momos full', 'Fry momos very hot and unick from market and VIP package', '120', '45 mint', 1, 2, '2023-03-05 13:08:33', '2023-03-05 13:08:33'),
(59, 8, 'Veg Momos half', 'Veg Momos very hot and spicy Momos very testy', '59', '45 mint', 1, 2, '2023-03-05 13:26:51', '2023-03-05 13:26:51'),
(60, 8, 'Veg Momos full', 'Very uniq or veg Momos very hot and spicy Momos', '120', '45 mint', 1, 2, '2023-03-05 13:28:08', '2023-03-05 13:28:08'),
(61, 8, 'Single Egg roll', 'Single egg roll very testy or hot very uniq from market', '79', '45 mint', 1, 2, '2023-03-05 13:37:35', '2023-03-05 13:37:35'),
(62, 8, 'Double egg roll', 'Double begg roll very testy or hot very uniq from market', '159', '45 mint', 1, 2, '2023-03-05 14:13:55', '2023-03-05 14:13:55'),
(63, 8, 'Panner rool', 'Panner egg roll very testy or hot very uniq from market', '140', '45 mint', 1, 2, '2023-03-05 15:02:57', '2023-03-05 15:02:57'),
(64, 8, 'Veg rool', 'Veg egg roll very testy or hot very uniq from market', '69', '45 mint', 1, 2, '2023-03-05 15:06:58', '2023-03-05 15:06:58'),
(65, 7, 'Bread pakoda', 'Bread pakoda very hot and spicy pakoda very much unik from markit', '49', '45 mint', 1, 2, '2023-03-05 15:20:17', '2023-03-05 15:20:17'),
(66, 7, 'Samosa', 'Samosa very hot and spicy very hot and spicy very much unik from markit', '30', '45 mint', 1, 2, '2023-03-05 15:22:37', '2023-03-05 15:22:37'),
(67, 7, 'Chole batura', 'Chole batura very hot and spicy with Patato', '99', '45 mint', 1, 2, '2023-03-05 15:26:15', '2023-03-05 15:26:15'),
(68, 7, 'Masala dosha', 'Masala dosha very hot and spicy very different from markit', '159', '45 mint', 1, 2, '2023-03-05 16:39:25', '2023-03-05 16:39:25'),
(69, 7, 'Pav bhaji', 'Pav bhaji with butter very different from markit', '120', '45 mint', 1, 2, '2023-03-05 16:43:24', '2023-03-05 16:44:04'),
(70, 7, 'Gol gapa Pani Puri 6 peace', 'Gol gapa Pani Puri 6 peace very soft and smooth testy or spicy', '50', '45 mint', 1, 2, '2023-03-05 17:00:42', '2023-03-05 17:00:42'),
(71, 14, 'Tandoori roti', 'Tandoori roti maker and  food delivery of hotel', '20', '45 mint', 1, 2, '2023-03-05 17:05:16', '2023-03-05 17:05:16'),
(72, 14, 'Butter roti', 'Butter Tandoori roti maker and  food delivery of hotel', '25', NULL, 1, 2, '2023-03-05 17:09:07', '2023-03-05 17:09:07'),
(73, 14, 'Plane nan', 'Plan nan maker and  food delivery of hotel', '45', '45 mint', 1, 2, '2023-03-05 17:13:18', '2023-03-05 17:13:18'),
(74, 14, 'Butter nan', 'Butter nan maker and  food delivery of hotel', '49', '45 mint', 1, 2, '2023-03-05 17:15:34', '2023-03-05 17:15:34'),
(75, 14, 'Stuffed nan', 'Stuffed nan maker and  food delivery of hotel', '99', '45 mint', 1, 2, '2023-03-05 17:21:25', '2023-03-05 17:21:48'),
(76, 14, 'Lacha parata', 'Lacha parata maker and  food delivery of hotel', '59', '45 mint', 1, 2, '2023-03-05 17:24:31', '2023-03-05 17:24:31'),
(77, 14, 'Panner nan', 'Panner nan maker and  food delivery of hotel', '120', '45 mint', 1, 2, '2023-03-05 17:26:30', '2023-03-05 17:26:30'),
(78, 14, 'Onion parata', 'Onion parata maker and  food delivery of hotel', '79', '45 mint', 1, 2, '2023-03-05 17:28:53', '2023-03-05 17:28:53'),
(79, 14, 'Alok prata', 'Aloo prata maker and  food delivery of hotel', '79', '45 mint', 1, 2, '2023-03-05 17:30:41', '2023-03-05 17:30:41'),
(80, 14, 'Mixed vegetables half', 'Mixed vegetables  maker and  food delivery of hotel', '160', '45 mint', 1, 2, '2023-03-05 17:34:25', '2023-03-05 17:36:11'),
(81, 14, 'Mixed vegetables full', 'Mixed vegetables  maker and  food delivery of hotel', '299', '45 mint', 1, 2, '2023-03-05 17:35:51', '2023-03-05 17:35:51'),
(82, 14, 'Marat panner half', 'Matar panner maker and  food delivery of hotel', '180', '45 mint', 1, 2, '2023-03-05 17:39:35', '2023-03-05 17:39:35'),
(83, 14, 'Matar panner full', 'Matar panner maker and  food delivery of hotel', '299', '45 mint', 1, 2, '2023-03-05 17:40:57', '2023-03-05 17:40:57'),
(84, 14, 'Palak paneer half', 'Palak panner maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 17:42:53', '2023-03-05 17:42:53'),
(85, 14, 'Palak paneer full', 'Palak panner maker and  food delivery of hotel', '399', '45 mint', 1, 2, '2023-03-05 17:44:16', '2023-03-05 17:44:16'),
(86, 14, 'Jeera aloo half', 'Jeera aloo maker and  food delivery of hotel', '120', '45 mint', 1, 2, '2023-03-05 17:47:28', '2023-03-05 17:47:46'),
(87, 14, 'Jeera aloo full', 'Jeera aloo maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 17:48:59', '2023-03-05 17:48:59'),
(88, 14, 'Sahi panner half', 'Sahi panner maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 17:52:04', '2023-03-05 17:52:04'),
(89, 14, 'Sahi panner full', 'Sahi panner maker and  food delivery of hotel', '299', '45 mint', 1, 2, '2023-03-05 17:52:47', '2023-03-05 17:52:47'),
(90, 14, 'Khoya panner half', 'Khoya panner maker and  food delivery of hotel', '220', '45 mint', 1, 2, '2023-03-05 17:54:36', '2023-03-05 17:54:36'),
(91, 14, 'Khoya panner full', 'Khoya panner maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 17:55:14', '2023-03-05 17:55:14'),
(92, 14, 'Kadi  panner half', 'Kadi panner maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 17:57:34', '2023-03-05 17:57:34'),
(93, 14, 'Kadi  panner full', 'Kadi panner maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 17:58:34', '2023-03-05 17:58:34'),
(94, 14, 'Kadi chap half', 'Kadi  chap maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:14:42', '2023-03-05 18:14:42'),
(95, 14, 'Kadi  chap full', 'Kadyi chap maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:15:30', '2023-03-05 18:15:30'),
(96, 14, 'Soya chap half', 'Soya chap maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:20:36', '2023-03-05 18:20:36'),
(97, 14, 'Soya chap full', 'Soya chap maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:21:20', '2023-03-05 18:21:20'),
(98, 14, 'Dal makhni  half', 'Dal makhni maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:24:15', '2023-03-05 18:24:15'),
(99, 14, 'Dal makhni  full', 'Dal makhni maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:25:25', '2023-03-05 18:25:25'),
(100, 14, 'Dal tadka half', 'Dal tadka maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:27:06', '2023-03-05 18:27:06'),
(101, 14, 'Dal tadka full', 'Dal tadka maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:27:45', '2023-03-05 18:27:45'),
(102, 14, 'Mater mashroom half', 'Mater mashroom maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:30:25', '2023-03-05 18:30:25'),
(103, 14, 'Mater mashroom full', 'Mater mashroom maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:31:08', '2023-03-05 18:31:08'),
(104, 14, 'Shahi panner half', 'Shahi panner maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:32:25', '2023-03-05 18:33:41'),
(105, 14, 'Shahi panner full', 'Shahi panner maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:33:28', '2023-03-05 18:33:28'),
(106, 14, 'Kadi pakora half', 'Kadi pakora maker and  food delivery of hotel', '199', '45 mint', 1, 2, '2023-03-05 18:35:50', '2023-03-05 18:35:50'),
(107, 14, 'Kadi pakora full', 'Kadi pakora maker and  food delivery of hotel', '349', '45 mint', 1, 2, '2023-03-05 18:36:33', '2023-03-05 18:36:33'),
(108, 16, 'Pineapple 1 kg', 'Pineapple fruit fresh super packing', '199', '45 mint', 1, 2, '2023-03-05 18:53:47', '2023-03-05 18:53:47'),
(109, 16, 'Apple 1 kg', 'apple fruit fresh super packing', '99', '45 mint', 1, 2, '2023-03-05 18:55:17', '2023-03-22 18:03:39'),
(110, 16, 'Grapes 1 kg', 'Grapes fruit fresh super packing', '99', '45 mint', 1, 2, '2023-03-05 18:57:34', '2023-03-22 18:02:22'),
(111, 16, 'Black grapes 1 kg', 'Black grapes fruit fresh super packing', '99', '45 mint', 1, 2, '2023-03-05 18:59:24', '2023-03-22 18:01:45'),
(112, 15, 'Patato 1 kg', 'Patato Vagetabel fresh super packing', '20', '45 mint', 1, 2, '2023-03-05 19:02:02', '2023-03-05 19:02:02'),
(113, 15, 'Tomato 1 kg', 'Tamato Vagetabel fresh super packing', '30', '45 mint', 1, 2, '2023-03-05 19:03:24', '2023-03-05 19:03:24'),
(114, 15, 'Brangel 1 kg', 'Brangel Vagetabel fresh super packing', '25', '45 mint', 1, 2, '2023-03-05 19:04:57', '2023-03-05 19:04:57'),
(115, 15, 'Cauliflower 1 kg', 'Cauliflower Vagetabel fresh super packing', '30', '45 mint', 1, 2, '2023-03-05 19:06:22', '2023-03-05 19:06:22'),
(116, 16, 'Mango 1 kg', 'Mango Fruit fresh super packing', '99', '45 mint', 1, 2, '2023-03-05 19:08:34', '2023-03-22 17:57:51'),
(117, 16, 'Banana 1 darzen', 'Banana Fruit fresh super packing', '99', '45 mint', 1, 2, '2023-03-05 19:11:07', '2023-03-22 17:57:26'),
(118, 9, 'Pepsi', 'Pepsi cold drinks very different from markit', '50', '45 mint', 1, 2, '2023-03-05 19:19:19', '2023-03-05 19:19:19'),
(119, 9, 'Coca cola', 'Coca cola cold drinks very different from markit', '50', '45 mint', 1, 2, '2023-03-05 19:20:08', '2023-03-05 19:20:08'),
(120, 9, 'Dew', 'Dew cold drinks very different from markit', '40', '45 mint', 1, 2, '2023-03-05 19:20:51', '2023-03-05 19:20:51'),
(121, 9, 'Sting', 'Sting cold drinks very different from markit', '20', '45 mint', 1, 2, '2023-03-05 19:21:25', '2023-03-05 19:21:25'),
(122, 1, 'Panner medeaam mixed veg', 'Panner medeaam mixed veg pizza very hot and spicy very hot shoft', '299', '45 mint', 1, 2, '2023-03-05 20:40:08', '2023-03-05 20:40:08'),
(123, 1, 'Panner medeaam mixed veg extra chess', 'Panner medeaam mixed veg pizza very hot and spicy very hot shoft extra chess', '349', '45 mint', 1, 2, '2023-03-05 20:41:34', '2023-03-05 20:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'item-63ff3bba4f9ae.jpg', '2023-03-01 06:19:14', '2023-03-01 06:19:14'),
(2, 2, 'item-63ff3c5497f50.jpeg', '2023-03-01 06:21:48', '2023-03-01 06:21:48'),
(3, 3, 'item-63ff3cedde796.jpg', '2023-03-01 06:24:21', '2023-03-01 06:24:21'),
(4, 4, 'item-63ff3d8419702.jpg', '2023-03-01 06:26:52', '2023-03-01 06:26:52'),
(5, 5, 'item-63ff3da492c76.jpg', '2023-03-01 06:27:24', '2023-03-01 06:27:24'),
(6, 6, 'item-63ff3ef2ccd1b.jpg', '2023-03-01 06:32:58', '2023-03-01 06:32:58'),
(7, 7, 'item-63ff3f180f988.jpg', '2023-03-01 06:33:36', '2023-03-01 06:33:36'),
(8, 8, 'item-63ff3f4cd0477.jpg', '2023-03-01 06:34:28', '2023-03-01 06:34:28'),
(9, 9, 'item-63ff3fc5195b2.png', '2023-03-01 06:36:29', '2023-03-01 06:36:29'),
(10, 10, 'item-63ff402ab7c77.png', '2023-03-01 06:38:10', '2023-03-01 06:38:10'),
(11, 11, 'item-6402d3de62709.png', '2023-03-04 05:15:10', '2023-03-04 05:15:10'),
(12, 12, 'item-6402e0a2a8548.png', '2023-03-04 06:09:38', '2023-03-04 06:09:38'),
(13, 13, 'item-64033a056e4a0.jpg', '2023-03-04 12:31:01', '2023-03-04 12:31:01'),
(14, 14, 'item-64033b3d61fc3.jpg', '2023-03-04 12:36:13', '2023-03-04 12:36:13'),
(15, 15, 'item-64033fb0dd05f.png', '2023-03-04 12:55:12', '2023-03-04 12:55:12'),
(16, 16, 'item-640340bac1a47.png', '2023-03-04 12:59:38', '2023-03-04 12:59:38'),
(17, 17, 'item-6403417ba04bc.png', '2023-03-04 13:02:51', '2023-03-04 13:02:51'),
(18, 18, 'item-6403d21bab7d5.jpg', '2023-03-04 23:19:55', '2023-03-04 23:19:55'),
(19, 19, 'item-6403d3a814b3f.jpg', '2023-03-04 23:26:32', '2023-03-04 23:26:32'),
(20, 20, 'item-6403d418b7931.jpg', '2023-03-04 23:28:24', '2023-03-04 23:28:24'),
(21, 21, 'item-6403d5375a107.jpg', '2023-03-04 23:33:11', '2023-03-04 23:33:11'),
(22, 22, 'item-6403d612220e7.jpg', '2023-03-04 23:36:50', '2023-03-04 23:36:50'),
(23, 23, 'item-6403d66bb1697.jpg', '2023-03-04 23:38:19', '2023-03-04 23:38:19'),
(24, 24, 'item-6403d6c68edb6.jpg', '2023-03-04 23:39:50', '2023-03-04 23:39:50'),
(25, 25, 'item-6403d7f7ca3af.jpg', '2023-03-04 23:44:55', '2023-03-04 23:44:55'),
(26, 26, 'item-6403d88e432ab.jpg', '2023-03-04 23:47:26', '2023-03-04 23:47:26'),
(27, 27, 'item-6403d9ea82951.png', '2023-03-04 23:53:14', '2023-03-04 23:53:14'),
(28, 28, 'item-6403daef90e2e.png', '2023-03-04 23:57:35', '2023-03-04 23:57:35'),
(29, 29, 'item-6403db7616a3c.png', '2023-03-04 23:59:50', '2023-03-04 23:59:50'),
(30, 30, 'item-6403dc43d4c1f.png', '2023-03-05 00:03:15', '2023-03-05 00:03:15'),
(31, 31, 'item-6403ddb08508d.jpg', '2023-03-05 00:09:20', '2023-03-05 00:09:20'),
(32, 32, 'item-6403e03f3125c.jpg', '2023-03-05 00:20:15', '2023-03-05 00:20:15'),
(33, 33, 'item-64042c5f6a9d5.jpg', '2023-03-05 05:45:03', '2023-03-05 05:45:03'),
(34, 34, 'item-640466ec160a5.jpg', '2023-03-05 09:54:52', '2023-03-05 09:54:52'),
(35, 35, 'item-6404679a83f47.jpg', '2023-03-05 09:57:46', '2023-03-05 09:57:46'),
(36, 36, 'item-6404683b8574e.jpg', '2023-03-05 10:00:27', '2023-03-05 10:00:27'),
(37, 37, 'item-640468c6cb990.jpg', '2023-03-05 10:02:46', '2023-03-05 10:02:46'),
(38, 38, 'item-64046937ea832.jpg', '2023-03-05 10:04:39', '2023-03-05 10:04:39'),
(39, 39, 'item-640469b7162c2.jpg', '2023-03-05 10:06:47', '2023-03-05 10:06:47'),
(40, 40, 'item-64046c8f86c9a.jpg', '2023-03-05 10:18:55', '2023-03-05 10:18:55'),
(41, 41, 'item-64046cea2aa89.jpg', '2023-03-05 10:20:26', '2023-03-05 10:20:26'),
(42, 42, 'item-64046d3ccb440.jpg', '2023-03-05 10:21:48', '2023-03-05 10:21:48'),
(43, 43, 'item-64046f5ed7aa5.jpg', '2023-03-05 10:30:54', '2023-03-05 10:30:54'),
(44, 44, 'item-64046fb227422.jpg', '2023-03-05 10:32:18', '2023-03-05 10:32:18'),
(45, 45, 'item-640470057f564.jpg', '2023-03-05 10:33:41', '2023-03-05 10:33:41'),
(46, 46, 'item-6404704833d06.jpg', '2023-03-05 10:34:48', '2023-03-05 10:34:48'),
(47, 47, 'item-6404757f853d3.jpg', '2023-03-05 10:57:03', '2023-03-05 10:57:03'),
(48, 48, 'item-6404764b52e07.jpg', '2023-03-05 11:00:27', '2023-03-05 11:00:27'),
(49, 49, 'item-6404773271814.jpg', '2023-03-05 11:04:18', '2023-03-05 11:04:18'),
(50, 50, 'item-640477992b42e.jpg', '2023-03-05 11:06:01', '2023-03-05 11:06:01'),
(51, 51, 'item-64047930d1c40.jpg', '2023-03-05 11:12:48', '2023-03-05 11:12:48'),
(52, 52, 'item-6404799c196f2.jpg', '2023-03-05 11:14:36', '2023-03-05 11:14:36'),
(53, 53, 'item-64047aae70f40.jpg', '2023-03-05 11:19:10', '2023-03-05 11:19:10'),
(54, 54, 'item-64047b1673061.jpg', '2023-03-05 11:20:54', '2023-03-05 11:20:54'),
(55, 55, 'item-64047ba4add8f.jpg', '2023-03-05 11:23:16', '2023-03-05 11:23:16'),
(56, 56, 'item-64047c23dae1e.jpg', '2023-03-05 11:25:23', '2023-03-05 11:25:23'),
(57, 57, 'item-640490cac6d6f.jpg', '2023-03-05 12:53:30', '2023-03-05 12:53:30'),
(58, 58, 'item-640494516aedb.jpg', '2023-03-05 13:08:33', '2023-03-05 13:08:33'),
(59, 59, 'item-6404989b29774.jpg', '2023-03-05 13:26:51', '2023-03-05 13:26:51'),
(60, 60, 'item-640498e8d35d5.jpg', '2023-03-05 13:28:08', '2023-03-05 13:28:08'),
(61, 61, 'item-64049b1f925f2.jpg', '2023-03-05 13:37:35', '2023-03-05 13:37:35'),
(62, 62, 'item-6404a3a389573.jpg', '2023-03-05 14:13:55', '2023-03-05 14:13:55'),
(63, 63, 'item-6404af21182d6.jpg', '2023-03-05 15:02:57', '2023-03-05 15:02:57'),
(64, 64, 'item-6404b0127ef68.jpg', '2023-03-05 15:06:58', '2023-03-05 15:06:58'),
(65, 65, 'item-6404b33172499.jpg', '2023-03-05 15:20:17', '2023-03-05 15:20:17'),
(66, 66, 'item-6404b3bd2bbf2.jpg', '2023-03-05 15:22:37', '2023-03-05 15:22:37'),
(67, 67, 'item-6404b4973b63c.jpg', '2023-03-05 15:26:15', '2023-03-05 15:26:15'),
(68, 68, 'item-6404c5bd24c54.jpg', '2023-03-05 16:39:25', '2023-03-05 16:39:25'),
(69, 69, 'item-6404c6acbf3cd.jpg', '2023-03-05 16:43:24', '2023-03-05 16:43:24'),
(70, 70, 'item-6404caba481a7.jpg', '2023-03-05 17:00:42', '2023-03-05 17:00:42'),
(71, 71, 'item-6404cbccdee73.jpg', '2023-03-05 17:05:16', '2023-03-05 17:05:16'),
(72, 72, 'item-6404ccb3d4cca.jpg', '2023-03-05 17:09:07', '2023-03-05 17:09:07'),
(73, 73, 'item-6404cdae6e3ac.jpg', '2023-03-05 17:13:18', '2023-03-05 17:13:18'),
(74, 74, 'item-6404ce361d66f.jpg', '2023-03-05 17:15:34', '2023-03-05 17:15:34'),
(75, 75, 'item-6404cf95df607.jpg', '2023-03-05 17:21:25', '2023-03-05 17:21:25'),
(76, 76, 'item-6404d04fb8dc7.jpg', '2023-03-05 17:24:31', '2023-03-05 17:24:31'),
(77, 77, 'item-6404d0c6aac41.jpg', '2023-03-05 17:26:30', '2023-03-05 17:26:30'),
(78, 78, 'item-6404d15501107.jpg', '2023-03-05 17:28:53', '2023-03-05 17:28:53'),
(79, 79, 'item-6404d1c1be262.jpg', '2023-03-05 17:30:41', '2023-03-05 17:30:41'),
(80, 80, 'item-6404d2a1f3c5b.jpg', '2023-03-05 17:34:25', '2023-03-05 17:34:25'),
(81, 81, 'item-6404d2f75f622.jpg', '2023-03-05 17:35:51', '2023-03-05 17:35:51'),
(82, 82, 'item-6404d3d7c3299.jpg', '2023-03-05 17:39:35', '2023-03-05 17:39:35'),
(83, 83, 'item-6404d429075b9.jpg', '2023-03-05 17:40:57', '2023-03-05 17:40:57'),
(84, 84, 'item-6404d49d13497.jpg', '2023-03-05 17:42:53', '2023-03-05 17:42:53'),
(85, 85, 'item-6404d4f00c8e2.jpg', '2023-03-05 17:44:16', '2023-03-05 17:44:16'),
(86, 86, 'item-6404d5b095015.jpg', '2023-03-05 17:47:28', '2023-03-05 17:47:28'),
(87, 87, 'item-6404d60b51a53.jpg', '2023-03-05 17:48:59', '2023-03-05 17:48:59'),
(88, 88, 'item-6404d6c418b35.jpg', '2023-03-05 17:52:04', '2023-03-05 17:52:04'),
(89, 89, 'item-6404d6efbc713.jpg', '2023-03-05 17:52:47', '2023-03-05 17:52:47'),
(90, 90, 'item-6404d75c3e9d6.jpg', '2023-03-05 17:54:36', '2023-03-05 17:54:36'),
(91, 91, 'item-6404d782bf68a.jpg', '2023-03-05 17:55:14', '2023-03-05 17:55:14'),
(92, 92, 'item-6404d80e9b3b2.jpg', '2023-03-05 17:57:34', '2023-03-05 17:57:34'),
(93, 93, 'item-6404d84ac8d4a.jpg', '2023-03-05 17:58:34', '2023-03-05 17:58:34'),
(94, 94, 'item-6404dc1244a44.jpg', '2023-03-05 18:14:42', '2023-03-05 18:14:42'),
(95, 95, 'item-6404dc42cb0f1.jpg', '2023-03-05 18:15:30', '2023-03-05 18:15:30'),
(96, 96, 'item-6404dd745c3ba.jpg', '2023-03-05 18:20:36', '2023-03-05 18:20:36'),
(97, 97, 'item-6404dda077a02.jpg', '2023-03-05 18:21:20', '2023-03-05 18:21:20'),
(98, 98, 'item-6404de4f5f98b.jpg', '2023-03-05 18:24:15', '2023-03-05 18:24:15'),
(99, 99, 'item-6404de957450b.jpg', '2023-03-05 18:25:25', '2023-03-05 18:25:25'),
(100, 100, 'item-6404defa857c5.jpg', '2023-03-05 18:27:06', '2023-03-05 18:27:06'),
(101, 101, 'item-6404df21eae3d.jpg', '2023-03-05 18:27:45', '2023-03-05 18:27:45'),
(102, 102, 'item-6404dfc13acae.jpg', '2023-03-05 18:30:25', '2023-03-05 18:30:25'),
(103, 103, 'item-6404dfecc1989.jpg', '2023-03-05 18:31:08', '2023-03-05 18:31:08'),
(104, 104, 'item-6404e0393f4c1.jpg', '2023-03-05 18:32:25', '2023-03-05 18:32:25'),
(105, 105, 'item-6404e07878657.jpg', '2023-03-05 18:33:28', '2023-03-05 18:33:28'),
(106, 106, 'item-6404e106528f0.jpg', '2023-03-05 18:35:50', '2023-03-05 18:35:50'),
(107, 107, 'item-6404e131f0a82.jpg', '2023-03-05 18:36:33', '2023-03-05 18:36:33'),
(108, 108, 'item-6404e53bcae6c.jpg', '2023-03-05 18:53:47', '2023-03-05 18:53:47'),
(109, 109, 'item-6404e595bbe58.jpg', '2023-03-05 18:55:17', '2023-03-05 18:55:17'),
(110, 110, 'item-6404e61e1145c.jpg', '2023-03-05 18:57:34', '2023-03-05 18:57:34'),
(111, 111, 'item-6404e68c1ccaa.jpg', '2023-03-05 18:59:24', '2023-03-05 18:59:24'),
(112, 112, 'item-6404e72a6d407.jpg', '2023-03-05 19:02:02', '2023-03-05 19:02:02'),
(113, 113, 'item-6404e77c5bf59.jpg', '2023-03-05 19:03:24', '2023-03-05 19:03:24'),
(114, 114, 'item-6404e7d9415ad.jpg', '2023-03-05 19:04:57', '2023-03-05 19:04:57'),
(115, 115, 'item-6404e82e9096e.jpg', '2023-03-05 19:06:22', '2023-03-05 19:06:22'),
(116, 116, 'item-6404e8b209407.jpg', '2023-03-05 19:08:34', '2023-03-05 19:08:34'),
(117, 117, 'item-6404e94bc60d3.jpg', '2023-03-05 19:11:07', '2023-03-05 19:11:07'),
(118, 118, 'item-6404eb37e5fdf.jpg', '2023-03-05 19:19:19', '2023-03-05 19:19:19'),
(119, 119, 'item-6404eb68a9dff.jpg', '2023-03-05 19:20:08', '2023-03-05 19:20:08'),
(120, 120, 'item-6404eb93244c4.jpg', '2023-03-05 19:20:51', '2023-03-05 19:20:51'),
(121, 121, 'item-6404ebb5f33b0.jpg', '2023-03-05 19:21:25', '2023-03-05 19:21:25'),
(122, 122, 'item-6404fe2864f44.png', '2023-03-05 20:40:08', '2023-03-05 20:40:08'),
(123, 123, 'item-6404fe7eaad1c.png', '2023-03-05 20:41:34', '2023-03-05 20:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_06_05_070854_create_categories_table', 2),
(7, '2020_06_05_103122_create_item_table', 3),
(9, '2020_06_05_110205_create_item_images_table', 4),
(10, '2020_06_05_125414_create_ingredients_table', 5),
(14, '2020_06_06_055110_create_cart_table', 6),
(16, '2020_06_07_051607_create_order_table', 7),
(18, '2020_06_07_063234_create_order_details_table', 8),
(19, '2020_06_16_094849_create_ratting_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(2, 'App\\User', 19),
(2, 'App\\User', 20),
(2, 'App\\User', 21),
(2, 'App\\User', 22),
(2, 'App\\User', 23),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 26),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 35),
(2, 'App\\User', 36),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 39),
(2, 'App\\User', 40),
(2, 'App\\User', 41),
(2, 'App\\User', 44),
(2, 'App\\User', 45),
(2, 'App\\User', 46),
(2, 'App\\User', 47),
(2, 'App\\User', 48),
(2, 'App\\User', 49),
(2, 'App\\User', 50),
(2, 'App\\User', 51),
(2, 'App\\User', 52),
(2, 'App\\User', 53),
(2, 'App\\User', 54),
(2, 'App\\User', 56),
(2, 'App\\User', 57),
(2, 'App\\User', 58),
(2, 'App\\User', 59),
(2, 'App\\User', 60),
(2, 'App\\User', 61),
(2, 'App\\User', 62),
(2, 'App\\User', 63),
(2, 'App\\User', 64),
(2, 'App\\User', 65),
(2, 'App\\User', 66),
(2, 'App\\User', 68),
(2, 'App\\User', 69),
(2, 'App\\User', 70),
(2, 'App\\User', 71),
(2, 'App\\User', 72),
(2, 'App\\User', 73),
(2, 'App\\User', 74),
(2, 'App\\User', 75),
(2, 'App\\User', 79),
(2, 'App\\User', 80),
(2, 'App\\User', 81),
(2, 'App\\User', 82),
(2, 'App\\User', 83),
(2, 'App\\User', 84),
(2, 'App\\User', 85),
(2, 'App\\User', 86),
(2, 'App\\User', 87),
(2, 'App\\User', 88),
(2, 'App\\User', 89),
(2, 'App\\User', 90),
(2, 'App\\User', 91),
(2, 'App\\User', 92),
(2, 'App\\User', 93),
(2, 'App\\User', 94),
(2, 'App\\User', 95),
(2, 'App\\User', 96),
(2, 'App\\User', 97),
(2, 'App\\User', 98),
(2, 'App\\User', 99),
(2, 'App\\User', 100),
(2, 'App\\User', 101),
(2, 'App\\User', 102),
(2, 'App\\User', 103),
(2, 'App\\User', 104),
(2, 'App\\User', 105),
(2, 'App\\User', 106),
(2, 'App\\User', 107),
(2, 'App\\User', 108),
(2, 'App\\User', 109),
(2, 'App\\User', 110),
(2, 'App\\User', 111),
(2, 'App\\User', 112),
(2, 'App\\User', 113),
(2, 'App\\User', 114),
(2, 'App\\User', 115),
(2, 'App\\User', 116),
(2, 'App\\User', 117),
(2, 'App\\User', 118),
(2, 'App\\User', 119),
(2, 'App\\User', 120),
(2, 'App\\User', 121),
(2, 'App\\User', 122),
(2, 'App\\User', 123),
(2, 'App\\User', 124),
(2, 'App\\User', 125),
(2, 'App\\User', 126),
(2, 'App\\User', 127),
(2, 'App\\User', 128),
(2, 'App\\User', 129),
(2, 'App\\User', 130),
(2, 'App\\User', 131),
(2, 'App\\User', 132),
(2, 'App\\User', 133),
(2, 'App\\User', 134),
(2, 'App\\User', 135),
(2, 'App\\User', 136),
(2, 'App\\User', 137),
(2, 'App\\User', 138),
(2, 'App\\User', 139),
(2, 'App\\User', 140),
(2, 'App\\User', 141),
(2, 'App\\User', 142);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `order_total` varchar(255) NOT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Delivery , 2 = Pickup',
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `lat` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `promocode` varchar(50) DEFAULT NULL,
  `discount_amount` varchar(50) DEFAULT NULL,
  `discount_pr` varchar(50) DEFAULT NULL,
  `tax` varchar(50) DEFAULT NULL,
  `tax_amount` varchar(50) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `order_from` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `is_notification` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Unread , 2 = Read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `order_number`, `user_id`, `driver_id`, `order_total`, `razorpay_payment_id`, `payment_type`, `order_type`, `address`, `pincode`, `lat`, `lang`, `building`, `landmark`, `promocode`, `discount_amount`, `discount_pr`, `tax`, `tax_amount`, `delivery_charge`, `order_notes`, `order_from`, `status`, `is_notification`, `created_at`, `updated_at`) VALUES
(29, '2086249BI9', 2, NULL, '388', NULL, '0', 1, 'Noida, Uttar Pradesh, India', '201308', '28.5355161', '77.3910265', 'a', 'a', NULL, '0.00', NULL, '0', '0', '39', NULL, 'web', 1, 2, '2023-03-24 12:16:00', '2023-03-24 12:20:34'),
(30, 'S7ANE8Z372', 14, NULL, '128', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', '343', 'mandir', NULL, '0.00', NULL, '0', '0', '39', NULL, 'web', 1, 1, '2023-03-25 03:07:55', '2023-03-25 03:07:55'),
(31, 'T8RCE8T0Z9', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'mrs', 'web', 1, 1, '2023-03-31 08:16:30', '2023-03-31 08:16:30'),
(32, 'PCRQ4F2KT7', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'mrs', 'web', 1, 1, '2023-03-31 08:16:35', '2023-03-31 08:16:35'),
(33, '2O7S4VNM2M', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'mrs', 'web', 1, 1, '2023-03-31 08:16:44', '2023-03-31 08:16:44'),
(34, '6L0LFRIIQ5', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'mrs', 'web', 1, 1, '2023-03-31 08:16:55', '2023-03-31 08:16:55'),
(35, '7MIK9JUYHG', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:17:05', '2023-03-31 08:17:05'),
(36, 'LNOXWGQYV0', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'orde', 'web', 1, 1, '2023-03-31 08:17:31', '2023-03-31 08:17:31'),
(37, 'I27LMRMJQ7', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:17:57', '2023-03-31 08:17:57'),
(38, '4NVM37VQ8U', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:18:09', '2023-03-31 08:18:09'),
(39, 'KD8BBYEIOI', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:18:16', '2023-03-31 08:18:16'),
(40, '259COJ27SF', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'pull', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:18:44', '2023-03-31 08:18:44'),
(41, 'GZ74NPQQ6E', 14, NULL, '324', NULL, '0', 1, 'Dankaur railway station, Dankaur, Uttar Pradesh, India', '203201', '28.4119995', '77.6454449', 'Gautam Buddha Nagar', 'pull', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:19:06', '2023-03-31 08:19:06'),
(42, 'KO9LJBX1TZ', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:09', '2023-03-31 08:25:09'),
(43, 'INVZ4M5YIB', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:37', '2023-03-31 08:25:37'),
(44, 'Y3HBV714A1', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:41', '2023-03-31 08:25:41'),
(45, 'ZZVGBOB56Z', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:43', '2023-03-31 08:25:43'),
(46, 'XAXY8Z6BDE', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:48', '2023-03-31 08:25:48'),
(47, 'Q4OIA4I7KV', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:53', '2023-03-31 08:25:53'),
(48, 'IH3VX25843', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:25:59', '2023-03-31 08:25:59'),
(49, 'FSZF8WJSF6', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:26:01', '2023-03-31 08:26:01'),
(50, '5G6UI3XEYB', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:26:25', '2023-03-31 08:26:25'),
(51, '1D8EPBEK0A', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:26:37', '2023-03-31 08:26:37'),
(52, 'P63FUN6W90', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:26:59', '2023-03-31 08:26:59'),
(53, 'BYFB3OL9NH', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:05', '2023-03-31 08:27:05'),
(54, 'D0TDBX7MJI', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:10', '2023-03-31 08:27:10'),
(55, '889RGSR7FO', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:17', '2023-03-31 08:27:17'),
(56, 'K928QKI337', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:23', '2023-03-31 08:27:23'),
(57, '32JRAK96MP', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:27', '2023-03-31 08:27:27'),
(58, 'HV80R30TRC', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:31', '2023-03-31 08:27:31'),
(59, 'O3S3Q15LSZ', 14, NULL, '339', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'dankaur', 'dankaur', NULL, '0.00', NULL, '0', '0', '39', 'order', 'web', 1, 1, '2023-03-31 08:27:36', '2023-03-31 08:27:36'),
(60, '9J7B30XP0C', 5, NULL, '638', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'Gate no 1', 'Vivo', NULL, '0.00', NULL, '0', '0', '39', 'My order', 'web', 1, 1, '2023-05-17 09:21:43', '2023-05-17 09:21:43'),
(61, 'D609U5AGSJ', 5, NULL, '638', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'Gate no 1', 'Vivo', NULL, '0.00', NULL, '0', '0', '39', 'My order', 'web', 1, 1, '2023-05-17 09:21:55', '2023-05-17 09:21:55'),
(62, '6SWJEKXCZX', 5, NULL, '638', NULL, '0', 1, 'Dankaur, Uttar Pradesh, India', '203201', '28.3476974', '77.553344', 'Gate no 1', 'Vivo', NULL, '0.00', NULL, '0', '0', '39', 'My order', 'web', 1, 1, '2023-05-17 09:22:06', '2023-05-17 09:22:06'),
(63, 'SSP7PNXPCM', 30, NULL, '128', NULL, '0', 1, 'Kanarsi, Uttar Pradesh, India', '203201', '28.3733403', '77.58988070000001', '00', 'Shiv Mandir', NULL, '0.00', NULL, '0', '0', '39', NULL, 'web', 1, 1, '2023-05-30 17:40:32', '2023-05-30 17:40:32'),
(64, 'RWG636XXV5', 30, NULL, '128', NULL, '0', 1, 'Kanarsi, Uttar Pradesh, India', '203201', '28.3733403', '77.58988070000001', '00', 'Shiv Mandir', NULL, '0.00', NULL, '0', '0', '39', NULL, 'web', 1, 1, '2023-05-30 17:40:42', '2023-05-30 17:40:42'),
(65, 'TZVG3MQFKK', 30, NULL, '174', NULL, '0', 1, 'Kanarsi, Uttar Pradesh, India', '203201', '28.3733403', '77.58988070000001', '000', 'Shiv Mandir', NULL, '0.00', NULL, '0', '0', '39', 'Thoda jaldi', 'web', 5, 1, '2023-05-30 17:42:17', '2023-05-30 17:42:58'),
(66, 'H2VJXCYNC4', 30, NULL, '174', NULL, '0', 1, 'Kanarsi, Uttar Pradesh, India', '203201', '28.3733403', '77.58988070000001', '000', 'Shiv Mandir', NULL, '0.00', NULL, '0', '0', '39', 'Thoda jaldi', 'web', 1, 1, '2023-05-30 17:42:19', '2023-05-30 17:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `item_notes` text DEFAULT NULL,
  `addons_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `user_id`, `order_id`, `item_id`, `price`, `qty`, `item_notes`, `addons_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, '500', '1', NULL, NULL, '2023-03-01 07:54:39', '2023-03-01 07:54:39'),
(2, 4, 2, 2, '1000', '2', NULL, NULL, '2023-03-01 15:47:01', '2023-03-01 15:47:01'),
(3, 5, 3, 2, '500', '1', NULL, NULL, '2023-03-01 17:22:42', '2023-03-01 17:22:42'),
(4, 2, 4, 8, '250', '1', NULL, NULL, '2023-03-02 16:34:12', '2023-03-02 16:34:12'),
(5, 2, 4, 6, '180', '1', NULL, NULL, '2023-03-02 16:34:12', '2023-03-02 16:34:12'),
(6, 2, 5, 10, '480', '1', NULL, NULL, '2023-03-02 16:36:37', '2023-03-02 16:36:37'),
(7, 5, 6, 12, '89', '1', NULL, NULL, '2023-03-04 06:30:39', '2023-03-04 06:30:39'),
(8, 5, 7, 12, '89', '1', NULL, NULL, '2023-03-06 04:39:53', '2023-03-06 04:39:53'),
(9, 20, 8, 30, '700', '7', NULL, NULL, '2023-03-06 13:41:10', '2023-03-06 13:41:10'),
(10, 21, 9, 17, '299', '1', NULL, NULL, '2023-03-07 13:01:46', '2023-03-07 13:01:46'),
(11, 28, 10, 12, '356', '4', NULL, NULL, '2023-03-08 08:03:33', '2023-03-08 08:03:33'),
(12, 30, 11, 18, '299', '1', NULL, NULL, '2023-03-08 11:05:26', '2023-03-08 11:05:26'),
(13, 2, 12, 123, '349', '1', NULL, NULL, '2023-03-13 07:37:51', '2023-03-13 07:37:51'),
(14, 2, 13, 122, '299', '1', NULL, NULL, '2023-03-13 07:39:21', '2023-03-13 07:39:21'),
(15, 14, 14, 12, '89', '1', NULL, NULL, '2023-03-19 03:20:52', '2023-03-19 03:20:52'),
(16, 51, 15, 22, '135', '1', NULL, NULL, '2023-03-21 13:32:16', '2023-03-21 13:32:16'),
(17, 51, 15, 27, '145', '1', NULL, NULL, '2023-03-21 13:32:16', '2023-03-21 13:32:16'),
(18, 2, 16, 122, '299', '1', NULL, NULL, '2023-03-21 18:59:31', '2023-03-21 18:59:31'),
(19, 2, 18, 23, '135', '1', NULL, NULL, '2023-03-22 04:10:42', '2023-03-22 04:10:42'),
(20, 2, 19, 123, '698', '2', NULL, NULL, '2023-03-22 04:22:57', '2023-03-22 04:22:57'),
(21, 2, 20, 122, '299', '1', NULL, NULL, '2023-03-22 04:27:54', '2023-03-22 04:27:54'),
(22, 2, 21, 122, '299', '1', NULL, NULL, '2023-03-22 04:29:37', '2023-03-22 04:29:37'),
(23, 2, 22, 123, '349', '1', NULL, NULL, '2023-03-22 05:48:47', '2023-03-22 05:48:47'),
(24, 2, 23, 122, '299', '1', NULL, NULL, '2023-03-22 05:51:38', '2023-03-22 05:51:38'),
(25, 5, 24, 12, '89', '1', NULL, NULL, '2023-03-23 11:00:03', '2023-03-23 11:00:03'),
(26, 14, 25, 12, '89', '1', NULL, NULL, '2023-03-23 14:08:03', '2023-03-23 14:08:03'),
(27, 2, 26, 123, '349', '1', NULL, NULL, '2023-03-24 10:18:31', '2023-03-24 10:18:31'),
(28, 2, 27, 122, '299', '1', NULL, NULL, '2023-03-24 10:41:06', '2023-03-24 10:41:06'),
(29, 2, 28, 31, '199', '1', NULL, NULL, '2023-03-24 10:56:07', '2023-03-24 10:56:07'),
(30, 2, 29, 123, '349', '1', NULL, NULL, '2023-03-24 12:16:00', '2023-03-24 12:16:00'),
(31, 14, 30, 12, '89', '1', NULL, NULL, '2023-03-25 03:07:55', '2023-03-25 03:07:55'),
(32, 14, 31, 3, '285', '1', NULL, NULL, '2023-03-31 08:16:30', '2023-03-31 08:16:30'),
(33, 14, 42, 4, '300', '1', NULL, NULL, '2023-03-31 08:25:09', '2023-03-31 08:25:09'),
(34, 5, 60, 28, '599', '1', NULL, NULL, '2023-05-17 09:21:43', '2023-05-17 09:21:43'),
(35, 30, 63, 12, '89', '1', NULL, NULL, '2023-05-30 17:40:32', '2023-05-30 17:40:32'),
(36, 30, 65, 21, '135', '1', NULL, NULL, '2023-05-30 17:42:17', '2023-05-30 17:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `is_available` int(11) NOT NULL,
  `test_public_key` text NOT NULL,
  `test_secret_key` text NOT NULL,
  `live_public_key` text DEFAULT NULL,
  `live_secret_key` text DEFAULT NULL,
  `environment` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `payment_name`, `is_available`, `test_public_key`, `test_secret_key`, `live_public_key`, `live_secret_key`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'Stripe', 2, '', '', NULL, NULL, 1, '2020-12-29 07:45:15', '2023-03-01 08:07:37'),
(3, 'COD', 1, '', '', NULL, NULL, 1, '2020-12-29 07:54:50', '2020-12-29 09:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `pincode`
--

CREATE TABLE `pincode` (
  `id` bigint(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pincode`
--

INSERT INTO `pincode` (`id`, `pincode`, `created_at`, `updated_at`) VALUES
(3, '203201', '2023-03-04 06:25:48', '2023-03-04 06:25:48'),
(4, '203202', '2023-03-05 00:23:44', '2023-03-05 00:23:44'),
(5, '203205', '2023-03-05 00:23:56', '2023-03-05 00:23:56'),
(6, '203204', '2023-03-05 00:24:09', '2023-03-05 00:24:09'),
(7, '203203', '2023-03-05 00:24:35', '2023-03-05 00:24:35'),
(8, '201303', '2023-03-05 00:25:29', '2023-03-05 00:25:29'),
(9, '201310', '2023-03-05 00:26:08', '2023-03-05 00:26:08'),
(10, '201307', '2023-03-18 15:32:00', '2023-03-18 15:32:00'),
(11, '201306', '2023-03-18 15:32:15', '2023-03-18 15:32:15'),
(12, '203209', '2023-03-18 15:33:17', '2023-03-18 15:33:17'),
(13, '201308', '2023-03-18 15:33:41', '2023-03-18 15:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `privacypolicy_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `privacypolicy_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Privacy Policy&nbsp;</strong></p>', '2020-10-13 12:37:35', '2023-03-01 08:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `promocode`
--

CREATE TABLE `promocode` (
  `id` bigint(20) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_code` varchar(20) NOT NULL,
  `offer_amount` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratting`
--

CREATE TABLE `ratting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ratting` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratting`
--

INSERT INTO `ratting` (`id`, `user_id`, `ratting`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, '5', '“I was so impressed with my breakfast this morning! I tried the Pizza, and my friend got the Cheeseburger. We both finished our whole plates and were so impressed with the quality of the food and the short amount of time it took to receive it. Our food wa', '2023-03-01 08:04:49', '2023-03-01 08:04:49'),
(2, 12, '5', 'nyc', '2023-03-06 02:13:02', '2023-03-06 02:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `label` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19'),
(2, 'user', 'User', 'web', '2020-04-15 01:28:19', '2020-04-15 01:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'GET 35% OFF', 'Get The Best Food From Food Lover!', 'slider-63ff360c66657.png', '2023-03-01 05:55:00', '2023-03-01 05:55:00'),
(2, 'Best Cake', 'Stay Home & Delivered Your Foods', 'slider-63ff364a940df.png', '2023-03-01 05:56:02', '2023-03-01 05:56:02'),
(3, 'Special Food Menu', 'Enjoy A Delicious Food Menu Don\'t Miss The Deal', 'slider-63ff36805b24a.png', '2023-03-01 05:56:56', '2023-03-01 05:56:56'),
(4, 'Flat 20% Discount', 'The Real Taste Of Indian Food!', 'slider-63ff369b1a624.png', '2023-03-01 05:57:23', '2023-03-01 05:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `termscondition_content` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `termscondition_content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>YOU MRS FOOD</strong></p>', '2020-10-13 12:37:35', '2023-03-01 08:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `open_time` varchar(20) NOT NULL,
  `close_time` varchar(20) NOT NULL,
  `always_close` int(11) NOT NULL DEFAULT 2 COMMENT '1 = Yes , 2 = No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `day`, `open_time`, `close_time`, `always_close`, `created_at`, `updated_at`) VALUES
(1, 'Monday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13'),
(2, 'Tuesday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13'),
(3, 'Wednesday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13'),
(4, 'Thursday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13'),
(5, 'Friday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13'),
(6, 'Saturday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13'),
(7, 'Sunday', '12:00am', '11:30pm', 2, '2023-03-05 20:46:13', '2023-03-05 20:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_number` varchar(50) DEFAULT NULL,
  `wallet` varchar(20) NOT NULL,
  `payment_id` text DEFAULT NULL,
  `order_type` int(11) NOT NULL,
  `transaction_type` varchar(255) NOT NULL COMMENT '1 = Cancelled Order, 2 = Order Confirmed, 3 = Referral',
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `profile_image` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_type` varchar(10) NOT NULL,
  `google_id` text DEFAULT NULL,
  `facebook_id` text DEFAULT NULL,
  `type` int(11) NOT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `delivery_charge` varchar(50) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `max_order_qty` int(11) DEFAULT NULL,
  `min_order_amount` int(11) DEFAULT NULL,
  `max_order_amount` int(11) DEFAULT NULL,
  `lat` text DEFAULT NULL,
  `lang` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `firebase` text DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `token` longtext NOT NULL,
  `referral_amount` varchar(99) DEFAULT NULL,
  `wallet` varchar(50) DEFAULT '00',
  `referral_code` varchar(10) DEFAULT NULL,
  `is_available` int(11) NOT NULL DEFAULT 1 COMMENT '1 = Yes , 2 = No',
  `otp` varchar(6) DEFAULT NULL,
  `is_verified` int(11) DEFAULT NULL COMMENT '1 = Yes , 2 = No',
  `purchase_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `profile_image`, `password`, `login_type`, `google_id`, `facebook_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'mrspizzacake@gmail.com', '7065893906', 'unknown.png', '$2y$10$Npfs/eGDkzXtx2fSSeiV5.e2xLf2ZC1D47ODYWbODbu90FEPrFURC', 'email', NULL, NULL,  '2020-06-05 07:21:20', '2024-01-18 05:03:05'),
(2, 'S K Rai', 'skrairhce@gmail.com', '7065893906', 'unknown.png', '$2y$10$Npfs/eGDkzXtx2fSSeiV5.e2xLf2ZC1D47ODYWbODbu90FEPrFURC', 'email', NULL, NULL,  '2023-03-01 07:50:40', '2023-03-11 08:15:07'),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_item_id_foreign` (`item_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_images_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pincode`
--
ALTER TABLE `pincode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocode`
--
ALTER TABLE `promocode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratting`
--
ALTER TABLE `ratting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratting_user_id_foreign` (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pincode`
--
ALTER TABLE `pincode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `promocode`
--
ALTER TABLE `promocode`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratting`
--
ALTER TABLE `ratting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
