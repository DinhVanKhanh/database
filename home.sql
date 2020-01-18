-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 01, 2019 lúc 07:18 AM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `home`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `enquire`
--

DROP TABLE IF EXISTS `enquire`;
CREATE TABLE IF NOT EXISTS `enquire` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `enquire`
--

INSERT INTO `enquire` (`id`, `property_id`, `agent_id`, `name`, `email`, `phone`, `message`) VALUES
(1, 6, 1, 'Khánh', 'dinhvankhanh@gmail.com', '09632562145', '5564645646546546456456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_12_10_065428_create_settings_table', 1),
('2015_12_25_133843_create_enquire_table', 1),
('2015_12_25_134328_create_partners_table', 1),
('2015_12_25_134629_create_properties_table', 1),
('2015_12_25_142242_create_slider_table', 1),
('2015_12_25_142436_create_subscriber_table', 1),
('2015_12_25_142619_create_testimonials_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `partner_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partners`
--

INSERT INTO `partners` (`id`, `name`, `url`, `partner_image`) VALUES
(1, 'Khánh', 'https://www.google.com/', 'khanh-a091674156ec6ed387ab74579203e993');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `featured_property` int(11) NOT NULL DEFAULT '0',
  `property_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sale_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rent_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `map_latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map_longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bathrooms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bedrooms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `property_images5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `properties`
--

INSERT INTO `properties` (`id`, `user_id`, `featured_property`, `property_name`, `property_slug`, `property_type`, `property_purpose`, `sale_price`, `rent_price`, `address`, `map_latitude`, `map_longitude`, `bathrooms`, `bedrooms`, `area`, `description`, `featured_image`, `property_images1`, `property_images2`, `property_images3`, `property_images4`, `property_images5`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, 0, 'Cần bán căn hộ sunrise city ', 'can-ban-can-ho-sunrise-city', 'SunriseCity', 'Sale', '555', '', '025589602', '', '', '1', '1', '123', '545454544', 'can-ban-can-ho-sunrise-city-abe6403530b0ee54e7410357fe4d7233', 'can-ban-can-ho-sunrise-city-9b3830a0e653eacc7dddc995f193fc8f', '', '', '', '', 1, '2019-05-24 21:12:18', '2019-05-24 21:12:18'),
(10, 1, 0, 'Cần bán căn hộ sunrise city 1', 'can-ban-can-ho-sunrise-city-1', 'SunriseCity', 'Sale', '55555', '', '025589602', '', '', '4', '4', '454', 'yuyuyuyuyuyuyuy', 'can-ban-can-ho-sunrise-city-1-2378d8eef9775c06f2975afdd802588d', '', '', '', '', '', 1, '2019-05-24 21:26:36', '2019-05-24 21:26:36'),
(12, 1, 0, 'hôm nay thứ 7 899', 'hom-nay-thu-7-899', 'SunriseCity', 'Sale', '66666$', '', '025589602', '', '', '1', '1', '99', 'tỷtỷtỷtytỷy', 'hom-nay-thu-7-899-6d628faa2a6071cdbebc37ae626c7bf0', '', '', '', '', '', 1, '2019-05-24 21:44:00', '2019-05-24 21:44:00'),
(14, 1, 0, '11111111111111', '11111111111111', 'SunriseCity', 'Sale', '111111', '', '025589602', '', '', '1', '1', '1111', '1101010101', '11111111111111-3b888341835dcf21f6fd77500f9aca96', '', '', '', '', '', 1, '2019-05-24 21:48:27', '2019-05-24 21:48:27'),
(15, 1, 0, 'Căn hộ Millennium – PENTVILLA biệt thự vườn trên cao ngay trung tâm thành phố', 'can-ho-millennium-pentvilla-biet-thu-vuon-tren-cao-ngay-trung-tam-thanh-pho', 'SunriseCity', 'Sale', '66666$', '', '025589602', '', '', '4', '4', '123', 'tytrytỷỷỷ', 'can-ho-millennium-pentvilla-biet-thu-vuon-tren-cao-ngay-trung-tam-thanh-pho-f58daf1848022f8e1ce9e63ba0bd6ad2', '', '', '', '', '', 1, '2019-05-24 21:57:18', '2019-05-24 21:57:18'),
(16, 1, 0, 'Căn hộ Millennium – PENTVILLA biệt thự vườn trên cao ', 'can-ho-millennium-pentvilla-biet-thu-vuon-tren-cao', 'SunriseCity', 'Sale', '999666$', '', '025589602', '', '', '2', '2', '213', 'rtrểtrtẻtrre', 'can-ho-millennium-pentvilla-biet-thu-vuon-tren-cao-0f6fdc250a8ab216dbcf795a11b7b27f', '', '', '', '', '', 1, '2019-05-24 21:58:12', '2019-05-24 21:58:12'),
(17, 1, 0, 'Cần bán căn hộ sunrise city', 'can-ban-can-ho-sunrise-city', 'SunriseCity', 'Sale', '23223$', '', '025589602', '', '', '4', '4', '1234', 'uiyyuiuyiyyu', 'can-ban-can-ho-sunrise-city-0a521f4b3f184d3e27654212e38c7b76', '', '', '', '', '', 1, '2019-05-24 22:07:09', '2019-05-24 22:07:09'),
(18, 1, 0, 'Bán căn  hộ sunrise', 'ban-can-ho-sunrise', 'SunriseCity', 'Rent', '', '7000$', '025589602', '', '', '3', '3', '123', 'tỷtrtgg', 'ban-can-ho-sunrise-215b8dd1a29cc2f9c21ed47186fe05e6', '', '', '', '', '', 1, '2019-05-24 23:31:43', '2019-05-24 23:31:43'),
(19, 1, 0, 'hôm nay thứ 7 ', 'hom-nay-thu-7', 'SunriseCityView', 'Sale', '23223', '', '23232323223232', '', '', '1', '2', '222', '32323', '', '', '', '', '', '', 1, '2019-05-27 22:04:44', '2019-05-27 22:04:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_style` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site_header_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_footer_code` text COLLATE utf8_unicode_ci NOT NULL,
  `site_copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `footer_widget1` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_widget2` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_widget3` text COLLATE utf8_unicode_ci NOT NULL,
  `addthis_share_code` text COLLATE utf8_unicode_ci NOT NULL,
  `disqus_comment_code` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `site_style`, `site_name`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `site_header_code`, `site_footer_code`, `site_copyright`, `footer_widget1`, `footer_widget2`, `footer_widget3`, `addthis_share_code`, `disqus_comment_code`) VALUES
(1, 'blue', 'Divine Home - Real Estate', 'admin@admin.com', 'logo.png', 'favicon.png', 'Easy Real Estates provide you with a quick and easy way to create a real estates site portal.', '', '', 'Copyright © 2015 Divine Home - Real Estate. All rights reserved.', '', '', '', '', ''),
(2, 'blue', 'Divine Home - Real Estate', 'admin@admin.com', 'logo.png', 'favicon.png', 'Easy Real Estates provide you with a quick and easy way to create a real estates site portal.', '', '', 'Copyright © 2015 Divine Home - Real Estate. All rights reserved.', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_name`) VALUES
(1, 'Home nef', 'home-nef-4c91983f70fae2fedc00c6f8c5eb5fbf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `ip`) VALUES
(1, 'dinhvankhanh@gmail.com', '::1'),
(2, 'dinhvankhanh107@gmail.com', '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `testimonial` text COLLATE utf8_unicode_ci NOT NULL,
  `t_user_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `testimonial`, `t_user_image`) VALUES
(1, 'Khánh n', 'sadấdấd', 'khanh-n-c83913f165c90b7fefddc7d99a898d7b'),
(2, 'Jenny Trinh', 'Chiêu chí chúng tôi là ngon bổ rẻ\r\nContact: 0123456789', 'jenny-trinh-65bf47b61bb8850c2dd167da12dff6ac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `usertype` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `password`, `phone`, `fax`, `about`, `facebook`, `twitter`, `gplus`, `linkedin`, `image_icon`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Jenny Trinh', 'admin@gmail.com', '$2y$10$xi9LTQYLb5tO7FKQ1gp7P.diWIyOTmSkClAzafJQ6fQEePdnvDtWm', '0963256214', '', '', '', '', '', '', 'jenny-trinh-fddc5da259c0ced5b0026f561b0bb114', 1, 'mEmHGm5i8m', '2019-05-24 02:57:01', '2019-05-24 21:30:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
