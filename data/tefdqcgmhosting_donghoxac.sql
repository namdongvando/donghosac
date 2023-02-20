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
(7, 'Quang Cáo Danh Mục MẶc Định', '{\"Name\":\"Quảng Cáo Slide Trang Chủ\"}', '{}', '[]', 'cat0', '', '', 0, '2018-05-18', '2018-05-18'),
(20, 'Quảng Cáo Slide Trang Chủ', '', '{\"background\":\"#aaa\"}', '[{\"key\":\"background\",\"value\":\"#aaa\"}]', 'homeslide', '/public/img/images/quangcao/homeslide/homeslide-20.png', '#', 0, '2018-05-18', '2018-05-18'),
(33, 'Quảng Cáo Slide Trang Chủ', '            PHẠM HÙNG CHO BẠN SỰ LỰA CHỌN HOÀN HẢO', '{\"background\":\"#FEC216\"}', '[{\"key\":\"background\",\"value\":\"#FEC216\"}]', 'homeslide', '/public/img/images/adv/2021/06/adv-33.jpeg', '#', 1, '2018-05-18', '2021-06-04'),
(38, 'DanhMucNoiBat', '', '{}', '[]', 'danh-muc-noi-bat', '', '', 0, '2018-07-04', '2018-07-04'),
(43, 'Quản Cáo  Slide Bên Phải', '', '{}', '[]', 'quan-cao-slide-ben-p', '', '', 0, '2018-07-04', '2018-07-04'),
(47, 'Quản Cáo Dưới Chính Sách', '', '{}', '[]', 'quan-cao-duoi-chinh-', '', '', 0, '2018-07-04', '2018-07-04'),
(50, 'Chính Sách Cuối Trang', '', '{}', '[]', 'chinh-sach-cuoi-tran', '', '', 0, '2018-07-04', '2018-07-04');

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
(98, 'Đồng Hồ Pin', 'dong-ho-pin', '/dong-ho-pin', '', 0, '', 1, 0, 'vi'),
(99, 'Đồng Hồ Cơ Cót', 'dong-ho-co-cot', '/dong-ho-co-cot', '', 0, '', 1, 0, 'vi'),
(100, 'Đồng Hồ Cơ Tự Động', 'dong-ho-co-tu-dong', '/dong-ho-co-tu-dong', '', 0, '', 1, 0, 'vi'),
(101, 'Đồng Hồ Điện Tử', 'dong-ho-dien-tu', '/dong-ho-dien-tu', '', 0, '', 1, 0, 'vi'),
(102, 'Đồng Hồ Thông Minh', 'dong-ho-thong-minh', '/dong-ho-thong-minh', '', 0, '', -1, 0, 'vi'),
(103, 'Đồng Hồ Đôi', 'dong-ho-doi', '/dong-ho-doi', '', 0, '', -1, 0, 'vi');

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
(23, 'Sản phẩm thủy sản', 'san-pham-thuy-san', '/thuy-san/san-pham-thuy-san', '', 2, '0', -1, 0, 'vi'),
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
(116, 'Thủy sản chăn nuôi', 'thuy-san-chan-nuoi', '/thuy-san/san-pham-thuy-san/thuy-san-chan-nuoi', '', 23, '0', -1, 0, 'vi'),
(117, 'Thủy sản biển', 'thuy-san-bien', '/thuy-san/san-pham-thuy-san/thuy-san-bien', '', 23, '0', -1, 0, 'vi'),
(118, 'Con giống', 'con-giong', '/thuy-san/san-pham-thuy-san/con-giong', '', 23, '0', -1, 0, 'vi'),
(119, 'Máy móc', 'may-moc', '/thuy-san/thiet-bi-thuy-san/may-moc', '', 24, '0', -1, 1, 'vi'),
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
(2, 'SDT', 'Số Điện Thoại', '0939726679', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:41:20', '2018-06-21 23:41:20'),
(3, 'DiaChi', 'Địa Chỉ', '202 Nguyễn Xiển, P Long Thạnh Mỹ, Quận 9, HCM', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-21 23:45:33', '2018-06-21 23:45:33'),
(5, 'WebName', 'Website', 'Đồng Hồ Xác ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:01:09', '2018-06-22 00:01:09'),
(8, 'Logo', 'Hình Logo', '/public/img/images/information/img-16227782261714-8.png', '{\"Type\":\"file\"}', '{\"Type\":\"file\"}', '2018-06-22 00:03:46', '2018-06-22 00:03:46'),
(10, 'linkFacebook', 'Page Facebook', 'https://www.facebook.com/goccuvoi/', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:14', '2018-06-22 00:06:14'),
(11, 'linkGoogle', 'Link Google', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:06:40', '2018-06-22 00:06:40'),
(12, 'linkTwitter', 'twitter', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:16', '2018-06-22 00:07:16'),
(13, 'linkPinterest', 'pinterest', '#', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 00:07:18', '2018-06-22 00:07:18'),
(19, 'Title', 'Tiêu Đề Trang', 'Đồng Hồ Xác ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:53:07', '2018-06-22 01:53:07'),
(20, 'Des', 'Mô Tả Trang', 'Đồng Hồ Xác ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-22 01:55:35', '2018-06-22 01:55:35'),
(23, 'Keyword', 'Từ Khóa', 'Đồng Hồ Xác ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 21:37:45', '2018-06-27 21:37:45'),
(24, 'Auth', 'Người Phát Triển', '', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-27 22:09:29', '2018-06-27 22:09:29'),
(26, 'Hotline', 'HOTLINE', '0939726679', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:10:14', '2018-06-28 11:10:14'),
(27, 'lblThongTinCongty', 'title Thông Tin Công Ty', 'Thông Tin Công Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:12:32', '2018-06-28 11:12:32'),
(28, 'lblDichVu', 'title Dịch Vụ', 'Dịch Vụ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:13:34', '2018-06-28 11:13:34'),
(29, 'lblCongTy', 'title Công Ty', 'Công Ty', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:14', '2018-06-28 11:14:14'),
(30, 'lblHoTro', 'title Hỗ Trợ', 'Hỗ Trợ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:14:49', '2018-06-28 11:14:49'),
(31, 'Email', 'Email', 'vongoctuongvi13@gmail.com', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-06-28 11:15:44', '2018-06-28 11:15:44'),
(32, 'lblHotline', 'lbl Hotline', 'Hotline', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:05:13', '2018-07-04 19:05:13'),
(33, 'lblEmail', 'lbl Email', 'Email', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:01', '2018-07-04 19:06:01'),
(34, 'lblPhone', 'lbl Phone', 'SĐT', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:39', '2018-07-04 19:06:39'),
(35, 'lblAddress', 'lbl Địa Chỉ', 'Địa Chỉ', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:06:40', '2018-07-04 19:06:40'),
(36, 'lblNhapMail', 'lbl nhập Email', 'Nhập Email để nhận thông tin', '{\"Type\":\"text\"}', '{\"Type\":\"text\"}', '2018-07-04 19:20:05', '2018-07-04 19:20:05'),
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
(3, 'Trang Chủ', '/', 0, 'FooterMenu', 'home', 0, '', '0000-00-00 00:00:00', '2021-05-11 10:55:40'),
(10, 'Sản Phẩm', '/sanpham/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 04:37:47', '2021-05-11 10:55:40'),
(11, 'Giới Thiệu', 'a', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:28:56', '2021-05-11 10:55:40'),
(13, 'Phầm Mềm', '/', 0, 'FooterMenu', 'home', 0, '', '2018-05-26 05:29:41', '2021-05-11 10:55:40'),
(14, 'Giới Thiệu', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:46:26', '2021-05-19 13:50:32'),
(15, 'Tuyển Dụng', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:47:26', '2021-05-19 13:50:32'),
(17, 'Tin Tức', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:49:11', '2021-05-19 13:50:32'),
(18, 'Liên Hệ', '#', 0, 'FooterMenuCongTy', 'home', 0, '', '2018-05-26 09:53:14', '2021-05-19 13:50:32'),
(20, 'Giỏ hàng', '#', 0, 'FooterMenuHoTro', 'home', 1, '', '2018-05-26 09:56:56', '2021-05-17 02:12:41'),
(21, 'Đổi  Trả Sản Phẩm', '#', 0, 'FooterMenuHoTro', 'home', 2, '', '2018-05-26 10:00:47', '2021-05-17 02:12:41'),
(23, 'Giới thiệu', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:08', '2018-10-15 14:56:57'),
(24, 'Chinh sách công ty', '#', 0, 'FooterMenuDichVu', 'home', 0, '', '2018-05-26 10:14:37', '2018-10-15 14:56:57'),
(46, 'Hướng dẫn thanh lý ký gửi', '#', 0, 'TopHeaderMenu', 'home', 1, '', '2021-05-11 10:55:09', '2021-05-23 12:54:52'),
(47, 'Kỳ tổng kết ', '#', 0, 'TopHeaderMenu', 'home', 0, '', '2021-05-11 10:55:45', '2021-05-23 12:54:52'),
(48, 'Câu Hỏi Thường Gặp', '#', 0, 'TopHeaderMenu', 'home', 0, '', '2021-05-11 10:56:01', '2021-05-23 12:54:52'),
(49, 'fa fa-facebook', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:57:20', '2021-05-11 10:58:33'),
(50, 'fa fa-instagram', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:05', '2021-05-11 10:58:33'),
(51, 'fa fa-twitter', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:06', '2021-05-11 10:58:33'),
(52, 'fa fa-google-plus', '#', 0, 'HeaderSocial', 'home', 0, '', '2021-05-11 10:58:07', '2021-05-11 10:58:33'),
(56, 'Giao hàng tại TPHCM', '#', 0, 'FooterMenuHoTro', 'home', 3, '', '2021-05-17 02:12:19', '2021-05-17 02:12:41'),
(57, 'Giao hàng toàn quốc', '#', 0, 'FooterMenuHoTro', 'home', 4, '', '2021-05-17 02:12:20', '2021-05-17 02:12:41'),
(60, 'Đồng Hồ Pin', '/dong-ho-kim', 0, 'TopMainMenu', 'home', 1, '', '2021-05-23 12:18:33', '2021-06-19 12:11:21'),
(1622781792, 'Đồng Hồ Điện Tử', '/dong-ho-the-thao', 0, 'TopMainMenu', 'home', 4, '', '2021-06-04 11:43:12', '2021-06-19 12:11:21'),
(1622781809, 'Đồng Hồ Cơ Tự Động', '/dong-ho-dien-tu', 0, 'TopMainMenu', 'home', 3, '', '2021-06-04 11:43:29', '2021-06-19 12:11:21'),
(1622781827, 'Đồng Hồ Cơ Cót', '/dong-ho-doi', 0, 'TopMainMenu', 'home', 2, '', '2021-06-04 11:43:47', '2021-06-19 12:11:21'),
(1624079469, 'Tranh Chủ', '/', 0, 'TopMainMenu', 'home', 0, '', '2021-06-19 12:11:09', '2021-06-19 12:11:21');

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
(6, 1, 'Liên hệ', 'lien-he', '', '', '', '', '<p style=\"text-align:justify\"><span style=\"font-family:arial,helvetica,sans-serif\"><strong>C&ocirc;ng Ty TNHH Thương Mại&nbsp;</strong><strong>Xuất Nhập Khẩu&nbsp;&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"font-family:arial,helvetica,sans-serif\"><iframe frameborder=\"0\" height=\"450\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2330.2097562087915!2d106.6758528961976!3d10.816664243356126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175291e1e83a2c7%3A0x481895d69bdf366d!2sChung+C%C6%B0+D-eyes!5e0!3m2!1svi!2s!4v1534852764599\" style=\"border:0\" width=\"600\"></iframe></span></p>\r\n', '/public/img/images', 1, 0, '{\"showhomesevice\":\"0\",\"showhomenews\":\"0\",\"IsSevicer\":\"0\"}', 0),
(9, 1, 'Hướng dẫn thanh lý ký gửi', 'huong-dan-thanh-ly-ky-gui', 'Hướng dẫn thanh lý ký gửi\r\n\r\n', ' ', ' ', '<p><strong>CH&Iacute;NH S&Aacute;CH K&Yacute; GỬI</strong></p>\r\n\r\n<p><strong>CH&Agrave;O C&Aacute;C BẠN ĐẾN VỚI GÓC VOI&nbsp;</strong></p>\r\n\r\n<p><strong>K&yacute; gửi thanh lý l&agrave; g&igrave; ?</strong></p>\r\n\r\n<p>K&yacute; gửi thanh lý đơn giản l&agrave; bạn mang m&oacute;n đồ m&igrave;nh cần thanh l&yacute;: Quần &aacute;o cũ c&ograve;n mới nhưng bạn kh&ocirc;ng d&ugrave;ng nữa do mua nhầm size, nhầm m&agrave;u, muốn dọn kho đồ, hoặc đơn giản l&agrave; bạn kh&ocirc;ng th&iacute;ch nữa. Phù hợp với nhu c&acirc;̀u thay đ&ocirc;̉i thời trang li&ecirc;n tục của chị em phụ nữ</p>\r\n\r\n<p>Các chị&nbsp;đ&ecirc;̉ l&acirc;u trong tủ những qu&acirc;̀n áo kh&ocirc;ng dùng, sẽ bị &acirc;̉m móc&nbsp;v&ecirc;̀ l&acirc;u thời gian sẽ kh&ocirc;ng còn giá trị nữa, hãy quen với vi&ecirc;̣c thanh lý qu&acirc;̀n áo đem lại lợi ích kinh t&ecirc;́&nbsp;cho bản th&acirc;n và người xung quanh c&acirc;̀n chúng hơn&nbsp;ạ&nbsp;</p>\r\n\r\n<p>Shop lu&ocirc;n c&ocirc;́ gắng bán nhanh&nbsp;các sản ph&acirc;̉m của khách theo nhi&ecirc;̀u k&ecirc;nh:</p>\r\n\r\n<p><strong>K&ecirc;nh b&aacute;n h&agrave;ng:&nbsp;</strong>Sản phẩm của c&aacute;c bạn sẽ được shop chụp ảnh b&aacute;n tr&ecirc;n c&aacute;c c&ocirc;ng cụ:<br />\r\n- Online như Facebook Fanpage, Website<br />\r\n- Offline tại địa chỉ shop: Góc Voi &ndash; Vinhome Grand Park Qu&acirc;̣n 9 | Tòa S2.02</p>\r\n\r\n<p>- Địa chỉ: 202 Nguy&ecirc;̃n Xi&ecirc;̉n, phường Long Thạnh Mỹ, Qu&acirc;̣n 9, HCM</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;CŨ với mình nhưng lại MỚI với người khác</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;Là nơi thanh lý&nbsp;qu&acirc;̀n áo quen thu&ocirc;̣c</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;Lợi ích kinh t&ecirc;́ cho người mua và người bán</p>\r\n\r\n<p><img alt=\"heart\" src=\"file:///C:UsersKietAppDataLocalTempmsohtmlclip1\01clip_image001.png\" style=\"height:23px; width:23px\" />&nbsp;Bảo v&ecirc;̣ m&ocirc;i trường giảm lượng khí thải từ ph&acirc;n hủy đ&ocirc;̀ thời trang</p>\r\n\r\n<h2><strong>C&aacute;ch thức gửi đồ:</strong></h2>\r\n\r\n<p><strong>Bước 1:</strong>&nbsp; Soạn đồ cần thanh l&yacute; đ&uacute;ng ti&ecirc;u chuẩn</p>\r\n\r\n<p><strong>Bước 2:</strong>&nbsp;Chọn cách gửi</p>\r\n\r\n<p>&bull; Gửi trực tiếp</p>\r\n\r\n<p>&bull; Gửi bưu kiện (phù hợp cho mùa dịch và khách ở xa)</p>\r\n\r\n<p>Chụp ảnh shop chọn v&agrave; thoả thuận gi&aacute; tại Fanpage trước khi gửi</p>\r\n\r\n<p>Shop sẽ xử l&yacute; h&agrave;ng v&agrave; gửi x&aacute;c nhận hóa đơn k&yacute; gửi trong v&ograve;ng 2-3 ng&agrave;y</p>\r\n\r\n<p>Gi&aacute; sản phẩm&nbsp;sẽ do khách tự định gi&aacute; trước (khách tham khảo trước giá các m&acirc;̃u đang bán tại shop đ&ecirc;̉ định giá hợp lý) n&ecirc;́u c&acirc;̀n thay đ&ocirc;̉i shop sẽ tư v&acirc;́n lại giá phù hợp</p>\r\n\r\n<p><strong>Bước 3:</strong></p>\r\n\r\n<p>&bull; Đồ ph&ugrave; hợp ➡ nhận b&aacute;n</p>\r\n\r\n<p>&bull; Đồ kh&ocirc;ng đ&uacute;ng ti&ecirc;u chuẩn k&yacute; gửi ➡ kh&aacute;ch nhận lại</p>\r\n\r\n<p>&bull; Thời gian k&yacute; gửi&nbsp;trung b&igrave;nh l&agrave;&nbsp;từ&nbsp;50 đến 70&nbsp;ng&agrave;y tùy chu kỳ bán&nbsp;(sẽ c&oacute; hóa đơn nhận k&yacute; gửi)</p>\r\n\r\n<p><strong>Bước 4:</strong>&nbsp;Xem kết quả tổng kết tại Fanpage, Website, Facebook kh&aacute;ch đến nhận tiền trực tiếp hoặc shop chuyển khoản ng&acirc;n h&agrave;ng, v&iacute; điện tử (linh hoạt theo y&ecirc;u cầu kh&aacute;ch)</p>\r\n\r\n<p>✔ Đồ kh&ocirc;ng b&aacute;n được khi đến hạn kh&aacute;ch chọn 1 trong 3 cách sau:</p>\r\n\r\n<ul>\r\n	<li>Ho&agrave;n trả</li>\r\n	<li>Sale th&ecirc;m 15 ng&agrave;y tiếp theo (miễn ph&iacute; lưu kho)</li>\r\n	<li>Quy&ecirc;n g&oacute;p từ thiện</li>\r\n</ul>\r\n\r\n<div>\r\n<hr /></div>\r\n\r\n<h2><strong>Ti&ecirc;u Chuẩn k&yacute; gửi:</strong></h2>\r\n\r\n<p>Sản phẩm nhận: Quần, &Aacute;o, Đầm, V&aacute;y, T&uacute;i x&aacute;ch, Gi&agrave;y</p>\r\n\r\n<p>- Đồ mới tr&ecirc;n 90%</p>\r\n\r\n<p>Kh&aacute;ch lưu &yacute; kiểm tra kỹ c&aacute;c phần:</p>\r\n\r\n<p>Cổ &aacute;o, n&aacute;ch, tay &aacute;o, c&aacute;c n&uacute;t, d&acirc;y k&eacute;o, đ&aacute;y quần</p>\r\n\r\n<p>&yacute;&nbsp;KH&Ocirc;NG c&oacute; vết ố, bạc m&agrave;u, bẩn, r&aacute;ch, sờn l&ocirc;ng, bung chỉ, c&oacute; m&ugrave;i</p>\r\n\r\n<p>&yacute;&nbsp;Kh&ocirc;ng nhận đồ ngủ, đồ bơi, đồ c&ocirc;ng sở, mẫu sexy, đồ sặc sỡ</p>\r\n\r\n<p>Đồ c&agrave;ng mới, hợp xu hướng gi&aacute; sẽ cao hơn v&agrave; b&aacute;n nhanh hơn</p>\r\n\r\n<p>- Vệ sinh đồ sạch sẽ trước khi gửi</p>\r\n\r\n<h2><strong>Ph&iacute; k&yacute; gửi:&nbsp;</strong>30% tr&ecirc;n t&ocirc;̉ng s&ocirc;́ ti&ecirc;̀n bán được</h2>\r\n\r\n<p>Gi&aacute; thanh l&yacute; tối đa:</p>\r\n\r\n<p>&bull; &lt; 200.000 vnd/ sp thường</p>\r\n\r\n<p>&bull; &lt; 400.000 vnđ/ sp thương hiệu</p>\r\n\r\n<p>Miễn ph&iacute; lưu kho đối với đồ chưa b&aacute;n được sau 60 ng&agrave;y</p>\r\n\r\n<p>Sản phấm được sale th&ecirc;m 15 ng&agrave;y tiếp theo&nbsp;tiếp tục từ 30 - 40%</p>\r\n\r\n<p>V&ecirc;̀ phí ký gửi:</p>\r\n\r\n<ul>\r\n	<li>Chỉ trừ khi b&aacute;n được đồ</li>\r\n	<li>Kh&aacute;ch KH&Ocirc;NG phải trả ph&iacute; trước</li>\r\n	<li>Đồ tồn dư sẽ được trả lại</li>\r\n</ul>\r\n\r\n<h3><strong>Lưu ý:</strong></h3>\r\n\r\n<ul>\r\n	<li>Sau k&igrave; tổng kết trả đồ kh&ocirc;ng b&aacute;n được, shop kh&ocirc;ng đảm bảo t&igrave;nh trạng như ban đầu do c&oacute; nhiều kh&aacute;ch đến shop thử li&ecirc;n tục đồ.</li>\r\n	<li>Trong qu&aacute; tr&igrave;nh k&yacute; gửi, kh&aacute;ch muốn lấy đồ về trước hạn, shop sẽ thu ph&iacute; xử l&yacute; lấy h&agrave;ng l&agrave; 10.000đ/sp</li>\r\n</ul>\r\n\r\n<p>Thời gian nh&acirc;̣n ti&ecirc;̀n và đ&ocirc;̀ t&ocirc;̀n sẽ được post k&ecirc;́t quả tại Fanpage khi đ&ecirc;́n ngày t&ocirc;̉ng k&ecirc;́t trong hóa đơn</p>\r\n\r\n<p>Đồ k&yacute; gửi chưa b&aacute;n được nếu kh&ocirc;ng được nhận lại khi quá ngày nh&acirc;̣n sẽ được quy&ecirc;n g&oacute;p v&agrave;o quỹ từ thiện</p>\r\n\r\n<p><strong>K&ecirc;nh b&aacute;n h&agrave;ng:&nbsp;</strong>Sản phẩm của c&aacute;c bạn sẽ được shop chụp ảnh b&aacute;n tr&ecirc;n c&aacute;c c&ocirc;ng cụ:<br />\r\n- Online như Facebook Fanpage,Website<br />\r\n- Offline tại địa chỉ shop: Góc Voi &ndash; Vinhome Grand Park Qu&acirc;̣n 9 | Tòa S2.02</p>\r\n\r\n<p>- Địa chỉ: 202 Nguy&ecirc;̃n Xi&ecirc;̉n, phường Long Thạnh Mỹ, Qu&acirc;̣n 9, HCM</p>\r\n\r\n<p>Lưu &yacute;:&nbsp;Khi mang đồ đến k&yacute; gửi, c&aacute;c bạn cần giặt sạch trước nh&eacute;, tr&aacute;nh bị để l&acirc;u ẩm m&ugrave;i hoặc ố v&agrave;ng</p>\r\n\r\n<h2><strong>Cảm ơn các chị em đã tin tưởng và ủng h&ocirc;̣ Góc Voi ạ&nbsp;</strong></h2>\r\n', '<h1 style=\"text-align:center\"><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"color:#40E0D0\"><span style=\"font-size:20px\"><strong>C&ocirc;ng Ty TNHH Thương Mại </strong><strong>Xuất Nhập Khẩu&nbsp;&nbsp;</strong></span></span></span></h1>\r\n', '/public/img/images/pages/2018/08/pages-9.jpeg', 1, 0, '{\"home\":\"1\",\"ShowInHome\":\"0\",\"TypeShow\":\"mau2\"}', 0),
(19, 1, 'Tin Tức', 'tin-tuc', '', '', '', '', '', '/public/img/images/pages/2018/08/pages-19.jpeg', 1, 1, '{\"IsSevicer\":\"0\"}', 1);

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
