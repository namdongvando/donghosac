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
(7, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '', '', 0, '2018-05-18', '2018-05-18'),
(20, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-20.png', '#', 0, '2018-05-18', '2018-05-18'),
(33, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-33.jpeg', '#', 1, '2018-05-18', '2018-05-18'),
(35, 'Quang Cáo Danh Mục MẶc Định aaa', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '/public/img/images/quangcao/cat0/cat0-35.jpeg', '', 1, '2018-05-18', '2018-05-18'),
(36, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '/public/img/images/quangcao/cat0/cat0-36.jpeg', '#1', 1, '2018-05-18', '2018-05-18'),
(37, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-37.jpeg', '#', 1, '2018-05-18', '2018-05-18');

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
(1, 'Nông nghiệp', 'nong-nghiep', '/nong-nghiep', '', 0, 'thuysan2.jpg', 1),
(2, 'Thủy sản', 'thuy-san', '/thuy-san', '', 0, 'thuysan2.jpg', 1),
(3, 'Giao thông vận tải', 'giao-thong-van-tai', '/giao-thong-van-tai', '', 0, 'gtvt1.jpg', 1),
(4, 'Nhà đất', 'nha-dat', '/nha-dat', '', 0, 'nhadat1.jpg', 1),
(5, 'Việc làm', 'viec-lam', '/viec-lam', '', 0, 'vieclam1.jpg', 1),
(6, 'Thời trang', 'thoi-trang', '/thoi-trang', '', 0, 'thoitrang1.jpg', 1),
(7, 'Điện tử', 'dien-tu', '/dien-tu', '', 0, 'dientu1.jpg', 1),
(8, 'Xe cộ', 'xe-co', '/xe-co', '', 0, 'xe1.jpg', 1),
(9, 'Kim khí -  Điện máy', 'kim-khi-dien-may', '/kim-khi-dien-may', '', 0, 'kimkhidienmay1.jpg', 1),
(10, 'Cơ khí', 'co-khi', '/co-khi', '', 0, 'cokhi1.jpg', 1),
(11, 'Công nghệ', 'cong-nghe', '/cong-nghe', '', 0, 'congnghe1.jpg', 1),
(12, 'Công nghiệp', 'cong-nghiep', '/cong-nghiep', '', 0, 'congnghiep2.jpg', 1),
(13, 'Xây dựng', 'xay-dung', '/xay-dung', '', 0, 'xaydung3.jpg', 1),
(14, 'Dịch vụ - Giải trí - Du lịch', 'dich-vu-giai-tri-du-lich', '/dich-vu-giai-tri-du-lich', '', 0, 'dichvu3.jpg', 1),
(15, 'Thực phẩm -  Ăn uống', 'thuc-pham-an-uong', '/thuc-pham-an-uong', '', 0, 'thucpham2.jpg', 1),
(16, 'Sắc đẹp -  Sức khỏe - Y tế', 'sac-dep-suc-khoe-y-te', '/sac-dep-suc-khoe-y-te', '', 0, 'yte2.jpg', 1),
(17, 'Nội ngoại thất', 'noi-ngoai-that', '/noi-ngoai-that', '', 0, 'noingoaithat3.jpg', 1),
(18, 'Sách - Văn phong phẩm', 'sach-van-phong-pham', '/sach-van-phong-pham', '', 0, 'sach2.jpg', 1),
(19, 'Thể thao', 'the-thao', '/the-thao', '', 0, 'thethao3.jpg', 1),
(20, 'Sản phẩm nông nghiệp', 'san-pham-nong-nghiep', '/nong-nghiep/san-pham-nong-nghiep', 'asdas', 1, '0', 1),
(21, 'Thiết bị nông nghiệp', 'thiet-bi-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep', '', 1, '0', 1),
(22, 'Phụ kiện nông nghiệp', 'phu-kien-nong-nghiep', '/nong-nghiep/phu-kien-nong-nghiep', '', 1, '0', 1),
(23, 'Sản phẩm thủy sản', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', 1),
(24, 'Thiết bị thủy sản', 'thiet-bi-thuy-san', '/thuy-san/thiet-bi-thuy-san', '', 2, '0', 1),
(25, 'Phụ kiện thủy sản', 'phu-kien-thuy-san', '/thuy-san/phu-kien-thuy-san', '', 2, '0', 1),
(26, 'Dịch vụ vận chuyển', 'dich-vu-van-chuyen', '/giao-thong-van-tai/dich-vu-van-chuyen', '', 3, '0', 1),
(27, 'Dịch vụ cho thuê', 'dich-vu-cho-thue', '/giao-thong-van-tai/dich-vu-cho-thue', '', 3, '0', 1),
(28, 'Mua bán nhà', 'mua-ban-nha', '/nha-dat/mua-ban-nha', '', 4, '0', 1),
(29, 'Mua bán đất', 'mua-ban-dat', '/nha-dat/mua-ban-dat', '', 4, '0', 1),
(30, 'Cho thuê', 'cho-thue', '/nha-dat/cho-thue', '', 4, '0', 1),
(31, 'Cần thuê', 'can-thue', '/nha-dat/can-thue', '', 4, '0', 1),
(32, 'Dịch vụ nhà đất', 'dich-vu-nha-dat', '/nha-dat/dich-vu-nha-dat', '', 4, '0', 1),
(33, 'Người tìm việc', 'nguoi-tim-viec', '/viec-lam/nguoi-tim-viec', '', 5, '0', 1),
(34, 'Việc tìm người', 'viec-tim-nguoi', '/viec-lam/viec-tim-nguoi', '', 5, '0', 1),
(35, 'Thời trang nam', 'thoi-trang-nam', '/thoi-trang/thoi-trang-nam', '', 6, '0', 1),
(36, 'Thời  trang nữ', 'thoi-trang-nu', '/thoi-trang/thoi-trang-nu', '', 6, '0', 1),
(37, 'Thời trang teen', 'thoi-trang-teen', '/thoi-trang/thoi-trang-teen', '', 6, '0', 1),
(38, 'Thời trang trẻ em', 'thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em', '', 6, '0', 1),
(39, 'Đồng phục - Đồ đôi', 'dong-phuc-do-doi', '/thoi-trang/dong-phuc-do-doi', '', 6, '0', 1),
(40, 'Đồng hồ', 'dong-ho', '/thoi-trang/dong-ho', '', 6, '0', 1),
(41, 'Trang sức', 'trang-suc', '/thoi-trang/trang-suc', '', 6, '0', 1),
(42, 'Giày dép', 'giay-dep', '/thoi-trang/giay-dep', '', 6, '0', 1),
(43, 'Phụ kiện', 'phu-kien', '/thoi-trang/phu-kien', '', 6, '0', 1),
(44, 'Điện thoại di động', 'dien-thoai-di-dong', '/dien-tu/dien-thoai-di-dong', '', 7, '0', 1),
(45, 'Máy tính bảng', 'may-tinh-bang', '/dien-tu/may-tinh-bang', '', 7, '0', 1),
(46, 'Máy tính - Laptop', 'may-tinh-laptop', '/dien-tu/may-tinh-laptop', '', 7, '0', 1),
(47, 'Máy ảnh - Máy quay', 'may-anh-may-quay', '/dien-tu/may-anh-may-quay', '', 7, '0', 1),
(48, 'Tivi - Loa - Amply - Máy nghe nhạc', 'tivi-loa-amply-may-nghe-nhac', '/dien-tu/tivi-loa-amply-may-nghe-nhac', '', 7, '0', 1),
(49, 'Phụ kiện - Linh kiện', 'phu-kien-linh-kien', '/dien-tu/phu-kien-linh-kien', '', 7, '0', 1),
(50, 'Ô Tô', 'o-to', '/xe-co/o-to', '', 8, '0', 1),
(51, 'Xe máy', 'xe-may', '/xe-co/xe-may', '', 8, '0', 1),
(52, 'Xe đạp', 'xe-dap', '/xe-co/xe-dap', '', 8, '0', 1),
(53, 'Đồ chơi', 'do-choi', '/xe-co/do-choi', '', 8, '0', 1),
(54, 'Cơ khí ô tô', 'co-khi-o-to', '/xe-co/co-khi-o-to', '', 8, '0', 1),
(55, 'Cơ khí xe máy', 'co-khi-xe-may', '/xe-co/co-khi-xe-may', '', 8, '0', 1),
(56, 'Phụ tùng', 'phu-tung', '/xe-co/phu-tung', '', 8, '0', 1),
(57, 'Sản phẩm', 'san-pham', '/kim-khi-dien-may/san-pham', '', 9, '0', 1),
(58, 'Thiết bị', 'thiet-bi', '/kim-khi-dien-may/thiet-bi', '', 9, '0', 1),
(59, 'Phụ tùng - Linh kiện', 'phu-tung-linh-kien', '/kim-khi-dien-may/phu-tung-linh-kien', '', 9, '0', 1),
(60, 'Sản phẩm cơ khí', 'san-pham-co-khi', '/co-khi/san-pham-co-khi', '', 10, '0', 1),
(61, 'Thiết bị cơ khí', 'thiet-bi-co-khi', '/co-khi/thiet-bi-co-khi', '', 10, '0', 1),
(62, 'Phụ kiện cơ khí', 'phu-kien-co-khi', '/co-khi/phu-kien-co-khi', '', 10, '0', 1),
(63, 'Sản phẩm công nghệ', 'san-pham-cong-nghe', '/cong-nghe/san-pham-cong-nghe', '', 11, '0', 1),
(64, 'Thiết bị công nghệ', 'thiet-bi-cong-nghe', '/cong-nghe/thiet-bi-cong-nghe', '', 11, '0', 1),
(65, 'Phụ kiện - Linh kiện công nghệ', 'phu-kien-linh-kien-cong-nghe', '/cong-nghe/phu-kien-linh-kien-cong-nghe', '', 11, '0', 1),
(66, 'Sản phẩm công nghiệp', 'san-pham-cong-nghiep', '/cong-nghiep/san-pham-cong-nghiep', '', 12, '0', 1),
(67, 'Thiết bị công nghiệp', 'thiet-bi-cong-nghiep', '/cong-nghiep/thiet-bi-cong-nghiep', '', 12, '0', 1),
(68, 'Dịch vụ công nghiệp', 'dich-vu-cong-nghiep', '/cong-nghiep/dich-vu-cong-nghiep', '', 12, '0', 1),
(69, 'Thiết bị xây dựng', 'thiet-bi-xay-dung', '/xay-dung/thiet-bi-xay-dung', '', 13, '0', 1),
(70, 'Vật liệu xây dựng', 'vat-lieu-xay-dung', '/xay-dung/vat-lieu-xay-dung', '', 13, '0', 1),
(71, 'Dịch vụ vận tải', 'dich-vu-van-tai', '/dich-vu-giai-tri-du-lich/dich-vu-van-tai', '', 14, '0', 1),
(72, 'Dịch vụ cưới hỏi', 'dich-vu-cuoi-hoi', '/dich-vu-giai-tri-du-lich/dich-vu-cuoi-hoi', '', 14, '0', 1),
(73, 'Dịch vụ du lịch', 'dich-vu-du-lich', '/dich-vu-giai-tri-du-lich/dich-vu-du-lich', '', 14, '0', 1),
(74, 'Cho thuê', 'cho-thue', '/dich-vu-giai-tri-du-lich/cho-thue', '', 14, '0', 1),
(75, 'Game - Đồ chơi', 'game-do-choi', '/dich-vu-giai-tri-du-lich/game-do-choi', '', 14, '0', 1),
(76, 'Thực phẩm tươi sống', 'thuc-pham-tuoi-song', '/thuc-pham-an-uong/thuc-pham-tuoi-song', '', 15, '0', 1),
(77, 'Thực phẩm qua chế biến', 'thuc-pham-qua-che-bien', '/thuc-pham-an-uong/thuc-pham-qua-che-bien', '', 15, '0', 1),
(78, 'Thức ăn nhẹ', 'thuc-an-nhe', '/thuc-pham-an-uong/thuc-an-nhe', '', 15, '0', 1),
(79, 'Đặt sản', 'dat-san', '/thuc-pham-an-uong/dat-san', '', 15, '0', 1),
(80, 'Đồ hộp - Đồ khô', 'do-hop-do-kho', '/thuc-pham-an-uong/do-hop-do-kho', '', 15, '0', 1),
(81, 'Gia vị', 'gia-vi', '/thuc-pham-an-uong/gia-vi', '', 15, '0', 1),
(82, 'Ngũ cốc - Sản phẩm từ ngũ cốc', 'ngu-coc-san-pham-tu-ngu-coc', '/thuc-pham-an-uong/ngu-coc-san-pham-tu-ngu-coc', '', 15, '0', 1),
(83, 'Bánh kẹo - Mức', 'banh-keo-muc', '/thuc-pham-an-uong/banh-keo-muc', '', 15, '0', 1),
(84, 'Thức uống', 'thuc-uong', '/thuc-pham-an-uong/thuc-uong', '', 15, '0', 1),
(85, 'Nguyên liệu', 'nguyen-lieu', '/thuc-pham-an-uong/nguyen-lieu', '', 15, '0', 1),
(86, 'Mỹ phẩm', 'my-pham', '/sac-dep-suc-khoe-y-te/my-pham', '', 16, '0', 1),
(87, 'Thiết bị làm đẹp', 'thiet-bi-lam-dep', '/sac-dep-suc-khoe-y-te/thiet-bi-lam-dep', '', 16, '0', 1),
(88, 'Dịch vụ chăm sóc', 'dich-vu-cham-soc', '/sac-dep-suc-khoe-y-te/dich-vu-cham-soc', '', 16, '0', 1),
(89, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1),
(90, 'Nội thất không gian', 'noi-that-khong-gian', '/noi-ngoai-that/noi-that-khong-gian', '', 17, '0', 1),
(91, 'Nội thất phòng ngủ', 'noi-that-phong-ngu', '/noi-ngoai-that/noi-that-phong-ngu', '', 17, '0', 1),
(92, 'Nội thất phòng ăn - Nhà bếp', 'noi-that-phong-an-nha-bep', '/noi-ngoai-that/noi-that-phong-an-nha-bep', '', 17, '0', 1),
(93, 'Nội thất phòng tắm', 'noi-that-phong-tam', '/noi-ngoai-that/noi-that-phong-tam', '', 17, '0', 1),
(94, 'Nội thất văn phòng', 'noi-that-van-phong', '/noi-ngoai-that/noi-that-van-phong', '', 17, '0', 1),
(95, 'Nội thất nhà hàng', 'noi-that-nha-hang', '/noi-ngoai-that/noi-that-nha-hang', '', 17, '0', 1),
(96, 'Nội thất công cộng', 'noi-that-cong-cong', '/noi-ngoai-that/noi-that-cong-cong', '', 17, '0', 1),
(97, 'Ngoại thất sân vườn', 'ngoai-that-san-vuon', '/noi-ngoai-that/ngoai-that-san-vuon', '', 17, '0', 1),
(98, 'Nội thất thờ cúng', 'noi-that-tho-cung', '/noi-ngoai-that/noi-that-tho-cung', '', 17, '0', 1),
(99, 'Nội thất trẻ em', 'noi-that-tre-em', '/noi-ngoai-that/noi-that-tre-em', '', 17, '0', 1),
(100, 'Đồ thủ công mỹ nghệ', 'do-thu-cong-my-nghe', '/noi-ngoai-that/do-thu-cong-my-nghe', '', 17, '0', 1),
(101, 'Đồ cổ', 'do-co', '/noi-ngoai-that/do-co', '', 17, '0', 1),
(102, 'Thiết kế nội thất', 'thiet-ke-noi-that', '/noi-ngoai-that/thiet-ke-noi-that', '', 17, '0', 1),
(103, 'Quà tặng', 'qua-tang', '/sach-van-phong-pham/qua-tang', '', 18, '0', 1),
(104, 'Sách', 'sach', '/sach-van-phong-pham/sach', '', 18, '0', 1),
(105, 'Thiết bị', 'thiet-bi', '/sach-van-phong-pham/thiet-bi', '', 18, '0', 1),
(106, 'Văn phòng phẩm', 'van-phong-pham', '/sach-van-phong-pham/van-phong-pham', '', 18, '0', 1),
(107, 'Thể thao', 'the-thao', '/the-thao/the-thao', '', 19, '0', 1),
(108, 'Thiết bị - Dụng cụ', 'thiet-bi-dung-cu', '/the-thao/thiet-bi-dung-cu', '', 19, '0', 1),
(109, 'Dịch vụ', 'dich-vu', '/the-thao/dich-vu', '', 19, '0', 1),
(110, 'Lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '0', -1),
(111, 'Hoa quả', 'hoa-qua', '/nong-nghiep/san-pham-nong-nghiep/hoa-qua', '', 20, '0', 1),
(112, 'Cây giống', 'cay-giong', '/nong-nghiep/san-pham-nong-nghiep/cay-giong', '', 20, '0', 1),
(113, 'Máy móc', 'may-moc', '/nong-nghiep/thiet-bi-nong-nghiep/may-moc', '', 21, '0', 1),
(114, 'Phân bón', 'phan-bon', '/nong-nghiep/thiet-bi-nong-nghiep/phan-bon', '', 21, '0', 1),
(115, 'Thuốc nông nghiệp', 'thuoc-nong-nghiep', '/nong-nghiep/thiet-bi-nong-nghiep/thuoc-nong-nghiep', '', 21, '0', 1),
(116, 'Thủy sản chăn nuôi', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', 1),
(117, 'Thủy sản biển', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', 1),
(118, 'Con giống', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', 1),
(119, 'Máy móc', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', 1),
(120, 'Thức ăn', 'thuc-an', '/thuy-san/thiet-bi-thuy-san/thuc-an', '', 24, '0', 1),
(121, 'Thuốc thủy sản', 'thuoc-thuy-san', '/thuy-san/thiet-bi-thuy-san/thuoc-thuy-san', '', 24, '0', 1),
(122, 'Biệt thự - Nhà chia lô', 'biet-thu-nha-chia-lo', '/thuy-san/thiet-bi-thuy-san/biet-thu-nha-chia-lo', '', 24, '0', 1),
(123, 'Mặt bằng kinh doanh', 'mat-bang-kinh-doanh', '/nha-dat/mua-ban-nha/mat-bang-kinh-doanh', '', 28, '0', 1),
(124, 'Nhà chung cư', 'nha-chung-cu', '/nha-dat/mua-ban-nha/nha-chung-cu', '', 28, '0', 1),
(125, 'Nhà mặt phố', 'nha-mat-pho', '/nha-dat/mua-ban-nha/nha-mat-pho', '', 28, '0', 1),
(126, 'Nhà trong ngõ', 'nha-trong-ngo', '/nha-dat/mua-ban-nha/nha-trong-ngo', '', 28, '0', 1),
(127, 'Nhà xưởng, kho', 'nha-xuong-kho', '/nha-dat/mua-ban-nha/nha-xuong-kho', '', 28, '0', 1),
(128, 'Đất canh tác - Làm nông nghiệp', 'dat-canh-tac-lam-nong-nghiep', '/nha-dat/mua-ban-dat/dat-canh-tac-lam-nong-nghiep', '', 29, '0', 1),
(129, 'Đất thổ cư', 'dat-tho-cu', '/nha-dat/mua-ban-dat/dat-tho-cu', '', 29, '0', 1),
(130, 'Cho thuê mặt bằng - Cửa hàng kinh doanh', 'cho-thue-mat-bang-cua-hang-kinh-doanh', '/nha-dat/cho-thue/cho-thue-mat-bang-cua-hang-kinh-doanh', '', 30, '0', 1),
(131, 'Cho thuê nhà', 'cho-thue-nha', '/nha-dat/cho-thue/cho-thue-nha', '', 30, '0', 1),
(132, 'Cho thuê phòng trọ - Ki ốt', 'cho-thue-phong-tro-ki-ot', '/nha-dat/cho-thue/cho-thue-phong-tro-ki-ot', '', 30, '0', 1),
(133, 'Cho thuê văn phòng', 'cho-thue-van-phong', '/nha-dat/cho-thue/cho-thue-van-phong', '', 30, '0', 1),
(134, 'Cho thuê đất', 'cho-thue-dat', '/nha-dat/cho-thue/cho-thue-dat', '', 30, '0', 1),
(135, 'Cho thuê kho xưởng', 'cho-thue-kho-xuong', '/nha-dat/cho-thue/cho-thue-kho-xuong', '', 30, '0', 1),
(136, 'Cần thuê mặt bằng - Cửa hàng kihn doanh', 'can-thue-mat-bang-cua-hang-kihn-doanh', '/nha-dat/can-thue/can-thue-mat-bang-cua-hang-kihn-doanh', '', 31, '0', 1),
(137, 'Cần thuê nhà', 'can-thue-nha', '/nha-dat/can-thue/can-thue-nha', '', 31, '0', 1),
(138, 'Cần thuê phòng trọ - Ki ốt', 'can-thue-phong-tro-ki-ot', '/nha-dat/can-thue/can-thue-phong-tro-ki-ot', '', 31, '0', 1),
(139, 'Cần thuê văn phòng', 'can-thue-van-phong', '/nha-dat/can-thue/can-thue-van-phong', '', 31, '0', 1),
(140, 'Cần thuê đất', 'can-thue-dat', '/nha-dat/can-thue/can-thue-dat', '', 31, '0', 1),
(141, 'Cần thuê kho xưởng', 'can-thue-kho-xuong', '/nha-dat/can-thue/can-thue-kho-xuong', '', 31, '0', 1),
(142, 'Quần áo nam', 'quan-ao-nam', '/thoi-trang/thoi-trang-nam/quan-ao-nam', '', 35, '0', 1),
(143, 'Giày dép nam', 'giay-dep-nam', '/thoi-trang/thoi-trang-nam/giay-dep-nam', '', 35, '0', 1),
(144, 'Phụ kiện thời trang nam', 'phu-kien-thoi-trang-nam', '/thoi-trang/thoi-trang-nam/phu-kien-thoi-trang-nam', '', 35, '0', 1),
(145, 'Quần áo nữ', 'quan-ao-nu', '/thoi-trang/thoi-trang-nu/quan-ao-nu', '', 36, '0', 1),
(146, 'Giày dép nữ', 'giay-dep-nu', '/thoi-trang/thoi-trang-nu/giay-dep-nu', '', 36, '0', 1),
(147, 'Phụ kiện thời trang nữ', 'phu-kien-thoi-trang-nu', '/thoi-trang/thoi-trang-nu/phu-kien-thoi-trang-nu', '', 36, '0', 1),
(148, 'Thời trang tóc', 'thoi-trang-toc', '/thoi-trang/thoi-trang-nu/thoi-trang-toc', '', 36, '0', 1),
(149, 'Trang phục teen nam', 'trang-phuc-teen-nam', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nam', '', 37, '0', 1),
(150, 'Trang phục teen nữ', 'trang-phuc-teen-nu', '/thoi-trang/thoi-trang-teen/trang-phuc-teen-nu', '', 37, '0', 1),
(151, 'Quần áo trẻ em', 'quan-ao-tre-em', '/thoi-trang/thoi-trang-tre-em/quan-ao-tre-em', '', 38, '0', 1),
(152, 'Giày dép trẻ em', 'giay-dep-tre-em', '/thoi-trang/thoi-trang-tre-em/giay-dep-tre-em', '', 38, '0', 1),
(153, 'Phụ kiện thời trang trẻ em', 'phu-kien-thoi-trang-tre-em', '/thoi-trang/thoi-trang-tre-em/phu-kien-thoi-trang-tre-em', '', 38, '0', 1),
(154, 'Quần áo đồng phục', 'quan-ao-dong-phuc', '/thoi-trang/dong-phuc-do-doi/quan-ao-dong-phuc', '', 39, '0', 1),
(155, 'Quần áo đôi', 'quan-ao-doi', '/thoi-trang/dong-phuc-do-doi/quan-ao-doi', '', 39, '0', 1),
(156, 'Phụ kiện đồ đồng phục', 'phu-kien-do-dong-phuc', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-dong-phuc', '', 39, '0', 1),
(157, 'Phu kiện đồ đôi', 'phu-kien-do-doi', '/thoi-trang/dong-phuc-do-doi/phu-kien-do-doi', '', 39, '0', 1),
(158, 'Trang sức cho nữ', 'trang-suc-cho-nu', '/thoi-trang/trang-suc/trang-suc-cho-nu', '', 41, '0', 1),
(159, 'Trang sức cho nam', 'trang-suc-cho-nam', '/thoi-trang/trang-suc/trang-suc-cho-nam', '', 41, '0', 1),
(160, 'Trang sức cặp đôi', 'trang-suc-cap-doi', '/thoi-trang/trang-suc/trang-suc-cap-doi', '', 41, '0', 1),
(161, 'Trang sức trẻ em', 'trang-suc-tre-em', '/thoi-trang/trang-suc/trang-suc-tre-em', '', 41, '0', 1),
(162, 'Nhẫn cưới - Đính hôn', 'nhan-cuoi-dinh-hon', '/thoi-trang/trang-suc/nhan-cuoi-dinh-hon', '', 41, '0', 1),
(163, 'Đá quý', 'da-quy', '/thoi-trang/trang-suc/da-quy', '', 41, '0', 1),
(164, 'Vàng miếng', 'vang-mieng', '/thoi-trang/trang-suc/vang-mieng', '', 41, '0', 1),
(165, 'Giày thể thao', 'giay-the-thao', '/thoi-trang/giay-dep/giay-the-thao', '', 42, '0', 1),
(166, 'Phụ kiện', 'phu-kien', '/thoi-trang/giay-dep/phu-kien', '', 42, '0', 1),
(167, 'Giày dép khác', 'giay-dep-khac', '/thoi-trang/giay-dep/giay-dep-khac', '', 42, '0', 1),
(168, 'Nông nghiệp1', 'nong-nghiep1', '/nong-nghiep/nong-nghiep1', 'note', 1, '', -1),
(169, 'Nông nghiệp1', 'nong-nghiep1', '', 'note', 1, '', -2),
(170, 'Nông nghiệp 1', 'nong-nghiep-1', '', 'note', 1, '', -2),
(171, 'Nông nghiệp 1', 'nong-nghiep-1', '', 'note', 1, '', -2),
(172, 'Nông nghiệp 2', 'nong-nghiep-2', '/nong-nghiep/nong-nghiep-2', 'asdasdas', 1, '', -2),
(173, 'nguyen van do', 'nguyen-van-do', '/nong-nghiep/nguyen-van-do', 'noter', 1, '', -1),
(174, 'lúa gạo', 'lua-gao', '/nong-nghiep/san-pham-nong-nghiep/lua-gao', '', 20, '', 1);

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
('1', '0', 47, 'betaglucan-400g', '0.0000', '0.0000', 'cập nhật', 'asd asdaasass', 'betaglucan-500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 11, 1, 'VN'),
('101', '1', 47, 'BIO VET 500g', '0.0000', '0.0000', '<p>- WAP.<br />- T9.<br />- Scheduler.<br />- Máy tính.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng nói.<br />- Ghi âm.<br />- Loa speaker.</p>', '', 'BIO VET 500g.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 'VN'),
('102', '1', 48, 'BKC V80', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Kiểu dáng mạnh mẽ với bàn phím Qwerty</li>\r\n<li>Máy ảnh 1.3 MP, hỗ trợ quay phim</li>\r\n<li>Máy nghe nhạc, xem phim MP3/eAAC+/3GP/MP4</li>\r\n<li>Đài FM tích hợp, jack tai nghe 3.5mm</li>\r\n<li>Ghi âm FM</li>\r\n<li>Kết nối Bluetooth, USB, Facebook, Twitter apps </li>\r\n</ul>', '', 'BKC V80.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('1031', '1', 48, 'BZT VET', '0.0000', '0.0000', '<p>- Máy tính.<br />- Lịch.<br />- Đồng hồ thế giới.<br />- Quay số giọng nói.</p>', '', 'BZT VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('104', '1', 47, 'CLEA VET', '790000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế đơn giản, trẻ trung</li>\r\n<li>Máy ảnh VGA</li>\r\n<li>Hỗ trợ thẻ nhớ ngoài</li>\r\n<li>Máy nghe nhạc MP3</li>\r\n<li>Đài FM tích hợp</li>\r\n<li>Chế độ đèn pin </li>\r\n</ul>', '', 'CLEA VET.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('105', '1', 48, 'dr beta 500ml', '0.0000', '0.0000', '<p>- Hỗ trợ Java MIDP 2.0<br />- FM radio tích hợp<br />- Máy nghe nhạc kỹ thuật số hỗ trợ các dạng thức MP3/AAC/AAC+/MPEG4<br />- Từ điển T9 đoán trước văn bản nhập<br />- Chức năng tổ chức<br />- Máy ghi âm tích hợp</p>', '', 'dr beta 500ml.jpg', '0000-00-00 00:00:00', 100, '', 0, 1, 0, 'VN'),
('106', '1', 4, 'fasfive 500g', '499000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Thiết kế nhỏ gọn chắc chắn</li>\r\n<li>B&agrave;n ph&iacute;m chống bụi</li>\r\n<li>Nhạc chu&ocirc;ng đa &acirc;m </li>\r\n<li>Chức năng đ&egrave;n pin</li>\r\n<li>Pin bền bỉ </li>\r\n</ul>', NULL, 'fasfive 500g.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 5, 1, 'VN'),
('107', '1', 4, 'green v007 1kg', '0.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 Sóng online</li>\r\n<li>Máy ảnh 2.0 MP, hỗ trợ quay phim</li>\r\n<li>Máy nghe nhạc MP3, AAC</li>\r\n<li>Đài FM tích hợp</li>\r\n<li>Kết nối Bluetooth, USB </li>\r\n</ul>', '', 'green v007 1kg.jpg', '0000-00-00 00:00:00', 100, '', 0, 3, 1, 'VN'),
('109', '1', 3, 'KA WATER 123', '0.0000', '0.0000', 'ul class=\"item_list\" style=\"margin: 0px padding-left: 15px\"\r\nliThiết kế dạng xoay nữ tính/li\r\nliHỗ trợ 2 Sim 2 Sóng online/li\r\nliMáy ảnh 2.0 MP, hỗ trợ webcam/li\r\nliMáy nghe nhạc, xem phim MP3, 3GP, AVI/li\r\nliĐài FM tích hợp /li\r\n/ul', '', 'KA WATER.jpg', '0000-00-00 00:00:00', 100, '', 0, 0, 0, 'VN'),
('111', '1', 3, 'LIVER VET 500G', '1589000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>M&agrave;n h&igrave;nh Wide rộng 2.4 inches</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh 2.0 MP, hỗ trợ Webcam</li>\r\n<li>M&aacute;y nghe nhạc, xem phim</li>\r\n<li>Hỗ trợ Wifi, yahoo, Opera</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp </li>\r\n</ul>', NULL, 'LIVER VET 500G.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'VN'),
('112', '1', 3, 'liver water 500ml', '0.0000', '0.0000', '<p><span style=\"color: #ff0000;\"><strong>K-Touch B896 - Ấn tượng với chất lượng &acirc;m thanh<br /></strong></span><span style=\"color: #000000;\">- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, AAC<br />- Lắc x&iacute; ngầu</span></p>', NULL, 'liver water 500ml.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'VN'),
('113', '1', 4, 'PREMAX 5KG', '1489000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>B&agrave;n ph&iacute;m Qwerty đầy dễ d&agrave;ng nhắn tin</li>\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y nghe nhạc, xem phim MP3, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp, Bluetooth</li>\r\n<li>Yahoo chat, tr&igrave;nh duyệt web Opera</li>\r\n<li>Chức năng chặn tin nhắn, cuộc gọi </li>\r\n</ul>', NULL, 'PREMAX 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('114', '1', 4, 'RS-alum v06', '0.0000', '0.0000', '<p><strong><span style=\"color: #ff0000;\">K-Tuoch D173 - Điện thoại 2 Sim</span></strong><br />- Hỗ trợ 2 khe gắn Sim (1 s&oacute;ng)<br />- Thiết kế thời trang, m&agrave;n h&igrave;nh cảm ứng<br />- Camera VGA, hỗ trợ quay phim<br />- Cảm ứng lắc tay chuyển nhạc, h&igrave;nh nền<br />- C&oacute; đ&egrave;n cực tiếp để soi tiền giả</p>', NULL, 'RS-alum v06.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('115', '1', 4, 'RS-ankavet 5kg', '0.0000', '0.0000', '<p>- PDA hỗ trợ mạng 3G với</p>\r\n<div class=\"col2\"><!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } --> WCDMA/EVDO  <br />- Hệ điều h&agrave;nh <!-- .O { color: black; font-size: 149%; }a:link { color: blue ! important; }a:active { color: rgb(192, 80, 77) ! important; }a:visited { color: purple ! important; } --><!-- .sld { left: 0px ! important; width: 6in ! important; height: 4.5in ! important; font-size: 103% ! important; } -->Windows Mobile 6.1<br />- Hỗ trợ xem tivi<br />- Camera 2.0 MP, hỗ trợ quay phim<br />- Kết nối interet với Wifi, truyền tải dữ liệu 3G<br />- Kết nối Bluetooth, USB, GPRS</div>', NULL, 'RS-ankavet 5kg.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('116', '1', 3, 'RS-DRT VET 1KG', '1389000.0000', '0.0000', '<ul class=\"item_list\" style=\"margin: 0px; padding-left: 15px;\">\r\n<li>Hỗ trợ 2 Sim 2 S&oacute;ng online</li>\r\n<li>M&aacute;y ảnh VGA, hỗ trợ webcam</li>\r\n<li>Chức năng xem Tivi Analog</li>\r\n<li>Nghe nhạc, xem phim MP3, MP4, 3GP</li>\r\n<li>Đ&agrave;i FM t&iacute;ch hợp</li>\r\n<li>Chặn cuộc gọi, chặn tin nhắn, chat Yahoo</li>\r\n<li>Lắc tay đổi nhạc, h&igrave;nh nền </li>\r\n</ul>', NULL, 'RS-DRT VET 1KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 0, 'VN'),
('117', '1', 4, 'RS-KA C 25 - 5KG', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'RS-KA C 25 - 5KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('2', '1', 4, 'SUPER C V25 1KG', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'SUPER C V25 1KG.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('3', '1', 4, 'super oil v08', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'super oil v08.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('5', '1', 4, 'white BACK V01', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'white BACK V01.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('6', '1', 4, 'white V001', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'white V001.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
('7', '1', 4, 'yuca v9999 1 lít', '0.0000', '0.0000', '<p>- Thiết kế thời trang với m&agrave;n h&igrave;nh cảm ứng rộng<br />- Xem Tivi Analog<br />- Camera 1.3 MP, hỗ trợ quay phim<br />- M&aacute;y nghe nhạc MP3, MP4<br />- Đ&agrave;i FM<br />- Kết nối Bluetooth, USB</p>', NULL, 'yuca v9999 1 lít.jpg', '0000-00-00 00:00:00', 100, NULL, 0, 0, 1, 'VN'),
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
