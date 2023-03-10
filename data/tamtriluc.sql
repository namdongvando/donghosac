-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 06:26 AM
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
-- Database: `tamtriluc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_admin`
--

CREATE TABLE `bakcodt_admin` (
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
-- Dumping data for table `bakcodt_admin`
--

INSERT INTO `bakcodt_admin` (`Username`, `Password`, `Random`, `Name`, `Email`, `Phone`, `Address`, `Note`, `Groups`, `Urrlimages`) VALUES
('admin', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'Nguyen van do', 'namdong92@gmail.com', '01672779917', 'Nam dong\r\n', '', 1, ''),
('bvrhm', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 1, ''),
('bvrhm1', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_adv`
--

CREATE TABLE `bakcodt_adv` (
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
-- Dumping data for table `bakcodt_adv`
--

INSERT INTO `bakcodt_adv` (`ID`, `Name`, `Content`, `Attribute`, `DataAttribute`, `Group`, `Urlimages`, `Link`, `isShow`, `createDate`, `updateDate`) VALUES
(7, 'Quang C??o Danh M???c M???c ?????nh', '{\"Name\":\"Qu???ng C??o Slide Trang Ch???\"}', '{}', '[]', 'cat0', '', '', 0, '2018-05-18', '2018-05-18'),
(20, 'Qu???ng C??o Slide Trang Ch???', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-20.png', '#', 0, '2018-05-18', '2018-05-18'),
(33, 'Qu???ng C??o Slide Trang Ch???', '', '{\"background\":\"#FEC216\"}', '[{\"key\":\"background\",\"value\":\"#FEC216\"}]', 'homeslide', '/public/img/images/adv/2018/06/adv-33.jpeg', '#', 1, '2018-05-18', '2018-06-01'),
(35, 'Quang C??o Danh M???c M???c ?????nh aaa', '{\"Name\":\"Qu???ng C??o Slide Trang Ch???\"}', '{}', '[]', 'cat0', '/public/img/images/adv/2018/06/adv-35.jpeg', '', 1, '2018-05-18', '2018-06-01'),
(36, 'Quang C??o Danh M???c M???c ?????nh', '{\"Name\":\"Qu???ng C??o Slide Trang Ch???\"}', '{}', '[]', 'cat0', '/public/img/images/adv/2018/06/adv-36.jpeg', '#1', 1, '2018-05-18', '2018-06-01'),
(37, 'Qu???ng C??o Slide Trang Ch???', '', '{\"background\":\"#80827E\"}', '[{\"key\":\"background\",\"value\":\"#80827E\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-37.jpeg', '#', 1, '2018-05-18', '2018-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_categories`
--

CREATE TABLE `bakcodt_categories` (
  `catID` int(11) NOT NULL,
  `catName` varchar(200) NOT NULL,
  `Path` varchar(250) NOT NULL,
  `Link` varchar(500) NOT NULL,
  `Note` varchar(200) DEFAULT NULL,
  `parentCatID` int(11) DEFAULT NULL,
  `banner` varchar(200) DEFAULT NULL,
  `Public` int(11) NOT NULL,
  `Serial` int(11) NOT NULL,
  `Lang` varchar(4) NOT NULL DEFAULT 'vi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakcodt_categories`
--

INSERT INTO `bakcodt_categories` (`catID`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Serial`, `Lang`) VALUES
(1, 'N??ng nghi???p', 'nong-nghiep', '/nong-nghiep', '', 0, 'thuysan2.jpg', 1, 3, 'vi'),
(2, 'Th???y s???n', 'thuy-san', '/thuy-san', '', 0, 'thuysan2.jpg', 1, 0, 'vi'),
(3, 'Giao th??ng v???n t???i', 'giao-thong-van-tai', '/giao-thong-van-tai', '', 0, 'gtvt1.jpg', 1, 0, 'vi'),
(4, 'Nh?? ?????t', 'nha-dat', '/nha-dat', '', 0, 'nhadat1.jpg', 1, 0, 'vi'),
(5, 'Vi???c l??m', 'viec-lam', '/viec-lam', '', 0, 'vieclam1.jpg', 1, 0, 'vi'),
(6, 'Th???i trang', 'thoi-trang', '/thoi-trang', '', 0, 'thoitrang1.jpg', 1, 0, 'vi'),
(7, '??i???n t???', 'dien-tu', '/dien-tu', '', 0, 'dientu1.jpg', 1, 0, 'vi'),
(8, 'Xe c???', 'xe-co', '/xe-co', '', 0, 'xe1.jpg', 1, 0, 'vi'),
(9, 'Kim kh?? -  ??i???n m??y', 'kim-khi-dien-may', '/kim-khi-dien-may', '', 0, 'kimkhidienmay1.jpg', 1, 0, 'vi'),
(10, 'C?? kh??', 'co-khi', '/co-khi', '', 0, 'cokhi1.jpg', 1, 0, 'vi'),
(11, 'C??ng ngh???', 'cong-nghe', '/cong-nghe', '', 0, 'congnghe1.jpg', 1, 0, 'vi'),
(12, 'C??ng nghi???p', 'cong-nghiep', '/cong-nghiep', '', 0, 'congnghiep2.jpg', 1, 0, 'vi'),
(13, 'X??y d???ng', 'xay-dung', '/xay-dung', '', 0, 'xaydung3.jpg', 1, 0, 'vi'),
(14, 'D???ch v??? - Gi???i tr?? - Du l???ch', 'dich-vu-giai-tri-du-lich', '/dich-vu-giai-tri-du-lich', '', 0, 'dichvu3.jpg', 1, 0, 'vi'),
(15, 'Th???c ph???m -  ??n u???ng', 'thuc-pham-an-uong', '/thuc-pham-an-uong', '', 0, 'thucpham2.jpg', 1, 0, 'vi'),
(16, 'S???c ?????p -  S???c kh???e - Y t???', 'sac-dep-suc-khoe-y-te', '/sac-dep-suc-khoe-y-te', '', 0, 'yte2.jpg', 1, 0, 'vi'),
(17, 'N???i ngo???i th???t', 'noi-ngoai-that', '/noi-ngoai-that', '', 0, 'noingoaithat3.jpg', 1, 0, 'vi'),
(18, 'S??ch - V??n phong ph???m', 'sach-van-phong-pham', '/sach-van-phong-pham', '', 0, 'sach2.jpg', 1, 0, 'vi'),
(19, 'Th??? thao', 'the-thao', '/the-thao', '', 0, 'thethao3.jpg', 1, 0, 'vi'),
(20, 'S???n ph???m n??ng nghi???p', 'san-pham-nong-nghiep', '/nong-nghiep/san-pham-nong-nghiep', 'asdas', 1, '0', 1, 9, 'vi'),
(21, 'Thi???t b??? n??ng nghi???p', 'thiet-bi-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep', '', 1, '0', 1, 0, 'vi'),
(22, 'Ph??? ki???n n??ng nghi???p', 'phu-kien-nong-nghiep', '/nong-nghiep/phu-kien-nong-nghiep', '', 1, '0', 1, 0, 'vi'),
(23, 'S???n ph???m th???y s???n', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', 1, 0, 'vi'),
(24, 'Thi???t b??? th???y s???n', 'thiet-bi-thuy-san', '/thuy-san/thiet-bi-thuy-san', '', 2, '0', 1, 0, 'vi'),
(25, 'Ph??? ki???n th???y s???n', 'phu-kien-thuy-san', '/thuy-san/phu-kien-thuy-san', '', 2, '0', 1, 0, 'vi'),
(26, 'D???ch v??? v???n chuy???n', 'dich-vu-van-chuyen', '/giao-thong-van-tai/dich-vu-van-chuyen', '', 3, '0', 1, 0, 'vi'),
(27, 'D???ch v??? cho thu??', 'dich-vu-cho-thue', '/giao-thong-van-tai/dich-vu-cho-thue', '', 3, '0', 1, 0, 'vi'),
(28, 'Mua b??n nh??', 'mua-ban-nha', '/nha-dat/mua-ban-nha', '', 4, '0', 1, 0, 'vi'),
(29, 'Mua b??n ?????t', 'mua-ban-dat', '/nha-dat/mua-ban-dat', '', 4, '0', 1, 0, 'vi'),
(30, 'Cho thu??', 'cho-thue', '/nha-dat/cho-thue', '', 4, '0', 1, 0, 'vi'),
(31, 'C???n thu??', 'can-thue', '/nha-dat/can-thue', '', 4, '0', 1, 0, 'vi'),
(32, 'D???ch v??? nh?? ?????t', 'dich-vu-nha-dat', '/nha-dat/dich-vu-nha-dat', '', 4, '0', 1, 0, 'vi'),
(33, 'Ng?????i t??m vi???c', 'nguoi-tim-viec', '/viec-lam/nguoi-tim-viec', '', 5, '0', 1, 0, 'vi'),
(34, 'Vi???c t??m ng?????i', 'viec-tim-nguoi', '/viec-lam/viec-tim-nguoi', '', 5, '0', 1, 0, 'vi'),
(35, 'Th???i trang nam', 'thoi-trang-nam', '/thoi-trang/thoi-trang-nam', '', 6, '0', 1, 0, 'vi'),
(36, 'Th???i  trang n???', 'thoi-trang-nu', '/thoi-trang/thoi-trang-nu', '', 6, '0', 1, 0, 'vi'),
(37, 'Th???i trang teen', 'thoi-trang-teen', '/thoi-trang/thoi-trang-teen', '', 6, '0', 1, 0, 'vi'),
(38, 'Th???i trang tr??? em', 'thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em', '', 6, '0', 1, 0, 'vi'),
(39, '?????ng ph???c - ????? ????i', 'dong-phuc-do-doi', '/thoi-trang/dong-phuc-do-doi', '', 6, '0', 1, 0, 'vi'),
(40, '?????ng h???', 'dong-ho', '/thoi-trang/dong-ho', '', 6, '0', 1, 0, 'vi'),
(41, 'Trang s???c', 'trang-suc', '/thoi-trang/trang-suc', '', 6, '0', 1, 0, 'vi'),
(42, 'Gi??y d??p', 'giay-dep', '/thoi-trang/giay-dep', '', 6, '0', 1, 0, 'vi'),
(43, 'Ph??? ki???n', 'phu-kien', '/thoi-trang/phu-kien', '', 6, '0', 1, 0, 'vi'),
(44, '??i???n tho???i di ?????ng', 'dien-thoai-di-dong', '/dien-tu/dien-thoai-di-dong', '', 7, '0', 1, 0, 'vi'),
(45, 'M??y t??nh b???ng', 'may-tinh-bang', '/dien-tu/may-tinh-bang', '', 7, '0', 1, 0, 'vi'),
(46, 'M??y t??nh - Laptop', 'may-tinh-laptop', '/dien-tu/may-tinh-laptop', '', 7, '0', 1, 0, 'vi'),
(47, 'M??y ???nh - M??y quay', 'may-anh-may-quay', '/dien-tu/may-anh-may-quay', '', 7, '0', 1, 0, 'vi'),
(48, 'Tivi - Loa - Amply - M??y nghe nh???c', 'tivi-loa-amply-may-nghe-nhac', '/dien-tu/tivi-loa-amply-may-nghe-nhac', '', 7, '0', 1, 0, 'vi'),
(49, 'Ph??? ki???n - Linh ki???n', 'phu-kien-linh-kien', '/dien-tu/phu-kien-linh-kien', '', 7, '0', 1, 0, 'vi'),
(50, '?? T??', 'o-to', '/xe-co/o-to', '', 8, '0', 1, 0, 'vi'),
(51, 'Xe m??y', 'xe-may', '/xe-co/xe-may', '', 8, '0', 1, 0, 'vi'),
(52, 'Xe ?????p', 'xe-dap', '/xe-co/xe-dap', '', 8, '0', 1, 0, 'vi'),
(53, '????? ch??i', 'do-choi', '/xe-co/do-choi', '', 8, '0', 1, 0, 'vi'),
(54, 'C?? kh?? ?? t??', 'co-khi-o-to', '/xe-co/co-khi-o-to', '', 8, '0', 1, 0, 'vi'),
(55, 'C?? kh?? xe m??y', 'co-khi-xe-may', '/xe-co/co-khi-xe-may', '', 8, '0', 1, 0, 'vi'),
(56, 'Ph??? t??ng', 'phu-tung', '/xe-co/phu-tung', '', 8, '0', 1, 0, 'vi'),
(57, 'S???n ph???m', 'san-pham', '/kim-khi-dien-may/san-pham', '', 9, '0', 1, 0, 'vi'),
(58, 'Thi???t b???', 'thiet-bi', '/kim-khi-dien-may/thiet-bi', '', 9, '0', 1, 0, 'vi'),
(59, 'Ph??? t??ng - Linh ki???n', 'phu-tung-linh-kien', '/kim-khi-dien-may/phu-tung-linh-kien', '', 9, '0', 1, 0, 'vi'),
(60, 'S???n ph???m c?? kh??', 'san-pham-co-khi', '/co-khi/san-pham-co-khi', '', 10, '0', 1, 0, 'vi'),
(61, 'Thi???t b??? c?? kh??', 'thiet-bi-co-khi', '/co-khi/thiet-bi-co-khi', '', 10, '0', 1, 0, 'vi'),
(62, 'Ph??? ki???n c?? kh??', 'phu-kien-co-khi', '/co-khi/phu-kien-co-khi', '', 10, '0', 1, 0, 'vi'),
(63, 'S???n ph???m c??ng ngh???', 'san-pham-cong-nghe', '/cong-nghe/san-pham-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(64, 'Thi???t b??? c??ng ngh???', 'thiet-bi-cong-nghe', '/cong-nghe/thiet-bi-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(65, 'Ph??? ki???n - Linh ki???n c??ng ngh???', 'phu-kien-linh-kien-cong-nghe', '/cong-nghe/phu-kien-linh-kien-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(66, 'S???n ph???m c??ng nghi???p', 'san-pham-cong-nghiep', '/cong-nghiep/san-pham-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(67, 'Thi???t b??? c??ng nghi???p', 'thiet-bi-cong-nghiep', '/cong-nghiep/thiet-bi-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(68, 'D???ch v??? c??ng nghi???p', 'dich-vu-cong-nghiep', '/cong-nghiep/dich-vu-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(69, 'Thi???t b??? x??y d???ng', 'thiet-bi-xay-dung', '/xay-dung/thiet-bi-xay-dung', '', 13, '0', 1, 0, 'vi'),
(70, 'V???t li???u x??y d???ng', 'vat-lieu-xay-dung', '/xay-dung/vat-lieu-xay-dung', '', 13, '0', 1, 0, 'vi'),
(71, 'D???ch v??? v???n t???i', 'dich-vu-van-tai', '/dich-vu-giai-tri-du-lich/dich-vu-van-tai', '', 14, '0', 1, 0, 'vi'),
(72, 'D???ch v??? c?????i h???i', 'dich-vu-cuoi-hoi', '/dich-vu-giai-tri-du-lich/dich-vu-cuoi-hoi', '', 14, '0', 1, 0, 'vi'),
(73, 'D???ch v??? du l???ch', 'dich-vu-du-lich', '/dich-vu-giai-tri-du-lich/dich-vu-du-lich', '', 14, '0', 1, 0, 'vi'),
(74, 'Cho thu??', 'cho-thue', '/dich-vu-giai-tri-du-lich/cho-thue', '', 14, '0', 1, 0, 'vi'),
(75, 'Game - ????? ch??i', 'game-do-choi', '/dich-vu-giai-tri-du-lich/game-do-choi', '', 14, '0', 1, 0, 'vi'),
(76, 'Th???c ph???m t????i s???ng', 'thuc-pham-tuoi-song', '/thuc-pham-an-uong/thuc-pham-tuoi-song', '', 15, '0', 1, 0, 'vi'),
(77, 'Th???c ph???m qua ch??? bi???n', 'thuc-pham-qua-che-bien', '/thuc-pham-an-uong/thuc-pham-qua-che-bien', '', 15, '0', 1, 0, 'vi'),
(78, 'Th???c ??n nh???', 'thuc-an-nhe', '/thuc-pham-an-uong/thuc-an-nhe', '', 15, '0', 1, 0, 'vi'),
(79, '?????t s???n', 'dat-san', '/thuc-pham-an-uong/dat-san', '', 15, '0', 1, 0, 'vi'),
(80, '????? h???p - ????? kh??', 'do-hop-do-kho', '/thuc-pham-an-uong/do-hop-do-kho', '', 15, '0', 1, 0, 'vi'),
(81, 'Gia v???', 'gia-vi', '/thuc-pham-an-uong/gia-vi', '', 15, '0', 1, 0, 'vi'),
(82, 'Ng?? c???c - S???n ph???m t??? ng?? c???c', 'ngu-coc-san-pham-tu-ngu-coc', '/thuc-pham-an-uong/ngu-coc-san-pham-tu-ngu-coc', '', 15, '0', 1, 0, 'vi'),
(83, 'B??nh k???o - M???c', 'banh-keo-muc', '/thuc-pham-an-uong/banh-keo-muc', '', 15, '0', 1, 0, 'vi'),
(84, 'Th???c u???ng', 'thuc-uong', '/thuc-pham-an-uong/thuc-uong', '', 15, '0', 1, 0, 'vi'),
(85, 'Nguy??n li???u', 'nguyen-lieu', '/thuc-pham-an-uong/nguyen-lieu', '', 15, '0', 1, 0, 'vi'),
(86, 'M??? ph???m', 'my-pham', '/sac-dep-suc-khoe-y-te/my-pham', '', 16, '0', 1, 0, 'vi'),
(87, 'Thi???t b??? l??m ?????p', 'thiet-bi-lam-dep', '/sac-dep-suc-khoe-y-te/thiet-bi-lam-dep', '', 16, '0', 1, 0, 'vi'),
(88, 'D???ch v??? ch??m s??c', 'dich-vu-cham-soc', '/sac-dep-suc-khoe-y-te/dich-vu-cham-soc', '', 16, '0', 1, 0, 'vi'),
(89, 'N???i th???t kh??ng gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 0, 'vi'),
(90, 'N???i th???t kh??ng gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 0, 'vi'),
(91, 'N???i th???t ph??ng ng???', 'noi-that-phong-ngu', '/noi-ngoai-that/noi-that-phong-ngu', '', 17, '0', 1, 0, 'vi'),
(92, 'N???i th???t ph??ng ??n - Nh?? b???p', 'noi-that-phong-an-nha-bep', '/noi-ngoai-that/noi-that-phong-an-nha-bep', '', 17, '0', 1, 0, 'vi'),
(93, 'N???i th???t ph??ng t???m', 'noi-that-phong-tam', '/noi-ngoai-that/noi-that-phong-tam', '', 17, '0', 1, 0, 'vi'),
(94, 'N???i th???t v??n ph??ng', 'noi-that-van-phong', '/noi-ngoai-that/noi-that-van-phong', '', 17, '0', 1, 0, 'vi'),
(95, 'N???i th???t nh?? h??ng', 'noi-that-nha-hang', '/noi-ngoai-that/noi-that-nha-hang', '', 17, '0', 1, 0, 'vi'),
(96, 'N???i th???t c??ng c???ng', 'noi-that-cong-cong', '/noi-ngoai-that/noi-that-cong-cong', '', 17, '0', 1, 0, 'vi'),
(97, 'Ngo???i th???t s??n v?????n', 'ngoai-that-san-vuon', '/noi-ngoai-that/ngoai-that-san-vuon', '', 17, '0', 1, 0, 'vi'),
(98, 'N???i th???t th??? c??ng', 'noi-that-tho-cung', '/noi-ngoai-that/noi-that-tho-cung', '', 17, '0', 1, 0, 'vi'),
(99, 'N???i th???t tr??? em', 'noi-that-tre-em', '/noi-ngoai-that/noi-that-tre-em', '', 17, '0', 1, 0, 'vi'),
(100, '????? th??? c??ng m??? ngh???', 'do-thu-cong-my-nghe', '/noi-ngoai-that/do-thu-cong-my-nghe', '', 17, '0', 1, 0, 'vi'),
(101, '????? c???', 'do-co', '/noi-ngoai-that/do-co', '', 17, '0', 1, 0, 'vi'),
(102, 'Thi???t k??? n???i th???t', 'thiet-ke-noi-that', '/noi-ngoai-that/thiet-ke-noi-that', '', 17, '0', 1, 0, 'vi'),
(103, 'Qu?? t???ng', 'qua-tang', '/sach-van-phong-pham/qua-tang', '', 18, '0', 1, 0, 'vi'),
(104, 'S??ch', 'sach', '/sach-van-phong-pham/sach', '', 18, '0', 1, 0, 'vi'),
(105, 'Thi???t b???', 'thiet-bi', '/sach-van-phong-pham/thiet-bi', '', 18, '0', 1, 0, 'vi'),
(106, 'V??n ph??ng ph???m', 'van-phong-pham', '/sach-van-phong-pham/van-phong-pham', '', 18, '0', 1, 0, 'vi'),
(107, 'Th??? thao', 'the-thao', '/the-thao/the-thao', '', 19, '0', 1, 0, 'vi'),
(108, 'Thi???t b??? - D???ng c???', 'thiet-bi-dung-cu', '/the-thao/thiet-bi-dung-cu', '', 19, '0', 1, 0, 'vi'),
(109, 'D???ch v???', 'dich-vu', '/the-thao/dich-vu', '', 19, '0', 1, 0, 'vi'),
(110, 'L??a g???o', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '0', -1, 0, 'vi'),
(111, 'Hoa qu???', 'hoa-qua', '/nong-nghiep/san-pham-nong-nghiep/hoa-qua', '', 20, '0', 1, 0, 'vi'),
(112, 'C??y gi???ng', 'cay-giong', '/nong-nghiep/san-pham-nong-nghiep/cay-giong', '', 20, '0', 1, 0, 'vi'),
(113, 'M??y m??c', 'may-moc', '/nong-nghiep/thiet-bi-nong-nghiep/may-moc', '', 21, '0', 1, 0, 'vi'),
(114, 'Ph??n b??n', 'phan-bon', '/nong-nghiep/thiet-bi-nong-nghiep/phan-bon', '', 21, '0', 1, 0, 'vi'),
(115, 'Thu???c n??ng nghi???p', 'thuoc-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep/thuoc-nong-nghiep', '', 21, '0', 1, 0, 'vi'),
(116, 'Th???y s???n ch??n nu??i', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', 1, 0, 'vi'),
(117, 'Th???y s???n bi???n', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', 1, 0, 'vi'),
(118, 'Con gi???ng', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', 1, 0, 'vi'),
(119, 'M??y m??c', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', 1, 1, 'vi'),
(120, 'Th???c ??n', 'thuc-an', '/thuy-san/thiet-bi-thuy-san/thuc-an', '', 24, '0', 1, 2, 'vi'),
(121, 'Thu???c th???y s???n', 'thuoc-thuy-san', '/thuy-san/thiet-bi-thuy-san/thuoc-thuy-san', '', 24, '0', 1, 3, 'vi'),
(122, 'Bi???t th??? - Nh?? chia l??', 'biet-thu-nha-chia-lo', '/thuy-san/thiet-bi-thuy-san/biet-thu-nha-chia-lo', '', 24, '0', 1, 10, 'vi'),
(123, 'M???t b???ng kinh doanh', 'mat-bang-kinh-doanh', '/nha-dat/mua-ban-nha/mat-bang-kinh-doanh', '', 28, '0', 1, 0, 'vi'),
(124, 'Nh?? chung c??', 'nha-chung-cu', '/nha-dat/mua-ban-nha/nha-chung-cu', '', 28, '0', 1, 0, 'vi'),
(125, 'Nh?? m???t ph???', 'nha-mat-pho', '/nha-dat/mua-ban-nha/nha-mat-pho', '', 28, '0', 1, 0, 'vi'),
(126, 'Nh?? trong ng??', 'nha-trong-ngo', '/nha-dat/mua-ban-nha/nha-trong-ngo', '', 28, '0', 1, 0, 'vi'),
(127, 'Nh?? x?????ng, kho', 'nha-xuong-kho', '/nha-dat/mua-ban-nha/nha-xuong-kho', '', 28, '0', 1, 0, 'vi'),
(128, '?????t canh t??c - L??m n??ng nghi???p', 'dat-canh-tac-lam-nong-nghiep', '/nha-dat/mua-ban-dat/dat-canh-tac-lam-nong-nghiep', '', 29, '0', 1, 0, 'vi'),
(129, '?????t th??? c??', 'dat-tho-cu', '/nha-dat/mua-ban-dat/dat-tho-cu', '', 29, '0', 1, 0, 'vi'),
(130, 'Cho thu?? m???t b???ng - C???a h??ng kinh doanh', 'cho-thue-mat-bang-cua-hang-kinh-doanh', '/nha-dat/cho-thue/cho-thue-mat-bang-cua-hang-kinh-doanh', '', 30, '0', 1, 0, 'vi'),
(131, 'Cho thu?? nh??', 'cho-thue-nha', '/nha-dat/cho-thue/cho-thue-nha', '', 30, '0', 1, 0, 'vi'),
(132, 'Cho thu?? ph??ng tr??? - Ki ???t', 'cho-thue-phong-tro-ki-ot', '/nha-dat/cho-thue/cho-thue-phong-tro-ki-ot', '', 30, '0', 1, 0, 'vi'),
(133, 'Cho thu?? v??n ph??ng', 'cho-thue-van-phong', '/nha-dat/cho-thue/cho-thue-van-phong', '', 30, '0', 1, 0, 'vi'),
(134, 'Cho thu?? ?????t', 'cho-thue-dat', '/nha-dat/cho-thue/cho-thue-dat', '', 30, '0', 1, 0, 'vi'),
(135, 'Cho thu?? kho x?????ng', 'cho-thue-kho-xuong', '/nha-dat/cho-thue/cho-thue-kho-xuong', '', 30, '0', 1, 0, 'vi'),
(136, 'C???n thu?? m???t b???ng - C???a h??ng kihn doanh', 'can-thue-mat-bang-cua-hang-kihn-doanh', '/nha-dat/can-thue/can-thue-mat-bang-cua-hang-kihn-doanh', '', 31, '0', 1, 0, 'vi'),
(137, 'C???n thu?? nh??', 'can-thue-nha', '/nha-dat/can-thue/can-thue-nha', '', 31, '0', 1, 0, 'vi'),
(138, 'C???n thu?? ph??ng tr??? - Ki ???t', 'can-thue-phong-tro-ki-ot', '/nha-dat/can-thue/can-thue-phong-tro-ki-ot', '', 31, '0', 1, 0, 'vi'),
(139, 'C???n thu?? v??n ph??ng', 'can-thue-van-phong', '/nha-dat/can-thue/can-thue-van-phong', '', 31, '0', 1, 0, 'vi'),
(140, 'C???n thu?? ?????t', 'can-thue-dat', '/nha-dat/can-thue/can-thue-dat', '', 31, '0', 1, 0, 'vi'),
(141, 'C???n thu?? kho x?????ng', 'can-thue-kho-xuong', '/nha-dat/can-thue/can-thue-kho-xuong', '', 31, '0', 1, 0, 'vi'),
(142, 'Qu???n ??o nam', 'quan-ao-nam', '/thoi-trang/thoi-trang-nam/quan-ao-nam', '', 35, '0', 1, 0, 'vi'),
(143, 'Gi??y d??p nam', 'giay-dep-nam', '/thoi-trang/thoi-trang-nam/giay-dep-nam', '', 35, '0', 1, 0, 'vi'),
(144, 'Ph??? ki???n th???i trang nam', 'phu-kien-thoi-trang-nam', '/thoi-trang/thoi-trang-nam/phu-kien-thoi-trang-nam', '', 35, '0', 1, 0, 'vi'),
(145, 'Qu???n ??o n???', 'quan-ao-nu', '/thoi-trang/thoi-trang-nu/quan-ao-nu', '', 36, '0', 1, 0, 'vi'),
(146, 'Gi??y d??p n???', 'giay-dep-nu', '/thoi-trang/thoi-trang-nu/giay-dep-nu', '', 36, '0', 1, 0, 'vi'),
(147, 'Ph??? ki???n th???i trang n???', 'phu-kien-thoi-trang-nu', '/thoi-trang/thoi-trang-nu/phu-kien-thoi-trang-nu', '', 36, '0', 1, 0, 'vi'),
(148, 'Th???i trang t??c', 'thoi-trang-toc', '/thoi-trang/thoi-trang-nu/thoi-trang-toc', '', 36, '0', 1, 0, 'vi'),
(149, 'Trang ph???c teen nam', 'trang-phuc-teen-nam', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nam', '', 37, '0', 1, 0, 'vi'),
(150, 'Trang ph???c teen n???', 'trang-phuc-teen-nu', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nu', '', 37, '0', 1, 0, 'vi'),
(151, 'Qu???n ??o tr??? em', 'quan-ao-tre-em', '/thoi-trang/thoi-trang-tre-em/quan-ao-tre-em', '', 38, '0', 1, 0, 'vi'),
(152, 'Gi??y d??p tr??? em', 'giay-dep-tre-em', '/thoi-trang/thoi-trang-tre-em/giay-dep-tre-em', '', 38, '0', 1, 0, 'vi'),
(153, 'Ph??? ki???n th???i trang tr??? em', 'phu-kien-thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em/phu-kien-thoi-trang-tre-em', '', 38, '0', 1, 0, 'vi'),
(154, 'Qu???n ??o ?????ng ph???c', 'quan-ao-dong-phuc', '/thoi-trang/dong-phuc-do-doi/quan-ao-dong-phuc', '', 39, '0', 1, 0, 'vi'),
(155, 'Qu???n ??o ????i', 'quan-ao-doi', '/thoi-trang/dong-phuc-do-doi/quan-ao-doi', '', 39, '0', 1, 0, 'vi'),
(156, 'Ph??? ki???n ????? ?????ng ph???c', 'phu-kien-do-dong-phuc', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-dong-phuc', '', 39, '0', 1, 0, 'vi'),
(157, 'Phu ki???n ????? ????i', 'phu-kien-do-doi', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-doi', '', 39, '0', 1, 0, 'vi'),
(158, 'Trang s???c cho n???', 'trang-suc-cho-nu', '/thoi-trang/trang-suc/trang-suc-cho-nu', '', 41, '0', 1, 0, 'vi'),
(159, 'Trang s???c cho nam', 'trang-suc-cho-nam', '/thoi-trang/trang-suc/trang-suc-cho-nam', '', 41, '0', 1, 0, 'vi'),
(160, 'Trang s???c c???p ????i', 'trang-suc-cap-doi', '/thoi-trang/trang-suc/trang-suc-cap-doi', '', 41, '0', 1, 0, 'vi'),
(161, 'Trang s???c tr??? em', 'trang-suc-tre-em', '/thoi-trang/trang-suc/trang-suc-tre-em', '', 41, '0', 1, 0, 'vi'),
(162, 'Nh???n c?????i - ????nh h??n', 'nhan-cuoi-dinh-hon', '/thoi-trang/trang-suc/nhan-cuoi-dinh-hon', '', 41, '0', 1, 0, 'vi'),
(163, '???? qu??', 'da-quy', '/thoi-trang/trang-suc/da-quy', '', 41, '0', 1, 0, 'vi'),
(164, 'V??ng mi???ng', 'vang-mieng', '/thoi-trang/trang-suc/vang-mieng', '', 41, '0', 1, 0, 'vi'),
(165, 'Gi??y th??? thao', 'giay-the-thao', '/thoi-trang/giay-dep/giay-the-thao', '', 42, '0', 1, 0, 'vi'),
(166, 'Ph??? ki???n', 'phu-kien', '/thoi-trang/giay-dep/phu-kien', '', 42, '0', 1, 0, 'vi'),
(167, 'Gi??y d??p kh??c', 'giay-dep-khac', '/thoi-trang/giay-dep/giay-dep-khac', '', 42, '0', 1, 0, 'vi'),
(168, 'N??ng nghi???p1', 'nong-nghiep1', '/nong-nghiep/nong-nghiep1', 'note', 1, '', -1, 0, 'vi'),
(172, 'N??ng nghi???p 2', 'nong-nghiep-2', '/nong-nghiep/nong-nghiep-2', 'asdasdas', 1, '', -2, 0, 'vi'),
(173, 'nguyen van do', 'nguyen-van-do', '/nong-nghiep/nguyen-van-do', 'noter', 1, '', -1, 0, 'vi'),
(174, 'l??a g???o', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '', 1, 9, 'vi'),
(175, 'Th??ng tin chung', 'thong-tin-chung', '/nong-nghiep/thong-tin-chung', '', 1, '', 0, 0, 'vi'),
(178, 'DanhMuc', 'danhmuc', '/danhmuc', '', 0, '', -1, 0, 'vi'),
(179, 'DanhMuc sanb pham', 'danhmuc-sanb-pham', '/danhmuc-sanb-pham', '', 0, '', 1, 0, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_form`
--

CREATE TABLE `bakcodt_form` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Config` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_home`
--

CREATE TABLE `bakcodt_home` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Summary` text COLLATE utf8_unicode_ci NOT NULL,
  `Icon` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Groups` int(11) NOT NULL,
  `createDate` datetime NOT NULL,
  `modifyDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_infor`
--

CREATE TABLE `bakcodt_infor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Content` text COLLATE utf8_unicode_ci NOT NULL,
  `Config` text COLLATE utf8_unicode_ci NOT NULL,
  `dataConfig` text COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakcodt_infor`
--

INSERT INTO `bakcodt_infor` (`ID`, `Name`, `Title`, `Content`, `Config`, `dataConfig`, `createDate`, `modifyDate`) VALUES
(2, 'SDT', 'S??? ??i???n Tho???i', '0963586123', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:41:20', '2018-06-21 23:41:20'),
(3, 'DiaChi', '?????a Ch???', '7 ???????ng S??? 6, Kp 5, B??nh H??ng H??a B, B??nh T??n, H??? Ch?? Minh, Vi???t Nam', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:45:33', '2018-06-21 23:45:33'),
(5, 'WebName', 'Website', 'tomgiongvodat.com', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:01:09', '2018-06-22 00:01:09'),
(8, 'Logo', 'H??nh Logo', '/public/img/images/information/img-15301581451485-8.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2018-06-22 00:03:46', '2018-06-22 00:03:46'),
(10, 'facebook', 'Page Facebook', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:14', '2018-06-22 00:06:14'),
(11, 'google', 'Link Google', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:40', '2018-06-22 00:06:40'),
(12, 'twitter', 'twitter', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:16', '2018-06-22 00:07:16'),
(13, 'pinterest', 'pinterest', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:18', '2018-06-22 00:07:18'),
(19, 'Title', 'Ti??u ????? Trang', 'C??ng Ty THHH M???ch Gia Ph??t', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:53:07', '2018-06-22 01:53:07'),
(20, 'Des', 'M?? T??? Trang', 'C??ng Ty THHH M???ch Gia Ph??t, Ep c???c', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:55:35', '2018-06-22 01:55:35'),
(23, 'Keyword', 'T??? Kh??a', 'T??? Kh??a', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 21:37:45', '2018-06-27 21:37:45'),
(24, 'Auth', 'Ng?????i Ph??t Tri???n', 'nguyenvando.net', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 22:09:29', '2018-06-27 22:09:29'),
(25, 'lblHotline', 'Hotline', 'Hotline', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:09:25', '2018-06-28 11:09:25'),
(26, 'Hotline', 'HOTLINE', '0123456789', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:10:14', '2018-06-28 11:10:14'),
(27, 'lblThongTinCongty', 'title Th??ng Tin C??ng Ty', 'Th??ng Tin C??ng Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:12:32', '2018-06-28 11:12:32'),
(28, 'lblDichVu', 'title D???ch V???', 'D???ch V???', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:13:34', '2018-06-28 11:13:34'),
(29, 'lblCongTy', 'title C??ng Ty', 'C??ng Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:14', '2018-06-28 11:14:14'),
(30, 'lblHoTro', 'title H??? Tr???', 'H??? Tr???', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:49', '2018-06-28 11:14:49'),
(31, 'Email', 'Email', 'tamtriluc@gmail.com', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:15:44', '2018-06-28 11:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_menu`
--

CREATE TABLE `bakcodt_menu` (
  `IDMenu` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Link` text COLLATE utf8_unicode_ci NOT NULL,
  `Parent` int(11) NOT NULL,
  `Groups` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Theme` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OrderBy` int(11) NOT NULL,
  `Note` text COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakcodt_menu`
--

INSERT INTO `bakcodt_menu` (`IDMenu`, `Name`, `Link`, `Parent`, `Groups`, `Theme`, `OrderBy`, `Note`, `createDate`, `UpdateDate`) VALUES
(1, 'Trang Ch???', '/', 0, 'TopMainMenu', 'home', 1, 'noet', '2018-05-23 00:00:00', '2018-05-31 05:17:39'),
(2, 'L???ch Khai GI???ng', '/page-lich-khai-giang/', 0, 'TopMainMenu', 'home', 1, 'noet', '2018-05-23 00:00:00', '2018-05-31 05:17:39'),
(3, 'Trang Ch???', '/', 0, 'FooterMenu', 'home', 0, '', '0000-00-00 00:00:00', '2018-05-26 09:47:08'),
(10, 'S???n Ph???m', '/sanpham/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 04:37:47', '2018-05-26 09:47:08'),
(11, 'Gi???i Thi???u', 'a', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:28:56', '2018-05-26 09:47:08'),
(13, 'Ph???m M???m', '/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:29:41', '2018-05-26 09:47:08'),
(14, 'Gi???i Thi???u', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:46:26', '2018-05-26 09:57:09'),
(15, 'Ch???ng Nh???n', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:47:26', '2018-05-26 09:57:09'),
(17, 'Ch????ng Tr??nh Li??n K???t', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:49:11', '2018-05-26 09:57:09'),
(18, '??i???u kho???n v?? ??i???u ki???n', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:14', '2018-05-26 09:57:09'),
(19, 'Li??n H??? Ch??ng T??i', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:31', '2018-05-26 09:57:09'),
(20, 'Thanh to??n & Phi???u th?????ng c???a t??i', '#', 0, 'FooterMenuHoTro', 'home', 0, '', '2018-05-26 09:56:56', '2018-05-26 10:01:30'),
(21, 'Th??ng Tin ?????t H??ng', '#', 0, 'FooterMenuHoTro', 'home', 0, '', '2018-05-26 10:00:47', '2018-05-26 10:01:30'),
(22, 'Trueconf', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:13:28', '2018-05-26 10:15:16'),
(23, 'CTTV', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:08', '2018-05-26 10:15:16'),
(24, 'Ph???n M???m', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:37', '2018-05-26 10:15:16'),
(25, 'M???ng M??y T??nh', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:15:02', '2018-05-26 10:15:16'),
(26, 'Ch????ng  Tr??nh ????o T???o', '#', 0, 'TopMainMenu', 'home', 0, '', '2018-05-26 10:49:35', '2018-05-31 05:17:39'),
(27, 'Thi???t K??? Website', '#', 26, 'TopMainMenu', 'home', 0, '', '2018-05-26 10:50:16', '2018-05-31 05:17:39'),
(28, '????? H???a Qu???n C??o', '#', 26, 'TopMainMenu', 'home', 0, '', '2018-05-26 11:04:49', '2018-05-31 05:17:39'),
(29, 'Thi???t K??? Website ASP.net', '#', 27, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:41:25', '2018-05-31 05:17:39'),
(30, 'Thi???t K??? Website PHP & Mysql', '#', 27, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:55:46', '2018-05-31 05:17:39'),
(31, 'Tin H???c V??n Ph??ng', '#', 2, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:57:10', '2018-05-31 05:17:39'),
(32, 'L???p Trinh & CSDL', '#', 2, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:57:59', '2018-05-31 05:17:39'),
(33, '????? H???a ??a Truy???n Th??ng', '#', 2, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:58:51', '2018-05-31 05:17:39'),
(34, 'D???ch V???', '#', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:00:08', '2018-05-31 05:17:39'),
(35, 'Tin T???c', '/page-tin-tuc/', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:02:27', '2018-05-31 05:17:39'),
(36, 'H?????ng D???n Thanh To??n', '#', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:02:51', '2018-05-31 05:17:39'),
(37, 'Li??n H???', '/page-lien-he.html', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:03:34', '2018-05-31 05:17:39'),
(38, 'Thi???t K??? Ph???n M???m', '#', 34, 'TopMainMenu', 'home', 1, '', '2018-05-30 11:19:56', '2018-05-31 05:17:39'),
(39, '????o T???o Theo Y??u C???u', '#', 34, 'TopMainMenu', 'home', 2, '', '2018-05-30 11:20:36', '2018-05-31 05:17:39'),
(40, 'T?? v???n qu???n l?? d??? ??n', '#', 34, 'TopMainMenu', 'home', 3, '', '2018-05-30 11:21:44', '2018-05-31 05:17:39'),
(41, 'Cung C???p Thi???t B??? Ph???n M???m', '#', 34, 'TopMainMenu', 'home', 4, '', '2018-05-30 11:22:45', '2018-05-31 05:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_news`
--

CREATE TABLE `bakcodt_news` (
  `ID` varchar(20) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Alias` varchar(500) NOT NULL,
  `Summary` text NOT NULL,
  `Content` longtext NOT NULL,
  `title` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT '0',
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakcodt_news`
--

INSERT INTO `bakcodt_news` (`ID`, `PageID`, `Name`, `Alias`, `Summary`, `Content`, `title`, `keyword`, `description`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('152722501298a2d84ec6', 4, 'Gi???i Ph??p C??ng Ngh???', 'giai-phap-cong-nghe', '<p>asda</p>\r\n', '<p>sdas</p>\r\n', 'as', 'da', 's', 1, '2018-05-25 07:10:12', '/public/img/images/news/152722501298a2d84ec6/news-152722501298a2d84ec6.jpeg', 1, 1, 1),
('15272261470845a4da8a', 1, 'Easy C# - L???p Tr??nh C??n B???n D??ng C#', 'easy-c--lap-trinh-can-ban-dung-c', '<p>s???a triing qu???n l&yacute; b&agrave;i vi???t</p>\r\n', '', '', '', '', 1, '2018-05-25 07:29:07', '/public/img/images/news/2018/06/news-15272261470845a4da8a.jpeg', 0, 0, 0),
('1527226163750ec883c3', 2, 'Gi???i Ph??p', 'giai-phap', '', '', '', '', '', 0, '2018-05-25 07:29:23', '/public/img/images/news/2018/05/news-1527226163750ec883c3.jpeg', 0, 0, 0),
('1527226184cca716f43a', 5, 'D???ch V???', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:29:44', '/public/img/images/news/2018/06/news-1527226184cca716f43a.jpeg', 0, 0, 0),
('1527226196e4f12df246', 6, 'li??n h???', 'lien-he', '', '', '', '', '', 0, '2018-05-25 07:29:56', '', 0, 0, 0),
('1527226253a277f24915', 1, 'L???p Tr??nh Di ?????ng', 'lap-trinh-di-dong', '', '', '', '', '', 1, '2018-05-25 07:30:53', '/public/img/images/news/2018/06/news-1527226253a277f24915.jpeg', 0, 0, 0),
('15272262697353bebcc7', 1, 'Java Web', 'java-web', '', '', '', '', '', 1, '2018-05-25 07:31:09', '/public/img/images/news/2018/06/news-15272262697353bebcc7.jpeg', 0, 0, 0),
('1527226295fa68e41d65', 1, 'PHP N??ng Cao', 'php-nang-cao', '', '', '', '', '', 1, '2018-05-25 07:31:35', '/public/img/images/news/2018/06/news-1527226295fa68e41d65.jpeg', 0, 0, 0),
('152722633118680e5f03', 2, 'D???ch V???', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:32:11', '/public/img/images/news/2018/05/news-152722633118680e5f03.jpeg', 0, 0, 0),
('1527226362aba2aaf008', 2, 'Thi???t B???', 'thiet-bi', '', '', '', '', '', 0, '2018-05-25 07:32:42', '/public/img/images/news/2018/05/news-1527226362aba2aaf008.jpeg', 0, 0, 0),
('1527226378afcbc5f756', 2, 'N??ng L???c', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:32:58', '/public/img/images/news/2018/05/news-1527226378afcbc5f756.png', 0, 0, 0),
('152722757475630e9180', 4, 'D???ch V???', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:52:54', '/public/img/images/news/152722757475630e9180/news-152722757475630e9180.jpeg', 0, 0, 0),
('15272275895870cc78ed', 4, 'N??ng L???c', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:53:09', '/public/img/images/news/15272275895870cc78ed/news-15272275895870cc78ed.jpeg', 0, 0, 0),
('1527227617efd1fe40fb', 5, 'Thi???t V???', 'thiet-vi', '', '', '', '', '', 0, '2018-05-25 07:53:37', '/public/img/images/news/2018/06/news-1527227617efd1fe40fb.png', 0, 0, 0),
('152722762892701723eb', 5, 'N??ng L???c', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:53:48', '/public/img/images/news/2018/06/news-152722762892701723eb.png', 0, 0, 0),
('1527603697584ae26fde', 13, 'Qu???ng C??o Slide Trang Ch???', 'quang-cao-slide-trang-chu', '', '<p>as as das das</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;da</p>\r\n\r\n<p>s&nbsp;</p>\r\n\r\n<p>da</p>\r\n\r\n<p>s da</p>\r\n', '', '', '', 0, '2018-05-29 16:21:37', '/public/img/images/news/2018/06/news-1527603697584ae26fde.jpeg', 0, 0, 0),
('1527610439a5fa2a20f1', 1, 'Thi???t K??? Website Cho Doanh Nghi???p', 'thiet-ke-website-cho-doanh-nghiep', '<p>as as</p>\r\n', '<p>as as dasd</p>\r\n', 'asda', 'sda', 'sda', 1, '2018-05-29 18:13:59', '/public/img/images/news/2018/06/news-1527610439a5fa2a20f1.jpeg', 1, 1, 1),
('1527610651d1af328267', 13, 'Quang C??o Danh M???c M???c ?????nh', 'quang-cao-danh-muc-mac-dinh', '<p>sdf sdfs</p>\r\n', '<p>df sd</p>\r\n', 'sd', 'fsdf', 'sdf', 1, '2018-05-29 18:17:31', '/public/img/images/news/2018/05/news-1527610651d1af328267.jpeg', 1, 1, 1),
('15278206474048fe0f00', 5, 'Quang C??o Danh M???c M???c ?????nh', 'quang-cao-danh-muc-mac-dinh', '', '', '', '', '', 1, '2018-06-01 04:37:27', '/public/img/images/news/2018/06/news-152782064751362f22a4.jpeg', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_pages`
--

CREATE TABLE `bakcodt_pages` (
  `idPa` int(11) NOT NULL,
  `idGroup` tinyint(4) NOT NULL,
  `Name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Alias` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Des` text COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Summary` text COLLATE utf8_unicode_ci NOT NULL,
  `Content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Urlimages` text COLLATE utf8_unicode_ci NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT '1',
  `Type` int(11) NOT NULL,
  `Note` text COLLATE utf8_unicode_ci NOT NULL,
  `OrderBy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakcodt_pages`
--

INSERT INTO `bakcodt_pages` (`idPa`, `idGroup`, `Name`, `Alias`, `Title`, `Des`, `Keyword`, `Summary`, `Content`, `Urlimages`, `isShow`, `Type`, `Note`, `OrderBy`) VALUES
(1, 1, 'L???p Tr??nh Web & Database', 'lap-trinh-web-database', 'gi???i thisssss', 'about', 'hoi ngh??? truy???n hinh', '<p><strong>C&ocirc;ng ty C??? ph???n Gi???i ph&aacute;p s???c kho??? V???n Khang (VKHS)</strong>&nbsp;??&atilde; ???????c S??? K??? Ho???ch v&agrave; ?????u t?? TP HCM</p>\r\n\r\n<p>c???p Gi???y ????ng k&yacute; kinh doanh s???&nbsp;&nbsp;0314538127&nbsp;ng&agrave;y 26&nbsp;th&aacute;ng 07 n??m 2017</p>\r\n', '<h2>&nbsp;</h2>\r\n\r\n<h2><strong>GI???I THI???U RHMTW</strong></h2>\r\n\r\n<p><strong>C&ocirc;ng ty C??? ph???n Gi???i ph&aacute;p s???c kho??? V???n Khang (VKHS)</strong> ??&atilde; ???????c S??? K??? Ho???ch v&agrave; ?????u t?? TP HCM c???p Gi???y ????ng k&yacute; kinh doanh s???&nbsp;&nbsp;0314538127&nbsp;ng&agrave;y 26&nbsp;th&aacute;ng 07 n??m 2017</p>\r\n\r\n<p><strong>VKHS</strong> cung c???p c&aacute;c gi???i ph&aacute;p d??? ph&ograve;ng, ch??m s&oacute;c, b???o v??? v&agrave; n&acirc;ng cao s???c kho??? cho ng?????i d&acirc;n tr&ecirc;n c??? n?????c v???i s??? ?????ng h&agrave;nh c???a c&aacute;c c?? s??? y t??? v&agrave; c&aacute;c nh&agrave; cung ???ng d???ch v???, s???n ph???m y t??? b???ng c&aacute;ch ???ng d???ng c&ocirc;ng ngh??? th&ocirc;ng tin ti&ecirc;n ti???n th??? h??? th??? t??, mang l???i s??? ti???n d???ng v&agrave; nhi???u l???i &iacute;ch cho ng?????i s??? d???ng.</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i cung ???ng c&aacute;c gi???i ph&aacute;p s???c kho???:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Truy???n th&ocirc;ng gi&aacute;o d???c s???c kho???</strong> gi&uacute;p ng?????i d&acirc;n c&oacute; ki???n th???c v&agrave; th???c h&agrave;nh ??&uacute;ng c&aacute;c bi???n ph&aacute;p d??? ph&ograve;ng, ch??m s&oacute;c, b???o v??? v&agrave; n&acirc;ng cao s???c kho???. <a href=\"http://yttv.vn\"><em>(</em></a><em><a href=\"http://yttv.vn\">Xem th&ecirc;m</a></em><a href=\"http://yttv.vn\"><em>...)</em></a></li>\r\n	<li><strong>T?? v???n s???c kho??? t??? xa</strong> v???i c&aacute;c chuy&ecirc;n gia y t??? qua H???i ngh??? truy???n h&igrave;nh: Ng?????i d&acirc;n m???t ?????i m???t v???i chuy&ecirc;n gia ????? trao ?????i, g???i h??? s?? s???c kho???, b???nh t???t ?????n chuy&ecirc;n gia ????? ???????c t?? v???n. <em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">...)</a></em></li>\r\n	<li><strong>C???p c???u t???i ch???</strong>: ch??? c???n b???m n&uacute;t SOS tr&ecirc;n ???ng d???ng VKHS ho???c VK_SOS. H??? th???ng ??i???u h&agrave;nh t??? ?????ng s??? ?????nh v??? ng?????i g???i c???p c???u v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u c???u c???p c???u ?????n xe c???p c???u g???n nh???t ????? th???c hi???n nhi???m v??? ti???p c???n v&agrave; c???p c???u trong th???i gian ng???n nh???t. <em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">...)</a></em></li>\r\n	<li><strong>Ch???a b???nh t???i nh&agrave;</strong>: BS, ??i???u d?????ng, K??? thu???t vi&ecirc;n V???t l&yacute; tr??? li???u, K??? thu???t vi&ecirc;n Y h???c c??? truy???n ?????n nh&agrave; theo l???ch h???n ????? kh&aacute;m, ch???n ??o&aacute;n, ch??m s&oacute;c, ch???a tr??? cho b???nh nh&acirc;n. <em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">...)</a></em></li>\r\n	<li><strong>????ng k&yacute; kh&aacute;m ch???a b???nh v???i c&aacute;c c?? s??? kh&aacute;m ch???a b???nh ????? ???????c c???p s??? th??? t???, h???n gi??? v&agrave; thanh to&aacute;n t??? xa: </strong>ch??? c???n b???m n&uacute;t &ldquo;????ng k&yacute; kh&aacute;m b???nh&rdquo; v&agrave; ch???n l???a b???nh vi???n, lo???i h&igrave;nh kh&aacute;m b???nh, chuy&ecirc;n khoa kh&aacute;m&hellip; s??? ???????c h???n gi???, kh&ocirc;ng ph???i ch??? ?????i.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\">(Xem th&ecirc;m...)</a></em></li>\r\n	<li><strong>Quy???n qu???n l&yacute;, s??? d???ng h??? s?? s???c kho???, b???nh t???t: </strong>Ng?????i s??? d???ng ???????c c???p mi???n ph&iacute; 500MB tr&ecirc;n Cloud VKHS ????? t???i l&ecirc;n, l??u tr??? v&agrave; s??? d???ng h??? s?? s???c kho??? b???nh t???t c???a m&igrave;nh nh?? gi???y ra vi???n, ????n thu???c, k???t qu??? x&eacute;t nghi???m, XQ, si&ecirc;u &acirc;m, CT&hellip; <strong>H??? s?? s???c kho??? ???????c b???o m???t tuy???t ?????i</strong>, ch??? ng?????i ch??? h??? s?? m???i ???????c ph&eacute;p s??? d???ng d??? li???u c???a m&igrave;nh.</li>\r\n	<li><strong>Giao thu???c t???i nh&agrave;, l???y m???u b???nh ph???m x&eacute;t nghi???m t???i nh&agrave;</strong> theo ch??? ?????nh c???a BS ??i???u tr???.&nbsp;</li>\r\n	<li><strong>V???n chuy???n </strong>BS, ??D, KTV ?????n nh&agrave; b???nh nh&acirc;n; b???nh nh&acirc;n ?????n BV/PK ????? kh&aacute;m b???nh; b???nh nh&acirc;n t??? BV/PK v??? nh&agrave; ho???c chuy???n vi???n&hellip; b???ng nhi???u lo???i ph????ng ti???n (&ocirc; t&ocirc; c???p c???u, &Ocirc; t&ocirc; 4, 7,12 ch???, M&ocirc;t&ocirc;).<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c gi???i ph&aacute;p c&ocirc;ng ngh??? ?????u ???????c mi???n ph&iacute;</strong>.</p>\r\n\r\n<ul>\r\n	<li>Ng?????i s??? d???ng ch??? thanh to&aacute;n ph&iacute; d???ch v??? y t??? v&agrave; s???n ph???m y t??? cho nh&agrave; cung ???ng, theo gi&aacute; ch&iacute;nh th???c ???????c c&ocirc;ng b??? tr&ecirc;n trang web VKHS, VKSOS v&agrave; c???a nh&agrave; cung ???ng. Vi???c thanh to&aacute;n ???????c th???c hi???n online qua ???ng d???ng VKHS hay VK_SOS ho???c tr&ecirc;n trang web.</li>\r\n</ul>\r\n\r\n<p><strong>????? s??? d???ng c&aacute;c gi???i ph&aacute;p s???c kho???:</strong></p>\r\n\r\n<p>-T???i mi???n ph&iacute; ???ng d???ng VKHS hay VK_SOS. <em>(<a href=\"http://vkhs.vn/mobile/vkhs.apk\">T???i ???ng d???ng</a>)</em></p>\r\n\r\n<p>-L???p Th??? ng&acirc;n h&agrave;ng ?????ng th????ng hi???u Vietin &ndash; VKHS</p>\r\n\r\n<p>-V&agrave;o trang web VKHS hay VK_SOS</p>\r\n\r\n<p>-??i???n tho???i s??? &hellip;</p>\r\n\r\n<p>-S??? d???ng c&aacute;c thi???t b??? ???????c ?????t t???i c&aacute;c c?? s??? y t???. &nbsp;</p>\r\n', '/public/img/images/pages/2018/05/pages-1.jpeg', 1, 1, '{\"showhomesevice\":\"1\",\"showhomenews\":\"0\",\"ShowInHome\":\"1\",\"TypeShow\":\"mau3\",\"IsSevicer\":\"0\"}', 0),
(2, 1, 'CCTV', 'cctv', 'TIUn ', 'moa', 'sadfsd', '<p>asda</p>\r\n', '<p>asdas</p>\r\n', '/public/img/images/pages/2/pages-2.jpeg', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"1\",\"ShowInHome\":\"1\",\"TypeShow\":\"mau3\"}', 0),
(4, 1, 'Ph???n M???m', 'phan-mem', '', '', '', '', '', '/public/img/images', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"ShowInHome\":\"1\",\"TypeShow\":\"mau2\"}', 0),
(5, 1, 'M???ng M??y T??nh', 'mang-may-tinh', '', '', '', '', '', '/public/img/images/pages/2018/06/pages-5.jpeg', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\"}', 0),
(6, 1, 'Li??n h???', 'lien-he', '', '', '', '', '<p>&nbsp;</p>\r\n\r\n<h2><strong>GI???I THI???U RHMTW</strong></h2>\r\n\r\n<p><strong>C&ocirc;ng ty C??? ph???n Gi???i ph&aacute;p s???c kho??? V???n Khang (VKHS)</strong>&nbsp;??&atilde; ???????c S??? K??? Ho???ch v&agrave; ?????u t?? TP HCM c???p Gi???y ????ng k&yacute; kinh doanh s???&nbsp;&nbsp;0314538127&nbsp;ng&agrave;y 26&nbsp;th&aacute;ng 07 n??m 2017</p>\r\n\r\n<p><strong>VKHS</strong>&nbsp;cung c???p c&aacute;c gi???i ph&aacute;p d??? ph&ograve;ng, ch??m s&oacute;c, b???o v??? v&agrave; n&acirc;ng cao s???c kho??? cho ng?????i d&acirc;n tr&ecirc;n c??? n?????c v???i s??? ?????ng h&agrave;nh c???a c&aacute;c c?? s??? y t??? v&agrave; c&aacute;c nh&agrave; cung ???ng d???ch v???, s???n ph???m y t??? b???ng c&aacute;ch ???ng d???ng c&ocirc;ng ngh??? th&ocirc;ng tin ti&ecirc;n ti???n th??? h??? th??? t??, mang l???i s??? ti???n d???ng v&agrave; nhi???u l???i &iacute;ch cho ng?????i s??? d???ng.</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i cung ???ng c&aacute;c gi???i ph&aacute;p s???c kho???:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Truy???n th&ocirc;ng gi&aacute;o d???c s???c kho???</strong>&nbsp;gi&uacute;p ng?????i d&acirc;n c&oacute; ki???n th???c v&agrave; th???c h&agrave;nh ??&uacute;ng c&aacute;c bi???n ph&aacute;p d??? ph&ograve;ng, ch??m s&oacute;c, b???o v??? v&agrave; n&acirc;ng cao s???c kho???.&nbsp;<a href=\"http://yttv.vn\"><em>(</em></a><em><a href=\"http://yttv.vn\">Xem th&ecirc;m</a></em><a href=\"http://yttv.vn\"><em>...)</em></a></li>\r\n	<li><strong>T?? v???n s???c kho??? t??? xa</strong>&nbsp;v???i c&aacute;c chuy&ecirc;n gia y t??? qua H???i ngh??? truy???n h&igrave;nh: Ng?????i d&acirc;n m???t ?????i m???t v???i chuy&ecirc;n gia ????? trao ?????i, g???i h??? s?? s???c kho???, b???nh t???t ?????n chuy&ecirc;n gia ????? ???????c t?? v???n.&nbsp;<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">...)</a></em></li>\r\n	<li><strong>C???p c???u t???i ch???</strong>: ch??? c???n b???m n&uacute;t SOS tr&ecirc;n ???ng d???ng VKHS ho???c VK_SOS. H??? th???ng ??i???u h&agrave;nh t??? ?????ng s??? ?????nh v??? ng?????i g???i c???p c???u v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u c???u c???p c???u ?????n xe c???p c???u g???n nh???t ????? th???c hi???n nhi???m v??? ti???p c???n v&agrave; c???p c???u trong th???i gian ng???n nh???t.&nbsp;<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">...)</a></em></li>\r\n	<li><strong>Ch???a b???nh t???i nh&agrave;</strong>: BS, ??i???u d?????ng, K??? thu???t vi&ecirc;n V???t l&yacute; tr??? li???u, K??? thu???t vi&ecirc;n Y h???c c??? truy???n ?????n nh&agrave; theo l???ch h???n ????? kh&aacute;m, ch???n ??o&aacute;n, ch??m s&oacute;c, ch???a tr??? cho b???nh nh&acirc;n.&nbsp;<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">...)</a></em></li>\r\n	<li><strong>????ng k&yacute; kh&aacute;m ch???a b???nh v???i c&aacute;c c?? s??? kh&aacute;m ch???a b???nh ????? ???????c c???p s??? th??? t???, h???n gi??? v&agrave; thanh to&aacute;n t??? xa:&nbsp;</strong>ch??? c???n b???m n&uacute;t &ldquo;????ng k&yacute; kh&aacute;m b???nh&rdquo; v&agrave; ch???n l???a b???nh vi???n, lo???i h&igrave;nh kh&aacute;m b???nh, chuy&ecirc;n khoa kh&aacute;m&hellip; s??? ???????c h???n gi???, kh&ocirc;ng ph???i ch??? ?????i.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\">(Xem th&ecirc;m...)</a></em></li>\r\n	<li><strong>Quy???n qu???n l&yacute;, s??? d???ng h??? s?? s???c kho???, b???nh t???t:&nbsp;</strong>Ng?????i s??? d???ng ???????c c???p mi???n ph&iacute; 500MB tr&ecirc;n Cloud VKHS ????? t???i l&ecirc;n, l??u tr??? v&agrave; s??? d???ng h??? s?? s???c kho??? b???nh t???t c???a m&igrave;nh nh?? gi???y ra vi???n, ????n thu???c, k???t qu??? x&eacute;t nghi???m, XQ, si&ecirc;u &acirc;m, CT&hellip;&nbsp;<strong>H??? s?? s???c kho??? ???????c b???o m???t tuy???t ?????i</strong>, ch??? ng?????i ch??? h??? s?? m???i ???????c ph&eacute;p s??? d???ng d??? li???u c???a m&igrave;nh.</li>\r\n	<li><strong>Giao thu???c t???i nh&agrave;, l???y m???u b???nh ph???m x&eacute;t nghi???m t???i nh&agrave;</strong>&nbsp;theo ch??? ?????nh c???a BS ??i???u tr???.&nbsp;</li>\r\n	<li><strong>V???n chuy???n&nbsp;</strong>BS, ??D, KTV ?????n nh&agrave; b???nh nh&acirc;n; b???nh nh&acirc;n ?????n BV/PK ????? kh&aacute;m b???nh; b???nh nh&acirc;n t??? BV/PK v??? nh&agrave; ho???c chuy???n vi???n&hellip; b???ng nhi???u lo???i ph????ng ti???n (&ocirc; t&ocirc; c???p c???u, &Ocirc; t&ocirc; 4, 7,12 ch???, M&ocirc;t&ocirc;).<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c gi???i ph&aacute;p c&ocirc;ng ngh??? ?????u ???????c mi???n ph&iacute;</strong>.</p>\r\n\r\n<ul>\r\n	<li>Ng?????i s??? d???ng ch??? thanh to&aacute;n ph&iacute; d???ch v??? y t??? v&agrave; s???n ph???m y t??? cho nh&agrave; cung ???ng, theo gi&aacute; ch&iacute;nh th???c ???????c c&ocirc;ng b??? tr&ecirc;n trang web VKHS, VKSOS v&agrave; c???a nh&agrave; cung ???ng. Vi???c thanh to&aacute;n ???????c th???c hi???n online qua ???ng d???ng VKHS hay VK_SOS ho???c tr&ecirc;n trang web.</li>\r\n</ul>\r\n\r\n<p><strong>????? s??? d???ng c&aacute;c gi???i ph&aacute;p s???c kho???:</strong></p>\r\n\r\n<p>-T???i mi???n ph&iacute; ???ng d???ng VKHS hay VK_SOS.&nbsp;<em>(<a href=\"http://vkhs.vn/mobile/vkhs.apk\">T???i ???ng d???ng</a>)</em></p>\r\n\r\n<p>-L???p Th??? ng&acirc;n h&agrave;ng ?????ng th????ng hi???u Vietin &ndash; VKHS</p>\r\n\r\n<p>-V&agrave;o trang web VKHS hay VK_SOS</p>\r\n\r\n<p>-??i???n tho???i s??? &hellip;</p>\r\n\r\n<p>-S??? d???ng c&aacute;c thi???t b??? ???????c ?????t t???i c&aacute;c c?? s??? y t???.&nbsp;&nbsp;</p>\r\n\r\n<p><a href=\"http://{Social_Google}\">http://{Social_Google}</a></p>\r\n', '/public/img/images', 1, 0, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"IsSevicer\":\"0\"}', 0),
(9, 1, 'Gi???i Thi???u', 'gioi-thieu', 'sdfsd', 'qasd as', 'asd as', '<p>nguye</p>\r\n', '<h2>____Mau1Title___</h2>\r\n\r\n<p>___Mau1Summary___</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n', 'asd a', 1, 0, '{\"home\":\"1\",\"ShowInHome\":\"0\",\"TypeShow\":\"mau2\"}', 0),
(10, 1, 'Qu???ng C??o Slide Trang Ch???', 'quang-cao-slide-trang-chu', 'asda', 'sda', 'sdas', '', '', '/public/img/images/pages/2018/05/pages-10.jpeg', 1, 1, '', 1),
(13, 0, 'C??c D??? ??n ???? Th???c Hi???n', 'cac-du-an-da-thuc-hien', '', '', '', '', '', '', 0, 1, '{\"ShowInHome\":\"1\",\"TypeShow\":\"mau4\"}', 0),
(16, 0, 'Quang C??o Danh M???c M???c ?????nh', 'quang-cao-danh-muc-mac-dinh', 'asd', 'asd', 'ad', '', '', '', 0, 0, '{\"ShowInHome\":\"0\",\"TypeShow\":\"mau2\"}', 0),
(19, 1, 'Tin T???c', 'tin-tuc', '', '', '', '', '', '', 0, 0, '{\"IsSevicer\":\"0\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_product`
--

CREATE TABLE `bakcodt_product` (
  `ID` varchar(50) NOT NULL DEFAULT '0',
  `Username` varchar(200) NOT NULL,
  `catID` int(11) NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `Alias` varchar(200) NOT NULL,
  `Price` decimal(15,4) NOT NULL,
  `oldPrice` decimal(15,4) DEFAULT '0.0000',
  `Summary` text,
  `Content` text,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `DateCreate` datetime DEFAULT NULL,
  `Number` int(11) DEFAULT '0',
  `Note` varchar(500) DEFAULT NULL,
  `BuyTimes` int(11) DEFAULT '0',
  `Views` int(11) DEFAULT '0',
  `isShow` tinyint(4) NOT NULL,
  `Serial` int(11) NOT NULL,
  `lang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakcodt_product`
--

INSERT INTO `bakcodt_product` (`ID`, `Username`, `catID`, `nameProduct`, `Alias`, `Price`, `oldPrice`, `Summary`, `Content`, `UrlHinh`, `DateCreate`, `Number`, `Note`, `BuyTimes`, `Views`, `isShow`, `Serial`, `lang`) VALUES
('1', '0', 47, 'betaglucan-400g', '', '0.0000', '0.0000', 'c???p nh???t', 'asd asdaasass', 'betaglucan-500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 11, 1, 0, 'vi'),
('101', '1', 47, 'BIO VET 500g', '', '0.0000', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- M??y t??nh.<br />- L???ch.<br />- ?????ng h??? th??? gi???i.<br />- Quay s??? gi???ng n??i.<br />- Ghi ??m.<br />- Loa speaker.</p>', '', 'BIO VET 500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 0, 'vi'),
('102', '1', 48, 'BKC V80', '', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Ki???u d??ng m???nh m??? v???i b??n ph??m Qwerty</li>\r\n<li>M??y ???nh 1.3 MP, h??? tr??? quay phim</li>\r\n<li>M??y nghe nh???c, xem phim MP3/eAAC+/3GP/MP4</li>\r\n<li>????i FM t??ch h???p, jack tai nghe 3.5mm</li>\r\n<li>Ghi ??m FM</li>\r\n<li>K???t n???i Bluetooth, USB, Facebook, Twitter apps </li>\r\n</ul>', '', 'BKC V80.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('1031', '1', 48, 'BZT VET', '', '0.0000', '0.0000', '<p>- M??y t??nh.<br />- L???ch.<br />- ?????ng h??? th??? gi???i.<br />- Quay s??? gi???ng n??i.</p>', '', 'BZT VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('104', '1', 47, 'CLEA VET', '', '790000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thi???t k??? ????n gi???n, tr??? trung</li>\r\n<li>M??y ???nh VGA</li>\r\n<li>H??? tr??? th??? nh??? ngo??i</li>\r\n<li>M??y nghe nh???c MP3</li>\r\n<li>????i FM t??ch h???p</li>\r\n<li>Ch??? ????? ????n pin </li>\r\n</ul>', '', 'CLEA VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('105', '1', 48, 'dr beta 500ml', '', '0.0000', '0.0000', '<p>- H??? tr??? Java MIDP 2.0<br />- FM radio t??ch h???p<br />- M??y nghe nh???c k??? thu???t s??? h??? tr??? c??c d???ng th???c MP3/AAC/AAC+/MPEG4<br />- T??? ??i???n T9 ??o??n tr?????c v??n b???n nh???p<br />- Ch???c n??ng t??? ch???c<br />- M??y ghi ??m t??ch h???p</p>', '', 'dr beta 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 0, 'vi'),
('106', '1', 4, 'fasfive 500g', '', '499000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thi???t k??? nh??? g???n ch???c ch???n</li>\r\n<li>B&agrave;n ph&iacute;m ch???ng b???i</li>\r\n<li>Nh???c chu&ocirc;ng ??a &acirc;m </li>\r\n<li>Ch???c n??ng ??&egrave;n pin</li>\r\n<li>Pin b???n b??? </li>\r\n</ul>', NULL, 'fasfive 500g.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 5, 1, 0, 'vi'),
('107', '1', 4, 'green v007 1kg', '', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>H??? tr??? 2 Sim 2 S??ng online</li>\r\n<li>M??y ???nh 2.0 MP, h??? tr??? quay phim</li>\r\n<li>M??y nghe nh???c MP3, AAC</li>\r\n<li>????i FM t??ch h???p</li>\r\n<li>K???t n???i Bluetooth, USB </li>\r\n</ul>', '', 'green v007 1kg.jpg', '0000-00-00 00:00:00', 100, '', 0, 3, 1, 0, 'vi'),
('109', '1', 4, 'KA WATER 123', 'ka-water-123', '0.0000', '0.0000', '<p>asda sdas adsdaad as das das dasd asdas ds</p>\r\n', '', '/public/img/images/sanpham/109/109-1526967098324-0.jpeg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('111', '1', 3, 'LIVER VET 500G', 'liver-vet-500g', '234234232.0000', '0.0000', '<ul>\r\n	<li>M&agrave;n h&igrave;nh Wide r???ng 2.4 inches</li>\r\n	<li>H??? tr??? 2 Sim 2 S&oacute;ng online</li>\r\n	<li>M&aacute;y ???nh 2.0 MP, h??? tr??? Webcam</li>\r\n	<li>M&aacute;y nghe nh???c, xem phim</li>\r\n	<li>H??? tr??? Wifi, yahoo, Opera</li>\r\n	<li>??&agrave;i FM t&iacute;ch h???p</li>\r\n</ul>\r\n', '<p>qu???n tri unasd s</p>\r\n', '/public/img/images/sanpham/111/111-1526961482.jpeg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('112', '1', 3, 'liver water 500ml', 'liver-water-500ml', '1213231231.0000', '0.0000', '<p><strong>K-Touch B896 - ???n t?????ng v???i ch???t l?????ng &acirc;m thanh</strong><br />\r\n- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng<br />\r\n- Camera VGA, h??? tr??? quay phim<br />\r\n- M&aacute;y nghe nh???c MP3, AAC<br />\r\n- L???c x&iacute; ng???u</p>\r\n', '', 'liver water 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('113', '1', 4, 'PREMAX 5KG', '', '1489000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty ?????y d??? d&agrave;ng nh???n tin</li>\r\n<li>H??? tr??? 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nh???c, xem phim MP3, 3GP</li>\r\n<li>??&agrave;i FM t&iacute;ch h???p, Bluetooth</li>\r\n<li>Yahoo chat, tr&igrave;nh duy???t web Opera</li>\r\n<li>Ch???c n??ng ch???n tin nh???n, cu???c g???i </li>\r\n</ul>', NULL, 'PREMAX 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('114', '1', 4, 'RS-alum v06', '', '0.0000', '0.0000', '<p><strong><span style=\"color: #ff0000;\">K-Tuoch D173 - ??i???n tho???i 2 Sim</span></strong><br />- H??? tr??? 2 khe g???n Sim (1 s&oacute;ng)<br />- Thi???t k??? th???i trang, m&agrave;n h&igrave;nh c???m ???ng<br />- Camera VGA, h??? tr??? quay phim<br />- C???m ???ng l???c tay chuy???n nh???c, h&igrave;nh n???n<br />- C&oacute; ??&egrave;n c???c ti???p ????? soi ti???n gi???</p>', NULL, 'RS-alum v06.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('115', '1', 4, 'RS-ankavet 5kg', '', '0.0000', '0.0000', '<p>- PDA h??? tr??? m???ng 3G v???i</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> WCDMA/EVDO  <br />- H??? ??i???u h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- H??? tr??? xem tivi<br />- Camera 2.0 MP, h??? tr??? quay phim<br />- K???t n???i interet v???i Wifi, truy???n t???i d??? li???u 3G<br />- K???t n???i Bluetooth, USB, GPRS</div>', NULL, 'RS-ankavet 5kg.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('116', '1', 3, 'RS-DRT VET 1KG', 'rsdrt-vet-1kg', '1389000.0000', '0.0000', '<ul>\r\n	<li>H??? tr??? 2 Sim 2 S&oacute;ng online</li>\r\n	<li>M&aacute;y ???nh VGA, h??? tr??? webcam</li>\r\n	<li>Ch???c n??ng xem Tivi Analog</li>\r\n	<li>Nghe nh???c, xem phim MP3, MP4, 3GP</li>\r\n	<li>??&agrave;i FM t&iacute;ch h???p</li>\r\n	<li>Ch???n cu???c g???i, ch???n tin nh???n, chat Yahoo</li>\r\n	<li>L???c tay ?????i nh???c, h&igrave;nh n???n</li>\r\n</ul>\r\n', '', '/public/img/images/sanpham/116/116-15274729971715-2.jpeg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('117', '1', 4, 'RS-KA C 25 - 5KG', '', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'RS-KA C 25 - 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('12312312', 'admin', 3, 'nguyen van ?????', 'nguyen-van-do', '23423423.0000', '32.0000', '<p>AS asA Sa as asd&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>d a</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d a</p>\r\n\r\n<p>sd</p>\r\n\r\n<p>as</p>\r\n', '<p>asd asdas&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>d&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>da</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d a</p>\r\n\r\n<p>sd</p>\r\n\r\n<p>&nbsp;as</p>\r\n\r\n<p>d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>das</p>\r\n', '', '0000-00-00 00:00:00', 1, 'as das', 0, 0, 1, 0, 'vi'),
('2', '1', 3, 'SUPER C V25 1KG', '', '12311111.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />\r\n- Xem Tivi Analog<br />\r\n- Camera 1.3 MP, h??? tr??? quay phim<br />\r\n- M&aacute;y nghe nh???c MP3, MP4<br />\r\n- ??&agrave;i FM<br />\r\n- K???t n???i Bluetooth, USB</p>\r\n', '<p>noi dung</p>\r\n', 'SUPER C V25 1KG.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('3', '1', 4, 'super oil v08', '', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'super oil v08.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('5', '1', 4, 'white BACK V01', '', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'white BACK V01.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('6', '1', 4, 'white V001', '', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'white V001.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('7', '1', 4, 'yuca v9999 1 l??t', '', '0.0000', '0.0000', '<p>- Thi???t k??? th???i trang v???i m&agrave;n h&igrave;nh c???m ???ng r???ng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, h??? tr??? quay phim<br />- M&aacute;y nghe nh???c MP3, MP4<br />- ??&agrave;i FM<br />- K???t n???i Bluetooth, USB</p>', NULL, 'yuca v9999 1 l??t.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('gis-2222', 'admin', 3, 's???m ph???m m???i', 'sam-pham-moi', '1111111.0000', '12312312312.0000', '<p>as dasd as</p>\r\n', '<p>as das das</p>\r\n', '', '0000-00-00 00:00:00', 1, 'asdas', 0, 0, 1, 0, 'vi'),
('gtvt-111', 'admin', 3, 'them san pham', 'them-san-pham', '23423423.0000', '23423.0000', '<p>23423 23 423</p>\r\n', '<p>234 23423</p>\r\n', '', '0000-00-00 00:00:00', 1, '23423', 0, 0, 1, 0, 'vi'),
('kA9Ev5zd', 'PGV_EXPRess', 8, 'asdasdas', '', '0.0000', '0.0000', 'asd asd a', 'asd asd ', 'kA9Ev5zd.jpeg', '2015-12-11 04:28:32', 1, '', 0, 0, 1, 0, 'vi'),
('ts-001', 'admin', 2, 'Nguyen vanfo ', 'nguyen-vanfo', '0.0000', '0.0000', '<p>asdas</p>\r\n', '<p>asda</p>\r\n', '', '0000-00-00 00:00:00', 1, 'asdas', 0, 0, 0, 0, 'vi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakcodt_admin`
--
ALTER TABLE `bakcodt_admin`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `bakcodt_adv`
--
ALTER TABLE `bakcodt_adv`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakcodt_categories`
--
ALTER TABLE `bakcodt_categories`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `bakcodt_form`
--
ALTER TABLE `bakcodt_form`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakcodt_home`
--
ALTER TABLE `bakcodt_home`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakcodt_infor`
--
ALTER TABLE `bakcodt_infor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakcodt_menu`
--
ALTER TABLE `bakcodt_menu`
  ADD PRIMARY KEY (`IDMenu`);

--
-- Indexes for table `bakcodt_news`
--
ALTER TABLE `bakcodt_news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakcodt_pages`
--
ALTER TABLE `bakcodt_pages`
  ADD PRIMARY KEY (`idPa`);

--
-- Indexes for table `bakcodt_product`
--
ALTER TABLE `bakcodt_product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakcodt_adv`
--
ALTER TABLE `bakcodt_adv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `bakcodt_categories`
--
ALTER TABLE `bakcodt_categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `bakcodt_form`
--
ALTER TABLE `bakcodt_form`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bakcodt_home`
--
ALTER TABLE `bakcodt_home`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bakcodt_infor`
--
ALTER TABLE `bakcodt_infor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bakcodt_menu`
--
ALTER TABLE `bakcodt_menu`
  MODIFY `IDMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `bakcodt_pages`
--
ALTER TABLE `bakcodt_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
