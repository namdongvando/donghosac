-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2018 at 10:04 AM
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
(7, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '', '', 0, '2018-05-18', '2018-05-18'),
(20, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-20.png', '#', 0, '2018-05-18', '2018-05-18'),
(33, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"orange\"}', '[{\"key\":\"background\",\"value\":\"orange\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-33.jpeg', '#', 1, '2018-05-18', '2018-05-19'),
(35, 'Quang Cáo Danh Mục MẶc Định aaa', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '/public/img/images/quangcao/cat0/cat0-35.jpeg', '', 1, '2018-05-18', '2018-05-18'),
(36, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '/public/img/images/quangcao/cat0/cat0-36.jpeg', '#1', 1, '2018-05-18', '2018-05-18'),
(37, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-37.jpeg', '#', 1, '2018-05-18', '2018-05-19');

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
  `Public` int(11) NOT NULL,
  `Lang` varchar(4) NOT NULL DEFAULT 'vi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakco_categories`
--

INSERT INTO `bakco_categories` (`catID`, `catName`, `Path`, `Link`, `Note`, `parentCatID`, `banner`, `Public`, `Lang`) VALUES
(1, 'Nông nghiệp', 'nong-nghiep', '/nong-nghiep', '', 0, 'thuysan2.jpg', 1, 'vi'),
(2, 'Thủy sản', 'thuy-san', '/thuy-san', '', 0, 'thuysan2.jpg', 1, 'vi'),
(3, 'Giao thông vận tải', 'giao-thong-van-tai', '/giao-thong-van-tai', '', 0, 'gtvt1.jpg', 1, 'vi'),
(4, 'Nhà đất', 'nha-dat', '/nha-dat', '', 0, 'nhadat1.jpg', 1, 'vi'),
(5, 'Việc làm', 'viec-lam', '/viec-lam', '', 0, 'vieclam1.jpg', 1, 'vi'),
(6, 'Thời trang', 'thoi-trang', '/thoi-trang', '', 0, 'thoitrang1.jpg', 1, 'vi'),
(7, 'Điện tử', 'dien-tu', '/dien-tu', '', 0, 'dientu1.jpg', 1, 'vi'),
(8, 'Xe cộ', 'xe-co', '/xe-co', '', 0, 'xe1.jpg', 1, 'vi'),
(9, 'Kim khí -  Điện máy', 'kim-khi-dien-may', '/kim-khi-dien-may', '', 0, 'kimkhidienmay1.jpg', 1, 'vi'),
(10, 'Cơ khí', 'co-khi', '/co-khi', '', 0, 'cokhi1.jpg', 1, 'vi'),
(11, 'Công nghệ', 'cong-nghe', '/cong-nghe', '', 0, 'congnghe1.jpg', 1, 'vi'),
(12, 'Công nghiệp', 'cong-nghiep', '/cong-nghiep', '', 0, 'congnghiep2.jpg', 1, 'vi'),
(13, 'Xây dựng', 'xay-dung', '/xay-dung', '', 0, 'xaydung3.jpg', 1, 'vi'),
(14, 'Dịch vụ - Giải trí - Du lịch', 'dich-vu-giai-tri-du-lich', '/dich-vu-giai-tri-du-lich', '', 0, 'dichvu3.jpg', 1, 'vi'),
(15, 'Thực phẩm -  Ăn uống', 'thuc-pham-an-uong', '/thuc-pham-an-uong', '', 0, 'thucpham2.jpg', 1, 'vi'),
(16, 'Sắc đẹp -  Sức khỏe - Y tế', 'sac-dep-suc-khoe-y-te', '/sac-dep-suc-khoe-y-te', '', 0, 'yte2.jpg', 1, 'vi'),
(17, 'Nội ngoại thất', 'noi-ngoai-that', '/noi-ngoai-that', '', 0, 'noingoaithat3.jpg', 1, 'vi'),
(18, 'Sách - Văn phong phẩm', 'sach-van-phong-pham', '/sach-van-phong-pham', '', 0, 'sach2.jpg', 1, 'vi'),
(19, 'Thể thao', 'the-thao', '/the-thao', '', 0, 'thethao3.jpg', 1, 'vi'),
(20, 'Sản phẩm nông nghiệp', 'san-pham-nong-nghiep', '/nong-nghiep/san-pham-nong-nghiep', 'asdas', 1, '0', 1, 'vi'),
(21, 'Thiết bị nông nghiệp', 'thiet-bi-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep', '', 1, '0', 1, 'vi'),
(22, 'Phụ kiện nông nghiệp', 'phu-kien-nong-nghiep', '/nong-nghiep/phu-kien-nong-nghiep', '', 1, '0', 1, 'vi'),
(23, 'Sản phẩm thủy sản', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', 1, 'vi'),
(24, 'Thiết bị thủy sản', 'thiet-bi-thuy-san', '/thuy-san/thiet-bi-thuy-san', '', 2, '0', 1, 'vi'),
(25, 'Phụ kiện thủy sản', 'phu-kien-thuy-san', '/thuy-san/phu-kien-thuy-san', '', 2, '0', 1, 'vi'),
(26, 'Dịch vụ vận chuyển', 'dich-vu-van-chuyen', '/giao-thong-van-tai/dich-vu-van-chuyen', '', 3, '0', 1, 'vi'),
(27, 'Dịch vụ cho thuê', 'dich-vu-cho-thue', '/giao-thong-van-tai/dich-vu-cho-thue', '', 3, '0', 1, 'vi'),
(28, 'Mua bán nhà', 'mua-ban-nha', '/nha-dat/mua-ban-nha', '', 4, '0', 1, 'vi'),
(29, 'Mua bán đất', 'mua-ban-dat', '/nha-dat/mua-ban-dat', '', 4, '0', 1, 'vi'),
(30, 'Cho thuê', 'cho-thue', '/nha-dat/cho-thue', '', 4, '0', 1, 'vi'),
(31, 'Cần thuê', 'can-thue', '/nha-dat/can-thue', '', 4, '0', 1, 'vi'),
(32, 'Dịch vụ nhà đất', 'dich-vu-nha-dat', '/nha-dat/dich-vu-nha-dat', '', 4, '0', 1, 'vi'),
(33, 'Người tìm việc', 'nguoi-tim-viec', '/viec-lam/nguoi-tim-viec', '', 5, '0', 1, 'vi'),
(34, 'Việc tìm người', 'viec-tim-nguoi', '/viec-lam/viec-tim-nguoi', '', 5, '0', 1, 'vi'),
(35, 'Thời trang nam', 'thoi-trang-nam', '/thoi-trang/thoi-trang-nam', '', 6, '0', 1, 'vi'),
(36, 'Thời  trang nữ', 'thoi-trang-nu', '/thoi-trang/thoi-trang-nu', '', 6, '0', 1, 'vi'),
(37, 'Thời trang teen', 'thoi-trang-teen', '/thoi-trang/thoi-trang-teen', '', 6, '0', 1, 'vi'),
(38, 'Thời trang trẻ em', 'thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em', '', 6, '0', 1, 'vi'),
(39, 'Đồng phục - Đồ đôi', 'dong-phuc-do-doi', '/thoi-trang/dong-phuc-do-doi', '', 6, '0', 1, 'vi'),
(40, 'Đồng hồ', 'dong-ho', '/thoi-trang/dong-ho', '', 6, '0', 1, 'vi'),
(41, 'Trang sức', 'trang-suc', '/thoi-trang/trang-suc', '', 6, '0', 1, 'vi'),
(42, 'Giày dép', 'giay-dep', '/thoi-trang/giay-dep', '', 6, '0', 1, 'vi'),
(43, 'Phụ kiện', 'phu-kien', '/thoi-trang/phu-kien', '', 6, '0', 1, 'vi'),
(44, 'Điện thoại di động', 'dien-thoai-di-dong', '/dien-tu/dien-thoai-di-dong', '', 7, '0', 1, 'vi'),
(45, 'Máy tính bảng', 'may-tinh-bang', '/dien-tu/may-tinh-bang', '', 7, '0', 1, 'vi'),
(46, 'Máy tính - Laptop', 'may-tinh-laptop', '/dien-tu/may-tinh-laptop', '', 7, '0', 1, 'vi'),
(47, 'Máy ảnh - Máy quay', 'may-anh-may-quay', '/dien-tu/may-anh-may-quay', '', 7, '0', 1, 'vi'),
(48, 'Tivi - Loa - Amply - Máy nghe nhạc', 'tivi-loa-amply-may-nghe-nhac', '/dien-tu/tivi-loa-amply-may-nghe-nhac', '', 7, '0', 1, 'vi'),
(49, 'Phụ kiện - Linh kiện', 'phu-kien-linh-kien', '/dien-tu/phu-kien-linh-kien', '', 7, '0', 1, 'vi'),
(50, 'Ô Tô', 'o-to', '/xe-co/o-to', '', 8, '0', 1, 'vi'),
(51, 'Xe máy', 'xe-may', '/xe-co/xe-may', '', 8, '0', 1, 'vi'),
(52, 'Xe đạp', 'xe-dap', '/xe-co/xe-dap', '', 8, '0', 1, 'vi'),
(53, 'Đồ chơi', 'do-choi', '/xe-co/do-choi', '', 8, '0', 1, 'vi'),
(54, 'Cơ khí ô tô', 'co-khi-o-to', '/xe-co/co-khi-o-to', '', 8, '0', 1, 'vi'),
(55, 'Cơ khí xe máy', 'co-khi-xe-may', '/xe-co/co-khi-xe-may', '', 8, '0', 1, 'vi'),
(56, 'Phụ tùng', 'phu-tung', '/xe-co/phu-tung', '', 8, '0', 1, 'vi'),
(57, 'Sản phẩm', 'san-pham', '/kim-khi-dien-may/san-pham', '', 9, '0', 1, 'vi'),
(58, 'Thiết bị', 'thiet-bi', '/kim-khi-dien-may/thiet-bi', '', 9, '0', 1, 'vi'),
(59, 'Phụ tùng - Linh kiện', 'phu-tung-linh-kien', '/kim-khi-dien-may/phu-tung-linh-kien', '', 9, '0', 1, 'vi'),
(60, 'Sản phẩm cơ khí', 'san-pham-co-khi', '/co-khi/san-pham-co-khi', '', 10, '0', 1, 'vi'),
(61, 'Thiết bị cơ khí', 'thiet-bi-co-khi', '/co-khi/thiet-bi-co-khi', '', 10, '0', 1, 'vi'),
(62, 'Phụ kiện cơ khí', 'phu-kien-co-khi', '/co-khi/phu-kien-co-khi', '', 10, '0', 1, 'vi'),
(63, 'Sản phẩm công nghệ', 'san-pham-cong-nghe', '/cong-nghe/san-pham-cong-nghe', '', 11, '0', 1, 'vi'),
(64, 'Thiết bị công nghệ', 'thiet-bi-cong-nghe', '/cong-nghe/thiet-bi-cong-nghe', '', 11, '0', 1, 'vi'),
(65, 'Phụ kiện - Linh kiện công nghệ', 'phu-kien-linh-kien-cong-nghe', '/cong-nghe/phu-kien-linh-kien-cong-nghe', '', 11, '0', 1, 'vi'),
(66, 'Sản phẩm công nghiệp', 'san-pham-cong-nghiep', '/cong-nghiep/san-pham-cong-nghiep', '', 12, '0', 1, 'vi'),
(67, 'Thiết bị công nghiệp', 'thiet-bi-cong-nghiep', '/cong-nghiep/thiet-bi-cong-nghiep', '', 12, '0', 1, 'vi'),
(68, 'Dịch vụ công nghiệp', 'dich-vu-cong-nghiep', '/cong-nghiep/dich-vu-cong-nghiep', '', 12, '0', 1, 'vi'),
(69, 'Thiết bị xây dựng', 'thiet-bi-xay-dung', '/xay-dung/thiet-bi-xay-dung', '', 13, '0', 1, 'vi'),
(70, 'Vật liệu xây dựng', 'vat-lieu-xay-dung', '/xay-dung/vat-lieu-xay-dung', '', 13, '0', 1, 'vi'),
(71, 'Dịch vụ vận tải', 'dich-vu-van-tai', '/dich-vu-giai-tri-du-lich/dich-vu-van-tai', '', 14, '0', 1, 'vi'),
(72, 'Dịch vụ cưới hỏi', 'dich-vu-cuoi-hoi', '/dich-vu-giai-tri-du-lich/dich-vu-cuoi-hoi', '', 14, '0', 1, 'vi'),
(73, 'Dịch vụ du lịch', 'dich-vu-du-lich', '/dich-vu-giai-tri-du-lich/dich-vu-du-lich', '', 14, '0', 1, 'vi'),
(74, 'Cho thuê', 'cho-thue', '/dich-vu-giai-tri-du-lich/cho-thue', '', 14, '0', 1, 'vi'),
(75, 'Game - Đồ chơi', 'game-do-choi', '/dich-vu-giai-tri-du-lich/game-do-choi', '', 14, '0', 1, 'vi'),
(76, 'Thực phẩm tươi sống', 'thuc-pham-tuoi-song', '/thuc-pham-an-uong/thuc-pham-tuoi-song', '', 15, '0', 1, 'vi'),
(77, 'Thực phẩm qua chế biến', 'thuc-pham-qua-che-bien', '/thuc-pham-an-uong/thuc-pham-qua-che-bien', '', 15, '0', 1, 'vi'),
(78, 'Thức ăn nhẹ', 'thuc-an-nhe', '/thuc-pham-an-uong/thuc-an-nhe', '', 15, '0', 1, 'vi'),
(79, 'Đặt sản', 'dat-san', '/thuc-pham-an-uong/dat-san', '', 15, '0', 1, 'vi'),
(80, 'Đồ hộp - Đồ khô', 'do-hop-do-kho', '/thuc-pham-an-uong/do-hop-do-kho', '', 15, '0', 1, 'vi'),
(81, 'Gia vị', 'gia-vi', '/thuc-pham-an-uong/gia-vi', '', 15, '0', 1, 'vi'),
(82, 'Ngũ cốc - Sản phẩm từ ngũ cốc', 'ngu-coc-san-pham-tu-ngu-coc', '/thuc-pham-an-uong/ngu-coc-san-pham-tu-ngu-coc', '', 15, '0', 1, 'vi'),
(83, 'Bánh kẹo - Mức', 'banh-keo-muc', '/thuc-pham-an-uong/banh-keo-muc', '', 15, '0', 1, 'vi'),
(84, 'Thức uống', 'thuc-uong', '/thuc-pham-an-uong/thuc-uong', '', 15, '0', 1, 'vi'),
(85, 'Nguyên liệu', 'nguyen-lieu', '/thuc-pham-an-uong/nguyen-lieu', '', 15, '0', 1, 'vi'),
(86, 'Mỹ phẩm', 'my-pham', '/sac-dep-suc-khoe-y-te/my-pham', '', 16, '0', 1, 'vi'),
(87, 'Thiết bị làm đẹp', 'thiet-bi-lam-dep', '/sac-dep-suc-khoe-y-te/thiet-bi-lam-dep', '', 16, '0', 1, 'vi'),
(88, 'Dịch vụ chăm sóc', 'dich-vu-cham-soc', '/sac-dep-suc-khoe-y-te/dich-vu-cham-soc', '', 16, '0', 1, 'vi'),
(89, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 'vi'),
(90, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 'vi'),
(91, 'Nội thất phòng ngủ', 'noi-that-phong-ngu', '/noi-ngoai-that/noi-that-phong-ngu', '', 17, '0', 1, 'vi'),
(92, 'Nội thất phòng ăn - Nhà bếp', 'noi-that-phong-an-nha-bep', '/noi-ngoai-that/noi-that-phong-an-nha-bep', '', 17, '0', 1, 'vi'),
(93, 'Nội thất phòng tắm', 'noi-that-phong-tam', '/noi-ngoai-that/noi-that-phong-tam', '', 17, '0', 1, 'vi'),
(94, 'Nội thất văn phòng', 'noi-that-van-phong', '/noi-ngoai-that/noi-that-van-phong', '', 17, '0', 1, 'vi'),
(95, 'Nội thất nhà hàng', 'noi-that-nha-hang', '/noi-ngoai-that/noi-that-nha-hang', '', 17, '0', 1, 'vi'),
(96, 'Nội thất công cộng', 'noi-that-cong-cong', '/noi-ngoai-that/noi-that-cong-cong', '', 17, '0', 1, 'vi'),
(97, 'Ngoại thất sân vườn', 'ngoai-that-san-vuon', '/noi-ngoai-that/ngoai-that-san-vuon', '', 17, '0', 1, 'vi'),
(98, 'Nội thất thờ cúng', 'noi-that-tho-cung', '/noi-ngoai-that/noi-that-tho-cung', '', 17, '0', 1, 'vi'),
(99, 'Nội thất trẻ em', 'noi-that-tre-em', '/noi-ngoai-that/noi-that-tre-em', '', 17, '0', 1, 'vi'),
(100, 'Đồ thủ công mỹ nghệ', 'do-thu-cong-my-nghe', '/noi-ngoai-that/do-thu-cong-my-nghe', '', 17, '0', 1, 'vi'),
(101, 'Đồ cổ', 'do-co', '/noi-ngoai-that/do-co', '', 17, '0', 1, 'vi'),
(102, 'Thiết kế nội thất', 'thiet-ke-noi-that', '/noi-ngoai-that/thiet-ke-noi-that', '', 17, '0', 1, 'vi'),
(103, 'Quà tặng', 'qua-tang', '/sach-van-phong-pham/qua-tang', '', 18, '0', 1, 'vi'),
(104, 'Sách', 'sach', '/sach-van-phong-pham/sach', '', 18, '0', 1, 'vi'),
(105, 'Thiết bị', 'thiet-bi', '/sach-van-phong-pham/thiet-bi', '', 18, '0', 1, 'vi'),
(106, 'Văn phòng phẩm', 'van-phong-pham', '/sach-van-phong-pham/van-phong-pham', '', 18, '0', 1, 'vi'),
(107, 'Thể thao', 'the-thao', '/the-thao/the-thao', '', 19, '0', 1, 'vi'),
(108, 'Thiết bị - Dụng cụ', 'thiet-bi-dung-cu', '/the-thao/thiet-bi-dung-cu', '', 19, '0', 1, 'vi'),
(109, 'Dịch vụ', 'dich-vu', '/the-thao/dich-vu', '', 19, '0', 1, 'vi'),
(110, 'Lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '0', -1, 'vi'),
(111, 'Hoa quả', 'hoa-qua', '/nong-nghiep/san-pham-nong-nghiep/hoa-qua', '', 20, '0', 1, 'vi'),
(112, 'Cây giống', 'cay-giong', '/nong-nghiep/san-pham-nong-nghiep/cay-giong', '', 20, '0', 1, 'vi'),
(113, 'Máy móc', 'may-moc', '/nong-nghiep/thiet-bi-nong-nghiep/may-moc', '', 21, '0', 1, 'vi'),
(114, 'Phân bón', 'phan-bon', '/nong-nghiep/thiet-bi-nong-nghiep/phan-bon', '', 21, '0', 1, 'vi'),
(115, 'Thuốc nông nghiệp', 'thuoc-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep/thuoc-nong-nghiep', '', 21, '0', 1, 'vi'),
(116, 'Thủy sản chăn nuôi', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', 1, 'vi'),
(117, 'Thủy sản biển', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', 1, 'vi'),
(118, 'Con giống', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', 1, 'vi'),
(119, 'Máy móc', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', 1, 'vi'),
(120, 'Thức ăn', 'thuc-an', '/thuy-san/thiet-bi-thuy-san/thuc-an', '', 24, '0', 1, 'vi'),
(121, 'Thuốc thủy sản', 'thuoc-thuy-san', '/thuy-san/thiet-bi-thuy-san/thuoc-thuy-san', '', 24, '0', 1, 'vi'),
(122, 'Biệt thự - Nhà chia lô', 'biet-thu-nha-chia-lo', '/thuy-san/thiet-bi-thuy-san/biet-thu-nha-chia-lo', '', 24, '0', 1, 'vi'),
(123, 'Mặt bằng kinh doanh', 'mat-bang-kinh-doanh', '/nha-dat/mua-ban-nha/mat-bang-kinh-doanh', '', 28, '0', 1, 'vi'),
(124, 'Nhà chung cư', 'nha-chung-cu', '/nha-dat/mua-ban-nha/nha-chung-cu', '', 28, '0', 1, 'vi'),
(125, 'Nhà mặt phố', 'nha-mat-pho', '/nha-dat/mua-ban-nha/nha-mat-pho', '', 28, '0', 1, 'vi'),
(126, 'Nhà trong ngõ', 'nha-trong-ngo', '/nha-dat/mua-ban-nha/nha-trong-ngo', '', 28, '0', 1, 'vi'),
(127, 'Nhà xưởng, kho', 'nha-xuong-kho', '/nha-dat/mua-ban-nha/nha-xuong-kho', '', 28, '0', 1, 'vi'),
(128, 'Đất canh tác - Làm nông nghiệp', 'dat-canh-tac-lam-nong-nghiep', '/nha-dat/mua-ban-dat/dat-canh-tac-lam-nong-nghiep', '', 29, '0', 1, 'vi'),
(129, 'Đất thổ cư', 'dat-tho-cu', '/nha-dat/mua-ban-dat/dat-tho-cu', '', 29, '0', 1, 'vi'),
(130, 'Cho thuê mặt bằng - Cửa hàng kinh doanh', 'cho-thue-mat-bang-cua-hang-kinh-doanh', '/nha-dat/cho-thue/cho-thue-mat-bang-cua-hang-kinh-doanh', '', 30, '0', 1, 'vi'),
(131, 'Cho thuê nhà', 'cho-thue-nha', '/nha-dat/cho-thue/cho-thue-nha', '', 30, '0', 1, 'vi'),
(132, 'Cho thuê phòng trọ - Ki ốt', 'cho-thue-phong-tro-ki-ot', '/nha-dat/cho-thue/cho-thue-phong-tro-ki-ot', '', 30, '0', 1, 'vi'),
(133, 'Cho thuê văn phòng', 'cho-thue-van-phong', '/nha-dat/cho-thue/cho-thue-van-phong', '', 30, '0', 1, 'vi'),
(134, 'Cho thuê đất', 'cho-thue-dat', '/nha-dat/cho-thue/cho-thue-dat', '', 30, '0', 1, 'vi'),
(135, 'Cho thuê kho xưởng', 'cho-thue-kho-xuong', '/nha-dat/cho-thue/cho-thue-kho-xuong', '', 30, '0', 1, 'vi'),
(136, 'Cần thuê mặt bằng - Cửa hàng kihn doanh', 'can-thue-mat-bang-cua-hang-kihn-doanh', '/nha-dat/can-thue/can-thue-mat-bang-cua-hang-kihn-doanh', '', 31, '0', 1, 'vi'),
(137, 'Cần thuê nhà', 'can-thue-nha', '/nha-dat/can-thue/can-thue-nha', '', 31, '0', 1, 'vi'),
(138, 'Cần thuê phòng trọ - Ki ốt', 'can-thue-phong-tro-ki-ot', '/nha-dat/can-thue/can-thue-phong-tro-ki-ot', '', 31, '0', 1, 'vi'),
(139, 'Cần thuê văn phòng', 'can-thue-van-phong', '/nha-dat/can-thue/can-thue-van-phong', '', 31, '0', 1, 'vi'),
(140, 'Cần thuê đất', 'can-thue-dat', '/nha-dat/can-thue/can-thue-dat', '', 31, '0', 1, 'vi'),
(141, 'Cần thuê kho xưởng', 'can-thue-kho-xuong', '/nha-dat/can-thue/can-thue-kho-xuong', '', 31, '0', 1, 'vi'),
(142, 'Quần áo nam', 'quan-ao-nam', '/thoi-trang/thoi-trang-nam/quan-ao-nam', '', 35, '0', 1, 'vi'),
(143, 'Giày dép nam', 'giay-dep-nam', '/thoi-trang/thoi-trang-nam/giay-dep-nam', '', 35, '0', 1, 'vi'),
(144, 'Phụ kiện thời trang nam', 'phu-kien-thoi-trang-nam', '/thoi-trang/thoi-trang-nam/phu-kien-thoi-trang-nam', '', 35, '0', 1, 'vi'),
(145, 'Quần áo nữ', 'quan-ao-nu', '/thoi-trang/thoi-trang-nu/quan-ao-nu', '', 36, '0', 1, 'vi'),
(146, 'Giày dép nữ', 'giay-dep-nu', '/thoi-trang/thoi-trang-nu/giay-dep-nu', '', 36, '0', 1, 'vi'),
(147, 'Phụ kiện thời trang nữ', 'phu-kien-thoi-trang-nu', '/thoi-trang/thoi-trang-nu/phu-kien-thoi-trang-nu', '', 36, '0', 1, 'vi'),
(148, 'Thời trang tóc', 'thoi-trang-toc', '/thoi-trang/thoi-trang-nu/thoi-trang-toc', '', 36, '0', 1, 'vi'),
(149, 'Trang phục teen nam', 'trang-phuc-teen-nam', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nam', '', 37, '0', 1, 'vi'),
(150, 'Trang phục teen nữ', 'trang-phuc-teen-nu', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nu', '', 37, '0', 1, 'vi'),
(151, 'Quần áo trẻ em', 'quan-ao-tre-em', '/thoi-trang/thoi-trang-tre-em/quan-ao-tre-em', '', 38, '0', 1, 'vi'),
(152, 'Giày dép trẻ em', 'giay-dep-tre-em', '/thoi-trang/thoi-trang-tre-em/giay-dep-tre-em', '', 38, '0', 1, 'vi'),
(153, 'Phụ kiện thời trang trẻ em', 'phu-kien-thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em/phu-kien-thoi-trang-tre-em', '', 38, '0', 1, 'vi'),
(154, 'Quần áo đồng phục', 'quan-ao-dong-phuc', '/thoi-trang/dong-phuc-do-doi/quan-ao-dong-phuc', '', 39, '0', 1, 'vi'),
(155, 'Quần áo đôi', 'quan-ao-doi', '/thoi-trang/dong-phuc-do-doi/quan-ao-doi', '', 39, '0', 1, 'vi'),
(156, 'Phụ kiện đồ đồng phục', 'phu-kien-do-dong-phuc', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-dong-phuc', '', 39, '0', 1, 'vi'),
(157, 'Phu kiện đồ đôi', 'phu-kien-do-doi', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-doi', '', 39, '0', 1, 'vi'),
(158, 'Trang sức cho nữ', 'trang-suc-cho-nu', '/thoi-trang/trang-suc/trang-suc-cho-nu', '', 41, '0', 1, 'vi'),
(159, 'Trang sức cho nam', 'trang-suc-cho-nam', '/thoi-trang/trang-suc/trang-suc-cho-nam', '', 41, '0', 1, 'vi'),
(160, 'Trang sức cặp đôi', 'trang-suc-cap-doi', '/thoi-trang/trang-suc/trang-suc-cap-doi', '', 41, '0', 1, 'vi'),
(161, 'Trang sức trẻ em', 'trang-suc-tre-em', '/thoi-trang/trang-suc/trang-suc-tre-em', '', 41, '0', 1, 'vi'),
(162, 'Nhẫn cưới - Đính hôn', 'nhan-cuoi-dinh-hon', '/thoi-trang/trang-suc/nhan-cuoi-dinh-hon', '', 41, '0', 1, 'vi'),
(163, 'Đá quý', 'da-quy', '/thoi-trang/trang-suc/da-quy', '', 41, '0', 1, 'vi'),
(164, 'Vàng miếng', 'vang-mieng', '/thoi-trang/trang-suc/vang-mieng', '', 41, '0', 1, 'vi'),
(165, 'Giày thể thao', 'giay-the-thao', '/thoi-trang/giay-dep/giay-the-thao', '', 42, '0', 1, 'vi'),
(166, 'Phụ kiện', 'phu-kien', '/thoi-trang/giay-dep/phu-kien', '', 42, '0', 1, 'vi'),
(167, 'Giày dép khác', 'giay-dep-khac', '/thoi-trang/giay-dep/giay-dep-khac', '', 42, '0', 1, 'vi'),
(168, 'Nông nghiệp1', 'nong-nghiep1', '/nong-nghiep/nong-nghiep1', 'note', 1, '', -1, 'vi'),
(169, 'Nông nghiệp1', 'nong-nghiep1', '', 'note', 1, '', -2, 'vi'),
(170, 'Nông nghiệp 1', 'nong-nghiep-1', '', 'note', 1, '', -2, 'vi'),
(171, 'Nông nghiệp 1', 'nong-nghiep-1', '', 'note', 1, '', -2, 'vi'),
(172, 'Nông nghiệp 2', 'nong-nghiep-2', '/nong-nghiep/nong-nghiep-2', 'asdasdas', 1, '', -2, 'vi'),
(173, 'nguyen van do', 'nguyen-van-do', '/nong-nghiep/nguyen-van-do', 'noter', 1, '', -1, 'vi'),
(174, 'lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '', 1, 'vi'),
(175, 'Thông tin chung', 'thong-tin-chung', '/nong-nghiep/thong-tin-chung', '', 1, '', 0, 'vi'),
(176, '', '', '', '', 0, '', -2, 'vi'),
(177, '', '', '/', '', 0, '', -2, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `bakco_news`
--

CREATE TABLE `bakco_news` (
  `ID` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `PageID` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Alias` varchar(500) NOT NULL,
  `Summary` text NOT NULL,
  `Content` longtext NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NgayDang` datetime DEFAULT NULL,
  `UrlHinh` text,
  `TinNoiBat` int(11) NOT NULL,
  `SoLanXem` int(11) NOT NULL DEFAULT '0',
  `Stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakco_news`
--

INSERT INTO `bakco_news` (`ID`, `title`, `keyword`, `description`, `PageID`, `Name`, `Alias`, `Summary`, `Content`, `AnHien`, `NgayDang`, `UrlHinh`, `TinNoiBat`, `SoLanXem`, `Stt`) VALUES
('201712201513742765', '', '', '', 1, 'IN ẤN NAMECARD', 'in-an-namecard-201712201513742765', '<p>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</p>\r\n', '<h2 style=\"text-align:center\"><strong>Hướng dẫn sử dụng Telehealth tr&ecirc;n Smartphone - M&aacute;y T&iacute;nh Bảng</strong></h2>\r\n\r\n<div><strong>1./ Tải phần mềm</strong><br />\r\nBằng thiết bị cầm tay truy cập <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\">http://vkhs.vn/index_bak.html#/tcs</span></a> lần lượt nhấn n&uacute;t 1 v&agrave; 2 để tải phần mềm c&agrave;i đặt tương ứng theo thiết bị.</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s1.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><br />\r\n<strong>2./ C&agrave;i đặt</strong><br />\r\nNhấn <strong>Cloud </strong>để tải</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s2.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Sau khi tải xong Nhấn <strong>Open </strong>để mở</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s3.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Đầu ti&ecirc;n bạn phải điều hướng tới server của Telehealth, nhấn&nbsp;<strong>Another server</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s4.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Nhập địa chỉ IP của Telehealth tại <strong>Server address</strong></div>\r\n\r\n<div style=\"text-align: center;\"><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s5.png\" style=\"height:420px; width:250px\" /></strong></div>\r\n\r\n<div>Th&ocirc;ng số Server Adddress: <em><strong>210.211.108.66:4307</strong></em></div>\r\n\r\n<div style=\"text-align: center;\"><em><strong><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s6.png\" style=\"height:420px; width:250px\" /></strong></em></div>\r\n\r\n<div>Nhập ID v&agrave; mật khẩu m&agrave; bạn đ&atilde; nhận được qua email nhấn Sign in <a href=\"http://vkhs.vn/index_bak.html#/tcs\"><span style=\"color:#0000FF\"><em>(Nhận ID tại đ&acirc;y)</em></span></a></div>\r\n\r\n<div style=\"text-align: center;\"><span style=\"color:#0000FF\"><em><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s7.png\" style=\"height:420px; width:250px\" /></em></span></div>\r\n\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n\r\n<div>Sau khi đăng nhập bạn sẽ nh&igrave;n thấy B&aacute;c sĩ đ&atilde; sẵn s&agrave;ng trong danh s&aacute;ch, nhấn v&agrave;o t&ecirc;n BS c&oacute; h&igrave;nh c&oacute; ng&ocirc;i sao m&agrave;u v&agrave;ng l&agrave; bạn sẽ được phục vụ</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s8.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div>Chọn BS nhấn n&uacute;t gọi</div>\r\n\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"http://quantri.vkhs.vn/public/img/images/s9.png\" style=\"height:420px; width:250px\" /></div>\r\n\r\n<div><em><strong>Ghi chú:&nbsp;</strong></em><br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#00FF00\"><strong> icon m&agrave;u xanh</strong></span> l&agrave; B&aacute;c sĩ đ&atilde; đăng nhập v&agrave; sẵn s&agrave;ng để tư vấn cho bạn.<br />\r\n- Trạng thái B&aacute;c sĩ&nbsp; c&oacute;<span style=\"color:#FF0000\"><strong> icon m&agrave;u đỏ</strong></span> l&agrave; B&aacute;c sĩ chưa đăng nhập n&ecirc;n bạn kh&ocirc;ng thể y&ecirc;u cầu tư vấn.<br />\r\n- Trạng thái B&aacute;c sĩ c&oacute;<span style=\"color:#FFFF00\"><strong> icon m&agrave;u v&agrave;ng</strong></span> l&agrave; B&aacute;c sĩ đang tư vấn ở một phi&ecirc;n hỗ trợ kh&aacute;c, n&ecirc;n bạn kh&ocirc;ng thể v&agrave;o ph&ograve;ng tư vấn được.<br />\r\nKhi sử dụng thiết bị cầm tay để v&agrave;o phi&ecirc;n tư vấn bạn n&ecirc;n sử dụng <strong>Head phone</strong> để tr&aacute;nh tạp &acirc;m l&agrave;m ảnh hưởng đến sự tập trung của BS</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n', 1, '2018-04-09 05:14:05', 'logo/logo1.png', 1, 0, 1),
('201801291517199897', '', '', '', 1, 'IN ẤN POSTER', 'in-an-poster201801291517199897', '<p>Tiền th&acirc;n của Viện l&agrave; Khoa Răng H&agrave;m Mặt với 2 khu điều trị ngoại tr&uacute; (Trại 36) v&agrave; khu nội tr&uacute; (Trại 52) nằm trong Bệnh viện Chợ Rẫy. Cơ sở hạ tầng được tiếp quản từ khu phẫu thuật ...</p>\r\n', '<p style=\"text-align:justify\"><img alt=\"\" src=\"/public/img/images/Benhvien.jpg\" style=\"float:left; height:440px; margin-left:10px; margin-right:10px; width:320px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Với thời gian, bằng sự nỗ lực kh&ocirc;ng ngừng của m&igrave;nh v&agrave; nhất l&agrave; từ khi Đảng v&agrave; Nh&agrave; nước c&oacute; chủ trương mở cửa đi đ&ocirc;i với xo&aacute; bỏ chế độ bao cấp tr&igrave; trệ th&igrave; Viện mới thực sự c&oacute; điều kiện để củng cố v&agrave; ph&aacute;t triển. Đ&acirc;y cũng l&agrave; thời k&igrave; m&agrave; ng&agrave;nh Răng H&agrave;m Mặt ở c&aacute;c tỉnh, th&agrave;nh ph&iacute;a Nam dưới sự chỉ đạo của Viện đ&atilde; c&oacute; một bước tiến nhảy vọt.<br />\r\n<br />\r\n&Yacute; thức được tr&aacute;ch nhiệm của m&igrave;nh, bằng nguồn vốn tự tạo với sự hỗ trợ của Bộ Y Tế, Bệnh Viện đ&atilde; từng bước chỉnh trang cơ sở, mua sắm trang thiết bị hiện đại, đi đ&ocirc;i với việc kiện to&agrave;n tổ chức c&aacute;c Khoa, Ph&ograve;ng nhằm đ&aacute;p ứng ng&agrave;y một đầy đủ chắc năng của một Viện chuy&ecirc;n khoa đầu ng&agrave;nh m&agrave; Bộ đ&atilde; giao ph&oacute;.<br />\r\n<br />\r\nNăm 1990, sau 10 năm th&agrave;nh lập Viện, cơ sở hạ tầng v&agrave; trang thiết bị vẫn gần như chưa đổi mới được bao nhi&ecirc;u. Đến cuối năm 1993, to&agrave;n viện chỉ c&oacute; 12 ghế m&aacute;y Nha khoa hiện đại. C&aacute;c loại h&igrave;nh điều trị c&ograve;n đơn giản do thiếu thốn c&aacute;c phương tiện v&agrave; trang thiết bị nha khoa.<br />\r\n<br />\r\nNg&agrave;y 15 th&aacute;ng 5 năm 2003 Viện được thủ tướng ch&iacute;nh phủ k&yacute; quyết định đổi t&ecirc;n th&agrave;nh Bệnh Viện Răng H&agrave;m Mặt TW&nbsp; th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; ng&agrave;y 9 th&aacute;ng 11 năm 2004, Bộ trưởng bộ y tế đ&atilde; k&yacute; ban h&agrave;nh Điều lệ tổ chức v&agrave; hoạt động của Bệnh viện m&agrave; theo đ&oacute; phạm vi, chức năng, nhiệm vụ c&agrave;ng mở rộng hơn.<br />\r\n<br />\r\nCho đến nay, sau 25 năm kể từ ng&agrave;y th&agrave;nh lập, nhờ sự cố gắng nỗ lữ của to&agrave;n thể c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n, c&oacute; thể n&oacute;i bộ mặt của bệnh viện đ&atilde; ho&agrave;n to&agrave;n thay đổi. Ngo&agrave;i việc chỉnh trang lại to&agrave;n khu nội, ngoại tr&uacute; v&agrave; sắp xếp lại c&aacute;c khoa ph&ograve;ng khang trang, đẹp đẽ, Bệnh viện đ&atilde; x&acirc;y dựng th&ecirc;m được một khu nh&agrave; 3 tầng với nh&igrave;u khoa ph&ograve;ng mới để mở rộng khu nha khoa l&acirc;m s&agrave;ng v&agrave; khu phẫu thuật H&agrave;m Mặt Tạo H&igrave;nh. Cải tạo v&agrave; mở rộng khu tiếp bệnh trung t&acirc;m, khoa chuẩn đ&oacute;n h&igrave;nh ảnh v&agrave; x&eacute;t nghiệm. Bố tr&iacute; lại khoa ph&ograve;ng hợp l&yacute; hơn để việc tiếp nhận người bệnh c&agrave;ng thuận lợi hơn. Th&aacute;ng 11 năm 2004 đ&atilde; tiến h&agrave;nh kh&aacute;nh th&agrave;nh v&agrave; triển khai khoa Điều Trị Nha Khoa Tổng Qu&aacute;t tại khu nh&agrave; mới với 10 ghế nha khoa v&agrave; trang bị hiện đại c&oacute; thể giải quyết ngay cho người bệnh trong một lần điều trị.<br />\r\n<br />\r\nPhương tiện l&agrave;m việc của c&aacute;c khoa, ph&ograve;ng được đổi mới to&agrave;n bộ. Ghế m&aacute;y chữa răng v&agrave; c&aacute;c thiết bị hiện đại sử dụng trong điều trị Nội nha, Nha chu, Chỉnh h&igrave;nh răng mặt, Nha khoa trẻ em...Khoa phục h&igrave;nh được trang bị m&aacute;y m&oacute;c tối t&acirc;n để l&agrave;m phục h&igrave;nh sứ kim loại v&agrave; kh&ocirc;ng kim loại, kh&agrave;m khung li&ecirc;n kết c&aacute;c mắc c&agrave;i ch&iacute;nh x&aacute;c... Khoa cấy gh&eacute;p răng đang được th&agrave;nh lập v&agrave; đang đi v&agrave;o hoạt động rất hiệu qủa, khoa Nha chu thực hiện đều đặn c&aacute;c thủ thuật lật vạt, gh&eacute;p nứu, gh&eacute;p xương..., Khoa răng trẻ em bắt đầu &aacute;p dụng hệ thống Nitrous oxide để l&agrave;m giảm đau khi điều trị răng cho trẻ em. Ngo&agrave;i c&aacute;c thiết bị chụp to&agrave;n cảnh, sọ mặt, Khoa X quang đang được trang bị th&ecirc;m m&aacute;y chụp kỹ thuật số hiện đại...<br />\r\n<br />\r\nVới tr&igrave;nh độ, kỹ năng chuẩn đo&aacute;n v&agrave; điều trị của đội ngũ c&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n ng&agrave;y c&agrave;ng được n&acirc;ng cao, phương tiện trang bị hiện đại, cơ sở vật chất khang trang, tiện nghi n&ecirc;n số lượng người bệnh đến bệng viện ng&agrave;y c&agrave;ng tăng (năm 2002: 74.118 người, năm 2003: 78.346 người, năm 2004: 88.487 người)<br />\r\n<br />\r\nKhoa phẫu thuật h&agrave;m mặt đổi mới thiết bị g&acirc;y m&ecirc; cũng bằng c&aacute;c m&aacute;y g&acirc;y m&ecirc; hiện đại, c&oacute; 6 b&agrave;n mổ v&agrave; c&oacute; thể c&ugrave;ng một l&uacute;c theo d&otilde;i huyết &aacute;p, mạch, đo điện tim v.v...<br />\r\n<br />\r\nHệ thống Oxy trung t&acirc;m được lắp đặt, tạo điều kiện hồi sức tốt cho người bệnh. Việc &aacute;p dụng tia Laser cacbonit được tiến h&agrave;nh nhiều năm nay v&agrave; mang lại kết qủa rất khả quan.</p>\r\n', 1, '2018-03-30 07:30:37', 'logo/logo1.png', 1, 0, 1),
('201801291517200996', '', '', '', 1, 'IN ẤN BĂNG RÔN', 'in-an-bang-ron201801291517200996', '<p>Bệnh viện Răng h&agrave;m mặt Trung ương Th&agrave;nh phố Hồ Ch&iacute; Minh l&agrave; Bệnh viện trực thuộc Bộ Y tế, l&agrave; tuyến y tế chuy&ecirc;n s&acirc;u, chỉ đạo chuy&ecirc;n khoa cho 32 tỉnh th&agrave;nh ph&iacute;a Nam. Bệnh viện c&oacute; ...</p>\r\n', '<p><strong><img alt=\"\" src=\"/public/img/images/Benhvien.jpg\" style=\"float:left; height:440px; margin-left:10px; margin-right:10px; width:320px\" />1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kh&aacute;m, cấp cứu v&agrave; phội hồi chức năng trong lĩnh vực Răng &ndash; H&agrave;m &ndash; Mặt cho trẻ em v&agrave; người lớn ở tuyến cao nhất:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tiếp nhận kh&aacute;m, cấp cứu, điều trị nội tr&uacute; v&agrave; ngoại tr&uacute; c&aacute;c trường hợp người bệnh vượt qu&aacute; khả năng điều trị của tuyến tỉnh. Người bệnh đến kh&aacute;m, điều trị theo y&ecirc;u cầu, kể cả người bệnh l&agrave; người nước ngo&agrave;i.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia kh&aacute;m gi&aacute;m định y khoa v&agrave; ph&aacute;p y theo quy định của ph&aacute;p luật<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phục hồi chức năng cho trẻ bị dị tật bẩm sinh hoặc bệnh mắc phải sau điều trị tại bệnh viện v&agrave; tại cộng đồng<br />\r\n<br />\r\n<strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph&ograve;ng bệnh Răng Miệng &ndash; Chỉ đạo tuyến dưới về chuy&ecirc;n m&ocirc;n kỹ thuật:</strong><br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng, ph&aacute;t triển, chỉ đạo mạng lưới Răng &ndash; H&agrave;m &ndash; Mặt ở c&aacute;c tỉnh, th&agrave;nh phố trực thuộc Trung ương ph&iacute;a Nam&nbsp; từ Đ&agrave; Nẵng đến C&agrave; Mau theo chỉ đạo của Bộ y tế.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng kế hoạch ph&ograve;ng bệnh răng miệng v&agrave; c&aacute;c chương tr&igrave;nh nha khoa cộng đồng để tr&igrave;nh Bộ trưởng Bộ y tế ph&ecirc; duyệt.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổ chức chỉ đạo thực hiện chương tr&igrave;nh tăng cường sức khỏe răng miệng v&agrave; chương tr&igrave;nh nha học đường quốc gia.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng dướng dẫn điều trị c&aacute;c bệnh răng miệng, bệnh h&agrave;m mặt để tr&igrave;nh Bộ trưởng Bộ y tế ph&ecirc; duyệt v&agrave; chỉ đạo tuyến dưới thực hiện theo đ&uacute;ng quy định.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gi&uacute;p tuyến dưới n&acirc;ng cao chất lượng cấp cứu, chẩn đo&aacute;n v&agrave;&nbsp; điều trị c&aacute;c bệnh trong phạm vị chuy&ecirc;n khoa ở địa phương<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng nội dung, phương ph&aacute;p v&agrave; tổ chức gi&aacute;o dục truyền th&ocirc;ng về bảo vệ chăm s&oacute;c sức khỏe răng miệng cho nh&acirc;n d&acirc;n th&ocirc;ng qua c&aacute;c phương tiện th&ocirc;ng tin đại ch&uacute;ng.<br />\r\n<br />\r\n<strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu khoa học:</strong><br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu t&igrave;nh h&igrave;nh biến đổi sức khỏe v&agrave; m&ocirc; h&igrave;nh bệnh tật răng miệng của nh&acirc;n d&acirc;n. Đề xuất phương hướng chiến lược, kế hoạch can thiệp cộng đồng, hướng dẫn điều trị nhằm n&acirc;ng cao chất lượng ph&ograve;ng bệnh, điều trị v&agrave; chất lượng c&aacute;c dịch vụ y tế răng miệng phục vụ sức khỏe nh&acirc;n d&acirc;n.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu v&agrave; ứng dụng những tiến bộ khoa học kỹ thuật trong lĩnh vực nha khoa l&acirc;m s&agrave;ng, cận l&acirc;m s&agrave;ng v&agrave; phẫu thuật h&agrave;m mặt.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nghi&ecirc;n cứu c&aacute;c nguy&ecirc;n liệu, dụng cụ, thuốc trong nước d&ugrave;ng trong chuy&ecirc;n khoa. Thực hiện gi&aacute;m định chất lượng sản phẩm d&ugrave;ng trong chuy&ecirc;n ng&agrave;nh Răng H&agrave;m Mặt theo chỉ đạo của Bộ y tế.<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp với c&aacute;c chuy&ecirc;n ng&agrave;nh kh&aacute;c trong việc triển khai nghi&ecirc;n cứu c&aacute;c đề t&agrave;i khoa học c&oacute; li&ecirc;n quan<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia x&acirc;y dựng c&aacute;c Quy tr&igrave;nh kỹ thuật bệnh viện thuộc chuy&ecirc;n ng&agrave;nh răng h&agrave; mặt tr&igrave;nh Bộ y tế ph&ecirc; duyệt<br />\r\n<br />\r\n<strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đ&agrave;o tạo c&aacute;n bộ chuy&ecirc;n ng&agrave;nh Răng h&agrave;m Mặt:</strong><br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bệnh viện l&agrave; cơ sở thực h&agrave;nh để đ&agrave;o tạo b&aacute;c sĩ chuy&ecirc;n ng&agrave;nh Răng H&agrave;m Mặt ở bậc đại học v&agrave; sau đại học, chuy&ecirc;n ng&agrave;nh Điều dưỡng nha khoa, Kỹ thuật vi&ecirc;n phục h&igrave;nh răng ở bậc trung học, cao đẳng, đại học v&agrave; sau đại học<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tham gia giảng dạy v&agrave; đ&agrave;o tạo trung học, cao đẳng, đại học v&agrave; sau đại học nh&acirc;n lực ng&agrave;nh Răng &ndash; H&agrave;m &ndash; Mặt trong nước v&agrave; quốc tế<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổ chức c&aacute;c lớp đ&agrave;o tạo lại v&agrave; cập nhật kiến thức răng h&agrave;m mặt cho c&aacute;n bộ bệnh viện v&agrave; c&aacute;n bộ tuyến dưới ở c&aacute;c tỉnh th&agrave;nh phố trực thuộc Trung ương từ Đ&agrave; Nẵng đến C&agrave; Mau<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phối hợp với c&aacute;c cơ sở đ&agrave;o tạo để bi&ecirc;n soạn, in ấn v&agrave; ph&aacute;t h&agrave;nh c&aacute;c t&agrave;i liệu theo chương tr&igrave;nh đ&agrave;o tạo của bệnh viện, th&ocirc;ng tin v&agrave; kỷ yếu c&ocirc;ng tr&igrave;nh khoa học.<br />\r\n<strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; bệnh viện</strong><br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Quản l&yacute; v&agrave; sử dụng c&oacute; hiệu quả c&aacute;c nguồn lực của bệnh viện về nh&acirc;n lực, t&agrave;i ch&iacute;nh, cơ sở vật chất v&agrave; trang thiết bị y tế theo đ&uacute;ng quy định hiện h&agrave;nh<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổ chức thực hiện đ&uacute;ng c&aacute;c quy định của Nh&agrave; nước về thu, chi ng&acirc;n s&aacute;ch của bệnh viện, từng bước hạch to&aacute;n thu, chi theo quy định của ph&aacute;p luật<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tạo th&ecirc;m nguồn kinh ph&iacute; cho bệnh viện từ c&aacute;c dịch vụ y tế: Viện ph&iacute;, bảo hiểm y tế, gi&aacute;m định chất lượng sản phẩm, c&aacute;c dự &aacute;n đầu tư trong nước v&agrave; quốc tế...<br />\r\n<br />\r\n<strong>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hợp t&aacute;c quốc tế:</strong><br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; T&iacute;ch cực chủ động khai th&aacute;c nguồn viện trợ, đầu tư v&agrave; thiết lập mối quan hệ hợp t&aacute;c về kh&aacute;m chữa bệnh, nghi&ecirc;n cứu khoa học, đ&agrave;o tạo c&aacute;n bộ, cung cấp trang thiết bị v&agrave; x&acirc;y dựng cơ bản với c&aacute;c tổ chức trong v&agrave; ngo&agrave;i nước, x&acirc;y dựng dự &aacute;n đầu tư li&ecirc;n doanh, li&ecirc;n kết với c&aacute;c nước v&agrave; c&aacute;c tổ chức quốc tế kể cả tổ chức phi ch&iacute;nh phủ tr&igrave;nh Bộ trưởng Bộ y tế ph&ecirc; duyệt v&agrave; tổ chức thực hiện dự &aacute;n theo quy định của nh&agrave; nước. Tranh thủ sự viện trợ gi&uacute;p đỡ của nước ngo&agrave;i về vật chất, kỹ thuật, kiến thức để x&acirc;y dựng bệnh viện ng&agrave;y c&agrave;ng ph&aacute;t triển<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X&acirc;y dựng kế hoạch đo&agrave;n ra, đo&agrave;n v&agrave;o theo chương tr&igrave;nh hợp t&aacute;c quốc tế với bệnh viện, cử c&aacute;n bộ đi học tập, nghi&ecirc;n cứu c&ocirc;ng t&aacute;c ở nước ngo&agrave;i v&agrave; nhận chuy&ecirc;n gia, giảng vi&ecirc;n, học vi&ecirc;n l&agrave; người nước ngo&agrave;i đến nghi&ecirc;n cứu, trao đổi kinh nghiệm v&agrave; học tập tại bệnh viện, quản l&yacute; đo&agrave;n ra, đo&agrave;n v&agrave;o theo quy định của ph&aacute;p luật<br />\r\n-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tổ chức triển khai v&agrave; quản l&yacute; hội nghị, hội thảo, lớp học quốc tế về lĩnh vực chuy&ecirc;n ng&agrave;nh thuộc phạm vi bệnh viện quản l&yacute; theo quy định của ph&aacute;p luật v&agrave; Bộ y tế<br />\r\n<br />\r\nBệnh viện tu&acirc;n thủ theo quy định của ph&aacute;p luật về việc k&yacute; kết hợp t&aacute;c với nước ngo&agrave;i</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2018-03-30 07:30:59', 'logo/logo1.png', 1, 0, 1),
('201803301522430854', '', '', '', 1, 'IN Ấn Các Loại Chất Liệu', 'in-an-cac-loai-chat-lieu201803301522430854', '', '', 1, '2018-03-30 07:31:05', 'logo/logo1.png', 1, 0, 1),
('201803301522430890', '', '', '', 1, 'Thiết Kế in Ấn STANDEE', 'thiet-ke-in-an-standee201803301522430890', '', '', 1, '2018-03-30 07:31:10', 'logo/logo1.png', 1, 0, 1),
('201803301522432280', '', '', '', 2, 'Bai 1', 'bai-1201803301522432280', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:51:52', 'logo/logo1.png', 1, 0, 1),
('201803301522432306', '', '', '', 2, 'bài 2', 'bai-2201803301522432306', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:51:46', 'logo/logo1.png', 1, 0, 1),
('201803301522432329', '', '', '', 2, 'bài 3', 'bai-3201803301522432329', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:52:09', 'logo/logo1.png', 1, 0, 1),
('201803301522432345', '', '', '', 2, 'bài 4', 'bai-4201803301522432345', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:52:25', 'logo/logo1.png', 1, 0, 1),
('201803301522432362', '', '', '', 2, 'bài 5', 'bai-5201803301522432362', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:53:44', 'logo/logo1.png', 1, 0, 1),
('201803301522432392', '', '', '', 2, 'bai 6', 'bai-6201803301522432392', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:53:40', 'logo/logo1.png', 1, 0, 1),
('201803301522432408', '', '', '', 2, 'bài 7', 'bai-7201803301522432408', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 1, '2018-03-30 07:53:53', 'logo/logo1.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bakco_pages`
--

CREATE TABLE `bakco_pages` (
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
  `Note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bakco_pages`
--

INSERT INTO `bakco_pages` (`idPa`, `idGroup`, `Name`, `Alias`, `Title`, `Des`, `Keyword`, `Summary`, `Content`, `Urlimages`, `isShow`, `Type`, `Note`) VALUES
(1, 1, 'BigBang có gì?', 'bigbang-co-gi', 'Giới Thiệu', 'about', 'about', '<p>T&oacute;m Tắt&nbsp;&nbsp;trong trang&nbsp; bigbang c&oacute; g&igrave;</p>\r\n', '<h2 style=\"text-align:center\">&nbsp;</h2>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:20px\"><strong>GIỚI THIỆU RHMTW</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong> đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;</span>&nbsp;<span style=\"font-size:16px\">0314538127</span>&nbsp;<span style=\"font-size:16px\">ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>VKHS</strong> cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong> gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ. <a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">(</span></em></a><em><a href=\"http://yttv.vn\"><span style=\"color:#0000FF\">Xem th&ecirc;m</span></a></em><a href=\"http://yttv.vn\"><em><span style=\"color:#0000FF\">...)</span></em></a></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Tư vấn sức khoẻ từ xa</strong> với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn. </span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất. </span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n. </span></span></span></span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa: </strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:#0000FF\">(Xem th&ecirc;m...)</span></a></em></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật: </strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip; <strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong> theo chỉ định của BS điều trị.&nbsp;</span></span></span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>Vận chuyển </strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).</span></span></span></span></span></span></span></span><br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>. </span></span></span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\"><span style=\"font-size:16px\">Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</span></span></span></span></span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS. <em><span style=\"color:#0000FF\">(</span><a href=\"http://vkhs.vn/mobile/vkhs.apk\"><span style=\"color:#0000FF\">Tải ứng dụng</span></a><span style=\"color:#0000FF\">)</span></em></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-V&agrave;o trang web VKHS hay VK_SOS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Điện thoại số &hellip;</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế. &nbsp;</span></p>\r\n', 'logo-vksos.png', 1, 1, '{\"showhomesevice\":\"1\",\"showhomenews\":\"0\"}'),
(2, 1, 'Tin Tức', 'tin-tuc', '', '', '', '', '', 'Benhvien.jpg', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"1\"}'),
(4, 1, 'Sản Phẩm', 'san-pham', '', '', '', '', '', '/public/img/images', 0, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\"}'),
(5, 1, 'Dịch vụ', 'dich-vu', '', '', '', '', '', '/public/img/images', 0, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\"}'),
(6, 1, 'Liên hệ', 'lien-he', '', '', '', '', '<p>&nbsp;</p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"font-size:20px\"><strong>GIỚI THIỆU RHMTW</strong></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong>&nbsp;đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;</span>&nbsp;<span style=\"font-size:16px\">0314538127</span>&nbsp;<span style=\"font-size:16px\">ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>VKHS</strong>&nbsp;cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong>&nbsp;gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ.&nbsp;<a href=\"http://yttv.vn\"><em><span style=\"color:rgb(0, 0, 255)\">(</span></em></a><em><a href=\"http://yttv.vn\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a></em><a href=\"http://yttv.vn\"><em><span style=\"color:rgb(0, 0, 255)\">...)</span></em></a></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Tư vấn sức khoẻ từ xa</strong>&nbsp;với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn.&nbsp;</span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất.&nbsp;</span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n.&nbsp;</span><em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">(</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255)\">Xem th&ecirc;m</span></a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\"><span style=\"color:rgb(0, 0, 255); font-size:16px\">...)</span></a></em></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa:&nbsp;</strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\"><span style=\"color:rgb(0, 0, 255)\">(Xem th&ecirc;m...)</span></a></em></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật:&nbsp;</strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip;&nbsp;<strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong>&nbsp;theo chỉ định của BS điều trị.&nbsp;</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Vận chuyển&nbsp;</strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).</span><br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>.</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\">Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS.&nbsp;<em><span style=\"color:rgb(0, 0, 255)\">(</span><a href=\"http://vkhs.vn/mobile/vkhs.apk\"><span style=\"color:rgb(0, 0, 255)\">Tải ứng dụng</span></a><span style=\"color:rgb(0, 0, 255)\">)</span></em></span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-V&agrave;o trang web VKHS hay VK_SOS</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Điện thoại số &hellip;</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\">-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế.&nbsp;&nbsp;</span></p>\r\n\r\n<p style=\"margin-left:0.5in; text-align:justify\"><span style=\"font-size:16px\"><a href=\"http://{Social_Google}\">http://{Social_Google}</a></span></p>\r\n', '/public/img/images', 0, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\"}'),
(8, 1, 'Khách Hàng', 'khach-hang', '', '', '', '', '', '/public/img/images', 0, 0, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `bakco_product`
--

CREATE TABLE `bakco_product` (
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
  `lang` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bakco_product`
--

INSERT INTO `bakco_product` (`ID`, `Username`, `catID`, `nameProduct`, `Alias`, `Price`, `oldPrice`, `Summary`, `Content`, `UrlHinh`, `DateCreate`, `Number`, `Note`, `BuyTimes`, `Views`, `isShow`, `lang`) VALUES
('1', '0', 47, 'betaglucan-400g', '', '0.0000', '0.0000', 'cập nhật', 'asd asdaasass', 'betaglucan-500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 11, 1, 'vi'),
('101', '1', 47, 'BIO VET 500g', '', '0.0000', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- Máy tính.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng nói.<br />- Ghi âm.<br />- Loa speaker.</p>', '', 'BIO VET 500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 'vi'),
('102', '1', 48, 'BKC V80', '', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Kiểu dáng mạnh mẽ với bàn phím Qwerty</li>\r\n<li>Máy ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>Máy nghe nhạc, xem phim MP3/eAAC+/3GP/MP4</li>\r\n<li>Đài FM tích hợp, jack tai nghe 3.5mm</li>\r\n<li>Ghi âm FM</li>\r\n<li>Kết nối Bluetooth, USB, Facebook, Twitter apps </li>\r\n</ul>', '', 'BKC V80.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'vi'),
('1031', '1', 48, 'BZT VET', '', '0.0000', '0.0000', '<p>- Máy tính.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng nói.</p>', '', 'BZT VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'vi'),
('104', '1', 47, 'CLEA VET', '', '790000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế đơn giản, trẻ trung</li>\r\n<li>Máy ảnh VGA</li>\r\n<li>Hỗ trợ thẻ nhớ ngoài</li>\r\n<li>Máy nghe nhạc MP3</li>\r\n<li>Đài FM tích hợp</li>\r\n<li>Chế độ đèn pin </li>\r\n</ul>', '', 'CLEA VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'vi'),
('105', '1', 48, 'dr beta 500ml', '', '0.0000', '0.0000', '<p>- Hỗ trợ Java MIDP 2.0<br />- FM radio tích hợp<br />- Máy nghe nhạc kỹ thuật số hỗ trợ các dạng thức MP3/AAC/AAC+/MPEG4<br />- Từ điển T9 đoán trước văn bản nhập<br />- Chức năng tổ chức<br />- Máy ghi âm tích hợp</p>', '', 'dr beta 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 'vi'),
('106', '1', 4, 'fasfive 500g', '', '499000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế nhỏ gọn chắc chắn</li>\r\n<li>B&agrave;n ph&iacute;m chống bụi</li>\r\n<li>Nhạc chu&ocirc;ng đa &acirc;m </li>\r\n<li>Chức năng đ&egrave;n pin</li>\r\n<li>Pin bền bỉ </li>\r\n</ul>', NULL, 'fasfive 500g.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 5, 1, 'vi'),
('107', '1', 4, 'green v007 1kg', '', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 Sóng online</li>\r\n<li>Máy ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Máy nghe nhạc MP3, AAC</li>\r\n<li>Đài FM tích hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', '', 'green v007 1kg.jpg', '0000-00-00 00:00:00', 100, '', 0, 3, 1, 'vi'),
('109', '1', 3, 'KA WATER 123', '', '0.0000', '0.0000', 'ul class=\"item_list\" style=\"margin: 0px padding-left: 15px\"\r\nliThiết kế dạng xoay nữ tính/li\r\nliHỗ trợ 2 Sim 2 Sóng online/li\r\nliMáy ảnh 2.0 MP, hỗ trợ webcam/li\r\nliMáy nghe nhạc, xem phim MP3, 3GP, AVI/li\r\nliĐài FM tích hợp /li\r\n/ul', '', 'KA WATER.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'vi'),
('111', '1', 3, 'LIVER VET 500G', '', '1589000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&agrave;n h&igrave;nh Wide rộng 2.4 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ Webcam</li>\r\n<li>M&aacute;y nghe nhạc, xem phim</li>\r\n<li>Hỗ trợ Wifi, yahoo, Opera</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, 'LIVER VET 500G.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'vi'),
('112', '1', 3, 'liver water 500ml', '', '0.0000', '0.0000', '<p><span style=\"color: #ff0000;\"><strong>K-Touch B896 - Ấn tượng với chất lượng &acirc;m thanh<br /></strong></span><span style=\"color: #000000;\">- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, AAC<br />- Lắc x&iacute; ngầu</span></p>', NULL, 'liver water 500ml.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'vi'),
('113', '1', 4, 'PREMAX 5KG', '', '1489000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy dễ d&agrave;ng nhắn tin</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Yahoo chat, tr&igrave;nh duyệt web Opera</li>\r\n<li>Chức năng chặn tin nhắn, cuộc gọi </li>\r\n</ul>', NULL, 'PREMAX 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('114', '1', 4, 'RS-alum v06', '', '0.0000', '0.0000', '<p><strong><span style=\"color: #ff0000;\">K-Tuoch D173 - Điện thoại 2 Sim</span></strong><br />- Hỗ trợ 2 khe gắn Sim (1 s&oacute;ng)<br />- Thiết kế thời trang, m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- Cảm ứng lắc tay chuyển nhạc, h&igrave;nh nền<br />- C&oacute; đ&egrave;n cực tiếp để soi tiền giả</p>', NULL, 'RS-alum v06.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('115', '1', 4, 'RS-ankavet 5kg', '', '0.0000', '0.0000', '<p>- PDA hỗ trợ mạng 3G với</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> WCDMA/EVDO  <br />- Hệ điều h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- Hỗ trợ xem tivi<br />- Camera 2.0 MP, hỗ trợ quay phim<br />- Kết nối interet với Wifi, truyền tải dữ liệu 3G<br />- Kết nối Bluetooth, USB, GPRS</div>', NULL, 'RS-ankavet 5kg.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('116', '1', 3, 'RS-DRT VET 1KG', '', '1389000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>Chức năng xem Tivi Analog</li>\r\n<li>Nghe nhạc, xem phim MP3, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chặn cuộc gọi, chặn tin nhắn, chat Yahoo</li>\r\n<li>Lắc tay đổi nhạc, h&igrave;nh nền </li>\r\n</ul>', NULL, 'RS-DRT VET 1KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'vi'),
('117', '1', 4, 'RS-KA C 25 - 5KG', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'RS-KA C 25 - 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('2', '1', 4, 'SUPER C V25 1KG', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'SUPER C V25 1KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('3', '1', 4, 'super oil v08', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'super oil v08.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('5', '1', 4, 'white BACK V01', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'white BACK V01.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('6', '1', 4, 'white V001', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'white V001.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('7', '1', 4, 'yuca v9999 1 lít', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'yuca v9999 1 lít.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'vi'),
('kA9Ev5zd', 'PGV_EXPRess', 8, 'asdasdas', '', '0.0000', '0.0000', 'asd asd a', 'asd asd ', 'kA9Ev5zd.jpeg', '2015-12-11 04:28:32', 1, '', 0, 0, 1, 'vi');

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
-- Indexes for table `bakco_news`
--
ALTER TABLE `bakco_news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bakco_pages`
--
ALTER TABLE `bakco_pages`
  ADD PRIMARY KEY (`idPa`);

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
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `bakco_pages`
--
ALTER TABLE `bakco_pages`
  MODIFY `idPa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
