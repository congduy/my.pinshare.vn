-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 26, 2020 at 10:17 AM
-- Server version: 5.7.31-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankshareweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_receipts`
--

CREATE TABLE `bank_receipts` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `fund_id` int(11) NOT NULL DEFAULT '0',
  `description` tinytext NOT NULL,
  `price` varchar(50) NOT NULL DEFAULT '0',
  `mode` varchar(50) NOT NULL DEFAULT '',
  `approved` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `receipt_file` varchar(250) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approved_at` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Activities`
--

CREATE TABLE `Wo_Activities` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL DEFAULT '0',
  `post_id` int(255) NOT NULL DEFAULT '0',
  `reply_id` int(11) UNSIGNED DEFAULT '0',
  `comment_id` int(11) UNSIGNED DEFAULT '0',
  `follow_id` int(11) NOT NULL DEFAULT '0',
  `activity_type` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_AdminInvitations`
--

CREATE TABLE `Wo_AdminInvitations` (
  `id` int(11) NOT NULL,
  `code` varchar(300) NOT NULL DEFAULT '0',
  `posted` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_AdminInvitations`
--

INSERT INTO `Wo_AdminInvitations` (`id`, `code`, `posted`) VALUES
(1, '17898885155efac8db742cd9.35640840', '1593493723');

-- --------------------------------------------------------

--
-- Table structure for table `wo_administratives`
--

CREATE TABLE `wo_administratives` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `is_visible` int(11) DEFAULT NULL,
  `is_state` tinyint(1) DEFAULT NULL,
  `code` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(8,2) NOT NULL,
  `lng` decimal(8,2) NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Ads`
--

CREATE TABLE `Wo_Ads` (
  `id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `code` text,
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Ads`
--

INSERT INTO `Wo_Ads` (`id`, `type`, `code`, `active`) VALUES
(1, 'header', '', '0'),
(2, 'sidebar', '', '0'),
(4, 'footer', '', '0'),
(5, 'post_first', '', '0'),
(6, 'post_second', '', '0'),
(7, 'post_third', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Affiliates_Requests`
--

CREATE TABLE `Wo_Affiliates_Requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `full_amount` varchar(100) NOT NULL DEFAULT '',
  `iban` varchar(250) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `country` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `full_name` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `swift_code` varchar(300) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `address` varchar(600) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_AgoraVideoCall`
--

CREATE TABLE `Wo_AgoraVideoCall` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'video',
  `room_name` varchar(50) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Albums_Media`
--

CREATE TABLE `Wo_Albums_Media` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Announcement`
--

CREATE TABLE `Wo_Announcement` (
  `id` int(11) NOT NULL,
  `text` text,
  `time` int(32) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Announcement_Views`
--

CREATE TABLE `Wo_Announcement_Views` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `announcement_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Apps`
--

CREATE TABLE `Wo_Apps` (
  `id` int(11) NOT NULL,
  `app_user_id` int(11) NOT NULL DEFAULT '0',
  `app_name` varchar(32) NOT NULL,
  `app_website_url` varchar(55) NOT NULL,
  `app_description` text NOT NULL,
  `app_avatar` varchar(100) NOT NULL DEFAULT 'upload/photos/app-default-icon.png',
  `app_callback_url` varchar(255) NOT NULL,
  `app_id` varchar(32) NOT NULL,
  `app_secret` varchar(55) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wo_Apps`
--

INSERT INTO `Wo_Apps` (`id`, `app_user_id`, `app_name`, `app_website_url`, `app_description`, `app_avatar`, `app_callback_url`, `app_id`, `app_secret`, `active`) VALUES
(1, 1, 'vrFairs', 'http://vrfairs.vn', 'http://vrfairs.vn', 'upload/photos/2020/09/ftWeYQ9TNBNCYTAhIWyi_12_04ff7ec4a024132ff1e11ad7f40bafa6_avatar.png', 'http://vrfairs.vn', '42c5238e3438b5e733e4', 'fb4b7ec9685268b6c1bf50f5b04b6ad69215c3c', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_AppsSessions`
--

CREATE TABLE `Wo_AppsSessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `session_id` varchar(120) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `platform_details` text,
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wo_AppsSessions`
--

INSERT INTO `Wo_AppsSessions` (`id`, `user_id`, `session_id`, `platform`, `platform_details`, `time`) VALUES
(1, 1, '6f5bbcbdf8037947adac4b435a80d2914f4e1577adb80847fbb3cc29b8d070b5cff553136031758071d2d6ccac82f8a334937ff0fcdc0d8a', 'web', '{\"userAgent\":\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0\",\"name\":\"Mozilla Firefox\",\"version\":\"77.0\",\"platform\":\"linux\",\"pattern\":\"#(?<browser>Version|Firefox|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"192.168.4.20\"}', 1593484985),
(2, 1, 'a5b60a8d6409a5c6a63358753d5083d6c9ed5b7c55c8b9c2ee1559681053e6d77d45249147250684420824960f755f8721c47b6027ead6ab', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"83.0.4103.106\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.244.218.129\"}', 1595824917),
(3, 1, '7ea2d981ced46f5cad7441273c4300c947788b252a023e52e85f6a8967f34e7db7a1ae99422480469cafd121ba982e6de30ffdf5ada9ce2e', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"83.0.4103.116\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"113.176.195.71\"}', 1593489131),
(12, 1, '9f5a0d9713e44c0f5a8d9f602431aa70c6be056d7f232b641570214eeb9a3f82873287ae435281688c97dbeee3b0d40ced7f514b99a93d93', 'phone', NULL, 1593540544),
(13, 1, 'ec2c69df8d4ae784e2e1a14fc14e26e0b2f58b74af1da02b3da29e96cd37f37b697ca6045136472468881d2246abebc3aa474b51ecd7773e', 'web', '{\"userAgent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"75.0.3770.142\",\"platform\":\"linux\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.251.23.227\"}', 1593560416),
(15, 2, '18ac04b56de33c3e3b95005847b93896dffedcf3623c2b0ce7e029e1779dc58e8a8ab6994115994959587bffec1c7846f3e34230141556ae', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"83.0.4103.116\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.251.23.227\"}', 1593585645),
(16, 2, '0635aa78a54e4b5923e74e662bbe301cb33c6ed31907ca690d8da517b4001a4bf31b8c38377499337c9966afcc510cf5a40621d1d92bdaf1', 'phone', NULL, 1593583562),
(17, 1, '2601368bb89121bf9c92c814737717e91f81821f31507548ba0587be21329d0aaf148fd658567718aad5adc307c4dd7e457509423a7f3734', 'phone', NULL, 1593612201),
(18, 1, '15713a33f92478aa3a671ecbf9c1c8e70fb7e4adca12bd7469838d184a95e95059faf62430414339fa385fb5a8e79b41a0d37b12c9f95996', 'phone', NULL, 1593613363),
(19, 2, '47451565bd6178dc7ee203407eb512bdad97b06b57314ee91ca7a6f5310cbd8efe1315e11993125008fb104b0f2f838f3ce2d2b3741a12c2', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"83.0.4103.116\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.251.23.227\"}', 1593613950),
(20, 3, 'df78dd293cdf79b96c9f093688051d06d6db73e0596d3bb0d6d926e5b1d47000cfab007e81953852d04cb95ba2bea9fd2f0daa8945d70f11', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.89 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"84.0.4147.89\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"14.241.239.112\"}', 1596094765),
(21, 1, '8e200f3fb4f9441ba010c473313b5fa759d7d8ed71322459c12c254a427c49d4e13f98e37736552933235e3d066bad95b6eea457826f7507', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.105.215.161\"}', 1599747731),
(23, 1, '89a3a92ff5d6837628b2787a301a35cc3137a08c84f56f3173e42df34dd3014422921aa64978264505a624166c8eb8273b8464e8d9cb5bd9', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.105.215.161\"}', 1600501880),
(24, 4, '49621020a0e3802d896c42ff86451d2bad42e63d083bce1ad3b0a362b0f5b1cc70f46d2c1208544164314c17210c549a854f1f1c7adce8b6', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.83\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.105.215.161\"}', 1599747936),
(25, 4, '21e235c2e5daebeeafb30b2343e1d310e0610dd1eb53b2c0499b098179ea94f2240cf7a41573706052569c045dc348f12dfc4c85000ad832', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.83\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.105.215.161\"}', 1599758800),
(26, 5, '08cd2d5c74f5aa57a17d8e9ba594cb0248a82e5cc326e0fa6336e02be5d24bd396295a6935252127c3cbd51329ff1a0169174e9a78126ee1', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.83\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"1.52.169.134\"}', 1599754445),
(27, 1, 'cafef4ffdd641f15c5ac12eb70f05d5595c3fe3ab3283cc787176726cf8319ee1a9ca144793715355f8e2fa1718d1bbcadf1cd9c7a54fb8c', 'phone', NULL, 1599754759),
(28, 1, '2ff0b3c0b69bec437f72663e7eebe38f8b64c55d293840f317f36dc235a726c449bd562c66179293a4d5fad84ee90c1308cc37b52135d5db', 'phone', NULL, 1599754996),
(29, 6, '2b3a6a3dadda8db39e9567bb74af94b51bcccef83a64d1444281639700a3ddde7d29ef1b28473997708be71b9ab6e0a84252760579ade9f1', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.81 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.81\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.254.132.242\"}', 1599759596),
(30, 1, '3a1cb6c1f1660bf2330f9b0dd94ff2164ddf07c87935fb90d81f6d3c87f36b26f276cc5d546637003817157c9127b4cdb7a8d690ee72d874', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.81 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.81\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.254.132.242\"}', 1599759724),
(31, 1, '9a368d7f2e9096603f137ad2dbc7e293a0791be87cafa7473f36f5b464b42314d2bdc56650532161f00e1df0c9e961695bd1c1d9816d0c04', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.83\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1599802786),
(32, 1, '23c3a5d207c93bd6e72305c92473eea75e7d937a8e62559d65b594e90c8912fc0da8f8f7377658462cfa47a65809ea0496bbf9aa363dc5da', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.17\"}', 1599815988),
(33, 1, 'a13c2207048f61cc7050f452b9fccb42b66703f81937a2ce745d44ce0e56b2947506065e74573028a6292668b36ef412fa3c4102d1311a62', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.17\"}', 1599820052),
(34, 2, 'baf22f8b01b7d93da598985b0c48f92847db7e3bb7ee0ddaa5260f8bf054f3896691a89b46865329f00e1df0c9e961695bd1c1d9816d0c04', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.17\"}', 1599820677),
(35, 1, '97086bc7bf9a16aff40eec19a9bf791ba75c609708056949230183ad7ac8c673459c853f119896173d387d2612f9027154ed3b99a7427da1', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.17\"}', 1599824519),
(36, 4, 'a34201467c3506d633935fc8948b2f7f8fed54537da2fcf64694538f0255b825d946de5e2688449136f4d832825380f102846560a5104c90', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.17\"}', 1599825621),
(37, 2, '8ba8a6a121e762e0de6be06e9ad31526dedd83d0298f7915d7a88bea7e6d5545d7ff804a238511045e7d00134ba3a8b3e37edf5038bc51fc', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.17\"}', 1599826077),
(38, 1, '0bdb1fcdbe62865a3da35fd48a53877a400b79920b2a984bfa294a49f4b8020e51ea9ffc861312926b54185ccddbef6cc10b6586179db501', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.81 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.81\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1599829449),
(39, 5, 'f34e307586f950db4ef3943e9aa207b0bd97a24b080aa8ada89f74441b3f5e13e623c71817740917a399f7f1554f59cecb453623c1c2a196', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"1.52.169.134\"}', 1599837936),
(40, 1, '1a674eac2d42d6b2ba38a7f0309ed5b1fd39a7071cf889f82d5bda4a2fbe9ec1a7c315819660796325b07af81d8c74341f00dc139652fdb0', 'phone', NULL, 1599841496),
(41, 1, '5d463dd1be9d575537088f172f5340db289d4dc19a2be960919e4a38eecc36efe36c7d38232271877cdace91c487558e27ce54df7cdb299c', 'phone', NULL, 1599841525),
(42, 5, '9b144023ef637be944d0cb86c610a0aa7c1829290c82d172dee9796d0157af62191251ee9431718635d8f387d4934b6ee53ce5c9a1d8c1d7', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"1.52.169.134\"}', 1599881478),
(43, 7, '5789cd957581b0abe0bc14c3c508f02a2dece033eef6f701d84f148a19a989138be83381698447883eb65004054f5d21fca4087f5658c727', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.255.161.60\"}', 1599881565),
(44, 7, '8e8e9b52ffabffc0e4533e047c228f105f933da423f4a784017bda57b051b0d356cbb1d7748414666aaba9a124857622930ca4e50f5afed2', 'phone', NULL, 1599881000),
(46, 1, '9fb3c3cde2b84078ed865a870560b4347457ab35b26932924a5c8ccdc89a3331aff9d3e6828666647a06ad497a8fb70ea0a3cf08543fb1e4', 'phone', NULL, 1599881996),
(47, 5, 'b231c19fba4f04accdf6cfdbf6c2eee48abad870b856068480b9beb00c5df7143d29b0c4873701901e4268fd66e5999df71142c71a4e212f', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"1.52.169.134\"}', 1599883658),
(48, 1, '0085e4b827720218a343f27fadf75f69835ab5969a50e920893c8c92be0dd4f15a06d51d195620628a47481ae534860850adf59f145e6b40', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"1.52.169.134\"}', 1600411784),
(49, 1, '0d1164b73cd00ac89c99f89167f8e2af5c1eaf150b36ecd217f7b8d7fe2283e65265d2f2933163958af141d3c5a5146a3eac9d166ab4c458', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.81 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.81\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.254.157.89\"}', 1599887391),
(50, 1, 'd3294a7b99a3d18b0cb97f9ed277646208206353f85a9a8cfc56eea13dc31da27e79686112240352d76d8deea9c19cc9aaf2237d2bf2f785', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1599909182),
(51, 1, 'cb0ba674589a98e9a8a7b3b866505168327cc2f6b235d93af56ec96c615b839d84bfdd4b547907672ea6241cf767c279cf1e80a790df1885', 'phone', NULL, 1599898430),
(52, 1, 'af1f0e7f82c23782d4e62c70705cc1fa44bf773e8cdd0f823b266be779dd8f138be68fce49253515894a200a66c2b57205af564d6883882a', 'phone', NULL, 1599902045),
(53, 1, 'e50c8b97888ff971c892095ff0d0440a663664ad65b336f6a63a3b5fcfd3c6598c1ade0d5574756556f0b515214a7ec9f08a4bbf9a56f7ba', 'phone', NULL, 1599902327),
(54, 1, '9f5ca76f8a0ede7bd5f4863e358ebeb1b08673bcb74a6455d575bb8a7638afe32889107f2255597583decbc20d665926df9335a0a3be7e3b', 'phone', NULL, 1599902414),
(55, 1, '94431bd83f21a8ec781d0ddf86256f3ce2c2058b6c210d33cb97d9bd7797c4c2cc345c1879848725580760fb5def6e2ca8eaf601236d5b08', 'phone', NULL, 1599902578),
(56, 1, 'cbe71f0f39089b313fb765599d4c5ef283481c85cd433a81da68a9f6649f4b3a3171b96d7790380864f173a41d2ffa62f98c0cfec53b43c5', 'phone', NULL, 1599902700),
(57, 1, 'ee4e175526613faca7b775c9b19001ef1fc384fc29ddd0f09598888bffe35fdc5d7fe86764612059471684d6c43cfc529b30d600113dae63', 'phone', NULL, 1599903238),
(58, 1, '406d087bbc678190b6c693679b1bb6021fda67356fbae3dcd77ce4b6712d2a4756f12603293765735cfe9b8fb129f0fe3ffc7b209ac471ed', 'phone', NULL, 1599903243),
(59, 1, '5e2b8da6f760a73524cd5b7f381ad7458fe2f1e3d04cf342ec4c99d36dc1d9f49eaaab5139015118c5a3c867a3dfb776552dcfc804d4937e', 'phone', NULL, 1599903764),
(60, 1, '7f8ec637f766b8fa3884bf48dea67c3233b0f6bd1b399d77dab16bbdd84b96c26404b4df30880799c10f48884c9c7fdbd9a7959c59eebea8', 'phone', NULL, 1599903768),
(61, 1, '221c743d718fee9d60fde561ad9481598f541276886bc12a475e45bd12d9af1b532437f5641044595a44a53b7d26bb1e54c05222f186dcfb', 'phone', NULL, 1599903791),
(62, 1, 'fc00cdaa5bd223e737206c1f40ae956e64384047c12bb690dff954d7fac664e77d233b318736013307dd4d5a72f5740ef0f035f201951476', 'phone', NULL, 1599903863),
(63, 1, 'c7ac9383dfb9d0ee2de3211352f472820f871e9610fb53babf25e0459a5ff8104ac5a1fa73811518f02a8fde79ddf5b978cd9ae9d408b7c1', 'phone', NULL, 1599903882),
(64, 1, '2a3de1ca921fd0805ce847b839ffcb624fdafb4eb8f8265205aaf4f88589222bca85284784876582495360cbf18a7d5004ff72f49254e069', 'phone', NULL, 1599910060),
(65, 1, '0fd2064f300bff9e65bf6c53bb2579d66d2aae851756153810a1b518420bf1671b10044a1133528445624a44b89793087e9ef4d076018adb', 'phone', NULL, 1599910146),
(66, 1, 'f71f1369e5903c52052588255b232189da4bd548592236fd0241dd902767c36f32d31a22396014989aa70957fde5ac24d3f5c61776a06053', 'phone', NULL, 1599910172),
(67, 1, 'a3e5062e20eb696504cd3228f16973d29e3855683edb0300ebdc4f579395f78b368551fb12381121567b8f5f423af15818a068235807edc0', 'phone', NULL, 1599962261),
(68, 1, '8f016fd0056ff005895b5b43b7cee88ae642b3e69417d95f94977bdf2d4495b9a413a9c78087833118de4beb01f6a17b6e1dfb9813ba6045', 'phone', NULL, 1599962337),
(69, 1, 'd29687d8b104dd3b60ecece23658ba6ecb835c46e5c0bada8b7c120b85680d1785e455a276207355fcdf698a5d673435e0a5a6f9ffea05ca', 'phone', NULL, 1599967513),
(70, 1, 'd5bcd65f3e44a3bcacd40bca92c07cc8a17fcbe768a4cb96955d33cc2d9d5653f518d42d63267966228669109aa3ab1b4ec06b7722efb105', 'phone', NULL, 1599967786),
(71, 1, '3ac301a83ea9d778dcf591841855118e8679d66fc7a726c64c67fe29871cb033200741157363371741da609c519d77b29be442f8c1105647', 'phone', NULL, 1599967890),
(72, 4, '41ceb2643bd6b9f1e85f7851ab981481db2abf8a9f1ba34bfe6b5c42e0f2477faf1a80d15301196991394d0fbf2b331b4859ae219f2d6ea6', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1599998701),
(73, 1, 'd5de9b9a0af93eb02e79a569d349225e8650f2fa04e3210587c7997141ae13aab3c0104d99572584373cb8cd58cad5f1309b31c56e2d5a83', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1599987673),
(74, 7, '8109e87e78fc23409dbd8eaa85a13c0f58c99f7fb26d242468fa45f625801ff596e38e7163273225958c530554f78bcd8e97125b70e6973d', 'web', '{\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"windows\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"171.255.28.84\"}', 1599988006),
(75, 7, '169a910a59798c4438bb255417c85095562655d53d1da5c1ed14bf9f134f4bab560cea7c92382545d550216af6333c3ef7ccded988557b49', 'phone', NULL, 1599983726),
(76, 1, '9d13f102165ce1afe8f2b2c3aa685cc57e013c71520b2b286090132846b4eb23093ae03c422326652f014b914ea5e7c04fc6cbde68d02141', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1599989399),
(77, 1, 'd8ed30dbdc4e137381ff5223aefee07d49221db4c9341ad999aa007caa8a5fe75da1ba109225898128891cb4ab421830acc36b1f5fd6c91e', 'phone', NULL, 1599998133),
(78, 1, 'eadf8398a6d308df2f0f0fe6004d8c9fc2b227f3b74219d3a8ff5da0ba6c2873ca9fc93c12637046967c2ae04b169f07e7fa8fdfd110551e', 'phone', NULL, 1599998253),
(79, 1, '5abcfd52dfdaf45555060f537e9451d1a0fe40bd7ae8dbb435f336fce4f9a905078a28f7694711240a118184382a407bba7aef472932273e', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.87.160\"}', 1600016629),
(80, 1, 'e303614d37ebc41e470c16c67b14f239a4a2d454a47b897a7cdfbd7f159db8645ec4d79a9800204949562478de4c54fafd4ec46fdb297de5', 'phone', NULL, 1600012013),
(81, 1, 'fc027bf9523211b1529393988465533c8aa60826e2ea4915ded7edfb11147d4bb6aa5a8542207271c74214a3877c4d8297ac96217d5189b7', 'phone', NULL, 1600012018),
(82, 1, '9f46279043f7c9ebd8ee9e7420ec38277a0289d36266134b675c9faa411fb297afe13ebe403011150e274e1d1a8948f16f0227e4ec1965a8', 'phone', NULL, 1600012143),
(83, 1, 'ebdab311d1e6ca2aacda4cb592a472a65f9a81ca6b8ece8bd4e78667b9af45e7a1f1b5e02226956942e9fb755426f19231217afb43e1aec1', 'phone', NULL, 1600015288),
(84, 1, '8718a5248393df05406c283644a2ae3e06b3d838685023275876d0f24ecfe14f0bbd1d7f25497248d9d3837ee7981e8c064774da6cdd98bf', 'phone', NULL, 1600019659),
(85, 1, '276c9f35fa9ff83f53ec5d1a4fcdb1551d89c40f688eff0045fe3346026494b7681f7ab02563290338faae069a1371784081ea9ad9b279d0', 'phone', NULL, 1600019715),
(86, 1, '8ebba4670cd05a7b08d14b9d4921ce589dab3dafa78666e1417e2139d8b0c682fc8bfb1673277272c879ec4dfeaa4d0f14f8f395a09941c2', 'phone', NULL, 1600019823),
(87, 1, '8732227bc903449f2a6d0db473f52a3f098b52236cc780e66b5573ef338585e5901f33f353277776f73a9f957962cd73fce51078b5b9614f', 'phone', NULL, 1600019824),
(88, 1, '8f2d26da66f953eff7be676596c22153faa19172dea99438705450aec0cdf164fe8fc9a84561573239016cfe079db1bfb359ca72fcba3fd8', 'phone', NULL, 1600019893),
(89, 1, '86b01abe62b03e557b7f595ad33445ace15a77e9674e95c4fece8bb7524dae5d27d1f09a4560747674a9d40b0df3a01eda99c4463b607dd1', 'phone', NULL, 1600020507),
(90, 1, 'df5c1fabb1fbd82d0217e3522d6d280ddcb520af1ec00cd8e4f15fd6acb181a880ae0a05800810380a2298a72858d90d5c4b4fee954b6896', 'phone', NULL, 1600020748),
(91, 1, '4be79e5948eaa5d6591d44f3e74d84dc64765788f6b23eccef9cfe0b608598a961f67a8177577301f0b76267fbe12b936bd65e203dc675c1', 'phone', NULL, 1600020776),
(92, 1, '3de0306c7e972fc9f923ab36c99aa709cbe78fc9bbdfb6af7d27c7b229b09fcb093539a114843067cf9a063bb9be814a77a491171cca236d', 'phone', NULL, 1600053290),
(93, 1, '45a0b25a98dc39625cafe9566492d7604ea1f03ef0e9dc1e9cd91983fe2f21c67fe4fe3430224174bb921944c8c4531826da3fa99b494c1a', 'phone', NULL, 1600053892),
(94, 1, 'd26cacc664f35f8415b7170663ed6c0f6fd4883b2468498d9f7e717f45288a9a0366b8653441077657db7d68d5335b52d5153a4e01adaa6b', 'phone', NULL, 1600054006),
(95, 1, '5813f5d0f030ef2c0939187b9a4374298c6c6f5c8fcf9d405d7624e725df63f33b4e3246717174658e50baf642bd6685e593bf238aa27051', 'phone', NULL, 1600054130),
(96, 1, '94d58abe7c2c9f02801e6b4080fad722e959e56bfc62d6623c1cf3ed8e537799633199e38405886202709600f60cc5f733fd879be89f4b3b', 'phone', NULL, 1600069360),
(97, 1, '2b1a7559307aa0879b2994dab60564dc194012ebfc2cd4430fe806ab53b1c753821b6832465670916754828e66a922ed1b376ef3f43b625e', 'phone', NULL, 1600069479),
(98, 1, '042f92d619dd85cb3da85d00159d8653c78d0d870d5868e842dfb718686a4223ede16b7c99665978349f8e8088df63050757dd8be4356216', 'phone', NULL, 1600069641),
(99, 1, '7ed02b849c9e3c25133268385a25d43dad84c7d7c2c573e6546e88c9a2b12ada69b71399694428102835acf1b5aaa6ade0d10b4c977e912a', 'phone', NULL, 1600071283),
(100, 1, '0f0568b8c311210ece7cc61999440727cc7a1502832c807cab28b4ab2ac8bd0a3a5044e026478686b47767f992ce8624345aca182b76b202', 'phone', NULL, 1600071324),
(101, 1, 'a7ce49ee08ee86645f49c3fbf14eb6a729f913428499b955c532e8dfd5f9e0ed2538f5fd14121684fc1c379653b4feca4252b4d078352c4d', 'phone', NULL, 1600071408),
(102, 1, '9b09509150e14d1adcc715a65fbc940065b9bce42560ea3edd6bf24f21ac996a743f269c30672778c6102b3727b2a7d8b1bb6981147081ef', 'phone', NULL, 1600073021),
(103, 1, 'b8003b59abf127507363ab4cc865da97fc677b6dbba7685db4122aa5abbe72155117370b632814388ccf1fb8b09a8212bafea305cf5d5e9f', 'phone', NULL, 1600073070),
(104, 1, '693d4a9b84fa5a87023cf95b5c1a82b622f4db58953be72edc90bc19c344603f17cd3efe51694723c2ae5cb2426d96ed19a50b0b7d7c8e11', 'phone', NULL, 1600073267),
(105, 1, '8305846808c9406a801f8ca5ca119cb2d2bfb7fc77057b64bcf14c5fa382abcb0bc159bd11274448416ebee8db53bd692a556c8b4c307bcc', 'phone', NULL, 1600073385),
(106, 1, '12d871095b65e7b4696c749a1305a41da1490225ffad0f9c42e732480c78cae13b8de71f794270104ef2f8259495563cb3a8ea4449ec4f9f', 'phone', NULL, 1600073478),
(107, 1, 'cfbcd7d092cd6d030421a4e6146c6ff35384e2ce329270271234b8d214f6996600c9b1ad87636915a67c8c9a961b4182688768dd9ba015fe', 'phone', NULL, 1600073589),
(108, 1, 'f2bc1e6dc8c608ac246345407872275acc2676e8e0f824dfa66f91d0abfc81df33bd7211293710457eea1f266bfc82028683ad15da46e05e', 'phone', NULL, 1600073603),
(109, 1, 'a075dc80a6c3d6d8760600bc2e265186271269d8cda0d557d3599e52ea00a9da984f47f77416936376383b34503afb0508f8364787c55800', 'phone', NULL, 1600073618),
(110, 1, '682eb82a0742df6decd1c6bf896b223703622e04fdd695309a6e1465b66c17e874dfe67f269433166a21bd02b3d17059c61bcb2eeb48b8cd', 'phone', NULL, 1600073638),
(111, 1, '313323a765e968cfd5822d1d1dcc4b2cab4f201c82f200cf729c892f4143f179b3257159389631366fc3f254b4f9c09c037e3ee7b40f5309', 'phone', NULL, 1600073821),
(112, 1, '47ce6fbfc8d0596af7cc1411ee8e71c266642005562e15ec11ceb043459ab7152967e8cd67974858f0b76267fbe12b936bd65e203dc675c1', 'phone', NULL, 1600073841),
(113, 1, 'b3a480264e1c4810d69617013d3676e8a2248009665bb8c9b3116c16345d7a171e4aa5aa811009014c7a167bb329bd92580a99ce422d6fa6', 'phone', NULL, 1600073856),
(114, 1, '66ddbdfe045618bb1e3755a13aaca15ae7f2ceec4af6373c7301f0e1dc4cc2a233d00a7245519721076a8133735eb5d7552dc195b125a454', 'phone', NULL, 1600074044),
(115, 1, 'fdd36362e91feff4db59f802544ebacf961f44ec6f2aac60d923628798988ba379390bed366294492e09926f3de94fa8c07ac5a8f3edc5cd', 'phone', NULL, 1600074143),
(116, 1, 'a9fb1762185c427523d33c0458555cdea76893f64c9353257a957fdee1cd88e008292c5234415924827d73770aaf3ea56e4ddbd99f0141f7', 'phone', NULL, 1600074275),
(117, 1, '243ce69783a9798f96dd1adb47e99bc354ecf59ae76ae67ff9cbe542c9c157170dd4cc7e702327814de1ed74128a96a8b5900186486aacba', 'phone', NULL, 1600074387),
(118, 1, '4e11832cd43f71fc24f5b37007a9f65fe20e55a306c9860cc464d53995e8eb4da6e6e50c497381049570efef719d705326f0ff817ef084e6', 'phone', NULL, 1600074428),
(119, 1, '9836a665fe23e50f8edda9ccf1b9eeb728d35399c0a0fe493ca28594758831d9479db47a64372963f73a9f957962cd73fce51078b5b9614f', 'phone', NULL, 1600074483),
(120, 1, '99667e7c3a537b15c298b4ccd0a97dabc907217fbab1d225d78ae9c3da68e9139606399c6125060437c9216b00a111ac0e1f81de25ddff77', 'phone', NULL, 1600076388),
(121, 1, '54d7ae746c990237c73518a545e9ec14833b7473bea4017a4d0a4c23d5625d9a72309cd2820459361fdc0ee9d95c71d73df82ac8f0721459', 'phone', NULL, 1600076491),
(122, 1, '497401a239d3b85e56f25e00fe9b615f533c07da3ff6de42090e82ae23fc313a5cfe296416061876c213877427b46fa96cff6c39e837ccee', 'phone', NULL, 1600076633),
(123, 1, '8031e83afb614bc15ba2920035e5843964a58da4f0f1e5c203ba6ae2057a111c0f2efa20203873602b8dec786a8cdf5889309995733b54d4', 'phone', NULL, 1600077314),
(124, 1, '7a889568b3d1ac4c9562060043516a06951ecb2edebe0641530d3724a209e8855c2b3687141530875cc3749a6e56ef6d656735dff9176074', 'phone', NULL, 1600077332),
(125, 1, '80193a0b1d2c8c206f48195cc724f01d91d5c8173e6050d3120d6943358e2b9ede13fdda278929014dbf29d90d5780cab50897fb955e4373', 'phone', NULL, 1600077604),
(126, 1, '8548465afab07aced7ffe0949cf96318c1ddf56a8b282eb1a6dd43528a4d49e532de65de33275056ac0071f018d6ac7568394853c44cef1f', 'phone', NULL, 1600077606),
(127, 1, '6afe251261f8b4d3325c1745b4c458baf6b560270b4879b32519d42366eec12a45df373b35964753cc225865b743ecc91c4743259813f604', 'phone', NULL, 1600077627),
(128, 1, 'b64fc8528efaa282fb4e0dd27575e8d0a48018f4a517542de2c2dec42cdd6703a09e831880328276c4c32f6c24ee9c91d8debbd72cce2a22', 'phone', NULL, 1600077676),
(129, 1, '5a57f59bbf702a0ef409e8e136c39184e0aa73874a3edb530dd1f4ed2b9078ef2402f2c584501157becc353586042b6dbcc42c1b794c37b6', 'phone', NULL, 1600078074),
(130, 1, '49c153bddf12dccf4ef48088ef4ed190fc74af71736651bc4a0a6821d0c4b86ee6a13067515755863de6a598010e6866124ddfa12d3d35cb', 'phone', NULL, 1600078077),
(131, 1, '267035f1ae9790ed2b6b0413474294f1d26a0fd7284d31c9e75815a9e0b435bfafd9f7af232074509b07f50145902e945a1cc629f729c213', 'phone', NULL, 1600078109),
(132, 1, '39b8f6ace8993c3cb75bfca5886d301da1da92578fe5af3af697ce1ad97877e4116377257993079607b1c04a30f798b5506c1ec5acfb9031', 'phone', NULL, 1600078180),
(133, 1, '20a763c1119dd427b92e73f8c1812f5c99b7c84072f6052a1e0aca1b6197753ff5aa921e173970032172fde49301047270b2897085e4319d', 'phone', NULL, 1600078224),
(134, 1, '73cfbd505290855988b404d1ae075747536192d04dada9f80ffdb6a494b6c5fa27d26ac681276888edcdaad57f7f4a4d3826728f009bcf24', 'phone', NULL, 1600078302),
(135, 1, 'b37a6bf44335a3e8f39d8987ceb8d1f18ce17c5a5d22c76ed72abd7df6d4323f29459783233971361796a48fa1968edd5c5d10d42c7b1813', 'phone', NULL, 1600078325),
(136, 1, 'd5f2c1db652249f637aa9a51ef43acdbd64424a8847eb84e9e92918a116f8f0621818c6c78952660b56b7c12f20e05664ec7674d075c5fc0', 'phone', NULL, 1600078348),
(137, 1, '90d7db547e0845d3622b6a2baeca5905a402e956bd50417f7296d306774b951d842b67b1402160944c4ea5258ef3fb3fb1fc48fee9b4408c', 'phone', NULL, 1600078409),
(138, 1, '9a2dae4c9f4145183dd85844d90562e6cf5394d194821f319c0c3617d875d21c948def2491455532d31a52679469593424c94da10611eff2', 'phone', NULL, 1600078439),
(139, 1, '41c2ed44866c8ada9700cda6799b1631bf2b1ce25a7baaec4792080fb938b4b4567f119e16793077dead35fa1512ad67301d09326177c42f', 'phone', NULL, 1600078609),
(140, 1, '480e9c3f7a4ddcb518b86dfc706548352d761513e8041a0ee54ee1e35477a274a592e71c7771747329d74915e1b323676bfc28f91b3c4802', 'phone', NULL, 1600079443),
(141, 1, 'c5141e0f415dd747c7c12cc17a9f9e6dd52838daf4c684aafecc6db5efe069fc893d395a1650407903924fb32bcc6248036e209a716e3339', 'phone', NULL, 1600079477),
(142, 1, '555dc39d0a9eb67188c7cf9b9f2ccbbd1ef012a70f08c5d6d51e86810c1585c7f3aa35fd11637402db7594703df912c1308b49012bbf81ea', 'phone', NULL, 1600079500),
(143, 1, '4c7e754bfc40c876ed0effc88164c83632c737a9c48788612fd0098caf1c0edd35dbc1e677076470dfccdb8b1cc7e4dab6d33db0fef12b88', 'phone', NULL, 1600079511),
(144, 1, '8fb69d93533ee26df7db8a2ac3ebf1e8ed6719c2fdeb65b4fc0a5c6c337d84b2682ba36798180979a424ded436368e3f9f10da14c23acc85', 'phone', NULL, 1600079536),
(145, 1, '8ccbaeae4f8937a7f5c904c1c4779d5f284ac098636586bc2bf00dade0c8bb2518a2ff788959032342299f06ee419aa5d9d07798b56779e2', 'phone', NULL, 1600079768),
(146, 1, 'fd8ad0ae4206355e756b955c7599a4f2e8cb76874f36cd3a4b98e106927c121acde49b0e72973799e242660df1b69b74dcc7fde711f924ff', 'phone', NULL, 1600079805),
(147, 1, '92ea0500bd6a46ad4cc15304bcb6c4af38dee99a30f38d8a30e1f950ead6890c0cd3a9c8693650483f8e8bb571cc086ca44e9605ad23ffde', 'phone', NULL, 1600079857),
(148, 1, '05ff0062eb2da5f119bd76f0edbbbcdfcffe369f0c919dcbffa38326e029159593cc1af727711680b8a6550662b363eb34145965d64d0cfb', 'phone', NULL, 1600079883),
(149, 1, 'ec98085ac21c183ee07b0d30081de509535da70b5c8d99542c07e1d7a1b32197136d7a5468081183d2a1e34d86293cb12f959f89dddf263e', 'phone', NULL, 1600079913),
(150, 1, 'e68fbf3650c9be038ba17652b4c96d3dcb5aa110f5458c9dfb7199c475f84329271bb1b65066182881d7118d88d5570189ace943bd14f142', 'phone', NULL, 1600079926),
(151, 1, '2460d5209b47f7169923df907175f26ba766b0f9024cd1ce7703af8df2d91f05008d02ad93750529816a6db41f0e44644bc65808b6db5ca4', 'phone', NULL, 1600080017),
(152, 1, 'd22f09fb156f9dfc555c8c43c737b7ff5ce303d0ace697a1475645aae24c8aa2f993c25457265528ab81265d898ef7f38a3e95fc98c2a669', 'phone', NULL, 1600080093),
(153, 1, '35aa64b6cc6d8ab45483b285fcacfa861839702acbdf07e0c0e8fe0e74decd9b59ac7cf173907689b44182379bf9fae976e6ae5996e13cd8', 'phone', NULL, 1600080199),
(154, 1, '27b4c5d9aad449f07425b2afe213e7c949bfb4e3cf207bdecaaa97757842744c7459cee89077809318903e4430783a191b0cfab439daaef8', 'phone', NULL, 1600080210),
(155, 1, 'eb95981a28d0ed8edabc16edc6abd055997f670391d45c04937256207e80d8eaa177ee5378383768c0356641f421b381e475776b602a5da8', 'phone', NULL, 1600080266),
(156, 1, 'ae04c97998da239df845b28b21d8dc23cd0e61c30fde6eeebeb45ddf031362c00f80e96774615214c16882e007c5c7a773acd7c5e8869ab7', 'phone', NULL, 1600080307),
(157, 1, '77898d320640becc54ad47e5aae524120b4ccb52026378636eef238c6c8873c05eae203b738277759bcb182ab31f229322cff3c8888b2cec', 'phone', NULL, 1600080373),
(158, 1, 'a92404c8abd66dae61972bfcda0faf53c64b4e039dc589350e674cc333fbfa6812ccf39046713909803a82dee7e3fbb3438a149508484250', 'phone', NULL, 1600080442),
(159, 1, '5bd0980fdb3b5fa4b6f4b36ffc47e1e6341c9e9859681e67073e9982fde9223034a2cd1f19948955375abb16ea7c1f83be31ce4c3495ec41', 'phone', NULL, 1600080512),
(160, 1, '98f4f2b294c88ca6165596f295bceb3539309993b4e5f232253cc1eebba9a959448031b32631553070e9dbe24ba303f2d25ac34d3ae945c5', 'phone', NULL, 1600080667),
(161, 1, 'f0ffd935bcc90a8b0a44e02787a866c0c252785c4eae53396d0039e37770d6643e31755e2622377492350dee085a781753d9301fea11d51c', 'phone', NULL, 1600080727),
(162, 1, 'a5c9d8ac193b6ae2c423fe649f2e06306240ec8000b7b0b53c64fd2943acb94ae7ad47cc13104062219c507b38ddfc07899fc1f01ff40c44', 'phone', NULL, 1600080759),
(163, 1, '240e881d5c8923efb7bc6f63d196b907a5eb0e328b1f2de615a8b0f107da5c42a0e912f520982551fdad3b5b2200b598dfde9517e5b426a8', 'phone', NULL, 1600080792),
(164, 1, '5a86f48d624964a691b22c2ffd6a56371e9c7b9d50525cca0583a5c9a42f7c220692993c90276427554644c0cc70e64757bfdfe8512f90c6', 'phone', NULL, 1600080848),
(165, 1, '851a60ccfd1a02ed11a37278a5b725786cde052c940a8178ea35de76a9f07aa8e42d1802746585947bec7e63a493e2d61891b1e4051ef75a', 'phone', NULL, 1600080914),
(166, 1, '60c404f0212b6955a91844c347e83b2c7c71483d206836ae9841822da3c6158375631dfc733770677c792a8279211dece3b4df04719c818a', 'phone', NULL, 1600080960),
(167, 1, '42347fbc2a79fc46423400eb16dc9387186190b7446beaa782af588af5a15e7f21595883952748776c81c83c4bd0b58850495f603ab45a93', 'phone', NULL, 1600080985),
(168, 1, '67ac18aee6cef7f608b0b9e7faef049716389ef1c2d5fa3039420b90d96b30eae24823c912835718f16ba6f00bce15507c766cd5e8057728', 'phone', NULL, 1600081057),
(169, 1, 'a407aeac95924fd649c4fd467f75dd110c3217fff263c2bc08645d66a2e173d01d6f71d3486078810224cd598e48c5041c7947fd5cb20d53', 'phone', NULL, 1600081098),
(170, 1, '1550c4a27fe7d59ab0d31a957457cc078e2674085259d13e2fef6e317564a88c3aa27841454173159087cd8bfa9c1968b20d8f6d0b81cbbb', 'phone', NULL, 1600081164),
(171, 1, 'd710ce935973efa0461f1f5ab11622205203b69f6d3730be389dca75952a5e33659995c78545426255ed523b2ca4371a31d7dbd7a2877bea', 'phone', NULL, 1600081196),
(172, 1, 'bd6ad7671cd52700d69e4672aec9fbd18730d575b34aac9b0d60c54893849d6ec38da17a354869558fd7f981e10b41330b618129afcaab2d', 'phone', NULL, 1600230474),
(173, 1, '34032c5451703d63decdbc66afca1ca3e9b5e23d83bbbc4baadb076d66bd6fc1d4544720293853117551617774bcd665e4abe990db4f6f83', 'phone', NULL, 1600244689),
(174, 1, 'dd6f71c40549e3da5b47478fd6a15ba42d7781f5a6e861c821d711a086fa744208dd589a13858942b5d62aa6024ab6a65a12c78c4c2d4efc', 'phone', NULL, 1600244924),
(175, 1, '4a2ab0bf0c0d0e033c63dd055baee945e93fd93a621d10e2213ed92c3db78f522a9f11bd68535248419345a4c56c55ba30671ab8c25d2a73', 'phone', NULL, 1600245098),
(176, 1, 'eb23b5433d86ab494f2f11995f07c9e5489cd245ffe949351c9bf3f2b24776af249d3de752916674e987eff4a7c7b7e580d659feb6f60c1a', 'phone', NULL, 1600245106),
(177, 1, 'ed8553bee82215065bc46e5252a0621191332c33f5145cb3800fc5121e1eb043b736e61422116252b11c3e3aaf3cfe496174ecc31a3c04d0', 'phone', NULL, 1600245139),
(178, 1, 'ff8472522b6be9b5c63d9fc6153e8ffe472ae0e6a8371770ce25613543e32ab56cc7bc33246251195bbf4a75e68db03be98166f8f87acd4b', 'phone', NULL, 1600245210),
(179, 1, 'd6d6995c31eeb06fdff4e4c6b06fa8b6c16ddda23f6850c8f91f593c4dfe4e06928f12f271213601beda847edabdd461b87a0821a65cad5f', 'phone', NULL, 1600245274),
(180, 1, 'd2e1394e15d08ed5121d61787f32726759a03a3c1541170ec8546fa29ab1fe3a08c40b432753826689b9c689a57b82e59074c6ba09aa394d', 'phone', NULL, 1600245274),
(181, 1, '05b323969950d3f9f96defb46ea08672d64bfc4806acf41679d0d1b06c59bb4124e1399778641131bd4a6d0563e0604510989eb8f9ff71f5', 'phone', NULL, 1600245281),
(182, 1, '41cf854cf852abcac759dfa7b1cff18bf8cdf511395e6aebce5e267d411fdcd6c2d6eabf16708620b0b07fecb2354efcdfc9671484b6eaa9', 'phone', NULL, 1600245281),
(183, 1, 'dd240784c43d3a8b8af34cfba377feef914cc9e806900534256c93d5b91e7b1eb2ad0a90830017780dd6049f5fa537d41753be6d37859430', 'phone', NULL, 1600245402),
(184, 1, '6495f8f56e8dab67a816b599e53512ca64c597a3150b52391de6babba8132a85b6368cf0263492594b2ae7d938d2edc52ee760535f0003e2', 'phone', NULL, 1600245442),
(185, 1, '15a031ffebd5fca052b952a14ec05359778854a1eb28bef1eea1020bbf68d8169d37b26662135060570320a43e5d968459b6342c01498b81', 'phone', NULL, 1600245470),
(186, 1, '2446138521788c1cc4225e03273f65efe2ea3e9e30e52c09bd02b0d82feff2b1c23778b4356725447c2c48a32443ad8f805e48520f3b26a4', 'phone', NULL, 1600245518),
(187, 1, 'ffce5c5428aa1807e6e551211071466d339a85bffd6f7305eec31efd254bce10a289178420829698139c3c1b7ca46a9d4fd6d163d98af635', 'phone', NULL, 1600268153),
(188, 1, '279db126ebeb1e92e93e41a471aaf627f9dd6907fdcd6de625521e2f63131a930c9a965639548843c56030557e55275663bd45b48cd0223e', 'phone', NULL, 1600269358),
(189, 1, '7e3bc3e0ba05a5cfc82cc4b30c7657ee5a48cbb37efe16cfc440ef049f11987ea8970dc6872296423e1804747c4cf0e9f098b445b1fff36c', 'phone', NULL, 1600269392),
(190, 1, '96b5d77f45053c1e875c81125314862e6566d203f3c069bc946353159553b9ea14acb2c384880410bd430257087f92e5322919c84dc99f32', 'phone', NULL, 1600269393),
(191, 1, '97238f6e62c17f331b9ecbfac50dce32229e48891508068d740500c6a266acffa56ae68c93454068c2937f3a1b3a177d2408574da0245a19', 'phone', NULL, 1600269410),
(192, 1, '3a067b23894f33160d6ec0222710c670ebed08a2ac15d0320ba3d758585b5b65bd674386755583053483e5ec0489e5c394b028ec4e81f3e1', 'phone', NULL, 1600269436),
(193, 1, 'f1e3a44d2e09026eb0597491e7c8cc3c7ea708b7227b97d4bda6c961751bc1ed50a6be8c5681712432c47400d002aa2e9608f262414b4aba', 'phone', NULL, 1600269459),
(194, 1, '1c804cd8ce259209d78ab1a22310416324840d12a3f4ea49cead76e2ee6b6213c6a0220483285025a87c11b9100c608b7f8e98cfa316ff7b', 'phone', NULL, 1600269500),
(195, 1, 'aec82e3dce3b9910091617d91294ab77efff2d0f09b2cc179f1127d7d023f41b9163a4cb537088177a47f991e304fd013ba300505eb42fd7', 'phone', NULL, 1600269505),
(196, 1, 'fdf7e0c348151ed5c3132a44ec6f28e048e6b3e37d6a761edaa4f13bb746d7cce7f7358b137516984f1927fff6e092185d6a6f4c8466e421', 'phone', NULL, 1600269523),
(197, 1, 'ebb53c7fb963a7bd7a015aeb14e9d54effae34f7ade67de2bf2f654b28348adeca5e586f36249863649adc59afdef2a8b9e943f94a04b02f', 'phone', NULL, 1600269805),
(198, 1, '000f0c5c3e485b26ac831fcc3a8fd18688f9f576afbde12655c0491111b6754957cf52ca92350531f77ad541b6b5bc48c47d814b95491fbd', 'phone', NULL, 1600270005),
(199, 1, '759e54d830d1f4e4278bb4dcd75c99046f61207b2399e3bdc860e1046d22e1f299e2dcce44604968c923d8f64e256dde7c28bf1614d53602', 'phone', NULL, 1600270007),
(200, 1, 'c8e41e846e8668319f1b4f1511d427c88540304c308a37686acdd19f65f44f5d0eaa49754082162777b917da760ab9aeca583fd0bb0e1c67', 'phone', NULL, 1600270008),
(201, 1, '82c37b6f98979705c1d68f4519378dbad6b7e6900f903d670cd303df23ad6165fe2c9271707302815de8a36008b04a6167761fa19b61aa6c', 'phone', NULL, 1600270008),
(202, 1, 'a9ff5a69a8bf9e35cf7d6da8bb1614938103b4c446761431d0ed4e0a9a452aa4b8200f45248162116a13382a520e0420014027350a0b3eb4', 'phone', NULL, 1600270008),
(203, 1, '6ecc81cc422226d4d14378f234918584b02fe3a001dd39c975724039437e845d359120d8465768650163cceb20f5ca7b313419c068abd9dc', 'phone', NULL, 1600270008),
(204, 1, '7e96b11e170e9a0bdf2fd47feba20856a0005937a7abd1fde561fec0365edede60eb495d52644718197cec18dff201ab4d1966879423f50b', 'phone', NULL, 1600270017),
(205, 1, '8446f298a0a32d9b75b5b51f03f21c2437bb73e7c0d941edba422285536f3341d4e684d71186015436165c62f7b7df72863d470d73302627', 'phone', NULL, 1600270018),
(206, 1, 'bf1ec544b97b2f6f4a78bc63e620c02c991437e38b1dadb19b3cffb54bba72370886d4cd220242220f541eccc4dc49cc19da7ca4594fad27', 'phone', NULL, 1600270018),
(207, 1, 'ebcebec252caffbc0b91247363727b7a15592106e5a43e56138583bbb8a6af143080155c9547230641ccc97e4f1b5de999aa6468ff787d89', 'phone', NULL, 1600270070),
(208, 1, '75bd845390317c148a0fd1f6eecf28fd644d0ddb810f75cde3e3d53cc4094e25434029376902436636ab62655fa81ce8735ce7cfdaf7c9e8', 'phone', NULL, 1600270071),
(209, 1, '6384cee621dbe4973b78a754f7532bd74d8c6659020ae2b617c8982439eb936d30f6c70f1137817863eb58bd4d3486f001438f911a11d323', 'phone', NULL, 1600270071),
(210, 1, '95138e9bb00fa8afcbfb05949aa49c01b9118838112209f469e9ffd52d09b8771921a96935005084b7b70189b9698f6213f2799fb12925e2', 'phone', NULL, 1600270071),
(211, 1, 'e38228a5cf00ffc2070a29e627db5526291fcc7119400bbd4d47adbba477a298b0bf49709618048282039d16dce0aab3913b6a7ac73deff7', 'phone', NULL, 1600270145),
(212, 1, 'e07b0cbc01ee5f2085b8e2115c1d30b161f21bbf14fe8188767a6cfd55df376a7d94369a3764606582d3149fc1f8d2305e7c6d56a6c5689d', 'phone', NULL, 1600270152),
(213, 1, '9f0728927d4be5a2499547b528d684911bb243b6c0b1dc6056ce6ddb61f6f818686bdaa295543539c688defd45ad6638febd469adb09ddf7', 'phone', NULL, 1600270178),
(214, 1, '00269e81e5be9c5d9216dc2c50c257f1aec2b598e3562a1ad931d43a0e1c18268e3621557206581707d5938693cc3903b261e1a3844590ed', 'phone', NULL, 1600270179),
(215, 1, '5a7eabe55a9e3c0e61efd915c8732fbe3740c0118276c904e51b8c3320ddd36f1d4771e692613729e9b82e4d55c91c6abbf9dedf898172a0', 'phone', NULL, 1600270179),
(216, 1, '4707ea43725de6c1b819b2781cdb47df3179bdc7f99da7121615279072346ce5c0e996067667367588ccf9a98e8519b2011df33952832f2f', 'phone', NULL, 1600270179),
(217, 1, 'eb56c5c6afc9fa94d82d9e613ee69edf2bc8b63035d7aadd83b3afcebe67457a3b128faf26217207fc9e62695def29ccdb9eb3fed5b4c8c8', 'phone', NULL, 1600270179),
(218, 1, 'bcabe5ab7948bb0c6b90247cb01c66688984c024be8c089a27046395d6b9a3691c8224d145015713860b37e28ec7ba614f00f9246949561d', 'phone', NULL, 1600270180),
(219, 1, 'da7cc7d95c2421babf432d711af2ce299814763212c6d25e27f3176f170c9bde611658a534186697c646a3b8b24cb64c1314c03292fff0fd', 'phone', NULL, 1600270187),
(220, 1, '78a686b592ad3d948759dcb3b3d0247e7b698419c61cfed0ace18824bab24c19a965ba8f460458428252831b9fce7a49421e622c14ce0f65', 'phone', NULL, 1600270210),
(221, 1, 'e0de69e454b14e71baddadd2b80196738c5cac63f5a9bfa5a065253df4f1e23db71a320a72942295c37f36800219dcb5960c40d1d4bade55', 'phone', NULL, 1600270331),
(222, 1, 'b88c49c43dd63006dd363851873a3309b441d9c7d2e539101e3e590fc0da3b6edcf67b4e97849243a29a5ba2cb7bdeabba22de8c83321b46', 'phone', NULL, 1600270332),
(223, 1, 'bad459bc6f63e2e1552e03365ebdba431d5419eb48f34904b62509073afc6e5aadf03d58563246771fc30b9d4319760b04fab735fbfed9a9', 'phone', NULL, 1600270480),
(224, 1, '82fd6a721bb1d2c08ae0713f91b8c1825bd143328539a41b4fd86c2a37a8f341e9047d08973731357274a60c83145b1082be9caa91926ecf', 'phone', NULL, 1600270498),
(225, 1, 'e5e3c1d6e7fb466856abd3c4b67eb79f6370a9295cf95709d89d5e9b7b376bc06e8bd89e2119169451f15efdd170e6043fa02a74882f0470', 'phone', NULL, 1600270507),
(226, 1, '8f414d8791cb8479087a020e2ff16e49ffc1930e552b453e858d0ce52d3a91b98c28d73960474990912e79cd13c64069d91da65d62fbb78c', 'phone', NULL, 1600270608),
(227, 1, '97188aa47353009cab65fe95f8758ac0ec9aa24eb0b8bb264e31a174f78635a2a47f5c1664546821bb469043f774854635c4d72798291e9f', 'phone', NULL, 1600271685),
(228, 1, 'ed09997771440a337dc68a43e966307d107042ae030a64067d50903e5f483af830bd98e15974941830082754836bf11b2c31a0fd3cb4b091', 'phone', NULL, 1600271693),
(229, 1, '054e2fe9f8e2be740525263fbc848d8578de9c6f13e8cb2c9a96be4c18398dec89ca546021838725ebb87faa733d9a04ebb40f422b135fb0', 'phone', NULL, 1600271794),
(230, 1, '1107f4cccb4100f11524b98c83aba74a7994e4aeb287f3c3afa809c2bca60d0d45b4f6ce3914211656880339cfb8fe04c2d17c6160d0512f', 'phone', NULL, 1600313565),
(231, 1, 'cdc9a5b024b3485b4577803c677a937aec2fb23f6007ef291892a810565559480a4139ae4988668727d52bcb3580724eb4cbe9f2718a9365', 'phone', NULL, 1600339732),
(232, 1, '3caa3b391802a10283f44a67bc9d3053c2102fc8dc90a472fc91adc8760bdbb48823e019552846550394ea68951e3299bcdfa75a097d7c11', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.101 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.101\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.22\"}', 1600402345),
(233, 1, 'f0b73cd5c29c18380740e0d7dd8253fbcea5e652b2c16c811266151d484142e297d090d0693938606ea3f1874b188558fafbab78e8c3a968', 'phone', NULL, 1600411784),
(234, 1, 'c86ae6fa116d1545987081125de33ac0e2e7d27872c719f74c2ff73feedf0839578b51e844321283342285bb2a8cadef22f667eeb6a63732', 'phone', NULL, 1600411802),
(235, 1, 'bc02b44b4b2dc2ceea17e8969ae546008f3bbc71146c07227fb7138d093b40031fa05d7e23183402e143c01e314f7b950daca31188cb5d0f', 'phone', NULL, 1600417335),
(236, 1, '333653cdb0688baf272ce52a47cc18fad52140cb7f9f839edc20cd62cac463d142bbf67543892969c25e9a36b62f62f58f847fa83c70dc91', 'phone', NULL, 1600417342),
(237, 1, '6f6d092282603b1a0838b325abd1306a5509e23b8a92b09f252bd969f3e04969905727b5669045358d917ee2013f097c962fa85297f0ffea', 'phone', NULL, 1600420882),
(238, 1, 'd1231bf4544293cb82dc2708f50998c1f077c96ca32f7c496bb6549ca7be6b2208da0d878862165461bfdc160e4c099203c72258d8825340', 'phone', NULL, 1600420891),
(239, 1, '4cc5d91e626252ac3d91d578ab0e9b9b99a4757adf54c1b6b6dc6baf7cbf8afb5532638e91009771670c26185a3783678135b4697f7dbd1a', 'phone', NULL, 1600420898),
(240, 1, 'ce3abb7758c61780212dd162c63a6af075b346265481809d6e331e8707cc7789843af50d402690688ca696ca160520b1cf5a569b4be525e8', 'phone', NULL, 1600420915),
(241, 1, 'c662a86f73b0db3659e48a9ea5330e714c2ac613131cd192afcff740dfa2b6404df7fcc2584725617b780be82755701ccc69c82a3e656375', 'phone', NULL, 1600420918),
(242, 1, 'e6ea021088ae8dae5ce316c7a66bd43d79f18a9739e673f471033c01bf3db9ba604a8e7886358996885fe656777008c335ac96072a45be15', 'phone', NULL, 1600421075),
(243, 1, '464d3cddd4c30802efe7e71992382b7ea9ea76f4ad6c015f1c8c60bdbe2ed18c7f67720657546957040d45ccc13c070fcec9d46ccd0cc543', 'phone', NULL, 1600421156),
(244, 1, '5c1692eb89330076cbc0346644a8a8de4e34d47f8d9f469a6aaaa878aceb4b12d48c16a136710519708be71b9ab6e0a84252760579ade9f1', 'phone', NULL, 1600421928),
(245, 1, '78d239b6d5bb230ab1a43c4dc160974fb6628791be94b7d5fb07624ec6732ae7e0bcb7a1502032345f5c19fa671886b5f7f205d541157c1f', 'phone', NULL, 1600422046),
(246, 1, '5beba238293fb68174a9278f95068164b0b37ccc6e3dc44ac0b0ec1b925324a7991cd59113388084cb4b69eb9bd10da82c15dca2f86a1385', 'phone', NULL, 1600435115),
(247, 1, 'e39da99b8d239e67b695884816cd268b5d9e8af273dc8bea3add82b704432e0057061420663235026213a8959a9a96589ca484dfd1e25053', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.154.248\"}', 1600448397),
(248, 2, '5ad58a862b0d09d2da269e44716045d68bd2dd99422ed50f1eccb91aacd1c7482315e64336279549594ca7adb3277c51a998252e2d4c906e', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15\",\"name\":\"Apple Safari\",\"version\":\"13.1\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Safari|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.154.248\"}', 1600448396),
(249, 1, '19e8b758651a5783be8c0c4d786b2ec8bef8b92cd395998b874f04232efebee875658b5e9811201766f8c9849717ee8f5bc1630f4d44d2cb', 'phone', NULL, 1600447204),
(250, 2, 'a6760d954d0d823eb89ace90d69d760289edeeb593b4e28b23a2858d71bdebc85f3dc7c0185016437867d6557b82ed3b5d61e6591a2a2fd3', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.154.248\"}', 1600492856),
(251, 1, '7b8ef6bf1e2c026610af18078a381872e5357ce07b065aab76f97bd48c5a33e10c11bdf4400841230f0ee3310223fe38a989b2c818709393', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.154.248\"}', 1600493188),
(252, 1, 'a7a6017cc548208360e59fffaa91db2ee2fcd6b94d596d3286b221bbc789afd3e72e17c18245964660b2149f6bafd1cc9d505496f09160ba', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.102\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.154.248\"}', 1600503104);
INSERT INTO `Wo_AppsSessions` (`id`, `user_id`, `session_id`, `platform`, `platform_details`, `time`) VALUES
(253, 8, '87d878d16cf4b0a906291134c23905102fbe5123e6b8c85c0084e9cf764593a7e4fe1daa45648985c66dd00e5fc44ba8de89d7713fedcd50', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15\",\"name\":\"Apple Safari\",\"version\":\"13.1\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Safari|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.110.154.248\"}', 1600546299),
(254, 1, '8d23f0d688c5e79a0003138df5bcaa1d30a0d52d5c12fa8fa9e166a2ddcec4e1258dcdff46898162043a1c71577f6249b071679bce73d008', 'phone', NULL, 1600593869),
(255, 1, 'babe611a9963668fbc01dc0211d58907e2827667ba09715fba0933c0bbaeed294fcaaf48404287071872e3d47e965d2e64f63ca01dd937f9', 'phone', NULL, 1600593945),
(256, 1, '251ac4e8823cd5869b9bf0c322a3eb552a9e5edefee5318cfa28c44b02e04017351c6df9991896182109737282d2c2de4fc5534be26c9bb6', 'phone', NULL, 1600915412),
(257, 1, '0c667bcd7572ec53a73ba553a6723eb5d02cb9961e093151cf9047291385c04b94782ee27023401859b5a32ef22091b6057d844141c0bafd', 'phone', NULL, 1600915585),
(258, 1, 'ddce5f8309c1fbc9240d2c60e27baf489149180f7465f92e61c9739a4f9d26a7a73192ce7633355116c244e39517c1e577a0b778cb1ce568', 'phone', NULL, 1600915601),
(259, 1, '90ba8075342c1234450a597d9a7399fea90e68d1b974d8d4414b0e864114f43237e4c2cb9422434289c86ad4bb118af4b7d49925b1b319e1', 'phone', NULL, 1600915655),
(260, 1, '8f89c9fbf5b8da04cbafa3ee9143a42764707221135bda8f7bbb911c513683bed8563ea823091711139c3c1b7ca46a9d4fd6d163d98af635', 'phone', NULL, 1600915657),
(261, 1, 'bc440ae141769e8bb26dce53f001e735d4a1f94bc476267869890232f1ead627905f18fa406076384c26774d852f62440fc746ea4cdd57f6', 'phone', NULL, 1600915710),
(262, 1, '26d4d7f7f76987652a8c92c610676599a71418685c217e9f4856132d52495fb8d756603b303089448346db44a721fa863ca38180638bad3d', 'phone', NULL, 1600915920),
(263, 1, 'b34349c8e26e6d22303f6a6a0cabb23ae13033b75153a62f73efccbee45095b61befbb8928441929ce46f09027b218b46063eb2b858f622d', 'phone', NULL, 1600916048),
(264, 1, '30ef1b3524628e8062bc91f1d93fd9a1f79f65c92d03672064c5fb064eafe2bffde51ec992679224b0bf8b3daf61246d13276dc8dcdfb87d', 'phone', NULL, 1600916128),
(265, 1, '972534b975d6c7b8440c2fdc3b35d69e9b7d4d8e6c43f53da1817ee4a7a90cbc88db19fe38580078b3ddb7c5b10be95dbc3f9152c58becce', 'phone', NULL, 1600916136),
(266, 1, 'f623210fb67b1f52524882e8ae4baba18c866382ce211a64ddcc4526496c1bcb6e12e45c72964359f77ad541b6b5bc48c47d814b95491fbd', 'phone', NULL, 1600916283),
(267, 1, '6d1e6be83f7f2ec839e6051098092729754c13f3f920f5640a2fa7a7201fef4feeda8ff17310636945624a44b89793087e9ef4d076018adb', 'phone', NULL, 1600916361),
(268, 1, '30700a8294864525fab6be28eff0b2e14bedd0af3983a4264247fbd06e5fa299c6316a5070932296f7a82ce7e16d9687e7cd9a9feb85d187', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.121\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.37\"}', 1601028096),
(269, 1, '56dbb5be7d2a99e2198ac64f4a060099566a71f28a3fab421788ef152d51642e851b2a3c12547943d58cc99982459ca8d73b89068f53e446', 'web', '{\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.121\",\"platform\":\"mac\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"10.0.0.37\"}', 1601028096),
(270, 1, '9a70640103c0a934abd40dd94a896f284ded500e775ca2fe31f397f9dd1fde7373f2857b6054582344bf89b63173d40fb39f9842e308b3f9', 'web', '{\"userAgent\":\"Mozilla/5.0 (Linux; Android 10; SM-N975F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.101 Mobile Safari/537.36\",\"name\":\"Google Chrome\",\"version\":\"85.0.4183.101\",\"platform\":\"Android Web\",\"pattern\":\"#(?<browser>Version|Chrome|other)[/ ]+(?<version>[0-9.|a-zA-Z.]*)#\",\"ip_address\":\"116.98.173.173\"}', 1601083722);

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Apps_Hash`
--

CREATE TABLE `Wo_Apps_Hash` (
  `id` int(11) NOT NULL,
  `hash_id` varchar(200) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Apps_Permission`
--

CREATE TABLE `Wo_Apps_Permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_AudioCalls`
--

CREATE TABLE `Wo_AudioCalls` (
  `id` int(11) NOT NULL,
  `call_id` varchar(30) NOT NULL DEFAULT '0',
  `access_token` text,
  `call_id_2` varchar(30) NOT NULL DEFAULT '',
  `access_token_2` text,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(50) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `called` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `declined` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Bad_Login`
--

CREATE TABLE `Wo_Bad_Login` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL DEFAULT '',
  `time` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Banned_Ip`
--

CREATE TABLE `Wo_Banned_Ip` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(32) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Blocks`
--

CREATE TABLE `Wo_Blocks` (
  `id` int(11) NOT NULL,
  `blocker` int(11) NOT NULL DEFAULT '0',
  `blocked` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Blog`
--

CREATE TABLE `Wo_Blog` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `content` text,
  `description` text,
  `posted` varchar(300) DEFAULT '0',
  `category` int(255) DEFAULT '0',
  `thumbnail` varchar(100) DEFAULT 'upload/photos/d-blog.jpg',
  `view` int(11) DEFAULT '0',
  `shared` int(11) DEFAULT '0',
  `tags` varchar(300) DEFAULT '',
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Blog`
--

INSERT INTO `Wo_Blog` (`id`, `user`, `title`, `content`, `description`, `posted`, `category`, `thumbnail`, `view`, `shared`, `tags`, `active`) VALUES
(1, 1, 'Test wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest', '&lt;p&gt;scs x x&lt;/p&gt;', 'Test wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTe', '1599746506', 2, 'upload/photos/2020/09/n6xwyu1NrDbsItefhZsO_10_72c7d5835dbf70f22d7c2bcd3f6822cc_image.png', 11, 0, 'a', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_BlogCommentReplies`
--

CREATE TABLE `Wo_BlogCommentReplies` (
  `id` int(11) NOT NULL,
  `comm_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_BlogComments`
--

CREATE TABLE `Wo_BlogComments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_BlogMovieDisLikes`
--

CREATE TABLE `Wo_BlogMovieDisLikes` (
  `id` int(11) NOT NULL,
  `blog_comm_id` int(20) NOT NULL DEFAULT '0',
  `blog_commreply_id` int(20) NOT NULL DEFAULT '0',
  `movie_comm_id` int(20) NOT NULL DEFAULT '0',
  `movie_commreply_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(50) NOT NULL DEFAULT '0',
  `movie_id` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_BlogMovieLikes`
--

CREATE TABLE `Wo_BlogMovieLikes` (
  `id` int(11) NOT NULL,
  `blog_comm_id` int(20) NOT NULL DEFAULT '0',
  `blog_commreply_id` int(20) NOT NULL DEFAULT '0',
  `movie_comm_id` int(20) NOT NULL DEFAULT '0',
  `movie_commreply_id` int(20) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(50) NOT NULL DEFAULT '0',
  `movie_id` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Blogs_Categories`
--

CREATE TABLE `Wo_Blogs_Categories` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Blogs_Categories`
--

INSERT INTO `Wo_Blogs_Categories` (`id`, `lang_key`) VALUES
(2, '1421'),
(3, '1424'),
(4, '1427'),
(5, '1430'),
(6, '1433'),
(7, '1436'),
(8, '1439'),
(9, '1442'),
(10, '1445'),
(11, '1448'),
(12, '1451'),
(13, '1454'),
(14, '1457'),
(15, '1460'),
(16, '1463'),
(17, '1466'),
(18, '1469');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Blog_Reaction`
--

CREATE TABLE `Wo_Blog_Reaction` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `reaction` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_check_ins`
--

CREATE TABLE `wo_check_ins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` enum('waiting','approve','reject') DEFAULT 'waiting',
  `category_id` int(11) DEFAULT NULL,
  `description` text,
  `time` int(11) DEFAULT NULL,
  `address` text NOT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Codes`
--

CREATE TABLE `Wo_Codes` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT '',
  `app_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Colored_Posts`
--

CREATE TABLE `Wo_Colored_Posts` (
  `id` int(11) NOT NULL,
  `color_1` varchar(50) NOT NULL DEFAULT '',
  `color_2` varchar(50) NOT NULL DEFAULT '',
  `text_color` varchar(50) NOT NULL DEFAULT '',
  `image` varchar(250) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_CommentLikes`
--

CREATE TABLE `Wo_CommentLikes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Comments`
--

CREATE TABLE `Wo_Comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `record` varchar(255) NOT NULL DEFAULT '',
  `c_file` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Comments`
--

INSERT INTO `Wo_Comments` (`id`, `user_id`, `page_id`, `post_id`, `text`, `record`, `c_file`, `time`) VALUES
(1, 1, 0, 7, 'Hi', '', '', 1593508823),
(2, 1, 0, 7, 'Xin chào', '', '', 1593508827);

-- --------------------------------------------------------

--
-- Table structure for table `Wo_CommentWonders`
--

CREATE TABLE `Wo_CommentWonders` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Comment_Replies`
--

CREATE TABLE `Wo_Comment_Replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `c_file` varchar(300) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Comment_Replies_Likes`
--

CREATE TABLE `Wo_Comment_Replies_Likes` (
  `id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Comment_Replies_Wonders`
--

CREATE TABLE `Wo_Comment_Replies_Wonders` (
  `id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Config`
--

CREATE TABLE `Wo_Config` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `value` varchar(20000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Config`
--

INSERT INTO `Wo_Config` (`id`, `name`, `value`) VALUES
(1, 'siteName', 'Pin Sharing System'),
(2, 'siteTitle', 'Pin Sharing System'),
(3, 'siteKeywords', 'pinshare'),
(4, 'siteDesc', 'Pin, Power Bank Sharing System'),
(5, 'siteEmail', 'congduy@gmail.com'),
(6, 'defualtLang', 'vietnamese'),
(7, 'emailValidation', '0'),
(8, 'emailNotification', '0'),
(9, 'fileSharing', '1'),
(10, 'seoLink', '0'),
(11, 'cacheSystem', '0'),
(12, 'chatSystem', '1'),
(13, 'useSeoFrindly', '1'),
(14, 'reCaptcha', '0'),
(15, 'reCaptchaKey', ''),
(16, 'user_lastseen', '1'),
(17, 'age', '1'),
(18, 'deleteAccount', '1'),
(19, 'connectivitySystem', '1'),
(20, 'profileVisit', '1'),
(21, 'maxUpload', '96000000'),
(22, 'maxCharacters', '640'),
(23, 'message_seen', '1'),
(24, 'message_typing', '1'),
(25, 'google_map_api', 'AIzaSyBOfpaMO_tMMsuvS2T4zx4llbtsFqMuT9Y'),
(26, 'allowedExtenstion', 'jpg,png,jpeg,gif,mkv,docx,zip,rar,pdf,doc,mp3,mp4,flv,wav,txt,mov,avi,webm,wav,mpeg'),
(27, 'censored_words', ''),
(28, 'googleAnalytics', ''),
(29, 'AllLogin', '0'),
(30, 'googleLogin', '1'),
(31, 'facebookLogin', '0'),
(32, 'twitterLogin', '0'),
(33, 'linkedinLogin', '0'),
(34, 'VkontakteLogin', '0'),
(35, 'facebookAppId', ''),
(36, 'facebookAppKey', ''),
(37, 'googleAppId', '927958087379-js2l94ofdhrgj2ekpbrojmvm2hnbhi1c.apps.googleusercontent.com'),
(38, 'googleAppKey', 'ez6pgI3rQvaPftmYGzcDgnDH'),
(39, 'twitterAppId', ''),
(40, 'twitterAppKey', ''),
(41, 'linkedinAppId', ''),
(42, 'linkedinAppKey', ''),
(43, 'VkontakteAppId', ''),
(44, 'VkontakteAppKey', ''),
(45, 'theme', 'sunshine'),
(46, 'second_post_button', 'reaction'),
(47, 'instagramAppId', ''),
(48, 'instagramAppkey', ''),
(49, 'instagramLogin', '0'),
(50, 'header_background', '#1e2321'),
(51, 'header_hover_border', '#333333'),
(52, 'header_color', '#ffffff'),
(53, 'body_background', '#f9f9f9'),
(54, 'btn_color', '#ffffff'),
(55, 'btn_background_color', '#a84849'),
(56, 'btn_hover_color', '#ffffff'),
(57, 'btn_hover_background_color', '#c45a5b'),
(58, 'setting_header_color', '#ffffff'),
(59, 'setting_header_background', '#a84849'),
(60, 'setting_active_sidebar_color', '#ffffff'),
(61, 'setting_active_sidebar_background', '#a84849'),
(62, 'setting_sidebar_background', '#ffffff'),
(63, 'setting_sidebar_color', '#444444'),
(64, 'logo_extension', 'png'),
(65, 'online_sidebar', '1'),
(66, 'background_extension', 'jpg'),
(67, 'profile_privacy', '0'),
(68, 'video_upload', '1'),
(69, 'audio_upload', '1'),
(70, 'smtp_or_mail', 'mail'),
(71, 'smtp_username', ''),
(72, 'smtp_host', ''),
(73, 'smtp_password', ''),
(74, 'smtp_port', '587'),
(75, 'smtp_encryption', 'tls'),
(76, 'sms_or_email', 'mail'),
(77, 'sms_username', ''),
(78, 'sms_password', ''),
(79, 'sms_phone_number', ''),
(80, 'is_ok', '1'),
(81, 'pro', '0'),
(82, 'paypal_id', 'AZZEs9ApjO_iiY_DuC-TVtewqjxe8VgHheqtyptTOauZuIIWzSNQTxr53N0xYNck2tZYUKyBeywSU6F3'),
(83, 'paypal_secret', 'EFLs2fbu4j18UI8pHUzGORYWc_1TbP8VrRjNpkqCjRX77Jdtsi-wcjjtygpbtmXsAZkQNGGdh7-rEwmH'),
(84, 'paypal_mode', 'sandbox'),
(85, 'weekly_price', '3'),
(86, 'monthly_price', '8'),
(87, 'yearly_price', '89'),
(88, 'lifetime_price', '259'),
(89, 'post_limit', '40'),
(90, 'user_limit', '10'),
(91, 'css_upload', '0'),
(92, 'smooth_loading', '1'),
(93, 'header_search_color', '#0f1110'),
(94, 'header_button_shadow', '#ffffff'),
(95, 'currency', 'VND'),
(97, 'games', '0'),
(98, 'last_backup', '13-09-2020'),
(99, 'pages', '1'),
(100, 'groups', '1'),
(101, 'order_posts_by', '0'),
(102, 'btn_disabled', '#a84849'),
(103, 'developers_page', '0'),
(104, 'user_registration', '1'),
(105, 'maintenance_mode', '0'),
(106, 'video_chat', '0'),
(107, 'video_accountSid', ''),
(108, 'video_apiKeySid', ''),
(109, 'video_apiKeySecret', ''),
(110, 'video_configurationProfileSid', ''),
(111, 'eapi', ''),
(112, 'favicon_extension', 'png'),
(113, 'monthly_boosts', '5'),
(114, 'yearly_boosts', '20'),
(115, 'lifetime_boosts', '40'),
(116, 'chat_outgoing_background', '#fff9f9'),
(117, 'windows_app_version', '1.0'),
(118, 'widnows_app_api_id', 'c0fb5b2154f3213a53fe1017e53602bb'),
(119, 'widnows_app_api_key', '2fe899597d8a4dbd88beaaa604cf39c11264d285-e2f87ca295eaafad7ef27627586275f2-69012891'),
(120, 'stripe_id', ''),
(121, 'stripe_secret', ''),
(122, 'credit_card', 'no'),
(123, 'bitcoin', 'no'),
(124, 'm_withdrawal', '50'),
(125, 'amount_ref', '0.10'),
(126, 'affiliate_type', '0'),
(127, 'affiliate_system', '0'),
(128, 'classified', '0'),
(129, 'amazone_s3', '0'),
(130, 'bucket_name', ''),
(131, 'amazone_s3_key', ''),
(132, 'amazone_s3_s_key', ''),
(133, 'region', 'us-east-1'),
(134, 'alipay', 'no'),
(135, 'is_utf8', '1'),
(136, 'sms_t_phone_number', ''),
(137, 'audio_chat', '0'),
(138, 'sms_twilio_username', ''),
(139, 'sms_twilio_password', ''),
(140, 'sms_provider', 'twilio'),
(141, 'footer_background', ''),
(142, 'footer_background_2', ''),
(143, 'footer_text_color', ''),
(144, 'classified_currency', 'USD'),
(145, 'classified_currency_s', '$'),
(146, 'mime_types', 'text/plain,video/mp4,video/mov,video/mpeg,video/flv,video/avi,video/webm,audio/wav,audio/mpeg,video/quicktime,audio/mp3,image/png,image/jpeg,image/gif,application/pdf,application/msword,application/zip,application/x-rar-compressed,text/pdf,application/x-pointplus,text/css'),
(147, 'footer_background_n', ''),
(148, 'blogs', '1'),
(149, 'can_blogs', '0'),
(150, 'push', '0'),
(151, 'android_m_push_id', ''),
(152, 'android_m_push_key', ''),
(153, 'events', '1'),
(154, 'forum', '0'),
(155, 'last_update', '1554124551'),
(156, 'movies', '0'),
(157, 'yandex_translation_api', 'trnsl.1.1.20170601T212421Z.5834b565b8d47a18.2620528213fbf6ee3335f750659fc342e0ea7923'),
(158, 'update_db_15', '1503149537'),
(159, 'ad_v_price', '0.01'),
(160, 'ad_c_price', '0.05'),
(161, 'emo_cdn', 'https://cdnjs.cloudflare.com/ajax/libs/emojione/2.1.4/assets/png/'),
(162, 'user_ads', '0'),
(163, 'user_status', '0'),
(164, 'date_style', 'd-M-Y'),
(165, 'stickers', '0'),
(166, 'giphy_api', '420d477a542b4287b2bf91ac134ae041'),
(167, 'find_friends', '0'),
(168, 'update_db_152', '1504450479'),
(169, 'android_push_native', '0'),
(170, 'android_push_messages', '0'),
(171, 'update_db_153', 'updated'),
(172, 'ads_currency', 'VND'),
(173, 'web_push', '0'),
(174, 'playtube_url', 'https://playtubescript.com'),
(175, 'connectivitySystemLimit', '5000'),
(176, 'video_ad_skip', '6'),
(177, 'update_user_profile', '120'),
(178, 'cache_sidebar', '1'),
(179, 'android_n_push_id', ''),
(180, 'android_n_push_key', ''),
(181, 'ftp_host', ''),
(182, 'ftp_port', '21'),
(183, 'ftp_username', ''),
(184, 'ftp_password', ''),
(185, 'ftp_upload', '0'),
(186, 'ftp_endpoint', ''),
(187, 'ftp_path', './'),
(188, 'transaction_log', 'yes'),
(189, 'coinpayments_secret', ''),
(190, 'coinpayments_id', ''),
(191, 'infobip_username', ''),
(192, 'infobip_password', ''),
(193, 'updatev2', 'done'),
(194, 'amount_percent_ref', '0'),
(195, 'gift_system', '0'),
(196, 'social_share_twitter', '1'),
(197, 'social_share_google', '1'),
(198, 'social_share_facebook', '1'),
(199, 'social_share_whatsup', '1'),
(200, 'social_share_pinterest', '1'),
(201, 'social_share_linkedin', '1'),
(202, 'social_share_telegram', '1'),
(203, 'stickers_system', '0'),
(204, 'dollar_to_point_cost', '1000'),
(205, 'comments_point', '10'),
(206, 'likes_point', '5'),
(207, 'dislikes_point', '2'),
(208, 'wonders_point', '3'),
(209, 'reaction_point', '5'),
(210, 'createpost_point', '15'),
(211, 'point_allow_withdrawal', '0'),
(212, 'sticky_video_player', '0'),
(213, 'point_level_system', '0'),
(214, 'comment_reports', '1'),
(215, 'popular_posts', '0'),
(216, 'auto_friend_users', ''),
(217, 'spaces_key', ''),
(218, 'spaces_secret', ''),
(219, 'space_name', ''),
(220, 'space_region', ''),
(221, 'spaces', '0'),
(222, 'watermark', '1'),
(223, 'google_map', '0'),
(224, 'login_auth', '0'),
(225, 'two_factor', '1'),
(226, 'two_factor_type', 'email'),
(227, 'last_notification_delete_run', '1601032561'),
(228, 'ios_push_messages', '0'),
(229, 'ios_m_push_id', ''),
(230, 'ios_m_push_key', ''),
(231, 'ios_push_native', '0'),
(232, 'ios_n_push_id', ''),
(233, 'ios_n_push_key', ''),
(234, 'web_push_id', ''),
(235, 'web_push_key', ''),
(236, 'profile_back', '0'),
(237, 'free_day_limit', '1000'),
(238, 'adult_images', '0'),
(239, 'adult_images_action', '1'),
(240, 'adult_images_file', ''),
(241, 'pro_day_limit', '2000'),
(242, 'vision_api_key', ''),
(243, 'bank_payment', 'yes'),
(244, 'bank_transfer_note', 'In order to confirm the bank transfer, you will need to upload a receipt or take a screenshot of your transfer within 1 day from your payment date. If a bank transfer is made but no receipt is uploaded within this period, your order will be cancelled. We will verify and confirm your receipt within 3 working days from the date you upload it.'),
(245, 'bank_description', '<div class=\"bank_info\">\r\n                        <div class=\"dt_settings_header bg_gradient\">\r\n                            <div class=\"dt_settings_circle-1\"></div>\r\n                            <div class=\"dt_settings_circle-2\"></div>\r\n                            <div class=\"bank_info_innr\">\r\n                                <svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\"><path fill=\"currentColor\" d=\"M11.5,1L2,6V8H21V6M16,10V17H19V10M2,22H21V19H2M10,10V17H13V10M4,10V17H7V10H4Z\"></path></svg>\r\n                                <h4 class=\"bank_name\">Garanti Bank</h4>\r\n                                <div class=\"row\">\r\n                                    <div class=\"col col-md-12\">\r\n                                        <div class=\"bank_account\">\r\n                                            <p>4796824372433055</p>\r\n                                            <span class=\"help-block\">Account number / IBAN</span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"col col-md-12\">\r\n                                        <div class=\"bank_account_holder\">\r\n                                            <p>Antoian Kordiyal</p>\r\n                                            <span class=\"help-block\">Account name</span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"col col-md-6\">\r\n                                        <div class=\"bank_account_code\">\r\n                                            <p>TGBATRISXXX</p>\r\n                                            <span class=\"help-block\">Routing code</span>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class=\"col col-md-6\">\r\n                                        <div class=\"bank_account_country\">\r\n                                            <p>United States</p>\r\n                                            <span class=\"help-block\">Country</span>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>'),
(246, 'recaptcha_secret_key', ''),
(247, 'createblog_point', '15'),
(248, 'deepsound_url', 'https://deepsoundscript.com'),
(249, 'english', '1'),
(250, 'arabic', '1'),
(251, 'dutch', '1'),
(252, 'french', '1'),
(253, 'german', '1'),
(254, 'italian', '1'),
(255, 'portuguese', '1'),
(256, 'russian', '1'),
(257, 'spanish', '1'),
(258, 'turkish', '1'),
(259, 'currency_array', '[\"USD\",\"EUR\",\"VND\"]'),
(260, 'currency_symbol_array', '{\"USD\":\"$\",\"EUR\":\"u20ac\",\"VND\":\"\\u0111\"}'),
(261, 'paypal_currency', 'USD'),
(262, 'stripe_currency', 'USD'),
(263, '2checkout_currency', 'VND'),
(264, 'version', '3.0.4'),
(265, 'forum_visibility', '0'),
(266, 'events_visibility', '1'),
(267, 'product_visibility', '0'),
(268, 'paypal', 'yes'),
(269, 'poke_system', '0'),
(270, 'afternoon_system', '0'),
(271, 'providers_array', ''),
(272, 'colored_posts_system', '1'),
(273, 'checkout_payment', 'no'),
(274, 'checkout_mode', 'sandbox'),
(275, 'checkout_seller_id', ''),
(276, 'checkout_publishable_key', ''),
(277, 'checkout_private_key', ''),
(278, 'job_system', '0'),
(279, 'weather_widget', '0'),
(280, 'common_things', '0'),
(281, 'funding_system', '0'),
(282, 'weather_key', ''),
(283, 'funding_request', 'verified'),
(284, 'donate_percentage', '0'),
(285, 'post_approval', '1'),
(286, 'auto_page_like', ''),
(287, 'auto_group_join', ''),
(288, 'memories_system', '0'),
(289, 'membership_system', '0'),
(290, 'recurring_payment', 'off'),
(291, 'who_upload', 'all'),
(292, 'Who_call', 'all'),
(293, 'blog_approval', '1'),
(294, 'refund_system', 'off'),
(295, 'paystack_payment', 'no'),
(296, 'paystack_secret_key', ''),
(297, 'cashfree_payment', 'no'),
(298, 'cashfree_client_key', ''),
(299, 'cashfree_secret_key', ''),
(300, 'msg91_authKey', ''),
(301, 'offer_system', '0'),
(302, 'nearby_shop_system', '0'),
(303, 'nearby_business_system', '0'),
(304, 'prevent_system', '1'),
(305, 'bad_login_limit', '4'),
(306, 'lock_time', '10'),
(307, 'password_complexity_system', '0'),
(308, 'invite_links_system', '0'),
(309, 'user_links_limit', '10'),
(310, 'expire_user_links', 'month'),
(311, 'shout_box_system', '0'),
(312, 'bank_withdrawal_system', '0'),
(313, 'live_video', '1'),
(314, 'live_token', ''),
(315, 'live_account_id', ''),
(316, 'razorpay_payment', 'no'),
(317, 'razorpay_key_id', ''),
(318, 'razorpay_key_secret', ''),
(319, 'paysera_payment', 'no'),
(320, 'paysera_project_id', ''),
(321, 'paysera_sign_password', ''),
(322, 'paysera_mode', '1'),
(323, 'cloud_upload', '0'),
(324, 'cloud_file_path', ''),
(325, 'cloud_bucket_name', ''),
(326, 'live_video_save', '1'),
(327, 'notify_new_post', '0'),
(328, 'agora_app_id', ''),
(329, 'agora_live_video', '0'),
(330, 'millicast_live_video', '0'),
(331, 'agora_customer_id', ''),
(332, 'agora_customer_certificate', ''),
(333, 'yahoo_consumer_key', ''),
(334, 'yahoo_consumer_secret', ''),
(335, 'cashfree_mode', 'sandBox'),
(336, 'amazone_s3_2', '0'),
(337, 'bucket_name_2', ''),
(338, 'amazone_s3_key_2', ''),
(339, 'amazone_s3_s_key_2', ''),
(340, 'region_2', 'eu-west-1'),
(341, 'vietnamese', '1'),
(342, 'france', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_CustomPages`
--

CREATE TABLE `Wo_CustomPages` (
  `id` int(11) NOT NULL,
  `page_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_content` text COLLATE utf8_unicode_ci,
  `page_type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Custom_Fields`
--

CREATE TABLE `Wo_Custom_Fields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(50) DEFAULT '',
  `length` int(11) NOT NULL DEFAULT '0',
  `placement` varchar(50) NOT NULL DEFAULT '',
  `required` varchar(11) NOT NULL DEFAULT 'on',
  `options` text,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Custom_Fields`
--

INSERT INTO `Wo_Custom_Fields` (`id`, `name`, `description`, `type`, `length`, `placement`, `required`, `options`, `active`) VALUES
(1, 'Tên gian hàng', 'Tên ngắn gọn', 'textbox', 32, 'page', 'on', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Egoing`
--

CREATE TABLE `Wo_Egoing` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Einterested`
--

CREATE TABLE `Wo_Einterested` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Einvited`
--

CREATE TABLE `Wo_Einvited` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `inviter_id` int(11) NOT NULL,
  `invited_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Emails`
--

CREATE TABLE `Wo_Emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `email_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Events`
--

CREATE TABLE `Wo_Events` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `location` varchar(300) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `poster_id` int(11) NOT NULL,
  `cover` varchar(500) NOT NULL DEFAULT 'upload/photos/d-cover.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Events`
--

INSERT INTO `Wo_Events` (`id`, `name`, `location`, `description`, `start_date`, `start_time`, `end_date`, `end_time`, `poster_id`, `cover`) VALUES
(1, 'Cuộc họp lúc 10h sáng', 'Phòng họp 1', 'Họp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCDHọp ABCD', '2020-09-10', '11:13:00', '2020-09-11', '06:17:00', 1, 'upload/photos/2020/09/Q2OtGK47SYIYKgryLBE8_10_ce3b9aee6faea340664d8772c3f11712_cover.png'),
(2, 'Cuộc họp 2', 'Phòng họp 1', 'Mô tả cuộc họp 2', '2020-09-10', '19:50:00', '2020-09-11', '06:15:00', 1, 'upload/photos/2020/09/JYetvd95T5udVO6No5Fz_10_0b7222340fb494884d5f54c71c596bbd_cover.png');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Family`
--

CREATE TABLE `Wo_Family` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `member` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `requesting` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Family`
--

INSERT INTO `Wo_Family` (`id`, `member_id`, `member`, `active`, `user_id`, `requesting`) VALUES
(1, 2, 2, '0', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Followers`
--

CREATE TABLE `Wo_Followers` (
  `id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL DEFAULT '0',
  `follower_id` int(11) NOT NULL DEFAULT '0',
  `is_typing` int(11) NOT NULL DEFAULT '0',
  `active` int(255) NOT NULL DEFAULT '1',
  `notify` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Forums`
--

CREATE TABLE `Wo_Forums` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `sections` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_ForumThreadReplies`
--

CREATE TABLE `Wo_ForumThreadReplies` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `poster_id` int(11) NOT NULL DEFAULT '0',
  `post_subject` varchar(300) NOT NULL DEFAULT '',
  `post_text` text NOT NULL,
  `post_quoted` int(11) NOT NULL DEFAULT '0',
  `posted_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Forum_Sections`
--

CREATE TABLE `Wo_Forum_Sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(300) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Forum_Threads`
--

CREATE TABLE `Wo_Forum_Threads` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  `headline` varchar(300) NOT NULL DEFAULT '',
  `post` text NOT NULL,
  `posted` varchar(20) NOT NULL DEFAULT '0',
  `last_post` int(11) NOT NULL DEFAULT '0',
  `forum` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Funding`
--

CREATE TABLE `Wo_Funding` (
  `id` int(11) NOT NULL,
  `hashed_id` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(600) NOT NULL DEFAULT '',
  `amount` varchar(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(200) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Funding`
--

INSERT INTO `Wo_Funding` (`id`, `hashed_id`, `title`, `description`, `amount`, `user_id`, `image`, `time`) VALUES
(1, 'WyxDHpBbv15MH7s', 'Meeting with IoTlink', 'Cho tien abcd', '400', 2, 'upload/photos/2020/06/E4aE7fQ6eqGmwqvDOSUQ_30_548cedc53f3695bd3da5cf8ee45c6671_image.jpg', '1593508514');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Funding_Raise`
--

CREATE TABLE `Wo_Funding_Raise` (
  `id` int(11) NOT NULL,
  `funding_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` varchar(11) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Games`
--

CREATE TABLE `Wo_Games` (
  `id` int(11) NOT NULL,
  `game_name` varchar(50) NOT NULL,
  `game_avatar` varchar(100) NOT NULL,
  `game_link` varchar(100) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Games_Players`
--

CREATE TABLE `Wo_Games_Players` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `game_id` int(11) NOT NULL DEFAULT '0',
  `last_play` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Gender`
--

CREATE TABLE `Wo_Gender` (
  `id` int(11) NOT NULL,
  `gender_id` varchar(50) NOT NULL DEFAULT '0',
  `image` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Gifts`
--

CREATE TABLE `Wo_Gifts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `media_file` varchar(250) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_GroupAdmins`
--

CREATE TABLE `Wo_GroupAdmins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `general` int(11) NOT NULL DEFAULT '1',
  `privacy` int(11) NOT NULL DEFAULT '1',
  `avatar` int(11) NOT NULL DEFAULT '1',
  `members` int(11) NOT NULL DEFAULT '0',
  `analytics` int(11) NOT NULL DEFAULT '1',
  `delete_group` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_GroupChat`
--

CREATE TABLE `Wo_GroupChat` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` varchar(3000) NOT NULL DEFAULT 'upload/photos/d-group.jpg',
  `time` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_GroupChatUsers`
--

CREATE TABLE `Wo_GroupChatUsers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `active` enum('1','0') NOT NULL DEFAULT '1',
  `last_seen` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Groups`
--

CREATE TABLE `Wo_Groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `group_title` varchar(40) NOT NULL DEFAULT '',
  `avatar` varchar(120) NOT NULL DEFAULT 'upload/photos/d-group.jpg ',
  `cover` varchar(120) NOT NULL DEFAULT 'upload/photos/d-cover.jpg  ',
  `about` varchar(550) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT '1',
  `sub_category` varchar(50) NOT NULL DEFAULT '',
  `privacy` enum('1','2') NOT NULL DEFAULT '1',
  `join_privacy` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Groups`
--

INSERT INTO `Wo_Groups` (`id`, `user_id`, `group_name`, `group_title`, `avatar`, `cover`, `about`, `category`, `sub_category`, `privacy`, `join_privacy`, `active`, `registered`) VALUES
(2, 1, 'surf2020com', 'SURF2020 COMPANY', 'upload/photos/d-group.jpg ', 'upload/photos/d-cover.jpg  ', '', 6, '', '2', '2', '1', '9/2020'),
(3, 1, 'groupabcd', 'Nhóm Du lịch Đường Sông', 'upload/photos/d-group.jpg ', 'upload/photos/d-cover.jpg  ', 'Thông tin mô tả về nhóm', 5, '', '1', '1', '1', '9/2020'),
(4, 1, 'groupTestAPI', 'Nhóm tạo từ API', 'upload/photos/d-group.jpg ', 'upload/photos/d-cover.jpg  ', 'Thông tin mô tả về nhóm', 5, '', '1', '1', '1', '9/2020');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Groups_Categories`
--

CREATE TABLE `Wo_Groups_Categories` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Groups_Categories`
--

INSERT INTO `Wo_Groups_Categories` (`id`, `lang_key`) VALUES
(2, '1420'),
(3, '1423'),
(4, '1426'),
(5, '1429'),
(6, '1432'),
(7, '1435'),
(8, '1438'),
(9, '1441'),
(10, '1444'),
(11, '1447'),
(12, '1450'),
(13, '1453'),
(14, '1456'),
(15, '1459'),
(16, '1462'),
(17, '1465'),
(18, '1468');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Group_Members`
--

CREATE TABLE `Wo_Group_Members` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wo_Group_Members`
--

INSERT INTO `Wo_Group_Members` (`id`, `user_id`, `group_id`, `time`, `active`) VALUES
(2, 1, 2, 1599757783, '0'),
(3, 1, 2, 1599757783, '1'),
(4, 5, 2, 1599757854, '1'),
(5, 2, 2, 1599757856, '1'),
(6, 1, 3, 1600022051, '1'),
(7, 1, 4, 1600022342, '1');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Hashtags`
--

CREATE TABLE `Wo_Hashtags` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `last_trend_time` int(11) NOT NULL DEFAULT '0',
  `trend_use_num` int(11) NOT NULL DEFAULT '0',
  `expire` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Hashtags`
--

INSERT INTO `Wo_Hashtags` (`id`, `hash`, `tag`, `last_trend_time`, `trend_use_num`, `expire`) VALUES
(1, '0cc175b9c0f1b6a831c399e269772661', 'a', 1599746506, 1, '2020-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_HiddenPosts`
--

CREATE TABLE `Wo_HiddenPosts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Invitation_Links`
--

CREATE TABLE `Wo_Invitation_Links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `invited_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(300) NOT NULL DEFAULT '',
  `time` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Job`
--

CREATE TABLE `Wo_Job` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `location` varchar(100) NOT NULL DEFAULT '',
  `lat` varchar(50) NOT NULL DEFAULT '',
  `lng` varchar(50) NOT NULL DEFAULT '',
  `minimum` varchar(50) NOT NULL DEFAULT '0',
  `maximum` varchar(50) NOT NULL DEFAULT '0',
  `salary_date` varchar(50) NOT NULL DEFAULT '',
  `job_type` varchar(50) NOT NULL DEFAULT '',
  `category` varchar(50) NOT NULL DEFAULT '',
  `question_one` varchar(200) NOT NULL DEFAULT '',
  `question_one_type` varchar(100) NOT NULL DEFAULT '',
  `question_one_answers` text,
  `question_two` varchar(200) NOT NULL DEFAULT '',
  `question_two_type` varchar(100) NOT NULL DEFAULT '',
  `question_two_answers` text,
  `question_three` varchar(200) NOT NULL DEFAULT '',
  `question_three_type` varchar(100) NOT NULL DEFAULT '',
  `question_three_answers` text,
  `description` text,
  `image` varchar(300) NOT NULL DEFAULT '',
  `image_type` varchar(11) NOT NULL DEFAULT '',
  `currency` varchar(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `time` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Job_Apply`
--

CREATE TABLE `Wo_Job_Apply` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `job_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(100) NOT NULL DEFAULT '',
  `phone_number` varchar(50) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `question_one_answer` varchar(200) NOT NULL DEFAULT '',
  `question_two_answer` varchar(200) NOT NULL DEFAULT '',
  `question_three_answer` varchar(200) NOT NULL DEFAULT '',
  `position` varchar(100) NOT NULL DEFAULT '',
  `where_did_you_work` varchar(100) NOT NULL DEFAULT '',
  `experience_description` varchar(300) NOT NULL DEFAULT '',
  `experience_start_date` varchar(50) NOT NULL DEFAULT '',
  `experience_end_date` varchar(50) NOT NULL DEFAULT '',
  `time` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Job_Categories`
--

CREATE TABLE `Wo_Job_Categories` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Job_Categories`
--

INSERT INTO `Wo_Job_Categories` (`id`, `lang_key`) VALUES
(1, '1580'),
(2, '1581'),
(3, '1582'),
(4, '1583'),
(5, '1584'),
(6, '1585'),
(7, '1586'),
(8, '1587'),
(9, '1588'),
(10, '1589'),
(11, '1590'),
(12, '1591'),
(13, '1592'),
(14, '1593'),
(15, '1594'),
(16, '1595'),
(17, '1596'),
(18, '1597'),
(19, '1598'),
(20, '1599'),
(21, '1600'),
(22, '1601'),
(23, '1602');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Langs`
--

CREATE TABLE `Wo_Langs` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `english` text,
  `france` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `vietnamese` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Langs`
--

INSERT INTO `Wo_Langs` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(1, 'login', '', 'Login', 'S&#039;identifier', 'Đăng nhập'),
(2, 'register', '', 'Register', 'Enregistrez', 'Đăng ký'),
(3, 'guest', '', 'Guest', 'Client', 'Khách'),
(4, 'username', '', 'Username', 'le nom d&#039;utilisateur', 'Tài khoản'),
(5, 'email', '', 'E-mail', 'E-mail', 'E-mail'),
(6, 'password', '', 'Password', 'Mot de passe', 'Mật khẩu'),
(7, 'new_password', '', 'New password', 'Nouveau mot de passe', 'Mật khẩu mới'),
(8, 'remember_me', '', 'Remember me', 'Souviens-toi de moi', 'Nhớ tôi'),
(9, 'or_login_with', '', 'Or login with', 'Ou connectez-vous avec', 'Hoặc đăng nhập với'),
(10, 'forget_password', '', 'Forgot Password?', 'Mot de passe oublié?', 'Quên mật khẩu?'),
(11, 'email_address', '', 'E-mail address', 'E-mail address', 'Địa chỉ E-mail'),
(12, 'confirm_password', '', 'Confirm Password', 'Confirmez le mot de passe', 'Nhập lại Mật khẩu'),
(13, 'lets_go', '', 'Let&#039;s Go !', 'Allons-y!', 'Bắt đầu nào !'),
(14, 'recover_password', '', 'Recover', 'Récupérer', 'Khôi phục'),
(15, 'reset_new_password_label', '', 'Reset Your Password', 'Réinitialisez votre mot de passe', 'Đặt lại Mật khẩu'),
(16, 'reset_password', '', 'Reset', 'Réinitialiser', 'Khởi động lại'),
(17, 'invalid_token', '', 'Invalid Token', 'Jeton Invalide', 'Token không hợp lệ'),
(18, 'incorrect_username_or_password_label', '', 'Incorrect username or password', 'Identifiant ou mot de passe incorrect', 'Tên Tài khoản đăng nhập hoặc Mật khẩu không chính xác'),
(19, 'account_disbaled_contanct_admin_label', '', 'Your account has been disabled, please contact us .', 'Votre compte a été désactivé, s&#039;il vous plaît contactez-nous .', 'Tài khoản của bạn đã bị vô hiệu hóa, vui lòng liên hệ với chúng tôi.'),
(20, 'account_not_active_label', '', 'You have to activate your account.', 'Vous devez activer votre compte.', 'Bạn phải kích hoạt tài khoản của bạn.'),
(21, 'successfully_logged_label', '', 'Successfully Logged in, Please wait..', 'Connecté avec succès, S&#039;il vous plaît attendre..', 'Đăng nhập thành công, vui lòng đợi ..'),
(22, 'please_check_details', '', 'Please check your details.', 'S&#039;il vous plaît vérifier vos coordonnées.', 'Xin vui lòng kiểm tra thông tin chi tiết của bạn.'),
(23, 'username_exists', '', 'Username is already exists.', 'Nom d&#039;utilisateur est existe déjà.', 'Tài khoản người dùng đã tồn tại.'),
(24, 'username_characters_length', '', 'Username must be between 5 / 32', 'Nom d&#039;utilisateur doit être comprise entre 5/32', 'Tài khoản người dùng phải từ 5 đến 32 ký tự'),
(25, 'username_invalid_characters', '', 'Invalid username characters', 'Caractères de nom d&#039;utilisateur non valides', 'Tài khoản người dùng chứa ký tự không hợp lệ'),
(26, 'password_invalid_characters', '', 'Invalid password characters', 'Caractères de mot de passe invalide', 'Mật khẩu chứa ký tự không hợp lệ'),
(27, 'email_exists', '', 'This e-mail is already in use', 'Cet e-mail est déjà utilisée', 'E-mail này đã được sử dụng'),
(28, 'email_invalid_characters', '', 'This e-mail is invalid.', 'Cet e-mail est invalide.', 'E-mail này không hợp lệ.'),
(29, 'password_short', '', 'Password is too short.', 'Mot de passe est trop court.', 'Mật khẩu quá ngắn.'),
(30, 'password_mismatch', '', 'Password not match.', 'Mot de passe ne correspond.', 'Mật khẩu không khớp.'),
(31, 'reCaptcha_error', 'Please check the re-captcha.', 'Please check the re-captcha.', 'S&#039;il vous plaît vérifier le re-captcha.', 'Hãy kiểm tra mã re-captcha.'),
(32, 'successfully_joined_label', '', 'Successfully joined, Please wait..', 'Réussir rejoint, S&#039;il vous plaît attendre..', 'Đã tham gia thành công, vui lòng đợi ..'),
(33, 'account_activation', '', 'Account Activation', 'Activation de compte', 'Kích hoạt tài khoản'),
(34, 'successfully_joined_verify_label', '', 'Registration successful! We have sent you an email, Please check your inbox/spam to verify your email.', 'Inscription réussi! Nous vous avons envoyé un e-mail, S&#039;il vous plaît vérifier votre boîte de réception / spam pour vérifier votre email.', 'Đăng ký thành công! Chúng tôi đã gửi cho bạn một email, Vui lòng kiểm tra hộp thư đến / thư rác để xác minh email của bạn.'),
(35, 'email_not_found', '', 'We can&#039;t find this email.', 'Nous ne pouvons pas trouver cet e-mail.', 'Chúng tôi không thể tìm thấy email này.'),
(36, 'password_rest_request', '', 'Password reset request', 'Demande de réinitialisation de mot', 'Yêu cầu đặt lại mật khẩu'),
(37, 'email_sent', '', 'E-mail has been sent successfully', 'Le courriel a été envoyé avec succès', 'Email đã được gửi thành công'),
(38, 'processing_error', '', 'An error found while processing your request, please try again later.', 'Une erreur est survenue lors du traitement de votre demande, s&#039;il vous plaît réessayer plus tard.', 'Một lỗi được phát sinh trong khi xử lý yêu cầu của bạn, vui lòng thử lại sau.'),
(39, 'password_changed', '', 'Password successfully changed !', 'Mot de passe changé avec succès !', 'Mật khẩu đã được thay đổi thành công !'),
(40, 'please_choose_correct_date', '', 'Please choose a correct date.', 'S&#039;il vous plaît choisir une date correcte.', 'Vui lòng chọn một ngày chính xác.'),
(41, 'setting_updated', '', 'Setting successfully updated !', 'Réglage de mise à jour avec succès !', 'Cấu hình được cập nhật thành công !'),
(42, 'current_password_mismatch', '', 'Current password not match', 'Mot de passe actuel ne correspond pas', 'Mật khẩu hiện tại không khớp'),
(43, 'website_invalid_characters', '', 'Website is invalid.', 'Site Web est invalide.', 'Trang web không hợp lệ.'),
(44, 'account_deleted', '', 'Account successfully deleted, please wait..', 'Compte supprimé avec succès, s&#039;il vous plaît patienter..', 'Tài khoản đã xóa thành công, vui lòng đợi ..'),
(45, 'home', '', 'Home', 'Domicile', 'Trang chủ'),
(46, 'advanced_search', '', 'Advanced Search', 'Recherche Avancée', 'Tìm kiếm nâng cao'),
(47, 'search_header_label', '', 'Search for people, pages, groups and #hashtags', 'Recherche de personnes, et les choses #hashtags', 'Tìm kiếm Người, Trang, Nhóm và #hashtags'),
(48, 'no_result', '', 'No result found', 'Aucun résultat trouvé', 'Không có kết quả nào'),
(49, 'last_seen', '', 'Last Seen:', 'Dernière Visite:', 'Nhìn thấy lần cuối:'),
(50, 'accept', '', 'Accept', 'Acceptez', 'Chấp nhận'),
(51, 'cancel', '', 'Cancel', 'Annuler', 'Hủy bỏ'),
(52, 'delete', '', 'Delete', 'Effacer', 'Xóa'),
(53, 'my_profile', '', 'My Profile', 'Mon profil', 'Thông tin cá nhân của tôi'),
(54, 'saved_posts', '', 'Saved Posts', 'Messages Enregistrés', 'Bài viết đã lưu'),
(55, 'setting', '', 'Settings', 'Réglage', 'Cấu hình'),
(56, 'admin_area', '', 'Admin Area', 'Admin Area', 'Khu vực Quản trị Hệ thống'),
(57, 'log_out', '', 'Log Out', 'Se déconnecter', 'Thoát khỏi Hệ thống'),
(58, 'no_new_notification', '', 'You do not have any notifications', 'Vous ne disposez pas de toutes les notifications', 'Bạn không có bất kỳ thông báo nào'),
(59, 'no_new_requests', '', 'You do not have any requests', 'Vous ne disposez pas de toutes les demandes', 'Bạn không có bất kỳ yêu cầu'),
(60, 'followed_you', '', 'followed you', 'je t&#039;ai suivi', 'đã theo dõi bạn'),
(61, 'comment_mention', '', 'mentioned you on a comment.', 'vous avez mentionné sur un commentaire.', 'đề cập đến bạn trong một bình luận.'),
(62, 'post_mention', '', 'mentioned you on a post.', 'vous avez mentionné sur un poteau.', 'đề cập đến bạn trong một bài viết.'),
(63, 'posted_on_timeline', '', 'posted on your timeline.', 'posté sur votre timeline.', 'đăng lên dòng thời gian của bạn.'),
(64, 'profile_visted', '', 'visited your profile.', 'visité votre profil.', 'đã truy cập hồ sơ của bạn.'),
(65, 'accepted_friend_request', '', 'accepted your friend request.', 'accepté votre demande d&#039;ami.', 'chấp nhận yêu cầu kết bạn của bạn'),
(66, 'accepted_follow_request', '', 'accepted your follow request.', 'accepté votre demande de suivi.', 'chấp nhận yêu cầu theo dõi của bạn'),
(67, 'liked_comment', '', 'liked your comment &quot;{comment}&quot;', 'aimé votre commentaire &quot;{comment}&quot;', 'đã thích bình luận &quot;{comment}&quot;'),
(68, 'wondered_comment', '', 'wondered your comment &quot;{comment}&quot;', 'demandé votre commentaire &quot;{comment}&quot;', 'bày tỏ cảm xúc về &quot;{comment}&quot; của bạn'),
(69, 'liked_post', '', 'liked your {postType} {post}', 'aimé votre {postType} {post}', 'đã thích {postType} {post}'),
(70, 'wondered_post', '', 'wondered your {postType} {post}', 'demandé votre {postType} {post}', 'đã bày tỏ cảm xúc về {postType} {post}'),
(71, 'share_post', '', 'shared your {postType} {post}', 'partagé votre {postType} {post}', 'đã chia sẻ {postType} {post}'),
(72, 'commented_on_post', '', 'commented on your {postType} {post}', 'commenté sur votre {postType} {post}', 'đã bình luận trên {postType} {post}'),
(73, 'activity_liked_post', '', 'liked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'aimé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã thích &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của{user}.'),
(74, 'activity_wondered_post', '', 'wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'demandé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã cảm xúc trên &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của {user}.'),
(75, 'activity_share_post', '', 'shared {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'partagé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã chia sẻ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của {user}'),
(76, 'activity_commented_on_post', '', 'commented on {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'commenté sur {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã bình luận trên &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của {user}.'),
(77, 'video_n_label', '', 'video.', 'vidéo.', 'video.'),
(78, 'post_n_label', '', 'post.', 'poster.', 'bài viết.'),
(79, 'photo_n_label', '', 'photo.', 'photo.', 'hình.'),
(80, 'file_n_label', '', 'file.', 'fichier.', 'file.'),
(81, 'vine_n_label', '', 'vine video.', 'vine vidéo.', 'vine video.'),
(82, 'sound_n_label', '', 'sound.', 'du son.', 'âm thanh.'),
(83, 'avatar_n_label', '', 'profile picture.', 'Photo de profil.', 'ảnh đại diện.'),
(84, 'error_not_found', '', '404 Error', '404 Erreur', 'lỗi 404'),
(85, 'sorry_page_not_found', '', 'Sorry, page not found!', 'Désolé, page introuvable!', 'Sorry, page not found!'),
(86, 'page_not_found', '', 'The page you are looking for could not be found. Please check the link you followed to get here and try again.', 'La page que vous recherchez n&#039;a pu être trouvée. S&#039;il vous plaît vérifier le lien que vous avez suivi pour arriver ici et essayez à nouveau.', 'Không tìm thấy trang bạn đang tìm kiếm. Vui lòng kiểm tra liên kết bạn đã theo dõi để  thử lại.'),
(87, 'your_account_activated', '', 'Your account have been successfully activated!', 'Votre compte a été activé avec succès!', 'Tài khoản của bạn đã được kích hoạt thành công!'),
(88, 'free_to_login', '', 'You&#039;r free to &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !', 'Votre libre &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !', 'Bạn được miễn phí &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !'),
(89, 'general_setting', '', 'General Setting', 'Cadre général', 'Cài đặt chung'),
(90, 'login_setting', '', 'Login Setting', 'Connexion Cadre', 'Cài đặt đăng nhập'),
(91, 'manage_users', '', 'Manage Users', 'gérer les utilisateurs', 'Quản lý người dùng'),
(92, 'manage_posts', '', 'Manage Posts', 'gérer les messages', 'Quản lý bài viết'),
(93, 'manage_reports', '', 'Manage Reports', 'gérer les rapports', 'Quản lý báo cáo'),
(94, 'advertisement', '', 'Advertisement', 'Publicité', 'Quảng cáo'),
(95, 'more', '', 'More', 'Plus', 'Xem thêm'),
(96, 'cache_system', '', 'Cache System', 'Système de cache', 'Hệ thống Cache'),
(97, 'chat_system', '', 'Chat System', 'système chat', 'Hệ thống Chat'),
(98, 'email_validation', '', 'Email validation', 'Email de validation', 'Email xác thực'),
(99, 'email_notification', '', 'Email notification', 'Notification par courriel', 'Email thông báo'),
(100, 'smooth_links', '', 'Smooth links', 'liens lisses', 'Liên kết mượt mà'),
(101, 'seo_friendly_url', '', 'SEO friendly url', 'SEO URL conviviale', 'SEO friendly url'),
(102, 'file_sharing', '', 'File sharing', 'Partage de fichier', 'Chia sẻ File'),
(103, 'themes', '', 'Themes', 'thèmes', 'Giao diện'),
(104, 'user_setting', '', 'User Settings', 'Paramètres utilisateur', 'Cấu hình Người dùng'),
(105, 'site_setting', '', 'Site Setting', 'site Cadre', 'Thiết lập Trang web'),
(106, 'cache_setting_info', '', 'Enable cache system to speed up your website, Recommended more than 10,000 active users.', 'Activer système de cache pour accélérer votre site, a recommandé plus de 10.000 utilisateurs actifs.', 'Kích hoạt hệ thống bộ đệm Cache để tăng tốc trang web của bạn, Được đề xuất khi có hơn 10.000 người dùng hoạt động.'),
(107, 'chat_setting_info', '', 'Enable chat system to chat with friends on the buttom of the page', 'Activer système chat pour discuter avec des amis sur le fond de la page', 'Bật hệ thống trò chuyện để trò chuyện với bạn bè trên của trang'),
(108, 'email_validation_info', '', 'Enable email validation to send activation link when user registred.', 'Activer la validation de messagerie pour envoyer le lien d&#039;activation lorsque l&#039;utilisateur référencée.', 'Bật chức năng xác thực email để gửi liên kết kích hoạt khi người dùng đăng ký.'),
(109, 'email_notification_info', '', 'Enable email notification to send user notification via email.', 'Activer la notification par e-mail pour envoyer une notification par e-mail de l&#039;utilisateur.', 'Bật chức năng gửi thông báo đến người dùng qua email.'),
(110, 'smooth_links_info', '', 'Enable smooth links, e.g.{site_url}/home.', 'Activer les liens lisses, e.g.http://localhost/wowonder_update/home.', 'Bật chức năng smooth links, ví dụ: {site_url}/home.'),
(111, 'seo_frindly_info', '', 'Enable SEO friendly url, e.g.{site_url}//1_hello-how-are-you-doing.html', 'Activer SEO URL conviviale, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html', 'Bật chức năng SEO friendly url, ví dụ: {site_url}//1_hello-how-are-you-doing.html'),
(112, 'file_sharing_info', '', 'Enable File sharing to share &amp; upload videos,images,files,sounds, etc..', 'Activez le partage de fichiers pour partager et télécharger des vidéos, des images, des fichiers, des sons, etc...', 'Bật chức năng chia sẻ File để chia sẻ và tải lên video, hình ảnh, File, âm thanh, v.v.'),
(113, 'cache', '', 'Cache', 'Cache', 'Cache'),
(114, 'site_information', '', 'Site Information', 'Informations sur le site', 'Thông tin Trang Web'),
(115, 'site_title_name', '', 'Site Name &amp; Title:', 'Site Nom et titre:', 'Tên trang &amp; tiêu đề:'),
(116, 'site_name', '', 'Site name', 'Nom du site', 'Tên trang Web'),
(117, 'site_title', '', 'Site title', 'Titre du site', 'Tiêu đề Trang Web'),
(118, 'site_keywords_description', '', 'Site Keywords &amp; Description:', 'Site Mots-clés et description:', 'Từ khóa &amp; Mô tả Trang web:'),
(119, 'site_keywords', '', 'Site Keywords', 'site Mots-clés (eg: social,wownder ..)', 'Từ khóa'),
(120, 'site_description', '', 'Site Description', 'description du site', 'Mô tả trang Web'),
(121, 'site_email', '', 'Site E-mail', 'Site E-mail', 'E-mail trang Web'),
(122, 'site_lang', '', 'Default Language', 'Langage par défaut', 'Ngôn ngữ mặc định'),
(123, 'theme_setting', '', 'Theme Setting', 'thème Cadre', 'Thiết lập Giao diện'),
(124, 'activeted', '', 'Activated', 'Activeted', 'Đã kích hoạt'),
(125, 'version', '', 'Version:', 'Version:', 'Phiên bản:'),
(126, 'author', '', 'Author:', 'Auteur:', 'Tác giả:'),
(127, 'user_status', '', 'User status', 'Le statut de l&#039;utilisateur', 'Trạng thái người dùng'),
(128, 'online_lastseen', '', '(online/last seen)', '(en ligne / vu la dernière fois)', '(trực tuyến / nhìn thấy lần cuối)'),
(129, 'enable', '', 'Enable', 'Activer', 'Kích hoạt'),
(130, 'disable', '', 'Disable', 'désactiver', 'Vô hiệu hóa'),
(131, 'allow_users_to_delete', '', 'Allow users to delete their account', 'Autoriser les utilisateurs à supprimer son compte:', 'Cho phép người dùng xóa tài khoản của họ'),
(132, 'profile_visit_notification', '', 'Profile visit notification', 'Profil notification de visite:', 'Thông báo truy cập hồ sơ'),
(133, 'display_user_age_as', '', 'Display user age as', 'Display user d&#039;âge:', 'Hiển thị tuổi người dùng như'),
(134, 'date', '', 'Date', 'Rendez-vous amoureux', 'Ngày'),
(135, 'age', '', 'Age', 'Âge', 'Tuổi'),
(136, 'connectivity_system', '', 'Connectivity System', 'Système de connectivité:', 'Hệ thống kết nối'),
(137, 'connectivity_system_note', '', '&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you change the system to another one, all existing followings, followers, friends will be deleted.&lt;/small&gt;', '&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you migrate from one system to another, all existing followings, followers, friends, memberships will be deleted to avoid issues.&lt;/small&gt;', '&lt;span style=&quot;color:red;&quot;&gt;Ghi chú:&lt;/span&gt; Nếu bạn thay đổi hệ thống sang hệ thống khác, tất cả các lượt theo dõi, người theo dõi, bạn bè hiện có sẽ bị xóa.&lt;/small&gt;'),
(138, 'friends_system', '', 'Friends system', 'Système d&#039;amis', 'Hệ thống bạn bè'),
(139, 'follow_system', '', 'Follow system', 'système de suivi', 'Hệ thống theo dõi'),
(140, 'max_upload_size', '', 'Max upload size for videos, images, sounds, and files', 'Taille maximale de téléchargement:', 'Kích thước tải lên tối đa cho video, hình ảnh, âm thanh và tệp'),
(141, 'max_characters_length', '', 'Max characters length', 'Max longueur des caractères:', 'Chiều dài tối đa'),
(142, 'allowed_extenstions', '', 'Allowed extenstions', 'extensions autorisées:', 'Cho phép tiện ích mở rộng'),
(143, 'reCaptcha_setting', '', 'reCaptcha Setting', 'reCaptcha Cadre', 'Thiết lập reCaptcha'),
(144, 'reCaptcha_key_is_required', '', 'reCaptcha key is required', 'reCaptcha clé est nécessaire', 'Khóa reCaptcha là bắt buộc'),
(145, 'reCaptcha_key', '', 'reCaptcha Key', 'reCaptcha clé :', 'Khóa reCaptcha'),
(146, 'google_analytics', '', 'Google Analytics', 'Google Analytics', 'Google Analytics'),
(147, 'google_analytics_code', '', 'Google analytics code', 'Google code Google Analytics:', 'Google analytics code'),
(148, 'cache_setting', '', 'Cache Setting', 'cache Cadre', 'Thiết lập Cache'),
(149, 'cache_recomended_clear', '', 'It&#039;s highly recommended to clear the cache.', 'Il est fortement recommandé de vider le cache.', 'Rất khuyến khích xóa bộ nhớ cache.'),
(150, 'cache_size', '', 'Cache Size:', 'Taille du cache:', 'Cache Size:'),
(151, 'clear_cache', '', 'Clear Cache', 'Vider le cache', 'Xóa Cache'),
(152, 'social_login', '', 'Social login', 'Social login', 'Đăng nhập mạng xã hội'),
(153, 'social_login_api', '', 'Social login API&#039;S', 'Social login API&#39;S', 'Social login APIS'),
(154, 'facebook', '', 'Facebook', 'Facebook', 'Facebook'),
(155, 'google', '', 'Google+', 'Google+', 'Google+'),
(156, 'twitter', '', 'Twitter', 'Twitter', 'Twitter'),
(157, 'linkedin', '', 'Linkedin', 'Linkedin', 'Linkedin'),
(158, 'vkontakte', '', 'Vkontakte', 'Vkontakte', 'Vkontakte'),
(159, 'facebook_api', '', 'Facebook API', 'Facebook API', 'Facebook API'),
(160, 'google_api', '', 'Google API', 'Google API', 'Google API'),
(161, 'twitter_api', '', 'Twitter API', 'Twitter API', 'Twitter API'),
(162, 'linkedin_api', '', 'Linkedin API', 'Linkedin API', 'Linkedin API'),
(163, 'vkontakte_api', '', 'Vkontakte API', 'Vkontakte API', 'Vkontakte API'),
(164, 'app_id', '', 'App ID', 'App ID', 'App ID'),
(165, 'app_secret_key', '', 'App Secret Key', 'App Secret Key', 'App Secret Key'),
(166, 'login_with', '', 'Login with', 'Connectez-vous avec', 'Đăng nhập với'),
(167, 'id', '', 'ID', 'ID', 'ID'),
(168, 'source', '', 'Source', 'La source', 'Nguồn'),
(169, 'status', '', 'Status', 'statut', 'Trạng thái'),
(170, 'pending', '', 'Pending', 'en attendant', 'Đang chờ xử lý'),
(171, 'first_name', '', 'First name', 'Prénom', 'Tên'),
(172, 'last_name', '', 'Last name', 'Nom de famille', 'Họ'),
(173, 'about_me', '', 'About me', 'A propos de moi', 'Giới thiệu về Tôi'),
(174, 'website', '', 'Website', 'Website', 'Website'),
(175, 'action', '', 'Action', 'action', 'Hoạt động'),
(176, 'show_more_users', '', 'Show more users', 'Afficher plus d&#039;utilisateurs', 'Hiển thị thêm người dùng'),
(177, 'no_more_users_to_show', '', 'No more users to show', 'Pas plus aux utilisateurs d&#039;afficher', 'Không có nhiều người dùng để hiển thị'),
(178, 'user_delete_confirmation', '', 'Are you sure you want to delete this user?', 'Êtes-vous sûr de vouloir supprimer cet utilisateur?', 'Bạn có chắc chắn muốn xóa người dùng này?'),
(179, 'post_delete_confirmation', '', 'Are you sure you want to delete this post?', 'Es-tu sur de vouloir supprimer cette annonce?', 'Bạn có chắc chắn muốn xóa bài đăng này?'),
(180, 'show_more_posts', '', 'Show more posts', 'Montrer plus d&#039;articles', 'Hiển thị nhiều bài viết'),
(181, 'no_more_posts', '', 'No more posts', 'Pas plus de postes', 'Không có thêm bài viết'),
(182, 'no_posts_found', '', 'No posts found', 'Aucun post trouvé', 'Không tìm thấy bài viết'),
(183, 'publisher', '', 'Publisher', 'Éditeur', 'Nhà xuất bản'),
(184, 'there_are_not_new_posts_for_now', '', 'There are not new post for now', 'Il n&#039;y a pas pour le moment nouveau poste', 'Hiện tại không có bài viết mới'),
(185, 'post_link', '', 'Post link', 'lien Poster', 'Đăng liên kết'),
(186, 'time', '', 'Time', 'Temps', 'Thời gian'),
(187, 'post', '', 'Post', 'Poster', 'Đăng bài'),
(188, 'no_posts_yet', '', '{name} has not posted anything yet', '{name} n&#039;a pas encore posté rien', '{name} chưa đăng gì cả'),
(189, 'search', '', 'Search', 'Recherche', 'Tìm kiếm'),
(190, 'on', '', 'On', 'Sur', 'On'),
(191, 'off', '', 'Off', 'De', 'Off'),
(192, 'save', '', 'Save', 'sauvegarder', 'Lưu'),
(193, 'saved', '', 'Saved !', 'Enregistré !', 'Đã lưu !'),
(194, 'reporter', '', 'Reporter', 'Journaliste', 'Người báo cáo'),
(195, 'time_reported', '', 'Time Reported', 'temps Rapporté', 'Thời gian báo cáo'),
(196, 'there_are_no_new_reports', '', 'There are no new reports for now.', 'Il n&#039;y a pas de nouveaux rapports pour l&#039;instant.', 'Không có báo cáo mới bây giờ.'),
(197, 'open_post', '', 'Open Post', 'Ouvrir Poste', 'Mở bài viết'),
(198, 'mark_safe', '', 'Mark Safe', 'Mark Safe', 'Đánh dấu an toàn'),
(199, 'delete_post', '', 'Delete Post', 'Delete Post', 'Xóa bài đăng'),
(200, 'advertisement_setting', '', 'Advertisement Setting', 'Cadre Publicité', 'Thiết lập Quảng cáo'),
(201, 'more_setting', '', 'More Setting', 'plus Cadre', 'Thiết lập khác'),
(202, 'mailing_users', '', 'Mailing list', 'Liste de diffusion', 'Danh sách gửi thư'),
(203, 'send', '', 'Send', 'Envoyer', 'Gởi'),
(204, 'mailing_subject', '', 'Subject..', 'Assujettir..', 'Chủ đề..'),
(205, 'mailing_message', '', 'Message..', 'Message..', 'Thông điệp..'),
(206, 'announcement', '', 'Announcement', 'Annonce:', 'Thông báo'),
(207, 'new_announcement', '', 'New announcement', 'nouvelle annonce ..', 'Thông báo mới'),
(208, 'add', '', 'Add', 'Ajouter', 'Thêm'),
(209, 'views', '', 'Views', 'Vues', 'Xem'),
(210, 'there_are_no_active_announcements', '', 'There are no active announcements.', 'Il n&#039;y a pas d&#039;annonces actives.', 'Không có thông báo hoạt động.'),
(211, 'there_are_no_inactive_announcements', '', 'There are no inactive announcements.', 'Il n&#039;y a aucune annonce inactifs.', 'Không có thông báo ngừng hoạt động.'),
(212, 'add_friend', '', 'Add Friend', 'Ajouter', 'Thêm bạn bè'),
(213, 'follow', '', 'Follow', 'Suivre', 'Theo dõi'),
(214, 'following', '', 'Following', 'Suivant', 'Đang theo dõi'),
(215, 'following_btn', '', 'Following', 'Suivant', 'Đang theo dõi'),
(216, 'followers', '', 'Followers', 'Les adeptes', 'Người theo dõi'),
(217, 'message', '', 'Message', 'Message', 'Nhắn tin'),
(218, 'requested', '', 'Requested', 'Demandé', 'Yêu cầu'),
(219, 'friends_btn', '', 'Friends', 'Friends', 'Bạn bè'),
(220, 'online', '', 'Online', 'Online', 'Trực tuyến'),
(221, 'offline', '', 'Offline', 'Offline', 'Ngoại tuyến'),
(222, 'you_are_currently_offline', '', 'You are currently offline', 'Vous êtes actuellement déconnecté', 'Bạn hiện đang ngoại tuyến'),
(223, 'no_offline_users', '', 'No offline users.', 'Aucun utilisateur hors ligne.', 'Không có người dùng ngoại tuyến.'),
(224, 'no_online_users', '', 'No online users.', 'Aucun membre en ligne.', 'Không có người dùng trực tuyến.'),
(225, 'search_for_users', '', 'Search for users', 'Recherche d&#039;utilisateurs', 'Tìm kiếm người dùng'),
(226, 'no_users_found', '', 'No users found.', 'Aucun utilisateur trouvé.', 'Không tìm thấy người dùng.'),
(227, 'seen', '', 'Seen', 'vu', 'Đã thấy'),
(228, 'load_more_posts', '', 'Load more posts', 'Chargez plus de postes', 'Tải thêm bài viết'),
(229, 'load_more_users', '', 'Load more users', 'Charger plusieurs utilisateurs', 'Tải thêm người dùng'),
(230, 'there_are_no_tags_found', '', 'No results found for your query.', 'Aucun résultat n&#039;a été trouvé pour votre recherche.', 'Không tìm thấy kết quả cho truy vấn của bạn.'),
(231, 'there_are_no_saved_posts', '', 'You don&#039;t have any saved posts.', 'Vous ne disposez pas de messages enregistrés.', 'Bạn không có bất kỳ bài viết đã lưu nào cả.'),
(232, 'messages', '', 'Messages', 'Messages', 'Nhắn tin'),
(233, 'write_something', '', 'Write Something ..', 'Écrire quelque chose ..', 'Viết vài thứ ..'),
(234, 'no_more_message_to_show', '', 'No more message', 'Pas plus un message', 'Không có nhiều tin nhắn'),
(235, 'view_more_messages', '', 'View more messages', 'Voir plus de messages', 'Xem thêm nhiều tin nhắn'),
(236, 'sorry_cant_reply', '', 'Sorry, you can&#039;t reply to this user.', 'Désolé, vous ne pouvez pas répondre à cet utilisateur.', 'Xin lỗi, bạn không thể trả lời người dùng này.'),
(237, 'choose_one_of_your_friends', '', 'Choose one of your friends', 'Choisissez un de vos amis', 'Chọn một trong những người bạn của bạn'),
(238, 'and_say_hello', '', 'And Say Hello !', 'Et dire Bonjour !', 'Và nói xin chào !'),
(239, 'download', '', 'Download', 'Télécharger', 'Download'),
(240, 'update_your_info', '', 'Update your info', 'Mettre à jour vos informations', 'Cập nhật thông tin của bạn'),
(241, 'choose_your_username', '', 'Choose your username:', 'Choisissez votre nom d&#039;utilisateur:', 'Chọn tài khoản của bạn:'),
(242, 'create_your_new_password', '', 'Create your new password:', 'Créer votre nouveau mot de passe:', 'Tạo mật khẩu mới của bạn:'),
(243, 'update', '', 'Update', 'Mettre à jour', 'Cập nhật'),
(244, 'delete_comment', '', 'Delete Comment', 'supprimer les commentaires', 'Xóa Bình luận'),
(245, 'confirm_delete_comment', '', 'Are you sure that you want to delete this comment ?', 'Etes-vous sûr que vous voulez supprimer ce commentaire ?', 'Bạn có chắc chắn muốn xóa bình luận này không ?'),
(246, 'confirm_delete_post', '', 'Are you sure that you want to delete this post ?', 'Etes-vous sûr que vous voulez supprimer ce message ?', 'Bạn có chắc chắn muốn xóa bài đăng này không ?'),
(247, 'edit_post', '', 'Edit Post', 'Modifier le message', 'Chỉnh sửa bài viết'),
(248, 'session_expired', '', 'Session Expired', 'La session a expiré', 'Phiên làm việc đã hết hạn'),
(249, 'session_expired_message', '', 'Your Session has been expired, please login again.', 'Votre session a expiré, s&#039;il vous plaît vous connecter à nouveau.', 'Phiên làm việc của bạn đã hết hạn, vui lòng đăng nhập lại.'),
(250, 'country', '', 'Country', 'Pays', 'Quốc gia'),
(251, 'all', '', 'All', 'Tous', 'Tất cả'),
(252, 'gender', '', 'Gender', 'Genre', 'Giới tính'),
(253, 'female', 'gender', 'Female', 'Femelle', 'Nữ'),
(254, 'male', 'gender', 'Male', 'Mâle', 'Nam'),
(255, 'profile_picture', '', 'Profile Picture', 'Photo de profil', 'Ảnh đại diện'),
(256, 'result', '', 'Result', 'Résultat:', 'Kết quả'),
(257, 'yes', '', 'Yes', 'Oui', 'Yes'),
(258, 'no', '', 'No', 'Non', 'No'),
(259, 'verified_user', '', 'Verified User', 'vérifié utilisateur', 'Người dùng đã được xác minh'),
(260, 'change_password', '', 'Change Password', 'Changer le mot de passe', 'Đổi mật khẩu'),
(261, 'current_password', '', 'Current Password', 'Mot de passe actuel', 'Mật khẩu hiện tại'),
(262, 'repeat_password', '', 'Repeat password', 'Répéter le mot de passe', 'Lặp lại mật khẩu'),
(263, 'general', '', 'General', 'Général', 'Thông tin cơ bản'),
(264, 'profile', '', 'VrFairs Profile', 'VrFairs Profil', 'Hồ sơ vrFairs'),
(265, 'privacy', '', 'Privacy', 'Intimité', 'Riêng tư'),
(266, 'delete_account', '', 'Delete Account', 'Effacer le compte', 'Xóa Tài khoản'),
(267, 'delete_account_confirm', '', 'Are You sure that you want to delete your account, and leave our network ?', 'Etes-vous sûr que vous voulez supprimer votre compte, et de laisser notre réseau ?', 'Bạn có chắc chắn muốn xóa tài khoản của mình và rời khỏi hệ thống của chúng tôi không ?'),
(268, 'delete_go_back', '', 'No, I&#039;ll Think', 'Non, je vais y réfléchir', 'Không, tôi nghĩ'),
(269, 'verified', '', 'Verified', 'vérifié', 'Đã xác minh'),
(270, 'not_verified', '', 'Not verified', 'non vérifié', 'Chưa xác minh'),
(271, 'admin', '', 'Admin', 'Administrateur', 'Quản trị'),
(272, 'user', '', 'User', 'Utilisateur', 'Người dùng'),
(273, 'verification', '', 'Verification', 'Vérification', 'Xác minh'),
(274, 'type', '', 'Type', 'Type', 'Kiểu'),
(275, 'birthday', '', 'Birthday', 'Anniversaire', 'Ngày Sinh nhật'),
(276, 'active', '', 'Active', 'actif', 'Hoạt động'),
(277, 'inactive', '', 'inactive', 'inactif', 'không hoạt động'),
(278, 'privacy_setting', '', 'Privacy Setting', 'Paramètre de confidentialité', 'Cấu hình riêng'),
(279, 'follow_privacy_label', '', 'Who can follow me ?', 'Qui peut me suivre ?', 'Ai có thể theo dõi tôi ?'),
(280, 'everyone', '', 'Everyone', 'Toutes les personnes', 'Mọi người'),
(281, 'my_friends', '', 'My Friends', 'Mes amis', 'Bạn của tôi'),
(282, 'no_body', '', 'No body', 'Personne', 'Không có ai'),
(283, 'people_i_follow', '', 'People I Follow', 'Les gens que je suivre', 'Những người tôi theo dõi'),
(284, 'people_follow_me', '', 'People Follow Me', 'Les gens Follow Me', 'Những người theo dõi tôi'),
(285, 'only_me', '', 'Only me', 'Seulement moi', 'Chỉ riêng tôi'),
(286, 'message_privacy_label', '', 'Who can message me ?', 'Qui peut me message ?', 'Ai có thể nhắn tin cho tôi?'),
(287, 'timeline_post_privacy_label', '', 'Who can post on my timeline ?', 'Qui peut poster sur mon calendrier ?', 'Ai có thể đăng lên dòng thời gian của tôi?'),
(288, 'activities_privacy_label', '', 'Show my activities ?', 'Afficher mes activités ?', 'Hiển thị các hoạt động của tôi?'),
(289, 'show', '', 'Show', 'Montrer', 'Hiển thị'),
(290, 'hide', '', 'Hide', 'Cache', 'Ẩn'),
(291, 'confirm_request_privacy_label', '', 'Confirm request when someone follows you ?', 'Confirmer la demande quand quelqu&#039;un vous suit ?', 'Xác nhận yêu cầu khi ai đó theo dõi bạn?'),
(292, 'lastseen_privacy_label', '', 'Show my last seen ?', 'Afficher mon dernière fois ?', 'Hiển thị lần cuối cùng của tôi?'),
(293, 'site_eg', '', '(e.g: http://www.siteurl.com)', '(e.g: http://www.siteurl.com)', '(ví dụ: http://www.siteurl.com)'),
(294, 'profile_setting', '', 'Profile Setting', 'Profile Setting', 'Thiết lập hồ sơ'),
(295, 'pinned_post', '', 'Pinned', 'épinglé', 'Đã ghim'),
(296, 'pin_post', '', 'Pin Post', 'Pin Poster', 'Ghim bài'),
(297, 'unpin_post', '', 'Unpin Post', 'Détacher Poster', 'Bỏ Ghim'),
(298, 'open_post_in_new_tab', '', 'Open post in new tab', 'Ouvrir dans un nouvel onglet après', 'Mở bài viết trong Tab mới'),
(299, 'unsave_post', '', 'Unsave Post', 'unsave Poster', 'Bỏ lưu'),
(300, 'save_post', '', 'Save Post', 'Sauvegarder Poster', 'Lưu bài đăng'),
(301, 'unreport_post', '', 'Unreport Post', 'Unreport Poster', 'Bài viết không báo cáo'),
(302, 'report_post', '', 'Report Post', 'Signaler le message', 'Báo cáo về bài đăng'),
(303, 'shared_this_post', '', 'Shared this post', 'Partagé ce post', 'Đã chia sẻ bài đăng này'),
(304, 'changed_profile_picture_male', '', 'Changed his profile picture', 'Changé sa photo de profil', 'Đã thay đổi ảnh cá nhân của anh ấy'),
(305, 'changed_profile_picture_female', '', 'Changed her profile picture', 'A changé sa photo de profil', 'Đã thay đổi ảnh cá nhân của chị ấy'),
(306, 'post_login_requriement', '', 'Please log in to like, wonder, share and comment!', 'S&#039;il vous plaît vous connecter à aimer, étonnant, partager et commenter !', 'Hãy đăng nhập để Thích, Biểu lộ cảm xúc, Chia sẻ và Bình luận!'),
(307, 'likes', '', 'Likes', 'Aime', 'Thích'),
(308, 'like', '', 'Like', 'Aimer', 'Thích'),
(309, 'wonder', '', 'Wonder', 'Merveille', 'Cảm xúc'),
(310, 'wonders', '', 'Wonders', 'Merveilles', 'Cảm xúc'),
(311, 'share', '', 'Share', 'Partagez', 'Chia sẻ'),
(312, 'comments', '', 'Comments', 'commentaires', 'Bình luận'),
(313, 'no_likes', '', 'No likes yet', 'Aucune aime encore', 'Chưa thích'),
(314, 'no_wonders', '', 'No wonders yet', 'Pas encore wondres', 'Không có thắc mắc nào'),
(315, 'write_comment', '', 'Write a comment and press enter', 'Ecrire un commentaire et appuyez sur Entrée', 'Viết bình luận và nhấn enter'),
(316, 'view_more_comments', '', 'View more comments', 'Voir plus de commentaires', 'Xem thêm bình luận'),
(317, 'welcome_to_news_feed', '', 'Welcome to your News Feed !', 'Bienvenue à votre Nouvelles RSS!', 'Chào mừng bạn đến với News Feed của bạn !'),
(318, 'say_hello', '', 'Say Hello !', 'Dis bonjour !', 'Xin chào !'),
(319, 'publisher_box_placeholder', '', 'What&#039;s going on? #Hashtag.. @Mention.. Link..', 'Ce qui se passe? #hashtag ..@Mention..', 'Bạn đang nghĩ gì? ( #Hashtag.. @Mention.. Liên kết..)'),
(320, 'youtube_link', '', 'Youtube Link', 'Youtube Link', 'Youtube Link'),
(321, 'vine_link', '', 'Vine Link', 'Vine Link', 'Vine Link'),
(322, 'soundcloud_link', '', 'SoundCloud Link', 'SoundCloud Link', 'SoundCloud Link'),
(323, 'maps_placeholder', '', 'Where are you ?', 'Où es tu?', 'Bạn ở đâu ?'),
(324, 'post_label', '', 'Post', 'Poster', 'Đăng'),
(325, 'text', '', 'Text', 'Envoyer des textos', 'Văn bản'),
(326, 'photos', '', 'Photos', 'Photos', 'Hình ảnh'),
(327, 'sounds', '', 'Sounds', 'Des sons', 'Âm thanh'),
(328, 'videos', '', 'Videos', 'Les vidéos', 'Videos'),
(329, 'maps', '', 'Maps', 'Plans', 'Bản đồ'),
(330, 'files', '', 'Files', 'Dossiers', 'Files'),
(331, 'not_following', '', 'Not following any user', 'Ne pas suivre tout utilisateur', 'Không theo dõi bất kỳ người dùng nào'),
(332, 'no_followers', '', 'No followers yet', 'Pas encore adeptes', 'Chưa có người theo dõi'),
(333, 'details', '', 'Details', 'Détails', 'Chi tiết'),
(334, 'social_links', '', 'Social Links', 'Liens sociaux', 'Mạng xã hội liên kết'),
(335, 'online_chat', '', 'Chat', 'amis en ligne', 'Trao đổi, Thảo luận'),
(336, 'about', '', 'About', 'Sur', 'Giới thiệu'),
(337, 'contact_us', '', 'Contact Us', 'Contactez nous', 'Liên hệ'),
(338, 'privacy_policy', '', 'Privacy Policy', 'politique de confidentialité', 'Chính sách Bảo mật'),
(339, 'terms_of_use', '', 'Terms of Use', 'Conditions d&#039;utilisation', 'Điều khoản Sử dụng'),
(340, 'developers', '', 'Developers', 'Développeurs', 'Nhà phát triển'),
(341, 'language', '', 'Language', 'Langue', 'Ngôn ngữ'),
(342, 'copyrights', '', '© {date} {site_name}', '© {date} {site_name}', '© {date} {site_name}'),
(343, 'year', '', 'year', 'an', 'năm'),
(344, 'month', '', 'month', 'mois', 'tháng'),
(345, 'day', '', 'day', 'jour', 'ngày'),
(346, 'hour', '', 'hour', 'heure', 'giờ'),
(347, 'minute', '', 'minute', 'minute', 'phút'),
(348, 'second', '', 'second', 'deuxième', 'giây'),
(349, 'years', '', 'years', 'années', 'năm'),
(350, 'months', '', 'months', 'mois', 'tháng'),
(351, 'days', '', 'days', 'jours', 'ngày'),
(352, 'hours', '', 'hours', 'des heures', 'giờ'),
(353, 'minutes', '', 'minutes', 'minutes', 'phút'),
(354, 'seconds', '', 'seconds', 'secondes', 'giây'),
(355, 'time_ago', '', 'ago', 'depuis', 'trước đây'),
(356, 'time_from_now', '', 'from now', 'à partir de maintenant', 'từ bây giờ'),
(357, 'time_any_moment_now', '', 'any moment now', 'd un moment', 'bất cứ lúc nào'),
(358, 'time_just_now', '', 'Just now', 'Juste maintenant', 'Vừa mới'),
(359, 'time_about_a_minute_ago', '', 'about a minute ago', 'Il ya environ une minute', 'khoảng một phút trước'),
(360, 'time_minute_ago', '', '%d minutes ago', '%d il y a quelques minutes', '%d phút trước'),
(361, 'time_about_an_hour_ago', '', 'about an hour ago', 'il y a à peu près une heure', 'khoảng một giờ trước'),
(362, 'time_hours_ago', '', '%d hours ago', '%d il y a des heures', '%d giờ trước'),
(363, 'time_a_day_ago', '', 'a day ago', 'a Il ya jour', 'một ngày trước'),
(364, 'time_a_days_ago', '', '%d days ago', '%d il y a quelques jours', '%d ngày trước'),
(365, 'time_about_a_month_ago', '', 'about a month ago', 'il y a environ un mois', 'khoảng một tháng trước'),
(366, 'time_months_ago', '', '%d months ago', '%d il y a des mois', '%d tháng trước'),
(367, 'time_about_a_year_ago', '', 'about a year ago', 'Il ya environ un an', 'khoảng một năm trước'),
(368, 'time_years_ago', '', '%d years ago', '%d il y a des années', '%d năm trước'),
(369, 'latest_activities', '', 'Latest Activities', 'Dernières activités', 'Hoạt động mới nhất'),
(370, 'no_activities', '', 'No new activities', 'Pas de nouvelles activités', 'Không có hoạt động mới'),
(371, 'trending', '', 'Trending !', 'Trending !', 'Xu hướng !'),
(372, 'load_more_activities', '', 'Load more activities', 'Chargez plus d&#039;activités', 'Tải thêm hoạt động'),
(373, 'no_more_actitivties', '', 'No more actitivties', 'Pas plus d&#039;activités', 'Không có nhiều hành động'),
(374, 'people_you_may_know', '', 'People you may know', 'Les gens que vous connaissez peut-être', 'Những người bạn có thể biết'),
(375, 'too_long', '', 'Too long', 'Trop long', 'Quá lâu'),
(376, 'too_short', '', 'Too short.', 'Trop court.', 'Quá ngắn.'),
(377, 'available', '', 'Available !', 'Disponible !', 'Có sẵn !'),
(378, 'in_use', '', 'In use.', 'En service.', 'Đang sử dụng.'),
(379, 'username_invalid_characters_2', '', 'Username should not contain any special characters, symbols or spaces.', 'Nom d&#039;utilisateur ne doit pas contenir de caractères, symboles ou espaces spéciaux.', 'Tài khoản người dùng không được chứa bất kỳ ký tự, ký hiệu hoặc dấu cách đặc biệt nào.'),
(380, 'liked', '', 'Liked', 'A aimé', 'Đã thích'),
(381, 'my_pages', '', 'My Pages', 'Mes Pages', 'Trang của tôi'),
(382, 'liked_page', '', 'Liked your page ({page_name})', 'a aimé votre page ({page_name})', 'Đã thích trang ({page_name}) của bạn'),
(383, 'this_week', '', 'This week', 'Cette semaine', 'Tuần này'),
(384, 'posts', '', 'posts', 'des postes', 'bài viết'),
(385, 'located_in', '', 'Located in', 'Situé dans', 'Đặt tại'),
(386, 'phone_number', '', 'Phone', 'Téléphone', 'Số điện thoại'),
(387, 'company', '', 'Company', 'Compagnie', 'Công ty'),
(388, 'category', '', 'Category', 'Catégorie', 'Thể loại'),
(389, 'search_for_posts', '', 'Search for posts', 'Rechercher les messages', 'Tìm kiếm bài viết'),
(390, 'create_new_page', '', 'Create New Page', 'Créer une page', 'Tạo Trang mới'),
(391, 'page_name', '', 'Page name', 'Nom de la page', 'Tên Trang'),
(392, 'page_title', '', 'Page title', 'Titre de la page', 'Tiêu đề trang'),
(393, 'your_page_title', '', 'Your page title', 'Votre titre de la page', 'Tiêu đề trang của bạn'),
(394, 'page_category', '', 'Page Category', 'page Catégorie', 'Thể loại trang'),
(395, 'page_description', '', 'Page description', 'Description de la page', 'Mô tả trang'),
(396, 'page_description_info', '', 'Your Page description, Between 10 and 200 characters max.', 'Votre description de la page, entre 10 et 200 caractères max.', 'Mô tả trang của bạn, tối đa từ 10 đến 200 ký tự.'),
(397, 'create', '', 'Create', 'Créer', 'Tạo'),
(398, 'page_name_exists', '', 'Page name is already exists.', 'Nom de la page est existe déjà.', 'Tên trang đã tồn tại.'),
(399, 'page_name_characters_length', '', 'Page name must be between 5 / 32', 'Nom de la page doit être comprise entre 5/32', 'Tên trang phải chứa khoảng từ 5 đến 32 ký tự'),
(400, 'page_name_invalid_characters', '', 'Invalid page name characters', 'Invalides nom de la page caractères', 'Tên trang chứa Ký tự không hợp lệ'),
(401, 'edit', '', 'Edit', 'modifier', 'Chỉnh sửa'),
(402, 'page_information', '', 'Page Information', 'Informations sur la page', 'Thông tin trang'),
(403, 'delete_page', '', 'Delete Page', 'supprimer la page', 'Xóa trang'),
(404, 'location', '', 'Location', 'Emplacement', 'Vị trí'),
(405, 'pages_you_may_like', '', 'Pages you may like', 'Pages que vous aimerez', 'Trang bạn có thể thích'),
(406, 'show_more_pages', '', 'Show more pages', 'Voir plus de pages', 'Hiển thị nhiều trang hơn'),
(407, 'no_more_pages', '', 'No more pages to show', 'No more pages to show', 'Không có nhiều trang để hiển thị'),
(408, 'page_delete_confirmation', '', 'Are you sure you want to delete this page?', 'Etes-vous sûr de vouloir supprimer cette page?', 'Bạn có chắc chắn muốn xóa trang này?'),
(409, 'manage_pages', '', 'Manage Pages', 'gérer les pages', 'Quản lý trang'),
(410, 'owner', '', 'Owner', 'Propriétaire', 'Chủ nhân'),
(411, 'no_pages_found', '', 'No pages found', 'Aucune page trouvé', 'Không tìm thấy trang nào'),
(412, 'welcome_wonder', '', 'Wonder', 'Merveille', 'Chào mừng cảm xúc'),
(413, 'welcome_connect', '', 'Connect', 'connecter', 'Kết nối'),
(414, 'welcome_share', '', 'Share', 'Partagez', 'Chia sẻ'),
(415, 'welcome_discover', '', 'Discover', 'Découvrir', 'Khám phá'),
(416, 'welcome_find_more', '', 'Find more', 'Trouve plus', 'Tìm thêm'),
(417, 'welcome_mobile', '', 'Mobile Friendly', 'mobile bienvenus', 'Thân thiện với thiết bị di động'),
(418, 'welcome_wonder_text', '', 'Wonder (NEW), ability to wonder a post if you don&#039;t like it.', 'Wonder (NOUVEAU), la capacité à se demander un poste si vous ne l&#039;aimez pas.', 'Khả năng tự hỏi một bài đăng nếu bạn không thích nó.'),
(419, 'welcome_connect_text', '', 'Connect with your family and friends and share your moments.', 'Connectez-vous avec votre famille et vos amis et partager vos moments.', 'Kết nối với gia đình, bạn bè của bạn và chia sẻ những khoảnh khắc đáng nhớ.'),
(420, 'welcome_share_text', '', 'Share what&#039;s new and life moments with your friends.', 'Partager ce sont des moments de nouvelles et de la vie avec vos amis.', 'Chia sẻ những khoảnh khắc mới và cuộc sống với bạn bè, người thân của bạn.'),
(421, 'welcome_discover_text', '', 'Discover new people, create new connections and make new friends.', 'Découvrez de nouvelles personnes, créer de nouvelles connexions et de faire de nouveaux amis.', 'Khám phá những người mới, tạo kết nối mới và kết bạn mới.'),
(422, 'welcome_find_more_text', '', 'Find more of what you&#039;re looking for with WoWonder Search.', 'Trouver plus de ce que vous n &#039;êtes à la recherche d&#039;avec WoWonder Recherche.', 'Tìm thêm về những thông tin bạn cần với chức năng Tìm kiếm.'),
(423, 'welcome_mobile_text', '', '100% screen adaptable on all tablets and smartphones.', 'Écran 100% adaptable sur toutes les tablettes et les smartphones.', '100% thích ứng với tất cả các máy tính bảng và điện thoại thông minh.'),
(424, 'working_at', '', 'Working at', 'Travailler à', 'Làm việc tại'),
(425, 'relationship', '', 'Relationship', 'Relation', 'Mối quan hệ'),
(426, 'none', '', 'None', 'Aucun', 'Không'),
(427, 'avatar', '', 'Avatar', 'Avatar', 'Hình đại diện'),
(428, 'cover', '', 'Cover', 'Couverture', 'Ảnh viền'),
(429, 'background', '', 'Background', 'Contexte', 'Hình nền'),
(430, 'theme', '', 'Theme', 'Thème', 'Giao diện'),
(431, 'deafult', '', 'Default', 'Défaut', 'Mặc định'),
(432, 'my_background', '', 'My Background', 'Mon arrière-plan', 'Hình nền của tôi'),
(433, 'company_website', '', 'Company website', 'Site Web de l&#039;entreprise', 'Website Công ty'),
(434, 'liked_my_page', '', 'Liked My Page', 'Aimé Ma Page', 'Đã thích trang của tôi'),
(435, 'dislike', '', 'Dislike', 'Aversion', 'Không thích'),
(436, 'dislikes', '', 'Dislikes', 'Dégoûts', 'Không thích'),
(437, 'disliked_post', '', 'disliked your {postType} {post}', 'détesté votre {postType} {post}', 'không thích {postType} {post}'),
(438, 'disliked_comment', '', 'disliked your comment &quot;{comment}&quot;', 'détesté votre commentaire &quot;{comment}&quot;', 'không thích &quot;{comment}&quot; của bạn'),
(439, 'activity_disliked_post', '', 'disliked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'détesté {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'không thích bài viết của {user} .'),
(440, 'second_button_type', '', 'Second post button type', 'Deuxième poste de type bouton', 'Loại nút bài thứ hai'),
(441, 'group_name', '', 'Group name', 'Nom de groupe', 'Tên Nhóm'),
(442, 'group_title', '', 'Group title', 'Titre de groupe', 'Tiêu đề nhóm'),
(443, 'my_groups', '', 'My Groups', 'Mes Groupes', 'Nhóm của tôi'),
(444, 'school', '', 'School', 'L&#039;école', 'Trường học'),
(445, 'site_keywords_help', '', 'Example: social, social site', 'Example: social, social site', 'Ví dụ: mạng xã hội, trang xã hội'),
(446, 'message_seen', '', 'Message Seen', 'Vu message', 'Đã xem tin nhắn'),
(447, 'recommended_for_powerful', '', 'Recommended for powerful servers', 'Recommandé pour les puissants serveurs', 'Đề xuất cho các máy chủ mạnh mẽ'),
(448, 'message_typing', '', 'Chat typing system', 'Système de typage chat', 'Hệ thống trò chuyện'),
(449, 'reCaptcha', '', 'reCaptcha', 'reCaptcha', 'reCaptcha'),
(450, 'instagram', 'Instagram', 'Instagram', 'Instagram', 'Instagram'),
(451, 'profile_visit_notification_help', '', 'if you don&#039;t share your visit event , you won&#039;t be able to see other people visiting your profile.', 'si vous ne partagez pas votre événement de la visite, vous ne serez pas en mesure de voir d&#039;autres gens qui visitent votre profil.', 'nếu bạn không chia sẻ sự kiện mà bạn đã truy cập bạn sẽ không thể thấy những người khác truy cập hồ sơ của bạn.'),
(452, 'account_delete', '', 'Delete Account', 'Effacer le compte', 'Xóa Tài khoản'),
(453, 'ip_address', '', 'IP Address', 'Adresse IP', 'Địa chỉ IP'),
(454, 'manage_groups', '', 'Manage Groups', 'Gérer les groupes', 'Quản lý nhóm'),
(455, 'group_delete_confirmation', '', 'Are you sure you want to delete this group?', 'Êtes-vous sûr de vouloir supprimer ce groupe?', 'Bạn có chắc chắn muốn xóa nhóm này?'),
(456, 'no_more_groups', '', 'No more groups to show', 'Pas de plusieurs groupes pour montrer', 'Không còn nhóm nào để hiển thị'),
(457, 'show_more_groups', '', 'Show more groups', 'Montrer plus de groupes', 'Hiển thị thêm nhóm'),
(458, 'members', '', 'Members', 'Membres', 'Thành viên'),
(459, 'verifications_requests', '', 'Verification Requests', 'Demandes de vérification', 'Yêu cầu xác minh'),
(460, 'verify', '', 'Verify', 'Vérifier', 'Xác minh'),
(461, 'ignore', '', 'Ignore', 'Ignorer', 'Bỏ qua'),
(462, 'page', '', 'Page', 'Page', 'Trang'),
(463, 'no_new_verification_requests', '', 'No new verification requests', 'Aucune nouvelle demande de vérification', 'Không có yêu cầu xác minh mới'),
(464, 'ban_user', '', 'Ban User', 'Ban User', 'Người dùng bị cấm'),
(465, 'banned', '', 'Banned', 'Banned', 'Đã cấm'),
(466, 'there_are_no_banned_ips', '', 'There are no banned ips.', 'Il n&#039;y a pas ips interdits.', 'Không có IP bị cấm.'),
(467, 'invalid_ip', '', 'Invalid ip address.', 'Adresse IP non valide.', 'Địa chỉ IP không hợp lệ.'),
(468, 'ip_banned', '', 'IP address successfully banned.', 'Adresse IP banni avec succès.', 'Đã cấm thành công địa chỉ IP.'),
(469, 'ip_exist', '', 'IP address already exist', 'Adresse IP existent déjà', 'Địa chỉ IP đã tồn tại'),
(470, 'please_add_ip', '', 'Please add an ip address', 'S&#039;il vous plaît ajouter une adresse ip', 'Vui lòng thêm một địa chỉ IP'),
(471, 'ip_deleted', '', 'IP address successfully deleted', 'Adresse IP supprimé avec succès', 'Đã xóa địa chỉ IP thành công'),
(472, 'email_me_when', '', 'Email me when', 'Envoyez-moi lorsque', 'Email cho tôi khi'),
(473, 'e_likes_my_posts', '', 'Someone liked my posts', 'Quelqu&#039;un aimait mes messages', 'Ai đó đã thích bài viết của tôi'),
(474, 'e_wondered_my_posts', '', 'Someone wondered my posts', 'Quelqu&#039;un demanda mes messages', 'Ai đó đã bày tỏ cảm xúc về bài viết của tôi'),
(475, 'e_commented_my_posts', '', 'Someone commented on my posts', 'Quelqu&#039;un a commenté mes messages', 'Ai đó đã bình luận bài viết của tôi'),
(476, 'e_shared_my_posts', '', 'Someone shared on my posts', 'Quelqu&#039;un partagé sur mes posts', 'Ai đó đã chia sẻ bài viết của tôi'),
(477, 'e_followed_me', '', 'Someone followed me', 'Quelqu&#039;un m&#039;a suivi', 'Ai đó đã theo dõi tôi'),
(478, 'e_liked_page', '', 'Someone liked my pages', 'Quelqu&#039;un aimait mes pages', 'Ai đó đã thích trang của tôi'),
(479, 'e_visited_my_profile', '', 'Someone visited my profile', 'Quelqu&#039;un a visité mon profil', 'Ai đó đã truy cập hồ sơ của tôi'),
(480, 'e_mentioned_me', '', 'Someone mentioned me', 'Quelqu&#039;un a parlé de moi', 'Ai đó đã đề cập đến tôi'),
(481, 'e_joined_group', '', 'Someone joined my groups', 'Quelqu&#039;un a rejoint mes groupes', 'Ai đó đã tham gia vào nhóm của tôi'),
(482, 'e_accepted', '', 'Someone accepted my friend/follow requset', 'Quelqu&#039;un a accepté mon ami / suivre la demande', 'Ai đó đã chấp nhận bạn tôi / yêu cầu theo dõi'),
(483, 'e_profile_wall_post', '', 'Someone posted on my timeline', 'Quelqu&#039;un a posté sur mon calendrier', 'Ai đó đăng trên dòng thời gian của tôi'),
(484, 'no_groups_found', '', 'No groups found', 'Pas de groupes trouvés', 'Không tìm thấy nhóm'),
(485, 'group_information', '', 'Group information', 'L&#039;information de groupe', 'Thông tin nhóm'),
(486, 'delete_group', '', 'Delete Group', 'Supprimer le groupe', 'Xóa Nhóm'),
(487, 'group_name_exists', '', 'Group name is already exists.', 'Le nom du groupe est existe déjà.', 'Tên nhóm đã tồn tại.'),
(488, 'group_name_invalid_characters', '', 'Invalid group name characters', 'Invalides nom de groupe caractères', 'Tên nhóm chứa Ký tự không hợp lệ'),
(489, 'group_name_characters_length', '', 'Group name must be between 5 / 32', 'Le nom du groupe doit être comprise entre 5/32', 'Tên nhóm phải có từ 5 đến 32 ký tự');
INSERT INTO `Wo_Langs` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(490, 'no_requests_found', '', 'No requests found!', 'Aucune demande trouvée!', 'Không tìm thấy yêu cầu!'),
(491, 'remove', '', 'Remove', 'Enlever', 'Loại bỏ'),
(492, 'no_members_found', '', 'No members found', 'Aucun membre trouvé', 'Không tìm thấy thành viên'),
(493, 'group_deleted', '', 'Group successfully deleted', 'Groupe supprimé avec succès', 'Đã xóa nhóm thành công'),
(494, 'create_new_group', '', 'Create New Group', 'Créer un nouveau groupe', 'Tạo Nhóm mới'),
(495, 'my_games', '', 'My Games', 'Mes Jeux', 'Trờ chơi của tôi'),
(496, 'no_games_found', '', 'No games found', 'Pas de jeux trouvés', 'Không tìm thấy trò chơi'),
(497, 'groups', '', 'Groups', 'Groupes', 'Nhóm'),
(498, 'no_friends', '', 'No friends yet', 'Pas encore d&#039;amis', 'Chưa có bạn bè'),
(499, 'no_groups', '', 'Didn&#039;t join any groups yet', 'N&#039;a pas encore de rejoindre les groupes', 'Chưa tham gia nhóm nào'),
(500, 'load_more_pages', '', 'Load more pages', 'Chargez plus de pages', 'Tải thêm trang'),
(501, 'load_more_groups', '', 'Load more groups', 'Chargez plusieurs groupes', 'Tải thêm nhóm'),
(502, 'joined_group', '', 'Joined your group ({group_name})', 'Rejoint notre groupe ({group_name})', 'Đã tham gia nhóm ({group_name}) của bạn'),
(503, 'happy', '', 'Happy', 'Heureux', 'Happy'),
(504, 'loved', '', 'Loved', 'Aimé', 'Loved'),
(505, 'sad', '', 'Sad', 'Triste', 'Sad'),
(506, 'so_sad', '', 'Very sad', 'Très triste', 'Very sad'),
(507, 'angry', '', 'Angry', 'En colère', 'Angry'),
(508, 'confused', '', 'Confused', 'Confus', 'Confused'),
(509, 'smirk', '', 'Hot', 'Chaud', 'Hot'),
(510, 'broke', '', 'Broken', 'Brisé', 'Broken'),
(511, 'expressionless', '', 'expressionless', 'Inexpressif', 'expressionless'),
(512, 'cool', '', 'Cool', 'Bien', 'Cool'),
(513, 'funny', '', 'Funny', 'Amusant', 'Funny'),
(514, 'tired', '', 'Tired', 'Fatigué', 'Tired'),
(515, 'lovely', '', 'Lovely', 'Charmant', 'Lovely'),
(516, 'blessed', '', 'Blessed', 'Béni', 'Blessed'),
(517, 'shocked', '', 'Shocked', 'Choqué', 'Shocked'),
(518, 'sleepy', '', 'Sleepy', 'Somnolent', 'Sleepy'),
(519, 'pretty', '', 'Pretty', 'Assez', 'Pretty'),
(520, 'bored', '', 'Bored', 'Ennuyé', 'Bored'),
(521, 'total_users', '', 'Total Users', 'Nombre d&#039;utilisateurs', 'Tổng số người dùng'),
(522, 'users', '', 'Users', 'Utilisateurs', 'Người dùng'),
(523, 'pages', '', 'Pages', 'Pages', 'Trang'),
(524, 'games', '', 'Games', 'Jeux', 'Trò chơi'),
(525, 'online_users', '', 'Online Users', 'Utilisateurs en ligne', 'Người dùng trực tuyến'),
(526, 'recent_searches', '', 'Recent Searches', 'Recherches récentes', 'Tìm kiếm gần đây'),
(527, 'clear', '', 'Clear', 'Clair', 'Clear'),
(528, 'search_filter', '', 'Search filter', 'Filtre de recherche', 'Bộ lọc tìm kiếm'),
(529, 'keyword', '', 'Keyword', 'Mot-clé', 'Từ khóa'),
(530, 'what_are_looking_for', '', 'What are looking for ?', 'Que cherchez?', 'Những gì đang được tìm kiếm?'),
(531, 'changed_profile_cover_picture_male', '', 'Changed his profile cover', 'Changé sa couverture de profil', 'Đã thay đổi ảnh bìa hồ sơ của anh ấy'),
(532, 'changed_profile_cover_picture_female', '', 'Changed her profile cover', 'Changé son profil couvercle', 'Đã thay đổi ảnh bìa hồ sơ của cô ấy'),
(533, 'latest_games', '', 'Latest games', 'Derniers jeux', 'Trò chơi mới nhất'),
(534, 'no_albums_found', '', 'No albums found', 'Aucun album n&#039;a été trouvé', 'Không tìm thấy album'),
(535, 'create_album', '', 'Create album', 'Créer un album', 'Tạo Album'),
(536, 'my_albums', '', 'My Albums', 'Mes albums', 'Albums của tôi'),
(537, 'album_name', '', 'Album name', 'Nom de l&#039;album', 'Tên Album'),
(538, 'upload', '', 'Upload', 'Télécharger', 'Upload'),
(539, 'add_photos', '', 'Add photos', 'Ajouter des photos', 'Thêm hình'),
(540, 'replies', '', 'Replies', 'Réponses', 'Trả lời'),
(541, 'reply_to_comment', '', 'Reply to comment', 'Répondre au commentaire', 'Trả lời bình luận'),
(542, 'replied_to_comment', '', 'replied to your comment &quot;{comment}&quot;', 'répondu à votre commentaire &quot;{comment}&quot;', 'đã trả lời bình luận &quot;{comment}&quot; của bạn'),
(543, 'comment_reply_mention', '', 'mentioned you in a reply &quot;{comment}&quot;', 'vous avez mentionné dans une réponse &quot;{comment}&quot;', 'đã đề cập đến bạn trong một trả lời  &quot;{comment}&quot;'),
(544, 'also_replied', '', 'replied to the comment &quot;{comment}&quot;', 'répondu au commentaire &quot;{comment}&quot;', 'đã trả lời bình luận &quot;{comment}&quot;'),
(545, 'liked_reply_comment', '', 'liked your reply &quot;{comment}&quot;', 'aimé votre réponse &quot;{comment}&quot;', 'đã thích trả lời &quot;{comment}&quot; của bạn'),
(546, 'wondered_reply_comment', '', 'wondered your reply &quot;{comment}&quot;', 'demandé votre réponse &quot;{comment}&quot;', 'đã cảm xúc về trả lời &quot;{comment}&quot; của bạn'),
(547, 'disliked_reply_comment', '', 'disliked your reply &quot;{comment}&quot;', 'détesté votre réponse &quot;{comment}&quot;', 'đã không thích trả lời &quot;{comment}&quot; của bạn'),
(548, 'profile_visit_notification_p', '', 'Send users a notification when i visit their profile?', 'Envoyer utilisateurs une notification lorsque je visite son profil?', 'Gửi cho người dùng một thông báo khi tôi truy cập hồ sơ của họ?'),
(549, 'showlastseen_help', '', 'if you don&#039;t share your last seen , you won&#039;t be able to see other people last seen.', 'si vous ne partagez pas votre dernière fois, vous ne serez pas en mesure de voir d&#039;autres personnes la dernière fois.', 'nếu bạn không chia sẻ lần cuối nhìn thấy, bạn sẽ không thể nhìn thấy người khác nhìn thấy lần cuối của bạn.'),
(550, 'timeline_birthday_label', '', 'Who can see my birthday?', 'Qui peut voir mon anniversaire?', 'Ai có thể xem ngày sinh nhật của tôi?'),
(551, 'people_likes_this', '', 'people like this', 'personnes aiment ce', 'người thích trang này'),
(552, 'page_inviate_label', '', 'Invite friends to like this Page', 'Inviter des amis à aimer cette page', 'Mời bạn bè thích Trang này'),
(553, 'invite_your_frineds', '', 'Invite your friends/followers', 'Invitez vos amis / followers', 'Mời những bạn bè / những người theo dõi bạn'),
(554, 'not_invite', '', 'You don&#039;t have any more friends to invite', 'Vous ne disposez pas d&#039;autres amis à inviter', 'Bạn không có thêm bạn bè để mời'),
(555, 'invite', '', 'Invite', 'Invitez', 'Mời'),
(556, 'invited_page', '', 'invited you to like ({page_name})', 'vous invite à aimer ({page_name})', 'đã mời bạn thích ({page_name})'),
(557, 'accepted_invited_page', '', 'accepted your request to like ({page_name})', 'accepté votre demande d&#039;aimer ({page_name})', 'đã chấp nhận yêu cầu của bạn để thích ({page_name})'),
(558, 'call_to_action', '', 'Call to action', 'Appel à l&#039;action', 'Gọi hành động'),
(559, 'call_to_action_target', '', 'Call to target url', 'Appel à l&#039;URL cible', 'Gọi tới URL đích'),
(560, 'call_action_type_url_invalid', '', 'Call to action website is invalid', 'Appel à l&#039;action est site de invalide', 'Trang web để gọi hành động không hợp lệ'),
(561, 'avatar_and_cover', '', 'Avatar &amp; Cover', 'Avatar &amp; Cover', 'Ảnh đại diện &amp; Ảnh bìa'),
(562, 'online_sidebar_admin_label', '', 'Enable online users to show active users in sidebar.', 'Permettre aux utilisateurs en ligne pour montrer aux utilisateurs actifs dans la barre latérale.', 'Cho phép người dùng trực tuyến hiển thị thông tin người dùng đang hoạt động trên thanh Sidebar.'),
(563, 'not_active', '', 'Not active', 'Pas actif', 'Không hoạt động'),
(564, 'females', '', 'Females', 'Femmes', 'Nữ'),
(565, 'males', '', 'Males', 'Les mâles', 'Nam'),
(566, 'dashboard', '', 'Dashboard', 'Tableau de bord', 'Bảng điều khiển'),
(567, 'albums', '', 'Albums', 'Albums', 'Albums'),
(568, 'name', '', 'Name', 'Prénom', 'Tên'),
(569, 'players', '', 'Players', 'Des joueurs', 'Người chơi'),
(570, 'add_new_game', '', 'Add New Game', 'Ajouter un nouveau jeu', 'Thêm Trò chơi'),
(571, 'game_added', '', 'Game added', 'jeu ajouté', 'Đã thêm trò chơi'),
(572, 'url_not_supported_game', '', 'This url is not supported', 'Cet URL est pas pris en charge', 'Url này không được hỗ trợ'),
(573, 'please_add_a_game', '', 'Please add a game url', 'S&#039;il vous plaît ajouter une url de jeu', 'Vui lòng thêm một Url của trò chơi'),
(574, 'active_announcements', '', 'Active announcements', 'Annonces actives', 'Kích hoạt thông báo'),
(575, 'inactive_announcements', '', 'Inactive announcements', 'Annonces inactifs', 'Thông báo không hoạt động'),
(576, 'ban', '', 'Ban', 'Ban', 'Chặn'),
(577, 'new_email', '', 'New E-mail', 'Nouveau E-mail', 'E-mail mới'),
(578, 'html_allowed', '', 'Html allowed', 'HTML autorisée', 'Đã hỗ trợ Html'),
(579, 'send_me_to_my_email', '', 'Send to my email', 'Envoyer à mon e-mail', 'Gửi đến email của tôi'),
(580, 'test_message', '', 'Test message', 'Message test', 'Tin nhắn thử nghiệm'),
(581, 'joined_members', '', 'Joined Members', 'Membres Inscrit', 'Thành viên đã tham gia'),
(582, 'join_requests', '', 'Join Requests', 'Rejoignez Demandes', 'Yêu cầu tham gia'),
(583, 'verified_pages', '', 'Verified Pages', 'Pages Vérifié', 'Trang đã xác minh'),
(584, 'file_sharing_extenstions', '', 'File sharing extensions (separated with comma,)', '', 'Mở rộng chia sẻ File (được phân tách bằng dấu phẩy ,)'),
(585, 'word_cons', '', 'Words to be censored, separated by a comma (,)', 'Partage de fichiers extensions (séparées par des virgules,)', 'Các từ được kiểm duyệt, phân tách bằng dấu phẩy (,)'),
(586, 'join', '', 'Join', 'Joindre', 'Tham gia'),
(587, 'joined', '', 'Joined', 'Inscrit', 'Đã tham gia'),
(588, 'request', '', 'Request', 'Demande', 'Yêu cầu'),
(589, 'edit_comment', '', 'Edit comment', 'Modifier commentaire', 'Sửa bình luận'),
(590, 'last_play', '', 'Last Play:', 'Dernière lecture:', 'Lần chơi cuối:'),
(591, 'play', '', 'Play', 'Joue', 'Chơi'),
(592, 'confirm_request_group_privacy_label', '', 'Confirm request when someone joining this group ?', 'Confirmer la demande lorsque quelqu&#039;un se joindre à ce groupe?', 'Yêu cầu Xác nhận khi ai đó tham gia nhóm này?'),
(593, 'who_can_see_group_posts', '', 'Who can see group&#039;s posts ?', 'Qui peut voir des groupes messages?', 'Ai có thể xem bài viết của nhóm?'),
(594, 'joined_users', '', 'Joined users', 'Inscrit utilisateurs', 'Người dùng đã tham gia'),
(595, 'living_in', '', 'Living in', 'Vivre dans', 'Đang sống ở'),
(596, 'design', '', 'Design', 'Design', 'Thiết kế'),
(597, 'people_you_may_want_to_meet', '', 'People you may want to meet', 'Les personnes que vous pouvez rencontrer', 'Những người bạn có thể muốn gặp'),
(598, 'added_new_photos_to', '', 'added new photos to', 'ajoutés nouvelles photos à', 'thêm ảnh mới vào'),
(599, 'is_feeling', '', 'is feeling', 'est le sentiment', 'là cảm xúc'),
(600, 'is_traveling', '', 'is traveling to', 'se rend à', 'đang đi du lịch đến'),
(601, 'is_listening', '', 'is listening to', 'écoute', 'đang nghe'),
(602, 'is_playing', '', 'is playing', 'est en train de jouer', 'đang chơi'),
(603, 'is_watching', '', 'is watching', 'regarde', 'đang xem'),
(604, 'feeling', '', 'Feeling', 'Sentiment', 'Cảm xúc'),
(605, 'traveling', '', 'Traveling to', 'Voyager à', 'Đi du lịch đến'),
(606, 'watching', '', 'Watching', 'En train de regarder', 'Xem'),
(607, 'playing', '', 'Playing', 'En jouant', 'Chơi'),
(608, 'listening', '', 'Listening to', 'Écouter', 'Nghe'),
(609, 'feeling_q', '', 'What are you feeling ?', 'Que ressentez vous ?', 'Bạn đang cảm thấy gì?'),
(610, 'traveling_q', '', 'Where are you traveling ?', 'Où êtes-vous?', 'Nơi bạn đang đi du lịch ?'),
(611, 'watching_q', '', 'What are you watching ?', 'Qu&#039;est-ce que vous regardez ?', 'Bạn đang xem gì vậy ?'),
(612, 'playing_q', '', 'What are you Playing ?', 'A quoi tu joues ?', 'Bạn đang chơi gì vậy ?'),
(613, 'listening_q', '', 'What are you Listening to ?', 'Qu&#039;écoutes-tu ?', 'Bạn đang nghe gì vậy ?'),
(614, 'feel_d', '', 'What are you doing ?', 'Qu&#039;est-ce que tu fais ?', 'Bạn đang làm gì đấy ?'),
(615, 'studying_at', '', 'Studying at', 'Etudier à', 'Học tại'),
(616, 'company_website_invalid', '', 'Company website is invalid', 'Site de la société est invalide', 'Trang web của công ty không hợp lệ'),
(617, 'page_deleted', '', 'Page deleted successfully', 'Page supprimée avec succès', 'Trang đã xóa thành công'),
(618, 'cover_n_label', '', 'cover image.', 'Image de couverture.', 'ảnh bìa.'),
(619, 'suggested_groups', '', 'Suggested groups', 'Groupes suggérés', 'Nhóm đề xuất'),
(620, 'accepted_join_request', '', 'accepted your request to join ({group_name})', 'accepté votre demande d&#039;adhésion ({group_name})', 'đã chấp nhận yêu cầu tham gia ({group_name}) của bạn'),
(621, 'requested_to_join_group', '', 'requested to join your group', 'demandé à rejoindre votre groupe', 'đã yêu cầu tham gia nhóm của bạn'),
(622, 'no_one_posted', '', 'No one posted yet', 'Personne encore posté', 'Chưa có ai đăng'),
(623, 'add_your_frineds', '', 'Add your friends to this group', 'Ajouter à vos amis de ce groupe', 'Thêm bạn bè của bạn vào nhóm này'),
(624, 'added_all_friends', '', 'There are no friends to add them', 'Il n&#39;y a aucun ami à les ajouter', 'There are no friends to add them'),
(625, 'added_you_to_group', '', 'added you to the group ({group_name})', 'vous ajouté au groupe ({group_name})', 'đã thêm bạn vào nhóm ({group_name})'),
(626, 'group_type', '', 'Group type', 'Type de groupe', 'Loại nhóm'),
(627, 'public', '', 'Public', 'Public', 'Công cộng'),
(628, 'private', '', 'Private', 'Privé', 'Riêng tư'),
(629, 'reports', '', 'Reports', 'Rapports', 'Báo cáo'),
(630, 'no_dislikes', '', 'No dislikes yet', 'Pas encore aversions', 'Không thích'),
(631, 'disliked', '', 'Disliked', 'N&#039;a pas aimé', 'Đã không thích'),
(632, 'wondered', '', 'Wondered', 'Demandé', 'Đã cảm xúc'),
(633, 'terms', '', 'Terms Pages', 'Conditions Pages', 'Trang điều khoản'),
(634, 'profile_privacy', '', 'User Profile Privacy', 'Profil de confidentialité', 'Hồ sơ cá nhân'),
(635, 'profile_privacy_info', '', 'Enable it to allow non logged users to view users profiles.', 'Activer qu&#039;il permette non connecté aux utilisateurs de voir les profils des utilisateurs.', 'Bật chức năng cho phép người dùng không đăng nhập vẫn xem được hồ sơ cá nhân.'),
(636, 'video_upload', '', 'Video Upload', 'Video Upload', 'Tải lên Video'),
(637, 'video_upload_info', '', 'Enable video upload to share &amp; upload videos to the site.', 'Activer télécharger la vidéo pour partager et télécharger des vidéos sur le site.', 'Cho phép tải lên Video để chia sẻ và tải Video lên trang web.'),
(638, 'audio_upload', '', 'Audio Upload', 'Audio Upload', 'Tải lên Âm thanh'),
(639, 'audio_upload_info', '', 'Enable audio upload to share &amp; upload sounds to the site.', 'Activer audio upload pour partager et télécharger des sons sur le site.', 'Cho phép tải lên âm thanh để chia sẻ và tải âm thanh lên trang web.'),
(640, 'read_more', '', 'Read more', 'En lire plus..', 'Xem thêm'),
(641, 'read_less', '', 'Read less', 'Lire moins..', 'Đọc ít hơn'),
(642, 'add_photo', '', 'Add a photo.', 'Ajouter une photo.', 'Thêm một bức ảnh.'),
(643, 'add_photo_des', '', 'Show your unique personality and style.', 'Affichez votre personnalité et votre style uniques.', 'Thể hiện cá tính và phong cách độc đáo của bạn.'),
(644, 'start_up_skip', '', 'Or Skip this step for now.', 'Sauter cette étape pour le moment', 'Hoặc Bỏ qua bước này ngay bây giờ.'),
(645, 'start_up_continue', '', 'Save &amp; Continue', 'Enregistrer &amp; Continuer', 'Lưu và Tiếp tục'),
(646, 'tell_us', '', 'Tell us about you.', 'Parlez-nous de vous.', 'Hãy giới thiệu cho chúng tôi về bạn.'),
(647, 'tell_us_des', '', 'Share your information with our community.', 'Partager vos informations avec notre communauté.', 'Chia sẻ thông tin của bạn với cộng đồng của chúng tôi.'),
(648, 'get_latest_activity', '', 'Get latest activities from our popular users.', 'Obtenir les dernières activités de nos utilisateurs populaires.', 'Nhận các hoạt động mới nhất từ ​​người dùng phổ biến của chúng tôi.'),
(649, 'follow_head', '', 'Follow our famous users.', 'Suivez nos utilisateurs célèbres.', 'Theo dõi người dùng nổi tiếng của chúng tôi.'),
(650, 'follow_num', '', 'Follow {number} &amp; Finish', 'Suivez {number} &amp; Terminer', 'Theo dõi {number} &amp; Kết thúc'),
(651, 'looks_good', '', 'Looks good.', 'Ça a l&#039;air bien.', 'Có vẻ tốt.'),
(652, 'looks_good_des', '', 'You&#039;ll be able to add more to your profile later.', 'Vous serez en mesure de compléter votre profil ultérieurement.', 'Bạn sẽ có thể thêm nhiều hơn vào hồ sơ của bạn sau này.'),
(653, 'upload_your_photo', '', 'Upload your photo', 'Téléchargez votre photo', 'Tải lên hình ảnh của bạn'),
(654, 'please_wait', '', 'Please wait..', 'S&#039;il vous plaît, attendez..', 'Xin vui lòng chờ ..'),
(655, 'username_or_email', '', 'Username or E-mail', 'Nom d&#039;utilisateur ou email', 'Tài khoản hoặc E-mail'),
(656, 'email_setting', '', 'E-mail Setting', 'E-mail Réglage', 'Thiết lập E-mail'),
(657, 'years_old', '', 'years old', 'ans', 'tuổi'),
(658, 'friends_birthdays', '', 'Friends Birthdays', 'Annivarsaire d&#039;amis', 'Sinh nhật bạn bè'),
(659, 'sms_setting', '', 'SMS Setting', 'Paramètres SMS', 'Thiết lập SMS'),
(660, 'smooth_loading', '', 'Smooth Loading', 'Chargement régulier', 'Tải mượt mà'),
(661, 'boosted_pages_viewable', '', 'Boosted pages are already viewable by all our community members.', 'Les pages boostées sont déjà visibles par tous les membres de votre communauté', 'Các trang được tăng cường đã có thể xem được bởi tất cả các thành viên cộng đồng của chúng tôi.'),
(662, 'boost_page_in_same_time', '', 'You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} pages at the same time.', 'Vous êtes un {type_name}, vous pouvez booster {can_boost} pages en même temps.', 'Bạn là một {type_name}, Bạn chỉ có thể tăng cường các trang {can_boost} cùng một lúc.'),
(663, 'boost_posts_in_same_time', '', 'You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} posts at the same time.', 'You&#039;re a {type_name}, vous pouvez booster {can_boost} posts en même temps.', 'Bạn là một {type_name}, Bạn chỉ có thể tăng cường các bài viết {can_boost} cùng một lúc.'),
(664, 'there_are_no_boosted_pages', '', 'There are no boosted pages yet.', 'Il n&#039;y a pas encore de pages boostées.', 'Không có trang nào được tăng cường.'),
(665, 'there_are_no_boosted_posts', '', 'There are no boosted posts yet.', 'Il n&#039;y a pas encore de posts boostés.', 'Không có bài viết nào được tăng cường.'),
(666, 'discover_pro_types', '', 'Discover more features with {sitename} PRO packages !', 'Découvrez plus de fonctionnalités avec {sitename} PRO !', 'Khám phá nhiều tính năng hơn với các gói {sitename} PRO!'),
(667, 'star', '', 'Star', 'Etoile', 'Star'),
(668, 'hot', '', 'Hot', 'Hot', 'Hot'),
(669, 'ultima', '', 'Ultima', 'Ultima', 'Ultima'),
(670, 'vip', '', 'Vip', 'Vip', 'Vip'),
(671, 'featured_member', '', 'Featured member', 'Membres en vedette', 'Thành viên nổi bật'),
(672, 'see_profile_visitors', '', 'See profile visitors', 'Voir le profil des visiteurs', 'Xem hồ sơ khách truy cập'),
(673, 'show_hide_lastseen', '', 'Show / Hide last seen', 'Voir / Cacher la dernière fois vu', 'Hiển thị / Ẩn lần cuối'),
(674, 'verified_badge', '', 'Verified badge', 'Badge Vérifié', 'Huy hiệu đã được xác minh'),
(675, 'post_promotion_star', '', 'Posts promotion&lt;br&gt;', 'Promotion de post&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;', 'Bài viết quảng cáo&lt;br&gt;'),
(676, 'page_promotion_star', '', 'Pages promotion&lt;br&gt;', 'Promotion de page&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;', 'Trang quảng cáo&lt;br&gt;'),
(677, '0_discount', '', '0% discount', '0% de réduction', 'Giảm giá 0%'),
(678, '10_discount', '', '10% discount', '10% de réduction', 'Giảm giá 10%'),
(679, '20_discount', '', '20% discount', '20% de réduction', 'Giảm giá 20%'),
(680, '60_discount', '', '60% discount', '60% de réduction', 'Giảm giá 60%'),
(681, 'per_week', 'Per Week', 'Per Week', 'Par semaine', 'Trong tuần'),
(682, 'per_month', 'Per Month', 'Per Month', 'Par mois', 'Trong tháng'),
(683, 'per_year', 'Per Year', 'Per Year', 'Par an', 'Trong năm'),
(684, 'life_time', '', 'life time', 'à vie', 'cả đời'),
(685, 'upgrade_now', '', 'Upgrade Now', 'Mise à jour maintenant', 'Nâng cấp ngay bây giờ'),
(686, 'boosted_posts', '', 'Boosted Posts', 'Posts boostés', 'Tăng cường Bài viết'),
(687, 'boosted_pages', '', 'Boosted Pages', 'Pages boostées', 'Tăng cường Trang'),
(688, 'put_me_here', '', 'Put Me Here', 'Me mettre ici', 'Put Me Here'),
(689, 'promoted', '', 'Promoted', 'Promoted', 'Quảng bá'),
(690, 'oops_something_went_wrong', '', 'Oops ! Something went wrong.', 'Oops ! Quelquechose s&#039;est mal passé.', 'Rất tiếc! Đã xảy ra lỗi.'),
(691, 'try_again', '', 'Try again', 'Essayez encore', 'Thử lại'),
(692, 'boost_page', '', 'Boost Page', 'Booster Page', 'Tăng cường cho trang'),
(693, 'page_boosted', '', 'Page Boosted', 'Page Boostée', 'Đã tăng cường cho trang'),
(694, 'un_boost_page', '', 'Un-Boost Page', 'Un-Boost Page', 'Không tăng cường cho trang'),
(695, 'edit_page_settings', '', 'Edit Page Settings', 'Editer paramètres de la Page', 'Chỉnh sửa cài đặt trang'),
(696, 'blocked_users', '', 'Blocked Users', 'Utilisateurs bloqués', 'Người dùng bị chặn'),
(697, 'un_block', '', 'Un-Block', 'Débloquer', 'Bỏ chặn'),
(698, 'css_file', '', 'CSS file', 'fichier CSS', 'CSS file'),
(699, 'css_status_default', '', 'Default design', 'Design par défaut', 'Thiết kế mặc định'),
(700, 'css_status_my', '', 'My CSS file', 'Mon fichier CSS', 'My CSS file'),
(701, 'css_file_info', '', 'You can fully design your profile by uploading your own CSS file', 'Vous pouvez modifier le design de votre profil via le téléversement de votre propre fichier CSS', 'You can fully design your profile by uploading your own CSS file'),
(702, 'invite_your_frineds_home', '', 'Invite Your Friends', 'Inviter vos amis', 'Mời bạn bè của bạn'),
(703, 'send_invitation', '', 'Send Invitation', 'Envoyer Invitation', 'Send Invitation'),
(704, 'boost_post', '', 'Boost Post', 'Boost Post', 'Boost Post'),
(705, 'unboost_post', '', 'UnBoost Post', 'Un-Boost Post', 'UnBoost Post'),
(706, 'drag_to_re', '', 'Drag to reposition cover', 'Faites glisser pour repositionner la couverture', 'Drag to reposition cover'),
(707, 'block_user', '', 'Block User', 'Bloquer l&#39;utilisateur', 'Block User'),
(708, 'edit_user', '', 'Edit User', 'Editer Utilisateur', 'Edit User'),
(709, 'cong', '', 'Congratulations ! You&#039;re now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}', 'Félicitation ! Vous êtes maintenant un &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}', 'Congratulations ! Youre now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}'),
(710, 'cong_2', '', 'Start browsing the new features', 'Commencer à naviguer sur les nouvelles fonctionnalités', 'Start browsing the new features'),
(711, 'activation_oops', '', 'Oops, looks like your account is not activated yet.', 'Oops, votre compte n&#39;est pas encore activé.', 'Oops, looks like your account is not activated yet.'),
(712, 'activation_method', '', 'Please choose a method below to activate your account.', 'Merci de choisir une méthode ci*dessous pour activer votre compte.', 'Please choose a method below to activate your account.'),
(713, 'activation_email', '', 'Via E-mail', 'Par E-mail', 'Via E-mail'),
(714, 'activation_phone', '', 'Via Phone Number', 'Par téléphone', 'Via Phone Number'),
(715, 'activation_or', '', 'Or', 'Ou', 'Or'),
(716, 'activation_send_code', '', 'Send Confirmation Code', 'Envoyer le code confirmation', 'Send Confirmation Code'),
(717, 'activation_get_code_again', '', 'Didn&#039;t get the code?', 'Didn&#39;t get the code?', 'Didnt get the code?'),
(718, 'activation_resend', '', 'Resend', 'Renvoyer', 'Resend'),
(719, 'activation_should_receive', '', 'You should receive the code within', 'You should receive the code within', 'You should receive the code within'),
(720, 'confirm', '', 'Confirm', 'Confirmer', 'Confirm'),
(721, 'phone_num_ex', '', 'Phone number (eg. +905...)', 'Numéro de téléphone (eg. +33...)', 'Phone number (eg. +905...)'),
(722, 'error_while_activating', '', 'Error while activating your account.', 'Error while activating your account.', 'Error while activating your account.'),
(723, 'wrong_confirmation_code', '', 'Wrong confirmation code.', 'Code de confirmation erroné.', 'Wrong confirmation code.'),
(724, 'failed_to_send_code', '', 'Failed to send the confirmation code.', 'Impossible d&#39;envoyer le code de confirmation.', 'Failed to send the confirmation code.'),
(725, 'worng_phone_number', '', 'Wrong phone number.', 'Numéro de téléphone erroné.', 'Wrong phone number.'),
(726, 'phone_already_used', '', 'Phone number already used.', 'Numéro de téléphone déjà utilisé.', 'Phone number already used.'),
(727, 'sms_has_been_sent', '', 'SMS has been sent successfully.', 'SMS envoyé avec succès.', 'SMS has been sent successfully.'),
(728, 'error_while_sending_sms', '', 'Error while sending the SMS, please try another number.', 'Erreur lors de l&#39;envooi du SMS, merci d&#39;essayer un autre numéro de téléphone.', 'Error while sending the SMS, please try another number.'),
(729, 'failed_to_send_code_fill', '', 'Failed to send the confirmation code, please select one of the activation methods.', 'Impossible d&#39;envoyer le code de confirmation, essayez une des méthodes d&#39;activation.', 'Failed to send the confirmation code, please select one of the activation methods.'),
(730, 'email_sent_successfully', '', 'E-mail has been sent successfully, please check your inbox or spam folder for the activation link.', 'E-mail envoyé avec succès, merci de vérifier votre boite de réception et dossier spam pour le lien d&#39;activation.', 'E-mail has been sent successfully, please check your inbox or spam folder for the activation link.'),
(731, 'limit_exceeded', '', 'Limit exceeded, please try again later.', 'Limite dépassé, merci de réessayer plus tard.', 'Limit exceeded, please try again later.'),
(732, 'failed_to_send_code_email', '', 'Error while sending the SMS, please try another number or activate your account via email by logging into your account.', 'Erreur lors de l&#39;envoi du SMS, merci d&#39;essayer un autre numéro ou activer votre compte par e-mail en vous connectant à votre compte.', 'Error while sending the SMS, please try another number or activate your account via email by logging into your account.'),
(733, 'free_member', '', 'Free Member', 'Free member', 'Free Member'),
(734, 'star_member', '', 'Star Member', 'Star Member', 'Star Member'),
(735, 'hot_member', '', 'Hot Member', 'Hot Member', 'Hot Member'),
(736, 'ultima_member', '', 'Ultima Member', 'Ultima Member', 'Ultima Member'),
(737, 'vip_member', '', 'Vip Member', 'Vip Member', 'Vip Member'),
(738, 'moderator', '', 'Moderator', 'Modérateur', 'Moderator'),
(739, 'member_type', '', 'Member Type', 'Type de membres', 'Member Type'),
(740, 'membership', '', 'Membership', 'Membership', 'Membership'),
(741, 'upgrade', '', 'Upgrade', 'Mise à jour', 'Upgrade'),
(742, 'error_please_try_again', '', 'Error, Please try again later.', 'Erreur, merci de réessayer plus tard.', 'Error, Please try again later.'),
(743, 'upgrade_to_pro', '', 'Upgrade To Pro', 'Passer à Pro', 'Upgrade To Pro'),
(744, 'no_answer', '', 'No answer', 'Pas de réponse', 'No answer'),
(745, 'please_try_again_later', '', 'Please try again later.', 'Veuillez réessayer plus tard.', 'Please try again later.'),
(746, 'answered', '', 'Answered !', 'répondre !', 'Answered !'),
(747, 'call_declined', '', 'Call declined', 'Appel refusé', 'Call declined'),
(748, 'call_declined_desc', '', 'The recipient has declined the call, please try again later.', 'Le destinataire a refusé l&#39;appel, s&#39;il vous plaît essayer à nouveau plus tard.', 'The recipient has declined the call, please try again later.'),
(749, 'new_video_call', '', 'New video call', 'Nouvel appel vidéo', 'New video call'),
(750, 'new_video_call_desc', '', 'wants to video chat with you.', 'veut le chat vidéo avec vous.', 'wants to video chat with you.'),
(751, 'decline', '', 'Decline', 'Déclin', 'Decline'),
(752, 'accept_and_start', '', 'Accept &amp; Start', 'Accepter &amp; Start', 'Accept &amp; Start'),
(753, 'calling', '', 'Calling', 'Appel', 'Calling'),
(754, 'calling_desc', '', 'Please wait for your friend answer.', 'S&#39;il vous plaît attendre votre ami répondre à démarrer le chat vidéo.', 'Please wait for your friend answer.'),
(755, 'your_friends_chat', '', 'You&#039;re friends on {site_name}', 'Vous êtes amis sur {site_name}', 'Youre friends on {site_name}'),
(756, 'your_following', '', 'You&#039;re following', 'Vous suivez', 'Youre following'),
(757, 'see_all', '', 'See all', 'Voir tout', 'See all'),
(758, 'me', '', 'Me', 'Moi', 'Me'),
(759, 'post_promotion_hot', '', 'Boost up to {monthly_boosts} posts&lt;br&gt;', 'Boost up to {monthly_boosts} posts&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {monthly_boosts} posts&lt;br&gt;'),
(760, 'page_promotion_hot', '', 'Boost up to {monthly_boosts} pages&lt;br&gt;', 'Boost up to {monthly_boosts} pages&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {monthly_boosts} pages&lt;br&gt;'),
(761, 'post_promotion_ultima', '', 'Boost up to {yearly_boosts} posts&lt;br&gt;', 'Boost up to {yearly_boosts} posts&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {yearly_boosts} posts&lt;br&gt;'),
(762, 'page_promotion_ultima', '', 'Boost up to {yearly_boosts} pages&lt;br&gt;', 'Boost up to {yearly_boosts} pages&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {yearly_boosts} pages&lt;br&gt;'),
(763, 'post_promotion_vip', '', 'Boost up to {lifetime_boosts} posts&lt;br&gt;', 'Boost up to {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {lifetime_boosts} posts&lt;br&gt;'),
(764, 'page_promotion_vip', '', 'Boost up to {lifetime_boosts} pages&lt;br&gt;', 'Boost up to {lifetime_boosts} pages&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {lifetime_boosts} pages&lt;br&gt;'),
(765, 'sign_up', '', 'Sign up', 'S&#39;inscrire', 'Sign up'),
(766, 'youtube', '', 'YouTube', 'YouTube', 'YouTube'),
(767, 'my_products', '', 'My Products', 'Mes produits', 'Sản phẩm của tôi'),
(768, 'choose_a_payment_method', '', 'Choose a payment method', 'Choisissez une méthode de paiement', 'Chọn phương thức thanh toán'),
(769, 'paypal', '', 'PayPal', 'PayPal', 'PayPal'),
(770, 'credit_card', '', 'Credit Card', 'Credit Card', 'Credit Card'),
(771, 'bitcoin', '', 'Bitcoin', 'Bitcoin', 'Bitcoin'),
(772, 'categories', '', 'Categories', 'Catégories', 'Thể loại'),
(773, 'latest_products', '', 'Latest Products', 'Derniers produits', 'Latest Products'),
(774, 'search_for_products_main', '', 'Search for products', 'Recherche de produits', 'Search for products'),
(775, 'search_for_products', '', 'Search for products in {category_name}', 'Recherche de produits dans {category_name}', 'Search for products in {category_name}'),
(776, 'no_available_products', '', 'No available products to show.', 'Pas de produits disponibles pour afficher.', 'No available products to show.'),
(777, 'load_more_products', '', 'Load more products', 'Chargez plus de produits', 'Load more products'),
(778, 'sell_new_product', '', 'Sell new product', 'Vente nouveau produit', 'Sell new product'),
(779, 'description', '', 'Description', 'La description', 'Description'),
(780, 'please_describe_your_product', '', 'Please describe your product.', 'S&#39;il vous plaît décrire votre produit.', 'Please describe your product.'),
(781, 'used', '', 'Used', 'Utilisé', 'Đã sử dụng'),
(782, 'new', '', 'New', 'Nouveau', 'Mới'),
(783, 'price', '', 'Price', 'Prix', 'Giá'),
(784, 'your_product_price', '', 'Your product price in USD currency ($), e.g (10.99)', 'Votre prix du produit en monnaie USD ($), e.g (10.99)', 'Your product price in USD currency ($), e.g (10.99)'),
(785, 'edit_product', '', 'Edit product', 'Modifier le produit', 'Edit product'),
(786, 'publish', '', 'Publish', 'Publier', 'Publish'),
(787, 'more_info', '', 'vrFairs Booth', 'vrFairs Booth', 'Gian hàng vrFairs'),
(788, 'contact_seller', '', 'Contact seller', 'Contacter le vendeur', 'Liên hệ với người bán'),
(789, 'by_product', '', 'By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;', 'Par &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posté {product_time}, dans &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;', 'By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;'),
(790, 'payment_declined', '', 'Payment declined, please try again later.', 'Paiement refusé, s&#39;il vous plaît essayer à nouveau plus tard.', 'Payment declined, please try again later.'),
(791, 'c_payment', '', 'Confirming payment, please wait..', 'paiement confirmant, s&#39;il vous plaît patienter ..', 'Confirming payment, please wait..'),
(792, 'earn_users', '', 'Earn up to ${amount} for each user your refer to us !', 'Gagnez jusqu&#39;à ${amount} pour chaque utilisateur de votre référence à nous!', 'Earn up to ${amount} for each user your refer to us !'),
(793, 'earn_users_pro', '', 'Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.', 'Gagnez jusqu&#39;à ${amount} pour chaque utilisateur de votre référence à nous et souscrira à un de nos forfaits pro.', 'Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.'),
(794, 'my_affiliates', '', 'My Affiliates', 'Mes Affiliés', 'My Affiliates'),
(795, 'my_balance', '', 'My balance', 'Mon solde', 'Số dư của tôi'),
(796, 'your_ref_link', '', 'Your affiliate link is', 'Votre lien d&#39;affiliation est', 'Your affiliate link is'),
(797, 'your_balance', '', 'Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}', 'Votre solde est ${balance}, demande de retrait minimum est ${m_withdrawal}', 'Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}'),
(798, 'your_balance_is', '', 'Your balance is', 'Votre solde est', 'Your balance is'),
(799, 'paypal_email', '', 'PayPal email', 'PayPal email', 'PayPal email'),
(800, 'amount_usd', '', 'Amount (USD)', 'Montant (USD)', 'Amount (USD)'),
(801, 'request_withdrawal', '', 'Request withdrawal', 'Demande de retrait', 'Yêu cầu rút tiền'),
(802, 'payment_history', '', 'Payment History', 'Historique de paiement', 'Lịch sử thanh toán'),
(803, 'amount', '', 'Amount', 'Montant', 'Số tiền'),
(804, 'declined', '', 'Declined', 'Refusée', 'Declined'),
(805, 'approved', '', 'Approved', 'A approuvé', 'Approved'),
(806, 'total_votes', '', 'Total votes', 'Des votes', 'Total votes'),
(807, 'mark_as_sold', '', 'Mark Product As Sold', 'Marque produit vendu', 'Mark Product As Sold'),
(808, 'added_new_product_for_sell', '', 'added new product for sell.', 'nouveau produit ajouté pour vendre.', 'added new product for sell.'),
(809, 'product_name', '', 'Product Name', 'Nom du produit', 'Tên sản phẩm'),
(810, 'in_stock', '', 'In stock', 'en magasin', 'Trong kho'),
(811, 'sold', '', 'Sold', 'Vendu', 'Sold'),
(812, 'answer', '', 'Answer', 'Répondre', 'Answer'),
(813, 'add_answer', '', 'Add answer', 'Ajouter une réponse', 'Add answer'),
(814, 'authenticating', '', 'Authenticating', 'Authentifier', 'Chứng thực'),
(815, 'welcome_back', '', 'Welcome back!', 'Nous saluons le retour!', 'Chào mừng trở lại!'),
(816, 'welcome_', '', 'Welcome!', 'Bienvenue!', 'Chào mừng bạn!'),
(817, 'connect_with_people', '', 'Connect with people.', 'Communiquer avec les gens.', 'Kết nối với mọi người.'),
(818, 'make_new_friends', '', 'Make new friends.', 'Se faire de nouveaux amis.', 'Make new friends.'),
(819, 'share_your_memories', '', 'Share your memories.', 'Partagez vos souvenirs.', 'Chia sẻ kỷ niệm của bạn.'),
(820, 'create_new_relationships', '', 'Create new relationships.', 'Créer de nouvelles relations.', 'Create new relationships.'),
(821, 'discover_new_places', '', 'Discover new places.', 'Découvrez de nouveaux endroits.', 'Khám phá những địa điểm mới.'),
(822, 'forgot_your_password', '', 'Forgot your password?', 'Mot de passe oublié?', 'Quên mật khẩu?'),
(823, 'invalid_markup', '', 'Invalid markup, please try to reset your password again', 'balisage non valide, s&#39;il vous plaît essayez de réinitialiser votre mot de passe', 'Invalid markup, please try to reset your password again'),
(824, 'go_back', '', 'Go back', 'Go back', 'Go back'),
(825, 'terms_agreement', '', 'By creating your account, you agree to our', 'En créant votre compte, vous acceptez nos', 'By creating your account, you agree to our'),
(826, 'please_choose_price', '', 'Please choose a price for your product', 'S&#39;il vous plaît choisir un prix pour votre produit', 'Please choose a price for your product'),
(827, 'please_choose_c_price', '', 'Please choose a correct value for your price', 'S&#39;il vous plaît choisir une valeur correcte pour votre prix', 'Please choose a correct value for your price'),
(828, 'please_upload_image', '', 'Please upload at least 1 photo', 'S&#39;il vous plaît télécharger au moins 1 photo', 'Please upload at least 1 photo'),
(829, 'you_have_already_voted', '', 'You have already voted this poll.', 'Vous avez déjà voté ce sondage.', 'You have already voted this poll.'),
(830, 'you_have_pending_request', '', 'You have already a pending request.', 'Vous avez déjà une demande en attente.', 'You have already a pending request.'),
(831, 'invalid_amount_value', '', 'Invalid amount value', 'valeur de quantité non valide', 'Invalid amount value'),
(832, 'invalid_amount_value_your', '', 'Invalid amount value, your amount is:', 'Valeur de quantité non valide, le montant est:', 'Invalid amount value, your amount is:'),
(833, 'invalid_amount_value_withdrawal', '', 'Invalid amount value, minimum withdrawal request is:', 'valeur de quantité non valide, demande de retrait minimum est de:', 'Invalid amount value, minimum withdrawal request is:'),
(834, 'you_request_sent', '', 'Your request has been sent, you&#039;ll receive an email regarding the payment details soon.', 'Votre demande a été envoyée, vous recevrez un e-mail concernant les détails de paiement bientôt.', 'Your request has been sent, youll receive an email regarding the payment details soon.'),
(835, 'turn_off_notification', '', 'Turn off notification sound', 'Désactiver la notification sonore', 'Turn off notification sound'),
(836, 'turn_on_notification', '', 'Turn on notification sound', 'Activer la notification sonore', 'Turn on notification sound'),
(837, 'view_more_posts', '', 'View {count} new posts', 'Vue {count} de nouveaux messages', 'View {count} new posts'),
(838, 'store_posts_by', '', 'Store posts by', 'postes de magasins par', 'Store posts by'),
(839, 'new_audio_call', '', 'New audio call', 'Nouveau appel audio', 'New audio call'),
(840, 'new_audio_call_desc', '', 'wants to talk with you.', 'Veut parler avec vous', 'wants to talk with you.'),
(841, 'audio_call', '', 'Audio call', 'Appel audio', 'Audio call'),
(842, 'audio_call_desc', '', 'talking with', 'parler avec', 'talking with'),
(843, 'market', '', 'Market', 'Marché', 'Thị trường'),
(844, 'comment_post_label', '', 'Comment', 'Commentaire', 'Bình luận'),
(846, 'by', '', 'By', 'Par', 'By'),
(847, 'load_more_blogs', '', 'Load more articles', '', 'Tải thêm bài viết'),
(848, 'blog', '', 'Blog', 'Blog', 'Blog'),
(849, 'no_blogs_found', '', 'No articles found', 'Aucun article trouvé', 'Không tìm thấy bài viết nào'),
(850, 'most_recent_art', '', 'Most recent articles', 'Articles les plus récents', 'Bài viết gần đây nhất'),
(851, 'create_new_article', '', 'Create new article', 'Créer un nouvel article', 'Tạo bài viết mới'),
(852, 'my_articles', '', 'My articles', 'Mes articles', 'Bài viết của tôi'),
(853, 'title', '', 'Title', 'Titre', 'Tiêu đề'),
(854, 'content', '', 'Content', 'Contenu', 'Nội dung'),
(855, 'select', '', 'Select', 'Sélectionner', 'Lựa chọn'),
(856, 'tags', '', 'Tags', 'Mots clés', 'Tags'),
(857, 'thumbnail', '', 'Thumbnail', 'La vignette', 'Thumbnail'),
(858, 'published', '', 'Published', 'Publié', 'Published'),
(859, 'views', '', 'Views', 'Vues', 'Xem'),
(860, 'article_updated', '', 'Your article has been successfully updated', 'Votre article a été mis à jour avec succès', 'Your article has been successfully updated'),
(861, 'article_added', '', 'Your article has been successfully added', 'Votre article a été ajouté avec succès', 'Your article has been successfully added'),
(862, 'title_more_than10', '', 'Title should be more than 10 characters', 'Le titre doit comporter plus de 10 caractères', 'Title should be more than 10 characters'),
(863, 'desc_more_than32', '', 'Description should be more than 32 characters', 'La description doit comporter plus de 32 caractères', 'Description should be more than 32 characters'),
(864, 'please_fill_tags', '', 'Please fill the tags field', 'Remplissez le champ tags', 'Please fill the tags field'),
(865, 'error_found', '', 'Error found, please try again later', 'Une erreur a été trouvée, réessayez plus tard', 'Error found, please try again later'),
(866, 'posted_on_blog', '', 'Posted {BLOG_TIME} in {CATEGORY_NAME}.', 'Posted {BLOG_TIME} in {CATEGORY_NAME}.', 'Posted {BLOG_TIME} in {CATEGORY_NAME}.'),
(867, 'created_new_blog', '', 'created new article', 'Nouvel article créé', 'created new article'),
(868, 'forum', '', 'Forum', 'Forum', 'Forum'),
(869, 'replies', '', 'Replies', 'Réponses', 'Trả lời'),
(870, 'last_post', '', 'Last Post', 'Dernier commentaire', 'Last Post'),
(871, 'topic', '', 'topic', 'sujet', 'topic'),
(872, 'thread_search', '', 'Threads search', 'Recherche de threads', 'Threads search'),
(873, 'create_new_topic', '', 'Create new topic', 'Créer un nouveau sujet', 'Create new topic'),
(874, 'jump_to', '', 'Jump to', 'Sauter à', 'Jump to'),
(875, 'my_threads', '', 'My threads', 'Mes fils', 'My threads'),
(876, 'my_messages', '', 'My Messages', 'Mes messages', 'Tin nhắn của tôi'),
(877, 'headline', '', 'Headline', 'Gros titre', 'Headline'),
(878, 'your_post', '', 'Your post', 'Votre publication', 'Your post'),
(879, 'reply', '', 'Reply', 'Répondre', 'Reply'),
(880, 'started_by', '', 'Started by', 'Commencé par', 'Started by'),
(881, 'site_admin', '', 'Site Admin', 'Administrateur du site', 'Site Admin'),
(882, 'registered', '', 'Registered', 'Inscrit', 'Registered'),
(883, 'posts', '', 'posts', 'des postes', 'bài viết'),
(884, 'reply_to_topic', '', 'Reply to this topic', 'Répondre à ce sujet', 'Reply to this topic'),
(885, 'topic_review', '', 'Topic review', 'Examen de sujet', 'Topic review'),
(886, 'your_reply', '', 'Your Reply', 'Votre réponse', 'Your Reply'),
(887, 'list_of_users', '', 'List of users', 'Liste des utilisateurs', 'List of users'),
(888, 'post_count', '', 'Posts count', 'Nombre de postes', 'Posts count'),
(889, 'referrals', '', 'Referrals', 'Renvois', 'Referrals'),
(890, 'last_visit', '', 'Last visit', 'Derniere visite', 'Last visit'),
(891, 'general_search_terms', '', 'General search terms', 'Conditions générales de recherche', 'General search terms'),
(892, 'search_for_term', '', 'Search for term', 'Rechercher un terme', 'Search for term'),
(893, 'search_in', '', 'Search in', 'Rechercher dans', 'Search in'),
(894, 'search_in_forums', '', 'Search Forums', 'Rechercher dans les forums', 'Search Forums'),
(895, 'search_in_threads', '', 'Search in threads', 'Rechercher dans les discussions', 'Search in threads'),
(896, 'search_in_messages', '', 'Search in messages', 'Rechercher dans les messages', 'Search in messages'),
(897, 'search_subject_only', '', 'Search subject only', 'Rechercher uniquement sur le sujet', 'Search subject only'),
(898, 'threads', '', 'threads', 'Fils', 'threads'),
(899, 'action', '', 'Action', 'action', 'Hoạt động'),
(900, 'posted', '', 'Posted', 'Publié', 'Posted'),
(901, 'no_forums_found', '', 'No forums found', 'Aucun forum trouvé', 'No forums found'),
(902, 'never', '', 'Never', 'Jamais', 'Never'),
(903, 'no_replies_found', '', 'No replies found', 'Aucune réponse trouvée', 'No replies found'),
(904, 'no_threads_found', '', 'No threads found', 'Aucun sujet trouvé', 'No threads found'),
(905, 'no_members_found', '', 'No members found', 'Aucun membre trouvé', 'Không tìm thấy thành viên'),
(906, 'no_sections_found', '', '', '', ''),
(907, 'wrote', '', 'wrote', 'a écrit', 'wrote'),
(908, 'edit', '', 'Edit', 'modifier', 'Chỉnh sửa'),
(909, 'edit_topic', '', 'Edit topic', 'Modifier le sujet', 'Chỉnh sửa chủ đề'),
(910, 'reply_saved', '', 'Your reply was successfully saved', 'Votre réponse a été enregistrée avec succès', 'Your reply was successfully saved'),
(911, 'reply_added', '', 'Your reply was successfully added', 'Votre réponse a été ajoutée avec succès', 'Your reply was successfully added'),
(912, 'forum_post_added', '', 'Your forum has been successfully added', 'Votre forum a été ajouté avec succès', 'Your forum has been successfully added'),
(913, 'members', '', 'Members', 'Membres', 'Thành viên'),
(914, 'help', '', 'Help', 'Aidez-moi', 'Help'),
(915, 'search_terms_more4', '', 'Type in one or more search terms, each must be at least 4 characters', 'Tapez un ou plusieurs termes de recherche, chacun doit être dau moins 4 caractères', 'Type in one or more search terms, each must be at least 4 characters'),
(916, 'events', '', 'Events', 'Événements', 'Sự kiện'),
(917, 'going', '', 'Going', 'Aller', 'Going'),
(918, 'interested', '', 'Interested', 'Intéressé', 'Interested'),
(919, 'past', '', 'Pastor', 'Passé', 'Pastor'),
(920, 'invited', '', 'invited', 'Invité', 'invited'),
(921, 'you_are_going', '', 'You are going', 'Vous allez', 'Bạn đang đi'),
(922, 'you_are_interested', '', 'You are interested', 'Tu es intéressé', 'Bạn có hứng thú'),
(923, 'start_date', '', 'Start date', 'Date de début', 'Ngày bắt đầu'),
(924, 'end_date', '', 'End date', 'Date de fin', 'Ngày kết thúc'),
(925, 'location', '', 'Location', 'Emplacement', 'Vị trí'),
(926, 'event', '', 'Event', 'un événement', 'Sự kiện'),
(927, 'no_events_found', '', 'No events found', 'Aucun événement trouvé', 'Không tìm thấy sự kiện'),
(928, 'event_you_may_like', '', 'Events you may like', 'Événements que vous aimeriez', 'Events you may like'),
(929, 'going_people', '', 'Going people', 'Aller aux gens', 'Going people'),
(930, 'interested_people', '', 'Interested people', 'Les personnes intéressées', 'Interested people'),
(931, 'invited_people', '', 'Invited people', 'Personnes invitées', 'Invited people'),
(932, 'event_added', '', 'Your event was successfully added', 'Votre événement a été ajouté avec succès', 'Your event was successfully added'),
(933, 'event_saved', '', 'Your event was successfully saved.', 'Votre événement a été enregistré', 'Your event was successfully saved.'),
(934, 'confirm_delete_event', '', 'You are sure that you want to delete this event', 'Vous êtes sûr que vous voulez supprimer cet événement', 'You are sure that you want to delete this event'),
(935, 'load_more', '', 'Load more', 'Chargez plus', 'Tải thêm'),
(936, 'subject', '', 'Subject', 'Assujettir', 'Chủ đề'),
(937, 'go', '', 'Go', 'Aller', 'Go'),
(938, 'created_new_event', '', 'created new event', 'Nouvel événement créé', 'tạo sự kiện mới'),
(939, 'my_events', '', 'My events', 'Mes événements', 'Sự kiện của tôi'),
(940, 'is_interested', '', 'is interested on your event \"{event_name}\"', 'Est intéressé par votre événement \"{event_name}\"', 'is interested on your event &quot;{event_name}&quot;'),
(941, 'is_going', '', 'is going to your event \"{event_name}\"', 'Va à votre événement \"{event_name}\"', 'is going to your event &quot;{event_name}&quot;'),
(942, 'invited_you_event', '', 'invited you to go the event \"{event_name}\"', '', 'invited you to go the event &quot;{event_name}&quot;'),
(943, 'replied_to_topic', '', 'replied to your topic', 'A répondu à votre sujet', 'replied to your topic'),
(944, 'movies', '', 'Movies', 'Films', 'Phim'),
(945, 'translate', '', 'Translate', 'Traduire', 'Dịch'),
(946, 'genre', '', 'Genre', 'Genre', 'Thể loại'),
(947, 'recommended', '', 'Recommended', 'Recommandé', 'Recommended'),
(948, 'most_watched', '', 'Most watched', 'Le plus regardé', 'Most watched'),
(949, 'stars', '', 'Stars', 'Etoiles', 'Stars'),
(950, 'more', '', 'More', 'Plus', 'Xem thêm'),
(951, 'no_movies_found', '', 'No movies found', 'Pas de films trouvés', 'Không tìm thấy phim'),
(952, 'producer', '', 'Producer', 'Producteur', 'Producer'),
(953, 'release', '', 'Release', 'Sortie', 'Release'),
(954, 'quality', '', 'Quality', 'Qualité', 'Quality'),
(955, 'more_like_this', '', 'More like this', 'Plus darticles', 'More like this'),
(956, 'wallet', '', 'Wallet', 'Portefeuille', 'Ví'),
(957, 'company', '', 'Company', 'Compagnie', 'Công ty'),
(958, 'bidding', '', 'Bidding', 'Enchère', 'Bidding'),
(959, 'clicks', '', 'Clicks', 'Clics', 'Clicks'),
(960, 'url', '', 'Url', 'Url', 'Url'),
(961, 'audience', '', 'Audience', 'Public', 'Audience'),
(962, 'select_image', '', 'Select an image', 'Sélectionnez une image', 'Chọn một hình ảnh'),
(963, 'my_balance', '', 'My balance', 'Mon solde', 'Số dư của tôi'),
(964, 'replenish_my_balance', '', 'Replenish my balance', 'Récupérer mon solde', 'Replenish my balance'),
(965, 'continue', '', 'Continue', 'Continuer', 'Tiếp tục'),
(966, 'replenishment_notif', '', 'Your balance has been replenished by', 'Votre solde a été reconstitué par', 'Your balance has been replenished by'),
(967, 'ads', '', 'Advertising', 'Publicité', 'Quảng cáo'),
(968, 'confirm_delete_ad', '', 'Are you sure you want to delete this ad', 'Êtes-vous sûr de vouloir supprimer cette annonce?', 'Are you sure you want to delete this ad'),
(969, 'delete_ad', '', 'Delete ad', 'Supprimer lannonce', 'Xóa quảng cáo'),
(970, 'no_ads_found', '', 'No ads found', 'Aucune annonce na été trouvée', 'Không tìm thấy quảng cáo'),
(971, 'not_active', '', 'Not active', 'Pas actif', 'Không hoạt động'),
(972, 'appears', '', 'Placement', 'Placement', 'Vị trí'),
(973, 'sidebar', '', 'Sidebar', 'Barre latérale', 'Thanh bên'),
(974, 'select_a_page_or_link', '', 'Select a page or enter a link to your site', 'Sélectionnez une page ou entrez un lien vers votre site', 'Chọn một trang hoặc nhập một liên kết đến trang web của bạn');
INSERT INTO `Wo_Langs` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(975, 'story', '', 'Story', 'Récit', 'Câu chuyện'),
(976, 'max_number_status', '', 'The maximum number can not exceed 20 files at a time!', 'Le nombre maximal ne peut pas dépasser 20 fichiers à la fois!', 'The maximum number can not exceed 20 files at a time!'),
(977, 'status_added', '', 'Your status has been successfully added!', 'Votre statut a été ajouté avec succès!', 'Trạng thái của bạn đã được thêm thành công!'),
(978, 'create_new_status', '', 'Create New Status', 'Créer un nouvel état', 'Tạo trạng thái mới'),
(979, 'sponsored', '', 'Sponsored', 'Sponsorisé', 'Được tài trợ'),
(980, 'notification_sent', '', 'Your notification has been sent successfully', 'Votre notification a été envoyée avec succès', 'Thông báo của bạn đã được gửi thành công'),
(981, 'hide_post', '', 'Hide post', 'Masquer la publication', 'Ẩn bài viết'),
(982, 'verification_sent', '', 'Your verification request  soon will be considered!', 'Votre demande de vérification sera bientôt prise en considération!', 'Yêu cầu xác minh của bạn sẽ sớm được xem xét!'),
(983, 'profile_verification', '', 'Verification of the profile!', 'Vérification du profil!', 'Xác minh hồ sơ!'),
(984, 'verification_complete', '', 'Congratulations your profile is verified!', 'Félicitations, votre profil est vérifié!', 'Xin chúc mừng hồ sơ của bạn đã được xác minh!'),
(985, 'upload_docs', '', 'Upload documents', 'Télécharger des documents', 'Tải lên tài liệu'),
(986, 'select_verif_images', '', 'Please upload a photo with your passport / ID  & your distinct photo', 'Veuillez télécharger une photo avec votre passeport / ID & amp; Votre photo distincte', 'Please upload a photo with your passport / ID  &amp; your distinct photo'),
(987, 'passport_id', '', 'Passport / id card', 'Passeport / carte didentité', 'Passport / id card'),
(988, 'your_photo', '', 'Your photo', 'Ta photo', 'Hình ảnh của bạn'),
(989, 'please_select_passport_id', '', 'Please select your passport/id and photo!', 'Sélectionnez votre passeport / id et photo!', 'Please select your passport/id and photo!'),
(990, 'passport_id_invalid', '', 'The passport/id picture must be an image', 'Limage passeport / id doit être une image', 'The passport/id picture must be an image'),
(991, 'user_picture_invalid', '', 'The user picture must be an image', 'Limage utilisateur doit être une image', 'The user picture must be an image'),
(992, 'verification_request_sent', '', 'Your request was successfully sent, in the very near future we will consider it!', 'Votre demande a été envoyée avec succès, dans un avenir très proche, nous lexaminerons!', 'Your request was successfully sent, in the very near future we will consider it!'),
(993, 'shared', '', 'shared', 'partagé', 'shared'),
(994, 'post_shared', '', 'Post was successfully added to your timeline!', 'Le message a été ajouté avec succès à votre calendrier!', 'Post was successfully added to your timeline!'),
(995, 'important', '', 'Important!', 'Important!', 'Quan trọng!'),
(996, 'unverify', '', 'Please note that if you change the username you will lose verification', 'Veuillez noter que si vous modifiez le nom dutilisateur, vous allez perdre la vérification', 'Please note that if you change the username you will lose verification'),
(997, 'friend_privacy', '', 'Who can see my friends?', 'Qui peut voir mes amis', 'Ai có thể nhìn thấy bạn bè của tôi?'),
(998, 'added_group_admin', '', 'added you group admin', 'Ajoute ton administrateur de groupe', 'added you group admin'),
(999, 'added_page_admin', '', 'added you page admin', 'A ajouté votre page admin', 'added you page admin'),
(1000, 'no_messages', '', 'No messages yet here.', '', 'No messages yet here.'),
(1001, 'conversation_deleted', '', 'Conversation has been deleted!', 'La conversation a été supprimée!', 'Conversation has been deleted!'),
(1002, 'close', '', 'Close', 'Fermer', 'Đóng'),
(1003, 'members', '', 'Members', 'Membres', 'Thành viên'),
(1004, 'exit_group', '', 'Exit group', 'Groupe de sortie', 'Thoát nhóm'),
(1005, 'clear_history', '', 'Clear history', 'Histoire claire', 'Xóa lịch sử'),
(1006, 'group_members', '', 'Group members', 'Les membres du groupe', 'Thành viên nhóm'),
(1007, 'add_parts', '', 'Add participant', 'Ajouter un participant', 'Thêm người tham gia'),
(1008, 'unreport', '', 'Cancel Report', 'Annuler le rapport', 'Hủy báo cáo'),
(1009, 'report_user', '', 'Report this User', 'Signaler cet utilisateur', 'Báo cáo người dùng này'),
(1010, 'report_page', '', 'Report this Page', 'Signaler cette page', 'Báo cáo Trang này'),
(1011, 'report_group', '', 'Report this Group', 'Signaler ce groupe', 'Báo cáo Nhóm này'),
(1012, 'page_rated', '', 'You have already rated this page!', 'Vous avez déjà noté cette page!', 'Bạn đã xếp hạng trang này!'),
(1013, 'rating', '', 'Rating', 'Évaluation', 'Xếp hạng'),
(1014, 'reviews', '', 'Reviews', 'Avis', 'Nhận xét'),
(1015, 'rate', '', 'Rate', 'Taux', 'Tỷ lệ'),
(1016, 'your_review', '', 'Write your review.', 'Donnez votre avis.', 'Viết đánh giá của bạn'),
(1017, 'ad_saved', '', 'Your ad has been successfully saved!', 'Votre annonce a été enregistrée avec succès!', 'Quảng cáo của bạn đã được lưu thành công!'),
(1018, 'ad_added', '', 'Your ad has been successfully added!', 'Votre annonce a été ajoutée avec succès!', 'Quảng cáo của bạn đã được thêm thành công!'),
(1019, 'invalid_ad_picture', '', 'The ads picture must be an image!', '', 'The ads picture must be an image!'),
(1020, 'enter_valid_desc', '', 'Please enter a valid description!', 'Entrez une description valable!', 'Please enter a valid description!'),
(1021, 'enter_valid_titile', '', 'Please enter a valid title!', 'Entrez un titre valide!', 'Please enter a valid title!'),
(1022, 'enter_valid_url', '', 'Please enter a valid link!', 'Veuillez entrer un lien valide!', 'Please enter a valid link!'),
(1023, 'invalid_company_name', '', 'Please enter a valid company name!', '', 'Please enter a valid company name!'),
(1024, 'mother', '', 'Mother', 'Mère', 'Mother'),
(1025, 'father', '', 'Father', 'Père', 'Father'),
(1026, 'daughter', '', 'Daughter', 'Fille', 'Daughter'),
(1027, 'son', '', 'Son', 'Fils', 'Son'),
(1028, 'sister', '', 'Sister', 'Sœur', 'Sister'),
(1029, 'brother', '', 'Brother', 'Frère', 'Brother'),
(1030, 'auntie', '', 'Auntie', 'Tata', 'Auntie'),
(1031, 'uncle', '', 'Uncle', 'Oncle', 'Uncle'),
(1032, 'niece', '', 'Niece', 'Nièce', 'Niece'),
(1033, 'nephew', '', 'Nephew', 'Neveu', 'Nephew'),
(1034, 'cousin_female', '', 'Cousin (female)', 'Cousine)', 'Cousin (female)'),
(1035, 'cousin_male', '', 'Cousin (male)', 'Cousin Male)', 'Cousin (male)'),
(1036, 'grandmother', '', 'Grandmother', 'Grand-mère', 'Grandmother'),
(1037, 'grandfather', '', 'Grandfather', 'Grand-père', 'Grandfather'),
(1038, 'granddaughter', '', 'Granddaughter', 'Petite fille', 'Granddaughter'),
(1039, 'grandson', '', 'Grandson', 'Petit fils', 'Grandson'),
(1040, 'stepsister', '', 'Stepsister', 'Demi-soeur', 'Stepsister'),
(1041, 'stepbrother', '', 'Stepbrother', 'Beau-frère', 'Stepbrother'),
(1042, 'stepmother', '', 'Stepmother', 'Stepmother', 'Stepmother'),
(1043, 'stepfather', '', 'Stepfather', 'Beau-père', 'Stepfather'),
(1044, 'stepdaughter', '', 'Stepdaughter', 'Belle fille', 'Stepdaughter'),
(1045, 'sister_in_law', '', 'Sister-in-law', 'Belle-soeur', 'Sister-in-law'),
(1046, 'brother_in_law', '', 'Brother-in-law', 'Beau-frère', 'Brother-in-law'),
(1047, 'mother_in_law', '', 'Mother-in-law', 'Belle-mère', 'Mother-in-law'),
(1048, 'father_in_law', '', 'Father-in-law', 'Beau-père', 'Father-in-law'),
(1049, 'daughter_in_law', '', 'Daughter-in-law', 'Belle-fille', 'Daughter-in-law'),
(1050, 'son_in_law', '', 'Son-in-law', 'Beau fils', 'Son-in-law'),
(1051, 'sibling_gender_neutral', '', 'Sibling (gender neutral)', 'Sibling (genre neutre)', 'Sibling (gender neutral)'),
(1052, 'parent_gender_neutral', '', 'Parent (gender neutral)', 'Parent (genre neutre)', 'Parent (gender neutral)'),
(1053, 'child_gender_neutral', '', 'Child (gender neutral)', 'Enfant (genre neutre)', 'Child (gender neutral)'),
(1054, 'sibling_of_parent_gender_neutral', '', 'Sibling of Parent (gender neutral)', 'Sibling of Parent (genre neutre)', 'Sibling of Parent (gender neutral)'),
(1055, 'child_of_sibling_gender_neutral', '', 'Child of Sibling (gender neutral)', 'Enfant de fratrie (genre neutre)', 'Child of Sibling (gender neutral)'),
(1056, 'cousin_gender_neutral', '', 'Cousin (gender neutral)', 'Cousin (genre neutre)', 'Cousin (gender neutral)'),
(1057, 'grandparent_gender_neutral', '', 'Grandparent (gender neutral)', 'Grandparent (genre neutre)', 'Grandparent (gender neutral)'),
(1058, 'grandchild_gender_neutral', '', 'Grandchild (gender neutral)', 'Petit-fils (genre neutre)', 'Grandchild (gender neutral)'),
(1059, 'step_sibling_gender_neutral', '', 'Step-sibling (gender neutral)', 'Échec-frère (genre neutre)', 'Step-sibling (gender neutral)'),
(1060, 'step_parent_gender_neutral', '', 'Step-parent (gender neutral)', 'Step-parent (genre neutre)', 'Step-parent (gender neutral)'),
(1061, 'stepchild_gender_neutral', '', 'Stepchild (gender neutral)', 'Stepchild (genre neutre)', 'Stepchild (gender neutral)'),
(1062, 'sibling_in_law_gender_neutral', '', 'Sibling-in-law (gender neutral)', 'Sage-frère (genre neutre)', 'Sibling-in-law (gender neutral)'),
(1063, 'parent_in_law_gender_neutral', '', 'Parent-in-law (gender neutral)', 'Parent-en-loi (neutre pour le genre)', 'Parent-in-law (gender neutral)'),
(1064, 'child_in_law_gender_neutral', '', 'Child-in-law (gender neutral)', 'Bien-être (genre neutre)', 'Child-in-law (gender neutral)'),
(1065, 'add_to_family', '', 'Add to family', 'Ajouter à la famille', 'Thêm vào gia đình'),
(1066, 'accept', '', 'Accept', 'Acceptez', 'Chấp nhận'),
(1067, 'family_member', '', 'Family Member', 'Membre de la famille', 'Thành viên trong gia đình'),
(1068, 'family_members', '', 'Family members', 'Membres de la famille', 'Những thành viên trong gia đình'),
(1069, 'add_as', '', 'Add as', 'Ajouter comme', 'Add as'),
(1070, 'confirm_remove_family_member', '', 'Are you sure that you want to remove this member from your family?', 'Êtes-vous sûr de vouloir supprimer ce membre de votre famille?', 'Are you sure that you want to remove this member from your family?'),
(1071, 'family_member_added', '', 'New member was successfully added to your family list!', 'Un nouveau membre a été ajouté avec succès à votre liste de famille!', 'New member was successfully added to your family list!'),
(1072, 'request_sent', '', 'Your request was successfully sent!', 'Votre demande a été envoyée avec succès!', 'Your request was successfully sent!'),
(1073, 'request_accepted', '', 'Accepted your request to be your @', 'A accepté votre demande pour être votre @', 'Accepted your request to be your @'),
(1074, 'sent_u_request', '', 'Listed you as his @', '', 'Listed you as his @'),
(1075, 'requests', '', 'Requests', 'Demandes', 'Yêu cầu'),
(1076, 'no_requests_found', '', 'No requests found!', 'Aucune demande trouvée!', 'Không tìm thấy yêu cầu!'),
(1077, 'relation_with', '', 'In relations with', 'En relation avec', 'Trong mối quan hệ với'),
(1078, 'married_to', '', 'Married to', 'Marié à', 'Đã kết hôn với'),
(1079, 'engaged_to', '', 'Engaged to', 'Fiancé à', 'Đã tham gia'),
(1080, 'relationship_status', '', 'Relationship Status ', 'Statut de la relation', 'Relationship Status'),
(1081, 'relationship_request', '', 'Relationship request ', 'Demande de relation', 'Relationship request'),
(1082, 'relhip_request_accepted', '', 'Accepted your request @ ', 'A accepté votre demande @', 'Accepted your request @'),
(1083, 'relation_rejected', '', 'rejected your relation request @', 'Rejeté votre demande de relation @', 'rejected your relation request @'),
(1084, 'file_too_big', '', 'File size error: The file exceeds allowed the limit ({file_size}) and can not be uploaded.', 'Erreur de taille de fichier: le fichier dépasse autorisé la limite ({image_fichier}) et ne peut pas être téléchargé.', 'Lỗi kích thước File: File vượt quá giới hạn ({file_size}) cho phép và không thể tải lên.'),
(1085, 'file_not_supported', '', 'Unable to upload a file: This file type is not supported.', '', 'Không thể tải lên File: Loại File này không được hỗ trợ.'),
(1086, 'years_old', '', 'years old', 'ans', 'tuổi'),
(1087, 'find_friends_nearby', '', 'Find friends', 'Retrouver des amis', 'Tìm bạn xung quanh đây'),
(1088, 'location_dist', '', 'Location distance', 'Distance demplacement', 'Khoảng cách vị trí'),
(1089, 'close_to_u', '', 'close to you', 'près de vous', 'close to you'),
(1090, 'find_friends', '', 'Find friends', 'Trouver des amis', 'Tìm bạn bè'),
(1091, 'distance', '', 'distance', 'distance', 'khoảng cách'),
(1092, 'distance_from_u', '', 'distance from you', 'Distance de vous', 'khoảng cách với bạn'),
(1093, 'show_location', '', 'Show location', '', 'Hiển thị vị trí'),
(1094, 'share_my_location', '', 'Share my location with public?', 'Partagez mon emplacement avec le public?', 'Chia sẻ vị trí của tôi với công chúng?'),
(1095, 'enter_valid_title', '', 'Please enter a valid title', 'Entrez un titre valide', 'Please enter a valid title'),
(1096, 'pay_per_click', '', 'Pay Per Click (${{PRICE}})', 'Pay Per Click (${{PRICE}})', 'Pay Per Click (${{PRICE}})'),
(1097, 'pay_per_imprssion', '', 'Pay Per Impression (${{PRICE}})', 'Pay per Impression (${{PRICE}})', 'Pay Per Impression (${{PRICE}})'),
(1098, 'top_up', '', 'Top up', 'Remplir', 'Top up'),
(1099, 'balance_is_0', '', 'Your current wallet balance is: 0, please top up your wallet to continue.', 'Votre solde de portefeuille actuel est: 0, veuillez compléter votre portefeuille pour continuer.', 'Your current wallet balance is: 0, please top up your wallet to continue.'),
(1100, 'messages_delete_confirmation', '', 'Are you sure you want to delete this conversation?', 'Êtes-vous sûr de vouloir supprimer cette conversation?', 'Are you sure you want to delete this conversation?'),
(1101, 'currency', '', 'Currency', 'Devise', 'Tiền tệ'),
(1102, 'friends_stories', '', 'Friends Stories', '', 'Câu chuyện bạn bè'),
(1103, 'no_messages_here_yet', '', 'No messages yet here.', '', 'No messages yet here.'),
(1104, 'conver_deleted', '', 'Conversation has been deleted.', 'La conversation a été supprimée.', 'Conversation has been deleted.'),
(1105, 'group_name_limit', '', 'Group name must be 4/15 characters', 'Le nom du groupe doit comporter 4/15 caractères', 'Group name must be 4/15 characters'),
(1106, 'group_avatar_image', '', 'Group avatar must be an image', '', 'Group avatar must be an image'),
(1107, 'explore', '', 'Explore', 'Explorer', 'Khám phá'),
(1108, 'format_image', '', 'File Format image', 'Image au format du fichier', 'File Format image'),
(1109, 'format_video', '', 'File Format video', 'Format de fichier vidéo', 'File Format video'),
(1110, 'video', '', 'Video', 'Vidéo', 'Video'),
(1111, 'video_player', '', 'VideoPlayer', 'Lecteur vidéo', 'VideoPlayer'),
(1112, 'no_file_chosen', '', 'No file chosen', 'Aucun fichier choisi', 'No file chosen'),
(1113, 'choose_file', '', 'Choose File', 'Choisir le fichier', 'Chọn File'),
(1114, 'media', '', 'Media File', 'Fichier multimédia', 'File đa phương tiện'),
(1115, 'select_valid_img_vid', '', 'Media file is invalid. Please select a valid image or video', 'Le fichier multimédia est invalide. Veuillez sélectionner une image ou une vidéo valide', 'Media file is invalid. Please select a valid image or video'),
(1116, 'select_valid_img', '', 'Media file is invalid. Please select a valid image', 'Le fichier multimédia est invalide. Veuillez sélectionner une image valide', 'Media file is invalid. Please select a valid image'),
(1117, 'select_valid_vid', '', 'Media file is invalid. Please select a valid video', 'Le fichier multimédia est invalide. Veuillez sélectionner une vidéo valide', 'Media file is invalid. Please select a valid video'),
(1118, 'drop_img_here', '', 'Drop Image Here', 'Déposer limage ici', 'Thả hình ảnh ở đây'),
(1119, 'or', '', 'OR', 'OU', 'Hoặc'),
(1120, 'browse_to_upload', '', 'Browse To Upload', 'Parcourir pour télécharger', 'Duyệt để tải lên'),
(1121, 'pr_completion', '', 'Profile Completion', 'Achèvement du profil', 'Hoàn thành hồ sơ'),
(1122, 'ad_pr_picture', '', 'Add your profile picture', 'Ajouter votre photo de profil', 'Thêm ảnh hồ sơ của bạn'),
(1123, 'add_ur_name', '', 'Add your name', 'Ajoutez votre nom', 'Thêm tên của bạn'),
(1124, 'ad_ur_workplace', '', 'Add your workplace', 'Ajoutez votre lieu de travail', 'Thêm nơi làm việc của bạn'),
(1125, 'ad_ur_country', '', 'Add your country', 'Ajoutez votre pays', 'Thêm quốc gia của bạn'),
(1126, 'ad_ur_address', '', 'Add your address', 'Ajoutez votre adresse', 'Thêm địa chỉ của bạn'),
(1127, 'e_sent_msg', '', 'Someone Send me a message', 'Quelquun Envoyez moi un message', 'Someone Send me a message'),
(1128, 'send_money', '', 'Send money', 'Envoyer de largent', 'Gửi tiền'),
(1129, 'u_send_money', '', 'You can send money to your friends, acquaintances or anyone', 'Vous pouvez envoyer de largent à vos amis, connaissances ou nimporte qui', 'You can send money to your friends, acquaintances or anyone'),
(1130, 'available_balance', '', 'Available balance', 'Solde disponible', 'Số dư khả dụng'),
(1131, 'send_to', '', 'Send To', 'Envoyer à', 'Gửi đến'),
(1132, 'search_name_or_email', '', 'Search for user name, e-mail', 'Recherche de nom dutilisateur, e-mail', 'Search for user name, e-mail'),
(1133, 'money_sent_to', '', 'Your money was successfully sent to', 'Votre argent a été envoyé avec succès à', 'Tiền của bạn đã được gửi thành công đến'),
(1134, 'sent_you', '', 'Sent you', 'Vous a envoyé', 'Gởi bạn'),
(1135, 'amount_exceded', '', 'The amount exceded your current balance!', 'Le montant a dépassé votre solde actuel!', 'TSố tiền đã vượt quá số dư hiện tại của bạn!'),
(1136, 'custom_thumbnail', '', 'Custom Thumbnail', 'Miniature personnalisée', 'Custom Thumbnail'),
(1137, 'cntc_limit_reached', '', 'You have reached your limit of {{CNTC_LIMIT}} friends!', 'Vous avez atteint la limite de vos amis {{CNTC_LIMIT}}!', 'You have reached your limit of {{CNTC_LIMIT}} friends!'),
(1150, 'people', '', 'People', 'Gens', 'Những người'),
(1151, 'nature', '', 'Nature', 'La nature', 'Thiên nhiên'),
(1152, 'share_to', '', 'Share to', 'Partager à', 'Chia sẻ với'),
(1153, 'timeline', '', 'Timeline', 'Chronologie', 'Dòng thời gian'),
(1154, 'pinterest', '', 'Pinterest', 'Pinterest', 'Pinterest'),
(1155, 'group', '', 'Group', 'Groupe', 'Nhóm'),
(1156, 'pro_members', '', 'Pro Members', 'Membres Pro', 'Thành viên chuyên nghiệp'),
(1157, 'copyrights', '', '© {date} {site_name}', '© {date} {site_name}', '© {date} {site_name}'),
(1158, 'popular_posts', '', 'Popular Posts', 'Messages populaires', 'Bài viết phổ biến'),
(1159, 'duration', '', 'Duration', 'Durée', 'Duration'),
(1160, 'pro_feature_control_profile', '', 'Pro features give you complete control over your profile.', 'Les fonctionnalités Pro vous donnent un contrôle total sur votre profil.', 'Pro features give you complete control over your profile.'),
(1161, 'why_choose_pro', '', 'Why Choose PRO?', 'Pourquoi choisir PRO?', 'Why Choose PRO?'),
(1162, 'whatsapp', '', 'WhatsApp', 'WhatsApp', 'WhatsApp'),
(1163, 'whatsapp', '', 'WhatsApp', 'WhatsApp', 'WhatsApp'),
(1164, 'post_login_requriement_dislike', '', 'Please log in to like, dislike, share and comment!', 'Veuillez vous connecter pour aimer, ne pas aimer, partager et commenter!', 'Please log in to like, dislike, share and comment!'),
(1165, 'post_login_requriement_none', '', 'Please log in to like, share and comment!', 'Veuillez vous connecter pour aimer, partager et commenter!', 'Please log in to like, share and comment!'),
(1166, 'e_disliked_my_posts', '', 'Someone disliked my posts', '', 'Someone disliked my posts'),
(1167, 'edit_ads', '', 'Edit ads', 'Modifier les annonces', 'Edit ads'),
(1168, 'manage_ads', '', 'Manage ads', 'Gerer annonces', 'Quản lý quảng cáo'),
(1169, 'create_new_ads', '', 'Create new ad', 'Créer une nouvelle annonce', 'Tạo quảng cáo mới'),
(1170, 'create_events', '', 'Craete new event', 'Craete nouvel événement', 'Tạo sự kiện mới'),
(1171, 'edit_event', '', 'Edit event', 'Modifier l&#039;événement', 'Chỉnh sửa sự kiện'),
(1172, 'event_going', '', 'Events Going', 'Evénements', 'Events Going'),
(1173, 'event_intersted', '', 'Events Interested', 'Événements intéressés', 'Events Interested'),
(1174, 'event_invited', '', 'Invited', 'Invité', 'Invited'),
(1175, 'events_past', '', 'Past Events', 'Événements passés', 'Past Events'),
(1176, 'events_upcoming', '', 'Upcoming Events', 'évènements à venir', 'Upcoming Events'),
(1177, 'crop_your_avatar', '', 'Crop your avatar', 'Recadrez votre avatar', 'Cắt hình đại diện'),
(1178, 'cookie_message', '', 'This website uses cookies to ensure you get the best experience on our website.', 'Ce site utilise des cookies pour vous assurer la meilleure expérience sur notre site.', '\n\n\n78/5000\n\n\nTrang web này sử dụng cookie để đảm bảo bạn có được trải nghiệm tốt nhất.'),
(1179, 'cookie_dismiss', '', 'Got It!', 'Je l&#039;ai!', 'Tôi đã hiểu'),
(1180, 'cookie_link', '', 'Learn More', 'Apprendre encore plus', 'Learn More'),
(1181, 'terms_accept', '', 'Please agree to the Terms of use & Privacy Policy', 'Veuillez accepter les conditions d&#039;utilisation et la politique de confidentialité', 'Please agree to the Terms of use &amp; Privacy Policy'),
(1182, 'good_morning', '', 'Good morning', 'Bonjour', 'Chào buổi sáng'),
(1183, 'good_afternoon', '', 'Good afternoon', 'bonne après-midi', 'Chào buổi chiều'),
(1184, 'good_evening', '', 'Good evening', 'Bonsoir', 'Chào buổi tối'),
(1185, 'create_ads', '', 'Create advertisement', 'Créer une publicité', 'Tạo quảng cáo'),
(1186, 'find_friends_nearby', '', 'Find friends', 'Retrouver des amis', 'Tìm bạn bè'),
(1187, 'phonenumber_exists', '', 'phone number already exists.', 'le numéro de téléphone existe déjà.', 'số điện thoại đã tồn tại'),
(1188, 'recover_password_by_email', '', 'Recover by email', 'Récupérer par email', 'Recover by email'),
(1189, 'recover_password_by_sms', '', 'Recover by SMS', 'Récupérer par sms', 'Recover by SMS'),
(1190, 'phonenumber_not_found', '', 'The phone number is not found', 'Le numéro de téléphone est introuvable', 'The phone number is not found'),
(1191, 'phone_invalid_characters', '', 'The phone number is invalid', 'Le numéro de téléphone est invalide ou contient des caractères', 'The phone number is invalid'),
(1192, 'recoversms_sent', '', 'Recover SMS has been sent successfully', 'Récupérer des SMS a été envoyé avec succès', 'Recover SMS has been sent successfully'),
(1193, 'transaction_log', '', 'Transactions', 'Transactions', 'Giao dịch'),
(1194, 'v2latest_activities', '', 'Latest activities', 'Dernières activités', 'Hoạt động mới nhất'),
(1195, 'v2wallettopup', '', 'Wallet Topup', 'Portefeuille Topup', 'Wallet Topup'),
(1196, 'v2adsspentdaily', '', 'Ads spent daily', 'Annonces dépensées quotidiennement', 'Ads spent daily'),
(1197, 'v2prosystemtransactions', '', 'Pro system transactions', 'Transactions système pro', 'Pro system transactions'),
(1198, 'no_transactions_found', '', 'No transactions found', 'Aucune transaction trouvée', 'No transactions found'),
(1199, 'estimated_reach', '', 'Estimated reach', 'Portée estimée', 'Estimated reach'),
(1200, 'confirmation_code_is', '', 'Your confirmation code is', 'Votre code de confirmation est', 'Your confirmation code is'),
(1201, 'website_use_cookies', '', 'This website uses cookies to ensure you get the best experience on our website.', 'Ce site utilise des cookies pour vous garantir la meilleure expérience sur notre site.', 'This website uses cookies to ensure you get the best experience on our website.'),
(1202, 'got_it', '', 'Got it!', 'Je l&#039;ai!', 'Đã hiểu!'),
(1203, 'learn_more1', '', 'Learn more', 'Apprendre encore plus', 'Learn more'),
(1204, 'poke_user', '', 'Poke', 'Poussée', 'Poke'),
(1205, 'you_have_poked', '', 'You have poked', 'Vous avez fourré', 'You have poked'),
(1206, 'no_pokes_found', '', 'No pokes found', 'Aucun coup trouvé', 'No pokes found'),
(1207, 'people_who_poked_you', '', 'People who poked you', 'Les gens qui vous ont piqué', 'People who poked you'),
(1208, 'poke_back', '', 'Poke back', 'Envoyer un poke en retour', 'Poke back'),
(1209, 'txt_poked', '', 'Poked!', 'Fourré!', 'Poked!'),
(1210, 'pokes', '', 'Pokes', 'Pokes', 'Pokes'),
(1211, 'popular_posts_comments', '', 'Popular posts &amp; comments', 'Messages et commentaires populaires', 'Bài viết và bình luận phổ biến'),
(1212, 'load_more_videos', '', 'Load more videos', 'Charger plus de vidéos', 'Tải thêm video'),
(1213, 'load_more_photos', '', 'Load more photos', 'Charger plus de photos', 'Tải thêm ảnh'),
(1214, 'no_more_videos_to_show', '', 'No more videos to show', 'plus de vidéos à montrer', 'Không có thêm video để hiển thị'),
(1215, 'no_more_photos_to_show', '', 'No more photos to show', 'plus de photos à montrer', 'Không có thêm hình ảnh để hiển thị'),
(1216, 'poked_you', '', 'Poked you', 'Vous a Poké', 'Poked you'),
(1217, 'gift_added', '', 'Gift added successfully', 'Cadeau ajouter avec succès', 'Gift added successfully'),
(1218, 'error_while_add_gift', '', 'Error while adding the gift', 'Erreur lors de l&#039;ajout d&#039;un cadeau', 'Error while adding the gift'),
(1219, 'send_a_gift', '', 'Send a gift', 'Envoyer un cadeau', 'Send a gift'),
(1220, 'gift_sent_succesfully', '', 'Gift sent successfully', 'Cadeau envoyé avec succès', 'Gift sent successfully'),
(1221, 'send_gift_to_you', '', 'sent you a gift', 'Vous a envoyé un cadeau', 'sent you a gift'),
(1222, 'my_pokes', '', 'My Pokes', 'Mes coups de coude', 'Pokes của tôi'),
(1223, 'telegram', '', 'Telegram', 'Telegram', 'Telegram'),
(1224, 'no_more_posts_to_show', '', 'No more posts to show', 'Plus de messages à afficher', 'No more posts to show'),
(1225, 'keyboard_shortcut_help', '', 'Keyboard shortcut help', 'Aide sur le raccourci clavier', 'Phím tắt trợ giúp'),
(1226, 'keyboard_shortcut_j', '', 'Scroll to the next post', 'Faites défiler jusqu&#039;au prochain message', 'Di chuyển đến bài tiếp theo'),
(1227, 'keyboard_shortcut_k', '', 'Scroll to the previous post', 'Faites défiler jusqu&#039;au message précédent', 'Di chuyển đến bài viết trước'),
(1228, 'sticker_added', '', 'Sticker added successfully', 'Autocollant ajouté avec succès', 'Sticker added successfully'),
(1229, 'error_while_add_sticker', '', 'Error while adding the sticker', 'Erreur lors de l&#039;ajout de l&#039;autocollant', 'Error while adding the sticker'),
(1230, 'reacted_to_your_post', '', 'reacted to your post', 'réagi à votre message', 'đã phản ứng với bài viết của bạn'),
(1231, 'points', '', 'Points', 'Points', 'Điểm'),
(1232, 'my_points', '', 'My Points', 'Mes points', 'Điểm của tôi'),
(1233, 'my_earnings', '', 'My Earnings', 'Mes gains', 'Thu nhập của tôi'),
(1234, 'earn_text_like', '', 'Earn %d points by liking any post', 'Gagnez %d points en aimant n&#039;importe quel poste', 'Nhận được %d điểm bằng cách thích bất kỳ bài viết nào'),
(1235, 'earn_text_dislike', '', 'Earn %d points by disliking any post', 'Gagnez %d points en ne détestant aucun message', 'Nhận được %d điểm bằng cách không thích bất kỳ bài viết nào'),
(1236, 'earn_text_comment', '', 'Earn %d points by commenting any post', 'Gagnez %d points en commentant n&#039;importe quel article', 'Nhận được %d điểm bằng cách bình luận bất kỳ bài viết nào'),
(1237, 'earn_text_wonder', '', 'Earn %d points by wondering any post', 'Gagnez %d points en vous demandant n&#039;importe quel message', 'Nhận được %d điểm bằng cách bày tỏ cảm xúc với bất kỳ bài viết nào'),
(1238, 'earn_text_create_post', '', 'Earn %d points by creating a new post', 'Gagnez %d points en créant un nouveau message', 'Nhận được %d điểm bằng cách tạo một bài viết mới'),
(1239, 'earn_text_reaction', '', 'Earn %d points by reacting on any post', 'Gagnez %d points en réagissant à n&#039;importe quel poste', 'Nhận được %d điểm bằng cách tương tác với bất kỳ bài viết nào'),
(1240, 'no_reactions', '', 'No reactions yet', 'Aucune réaction encore', 'Chưa có tương tác nào'),
(1241, 'love', '', 'Love', 'Amour', 'Love'),
(1242, 'haha', '', 'HaHa', 'HaHa', 'HaHa'),
(1243, 'wow', '', 'WoW', 'Sensationnel', 'WoW'),
(1244, 'sad', '', 'Sad', 'Triste', 'Sad'),
(1245, 'angry', '', 'Angry', 'En colère', 'Angry'),
(1246, 'reacted_to_your_comment', '', 'reacted to your comment', 'réagi à ton commentaire', 'đã tương tác với bình luận của bạn'),
(1247, 'reacted_to_your_replay', '', 'reacted to your reply', 'réagi à votre réponse', 'đã tương tác với trả lời của bạn'),
(1248, 'activity_reacted_post', '', 'reacted to {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'réagi à {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; poster &lt;/a&gt;.', 'đã tương tác với &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt; của {user} .'),
(1249, 'comment_reported', '', 'Comment reported successfully.', 'Commentaire signalé avec succès.', 'nhận xét báo cáo thành công.'),
(1250, 'report_comment', '', 'Report comment', 'Rapport de commentaire', 'Báo cáo bình luận'),
(1251, 'comment_unreported', '', 'Report deleted successfully', 'Supprimer le rapport de commentaire avec succès', 'Đã xóa báo cáo thành công'),
(1252, 'suggested_pages', '', 'Suggested pages', 'Pages suggérées', 'Trang đã được đề xuất'),
(1253, 'suggested_groups', '', 'Suggested groups', 'Groupes suggérés', 'Nhóm đề xuất'),
(1254, 'unverified', '', 'Unverified', 'Non vérifié', 'Chưa xác minh'),
(1255, 'mutual_friends', '', 'Mutual Friends', 'Amis communs', 'Bạn chung'),
(1256, 'no_mutual_friends', '', 'No mutual friends found', 'Aucun ami commun trouvé', 'Không tìm thấy bạn bè chung'),
(1257, 'viewed_your_story', '', 'viewed your story', 'vu votre histoire', 'xem câu chuyện của bạn'),
(1258, 'commented_on_blog', '', 'commented on your article', 'a commenté votre article', 'bình luận về bài viết của bạn'),
(1259, 'are_you_sure_unfriend', '', 'Are you sure you want to unfriend?', 'Êtes-vous sûr de vouloir vous libérer?', 'Bạn có chắc chắn muốn hủy kết bạn?'),
(1260, 'manage_sessions', '', 'Manage Sessions', 'Gérer les sessions', 'Quản lý phiên làm việc'),
(1261, 'platform', '', 'Platform', 'Plate-forme', 'Nền tảng'),
(1262, 'browser', '', 'Browser', 'Navigateur', 'Trình duyệt'),
(1263, 'last_active', '', 'Last active', 'Dernière activité', 'Hoạt động lần cuối'),
(1264, 'notification_settings', '', 'Notification Settings', 'Paramètres de notification', 'Cài đặt thông báo'),
(1265, 'notify_me_when', '', 'Notify me when', 'Me prévenir quand', 'Thông báo cho tôi khi'),
(1266, 'username_is_banned', '', 'The username is blacklisted and not allowed, please choose another username.', 'Le nom d&#039;utilisateur est sur liste noire et n&#039;est pas autorisé, veuillez choisir un autre nom d&#039;utilisateur.', 'Tên người dùng đã bị liệt vào danh sách đen và không được phép, vui lòng chọn tên người dùng khác.'),
(1267, 'email_is_banned', '', 'The email address is blacklisted and not allowed, please choose another email.', 'L&#039;adresse e-mail est sur liste noire et n&#039;est pas autorisée, veuillez choisir un autre e-mail.', 'Địa chỉ email được liệt kê trong danh sách đen và không được phép, vui lòng chọn một email khác.'),
(1268, 'activities', '', 'Activities', 'Activités', 'Hoạt động'),
(1269, 'activity_is_following', '', 'started following {user}', 'suit {user}', 'bắt đầu theo dõi {user}'),
(1270, 'activity_is_friend', '', 'become friends with {user}', 'devenir amis avec {user}', 'trở thành bạn bè với {user}'),
(1271, 'index_my_page_privacy', '', 'Allow search engines to index my profile and posts?', 'Autoriser les moteurs de recherche à indexer mon profil et mes publications?', 'Cho phép công cụ tìm kiếm lập chỉ mục hồ sơ và bài viết của tôi?'),
(1272, 'mark_all_as_read', '', 'Mark all conversations as read', 'Marquer toutes les conversations comme lues', 'Đánh dấu tất cả các cuộc hội thoại là đã đọc'),
(1273, 'havent_finished_post', '', 'You haven&#039;t finished your post yet. Do you want to leave without finishing?', 'Vous n&#039;avez pas encore terminé votre message. Voulez-vous partir sans finir?', 'Bạn chưa hoàn thành bài viết của mình. Bạn có muốn rời đi mà không hoàn thành?'),
(1274, 'earned_points_goto', '', 'Your earned points will automatically go to', 'Vos points gagnés iront automatiquement à', 'Điểm bạn kiếm được sẽ tự động chuyển đến'),
(1275, 'night_mode', '', 'Night mode', 'Mode nuit', 'Chế độ xem Ban đêm'),
(1276, 'light_mode', '', 'Light mode', 'Mode léger', 'Chế độ xem Ban ngày'),
(1277, 'keyboard_shortcuts', '', 'Keyboard shortcuts', 'Raccourcis clavier', 'Phím tắt'),
(1278, 'comment', '', 'Comment', 'Commentaire', 'Bình luận'),
(1279, 'write_something_here', '', 'Write something here..', 'Ecrivez quelque chose ici ..', 'Viết một cái gì đó ở đây ..'),
(1280, 'view_profile', '', 'View Profile', 'Voir le profil', 'Xem hồ sơ'),
(1281, 'block', '', 'Block', 'Bloc', 'Khối'),
(1282, 'create_page', '', 'Create Page', 'Créer une page', 'Tạo Trang mới'),
(1283, 'create_group', '', 'Create Group', 'Créer un groupe', 'Tạo Nhóm mới'),
(1284, 'create_event', '', 'Create Event', 'Créer un évènement', 'Tạo Sự kiện'),
(1285, 'create_ad', '', 'Create Ad', 'Créer une publicité', 'Tạo Quảng cáo'),
(1286, 'create_blog', '', 'Create Blog', 'Créer un blog', 'Tạo Blog'),
(1287, 'good_morning_quote', '', 'Every new day is a chance to change your life.', 'Chaque nouveau jour est une chance de changer de vie.', 'Mỗi ngày mới là một cơ hội để thay đổi cuộc sống của bạn.'),
(1288, 'good_afternoon_quote', '', 'May this afternoon be light, blessed, enlightened, productive and happy.', 'Puisse cet après-midi être léger, béni, éclairé, productif et heureux.', 'Có thể chiều nay là ánh sáng, may mắn, giác ngộ, năng suất và hạnh phúc.'),
(1289, 'good_evening_quote', '', 'Evenings are life’s way of saying that you are closer to your dreams.', 'Les soirées sont la manière de la vie de dire que vous êtes plus proche de vos rêves.', 'Buổi tối là cách sống nói rằng bạn gần với giấc mơ của mình hơn.'),
(1290, 'day_mode', '', 'Day mode', 'Mode jour', 'Chế độ Ban ngày'),
(1291, 'disable_comments', '', 'Disable comments', 'Désactiver les commentaires', 'Vô hiệu hóa bình luận'),
(1292, 'enable_comments', '', 'Enable comments', 'Activer les commentaires', 'Cho phép bình luận'),
(1293, 'comments_disabled', '', 'Comments are disabled by %d', 'Les commentaires sont désactivés par %d', 'Bình luận bị vô hiệu hóa bởi %d'),
(1294, 'confirm_your_account', '', 'Confirm your account', 'Confirmez votre compte', 'Xác nhận tài khoản của bạn'),
(1295, 'sign_in_attempt', '', 'Your sign in attempt seems a little different than usual, This could be because you are signing in from a different device or a different location.', 'Votre tentative de connexion semble légèrement différente de celle habituelle. Cela peut être dû au fait que vous vous connectez depuis un autre appareil ou un autre emplacement.', 'Nỗ lực đăng nhập của bạn có vẻ hơi khác thường, có thể là do bạn đang đăng nhập từ một thiết bị khác hoặc ở một địa điểm khác.'),
(1296, 'we_have_sent_you_code', '', 'We have sent you an email with the confirmation code.', 'Nous vous avons envoyé un email avec le code de confirmation.', 'Chúng tôi đã gửi một Mã xác thực vào địa chỉ email của bạn.'),
(1297, 'two_factor', '', 'Two-factor authentication', 'Authentification à deux facteurs', 'Xác thực hai yếu tố'),
(1298, 'to_log_in_two_factor', '', 'To log in, you need to verify your identity.', 'Pour vous connecter, vous devez vérifier votre identité.', 'Để đăng nhập, bạn cần xác minh danh tính của mình.'),
(1299, 'sent_two_factor_both', '', 'We have sent you the confirmation code to your phone and to your email address.', 'Nous vous avons envoyé le code de confirmation sur votre téléphone et sur votre adresse e-mail.', 'Chúng tôi đã gửi Mã xác thực đến số điện thoại và địa chỉ email của bạn.'),
(1300, 'sent_two_factor_email', '', 'We have sent you the confirmation code to your email address.', 'Nous vous avons envoyé le code de confirmation à votre adresse e-mail.', 'Chúng tôi đã gửi  Mã xác thực đến địa chỉ email của bạn.'),
(1301, 'sent_two_factor_phone', '', 'We have sent you the confirmation code to your phone number.', 'Nous vous avons envoyé le code de confirmation sur votre numéro de téléphone.', 'Chúng tôi đã gửi Mã xác thực đến số điện thoại của bạn.'),
(1302, 'two_factor_description', '', 'Turn on 2-step login to level-up your account&#039;s security, Once turned on, you&#039;ll use both your password and a 6-digit security code sent to your phone or email to log in.', 'Activez la connexion en deux étapes pour renforcer la sécurité de votre compte. Une fois activé, vous utiliserez votre mot de passe et un code de sécurité à 6 chiffres envoyé à votre téléphone ou à un courrier électronique pour vous connecter.', 'Bật đăng nhập 2 yếu tố để tăng cấp bảo mật tài khoản của bạn, Sau khi bật, bạn sẽ sử dụng cả mật khẩu và mã bảo mật gồm 6 chữ số, chúng được gửi đến số điện thoại hoặc email của bạn.'),
(1303, 'my_campaigns', '', 'My Campaigns', 'Mes campagnes', 'Chiến dịch của tôi'),
(1304, 'my_wallet', '', 'My Wallet', 'Mon portefeuille', 'Ví của tôi'),
(1305, 'stats', '', 'Stats', 'Statistiques', 'Số liệu thống kê'),
(1306, 'choose_audience', '', 'Choose Audience', 'Choisissez l&#039;audience', 'Chọn đối tượng'),
(1307, 'launch_ad', '', 'Launch Ad', 'Annonce de lancement', 'Ra mắt quảng cáo'),
(1308, 'pay_per_clicks', '', 'Pay Per Click', 'Payer avec un clic', 'Pay Per Click'),
(1309, 'pay_per_imprssions', '', 'Pay Per Impression', 'Pay Per Impression', 'Pay Per Impression'),
(1310, 'explore_latest_articles', '', 'Explore the latest articles', 'Explorez les derniers articles', 'Khám phá những bài viết mới nhất'),
(1311, 'search_for_article', '', 'Search for articles..', 'Rechercher des articles ..', 'Search for articles..'),
(1312, 'authors', '', 'Authors', 'Auteurs', 'Authors'),
(1313, 'news_feed', '', 'News Feed', 'Fil d&#039;actualité', 'News Feed'),
(1314, 'video_call', '', 'Video call', 'Appel vidéo', 'Gọi Video'),
(1315, 'open_in_new_tab', '', 'Open in new tab', 'Ouvrir dans un nouvel onglet', 'Mở trong Tab mới'),
(1316, 'change_color', '', 'Change color', 'Changer de couleur', 'Thay đổi màu sắc'),
(1317, 'image', '', 'Image', 'Image', 'Hình ảnh'),
(1318, 'voice', '', 'Voice', 'Voix', 'Tiếng nói'),
(1319, 'gif', '', 'GIF', 'GIF', 'GIF'),
(1320, 'stickers', '', 'Stickers', 'Des autocollants', 'Stickers'),
(1321, 'stop', '', 'Stop', 'Arrêtez', 'Stop'),
(1322, 'contact_help', '', 'Let us help you solve your issue.', 'Laissez-nous vous aider à résoudre votre problème.', 'Let us help you solve your issue.'),
(1323, 'info', '', 'Info', 'Info', 'Thông tin'),
(1324, 'users_found', '', 'users found', 'utilisateurs trouvés', 'users found'),
(1325, 'users_playing', '', 'users playing', 'utilisateurs jouant', 'users playing'),
(1326, 'popular_games', '', 'Popular Games', 'Jeux populaires', 'Trò chơi phổ biến'),
(1327, 'whats_happening', '', 'What&#039;s happening', 'Que ce passe-t-il', 'Chuyện gì đang xảy ra'),
(1328, 'discount', '', 'Discount', 'Remise', 'Giảm giá'),
(1329, 'pick_your_plan', '', 'Pick your Plan', 'Choisissez votre plan', 'Chọn gói của bạn'),
(1330, 'trusted_payment_methods', '', 'Trusted payment methods', 'Modes de paiement approuvés', 'Phương thức thanh toán tin cậy'),
(1331, 'secure_payments', '', 'Secure payments', 'Paiements sécurisés', 'Thanh toán an toàn'),
(1332, 'group_settings', '', 'Group Settings', 'Paramètres de groupe', 'Cấu hình Nhóm'),
(1333, 'page_settings', '', 'Page Settings', 'Paramètres de page', 'Cấu hình Trang'),
(1334, 'user_setting', '', 'User Settings', 'Paramètres utilisateur', 'Cấu hình Người dùng'),
(1335, 'security', '', 'Security', 'Sécurité', 'Bảo mật'),
(1336, 'earnings', '', 'Earnings', 'Gains', 'Thu nhập'),
(1337, 'open_original', '', 'Open original', 'Ouvrir l&#039;original', 'Mở bản gốc'),
(1338, 'no_comments_found', '', 'No comments found', 'Aucun commentaire trouvé', 'Không tìm thấy bình luận nào'),
(1339, 'delete_conversation', '', 'Delete Conversation', 'Supprimer la conversation', 'Xóa cuộc hội thoại'),
(1340, 'images', '', 'Images', 'Images', 'Hình ảnh'),
(1341, 'topics', '', 'Topics', 'Les sujets', 'Chủ đề'),
(1342, 'search_type', '', 'Search type', 'Type de recherche', 'Loại tìm kiếm'),
(1343, 'search_section', '', 'Search section', 'Section de recherche', 'Phần tìm kiếm'),
(1344, 'watch_now', '', 'Watch Now', 'Regarde maintenant', 'Xem bây giờ'),
(1345, 'new_product', '', 'New Product', 'Nouveau produit', 'Sản phẩm mới'),
(1346, 'latest', '', 'Latest', 'Dernier', 'Muộn nhất'),
(1347, 'price_low', '', 'Price Low', 'Prix ​​bas', 'Giá thấp'),
(1348, 'price_high', '', 'Price High', 'Prix ​​haut', 'Giá cao'),
(1349, 'view', '', 'View', 'Vue', 'Xem'),
(1350, 'buy', '', 'Buy', 'Acheter', 'Mua'),
(1351, 'community', '', 'Community', 'Communauté', 'Cộng đồng'),
(1352, 'skip', '', 'Skip', 'Sauter', 'Bỏ qua'),
(1353, 'choose_image', '', 'Choose Image', 'Choisir une image', 'Chọn hình ảnh'),
(1354, 'upload_images', '', 'Upload Images', 'Importer des images', 'Hình ảnh'),
(1355, 'create_poll', '', 'Create Poll', 'Créer un sondage', 'Thăm dò'),
(1356, 'upload_video', '', 'Upload Video', 'Télécharger une video', 'Video'),
(1357, 'create_post', '', 'Create post', 'Créer un post', 'Tạo bài viết'),
(1358, 'record_voice', '', 'Record voice', 'Enregistrer la voix', 'Ghi âm'),
(1359, 'feelings', '', 'Feelings', 'Sentiments', 'Cảm xúc'),
(1360, 'sell_product', '', 'Sell product', 'Vendre un produit', 'Sản phẩm'),
(1361, 'upload_files', '', 'Upload Files', 'Télécharger des fichiers', 'Tải lên File'),
(1362, 'stories', '', 'Stories', 'Histoires', 'Trạng thái'),
(1363, 'create_story', '', 'Create new story', 'Créer une nouvelle histoire', 'Tạo trạng thái mới'),
(1364, 'no_more_views', '', 'No more views', 'Pas plus de vues', 'Không có nhiều lượt xem'),
(1365, 'whats_going', '', 'What is going on', 'Que se passe-t-il', 'Chuyện gì đang xảy ra'),
(1366, 'view_more_post', '', 'View {count} new post', 'Voir {count} new post', 'Xem {count} bài viết mới'),
(1367, 'my_info', '', 'My Information', 'Mon information', 'Thông tin của tôi'),
(1368, 'to_download', '', 'Please choose which information you would like to download', 'Veuillez choisir les informations que vous souhaitez télécharger', 'Vui lòng chọn thông tin bạn muốn tải xuống'),
(1369, 'download_file', '', 'Download', 'Télécharger', 'Tải về'),
(1370, 'file_ready', '', 'Your file is ready to download!', 'Votre fichier est prêt à être téléchargé!', 'Tập tin của bạn đã sẵn sàng để tải về!'),
(1371, 'my_information', '', 'My Information', 'Mon information', 'Thông tin của tôi'),
(1372, 'generate_file', '', 'Generate file', 'Générer un fichier', 'Tạo tập tin'),
(1373, 'edit_group', 'Edit group', 'Edit group', 'Editer le groupe', 'Chỉnh sửa nhóm'),
(1374, 'adult_image_file', 'We have detected some adult content on the image you uploaded, therefore we have declined your uploa', 'We have detected some adult content on the image you uploaded, therefore we have declined your upload process.', 'Nous avons détecté du contenu réservé aux adultes sur l&#039;image que vous avez téléchargée. Par conséquent, nous avons refusé votre processus de téléchargement.', 'Chúng tôi đã phát hiện một số nội dung người lớn trên hình ảnh bạn đã tải lên, do đó chúng tôi đã từ chối quá trình tải lên của bạn.'),
(1375, 'view_image', 'View Image', 'View Image', 'Voir l&#039;image', 'Xem hình ảnh'),
(1376, 'phone_number_error', 'Phone number should be as this format: +90..', 'Phone number should be as this format: +90..', 'Le numéro de téléphone doit être au format suivant: +90 ..', 'Số điện thoại phải ở định dạng này: +84 ..'),
(1377, 'something_wrong', 'Something went wrong, please try again later.', 'Something went wrong, please try again later.', 'Quelque chose c&#039;est mal passé. Merci d&#039;essayer plus tard.', 'Đã xảy ra lỗi, vui lòng thử lại sau.'),
(1378, 'confirmation_code', 'Confirmation code', 'Confirmation code', 'Code de confirmation', 'Mã xác thực'),
(1379, 'your_phone_verified', 'Your phone number has been successfully verified.', 'Your phone number has been successfully verified.', 'Votre numéro de téléphone a été vérifié avec succès.', 'Số điện thoại của bạn đã được xác minh thành công.'),
(1380, 'your_email_verified', 'Your E-mail has been successfully verified.', 'Your E-mail has been successfully verified.', 'Votre courriel a été vérifié avec succès.', 'Email của bạn đã được xác minh thành công.'),
(1381, 'your_phone_email_verified', 'Your phone number and E-mail have been successfully verified.', 'Your phone number and E-mail have been successfully verified.', 'Votre numéro de téléphone et votre adresse e-mail ont été vérifiés avec succès.', 'Số điện thoại và E-mail của bạn đã được xác minh thành công.'),
(1382, 'confirmation_email_sent', 'A confirmation email has been sent.', 'A confirmation email has been sent.', 'Un email de confirmation a été envoyé.', 'Một email xác nhận đã được gửi.'),
(1383, 'confirmation_message_sent', 'A confirmation message was sent.', 'A confirmation message was sent.', 'Un message de confirmation a été envoyé.', 'Một tin nhắn xác nhận đã được gửi.'),
(1384, 'confirmation_message_email_sent', 'A confirmation message and email were sent.', 'A confirmation message and email were sent.', 'Un message de confirmation et un email ont été envoyés.', 'Một tin nhắn xác nhận và email đã được gửi.'),
(1385, 'confirmation_email', 'We have sent an email that contains the confirmation code to verify your new email.', 'We have sent an email that contains the confirmation code to verify your new email.', 'Nous avons envoyé un email contenant le code de confirmation pour vérifier votre nouvel email.', 'Chúng tôi đã gửi một email chứa Mã xác thực để xác minh email mới của bạn.'),
(1386, 'confirmation_message', 'We have sent a message that contains the confirmation code to verify your new phone.', 'We have sent a message that contains the confirmation code to verify your new phone.', 'Nous avons envoyé un message contenant le code de confirmation pour vérifier votre nouveau téléphone.', 'Chúng tôi đã gửi một tin nhắn chứa Mã xác thực để xác minh số điện thoại mới của bạn.'),
(1387, 'confirmation_email_message_text', 'We have sent a message and an email that contain the confirmation code to enable two-factor authenti', 'We have sent a message and an email that contain the confirmation code to enable two-factor authentication.', 'Nous avons envoyé un message et un courrier électronique contenant le code de confirmation pour permettre une authentification à deux facteurs.', 'Chúng tôi đã gửi một tin nhắn và một email có chứa Mã xác thực để cho phép xác thực hai yếu tố.'),
(1388, 'confirmation_email_text', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.', 'Nous avons envoyé un courrier électronique contenant le code de confirmation pour activer l&#039;authentification à deux facteurs.', 'Chúng tôi đã gửi một email chứa mã xác nhận để kích hoạt xác thực hai yếu tố.'),
(1389, 'confirmation_message_text', 'We have sent a message that contains the confirmation code to enable Two-factor authentication.', 'We have sent a message that contains the confirmation code to enable Two-factor authentication.', 'Nous avons envoyé un message contenant le code de confirmation pour activer l&#039;authentification à deux facteurs.', 'Chúng tôi đã gửi một tin nhắn có chứa Mã xác thực để kích hoạt xác thực hai yếu tố.'),
(1390, 'share_post_on_group', 'Share post on a group', 'Share post on a group', 'Partager un post sur un groupe', 'Chia sẻ bài viết trên một nhóm'),
(1391, 'please_group_name', 'Please write the group name', 'Please write the group name', 'S&#039;il vous plaît écrivez le nom du groupe', 'Vui lòng viết tên nhóm'),
(1392, 'share_post_on_page', 'Share to a page', 'Share to a page', 'Partager sur une page', 'Chia sẻ với một trang'),
(1393, 'please_page_name', 'Please type the page name', 'Please type the page name', 'Veuillez taper le nom de la page', 'Vui lòng nhập tên trang'),
(1394, 'share_post_on_user', 'Share to user', 'Share to user', 'Partager avec l&#039;utilisateur', 'Chia sẻ với người dùng'),
(1395, 'post_shared_successfully', 'Post has been successfully shared.', 'Post has been successfully shared.', 'La publication a été partagée avec succès.', 'Bài viết đã được chia sẻ thành công.'),
(1396, 'to', 'To', 'To', 'À', 'Đến'),
(1397, 'share_new_post', 'Share the post on', 'Share the post on', 'Partager le post sur', 'Chia sẻ bài viết trên'),
(1398, 'shared_a_post', 'shared a', 'shared a', 'partagé un', 'đã chia sẻ một'),
(1399, 'shared_your_post', 'shared your post', 'shared your post', 'partagé votre post', 'đã chia sẻ bài viết của bạn'),
(1400, 'shared_a_post_in_timeline', 'shared a post to your timeline', 'shared a post to your timeline', 'partagé un post sur votre timeline', 'đã chia sẻ bài viết lên dòng thời gian của bạn'),
(1401, 'no_shared', 'No shares yet', 'No shares yet', 'Pas encore d&#039;actions', 'Chưa có chia sẻ nào'),
(1402, 'member', 'Member', 'Member', 'Membre', 'Thành viên'),
(1403, 'pro_con', 'Congratulations ! You&#039;re now a', 'Congratulations ! You&#039;re now a', 'Toutes nos félicitations ! Vous êtes maintenant un', 'Xin chúc mừng ! Bây giờ bạn là một'),
(1404, 'other', 'Other', 'Other', 'Other', 'Khác'),
(1405, 'all_', 'All', 'All', 'Tout', 'Tất cả'),
(1406, 'users_liked_post', 'People liked this post', 'People liked this post', 'Les gens ont aimé ce post', 'People liked this post'),
(1407, 'users_wondered_post', 'People wondered this post', 'People wondered this post', 'Les gens se demandaient ce post', 'People wondered this post'),
(1408, 'users_shared_post', 'People shared this post', 'People shared this post', 'Les gens ont partagé ce post', 'People shared this post'),
(1409, 'users_reacted_post', 'People reacted to this post', 'People reacted to this post', 'Les gens ont réagi à ce post', 'People reacted to this post'),
(1410, 'users_wondered_comment', 'People wondered this comment', 'People wondered this comment', 'Les gens se demandaient ce commentaire', 'People wondered this comment'),
(1411, 'users_liked_comment', 'People liked this comment', 'People liked this comment', 'Les gens ont aimé ce commentaire', 'People liked this comment'),
(1412, 'reCaptcha_error', 'Please check the re-captcha.', 'Please check the re-captcha.', 'S&#039;il vous plaît vérifier le re-captcha.', 'Hãy kiểm tra mã re-captcha.'),
(1413, 'my', 'My', 'My', 'ma', 'My');
INSERT INTO `Wo_Langs` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(1414, 'bank_transfer', 'Bank transfer', 'Bank transfer', 'virement', 'Bank transfer'),
(1415, 'bank_transfer_request', 'Your request has been successfully sent, we will notify you once it&#039;s approved', 'Your request has been successfully sent, we will notify you once it&#039;s approved', 'Votre demande a été envoyée avec succès, nous vous en informerons une fois approuvée', 'Your request has been successfully sent, we will notify you once its approved'),
(1416, 'bank_pro', 'Your bank receipt has been approved!', 'Your bank receipt has been approved!', 'Votre facture bancaire a été approuvée!', 'Your bank receipt has been approved!'),
(1417, 'bank_decline', 'Your bank receipt has been declined!', 'Your bank receipt has been declined!', 'Votre facture bancaire a été refusée!', 'Your bank receipt has been declined!'),
(1418, 'my_timeline', 'My Timeline', 'My Timeline', 'Ma chronologie', 'Dòng thời gian của tôi'),
(1419, '1419', 'category', 'Tourist destination', 'Tourist destination', 'Địa điểm du lịch'),
(1420, '1420', 'category', 'Tourist destination', 'Tourist destination', 'Địa điểm du lịch'),
(1421, '1421', 'category', 'Tourist destination', 'Tourist destination', 'Địa điểm du lịch'),
(1422, '1422', 'category', 'Hotel &amp; Resort', 'Hotel &amp; Resort', 'Nơi ở, Khách sạn, Resort'),
(1423, '1423', 'category', 'Hotel &amp; Resort', 'Hotel &amp; Resort', 'Nơi ở, Khách sạn, Resort'),
(1424, '1424', 'category', 'Hotel &amp; Resort', 'Hotel &amp; Resort', 'Nơi ở, Khách sạn, Resort'),
(1425, '1425', 'category', 'Food, Coffee', 'Food, Coffee', 'Ẩm thực &amp; Ăn uống'),
(1426, '1426', 'category', 'Food, Coffee', 'Food, Coffee', 'Ẩm thực &amp; Ăn uống'),
(1427, '1427', 'category', 'Food, Coffee', 'Food, Coffee', 'Ẩm thực &amp; Ăn uống'),
(1428, '1428', 'category', 'Education', 'Éducation', 'Giáo dục &amp; Đào tạo'),
(1429, '1429', 'category', 'Education', 'Éducation', 'Giáo dục &amp; Đào tạo'),
(1430, '1430', 'category', 'Education', 'Éducation', 'Giáo dục &amp; Đào tạo'),
(1431, '1431', 'category', 'Entertainment', 'Divertissement', 'Giải trí'),
(1432, '1432', 'category', 'Entertainment', 'Divertissement', 'Giải trí'),
(1433, '1433', 'category', 'Entertainment', 'Divertissement', 'Giải trí'),
(1434, '1434', 'category', 'Movies &amp; Animation', 'Films &amp; Animations', 'Phim ảnh, biểu diễn nghệ thuật'),
(1435, '1435', 'category', 'Movies &amp; Animation', 'Films &amp; Animations', 'Phim ảnh, biểu diễn nghệ thuật'),
(1436, '1436', 'category', 'Movies &amp; Animation', 'Films &amp; Animations', 'Phim ảnh, biểu diễn nghệ thuật'),
(1437, '1437', 'category', 'Gaming Zone', 'Jeux', 'Khu trò chơi, giải trí'),
(1438, '1438', 'category', 'Gaming Zone', 'Jeux', 'Khu trò chơi, giải trí'),
(1439, '1439', 'category', 'Gaming Zone', 'Jeux', 'Khu trò chơi, giải trí'),
(1440, '1440', 'category', 'History and Facts', 'Histoire et faits', 'Chứng tích lịch sử'),
(1441, '1441', 'category', 'History and Facts', 'Histoire et faits', 'Chứng tích lịch sử'),
(1442, '1442', 'category', 'History and Facts', 'Histoire et faits', 'Chứng tích lịch sử'),
(1443, '1443', 'category', 'Nightlife', 'Nightlife', 'Giải trí về đêm'),
(1444, '1444', 'category', 'Nightlife', 'Nightlife', 'Giải trí về đêm'),
(1445, '1445', 'category', 'Nightlife', 'Nightlife', 'Giải trí về đêm'),
(1446, '1446', 'category', 'Natural', 'Naturel', 'Thắng cảnh tự nhiên'),
(1447, '1447', 'category', 'Natural', 'Naturel', 'Thắng cảnh tự nhiên'),
(1448, '1448', 'category', 'Natural', 'Naturel', 'Thắng cảnh tự nhiên'),
(1449, '1449', 'category', 'Travel Support Center', 'Travel Support Center', 'Trung tâm hỗ trợ du lịch'),
(1450, '1450', 'category', 'Travel Support Center', 'Travel Support Center', 'Trung tâm hỗ trợ du lịch'),
(1451, '1451', 'category', 'Travel Support Center', 'Travel Support Center', 'Trung tâm hỗ trợ du lịch'),
(1452, '1452', 'category', 'Bank &amp; ATM', 'Bank &amp; ATM', 'ATM, Ngân hàng'),
(1453, '1453', 'category', 'Bank &amp; ATM', 'Bank &amp; ATM', 'ATM, Ngân hàng'),
(1454, '1454', 'category', 'Bank &amp; ATM', 'Bank &amp; ATM', 'ATM, Ngân hàng'),
(1455, '1455', 'category', 'Hospital', 'Hospital', 'Chăm sóc sức khỏe, Bệnh viện'),
(1456, '1456', 'category', 'Hospital', 'Hospital', 'Chăm sóc sức khỏe, Bệnh viện'),
(1457, '1457', 'category', 'Hospital', 'Hospital', 'Chăm sóc sức khỏe, Bệnh viện'),
(1458, '1458', 'category', 'Event', 'Event', 'Sự kiện'),
(1459, '1459', 'category', 'Event', 'Event', 'Sự kiện'),
(1460, '1460', 'category', 'Event', 'Event', 'Sự kiện'),
(1461, '1461', 'category', 'Science and Technology', 'Science et technologie', 'Khoa hoc và Kỹ thuật'),
(1462, '1462', 'category', 'Science and Technology', 'Science et technologie', 'Khoa hoc và Kỹ thuật'),
(1463, '1463', 'category', 'Science and Technology', 'Science et technologie', 'Khoa hoc và Kỹ thuật'),
(1464, '1464', 'category', 'Sport', 'Sport', 'Khu thể thao'),
(1465, '1465', 'category', 'Sport', 'Sport', 'Khu thể thao'),
(1466, '1466', 'category', 'Sport', 'Sport', 'Khu thể thao'),
(1467, '1467', 'category', 'Tour', 'Tour', 'Tour Du lịch'),
(1468, '1468', 'category', 'Tour', 'Tour', 'Tour Du lịch'),
(1469, '1469', 'category', 'Tour', 'Tour', 'Tour Du lịch'),
(1470, '1470', 'category', 'Apparel & Accessories', 'Apparel & Accessories', 'Apparel &amp; Accessories'),
(1471, '1471', 'category', 'Autos & Vehicles', 'Autos & Vehicles', 'Autos &amp; Vehicles'),
(1472, '1472', 'category', 'Baby & Children\'s Products', 'Baby & Children&#39;s Products', 'Baby &amp; Children&#039;s Products'),
(1473, '1473', 'category', 'Beauty Products & Services', 'Beauty Products & Services', 'Beauty Products &amp; Services'),
(1474, '1474', 'category', 'Computers & Peripherals', 'Computers & Peripherals', 'Computers &amp; Peripherals'),
(1475, '1475', 'category', 'Consumer Electronics', 'Consumer Electronics', 'Consumer Electronics'),
(1476, '1476', 'category', 'Dating Services', 'Dating Services', 'Dating Services'),
(1477, '1477', 'category', 'Financial Services', 'Financial Services', 'Financial Services'),
(1478, '1478', 'category', 'Gifts & Occasions', 'Gifts & Occasions', 'Gifts &amp; Occasions'),
(1479, '1479', 'category', 'Home & Garden', 'Home & Garden', 'Home &amp; Garden'),
(1480, 'sort_by', 'Sort by', 'Sort by', 'Trier par', 'Sort by'),
(1481, 'top', 'Top', 'Top', 'Haut', 'Top'),
(1482, 'comment_on_post', 'Comment on post', 'Comment on post', 'Commentaire sur le post', 'Comment on post'),
(1483, 'email_provider_banned', 'The email provider is blacklisted and not allowed, please choose another email provider.', 'The email provider is blacklisted and not allowed, please choose another email provider.', 'Le fournisseur de messagerie est sur la liste noire et n&#039;est pas autorisé. Veuillez choisir un autre fournisseur de messagerie.', 'The email provider is blacklisted and not allowed, please choose another email provider.'),
(1484, 'sent_product_to_you', 'Sent product to you', 'Sent product to you', 'Produit envoyé à vous', 'Sent product to you'),
(1485, 'color', 'Color', 'Color', 'Couleur', 'Color'),
(1486, '2checkout', '2Checkout', '2Checkout', '2Checkout', '2Checkout'),
(1487, 'card_number', 'Card Number', 'Card Number', 'Numéro de carte', 'Card Number'),
(1488, 'address', 'Address', 'Address', 'Adresse', 'Địa chỉ'),
(1489, 'city', 'City', 'City', 'Ville', 'Thành phố'),
(1490, 'state', 'State', 'State', 'Etat', 'State'),
(1491, 'zip', 'Zip Code', 'Zip Code', 'Code postal', 'Zip Code'),
(1492, 'pay', 'Pay Now', 'Pay Now', 'Payez maintenant', 'Pay Now'),
(1493, '2checkout_declined', 'Your payment was declined, please contact your bank or card issuer and make sure you have the requir', 'Your payment was declined, please contact your bank or card issuer and make sure you have the required funds.', 'Votre paiement a été refusé, veuillez contacter votre banque ou votre émetteur de carte et assurez-vous de disposer des fonds nécessaires.', 'Your payment was declined, please contact your bank or card issuer and make sure you have the required funds.'),
(1494, 'expire_date', 'Expire Date', 'Expire Date', 'Date d&#039;expiration', 'Hạn sử dụng'),
(1495, 'no_interested_people', 'There are no interested users.', 'There are no interested users.', 'Il n&#039;y a pas d&#039;utilisateurs intéressés.', 'Không có người dùng quan tâm.'),
(1496, 'less', 'less', 'Less', 'Less', 'Ít hơn'),
(1497, 'completed', 'Completed', 'Completed', 'Terminé', 'Đã hoàn thành'),
(1498, 'studied_at', 'Studied at', 'Studied at', 'Étudié à', 'Đã học tại'),
(1499, 'cant_share_own', 'You can&#039;t share a post on a page or a group that is your not own.', 'You can&#039;t share a post on a page or a group that is your not own.', 'Vous ne pouvez pas partager un message sur une page ou un groupe qui n&#039;est pas le vôtre.', 'Bạn không thể chia sẻ một bài đăng trên một trang hoặc một nhóm không phải của bạn.'),
(1500, 'accept_group_chat_request', 'Accepted your group chat invitation.', 'Accepted your group chat invitation.', 'Accepté votre invitation à la discussion de groupe.', 'Chấp nhận lời mời trò chuyện nhóm của bạn.'),
(1501, 'jobs', 'Jobs', 'Jobs', 'Emplois', 'Việc làm'),
(1502, 'post_job_text', 'Post a job for {{page_name}} to reach the right applicants on', 'Post a job for {{page_name}} to reach the right applicants on', 'Déposez une offre pour {{nom_page}} afin d&#039;atteindre les bons candidats le', 'Post a job for {{page_name}} to reach the right applicants on'),
(1503, 'create_job', 'Create Job', 'Create Job', 'Créer un emploi', 'Tạo việc làm'),
(1504, 'job_title', 'Job Title', 'Job Title', 'Profession', 'Chức danh công việc'),
(1505, 'salary_range', 'Salary Range', 'Salary Range', 'Échelle salariale', 'Mức lương'),
(1506, 'minimum', 'Minimum', 'Minimum', 'Le minimum', 'Tối thiểu'),
(1507, 'maximum', 'Maximum', 'Maximum', 'Maximum', 'Tối đa'),
(1508, 'per_hour', 'Per Hour', 'Per Hour', 'Par heure', 'Per Hour'),
(1509, 'per_day', 'Per Day', 'Per Day', 'Par jour', 'Per Day'),
(1510, 'per_week', 'Per Week', 'Per Week', 'Par semaine', 'Trong tuần'),
(1511, 'per_month', 'Per Month', 'Per Month', 'Par mois', 'Trong tháng'),
(1512, 'per_year', 'Per Year', 'Per Year', 'Par an', 'Trong năm'),
(1513, 'job_type', 'Job Type', 'Job Type', 'Type d&#039;emploi', 'Job Type'),
(1514, 'full_time', 'Full Time', 'Full Time', 'À plein temps', 'Full Time'),
(1515, 'part_time', 'Part Time', 'Part Time', 'À temps partiel', 'Part Time'),
(1516, 'internship', 'Internship', 'Internship', 'Stage', 'Internship'),
(1517, 'volunteer', 'Volunteer', 'Volunteer', 'Bénévole', 'Volunteer'),
(1518, 'contract', 'Contract', 'Contract', 'Contrat', 'Contract'),
(1519, 'job_des_text', 'Describe the responsibilities and preferred skills for this job', 'Describe the responsibilities and preferred skills for this job', 'Décrivez les responsabilités et les compétences préférées pour cet emploi.', 'Describe the responsibilities and preferred skills for this job'),
(1520, 'job_add_iamge', 'Add an image to help applicants see what it&#039;s like to work at this location.', 'Add an image to help applicants see what it&#039;s like to work at this location.', 'Ajoutez une image pour aider les candidats à voir à quoi ça ressemble de travailler à cet endroit.', 'Add an image to help applicants see what its like to work at this location.'),
(1521, 'use_cover_photo', 'Use Cover Photo', 'Use Cover Photo', 'Utiliser la photo de couverture', 'Use Cover Photo'),
(1522, 'questions', 'Questions', 'Questions', 'Des questions', 'Questions'),
(1523, 'free_text_question', 'Free Text Question', 'Free Text Question', 'Question de texte libre', 'Free Text Question'),
(1524, 'yes_no_question', 'Yes/No Question', 'Yes/No Question', 'Question oui / non', 'Yes/No Question'),
(1525, 'multiple_choice_question', 'Multiple Choice Question', 'Multiple Choice Question', 'Question à choix multiples', 'Multiple Choice Question'),
(1526, 'add_question', 'Add Question', 'Add Question', 'Ajouter une question', 'Add Question'),
(1527, 'add_an_answers', 'Add answers', 'Add answers', 'Ajouter des réponses', 'Add answers'),
(1528, 'question_one', 'Question One', 'Question One', 'Question une', 'Question One'),
(1529, 'question_two', 'Question Two', 'Question Two', 'Deuxième question', 'Question Two'),
(1530, 'question_three', 'Question Three', 'Question Three', 'Troisième question', 'Question Three'),
(1531, 'edit_job', 'Edit Job', 'Edit Job', 'Modifier le travail', 'Edit Job'),
(1532, 'delete_job', 'Delete Job', 'Delete Job', 'Supprimer le travail', 'Delete Job'),
(1533, 'apply_now', 'Apply Now', 'Apply Now', 'Appliquer maintenant', 'Apply Now'),
(1534, 'experience', 'Experience', 'Experience', 'Expérience', 'Experience'),
(1535, 'add_experience', 'Add Experience', 'Add Experience', 'Ajouter une expérience', 'Add Experience'),
(1536, 'position', 'Position', 'Position', 'Position', 'Chức vụ'),
(1537, 'where_did_you_work', 'Where did you work?', 'Where did you work?', 'Où avez-vous travaillé?', 'Where did you work?'),
(1538, 'i_currently_work', 'I currently work here', 'I currently work here', 'Je travaille actuellement ici', 'I currently work here'),
(1539, 'please_answer_questions', 'Please answer the questions', 'Please answer the questions', 'S&#039;il vous plaît répondre aux questions', 'Please answer the questions'),
(1540, 'you_apply_this_job', 'You have already applied for this job.', 'You have already applied for this job.', 'Vous avez déjà postulé pour ce travail.', 'You have already applied for this job.'),
(1541, 'search_for_jobs', 'Search for jobs', 'Search for jobs', 'Chercher du travail', 'Search for jobs'),
(1542, 'no_available_jobs', 'No available jobs to show.', 'No available jobs to show.', 'Aucun emploi disponible à afficher.', 'No available jobs to show.'),
(1543, 'load_more_jobs', 'Load more jobs', 'Load more jobs', 'Charger plus de jobs', 'Load more jobs'),
(1544, 'show_apply', 'Show Applies', 'Show Applies', 'Afficher appliquer', 'Show Applies'),
(1545, 'common_things', 'Common Things', 'Common Things', 'Choses communes', 'Những điều phổ biến'),
(1546, 'thing_in_common', 'Thing in common', 'Thing in common', 'Chose en commun', 'Điểm chung'),
(1547, 'things_in_common', 'Things in common', 'Things in common', 'Choses en commun', 'Điểm chung'),
(1548, 'weather_unit', 'Weather Unit', 'Weather Unit', 'Unité météorologique', 'Đơn vị thời tiết'),
(1549, 'job_applied', 'Already applied', 'Already applied', 'Déjà appliqué', 'Already applied'),
(1550, 'apply_your_job', 'applied to your job request.', 'applied to your job request.', 'appliqué à votre demande d&#039;emploi.', 'applied to your job request.'),
(1551, 'apply_job_successfully', 'You have successfully applied to this job.', 'You have successfully applied to this job.', 'Vous avez postulé avec succès à ce travail.', 'You have successfully applied to this job.'),
(1552, 'job_successfully_created', 'Job request successfully created.', 'Job request successfully created.', 'Demande de travail créée avec succès.', 'Job request successfully created.'),
(1553, 'job_successfully_edited', 'Job request successfully updated.', 'Job request successfully updated.', 'Demande de travail mise à jour avec succès.', 'Job request successfully updated.'),
(1554, 'invited_to_group', 'invited you to join the group chat.', 'invited you to join the group chat.', 'vous invite à rejoindre le chat en groupe.', 'mời bạn tham gia trò chuyện nhóm.'),
(1555, 'declined_group_chat_request', 'declined your group chat invitation.', 'declined your group chat invitation.', 'a refusé votre invitation à la discussion de groupe.', 'từ chối lời mời trò chuyện nhóm của bạn.'),
(1556, 'offer_job', 'Offer a job', 'Offer a job', 'Offrir un emploi', 'Offer a job'),
(1557, 'posted_job_offer', 'posted a job offer', 'posted a job offer', 'posté une offre d&#039;emploi.', 'posted a job offer'),
(1558, 'verified_page', 'Verified Page', 'Verified Page', 'Page vérifiée', 'Trang đã xác minh'),
(1559, 'unfriend', 'Unfriend', 'Unfriend', 'Désamie', 'Hủy kết bạn'),
(1560, 'funding', 'Fundings', 'Fundings', 'Des financements', 'Tài trợ'),
(1561, 'my_funding', 'My Funding Requests', 'My Funding Requests', 'Mes demandes de financement', 'Yêu cầu tài trợ của tôi'),
(1562, 'create_new_funding', 'Create new funding request', 'Create new funding request', 'Créer une nouvelle demande de financement', 'Create new funding request'),
(1563, 'funding_created', 'Funding request has been successfully created.', 'Funding request has been successfully created.', 'La demande de financement a été créée avec succès.', 'Funding request has been successfully created.'),
(1564, 'no_funding_found', 'No funding found', 'No funding found', 'Aucun financement trouvé', 'No funding found'),
(1565, 'delete_fund', 'Delete', 'Delete', 'Effacer', 'Delete'),
(1566, 'confirm_delete_fund', 'Are you sure that you want to delete this funding request?', 'Are you sure that you want to delete this funding request?', 'Êtes-vous sûr de vouloir supprimer cette demande de financement?', 'Are you sure that you want to delete this funding request?'),
(1567, 'funding_edited', 'Funding request has been successfully updated.', 'Funding request has been successfully updated.', 'La demande de financement a été mise à jour avec succès.', 'Funding request has been successfully updated.'),
(1568, 'most_recent_funding', 'Most recent funding', 'Most recent funding', 'Financement le plus récent', 'Most recent funding'),
(1569, 'raised_of', 'Raised of', 'Raised of', 'Élevé de', 'Raised of'),
(1570, 'donate', 'Donate', 'Donate', 'Faire un don', 'Donate'),
(1571, 'donated_to', 'donated to your funding request.', 'donated to your funding request.', 'fait un don à votre demande de financement.', 'donated to your funding request.'),
(1572, 'total_donations', 'Total donations', 'Total donations', 'Total des dons', 'Total donations'),
(1573, 'recent_donations', 'Recent donations', 'Recent donations', 'Dons récents', 'Recent donations'),
(1574, 'instagram', 'Instagram', 'Instagram', 'Instagram', 'Instagram'),
(1575, 'created_donation_request', 'created a donation request', 'created a donation request', 'créé une demande de don', 'created a donation request'),
(1576, 'people_with_common', 'Meet people with things in common', 'Meet people with things in common', 'Rencontrer des gens avec des choses en commun', 'Meet people with things in common'),
(1577, 'donated_to_request', 'donated to a funding request', 'donated to a funding request', 'donné à une demande de financement', 'donated to a funding request'),
(1578, 'you_cant_pay', 'You can`t donate more than {{money}}', 'You can`t donate more than {{money}}', 'Vous ne pouvez pas payer plus que {{money}}', 'You can`t donate more than {{money}}'),
(1579, 'confirm_delete_job', 'Are you sure that you want to delete this job?', 'Are you sure that you want to delete this job?', 'Êtes-vous sûr de vouloir supprimer ce travail?', 'Are you sure that you want to delete this job?'),
(1580, '1580', 'category', 'Accounting &amp; Finance', '', 'Kế toán &amp; Tài chính'),
(1581, '1581', 'category', 'Admin &amp; Office', '', 'Quản trị &amp; Văn phòng'),
(1582, '1582', 'category', 'Art &amp; Design', '', 'Thiết kế mỹ thuật'),
(1583, '1583', 'category', 'Business Operations', '', 'Hoạt động kinh doanh'),
(1584, '1584', 'category', 'Cleaning & Facilities', '', 'Cleaning &amp; Facilities'),
(1585, '1585', 'category', 'Community & Social Services', '', 'Community &amp; Social Services'),
(1586, '1586', 'category', 'Computer & Data', '', 'Computer &amp; Data'),
(1587, '1587', 'category', 'Construction & Mining', '', 'Construction &amp; Mining'),
(1588, '1588', 'category', 'Education', '', 'Education'),
(1589, '1589', 'category', 'Farming & Forestry', '', 'Farming &amp; Forestry'),
(1590, '1590', 'category', 'Healthcare', '', 'Healthcare'),
(1591, '1591', 'category', 'Installation, Maintenance & Repair', '', 'Installation, Maintenance &amp; Repair'),
(1592, '1592', 'category', 'Legal', '', 'Legal'),
(1593, '1593', 'category', 'Management', '', 'Management'),
(1594, '1594', 'category', 'Manufacturing', '', 'Manufacturing'),
(1595, '1595', 'category', 'Media & Communication', '', 'Media &amp; Communication'),
(1596, '1596', 'category', 'Personal Care', '', 'Personal Care'),
(1597, '1597', 'category', 'Protective Services', '', 'Protective Services'),
(1598, '1598', 'category', 'Restaurant & Hospitality', '', 'Restaurant &amp; Hospitality'),
(1599, '1599', 'category', 'Retail & Sales', '', 'Retail &amp; Sales'),
(1600, '1600', 'category', 'Science & Engineering', '', 'Science &amp; Engineering'),
(1601, '1601', 'category', 'Sports & Entertainment', '', 'Sports &amp; Entertainment'),
(1602, '1602', 'category', 'Transportation', '', 'Transportation'),
(1603, 'lost_in_space', '', 'Looks like you&#039;re lost in space!', 'Looks like youre lost in space!', 'Looks like youre lost in space!'),
(1604, 'add_funds', '', 'Add Funds', 'Add Funds', 'Add Funds'),
(1605, 'send_money_friends', '', 'Send money to friends', 'Send money to friends', 'Send money to friends'),
(1606, 'view_analytics', '', 'View Analytics', 'View Analytics', 'View Analytics'),
(1607, 'next', '', 'Next', 'Next', 'Next'),
(1608, 'ad_media', '', 'Media', 'Media', 'Media'),
(1609, 'targeting', '', 'Targeting', 'Targeting', 'Targeting'),
(1610, 'comp_name', '', 'Company name', 'Company name', 'Company name'),
(1611, 'camp_title', '', 'Campaign title', 'Campaign title', 'Campaign title'),
(1612, 'website_url', '', 'Website URL', 'Website URL', 'Website URL'),
(1613, 'camp_desc', '', 'Campaign description', 'Campaign description', 'Campaign description'),
(1614, 'ad_img_help', '', 'Select a image for your campaign', 'Select a image for your campaign', 'Select a image for your campaign'),
(1615, 'ad_start_date_help', '', 'Select campaign starting date, UTC', 'Select campaign starting date, UTC', 'Select campaign starting date, UTC'),
(1616, 'ad_end_date_help', '', 'Select campaign ending date, UTC', 'Select campaign ending date, UTC', 'Select campaign ending date, UTC'),
(1617, 'ad_desc_help', '', 'Tell users what your campaign is about', 'Tell users what your campaign is about', 'Tell users what your campaign is about'),
(1618, 'camp_budget', '', 'Campaign Budget', 'Campaign Budget', 'Campaign Budget'),
(1619, 'camp_budget_help', '', 'Enter the amount you want to spend on this campaign', 'Enter the amount you want to spend on this campaign', 'Enter the amount you want to spend on this campaign'),
(1620, 'ad_preview', '', 'Ad preview', 'Ad preview', 'Ad preview'),
(1621, 'album_name_help', '', 'Choose your album name', 'Choose your album name', 'Choose your album name'),
(1622, 'browse_articles', '', 'Browse articles', 'Browse articles', 'Browse articles'),
(1623, 'no_blogs_created', '', 'You haven&#039;t created any articles yet.', 'You havent created any articles yet.', 'You havent created any articles yet.'),
(1624, 'create_group_chat', '', 'Create a group chat', 'Create a group chat', 'Create a group chat'),
(1625, 'turn_on', '', 'Turn On', 'Turn On', 'Turn On'),
(1626, 'type_message', '', 'Type a message', 'Type a message', 'Type a message'),
(1627, 'edit_funding', '', 'Edit funding request', 'Edit funding request', 'Edit funding request'),
(1628, 'fund_amount', '', 'How much money you would like to receive?', 'How much money you would like to receive?', 'How much money you would like to receive?'),
(1629, 'browse_events', '', 'Browse Events', 'Browse Events', 'Browse Events'),
(1630, 'start_time', '', 'Start time', 'Start time', 'Start time'),
(1631, 'end_time', '', 'End time', 'End time', 'End time'),
(1632, 'no_one_created_event', '', 'It seems like no one created an event yet!', 'It seems like no one created an event yet!', 'It seems like no one created an event yet!'),
(1633, 'event_start', '', 'When this event will start?', 'When this event will start?', 'When this event will start?'),
(1634, 'event_end', '', 'When this event will end?', 'When this event will end?', 'When this event will end?'),
(1635, 'browse_forum', '', 'Browse Forum', 'Browse Forum', 'Browse Forum'),
(1636, 'browse_funding', '', 'Browse Funding', 'Browse Funding', 'Browse Funding'),
(1637, 'filter', '', 'Filter', 'Filter', 'Filter'),
(1638, 'personal_pic', '', 'Your personal picture', 'Your personal picture', 'Your personal picture'),
(1639, 'dont_have_account', '', 'Don&#039;t have an account?', 'Dont have an account?', 'Dont have an account?'),
(1640, 'already_have_account', '', 'Already have an account?', 'Already have an account?', 'Already have an account?'),
(1641, 'approve_post_text', '', 'Your post was submitted, we will review your content soon.', 'Your post was submitted, we will review your content soon.', 'Your post was submitted, we will review your content soon.'),
(1642, 'remove_all_sessions', '', 'Logout From All Sessions', 'Logout From All Sessions', 'Logout From All Sessions'),
(1643, 'approve_post', '', 'Your post was approved and published!', 'Your post was approved and published!', 'Your post was approved and published!'),
(1644, 'approve_post', '', 'Your post was approved and published!', 'Your post was approved and published!', 'Your post was approved and published!'),
(1645, 'no_going_people', '', 'There are no going users.', 'There are no going users.', 'There are no going users.'),
(1646, 'liked_pages', '', 'Liked Pages', 'Liked Pages', 'Liked Pages'),
(1647, 'joined_groups', '', 'Joined Groups', 'Joined Groups', 'Joined Groups'),
(1648, 'earn_text_create_blog', '', 'Earn %d points by creating a new blog', 'Earn %d points by creating a new blog', 'Earn %d points by creating a new blog'),
(1649, 'view_interested_Candidates', '', 'View Interested Candidates', 'View Interested Candidates', 'View Interested Candidates'),
(1650, 'memories', '', 'Memories', 'Memories', 'Memories'),
(1651, 'on_this_day', '', 'On this day', 'On this day', 'On this day'),
(1652, 'there_are_no_memories_this_day', '', 'You don&#039;t have any memories on this day.', 'You dont have any memories on this day.', 'You dont have any memories on this day.'),
(1653, 'friendversaries', '', 'Friendaversary', 'Friendaversary', 'Friendaversary'),
(1654, 'memory_this_day', '', 'You have remembrance on this day', 'You have remembrance on this day', 'You have remembrance on this day'),
(1655, 'page_analytics', '', 'Page Analytics', 'Page Analytics', 'Page Analytics'),
(1656, 'total_likes', '', 'Total Likes', 'Total Likes', 'Total Likes'),
(1657, 'today', '', 'Today', 'Today', 'Today'),
(1658, 'this_month', '', 'This Month', 'This Month', 'This Month'),
(1659, 'this_year', '', 'This Year', 'This Year', 'This Year'),
(1660, 'group_analytics', '', 'Group Analytics', 'Group Analytics', 'Group Analytics'),
(1661, 'total_member', '', 'Total Members', 'Total Members', 'Total Members'),
(1662, 'thread_reply', '', 'replied to your thread', 'replied to your thread', 'replied to your thread'),
(1663, 'share_on_timeline', '', 'Share on my timeline', 'Share on my timeline', 'Share on my timeline'),
(1664, 'shared_forum', '', 'shared a forum', 'shared a forum', 'shared a forum'),
(1665, 'forum_shared', '', 'Forum posts were successfully added to your timeline!', 'Forum posts were successfully added to your timeline!', 'Forum posts were successfully added to your timeline!'),
(1666, 'thread_shared', '', 'Thread was successfully added to your timeline!', 'Thread was successfully added to your timeline!', 'Thread was successfully added to your timeline!'),
(1667, 'shared_thread', '', 'shared a thread', 'shared a thread', 'shared a thread'),
(1668, 'sub_category', '', 'Sub Category', 'Sub Category', 'Sub Category'),
(1669, 'remaining_text', '', 'Remaining {{time}} for your membership', 'Remaining {{time}} for your membership', 'Remaining {{time}} for your membership'),
(1670, 'free_plan_upload', '', 'To upload images, videos, and audio files, you have to upgrade to pro member.', 'To upload images, videos, and audio files, you have to upgrade to pro member.', 'To upload images, videos, and audio files, you have to upgrade to pro member.'),
(1671, 'free_plan_upload_pro', '', 'To upload images, videos, and audio files, you have to upgrade to pro member.', 'To upload images, videos, and audio files, you have to upgrade to pro member.', 'To upload images, videos, and audio files, you have to upgrade to pro member.'),
(1672, 'approve_blog', '', 'Your blog was approved and published!', 'Your blog was approved and published!', 'Your blog was approved and published!'),
(1673, 'refund', '', 'Refund', 'Refund', 'Refund'),
(1674, 'refund_page', '', 'Refund page', 'Refund page', 'Refund page'),
(1675, 'reason', '', 'Reason', 'Reason', 'Reason'),
(1676, 'business_days', '', 'We will review your request within 2 - 3 business days.', 'We will review your request within 2 - 3 business days.', 'We will review your request within 2 - 3 business days.'),
(1677, 'you_not_membership', '', 'Oops, You are not a subscriber, you can&#039;t request refund.', 'Oops, You are not a subscriber, you cant request refund.', 'Oops, You are not a subscriber, you cant request refund.'),
(1678, 'select_your_membership', '', 'Please select your correct membership', 'Please select your correct membership', 'Please select your correct membership'),
(1679, 'request_review_text', '', 'Your request is under review, we will notify you once its approved', 'Your request is under review, we will notify you once its approved', 'Your request is under review, we will notify you once its approved'),
(1680, 'refund_decline', '', 'Your refund request has been declined!', 'Your refund request has been declined!', 'Your refund request has been declined!'),
(1681, 'refund_approve', '', 'Your refund request has been approved! please check your balance.', 'Your refund request has been approved! please check your balance.', 'Your refund request has been approved! please check your balance.'),
(1682, 'paystack', '', 'Paystack', 'Paystack', 'Paystack'),
(1683, 'cashfree', '', 'Cashfree', 'Cashfree', 'Cashfree'),
(1684, 'offer', '', 'Offer', 'Offer', 'Offer'),
(1685, 'create_offer', '', 'Create New Offer', 'Create New Offer', 'Create New Offer'),
(1686, 'post_offer_text', '', 'Post a offer for {{page_name}} on', 'Post a offer for {{page_name}} on', 'Post a offer for {{page_name}} on'),
(1687, 'create_offer', '', 'Create New Offer', 'Create New Offer', 'Create New Offer'),
(1688, 'offer_type', '', 'Offer Type', 'Offer Type', 'Offer Type'),
(1689, 'discount_percent', '', 'Discount Percent', 'Discount Percent', 'Discount Percent'),
(1690, 'discount_amount', '', 'Discount Amount', 'Discount Amount', 'Discount Amount'),
(1691, 'buy_get_discount', '', 'Buy X Get Y Discount', 'Buy X Get Y Discount', 'Buy X Get Y Discount'),
(1692, 'spend_get_off', '', 'Spend X Get Y Off', 'Spend X Get Y Off', 'Spend X Get Y Off'),
(1693, 'free_shipping', '', 'Free Shipping', 'Free Shipping', 'Free Shipping'),
(1694, 'get', '', 'Get', 'Get', 'Get'),
(1695, 'spend', '', 'Spend', 'Spend', 'Spend'),
(1696, 'amount_off', '', 'Amount Off', 'Amount Off', 'Amount Off'),
(1697, 'offer_successfully_created', '', 'Offer successfully created.', 'Offer successfully created.', 'Offer successfully created.'),
(1698, 'created_offer', '', 'Created new offer', 'Created new offer', 'Created new offer'),
(1699, 'discounted_items', '', 'Discounted Items and/or Services', 'Discounted Items and/or Services', 'Discounted Items and/or Services'),
(1700, 'items_services', '', 'Add items or services to this offer Max 100 character', 'Add items or services to this offer Max 100 character', 'Add items or services to this offer Max 100 character'),
(1701, 'discounted_items_less', '', 'Discounted items must be less than 100 character', 'Discounted items must be less than 100 character', 'Discounted items must be less than 100 character'),
(1702, 'offers', '', 'Offers', 'Offers', 'Offers'),
(1703, 'load_more_offers', '', 'Load more offers', 'Load more offers', 'Load more offers'),
(1704, 'no_available_offers', '', 'No available offers to show.', 'No available offers to show.', 'No available offers to show.'),
(1705, 'delete_offer', '', 'Delete Offer', 'Delete Offer', 'Delete Offer'),
(1706, 'confirm_delete_offer', '', 'Are you sure that you want to delete this offer?', 'Are you sure that you want to delete this offer?', 'Are you sure that you want to delete this offer?'),
(1707, 'edit_offer', '', 'Edit Offer', 'Edit Offer', 'Edit Offer'),
(1708, 'offer_successfully_edited', '', 'Offer successfully updated.', 'Offer successfully updated.', 'Offer successfully updated.'),
(1709, 'nearby_shops', '', 'Nearby Shops', 'Nearby Shops', 'Nearby Shops'),
(1710, 'shops_found', '', 'Shops found', 'Shops found', 'Shops found'),
(1711, 'no_shops_found', '', 'No shops found', 'No shops found', 'No shops found'),
(1712, 'nearby_business', '', 'Nearby Business', 'Nearby Business', 'Nearby Business'),
(1713, 'business_found', '', 'Business found', 'Business found', 'Business found'),
(1714, 'no_business_found', '', 'No business found', 'No business found', 'No business found'),
(1715, 'login_attempts', '', 'Too many login attempts please try again later', 'Too many login attempts please try again later', 'Too many login attempts please try again later'),
(1716, 'complexity_requirements', '', 'The password supplied does not meet the minimum complexity requirements', 'The password supplied does not meet the minimum complexity requirements', 'The password supplied does not meet the minimum complexity requirements'),
(1717, 'least_characters', '', 'Must be at least 6 characters long.', 'Must be at least 6 characters long.', 'Must be at least 6 characters long.'),
(1718, 'contain_lowercase', '', 'Must contain a lowercase letter.', 'Must contain a lowercase letter.', 'Must contain a lowercase letter.'),
(1719, 'contain_uppercase', '', 'Must contain an uppercase letter.', 'Must contain an uppercase letter.', 'Must contain an uppercase letter.'),
(1720, 'number_special', '', 'Must contain a number or special character.', 'Must contain a number or special character.', 'Must contain a number or special character.'),
(1721, 'users_can_post', '', 'Users can post on my page', 'Users can post on my page', 'Users can post on my page'),
(1722, 'privileges', '', 'Privileges', 'Privileges', 'Privileges'),
(1723, 'access_to_general_settings', '', 'Access to general settings', 'Access to general settings', 'Access to general settings'),
(1724, 'access_to_info_settings', '', 'Access to page information settings', 'Access to page information settings', 'Access to page information settings'),
(1725, 'access_to_social_settings', '', 'Access to social links settings', 'Access to social links settings', 'Access to social links settings'),
(1726, 'access_to_avatar_settings', '', 'Access to avatar &amp; cover settings', 'Access to avatar &amp; cover settings', 'Access to avatar &amp; cover settings'),
(1727, 'access_to_design_settings', '', 'Access to design settings', 'Access to design settings', 'Access to design settings'),
(1728, 'access_to_admins_settings', '', 'Access to admins settings', 'Access to admins settings', 'Access to admins settings'),
(1729, 'access_to_analytics_settings', '', 'Access to analytics settings', 'Access to analytics settings', 'Access to analytics settings'),
(1730, 'access_to_delete_page_settings', '', 'Access to delete page settings', 'Access to delete page settings', 'Access to delete page settings'),
(1731, 'access_to_privacy_settings', '', 'Access to privacy settings', 'Access to privacy settings', 'Access to privacy settings'),
(1732, 'access_to_members_settings', '', 'Access to members settings', 'Access to members settings', 'Access to members settings'),
(1733, 'access_to_delete_group_settings', '', 'Access to delete group settings', 'Access to delete group settings', 'Access to delete group settings'),
(1734, 'invitation_links', '', 'Invitation Links', 'Invitation Links', 'Invitation Links'),
(1735, 'available_links', '', 'Available Links', 'Available Links', 'Available Links'),
(1736, 'generated_links', '', 'Generated Links', 'Generated Links', 'Generated Links'),
(1737, 'used_links', '', 'Used Links', 'Used Links', 'Used Links'),
(1738, 'generate_link', '', 'Generate links', 'Generate links', 'Generate links'),
(1739, 'code_successfully', '', 'Code successfully generated', 'Code successfully generated', 'Code successfully generated'),
(1740, 'copied', '', 'Copied', 'Copied', 'Copied'),
(1741, 'copy', '', 'Copy', 'Copy', 'Copy'),
(1742, 'invited_user', '', 'Invited User', 'Invited User', 'Invited User'),
(1743, 'unlimited', '', 'Unlimited', 'Unlimited', 'Unlimited'),
(1744, 'anonymous', '', 'Anonymous', 'Anonymous', 'Anonymous'),
(1745, 'iban', '', 'IBAN', 'IBAN', 'IBAN'),
(1746, 'full_name', '', 'Full name', 'Full name', 'Full name'),
(1747, 'swift_code', '', 'Swift code', 'Swift code', 'Swift code'),
(1748, 'withdraw_approve', '', 'Your withdraw request has been approved!', 'Your withdraw request has been approved!', 'Your withdraw request has been approved!'),
(1749, 'withdraw_declined', '', 'Your withdraw request has been declined!', 'Your withdraw request has been declined!', 'Your withdraw request has been declined!'),
(1750, 'register_and_pay', '', 'Register and pay using', 'Register and pay using', 'Register and pay using'),
(1751, 'live', '', 'Live', 'Live', 'Live'),
(1752, 'go_live', '', 'Go Live', 'Go Live', 'Go Live'),
(1753, 'started_live_video', '', 'started a live video.', 'started a live video.', 'started a live video.'),
(1754, 'razorpay', '', 'Razorpay', 'Razorpay', 'Razorpay'),
(1755, 'paysera', '', 'Paysera', 'Paysera', 'Paysera'),
(1756, 'unfollow', '', 'unfollow', 'unfollow', 'unfollow'),
(1757, 'withdraw_method', '', 'Withdraw Method', 'Withdraw Method', 'Withdraw Method'),
(1758, 'bank', '', 'Bank', 'Bank', 'Bank'),
(1759, 'end_live', '', 'End live', 'End live', 'End live'),
(1760, 'get_notification_posts', '', 'Get a notification when {USER} create a new post.', 'Get a notification when {USER} create a new post.', 'Get a notification when {USER} create a new post.'),
(1761, 'stop_notification_posts', '', 'Stop getting a notifications from {USER}', 'Stop getting a notifications from {USER}', 'Stop getting a notifications from {USER}'),
(1762, 'created_new_post', '', 'created a new post.', 'created a new post.', 'created a new post.'),
(1763, 'time_friends', '', 'It&#039;s been {TIME} since you both are friends! Send them a message to celebrate.', 'Its been {TIME} since you both are friends! Send them a message to celebrate.', 'Its been {TIME} since you both are friends! Send them a message to celebrate.'),
(1764, 'request_refund', '', 'Request refund', 'Request refund', 'Request refund'),
(1765, 'is_live', '', 'is live now.', 'is live now.', 'is live now.'),
(1766, 'was_live', '', 'was live.', 'was live.', 'was live.'),
(1767, 'january', '', 'January', 'January', 'January'),
(1768, 'february', '', 'February', 'February', 'February'),
(1769, 'march', '', 'March', 'March', 'March'),
(1770, 'april', '', 'April', 'April', 'April'),
(1771, 'may', '', 'May', 'May', 'May'),
(1772, 'june', '', 'June', 'June', 'June'),
(1773, 'july', '', 'July', 'July', 'July'),
(1774, 'august', '', 'August', 'August', 'August'),
(1775, 'september', '', 'September', 'September', 'September'),
(1776, 'october', '', 'October', 'October', 'October'),
(1777, 'november', '', 'November', 'November', 'November'),
(1778, 'december', '', 'December', 'December', 'December'),
(1779, 'notifications_single', '', 'Notifications', 'Notifications', 'Notifications'),
(1780, 'get_started', '', 'Get Started', 'Get Started', 'Get Started'),
(1781, 'enable_weather_loc', '', 'Please enable location on your browser to view current weather.', 'Please enable location on your browser to view current weather.', 'Please enable location on your browser to view current weather.'),
(1782, 'enable_friend_loc', '', 'Access to your location is Disabled. Enable it on your browser if you want to see people around you.', 'Access to your location is Disabled. Enable it on your browser if you want to see people around you.', 'Access to your location is Disabled. Enable it on your browser if you want to see people around you.'),
(1783, 'sunday', '', 'Sunday', 'Sunday', 'Sunday'),
(1784, 'monday', '', 'Monday', 'Monday', 'Monday'),
(1785, 'tuesday', '', 'Tuesday', 'Tuesday', 'Tuesday'),
(1786, 'wednesday', '', 'Wednesday', 'Wednesday', 'Wednesday'),
(1787, 'thursday', '', 'Thursday', 'Thursday', 'Thursday'),
(1788, 'friday', '', 'Friday', 'Friday', 'Friday'),
(1789, 'saturday', '', 'Saturday', 'Saturday', 'Saturday'),
(1790, 'stream_has_ended', '', '{{user}} stream has ended.', '', ''),
(1791, 'mic_source', '', 'Change Mic Source', '', ''),
(1792, 'cam_source', '', 'Change Video Source', '', ''),
(1793, 'event_remaining', '', 'remaining', '', ''),
(1794, 'home_weather', '', 'Weather', '', ''),
(1795, 'weather_wind', '', 'Wind', '', ''),
(1796, 'weather_humidity', '', 'Humidity', '', ''),
(1797, 'weather_visibility', '', 'Visibility', '', ''),
(1798, 'weather_sunrise', '', 'Sunrise', '', ''),
(1799, 'weather_sunset', '', 'Sunset', '', ''),
(1800, 'find_nearby_business', '', 'Find businesses near to you based on your location and connect with them directly.', '', ''),
(1801, 'export', '', 'Export', '', ''),
(1802, 'stream_has_ended', '', NULL, '', ''),
(1803, 'mic_source', '', NULL, '', ''),
(1804, 'cam_source', '', NULL, '', ''),
(1805, 'event_remaining', '', NULL, '', ''),
(1806, 'home_weather', '', NULL, '', ''),
(1807, 'weather_wind', '', NULL, '', ''),
(1808, 'weather_humidity', '', NULL, '', ''),
(1809, 'weather_visibility', '', NULL, '', ''),
(1810, 'weather_sunrise', '', NULL, '', ''),
(1811, 'weather_sunset', '', NULL, '', ''),
(1812, 'find_nearby_business', '', NULL, '', ''),
(1813, 'export', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Langs_bk`
--

CREATE TABLE `Wo_Langs_bk` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT '',
  `english` text,
  `france` text NOT NULL,
  `vietnamese` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Langs_bk`
--

INSERT INTO `Wo_Langs_bk` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(1, 'login', '', 'Login', 'S&#039;identifier', 'Đăng nhập'),
(2, 'register', '', 'Register', 'Enregistrez', 'Đăng ký'),
(3, 'guest', '', 'Guest', 'Client', 'Khách'),
(4, 'username', '', 'Username', 'le nom d&#039;utilisateur', 'Tài khoản'),
(5, 'email', '', 'E-mail', 'E-mail', 'E-mail'),
(6, 'password', '', 'Password', 'Mot de passe', 'Mật khẩu'),
(7, 'new_password', '', 'New password', 'Nouveau mot de passe', 'Mật khẩu mới'),
(8, 'remember_me', '', 'Remember me', 'Souviens-toi de moi', 'Nhớ tôi'),
(9, 'or_login_with', '', 'Or login with', 'Ou connectez-vous avec', 'Hoặc đăng nhập với'),
(10, 'forget_password', '', 'Forgot Password?', 'Mot de passe oublié?', 'Quên mật khẩu?'),
(11, 'email_address', '', 'E-mail address', 'E-mail address', 'Địa chỉ E-mail'),
(12, 'confirm_password', '', 'Confirm Password', 'Confirmez le mot de passe', 'Nhập lại Mật khẩu'),
(13, 'lets_go', '', 'Let&#039;s Go !', 'Allons-y!', 'Bắt đầu nào !'),
(14, 'recover_password', '', 'Recover', 'Récupérer', 'Khôi phục'),
(15, 'reset_new_password_label', '', 'Reset Your Password', 'Réinitialisez votre mot de passe', 'Đặt lại Mật khẩu'),
(16, 'reset_password', '', 'Reset', 'Réinitialiser', 'Khởi động lại'),
(17, 'invalid_token', '', 'Invalid Token', 'Jeton Invalide', 'Token không hợp lệ'),
(18, 'incorrect_username_or_password_label', '', 'Incorrect username or password', 'Identifiant ou mot de passe incorrect', 'Tên Tài khoản đăng nhập hoặc Mật khẩu không chính xác'),
(19, 'account_disbaled_contanct_admin_label', '', 'Your account has been disabled, please contact us .', 'Votre compte a été désactivé, s&#039;il vous plaît contactez-nous .', 'Tài khoản của bạn đã bị vô hiệu hóa, vui lòng liên hệ với chúng tôi.'),
(20, 'account_not_active_label', '', 'You have to activate your account.', 'Vous devez activer votre compte.', 'Bạn phải kích hoạt tài khoản của bạn.'),
(21, 'successfully_logged_label', '', 'Successfully Logged in, Please wait..', 'Connecté avec succès, S&#039;il vous plaît attendre..', 'Đăng nhập thành công, vui lòng đợi ..'),
(22, 'please_check_details', '', 'Please check your details.', 'S&#039;il vous plaît vérifier vos coordonnées.', 'Xin vui lòng kiểm tra thông tin chi tiết của bạn.'),
(23, 'username_exists', '', 'Username is already exists.', 'Nom d&#039;utilisateur est existe déjà.', 'Tài khoản người dùng đã tồn tại.'),
(24, 'username_characters_length', '', 'Username must be between 5 / 32', 'Nom d&#039;utilisateur doit être comprise entre 5/32', 'Tài khoản người dùng phải từ 5 đến 32 ký tự'),
(25, 'username_invalid_characters', '', 'Invalid username characters', 'Caractères de nom d&#039;utilisateur non valides', 'Tài khoản người dùng chứa ký tự không hợp lệ'),
(26, 'password_invalid_characters', '', 'Invalid password characters', 'Caractères de mot de passe invalide', 'Mật khẩu chứa ký tự không hợp lệ'),
(27, 'email_exists', '', 'This e-mail is already in use', 'Cet e-mail est déjà utilisée', 'E-mail này đã được sử dụng'),
(28, 'email_invalid_characters', '', 'This e-mail is invalid.', 'Cet e-mail est invalide.', 'E-mail này không hợp lệ.'),
(29, 'password_short', '', 'Password is too short.', 'Mot de passe est trop court.', 'Mật khẩu quá ngắn.'),
(30, 'password_mismatch', '', 'Password not match.', 'Mot de passe ne correspond.', 'Mật khẩu không khớp.'),
(31, 'reCaptcha_error', 'Please check the re-captcha.', 'Please check the re-captcha.', 'S&#039;il vous plaît vérifier le re-captcha.', 'Hãy kiểm tra mã re-captcha.'),
(32, 'successfully_joined_label', '', 'Successfully joined, Please wait..', 'Réussir rejoint, S&#039;il vous plaît attendre..', 'Đã tham gia thành công, vui lòng đợi ..'),
(33, 'account_activation', '', 'Account Activation', 'Activation de compte', 'Kích hoạt tài khoản'),
(34, 'successfully_joined_verify_label', '', 'Registration successful! We have sent you an email, Please check your inbox/spam to verify your email.', 'Inscription réussi! Nous vous avons envoyé un e-mail, S&#039;il vous plaît vérifier votre boîte de réception / spam pour vérifier votre email.', 'Đăng ký thành công! Chúng tôi đã gửi cho bạn một email, Vui lòng kiểm tra hộp thư đến / thư rác để xác minh email của bạn.'),
(35, 'email_not_found', '', 'We can&#039;t find this email.', 'Nous ne pouvons pas trouver cet e-mail.', 'Chúng tôi không thể tìm thấy email này.'),
(36, 'password_rest_request', '', 'Password reset request', 'Demande de réinitialisation de mot', 'Yêu cầu đặt lại mật khẩu'),
(37, 'email_sent', '', 'E-mail has been sent successfully', 'Le courriel a été envoyé avec succès', 'Email đã được gửi thành công'),
(38, 'processing_error', '', 'An error found while processing your request, please try again later.', 'Une erreur est survenue lors du traitement de votre demande, s&#039;il vous plaît réessayer plus tard.', 'Một lỗi được phát sinh trong khi xử lý yêu cầu của bạn, vui lòng thử lại sau.'),
(39, 'password_changed', '', 'Password successfully changed !', 'Mot de passe changé avec succès !', 'Mật khẩu đã được thay đổi thành công !'),
(40, 'please_choose_correct_date', '', 'Please choose a correct date.', 'S&#039;il vous plaît choisir une date correcte.', 'Vui lòng chọn một ngày chính xác.'),
(41, 'setting_updated', '', 'Setting successfully updated !', 'Réglage de mise à jour avec succès !', 'Cấu hình được cập nhật thành công !'),
(42, 'current_password_mismatch', '', 'Current password not match', 'Mot de passe actuel ne correspond pas', 'Mật khẩu hiện tại không khớp'),
(43, 'website_invalid_characters', '', 'Website is invalid.', 'Site Web est invalide.', 'Trang web không hợp lệ.'),
(44, 'account_deleted', '', 'Account successfully deleted, please wait..', 'Compte supprimé avec succès, s&#039;il vous plaît patienter..', 'Tài khoản đã xóa thành công, vui lòng đợi ..'),
(45, 'home', '', 'Home', 'Domicile', 'Trang chủ'),
(46, 'advanced_search', '', 'Advanced Search', 'Recherche Avancée', 'Tìm kiếm nâng cao'),
(47, 'search_header_label', '', 'Search for people, pages, groups and #hashtags', 'Recherche de personnes, et les choses #hashtags', 'Tìm kiếm Người, Trang, Nhóm và #hashtags'),
(48, 'no_result', '', 'No result found', 'Aucun résultat trouvé', 'Không có kết quả nào'),
(49, 'last_seen', '', 'Last Seen:', 'Dernière Visite:', 'Nhìn thấy lần cuối:'),
(50, 'accept', '', 'Accept', 'Acceptez', 'Chấp nhận'),
(51, 'cancel', '', 'Cancel', 'Annuler', 'Hủy bỏ'),
(52, 'delete', '', 'Delete', 'Effacer', 'Xóa'),
(53, 'my_profile', '', 'My Profile', 'Mon profil', 'Thông tin cá nhân của tôi'),
(54, 'saved_posts', '', 'Saved Posts', 'Messages Enregistrés', 'Bài viết đã lưu'),
(55, 'setting', '', 'Settings', 'Réglage', 'Cấu hình'),
(56, 'admin_area', '', 'Admin Area', 'Admin Area', 'Khu vực Quản trị Hệ thống'),
(57, 'log_out', '', 'Log Out', 'Se déconnecter', 'Thoát khỏi Hệ thống'),
(58, 'no_new_notification', '', 'You do not have any notifications', 'Vous ne disposez pas de toutes les notifications', 'Bạn không có bất kỳ thông báo nào'),
(59, 'no_new_requests', '', 'You do not have any requests', 'Vous ne disposez pas de toutes les demandes', 'Bạn không có bất kỳ yêu cầu'),
(60, 'followed_you', '', 'followed you', 'je t&#039;ai suivi', 'đã theo dõi bạn'),
(61, 'comment_mention', '', 'mentioned you on a comment.', 'vous avez mentionné sur un commentaire.', 'đề cập đến bạn trong một bình luận.'),
(62, 'post_mention', '', 'mentioned you on a post.', 'vous avez mentionné sur un poteau.', 'đề cập đến bạn trong một bài viết.'),
(63, 'posted_on_timeline', '', 'posted on your timeline.', 'posté sur votre timeline.', 'đăng lên dòng thời gian của bạn.'),
(64, 'profile_visted', '', 'visited your profile.', 'visité votre profil.', 'đã truy cập hồ sơ của bạn.'),
(65, 'accepted_friend_request', '', 'accepted your friend request.', 'accepté votre demande d&#039;ami.', 'chấp nhận yêu cầu kết bạn của bạn'),
(66, 'accepted_follow_request', '', 'accepted your follow request.', 'accepté votre demande de suivi.', 'chấp nhận yêu cầu theo dõi của bạn'),
(67, 'liked_comment', '', 'liked your comment &quot;{comment}&quot;', 'aimé votre commentaire &quot;{comment}&quot;', 'đã thích bình luận &quot;{comment}&quot;'),
(68, 'wondered_comment', '', 'wondered your comment &quot;{comment}&quot;', 'demandé votre commentaire &quot;{comment}&quot;', 'bày tỏ cảm xúc về &quot;{comment}&quot; của bạn'),
(69, 'liked_post', '', 'liked your {postType} {post}', 'aimé votre {postType} {post}', 'đã thích {postType} {post}'),
(70, 'wondered_post', '', 'wondered your {postType} {post}', 'demandé votre {postType} {post}', 'đã bày tỏ cảm xúc về {postType} {post}'),
(71, 'share_post', '', 'shared your {postType} {post}', 'partagé votre {postType} {post}', 'đã chia sẻ {postType} {post}'),
(72, 'commented_on_post', '', 'commented on your {postType} {post}', 'commenté sur votre {postType} {post}', 'đã bình luận trên {postType} {post}'),
(73, 'activity_liked_post', '', 'liked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'aimé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã thích &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của{user}.'),
(74, 'activity_wondered_post', '', 'wondered {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'demandé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã cảm xúc trên &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của {user}.'),
(75, 'activity_share_post', '', 'shared {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'partagé {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã chia sẻ &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của {user}'),
(76, 'activity_commented_on_post', '', 'commented on {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'commenté sur {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;poster&lt;/a&gt;.', 'đã bình luận trên &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt;của {user}.'),
(77, 'video_n_label', '', 'video.', 'vidéo.', 'video.'),
(78, 'post_n_label', '', 'post.', 'poster.', 'bài viết.'),
(79, 'photo_n_label', '', 'photo.', 'photo.', 'hình.'),
(80, 'file_n_label', '', 'file.', 'fichier.', 'file.'),
(81, 'vine_n_label', '', 'vine video.', 'vine vidéo.', 'vine video.'),
(82, 'sound_n_label', '', 'sound.', 'du son.', 'âm thanh.'),
(83, 'avatar_n_label', '', 'profile picture.', 'Photo de profil.', 'ảnh đại diện.'),
(84, 'error_not_found', '', '404 Error', '404 Erreur', 'lỗi 404'),
(85, 'sorry_page_not_found', '', 'Sorry, page not found!', 'Désolé, page introuvable!', 'Sorry, page not found!'),
(86, 'page_not_found', '', 'The page you are looking for could not be found. Please check the link you followed to get here and try again.', 'La page que vous recherchez n&#039;a pu être trouvée. S&#039;il vous plaît vérifier le lien que vous avez suivi pour arriver ici et essayez à nouveau.', 'Không tìm thấy trang bạn đang tìm kiếm. Vui lòng kiểm tra liên kết bạn đã theo dõi để  thử lại.'),
(87, 'your_account_activated', '', 'Your account have been successfully activated!', 'Votre compte a été activé avec succès!', 'Tài khoản của bạn đã được kích hoạt thành công!'),
(88, 'free_to_login', '', 'You&#039;r free to &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !', 'Votre libre &lt;a href=&quot;http://localhost/wowonder_update&quot;&gt;{login}&lt;/a&gt; !', 'Bạn được miễn phí &lt;a href=&quot;{site_url}&quot;&gt;{login}&lt;/a&gt; !'),
(89, 'general_setting', '', 'General Setting', 'Cadre général', 'Cài đặt chung'),
(90, 'login_setting', '', 'Login Setting', 'Connexion Cadre', 'Cài đặt đăng nhập'),
(91, 'manage_users', '', 'Manage Users', 'gérer les utilisateurs', 'Quản lý người dùng'),
(92, 'manage_posts', '', 'Manage Posts', 'gérer les messages', 'Quản lý bài viết'),
(93, 'manage_reports', '', 'Manage Reports', 'gérer les rapports', 'Quản lý báo cáo'),
(94, 'advertisement', '', 'Advertisement', 'Publicité', 'Quảng cáo'),
(95, 'more', '', 'More', 'Plus', 'Xem thêm'),
(96, 'cache_system', '', 'Cache System', 'Système de cache', 'Hệ thống Cache'),
(97, 'chat_system', '', 'Chat System', 'système chat', 'Hệ thống Chat'),
(98, 'email_validation', '', 'Email validation', 'Email de validation', 'Email xác thực'),
(99, 'email_notification', '', 'Email notification', 'Notification par courriel', 'Email thông báo'),
(100, 'smooth_links', '', 'Smooth links', 'liens lisses', 'Liên kết mượt mà'),
(101, 'seo_friendly_url', '', 'SEO friendly url', 'SEO URL conviviale', 'SEO friendly url'),
(102, 'file_sharing', '', 'File sharing', 'Partage de fichier', 'Chia sẻ File'),
(103, 'themes', '', 'Themes', 'thèmes', 'Giao diện'),
(104, 'user_setting', '', 'User Settings', 'Paramètres utilisateur', 'Cấu hình Người dùng'),
(105, 'site_setting', '', 'Site Setting', 'site Cadre', 'Thiết lập Trang web'),
(106, 'cache_setting_info', '', 'Enable cache system to speed up your website, Recommended more than 10,000 active users.', 'Activer système de cache pour accélérer votre site, a recommandé plus de 10.000 utilisateurs actifs.', 'Kích hoạt hệ thống bộ đệm Cache để tăng tốc trang web của bạn, Được đề xuất khi có hơn 10.000 người dùng hoạt động.'),
(107, 'chat_setting_info', '', 'Enable chat system to chat with friends on the buttom of the page', 'Activer système chat pour discuter avec des amis sur le fond de la page', 'Bật hệ thống trò chuyện để trò chuyện với bạn bè trên của trang'),
(108, 'email_validation_info', '', 'Enable email validation to send activation link when user registred.', 'Activer la validation de messagerie pour envoyer le lien d&#039;activation lorsque l&#039;utilisateur référencée.', 'Bật chức năng xác thực email để gửi liên kết kích hoạt khi người dùng đăng ký.'),
(109, 'email_notification_info', '', 'Enable email notification to send user notification via email.', 'Activer la notification par e-mail pour envoyer une notification par e-mail de l&#039;utilisateur.', 'Bật chức năng gửi thông báo đến người dùng qua email.'),
(110, 'smooth_links_info', '', 'Enable smooth links, e.g.{site_url}/home.', 'Activer les liens lisses, e.g.http://localhost/wowonder_update/home.', 'Bật chức năng smooth links, ví dụ: {site_url}/home.'),
(111, 'seo_frindly_info', '', 'Enable SEO friendly url, e.g.{site_url}//1_hello-how-are-you-doing.html', 'Activer SEO URL conviviale, e.g.http://localhost/wowonder_update//1_hello-how-are-you-doing.html', 'Bật chức năng SEO friendly url, ví dụ: {site_url}//1_hello-how-are-you-doing.html'),
(112, 'file_sharing_info', '', 'Enable File sharing to share &amp; upload videos,images,files,sounds, etc..', 'Activez le partage de fichiers pour partager et télécharger des vidéos, des images, des fichiers, des sons, etc...', 'Bật chức năng chia sẻ File để chia sẻ và tải lên video, hình ảnh, File, âm thanh, v.v.'),
(113, 'cache', '', 'Cache', 'Cache', 'Cache'),
(114, 'site_information', '', 'Site Information', 'Informations sur le site', 'Thông tin Trang Web'),
(115, 'site_title_name', '', 'Site Name &amp; Title:', 'Site Nom et titre:', 'Tên trang &amp; tiêu đề:'),
(116, 'site_name', '', 'Site name', 'Nom du site', 'Tên trang Web'),
(117, 'site_title', '', 'Site title', 'Titre du site', 'Tiêu đề Trang Web'),
(118, 'site_keywords_description', '', 'Site Keywords &amp; Description:', 'Site Mots-clés et description:', 'Từ khóa &amp; Mô tả Trang web:'),
(119, 'site_keywords', '', 'Site Keywords', 'site Mots-clés (eg: social,wownder ..)', 'Từ khóa'),
(120, 'site_description', '', 'Site Description', 'description du site', 'Mô tả trang Web'),
(121, 'site_email', '', 'Site E-mail', 'Site E-mail', 'E-mail trang Web'),
(122, 'site_lang', '', 'Default Language', 'Langage par défaut', 'Ngôn ngữ mặc định'),
(123, 'theme_setting', '', 'Theme Setting', 'thème Cadre', 'Thiết lập Giao diện'),
(124, 'activeted', '', 'Activated', 'Activeted', 'Đã kích hoạt'),
(125, 'version', '', 'Version:', 'Version:', 'Phiên bản:'),
(126, 'author', '', 'Author:', 'Auteur:', 'Tác giả:'),
(127, 'user_status', '', 'User status', 'Le statut de l&#039;utilisateur', 'Trạng thái người dùng'),
(128, 'online_lastseen', '', '(online/last seen)', '(en ligne / vu la dernière fois)', '(trực tuyến / nhìn thấy lần cuối)'),
(129, 'enable', '', 'Enable', 'Activer', 'Kích hoạt'),
(130, 'disable', '', 'Disable', 'désactiver', 'Vô hiệu hóa'),
(131, 'allow_users_to_delete', '', 'Allow users to delete their account', 'Autoriser les utilisateurs à supprimer son compte:', 'Cho phép người dùng xóa tài khoản của họ'),
(132, 'profile_visit_notification', '', 'Profile visit notification', 'Profil notification de visite:', 'Thông báo truy cập hồ sơ'),
(133, 'display_user_age_as', '', 'Display user age as', 'Display user d&#039;âge:', 'Hiển thị tuổi người dùng như'),
(134, 'date', '', 'Date', 'Rendez-vous amoureux', 'Ngày'),
(135, 'age', '', 'Age', 'Âge', 'Tuổi'),
(136, 'connectivity_system', '', 'Connectivity System', 'Système de connectivité:', 'Hệ thống kết nối'),
(137, 'connectivity_system_note', '', '&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you change the system to another one, all existing followings, followers, friends will be deleted.&lt;/small&gt;', '&lt;span style=&quot;color:red;&quot;&gt;Note:&lt;/span&gt; If you migrate from one system to another, all existing followings, followers, friends, memberships will be deleted to avoid issues.&lt;/small&gt;', '&lt;span style=&quot;color:red;&quot;&gt;Ghi chú:&lt;/span&gt; Nếu bạn thay đổi hệ thống sang hệ thống khác, tất cả các lượt theo dõi, người theo dõi, bạn bè hiện có sẽ bị xóa.&lt;/small&gt;'),
(138, 'friends_system', '', 'Friends system', 'Système d&#039;amis', 'Hệ thống bạn bè'),
(139, 'follow_system', '', 'Follow system', 'système de suivi', 'Hệ thống theo dõi'),
(140, 'max_upload_size', '', 'Max upload size for videos, images, sounds, and files', 'Taille maximale de téléchargement:', 'Kích thước tải lên tối đa cho video, hình ảnh, âm thanh và tệp'),
(141, 'max_characters_length', '', 'Max characters length', 'Max longueur des caractères:', 'Chiều dài tối đa'),
(142, 'allowed_extenstions', '', 'Allowed extenstions', 'extensions autorisées:', 'Cho phép tiện ích mở rộng'),
(143, 'reCaptcha_setting', '', 'reCaptcha Setting', 'reCaptcha Cadre', 'Thiết lập reCaptcha'),
(144, 'reCaptcha_key_is_required', '', 'reCaptcha key is required', 'reCaptcha clé est nécessaire', 'Khóa reCaptcha là bắt buộc'),
(145, 'reCaptcha_key', '', 'reCaptcha Key', 'reCaptcha clé :', 'Khóa reCaptcha'),
(146, 'google_analytics', '', 'Google Analytics', 'Google Analytics', 'Google Analytics'),
(147, 'google_analytics_code', '', 'Google analytics code', 'Google code Google Analytics:', 'Google analytics code'),
(148, 'cache_setting', '', 'Cache Setting', 'cache Cadre', 'Thiết lập Cache'),
(149, 'cache_recomended_clear', '', 'It&#039;s highly recommended to clear the cache.', 'Il est fortement recommandé de vider le cache.', 'Rất khuyến khích xóa bộ nhớ cache.'),
(150, 'cache_size', '', 'Cache Size:', 'Taille du cache:', 'Cache Size:'),
(151, 'clear_cache', '', 'Clear Cache', 'Vider le cache', 'Xóa Cache'),
(152, 'social_login', '', 'Social login', 'Social login', 'Đăng nhập mạng xã hội'),
(153, 'social_login_api', '', 'Social login API&#039;S', 'Social login API&#39;S', 'Social login APIS'),
(154, 'facebook', '', 'Facebook', 'Facebook', 'Facebook'),
(155, 'google', '', 'Google+', 'Google+', 'Google+'),
(156, 'twitter', '', 'Twitter', 'Twitter', 'Twitter'),
(157, 'linkedin', '', 'Linkedin', 'Linkedin', 'Linkedin'),
(158, 'vkontakte', '', 'Vkontakte', 'Vkontakte', 'Vkontakte'),
(159, 'facebook_api', '', 'Facebook API', 'Facebook API', 'Facebook API'),
(160, 'google_api', '', 'Google API', 'Google API', 'Google API'),
(161, 'twitter_api', '', 'Twitter API', 'Twitter API', 'Twitter API'),
(162, 'linkedin_api', '', 'Linkedin API', 'Linkedin API', 'Linkedin API'),
(163, 'vkontakte_api', '', 'Vkontakte API', 'Vkontakte API', 'Vkontakte API'),
(164, 'app_id', '', 'App ID', 'App ID', 'App ID'),
(165, 'app_secret_key', '', 'App Secret Key', 'App Secret Key', 'App Secret Key'),
(166, 'login_with', '', 'Login with', 'Connectez-vous avec', 'Đăng nhập với'),
(167, 'id', '', 'ID', 'ID', 'ID'),
(168, 'source', '', 'Source', 'La source', 'Nguồn'),
(169, 'status', '', 'Status', 'statut', 'Trạng thái'),
(170, 'pending', '', 'Pending', 'en attendant', 'Đang chờ xử lý'),
(171, 'first_name', '', 'First name', 'Prénom', 'Tên'),
(172, 'last_name', '', 'Last name', 'Nom de famille', 'Họ'),
(173, 'about_me', '', 'About me', 'A propos de moi', 'Giới thiệu về Tôi'),
(174, 'website', '', 'Website', 'Website', 'Website'),
(175, 'action', '', 'Action', 'action', 'Hoạt động'),
(176, 'show_more_users', '', 'Show more users', 'Afficher plus d&#039;utilisateurs', 'Hiển thị thêm người dùng'),
(177, 'no_more_users_to_show', '', 'No more users to show', 'Pas plus aux utilisateurs d&#039;afficher', 'Không có nhiều người dùng để hiển thị'),
(178, 'user_delete_confirmation', '', 'Are you sure you want to delete this user?', 'Êtes-vous sûr de vouloir supprimer cet utilisateur?', 'Bạn có chắc chắn muốn xóa người dùng này?'),
(179, 'post_delete_confirmation', '', 'Are you sure you want to delete this post?', 'Es-tu sur de vouloir supprimer cette annonce?', 'Bạn có chắc chắn muốn xóa bài đăng này?'),
(180, 'show_more_posts', '', 'Show more posts', 'Montrer plus d&#039;articles', 'Hiển thị nhiều bài viết'),
(181, 'no_more_posts', '', 'No more posts', 'Pas plus de postes', 'Không có thêm bài viết'),
(182, 'no_posts_found', '', 'No posts found', 'Aucun post trouvé', 'Không tìm thấy bài viết'),
(183, 'publisher', '', 'Publisher', 'Éditeur', 'Nhà xuất bản'),
(184, 'there_are_not_new_posts_for_now', '', 'There are not new post for now', 'Il n&#039;y a pas pour le moment nouveau poste', 'Hiện tại không có bài viết mới'),
(185, 'post_link', '', 'Post link', 'lien Poster', 'Đăng liên kết'),
(186, 'time', '', 'Time', 'Temps', 'Thời gian'),
(187, 'post', '', 'Post', 'Poster', 'Đăng bài'),
(188, 'no_posts_yet', '', '{name} has not posted anything yet', '{name} n&#039;a pas encore posté rien', '{name} chưa đăng gì cả'),
(189, 'search', '', 'Search', 'Recherche', 'Tìm kiếm'),
(190, 'on', '', 'On', 'Sur', 'On'),
(191, 'off', '', 'Off', 'De', 'Off'),
(192, 'save', '', 'Save', 'sauvegarder', 'Lưu'),
(193, 'saved', '', 'Saved !', 'Enregistré !', 'Đã lưu !'),
(194, 'reporter', '', 'Reporter', 'Journaliste', 'Người báo cáo'),
(195, 'time_reported', '', 'Time Reported', 'temps Rapporté', 'Thời gian báo cáo'),
(196, 'there_are_no_new_reports', '', 'There are no new reports for now.', 'Il n&#039;y a pas de nouveaux rapports pour l&#039;instant.', 'Không có báo cáo mới bây giờ.'),
(197, 'open_post', '', 'Open Post', 'Ouvrir Poste', 'Mở bài viết'),
(198, 'mark_safe', '', 'Mark Safe', 'Mark Safe', 'Đánh dấu an toàn'),
(199, 'delete_post', '', 'Delete Post', 'Delete Post', 'Xóa bài đăng'),
(200, 'advertisement_setting', '', 'Advertisement Setting', 'Cadre Publicité', 'Thiết lập Quảng cáo'),
(201, 'more_setting', '', 'More Setting', 'plus Cadre', 'Thiết lập khác'),
(202, 'mailing_users', '', 'Mailing list', 'Liste de diffusion', 'Danh sách gửi thư'),
(203, 'send', '', 'Send', 'Envoyer', 'Gởi'),
(204, 'mailing_subject', '', 'Subject..', 'Assujettir..', 'Chủ đề..'),
(205, 'mailing_message', '', 'Message..', 'Message..', 'Thông điệp..'),
(206, 'announcement', '', 'Announcement', 'Annonce:', 'Thông báo'),
(207, 'new_announcement', '', 'New announcement', 'nouvelle annonce ..', 'Thông báo mới'),
(208, 'add', '', 'Add', 'Ajouter', 'Thêm'),
(209, 'views', '', 'Views', 'Vues', 'Xem'),
(210, 'there_are_no_active_announcements', '', 'There are no active announcements.', 'Il n&#039;y a pas d&#039;annonces actives.', 'Không có thông báo hoạt động.'),
(211, 'there_are_no_inactive_announcements', '', 'There are no inactive announcements.', 'Il n&#039;y a aucune annonce inactifs.', 'Không có thông báo ngừng hoạt động.'),
(212, 'add_friend', '', 'Add Friend', 'Ajouter', 'Thêm bạn bè'),
(213, 'follow', '', 'Follow', 'Suivre', 'Theo dõi'),
(214, 'following', '', 'Following', 'Suivant', 'Đang theo dõi'),
(215, 'following_btn', '', 'Following', 'Suivant', 'Đang theo dõi'),
(216, 'followers', '', 'Followers', 'Les adeptes', 'Người theo dõi'),
(217, 'message', '', 'Message', 'Message', 'Nhắn tin'),
(218, 'requested', '', 'Requested', 'Demandé', 'Yêu cầu'),
(219, 'friends_btn', '', 'Friends', 'Friends', 'Bạn bè'),
(220, 'online', '', 'Online', 'Online', 'Trực tuyến'),
(221, 'offline', '', 'Offline', 'Offline', 'Ngoại tuyến'),
(222, 'you_are_currently_offline', '', 'You are currently offline', 'Vous êtes actuellement déconnecté', 'Bạn hiện đang ngoại tuyến'),
(223, 'no_offline_users', '', 'No offline users.', 'Aucun utilisateur hors ligne.', 'Không có người dùng ngoại tuyến.'),
(224, 'no_online_users', '', 'No online users.', 'Aucun membre en ligne.', 'Không có người dùng trực tuyến.'),
(225, 'search_for_users', '', 'Search for users', 'Recherche d&#039;utilisateurs', 'Tìm kiếm người dùng'),
(226, 'no_users_found', '', 'No users found.', 'Aucun utilisateur trouvé.', 'Không tìm thấy người dùng.'),
(227, 'seen', '', 'Seen', 'vu', 'Đã thấy'),
(228, 'load_more_posts', '', 'Load more posts', 'Chargez plus de postes', 'Tải thêm bài viết'),
(229, 'load_more_users', '', 'Load more users', 'Charger plusieurs utilisateurs', 'Tải thêm người dùng'),
(230, 'there_are_no_tags_found', '', 'No results found for your query.', 'Aucun résultat n&#039;a été trouvé pour votre recherche.', 'Không tìm thấy kết quả cho truy vấn của bạn.'),
(231, 'there_are_no_saved_posts', '', 'You don&#039;t have any saved posts.', 'Vous ne disposez pas de messages enregistrés.', 'Bạn không có bất kỳ bài viết đã lưu nào cả.'),
(232, 'messages', '', 'Messages', 'Messages', 'Nhắn tin'),
(233, 'write_something', '', 'Write Something ..', 'Écrire quelque chose ..', 'Viết vài thứ ..'),
(234, 'no_more_message_to_show', '', 'No more message', 'Pas plus un message', 'Không có nhiều tin nhắn'),
(235, 'view_more_messages', '', 'View more messages', 'Voir plus de messages', 'Xem thêm nhiều tin nhắn'),
(236, 'sorry_cant_reply', '', 'Sorry, you can&#039;t reply to this user.', 'Désolé, vous ne pouvez pas répondre à cet utilisateur.', 'Xin lỗi, bạn không thể trả lời người dùng này.'),
(237, 'choose_one_of_your_friends', '', 'Choose one of your friends', 'Choisissez un de vos amis', 'Chọn một trong những người bạn của bạn'),
(238, 'and_say_hello', '', 'And Say Hello !', 'Et dire Bonjour !', 'Và nói xin chào !'),
(239, 'download', '', 'Download', 'Télécharger', 'Download'),
(240, 'update_your_info', '', 'Update your info', 'Mettre à jour vos informations', 'Cập nhật thông tin của bạn'),
(241, 'choose_your_username', '', 'Choose your username:', 'Choisissez votre nom d&#039;utilisateur:', 'Chọn tài khoản của bạn:'),
(242, 'create_your_new_password', '', 'Create your new password:', 'Créer votre nouveau mot de passe:', 'Tạo mật khẩu mới của bạn:'),
(243, 'update', '', 'Update', 'Mettre à jour', 'Cập nhật'),
(244, 'delete_comment', '', 'Delete Comment', 'supprimer les commentaires', 'Xóa Bình luận'),
(245, 'confirm_delete_comment', '', 'Are you sure that you want to delete this comment ?', 'Etes-vous sûr que vous voulez supprimer ce commentaire ?', 'Bạn có chắc chắn muốn xóa bình luận này không ?'),
(246, 'confirm_delete_post', '', 'Are you sure that you want to delete this post ?', 'Etes-vous sûr que vous voulez supprimer ce message ?', 'Bạn có chắc chắn muốn xóa bài đăng này không ?'),
(247, 'edit_post', '', 'Edit Post', 'Modifier le message', 'Chỉnh sửa bài viết'),
(248, 'session_expired', '', 'Session Expired', 'La session a expiré', 'Phiên làm việc đã hết hạn'),
(249, 'session_expired_message', '', 'Your Session has been expired, please login again.', 'Votre session a expiré, s&#039;il vous plaît vous connecter à nouveau.', 'Phiên làm việc của bạn đã hết hạn, vui lòng đăng nhập lại.'),
(250, 'country', '', 'Country', 'Pays', 'Quốc gia'),
(251, 'all', '', 'All', 'Tous', 'Tất cả'),
(252, 'gender', '', 'Gender', 'Genre', 'Giới tính'),
(253, 'female', 'gender', 'Female', 'Femelle', 'Nữ'),
(254, 'male', 'gender', 'Male', 'Mâle', 'Nam'),
(255, 'profile_picture', '', 'Profile Picture', 'Photo de profil', 'Ảnh đại diện'),
(256, 'result', '', 'Result', 'Résultat:', 'Kết quả'),
(257, 'yes', '', 'Yes', 'Oui', 'Yes'),
(258, 'no', '', 'No', 'Non', 'No'),
(259, 'verified_user', '', 'Verified User', 'vérifié utilisateur', 'Người dùng đã được xác minh'),
(260, 'change_password', '', 'Change Password', 'Changer le mot de passe', 'Đổi mật khẩu'),
(261, 'current_password', '', 'Current Password', 'Mot de passe actuel', 'Mật khẩu hiện tại'),
(262, 'repeat_password', '', 'Repeat password', 'Répéter le mot de passe', 'Lặp lại mật khẩu'),
(263, 'general', '', 'General', 'Général', 'Thông tin cơ bản'),
(264, 'profile', '', 'Profile', 'Profil', 'Hồ sơ'),
(265, 'privacy', '', 'Privacy', 'Intimité', 'Riêng tư'),
(266, 'delete_account', '', 'Delete Account', 'Effacer le compte', 'Xóa Tài khoản'),
(267, 'delete_account_confirm', '', 'Are You sure that you want to delete your account, and leave our network ?', 'Etes-vous sûr que vous voulez supprimer votre compte, et de laisser notre réseau ?', 'Bạn có chắc chắn muốn xóa tài khoản của mình và rời khỏi hệ thống của chúng tôi không ?'),
(268, 'delete_go_back', '', 'No, I&#039;ll Think', 'Non, je vais y réfléchir', 'Không, tôi nghĩ'),
(269, 'verified', '', 'Verified', 'vérifié', 'Đã xác minh'),
(270, 'not_verified', '', 'Not verified', 'non vérifié', 'Chưa xác minh'),
(271, 'admin', '', 'Admin', 'Administrateur', 'Quản trị'),
(272, 'user', '', 'User', 'Utilisateur', 'Người dùng'),
(273, 'verification', '', 'Verification', 'Vérification', 'Xác minh'),
(274, 'type', '', 'Type', 'Type', 'Kiểu'),
(275, 'birthday', '', 'Birthday', 'Anniversaire', 'Ngày Sinh nhật'),
(276, 'active', '', 'Active', 'actif', 'Hoạt động'),
(277, 'inactive', '', 'inactive', 'inactif', 'không hoạt động'),
(278, 'privacy_setting', '', 'Privacy Setting', 'Paramètre de confidentialité', 'Cấu hình riêng'),
(279, 'follow_privacy_label', '', 'Who can follow me ?', 'Qui peut me suivre ?', 'Ai có thể theo dõi tôi ?'),
(280, 'everyone', '', 'Everyone', 'Toutes les personnes', 'Mọi người'),
(281, 'my_friends', '', 'My Friends', 'Mes amis', 'Bạn của tôi'),
(282, 'no_body', '', 'No body', 'Personne', 'Không có ai'),
(283, 'people_i_follow', '', 'People I Follow', 'Les gens que je suivre', 'Những người tôi theo dõi'),
(284, 'people_follow_me', '', 'People Follow Me', 'Les gens Follow Me', 'Những người theo dõi tôi'),
(285, 'only_me', '', 'Only me', 'Seulement moi', 'Chỉ riêng tôi'),
(286, 'message_privacy_label', '', 'Who can message me ?', 'Qui peut me message ?', 'Ai có thể nhắn tin cho tôi?'),
(287, 'timeline_post_privacy_label', '', 'Who can post on my timeline ?', 'Qui peut poster sur mon calendrier ?', 'Ai có thể đăng lên dòng thời gian của tôi?'),
(288, 'activities_privacy_label', '', 'Show my activities ?', 'Afficher mes activités ?', 'Hiển thị các hoạt động của tôi?'),
(289, 'show', '', 'Show', 'Montrer', 'Hiển thị'),
(290, 'hide', '', 'Hide', 'Cache', 'Ẩn'),
(291, 'confirm_request_privacy_label', '', 'Confirm request when someone follows you ?', 'Confirmer la demande quand quelqu&#039;un vous suit ?', 'Xác nhận yêu cầu khi ai đó theo dõi bạn?'),
(292, 'lastseen_privacy_label', '', 'Show my last seen ?', 'Afficher mon dernière fois ?', 'Hiển thị lần cuối cùng của tôi?'),
(293, 'site_eg', '', '(e.g: http://www.siteurl.com)', '(e.g: http://www.siteurl.com)', '(ví dụ: http://www.siteurl.com)'),
(294, 'profile_setting', '', 'Profile Setting', 'Profile Setting', 'Thiết lập hồ sơ'),
(295, 'pinned_post', '', 'Pinned', 'épinglé', 'Đã ghim'),
(296, 'pin_post', '', 'Pin Post', 'Pin Poster', 'Ghim bài'),
(297, 'unpin_post', '', 'Unpin Post', 'Détacher Poster', 'Bỏ Ghim'),
(298, 'open_post_in_new_tab', '', 'Open post in new tab', 'Ouvrir dans un nouvel onglet après', 'Mở bài viết trong Tab mới'),
(299, 'unsave_post', '', 'Unsave Post', 'unsave Poster', 'Bỏ lưu'),
(300, 'save_post', '', 'Save Post', 'Sauvegarder Poster', 'Lưu bài đăng'),
(301, 'unreport_post', '', 'Unreport Post', 'Unreport Poster', 'Bài viết không báo cáo'),
(302, 'report_post', '', 'Report Post', 'Signaler le message', 'Báo cáo về bài đăng'),
(303, 'shared_this_post', '', 'Shared this post', 'Partagé ce post', 'Đã chia sẻ bài đăng này'),
(304, 'changed_profile_picture_male', '', 'Changed his profile picture', 'Changé sa photo de profil', 'Đã thay đổi ảnh cá nhân của anh ấy'),
(305, 'changed_profile_picture_female', '', 'Changed her profile picture', 'A changé sa photo de profil', 'Đã thay đổi ảnh cá nhân của chị ấy'),
(306, 'post_login_requriement', '', 'Please log in to like, wonder, share and comment!', 'S&#039;il vous plaît vous connecter à aimer, étonnant, partager et commenter !', 'Hãy đăng nhập để Thích, Biểu lộ cảm xúc, Chia sẻ và Bình luận!'),
(307, 'likes', '', 'Likes', 'Aime', 'Thích'),
(308, 'like', '', 'Like', 'Aimer', 'Thích'),
(309, 'wonder', '', 'Wonder', 'Merveille', 'Cảm xúc'),
(310, 'wonders', '', 'Wonders', 'Merveilles', 'Cảm xúc'),
(311, 'share', '', 'Share', 'Partagez', 'Chia sẻ'),
(312, 'comments', '', 'Comments', 'commentaires', 'Bình luận'),
(313, 'no_likes', '', 'No likes yet', 'Aucune aime encore', 'Chưa thích'),
(314, 'no_wonders', '', 'No wonders yet', 'Pas encore wondres', 'Không có thắc mắc nào'),
(315, 'write_comment', '', 'Write a comment and press enter', 'Ecrire un commentaire et appuyez sur Entrée', 'Viết bình luận và nhấn enter'),
(316, 'view_more_comments', '', 'View more comments', 'Voir plus de commentaires', 'Xem thêm bình luận'),
(317, 'welcome_to_news_feed', '', 'Welcome to your News Feed !', 'Bienvenue à votre Nouvelles RSS!', 'Chào mừng bạn đến với News Feed của bạn !'),
(318, 'say_hello', '', 'Say Hello !', 'Dis bonjour !', 'Xin chào !'),
(319, 'publisher_box_placeholder', '', 'What&#039;s going on? #Hashtag.. @Mention.. Link..', 'Ce qui se passe? #hashtag ..@Mention..', 'Bạn đang nghĩ gì? ( #Hashtag.. @Mention.. Liên kết..)'),
(320, 'youtube_link', '', 'Youtube Link', 'Youtube Link', 'Youtube Link'),
(321, 'vine_link', '', 'Vine Link', 'Vine Link', 'Vine Link'),
(322, 'soundcloud_link', '', 'SoundCloud Link', 'SoundCloud Link', 'SoundCloud Link'),
(323, 'maps_placeholder', '', 'Where are you ?', 'Où es tu?', 'Bạn ở đâu ?'),
(324, 'post_label', '', 'Post', 'Poster', 'Đăng'),
(325, 'text', '', 'Text', 'Envoyer des textos', 'Văn bản'),
(326, 'photos', '', 'Photos', 'Photos', 'Hình ảnh'),
(327, 'sounds', '', 'Sounds', 'Des sons', 'Âm thanh'),
(328, 'videos', '', 'Videos', 'Les vidéos', 'Videos'),
(329, 'maps', '', 'Maps', 'Plans', 'Bản đồ'),
(330, 'files', '', 'Files', 'Dossiers', 'Files'),
(331, 'not_following', '', 'Not following any user', 'Ne pas suivre tout utilisateur', 'Không theo dõi bất kỳ người dùng nào'),
(332, 'no_followers', '', 'No followers yet', 'Pas encore adeptes', 'Chưa có người theo dõi'),
(333, 'details', '', 'Details', 'Détails', 'Chi tiết'),
(334, 'social_links', '', 'Social Links', 'Liens sociaux', 'Mạng xã hội liên kết'),
(335, 'online_chat', '', 'Chat', 'amis en ligne', 'Trao đổi, Thảo luận'),
(336, 'about', '', 'About', 'Sur', 'Giới thiệu'),
(337, 'contact_us', '', 'Contact Us', 'Contactez nous', 'Liên hệ'),
(338, 'privacy_policy', '', 'Privacy Policy', 'politique de confidentialité', 'Chính sách Bảo mật'),
(339, 'terms_of_use', '', 'Terms of Use', 'Conditions d&#039;utilisation', 'Điều khoản Sử dụng'),
(340, 'developers', '', 'Developers', 'Développeurs', 'Nhà phát triển'),
(341, 'language', '', 'Language', 'Langue', 'Ngôn ngữ'),
(342, 'copyrights', '', '© {date} {site_name}', '© {date} {site_name}', '© {date} {site_name}'),
(343, 'year', '', 'year', 'an', 'năm'),
(344, 'month', '', 'month', 'mois', 'tháng'),
(345, 'day', '', 'day', 'jour', 'ngày'),
(346, 'hour', '', 'hour', 'heure', 'giờ'),
(347, 'minute', '', 'minute', 'minute', 'phút'),
(348, 'second', '', 'second', 'deuxième', 'giây'),
(349, 'years', '', 'years', 'années', 'năm'),
(350, 'months', '', 'months', 'mois', 'tháng'),
(351, 'days', '', 'days', 'jours', 'ngày'),
(352, 'hours', '', 'hours', 'des heures', 'giờ'),
(353, 'minutes', '', 'minutes', 'minutes', 'phút'),
(354, 'seconds', '', 'seconds', 'secondes', 'giây'),
(355, 'time_ago', '', 'ago', 'depuis', 'trước đây'),
(356, 'time_from_now', '', 'from now', 'à partir de maintenant', 'từ bây giờ'),
(357, 'time_any_moment_now', '', 'any moment now', 'd un moment', 'bất cứ lúc nào'),
(358, 'time_just_now', '', 'Just now', 'Juste maintenant', 'Vừa mới'),
(359, 'time_about_a_minute_ago', '', 'about a minute ago', 'Il ya environ une minute', 'khoảng một phút trước'),
(360, 'time_minute_ago', '', '%d minutes ago', '%d il y a quelques minutes', '%d phút trước'),
(361, 'time_about_an_hour_ago', '', 'about an hour ago', 'il y a à peu près une heure', 'khoảng một giờ trước'),
(362, 'time_hours_ago', '', '%d hours ago', '%d il y a des heures', '%d giờ trước'),
(363, 'time_a_day_ago', '', 'a day ago', 'a Il ya jour', 'một ngày trước'),
(364, 'time_a_days_ago', '', '%d days ago', '%d il y a quelques jours', '%d ngày trước'),
(365, 'time_about_a_month_ago', '', 'about a month ago', 'il y a environ un mois', 'khoảng một tháng trước'),
(366, 'time_months_ago', '', '%d months ago', '%d il y a des mois', '%d tháng trước'),
(367, 'time_about_a_year_ago', '', 'about a year ago', 'Il ya environ un an', 'khoảng một năm trước'),
(368, 'time_years_ago', '', '%d years ago', '%d il y a des années', '%d năm trước'),
(369, 'latest_activities', '', 'Latest Activities', 'Dernières activités', 'Hoạt động mới nhất'),
(370, 'no_activities', '', 'No new activities', 'Pas de nouvelles activités', 'Không có hoạt động mới'),
(371, 'trending', '', 'Trending !', 'Trending !', 'Xu hướng !'),
(372, 'load_more_activities', '', 'Load more activities', 'Chargez plus d&#039;activités', 'Tải thêm hoạt động'),
(373, 'no_more_actitivties', '', 'No more actitivties', 'Pas plus d&#039;activités', 'Không có nhiều hành động'),
(374, 'people_you_may_know', '', 'People you may know', 'Les gens que vous connaissez peut-être', 'Những người bạn có thể biết'),
(375, 'too_long', '', 'Too long', 'Trop long', 'Quá lâu'),
(376, 'too_short', '', 'Too short.', 'Trop court.', 'Quá ngắn.'),
(377, 'available', '', 'Available !', 'Disponible !', 'Có sẵn !'),
(378, 'in_use', '', 'In use.', 'En service.', 'Đang sử dụng.'),
(379, 'username_invalid_characters_2', '', 'Username should not contain any special characters, symbols or spaces.', 'Nom d&#039;utilisateur ne doit pas contenir de caractères, symboles ou espaces spéciaux.', 'Tài khoản người dùng không được chứa bất kỳ ký tự, ký hiệu hoặc dấu cách đặc biệt nào.'),
(380, 'liked', '', 'Liked', 'A aimé', 'Đã thích'),
(381, 'my_pages', '', 'My Pages', 'Mes Pages', 'Trang của tôi'),
(382, 'liked_page', '', 'Liked your page ({page_name})', 'a aimé votre page ({page_name})', 'Đã thích trang ({page_name}) của bạn'),
(383, 'this_week', '', 'This week', 'Cette semaine', 'Tuần này'),
(384, 'posts', '', 'posts', 'des postes', 'bài viết'),
(385, 'located_in', '', 'Located in', 'Situé dans', 'Đặt tại'),
(386, 'phone_number', '', 'Phone', 'Téléphone', 'Số điện thoại'),
(387, 'company', '', 'Company', 'Compagnie', 'Công ty'),
(388, 'category', '', 'Category', 'Catégorie', 'Thể loại'),
(389, 'search_for_posts', '', 'Search for posts', 'Rechercher les messages', 'Tìm kiếm bài viết'),
(390, 'create_new_page', '', 'Create New Page', 'Créer une page', 'Tạo Trang mới'),
(391, 'page_name', '', 'Page name', 'Nom de la page', 'Tên Trang'),
(392, 'page_title', '', 'Page title', 'Titre de la page', 'Tiêu đề trang'),
(393, 'your_page_title', '', 'Your page title', 'Votre titre de la page', 'Tiêu đề trang của bạn'),
(394, 'page_category', '', 'Page Category', 'page Catégorie', 'Thể loại trang'),
(395, 'page_description', '', 'Page description', 'Description de la page', 'Mô tả trang'),
(396, 'page_description_info', '', 'Your Page description, Between 10 and 200 characters max.', 'Votre description de la page, entre 10 et 200 caractères max.', 'Mô tả trang của bạn, tối đa từ 10 đến 200 ký tự.'),
(397, 'create', '', 'Create', 'Créer', 'Tạo'),
(398, 'page_name_exists', '', 'Page name is already exists.', 'Nom de la page est existe déjà.', 'Tên trang đã tồn tại.'),
(399, 'page_name_characters_length', '', 'Page name must be between 5 / 32', 'Nom de la page doit être comprise entre 5/32', 'Tên trang phải chứa khoảng từ 5 đến 32 ký tự'),
(400, 'page_name_invalid_characters', '', 'Invalid page name characters', 'Invalides nom de la page caractères', 'Tên trang chứa Ký tự không hợp lệ'),
(401, 'edit', '', 'Edit', 'modifier', 'Chỉnh sửa'),
(402, 'page_information', '', 'Page Information', 'Informations sur la page', 'Thông tin trang'),
(403, 'delete_page', '', 'Delete Page', 'supprimer la page', 'Xóa trang'),
(404, 'location', '', 'Location', 'Emplacement', 'Vị trí'),
(405, 'pages_you_may_like', '', 'Pages you may like', 'Pages que vous aimerez', 'Trang bạn có thể thích'),
(406, 'show_more_pages', '', 'Show more pages', 'Voir plus de pages', 'Hiển thị nhiều trang hơn'),
(407, 'no_more_pages', '', 'No more pages to show', 'No more pages to show', 'Không có nhiều trang để hiển thị'),
(408, 'page_delete_confirmation', '', 'Are you sure you want to delete this page?', 'Etes-vous sûr de vouloir supprimer cette page?', 'Bạn có chắc chắn muốn xóa trang này?'),
(409, 'manage_pages', '', 'Manage Pages', 'gérer les pages', 'Quản lý trang'),
(410, 'owner', '', 'Owner', 'Propriétaire', 'Chủ nhân'),
(411, 'no_pages_found', '', 'No pages found', 'Aucune page trouvé', 'Không tìm thấy trang nào'),
(412, 'welcome_wonder', '', 'Wonder', 'Merveille', 'Chào mừng cảm xúc'),
(413, 'welcome_connect', '', 'Connect', 'connecter', 'Kết nối'),
(414, 'welcome_share', '', 'Share', 'Partagez', 'Chia sẻ'),
(415, 'welcome_discover', '', 'Discover', 'Découvrir', 'Khám phá'),
(416, 'welcome_find_more', '', 'Find more', 'Trouve plus', 'Tìm thêm'),
(417, 'welcome_mobile', '', 'Mobile Friendly', 'mobile bienvenus', 'Thân thiện với thiết bị di động'),
(418, 'welcome_wonder_text', '', 'Wonder (NEW), ability to wonder a post if you don&#039;t like it.', 'Wonder (NOUVEAU), la capacité à se demander un poste si vous ne l&#039;aimez pas.', 'Khả năng tự hỏi một bài đăng nếu bạn không thích nó.'),
(419, 'welcome_connect_text', '', 'Connect with your family and friends and share your moments.', 'Connectez-vous avec votre famille et vos amis et partager vos moments.', 'Kết nối với gia đình, bạn bè của bạn và chia sẻ những khoảnh khắc đáng nhớ.'),
(420, 'welcome_share_text', '', 'Share what&#039;s new and life moments with your friends.', 'Partager ce sont des moments de nouvelles et de la vie avec vos amis.', 'Chia sẻ những khoảnh khắc mới và cuộc sống với bạn bè, người thân của bạn.'),
(421, 'welcome_discover_text', '', 'Discover new people, create new connections and make new friends.', 'Découvrez de nouvelles personnes, créer de nouvelles connexions et de faire de nouveaux amis.', 'Khám phá những người mới, tạo kết nối mới và kết bạn mới.'),
(422, 'welcome_find_more_text', '', 'Find more of what you&#039;re looking for with WoWonder Search.', 'Trouver plus de ce que vous n &#039;êtes à la recherche d&#039;avec WoWonder Recherche.', 'Tìm thêm về những thông tin bạn cần với chức năng Tìm kiếm.'),
(423, 'welcome_mobile_text', '', '100% screen adaptable on all tablets and smartphones.', 'Écran 100% adaptable sur toutes les tablettes et les smartphones.', '100% thích ứng với tất cả các máy tính bảng và điện thoại thông minh.'),
(424, 'working_at', '', 'Working at', 'Travailler à', 'Làm việc tại'),
(425, 'relationship', '', 'Relationship', 'Relation', 'Mối quan hệ'),
(426, 'none', '', 'None', 'Aucun', 'Không'),
(427, 'avatar', '', 'Avatar', 'Avatar', 'Hình đại diện'),
(428, 'cover', '', 'Cover', 'Couverture', 'Ảnh viền'),
(429, 'background', '', 'Background', 'Contexte', 'Hình nền'),
(430, 'theme', '', 'Theme', 'Thème', 'Giao diện'),
(431, 'deafult', '', 'Default', 'Défaut', 'Mặc định'),
(432, 'my_background', '', 'My Background', 'Mon arrière-plan', 'Hình nền của tôi'),
(433, 'company_website', '', 'Company website', 'Site Web de l&#039;entreprise', 'Website Công ty'),
(434, 'liked_my_page', '', 'Liked My Page', 'Aimé Ma Page', 'Đã thích trang của tôi'),
(435, 'dislike', '', 'Dislike', 'Aversion', 'Không thích'),
(436, 'dislikes', '', 'Dislikes', 'Dégoûts', 'Không thích'),
(437, 'disliked_post', '', 'disliked your {postType} {post}', 'détesté votre {postType} {post}', 'không thích {postType} {post}'),
(438, 'disliked_comment', '', 'disliked your comment &quot;{comment}&quot;', 'détesté votre commentaire &quot;{comment}&quot;', 'không thích &quot;{comment}&quot; của bạn'),
(439, 'activity_disliked_post', '', 'disliked {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'détesté {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'không thích bài viết của {user} .'),
(440, 'second_button_type', '', 'Second post button type', 'Deuxième poste de type bouton', 'Loại nút bài thứ hai'),
(441, 'group_name', '', 'Group name', 'Nom de groupe', 'Tên Nhóm'),
(442, 'group_title', '', 'Group title', 'Titre de groupe', 'Tiêu đề nhóm'),
(443, 'my_groups', '', 'My Groups', 'Mes Groupes', 'Nhóm của tôi'),
(444, 'school', '', 'School', 'L&#039;école', 'Trường học'),
(445, 'site_keywords_help', '', 'Example: social, social site', 'Example: social, social site', 'Ví dụ: mạng xã hội, trang xã hội'),
(446, 'message_seen', '', 'Message Seen', 'Vu message', 'Đã xem tin nhắn'),
(447, 'recommended_for_powerful', '', 'Recommended for powerful servers', 'Recommandé pour les puissants serveurs', 'Đề xuất cho các máy chủ mạnh mẽ'),
(448, 'message_typing', '', 'Chat typing system', 'Système de typage chat', 'Hệ thống trò chuyện'),
(449, 'reCaptcha', '', 'reCaptcha', 'reCaptcha', 'reCaptcha'),
(450, 'instagram', 'Instagram', 'Instagram', 'Instagram', 'Instagram'),
(451, 'profile_visit_notification_help', '', 'if you don&#039;t share your visit event , you won&#039;t be able to see other people visiting your profile.', 'si vous ne partagez pas votre événement de la visite, vous ne serez pas en mesure de voir d&#039;autres gens qui visitent votre profil.', 'nếu bạn không chia sẻ sự kiện mà bạn đã truy cập bạn sẽ không thể thấy những người khác truy cập hồ sơ của bạn.'),
(452, 'account_delete', '', 'Delete Account', 'Effacer le compte', 'Xóa Tài khoản'),
(453, 'ip_address', '', 'IP Address', 'Adresse IP', 'Địa chỉ IP'),
(454, 'manage_groups', '', 'Manage Groups', 'Gérer les groupes', 'Quản lý nhóm'),
(455, 'group_delete_confirmation', '', 'Are you sure you want to delete this group?', 'Êtes-vous sûr de vouloir supprimer ce groupe?', 'Bạn có chắc chắn muốn xóa nhóm này?'),
(456, 'no_more_groups', '', 'No more groups to show', 'Pas de plusieurs groupes pour montrer', 'Không còn nhóm nào để hiển thị'),
(457, 'show_more_groups', '', 'Show more groups', 'Montrer plus de groupes', 'Hiển thị thêm nhóm'),
(458, 'members', '', 'Members', 'Membres', 'Thành viên'),
(459, 'verifications_requests', '', 'Verification Requests', 'Demandes de vérification', 'Yêu cầu xác minh'),
(460, 'verify', '', 'Verify', 'Vérifier', 'Xác minh'),
(461, 'ignore', '', 'Ignore', 'Ignorer', 'Bỏ qua'),
(462, 'page', '', 'Page', 'Page', 'Trang'),
(463, 'no_new_verification_requests', '', 'No new verification requests', 'Aucune nouvelle demande de vérification', 'Không có yêu cầu xác minh mới'),
(464, 'ban_user', '', 'Ban User', 'Ban User', 'Người dùng bị cấm'),
(465, 'banned', '', 'Banned', 'Banned', 'Đã cấm'),
(466, 'there_are_no_banned_ips', '', 'There are no banned ips.', 'Il n&#039;y a pas ips interdits.', 'Không có IP bị cấm.'),
(467, 'invalid_ip', '', 'Invalid ip address.', 'Adresse IP non valide.', 'Địa chỉ IP không hợp lệ.'),
(468, 'ip_banned', '', 'IP address successfully banned.', 'Adresse IP banni avec succès.', 'Đã cấm thành công địa chỉ IP.'),
(469, 'ip_exist', '', 'IP address already exist', 'Adresse IP existent déjà', 'Địa chỉ IP đã tồn tại'),
(470, 'please_add_ip', '', 'Please add an ip address', 'S&#039;il vous plaît ajouter une adresse ip', 'Vui lòng thêm một địa chỉ IP'),
(471, 'ip_deleted', '', 'IP address successfully deleted', 'Adresse IP supprimé avec succès', 'Đã xóa địa chỉ IP thành công'),
(472, 'email_me_when', '', 'Email me when', 'Envoyez-moi lorsque', 'Email cho tôi khi'),
(473, 'e_likes_my_posts', '', 'Someone liked my posts', 'Quelqu&#039;un aimait mes messages', 'Ai đó đã thích bài viết của tôi'),
(474, 'e_wondered_my_posts', '', 'Someone wondered my posts', 'Quelqu&#039;un demanda mes messages', 'Ai đó đã bày tỏ cảm xúc về bài viết của tôi'),
(475, 'e_commented_my_posts', '', 'Someone commented on my posts', 'Quelqu&#039;un a commenté mes messages', 'Ai đó đã bình luận bài viết của tôi'),
(476, 'e_shared_my_posts', '', 'Someone shared on my posts', 'Quelqu&#039;un partagé sur mes posts', 'Ai đó đã chia sẻ bài viết của tôi'),
(477, 'e_followed_me', '', 'Someone followed me', 'Quelqu&#039;un m&#039;a suivi', 'Ai đó đã theo dõi tôi'),
(478, 'e_liked_page', '', 'Someone liked my pages', 'Quelqu&#039;un aimait mes pages', 'Ai đó đã thích trang của tôi'),
(479, 'e_visited_my_profile', '', 'Someone visited my profile', 'Quelqu&#039;un a visité mon profil', 'Ai đó đã truy cập hồ sơ của tôi'),
(480, 'e_mentioned_me', '', 'Someone mentioned me', 'Quelqu&#039;un a parlé de moi', 'Ai đó đã đề cập đến tôi'),
(481, 'e_joined_group', '', 'Someone joined my groups', 'Quelqu&#039;un a rejoint mes groupes', 'Ai đó đã tham gia vào nhóm của tôi'),
(482, 'e_accepted', '', 'Someone accepted my friend/follow requset', 'Quelqu&#039;un a accepté mon ami / suivre la demande', 'Ai đó đã chấp nhận bạn tôi / yêu cầu theo dõi'),
(483, 'e_profile_wall_post', '', 'Someone posted on my timeline', 'Quelqu&#039;un a posté sur mon calendrier', 'Ai đó đăng trên dòng thời gian của tôi'),
(484, 'no_groups_found', '', 'No groups found', 'Pas de groupes trouvés', 'Không tìm thấy nhóm'),
(485, 'group_information', '', 'Group information', 'L&#039;information de groupe', 'Thông tin nhóm'),
(486, 'delete_group', '', 'Delete Group', 'Supprimer le groupe', 'Xóa Nhóm'),
(487, 'group_name_exists', '', 'Group name is already exists.', 'Le nom du groupe est existe déjà.', 'Tên nhóm đã tồn tại.'),
(488, 'group_name_invalid_characters', '', 'Invalid group name characters', 'Invalides nom de groupe caractères', 'Tên nhóm chứa Ký tự không hợp lệ'),
(489, 'group_name_characters_length', '', 'Group name must be between 5 / 32', 'Le nom du groupe doit être comprise entre 5/32', 'Tên nhóm phải có từ 5 đến 32 ký tự');
INSERT INTO `Wo_Langs_bk` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(490, 'no_requests_found', '', 'No requests found!', 'Aucune demande trouvée!', 'Không tìm thấy yêu cầu!'),
(491, 'remove', '', 'Remove', 'Enlever', 'Loại bỏ'),
(492, 'no_members_found', '', 'No members found', 'Aucun membre trouvé', 'Không tìm thấy thành viên'),
(493, 'group_deleted', '', 'Group successfully deleted', 'Groupe supprimé avec succès', 'Đã xóa nhóm thành công'),
(494, 'create_new_group', '', 'Create New Group', 'Créer un nouveau groupe', 'Tạo Nhóm mới'),
(495, 'my_games', '', 'My Games', 'Mes Jeux', 'Trờ chơi của tôi'),
(496, 'no_games_found', '', 'No games found', 'Pas de jeux trouvés', 'Không tìm thấy trò chơi'),
(497, 'groups', '', 'Groups', 'Groupes', 'Nhóm'),
(498, 'no_friends', '', 'No friends yet', 'Pas encore d&#039;amis', 'Chưa có bạn bè'),
(499, 'no_groups', '', 'Didn&#039;t join any groups yet', 'N&#039;a pas encore de rejoindre les groupes', 'Chưa tham gia nhóm nào'),
(500, 'load_more_pages', '', 'Load more pages', 'Chargez plus de pages', 'Tải thêm trang'),
(501, 'load_more_groups', '', 'Load more groups', 'Chargez plusieurs groupes', 'Tải thêm nhóm'),
(502, 'joined_group', '', 'Joined your group ({group_name})', 'Rejoint notre groupe ({group_name})', 'Đã tham gia nhóm ({group_name}) của bạn'),
(503, 'happy', '', 'Happy', 'Heureux', 'Happy'),
(504, 'loved', '', 'Loved', 'Aimé', 'Loved'),
(505, 'sad', '', 'Sad', 'Triste', 'Sad'),
(506, 'so_sad', '', 'Very sad', 'Très triste', 'Very sad'),
(507, 'angry', '', 'Angry', 'En colère', 'Angry'),
(508, 'confused', '', 'Confused', 'Confus', 'Confused'),
(509, 'smirk', '', 'Hot', 'Chaud', 'Hot'),
(510, 'broke', '', 'Broken', 'Brisé', 'Broken'),
(511, 'expressionless', '', 'expressionless', 'Inexpressif', 'expressionless'),
(512, 'cool', '', 'Cool', 'Bien', 'Cool'),
(513, 'funny', '', 'Funny', 'Amusant', 'Funny'),
(514, 'tired', '', 'Tired', 'Fatigué', 'Tired'),
(515, 'lovely', '', 'Lovely', 'Charmant', 'Lovely'),
(516, 'blessed', '', 'Blessed', 'Béni', 'Blessed'),
(517, 'shocked', '', 'Shocked', 'Choqué', 'Shocked'),
(518, 'sleepy', '', 'Sleepy', 'Somnolent', 'Sleepy'),
(519, 'pretty', '', 'Pretty', 'Assez', 'Pretty'),
(520, 'bored', '', 'Bored', 'Ennuyé', 'Bored'),
(521, 'total_users', '', 'Total Users', 'Nombre d&#039;utilisateurs', 'Tổng số người dùng'),
(522, 'users', '', 'Users', 'Utilisateurs', 'Người dùng'),
(523, 'pages', '', 'Pages', 'Pages', 'Trang'),
(524, 'games', '', 'Games', 'Jeux', 'Trò chơi'),
(525, 'online_users', '', 'Online Users', 'Utilisateurs en ligne', 'Người dùng trực tuyến'),
(526, 'recent_searches', '', 'Recent Searches', 'Recherches récentes', 'Tìm kiếm gần đây'),
(527, 'clear', '', 'Clear', 'Clair', 'Clear'),
(528, 'search_filter', '', 'Search filter', 'Filtre de recherche', 'Bộ lọc tìm kiếm'),
(529, 'keyword', '', 'Keyword', 'Mot-clé', 'Từ khóa'),
(530, 'what_are_looking_for', '', 'What are looking for ?', 'Que cherchez?', 'Những gì đang được tìm kiếm?'),
(531, 'changed_profile_cover_picture_male', '', 'Changed his profile cover', 'Changé sa couverture de profil', 'Đã thay đổi ảnh bìa hồ sơ của anh ấy'),
(532, 'changed_profile_cover_picture_female', '', 'Changed her profile cover', 'Changé son profil couvercle', 'Đã thay đổi ảnh bìa hồ sơ của cô ấy'),
(533, 'latest_games', '', 'Latest games', 'Derniers jeux', 'Trò chơi mới nhất'),
(534, 'no_albums_found', '', 'No albums found', 'Aucun album n&#039;a été trouvé', 'Không tìm thấy album'),
(535, 'create_album', '', 'Create album', 'Créer un album', 'Tạo Album'),
(536, 'my_albums', '', 'My Albums', 'Mes albums', 'Albums của tôi'),
(537, 'album_name', '', 'Album name', 'Nom de l&#039;album', 'Tên Album'),
(538, 'upload', '', 'Upload', 'Télécharger', 'Upload'),
(539, 'add_photos', '', 'Add photos', 'Ajouter des photos', 'Thêm hình'),
(540, 'replies', '', 'Replies', 'Réponses', 'Trả lời'),
(541, 'reply_to_comment', '', 'Reply to comment', 'Répondre au commentaire', 'Trả lời bình luận'),
(542, 'replied_to_comment', '', 'replied to your comment &quot;{comment}&quot;', 'répondu à votre commentaire &quot;{comment}&quot;', 'đã trả lời bình luận &quot;{comment}&quot; của bạn'),
(543, 'comment_reply_mention', '', 'mentioned you in a reply &quot;{comment}&quot;', 'vous avez mentionné dans une réponse &quot;{comment}&quot;', 'đã đề cập đến bạn trong một trả lời  &quot;{comment}&quot;'),
(544, 'also_replied', '', 'replied to the comment &quot;{comment}&quot;', 'répondu au commentaire &quot;{comment}&quot;', 'đã trả lời bình luận &quot;{comment}&quot;'),
(545, 'liked_reply_comment', '', 'liked your reply &quot;{comment}&quot;', 'aimé votre réponse &quot;{comment}&quot;', 'đã thích trả lời &quot;{comment}&quot; của bạn'),
(546, 'wondered_reply_comment', '', 'wondered your reply &quot;{comment}&quot;', 'demandé votre réponse &quot;{comment}&quot;', 'đã cảm xúc về trả lời &quot;{comment}&quot; của bạn'),
(547, 'disliked_reply_comment', '', 'disliked your reply &quot;{comment}&quot;', 'détesté votre réponse &quot;{comment}&quot;', 'đã không thích trả lời &quot;{comment}&quot; của bạn'),
(548, 'profile_visit_notification_p', '', 'Send users a notification when i visit their profile?', 'Envoyer utilisateurs une notification lorsque je visite son profil?', 'Gửi cho người dùng một thông báo khi tôi truy cập hồ sơ của họ?'),
(549, 'showlastseen_help', '', 'if you don&#039;t share your last seen , you won&#039;t be able to see other people last seen.', 'si vous ne partagez pas votre dernière fois, vous ne serez pas en mesure de voir d&#039;autres personnes la dernière fois.', 'nếu bạn không chia sẻ lần cuối nhìn thấy, bạn sẽ không thể nhìn thấy người khác nhìn thấy lần cuối của bạn.'),
(550, 'timeline_birthday_label', '', 'Who can see my birthday?', 'Qui peut voir mon anniversaire?', 'Ai có thể xem ngày sinh nhật của tôi?'),
(551, 'people_likes_this', '', 'people like this', 'personnes aiment ce', 'người thích trang này'),
(552, 'page_inviate_label', '', 'Invite friends to like this Page', 'Inviter des amis à aimer cette page', 'Mời bạn bè thích Trang này'),
(553, 'invite_your_frineds', '', 'Invite your friends/followers', 'Invitez vos amis / followers', 'Mời những bạn bè / những người theo dõi bạn'),
(554, 'not_invite', '', 'You don&#039;t have any more friends to invite', 'Vous ne disposez pas d&#039;autres amis à inviter', 'Bạn không có thêm bạn bè để mời'),
(555, 'invite', '', 'Invite', 'Invitez', 'Mời'),
(556, 'invited_page', '', 'invited you to like ({page_name})', 'vous invite à aimer ({page_name})', 'đã mời bạn thích ({page_name})'),
(557, 'accepted_invited_page', '', 'accepted your request to like ({page_name})', 'accepté votre demande d&#039;aimer ({page_name})', 'đã chấp nhận yêu cầu của bạn để thích ({page_name})'),
(558, 'call_to_action', '', 'Call to action', 'Appel à l&#039;action', 'Gọi hành động'),
(559, 'call_to_action_target', '', 'Call to target url', 'Appel à l&#039;URL cible', 'Gọi tới URL đích'),
(560, 'call_action_type_url_invalid', '', 'Call to action website is invalid', 'Appel à l&#039;action est site de invalide', 'Trang web để gọi hành động không hợp lệ'),
(561, 'avatar_and_cover', '', 'Avatar &amp; Cover', 'Avatar &amp; Cover', 'Ảnh đại diện &amp; Ảnh bìa'),
(562, 'online_sidebar_admin_label', '', 'Enable online users to show active users in sidebar.', 'Permettre aux utilisateurs en ligne pour montrer aux utilisateurs actifs dans la barre latérale.', 'Cho phép người dùng trực tuyến hiển thị thông tin người dùng đang hoạt động trên thanh Sidebar.'),
(563, 'not_active', '', 'Not active', 'Pas actif', 'Không hoạt động'),
(564, 'females', '', 'Females', 'Femmes', 'Nữ'),
(565, 'males', '', 'Males', 'Les mâles', 'Nam'),
(566, 'dashboard', '', 'Dashboard', 'Tableau de bord', 'Bảng điều khiển'),
(567, 'albums', '', 'Albums', 'Albums', 'Albums'),
(568, 'name', '', 'Name', 'Prénom', 'Tên'),
(569, 'players', '', 'Players', 'Des joueurs', 'Người chơi'),
(570, 'add_new_game', '', 'Add New Game', 'Ajouter un nouveau jeu', 'Thêm Trò chơi'),
(571, 'game_added', '', 'Game added', 'jeu ajouté', 'Đã thêm trò chơi'),
(572, 'url_not_supported_game', '', 'This url is not supported', 'Cet URL est pas pris en charge', 'Url này không được hỗ trợ'),
(573, 'please_add_a_game', '', 'Please add a game url', 'S&#039;il vous plaît ajouter une url de jeu', 'Vui lòng thêm một Url của trò chơi'),
(574, 'active_announcements', '', 'Active announcements', 'Annonces actives', 'Kích hoạt thông báo'),
(575, 'inactive_announcements', '', 'Inactive announcements', 'Annonces inactifs', 'Thông báo không hoạt động'),
(576, 'ban', '', 'Ban', 'Ban', 'Chặn'),
(577, 'new_email', '', 'New E-mail', 'Nouveau E-mail', 'E-mail mới'),
(578, 'html_allowed', '', 'Html allowed', 'HTML autorisée', 'Đã hỗ trợ Html'),
(579, 'send_me_to_my_email', '', 'Send to my email', 'Envoyer à mon e-mail', 'Gửi đến email của tôi'),
(580, 'test_message', '', 'Test message', 'Message test', 'Tin nhắn thử nghiệm'),
(581, 'joined_members', '', 'Joined Members', 'Membres Inscrit', 'Thành viên đã tham gia'),
(582, 'join_requests', '', 'Join Requests', 'Rejoignez Demandes', 'Yêu cầu tham gia'),
(583, 'verified_pages', '', 'Verified Pages', 'Pages Vérifié', 'Trang đã xác minh'),
(584, 'file_sharing_extenstions', '', 'File sharing extensions (separated with comma,)', '', 'Mở rộng chia sẻ File (được phân tách bằng dấu phẩy ,)'),
(585, 'word_cons', '', 'Words to be censored, separated by a comma (,)', 'Partage de fichiers extensions (séparées par des virgules,)', 'Các từ được kiểm duyệt, phân tách bằng dấu phẩy (,)'),
(586, 'join', '', 'Join', 'Joindre', 'Tham gia'),
(587, 'joined', '', 'Joined', 'Inscrit', 'Đã tham gia'),
(588, 'request', '', 'Request', 'Demande', 'Yêu cầu'),
(589, 'edit_comment', '', 'Edit comment', 'Modifier commentaire', 'Sửa bình luận'),
(590, 'last_play', '', 'Last Play:', 'Dernière lecture:', 'Lần chơi cuối:'),
(591, 'play', '', 'Play', 'Joue', 'Chơi'),
(592, 'confirm_request_group_privacy_label', '', 'Confirm request when someone joining this group ?', 'Confirmer la demande lorsque quelqu&#039;un se joindre à ce groupe?', 'Yêu cầu Xác nhận khi ai đó tham gia nhóm này?'),
(593, 'who_can_see_group_posts', '', 'Who can see group&#039;s posts ?', 'Qui peut voir des groupes messages?', 'Ai có thể xem bài viết của nhóm?'),
(594, 'joined_users', '', 'Joined users', 'Inscrit utilisateurs', 'Người dùng đã tham gia'),
(595, 'living_in', '', 'Living in', 'Vivre dans', 'Đang sống ở'),
(596, 'design', '', 'Design', 'Design', 'Thiết kế'),
(597, 'people_you_may_want_to_meet', '', 'People you may want to meet', 'Les personnes que vous pouvez rencontrer', 'Những người bạn có thể muốn gặp'),
(598, 'added_new_photos_to', '', 'added new photos to', 'ajoutés nouvelles photos à', 'thêm ảnh mới vào'),
(599, 'is_feeling', '', 'is feeling', 'est le sentiment', 'là cảm xúc'),
(600, 'is_traveling', '', 'is traveling to', 'se rend à', 'đang đi du lịch đến'),
(601, 'is_listening', '', 'is listening to', 'écoute', 'đang nghe'),
(602, 'is_playing', '', 'is playing', 'est en train de jouer', 'đang chơi'),
(603, 'is_watching', '', 'is watching', 'regarde', 'đang xem'),
(604, 'feeling', '', 'Feeling', 'Sentiment', 'Cảm xúc'),
(605, 'traveling', '', 'Traveling to', 'Voyager à', 'Đi du lịch đến'),
(606, 'watching', '', 'Watching', 'En train de regarder', 'Xem'),
(607, 'playing', '', 'Playing', 'En jouant', 'Chơi'),
(608, 'listening', '', 'Listening to', 'Écouter', 'Nghe'),
(609, 'feeling_q', '', 'What are you feeling ?', 'Que ressentez vous ?', 'Bạn đang cảm thấy gì?'),
(610, 'traveling_q', '', 'Where are you traveling ?', 'Où êtes-vous?', 'Nơi bạn đang đi du lịch ?'),
(611, 'watching_q', '', 'What are you watching ?', 'Qu&#039;est-ce que vous regardez ?', 'Bạn đang xem gì vậy ?'),
(612, 'playing_q', '', 'What are you Playing ?', 'A quoi tu joues ?', 'Bạn đang chơi gì vậy ?'),
(613, 'listening_q', '', 'What are you Listening to ?', 'Qu&#039;écoutes-tu ?', 'Bạn đang nghe gì vậy ?'),
(614, 'feel_d', '', 'What are you doing ?', 'Qu&#039;est-ce que tu fais ?', 'Bạn đang làm gì đấy ?'),
(615, 'studying_at', '', 'Studying at', 'Etudier à', 'Học tại'),
(616, 'company_website_invalid', '', 'Company website is invalid', 'Site de la société est invalide', 'Trang web của công ty không hợp lệ'),
(617, 'page_deleted', '', 'Page deleted successfully', 'Page supprimée avec succès', 'Trang đã xóa thành công'),
(618, 'cover_n_label', '', 'cover image.', 'Image de couverture.', 'ảnh bìa.'),
(619, 'suggested_groups', '', 'Suggested groups', 'Groupes suggérés', 'Nhóm đề xuất'),
(620, 'accepted_join_request', '', 'accepted your request to join ({group_name})', 'accepté votre demande d&#039;adhésion ({group_name})', 'đã chấp nhận yêu cầu tham gia ({group_name}) của bạn'),
(621, 'requested_to_join_group', '', 'requested to join your group', 'demandé à rejoindre votre groupe', 'đã yêu cầu tham gia nhóm của bạn'),
(622, 'no_one_posted', '', 'No one posted yet', 'Personne encore posté', 'Chưa có ai đăng'),
(623, 'add_your_frineds', '', 'Add your friends to this group', 'Ajouter à vos amis de ce groupe', 'Thêm bạn bè của bạn vào nhóm này'),
(624, 'added_all_friends', '', 'There are no friends to add them', 'Il n&#39;y a aucun ami à les ajouter', 'There are no friends to add them'),
(625, 'added_you_to_group', '', 'added you to the group ({group_name})', 'vous ajouté au groupe ({group_name})', 'đã thêm bạn vào nhóm ({group_name})'),
(626, 'group_type', '', 'Group type', 'Type de groupe', 'Loại nhóm'),
(627, 'public', '', 'Public', 'Public', 'Công cộng'),
(628, 'private', '', 'Private', 'Privé', 'Riêng tư'),
(629, 'reports', '', 'Reports', 'Rapports', 'Báo cáo'),
(630, 'no_dislikes', '', 'No dislikes yet', 'Pas encore aversions', 'Không thích'),
(631, 'disliked', '', 'Disliked', 'N&#039;a pas aimé', 'Đã không thích'),
(632, 'wondered', '', 'Wondered', 'Demandé', 'Đã cảm xúc'),
(633, 'terms', '', 'Terms Pages', 'Conditions Pages', 'Trang điều khoản'),
(634, 'profile_privacy', '', 'User Profile Privacy', 'Profil de confidentialité', 'Hồ sơ cá nhân'),
(635, 'profile_privacy_info', '', 'Enable it to allow non logged users to view users profiles.', 'Activer qu&#039;il permette non connecté aux utilisateurs de voir les profils des utilisateurs.', 'Bật chức năng cho phép người dùng không đăng nhập vẫn xem được hồ sơ cá nhân.'),
(636, 'video_upload', '', 'Video Upload', 'Video Upload', 'Tải lên Video'),
(637, 'video_upload_info', '', 'Enable video upload to share &amp; upload videos to the site.', 'Activer télécharger la vidéo pour partager et télécharger des vidéos sur le site.', 'Cho phép tải lên Video để chia sẻ và tải Video lên trang web.'),
(638, 'audio_upload', '', 'Audio Upload', 'Audio Upload', 'Tải lên Âm thanh'),
(639, 'audio_upload_info', '', 'Enable audio upload to share &amp; upload sounds to the site.', 'Activer audio upload pour partager et télécharger des sons sur le site.', 'Cho phép tải lên âm thanh để chia sẻ và tải âm thanh lên trang web.'),
(640, 'read_more', '', 'Read more', 'En lire plus..', 'Xem thêm'),
(641, 'read_less', '', 'Read less', 'Lire moins..', 'Đọc ít hơn'),
(642, 'add_photo', '', 'Add a photo.', 'Ajouter une photo.', 'Thêm một bức ảnh.'),
(643, 'add_photo_des', '', 'Show your unique personality and style.', 'Affichez votre personnalité et votre style uniques.', 'Thể hiện cá tính và phong cách độc đáo của bạn.'),
(644, 'start_up_skip', '', 'Or Skip this step for now.', 'Sauter cette étape pour le moment', 'Hoặc Bỏ qua bước này ngay bây giờ.'),
(645, 'start_up_continue', '', 'Save &amp; Continue', 'Enregistrer &amp; Continuer', 'Lưu và Tiếp tục'),
(646, 'tell_us', '', 'Tell us about you.', 'Parlez-nous de vous.', 'Hãy giới thiệu cho chúng tôi về bạn.'),
(647, 'tell_us_des', '', 'Share your information with our community.', 'Partager vos informations avec notre communauté.', 'Chia sẻ thông tin của bạn với cộng đồng của chúng tôi.'),
(648, 'get_latest_activity', '', 'Get latest activities from our popular users.', 'Obtenir les dernières activités de nos utilisateurs populaires.', 'Nhận các hoạt động mới nhất từ ​​người dùng phổ biến của chúng tôi.'),
(649, 'follow_head', '', 'Follow our famous users.', 'Suivez nos utilisateurs célèbres.', 'Theo dõi người dùng nổi tiếng của chúng tôi.'),
(650, 'follow_num', '', 'Follow {number} &amp; Finish', 'Suivez {number} &amp; Terminer', 'Theo dõi {number} &amp; Kết thúc'),
(651, 'looks_good', '', 'Looks good.', 'Ça a l&#039;air bien.', 'Có vẻ tốt.'),
(652, 'looks_good_des', '', 'You&#039;ll be able to add more to your profile later.', 'Vous serez en mesure de compléter votre profil ultérieurement.', 'Bạn sẽ có thể thêm nhiều hơn vào hồ sơ của bạn sau này.'),
(653, 'upload_your_photo', '', 'Upload your photo', 'Téléchargez votre photo', 'Tải lên hình ảnh của bạn'),
(654, 'please_wait', '', 'Please wait..', 'S&#039;il vous plaît, attendez..', 'Xin vui lòng chờ ..'),
(655, 'username_or_email', '', 'Username or E-mail', 'Nom d&#039;utilisateur ou email', 'Tài khoản hoặc E-mail'),
(656, 'email_setting', '', 'E-mail Setting', 'E-mail Réglage', 'Thiết lập E-mail'),
(657, 'years_old', '', 'years old', 'ans', 'tuổi'),
(658, 'friends_birthdays', '', 'Friends Birthdays', 'Annivarsaire d&#039;amis', 'Sinh nhật bạn bè'),
(659, 'sms_setting', '', 'SMS Setting', 'Paramètres SMS', 'Thiết lập SMS'),
(660, 'smooth_loading', '', 'Smooth Loading', 'Chargement régulier', 'Tải mượt mà'),
(661, 'boosted_pages_viewable', '', 'Boosted pages are already viewable by all our community members.', 'Les pages boostées sont déjà visibles par tous les membres de votre communauté', 'Các trang được tăng cường đã có thể xem được bởi tất cả các thành viên cộng đồng của chúng tôi.'),
(662, 'boost_page_in_same_time', '', 'You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} pages at the same time.', 'Vous êtes un {type_name}, vous pouvez booster {can_boost} pages en même temps.', 'Bạn là một {type_name}, Bạn chỉ có thể tăng cường các trang {can_boost} cùng một lúc.'),
(663, 'boost_posts_in_same_time', '', 'You&#039;re a {type_name}, You&#039;re just able to boost {can_boost} posts at the same time.', 'You&#039;re a {type_name}, vous pouvez booster {can_boost} posts en même temps.', 'Bạn là một {type_name}, Bạn chỉ có thể tăng cường các bài viết {can_boost} cùng một lúc.'),
(664, 'there_are_no_boosted_pages', '', 'There are no boosted pages yet.', 'Il n&#039;y a pas encore de pages boostées.', 'Không có trang nào được tăng cường.'),
(665, 'there_are_no_boosted_posts', '', 'There are no boosted posts yet.', 'Il n&#039;y a pas encore de posts boostés.', 'Không có bài viết nào được tăng cường.'),
(666, 'discover_pro_types', '', 'Discover more features with {sitename} PRO packages !', 'Découvrez plus de fonctionnalités avec {sitename} PRO !', 'Khám phá nhiều tính năng hơn với các gói {sitename} PRO!'),
(667, 'star', '', 'Star', 'Etoile', 'Star'),
(668, 'hot', '', 'Hot', 'Hot', 'Hot'),
(669, 'ultima', '', 'Ultima', 'Ultima', 'Ultima'),
(670, 'vip', '', 'Vip', 'Vip', 'Vip'),
(671, 'featured_member', '', 'Featured member', 'Membres en vedette', 'Thành viên nổi bật'),
(672, 'see_profile_visitors', '', 'See profile visitors', 'Voir le profil des visiteurs', 'Xem hồ sơ khách truy cập'),
(673, 'show_hide_lastseen', '', 'Show / Hide last seen', 'Voir / Cacher la dernière fois vu', 'Hiển thị / Ẩn lần cuối'),
(674, 'verified_badge', '', 'Verified badge', 'Badge Vérifié', 'Huy hiệu đã được xác minh'),
(675, 'post_promotion_star', '', 'Posts promotion&lt;br&gt;', 'Promotion de post&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;', 'Bài viết quảng cáo&lt;br&gt;'),
(676, 'page_promotion_star', '', 'Pages promotion&lt;br&gt;', 'Promotion de page&lt;br&gt;&lt;small&gt;(Indisponible)&lt;/small&gt;', 'Trang quảng cáo&lt;br&gt;'),
(677, '0_discount', '', '0% discount', '0% de réduction', 'Giảm giá 0%'),
(678, '10_discount', '', '10% discount', '10% de réduction', 'Giảm giá 10%'),
(679, '20_discount', '', '20% discount', '20% de réduction', 'Giảm giá 20%'),
(680, '60_discount', '', '60% discount', '60% de réduction', 'Giảm giá 60%'),
(681, 'per_week', 'Per Week', 'Per Week', 'Par semaine', 'Trong tuần'),
(682, 'per_month', 'Per Month', 'Per Month', 'Par mois', 'Trong tháng'),
(683, 'per_year', 'Per Year', 'Per Year', 'Par an', 'Trong năm'),
(684, 'life_time', '', 'life time', 'à vie', 'cả đời'),
(685, 'upgrade_now', '', 'Upgrade Now', 'Mise à jour maintenant', 'Nâng cấp ngay bây giờ'),
(686, 'boosted_posts', '', 'Boosted Posts', 'Posts boostés', 'Tăng cường Bài viết'),
(687, 'boosted_pages', '', 'Boosted Pages', 'Pages boostées', 'Tăng cường Trang'),
(688, 'put_me_here', '', 'Put Me Here', 'Me mettre ici', 'Put Me Here'),
(689, 'promoted', '', 'Promoted', 'Promoted', 'Quảng bá'),
(690, 'oops_something_went_wrong', '', 'Oops ! Something went wrong.', 'Oops ! Quelquechose s&#039;est mal passé.', 'Rất tiếc! Đã xảy ra lỗi.'),
(691, 'try_again', '', 'Try again', 'Essayez encore', 'Thử lại'),
(692, 'boost_page', '', 'Boost Page', 'Booster Page', 'Tăng cường cho trang'),
(693, 'page_boosted', '', 'Page Boosted', 'Page Boostée', 'Đã tăng cường cho trang'),
(694, 'un_boost_page', '', 'Un-Boost Page', 'Un-Boost Page', 'Không tăng cường cho trang'),
(695, 'edit_page_settings', '', 'Edit Page Settings', 'Editer paramètres de la Page', 'Chỉnh sửa cài đặt trang'),
(696, 'blocked_users', '', 'Blocked Users', 'Utilisateurs bloqués', 'Người dùng bị chặn'),
(697, 'un_block', '', 'Un-Block', 'Débloquer', 'Bỏ chặn'),
(698, 'css_file', '', 'CSS file', 'fichier CSS', 'CSS file'),
(699, 'css_status_default', '', 'Default design', 'Design par défaut', 'Thiết kế mặc định'),
(700, 'css_status_my', '', 'My CSS file', 'Mon fichier CSS', 'My CSS file'),
(701, 'css_file_info', '', 'You can fully design your profile by uploading your own CSS file', 'Vous pouvez modifier le design de votre profil via le téléversement de votre propre fichier CSS', 'You can fully design your profile by uploading your own CSS file'),
(702, 'invite_your_frineds_home', '', 'Invite Your Friends', 'Inviter vos amis', 'Mời bạn bè của bạn'),
(703, 'send_invitation', '', 'Send Invitation', 'Envoyer Invitation', 'Send Invitation'),
(704, 'boost_post', '', 'Boost Post', 'Boost Post', 'Boost Post'),
(705, 'unboost_post', '', 'UnBoost Post', 'Un-Boost Post', 'UnBoost Post'),
(706, 'drag_to_re', '', 'Drag to reposition cover', 'Faites glisser pour repositionner la couverture', 'Drag to reposition cover'),
(707, 'block_user', '', 'Block User', 'Bloquer l&#39;utilisateur', 'Block User'),
(708, 'edit_user', '', 'Edit User', 'Editer Utilisateur', 'Edit User'),
(709, 'cong', '', 'Congratulations ! You&#039;re now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}', 'Félicitation ! Vous êtes maintenant un &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}', 'Congratulations ! Youre now a &lt;span style=&quot;color:{color}&quot;&gt;&lt;i class=&quot;fa fa-{icon} fa-fw&quot;&gt;&lt;/i&gt;{type_name}'),
(710, 'cong_2', '', 'Start browsing the new features', 'Commencer à naviguer sur les nouvelles fonctionnalités', 'Start browsing the new features'),
(711, 'activation_oops', '', 'Oops, looks like your account is not activated yet.', 'Oops, votre compte n&#39;est pas encore activé.', 'Oops, looks like your account is not activated yet.'),
(712, 'activation_method', '', 'Please choose a method below to activate your account.', 'Merci de choisir une méthode ci*dessous pour activer votre compte.', 'Please choose a method below to activate your account.'),
(713, 'activation_email', '', 'Via E-mail', 'Par E-mail', 'Via E-mail'),
(714, 'activation_phone', '', 'Via Phone Number', 'Par téléphone', 'Via Phone Number'),
(715, 'activation_or', '', 'Or', 'Ou', 'Or'),
(716, 'activation_send_code', '', 'Send Confirmation Code', 'Envoyer le code confirmation', 'Send Confirmation Code'),
(717, 'activation_get_code_again', '', 'Didn&#039;t get the code?', 'Didn&#39;t get the code?', 'Didnt get the code?'),
(718, 'activation_resend', '', 'Resend', 'Renvoyer', 'Resend'),
(719, 'activation_should_receive', '', 'You should receive the code within', 'You should receive the code within', 'You should receive the code within'),
(720, 'confirm', '', 'Confirm', 'Confirmer', 'Confirm'),
(721, 'phone_num_ex', '', 'Phone number (eg. +905...)', 'Numéro de téléphone (eg. +33...)', 'Phone number (eg. +905...)'),
(722, 'error_while_activating', '', 'Error while activating your account.', 'Error while activating your account.', 'Error while activating your account.'),
(723, 'wrong_confirmation_code', '', 'Wrong confirmation code.', 'Code de confirmation erroné.', 'Wrong confirmation code.'),
(724, 'failed_to_send_code', '', 'Failed to send the confirmation code.', 'Impossible d&#39;envoyer le code de confirmation.', 'Failed to send the confirmation code.'),
(725, 'worng_phone_number', '', 'Wrong phone number.', 'Numéro de téléphone erroné.', 'Wrong phone number.'),
(726, 'phone_already_used', '', 'Phone number already used.', 'Numéro de téléphone déjà utilisé.', 'Phone number already used.'),
(727, 'sms_has_been_sent', '', 'SMS has been sent successfully.', 'SMS envoyé avec succès.', 'SMS has been sent successfully.'),
(728, 'error_while_sending_sms', '', 'Error while sending the SMS, please try another number.', 'Erreur lors de l&#39;envooi du SMS, merci d&#39;essayer un autre numéro de téléphone.', 'Error while sending the SMS, please try another number.'),
(729, 'failed_to_send_code_fill', '', 'Failed to send the confirmation code, please select one of the activation methods.', 'Impossible d&#39;envoyer le code de confirmation, essayez une des méthodes d&#39;activation.', 'Failed to send the confirmation code, please select one of the activation methods.'),
(730, 'email_sent_successfully', '', 'E-mail has been sent successfully, please check your inbox or spam folder for the activation link.', 'E-mail envoyé avec succès, merci de vérifier votre boite de réception et dossier spam pour le lien d&#39;activation.', 'E-mail has been sent successfully, please check your inbox or spam folder for the activation link.'),
(731, 'limit_exceeded', '', 'Limit exceeded, please try again later.', 'Limite dépassé, merci de réessayer plus tard.', 'Limit exceeded, please try again later.'),
(732, 'failed_to_send_code_email', '', 'Error while sending the SMS, please try another number or activate your account via email by logging into your account.', 'Erreur lors de l&#39;envoi du SMS, merci d&#39;essayer un autre numéro ou activer votre compte par e-mail en vous connectant à votre compte.', 'Error while sending the SMS, please try another number or activate your account via email by logging into your account.'),
(733, 'free_member', '', 'Free Member', 'Free member', 'Free Member'),
(734, 'star_member', '', 'Star Member', 'Star Member', 'Star Member'),
(735, 'hot_member', '', 'Hot Member', 'Hot Member', 'Hot Member'),
(736, 'ultima_member', '', 'Ultima Member', 'Ultima Member', 'Ultima Member'),
(737, 'vip_member', '', 'Vip Member', 'Vip Member', 'Vip Member'),
(738, 'moderator', '', 'Moderator', 'Modérateur', 'Moderator'),
(739, 'member_type', '', 'Member Type', 'Type de membres', 'Member Type'),
(740, 'membership', '', 'Membership', 'Membership', 'Membership'),
(741, 'upgrade', '', 'Upgrade', 'Mise à jour', 'Upgrade'),
(742, 'error_please_try_again', '', 'Error, Please try again later.', 'Erreur, merci de réessayer plus tard.', 'Error, Please try again later.'),
(743, 'upgrade_to_pro', '', 'Upgrade To Pro', 'Passer à Pro', 'Upgrade To Pro'),
(744, 'no_answer', '', 'No answer', 'Pas de réponse', 'No answer'),
(745, 'please_try_again_later', '', 'Please try again later.', 'Veuillez réessayer plus tard.', 'Please try again later.'),
(746, 'answered', '', 'Answered !', 'répondre !', 'Answered !'),
(747, 'call_declined', '', 'Call declined', 'Appel refusé', 'Call declined'),
(748, 'call_declined_desc', '', 'The recipient has declined the call, please try again later.', 'Le destinataire a refusé l&#39;appel, s&#39;il vous plaît essayer à nouveau plus tard.', 'The recipient has declined the call, please try again later.'),
(749, 'new_video_call', '', 'New video call', 'Nouvel appel vidéo', 'New video call'),
(750, 'new_video_call_desc', '', 'wants to video chat with you.', 'veut le chat vidéo avec vous.', 'wants to video chat with you.'),
(751, 'decline', '', 'Decline', 'Déclin', 'Decline'),
(752, 'accept_and_start', '', 'Accept &amp; Start', 'Accepter &amp; Start', 'Accept &amp; Start'),
(753, 'calling', '', 'Calling', 'Appel', 'Calling'),
(754, 'calling_desc', '', 'Please wait for your friend answer.', 'S&#39;il vous plaît attendre votre ami répondre à démarrer le chat vidéo.', 'Please wait for your friend answer.'),
(755, 'your_friends_chat', '', 'You&#039;re friends on {site_name}', 'Vous êtes amis sur {site_name}', 'Youre friends on {site_name}'),
(756, 'your_following', '', 'You&#039;re following', 'Vous suivez', 'Youre following'),
(757, 'see_all', '', 'See all', 'Voir tout', 'See all'),
(758, 'me', '', 'Me', 'Moi', 'Me'),
(759, 'post_promotion_hot', '', 'Boost up to {monthly_boosts} posts&lt;br&gt;', 'Boost up to {monthly_boosts} posts&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {monthly_boosts} posts&lt;br&gt;'),
(760, 'page_promotion_hot', '', 'Boost up to {monthly_boosts} pages&lt;br&gt;', 'Boost up to {monthly_boosts} pages&lt;br&gt;&lt;small&gt;({monthly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {monthly_boosts} pages&lt;br&gt;'),
(761, 'post_promotion_ultima', '', 'Boost up to {yearly_boosts} posts&lt;br&gt;', 'Boost up to {yearly_boosts} posts&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {yearly_boosts} posts&lt;br&gt;'),
(762, 'page_promotion_ultima', '', 'Boost up to {yearly_boosts} pages&lt;br&gt;', 'Boost up to {yearly_boosts} pages&lt;br&gt;&lt;small&gt;({yearly_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {yearly_boosts} pages&lt;br&gt;'),
(763, 'post_promotion_vip', '', 'Boost up to {lifetime_boosts} posts&lt;br&gt;', 'Boost up to {lifetime_boosts} posts&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {lifetime_boosts} posts&lt;br&gt;'),
(764, 'page_promotion_vip', '', 'Boost up to {lifetime_boosts} pages&lt;br&gt;', 'Boost up to {lifetime_boosts} pages&lt;br&gt;&lt;small&gt;({lifetime_boosts} in same time 7/24)&lt;/small&gt;', 'Boost up to {lifetime_boosts} pages&lt;br&gt;'),
(765, 'sign_up', '', 'Sign up', 'S&#39;inscrire', 'Sign up'),
(766, 'youtube', '', 'YouTube', 'YouTube', 'YouTube'),
(767, 'my_products', '', 'My Products', 'Mes produits', 'Sản phẩm của tôi'),
(768, 'choose_a_payment_method', '', 'Choose a payment method', 'Choisissez une méthode de paiement', 'Chọn phương thức thanh toán'),
(769, 'paypal', '', 'PayPal', 'PayPal', 'PayPal'),
(770, 'credit_card', '', 'Credit Card', 'Credit Card', 'Credit Card'),
(771, 'bitcoin', '', 'Bitcoin', 'Bitcoin', 'Bitcoin'),
(772, 'categories', '', 'Categories', 'Catégories', 'Thể loại'),
(773, 'latest_products', '', 'Latest Products', 'Derniers produits', 'Latest Products'),
(774, 'search_for_products_main', '', 'Search for products', 'Recherche de produits', 'Search for products'),
(775, 'search_for_products', '', 'Search for products in {category_name}', 'Recherche de produits dans {category_name}', 'Search for products in {category_name}'),
(776, 'no_available_products', '', 'No available products to show.', 'Pas de produits disponibles pour afficher.', 'No available products to show.'),
(777, 'load_more_products', '', 'Load more products', 'Chargez plus de produits', 'Load more products'),
(778, 'sell_new_product', '', 'Sell new product', 'Vente nouveau produit', 'Sell new product'),
(779, 'description', '', 'Description', 'La description', 'Description'),
(780, 'please_describe_your_product', '', 'Please describe your product.', 'S&#39;il vous plaît décrire votre produit.', 'Please describe your product.'),
(781, 'used', '', 'Used', 'Utilisé', 'Đã sử dụng'),
(782, 'new', '', 'New', 'Nouveau', 'Mới'),
(783, 'price', '', 'Price', 'Prix', 'Giá'),
(784, 'your_product_price', '', 'Your product price in USD currency ($), e.g (10.99)', 'Votre prix du produit en monnaie USD ($), e.g (10.99)', 'Your product price in USD currency ($), e.g (10.99)'),
(785, 'edit_product', '', 'Edit product', 'Modifier le produit', 'Edit product'),
(786, 'publish', '', 'Publish', 'Publier', 'Publish'),
(787, 'more_info', '', 'More info', 'More info', 'More info'),
(788, 'contact_seller', '', 'Contact seller', 'Contacter le vendeur', 'Liên hệ với người bán'),
(789, 'by_product', '', 'By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;', 'Par &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posté {product_time}, dans &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;', 'By &lt;a href=&quot;{product_url}&quot;&gt;{product_name}&lt;/a&gt;, posted {product_time}, in &lt;a href=&quot;{product_category}&quot;&gt;{product_category_name}&lt;/a&gt;'),
(790, 'payment_declined', '', 'Payment declined, please try again later.', 'Paiement refusé, s&#39;il vous plaît essayer à nouveau plus tard.', 'Payment declined, please try again later.'),
(791, 'c_payment', '', 'Confirming payment, please wait..', 'paiement confirmant, s&#39;il vous plaît patienter ..', 'Confirming payment, please wait..'),
(792, 'earn_users', '', 'Earn up to ${amount} for each user your refer to us !', 'Gagnez jusqu&#39;à ${amount} pour chaque utilisateur de votre référence à nous!', 'Earn up to ${amount} for each user your refer to us !'),
(793, 'earn_users_pro', '', 'Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.', 'Gagnez jusqu&#39;à ${amount} pour chaque utilisateur de votre référence à nous et souscrira à un de nos forfaits pro.', 'Earn up to ${amount} for each user your refer to us and will subscribe to any of our pro packages.'),
(794, 'my_affiliates', '', 'My Affiliates', 'Mes Affiliés', 'My Affiliates'),
(795, 'my_balance', '', 'My balance', 'Mon solde', 'Số dư của tôi'),
(796, 'your_ref_link', '', 'Your affiliate link is', 'Votre lien d&#39;affiliation est', 'Your affiliate link is'),
(797, 'your_balance', '', 'Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}', 'Votre solde est ${balance}, demande de retrait minimum est ${m_withdrawal}', 'Your balance is ${balance}, minimum withdrawal request is ${m_withdrawal}'),
(798, 'your_balance_is', '', 'Your balance is', 'Votre solde est', 'Your balance is'),
(799, 'paypal_email', '', 'PayPal email', 'PayPal email', 'PayPal email'),
(800, 'amount_usd', '', 'Amount (USD)', 'Montant (USD)', 'Amount (USD)'),
(801, 'request_withdrawal', '', 'Request withdrawal', 'Demande de retrait', 'Yêu cầu rút tiền'),
(802, 'payment_history', '', 'Payment History', 'Historique de paiement', 'Lịch sử thanh toán'),
(803, 'amount', '', 'Amount', 'Montant', 'Số tiền'),
(804, 'declined', '', 'Declined', 'Refusée', 'Declined'),
(805, 'approved', '', 'Approved', 'A approuvé', 'Approved'),
(806, 'total_votes', '', 'Total votes', 'Des votes', 'Total votes'),
(807, 'mark_as_sold', '', 'Mark Product As Sold', 'Marque produit vendu', 'Mark Product As Sold'),
(808, 'added_new_product_for_sell', '', 'added new product for sell.', 'nouveau produit ajouté pour vendre.', 'added new product for sell.'),
(809, 'product_name', '', 'Product Name', 'Nom du produit', 'Tên sản phẩm'),
(810, 'in_stock', '', 'In stock', 'en magasin', 'Trong kho'),
(811, 'sold', '', 'Sold', 'Vendu', 'Sold'),
(812, 'answer', '', 'Answer', 'Répondre', 'Answer'),
(813, 'add_answer', '', 'Add answer', 'Ajouter une réponse', 'Add answer'),
(814, 'authenticating', '', 'Authenticating', 'Authentifier', 'Chứng thực'),
(815, 'welcome_back', '', 'Welcome back!', 'Nous saluons le retour!', 'Chào mừng trở lại!'),
(816, 'welcome_', '', 'Welcome!', 'Bienvenue!', 'Chào mừng bạn!'),
(817, 'connect_with_people', '', 'Connect with people.', 'Communiquer avec les gens.', 'Kết nối với mọi người.'),
(818, 'make_new_friends', '', 'Make new friends.', 'Se faire de nouveaux amis.', 'Make new friends.'),
(819, 'share_your_memories', '', 'Share your memories.', 'Partagez vos souvenirs.', 'Chia sẻ kỷ niệm của bạn.'),
(820, 'create_new_relationships', '', 'Create new relationships.', 'Créer de nouvelles relations.', 'Create new relationships.'),
(821, 'discover_new_places', '', 'Discover new places.', 'Découvrez de nouveaux endroits.', 'Khám phá những địa điểm mới.'),
(822, 'forgot_your_password', '', 'Forgot your password?', 'Mot de passe oublié?', 'Quên mật khẩu?'),
(823, 'invalid_markup', '', 'Invalid markup, please try to reset your password again', 'balisage non valide, s&#39;il vous plaît essayez de réinitialiser votre mot de passe', 'Invalid markup, please try to reset your password again'),
(824, 'go_back', '', 'Go back', 'Go back', 'Go back'),
(825, 'terms_agreement', '', 'By creating your account, you agree to our', 'En créant votre compte, vous acceptez nos', 'By creating your account, you agree to our'),
(826, 'please_choose_price', '', 'Please choose a price for your product', 'S&#39;il vous plaît choisir un prix pour votre produit', 'Please choose a price for your product'),
(827, 'please_choose_c_price', '', 'Please choose a correct value for your price', 'S&#39;il vous plaît choisir une valeur correcte pour votre prix', 'Please choose a correct value for your price'),
(828, 'please_upload_image', '', 'Please upload at least 1 photo', 'S&#39;il vous plaît télécharger au moins 1 photo', 'Please upload at least 1 photo'),
(829, 'you_have_already_voted', '', 'You have already voted this poll.', 'Vous avez déjà voté ce sondage.', 'You have already voted this poll.'),
(830, 'you_have_pending_request', '', 'You have already a pending request.', 'Vous avez déjà une demande en attente.', 'You have already a pending request.'),
(831, 'invalid_amount_value', '', 'Invalid amount value', 'valeur de quantité non valide', 'Invalid amount value'),
(832, 'invalid_amount_value_your', '', 'Invalid amount value, your amount is:', 'Valeur de quantité non valide, le montant est:', 'Invalid amount value, your amount is:'),
(833, 'invalid_amount_value_withdrawal', '', 'Invalid amount value, minimum withdrawal request is:', 'valeur de quantité non valide, demande de retrait minimum est de:', 'Invalid amount value, minimum withdrawal request is:'),
(834, 'you_request_sent', '', 'Your request has been sent, you&#039;ll receive an email regarding the payment details soon.', 'Votre demande a été envoyée, vous recevrez un e-mail concernant les détails de paiement bientôt.', 'Your request has been sent, youll receive an email regarding the payment details soon.'),
(835, 'turn_off_notification', '', 'Turn off notification sound', 'Désactiver la notification sonore', 'Turn off notification sound'),
(836, 'turn_on_notification', '', 'Turn on notification sound', 'Activer la notification sonore', 'Turn on notification sound'),
(837, 'view_more_posts', '', 'View {count} new posts', 'Vue {count} de nouveaux messages', 'View {count} new posts'),
(838, 'store_posts_by', '', 'Store posts by', 'postes de magasins par', 'Store posts by'),
(839, 'new_audio_call', '', 'New audio call', 'Nouveau appel audio', 'New audio call'),
(840, 'new_audio_call_desc', '', 'wants to talk with you.', 'Veut parler avec vous', 'wants to talk with you.'),
(841, 'audio_call', '', 'Audio call', 'Appel audio', 'Audio call'),
(842, 'audio_call_desc', '', 'talking with', 'parler avec', 'talking with'),
(843, 'market', '', 'Market', 'Marché', 'Thị trường'),
(844, 'comment_post_label', '', 'Comment', 'Commentaire', 'Bình luận'),
(846, 'by', '', 'By', 'Par', 'By'),
(847, 'load_more_blogs', '', 'Load more articles', '', 'Tải thêm bài viết'),
(848, 'blog', '', 'Blog', 'Blog', 'Blog'),
(849, 'no_blogs_found', '', 'No articles found', 'Aucun article trouvé', 'Không tìm thấy bài viết nào'),
(850, 'most_recent_art', '', 'Most recent articles', 'Articles les plus récents', 'Bài viết gần đây nhất'),
(851, 'create_new_article', '', 'Create new article', 'Créer un nouvel article', 'Tạo bài viết mới'),
(852, 'my_articles', '', 'My articles', 'Mes articles', 'Bài viết của tôi'),
(853, 'title', '', 'Title', 'Titre', 'Tiêu đề'),
(854, 'content', '', 'Content', 'Contenu', 'Nội dung'),
(855, 'select', '', 'Select', 'Sélectionner', 'Lựa chọn'),
(856, 'tags', '', 'Tags', 'Mots clés', 'Tags'),
(857, 'thumbnail', '', 'Thumbnail', 'La vignette', 'Thumbnail'),
(858, 'published', '', 'Published', 'Publié', 'Published'),
(859, 'views', '', 'Views', 'Vues', 'Xem'),
(860, 'article_updated', '', 'Your article has been successfully updated', 'Votre article a été mis à jour avec succès', 'Your article has been successfully updated'),
(861, 'article_added', '', 'Your article has been successfully added', 'Votre article a été ajouté avec succès', 'Your article has been successfully added'),
(862, 'title_more_than10', '', 'Title should be more than 10 characters', 'Le titre doit comporter plus de 10 caractères', 'Title should be more than 10 characters'),
(863, 'desc_more_than32', '', 'Description should be more than 32 characters', 'La description doit comporter plus de 32 caractères', 'Description should be more than 32 characters'),
(864, 'please_fill_tags', '', 'Please fill the tags field', 'Remplissez le champ tags', 'Please fill the tags field'),
(865, 'error_found', '', 'Error found, please try again later', 'Une erreur a été trouvée, réessayez plus tard', 'Error found, please try again later'),
(866, 'posted_on_blog', '', 'Posted {BLOG_TIME} in {CATEGORY_NAME}.', 'Posted {BLOG_TIME} in {CATEGORY_NAME}.', 'Posted {BLOG_TIME} in {CATEGORY_NAME}.'),
(867, 'created_new_blog', '', 'created new article', 'Nouvel article créé', 'created new article'),
(868, 'forum', '', 'Forum', 'Forum', 'Forum'),
(869, 'replies', '', 'Replies', 'Réponses', 'Trả lời'),
(870, 'last_post', '', 'Last Post', 'Dernier commentaire', 'Last Post'),
(871, 'topic', '', 'topic', 'sujet', 'topic'),
(872, 'thread_search', '', 'Threads search', 'Recherche de threads', 'Threads search'),
(873, 'create_new_topic', '', 'Create new topic', 'Créer un nouveau sujet', 'Create new topic'),
(874, 'jump_to', '', 'Jump to', 'Sauter à', 'Jump to'),
(875, 'my_threads', '', 'My threads', 'Mes fils', 'My threads'),
(876, 'my_messages', '', 'My Messages', 'Mes messages', 'Tin nhắn của tôi'),
(877, 'headline', '', 'Headline', 'Gros titre', 'Headline'),
(878, 'your_post', '', 'Your post', 'Votre publication', 'Your post'),
(879, 'reply', '', 'Reply', 'Répondre', 'Reply'),
(880, 'started_by', '', 'Started by', 'Commencé par', 'Started by'),
(881, 'site_admin', '', 'Site Admin', 'Administrateur du site', 'Site Admin'),
(882, 'registered', '', 'Registered', 'Inscrit', 'Registered'),
(883, 'posts', '', 'posts', 'des postes', 'bài viết'),
(884, 'reply_to_topic', '', 'Reply to this topic', 'Répondre à ce sujet', 'Reply to this topic'),
(885, 'topic_review', '', 'Topic review', 'Examen de sujet', 'Topic review'),
(886, 'your_reply', '', 'Your Reply', 'Votre réponse', 'Your Reply'),
(887, 'list_of_users', '', 'List of users', 'Liste des utilisateurs', 'List of users'),
(888, 'post_count', '', 'Posts count', 'Nombre de postes', 'Posts count'),
(889, 'referrals', '', 'Referrals', 'Renvois', 'Referrals'),
(890, 'last_visit', '', 'Last visit', 'Derniere visite', 'Last visit'),
(891, 'general_search_terms', '', 'General search terms', 'Conditions générales de recherche', 'General search terms'),
(892, 'search_for_term', '', 'Search for term', 'Rechercher un terme', 'Search for term'),
(893, 'search_in', '', 'Search in', 'Rechercher dans', 'Search in'),
(894, 'search_in_forums', '', 'Search Forums', 'Rechercher dans les forums', 'Search Forums'),
(895, 'search_in_threads', '', 'Search in threads', 'Rechercher dans les discussions', 'Search in threads'),
(896, 'search_in_messages', '', 'Search in messages', 'Rechercher dans les messages', 'Search in messages'),
(897, 'search_subject_only', '', 'Search subject only', 'Rechercher uniquement sur le sujet', 'Search subject only'),
(898, 'threads', '', 'threads', 'Fils', 'threads'),
(899, 'action', '', 'Action', 'action', 'Hoạt động'),
(900, 'posted', '', 'Posted', 'Publié', 'Posted'),
(901, 'no_forums_found', '', 'No forums found', 'Aucun forum trouvé', 'No forums found'),
(902, 'never', '', 'Never', 'Jamais', 'Never'),
(903, 'no_replies_found', '', 'No replies found', 'Aucune réponse trouvée', 'No replies found'),
(904, 'no_threads_found', '', 'No threads found', 'Aucun sujet trouvé', 'No threads found'),
(905, 'no_members_found', '', 'No members found', 'Aucun membre trouvé', 'Không tìm thấy thành viên'),
(906, 'no_sections_found', '', '', '', ''),
(907, 'wrote', '', 'wrote', 'a écrit', 'wrote'),
(908, 'edit', '', 'Edit', 'modifier', 'Chỉnh sửa'),
(909, 'edit_topic', '', 'Edit topic', 'Modifier le sujet', 'Chỉnh sửa chủ đề'),
(910, 'reply_saved', '', 'Your reply was successfully saved', 'Votre réponse a été enregistrée avec succès', 'Your reply was successfully saved'),
(911, 'reply_added', '', 'Your reply was successfully added', 'Votre réponse a été ajoutée avec succès', 'Your reply was successfully added'),
(912, 'forum_post_added', '', 'Your forum has been successfully added', 'Votre forum a été ajouté avec succès', 'Your forum has been successfully added'),
(913, 'members', '', 'Members', 'Membres', 'Thành viên'),
(914, 'help', '', 'Help', 'Aidez-moi', 'Help'),
(915, 'search_terms_more4', '', 'Type in one or more search terms, each must be at least 4 characters', 'Tapez un ou plusieurs termes de recherche, chacun doit être dau moins 4 caractères', 'Type in one or more search terms, each must be at least 4 characters'),
(916, 'events', '', 'Events', 'Événements', 'Sự kiện'),
(917, 'going', '', 'Going', 'Aller', 'Going'),
(918, 'interested', '', 'Interested', 'Intéressé', 'Interested'),
(919, 'past', '', 'Pastor', 'Passé', 'Pastor'),
(920, 'invited', '', 'invited', 'Invité', 'invited'),
(921, 'you_are_going', '', 'You are going', 'Vous allez', 'Bạn đang đi'),
(922, 'you_are_interested', '', 'You are interested', 'Tu es intéressé', 'Bạn có hứng thú'),
(923, 'start_date', '', 'Start date', 'Date de début', 'Ngày bắt đầu'),
(924, 'end_date', '', 'End date', 'Date de fin', 'Ngày kết thúc'),
(925, 'location', '', 'Location', 'Emplacement', 'Vị trí'),
(926, 'event', '', 'Event', 'un événement', 'Sự kiện'),
(927, 'no_events_found', '', 'No events found', 'Aucun événement trouvé', 'Không tìm thấy sự kiện'),
(928, 'event_you_may_like', '', 'Events you may like', 'Événements que vous aimeriez', 'Events you may like'),
(929, 'going_people', '', 'Going people', 'Aller aux gens', 'Going people'),
(930, 'interested_people', '', 'Interested people', 'Les personnes intéressées', 'Interested people'),
(931, 'invited_people', '', 'Invited people', 'Personnes invitées', 'Invited people'),
(932, 'event_added', '', 'Your event was successfully added', 'Votre événement a été ajouté avec succès', 'Your event was successfully added'),
(933, 'event_saved', '', 'Your event was successfully saved.', 'Votre événement a été enregistré', 'Your event was successfully saved.'),
(934, 'confirm_delete_event', '', 'You are sure that you want to delete this event', 'Vous êtes sûr que vous voulez supprimer cet événement', 'You are sure that you want to delete this event'),
(935, 'load_more', '', 'Load more', 'Chargez plus', 'Tải thêm'),
(936, 'subject', '', 'Subject', 'Assujettir', 'Chủ đề'),
(937, 'go', '', 'Go', 'Aller', 'Go'),
(938, 'created_new_event', '', 'created new event', 'Nouvel événement créé', 'tạo sự kiện mới'),
(939, 'my_events', '', 'My events', 'Mes événements', 'Sự kiện của tôi'),
(940, 'is_interested', '', 'is interested on your event \"{event_name}\"', 'Est intéressé par votre événement \"{event_name}\"', 'is interested on your event &quot;{event_name}&quot;'),
(941, 'is_going', '', 'is going to your event \"{event_name}\"', 'Va à votre événement \"{event_name}\"', 'is going to your event &quot;{event_name}&quot;'),
(942, 'invited_you_event', '', 'invited you to go the event \"{event_name}\"', '', 'invited you to go the event &quot;{event_name}&quot;'),
(943, 'replied_to_topic', '', 'replied to your topic', 'A répondu à votre sujet', 'replied to your topic'),
(944, 'movies', '', 'Movies', 'Films', 'Phim'),
(945, 'translate', '', 'Translate', 'Traduire', 'Dịch'),
(946, 'genre', '', 'Genre', 'Genre', 'Thể loại'),
(947, 'recommended', '', 'Recommended', 'Recommandé', 'Recommended'),
(948, 'most_watched', '', 'Most watched', 'Le plus regardé', 'Most watched'),
(949, 'stars', '', 'Stars', 'Etoiles', 'Stars'),
(950, 'more', '', 'More', 'Plus', 'Xem thêm'),
(951, 'no_movies_found', '', 'No movies found', 'Pas de films trouvés', 'Không tìm thấy phim'),
(952, 'producer', '', 'Producer', 'Producteur', 'Producer'),
(953, 'release', '', 'Release', 'Sortie', 'Release'),
(954, 'quality', '', 'Quality', 'Qualité', 'Quality'),
(955, 'more_like_this', '', 'More like this', 'Plus darticles', 'More like this'),
(956, 'wallet', '', 'Wallet', 'Portefeuille', 'Ví'),
(957, 'company', '', 'Company', 'Compagnie', 'Công ty'),
(958, 'bidding', '', 'Bidding', 'Enchère', 'Bidding'),
(959, 'clicks', '', 'Clicks', 'Clics', 'Clicks'),
(960, 'url', '', 'Url', 'Url', 'Url'),
(961, 'audience', '', 'Audience', 'Public', 'Audience'),
(962, 'select_image', '', 'Select an image', 'Sélectionnez une image', 'Chọn một hình ảnh'),
(963, 'my_balance', '', 'My balance', 'Mon solde', 'Số dư của tôi'),
(964, 'replenish_my_balance', '', 'Replenish my balance', 'Récupérer mon solde', 'Replenish my balance'),
(965, 'continue', '', 'Continue', 'Continuer', 'Tiếp tục'),
(966, 'replenishment_notif', '', 'Your balance has been replenished by', 'Votre solde a été reconstitué par', 'Your balance has been replenished by'),
(967, 'ads', '', 'Advertising', 'Publicité', 'Quảng cáo'),
(968, 'confirm_delete_ad', '', 'Are you sure you want to delete this ad', 'Êtes-vous sûr de vouloir supprimer cette annonce?', 'Are you sure you want to delete this ad'),
(969, 'delete_ad', '', 'Delete ad', 'Supprimer lannonce', 'Xóa quảng cáo'),
(970, 'no_ads_found', '', 'No ads found', 'Aucune annonce na été trouvée', 'Không tìm thấy quảng cáo'),
(971, 'not_active', '', 'Not active', 'Pas actif', 'Không hoạt động'),
(972, 'appears', '', 'Placement', 'Placement', 'Vị trí'),
(973, 'sidebar', '', 'Sidebar', 'Barre latérale', 'Thanh bên'),
(974, 'select_a_page_or_link', '', 'Select a page or enter a link to your site', 'Sélectionnez une page ou entrez un lien vers votre site', 'Chọn một trang hoặc nhập một liên kết đến trang web của bạn');
INSERT INTO `Wo_Langs_bk` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(975, 'story', '', 'Story', 'Récit', 'Câu chuyện'),
(976, 'max_number_status', '', 'The maximum number can not exceed 20 files at a time!', 'Le nombre maximal ne peut pas dépasser 20 fichiers à la fois!', 'The maximum number can not exceed 20 files at a time!'),
(977, 'status_added', '', 'Your status has been successfully added!', 'Votre statut a été ajouté avec succès!', 'Trạng thái của bạn đã được thêm thành công!'),
(978, 'create_new_status', '', 'Create New Status', 'Créer un nouvel état', 'Tạo trạng thái mới'),
(979, 'sponsored', '', 'Sponsored', 'Sponsorisé', 'Được tài trợ'),
(980, 'notification_sent', '', 'Your notification has been sent successfully', 'Votre notification a été envoyée avec succès', 'Thông báo của bạn đã được gửi thành công'),
(981, 'hide_post', '', 'Hide post', 'Masquer la publication', 'Ẩn bài viết'),
(982, 'verification_sent', '', 'Your verification request  soon will be considered!', 'Votre demande de vérification sera bientôt prise en considération!', 'Yêu cầu xác minh của bạn sẽ sớm được xem xét!'),
(983, 'profile_verification', '', 'Verification of the profile!', 'Vérification du profil!', 'Xác minh hồ sơ!'),
(984, 'verification_complete', '', 'Congratulations your profile is verified!', 'Félicitations, votre profil est vérifié!', 'Xin chúc mừng hồ sơ của bạn đã được xác minh!'),
(985, 'upload_docs', '', 'Upload documents', 'Télécharger des documents', 'Tải lên tài liệu'),
(986, 'select_verif_images', '', 'Please upload a photo with your passport / ID  & your distinct photo', 'Veuillez télécharger une photo avec votre passeport / ID & amp; Votre photo distincte', 'Please upload a photo with your passport / ID  &amp; your distinct photo'),
(987, 'passport_id', '', 'Passport / id card', 'Passeport / carte didentité', 'Passport / id card'),
(988, 'your_photo', '', 'Your photo', 'Ta photo', 'Hình ảnh của bạn'),
(989, 'please_select_passport_id', '', 'Please select your passport/id and photo!', 'Sélectionnez votre passeport / id et photo!', 'Please select your passport/id and photo!'),
(990, 'passport_id_invalid', '', 'The passport/id picture must be an image', 'Limage passeport / id doit être une image', 'The passport/id picture must be an image'),
(991, 'user_picture_invalid', '', 'The user picture must be an image', 'Limage utilisateur doit être une image', 'The user picture must be an image'),
(992, 'verification_request_sent', '', 'Your request was successfully sent, in the very near future we will consider it!', 'Votre demande a été envoyée avec succès, dans un avenir très proche, nous lexaminerons!', 'Your request was successfully sent, in the very near future we will consider it!'),
(993, 'shared', '', 'shared', 'partagé', 'shared'),
(994, 'post_shared', '', 'Post was successfully added to your timeline!', 'Le message a été ajouté avec succès à votre calendrier!', 'Post was successfully added to your timeline!'),
(995, 'important', '', 'Important!', 'Important!', 'Quan trọng!'),
(996, 'unverify', '', 'Please note that if you change the username you will lose verification', 'Veuillez noter que si vous modifiez le nom dutilisateur, vous allez perdre la vérification', 'Please note that if you change the username you will lose verification'),
(997, 'friend_privacy', '', 'Who can see my friends?', 'Qui peut voir mes amis', 'Ai có thể nhìn thấy bạn bè của tôi?'),
(998, 'added_group_admin', '', 'added you group admin', 'Ajoute ton administrateur de groupe', 'added you group admin'),
(999, 'added_page_admin', '', 'added you page admin', 'A ajouté votre page admin', 'added you page admin'),
(1000, 'no_messages', '', 'No messages yet here.', '', 'No messages yet here.'),
(1001, 'conversation_deleted', '', 'Conversation has been deleted!', 'La conversation a été supprimée!', 'Conversation has been deleted!'),
(1002, 'close', '', 'Close', 'Fermer', 'Đóng'),
(1003, 'members', '', 'Members', 'Membres', 'Thành viên'),
(1004, 'exit_group', '', 'Exit group', 'Groupe de sortie', 'Thoát nhóm'),
(1005, 'clear_history', '', 'Clear history', 'Histoire claire', 'Xóa lịch sử'),
(1006, 'group_members', '', 'Group members', 'Les membres du groupe', 'Thành viên nhóm'),
(1007, 'add_parts', '', 'Add participant', 'Ajouter un participant', 'Thêm người tham gia'),
(1008, 'unreport', '', 'Cancel Report', 'Annuler le rapport', 'Hủy báo cáo'),
(1009, 'report_user', '', 'Report this User', 'Signaler cet utilisateur', 'Báo cáo người dùng này'),
(1010, 'report_page', '', 'Report this Page', 'Signaler cette page', 'Báo cáo Trang này'),
(1011, 'report_group', '', 'Report this Group', 'Signaler ce groupe', 'Báo cáo Nhóm này'),
(1012, 'page_rated', '', 'You have already rated this page!', 'Vous avez déjà noté cette page!', 'Bạn đã xếp hạng trang này!'),
(1013, 'rating', '', 'Rating', 'Évaluation', 'Xếp hạng'),
(1014, 'reviews', '', 'Reviews', 'Avis', 'Nhận xét'),
(1015, 'rate', '', 'Rate', 'Taux', 'Tỷ lệ'),
(1016, 'your_review', '', 'Write your review.', 'Donnez votre avis.', 'Viết đánh giá của bạn'),
(1017, 'ad_saved', '', 'Your ad has been successfully saved!', 'Votre annonce a été enregistrée avec succès!', 'Quảng cáo của bạn đã được lưu thành công!'),
(1018, 'ad_added', '', 'Your ad has been successfully added!', 'Votre annonce a été ajoutée avec succès!', 'Quảng cáo của bạn đã được thêm thành công!'),
(1019, 'invalid_ad_picture', '', 'The ads picture must be an image!', '', 'The ads picture must be an image!'),
(1020, 'enter_valid_desc', '', 'Please enter a valid description!', 'Entrez une description valable!', 'Please enter a valid description!'),
(1021, 'enter_valid_titile', '', 'Please enter a valid title!', 'Entrez un titre valide!', 'Please enter a valid title!'),
(1022, 'enter_valid_url', '', 'Please enter a valid link!', 'Veuillez entrer un lien valide!', 'Please enter a valid link!'),
(1023, 'invalid_company_name', '', 'Please enter a valid company name!', '', 'Please enter a valid company name!'),
(1024, 'mother', '', 'Mother', 'Mère', 'Mother'),
(1025, 'father', '', 'Father', 'Père', 'Father'),
(1026, 'daughter', '', 'Daughter', 'Fille', 'Daughter'),
(1027, 'son', '', 'Son', 'Fils', 'Son'),
(1028, 'sister', '', 'Sister', 'Sœur', 'Sister'),
(1029, 'brother', '', 'Brother', 'Frère', 'Brother'),
(1030, 'auntie', '', 'Auntie', 'Tata', 'Auntie'),
(1031, 'uncle', '', 'Uncle', 'Oncle', 'Uncle'),
(1032, 'niece', '', 'Niece', 'Nièce', 'Niece'),
(1033, 'nephew', '', 'Nephew', 'Neveu', 'Nephew'),
(1034, 'cousin_female', '', 'Cousin (female)', 'Cousine)', 'Cousin (female)'),
(1035, 'cousin_male', '', 'Cousin (male)', 'Cousin Male)', 'Cousin (male)'),
(1036, 'grandmother', '', 'Grandmother', 'Grand-mère', 'Grandmother'),
(1037, 'grandfather', '', 'Grandfather', 'Grand-père', 'Grandfather'),
(1038, 'granddaughter', '', 'Granddaughter', 'Petite fille', 'Granddaughter'),
(1039, 'grandson', '', 'Grandson', 'Petit fils', 'Grandson'),
(1040, 'stepsister', '', 'Stepsister', 'Demi-soeur', 'Stepsister'),
(1041, 'stepbrother', '', 'Stepbrother', 'Beau-frère', 'Stepbrother'),
(1042, 'stepmother', '', 'Stepmother', 'Stepmother', 'Stepmother'),
(1043, 'stepfather', '', 'Stepfather', 'Beau-père', 'Stepfather'),
(1044, 'stepdaughter', '', 'Stepdaughter', 'Belle fille', 'Stepdaughter'),
(1045, 'sister_in_law', '', 'Sister-in-law', 'Belle-soeur', 'Sister-in-law'),
(1046, 'brother_in_law', '', 'Brother-in-law', 'Beau-frère', 'Brother-in-law'),
(1047, 'mother_in_law', '', 'Mother-in-law', 'Belle-mère', 'Mother-in-law'),
(1048, 'father_in_law', '', 'Father-in-law', 'Beau-père', 'Father-in-law'),
(1049, 'daughter_in_law', '', 'Daughter-in-law', 'Belle-fille', 'Daughter-in-law'),
(1050, 'son_in_law', '', 'Son-in-law', 'Beau fils', 'Son-in-law'),
(1051, 'sibling_gender_neutral', '', 'Sibling (gender neutral)', 'Sibling (genre neutre)', 'Sibling (gender neutral)'),
(1052, 'parent_gender_neutral', '', 'Parent (gender neutral)', 'Parent (genre neutre)', 'Parent (gender neutral)'),
(1053, 'child_gender_neutral', '', 'Child (gender neutral)', 'Enfant (genre neutre)', 'Child (gender neutral)'),
(1054, 'sibling_of_parent_gender_neutral', '', 'Sibling of Parent (gender neutral)', 'Sibling of Parent (genre neutre)', 'Sibling of Parent (gender neutral)'),
(1055, 'child_of_sibling_gender_neutral', '', 'Child of Sibling (gender neutral)', 'Enfant de fratrie (genre neutre)', 'Child of Sibling (gender neutral)'),
(1056, 'cousin_gender_neutral', '', 'Cousin (gender neutral)', 'Cousin (genre neutre)', 'Cousin (gender neutral)'),
(1057, 'grandparent_gender_neutral', '', 'Grandparent (gender neutral)', 'Grandparent (genre neutre)', 'Grandparent (gender neutral)'),
(1058, 'grandchild_gender_neutral', '', 'Grandchild (gender neutral)', 'Petit-fils (genre neutre)', 'Grandchild (gender neutral)'),
(1059, 'step_sibling_gender_neutral', '', 'Step-sibling (gender neutral)', 'Échec-frère (genre neutre)', 'Step-sibling (gender neutral)'),
(1060, 'step_parent_gender_neutral', '', 'Step-parent (gender neutral)', 'Step-parent (genre neutre)', 'Step-parent (gender neutral)'),
(1061, 'stepchild_gender_neutral', '', 'Stepchild (gender neutral)', 'Stepchild (genre neutre)', 'Stepchild (gender neutral)'),
(1062, 'sibling_in_law_gender_neutral', '', 'Sibling-in-law (gender neutral)', 'Sage-frère (genre neutre)', 'Sibling-in-law (gender neutral)'),
(1063, 'parent_in_law_gender_neutral', '', 'Parent-in-law (gender neutral)', 'Parent-en-loi (neutre pour le genre)', 'Parent-in-law (gender neutral)'),
(1064, 'child_in_law_gender_neutral', '', 'Child-in-law (gender neutral)', 'Bien-être (genre neutre)', 'Child-in-law (gender neutral)'),
(1065, 'add_to_family', '', 'Add to family', 'Ajouter à la famille', 'Thêm vào gia đình'),
(1066, 'accept', '', 'Accept', 'Acceptez', 'Chấp nhận'),
(1067, 'family_member', '', 'Family Member', 'Membre de la famille', 'Thành viên trong gia đình'),
(1068, 'family_members', '', 'Family members', 'Membres de la famille', 'Những thành viên trong gia đình'),
(1069, 'add_as', '', 'Add as', 'Ajouter comme', 'Add as'),
(1070, 'confirm_remove_family_member', '', 'Are you sure that you want to remove this member from your family?', 'Êtes-vous sûr de vouloir supprimer ce membre de votre famille?', 'Are you sure that you want to remove this member from your family?'),
(1071, 'family_member_added', '', 'New member was successfully added to your family list!', 'Un nouveau membre a été ajouté avec succès à votre liste de famille!', 'New member was successfully added to your family list!'),
(1072, 'request_sent', '', 'Your request was successfully sent!', 'Votre demande a été envoyée avec succès!', 'Your request was successfully sent!'),
(1073, 'request_accepted', '', 'Accepted your request to be your @', 'A accepté votre demande pour être votre @', 'Accepted your request to be your @'),
(1074, 'sent_u_request', '', 'Listed you as his @', '', 'Listed you as his @'),
(1075, 'requests', '', 'Requests', 'Demandes', 'Yêu cầu'),
(1076, 'no_requests_found', '', 'No requests found!', 'Aucune demande trouvée!', 'Không tìm thấy yêu cầu!'),
(1077, 'relation_with', '', 'In relations with', 'En relation avec', 'Trong mối quan hệ với'),
(1078, 'married_to', '', 'Married to', 'Marié à', 'Đã kết hôn với'),
(1079, 'engaged_to', '', 'Engaged to', 'Fiancé à', 'Đã tham gia'),
(1080, 'relationship_status', '', 'Relationship Status ', 'Statut de la relation', 'Relationship Status'),
(1081, 'relationship_request', '', 'Relationship request ', 'Demande de relation', 'Relationship request'),
(1082, 'relhip_request_accepted', '', 'Accepted your request @ ', 'A accepté votre demande @', 'Accepted your request @'),
(1083, 'relation_rejected', '', 'rejected your relation request @', 'Rejeté votre demande de relation @', 'rejected your relation request @'),
(1084, 'file_too_big', '', 'File size error: The file exceeds allowed the limit ({file_size}) and can not be uploaded.', 'Erreur de taille de fichier: le fichier dépasse autorisé la limite ({image_fichier}) et ne peut pas être téléchargé.', 'Lỗi kích thước File: File vượt quá giới hạn ({file_size}) cho phép và không thể tải lên.'),
(1085, 'file_not_supported', '', 'Unable to upload a file: This file type is not supported.', '', 'Không thể tải lên File: Loại File này không được hỗ trợ.'),
(1086, 'years_old', '', 'years old', 'ans', 'tuổi'),
(1087, 'find_friends_nearby', '', 'Find friends', 'Retrouver des amis', 'Tìm bạn xung quanh đây'),
(1088, 'location_dist', '', 'Location distance', 'Distance demplacement', 'Khoảng cách vị trí'),
(1089, 'close_to_u', '', 'close to you', 'près de vous', 'close to you'),
(1090, 'find_friends', '', 'Find friends', 'Trouver des amis', 'Tìm bạn bè'),
(1091, 'distance', '', 'distance', 'distance', 'khoảng cách'),
(1092, 'distance_from_u', '', 'distance from you', 'Distance de vous', 'khoảng cách với bạn'),
(1093, 'show_location', '', 'Show location', '', 'Hiển thị vị trí'),
(1094, 'share_my_location', '', 'Share my location with public?', 'Partagez mon emplacement avec le public?', 'Chia sẻ vị trí của tôi với công chúng?'),
(1095, 'enter_valid_title', '', 'Please enter a valid title', 'Entrez un titre valide', 'Please enter a valid title'),
(1096, 'pay_per_click', '', 'Pay Per Click (${{PRICE}})', 'Pay Per Click (${{PRICE}})', 'Pay Per Click (${{PRICE}})'),
(1097, 'pay_per_imprssion', '', 'Pay Per Impression (${{PRICE}})', 'Pay per Impression (${{PRICE}})', 'Pay Per Impression (${{PRICE}})'),
(1098, 'top_up', '', 'Top up', 'Remplir', 'Top up'),
(1099, 'balance_is_0', '', 'Your current wallet balance is: 0, please top up your wallet to continue.', 'Votre solde de portefeuille actuel est: 0, veuillez compléter votre portefeuille pour continuer.', 'Your current wallet balance is: 0, please top up your wallet to continue.'),
(1100, 'messages_delete_confirmation', '', 'Are you sure you want to delete this conversation?', 'Êtes-vous sûr de vouloir supprimer cette conversation?', 'Are you sure you want to delete this conversation?'),
(1101, 'currency', '', 'Currency', 'Devise', 'Tiền tệ'),
(1102, 'friends_stories', '', 'Friends Stories', '', 'Câu chuyện bạn bè'),
(1103, 'no_messages_here_yet', '', 'No messages yet here.', '', 'No messages yet here.'),
(1104, 'conver_deleted', '', 'Conversation has been deleted.', 'La conversation a été supprimée.', 'Conversation has been deleted.'),
(1105, 'group_name_limit', '', 'Group name must be 4/15 characters', 'Le nom du groupe doit comporter 4/15 caractères', 'Group name must be 4/15 characters'),
(1106, 'group_avatar_image', '', 'Group avatar must be an image', '', 'Group avatar must be an image'),
(1107, 'explore', '', 'Explore', 'Explorer', 'Khám phá'),
(1108, 'format_image', '', 'File Format image', 'Image au format du fichier', 'File Format image'),
(1109, 'format_video', '', 'File Format video', 'Format de fichier vidéo', 'File Format video'),
(1110, 'video', '', 'Video', 'Vidéo', 'Video'),
(1111, 'video_player', '', 'VideoPlayer', 'Lecteur vidéo', 'VideoPlayer'),
(1112, 'no_file_chosen', '', 'No file chosen', 'Aucun fichier choisi', 'No file chosen'),
(1113, 'choose_file', '', 'Choose File', 'Choisir le fichier', 'Chọn File'),
(1114, 'media', '', 'Media File', 'Fichier multimédia', 'File đa phương tiện'),
(1115, 'select_valid_img_vid', '', 'Media file is invalid. Please select a valid image or video', 'Le fichier multimédia est invalide. Veuillez sélectionner une image ou une vidéo valide', 'Media file is invalid. Please select a valid image or video'),
(1116, 'select_valid_img', '', 'Media file is invalid. Please select a valid image', 'Le fichier multimédia est invalide. Veuillez sélectionner une image valide', 'Media file is invalid. Please select a valid image'),
(1117, 'select_valid_vid', '', 'Media file is invalid. Please select a valid video', 'Le fichier multimédia est invalide. Veuillez sélectionner une vidéo valide', 'Media file is invalid. Please select a valid video'),
(1118, 'drop_img_here', '', 'Drop Image Here', 'Déposer limage ici', 'Thả hình ảnh ở đây'),
(1119, 'or', '', 'OR', 'OU', 'Hoặc'),
(1120, 'browse_to_upload', '', 'Browse To Upload', 'Parcourir pour télécharger', 'Duyệt để tải lên'),
(1121, 'pr_completion', '', 'Profile Completion', 'Achèvement du profil', 'Hoàn thành hồ sơ'),
(1122, 'ad_pr_picture', '', 'Add your profile picture', 'Ajouter votre photo de profil', 'Thêm ảnh hồ sơ của bạn'),
(1123, 'add_ur_name', '', 'Add your name', 'Ajoutez votre nom', 'Thêm tên của bạn'),
(1124, 'ad_ur_workplace', '', 'Add your workplace', 'Ajoutez votre lieu de travail', 'Thêm nơi làm việc của bạn'),
(1125, 'ad_ur_country', '', 'Add your country', 'Ajoutez votre pays', 'Thêm quốc gia của bạn'),
(1126, 'ad_ur_address', '', 'Add your address', 'Ajoutez votre adresse', 'Thêm địa chỉ của bạn'),
(1127, 'e_sent_msg', '', 'Someone Send me a message', 'Quelquun Envoyez moi un message', 'Someone Send me a message'),
(1128, 'send_money', '', 'Send money', 'Envoyer de largent', 'Gửi tiền'),
(1129, 'u_send_money', '', 'You can send money to your friends, acquaintances or anyone', 'Vous pouvez envoyer de largent à vos amis, connaissances ou nimporte qui', 'You can send money to your friends, acquaintances or anyone'),
(1130, 'available_balance', '', 'Available balance', 'Solde disponible', 'Số dư khả dụng'),
(1131, 'send_to', '', 'Send To', 'Envoyer à', 'Gửi đến'),
(1132, 'search_name_or_email', '', 'Search for user name, e-mail', 'Recherche de nom dutilisateur, e-mail', 'Search for user name, e-mail'),
(1133, 'money_sent_to', '', 'Your money was successfully sent to', 'Votre argent a été envoyé avec succès à', 'Tiền của bạn đã được gửi thành công đến'),
(1134, 'sent_you', '', 'Sent you', 'Vous a envoyé', 'Gởi bạn'),
(1135, 'amount_exceded', '', 'The amount exceded your current balance!', 'Le montant a dépassé votre solde actuel!', 'TSố tiền đã vượt quá số dư hiện tại của bạn!'),
(1136, 'custom_thumbnail', '', 'Custom Thumbnail', 'Miniature personnalisée', 'Custom Thumbnail'),
(1137, 'cntc_limit_reached', '', 'You have reached your limit of {{CNTC_LIMIT}} friends!', 'Vous avez atteint la limite de vos amis {{CNTC_LIMIT}}!', 'You have reached your limit of {{CNTC_LIMIT}} friends!'),
(1150, 'people', '', 'People', 'Gens', 'Những người'),
(1151, 'nature', '', 'Nature', 'La nature', 'Thiên nhiên'),
(1152, 'share_to', '', 'Share to', 'Partager à', 'Chia sẻ với'),
(1153, 'timeline', '', 'Timeline', 'Chronologie', 'Dòng thời gian'),
(1154, 'pinterest', '', 'Pinterest', 'Pinterest', 'Pinterest'),
(1155, 'group', '', 'Group', 'Groupe', 'Nhóm'),
(1156, 'pro_members', '', 'Pro Members', 'Membres Pro', 'Thành viên chuyên nghiệp'),
(1157, 'copyrights', '', '© {date} {site_name}', '© {date} {site_name}', '© {date} {site_name}'),
(1158, 'popular_posts', '', 'Popular Posts', 'Messages populaires', 'Bài viết phổ biến'),
(1159, 'duration', '', 'Duration', 'Durée', 'Duration'),
(1160, 'pro_feature_control_profile', '', 'Pro features give you complete control over your profile.', 'Les fonctionnalités Pro vous donnent un contrôle total sur votre profil.', 'Pro features give you complete control over your profile.'),
(1161, 'why_choose_pro', '', 'Why Choose PRO?', 'Pourquoi choisir PRO?', 'Why Choose PRO?'),
(1162, 'whatsapp', '', 'WhatsApp', 'WhatsApp', 'WhatsApp'),
(1163, 'whatsapp', '', 'WhatsApp', 'WhatsApp', 'WhatsApp'),
(1164, 'post_login_requriement_dislike', '', 'Please log in to like, dislike, share and comment!', 'Veuillez vous connecter pour aimer, ne pas aimer, partager et commenter!', 'Please log in to like, dislike, share and comment!'),
(1165, 'post_login_requriement_none', '', 'Please log in to like, share and comment!', 'Veuillez vous connecter pour aimer, partager et commenter!', 'Please log in to like, share and comment!'),
(1166, 'e_disliked_my_posts', '', 'Someone disliked my posts', '', 'Someone disliked my posts'),
(1167, 'edit_ads', '', 'Edit ads', 'Modifier les annonces', 'Edit ads'),
(1168, 'manage_ads', '', 'Manage ads', 'Gerer annonces', 'Quản lý quảng cáo'),
(1169, 'create_new_ads', '', 'Create new ad', 'Créer une nouvelle annonce', 'Tạo quảng cáo mới'),
(1170, 'create_events', '', 'Craete new event', 'Craete nouvel événement', 'Tạo sự kiện mới'),
(1171, 'edit_event', '', 'Edit event', 'Modifier l&#039;événement', 'Chỉnh sửa sự kiện'),
(1172, 'event_going', '', 'Events Going', 'Evénements', 'Events Going'),
(1173, 'event_intersted', '', 'Events Interested', 'Événements intéressés', 'Events Interested'),
(1174, 'event_invited', '', 'Invited', 'Invité', 'Invited'),
(1175, 'events_past', '', 'Past Events', 'Événements passés', 'Past Events'),
(1176, 'events_upcoming', '', 'Upcoming Events', 'évènements à venir', 'Upcoming Events'),
(1177, 'crop_your_avatar', '', 'Crop your avatar', 'Recadrez votre avatar', 'Cắt hình đại diện'),
(1178, 'cookie_message', '', 'This website uses cookies to ensure you get the best experience on our website.', 'Ce site utilise des cookies pour vous assurer la meilleure expérience sur notre site.', '\n\n\n78/5000\n\n\nTrang web này sử dụng cookie để đảm bảo bạn có được trải nghiệm tốt nhất.'),
(1179, 'cookie_dismiss', '', 'Got It!', 'Je l&#039;ai!', 'Tôi đã hiểu'),
(1180, 'cookie_link', '', 'Learn More', 'Apprendre encore plus', 'Learn More'),
(1181, 'terms_accept', '', 'Please agree to the Terms of use & Privacy Policy', 'Veuillez accepter les conditions d&#039;utilisation et la politique de confidentialité', 'Please agree to the Terms of use &amp; Privacy Policy'),
(1182, 'good_morning', '', 'Good morning', 'Bonjour', 'Chào buổi sáng'),
(1183, 'good_afternoon', '', 'Good afternoon', 'bonne après-midi', 'Chào buổi chiều'),
(1184, 'good_evening', '', 'Good evening', 'Bonsoir', 'Chào buổi tối'),
(1185, 'create_ads', '', 'Create advertisement', 'Créer une publicité', 'Tạo quảng cáo'),
(1186, 'find_friends_nearby', '', 'Find friends', 'Retrouver des amis', 'Tìm bạn bè'),
(1187, 'phonenumber_exists', '', 'phone number already exists.', 'le numéro de téléphone existe déjà.', 'số điện thoại đã tồn tại'),
(1188, 'recover_password_by_email', '', 'Recover by email', 'Récupérer par email', 'Recover by email'),
(1189, 'recover_password_by_sms', '', 'Recover by SMS', 'Récupérer par sms', 'Recover by SMS'),
(1190, 'phonenumber_not_found', '', 'The phone number is not found', 'Le numéro de téléphone est introuvable', 'The phone number is not found'),
(1191, 'phone_invalid_characters', '', 'The phone number is invalid', 'Le numéro de téléphone est invalide ou contient des caractères', 'The phone number is invalid'),
(1192, 'recoversms_sent', '', 'Recover SMS has been sent successfully', 'Récupérer des SMS a été envoyé avec succès', 'Recover SMS has been sent successfully'),
(1193, 'transaction_log', '', 'Transactions', 'Transactions', 'Giao dịch'),
(1194, 'v2latest_activities', '', 'Latest activities', 'Dernières activités', 'Hoạt động mới nhất'),
(1195, 'v2wallettopup', '', 'Wallet Topup', 'Portefeuille Topup', 'Wallet Topup'),
(1196, 'v2adsspentdaily', '', 'Ads spent daily', 'Annonces dépensées quotidiennement', 'Ads spent daily'),
(1197, 'v2prosystemtransactions', '', 'Pro system transactions', 'Transactions système pro', 'Pro system transactions'),
(1198, 'no_transactions_found', '', 'No transactions found', 'Aucune transaction trouvée', 'No transactions found'),
(1199, 'estimated_reach', '', 'Estimated reach', 'Portée estimée', 'Estimated reach'),
(1200, 'confirmation_code_is', '', 'Your confirmation code is', 'Votre code de confirmation est', 'Your confirmation code is'),
(1201, 'website_use_cookies', '', 'This website uses cookies to ensure you get the best experience on our website.', 'Ce site utilise des cookies pour vous garantir la meilleure expérience sur notre site.', 'This website uses cookies to ensure you get the best experience on our website.'),
(1202, 'got_it', '', 'Got it!', 'Je l&#039;ai!', 'Đã hiểu!'),
(1203, 'learn_more1', '', 'Learn more', 'Apprendre encore plus', 'Learn more'),
(1204, 'poke_user', '', 'Poke', 'Poussée', 'Poke'),
(1205, 'you_have_poked', '', 'You have poked', 'Vous avez fourré', 'You have poked'),
(1206, 'no_pokes_found', '', 'No pokes found', 'Aucun coup trouvé', 'No pokes found'),
(1207, 'people_who_poked_you', '', 'People who poked you', 'Les gens qui vous ont piqué', 'People who poked you'),
(1208, 'poke_back', '', 'Poke back', 'Envoyer un poke en retour', 'Poke back'),
(1209, 'txt_poked', '', 'Poked!', 'Fourré!', 'Poked!'),
(1210, 'pokes', '', 'Pokes', 'Pokes', 'Pokes'),
(1211, 'popular_posts_comments', '', 'Popular posts &amp; comments', 'Messages et commentaires populaires', 'Bài viết và bình luận phổ biến'),
(1212, 'load_more_videos', '', 'Load more videos', 'Charger plus de vidéos', 'Tải thêm video'),
(1213, 'load_more_photos', '', 'Load more photos', 'Charger plus de photos', 'Tải thêm ảnh'),
(1214, 'no_more_videos_to_show', '', 'No more videos to show', 'plus de vidéos à montrer', 'Không có thêm video để hiển thị'),
(1215, 'no_more_photos_to_show', '', 'No more photos to show', 'plus de photos à montrer', 'Không có thêm hình ảnh để hiển thị'),
(1216, 'poked_you', '', 'Poked you', 'Vous a Poké', 'Poked you'),
(1217, 'gift_added', '', 'Gift added successfully', 'Cadeau ajouter avec succès', 'Gift added successfully'),
(1218, 'error_while_add_gift', '', 'Error while adding the gift', 'Erreur lors de l&#039;ajout d&#039;un cadeau', 'Error while adding the gift'),
(1219, 'send_a_gift', '', 'Send a gift', 'Envoyer un cadeau', 'Send a gift'),
(1220, 'gift_sent_succesfully', '', 'Gift sent successfully', 'Cadeau envoyé avec succès', 'Gift sent successfully'),
(1221, 'send_gift_to_you', '', 'sent you a gift', 'Vous a envoyé un cadeau', 'sent you a gift'),
(1222, 'my_pokes', '', 'My Pokes', 'Mes coups de coude', 'Pokes của tôi'),
(1223, 'telegram', '', 'Telegram', 'Telegram', 'Telegram'),
(1224, 'no_more_posts_to_show', '', 'No more posts to show', 'Plus de messages à afficher', 'No more posts to show'),
(1225, 'keyboard_shortcut_help', '', 'Keyboard shortcut help', 'Aide sur le raccourci clavier', 'Phím tắt trợ giúp'),
(1226, 'keyboard_shortcut_j', '', 'Scroll to the next post', 'Faites défiler jusqu&#039;au prochain message', 'Di chuyển đến bài tiếp theo'),
(1227, 'keyboard_shortcut_k', '', 'Scroll to the previous post', 'Faites défiler jusqu&#039;au message précédent', 'Di chuyển đến bài viết trước'),
(1228, 'sticker_added', '', 'Sticker added successfully', 'Autocollant ajouté avec succès', 'Sticker added successfully'),
(1229, 'error_while_add_sticker', '', 'Error while adding the sticker', 'Erreur lors de l&#039;ajout de l&#039;autocollant', 'Error while adding the sticker'),
(1230, 'reacted_to_your_post', '', 'reacted to your post', 'réagi à votre message', 'đã phản ứng với bài viết của bạn'),
(1231, 'points', '', 'Points', 'Points', 'Điểm'),
(1232, 'my_points', '', 'My Points', 'Mes points', 'Điểm của tôi'),
(1233, 'my_earnings', '', 'My Earnings', 'Mes gains', 'Thu nhập của tôi'),
(1234, 'earn_text_like', '', 'Earn %d points by liking any post', 'Gagnez %d points en aimant n&#039;importe quel poste', 'Nhận được %d điểm bằng cách thích bất kỳ bài viết nào'),
(1235, 'earn_text_dislike', '', 'Earn %d points by disliking any post', 'Gagnez %d points en ne détestant aucun message', 'Nhận được %d điểm bằng cách không thích bất kỳ bài viết nào'),
(1236, 'earn_text_comment', '', 'Earn %d points by commenting any post', 'Gagnez %d points en commentant n&#039;importe quel article', 'Nhận được %d điểm bằng cách bình luận bất kỳ bài viết nào'),
(1237, 'earn_text_wonder', '', 'Earn %d points by wondering any post', 'Gagnez %d points en vous demandant n&#039;importe quel message', 'Nhận được %d điểm bằng cách bày tỏ cảm xúc với bất kỳ bài viết nào'),
(1238, 'earn_text_create_post', '', 'Earn %d points by creating a new post', 'Gagnez %d points en créant un nouveau message', 'Nhận được %d điểm bằng cách tạo một bài viết mới'),
(1239, 'earn_text_reaction', '', 'Earn %d points by reacting on any post', 'Gagnez %d points en réagissant à n&#039;importe quel poste', 'Nhận được %d điểm bằng cách tương tác với bất kỳ bài viết nào'),
(1240, 'no_reactions', '', 'No reactions yet', 'Aucune réaction encore', 'Chưa có tương tác nào'),
(1241, 'love', '', 'Love', 'Amour', 'Love'),
(1242, 'haha', '', 'HaHa', 'HaHa', 'HaHa'),
(1243, 'wow', '', 'WoW', 'Sensationnel', 'WoW'),
(1244, 'sad', '', 'Sad', 'Triste', 'Sad'),
(1245, 'angry', '', 'Angry', 'En colère', 'Angry'),
(1246, 'reacted_to_your_comment', '', 'reacted to your comment', 'réagi à ton commentaire', 'đã tương tác với bình luận của bạn'),
(1247, 'reacted_to_your_replay', '', 'reacted to your reply', 'réagi à votre réponse', 'đã tương tác với trả lời của bạn'),
(1248, 'activity_reacted_post', '', 'reacted to {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;post&lt;/a&gt;.', 'réagi à {user} &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt; poster &lt;/a&gt;.', 'đã tương tác với &lt;a class=&quot;main-color&quot; href=&quot;{post}&quot;&gt;bài viết &lt;/a&gt; của {user} .'),
(1249, 'comment_reported', '', 'Comment reported successfully.', 'Commentaire signalé avec succès.', 'nhận xét báo cáo thành công.'),
(1250, 'report_comment', '', 'Report comment', 'Rapport de commentaire', 'Báo cáo bình luận'),
(1251, 'comment_unreported', '', 'Report deleted successfully', 'Supprimer le rapport de commentaire avec succès', 'Đã xóa báo cáo thành công'),
(1252, 'suggested_pages', '', 'Suggested pages', 'Pages suggérées', 'Trang đã được đề xuất'),
(1253, 'suggested_groups', '', 'Suggested groups', 'Groupes suggérés', 'Nhóm đề xuất'),
(1254, 'unverified', '', 'Unverified', 'Non vérifié', 'Chưa xác minh'),
(1255, 'mutual_friends', '', 'Mutual Friends', 'Amis communs', 'Bạn chung'),
(1256, 'no_mutual_friends', '', 'No mutual friends found', 'Aucun ami commun trouvé', 'Không tìm thấy bạn bè chung'),
(1257, 'viewed_your_story', '', 'viewed your story', 'vu votre histoire', 'xem câu chuyện của bạn'),
(1258, 'commented_on_blog', '', 'commented on your article', 'a commenté votre article', 'bình luận về bài viết của bạn'),
(1259, 'are_you_sure_unfriend', '', 'Are you sure you want to unfriend?', 'Êtes-vous sûr de vouloir vous libérer?', 'Bạn có chắc chắn muốn hủy kết bạn?'),
(1260, 'manage_sessions', '', 'Manage Sessions', 'Gérer les sessions', 'Quản lý phiên làm việc'),
(1261, 'platform', '', 'Platform', 'Plate-forme', 'Nền tảng'),
(1262, 'browser', '', 'Browser', 'Navigateur', 'Trình duyệt'),
(1263, 'last_active', '', 'Last active', 'Dernière activité', 'Hoạt động lần cuối'),
(1264, 'notification_settings', '', 'Notification Settings', 'Paramètres de notification', 'Cài đặt thông báo'),
(1265, 'notify_me_when', '', 'Notify me when', 'Me prévenir quand', 'Thông báo cho tôi khi'),
(1266, 'username_is_banned', '', 'The username is blacklisted and not allowed, please choose another username.', 'Le nom d&#039;utilisateur est sur liste noire et n&#039;est pas autorisé, veuillez choisir un autre nom d&#039;utilisateur.', 'Tên người dùng đã bị liệt vào danh sách đen và không được phép, vui lòng chọn tên người dùng khác.'),
(1267, 'email_is_banned', '', 'The email address is blacklisted and not allowed, please choose another email.', 'L&#039;adresse e-mail est sur liste noire et n&#039;est pas autorisée, veuillez choisir un autre e-mail.', 'Địa chỉ email được liệt kê trong danh sách đen và không được phép, vui lòng chọn một email khác.'),
(1268, 'activities', '', 'Activities', 'Activités', 'Hoạt động'),
(1269, 'activity_is_following', '', 'started following {user}', 'suit {user}', 'bắt đầu theo dõi {user}'),
(1270, 'activity_is_friend', '', 'become friends with {user}', 'devenir amis avec {user}', 'trở thành bạn bè với {user}'),
(1271, 'index_my_page_privacy', '', 'Allow search engines to index my profile and posts?', 'Autoriser les moteurs de recherche à indexer mon profil et mes publications?', 'Cho phép công cụ tìm kiếm lập chỉ mục hồ sơ và bài viết của tôi?'),
(1272, 'mark_all_as_read', '', 'Mark all conversations as read', 'Marquer toutes les conversations comme lues', 'Đánh dấu tất cả các cuộc hội thoại là đã đọc'),
(1273, 'havent_finished_post', '', 'You haven&#039;t finished your post yet. Do you want to leave without finishing?', 'Vous n&#039;avez pas encore terminé votre message. Voulez-vous partir sans finir?', 'Bạn chưa hoàn thành bài viết của mình. Bạn có muốn rời đi mà không hoàn thành?'),
(1274, 'earned_points_goto', '', 'Your earned points will automatically go to', 'Vos points gagnés iront automatiquement à', 'Điểm bạn kiếm được sẽ tự động chuyển đến'),
(1275, 'night_mode', '', 'Night mode', 'Mode nuit', 'Chế độ xem Ban đêm'),
(1276, 'light_mode', '', 'Light mode', 'Mode léger', 'Chế độ xem Ban ngày'),
(1277, 'keyboard_shortcuts', '', 'Keyboard shortcuts', 'Raccourcis clavier', 'Phím tắt'),
(1278, 'comment', '', 'Comment', 'Commentaire', 'Bình luận'),
(1279, 'write_something_here', '', 'Write something here..', 'Ecrivez quelque chose ici ..', 'Viết một cái gì đó ở đây ..'),
(1280, 'view_profile', '', 'View Profile', 'Voir le profil', 'Xem hồ sơ'),
(1281, 'block', '', 'Block', 'Bloc', 'Khối'),
(1282, 'create_page', '', 'Create Page', 'Créer une page', 'Tạo Trang mới'),
(1283, 'create_group', '', 'Create Group', 'Créer un groupe', 'Tạo Nhóm mới'),
(1284, 'create_event', '', 'Create Event', 'Créer un évènement', 'Tạo Sự kiện'),
(1285, 'create_ad', '', 'Create Ad', 'Créer une publicité', 'Tạo Quảng cáo'),
(1286, 'create_blog', '', 'Create Blog', 'Créer un blog', 'Tạo Blog'),
(1287, 'good_morning_quote', '', 'Every new day is a chance to change your life.', 'Chaque nouveau jour est une chance de changer de vie.', 'Mỗi ngày mới là một cơ hội để thay đổi cuộc sống của bạn.'),
(1288, 'good_afternoon_quote', '', 'May this afternoon be light, blessed, enlightened, productive and happy.', 'Puisse cet après-midi être léger, béni, éclairé, productif et heureux.', 'Có thể chiều nay là ánh sáng, may mắn, giác ngộ, năng suất và hạnh phúc.'),
(1289, 'good_evening_quote', '', 'Evenings are life’s way of saying that you are closer to your dreams.', 'Les soirées sont la manière de la vie de dire que vous êtes plus proche de vos rêves.', 'Buổi tối là cách sống nói rằng bạn gần với giấc mơ của mình hơn.'),
(1290, 'day_mode', '', 'Day mode', 'Mode jour', 'Chế độ Ban ngày'),
(1291, 'disable_comments', '', 'Disable comments', 'Désactiver les commentaires', 'Vô hiệu hóa bình luận'),
(1292, 'enable_comments', '', 'Enable comments', 'Activer les commentaires', 'Cho phép bình luận'),
(1293, 'comments_disabled', '', 'Comments are disabled by %d', 'Les commentaires sont désactivés par %d', 'Bình luận bị vô hiệu hóa bởi %d'),
(1294, 'confirm_your_account', '', 'Confirm your account', 'Confirmez votre compte', 'Xác nhận tài khoản của bạn'),
(1295, 'sign_in_attempt', '', 'Your sign in attempt seems a little different than usual, This could be because you are signing in from a different device or a different location.', 'Votre tentative de connexion semble légèrement différente de celle habituelle. Cela peut être dû au fait que vous vous connectez depuis un autre appareil ou un autre emplacement.', 'Nỗ lực đăng nhập của bạn có vẻ hơi khác thường, có thể là do bạn đang đăng nhập từ một thiết bị khác hoặc ở một địa điểm khác.'),
(1296, 'we_have_sent_you_code', '', 'We have sent you an email with the confirmation code.', 'Nous vous avons envoyé un email avec le code de confirmation.', 'Chúng tôi đã gửi một Mã xác thực vào địa chỉ email của bạn.'),
(1297, 'two_factor', '', 'Two-factor authentication', 'Authentification à deux facteurs', 'Xác thực hai yếu tố'),
(1298, 'to_log_in_two_factor', '', 'To log in, you need to verify your identity.', 'Pour vous connecter, vous devez vérifier votre identité.', 'Để đăng nhập, bạn cần xác minh danh tính của mình.'),
(1299, 'sent_two_factor_both', '', 'We have sent you the confirmation code to your phone and to your email address.', 'Nous vous avons envoyé le code de confirmation sur votre téléphone et sur votre adresse e-mail.', 'Chúng tôi đã gửi Mã xác thực đến số điện thoại và địa chỉ email của bạn.'),
(1300, 'sent_two_factor_email', '', 'We have sent you the confirmation code to your email address.', 'Nous vous avons envoyé le code de confirmation à votre adresse e-mail.', 'Chúng tôi đã gửi  Mã xác thực đến địa chỉ email của bạn.'),
(1301, 'sent_two_factor_phone', '', 'We have sent you the confirmation code to your phone number.', 'Nous vous avons envoyé le code de confirmation sur votre numéro de téléphone.', 'Chúng tôi đã gửi Mã xác thực đến số điện thoại của bạn.'),
(1302, 'two_factor_description', '', 'Turn on 2-step login to level-up your account&#039;s security, Once turned on, you&#039;ll use both your password and a 6-digit security code sent to your phone or email to log in.', 'Activez la connexion en deux étapes pour renforcer la sécurité de votre compte. Une fois activé, vous utiliserez votre mot de passe et un code de sécurité à 6 chiffres envoyé à votre téléphone ou à un courrier électronique pour vous connecter.', 'Bật đăng nhập 2 yếu tố để tăng cấp bảo mật tài khoản của bạn, Sau khi bật, bạn sẽ sử dụng cả mật khẩu và mã bảo mật gồm 6 chữ số, chúng được gửi đến số điện thoại hoặc email của bạn.'),
(1303, 'my_campaigns', '', 'My Campaigns', 'Mes campagnes', 'Chiến dịch của tôi'),
(1304, 'my_wallet', '', 'My Wallet', 'Mon portefeuille', 'Ví của tôi'),
(1305, 'stats', '', 'Stats', 'Statistiques', 'Số liệu thống kê'),
(1306, 'choose_audience', '', 'Choose Audience', 'Choisissez l&#039;audience', 'Chọn đối tượng'),
(1307, 'launch_ad', '', 'Launch Ad', 'Annonce de lancement', 'Ra mắt quảng cáo'),
(1308, 'pay_per_clicks', '', 'Pay Per Click', 'Payer avec un clic', 'Pay Per Click'),
(1309, 'pay_per_imprssions', '', 'Pay Per Impression', 'Pay Per Impression', 'Pay Per Impression'),
(1310, 'explore_latest_articles', '', 'Explore the latest articles', 'Explorez les derniers articles', 'Khám phá những bài viết mới nhất'),
(1311, 'search_for_article', '', 'Search for articles..', 'Rechercher des articles ..', 'Search for articles..'),
(1312, 'authors', '', 'Authors', 'Auteurs', 'Authors'),
(1313, 'news_feed', '', 'News Feed', 'Fil d&#039;actualité', 'News Feed'),
(1314, 'video_call', '', 'Video call', 'Appel vidéo', 'Gọi Video'),
(1315, 'open_in_new_tab', '', 'Open in new tab', 'Ouvrir dans un nouvel onglet', 'Mở trong Tab mới'),
(1316, 'change_color', '', 'Change color', 'Changer de couleur', 'Thay đổi màu sắc'),
(1317, 'image', '', 'Image', 'Image', 'Hình ảnh'),
(1318, 'voice', '', 'Voice', 'Voix', 'Tiếng nói'),
(1319, 'gif', '', 'GIF', 'GIF', 'GIF'),
(1320, 'stickers', '', 'Stickers', 'Des autocollants', 'Stickers'),
(1321, 'stop', '', 'Stop', 'Arrêtez', 'Stop'),
(1322, 'contact_help', '', 'Let us help you solve your issue.', 'Laissez-nous vous aider à résoudre votre problème.', 'Let us help you solve your issue.'),
(1323, 'info', '', 'Info', 'Info', 'Thông tin'),
(1324, 'users_found', '', 'users found', 'utilisateurs trouvés', 'users found'),
(1325, 'users_playing', '', 'users playing', 'utilisateurs jouant', 'users playing'),
(1326, 'popular_games', '', 'Popular Games', 'Jeux populaires', 'Trò chơi phổ biến'),
(1327, 'whats_happening', '', 'What&#039;s happening', 'Que ce passe-t-il', 'Chuyện gì đang xảy ra'),
(1328, 'discount', '', 'Discount', 'Remise', 'Giảm giá'),
(1329, 'pick_your_plan', '', 'Pick your Plan', 'Choisissez votre plan', 'Chọn gói của bạn'),
(1330, 'trusted_payment_methods', '', 'Trusted payment methods', 'Modes de paiement approuvés', 'Phương thức thanh toán tin cậy'),
(1331, 'secure_payments', '', 'Secure payments', 'Paiements sécurisés', 'Thanh toán an toàn'),
(1332, 'group_settings', '', 'Group Settings', 'Paramètres de groupe', 'Cấu hình Nhóm'),
(1333, 'page_settings', '', 'Page Settings', 'Paramètres de page', 'Cấu hình Trang'),
(1334, 'user_setting', '', 'User Settings', 'Paramètres utilisateur', 'Cấu hình Người dùng'),
(1335, 'security', '', 'Security', 'Sécurité', 'Bảo mật'),
(1336, 'earnings', '', 'Earnings', 'Gains', 'Thu nhập'),
(1337, 'open_original', '', 'Open original', 'Ouvrir l&#039;original', 'Mở bản gốc'),
(1338, 'no_comments_found', '', 'No comments found', 'Aucun commentaire trouvé', 'Không tìm thấy bình luận nào'),
(1339, 'delete_conversation', '', 'Delete Conversation', 'Supprimer la conversation', 'Xóa cuộc hội thoại'),
(1340, 'images', '', 'Images', 'Images', 'Hình ảnh'),
(1341, 'topics', '', 'Topics', 'Les sujets', 'Chủ đề'),
(1342, 'search_type', '', 'Search type', 'Type de recherche', 'Loại tìm kiếm'),
(1343, 'search_section', '', 'Search section', 'Section de recherche', 'Phần tìm kiếm'),
(1344, 'watch_now', '', 'Watch Now', 'Regarde maintenant', 'Xem bây giờ'),
(1345, 'new_product', '', 'New Product', 'Nouveau produit', 'Sản phẩm mới'),
(1346, 'latest', '', 'Latest', 'Dernier', 'Muộn nhất'),
(1347, 'price_low', '', 'Price Low', 'Prix ​​bas', 'Giá thấp'),
(1348, 'price_high', '', 'Price High', 'Prix ​​haut', 'Giá cao'),
(1349, 'view', '', 'View', 'Vue', 'Xem'),
(1350, 'buy', '', 'Buy', 'Acheter', 'Mua'),
(1351, 'community', '', 'Community', 'Communauté', 'Cộng đồng'),
(1352, 'skip', '', 'Skip', 'Sauter', 'Bỏ qua'),
(1353, 'choose_image', '', 'Choose Image', 'Choisir une image', 'Chọn hình ảnh'),
(1354, 'upload_images', '', 'Upload Images', 'Importer des images', 'Hình ảnh'),
(1355, 'create_poll', '', 'Create Poll', 'Créer un sondage', 'Thăm dò'),
(1356, 'upload_video', '', 'Upload Video', 'Télécharger une video', 'Video'),
(1357, 'create_post', '', 'Create post', 'Créer un post', 'Tạo bài viết'),
(1358, 'record_voice', '', 'Record voice', 'Enregistrer la voix', 'Ghi âm'),
(1359, 'feelings', '', 'Feelings', 'Sentiments', 'Cảm xúc'),
(1360, 'sell_product', '', 'Sell product', 'Vendre un produit', 'Sản phẩm'),
(1361, 'upload_files', '', 'Upload Files', 'Télécharger des fichiers', 'Tải lên File'),
(1362, 'stories', '', 'Stories', 'Histoires', 'Trạng thái'),
(1363, 'create_story', '', 'Create new story', 'Créer une nouvelle histoire', 'Tạo trạng thái mới'),
(1364, 'no_more_views', '', 'No more views', 'Pas plus de vues', 'Không có nhiều lượt xem'),
(1365, 'whats_going', '', 'What is going on', 'Que se passe-t-il', 'Chuyện gì đang xảy ra'),
(1366, 'view_more_post', '', 'View {count} new post', 'Voir {count} new post', 'Xem {count} bài viết mới'),
(1367, 'my_info', '', 'My Information', 'Mon information', 'Thông tin của tôi'),
(1368, 'to_download', '', 'Please choose which information you would like to download', 'Veuillez choisir les informations que vous souhaitez télécharger', 'Vui lòng chọn thông tin bạn muốn tải xuống'),
(1369, 'download_file', '', 'Download', 'Télécharger', 'Tải về'),
(1370, 'file_ready', '', 'Your file is ready to download!', 'Votre fichier est prêt à être téléchargé!', 'Tập tin của bạn đã sẵn sàng để tải về!'),
(1371, 'my_information', '', 'My Information', 'Mon information', 'Thông tin của tôi'),
(1372, 'generate_file', '', 'Generate file', 'Générer un fichier', 'Tạo tập tin'),
(1373, 'edit_group', 'Edit group', 'Edit group', 'Editer le groupe', 'Chỉnh sửa nhóm'),
(1374, 'adult_image_file', 'We have detected some adult content on the image you uploaded, therefore we have declined your uploa', 'We have detected some adult content on the image you uploaded, therefore we have declined your upload process.', 'Nous avons détecté du contenu réservé aux adultes sur l&#039;image que vous avez téléchargée. Par conséquent, nous avons refusé votre processus de téléchargement.', 'Chúng tôi đã phát hiện một số nội dung người lớn trên hình ảnh bạn đã tải lên, do đó chúng tôi đã từ chối quá trình tải lên của bạn.'),
(1375, 'view_image', 'View Image', 'View Image', 'Voir l&#039;image', 'Xem hình ảnh'),
(1376, 'phone_number_error', 'Phone number should be as this format: +90..', 'Phone number should be as this format: +90..', 'Le numéro de téléphone doit être au format suivant: +90 ..', 'Số điện thoại phải ở định dạng này: +84 ..'),
(1377, 'something_wrong', 'Something went wrong, please try again later.', 'Something went wrong, please try again later.', 'Quelque chose c&#039;est mal passé. Merci d&#039;essayer plus tard.', 'Đã xảy ra lỗi, vui lòng thử lại sau.'),
(1378, 'confirmation_code', 'Confirmation code', 'Confirmation code', 'Code de confirmation', 'Mã xác thực'),
(1379, 'your_phone_verified', 'Your phone number has been successfully verified.', 'Your phone number has been successfully verified.', 'Votre numéro de téléphone a été vérifié avec succès.', 'Số điện thoại của bạn đã được xác minh thành công.'),
(1380, 'your_email_verified', 'Your E-mail has been successfully verified.', 'Your E-mail has been successfully verified.', 'Votre courriel a été vérifié avec succès.', 'Email của bạn đã được xác minh thành công.'),
(1381, 'your_phone_email_verified', 'Your phone number and E-mail have been successfully verified.', 'Your phone number and E-mail have been successfully verified.', 'Votre numéro de téléphone et votre adresse e-mail ont été vérifiés avec succès.', 'Số điện thoại và E-mail của bạn đã được xác minh thành công.'),
(1382, 'confirmation_email_sent', 'A confirmation email has been sent.', 'A confirmation email has been sent.', 'Un email de confirmation a été envoyé.', 'Một email xác nhận đã được gửi.'),
(1383, 'confirmation_message_sent', 'A confirmation message was sent.', 'A confirmation message was sent.', 'Un message de confirmation a été envoyé.', 'Một tin nhắn xác nhận đã được gửi.'),
(1384, 'confirmation_message_email_sent', 'A confirmation message and email were sent.', 'A confirmation message and email were sent.', 'Un message de confirmation et un email ont été envoyés.', 'Một tin nhắn xác nhận và email đã được gửi.'),
(1385, 'confirmation_email', 'We have sent an email that contains the confirmation code to verify your new email.', 'We have sent an email that contains the confirmation code to verify your new email.', 'Nous avons envoyé un email contenant le code de confirmation pour vérifier votre nouvel email.', 'Chúng tôi đã gửi một email chứa Mã xác thực để xác minh email mới của bạn.'),
(1386, 'confirmation_message', 'We have sent a message that contains the confirmation code to verify your new phone.', 'We have sent a message that contains the confirmation code to verify your new phone.', 'Nous avons envoyé un message contenant le code de confirmation pour vérifier votre nouveau téléphone.', 'Chúng tôi đã gửi một tin nhắn chứa Mã xác thực để xác minh số điện thoại mới của bạn.'),
(1387, 'confirmation_email_message_text', 'We have sent a message and an email that contain the confirmation code to enable two-factor authenti', 'We have sent a message and an email that contain the confirmation code to enable two-factor authentication.', 'Nous avons envoyé un message et un courrier électronique contenant le code de confirmation pour permettre une authentification à deux facteurs.', 'Chúng tôi đã gửi một tin nhắn và một email có chứa Mã xác thực để cho phép xác thực hai yếu tố.'),
(1388, 'confirmation_email_text', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.', 'We have sent an email that contains the confirmation code to enable Two-factor authentication.', 'Nous avons envoyé un courrier électronique contenant le code de confirmation pour activer l&#039;authentification à deux facteurs.', 'Chúng tôi đã gửi một email chứa mã xác nhận để kích hoạt xác thực hai yếu tố.'),
(1389, 'confirmation_message_text', 'We have sent a message that contains the confirmation code to enable Two-factor authentication.', 'We have sent a message that contains the confirmation code to enable Two-factor authentication.', 'Nous avons envoyé un message contenant le code de confirmation pour activer l&#039;authentification à deux facteurs.', 'Chúng tôi đã gửi một tin nhắn có chứa Mã xác thực để kích hoạt xác thực hai yếu tố.'),
(1390, 'share_post_on_group', 'Share post on a group', 'Share post on a group', 'Partager un post sur un groupe', 'Chia sẻ bài viết trên một nhóm'),
(1391, 'please_group_name', 'Please write the group name', 'Please write the group name', 'S&#039;il vous plaît écrivez le nom du groupe', 'Vui lòng viết tên nhóm'),
(1392, 'share_post_on_page', 'Share to a page', 'Share to a page', 'Partager sur une page', 'Chia sẻ với một trang'),
(1393, 'please_page_name', 'Please type the page name', 'Please type the page name', 'Veuillez taper le nom de la page', 'Vui lòng nhập tên trang'),
(1394, 'share_post_on_user', 'Share to user', 'Share to user', 'Partager avec l&#039;utilisateur', 'Chia sẻ với người dùng'),
(1395, 'post_shared_successfully', 'Post has been successfully shared.', 'Post has been successfully shared.', 'La publication a été partagée avec succès.', 'Bài viết đã được chia sẻ thành công.'),
(1396, 'to', 'To', 'To', 'À', 'Đến'),
(1397, 'share_new_post', 'Share the post on', 'Share the post on', 'Partager le post sur', 'Chia sẻ bài viết trên'),
(1398, 'shared_a_post', 'shared a', 'shared a', 'partagé un', 'đã chia sẻ một'),
(1399, 'shared_your_post', 'shared your post', 'shared your post', 'partagé votre post', 'đã chia sẻ bài viết của bạn'),
(1400, 'shared_a_post_in_timeline', 'shared a post to your timeline', 'shared a post to your timeline', 'partagé un post sur votre timeline', 'đã chia sẻ bài viết lên dòng thời gian của bạn'),
(1401, 'no_shared', 'No shares yet', 'No shares yet', 'Pas encore d&#039;actions', 'Chưa có chia sẻ nào'),
(1402, 'member', 'Member', 'Member', 'Membre', 'Thành viên'),
(1403, 'pro_con', 'Congratulations ! You&#039;re now a', 'Congratulations ! You&#039;re now a', 'Toutes nos félicitations ! Vous êtes maintenant un', 'Xin chúc mừng ! Bây giờ bạn là một'),
(1404, 'other', 'Other', 'Other', 'Other', 'Khác'),
(1405, 'all_', 'All', 'All', 'Tout', 'Tất cả'),
(1406, 'users_liked_post', 'People liked this post', 'People liked this post', 'Les gens ont aimé ce post', 'People liked this post'),
(1407, 'users_wondered_post', 'People wondered this post', 'People wondered this post', 'Les gens se demandaient ce post', 'People wondered this post'),
(1408, 'users_shared_post', 'People shared this post', 'People shared this post', 'Les gens ont partagé ce post', 'People shared this post'),
(1409, 'users_reacted_post', 'People reacted to this post', 'People reacted to this post', 'Les gens ont réagi à ce post', 'People reacted to this post'),
(1410, 'users_wondered_comment', 'People wondered this comment', 'People wondered this comment', 'Les gens se demandaient ce commentaire', 'People wondered this comment'),
(1411, 'users_liked_comment', 'People liked this comment', 'People liked this comment', 'Les gens ont aimé ce commentaire', 'People liked this comment'),
(1412, 'reCaptcha_error', 'Please check the re-captcha.', 'Please check the re-captcha.', 'S&#039;il vous plaît vérifier le re-captcha.', 'Hãy kiểm tra mã re-captcha.'),
(1413, 'my', 'My', 'My', 'ma', 'My');
INSERT INTO `Wo_Langs_bk` (`id`, `lang_key`, `type`, `english`, `france`, `vietnamese`) VALUES
(1414, 'bank_transfer', 'Bank transfer', 'Bank transfer', 'virement', 'Bank transfer'),
(1415, 'bank_transfer_request', 'Your request has been successfully sent, we will notify you once it&#039;s approved', 'Your request has been successfully sent, we will notify you once it&#039;s approved', 'Votre demande a été envoyée avec succès, nous vous en informerons une fois approuvée', 'Your request has been successfully sent, we will notify you once its approved'),
(1416, 'bank_pro', 'Your bank receipt has been approved!', 'Your bank receipt has been approved!', 'Votre facture bancaire a été approuvée!', 'Your bank receipt has been approved!'),
(1417, 'bank_decline', 'Your bank receipt has been declined!', 'Your bank receipt has been declined!', 'Votre facture bancaire a été refusée!', 'Your bank receipt has been declined!'),
(1418, 'my_timeline', 'My Timeline', 'My Timeline', 'Ma chronologie', 'Dòng thời gian của tôi'),
(1419, '1419', 'category', 'Tourist destination', 'Tourist destination', 'Địa điểm du lịch'),
(1420, '1420', 'category', 'Tourist destination', 'Tourist destination', 'Địa điểm du lịch'),
(1421, '1421', 'category', 'Tourist destination', 'Tourist destination', 'Địa điểm du lịch'),
(1422, '1422', 'category', 'Hotel &amp; Resort', 'Hotel &amp; Resort', 'Nơi ở, Khách sạn, Resort'),
(1423, '1423', 'category', 'Hotel &amp; Resort', 'Hotel &amp; Resort', 'Nơi ở, Khách sạn, Resort'),
(1424, '1424', 'category', 'Hotel &amp; Resort', 'Hotel &amp; Resort', 'Nơi ở, Khách sạn, Resort'),
(1425, '1425', 'category', 'Food, Coffee', 'Food, Coffee', 'Ẩm thực &amp; Ăn uống'),
(1426, '1426', 'category', 'Food, Coffee', 'Food, Coffee', 'Ẩm thực &amp; Ăn uống'),
(1427, '1427', 'category', 'Food, Coffee', 'Food, Coffee', 'Ẩm thực &amp; Ăn uống'),
(1428, '1428', 'category', 'Education', 'Éducation', 'Giáo dục &amp; Đào tạo'),
(1429, '1429', 'category', 'Education', 'Éducation', 'Giáo dục &amp; Đào tạo'),
(1430, '1430', 'category', 'Education', 'Éducation', 'Giáo dục &amp; Đào tạo'),
(1431, '1431', 'category', 'Entertainment', 'Divertissement', 'Giải trí'),
(1432, '1432', 'category', 'Entertainment', 'Divertissement', 'Giải trí'),
(1433, '1433', 'category', 'Entertainment', 'Divertissement', 'Giải trí'),
(1434, '1434', 'category', 'Movies &amp; Animation', 'Films &amp; Animations', 'Phim ảnh, biểu diễn nghệ thuật'),
(1435, '1435', 'category', 'Movies &amp; Animation', 'Films &amp; Animations', 'Phim ảnh, biểu diễn nghệ thuật'),
(1436, '1436', 'category', 'Movies &amp; Animation', 'Films &amp; Animations', 'Phim ảnh, biểu diễn nghệ thuật'),
(1437, '1437', 'category', 'Gaming Zone', 'Jeux', 'Khu trò chơi, giải trí'),
(1438, '1438', 'category', 'Gaming Zone', 'Jeux', 'Khu trò chơi, giải trí'),
(1439, '1439', 'category', 'Gaming Zone', 'Jeux', 'Khu trò chơi, giải trí'),
(1440, '1440', 'category', 'History and Facts', 'Histoire et faits', 'Chứng tích lịch sử'),
(1441, '1441', 'category', 'History and Facts', 'Histoire et faits', 'Chứng tích lịch sử'),
(1442, '1442', 'category', 'History and Facts', 'Histoire et faits', 'Chứng tích lịch sử'),
(1443, '1443', 'category', 'Nightlife', 'Nightlife', 'Giải trí về đêm'),
(1444, '1444', 'category', 'Nightlife', 'Nightlife', 'Giải trí về đêm'),
(1445, '1445', 'category', 'Nightlife', 'Nightlife', 'Giải trí về đêm'),
(1446, '1446', 'category', 'Natural', 'Naturel', 'Thắng cảnh tự nhiên'),
(1447, '1447', 'category', 'Natural', 'Naturel', 'Thắng cảnh tự nhiên'),
(1448, '1448', 'category', 'Natural', 'Naturel', 'Thắng cảnh tự nhiên'),
(1449, '1449', 'category', 'Travel Support Center', 'Travel Support Center', 'Trung tâm hỗ trợ du lịch'),
(1450, '1450', 'category', 'Travel Support Center', 'Travel Support Center', 'Trung tâm hỗ trợ du lịch'),
(1451, '1451', 'category', 'Travel Support Center', 'Travel Support Center', 'Trung tâm hỗ trợ du lịch'),
(1452, '1452', 'category', 'Bank &amp; ATM', 'Bank &amp; ATM', 'ATM, Ngân hàng'),
(1453, '1453', 'category', 'Bank &amp; ATM', 'Bank &amp; ATM', 'ATM, Ngân hàng'),
(1454, '1454', 'category', 'Bank &amp; ATM', 'Bank &amp; ATM', 'ATM, Ngân hàng'),
(1455, '1455', 'category', 'Hospital', 'Hospital', 'Chăm sóc sức khỏe, Bệnh viện'),
(1456, '1456', 'category', 'Hospital', 'Hospital', 'Chăm sóc sức khỏe, Bệnh viện'),
(1457, '1457', 'category', 'Hospital', 'Hospital', 'Chăm sóc sức khỏe, Bệnh viện'),
(1458, '1458', 'category', 'Event', 'Event', 'Sự kiện'),
(1459, '1459', 'category', 'Event', 'Event', 'Sự kiện'),
(1460, '1460', 'category', 'Event', 'Event', 'Sự kiện'),
(1461, '1461', 'category', 'Science and Technology', 'Science et technologie', 'Khoa hoc và Kỹ thuật'),
(1462, '1462', 'category', 'Science and Technology', 'Science et technologie', 'Khoa hoc và Kỹ thuật'),
(1463, '1463', 'category', 'Science and Technology', 'Science et technologie', 'Khoa hoc và Kỹ thuật'),
(1464, '1464', 'category', 'Sport', 'Sport', 'Khu thể thao'),
(1465, '1465', 'category', 'Sport', 'Sport', 'Khu thể thao'),
(1466, '1466', 'category', 'Sport', 'Sport', 'Khu thể thao'),
(1467, '1467', 'category', 'Tour', 'Tour', 'Tour Du lịch'),
(1468, '1468', 'category', 'Tour', 'Tour', 'Tour Du lịch'),
(1469, '1469', 'category', 'Tour', 'Tour', 'Tour Du lịch'),
(1470, '1470', 'category', 'Apparel & Accessories', 'Apparel & Accessories', 'Apparel &amp; Accessories'),
(1471, '1471', 'category', 'Autos & Vehicles', 'Autos & Vehicles', 'Autos &amp; Vehicles'),
(1472, '1472', 'category', 'Baby & Children\'s Products', 'Baby & Children&#39;s Products', 'Baby &amp; Children&#039;s Products'),
(1473, '1473', 'category', 'Beauty Products & Services', 'Beauty Products & Services', 'Beauty Products &amp; Services'),
(1474, '1474', 'category', 'Computers & Peripherals', 'Computers & Peripherals', 'Computers &amp; Peripherals'),
(1475, '1475', 'category', 'Consumer Electronics', 'Consumer Electronics', 'Consumer Electronics'),
(1476, '1476', 'category', 'Dating Services', 'Dating Services', 'Dating Services'),
(1477, '1477', 'category', 'Financial Services', 'Financial Services', 'Financial Services'),
(1478, '1478', 'category', 'Gifts & Occasions', 'Gifts & Occasions', 'Gifts &amp; Occasions'),
(1479, '1479', 'category', 'Home & Garden', 'Home & Garden', 'Home &amp; Garden'),
(1480, 'sort_by', 'Sort by', 'Sort by', 'Trier par', 'Sort by'),
(1481, 'top', 'Top', 'Top', 'Haut', 'Top'),
(1482, 'comment_on_post', 'Comment on post', 'Comment on post', 'Commentaire sur le post', 'Comment on post'),
(1483, 'email_provider_banned', 'The email provider is blacklisted and not allowed, please choose another email provider.', 'The email provider is blacklisted and not allowed, please choose another email provider.', 'Le fournisseur de messagerie est sur la liste noire et n&#039;est pas autorisé. Veuillez choisir un autre fournisseur de messagerie.', 'The email provider is blacklisted and not allowed, please choose another email provider.'),
(1484, 'sent_product_to_you', 'Sent product to you', 'Sent product to you', 'Produit envoyé à vous', 'Sent product to you'),
(1485, 'color', 'Color', 'Color', 'Couleur', 'Color'),
(1486, '2checkout', '2Checkout', '2Checkout', '2Checkout', '2Checkout'),
(1487, 'card_number', 'Card Number', 'Card Number', 'Numéro de carte', 'Card Number'),
(1488, 'address', 'Address', 'Address', 'Adresse', 'Địa chỉ'),
(1489, 'city', 'City', 'City', 'Ville', 'Thành phố'),
(1490, 'state', 'State', 'State', 'Etat', 'State'),
(1491, 'zip', 'Zip Code', 'Zip Code', 'Code postal', 'Zip Code'),
(1492, 'pay', 'Pay Now', 'Pay Now', 'Payez maintenant', 'Pay Now'),
(1493, '2checkout_declined', 'Your payment was declined, please contact your bank or card issuer and make sure you have the requir', 'Your payment was declined, please contact your bank or card issuer and make sure you have the required funds.', 'Votre paiement a été refusé, veuillez contacter votre banque ou votre émetteur de carte et assurez-vous de disposer des fonds nécessaires.', 'Your payment was declined, please contact your bank or card issuer and make sure you have the required funds.'),
(1494, 'expire_date', 'Expire Date', 'Expire Date', 'Date d&#039;expiration', 'Hạn sử dụng'),
(1495, 'no_interested_people', 'There are no interested users.', 'There are no interested users.', 'Il n&#039;y a pas d&#039;utilisateurs intéressés.', 'Không có người dùng quan tâm.'),
(1496, 'less', 'less', 'Less', 'Less', 'Ít hơn'),
(1497, 'completed', 'Completed', 'Completed', 'Terminé', 'Đã hoàn thành'),
(1498, 'studied_at', 'Studied at', 'Studied at', 'Étudié à', 'Đã học tại'),
(1499, 'cant_share_own', 'You can&#039;t share a post on a page or a group that is your not own.', 'You can&#039;t share a post on a page or a group that is your not own.', 'Vous ne pouvez pas partager un message sur une page ou un groupe qui n&#039;est pas le vôtre.', 'Bạn không thể chia sẻ một bài đăng trên một trang hoặc một nhóm không phải của bạn.'),
(1500, 'accept_group_chat_request', 'Accepted your group chat invitation.', 'Accepted your group chat invitation.', 'Accepté votre invitation à la discussion de groupe.', 'Chấp nhận lời mời trò chuyện nhóm của bạn.'),
(1501, 'jobs', 'Jobs', 'Jobs', 'Emplois', 'Việc làm'),
(1502, 'post_job_text', 'Post a job for {{page_name}} to reach the right applicants on', 'Post a job for {{page_name}} to reach the right applicants on', 'Déposez une offre pour {{nom_page}} afin d&#039;atteindre les bons candidats le', 'Post a job for {{page_name}} to reach the right applicants on'),
(1503, 'create_job', 'Create Job', 'Create Job', 'Créer un emploi', 'Tạo việc làm'),
(1504, 'job_title', 'Job Title', 'Job Title', 'Profession', 'Chức danh công việc'),
(1505, 'salary_range', 'Salary Range', 'Salary Range', 'Échelle salariale', 'Mức lương'),
(1506, 'minimum', 'Minimum', 'Minimum', 'Le minimum', 'Tối thiểu'),
(1507, 'maximum', 'Maximum', 'Maximum', 'Maximum', 'Tối đa'),
(1508, 'per_hour', 'Per Hour', 'Per Hour', 'Par heure', 'Per Hour'),
(1509, 'per_day', 'Per Day', 'Per Day', 'Par jour', 'Per Day'),
(1510, 'per_week', 'Per Week', 'Per Week', 'Par semaine', 'Trong tuần'),
(1511, 'per_month', 'Per Month', 'Per Month', 'Par mois', 'Trong tháng'),
(1512, 'per_year', 'Per Year', 'Per Year', 'Par an', 'Trong năm'),
(1513, 'job_type', 'Job Type', 'Job Type', 'Type d&#039;emploi', 'Job Type'),
(1514, 'full_time', 'Full Time', 'Full Time', 'À plein temps', 'Full Time'),
(1515, 'part_time', 'Part Time', 'Part Time', 'À temps partiel', 'Part Time'),
(1516, 'internship', 'Internship', 'Internship', 'Stage', 'Internship'),
(1517, 'volunteer', 'Volunteer', 'Volunteer', 'Bénévole', 'Volunteer'),
(1518, 'contract', 'Contract', 'Contract', 'Contrat', 'Contract'),
(1519, 'job_des_text', 'Describe the responsibilities and preferred skills for this job', 'Describe the responsibilities and preferred skills for this job', 'Décrivez les responsabilités et les compétences préférées pour cet emploi.', 'Describe the responsibilities and preferred skills for this job'),
(1520, 'job_add_iamge', 'Add an image to help applicants see what it&#039;s like to work at this location.', 'Add an image to help applicants see what it&#039;s like to work at this location.', 'Ajoutez une image pour aider les candidats à voir à quoi ça ressemble de travailler à cet endroit.', 'Add an image to help applicants see what its like to work at this location.'),
(1521, 'use_cover_photo', 'Use Cover Photo', 'Use Cover Photo', 'Utiliser la photo de couverture', 'Use Cover Photo'),
(1522, 'questions', 'Questions', 'Questions', 'Des questions', 'Questions'),
(1523, 'free_text_question', 'Free Text Question', 'Free Text Question', 'Question de texte libre', 'Free Text Question'),
(1524, 'yes_no_question', 'Yes/No Question', 'Yes/No Question', 'Question oui / non', 'Yes/No Question'),
(1525, 'multiple_choice_question', 'Multiple Choice Question', 'Multiple Choice Question', 'Question à choix multiples', 'Multiple Choice Question'),
(1526, 'add_question', 'Add Question', 'Add Question', 'Ajouter une question', 'Add Question'),
(1527, 'add_an_answers', 'Add answers', 'Add answers', 'Ajouter des réponses', 'Add answers'),
(1528, 'question_one', 'Question One', 'Question One', 'Question une', 'Question One'),
(1529, 'question_two', 'Question Two', 'Question Two', 'Deuxième question', 'Question Two'),
(1530, 'question_three', 'Question Three', 'Question Three', 'Troisième question', 'Question Three'),
(1531, 'edit_job', 'Edit Job', 'Edit Job', 'Modifier le travail', 'Edit Job'),
(1532, 'delete_job', 'Delete Job', 'Delete Job', 'Supprimer le travail', 'Delete Job'),
(1533, 'apply_now', 'Apply Now', 'Apply Now', 'Appliquer maintenant', 'Apply Now'),
(1534, 'experience', 'Experience', 'Experience', 'Expérience', 'Experience'),
(1535, 'add_experience', 'Add Experience', 'Add Experience', 'Ajouter une expérience', 'Add Experience'),
(1536, 'position', 'Position', 'Position', 'Position', 'Chức vụ'),
(1537, 'where_did_you_work', 'Where did you work?', 'Where did you work?', 'Où avez-vous travaillé?', 'Where did you work?'),
(1538, 'i_currently_work', 'I currently work here', 'I currently work here', 'Je travaille actuellement ici', 'I currently work here'),
(1539, 'please_answer_questions', 'Please answer the questions', 'Please answer the questions', 'S&#039;il vous plaît répondre aux questions', 'Please answer the questions'),
(1540, 'you_apply_this_job', 'You have already applied for this job.', 'You have already applied for this job.', 'Vous avez déjà postulé pour ce travail.', 'You have already applied for this job.'),
(1541, 'search_for_jobs', 'Search for jobs', 'Search for jobs', 'Chercher du travail', 'Search for jobs'),
(1542, 'no_available_jobs', 'No available jobs to show.', 'No available jobs to show.', 'Aucun emploi disponible à afficher.', 'No available jobs to show.'),
(1543, 'load_more_jobs', 'Load more jobs', 'Load more jobs', 'Charger plus de jobs', 'Load more jobs'),
(1544, 'show_apply', 'Show Applies', 'Show Applies', 'Afficher appliquer', 'Show Applies'),
(1545, 'common_things', 'Common Things', 'Common Things', 'Choses communes', 'Những điều phổ biến'),
(1546, 'thing_in_common', 'Thing in common', 'Thing in common', 'Chose en commun', 'Điểm chung'),
(1547, 'things_in_common', 'Things in common', 'Things in common', 'Choses en commun', 'Điểm chung'),
(1548, 'weather_unit', 'Weather Unit', 'Weather Unit', 'Unité météorologique', 'Đơn vị thời tiết'),
(1549, 'job_applied', 'Already applied', 'Already applied', 'Déjà appliqué', 'Already applied'),
(1550, 'apply_your_job', 'applied to your job request.', 'applied to your job request.', 'appliqué à votre demande d&#039;emploi.', 'applied to your job request.'),
(1551, 'apply_job_successfully', 'You have successfully applied to this job.', 'You have successfully applied to this job.', 'Vous avez postulé avec succès à ce travail.', 'You have successfully applied to this job.'),
(1552, 'job_successfully_created', 'Job request successfully created.', 'Job request successfully created.', 'Demande de travail créée avec succès.', 'Job request successfully created.'),
(1553, 'job_successfully_edited', 'Job request successfully updated.', 'Job request successfully updated.', 'Demande de travail mise à jour avec succès.', 'Job request successfully updated.'),
(1554, 'invited_to_group', 'invited you to join the group chat.', 'invited you to join the group chat.', 'vous invite à rejoindre le chat en groupe.', 'mời bạn tham gia trò chuyện nhóm.'),
(1555, 'declined_group_chat_request', 'declined your group chat invitation.', 'declined your group chat invitation.', 'a refusé votre invitation à la discussion de groupe.', 'từ chối lời mời trò chuyện nhóm của bạn.'),
(1556, 'offer_job', 'Offer a job', 'Offer a job', 'Offrir un emploi', 'Offer a job'),
(1557, 'posted_job_offer', 'posted a job offer', 'posted a job offer', 'posté une offre d&#039;emploi.', 'posted a job offer'),
(1558, 'verified_page', 'Verified Page', 'Verified Page', 'Page vérifiée', 'Trang đã xác minh'),
(1559, 'unfriend', 'Unfriend', 'Unfriend', 'Désamie', 'Hủy kết bạn'),
(1560, 'funding', 'Fundings', 'Fundings', 'Des financements', 'Tài trợ'),
(1561, 'my_funding', 'My Funding Requests', 'My Funding Requests', 'Mes demandes de financement', 'Yêu cầu tài trợ của tôi'),
(1562, 'create_new_funding', 'Create new funding request', 'Create new funding request', 'Créer une nouvelle demande de financement', 'Create new funding request'),
(1563, 'funding_created', 'Funding request has been successfully created.', 'Funding request has been successfully created.', 'La demande de financement a été créée avec succès.', 'Funding request has been successfully created.'),
(1564, 'no_funding_found', 'No funding found', 'No funding found', 'Aucun financement trouvé', 'No funding found'),
(1565, 'delete_fund', 'Delete', 'Delete', 'Effacer', 'Delete'),
(1566, 'confirm_delete_fund', 'Are you sure that you want to delete this funding request?', 'Are you sure that you want to delete this funding request?', 'Êtes-vous sûr de vouloir supprimer cette demande de financement?', 'Are you sure that you want to delete this funding request?'),
(1567, 'funding_edited', 'Funding request has been successfully updated.', 'Funding request has been successfully updated.', 'La demande de financement a été mise à jour avec succès.', 'Funding request has been successfully updated.'),
(1568, 'most_recent_funding', 'Most recent funding', 'Most recent funding', 'Financement le plus récent', 'Most recent funding'),
(1569, 'raised_of', 'Raised of', 'Raised of', 'Élevé de', 'Raised of'),
(1570, 'donate', 'Donate', 'Donate', 'Faire un don', 'Donate'),
(1571, 'donated_to', 'donated to your funding request.', 'donated to your funding request.', 'fait un don à votre demande de financement.', 'donated to your funding request.'),
(1572, 'total_donations', 'Total donations', 'Total donations', 'Total des dons', 'Total donations'),
(1573, 'recent_donations', 'Recent donations', 'Recent donations', 'Dons récents', 'Recent donations'),
(1574, 'instagram', 'Instagram', 'Instagram', 'Instagram', 'Instagram'),
(1575, 'created_donation_request', 'created a donation request', 'created a donation request', 'créé une demande de don', 'created a donation request'),
(1576, 'people_with_common', 'Meet people with things in common', 'Meet people with things in common', 'Rencontrer des gens avec des choses en commun', 'Meet people with things in common'),
(1577, 'donated_to_request', 'donated to a funding request', 'donated to a funding request', 'donné à une demande de financement', 'donated to a funding request'),
(1578, 'you_cant_pay', 'You can`t donate more than {{money}}', 'You can`t donate more than {{money}}', 'Vous ne pouvez pas payer plus que {{money}}', 'You can`t donate more than {{money}}'),
(1579, 'confirm_delete_job', 'Are you sure that you want to delete this job?', 'Are you sure that you want to delete this job?', 'Êtes-vous sûr de vouloir supprimer ce travail?', 'Are you sure that you want to delete this job?'),
(1580, '1580', 'category', 'Accounting &amp; Finance', '', 'Kế toán &amp; Tài chính'),
(1581, '1581', 'category', 'Admin &amp; Office', '', 'Quản trị &amp; Văn phòng'),
(1582, '1582', 'category', 'Art &amp; Design', '', 'Thiết kế mỹ thuật'),
(1583, '1583', 'category', 'Business Operations', '', 'Hoạt động kinh doanh'),
(1584, '1584', 'category', 'Cleaning & Facilities', '', 'Cleaning &amp; Facilities'),
(1585, '1585', 'category', 'Community & Social Services', '', 'Community &amp; Social Services'),
(1586, '1586', 'category', 'Computer & Data', '', 'Computer &amp; Data'),
(1587, '1587', 'category', 'Construction & Mining', '', 'Construction &amp; Mining'),
(1588, '1588', 'category', 'Education', '', 'Education'),
(1589, '1589', 'category', 'Farming & Forestry', '', 'Farming &amp; Forestry'),
(1590, '1590', 'category', 'Healthcare', '', 'Healthcare'),
(1591, '1591', 'category', 'Installation, Maintenance & Repair', '', 'Installation, Maintenance &amp; Repair'),
(1592, '1592', 'category', 'Legal', '', 'Legal'),
(1593, '1593', 'category', 'Management', '', 'Management'),
(1594, '1594', 'category', 'Manufacturing', '', 'Manufacturing'),
(1595, '1595', 'category', 'Media & Communication', '', 'Media &amp; Communication'),
(1596, '1596', 'category', 'Personal Care', '', 'Personal Care'),
(1597, '1597', 'category', 'Protective Services', '', 'Protective Services'),
(1598, '1598', 'category', 'Restaurant & Hospitality', '', 'Restaurant &amp; Hospitality'),
(1599, '1599', 'category', 'Retail & Sales', '', 'Retail &amp; Sales'),
(1600, '1600', 'category', 'Science & Engineering', '', 'Science &amp; Engineering'),
(1601, '1601', 'category', 'Sports & Entertainment', '', 'Sports &amp; Entertainment'),
(1602, '1602', 'category', 'Transportation', '', 'Transportation'),
(1603, 'no_lists_found', '', 'No lists found', '', 'Không có danh sách nào'),
(1604, 'create_new_list', '', 'Create new list', '', 'Thêm mới danh sách'),
(1605, 'list_name', '', 'List name', '', 'Tên danh sách'),
(1606, 'your_list_title', '', 'Your list title', '', 'Tiêu đề'),
(1607, 'placeholder_list_name', '', '', '', ''),
(1608, 'list_description', '', 'List description', '', 'Mô tả'),
(1609, 'list_description_info', '', 'list description info', '', ''),
(1610, 'my_lists', '', 'My lists', '', 'Danh sách của tôi'),
(1611, 'my  trip', '', '', '', ''),
(1612, 'my_trip', '', 'My Trip', 'My Trip', 'Chuyến đi của tôi'),
(1613, 'trip', '', 'Trip', 'Trip', 'Chuyến đi (chuyến du lịch)'),
(1614, 'number_page_list', '', 'Have __PAGE_NUMBER__ page', '', 'Có __PAGE_NUMBER__ trang'),
(1615, 'number_pages_list', '', 'Have __PAGE_NUMBER__ pages', '', 'Có __PAGE_NUMBER__ trang'),
(1616, 'number_group_list', '', 'Have __GROUP_NUMBER__ group', '', 'Có __GROUP_NUMBER__ nhóm'),
(1617, 'number_groups_list', '', 'Have __GROUP_NUMBER__ groups', '', 'Có __GROUP_NUMBER__ nhóm'),
(1618, 'delete_list', '', 'Delete list', '', 'Xóa danh sách'),
(1619, 'confirm_delete_list', '', 'Are you sure that you want to delete this list?', '', 'Bạn có chắc chắn muốn xóa danh sách này?'),
(1620, 'latitude', '', 'Latitude', '', 'Vĩ độ'),
(1621, 'longitude', '', 'Longitude', '', 'Kinh độ'),
(1622, 'placeholder_find_place', '', 'Find place...', '', 'Tìm kiếm địa điểm...'),
(1623, 'not_found_address', '', 'Not found address', '', 'Không tìm thấy địa chỉ'),
(1624, 'check_in', '', 'Check In', 'Check In', 'Check In'),
(1625, 'check_ins', '', 'Check In', '', 'Check In'),
(1626, 'no_check_ins_found', '', 'No check in found', '', 'Không có check in nào'),
(1627, 'my_check_ins', '', 'My Check In', '', 'Check In của tôi'),
(1628, 'no_description', '', 'No description', '', 'Không có mô tả'),
(1629, 'unknown', '', 'Unknown', '', 'Chưa xác định'),
(1630, 'no_address', '', 'No address', '', 'Không có địa chỉ'),
(1631, 'approve', '', 'Approve', '', 'Duyệt'),
(1632, 'reject', '', 'Reject', '', 'Từ chối'),
(1633, 'search_input_keyword_placeholder', '', 'What are you looking for?', 'Que cherchez-vous?', 'Bạn đang tìm kiếm cái gì?'),
(1634, 'search_distance_radius', '', 'Distance Radius', 'Rayon de distance', 'Bán kính'),
(1635, 'search_categories', '', 'Categories', 'Les catégories', 'Danh mục'),
(1636, 'apply', '', 'Apply', 'Appliquer', 'Đồng ý'),
(1637, 'more_filters', '', 'More filters', 'Plus de filtres', 'Thêm điều kiện lọc'),
(1638, 'search_text_distance_radius', '', 'Radius around selected destination', 'Rayon autour de la destination sélectionnée', 'Bán kính xung quanh điểm đã chọn'),
(1639, 'search_text_result_number', '', 'There are all __NUMBER__ results', 'Il y a __NUMBER__ résultats.', 'Có tất cả __NUMBER__ kết quả'),
(1640, 'current_location', '', 'Current location', 'Localisation actuelle', 'Vị trí hiện tại'),
(1641, 'on_the_lists', '', 'On the lists', 'Sur les listes', 'Có trong danh sách'),
(1642, 'search_this_area', '', 'Search this area', 'Rechercher dans cette zone', 'Tìm kiếm khu vực này'),
(1643, 'url_vr360', '', 'Url Virtual Reality', 'Url Virtual Reality', 'Đường dẫn thực tế ảo'),
(1644, 'vr360', '', 'Virtual Reality', 'Réalité virtuelle', 'Thực tế ảo'),
(1645, 'url_vr360_invalid', '', 'The virtual reality link is not valid', 'Le lien de réalité virtuelle n&#039;est pas valide', 'Liên kết thực tế ảo không hợp lệ'),
(1646, 'notification', '', 'Notification', 'Notification', 'Thông báo'),
(1647, '1647', 'category', 'Tourist Resort', 'Voyage en station', 'Du lịch nghỉ dưỡng'),
(1648, '1648', 'category', 'Tour discover', 'Découvrir le voyage', 'Du lịch khám phá'),
(1649, '1649', 'category', 'Ecotourism', 'Écotourisme', 'Du lịch sinh thái');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Likes`
--

CREATE TABLE `Wo_Likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_lists`
--

CREATE TABLE `wo_lists` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `list_name` varchar(255) DEFAULT NULL,
  `list_title` varchar(255) DEFAULT NULL,
  `list_description` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT 'upload/photos/d-cover.jpg',
  `created_at` int(11) DEFAULT NULL,
  `active` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wo_list_pages`
--

CREATE TABLE `wo_list_pages` (
  `list_page_id` int(11) NOT NULL,
  `list_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Live_Sub_Users`
--

CREATE TABLE `Wo_Live_Sub_Users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `is_watching` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Manage_Pro`
--

CREATE TABLE `Wo_Manage_Pro` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `price` varchar(11) NOT NULL DEFAULT '0',
  `featured_member` int(11) NOT NULL DEFAULT '0',
  `profile_visitors` int(11) NOT NULL DEFAULT '0',
  `last_seen` int(11) NOT NULL DEFAULT '0',
  `verified_badge` int(11) NOT NULL DEFAULT '0',
  `posts_promotion` int(11) NOT NULL DEFAULT '0',
  `pages_promotion` int(11) NOT NULL DEFAULT '0',
  `discount` text NOT NULL,
  `image` varchar(300) NOT NULL DEFAULT '',
  `night_image` varchar(300) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Manage_Pro`
--

INSERT INTO `Wo_Manage_Pro` (`id`, `type`, `price`, `featured_member`, `profile_visitors`, `last_seen`, `verified_badge`, `posts_promotion`, `pages_promotion`, `discount`, `image`, `night_image`, `status`, `time`) VALUES
(1, 'star', '3', 1, 1, 1, 1, 0, 0, '0', '', '', 1, 7),
(2, 'hot', '8', 1, 1, 1, 1, 5, 5, '10', '', '', 1, 30),
(3, 'ultima', '89', 1, 1, 1, 1, 20, 20, '20', '', '', 1, 365),
(4, 'vip', '259', 1, 1, 1, 1, 40, 40, '60', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Messages`
--

CREATE TABLE `Wo_Messages` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media` varchar(255) NOT NULL DEFAULT '',
  `mediaFileName` varchar(200) NOT NULL DEFAULT '',
  `mediaFileNames` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `seen` int(11) NOT NULL DEFAULT '0',
  `deleted_one` enum('0','1') NOT NULL DEFAULT '0',
  `deleted_two` enum('0','1') NOT NULL DEFAULT '0',
  `sent_push` int(11) NOT NULL DEFAULT '0',
  `notification_id` varchar(50) NOT NULL DEFAULT '',
  `type_two` varchar(32) NOT NULL DEFAULT '',
  `stickers` text,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `lat` varchar(200) NOT NULL DEFAULT '0',
  `lng` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_MovieCommentReplies`
--

CREATE TABLE `Wo_MovieCommentReplies` (
  `id` int(11) NOT NULL,
  `comm_id` int(11) NOT NULL DEFAULT '0',
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `posted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_MovieComments`
--

CREATE TABLE `Wo_MovieComments` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `posted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Movies`
--

CREATE TABLE `Wo_Movies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `genre` varchar(50) NOT NULL DEFAULT '',
  `stars` varchar(300) NOT NULL DEFAULT '',
  `producer` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `release` year(4) DEFAULT NULL,
  `quality` varchar(10) DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `cover` varchar(500) NOT NULL DEFAULT 'upload/photos/d-film.jpg',
  `source` varchar(1000) NOT NULL DEFAULT '',
  `iframe` varchar(1000) NOT NULL DEFAULT '',
  `video` varchar(3000) NOT NULL DEFAULT '',
  `views` int(11) NOT NULL DEFAULT '0',
  `rating` varchar(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Notifications`
--

CREATE TABLE `Wo_Notifications` (
  `id` int(255) NOT NULL,
  `notifier_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `reply_id` int(11) UNSIGNED DEFAULT '0',
  `comment_id` int(11) UNSIGNED DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `group_chat_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `story_id` int(11) NOT NULL DEFAULT '0',
  `seen_pop` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `type2` varchar(32) NOT NULL DEFAULT '',
  `text` text,
  `url` varchar(255) NOT NULL DEFAULT '',
  `full_link` varchar(1000) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT '0',
  `sent_push` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Offers`
--

CREATE TABLE `Wo_Offers` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `discount_type` varchar(200) NOT NULL DEFAULT '',
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  `discount_amount` int(11) NOT NULL DEFAULT '0',
  `discounted_items` varchar(150) DEFAULT '',
  `buy` int(11) NOT NULL DEFAULT '0',
  `get_price` int(11) NOT NULL DEFAULT '0',
  `spend` int(11) NOT NULL DEFAULT '0',
  `amount_off` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `expire_date` date NOT NULL,
  `expire_time` time NOT NULL,
  `image` varchar(300) NOT NULL DEFAULT '',
  `currency` varchar(50) NOT NULL DEFAULT '',
  `time` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_PageAdmins`
--

CREATE TABLE `Wo_PageAdmins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `general` int(11) NOT NULL DEFAULT '1',
  `info` int(11) NOT NULL DEFAULT '1',
  `social` int(11) NOT NULL DEFAULT '1',
  `avatar` int(11) NOT NULL DEFAULT '1',
  `design` int(11) NOT NULL DEFAULT '1',
  `admins` int(11) NOT NULL DEFAULT '0',
  `analytics` int(11) NOT NULL DEFAULT '1',
  `delete_page` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_PageRating`
--

CREATE TABLE `Wo_PageRating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `valuation` int(11) DEFAULT '0',
  `review` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Pages`
--

CREATE TABLE `Wo_Pages` (
  `page_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_name` varchar(32) NOT NULL DEFAULT '',
  `page_title` varchar(32) NOT NULL DEFAULT '',
  `page_description` varchar(1000) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT 'upload/photos/d-page.jpg',
  `cover` varchar(255) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  `users_post` int(11) NOT NULL DEFAULT '0',
  `page_category` int(11) NOT NULL DEFAULT '1',
  `sub_category` varchar(50) NOT NULL DEFAULT '',
  `website` varchar(255) NOT NULL DEFAULT '',
  `facebook` varchar(32) NOT NULL DEFAULT '',
  `google` varchar(32) NOT NULL DEFAULT '',
  `vk` varchar(32) NOT NULL DEFAULT '',
  `twitter` varchar(32) NOT NULL DEFAULT '',
  `linkedin` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `call_action_type` int(11) NOT NULL DEFAULT '0',
  `call_action_type_url` varchar(255) NOT NULL DEFAULT '',
  `background_image` varchar(200) NOT NULL DEFAULT '',
  `background_image_status` int(11) NOT NULL DEFAULT '0',
  `instgram` varchar(32) NOT NULL DEFAULT '',
  `youtube` varchar(100) NOT NULL DEFAULT '',
  `verified` enum('0','1') NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `boosted` enum('0','1') NOT NULL DEFAULT '0',
  `fid_1` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Pages`
--

INSERT INTO `Wo_Pages` (`page_id`, `user_id`, `page_name`, `page_title`, `page_description`, `avatar`, `cover`, `users_post`, `page_category`, `sub_category`, `website`, `facebook`, `google`, `vk`, `twitter`, `linkedin`, `company`, `phone`, `address`, `call_action_type`, `call_action_type_url`, `background_image`, `background_image_status`, `instgram`, `youtube`, `verified`, `active`, `registered`, `boosted`, `fid_1`) VALUES
(1, 1, 'surf2020', 'SURF2020', 'Trang sự kiện Surf2020', 'upload/photos/2020/09/P1aCUQCDScEei27ZkABt_18_6fe926ac4577d0d56d243c2dddf9f07d_avatar.png', 'upload/photos/2020/09/bZoYXOA7iJG7PDPtVaS5_18_f48c261e21aa11ea4b5e64dfdf8111ca_cover.png', 0, 16, '', '', '', '', '', '', '', '', '', '', 4, 'http://surf2020.vrfairs.vn', '', 0, '', '', '0', '1', '9/2020', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Pages_Categories`
--

CREATE TABLE `Wo_Pages_Categories` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Pages_Categories`
--

INSERT INTO `Wo_Pages_Categories` (`id`, `lang_key`) VALUES
(2, '1419'),
(3, '1422'),
(4, '1425'),
(5, '1428'),
(6, '1431'),
(7, '1434'),
(8, '1437'),
(9, '1440'),
(10, '1443'),
(11, '1446'),
(12, '1449'),
(13, '1452'),
(14, '1455'),
(15, '1458'),
(16, '1461'),
(17, '1464'),
(18, '1467');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Pages_Invites`
--

CREATE TABLE `Wo_Pages_Invites` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `inviter_id` int(11) NOT NULL DEFAULT '0',
  `invited_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Pages_Likes`
--

CREATE TABLE `Wo_Pages_Likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Payments`
--

CREATE TABLE `Wo_Payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `type` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Wo_Payments`
--

INSERT INTO `Wo_Payments` (`id`, `user_id`, `amount`, `type`, `date`) VALUES
(1, 1, 8, 'monthly', '6/2020');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Payment_Transactions`
--

CREATE TABLE `Wo_Payment_Transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `kind` varchar(100) NOT NULL,
  `amount` decimal(11,0) UNSIGNED NOT NULL,
  `transaction_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Payment_Transactions`
--

INSERT INTO `Wo_Payment_Transactions` (`id`, `userid`, `kind`, `amount`, `transaction_dt`, `notes`) VALUES
(1, 1, 'PRO', '8', '2020-06-30 07:01:14', 'Upgrade To Pro Hot : PayPal'),
(2, 1, 'WALLET', '1000', '2020-06-30 07:02:22', 'PayPal'),
(3, 2, 'WALLET', '1000', '2020-06-30 09:04:34', 'PayPal'),
(4, 1, 'WALLET', '2000', '2020-07-01 14:25:44', 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_PinnedPosts`
--

CREATE TABLE `Wo_PinnedPosts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Pokes`
--

CREATE TABLE `Wo_Pokes` (
  `id` int(11) NOT NULL,
  `received_user_id` int(11) NOT NULL DEFAULT '0',
  `send_user_id` int(11) NOT NULL DEFAULT '0',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Polls`
--

CREATE TABLE `Wo_Polls` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `text` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Posts`
--

CREATE TABLE `Wo_Posts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `recipient_id` int(11) NOT NULL DEFAULT '0',
  `postText` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `event_id` int(11) NOT NULL DEFAULT '0',
  `page_event_id` int(11) NOT NULL DEFAULT '0',
  `postLink` varchar(1000) NOT NULL DEFAULT '',
  `postLinkTitle` text,
  `postLinkImage` varchar(100) NOT NULL DEFAULT '',
  `postLinkContent` varchar(1000) NOT NULL DEFAULT '',
  `postVimeo` varchar(100) NOT NULL DEFAULT '',
  `postDailymotion` varchar(100) NOT NULL DEFAULT '',
  `postFacebook` varchar(100) NOT NULL DEFAULT '',
  `postFile` varchar(255) NOT NULL DEFAULT '',
  `postFileName` varchar(200) NOT NULL DEFAULT '',
  `postFileThumb` varchar(3000) NOT NULL DEFAULT '',
  `postYoutube` varchar(255) NOT NULL DEFAULT '',
  `postVine` varchar(32) NOT NULL DEFAULT '',
  `postSoundCloud` varchar(255) NOT NULL DEFAULT '',
  `postPlaytube` varchar(500) NOT NULL DEFAULT '',
  `postDeepsound` varchar(500) NOT NULL DEFAULT '',
  `postMap` varchar(255) NOT NULL DEFAULT '',
  `postShare` int(11) NOT NULL DEFAULT '0',
  `postPrivacy` enum('0','1','2','3','4') NOT NULL DEFAULT '1',
  `postType` varchar(30) NOT NULL DEFAULT '',
  `postFeeling` varchar(255) NOT NULL DEFAULT '',
  `postListening` varchar(255) NOT NULL DEFAULT '',
  `postTraveling` varchar(255) NOT NULL DEFAULT '',
  `postWatching` varchar(255) NOT NULL DEFAULT '',
  `postPlaying` varchar(255) NOT NULL DEFAULT '',
  `postPhoto` varchar(3000) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `album_name` varchar(52) NOT NULL DEFAULT '',
  `multi_image` enum('0','1') NOT NULL DEFAULT '0',
  `multi_image_post` int(11) NOT NULL DEFAULT '0',
  `boosted` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `forum_id` int(11) NOT NULL DEFAULT '0',
  `thread_id` int(11) NOT NULL DEFAULT '0',
  `videoViews` int(11) NOT NULL DEFAULT '0',
  `postRecord` varchar(3000) NOT NULL DEFAULT '',
  `postSticker` text,
  `shared_from` int(15) NOT NULL DEFAULT '0',
  `post_url` text,
  `parent_id` int(15) NOT NULL DEFAULT '0',
  `cache` int(11) NOT NULL DEFAULT '0',
  `comments_status` int(11) NOT NULL DEFAULT '1',
  `blur` int(11) NOT NULL DEFAULT '0',
  `color_id` int(11) NOT NULL DEFAULT '0',
  `job_id` int(11) NOT NULL DEFAULT '0',
  `offer_id` int(11) NOT NULL DEFAULT '0',
  `fund_raise_id` int(11) NOT NULL DEFAULT '0',
  `fund_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `stream_name` varchar(100) NOT NULL DEFAULT '',
  `live_time` int(50) NOT NULL DEFAULT '0',
  `live_ended` int(11) NOT NULL DEFAULT '0',
  `agora_resource_id` text,
  `agora_sid` varchar(500) NOT NULL DEFAULT '',
  `send_notify` varchar(11) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Posts`
--

INSERT INTO `Wo_Posts` (`id`, `post_id`, `user_id`, `recipient_id`, `postText`, `page_id`, `group_id`, `event_id`, `page_event_id`, `postLink`, `postLinkTitle`, `postLinkImage`, `postLinkContent`, `postVimeo`, `postDailymotion`, `postFacebook`, `postFile`, `postFileName`, `postFileThumb`, `postYoutube`, `postVine`, `postSoundCloud`, `postPlaytube`, `postDeepsound`, `postMap`, `postShare`, `postPrivacy`, `postType`, `postFeeling`, `postListening`, `postTraveling`, `postWatching`, `postPlaying`, `postPhoto`, `time`, `registered`, `album_name`, `multi_image`, `multi_image_post`, `boosted`, `product_id`, `poll_id`, `blog_id`, `forum_id`, `thread_id`, `videoViews`, `postRecord`, `postSticker`, `shared_from`, `post_url`, `parent_id`, `cache`, `comments_status`, `blur`, `color_id`, `job_id`, `offer_id`, `fund_raise_id`, `fund_id`, `active`, `stream_name`, `live_time`, `live_ended`, `agora_resource_id`, `agora_sid`, `send_notify`) VALUES
(1, 1, 1, 0, 'Hi', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '2', 'post', '', '', '', '', '', '', 1593501328, '6/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(2, 2, 1, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Đà Nẵng', 0, '2', 'post', '', '', '', '', '', '', 1593501347, '6/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(3, 3, 1, 0, 'Test', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/06/T4resXIuO7FF9M9K1Rac_30_bad08c30cb7f09176b394ecd320002c1_image.jpg', '15935074869827965271000248772124.jpg', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1593507612, '6/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(4, 4, 2, 0, NULL, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 'upload/photos/2020/06/kRSaKdktfuIeKPp6WAOW_30_e5ce615b8d4513326834cfedae805821_avatar_full.jpg', '', '', '', '', '', '', '', '', 0, '0', 'profile_picture', '', '', '', '', '', '', 1593507765, '6/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(5, 5, 2, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/06/lL7GMssGeCjTCoqL8E57_30_e9c811ee708fc68c5d10806e58868325_image.jpg', 'python.jpg', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1593507808, '6/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(7, 7, 2, 0, NULL, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 'upload/photos/2020/06/PO69UMEM8VcwZPWNuSg4_30_3c6b12aef2a07893a3e89584fb8871be_avatar_full.png', '', '', '', '', '', '', '', '', 0, '0', 'profile_picture', '', '', '', '', '', '', 1593508593, '6/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(8, 8, 1, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/09/2R1NrsC6YgyFJyWifcgL_10_0b9b23c25659b927e0a17334f1ce7e64_image.png', 'Screenshot (2).png', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599746302, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(9, 9, 1, 0, 'Test wqfc ưTest wsdwq wqfc ưTest wsdwq wqfc ưTest | #[1] ', 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599746506, '9/2020', '', '0', 0, 0, 0, 0, 1, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(10, 10, 1, 0, NULL, 0, 0, 0, 1, '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599746709, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(11, 11, 1, 0, NULL, 0, 0, 0, 2, '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599746766, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(12, 12, 5, 0, NULL, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 'upload/photos/2020/09/XloWwD5CqfsZl9GfNmVj_10_971ffc5af04735f57972e2caca20a883_avatar_full.png', '', '', '', '', '', '', '', '', 0, '0', 'profile_picture', '', '', '', '', '', '', 1599753661, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(13, 13, 4, 0, NULL, 0, 0, 0, 0, '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599758278, '9/2020', '', '0', 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(14, 14, 1, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/09/JfNvH4u3i9VvE7jlM45c_10_5a5e5531d85f3adfa3b64c598dc30fb8_image.jpg', 'Screenshot_20200901-154909_Chrome.jpg', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599759694, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(15, 15, 7, 0, NULL, 0, 0, 0, 0, '', NULL, '', '', '', '', '', 'upload/photos/2020/09/f5iVl5ahHUYrM1k2cuEv_12_f8a7927dcf8b7da382eb1f2dcd62df2f_avatar_full.jpg', '', '', '', '', '', '', '', '', 0, '0', 'profile_picture', '', '', '', '', '', '', 1599880847, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(16, 16, 1, 0, 'a', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599901380, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(17, 17, 1, 0, 'Xin chao', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599901418, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(18, 18, 1, 0, 'h', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599987601, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(19, 19, 4, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/09/8vCaTwC5AP24pbBXyt8g_13_827e0ad50f740beda39b0bb02183b101_image.png', 'vr360-1-removebg-preview.png', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599989257, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(20, 20, 4, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/09/4c2vznIEP1fVcO5rHyPc_13_1b934456fce0d298daa3ac83f7c85d4c_image.jpg', '12.-ACC-Hoi-Nghi-Thuong-Dinh-CEO-Summit-.jpg', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599989392, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(21, 21, 4, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/09/KZxfwChxoTPisiXWp5jN_13_6d969e8a254c445efc649bc449f25f1f_image.jpg', '12.-ACC-Hoi-Nghi-Thuong-Dinh-CEO-Summit-.jpg', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1599990197, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(22, 22, 1, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', 'upload/photos/2020/09/nugSXKeGI2VEy7BxbeY3_13_0dc04a03da9c55c7de4c3bb84a310f1b_image.png', 'Robot Đơn giản.png', '', '', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1600018015, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', ''),
(23, 23, 2, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'kiUkoWGwOCY', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1600445983, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL, '', ''),
(24, 24, 2, 0, '', 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'kiUkoWGwOCY', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1600446049, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, NULL, '', ''),
(25, 25, 0, 0, '', 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 'kiUkoWGwOCY', '', '', '', '', '', 0, '0', 'post', '', '', '', '', '', '', 1600446119, '9/2020', '', '0', 0, 0, 0, 0, 0, 0, 0, 0, '', NULL, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Products`
--

CREATE TABLE `Wo_Products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `category` int(11) NOT NULL DEFAULT '0',
  `sub_category` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `price` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.00',
  `location` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `lng` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `lat` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Wo_Products`
--

INSERT INTO `Wo_Products` (`id`, `user_id`, `page_id`, `name`, `description`, `category`, `sub_category`, `price`, `location`, `status`, `type`, `currency`, `lng`, `lat`, `time`, `active`) VALUES
(1, 4, 0, 'Máy tính xách tay', 'Máy mới', 5, '', '7000000', 'Đà Nẵng', 0, '0', '2', '', '', 1599758278, '1');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Products_Categories`
--

CREATE TABLE `Wo_Products_Categories` (
  `id` int(11) NOT NULL,
  `lang_key` varchar(160) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Products_Categories`
--

INSERT INTO `Wo_Products_Categories` (`id`, `lang_key`) VALUES
(1, '1470'),
(2, '1471'),
(3, '1472'),
(4, '1473'),
(5, '1474'),
(6, '1475'),
(7, '1476'),
(8, '1477'),
(9, '1478'),
(10, '1479');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Products_Media`
--

CREATE TABLE `Wo_Products_Media` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wo_Products_Media`
--

INSERT INTO `Wo_Products_Media` (`id`, `product_id`, `image`) VALUES
(1, 1, 'upload/photos/2020/09/yesIfX9F9wMK4gze76mD_10_47ed2fe9602ec53ed64abde93b9cda31_image.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_ProfileFields`
--

CREATE TABLE `Wo_ProfileFields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `type` text COLLATE utf8_unicode_ci,
  `length` int(11) NOT NULL DEFAULT '0',
  `placement` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'profile',
  `registration_page` int(11) NOT NULL DEFAULT '0',
  `profile_page` int(11) NOT NULL DEFAULT '0',
  `select_type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Wo_ProfileFields`
--

INSERT INTO `Wo_ProfileFields` (`id`, `name`, `description`, `type`, `length`, `placement`, `registration_page`, `profile_page`, `select_type`, `active`) VALUES
(1, 'pinid', 'Đang thuê PIN có id', 'textbox', 32, 'general', 0, 1, 'none', '1'),
(3, 'Tên Công ty', 'Tên đầy đủ của công ty', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(4, 'Địa chỉ công ty', 'Nhập đầy đủ thông tin', 'textarea', 255, 'profile', 0, 1, 'none', '1'),
(5, 'Số điện thoại Công ty', 'Nhập đúng số điện thoại của công ty(vd: +84901234567)', 'textbox', 32, 'profile', 0, 1, 'none', '1'),
(6, 'Email Công ty', 'Nhập đúng cấu trúc email', 'textbox', 32, 'profile', 0, 1, 'none', '1'),
(7, 'Link Video Youtube giới thiệu về Công ty hoặc Sản phẩm', 'Nhập link nhúng Video giới thiệu về Công ty của bạn trên Youtube, vd: https://www.youtube.com/embed/kiUkoWGwOCY (Lưu ý Video đã đặt chế độ Public và cho phép Embed)', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(8, 'Link Video LiveStream trên Youtube', 'Nhập link nhúng Video Livestream trên Youtube (sử dụng trong trường hợp bạn muốn phát Video Live Stream đến người xem qua kênh Youtube)', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(9, 'Link Video LiveStream trên Facebook', 'Nhập link nhúng Video Livestream trên Facebook (sử dụng trong trường hợp bạn muốn phát Video Live Stream đến người xem từ Facebook)', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(10, 'Link thư mục tài liệu trên Google Docs', ' Nhập link nhúng dẫn đến thư mục chứa tài liệu, hình ảnh giới thiệu về công ty, sản phẩm (pdf, docs), ... mà bạn muốn cung cấp cho người xem tải xuống. (Lưu ý thư mục phải  Share Public để ai cũng có thể xem và tải về)', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(11, 'Link giới thiệu công ty', 'Link nhúng từ Google Slides, Pdf hoặc website công ty', 'textarea', 300, 'profile', 0, 1, 'none', '1'),
(12, 'Link thực hiện cuộc gọi hội nghị truyền hình', 'Cung cấp link đến các phòng hội nghị trên Zoom, Google Meet, Microsoft Team, vrFairs Meet, ... mà bạn muốn khách hàng có thể tương tác với mình', 'textbox', 100, 'profile', 0, 1, 'none', '1'),
(13, 'Link giới thiệu sản phẩm', 'Link nhúng từ Google Slides, Pdf hoặc website công ty', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(14, 'Lịch biểu của gian hàng tại sự kiện', 'Nhập địa chỉ đến lịch của bạn trên Google Calendar đã để chế độ Public (vd: https://calendar.google.com/calendar/embed?src=agmnfng1e29kmhqsb6d4k5addo%40group.calendar.google.comctz=Asia%2FHo_Chi_Minh )', 'textbox', 255, 'profile', 0, 1, 'none', '1'),
(15, 'Cung cấp ID Trang Facebook để tích hợp Chat', 'Nhập ID Trang Facebook nếu bạn muốn tích hợp chức năng Chat lên gian hàng cho khách tham quan có thể gởi tin nhắn cho bạn', 'textbox', 32, 'profile', 0, 1, 'none', '1'),
(16, 'Zalo', 'URL Zalo của bạn muốn chia sẻ cho khách tham quan', 'textbox', 32, 'social', 0, 1, 'none', '1'),
(19, 'Mã Gian hàng (Booth ID)', 'Mã gian hàng mà bạn được Ban tổ chức cung cấp cho đơn vị của bạn', 'textbox', 4, 'profile', 0, 0, 'none', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Reactions`
--

CREATE TABLE `Wo_Reactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(11) UNSIGNED DEFAULT '0',
  `comment_id` int(11) UNSIGNED DEFAULT '0',
  `replay_id` int(11) UNSIGNED DEFAULT '0',
  `reaction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Reactions`
--

INSERT INTO `Wo_Reactions` (`id`, `user_id`, `post_id`, `comment_id`, `replay_id`, `reaction`) VALUES
(1, 4, 13, 0, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Reactions_Types`
--

CREATE TABLE `Wo_Reactions_Types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `wowonder_icon` varchar(300) NOT NULL DEFAULT '',
  `sunshine_icon` varchar(300) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Reactions_Types`
--

INSERT INTO `Wo_Reactions_Types` (`id`, `name`, `wowonder_icon`, `sunshine_icon`, `status`) VALUES
(1, 'like', '', '', 1),
(2, 'love', '', '', 1),
(3, 'haha', '', '', 1),
(4, 'wow', '', '', 1),
(5, 'sad', '', '', 1),
(6, 'angry', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Wo_RecentSearches`
--

CREATE TABLE `Wo_RecentSearches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `search_id` int(11) NOT NULL DEFAULT '0',
  `search_type` varchar(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Refund`
--

CREATE TABLE `Wo_Refund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `pro_type` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `time` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Relationship`
--

CREATE TABLE `Wo_Relationship` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `relationship` int(11) NOT NULL DEFAULT '0',
  `active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Reports`
--

CREATE TABLE `Wo_Reports` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(15) UNSIGNED NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(15) NOT NULL DEFAULT '0',
  `group_id` int(15) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `seen` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_SavedPosts`
--

CREATE TABLE `Wo_SavedPosts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Stickers`
--

CREATE TABLE `Wo_Stickers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `media_file` varchar(250) NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Story_Seen`
--

CREATE TABLE `Wo_Story_Seen` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `story_id` int(11) NOT NULL DEFAULT '0',
  `time` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Sub_Categories`
--

CREATE TABLE `Wo_Sub_Categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `lang_key` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Terms`
--

CREATE TABLE `Wo_Terms` (
  `id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `text` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Terms`
--

INSERT INTO `Wo_Terms` (`id`, `type`, `text`) VALUES
(1, 'terms_of_use', '<h4>1- Write your Terms Of Use here.</h4>     \nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.          <br><br>          <h4>2- Random title</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(2, 'privacy_policy', '<h2>Who we are?</h2>\nProvide name and contact details of the data controller. This will typically be your business or you, if you are a sole trader. Where applicable, you should include the identity and contact details of the controller’s representative and/or the data protection officer. \n\n<h2>What information do we collect?</h2>\nSpecify the types of personal information you collect, eg names, addresses, user names, etc. You should include specific details on:\nhow you collect data (eg when a user registers, purchases or uses your services, completes a contact form, signs up to a newsletter, etc) \nwhat specific data you collect through each of the data collection method\nif you collect data from third parties, you must specify categories of data and source\nif you process sensitive personal data or financial information, and how you handle this \n<br><br>\nYou may want to provide the user with relevant definitions in relation to personal data and sensitive personal data. \n<br><br>\n<h2>How do we use personal information?</h2>\nDescribe in detail all the service- and business-related purposes for which you will process data. For example, this may include things like:\npersonalisation of content, business information or user experience\naccount set up and administration\ndelivering marketing and events communication\ncarrying out polls and surveys\ninternal research and development purposes\nproviding goods and services\nlegal obligations (eg prevention of fraud)\nmeeting internal audit requirements\n<br><br>\nPlease note this list is not exhaustive. You will need to record all purposes for which you process personal data. \n<br><br>\n<h2>What legal basis do we have for processing your personal data?</h2>\nDescribe the relevant processing conditions contained within the GDPR. There are six possible legal grounds: \nconsent\ncontract\nlegitimate interests\nvital interests\npublic task \nlegal obligation\n<br><br>\nProvide detailed information on all grounds that apply to your processing, and why. If you rely on consent, explain how individuals can withdraw and manage their consent. If you rely on legitimate interests, explain clearly what these are.\n<br><br>\nIf you’re processing special category personal data, you will have to satisfy at least one of the six processing conditions, as well as additional requirements for processing under the GDPR. Provide information on all additional grounds that apply. \n<br><br>\n<h2>When do we share personal data?</h2>\nExplain that you will treat personal data confidentially and describe the circumstances when you might disclose or share it. Eg, when necessary to provide your services or conduct your business operations, as outlined in your purposes for processing. You should provide information on:\nhow you will share the data\nwhat safeguards you will have in place\nwhat parties you may share the data with and why\n\n<h2>Where do we store and process personal data?</h2>\nIf applicable, explain if you intend to store and process data outside of the data subject’s home country. Outline the steps you will take to ensure the data is processed according to your privacy policy and the applicable law of the country where data is located.\n\nIf you transfer data outside the European Economic Area, outline the measures you will put in place to provide an appropriate level of data privacy protection. Eg contractual clauses, data transfer agreements, etc.\n\n<h2>How do we secure personal data?</h2>\nDescribe your approach to data security and the technologies and procedures you use to protect personal information. For example, these may be measures:\nto protect data against accidental loss\nto prevent unauthorised access, use, destruction or disclosure\nto ensure business continuity and disaster recovery\nto restrict access to personal information\nto conduct privacy impact assessments in accordance with the law and your business policies\nto train staff and contractors on data security\nto manage third party risks, through use of contracts and security reviews\n<br><br>\nPlease note this list is not exhaustive. You should record all mechanisms you rely on to protect personal data. You should also state if your organisation adheres to certain accepted standards or regulatory requirements.\n<br><br>\n<h2>How long do we keep your personal data for?</h2>\nProvide specific information on the length of time you will keep the information for in relation to each processing purpose. The GDPR requires you to retain data for no longer than reasonably necessary. Include details of your data or records retention schedules, or link to additional resources where these are published.\n<br><br>\nIf you cannot state a specific period, you need to set out the criteria you will apply to determine how long to keep the data for (eg local laws, contractual obligations, etc)\n<br><br>\nYou should also outline how you securely dispose of data after you no longer need it.\n<br><br>\n<h2>Your rights in relation to personal data</h2>\nUnder the GDPR, you must respect the right of data subjects to access and control their personal data. In your privacy notice, you must outline their rights in respect of:\naccess to personal information \ncorrection and deletion\nwithdrawal of consent (if processing data on condition of consent)\ndata portability\nrestriction of processing and objection\nlodging a complaint with the Information Commissioner’s Office\n\nYou should explain how individuals can exercise their rights, and how you plan to respond to subject data requests. State if any relevant exemptions may apply and set out any identity verifications procedures you may rely on.\n\nInclude details of the circumstances where data subject rights may be limited, eg if fulfilling the data subject request may expose personal data about another person, or if you’re asked to delete data which you are required to keep by law. \n\n<h2>Use of automated decision-making and profiling</h2>\nWhere you use profiling or other automated decision-making, you must disclose this in your privacy policy. In such cases, you must provide details on existence of any automated decision-making, together with information about the logic involved, and the likely significance and consequences of the processing of the individual.\n\n<h2>How to contact us?</h2>\nExplain how data subject can get in touch if they have questions or concerns about your privacy practices, their personal information, or if they wish to file a complaint. Describe all ways in which they can contact you – eg online, by email or postal mail.\n<br><br>\nIf applicable, you may also include information on:\n<br><br>\n<h2>Use of cookies and other technologies</h2>\nYou may include a link to further information, or describe within the policy if you intend to set and use cookies, tracking and similar technologies to store and manage user preferences on your website, advertise, enable content or otherwise analyse user and usage data. Provide information on what types of cookies and technologies you use, why you use them and how an individual can control and manage them.\n<br><br>\nLinking to other websites / third party content\nIf you link to external sites and resources from your website, be specific on whether this constitutes endorsement, and if you take any responsibility for the content (or information contained within) any linked website.\n<br><br>\nYou may wish to consider adding other optional clauses to your privacy policy, depending on your business’ circumstances. \n'),
(3, 'about', '<h4>1- Write about your website here.</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.          <br><br>          <h4>2- Random title</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dxzcolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(4, 'refund', '<h4>1- Write your Terms Of Use here.</h4>     \r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis sdnostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.          <br><br>          <h4>2- Random title</h4>          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Tokens`
--

CREATE TABLE `Wo_Tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `app_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(200) NOT NULL DEFAULT '',
  `time` int(32) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_UserAds`
--

CREATE TABLE `Wo_UserAds` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(3000) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `headline` varchar(200) NOT NULL DEFAULT '',
  `description` text,
  `location` varchar(1000) NOT NULL DEFAULT 'us',
  `audience` longtext,
  `ad_media` varchar(3000) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `gender` varchar(15) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL DEFAULT 'all',
  `bidding` varchar(15) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `clicks` int(15) NOT NULL DEFAULT '0',
  `views` int(15) NOT NULL DEFAULT '0',
  `posted` varchar(15) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `appears` varchar(10) NOT NULL DEFAULT 'post',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` varchar(50) NOT NULL DEFAULT '',
  `start` date NOT NULL,
  `end` date NOT NULL,
  `budget` float UNSIGNED NOT NULL DEFAULT '0',
  `spent` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_UserAds_Data`
--

CREATE TABLE `Wo_UserAds_Data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ad_id` int(11) NOT NULL DEFAULT '0',
  `clicks` int(15) NOT NULL DEFAULT '0',
  `views` int(15) NOT NULL DEFAULT '0',
  `spend` float UNSIGNED NOT NULL DEFAULT '0',
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_UserFields`
--

CREATE TABLE `Wo_UserFields` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `fid_1` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_5` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_6` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_7` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_8` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_9` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_10` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_11` varchar(300) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_12` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_13` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_14` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_15` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_16` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fid_19` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Wo_UserFields`
--

INSERT INTO `Wo_UserFields` (`id`, `user_id`, `fid_1`, `fid_3`, `fid_4`, `fid_5`, `fid_6`, `fid_7`, `fid_8`, `fid_9`, `fid_10`, `fid_11`, `fid_12`, `fid_13`, `fid_14`, `fid_15`, `fid_16`, `fid_19`) VALUES
(1, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, '', 'Trung tâm SDC', '41 Lê Duẩn, Đà Nẵng', '0905577989', 'admin@sdc.udn.vn', 'https://www.youtube.com/embed/rnp4oVB-SN4', 'https://www.youtube.com/embed/4qNzECGvpRk', 'https://www.facebook.com/tintucvtv24/videos/920811311746601/', 'https://drive.google.com/embeddedfolderview?id=169GedDlAi4z5nJqvbVBnG7uv9FCAv8uD#grid', 'https://drive.google.com/file/d/1Br2qDLOPBytY9Tm94EsLSNic0EvXefiF/preview', 'https://8x8.vc/vrfairs/sdc', 'https://docs.google.com/presentation/d/e/2PACX-1vTtqRhmQzexQOM-G6zAfMjdJRMOV3SZZ73NTYgYmr_7qSUxky1wN0ZIiVcPv99HfQ/embed?start=true&amp;loop=true&amp;delayms=3000', 'https://calendar.google.com/calendar/embed?src=lu47k90u7621oje5167g8rap7o%40group.calendar.google.com&amp;ctz=Asia%2FBangkok', '305006283431187', '', 'A06'),
(3, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 7, '', 'dsfds', '', '', '', '', '', '', '', '', '', '', '2342', '', '', ''),
(8, 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Users`
--

CREATE TABLE `Wo_Users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(70) NOT NULL DEFAULT '',
  `first_name` varchar(60) NOT NULL DEFAULT '',
  `last_name` varchar(32) NOT NULL DEFAULT '',
  `avatar` varchar(100) NOT NULL DEFAULT 'upload/photos/d-avatar.jpg',
  `cover` varchar(100) NOT NULL DEFAULT 'upload/photos/d-cover.jpg',
  `background_image` varchar(100) NOT NULL DEFAULT '',
  `background_image_status` enum('0','1') NOT NULL DEFAULT '0',
  `relationship_id` int(11) NOT NULL DEFAULT '0',
  `address` varchar(100) NOT NULL DEFAULT '',
  `working` varchar(32) NOT NULL DEFAULT '',
  `working_link` varchar(32) NOT NULL DEFAULT '',
  `about` text,
  `school` varchar(32) NOT NULL DEFAULT '',
  `gender` varchar(32) NOT NULL DEFAULT 'male',
  `birthday` varchar(50) NOT NULL DEFAULT '0000-00-00',
  `country_id` int(11) NOT NULL DEFAULT '0',
  `website` varchar(50) NOT NULL DEFAULT '',
  `facebook` varchar(50) NOT NULL DEFAULT '',
  `google` varchar(50) NOT NULL DEFAULT '',
  `twitter` varchar(50) NOT NULL DEFAULT '',
  `linkedin` varchar(32) NOT NULL DEFAULT '',
  `youtube` varchar(100) NOT NULL DEFAULT '',
  `vk` varchar(32) NOT NULL DEFAULT '',
  `instagram` varchar(32) NOT NULL DEFAULT '',
  `language` varchar(31) NOT NULL DEFAULT 'english',
  `email_code` varchar(32) NOT NULL DEFAULT '',
  `src` varchar(32) NOT NULL DEFAULT 'Undefined',
  `ip_address` varchar(32) DEFAULT '',
  `follow_privacy` enum('1','0') NOT NULL DEFAULT '0',
  `friend_privacy` enum('0','1','2','3') NOT NULL DEFAULT '0',
  `post_privacy` varchar(255) NOT NULL DEFAULT 'ifollow',
  `message_privacy` enum('1','0','2') NOT NULL DEFAULT '0',
  `confirm_followers` enum('1','0') NOT NULL DEFAULT '0',
  `show_activities_privacy` enum('0','1') NOT NULL DEFAULT '1',
  `birth_privacy` enum('0','1','2') NOT NULL DEFAULT '0',
  `visit_privacy` enum('0','1') NOT NULL DEFAULT '0',
  `verified` enum('1','0') NOT NULL DEFAULT '0',
  `lastseen` int(32) NOT NULL DEFAULT '0',
  `showlastseen` enum('1','0') NOT NULL DEFAULT '1',
  `emailNotification` enum('1','0') NOT NULL DEFAULT '1',
  `e_liked` enum('0','1') NOT NULL DEFAULT '1',
  `e_wondered` enum('0','1') NOT NULL DEFAULT '1',
  `e_shared` enum('0','1') NOT NULL DEFAULT '1',
  `e_followed` enum('0','1') NOT NULL DEFAULT '1',
  `e_commented` enum('0','1') NOT NULL DEFAULT '1',
  `e_visited` enum('0','1') NOT NULL DEFAULT '1',
  `e_liked_page` enum('0','1') NOT NULL DEFAULT '1',
  `e_mentioned` enum('0','1') NOT NULL DEFAULT '1',
  `e_joined_group` enum('0','1') NOT NULL DEFAULT '1',
  `e_accepted` enum('0','1') NOT NULL DEFAULT '1',
  `e_profile_wall_post` enum('0','1') NOT NULL DEFAULT '1',
  `e_sentme_msg` enum('0','1') NOT NULL DEFAULT '0',
  `e_last_notif` varchar(50) NOT NULL DEFAULT '0',
  `notification_settings` varchar(400) NOT NULL DEFAULT '{"e_liked":1,"e_shared":1,"e_wondered":0,"e_commented":1,"e_followed":1,"e_accepted":1,"e_mentioned":1,"e_joined_group":1,"e_liked_page":1,"e_visited":1,"e_profile_wall_post":1,"e_memory":1}',
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `active` enum('0','1','2') NOT NULL DEFAULT '0',
  `admin` enum('0','1','2') NOT NULL DEFAULT '0',
  `type` varchar(11) NOT NULL DEFAULT 'user',
  `registered` varchar(32) NOT NULL DEFAULT '0/0000',
  `start_up` enum('0','1') NOT NULL DEFAULT '0',
  `start_up_info` enum('0','1') NOT NULL DEFAULT '0',
  `startup_follow` enum('0','1') NOT NULL DEFAULT '0',
  `startup_image` enum('0','1') NOT NULL DEFAULT '0',
  `last_email_sent` int(32) NOT NULL DEFAULT '0',
  `phone_number` varchar(32) NOT NULL DEFAULT '',
  `sms_code` int(11) NOT NULL DEFAULT '0',
  `is_pro` enum('0','1') NOT NULL DEFAULT '0',
  `pro_time` int(11) NOT NULL DEFAULT '0',
  `pro_type` enum('0','1','2','3','4') NOT NULL DEFAULT '0',
  `joined` int(11) NOT NULL DEFAULT '0',
  `css_file` varchar(100) NOT NULL DEFAULT '',
  `timezone` varchar(50) NOT NULL DEFAULT '',
  `referrer` int(11) NOT NULL DEFAULT '0',
  `ref_user_id` int(11) NOT NULL DEFAULT '0',
  `balance` varchar(100) NOT NULL DEFAULT '0',
  `paypal_email` varchar(100) NOT NULL DEFAULT '',
  `notifications_sound` enum('0','1') NOT NULL DEFAULT '0',
  `order_posts_by` enum('0','1') NOT NULL DEFAULT '1',
  `social_login` enum('0','1') NOT NULL DEFAULT '0',
  `android_m_device_id` varchar(50) NOT NULL DEFAULT '',
  `ios_m_device_id` varchar(50) NOT NULL DEFAULT '',
  `android_n_device_id` varchar(50) NOT NULL DEFAULT '',
  `ios_n_device_id` varchar(50) NOT NULL DEFAULT '',
  `web_device_id` varchar(100) NOT NULL DEFAULT '',
  `wallet` varchar(20) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0.00',
  `lat` varchar(200) NOT NULL DEFAULT '0',
  `lng` varchar(200) NOT NULL DEFAULT '0',
  `last_location_update` varchar(30) NOT NULL DEFAULT '0',
  `share_my_location` int(11) NOT NULL DEFAULT '1',
  `last_data_update` int(11) NOT NULL DEFAULT '0',
  `details` varchar(300) NOT NULL DEFAULT '{"post_count":0,"album_count":0,"following_count":0,"followers_count":0,"groups_count":0,"likes_count":0}',
  `sidebar_data` text,
  `last_avatar_mod` int(11) NOT NULL DEFAULT '0',
  `last_cover_mod` int(11) NOT NULL DEFAULT '0',
  `points` float UNSIGNED NOT NULL DEFAULT '0',
  `daily_points` int(11) NOT NULL DEFAULT '0',
  `point_day_expire` varchar(50) NOT NULL DEFAULT '',
  `last_follow_id` int(11) NOT NULL DEFAULT '0',
  `share_my_data` int(11) NOT NULL DEFAULT '1',
  `last_login_data` text,
  `two_factor` int(11) NOT NULL DEFAULT '0',
  `new_email` varchar(255) NOT NULL DEFAULT '',
  `two_factor_verified` int(11) NOT NULL DEFAULT '0',
  `new_phone` varchar(32) NOT NULL DEFAULT '',
  `info_file` varchar(300) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `zip` varchar(11) NOT NULL DEFAULT '',
  `school_completed` int(11) NOT NULL DEFAULT '0',
  `weather_unit` varchar(11) NOT NULL DEFAULT 'us',
  `paystack_ref` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Wo_Users`
--

INSERT INTO `Wo_Users` (`user_id`, `username`, `email`, `password`, `first_name`, `last_name`, `avatar`, `cover`, `background_image`, `background_image_status`, `relationship_id`, `address`, `working`, `working_link`, `about`, `school`, `gender`, `birthday`, `country_id`, `website`, `facebook`, `google`, `twitter`, `linkedin`, `youtube`, `vk`, `instagram`, `language`, `email_code`, `src`, `ip_address`, `follow_privacy`, `friend_privacy`, `post_privacy`, `message_privacy`, `confirm_followers`, `show_activities_privacy`, `birth_privacy`, `visit_privacy`, `verified`, `lastseen`, `showlastseen`, `emailNotification`, `e_liked`, `e_wondered`, `e_shared`, `e_followed`, `e_commented`, `e_visited`, `e_liked_page`, `e_mentioned`, `e_joined_group`, `e_accepted`, `e_profile_wall_post`, `e_sentme_msg`, `e_last_notif`, `notification_settings`, `status`, `active`, `admin`, `type`, `registered`, `start_up`, `start_up_info`, `startup_follow`, `startup_image`, `last_email_sent`, `phone_number`, `sms_code`, `is_pro`, `pro_time`, `pro_type`, `joined`, `css_file`, `timezone`, `referrer`, `ref_user_id`, `balance`, `paypal_email`, `notifications_sound`, `order_posts_by`, `social_login`, `android_m_device_id`, `ios_m_device_id`, `android_n_device_id`, `ios_n_device_id`, `web_device_id`, `wallet`, `lat`, `lng`, `last_location_update`, `share_my_location`, `last_data_update`, `details`, `sidebar_data`, `last_avatar_mod`, `last_cover_mod`, `points`, `daily_points`, `point_day_expire`, `last_follow_id`, `share_my_data`, `last_login_data`, `two_factor`, `new_email`, `two_factor_verified`, `new_phone`, `info_file`, `city`, `state`, `zip`, `school_completed`, `weather_unit`, `paystack_ref`) VALUES
(1, 'admin', 'congduy@gmail.com', '$2y$10$2wVDL0NPOHAW030BPU0xceXgl1Up3uZICjo/Rz6DBmYq4E1OEiOWW', 'Công Duy', 'Trịnh', 'upload/photos/d-avatar.jpg', 'upload/photos/d-cover.jpg', '', '0', 0, '18 Nại Hưng 2, Sơn Trà, Đà Nẵng', 'SDC', 'http://sdc.udn.vn', 'Tài khoản congduy@gmail.com đây', 'ĐH Đà Nẵng', 'male', '0000-00-00', 0, '', '', '', '', '', '', '', '', 'vietnamese', '', 'Undefined', '116.98.173.173', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '1', 1601083703, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '1', 'user', '00/0000', '1', '1', '1', '1', 0, '', 0, '0', 1593509237, '2', 1593483035, '', 'UTC', 0, 0, '0', '', '0', '1', '0', '', '', '', '', '', '1500.06', '0', '0', '0', 1, 1600447580, '{\"post_count\":\"12\",\"album_count\":\"0\",\"following_count\":\"0\",\"followers_count\":\"0\",\"groups_count\":\"3\",\"likes_count\":\"0\",\"mutual_friends_count\":0}', '{\"following_data\":[],\"followers_data\":[],\"likes_data\":[],\"groups_data\":[\"2\",\"3\",\"4\"],\"mutual_friends_data\":[]}', 0, 0, 70, 60, '1599782340', 0, 1, NULL, 0, '', 0, '', 'upload/files/2020/09/GHOnz7p9WWJ4AZnlhGzr_10_297398eb54db7cd3bc6db8286c86a076_file.html', '', '', '', 1, 'us', ''),
(2, 'tcduy', 'tcduy@sdc.udn.vn', '$2y$10$c0CXsCaPV1naz2USZYw0m.poeYvIrRkTrfv/PvEZJzrS0B5xYmgPm', 'Duy', 'SDC', 'upload/photos/2020/06/PO69UMEM8VcwZPWNuSg4_30_3c6b12aef2a07893a3e89584fb8871be_avatar.png', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', NULL, '', 'male', '1980-09-23', 233, '', '', '', '', '', '', '', '', 'english', '236f6652a1bcd4ea791c064389706439', 'site', '171.251.23.227', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '0', 1600492858, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '0', 'user', '6/2020', '1', '1', '1', '1', 0, '', 0, '0', 0, '0', 1593507748, '', 'UTC', 0, 0, '0', '', '0', '0', '0', '', '', '', '', '', '2790.00', '0', '0', '0', 1, 1600446940, '{\"post_count\":\"5\",\"album_count\":\"0\",\"following_count\":\"0\",\"followers_count\":\"0\",\"groups_count\":\"1\",\"likes_count\":\"0\",\"mutual_friends_count\":0}', '{\"following_data\":[],\"followers_data\":[],\"likes_data\":[],\"groups_data\":[\"2\"],\"mutual_friends_data\":[]}', 0, 0, 0, 0, '', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', ''),
(3, 'Myuyenho', 'homyuyen2406@gmail.com', '$2y$10$0.54T1R53eylkY0QqGQ7KuH549lLWnBxLEIX1jSBosVzfDrr5rhOe', '', '', 'upload/photos/d-avatar.jpg', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', NULL, '', 'female', '0000-00-00', 0, '', '', '', '', '', '', '', '', 'english', '6c6fccf4e5b2d13cc97194f759fcee71', 'site', '14.241.239.112', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '0', 1596094767, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '0', 'user', '7/2020', '0', '0', '0', '0', 0, '', 0, '0', 0, '0', 1596094723, '', '', 0, 0, '0', '', '0', '0', '0', '', '', '', '', '', '0.00', '0', '0', '0', 1, 1599898701, '{\"post_count\":\"0\",\"album_count\":\"0\",\"following_count\":\"0\",\"followers_count\":\"0\",\"groups_count\":\"0\",\"likes_count\":\"0\",\"mutual_friends_count\":0}', '{\"following_data\":[],\"followers_data\":[],\"likes_data\":[],\"groups_data\":[],\"mutual_friends_data\":[]}', 0, 0, 0, 0, '', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', ''),
(4, 'duytc', 'duytc@virtualvietnam.vn', '$2y$10$Vnpm6cVGHjdavDK3k95yn.mj4uOOtFCY4QkXNSQZTMvArKMn2JyA.', 'Duy', 'Trinh', 'upload/photos/d-avatar.jpg', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', NULL, '', 'male', '1980-09-23', 233, '', '', '', '', '', '', '', '', 'english', 'a10eb6e106cd7ba7fb41645565d2bc56', 'google', '116.105.215.161', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '0', 1599998703, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '1', 'user', '9/2020', '1', '1', '1', '1', 0, '', 0, '0', 0, '0', 1599746956, '', '', 0, 0, '0', '', '0', '0', '0', '', '', '', '', '', '0.02', '0', '0', '0', 1, 1599990197, '{\"post_count\":\"4\",\"album_count\":\"0\",\"following_count\":\"2\",\"followers_count\":\"1\",\"groups_count\":\"0\",\"likes_count\":\"0\",\"mutual_friends_count\":2}', '{\"following_data\":[\"2\",\"1\"],\"followers_data\":[\"1\"],\"likes_data\":[],\"groups_data\":[],\"mutual_friends_data\":[]}', 0, 0, 20, 20, '1599782340', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', ''),
(5, '133cc689e', 'quangmaster93@gmail.com', '$2y$10$we4rhEGcNZtWUxa6w/99oOSYGigMN/mCznbhNc9WO9G7/zheIQU9m', 'Trịnh', 'Quang', 'upload/photos/2020/09/XloWwD5CqfsZl9GfNmVj_10_971ffc5af04735f57972e2caca20a883_avatar.png', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', NULL, '', 'male', '00-00-0000', 233, '', '', '', '', '', '', '', '', 'english', '2edd85f336099407c574c640a8008af4', 'google', '1.52.169.134', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '0', 1599883732, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '1', 'user', '9/2020', '1', '1', '1', '1', 0, '', 0, '0', 0, '0', 1599753641, '', '', 0, 0, '0', '', '0', '0', '1', '', '', '', '', '', '0.015', '0', '0', '0', 1, 1599882928, '{\"post_count\":\"1\",\"album_count\":\"0\",\"following_count\":\"0\",\"followers_count\":\"2\",\"groups_count\":\"1\",\"likes_count\":\"0\",\"mutual_friends_count\":0}', '{\"following_data\":[],\"followers_data\":[\"7\",\"1\"],\"likes_data\":[],\"groups_data\":[\"2\"],\"mutual_friends_data\":[]}', 0, 0, 15, 15, '1599782340', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', ''),
(6, 'a817ed86f', 'duytc@vrfairs.vn', '$2y$10$97g6Jk961DrHmjdQGldjGuHjGhms7uQ4FZZVb4o07dfnUHgiR8hHu', 'Duy Trịnh', '', 'upload/photos/d-avatar.jpg', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', NULL, '', 'male', '0000-00-00', 0, '', '', '', '', '', '', '', '', 'english', '5e121e2089f86bcdd70079726bbda42a', 'google', '171.254.132.242', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '0', 1599759581, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '0', 'user', '9/2020', '0', '0', '0', '1', 0, '', 0, '0', 0, '0', 1599759575, '', '', 0, 0, '0', '', '0', '0', '1', '', '', '', '', '', '0.00', '0', '0', '0', 1, 0, '{\"post_count\":0,\"album_count\":0,\"following_count\":0,\"followers_count\":0,\"groups_count\":0,\"likes_count\":0}', NULL, 0, 0, 0, 0, '', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', ''),
(7, 'trucnv', 'nguyenvantruc92@gmail.com', '$2y$10$3TNTBhcv6XF5o57s.9uaP.xkWyMFKax/o4.TEg15sp31T9wRpFfQy', 'Truc', 'Nguyen', 'upload/photos/2020/09/f5iVl5ahHUYrM1k2cuEv_12_f8a7927dcf8b7da382eb1f2dcd62df2f_avatar.jpg', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', '', '', 'male', '00-00-0000', 0, '', '', '', '', '', '', '', '', 'english', '71d021e64fd557edf581a3c89870d95e', 'google', '171.255.161.60', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '1', 1599988006, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '1', 'user', '9/2020', '1', '1', '1', '1', 0, '', 0, '0', 0, '0', 1599880808, '', 'UTC', 0, 0, '0', '', '0', '0', '0', '', '', '', '', '', '0.00', '0', '0', '0', 1, 1599984561, '{\"post_count\":\"1\",\"album_count\":\"0\",\"following_count\":\"2\",\"followers_count\":\"0\",\"groups_count\":\"0\",\"likes_count\":\"0\",\"mutual_friends_count\":2}', '{\"following_data\":[\"5\",\"2\"],\"followers_data\":[],\"likes_data\":[],\"groups_data\":[],\"mutual_friends_data\":[]}', 0, 0, 0, 0, '', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', ''),
(8, 'b48167b3e', 'tcduy@sdc.ud.edu.vn', '$2y$10$iJxHupK8VV/YjjydYB8NBex0nAfLSlGNUn2XaFolE3nM1WQxI9/lK', 'Duy Trịnh', '', 'upload/photos/d-avatar.jpg', 'upload/photos/d-cover.jpg', '', '0', 0, '', '', '', NULL, '', 'male', '00-00-0000', 0, '', '', '', '', '', '', '', '', 'vietnamese', 'a61ef32419f83c3c9b4761b2e243195a', 'google', '116.110.154.248', '0', '0', 'ifollow', '0', '0', '1', '0', '0', '0', 1600546303, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '{\"e_liked\":1,\"e_shared\":1,\"e_wondered\":0,\"e_commented\":1,\"e_followed\":1,\"e_accepted\":1,\"e_mentioned\":1,\"e_joined_group\":1,\"e_liked_page\":1,\"e_visited\":1,\"e_profile_wall_post\":1,\"e_memory\":1}', '0', '1', '0', 'user', '9/2020', '1', '1', '1', '1', 0, '', 0, '0', 0, '0', 1600493582, '', '', 0, 0, '0', '', '0', '0', '1', '', '', '', '', '', '0.00', '0', '0', '0', 1, 0, '{\"post_count\":0,\"album_count\":0,\"following_count\":0,\"followers_count\":0,\"groups_count\":0,\"likes_count\":0}', NULL, 0, 0, 0, 0, '', 0, 1, NULL, 0, '', 0, '', '', '', '', '', 0, 'us', '');

-- --------------------------------------------------------

--
-- Table structure for table `Wo_UsersChat`
--

CREATE TABLE `Wo_UsersChat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `conversation_user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `color` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_UserStory`
--

CREATE TABLE `Wo_UserStory` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL DEFAULT '',
  `posted` varchar(50) NOT NULL DEFAULT '',
  `expire` varchar(100) DEFAULT '',
  `thumbnail` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_UserStoryMedia`
--

CREATE TABLE `Wo_UserStoryMedia` (
  `id` int(11) NOT NULL,
  `story_id` int(30) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT '',
  `filename` text,
  `expire` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_User_Gifts`
--

CREATE TABLE `Wo_User_Gifts` (
  `id` int(11) NOT NULL,
  `from` int(11) NOT NULL DEFAULT '0',
  `to` int(11) NOT NULL DEFAULT '0',
  `gift_id` int(11) NOT NULL DEFAULT '0',
  `time` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Verification_Requests`
--

CREATE TABLE `Wo_Verification_Requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `page_id` int(11) NOT NULL DEFAULT '0',
  `message` text CHARACTER SET utf8,
  `user_name` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `passport` varchar(3000) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `photo` varchar(3000) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `type` varchar(32) NOT NULL DEFAULT '',
  `seen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_VideoCalles`
--

CREATE TABLE `Wo_VideoCalles` (
  `id` int(11) NOT NULL,
  `access_token` text,
  `access_token_2` text,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(50) NOT NULL DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `called` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `declined` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Votes`
--

CREATE TABLE `Wo_Votes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Wo_Wonders`
--

CREATE TABLE `Wo_Wonders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_receipts`
--
ALTER TABLE `bank_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Activities`
--
ALTER TABLE `Wo_Activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `activity_type` (`activity_type`),
  ADD KEY `order1` (`user_id`,`id`),
  ADD KEY `order2` (`post_id`,`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `reply_id` (`reply_id`);

--
-- Indexes for table `Wo_AdminInvitations`
--
ALTER TABLE `Wo_AdminInvitations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`(255));

--
-- Indexes for table `wo_administratives`
--
ALTER TABLE `wo_administratives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Ads`
--
ALTER TABLE `Wo_Ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `Wo_Affiliates_Requests`
--
ALTER TABLE `Wo_Affiliates_Requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `Wo_AgoraVideoCall`
--
ALTER TABLE `Wo_AgoraVideoCall`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `type` (`type`),
  ADD KEY `room_name` (`room_name`),
  ADD KEY `time` (`time`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `Wo_Albums_Media`
--
ALTER TABLE `Wo_Albums_Media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `order1` (`post_id`,`id`);

--
-- Indexes for table `Wo_Announcement`
--
ALTER TABLE `Wo_Announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `Wo_Announcement_Views`
--
ALTER TABLE `Wo_Announcement_Views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `announcement_id` (`announcement_id`);

--
-- Indexes for table `Wo_Apps`
--
ALTER TABLE `Wo_Apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_AppsSessions`
--
ALTER TABLE `Wo_AppsSessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `platform` (`platform`);

--
-- Indexes for table `Wo_Apps_Hash`
--
ALTER TABLE `Wo_Apps_Hash`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash_id` (`hash_id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `Wo_Apps_Permission`
--
ALTER TABLE `Wo_Apps_Permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`app_id`);

--
-- Indexes for table `Wo_AudioCalls`
--
ALTER TABLE `Wo_AudioCalls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `call_id` (`call_id`),
  ADD KEY `called` (`called`),
  ADD KEY `declined` (`declined`);

--
-- Indexes for table `Wo_Bad_Login`
--
ALTER TABLE `Wo_Bad_Login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `Wo_Banned_Ip`
--
ALTER TABLE `Wo_Banned_Ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`);

--
-- Indexes for table `Wo_Blocks`
--
ALTER TABLE `Wo_Blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocker` (`blocker`),
  ADD KEY `blocked` (`blocked`);

--
-- Indexes for table `Wo_Blog`
--
ALTER TABLE `Wo_Blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `title` (`title`),
  ADD KEY `category` (`category`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `Wo_BlogCommentReplies`
--
ALTER TABLE `Wo_BlogCommentReplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comm_id` (`comm_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `order1` (`comm_id`,`id`),
  ADD KEY `order2` (`blog_id`,`id`),
  ADD KEY `order3` (`user_id`,`id`);

--
-- Indexes for table `Wo_BlogComments`
--
ALTER TABLE `Wo_BlogComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_BlogMovieDisLikes`
--
ALTER TABLE `Wo_BlogMovieDisLikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comm_id` (`blog_comm_id`),
  ADD KEY `movie_comm_id` (`movie_comm_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_commreply_id` (`blog_commreply_id`),
  ADD KEY `movie_commreply_id` (`movie_commreply_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `Wo_BlogMovieLikes`
--
ALTER TABLE `Wo_BlogMovieLikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_comm_id`),
  ADD KEY `movie_id` (`movie_comm_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_commreply_id` (`blog_commreply_id`),
  ADD KEY `movie_commreply_id` (`movie_commreply_id`),
  ADD KEY `blog_id_2` (`blog_id`),
  ADD KEY `movie_id_2` (`movie_id`);

--
-- Indexes for table `Wo_Blogs_Categories`
--
ALTER TABLE `Wo_Blogs_Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Blog_Reaction`
--
ALTER TABLE `Wo_Blog_Reaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `reply_id` (`reply_id`);

--
-- Indexes for table `wo_check_ins`
--
ALTER TABLE `wo_check_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `text` (`name`);

--
-- Indexes for table `Wo_Codes`
--
ALTER TABLE `Wo_Codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `Wo_Colored_Posts`
--
ALTER TABLE `Wo_Colored_Posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_CommentLikes`
--
ALTER TABLE `Wo_CommentLikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `Wo_Comments`
--
ALTER TABLE `Wo_Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `order1` (`user_id`,`id`),
  ADD KEY `order2` (`page_id`,`id`),
  ADD KEY `order3` (`post_id`,`id`),
  ADD KEY `order4` (`user_id`,`id`),
  ADD KEY `order5` (`post_id`,`id`);

--
-- Indexes for table `Wo_CommentWonders`
--
ALTER TABLE `Wo_CommentWonders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Comment_Replies`
--
ALTER TABLE `Wo_Comment_Replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `user_id` (`user_id`,`page_id`);

--
-- Indexes for table `Wo_Comment_Replies_Likes`
--
ALTER TABLE `Wo_Comment_Replies_Likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reply_id` (`reply_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Comment_Replies_Wonders`
--
ALTER TABLE `Wo_Comment_Replies_Wonders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reply_id` (`reply_id`,`user_id`);

--
-- Indexes for table `Wo_Config`
--
ALTER TABLE `Wo_Config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `Wo_CustomPages`
--
ALTER TABLE `Wo_CustomPages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Custom_Fields`
--
ALTER TABLE `Wo_Custom_Fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Egoing`
--
ALTER TABLE `Wo_Egoing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Einterested`
--
ALTER TABLE `Wo_Einterested`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Einvited`
--
ALTER TABLE `Wo_Einvited`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `inviter_id` (`invited_id`);

--
-- Indexes for table `Wo_Emails`
--
ALTER TABLE `Wo_Emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Events`
--
ALTER TABLE `Wo_Events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `name` (`name`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `start_time` (`start_time`),
  ADD KEY `end_time` (`end_time`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `order1` (`poster_id`,`id`),
  ADD KEY `order2` (`id`);

--
-- Indexes for table `Wo_Family`
--
ALTER TABLE `Wo_Family`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `Wo_Followers`
--
ALTER TABLE `Wo_Followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `following_id` (`following_id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `active` (`active`),
  ADD KEY `order1` (`following_id`,`id`),
  ADD KEY `order2` (`follower_id`,`id`);

--
-- Indexes for table `Wo_Forums`
--
ALTER TABLE `Wo_Forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `description` (`description`(255)),
  ADD KEY `posts` (`posts`);

--
-- Indexes for table `Wo_ForumThreadReplies`
--
ALTER TABLE `Wo_ForumThreadReplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_id` (`thread_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `post_subject` (`post_subject`(255)),
  ADD KEY `post_quoted` (`post_quoted`),
  ADD KEY `posted_time` (`posted_time`);

--
-- Indexes for table `Wo_Forum_Sections`
--
ALTER TABLE `Wo_Forum_Sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_name` (`section_name`),
  ADD KEY `description` (`description`(255));

--
-- Indexes for table `Wo_Forum_Threads`
--
ALTER TABLE `Wo_Forum_Threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `views` (`views`),
  ADD KEY `posted` (`posted`),
  ADD KEY `headline` (`headline`(255)),
  ADD KEY `forum` (`forum`);

--
-- Indexes for table `Wo_Funding`
--
ALTER TABLE `Wo_Funding`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hashed_id` (`hashed_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Funding_Raise`
--
ALTER TABLE `Wo_Funding_Raise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `funding_id` (`funding_id`);

--
-- Indexes for table `Wo_Games`
--
ALTER TABLE `Wo_Games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Games_Players`
--
ALTER TABLE `Wo_Games_Players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`game_id`,`active`);

--
-- Indexes for table `Wo_Gender`
--
ALTER TABLE `Wo_Gender`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gender_id` (`gender_id`);

--
-- Indexes for table `Wo_Gifts`
--
ALTER TABLE `Wo_Gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_GroupAdmins`
--
ALTER TABLE `Wo_GroupAdmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `Wo_GroupChat`
--
ALTER TABLE `Wo_GroupChat`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_GroupChatUsers`
--
ALTER TABLE `Wo_GroupChatUsers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `Wo_Groups`
--
ALTER TABLE `Wo_Groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `privacy` (`privacy`);

--
-- Indexes for table `Wo_Groups_Categories`
--
ALTER TABLE `Wo_Groups_Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Group_Members`
--
ALTER TABLE `Wo_Group_Members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`group_id`);

--
-- Indexes for table `Wo_Hashtags`
--
ALTER TABLE `Wo_Hashtags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_trend_time` (`last_trend_time`),
  ADD KEY `trend_use_num` (`trend_use_num`),
  ADD KEY `tag` (`tag`),
  ADD KEY `expire` (`expire`);

--
-- Indexes for table `Wo_HiddenPosts`
--
ALTER TABLE `Wo_HiddenPosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Invitation_Links`
--
ALTER TABLE `Wo_Invitation_Links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`(255)),
  ADD KEY `invited_id` (`invited_id`),
  ADD KEY `time` (`time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Job`
--
ALTER TABLE `Wo_Job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `Wo_Job_Apply`
--
ALTER TABLE `Wo_Job_Apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `Wo_Job_Categories`
--
ALTER TABLE `Wo_Job_Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Langs`
--
ALTER TABLE `Wo_Langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_key` (`lang_key`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `Wo_Langs_bk`
--
ALTER TABLE `Wo_Langs_bk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_key` (`lang_key`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `Wo_Likes`
--
ALTER TABLE `Wo_Likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wo_lists`
--
ALTER TABLE `wo_lists`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `wo_list_pages`
--
ALTER TABLE `wo_list_pages`
  ADD PRIMARY KEY (`list_page_id`);

--
-- Indexes for table `Wo_Live_Sub_Users`
--
ALTER TABLE `Wo_Live_Sub_Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`),
  ADD KEY `is_watching` (`is_watching`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Manage_Pro`
--
ALTER TABLE `Wo_Manage_Pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Messages`
--
ALTER TABLE `Wo_Messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `seen` (`seen`),
  ADD KEY `time` (`time`),
  ADD KEY `deleted_two` (`deleted_two`),
  ADD KEY `deleted_one` (`deleted_one`),
  ADD KEY `sent_push` (`sent_push`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `order1` (`from_id`,`id`),
  ADD KEY `order2` (`group_id`,`id`),
  ADD KEY `order3` (`to_id`,`id`),
  ADD KEY `order7` (`seen`,`id`),
  ADD KEY `order8` (`time`,`id`),
  ADD KEY `order4` (`from_id`,`id`),
  ADD KEY `order5` (`group_id`,`id`),
  ADD KEY `order6` (`to_id`,`id`);

--
-- Indexes for table `Wo_MovieCommentReplies`
--
ALTER TABLE `Wo_MovieCommentReplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comm_id` (`comm_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_MovieComments`
--
ALTER TABLE `Wo_MovieComments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Movies`
--
ALTER TABLE `Wo_Movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `genre` (`genre`),
  ADD KEY `country` (`country`),
  ADD KEY `release` (`release`);

--
-- Indexes for table `Wo_Notifications`
--
ALTER TABLE `Wo_Notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifier_id` (`notifier_id`),
  ADD KEY `user_id` (`recipient_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `seen` (`seen`),
  ADD KEY `time` (`time`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `group_id` (`group_id`,`seen_pop`),
  ADD KEY `sent_push` (`sent_push`),
  ADD KEY `order1` (`seen`,`id`),
  ADD KEY `order2` (`notifier_id`,`id`),
  ADD KEY `order3` (`recipient_id`,`id`),
  ADD KEY `order4` (`post_id`,`id`),
  ADD KEY `order5` (`page_id`,`id`),
  ADD KEY `order6` (`group_id`,`id`),
  ADD KEY `order7` (`time`,`id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `reply_id` (`reply_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `story_id` (`story_id`);

--
-- Indexes for table `Wo_Offers`
--
ALTER TABLE `Wo_Offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `spend` (`spend`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `Wo_PageAdmins`
--
ALTER TABLE `Wo_PageAdmins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `Wo_PageRating`
--
ALTER TABLE `Wo_PageRating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `Wo_Pages`
--
ALTER TABLE `Wo_Pages`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `registered` (`registered`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_category` (`page_category`),
  ADD KEY `active` (`active`),
  ADD KEY `verified` (`verified`),
  ADD KEY `boosted` (`boosted`);

--
-- Indexes for table `Wo_Pages_Categories`
--
ALTER TABLE `Wo_Pages_Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Pages_Invites`
--
ALTER TABLE `Wo_Pages_Invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`,`inviter_id`,`invited_id`);

--
-- Indexes for table `Wo_Pages_Likes`
--
ALTER TABLE `Wo_Pages_Likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `Wo_Payments`
--
ALTER TABLE `Wo_Payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Payment_Transactions`
--
ALTER TABLE `Wo_Payment_Transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_PinnedPosts`
--
ALTER TABLE `Wo_PinnedPosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `active` (`active`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `Wo_Pokes`
--
ALTER TABLE `Wo_Pokes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `received_user_id` (`received_user_id`),
  ADD KEY `user_id` (`send_user_id`);

--
-- Indexes for table `Wo_Polls`
--
ALTER TABLE `Wo_Polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `Wo_Posts`
--
ALTER TABLE `Wo_Posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipient_id` (`recipient_id`),
  ADD KEY `postFile` (`postFile`),
  ADD KEY `postShare` (`postShare`),
  ADD KEY `postType` (`postType`),
  ADD KEY `postYoutube` (`postYoutube`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `registered` (`registered`),
  ADD KEY `time` (`time`),
  ADD KEY `boosted` (`boosted`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `videoViews` (`videoViews`),
  ADD KEY `shared_from` (`shared_from`),
  ADD KEY `order1` (`user_id`,`id`),
  ADD KEY `order2` (`page_id`,`id`),
  ADD KEY `order3` (`group_id`,`id`),
  ADD KEY `order4` (`recipient_id`,`id`),
  ADD KEY `order5` (`event_id`,`id`),
  ADD KEY `order6` (`parent_id`,`id`),
  ADD KEY `multi_image` (`multi_image`),
  ADD KEY `album_name` (`album_name`),
  ADD KEY `postFacebook` (`postFacebook`),
  ADD KEY `postVimeo` (`postVimeo`),
  ADD KEY `postDailymotion` (`postDailymotion`),
  ADD KEY `postSoundCloud` (`postSoundCloud`),
  ADD KEY `postYoutube_2` (`postYoutube`),
  ADD KEY `fund_raise_id` (`fund_raise_id`),
  ADD KEY `fund_id` (`fund_id`),
  ADD KEY `offer_id` (`offer_id`),
  ADD KEY `live_time` (`live_time`),
  ADD KEY `live_ended` (`live_ended`),
  ADD KEY `active` (`active`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `page_event_id` (`page_event_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indexes for table `Wo_Products`
--
ALTER TABLE `Wo_Products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category` (`category`),
  ADD KEY `price` (`price`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `Wo_Products_Categories`
--
ALTER TABLE `Wo_Products_Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Products_Media`
--
ALTER TABLE `Wo_Products_Media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_ProfileFields`
--
ALTER TABLE `Wo_ProfileFields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registration_page` (`registration_page`),
  ADD KEY `active` (`active`),
  ADD KEY `profile_page` (`profile_page`);

--
-- Indexes for table `Wo_Reactions`
--
ALTER TABLE `Wo_Reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `idx_reaction` (`reaction`);

--
-- Indexes for table `Wo_Reactions_Types`
--
ALTER TABLE `Wo_Reactions_Types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_RecentSearches`
--
ALTER TABLE `Wo_RecentSearches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`search_id`),
  ADD KEY `search_type` (`search_type`);

--
-- Indexes for table `Wo_Refund`
--
ALTER TABLE `Wo_Refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pro_type` (`pro_type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `Wo_Relationship`
--
ALTER TABLE `Wo_Relationship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `relationship` (`relationship`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `Wo_Reports`
--
ALTER TABLE `Wo_Reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `seen` (`seen`),
  ADD KEY `profile_id` (`profile_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `Wo_SavedPosts`
--
ALTER TABLE `Wo_SavedPosts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Stickers`
--
ALTER TABLE `Wo_Stickers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Story_Seen`
--
ALTER TABLE `Wo_Story_Seen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `story_id` (`story_id`);

--
-- Indexes for table `Wo_Sub_Categories`
--
ALTER TABLE `Wo_Sub_Categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `lang_key` (`lang_key`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `Wo_Terms`
--
ALTER TABLE `Wo_Terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Wo_Tokens`
--
ALTER TABLE `Wo_Tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `app_id` (`app_id`);

--
-- Indexes for table `Wo_UserAds`
--
ALTER TABLE `Wo_UserAds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appears` (`appears`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location` (`location`(255)),
  ADD KEY `gender` (`gender`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `Wo_UserAds_Data`
--
ALTER TABLE `Wo_UserAds_Data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_UserFields`
--
ALTER TABLE `Wo_UserFields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Wo_Users`
--
ALTER TABLE `Wo_Users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `active` (`active`),
  ADD KEY `admin` (`admin`),
  ADD KEY `src` (`src`),
  ADD KEY `gender` (`gender`),
  ADD KEY `avatar` (`avatar`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `registered` (`registered`),
  ADD KEY `joined` (`joined`),
  ADD KEY `phone_number` (`phone_number`) USING BTREE,
  ADD KEY `referrer` (`referrer`),
  ADD KEY `wallet` (`wallet`),
  ADD KEY `friend_privacy` (`friend_privacy`),
  ADD KEY `lat` (`lat`),
  ADD KEY `lng` (`lng`),
  ADD KEY `order1` (`username`,`user_id`),
  ADD KEY `order2` (`email`,`user_id`),
  ADD KEY `order3` (`lastseen`,`user_id`),
  ADD KEY `order4` (`active`,`user_id`),
  ADD KEY `last_data_update` (`last_data_update`),
  ADD KEY `points` (`points`),
  ADD KEY `paystack_ref` (`paystack_ref`);

--
-- Indexes for table `Wo_UsersChat`
--
ALTER TABLE `Wo_UsersChat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `conversation_user_id` (`conversation_user_id`),
  ADD KEY `time` (`time`),
  ADD KEY `order1` (`user_id`,`id`),
  ADD KEY `order2` (`user_id`,`id`),
  ADD KEY `order3` (`conversation_user_id`,`id`),
  ADD KEY `order4` (`conversation_user_id`,`id`);

--
-- Indexes for table `Wo_UserStory`
--
ALTER TABLE `Wo_UserStory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `expires` (`expire`);

--
-- Indexes for table `Wo_UserStoryMedia`
--
ALTER TABLE `Wo_UserStoryMedia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expire` (`expire`),
  ADD KEY `story_id` (`story_id`);

--
-- Indexes for table `Wo_User_Gifts`
--
ALTER TABLE `Wo_User_Gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `Wo_Verification_Requests`
--
ALTER TABLE `Wo_Verification_Requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `Wo_VideoCalles`
--
ALTER TABLE `Wo_VideoCalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `called` (`called`),
  ADD KEY `declined` (`declined`);

--
-- Indexes for table `Wo_Votes`
--
ALTER TABLE `Wo_Votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `option_id` (`option_id`);

--
-- Indexes for table `Wo_Wonders`
--
ALTER TABLE `Wo_Wonders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_receipts`
--
ALTER TABLE `bank_receipts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Activities`
--
ALTER TABLE `Wo_Activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_AdminInvitations`
--
ALTER TABLE `Wo_AdminInvitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wo_administratives`
--
ALTER TABLE `wo_administratives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Ads`
--
ALTER TABLE `Wo_Ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Wo_Affiliates_Requests`
--
ALTER TABLE `Wo_Affiliates_Requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_AgoraVideoCall`
--
ALTER TABLE `Wo_AgoraVideoCall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Albums_Media`
--
ALTER TABLE `Wo_Albums_Media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Announcement`
--
ALTER TABLE `Wo_Announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Announcement_Views`
--
ALTER TABLE `Wo_Announcement_Views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Apps`
--
ALTER TABLE `Wo_Apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_AppsSessions`
--
ALTER TABLE `Wo_AppsSessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `Wo_Apps_Hash`
--
ALTER TABLE `Wo_Apps_Hash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Apps_Permission`
--
ALTER TABLE `Wo_Apps_Permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_AudioCalls`
--
ALTER TABLE `Wo_AudioCalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Bad_Login`
--
ALTER TABLE `Wo_Bad_Login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Banned_Ip`
--
ALTER TABLE `Wo_Banned_Ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Blocks`
--
ALTER TABLE `Wo_Blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Blog`
--
ALTER TABLE `Wo_Blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_BlogCommentReplies`
--
ALTER TABLE `Wo_BlogCommentReplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_BlogComments`
--
ALTER TABLE `Wo_BlogComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_BlogMovieDisLikes`
--
ALTER TABLE `Wo_BlogMovieDisLikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_BlogMovieLikes`
--
ALTER TABLE `Wo_BlogMovieLikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Blogs_Categories`
--
ALTER TABLE `Wo_Blogs_Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Wo_Blog_Reaction`
--
ALTER TABLE `Wo_Blog_Reaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wo_check_ins`
--
ALTER TABLE `wo_check_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Codes`
--
ALTER TABLE `Wo_Codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Colored_Posts`
--
ALTER TABLE `Wo_Colored_Posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_CommentLikes`
--
ALTER TABLE `Wo_CommentLikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Comments`
--
ALTER TABLE `Wo_Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Wo_CommentWonders`
--
ALTER TABLE `Wo_CommentWonders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Comment_Replies`
--
ALTER TABLE `Wo_Comment_Replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Comment_Replies_Likes`
--
ALTER TABLE `Wo_Comment_Replies_Likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Comment_Replies_Wonders`
--
ALTER TABLE `Wo_Comment_Replies_Wonders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Config`
--
ALTER TABLE `Wo_Config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT for table `Wo_CustomPages`
--
ALTER TABLE `Wo_CustomPages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Custom_Fields`
--
ALTER TABLE `Wo_Custom_Fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Egoing`
--
ALTER TABLE `Wo_Egoing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Einterested`
--
ALTER TABLE `Wo_Einterested`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Einvited`
--
ALTER TABLE `Wo_Einvited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Emails`
--
ALTER TABLE `Wo_Emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Events`
--
ALTER TABLE `Wo_Events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Wo_Family`
--
ALTER TABLE `Wo_Family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Followers`
--
ALTER TABLE `Wo_Followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Wo_Forums`
--
ALTER TABLE `Wo_Forums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_ForumThreadReplies`
--
ALTER TABLE `Wo_ForumThreadReplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Forum_Sections`
--
ALTER TABLE `Wo_Forum_Sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Forum_Threads`
--
ALTER TABLE `Wo_Forum_Threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Funding`
--
ALTER TABLE `Wo_Funding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Funding_Raise`
--
ALTER TABLE `Wo_Funding_Raise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Games`
--
ALTER TABLE `Wo_Games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Games_Players`
--
ALTER TABLE `Wo_Games_Players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Gender`
--
ALTER TABLE `Wo_Gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Gifts`
--
ALTER TABLE `Wo_Gifts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_GroupAdmins`
--
ALTER TABLE `Wo_GroupAdmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_GroupChat`
--
ALTER TABLE `Wo_GroupChat`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_GroupChatUsers`
--
ALTER TABLE `Wo_GroupChatUsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Groups`
--
ALTER TABLE `Wo_Groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Wo_Groups_Categories`
--
ALTER TABLE `Wo_Groups_Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Wo_Group_Members`
--
ALTER TABLE `Wo_Group_Members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Wo_Hashtags`
--
ALTER TABLE `Wo_Hashtags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_HiddenPosts`
--
ALTER TABLE `Wo_HiddenPosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Invitation_Links`
--
ALTER TABLE `Wo_Invitation_Links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Job`
--
ALTER TABLE `Wo_Job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Job_Apply`
--
ALTER TABLE `Wo_Job_Apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Job_Categories`
--
ALTER TABLE `Wo_Job_Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `Wo_Langs`
--
ALTER TABLE `Wo_Langs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1814;
--
-- AUTO_INCREMENT for table `Wo_Langs_bk`
--
ALTER TABLE `Wo_Langs_bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1650;
--
-- AUTO_INCREMENT for table `Wo_Likes`
--
ALTER TABLE `Wo_Likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wo_lists`
--
ALTER TABLE `wo_lists`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wo_list_pages`
--
ALTER TABLE `wo_list_pages`
  MODIFY `list_page_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Live_Sub_Users`
--
ALTER TABLE `Wo_Live_Sub_Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Manage_Pro`
--
ALTER TABLE `Wo_Manage_Pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Wo_Messages`
--
ALTER TABLE `Wo_Messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_MovieCommentReplies`
--
ALTER TABLE `Wo_MovieCommentReplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_MovieComments`
--
ALTER TABLE `Wo_MovieComments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Movies`
--
ALTER TABLE `Wo_Movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Notifications`
--
ALTER TABLE `Wo_Notifications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `Wo_Offers`
--
ALTER TABLE `Wo_Offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_PageAdmins`
--
ALTER TABLE `Wo_PageAdmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_PageRating`
--
ALTER TABLE `Wo_PageRating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Pages`
--
ALTER TABLE `Wo_Pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Pages_Categories`
--
ALTER TABLE `Wo_Pages_Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `Wo_Pages_Invites`
--
ALTER TABLE `Wo_Pages_Invites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Pages_Likes`
--
ALTER TABLE `Wo_Pages_Likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Payments`
--
ALTER TABLE `Wo_Payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Payment_Transactions`
--
ALTER TABLE `Wo_Payment_Transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Wo_PinnedPosts`
--
ALTER TABLE `Wo_PinnedPosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Pokes`
--
ALTER TABLE `Wo_Pokes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Polls`
--
ALTER TABLE `Wo_Polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Posts`
--
ALTER TABLE `Wo_Posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `Wo_Products`
--
ALTER TABLE `Wo_Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Products_Categories`
--
ALTER TABLE `Wo_Products_Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Wo_Products_Media`
--
ALTER TABLE `Wo_Products_Media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_ProfileFields`
--
ALTER TABLE `Wo_ProfileFields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `Wo_Reactions`
--
ALTER TABLE `Wo_Reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Wo_Reactions_Types`
--
ALTER TABLE `Wo_Reactions_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `Wo_RecentSearches`
--
ALTER TABLE `Wo_RecentSearches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Refund`
--
ALTER TABLE `Wo_Refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Relationship`
--
ALTER TABLE `Wo_Relationship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Reports`
--
ALTER TABLE `Wo_Reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_SavedPosts`
--
ALTER TABLE `Wo_SavedPosts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Stickers`
--
ALTER TABLE `Wo_Stickers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Story_Seen`
--
ALTER TABLE `Wo_Story_Seen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Sub_Categories`
--
ALTER TABLE `Wo_Sub_Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Terms`
--
ALTER TABLE `Wo_Terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Wo_Tokens`
--
ALTER TABLE `Wo_Tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_UserAds`
--
ALTER TABLE `Wo_UserAds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_UserAds_Data`
--
ALTER TABLE `Wo_UserAds_Data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_UserFields`
--
ALTER TABLE `Wo_UserFields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Wo_Users`
--
ALTER TABLE `Wo_Users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Wo_UsersChat`
--
ALTER TABLE `Wo_UsersChat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_UserStory`
--
ALTER TABLE `Wo_UserStory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_UserStoryMedia`
--
ALTER TABLE `Wo_UserStoryMedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_User_Gifts`
--
ALTER TABLE `Wo_User_Gifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Verification_Requests`
--
ALTER TABLE `Wo_Verification_Requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_VideoCalles`
--
ALTER TABLE `Wo_VideoCalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Votes`
--
ALTER TABLE `Wo_Votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Wo_Wonders`
--
ALTER TABLE `Wo_Wonders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
