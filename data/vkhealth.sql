-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2018 at 08:14 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vkhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_danhmuc`
--

CREATE TABLE `rhmtp_danhmuc` (
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
-- Table structure for table `rhmtp_hotro`
--

CREATE TABLE `rhmtp_hotro` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` text NOT NULL,
  `delete` int(11) NOT NULL,
  `noidung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtp_hotro`
--

INSERT INTO `rhmtp_hotro` (`id`, `email`, `hoten`, `sdt`, `diachi`, `delete`, `noidung`) VALUES
(25, 'redlight41114@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-26 06:17:39_____[\"3\"]'),
(28, 'teagandooley@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-28 07:50:59_____[\"3\"]'),
(29, 'mnsmjo@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-31 09:09:30_____[\"3\"]'),
(30, 'huspawaty@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-02 05:17:03_____[\"3\"]'),
(31, 'longthienlk@gmail.com', 'longthien', '0947582918', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36__2017-08-02 12:30:28___Mày cũng biết làm web ak __[\"3\"]'),
(32, 'andrews412@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-03 08:59:39_____[\"3\"]'),
(33, 'tsommerf@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-04 05:29:39_____[\"3\"]'),
(34, 'robertcampanello@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-07 06:07:52_____[\"3\"]'),
(35, 'obasary@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 03:07:08_____[\"3\"]'),
(36, 'vinayjoshi1988@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 11:57:16_____[\"3\"]'),
(37, 'tabanderson@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 01:41:53_____[\"3\"]'),
(38, 'meaganleigh777@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 08:44:52_____[\"3\"]'),
(39, 'johnpaul112891@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 09:11:38_____[\"3\"]'),
(40, 'shario@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 12:57:38_____[\"3\"]'),
(41, 'petra-stein@hotmail.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 04:05:33_____[\"3\"]'),
(42, 'christophervelez1982@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 06:07:42_____[\"3\"]'),
(43, 'cldick2@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 08:36:21_____[\"3\"]'),
(44, 'shtiblet@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 09:51:21_____[\"3\"]'),
(45, 'dwynrchrds@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-12 05:45:30_____[\"3\"]'),
(46, 'thaokon@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 03:41:09_____[\"3\"]'),
(47, 'vancemartin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 05:16:02_____[\"3\"]'),
(48, 'kim.small2@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-17 04:54:10_____[\"3\"]'),
(49, 'marygracesunga@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-18 01:36:26_____[\"3\"]'),
(50, 'aubrey.yuzva@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-19 02:15:45_____[\"3\"]'),
(51, 'tomsplumbingelgin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 03:18:13_____[\"3\"]'),
(52, 'daleachapman45@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 11:58:33_____[\"3\"]'),
(53, 'tkarl2209@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-22 09:24:57_____[\"3\"]'),
(54, 'cassandra.durack@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 12:04:49_____[\"3\"]'),
(55, 'noi@acadia-info.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 01:29:54_____[\"3\"]'),
(56, 'info@48first.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 01:08:07_____[\"3\"]'),
(57, 'hermanloud@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 11:56:11_____[\"3\"]'),
(58, 'ssvalina@sbcglobal.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 04:10:24_____[\"3\"]'),
(59, 'sarah.massey2@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-25 01:52:04_____[\"3\"]'),
(60, 'andrewkaspers@gmail.com', '', '', '112.213.89.101', 0, '2017-08-26 09:57:58<br/>pending<br>đã gui mail<br><hr>2017-08-26 09:56:54<br/>pending<br>asd asdasd as<br><hr>Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:53:25_____[\"3\"]'),
(61, 'jofurlong001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:17:11_____[\"3\"]'),
(62, 'dnaciadis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 04:02:30_____[\"3\"]'),
(63, 'jkpareso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 08:48:04_____[\"3\"]'),
(64, 'kk1188@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 10:00:12_____[\"3\"]'),
(65, 'charliethelee@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 01:28:47_____[\"3\"]'),
(66, 'mtndrmr@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 09:56:04_____[\"3\"]'),
(67, 'darling500@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-30 12:09:59_____[\"3\"]'),
(68, 'elaineylflavin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 03:36:47_____[\"3\"]'),
(69, 'mindyreed11@bellsouth.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 06:21:17_____[\"3\"]'),
(70, 'stephanie.koontz.95@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 02:11:48_____[\"3\"]'),
(71, 'akjohns001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 09:31:09_____[\"3\"]'),
(72, 'ddsmkg@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 12:13:06_____[\"3\"]'),
(73, 'damon.patralakis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 06:41:38_____[\"3\"]'),
(74, 'maboll@rcn.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 02:06:53_____[\"3\"]'),
(75, 'sandymiller0705@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 09:12:09_____[\"3\"]'),
(76, 'benhart74@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-03 12:10:51_____[\"3\"]'),
(77, 'askcarso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 02:43:16_____[\"3\"]'),
(78, 'astapins@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 05:00:59_____[\"3\"]'),
(79, 'scott.w.oconnell@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 11:55:48_____[\"3\"]'),
(80, 'patrick.auer.jones@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 06:26:02_____[\"3\"]'),
(81, 'gaytanric@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 11:39:06_____[\"3\"]'),
(82, 'coachtglove@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 02:05:43_____[\"3\"]'),
(83, 'fholler99@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 08:54:18_____[\"3\"]'),
(84, 'vatampm@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 10:31:18_____[\"3\"]'),
(85, 'meridianclinics@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 03:32:46_____[\"3\"]'),
(86, 'ajsvaan@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 10:40:34_____[\"3\"]'),
(87, 'suttongr@pacbell.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-09 02:12:46_____[\"3\"]'),
(88, '', 'ZAJJypfwqS', 'rNEmjRgcO', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-09 01:30:36___r8a3Il http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(89, 'johnpaulrangel@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:08:35_____[\"3\"]'),
(90, 'clairepooleh866h@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:46:21_____[\"3\"]'),
(91, 'ulugbekgp@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 02:55:00_____[\"3\"]'),
(92, 'derek_colon@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 03:51:51_____[\"3\"]'),
(93, '', 'MeBNWxBWTnhMBO', 'zZxYvwuOqtJxsPeP', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-12 08:04:57___H6mQV8 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(94, 'eddiemallett@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:12:56_____[\"3\"]'),
(95, 'nyltom@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:38:14_____[\"3\"]'),
(96, 'haughney@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 05:15:54_____[\"3\"]'),
(97, 'deestric@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 03:29:46_____[\"3\"]'),
(98, 'winnyeme@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 11:07:07_____[\"3\"]'),
(99, 'friedriceandeggrolls@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 06:02:19_____[\"3\"]'),
(100, 'suziejudd64@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 07:11:16_____[\"3\"]'),
(101, 'darchila@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 01:28:42_____[\"3\"]'),
(102, 'post3092@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 06:40:15_____[\"3\"]'),
(103, 'vu0tran@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 03:36:00_____[\"3\"]'),
(104, 'stevescottemail@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 11:56:04_____[\"3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_khachang`
--

CREATE TABLE `rhmtp_khachang` (
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
-- Dumping data for table `rhmtp_khachang`
--

INSERT INTO `rhmtp_khachang` (`email`, `password`, `random`, `HoTen`, `SDT`, `DiaChi`, `Nhom`, `active`, `ThongTinChung`) VALUES
('a', '4571eb1bac07d1392b8987d84c91d4d52ff06c5c', 'Bvp4FSAY', 'TRẦN THỊ DUNG', '', '', 1, '1', NULL),
('do.nguyen@inlen.com', '53e553ef92f61ac5d1df3d0cd8b582bca6670af9', 'luXezPlF', 'nguyễn văn Độ', '0123456789', 'sdf sdfs', 1, '1', '{\"avata\":\"luXezPlF.jpeg\"}'),
('hoangnhat91@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'Vũ Hoàng Nhật', '0901513885', 'Q12, TP HCM', 1, '1', '{\"avata\":\"8wrWWNCD.jpeg\",\"AnHienSDT\":0}'),
('hoangnhatvu01@gmail.com', 'bc7c8b05cc661f8b841aca08985a911ff06815db', 'iWFr2euU', 'Vu Hoang Nhat', '0123456789', '', 1, '1', NULL),
('hpdiemhang@gmail.com', 'a7879dc320406bbdc884a936047fdc7ecfe4eab1', 'GMIQLxrq', 'Nguyễn Thị Diễm Hằng', '', '', 1, '1', NULL),
('lehathanh2807@gmail.com', 'd5d3e02d57e8359456ea58fa073d686713b5015b', 'g1on4l1j', 'Hà Thanh', '0904611543', '', 1, '1', NULL),
('leminhhoang1812@gmail.com', '26c797a9ef4c4640aa3c3ecc4730fcbc9e047d9f', 'TAXQJ9fu', 'af', '01234567745', 'kk dddff dfgdf\r\n', 1, '-1', '{\"avata\":\"TAXQJ9fu.jpeg\"}'),
('linlvo.it@gmail.com', '714daae9b07810652b53d6844cef4f8ef52230fc', 's7avraG2', 'Linl Vo', '0902407247', '', 1, '1', '{\"avata\":\"s7avraG2.jpeg\"}'),
('minhchau.heomoi@gmail.com', '84df2a5cb1e5d551fc2a9a191b7b2bc01a1b3ef6', 'qB6lIOWP', 'Lê Thị Minh Châu', '01659180894', '', 1, '1', '{\"avata\":\"qB6lIOWP.jpeg\"}'),
('namdong92@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'nguyễn van độ', '1234567890', 'as asda', 1, '1', '{\"avata\":\"8wrWWNCD.jpeg\"}'),
('namdongvando@gmail.com', 'e555ea9e0cdf79ec5777578c9c339df323ea014b', 'SerSHnQs', 'namdongvando@gmail.com', '', '', 1, 'SerSHnQs', NULL),
('nguyenvanquang943@gmail.com', 'bf39dc3a71b43258081c6983d1bc17c0ea514413', 'nQhuX6gQ', 'nguyen van quang', '0919276336', '', 1, '1', '{\"avata\":\"nQhuX6gQ.jpeg\"}'),
('pg_vina@yahoo.com.vn', '28d5e7a05d9d2c0c8cc36353d87546a778e7e993', 'DXCEFS5Y', 'phan thanh hai', '0933955658', '', 1, '1', '{\"avata\":\"DXCEFS5Y.jpeg\"}'),
('phamha.3612@gmail.com', 'f0a5a08d1abad46055c4dc03dac75ac9a4532470', 'qLbl2Pgn', 'TISASHOP', '0933520783', '568 Phạm Văn Bạch, P.13, Q.Tân Bình, HCM', 1, '1', ''),
('ts_hailong@yahoo.com.vn', '48efcf5eae3ec0801697dd0e68ddf177b228184a', 'OByB0p0U', 'phaihailong', '', '', 1, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_lichsu`
--

CREATE TABLE `rhmtp_lichsu` (
  `DongLichSu` int(11) NOT NULL,
  `MaNhanVien` varchar(200) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `Action` varchar(200) NOT NULL,
  `Table` varchar(200) NOT NULL,
  `LoaiThaoTac` varchar(200) NOT NULL,
  `NoiDung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtp_lichsu`
--

INSERT INTO `rhmtp_lichsu` (`DongLichSu`, `MaNhanVien`, `ThoiGian`, `Action`, `Table`, `LoaiThaoTac`, `NoiDung`) VALUES
(1, 'namdong92a', '2016-05-17 07:22:10', 'actiona', 'Tablea', 'Xoaa', 'xoa noi ufnga');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_menu`
--

CREATE TABLE `rhmtp_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rhmtp_menu`
--

INSERT INTO `rhmtp_menu` (`id`, `name`, `link`, `parent`, `group`, `range`) VALUES
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
-- Table structure for table `rhmtp_option`
--

CREATE TABLE `rhmtp_option` (
  `MaOption` varchar(20) NOT NULL,
  `LoaiOption` int(11) NOT NULL,
  `GiaTriVN` text NOT NULL,
  `GiaTriEN` text,
  `GhiChu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtp_option`
--

INSERT INTO `rhmtp_option` (`MaOption`, `LoaiOption`, `GiaTriVN`, `GiaTriEN`, `GhiChu`) VALUES
('Lang_BaiVietMoi', 2, 'Bài viết mới', '', '{\"type\":\"2\",\"title\":\"BaivietMoi\"}'),
('Lang_DanhMuc', 2, 'Danh Mục Bài Viết', '', '{\"type\":\"2\",\"title\":\"Danh Mục Bài Viết\"}'),
('Lang_Facebook', 2, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/nguyenvando.net/\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/nguyenvando.net/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/nguyenvando.net/\">Nguyenvando.net</a></blockquote></div>', '', '{\"type\":\"2\",\"title\":\"Facebook\"}'),
('Lang_Slogan', 2, 'Chia sẻ kiem', '', '{\"type\":\"2\",\"title\":\"Slogan\"}'),
('Lang_TrangXaHoi', 2, 'Trang Xã Hội', '', '{\"type\":\"2\",\"title\":\"Trang Xã Hội\"}'),
('Option_Logo', 1, 'logo-vksos.png', '', '{\"type\":\"1\",\"title\":\"Logo Web\"}'),
('SEO_Des', 0, 'description', 'description', ''),
('SEO_Google', 0, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', ''),
('SEO_Keyword', 0, 'keyword', 'keyword', ''),
('SEO_Title', 0, 'Title', 'Title', ''),
('Social_Facebook', 0, '', '', ''),
('Social_Google', 0, '', '', ''),
('Social_Twitter', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_pages`
--

CREATE TABLE `rhmtp_pages` (
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
-- Dumping data for table `rhmtp_pages`
--

INSERT INTO `rhmtp_pages` (`idPa`, `idGroup`, `TieuDe`, `TieuDeKD`, `Title`, `Des`, `Keyword`, `TomTat`, `NoiDung`, `UrlHinh`, `AnHien`, `LoaiPage`) VALUES
(1, 1, 'Giới Thiệu', 'gioi-thieu', 'Giới Thiệu', 'about', 'about', '', '<h2 style=\"text-align:center\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:20px\"><strong>GIỚI THIỆU VKHS</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong> đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;</span>&nbsp;<span style=\"font-size:16px\">0314538127</span>&nbsp;<span style=\"font-size:16px\">ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>VKHS</strong> cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong> gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ. <a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">(</span></em></a><em><a href=\"http://yttv.vn\"><span style=\"color:#0000FF\">Xem th&ecirc;m</span></a></em><a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">...)</span></em></a></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Tư vấn sức khoẻ từ xa</strong> với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn. </span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất. </span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n. </span></span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa: </strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m...)</span></a></em></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật: </strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip; <strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong> theo chỉ định của BS điều trị.&nbsp;</span></span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Vận chuyển </strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).</span></span></span></span></span></span></span></span><br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>. </span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\">Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</span></span></span></span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS. <em><span style=\"color:#0000FF\">(</span><a href=\"http://vkhs.vn/mobile/vkhs.apk\"><span style=\"color:#0000FF\">Tải ứng dụng</span></a><span style=\"color:#0000FF\">)</span></em></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-V&agrave;o trang web VKHS hay VK_SOS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Điện thoại số &hellip;</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế. &nbsp;</span></p>\r\n', '', 1, 0),
(73, 1, 'Thông Tin', 'thong-tin', 'Biểu Phí', 'Lập trình php cơ bản', 'Lập trình php cơ bản', '<p>asdasdas das das</p>\r\n', '<p>Th&ocirc;ng Tin dang cập nhật</p>\r\n', '/public/img/images', 1, 1),
(74, 1, 'Liên hệ', 'lien-he', 'Thông tin', '', '', '', '<div class=\"contact-list\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5><strong><span style=\"color:#FF0000\"><span style=\"font-size:14px\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ</span></span></strong></h5>\r\n\r\n<div class=\"contact-content-left\">\r\n<ul>\r\n	<li><strong><span style=\"font-size:14px\">C&Ocirc;NG TY TNHH GIẢI PH&Aacute;P SỨC KHỎE VẠN KHANG</span></strong><br />\r\n	<em>(<span style=\"font-size:14px\">VAN KHANG HEALTH SOLUTIONS JOINT STOCK COMPANY)</span></em></li>\r\n	<li><strong>Địa chỉ:</strong> 31A/8 H&ugrave;ng Vương, P9, Q5, TPHCM</li>\r\n	<li><strong>Hotline:</strong> <a href=\"callto:1900%2063%2066%2071\">1900 63 66 71</a></li>\r\n	<li><strong>MST:</strong> 0314538127</li>\r\n	<li><strong>Website:</strong> <a href=\"http://vkhs.vn\">www.vkhs.vn</a></li>\r\n</ul>\r\n<!--<ul>--><!--<li><span><span>BỘ PHẬN CHĂM SÓC KHÁCH HÀNG</span></span></li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> sos@vankhangsos.vn</li>--><!--</ul>--></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5><span style=\"color:rgb(255, 0, 0)\"><strong>THỜI GIAN L&Agrave;M VIỆC - BỘ PHẬN VĂN PH&Ograve;NG</strong></span></h5>\r\n\r\n<div class=\"contact-content-left\">\r\n<ul>\r\n	<li><strong>Văn phòng VKHS</strong> : (028) 7300 2246</li>\r\n	<li><strong>Văn phòng&nbsp; SOS</strong>&nbsp; :&nbsp; (028) 7300 2611</li>\r\n	<li>Từ thứ hai đến thứ bảy h&agrave;ng tuần (trừ c&aacute;c ng&agrave;y Lễ).</li>\r\n	<li>Buổi s&aacute;ng: <strong>8h00</strong> đến <strong>12h00</strong>.</li>\r\n	<li>Buổi chiều: <strong>13h00</strong> đến <strong>17h00.</strong></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n<div class=\"row bg-gray\">\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5>&nbsp;</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<!--<div class=\"col-md-6\">--><!--<div class=\"contact-list-item\">--><!--<div class=\"contact-content\">--><!--<h5 class=\"contact-title\"> CÔNG TY TNHH VẠN KHANG SOS </h5>--><!--<div class=\"contact-content-left\">--><!--<ul>--><!--<li><span><span>Trụ sở chính</span></span></li>--><!--<li><span>Địa chỉ:</span> 113 Trần Bình Trọng, P.2, Q.5, TPHCM</li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> contact@vankhangsos.vn</li>--><!--</ul>--><!--<ul>--><!--<li><span><span>Trụ sở chính</span></span></li>--><!--<li><span>Địa chỉ:</span> 113 Trần Bình Trọng, P.2, Q.5, TPHCM</li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> contact@vankhangsos.vn</li>--><!--</ul>--><!--</div>--><!--</div>--><!--</div>--><!--</div>--></div>\r\n</div>\r\n', '/public/img/images', 1, 0),
(78, 1, 'Đồng Hành Cùng Vạn Khang', 'dong-hanh-cung-van-khang', '', '', '', '<p>VKHS được th&agrave;nh lập nhằm tạo n&ecirc;n một hệ sinh th&aacute;i li&ecirc;n kết c&aacute;c nh&agrave; cung ứng dịch vụ v&agrave; sản phẩm về y tế, tạo n&ecirc;n một hệ thống chăm s&oacute;c sức khoẻ to&agrave;n diện v&agrave; li&ecirc;n tục cho người d&acirc;n từ Gi&aacute;o dục, tư vấn, hướng dẫn thay đổi h&agrave;nh vi để dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ&nbsp; đến cấp cứu tại chỗ kịp thời, kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật tại nh&agrave; v&agrave; kết nối đăng k&yacute; kh&aacute;m chữa bệnh, hẹn giờ tại c&aacute;c cơ sở y tế từ Trạm y tế đến BV chuy&ecirc;n khoa đầu ng&agrave;nh&hellip;.</p>\r\n', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>ĐỒNG H&Agrave;NH V&Agrave; PH&Aacute;T TRIỂN C&Ugrave;NG VKHS</strong></span></p>\r\n\r\n<div>VKHS được th&agrave;nh lập nhằm tạo n&ecirc;n một hệ sinh th&aacute;i li&ecirc;n kết c&aacute;c nh&agrave; cung ứng dịch vụ v&agrave; sản phẩm về y tế, tạo n&ecirc;n một hệ thống chăm s&oacute;c sức khoẻ to&agrave;n diện v&agrave; li&ecirc;n tục cho người d&acirc;n từ Gi&aacute;o dục, tư vấn, hướng dẫn thay đổi h&agrave;nh vi để dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ&nbsp; đến cấp cứu tại chỗ kịp thời, kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật tại nh&agrave; v&agrave; kết nối đăng k&yacute; kh&aacute;m chữa bệnh, hẹn giờ tại c&aacute;c cơ sở y tế từ Trạm y tế đến BV chuy&ecirc;n khoa đầu ng&agrave;nh&hellip;. <em><a href=\"http://vkhs.vn/index_bak.html#/blog/1/gioi-thieu.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m giới thiệu VKHS).</span></a></em></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>VKHS ứng dụng c&aacute;c tiến bộ c&ocirc;ng nghệ thống tin hiện đại thuộc thế hệ thứ tư, tạo n&ecirc;n sự kết nối tự động, thuận tiện cho cả đối t&aacute;c đồng h&agrave;nh v&agrave; người d&acirc;n để sử dụng c&aacute;c dịch vụ của VKHS.</div>\r\n\r\n<div>Với mục đ&iacute;ch v&agrave; c&ocirc;ng nghệ tr&ecirc;n, VKHS đ&atilde; li&ecirc;n kết với nhiều đối t&aacute;c đồng h&agrave;nh</div>\r\n\r\n<ul>\r\n	<li>C&aacute;c bệnh viện Chợ Rẩy, BV Thống Nhất, BV Qu&acirc;n Y 175, BV Viện Tim TPHCM, BV Nguyễn Tri Phương, BV Nh&acirc;n d&acirc;n Gia Định, BV B&igrave;nh Thạnh, BV Đa khoa S&agrave;i G&ograve;n, BV Quận 2, BV Quận Thủ Đức&hellip;..</li>\r\n	<li>Trung t&acirc;m cấp cứu 115 TPCHM</li>\r\n	<li>Ng&acirc;n h&agrave;ng C&ocirc;ng Thương Việt Nam (Vietin)</li>\r\n	<li>C&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ th&ocirc;ng tin VNPT, TDS, GME, ADA, Si&ecirc;u Thuật</li>\r\n	<li>C&ocirc;ng ty Dược Ch&acirc;n T&acirc;m</li>\r\n	<li>Hội Y tế c&ocirc;ng cộng TP HCM</li>\r\n	<li>Hội Trang thiết bị y tế TP HCM</li>\r\n	<li>Hội chữ thập đỏ TP HCM</li>\r\n</ul>\r\n\r\n<div>Trong nền <strong>kinh tế chia sẻ</strong>, việc đồng h&agrave;nh sẽ mang lại nhiều lợi &iacute;ch cho cả VKHS v&agrave; c&aacute;c đối t&aacute;c đồng h&agrave;nh. VKHS sẽ phối hợp v&agrave; hỗ trợ c&aacute;c đối t&aacute;c đồng h&agrave;nh n&acirc;ng cao năng lực ứng dụng c&aacute;c c&ocirc;ng nghệ th&ocirc;ng tin hiện đại đ&aacute;p ứng tốt hơn y&ecirc;u cầu kết nối với người d&acirc;n v&agrave; quản l&yacute; c&aacute;c hoạt động của doanh nghiệp.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Để hệ thống dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n ng&agrave;y c&agrave;ng được mở rộng, VKHS mong muốn c&aacute;c cơ sở y tế, c&aacute;c tổ chức x&atilde; hội, c&aacute;c doanh nghiệp trong v&agrave; ngo&agrave;i nước c&ugrave;ng đồng h&agrave;nh với VKHS:</div>\r\n\r\n<ul>\r\n	<li>C&aacute;c cơ sở kh&aacute;m chữa bệnh c&ocirc;ng, tư tr&ecirc;n cả nước đồng h&agrave;nh cung ứng c&aacute;c dịch vụ kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật cho người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh&hellip; ở tại nh&agrave;, tại tuyến y tế cơ sở v&agrave; tại c&aacute;c BV đa khoa, chuy&ecirc;n khoa.</li>\r\n	<li>Trung t&acirc;m cấp cứu của c&aacute;c tỉnh th&agrave;nh tr&ecirc;n cả nước sử dụng<strong> giải ph&aacute;p điều h&agrave;nh tự động mạng lưới cấp cứu</strong>, tạo n&ecirc;n một hệ thống cấp cứu li&ecirc;n th&ocirc;ng tr&ecirc;n cả nước, sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu cấp cứu của người d&acirc;n ở bất cứ đ&acirc;u, kể cả trong t&igrave;nh huống phải cấp cứu h&agrave;ng loạt người.</li>\r\n	<li>C&aacute;c Labo x&eacute;t nghiệm y khoa cung cấp dịch vụ lấy mẫu bệnh phẩm tại nh&agrave;</li>\r\n	<li>C&aacute;c c&ocirc;ng ty ph&acirc;n phối dược phẩm, mỹ phẩm, thực phẩm chức năng cung cấp sản phẩm của m&igrave;nh tại nh&agrave;.</li>\r\n	<li>C&aacute;c c&ocirc;ng ty trang thiết bị cung cấp thiết bị y tế gia dụng tại nh&agrave;.</li>\r\n	<li>C&aacute;c c&ocirc;ng ty vận chuyển bằng xe cấp cứu, xe &ocirc; t&ocirc;, xe m&ocirc; t&ocirc; phục vụ vận chuyển theo y&ecirc;u cầu của bệnh nh&acirc;n, người nh&agrave; bệnh nh&acirc;n, c&aacute;n bộ y tế</li>\r\n</ul>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#0000FF\"><strong>&quot;H&atilde;y c&ugrave;ng đồng h&agrave;nh v&agrave; tham gia c&ugrave;ng VKHS bằng c&aacute;ch tham gia đăng k&yacute; th&agrave;nh vi&ecirc;n, nh&agrave; cung cấp, bệnh viện hoặc b&aacute;c sĩ gia đ&igrave;nh, để c&ugrave;ng chung tay x&acirc;y dựng n&ecirc;n một nền tảng y tế th&ocirc;ng minh linh hoạt, đưa đến cho người d&acirc;n Việt Nam một giải ph&aacute;p y tế ngoại viện đầy đủ v&agrave; tốt nhất&hellip;.&quot;</strong></span></span></p>\r\n', '/public/img/images', 1, 0),
(79, 1, 'Tư vấn sức khỏe từ xa', 'tu-van-suc-khoe-tu-xa', '', '', '', '', '', '/public/img/images', 1, 0),
(80, 1, 'Cấp cứu tại chỗ', 'cap-cuu-tai-cho', '', '', '', '', '', '/public/img/images', 1, 0),
(81, 1, 'Khám bệnh tại nhà', 'kham-benh-tai-nha', '', '', '', '', '', '/public/img/images', 1, 0),
(82, 1, 'Đăng ký khám bệnh', 'dang-ky-kham-benh', '', '', '', '', '', '/public/img/images', 1, 0),
(84, 1, 'Hướng dẫn', 'huong-dan', '', '', '', '', '', '/public/img/images', 1, 1),
(83, 1, 'Dịch Vụ', 'dich-vu', '', '', '', '', '', '/public/img/images', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_quantri`
--

CREATE TABLE `rhmtp_quantri` (
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
-- Dumping data for table `rhmtp_quantri`
--

INSERT INTO `rhmtp_quantri` (`username`, `password`, `random`, `HoTen`, `email`, `SDT`, `DiaChi`, `GhiChu`, `Nhom`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '', 1),
('bvrhm', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_sanpham`
--

CREATE TABLE `rhmtp_sanpham` (
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
-- Table structure for table `rhmtp_tiepnhan`
--

CREATE TABLE `rhmtp_tiepnhan` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Sex` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Job` varchar(100) NOT NULL,
  `Service` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Note` text NOT NULL,
  `Status` int(11) NOT NULL,
  `IdBV` int(11) NOT NULL,
  `BHYT` varchar(20) NOT NULL,
  `Xa` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtp_tiepnhan`
--

INSERT INTO `rhmtp_tiepnhan` (`Id`, `FullName`, `Phone`, `Email`, `Sex`, `Birthday`, `Job`, `Service`, `Address`, `Note`, `Status`, `IdBV`, `BHYT`, `Xa`, `createdate`) VALUES
(1, 'nguyen nguyen 1', '0122', 'Emial', 2, '2018-01-16', '', 3, 'a', 'asdas2', 0, 4, '', 0, '2018-01-16 00:00:00'),
(2, '', '', '', 0, '2018-01-16', '', 0, '', '', 1, 3, '', 0, '2018-01-16 00:00:00'),
(3, '', '', '', 0, '2018-01-16', '', 0, '', '', -1, 3, '', 0, '2018-01-16 00:00:00'),
(4, '', '', '', 0, '0000-00-00', '', 0, '', '', 0, 0, '', 0, '2018-01-16 00:00:00'),
(5, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '', 0, '2018-01-16 00:00:00'),
(6, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '', 0, '2018-01-16 00:00:00'),
(7, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '', 0, '2018-01-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtp_tin`
--

CREATE TABLE `rhmtp_tin` (
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
-- Dumping data for table `rhmtp_tin`
--

INSERT INTO `rhmtp_tin` (`IdTin`, `title`, `keyword`, `description`, `MaDanhMuc`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('201712081512734588', '', '', '', 73, 'Lễ ký kết hợp tác toàn diện giữa Vạn Khang SOS với Bệnh viện Chợ rẫy', 'le-ky-ket-hop-tac-toan-dien-giua-van-khang-sos-voi-benh-vien-cho-ray201712081512734588', '<p>Với mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n', '<h3><span style=\"font-size:22px\"><strong>LỄ K&Yacute; KẾT HỢP T&Aacute;C TO&Agrave;N DIỆN BỆNH VIỆN CHỢ RẪY - VẠN KHANG SOS</strong></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bệnh tật, tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai. Được cấp cứu, chữa trị kịp thời l&agrave; mong ước của mọi người. Đất nước ta đang ng&agrave;y c&agrave;ng ph&aacute;t triển, đời sống người d&acirc;n ng&agrave;y c&agrave;ng được n&acirc;ng cao n&ecirc;n nhu cầu chăm s&oacute;c, bảo vệ sức khỏe, chữa trị bệnh tật cũng ng&agrave;y c&agrave;ng cao.</p>\r\n\r\n<p>Hiện nay, khi mắc bệnh, tai nạn người d&acirc;n thường tự đến bệnh viện, ph&ograve;ng kh&aacute;m để được chữa trị. Giải ph&aacute;p nội viện đ&atilde; v&agrave; đang đ&aacute;p ứng nhu cầu cực lớn của x&atilde; hội nhưng cũng đ&atilde; dẫn đến t&igrave;nh trạng qu&aacute; tải với những hệ luỵ ng&agrave;y c&agrave;ng nghi&ecirc;m trọng hơn.&nbsp;<br />\r\nĐể giảm tải, n&acirc;ng cao chất lượng kh&aacute;m chữa bệnh của c&aacute;c cơ sở y tế, đ&aacute;p ứng nhu cầu cấp cứu, kh&aacute;m chữa bệnh của người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh, người gặp kh&oacute; khăn trong di chuyển&hellip; cần thiết phải c&oacute; th&ecirc;m một giải ph&aacute;p mới, giải ph&aacute;p bổ sung, đ&oacute; l&agrave; &ldquo;giải ph&aacute;p ngoại viện&rdquo;: người bệnh được cấp cứu tại chỗ, chữa bệnh tại nh&agrave;.<br />\r\nVới mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, h&ocirc;m nay ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute;&nbsp;<strong>&ldquo;th&agrave;nh vi&ecirc;n VKSOS&rdquo;</strong>&nbsp;sẽ được đảm bảo sẵn s&agrave;ng phục vụ, với gi&aacute; ph&iacute; dịch vụ giảm 20% so với biểu gi&aacute; được c&ocirc;ng bố tr&ecirc;n trang web Vạn Khang SOS v&agrave; được hưởng c&aacute;c ưu đ&atilde;i như giảm ph&iacute; kh&aacute;m chữa bệnh tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m l&agrave; đối t&aacute;c của Vạn Khang SOS.&nbsp;</p>\r\n', 1, '2017-12-08 10:20:16', 'vkhs/kyket01.png', 1, 0, 1),
('201712081512737007', '', '', '', 73, ' Khánh thành Trung tâm cấp cứu Vạn Khang SOS', 'khanh-thanh-trung-tam-cap-cuu-van-khang-sos201712081512737007', '<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n', '<h3><span style=\"font-size:20px\"><strong>Khánh thành Trung t&acirc;m c&acirc;́p cứu Vạn Khang SOS</strong></span></h3>\r\n\r\n<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n\r\n<p><br />\r\nKhi c&oacute; nhu cầu về cấp cứu, người d&acirc;n bấm n&uacute;t SOS để được kết nối trực tiếp đến tổng đ&agrave;i của trung t&acirc;m. Tổng đ&agrave;i sẽ thu thập một số th&ocirc;ng tin về t&igrave;nh trạng người bệnh v&agrave; tiến h&agrave;nh điều động phương tiện ph&ugrave; hợp nhất để tiếp cận người bệnh trong thời gian sớm nhất. B&aacute;c sĩ tiếp nhận nhiệm vụ sẽ li&ecirc;n hệ với người bệnh để hướng dẫn xử tr&iacute; ngay trong thời gian b&aacute;c sĩ di chuyển đến hiện trường. Đội cấp cứu khi tới hiện trường sẽ thực hiện sơ cấp cứu, sau đ&oacute; t&ugrave;y v&agrave;o t&igrave;nh trạng của người bệnh, b&aacute;c sĩ sẽ điều trị tại chỗ hoặc hỗ trợ vận chuyển người bệnh đến bệnh viện gần nhất, c&oacute; chuy&ecirc;n khoa ph&ugrave; hợp với t&igrave;nh trạng bệnh l&yacute; để tiếp tục điều trị.&nbsp;<br />\r\n<br />\r\nHội Y tế c&ocirc;ng cộng TPHCM.</p>\r\n', 1, '2017-12-08 10:17:25', 'vkhs/vk1.jpg', 1, 0, 1),
('201712141513221522', '', '', '', 83, 'Đăng Ký Khám Bệnh', 'dang-ky-kham-benh201712141513221522', '<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với<br />\r\nnguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!<br />\r\nTất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng<br />\r\ndịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n', '<p><strong>ĐĂNG K&Yacute; KH&Aacute;M BỆNH HẸN GIỜ V&Agrave; THANH TO&Aacute;N</strong></p>\r\n\r\n<p>Bạn phải chờ đợi suốt 3 &ndash; 4h&nbsp;khi đi kh&aacute;m bệnh để chỉ được kh&aacute;m, x&eacute;t nghiệm, chụp phim&hellip; kh&ocirc;ng đến 30 ph&uacute;t!</p>\r\n\r\n<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với nguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!</p>\r\n\r\n<p>Tất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng dịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n\r\n<p>Bạn chỉ cần nhấn v&agrave;o biễu tượng <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> tr&ecirc;n Ứng dụng hoặc tr&ecirc;n web VKHS rồi chọn lựa c&aacute;c th&ocirc;ng tin theo y&ecirc;u cầu kh&aacute;m bệnh của bạn:</p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;m bệnh cho ch&iacute;nh bạn hay người kh&aacute;c</li>\r\n	<li>Kh&aacute;m ở BV/ PK n&agrave;o</li>\r\n	<li>C&oacute; sử dụng BHYT hay kh&ocirc;ng</li>\r\n	<li>Kh&aacute;m th&ocirc;ng thường hay kh&aacute;m dịch vụ hay chọn lựa chuy&ecirc;n gia v&agrave; ng&agrave;y giờ kh&aacute;m</li>\r\n	<li>Kh&aacute;m lần đầu hay t&aacute;i kh&aacute;m</li>\r\n	<li>Chuy&ecirc;n khoa kh&aacute;m: c&oacute; thể l&agrave; Ph&ograve;ng kh&aacute;m Nội tổng hợp hoặc c&aacute;c ph&ograve;ng kh&aacute;m chuy&ecirc;n khoa hoặc c&aacute;c dịch vụ kỹ thuật như x&eacute;t nghiệm, chụp Xquang, CT&hellip; hay Si&ecirc;u &acirc;m, Nội soi&hellip;</li>\r\n</ul>\r\n\r\n<p>Hệ thống sẽ gởi đến thiết bị của bạn <strong>&ldquo;Lịch hẹn kh&aacute;m bệnh&rdquo; với đủ th&ocirc;ng tin cần thiết: Số thứ tự, giờ hẹn kh&aacute;m bệnh, ph&ograve;ng kh&aacute;m bệnh&hellip;&nbsp;</strong></p>\r\n\r\n<p>Bạn c&oacute; thể thanh to&aacute;n trước cho bệnh viện: Nhấn v&agrave;o n&uacute;t thanh to&aacute;n tr&ecirc;n web/Ứng dụng VKHS.&nbsp;</p>\r\n\r\n<p><strong>Trường hợp bạn đ&atilde; đến BV/PK</strong>, nh&acirc;n vi&ecirc;n BV/PK sẽ hướng dẫn bạn thực hiện &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; tr&ecirc;n &ldquo;m&agrave;n h&igrave;nh cảm ứng&rdquo; giống như tr&ecirc;n web/Ứng dụng VKHS, đồng thời sẽ gi&uacute;p bạn tải Ứng dụng VKHS v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin - VKHS.</p>\r\n\r\n<p>Người đ&atilde; tải Ứng dụng v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin &ndash; VKHS được hưởng rất nhiều quyền lợi&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-success\" href=\"#/datlichkhambenh\" style=\"color:#fff;background-color: #2099a1;border:#2099a1;\">Đăng K&yacute; Kh&aacute;m Chữa Bệnh</a></p>\r\n', 1, '2017-12-20 09:54:23', '', 1, 0, 1),
('201712141513222244', '', '', '', 83, 'Tư Vấn Sức Khỏe Từ Xa', 'tu-van-suc-khoe-tu-xa201712141513222244', '<p>Telehealth l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng</p>\r\n', '<p><strong>Telehealth</strong> l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng.<span style=\"color:#0000FF\"> </span><a href=\"#/tcs\"><span style=\"color:#0000FF\">(<em>Nhấn v&agrave;o đ&acirc;y để tải ứng dụng miễn ph&iacute;</em>)</span></a></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk1.jpg\" style=\"height:248px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh trong thời gian thực, qua đ&oacute;&nbsp; BS đ&aacute;nh gi&aacute; được tổng trạng của t&igrave;nh huống y tế hiện tại, BS c&oacute; thể c&oacute; được chẩn đo&aacute;n ban đầu gi&uacute;p việc tư vấn v&agrave; hướng dẫn cho bạn xử l&yacute; t&igrave;nh huống ch&iacute;nh x&aacute;c hơn. Thậm ch&iacute; nếu cần thiết phải đến bệnh viện th&igrave; BS cũng sẽ hướng dẫn ch&iacute;nh x&aacute;c cho bạn cần phải kh&aacute;m ở chuy&ecirc;n khoa n&agrave;o để tr&aacute;nh mất thời gian của bạn. <a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(<em>Xem th&ecirc;m đăng k&yacute; kh&aacute;m bệnh</em>)</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk2.png\" style=\"height:342px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth ngo&agrave;i sự tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh, hệ thống c&ograve;n cho ph&eacute;p BS xem lại c&aacute;c hồ sơ y tế của bạn. Khi bạn đ&atilde; c&oacute; hồ sơ kh&aacute;m chữa bệnh lưu trữ tr&ecirc;n cloud VKHS&nbsp;th&igrave; việc tham khảo c&aacute;c dữ liệu y tế sẵn c&oacute; như kết quả chẩn đo&aacute;n những lần kh&aacute;m bệnh trước đ&oacute;, kết quả x&eacute;t nghiệm, chụp phim, si&ecirc;u &acirc;m vv&hellip; gi&uacute;p BS c&oacute; được chẩn đo&aacute;n ban đầu ch&iacute;nh x&aacute;c hơn để việc tư vấn, hướng dẫn đạt hiệu quả hơn.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk3.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong phi&ecirc;n kết nối tư vấn chăm s&oacute;c sức khỏe từ xa BS nhận thấy rằng cần c&oacute; th&ecirc;m &yacute; kiến của Chuy&ecirc;n gia về chuy&ecirc;n khoa. BS sẽ mời Chuy&ecirc;n gia c&ugrave;ng tham gia trao đổi kiểm tra v&agrave; đ&aacute;nh gi&aacute; to&agrave;n diện theo chuy&ecirc;n khoa từ đ&oacute; c&ugrave;ng tư vấn v&agrave; giải đ&aacute;p mọi thắc mắc theo y&ecirc;u cầu của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk4.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#0000FF\"><strong>&quot;Telehealth -&nbsp;B&aacute;c Sĩ Trong Gia Đ&igrave;nh Bạn&quot;</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513741700/huong-dan-su-dung-telehealth-tren-may-tinh.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n m&aacute;y t&iacute;nh</em></a></u></li>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513742765/huong-dan-su-dung-telehealth-tren-smartphone.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n Smartphone</em></a></u></li>\r\n</ul>\r\n', 1, '2017-12-20 01:18:49', '', 1, 0, 1),
('201712141513222560', '', '', '', 83, 'Cấp Cứu Tại Chỗ', 'cap-cuu-tai-cho201712141513222560', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n\r\n<p><strong>Phản ứng nhanh &ndash; Tận dụng thời gian v&agrave;ng trong cấp cứu &ndash; Thực hiện cấp cứu hiệu quả</strong> lu&ocirc;n l&agrave; mong muốn của mọi người.</p>\r\n\r\n<p>Thấu cảm nỗi lo v&agrave; mong ước ấy, Trung t&acirc;m cấp cứu Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) triển khai cung ứng dịch vụ cấp cứu tại chỗ cho người d&acirc;n TP.HCM theo một m&ocirc; h&igrave;nh mới:</p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng cần số điện thoại gọi cấp cứu</strong>, khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t</strong><strong> SOS</strong> sẽ được đ&aacute;p ứng ngay. B&aacute;c sĩ gần nhất sẽ được điều động, phương tiện ph&ugrave; hợp nhất sẽ được sử dụng để tiếp cận bệnh nh&acirc;n trong thời gian sớm nhất c&oacute; thể.</li>\r\n	<li><strong>Kh&ocirc;ng chỉ c&oacute; &ocirc; t&ocirc; cấp cứu</strong>, Vạn Khang SOS c&ograve;n sẵn s&agrave;ng <strong>m&ocirc; t&ocirc; cấp cứu </strong>để c&oacute; thể tiếp cận nhanh nhất với người bệnh, nhất l&agrave; trong t&igrave;nh trạng tắt đường hoặc nh&agrave; trong hẻm s&acirc;u. Xe m&ocirc; t&ocirc; được trang bị đầy đủ thiết bị cấp cứu như tr&ecirc;n xe &ocirc; t&ocirc;, kể cả m&aacute;y điện tim, shock tim&hellip; để thực hiện cấp cứu tại chỗ hiệu quả. Xe m&ocirc; t&ocirc; kh&ocirc;ng vận chuyển bệnh nh&acirc;n.</li>\r\n	<li><strong>Li&ecirc;n kết c&aacute;c bệnh viện để thiết lập mạng lưới cấp cứu chuy&ecirc;n nghiệp </strong>được ph&acirc;n bố đều khắp tr&ecirc;n địa b&agrave;n th&agrave;nh phố nhằm đ&aacute;p ứng nhanh nhất y&ecirc;u cầu cấp cứu của người d&acirc;n <a href=\"http://vankhangsos.vn/hoptacchuyenmon.html\"><span style=\"color:#0000FF\"><em>(Xem th&ecirc;m...)</em></span></a></li>\r\n	<li><strong>Ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến để quản l&yacute;, vận h&agrave;nh hệ thống tự động </strong>gi&uacute;p tiếp cận nhanh ch&oacute;ng, cấp cứu hiệu quả cho người bệnh.</li>\r\n</ul>\r\n\r\n<p>Để sử dụng dịch vụ cấp cứu tại chỗ:</p>\r\n\r\n<ul>\r\n	<li>H&atilde;y <strong>tải miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> sẵn s&agrave;ng</li>\r\n</ul>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t &ldquo;SOS&rdquo;</strong> tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động sẽ định vị người bệnh v&agrave; điều động xe cấp cứu gần nhất đang trong t&igrave;nh trạng sẵn s&agrave;ng để thực hiện nhiệm vụ.</p>\r\n\r\n<ul>\r\n	<li>Trường hợp chưa c&oacute; <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong>, Bạn c&oacute; thể li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ cấp cứu tại chỗ.</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Cấp cứu tại chỗ: &nbsp;<em>An to&agrave;n của Bạn l&agrave; mong ước của Vạn Khang SOS.</em></strong></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ltEI7-o51Fo\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2017-12-20 03:29:40', '', 1, 0, 1),
('201712141513222646', '', '', '', 83, 'Chữa Bệnh Tại Nhà', 'chua-benh-tai-nha201712141513222646', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n\r\n<p>Thực trạng tr&ecirc;n đ&atilde; tạo ra nhu cầu được kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe tại nh&agrave; khi chưa thật sự cần thiết phải v&agrave;o bệnh viện, nhất l&agrave; đối với những người bệnh gặp kh&oacute; khăn trong việc di chuyển, người gi&agrave; yếu mắc bệnh mạn t&iacute;nh&hellip;</p>\r\n\r\n<p>G&oacute;p phần đ&aacute;p ứng mong muốn thiết thực của người bệnh, Ph&ograve;ng kh&aacute;m B&aacute;c sĩ gia đ&igrave;nh Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) trong sự li&ecirc;n kết hợp t&aacute;c c&ugrave;ng c&aacute;c đối t&aacute;c triển khai cung ứng dịch vụ chăm s&oacute;c sức khỏe to&agrave;n diện tại nh&agrave; tr&ecirc;n địa b&agrave;n TP.HCM, cụ thể như:</p>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ đến kh&aacute;m bệnh, k&ecirc; đơn điều trị, tư vấn điều trị v&agrave; chăm s&oacute;c sức khỏe.</li>\r\n	<li>Điều dưỡng đến chăm s&oacute;c người bệnh: ti&ecirc;m ch&iacute;ch, thay băng, chăm s&oacute;c vết thương&hellip;</li>\r\n	<li>Kỹ thuật vi&ecirc;n đến tập vật l&yacute; trị liệu v&agrave; hướng dẫn người bệnh tập vật l&yacute; trị liệu.</li>\r\n	<li>B&aacute;c sĩ, Lương y đến kh&aacute;m bệnh, tư vấn điều trị v&agrave; thực hiện chữa bệnh tại nh&agrave; theo Y học cổ truyền.</li>\r\n	<li>B&aacute;c sĩ, Điều dưỡng, Kỹ thuật vi&ecirc;n đến thực hiện chăm s&oacute;c giảm nhẹ (chống đau, giảm kh&oacute; thở&hellip;) cho bệnh nh&acirc;n ung thư giai đoạn cuối, bệnh nh&acirc;n nặng&hellip;</li>\r\n	<li>Cung cấp thuốc điều trị, lấy mẫu bệnh phẩm để x&eacute;t nghiệm tại nh&agrave; theo chỉ định của B&aacute;c sĩ.</li>\r\n	<li>C&aacute;c dịch vụ kh&aacute;c theo y&ecirc;u cầu.</li>\r\n</ul>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Vạn Khang SOS c&ograve;n cung cấp dịch vụ vận chuyển bệnh nh&acirc;n khi c&oacute; nhu cầu:</p>\r\n\r\n<ul>\r\n	<li>Vận chuyển bệnh nh&acirc;n đến bệnh viện, ph&ograve;ng kh&aacute;m để kh&aacute;m chữa bệnh, được li&ecirc;n hệ trước để giảm chờ đợi.</li>\r\n	<li>Chuyển viện hoặc đưa bệnh nh&acirc;n từ bệnh viện, ph&ograve;ng kh&aacute;m về nh&agrave;.</li>\r\n</ul>\r\n\r\n<p>Vạn Khang SOS ứng dụng c&ocirc;ng nghệ cao, tự động tạo sự tiện dụng cho kh&aacute;ch h&agrave;ng, cho c&aacute;n bộ y tế lu&ocirc;n sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu chăm s&oacute;c, kh&aacute;m chữa bệnh tại nh&agrave;.</p>\r\n\r\n<p>Để sử dụng dịch vụ chữa bệnh tại nh&agrave;, Bạn c&oacute; thể:</p>\r\n\r\n<p>-Tải<strong> miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a></p>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu dịch vụ, chỉ cần bấm v&agrave;o biểu tượng của dịch vụ y&ecirc;u cầu tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động chuyển th&ocirc;ng tin đến c&aacute;n bộ y tế (BS, Điều dưỡng, Kỹ thuật vi&ecirc;n) gần nh&agrave; bệnh nh&acirc;n nhất để thống nhất lịch hẹn thực hiện nhiệm vụ.</p>\r\n\r\n<p>-Trường hợp chưa c&oacute; &ldquo;Ứng dụng VKHS&rdquo;, Bạn c&oacute; thể:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Y&ecirc;u cầu dịch vụ từ trang web <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> hoặc</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Chữa bệnh tại nh&agrave;: &nbsp;<em>Vạn Khang SOS &ndash; Chăm s&oacute;c như người th&acirc;n.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ioCy9w3LRdc\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 1, '2017-12-20 03:29:56', '', 1, 0, 1),
('201712201513741700', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên máy tính', 'huong-dan-su-dung-telehealth-tren-may-tinh201712201513741700', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong></div>\r\n\r\n<div>Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/1.png\" style=\"height:391px; width:600px\" /></div>\r\n\r\n<div><strong>2./ C&agrave;i đặt</strong></div>\r\n\r\n<div>Double click v&agrave;o file <strong>trueconf_client.exe </strong>bạn mới tải về để tiến h&agrave;nh c&agrave;i đặt.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/2.png\" style=\"height:164px; width:313px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chọn Tiếng Việt bấm OK</em></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/3.png\" style=\"height:427px; width:513px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chấp nhận thỏa thuận &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/4.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/5.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/6.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chương tr&igrave;nh đang c&agrave;i đặt, Vui long chờ</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/7.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Đ&atilde; ho&agrave;n th&agrave;nh bấm n&uacute;t ho&agrave;n tất</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/8.png\" style=\"height:366px; width:450px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Giao diện HNTH mới c&agrave;i đặt chưa cấu h&igrave;nh.</em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>3./ Cấu h&igrave;nh mạng kết nối với server.</strong></div>\r\n\r\n<div>Bạn phải thực hiện điều n&agrave;y v&agrave; chỉ một lần duy nhất, c&aacute;c th&ocirc;ng số sẽ được lưu trữ.</div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bấm chọn C&agrave;i đặt - Mạng</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/9.png\" style=\"height:366px; width:450px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bỏ dấu chọn: Mặc định m&aacute;y chủ kết nối &amp;&nbsp;bấm v&agrave;o n&uacute;t N&acirc;ng cao</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/public/img/images/10.png\" style=\"height:472px; width:400px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Nhập th&ocirc;ng số Host: 210.211.108.66&nbsp; Port: 4307, Nhấn OK</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/11.png\" style=\"height:389px; width:318px\" /></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>4./ Đăng k&yacute; ID mật khẩu đăng nhập</strong></div>\r\n\r\n<div>Quay trở lại, Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\">http://vkhs.vn/index_bak.html#/tcs</a> nhấn n&uacute;t<strong> &quot;Đăng k&yacute; nhận Trueconf ID&quot;.</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/12.png\" style=\"height:397px; width:600px\" /></strong></div>\r\n\r\n<div>Sau khi nhập c&aacute;c th&ocirc;ng tin cần thiết cho BS c&oacute; dữ liệu sức khỏe của bạn, Bạn sẽ nhận được ID gửi qua email.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/13.png\" style=\"height:439px; width:350px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong>&quot;Khi đ&atilde; c&oacute;, Bạn nhập v&agrave;o ID v&agrave; mật khẩu, Nhấn n&uacute;t OK để bắt đầu một phi&ecirc;n HNTH.&quot;</strong></em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>5./ Y&ecirc;u cầu một phi&ecirc;n tư vấn hỗ trợ sức khỏe</strong></div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch b&ecirc;n tay phải, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u xanh l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/14.png\" style=\"height:400px; width:350px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em></div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ&nbsp; c&oacute; <span style=\"color:#FF0000\"><strong>icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute; <span style=\"color:#FFFF00\"><strong>icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.</div>\r\n', 1, '2017-12-20 11:39:20', '', 1, 0, 1),
('201712201513742765', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên Smartphone', 'huong-dan-su-dung-telehealth-tren-smartphone201712201513742765', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong><br />\r\nBằng thiết bị cầm tay truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s1.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><br />\r\n<strong>2./ C&agrave;i đặt</strong><br />\r\nNhấn <strong>Cloud </strong>để tải</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s2.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Sau khi tải xong Nhấn <strong>Open </strong>để mở</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s3.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Đầu ti&ecirc;n bạn phải điều hướng tới server của Telehealth, nhấn&nbsp;<strong>Another server</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s4.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Nhập địa chỉ IP của Telehealth tại <strong>Server address</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s5.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Th&ocirc;ng số Server Adddress: <em><strong>210.211.108.66:4307</strong></em></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s6.png\" style=\"height:420px; width:250px\" /></strong></em></div>\r\n\r\n<div>Nhập ID v&agrave; mật khẩu m&agrave; bạn đ&atilde; nhận được qua email nhấn Sign in <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\"><em>(Nhận ID tại đ&acirc;y)</em></span></a></div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"color:#0000FF\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s7.png\" style=\"height:420px; width:250px\" /></em></span></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u v&agrave;ng l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s8.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Chọn BS nhấn n&uacute;t gọi</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s9.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em><br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.<br />\r\n- Trạng thái B&aacute;c sĩ&nbsp; c&oacute;<span style=\"color:#FF0000\"><strong> icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.<br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#FFFF00\"><strong> icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.<br />\r\nKhi sử dụng thiết bị cầm tay để v&agrave;o phi&ecirc;n tư vấn bạn n&ecirc;n sử dụng <strong>Head phone</strong> để tr&aacute;nh tạp &acirc;m l&agrave;m ảnh hưởng đến sự tập trung của BS</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n', 1, '2017-12-20 11:28:20', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_danhmuc`
--

CREATE TABLE `rhmtw_danhmuc` (
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
-- Table structure for table `rhmtw_hotro`
--

CREATE TABLE `rhmtw_hotro` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `hoten` varchar(200) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `diachi` text NOT NULL,
  `delete` int(11) NOT NULL,
  `noidung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtw_hotro`
--

INSERT INTO `rhmtw_hotro` (`id`, `email`, `hoten`, `sdt`, `diachi`, `delete`, `noidung`) VALUES
(25, 'redlight41114@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-26 06:17:39_____[\"3\"]'),
(28, 'teagandooley@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-28 07:50:59_____[\"3\"]'),
(29, 'mnsmjo@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-31 09:09:30_____[\"3\"]'),
(30, 'huspawaty@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-02 05:17:03_____[\"3\"]'),
(31, 'longthienlk@gmail.com', 'longthien', '0947582918', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36__2017-08-02 12:30:28___Mày cũng biết làm web ak __[\"3\"]'),
(32, 'andrews412@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-03 08:59:39_____[\"3\"]'),
(33, 'tsommerf@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-04 05:29:39_____[\"3\"]'),
(34, 'robertcampanello@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-07 06:07:52_____[\"3\"]'),
(35, 'obasary@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 03:07:08_____[\"3\"]'),
(36, 'vinayjoshi1988@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 11:57:16_____[\"3\"]'),
(37, 'tabanderson@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 01:41:53_____[\"3\"]'),
(38, 'meaganleigh777@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 08:44:52_____[\"3\"]'),
(39, 'johnpaul112891@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 09:11:38_____[\"3\"]'),
(40, 'shario@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 12:57:38_____[\"3\"]'),
(41, 'petra-stein@hotmail.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 04:05:33_____[\"3\"]'),
(42, 'christophervelez1982@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 06:07:42_____[\"3\"]'),
(43, 'cldick2@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 08:36:21_____[\"3\"]'),
(44, 'shtiblet@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 09:51:21_____[\"3\"]'),
(45, 'dwynrchrds@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-12 05:45:30_____[\"3\"]'),
(46, 'thaokon@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 03:41:09_____[\"3\"]'),
(47, 'vancemartin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 05:16:02_____[\"3\"]'),
(48, 'kim.small2@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-17 04:54:10_____[\"3\"]'),
(49, 'marygracesunga@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-18 01:36:26_____[\"3\"]'),
(50, 'aubrey.yuzva@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-19 02:15:45_____[\"3\"]'),
(51, 'tomsplumbingelgin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 03:18:13_____[\"3\"]'),
(52, 'daleachapman45@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 11:58:33_____[\"3\"]'),
(53, 'tkarl2209@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-22 09:24:57_____[\"3\"]'),
(54, 'cassandra.durack@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 12:04:49_____[\"3\"]'),
(55, 'noi@acadia-info.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 01:29:54_____[\"3\"]'),
(56, 'info@48first.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 01:08:07_____[\"3\"]'),
(57, 'hermanloud@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 11:56:11_____[\"3\"]'),
(58, 'ssvalina@sbcglobal.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 04:10:24_____[\"3\"]'),
(59, 'sarah.massey2@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-25 01:52:04_____[\"3\"]'),
(60, 'andrewkaspers@gmail.com', '', '', '112.213.89.101', 0, '2017-08-26 09:57:58<br/>pending<br>đã gui mail<br><hr>2017-08-26 09:56:54<br/>pending<br>asd asdasd as<br><hr>Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:53:25_____[\"3\"]'),
(61, 'jofurlong001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:17:11_____[\"3\"]'),
(62, 'dnaciadis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 04:02:30_____[\"3\"]'),
(63, 'jkpareso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 08:48:04_____[\"3\"]'),
(64, 'kk1188@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 10:00:12_____[\"3\"]'),
(65, 'charliethelee@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 01:28:47_____[\"3\"]'),
(66, 'mtndrmr@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 09:56:04_____[\"3\"]'),
(67, 'darling500@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-30 12:09:59_____[\"3\"]'),
(68, 'elaineylflavin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 03:36:47_____[\"3\"]'),
(69, 'mindyreed11@bellsouth.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 06:21:17_____[\"3\"]'),
(70, 'stephanie.koontz.95@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 02:11:48_____[\"3\"]'),
(71, 'akjohns001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 09:31:09_____[\"3\"]'),
(72, 'ddsmkg@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 12:13:06_____[\"3\"]'),
(73, 'damon.patralakis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 06:41:38_____[\"3\"]'),
(74, 'maboll@rcn.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 02:06:53_____[\"3\"]'),
(75, 'sandymiller0705@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 09:12:09_____[\"3\"]'),
(76, 'benhart74@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-03 12:10:51_____[\"3\"]'),
(77, 'askcarso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 02:43:16_____[\"3\"]'),
(78, 'astapins@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 05:00:59_____[\"3\"]'),
(79, 'scott.w.oconnell@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 11:55:48_____[\"3\"]'),
(80, 'patrick.auer.jones@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 06:26:02_____[\"3\"]'),
(81, 'gaytanric@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 11:39:06_____[\"3\"]'),
(82, 'coachtglove@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 02:05:43_____[\"3\"]'),
(83, 'fholler99@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 08:54:18_____[\"3\"]'),
(84, 'vatampm@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 10:31:18_____[\"3\"]'),
(85, 'meridianclinics@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 03:32:46_____[\"3\"]'),
(86, 'ajsvaan@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 10:40:34_____[\"3\"]'),
(87, 'suttongr@pacbell.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-09 02:12:46_____[\"3\"]'),
(88, '', 'ZAJJypfwqS', 'rNEmjRgcO', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-09 01:30:36___r8a3Il http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(89, 'johnpaulrangel@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:08:35_____[\"3\"]'),
(90, 'clairepooleh866h@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:46:21_____[\"3\"]'),
(91, 'ulugbekgp@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 02:55:00_____[\"3\"]'),
(92, 'derek_colon@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 03:51:51_____[\"3\"]'),
(93, '', 'MeBNWxBWTnhMBO', 'zZxYvwuOqtJxsPeP', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-12 08:04:57___H6mQV8 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(94, 'eddiemallett@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:12:56_____[\"3\"]'),
(95, 'nyltom@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:38:14_____[\"3\"]'),
(96, 'haughney@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 05:15:54_____[\"3\"]'),
(97, 'deestric@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 03:29:46_____[\"3\"]'),
(98, 'winnyeme@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 11:07:07_____[\"3\"]'),
(99, 'friedriceandeggrolls@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 06:02:19_____[\"3\"]'),
(100, 'suziejudd64@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 07:11:16_____[\"3\"]'),
(101, 'darchila@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 01:28:42_____[\"3\"]'),
(102, 'post3092@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 06:40:15_____[\"3\"]'),
(103, 'vu0tran@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 03:36:00_____[\"3\"]'),
(104, 'stevescottemail@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 11:56:04_____[\"3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_khachang`
--

CREATE TABLE `rhmtw_khachang` (
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
-- Dumping data for table `rhmtw_khachang`
--

INSERT INTO `rhmtw_khachang` (`email`, `password`, `random`, `HoTen`, `SDT`, `DiaChi`, `Nhom`, `active`, `ThongTinChung`) VALUES
('a', '4571eb1bac07d1392b8987d84c91d4d52ff06c5c', 'Bvp4FSAY', 'TRẦN THỊ DUNG', '', '', 1, '1', NULL),
('do.nguyen@inlen.com', '53e553ef92f61ac5d1df3d0cd8b582bca6670af9', 'luXezPlF', 'nguyễn văn Độ', '0123456789', 'sdf sdfs', 1, '1', '{\"avata\":\"luXezPlF.jpeg\"}'),
('hoangnhat91@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'Vũ Hoàng Nhật', '0901513885', 'Q12, TP HCM', 1, '1', '{\"avata\":\"8wrWWNCD.jpeg\",\"AnHienSDT\":0}'),
('hoangnhatvu01@gmail.com', 'bc7c8b05cc661f8b841aca08985a911ff06815db', 'iWFr2euU', 'Vu Hoang Nhat', '0123456789', '', 1, '1', NULL),
('hpdiemhang@gmail.com', 'a7879dc320406bbdc884a936047fdc7ecfe4eab1', 'GMIQLxrq', 'Nguyễn Thị Diễm Hằng', '', '', 1, '1', NULL),
('lehathanh2807@gmail.com', 'd5d3e02d57e8359456ea58fa073d686713b5015b', 'g1on4l1j', 'Hà Thanh', '0904611543', '', 1, '1', NULL),
('leminhhoang1812@gmail.com', '26c797a9ef4c4640aa3c3ecc4730fcbc9e047d9f', 'TAXQJ9fu', 'af', '01234567745', 'kk dddff dfgdf\r\n', 1, '-1', '{\"avata\":\"TAXQJ9fu.jpeg\"}'),
('linlvo.it@gmail.com', '714daae9b07810652b53d6844cef4f8ef52230fc', 's7avraG2', 'Linl Vo', '0902407247', '', 1, '1', '{\"avata\":\"s7avraG2.jpeg\"}'),
('minhchau.heomoi@gmail.com', '84df2a5cb1e5d551fc2a9a191b7b2bc01a1b3ef6', 'qB6lIOWP', 'Lê Thị Minh Châu', '01659180894', '', 1, '1', '{\"avata\":\"qB6lIOWP.jpeg\"}'),
('namdong92@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'nguyễn van độ', '1234567890', 'as asda', 1, '1', '{\"avata\":\"8wrWWNCD.jpeg\"}'),
('namdongvando@gmail.com', 'e555ea9e0cdf79ec5777578c9c339df323ea014b', 'SerSHnQs', 'namdongvando@gmail.com', '', '', 1, 'SerSHnQs', NULL),
('nguyenvanquang943@gmail.com', 'bf39dc3a71b43258081c6983d1bc17c0ea514413', 'nQhuX6gQ', 'nguyen van quang', '0919276336', '', 1, '1', '{\"avata\":\"nQhuX6gQ.jpeg\"}'),
('pg_vina@yahoo.com.vn', '28d5e7a05d9d2c0c8cc36353d87546a778e7e993', 'DXCEFS5Y', 'phan thanh hai', '0933955658', '', 1, '1', '{\"avata\":\"DXCEFS5Y.jpeg\"}'),
('phamha.3612@gmail.com', 'f0a5a08d1abad46055c4dc03dac75ac9a4532470', 'qLbl2Pgn', 'TISASHOP', '0933520783', '568 Phạm Văn Bạch, P.13, Q.Tân Bình, HCM', 1, '1', ''),
('ts_hailong@yahoo.com.vn', '48efcf5eae3ec0801697dd0e68ddf177b228184a', 'OByB0p0U', 'phaihailong', '', '', 1, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_lichsu`
--

CREATE TABLE `rhmtw_lichsu` (
  `DongLichSu` int(11) NOT NULL,
  `MaNhanVien` varchar(200) NOT NULL,
  `ThoiGian` datetime NOT NULL,
  `Action` varchar(200) NOT NULL,
  `Table` varchar(200) NOT NULL,
  `LoaiThaoTac` varchar(200) NOT NULL,
  `NoiDung` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtw_lichsu`
--

INSERT INTO `rhmtw_lichsu` (`DongLichSu`, `MaNhanVien`, `ThoiGian`, `Action`, `Table`, `LoaiThaoTac`, `NoiDung`) VALUES
(1, 'namdong92a', '2016-05-17 07:22:10', 'actiona', 'Tablea', 'Xoaa', 'xoa noi ufnga');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_menu`
--

CREATE TABLE `rhmtw_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `range` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rhmtw_menu`
--

INSERT INTO `rhmtw_menu` (`id`, `name`, `link`, `parent`, `group`, `range`) VALUES
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
-- Table structure for table `rhmtw_option`
--

CREATE TABLE `rhmtw_option` (
  `MaOption` varchar(20) NOT NULL,
  `LoaiOption` int(11) NOT NULL,
  `GiaTriVN` text NOT NULL,
  `GiaTriEN` text,
  `GhiChu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtw_option`
--

INSERT INTO `rhmtw_option` (`MaOption`, `LoaiOption`, `GiaTriVN`, `GiaTriEN`, `GhiChu`) VALUES
('Lang_BaiVietMoi', 2, 'Bài viết mới', '', '{\"type\":\"2\",\"title\":\"BaivietMoi\"}'),
('Lang_DanhMuc', 2, 'Danh Mục Bài Viết', '', '{\"type\":\"2\",\"title\":\"Danh Mục Bài Viết\"}'),
('Lang_Facebook', 2, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/nguyenvando.net/\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/nguyenvando.net/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/nguyenvando.net/\">Nguyenvando.net</a></blockquote></div>', '', '{\"type\":\"2\",\"title\":\"Facebook\"}'),
('Lang_MaBenhVien', 2, '4', '', '{\"type\":\"2\",\"title\":\"MÃ Bệnh Viện\"}'),
('Lang_Slogan', 2, 'Chia sẻ kiem', '', '{\"type\":\"2\",\"title\":\"Slogan\"}'),
('Lang_TrangXaHoi', 2, 'Trang Xã Hội', '', '{\"type\":\"2\",\"title\":\"Trang Xã Hội\"}'),
('Option_Logo', 1, 'logo-vksos.png', '', '{\"type\":\"1\",\"title\":\"Logo Web\"}'),
('SEO_Des', 0, 'description', 'description', ''),
('SEO_Google', 0, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', ''),
('SEO_Keyword', 0, 'keyword', 'keyword', ''),
('SEO_Title', 0, 'Title', 'Title', ''),
('Social_Facebook', 0, '', '', ''),
('Social_Google', 0, '', '', ''),
('Social_Twitter', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_pages`
--

CREATE TABLE `rhmtw_pages` (
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
-- Dumping data for table `rhmtw_pages`
--

INSERT INTO `rhmtw_pages` (`idPa`, `idGroup`, `TieuDe`, `TieuDeKD`, `Title`, `Des`, `Keyword`, `TomTat`, `NoiDung`, `UrlHinh`, `AnHien`, `LoaiPage`) VALUES
(1, 1, 'Giới Thiệu', 'gioi-thieu', 'Giới Thiệu', 'about', 'about', '', '<h2 style=\"text-align:center\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:20px\"><strong>GIỚI THIỆU VKHS</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong> đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;</span>&nbsp;<span style=\"font-size:16px\">0314538127</span>&nbsp;<span style=\"font-size:16px\">ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>VKHS</strong> cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong> gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ. <a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">(</span></em></a><em><a href=\"http://yttv.vn\"><span style=\"color:#0000FF\">Xem th&ecirc;m</span></a></em><a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">...)</span></em></a></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Tư vấn sức khoẻ từ xa</strong> với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn. </span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất. </span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n. </span></span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa: </strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m...)</span></a></em></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật: </strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip; <strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong> theo chỉ định của BS điều trị.&nbsp;</span></span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Vận chuyển </strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).</span></span></span></span></span></span></span></span><br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>. </span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\">Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</span></span></span></span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS. <em><span style=\"color:#0000FF\">(</span><a href=\"http://vkhs.vn/mobile/vkhs.apk\"><span style=\"color:#0000FF\">Tải ứng dụng</span></a><span style=\"color:#0000FF\">)</span></em></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-V&agrave;o trang web VKHS hay VK_SOS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Điện thoại số &hellip;</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế. &nbsp;</span></p>\r\n', '', 1, 0),
(73, 1, 'Thông Tin', 'thong-tin', 'Biểu Phí', 'Lập trình php cơ bản', 'Lập trình php cơ bản', '<p>asdasdas das das</p>\r\n', '<p>Th&ocirc;ng Tin dang cập nhật</p>\r\n', '/public/img/images', 1, 1),
(74, 1, 'Liên hệ', 'lien-he', 'Thông tin', '', '', '', '<div class=\"contact-list\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5><strong><span style=\"color:#FF0000\"><span style=\"font-size:14px\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ</span></span></strong></h5>\r\n\r\n<div class=\"contact-content-left\">\r\n<ul>\r\n	<li><strong><span style=\"font-size:14px\">C&Ocirc;NG TY TNHH GIẢI PH&Aacute;P SỨC KHỎE VẠN KHANG</span></strong><br />\r\n	<em>(<span style=\"font-size:14px\">VAN KHANG HEALTH SOLUTIONS JOINT STOCK COMPANY)</span></em></li>\r\n	<li><strong>Địa chỉ:</strong> 31A/8 H&ugrave;ng Vương, P9, Q5, TPHCM</li>\r\n	<li><strong>Hotline:</strong> <a href=\"callto:1900%2063%2066%2071\">1900 63 66 71</a></li>\r\n	<li><strong>MST:</strong> 0314538127</li>\r\n	<li><strong>Website:</strong> <a href=\"http://vkhs.vn\">www.vkhs.vn</a></li>\r\n</ul>\r\n<!--<ul>--><!--<li><span><span>BỘ PHẬN CHĂM SÓC KHÁCH HÀNG</span></span></li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> sos@vankhangsos.vn</li>--><!--</ul>--></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5><span style=\"color:rgb(255, 0, 0)\"><strong>THỜI GIAN L&Agrave;M VIỆC - BỘ PHẬN VĂN PH&Ograve;NG</strong></span></h5>\r\n\r\n<div class=\"contact-content-left\">\r\n<ul>\r\n	<li><strong>Văn phòng VKHS</strong> : (028) 7300 2246</li>\r\n	<li><strong>Văn phòng&nbsp; SOS</strong>&nbsp; :&nbsp; (028) 7300 2611</li>\r\n	<li>Từ thứ hai đến thứ bảy h&agrave;ng tuần (trừ c&aacute;c ng&agrave;y Lễ).</li>\r\n	<li>Buổi s&aacute;ng: <strong>8h00</strong> đến <strong>12h00</strong>.</li>\r\n	<li>Buổi chiều: <strong>13h00</strong> đến <strong>17h00.</strong></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n<div class=\"row bg-gray\">\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5>&nbsp;</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<!--<div class=\"col-md-6\">--><!--<div class=\"contact-list-item\">--><!--<div class=\"contact-content\">--><!--<h5 class=\"contact-title\"> CÔNG TY TNHH VẠN KHANG SOS </h5>--><!--<div class=\"contact-content-left\">--><!--<ul>--><!--<li><span><span>Trụ sở chính</span></span></li>--><!--<li><span>Địa chỉ:</span> 113 Trần Bình Trọng, P.2, Q.5, TPHCM</li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> contact@vankhangsos.vn</li>--><!--</ul>--><!--<ul>--><!--<li><span><span>Trụ sở chính</span></span></li>--><!--<li><span>Địa chỉ:</span> 113 Trần Bình Trọng, P.2, Q.5, TPHCM</li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> contact@vankhangsos.vn</li>--><!--</ul>--><!--</div>--><!--</div>--><!--</div>--><!--</div>--></div>\r\n</div>\r\n', '/public/img/images', 1, 0),
(78, 1, 'Đồng Hành Cùng Vạn Khang', 'dong-hanh-cung-van-khang', '', '', '', '<p>VKHS được th&agrave;nh lập nhằm tạo n&ecirc;n một hệ sinh th&aacute;i li&ecirc;n kết c&aacute;c nh&agrave; cung ứng dịch vụ v&agrave; sản phẩm về y tế, tạo n&ecirc;n một hệ thống chăm s&oacute;c sức khoẻ to&agrave;n diện v&agrave; li&ecirc;n tục cho người d&acirc;n từ Gi&aacute;o dục, tư vấn, hướng dẫn thay đổi h&agrave;nh vi để dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ&nbsp; đến cấp cứu tại chỗ kịp thời, kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật tại nh&agrave; v&agrave; kết nối đăng k&yacute; kh&aacute;m chữa bệnh, hẹn giờ tại c&aacute;c cơ sở y tế từ Trạm y tế đến BV chuy&ecirc;n khoa đầu ng&agrave;nh&hellip;.</p>\r\n', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>ĐỒNG H&Agrave;NH V&Agrave; PH&Aacute;T TRIỂN C&Ugrave;NG VKHS</strong></span></p>\r\n\r\n<div>VKHS được th&agrave;nh lập nhằm tạo n&ecirc;n một hệ sinh th&aacute;i li&ecirc;n kết c&aacute;c nh&agrave; cung ứng dịch vụ v&agrave; sản phẩm về y tế, tạo n&ecirc;n một hệ thống chăm s&oacute;c sức khoẻ to&agrave;n diện v&agrave; li&ecirc;n tục cho người d&acirc;n từ Gi&aacute;o dục, tư vấn, hướng dẫn thay đổi h&agrave;nh vi để dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ&nbsp; đến cấp cứu tại chỗ kịp thời, kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật tại nh&agrave; v&agrave; kết nối đăng k&yacute; kh&aacute;m chữa bệnh, hẹn giờ tại c&aacute;c cơ sở y tế từ Trạm y tế đến BV chuy&ecirc;n khoa đầu ng&agrave;nh&hellip;. <em><a href=\"http://vkhs.vn/index_bak.html#/blog/1/gioi-thieu.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m giới thiệu VKHS).</span></a></em></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>VKHS ứng dụng c&aacute;c tiến bộ c&ocirc;ng nghệ thống tin hiện đại thuộc thế hệ thứ tư, tạo n&ecirc;n sự kết nối tự động, thuận tiện cho cả đối t&aacute;c đồng h&agrave;nh v&agrave; người d&acirc;n để sử dụng c&aacute;c dịch vụ của VKHS.</div>\r\n\r\n<div>Với mục đ&iacute;ch v&agrave; c&ocirc;ng nghệ tr&ecirc;n, VKHS đ&atilde; li&ecirc;n kết với nhiều đối t&aacute;c đồng h&agrave;nh</div>\r\n\r\n<ul>\r\n	<li>C&aacute;c bệnh viện Chợ Rẩy, BV Thống Nhất, BV Qu&acirc;n Y 175, BV Viện Tim TPHCM, BV Nguyễn Tri Phương, BV Nh&acirc;n d&acirc;n Gia Định, BV B&igrave;nh Thạnh, BV Đa khoa S&agrave;i G&ograve;n, BV Quận 2, BV Quận Thủ Đức&hellip;..</li>\r\n	<li>Trung t&acirc;m cấp cứu 115 TPCHM</li>\r\n	<li>Ng&acirc;n h&agrave;ng C&ocirc;ng Thương Việt Nam (Vietin)</li>\r\n	<li>C&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ th&ocirc;ng tin VNPT, TDS, GME, ADA, Si&ecirc;u Thuật</li>\r\n	<li>C&ocirc;ng ty Dược Ch&acirc;n T&acirc;m</li>\r\n	<li>Hội Y tế c&ocirc;ng cộng TP HCM</li>\r\n	<li>Hội Trang thiết bị y tế TP HCM</li>\r\n	<li>Hội chữ thập đỏ TP HCM</li>\r\n</ul>\r\n\r\n<div>Trong nền <strong>kinh tế chia sẻ</strong>, việc đồng h&agrave;nh sẽ mang lại nhiều lợi &iacute;ch cho cả VKHS v&agrave; c&aacute;c đối t&aacute;c đồng h&agrave;nh. VKHS sẽ phối hợp v&agrave; hỗ trợ c&aacute;c đối t&aacute;c đồng h&agrave;nh n&acirc;ng cao năng lực ứng dụng c&aacute;c c&ocirc;ng nghệ th&ocirc;ng tin hiện đại đ&aacute;p ứng tốt hơn y&ecirc;u cầu kết nối với người d&acirc;n v&agrave; quản l&yacute; c&aacute;c hoạt động của doanh nghiệp.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Để hệ thống dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n ng&agrave;y c&agrave;ng được mở rộng, VKHS mong muốn c&aacute;c cơ sở y tế, c&aacute;c tổ chức x&atilde; hội, c&aacute;c doanh nghiệp trong v&agrave; ngo&agrave;i nước c&ugrave;ng đồng h&agrave;nh với VKHS:</div>\r\n\r\n<ul>\r\n	<li>C&aacute;c cơ sở kh&aacute;m chữa bệnh c&ocirc;ng, tư tr&ecirc;n cả nước đồng h&agrave;nh cung ứng c&aacute;c dịch vụ kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật cho người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh&hellip; ở tại nh&agrave;, tại tuyến y tế cơ sở v&agrave; tại c&aacute;c BV đa khoa, chuy&ecirc;n khoa.</li>\r\n	<li>Trung t&acirc;m cấp cứu của c&aacute;c tỉnh th&agrave;nh tr&ecirc;n cả nước sử dụng<strong> giải ph&aacute;p điều h&agrave;nh tự động mạng lưới cấp cứu</strong>, tạo n&ecirc;n một hệ thống cấp cứu li&ecirc;n th&ocirc;ng tr&ecirc;n cả nước, sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu cấp cứu của người d&acirc;n ở bất cứ đ&acirc;u, kể cả trong t&igrave;nh huống phải cấp cứu h&agrave;ng loạt người.</li>\r\n	<li>C&aacute;c Labo x&eacute;t nghiệm y khoa cung cấp dịch vụ lấy mẫu bệnh phẩm tại nh&agrave;</li>\r\n	<li>C&aacute;c c&ocirc;ng ty ph&acirc;n phối dược phẩm, mỹ phẩm, thực phẩm chức năng cung cấp sản phẩm của m&igrave;nh tại nh&agrave;.</li>\r\n	<li>C&aacute;c c&ocirc;ng ty trang thiết bị cung cấp thiết bị y tế gia dụng tại nh&agrave;.</li>\r\n	<li>C&aacute;c c&ocirc;ng ty vận chuyển bằng xe cấp cứu, xe &ocirc; t&ocirc;, xe m&ocirc; t&ocirc; phục vụ vận chuyển theo y&ecirc;u cầu của bệnh nh&acirc;n, người nh&agrave; bệnh nh&acirc;n, c&aacute;n bộ y tế</li>\r\n</ul>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#0000FF\"><strong>&quot;H&atilde;y c&ugrave;ng đồng h&agrave;nh v&agrave; tham gia c&ugrave;ng VKHS bằng c&aacute;ch tham gia đăng k&yacute; th&agrave;nh vi&ecirc;n, nh&agrave; cung cấp, bệnh viện hoặc b&aacute;c sĩ gia đ&igrave;nh, để c&ugrave;ng chung tay x&acirc;y dựng n&ecirc;n một nền tảng y tế th&ocirc;ng minh linh hoạt, đưa đến cho người d&acirc;n Việt Nam một giải ph&aacute;p y tế ngoại viện đầy đủ v&agrave; tốt nhất&hellip;.&quot;</strong></span></span></p>\r\n', '/public/img/images', 1, 0),
(79, 1, 'Tư vấn sức khỏe từ xa', 'tu-van-suc-khoe-tu-xa', '', '', '', '', '', '/public/img/images', 1, 0),
(80, 1, 'Cấp cứu tại chỗ', 'cap-cuu-tai-cho', '', '', '', '', '', '/public/img/images', 1, 0),
(81, 1, 'Khám bệnh tại nhà', 'kham-benh-tai-nha', '', '', '', '', '', '/public/img/images', 1, 0),
(82, 1, 'Đăng ký khám bệnh', 'dang-ky-kham-benh', '', '', '', '', '', '/public/img/images', 1, 0),
(84, 1, 'Hướng dẫn', 'huong-dan', '', '', '', '', '', '/public/img/images', 1, 1),
(83, 1, 'Dịch Vụ', 'dich-vu', '', '', '', '', '', '/public/img/images', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_quantri`
--

CREATE TABLE `rhmtw_quantri` (
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
-- Dumping data for table `rhmtw_quantri`
--

INSERT INTO `rhmtw_quantri` (`username`, `password`, `random`, `HoTen`, `email`, `SDT`, `DiaChi`, `GhiChu`, `Nhom`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '', 1),
('bvrhm', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_sanpham`
--

CREATE TABLE `rhmtw_sanpham` (
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
-- Table structure for table `rhmtw_tiepnhan`
--

CREATE TABLE `rhmtw_tiepnhan` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Sex` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Job` varchar(100) NOT NULL,
  `Service` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Note` text NOT NULL,
  `Status` int(11) NOT NULL,
  `IdBV` int(11) NOT NULL,
  `SoNha` varchar(20) NOT NULL,
  `Duong` varchar(50) NOT NULL,
  `Xa` varchar(50) NOT NULL,
  `Huyen` varchar(50) NOT NULL,
  `Tinh` varchar(50) NOT NULL,
  `LoaiHinhKham` int(11) NOT NULL,
  `TrieuChung` text NOT NULL,
  `createdate` datetime NOT NULL,
  `Form` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rhmtw_tiepnhan`
--

INSERT INTO `rhmtw_tiepnhan` (`Id`, `FullName`, `Phone`, `Email`, `Sex`, `Birthday`, `Job`, `Service`, `Address`, `Note`, `Status`, `IdBV`, `SoNha`, `Duong`, `Xa`, `Huyen`, `Tinh`, `LoaiHinhKham`, `TrieuChung`, `createdate`, `Form`) VALUES
(1, 'nguyen nguyen 1', '0122', 'Emial', 2, '2018-01-16', '', 3, 'a', 'asdas2', 0, 4, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(2, '', '', '', 0, '2018-01-16', '', 0, '', '', 1, 3, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(3, '', '', '', 0, '2018-01-16', '', 0, '', '', -1, 3, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(4, '', '', '', 0, '0000-00-00', '', 0, '', '', 0, 0, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(5, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(6, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(7, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '', '', '0', '', '', 0, '', '2018-01-16 00:00:00', ''),
(8, 'sdasdas', '23423423', 'namdong92@gmail.com', 0, '1992-02-01', 'asdas', 1, 'asda', 'sdasdas', 0, 4, '', '', '0', '', '', 0, '', '2018-01-18 04:32:20', ''),
(9, 'asdas da', '23423423', 'namdong92@gmail.com', 1, '1992-02-01', 'asdas as', 1, 'asa', 'asdas', 0, 4, '', '', '0', '', '', 0, '', '2018-01-18 05:43:38', ''),
(10, 'asdas', '0123456789', 'namdong92@gmail.com', 1, '1992-10-01', 'sad', 1, 'asd,', '23423423', 0, 4, '', '', '0', '', '', 0, '', '2018-01-18 07:10:38', ''),
(11, 'nguye van do', '0123456789', '', 0, '1992-01-11', 'nguy', 1, '13,', 'asdas', 0, 4, '', '', '0', '', '', 0, '', '2018-01-18 08:54:15', ''),
(12, 'asdas', '454578515124545', '', 1, '1992-10-01', 'asd', 3, 'asdas,', 'as', 0, 4, '', '', '0', '', '', 0, '', '2018-01-19 05:34:55', ''),
(13, 'sdasd', 'asd', '', 1, '2018-01-01', '', 3, 'asd,', 'sdas', 0, 4, '', '', '0', '', '', 0, '', '2018-01-19 05:41:58', '');

-- --------------------------------------------------------

--
-- Table structure for table `rhmtw_tin`
--

CREATE TABLE `rhmtw_tin` (
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
-- Dumping data for table `rhmtw_tin`
--

INSERT INTO `rhmtw_tin` (`IdTin`, `title`, `keyword`, `description`, `MaDanhMuc`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('201712081512734588', '', '', '', 73, 'Lễ ký kết hợp tác toàn diện giữa Vạn Khang SOS với Bệnh viện Chợ rẫy', 'le-ky-ket-hop-tac-toan-dien-giua-van-khang-sos-voi-benh-vien-cho-ray201712081512734588', '<p>Với mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n', '<h3><span style=\"font-size:22px\"><strong>LỄ K&Yacute; KẾT HỢP T&Aacute;C TO&Agrave;N DIỆN BỆNH VIỆN CHỢ RẪY - VẠN KHANG SOS</strong></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bệnh tật, tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai. Được cấp cứu, chữa trị kịp thời l&agrave; mong ước của mọi người. Đất nước ta đang ng&agrave;y c&agrave;ng ph&aacute;t triển, đời sống người d&acirc;n ng&agrave;y c&agrave;ng được n&acirc;ng cao n&ecirc;n nhu cầu chăm s&oacute;c, bảo vệ sức khỏe, chữa trị bệnh tật cũng ng&agrave;y c&agrave;ng cao.</p>\r\n\r\n<p>Hiện nay, khi mắc bệnh, tai nạn người d&acirc;n thường tự đến bệnh viện, ph&ograve;ng kh&aacute;m để được chữa trị. Giải ph&aacute;p nội viện đ&atilde; v&agrave; đang đ&aacute;p ứng nhu cầu cực lớn của x&atilde; hội nhưng cũng đ&atilde; dẫn đến t&igrave;nh trạng qu&aacute; tải với những hệ luỵ ng&agrave;y c&agrave;ng nghi&ecirc;m trọng hơn.&nbsp;<br />\r\nĐể giảm tải, n&acirc;ng cao chất lượng kh&aacute;m chữa bệnh của c&aacute;c cơ sở y tế, đ&aacute;p ứng nhu cầu cấp cứu, kh&aacute;m chữa bệnh của người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh, người gặp kh&oacute; khăn trong di chuyển&hellip; cần thiết phải c&oacute; th&ecirc;m một giải ph&aacute;p mới, giải ph&aacute;p bổ sung, đ&oacute; l&agrave; &ldquo;giải ph&aacute;p ngoại viện&rdquo;: người bệnh được cấp cứu tại chỗ, chữa bệnh tại nh&agrave;.<br />\r\nVới mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, h&ocirc;m nay ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute;&nbsp;<strong>&ldquo;th&agrave;nh vi&ecirc;n VKSOS&rdquo;</strong>&nbsp;sẽ được đảm bảo sẵn s&agrave;ng phục vụ, với gi&aacute; ph&iacute; dịch vụ giảm 20% so với biểu gi&aacute; được c&ocirc;ng bố tr&ecirc;n trang web Vạn Khang SOS v&agrave; được hưởng c&aacute;c ưu đ&atilde;i như giảm ph&iacute; kh&aacute;m chữa bệnh tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m l&agrave; đối t&aacute;c của Vạn Khang SOS.&nbsp;</p>\r\n', 1, '2017-12-08 10:20:16', 'vkhs/kyket01.png', 1, 0, 1),
('201712081512737007', '', '', '', 73, ' Khánh thành Trung tâm cấp cứu Vạn Khang SOS', 'khanh-thanh-trung-tam-cap-cuu-van-khang-sos201712081512737007', '<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n', '<h3><span style=\"font-size:20px\"><strong>Khánh thành Trung t&acirc;m c&acirc;́p cứu Vạn Khang SOS</strong></span></h3>\r\n\r\n<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n\r\n<p><br />\r\nKhi c&oacute; nhu cầu về cấp cứu, người d&acirc;n bấm n&uacute;t SOS để được kết nối trực tiếp đến tổng đ&agrave;i của trung t&acirc;m. Tổng đ&agrave;i sẽ thu thập một số th&ocirc;ng tin về t&igrave;nh trạng người bệnh v&agrave; tiến h&agrave;nh điều động phương tiện ph&ugrave; hợp nhất để tiếp cận người bệnh trong thời gian sớm nhất. B&aacute;c sĩ tiếp nhận nhiệm vụ sẽ li&ecirc;n hệ với người bệnh để hướng dẫn xử tr&iacute; ngay trong thời gian b&aacute;c sĩ di chuyển đến hiện trường. Đội cấp cứu khi tới hiện trường sẽ thực hiện sơ cấp cứu, sau đ&oacute; t&ugrave;y v&agrave;o t&igrave;nh trạng của người bệnh, b&aacute;c sĩ sẽ điều trị tại chỗ hoặc hỗ trợ vận chuyển người bệnh đến bệnh viện gần nhất, c&oacute; chuy&ecirc;n khoa ph&ugrave; hợp với t&igrave;nh trạng bệnh l&yacute; để tiếp tục điều trị.&nbsp;<br />\r\n<br />\r\nHội Y tế c&ocirc;ng cộng TPHCM.</p>\r\n', 1, '2017-12-08 10:17:25', 'vkhs/vk1.jpg', 1, 0, 1),
('201712141513221522', '', '', '', 83, 'Đăng Ký Khám Bệnh', 'dang-ky-kham-benh201712141513221522', '<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với<br />\r\nnguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!<br />\r\nTất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng<br />\r\ndịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n', '<p><strong>ĐĂNG K&Yacute; KH&Aacute;M BỆNH HẸN GIỜ V&Agrave; THANH TO&Aacute;N</strong></p>\r\n\r\n<p>Bạn phải chờ đợi suốt 3 &ndash; 4h&nbsp;khi đi kh&aacute;m bệnh để chỉ được kh&aacute;m, x&eacute;t nghiệm, chụp phim&hellip; kh&ocirc;ng đến 30 ph&uacute;t!</p>\r\n\r\n<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với nguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!</p>\r\n\r\n<p>Tất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng dịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n\r\n<p>Bạn chỉ cần nhấn v&agrave;o biễu tượng <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> tr&ecirc;n Ứng dụng hoặc tr&ecirc;n web VKHS rồi chọn lựa c&aacute;c th&ocirc;ng tin theo y&ecirc;u cầu kh&aacute;m bệnh của bạn:</p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;m bệnh cho ch&iacute;nh bạn hay người kh&aacute;c</li>\r\n	<li>Kh&aacute;m ở BV/ PK n&agrave;o</li>\r\n	<li>C&oacute; sử dụng BHYT hay kh&ocirc;ng</li>\r\n	<li>Kh&aacute;m th&ocirc;ng thường hay kh&aacute;m dịch vụ hay chọn lựa chuy&ecirc;n gia v&agrave; ng&agrave;y giờ kh&aacute;m</li>\r\n	<li>Kh&aacute;m lần đầu hay t&aacute;i kh&aacute;m</li>\r\n	<li>Chuy&ecirc;n khoa kh&aacute;m: c&oacute; thể l&agrave; Ph&ograve;ng kh&aacute;m Nội tổng hợp hoặc c&aacute;c ph&ograve;ng kh&aacute;m chuy&ecirc;n khoa hoặc c&aacute;c dịch vụ kỹ thuật như x&eacute;t nghiệm, chụp Xquang, CT&hellip; hay Si&ecirc;u &acirc;m, Nội soi&hellip;</li>\r\n</ul>\r\n\r\n<p>Hệ thống sẽ gởi đến thiết bị của bạn <strong>&ldquo;Lịch hẹn kh&aacute;m bệnh&rdquo; với đủ th&ocirc;ng tin cần thiết: Số thứ tự, giờ hẹn kh&aacute;m bệnh, ph&ograve;ng kh&aacute;m bệnh&hellip;&nbsp;</strong></p>\r\n\r\n<p>Bạn c&oacute; thể thanh to&aacute;n trước cho bệnh viện: Nhấn v&agrave;o n&uacute;t thanh to&aacute;n tr&ecirc;n web/Ứng dụng VKHS.&nbsp;</p>\r\n\r\n<p><strong>Trường hợp bạn đ&atilde; đến BV/PK</strong>, nh&acirc;n vi&ecirc;n BV/PK sẽ hướng dẫn bạn thực hiện &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; tr&ecirc;n &ldquo;m&agrave;n h&igrave;nh cảm ứng&rdquo; giống như tr&ecirc;n web/Ứng dụng VKHS, đồng thời sẽ gi&uacute;p bạn tải Ứng dụng VKHS v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin - VKHS.</p>\r\n\r\n<p>Người đ&atilde; tải Ứng dụng v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin &ndash; VKHS được hưởng rất nhiều quyền lợi&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-success\" href=\"#/datlichkhambenh\" style=\"color:#fff;background-color: #2099a1;border:#2099a1;\">Đăng K&yacute; Kh&aacute;m Chữa Bệnh</a></p>\r\n', 1, '2017-12-20 09:54:23', '', 1, 0, 1),
('201712141513222244', '', '', '', 83, 'Tư Vấn Sức Khỏe Từ Xa', 'tu-van-suc-khoe-tu-xa201712141513222244', '<p>Telehealth l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng</p>\r\n', '<p><strong>Telehealth</strong> l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng.<span style=\"color:#0000FF\"> </span><a href=\"#/tcs\"><span style=\"color:#0000FF\">(<em>Nhấn v&agrave;o đ&acirc;y để tải ứng dụng miễn ph&iacute;</em>)</span></a></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk1.jpg\" style=\"height:248px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh trong thời gian thực, qua đ&oacute;&nbsp; BS đ&aacute;nh gi&aacute; được tổng trạng của t&igrave;nh huống y tế hiện tại, BS c&oacute; thể c&oacute; được chẩn đo&aacute;n ban đầu gi&uacute;p việc tư vấn v&agrave; hướng dẫn cho bạn xử l&yacute; t&igrave;nh huống ch&iacute;nh x&aacute;c hơn. Thậm ch&iacute; nếu cần thiết phải đến bệnh viện th&igrave; BS cũng sẽ hướng dẫn ch&iacute;nh x&aacute;c cho bạn cần phải kh&aacute;m ở chuy&ecirc;n khoa n&agrave;o để tr&aacute;nh mất thời gian của bạn. <a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(<em>Xem th&ecirc;m đăng k&yacute; kh&aacute;m bệnh</em>)</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk2.png\" style=\"height:342px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth ngo&agrave;i sự tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh, hệ thống c&ograve;n cho ph&eacute;p BS xem lại c&aacute;c hồ sơ y tế của bạn. Khi bạn đ&atilde; c&oacute; hồ sơ kh&aacute;m chữa bệnh lưu trữ tr&ecirc;n cloud VKHS&nbsp;th&igrave; việc tham khảo c&aacute;c dữ liệu y tế sẵn c&oacute; như kết quả chẩn đo&aacute;n những lần kh&aacute;m bệnh trước đ&oacute;, kết quả x&eacute;t nghiệm, chụp phim, si&ecirc;u &acirc;m vv&hellip; gi&uacute;p BS c&oacute; được chẩn đo&aacute;n ban đầu ch&iacute;nh x&aacute;c hơn để việc tư vấn, hướng dẫn đạt hiệu quả hơn.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk3.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong phi&ecirc;n kết nối tư vấn chăm s&oacute;c sức khỏe từ xa BS nhận thấy rằng cần c&oacute; th&ecirc;m &yacute; kiến của Chuy&ecirc;n gia về chuy&ecirc;n khoa. BS sẽ mời Chuy&ecirc;n gia c&ugrave;ng tham gia trao đổi kiểm tra v&agrave; đ&aacute;nh gi&aacute; to&agrave;n diện theo chuy&ecirc;n khoa từ đ&oacute; c&ugrave;ng tư vấn v&agrave; giải đ&aacute;p mọi thắc mắc theo y&ecirc;u cầu của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk4.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#0000FF\"><strong>&quot;Telehealth -&nbsp;B&aacute;c Sĩ Trong Gia Đ&igrave;nh Bạn&quot;</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513741700/huong-dan-su-dung-telehealth-tren-may-tinh.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n m&aacute;y t&iacute;nh</em></a></u></li>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513742765/huong-dan-su-dung-telehealth-tren-smartphone.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n Smartphone</em></a></u></li>\r\n</ul>\r\n', 1, '2017-12-20 01:18:49', '', 1, 0, 1),
('201712141513222560', '', '', '', 83, 'Cấp Cứu Tại Chỗ', 'cap-cuu-tai-cho201712141513222560', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n\r\n<p><strong>Phản ứng nhanh &ndash; Tận dụng thời gian v&agrave;ng trong cấp cứu &ndash; Thực hiện cấp cứu hiệu quả</strong> lu&ocirc;n l&agrave; mong muốn của mọi người.</p>\r\n\r\n<p>Thấu cảm nỗi lo v&agrave; mong ước ấy, Trung t&acirc;m cấp cứu Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) triển khai cung ứng dịch vụ cấp cứu tại chỗ cho người d&acirc;n TP.HCM theo một m&ocirc; h&igrave;nh mới:</p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng cần số điện thoại gọi cấp cứu</strong>, khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t</strong><strong> SOS</strong> sẽ được đ&aacute;p ứng ngay. B&aacute;c sĩ gần nhất sẽ được điều động, phương tiện ph&ugrave; hợp nhất sẽ được sử dụng để tiếp cận bệnh nh&acirc;n trong thời gian sớm nhất c&oacute; thể.</li>\r\n	<li><strong>Kh&ocirc;ng chỉ c&oacute; &ocirc; t&ocirc; cấp cứu</strong>, Vạn Khang SOS c&ograve;n sẵn s&agrave;ng <strong>m&ocirc; t&ocirc; cấp cứu </strong>để c&oacute; thể tiếp cận nhanh nhất với người bệnh, nhất l&agrave; trong t&igrave;nh trạng tắt đường hoặc nh&agrave; trong hẻm s&acirc;u. Xe m&ocirc; t&ocirc; được trang bị đầy đủ thiết bị cấp cứu như tr&ecirc;n xe &ocirc; t&ocirc;, kể cả m&aacute;y điện tim, shock tim&hellip; để thực hiện cấp cứu tại chỗ hiệu quả. Xe m&ocirc; t&ocirc; kh&ocirc;ng vận chuyển bệnh nh&acirc;n.</li>\r\n	<li><strong>Li&ecirc;n kết c&aacute;c bệnh viện để thiết lập mạng lưới cấp cứu chuy&ecirc;n nghiệp </strong>được ph&acirc;n bố đều khắp tr&ecirc;n địa b&agrave;n th&agrave;nh phố nhằm đ&aacute;p ứng nhanh nhất y&ecirc;u cầu cấp cứu của người d&acirc;n <a href=\"http://vankhangsos.vn/hoptacchuyenmon.html\"><span style=\"color:#0000FF\"><em>(Xem th&ecirc;m...)</em></span></a></li>\r\n	<li><strong>Ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến để quản l&yacute;, vận h&agrave;nh hệ thống tự động </strong>gi&uacute;p tiếp cận nhanh ch&oacute;ng, cấp cứu hiệu quả cho người bệnh.</li>\r\n</ul>\r\n\r\n<p>Để sử dụng dịch vụ cấp cứu tại chỗ:</p>\r\n\r\n<ul>\r\n	<li>H&atilde;y <strong>tải miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> sẵn s&agrave;ng</li>\r\n</ul>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t &ldquo;SOS&rdquo;</strong> tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động sẽ định vị người bệnh v&agrave; điều động xe cấp cứu gần nhất đang trong t&igrave;nh trạng sẵn s&agrave;ng để thực hiện nhiệm vụ.</p>\r\n\r\n<ul>\r\n	<li>Trường hợp chưa c&oacute; <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong>, Bạn c&oacute; thể li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ cấp cứu tại chỗ.</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Cấp cứu tại chỗ: &nbsp;<em>An to&agrave;n của Bạn l&agrave; mong ước của Vạn Khang SOS.</em></strong></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ltEI7-o51Fo\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2017-12-20 03:29:40', '', 1, 0, 1),
('201712141513222646', '', '', '', 83, 'Chữa Bệnh Tại Nhà', 'chua-benh-tai-nha201712141513222646', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n\r\n<p>Thực trạng tr&ecirc;n đ&atilde; tạo ra nhu cầu được kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe tại nh&agrave; khi chưa thật sự cần thiết phải v&agrave;o bệnh viện, nhất l&agrave; đối với những người bệnh gặp kh&oacute; khăn trong việc di chuyển, người gi&agrave; yếu mắc bệnh mạn t&iacute;nh&hellip;</p>\r\n\r\n<p>G&oacute;p phần đ&aacute;p ứng mong muốn thiết thực của người bệnh, Ph&ograve;ng kh&aacute;m B&aacute;c sĩ gia đ&igrave;nh Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) trong sự li&ecirc;n kết hợp t&aacute;c c&ugrave;ng c&aacute;c đối t&aacute;c triển khai cung ứng dịch vụ chăm s&oacute;c sức khỏe to&agrave;n diện tại nh&agrave; tr&ecirc;n địa b&agrave;n TP.HCM, cụ thể như:</p>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ đến kh&aacute;m bệnh, k&ecirc; đơn điều trị, tư vấn điều trị v&agrave; chăm s&oacute;c sức khỏe.</li>\r\n	<li>Điều dưỡng đến chăm s&oacute;c người bệnh: ti&ecirc;m ch&iacute;ch, thay băng, chăm s&oacute;c vết thương&hellip;</li>\r\n	<li>Kỹ thuật vi&ecirc;n đến tập vật l&yacute; trị liệu v&agrave; hướng dẫn người bệnh tập vật l&yacute; trị liệu.</li>\r\n	<li>B&aacute;c sĩ, Lương y đến kh&aacute;m bệnh, tư vấn điều trị v&agrave; thực hiện chữa bệnh tại nh&agrave; theo Y học cổ truyền.</li>\r\n	<li>B&aacute;c sĩ, Điều dưỡng, Kỹ thuật vi&ecirc;n đến thực hiện chăm s&oacute;c giảm nhẹ (chống đau, giảm kh&oacute; thở&hellip;) cho bệnh nh&acirc;n ung thư giai đoạn cuối, bệnh nh&acirc;n nặng&hellip;</li>\r\n	<li>Cung cấp thuốc điều trị, lấy mẫu bệnh phẩm để x&eacute;t nghiệm tại nh&agrave; theo chỉ định của B&aacute;c sĩ.</li>\r\n	<li>C&aacute;c dịch vụ kh&aacute;c theo y&ecirc;u cầu.</li>\r\n</ul>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Vạn Khang SOS c&ograve;n cung cấp dịch vụ vận chuyển bệnh nh&acirc;n khi c&oacute; nhu cầu:</p>\r\n\r\n<ul>\r\n	<li>Vận chuyển bệnh nh&acirc;n đến bệnh viện, ph&ograve;ng kh&aacute;m để kh&aacute;m chữa bệnh, được li&ecirc;n hệ trước để giảm chờ đợi.</li>\r\n	<li>Chuyển viện hoặc đưa bệnh nh&acirc;n từ bệnh viện, ph&ograve;ng kh&aacute;m về nh&agrave;.</li>\r\n</ul>\r\n\r\n<p>Vạn Khang SOS ứng dụng c&ocirc;ng nghệ cao, tự động tạo sự tiện dụng cho kh&aacute;ch h&agrave;ng, cho c&aacute;n bộ y tế lu&ocirc;n sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu chăm s&oacute;c, kh&aacute;m chữa bệnh tại nh&agrave;.</p>\r\n\r\n<p>Để sử dụng dịch vụ chữa bệnh tại nh&agrave;, Bạn c&oacute; thể:</p>\r\n\r\n<p>-Tải<strong> miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a></p>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu dịch vụ, chỉ cần bấm v&agrave;o biểu tượng của dịch vụ y&ecirc;u cầu tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động chuyển th&ocirc;ng tin đến c&aacute;n bộ y tế (BS, Điều dưỡng, Kỹ thuật vi&ecirc;n) gần nh&agrave; bệnh nh&acirc;n nhất để thống nhất lịch hẹn thực hiện nhiệm vụ.</p>\r\n\r\n<p>-Trường hợp chưa c&oacute; &ldquo;Ứng dụng VKHS&rdquo;, Bạn c&oacute; thể:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Y&ecirc;u cầu dịch vụ từ trang web <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> hoặc</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Chữa bệnh tại nh&agrave;: &nbsp;<em>Vạn Khang SOS &ndash; Chăm s&oacute;c như người th&acirc;n.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ioCy9w3LRdc\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 1, '2017-12-20 03:29:56', '', 1, 0, 1),
('201712201513741700', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên máy tính', 'huong-dan-su-dung-telehealth-tren-may-tinh201712201513741700', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong></div>\r\n\r\n<div>Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/1.png\" style=\"height:391px; width:600px\" /></div>\r\n\r\n<div><strong>2./ C&agrave;i đặt</strong></div>\r\n\r\n<div>Double click v&agrave;o file <strong>trueconf_client.exe </strong>bạn mới tải về để tiến h&agrave;nh c&agrave;i đặt.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/2.png\" style=\"height:164px; width:313px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chọn Tiếng Việt bấm OK</em></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/3.png\" style=\"height:427px; width:513px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chấp nhận thỏa thuận &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/4.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/5.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/6.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chương tr&igrave;nh đang c&agrave;i đặt, Vui long chờ</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/7.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Đ&atilde; ho&agrave;n th&agrave;nh bấm n&uacute;t ho&agrave;n tất</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/8.png\" style=\"height:366px; width:450px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Giao diện HNTH mới c&agrave;i đặt chưa cấu h&igrave;nh.</em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>3./ Cấu h&igrave;nh mạng kết nối với server.</strong></div>\r\n\r\n<div>Bạn phải thực hiện điều n&agrave;y v&agrave; chỉ một lần duy nhất, c&aacute;c th&ocirc;ng số sẽ được lưu trữ.</div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bấm chọn C&agrave;i đặt - Mạng</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/9.png\" style=\"height:366px; width:450px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bỏ dấu chọn: Mặc định m&aacute;y chủ kết nối &amp;&nbsp;bấm v&agrave;o n&uacute;t N&acirc;ng cao</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/public/img/images/10.png\" style=\"height:472px; width:400px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Nhập th&ocirc;ng số Host: 210.211.108.66&nbsp; Port: 4307, Nhấn OK</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/11.png\" style=\"height:389px; width:318px\" /></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>4./ Đăng k&yacute; ID mật khẩu đăng nhập</strong></div>\r\n\r\n<div>Quay trở lại, Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\">http://vkhs.vn/index_bak.html#/tcs</a> nhấn n&uacute;t<strong> &quot;Đăng k&yacute; nhận Trueconf ID&quot;.</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/12.png\" style=\"height:397px; width:600px\" /></strong></div>\r\n\r\n<div>Sau khi nhập c&aacute;c th&ocirc;ng tin cần thiết cho BS c&oacute; dữ liệu sức khỏe của bạn, Bạn sẽ nhận được ID gửi qua email.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/13.png\" style=\"height:439px; width:350px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong>&quot;Khi đ&atilde; c&oacute;, Bạn nhập v&agrave;o ID v&agrave; mật khẩu, Nhấn n&uacute;t OK để bắt đầu một phi&ecirc;n HNTH.&quot;</strong></em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>5./ Y&ecirc;u cầu một phi&ecirc;n tư vấn hỗ trợ sức khỏe</strong></div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch b&ecirc;n tay phải, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u xanh l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/14.png\" style=\"height:400px; width:350px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em></div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ&nbsp; c&oacute; <span style=\"color:#FF0000\"><strong>icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute; <span style=\"color:#FFFF00\"><strong>icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.</div>\r\n', 1, '2017-12-20 11:39:20', '', 1, 0, 1),
('201712201513742765', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên Smartphone', 'huong-dan-su-dung-telehealth-tren-smartphone201712201513742765', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong><br />\r\nBằng thiết bị cầm tay truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s1.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><br />\r\n<strong>2./ C&agrave;i đặt</strong><br />\r\nNhấn <strong>Cloud </strong>để tải</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s2.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Sau khi tải xong Nhấn <strong>Open </strong>để mở</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s3.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Đầu ti&ecirc;n bạn phải điều hướng tới server của Telehealth, nhấn&nbsp;<strong>Another server</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s4.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Nhập địa chỉ IP của Telehealth tại <strong>Server address</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s5.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Th&ocirc;ng số Server Adddress: <em><strong>210.211.108.66:4307</strong></em></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s6.png\" style=\"height:420px; width:250px\" /></strong></em></div>\r\n\r\n<div>Nhập ID v&agrave; mật khẩu m&agrave; bạn đ&atilde; nhận được qua email nhấn Sign in <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\"><em>(Nhận ID tại đ&acirc;y)</em></span></a></div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"color:#0000FF\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s7.png\" style=\"height:420px; width:250px\" /></em></span></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u v&agrave;ng l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s8.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Chọn BS nhấn n&uacute;t gọi</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s9.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em><br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.<br />\r\n- Trạng thái B&aacute;c sĩ&nbsp; c&oacute;<span style=\"color:#FF0000\"><strong> icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.<br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#FFFF00\"><strong> icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.<br />\r\nKhi sử dụng thiết bị cầm tay để v&agrave;o phi&ecirc;n tư vấn bạn n&ecirc;n sử dụng <strong>Head phone</strong> để tr&aacute;nh tạp &acirc;m l&agrave;m ảnh hưởng đến sự tập trung của BS</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n', 1, '2017-12-20 11:28:20', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vando_danhmuc`
--

CREATE TABLE `vando_danhmuc` (
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
-- Table structure for table `vando_tin`
--

CREATE TABLE `vando_tin` (
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
-- Dumping data for table `vando_tin`
--

INSERT INTO `vando_tin` (`IdTin`, `title`, `keyword`, `description`, `MaDanhMuc`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('201712081512734588', '', '', '', 73, 'Lễ ký kết hợp tác toàn diện giữa Vạn Khang SOS với Bệnh viện Chợ rẫy', 'le-ky-ket-hop-tac-toan-dien-giua-van-khang-sos-voi-benh-vien-cho-ray201712081512734588', '<p>Với mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n', '<h3><span style=\"font-size:22px\"><strong>LỄ K&Yacute; KẾT HỢP T&Aacute;C TO&Agrave;N DIỆN BỆNH VIỆN CHỢ RẪY - VẠN KHANG SOS</strong></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bệnh tật, tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai. Được cấp cứu, chữa trị kịp thời l&agrave; mong ước của mọi người. Đất nước ta đang ng&agrave;y c&agrave;ng ph&aacute;t triển, đời sống người d&acirc;n ng&agrave;y c&agrave;ng được n&acirc;ng cao n&ecirc;n nhu cầu chăm s&oacute;c, bảo vệ sức khỏe, chữa trị bệnh tật cũng ng&agrave;y c&agrave;ng cao.</p>\r\n\r\n<p>Hiện nay, khi mắc bệnh, tai nạn người d&acirc;n thường tự đến bệnh viện, ph&ograve;ng kh&aacute;m để được chữa trị. Giải ph&aacute;p nội viện đ&atilde; v&agrave; đang đ&aacute;p ứng nhu cầu cực lớn của x&atilde; hội nhưng cũng đ&atilde; dẫn đến t&igrave;nh trạng qu&aacute; tải với những hệ luỵ ng&agrave;y c&agrave;ng nghi&ecirc;m trọng hơn.&nbsp;<br />\r\nĐể giảm tải, n&acirc;ng cao chất lượng kh&aacute;m chữa bệnh của c&aacute;c cơ sở y tế, đ&aacute;p ứng nhu cầu cấp cứu, kh&aacute;m chữa bệnh của người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh, người gặp kh&oacute; khăn trong di chuyển&hellip; cần thiết phải c&oacute; th&ecirc;m một giải ph&aacute;p mới, giải ph&aacute;p bổ sung, đ&oacute; l&agrave; &ldquo;giải ph&aacute;p ngoại viện&rdquo;: người bệnh được cấp cứu tại chỗ, chữa bệnh tại nh&agrave;.<br />\r\nVới mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, h&ocirc;m nay ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute;&nbsp;<strong>&ldquo;th&agrave;nh vi&ecirc;n VKSOS&rdquo;</strong>&nbsp;sẽ được đảm bảo sẵn s&agrave;ng phục vụ, với gi&aacute; ph&iacute; dịch vụ giảm 20% so với biểu gi&aacute; được c&ocirc;ng bố tr&ecirc;n trang web Vạn Khang SOS v&agrave; được hưởng c&aacute;c ưu đ&atilde;i như giảm ph&iacute; kh&aacute;m chữa bệnh tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m l&agrave; đối t&aacute;c của Vạn Khang SOS.&nbsp;</p>\r\n', 1, '2017-12-08 10:20:16', 'vkhs/kyket01.png', 1, 0, 1),
('201712081512737007', '', '', '', 73, ' Khánh thành Trung tâm cấp cứu Vạn Khang SOS', 'khanh-thanh-trung-tam-cap-cuu-van-khang-sos201712081512737007', '<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n', '<h3><span style=\"font-size:20px\"><strong>Khánh thành Trung t&acirc;m c&acirc;́p cứu Vạn Khang SOS</strong></span></h3>\r\n\r\n<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n\r\n<p><br />\r\nKhi c&oacute; nhu cầu về cấp cứu, người d&acirc;n bấm n&uacute;t SOS để được kết nối trực tiếp đến tổng đ&agrave;i của trung t&acirc;m. Tổng đ&agrave;i sẽ thu thập một số th&ocirc;ng tin về t&igrave;nh trạng người bệnh v&agrave; tiến h&agrave;nh điều động phương tiện ph&ugrave; hợp nhất để tiếp cận người bệnh trong thời gian sớm nhất. B&aacute;c sĩ tiếp nhận nhiệm vụ sẽ li&ecirc;n hệ với người bệnh để hướng dẫn xử tr&iacute; ngay trong thời gian b&aacute;c sĩ di chuyển đến hiện trường. Đội cấp cứu khi tới hiện trường sẽ thực hiện sơ cấp cứu, sau đ&oacute; t&ugrave;y v&agrave;o t&igrave;nh trạng của người bệnh, b&aacute;c sĩ sẽ điều trị tại chỗ hoặc hỗ trợ vận chuyển người bệnh đến bệnh viện gần nhất, c&oacute; chuy&ecirc;n khoa ph&ugrave; hợp với t&igrave;nh trạng bệnh l&yacute; để tiếp tục điều trị.&nbsp;<br />\r\n<br />\r\nHội Y tế c&ocirc;ng cộng TPHCM.</p>\r\n', 1, '2017-12-08 10:17:25', 'vkhs/vk1.jpg', 1, 0, 1),
('201712141513221522', '', '', '', 83, 'Đăng Ký Khám Bệnh', 'dang-ky-kham-benh201712141513221522', '<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với<br />\r\nnguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!<br />\r\nTất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng<br />\r\ndịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n', '<p><strong>ĐĂNG K&Yacute; KH&Aacute;M BỆNH HẸN GIỜ V&Agrave; THANH TO&Aacute;N</strong></p>\r\n\r\n<p>Bạn phải chờ đợi suốt 3 &ndash; 4h&nbsp;khi đi kh&aacute;m bệnh để chỉ được kh&aacute;m, x&eacute;t nghiệm, chụp phim&hellip; kh&ocirc;ng đến 30 ph&uacute;t!</p>\r\n\r\n<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với nguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!</p>\r\n\r\n<p>Tất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng dịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n\r\n<p>Bạn chỉ cần nhấn v&agrave;o biễu tượng <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> tr&ecirc;n Ứng dụng hoặc tr&ecirc;n web VKHS rồi chọn lựa c&aacute;c th&ocirc;ng tin theo y&ecirc;u cầu kh&aacute;m bệnh của bạn:</p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;m bệnh cho ch&iacute;nh bạn hay người kh&aacute;c</li>\r\n	<li>Kh&aacute;m ở BV/ PK n&agrave;o</li>\r\n	<li>C&oacute; sử dụng BHYT hay kh&ocirc;ng</li>\r\n	<li>Kh&aacute;m th&ocirc;ng thường hay kh&aacute;m dịch vụ hay chọn lựa chuy&ecirc;n gia v&agrave; ng&agrave;y giờ kh&aacute;m</li>\r\n	<li>Kh&aacute;m lần đầu hay t&aacute;i kh&aacute;m</li>\r\n	<li>Chuy&ecirc;n khoa kh&aacute;m: c&oacute; thể l&agrave; Ph&ograve;ng kh&aacute;m Nội tổng hợp hoặc c&aacute;c ph&ograve;ng kh&aacute;m chuy&ecirc;n khoa hoặc c&aacute;c dịch vụ kỹ thuật như x&eacute;t nghiệm, chụp Xquang, CT&hellip; hay Si&ecirc;u &acirc;m, Nội soi&hellip;</li>\r\n</ul>\r\n\r\n<p>Hệ thống sẽ gởi đến thiết bị của bạn <strong>&ldquo;Lịch hẹn kh&aacute;m bệnh&rdquo; với đủ th&ocirc;ng tin cần thiết: Số thứ tự, giờ hẹn kh&aacute;m bệnh, ph&ograve;ng kh&aacute;m bệnh&hellip;&nbsp;</strong></p>\r\n\r\n<p>Bạn c&oacute; thể thanh to&aacute;n trước cho bệnh viện: Nhấn v&agrave;o n&uacute;t thanh to&aacute;n tr&ecirc;n web/Ứng dụng VKHS.&nbsp;</p>\r\n\r\n<p><strong>Trường hợp bạn đ&atilde; đến BV/PK</strong>, nh&acirc;n vi&ecirc;n BV/PK sẽ hướng dẫn bạn thực hiện &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; tr&ecirc;n &ldquo;m&agrave;n h&igrave;nh cảm ứng&rdquo; giống như tr&ecirc;n web/Ứng dụng VKHS, đồng thời sẽ gi&uacute;p bạn tải Ứng dụng VKHS v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin - VKHS.</p>\r\n\r\n<p>Người đ&atilde; tải Ứng dụng v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin &ndash; VKHS được hưởng rất nhiều quyền lợi&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-success\" href=\"#/datlichkhambenh\" style=\"color:#fff;background-color: #2099a1;border:#2099a1;\">Đăng K&yacute; Kh&aacute;m Chữa Bệnh</a></p>\r\n', 1, '2017-12-20 09:54:23', '', 1, 0, 1),
('201712141513222244', '', '', '', 83, 'Tư Vấn Sức Khỏe Từ Xa', 'tu-van-suc-khoe-tu-xa201712141513222244', '<p>Telehealth l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng</p>\r\n', '<p><strong>Telehealth</strong> l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng.<span style=\"color:#0000FF\"> </span><a href=\"#/tcs\"><span style=\"color:#0000FF\">(<em>Nhấn v&agrave;o đ&acirc;y để tải ứng dụng miễn ph&iacute;</em>)</span></a></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk1.jpg\" style=\"height:248px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh trong thời gian thực, qua đ&oacute;&nbsp; BS đ&aacute;nh gi&aacute; được tổng trạng của t&igrave;nh huống y tế hiện tại, BS c&oacute; thể c&oacute; được chẩn đo&aacute;n ban đầu gi&uacute;p việc tư vấn v&agrave; hướng dẫn cho bạn xử l&yacute; t&igrave;nh huống ch&iacute;nh x&aacute;c hơn. Thậm ch&iacute; nếu cần thiết phải đến bệnh viện th&igrave; BS cũng sẽ hướng dẫn ch&iacute;nh x&aacute;c cho bạn cần phải kh&aacute;m ở chuy&ecirc;n khoa n&agrave;o để tr&aacute;nh mất thời gian của bạn. <a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(<em>Xem th&ecirc;m đăng k&yacute; kh&aacute;m bệnh</em>)</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk2.png\" style=\"height:342px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth ngo&agrave;i sự tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh, hệ thống c&ograve;n cho ph&eacute;p BS xem lại c&aacute;c hồ sơ y tế của bạn. Khi bạn đ&atilde; c&oacute; hồ sơ kh&aacute;m chữa bệnh lưu trữ tr&ecirc;n cloud VKHS&nbsp;th&igrave; việc tham khảo c&aacute;c dữ liệu y tế sẵn c&oacute; như kết quả chẩn đo&aacute;n những lần kh&aacute;m bệnh trước đ&oacute;, kết quả x&eacute;t nghiệm, chụp phim, si&ecirc;u &acirc;m vv&hellip; gi&uacute;p BS c&oacute; được chẩn đo&aacute;n ban đầu ch&iacute;nh x&aacute;c hơn để việc tư vấn, hướng dẫn đạt hiệu quả hơn.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk3.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong phi&ecirc;n kết nối tư vấn chăm s&oacute;c sức khỏe từ xa BS nhận thấy rằng cần c&oacute; th&ecirc;m &yacute; kiến của Chuy&ecirc;n gia về chuy&ecirc;n khoa. BS sẽ mời Chuy&ecirc;n gia c&ugrave;ng tham gia trao đổi kiểm tra v&agrave; đ&aacute;nh gi&aacute; to&agrave;n diện theo chuy&ecirc;n khoa từ đ&oacute; c&ugrave;ng tư vấn v&agrave; giải đ&aacute;p mọi thắc mắc theo y&ecirc;u cầu của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk4.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#0000FF\"><strong>&quot;Telehealth -&nbsp;B&aacute;c Sĩ Trong Gia Đ&igrave;nh Bạn&quot;</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513741700/huong-dan-su-dung-telehealth-tren-may-tinh.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n m&aacute;y t&iacute;nh</em></a></u></li>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513742765/huong-dan-su-dung-telehealth-tren-smartphone.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n Smartphone</em></a></u></li>\r\n</ul>\r\n', 1, '2017-12-20 01:18:49', '', 1, 0, 1),
('201712141513222560', '', '', '', 83, 'Cấp Cứu Tại Chỗ', 'cap-cuu-tai-cho201712141513222560', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n\r\n<p><strong>Phản ứng nhanh &ndash; Tận dụng thời gian v&agrave;ng trong cấp cứu &ndash; Thực hiện cấp cứu hiệu quả</strong> lu&ocirc;n l&agrave; mong muốn của mọi người.</p>\r\n\r\n<p>Thấu cảm nỗi lo v&agrave; mong ước ấy, Trung t&acirc;m cấp cứu Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) triển khai cung ứng dịch vụ cấp cứu tại chỗ cho người d&acirc;n TP.HCM theo một m&ocirc; h&igrave;nh mới:</p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng cần số điện thoại gọi cấp cứu</strong>, khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t</strong><strong> SOS</strong> sẽ được đ&aacute;p ứng ngay. B&aacute;c sĩ gần nhất sẽ được điều động, phương tiện ph&ugrave; hợp nhất sẽ được sử dụng để tiếp cận bệnh nh&acirc;n trong thời gian sớm nhất c&oacute; thể.</li>\r\n	<li><strong>Kh&ocirc;ng chỉ c&oacute; &ocirc; t&ocirc; cấp cứu</strong>, Vạn Khang SOS c&ograve;n sẵn s&agrave;ng <strong>m&ocirc; t&ocirc; cấp cứu </strong>để c&oacute; thể tiếp cận nhanh nhất với người bệnh, nhất l&agrave; trong t&igrave;nh trạng tắt đường hoặc nh&agrave; trong hẻm s&acirc;u. Xe m&ocirc; t&ocirc; được trang bị đầy đủ thiết bị cấp cứu như tr&ecirc;n xe &ocirc; t&ocirc;, kể cả m&aacute;y điện tim, shock tim&hellip; để thực hiện cấp cứu tại chỗ hiệu quả. Xe m&ocirc; t&ocirc; kh&ocirc;ng vận chuyển bệnh nh&acirc;n.</li>\r\n	<li><strong>Li&ecirc;n kết c&aacute;c bệnh viện để thiết lập mạng lưới cấp cứu chuy&ecirc;n nghiệp </strong>được ph&acirc;n bố đều khắp tr&ecirc;n địa b&agrave;n th&agrave;nh phố nhằm đ&aacute;p ứng nhanh nhất y&ecirc;u cầu cấp cứu của người d&acirc;n <a href=\"http://vankhangsos.vn/hoptacchuyenmon.html\"><span style=\"color:#0000FF\"><em>(Xem th&ecirc;m...)</em></span></a></li>\r\n	<li><strong>Ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến để quản l&yacute;, vận h&agrave;nh hệ thống tự động </strong>gi&uacute;p tiếp cận nhanh ch&oacute;ng, cấp cứu hiệu quả cho người bệnh.</li>\r\n</ul>\r\n\r\n<p>Để sử dụng dịch vụ cấp cứu tại chỗ:</p>\r\n\r\n<ul>\r\n	<li>H&atilde;y <strong>tải miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> sẵn s&agrave;ng</li>\r\n</ul>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t &ldquo;SOS&rdquo;</strong> tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động sẽ định vị người bệnh v&agrave; điều động xe cấp cứu gần nhất đang trong t&igrave;nh trạng sẵn s&agrave;ng để thực hiện nhiệm vụ.</p>\r\n\r\n<ul>\r\n	<li>Trường hợp chưa c&oacute; <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong>, Bạn c&oacute; thể li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ cấp cứu tại chỗ.</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Cấp cứu tại chỗ: &nbsp;<em>An to&agrave;n của Bạn l&agrave; mong ước của Vạn Khang SOS.</em></strong></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ltEI7-o51Fo\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2017-12-20 03:29:40', '', 1, 0, 1),
('201712141513222646', '', '', '', 83, 'Chữa Bệnh Tại Nhà', 'chua-benh-tai-nha201712141513222646', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n\r\n<p>Thực trạng tr&ecirc;n đ&atilde; tạo ra nhu cầu được kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe tại nh&agrave; khi chưa thật sự cần thiết phải v&agrave;o bệnh viện, nhất l&agrave; đối với những người bệnh gặp kh&oacute; khăn trong việc di chuyển, người gi&agrave; yếu mắc bệnh mạn t&iacute;nh&hellip;</p>\r\n\r\n<p>G&oacute;p phần đ&aacute;p ứng mong muốn thiết thực của người bệnh, Ph&ograve;ng kh&aacute;m B&aacute;c sĩ gia đ&igrave;nh Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) trong sự li&ecirc;n kết hợp t&aacute;c c&ugrave;ng c&aacute;c đối t&aacute;c triển khai cung ứng dịch vụ chăm s&oacute;c sức khỏe to&agrave;n diện tại nh&agrave; tr&ecirc;n địa b&agrave;n TP.HCM, cụ thể như:</p>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ đến kh&aacute;m bệnh, k&ecirc; đơn điều trị, tư vấn điều trị v&agrave; chăm s&oacute;c sức khỏe.</li>\r\n	<li>Điều dưỡng đến chăm s&oacute;c người bệnh: ti&ecirc;m ch&iacute;ch, thay băng, chăm s&oacute;c vết thương&hellip;</li>\r\n	<li>Kỹ thuật vi&ecirc;n đến tập vật l&yacute; trị liệu v&agrave; hướng dẫn người bệnh tập vật l&yacute; trị liệu.</li>\r\n	<li>B&aacute;c sĩ, Lương y đến kh&aacute;m bệnh, tư vấn điều trị v&agrave; thực hiện chữa bệnh tại nh&agrave; theo Y học cổ truyền.</li>\r\n	<li>B&aacute;c sĩ, Điều dưỡng, Kỹ thuật vi&ecirc;n đến thực hiện chăm s&oacute;c giảm nhẹ (chống đau, giảm kh&oacute; thở&hellip;) cho bệnh nh&acirc;n ung thư giai đoạn cuối, bệnh nh&acirc;n nặng&hellip;</li>\r\n	<li>Cung cấp thuốc điều trị, lấy mẫu bệnh phẩm để x&eacute;t nghiệm tại nh&agrave; theo chỉ định của B&aacute;c sĩ.</li>\r\n	<li>C&aacute;c dịch vụ kh&aacute;c theo y&ecirc;u cầu.</li>\r\n</ul>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Vạn Khang SOS c&ograve;n cung cấp dịch vụ vận chuyển bệnh nh&acirc;n khi c&oacute; nhu cầu:</p>\r\n\r\n<ul>\r\n	<li>Vận chuyển bệnh nh&acirc;n đến bệnh viện, ph&ograve;ng kh&aacute;m để kh&aacute;m chữa bệnh, được li&ecirc;n hệ trước để giảm chờ đợi.</li>\r\n	<li>Chuyển viện hoặc đưa bệnh nh&acirc;n từ bệnh viện, ph&ograve;ng kh&aacute;m về nh&agrave;.</li>\r\n</ul>\r\n\r\n<p>Vạn Khang SOS ứng dụng c&ocirc;ng nghệ cao, tự động tạo sự tiện dụng cho kh&aacute;ch h&agrave;ng, cho c&aacute;n bộ y tế lu&ocirc;n sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu chăm s&oacute;c, kh&aacute;m chữa bệnh tại nh&agrave;.</p>\r\n\r\n<p>Để sử dụng dịch vụ chữa bệnh tại nh&agrave;, Bạn c&oacute; thể:</p>\r\n\r\n<p>-Tải<strong> miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a></p>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu dịch vụ, chỉ cần bấm v&agrave;o biểu tượng của dịch vụ y&ecirc;u cầu tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động chuyển th&ocirc;ng tin đến c&aacute;n bộ y tế (BS, Điều dưỡng, Kỹ thuật vi&ecirc;n) gần nh&agrave; bệnh nh&acirc;n nhất để thống nhất lịch hẹn thực hiện nhiệm vụ.</p>\r\n\r\n<p>-Trường hợp chưa c&oacute; &ldquo;Ứng dụng VKHS&rdquo;, Bạn c&oacute; thể:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Y&ecirc;u cầu dịch vụ từ trang web <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> hoặc</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Chữa bệnh tại nh&agrave;: &nbsp;<em>Vạn Khang SOS &ndash; Chăm s&oacute;c như người th&acirc;n.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ioCy9w3LRdc\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 1, '2017-12-20 03:29:56', '', 1, 0, 1),
('201712201513741700', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên máy tính', 'huong-dan-su-dung-telehealth-tren-may-tinh201712201513741700', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong></div>\r\n\r\n<div>Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/1.png\" style=\"height:391px; width:600px\" /></div>\r\n\r\n<div><strong>2./ C&agrave;i đặt</strong></div>\r\n\r\n<div>Double click v&agrave;o file <strong>trueconf_client.exe </strong>bạn mới tải về để tiến h&agrave;nh c&agrave;i đặt.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/2.png\" style=\"height:164px; width:313px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chọn Tiếng Việt bấm OK</em></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/3.png\" style=\"height:427px; width:513px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chấp nhận thỏa thuận &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/4.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/5.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/6.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chương tr&igrave;nh đang c&agrave;i đặt, Vui long chờ</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/7.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Đ&atilde; ho&agrave;n th&agrave;nh bấm n&uacute;t ho&agrave;n tất</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/8.png\" style=\"height:366px; width:450px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Giao diện HNTH mới c&agrave;i đặt chưa cấu h&igrave;nh.</em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>3./ Cấu h&igrave;nh mạng kết nối với server.</strong></div>\r\n\r\n<div>Bạn phải thực hiện điều n&agrave;y v&agrave; chỉ một lần duy nhất, c&aacute;c th&ocirc;ng số sẽ được lưu trữ.</div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bấm chọn C&agrave;i đặt - Mạng</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/9.png\" style=\"height:366px; width:450px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bỏ dấu chọn: Mặc định m&aacute;y chủ kết nối &amp;&nbsp;bấm v&agrave;o n&uacute;t N&acirc;ng cao</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/public/img/images/10.png\" style=\"height:472px; width:400px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Nhập th&ocirc;ng số Host: 210.211.108.66&nbsp; Port: 4307, Nhấn OK</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/11.png\" style=\"height:389px; width:318px\" /></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>4./ Đăng k&yacute; ID mật khẩu đăng nhập</strong></div>\r\n\r\n<div>Quay trở lại, Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\">http://vkhs.vn/index_bak.html#/tcs</a> nhấn n&uacute;t<strong> &quot;Đăng k&yacute; nhận Trueconf ID&quot;.</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/12.png\" style=\"height:397px; width:600px\" /></strong></div>\r\n\r\n<div>Sau khi nhập c&aacute;c th&ocirc;ng tin cần thiết cho BS c&oacute; dữ liệu sức khỏe của bạn, Bạn sẽ nhận được ID gửi qua email.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/13.png\" style=\"height:439px; width:350px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong>&quot;Khi đ&atilde; c&oacute;, Bạn nhập v&agrave;o ID v&agrave; mật khẩu, Nhấn n&uacute;t OK để bắt đầu một phi&ecirc;n HNTH.&quot;</strong></em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>5./ Y&ecirc;u cầu một phi&ecirc;n tư vấn hỗ trợ sức khỏe</strong></div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch b&ecirc;n tay phải, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u xanh l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/14.png\" style=\"height:400px; width:350px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em></div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ&nbsp; c&oacute; <span style=\"color:#FF0000\"><strong>icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute; <span style=\"color:#FFFF00\"><strong>icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.</div>\r\n', 1, '2017-12-20 11:39:20', '', 1, 0, 1),
('201712201513742765', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên Smartphone', 'huong-dan-su-dung-telehealth-tren-smartphone201712201513742765', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong><br />\r\nBằng thiết bị cầm tay truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s1.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><br />\r\n<strong>2./ C&agrave;i đặt</strong><br />\r\nNhấn <strong>Cloud </strong>để tải</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s2.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Sau khi tải xong Nhấn <strong>Open </strong>để mở</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s3.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Đầu ti&ecirc;n bạn phải điều hướng tới server của Telehealth, nhấn&nbsp;<strong>Another server</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s4.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Nhập địa chỉ IP của Telehealth tại <strong>Server address</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s5.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Th&ocirc;ng số Server Adddress: <em><strong>210.211.108.66:4307</strong></em></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s6.png\" style=\"height:420px; width:250px\" /></strong></em></div>\r\n\r\n<div>Nhập ID v&agrave; mật khẩu m&agrave; bạn đ&atilde; nhận được qua email nhấn Sign in <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\"><em>(Nhận ID tại đ&acirc;y)</em></span></a></div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"color:#0000FF\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s7.png\" style=\"height:420px; width:250px\" /></em></span></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u v&agrave;ng l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s8.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Chọn BS nhấn n&uacute;t gọi</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s9.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em><br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.<br />\r\n- Trạng thái B&aacute;c sĩ&nbsp; c&oacute;<span style=\"color:#FF0000\"><strong> icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.<br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#FFFF00\"><strong> icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.<br />\r\nKhi sử dụng thiết bị cầm tay để v&agrave;o phi&ecirc;n tư vấn bạn n&ecirc;n sử dụng <strong>Head phone</strong> để tr&aacute;nh tạp &acirc;m l&agrave;m ảnh hưởng đến sự tập trung của BS</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n', 1, '2017-12-20 11:28:20', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vksos_danhmuc`
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
-- Table structure for table `vksos_hotro`
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
-- Dumping data for table `vksos_hotro`
--

INSERT INTO `vksos_hotro` (`id`, `email`, `hoten`, `sdt`, `diachi`, `delete`, `noidung`) VALUES
(25, 'redlight41114@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-26 06:17:39_____[\"3\"]'),
(28, 'teagandooley@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-28 07:50:59_____[\"3\"]'),
(29, 'mnsmjo@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-07-31 09:09:30_____[\"3\"]'),
(30, 'huspawaty@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-02 05:17:03_____[\"3\"]'),
(31, 'longthienlk@gmail.com', 'longthien', '0947582918', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36__2017-08-02 12:30:28___Mày cũng biết làm web ak __[\"3\"]'),
(32, 'andrews412@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-03 08:59:39_____[\"3\"]'),
(33, 'tsommerf@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-04 05:29:39_____[\"3\"]'),
(34, 'robertcampanello@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-07 06:07:52_____[\"3\"]'),
(35, 'obasary@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 03:07:08_____[\"3\"]'),
(36, 'vinayjoshi1988@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-08 11:57:16_____[\"3\"]'),
(37, 'tabanderson@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 01:41:53_____[\"3\"]'),
(38, 'meaganleigh777@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 08:44:52_____[\"3\"]'),
(39, 'johnpaul112891@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-09 09:11:38_____[\"3\"]'),
(40, 'shario@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 12:57:38_____[\"3\"]'),
(41, 'petra-stein@hotmail.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 04:05:33_____[\"3\"]'),
(42, 'christophervelez1982@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-10 06:07:42_____[\"3\"]'),
(43, 'cldick2@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 08:36:21_____[\"3\"]'),
(44, 'shtiblet@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-11 09:51:21_____[\"3\"]'),
(45, 'dwynrchrds@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-12 05:45:30_____[\"3\"]'),
(46, 'thaokon@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 03:41:09_____[\"3\"]'),
(47, 'vancemartin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-15 05:16:02_____[\"3\"]'),
(48, 'kim.small2@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-17 04:54:10_____[\"3\"]'),
(49, 'marygracesunga@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-18 01:36:26_____[\"3\"]'),
(50, 'aubrey.yuzva@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-19 02:15:45_____[\"3\"]'),
(51, 'tomsplumbingelgin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 03:18:13_____[\"3\"]'),
(52, 'daleachapman45@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-21 11:58:33_____[\"3\"]'),
(53, 'tkarl2209@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-22 09:24:57_____[\"3\"]'),
(54, 'cassandra.durack@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 12:04:49_____[\"3\"]'),
(55, 'noi@acadia-info.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-23 01:29:54_____[\"3\"]'),
(56, 'info@48first.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 01:08:07_____[\"3\"]'),
(57, 'hermanloud@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 11:56:11_____[\"3\"]'),
(58, 'ssvalina@sbcglobal.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-24 04:10:24_____[\"3\"]'),
(59, 'sarah.massey2@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-25 01:52:04_____[\"3\"]'),
(60, 'andrewkaspers@gmail.com', '', '', '112.213.89.101', 0, '2017-08-26 09:57:58<br/>pending<br>đã gui mail<br><hr>2017-08-26 09:56:54<br/>pending<br>asd asdasd as<br><hr>Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:53:25_____[\"3\"]'),
(61, 'jofurlong001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-26 01:17:11_____[\"3\"]'),
(62, 'dnaciadis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 04:02:30_____[\"3\"]'),
(63, 'jkpareso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 08:48:04_____[\"3\"]'),
(64, 'kk1188@web.de', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-27 10:00:12_____[\"3\"]'),
(65, 'charliethelee@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 01:28:47_____[\"3\"]'),
(66, 'mtndrmr@comcast.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-29 09:56:04_____[\"3\"]'),
(67, 'darling500@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-30 12:09:59_____[\"3\"]'),
(68, 'elaineylflavin@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 03:36:47_____[\"3\"]'),
(69, 'mindyreed11@bellsouth.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 06:21:17_____[\"3\"]'),
(70, 'stephanie.koontz.95@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 02:11:48_____[\"3\"]'),
(71, 'akjohns001@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-08-31 09:31:09_____[\"3\"]'),
(72, 'ddsmkg@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 12:13:06_____[\"3\"]'),
(73, 'damon.patralakis@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-01 06:41:38_____[\"3\"]'),
(74, 'maboll@rcn.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 02:06:53_____[\"3\"]'),
(75, 'sandymiller0705@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-02 09:12:09_____[\"3\"]'),
(76, 'benhart74@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-03 12:10:51_____[\"3\"]'),
(77, 'askcarso@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 02:43:16_____[\"3\"]'),
(78, 'astapins@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 05:00:59_____[\"3\"]'),
(79, 'scott.w.oconnell@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-05 11:55:48_____[\"3\"]'),
(80, 'patrick.auer.jones@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 06:26:02_____[\"3\"]'),
(81, 'gaytanric@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-06 11:39:06_____[\"3\"]'),
(82, 'coachtglove@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 02:05:43_____[\"3\"]'),
(83, 'fholler99@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 08:54:18_____[\"3\"]'),
(84, 'vatampm@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-07 10:31:18_____[\"3\"]'),
(85, 'meridianclinics@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 03:32:46_____[\"3\"]'),
(86, 'ajsvaan@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-08 10:40:34_____[\"3\"]'),
(87, 'suttongr@pacbell.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-09 02:12:46_____[\"3\"]'),
(88, '', 'ZAJJypfwqS', 'rNEmjRgcO', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-09 01:30:36___r8a3Il http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(89, 'johnpaulrangel@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:08:35_____[\"3\"]'),
(90, 'clairepooleh866h@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-11 06:46:21_____[\"3\"]'),
(91, 'ulugbekgp@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 02:55:00_____[\"3\"]'),
(92, 'derek_colon@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-12 03:51:51_____[\"3\"]'),
(93, '', 'MeBNWxBWTnhMBO', 'zZxYvwuOqtJxsPeP', '112.213.89.101', 0, 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)__2017-09-12 08:04:57___H6mQV8 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(94, 'eddiemallett@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:12:56_____[\"3\"]'),
(95, 'nyltom@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 02:38:14_____[\"3\"]'),
(96, 'haughney@verizon.net', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 05:15:54_____[\"3\"]'),
(97, 'deestric@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 03:29:46_____[\"3\"]'),
(98, 'winnyeme@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-14 11:07:07_____[\"3\"]'),
(99, 'friedriceandeggrolls@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 06:02:19_____[\"3\"]'),
(100, 'suziejudd64@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-15 07:11:16_____[\"3\"]'),
(101, 'darchila@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 01:28:42_____[\"3\"]'),
(102, 'post3092@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 06:40:15_____[\"3\"]'),
(103, 'vu0tran@gmail.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 03:36:00_____[\"3\"]'),
(104, 'stevescottemail@yahoo.com', '', '', '112.213.89.101', 0, 'Mozilla/5.0 (Windows NT 5.1; rv:7.0.1) Gecko/20100101 Firefox/7.0.1__2017-09-16 11:56:04_____[\"3\"]');

-- --------------------------------------------------------

--
-- Table structure for table `vksos_khachang`
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
-- Dumping data for table `vksos_khachang`
--

INSERT INTO `vksos_khachang` (`email`, `password`, `random`, `HoTen`, `SDT`, `DiaChi`, `Nhom`, `active`, `ThongTinChung`) VALUES
('a', '4571eb1bac07d1392b8987d84c91d4d52ff06c5c', 'Bvp4FSAY', 'TRẦN THỊ DUNG', '', '', 1, '1', NULL),
('do.nguyen@inlen.com', '53e553ef92f61ac5d1df3d0cd8b582bca6670af9', 'luXezPlF', 'nguyễn văn Độ', '0123456789', 'sdf sdfs', 1, '1', '{\"avata\":\"luXezPlF.jpeg\"}'),
('hoangnhat91@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'Vũ Hoàng Nhật', '0901513885', 'Q12, TP HCM', 1, '1', '{\"avata\":\"8wrWWNCD.jpeg\",\"AnHienSDT\":0}'),
('hoangnhatvu01@gmail.com', 'bc7c8b05cc661f8b841aca08985a911ff06815db', 'iWFr2euU', 'Vu Hoang Nhat', '0123456789', '', 1, '1', NULL),
('hpdiemhang@gmail.com', 'a7879dc320406bbdc884a936047fdc7ecfe4eab1', 'GMIQLxrq', 'Nguyễn Thị Diễm Hằng', '', '', 1, '1', NULL),
('lehathanh2807@gmail.com', 'd5d3e02d57e8359456ea58fa073d686713b5015b', 'g1on4l1j', 'Hà Thanh', '0904611543', '', 1, '1', NULL),
('leminhhoang1812@gmail.com', '26c797a9ef4c4640aa3c3ecc4730fcbc9e047d9f', 'TAXQJ9fu', 'af', '01234567745', 'kk dddff dfgdf\r\n', 1, '-1', '{\"avata\":\"TAXQJ9fu.jpeg\"}'),
('linlvo.it@gmail.com', '714daae9b07810652b53d6844cef4f8ef52230fc', 's7avraG2', 'Linl Vo', '0902407247', '', 1, '1', '{\"avata\":\"s7avraG2.jpeg\"}'),
('minhchau.heomoi@gmail.com', '84df2a5cb1e5d551fc2a9a191b7b2bc01a1b3ef6', 'qB6lIOWP', 'Lê Thị Minh Châu', '01659180894', '', 1, '1', '{\"avata\":\"qB6lIOWP.jpeg\"}'),
('namdong92@gmail.com', '15481c065569b29e3eba88317a12847e9654f094', '8wrWWNCD', 'nguyễn van độ', '1234567890', 'as asda', 1, '1', '{\"avata\":\"8wrWWNCD.jpeg\"}'),
('namdongvando@gmail.com', 'e555ea9e0cdf79ec5777578c9c339df323ea014b', 'SerSHnQs', 'namdongvando@gmail.com', '', '', 1, 'SerSHnQs', NULL),
('nguyenvanquang943@gmail.com', 'bf39dc3a71b43258081c6983d1bc17c0ea514413', 'nQhuX6gQ', 'nguyen van quang', '0919276336', '', 1, '1', '{\"avata\":\"nQhuX6gQ.jpeg\"}'),
('pg_vina@yahoo.com.vn', '28d5e7a05d9d2c0c8cc36353d87546a778e7e993', 'DXCEFS5Y', 'phan thanh hai', '0933955658', '', 1, '1', '{\"avata\":\"DXCEFS5Y.jpeg\"}'),
('phamha.3612@gmail.com', 'f0a5a08d1abad46055c4dc03dac75ac9a4532470', 'qLbl2Pgn', 'TISASHOP', '0933520783', '568 Phạm Văn Bạch, P.13, Q.Tân Bình, HCM', 1, '1', ''),
('ts_hailong@yahoo.com.vn', '48efcf5eae3ec0801697dd0e68ddf177b228184a', 'OByB0p0U', 'phaihailong', '', '', 1, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vksos_lichsu`
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
-- Dumping data for table `vksos_lichsu`
--

INSERT INTO `vksos_lichsu` (`DongLichSu`, `MaNhanVien`, `ThoiGian`, `Action`, `Table`, `LoaiThaoTac`, `NoiDung`) VALUES
(1, 'namdong92a', '2016-05-17 07:22:10', 'actiona', 'Tablea', 'Xoaa', 'xoa noi ufnga');

-- --------------------------------------------------------

--
-- Table structure for table `vksos_menu`
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
-- Dumping data for table `vksos_menu`
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
-- Table structure for table `vksos_option`
--

CREATE TABLE `vksos_option` (
  `MaOption` varchar(20) NOT NULL,
  `LoaiOption` int(11) NOT NULL,
  `GiaTriVN` text NOT NULL,
  `GiaTriEN` text,
  `GhiChu` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vksos_option`
--

INSERT INTO `vksos_option` (`MaOption`, `LoaiOption`, `GiaTriVN`, `GiaTriEN`, `GhiChu`) VALUES
('Lang_BaiVietMoi', 2, 'Bài viết mới', '', '{\"type\":\"2\",\"title\":\"BaivietMoi\"}'),
('Lang_DanhMuc', 2, 'Danh Mục Bài Viết', '', '{\"type\":\"2\",\"title\":\"Danh Mục Bài Viết\"}'),
('Lang_Facebook', 2, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/nguyenvando.net/\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/nguyenvando.net/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/nguyenvando.net/\">Nguyenvando.net</a></blockquote></div>', '', '{\"type\":\"2\",\"title\":\"Facebook\"}'),
('Lang_Slogan', 2, 'Chia sẻ kiem', '', '{\"type\":\"2\",\"title\":\"Slogan\"}'),
('Lang_TrangXaHoi', 2, 'Trang Xã Hội', '', '{\"type\":\"2\",\"title\":\"Trang Xã Hội\"}'),
('Option_Logo', 1, 'logo-vksos.png', '', '{\"type\":\"1\",\"title\":\"Logo Web\"}'),
('SEO_Des', 0, 'description', 'description', ''),
('SEO_Google', 0, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.11&appId=1235248759897668\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', ''),
('SEO_Keyword', 0, 'keyword', 'keyword', ''),
('SEO_Title', 0, 'Title', 'Title', ''),
('Social_Facebook', 0, '', '', ''),
('Social_Google', 0, '', '', ''),
('Social_Twitter', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vksos_pages`
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
-- Dumping data for table `vksos_pages`
--

INSERT INTO `vksos_pages` (`idPa`, `idGroup`, `TieuDe`, `TieuDeKD`, `Title`, `Des`, `Keyword`, `TomTat`, `NoiDung`, `UrlHinh`, `AnHien`, `LoaiPage`) VALUES
(1, 1, 'Giới Thiệu', 'gioi-thieu', 'Giới Thiệu', 'about', 'about', '', '<h2 style=\"text-align:center\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:20px\"><strong>GIỚI THIỆU VKHS</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong> đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;</span>&nbsp;<span style=\"font-size:16px\">0314538127</span>&nbsp;<span style=\"font-size:16px\">ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>VKHS</strong> cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong> gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ. <a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">(</span></em></a><em><a href=\"http://yttv.vn\"><span style=\"color:#0000FF\">Xem th&ecirc;m</span></a></em><a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">...)</span></em></a></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Tư vấn sức khoẻ từ xa</strong> với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn. </span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất. </span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n. </span></span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa: </strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m...)</span></a></em></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật: </strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip; <strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong> theo chỉ định của BS điều trị.&nbsp;</span></span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Vận chuyển </strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).</span></span></span></span></span></span></span></span><br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>. </span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\">Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</span></span></span></span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS. <em><span style=\"color:#0000FF\">(</span><a href=\"http://vkhs.vn/mobile/vkhs.apk\"><span style=\"color:#0000FF\">Tải ứng dụng</span></a><span style=\"color:#0000FF\">)</span></em></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-V&agrave;o trang web VKHS hay VK_SOS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Điện thoại số &hellip;</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế. &nbsp;</span></p>\r\n', '', 1, 0),
(73, 1, 'Thông Tin', 'thong-tin', 'Biểu Phí', 'Lập trình php cơ bản', 'Lập trình php cơ bản', '<p>asdasdas das das</p>\r\n', '<p>Th&ocirc;ng Tin dang cập nhật</p>\r\n', '/public/img/images', 1, 1),
(74, 1, 'Liên hệ', 'lien-he', 'Thông tin', '', '', '', '<div class=\"contact-list\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5><strong><span style=\"color:#FF0000\"><span style=\"font-size:14px\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ</span></span></strong></h5>\r\n\r\n<div class=\"contact-content-left\">\r\n<ul>\r\n	<li><strong><span style=\"font-size:14px\">C&Ocirc;NG TY TNHH GIẢI PH&Aacute;P SỨC KHỎE VẠN KHANG</span></strong><br />\r\n	<em>(<span style=\"font-size:14px\">VAN KHANG HEALTH SOLUTIONS JOINT STOCK COMPANY)</span></em></li>\r\n	<li><strong>Địa chỉ:</strong> 31A/8 H&ugrave;ng Vương, P9, Q5, TPHCM</li>\r\n	<li><strong>Hotline:</strong> <a href=\"callto:1900%2063%2066%2071\">1900 63 66 71</a></li>\r\n	<li><strong>MST:</strong> 0314538127</li>\r\n	<li><strong>Website:</strong> <a href=\"http://vkhs.vn\">www.vkhs.vn</a></li>\r\n</ul>\r\n<!--<ul>--><!--<li><span><span>BỘ PHẬN CHĂM SÓC KHÁCH HÀNG</span></span></li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> sos@vankhangsos.vn</li>--><!--</ul>--></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5><span style=\"color:rgb(255, 0, 0)\"><strong>THỜI GIAN L&Agrave;M VIỆC - BỘ PHẬN VĂN PH&Ograve;NG</strong></span></h5>\r\n\r\n<div class=\"contact-content-left\">\r\n<ul>\r\n	<li><strong>Văn phòng VKHS</strong> : (028) 7300 2246</li>\r\n	<li><strong>Văn phòng&nbsp; SOS</strong>&nbsp; :&nbsp; (028) 7300 2611</li>\r\n	<li>Từ thứ hai đến thứ bảy h&agrave;ng tuần (trừ c&aacute;c ng&agrave;y Lễ).</li>\r\n	<li>Buổi s&aacute;ng: <strong>8h00</strong> đến <strong>12h00</strong>.</li>\r\n	<li>Buổi chiều: <strong>13h00</strong> đến <strong>17h00.</strong></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n<div class=\"row bg-gray\">\r\n<div class=\"col-md-6\">\r\n<div class=\"contact-list-item\">\r\n<div class=\"contact-content\">\r\n<h5>&nbsp;</h5>\r\n</div>\r\n</div>\r\n</div>\r\n<!--<div class=\"col-md-6\">--><!--<div class=\"contact-list-item\">--><!--<div class=\"contact-content\">--><!--<h5 class=\"contact-title\"> CÔNG TY TNHH VẠN KHANG SOS </h5>--><!--<div class=\"contact-content-left\">--><!--<ul>--><!--<li><span><span>Trụ sở chính</span></span></li>--><!--<li><span>Địa chỉ:</span> 113 Trần Bình Trọng, P.2, Q.5, TPHCM</li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> contact@vankhangsos.vn</li>--><!--</ul>--><!--<ul>--><!--<li><span><span>Trụ sở chính</span></span></li>--><!--<li><span>Địa chỉ:</span> 113 Trần Bình Trọng, P.2, Q.5, TPHCM</li>--><!--<li><span>Tel:</span> (08) 6288 7938</li>--><!--<li><span>Email:</span> contact@vankhangsos.vn</li>--><!--</ul>--><!--</div>--><!--</div>--><!--</div>--><!--</div>--></div>\r\n</div>\r\n', '/public/img/images', 1, 0),
(78, 1, 'Đồng Hành Cùng Vạn Khang', 'dong-hanh-cung-van-khang', '', '', '', '<p>VKHS được th&agrave;nh lập nhằm tạo n&ecirc;n một hệ sinh th&aacute;i li&ecirc;n kết c&aacute;c nh&agrave; cung ứng dịch vụ v&agrave; sản phẩm về y tế, tạo n&ecirc;n một hệ thống chăm s&oacute;c sức khoẻ to&agrave;n diện v&agrave; li&ecirc;n tục cho người d&acirc;n từ Gi&aacute;o dục, tư vấn, hướng dẫn thay đổi h&agrave;nh vi để dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ&nbsp; đến cấp cứu tại chỗ kịp thời, kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật tại nh&agrave; v&agrave; kết nối đăng k&yacute; kh&aacute;m chữa bệnh, hẹn giờ tại c&aacute;c cơ sở y tế từ Trạm y tế đến BV chuy&ecirc;n khoa đầu ng&agrave;nh&hellip;.</p>\r\n', '<p style=\"text-align:center\"><span style=\"font-size:20px\"><strong>ĐỒNG H&Agrave;NH V&Agrave; PH&Aacute;T TRIỂN C&Ugrave;NG VKHS</strong></span></p>\r\n\r\n<div>VKHS được th&agrave;nh lập nhằm tạo n&ecirc;n một hệ sinh th&aacute;i li&ecirc;n kết c&aacute;c nh&agrave; cung ứng dịch vụ v&agrave; sản phẩm về y tế, tạo n&ecirc;n một hệ thống chăm s&oacute;c sức khoẻ to&agrave;n diện v&agrave; li&ecirc;n tục cho người d&acirc;n từ Gi&aacute;o dục, tư vấn, hướng dẫn thay đổi h&agrave;nh vi để dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ&nbsp; đến cấp cứu tại chỗ kịp thời, kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật tại nh&agrave; v&agrave; kết nối đăng k&yacute; kh&aacute;m chữa bệnh, hẹn giờ tại c&aacute;c cơ sở y tế từ Trạm y tế đến BV chuy&ecirc;n khoa đầu ng&agrave;nh&hellip;. <em><a href=\"http://vkhs.vn/index_bak.html#/blog/1/gioi-thieu.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m giới thiệu VKHS).</span></a></em></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>VKHS ứng dụng c&aacute;c tiến bộ c&ocirc;ng nghệ thống tin hiện đại thuộc thế hệ thứ tư, tạo n&ecirc;n sự kết nối tự động, thuận tiện cho cả đối t&aacute;c đồng h&agrave;nh v&agrave; người d&acirc;n để sử dụng c&aacute;c dịch vụ của VKHS.</div>\r\n\r\n<div>Với mục đ&iacute;ch v&agrave; c&ocirc;ng nghệ tr&ecirc;n, VKHS đ&atilde; li&ecirc;n kết với nhiều đối t&aacute;c đồng h&agrave;nh</div>\r\n\r\n<ul>\r\n	<li>C&aacute;c bệnh viện Chợ Rẩy, BV Thống Nhất, BV Qu&acirc;n Y 175, BV Viện Tim TPHCM, BV Nguyễn Tri Phương, BV Nh&acirc;n d&acirc;n Gia Định, BV B&igrave;nh Thạnh, BV Đa khoa S&agrave;i G&ograve;n, BV Quận 2, BV Quận Thủ Đức&hellip;..</li>\r\n	<li>Trung t&acirc;m cấp cứu 115 TPCHM</li>\r\n	<li>Ng&acirc;n h&agrave;ng C&ocirc;ng Thương Việt Nam (Vietin)</li>\r\n	<li>C&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ th&ocirc;ng tin VNPT, TDS, GME, ADA, Si&ecirc;u Thuật</li>\r\n	<li>C&ocirc;ng ty Dược Ch&acirc;n T&acirc;m</li>\r\n	<li>Hội Y tế c&ocirc;ng cộng TP HCM</li>\r\n	<li>Hội Trang thiết bị y tế TP HCM</li>\r\n	<li>Hội chữ thập đỏ TP HCM</li>\r\n</ul>\r\n\r\n<div>Trong nền <strong>kinh tế chia sẻ</strong>, việc đồng h&agrave;nh sẽ mang lại nhiều lợi &iacute;ch cho cả VKHS v&agrave; c&aacute;c đối t&aacute;c đồng h&agrave;nh. VKHS sẽ phối hợp v&agrave; hỗ trợ c&aacute;c đối t&aacute;c đồng h&agrave;nh n&acirc;ng cao năng lực ứng dụng c&aacute;c c&ocirc;ng nghệ th&ocirc;ng tin hiện đại đ&aacute;p ứng tốt hơn y&ecirc;u cầu kết nối với người d&acirc;n v&agrave; quản l&yacute; c&aacute;c hoạt động của doanh nghiệp.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Để hệ thống dự ph&ograve;ng, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n ng&agrave;y c&agrave;ng được mở rộng, VKHS mong muốn c&aacute;c cơ sở y tế, c&aacute;c tổ chức x&atilde; hội, c&aacute;c doanh nghiệp trong v&agrave; ngo&agrave;i nước c&ugrave;ng đồng h&agrave;nh với VKHS:</div>\r\n\r\n<ul>\r\n	<li>C&aacute;c cơ sở kh&aacute;m chữa bệnh c&ocirc;ng, tư tr&ecirc;n cả nước đồng h&agrave;nh cung ứng c&aacute;c dịch vụ kh&aacute;m chữa bệnh, chăm s&oacute;c bệnh tật cho người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh&hellip; ở tại nh&agrave;, tại tuyến y tế cơ sở v&agrave; tại c&aacute;c BV đa khoa, chuy&ecirc;n khoa.</li>\r\n	<li>Trung t&acirc;m cấp cứu của c&aacute;c tỉnh th&agrave;nh tr&ecirc;n cả nước sử dụng<strong> giải ph&aacute;p điều h&agrave;nh tự động mạng lưới cấp cứu</strong>, tạo n&ecirc;n một hệ thống cấp cứu li&ecirc;n th&ocirc;ng tr&ecirc;n cả nước, sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu cấp cứu của người d&acirc;n ở bất cứ đ&acirc;u, kể cả trong t&igrave;nh huống phải cấp cứu h&agrave;ng loạt người.</li>\r\n	<li>C&aacute;c Labo x&eacute;t nghiệm y khoa cung cấp dịch vụ lấy mẫu bệnh phẩm tại nh&agrave;</li>\r\n	<li>C&aacute;c c&ocirc;ng ty ph&acirc;n phối dược phẩm, mỹ phẩm, thực phẩm chức năng cung cấp sản phẩm của m&igrave;nh tại nh&agrave;.</li>\r\n	<li>C&aacute;c c&ocirc;ng ty trang thiết bị cung cấp thiết bị y tế gia dụng tại nh&agrave;.</li>\r\n	<li>C&aacute;c c&ocirc;ng ty vận chuyển bằng xe cấp cứu, xe &ocirc; t&ocirc;, xe m&ocirc; t&ocirc; phục vụ vận chuyển theo y&ecirc;u cầu của bệnh nh&acirc;n, người nh&agrave; bệnh nh&acirc;n, c&aacute;n bộ y tế</li>\r\n</ul>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#0000FF\"><strong>&quot;H&atilde;y c&ugrave;ng đồng h&agrave;nh v&agrave; tham gia c&ugrave;ng VKHS bằng c&aacute;ch tham gia đăng k&yacute; th&agrave;nh vi&ecirc;n, nh&agrave; cung cấp, bệnh viện hoặc b&aacute;c sĩ gia đ&igrave;nh, để c&ugrave;ng chung tay x&acirc;y dựng n&ecirc;n một nền tảng y tế th&ocirc;ng minh linh hoạt, đưa đến cho người d&acirc;n Việt Nam một giải ph&aacute;p y tế ngoại viện đầy đủ v&agrave; tốt nhất&hellip;.&quot;</strong></span></span></p>\r\n', '/public/img/images', 1, 0),
(79, 1, 'Tư vấn sức khỏe từ xa', 'tu-van-suc-khoe-tu-xa', '', '', '', '', '', '/public/img/images', 1, 0),
(80, 1, 'Cấp cứu tại chỗ', 'cap-cuu-tai-cho', '', '', '', '', '', '/public/img/images', 1, 0),
(81, 1, 'Khám bệnh tại nhà', 'kham-benh-tai-nha', '', '', '', '', '', '/public/img/images', 1, 0),
(82, 1, 'Đăng ký khám bệnh', 'dang-ky-kham-benh', '', '', '', '', '', '/public/img/images', 1, 0),
(84, 1, 'Hướng dẫn', 'huong-dan', '', '', '', '', '', '/public/img/images', 1, 1),
(83, 1, 'Dịch Vụ', 'dich-vu', '', '', '', '', '', '/public/img/images', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vksos_quantri`
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
-- Dumping data for table `vksos_quantri`
--

INSERT INTO `vksos_quantri` (`username`, `password`, `random`, `HoTen`, `email`, `SDT`, `DiaChi`, `GhiChu`, `Nhom`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '', 1),
('bvrhm', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vksos_sanpham`
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
-- Table structure for table `vksos_tiepnhan`
--

CREATE TABLE `vksos_tiepnhan` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Sex` tinyint(1) NOT NULL,
  `Birthday` date NOT NULL,
  `Job` varchar(100) NOT NULL,
  `Service` int(11) NOT NULL,
  `Address` text NOT NULL,
  `Note` text NOT NULL,
  `Status` int(11) NOT NULL,
  `IdBV` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vksos_tiepnhan`
--

INSERT INTO `vksos_tiepnhan` (`Id`, `FullName`, `Phone`, `Email`, `Sex`, `Birthday`, `Job`, `Service`, `Address`, `Note`, `Status`, `IdBV`, `createdate`) VALUES
(1, 'nguyen nguyen 1', '0122', 'Emial', 2, '2018-01-16', '', 3, 'a', 'asdas2', 0, 4, '2018-01-16 00:00:00'),
(2, '', '', '', 0, '2018-01-16', '', 0, '', '', 1, 3, '2018-01-16 00:00:00'),
(3, '', '', '', 0, '2018-01-16', '', 0, '', '', -1, 3, '2018-01-16 00:00:00'),
(4, '', '', '', 0, '0000-00-00', '', 0, '', '', 0, 0, '2018-01-16 00:00:00'),
(5, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '2018-01-16 00:00:00'),
(6, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '2018-01-16 00:00:00'),
(7, '', '', 'namdong92@gmail.com', 0, '0000-00-00', '', 0, '', '', 0, 0, '2018-01-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vksos_tin`
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
-- Dumping data for table `vksos_tin`
--

INSERT INTO `vksos_tin` (`IdTin`, `title`, `keyword`, `description`, `MaDanhMuc`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('201712081512734588', '', '', '', 73, 'Lễ ký kết hợp tác toàn diện giữa Vạn Khang SOS với Bệnh viện Chợ rẫy', 'le-ky-ket-hop-tac-toan-dien-giua-van-khang-sos-voi-benh-vien-cho-ray201712081512734588', '<p>Với mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n', '<h3><span style=\"font-size:22px\"><strong>LỄ K&Yacute; KẾT HỢP T&Aacute;C TO&Agrave;N DIỆN BỆNH VIỆN CHỢ RẪY - VẠN KHANG SOS</strong></span></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bệnh tật, tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai. Được cấp cứu, chữa trị kịp thời l&agrave; mong ước của mọi người. Đất nước ta đang ng&agrave;y c&agrave;ng ph&aacute;t triển, đời sống người d&acirc;n ng&agrave;y c&agrave;ng được n&acirc;ng cao n&ecirc;n nhu cầu chăm s&oacute;c, bảo vệ sức khỏe, chữa trị bệnh tật cũng ng&agrave;y c&agrave;ng cao.</p>\r\n\r\n<p>Hiện nay, khi mắc bệnh, tai nạn người d&acirc;n thường tự đến bệnh viện, ph&ograve;ng kh&aacute;m để được chữa trị. Giải ph&aacute;p nội viện đ&atilde; v&agrave; đang đ&aacute;p ứng nhu cầu cực lớn của x&atilde; hội nhưng cũng đ&atilde; dẫn đến t&igrave;nh trạng qu&aacute; tải với những hệ luỵ ng&agrave;y c&agrave;ng nghi&ecirc;m trọng hơn.&nbsp;<br />\r\nĐể giảm tải, n&acirc;ng cao chất lượng kh&aacute;m chữa bệnh của c&aacute;c cơ sở y tế, đ&aacute;p ứng nhu cầu cấp cứu, kh&aacute;m chữa bệnh của người d&acirc;n, nhất l&agrave; người cao tuổi, người mắc c&aacute;c bệnh mạn t&iacute;nh, người gặp kh&oacute; khăn trong di chuyển&hellip; cần thiết phải c&oacute; th&ecirc;m một giải ph&aacute;p mới, giải ph&aacute;p bổ sung, đ&oacute; l&agrave; &ldquo;giải ph&aacute;p ngoại viện&rdquo;: người bệnh được cấp cứu tại chỗ, chữa bệnh tại nh&agrave;.<br />\r\nVới mong muốn đưa &ldquo;giải ph&aacute;p ngoại viện&rdquo; v&agrave;o cuộc sống, h&ocirc;m nay ng&agrave;y 16/12/2016 bệnh viện Chợ Rẫy v&agrave; Vạn Khang SOS ch&iacute;nh thức k&yacute; kết hợp t&aacute;c to&agrave;n diện cung cấp cho người d&acirc;n th&agrave;nh phố một hệ thống dịch vụ &ldquo;cấp cứu tại chỗ, chữa bệnh tại nh&agrave;&rdquo;.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng đ&atilde; đăng k&yacute;&nbsp;<strong>&ldquo;th&agrave;nh vi&ecirc;n VKSOS&rdquo;</strong>&nbsp;sẽ được đảm bảo sẵn s&agrave;ng phục vụ, với gi&aacute; ph&iacute; dịch vụ giảm 20% so với biểu gi&aacute; được c&ocirc;ng bố tr&ecirc;n trang web Vạn Khang SOS v&agrave; được hưởng c&aacute;c ưu đ&atilde;i như giảm ph&iacute; kh&aacute;m chữa bệnh tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m l&agrave; đối t&aacute;c của Vạn Khang SOS.&nbsp;</p>\r\n', 1, '2017-12-08 10:20:16', 'vkhs/kyket01.png', 1, 0, 1),
('201712081512737007', '', '', '', 73, ' Khánh thành Trung tâm cấp cứu Vạn Khang SOS', 'khanh-thanh-trung-tam-cap-cuu-van-khang-sos201712081512737007', '<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n', '<h3><span style=\"font-size:20px\"><strong>Khánh thành Trung t&acirc;m c&acirc;́p cứu Vạn Khang SOS</strong></span></h3>\r\n\r\n<p>Ng&agrave;y 26-2-2016, Trung t&acirc;m cấp cứu Vạn Khang SOS đ&atilde; tổ chức Lễ kh&aacute;nh th&agrave;nh v&agrave; đi v&agrave;o hoạt động. Trung t&acirc;m đặt tại số 113 Trần B&igrave;nh Trọng, phường 2, quận 5 M&ocirc; h&igrave;nh cung cấp dịch vụ cấp cứu của Vạn Khang SOS l&agrave; một m&ocirc; h&igrave;nh mới v&agrave; duy nhất hiện nay ở Việt Nam. Tr&ecirc;n cơ sở bố tr&iacute; một mạng lưới cấp cứu đều khắp, ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin tự động v&agrave; sử dụng phương tiện vận chuyển cấp cứu th&iacute;ch hợp tại một th&agrave;nh phố đ&ocirc;ng d&acirc;n, thường bị tắc đường, nh&agrave; người d&acirc;n ở trong hẻm s&acirc;u, dịch vụ cấp cứu của Vạn Khang SOS đảm bảo mục ti&ecirc;u: Tận dụng thời gian v&agrave;ng &ndash; An to&agrave;n cho sức khoẻ.</p>\r\n\r\n<p><br />\r\nKhi c&oacute; nhu cầu về cấp cứu, người d&acirc;n bấm n&uacute;t SOS để được kết nối trực tiếp đến tổng đ&agrave;i của trung t&acirc;m. Tổng đ&agrave;i sẽ thu thập một số th&ocirc;ng tin về t&igrave;nh trạng người bệnh v&agrave; tiến h&agrave;nh điều động phương tiện ph&ugrave; hợp nhất để tiếp cận người bệnh trong thời gian sớm nhất. B&aacute;c sĩ tiếp nhận nhiệm vụ sẽ li&ecirc;n hệ với người bệnh để hướng dẫn xử tr&iacute; ngay trong thời gian b&aacute;c sĩ di chuyển đến hiện trường. Đội cấp cứu khi tới hiện trường sẽ thực hiện sơ cấp cứu, sau đ&oacute; t&ugrave;y v&agrave;o t&igrave;nh trạng của người bệnh, b&aacute;c sĩ sẽ điều trị tại chỗ hoặc hỗ trợ vận chuyển người bệnh đến bệnh viện gần nhất, c&oacute; chuy&ecirc;n khoa ph&ugrave; hợp với t&igrave;nh trạng bệnh l&yacute; để tiếp tục điều trị.&nbsp;<br />\r\n<br />\r\nHội Y tế c&ocirc;ng cộng TPHCM.</p>\r\n', 1, '2017-12-08 10:17:25', 'vkhs/vk1.jpg', 1, 0, 1),
('201712141513221522', '', '', '', 83, 'Đăng Ký Khám Bệnh', 'dang-ky-kham-benh201712141513221522', '<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với<br />\r\nnguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!<br />\r\nTất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng<br />\r\ndịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n', '<p><strong>ĐĂNG K&Yacute; KH&Aacute;M BỆNH HẸN GIỜ V&Agrave; THANH TO&Aacute;N</strong></p>\r\n\r\n<p>Bạn phải chờ đợi suốt 3 &ndash; 4h&nbsp;khi đi kh&aacute;m bệnh để chỉ được kh&aacute;m, x&eacute;t nghiệm, chụp phim&hellip; kh&ocirc;ng đến 30 ph&uacute;t!</p>\r\n\r\n<p>Bạn phải chờ đợi nhiều giờ trong bầu kh&ocirc;ng kh&iacute; bệnh viện nghẹt người v&igrave; qu&aacute; tải, với nguy cơ bị l&acirc;y nhiễm bệnh từ người kh&aacute;c!</p>\r\n\r\n<p>Tất cả những nổi khỗ m&agrave; bạn đang phải chịu đựng sẽ kh&ocirc;ng c&ograve;n nữa khi bạn sử dụng dịch vụ <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> của VKHS.</p>\r\n\r\n<p>Bạn chỉ cần nhấn v&agrave;o biễu tượng <strong>&ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo;</strong> tr&ecirc;n Ứng dụng hoặc tr&ecirc;n web VKHS rồi chọn lựa c&aacute;c th&ocirc;ng tin theo y&ecirc;u cầu kh&aacute;m bệnh của bạn:</p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;m bệnh cho ch&iacute;nh bạn hay người kh&aacute;c</li>\r\n	<li>Kh&aacute;m ở BV/ PK n&agrave;o</li>\r\n	<li>C&oacute; sử dụng BHYT hay kh&ocirc;ng</li>\r\n	<li>Kh&aacute;m th&ocirc;ng thường hay kh&aacute;m dịch vụ hay chọn lựa chuy&ecirc;n gia v&agrave; ng&agrave;y giờ kh&aacute;m</li>\r\n	<li>Kh&aacute;m lần đầu hay t&aacute;i kh&aacute;m</li>\r\n	<li>Chuy&ecirc;n khoa kh&aacute;m: c&oacute; thể l&agrave; Ph&ograve;ng kh&aacute;m Nội tổng hợp hoặc c&aacute;c ph&ograve;ng kh&aacute;m chuy&ecirc;n khoa hoặc c&aacute;c dịch vụ kỹ thuật như x&eacute;t nghiệm, chụp Xquang, CT&hellip; hay Si&ecirc;u &acirc;m, Nội soi&hellip;</li>\r\n</ul>\r\n\r\n<p>Hệ thống sẽ gởi đến thiết bị của bạn <strong>&ldquo;Lịch hẹn kh&aacute;m bệnh&rdquo; với đủ th&ocirc;ng tin cần thiết: Số thứ tự, giờ hẹn kh&aacute;m bệnh, ph&ograve;ng kh&aacute;m bệnh&hellip;&nbsp;</strong></p>\r\n\r\n<p>Bạn c&oacute; thể thanh to&aacute;n trước cho bệnh viện: Nhấn v&agrave;o n&uacute;t thanh to&aacute;n tr&ecirc;n web/Ứng dụng VKHS.&nbsp;</p>\r\n\r\n<p><strong>Trường hợp bạn đ&atilde; đến BV/PK</strong>, nh&acirc;n vi&ecirc;n BV/PK sẽ hướng dẫn bạn thực hiện &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; tr&ecirc;n &ldquo;m&agrave;n h&igrave;nh cảm ứng&rdquo; giống như tr&ecirc;n web/Ứng dụng VKHS, đồng thời sẽ gi&uacute;p bạn tải Ứng dụng VKHS v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin - VKHS.</p>\r\n\r\n<p>Người đ&atilde; tải Ứng dụng v&agrave; lập Thẻ ng&acirc;n h&agrave;ng Vietin &ndash; VKHS được hưởng rất nhiều quyền lợi&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><a class=\"btn btn-success\" href=\"#/datlichkhambenh\" style=\"color:#fff;background-color: #2099a1;border:#2099a1;\">Đăng K&yacute; Kh&aacute;m Chữa Bệnh</a></p>\r\n', 1, '2017-12-20 09:54:23', '', 1, 0, 1),
('201712141513222244', '', '', '', 83, 'Tư Vấn Sức Khỏe Từ Xa', 'tu-van-suc-khoe-tu-xa201712141513222244', '<p>Telehealth l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng</p>\r\n', '<p><strong>Telehealth</strong> l&agrave; hệ thống tư vấn chăm s&oacute;c sức khỏe từ xa cho bạn v&agrave; gia đ&igrave;nh bạn.</p>\r\n\r\n<p>Trong tất cả c&aacute;c t&igrave;nh huống y tế tại nh&agrave; kh&ocirc;ng khẩn cấp bạn v&agrave; gia đ&igrave;nh bạn sẽ được ch&iacute;nh c&aacute;c B&aacute;c sĩ chuy&ecirc;n khoa h&agrave;ng đầu đưa ra lời khuy&ecirc;n, lời hướng dẫn y tế th&ocirc;ng qua hệ thống Hội nghị truyền h&igrave;nh Y khoa chuy&ecirc;n dụng.<span style=\"color:#0000FF\"> </span><a href=\"#/tcs\"><span style=\"color:#0000FF\">(<em>Nhấn v&agrave;o đ&acirc;y để tải ứng dụng miễn ph&iacute;</em>)</span></a></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk1.jpg\" style=\"height:248px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh trong thời gian thực, qua đ&oacute;&nbsp; BS đ&aacute;nh gi&aacute; được tổng trạng của t&igrave;nh huống y tế hiện tại, BS c&oacute; thể c&oacute; được chẩn đo&aacute;n ban đầu gi&uacute;p việc tư vấn v&agrave; hướng dẫn cho bạn xử l&yacute; t&igrave;nh huống ch&iacute;nh x&aacute;c hơn. Thậm ch&iacute; nếu cần thiết phải đến bệnh viện th&igrave; BS cũng sẽ hướng dẫn ch&iacute;nh x&aacute;c cho bạn cần phải kh&aacute;m ở chuy&ecirc;n khoa n&agrave;o để tr&aacute;nh mất thời gian của bạn. <a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(<em>Xem th&ecirc;m đăng k&yacute; kh&aacute;m bệnh</em>)</span></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk2.png\" style=\"height:342px; width:440px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Telehealth ngo&agrave;i sự tương t&aacute;c 2 b&ecirc;n bằng h&igrave;nh ảnh v&agrave; &acirc;m thanh, hệ thống c&ograve;n cho ph&eacute;p BS xem lại c&aacute;c hồ sơ y tế của bạn. Khi bạn đ&atilde; c&oacute; hồ sơ kh&aacute;m chữa bệnh lưu trữ tr&ecirc;n cloud VKHS&nbsp;th&igrave; việc tham khảo c&aacute;c dữ liệu y tế sẵn c&oacute; như kết quả chẩn đo&aacute;n những lần kh&aacute;m bệnh trước đ&oacute;, kết quả x&eacute;t nghiệm, chụp phim, si&ecirc;u &acirc;m vv&hellip; gi&uacute;p BS c&oacute; được chẩn đo&aacute;n ban đầu ch&iacute;nh x&aacute;c hơn để việc tư vấn, hướng dẫn đạt hiệu quả hơn.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk3.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong phi&ecirc;n kết nối tư vấn chăm s&oacute;c sức khỏe từ xa BS nhận thấy rằng cần c&oacute; th&ecirc;m &yacute; kiến của Chuy&ecirc;n gia về chuy&ecirc;n khoa. BS sẽ mời Chuy&ecirc;n gia c&ugrave;ng tham gia trao đổi kiểm tra v&agrave; đ&aacute;nh gi&aacute; to&agrave;n diện theo chuy&ecirc;n khoa từ đ&oacute; c&ugrave;ng tư vấn v&agrave; giải đ&aacute;p mọi thắc mắc theo y&ecirc;u cầu của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/tvsk4.png\" style=\"height:237px; width:440px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#0000FF\"><strong>&quot;Telehealth -&nbsp;B&aacute;c Sĩ Trong Gia Đ&igrave;nh Bạn&quot;</strong></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513741700/huong-dan-su-dung-telehealth-tren-may-tinh.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n m&aacute;y t&iacute;nh</em></a></u></li>\r\n	<li><u><a href=\"http://vkhs.vn/index_bak.html#/news/201712201513742765/huong-dan-su-dung-telehealth-tren-smartphone.html\"><em>Hướng dẫn sử dụng phần mềm Telehealth tr&ecirc;n Smartphone</em></a></u></li>\r\n</ul>\r\n', 1, '2017-12-20 01:18:49', '', 1, 0, 1),
('201712141513222560', '', '', '', 83, 'Cấp Cứu Tại Chỗ', 'cap-cuu-tai-cho201712141513222560', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n', '<p>Bệnh tật v&agrave; tai nạn l&agrave; rủi ro kh&ocirc;ng của ri&ecirc;ng ai n&ecirc;n được cấp cứu, chữa trị kịp thời l&agrave; nhu cầu bức thiết của mọi người.</p>\r\n\r\n<p>Hiện nay, khi xảy ra sự cố cần cấp cứu, người d&acirc;n c&ograve;n gặp nhiều kh&oacute; khăn để c&oacute; thể tiếp nhận được dịch vụ cấp cứu chuy&ecirc;n nghiệp n&ecirc;n thường phải tự xử l&yacute; v&agrave; tự vận chuyển người bệnh đến bệnh viện, thường kh&ocirc;ng đ&uacute;ng kỹ thuật chuy&ecirc;n m&ocirc;n y tế dẫn đến nhiều hậu quả đ&aacute;ng tiếc.</p>\r\n\r\n<p><strong>Phản ứng nhanh &ndash; Tận dụng thời gian v&agrave;ng trong cấp cứu &ndash; Thực hiện cấp cứu hiệu quả</strong> lu&ocirc;n l&agrave; mong muốn của mọi người.</p>\r\n\r\n<p>Thấu cảm nỗi lo v&agrave; mong ước ấy, Trung t&acirc;m cấp cứu Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) triển khai cung ứng dịch vụ cấp cứu tại chỗ cho người d&acirc;n TP.HCM theo một m&ocirc; h&igrave;nh mới:</p>\r\n\r\n<ul>\r\n	<li><strong>Kh&ocirc;ng cần số điện thoại gọi cấp cứu</strong>, khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t</strong><strong> SOS</strong> sẽ được đ&aacute;p ứng ngay. B&aacute;c sĩ gần nhất sẽ được điều động, phương tiện ph&ugrave; hợp nhất sẽ được sử dụng để tiếp cận bệnh nh&acirc;n trong thời gian sớm nhất c&oacute; thể.</li>\r\n	<li><strong>Kh&ocirc;ng chỉ c&oacute; &ocirc; t&ocirc; cấp cứu</strong>, Vạn Khang SOS c&ograve;n sẵn s&agrave;ng <strong>m&ocirc; t&ocirc; cấp cứu </strong>để c&oacute; thể tiếp cận nhanh nhất với người bệnh, nhất l&agrave; trong t&igrave;nh trạng tắt đường hoặc nh&agrave; trong hẻm s&acirc;u. Xe m&ocirc; t&ocirc; được trang bị đầy đủ thiết bị cấp cứu như tr&ecirc;n xe &ocirc; t&ocirc;, kể cả m&aacute;y điện tim, shock tim&hellip; để thực hiện cấp cứu tại chỗ hiệu quả. Xe m&ocirc; t&ocirc; kh&ocirc;ng vận chuyển bệnh nh&acirc;n.</li>\r\n	<li><strong>Li&ecirc;n kết c&aacute;c bệnh viện để thiết lập mạng lưới cấp cứu chuy&ecirc;n nghiệp </strong>được ph&acirc;n bố đều khắp tr&ecirc;n địa b&agrave;n th&agrave;nh phố nhằm đ&aacute;p ứng nhanh nhất y&ecirc;u cầu cấp cứu của người d&acirc;n <a href=\"http://vankhangsos.vn/hoptacchuyenmon.html\"><span style=\"color:#0000FF\"><em>(Xem th&ecirc;m...)</em></span></a></li>\r\n	<li><strong>Ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến để quản l&yacute;, vận h&agrave;nh hệ thống tự động </strong>gi&uacute;p tiếp cận nhanh ch&oacute;ng, cấp cứu hiệu quả cho người bệnh.</li>\r\n</ul>\r\n\r\n<p>Để sử dụng dịch vụ cấp cứu tại chỗ:</p>\r\n\r\n<ul>\r\n	<li>H&atilde;y <strong>tải miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> sẵn s&agrave;ng</li>\r\n</ul>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu cấp cứu, <strong>chỉ cần bấm n&uacute;t &ldquo;SOS&rdquo;</strong> tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động sẽ định vị người bệnh v&agrave; điều động xe cấp cứu gần nhất đang trong t&igrave;nh trạng sẵn s&agrave;ng để thực hiện nhiệm vụ.</p>\r\n\r\n<ul>\r\n	<li>Trường hợp chưa c&oacute; <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong>, Bạn c&oacute; thể li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ cấp cứu tại chỗ.</li>\r\n</ul>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Cấp cứu tại chỗ: &nbsp;<em>An to&agrave;n của Bạn l&agrave; mong ước của Vạn Khang SOS.</em></strong></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ltEI7-o51Fo\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2017-12-20 03:29:40', '', 1, 0, 1),
('201712141513222646', '', '', '', 83, 'Chữa Bệnh Tại Nhà', 'chua-benh-tai-nha201712141513222646', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n', '<p>Kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe l&agrave; nhu cầu tất yếu v&agrave; đang ng&agrave;y c&agrave;ng gia tăng dẫn đến sự qu&aacute; tải tại c&aacute;c bệnh viện, ph&ograve;ng kh&aacute;m v&agrave; theo đ&oacute; người bệnh phải chịu đựng sự mệt mỏi v&igrave; chen ch&uacute;c, đợi chờ v&agrave; phải g&aacute;nh chịu những nguy cơ bị l&acirc;y nhiễm bệnh kh&aacute;c.</p>\r\n\r\n<p>Thực trạng tr&ecirc;n đ&atilde; tạo ra nhu cầu được kh&aacute;m chữa bệnh, chăm s&oacute;c sức khỏe tại nh&agrave; khi chưa thật sự cần thiết phải v&agrave;o bệnh viện, nhất l&agrave; đối với những người bệnh gặp kh&oacute; khăn trong việc di chuyển, người gi&agrave; yếu mắc bệnh mạn t&iacute;nh&hellip;</p>\r\n\r\n<p>G&oacute;p phần đ&aacute;p ứng mong muốn thiết thực của người bệnh, Ph&ograve;ng kh&aacute;m B&aacute;c sĩ gia đ&igrave;nh Vạn Khang SOS (đơn vị trực thuộc C&ocirc;ng ty Giải ph&aacute;p sức khỏe Vạn Khang) trong sự li&ecirc;n kết hợp t&aacute;c c&ugrave;ng c&aacute;c đối t&aacute;c triển khai cung ứng dịch vụ chăm s&oacute;c sức khỏe to&agrave;n diện tại nh&agrave; tr&ecirc;n địa b&agrave;n TP.HCM, cụ thể như:</p>\r\n\r\n<ul>\r\n	<li>B&aacute;c sĩ đến kh&aacute;m bệnh, k&ecirc; đơn điều trị, tư vấn điều trị v&agrave; chăm s&oacute;c sức khỏe.</li>\r\n	<li>Điều dưỡng đến chăm s&oacute;c người bệnh: ti&ecirc;m ch&iacute;ch, thay băng, chăm s&oacute;c vết thương&hellip;</li>\r\n	<li>Kỹ thuật vi&ecirc;n đến tập vật l&yacute; trị liệu v&agrave; hướng dẫn người bệnh tập vật l&yacute; trị liệu.</li>\r\n	<li>B&aacute;c sĩ, Lương y đến kh&aacute;m bệnh, tư vấn điều trị v&agrave; thực hiện chữa bệnh tại nh&agrave; theo Y học cổ truyền.</li>\r\n	<li>B&aacute;c sĩ, Điều dưỡng, Kỹ thuật vi&ecirc;n đến thực hiện chăm s&oacute;c giảm nhẹ (chống đau, giảm kh&oacute; thở&hellip;) cho bệnh nh&acirc;n ung thư giai đoạn cuối, bệnh nh&acirc;n nặng&hellip;</li>\r\n	<li>Cung cấp thuốc điều trị, lấy mẫu bệnh phẩm để x&eacute;t nghiệm tại nh&agrave; theo chỉ định của B&aacute;c sĩ.</li>\r\n	<li>C&aacute;c dịch vụ kh&aacute;c theo y&ecirc;u cầu.</li>\r\n</ul>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Vạn Khang SOS c&ograve;n cung cấp dịch vụ vận chuyển bệnh nh&acirc;n khi c&oacute; nhu cầu:</p>\r\n\r\n<ul>\r\n	<li>Vận chuyển bệnh nh&acirc;n đến bệnh viện, ph&ograve;ng kh&aacute;m để kh&aacute;m chữa bệnh, được li&ecirc;n hệ trước để giảm chờ đợi.</li>\r\n	<li>Chuyển viện hoặc đưa bệnh nh&acirc;n từ bệnh viện, ph&ograve;ng kh&aacute;m về nh&agrave;.</li>\r\n</ul>\r\n\r\n<p>Vạn Khang SOS ứng dụng c&ocirc;ng nghệ cao, tự động tạo sự tiện dụng cho kh&aacute;ch h&agrave;ng, cho c&aacute;n bộ y tế lu&ocirc;n sẵn s&agrave;ng đ&aacute;p ứng y&ecirc;u cầu chăm s&oacute;c, kh&aacute;m chữa bệnh tại nh&agrave;.</p>\r\n\r\n<p>Để sử dụng dịch vụ chữa bệnh tại nh&agrave;, Bạn c&oacute; thể:</p>\r\n\r\n<p>-Tải<strong> miễn ph&iacute;</strong> <strong>&ldquo;Ứng dụng VKHS&rdquo;</strong> <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a></p>\r\n\r\n<p>Khi c&oacute; y&ecirc;u cầu dịch vụ, chỉ cần bấm v&agrave;o biểu tượng của dịch vụ y&ecirc;u cầu tr&ecirc;n &ldquo;Ứng dụng VKHS&rdquo;, tổng đ&agrave;i tự động chuyển th&ocirc;ng tin đến c&aacute;n bộ y tế (BS, Điều dưỡng, Kỹ thuật vi&ecirc;n) gần nh&agrave; bệnh nh&acirc;n nhất để thống nhất lịch hẹn thực hiện nhiệm vụ.</p>\r\n\r\n<p>-Trường hợp chưa c&oacute; &ldquo;Ứng dụng VKHS&rdquo;, Bạn c&oacute; thể:</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Y&ecirc;u cầu dịch vụ từ trang web <a href=\"javascript:void(0)\"><span style=\"color:#0000FF\">www.vkhs.vn</span></a> hoặc</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;+ Li&ecirc;n hệ với Trung t&acirc;m diều h&agrave;nh Vạn Khang SOS qua số <strong>1900 63 66 71</strong>&nbsp;để được phục vụ.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:18px\"><span style=\"color:#0000FF\"><strong>Chữa bệnh tại nh&agrave;: &nbsp;<em>Vạn Khang SOS &ndash; Chăm s&oacute;c như người th&acirc;n.</em></strong></span></span></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-2\">&nbsp;</div>\r\n\r\n<div class=\"video-container col-md-8\" style=\"position:relative;\r\n	padding-bottom:56.25%;\r\n	padding-top:30px;\r\n	height:0;\r\n	overflow:hidden;\"><iframe src=\"https://www.youtube.com/embed/ioCy9w3LRdc\" style=\"position:absolute;\r\n	top:0;\r\n	left:0;\r\n	width:100%;\r\n	height:100%;\"></iframe></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', 1, '2017-12-20 03:29:56', '', 1, 0, 1),
('201712201513741700', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên máy tính', 'huong-dan-su-dung-telehealth-tren-may-tinh201712201513741700', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n m&aacute;y t&iacute;nh c&agrave;i hệ điều h&agrave;nh: Windows - MAC - Linux</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong></div>\r\n\r\n<div>Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/1.png\" style=\"height:391px; width:600px\" /></div>\r\n\r\n<div><strong>2./ C&agrave;i đặt</strong></div>\r\n\r\n<div>Double click v&agrave;o file <strong>trueconf_client.exe </strong>bạn mới tải về để tiến h&agrave;nh c&agrave;i đặt.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/2.png\" style=\"height:164px; width:313px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chọn Tiếng Việt bấm OK</em></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/3.png\" style=\"height:427px; width:513px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chấp nhận thỏa thuận &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/4.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/5.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Để mặc định &ndash; bấm Đi _tiếp</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/6.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Chương tr&igrave;nh đang c&agrave;i đặt, Vui long chờ</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/7.png\" style=\"height:427px; width:513px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Đ&atilde; ho&agrave;n th&agrave;nh bấm n&uacute;t ho&agrave;n tất</em></div>\r\n\r\n<div style=\"text-align: center;\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/8.png\" style=\"height:366px; width:450px\" /></em></div>\r\n\r\n<div style=\"text-align: center;\"><em>Giao diện HNTH mới c&agrave;i đặt chưa cấu h&igrave;nh.</em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>3./ Cấu h&igrave;nh mạng kết nối với server.</strong></div>\r\n\r\n<div>Bạn phải thực hiện điều n&agrave;y v&agrave; chỉ một lần duy nhất, c&aacute;c th&ocirc;ng số sẽ được lưu trữ.</div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bấm chọn C&agrave;i đặt - Mạng</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/9.png\" style=\"height:366px; width:450px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Bỏ dấu chọn: Mặc định m&aacute;y chủ kết nối &amp;&nbsp;bấm v&agrave;o n&uacute;t N&acirc;ng cao</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/public/img/images/10.png\" style=\"height:472px; width:400px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><strong>Nhập th&ocirc;ng số Host: 210.211.108.66&nbsp; Port: 4307, Nhấn OK</strong></div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/11.png\" style=\"height:389px; width:318px\" /></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>4./ Đăng k&yacute; ID mật khẩu đăng nhập</strong></div>\r\n\r\n<div>Quay trở lại, Truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\">http://vkhs.vn/index_bak.html#/tcs</a> nhấn n&uacute;t<strong> &quot;Đăng k&yacute; nhận Trueconf ID&quot;.</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/12.png\" style=\"height:397px; width:600px\" /></strong></div>\r\n\r\n<div>Sau khi nhập c&aacute;c th&ocirc;ng tin cần thiết cho BS c&oacute; dữ liệu sức khỏe của bạn, Bạn sẽ nhận được ID gửi qua email.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/13.png\" style=\"height:439px; width:350px\" /></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong>&quot;Khi đ&atilde; c&oacute;, Bạn nhập v&agrave;o ID v&agrave; mật khẩu, Nhấn n&uacute;t OK để bắt đầu một phi&ecirc;n HNTH.&quot;</strong></em></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div><strong>5./ Y&ecirc;u cầu một phi&ecirc;n tư vấn hỗ trợ sức khỏe</strong></div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch b&ecirc;n tay phải, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u xanh l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/14.png\" style=\"height:400px; width:350px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em></div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ&nbsp; c&oacute; <span style=\"color:#FF0000\"><strong>icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.</div>\r\n\r\n<div>- Trạng thái B&aacute;c sĩ c&oacute; <span style=\"color:#FFFF00\"><strong>icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.</div>\r\n', 1, '2017-12-20 11:39:20', '', 1, 0, 1),
('201712201513742765', '', '', '', 84, 'Hướng dẫn sử dụng Telehealth trên Smartphone', 'huong-dan-su-dung-telehealth-tren-smartphone201712201513742765', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong><br />\r\nBằng thiết bị cầm tay truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s1.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><br />\r\n<strong>2./ C&agrave;i đặt</strong><br />\r\nNhấn <strong>Cloud </strong>để tải</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s2.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Sau khi tải xong Nhấn <strong>Open </strong>để mở</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s3.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Đầu ti&ecirc;n bạn phải điều hướng tới server của Telehealth, nhấn&nbsp;<strong>Another server</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s4.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Nhập địa chỉ IP của Telehealth tại <strong>Server address</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s5.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Th&ocirc;ng số Server Adddress: <em><strong>210.211.108.66:4307</strong></em></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s6.png\" style=\"height:420px; width:250px\" /></strong></em></div>\r\n\r\n<div>Nhập ID v&agrave; mật khẩu m&agrave; bạn đ&atilde; nhận được qua email nhấn Sign in <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\"><em>(Nhận ID tại đ&acirc;y)</em></span></a></div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"color:#0000FF\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s7.png\" style=\"height:420px; width:250px\" /></em></span></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u v&agrave;ng l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s8.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Chọn BS nhấn n&uacute;t gọi</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s9.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em><br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.<br />\r\n- Trạng thái B&aacute;c sĩ&nbsp; c&oacute;<span style=\"color:#FF0000\"><strong> icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.<br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#FFFF00\"><strong> icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.<br />\r\nKhi sử dụng thiết bị cầm tay để v&agrave;o phi&ecirc;n tư vấn bạn n&ecirc;n sử dụng <strong>Head phone</strong> để tr&aacute;nh tạp &acirc;m l&agrave;m ảnh hưởng đến sự tập trung của BS</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n', 1, '2017-12-20 11:28:20', '', 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rhmtp_danhmuc`
--
ALTER TABLE `rhmtp_danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`),
  ADD UNIQUE KEY `TenKhongDau` (`TenKhongDau`);

--
-- Indexes for table `rhmtp_hotro`
--
ALTER TABLE `rhmtp_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rhmtp_khachang`
--
ALTER TABLE `rhmtp_khachang`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rhmtp_lichsu`
--
ALTER TABLE `rhmtp_lichsu`
  ADD PRIMARY KEY (`DongLichSu`);

--
-- Indexes for table `rhmtp_menu`
--
ALTER TABLE `rhmtp_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rhmtp_option`
--
ALTER TABLE `rhmtp_option`
  ADD PRIMARY KEY (`MaOption`);

--
-- Indexes for table `rhmtp_pages`
--
ALTER TABLE `rhmtp_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Indexes for table `rhmtp_quantri`
--
ALTER TABLE `rhmtp_quantri`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `rhmtp_sanpham`
--
ALTER TABLE `rhmtp_sanpham`
  ADD PRIMARY KEY (`IdTin`);

--
-- Indexes for table `rhmtp_tiepnhan`
--
ALTER TABLE `rhmtp_tiepnhan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rhmtp_tin`
--
ALTER TABLE `rhmtp_tin`
  ADD PRIMARY KEY (`IdTin`);

--
-- Indexes for table `rhmtw_danhmuc`
--
ALTER TABLE `rhmtw_danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`),
  ADD UNIQUE KEY `TenKhongDau` (`TenKhongDau`);

--
-- Indexes for table `rhmtw_hotro`
--
ALTER TABLE `rhmtw_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rhmtw_khachang`
--
ALTER TABLE `rhmtw_khachang`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rhmtw_lichsu`
--
ALTER TABLE `rhmtw_lichsu`
  ADD PRIMARY KEY (`DongLichSu`);

--
-- Indexes for table `rhmtw_menu`
--
ALTER TABLE `rhmtw_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rhmtw_option`
--
ALTER TABLE `rhmtw_option`
  ADD PRIMARY KEY (`MaOption`);

--
-- Indexes for table `rhmtw_pages`
--
ALTER TABLE `rhmtw_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Indexes for table `rhmtw_quantri`
--
ALTER TABLE `rhmtw_quantri`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `rhmtw_sanpham`
--
ALTER TABLE `rhmtw_sanpham`
  ADD PRIMARY KEY (`IdTin`);

--
-- Indexes for table `rhmtw_tiepnhan`
--
ALTER TABLE `rhmtw_tiepnhan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rhmtw_tin`
--
ALTER TABLE `rhmtw_tin`
  ADD PRIMARY KEY (`IdTin`);

--
-- Indexes for table `vando_danhmuc`
--
ALTER TABLE `vando_danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`),
  ADD UNIQUE KEY `TenKhongDau` (`TenKhongDau`);

--
-- Indexes for table `vando_tin`
--
ALTER TABLE `vando_tin`
  ADD PRIMARY KEY (`IdTin`);

--
-- Indexes for table `vksos_danhmuc`
--
ALTER TABLE `vksos_danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`),
  ADD UNIQUE KEY `TenKhongDau` (`TenKhongDau`);

--
-- Indexes for table `vksos_hotro`
--
ALTER TABLE `vksos_hotro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vksos_khachang`
--
ALTER TABLE `vksos_khachang`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `vksos_lichsu`
--
ALTER TABLE `vksos_lichsu`
  ADD PRIMARY KEY (`DongLichSu`);

--
-- Indexes for table `vksos_menu`
--
ALTER TABLE `vksos_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vksos_option`
--
ALTER TABLE `vksos_option`
  ADD PRIMARY KEY (`MaOption`);

--
-- Indexes for table `vksos_pages`
--
ALTER TABLE `vksos_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Indexes for table `vksos_quantri`
--
ALTER TABLE `vksos_quantri`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `vksos_sanpham`
--
ALTER TABLE `vksos_sanpham`
  ADD PRIMARY KEY (`IdTin`);

--
-- Indexes for table `vksos_tiepnhan`
--
ALTER TABLE `vksos_tiepnhan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `vksos_tin`
--
ALTER TABLE `vksos_tin`
  ADD PRIMARY KEY (`IdTin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rhmtp_danhmuc`
--
ALTER TABLE `rhmtp_danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rhmtp_hotro`
--
ALTER TABLE `rhmtp_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `rhmtp_lichsu`
--
ALTER TABLE `rhmtp_lichsu`
  MODIFY `DongLichSu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rhmtp_menu`
--
ALTER TABLE `rhmtp_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rhmtp_pages`
--
ALTER TABLE `rhmtp_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `rhmtp_tiepnhan`
--
ALTER TABLE `rhmtp_tiepnhan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rhmtw_danhmuc`
--
ALTER TABLE `rhmtw_danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rhmtw_hotro`
--
ALTER TABLE `rhmtw_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `rhmtw_lichsu`
--
ALTER TABLE `rhmtw_lichsu`
  MODIFY `DongLichSu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rhmtw_menu`
--
ALTER TABLE `rhmtw_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rhmtw_pages`
--
ALTER TABLE `rhmtw_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `rhmtw_tiepnhan`
--
ALTER TABLE `rhmtw_tiepnhan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vando_danhmuc`
--
ALTER TABLE `vando_danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vksos_danhmuc`
--
ALTER TABLE `vksos_danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vksos_hotro`
--
ALTER TABLE `vksos_hotro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `vksos_lichsu`
--
ALTER TABLE `vksos_lichsu`
  MODIFY `DongLichSu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vksos_menu`
--
ALTER TABLE `vksos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `vksos_pages`
--
ALTER TABLE `vksos_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `vksos_tiepnhan`
--
ALTER TABLE `vksos_tiepnhan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
