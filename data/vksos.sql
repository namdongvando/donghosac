-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 08 Décembre 2017 à 07:07
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vksos`
--

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_danhmuc`
--

CREATE TABLE `bluearc_danhmuc` (
  `MaDanhMuc` int(11) NOT NULL DEFAULT '0',
  `LoaiDanhMuc` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TenDanhMuc` varchar(200) CHARACTER SET utf8 NOT NULL,
  `TenKhongDau` varchar(250) CHARACTER SET utf8 NOT NULL,
  `UrlHinh` text CHARACTER SET utf8 NOT NULL,
  `STT` int(11) NOT NULL,
  `NoiDung` text CHARACTER SET utf8,
  `ThuocTinh` text CHARACTER SET utf8,
  `CapCha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_hotro`
--

CREATE TABLE `bluearc_hotro` (
  `id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `hoten` varchar(200) CHARACTER SET utf8 NOT NULL,
  `sdt` varchar(20) CHARACTER SET utf8 NOT NULL,
  `diachi` text CHARACTER SET utf8 NOT NULL,
  `delete` int(11) NOT NULL,
  `noidung` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_hotro`
--

INSERT INTO `bluearc_hotro` (`id`, `email`, `hoten`, `sdt`, `diachi`, `delete`, `noidung`) VALUES
(25, 'redlight41114@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-26 06:17:39_____["3"]'),
(28, 'teagandooley@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-28 07:50:59_____["3"]'),
(29, 'mnsmjo@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-31 09:09:30_____["3"]'),
(30, 'huspawaty@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-02 05:17:03_____["3"]'),
(31, 'longthienlk@gmail.com', 'longthien', '0947582918', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36__2017-08-02 12:30:28___Mày cũng biết làm web ak __["3"]'),
(32, 'andrews412@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-03 08:59:39_____["3"]'),
(33, 'tsommerf@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-04 05:29:39_____["3"]'),
(34, 'robertcampanello@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-07 06:07:52_____["3"]'),
(35, 'obasary@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 03:07:08_____["3"]'),
(36, 'vinayjoshi1988@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 11:57:16_____["3"]'),
(37, 'tabanderson@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 01:41:53_____["3"]'),
(38, 'meaganleigh777@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 08:44:52_____["3"]'),
(39, 'johnpaul112891@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 09:11:38_____["3"]'),
(40, 'shario@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 12:57:38_____["3"]'),
(41, 'petra-stein@hotmail.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 04:05:33_____["3"]'),
(42, 'christophervelez1982@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 06:07:42_____["3"]'),
(43, 'cldick2@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 08:36:21_____["3"]'),
(44, 'shtiblet@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 09:51:21_____["3"]'),
(45, 'dwynrchrds@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-12 05:45:30_____["3"]'),
(46, 'thaokon@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 03:41:09_____["3"]'),
(47, 'vancemartin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 05:16:02_____["3"]'),
(48, 'kim.small2@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-17 04:54:10_____["3"]'),
(49, 'marygracesunga@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-18 01:36:26_____["3"]'),
(50, 'aubrey.yuzva@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-19 02:15:45_____["3"]'),
(51, 'tomsplumbingelgin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 03:18:13_____["3"]'),
(52, 'daleachapman45@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 11:58:33_____["3"]'),
(53, 'tkarl2209@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-22 09:24:57_____["3"]'),
(54, 'cassandra.durack@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 12:04:49_____["3"]'),
(55, 'noi@acadia-info.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 01:29:54_____["3"]'),
(56, 'info@48first.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 01:08:07_____["3"]'),
(57, 'hermanloud@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 11:56:11_____["3"]'),
(58, 'ssvalina@sbcglobal.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 04:10:24_____["3"]'),
(59, 'sarah.massey2@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-25 01:52:04_____["3"]'),
(60, 'andrewkaspers@gmail.com', '', '', '112.213.89.101', 0, '2017-08-26 09:57:58<br/>pending<br>đã gui mail<br><hr>2017-08-26 09:56:54<br/>pending<br>asd asdasd as<br><hr>Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:53:25_____["3"]'),
(61, 'jofurlong001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:17:11_____["3"]'),
(62, 'dnaciadis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 04:02:30_____["3"]'),
(63, 'jkpareso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 08:48:04_____["3"]'),
(64, 'kk1188@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 10:00:12_____["3"]'),
(65, 'charliethelee@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 01:28:47_____["3"]'),
(66, 'mtndrmr@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 09:56:04_____["3"]'),
(67, 'darling500@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-30 12:09:59_____["3"]'),
(68, 'elaineylflavin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 03:36:47_____["3"]'),
(69, 'mindyreed11@bellsouth.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 06:21:17_____["3"]'),
(70, 'stephanie.koontz.95@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 02:11:48_____["3"]'),
(71, 'akjohns001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 09:31:09_____["3"]'),
(72, 'ddsmkg@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 12:13:06_____["3"]'),
(73, 'damon.patralakis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 06:41:38_____["3"]'),
(74, 'maboll@rcn.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 02:06:53_____["3"]'),
(75, 'sandymiller0705@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 09:12:09_____["3"]'),
(76, 'benhart74@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-03 12:10:51_____["3"]'),
(77, 'askcarso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 02:43:16_____["3"]'),
(78, 'astapins@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 05:00:59_____["3"]'),
(79, 'scott.w.oconnell@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 11:55:48_____["3"]'),
(80, 'patrick.auer.jones@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 06:26:02_____["3"]'),
(81, 'gaytanric@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 11:39:06_____["3"]'),
(82, 'coachtglove@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 02:05:43_____["3"]'),
(83, 'fholler99@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 08:54:18_____["3"]'),
(84, 'vatampm@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 10:31:18_____["3"]'),
(85, 'meridianclinics@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 03:32:46_____["3"]'),
(86, 'ajsvaan@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 10:40:34_____["3"]'),
(87, 'suttongr@pacbell.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-09 02:12:46_____["3"]'),
(88, '', 'ZAJJypfwqS', 'rNEmjRgcO', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-09 01:30:36___r8a3Il http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(89, 'johnpaulrangel@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:08:35_____["3"]'),
(90, 'clairepooleh866h@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:46:21_____["3"]'),
(91, 'ulugbekgp@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 02:55:00_____["3"]'),
(92, 'derek_colon@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 03:51:51_____["3"]'),
(93, '', 'MeBNWxBWTnhMBO', 'zZxYvwuOqtJxsPeP', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-12 08:04:57___H6mQV8 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(94, 'eddiemallett@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:12:56_____["3"]'),
(95, 'nyltom@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:38:14_____["3"]'),
(96, 'haughney@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 05:15:54_____["3"]'),
(97, 'deestric@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 03:29:46_____["3"]'),
(98, 'winnyeme@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 11:07:07_____["3"]'),
(99, 'friedriceandeggrolls@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 06:02:19_____["3"]'),
(100, 'suziejudd64@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 07:11:16_____["3"]'),
(101, 'darchila@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 01:28:42_____["3"]'),
(102, 'post3092@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 06:40:15_____["3"]'),
(103, 'vu0tran@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 03:36:00_____["3"]'),
(104, 'stevescottemail@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 11:56:04_____["3"]');

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_khachang`
--

CREATE TABLE `bluearc_khachang` (
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `random` varchar(10) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(200) CHARACTER SET utf8 NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DiaChi` text CHARACTER SET utf8 NOT NULL,
  `Nhom` int(11) NOT NULL,
  `active` varchar(20) CHARACTER SET utf8 NOT NULL,
  `ThongTinChung` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_khachang`
--

INSERT INTO `bluearc_khachang` (`email`, `password`, `random`, `HoTen`, `SDT`, `DiaChi`, `Nhom`, `active`, `ThongTinChung`) VALUES
('a', '4571eb1bac07d1392b8987d84c91d4d52ff06c5c', 'Bvp4FSAY', 'TRẦN THỊ DUNG', '', '', 1, '1', NULL),
('do.nguyen@inlen.com', '53e553ef92f61ac5d1df3d0cd8b582bca6670af9', 'luXezPlF', 'nguyễn văn Độ', '0123456789', 'sdf sdfs', 1, '1', '{"avata":"luXezPlF.jpeg"}'),
('hoangnhat91@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'Vũ Hoàng Nhật', '0901513885', 'Q12, TP HCM', 1, '1', '{"avata":"8wrWWNCD.jpeg","AnHienSDT":0}'),
('hoangnhatvu01@gmail.com', 'bc7c8b05cc661f8b841aca08985a911ff06815db', 'iWFr2euU', 'Vu Hoang Nhat', '0123456789', '', 1, '1', NULL),
('hpdiemhang@gmail.com', 'a7879dc320406bbdc884a936047fdc7ecfe4eab1', 'GMIQLxrq', 'Nguyễn Thị Diễm Hằng', '', '', 1, '1', NULL),
('lehathanh2807@gmail.com', 'd5d3e02d57e8359456ea58fa073d686713b5015b', 'g1on4l1j', 'Hà Thanh', '0904611543', '', 1, '1', NULL),
('leminhhoang1812@gmail.com', '26c797a9ef4c4640aa3c3ecc4730fcbc9e047d9f', 'TAXQJ9fu', 'af', '01234567745', 'kk dddff dfgdf\r\n', 1, '-1', '{"avata":"TAXQJ9fu.jpeg"}'),
('linlvo.it@gmail.com', '714daae9b07810652b53d6844cef4f8ef52230fc', 's7avraG2', 'Linl Vo', '0902407247', '', 1, '1', '{"avata":"s7avraG2.jpeg"}'),
('minhchau.heomoi@gmail.com', '84df2a5cb1e5d551fc2a9a191b7b2bc01a1b3ef6', 'qB6lIOWP', 'Lê Thị Minh Châu', '01659180894', '', 1, '1', '{"avata":"qB6lIOWP.jpeg"}'),
('namdong92@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'nguyễn van độ', '1234567890', 'as asda', 1, '1', '{"avata":"8wrWWNCD.jpeg"}'),
('namdongvando@gmail.com', 'e555ea9e0cdf79ec5777578c9c339df323ea014b', 'SerSHnQs', 'namdongvando@gmail.com', '', '', 1, 'SerSHnQs', NULL),
('nguyenvanquang943@gmail.com', 'bf39dc3a71b43258081c6983d1bc17c0ea514413', 'nQhuX6gQ', 'nguyen van quang', '0919276336', '', 1, '1', '{"avata":"nQhuX6gQ.jpeg"}'),
('pg_vina@yahoo.com.vn', '28d5e7a05d9d2c0c8cc36353d87546a778e7e993', 'DXCEFS5Y', 'phan thanh hai', '0933955658', '', 1, '1', '{"avata":"DXCEFS5Y.jpeg"}'),
('phamha.3612@gmail.com', 'f0a5a08d1abad46055c4dc03dac75ac9a4532470', 'qLbl2Pgn', 'TISASHOP', '0933520783', '568 Phạm Văn Bạch, P.13, Q.Tân Bình, HCM', 1, '1', ''),
('ts_hailong@yahoo.com.vn', '48efcf5eae3ec0801697dd0e68ddf177b228184a', 'OByB0p0U', 'phaihailong', '', '', 1, '1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_lichsu`
--

CREATE TABLE `bluearc_lichsu` (
  `DongLichSu` int(11) NOT NULL DEFAULT '0',
  `MaNhanVien` varchar(200) CHARACTER SET utf8 NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `Action` varchar(200) CHARACTER SET utf8 NOT NULL,
  `Table` varchar(200) CHARACTER SET utf8 NOT NULL,
  `LoaiThaoTac` varchar(200) CHARACTER SET utf8 NOT NULL,
  `NoiDung` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_lichsu`
--

INSERT INTO `bluearc_lichsu` (`DongLichSu`, `MaNhanVien`, `ThoiGian`, `Action`, `Table`, `LoaiThaoTac`, `NoiDung`) VALUES
(1, 'namdong92a', '2016-05-17 07:22:10', 'actiona', 'Tablea', 'Xoaa', 'xoa noi ufnga');

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_menu`
--

CREATE TABLE `bluearc_menu` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_menu`
--

INSERT INTO `bluearc_menu` (`id`, `name`, `link`, `parent`, `group`, `range`) VALUES
(9, 'Trang chủ', '/', 0, 'M1', 0),
(10, 'Dịch Vụ', '#', 0, 'M1', 0),
(11, 'Thông Tin', '#', 0, 'M1', 0),
(12, 'Biểu Phí', '#', 0, 'M1', 0),
(13, 'Hợp Tác', '#', 0, 'M3', 0),
(14, 'Thẻ thành viên', '#', 0, 'M2', 0),
(15, 'khách hàng', '#', 0, 'M2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_option`
--

CREATE TABLE `bluearc_option` (
  `MaOption` varchar(20) CHARACTER SET utf8 NOT NULL,
  `LoaiOption` int(11) NOT NULL,
  `GiaTriVN` text CHARACTER SET utf8 NOT NULL,
  `GiaTriEN` text CHARACTER SET utf8,
  `GhiChu` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_option`
--

INSERT INTO `bluearc_option` (`MaOption`, `LoaiOption`, `GiaTriVN`, `GiaTriEN`, `GhiChu`) VALUES
('Lang_BaiVietMoi', 2, 'Bài viết mới', '', '{"type":"2","title":"BaivietMoi"}'),
('Lang_DanhMuc', 2, 'Danh Mục Bài Viết', '', '{"type":"2","title":"Danh Mục Bài Viết"}'),
('Lang_Facebook', 2, '<div class="fb-page" data-href="https://www.facebook.com/nguyenvando.net/" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/nguyenvando.net/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/nguyenvando.net/">Nguyenvando.net</a></blockquote></div>', '', '{"type":"2","title":"Facebook"}'),
('Lang_Slogan', 2, 'Chia sẻ kiem', '', '{"type":"2","title":"Slogan"}'),
('Lang_TrangXaHoi', 2, 'Trang Xã Hội', '', '{"type":"2","title":"Trang Xã Hội"}'),
('Option_Banner', 1, 'tooplate_middle.png', '', '{"type":"1","title":"Banner"}'),
('Option_BGBody', 1, 'tooplate_body.jpg', '', '{"type":"1","title":"BgBody"}'),
('Option_Logo', 1, 'logo-vksos.png', '', '{"type":"1","title":"Logo Web"}'),
('SEO_Des', 0, 'description', 'description', ''),
('SEO_Google', 0, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = ''https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668'';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>', '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = ''https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668'';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>', ''),
('SEO_Keyword', 0, 'keyword', 'keyword', ''),
('SEO_Title', 0, 'Title', 'Title', ''),
('Social_Facebook', 0, '', '', ''),
('Social_Google', 0, '', '', ''),
('Social_Twitter', 0, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_pages`
--

CREATE TABLE `bluearc_pages` (
  `idPa` int(11) NOT NULL DEFAULT '0',
  `idGroup` tinyint(4) NOT NULL,
  `TieuDe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKD` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Des` text COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `UrlHinh` text COLLATE utf8_unicode_ci NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `LoaiPage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_pages`
--

INSERT INTO `bluearc_pages` (`idPa`, `idGroup`, `TieuDe`, `TieuDeKD`, `Title`, `Des`, `Keyword`, `TomTat`, `NoiDung`, `UrlHinh`, `AnHien`, `LoaiPage`) VALUES
(1, 1, 'about', 'about', 'Giới Thiệu', 'about', 'about', '', '<ul>\r\n	<li>\r\n	<h4>HỆ THỐNG TỰ ĐỘNG</h4>\r\n	</li>\r\n	<li><img alt="image-detail" class="img-responsive" src="/public/vksos/assets/images/hethongtudong.gif" />\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Bệnh tật, tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai. Được cấp cứu, chữa trị kịp thời l&agrave; mong ước của mọi người.<br />\r\n	<br />\r\n	Hiện nay, khi mắc bệnh, tai nạn người d&acirc;n thường tự đến bệnh viện, ph&ograve;ng kh&aacute;m để được chữa trị. <strong>Giải ph&aacute;p nội viện</strong> đ&atilde; v&agrave; đang đ&aacute;p ứng nhu cầu cực lớn của x&atilde; hội dẫn đến t&igrave;nh trạng qu&aacute; tải với những hệ luỵ ng&agrave;y c&agrave;ng nghi&ecirc;m trọng hơn. Người d&acirc;n đến kh&aacute;m chữa bệnh phải chờ đợi v&agrave;i giờ để chỉ được kh&aacute;m chữa trong v&agrave;i ph&uacute;t v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.<br />\r\n	<br />\r\n	B&ecirc;n cạnh những hệ luỵ đ&oacute;, người gi&agrave; yếu, người mắc bệnh mạn t&iacute;nh như tim mạch, đ&aacute;i th&aacute;o đường, hen suyển, bệnh phổi tắc nghẻn mạn t&iacute;nh (COPD)&hellip;, người bị thương t&acirc;t như gảy cổ xương đ&ugrave;i&hellip; thường gặp kh&oacute; khăn khi phải di chuyển n&ecirc;n việc đến với cơ sở y tế c&agrave;ng bị phiền h&agrave; v&agrave; phức tạp hơn.<br />\r\n	<br />\r\n	Trong trường hợp bệnh nặng như đột quị, nhồi m&aacute;u cơ tim&hellip; cần phải được cấp cứu đ&uacute;ng c&aacute;ch, việc tự đến bệnh viện thường kh&ocirc;ng được xử tr&iacute; đ&uacute;ng, đến bệnh viện trễ, dẫn đến nhiều hậu quả nặng nề cho người bệnh, đe doạ t&iacute;nh mạng hoặc phải g&aacute;nh chịu những di chứng trong suốt quảng đời c&ograve;n lại.<br />\r\n	<br />\r\n	Thấu cảm nỗi lo v&agrave; mong ước của bao người, <strong>Vạn Khang SOS</strong> được th&agrave;nh lập để cung ứng cho người d&acirc;n một giải ph&aacute;p mới: <strong>&ldquo;giải ph&aacute;p ngoại viện&rdquo;</strong> với <strong>g&oacute;i dịch vụ to&agrave;n diện: cấp cứu tại chỗ, chữa bệnh tại nh&agrave;</strong> tr&ecirc;n cơ sở li&ecirc;n kết chặt chẽ với c&aacute;c bệnh viện lớn, tạo th&agrave;nh một mạng lưới được ph&acirc;n bổ đều khắp tr&ecirc;n to&agrave;n th&agrave;nh phố để <strong>gần d&acirc;n nhất</strong>, lu&ocirc;n sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu của người bệnh một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n	<br />\r\n	Vạn Khang SOS sử dụng c&ocirc;ng nghệ th&ocirc;ng tin hiện đại, tạo n&ecirc;n sự <strong>tiện dụng</strong> cho người sử dụng dịch vụ: <strong>&ldquo;chỉ cần bấm n&uacute;t&rdquo;</strong> tr&ecirc;n thiết bị chuy&ecirc;n dụng của Vạn Khang SOS hoặc tr&ecirc;n ứng dụng được tải miễn ph&iacute; v&agrave;o điện thoại di động.</p>\r\n	<!-- <img src="<?php echo BASE_DIR ?>public/vksos/assets/images/quytrinhcapcuu.png" class="img-responsive"> -->\r\n\r\n	<p style="text-align:center"><strong>V&Igrave; SỨC KHỎE CỦA BẠN V&Agrave; NGƯỜI TH&Acirc;N, TẢI NGAY ỨNG DỤNG VK-SOS</strong> <a href="http://vankhangsos.vn/app/"><img src="./assets/images/download-button.png" style="padding-bottom:0px; padding-top:0px; width:40%" /></a></p>\r\n\r\n	<p style="text-align:center"><!-- Để luôn sẵn sàng cho yêu cầu <br> --><strong>CẤP CỨU TẠI CHỖ - CHỮA BỆNH TẠI NH&Agrave;</strong><br />\r\n	<strong>TIỆN DỤNG &ndash; NHANH CH&Oacute;NG &ndash; HIỆU QUẢ</strong></p>\r\n	</li>\r\n</ul>\r\n', '', 1, 0),
(73, 1, 'cost', 'cost', 'Biểu Phí', 'Lập trình php cơ bản', 'Lập trình php cơ bản', '<p>asdasdas das das</p>\r\n', '<p>asdas</p>\r\n', '/public/img/images', 1, 0),
(74, 1, 'news', 'news', 'Thông tin', '', '', '', '', '/public/img/images', 1, 1),
(78, 1, 'dang muc', 'dang-muc', '', '', '', '<p>asda sdasas dasdas</p>\r\n', '', '/public/img/images', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_quantri`
--

CREATE TABLE `bluearc_quantri` (
  `username` varchar(200) CHARACTER SET utf8 NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 NOT NULL,
  `random` varchar(10) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `SDT` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DiaChi` text CHARACTER SET utf8 NOT NULL,
  `GhiChu` text CHARACTER SET utf8 NOT NULL,
  `Nhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_quantri`
--

INSERT INTO `bluearc_quantri` (`username`, `password`, `random`, `HoTen`, `email`, `SDT`, `DiaChi`, `GhiChu`, `Nhom`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_sanpham`
--

CREATE TABLE `bluearc_sanpham` (
  `IdTin` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(250) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `MaDanhMuc` int(11) NOT NULL,
  `TieuDe` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TieuDeKhongDau` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TomTat` text CHARACTER SET utf8 NOT NULL,
  `NoiDung` longtext CHARACTER SET utf8 NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text CHARACTER SET utf8,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT '0',
  `Stt` int(11) NOT NULL,
  `Gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bluearc_tin`
--

CREATE TABLE `bluearc_tin` (
  `IdTin` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `title` varchar(250) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(250) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `MaDanhMuc` int(11) NOT NULL,
  `TieuDe` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TieuDeKhongDau` varchar(500) CHARACTER SET utf8 NOT NULL,
  `TomTat` text CHARACTER SET utf8 NOT NULL,
  `NoiDung` longtext CHARACTER SET utf8 NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text CHARACTER SET utf8,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT '0',
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `bluearc_tin`
--

INSERT INTO `bluearc_tin` (`IdTin`, `title`, `keyword`, `description`, `MaDanhMuc`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('2016100218075324', '', '', '', 74, 'bài 1', 'bai-12016100218075324', '<p>B&agrave;i viết</p>\r\n', '<p>Asadasdasas ads</p>\r\n', 1, '2017-11-16 04:29:45', 'main-index-banner.jpg', 1, 1, 2),
('2016113008565933', 'Alex Albert', 'CEO. Giám Đốc phát triển', '', 74, 'Greatest, awesome  ', 'greatest-awesome2016113008565933', '<p>asa sdasd asd as</p>\r\n', '<p>as dasd asd as das</p>\r\n\r\n<p>d&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>d&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>das</p>\r\n', 1, '2017-11-18 11:12:40', 'main-index-banner.jpg', 0, 0, 0),
('2016113009484872', '', '', '', 74, 'cong 1111', 'cong-11112016113009484872', '', '<p>a sasd as</p>\r\n', 1, '2017-11-18 11:12:43', 'main-index-banner.jpg', 0, 0, 0),
('2016113009560948', '', '', '', 74, 'cong ty 2', 'cong-ty-22016113009560948', '', '<p>as das</p>\r\n', 1, '2017-11-18 11:12:46', 'main-index-banner.jpg', 0, 0, 0),
('201612161481865217', 'Tạo Class Sản phẩm', 'Tạo Class Sản phẩm, nguyễn văn độ, nguyenvando.net', 'Tạo Class Sản phẩm, nguyễn văn độ, nguyenvando.net', 74, 'Class sản phẩm', 'class-san-pham201612161481865217', '<p>Tạo Class Sản phẩm</p>\r\n', '<p><strong>Tạo Class sản phẩm</strong></p>\r\n\r\n<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/BeVs7aKMnug" width="560"></iframe></p>\r\n', 1, '2017-11-16 04:25:09', 'main-index-banner.jpg', 0, 0, 0),
('201711121510465750', 'Bài Viết', 'Bài Viết', 'Bài Viết', 74, 'Bài Viết', 'bai-viet201711121510465750', '<p>b&agrave;i viết</p>\r\n', '<p>B&agrave;i Viết</p>\r\n', 1, '2017-11-18 11:12:49', 'main-index-banner.jpg', 1, 0, 1),
('201711181510999925', 'asdas', 'as', 'da', 74, 'new 1', 'new-1201711181510999925', '<p>asdas</p>\r\n', '<p>dasdas</p>\r\n', 1, '2017-11-18 11:12:05', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vksos_danhmuc`
--

CREATE TABLE `vksos_danhmuc` (
  `MaDanhMuc` int(11) NOT NULL,
  `LoaiDanhMuc` varchar(20) NOT NULL,
  `TenDanhMuc` varchar(200) NOT NULL,
  `TenKhongDau` varchar(250) NOT NULL,
  `UrlHinh` text NOT NULL,
  `STT` int(11) NOT NULL,
  `NoiDung` text,
  `ThuocTinh` text,
  `CapCha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vksos_hotro`
--

CREATE TABLE `vksos_hotro` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` text NOT NULL,
  `delete` int(11) NOT NULL,
  `noidung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vksos_hotro`
--

INSERT INTO `vksos_hotro` (`id`, `email`, `hoten`, `sdt`, `diachi`, `delete`, `noidung`) VALUES
(25, 'redlight41114@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-26 06:17:39_____["3"]'),
(28, 'teagandooley@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-28 07:50:59_____["3"]'),
(29, 'mnsmjo@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-31 09:09:30_____["3"]'),
(30, 'huspawaty@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-02 05:17:03_____["3"]'),
(31, 'longthienlk@gmail.com', 'longthien', '0947582918', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36__2017-08-02 12:30:28___Mày cũng biết làm web ak __["3"]'),
(32, 'andrews412@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-03 08:59:39_____["3"]'),
(33, 'tsommerf@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-04 05:29:39_____["3"]'),
(34, 'robertcampanello@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-07 06:07:52_____["3"]'),
(35, 'obasary@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 03:07:08_____["3"]'),
(36, 'vinayjoshi1988@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 11:57:16_____["3"]'),
(37, 'tabanderson@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 01:41:53_____["3"]'),
(38, 'meaganleigh777@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 08:44:52_____["3"]'),
(39, 'johnpaul112891@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 09:11:38_____["3"]'),
(40, 'shario@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 12:57:38_____["3"]'),
(41, 'petra-stein@hotmail.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 04:05:33_____["3"]'),
(42, 'christophervelez1982@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 06:07:42_____["3"]'),
(43, 'cldick2@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 08:36:21_____["3"]'),
(44, 'shtiblet@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 09:51:21_____["3"]'),
(45, 'dwynrchrds@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-12 05:45:30_____["3"]'),
(46, 'thaokon@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 03:41:09_____["3"]'),
(47, 'vancemartin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 05:16:02_____["3"]'),
(48, 'kim.small2@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-17 04:54:10_____["3"]'),
(49, 'marygracesunga@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-18 01:36:26_____["3"]'),
(50, 'aubrey.yuzva@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-19 02:15:45_____["3"]'),
(51, 'tomsplumbingelgin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 03:18:13_____["3"]'),
(52, 'daleachapman45@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 11:58:33_____["3"]'),
(53, 'tkarl2209@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-22 09:24:57_____["3"]'),
(54, 'cassandra.durack@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 12:04:49_____["3"]'),
(55, 'noi@acadia-info.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 01:29:54_____["3"]'),
(56, 'info@48first.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 01:08:07_____["3"]'),
(57, 'hermanloud@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 11:56:11_____["3"]'),
(58, 'ssvalina@sbcglobal.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 04:10:24_____["3"]'),
(59, 'sarah.massey2@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-25 01:52:04_____["3"]'),
(60, 'andrewkaspers@gmail.com', '', '', '112.213.89.101', 0, '2017-08-26 09:57:58<br/>pending<br>đã gui mail<br><hr>2017-08-26 09:56:54<br/>pending<br>asd asdasd as<br><hr>Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:53:25_____["3"]'),
(61, 'jofurlong001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:17:11_____["3"]'),
(62, 'dnaciadis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 04:02:30_____["3"]'),
(63, 'jkpareso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 08:48:04_____["3"]'),
(64, 'kk1188@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 10:00:12_____["3"]'),
(65, 'charliethelee@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 01:28:47_____["3"]'),
(66, 'mtndrmr@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 09:56:04_____["3"]'),
(67, 'darling500@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-30 12:09:59_____["3"]'),
(68, 'elaineylflavin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 03:36:47_____["3"]'),
(69, 'mindyreed11@bellsouth.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 06:21:17_____["3"]'),
(70, 'stephanie.koontz.95@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 02:11:48_____["3"]'),
(71, 'akjohns001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 09:31:09_____["3"]'),
(72, 'ddsmkg@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 12:13:06_____["3"]'),
(73, 'damon.patralakis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 06:41:38_____["3"]'),
(74, 'maboll@rcn.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 02:06:53_____["3"]'),
(75, 'sandymiller0705@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 09:12:09_____["3"]'),
(76, 'benhart74@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-03 12:10:51_____["3"]'),
(77, 'askcarso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 02:43:16_____["3"]'),
(78, 'astapins@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 05:00:59_____["3"]'),
(79, 'scott.w.oconnell@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 11:55:48_____["3"]'),
(80, 'patrick.auer.jones@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 06:26:02_____["3"]'),
(81, 'gaytanric@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 11:39:06_____["3"]'),
(82, 'coachtglove@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 02:05:43_____["3"]'),
(83, 'fholler99@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 08:54:18_____["3"]'),
(84, 'vatampm@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 10:31:18_____["3"]'),
(85, 'meridianclinics@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 03:32:46_____["3"]'),
(86, 'ajsvaan@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 10:40:34_____["3"]'),
(87, 'suttongr@pacbell.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-09 02:12:46_____["3"]'),
(88, '', 'ZAJJypfwqS', 'rNEmjRgcO', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-09 01:30:36___r8a3Il http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(89, 'johnpaulrangel@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:08:35_____["3"]'),
(90, 'clairepooleh866h@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:46:21_____["3"]'),
(91, 'ulugbekgp@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 02:55:00_____["3"]'),
(92, 'derek_colon@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 03:51:51_____["3"]'),
(93, '', 'MeBNWxBWTnhMBO', 'zZxYvwuOqtJxsPeP', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-12 08:04:57___H6mQV8 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(94, 'eddiemallett@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:12:56_____["3"]'),
(95, 'nyltom@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:38:14_____["3"]'),
(96, 'haughney@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 05:15:54_____["3"]'),
(97, 'deestric@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 03:29:46_____["3"]'),
(98, 'winnyeme@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 11:07:07_____["3"]'),
(99, 'friedriceandeggrolls@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 06:02:19_____["3"]'),
(100, 'suziejudd64@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 07:11:16_____["3"]'),
(101, 'darchila@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 01:28:42_____["3"]'),
(102, 'post3092@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 06:40:15_____["3"]'),
(103, 'vu0tran@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 03:36:00_____["3"]'),
(104, 'stevescottemail@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 11:56:04_____["3"]');

-- --------------------------------------------------------

--
-- Structure de la table `vksos_khachang`
--

CREATE TABLE `vksos_khachang` (
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `random` varchar(10) NOT NULL,
  `HoTen` varchar(200) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` text NOT NULL,
  `Nhom` int(11) NOT NULL,
  `active` varchar(20) NOT NULL,
  `ThongTinChung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vksos_khachang`
--

INSERT INTO `vksos_khachang` (`email`, `password`, `random`, `HoTen`, `SDT`, `DiaChi`, `Nhom`, `active`, `ThongTinChung`) VALUES
('a', '4571eb1bac07d1392b8987d84c91d4d52ff06c5c', 'Bvp4FSAY', 'TRẦN THỊ DUNG', '', '', 1, '1', NULL),
('do.nguyen@inlen.com', '53e553ef92f61ac5d1df3d0cd8b582bca6670af9', 'luXezPlF', 'nguyễn văn Độ', '0123456789', 'sdf sdfs', 1, '1', '{"avata":"luXezPlF.jpeg"}'),
('hoangnhat91@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'Vũ Hoàng Nhật', '0901513885', 'Q12, TP HCM', 1, '1', '{"avata":"8wrWWNCD.jpeg","AnHienSDT":0}'),
('hoangnhatvu01@gmail.com', 'bc7c8b05cc661f8b841aca08985a911ff06815db', 'iWFr2euU', 'Vu Hoang Nhat', '0123456789', '', 1, '1', NULL),
('hpdiemhang@gmail.com', 'a7879dc320406bbdc884a936047fdc7ecfe4eab1', 'GMIQLxrq', 'Nguyễn Thị Diễm Hằng', '', '', 1, '1', NULL),
('lehathanh2807@gmail.com', 'd5d3e02d57e8359456ea58fa073d686713b5015b', 'g1on4l1j', 'Hà Thanh', '0904611543', '', 1, '1', NULL),
('leminhhoang1812@gmail.com', '26c797a9ef4c4640aa3c3ecc4730fcbc9e047d9f', 'TAXQJ9fu', 'af', '01234567745', 'kk dddff dfgdf\r\n', 1, '-1', '{"avata":"TAXQJ9fu.jpeg"}'),
('linlvo.it@gmail.com', '714daae9b07810652b53d6844cef4f8ef52230fc', 's7avraG2', 'Linl Vo', '0902407247', '', 1, '1', '{"avata":"s7avraG2.jpeg"}'),
('minhchau.heomoi@gmail.com', '84df2a5cb1e5d551fc2a9a191b7b2bc01a1b3ef6', 'qB6lIOWP', 'Lê Thị Minh Châu', '01659180894', '', 1, '1', '{"avata":"qB6lIOWP.jpeg"}'),
('namdong92@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'nguyễn van độ', '1234567890', 'as asda', 1, '1', '{"avata":"8wrWWNCD.jpeg"}'),
('namdongvando@gmail.com', 'e555ea9e0cdf79ec5777578c9c339df323ea014b', 'SerSHnQs', 'namdongvando@gmail.com', '', '', 1, 'SerSHnQs', NULL),
('nguyenvanquang943@gmail.com', 'bf39dc3a71b43258081c6983d1bc17c0ea514413', 'nQhuX6gQ', 'nguyen van quang', '0919276336', '', 1, '1', '{"avata":"nQhuX6gQ.jpeg"}'),
('pg_vina@yahoo.com.vn', '28d5e7a05d9d2c0c8cc36353d87546a778e7e993', 'DXCEFS5Y', 'phan thanh hai', '0933955658', '', 1, '1', '{"avata":"DXCEFS5Y.jpeg"}'),
('phamha.3612@gmail.com', 'f0a5a08d1abad46055c4dc03dac75ac9a4532470', 'qLbl2Pgn', 'TISASHOP', '0933520783', '568 Phạm Văn Bạch, P.13, Q.Tân Bình, HCM', 1, '1', ''),
('ts_hailong@yahoo.com.vn', '48efcf5eae3ec0801697dd0e68ddf177b228184a', 'OByB0p0U', 'phaihailong', '', '', 1, '1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vksos_lichsu`
--

CREATE TABLE `vksos_lichsu` (
  `DongLichSu` int(11) NOT NULL,
  `MaNhanVien` varchar(200) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `Action` varchar(200) NOT NULL,
  `Table` varchar(200) NOT NULL,
  `LoaiThaoTac` varchar(200) NOT NULL,
  `NoiDung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vksos_lichsu`
--

INSERT INTO `vksos_lichsu` (`DongLichSu`, `MaNhanVien`, `ThoiGian`, `Action`, `Table`, `LoaiThaoTac`, `NoiDung`) VALUES
(1, 'namdong92a', '2016-05-17 07:22:10', 'actiona', 'Tablea', 'Xoaa', 'xoa noi ufnga');

-- --------------------------------------------------------

--
-- Structure de la table `vksos_menu`
--

CREATE TABLE `vksos_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `vksos_menu`
--

INSERT INTO `vksos_menu` (`id`, `name`, `link`, `parent`, `group`, `range`) VALUES
(1, 'nameasdas', '#', 1, '2', 3),
(2, 'home', '#', 0, '2', 1),
(3, 'nameasdas', '#', 1, '2', 3),
(4, '', '', 0, 'asdas', 0),
(5, '', '', 0, 'mn1', 0),
(6, 'thong tín 1', 'as', 7, 'mn2', 0),
(7, 'thông tin', 'dasd', 0, 'mn2', 0),
(8, '', '', 0, 'asdas', 0),
(9, 'Vạn Khang SOS', '', 0, '1', 0),
(10, 'Dịch Vụ', '', 0, '1', 0),
(11, 'Thông Tin', '', 0, '1', 0),
(12, 'Biểu Phí', '', 0, '1', 0),
(13, 'Hợp Tác', '', 0, '1', 0),
(14, 'Thẻ thành viên', '', 0, '1', 0),
(15, 'khách hàng', '', 0, '1', 0),
(16, 'dịch vụ cấp cứu', '', 10, '1', 0),
(17, 'dịch vụ cấp cứu1', '', 10, '1', 0),
(18, 'dịch vụ cấp cứu1', '', 10, '1', 0),
(19, 'dịch vụ cấp cứu1', '', 10, '1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `vksos_option`
--

CREATE TABLE `vksos_option` (
  `MaOption` varchar(20) NOT NULL,
  `LoaiOption` int(11) NOT NULL,
  `GiaTriVN` text NOT NULL,
  `GiaTriEN` text,
  `GhiChu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vksos_option`
--

INSERT INTO `vksos_option` (`MaOption`, `LoaiOption`, `GiaTriVN`, `GiaTriEN`, `GhiChu`) VALUES
('Lang_BaiVietMoi', 2, 'Bài viết mới', '', '{"type":"2","title":"BaivietMoi"}'),
('Lang_DanhMuc', 2, 'Danh Mục Bài Viết', '', '{"type":"2","title":"Danh Mục Bài Viết"}'),
('Lang_Facebook', 2, '<div class="fb-page" data-href="https://www.facebook.com/nguyenvando.net/" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/nguyenvando.net/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/nguyenvando.net/">Nguyenvando.net</a></blockquote></div>', '', '{"type":"2","title":"Facebook"}'),
('Lang_Slogan', 2, 'Chia sẻ kiem', '', '{"type":"2","title":"Slogan"}'),
('Lang_TrangXaHoi', 2, 'Trang Xã Hội', '', '{"type":"2","title":"Trang Xã Hội"}'),
('Option_Logo', 1, 'logo-vksos.png', '', '{"type":"1","title":"Logo Web"}'),
('SEO_Des', 0, 'description', 'description', ''),
('SEO_Google', 0, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = ''https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668'';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>', '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = ''https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668'';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>', ''),
('SEO_Keyword', 0, 'keyword', 'keyword', ''),
('SEO_Title', 0, 'Title', 'Title', ''),
('Social_Facebook', 0, '', '', ''),
('Social_Google', 0, '', '', ''),
('Social_Twitter', 0, '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `vksos_pages`
--

CREATE TABLE `vksos_pages` (
  `idPa` int(11) NOT NULL,
  `idGroup` tinyint(4) NOT NULL,
  `TieuDe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKD` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Des` text COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `UrlHinh` text COLLATE utf8_unicode_ci NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `LoaiPage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `vksos_pages`
--

INSERT INTO `vksos_pages` (`idPa`, `idGroup`, `TieuDe`, `TieuDeKD`, `Title`, `Des`, `Keyword`, `TomTat`, `NoiDung`, `UrlHinh`, `AnHien`, `LoaiPage`) VALUES
(1, 1, 'Giớ Thiệu', 'gio-thieu', 'Giới Thiệu', 'about', 'about', '', '<ul>\r\n	<li>\r\n	<h4>HỆ THỐNG TỰ ĐỘNG</h4>\r\n	</li>\r\n	<li><img alt="image-detail" class="img-responsive" src="/public/vksos/assets/images/hethongtudong.gif" />\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Bệnh tật, tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai. Được cấp cứu, chữa trị kịp thời l&agrave; mong ước của mọi người.<br />\r\n	<br />\r\n	Hiện nay, khi mắc bệnh, tai nạn người d&acirc;n thường tự đến bệnh viện, ph&ograve;ng kh&aacute;m để được chữa trị. <strong>Giải ph&aacute;p nội viện</strong> đ&atilde; v&agrave; đang đ&aacute;p ứng nhu cầu cực lớn của x&atilde; hội dẫn đến t&igrave;nh trạng qu&aacute; tải với những hệ luỵ ng&agrave;y c&agrave;ng nghi&ecirc;m trọng hơn. Người d&acirc;n đến kh&aacute;m chữa bệnh phải chờ đợi v&agrave;i giờ để chỉ được kh&aacute;m chữa trong v&agrave;i ph&uacute;t v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.<br />\r\n	<br />\r\n	B&ecirc;n cạnh những hệ luỵ đ&oacute;, người gi&agrave; yếu, người mắc bệnh mạn t&iacute;nh như tim mạch, đ&aacute;i th&aacute;o đường, hen suyển, bệnh phổi tắc nghẻn mạn t&iacute;nh (COPD)&hellip;, người bị thương t&acirc;t như gảy cổ xương đ&ugrave;i&hellip; thường gặp kh&oacute; khăn khi phải di chuyển n&ecirc;n việc đến với cơ sở y tế c&agrave;ng bị phiền h&agrave; v&agrave; phức tạp hơn.<br />\r\n	<br />\r\n	Trong trường hợp bệnh nặng như đột quị, nhồi m&aacute;u cơ tim&hellip; cần phải được cấp cứu đ&uacute;ng c&aacute;ch, việc tự đến bệnh viện thường kh&ocirc;ng được xử tr&iacute; đ&uacute;ng, đến bệnh viện trễ, dẫn đến nhiều hậu quả nặng nề cho người bệnh, đe doạ t&iacute;nh mạng hoặc phải g&aacute;nh chịu những di chứng trong suốt quảng đời c&ograve;n lại.<br />\r\n	<br />\r\n	Thấu cảm nỗi lo v&agrave; mong ước của bao người, <strong>Vạn Khang SOS</strong> được th&agrave;nh lập để cung ứng cho người d&acirc;n một giải ph&aacute;p mới: <strong>&ldquo;giải ph&aacute;p ngoại viện&rdquo;</strong> với <strong>g&oacute;i dịch vụ to&agrave;n diện: cấp cứu tại chỗ, chữa bệnh tại nh&agrave;</strong> tr&ecirc;n cơ sở li&ecirc;n kết chặt chẽ với c&aacute;c bệnh viện lớn, tạo th&agrave;nh một mạng lưới được ph&acirc;n bổ đều khắp tr&ecirc;n to&agrave;n th&agrave;nh phố để <strong>gần d&acirc;n nhất</strong>, lu&ocirc;n sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu của người bệnh một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n	<br />\r\n	Vạn Khang SOS sử dụng c&ocirc;ng nghệ th&ocirc;ng tin hiện đại, tạo n&ecirc;n sự <strong>tiện dụng</strong> cho người sử dụng dịch vụ: <strong>&ldquo;chỉ cần bấm n&uacute;t&rdquo;</strong> tr&ecirc;n thiết bị chuy&ecirc;n dụng của Vạn Khang SOS hoặc tr&ecirc;n ứng dụng được tải miễn ph&iacute; v&agrave;o điện thoại di động.</p>\r\n	<!-- <img src="<?php echo BASE_DIR ?>public/vksos/assets/images/quytrinhcapcuu.png" class="img-responsive"> -->\r\n\r\n	<p style="text-align:center"><strong>V&Igrave; SỨC KHỎE CỦA BẠN V&Agrave; NGƯỜI TH&Acirc;N, TẢI NGAY ỨNG DỤNG VK-SOS</strong> <a href="http://vankhangsos.vn/app/"><img src="./assets/images/download-button.png" style="padding-bottom:0px; padding-top:0px; width:40%" /></a></p>\r\n\r\n	<p style="text-align:center"><!-- Để luôn sẵn sàng cho yêu cầu <br> --><strong>CẤP CỨU TẠI CHỖ - CHỮA BỆNH TẠI NH&Agrave;</strong><br />\r\n	<strong>TIỆN DỤNG &ndash; NHANH CH&Oacute;NG &ndash; HIỆU QUẢ</strong></p>\r\n	</li>\r\n</ul>\r\n', '', 1, 0),
(73, 1, 'Thông Tin', 'thong-tin', 'Biểu Phí', 'Lập trình php cơ bản', 'Lập trình php cơ bản', '<p>asdasdas das das</p>\r\n', '<p>asdas</p>\r\n', '/public/img/images', 1, 0),
(74, 1, 'Liên hệ', 'lien-he', 'Thông tin', '', '', '', '', '/public/img/images', 1, 1),
(78, 1, 'Đồng Hành Cùng Vạn Khang', 'dong-hanh-cung-van-khang', '', '', '', '<p>asda sdasas dasdas</p>\r\n', '', '/public/img/images', 1, 1),
(79, 1, 'Tư vấn SK từ xa', 'tu-van-sk-tu-xa', '', '', '', '', '', '/public/img/images', 1, 0),
(80, 1, 'Cấp cứu tại chỗ', 'cap-cuu-tai-cho', '', '', '', '', '', '/public/img/images', 1, 0),
(81, 1, 'Khám bệnh tại nhà', 'kham-benh-tai-nha', '', '', '', '', '', '/public/img/images', 1, 0),
(82, 1, 'Đăng ký khám bệnh', 'dang-ky-kham-benh', '', '', '', '', '', '/public/img/images', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `vksos_quantri`
--

CREATE TABLE `vksos_quantri` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `random` varchar(10) NOT NULL,
  `HoTen` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` text NOT NULL,
  `GhiChu` text NOT NULL,
  `Nhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vksos_quantri`
--

INSERT INTO `vksos_quantri` (`username`, `password`, `random`, `HoTen`, `email`, `SDT`, `DiaChi`, `GhiChu`, `Nhom`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `vksos_sanpham`
--

CREATE TABLE `vksos_sanpham` (
  `IdTin` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `MaDanhMuc` int(11) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `TieuDeKhongDau` varchar(500) NOT NULL,
  `TomTat` text NOT NULL,
  `NoiDung` longtext NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT '0',
  `Stt` int(11) NOT NULL,
  `Gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vksos_tin`
--

CREATE TABLE `vksos_tin` (
  `IdTin` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `MaDanhMuc` int(11) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `TieuDeKhongDau` varchar(500) NOT NULL,
  `TomTat` text NOT NULL,
  `NoiDung` longtext NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT '0',
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `vksos_tin`
--

INSERT INTO `vksos_tin` (`IdTin`, `title`, `keyword`, `description`, `MaDanhMuc`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('2016100218075324', '', '', '', 74, 'bài 1', 'bai-12016100218075324', '<p>B&agrave;i viết</p>\r\n', '<p>Asadasdasas ads</p>\r\n', 1, '2017-11-16 04:29:45', 'main-index-banner.jpg', 1, 1, 2),
('2016113008565933', 'Alex Albert', 'CEO. Giám Đốc phát triển', '', 74, 'Greatest, awesome  ', 'greatest-awesome2016113008565933', '<p>asa sdasd asd as</p>\r\n', '<p>as dasd asd as das</p>\r\n\r\n<p>d&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>d&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>das</p>\r\n', 1, '2017-11-18 11:12:40', 'main-index-banner.jpg', 0, 0, 0),
('2016113009484872', '', '', '', 74, 'cong 1111', 'cong-11112016113009484872', '', '<p>a sasd as</p>\r\n', 1, '2017-11-18 11:12:43', 'main-index-banner.jpg', 0, 0, 0),
('2016113009560948', '', '', '', 74, 'cong ty 2', 'cong-ty-22016113009560948', '', '<p>as das</p>\r\n', 1, '2017-11-18 11:12:46', 'main-index-banner.jpg', 0, 0, 0),
('201612161481865217', 'Tạo Class Sản phẩm', 'Tạo Class Sản phẩm, nguyễn văn độ, nguyenvando.net', 'Tạo Class Sản phẩm, nguyễn văn độ, nguyenvando.net', 74, 'Class sản phẩm', 'class-san-pham201612161481865217', '<p>Tạo Class Sản phẩm</p>\r\n', '<p><strong>Tạo Class sản phẩm</strong></p>\r\n\r\n<p><iframe frameborder="0" height="315" src="https://www.youtube.com/embed/BeVs7aKMnug" width="560"></iframe></p>\r\n', 1, '2017-11-16 04:25:09', 'main-index-banner.jpg', 0, 0, 0),
('201711121510465750', 'Bài Viết', 'Bài Viết', 'Bài Viết', 74, 'Bài Viết', 'bai-viet201711121510465750', '<p>b&agrave;i viết</p>\r\n', '<p>B&agrave;i Viết</p>\r\n', 1, '2017-11-18 11:12:49', 'main-index-banner.jpg', 1, 0, 1),
('201711181510999925', 'asdas', 'as', 'da', 74, 'new 1', 'new-1201711181510999925', '<p>asdas</p>\r\n', '<p>dasdas</p>\r\n', 1, '2017-11-18 11:12:05', '', 1, 0, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bluearc_menu`
--
ALTER TABLE `bluearc_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bluearc_option`
--
ALTER TABLE `bluearc_option`
  ADD PRIMARY KEY (`MaOption`);

--
-- Index pour la table `bluearc_pages`
--
ALTER TABLE `bluearc_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Index pour la table `bluearc_quantri`
--
ALTER TABLE `bluearc_quantri`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `bluearc_sanpham`
--
ALTER TABLE `bluearc_sanpham`
  ADD PRIMARY KEY (`IdTin`);

--
-- Index pour la table `vksos_danhmuc`
--
ALTER TABLE `vksos_danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`),
  ADD UNIQUE KEY `TenKhongDau` (`TenKhongDau`);

--
-- Index pour la table `vksos_hotro`
--
ALTER TABLE `vksos_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vksos_khachang`
--
ALTER TABLE `vksos_khachang`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `vksos_lichsu`
--
ALTER TABLE `vksos_lichsu`
  ADD PRIMARY KEY (`DongLichSu`);

--
-- Index pour la table `vksos_menu`
--
ALTER TABLE `vksos_menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vksos_option`
--
ALTER TABLE `vksos_option`
  ADD PRIMARY KEY (`MaOption`);

--
-- Index pour la table `vksos_pages`
--
ALTER TABLE `vksos_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Index pour la table `vksos_quantri`
--
ALTER TABLE `vksos_quantri`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `vksos_sanpham`
--
ALTER TABLE `vksos_sanpham`
  ADD PRIMARY KEY (`IdTin`);

--
-- Index pour la table `vksos_tin`
--
ALTER TABLE `vksos_tin`
  ADD PRIMARY KEY (`IdTin`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `vksos_danhmuc`
--
ALTER TABLE `vksos_danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vksos_hotro`
--
ALTER TABLE `vksos_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT pour la table `vksos_lichsu`
--
ALTER TABLE `vksos_lichsu`
  MODIFY `DongLichSu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `vksos_menu`
--
ALTER TABLE `vksos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `vksos_pages`
--
ALTER TABLE `vksos_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
