-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2023 at 12:48 PM
-- Server version: 10.3.37-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tefdqcgmhosting_donghoxac`
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
  `Urlimages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bakcodt_admin`
--

INSERT INTO `bakcodt_admin` (`Username`, `Password`, `Random`, `Name`, `Email`, `Phone`, `Address`, `Note`, `Groups`, `Urlimages`) VALUES
('admin', '71dd07494c5ee54992a27746d547e25dee01bd97', '123456', 'Nguyen van do', 'namdong92@gmail.com', '01672779917', 'Nam dong\r\n', '', 1, ''),
('bvrhm', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 1, ''),
('bvrhm1', 'f3f0dd14c594fb0f1a6a3ce1c817a51229f15a79', '123eds', 'asdaasaasd as', 'asd sdf', 'as asd323423423', 'as asd aZS asdsaasdas', '4', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_adv`
--

CREATE TABLE `bakcodt_adv` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Content` text NOT NULL,
  `Attribute` text NOT NULL,
  `DataAttribute` text NOT NULL,
  `Group` varchar(20) NOT NULL,
  `Urlimages` text NOT NULL,
  `Link` text NOT NULL,
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
(33, 'Qu???ng C??o Slide Trang Ch???', '            PH???M H??NG CHO B???N S??? L???A CH???N HO??N H???O', '{\"background\":\"#FEC216\"}', '[{\"key\":\"background\",\"value\":\"#FEC216\"}]', 'homeslide', '/public/img/images/adv/2021/06/adv-33.jpeg', '#', 1, '2018-05-18', '2021-06-04'),
(38, 'DanhMucNoiBat', '', '{}', '[]', 'danh-muc-noi-bat', '', '', 0, '2018-07-04', '2018-07-04'),
(43, 'Qu???n C??o  Slide B??n Ph???i', '', '{}', '[]', 'quan-cao-slide-ben-p', '', '', 0, '2018-07-04', '2018-07-04'),
(47, 'Qu???n C??o D?????i Ch??nh S??ch', '', '{}', '[]', 'quan-cao-duoi-chinh-', '', '', 0, '2018-07-04', '2018-07-04'),
(50, 'Ch??nh S??ch Cu???i Trang', '', '{}', '[]', 'chinh-sach-cuoi-tran', '', '', 0, '2018-07-04', '2018-07-04');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bakcodt_categories`
--

INSERT INTO `bakcodt_categories` (`catID`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Serial`, `Lang`) VALUES
(98, '?????ng H??? Pin', 'dong-ho-pin', '/dong-ho-pin', '', 0, '', 1, 0, 'vi'),
(99, '?????ng H??? C?? C??t', 'dong-ho-co-cot', '/dong-ho-co-cot', '', 0, '', 1, 0, 'vi'),
(100, '?????ng H??? C?? T??? ?????ng', 'dong-ho-co-tu-dong', '/dong-ho-co-tu-dong', '', 0, '', 1, 0, 'vi'),
(101, '?????ng H??? ??i???n T???', 'dong-ho-dien-tu', '/dong-ho-dien-tu', '', 0, '', 1, 0, 'vi'),
(102, '?????ng H??? Th??ng Minh', 'dong-ho-thong-minh', '/dong-ho-thong-minh', '', 0, '', -1, 0, 'vi'),
(103, '?????ng H??? ????i', 'dong-ho-doi', '/dong-ho-doi', '', 0, '', -1, 0, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_categoriesbak`
--

CREATE TABLE `bakcodt_categoriesbak` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bakcodt_categoriesbak`
--

INSERT INTO `bakcodt_categoriesbak` (`catID`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Serial`, `Lang`) VALUES
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
(23, 'S???n ph???m th???y s???n', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', -1, 0, 'vi'),
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
(116, 'Th???y s???n ch??n nu??i', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', -1, 0, 'vi'),
(117, 'Th???y s???n bi???n', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', -1, 0, 'vi'),
(118, 'Con gi???ng', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', -1, 0, 'vi'),
(119, 'M??y m??c', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', -1, 1, 'vi'),
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
-- Table structure for table `bakcodt_content`
--

CREATE TABLE `bakcodt_content` (
  `id` int(5) NOT NULL COMMENT 'system',
  `type` int(3) DEFAULT 0 COMMENT 'system',
  `catid` int(5) DEFAULT 0 COMMENT 'system',
  `userid` int(5) DEFAULT -1 COMMENT 'system',
  `icon` varchar(255) DEFAULT NULL COMMENT 'system',
  `image` varchar(255) DEFAULT NULL COMMENT 'system',
  `file_extra` text DEFAULT NULL COMMENT 'system',
  `fields_extra` text DEFAULT NULL COMMENT 'system',
  `active` tinyint(1) DEFAULT 1 COMMENT 'system',
  `order_id` int(5) DEFAULT 0 COMMENT 'system',
  `web_keyword` varchar(255) DEFAULT NULL COMMENT 'system',
  `web_desc` text DEFAULT NULL COMMENT 'system',
  `date` date DEFAULT NULL COMMENT 'system',
  `timestamp` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'system',
  `visited` int(6) DEFAULT 0 COMMENT 'system',
  `featuredon` varchar(255) DEFAULT NULL COMMENT 'system',
  `productHot` tinyint(1) DEFAULT 0,
  `productSaleOff` varchar(255) DEFAULT NULL,
  `commodityStatus` text DEFAULT NULL,
  `idBrand` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Dynamic content';

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_content_ln`
--

CREATE TABLE `bakcodt_content_ln` (
  `id` int(5) NOT NULL COMMENT 'system',
  `ln` varchar(2) NOT NULL COMMENT 'system',
  `ln_fields_extra` text DEFAULT NULL COMMENT 'system',
  `ln_icon` varchar(255) DEFAULT NULL COMMENT 'system',
  `ln_image` varchar(255) DEFAULT NULL COMMENT 'system',
  `sef_url` varchar(255) DEFAULT NULL COMMENT 'system',
  `name` varchar(255) DEFAULT NULL,
  `intro` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `priceSale` text DEFAULT NULL,
  `priceBuy` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `mobilePhone` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `codePro` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_form`
--

CREATE TABLE `bakcodt_form` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Content` text NOT NULL,
  `Config` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_home`
--

CREATE TABLE `bakcodt_home` (
  `ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Content` text NOT NULL,
  `Theme` varchar(20) NOT NULL,
  `Summary` text NOT NULL,
  `Icon` varchar(200) NOT NULL,
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
  `Name` varchar(200) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Content` text NOT NULL,
  `Config` text NOT NULL,
  `dataConfig` text NOT NULL,
  `createDate` datetime NOT NULL DEFAULT current_timestamp(),
  `modifyDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakcodt_infor`
--

INSERT INTO `bakcodt_infor` (`ID`, `Name`, `Title`, `Content`, `Config`, `dataConfig`, `createDate`, `modifyDate`) VALUES
(2, 'SDT', 'S??? ??i???n Tho???i', '0939726679', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:41:20', '2018-06-21 23:41:20'),
(3, 'DiaChi', '?????a Ch???', '202 Nguy???n Xi???n, P Long Th???nh M???, Qu???n 9, HCM', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:45:33', '2018-06-21 23:45:33'),
(5, 'WebName', 'Website', '?????ng H??? X??c ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:01:09', '2018-06-22 00:01:09'),
(8, 'Logo', 'H??nh Logo', '/public/img/images/information/img-16227782261714-8.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2018-06-22 00:03:46', '2018-06-22 00:03:46'),
(10, 'linkFacebook', 'Page Facebook', 'https://www.facebook.com/goccuvoi/', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:14', '2018-06-22 00:06:14'),
(11, 'linkGoogle', 'Link Google', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:40', '2018-06-22 00:06:40'),
(12, 'linkTwitter', 'twitter', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:16', '2018-06-22 00:07:16'),
(13, 'linkPinterest', 'pinterest', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:18', '2018-06-22 00:07:18'),
(19, 'Title', 'Ti??u ????? Trang', '?????ng H??? X??c ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:53:07', '2018-06-22 01:53:07'),
(20, 'Des', 'M?? T??? Trang', '?????ng H??? X??c ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:55:35', '2018-06-22 01:55:35'),
(23, 'Keyword', 'T??? Kh??a', '?????ng H??? X??c ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 21:37:45', '2018-06-27 21:37:45'),
(24, 'Auth', 'Ng?????i Ph??t Tri???n', '', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 22:09:29', '2018-06-27 22:09:29'),
(26, 'Hotline', 'HOTLINE', '0939726679', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:10:14', '2018-06-28 11:10:14'),
(27, 'lblThongTinCongty', 'title Th??ng Tin C??ng Ty', 'Th??ng Tin C??ng Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:12:32', '2018-06-28 11:12:32'),
(28, 'lblDichVu', 'title D???ch V???', 'D???ch V???', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:13:34', '2018-06-28 11:13:34'),
(29, 'lblCongTy', 'title C??ng Ty', 'C??ng Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:14', '2018-06-28 11:14:14'),
(30, 'lblHoTro', 'title H??? Tr???', 'H??? Tr???', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:49', '2018-06-28 11:14:49'),
(31, 'Email', 'Email', 'vongoctuongvi13@gmail.com', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:15:44', '2018-06-28 11:15:44'),
(32, 'lblHotline', 'lbl Hotline', 'Hotline', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:05:13', '2018-07-04 19:05:13'),
(33, 'lblEmail', 'lbl Email', 'Email', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:01', '2018-07-04 19:06:01'),
(34, 'lblPhone', 'lbl Phone', 'S??T', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:39', '2018-07-04 19:06:39'),
(35, 'lblAddress', 'lbl ?????a Ch???', '?????a Ch???', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:40', '2018-07-04 19:06:40'),
(36, 'lblNhapMail', 'lbl nh???p Email', 'Nh???p Email ????? nh???n th??ng tin', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:20:05', '2018-07-04 19:20:05'),
(37, 'Icon', 'Icon', '/public/img/images/information/img-1622778233988-37.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2021-05-11 17:43:32', '2021-05-11 17:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_location`
--

CREATE TABLE `bakcodt_location` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Parent` varchar(10) NOT NULL,
  `Lang` varchar(5) NOT NULL,
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_menu`
--

CREATE TABLE `bakcodt_menu` (
  `IDMenu` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Link` text NOT NULL,
  `Parent` int(11) NOT NULL,
  `Groups` varchar(20) NOT NULL,
  `Theme` varchar(20) NOT NULL,
  `OrderBy` int(11) NOT NULL,
  `Note` text NOT NULL,
  `createDate` datetime NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakcodt_menu`
--

INSERT INTO `bakcodt_menu` (`IDMenu`, `Name`, `Link`, `Parent`, `Groups`, `Theme`, `OrderBy`, `Note`, `createDate`, `UpdateDate`) VALUES
(3, 'Trang Ch???', '/', 0, 'FooterMenu', 'home', 0, '', '0000-00-00 00:00:00', '2021-05-11 10:55:40'),
(10, 'S???n Ph???m', '/sanpham/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 04:37:47', '2021-05-11 10:55:40'),
(11, 'Gi???i Thi???u', 'a', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:28:56', '2021-05-11 10:55:40'),
(13, 'Ph???m M???m', '/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:29:41', '2021-05-11 10:55:40'),
(14, 'Gi???i Thi???u', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:46:26', '2021-05-19 13:50:32'),
(15, 'Tuy???n D???ng', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:47:26', '2021-05-19 13:50:32'),
(17, 'Tin T???c', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:49:11', '2021-05-19 13:50:32'),
(18, 'Li??n H???', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:14', '2021-05-19 13:50:32'),
(20, 'Gi??? h??ng', '#', 0, 'FooterMenuHoTro', 'home', 1, '', '2018-05-26 09:56:56', '2021-05-17 02:12:41'),
(21, '?????i  Tr??? S???n Ph???m', '#', 0, 'FooterMenuHoTro', 'home', 2, '', '2018-05-26 10:00:47', '2021-05-17 02:12:41'),
(23, 'Gi???i thi???u', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:08', '2018-10-15 14:56:57'),
(24, 'Chinh s??ch c??ng ty', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:37', '2018-10-15 14:56:57'),
(46, 'H?????ng d???n thanh l?? k?? g???i', '#', 0, 'TopHeaderMenu', 'home', 1, '', '2021-05-11 10:55:09', '2021-05-23 12:54:52'),
(47, 'K??? t???ng k???t ', '#', 0, 'TopHeaderMenu', 'home', 0, '', '2021-05-11 10:55:45', '2021-05-23 12:54:52'),
(48, 'C??u H???i Th?????ng G???p', '#', 0, 'TopHeaderMenu', 'home', 0, '', '2021-05-11 10:56:01', '2021-05-23 12:54:52'),
(49, 'fa fa-facebook', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:57:20', '2021-05-11 10:58:33'),
(50, 'fa fa-instagram', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:05', '2021-05-11 10:58:33'),
(51, 'fa fa-twitter', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:06', '2021-05-11 10:58:33'),
(52, 'fa fa-google-plus', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:07', '2021-05-11 10:58:33'),
(56, 'Giao h??ng t???i TPHCM', '#', 0, 'FooterMenuHoTro', 'home', 3, '', '2021-05-17 02:12:19', '2021-05-17 02:12:41'),
(57, 'Giao h??ng to??n qu???c', '#', 0, 'FooterMenuHoTro', 'home', 4, '', '2021-05-17 02:12:20', '2021-05-17 02:12:41'),
(60, '?????ng H??? Pin', '/dong-ho-kim', 0, 'TopMainMenu', 'home', 1, '', '2021-05-23 12:18:33', '2021-06-19 12:11:21'),
(1622781792, '?????ng H??? ??i???n T???', '/dong-ho-the-thao', 0, 'TopMainMenu', 'home', 4, '', '2021-06-04 11:43:12', '2021-06-19 12:11:21'),
(1622781809, '?????ng H??? C?? T??? ?????ng', '/dong-ho-dien-tu', 0, 'TopMainMenu', 'home', 3, '', '2021-06-04 11:43:29', '2021-06-19 12:11:21'),
(1622781827, '?????ng H??? C?? C??t', '/dong-ho-doi', 0, 'TopMainMenu', 'home', 2, '', '2021-06-04 11:43:47', '2021-06-19 12:11:21'),
(1624079469, 'Tranh Ch???', '/', 0, 'TopMainMenu', 'home', 0, '', '2021-06-19 12:11:09', '2021-06-19 12:11:21');

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
  `AnHien` tinyint(4) NOT NULL DEFAULT 1,
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text DEFAULT NULL,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT 0,
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_order`
--

CREATE TABLE `bakcodt_order` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `TotalPrice` double NOT NULL,
  `CodeOrder` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Status` int(10) NOT NULL,
  `Note` text NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_orderdetail`
--

CREATE TABLE `bakcodt_orderdetail` (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `IdProduct` varchar(50) NOT NULL,
  `CodeOrder` varchar(20) NOT NULL,
  `Price` double NOT NULL,
  `Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bakcodt_pages`
--

CREATE TABLE `bakcodt_pages` (
  `idPa` int(11) NOT NULL,
  `idGroup` tinyint(4) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Alias` varchar(500) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Des` text NOT NULL,
  `Keyword` varchar(255) NOT NULL,
  `Summary` text NOT NULL,
  `Content` longtext NOT NULL,
  `Urlimages` text NOT NULL,
  `isShow` tinyint(4) NOT NULL DEFAULT 1,
  `Type` int(11) NOT NULL,
  `Note` text NOT NULL,
  `OrderBy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakcodt_pages`
--

INSERT INTO `bakcodt_pages` (`idPa`, `idGroup`, `Name`, `Alias`, `Title`, `Des`, `Keyword`, `Summary`, `Content`, `Urlimages`, `isShow`, `Type`, `Note`, `OrderBy`) VALUES
(6, 1, 'Li??n h???', 'lien-he', '', '', '', '', '<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>C&ocirc;ng Ty TNHH Th????ng M???i&nbsp;</strong><strong>Xu???t Nh???p Kh???u&nbsp;&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2330.2097562087915!2d106.6758528961976!3d10.816664243356126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175291e1e83a2c7%3A0x481895d69bdf366d!2sChung+C%C6%B0+D-eyes!5e0!3m2!1svi!2s!4v1534852764599\" style=\"border:0\" width=\"600\"></iframe></span></p>\r\n', '/public/img/images', 1, 0, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"IsSevicer\":\"0\"}', 0),
(9, 1, 'H?????ng d???n thanh l?? k?? g???i', 'huong-dan-thanh-ly-ky-gui', 'H?????ng d???n thanh l?? k?? g???i\r\n\r\n', ' ', ' ', '<p><strong>CH&Iacute;NH S&Aacute;CH K&Yacute; G???I</strong></p>\r\n\r\n<p><strong>CH&Agrave;O C&Aacute;C B???N ?????N V???I GO??C VOI&nbsp;</strong></p>\r\n\r\n<p><strong>K&yacute; g???i thanh ly?? l&agrave; g&igrave; ?</strong></p>\r\n\r\n<p>K&yacute; g???i thanh ly?? ????n gi???n l&agrave; b???n mang m&oacute;n ????? m&igrave;nh c???n thanh l&yacute;: Qu???n &aacute;o c?? c&ograve;n m???i nh??ng b???n kh&ocirc;ng d&ugrave;ng n???a do mua nh???m size, nh???m m&agrave;u, mu???n d???n kho ?????, ho???c ????n gi???n l&agrave; b???n kh&ocirc;ng th&iacute;ch n???a. Phu?? h????p v????i nhu c&acirc;??u thay ??&ocirc;??i th????i trang li&ecirc;n tu??c cu??a chi?? em phu?? n????</p>\r\n\r\n<p>Ca??c chi??&nbsp;??&ecirc;?? l&acirc;u trong tu?? nh????ng qu&acirc;??n a??o kh&ocirc;ng du??ng, se?? bi?? &acirc;??m mo??c&nbsp;v&ecirc;?? l&acirc;u th????i gian se?? kh&ocirc;ng co??n gia?? tri?? n????a, ha??y quen v????i vi&ecirc;??c thanh ly?? qu&acirc;??n a??o ??em la??i l????i i??ch kinh t&ecirc;??&nbsp;cho ba??n th&acirc;n va?? ng??????i xung quanh c&acirc;??n chu??ng h??n&nbsp;a??&nbsp;</p>\r\n\r\n<p>Shop lu&ocirc;n c&ocirc;?? g????ng ba??n nhanh&nbsp;ca??c sa??n ph&acirc;??m cu??a kha??ch theo nhi&ecirc;??u k&ecirc;nh:</p>\r\n\r\n<p><strong>K&ecirc;nh b&aacute;n h&agrave;ng:&nbsp;</strong>S???n ph???m c???a c&aacute;c b???n s??? ???????c shop ch???p ???nh b&aacute;n tr&ecirc;n c&aacute;c c&ocirc;ng c???:<br />\r\n- Online nh?? Facebook Fanpage, Website<br />\r\n- Offline t???i ?????a ch??? shop: Go??c Voi &ndash; Vinhome Grand Park Qu&acirc;??n 9 | To??a S2.02</p>\r\n\r\n<p>- ??i??a chi??: 202 Nguy&ecirc;??n Xi&ecirc;??n, ph??????ng Long Tha??nh My??, Qu&acirc;??n 9, HCM</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;CU?? v????i mi??nh nh??ng la??i M????I v????i ng??????i kha??c</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;La?? n??i thanh ly??&nbsp;qu&acirc;??n a??o quen thu&ocirc;??c</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;L????i i??ch kinh t&ecirc;?? cho ng??????i mua va?? ng??????i ba??n</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;Ba??o v&ecirc;?? m&ocirc;i tr??????ng gia??m l??????ng khi?? tha??i t???? ph&acirc;n hu??y ??&ocirc;?? th????i trang</p>\r\n\r\n<h2><strong>C&aacute;ch th???c g???i ?????:</strong></h2>\r\n\r\n<p><strong>B??????c 1:</strong>&nbsp; So???n ????? c???n thanh l&yacute; ??&uacute;ng ti&ecirc;u chu???n</p>\r\n\r\n<p><strong>B??????c 2:</strong>&nbsp;Cho??n ca??ch g????i</p>\r\n\r\n<p>&bull; G???i tr???c ti???p</p>\r\n\r\n<p>&bull; G???i b??u ki???n (phu?? h????p cho mu??a di??ch va?? kha??ch ???? xa)</p>\r\n\r\n<p>Ch???p ???nh shop ch???n v&agrave; tho??? thu???n gi&aacute; t???i Fanpage tr?????c khi g???i</p>\r\n\r\n<p>Shop s??? x??? l&yacute; h&agrave;ng v&agrave; g???i x&aacute;c nh???n ho??a ????n k&yacute; g???i trong v&ograve;ng 2-3 ng&agrave;y</p>\r\n\r\n<p>Gi&aacute; s???n ph???m&nbsp;s??? do kha??ch t??? ?????nh gi&aacute; tr??????c (kha??ch tham kha??o tr??????c gia?? ca??c m&acirc;??u ??ang ba??n ta??i shop ??&ecirc;?? ??i??nh gia?? h????p ly??) n&ecirc;??u c&acirc;??n thay ??&ocirc;??i shop se?? t?? v&acirc;??n la??i gia?? phu?? h????p</p>\r\n\r\n<p><strong>B??????c 3:</strong></p>\r\n\r\n<p>&bull; ????? ph&ugrave; h???p ??? nh???n b&aacute;n</p>\r\n\r\n<p>&bull; ????? kh&ocirc;ng ??&uacute;ng ti&ecirc;u chu???n k&yacute; g???i ??? kh&aacute;ch nh???n l???i</p>\r\n\r\n<p>&bull; Th???i gian k&yacute; g???i&nbsp;trung b&igrave;nh l&agrave;&nbsp;t???&nbsp;50 ?????n 70&nbsp;ng&agrave;y tu??y chu ky?? ba??n&nbsp;(s??? c&oacute; ho??a ????n nh???n k&yacute; g???i)</p>\r\n\r\n<p><strong>B??????c 4:</strong>&nbsp;Xem k???t qu??? t???ng k???t t???i Fanpage, Website, Facebook kh&aacute;ch ?????n nh???n ti???n tr???c ti???p ho???c shop chuy???n kho???n ng&acirc;n h&agrave;ng, v&iacute; ??i???n t??? (linh ho???t theo y&ecirc;u c???u kh&aacute;ch)</p>\r\n\r\n<p>??? ????? kh&ocirc;ng b&aacute;n ???????c khi ?????n h???n kh&aacute;ch ch???n 1 trong 3 ca??ch sau:</p>\r\n\r\n<ul>\r\n	<li>Ho&agrave;n tr???</li>\r\n	<li>Sale th&ecirc;m 15 ng&agrave;y ti???p theo (mi???n ph&iacute; l??u kho)</li>\r\n	<li>Quy&ecirc;n g&oacute;p t??? thi???n</li>\r\n</ul>\r\n\r\n<div>\r\n<hr /></div>\r\n\r\n<h2><strong>Ti&ecirc;u Chu???n k&yacute; g???i:</strong></h2>\r\n\r\n<p>S???n ph???m nh???n: Qu???n, &Aacute;o, ?????m, V&aacute;y, T&uacute;i x&aacute;ch, Gi&agrave;y</p>\r\n\r\n<p>- ????? m???i tr&ecirc;n 90%</p>\r\n\r\n<p>Kh&aacute;ch l??u &yacute; ki???m tra k??? c&aacute;c ph???n:</p>\r\n\r\n<p>C??? &aacute;o, n&aacute;ch, tay &aacute;o, c&aacute;c n&uacute;t, d&acirc;y k&eacute;o, ??&aacute;y qu???n</p>\r\n\r\n<p>&yacute;&nbsp;KH&Ocirc;NG c&oacute; v???t ???, b???c m&agrave;u, b???n, r&aacute;ch, s???n l&ocirc;ng, bung ch???, c&oacute; m&ugrave;i</p>\r\n\r\n<p>&yacute;&nbsp;Kh&ocirc;ng nh???n ????? ng???, ????? b??i, ????? c&ocirc;ng s???, m???u sexy, ????? s???c s???</p>\r\n\r\n<p>????? c&agrave;ng m???i, h???p xu h?????ng gi&aacute; s??? cao h??n v&agrave; b&aacute;n nhanh h??n</p>\r\n\r\n<p>- V??? sinh ????? s???ch s??? tr?????c khi g???i</p>\r\n\r\n<h2><strong>Ph&iacute; k&yacute; g???i:&nbsp;</strong>30% tr&ecirc;n t&ocirc;??ng s&ocirc;?? ti&ecirc;??n ba??n ????????c</h2>\r\n\r\n<p>Gi&aacute; thanh l&yacute; t???i ??a:</p>\r\n\r\n<p>&bull; &lt; 200.000 vnd/ sp th?????ng</p>\r\n\r\n<p>&bull; &lt; 400.000 vn??/ sp th????ng hi???u</p>\r\n\r\n<p>Mi???n ph&iacute; l??u kho ?????i v???i ????? ch??a b&aacute;n ???????c sau 60 ng&agrave;y</p>\r\n\r\n<p>S???n ph???m ???????c sale th&ecirc;m 15 ng&agrave;y ti???p theo&nbsp;ti???p t???c t??? 30 - 40%</p>\r\n\r\n<p>V&ecirc;?? phi?? ky?? g????i:</p>\r\n\r\n<ul>\r\n	<li>Ch??? tr??? khi b&aacute;n ???????c ?????</li>\r\n	<li>Kh&aacute;ch KH&Ocirc;NG ph???i tr??? ph&iacute; tr?????c</li>\r\n	<li>????? t???n d?? s??? ???????c tr??? l???i</li>\r\n</ul>\r\n\r\n<h3><strong>L??u y??:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sau k&igrave; t???ng k???t tr??? ????? kh&ocirc;ng b&aacute;n ???????c, shop kh&ocirc;ng ?????m b???o t&igrave;nh tr???ng nh?? ban ?????u do c&oacute; nhi???u kh&aacute;ch ?????n shop th??? li&ecirc;n t???c ?????.</li>\r\n	<li>Trong qu&aacute; tr&igrave;nh k&yacute; g???i, kh&aacute;ch mu???n l???y ????? v??? tr?????c h???n, shop s??? thu ph&iacute; x??? l&yacute; l???y h&agrave;ng l&agrave; 10.000??/sp</li>\r\n</ul>\r\n\r\n<p>Th????i gian nh&acirc;??n ti&ecirc;??n va?? ??&ocirc;?? t&ocirc;??n se?? ????????c post k&ecirc;??t qua?? ta??i Fanpage khi ??&ecirc;??n nga??y t&ocirc;??ng k&ecirc;??t trong ho??a ????n</p>\r\n\r\n<p>????? k&yacute; g???i ch??a b&aacute;n ???????c n???u kh&ocirc;ng ???????c nh???n l???i khi qua?? nga??y nh&acirc;??n s??? ???????c quy&ecirc;n g&oacute;p v&agrave;o qu??? t??? thi???n</p>\r\n\r\n<p><strong>K&ecirc;nh b&aacute;n h&agrave;ng:&nbsp;</strong>S???n ph???m c???a c&aacute;c b???n s??? ???????c shop ch???p ???nh b&aacute;n tr&ecirc;n c&aacute;c c&ocirc;ng c???:<br />\r\n- Online nh?? Facebook Fanpage,Website<br />\r\n- Offline t???i ?????a ch??? shop: Go??c Voi &ndash; Vinhome Grand Park Qu&acirc;??n 9 | To??a S2.02</p>\r\n\r\n<p>- ??i??a chi??: 202 Nguy&ecirc;??n Xi&ecirc;??n, ph??????ng Long Tha??nh My??, Qu&acirc;??n 9, HCM</p>\r\n\r\n<p>L??u &yacute;:&nbsp;Khi mang ????? ?????n k&yacute; g???i, c&aacute;c b???n c???n gi???t s???ch tr?????c nh&eacute;, tr&aacute;nh b??? ????? l&acirc;u ???m m&ugrave;i ho???c ??? v&agrave;ng</p>\r\n\r\n<h2><strong>Ca??m ??n ca??c chi?? em ??a?? tin t??????ng va?? u??ng h&ocirc;?? Go??c Voi a??&nbsp;</strong></h2>\r\n', '<h1 style=\"text-align:center\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#40E0D0\"><span style=\"font-size:20px\"><strong>C&ocirc;ng Ty TNHH Th????ng M???i </strong><strong>Xu???t Nh???p Kh???u&nbsp;&nbsp;</strong></span></span></span></h1>\r\n', '/public/img/images/pages/2018/08/pages-9.jpeg', 1, 0, '{\"home\":\"1\",\"ShowInHome\":\"0\",\"TypeShow\":\"mau2\"}', 0),
(19, 1, 'Tin T???c', 'tin-tuc', '', '', '', '', '', '/public/img/images/pages/2018/08/pages-19.jpeg', 1, 1, '{\"IsSevicer\":\"0\"}', 1);

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
  `oldPrice` decimal(15,4) DEFAULT 0.0000,
  `Summary` text DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `DateCreate` datetime DEFAULT NULL,
  `Number` int(11) DEFAULT 0,
  `Note` varchar(500) DEFAULT NULL,
  `BuyTimes` int(11) DEFAULT 0,
  `Views` int(11) DEFAULT 0,
  `isShow` tinyint(4) NOT NULL,
  `Serial` int(11) NOT NULL,
  `lang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bakcodt_product`
--

INSERT INTO `bakcodt_product` (`ID`, `Username`, `catID`, `nameProduct`, `Alias`, `Price`, `oldPrice`, `Summary`, `Content`, `UrlHinh`, `DateCreate`, `Number`, `Note`, `BuyTimes`, `Views`, `isShow`, `Serial`, `lang`) VALUES
('10002', 'admin', 98, '10002', '10002', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-98/10002.jfif', '2021-06-04 10:32:01', 1, '{}', 0, 5, 1, 0, 'vi'),
('100021', 'admin', 99, '100021', '100021', '100000.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-99/100021.jpg', '2021-06-19 12:10:41', 1, '{}', 0, 10, 1, 0, 'vi'),
('100025', 'admin', 99, '100025', '100025', '100000.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-99/100025.jpg', '2021-06-19 12:10:41', 1, '{}', 0, 8, 1, 0, 'vi'),
('10003', 'admin', 98, '10003', '10003', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-98/10003.jfif', '2021-06-04 10:32:01', 1, '{}', 0, 9, 1, 0, 'vi'),
('10004', 'admin', 99, '10004', '10004', '100000.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-99/10004.jpg', '2021-06-19 12:10:41', 1, '{}', 0, 5, 1, 0, 'vi'),
('10005', 'admin', 98, '10005', '10005', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-98/10005.jfif', '2021-06-04 10:32:01', 1, '{}', 0, 2, 1, 0, 'vi'),
('10007', 'admin', 98, '10007', '10007', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-98/10007.jfif', '2021-06-04 10:32:01', 1, '{}', 0, 3, 1, 0, 'vi'),
('10008', 'admin', 98, '10008', '10008', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-98/10008.jfif', '2021-06-04 10:32:01', 1, '{}', 0, 3, 1, 0, 'vi'),
('100100021', 'admin', 100, '100021', '100021', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-100/100021.jpg', '2021-06-19 12:22:39', 1, '{}', 0, 0, 1, 0, 'vi'),
('100100025', 'admin', 100, '100025', '100025', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-100/100025.jpg', '2021-06-19 12:22:39', 1, '{}', 0, 0, 1, 0, 'vi'),
('10010003', 'admin', 100, '10003', '10003', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-100/10003.jpg', '2021-06-19 12:22:39', 1, '{}', 0, 0, 1, 0, 'vi'),
('10010004', 'admin', 100, '10004', '10004', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-100/10004.jpg', '2021-06-19 12:22:39', 1, '{}', 0, 0, 1, 0, 'vi'),
('1004', 'admin', 98, '1004', '1004', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-98/1004.jfif', '2021-06-04 10:32:01', 1, '{}', 0, 3, 1, 0, 'vi'),
('101100021', 'admin', 101, '100021', '100021', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-101/100021.jpg', '2021-06-19 12:22:15', 1, '{}', 0, 0, 1, 0, 'vi'),
('101100025', 'admin', 101, '100025', '100025', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-101/100025.jpg', '2021-06-19 12:22:15', 1, '{}', 0, 0, 1, 0, 'vi'),
('10110003', 'admin', 101, '10003', '10003', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-101/10003.jpg', '2021-06-19 12:22:15', 1, '{}', 0, 0, 1, 0, 'vi'),
('10110004', 'admin', 101, '10004', '10004', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-101/10004.jpg', '2021-06-19 12:22:15', 1, '{}', 0, 0, 1, 0, 'vi'),
('99100021', 'admin', 99, '100021', '100021', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-99/100021.jpg', '2021-06-19 12:23:03', 1, '{}', 0, 0, 1, 0, 'vi'),
('99100025', 'admin', 99, '100025', '100025', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-99/100025.jpg', '2021-06-19 12:23:03', 1, '{}', 0, 0, 1, 0, 'vi'),
('9910003', 'admin', 99, '10003', '10003', '0.0000', '0.0000', '', '', 'dm-99/10003.jpg', '2021-06-19 12:49:20', 1, '{}', 0, 0, 2, 0, 'vi'),
('9910004', 'admin', 99, '10004', '10004', '0.0000', '0.0000', '  ', '', '/public/img/images/sanpham/dm-99/10004.jpg', '2021-06-19 12:23:03', 1, '{}', 0, 0, 1, 0, 'vi'),
('rolex-abc', '', 0, '', '', '0.0000', '0.0000', '', '', 'dm-98/100021.jpg', '2021-06-19 20:25:12', 0, '', 0, 1, 0, 0, 'vi');

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
-- Indexes for table `bakcodt_categoriesbak`
--
ALTER TABLE `bakcodt_categoriesbak`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `bakcodt_content`
--
ALTER TABLE `bakcodt_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bakcodt_content_ln`
--
ALTER TABLE `bakcodt_content_ln`
  ADD PRIMARY KEY (`id`,`ln`);

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
-- Indexes for table `bakcodt_location`
--
ALTER TABLE `bakcodt_location`
  ADD PRIMARY KEY (`Id`);

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
-- Indexes for table `bakcodt_order`
--
ALTER TABLE `bakcodt_order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `bakcodt_orderdetail`
--
ALTER TABLE `bakcodt_orderdetail`
  ADD PRIMARY KEY (`Id`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `bakcodt_categories`
--
ALTER TABLE `bakcodt_categories`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `bakcodt_categoriesbak`
--
ALTER TABLE `bakcodt_categoriesbak`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `bakcodt_content`
--
ALTER TABLE `bakcodt_content`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'system';

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `bakcodt_location`
--
ALTER TABLE `bakcodt_location`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bakcodt_menu`
--
ALTER TABLE `bakcodt_menu`
  MODIFY `IDMenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1624079470;

--
-- AUTO_INCREMENT for table `bakcodt_order`
--
ALTER TABLE `bakcodt_order`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bakcodt_orderdetail`
--
ALTER TABLE `bakcodt_orderdetail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bakcodt_pages`
--
ALTER TABLE `bakcodt_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
