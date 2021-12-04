-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2021 at 01:22 PM
-- Server version: 10.3.29-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khalil_workit`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double(20,17) NOT NULL DEFAULT 0.00000000000000000,
  `longitude` double(20,17) NOT NULL DEFAULT 0.00000000000000000,
  `default` tinyint(1) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `default`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', '59210 Dietrich Hill Apt. 653\nBaumbachburgh, OK 34052', 50.11444396000000000, 10.48380423000000000, 0, 8, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(2, 'Building', '59831 Anibal Club Suite 761\nLake Chandlerberg, RI 43340', 51.29208436000000000, 10.49922312000000000, 0, 4, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(3, 'Home', '81852 Lavonne Lakes\nBorermouth, DC 23080-9525', 51.97623398000000000, 11.97593773000000000, 0, 4, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(4, 'Home', '4555 Bria Lock\nSouth Kenyonmouth, ID 95515', 51.11067940000000000, 10.32699971000000000, 0, 1, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(5, 'Work', '1470 Herminia Hollow\nMorarmouth, NY 79673-5714', 50.60576706000000000, 11.42225888000000000, 0, 1, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(6, 'Workshop', 'Abu Dhabi, UAE', 24.48818000000000000, 54.35495000000000000, 0, 5, '2021-05-21 08:34:29', '2021-07-03 05:42:23'),
(7, 'Workshop', 'Abu Dhabi, UAE', 24.42589500000000000, 54.44262000000000000, 0, 2, '2021-05-21 08:34:29', '2021-07-03 05:43:37'),
(8, 'Office', '47236 Rowena Burgs\nMertzton, NJ 11172', 51.01412797000000000, 11.51423577000000000, 0, 8, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(9, 'Workshop', '498 London Flats Apt. 453\nPort Missouri, TX 50971-1205', 50.33554002000000000, 9.97600588000000000, 0, 6, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(10, 'Hotel', '62070 Penelope Island Apt. 400\nPort Austyn, NH 27809', 51.03367439000000000, 9.67754561000000000, 0, 7, '2021-05-21 08:34:29', '2021-05-21 08:34:29'),
(11, 'Office', '933 Mabelle Run\nWest Roscoe, ND 68862-4511', 50.69700183000000000, 9.06807811000000000, 0, 7, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(12, 'Hotel', '2199 Stanton Valley\nWest Kylie, WV 31485', 50.75477789000000000, 9.37810376000000000, 0, 8, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(13, 'Workshop', '2213 Glover Trace\nKlockoside, WI 28442-9553', 51.59242982000000000, 9.17006258000000000, 0, 3, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(14, 'Workshop', 'Dubai, United Arab Emirates', 24.96987500000000000, 55.06770600000000000, 0, 1, '2021-05-21 08:34:30', '2021-07-03 05:44:27'),
(15, 'Home', '89025 Nader Station\nRennerview, GA 59436', 51.76844791000000000, 10.52100589000000000, 0, 7, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(16, 'Office', '4603 Douglas Forges Suite 115\nFramifurt, NY 32582', 50.23000000000000000, 11.35000000000000000, 0, 3, '2021-05-21 08:34:30', '2021-07-14 08:18:10'),
(17, 'Home', 'Karachi, Pakistan', 24.86096600000000000, 66.99050100000000000, 0, 2, '2021-05-21 08:34:30', '2021-07-03 11:55:20'),
(18, 'Building', '379 Betsy Shores Suite 212\nOvaville, IL 58188', 51.30884777000000000, 10.79175235000000000, 0, 6, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(19, 'Work', '190 Vernie Key\nWest Dave, NV 25957', 51.89341586000000000, 9.76396024000000000, 0, 6, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(20, 'Work', '8669 Eloisa Mission\nClairemouth, WY 83725', 51.45987415000000000, 10.63959797000000000, 0, 3, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(22, 'Office Location', 'Dubai, United Arab Emirates', 25.26741000000000000, 55.29267900000000000, 1, 1, '2021-07-01 08:08:34', '2021-07-01 08:08:34'),
(23, NULL, 'Dubai - United Arab Emirates', 25.20000000000000000, 55.27000000000000000, 0, 3, '2021-07-14 08:32:09', '2021-09-17 21:50:46'),
(24, NULL, 'Abu Dhabi - United Arab Emirates', 24.45000000000000000, 54.38000000000000000, 0, 3, '2021-08-12 06:31:50', '2021-09-06 17:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(7, 'date_format', 'l jS F Y (H:i:s)'),
(8, 'language', 'en'),
(17, 'is_human_date_format', '1'),
(18, 'app_name', 'WorkIT'),
(19, 'app_short_description', 'Salon, Spa and Event Services'),
(20, 'mail_driver', 'smtp'),
(21, 'mail_host', 'smtp.gmail.com'),
(22, 'mail_port', '465'),
(23, 'mail_username', 'eazeofficework@gmail.com'),
(24, 'mail_password', 'aumbytwqlzlcgtrt'),
(25, 'mail_encryption', 'ssl'),
(26, 'mail_from_address', 'eazeofficework@gmail.com'),
(27, 'mail_from_name', 'EAZE'),
(30, 'timezone', 'Asia/Karachi'),
(32, 'theme_contrast', 'light'),
(33, 'theme_color', 'primary'),
(34, 'app_logo', 'ae2487f3-0bb9-4064-ae93-cfec7b927d84'),
(35, 'nav_color', 'navbar-dark navbar-navy'),
(38, 'logo_bg_color', 'text-light  navbar-navy'),
(66, 'default_role', 'admin'),
(68, 'facebook_app_id', '1448014235579708'),
(69, 'facebook_app_secret', '133a86c64dedccdbd0493ac8cd2c3bfc'),
(71, 'twitter_app_id', 'twitter'),
(72, 'twitter_app_secret', 'twitter 1'),
(74, 'google_app_id', '1097037619229-adchqfr8hk32f6lbpr33qm5aukruhib2.apps.googleusercontent.com'),
(75, 'google_app_secret', 'kHEq2roaJRU8gtMFw5gmcIg1'),
(77, 'enable_google', '1'),
(78, 'enable_facebook', '1'),
(93, 'enable_stripe', '0'),
(94, 'stripe_key', 'pk_test_pltzOnX3zsUZMoTTTVUL4O41'),
(95, 'stripe_secret', 'sk_test_o98VZx3RKDUytaokX4My3a20'),
(104, 'default_tax', '10'),
(107, 'default_currency', 'د.إ'),
(108, 'fixed_header', '1'),
(109, 'fixed_footer', '0'),
(110, 'fcm_key', 'AAAAVqbjUQw:APA91bH7bOg-7h37EYeH7veoSICPA8K0g5r8bW5Euaq5yXXkFEKb_WlNuRHNJnj6bCzz3COdTlU1NnyWEQ5HyPOsyIIYL7ztWUSfP2YQX_q4RijIorS18BO4Q6XktbgX-JUBCN_vfnPi'),
(111, 'enable_notifications', '1'),
(112, 'paypal_username', 'sb-z3gdq482047_api1.business.example.com'),
(113, 'paypal_password', '-'),
(114, 'paypal_secret', '-'),
(115, 'enable_paypal', '1'),
(116, 'main_color', '#B14265'),
(117, 'main_dark_color', '#F4841F'),
(118, 'second_color', '#08143A'),
(119, 'second_dark_color', '#CCCCDD'),
(120, 'accent_color', '#8C9DA8'),
(121, 'accent_dark_color', '#9999AA'),
(122, 'scaffold_dark_color', '#2C2C2C'),
(123, 'scaffold_color', '#FAFAFA'),
(124, 'google_maps_key', 'AIzaSyAyFpnMSGsPBifXSact7wljdCtiRfNVRWs'),
(125, 'mobile_language', 'en'),
(126, 'app_version', '1.0.0'),
(127, 'enable_version', '1'),
(128, 'default_currency_id', '8'),
(129, 'default_currency_code', 'AED'),
(130, 'default_currency_decimal_digits', '2'),
(131, 'default_currency_rounding', '0'),
(132, 'currency_right', '1'),
(133, 'distance_unit', 'km'),
(134, 'default_theme', 'light'),
(135, 'enable_twitter', '1'),
(136, 'firebase_api_key', 'AIzaSyC_Mw4SJUo8Iz6ID2UZsE6nv5X8oFg-AfU'),
(137, 'firebase_auth_domain', 'workit-7885a.firebaseapp.com'),
(138, 'firebase_database_url', 'https://workit-7885a-default-rtdb.firebaseio.com/'),
(139, 'firebase_project_id', 'workit-7885a'),
(140, 'firebase_storage_bucket', 'gs://workit-7885a.appspot.com'),
(141, 'firebase_messaging_sender_id', '372167102732'),
(142, 'firebase_app_id', '1:372167102732:android:c6e55ba37e93a4564bb929'),
(143, 'firebase_measurement_id', '0'),
(144, 'enable_paystack', '0'),
(145, 'paystack_key', 'pk_test_d754715fa3fa9048c9ab2832c440fb183d7c91f5'),
(146, 'paystack_secret', 'sk_test_66f87edaac94f8adcb28fdf7452f12ccc63d068d'),
(147, 'enable_flutterwave', '0'),
(148, 'flutterwave_key', 'FLWPUBK_TEST-d465ba7e4f6b86325cb9881835726402-X'),
(149, 'flutterwave_secret', 'FLWSECK_TEST-d3f8801da31fc093fb1207ea34e68fbb-X'),
(150, 'enable_stripe_fpx', '0'),
(151, 'stripe_fpx_key', 'pk_test_51IQ0zvB0wbAJesyPLo3x4LRgOjM65IkoO5hZLHOMsnO2RaF0NlH7HNOfpCkjuLSohvdAp30U5P1wKeH98KnwXkOD00mMDavaFX'),
(152, 'stripe_fpx_secret', 'sk_test_51IQ0zvB0wbAJesyPUtR7yGdyOR7aGbMQAX5Es9P56EDUEsvEQAC0NBj7JPqFuJEYXrvSCm5OPRmGaUQBswjkRxVB00mz8xhkFX'),
(153, '_method', 'PATCH'),
(154, '_token', 'WYcK3uibfRWL6Pkhqnf2gtnrKJDScbNEjV1PI96R'),
(156, 'name', 'Cash'),
(157, 'description', 'Click to pay cash when finish'),
(158, 'route', '/Cash'),
(159, 'order', '1'),
(160, 'default', '1'),
(161, 'razorpay_key', ''),
(162, 'razorpay_secret', ''),
(163, 'enable_razorpay', '0'),
(164, 'enabled', '1'),
(166, 'enable_wallet', '0'),
(167, 'enable_cash', '1'),
(168, 'latitude', '33.738045'),
(169, 'longitude', '73.084488'),
(170, 'phone', '+92320000000'),
(171, 'address', 'lahore, pakistan'),
(172, 'website', 'https://www.watchit.com'),
(173, 'email', 'info@watchit.com.pk'),
(174, 'web_theme_color', '#49AA22');

-- --------------------------------------------------------

--
-- Table structure for table `availability_hours`
--

CREATE TABLE `availability_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monday',
  `start_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `availability_hours`
--

INSERT INTO `availability_hours` (`id`, `day`, `start_at`, `end_at`, `data`, `e_provider_id`) VALUES
(51, 'wednesday', '11:25', '20:25', '{\"en\":null}', 15);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_service` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` smallint(6) DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_status_id` int(10) UNSIGNED DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `coupon` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_at` datetime DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `hint` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `e_provider`, `e_service`, `options`, `quantity`, `user_id`, `booking_status_id`, `address`, `payment_id`, `coupon`, `taxes`, `booking_at`, `start_at`, `ends_at`, `hint`, `cancel`, `created_at`, `updated_at`) VALUES
(1, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut 2\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 13, 1, '{\"id\":21,\"description\":\"my Office Sfftrdd\",\"address\":\"Lahore, Punjab, Pakistan\",\"latitude\":31.5203696,\"longitude\":74.35874729999999}', NULL, NULL, '[]', '2021-07-01 11:17:13', NULL, NULL, NULL, 0, '2021-07-01 06:18:22', '2021-07-01 06:18:22'),
(2, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 3, 7, '{\"id\":16,\"description\":\"Office\",\"address\":\"4603 Douglas Forges Suite 115\\nFramifurt, NY 32582\",\"latitude\":50.23,\"longitude\":11.35}', NULL, NULL, '[]', '2021-07-14 13:18:02', NULL, NULL, NULL, 1, '2021-07-14 08:18:10', '2021-07-14 08:32:42'),
(3, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', '[{\"id\":153,\"name\":\"20m\",\"price\":49.87},{\"id\":201,\"name\":\"Silver Color\",\"price\":20}]', 1, 3, 7, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2048493,\"longitude\":55.2707828}', NULL, NULL, '[]', '2021-07-14 13:31:40', NULL, NULL, NULL, 1, '2021-07-14 08:32:09', '2021-07-14 08:32:22'),
(4, '{\"id\":2,\"name\":\"Painting Beier, Lesch and Grimes\",\"phone_number\":\"1-272-457-0034\",\"mobile_number\":\"1-270-418-8302\"}', '{\"id\":48,\"name\":\"Wedding\",\"price\":26.75,\"discount_price\":21.01,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 3, 7, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2,\"longitude\":55.27}', NULL, NULL, '[]', '2021-07-14 14:45:10', NULL, NULL, NULL, 1, '2021-07-14 09:45:10', '2021-07-14 09:47:09'),
(5, '{\"id\":6,\"name\":\"Company For Lahore\",\"phone_number\":\"+1-678-293-6352\",\"mobile_number\":\"702-897-0399\"}', '{\"id\":42,\"name\":\"Make Over\",\"price\":17.88,\"discount_price\":16.42,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"02:00\"}', NULL, 1, 3, 3, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2048493,\"longitude\":55.2707828}', NULL, NULL, '[]', '2021-07-15 09:43:38', NULL, NULL, NULL, 0, '2021-07-15 04:43:48', '2021-07-15 04:49:35'),
(6, '{\"id\":6,\"name\":\"Company For Lahore\",\"phone_number\":\"+1-678-293-6352\",\"mobile_number\":\"702-897-0399\"}', '{\"id\":42,\"name\":\"Make Over\",\"price\":17.88,\"discount_price\":16.42,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"02:00\"}', NULL, 1, 3, 7, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2,\"longitude\":55.27}', NULL, NULL, '[]', '2021-07-15 11:25:08', NULL, NULL, NULL, 1, '2021-07-15 06:25:18', '2021-07-15 06:26:24'),
(7, '{\"id\":6,\"name\":\"Demo Company\",\"phone_number\":\"+1-678-293-6352\",\"mobile_number\":\"702-897-0399\"}', '{\"id\":42,\"name\":\"Make Over\",\"price\":17.88,\"discount_price\":16.42,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"02:00\"}', NULL, 1, 3, 6, '{\"id\":24,\"description\":null,\"address\":\"Abu Dhabi - United Arab Emirates\",\"latitude\":24.453884,\"longitude\":54.3773438}', NULL, NULL, '[]', '2021-08-12 11:30:45', '2021-09-06 17:01:47', '2021-09-06 17:01:52', NULL, 0, '2021-08-12 06:31:50', '2021-09-06 12:01:54'),
(8, '{\"id\":6,\"name\":\"Demo Company\",\"phone_number\":\"+1-678-293-6352\",\"mobile_number\":\"702-897-0399\"}', '{\"id\":42,\"name\":\"Make Over\",\"price\":17.88,\"discount_price\":16.42,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"02:00\"}', NULL, 1, 3, 6, '{\"id\":24,\"description\":null,\"address\":\"Abu Dhabi - United Arab Emirates\",\"latitude\":24.45,\"longitude\":54.38}', 2, NULL, '[]', '2021-09-06 20:37:29', '2021-09-08 10:16:09', '2021-09-08 10:16:12', NULL, 0, '2021-09-06 17:37:49', '2021-09-08 06:45:46'),
(10, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 3, 6, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2048493,\"longitude\":55.2707828}', 1, NULL, '[]', '2021-09-07 18:11:00', '2021-09-08 18:14:00', '2021-09-07 18:14:00', NULL, 0, '2021-09-07 13:11:55', '2021-09-16 06:04:37'),
(11, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 3, 1, '{\"id\":24,\"description\":null,\"address\":\"Abu Dhabi - United Arab Emirates\",\"latitude\":24.45,\"longitude\":54.38}', NULL, NULL, '[]', '2021-09-16 11:18:22', NULL, NULL, NULL, 0, '2021-09-16 06:18:45', '2021-09-16 06:18:45'),
(12, '{\"id\":6,\"name\":\"Demo Company\",\"phone_number\":\"+1-678-293-6352\",\"mobile_number\":\"702-897-0399\"}', '{\"id\":42,\"name\":\"Make Over\",\"price\":17.88,\"discount_price\":16.42,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"02:00\"}', '[{\"id\":174,\"name\":\"40m\",\"price\":35.85}]', 2, 3, 1, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2,\"longitude\":55.27}', NULL, NULL, '[]', '2021-09-18 00:50:34', NULL, NULL, NULL, 0, '2021-09-17 21:50:46', '2021-09-17 21:50:46'),
(13, '{\"id\":2,\"name\":\"Beier, Lesch and Grimes\",\"phone_number\":\"1-272-457-0034\",\"mobile_number\":\"1-270-418-8302\"}', '{\"id\":48,\"name\":\"Wedding\",\"price\":26.75,\"discount_price\":21.01,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', '[{\"id\":115,\"name\":\"40m\",\"price\":36.35}]', 1, 3, 1, '{\"id\":23,\"description\":null,\"address\":\"Dubai - United Arab Emirates\",\"latitude\":25.2,\"longitude\":55.27}', NULL, NULL, '[]', '2021-09-29 04:52:00', NULL, NULL, NULL, 0, '2021-09-17 21:52:42', '2021-09-17 21:52:42'),
(14, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 3, 1, '{\"id\":24,\"description\":null,\"address\":\"Abu Dhabi - United Arab Emirates\",\"latitude\":24.45,\"longitude\":54.38}', NULL, NULL, '[]', '2021-10-29 11:04:00', NULL, NULL, NULL, 0, '2021-10-29 06:04:49', '2021-10-29 06:06:30'),
(15, '{\"id\":1,\"name\":\"myPOS Company\",\"phone_number\":\"1-347-276-2536\",\"mobile_number\":\"916.694.7168\"}', '{\"id\":41,\"name\":\"Hair Cut\",\"price\":13.5,\"discount_price\":12.03,\"price_unit\":\"fixed\",\"quantity_unit\":\"\",\"duration\":\"05:00\"}', NULL, 1, 3, 1, '{\"id\":24,\"description\":null,\"address\":\"Abu Dhabi - United Arab Emirates\",\"latitude\":24.45,\"longitude\":54.38}', NULL, NULL, '[]', '2021-10-29 16:04:00', NULL, NULL, NULL, 0, '2021-10-29 11:05:02', '2021-10-29 11:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `booking_statuses`
--

CREATE TABLE `booking_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_statuses`
--

INSERT INTO `booking_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Received', 1, '2021-01-25 14:25:46', '2021-01-29 12:56:35'),
(2, 'In Progress', 40, '2021-01-25 14:26:02', '2021-02-16 16:56:52'),
(3, 'On the Way', 20, '2021-01-28 02:47:23', '2021-02-16 07:10:13'),
(4, 'Accepted', 10, '2021-02-16 07:09:29', '2021-02-16 07:10:06'),
(5, 'Ready', 30, '2021-02-16 07:11:50', '2021-02-16 16:56:42'),
(6, 'Done', 50, '2021-02-16 16:57:02', '2021-02-16 16:57:02'),
(7, 'Failed', 60, '2021-02-16 16:58:36', '2021-02-16 16:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `featured` tinyint(1) DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `color`, `description`, `order`, `featured`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Beauty & Salons\"}', '#ffff00', '{\"en\":\"<p>Categories for Beauty & Salons services<\\/p>\"}', 1, 1, NULL, '2021-01-19 12:01:35', '2021-07-13 04:41:36'),
(2, '{\"en\":\"Events\"}', '#0abde3', '{\"en\":\"<p>Categories for Events Services<br><\\/p>\"}', 1, 1, NULL, '2021-01-19 13:05:00', '2021-07-13 13:24:53'),
(10, '{\"en\":\"Nails Services\"}', '#20c997', '{\"en\":\"<p><br><\\/p>\"}', NULL, 1, 1, '2021-06-22 16:56:22', '2021-07-13 11:04:56'),
(11, '{\"en\":\"Hair Services\"}', '#E17C96', '{\"en\":null}', NULL, 1, 1, '2021-06-22 16:56:41', '2021-06-30 10:02:18'),
(12, '{\"en\":\"Eye Lash Extension\"}', '#efe473', '{\"en\":null}', NULL, 0, 1, '2021-06-22 16:57:12', '2021-07-13 11:05:47'),
(13, '{\"en\":\"Eyebrow Microblading\"}', '#e68fd2', '{\"en\":null}', NULL, 0, 1, '2021-06-22 16:57:41', '2021-07-13 11:06:37'),
(14, '{\"en\":\"Makeup Artist\"}', '#C55151', '{\"en\":null}', NULL, 1, 1, '2021-06-22 16:57:58', '2021-06-30 12:47:43'),
(15, '{\"en\":\"Hair Removal Services\"}', '#495057', '{\"en\":\"<p><br><\\/p>\"}', NULL, 1, 1, '2021-06-22 16:58:15', '2021-07-13 11:07:10'),
(16, '{\"en\":\"Henna Artist\"}', 'red', '{\"en\":\"<p><br><\\/p>\"}', NULL, 0, 1, '2021-06-22 16:58:34', '2021-06-22 16:58:34'),
(17, '{\"en\":\"Peircing Services\"}', 'red', '{\"en\":\"<p><br><\\/p>\"}', NULL, 0, 1, '2021-06-22 16:58:53', '2021-06-22 16:58:53'),
(18, '{\"en\":\"Braiding\"}', 'red', '{\"en\":\"<p><br><\\/p>\"}', NULL, 0, 1, '2021-06-22 16:59:13', '2021-06-22 16:59:13'),
(19, '{\"en\":\"Flowers Arrangement\"}', 'Green', '{\"en\":null}', NULL, 0, 2, '2021-06-22 16:59:59', '2021-06-22 16:59:59'),
(20, '{\"en\":\"Events Planner\"}', 'Green', '{\"en\":\"<p><br><\\/p>\"}', NULL, 0, 2, '2021-06-22 17:00:23', '2021-06-22 17:00:23'),
(22, '{\"en\":\"Pedicure\"}', '#EC8531', '{\"en\":null}', NULL, 1, 1, '2021-06-30 09:59:26', '2021-06-30 09:59:26'),
(28, '{\"en\":\"harware cleaning\"}', '#fff', '{\"en\":\"<p>laptop, computer, pad etc.<br><\\/p>\"}', 2, 0, 1, '2021-09-13 07:37:43', '2021-09-13 07:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `discount_type`, `description`, `expires_at`, `enabled`, `created_at`, `updated_at`) VALUES
(1, '34562324', 8.00, 'percent', '{\"en\":\"<p>8% discount will be given.<br><\\/p>\"}', '2021-09-28 17:27:00', 1, '2021-09-13 12:27:19', '2021-09-13 12:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2020-10-22 10:50:48', '2020-10-22 10:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2020-10-22 10:51:39', '2020-10-22 10:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2020-10-22 10:52:50', '2020-10-22 10:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2020-10-22 10:53:22', '2020-10-22 10:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2020-10-22 10:54:00', '2020-10-22 10:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2020-10-22 10:55:51', '2020-10-22 10:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2020-10-22 10:56:26', '2020-10-22 10:56:26'),
(8, '{\"en\":\"United Arab Emirates dirham\"}', '{\"en\":\"AED\"}', '{\"en\":\"AED\"}', 2, 0, '2021-06-30 09:15:29', '2021-06-30 10:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 16:43:58', '2021-08-10 13:06:03'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 16:49:22', '2019-09-06 16:49:22'),
(7, 'ali', 'text', NULL, 0, 0, 1, 3, 3, 'App\\Models\\Notification', '2021-08-10 13:07:03', '2021-08-10 13:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_field_values`
--

INSERT INTO `custom_field_values` (`id`, `value`, `view`, `custom_field_id`, `customizable_type`, `customizable_id`, `created_at`, `updated_at`) VALUES
(30, 'Explicabo. Eum provi. ', 'Explicabo. Eum provi. ', 5, 'App\\Models\\User', 2, '2019-09-06 16:52:30', '2021-06-30 07:42:32'),
(31, 'Modi est libero qui', 'Modi est libero qui', 6, 'App\\Models\\User', 2, '2019-09-06 16:52:30', '2021-02-02 06:32:57'),
(33, 'Consequatur error ip. ', 'Consequatur error ip. ', 5, 'App\\Models\\User', 1, '2019-09-06 16:53:58', '2021-06-30 09:59:02'),
(34, 'Qui vero ratione vel', 'Qui vero ratione vel', 6, 'App\\Models\\User', 1, '2019-09-06 16:53:58', '2021-02-02 06:32:01'),
(36, NULL, '', 5, 'App\\Models\\User', 3, '2019-10-15 12:21:32', '2021-10-29 04:44:50'),
(37, NULL, NULL, 6, 'App\\Models\\User', 3, '2019-10-15 12:21:32', '2021-10-29 04:44:50'),
(39, 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 'Faucibus ornare suspendisse sed nisi lacus sed. Pellentesque sit amet porttitor eget dolor morbi non arcu. Eu scelerisque felis imperdiet proin fermentum leo vel orci porta', 5, 'App\\Models\\User', 4, '2019-10-16 14:31:46', '2019-10-16 14:31:46'),
(40, 'Sequi molestiae ipsa1', 'Sequi molestiae ipsa1', 6, 'App\\Models\\User', 4, '2019-10-16 14:31:46', '2021-02-21 18:32:10'),
(42, 'Omnis fugiat et cons.', 'Omnis fugiat et cons.', 5, 'App\\Models\\User', 5, '2019-12-15 13:49:44', '2021-02-02 06:29:47'),
(43, 'Consequatur delenit', 'Consequatur delenit', 6, 'App\\Models\\User', 5, '2019-12-15 13:49:44', '2021-02-02 06:29:47'),
(45, '<p>Short bio for this driver</p>', 'Short bio for this driver', 5, 'App\\Models\\User', 6, '2020-03-29 12:28:05', '2020-03-29 12:28:05'),
(46, '4722 Villa Drive', '4722 Villa Drive', 6, 'App\\Models\\User', 6, '2020-03-29 12:28:05', '2020-03-29 12:28:05'),
(48, 'Voluptatem. Omnis op.', 'Voluptatem. Omnis op.', 5, 'App\\Models\\User', 7, '2021-01-17 11:13:24', '2021-02-02 06:31:36'),
(49, 'Perspiciatis aut ei', 'Perspiciatis aut ei', 6, 'App\\Models\\User', 7, '2021-01-17 11:13:24', '2021-02-02 06:31:36'),
(51, 'sdfsdf56', 'sdfsdf56', 5, 'App\\Models\\User', 8, '2021-02-10 06:31:12', '2021-02-19 09:09:37'),
(52, 'Adressttt', 'Adressttt', 6, 'App\\Models\\User', 8, '2021-02-10 06:31:12', '2021-02-19 08:57:27'),
(53, NULL, '', 5, 'App\\Models\\User', 9, '2021-05-24 15:22:54', '2021-05-24 15:22:54'),
(54, NULL, NULL, 6, 'App\\Models\\User', 9, '2021-05-24 15:22:54', '2021-05-24 15:22:54'),
(55, NULL, '', 5, 'App\\Models\\User', 10, '2021-06-21 15:13:29', '2021-06-21 15:13:29'),
(56, NULL, NULL, 6, 'App\\Models\\User', 10, '2021-06-21 15:13:29', '2021-06-21 15:13:29'),
(57, NULL, '', 5, 'App\\Models\\User', 11, '2021-06-28 14:59:26', '2021-06-28 14:59:26'),
(58, NULL, NULL, 6, 'App\\Models\\User', 11, '2021-06-28 14:59:26', '2021-06-28 14:59:26'),
(59, NULL, '', 5, 'App\\Models\\User', 13, '2021-06-30 05:41:46', '2021-06-30 05:41:46'),
(60, NULL, NULL, 6, 'App\\Models\\User', 13, '2021-06-30 05:41:46', '2021-06-30 05:41:46'),
(61, NULL, '', 5, 'App\\Models\\User', 12, '2021-06-30 10:01:18', '2021-06-30 10:01:18'),
(62, NULL, NULL, 6, 'App\\Models\\User', 12, '2021-06-30 10:01:18', '2021-06-30 10:01:18'),
(63, NULL, '', 5, 'App\\Models\\User', 14, '2021-06-30 13:16:48', '2021-06-30 13:16:48'),
(64, NULL, NULL, 6, 'App\\Models\\User', 14, '2021-06-30 13:16:48', '2021-06-30 13:16:48'),
(65, NULL, '', 5, 'App\\Models\\User', 15, '2021-07-01 05:12:57', '2021-07-01 05:12:57'),
(66, NULL, NULL, 6, 'App\\Models\\User', 15, '2021-07-01 05:12:57', '2021-07-01 05:12:57'),
(67, NULL, '', 5, 'App\\Models\\User', 16, '2021-07-03 11:50:19', '2021-07-03 11:50:19'),
(68, NULL, NULL, 6, 'App\\Models\\User', 16, '2021-07-03 11:50:19', '2021-07-03 11:50:19'),
(69, NULL, '', 5, 'App\\Models\\User', 19, '2021-07-06 10:10:22', '2021-07-06 10:10:22'),
(70, NULL, NULL, 6, 'App\\Models\\User', 19, '2021-07-06 10:10:22', '2021-07-06 10:10:22'),
(71, NULL, '', 5, 'App\\Models\\User', 50, '2021-07-15 04:45:27', '2021-07-15 04:45:27'),
(72, NULL, NULL, 6, 'App\\Models\\User', 50, '2021-07-15 04:45:27', '2021-07-15 04:45:27'),
(73, NULL, '', 5, 'App\\Models\\User', 70, '2021-07-28 10:15:26', '2021-07-28 10:15:26'),
(74, NULL, NULL, 6, 'App\\Models\\User', 70, '2021-07-28 10:15:26', '2021-07-28 10:15:26'),
(75, NULL, '', 5, 'App\\Models\\User', 73, '2021-07-28 11:13:47', '2021-07-28 11:13:47'),
(76, NULL, NULL, 6, 'App\\Models\\User', 73, '2021-07-28 11:13:47', '2021-07-28 11:13:47'),
(77, NULL, '', 5, 'App\\Models\\User', 74, '2021-07-28 11:29:02', '2021-07-28 11:29:02'),
(78, NULL, NULL, 6, 'App\\Models\\User', 74, '2021-07-28 11:29:02', '2021-07-28 11:29:02'),
(79, NULL, '', 5, 'App\\Models\\User', 75, '2021-07-28 13:18:10', '2021-07-28 13:18:10'),
(80, NULL, NULL, 6, 'App\\Models\\User', 75, '2021-07-28 13:18:10', '2021-07-28 13:18:10'),
(81, NULL, '', 5, 'App\\Models\\User', 76, '2021-07-28 13:23:12', '2021-07-28 13:23:12'),
(82, NULL, NULL, 6, 'App\\Models\\User', 76, '2021-07-28 13:23:12', '2021-07-28 13:23:12'),
(83, NULL, '', 5, 'App\\Models\\User', 77, '2021-07-28 13:31:52', '2021-07-28 13:31:52'),
(84, NULL, NULL, 6, 'App\\Models\\User', 77, '2021-07-28 13:31:52', '2021-07-28 13:31:52'),
(85, NULL, '', 5, 'App\\Models\\User', 78, '2021-07-28 13:34:58', '2021-07-28 13:34:58'),
(86, NULL, NULL, 6, 'App\\Models\\User', 78, '2021-07-28 13:34:58', '2021-07-28 13:34:58'),
(87, NULL, '', 5, 'App\\Models\\User', 79, '2021-07-29 04:57:55', '2021-07-29 04:57:55'),
(88, NULL, NULL, 6, 'App\\Models\\User', 79, '2021-07-29 04:57:55', '2021-07-29 04:57:55'),
(89, NULL, '', 5, 'App\\Models\\User', 80, '2021-07-29 05:01:35', '2021-07-29 05:01:35'),
(90, NULL, NULL, 6, 'App\\Models\\User', 80, '2021-07-29 05:01:35', '2021-07-29 05:01:35'),
(91, NULL, '', 5, 'App\\Models\\User', 81, '2021-07-29 05:39:37', '2021-07-29 05:39:37'),
(92, NULL, NULL, 6, 'App\\Models\\User', 81, '2021-07-29 05:39:37', '2021-07-29 05:39:37'),
(93, NULL, '', 5, 'App\\Models\\User', 82, '2021-07-29 05:46:16', '2021-07-29 05:46:16'),
(94, NULL, NULL, 6, 'App\\Models\\User', 82, '2021-07-29 05:46:16', '2021-07-29 05:46:16'),
(95, NULL, '', 5, 'App\\Models\\User', 83, '2021-07-29 05:51:02', '2021-07-29 05:51:02'),
(96, NULL, NULL, 6, 'App\\Models\\User', 83, '2021-07-29 05:51:02', '2021-07-29 05:51:02'),
(97, NULL, '', 5, 'App\\Models\\User', 84, '2021-07-29 06:05:27', '2021-07-29 06:05:27'),
(98, NULL, NULL, 6, 'App\\Models\\User', 84, '2021-07-29 06:05:27', '2021-07-29 06:05:27'),
(99, NULL, '', 5, 'App\\Models\\User', 85, '2021-07-29 06:17:17', '2021-07-29 06:17:17'),
(100, NULL, NULL, 6, 'App\\Models\\User', 85, '2021-07-29 06:17:17', '2021-07-29 06:17:17'),
(101, NULL, '', 5, 'App\\Models\\User', 86, '2021-07-29 06:38:36', '2021-07-29 06:38:36'),
(102, NULL, NULL, 6, 'App\\Models\\User', 86, '2021-07-29 06:38:36', '2021-07-29 06:38:36'),
(103, NULL, '', 5, 'App\\Models\\User', 87, '2021-07-29 06:45:10', '2021-07-29 06:45:10'),
(104, NULL, NULL, 6, 'App\\Models\\User', 87, '2021-07-29 06:45:10', '2021-07-29 06:45:10'),
(105, NULL, '', 5, 'App\\Models\\User', 88, '2021-07-29 06:47:17', '2021-07-29 06:47:17'),
(106, NULL, NULL, 6, 'App\\Models\\User', 88, '2021-07-29 06:47:17', '2021-07-29 06:47:17'),
(107, NULL, '', 5, 'App\\Models\\User', 89, '2021-07-29 06:59:40', '2021-07-29 06:59:40'),
(108, NULL, NULL, 6, 'App\\Models\\User', 89, '2021-07-29 06:59:40', '2021-07-29 06:59:40'),
(109, NULL, '', 5, 'App\\Models\\User', 90, '2021-07-29 07:02:09', '2021-07-29 07:02:09'),
(110, NULL, NULL, 6, 'App\\Models\\User', 90, '2021-07-29 07:02:09', '2021-07-29 07:02:09'),
(111, NULL, '', 5, 'App\\Models\\User', 91, '2021-07-29 07:30:16', '2021-07-29 07:30:16'),
(112, NULL, NULL, 6, 'App\\Models\\User', 91, '2021-07-29 07:30:16', '2021-07-29 07:30:16'),
(113, NULL, '', 5, 'App\\Models\\User', 92, '2021-07-29 07:50:55', '2021-07-29 07:50:55'),
(114, NULL, NULL, 6, 'App\\Models\\User', 92, '2021-07-29 07:50:55', '2021-07-29 07:50:55'),
(115, NULL, '', 5, 'App\\Models\\User', 93, '2021-07-29 08:16:08', '2021-07-29 08:16:08'),
(116, NULL, NULL, 6, 'App\\Models\\User', 93, '2021-07-29 08:16:08', '2021-07-29 08:16:08'),
(117, NULL, '', 5, 'App\\Models\\User', 94, '2021-07-29 08:18:01', '2021-07-29 08:18:01'),
(118, NULL, NULL, 6, 'App\\Models\\User', 94, '2021-07-29 08:18:01', '2021-07-29 08:18:01'),
(119, NULL, '', 5, 'App\\Models\\User', 95, '2021-07-29 10:46:52', '2021-07-29 10:46:52'),
(120, NULL, NULL, 6, 'App\\Models\\User', 95, '2021-07-29 10:46:52', '2021-07-29 10:46:52'),
(121, NULL, '', 5, 'App\\Models\\User', 96, '2021-07-29 11:08:19', '2021-07-29 11:08:19'),
(122, NULL, NULL, 6, 'App\\Models\\User', 96, '2021-07-29 11:08:19', '2021-07-29 11:08:19'),
(123, NULL, '', 5, 'App\\Models\\User', 97, '2021-07-29 12:12:29', '2021-07-29 12:12:29'),
(124, NULL, NULL, 6, 'App\\Models\\User', 97, '2021-07-29 12:12:29', '2021-07-29 12:12:29'),
(125, NULL, '', 5, 'App\\Models\\User', 98, '2021-07-29 12:14:57', '2021-07-29 12:14:57'),
(126, NULL, NULL, 6, 'App\\Models\\User', 98, '2021-07-29 12:14:57', '2021-07-29 12:14:57'),
(127, NULL, '', 5, 'App\\Models\\User', 99, '2021-07-30 05:35:36', '2021-07-30 05:35:36'),
(128, NULL, NULL, 6, 'App\\Models\\User', 99, '2021-07-30 05:35:36', '2021-07-30 05:35:36'),
(129, NULL, '', 5, 'App\\Models\\User', 100, '2021-07-30 05:42:19', '2021-07-30 05:42:19'),
(130, NULL, NULL, 6, 'App\\Models\\User', 100, '2021-07-30 05:42:19', '2021-07-30 05:42:19'),
(131, NULL, '', 5, 'App\\Models\\User', 101, '2021-07-30 08:11:42', '2021-07-30 08:11:42'),
(132, NULL, NULL, 6, 'App\\Models\\User', 101, '2021-07-30 08:11:42', '2021-07-30 08:11:42'),
(133, NULL, '', 5, 'App\\Models\\User', 102, '2021-07-30 08:18:20', '2021-07-30 08:18:20'),
(134, NULL, NULL, 6, 'App\\Models\\User', 102, '2021-07-30 08:18:20', '2021-07-30 08:18:20'),
(135, NULL, '', 5, 'App\\Models\\User', 103, '2021-07-30 09:23:46', '2021-07-30 09:23:46'),
(136, NULL, NULL, 6, 'App\\Models\\User', 103, '2021-07-30 09:23:46', '2021-07-30 09:23:46'),
(137, NULL, '', 5, 'App\\Models\\User', 104, '2021-07-30 10:18:11', '2021-07-30 10:18:11'),
(138, NULL, NULL, 6, 'App\\Models\\User', 104, '2021-07-30 10:18:11', '2021-07-30 10:18:11'),
(139, NULL, '', 5, 'App\\Models\\User', 105, '2021-07-30 10:23:48', '2021-07-30 10:23:48'),
(140, NULL, NULL, 6, 'App\\Models\\User', 105, '2021-07-30 10:23:48', '2021-07-30 10:23:48'),
(141, NULL, '', 5, 'App\\Models\\User', 109, '2021-08-02 05:53:37', '2021-08-02 05:53:37'),
(142, NULL, NULL, 6, 'App\\Models\\User', 109, '2021-08-02 05:53:37', '2021-08-02 05:53:37'),
(143, NULL, '', 5, 'App\\Models\\User', 111, '2021-08-02 06:04:25', '2021-08-02 06:04:25'),
(144, NULL, NULL, 6, 'App\\Models\\User', 111, '2021-08-02 06:04:25', '2021-08-02 06:04:25'),
(145, NULL, '', 5, 'App\\Models\\User', 112, '2021-08-02 06:07:51', '2021-08-02 06:07:51'),
(146, NULL, NULL, 6, 'App\\Models\\User', 112, '2021-08-02 06:07:51', '2021-08-02 06:07:51'),
(147, NULL, '', 5, 'App\\Models\\User', 114, '2021-08-02 06:27:17', '2021-08-02 06:27:17'),
(148, NULL, NULL, 6, 'App\\Models\\User', 114, '2021-08-02 06:27:17', '2021-08-02 06:27:17'),
(149, NULL, '', 5, 'App\\Models\\User', 115, '2021-08-02 06:30:26', '2021-08-02 06:30:26'),
(150, NULL, NULL, 6, 'App\\Models\\User', 115, '2021-08-02 06:30:26', '2021-08-02 06:30:26'),
(151, NULL, '', 5, 'App\\Models\\User', 118, '2021-08-02 07:09:34', '2021-08-02 07:09:34'),
(152, NULL, NULL, 6, 'App\\Models\\User', 118, '2021-08-02 07:09:34', '2021-08-02 07:09:34'),
(153, NULL, '', 5, 'App\\Models\\User', 119, '2021-08-02 07:13:01', '2021-08-02 07:13:01'),
(154, NULL, NULL, 6, 'App\\Models\\User', 119, '2021-08-02 07:13:01', '2021-08-02 07:13:01'),
(155, NULL, '', 5, 'App\\Models\\User', 120, '2021-08-02 07:18:10', '2021-08-02 07:18:10'),
(156, NULL, NULL, 6, 'App\\Models\\User', 120, '2021-08-02 07:18:10', '2021-08-02 07:18:10'),
(157, NULL, '', 5, 'App\\Models\\User', 121, '2021-08-02 07:37:03', '2021-08-02 07:37:03'),
(158, NULL, NULL, 6, 'App\\Models\\User', 121, '2021-08-02 07:37:03', '2021-08-02 07:37:03'),
(159, NULL, '', 5, 'App\\Models\\User', 122, '2021-08-02 07:40:48', '2021-08-02 07:40:48'),
(160, NULL, NULL, 6, 'App\\Models\\User', 122, '2021-08-02 07:40:48', '2021-08-02 07:40:48'),
(161, NULL, '', 5, 'App\\Models\\User', 123, '2021-08-02 07:44:02', '2021-08-02 07:44:02'),
(162, NULL, NULL, 6, 'App\\Models\\User', 123, '2021-08-02 07:44:02', '2021-08-02 07:44:02'),
(163, NULL, '', 5, 'App\\Models\\User', 124, '2021-08-02 07:56:22', '2021-08-02 07:56:22'),
(164, NULL, NULL, 6, 'App\\Models\\User', 124, '2021-08-02 07:56:22', '2021-08-02 07:56:22'),
(165, NULL, '', 5, 'App\\Models\\User', 129, '2021-08-02 08:28:19', '2021-08-02 08:28:19'),
(166, NULL, NULL, 6, 'App\\Models\\User', 129, '2021-08-02 08:28:19', '2021-08-02 08:28:19'),
(167, NULL, '', 5, 'App\\Models\\User', 139, '2021-08-02 11:52:18', '2021-08-02 11:52:18'),
(168, NULL, NULL, 6, 'App\\Models\\User', 139, '2021-08-02 11:52:18', '2021-08-02 11:52:18'),
(169, NULL, '', 5, 'App\\Models\\User', 141, '2021-08-02 12:45:27', '2021-08-02 12:45:27'),
(170, NULL, NULL, 6, 'App\\Models\\User', 141, '2021-08-02 12:45:27', '2021-08-02 12:45:27'),
(171, NULL, '', 5, 'App\\Models\\User', 142, '2021-08-02 12:47:46', '2021-08-02 12:47:46'),
(172, NULL, NULL, 6, 'App\\Models\\User', 142, '2021-08-02 12:47:46', '2021-08-02 12:47:46'),
(173, NULL, '', 5, 'App\\Models\\User', 143, '2021-08-02 12:50:56', '2021-08-02 12:50:56'),
(174, NULL, NULL, 6, 'App\\Models\\User', 143, '2021-08-02 12:50:56', '2021-08-02 12:50:56'),
(175, NULL, '', 5, 'App\\Models\\User', 144, '2021-08-02 12:55:31', '2021-08-02 12:55:31'),
(176, NULL, NULL, 6, 'App\\Models\\User', 144, '2021-08-02 12:55:31', '2021-08-02 12:55:31'),
(177, NULL, '', 5, 'App\\Models\\User', 147, '2021-08-02 13:12:40', '2021-08-02 13:12:40'),
(178, NULL, NULL, 6, 'App\\Models\\User', 147, '2021-08-02 13:12:40', '2021-08-02 13:12:40'),
(179, NULL, '', 5, 'App\\Models\\User', 148, '2021-08-02 13:28:25', '2021-08-02 13:28:25'),
(180, NULL, NULL, 6, 'App\\Models\\User', 148, '2021-08-02 13:28:25', '2021-08-02 13:28:25'),
(181, NULL, '', 5, 'App\\Models\\User', 149, '2021-08-03 03:19:23', '2021-08-03 03:19:23'),
(182, NULL, NULL, 6, 'App\\Models\\User', 149, '2021-08-03 03:19:23', '2021-08-03 03:19:23'),
(183, NULL, '', 5, 'App\\Models\\User', 151, '2021-08-03 09:39:57', '2021-08-03 09:39:57'),
(184, NULL, NULL, 6, 'App\\Models\\User', 151, '2021-08-03 09:39:57', '2021-08-03 09:39:57'),
(185, NULL, '', 5, 'App\\Models\\User', 152, '2021-08-04 05:00:30', '2021-08-04 05:00:30'),
(186, NULL, NULL, 6, 'App\\Models\\User', 152, '2021-08-04 05:00:30', '2021-08-04 05:00:30'),
(187, NULL, '', 5, 'App\\Models\\User', 157, '2021-08-05 10:02:08', '2021-08-05 10:02:08'),
(188, NULL, NULL, 6, 'App\\Models\\User', 157, '2021-08-05 10:02:08', '2021-08-05 10:02:08'),
(189, NULL, '', 5, 'App\\Models\\User', 161, '2021-08-10 10:44:47', '2021-08-10 10:44:47'),
(190, NULL, NULL, 6, 'App\\Models\\User', 161, '2021-08-10 10:44:47', '2021-08-10 10:44:47'),
(191, NULL, '', 5, 'App\\Models\\User', 162, '2021-08-10 12:33:16', '2021-08-10 12:33:16'),
(192, NULL, NULL, 6, 'App\\Models\\User', 162, '2021-08-10 12:33:16', '2021-08-10 12:33:16'),
(193, NULL, '', 5, 'App\\Models\\User', 163, '2021-08-25 11:28:49', '2021-08-25 11:28:49'),
(194, NULL, NULL, 6, 'App\\Models\\User', 163, '2021-08-25 11:28:49', '2021-08-25 11:28:49'),
(195, NULL, '', 5, 'App\\Models\\User', 164, '2021-08-25 11:29:58', '2021-08-25 11:29:58'),
(196, NULL, NULL, 6, 'App\\Models\\User', 164, '2021-08-25 11:29:58', '2021-08-25 11:29:58'),
(197, NULL, '', 5, 'App\\Models\\User', 165, '2021-08-25 11:34:13', '2021-08-25 11:34:13'),
(198, NULL, NULL, 6, 'App\\Models\\User', 165, '2021-08-25 11:34:13', '2021-08-25 11:34:13'),
(199, NULL, '', 5, 'App\\Models\\User', 166, '2021-08-26 06:43:54', '2021-08-26 06:43:54'),
(200, NULL, NULL, 6, 'App\\Models\\User', 166, '2021-08-26 06:43:54', '2021-08-26 06:43:54'),
(201, NULL, '', 5, 'App\\Models\\User', 167, '2021-08-26 07:06:13', '2021-08-26 07:06:13'),
(202, NULL, NULL, 6, 'App\\Models\\User', 167, '2021-08-26 07:06:13', '2021-08-26 07:06:13'),
(203, NULL, '', 5, 'App\\Models\\User', 168, '2021-08-26 07:52:21', '2021-08-26 07:52:21'),
(204, NULL, NULL, 6, 'App\\Models\\User', 168, '2021-08-26 07:52:21', '2021-08-26 07:52:21'),
(205, NULL, '', 5, 'App\\Models\\User', 169, '2021-08-27 09:47:43', '2021-08-27 09:47:43'),
(206, NULL, NULL, 6, 'App\\Models\\User', 169, '2021-08-27 09:47:43', '2021-08-27 09:47:43'),
(207, NULL, '', 5, 'App\\Models\\User', 170, '2021-09-02 10:08:29', '2021-09-02 10:08:29'),
(208, NULL, NULL, 6, 'App\\Models\\User', 170, '2021-09-02 10:08:29', '2021-09-02 10:08:29'),
(209, NULL, '', 5, 'App\\Models\\User', 171, '2021-09-07 08:21:23', '2021-09-07 08:21:23'),
(210, NULL, NULL, 6, 'App\\Models\\User', 171, '2021-09-07 08:21:23', '2021-09-07 08:21:23'),
(211, NULL, '', 5, 'App\\Models\\User', 172, '2021-09-07 10:18:45', '2021-09-07 10:18:45'),
(212, NULL, NULL, 6, 'App\\Models\\User', 172, '2021-09-07 10:18:45', '2021-09-07 10:18:45'),
(213, NULL, '', 5, 'App\\Models\\User', 173, '2021-09-07 11:29:24', '2021-09-07 11:29:24'),
(214, NULL, NULL, 6, 'App\\Models\\User', 173, '2021-09-07 11:29:24', '2021-09-07 11:29:24'),
(215, NULL, '', 5, 'App\\Models\\User', 174, '2021-09-07 11:31:58', '2021-09-07 11:31:58'),
(216, NULL, NULL, 6, 'App\\Models\\User', 174, '2021-09-07 11:31:58', '2021-09-07 11:31:58'),
(217, NULL, '', 5, 'App\\Models\\User', 175, '2021-09-07 11:47:58', '2021-09-07 11:47:58'),
(218, NULL, NULL, 6, 'App\\Models\\User', 175, '2021-09-07 11:47:58', '2021-09-07 11:47:58'),
(219, NULL, '', 5, 'App\\Models\\User', 176, '2021-09-09 05:34:10', '2021-09-09 05:34:10'),
(220, 'lahore', 'lahore', 6, 'App\\Models\\User', 176, '2021-09-09 05:34:10', '2021-09-09 05:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `title`, `content`, `published`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Privacy Policy\"}', '{\"en\":\"<h1>Privacy Policy of SmarterVision<\\/h1>\\r\\n<p>EAZE operates the Beauty, Salon &amp; Events Management Services.<\\/p>\\r\\n<p>This page is used to inform website visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the eaze.com website.<\\/p>\\r\\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.<\\/p>\\r\\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at eaze.com, unless otherwise defined in this Privacy Policy.<\\/p>\\r\\n<h2>Information Collection and Use<\\/h2>\\r\\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your name, phone number, and postal address. The information that we collect will be used to contact or identify you.<\\/p>\\r\\n<h2>Log Data<\\/h2>\\r\\n<p>We want to inform you that whenever you visit our Service, we collect information that your browser sends to us which is called Log Data. This Log Data may include information such as your computer\'s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.<\\/p>\\r\\n<h2>Cookies<\\/h2>\\r\\n<p>Cookies are files with small amount of data that is commonly used an anonymous unique identifier. These are sent to your browser from the website that you visit and are stored on your computer\'s hard drive.<\\/p>\\r\\n<p>Our website uses these “cookies” to collection information and to improve our Service. You have the option to either accept or refuse these cookies, and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service.<\\/p>\\r\\n<h2>Service Providers<\\/h2>\\r\\n<p>We may employ third-party companies and individuals due to the following reasons:<\\/p>\\r\\n<ul>\\r\\n<li>To facilitate our Service;<\\/li>\\r\\n<li>To provide the Service on our behalf;<\\/li>\\r\\n<li>To perform Service-related services; or<\\/li>\\r\\n<li>To assist us in analyzing how our Service is used.<\\/li>\\r\\n<\\/ul>\\r\\n<p>We want to inform our Service users that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.<\\/p>\\r\\n<h2>Security<\\/h2>\\r\\n<p>We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.<\\/p>\\r\\n<h2>Links to Other Sites<\\/h2>\\r\\n<p>Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over, and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.<\\/p>\\r\\n<h2>Children\'s Privacy<\\/h2>\\r\\n<p>Our Services do not address anyone under the age of 13. We do not knowingly collect personal identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.<\\/p>\\r\\n<h2>Changes to This Privacy Policy<\\/h2>\\r\\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.<\\/p>\\r\\n<h2>Contact Us<\\/h2>\\r\\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.<\\/p>\"}', 1, '2021-02-24 06:53:21', '2021-07-16 13:28:56'),
(2, '{\"en\":\"Terms & Conditions\"}', '{\"en\":\"<h2>Terms & Conditions<\\/h2><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.<\\/p><p>Dolor consequat. Ex ducimus, dolores fugiat ipsam sunt non a dolor quidem nulla ullamco Nam labore nostrum sit amet, tenetur ut consequatur? Non aut incididunt consequatur, rem veniam, veritatis molestiae neque non veniam, nemo facilis eligendi qui aut enim aperiam rerum fugiat, dolorum qui id, in sint et assumenda mollitia dignissimos illum, ipsum maiores asperiores exercitationem odio labore laboris consequatur? Consequatur, sapiente ipsum, laboriosam, laudantium, dolor sed autem eligendi ea a.<br><\\/p>\"}', 1, '2021-02-24 08:20:06', '2021-07-16 13:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discountables`
--

INSERT INTO `discountables` (`id`, `coupon_id`, `discountable_type`, `discountable_id`) VALUES
(1, 1, 'App\\Models\\EService', 42),
(2, 1, 'App\\Models\\EService', 46),
(3, 1, 'App\\Models\\EProvider', 5),
(4, 1, 'App\\Models\\Category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `total_bookings` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `admin_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `e_provider_earning` double(10,2) NOT NULL DEFAULT 0.00,
  `taxes` double(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `e_provider_id`, `total_bookings`, `total_earning`, `admin_earning`, `e_provider_earning`, `taxes`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 07:41:15', '2021-06-30 07:41:15'),
(2, 5, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 10:17:29', '2021-06-30 10:17:29'),
(3, 10, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 10:20:19', '2021-06-30 10:20:19'),
(4, 6, 1, 16.42, 4.11, 12.31, 0.00, '2021-06-30 12:07:54', '2021-09-14 05:58:46'),
(5, 11, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 12:13:55', '2021-06-30 12:13:55'),
(6, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 12:15:28', '2021-06-30 12:15:28'),
(7, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 12:16:38', '2021-06-30 12:16:38'),
(8, 9, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:08:53', '2021-06-30 13:08:53'),
(9, 8, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:09:50', '2021-06-30 13:09:50'),
(10, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:11:13', '2021-06-30 13:11:13'),
(11, 4, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:12:46', '2021-06-30 13:12:46'),
(12, 2, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:15:50', '2021-06-30 13:15:50'),
(13, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:17:28', '2021-06-30 13:17:28'),
(14, 15, 0, 0.00, 0.00, 0.00, 0.00, '2021-06-30 13:18:34', '2021-06-30 13:18:34'),
(15, 16, 0, 0.00, 0.00, 0.00, 0.00, '2021-07-01 05:43:02', '2021-07-01 05:43:02'),
(16, 14, 0, 0.00, 0.00, 0.00, 0.00, '2021-07-01 05:43:34', '2021-07-01 05:43:34'),
(17, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-07-01 05:44:51', '2021-07-01 05:44:51'),
(18, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-07-01 05:45:03', '2021-07-01 05:45:03'),
(19, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-07-06 10:12:11', '2021-07-06 10:12:11'),
(20, 20, 0, 0.00, 0.00, 0.00, 0.00, '2021-08-10 10:59:13', '2021-08-10 10:59:13'),
(21, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-09-16 07:11:50', '2021-09-16 07:11:50'),
(22, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-09-16 07:12:13', '2021-09-16 07:12:13'),
(23, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-09-16 07:12:28', '2021-09-16 07:12:28'),
(24, NULL, 0, 0.00, 0.00, 0.00, 0.00, '2021-09-16 07:57:16', '2021-09-16 07:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_providers`
--

CREATE TABLE `e_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_type_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `availability_range` double(9,2) DEFAULT 0.00,
  `available` tinyint(1) DEFAULT 1,
  `featured` tinyint(1) DEFAULT 0,
  `accepted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_providers`
--

INSERT INTO `e_providers` (`id`, `name`, `e_provider_type_id`, `description`, `phone_number`, `mobile_number`, `availability_range`, `available`, `featured`, `accepted`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"myPOS Company\"}', 2, '{\"en\":\"Ea labore quia voluptatem magni tempore expedita. Eum dolorem omnis illo sed sunt iure. Temporibus qui omnis dolor ipsa tempora nemo. Odio eligendi quidem quo dolorum corporis quidem.\"}', '1-347-276-2536', '916.694.7168', 22.35, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-03 05:40:25'),
(2, '{\"en\":\"Beier, Lesch and Grimes\"}', 3, '{\"en\":\"Ut ea voluptatem excepturi sit aut rerum dolor. Non tempora praesentium et asperiores saepe. Ut sed modi et fugiat dolorem velit.\"}', '1-272-457-0034', '1-270-418-8302', 36.45, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-16 13:31:33'),
(4, '{\"en\":\"Sewer Smitham Ltd\"}', 3, '{\"en\":\"Laudantium provident qui vel sunt dolore blanditiis quis. Et qui at ab facilis voluptate molestiae.\"}', '+1 (469) 203-2316', '1-678-869-8531', 28.23, 0, 1, 0, '2021-05-21 08:34:24', '2021-07-16 13:31:53'),
(5, '{\"en\":\"Sohail & Sons\"}', 3, '{\"en\":\"Dicta animi et aut. Explicabo sit quidem officiis rerum dolor. Dolorem iure aspernatur delectus saepe. Est odit iste quam unde labore eos aliquam.\"}', '(442) 270-6175', '(857) 425-3979', 45.04, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-16 13:32:22'),
(6, '{\"en\":\"Demo Company\"}', 2, '{\"en\":\"Ipsum velit voluptatem laudantium ut atque. Temporibus doloremque quae aut asperiores. Repellat accusantium inventore harum illum. Aut voluptatum quaerat at magni sunt laboriosam.\"}', '+1-678-293-6352', '702-897-0399', 37.79, 0, 1, 1, '2021-05-21 08:34:24', '2021-07-16 13:32:48'),
(8, '{\"en\":\"Concrete Hintz, Braun and Gutmann\"}', 2, '{\"en\":\"Et ipsa quas eius molestiae sequi itaque. Illum quas iusto enim ut nihil ut dolore.\"}', '469.268.7465', '+16014066309', 28.33, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-03 05:45:53'),
(9, '{\"en\":\"Paing Cremin-Little\"}', 3, '{\"en\":\"Animi voluptatibus esse nihil voluptatem voluptas et. Cumque dignissimos qui perspiciatis cum aspernatur sit nihil occaecati. Ad aut non sunt totam omnis aut deserunt molestiae.\"}', '440-327-1829', '+1-330-744-5643', 26.44, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-16 13:33:13'),
(10, '{\"en\":\"House Metz Group\"}', 3, '{\"en\":\"Ea aperiam minus delectus. Et laborum alias qui cupiditate quia omnis rerum quam. Laborum in laborum ab et eaque rem soluta. Dolorem odit perferendis aut natus eveniet enim reprehenderit.\"}', '+1 (830) 853-5980', '+1.272.506.9007', 43.95, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-03 05:46:42'),
(11, '{\"en\":\"Turcotte and Ullrich\"}', 2, '{\"en\":\"Sint quod cum distinctio adipisci in et. Cum ut ut praesentium sapiente dolores magnam in.\"}', '(512) 357-4666', '(347) 482-3523', 23.86, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-16 13:33:28'),
(14, '{\"en\":\"Ahmad & Ashraf\"}', 3, '{\"en\":\"Culpa eos quia illum dolor totam. At aut pariatur autem iure qui modi. Nihil necessitatibus doloremque sed magnam rerum.\"}', '1-908-837-9260', '+1 (516) 438-2864', 33.96, 0, 1, 1, '2021-05-21 08:34:24', '2021-07-16 13:33:59'),
(15, '{\"en\":\"Waelchi-Simonis\"}', 2, '{\"en\":\"Et facilis libero omnis fuga molestias. Amet aut voluptatum quia eaque distinctio ut consequatur quia. Qui impedit iste ullam. Totam consectetur rerum est enim.\"}', '+1 (810) 210-2820', '(424) 389-8896', 18.26, 0, 1, 0, '2021-05-21 08:34:24', '2021-07-16 13:34:18'),
(16, '{\"en\":\"Care Services Bernier, Goodwin and Bradtke\"}', 3, '{\"en\":\"Enim sit repellat aut est repudiandae. Modi sunt sed autem. Voluptas voluptas officia cumque odio reprehenderit officiis. Eum corporis saepe et laborum possimus et.\"}', '540.574.5431', '725-632-8143', 24.47, 0, 0, 1, '2021-05-21 08:34:24', '2021-07-03 05:48:02'),
(20, '{\"en\":\"Beauty\"}', 2, '{\"en\":null}', '+1 (827) 875-236', '847123123', 20.12, 1, 1, 1, '2021-08-10 10:59:13', '2021-08-10 10:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_addresses`
--

CREATE TABLE `e_provider_addresses` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `address_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_addresses`
--

INSERT INTO `e_provider_addresses` (`e_provider_id`, `address_id`) VALUES
(1, 22),
(2, 22),
(4, 7),
(5, 22),
(9, 6),
(11, 6),
(14, 17),
(16, 6),
(20, 7);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_payouts`
--

CREATE TABLE `e_provider_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `paid_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_taxes`
--

CREATE TABLE `e_provider_taxes` (
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `tax_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_taxes`
--

INSERT INTO `e_provider_taxes` (`e_provider_id`, `tax_id`) VALUES
(20, 4);

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_types`
--

CREATE TABLE `e_provider_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` double(5,2) NOT NULL DEFAULT 0.00,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_types`
--

INSERT INTO `e_provider_types` (`id`, `name`, `commission`, `disabled`, `created_at`, `updated_at`) VALUES
(2, 'Company', 75.00, 0, '2021-01-13 13:05:35', '2021-02-01 16:22:19'),
(3, 'Freelancer', 50.00, 0, '2021-01-17 14:27:18', '2021-02-24 13:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `e_provider_users`
--

CREATE TABLE `e_provider_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_provider_users`
--

INSERT INTO `e_provider_users` (`user_id`, `e_provider_id`) VALUES
(2, 2),
(2, 4),
(2, 6),
(2, 8),
(2, 10),
(2, 14),
(2, 15),
(4, 1),
(4, 5),
(6, 4),
(6, 14),
(8, 6),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `e_services`
--

CREATE TABLE `e_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `discount_price` double(10,2) DEFAULT 0.00,
  `price_unit` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity_unit` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `available` tinyint(1) DEFAULT 1,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_services`
--

INSERT INTO `e_services` (`id`, `name`, `price`, `discount_price`, `price_unit`, `quantity_unit`, `duration`, `description`, `featured`, `available`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(41, '{\"en\":\"Hair Cut\"}', 13.50, 12.03, 'fixed', '{\"en\":null}', '05:00', '{\"en\":\"Omnis modi veniam exercitationem enim cupiditate magnam repellendus. Rerum amet et dolorem omnis harum dolorem fuga odio. Et veritatis voluptate similique perferendis repellendus tempore.\"}', 0, 1, 1, '2021-05-21 08:34:25', '2021-07-14 08:28:02'),
(42, '{\"en\":\"Make Over\"}', 17.88, 16.42, 'fixed', '{\"en\":null}', '02:00', '{\"en\":\"Dolor quo et minus cum magnam ullam laborum. Quas nobis non aut a est. Nobis officiis quam assumenda aut est. Voluptas laudantium voluptates et sit earum debitis consequatur maxime.\"}', 1, 1, 6, '2021-05-21 08:34:25', '2021-07-14 07:49:21'),
(43, '{\"en\":\"Pedi Cure\"}', 27.82, 24.46, 'hourly', '{\"en\":null}', '03:00', '{\"en\":\"Reprehenderit est aliquam assumenda a dolores. Qui sit ut ab nihil sint est ea. Consequatur eveniet illo illo dolorum et. Fuga necessitatibus molestiae quia in excepturi provident.\"}', 1, 1, 6, '2021-05-21 08:34:25', '2021-05-25 01:53:27'),
(45, '{\"en\":\"Facial\"}', 25.38, 19.26, 'fixed', '{\"en\":null}', '03:00', '{\"en\":\"Molestiae doloremque facilis aut et voluptas. Qui iure fugiat non est delectus autem eum. Molestiae cum excepturi mollitia fugiat expedita sed.\"}', 1, 1, 10, '2021-05-21 08:34:25', '2021-05-25 01:34:31'),
(46, '{\"en\":\"Photo Shoots\"}', 25.80, 19.00, 'hourly', '{\"en\":null}', '02:00', '{\"en\":\"Sint nam hic dolor placeat velit velit dolores. Non id enim necessitatibus vel quisquam non libero ipsa. Omnis ipsam ut consequatur. Nihil sit est voluptate iusto aut ut.\"}', 1, 1, 6, '2021-05-21 08:34:25', '2021-07-13 11:40:43'),
(47, '{\"en\":\"Birth Day\"}', 20.79, 15.71, 'fixed', '{\"en\":null}', '03:00', '{\"en\":\"Doloribus id ut aliquid sint. Odio assumenda iste commodi adipisci. Sunt vel facere nihil error est non. Nulla et non possimus eligendi et sit repudiandae.\"}', 1, 1, 9, '2021-05-21 08:34:25', '2021-05-25 01:37:08'),
(48, '{\"en\":\"Wedding\"}', 26.75, 21.01, 'fixed', '{\"en\":null}', '05:00', '{\"en\":\"Quaerat nulla aut modi at explicabo id quo. Quia voluptatum vero fugit accusamus quo fuga. Consequuntur deserunt est et quam dolor.\"}', 1, 1, 2, '2021-05-21 08:34:25', '2021-05-25 01:50:41'),
(51, '{\"en\":\"Hair Style Service\"}', 23.30, 14.80, 'fixed', '{\"en\":null}', '05:00', '{\"en\":\"Dolorum rerum facilis et ut at. Blanditiis ullam sunt accusamus id.\"}', 1, 1, 14, '2021-05-21 08:34:25', '2021-07-13 13:19:27'),
(54, '{\"en\":\"Wedding Photos\"}', 34.28, 24.48, 'fixed', '{\"en\":null}', '04:00', '{\"en\":\"Eaque voluptas quos dignissimos natus ducimus sunt suscipit. Aut quisquam maxime et aliquam. Fugit aut fugit ut pariatur earum non. Aliquid architecto excepturi et.\"}', 0, 0, 5, '2021-05-21 08:34:25', '2021-07-13 13:19:39'),
(55, '{\"en\":\"Hair Style Service\"}', 29.46, 21.70, 'fixed', '{\"en\":null}', '03:00', '{\"en\":\"Sit aliquam et facilis. Est sint tempore et et. Neque culpa quibusdam molestias dolorum qui quis. Nihil voluptatibus sint libero ut.\"}', 0, 0, 11, '2021-05-21 08:34:25', '2021-07-13 13:22:03'),
(68, '{\"en\":\"Facials Services\"}', 17.15, 12.33, 'hourly', '{\"en\":null}', '02:00', '{\"en\":\"Sint architecto illo sapiente culpa amet. Possimus quos porro ut qui rerum. Et repellendus recusandae est vero voluptas. Exercitationem aut qui dolores corrupti vero.\"}', 0, 1, 6, '2021-05-21 08:34:25', '2021-07-13 13:16:10'),
(69, '{\"en\":\"Tank Cleaning\"}', 15.85, 0.00, 'fixed', '{\"en\":null}', '02:00', '{\"en\":\"Ut deserunt enim sit soluta et quia sint quisquam. Eius dicta et et et velit. Laborum molestiae facere maxime nihil quia impedit.\"}', 0, 0, 10, '2021-05-21 08:34:25', '2021-07-13 13:16:43'),
(73, '{\"en\":\"Post Party Cleaning\"}', 14.87, 0.00, 'fixed', '{\"en\":null}', '03:00', '{\"en\":\"Voluptates et fugiat ut quam. Vel mollitia magnam id sint dolor qui ut eum. Ipsa nihil ex quia perspiciatis.\"}', 1, 1, 14, '2021-05-21 08:34:25', '2021-07-13 13:19:03'),
(78, '{\"en\":\"Flooring Services\"}', 42.29, 37.30, 'hourly', '{\"en\":null}', '02:00', '{\"en\":\"Pariatur enim et quia unde autem. Ipsum dolor inventore maxime debitis quae. Id sunt provident perspiciatis dolore quas.\"}', 0, 0, 11, '2021-05-21 08:34:25', '2021-07-14 11:45:49'),
(80, '{\"en\":\"Deck Cleaning \\/ Sealing\"}', 27.79, 0.00, 'fixed', '{\"en\":null}', '01:00', '{\"en\":\"Reiciendis aspernatur omnis ipsa est. Ipsa porro natus labore libero molestiae temporibus qui quo. Qui voluptatibus modi expedita et.\"}', 0, 0, 4, '2021-05-21 08:34:25', '2021-07-13 13:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `e_service_categories`
--

CREATE TABLE `e_service_categories` (
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_categories`
--

INSERT INTO `e_service_categories` (`e_service_id`, `category_id`) VALUES
(41, 1),
(41, 11),
(42, 1),
(43, 1),
(45, 1),
(46, 2),
(46, 20),
(47, 2),
(48, 2),
(51, 1),
(54, 2),
(55, 1),
(68, 1),
(69, 2),
(73, 2),
(78, 2),
(80, 2);

-- --------------------------------------------------------

--
-- Table structure for table `e_service_reviews`
--

CREATE TABLE `e_service_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(3,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e_service_reviews`
--

INSERT INTO `e_service_reviews` (`id`, `review`, `rate`, `user_id`, `e_service_id`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'Alice noticed with some difficulty, as it was impossible to say \"HOW DOTH THE LITTLE BUSY BEE,\".', 1.00, 7, 73, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(3, 'YET,\' she said to the conclusion that it was sneezing and howling alternately without a porpoise.\'.', 1.00, 5, 46, 1, '2021-05-21 08:34:27', '2021-09-23 00:17:53'),
(6, 'I can\'t put it right; \'not that it felt quite strange at first; but she ran off as hard as she had.', 1.00, 7, 46, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(11, 'I eat or drink something or other; but the Hatter hurriedly left the court, \'Bring me the list of.', 2.00, 5, 43, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(15, 'So you see, Alice had got burnt, and eaten up by a row of lamps hanging from the Queen was to eat.', 5.00, 3, 47, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(16, 'I was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter added as an unusually.', 2.00, 5, 45, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(17, 'White Rabbit. She was a very truthful child; \'but little girls eat eggs quite as much as she.', 5.00, 5, 68, 1, '2021-05-21 08:34:27', '2021-09-23 01:08:19'),
(21, 'Queen in front of them, and then at the March Hare. \'Yes, please do!\' pleaded Alice. \'And ever.', 3.00, 5, 68, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(22, 'Good-bye, feet!\' (for when she looked at Alice. \'It must be kind to them,\' thought Alice, \'as all.', 2.00, 5, 47, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(24, 'Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a fight.', 1.00, 8, 68, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(25, 'Mock Turtle to the Duchess: \'and the moral of THAT is--\"Take care of themselves.\"\' \'How fond she.', 1.00, 3, 48, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(26, 'Either the well was very nearly getting up and to hear her try and repeat \"\'TIS THE VOICE OF THE.', 2.00, 5, 43, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(28, 'This seemed to think this a very difficult question. However, at last turned sulky, and would only.', 3.00, 8, 78, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(31, 'I WAS when I grow up, I\'ll write one--but I\'m grown up now,\' she added aloud. \'Do you take me for.', 3.00, 5, 47, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(32, 'Alice, \'when one wasn\'t always growing larger and smaller, and being so many out-of-the-way things.', 5.00, 7, 78, 0, '2021-05-21 08:34:27', '2021-05-21 08:34:27'),
(36, 'There was a good deal frightened at the frontispiece if you please! \"William the Conqueror, whose.', 5.00, 3, 41, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(39, 'Alice opened the door and found that her flamingo was gone across to the executioner: \'fetch her.', 2.00, 8, 54, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(41, 'I like\"!\' \'You might just as well go in ringlets at all; and I\'m sure I don\'t think,\' Alice went.', 4.00, 5, 54, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(43, 'However, I\'ve got to go after that into a conversation. Alice felt that she ought to be lost, as.', 3.00, 7, 55, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(44, 'Alice, and tried to beat them off, and found quite a new idea to Alice, \'Have you guessed the.', 5.00, 7, 51, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(53, 'Mouse, getting up and walking off to trouble myself about you: you must manage the best plan.\' It.', 4.00, 7, 73, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(54, 'Alice to herself. \'I dare say you\'re wondering why I don\'t believe you do lessons?\' said Alice.', 4.00, 7, 54, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(56, 'ARE OLD, FATHER WILLIAM,\"\' said the Mock Turtle, \'but if they do, why then they\'re a kind of.', 4.00, 8, 73, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(61, 'Said his father; \'don\'t give yourself airs! Do you think I should be raving mad after all! I.', 3.00, 5, 51, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(69, 'March Hare,) \'--it was at in all directions, tumbling up against each other; however, they got.', 1.00, 8, 68, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(70, 'Queen was silent. The King and Queen of Hearts, who only bowed and smiled in reply. \'That\'s.', 5.00, 5, 41, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(72, 'I get\" is the same as the soldiers shouted in reply. \'That\'s right!\' shouted the Gryphon, before.', 2.00, 5, 45, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(77, 'Alice knew it was labelled \'ORANGE MARMALADE\', but to her very earnestly, \'Now, Dinah, tell me the.', 2.00, 3, 46, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(78, 'White Rabbit; \'in fact, there\'s nothing written on the floor: in another moment that it was over.', 1.00, 7, 47, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(79, 'And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to do:-- \'How doth.', 2.00, 3, 73, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(81, 'ONE respectable person!\' Soon her eye fell on a bough of a good deal frightened by this very.', 3.00, 3, 46, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(83, 'SOMETHING interesting is sure to do THAT in a trembling voice to its children, \'Come away, my.', 2.00, 8, 69, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(85, 'There was not quite sure whether it was good practice to say anything. \'Why,\' said the Mock Turtle.', 4.00, 5, 42, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(90, 'Soup! Soup of the jurymen. \'It isn\'t directed at all,\' said Alice: \'I don\'t see any wine,\' she.', 3.00, 5, 45, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(91, 'While she was a dead silence instantly, and Alice guessed who it was, even before she gave her.', 4.00, 5, 73, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(94, 'Pray how did you ever see such a fall as this, I shall fall right THROUGH the earth! How funny.', 5.00, 7, 78, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(95, 'I mentioned before, And have grown most uncommonly fat; Yet you finished the goose, with the.', 1.00, 8, 47, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(96, 'I can\'t be Mabel, for I know THAT well enough; and what does it to be found: all she could.', 2.00, 5, 78, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(97, 'Hatter. \'You might just as well. The twelve jurors were all turning into little cakes as they used.', 1.00, 8, 47, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(99, 'Duchess, it had finished this short speech, they all spoke at once, and ran the faster, while more.', 1.00, 3, 48, 0, '2021-05-21 08:34:28', '2021-05-21 08:34:28'),
(101, 'good personality', 5.00, 3, 42, 0, '2021-09-08 06:50:10', '2021-09-08 06:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `faq_category_id`, `created_at`, `updated_at`) VALUES
(32, '{\"en\":\"<p>IS it in workings<\\/p>\"}', '{\"en\":\"<p>Yes its in workings<\\/p>\"}', 10, '2021-09-16 10:36:50', '2021-09-16 10:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, '{\"en\":\"Beauty Saloon\"}', '2021-05-21 08:34:23', '2021-09-13 13:00:09'),
(7, '{\"en\":\"Photography service\"}', '2021-05-21 08:34:23', '2021-09-13 13:01:22'),
(8, '{\"en\":\"Events Management\"}', '2021-05-21 08:34:23', '2021-09-13 13:01:48'),
(9, '{\"en\":\"Home Service\"}', '2021-05-21 08:34:23', '2021-09-13 13:02:00'),
(10, '{\"en\":\"Service\"}', '2021-05-21 08:34:23', '2021-05-21 08:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `e_service_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 41, 7, '2021-09-09 11:02:37', '2021-09-09 11:02:37'),
(3, 45, 4, '2021-09-15 13:03:10', '2021-09-15 13:03:10'),
(4, 47, 4, '2021-09-16 07:00:43', '2021-09-16 07:00:43'),
(5, 45, 1, '2021-09-16 07:01:06', '2021-09-16 07:01:06'),
(6, 54, 1, '2021-09-16 07:03:47', '2021-09-16 07:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_options`
--

INSERT INTO `favorite_options` (`option_id`, `favorite_id`) VALUES
(102, 4),
(120, 3),
(198, 6),
(201, 2);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `description`, `e_provider_id`, `created_at`, `updated_at`) VALUES
(21, '{\"en\":\"Et provident est et enim quo quia.\"}', 8, '2021-05-21 08:34:25', '2021-05-21 08:34:25'),
(23, '{\"en\":\"Nam in pariatur atque.\"}', 5, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(25, '{\"en\":\"Eius aperiam eos ut nihil et aut.\"}', 2, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(26, '{\"en\":\"Voluptatem sunt corrupti qui voluptatem exercitationem deleniti dignissimos.\"}', 5, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(28, '{\"en\":\"Quos aliquam vero nisi sit.\"}', 16, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(29, '{\"en\":\"Vel facere temporibus asperiores et perspiciatis.\"}', 9, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(30, '{\"en\":\"Cupiditate nulla consequatur iure quod nihil ducimus.\"}', 1, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(37, '{\"en\":\"Vitae cumque nisi et.\"}', 8, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(38, '{\"en\":\"Quidem rerum numquam ad aspernatur nulla.\"}', 2, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(39, '{\"en\":\"Eligendi et doloremque adipisci saepe.\"}', 1, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(40, '{\"en\":\"Et quia et iure asperiores in aperiam libero.\"}', 2, '2021-05-21 08:34:26', '2021-05-21 08:34:26'),
(41, '{\"en\":\"<p>Demo company in galleries with imaage<br><\\/p>\"}', 6, '2021-09-09 11:15:12', '2021-09-09 11:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\Upload', 5, 'avatar', '6', '6.jpg', 'image/jpeg', 'public', 116815, '[]', '{\"uuid\":\"cf7b6566-b526-46b0-9af4-7e2e44737716\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2021-06-30 09:53:37', '2021-06-30 09:53:37'),
(9, 'App\\Models\\Upload', 6, 'avatar', 'download', 'download.jpg', 'image/jpeg', 'public', 6598, '[]', '{\"uuid\":\"a04af2de-2a46-48c7-af5c-2677ed7d6200\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2021-06-30 09:54:53', '2021-06-30 09:54:53'),
(10, 'App\\Models\\User', 8, 'avatar', 'download', 'download.jpg', 'image/jpeg', 'public', 6598, '[]', '{\"uuid\":\"a04af2de-2a46-48c7-af5c-2677ed7d6200\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2021-06-30 09:54:59', '2021-06-30 09:54:59'),
(13, 'App\\Models\\Upload', 8, 'avatar', '6', '6.jpg', 'image/jpeg', 'public', 116815, '[]', '{\"uuid\":\"a8dad160-88bb-4de7-853a-694340f7f764\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2021-06-30 09:58:57', '2021-06-30 09:58:57'),
(14, 'App\\Models\\User', 1, 'avatar', '6', '6.jpg', 'image/jpeg', 'public', 116815, '[]', '{\"uuid\":\"a8dad160-88bb-4de7-853a-694340f7f764\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2021-06-30 09:59:02', '2021-06-30 09:59:02'),
(17, 'App\\Models\\Upload', 10, 'avatar', '2', '2.jpg', 'image/jpeg', 'public', 188611, '[]', '{\"uuid\":\"21e4c677-01c9-46c0-aebc-aea494ae6194\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 15, '2021-06-30 10:00:25', '2021-06-30 10:00:25'),
(18, 'App\\Models\\User', 13, 'avatar', '2', '2.jpg', 'image/jpeg', 'public', 188611, '[]', '{\"uuid\":\"21e4c677-01c9-46c0-aebc-aea494ae6194\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 16, '2021-06-30 10:00:28', '2021-06-30 10:00:28'),
(19, 'App\\Models\\Upload', 11, 'avatar', '3', '3.jpg', 'image/jpeg', 'public', 10310, '[]', '{\"uuid\":\"13c3baa5-b6dc-4942-9f08-4b97f08569cc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 17, '2021-06-30 10:00:46', '2021-06-30 10:00:46'),
(20, 'App\\Models\\Upload', 12, 'avatar', '5', '5.jpg', 'image/jpeg', 'public', 35492, '[]', '{\"uuid\":\"92514e86-3eee-4c43-8672-adcbcd3a3dc0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 18, '2021-06-30 10:01:38', '2021-06-30 10:01:38'),
(21, 'App\\Models\\User', 11, 'avatar', '5', '5.jpg', 'image/jpeg', 'public', 35492, '[]', '{\"uuid\":\"92514e86-3eee-4c43-8672-adcbcd3a3dc0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2021-06-30 10:01:39', '2021-06-30 10:01:39'),
(22, 'App\\Models\\Upload', 13, 'avatar', '6', '6.jpg', 'image/jpeg', 'public', 116815, '[]', '{\"uuid\":\"46e2230f-50c4-4d53-8c60-2c49fda0e0bc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 20, '2021-06-30 10:01:55', '2021-06-30 10:01:55'),
(24, 'App\\Models\\Upload', 14, 'avatar', '7', '7.jpg', 'image/jpeg', 'public', 7477, '[]', '{\"uuid\":\"ed4a3c05-7cfb-4b48-a84e-9a2b0fe3483d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2021-06-30 10:02:38', '2021-06-30 10:02:38'),
(25, 'App\\Models\\User', 9, 'avatar', '7', '7.jpg', 'image/jpeg', 'public', 7477, '[]', '{\"uuid\":\"ed4a3c05-7cfb-4b48-a84e-9a2b0fe3483d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2021-06-30 10:02:45', '2021-06-30 10:02:45'),
(26, 'App\\Models\\Upload', 15, 'avatar', 'download', 'download.jpg', 'image/jpeg', 'public', 9055, '[]', '{\"uuid\":\"e1f96c65-3410-44d1-a6bc-15673d2867f6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2021-06-30 10:03:04', '2021-06-30 10:03:04'),
(27, 'App\\Models\\User', 7, 'avatar', 'download', 'download.jpg', 'image/jpeg', 'public', 9055, '[]', '{\"uuid\":\"e1f96c65-3410-44d1-a6bc-15673d2867f6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2021-06-30 10:03:08', '2021-06-30 10:03:08'),
(28, 'App\\Models\\Upload', 16, 'avatar', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 12916, '[]', '{\"uuid\":\"20d31122-e3c3-47fc-b097-3f1e8c6a66cd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2021-06-30 10:03:23', '2021-06-30 10:03:23'),
(29, 'App\\Models\\User', 6, 'avatar', 'download (1)', 'download-(1).jpg', 'image/jpeg', 'public', 12916, '[]', '{\"uuid\":\"20d31122-e3c3-47fc-b097-3f1e8c6a66cd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2021-06-30 10:03:26', '2021-06-30 10:03:26'),
(30, 'App\\Models\\Upload', 17, 'avatar', 'download (2)', 'download-(2).jpg', 'image/jpeg', 'public', 13010, '[]', '{\"uuid\":\"f0d1c51b-f1dc-4ff3-b054-d9884a29fec6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2021-06-30 10:03:42', '2021-06-30 10:03:42'),
(31, 'App\\Models\\Upload', 18, 'avatar', 'sss-removebg-preview', 'sss-removebg-preview.png', 'image/png', 'public', 229426, '[]', '{\"uuid\":\"7a8c2840-9288-46f3-a2d8-2e7cbcc94498\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2021-06-30 10:05:48', '2021-06-30 10:05:48'),
(32, 'App\\Models\\User', 4, 'avatar', 'sss-removebg-preview', 'sss-removebg-preview.png', 'image/png', 'public', 229426, '[]', '{\"uuid\":\"7a8c2840-9288-46f3-a2d8-2e7cbcc94498\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2021-06-30 10:05:50', '2021-06-30 10:05:50'),
(33, 'App\\Models\\Upload', 19, 'avatar', 'Hotpot (1)', 'Hotpot-(1).png', 'image/png', 'public', 714761, '[]', '{\"uuid\":\"81555c4a-e327-4dbf-996b-57af451e1d2d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2021-06-30 10:06:25', '2021-06-30 10:06:25'),
(34, 'App\\Models\\Upload', 20, 'avatar', 'Hotpot', 'Hotpot.png', 'image/png', 'public', 758341, '[]', '{\"uuid\":\"14840f26-ba7f-4060-a3f3-37a8a9cd72c0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2021-06-30 10:07:30', '2021-06-30 10:07:31'),
(35, 'App\\Models\\Upload', 21, 'avatar', 'stylish-handsome-man-on-color-260nw-1294745323', 'stylish-handsome-man-on-color-260nw-1294745323.jpg', 'image/jpeg', 'public', 12355, '[]', '{\"uuid\":\"8c32aa13-7fc8-45f7-8329-388471eba722\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2021-06-30 10:10:39', '2021-06-30 10:10:39'),
(36, 'App\\Models\\User', 3, 'avatar', 'stylish-handsome-man-on-color-260nw-1294745323', 'stylish-handsome-man-on-color-260nw-1294745323.jpg', 'image/jpeg', 'public', 12355, '[]', '{\"uuid\":\"8c32aa13-7fc8-45f7-8329-388471eba722\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 34, '2021-06-30 10:10:40', '2021-06-30 10:10:40'),
(37, 'App\\Models\\Upload', 22, 'avatar', 'photo-1617137968427-85924c800a22', 'photo-1617137968427-85924c800a22.jpg', 'image/jpeg', 'public', 39174, '[]', '{\"uuid\":\"80efd7bc-278d-4f71-8c67-9691b8f1c5bb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 35, '2021-06-30 10:11:00', '2021-06-30 10:11:00'),
(38, 'App\\Models\\User', 2, 'avatar', 'photo-1617137968427-85924c800a22', 'photo-1617137968427-85924c800a22.jpg', 'image/jpeg', 'public', 39174, '[]', '{\"uuid\":\"80efd7bc-278d-4f71-8c67-9691b8f1c5bb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 36, '2021-06-30 10:11:01', '2021-06-30 10:11:01'),
(39, 'App\\Models\\Upload', 23, 'avatar', 'photo-1617127365659-c47fa864d8bc', 'photo-1617127365659-c47fa864d8bc.jpg', 'image/jpeg', 'public', 109077, '[]', '{\"uuid\":\"d35c5663-6648-4d3c-94ab-aa1ea68517bb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 37, '2021-06-30 10:11:28', '2021-06-30 10:11:29'),
(40, 'App\\Models\\User', 12, 'avatar', 'photo-1617127365659-c47fa864d8bc', 'photo-1617127365659-c47fa864d8bc.jpg', 'image/jpeg', 'public', 109077, '[]', '{\"uuid\":\"d35c5663-6648-4d3c-94ab-aa1ea68517bb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 38, '2021-06-30 10:11:31', '2021-06-30 10:11:31'),
(41, 'App\\Models\\Upload', 24, 'avatar', '20031844_1337194066401836_2374189397112187313_n-removebg-preview (5)', '20031844_1337194066401836_2374189397112187313_n-removebg-preview-(5).png', 'image/png', 'public', 73181, '[]', '{\"uuid\":\"a39e63ce-fdc8-4b45-ad9b-8e74bba0558f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 39, '2021-06-30 10:13:25', '2021-06-30 10:13:25'),
(42, 'App\\Models\\User', 5, 'avatar', '20031844_1337194066401836_2374189397112187313_n-removebg-preview (5)', '20031844_1337194066401836_2374189397112187313_n-removebg-preview-(5).png', 'image/png', 'public', 73181, '[]', '{\"uuid\":\"a39e63ce-fdc8-4b45-ad9b-8e74bba0558f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 40, '2021-06-30 10:13:25', '2021-06-30 10:13:25'),
(45, 'App\\Models\\Upload', 26, 'image', '01-13-things-your-hairstylist-wont-tell-you-hard-to-work-with', '01-13-things-your-hairstylist-wont-tell-you-hard-to-work-with.jpg', 'image/jpeg', 'public', 537255, '[]', '{\"uuid\":\"5c36f54f-d949-4206-a5ef-cd93402ddb32\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 43, '2021-06-30 10:17:17', '2021-06-30 10:17:18'),
(46, 'App\\Models\\EProvider', 5, 'image', '01-13-things-your-hairstylist-wont-tell-you-hard-to-work-with', '01-13-things-your-hairstylist-wont-tell-you-hard-to-work-with.jpg', 'image/jpeg', 'public', 537255, '[]', '{\"uuid\":\"5c36f54f-d949-4206-a5ef-cd93402ddb32\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 44, '2021-06-30 10:17:28', '2021-06-30 10:17:28'),
(47, 'App\\Models\\Upload', 27, 'image', 'Beauty-Power-Salon', 'Beauty-Power-Salon.jpg', 'image/jpeg', 'public', 117399, '[]', '{\"uuid\":\"79750bb5-89c0-4f20-a9ea-a74697f4546c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 45, '2021-06-30 10:20:09', '2021-06-30 10:20:10'),
(48, 'App\\Models\\EProvider', 10, 'image', 'Beauty-Power-Salon', 'Beauty-Power-Salon.jpg', 'image/jpeg', 'public', 117399, '[]', '{\"uuid\":\"79750bb5-89c0-4f20-a9ea-a74697f4546c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 46, '2021-06-30 10:20:19', '2021-06-30 10:20:19'),
(51, 'App\\Models\\Upload', 29, 'image', 'Full Home Deep Cleaning', 'Full-Home-Deep-Cleaning.jpg', 'image/jpeg', 'public', 666877, '[]', '{\"uuid\":\"f1c4957b-b5a0-42b3-9015-2cf776cb5eae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 49, '2021-06-30 10:30:13', '2021-06-30 10:30:14'),
(69, 'App\\Models\\Upload', 39, 'image', 'saloon', 'saloon.jpg', 'image/jpeg', 'public', 84469, '[]', '{\"uuid\":\"949eb87c-cfb4-41ba-88b1-278960446ffb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 67, '2021-06-30 12:07:26', '2021-06-30 12:07:27'),
(70, 'App\\Models\\EProvider', 6, 'image', 'saloon', 'saloon.jpg', 'image/jpeg', 'public', 84469, '[]', '{\"uuid\":\"949eb87c-cfb4-41ba-88b1-278960446ffb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 68, '2021-06-30 12:07:54', '2021-06-30 12:07:54'),
(71, 'App\\Models\\Upload', 40, 'default', 'Pedicure', 'Pedicure.png', 'image/png', 'public', 3859, '[]', '{\"uuid\":\"7ec7c337-ee7f-4b4a-bd7a-8f3d9f03eade\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 69, '2021-06-30 12:12:41', '2021-06-30 12:12:41'),
(72, 'App\\Models\\Upload', 41, 'image', ', Turcotte and Ullrich', ',-Turcotte-and-Ullrich.jpg', 'image/jpeg', 'public', 33467, '[]', '{\"uuid\":\"fb29909b-8b28-44e4-b13c-1b4d3f4e6b9b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 70, '2021-06-30 12:13:49', '2021-06-30 12:13:49'),
(99, 'App\\Models\\Upload', 64, 'default', 'Pedicure', 'Pedicure.png', 'image/png', 'public', 3859, '[]', '{\"uuid\":\"ec236d6e-4024-452b-b1af-5d743d4c5c6a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 77, '2021-06-30 12:31:43', '2021-06-30 12:31:43'),
(100, 'App\\Models\\Upload', 65, 'default', 'Make-Over', 'Make-Over.png', 'image/png', 'public', 2626, '[]', '{\"uuid\":\"2a2ca80a-3157-4a08-b7c1-94dbbaef6356\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 78, '2021-06-30 12:31:43', '2021-06-30 12:31:43'),
(101, 'App\\Models\\Upload', 66, 'default', 'facial-Services', 'facial-Services.png', 'image/png', 'public', 3493, '[]', '{\"uuid\":\"ca008a5b-a294-48b0-839e-260bc38a0af5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 79, '2021-06-30 12:31:44', '2021-06-30 12:31:44'),
(102, 'App\\Models\\Upload', 67, 'default', 'Skin-Care-Services', 'Skin-Care-Services.png', 'image/png', 'public', 5031, '[]', '{\"uuid\":\"4ff64830-601e-4710-897b-82f4ef3fb930\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 80, '2021-06-30 12:31:44', '2021-06-30 12:31:44'),
(103, 'App\\Models\\Upload', 68, 'default', 'Hair-Cut-Icon', 'Hair-Cut-Icon.png', 'image/png', 'public', 5164, '[]', '{\"uuid\":\"07a88496-785b-4974-8884-5e7a301dec99\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 81, '2021-06-30 12:31:45', '2021-06-30 12:31:45'),
(106, 'App\\Models\\Upload', 69, 'image', 'Make-Over', 'Make-Over.png', 'image/png', 'public', 2626, '[]', '{\"uuid\":\"954947d3-f573-49ed-8913-1cc4c0c7f8d2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 84, '2021-06-30 12:47:40', '2021-06-30 12:47:40'),
(108, 'App\\Models\\Upload', 70, 'image', 'Skin-Care-Services', 'Skin-Care-Services.png', 'image/png', 'public', 5031, '[]', '{\"uuid\":\"c5fe370f-d4dc-4fff-909f-1b70ffaa6a07\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 86, '2021-06-30 12:50:50', '2021-06-30 12:50:50'),
(111, 'App\\Models\\Upload', 71, 'image', 'Painting Cremin-Little', 'Painting-Cremin-Little.jpg', 'image/jpeg', 'public', 43669, '[]', '{\"uuid\":\"d467cb02-f197-4778-9a06-0ab5f9809975\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 89, '2021-06-30 13:08:51', '2021-06-30 13:08:51'),
(112, 'App\\Models\\EProvider', 9, 'image', 'Painting Cremin-Little', 'Painting-Cremin-Little.jpg', 'image/jpeg', 'public', 43669, '[]', '{\"uuid\":\"d467cb02-f197-4778-9a06-0ab5f9809975\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 90, '2021-06-30 13:08:53', '2021-06-30 13:08:53'),
(114, 'App\\Models\\EProvider', 8, 'image', 'Concrete Hintz, Braun and Gutmann', 'Concrete-Hintz,-Braun-and-Gutmann.jpg', 'image/jpeg', 'public', 117697, '[]', '{\"uuid\":\"5cba7641-3794-41e3-9455-3215eec2aafe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 92, '2021-06-30 13:09:50', '2021-06-30 13:09:50'),
(118, 'App\\Models\\EProvider', 4, 'image', 'Sewer Cleaning Smitham Ltd', 'Sewer-Cleaning-Smitham-Ltd.jpg', 'image/jpeg', 'public', 43738, '[]', '{\"uuid\":\"b1ec94b1-bc60-4808-a4b3-52583a591579\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 96, '2021-06-30 13:12:46', '2021-06-30 13:12:46'),
(119, 'App\\Models\\Upload', 75, 'image', 'Ea labore quia', 'Ea-labore-quia.jpg', 'image/jpeg', 'public', 169531, '[]', '{\"uuid\":\"084a39a5-be81-4d7f-81e7-3d45b8fcc414\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 97, '2021-06-30 13:14:47', '2021-06-30 13:14:47'),
(120, 'App\\Models\\EProvider', 1, 'image', 'Ea labore quia', 'Ea-labore-quia.jpg', 'image/jpeg', 'public', 169531, '[]', '{\"uuid\":\"084a39a5-be81-4d7f-81e7-3d45b8fcc414\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 98, '2021-06-30 13:14:48', '2021-06-30 13:14:48'),
(121, 'App\\Models\\Upload', 76, 'image', 'Painting Beier, Lesch and Grimes', 'Painting-Beier,-Lesch-and-Grimes.jpg', 'image/jpeg', 'public', 124655, '[]', '{\"uuid\":\"27be959d-fee8-4c19-acca-e7d60435de7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 99, '2021-06-30 13:15:49', '2021-06-30 13:15:49'),
(122, 'App\\Models\\EProvider', 2, 'image', 'Painting Beier, Lesch and Grimes', 'Painting-Beier,-Lesch-and-Grimes.jpg', 'image/jpeg', 'public', 124655, '[]', '{\"uuid\":\"27be959d-fee8-4c19-acca-e7d60435de7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 100, '2021-06-30 13:15:50', '2021-06-30 13:15:50'),
(126, 'App\\Models\\EProvider', 15, 'image', 'Security Waelchi-Simonis', 'Security-Waelchi-Simonis.jpg', 'image/jpeg', 'public', 143639, '[]', '{\"uuid\":\"73f96d5a-d9be-4ea5-b773-99de75a6eb52\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 104, '2021-06-30 13:18:34', '2021-06-30 13:18:34'),
(127, 'App\\Models\\Upload', 79, 'default', '1067310-200', '1067310-200.png', 'image/png', 'public', 4031, '[]', '{\"uuid\":\"8581c0f7-c806-4a25-a015-84d6562168da\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 105, '2021-07-01 05:25:50', '2021-07-01 05:25:50'),
(128, 'App\\Models\\Upload', 80, 'default', 'Beauty___Salons-removebg-preview', 'Beauty___Salons-removebg-preview.png', 'image/png', 'public', 228167, '[]', '{\"uuid\":\"109a084a-f0c4-4453-a1fc-038df51ffe93\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 106, '2021-07-01 05:25:50', '2021-07-01 05:25:51'),
(129, 'App\\Models\\Upload', 81, 'default', 'Braiding', 'Braiding.png', 'image/png', 'public', 35505, '[]', '{\"uuid\":\"2290ad31-4f2b-49c1-b0ea-329233526541\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 107, '2021-07-01 05:25:52', '2021-07-01 05:25:52'),
(130, 'App\\Models\\Upload', 82, 'default', 'Braiding_aaa-removebg-preview', 'Braiding_aaa-removebg-preview.png', 'image/png', 'public', 38151, '[]', '{\"uuid\":\"2c642a26-8a9a-437a-9678-524fef794464\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 108, '2021-07-01 05:25:52', '2021-07-01 05:25:52'),
(131, 'App\\Models\\Upload', 83, 'default', 'catering ss', 'catering-ss.png', 'image/png', 'public', 27890, '[]', '{\"uuid\":\"743fcd1b-5619-476a-a004-ccdf2e27a15c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 109, '2021-07-01 05:25:53', '2021-07-01 05:25:53'),
(132, 'App\\Models\\Upload', 84, 'default', 'Braiding_s-removebg-preview', 'Braiding_s-removebg-preview.png', 'image/png', 'public', 9068, '[]', '{\"uuid\":\"add7c2ee-79a2-4d21-a6ee-faf69f9e1ae1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 110, '2021-07-01 05:25:53', '2021-07-01 05:25:53'),
(133, 'App\\Models\\Upload', 85, 'default', 'Catering-removebg-preview', 'Catering-removebg-preview.png', 'image/png', 'public', 15567, '[]', '{\"uuid\":\"c83033fa-3d1e-48e9-8817-7a2ec407cb1c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 111, '2021-07-01 05:25:54', '2021-07-01 05:25:54'),
(134, 'App\\Models\\Upload', 86, 'default', 'Caterings-removebg-preview', 'Caterings-removebg-preview.png', 'image/png', 'public', 18995, '[]', '{\"uuid\":\"e4123ce6-2b73-4bf3-b661-210429bab179\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 112, '2021-07-01 05:25:54', '2021-07-01 05:25:54'),
(135, 'App\\Models\\Upload', 87, 'default', 'events-removebg-preview', 'events-removebg-preview.png', 'image/png', 'public', 7558, '[]', '{\"uuid\":\"82e48360-0a53-40c0-af1f-2c0673e08513\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 113, '2021-07-01 05:25:55', '2021-07-01 05:25:55'),
(136, 'App\\Models\\Upload', 88, 'default', 'Events_Plannersss-removebg-preview', 'Events_Plannersss-removebg-preview.png', 'image/png', 'public', 32961, '[]', '{\"uuid\":\"3e1bee28-4549-4394-bf1c-879d9e7bcbeb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 114, '2021-07-01 05:25:55', '2021-07-01 05:25:55'),
(137, 'App\\Models\\Upload', 89, 'default', 'Eyebrow Microblading asa', 'Eyebrow-Microblading-asa.jpg', 'image/png', 'public', 10823, '[]', '{\"uuid\":\"f5e41b67-b80f-458c-8a21-b02e563036df\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 115, '2021-07-01 05:25:56', '2021-07-01 05:25:56'),
(138, 'App\\Models\\Upload', 90, 'default', 'Eye_Lash_Extension1-removebg-preview', 'Eye_Lash_Extension1-removebg-preview.png', 'image/png', 'public', 84089, '[]', '{\"uuid\":\"8d8b20f7-f28c-4fee-8fc1-5bb7c9fa2d25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 116, '2021-07-01 05:25:56', '2021-07-01 05:25:56'),
(139, 'App\\Models\\Upload', 91, 'default', 'Eyebrow_Microblading_aaa-removebg-preview', 'Eyebrow_Microblading_aaa-removebg-preview.png', 'image/png', 'public', 14501, '[]', '{\"uuid\":\"5bbc6850-6037-48ef-a7c1-bfdd992d9f5f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 117, '2021-07-01 05:25:57', '2021-07-01 05:25:57'),
(140, 'App\\Models\\Upload', 92, 'default', 'Flowers Arrangement', 'Flowers-Arrangement.png', 'image/png', 'public', 9698, '[]', '{\"uuid\":\"b30111d2-5161-4916-9154-719f09f42168\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 118, '2021-07-01 05:25:57', '2021-07-01 05:25:57'),
(141, 'App\\Models\\Upload', 93, 'default', 'Hair Removal Services', 'Hair-Removal-Services.png', 'image/png', 'public', 31856, '[]', '{\"uuid\":\"4dafad4c-3f4c-4476-a626-8085b402894b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 119, '2021-07-01 05:25:58', '2021-07-01 05:25:58'),
(142, 'App\\Models\\Upload', 94, 'default', 'Hair Removal Servicesa', 'Hair-Removal-Servicesa.png', 'image/png', 'public', 10835, '[]', '{\"uuid\":\"bb1c54bc-beee-4515-96db-82f6d40a26f3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 120, '2021-07-01 05:25:58', '2021-07-01 05:25:58'),
(143, 'App\\Models\\Upload', 95, 'default', 'Hair Services', 'Hair-Services.png', 'image/png', 'public', 28277, '[]', '{\"uuid\":\"6a4a8d7d-bd1d-443c-ac42-86012e551925\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 121, '2021-07-01 05:25:59', '2021-07-01 05:25:59'),
(144, 'App\\Models\\Upload', 96, 'default', 'Henna_Artista-removebg-preview', 'Henna_Artista-removebg-preview.png', 'image/png', 'public', 64083, '[]', '{\"uuid\":\"ad05942b-3b2c-4c6e-8042-dea12514a0d6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 122, '2021-07-01 05:25:59', '2021-07-01 05:25:59'),
(145, 'App\\Models\\Upload', 97, 'default', 'makeup artist', 'makeup-artist.png', 'image/png', 'public', 24717, '[]', '{\"uuid\":\"2ee2bda7-bcc8-43b4-a697-d5f9334fd29d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 123, '2021-07-01 05:26:00', '2021-07-01 05:26:00'),
(146, 'App\\Models\\Upload', 98, 'default', 'Henna_Artist-removebg-preview', 'Henna_Artist-removebg-preview.png', 'image/png', 'public', 76570, '[]', '{\"uuid\":\"b9cf4cd8-a743-459d-b024-19b7bf42074c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 124, '2021-07-01 05:26:00', '2021-07-01 05:26:00'),
(147, 'App\\Models\\Upload', 99, 'default', 'Makeup Artistaa', 'Makeup-Artistaa.png', 'image/png', 'public', 11501, '[]', '{\"uuid\":\"989e75b1-e048-4999-b39c-f2bc52d7b0fe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 125, '2021-07-01 05:26:01', '2021-07-01 05:26:01'),
(148, 'App\\Models\\Upload', 100, 'default', 'Makeup Artists', 'Makeup-Artists.png', 'image/jpeg', 'public', 49698, '[]', '{\"uuid\":\"42d424c1-be2b-489c-8b47-1780e7f47fe4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 126, '2021-07-01 05:26:01', '2021-07-01 05:26:02'),
(149, 'App\\Models\\Upload', 101, 'default', 'makeup_artist-removebg-preview', 'makeup_artist-removebg-preview.png', 'image/png', 'public', 25603, '[]', '{\"uuid\":\"9250a8fd-14f3-420a-8e1e-654251197a5d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 127, '2021-07-01 05:26:02', '2021-07-01 05:26:02'),
(150, 'App\\Models\\Upload', 102, 'default', 'nail', 'nail.jpg', 'image/png', 'public', 20319, '[]', '{\"uuid\":\"d2091c93-646a-4fd7-a15a-02fecc95cfb9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 128, '2021-07-01 05:26:02', '2021-07-01 05:26:03'),
(151, 'App\\Models\\Upload', 103, 'default', 'Nails Services1', 'Nails-Services1.png', 'image/png', 'public', 5813, '[]', '{\"uuid\":\"c382fc8e-727c-401b-b0f4-588fdd5fa1db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 129, '2021-07-01 05:26:03', '2021-07-01 05:26:03'),
(152, 'App\\Models\\Upload', 104, 'default', 'Nails_Services-removebg-preview', 'Nails_Services-removebg-preview.png', 'image/png', 'public', 10406, '[]', '{\"uuid\":\"0ce869da-5d5a-44a4-a5a1-68ba49e5530f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 130, '2021-07-01 05:26:04', '2021-07-01 05:26:04'),
(153, 'App\\Models\\Upload', 105, 'default', 'Pedicure', 'Pedicure.png', 'image/png', 'public', 4779, '[]', '{\"uuid\":\"30bf29af-fb4d-41db-8895-d52946811e9c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 131, '2021-07-01 05:26:04', '2021-07-01 05:26:04'),
(154, 'App\\Models\\Upload', 106, 'default', 'Pedicuress', 'Pedicuress.png', 'image/png', 'public', 9656, '[]', '{\"uuid\":\"81b33bfb-2eb0-4b23-adf7-c0262d18e1e5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 132, '2021-07-01 05:26:05', '2021-07-01 05:26:05'),
(155, 'App\\Models\\Upload', 107, 'default', 'Pedicuresssss-removebg-preview', 'Pedicuresssss-removebg-preview.png', 'image/png', 'public', 16201, '[]', '{\"uuid\":\"679f60ff-c65a-4b74-a85f-b651df0c2adb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 133, '2021-07-01 05:26:05', '2021-07-01 05:26:05'),
(156, 'App\\Models\\Upload', 108, 'default', 'Peircing Services', 'Peircing-Services.png', 'image/png', 'public', 30500, '[]', '{\"uuid\":\"08612432-259d-4ae8-b629-400f617633e2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 134, '2021-07-01 05:26:06', '2021-07-01 05:26:06'),
(157, 'App\\Models\\Upload', 109, 'default', 'Peircing Servicessss', 'Peircing-Servicessss.png', 'image/png', 'public', 76933, '[]', '{\"uuid\":\"a88d1cbc-d9fd-4251-8a9f-5a8ece12c3a4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 135, '2021-07-01 05:26:06', '2021-07-01 05:26:06'),
(158, 'App\\Models\\Upload', 110, 'default', 'Peircing_Servicesaaaaaa-removebg-preview', 'Peircing_Servicesaaaaaa-removebg-preview.png', 'image/png', 'public', 26683, '[]', '{\"uuid\":\"6dc76bb4-33a6-41ec-8869-d2ea2904efd4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 136, '2021-07-01 05:26:06', '2021-07-01 05:26:06'),
(159, 'App\\Models\\Upload', 111, 'default', 'Peircing_Servicesaaa-removebg-preview', 'Peircing_Servicesaaa-removebg-preview.png', 'image/png', 'public', 21401, '[]', '{\"uuid\":\"28ab63c9-be8e-4f08-bb63-0b50ac67c288\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 137, '2021-07-01 05:26:07', '2021-07-01 05:26:07'),
(162, 'App\\Models\\Category', 10, 'image', 'Nails Services1', 'Nails-Services1.png', 'image/png', 'public', 5813, '[]', '{\"uuid\":\"c382fc8e-727c-401b-b0f4-588fdd5fa1db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 140, '2021-07-01 05:28:29', '2021-07-01 05:28:29'),
(163, 'App\\Models\\Category', 11, 'image', 'Hair Services', 'Hair-Services.png', 'image/png', 'public', 28277, '[]', '{\"uuid\":\"6a4a8d7d-bd1d-443c-ac42-86012e551925\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 141, '2021-07-01 05:28:59', '2021-07-01 05:28:59'),
(164, 'App\\Models\\Category', 12, 'image', 'Eye_Lash_Extension1-removebg-preview', 'Eye_Lash_Extension1-removebg-preview.png', 'image/png', 'public', 84089, '[]', '{\"uuid\":\"8d8b20f7-f28c-4fee-8fc1-5bb7c9fa2d25\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 142, '2021-07-01 05:29:27', '2021-07-01 05:29:27'),
(165, 'App\\Models\\Category', 13, 'image', 'Eyebrow Microblading asa', 'Eyebrow-Microblading-asa.jpg', 'image/png', 'public', 10823, '[]', '{\"uuid\":\"f5e41b67-b80f-458c-8a21-b02e563036df\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 143, '2021-07-01 05:30:09', '2021-07-01 05:30:09'),
(166, 'App\\Models\\Category', 14, 'image', 'makeup_artist-removebg-preview', 'makeup_artist-removebg-preview.png', 'image/png', 'public', 25603, '[]', '{\"uuid\":\"9250a8fd-14f3-420a-8e1e-654251197a5d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 144, '2021-07-01 05:31:02', '2021-07-01 05:31:02'),
(168, 'App\\Models\\Category', 16, 'image', 'Henna_Artista-removebg-preview', 'Henna_Artista-removebg-preview.png', 'image/png', 'public', 64083, '[]', '{\"uuid\":\"ad05942b-3b2c-4c6e-8042-dea12514a0d6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 146, '2021-07-01 05:32:04', '2021-07-01 05:32:04'),
(169, 'App\\Models\\Category', 17, 'image', 'Peircing_Servicesaaa-removebg-preview', 'Peircing_Servicesaaa-removebg-preview.png', 'image/png', 'public', 21401, '[]', '{\"uuid\":\"28ab63c9-be8e-4f08-bb63-0b50ac67c288\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 147, '2021-07-01 05:32:56', '2021-07-01 05:32:56'),
(170, 'App\\Models\\Category', 18, 'image', 'Braiding_aaa-removebg-preview', 'Braiding_aaa-removebg-preview.png', 'image/png', 'public', 38151, '[]', '{\"uuid\":\"2c642a26-8a9a-437a-9678-524fef794464\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 148, '2021-07-01 05:33:26', '2021-07-01 05:33:26'),
(171, 'App\\Models\\Category', 19, 'image', 'Flowers Arrangement', 'Flowers-Arrangement.png', 'image/png', 'public', 9698, '[]', '{\"uuid\":\"b30111d2-5161-4916-9154-719f09f42168\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 149, '2021-07-01 05:33:44', '2021-07-01 05:33:44'),
(172, 'App\\Models\\Category', 20, 'image', 'Events_Plannersss-removebg-preview', 'Events_Plannersss-removebg-preview.png', 'image/png', 'public', 32961, '[]', '{\"uuid\":\"3e1bee28-4549-4394-bf1c-879d9e7bcbeb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 150, '2021-07-01 05:34:04', '2021-07-01 05:34:04'),
(174, 'App\\Models\\Category', 22, 'image', 'Pedicuresssss-removebg-preview', 'Pedicuresssss-removebg-preview.png', 'image/png', 'public', 16201, '[]', '{\"uuid\":\"679f60ff-c65a-4b74-a85f-b651df0c2adb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 152, '2021-07-01 05:34:53', '2021-07-01 05:34:53'),
(192, 'App\\Models\\Category', 1, 'image', 'Beauty-Power-Salon', 'Beauty-Power-Salon.jpg', 'image/jpeg', 'public', 117399, '[]', '{\"uuid\":\"79750bb5-89c0-4f20-a9ea-a74697f4546c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 169, '2021-07-13 10:34:36', '2021-07-13 10:34:36'),
(194, 'App\\Models\\Upload', 119, 'default', 'event', 'event.jpg', 'image/jpeg', 'public', 379198, '[]', '{\"uuid\":\"4becc91b-72a3-4d5f-b0b1-a4b5d5040b36\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 170, '2021-07-13 13:43:06', '2021-07-13 13:43:06'),
(195, 'App\\Models\\Category', 2, 'image', 'event', 'event.jpg', 'image/jpeg', 'public', 379198, '[]', '{\"uuid\":\"4becc91b-72a3-4d5f-b0b1-a4b5d5040b36\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 171, '2021-07-13 13:43:24', '2021-07-13 13:43:24'),
(196, 'App\\Models\\Upload', 120, 'default', 'hear removel', 'hear-removel.jpg', 'image/jpeg', 'public', 91837, '[]', '{\"uuid\":\"8d9af9cb-49dd-40e6-82fb-c7b21df0843e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 172, '2021-07-13 13:46:54', '2021-07-13 13:46:54'),
(197, 'App\\Models\\Category', 15, 'image', 'hear removel', 'hear-removel.jpg', 'image/jpeg', 'public', 91837, '[]', '{\"uuid\":\"8d9af9cb-49dd-40e6-82fb-c7b21df0843e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 173, '2021-07-13 13:47:11', '2021-07-13 13:47:11'),
(198, 'App\\Models\\Upload', 121, 'default', 'Skin Care', 'Skin-Care.jpg', 'image/jpeg', 'public', 149971, '[]', '{\"uuid\":\"f4d50de0-f1df-4112-b4cf-c63f3b098f7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 174, '2021-07-13 13:53:26', '2021-07-13 13:53:26'),
(199, 'App\\Models\\Upload', 122, 'image', 'Skin Care', 'Skin-Care.jpg', 'image/jpeg', 'public', 149971, '[]', '{\"uuid\":\"1e66edfe-4c62-486f-9714-579d7b2bfdfb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 175, '2021-07-13 13:55:27', '2021-07-13 13:55:28'),
(200, 'App\\Models\\EService', 44, 'image', 'Skin Care', 'Skin-Care.jpg', 'image/jpeg', 'public', 149971, '[]', '{\"uuid\":\"1e66edfe-4c62-486f-9714-579d7b2bfdfb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 176, '2021-07-13 13:55:29', '2021-07-13 13:55:29'),
(201, 'App\\Models\\Upload', 123, 'image', 'flower', 'flower.png', 'image/png', 'public', 206534, '[]', '{\"uuid\":\"87090905-37ba-49b9-bae1-98c7b9e9cb6a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 177, '2021-07-13 14:00:46', '2021-07-13 14:00:46'),
(202, 'App\\Models\\EService', 49, 'image', 'flower', 'flower.png', 'image/png', 'public', 206534, '[]', '{\"uuid\":\"87090905-37ba-49b9-bae1-98c7b9e9cb6a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 178, '2021-07-13 14:00:47', '2021-07-13 14:00:47'),
(203, 'App\\Models\\Upload', 124, 'image', 'Bathtub Refinishing', 'Bathtub-Refinishing.jpg', 'image/jpeg', 'public', 40704, '[]', '{\"uuid\":\"2491ed28-0bf7-4f72-88ca-bedb3659fb02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 179, '2021-07-13 14:01:57', '2021-07-13 14:01:57'),
(204, 'App\\Models\\EService', 58, 'image', 'Bathtub Refinishing', 'Bathtub-Refinishing.jpg', 'image/jpeg', 'public', 40704, '[]', '{\"uuid\":\"2491ed28-0bf7-4f72-88ca-bedb3659fb02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 180, '2021-07-13 14:01:59', '2021-07-13 14:01:59'),
(205, 'App\\Models\\Upload', 125, 'image', 'Hair Style Service', 'Hair-Style-Service.png', 'image/png', 'public', 238628, '[]', '{\"uuid\":\"d06514f0-df0d-4f52-a8ee-9b8e6b0aad96\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 181, '2021-07-13 14:05:02', '2021-07-13 14:05:02'),
(206, 'App\\Models\\EService', 51, 'image', 'Hair Style Service', 'Hair-Style-Service.png', 'image/png', 'public', 238628, '[]', '{\"uuid\":\"d06514f0-df0d-4f52-a8ee-9b8e6b0aad96\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 182, '2021-07-13 14:05:03', '2021-07-13 14:05:03'),
(207, 'App\\Models\\Upload', 126, 'image', 'Wedding_Photos_s-removebg-preview (1)', 'Wedding_Photos_s-removebg-preview-(1).png', 'image/png', 'public', 137843, '[]', '{\"uuid\":\"f46dab2c-63a5-40bc-9a53-a1a5231e56b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 183, '2021-07-13 14:08:54', '2021-07-13 14:08:54'),
(208, 'App\\Models\\EService', 54, 'image', 'Wedding_Photos_s-removebg-preview (1)', 'Wedding_Photos_s-removebg-preview-(1).png', 'image/png', 'public', 137843, '[]', '{\"uuid\":\"f46dab2c-63a5-40bc-9a53-a1a5231e56b5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 184, '2021-07-13 14:08:55', '2021-07-13 14:08:55'),
(209, 'App\\Models\\Upload', 127, 'image', 'Hair Style Service', 'Hair-Style-Service.png', 'image/png', 'public', 238628, '[]', '{\"uuid\":\"2de4dcf3-3af9-4cb7-96bf-3f6352f956ef\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 185, '2021-07-13 14:09:32', '2021-07-13 14:09:33'),
(210, 'App\\Models\\EService', 51, 'image', 'Hair Style Service', 'Hair-Style-Service.png', 'image/png', 'public', 238628, '[]', '{\"uuid\":\"2de4dcf3-3af9-4cb7-96bf-3f6352f956ef\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 186, '2021-07-13 14:09:34', '2021-07-13 14:09:34'),
(211, 'App\\Models\\Upload', 128, 'image', 'Post_Party_Cleaning-removebg-preview', 'Post_Party_Cleaning-removebg-preview.png', 'image/png', 'public', 232194, '[]', '{\"uuid\":\"98354abc-8fcd-4fe8-87a8-7c7d5b3321d9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 187, '2021-07-13 14:12:22', '2021-07-13 14:12:22'),
(212, 'App\\Models\\EService', 73, 'image', 'Post_Party_Cleaning-removebg-preview', 'Post_Party_Cleaning-removebg-preview.png', 'image/png', 'public', 232194, '[]', '{\"uuid\":\"98354abc-8fcd-4fe8-87a8-7c7d5b3321d9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 188, '2021-07-13 14:12:23', '2021-07-13 14:12:23'),
(213, 'App\\Models\\Upload', 129, 'image', 'Birth Day', 'Birth-Day.png', 'image/jpeg', 'public', 562476, '[]', '{\"uuid\":\"0f51f360-0e02-426d-b025-491304d1dca5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 189, '2021-07-14 07:07:48', '2021-07-14 07:07:49'),
(214, 'App\\Models\\EService', 47, 'image', 'Birth Day', 'Birth-Day.png', 'image/jpeg', 'public', 562476, '[]', '{\"uuid\":\"0f51f360-0e02-426d-b025-491304d1dca5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 190, '2021-07-14 07:07:50', '2021-07-14 07:07:50'),
(215, 'App\\Models\\Upload', 130, 'image', 'Facial-removebg-preview', 'Facial-removebg-preview.png', 'image/png', 'public', 247816, '[]', '{\"uuid\":\"538f2377-92ef-4d5d-9849-905480c5be49\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 191, '2021-07-14 07:22:14', '2021-07-14 07:22:14'),
(216, 'App\\Models\\EService', 45, 'image', 'Facial-removebg-preview', 'Facial-removebg-preview.png', 'image/png', 'public', 247816, '[]', '{\"uuid\":\"538f2377-92ef-4d5d-9849-905480c5be49\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 192, '2021-07-14 07:22:42', '2021-07-14 07:22:42'),
(217, 'App\\Models\\Upload', 132, 'image', 'Facial-removebg-preview (1)', 'Facial-removebg-preview-(1).png', 'image/png', 'public', 247816, '[]', '{\"uuid\":\"58d7ce02-f084-4e98-8a12-aeac847b9b53\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 193, '2021-07-14 07:23:35', '2021-07-14 07:23:35'),
(218, 'App\\Models\\EService', 68, 'image', 'Facial-removebg-preview (1)', 'Facial-removebg-preview-(1).png', 'image/png', 'public', 247816, '[]', '{\"uuid\":\"58d7ce02-f084-4e98-8a12-aeac847b9b53\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 194, '2021-07-14 07:23:37', '2021-07-14 07:23:37'),
(219, 'App\\Models\\Upload', 133, 'image', 'Deck-removebg-preview', 'Deck-removebg-preview.png', 'image/png', 'public', 360261, '[]', '{\"uuid\":\"110a8204-9d65-48bb-9504-04e2af7faa38\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 195, '2021-07-14 07:26:40', '2021-07-14 07:26:40'),
(220, 'App\\Models\\Upload', 134, 'image', 'Deck', 'Deck.png', 'image/png', 'public', 360261, '[]', '{\"uuid\":\"bb0a581d-82bd-47a5-a446-6fc9fdda12db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 196, '2021-07-14 07:27:06', '2021-07-14 07:27:06'),
(221, 'App\\Models\\EService', 80, 'image', 'Deck', 'Deck.png', 'image/png', 'public', 360261, '[]', '{\"uuid\":\"bb0a581d-82bd-47a5-a446-6fc9fdda12db\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 197, '2021-07-14 07:27:07', '2021-07-14 07:27:07'),
(222, 'App\\Models\\Upload', 135, 'image', 'Makeup___Beauty_Services-removebg-preview', 'Makeup___Beauty_Services-removebg-preview.png', 'image/png', 'public', 246246, '[]', '{\"uuid\":\"e5031b13-d22f-4439-8d7f-81a141be16e3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 198, '2021-07-14 07:33:06', '2021-07-14 07:33:06'),
(223, 'App\\Models\\EService', 64, 'image', 'Makeup___Beauty_Services-removebg-preview', 'Makeup___Beauty_Services-removebg-preview.png', 'image/png', 'public', 246246, '[]', '{\"uuid\":\"e5031b13-d22f-4439-8d7f-81a141be16e3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 199, '2021-07-14 07:33:09', '2021-07-14 07:33:09'),
(224, 'App\\Models\\Upload', 136, 'image', 'Pedi Cure', 'Pedi-Cure.png', 'image/jpeg', 'public', 442133, '[]', '{\"uuid\":\"dacaca4b-cc1d-4adc-bb0c-3b61e6e405ae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 200, '2021-07-14 07:35:09', '2021-07-14 07:35:10'),
(225, 'App\\Models\\Upload', 137, 'image', 'Pedi_Cure-removebg-preview', 'Pedi_Cure-removebg-preview.png', 'image/png', 'public', 329979, '[]', '{\"uuid\":\"0809ada0-c157-40af-976e-450c5c1f1a7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 201, '2021-07-14 07:36:31', '2021-07-14 07:36:31'),
(226, 'App\\Models\\EService', 43, 'image', 'Pedi_Cure-removebg-preview', 'Pedi_Cure-removebg-preview.png', 'image/png', 'public', 329979, '[]', '{\"uuid\":\"0809ada0-c157-40af-976e-450c5c1f1a7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 202, '2021-07-14 07:36:33', '2021-07-14 07:36:33'),
(227, 'App\\Models\\Upload', 138, 'image', 'Photo_Shoots-removebg-preview', 'Photo_Shoots-removebg-preview.png', 'image/png', 'public', 186049, '[]', '{\"uuid\":\"20abfdaf-9c7f-47da-866b-23d9ef7b6717\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 203, '2021-07-14 07:39:27', '2021-07-14 07:39:27'),
(228, 'App\\Models\\EService', 46, 'image', 'Photo_Shoots-removebg-preview', 'Photo_Shoots-removebg-preview.png', 'image/png', 'public', 186049, '[]', '{\"uuid\":\"20abfdaf-9c7f-47da-866b-23d9ef7b6717\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 204, '2021-07-14 07:39:30', '2021-07-14 07:39:30'),
(229, 'App\\Models\\Upload', 139, 'image', 'Portrait_Photos_Servic-removebg-preview', 'Portrait_Photos_Servic-removebg-preview.png', 'image/png', 'public', 149133, '[]', '{\"uuid\":\"de407c96-a8b1-4c9f-9d03-380820f4267e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 205, '2021-07-14 07:46:55', '2021-07-14 07:46:55'),
(230, 'App\\Models\\EService', 75, 'image', 'Portrait_Photos_Servic-removebg-preview', 'Portrait_Photos_Servic-removebg-preview.png', 'image/png', 'public', 149133, '[]', '{\"uuid\":\"de407c96-a8b1-4c9f-9d03-380820f4267e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 206, '2021-07-14 07:46:58', '2021-07-14 07:46:58'),
(233, 'App\\Models\\Upload', 141, 'image', 'Hair_Style_Servicesss-removebg-preview', 'Hair_Style_Servicesss-removebg-preview.png', 'image/png', 'public', 332197, '[]', '{\"uuid\":\"411bb997-2930-46a3-b9c9-f1b05f0e3b02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 209, '2021-07-14 07:56:25', '2021-07-14 07:56:25'),
(234, 'App\\Models\\EService', 55, 'image', 'Hair_Style_Servicesss-removebg-preview', 'Hair_Style_Servicesss-removebg-preview.png', 'image/png', 'public', 332197, '[]', '{\"uuid\":\"411bb997-2930-46a3-b9c9-f1b05f0e3b02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 210, '2021-07-14 07:56:28', '2021-07-14 07:56:28'),
(235, 'App\\Models\\Upload', 142, 'image', 'Hair_Cut-removebg-preview', 'Hair_Cut-removebg-preview.png', 'image/png', 'public', 236968, '[]', '{\"uuid\":\"1ccf1aae-0aa3-47de-bcbc-813090b1a269\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 211, '2021-07-14 08:11:36', '2021-07-14 08:11:36'),
(236, 'App\\Models\\EService', 41, 'image', 'Hair_Cut-removebg-preview', 'Hair_Cut-removebg-preview.png', 'image/png', 'public', 236968, '[]', '{\"uuid\":\"1ccf1aae-0aa3-47de-bcbc-813090b1a269\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 212, '2021-07-14 08:11:37', '2021-07-14 08:11:37'),
(237, 'App\\Models\\Upload', 143, 'image', 'Full Home Deep Cleaning', 'Full-Home-Deep-Cleaning.jpg', 'image/jpeg', 'public', 97325, '[]', '{\"uuid\":\"9e5596b1-2af9-45d5-a877-ad91b140b04c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 213, '2021-07-14 08:13:05', '2021-07-14 08:13:05'),
(239, 'App\\Models\\Upload', 144, 'image', 'Flooring Services', 'Flooring-Services.jpg', 'image/jpeg', 'public', 39297, '[]', '{\"uuid\":\"b784322c-5f1f-4c98-bba3-83f15c47d94e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 215, '2021-07-14 08:14:27', '2021-07-14 08:14:27'),
(240, 'App\\Models\\EService', 78, 'image', 'Flooring Services', 'Flooring-Services.jpg', 'image/jpeg', 'public', 39297, '[]', '{\"uuid\":\"b784322c-5f1f-4c98-bba3-83f15c47d94e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 216, '2021-07-14 08:14:29', '2021-07-14 08:14:29'),
(241, 'App\\Models\\Upload', 145, 'image', 'Make_Over-removebg-preview', 'Make_Over-removebg-preview.png', 'image/png', 'public', 526811, '[]', '{\"uuid\":\"5774d97f-18c4-4837-9a3a-e2fb2c5afe88\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 217, '2021-07-14 08:18:56', '2021-07-14 08:18:56'),
(242, 'App\\Models\\EService', 42, 'image', 'Make_Over-removebg-preview', 'Make_Over-removebg-preview.png', 'image/png', 'public', 526811, '[]', '{\"uuid\":\"5774d97f-18c4-4837-9a3a-e2fb2c5afe88\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 218, '2021-07-14 08:18:58', '2021-07-14 08:18:58'),
(243, 'App\\Models\\Upload', 146, 'image', 'Tank Cleaning', 'Tank-Cleaning.png', 'image/jpeg', 'public', 190077, '[]', '{\"uuid\":\"08e56624-f8bd-4f40-a24d-159c0f318555\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 219, '2021-07-14 08:21:10', '2021-07-14 08:21:10'),
(244, 'App\\Models\\EService', 69, 'image', 'Tank Cleaning', 'Tank-Cleaning.png', 'image/jpeg', 'public', 190077, '[]', '{\"uuid\":\"08e56624-f8bd-4f40-a24d-159c0f318555\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 220, '2021-07-14 08:21:10', '2021-07-14 08:21:10'),
(245, 'App\\Models\\Upload', 147, 'image', 'Hair___Beaut-removebg-preview', 'Hair___Beaut-removebg-preview.png', 'image/png', 'public', 214092, '[]', '{\"uuid\":\"94df97ef-09de-418b-a947-04ae72869dbe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 221, '2021-07-14 08:25:23', '2021-07-14 08:25:23'),
(246, 'App\\Models\\EService', 81, 'image', 'Hair___Beaut-removebg-preview', 'Hair___Beaut-removebg-preview.png', 'image/png', 'public', 214092, '[]', '{\"uuid\":\"94df97ef-09de-418b-a947-04ae72869dbe\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 222, '2021-07-14 08:25:26', '2021-07-14 08:25:26'),
(247, 'App\\Models\\Upload', 148, 'image', 'Thai_Massage_Services-removebg-preview', 'Thai_Massage_Services-removebg-preview.png', 'image/png', 'public', 182608, '[]', '{\"uuid\":\"1704290e-db34-440d-b7f5-de588a0fb39d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 223, '2021-07-14 08:27:17', '2021-07-14 08:27:17'),
(248, 'App\\Models\\EService', 66, 'image', 'Thai_Massage_Services-removebg-preview', 'Thai_Massage_Services-removebg-preview.png', 'image/png', 'public', 182608, '[]', '{\"uuid\":\"1704290e-db34-440d-b7f5-de588a0fb39d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 224, '2021-07-14 08:27:19', '2021-07-14 08:27:19'),
(249, 'App\\Models\\Upload', 149, 'image', 'Wedding___h-removebg-preview (3)', 'Wedding___h-removebg-preview-(3).png', 'image/png', 'public', 103197, '[]', '{\"uuid\":\"de437312-f68a-4ca4-bae2-764f06f4212e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 225, '2021-07-14 08:29:33', '2021-07-14 08:29:33'),
(250, 'App\\Models\\EService', 48, 'image', 'Wedding___h-removebg-preview (3)', 'Wedding___h-removebg-preview-(3).png', 'image/png', 'public', 103197, '[]', '{\"uuid\":\"de437312-f68a-4ca4-bae2-764f06f4212e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 226, '2021-07-14 08:29:35', '2021-07-14 08:29:35'),
(251, 'App\\Models\\Upload', 150, 'image', 'Full Home Deep Cleaningsss', 'Full-Home-Deep-Cleaningsss.png', 'image/png', 'public', 1004975, '[]', '{\"uuid\":\"dde3f062-7353-4de5-9e45-3867e4ef9f9c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 227, '2021-07-14 08:31:39', '2021-07-14 08:31:39'),
(253, 'App\\Models\\Upload', 151, 'image', 'Care_Services_Bernier__Goodwin_and_Bradtke-removebg-preview (1)', 'Care_Services_Bernier__Goodwin_and_Bradtke-removebg-preview-(1).png', 'image/png', 'public', 201464, '[]', '{\"uuid\":\"d5fdaf51-8fb9-44e2-bc37-8ca3638c9fb3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 229, '2021-07-14 08:41:50', '2021-07-14 08:41:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(254, 'App\\Models\\EProvider', 16, 'image', 'Care_Services_Bernier__Goodwin_and_Bradtke-removebg-preview (1)', 'Care_Services_Bernier__Goodwin_and_Bradtke-removebg-preview-(1).png', 'image/png', 'public', 201464, '[]', '{\"uuid\":\"d5fdaf51-8fb9-44e2-bc37-8ca3638c9fb3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 230, '2021-07-14 08:41:52', '2021-07-14 08:41:52'),
(255, 'App\\Models\\Upload', 152, 'image', 'Sewer Cleaning Kuvalis, Turcotte and Ullrichss', 'Sewer-Cleaning-Kuvalis,-Turcotte-and-Ullrichss.jpg', 'image/jpeg', 'public', 103095, '[]', '{\"uuid\":\"e71bec80-8b90-4f64-a647-a6c393f72521\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 231, '2021-07-14 08:47:57', '2021-07-14 08:47:58'),
(256, 'App\\Models\\EProvider', 11, 'image', 'Sewer Cleaning Kuvalis, Turcotte and Ullrichss', 'Sewer-Cleaning-Kuvalis,-Turcotte-and-Ullrichss.jpg', 'image/jpeg', 'public', 103095, '[]', '{\"uuid\":\"e71bec80-8b90-4f64-a647-a6c393f72521\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2021-07-14 08:47:59', '2021-07-14 08:47:59'),
(257, 'App\\Models\\Upload', 153, 'image', 'karachi.jpg', 'karachi.jpg.crdownload', 'image/jpeg', 'public', 129333, '[]', '{\"uuid\":\"b8e39f76-880d-42bf-a749-1f7b13d845fa\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 233, '2021-07-14 08:50:33', '2021-07-14 08:50:33'),
(259, 'App\\Models\\Upload', 154, 'image', 'ev', 'ev.jpg', 'image/jpeg', 'public', 75573, '[]', '{\"uuid\":\"0701a83d-8cdd-4598-9b36-ecde38020696\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 235, '2021-07-14 08:52:29', '2021-07-14 08:52:29'),
(260, 'App\\Models\\EProvider', 14, 'image', 'ev', 'ev.jpg', 'image/jpeg', 'public', 75573, '[]', '{\"uuid\":\"0701a83d-8cdd-4598-9b36-ecde38020696\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 236, '2021-07-14 08:52:32', '2021-07-14 08:52:32'),
(261, 'App\\Models\\Slide', 2, 'image', 'saloon', 'saloon.jpg', 'image/jpeg', 'public', 84469, '[]', '{\"uuid\":\"949eb87c-cfb4-41ba-88b1-278960446ffb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2021-07-14 09:10:02', '2021-07-14 09:10:02'),
(262, 'App\\Models\\Slide', 3, 'image', 'ev', 'ev.jpg', 'image/jpeg', 'public', 75573, '[]', '{\"uuid\":\"0701a83d-8cdd-4598-9b36-ecde38020696\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 238, '2021-07-14 09:10:48', '2021-07-14 09:10:48'),
(263, 'App\\Models\\Slide', 4, 'image', 'Pedi_Cure-removebg-preview', 'Pedi_Cure-removebg-preview.png', 'image/png', 'public', 329979, '[]', '{\"uuid\":\"0809ada0-c157-40af-976e-450c5c1f1a7b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2021-07-14 09:13:55', '2021-07-14 09:13:55'),
(264, 'App\\Models\\Upload', 155, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 29878, '[]', '{\"uuid\":\"EAAag7up8IXMBAJOTqiFRAnGEcOEvefsPkuLSlqmZAdVQFks6SyOJzdeHveZABX0U6IYfKL7TDYLUDdB4TvxD5E3t5l4CXfqU7fpgPZAZCjQ31eckU5fZCigl9OVzSZCZAF1g0ZAOXAPVEUwiazT22Ug58XY0uChIZABnZAmMGZCIWIQZCQZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 240, '2021-07-15 07:00:15', '2021-07-15 07:00:16'),
(266, 'App\\Models\\Upload', 156, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM89bhfOzALV7RfuUzIjyhi9sTlxNKeWIMiHn5v5AaJJCT9VNrjZxzpc7XKKXe4lT5ft_NYL6W-iBZ3roUO1SNIpz4i8IAwTeGZSfTgBayHQ_QUdxsORHjOhqyhbWzrkCuJRgx4zJ1abcvKucTXumOztfA\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 241, '2021-07-16 13:59:15', '2021-07-16 13:59:15'),
(268, 'App\\Models\\Upload', 157, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM_NlmxKrMBRs9Tk0cqr8YWOa6oPX8E6fRrBQS5ux5fPMWqbsRacKhQ0VNWPXEDiDQWYTvu_V1lXypBecwBynMpaNM96Fy5A9NmrDYW-cz4uwPveiIqo8SG0vpO1IodhOP7YxFhrPzPAa_iPvwYunz9MKA\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 242, '2021-07-16 14:02:02', '2021-07-16 14:02:02'),
(270, 'App\\Models\\Upload', 158, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 29878, '[]', '{\"uuid\":\"EAAag7up8IXMBAH133yBkRA7zQVqaQ2qRXuZCORZBoOZC2VjaLh2bgD0KlJa2Bc53FZBYhzgX6NxDNjEETXVsSLvm0j1xbnnpLPmbywZCHQLMpl1AmE5A6CDbsCNZCKvbsAxI2nAxXp9JJgdofBHhZB8zCuux8BZCS0VisdCC5UVfxwZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 243, '2021-07-17 17:29:11', '2021-07-17 17:29:11'),
(272, 'App\\Models\\Upload', 159, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 26914, '[]', '{\"uuid\":\"EAAag7up8IXMBAHYM8dBiq06VrvOyZCVtDs2XrW3954YG03TfJbi2TZBleBPrnja9Nl1ojZB8T5sJ3yngBcymffQBHr0jxrcQCtxZCon7tieWVyNZAbAad12LERoDnWjZCo0ZA5jptNrJLwNZBfnwA7AHzRsWprGFj6dftcSi62ZCDllk8JHHPTqHzBY6aouYIajcZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 245, '2021-07-17 17:31:30', '2021-07-17 17:31:30'),
(273, 'App\\Models\\Upload', 160, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 26914, '[]', '{\"uuid\":\"EAAag7up8IXMBAC1c0bCZCmjy84KPLPsSiaTbTMau460nx5zf0zEbG5W4reLf6GqfuwUrYSzu5qp2xOlx0DIYdwmGKnXKV2EIxS8JkRI6d1vTJG7Y3SR6ZCELnbLsPGum4tPqdcPsiorFqT8zf0VKxy6fr5eLyUDHFZBgobncJoIZCTVcJAKm2b6xeJnDakMZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 246, '2021-07-17 17:34:45', '2021-07-17 17:34:45'),
(274, 'App\\Models\\Upload', 161, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 124338, '[]', '{\"uuid\":\"EAAag7up8IXMBAIwzZBCt22YBqVhITZBMKDpqbkZBi6pEhaxkeCTZAlvaW5yZBfbMqIKaReZCDDUjcdZArmdrVt4YsvfU0Q638OwPFy5XUkFKFAjUCwoL4ybcZBe2PZCM4e0LVaZAiscGCbNqZBtrD9QfdilTrxJnlBEviXjEPSPMv8egQZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 247, '2021-07-19 05:00:31', '2021-07-19 05:00:32'),
(276, 'App\\Models\\Upload', 162, 'avatar', 'picture', 'picture.gif', 'image/gif', 'public', 390, '[]', '{\"uuid\":\"EAAag7up8IXMBAKMeygLRDtMjkodGts53TRioGK1kHSa79tYtoGbn63r2cuU4vRyHsVlIXlRC8IFIeZCB1crN287nKLcW9OZC5v0WMYyIF9Qi6ggGi8idCu0OZAnycpH9t2ZClRKmN5LEp2etDgIRkGLrJWU0fXTVgie288zAdFFQub0lVFT9\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2021-07-24 06:25:17', '2021-07-24 06:25:17'),
(277, 'App\\Models\\User', 66, 'avatar', 'picture', 'picture.gif', 'image/gif', 'public', 390, '[]', '{\"uuid\":\"EAAag7up8IXMBAKMeygLRDtMjkodGts53TRioGK1kHSa79tYtoGbn63r2cuU4vRyHsVlIXlRC8IFIeZCB1crN287nKLcW9OZC5v0WMYyIF9Qi6ggGi8idCu0OZAnycpH9t2ZClRKmN5LEp2etDgIRkGLrJWU0fXTVgie288zAdFFQub0lVFT9\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 250, '2021-07-24 06:25:17', '2021-07-24 06:25:17'),
(278, 'App\\Models\\Upload', 163, 'avatar', 'picture', 'picture.gif', 'image/gif', 'public', 390, '[]', '{\"uuid\":\"EAAag7up8IXMBAF8bdk1k3skl8YZAXH3FtTYkZCMvzPDrkGrxmrYirrZCfJ87tdZCucZAdFgMXYzG6rFTUu831rwd47tXtGhUXXRs4A8i9HpntFofATQg39vHhGEUGjVlFU7XDHvBAQycJZCXUPkQDPouud21VpC8Ta8nXlOOS5nzpEH4qGgSlMsIObZBOT2FmUZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 251, '2021-07-25 02:24:50', '2021-07-25 02:24:50'),
(279, 'App\\Models\\Upload', 164, 'avatar', 'picture', 'picture.gif', 'image/gif', 'public', 390, '[]', '{\"uuid\":\"EAAag7up8IXMBAHvTkrX3q64WUywv81iSRfSXH0LkhK2tqRvEtiBbLEBZBy4icJbEU6JenD915HtYXkO6ikVGHqTvpa4T2K93JZBr9kRAuL2cV4xBoN6gZBNwd1gDFCL48ClXVyj5meSVADjkA7vaibyZCD8WjAmZCtoeclJCIyvBd2r2xgEt8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 252, '2021-07-25 02:46:18', '2021-07-25 02:46:18'),
(280, 'App\\Models\\User', 68, 'avatar', 'picture', 'picture.gif', 'image/gif', 'public', 390, '[]', '{\"uuid\":\"EAAag7up8IXMBAHvTkrX3q64WUywv81iSRfSXH0LkhK2tqRvEtiBbLEBZBy4icJbEU6JenD915HtYXkO6ikVGHqTvpa4T2K93JZBr9kRAuL2cV4xBoN6gZBNwd1gDFCL48ClXVyj5meSVADjkA7vaibyZCD8WjAmZCtoeclJCIyvBd2r2xgEt8\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 253, '2021-07-25 02:46:18', '2021-07-25 02:46:18'),
(281, 'App\\Models\\Upload', 165, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM__j7Hbb5SFw8zkwVmr7IT8lZ8D1AkNimAVBNkh7vRDgapx-b4sRf-3wL_Qs9y9UCuu-33g9RkXpUXmyVhMS3lGWLAIMTi5UIaWOxCv5knO-Rc9aMwVegb_MihzzX7SIPMiitk2kMUsJlQYdfBu4ucTIA\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 254, '2021-07-26 05:42:02', '2021-07-26 05:42:02'),
(283, 'App\\Models\\Upload', 166, 'avatar', 'AATXAJyuJbH0zo0_YclUzsWqVYP5WYnTHNvoxTGEy311=s96-c', 'AATXAJyuJbH0zo0_YclUzsWqVYP5WYnTHNvoxTGEy311=s96-c.png', 'image/png', 'public', 510, '[]', '{\"uuid\":\"ya29.a0ARrdaM_Vqq7G2kEHWRwJRu-WfDFzQtDW3Ktyykv6Tah-Ru9t9ez9Wsm_41E-aJW_bCen3HlnkBC0So0sgXilVeVd7Z9lfZ9OVs3UxBY0LBLYDzDprYWcU4fD-4L4QaiIe1X5E6RG5GaG7asId_oyQ_d_fEOa\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 256, '2021-07-26 05:42:49', '2021-07-26 05:42:49'),
(285, 'App\\Models\\Upload', 167, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM9wVi70odaCkrRARyMzafPyY0XDK68Qzsu9qU3Z1eBNQ9NssCk9MgZQ1XjPQmNCopOXyvov1XH2cyGveV0pB8tpzboGg350B2U7cVGgbtW0jXFH3k2EGm8z8STWLfDlnzVcB9Yg7kCgIYTXAv0Wcc6O0g\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 258, '2021-07-28 10:23:08', '2021-07-28 10:23:08'),
(287, 'App\\Models\\Upload', 168, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 14342, '[]', '{\"uuid\":\"EAAEKJHCybC8BAAxnIyCZCblYmWZA3jWvZAE5vjmBrnoLPPRl2J5Dm0ZBdZAtUAUkPw4csgXScgwN1kWBjwIFA4h7yZBFlZCTZAnyPODApIjNQZBnltuFyyasjUFrUS2dKzHZChLBmk94XsctzAr6PUCgcsDlvKuZBV0IydDOZCrzXYFiDgZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 260, '2021-07-28 10:41:27', '2021-07-28 10:41:28'),
(289, 'App\\Models\\Upload', 169, 'avatar', 'download', 'download.jpg', 'image/jpeg', 'public', 3031, '[]', '{\"uuid\":\"48d04533-3cde-4e93-a542-44b067421014\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 261, '2021-07-29 07:42:34', '2021-07-29 07:42:34'),
(292, 'App\\Models\\Upload', 170, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM9CBekgna13wUmyFc7Ld_L2WueMaFN_3lu1kKaVO5M1zPqf95xDzxTtrUWiZ_nlv4r5cWBgYMpfVesaL8MrWtT4N9ym7E97hUQ_1xlK37PJcfIR4qrw7IkX4bPy-YsFLIva53j0osOlM0V_XmE7wne7dg\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 262, '2021-07-30 13:31:13', '2021-07-30 13:31:13'),
(294, 'App\\Models\\Upload', 171, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM9No8Cn1D8_IkNsr0doamq9Q5IO77gCzoj7kXDNbxmnCG6Fz54XnCBtDvX5bFz3KjRR4oecwdEDL-x1N2vG04tShT2aE0Z90qcwDSQkv53GcYuj3W8wVnL_9LFC_EeT5XdWw-L0Z7hwl5UyetdwVAI8OQ\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2021-07-30 13:35:49', '2021-07-30 13:35:49'),
(296, 'App\\Models\\Upload', 172, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM9Fv88ZMrZz-du2gULpnA2bjAUyYwAtXqiJudHaAAbTwKwPjVZlY3lKpl18nwgoXgVL1Wkm1I2h-RKxZGm1kXyBpGxpcVKNqNqlueGV2mb7qMDcggxis4ky5TGFTdTjY_J48u9UX3m_Ta8fjbbR6lpJew\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 264, '2021-08-02 05:59:32', '2021-08-02 05:59:32'),
(298, 'App\\Models\\Upload', 173, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM_-VAIj9Sw38s6dpwqs7etc9Cawu2mHYVj0ooZBqYqoYTZXJwxgy0yApE-abrEPgdMIfheOZsv-S9gIfN8oCvhUaznBE6Ac8dZvGtxn2OZ7k2FoAloumt-GyaGR8xUsiM_nkBt2IzUQ8FxCqSRCrKl4xw\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 265, '2021-08-02 06:13:43', '2021-08-02 06:13:43'),
(300, 'App\\Models\\Upload', 174, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 29878, '[]', '{\"uuid\":\"EAAUk9hYkNTwBAOAN0D7UApagEEBZCYIa2ZB72nR8fFwUWRNrUp8tYCpil7LOTdk2mo0OTmCNHeso4l2ZAdye4JW9vfa5s4O4VyTZAchlGBrMMnFwkmGAexqTmAGfpcZAOP3aH4RAIYMjaQa66JM73gibcpX2ITG1eTTWGR3ky9gZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 266, '2021-08-02 07:03:16', '2021-08-02 07:03:16'),
(302, 'App\\Models\\Upload', 175, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 29878, '[]', '{\"uuid\":\"EAAUk9hYkNTwBAPrfeG8pxPtine5uTxPTnDkZCm56m9VyRr6u42SM3SZBXVtnt5987EqSxNoR7ZAAU1sESMN1pGB0anDmLD13yhc4WQv1ldCzxLNtUMJDJHXN1pS7TVQwp2mRw00fDl4FrZB2HBEjA6BCBzhXE0lm1hx3Ts1H3wZDZD\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 267, '2021-08-02 07:58:01', '2021-08-02 07:58:02'),
(304, 'App\\Models\\Upload', 176, 'avatar', 'AATXAJwDcH_c-D6VIDPxQxeV5AtnVQZJJS9pVNpdVAMn=s96-c', 'AATXAJwDcH_c-D6VIDPxQxeV5AtnVQZJJS9pVNpdVAMn=s96-c.png', 'image/png', 'public', 1221, '[]', '{\"uuid\":\"ya29.a0ARrdaM9tTBSDePIgpCvLQh2p6L8QtjFWhEDKbMbMUmYVJ7ggEhaxcW48in0XMShszcHN12hdr8gO3MtE9dLV_Oa7V9yUixzpTn6Obwcx5W-DKQXG-0eDpYOLSqvPCaU5SF-ohhFeQjLFrGRyr81AW9S4Fqpj\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 269, '2021-08-02 10:22:28', '2021-08-02 10:22:28'),
(306, 'App\\Models\\Upload', 177, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM94IfVswr9vekzuGCIAUxA6-NjknO-cRDSKbAvxwwN51W6uhWohQLuNbLlL0jvgwk-UCX-JjOgZ9txa0NtG4G_4HKX0OWViaGI8XkYHryJd99rfF7iDz4Ifqk_XWuCWvmSVjTZqtkGTsDcbixF0DFwGVw\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 270, '2021-08-02 10:57:30', '2021-08-02 10:57:31'),
(308, 'App\\Models\\Upload', 178, 'avatar', 'AATXAJwdEgeIjQwAtVm5pp2fyumdQFmxFXjYvpivNaN-=s96-c', 'AATXAJwdEgeIjQwAtVm5pp2fyumdQFmxFXjYvpivNaN-=s96-c.png', 'image/png', 'public', 1282, '[]', '{\"uuid\":\"ya29.a0ARrdaM-eAzNVRI5j4NdIhLc4eWtggqitdLsUN8tAWSXN3SDIIcxFbTjnvWYQ-Rpy0WovA3b7XNaVD9BqAL5doF1X0aZyuvIz3VOsnezLOifEK92MY9IsdPpzL3ghDOjrGHfcW4ImGMktqVTebyMwysBku1HI\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 271, '2021-08-02 11:17:14', '2021-08-02 11:17:14'),
(310, 'App\\Models\\Upload', 179, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM-MaQxA04XMssDTZIPX_4f9iW55gmtwEPieUvws02LbZCCdwB5bT3uPzimRN8n0QBzo8pHHM-0gNvrvLZGCLQ9V09JhCIUbx-YNY5fXWKNblBWleKp4REJeS8Cb5Qf3d7i5g3mVDFB_Y9z4Ea746HAGBA\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 272, '2021-08-02 11:35:18', '2021-08-02 11:35:18'),
(312, 'App\\Models\\Upload', 180, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM99eZQMw9COkXNdkDmigp38Tfp05PYDrKOQeiuyze_Pj5SWAsxBaxUCGr2UmVzDT-vmTg6fWOBrGn7adeTxBOYj1mrL9O_1ht5zIGBn48wHYbMiKEu5WcDetK5st7ylfbs0OVZNHng_bJolBf7nus5xhQ\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 273, '2021-08-02 12:43:27', '2021-08-02 12:43:27'),
(314, 'App\\Models\\Upload', 181, 'avatar', 'AATXAJwdEgeIjQwAtVm5pp2fyumdQFmxFXjYvpivNaN-=s96-c', 'AATXAJwdEgeIjQwAtVm5pp2fyumdQFmxFXjYvpivNaN-=s96-c.png', 'image/png', 'public', 1282, '[]', '{\"uuid\":\"ya29.a0ARrdaM8i8rQB2FWHXU2DR3ORdgVqfGBGXMQNfn5BC801UwTJ5kvvmVui5En4zKj1j2M55CS8q1oLi4pPe2HZdMaXFRb9xkPEaoOELfW_jUanELzAABiSiLUcuS9SYM7dmjY0UtiNO5RwdoKJJU3O5BArBPKjgQ\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 274, '2021-08-04 05:45:35', '2021-08-04 05:45:35'),
(316, 'App\\Models\\Upload', 182, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM9KNkFRRKzRB9FiW1UbhXwxW3GMO08NILZftv3ybtoyXbtbMFea8usgTFSjNoxRqCnFrSKrM1xgOfXbu8WHxbNS393eEtJ8dDDy6s6Bqn41aOfR4_6M2AB7n_RtcH5y-9N31nau-nI81WM_dVYXrcPf8A\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 276, '2021-08-04 06:05:29', '2021-08-04 06:05:29'),
(318, 'App\\Models\\Upload', 183, 'avatar', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c', 'AATXAJz_hfitDw-JEzw1GueQpOFCIDzAVyqhaE9KW4E5=s96-c.png', 'image/png', 'public', 1373, '[]', '{\"uuid\":\"ya29.a0ARrdaM93ni9hL2DWtnZyjYvVGn9h85q9AW8vsJqT4phAd4gpkPMJSp5i3invVOc6lsCjs2nAW5BYJQlQz2gbKx9w1IdxE0FjCtTWQwQ7ScgfXnjfGe8xIck6mA_l4KrsVkQA-36iQs0ruTpHGmVmQlLyz7ESDw\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 277, '2021-08-04 06:38:05', '2021-08-04 06:38:05'),
(320, 'App\\Models\\Upload', 184, 'avatar', 'AATXAJwDcH_c-D6VIDPxQxeV5AtnVQZJJS9pVNpdVAMn=s96-c', 'AATXAJwDcH_c-D6VIDPxQxeV5AtnVQZJJS9pVNpdVAMn=s96-c.png', 'image/png', 'public', 1221, '[]', '{\"uuid\":\"ya29.a0ARrdaM-q9rErDqEzicyqlVvXhfG-5N4uB_EaJAna1uJT30zHHwjcYGVWpZARf4K7mkuAkQz5ORAKlcA4H639mrMOqHcAQJ3zzIMFtp56ovzktQE8bUZfszF89fl-pngJY_AXcKLGjz_pvb9OWdVvuhjLNaVliw\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 278, '2021-08-06 05:41:11', '2021-08-06 05:41:11'),
(322, 'App\\Models\\Upload', 185, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 26914, '[]', '{\"uuid\":\"EAAUk9hYkNTwBAMR0GtnNzeLG9VsIZAeZAextJZBxwK1cuE4LF5GZCGPp6WrgpcZAVxO8UR4VNYt2sPxoFoNcc7VzHpu3qmshvxSouEjGQFXeJzkTjb8qYIFh8vfUq29v1vlnKtZAOKlrtRIIonh9u04m3Raw6ZB97n2y5tkOvsMKn6KcpV741nz\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 279, '2021-08-10 05:49:11', '2021-08-10 05:49:11'),
(324, 'App\\Models\\Upload', 186, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 26914, '[]', '{\"uuid\":\"EAAUk9hYkNTwBAHObP2XFNzhTwZCJuPu4iYVJNK3G1X1XnOmWTuFEPuP83zwUr7IIF583wFCHfY4KqZBWCijlewIIVTL50I3LKeC7CP1kWZBB74FxtHGTQoSZBKlYe418rCLekuMcIQ3I4SydcpONfMGIHv0tm9Or7bNDSmVZBmB0IQ4NEudSt\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2021-08-10 10:43:26', '2021-08-10 10:43:26'),
(326, 'App\\Models\\Upload', 187, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 26914, '[]', '{\"uuid\":\"EAAUk9hYkNTwBACbRrNMyvGtZAATcgX7FK3gwfbiXBaQu1rPwbp0noSGc6Azf5ZB8GlHHIxciRq1eaSYLbVDrkFn6BrjhklnA9r9mDZAE8XZBfYhMuXpngJssThdkZCjvCaYhQWbZCBZA7IURvH1HsK2euiREBGLjF7sPvANF1kRBBKHbTiZAHmZAO\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 281, '2021-08-10 12:32:43', '2021-08-10 12:32:43'),
(327, 'App\\Models\\User', 162, 'avatar', 'picture', 'picture.jpeg', 'image/jpeg', 'public', 26914, '[]', '{\"uuid\":\"EAAUk9hYkNTwBACbRrNMyvGtZAATcgX7FK3gwfbiXBaQu1rPwbp0noSGc6Azf5ZB8GlHHIxciRq1eaSYLbVDrkFn6BrjhklnA9r9mDZAE8XZBfYhMuXpngJssThdkZCjvCaYhQWbZCBZA7IURvH1HsK2euiREBGLjF7sPvANF1kRBBKHbTiZAHmZAO\",\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 282, '2021-08-10 12:32:43', '2021-08-10 12:32:43'),
(328, 'App\\Models\\Gallery', 41, 'image', 'saloon', 'saloon.jpg', 'image/jpeg', 'public', 84469, '[]', '{\"uuid\":\"949eb87c-cfb4-41ba-88b1-278960446ffb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 283, '2021-09-09 11:15:12', '2021-09-09 11:15:12'),
(329, 'App\\Models\\Upload', 188, 'app_logo', 'logo', 'logo.png', 'image/png', 'public', 3541, '[]', '{\"uuid\":\"ae2487f3-0bb9-4064-ae93-cfec7b927d84\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 284, '2021-09-29 06:26:35', '2021-09-29 06:26:38');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_08_29_213829_create_faq_categories_table', 1),
(11, '2019_08_29_213926_create_faqs_table', 1),
(12, '2019_10_22_144652_create_currencies_table', 1),
(13, '2021_01_07_162658_create_payment_methods_table', 1),
(14, '2021_01_07_164755_create_payment_statuses_table', 1),
(15, '2021_01_07_165422_create_payments_table', 1),
(16, '2021_01_13_105605_create_e_provider_types_table', 1),
(17, '2021_01_13_111155_create_e_providers_table', 1),
(18, '2021_01_13_111622_create_experiences_table', 1),
(19, '2021_01_13_111730_create_awards_table', 1),
(20, '2021_01_13_114302_create_taxes_table', 1),
(21, '2021_01_13_200249_create_addresses_table', 1),
(22, '2021_01_15_115239_create_e_provider_addresses_table', 1),
(23, '2021_01_15_115747_create_e_provider_users_table', 1),
(24, '2021_01_15_115850_create_e_provider_taxes_table', 1),
(25, '2021_01_16_160838_create_availability_hours_table', 1),
(26, '2021_01_19_135951_create_e_services_table', 1),
(27, '2021_01_19_140427_create_categories_table', 1),
(28, '2021_01_19_171553_create_e_service_categories_table', 1),
(29, '2021_01_22_194514_create_option_groups_table', 1),
(30, '2021_01_22_200807_create_options_table', 1),
(31, '2021_01_22_205819_create_favorites_table', 1),
(32, '2021_01_22_205944_create_favorite_options_table', 1),
(33, '2021_01_23_125641_create_e_service_reviews_table', 1),
(34, '2021_01_23_201533_create_galleries_table', 1),
(35, '2021_01_25_105421_create_slides_table', 1),
(36, '2021_01_25_162055_create_notifications_table', 1),
(37, '2021_01_25_170522_create_coupons_table', 1),
(38, '2021_01_25_170529_create_discountables_table', 1),
(39, '2021_01_25_191833_create_booking_statuses_table', 1),
(40, '2021_01_25_212252_create_bookings_table', 1),
(41, '2021_01_30_111717_create_e_provider_payouts_table', 1),
(42, '2021_01_30_135356_create_earnings_table', 1),
(43, '2021_02_24_102838_create_custom_pages_table', 1),
(44, '2021_07_23_110636_create_json_extract_function', 2),
(45, '2021_08_08_134136_create_wallets_table', 3),
(46, '2021_08_08_155732_create_wallet_transactions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(4, 'App\\Models\\User', 15),
(4, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 66),
(4, 'App\\Models\\User', 67),
(4, 'App\\Models\\User', 68),
(4, 'App\\Models\\User', 120),
(4, 'App\\Models\\User', 121),
(4, 'App\\Models\\User', 122),
(4, 'App\\Models\\User', 175),
(4, 'App\\Models\\User', 176),
(5, 'App\\Models\\User', 9),
(5, 'App\\Models\\User', 162);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
('0379cfcf-1ee9-4cac-9142-a70cf91fed80', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 1, '{\"booking_id\":6}', '2021-09-09 10:43:43', '2021-07-15 06:25:18', '2021-09-09 10:43:43'),
('061a7e29-1baf-4d21-b453-b1ac6348e7a2', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":8}', NULL, '2021-09-08 05:16:12', '2021-09-08 05:16:12'),
('0d8a52a3-d316-49a4-bfab-98d468d1eb92', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-12 10:41:41', '2021-08-12 10:41:41'),
('0fc50e79-8bf2-4c56-ab4d-c25086bee2e4', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":4}', NULL, '2021-07-14 09:47:09', '2021-07-14 09:47:09'),
('1007bbab-c161-4ef4-acbf-29d0f4dd7a4b', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 3, '{\"from\":\"Ahmad Khan\"}', '2021-08-25 12:27:21', '2021-08-10 12:25:33', '2021-08-25 12:27:21'),
('10fa9da9-7246-408d-861a-adc4896e9856', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:23:31', '2021-08-10 12:23:31'),
('114bd4d6-6a6d-4b35-90e8-523e9b2ffee5', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:25:33', '2021-08-10 12:25:33'),
('121bd0eb-4667-4a64-b411-49f928b6ac61', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":9}', NULL, '2021-09-07 10:30:20', '2021-09-07 10:30:20'),
('12c9a2eb-e50b-42a7-85a2-0da420a18dfd', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":8}', '2021-09-09 10:44:55', '2021-09-07 10:27:42', '2021-09-09 10:44:55'),
('13b86072-6ac2-40c6-9301-89277e8c37f1', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":9}', NULL, '2021-09-07 10:25:31', '2021-09-07 10:25:31'),
('147f5e1a-904a-4428-af82-03e86cc00dc9', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', NULL, '2021-10-29 11:22:37', '2021-10-29 11:22:37'),
('1978f20d-466d-4e5a-8026-2b86e72edb34', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-11 10:33:33', '2021-08-11 10:33:33'),
('1b5c16f4-198e-46c2-a4b2-5525ae465e5c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":8}', NULL, '2021-09-08 05:16:10', '2021-09-08 05:16:10'),
('1eb91244-8a07-4707-9ba0-a375fc9aec76', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', '2021-08-11 10:21:43', '2021-08-11 10:19:22', '2021-08-11 10:21:43'),
('1f3b2147-6441-4ce4-9ec0-f595aaa77acc', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":10}', NULL, '2021-09-07 13:14:49', '2021-09-07 13:14:49'),
('1fb00f9e-e4fb-48e5-a691-f65c998bcb0f', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 3, '{\"from\":\"Ahmad Khan\"}', '2021-08-25 12:27:24', '2021-08-10 12:24:10', '2021-08-25 12:27:24'),
('234d4f9e-59c2-4c46-804b-4be823a72558', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":7}', NULL, '2021-09-06 12:01:54', '2021-09-06 12:01:54'),
('25364e4d-7e42-477d-be34-f8d4b9c7a307', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 3, '{\"booking_id\":8}', '2021-09-09 10:45:20', '2021-09-08 06:49:26', '2021-09-09 10:45:20'),
('255f8ea9-1a63-4afe-a425-e5bac903f7ee', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-10 11:59:45', '2021-08-10 11:59:45'),
('28925994-bbd6-4b88-acb2-b41374b082d7', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:24:10', '2021-08-10 12:24:10'),
('2a08e978-0ed2-4b3c-9141-28e555bbc4c3', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', '2021-08-11 06:31:59', '2021-08-11 05:54:48', '2021-08-11 06:31:59'),
('2a19da51-af03-48ae-ae24-d00de8cc344a', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-10 12:18:52', '2021-08-10 12:18:52'),
('2cb76028-2a20-4739-891a-8cf9074bf7db', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":10}', NULL, '2021-09-07 13:14:53', '2021-09-07 13:14:53'),
('2cc36106-3da3-42f7-9029-50cb4b92b194', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":15}', NULL, '2021-10-29 11:05:02', '2021-10-29 11:05:02'),
('2dc76aa3-237f-4064-b730-277fc09d93e5', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-12 10:41:41', '2021-08-12 10:41:41'),
('2e25bf51-943c-41e4-98ed-e30e69800218', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":8}', NULL, '2021-09-06 17:37:49', '2021-09-06 17:37:49'),
('306becad-58ae-4eef-9f47-5c903be305ab', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":11}', NULL, '2021-09-16 06:18:46', '2021-09-16 06:18:46'),
('327373bf-7d3e-4aae-9f39-917a73933a2d', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":3}', NULL, '2021-07-14 08:32:22', '2021-07-14 08:32:22'),
('339d3041-ee8b-4dd8-8557-5bcedddc371b', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":15}', NULL, '2021-10-29 11:22:23', '2021-10-29 11:22:23'),
('350fef0a-2fce-4770-a726-f67b0e6b1435', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":10}', NULL, '2021-09-07 13:11:56', '2021-09-07 13:11:56'),
('3780b56a-1b32-4e52-98a8-1d9c2d6da84f', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":9}', NULL, '2021-09-07 10:25:31', '2021-09-07 10:25:31'),
('3876a088-4cbc-4065-8fb2-bbbb902871ec', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":6}', NULL, '2021-07-15 06:26:24', '2021-07-15 06:26:24'),
('3908ee78-0293-4ad5-8280-adb1835c95e8', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":7}', NULL, '2021-09-06 11:59:50', '2021-09-06 11:59:50'),
('39ac17b5-94de-4487-810d-46b3ba7173b5', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-11 10:31:52', '2021-08-11 10:31:52'),
('3a30f7c7-a0af-4815-b3ab-597133fa9149', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 3, '{\"from\":\"Ahmad Khan\"}', '2021-08-10 12:23:49', '2021-08-10 12:23:30', '2021-08-10 12:23:49'),
('3d24fb0a-6aea-448f-aa5a-5e2533978282', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":8}', NULL, '2021-09-08 05:16:10', '2021-09-08 05:16:10'),
('3d67b205-b22d-4f05-aa28-cd497dc1f734', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":1}', NULL, '2021-07-01 06:18:23', '2021-07-01 06:18:23'),
('3f93e12a-2786-4b78-8702-63ef121d0183', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 3, '{\"from\":\"Ahmad Khan\"}', '2021-08-10 12:34:27', '2021-08-10 12:22:56', '2021-08-10 12:34:27'),
('45d79366-86c8-4fcf-929e-e0a29ae59573', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', '2021-11-02 11:22:37', '2021-10-29 11:38:43', '2021-11-02 11:22:37'),
('45debd6c-70bf-48cc-8164-e882c48c127b', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-12 10:41:31', '2021-08-12 10:41:31'),
('48d7eebd-d4b0-4723-b315-5a6444df1d4c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":7}', NULL, '2021-08-12 06:31:50', '2021-08-12 06:31:50'),
('492fcc65-c7c7-4917-a66a-b40920360918', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":7}', NULL, '2021-09-06 12:01:49', '2021-09-06 12:01:49'),
('4a4c89b1-0293-42cb-8a50-6550da3be732', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', NULL, '2021-10-29 11:08:16', '2021-10-29 11:08:16'),
('4ac53fdc-6095-4820-909f-3dd4c9880bb3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":8}', '2021-10-29 04:53:09', '2021-09-06 17:38:12', '2021-10-29 04:53:09'),
('4adf67da-dbe3-43ed-8a79-1ae98759ed10', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-10 12:18:52', '2021-08-10 12:18:52'),
('52fb5323-283a-42a6-a8ed-aa7ca890ca64', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', '2021-11-02 09:07:48', '2021-10-29 11:48:57', '2021-11-02 09:07:48'),
('533a75df-e304-447b-bcc2-a1ebf0b3f84c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":15}', NULL, '2021-10-29 11:05:02', '2021-10-29 11:05:02'),
('555783f0-8b68-401b-98ea-609b103f466a', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 13, '{\"booking_id\":2}', NULL, '2021-07-14 08:32:42', '2021-07-14 08:32:42'),
('567a9727-b6b6-4a60-9e7c-d9a1c53dd4d4', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":10}', '2021-09-09 10:45:26', '2021-09-07 13:14:40', '2021-09-09 10:45:26'),
('59e89e80-1163-4e95-bfc0-563cc45c80df', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 4, '{\"booking_id\":3}', NULL, '2021-07-14 08:32:22', '2021-07-14 08:32:22'),
('59f83710-415d-43b5-b741-5cbde94c872b', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":9}', NULL, '2021-09-07 10:30:20', '2021-09-07 10:30:20'),
('5a05a028-0058-4fbc-b038-c16ef664563f', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', NULL, '2021-10-29 11:38:25', '2021-10-29 11:38:25'),
('5dc9d8c6-4d41-42a9-8bcd-3e239878f36d', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 172, '{\"booking_id\":9}', NULL, '2021-09-07 10:28:57', '2021-09-07 10:28:57'),
('5de25a37-6f76-4ef0-972f-d0724485b714', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 4, '{\"booking_id\":10}', NULL, '2021-09-07 13:14:53', '2021-09-07 13:14:53'),
('637bca8a-abc2-4dbd-bdd4-2c3ae055aeb0', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":1}', NULL, '2021-07-01 06:18:23', '2021-07-01 06:18:23'),
('66a05e06-a74e-4da7-bd52-7c0b84fa4798', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":10}', NULL, '2021-09-07 13:11:56', '2021-09-07 13:11:56'),
('672c6f53-3a02-4307-ba48-d9b6f2b1c8d5', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":5}', NULL, '2021-07-15 04:43:48', '2021-07-15 04:43:48'),
('689c7d64-cd72-4916-92da-75219a9ab428', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":2}', NULL, '2021-07-14 08:18:10', '2021-07-14 08:18:10'),
('6904fd27-83b2-45fe-9c3b-609a43e1c26c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":12}', NULL, '2021-09-17 21:50:46', '2021-09-17 21:50:46'),
('6d30726f-074b-4c09-9b9e-a2e16b65ff78', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:00:21', '2021-08-10 12:00:21'),
('6dd084eb-7e30-4405-8819-58dd39909b4d', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":6}', NULL, '2021-07-15 06:25:22', '2021-07-15 06:25:22'),
('6ed7b095-bfed-4cb6-a6cd-badd122da150', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', NULL, '2021-10-29 11:21:58', '2021-10-29 11:21:58'),
('6efbebd2-b2f4-4c26-8df0-a18125afcc2c', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":12}', '2021-11-01 10:49:49', '2021-09-17 21:50:46', '2021-11-01 10:49:49'),
('6ff66428-20cc-4909-a9a9-e8d96d7e4360', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":8}', NULL, '2021-09-08 05:16:12', '2021-09-08 05:16:12'),
('74954098-72aa-4670-a70f-5162ff195b40', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:24:50', '2021-08-10 12:24:50'),
('7c831fb8-cc33-4ad8-af4b-034bd4ac8b47', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":8}', NULL, '2021-09-06 17:37:50', '2021-09-06 17:37:50'),
('7d9e1a43-577d-4601-93dc-db4daa648559', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 8, '{\"booking_id\":7}', NULL, '2021-08-12 06:31:50', '2021-08-12 06:31:50'),
('7fd2bbb5-c558-46cc-9add-67b2f9e4faa0', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 3, '{\"from\":\"Ahmad Khan\"}', '2021-08-25 12:27:22', '2021-08-10 12:24:50', '2021-08-25 12:27:22'),
('824531e3-0050-42b2-80a7-a9ca36d056b1', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 172, '{\"booking_id\":9}', NULL, '2021-09-07 10:28:56', '2021-09-07 10:28:56'),
('825496e7-f187-4dbb-8992-e7ca49ceff08', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-10 08:09:07', '2021-08-10 08:09:07'),
('85c3c665-187b-4ceb-afd9-b1195c061f6d', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-11 05:54:48', '2021-08-11 05:54:48'),
('8c556234-01c7-4dff-9900-34eaac2023bc', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":3}', NULL, '2021-07-14 08:32:09', '2021-07-14 08:32:09'),
('920a3b7d-78ed-42ac-988e-ca62fe9527bd', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":2}', NULL, '2021-07-14 08:18:10', '2021-07-14 08:18:10'),
('951656c1-e058-478d-aee3-76dac71d61ce', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":7}', NULL, '2021-09-06 12:01:54', '2021-09-06 12:01:54'),
('9733c65c-5f76-4b4f-947c-3e643a98b614', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 172, '{\"booking_id\":9}', NULL, '2021-09-07 10:26:51', '2021-09-07 10:26:51'),
('9de60eae-0957-4fc3-af1b-61c4b0c865db', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":11}', NULL, '2021-09-16 06:18:46', '2021-09-16 06:18:46'),
('a0061a09-0bd9-45b4-a422-d16d3af5c28f', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', '2021-08-11 10:32:02', '2021-08-11 10:31:51', '2021-08-11 10:32:02'),
('a17d9c29-7fd5-4031-889b-aeb7a9d09b1e', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":13}', '2021-11-01 07:33:18', '2021-09-17 21:52:42', '2021-11-01 07:33:18'),
('a769a969-d5fd-4edd-94b7-6b6e14bd9ed2', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 4, '{\"from\":\"Awad  Habib\"}', NULL, '2021-11-02 11:22:52', '2021-11-02 11:22:52'),
('a7f354d3-43f1-486f-9e91-632a9145efb3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":14}', NULL, '2021-10-29 06:05:23', '2021-10-29 06:05:23'),
('aa8c7efe-aa30-4d4e-89e3-7fb8e32903c4', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 4, '{\"booking_id\":10}', NULL, '2021-09-07 13:14:49', '2021-09-07 13:14:49'),
('ae01cdd6-1638-4bbb-8d16-ac4a53e7a95c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', NULL, '2021-10-29 11:56:41', '2021-10-29 11:56:41'),
('b0f5eadf-e6b5-4455-8f2f-94b32b2132f4', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 2, '{\"booking_id\":4}', NULL, '2021-07-14 09:45:10', '2021-07-14 09:45:10'),
('b29b54cf-a253-40e5-aff9-6d1733b1f3a9', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', '2021-08-10 11:22:42', '2021-08-10 08:09:07', '2021-08-10 11:22:42'),
('b495538c-f6e4-45a0-90ee-d0929594d4f7', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":3}', NULL, '2021-07-14 08:32:09', '2021-07-14 08:32:09'),
('b5963d29-04aa-42da-9558-2154c97eabaf', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-12 10:41:31', '2021-08-12 10:41:31'),
('b87618b4-bc56-4791-b561-fbbf1eeb9311', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 4, '{\"booking_id\":2}', NULL, '2021-07-14 08:32:42', '2021-07-14 08:32:42'),
('b96868f5-4868-4fbb-b905-e6ba4613d955', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":14}', NULL, '2021-10-29 06:06:30', '2021-10-29 06:06:30'),
('bc7bd4c0-0273-414c-902d-d386339b9a9f', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:02:23', '2021-08-10 12:02:23'),
('bcbcc12a-15f6-41a3-99c7-07fa7dd97354', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 3, '{\"from\":\"Ahmad Khan\"}', '2021-08-25 12:27:19', '2021-08-11 10:33:33', '2021-08-25 12:27:19'),
('bed46733-b1d7-4888-bee8-8835bd8ff645', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-11 10:19:22', '2021-08-11 10:19:22'),
('bf2d1152-0751-4b93-8b1a-eab0e5232dab', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-10 12:22:25', '2021-08-10 12:22:25'),
('c39bb9c7-7198-448f-b6c8-8fad7caf13ec', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 8, '{\"booking_id\":8}', NULL, '2021-09-08 06:45:46', '2021-09-08 06:45:46'),
('c3e4dead-30ef-4c5e-8718-691aa788872d', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:01:58', '2021-08-10 12:01:58'),
('c45620af-ec32-4bae-a416-ed5ec692d1e8', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 2, '{\"booking_id\":8}', '2021-11-02 06:42:53', '2021-09-08 06:45:46', '2021-11-02 06:42:53'),
('c5a23292-e605-4b73-b791-8ec50e051c8b', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-12 11:56:51', '2021-08-12 11:56:51'),
('c90661b9-78e6-4c4e-89a3-f74f4cbd46e5', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 4, '{\"booking_id\":15}', NULL, '2021-10-29 11:22:23', '2021-10-29 11:22:23'),
('cd0939a7-0a12-4263-a249-1f5ddf217ba1', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Ahmad Khan\"}', NULL, '2021-08-10 12:22:56', '2021-08-10 12:22:56'),
('cd986fab-bde0-4f9c-bfa1-10e0ae2b0531', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 4, '{\"booking_id\":10}', '2021-09-08 06:46:51', '2021-09-08 06:42:26', '2021-09-08 06:46:51'),
('d1105664-a363-4182-976d-df1c2fbe9d41', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":10}', '2021-10-29 04:52:48', '2021-09-07 13:14:34', '2021-10-29 04:52:48'),
('d706b9d5-a6e8-4558-97f4-5c169707fb46', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 13, '{\"booking_id\":14}', NULL, '2021-10-29 06:04:50', '2021-10-29 06:04:50'),
('d830ae41-fda1-4a86-bd6a-a1beea9088aa', 'App\\Notifications\\NewBooking', 'App\\Models\\User', 4, '{\"booking_id\":14}', NULL, '2021-10-29 06:04:49', '2021-10-29 06:04:49'),
('dc93c5c8-8d20-4b9d-aed8-f98e384344c3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":7}', NULL, '2021-09-06 11:59:45', '2021-09-06 11:59:45'),
('dcc3ea4d-9ff7-4990-bde3-a8c6a553e30d', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-10 11:59:45', '2021-08-10 11:59:45'),
('e22ad9c1-f55a-4ee9-9d55-55e606f2dc1c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":6}', NULL, '2021-07-15 06:26:24', '2021-07-15 06:26:24'),
('e3e1b271-2b52-40a2-8d6c-3b9509b4649c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":15}', NULL, '2021-10-29 11:05:45', '2021-10-29 11:05:45'),
('e46887c9-372a-4344-b7e5-11822ca0bce7', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":7}', NULL, '2021-09-06 12:01:49', '2021-09-06 12:01:49'),
('e5c910ea-3e22-4d53-b5d1-e17c20786640', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 2, '{\"from\":\"Awad  Habib\"}', '2021-08-11 08:31:13', '2021-08-11 07:21:26', '2021-08-11 08:31:13'),
('eccb1fab-6102-4f86-b9bb-4160593b3e14', 'App\\Notifications\\StatusChangedPayment', 'App\\Models\\User', 13, '{\"booking_id\":10}', NULL, '2021-09-08 06:42:26', '2021-09-08 06:42:26'),
('edba4838-f756-4721-a4c3-a32dea5c75b1', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 8, '{\"booking_id\":9}', NULL, '2021-09-07 10:29:51', '2021-09-07 10:29:51'),
('ee87f82d-a9ad-4c74-937a-d52549e31c5c', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":7}', NULL, '2021-09-06 11:59:23', '2021-09-06 11:59:23'),
('f046a8df-9e05-4044-bf10-023d4d15dd90', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":8}', '2021-10-29 04:53:56', '2021-09-07 10:27:51', '2021-10-29 04:53:56'),
('f69ec94d-110e-498c-9202-21d0c25face6', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 13, '{\"from\":\"Awad  Habib\"}', NULL, '2021-11-02 11:22:52', '2021-11-02 11:22:52'),
('f8b25f8f-4db0-4982-95f9-66761bae95d3', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 2, '{\"booking_id\":9}', NULL, '2021-09-07 10:29:51', '2021-09-07 10:29:51'),
('fc7ca300-8016-42dd-a43f-5cd2bc236d35', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-12 11:56:51', '2021-08-12 11:56:51'),
('fc9c9bde-3596-449c-acbd-10cd85fde0a7', 'App\\Notifications\\StatusChangedBooking', 'App\\Models\\User', 3, '{\"booking_id\":10}', NULL, '2021-09-07 13:14:29', '2021-09-07 13:14:29'),
('fe3bc061-01ff-49ee-a35c-a6f3c3f34a1b', 'App\\Notifications\\NewMessage', 'App\\Models\\User', 8, '{\"from\":\"Awad  Habib\"}', NULL, '2021-08-11 07:21:26', '2021-08-11 07:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `e_service_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `price`, `e_service_id`, `option_group_id`, `created_at`, `updated_at`) VALUES
(102, '{\"en\":\"20m\"}', '{\"en\":\"Asperiores sequi sapiente dolores.\"}', 20.58, 54, 2, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(113, '{\"en\":\"10m²\"}', '{\"en\":\"Quod magni eveniet quis sapiente.\"}', 39.53, 45, 3, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(115, '{\"en\":\"40m\"}', '{\"en\":\"Est reiciendis ea ut eum.\"}', 36.35, 48, 2, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(118, '{\"en\":\"10m²\"}', '{\"en\":\"Reiciendis sint laboriosam natus sint.\"}', 39.35, 46, 1, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(120, '{\"en\":\"20m\"}', '{\"en\":\"Consectetur tempore aut quasi.\"}', 37.81, 47, 3, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(122, '{\"en\":\"30m²\"}', '{\"en\":\"Corrupti dolorem officiis.\"}', 19.47, 47, 1, '2021-05-21 08:34:30', '2021-05-21 08:34:30'),
(128, '{\"en\":\"10m²\"}', '{\"en\":\"Distinctio est eum consequatur possimus.\"}', 32.29, 68, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(130, '{\"en\":\"20m\"}', '{\"en\":\"Unde provident sit mollitia.\"}', 35.56, 46, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(131, '{\"en\":\"20m\"}', '{\"en\":\"Vero ut amet porro.\"}', 35.47, 51, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(132, '{\"en\":\"30m²\"}', '{\"en\":\"Qui ipsum vel voluptas est.\"}', 26.08, 51, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(134, '{\"en\":\"30m²\"}', '{\"en\":\"Deleniti impedit quis reprehenderit.\"}', 47.73, 47, 2, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(135, '{\"en\":\"20m\"}', '{\"en\":\"Quia ut voluptatum consequatur suscipit et.\"}', 29.74, 69, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(136, '{\"en\":\"20m\"}', '{\"en\":\"Non a vel dolores molestiae doloremque.\"}', 49.45, 54, 2, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(144, '{\"en\":\"40m\"}', '{\"en\":\"Ut labore quasi.\"}', 31.02, 78, 2, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(145, '{\"en\":\"30m²\"}', '{\"en\":\"Id dolores eaque repudiandae.\"}', 24.53, 54, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(151, '{\"en\":\"40m\"}', '{\"en\":\"Porro voluptas et.\"}', 30.67, 69, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(153, '{\"en\":\"20m\"}', '{\"en\":\"Nihil reiciendis est exercitationem quia a.\"}', 49.87, 41, 2, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(163, '{\"en\":\"30m²\"}', '{\"en\":\"Voluptatem asperiores quis quibusdam pariatur.\"}', 42.51, 68, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(165, '{\"en\":\"40m\"}', '{\"en\":\"Veritatis aut dolore expedita laudantium cumque.\"}', 46.99, 45, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(166, '{\"en\":\"10m²\"}', '{\"en\":\"Mollitia dolores autem molestias velit consequatur.\"}', 21.60, 54, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(168, '{\"en\":\"40m\"}', '{\"en\":\"Voluptas saepe eveniet et.\"}', 17.67, 55, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(170, '{\"en\":\"40m\"}', '{\"en\":\"Adipisci aliquam et.\"}', 20.24, 69, 2, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(174, '{\"en\":\"40m\"}', '{\"en\":\"Vero qui doloribus quis aut consequatur.\"}', 35.85, 42, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(176, '{\"en\":\"40m\"}', '{\"en\":\"Quasi tempora sed quidem labore magni.\"}', 17.90, 51, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(177, '{\"en\":\"10m²\"}', '{\"en\":\"Ea dolorem soluta est vitae.\"}', 48.09, 51, 3, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(181, '{\"en\":\"10m²\"}', '{\"en\":\"Possimus quia eveniet exercitationem voluptatem.\"}', 12.55, 80, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(182, '{\"en\":\"10m²\"}', '{\"en\":\"Quia et quibusdam atque vel.\"}', 34.48, 51, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(185, '{\"en\":\"10m²\"}', '{\"en\":\"Quia ut aliquid et odio.\"}', 10.74, 43, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(189, '{\"en\":\"30m²\"}', '{\"en\":\"Quia esse et natus.\"}', 35.66, 48, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(190, '{\"en\":\"20m\"}', '{\"en\":\"Iusto molestiae esse velit quisquam neque.\"}', 32.79, 55, 1, '2021-05-21 08:34:31', '2021-05-21 08:34:31'),
(191, '{\"en\":\"30m²\"}', '{\"en\":\"Dolorum et voluptatem sit enim commodi.\"}', 36.56, 46, 3, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(192, '{\"en\":\"20m\"}', '{\"en\":\"Sit sed dolores nam ratione iste.\"}', 13.57, 73, 1, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(193, '{\"en\":\"20m\"}', '{\"en\":\"Tempore voluptas dolores et reprehenderit unde.\"}', 18.99, 80, 1, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(194, '{\"en\":\"20m\"}', '{\"en\":\"Id velit accusantium velit voluptas.\"}', 15.20, 41, 3, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(195, '{\"en\":\"40m\"}', '{\"en\":\"Et quos consequuntur sequi.\"}', 44.34, 45, 3, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(197, '{\"en\":\"20m\"}', '{\"en\":\"Ex qui laboriosam corporis aliquam.\"}', 13.00, 54, 2, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(198, '{\"en\":\"40m\"}', '{\"en\":\"Eos mollitia repellat mollitia.\"}', 11.11, 42, 2, '2021-05-21 08:34:32', '2021-05-21 08:34:32'),
(201, '{\"en\":\"Silver Color\"}', '{\"en\":\"<p>This is a special material per request<\\/p>\"}', 20.00, 41, 1, '2021-06-06 14:24:40', '2021-06-06 14:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_groups`
--

INSERT INTO `option_groups` (`id`, `name`, `allow_multiple`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2021-01-22 14:49:15', '2021-02-07 15:30:19'),
(2, 'Area', 1, '2021-01-22 15:46:28', '2021-01-22 15:46:28'),
(3, 'Surface', 0, '2021-01-22 15:46:47', '2021-01-22 15:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('eazeofficework@gmail.com', '$2y$10$pgdpLQj/bfIvxeTJpVLHOuifHHYIC8nJwUL0w46wxbItWCIl9WbdW', '2021-08-10 13:20:58');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `payment_status_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `description`, `user_id`, `payment_method_id`, `payment_status_id`, `created_at`, `updated_at`) VALUES
(1, 12.03, 'Transaction for Booking #10', 3, 6, 1, '2021-09-08 06:42:26', '2021-09-08 06:42:26'),
(2, 16.42, 'Transaction for Booking #8', 3, 6, 2, '2021-09-08 06:45:46', '2021-09-08 06:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `route`, `order`, `default`, `enabled`, `created_at`, `updated_at`) VALUES
(2, '{\"en\":\"RazorPay\"}', '{\"en\":\"Click to pay with RazorPay gateway\"}', '/RazorPay', 2, 0, 0, '2021-01-17 09:33:49', '2021-09-06 12:03:05'),
(5, 'PayPal', 'Click to pay with your PayPal account', '/PayPal', 1, 0, 1, '2021-01-17 10:46:06', '2021-02-17 17:38:47'),
(6, '{\"en\":\"Cash\"}', '{\"en\":\"Click to pay cash when finish\"}', '/Cash', 1, 1, 1, '2021-02-17 17:38:42', '2021-09-08 06:26:08'),
(8, '{\"en\":\"PayStack\"}', '{\"en\":\"Click to pay with PayStack gateway\"}', '/PayStack', 5, 0, 0, '2021-07-23 22:38:42', '2021-09-06 12:03:19'),
(9, '{\"en\":\"FlutterWave\"}', '{\"en\":\"Click to pay with FlutterWave gateway\"}', '/FlutterWave', 6, 0, 0, '2021-07-23 22:38:42', '2021-09-06 12:03:30'),
(10, '{\"en\":\"Malaysian Stripe FPX\"}', '{\"en\":\"Click to pay with Stripe FPX gateway\"}', '/StripeFPX', 7, 0, 0, '2021-07-24 22:38:42', '2021-09-06 12:04:01'),
(11, '{\"en\":\"Wallet\"}', '{\"en\":\"Click to pay with Wallet\"}', '/Wallet', 8, 0, 0, '2021-08-08 22:38:42', '2021-09-06 12:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `payment_statuses`
--

CREATE TABLE `payment_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_statuses`
--

INSERT INTO `payment_statuses` (`id`, `status`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, '2021-01-17 10:28:28', '2021-02-17 16:55:15'),
(2, 'Paid', 10, '2021-01-11 18:19:49', '2021-02-17 16:55:53'),
(3, 'Failed', 20, '2021-01-17 09:05:04', '2021-02-17 16:56:32'),
(4, 'Refunded', 40, '2021-02-17 16:58:14', '2021-02-17 16:58:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2021-01-07 08:17:34', '2021-01-07 08:17:34'),
(2, 'medias.create', 'web', '2021-01-07 08:17:35', '2021-01-07 08:17:35'),
(3, 'users.profile', 'web', '2021-01-07 08:17:35', '2021-01-07 08:17:35'),
(4, 'users.index', 'web', '2021-01-07 08:17:35', '2021-01-07 08:17:35'),
(5, 'users.create', 'web', '2021-01-07 08:17:35', '2021-01-07 08:17:35'),
(6, 'users.store', 'web', '2021-01-07 08:17:35', '2021-01-07 08:17:35'),
(7, 'users.show', 'web', '2021-01-07 08:17:35', '2021-01-07 08:17:35'),
(8, 'users.edit', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(9, 'users.update', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(10, 'users.destroy', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(11, 'medias.delete', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(12, 'medias', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(13, 'permissions.index', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(14, 'permissions.create', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(15, 'permissions.store', 'web', '2021-01-07 08:17:36', '2021-01-07 08:17:36'),
(16, 'permissions.show', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(17, 'permissions.edit', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(18, 'permissions.update', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(19, 'permissions.destroy', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(20, 'roles.index', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(21, 'roles.create', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(22, 'roles.store', 'web', '2021-01-07 08:17:37', '2021-01-07 08:17:37'),
(23, 'roles.show', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(24, 'roles.edit', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(25, 'roles.update', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(26, 'roles.destroy', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(27, 'customFields.index', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(28, 'customFields.create', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(29, 'customFields.store', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(30, 'customFields.show', 'web', '2021-01-07 08:17:38', '2021-01-07 08:17:38'),
(31, 'customFields.edit', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(32, 'customFields.update', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(33, 'customFields.destroy', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(34, 'currencies.index', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(35, 'currencies.create', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(36, 'currencies.store', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(37, 'currencies.edit', 'web', '2021-01-07 08:17:39', '2021-01-07 08:17:39'),
(38, 'currencies.update', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(39, 'currencies.destroy', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(40, 'users.login-as-user', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(41, 'app-settings', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(42, 'faqCategories.index', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(43, 'faqCategories.create', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(44, 'faqCategories.store', 'web', '2021-01-07 08:17:40', '2021-01-07 08:17:40'),
(45, 'faqCategories.edit', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(46, 'faqCategories.update', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(47, 'faqCategories.destroy', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(48, 'faqs.index', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(49, 'faqs.create', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(50, 'faqs.store', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(51, 'faqs.edit', 'web', '2021-01-07 08:17:41', '2021-01-07 08:17:41'),
(52, 'faqs.update', 'web', '2021-01-07 08:17:42', '2021-01-07 08:17:42'),
(53, 'faqs.destroy', 'web', '2021-01-07 08:17:42', '2021-01-07 08:17:42'),
(54, 'payments.index', 'web', '2021-01-10 19:04:33', '2021-01-10 19:04:33'),
(55, 'payments.show', 'web', '2021-01-10 19:04:33', '2021-01-10 19:04:33'),
(56, 'payments.update', 'web', '2021-01-10 19:04:33', '2021-01-10 19:04:33'),
(57, 'paymentMethods.index', 'web', '2021-01-10 19:04:33', '2021-01-10 19:04:33'),
(58, 'paymentMethods.create', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(59, 'paymentMethods.store', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(60, 'paymentMethods.edit', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(61, 'paymentMethods.update', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(62, 'paymentMethods.destroy', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(63, 'paymentStatuses.index', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(64, 'paymentStatuses.create', 'web', '2021-01-10 19:04:34', '2021-01-10 19:04:34'),
(65, 'paymentStatuses.store', 'web', '2021-01-10 19:04:35', '2021-01-10 19:04:35'),
(66, 'paymentStatuses.edit', 'web', '2021-01-10 19:04:35', '2021-01-10 19:04:35'),
(67, 'paymentStatuses.update', 'web', '2021-01-10 19:04:35', '2021-01-10 19:04:35'),
(68, 'paymentStatuses.destroy', 'web', '2021-01-10 19:04:35', '2021-01-10 19:04:35'),
(69, 'verification.notice', 'web', '2021-01-12 05:19:50', '2021-01-12 05:19:50'),
(70, 'verification.verify', 'web', '2021-01-12 05:19:50', '2021-01-12 05:19:50'),
(71, 'verification.resend', 'web', '2021-01-12 05:19:51', '2021-01-12 05:19:51'),
(72, 'awards.index', 'web', '2021-01-12 05:19:51', '2021-01-12 05:19:51'),
(73, 'awards.create', 'web', '2021-01-12 05:19:52', '2021-01-12 05:19:52'),
(74, 'awards.store', 'web', '2021-01-12 05:19:52', '2021-01-12 05:19:52'),
(75, 'awards.show', 'web', '2021-01-12 05:19:52', '2021-01-12 05:19:52'),
(76, 'awards.edit', 'web', '2021-01-12 05:19:52', '2021-01-12 05:19:52'),
(77, 'awards.update', 'web', '2021-01-12 05:19:52', '2021-01-12 05:19:52'),
(78, 'awards.destroy', 'web', '2021-01-12 05:19:52', '2021-01-12 05:19:52'),
(79, 'experiences.index', 'web', '2021-01-12 06:20:29', '2021-01-12 06:20:29'),
(80, 'experiences.create', 'web', '2021-01-12 06:20:29', '2021-01-12 06:20:29'),
(81, 'experiences.store', 'web', '2021-01-12 06:20:30', '2021-01-12 06:20:30'),
(82, 'experiences.show', 'web', '2021-01-12 06:20:30', '2021-01-12 06:20:30'),
(83, 'experiences.edit', 'web', '2021-01-12 06:20:30', '2021-01-12 06:20:30'),
(84, 'experiences.update', 'web', '2021-01-12 06:20:30', '2021-01-12 06:20:30'),
(85, 'experiences.destroy', 'web', '2021-01-12 06:20:30', '2021-01-12 06:20:30'),
(92, 'eProviderTypes.index', 'web', '2021-01-13 06:31:08', '2021-01-13 06:31:08'),
(93, 'eProviderTypes.create', 'web', '2021-01-13 06:31:09', '2021-01-13 06:31:09'),
(94, 'eProviderTypes.store', 'web', '2021-01-13 06:31:09', '2021-01-13 06:31:09'),
(95, 'eProviderTypes.edit', 'web', '2021-01-13 06:31:09', '2021-01-13 06:31:09'),
(96, 'eProviderTypes.update', 'web', '2021-01-13 06:31:09', '2021-01-13 06:31:09'),
(97, 'eProviderTypes.destroy', 'web', '2021-01-13 06:31:09', '2021-01-13 06:31:09'),
(98, 'eProviders.index', 'web', '2021-01-13 06:48:55', '2021-01-13 06:48:55'),
(99, 'eProviders.create', 'web', '2021-01-13 06:48:56', '2021-01-13 06:48:56'),
(100, 'eProviders.store', 'web', '2021-01-13 06:48:56', '2021-01-13 06:48:56'),
(101, 'eProviders.edit', 'web', '2021-01-13 06:48:56', '2021-01-13 06:48:56'),
(102, 'eProviders.update', 'web', '2021-01-13 06:48:56', '2021-01-13 06:48:56'),
(103, 'eProviders.destroy', 'web', '2021-01-13 06:48:56', '2021-01-13 06:48:56'),
(104, 'addresses.index', 'web', '2021-01-13 06:48:56', '2021-01-13 06:48:56'),
(105, 'addresses.create', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(106, 'addresses.store', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(107, 'addresses.edit', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(108, 'addresses.update', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(109, 'addresses.destroy', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(110, 'taxes.index', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(111, 'taxes.create', 'web', '2021-01-13 06:48:57', '2021-01-13 06:48:57'),
(112, 'taxes.store', 'web', '2021-01-13 06:48:58', '2021-01-13 06:48:58'),
(113, 'taxes.edit', 'web', '2021-01-13 06:48:58', '2021-01-13 06:48:58'),
(114, 'taxes.update', 'web', '2021-01-13 06:48:58', '2021-01-13 06:48:58'),
(115, 'taxes.destroy', 'web', '2021-01-13 06:48:58', '2021-01-13 06:48:58'),
(116, 'availabilityHours.index', 'web', '2021-01-16 11:14:21', '2021-01-16 11:14:21'),
(117, 'availabilityHours.create', 'web', '2021-01-16 11:14:21', '2021-01-16 11:14:21'),
(118, 'availabilityHours.store', 'web', '2021-01-16 11:14:21', '2021-01-16 11:14:21'),
(119, 'availabilityHours.edit', 'web', '2021-01-16 11:14:21', '2021-01-16 11:14:21'),
(120, 'availabilityHours.update', 'web', '2021-01-16 11:14:22', '2021-01-16 11:14:22'),
(121, 'availabilityHours.destroy', 'web', '2021-01-16 11:14:22', '2021-01-16 11:14:22'),
(122, 'eServices.index', 'web', '2021-01-19 09:03:00', '2021-01-19 09:03:00'),
(123, 'eServices.create', 'web', '2021-01-19 09:03:00', '2021-01-19 09:03:00'),
(124, 'eServices.store', 'web', '2021-01-19 09:03:00', '2021-01-19 09:03:00'),
(126, 'eServices.edit', 'web', '2021-01-19 09:03:01', '2021-01-19 09:03:01'),
(127, 'eServices.update', 'web', '2021-01-19 09:03:01', '2021-01-19 09:03:01'),
(128, 'eServices.destroy', 'web', '2021-01-19 09:03:01', '2021-01-19 09:03:01'),
(129, 'categories.index', 'web', '2021-01-19 09:08:55', '2021-01-19 09:08:55'),
(130, 'categories.create', 'web', '2021-01-19 09:08:55', '2021-01-19 09:08:55'),
(131, 'categories.store', 'web', '2021-01-19 09:08:55', '2021-01-19 09:08:55'),
(132, 'categories.edit', 'web', '2021-01-19 09:08:55', '2021-01-19 09:08:55'),
(133, 'categories.update', 'web', '2021-01-19 09:08:56', '2021-01-19 09:08:56'),
(134, 'categories.destroy', 'web', '2021-01-19 09:08:56', '2021-01-19 09:08:56'),
(135, 'optionGroups.index', 'web', '2021-01-22 14:48:32', '2021-01-22 14:48:32'),
(136, 'optionGroups.create', 'web', '2021-01-22 14:48:32', '2021-01-22 14:48:32'),
(137, 'optionGroups.store', 'web', '2021-01-22 14:48:32', '2021-01-22 14:48:32'),
(138, 'optionGroups.edit', 'web', '2021-01-22 14:48:32', '2021-01-22 14:48:32'),
(139, 'optionGroups.update', 'web', '2021-01-22 14:48:32', '2021-01-22 14:48:32'),
(140, 'optionGroups.destroy', 'web', '2021-01-22 14:48:32', '2021-01-22 14:48:32'),
(141, 'options.index', 'web', '2021-01-22 15:10:51', '2021-01-22 15:10:51'),
(142, 'options.create', 'web', '2021-01-22 15:10:51', '2021-01-22 15:10:51'),
(143, 'options.store', 'web', '2021-01-22 15:10:52', '2021-01-22 15:10:52'),
(144, 'options.edit', 'web', '2021-01-22 15:10:52', '2021-01-22 15:10:52'),
(145, 'options.update', 'web', '2021-01-22 15:10:52', '2021-01-22 15:10:52'),
(146, 'options.destroy', 'web', '2021-01-22 15:10:52', '2021-01-22 15:10:52'),
(147, 'favorites.index', 'web', '2021-01-22 16:01:13', '2021-01-22 16:01:13'),
(148, 'favorites.create', 'web', '2021-01-22 16:01:13', '2021-01-22 16:01:13'),
(149, 'favorites.store', 'web', '2021-01-22 16:01:13', '2021-01-22 16:01:13'),
(150, 'favorites.edit', 'web', '2021-01-22 16:01:13', '2021-01-22 16:01:13'),
(151, 'favorites.update', 'web', '2021-01-22 16:01:13', '2021-01-22 16:01:13'),
(152, 'favorites.destroy', 'web', '2021-01-22 16:01:13', '2021-01-22 16:01:13'),
(153, 'eServiceReviews.index', 'web', '2021-01-23 14:42:57', '2021-01-23 14:42:57'),
(154, 'eServiceReviews.create', 'web', '2021-01-23 14:42:58', '2021-01-23 14:42:58'),
(155, 'eServiceReviews.store', 'web', '2021-01-23 14:42:58', '2021-01-23 14:42:58'),
(156, 'eServiceReviews.edit', 'web', '2021-01-23 14:42:58', '2021-01-23 14:42:58'),
(157, 'eServiceReviews.update', 'web', '2021-01-23 14:42:58', '2021-01-23 14:42:58'),
(158, 'eServiceReviews.destroy', 'web', '2021-01-23 14:42:58', '2021-01-23 14:42:58'),
(160, 'galleries.index', 'web', '2021-01-23 15:17:46', '2021-01-23 15:17:46'),
(161, 'galleries.create', 'web', '2021-01-23 15:17:47', '2021-01-23 15:17:47'),
(162, 'galleries.store', 'web', '2021-01-23 15:17:47', '2021-01-23 15:17:47'),
(163, 'galleries.edit', 'web', '2021-01-23 15:17:47', '2021-01-23 15:17:47'),
(164, 'galleries.update', 'web', '2021-01-23 15:17:47', '2021-01-23 15:17:47'),
(165, 'galleries.destroy', 'web', '2021-01-23 15:17:47', '2021-01-23 15:17:47'),
(166, 'requestedEProviders.index', 'web', '2021-01-25 04:53:17', '2021-01-25 04:53:17'),
(167, 'slides.index', 'web', '2021-01-25 06:01:20', '2021-01-25 06:01:20'),
(168, 'slides.create', 'web', '2021-01-25 06:01:20', '2021-01-25 06:01:20'),
(169, 'slides.store', 'web', '2021-01-25 06:01:20', '2021-01-25 06:01:20'),
(170, 'slides.edit', 'web', '2021-01-25 06:01:20', '2021-01-25 06:01:20'),
(171, 'slides.update', 'web', '2021-01-25 06:01:20', '2021-01-25 06:01:20'),
(172, 'slides.destroy', 'web', '2021-01-25 06:01:20', '2021-01-25 06:01:20'),
(173, 'notifications.index', 'web', '2021-01-25 10:42:33', '2021-01-25 10:42:33'),
(174, 'notifications.show', 'web', '2021-01-25 10:42:34', '2021-01-25 10:42:34'),
(175, 'notifications.destroy', 'web', '2021-01-25 10:42:34', '2021-01-25 10:42:34'),
(176, 'coupons.index', 'web', '2021-01-25 11:11:55', '2021-01-25 11:11:55'),
(177, 'coupons.create', 'web', '2021-01-25 11:11:55', '2021-01-25 11:11:55'),
(178, 'coupons.store', 'web', '2021-01-25 11:11:55', '2021-01-25 11:11:55'),
(179, 'coupons.edit', 'web', '2021-01-25 11:11:55', '2021-01-25 11:11:55'),
(180, 'coupons.update', 'web', '2021-01-25 11:11:55', '2021-01-25 11:11:55'),
(181, 'coupons.destroy', 'web', '2021-01-25 11:11:55', '2021-01-25 11:11:55'),
(182, 'bookingStatuses.index', 'web', '2021-01-25 14:21:01', '2021-01-25 14:21:01'),
(183, 'bookingStatuses.create', 'web', '2021-01-25 14:21:01', '2021-01-25 14:21:01'),
(184, 'bookingStatuses.store', 'web', '2021-01-25 14:21:01', '2021-01-25 14:21:01'),
(185, 'bookingStatuses.edit', 'web', '2021-01-25 14:21:01', '2021-01-25 14:21:01'),
(186, 'bookingStatuses.update', 'web', '2021-01-25 14:21:01', '2021-01-25 14:21:01'),
(187, 'bookingStatuses.destroy', 'web', '2021-01-25 14:21:01', '2021-01-25 14:21:01'),
(188, 'bookings.index', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(189, 'bookings.create', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(190, 'bookings.store', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(191, 'bookings.show', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(192, 'bookings.edit', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(193, 'bookings.update', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(194, 'bookings.destroy', 'web', '2021-01-25 16:27:09', '2021-01-25 16:27:09'),
(195, 'eProviderPayouts.index', 'web', '2021-01-30 06:23:08', '2021-01-30 06:23:08'),
(196, 'eProviderPayouts.create', 'web', '2021-01-30 06:23:08', '2021-01-30 06:23:08'),
(197, 'eProviderPayouts.store', 'web', '2021-01-30 06:23:08', '2021-01-30 06:23:08'),
(198, 'eProviderPayouts.destroy', 'web', '2021-01-30 06:23:09', '2021-01-30 06:23:09'),
(199, 'earnings.index', 'web', '2021-01-30 08:57:57', '2021-01-30 08:57:57'),
(200, 'earnings.create', 'web', '2021-01-30 08:57:57', '2021-01-30 08:57:57'),
(201, 'earnings.store', 'web', '2021-01-30 08:57:57', '2021-01-30 08:57:57'),
(202, 'earnings.destroy', 'web', '2021-01-30 08:57:57', '2021-01-30 08:57:57'),
(203, 'customPages.index', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(204, 'customPages.create', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(205, 'customPages.store', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(206, 'customPages.show', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(207, 'customPages.edit', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(208, 'customPages.update', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(209, 'customPages.destroy', 'web', '2021-02-24 06:37:44', '2021-02-24 06:37:44'),
(210, 'wallets.index', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(211, 'wallets.create', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(212, 'wallets.store', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(213, 'wallets.update', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(214, 'wallets.edit', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(215, 'wallets.destroy', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(216, 'walletTransactions.index', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(217, 'walletTransactions.create', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(218, 'walletTransactions.store', 'web', '2021-02-24 11:37:44', '2021-02-24 11:37:44'),
(219, 'packages.index', 'web', '2021-09-20 03:09:37', '2021-09-20 03:09:37'),
(220, 'settings.web_settings', 'web', '2021-09-21 11:03:59', '2021-09-21 11:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'web', 0, NULL, NULL),
(3, 'provider', 'web', 0, NULL, '2021-08-12 08:18:38'),
(4, 'customer', 'web', 1, NULL, NULL),
(5, 'owner', 'web', 0, '2021-05-24 01:56:25', '2021-05-26 17:25:34'),
(6, 'Test', 'web', 0, '2021-08-10 08:54:11', '2021-08-10 08:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(2, 3),
(2, 4),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 5),
(5, 2),
(5, 5),
(6, 2),
(6, 5),
(7, 2),
(7, 5),
(8, 2),
(8, 5),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 2),
(10, 5),
(11, 2),
(11, 3),
(11, 4),
(12, 2),
(13, 2),
(13, 5),
(14, 2),
(14, 5),
(15, 2),
(15, 5),
(16, 2),
(16, 5),
(17, 2),
(17, 5),
(18, 2),
(18, 5),
(19, 2),
(19, 5),
(20, 2),
(20, 5),
(21, 2),
(21, 5),
(22, 2),
(22, 5),
(23, 2),
(23, 5),
(24, 2),
(24, 5),
(25, 2),
(25, 5),
(26, 2),
(26, 5),
(27, 2),
(27, 5),
(28, 2),
(28, 5),
(29, 2),
(29, 5),
(30, 2),
(30, 5),
(31, 2),
(31, 5),
(32, 2),
(32, 5),
(33, 2),
(33, 5),
(34, 2),
(34, 5),
(35, 2),
(35, 5),
(36, 2),
(36, 5),
(37, 2),
(37, 5),
(38, 2),
(38, 5),
(39, 2),
(39, 5),
(40, 2),
(40, 5),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 4),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(57, 3),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(69, 4),
(69, 5),
(69, 6),
(70, 2),
(70, 4),
(70, 5),
(70, 6),
(71, 2),
(71, 4),
(71, 5),
(71, 6),
(72, 2),
(72, 5),
(73, 2),
(73, 3),
(73, 5),
(74, 2),
(74, 3),
(74, 5),
(75, 2),
(75, 3),
(75, 5),
(76, 2),
(76, 3),
(76, 5),
(77, 2),
(77, 3),
(77, 5),
(78, 2),
(78, 3),
(78, 5),
(79, 2),
(79, 5),
(80, 2),
(80, 3),
(80, 5),
(81, 2),
(81, 3),
(81, 5),
(82, 2),
(82, 3),
(82, 5),
(83, 2),
(83, 3),
(83, 5),
(84, 2),
(84, 3),
(84, 5),
(85, 2),
(85, 3),
(85, 5),
(92, 2),
(92, 5),
(93, 2),
(93, 5),
(94, 2),
(94, 5),
(95, 2),
(95, 5),
(96, 2),
(96, 5),
(97, 2),
(97, 5),
(98, 2),
(98, 3),
(98, 5),
(99, 2),
(99, 4),
(99, 5),
(100, 2),
(100, 4),
(100, 5),
(101, 2),
(101, 5),
(102, 2),
(102, 5),
(103, 2),
(103, 5),
(104, 2),
(104, 5),
(105, 2),
(105, 3),
(105, 4),
(105, 5),
(106, 2),
(106, 3),
(106, 4),
(106, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(108, 4),
(108, 5),
(109, 2),
(109, 3),
(109, 4),
(109, 5),
(110, 2),
(110, 5),
(111, 2),
(111, 5),
(112, 2),
(112, 5),
(113, 2),
(113, 5),
(114, 2),
(114, 5),
(115, 2),
(115, 5),
(116, 2),
(116, 5),
(117, 2),
(117, 3),
(117, 5),
(118, 2),
(118, 3),
(118, 5),
(119, 2),
(119, 3),
(119, 5),
(120, 2),
(120, 3),
(120, 5),
(121, 2),
(121, 3),
(121, 5),
(122, 2),
(122, 3),
(122, 5),
(123, 2),
(123, 5),
(124, 2),
(124, 5),
(126, 2),
(126, 5),
(127, 2),
(127, 5),
(128, 2),
(128, 5),
(129, 2),
(129, 3),
(129, 5),
(130, 2),
(130, 5),
(131, 2),
(131, 5),
(132, 2),
(132, 5),
(133, 2),
(133, 5),
(134, 2),
(134, 5),
(135, 2),
(135, 3),
(135, 5),
(136, 2),
(136, 5),
(137, 2),
(137, 5),
(138, 2),
(138, 5),
(139, 2),
(139, 5),
(140, 2),
(140, 5),
(141, 2),
(141, 3),
(141, 5),
(142, 2),
(142, 3),
(142, 5),
(143, 2),
(143, 3),
(143, 5),
(144, 2),
(144, 3),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(147, 2),
(147, 3),
(147, 4),
(148, 2),
(148, 3),
(148, 4),
(149, 2),
(149, 3),
(149, 4),
(150, 2),
(150, 3),
(150, 4),
(151, 2),
(151, 3),
(151, 4),
(152, 2),
(152, 3),
(152, 4),
(153, 2),
(153, 3),
(153, 4),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(160, 2),
(160, 5),
(161, 2),
(161, 3),
(161, 5),
(162, 2),
(162, 3),
(162, 5),
(163, 2),
(163, 3),
(163, 5),
(164, 2),
(164, 3),
(164, 5),
(165, 2),
(165, 3),
(165, 5),
(166, 2),
(166, 5),
(167, 2),
(167, 5),
(168, 2),
(168, 5),
(169, 2),
(169, 5),
(170, 2),
(170, 5),
(171, 2),
(171, 5),
(172, 2),
(172, 5),
(173, 2),
(173, 3),
(173, 4),
(174, 2),
(174, 3),
(174, 4),
(175, 2),
(175, 3),
(175, 4),
(176, 2),
(177, 2),
(178, 2),
(179, 2),
(180, 2),
(181, 2),
(182, 2),
(183, 2),
(184, 2),
(185, 2),
(186, 2),
(187, 2),
(188, 2),
(188, 3),
(188, 4),
(188, 5),
(189, 2),
(189, 4),
(189, 5),
(190, 2),
(190, 4),
(190, 5),
(191, 2),
(191, 3),
(191, 4),
(191, 5),
(192, 2),
(192, 3),
(192, 4),
(192, 5),
(193, 2),
(193, 3),
(193, 4),
(193, 5),
(194, 2),
(194, 4),
(194, 5),
(195, 2),
(195, 3),
(196, 2),
(196, 3),
(197, 2),
(197, 3),
(198, 2),
(199, 2),
(199, 3),
(199, 5),
(200, 2),
(200, 5),
(201, 2),
(201, 5),
(202, 2),
(202, 5),
(203, 2),
(203, 3),
(203, 4),
(203, 5),
(204, 2),
(204, 5),
(205, 2),
(205, 5),
(206, 2),
(206, 5),
(207, 2),
(207, 5),
(208, 2),
(208, 5),
(209, 2),
(209, 5),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(216, 3),
(216, 4),
(217, 2),
(218, 2),
(219, 2);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT 0,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `e_service_id` int(10) UNSIGNED DEFAULT NULL,
  `e_provider_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `e_service_id`, `e_provider_id`, `enabled`, `created_at`, `updated_at`) VALUES
(2, 2, '{\"en\":\"Fix the Broken Stuff by Asking for the Technicians\"}', '{\"en\":\"Repair\"}', 'bottom_start', '#333333', '#F4841F', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-25 09:23:49', '2021-07-13 08:02:49'),
(3, 3, '{\"en\":\"Add Hands to Your Cleaning Chores\"}', '{\"en\":\"Book Now\"}', 'bottom_start', '#333333', '#1FA3F4', '#FFFFFF', '#333333', 'cover', NULL, NULL, 1, '2021-01-31 06:04:36', '2021-07-13 08:03:20'),
(4, 1, '{\"en\":\"Best Beauty Salon\"}', '{\"en\":\"Book Now\"}', 'top_center', '#000000', '#DB1818', '#000000', '#D23A3A', 'cover', 41, 1, 0, '2021-07-14 09:13:55', '2021-07-14 09:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(10,2) NOT NULL DEFAULT 0.00,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Tax 20', 20.00, 'percent', '2021-01-15 06:12:13', '2021-02-01 16:23:01'),
(2, 'Tax 10', 10.00, 'percent', '2021-01-15 06:19:30', '2021-01-15 06:19:30'),
(3, 'Maintenance', 2.00, 'fixed', '2021-01-18 15:48:29', '2021-02-01 16:25:13'),
(4, 'Tools Fee', 5.00, 'fixed', '2021-02-01 16:24:12', '2021-02-01 16:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(5, 'cf7b6566-b526-46b0-9af4-7e2e44737716', '2021-06-30 09:53:37', '2021-06-30 09:53:37'),
(6, 'a04af2de-2a46-48c7-af5c-2677ed7d6200', '2021-06-30 09:54:53', '2021-06-30 09:54:53'),
(8, 'a8dad160-88bb-4de7-853a-694340f7f764', '2021-06-30 09:58:57', '2021-06-30 09:58:57'),
(10, '21e4c677-01c9-46c0-aebc-aea494ae6194', '2021-06-30 10:00:25', '2021-06-30 10:00:25'),
(11, '13c3baa5-b6dc-4942-9f08-4b97f08569cc', '2021-06-30 10:00:46', '2021-06-30 10:00:46'),
(12, '92514e86-3eee-4c43-8672-adcbcd3a3dc0', '2021-06-30 10:01:38', '2021-06-30 10:01:38'),
(13, '46e2230f-50c4-4d53-8c60-2c49fda0e0bc', '2021-06-30 10:01:55', '2021-06-30 10:01:55'),
(14, 'ed4a3c05-7cfb-4b48-a84e-9a2b0fe3483d', '2021-06-30 10:02:38', '2021-06-30 10:02:38'),
(15, 'e1f96c65-3410-44d1-a6bc-15673d2867f6', '2021-06-30 10:03:04', '2021-06-30 10:03:04'),
(16, '20d31122-e3c3-47fc-b097-3f1e8c6a66cd', '2021-06-30 10:03:23', '2021-06-30 10:03:23'),
(17, 'f0d1c51b-f1dc-4ff3-b054-d9884a29fec6', '2021-06-30 10:03:42', '2021-06-30 10:03:42'),
(18, '7a8c2840-9288-46f3-a2d8-2e7cbcc94498', '2021-06-30 10:05:48', '2021-06-30 10:05:48'),
(19, '81555c4a-e327-4dbf-996b-57af451e1d2d', '2021-06-30 10:06:25', '2021-06-30 10:06:25'),
(20, '14840f26-ba7f-4060-a3f3-37a8a9cd72c0', '2021-06-30 10:07:30', '2021-06-30 10:07:30'),
(21, '8c32aa13-7fc8-45f7-8329-388471eba722', '2021-06-30 10:10:39', '2021-06-30 10:10:39'),
(22, '80efd7bc-278d-4f71-8c67-9691b8f1c5bb', '2021-06-30 10:11:00', '2021-06-30 10:11:00'),
(23, 'd35c5663-6648-4d3c-94ab-aa1ea68517bb', '2021-06-30 10:11:28', '2021-06-30 10:11:28'),
(24, 'a39e63ce-fdc8-4b45-ad9b-8e74bba0558f', '2021-06-30 10:13:25', '2021-06-30 10:13:25'),
(26, '5c36f54f-d949-4206-a5ef-cd93402ddb32', '2021-06-30 10:17:17', '2021-06-30 10:17:17'),
(27, '79750bb5-89c0-4f20-a9ea-a74697f4546c', '2021-06-30 10:20:09', '2021-06-30 10:20:09'),
(29, 'f1c4957b-b5a0-42b3-9015-2cf776cb5eae', '2021-06-30 10:30:13', '2021-06-30 10:30:13'),
(39, '949eb87c-cfb4-41ba-88b1-278960446ffb', '2021-06-30 12:07:26', '2021-06-30 12:07:26'),
(40, '7ec7c337-ee7f-4b4a-bd7a-8f3d9f03eade', '2021-06-30 12:12:41', '2021-06-30 12:12:41'),
(41, 'fb29909b-8b28-44e4-b13c-1b4d3f4e6b9b', '2021-06-30 12:13:49', '2021-06-30 12:13:49'),
(64, 'ec236d6e-4024-452b-b1af-5d743d4c5c6a', '2021-06-30 12:31:43', '2021-06-30 12:31:43'),
(65, '2a2ca80a-3157-4a08-b7c1-94dbbaef6356', '2021-06-30 12:31:43', '2021-06-30 12:31:43'),
(66, 'ca008a5b-a294-48b0-839e-260bc38a0af5', '2021-06-30 12:31:44', '2021-06-30 12:31:44'),
(67, '4ff64830-601e-4710-897b-82f4ef3fb930', '2021-06-30 12:31:44', '2021-06-30 12:31:44'),
(68, '07a88496-785b-4974-8884-5e7a301dec99', '2021-06-30 12:31:45', '2021-06-30 12:31:45'),
(69, '954947d3-f573-49ed-8913-1cc4c0c7f8d2', '2021-06-30 12:47:40', '2021-06-30 12:47:40'),
(70, 'c5fe370f-d4dc-4fff-909f-1b70ffaa6a07', '2021-06-30 12:50:50', '2021-06-30 12:50:50'),
(71, 'd467cb02-f197-4778-9a06-0ab5f9809975', '2021-06-30 13:08:50', '2021-06-30 13:08:50'),
(75, '084a39a5-be81-4d7f-81e7-3d45b8fcc414', '2021-06-30 13:14:47', '2021-06-30 13:14:47'),
(76, '27be959d-fee8-4c19-acca-e7d60435de7b', '2021-06-30 13:15:49', '2021-06-30 13:15:49'),
(79, '8581c0f7-c806-4a25-a015-84d6562168da', '2021-07-01 05:25:50', '2021-07-01 05:25:50'),
(80, '109a084a-f0c4-4453-a1fc-038df51ffe93', '2021-07-01 05:25:50', '2021-07-01 05:25:50'),
(81, '2290ad31-4f2b-49c1-b0ea-329233526541', '2021-07-01 05:25:52', '2021-07-01 05:25:52'),
(82, '2c642a26-8a9a-437a-9678-524fef794464', '2021-07-01 05:25:52', '2021-07-01 05:25:52'),
(83, '743fcd1b-5619-476a-a004-ccdf2e27a15c', '2021-07-01 05:25:53', '2021-07-01 05:25:53'),
(84, 'add7c2ee-79a2-4d21-a6ee-faf69f9e1ae1', '2021-07-01 05:25:53', '2021-07-01 05:25:53'),
(85, 'c83033fa-3d1e-48e9-8817-7a2ec407cb1c', '2021-07-01 05:25:54', '2021-07-01 05:25:54'),
(86, 'e4123ce6-2b73-4bf3-b661-210429bab179', '2021-07-01 05:25:54', '2021-07-01 05:25:54'),
(87, '82e48360-0a53-40c0-af1f-2c0673e08513', '2021-07-01 05:25:55', '2021-07-01 05:25:55'),
(88, '3e1bee28-4549-4394-bf1c-879d9e7bcbeb', '2021-07-01 05:25:55', '2021-07-01 05:25:55'),
(89, 'f5e41b67-b80f-458c-8a21-b02e563036df', '2021-07-01 05:25:56', '2021-07-01 05:25:56'),
(90, '8d8b20f7-f28c-4fee-8fc1-5bb7c9fa2d25', '2021-07-01 05:25:56', '2021-07-01 05:25:56'),
(91, '5bbc6850-6037-48ef-a7c1-bfdd992d9f5f', '2021-07-01 05:25:57', '2021-07-01 05:25:57'),
(92, 'b30111d2-5161-4916-9154-719f09f42168', '2021-07-01 05:25:57', '2021-07-01 05:25:57'),
(93, '4dafad4c-3f4c-4476-a626-8085b402894b', '2021-07-01 05:25:58', '2021-07-01 05:25:58'),
(94, 'bb1c54bc-beee-4515-96db-82f6d40a26f3', '2021-07-01 05:25:58', '2021-07-01 05:25:58'),
(95, '6a4a8d7d-bd1d-443c-ac42-86012e551925', '2021-07-01 05:25:59', '2021-07-01 05:25:59'),
(96, 'ad05942b-3b2c-4c6e-8042-dea12514a0d6', '2021-07-01 05:25:59', '2021-07-01 05:25:59'),
(97, '2ee2bda7-bcc8-43b4-a697-d5f9334fd29d', '2021-07-01 05:26:00', '2021-07-01 05:26:00'),
(98, 'b9cf4cd8-a743-459d-b024-19b7bf42074c', '2021-07-01 05:26:00', '2021-07-01 05:26:00'),
(99, '989e75b1-e048-4999-b39c-f2bc52d7b0fe', '2021-07-01 05:26:01', '2021-07-01 05:26:01'),
(100, '42d424c1-be2b-489c-8b47-1780e7f47fe4', '2021-07-01 05:26:01', '2021-07-01 05:26:01'),
(101, '9250a8fd-14f3-420a-8e1e-654251197a5d', '2021-07-01 05:26:02', '2021-07-01 05:26:02'),
(102, 'd2091c93-646a-4fd7-a15a-02fecc95cfb9', '2021-07-01 05:26:02', '2021-07-01 05:26:02'),
(103, 'c382fc8e-727c-401b-b0f4-588fdd5fa1db', '2021-07-01 05:26:03', '2021-07-01 05:26:03'),
(104, '0ce869da-5d5a-44a4-a5a1-68ba49e5530f', '2021-07-01 05:26:04', '2021-07-01 05:26:04'),
(105, '30bf29af-fb4d-41db-8895-d52946811e9c', '2021-07-01 05:26:04', '2021-07-01 05:26:04'),
(106, '81b33bfb-2eb0-4b23-adf7-c0262d18e1e5', '2021-07-01 05:26:05', '2021-07-01 05:26:05'),
(107, '679f60ff-c65a-4b74-a85f-b651df0c2adb', '2021-07-01 05:26:05', '2021-07-01 05:26:05'),
(108, '08612432-259d-4ae8-b629-400f617633e2', '2021-07-01 05:26:06', '2021-07-01 05:26:06'),
(109, 'a88d1cbc-d9fd-4251-8a9f-5a8ece12c3a4', '2021-07-01 05:26:06', '2021-07-01 05:26:06'),
(110, '6dc76bb4-33a6-41ec-8869-d2ea2904efd4', '2021-07-01 05:26:06', '2021-07-01 05:26:06'),
(111, '28ab63c9-be8e-4f08-bb63-0b50ac67c288', '2021-07-01 05:26:07', '2021-07-01 05:26:07'),
(119, '4becc91b-72a3-4d5f-b0b1-a4b5d5040b36', '2021-07-13 13:43:06', '2021-07-13 13:43:06'),
(120, '8d9af9cb-49dd-40e6-82fb-c7b21df0843e', '2021-07-13 13:46:54', '2021-07-13 13:46:54'),
(121, 'f4d50de0-f1df-4112-b4cf-c63f3b098f7b', '2021-07-13 13:53:26', '2021-07-13 13:53:26'),
(122, '1e66edfe-4c62-486f-9714-579d7b2bfdfb', '2021-07-13 13:55:27', '2021-07-13 13:55:27'),
(123, '87090905-37ba-49b9-bae1-98c7b9e9cb6a', '2021-07-13 14:00:46', '2021-07-13 14:00:46'),
(124, '2491ed28-0bf7-4f72-88ca-bedb3659fb02', '2021-07-13 14:01:57', '2021-07-13 14:01:57'),
(125, 'd06514f0-df0d-4f52-a8ee-9b8e6b0aad96', '2021-07-13 14:05:01', '2021-07-13 14:05:01'),
(126, 'f46dab2c-63a5-40bc-9a53-a1a5231e56b5', '2021-07-13 14:08:54', '2021-07-13 14:08:54'),
(127, '2de4dcf3-3af9-4cb7-96bf-3f6352f956ef', '2021-07-13 14:09:32', '2021-07-13 14:09:32'),
(128, '98354abc-8fcd-4fe8-87a8-7c7d5b3321d9', '2021-07-13 14:12:22', '2021-07-13 14:12:22'),
(129, '0f51f360-0e02-426d-b025-491304d1dca5', '2021-07-14 07:07:48', '2021-07-14 07:07:48'),
(130, '538f2377-92ef-4d5d-9849-905480c5be49', '2021-07-14 07:22:14', '2021-07-14 07:22:14'),
(131, '59935f3e-3865-40ca-85fc-51d764b9f6d5', '2021-07-14 07:23:19', '2021-07-14 07:23:19'),
(132, '58d7ce02-f084-4e98-8a12-aeac847b9b53', '2021-07-14 07:23:35', '2021-07-14 07:23:35'),
(133, '110a8204-9d65-48bb-9504-04e2af7faa38', '2021-07-14 07:26:40', '2021-07-14 07:26:40'),
(134, 'bb0a581d-82bd-47a5-a446-6fc9fdda12db', '2021-07-14 07:27:06', '2021-07-14 07:27:06'),
(135, 'e5031b13-d22f-4439-8d7f-81a141be16e3', '2021-07-14 07:33:06', '2021-07-14 07:33:06'),
(136, 'dacaca4b-cc1d-4adc-bb0c-3b61e6e405ae', '2021-07-14 07:35:09', '2021-07-14 07:35:09'),
(137, '0809ada0-c157-40af-976e-450c5c1f1a7b', '2021-07-14 07:36:31', '2021-07-14 07:36:31'),
(138, '20abfdaf-9c7f-47da-866b-23d9ef7b6717', '2021-07-14 07:39:27', '2021-07-14 07:39:27'),
(139, 'de407c96-a8b1-4c9f-9d03-380820f4267e', '2021-07-14 07:46:55', '2021-07-14 07:46:55'),
(141, '411bb997-2930-46a3-b9c9-f1b05f0e3b02', '2021-07-14 07:56:25', '2021-07-14 07:56:25'),
(142, '1ccf1aae-0aa3-47de-bcbc-813090b1a269', '2021-07-14 08:11:36', '2021-07-14 08:11:36'),
(143, '9e5596b1-2af9-45d5-a877-ad91b140b04c', '2021-07-14 08:13:05', '2021-07-14 08:13:05'),
(144, 'b784322c-5f1f-4c98-bba3-83f15c47d94e', '2021-07-14 08:14:27', '2021-07-14 08:14:27'),
(145, '5774d97f-18c4-4837-9a3a-e2fb2c5afe88', '2021-07-14 08:18:56', '2021-07-14 08:18:56'),
(146, '08e56624-f8bd-4f40-a24d-159c0f318555', '2021-07-14 08:21:10', '2021-07-14 08:21:10'),
(147, '94df97ef-09de-418b-a947-04ae72869dbe', '2021-07-14 08:25:23', '2021-07-14 08:25:23'),
(148, '1704290e-db34-440d-b7f5-de588a0fb39d', '2021-07-14 08:27:17', '2021-07-14 08:27:17'),
(149, 'de437312-f68a-4ca4-bae2-764f06f4212e', '2021-07-14 08:29:33', '2021-07-14 08:29:33'),
(150, 'dde3f062-7353-4de5-9e45-3867e4ef9f9c', '2021-07-14 08:31:39', '2021-07-14 08:31:39'),
(151, 'd5fdaf51-8fb9-44e2-bc37-8ca3638c9fb3', '2021-07-14 08:41:50', '2021-07-14 08:41:50'),
(152, 'e71bec80-8b90-4f64-a647-a6c393f72521', '2021-07-14 08:47:57', '2021-07-14 08:47:57'),
(153, 'b8e39f76-880d-42bf-a749-1f7b13d845fa', '2021-07-14 08:50:33', '2021-07-14 08:50:33'),
(154, '0701a83d-8cdd-4598-9b36-ecde38020696', '2021-07-14 08:52:29', '2021-07-14 08:52:29'),
(155, 'EAAag7up8IXMBAJOTqiFRAnGEcOEvefsPkuLSlqmZAdVQFks6SyOJzdeHveZABX0U6IYfKL7TDYLUDdB4TvxD5E3t5l4CXfqU7fpgPZAZCjQ31eckU5fZCigl9OVzSZCZAF1g0ZAOXAPVEUwiazT22Ug58XY0uChIZABnZAmMGZCIWIQZCQZDZD', '2021-07-15 07:00:15', '2021-07-15 07:00:15'),
(156, 'ya29.a0ARrdaM89bhfOzALV7RfuUzIjyhi9sTlxNKeWIMiHn5v5AaJJCT9VNrjZxzpc7XKKXe4lT5ft_NYL6W-iBZ3roUO1SNIpz4i8IAwTeGZSfTgBayHQ_QUdxsORHjOhqyhbWzrkCuJRgx4zJ1abcvKucTXumOztfA', '2021-07-16 13:59:15', '2021-07-16 13:59:15'),
(157, 'ya29.a0ARrdaM_NlmxKrMBRs9Tk0cqr8YWOa6oPX8E6fRrBQS5ux5fPMWqbsRacKhQ0VNWPXEDiDQWYTvu_V1lXypBecwBynMpaNM96Fy5A9NmrDYW-cz4uwPveiIqo8SG0vpO1IodhOP7YxFhrPzPAa_iPvwYunz9MKA', '2021-07-16 14:02:02', '2021-07-16 14:02:02'),
(158, 'EAAag7up8IXMBAH133yBkRA7zQVqaQ2qRXuZCORZBoOZC2VjaLh2bgD0KlJa2Bc53FZBYhzgX6NxDNjEETXVsSLvm0j1xbnnpLPmbywZCHQLMpl1AmE5A6CDbsCNZCKvbsAxI2nAxXp9JJgdofBHhZB8zCuux8BZCS0VisdCC5UVfxwZDZD', '2021-07-17 17:29:10', '2021-07-17 17:29:10'),
(159, 'EAAag7up8IXMBAHYM8dBiq06VrvOyZCVtDs2XrW3954YG03TfJbi2TZBleBPrnja9Nl1ojZB8T5sJ3yngBcymffQBHr0jxrcQCtxZCon7tieWVyNZAbAad12LERoDnWjZCo0ZA5jptNrJLwNZBfnwA7AHzRsWprGFj6dftcSi62ZCDllk8JHHPTqHzBY6ao', '2021-07-17 17:31:29', '2021-07-17 17:31:29'),
(160, 'EAAag7up8IXMBAC1c0bCZCmjy84KPLPsSiaTbTMau460nx5zf0zEbG5W4reLf6GqfuwUrYSzu5qp2xOlx0DIYdwmGKnXKV2EIxS8JkRI6d1vTJG7Y3SR6ZCELnbLsPGum4tPqdcPsiorFqT8zf0VKxy6fr5eLyUDHFZBgobncJoIZCTVcJAKm2b6xeJnDak', '2021-07-17 17:34:44', '2021-07-17 17:34:44'),
(161, 'EAAag7up8IXMBAIwzZBCt22YBqVhITZBMKDpqbkZBi6pEhaxkeCTZAlvaW5yZBfbMqIKaReZCDDUjcdZArmdrVt4YsvfU0Q638OwPFy5XUkFKFAjUCwoL4ybcZBe2PZCM4e0LVaZAiscGCbNqZBtrD9QfdilTrxJnlBEviXjEPSPMv8egQZDZD', '2021-07-19 05:00:30', '2021-07-19 05:00:30'),
(162, 'EAAag7up8IXMBAKMeygLRDtMjkodGts53TRioGK1kHSa79tYtoGbn63r2cuU4vRyHsVlIXlRC8IFIeZCB1crN287nKLcW9OZC5v0WMYyIF9Qi6ggGi8idCu0OZAnycpH9t2ZClRKmN5LEp2etDgIRkGLrJWU0fXTVgie288zAdFFQub0lVFT9', '2021-07-24 06:25:16', '2021-07-24 06:25:16'),
(163, 'EAAag7up8IXMBAF8bdk1k3skl8YZAXH3FtTYkZCMvzPDrkGrxmrYirrZCfJ87tdZCucZAdFgMXYzG6rFTUu831rwd47tXtGhUXXRs4A8i9HpntFofATQg39vHhGEUGjVlFU7XDHvBAQycJZCXUPkQDPouud21VpC8Ta8nXlOOS5nzpEH4qGgSlMsIObZBOT', '2021-07-25 02:24:50', '2021-07-25 02:24:50'),
(164, 'EAAag7up8IXMBAHvTkrX3q64WUywv81iSRfSXH0LkhK2tqRvEtiBbLEBZBy4icJbEU6JenD915HtYXkO6ikVGHqTvpa4T2K93JZBr9kRAuL2cV4xBoN6gZBNwd1gDFCL48ClXVyj5meSVADjkA7vaibyZCD8WjAmZCtoeclJCIyvBd2r2xgEt8', '2021-07-25 02:46:17', '2021-07-25 02:46:17'),
(165, 'ya29.a0ARrdaM__j7Hbb5SFw8zkwVmr7IT8lZ8D1AkNimAVBNkh7vRDgapx-b4sRf-3wL_Qs9y9UCuu-33g9RkXpUXmyVhMS3lGWLAIMTi5UIaWOxCv5knO-Rc9aMwVegb_MihzzX7SIPMiitk2kMUsJlQYdfBu4ucTIA', '2021-07-26 05:42:02', '2021-07-26 05:42:02'),
(166, 'ya29.a0ARrdaM_Vqq7G2kEHWRwJRu-WfDFzQtDW3Ktyykv6Tah-Ru9t9ez9Wsm_41E-aJW_bCen3HlnkBC0So0sgXilVeVd7Z9lfZ9OVs3UxBY0LBLYDzDprYWcU4fD-4L4QaiIe1X5E6RG5GaG7asId_oyQ_d_fEOa', '2021-07-26 05:42:49', '2021-07-26 05:42:49'),
(167, 'ya29.a0ARrdaM9wVi70odaCkrRARyMzafPyY0XDK68Qzsu9qU3Z1eBNQ9NssCk9MgZQ1XjPQmNCopOXyvov1XH2cyGveV0pB8tpzboGg350B2U7cVGgbtW0jXFH3k2EGm8z8STWLfDlnzVcB9Yg7kCgIYTXAv0Wcc6O0g', '2021-07-28 10:23:07', '2021-07-28 10:23:07'),
(168, 'EAAEKJHCybC8BAAxnIyCZCblYmWZA3jWvZAE5vjmBrnoLPPRl2J5Dm0ZBdZAtUAUkPw4csgXScgwN1kWBjwIFA4h7yZBFlZCTZAnyPODApIjNQZBnltuFyyasjUFrUS2dKzHZChLBmk94XsctzAr6PUCgcsDlvKuZBV0IydDOZCrzXYFiDgZDZD', '2021-07-28 10:41:27', '2021-07-28 10:41:27'),
(169, '48d04533-3cde-4e93-a542-44b067421014', '2021-07-29 07:42:34', '2021-07-29 07:42:34'),
(170, 'ya29.a0ARrdaM9CBekgna13wUmyFc7Ld_L2WueMaFN_3lu1kKaVO5M1zPqf95xDzxTtrUWiZ_nlv4r5cWBgYMpfVesaL8MrWtT4N9ym7E97hUQ_1xlK37PJcfIR4qrw7IkX4bPy-YsFLIva53j0osOlM0V_XmE7wne7dg', '2021-07-30 13:31:13', '2021-07-30 13:31:13'),
(171, 'ya29.a0ARrdaM9No8Cn1D8_IkNsr0doamq9Q5IO77gCzoj7kXDNbxmnCG6Fz54XnCBtDvX5bFz3KjRR4oecwdEDL-x1N2vG04tShT2aE0Z90qcwDSQkv53GcYuj3W8wVnL_9LFC_EeT5XdWw-L0Z7hwl5UyetdwVAI8OQ', '2021-07-30 13:35:49', '2021-07-30 13:35:49'),
(172, 'ya29.a0ARrdaM9Fv88ZMrZz-du2gULpnA2bjAUyYwAtXqiJudHaAAbTwKwPjVZlY3lKpl18nwgoXgVL1Wkm1I2h-RKxZGm1kXyBpGxpcVKNqNqlueGV2mb7qMDcggxis4ky5TGFTdTjY_J48u9UX3m_Ta8fjbbR6lpJew', '2021-08-02 05:59:32', '2021-08-02 05:59:32'),
(173, 'ya29.a0ARrdaM_-VAIj9Sw38s6dpwqs7etc9Cawu2mHYVj0ooZBqYqoYTZXJwxgy0yApE-abrEPgdMIfheOZsv-S9gIfN8oCvhUaznBE6Ac8dZvGtxn2OZ7k2FoAloumt-GyaGR8xUsiM_nkBt2IzUQ8FxCqSRCrKl4xw', '2021-08-02 06:13:43', '2021-08-02 06:13:43'),
(174, 'EAAUk9hYkNTwBAOAN0D7UApagEEBZCYIa2ZB72nR8fFwUWRNrUp8tYCpil7LOTdk2mo0OTmCNHeso4l2ZAdye4JW9vfa5s4O4VyTZAchlGBrMMnFwkmGAexqTmAGfpcZAOP3aH4RAIYMjaQa66JM73gibcpX2ITG1eTTWGR3ky9gZDZD', '2021-08-02 07:03:15', '2021-08-02 07:03:15'),
(175, 'EAAUk9hYkNTwBAPrfeG8pxPtine5uTxPTnDkZCm56m9VyRr6u42SM3SZBXVtnt5987EqSxNoR7ZAAU1sESMN1pGB0anDmLD13yhc4WQv1ldCzxLNtUMJDJHXN1pS7TVQwp2mRw00fDl4FrZB2HBEjA6BCBzhXE0lm1hx3Ts1H3wZDZD', '2021-08-02 07:58:01', '2021-08-02 07:58:01'),
(176, 'ya29.a0ARrdaM9tTBSDePIgpCvLQh2p6L8QtjFWhEDKbMbMUmYVJ7ggEhaxcW48in0XMShszcHN12hdr8gO3MtE9dLV_Oa7V9yUixzpTn6Obwcx5W-DKQXG-0eDpYOLSqvPCaU5SF-ohhFeQjLFrGRyr81AW9S4Fqpj', '2021-08-02 10:22:28', '2021-08-02 10:22:28'),
(177, 'ya29.a0ARrdaM94IfVswr9vekzuGCIAUxA6-NjknO-cRDSKbAvxwwN51W6uhWohQLuNbLlL0jvgwk-UCX-JjOgZ9txa0NtG4G_4HKX0OWViaGI8XkYHryJd99rfF7iDz4Ifqk_XWuCWvmSVjTZqtkGTsDcbixF0DFwGVw', '2021-08-02 10:57:30', '2021-08-02 10:57:30'),
(178, 'ya29.a0ARrdaM-eAzNVRI5j4NdIhLc4eWtggqitdLsUN8tAWSXN3SDIIcxFbTjnvWYQ-Rpy0WovA3b7XNaVD9BqAL5doF1X0aZyuvIz3VOsnezLOifEK92MY9IsdPpzL3ghDOjrGHfcW4ImGMktqVTebyMwysBku1HI', '2021-08-02 11:17:14', '2021-08-02 11:17:14'),
(179, 'ya29.a0ARrdaM-MaQxA04XMssDTZIPX_4f9iW55gmtwEPieUvws02LbZCCdwB5bT3uPzimRN8n0QBzo8pHHM-0gNvrvLZGCLQ9V09JhCIUbx-YNY5fXWKNblBWleKp4REJeS8Cb5Qf3d7i5g3mVDFB_Y9z4Ea746HAGBA', '2021-08-02 11:35:18', '2021-08-02 11:35:18'),
(180, 'ya29.a0ARrdaM99eZQMw9COkXNdkDmigp38Tfp05PYDrKOQeiuyze_Pj5SWAsxBaxUCGr2UmVzDT-vmTg6fWOBrGn7adeTxBOYj1mrL9O_1ht5zIGBn48wHYbMiKEu5WcDetK5st7ylfbs0OVZNHng_bJolBf7nus5xhQ', '2021-08-02 12:43:27', '2021-08-02 12:43:27'),
(181, 'ya29.a0ARrdaM8i8rQB2FWHXU2DR3ORdgVqfGBGXMQNfn5BC801UwTJ5kvvmVui5En4zKj1j2M55CS8q1oLi4pPe2HZdMaXFRb9xkPEaoOELfW_jUanELzAABiSiLUcuS9SYM7dmjY0UtiNO5RwdoKJJU3O5BArBPKjgQ', '2021-08-04 05:45:35', '2021-08-04 05:45:35'),
(182, 'ya29.a0ARrdaM9KNkFRRKzRB9FiW1UbhXwxW3GMO08NILZftv3ybtoyXbtbMFea8usgTFSjNoxRqCnFrSKrM1xgOfXbu8WHxbNS393eEtJ8dDDy6s6Bqn41aOfR4_6M2AB7n_RtcH5y-9N31nau-nI81WM_dVYXrcPf8A', '2021-08-04 06:05:29', '2021-08-04 06:05:29'),
(183, 'ya29.a0ARrdaM93ni9hL2DWtnZyjYvVGn9h85q9AW8vsJqT4phAd4gpkPMJSp5i3invVOc6lsCjs2nAW5BYJQlQz2gbKx9w1IdxE0FjCtTWQwQ7ScgfXnjfGe8xIck6mA_l4KrsVkQA-36iQs0ruTpHGmVmQlLyz7ESDw', '2021-08-04 06:38:05', '2021-08-04 06:38:05'),
(184, 'ya29.a0ARrdaM-q9rErDqEzicyqlVvXhfG-5N4uB_EaJAna1uJT30zHHwjcYGVWpZARf4K7mkuAkQz5ORAKlcA4H639mrMOqHcAQJ3zzIMFtp56ovzktQE8bUZfszF89fl-pngJY_AXcKLGjz_pvb9OWdVvuhjLNaVliw', '2021-08-06 05:41:11', '2021-08-06 05:41:11'),
(185, 'EAAUk9hYkNTwBAMR0GtnNzeLG9VsIZAeZAextJZBxwK1cuE4LF5GZCGPp6WrgpcZAVxO8UR4VNYt2sPxoFoNcc7VzHpu3qmshvxSouEjGQFXeJzkTjb8qYIFh8vfUq29v1vlnKtZAOKlrtRIIonh9u04m3Raw6ZB97n2y5tkOvsMKn6KcpV741nz', '2021-08-10 05:49:10', '2021-08-10 05:49:10'),
(186, 'EAAUk9hYkNTwBAHObP2XFNzhTwZCJuPu4iYVJNK3G1X1XnOmWTuFEPuP83zwUr7IIF583wFCHfY4KqZBWCijlewIIVTL50I3LKeC7CP1kWZBB74FxtHGTQoSZBKlYe418rCLekuMcIQ3I4SydcpONfMGIHv0tm9Or7bNDSmVZBmB0IQ4NEudSt', '2021-08-10 10:43:25', '2021-08-10 10:43:25'),
(187, 'EAAUk9hYkNTwBACbRrNMyvGtZAATcgX7FK3gwfbiXBaQu1rPwbp0noSGc6Azf5ZB8GlHHIxciRq1eaSYLbVDrkFn6BrjhklnA9r9mDZAE8XZBfYhMuXpngJssThdkZCjvCaYhQWbZCBZA7IURvH1HsK2euiREBGLjF7sPvANF1kRBBKHbTiZAHmZAO', '2021-08-10 12:32:42', '2021-08-10 12:32:42'),
(188, 'ae2487f3-0bb9-4064-ae93-cfec7b927d84', '2021-09-29 06:26:35', '2021-09-29 06:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_social` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `phone_verified_at`, `email_verified_at`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `paypal_email`, `remember_token`, `created_at`, `updated_at`, `is_social`) VALUES
(1, 'Khalil Anjum', 'admin@demo.com', '+923134446195', '2021-01-10 12:22:10', '2021-01-10 12:22:10', '$2y$10$94imVFQZcgQyRi2dNZUcAO16.KDQ48B6x6O1Kzh70zlQVrzrJjG/W', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', 'cF67w1TycbEcT6J9BciXph:APA91bEobxebgH4BrTWonM_ygSuwf7sjjg289gQXmbBFfNRZcdspx7wOAMj_vCLdyrcTCuYlTlNbc6uEgcWptFWiWrWN3j-zpcAHZgo7lzkb0UGaSKMLG2QzUi2i8GMmUlkp6n-qKrLs', NULL, NULL, NULL, NULL, NULL, 'LPZZl1zriY0gHf27kIs4CviMI6YlYSdtWhIlunXhLU0uSgUVtDKebbfbuoqS', NULL, '2021-09-30 11:06:01', 0),
(2, 'Ahmad Khan', 'provider@demo.com', '+1 234 8996 322', '2021-01-10 12:22:10', '2021-01-10 12:22:10', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', 'efMEA6K2KkVtiO4tVtOaHG:APA91bGsRXv192zS9ZrvOG8a13ZZ6MSuinXljTLYAB5MfO0uYc7YMibtsZGh7tXO7bJdSn-1SfCSH_VqsKg4cP5vqdxmZGVRM-Rs7zfno2QMyyyzRyfii9w0yRHSIQKAPC1VP8Jz-rDL', NULL, NULL, NULL, NULL, NULL, 'WYAYbys9KfpdeDWa1upmGkMbymEdXdwglP1pZ82WxIJZiHnBsxCC48JNN0wC', NULL, '2021-11-01 13:10:59', 0),
(3, 'Awad  Habib', 'customer@demo.com', '+1 234 8996 323', '2021-01-10 12:22:10', '2021-01-10 12:22:10', '$2y$10$cBzfVl1wDKOMjYlXtsaBmeISc1n8YGr4Ukw/StcJvgVNg9mbW4hWO', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', 'cXAnPHLmak-fkuCE1uxc5g:APA91bGzUx7uvgMeCqWwTgXh9Lnm86BXRuRIg9B3qpRccIxfyS3bEK9cmtxrkbcsLUCTMvbhWk6FPraGzfdX4OubZWxEIbraJOFjHWjORLdDTmnU-NElIMMeaxbAY8qTL4ziW5RFVGxk', NULL, NULL, NULL, NULL, NULL, 'vnh6e1uWJd4nAgHRyGQjveYwN59jc0qWMIblADKbuK3wd10Bp5LncbOXcuYR', NULL, '2021-11-02 11:05:11', 0),
(4, 'Sohail Tanveer', 'provider1@demo.com', '+1 234 8996 324', '2021-01-10 12:22:10', '2021-01-10 12:22:10', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', 'd86uGfZlRUWwmZxq6jRPu_:APA91bH0D0aimGhVuANjfNxv60l5rWEB2Yd7fKNCM7u1J7YDIrOWuJr7MDOcHavsMn374ntP56xgXXzB4CJ3BTuLg9HEeyEtzx_oBN3BmxqSrhIKyKo5A7gBE2bgHlo1VUO9oQe6_92g', NULL, NULL, NULL, NULL, NULL, 'yCzPqDP1oczySU57q6G71SxTIJSiZUBE4vYdXbXCqzpzC2iN09igcs3jzSQK', NULL, '2021-09-07 13:13:28', 0),
(5, 'Suliman Hanif', 'customer3@demo.com', '+12343252353233', NULL, NULL, '$2y$10$n/06hZG121ZGp3tSwDQS3uhsQKxEYspjKrn7kGlLxRinUZKiulrEm', 'gkEWScQHIol9EIRhP3m5m7JqnK5UvcGdEsKQJo7YeBcQawYFq3JAJ6SX9UKy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 05:55:52', '2021-06-30 10:13:25', 0),
(6, 'Ashraf Ghani', 'provider2@demo.com', '+123432523532523', NULL, '2021-01-10 19:00:00', '$2y$04$WRpHC9iMxZ3f.gctQ4igsuZjsYfGjX7igVM8GsC2AMME3.4au3dYu', 'TKArYDDFHNiEI33sfExaBEhxHCs5kFaWP7EO6aNlUZfnqHrvsMCwsYeAk9s2', NULL, NULL, NULL, NULL, NULL, NULL, 'JbiYaHlRWGKkfITxH9qI87GzTMPf0zJ2Iw6NIdlS5dDvWuT5PC2sP5ELGwKx', '2021-01-11 06:33:59', '2021-06-30 08:13:43', 0),
(7, 'Talha Aziz', 'customer2@demo.com', '+1234325235325', NULL, NULL, '$2y$10$3GhoIShzRdSXevYAh1NF/.67J3OshX9D2.sqY50o8kxh7EXPw7tuC', 'w6QJYqZyllY24AIR3nSsKqgj5eMSZevmgpSywwxJxUS9nwULcuriRLBxEXZC', '', NULL, NULL, NULL, NULL, NULL, 'WxYP9zjTBy9SYF5OWjcFbMt2Ob9r0bahBKzPDOtw9OrAJ89JqaMxkN5aqu8J', '2021-01-17 11:13:24', '2021-06-30 09:19:55', 0),
(8, 'Javeed Ahmad', 'javed@gmail.com', '+12645595482', NULL, NULL, '$2y$10$PV1YZj3MebqpPC43qiUPFefgR1JRRc776LSq5hROzV8Z6lx6IT2DW', 'WivbG2oAEbEGl51EBeBuHaZeCqyfBnCVGo18nSaj2FwwiDjux2ZOAZWUoddK', 'eqUznDybRROqA2CpVd-I80:APA91bESl76Sm0BNzgZjt4CEecexLxMylnq-HnXTX1IT_VdtyoNyEhI3H1bhB84zFytEIdGManDGtbNoYMIV5_yhZMg_YCH_Lbe3qsMxI0tLyQDK_OiUaw2FdHQ0x8phjajaJDRCOqYa', NULL, NULL, NULL, NULL, NULL, 'SdstZCaeYW0pjqZn832HMzBD7WPGJ5m9hwWG28nhbIrzSS0etj33rbTRJ6kD', '2021-02-10 06:31:12', '2021-07-16 13:30:00', 0),
(9, 'owner', 'owner@eaze.com', '+01223423432', NULL, NULL, '$2y$10$tQtK3AjF0LQnZ2DCcUPeyu0w9pV34grmQcqlX3paI49NXd35NO6c.', 'HV7hecflpRgmNRa8deGVHi9A17iTHVXLDtmjQIuztvP7LyXmgKiBTgSyAeKP', NULL, NULL, NULL, NULL, NULL, NULL, 'A1Vk4sZTSSxBHuyCr42h0gzCbbtdl59TghwtabEwSk1OcMU2BebyRvTbIDgK', '2021-05-24 15:22:54', '2021-05-24 15:29:35', 0),
(11, 'kashif', 'muhammadkashif1330@gmail.com', '+923072504541', '2001-01-01 19:02:21', NULL, '$2y$10$NTv4vdBm.L883VlkA3aQiuAOEaakPLoOLAs35/lbp3jKQHSlei7lu', 'psgoT27tCKXEfUo4WvzergOaSzEVneJ7p5jd5CA8UJpRJsAwRbPet2qoTM27', 'fE3srjKoT_CWyA9ycQtxPS:APA91bEbKOYoWMR3b011Nnw5_UAv4D4xBT52QK1EZ-NrfINvnrveQZvIgvySJmqs-uun4Ql2SdQ-mUcBM3RiLqJ3iVYUg1B7D-cksNslW2CAwKZdxHo9MI950Uw5KqB0ZAyjvs1XjzAQ', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-28 14:59:26', '2021-06-28 14:59:26', 0),
(12, 'Khalil', 'khalilnjm@gmail.com', '+123456789012', NULL, NULL, '$2y$10$V68Zktd1xQ75GXJ5PpVFXear6I0z.uYQNKuxg9/k/wRJVwn1ytiZq', '3CDjtKh2MCAxNzGgGcVgdTPU8SFZtiJANzLN2ZcYIAzs8fOwDBNGeseQA24f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-29 14:43:07', '2021-06-30 10:01:18', 0),
(13, 'kashif 130', 'muhammadkashif130@gmail.com', '923238979555', '2006-04-12 08:05:55', NULL, '$2y$10$Xg3L8BVHrkVJVKW0xsH5VebqYQq1sNQhBgkurhE0.C9S8FQw3isMW', '7TOzkAESq0p24nqD9GT0E4w3kPu71Dmg8iPLqSgO1sYdEER2Nic4SaTof4FS', 'fYbjgg96Qby2PmYrd8j0mk:APA91bGdVmExroyXT1ypXsioIAAcziqbNPxToaOvHqQ2CVeTF97KhbsOt54UsXtWoV0nMciCeJIYqi94Sm3b3lURgXVO7RnkbI8TwfpYUwNq-QjnVSKye6_2apP714KWhbdCbWvzT9-H', NULL, NULL, NULL, NULL, NULL, 'fY7ijXxyYXTK1KDuXqeXZJkRP50gC4gijKC2LYMpK1xQEGSAzt8PdUSR0B3W', '2021-06-30 05:41:46', '2021-07-01 06:17:53', 0),
(14, 'a she', 'anas.sh.ali@gmail.com', '+971565028808', '2007-09-02 14:40:08', NULL, '$2y$10$gpTSHShM0RSURkmrhGo1VuXvK6bZOb.vHgQmwuivZ5Inwaqh4XzqW', 'nxh4fZOTMGZvKofP5JwqWGbappcjJzpnTnPf4J2TqclNypGy9IYjruVyl7lf', 'eQsBvZ3ST72n-XEHYCynG5:APA91bFcLGbUnqYYkohq5b5BIIj6jL1fkoPcyqhmF7jgG7TKRsZoIGOJpg-je4qLpyCe1bRjub6YfeSpD3wajBNdQebrUFRtw0yn6V_M3_frC61tev1LTptNOt77-5HWpB8kRA71pjoL', NULL, NULL, NULL, NULL, NULL, 'FKJArmA6LI0mdZ1L4Evne2l9voPQA8ibd5gYjaYKzZrqQv2IIXb5XZvSXDbe', '2021-06-30 13:16:48', '2021-07-28 10:38:37', 0),
(15, 'kashif', 'kashifhafeez030@gmail.com', '+923238979555', '2006-04-12 08:05:55', NULL, '$2y$10$aJOvr6/Cs3a9086pLcpSwudSZV6BKxqQSFLwWR5J4RfhD8OBYAPNS', 'LdnSP3qU91uwAZBb0K7JEcktivflqQq8wST1qxtp1WDAkKf8sNKOpWOVETKe', 'eTY_J23QRgWWzAHvjVpbPD:APA91bFWcdrHcXR6vCvn6jf3I00GkEXlKGq2GTL9jU8trWZgCgOuZxfiraFF-N9srqwl7NsZaGaEUKgxlmW9s-kGxAP_Hgm7hHargFizmAUFOSgoHkC4LP9Ar5SRcZAe9YsO33ceh8jW', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01 05:12:57', '2021-07-01 05:12:57', 0),
(16, 'taib', 'tayyib@gmail.com', '+9231245', '1970-04-17 20:14:05', NULL, '$2y$10$.xkFxtvVNHbbSvFy7fUQJOOBpF0Kj5Lm2hBwyZpy9PLUsmyarfH2C', 'uJ7msdm2SilLdM374GKXob8UAWWI8WXwbP4M4xMgTrbFj3oKGnayhn3RluJe', 'e75fDt6YQ6uJ1AY1hX2spa:APA91bGNrpOX9IPkmvWbCS0OaWGsxla_wwDr7y6I2lm6Y6ZCUzCvHU4SVOVttnQeDJq2ZS8sUABpU3fFeEeC_k-HKIsKBvp646X516RrfCYxoyeOgmWaMcj96-k0bkCTGIU3t0kCvPNm', NULL, NULL, NULL, NULL, NULL, 'zJYEKqdxgNrAImM3mAaqPvPVyfENx5Xbd50Bib3NKaFHZ2xuhRJFKuIt9cJS', '2021-07-03 11:50:19', '2021-07-03 11:50:19', 0),
(20, 'provider', 'faran4500485@hotmail.com', '+923454500485', '2003-02-08 19:01:25', NULL, '$2y$10$kldNKlZgDvjgdBzUzm0dwu5ElCUUUk4Lkh/W46NKHip8se49hya76', 'pIGW5BStf0125ECsRkzcL2D2d2EH7RxTJE15dJdCR7tXZWScdo2dA9A7uCEW', 'ftQsfwe1SFi7PF0vpzXHP0:APA91bGDx_rGibMD5dT12YApeIRrFo6UygdXfYDQxXryPQq43OoXwiFcQJiZeGSELttnsHwsnM3PEdhW-ltq7hCiHXVI6u3gVgdF-BznSGcv6q13jroOJ6JTkTUiaazZXa1DgdmQI0il', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-06 10:31:15', '2021-07-06 10:31:15', 0),
(42, 'CEO', 'khaleel.anjum@gmail.com', NULL, NULL, NULL, '$2y$10$bYsutBzaEjA2RnmpZBwVNuODpdoD.xtua/6rAKDWdlZQwxdehsAGy', '4guHjSOlx75WMl0XzSl1m0UboV932dqWuU8MsiIlKHdgQO0hUbt7tGchs8Bo', 'eNNVakqHHYXpBckODziIdB:APA91bGQnLpIAUDU6XtB5g-ElEZiDULtpM9hiMBd6VplxgrxJhj-ITw-NxN0zVJlw2bsB2-Qif65-STEW6YST9ymriK2iXhHtC7ITW--W3rqHXB0VHeM2BIhmqxXW040LdQi0276sRlb', NULL, NULL, NULL, NULL, NULL, 'Opd6tKtFGUwZuHCqMxg3PXA9OVDbewrBpKcTyPvaZQWeS8nKYva4Il1rMyAx', '2021-07-14 04:47:45', '2021-09-20 05:52:40', 0),
(66, 'Linda Valtchanovson', 'iclncdsrhd_1617774757@tfbnw.net', NULL, NULL, NULL, '$2y$10$aZ5g6dDMfVPwtYyhrnqbX.DhaRrR70P8YAes1CIuD6.cwmRlaz/QW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eozcVYjRFiiz3VTIp49Mni6l1TZ70TynVNpoBUYF2WSQCHTdwFyMcBCcaB41', '2021-07-24 06:25:16', '2021-07-24 06:25:16', 0),
(67, 'Zarish Madden', 'geogatedproject382@gmail.com', NULL, NULL, NULL, '$2y$10$DLqWiW4ofPBUTK6nEaI8y.6rQ2r.vI/O9vxmqZQFXZaAo4.xWfv7q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-25 02:24:50', '2021-07-25 02:24:50', 0),
(68, 'Jebediah Sidhustein', 'geogatedproject329@gmail.com', NULL, NULL, NULL, '$2y$10$0/JvNpgTy/VQwu.kzSmpe.EIF700Q69lDEztdRG6/HRk/MmoRrjGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KzKKQUAGEioy710PVhzmECsd24IMydKpExPNHAx7OPHkPNcbca6Ow1bTKkjg', '2021-07-25 02:46:17', '2021-07-25 02:46:17', 0),
(162, 'Eaze Nicolette', 'eazeofficework@gmail.com', '123213', NULL, NULL, '$2y$10$ipybWpAckqCehMPLc7vW0e7zU8WdfzFwqShG6kTPVHO1MyUk.Hi8O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zB4RarRPX9jcK7dqHguGJ6EoscytFXOAvqyqcehtSqIpvu7UlhYgYGo5fLUO', '2021-08-10 12:32:42', '2021-08-10 12:33:16', 0),
(175, 'mii fresh', 'miifreshofficework@gmail.com', '+923042207456', '2021-09-07 16:47:56', NULL, '$2y$10$mj3KrLdzUWhjtHSBM.HIsO9unVz0V7smAjgPv5BJIuqPCiCRg8gHW', 'SPm48aeFBpX5rQAK2BSHMqa7LoDSqiG1wmIzlbzdv23RbnpNCxKTvSIzD1eN', 'fGdAX2jFQi2QYalYYZpyeH:APA91bFyrsB4KwTVAiDEQr53URo8Btq2CJaJTXUnDeO4hOWNOWtH_7iLFYPGuyWk2MLrIFXFdv1Mg1C0HMX5hfoXXgL7Vx2tY8BTr57Tlp-kXy9cVEJ2zSS3O_5rvoethIwqOHVlPoE8', NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-07 11:47:58', '2021-09-07 11:47:58', 1),
(176, 'jhon', 'jhon@eaze.com', '122334', NULL, NULL, '$2y$10$YWfDdFYLh1qM8wBhsktNzOc0LXfJal9CZx6i0fKusevZHwrbaJB/C', 'J4wtRcx7j8FvyKNUiM53pGQDugHXA1dkhJ2j0btQrL0JAPR67m228t81PKqv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-09 05:33:31', '2021-09-09 05:34:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` double(16,2) NOT NULL DEFAULT 0.00,
  `currency` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `name`, `balance`, `currency`, `user_id`, `enabled`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 'My USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 1, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 'Home USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 2, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 'Work USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 3, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 'Dummy USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 4, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 'Old USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 5, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 'New USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 6, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 'USD Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 7, 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 'Dollar Wallet', 200.00, '{\"id\":1,\"name\":\"US Dollar\",\"symbol\":\"$\",\"code\":\"USD\",\"decimal_digits\":2,\"rounding\":0}', 8, 1, '2021-01-07 13:17:34', '2021-01-07 13:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` enum('credit','debit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `amount`, `description`, `action`, `wallet_id`, `user_id`, `created_at`, `updated_at`) VALUES
('01194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '01194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('02194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '02194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('03194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '03194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('04194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '04194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('05194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '05194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('06194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '06194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('07194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '07194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34'),
('8d194a4f-f302-47af-80b2-ceb2075d36dc', 200.00, 'First Transaction', 'credit', '8d194a4f-f302-47af-80b2-ceb2075d36dc', 1, '2021-08-07 13:17:34', '2021-08-07 13:17:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `availability_hours_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_booking_status_id_foreign` (`booking_status_id`),
  ADD KEY `bookings_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_values_custom_field_id_foreign` (`custom_field_id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discountables_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earnings_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_providers_e_provider_type_id_foreign` (`e_provider_type_id`);

--
-- Indexes for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD PRIMARY KEY (`e_provider_id`,`address_id`),
  ADD KEY `e_provider_addresses_address_id_foreign` (`address_id`);

--
-- Indexes for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_provider_payouts_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD PRIMARY KEY (`e_provider_id`,`tax_id`),
  ADD KEY `e_provider_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD PRIMARY KEY (`user_id`,`e_provider_id`),
  ADD KEY `e_provider_users_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_services`
--
ALTER TABLE `e_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_services_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD PRIMARY KEY (`e_service_id`,`category_id`),
  ADD KEY `e_service_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e_service_reviews_user_id_foreign` (`user_id`),
  ADD KEY `e_service_reviews_e_service_id_foreign` (`e_service_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_faq_category_id_foreign` (`faq_category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_e_service_id_foreign` (`e_service_id`),
  ADD KEY `favorites_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`),
  ADD KEY `favorite_options_favorite_id_foreign` (`favorite_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

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
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_e_service_id_foreign` (`e_service_id`),
  ADD KEY `options_option_group_id_foreign` (`option_group_id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payments_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_e_service_id_foreign` (`e_service_id`),
  ADD KEY `slides_e_provider_id_foreign` (`e_provider_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_wallet_id_foreign` (`wallet_id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `availability_hours`
--
ALTER TABLE `availability_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking_statuses`
--
ALTER TABLE `booking_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `e_providers`
--
ALTER TABLE `e_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e_provider_types`
--
ALTER TABLE `e_provider_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `e_services`
--
ALTER TABLE `e_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_statuses`
--
ALTER TABLE `payment_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `availability_hours`
--
ALTER TABLE `availability_hours`
  ADD CONSTRAINT `availability_hours_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_booking_status_id_foreign` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_statuses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_custom_field_id_foreign` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `discountables`
--
ALTER TABLE `discountables`
  ADD CONSTRAINT `discountables_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `earnings`
--
ALTER TABLE `earnings`
  ADD CONSTRAINT `earnings_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_providers`
--
ALTER TABLE `e_providers`
  ADD CONSTRAINT `e_providers_e_provider_type_id_foreign` FOREIGN KEY (`e_provider_type_id`) REFERENCES `e_provider_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_addresses`
--
ALTER TABLE `e_provider_addresses`
  ADD CONSTRAINT `e_provider_addresses_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_addresses_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_payouts`
--
ALTER TABLE `e_provider_payouts`
  ADD CONSTRAINT `e_provider_payouts_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_taxes`
--
ALTER TABLE `e_provider_taxes`
  ADD CONSTRAINT `e_provider_taxes_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_provider_users`
--
ALTER TABLE `e_provider_users`
  ADD CONSTRAINT `e_provider_users_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_provider_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_services`
--
ALTER TABLE `e_services`
  ADD CONSTRAINT `e_services_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_service_categories`
--
ALTER TABLE `e_service_categories`
  ADD CONSTRAINT `e_service_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_service_categories_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `e_service_reviews`
--
ALTER TABLE `e_service_reviews`
  ADD CONSTRAINT `e_service_reviews_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `e_service_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_faq_category_id_foreign` FOREIGN KEY (`faq_category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD CONSTRAINT `favorite_options_favorite_id_foreign` FOREIGN KEY (`favorite_id`) REFERENCES `favorites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_options_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `options_option_group_id_foreign` FOREIGN KEY (`option_group_id`) REFERENCES `option_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_e_provider_id_foreign` FOREIGN KEY (`e_provider_id`) REFERENCES `e_providers` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `slides_e_service_id_foreign` FOREIGN KEY (`e_service_id`) REFERENCES `e_services` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD CONSTRAINT `wallet_transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wallet_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
