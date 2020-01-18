-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 30, 2019 lúc 04:43 AM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `estate`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

DROP TABLE IF EXISTS `chitietsp`;
CREATE TABLE IF NOT EXISTS `chitietsp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_chi_tiet` text,
  `chieu_ngang` int(11) DEFAULT NULL,
  `chieu_dai` int(11) DEFAULT NULL,
  `noi_that` text NOT NULL,
  `phong_ngu` int(11) DEFAULT NULL,
  `ve_sinh` int(11) NOT NULL,
  `phong_an` int(11) DEFAULT NULL,
  `bep` int(11) DEFAULT NULL,
  `san` int(11) DEFAULT NULL,
  `thuong` int(11) DEFAULT NULL,
  `loaidat` int(11) DEFAULT NULL,
  `id_hinhanh` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`id`, `ten_chi_tiet`, `chieu_ngang`, `chieu_dai`, `noi_that`, `phong_ngu`, `ve_sinh`, `phong_an`, `bep`, `san`, `thuong`, `loaidat`, `id_hinhanh`, `id_sanpham`) VALUES
(1, 'Bán căn hộ Sunrise Central W2, 99m2, Full nội thất, 4,1 tỷ', 50, 40, 'đầy đủ', 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Bán căn hộ Sunrise Central W3, 100m2, Full nội thất, 4,1 tỷ', 100, 100, 'Đầy đủ', 2, 2, NULL, NULL, NULL, NULL, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duan`
--

DROP TABLE IF EXISTS `duan`;
CREATE TABLE IF NOT EXISTS `duan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_du_an` text,
  `slug` text,
  `mo_ta` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `duan`
--

INSERT INTO `duan` (`id`, `ten_du_an`, `slug`, `mo_ta`) VALUES
(1, 'Sunrise city', 'sunrise-city', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

DROP TABLE IF EXISTS `hinh_anh`;
CREATE TABLE IF NOT EXISTS `hinh_anh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_1` text,
  `image_2` text,
  `image_3` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hinh_anh`
--

INSERT INTO `hinh_anh` (`id`, `image_1`, `image_2`, `image_3`) VALUES
(1, '/estate/public/uploads/images/16473303_694331704106913_835207106105074860_n.jpg', NULL, NULL),
(2, '/estate/public/uploads/images/3.PNG', NULL, NULL),
(3, '/estate/public/uploads/images/3.PNG', NULL, NULL),
(6, '/estate/public/uploads/images/3.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

DROP TABLE IF EXISTS `loaisp`;
CREATE TABLE IF NOT EXISTS `loaisp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(255) DEFAULT NULL,
  `mota` varchar(255) DEFAULT NULL,
  `slug` text,
  `id_duan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`id`, `tenloai`, `mota`, `slug`, `id_duan`) VALUES
(1, 'Thuê', 'Cho thuê căn hộ Sunrise city', 'Cho-thue-can-ho-Sunrise-city', 1),
(2, 'Bán', 'Bán căn hộ sunrise city', 'ban-can-ho-sunrise-city', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_sp` text,
  `slug` text,
  `mota` text,
  `dientich` double DEFAULT NULL,
  `noithat` text,
  `phongngu` int(11) DEFAULT NULL,
  `gia` decimal(10,0) DEFAULT NULL,
  `donvi` text,
  `trangthai` int(11) DEFAULT NULL,
  `id_loai` int(11) DEFAULT NULL,
  `id_hinhanh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_sp`, `slug`, `mota`, `dientich`, `noithat`, `phongngu`, `gia`, `donvi`, `trangthai`, `id_loai`, `id_hinhanh`) VALUES
(2, 'Sunrise city for rent', 'Ban-can-ho-Sunrise-Central-W3-100m2-Full-noi-that-4-1-ty', 'Bán căn hộ Sunrise Central W3, 100m2, Full nội thất, 4,1 tỷ', 300, 'đầy đủ', 2, '500', 'Triệu', 0, 1, 2),
(4, 'Bán căn nhà 500m2 2 phòng ngủ giá tốt ưu đãi bất ngờ', 'ban-can-nha-500m2-2-phong-ngu-gia-tot-uu-dai-bat-ngo', '<h3>ĐẶC ĐIỂM NỔI BẬT</h3>\r\n\r\n<p>Diện t&iacute;ch 60 m2, căn hộ c&oacute; kết cấu 3 ph&ograve;ng ngủ v&agrave; 2 WC, với mỗi gian ph&ograve;ng được x&acirc;y dựng hợp l&yacute;, hướng đ&oacute;n gi&oacute;, đầy đủ tiện nghi. Nội thất đơn giản, m&agrave;u sắc trung t&iacute;nh, mang đến vẻ đẹp sang trọng cho căn hộ.</p>\r\n\r\n<h3>T&Igrave;NH H&Igrave;NH NỘI THẤT</h3>\r\n\r\n<p>Nội thất hiện đại, m&agrave;u sắc trẻ trung.</p>\r\n\r\n<h3>M&Ocirc; TẢ VỊ TR&Iacute;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>SUNRISE CITY </strong>Tọa lạc ngay tr&ecirc;n mặt tiền tuyến đường huyết mạch Nguyễn Hữu Thọ Quận 7, dự &aacute;n<br />\r\n<strong>Sunrise City</strong> đảm bảo sự thuận tiện tối ưu trong việc kết nối giao th&ocirc;ng. Từ đ&acirc;y, chỉ mất 10 ph&uacute;t di chuyển l&agrave; đến ngay chợ Bến Th&agrave;nh, 3 ph&uacute;t l&agrave; c&oacute; thể tiếp cận được ngay khu đ&ocirc; thị ph&iacute;a Nam th&agrave;nh phố cũng như c&aacute;c quận l&acirc;n cận kh&aacute;c như Quận 4,Quận 5, Quận 8, Huyện B&igrave;nh Ch&aacute;nh, Nh&agrave; B&egrave;&hellip;</p>\r\n\r\n<h3>CỘNG ĐỒNG D&Acirc;N CƯ</h3>\r\n\r\n<p>X&acirc;y dựng cộng đồng d&acirc;n cư văn minh, hiện đại, đa phần l&agrave; giới tri thức trẻ v&agrave; doanh nh&acirc;n th&agrave;nh đạt.</p>\r\n\r\n<h3>VỀ GI&Aacute;O DỤC</h3>\r\n\r\n<p>C&aacute;ch trường Đại học Quốc tế RMIT: 2km</p>\r\n\r\n<p>C&aacute;ch trường Quốc tế Nam S&agrave;i G&ograve;n: 3km<br />\r\n<br />\r\nC&aacute;ch trường Quốc tế Sao Việt ( VStar School ) : 200m<br />\r\n<br />\r\n<strong>VỀ TIỆN &Iacute;CH<br />\r\nNgoại Khu :</strong><br />\r\n<img alt=\"\" src=\"https://i.pinimg.com/564x/16/ff/09/16ff097895f3f6a4abd0d25fae6d6859.jpg\" style=\"height:430px; width:563px\" /><br />\r\n<br />\r\n<strong>* C&oacute; đầy đủ tiện &iacute;ch 5 sao trong nội khu :</strong><br />\r\n- Khu d&acirc;n tr&iacute; cao, an ninh lu&ocirc;n đảm bảo tuyệt đối.<br />\r\n- Hầm để xe rộng .<br />\r\n- Hồ bơi tr&agrave;n, ph&ograve;ng tập gym, s&acirc;n tennis, TTTM, s&acirc;n chơi trẻ em, spa, nh&agrave; h&agrave;ng, cafe, BBQ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>* Địa điểm nổi bật :</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://jennyhomes.vn/upload/images/LK-VUNG-BUIVIEN.jpg\" style=\"height:540px; width:810px\" /></strong></p>\r\n\r\n<p><img alt=\"\" src=\"http://jennyhomes.vn/upload/images/LK-VUNG-Cho-Ben-Thanh.jpg\" style=\"height:540px; width:810px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://jennyhomes.vn/upload/images/LK-VUNG-LOTTE.jpg\" style=\"height:540px; width:810px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://jennyhomes.vn/upload/images/LK-VUNG-Nha-Tho-Duc-Ba.jpg\" style=\"height:540px; width:810px\" /></p>', 500, 'Đầy đủ', 3, '500000', 'Triệu', 0, 2, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'adimin', 'admin@gmail.com', NULL, '$2y$10$u7Qv9zp/42bG2JrxKerAa.1jqpZzfrACcTTvrwcFOG7MPSGEiQpOO', 1, 1, 'IiK9VzQ6YnEbJrrT8vSBaMIpFQJAVK9IW2zpCTG6S7NovjhU6nhLDzHKUHYE', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
