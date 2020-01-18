-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2018 lúc 08:54 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhangcongnghe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `quyen`) VALUES
(1, 'admin', '123456', 'All'),
(2, 'user', '123456', 'Select');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietloaisp`
--

CREATE TABLE `chitietloaisp` (
  `id` int(11) NOT NULL,
  `tenloai` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietloaisp`
--

INSERT INTO `chitietloaisp` (`id`, `tenloai`) VALUES
(16, 'Iphone'),
(17, 'Samsung'),
(18, 'Nokia'),
(19, 'Huawei'),
(23, 'Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

CREATE TABLE `chitietsp` (
  `id` int(100) NOT NULL,
  `tenloai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`id`, `tenloai`, `gia`, `mota`, `hinhanh`) VALUES
(79, 'Iphone', 33000000, 'Iphone Xs Max', 'iphone-xs.jpg'),
(81, 'Samsung', 20000000, 'Samsung Note 9', 'note9.jpg'),
(82, 'Iphone', 28000000, 'Iphone Xs', 'iphone-xs.jpg'),
(83, 'Iphone', 21000000, 'Iphone Xr', 'iphone-xr.jpg'),
(84, 'Iphone', 21000000, 'Iphone X', 'iphonex.jpg'),
(87, 'Iphone', 19000000, 'Iphone 8 Plus', 'iphone-8.jpg'),
(99, 'Nokia', 5000000, 'Nokia X6', 'nokia-x6.jpg'),
(100, 'Xiaomi', 11000000, 'Xiaomi mi8', 'Xiaomi-Mi8.jpg'),
(101, 'Huawei', 20000000, 'Huawei P20 Pro', 'huawei-p20-pro.jpg'),
(102, 'Xiaomi', 15000000, 'Xiaomi mi8 ee', 'xiaomi-mi8-ee.jpg'),
(103, 'Iphone', 15000000, 'Iphone 8', 'iphone8.jpg'),
(104, 'Iphone', 13000000, 'Iphone 7', 'iphone-7.jpg'),
(105, 'Iphone', 15000000, 'Iphone 7 Plus', 'iphone-7-plus.jpg'),
(106, 'Iphone', 8000000, 'Iphone 6s Plus', 'iphone-6s.jpg'),
(107, 'Samsung', 17000000, 'Samsung S9 Plus', 's9-plus.jpg'),
(108, 'Samsung', 15000000, 'Samsung Note 8', 'note8.jpg'),
(109, 'Samsung', 13000000, 'Samsung S9', 's9.jpg'),
(110, 'Samsung', 12000000, 'Samsung S8 Plus', 's8.jpg'),
(111, 'Samsung', 9000000, 'Samsung S8', 's8.jpg'),
(112, 'Huawei', 11000000, 'Huawei P10 Pro', 'mate10-pro.jpg'),
(113, 'Xiaomi', 11000000, 'Mi Mix 2s', 'mimix-2s.jpg'),
(114, 'Nokia', 5000000, 'Nokia 8', 'nokia8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanlykhachhang`
--

CREATE TABLE `quanlykhachhang` (
  `id_kh` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soluong` int(255) NOT NULL,
  `gia` float NOT NULL,
  `tongtien` float NOT NULL,
  `ten` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tinhtrang` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quanlykhachhang`
--

INSERT INTO `quanlykhachhang` (`id_kh`, `tensp`, `soluong`, `gia`, `tongtien`, `ten`, `diachi`, `email`, `sdt`, `tinhtrang`) VALUES
(225, 'IPHONE XS', 4, 28000000, 112000000, 'Äinh VÄƒn KhÃ¡nh', '117H/13', 'dinhvankhanh107@gmail.com', '0920345643', 'ÄÃ£ xá»­ lÃ½'),
(226, 'SAMSUNG NOTE 9', 2, 20000000, 40000000, 'Kim Anh', '96f/3 An DÆ°Æ¡ng VÆ°Æ¡ng', 'kimanh@gmail.com', '01213330151', 'ChÆ°a xá»­ lÃ½'),
(227, 'IPHONE X', 1, 21000000, 21000000, 'Ãnh Tuyáº¿t', '154 Nguyá»…n TrÃ£i', 'anhtuyet12@gmail.com', '096362146', 'ÄÃ£ xá»­ lÃ½'),
(265, 'IPHONE XS MAX', 1, 33000000, 33000000, 'Tuyáº¿t Oanh', '117K/12', 'tuyetoanh98@gmail.com', '0253621456', 'ChÆ°a xá»­ lÃ½'),
(357, 'Samsung ', 1, 20000000, 0, '222222 ', '96f/3 An DÆ°Æ¡ng VÆ°Æ¡ng ', 'dinhvankhanh107@gmail.com ', '0920345643', 'ChÆ°a xá»­ lÃ½'),
(358, 'Xiaomi ', 1, 15000000, 0, '222222 ', '96f/3 An DÆ°Æ¡ng VÆ°Æ¡ng ', 'dinhvankhanh107@gmail.com ', '0920345643', 'ChÆ°a xá»­ lÃ½'),
(359, 'Iphone ', 1, 33000000, 0, '00000000000000000000 ', 'Ã¡dasdsa ', '6666 ', '0920345643', 'ChÆ°a xá»­ lÃ½'),
(360, 'Iphone ', 1, 33000000, 0, 'sdsadÃ¡ ', 'sdsadsa ', 'Ä‘Ã¢sdasdsa ', 'sÄ‘Ã¢sÄ‘Ã¡', 'ChÆ°a xá»­ lÃ½'),
(361, 'Samsung ', 1, 20000000, 0, 'sdsadÃ¡ ', 'sdsadsa ', 'Ä‘Ã¢sdasdsa ', 'sÄ‘Ã¢sÄ‘Ã¡', 'ChÆ°a xá»­ lÃ½');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `chitietloaisp`
--
ALTER TABLE `chitietloaisp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quanlykhachhang`
--
ALTER TABLE `quanlykhachhang`
  ADD PRIMARY KEY (`id_kh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `chitietloaisp`
--
ALTER TABLE `chitietloaisp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `quanlykhachhang`
--
ALTER TABLE `quanlykhachhang`
  MODIFY `id_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
