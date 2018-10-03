-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 04:16 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawon`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_version`
--

CREATE TABLE `app_version` (
  `id` bigint(20) NOT NULL,
  `version_code` int(11) NOT NULL,
  `version_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_version`
--

INSERT INTO `app_version` (`id`, `version_code`, `version_name`, `active`, `created_at`, `last_update`) VALUES
(1, 1, '1', 1, 1484386275760, 1485795959275),
(2, 2, '2.0', 1, 1485795799112, 1505380308393);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `brief` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`, `draft`, `brief`, `color`, `priority`, `created_at`, `last_update`) VALUES
(3, 'Minuman', 'Service & Food.png', 0, 'Minuman hangat dan dingin dengan berbagai menu baru setiap harinya.', '#ff6f52', 7, 1485609656784, 1537583904038),
(4, 'Makanan', 'Makanan.png', 0, 'Berbagai kuliner makanan sedap dan terbaru ditambah diskon gilaaa.', '#8ddd6f', 6, 1485609722495, 1537584010367),
(5, 'Daging', 'Daging.png', 0, 'Pilihan daging segar berkualitas.', '#da8325', 8, 1537595975190, 1537596604801),
(6, 'Buah', 'Buah.png', 0, 'Berbagai macam buah - buahan segar dipetik langsung dari para petani.', '#69b14d', 9, 1537596071898, 1537596071898),
(7, 'Sayur', 'Sayur.png', 0, 'Sayur - sayuran masih fresh langsung diambil dari para petani.', '#1993c1', 10, 1537596145222, 1537596145222),
(8, 'Rempah - rempah', 'Rempah  rempah.png', 0, 'Rempah - rempah pilihan dan berkualitas dengan harga terjangkau.', '#dddc1d', 1, 1537596199385, 1537596815139);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `code` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`code`, `value`) VALUES
('CURRENCY', 'IDR'),
('FEATURED_NEWS', '5'),
('SHIPPING', '[\"JNE\",\"TIKI\"]'),
('TAX', '0');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `code`, `name`) VALUES
(1, 'AFA', 'Afghanistan afghani'),
(2, 'ALL', 'Albanian lek'),
(3, 'DZD', 'Algerian dinar'),
(4, 'AOR', 'Angolan kwanza reajustado'),
(5, 'ARS', 'Argentine peso'),
(6, 'AMD', 'Armenian dram'),
(7, 'AWG', 'Aruban guilder'),
(8, 'AUD', 'Australian dollar'),
(9, 'AZN', 'Azerbaijanian new manat'),
(10, 'BSD', 'Bahamian dollar'),
(11, 'BHD', 'Bahraini dinar'),
(12, 'BDT', 'Bangladeshi taka'),
(13, 'BBD', 'Barbados dollar'),
(14, 'BYN', 'Belarusian ruble'),
(15, 'BZD', 'Belize dollar'),
(16, 'BMD', 'Bermudian dollar'),
(17, 'BTN', 'Bhutan ngultrum'),
(18, 'BOB', 'Bolivian boliviano'),
(19, 'BWP', 'Botswana pula'),
(20, 'BRL', 'Brazilian real'),
(21, 'GBP', 'British pound'),
(22, 'BND', 'Brunei dollar'),
(23, 'BGN', 'Bulgarian lev'),
(24, 'BIF', 'Burundi franc'),
(25, 'KHR', 'Cambodian riel'),
(26, 'CAD', 'Canadian dollar'),
(27, 'CVE', 'Cape Verde escudo'),
(28, 'KYD', 'Cayman Islands dollar'),
(29, 'XOF', 'CFA franc BCEAO'),
(30, 'XAF', 'CFA franc BEAC'),
(31, 'XPF', 'CFP franc'),
(32, 'CLP', 'Chilean peso'),
(33, 'CNY', 'Chinese yuan renminbi'),
(34, 'COP', 'Colombian peso'),
(35, 'KMF', 'Comoros franc'),
(36, 'CDF', 'Congolese franc'),
(37, 'CRC', 'Costa Rican colon'),
(38, 'HRK', 'Croatian kuna'),
(39, 'CUP', 'Cuban peso'),
(40, 'CZK', 'Czech koruna'),
(41, 'DKK', 'Danish krone'),
(42, 'DJF', 'Djibouti franc'),
(43, 'DOP', 'Dominican peso'),
(44, 'XCD', 'East Caribbean dollar'),
(45, 'EGP', 'Egyptian pound'),
(46, 'SVC', 'El Salvador colon'),
(47, 'ERN', 'Eritrean nakfa'),
(48, 'EEK', 'Estonian kroon'),
(49, 'ETB', 'Ethiopian birr'),
(50, 'EUR', 'EU euro'),
(51, 'FKP', 'Falkland Islands pound'),
(52, 'FJD', 'Fiji dollar'),
(53, 'GMD', 'Gambian dalasi'),
(54, 'GEL', 'Georgian lari'),
(55, 'GHS', 'Ghanaian new cedi'),
(56, 'GIP', 'Gibraltar pound'),
(57, 'XAU', 'Gold (ounce)'),
(58, 'XFO', 'Gold franc'),
(59, 'GTQ', 'Guatemalan quetzal'),
(60, 'GNF', 'Guinean franc'),
(61, 'GYD', 'Guyana dollar'),
(62, 'HTG', 'Haitian gourde'),
(63, 'HNL', 'Honduran lempira'),
(64, 'HKD', 'Hong Kong SAR dollar'),
(65, 'HUF', 'Hungarian forint'),
(66, 'ISK', 'Icelandic krona'),
(67, 'XDR', 'IMF special drawing right'),
(68, 'INR', 'Indian rupee'),
(69, 'IDR', 'Indonesian rupiah'),
(70, 'IRR', 'Iranian rial'),
(71, 'IQD', 'Iraqi dinar'),
(72, 'ILS', 'Israeli new shekel'),
(73, 'JMD', 'Jamaican dollar'),
(74, 'JPY', 'Japanese yen'),
(75, 'JOD', 'Jordanian dinar'),
(76, 'KZT', 'Kazakh tenge'),
(77, 'KES', 'Kenyan shilling'),
(78, 'KWD', 'Kuwaiti dinar'),
(79, 'KGS', 'Kyrgyz som'),
(80, 'LAK', 'Lao kip'),
(81, 'LVL', 'Latvian lats'),
(82, 'LBP', 'Lebanese pound'),
(83, 'LSL', 'Lesotho loti'),
(84, 'LRD', 'Liberian dollar'),
(85, 'LYD', 'Libyan dinar'),
(86, 'LTL', 'Lithuanian litas'),
(87, 'MOP', 'Macao SAR pataca'),
(88, 'MKD', 'Macedonian denar'),
(89, 'MGA', 'Malagasy ariary'),
(90, 'MWK', 'Malawi kwacha'),
(91, 'MYR', 'Malaysian ringgit'),
(92, 'MVR', 'Maldivian rufiyaa'),
(93, 'MRO', 'Mauritanian ouguiya'),
(94, 'MUR', 'Mauritius rupee'),
(95, 'MXN', 'Mexican peso'),
(96, 'MDL', 'Moldovan leu'),
(97, 'MNT', 'Mongolian tugrik'),
(98, 'MAD', 'Moroccan dirham'),
(99, 'MZN', 'Mozambique new metical'),
(100, 'MMK', 'Myanmar kyat'),
(101, 'NAD', 'Namibian dollar'),
(102, 'NPR', 'Nepalese rupee'),
(103, 'ANG', 'Netherlands Antillian guilder'),
(104, 'NZD', 'New Zealand dollar'),
(105, 'NIO', 'Nicaraguan cordoba oro'),
(106, 'NGN', 'Nigerian naira'),
(107, 'KPW', 'North Korean won'),
(108, 'NOK', 'Norwegian krone'),
(109, 'OMR', 'Omani rial'),
(110, 'PKR', 'Pakistani rupee'),
(111, 'XPD', 'Palladium (ounce)'),
(112, 'PAB', 'Panamanian balboa'),
(113, 'PGK', 'Papua New Guinea kina'),
(114, 'PYG', 'Paraguayan guarani'),
(115, 'PEN', 'Peruvian nuevo sol'),
(116, 'PHP', 'Philippine peso'),
(117, 'XPT', 'Platinum (ounce)'),
(118, 'PLN', 'Polish zloty'),
(119, 'QAR', 'Qatari rial'),
(120, 'RON', 'Romanian new leu'),
(121, 'RUB', 'Russian ruble'),
(122, 'RWF', 'Rwandan franc'),
(123, 'SHP', 'Saint Helena pound'),
(124, 'WST', 'Samoan tala'),
(125, 'STD', 'Sao Tome and Principe dobra'),
(126, 'SAR', 'Saudi riyal'),
(127, 'RSD', 'Serbian dinar'),
(128, 'SCR', 'Seychelles rupee'),
(129, 'SLL', 'Sierra Leone leone'),
(130, 'XAG', 'Silver (ounce)'),
(131, 'SGD', 'Singapore dollar'),
(132, 'SBD', 'Solomon Islands dollar'),
(133, 'SOS', 'Somali shilling'),
(134, 'ZAR', 'South African rand'),
(135, 'KRW', 'South Korean won'),
(136, 'LKR', 'Sri Lanka rupee'),
(137, 'SDG', 'Sudanese pound'),
(138, 'SRD', 'Suriname dollar'),
(139, 'SZL', 'Swaziland lilangeni'),
(140, 'SEK', 'Swedish krona'),
(141, 'CHF', 'Swiss franc'),
(142, 'SYP', 'Syrian pound'),
(143, 'TWD', 'Taiwan New dollar'),
(144, 'TJS', 'Tajik somoni'),
(145, 'TZS', 'Tanzanian shilling'),
(146, 'THB', 'Thai baht'),
(147, 'TOP', 'Tongan paanga'),
(148, 'TTD', 'Trinidad and Tobago dollar'),
(149, 'TND', 'Tunisian dinar'),
(150, 'TRY', 'Turkish lira'),
(151, 'TMT', 'Turkmen new manat'),
(152, 'AED', 'UAE dirham'),
(153, 'UGX', 'Uganda new shilling'),
(154, 'XFU', 'UIC franc'),
(155, 'UAH', 'Ukrainian hryvnia'),
(156, 'UYU', 'Uruguayan peso uruguayo'),
(157, 'USD', 'US dollar'),
(158, 'UZS', 'Uzbekistani sum'),
(159, 'VUV', 'Vanuatu vatu'),
(160, 'VEF', 'Venezuelan bolivar fuerte'),
(161, 'VND', 'Vietnamese dong'),
(162, 'YER', 'Yemeni rial'),
(163, 'ZMK', 'Zambian kwacha'),
(164, 'ZWL', 'Zimbabwe dollar');

-- --------------------------------------------------------

--
-- Table structure for table `fcm`
--

CREATE TABLE `fcm` (
  `id` bigint(20) NOT NULL,
  `device` varchar(100) NOT NULL,
  `os_version` varchar(100) NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `serial` varchar(100) NOT NULL,
  `regid` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fcm`
--

INSERT INTO `fcm` (`id`, `device`, `os_version`, `app_version`, `serial`, `regid`, `created_at`, `last_update`) VALUES
(4, 'Device Name', '6.0.1', '1.0', 'GGC00C0888E426A', 'APA91bEj7qmlVePXUpG4UjKOtyqG5x9hpeZ4tMhPDsJgDRWL76psPGtckLK3uMtmpLFj3RSFfgaVoBMCKhg5iR8RnPZPjeuml8Llgkc', 0, 0),
(6, 'Sony D5833', '6.0.1', '2 (2.0)', 'YT910ZTA30', 'cGGE0boSgU4:APA91bEqGDFSwCMT9pFhD50bKgXfq7hn-y8fiQapoRiO_f7PqbVwx0AZ--Adfb4eSqYT7gbjn3xY2VwpzhLZwxAYRoy0Rvv6itDzPa1t_sXeGo92Bsp2GbbBfOVuaxwdo6UKNoX97WX7', 1505379933886, 1505394077036),
(7, 'LENOVO Lenovo A2010-a', '5.1', '2 (2.0)', 'HNC00UL5', 'fokEOCpBwBM:APA91bFXL9LBBHTTU7lsg6fuJihpOrK7qS8WZGgzmR22ITKlvmqKTlLELWAQkUZbs0fkMY1wCfTvE0aVkDSfhDinxuO3Ac1hG8RT3kIeQpeMOn4PtZhZ56iNKEr8RdWvSdD5njOxUB02', 1505386302437, 1505386302437),
(8, 'samsung SM-A710F', '6.0.1', '2 (2.0)', '3300bcc84041a281', 'cLpPI-RAbEs:APA91bHUFR8OvpZrMgwoyvWauzI01uLsYVt7l89PlMda_CQxi0TryfziBXiBwtk2US2M6RgitDVbDnumHIizTrAmh2mnF0vgJdwA-8ZShPqf8OGDdatHk-BXQkxMVxR-czkIFRMlp1t7', 1505388867363, 1505412354637),
(9, 'Sony C6603', '5.1.1', '2 (2.0)', 'CB5A1X9HT8', 'fPhyWknQgrs:APA91bHEd2VjCcIMgu_dv16LhkMBSL720tbcjRITlh57OjPKge21UAwUgrHftnvzCau42oeUb2wvycjuZCjhK8lX1nvkNU7PWcUKb85J8HpLmqxOv8fl8Dk1HH17TTLScyCrRx_FLE6T', 1505390748121, 1505390748121),
(10, 'Google Android SDK built for x86', '8.1.0', '2 (2.0)', 'unknown', 'f9PUeBWtBIs:APA91bG1jlWsL1Voicb8GGmPMw1Hi-nm9JSvoJFfZehMkFwe5SK0NRwEGrWTi_5tIlVlJ9kLl1gzfs1Lr-i6rpNrpVQxHGlREfEIcGFOG7vFKCqyPpUfFuPWSE-nUwblyvaNA5bvS2hX', 1520967691199, 1523313355063),
(11, 'HUAWEI MHA-L29', '7.0', '2 (2.0)', '5RE0217120000142', 'fYjkkzustLY:APA91bHa7oJXlHYhvl_4rC_UnkjjFBkiZzUfPuRuU3eixtv6uotRMdI3RgkWtQ1c6dxSeAWkccGFoRn3-i3nVh6Az9v8NHU_BWfW9grjSw_oY6pQj1vYKRzO5khIsIJIZe6cKJ3sZ9AZ', 1520979045110, 1520979045110),
(12, 'Sony G8142', '7.1.1', '2 (2.0)', 'CB512EH6SV', 'fAZXIm-yuYw:APA91bGIRz_wjv5pzizKbTX6V2hphNrq9to2KQfmKFHfhxzxXHpnj3PMnbizhexuKcDn-79L6f2hgnt81j9RUARanC31Iv1LpqU9efoIBMDVX1dmnAN350jDmBBhqMeUGoGK1Ek91TLg', 1520979055054, 1520979055054),
(13, 'samsung SM-G935F', '6.0.1', '2 (2.0)', 'ad011702066a334328', 'dEiVKkSndAY:APA91bEm5aDb44Ol6HNzovSmou9qsNFF3bm0tw50-PZCwD_jajls4-InBO7WA6y3O0hrpzz8hMAaHtak2jV1wWgTXfNMVKQQGXoQV3UQQAs_IDpQbjNCI0vU0u727EX5Ufpyr-VbrIIV', 1520979056276, 1520979056276),
(14, 'samsung SM-G935F', '6.0.1', '2 (2.0)', 'ad01170206812f3369', 'cP0YNhW7asE:APA91bH1S-lp4tsRLlKKTH2Y5LBFLa5Nb9lcIC_Z4UWmGCCsHwkQITKnXlPkK3cPoXegq_efFRomuhqn_-WMJpwWFEVipUT6uY67-9_H_P8_z1zsjOtlXXGHQ2seCeG9cOCoMxtMdw6a', 1520979069670, 1520979069670),
(15, 'LGE LGUS997', '7.0', '2 (2.0)', 'LGUS99718f9c737', 'eNexj7J2DsA:APA91bHDJ2GoiuZ8aWbYw47K1qTuZLaVK_wyRYHehe3ASMgdNhiemyPeggHfqZDQgfEwYFmoZfCn-nl5EoCWVVUng5py1OAqfHAE-muZ-R8DcRuKN-sGaGC7LTCMaDSnw0uvr3bZ1pMP', 1520979073199, 1520979073199),
(16, 'HUAWEI ALE-L23', '5.0.1', '2 (2.0)', 'G7T7N17922000395', 'doyPV1pKZzY:APA91bEYSGH6qufE74Ny786nJRSu0agVuWhLRbbWVwkwP-4xV3d9oxuklh3N9bsHlqTjIUcLQ-vRXWWgqqnFALYsyMNGI8XkeQKioKQdhnPMrW2r5EWCVAUC6B457nCzRIZh14Qcbmmm', 1520979073256, 1520979073256),
(17, 'motorola Moto G Play', '6.0.1', '2 (2.0)', 'ZY2245C76G', 'dQUUx6y63mY:APA91bF8Vn7LYl9BJa8QHxAZjpFq8wN80u63h1ygx1t88nl1VRFekN9Crc4w7004Lxhv_uwTYcFMuCxHOGzm_jNfUYNip2SdpgB2P1QtHUCwZr1mXMDB7XQUErPP9h1EZUzlJDySli3Y', 1520980381347, 1520980381347),
(18, 'asus ASUS_X00DD', '7.1.1', '2 (2.0)', 'GCAXHM04B4757AW', 'fTGnRSRoAuw:APA91bEgGRsECDcnizh967kOKZ9NISg3lPyWgJQO7Wtp2Pe7TFjUgwCdFqUppUg59qpFcRCbkDFoc2zYbqlWsog7FOH76DZAHXXN1LnsbZG9IXd4hZGJ803vfb80tlEorUm73l7ewvGE', 1520981488397, 1520981488397),
(19, 'Sony C6903', '4.4.4', '2 (2.0)', 'CB5126E7HJ', 'f4uoqqP13hk:APA91bGK_ltUdCKjt0bZirX1V3reGbOxK0tWsJ8wvGFPhU1OkfytIXvG6FB5tFnqRoKreQaeHancDRt9VmP6KA_mPOqx1toJBPfCcax0Ah7oecpJZJ_6vYV5eGeMrj8lPZvbMXJVsov1', 1520999138462, 1520999138462),
(20, 'Google Pixel', '7.1.1', '2 (2.0)', 'FA68P0304839', 'cJYe0px0jKA:APA91bHOHxKmvCXMd7KNZ5CTGqPAEvPlFMzw7J0qusroSCz86_suaFqfKqQ87bEs2t_cU7wqa2VT3U4Q4c2PUBL9jaE1zxJZt_h3kz1UmryrEmSA0qz2r5duonVjO_sE8v0mLR0IYBot', 1520999439111, 1520999439111),
(21, 'OPPO A1601', '5.1', '2 (2.0)', 'SSVWDYSO9TWGLZ5H', 'clCPZFrTz9c:APA91bHGuadmv_Te-mcQxzxoYb6DbOYEC6zMiZrz6o63TWXgGdxtgp6GArAumuOxBm_c0kb4QbICTohLeHx3-in3EwnHIcTF0cpriXduL-adhf-nM8KcSojGvPjkNPvWlYBd7eDXNjHU', 1521005385453, 1521005385453),
(22, 'samsung SM-C900F', '7.1.1', '2 (2.0)', 'a8df59c2', 'dSYBFhAQ2x0:APA91bHimCbTHHIUBrw8nXF9exUgtsOWugxPvl4Jx60WRtc366c4J8rYBsYkVKdbQ3D1AW0gp1oEm33DIkUbIxaty6jpo-I-n7ZWcUMA8ja7oMxA6opH7rIEaYlr9Tcr0cgipQtekIvf', 1521054395027, 1521054395027),
(23, 'asus ASUS_X00DDB', '7.1.1', '2 (2.0)', 'H1AXGF043847CG8', 'ccuNwn27lL4:APA91bGbVHe99Qr_p_kNG--Bl4I7vQt2HijIU299kk2Pa1b7Ft5migkHri2iNdALOJhqs5ORrQzfUM96oMLR7sbxHu50zs2NbdeubqM_n_GApl-0jM_EIore90cuCTrxzY77oBXSQf3w', 1521139033519, 1521139033519),
(24, 'samsung SM-A310F', '7.0', '2 (2.0)', '52031aeaece4932d', 'ciH3fuqPK0A:APA91bG5rTERNAf6L6Rw6Mk8Ee85SZIQOnrjbC5YRDhxLkNZHtBfqQnll5xdFFBnpURgjOyX7eazDgtibsByAUYz-OY-qqJv_F9iKir8xA3aCE04NhFMQ_CFXfKl0buwFc_MURVv0gH5', 1521189778228, 1521189778228),
(25, 'vivo 1601', '6.0', '2 (2.0)', 'CMSSDMFAEMUCDY59', 'dhagNsZ8S6g:APA91bGzeDDSCTS-B67aKC-dQysGJfu98A7zs-oZDY4nJZR-DAWDducEA2zVmVUI6cz8A6nbOrI5ftMHxNMnO8-UTXBraCnOpEcQoNB3og4HZgXQu5emk95fKRMbHDc_cb3UK9gJZN6C', 1521189941018, 1521189941018),
(26, 'samsung GT-I9200', '4.4.2', '2 (2.0)', '9fd4744f', 'f6KNlror70U:APA91bHr8ThoLKAcMsR3TBucqzvtMlZi_uLxSlYbfCoBkoMoloiG04tkrcVkpeipbC4RK9gyXOP15IcRoqdZ3cF57QAZPbjURBFwQ2E5t-2aq6ddMSaOns0QuGT_bdLSkdv9aiYqhcOc', 1521274038333, 1521311794984),
(27, 'LGE Nexus 5X', '6.0.1', '2 (2.0)', '00dbe0db21912b54', 'cOR3Nb7DF84:APA91bHGgUi_7-G6U6ljHjjaFv7Me8yn1BP8Cypq5qrDcAZuEroOauOXDtwQOn03rzNVdXIc8nfuC0zFinJJfP5hSHTWsaWhYUD0KPD3Orb808EMQtFiOGLgOipMaQli2XQzZeB05XAB', 1521429064848, 1521429064848),
(28, 'Xiaomi Redmi Note 4', '7.0', '2 (2.0)', '7a47ac069904', 'dCViXb23V-4:APA91bFfhKYUjH82HjB8nmHPTgByVMVKodHKV8tTQGsZps-hpG981c6zkNzPi5p8UGtQ3BoGkkuENv08uObASEJWFGeWJtHgaVxKmtzpmXEWDEBEa64S_Zs3OYSs10TzWzKofmsVmvNg', 1521458886813, 1521458886813),
(29, 'OPPO A37f', '5.1.1', '2 (2.0)', '69d110d', 'ewbjoGCYEp0:APA91bEkZRzCjYQni7rFbGOFw4RZJzncBGreAEdty7C_eIHjHYhd8xbNWQHRXJpSnTT9hLLjdpzPrY_t18GocGznWyjNhV1IRy1A1w06qqPlhgZ9H_Ferb4NDvMro5qbGDXmCVOxcUE1', 1521467987619, 1521467987619),
(30, 'OPPO A1601', '5.1', '2 (2.0)', 'JV5S5PRKPJPVYDBI', 'f09CM0MdsMQ:APA91bFZSsfgznqa2-7rQKep767oR_JKGTlV93WIlZQy2wcKjmzSMgzn-OlcPjO94d3KZKNbNBxBI0DGFkT4JPTeVoH-etPGDdKkKo1c2HfuF7km513OTvtxVo4OOtWkS2iaKhn2Yz9m', 1521470248045, 1521470248045),
(31, 'samsung SM-J530Y', '7.0', '2 (2.0)', '5200663a4f7015e7', 'eGECgukYgP8:APA91bE-bswPq-p0_UvFtK8iFti635XjoOIV7IDL2v3NKz6utB1aSLL7SZIVgGN4D0HFdL-X2y9vfKc7fOKO4jmF83Z1bv4y9oFNDaOU5guDajdUTiLD8K3KznF0HrlCVZnuODhAIF20', 1521529600533, 1521529600533),
(32, 'asus ASUS_T00J', '4.4.2', '2 (2.0)', 'EBAZCY17P819', 'cLhB2jjL_BY:APA91bGtUKQ3MohQKasQ9ghZVLRim-QdGJsIRkxHZjOkmuPnen1yobXcZmMxh9oP0JaNEcUS_Lk1K6niSrGo7U--w8AqZbMpwOjPOXO74wnOWAuyLD3-rU6ClUJzLT--BOkIFImbd_wJ', 1521558410829, 1521558410829),
(33, 'Xiaomi Redmi 5A', '7.1.2', '2 (2.0)', '96dbde697d94', 'cOOolkFFMBA:APA91bHtZgLAhGgForkfDCwsdNKZ7QCg-WvkMARhXhAE6UA0kNAo4LSKwpWgNVaGE0CiN5Z05qyKz2BvMZcTnKL0WOmbDbILcVR1amDFMME9jA6_tSQeZN_THj5hGdUE1mfCfHu0jvKR', 1521559243275, 1521559243275),
(34, 'Xiaomi Redmi 3S', '6.0.1', '2 (2.0)', 'a04e162a7d63', 'eohKz4XuV5U:APA91bG-jwEKjDvU5zNGSGLYGaIiBBbHq7EOcu5ONEAtVkWswWf2_-ki9JliUSzWoBJ0usLiso6kDN-M5rLWEDH5WAzQN5h_3RroTQ-muKYNH3SwN96Qk_lU1BVGXoKQkEw23GqsL7xW', 1521563384279, 1521563384279),
(35, 'Xiaomi Mi A1', '8.0.0', '2 (2.0)', '7c5043', 'f8HUIQgvmkI:APA91bEwVdOGL36XFgDMeJHSqQskROBKlPnRThoO8fZbQm04FqaWMG-51mMvpF4XnFMY8PynYVZENkhdqYYmWUt1DE0E_21j3HAOKdQYOWvEdsbS-SbTLnno0jpWA1isQLa5VY3dUVYC', 1521594970869, 1521594970869),
(36, 'samsung SM-C710F', '7.1.1', '2 (2.0)', '42001ac2d618a4d7', 'cozU2S6L9c8:APA91bHt0FvI-XyHNd9jNSWvcIjlH0oQFm7kSGlJh3RFTnSv0iF0QwsUU4sLYCuAJPO81K2zyFNS9x_jByHtNBxksv_NqYqy0LwawMCGQTarKkofC2sw16-KvVDVxSNHN0Q6duZmw5Ov', 1521604845770, 1521604845770),
(37, 'samsung SM-G920I', '7.0', '2 (2.0)', '1015faf9e9213105', 'cKhL3EMhfow:APA91bFFHdEUviih7Fntb9FGd3XR--RZ5SzfVJ3Eg_SUZ6V9_4o0Zssj0C02jDCt85pmLeYUIXMfnk8HmWxZsN-Cv9eC5xUmE3YtGGU1I_ZjoEJ-TjwjZju1kLD3YLnwmqZDJefjcaer', 1521605967639, 1521605967639),
(38, 'LENOVO Lenovo A7010a48', '6.0', '2 (2.0)', 'OVQS6T6TD67P9H79', 'd3j-Lt-7qo4:APA91bEk6hC0AjR1PcVsq7OlCzTuXVO6fNGJ7hZO07Hnlploi5v44yfq_aTeWshE7S6yLMMaIbyEgn5ILACHD43xK5DXT8bmGFaYlaTBfvlz4mw_coHwWZP_7r07zSeDc9b0wbYFDb7N', 1521651985184, 1521651985184),
(39, 'Xiaomi Redmi Note 4', '7.0', '2 (2.0)', '21153ca20804', 'd1uoRA625NU:APA91bHDIOAEHZmgFdjkmQTm9hkbFlSLZJuB7LhdpRq_KhJ4oPrqEWGX7bd5Lf5qk-_ocCy_24yHGTWO7VmJYKLTECyXfTOZzqOc4mgEZBIoEGxjC7V6LAEvmfgk7GuYk9iFWsaykWzj', 1521709444598, 1521709444598),
(40, 'samsung SM-G570Y', '7.0', '2 (2.0)', '420017e26a7954a3', 'c6co9POjbJM:APA91bFZqxDJf1iDuNtWWFZ48q4zpUKoNabb31bfNUu_KM5k_h1ltMGM_c7yc7CwCK3b6F4R6QFlwaTB7xGjqb9Typ3zG-BKOglJZv_45tZbqnFoNOkywZcDPdqIY71QOI5VFRn22obV', 1521775743452, 1521775743452),
(41, 'HUAWEI CHM-U01', '6.0', '2 (2.0)', 'A8K4C15911031297', 'dUXwW9aOIvs:APA91bGlmqpJx30djvb00sPxYTsesBHmbe_avClmXkZ6A4KU0nDOodLsreZPKk4kVC33whuQNd4HJ209GbdKWdv0CbloSPcqVbaMcixe6xl8CmZ8CScNii8fgb1mSM2JUVKUYSf9SVKy', 1521778365226, 1521778365226),
(42, 'Hisense Andromax B16C2G', '5.1.1', '2 (2.0)', '92c8e08c', 'e2kp0ZdDwVg:APA91bG8gJ3G4iZYIY8ZAG-adpp_6vu9aEdwavq0JMlM6BxgZXWAl2h7VFhR6KeGooRO_0mgQhc2vOdQjaMtistZXq5bsSzYUinNgcJ7aVydpgOIoLj8BXJufMrXCUs7vB2CmQzEVwE4', 1521808645121, 1522782520594),
(43, 'asus ASUS_X00DDB', '7.1.1', '2 (2.0)', 'GCAXGF03N8873W7', 'f3l8i1rftyg:APA91bFCjG4Vj9Dt66-124eD-4_7CBzyzaSr6bXp8B_2DzLUhRcDbYFVV9Sm0VOlILmioo1B0mivfovWBngaTkwUHTWW0oYeN-SDBUp2NR1YjU_cSpzqrkzdHlLLvVGnQouIRu7no9zx', 1521922512861, 1521922512861),
(44, 'Xiaomi Redmi Note 5A', '7.1.2', '2 (2.0)', '47506af4', 'f1DgjX6DXRE:APA91bGIpMheC2GQOZGzVmtT2mDrcJVbIqy9gMOpbIkuRd9EN7wb-Gh8zKciOQb777lxZzRTSZKuFCzmh2R7ms-L5hu2TKC6DbXpV3X-W32ky0P4j9ZELkobIGKbiFhpmStshfqviwLk', 1521951692554, 1521951692554),
(45, 'LGE Nexus 5X', '6.0.1', '2 (2.0)', '0246dd4c59ac5194', 'c-JeW8VXRpQ:APA91bHJSFVMjNVmwakj6YJ3JhG6izS1pQTkac2FF8r-DyQt8kH69vAUugjsLAsy23jyyGFnpn-ExZyBgYE9_NeRgy65-sDmL9SpyDu7OnP25_xv90kqZbvW6gaGMpJQ1UTA-00-zTvi', 1522036504480, 1522036504480),
(46, 'BlackBerry BBC100-1', '7.1.1', '2 (2.0)', '1163727419', 'dY3ZWd-azms:APA91bGRXo7bhsNzMc0j1cNdRKhY7VjOPniRUsf9BbEeZmUo23DRHqZCoh-q2zngXlJp6TtVJieczS7p9GuwYRY_6D-a0LkhxzjCFVaftewnAqo1cTwV4E-3GIqbQTW8kD3uxB8xO7la', 1522498049750, 1522498049750),
(47, 'Xiaomi Redmi 4A', '6.0.1', '2 (2.0)', '5dfa8db7d140', 'cnsBEwY1uNw:APA91bFvGzxUf_099KntaH_6sK1bJIKq82FFf4DMfWNY65MpY4dyN96xuMMTfcEtlVUYQ1SXLjUmlmjx4YUfxOy75LS9SjI9csEdqgPRaapEJyoLwvynkroXKQNDeAFTb4AKFXGL6VH3', 1522581563370, 1522581563370),
(48, 'asus ASUS_Z008D', '5.0', '2 (2.0)', 'F5AZFG257149', 'cwGErQjTeGA:APA91bHptVvZiXSw20mhQKufKJU3o_xx1yYE0YOy2H5lSmUnr03CP5pgTZdX79kzk4IzJ24qLjHdHCgkBfgFy4-PbIa079Gqd92N0o7-nkO_WnNeftIwdFDbDlcq87z8RxKaqijQ5Y84', 1522781969434, 1522781969434),
(49, 'samsung SM-G313HZ', '4.4.2', '2 (2.0)', '4813886db138324e', 'cie5H8D5BhA:APA91bFWf15HZ5brDXeKO1oEYSxdE-UjkRvwaIV2NsWwaia1UqUfsfo1d4iEVscHMsoqQzLp7CvdzkgDcPs_noqXfG7PFUTbO1SKLt34DGcrveXygkHDjTGK4xf9xdC_RdLKfSP7OmlW', 1523037656612, 1523037656612),
(50, 'samsung SM-G610F', '7.0', '2 (2.0)', '3300b93a2234936f', 'cnHQWuaqPJw:APA91bHJKFZFJeNorW1PXdpcW3d3WtVOQNc9Av8Ks8v4ApG5_F1U4VZUZeeZk_3hBGTe17zWT6TncPM-QUIrP64jxW6sViRNXirQbCjDE88lp5LcufsLlfLWLYH7NFKrdtoIwTFLU-kb', 1523089913987, 1523089913987),
(51, 'samsung SM-J200G', '5.1.1', '2 (2.0)', '42007d3bc820a205', 'ew_4-hJ6lFk:APA91bG0uYvYkfefzxl7rovVbAiUUk2AkMT30TUWiPqtS45RrPqmHEl_T4FlOPAoHyYTLj_54IzE4HFXg7yi-pJgtwieSDOqZhf94iqB4-puPjvkRiQNNl7Tj6x51cK5uKFox8q8fxVH', 1523274282557, 1523274282557),
(52, 'OPPO R7007', '4.4.2', '2 (2.0)', '134699cc', 'fwqtzXcCVjU:APA91bFiKL5AF-Oe27JWt3333KCFjXJghIDikFDig9apE-cvbP-nXVFJkvThQoA0sM3zHlw4jNR2lBKArOpiZAD36du5smXzhwy_mc1A3-Udeg10GB_g_YWW13kyr14cB7t9tgKSSuw8', 1523310359223, 1523310359223),
(53, 'vivo 1719', '7.1.2', '2 (2.0)', 'be9e0d5', 'f0PIWLDQKzM:APA91bGnmJ7d3nwShTDwHwmv9dTFh5BAuiZvAn2PHTWSnHwMIXFkIvLp8SjB-ZMnEPSJkFcht47U_WDXIlQLEEviUF4xpryBc3J0fH8n_4FvUZicWRuH7xnERKXEIf792HYvFzwbY0Ih', 2147483647, 1537638203002);

-- --------------------------------------------------------

--
-- Table structure for table `news_info`
--

CREATE TABLE `news_info` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `brief_content` varchar(200) NOT NULL,
  `full_content` text NOT NULL,
  `image` varchar(110) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_info`
--

INSERT INTO `news_info` (`id`, `title`, `brief_content`, `full_content`, `image`, `draft`, `status`, `created_at`, `last_update`) VALUES
(1, 'Diskon 30%.', 'Diskon 30% untuk setiap pembelian makanan dan minuman.', 'Diskon 30% untuk pembelian makanan dan minuman pada tanggal 22 Oktober 2018 - 25 Oktober 2018 jam 06.00 WIB dan 22.00 WIB', 'Diskon 30.png', 0, 'FEATURED', 1482250793274, 1537583760828),
(2, 'Menu Baru', 'Menu baru makanan dan minuman', 'Dapatkan menu makanan dan minuman baru hanya di <b>Pawon</b> dengan diskon 30% setiap hari.', 'Menu Baru.jpg', 0, 'FEATURED', 1485793148268, 1537583777511);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(110) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `stock` int(10) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `stock`, `draft`, `description`, `status`, `created_at`, `last_update`) VALUES
(78, 'Nasi goreng gila', 'Nasi goreng gila.png', '12000.00', 9, 0, 'Sedia :<div>Nasi goreng gila biasa.</div><div>Nasi goreng gila ati.<br></div><div>Nasi goreng gila seafood.<br></div><div><br></div><div>Pedas level 1,2,3,4,5.</div><div><br></div><div>SIlahkan order..</div><div><br></div>', 'READY STOCK', 1485624280740, 1537584713583);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`) VALUES
(78, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` bigint(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shipping` varchar(20) NOT NULL,
  `date_ship` bigint(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `total_fees` decimal(12,2) NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `code`, `buyer`, `address`, `email`, `shipping`, `date_ship`, `phone`, `comment`, `status`, `total_fees`, `tax`, `created_at`, `last_update`) VALUES
(14, 'WK97139EW', 'ijang', 'jtb', 'ijang@gmail.com', 'JNE', 1537724500534, '08988854037', 'wkwkwk', 'PROCESSED', '12000.00', '0.00', 1537638110339, 1537638110339);

-- --------------------------------------------------------

--
-- Table structure for table `product_order_detail`
--

CREATE TABLE `product_order_detail` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_item` decimal(12,2) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_order_detail`
--

INSERT INTO `product_order_detail` (`id`, `order_id`, `product_id`, `product_name`, `amount`, `price_item`, `created_at`, `last_update`) VALUES
(14, 14, 78, 'Nasi goreng gila', 1, '12000.00', 1537638110339, 1537638110339);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notlp` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `unique_id`, `nama`, `email`, `notlp`, `alamat`, `encrypted_password`, `salt`) VALUES
(1, '5aa831f404dec5.78209422', 'helmi', 'hemi.andito@gmail.com', '', '', 'Y/wfujKlKZ4ojZ50a5fXTwdKIHg3NTdlYjYzN2Fk', '757eb637ad'),
(2, '5aa83c64895967.04670292', 'tes', 'tes', '', '', 'ePts3apUq5sc0K+SgYKeaRxfuIQ5OWFkYjRkZjdh', '99adb4df7a'),
(3, '5aa83c7fd99e01.70461371', 'tes', 'tes@gmail.com', '', '', 'QFGHHoOX4a/s3WF4dZLwDCN9GSg1OGY3NzdkMjg2', '58f777d286'),
(5, '5aa8413dcb60f2.07237292', 'helmi', 'helmi@gmail.com', '', '', 'bdTnrKg6DdpjrRXLH3gFzoNgpyMxMzY1NDkxMjhj', '136549128c'),
(6, '5aa84170aa76d5.61133086', 'helmi', 'helmi2@gmail.com', '', '', 'Fvo8y9Lf+FktBfidScQnjGqwJXk0MTJkNWQ2NDlk', '412d5d649d'),
(7, '5aa84320a7a174.83051484', 'tes', 'tes2@gmail.com', '', '', 'XltQ4SZ7ZZLq9vB68u0PFmq8Mio1MTI3NzBkMzM5', '512770d339'),
(8, '5aa844ae22c512.98678368', 'helmiganteng', 'helmiganteng@gmail.com', '082392382', 'bekasi', 'wO7zYBeuuGCHXNGS1HGIN3IMBDM4NjNiODZlOTM4', '863b86e938'),
(9, '5aa89b30350d01.60833180', 'jufrizon', 'izonnozi4@gmail.com', '081266004000', 'ranai', '1sPLlRV4BuGdjk8hW2vYQ69sxw1mYzgxNGFjODZj', 'fc814ac86c'),
(10, '5aa8b371bad497.96106972', 'dede', 'dsupriatin@gmail.com', '08121345277', 'pondok gede', 'NEeMxP8JnO1qEbaypmFq+mlTHpg0ZDFhYzE2MTcz', '4d1ac16173'),
(11, '5aaabd9b4e31e1.37491556', 'oxy', 'happy.print29@gmail.com', '082317125656', 'jl semangka', 'BjzXFiHYBcPpkqcbCb/YSRSRjVc1ODVhZTM4ODVl', '585ae3885e'),
(12, '5aab84734b3452.82607236', 'aidil', 'aidil476@gmail.com', '082169888880\n', 'padang', 'faRbX9Q/Vzg864q1pcJjDPMZqCMwYjRlNmQ3NDVj', '0b4e6d745c'),
(13, '5aaccd233ac228.70547003', 'maharani', 'maharani@mail.com', '0818539994443', 'taman', '5Xnlo6KwSGODJc9MP0wpQ//6RU5mMDAxZGEyMzky', 'f001da2392'),
(14, '5aaccd70dea1e8.90503140', 'maharani', 'maharanipm20@gmail.com', '085389994443', 'taman', '0JiU2iAVXvey//1prNQFt6BGGh41ZGE2NzFlMjRj', '5da671e24c'),
(15, '5aaf9f150252d2.90598465', 'andi', 'hadi.sam27@yahoo.co.id', '087851856634', 'Kepanjin', 'PvB00PdZ0ZQSb7zN7SgaIWuoZWQ2YmRjNmQ5MTNl', '6bdc6d913e'),
(16, '5aafcb9be57047.87136613', 'tes demo', 'ubayd522@gmail.com', '085257091222', 'madiun', 'OfKRmI0ijopKtuliWgO44IXrRic4YjJmY2MyZGRj', '8b2fcc2ddc'),
(17, '5ab125261c4e11.23049821', 'akbar', 'akbar.anggy@gmail.com', '081277332732', 'jl tes', 'nD2qJbOFPXIq+2mY8GcK+7gYYyBiOWNjZDU5Njhh', 'b9ccd5968a'),
(18, '5ab12710528961.59472283', 'nindi', 'hoaxtivity@gmail.com', '087824492448', 'tegal', 'UuN4gdd87Jo1JjYG+nAqzwa+J6M1YWIxNjEyMDRi', '5ab161204b'),
(19, '5ab1b31bc118c9.91952821', 'marna', 'mssumarna@gmail.com', '57853884', 'danau toba', '72C59/BLIhJ1gmskkcCGfMtjDdA3YzM3NTAzZGI1', '7c37503db5'),
(20, '5ab1d943655b29.22747536', 'andi', 'dadienk@gmail.com', '085692531565', 'cibubur\n', 'WaC+qBCYpkpzCvTyhVsiKsgjIac5NjhjMWNiZTcz', '968c1cbe73'),
(21, '5ab1dd98d17e29.26803049', 'komandan', 'kwidhin@gmail.com', '0987221734', '', 'EVQEU4LtT4NSFt2nvUsZZHxfuYs1MzAwZDNiMzBl', '5300d3b30e'),
(22, '5ab47ef1d07d11.95190668', 'ado', 'dod13.555@gmail.com', '085320031315', 'blok m', 'Cc2zzJbREwLBg40QGzWFGbSDkixlYWQ0NzcwOTJk', 'ead477092d'),
(23, '5ab4f527499197.75513107', 'ali', 'aliwain@gmail.com', '081481716766', 'jakarta', 'R2vJsvK+p0r/Dbm0KyobhQbSLTBkMTQ1MmQ2MGZh', 'd1452d60fa'),
(24, '5ab6b205abf6e4.00331131', 'helmi', 'helmi.andito@gmail.com', '0392929', 'bekasi', 'j08QYNhBwkdH/1NGex9j89OahiAyYjgyYzU4ZTJj', '2b82c58e2c'),
(25, '5ab6b20e433de4.49291259', 'helmi', 'helmi.andito2@gmail.com', '0392929', 'bekasi', 'X2tTbtrvI4QsVgUJXBTWFCLgDhtmZDRmZDkyZjE5', 'fd4fd92f19'),
(26, '5ab723ffe72252.26533940', 'Agg', 'ahoyci@gmail.com', '927272718', 'Serang ', 'qALbZsOBxO00r68gwQjFINUKsO9lYjMwZGNmMjgw', 'eb30dcf280'),
(27, '5abf7a47af7331.56542888', 'okan', 'klarmen', '0888111090807', 'cideng barat', 'fvpyILvNfAAEEe1KBk8uj0pqlo0wODAwYWUwNDFj', '0800ae041c'),
(28, '5abf7a75208664.53903300', 'okan', 'clarmen@gmail.com', '0888111090807', 'cideng barat', 'IO603hCYHVZrLy8xZrv1wR38fMYyNGZhODRhZmIy', '24fa84afb2'),
(29, '5ac0c08c077190.92243137', 'Nugroho', 'nugrohoardiansyah83@gmail.com', '085210672707', 'Jl bambu kuning2', 'pC7p7ESItwvLDNWkUaMuhcHtNHI3ZjJjNzM0Y2Ni', '7f2c734ccb'),
(30, '5ac0c0ec840d57.71337773', 'Nugi', 'nugi@gmail.com', '', '', 'ctfUPYjfHTygft5QBkBW7jux3uAzYTE1MGE3ZjRl', '3a150a7f4e'),
(31, '5ac2736048d3b5.31282002', 'ali', 'epindopay@gmail.com', '081381716866', 'jakarta', 'NdUwMmMT4IrOBqkUuKTpJzh2WT5iNGM0ZjRjNTY0', 'b4c4f4c564'),
(32, '5ac3cf44899519.26354688', 'avianto', 'avianto@alvus.id', '085312299722', 'De Green C1 No. 7', 'mPliseCeGyiA4lWc14YT05gnVYc4YTk3MDgxYjhh', '8a97081b8a'),
(33, '5ac7b707b233d5.42033627', 'a', 'a@gnail.com', '1', 'a', 'CmOpoTPxtnLViMxXjMO3F+TPYEw0NmVhNWQ0MjJl', '46ea5d422e'),
(34, '5ac8822278bfc7.87744826', 'paduan', 'paduan.kata@gmail.com', '', '', 'Nk1HXqTzojRp4rO+wEYkLit6JLYxZDA3NTdkNDc5', '1d0757d479'),
(35, '5acb52ae19a4e2.34833127', 'rubito', 'rubitojogja@yahoo.com', '087778364996', 'jakarta', 'hrTV5t9B3evW5zN5P91mus6cvlk1YjYzYmI1Yzhk', '5b63bb5c8d'),
(39, '5ba5a8f37f63a7.95152317', 'aldi', 'aldi@gmail.com', '08988854037', 'indramayu', 'fQPBCzJzJlK5RdNjibvGnoIS2q8wYjZhNjM3NjVj', '0b6a63765c'),
(40, '5ba5d7bf3a0616.00144869', 'ijang', 'ijang', '08988854037', 'jl sukalila', 'yC/aKAjUV/AtJSFLvN+hw30pZoE4NGJjMTY4NmEw', '84bc1686a0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Pawon', 'admin', 'pawonstartup@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_version`
--
ALTER TABLE `app_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`name`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm`
--
ALTER TABLE `fcm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_info`
--
ALTER TABLE `news_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_unique_name` (`name`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `fk_product_category_1` (`product_id`),
  ADD KEY `fk_product_category_2` (`category_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD KEY `fk_table_images` (`product_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order_detail`
--
ALTER TABLE `product_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_table_orders_item` (`order_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_version`
--
ALTER TABLE `app_version`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `fcm`
--
ALTER TABLE `fcm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `news_info`
--
ALTER TABLE `news_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_order_detail`
--
ALTER TABLE `product_order_detail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_product_category_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_product_category_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `fk_table_images` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_order_detail`
--
ALTER TABLE `product_order_detail`
  ADD CONSTRAINT `fk_table_orders_item` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
