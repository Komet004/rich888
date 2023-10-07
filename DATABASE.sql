-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2023 at 03:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sexygam1_test123`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_ad` int(11) NOT NULL,
  `username_ad` varchar(100) NOT NULL,
  `password_ad` varchar(100) NOT NULL,
  `name_ad` varchar(100) NOT NULL,
  `phone_ad` varchar(100) NOT NULL,
  `status_ad` varchar(100) NOT NULL,
  `pin_bank` text DEFAULT NULL,
  `date_ad` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_ad`, `username_ad`, `password_ad`, `name_ad`, `phone_ad`, `status_ad`, `pin_bank`, `date_ad`) VALUES
(8, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'BF', '0899999999', 'SuperAdmin', '', '2022-11-08 16:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `affiliate`
--

CREATE TABLE `affiliate` (
  `id` int(11) NOT NULL,
  `id_affiliate` varchar(100) NOT NULL,
  `username_affiliate` varchar(100) NOT NULL,
  `confirm_affiliate` varchar(100) NOT NULL,
  `amount_affiliate` varchar(100) NOT NULL,
  `phone_affiliate` varchar(100) NOT NULL,
  `bank_affiliate` varchar(100) NOT NULL,
  `bankacc_affiliate` varchar(100) NOT NULL,
  `name_affiliate` varchar(100) NOT NULL,
  `note_affiliate` varchar(100) NOT NULL,
  `date_affiliate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `name_bank` varchar(100) NOT NULL,
  `bankacc_bank` varchar(100) NOT NULL,
  `nameacc_bank` varchar(100) NOT NULL,
  `status_bank` varchar(10) NOT NULL,
  `fileupload_bank` varchar(200) NOT NULL,
  `date_bank` timestamp NOT NULL DEFAULT current_timestamp(),
  `pin_bank` varchar(100) NOT NULL,
  `password_true` varchar(100) NOT NULL,
  `no_true` varchar(100) NOT NULL,
  `otp_true` varchar(100) NOT NULL,
  `bank_deposit` varchar(100) NOT NULL,
  `bank_withdraw` varchar(100) NOT NULL,
  `pin_scb` text NOT NULL,
  `pin_kbank` text NOT NULL,
  `device_scb` text NOT NULL,
  `device_kbank` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `change_diamond`
--

CREATE TABLE `change_diamond` (
  `id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `change_spinner`
--

CREATE TABLE `change_spinner` (
  `id` int(11) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date_change` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `code_update`
--

CREATE TABLE `code_update` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `percent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `code_update`
--

INSERT INTO `code_update` (`id`, `code`, `percent`) VALUES
(1, 'tpgxe', '20');

-- --------------------------------------------------------

--
-- Table structure for table `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `credit_ufa` varchar(100) NOT NULL,
  `credit_scb` varchar(100) NOT NULL,
  `credit_kbank` varchar(100) NOT NULL,
  `credit_true` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit`
--

INSERT INTO `credit` (`id`, `credit_ufa`, `credit_scb`, `credit_kbank`, `credit_true`) VALUES
(1, '0', '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `id_dp` int(11) NOT NULL,
  `confirm_dp` varchar(100) NOT NULL,
  `username_dp` varchar(100) NOT NULL,
  `amount_dp` varchar(100) NOT NULL,
  `bonus_dp` varchar(100) NOT NULL,
  `phone_dp` varchar(100) NOT NULL,
  `bank_dp` varchar(100) NOT NULL,
  `bankacc_dp` varchar(100) NOT NULL,
  `name_dp` varchar(100) NOT NULL,
  `fileupload` varchar(200) NOT NULL,
  `promotion_dp` varchar(100) NOT NULL,
  `bankin_dp` varchar(100) NOT NULL,
  `turnover` varchar(100) NOT NULL,
  `game_dp` varchar(100) NOT NULL,
  `note_dp` varchar(100) NOT NULL,
  `aff_dp` varchar(100) NOT NULL,
  `ip_dp` varchar(100) NOT NULL,
  `date_check` date NOT NULL,
  `time_check` time NOT NULL,
  `fromAccount` varchar(100) NOT NULL,
  `fromTrue` varchar(100) NOT NULL,
  `date_dp` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_check_true` varchar(100) NOT NULL,
  `date_check_kbank` varchar(100) NOT NULL,
  `transDate` varchar(100) NOT NULL,
  `add_dp` varchar(100) NOT NULL,
  `edit_dp` varchar(100) NOT NULL,
  `becoz` varchar(100) NOT NULL,
  `creditbefore` varchar(100) NOT NULL,
  `deposit_alert` varchar(100) NOT NULL,
  `affiliate_dp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `id_dp`, `confirm_dp`, `username_dp`, `amount_dp`, `bonus_dp`, `phone_dp`, `bank_dp`, `bankacc_dp`, `name_dp`, `fileupload`, `promotion_dp`, `bankin_dp`, `turnover`, `game_dp`, `note_dp`, `aff_dp`, `ip_dp`, `date_check`, `time_check`, `fromAccount`, `fromTrue`, `date_dp`, `date_check_true`, `date_check_kbank`, `transDate`, `add_dp`, `edit_dp`, `becoz`, `creditbefore`, `deposit_alert`, `affiliate_dp`) VALUES
(1, 2, 'หมดเวลา', 'prHot', 'ไม่สำเร็จ', '200', '0805147731', 'ธ.ไทยพาณิชย์', '4069156795', 'นาย เฉลิมพล เผ่ากสิกร', '', 'ฝาก200รับ400 ฝากขั้นต่ำ200เท่านั้น', '', '800', '', '', '', '', '0000-00-00', '00:00:00', '', '0805147731', '2023-08-13 09:53:00', '', '', '', 'ผู้ดูแลระบบ', 'ผู้ดูแลระบบ', '', '0', '', ''),
(2, 8, 'ยกเลิก', 'GPDJh', '50', '50', '0820130832', 'ธ.กสิกรไทย', '0683322067', 'นาย ชัยพร แก้วทับ', '', 'สมาชิกใหม่รับ 50เปอร์เซ็น เล่นได้ทุกอย่าง', '', '5', '', '', '', '', '0000-00-00', '00:00:00', '', '0820130832', '2023-08-16 15:22:16', '', '', '', '', '', '', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `gifttruewallet`
--

CREATE TABLE `gifttruewallet` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Informer` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `datetrue` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history_diamond`
--

CREATE TABLE `history_diamond` (
  `id` int(11) NOT NULL,
  `reward` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ไม่ได้รับรางวัล',
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history_diamond`
--

INSERT INTO `history_diamond` (`id`, `reward`, `username`, `phone`, `name`, `date_time`) VALUES
(6, '1', 'y6fx7', '123123', 'ทนงทวย คงควรคอย', '2023-08-22 15:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `history_spin`
--

CREATE TABLE `history_spin` (
  `id` int(11) NOT NULL,
  `reward` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ไม่ได้รับรางวัล',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logadmin`
--

CREATE TABLE `logadmin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datelogin` timestamp NOT NULL DEFAULT current_timestamp(),
  `Ipaddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logadmin`
--

INSERT INTO `logadmin` (`id`, `name`, `datelogin`, `Ipaddress`) VALUES
(1, 'ผู้ดูแลระบบ', '2023-08-04 18:53:10', '223.206.233.36');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_mb` int(11) NOT NULL,
  `username_mb` varchar(100) NOT NULL,
  `username_mb_old` varchar(100) NOT NULL,
  `password_mb` varchar(100) NOT NULL,
  `phone_mb` varchar(100) NOT NULL,
  `phone_true` varchar(100) NOT NULL,
  `bank_mb` varchar(100) NOT NULL,
  `bankacc_mb` varchar(100) NOT NULL,
  `name_mb` varchar(100) NOT NULL,
  `status_mb` varchar(100) NOT NULL,
  `confirm_mb` varchar(100) NOT NULL,
  `aff` varchar(100) NOT NULL,
  `date_mb` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `password_ufa` varchar(100) NOT NULL,
  `add_mb` varchar(100) NOT NULL,
  `edit_mb` varchar(100) NOT NULL,
  `creditspin` varchar(100) NOT NULL DEFAULT '0',
  `point` varchar(100) NOT NULL DEFAULT '0',
  `diamond` varchar(50) NOT NULL DEFAULT '0',
  `name_eng` varchar(100) NOT NULL,
  `active_mb` varchar(100) NOT NULL,
  `affiliate` varchar(100) NOT NULL,
  `status_affiliate` enum('เปิด','ปิด') NOT NULL DEFAULT 'ปิด',
  `percent_affiliate` varchar(100) NOT NULL DEFAULT '0',
  `username_pg` varchar(100) NOT NULL,
  `lock_pg` varchar(100) NOT NULL DEFAULT 'ล็อค'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_mb`, `username_mb`, `username_mb_old`, `password_mb`, `phone_mb`, `phone_true`, `bank_mb`, `bankacc_mb`, `name_mb`, `status_mb`, `confirm_mb`, `aff`, `date_mb`, `status`, `ip`, `password_ufa`, `add_mb`, `edit_mb`, `creditspin`, `point`, `diamond`, `name_eng`, `active_mb`, `affiliate`, `status_affiliate`, `percent_affiliate`, `username_pg`, `lock_pg`) VALUES
(143, 'daREy', '', '0995556666', '0995556666', '0995556666', 'ธ.กรุงไทย', '0995556666', '0995556666', '2', '1', '', '2023-09-20 02:06:51', '', '171.5.222.86', 'aa123456', 'MEMBER', '', '0', '0', '0', '', '', '', 'ปิด', '0', 'MRzt2DH', 'ล็อค');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `name_pro` varchar(200) NOT NULL,
  `time_pro` varchar(100) NOT NULL,
  `fileupload_pro` varchar(200) NOT NULL,
  `dp_pro` varchar(100) NOT NULL,
  `bonus_pro` varchar(100) NOT NULL,
  `bonusper_pro` varchar(100) NOT NULL,
  `games_pro` varchar(100) NOT NULL,
  `turn_pro` varchar(100) NOT NULL,
  `rules_pro` varchar(1000) NOT NULL,
  `wd_pro` varchar(100) NOT NULL,
  `max_pro` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status_pro` varchar(100) NOT NULL,
  `showpic` varchar(100) NOT NULL,
  `choose_turn` varchar(100) NOT NULL,
  `SLOT` varchar(100) NOT NULL,
  `CASINO` varchar(100) NOT NULL,
  `FISH` varchar(100) NOT NULL,
  `POKDENG` varchar(100) NOT NULL,
  `auto_wd` varchar(100) NOT NULL,
  `SPORT` varchar(100) NOT NULL,
  `PG` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reportkbank`
--

CREATE TABLE `reportkbank` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `fromacc` varchar(100) NOT NULL,
  `toacc` varchar(100) NOT NULL,
  `frombank` varchar(100) NOT NULL,
  `tobank` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `fromname` varchar(100) NOT NULL,
  `toname` varchar(100) NOT NULL,
  `TransactionDate` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reportkbank`
--

INSERT INTO `reportkbank` (`id`, `code`, `amount`, `fromacc`, `toacc`, `frombank`, `tobank`, `type`, `fromname`, `toname`, `TransactionDate`, `date`, `status`) VALUES
(1, '001_20230807_014B036274CDB00D6EE,A,CR,N', '10', 'xxx-x-x9635-x', '', 'ธ.ไทยพาณิชย์', '', 'รับโอนเงิน', 'MR. SOE L', '', '1691424849', '2023-08-07 16:14:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `reportscb`
--

CREATE TABLE `reportscb` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `details` varchar(100) NOT NULL,
  `date_check` varchar(100) NOT NULL,
  `time_check` varchar(100) NOT NULL,
  `bank_acc` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bank_num` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reportscb`
--

INSERT INTO `reportscb` (`id`, `type`, `amount`, `details`, `date_check`, `time_check`, `bank_acc`, `name`, `bank_num`, `status`) VALUES
(1, 'ฝากเงิน', '1', 'กรุงเทพ (BBL) /X959645', '2023-09-09', '01:21:09.000', 'กรุงเทพ', '', '959645', '');

-- --------------------------------------------------------

--
-- Table structure for table `reporttrue`
--

CREATE TABLE `reporttrue` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `trueacc` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `datetrue` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status_add` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name_web` varchar(100) NOT NULL,
  `link_web` varchar(100) NOT NULL,
  `link_aff` varchar(200) NOT NULL,
  `logo_web` varchar(200) NOT NULL,
  `pic_favicon` varchar(200) NOT NULL,
  `pic_favicon_icon` varchar(200) NOT NULL,
  `slide_1` varchar(1000) NOT NULL,
  `slide_2` varchar(1000) NOT NULL,
  `lineoa` varchar(200) NOT NULL,
  `lineregister` varchar(200) NOT NULL,
  `linedeposit` varchar(200) NOT NULL,
  `linewithdraw` varchar(200) NOT NULL,
  `cashback` varchar(100) NOT NULL,
  `affcashback` varchar(100) NOT NULL,
  `set_dp` varchar(100) NOT NULL,
  `set_wd` varchar(100) NOT NULL,
  `rules` varchar(5000) NOT NULL,
  `status_auto` varchar(100) NOT NULL,
  `max_autowd` varchar(100) NOT NULL,
  `status_auto2` varchar(100) NOT NULL,
  `status_web` varchar(100) NOT NULL,
  `reward1` varchar(50) NOT NULL,
  `reward2` varchar(50) NOT NULL,
  `reward3` varchar(50) NOT NULL,
  `reward4` varchar(50) NOT NULL,
  `reward5` varchar(50) NOT NULL,
  `reward6` varchar(50) NOT NULL,
  `reward7` varchar(50) NOT NULL,
  `reward8` varchar(50) NOT NULL,
  `Change1` varchar(50) NOT NULL,
  `Change2` varchar(50) NOT NULL,
  `Change3` varchar(50) NOT NULL,
  `Change4` varchar(50) NOT NULL,
  `Change5` varchar(50) NOT NULL,
  `Change6` varchar(50) NOT NULL,
  `Change7` varchar(50) NOT NULL,
  `Change8` varchar(50) NOT NULL,
  `Image1` varchar(50) NOT NULL,
  `Image2` varchar(50) NOT NULL,
  `Image3` varchar(50) NOT NULL,
  `Image4` varchar(50) NOT NULL,
  `Image5` varchar(50) NOT NULL,
  `Image6` varchar(50) NOT NULL,
  `Image7` varchar(50) NOT NULL,
  `Image8` varchar(50) NOT NULL,
  `ImageCenter` varchar(50) NOT NULL,
  `dp_creditspin` varchar(100) NOT NULL,
  `change_point` varchar(100) NOT NULL,
  `change_diamond` text NOT NULL,
  `theme_admin` varchar(100) NOT NULL,
  `turn_cashback` varchar(100) NOT NULL,
  `turn_withdrawaff` varchar(100) NOT NULL,
  `BalanceRemain` varchar(100) NOT NULL,
  `truewallet_vacher` varchar(100) NOT NULL,
  `linecancle` varchar(100) NOT NULL,
  `status_pg` enum('เปิด','ปิด') NOT NULL,
  `seo_keywords` text NOT NULL,
  `seo_description` text NOT NULL,
  `seo_author` text NOT NULL,
  `message1` text NOT NULL,
  `message2` text NOT NULL,
  `plan_aff` varchar(100) NOT NULL,
  `linedepositscb` varchar(100) NOT NULL,
  `linedeposittrue` varchar(100) NOT NULL,
  `lineadmin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name_web`, `link_web`, `link_aff`, `logo_web`, `pic_favicon`, `pic_favicon_icon`, `slide_1`, `slide_2`, `lineoa`, `lineregister`, `linedeposit`, `linewithdraw`, `cashback`, `affcashback`, `set_dp`, `set_wd`, `rules`, `status_auto`, `max_autowd`, `status_auto2`, `status_web`, `reward1`, `reward2`, `reward3`, `reward4`, `reward5`, `reward6`, `reward7`, `reward8`, `Change1`, `Change2`, `Change3`, `Change4`, `Change5`, `Change6`, `Change7`, `Change8`, `Image1`, `Image2`, `Image3`, `Image4`, `Image5`, `Image6`, `Image7`, `Image8`, `ImageCenter`, `dp_creditspin`, `change_point`, `change_diamond`, `theme_admin`, `turn_cashback`, `turn_withdrawaff`, `BalanceRemain`, `truewallet_vacher`, `linecancle`, `status_pg`, `seo_keywords`, `seo_description`, `seo_author`, `message1`, `message2`, `plan_aff`, `linedepositscb`, `linedeposittrue`, `lineadmin`) VALUES
(1, '!!', '!!', '!!', 'https://maru888.com/assets/img/logo.png', '/assets/img/favicon.png', '/assets/img/favicon.ico', '!! บริการครบวงจร ระบบออโต้ ตลอด 24 ชม.', '', '', '', '', '', '5', '3', '1', '1', '', 'เปิด', '1500', 'เปิด', 'เปิด', '1', '2', '3', '4', '5', '6', 'IPhone', 'IPad', '100', '0', '0', '0', '0', '0', '0', '0', 'assets/spinner/img/1.png', 'assets/spinner/img/2.png', 'assets/spinner/img/3.png', 'assets/spinner/img/4.png', 'assets/spinner/img/5.png', 'assets/spinner/img/6.png', 'assets/spinner/img/iphone.png', 'assets/spinner/img/ipad.png', 'https://maru888.com/assets/img/logo.png', '300', '5', '0.5', '1', '2', '3', '5', '', '', 'ปิด', '!! สล็อตออนไลน์, ฝาก-ถอนขั้นไม่มีขั่นต่ำ, รองรับทรูวอเล็ต, รองรับ truewallet, สล็อตออนไลน์, สล็อต, แตกง่าย, กระเป๋าเดียว, ไม่ต้องโยกเงิน, สล็อตฟรี, เครดิตฟรี, แจกเครดิตฟรี, สล็อตแจกเครดิตฟรี', '!! สล็อตออนไลน์ แตกง่าย กระเป๋าเดียว ไม่ต้องโยกเงิน ฝากถอนออโต้ แอดมินดูแล 24 ชั่วโมง รองรับทรูวอเล็ต - รองรับtruewallet ฝาก-ถอนขั้นไม่มีขั่นต่ำ maxbet456.com maxbet456 สล็อตออนไลน์ สล็อต  ออนไลน์ maxbet456เครดิตฟรี  สล็อต สล็อตฟรี สล็อตออนไลน์ 2023 เครดิตฟรี สล็อตแจกเครดิตฟรี', '!!', '', '', 'รายวัน', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_bank`
--

CREATE TABLE `status_bank` (
  `id` int(11) NOT NULL,
  `name_bank` text COLLATE utf8_unicode_ci NOT NULL,
  `status_bank` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status_bank`
--

INSERT INTO `status_bank` (`id`, `name_bank`, `status_bank`) VALUES
(1, 'Kbank', 'ปิด'),
(2, 'SCB', 'ปิด'),
(3, 'TrueWallet', 'ปิด');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `id_wd` int(11) NOT NULL,
  `username_wd` varchar(100) NOT NULL,
  `confirm_wd` varchar(100) NOT NULL,
  `amount_wd` varchar(100) NOT NULL,
  `amount_cashback` varchar(100) NOT NULL,
  `phone_wd` varchar(100) NOT NULL,
  `bank_wd` varchar(100) NOT NULL,
  `bankacc_wd` varchar(100) NOT NULL,
  `name_wd` varchar(100) NOT NULL,
  `date_wd` timestamp NOT NULL DEFAULT current_timestamp(),
  `note_wd` varchar(100) NOT NULL,
  `bankout_wd` varchar(100) NOT NULL,
  `game_wd` varchar(100) NOT NULL,
  `pin_wd` varchar(100) NOT NULL,
  `lastpro` varchar(100) NOT NULL,
  `add_wd` varchar(100) NOT NULL,
  `edit_wd` varchar(100) NOT NULL,
  `aff_wd` varchar(100) NOT NULL,
  `withdraw_alert` varchar(100) NOT NULL,
  `affiliate_wd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawaff`
--

CREATE TABLE `withdrawaff` (
  `id` int(11) NOT NULL,
  `id_aff` int(11) NOT NULL,
  `username_aff` varchar(100) NOT NULL,
  `confirm_aff` varchar(100) NOT NULL,
  `amount_aff` varchar(100) NOT NULL,
  `phone_aff` varchar(100) NOT NULL,
  `bank_aff` varchar(100) NOT NULL,
  `bankacc_aff` varchar(100) NOT NULL,
  `name_aff` varchar(100) NOT NULL,
  `date_aff` timestamp NOT NULL DEFAULT current_timestamp(),
  `note_aff` varchar(100) NOT NULL,
  `bankout_aff` varchar(100) NOT NULL,
  `timetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_ad`);

--
-- Indexes for table `affiliate`
--
ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_diamond`
--
ALTER TABLE `change_diamond`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_spinner`
--
ALTER TABLE `change_spinner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_update`
--
ALTER TABLE `code_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifttruewallet`
--
ALTER TABLE `gifttruewallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_diamond`
--
ALTER TABLE `history_diamond`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_spin`
--
ALTER TABLE `history_spin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logadmin`
--
ALTER TABLE `logadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_mb`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportkbank`
--
ALTER TABLE `reportkbank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportscb`
--
ALTER TABLE `reportscb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reporttrue`
--
ALTER TABLE `reporttrue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_bank`
--
ALTER TABLE `status_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawaff`
--
ALTER TABLE `withdrawaff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_ad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `affiliate`
--
ALTER TABLE `affiliate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `change_diamond`
--
ALTER TABLE `change_diamond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `change_spinner`
--
ALTER TABLE `change_spinner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `code_update`
--
ALTER TABLE `code_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gifttruewallet`
--
ALTER TABLE `gifttruewallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_diamond`
--
ALTER TABLE `history_diamond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `history_spin`
--
ALTER TABLE `history_spin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logadmin`
--
ALTER TABLE `logadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_mb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `reportkbank`
--
ALTER TABLE `reportkbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reportscb`
--
ALTER TABLE `reportscb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reporttrue`
--
ALTER TABLE `reporttrue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `status_bank`
--
ALTER TABLE `status_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawaff`
--
ALTER TABLE `withdrawaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
