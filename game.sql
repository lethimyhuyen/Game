-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2019 at 04:25 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_TB_USER', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `USERNAME` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_card_deal_history`
--

DROP TABLE IF EXISTS `tb_card_deal_history`;
CREATE TABLE IF NOT EXISTS `tb_card_deal_history` (
  `HIS_ID` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `HIS_TIME` datetime(6) NOT NULL,
  `COMPANY` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `CARD_NUMBER` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `SERIAL_NUMBER` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `DENOMINATIONS` int(10) NOT NULL,
  `RESULT` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `ID_USER` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`HIS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_game_account`
--

DROP TABLE IF EXISTS `tb_game_account`;
CREATE TABLE IF NOT EXISTS `tb_game_account` (
  `USERNAME` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD_KEY` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ORIGINAL_PRICE` int(11) NOT NULL,
  `ACCEPT_PRICE` int(11) NOT NULL,
  `CURRENT_STATUS` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_game_account_detail`
--

DROP TABLE IF EXISTS `tb_game_account_detail`;
CREATE TABLE IF NOT EXISTS `tb_game_account_detail` (
  `USERNAME` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `GENERAL_NUMBER` int(10) NOT NULL,
  `SKIN_NUMBER` int(10) NOT NULL,
  `GEM_NUMBER` int(10) NOT NULL,
  `LEVEL_NUMBER` int(10) NOT NULL,
  `BEST_RANK` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `CURRENT_RANK` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `CLAN_NAME` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`USERNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_game_image`
--

DROP TABLE IF EXISTS `tb_game_image`;
CREATE TABLE IF NOT EXISTS `tb_game_image` (
  `USERNAME` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `ACCOUNT_IMAGE` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`USERNAME`,`ACCOUNT_IMAGE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_game_price_offer`
--

DROP TABLE IF EXISTS `tb_game_price_offer`;
CREATE TABLE IF NOT EXISTS `tb_game_price_offer` (
  `USERNAME` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `USER_ACCOUNT_ID` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `USER_PRICE_OFFER` int(20) NOT NULL,
  `CURRENT_STATUS` int(10) NOT NULL,
  PRIMARY KEY (`USERNAME`,`USER_ACCOUNT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sell_dell_history`
--

DROP TABLE IF EXISTS `tb_sell_dell_history`;
CREATE TABLE IF NOT EXISTS `tb_sell_dell_history` (
  `HIS_ID` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `HIS_DATE` datetime(6) NOT NULL,
  `USER_ACCOUNT_ID` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `GAME_ACCOUNT_ID` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`HIS_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `NAME` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `EMAIL` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `PHONE` int(20) NOT NULL,
  `CURRENT_ADDRESS` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `PASSWORD_KEY` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`ID`, `USERNAME`, `NAME`, `EMAIL`, `PHONE`, `CURRENT_ADDRESS`, `PASSWORD_KEY`) VALUES
(1, 'a', 'a', 'a', 1412, 'hgfhgh', 'ghhhhhhhhhhhhh');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
