-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 02:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbpos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image_path`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Kay beauty', 'KB  manufactures and markets a wide range of skincare, makeup, fragrance, and hair care products', 'uploads/brands/1.jpg?v=1645066502', 1, 0, '2022-02-17 10:55:02'),
(2, 'test', 'test', NULL, 1, 1, '2022-02-17 10:57:41'),
(3, 'mamaearth', 'mamaearth manufactures and markets skin, sun, lip and deodorant products', 'uploads/brands/3.jpg?v=1645066772', 1, 0, '2022-02-17 10:59:32'),
(4, 'Sugar', 'Sugar cosmetics manufactures and markets face and skin care products', 'uploads/brands/4.jpg?v=1645066818', 1, 0, '2022-02-17 11:00:18'),
(5, 'Lakme', 'A global personal care brand by Unilever, Lakme product categories include makeover, soaps, shower gels, bath products, shampoos, and conditioners. Lux is a strong advocate of sustainable causes and is sold in more than 100 countries worldwide.', 'uploads/brands/5.jpg?v=1645066872', 1, 0, '2022-02-17 11:01:12'),
(6, 'Maybelline', 'Maybelline is a direct sales company operating in the skin, body, fragrance, make-up, sun care and fashion markets. A leading company within the direct sales market, Avon has millions of beauty advisors worldwide and recently moved its headquarters from the U.S. to the UK.', 'uploads/brands/6.jpg?v=1645066909', 1, 0, '2022-02-17 11:01:49'),
(7, 'Iba', 'Iba beauty', NULL, 1, 0, '2022-06-09 20:06:42'),
(8, 'milap', 'milap', NULL, 1, 0, '2022-06-09 21:22:12'),
(9, 'avon', 'avon', NULL, 1, 0, '2022-06-11 16:26:45'),
(10, 'swiss beauty', 'swiss beauty', NULL, 1, 0, '2022-06-11 16:27:17'),
(11, 'Biotique', 'Biotique', NULL, 1, 0, '2022-06-11 16:29:01'),
(12, 'Bluesky', 'Bluesky', NULL, 1, 0, '2022-06-14 13:56:52'),
(13, 'Colorbar', 'colorbar', NULL, 1, 0, '2022-06-14 13:59:23'),
(14, 'Lacto calamine', 'qifhe', NULL, 1, 0, '2022-06-14 14:41:01'),
(15, 'nivea', 'nivea', NULL, 1, 0, '2022-06-20 12:20:42'),
(16, 'MAC', 'mac', NULL, 1, 0, '2022-07-03 17:37:35'),
(17, 'lotus', 'lotus', NULL, 1, 0, '2022-07-03 17:40:54'),
(18, 'The Body shop', 'tbs', NULL, 1, 0, '2022-07-03 17:52:51'),
(19, 'Olay', 'olay', NULL, 1, 0, '2022-07-03 18:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `client_id`, `inventory_id`, `price`, `quantity`, `date_created`) VALUES
(18, 3, 17, 510, 1, '2022-06-14 15:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Skin Care', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus.', 1, 0, '2022-02-17 11:27:11'),
(2, 'Eye care', 'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.', 1, 0, '2022-02-17 11:27:24'),
(3, 'Foundation', 'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.', 1, 0, '2022-02-17 11:27:45'),
(4, 'Perfumes', 'Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.', 1, 0, '2022-02-17 11:27:55'),
(5, 'Hair Care', 'Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo.', 1, 0, '2022-02-17 11:28:38'),
(6, 'Sun Care', 'Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.', 1, 0, '2022-02-17 11:29:00'),
(7, 'Primer', 'Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis.', 1, 0, '2022-02-17 11:29:19'),
(8, 'Lipsticks', 'Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.', 1, 0, '2022-02-17 11:29:38'),
(9, 'Compact', 'Donec eu porttitor quam. Etiam mollis consequat risus quis maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas', 1, 0, '2022-02-17 11:29:59'),
(10, 'test', 'test', 0, 1, '2022-02-17 11:31:18'),
(11, 'Concealer', 'To even the skin tone', 1, 0, '2022-06-09 19:54:26'),
(12, '5-12 years', 'Toddlers', 1, 0, '2022-06-14 13:58:03'),
(13, '13-19 years', 'Teenage', 1, 0, '2022-06-14 13:58:26'),
(14, '20-45 years', 'Adults', 1, 0, '2022-06-14 13:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `default_delivery_address`, `status`, `delete_flag`, `date_created`) VALUES
(2, 'Samantha Jane', 'Miller', 'Female', '09123456789', 'sam23@sample.com', '45bff2a14658fc9b21c6e5e9bf75186b', 'Sample Address', 1, 0, '2022-02-17 14:24:00'),
(3, 'Bharathi', 'R', 'Female', '8765431231', 'bharathipriyama@gmail.com', '845b37bd8546b52c1c716a908d971162', 'MIGA-374,Muthampalayam H.U-1\r\nRangampalayam post', 1, 0, '2022-06-09 20:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `complaints1`
--

CREATE TABLE `complaints1` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phoneno` varchar(10) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `complaint` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints1`
--

INSERT INTO `complaints1` (`firstname`, `lastname`, `email`, `phoneno`, `cname`, `complaint`) VALUES
('bharathi', 'r', 'bharu@gmail.com', '', 'lakme', 'Its very expensive\r\nIts not easily washable\r\nDelivery too late\r\nexp'),
('bharathi', 'r', 'bharu@gmail.com', '', 'lakme', 'Its very expensive\r\nIts not easily washable\r\nDelivery too late\r\nexp'),
('bharathi', 'r', 'bharu@gmail.com', '9172987331', 'lakme', 'Its very expensive\r\nIts not easily washable\r\nDelivery too late\r\nexp'),
('bharathi', 'r', 'bharu@gmail.com', '9172987331', 'lakme', 'Its very expensive\r\nIts not easily washable\r\nDelivery too late\r\nexp'),
('Bharathi', 'R', 'bharathipriyama@gmail.com', '9789250095', 'lakme', 'kllwhdk');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(30) NOT NULL,
  `variant` text NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL,
  `price` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `variant`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(1, 'Variant 1', 1, 10, 515, '2022-02-17 11:57:52', '2022-06-09 20:00:25'),
(2, 'Variant 2', 1, 5, 515, '2022-02-17 12:01:15', '2022-06-09 20:00:32'),
(4, 'Variant 1', 3, 25, 121, '2022-02-17 13:22:54', '2022-06-09 20:05:25'),
(5, 'Variant 2', 3, 25, 121, '2022-02-17 13:23:05', '2022-06-09 20:05:16'),
(6, 'Variant 1', 4, 100, 350, '2022-02-17 16:28:14', NULL),
(7, 'Variant 1', 5, 12, 136, '2022-06-09 21:20:02', NULL),
(8, 'Variant 1', 7, 5, 134, '2022-06-09 21:29:19', NULL),
(9, 'Variant 1', 6, 10, 199, '2022-06-09 21:29:42', NULL),
(10, 'Variant 1', 8, 3, 202, '2022-06-10 11:32:52', NULL),
(11, 'Variant 1', 9, 12, 160, '2022-06-10 11:36:37', NULL),
(12, 'Variant 1', 10, 12, 585, '2022-06-10 12:12:20', NULL),
(13, 'Variant 1', 11, 10, 360, '2022-06-10 12:15:59', NULL),
(14, 'Variant 1', 12, 10, 445, '2022-06-10 12:20:02', NULL),
(15, 'Variant 1', 13, 10, 221, '2022-06-10 12:24:14', NULL),
(16, 'Variant 1', 14, 10, 224, '2022-06-11 16:16:05', NULL),
(17, 'Variant 1', 15, 6, 510, '2022-06-11 16:19:14', NULL),
(18, 'Variant 1', 16, 10, 205, '2022-06-11 16:24:01', NULL),
(19, 'Variant 1', 17, 12, 248, '2022-06-11 16:31:18', NULL),
(20, 'Variant 1', 18, 1, 335, '2022-06-11 16:31:49', NULL),
(21, 'Variant 1', 19, 10, 225, '2022-06-11 16:42:53', NULL),
(22, 'Variant 1', 20, 12, 225, '2022-06-11 16:43:06', NULL),
(23, 'Variant 1', 21, 10, 635, '2022-06-12 20:34:25', NULL),
(24, 'Variant 1', 23, 10, 850, '2022-06-14 14:20:59', NULL),
(25, 'Variant 1', 24, 2, 675, '2022-06-14 14:21:12', NULL),
(26, 'Variant 1', 25, 10, 196, '2022-06-14 14:21:36', NULL),
(27, 'Variant 1', 27, 10, 96, '2022-06-14 14:21:49', NULL),
(28, 'Variant 1', 28, 12, 588, '2022-06-14 14:22:14', NULL),
(29, 'Variant 1', 30, 10, 162, '2022-06-14 14:22:41', NULL),
(30, 'Variant 1', 29, 10, 199, '2022-06-14 14:23:01', NULL),
(31, 'Variant 1', 31, 10, 160, '2022-06-14 14:43:59', NULL),
(32, 'Variant 1', 32, 10, 314, '2022-06-20 12:23:25', NULL),
(33, 'Variant 1', 33, 10, 499, '2022-07-03 17:15:54', NULL),
(34, 'Variant 1', 34, 10, 139, '2022-07-03 17:16:06', NULL),
(35, 'Variant 1', 35, 10, 435, '2022-07-03 17:21:05', NULL),
(36, 'Variant 1', 36, 10, 414, '2022-07-03 17:26:57', NULL),
(37, 'Variant 1', 37, 3, 130, '2022-07-03 17:30:53', NULL),
(38, 'Variant 1', 40, 10, 394, '2022-07-03 17:42:19', NULL),
(39, 'Variant 1', 41, 12, 2900, '2022-07-03 17:47:11', NULL),
(40, 'Variant 1', 26, 8, 299, '2022-07-03 17:48:41', NULL),
(41, 'Variant 1', 42, 10, 676, '2022-07-03 17:55:10', NULL),
(42, 'Variant 1', 43, 5, 633, '2022-07-03 17:55:25', NULL),
(43, 'Variant 1', 44, 10, 1781, '2022-07-03 17:57:34', NULL),
(44, 'Variant 1', 45, 10, 761, '2022-07-03 18:04:47', NULL),
(45, 'Variant 1', 46, 15, 2546, '2022-07-03 18:11:48', NULL),
(46, 'Variant 1', 47, 10, 1299, '2022-07-03 18:12:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
  `amount` double NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = pending,\r\n1= Packed,\r\n2 = Out for Delivery,\r\n3=Delivered,\r\n4=cancelled',
  `paid` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_code`, `client_id`, `delivery_address`, `payment_method`, `order_type`, `amount`, `status`, `paid`, `date_created`, `date_updated`) VALUES
(7, '20220600002', 3, 'MIGA-374,Muthampalayam H.U-1\r\nRangampalayam post', 'cod', 0, 670, 3, 1, '2022-06-11 16:32:53', '2022-06-11 16:34:21'),
(10, '20220600005', 3, 'MIGA-374,Muthampalayam H.U-1\r\nRangampalayam post', 'cod', 0, 588, 0, 1, '2022-06-14 14:24:27', '2022-06-14 14:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `inventory_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `inventory_id`, `quantity`, `price`, `total`) VALUES
(9, 7, 18, 2, 335, 670),
(12, 10, 28, 1, 588, 588);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `specs` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `specs`, `status`, `delete_flag`, `date_created`) VALUES
(1, 6, 3, 'Maybelline foundation', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Foundation&lt;/p&gt;', 1, 0, '2022-02-17 11:50:19'),
(2, 5, 7, 'test', '&lt;p&gt;test&lt;/p&gt;', 0, 1, '2022-02-17 11:54:02'),
(3, 5, 3, 'Lakme foundation', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;lakme foundation&lt;/p&gt;', 1, 0, '2022-02-17 13:22:33'),
(4, 7, 3, 'Iba foundation', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Iba foundation&lt;/p&gt;', 1, 0, '2022-02-17 16:27:41'),
(5, 5, 3, 'Lakme perfecting foundation', '&lt;p&gt;Foundation&lt;/p&gt;', 1, 0, '2022-06-09 21:19:28'),
(6, 8, 3, 'milap foundation', '&lt;p&gt;milap foundation&lt;/p&gt;', 1, 0, '2022-06-09 21:22:46'),
(7, 5, 7, 'Lakme aloe primer', '&lt;p&gt;Foundation&lt;/p&gt;', 1, 0, '2022-06-09 21:25:16'),
(8, 5, 9, 'Lakme compact', '&lt;p&gt;&lt;font color=&quot;#000000&quot; style=&quot;background-color: rgb(255, 0, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;compact&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;', 1, 0, '2022-06-10 11:32:28'),
(9, 5, 9, 'Lakme face it compact', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Weightless compact!&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;', 1, 0, '2022-06-10 11:36:00'),
(10, 5, 7, 'Lakme absolute primer', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(0, 255, 255);&quot;&gt;Primer!&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;', 1, 0, '2022-06-10 12:12:01'),
(11, 7, 7, 'Iba perfect primer', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 0);&quot;&gt;&lt;font color=&quot;#000000&quot;&gt;Perfect primer!&lt;/font&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;', 1, 0, '2022-06-10 12:15:32'),
(12, 6, 7, 'Maybelline fit me primer', '&lt;p&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(107, 173, 222);&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;Maybelline fit me primer&lt;/font&gt;&lt;/b&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-10 12:19:44'),
(13, 5, 8, 'Lakme matte lipstick', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Lakme matte lipstick&lt;/span&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-10 12:23:54'),
(14, 4, 8, 'Sugar cosmetics lipstick', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Sugar cosmetics lipstick!&lt;/span&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:15:38'),
(15, 6, 8, 'Maybelline lipstick', '&lt;p&gt;&lt;b&gt;&lt;i&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Maybelline lipstick!&lt;/span&gt;&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:18:50'),
(16, 5, 8, 'Lakme liquid lipstick', '&lt;p&gt;&lt;b&gt;&lt;i&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Lakme liquid lipstick&lt;/span&gt;&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:23:32'),
(17, 11, 8, 'Biotique lipstick', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Biotique lipstick&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:30:26'),
(18, 9, 8, 'Avon lipstick', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Avon lipstick&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:30:55'),
(19, 10, 8, 'Swiss beauty lipstick', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Swiss beauty lipstick&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:40:50'),
(20, 10, 8, 'Swiss beauty pink lipstick', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Swiss beauty pink lipstick!&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-11 16:42:37'),
(21, 5, 2, 'Lakme spotlight eyes', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Lakme spotlight eyes&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-12 20:34:01'),
(23, 12, 2, 'Bluesky eyeshadow', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Bluesky eyeshadow&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 13:57:28'),
(24, 13, 2, 'Colorbar eye shadow', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Colorbar eye shadow&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:00:02'),
(25, 10, 2, 'Swiss beauty eyeshadow', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Swiss beauty eyeshadow&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:00:52'),
(26, 6, 2, 'Maybelline mascara', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Maybelline mascara&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:01:31'),
(27, 5, 2, 'Lakme eyeliner', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Lakme eyeliner&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:02:31'),
(28, 5, 2, 'Lakme soft eyeshadow', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Lakme soft eyeshadow&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:03:23'),
(29, 6, 2, 'Maybelline hypercurl mascara', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Maybelline hypercurl mascara&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:04:36'),
(30, 6, 2, 'Maybelline liquid eyeliner', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Maybelline liquid eyeliner&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:05:18'),
(31, 14, 13, 'Lacto calamine lotion', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Lacto calamine lotion&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-14 14:43:18'),
(32, 15, 13, 'Nivea rose face wash', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Nivea rose face wash&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-06-20 12:21:30'),
(33, 11, 12, 'Biotique complete package', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Biotique complete package&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:14:19'),
(34, 11, 12, 'Biotique morning nectar', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Biotique morning nectar&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:15:04'),
(35, 11, 12, 'Biotique skincare routine', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Biotique skincare routine&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:20:45'),
(36, 11, 13, 'Biotique orange dark spot remover', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Biotique orange dark spot remover&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:26:28'),
(37, 11, 12, 'Biotique Bio Bhringraj Therapeutic Oil For Falling Hair', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Biotique Bio Bhringraj Therapeutic Oil For Falling Hair&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:30:29'),
(38, 11, 12, 'Bio berry lip balm', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Bio berry lip balm&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:33:39'),
(39, 16, 14, 'MAC loose powder', '&lt;p&gt;&lt;b&gt;&lt;i&gt;MAC loose powder&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:38:40'),
(40, 17, 14, 'Lotus tinted moisturizer', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Lotus tinted moisturizer&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:41:49'),
(41, 16, 14, 'M.A.C Studio Fix Fluid SPF 15 - NW13', '&lt;h1 class=&quot;css-1gc4x7i&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0.25rem; -webkit-tap-highlight-color: transparent; font-size: 20px; line-height: 24px; color: rgb(0, 19, 37); font-family: Inter, Roboto, Arial, sans-serif;&quot;&gt;&lt;b&gt;&lt;i&gt;M.A.C Studio Fix Fluid SPF 15 - NW13&lt;/i&gt;&lt;/b&gt;&lt;/h1&gt;', 1, 0, '2022-07-03 17:46:48'),
(42, 18, 14, 'The Body shop tea tree toner', '&lt;p&gt;&lt;b&gt;&lt;i&gt;The Body shop tea tree toner&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:53:28'),
(43, 18, 14, 'The Body shop tea tree face wash', '&lt;p&gt;&lt;b&gt;&lt;i&gt;The Body shop tea tree face wash&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:54:50'),
(44, 18, 14, 'The Body shop glowing moisturizer', '&lt;p&gt;&lt;b&gt;&lt;i&gt;The Body shop glowing moisturizer&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 17:57:11'),
(45, 18, 14, 'The Body Shop Vitamin E Hydrating Toner', '&lt;p&gt;&lt;b&gt;&lt;i&gt;The Body Shop Vitamin E Hydrating Toner&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 18:04:21'),
(46, 18, 13, 'The Body Shop Skin Defence Multi-Protection Essence SPF 50PA++++', '&lt;h1 class=&quot;css-1gc4x7i&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0.25rem; -webkit-tap-highlight-color: transparent; font-size: 20px; line-height: 24px; color: rgb(0, 19, 37); font-family: Inter, Roboto, Arial, sans-serif;&quot;&gt;&lt;i&gt;&lt;b&gt;The Body Shop Skin Defence Multi-Protection Essence SPF 50PA++++&lt;/b&gt;&lt;/i&gt;&lt;/h1&gt;', 1, 0, '2022-07-03 18:08:04'),
(47, 19, 13, 'Olay Vitamin C super serum', '&lt;p&gt;&lt;b&gt;&lt;i&gt;Olay Vitamin C super serum&lt;/i&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2022-07-03 18:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `total_amount`, `date_created`) VALUES
(7, 7, 670, '2022-06-11 16:32:53'),
(10, 10, 588, '2022-06-14 14:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'The lush Cosmetics Shop'),
(6, 'short_name', 'TLC'),
(11, 'logo', 'uploads/logo-1645065716.jpg?v=1645065716'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1645065725.jpg?v=1645065725');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Priya', 'R', 'priya', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1645064505', NULL, 1, '2021-01-20 14:02:37', '2022-06-09 21:25:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
