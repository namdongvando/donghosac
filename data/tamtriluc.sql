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
(7, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '', '', 0, '2018-05-18', '2018-05-18'),
(20, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-20.png', '#', 0, '2018-05-18', '2018-05-18'),
(33, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#FEC216\"}', '[{\"key\":\"background\",\"value\":\"#FEC216\"}]', 'homeslide', '/public/img/images/adv/2018/06/adv-33.jpeg', '#', 1, '2018-05-18', '2018-06-01'),
(35, 'Quang Cáo Danh Mục MẶc Định aaa', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '/public/img/images/adv/2018/06/adv-35.jpeg', '', 1, '2018-05-18', '2018-06-01'),
(36, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '/public/img/images/adv/2018/06/adv-36.jpeg', '#1', 1, '2018-05-18', '2018-06-01'),
(37, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#80827E\"}', '[{\"key\":\"background\",\"value\":\"#80827E\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-37.jpeg', '#', 1, '2018-05-18', '2018-06-01');

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
(1, 'Nông nghiệp', 'nong-nghiep', '/nong-nghiep', '', 0, 'thuysan2.jpg', 1, 3, 'vi'),
(2, 'Thủy sản', 'thuy-san', '/thuy-san', '', 0, 'thuysan2.jpg', 1, 0, 'vi'),
(3, 'Giao thông vận tải', 'giao-thong-van-tai', '/giao-thong-van-tai', '', 0, 'gtvt1.jpg', 1, 0, 'vi'),
(4, 'Nhà đất', 'nha-dat', '/nha-dat', '', 0, 'nhadat1.jpg', 1, 0, 'vi'),
(5, 'Việc làm', 'viec-lam', '/viec-lam', '', 0, 'vieclam1.jpg', 1, 0, 'vi'),
(6, 'Thời trang', 'thoi-trang', '/thoi-trang', '', 0, 'thoitrang1.jpg', 1, 0, 'vi'),
(7, 'Điện tử', 'dien-tu', '/dien-tu', '', 0, 'dientu1.jpg', 1, 0, 'vi'),
(8, 'Xe cộ', 'xe-co', '/xe-co', '', 0, 'xe1.jpg', 1, 0, 'vi'),
(9, 'Kim khí -  Điện máy', 'kim-khi-dien-may', '/kim-khi-dien-may', '', 0, 'kimkhidienmay1.jpg', 1, 0, 'vi'),
(10, 'Cơ khí', 'co-khi', '/co-khi', '', 0, 'cokhi1.jpg', 1, 0, 'vi'),
(11, 'Công nghệ', 'cong-nghe', '/cong-nghe', '', 0, 'congnghe1.jpg', 1, 0, 'vi'),
(12, 'Công nghiệp', 'cong-nghiep', '/cong-nghiep', '', 0, 'congnghiep2.jpg', 1, 0, 'vi'),
(13, 'Xây dựng', 'xay-dung', '/xay-dung', '', 0, 'xaydung3.jpg', 1, 0, 'vi'),
(14, 'Dịch vụ - Giải trí - Du lịch', 'dich-vu-giai-tri-du-lich', '/dich-vu-giai-tri-du-lich', '', 0, 'dichvu3.jpg', 1, 0, 'vi'),
(15, 'Thực phẩm -  Ăn uống', 'thuc-pham-an-uong', '/thuc-pham-an-uong', '', 0, 'thucpham2.jpg', 1, 0, 'vi'),
(16, 'Sắc đẹp -  Sức khỏe - Y tế', 'sac-dep-suc-khoe-y-te', '/sac-dep-suc-khoe-y-te', '', 0, 'yte2.jpg', 1, 0, 'vi'),
(17, 'Nội ngoại thất', 'noi-ngoai-that', '/noi-ngoai-that', '', 0, 'noingoaithat3.jpg', 1, 0, 'vi'),
(18, 'Sách - Văn phong phẩm', 'sach-van-phong-pham', '/sach-van-phong-pham', '', 0, 'sach2.jpg', 1, 0, 'vi'),
(19, 'Thể thao', 'the-thao', '/the-thao', '', 0, 'thethao3.jpg', 1, 0, 'vi'),
(20, 'Sản phẩm nông nghiệp', 'san-pham-nong-nghiep', '/nong-nghiep/san-pham-nong-nghiep', 'asdas', 1, '0', 1, 9, 'vi'),
(21, 'Thiết bị nông nghiệp', 'thiet-bi-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep', '', 1, '0', 1, 0, 'vi'),
(22, 'Phụ kiện nông nghiệp', 'phu-kien-nong-nghiep', '/nong-nghiep/phu-kien-nong-nghiep', '', 1, '0', 1, 0, 'vi'),
(23, 'Sản phẩm thủy sản', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', 1, 0, 'vi'),
(24, 'Thiết bị thủy sản', 'thiet-bi-thuy-san', '/thuy-san/thiet-bi-thuy-san', '', 2, '0', 1, 0, 'vi'),
(25, 'Phụ kiện thủy sản', 'phu-kien-thuy-san', '/thuy-san/phu-kien-thuy-san', '', 2, '0', 1, 0, 'vi'),
(26, 'Dịch vụ vận chuyển', 'dich-vu-van-chuyen', '/giao-thong-van-tai/dich-vu-van-chuyen', '', 3, '0', 1, 0, 'vi'),
(27, 'Dịch vụ cho thuê', 'dich-vu-cho-thue', '/giao-thong-van-tai/dich-vu-cho-thue', '', 3, '0', 1, 0, 'vi'),
(28, 'Mua bán nhà', 'mua-ban-nha', '/nha-dat/mua-ban-nha', '', 4, '0', 1, 0, 'vi'),
(29, 'Mua bán đất', 'mua-ban-dat', '/nha-dat/mua-ban-dat', '', 4, '0', 1, 0, 'vi'),
(30, 'Cho thuê', 'cho-thue', '/nha-dat/cho-thue', '', 4, '0', 1, 0, 'vi'),
(31, 'Cần thuê', 'can-thue', '/nha-dat/can-thue', '', 4, '0', 1, 0, 'vi'),
(32, 'Dịch vụ nhà đất', 'dich-vu-nha-dat', '/nha-dat/dich-vu-nha-dat', '', 4, '0', 1, 0, 'vi'),
(33, 'Người tìm việc', 'nguoi-tim-viec', '/viec-lam/nguoi-tim-viec', '', 5, '0', 1, 0, 'vi'),
(34, 'Việc tìm người', 'viec-tim-nguoi', '/viec-lam/viec-tim-nguoi', '', 5, '0', 1, 0, 'vi'),
(35, 'Thời trang nam', 'thoi-trang-nam', '/thoi-trang/thoi-trang-nam', '', 6, '0', 1, 0, 'vi'),
(36, 'Thời  trang nữ', 'thoi-trang-nu', '/thoi-trang/thoi-trang-nu', '', 6, '0', 1, 0, 'vi'),
(37, 'Thời trang teen', 'thoi-trang-teen', '/thoi-trang/thoi-trang-teen', '', 6, '0', 1, 0, 'vi'),
(38, 'Thời trang trẻ em', 'thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em', '', 6, '0', 1, 0, 'vi'),
(39, 'Đồng phục - Đồ đôi', 'dong-phuc-do-doi', '/thoi-trang/dong-phuc-do-doi', '', 6, '0', 1, 0, 'vi'),
(40, 'Đồng hồ', 'dong-ho', '/thoi-trang/dong-ho', '', 6, '0', 1, 0, 'vi'),
(41, 'Trang sức', 'trang-suc', '/thoi-trang/trang-suc', '', 6, '0', 1, 0, 'vi'),
(42, 'Giày dép', 'giay-dep', '/thoi-trang/giay-dep', '', 6, '0', 1, 0, 'vi'),
(43, 'Phụ kiện', 'phu-kien', '/thoi-trang/phu-kien', '', 6, '0', 1, 0, 'vi'),
(44, 'Điện thoại di động', 'dien-thoai-di-dong', '/dien-tu/dien-thoai-di-dong', '', 7, '0', 1, 0, 'vi'),
(45, 'Máy tính bảng', 'may-tinh-bang', '/dien-tu/may-tinh-bang', '', 7, '0', 1, 0, 'vi'),
(46, 'Máy tính - Laptop', 'may-tinh-laptop', '/dien-tu/may-tinh-laptop', '', 7, '0', 1, 0, 'vi'),
(47, 'Máy ảnh - Máy quay', 'may-anh-may-quay', '/dien-tu/may-anh-may-quay', '', 7, '0', 1, 0, 'vi'),
(48, 'Tivi - Loa - Amply - Máy nghe nhạc', 'tivi-loa-amply-may-nghe-nhac', '/dien-tu/tivi-loa-amply-may-nghe-nhac', '', 7, '0', 1, 0, 'vi'),
(49, 'Phụ kiện - Linh kiện', 'phu-kien-linh-kien', '/dien-tu/phu-kien-linh-kien', '', 7, '0', 1, 0, 'vi'),
(50, 'Ô Tô', 'o-to', '/xe-co/o-to', '', 8, '0', 1, 0, 'vi'),
(51, 'Xe máy', 'xe-may', '/xe-co/xe-may', '', 8, '0', 1, 0, 'vi'),
(52, 'Xe đạp', 'xe-dap', '/xe-co/xe-dap', '', 8, '0', 1, 0, 'vi'),
(53, 'Đồ chơi', 'do-choi', '/xe-co/do-choi', '', 8, '0', 1, 0, 'vi'),
(54, 'Cơ khí ô tô', 'co-khi-o-to', '/xe-co/co-khi-o-to', '', 8, '0', 1, 0, 'vi'),
(55, 'Cơ khí xe máy', 'co-khi-xe-may', '/xe-co/co-khi-xe-may', '', 8, '0', 1, 0, 'vi'),
(56, 'Phụ tùng', 'phu-tung', '/xe-co/phu-tung', '', 8, '0', 1, 0, 'vi'),
(57, 'Sản phẩm', 'san-pham', '/kim-khi-dien-may/san-pham', '', 9, '0', 1, 0, 'vi'),
(58, 'Thiết bị', 'thiet-bi', '/kim-khi-dien-may/thiet-bi', '', 9, '0', 1, 0, 'vi'),
(59, 'Phụ tùng - Linh kiện', 'phu-tung-linh-kien', '/kim-khi-dien-may/phu-tung-linh-kien', '', 9, '0', 1, 0, 'vi'),
(60, 'Sản phẩm cơ khí', 'san-pham-co-khi', '/co-khi/san-pham-co-khi', '', 10, '0', 1, 0, 'vi'),
(61, 'Thiết bị cơ khí', 'thiet-bi-co-khi', '/co-khi/thiet-bi-co-khi', '', 10, '0', 1, 0, 'vi'),
(62, 'Phụ kiện cơ khí', 'phu-kien-co-khi', '/co-khi/phu-kien-co-khi', '', 10, '0', 1, 0, 'vi'),
(63, 'Sản phẩm công nghệ', 'san-pham-cong-nghe', '/cong-nghe/san-pham-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(64, 'Thiết bị công nghệ', 'thiet-bi-cong-nghe', '/cong-nghe/thiet-bi-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(65, 'Phụ kiện - Linh kiện công nghệ', 'phu-kien-linh-kien-cong-nghe', '/cong-nghe/phu-kien-linh-kien-cong-nghe', '', 11, '0', 1, 0, 'vi'),
(66, 'Sản phẩm công nghiệp', 'san-pham-cong-nghiep', '/cong-nghiep/san-pham-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(67, 'Thiết bị công nghiệp', 'thiet-bi-cong-nghiep', '/cong-nghiep/thiet-bi-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(68, 'Dịch vụ công nghiệp', 'dich-vu-cong-nghiep', '/cong-nghiep/dich-vu-cong-nghiep', '', 12, '0', 1, 0, 'vi'),
(69, 'Thiết bị xây dựng', 'thiet-bi-xay-dung', '/xay-dung/thiet-bi-xay-dung', '', 13, '0', 1, 0, 'vi'),
(70, 'Vật liệu xây dựng', 'vat-lieu-xay-dung', '/xay-dung/vat-lieu-xay-dung', '', 13, '0', 1, 0, 'vi'),
(71, 'Dịch vụ vận tải', 'dich-vu-van-tai', '/dich-vu-giai-tri-du-lich/dich-vu-van-tai', '', 14, '0', 1, 0, 'vi'),
(72, 'Dịch vụ cưới hỏi', 'dich-vu-cuoi-hoi', '/dich-vu-giai-tri-du-lich/dich-vu-cuoi-hoi', '', 14, '0', 1, 0, 'vi'),
(73, 'Dịch vụ du lịch', 'dich-vu-du-lich', '/dich-vu-giai-tri-du-lich/dich-vu-du-lich', '', 14, '0', 1, 0, 'vi'),
(74, 'Cho thuê', 'cho-thue', '/dich-vu-giai-tri-du-lich/cho-thue', '', 14, '0', 1, 0, 'vi'),
(75, 'Game - Đồ chơi', 'game-do-choi', '/dich-vu-giai-tri-du-lich/game-do-choi', '', 14, '0', 1, 0, 'vi'),
(76, 'Thực phẩm tươi sống', 'thuc-pham-tuoi-song', '/thuc-pham-an-uong/thuc-pham-tuoi-song', '', 15, '0', 1, 0, 'vi'),
(77, 'Thực phẩm qua chế biến', 'thuc-pham-qua-che-bien', '/thuc-pham-an-uong/thuc-pham-qua-che-bien', '', 15, '0', 1, 0, 'vi'),
(78, 'Thức ăn nhẹ', 'thuc-an-nhe', '/thuc-pham-an-uong/thuc-an-nhe', '', 15, '0', 1, 0, 'vi'),
(79, 'Đặt sản', 'dat-san', '/thuc-pham-an-uong/dat-san', '', 15, '0', 1, 0, 'vi'),
(80, 'Đồ hộp - Đồ khô', 'do-hop-do-kho', '/thuc-pham-an-uong/do-hop-do-kho', '', 15, '0', 1, 0, 'vi'),
(81, 'Gia vị', 'gia-vi', '/thuc-pham-an-uong/gia-vi', '', 15, '0', 1, 0, 'vi'),
(82, 'Ngũ cốc - Sản phẩm từ ngũ cốc', 'ngu-coc-san-pham-tu-ngu-coc', '/thuc-pham-an-uong/ngu-coc-san-pham-tu-ngu-coc', '', 15, '0', 1, 0, 'vi'),
(83, 'Bánh kẹo - Mức', 'banh-keo-muc', '/thuc-pham-an-uong/banh-keo-muc', '', 15, '0', 1, 0, 'vi'),
(84, 'Thức uống', 'thuc-uong', '/thuc-pham-an-uong/thuc-uong', '', 15, '0', 1, 0, 'vi'),
(85, 'Nguyên liệu', 'nguyen-lieu', '/thuc-pham-an-uong/nguyen-lieu', '', 15, '0', 1, 0, 'vi'),
(86, 'Mỹ phẩm', 'my-pham', '/sac-dep-suc-khoe-y-te/my-pham', '', 16, '0', 1, 0, 'vi'),
(87, 'Thiết bị làm đẹp', 'thiet-bi-lam-dep', '/sac-dep-suc-khoe-y-te/thiet-bi-lam-dep', '', 16, '0', 1, 0, 'vi'),
(88, 'Dịch vụ chăm sóc', 'dich-vu-cham-soc', '/sac-dep-suc-khoe-y-te/dich-vu-cham-soc', '', 16, '0', 1, 0, 'vi'),
(89, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 0, 'vi'),
(90, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1, 0, 'vi'),
(91, 'Nội thất phòng ngủ', 'noi-that-phong-ngu', '/noi-ngoai-that/noi-that-phong-ngu', '', 17, '0', 1, 0, 'vi'),
(92, 'Nội thất phòng ăn - Nhà bếp', 'noi-that-phong-an-nha-bep', '/noi-ngoai-that/noi-that-phong-an-nha-bep', '', 17, '0', 1, 0, 'vi'),
(93, 'Nội thất phòng tắm', 'noi-that-phong-tam', '/noi-ngoai-that/noi-that-phong-tam', '', 17, '0', 1, 0, 'vi'),
(94, 'Nội thất văn phòng', 'noi-that-van-phong', '/noi-ngoai-that/noi-that-van-phong', '', 17, '0', 1, 0, 'vi'),
(95, 'Nội thất nhà hàng', 'noi-that-nha-hang', '/noi-ngoai-that/noi-that-nha-hang', '', 17, '0', 1, 0, 'vi'),
(96, 'Nội thất công cộng', 'noi-that-cong-cong', '/noi-ngoai-that/noi-that-cong-cong', '', 17, '0', 1, 0, 'vi'),
(97, 'Ngoại thất sân vườn', 'ngoai-that-san-vuon', '/noi-ngoai-that/ngoai-that-san-vuon', '', 17, '0', 1, 0, 'vi'),
(98, 'Nội thất thờ cúng', 'noi-that-tho-cung', '/noi-ngoai-that/noi-that-tho-cung', '', 17, '0', 1, 0, 'vi'),
(99, 'Nội thất trẻ em', 'noi-that-tre-em', '/noi-ngoai-that/noi-that-tre-em', '', 17, '0', 1, 0, 'vi'),
(100, 'Đồ thủ công mỹ nghệ', 'do-thu-cong-my-nghe', '/noi-ngoai-that/do-thu-cong-my-nghe', '', 17, '0', 1, 0, 'vi'),
(101, 'Đồ cổ', 'do-co', '/noi-ngoai-that/do-co', '', 17, '0', 1, 0, 'vi'),
(102, 'Thiết kế nội thất', 'thiet-ke-noi-that', '/noi-ngoai-that/thiet-ke-noi-that', '', 17, '0', 1, 0, 'vi'),
(103, 'Quà tặng', 'qua-tang', '/sach-van-phong-pham/qua-tang', '', 18, '0', 1, 0, 'vi'),
(104, 'Sách', 'sach', '/sach-van-phong-pham/sach', '', 18, '0', 1, 0, 'vi'),
(105, 'Thiết bị', 'thiet-bi', '/sach-van-phong-pham/thiet-bi', '', 18, '0', 1, 0, 'vi'),
(106, 'Văn phòng phẩm', 'van-phong-pham', '/sach-van-phong-pham/van-phong-pham', '', 18, '0', 1, 0, 'vi'),
(107, 'Thể thao', 'the-thao', '/the-thao/the-thao', '', 19, '0', 1, 0, 'vi'),
(108, 'Thiết bị - Dụng cụ', 'thiet-bi-dung-cu', '/the-thao/thiet-bi-dung-cu', '', 19, '0', 1, 0, 'vi'),
(109, 'Dịch vụ', 'dich-vu', '/the-thao/dich-vu', '', 19, '0', 1, 0, 'vi'),
(110, 'Lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '0', -1, 0, 'vi'),
(111, 'Hoa quả', 'hoa-qua', '/nong-nghiep/san-pham-nong-nghiep/hoa-qua', '', 20, '0', 1, 0, 'vi'),
(112, 'Cây giống', 'cay-giong', '/nong-nghiep/san-pham-nong-nghiep/cay-giong', '', 20, '0', 1, 0, 'vi'),
(113, 'Máy móc', 'may-moc', '/nong-nghiep/thiet-bi-nong-nghiep/may-moc', '', 21, '0', 1, 0, 'vi'),
(114, 'Phân bón', 'phan-bon', '/nong-nghiep/thiet-bi-nong-nghiep/phan-bon', '', 21, '0', 1, 0, 'vi'),
(115, 'Thuốc nông nghiệp', 'thuoc-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep/thuoc-nong-nghiep', '', 21, '0', 1, 0, 'vi'),
(116, 'Thủy sản chăn nuôi', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', 1, 0, 'vi'),
(117, 'Thủy sản biển', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', 1, 0, 'vi'),
(118, 'Con giống', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', 1, 0, 'vi'),
(119, 'Máy móc', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', 1, 1, 'vi'),
(120, 'Thức ăn', 'thuc-an', '/thuy-san/thiet-bi-thuy-san/thuc-an', '', 24, '0', 1, 2, 'vi'),
(121, 'Thuốc thủy sản', 'thuoc-thuy-san', '/thuy-san/thiet-bi-thuy-san/thuoc-thuy-san', '', 24, '0', 1, 3, 'vi'),
(122, 'Biệt thự - Nhà chia lô', 'biet-thu-nha-chia-lo', '/thuy-san/thiet-bi-thuy-san/biet-thu-nha-chia-lo', '', 24, '0', 1, 10, 'vi'),
(123, 'Mặt bằng kinh doanh', 'mat-bang-kinh-doanh', '/nha-dat/mua-ban-nha/mat-bang-kinh-doanh', '', 28, '0', 1, 0, 'vi'),
(124, 'Nhà chung cư', 'nha-chung-cu', '/nha-dat/mua-ban-nha/nha-chung-cu', '', 28, '0', 1, 0, 'vi'),
(125, 'Nhà mặt phố', 'nha-mat-pho', '/nha-dat/mua-ban-nha/nha-mat-pho', '', 28, '0', 1, 0, 'vi'),
(126, 'Nhà trong ngõ', 'nha-trong-ngo', '/nha-dat/mua-ban-nha/nha-trong-ngo', '', 28, '0', 1, 0, 'vi'),
(127, 'Nhà xưởng, kho', 'nha-xuong-kho', '/nha-dat/mua-ban-nha/nha-xuong-kho', '', 28, '0', 1, 0, 'vi'),
(128, 'Đất canh tác - Làm nông nghiệp', 'dat-canh-tac-lam-nong-nghiep', '/nha-dat/mua-ban-dat/dat-canh-tac-lam-nong-nghiep', '', 29, '0', 1, 0, 'vi'),
(129, 'Đất thổ cư', 'dat-tho-cu', '/nha-dat/mua-ban-dat/dat-tho-cu', '', 29, '0', 1, 0, 'vi'),
(130, 'Cho thuê mặt bằng - Cửa hàng kinh doanh', 'cho-thue-mat-bang-cua-hang-kinh-doanh', '/nha-dat/cho-thue/cho-thue-mat-bang-cua-hang-kinh-doanh', '', 30, '0', 1, 0, 'vi'),
(131, 'Cho thuê nhà', 'cho-thue-nha', '/nha-dat/cho-thue/cho-thue-nha', '', 30, '0', 1, 0, 'vi'),
(132, 'Cho thuê phòng trọ - Ki ốt', 'cho-thue-phong-tro-ki-ot', '/nha-dat/cho-thue/cho-thue-phong-tro-ki-ot', '', 30, '0', 1, 0, 'vi'),
(133, 'Cho thuê văn phòng', 'cho-thue-van-phong', '/nha-dat/cho-thue/cho-thue-van-phong', '', 30, '0', 1, 0, 'vi'),
(134, 'Cho thuê đất', 'cho-thue-dat', '/nha-dat/cho-thue/cho-thue-dat', '', 30, '0', 1, 0, 'vi'),
(135, 'Cho thuê kho xưởng', 'cho-thue-kho-xuong', '/nha-dat/cho-thue/cho-thue-kho-xuong', '', 30, '0', 1, 0, 'vi'),
(136, 'Cần thuê mặt bằng - Cửa hàng kihn doanh', 'can-thue-mat-bang-cua-hang-kihn-doanh', '/nha-dat/can-thue/can-thue-mat-bang-cua-hang-kihn-doanh', '', 31, '0', 1, 0, 'vi'),
(137, 'Cần thuê nhà', 'can-thue-nha', '/nha-dat/can-thue/can-thue-nha', '', 31, '0', 1, 0, 'vi'),
(138, 'Cần thuê phòng trọ - Ki ốt', 'can-thue-phong-tro-ki-ot', '/nha-dat/can-thue/can-thue-phong-tro-ki-ot', '', 31, '0', 1, 0, 'vi'),
(139, 'Cần thuê văn phòng', 'can-thue-van-phong', '/nha-dat/can-thue/can-thue-van-phong', '', 31, '0', 1, 0, 'vi'),
(140, 'Cần thuê đất', 'can-thue-dat', '/nha-dat/can-thue/can-thue-dat', '', 31, '0', 1, 0, 'vi'),
(141, 'Cần thuê kho xưởng', 'can-thue-kho-xuong', '/nha-dat/can-thue/can-thue-kho-xuong', '', 31, '0', 1, 0, 'vi'),
(142, 'Quần áo nam', 'quan-ao-nam', '/thoi-trang/thoi-trang-nam/quan-ao-nam', '', 35, '0', 1, 0, 'vi'),
(143, 'Giày dép nam', 'giay-dep-nam', '/thoi-trang/thoi-trang-nam/giay-dep-nam', '', 35, '0', 1, 0, 'vi'),
(144, 'Phụ kiện thời trang nam', 'phu-kien-thoi-trang-nam', '/thoi-trang/thoi-trang-nam/phu-kien-thoi-trang-nam', '', 35, '0', 1, 0, 'vi'),
(145, 'Quần áo nữ', 'quan-ao-nu', '/thoi-trang/thoi-trang-nu/quan-ao-nu', '', 36, '0', 1, 0, 'vi'),
(146, 'Giày dép nữ', 'giay-dep-nu', '/thoi-trang/thoi-trang-nu/giay-dep-nu', '', 36, '0', 1, 0, 'vi'),
(147, 'Phụ kiện thời trang nữ', 'phu-kien-thoi-trang-nu', '/thoi-trang/thoi-trang-nu/phu-kien-thoi-trang-nu', '', 36, '0', 1, 0, 'vi'),
(148, 'Thời trang tóc', 'thoi-trang-toc', '/thoi-trang/thoi-trang-nu/thoi-trang-toc', '', 36, '0', 1, 0, 'vi'),
(149, 'Trang phục teen nam', 'trang-phuc-teen-nam', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nam', '', 37, '0', 1, 0, 'vi'),
(150, 'Trang phục teen nữ', 'trang-phuc-teen-nu', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nu', '', 37, '0', 1, 0, 'vi'),
(151, 'Quần áo trẻ em', 'quan-ao-tre-em', '/thoi-trang/thoi-trang-tre-em/quan-ao-tre-em', '', 38, '0', 1, 0, 'vi'),
(152, 'Giày dép trẻ em', 'giay-dep-tre-em', '/thoi-trang/thoi-trang-tre-em/giay-dep-tre-em', '', 38, '0', 1, 0, 'vi'),
(153, 'Phụ kiện thời trang trẻ em', 'phu-kien-thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em/phu-kien-thoi-trang-tre-em', '', 38, '0', 1, 0, 'vi'),
(154, 'Quần áo đồng phục', 'quan-ao-dong-phuc', '/thoi-trang/dong-phuc-do-doi/quan-ao-dong-phuc', '', 39, '0', 1, 0, 'vi'),
(155, 'Quần áo đôi', 'quan-ao-doi', '/thoi-trang/dong-phuc-do-doi/quan-ao-doi', '', 39, '0', 1, 0, 'vi'),
(156, 'Phụ kiện đồ đồng phục', 'phu-kien-do-dong-phuc', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-dong-phuc', '', 39, '0', 1, 0, 'vi'),
(157, 'Phu kiện đồ đôi', 'phu-kien-do-doi', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-doi', '', 39, '0', 1, 0, 'vi'),
(158, 'Trang sức cho nữ', 'trang-suc-cho-nu', '/thoi-trang/trang-suc/trang-suc-cho-nu', '', 41, '0', 1, 0, 'vi'),
(159, 'Trang sức cho nam', 'trang-suc-cho-nam', '/thoi-trang/trang-suc/trang-suc-cho-nam', '', 41, '0', 1, 0, 'vi'),
(160, 'Trang sức cặp đôi', 'trang-suc-cap-doi', '/thoi-trang/trang-suc/trang-suc-cap-doi', '', 41, '0', 1, 0, 'vi'),
(161, 'Trang sức trẻ em', 'trang-suc-tre-em', '/thoi-trang/trang-suc/trang-suc-tre-em', '', 41, '0', 1, 0, 'vi'),
(162, 'Nhẫn cưới - Đính hôn', 'nhan-cuoi-dinh-hon', '/thoi-trang/trang-suc/nhan-cuoi-dinh-hon', '', 41, '0', 1, 0, 'vi'),
(163, 'Đá quý', 'da-quy', '/thoi-trang/trang-suc/da-quy', '', 41, '0', 1, 0, 'vi'),
(164, 'Vàng miếng', 'vang-mieng', '/thoi-trang/trang-suc/vang-mieng', '', 41, '0', 1, 0, 'vi'),
(165, 'Giày thể thao', 'giay-the-thao', '/thoi-trang/giay-dep/giay-the-thao', '', 42, '0', 1, 0, 'vi'),
(166, 'Phụ kiện', 'phu-kien', '/thoi-trang/giay-dep/phu-kien', '', 42, '0', 1, 0, 'vi'),
(167, 'Giày dép khác', 'giay-dep-khac', '/thoi-trang/giay-dep/giay-dep-khac', '', 42, '0', 1, 0, 'vi'),
(168, 'Nông nghiệp1', 'nong-nghiep1', '/nong-nghiep/nong-nghiep1', 'note', 1, '', -1, 0, 'vi'),
(172, 'Nông nghiệp 2', 'nong-nghiep-2', '/nong-nghiep/nong-nghiep-2', 'asdasdas', 1, '', -2, 0, 'vi'),
(173, 'nguyen van do', 'nguyen-van-do', '/nong-nghiep/nguyen-van-do', 'noter', 1, '', -1, 0, 'vi'),
(174, 'lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '', 1, 9, 'vi'),
(175, 'Thông tin chung', 'thong-tin-chung', '/nong-nghiep/thong-tin-chung', '', 1, '', 0, 0, 'vi'),
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
(2, 'SDT', 'Số Điện Thoại', '0963586123', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:41:20', '2018-06-21 23:41:20'),
(3, 'DiaChi', 'Địa Chỉ', '7 Đường Số 6, Kp 5, Bình Hưng Hòa B, Bình Tân, Hồ Chí Minh, Việt Nam', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:45:33', '2018-06-21 23:45:33'),
(5, 'WebName', 'Website', 'tomgiongvodat.com', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:01:09', '2018-06-22 00:01:09'),
(8, 'Logo', 'Hình Logo', '/public/img/images/information/img-15301581451485-8.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2018-06-22 00:03:46', '2018-06-22 00:03:46'),
(10, 'facebook', 'Page Facebook', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:14', '2018-06-22 00:06:14'),
(11, 'google', 'Link Google', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:40', '2018-06-22 00:06:40'),
(12, 'twitter', 'twitter', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:16', '2018-06-22 00:07:16'),
(13, 'pinterest', 'pinterest', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:18', '2018-06-22 00:07:18'),
(19, 'Title', 'Tiêu Đề Trang', 'Công Ty THHH Mạch Gia Phát', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:53:07', '2018-06-22 01:53:07'),
(20, 'Des', 'Mô Tả Trang', 'Công Ty THHH Mạch Gia Phát, Ep cọc', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:55:35', '2018-06-22 01:55:35'),
(23, 'Keyword', 'Từ Khóa', 'Từ Khóa', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 21:37:45', '2018-06-27 21:37:45'),
(24, 'Auth', 'Người Phát Triển', 'nguyenvando.net', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 22:09:29', '2018-06-27 22:09:29'),
(25, 'lblHotline', 'Hotline', 'Hotline', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:09:25', '2018-06-28 11:09:25'),
(26, 'Hotline', 'HOTLINE', '0123456789', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:10:14', '2018-06-28 11:10:14'),
(27, 'lblThongTinCongty', 'title Thông Tin Công Ty', 'Thông Tin Công Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:12:32', '2018-06-28 11:12:32'),
(28, 'lblDichVu', 'title Dịch Vụ', 'Dịch Vụ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:13:34', '2018-06-28 11:13:34'),
(29, 'lblCongTy', 'title Công Ty', 'Công Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:14', '2018-06-28 11:14:14'),
(30, 'lblHoTro', 'title Hỗ Trợ', 'Hỗ Trợ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:49', '2018-06-28 11:14:49'),
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
(1, 'Trang Chủ', '/', 0, 'TopMainMenu', 'home', 1, 'noet', '2018-05-23 00:00:00', '2018-05-31 05:17:39'),
(2, 'Lịch Khai GIảng', '/page-lich-khai-giang/', 0, 'TopMainMenu', 'home', 1, 'noet', '2018-05-23 00:00:00', '2018-05-31 05:17:39'),
(3, 'Trang Chủ', '/', 0, 'FooterMenu', 'home', 0, '', '0000-00-00 00:00:00', '2018-05-26 09:47:08'),
(10, 'Sản Phẩm', '/sanpham/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 04:37:47', '2018-05-26 09:47:08'),
(11, 'Giới Thiệu', 'a', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:28:56', '2018-05-26 09:47:08'),
(13, 'Phầm Mềm', '/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:29:41', '2018-05-26 09:47:08'),
(14, 'Giới Thiệu', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:46:26', '2018-05-26 09:57:09'),
(15, 'Chứng Nhận', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:47:26', '2018-05-26 09:57:09'),
(17, 'Chương Trình Liên Kết', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:49:11', '2018-05-26 09:57:09'),
(18, 'Điều khoản và điều kiện', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:14', '2018-05-26 09:57:09'),
(19, 'Liên Hệ Chúng Tôi', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:31', '2018-05-26 09:57:09'),
(20, 'Thanh toán & Phiếu thưởng của tôi', '#', 0, 'FooterMenuHoTro', 'home', 0, '', '2018-05-26 09:56:56', '2018-05-26 10:01:30'),
(21, 'Thông Tin Đặt Hàng', '#', 0, 'FooterMenuHoTro', 'home', 0, '', '2018-05-26 10:00:47', '2018-05-26 10:01:30'),
(22, 'Trueconf', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:13:28', '2018-05-26 10:15:16'),
(23, 'CTTV', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:08', '2018-05-26 10:15:16'),
(24, 'Phần Mềm', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:37', '2018-05-26 10:15:16'),
(25, 'Mạng Máy Tính', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:15:02', '2018-05-26 10:15:16'),
(26, 'Chương  Trình Đào Tạo', '#', 0, 'TopMainMenu', 'home', 0, '', '2018-05-26 10:49:35', '2018-05-31 05:17:39'),
(27, 'Thiết Kế Website', '#', 26, 'TopMainMenu', 'home', 0, '', '2018-05-26 10:50:16', '2018-05-31 05:17:39'),
(28, 'Đồ Họa Quản Cáo', '#', 26, 'TopMainMenu', 'home', 0, '', '2018-05-26 11:04:49', '2018-05-31 05:17:39'),
(29, 'Thiết Kế Website ASP.net', '#', 27, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:41:25', '2018-05-31 05:17:39'),
(30, 'Thiết Kế Website PHP & Mysql', '#', 27, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:55:46', '2018-05-31 05:17:39'),
(31, 'Tin Học Văn Phòng', '#', 2, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:57:10', '2018-05-31 05:17:39'),
(32, 'Lập Trinh & CSDL', '#', 2, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:57:59', '2018-05-31 05:17:39'),
(33, 'Đồ Họa Đa Truyền Thông', '#', 2, 'TopMainMenu', 'home', 0, '', '2018-05-30 10:58:51', '2018-05-31 05:17:39'),
(34, 'Dịch Vụ', '#', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:00:08', '2018-05-31 05:17:39'),
(35, 'Tin Tức', '/page-tin-tuc/', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:02:27', '2018-05-31 05:17:39'),
(36, 'Hướng Dẫn Thanh Toán', '#', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:02:51', '2018-05-31 05:17:39'),
(37, 'Liên Hệ', '/page-lien-he.html', 0, 'TopMainMenu', 'home', 0, '', '2018-05-30 11:03:34', '2018-05-31 05:17:39'),
(38, 'Thiết Kế Phần Mềm', '#', 34, 'TopMainMenu', 'home', 1, '', '2018-05-30 11:19:56', '2018-05-31 05:17:39'),
(39, 'Đào Tạo Theo Yêu Cầu', '#', 34, 'TopMainMenu', 'home', 2, '', '2018-05-30 11:20:36', '2018-05-31 05:17:39'),
(40, 'Tư vấn quản lý dự án', '#', 34, 'TopMainMenu', 'home', 3, '', '2018-05-30 11:21:44', '2018-05-31 05:17:39'),
(41, 'Cung Cấp Thiết Bị Phần Mềm', '#', 34, 'TopMainMenu', 'home', 4, '', '2018-05-30 11:22:45', '2018-05-31 05:17:39');

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
('152722501298a2d84ec6', 4, 'Giải Pháp Công Nghệ', 'giai-phap-cong-nghe', '<p>asda</p>\r\n', '<p>sdas</p>\r\n', 'as', 'da', 's', 1, '2018-05-25 07:10:12', '/public/img/images/news/152722501298a2d84ec6/news-152722501298a2d84ec6.jpeg', 1, 1, 1),
('15272261470845a4da8a', 1, 'Easy C# - Lập Trình Căn Bản Dùng C#', 'easy-c--lap-trinh-can-ban-dung-c', '<p>sửa triing quản l&yacute; b&agrave;i viết</p>\r\n', '', '', '', '', 1, '2018-05-25 07:29:07', '/public/img/images/news/2018/06/news-15272261470845a4da8a.jpeg', 0, 0, 0),
('1527226163750ec883c3', 2, 'Giải Pháp', 'giai-phap', '', '', '', '', '', 0, '2018-05-25 07:29:23', '/public/img/images/news/2018/05/news-1527226163750ec883c3.jpeg', 0, 0, 0),
('1527226184cca716f43a', 5, 'DỊch Vụ', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:29:44', '/public/img/images/news/2018/06/news-1527226184cca716f43a.jpeg', 0, 0, 0),
('1527226196e4f12df246', 6, 'liên hệ', 'lien-he', '', '', '', '', '', 0, '2018-05-25 07:29:56', '', 0, 0, 0),
('1527226253a277f24915', 1, 'Lập Trình Di Động', 'lap-trinh-di-dong', '', '', '', '', '', 1, '2018-05-25 07:30:53', '/public/img/images/news/2018/06/news-1527226253a277f24915.jpeg', 0, 0, 0),
('15272262697353bebcc7', 1, 'Java Web', 'java-web', '', '', '', '', '', 1, '2018-05-25 07:31:09', '/public/img/images/news/2018/06/news-15272262697353bebcc7.jpeg', 0, 0, 0),
('1527226295fa68e41d65', 1, 'PHP Nâng Cao', 'php-nang-cao', '', '', '', '', '', 1, '2018-05-25 07:31:35', '/public/img/images/news/2018/06/news-1527226295fa68e41d65.jpeg', 0, 0, 0),
('152722633118680e5f03', 2, 'DỊch Vụ', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:32:11', '/public/img/images/news/2018/05/news-152722633118680e5f03.jpeg', 0, 0, 0),
('1527226362aba2aaf008', 2, 'Thiết Bị', 'thiet-bi', '', '', '', '', '', 0, '2018-05-25 07:32:42', '/public/img/images/news/2018/05/news-1527226362aba2aaf008.jpeg', 0, 0, 0),
('1527226378afcbc5f756', 2, 'Năng Lực', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:32:58', '/public/img/images/news/2018/05/news-1527226378afcbc5f756.png', 0, 0, 0),
('152722757475630e9180', 4, 'Dịch Vụ', 'dich-vu', '', '', '', '', '', 0, '2018-05-25 07:52:54', '/public/img/images/news/152722757475630e9180/news-152722757475630e9180.jpeg', 0, 0, 0),
('15272275895870cc78ed', 4, 'Năng Lực', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:53:09', '/public/img/images/news/15272275895870cc78ed/news-15272275895870cc78ed.jpeg', 0, 0, 0),
('1527227617efd1fe40fb', 5, 'Thiết Vị', 'thiet-vi', '', '', '', '', '', 0, '2018-05-25 07:53:37', '/public/img/images/news/2018/06/news-1527227617efd1fe40fb.png', 0, 0, 0),
('152722762892701723eb', 5, 'Năng Lực', 'nang-luc', '', '', '', '', '', 0, '2018-05-25 07:53:48', '/public/img/images/news/2018/06/news-152722762892701723eb.png', 0, 0, 0),
('1527603697584ae26fde', 13, 'Quảng Cáo Slide Trang Chủ', 'quang-cao-slide-trang-chu', '', '<p>as as das das</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>&nbsp;da</p>\r\n\r\n<p>s&nbsp;</p>\r\n\r\n<p>da</p>\r\n\r\n<p>s da</p>\r\n', '', '', '', 0, '2018-05-29 16:21:37', '/public/img/images/news/2018/06/news-1527603697584ae26fde.jpeg', 0, 0, 0),
('1527610439a5fa2a20f1', 1, 'Thiết Kế Website Cho Doanh Nghiệp', 'thiet-ke-website-cho-doanh-nghiep', '<p>as as</p>\r\n', '<p>as as dasd</p>\r\n', 'asda', 'sda', 'sda', 1, '2018-05-29 18:13:59', '/public/img/images/news/2018/06/news-1527610439a5fa2a20f1.jpeg', 1, 1, 1),
('1527610651d1af328267', 13, 'Quang Cáo Danh Mục MẶc Định', 'quang-cao-danh-muc-mac-dinh', '<p>sdf sdfs</p>\r\n', '<p>df sd</p>\r\n', 'sd', 'fsdf', 'sdf', 1, '2018-05-29 18:17:31', '/public/img/images/news/2018/05/news-1527610651d1af328267.jpeg', 1, 1, 1),
('15278206474048fe0f00', 5, 'Quang Cáo Danh Mục MẶc Định', 'quang-cao-danh-muc-mac-dinh', '', '', '', '', '', 1, '2018-06-01 04:37:27', '/public/img/images/news/2018/06/news-152782064751362f22a4.jpeg', 1, 1, 1);

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
(1, 1, 'Lập Trình Web & Database', 'lap-trinh-web-database', 'giới thisssss', 'about', 'hoi nghị truyền hinh', '<p><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong>&nbsp;đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM</p>\r\n\r\n<p>cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;&nbsp;0314538127&nbsp;ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</p>\r\n', '<h2>&nbsp;</h2>\r\n\r\n<h2><strong>GIỚI THIỆU RHMTW</strong></h2>\r\n\r\n<p><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong> đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;&nbsp;0314538127&nbsp;ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</p>\r\n\r\n<p><strong>VKHS</strong> cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong> gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ. <a href=\"http://yttv.vn\"><em>(</em></a><em><a href=\"http://yttv.vn\">Xem th&ecirc;m</a></em><a href=\"http://yttv.vn\"><em>...)</em></a></li>\r\n	<li><strong>Tư vấn sức khoẻ từ xa</strong> với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn. <em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">...)</a></em></li>\r\n	<li><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất. <em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">...)</a></em></li>\r\n	<li><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n. <em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">...)</a></em></li>\r\n	<li><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa: </strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\">(Xem th&ecirc;m...)</a></em></li>\r\n	<li><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật: </strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip; <strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</li>\r\n	<li><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong> theo chỉ định của BS điều trị.&nbsp;</li>\r\n	<li><strong>Vận chuyển </strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>.</p>\r\n\r\n<ul>\r\n	<li>Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</li>\r\n</ul>\r\n\r\n<p><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></p>\r\n\r\n<p>-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS. <em>(<a href=\"http://vkhs.vn/mobile/vkhs.apk\">Tải ứng dụng</a>)</em></p>\r\n\r\n<p>-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</p>\r\n\r\n<p>-V&agrave;o trang web VKHS hay VK_SOS</p>\r\n\r\n<p>-Điện thoại số &hellip;</p>\r\n\r\n<p>-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế. &nbsp;</p>\r\n', '/public/img/images/pages/2018/05/pages-1.jpeg', 1, 1, '{\"showhomesevice\":\"1\",\"showhomenews\":\"0\",\"ShowInHome\":\"1\",\"TypeShow\":\"mau3\",\"IsSevicer\":\"0\"}', 0),
(2, 1, 'CCTV', 'cctv', 'TIUn ', 'moa', 'sadfsd', '<p>asda</p>\r\n', '<p>asdas</p>\r\n', '/public/img/images/pages/2/pages-2.jpeg', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"1\",\"ShowInHome\":\"1\",\"TypeShow\":\"mau3\"}', 0),
(4, 1, 'Phần Mềm', 'phan-mem', '', '', '', '', '', '/public/img/images', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"ShowInHome\":\"1\",\"TypeShow\":\"mau2\"}', 0),
(5, 1, 'Mạng Máy Tính', 'mang-may-tinh', '', '', '', '', '', '/public/img/images/pages/2018/06/pages-5.jpeg', 1, 1, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\"}', 0),
(6, 1, 'Liên hệ', 'lien-he', '', '', '', '', '<p>&nbsp;</p>\r\n\r\n<h2><strong>GIỚI THIỆU RHMTW</strong></h2>\r\n\r\n<p><strong>C&ocirc;ng ty Cổ phần Giải ph&aacute;p sức khoẻ Vạn Khang (VKHS)</strong>&nbsp;đ&atilde; được Sở Kế Hoạch v&agrave; Đầu tư TP HCM cấp Giấy Đăng k&yacute; kinh doanh số&nbsp;&nbsp;0314538127&nbsp;ng&agrave;y 26&nbsp;th&aacute;ng 07 năm 2017</p>\r\n\r\n<p><strong>VKHS</strong>&nbsp;cung cấp c&aacute;c giải ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ cho người d&acirc;n tr&ecirc;n cả nước với sự đồng h&agrave;nh của c&aacute;c cơ sở y tế v&agrave; c&aacute;c nh&agrave; cung ứng dịch vụ, sản phẩm y tế bằng c&aacute;ch ứng dụng c&ocirc;ng nghệ th&ocirc;ng tin ti&ecirc;n tiến thế hệ thứ tư, mang lại sự tiện dụng v&agrave; nhiều lợi &iacute;ch cho người sử dụng.</p>\r\n\r\n<p><strong>Ch&uacute;ng t&ocirc;i cung ứng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Truyền th&ocirc;ng gi&aacute;o dục sức khoẻ</strong>&nbsp;gi&uacute;p người d&acirc;n c&oacute; kiến thức v&agrave; thực h&agrave;nh đ&uacute;ng c&aacute;c biện ph&aacute;p dự ph&ograve;ng, chăm s&oacute;c, bảo vệ v&agrave; n&acirc;ng cao sức khoẻ.&nbsp;<a href=\"http://yttv.vn\"><em>(</em></a><em><a href=\"http://yttv.vn\">Xem th&ecirc;m</a></em><a href=\"http://yttv.vn\"><em>...)</em></a></li>\r\n	<li><strong>Tư vấn sức khoẻ từ xa</strong>&nbsp;với c&aacute;c chuy&ecirc;n gia y tế qua Hội nghị truyền h&igrave;nh: Người d&acirc;n mặt đối mặt với chuy&ecirc;n gia để trao đổi, gởi hồ sơ sức khoẻ, bệnh tật đến chuy&ecirc;n gia để được tư vấn.&nbsp;<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222244/tu-van-suc-khoe-tu-xa.html\">...)</a></em></li>\r\n	<li><strong>Cấp cứu tại chỗ</strong>: chỉ cần bấm n&uacute;t SOS tr&ecirc;n ứng dụng VKHS hoặc VK_SOS. Hệ thống điều h&agrave;nh tự động sẽ định vị người gọi cấp cứu v&agrave; th&ocirc;ng b&aacute;o y&ecirc;u cầu cấp cứu đến xe cấp cứu gần nhất để thực hiện nhiệm vụ tiếp cận v&agrave; cấp cứu trong thời gian ngắn nhất.&nbsp;<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222560/cap-cuu-tai-cho.html\">...)</a></em></li>\r\n	<li><strong>Chữa bệnh tại nh&agrave;</strong>: BS, Điều dưỡng, Kỹ thuật vi&ecirc;n Vật l&yacute; trị liệu, Kỹ thuật vi&ecirc;n Y học cổ truyền đến nh&agrave; theo lịch hẹn để kh&aacute;m, chẩn đo&aacute;n, chăm s&oacute;c, chữa trị cho bệnh nh&acirc;n.&nbsp;<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">(</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">Xem th&ecirc;m</a><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513222646/chua-benh-tai-nha.html\">...)</a></em></li>\r\n	<li><strong>Đăng k&yacute; kh&aacute;m chữa bệnh với c&aacute;c cơ sở kh&aacute;m chữa bệnh để được cấp số thứ tự, hẹn giờ v&agrave; thanh to&aacute;n từ xa:&nbsp;</strong>chỉ cần bấm n&uacute;t &ldquo;Đăng k&yacute; kh&aacute;m bệnh&rdquo; v&agrave; chọn lựa bệnh viện, loại h&igrave;nh kh&aacute;m bệnh, chuy&ecirc;n khoa kh&aacute;m&hellip; sẽ được hẹn giờ, kh&ocirc;ng phải chờ đợi.<em><a href=\"http://vkhs.vn/index_bak.html#/news/201712141513221522/dang-ky-kham-benh.html\">(Xem th&ecirc;m...)</a></em></li>\r\n	<li><strong>Quyền quản l&yacute;, sử dụng hồ sơ sức khoẻ, bệnh tật:&nbsp;</strong>Người sử dụng được cấp miễn ph&iacute; 500MB tr&ecirc;n Cloud VKHS để tải l&ecirc;n, lưu trữ v&agrave; sử dụng hồ sơ sức khoẻ bệnh tật của m&igrave;nh như giấy ra viện, đơn thuốc, kết quả x&eacute;t nghiệm, XQ, si&ecirc;u &acirc;m, CT&hellip;&nbsp;<strong>Hồ sơ sức khoẻ được bảo mật tuyệt đối</strong>, chỉ người chủ hồ sơ mới được ph&eacute;p sử dụng dữ liệu của m&igrave;nh.</li>\r\n	<li><strong>Giao thuốc tại nh&agrave;, lấy mẫu bệnh phẩm x&eacute;t nghiệm tại nh&agrave;</strong>&nbsp;theo chỉ định của BS điều trị.&nbsp;</li>\r\n	<li><strong>Vận chuyển&nbsp;</strong>BS, ĐD, KTV đến nh&agrave; bệnh nh&acirc;n; bệnh nh&acirc;n đến BV/PK để kh&aacute;m bệnh; bệnh nh&acirc;n từ BV/PK về nh&agrave; hoặc chuyển viện&hellip; bằng nhiều loại phương tiện (&ocirc; t&ocirc; cấp cứu, &Ocirc; t&ocirc; 4, 7,12 chỗ, M&ocirc;t&ocirc;).<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c giải ph&aacute;p c&ocirc;ng nghệ đều được miễn ph&iacute;</strong>.</p>\r\n\r\n<ul>\r\n	<li>Người sử dụng chỉ thanh to&aacute;n ph&iacute; dịch vụ y tế v&agrave; sản phẩm y tế cho nh&agrave; cung ứng, theo gi&aacute; ch&iacute;nh thức được c&ocirc;ng bố tr&ecirc;n trang web VKHS, VKSOS v&agrave; của nh&agrave; cung ứng. Việc thanh to&aacute;n được thực hiện online qua ứng dụng VKHS hay VK_SOS hoặc tr&ecirc;n trang web.</li>\r\n</ul>\r\n\r\n<p><strong>Để sử dụng c&aacute;c giải ph&aacute;p sức khoẻ:</strong></p>\r\n\r\n<p>-Tải miễn ph&iacute; ứng dụng VKHS hay VK_SOS.&nbsp;<em>(<a href=\"http://vkhs.vn/mobile/vkhs.apk\">Tải ứng dụng</a>)</em></p>\r\n\r\n<p>-Lập Thẻ ng&acirc;n h&agrave;ng đồng thương hiệu Vietin &ndash; VKHS</p>\r\n\r\n<p>-V&agrave;o trang web VKHS hay VK_SOS</p>\r\n\r\n<p>-Điện thoại số &hellip;</p>\r\n\r\n<p>-Sử dụng c&aacute;c thiết bị được đặt tại c&aacute;c cơ sở y tế.&nbsp;&nbsp;</p>\r\n\r\n<p><a href=\"http://{Social_Google}\">http://{Social_Google}</a></p>\r\n', '/public/img/images', 1, 0, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"IsSevicer\":\"0\"}', 0),
(9, 1, 'Giới Thiệu', 'gioi-thieu', 'sdfsd', 'qasd as', 'asd as', '<p>nguye</p>\r\n', '<h2>____Mau1Title___</h2>\r\n\r\n<p>___Mau1Summary___</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>&nbsp;</h3>\r\n', 'asd a', 1, 0, '{\"home\":\"1\",\"ShowInHome\":\"0\",\"TypeShow\":\"mau2\"}', 0),
(10, 1, 'Quảng Cáo Slide Trang Chủ', 'quang-cao-slide-trang-chu', 'asda', 'sda', 'sdas', '', '', '/public/img/images/pages/2018/05/pages-10.jpeg', 1, 1, '', 1),
(13, 0, 'Các Dự Án Đã Thực Hiện', 'cac-du-an-da-thuc-hien', '', '', '', '', '', '', 0, 1, '{\"ShowInHome\":\"1\",\"TypeShow\":\"mau4\"}', 0),
(16, 0, 'Quang Cáo Danh Mục MẶc Định', 'quang-cao-danh-muc-mac-dinh', 'asd', 'asd', 'ad', '', '', '', 0, 0, '{\"ShowInHome\":\"0\",\"TypeShow\":\"mau2\"}', 0),
(19, 1, 'Tin Tức', 'tin-tuc', '', '', '', '', '', '', 0, 0, '{\"IsSevicer\":\"0\"}', 1);

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
('1', '0', 47, 'betaglucan-400g', '', '0.0000', '0.0000', 'cập nhật', 'asd asdaasass', 'betaglucan-500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 11, 1, 0, 'vi'),
('101', '1', 47, 'BIO VET 500g', '', '0.0000', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- Máy tính.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng nói.<br />- Ghi âm.<br />- Loa speaker.</p>', '', 'BIO VET 500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 0, 'vi'),
('102', '1', 48, 'BKC V80', '', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Kiểu dáng mạnh mẽ với bàn phím Qwerty</li>\r\n<li>Máy ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>Máy nghe nhạc, xem phim MP3/eAAC+/3GP/MP4</li>\r\n<li>Đài FM tích hợp, jack tai nghe 3.5mm</li>\r\n<li>Ghi âm FM</li>\r\n<li>Kết nối Bluetooth, USB, Facebook, Twitter apps </li>\r\n</ul>', '', 'BKC V80.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('1031', '1', 48, 'BZT VET', '', '0.0000', '0.0000', '<p>- Máy tính.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng nói.</p>', '', 'BZT VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('104', '1', 47, 'CLEA VET', '', '790000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế đơn giản, trẻ trung</li>\r\n<li>Máy ảnh VGA</li>\r\n<li>Hỗ trợ thẻ nhớ ngoài</li>\r\n<li>Máy nghe nhạc MP3</li>\r\n<li>Đài FM tích hợp</li>\r\n<li>Chế độ đèn pin </li>\r\n</ul>', '', 'CLEA VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('105', '1', 48, 'dr beta 500ml', '', '0.0000', '0.0000', '<p>- Hỗ trợ Java MIDP 2.0<br />- FM radio tích hợp<br />- Máy nghe nhạc kỹ thuật số hỗ trợ các dạng thức MP3/AAC/AAC+/MPEG4<br />- Từ điển T9 đoán trước văn bản nhập<br />- Chức năng tổ chức<br />- Máy ghi âm tích hợp</p>', '', 'dr beta 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 0, 'vi'),
('106', '1', 4, 'fasfive 500g', '', '499000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế nhỏ gọn chắc chắn</li>\r\n<li>B&agrave;n ph&iacute;m chống bụi</li>\r\n<li>Nhạc chu&ocirc;ng đa &acirc;m </li>\r\n<li>Chức năng đ&egrave;n pin</li>\r\n<li>Pin bền bỉ </li>\r\n</ul>', NULL, 'fasfive 500g.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 5, 1, 0, 'vi'),
('107', '1', 4, 'green v007 1kg', '', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 Sóng online</li>\r\n<li>Máy ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Máy nghe nhạc MP3, AAC</li>\r\n<li>Đài FM tích hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', '', 'green v007 1kg.jpg', '0000-00-00 00:00:00', 100, '', 0, 3, 1, 0, 'vi'),
('109', '1', 4, 'KA WATER 123', 'ka-water-123', '0.0000', '0.0000', '<p>asda sdas adsdaad as das das dasd asdas ds</p>\r\n', '', '/public/img/images/sanpham/109/109-1526967098324-0.jpeg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('111', '1', 3, 'LIVER VET 500G', 'liver-vet-500g', '234234232.0000', '0.0000', '<ul>\r\n	<li>M&agrave;n h&igrave;nh Wide rộng 2.4 inches</li>\r\n	<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n	<li>M&aacute;y ảnh 2.0 MP, hỗ trợ Webcam</li>\r\n	<li>M&aacute;y nghe nhạc, xem phim</li>\r\n	<li>Hỗ trợ Wifi, yahoo, Opera</li>\r\n	<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n</ul>\r\n', '<p>quản tri unasd s</p>\r\n', '/public/img/images/sanpham/111/111-1526961482.jpeg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('112', '1', 3, 'liver water 500ml', 'liver-water-500ml', '1213231231.0000', '0.0000', '<p><strong>K-Touch B896 - Ấn tượng với chất lượng &acirc;m thanh</strong><br />\r\n- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng<br />\r\n- Camera VGA, hỗ trợ quay phim<br />\r\n- M&aacute;y nghe nhạc MP3, AAC<br />\r\n- Lắc x&iacute; ngầu</p>\r\n', '', 'liver water 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('113', '1', 4, 'PREMAX 5KG', '', '1489000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy dễ d&agrave;ng nhắn tin</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Yahoo chat, tr&igrave;nh duyệt web Opera</li>\r\n<li>Chức năng chặn tin nhắn, cuộc gọi </li>\r\n</ul>', NULL, 'PREMAX 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('114', '1', 4, 'RS-alum v06', '', '0.0000', '0.0000', '<p><strong><span style=\"color: #ff0000;\">K-Tuoch D173 - Điện thoại 2 Sim</span></strong><br />- Hỗ trợ 2 khe gắn Sim (1 s&oacute;ng)<br />- Thiết kế thời trang, m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- Cảm ứng lắc tay chuyển nhạc, h&igrave;nh nền<br />- C&oacute; đ&egrave;n cực tiếp để soi tiền giả</p>', NULL, 'RS-alum v06.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('115', '1', 4, 'RS-ankavet 5kg', '', '0.0000', '0.0000', '<p>- PDA hỗ trợ mạng 3G với</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> WCDMA/EVDO  <br />- Hệ điều h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- Hỗ trợ xem tivi<br />- Camera 2.0 MP, hỗ trợ quay phim<br />- Kết nối interet với Wifi, truyền tải dữ liệu 3G<br />- Kết nối Bluetooth, USB, GPRS</div>', NULL, 'RS-ankavet 5kg.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('116', '1', 3, 'RS-DRT VET 1KG', 'rsdrt-vet-1kg', '1389000.0000', '0.0000', '<ul>\r\n	<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n	<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n	<li>Chức năng xem Tivi Analog</li>\r\n	<li>Nghe nhạc, xem phim MP3, MP4, 3GP</li>\r\n	<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n	<li>Chặn cuộc gọi, chặn tin nhắn, chat Yahoo</li>\r\n	<li>Lắc tay đổi nhạc, h&igrave;nh nền</li>\r\n</ul>\r\n', '', '/public/img/images/sanpham/116/116-15274729971715-2.jpeg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 0, 'vi'),
('117', '1', 4, 'RS-KA C 25 - 5KG', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'RS-KA C 25 - 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('12312312', 'admin', 3, 'nguyen van độ', 'nguyen-van-do', '23423423.0000', '32.0000', '<p>AS asA Sa as asd&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>d a</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d a</p>\r\n\r\n<p>sd</p>\r\n\r\n<p>as</p>\r\n', '<p>asd asdas&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>d&nbsp;</p>\r\n\r\n<p>as</p>\r\n\r\n<p>da</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d a</p>\r\n\r\n<p>sd</p>\r\n\r\n<p>&nbsp;as</p>\r\n\r\n<p>d</p>\r\n\r\n<p>as</p>\r\n\r\n<p>das</p>\r\n', '', '0000-00-00 00:00:00', 1, 'as das', 0, 0, 1, 0, 'vi'),
('2', '1', 3, 'SUPER C V25 1KG', '', '12311111.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />\r\n- Xem Tivi Analog<br />\r\n- Camera 1.3 MP, hỗ trợ quay phim<br />\r\n- M&aacute;y nghe nhạc MP3, MP4<br />\r\n- Đ&agrave;i FM<br />\r\n- Kết nối Bluetooth, USB</p>\r\n', '<p>noi dung</p>\r\n', 'SUPER C V25 1KG.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 1, 0, 'vi'),
('3', '1', 4, 'super oil v08', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'super oil v08.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('5', '1', 4, 'white BACK V01', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'white BACK V01.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('6', '1', 4, 'white V001', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'white V001.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('7', '1', 4, 'yuca v9999 1 lít', '', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'yuca v9999 1 lít.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 0, 'vi'),
('gis-2222', 'admin', 3, 'sảm phẩm mới', 'sam-pham-moi', '1111111.0000', '12312312312.0000', '<p>as dasd as</p>\r\n', '<p>as das das</p>\r\n', '', '0000-00-00 00:00:00', 1, 'asdas', 0, 0, 1, 0, 'vi'),
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
