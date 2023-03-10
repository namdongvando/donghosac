-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2018 at 03:35 PM
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
-- Database: `bakcocomvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakco_admin`
--

CREATE TABLE `bakco_admin` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Random` varchar(30) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` text NOT NULL,
  `Note` text NOT NULL,
  `Groups` int(11) NOT NULL,
  `Urrlimages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakco_admin`
--

INSERT INTO `bakco_admin` (`Username`, `Password`, `Random`, `Name`, `Email`, `Phone`, `Address`, `Note`, `Groups`, `Urrlimages`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'Nguyen van do', 'namdong92@gmail.com', '01672779917', 'Nam dong\r\n', '', 1, ''),
('bvrhm', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 1, ''),
('bvrhm1', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `bakco_adv`
--

CREATE TABLE `bakco_adv` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Attribute` text COLLATE utf8_unicode_ci NOT NULL,
  `DataAttribute` text COLLATE utf8_unicode_ci NOT NULL,
  `Group` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Urlimages` text COLLATE utf8_unicode_ci NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `isShow` int(11) NOT NULL,
  `createDate` date NOT NULL,
  `updateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakco_adv`
--

INSERT INTO `bakco_adv` (`ID`, `Name`, `Content`, `Attribute`, `DataAttribute`, `Group`, `Urlimages`, `Link`, `isShow`, `createDate`, `updateDate`) VALUES
(7, 'Quang C??o Danh M???c M???c ?????nh', '{\"Name\":\"Qu???ng C??o Slide Trang Ch???\"}', '{}', '[]', 'cat0', '', '', 0, '2018-05-18', '2018-05-18'),
(20, 'Qu???ng C??o Slide Trang Ch???', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-20.png', '#', 0, '2018-05-18', '2018-05-18'),
(33, 'Qu???ng C??o Slide Trang Ch???', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-33.jpeg', '#', 1, '2018-05-18', '2018-05-18'),
(35, 'Quang C??o Danh M???c M???c ?????nh aaa', '{\"Name\":\"Qu???ng C??o Slide Trang Ch???\"}', '{}', '[]', 'cat0', '/public/img/images/quangcao/cat0/cat0-35.jpeg', '', 1, '2018-05-18', '2018-05-18'),
(36, 'Quang C??o Danh M???c M???c ?????nh', '{\"Name\":\"Qu???ng C??o Slide Trang Ch???\"}', '{}', '[]', 'cat0', '/public/img/images/quangcao/cat0/cat0-36.jpeg', '#1', 1, '2018-05-18', '2018-05-18'),
(37, 'Qu???ng C??o Slide Trang Ch???', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-37.jpeg', '#', 1, '2018-05-18', '2018-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `bakco_categories`
--

CREATE TABLE `bakco_categories` (
  `catID` int(11) NOT NULL,
  `catName` varchar(200) NOT NULL,
  `Path` varchar(250) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `parentCatID` int(11) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `Public` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakco_categories`
--

INSERT INTO `bakco_categories` (`catID`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`) VALUES
(1, 'N??ng nghi???p', 'nong-nghiep', '/nong-nghiep', '', 0, 'thuysan2.jpg', 1),
(2, 'Th???y s???n', 'thuy-san', '/thuy-san', '', 0, 'thuysan2.jpg', 1),
(3, 'Giao th??ng v???n t???i', 'giao-thong-van-tai', '/giao-thong-van-tai', '', 0, 'gtvt1.jpg', 1),
(4, 'Nh?? ?????t', 'nha-dat', '/nha-dat', '', 0, 'nhadat1.jpg', 1),
(5, 'Vi???c l??m', 'viec-lam', '/viec-lam', '', 0, 'vieclam1.jpg', 1),
(6, 'Th???i trang', 'thoi-trang', '/thoi-trang', '', 0, 'thoitrang1.jpg', 1),
(7, '??i???n t???', 'dien-tu', '/dien-tu', '', 0, 'dientu1.jpg', 1),
(8, 'Xe c???', 'xe-co', '/xe-co', '', 0, 'xe1.jpg', 1),
(9, 'Kim kh?? -  ??i???n m??y', 'kim-khi-dien-may', '/kim-khi-dien-may', '', 0, 'kimkhidienmay1.jpg', 1),
(10, 'C?? kh??', 'co-khi', '/co-khi', '', 0, 'cokhi1.jpg', 1),
(11, 'C??ng ngh???', 'cong-nghe', '/cong-nghe', '', 0, 'congnghe1.jpg', 1),
(12, 'C??ng nghi???p', 'cong-nghiep', '/cong-nghiep', '', 0, 'congnghiep2.jpg', 1),
(13, 'X??y d???ng', 'xay-dung', '/xay-dung', '', 0, 'xaydung3.jpg', 1),
(14, 'D???ch v??? - Gi???i tr?? - Du l???ch', 'dich-vu-giai-tri-du-lich', '/dich-vu-giai-tri-du-lich', '', 0, 'dichvu3.jpg', 1),
(15, 'Th???c ph???m -  ??n u???ng', 'thuc-pham-an-uong', '/thuc-pham-an-uong', '', 0, 'thucpham2.jpg', 1),
(16, 'S???c ?????p -  S???c kh???e - Y t???', 'sac-dep-suc-khoe-y-te', '/sac-dep-suc-khoe-y-te', '', 0, 'yte2.jpg', 1),
(17, 'N???i ngo???i th???t', 'noi-ngoai-that', '/noi-ngoai-that', '', 0, 'noingoaithat3.jpg', 1),
(18, 'S??ch - V??n phong ph???m', 'sach-van-phong-pham', '/sach-van-phong-pham', '', 0, 'sach2.jpg', 1),
(19, 'Th??? thao', 'the-thao', '/the-thao', '', 0, 'thethao3.jpg', 1),
(20, 'S???n ph???m n??ng nghi???p', 'san-pham-nong-nghiep', '/nong-nghiep/san-pham-nong-nghiep', 'asdas', 1, '0', 1),
(21, 'Thi???t b??? n??ng nghi???p', 'thiet-bi-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep', '', 1, '0', 1),
(22, 'Ph??? ki???n n??ng nghi???p', 'phu-kien-nong-nghiep', '/nong-nghiep/phu-kien-nong-nghiep', '', 1, '0', 1),
(23, 'S???n ph???m th???y s???n', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', 1),
(24, 'Thi???t b??? th???y s???n', 'thiet-bi-thuy-san', '/thuy-san/thiet-bi-thuy-san', '', 2, '0', 1),
(25, 'Ph??? ki???n th???y s???n', 'phu-kien-thuy-san', '/thuy-san/phu-kien-thuy-san', '', 2, '0', 1),
(26, 'D???ch v??? v???n chuy???n', 'dich-vu-van-chuyen', '/giao-thong-van-tai/dich-vu-van-chuyen', '', 3, '0', 1),
(27, 'D???ch v??? cho thu??', 'dich-vu-cho-thue', '/giao-thong-van-tai/dich-vu-cho-thue', '', 3, '0', 1),
(28, 'Mua b??n nh??', 'mua-ban-nha', '/nha-dat/mua-ban-nha', '', 4, '0', 1),
(29, 'Mua b??n ?????t', 'mua-ban-dat', '/nha-dat/mua-ban-dat', '', 4, '0', 1),
(30, 'Cho thu??', 'cho-thue', '/nha-dat/cho-thue', '', 4, '0', 1),
(31, 'C???n thu??', 'can-thue', '/nha-dat/can-thue', '', 4, '0', 1),
(32, 'D???ch v??? nh?? ?????t', 'dich-vu-nha-dat', '/nha-dat/dich-vu-nha-dat', '', 4, '0', 1),
(33, 'Ng?????i t??m vi???c', 'nguoi-tim-viec', '/viec-lam/nguoi-tim-viec', '', 5, '0', 1),
(34, 'Vi???c t??m ng?????i', 'viec-tim-nguoi', '/viec-lam/viec-tim-nguoi', '', 5, '0', 1),
(35, 'Th???i trang nam', 'thoi-trang-nam', '/thoi-trang/thoi-trang-nam', '', 6, '0', 1),
(36, 'Th???i  trang n???', 'thoi-trang-nu', '/thoi-trang/thoi-trang-nu', '', 6, '0', 1),
(37, 'Th???i trang teen', 'thoi-trang-teen', '/thoi-trang/thoi-trang-teen', '', 6, '0', 1),
(38, 'Th???i trang tr??? em', 'thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em', '', 6, '0', 1),
(39, '?????ng ph???c - ????? ????i', 'dong-phuc-do-doi', '/thoi-trang/dong-phuc-do-doi', '', 6, '0', 1),
(40, '?????ng h???', 'dong-ho', '/thoi-trang/dong-ho', '', 6, '0', 1),
(41, 'Trang s???c', 'trang-suc', '/thoi-trang/trang-suc', '', 6, '0', 1),
(42, 'Gi??y d??p', 'giay-dep', '/thoi-trang/giay-dep', '', 6, '0', 1),
(43, 'Ph??? ki???n', 'phu-kien', '/thoi-trang/phu-kien', '', 6, '0', 1),
(44, '??i???n tho???i di ?????ng', 'dien-thoai-di-dong', '/dien-tu/dien-thoai-di-dong', '', 7, '0', 1),
(45, 'M??y t??nh b???ng', 'may-tinh-bang', '/dien-tu/may-tinh-bang', '', 7, '0', 1),
(46, 'M??y t??nh - Laptop', 'may-tinh-laptop', '/dien-tu/may-tinh-laptop', '', 7, '0', 1),
(47, 'M??y ???nh - M??y quay', 'may-anh-may-quay', '/dien-tu/may-anh-may-quay', '', 7, '0', 1),
(48, 'Tivi - Loa - Amply - M??y nghe nh???c', 'tivi-loa-amply-may-nghe-nhac', '/dien-tu/tivi-loa-amply-may-nghe-nhac', '', 7, '0', 1),
(49, 'Ph??? ki???n - Linh ki???n', 'phu-kien-linh-kien', '/dien-tu/phu-kien-linh-kien', '', 7, '0', 1),
(50, '?? T??', 'o-to', '/xe-co/o-to', '', 8, '0', 1),
(51, 'Xe m??y', 'xe-may', '/xe-co/xe-may', '', 8, '0', 1),
(52, 'Xe ?????p', 'xe-dap', '/xe-co/xe-dap', '', 8, '0', 1),
(53, '????? ch??i', 'do-choi', '/xe-co/do-choi', '', 8, '0', 1),
(54, 'C?? kh?? ?? t??', 'co-khi-o-to', '/xe-co/co-khi-o-to', '', 8, '0', 1),
(55, 'C?? kh?? xe m??y', 'co-khi-xe-may', '/xe-co/co-khi-xe-may', '', 8, '0', 1),
(56, 'Ph??? t??ng', 'phu-tung', '/xe-co/phu-tung', '', 8, '0', 1),
(57, 'S???n ph???m', 'san-pham', '/kim-khi-dien-may/san-pham', '', 9, '0', 1),
(58, 'Thi???t b???', 'thiet-bi', '/kim-khi-dien-may/thiet-bi', '', 9, '0', 1),
(59, 'Ph??? t??ng - Linh ki???n', 'phu-tung-linh-kien', '/kim-khi-dien-may/phu-tung-linh-kien', '', 9, '0', 1),
(60, 'S???n ph???m c?? kh??', 'san-pham-co-khi', '/co-khi/san-pham-co-khi', '', 10, '0', 1),
(61, 'Thi???t b??? c?? kh??', 'thiet-bi-co-khi', '/co-khi/thiet-bi-co-khi', '', 10, '0', 1),
(62, 'Ph??? ki???n c?? kh??', 'phu-kien-co-khi', '/co-khi/phu-kien-co-khi', '', 10, '0', 1),
(63, 'S???n ph???m c??ng ngh???', 'san-pham-cong-nghe', '/cong-nghe/san-pham-cong-nghe', '', 11, '0', 1),
(64, 'Thi???t b??? c??ng ngh???', 'thiet-bi-cong-nghe', '/cong-nghe/thiet-bi-cong-nghe', '', 11, '0', 1),
(65, 'Ph??? ki???n - Linh ki???n c??ng ngh???', 'phu-kien-linh-kien-cong-nghe', '/cong-nghe/phu-kien-linh-kien-cong-nghe', '', 11, '0', 1),
(66, 'S???n ph???m c??ng nghi???p', 'san-pham-cong-nghiep', '/cong-nghiep/san-pham-cong-nghiep', '', 12, '0', 1),
(67, 'Thi???t b??? c??ng nghi???p', 'thiet-bi-cong-nghiep', '/cong-nghiep/thiet-bi-cong-nghiep', '', 12, '0', 1),
(68, 'D???ch v??? c??ng nghi???p', 'dich-vu-cong-nghiep', '/cong-nghiep/dich-vu-cong-nghiep', '', 12, '0', 1),
(69, 'Thi???t b??? x??y d???ng', 'thiet-bi-xay-dung', '/xay-dung/thiet-bi-xay-dung', '', 13, '0', 1),
(70, 'V???t li???u x??y d???ng', 'vat-lieu-xay-dung', '/xay-dung/vat-lieu-xay-dung', '', 13, '0', 1),
(71, 'D???ch v??? v???n t???i', 'dich-vu-van-tai', '/dich-vu-giai-tri-du-lich/dich-vu-van-tai', '', 14, '0', 1),
(72, 'D???ch v??? c?????i h???i', 'dich-vu-cuoi-hoi', '/dich-vu-giai-tri-du-lich/dich-vu-cuoi-hoi', '', 14, '0', 1),
(73, 'D???ch v??? du l???ch', 'dich-vu-du-lich', '/dich-vu-giai-tri-du-lich/dich-vu-du-lich', '', 14, '0', 1),
(74, 'Cho thu??', 'cho-thue', '/dich-vu-giai-tri-du-lich/cho-thue', '', 14, '0', 1),
(75, 'Game - ????? ch??i', 'game-do-choi', '/dich-vu-giai-tri-du-lich/game-do-choi', '', 14, '0', 1),
(76, 'Th???c ph???m t????i s???ng', 'thuc-pham-tuoi-song', '/thuc-pham-an-uong/thuc-pham-tuoi-song', '', 15, '0', 1),
(77, 'Th???c ph???m qua ch??? bi???n', 'thuc-pham-qua-che-bien', '/thuc-pham-an-uong/thuc-pham-qua-che-bien', '', 15, '0', 1),
(78, 'Th???c ??n nh???', 'thuc-an-nhe', '/thuc-pham-an-uong/thuc-an-nhe', '', 15, '0', 1),
(79, '?????t s???n', 'dat-san', '/thuc-pham-an-uong/dat-san', '', 15, '0', 1),
(80, '????? h???p - ????? kh??', 'do-hop-do-kho', '/thuc-pham-an-uong/do-hop-do-kho', '', 15, '0', 1),
(81, 'Gia v???', 'gia-vi', '/thuc-pham-an-uong/gia-vi', '', 15, '0', 1),
(82, 'Ng?? c???c - S???n ph???m t??? ng?? c???c', 'ngu-coc-san-pham-tu-ngu-coc', '/thuc-pham-an-uong/ngu-coc-san-pham-tu-ngu-coc', '', 15, '0', 1),
(83, 'B??nh k???o - M???c', 'banh-keo-muc', '/thuc-pham-an-uong/banh-keo-muc', '', 15, '0', 1),
(84, 'Th???c u???ng', 'thuc-uong', '/thuc-pham-an-uong/thuc-uong', '', 15, '0', 1),
(85, 'Nguy??n li???u', 'nguyen-lieu', '/thuc-pham-an-uong/nguyen-lieu', '', 15, '0', 1),
(86, 'M??? ph???m', 'my-pham', '/sac-dep-suc-khoe-y-te/my-pham', '', 16, '0', 1),
(87, 'Thi???t b??? l??m ?????p', 'thiet-bi-lam-dep', '/sac-dep-suc-khoe-y-te/thiet-bi-lam-dep', '', 16, '0', 1),
(88, 'D???ch v??? ch??m s??c', 'dich-vu-cham-soc', '/sac-dep-suc-khoe-y-te/dich-vu-cham-soc', '', 16, '0', 1),
(89, 'N???i th???t kh??ng gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1),
(90, 'N???i th???t kh??ng gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1),
(91, 'N???i th???t ph??ng ng???', 'noi-that-phong-ngu', '/noi-ngoai-that/noi-that-phong-ngu', '', 17, '0', 1),
(92, 'N???i th???t ph??ng ??n - Nh?? b???p', 'noi-that-phong-an-nha-bep', '/noi-ngoai-that/noi-that-phong-an-nha-bep', '', 17, '0', 1),
(93, 'N???i th???t ph??ng t???m', 'noi-that-phong-tam', '/noi-ngoai-that/noi-that-phong-tam', '', 17, '0', 1),
(94, 'N???i th???t v??n ph??ng', 'noi-that-van-phong', '/noi-ngoai-that/noi-that-van-phong', '', 17, '0', 1),
(95, 'N???i th???t nh?? h??ng', 'noi-that-nha-hang', '/noi-ngoai-that/noi-that-nha-hang', '', 17, '0', 1),
(96, 'N???i th???t c??ng c???ng', 'noi-that-cong-cong', '/noi-ngoai-that/noi-that-cong-cong', '', 17, '0', 1),
(97, 'Ngo???i th???t s??n v?????n', 'ngoai-that-san-vuon', '/noi-ngoai-that/ngoai-that-san-vuon', '', 17, '0', 1),
(98, 'N???i th???t th??? c??ng', 'noi-that-tho-cung', '/noi-ngoai-that/noi-that-tho-cung', '', 17, '0', 1),
(99, 'N???i th???t tr??? em', 'noi-that-tre-em', '/noi-ngoai-that/noi-that-tre-em', '', 17, '0', 1),
(100, '????? th??? c??ng m??? ngh???', 'do-thu-cong-my-nghe', '/noi-ngoai-that/do-thu-cong-my-nghe', '', 17, '0', 1),
(101, '????? c???', 'do-co', '/noi-ngoai-that/do-co', '', 17, '0', 1),
(102, 'Thi???t k??? n???i th???t', 'thiet-ke-noi-that', '/noi-ngoai-that/thiet-ke-noi-that', '', 17, '0', 1),
(103, 'Qu?? t???ng', 'qua-tang', '/sach-van-phong-pham/qua-tang', '', 18, '0', 1),
(104, 'S??ch', 'sach', '/sach-van-phong-pham/sach', '', 18, '0', 1),
(105, 'Thi???t b???', 'thiet-bi', '/sach-van-phong-pham/thiet-bi', '', 18, '0', 1),
(106, 'V??n ph??ng ph???m', 'van-phong-pham', '/sach-van-phong-pham/van-phong-pham', '', 18, '0', 1),
(107, 'Th??? thao', 'the-thao', '/the-thao/the-thao', '', 19, '0', 1),
(108, 'Thi???t b??? - D???ng c???', 'thiet-bi-dung-cu', '/the-thao/thiet-bi-dung-cu', '', 19, '0', 1),
(109, 'D???ch v???', 'dich-vu', '/the-thao/dich-vu', '', 19, '0', 1),
(110, 'L??a g???o', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '0', -1),
(111, 'Hoa qu???', 'hoa-qua', '/nong-nghiep/san-pham-nong-nghiep/hoa-qua', '', 20, '0', 1),
(112, 'C??y gi???ng', 'cay-giong', '/nong-nghiep/san-pham-nong-nghiep/cay-giong', '', 20, '0', 1),
(113, 'M??y m??c', 'may-moc', '/nong-nghiep/thiet-bi-nong-nghiep/may-moc', '', 21, '0', 1),
(114, 'Ph??n b??n', 'phan-bon', '/nong-nghiep/thiet-bi-nong-nghiep/phan-bon', '', 21, '0', 1),
(115, 'Thu???c n??ng nghi???p', 'thuoc-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep/thuoc-nong-nghiep', '', 21, '0', 1),
(116, 'Th???y s???n ch??n nu??i', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', 1),
(117, 'Th???y s???n bi???n', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', 1),
(118, 'Con gi???ng', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', 1),
(119, 'M??y m??c', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', 1),
(120, 'Th???c ??n', 'thuc-an', '/thuy-san/thiet-bi-thuy-san/thuc-an', '', 24, '0', 1),
(121, 'Thu???c th???y s???n', 'thuoc-thuy-san', '/thuy-san/thiet-bi-thuy-san/thuoc-thuy-san', '', 24, '0', 1),
(122, 'Bi???t th??? - Nh?? chia l??', 'biet-thu-nha-chia-lo', '/thuy-san/thiet-bi-thuy-san/biet-thu-nha-chia-lo', '', 24, '0', 1),
(123, 'M???t b???ng kinh doanh', 'mat-bang-kinh-doanh', '/nha-dat/mua-ban-nha/mat-bang-kinh-doanh', '', 28, '0', 1),
(124, 'Nh?? chung c??', 'nha-chung-cu', '/nha-dat/mua-ban-nha/nha-chung-cu', '', 28, '0', 1),
(125, 'Nh?? m???t ph???', 'nha-mat-pho', '/nha-dat/mua-ban-nha/nha-mat-pho', '', 28, '0', 1),
(126, 'Nh?? trong ng??', 'nha-trong-ngo', '/nha-dat/mua-ban-nha/nha-trong-ngo', '', 28, '0', 1),
(127, 'Nh?? x?????ng, kho', 'nha-xuong-kho', '/nha-dat/mua-ban-nha/nha-xuong-kho', '', 28, '0', 1),
(128, '?????t canh t??c - L??m n??ng nghi???p', 'dat-canh-tac-lam-nong-nghiep', '/nha-dat/mua-ban-dat/dat-canh-tac-lam-nong-nghiep', '', 29, '0', 1),
(129, '?????t th??? c??', 'dat-tho-cu', '/nha-dat/mua-ban-dat/dat-tho-cu', '', 29, '0', 1),
(130, 'Cho thu?? m???t b???ng - C???a h??ng kinh doanh', 'cho-thue-mat-bang-cua-hang-kinh-doanh', '/nha-dat/cho-thue/cho-thue-mat-bang-cua-hang-kinh-doanh', '', 30, '0', 1),
(131, 'Cho thu?? nh??', 'cho-thue-nha', '/nha-dat/cho-thue/cho-thue-nha', '', 30, '0', 1),
(132, 'Cho thu?? ph??ng tr??? - Ki ???t', 'cho-thue-phong-tro-ki-ot', '/nha-dat/cho-thue/cho-thue-phong-tro-ki-ot', '', 30, '0', 1),
(133, 'Cho thu?? v??n ph??ng', 'cho-thue-van-phong', '/nha-dat/cho-thue/cho-thue-van-phong', '', 30, '0', 1),
(134, 'Cho thu?? ?????t', 'cho-thue-dat', '/nha-dat/cho-thue/cho-thue-dat', '', 30, '0', 1),
(135, 'Cho thu?? kho x?????ng', 'cho-thue-kho-xuong', '/nha-dat/cho-thue/cho-thue-kho-xuong', '', 30, '0', 1),
(136, 'C???n thu?? m???t b???ng - C???a h??ng kihn doanh', 'can-thue-mat-bang-cua-hang-kihn-doanh', '/nha-dat/can-thue/can-thue-mat-bang-cua-hang-kihn-doanh', '', 31, '0', 1),
(137, 'C???n thu?? nh??', 'can-thue-nha', '/nha-dat/can-thue/can-thue-nha', '', 31, '0', 1),
(138, 'C???n thu?? ph??ng tr??? - Ki ???t', 'can-thue-phong-tro-ki-ot', '/nha-dat/can-thue/can-thue-phong-tro-ki-ot', '', 31, '0', 1),
(139, 'C???n thu?? v??n ph??ng', 'can-thue-van-phong', '/nha-dat/can-thue/can-thue-van-phong', '', 31, '0', 1),
(140, 'C???n thu?? ?????t', 'can-thue-dat', '/nha-dat/can-thue/can-thue-dat', '', 31, '0', 1),
(141, 'C???n thu?? kho x?????ng', 'can-thue-kho-xuong', '/nha-dat/can-thue/can-thue-kho-xuong', '', 31, '0', 1),
(142, 'Qu???n ??o nam', 'quan-ao-nam', '/thoi-trang/thoi-trang-nam/quan-ao-nam', '', 35, '0', 1),
(143, 'Gi??y d??p nam', 'giay-dep-nam', '/thoi-trang/thoi-trang-nam/giay-dep-nam', '', 35, '0', 1),
(144, 'Ph??? ki???n th???i trang nam', 'phu-kien-thoi-trang-nam', '/thoi-trang/thoi-trang-nam/phu-kien-thoi-trang-nam', '', 35, '0', 1),
(145, 'Qu???n ??o n???', 'quan-ao-nu', '/thoi-trang/thoi-trang-nu/quan-ao-nu', '', 36, '0', 1),
(146, 'Gi??y d??p n???', 'giay-dep-nu', '/thoi-trang/thoi-trang-nu/giay-dep-nu', '', 36, '0', 1),
(147, 'Ph??? ki???n th???i trang n???', 'phu-kien-thoi-trang-nu', '/thoi-trang/thoi-trang-nu/phu-kien-thoi-trang-nu', '', 36, '0', 1),
(148, 'Th???i trang t??c', 'thoi-trang-toc', '/thoi-trang/thoi-trang-nu/thoi-trang-toc', '', 36, '0', 1),
(149, 'Trang ph???c teen nam', 'trang-phuc-teen-nam', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nam', '', 37, '0', 1),
(150, 'Trang ph???c teen n???', 'trang-phuc-teen-nu', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nu', '', 37, '0', 1),
(151, 'Qu???n ??o tr??? em', 'quan-ao-tre-em', '/thoi-trang/thoi-trang-tre-em/quan-ao-tre-em', '', 38, '0', 1),
(152, 'Gi??y d??p tr??? em', 'giay-dep-tre-em', '/thoi-trang/thoi-trang-tre-em/giay-dep-tre-em', '', 38, '0', 1),
(153, 'Ph??? ki???n th???i trang tr??? em', 'phu-kien-thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em/phu-kien-thoi-trang-tre-em', '', 38, '0', 1),
(154, 'Qu???n ??o ?????ng ph???c', 'quan-ao-dong-phuc', '/thoi-trang/dong-phuc-do-doi/quan-ao-dong-phuc', '', 39, '0', 1),
(155, 'Qu???n ??o ????i', 'quan-ao-doi', '/thoi-trang/dong-phuc-do-doi/quan-ao-doi', '', 39, '0', 1),
(156, 'Ph??? ki???n ????? ?????ng ph???c', 'phu-kien-do-dong-phuc', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-dong-phuc', '', 39, '0', 1),
(157, 'Phu ki???n ????? ????i', 'phu-kien-do-doi', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-doi', '', 39, '0', 1),
(158, 'Trang s???c cho n???', 'trang-suc-cho-nu', '/thoi-trang/trang-suc/trang-suc-cho-nu', '', 41, '0', 1),
(159, 'Trang s???c cho nam', 'trang-suc-cho-nam', '/thoi-trang/trang-suc/trang-suc-cho-nam', '', 41, '0', 1),
(160, 'Trang s???c c???p ????i', 'trang-suc-cap-doi', '/thoi-trang/trang-suc/trang-suc-cap-doi', '', 41, '0', 1),
(161, 'Trang s???c tr??? em', 'trang-suc-tre-em', '/thoi-trang/trang-suc/trang-suc-tre-em', '', 41, '0', 1),
(162, 'Nh???n c?????i - ????nh h??n', 'nhan-cuoi-dinh-hon', '/thoi-trang/trang-suc/nhan-cuoi-dinh-hon', '', 41, '0', 1),
(163, '???? qu??', 'da-quy', '/thoi-trang/trang-suc/da-quy', '', 41, '0', 1),
(164, 'V??ng mi???ng', 'vang-mieng', '/thoi-trang/trang-suc/vang-mieng', '', 41, '0', 1),
(165, 'Gi??y th??? thao', 'giay-the-thao', '/thoi-trang/giay-dep/giay-the-thao', '', 42, '0', 1),
(166, 'Ph??? ki???n', 'phu-kien', '/thoi-trang/giay-dep/phu-kien', '', 42, '0', 1),
(167, 'Gi??y d??p kh??c', 'giay-dep-khac', '/thoi-trang/giay-dep/giay-dep-khac', '', 42, '0', 1),
(168, 'N??ng nghi???p1', 'nong-nghiep1', '/nong-nghiep/nong-nghiep1', 'note', 1, '', -1),
(169, 'N??ng nghi???p1', 'nong-nghiep1', '', 'note', 1, '', -2),
(170, 'N??ng nghi???p 1', 'nong-nghiep-1', '', 'note', 1, '', -2),
(171, 'N??ng nghi???p 1', 'nong-nghiep-1', '', 'note', 1, '', -2),
(172, 'N??ng nghi???p 2', 'nong-nghiep-2', '/nong-nghiep/nong-nghiep-2', 'asdasdas', 1, '', -2),
(173, 'nguyen van do', 'nguyen-van-do', '/nong-nghiep/nguyen-van-do', 'noter', 1, '', -1),
(174, 'l??a g???o', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bakco_product`
--

CREATE TABLE `bakco_product` (
  `ID` varchar(50) NOT NULL DEFAULT '0',
  `ChuSanPham` varchar(200) NOT NULL,
  `catID` int(11) NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `Price` decimal(15,4) NOT NULL,
  `oldPrice` decimal(15,4) DEFAULT '0.0000',
  `Summary` text,
  `Content` text,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `DateCreate` datetime DEFAULT NULL,
  `TonKho` int(11) DEFAULT '0',
  `Note` varchar(500) DEFAULT NULL,
  `BuyTimes` int(11) DEFAULT '0',
  `Views` int(11) DEFAULT '0',
  `isShow` tinyint(4) NOT NULL,
  `lang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakco_product`
--

INSERT INTO `bakco_product` (`ID`, `ChuSanPham`, `catID`, `nameProduct`, `Price`, `oldPrice`, `Summary`, `Content`, `UrlHinh`, `DateCreate`, `TonKho`, `Note`, `BuyTimes`, `Views`, `isShow`, `lang`) VALUES
('1', '0', 47, 'betaglucan-400g', '0.0000', '0.0000', 'c???p nh???t', 'asd asdaasass', 'betaglucan-500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 11, 1, 'VN'),
('101', '1', 47, 'BIO VET 500g', '0.0000', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- M??y t??nh.<br />- L???ch.<br />- ?????ng h??? th??? gi???i.<br />- Quay s??? gi???ng n??i.<br />- Ghi ??m.<br />- Loa speaker.</p>', '', 'BIO VET 500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 'VN'),
('102', '1', 48, 'BKC V80', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Ki???u d??ng m???nh m??? v???i b??n ph??m Qwerty</li>\r\n<li>M??y ???nh 1.3 MP, h??? tr??? quay phim</li>\r\n<li>M??y nghe nh???c, xem phim MP3/eAAC+/3GP/MP4</li>\r\n<li>????i FM t??ch h???p, jack tai nghe 3.5mm</li>\r\n<li>Ghi ??m FM</li>\r\n<li>K???t n???i Bluetooth, USB, Facebook, Twitter apps </li>\r\n</ul>', '', 'BKC V80.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('1031', '1', 48, 'BZT VET', '0.0000', '0.0000', '<p>- M??y t??nh.<br />- L???ch.<br />- ?????ng h??? th??? gi???i.<br />- Quay s??? gi???ng n??i.</p>', '', 'BZT VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('104', '1', 47, 'CLEA VET', '790000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thi???t k??? ????n gi???n, tr??? trung</li>\r\n<li>M??y ???nh VGA</li>\r\n<li>H??? tr??? th??? nh??? ngo??i</li>\r\n<li>M??y nghe nh???c MP3</li>\r\n<li>????i FM t??ch h???p</li>\r\n<li>Ch??? ????? ????n pin </li>\r\n</ul>', '', 'CLEA VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('105', '1', 48, 'dr beta 500ml', '0.0000', '0.0000', '<p>- H??? tr??? Java MIDP 2.0<br />- FM radio t??ch h???p<br />- M??y nghe nh???c k??? thu???t s??? h??? tr??? c??c d???ng th???c MP3/AAC/AAC+/MPEG4<br />- T??? ??i???n T9 ??o??n tr?????c v??n b???n nh???p<br />- Ch???c n??ng t??? ch???c<br />- M??y ghi ??m t??ch h???p</p>', '', 'dr beta 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 'VN'),
('106', '1', 4, 'fasfive 500g', '499000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thi???t k??? nh??? g???n ch???c ch???n</li>\r\n<li>B&agrave;n ph&iacute;m ch???ng b???i</li>\r\n<li>Nh???c chu&ocirc;ng ??a &acirc;m </li>\r\n<li>Ch???c n??ng ??&egrave;n pin</li>\r\n<li>Pin b???n b??? </li>\r\n</ul>', NULL, 'fasfive 500g.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 5, 1, 'VN'),
('107', '1', 4, 'green v007 1kg', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>H??? tr??? 2 Sim 2 S??ng online</li>\r\n<li>M??y ???nh 2.0 MP, h??? tr??? quay phim</li>\r\n<li>M??y nghe nh???c MP3, AAC</li>\r\n<li>????i FM t??ch h???p</li>\r\n<li>K???t n???i Bluetooth, USB </li>\r\n</ul>', '', 'green v007 1kg.jpg', '0000-00-00 00:00:00', 100, '', 0, 3, 1, 'VN'),
('109', '1', 3, 'KA WATER 123', '0.0000', '0.0000', 'ul class=\"item_list\" style=\"margin: 0px padding-left: 15px\"\r\nliThi???t k??? d???ng xoay n??? t??nh/li\r\nliH??? tr??? 2 Sim 2 S??ng online/li\r\nliM??y ???nh 2.0 MP, h??? tr??? webcam/li\r\nliM??y nghe nh???c, xem phim MP3, 3GP, AVI/li\r\nli????i FM t??ch h???p /li\r\n/ul', '', 'KA WATER.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('111', '1', 3, 'LIVER VET 500G', '1589000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&agrave;n h&igrave;nh Wide r???ng 2.4 inches</li>\r\n<li>H??? tr??? 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ???nh 2.0 MP, h??? tr??? Webcam</li>\r\n<li>M&aacute;y nghe nh???c, xem phim</li>\r\n<li>H??? tr??? Wifi, yahoo, Opera</li>\r\n<li>??&agrave;i FM t&iacute;ch h???p </li>\r\n</ul>', NULL, 'LIVER VET 500G.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'VN'),
('112', '1', 3, 'liver water 500ml', '0.0000', '0.0000', '<p><span style=\"color: #ff0000;\"><strong>K-Touch B896 - ???n t?????ng v???i ch???t l?????ng &acirc;m thanh<br /></strong></span><span style=\"color: #000000;\">- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng<br />- Camera VGA, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, AAC<br />- L???c x&iacute; ng???u</span></p>', NULL, 'liver water 500ml.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'VN'),
('113', '1', 4, 'PREMAX 5KG', '1489000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty ?????y d??? d&agrave;ng nh???n tin</li>\r\n<li>H??? tr??? 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nh???c, xem phim MP3, 3GP</li>\r\n<li>??&agrave;i FM t&iacute;ch h???p, Bluetooth</li>\r\n<li>Yahoo chat, tr&igrave;nh duy???t web Opera</li>\r\n<li>Ch???c n??ng ch???n tin nh???n, cu???c g???i </li>\r\n</ul>', NULL, 'PREMAX 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('114', '1', 4, 'RS-alum v06', '0.0000', '0.0000', '<p><strong><span style=\"color: #ff0000;\">K-Tuoch D173 - ??i???n tho???i 2 Sim</span></strong><br />- H??? tr??? 2 khe g???n Sim (1 s&oacute;ng)<br />- Thi???t k??? th???i trang, m&agrave;n h&igrave;nh c???m ???ng<br />- Camera VGA, h??? tr??? quay phim<br />- C???m ???ng l???c tay chuy???n nh???c, h&igrave;nh n???n<br />- C&oacute; ??&egrave;n c???c ti???p ????? soi ti???n gi???</p>', NULL, 'RS-alum v06.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('115', '1', 4, 'RS-ankavet 5kg', '0.0000', '0.0000', '<p>- PDA h??? tr??? m???ng 3G v???i</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> WCDMA/EVDO  <br />- H??? ??i???u h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- H??? tr??? xem tivi<br />- Camera 2.0 MP, h??? tr??? quay phim<br />- K???t n???i interet v???i Wifi, truy???n t???i d??? li???u 3G<br />- K???t n???i Bluetooth, USB, GPRS</div>', NULL, 'RS-ankavet 5kg.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('116', '1', 3, 'RS-DRT VET 1KG', '1389000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>H??? tr??? 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ???nh VGA, h??? tr??? webcam</li>\r\n<li>Ch???c n??ng xem Tivi Analog</li>\r\n<li>Nghe nh???c, xem phim MP3, MP4, 3GP</li>\r\n<li>??&agrave;i FM t&iacute;ch h???p</li>\r\n<li>Ch???n cu???c g???i, ch???n tin nh???n, chat Yahoo</li>\r\n<li>L???c tay ?????i nh???c, h&igrave;nh n???n </li>\r\n</ul>', NULL, 'RS-DRT VET 1KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'VN'),
('117', '1', 4, 'RS-KA C 25 - 5KG', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'RS-KA C 25 - 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('2', '1', 4, 'SUPER C V25 1KG', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'SUPER C V25 1KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('3', '1', 4, 'super oil v08', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'super oil v08.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('5', '1', 4, 'white BACK V01', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'white BACK V01.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('6', '1', 4, 'white V001', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'white V001.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('7', '1', 4, 'yuca v9999 1 l??t', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'yuca v9999 1 l??t.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('kA9Ev5zd', 'PGV_EXPRess', 8, 'asdasdas', '0.0000', '0.0000', 'asd asd a', 'asd asd ', 'kA9Ev5zd.jpeg', '2015-12-11 04:28:32', 1, '', 0, 0, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakco_admin`
--
ALTER TABLE `bakco_admin`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `bakco_adv`
--
ALTER TABLE `bakco_adv`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakco_categories`
--
ALTER TABLE `bakco_categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `bakco_product`
--
ALTER TABLE `bakco_product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakco_adv`
--
ALTER TABLE `bakco_adv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `bakco_categories`
--
ALTER TABLE `bakco_categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
