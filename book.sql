-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 04:37 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `slug_1` text NOT NULL,
  `slug_2` text NOT NULL,
  `slug_3` text NOT NULL,
  `slug_4` text NOT NULL,
  `slug_5` text NOT NULL,
  `slug_6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `slug_1`, `slug_2`, `slug_3`, `slug_4`, `slug_5`, `slug_6`) VALUES
(2, 'http://localhost/php_1/upload/images/download3.jpg', 'http://localhost/php_1/upload/files/Untitled.png', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/50981281_806953132981428_9135407808097812480_n.jpg', 'http://localhost/php_1/upload/files/bd84b09fc90d2a53731c(1).jpg', 'http://localhost/php_1/upload/images/download.jpg'),
(4, 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', '', '', '', '0', '0'),
(6, 'http://localhost/php_1/upload/files/bd84b09fc90d2a53731c.jpg', 'http://localhost/php_1/upload/files/50635354_806953189648089_2620008326338969600_n.jpg', 'http://localhost/php_1/upload/images/thumb-map-01.jpg', 'http://localhost/php_1/upload/images/download3.jpg', 'http://localhost/php_1/upload/images/download2.jpg', 'http://localhost/php_1/upload/images/download1.jpg'),
(7, 'http://localhost/php_1/upload/files/50799448_806953112981430_8806210723911827456_n.jpg', 'http://localhost/php_1/upload/files/thumb-map-01.jpg', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/50799448_806953112981430_8806210723911827456_n.jpg', 'http://localhost/php_1/upload/files/50981281_806953132981428_9135407808097812480_n.jpg', 'http://localhost/php_1/upload/images/khu-nam-tp-hcm-tang-toc-hinh-thanh-do-thi-ve-tinh1537329009thumb__495x310.jpg'),
(8, 'http://localhost/php_1/upload/files/bd84b09fc90d2a53731c(1).jpg', 'http://localhost/php_1/upload/files/50635354_806953189648089_2620008326338969600_n.jpg', 'http://localhost/php_1/upload/files/50635354_806953189648089_2620008326338969600_n.jpg', 'http://localhost/php_1/upload/files/Untitled.png', 'http://localhost/php_1/upload/files/50635354_806953189648089_2620008326338969600_n.jpg', 'http://localhost/php_1/upload/files/bd84b09fc90d2a53731c.jpg'),
(9, 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg'),
(10, 'http://localhost/php_1/upload/files/10337730_465694483575799_7835538635590306558_n.jpg', '', '', 'http://localhost/php_1/upload/images/download2.jpg', '', ''),
(11, 'http://localhost/php_1/upload/files/50799448_806953112981430_8806210723911827456_n.jpg', 'http://localhost/php/upload/files/bd84b09fc90d2a53731c.jpg', '', '', 'http://localhost/php/upload/files/bd84b09fc90d2a53731c(1).jpg', 'http://localhost/php_1/upload/images/download1.jpg'),
(12, '', '', '', '', '', ''),
(13, 'http://localhost/php/upload/files/bd84b09fc90d2a53731c(1).jpg', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `avatar_thumb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `username`, `password`, `fullname`, `gender`, `email`, `phone`, `role`, `avatar_thumb`) VALUES
(11, 'ETX-TRUONGQUANG21321312321', 'ga8686', 'Edsoi Adars', 'Male', 'gazabo@directmail24.net123131232131231', '096656745223131231231', 'admin', '56845616_329198147800168_6040441090266365952_n.png'),
(12, 'ETX-TRUONGQUANG', '123456', '', 'Male', '', '', 'member', 'download.png'),
(13, 'ETX-TRUONGQUANG', 'admin', 'Edsoi Adars', 'Male', '', '', 'member', 'download.png'),
(14, 'admin', 'admin123', '', 'Male', '', '', 'member', 'download.png'),
(15, 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Edsoi Adars', 'Male', 'gazabo@directmail24.net', '0966567452', 'member', 'download.png'),
(16, 'adminnhan', 'asd', 'Edsoi Adars', 'Male', 'gazabo@directmail24.net', '0966567452', 'member', '56845616_329198147800168_6040441090266365952_n.png'),
(17, 'kamen', 'f865b53623b121fd34ee5426c792e5c33af8c227', 'Edsoi Adars', 'Male', 'gazabo@directmail24.net', '0966567452', 'admin', '56845616_329198147800168_6040441090266365952_n.png');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `name` text,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `message` text NOT NULL,
  `email` text NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone`, `address`, `message`, `email`, `start`, `end`, `room_id`, `status`, `paid`) VALUES
(10, '', '966089679', NULL, 'asdasdsadsadsa', 'gazabo@directmail24.net', '2019-04-15 00:00:00', '2019-04-26 00:00:00', 2, 'New', 0),
(26, '', '', '', '', '', '2019-04-06 12:00:00', '2019-04-13 12:00:00', 5, 'New', 100),
(27, '25, nguyen huu tho quan 7, tp hcm', '', '', '', '', '2019-04-03 12:00:00', '2019-04-11 12:00:00', 7, 'New', 50),
(28, '', '', '', '', '', '2019-04-13 12:00:00', '2019-04-19 12:00:00', 7, 'New', 0),
(33, '25, nguyen huu tho quan 7, tp hcm, tp hcm', '966567452', '25, nguyen huu tho quan 7, tp hcm, tp hcm', '', '', '2019-04-04 12:00:00', '2019-04-14 12:00:00', 11, 'New', 0),
(34, '25, nguyen huu tho quan 7, tp hcm, tp hcm', '966567452', '25, nguyen huu tho quan 7, tp hcm, tp hcm', '', '', '2019-04-04 12:00:00', '2019-04-13 12:00:00', 6, 'New', 0),
(35, 'aaaaa', '', '', '', '', '2019-04-02 12:00:00', '2019-04-15 12:00:00', 9, 'New', 0),
(36, 'asdsadas', '966567452', '25, nguyen huu tho quan 7, tp hcm, tp hcm', '', '', '2019-04-03 12:00:00', '2019-04-17 12:00:00', 8, 'New', 0),
(41, 'aaaaaaa', '', '', '', '', '2019-04-03 12:00:00', '2019-04-19 12:00:00', 14, 'New', 0),
(42, '', '', '', '', '', '2019-04-02 12:00:00', '2019-04-11 12:00:00', 15, 'New', 0),
(55, 'nova', '966567452', NULL, 'Kamenrider', 'gazabo@directmail24.net', '2019-04-02 00:00:00', '2019-04-20 00:00:00', 2, 'New', NULL),
(57, '', '', '', '', '', '2019-04-03 12:00:00', '2019-04-20 12:00:00', 18, 'New', 0),
(58, '', '', '', '', '', '2019-04-15 12:00:00', '2019-04-18 12:00:00', 15, 'New', 0),
(59, '', '', '', '', '', '2019-04-16 12:00:00', '2019-04-20 12:00:00', 17, 'New', 0),
(60, '', '', '', '', '', '2019-04-14 12:00:00', '2019-04-18 12:00:00', 6, 'New', 0),
(61, '', '', '', '', '', '2019-04-18 12:00:00', '2019-04-20 12:00:00', 8, 'New', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` text,
  `capacity` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `img_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `slug` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `capacity`, `status`, `img_id`, `price`, `slug`, `cat_id`, `create_date`) VALUES
(2, 'Room 2', 2, 'Cleanup', 2, 1000000, '', 3, '2019-04-18 03:13:32'),
(4, 'Room 4', 4, 'Ready', 4, 1000000, '', 2, '2019-04-18 03:13:42'),
(5, 'Room 5', 2, 'Ready', 6, 1000000, '', 7, '2019-04-18 03:13:35'),
(6, 'CÄƒn há»™ Millennium â€“ PENTVILLA biá»‡t th', 4, 'Ready', 0, 1000000, 'can-ho-millennium-â€“-pentvilla-biet-thu', 3, '2019-04-23 07:01:35'),
(7, 'Suddenattack Sea 17/4', 5, 'Ready', 0, 1000000, 'suddenattack-sea-174', 7, '2019-04-18 03:13:47'),
(8, 'CÄƒn há»™ Millennium â€“ PENTVILLA biá»‡t thá»±  qqqqqqqqqqq', 1, 'Ready', 3, 1000000, 'can-ho-millennium-â€“-pentvilla-biet-thu', 2, '2019-04-23 07:01:25'),
(9, 'quang nhut truong', 2, 'Dirty', 4, 1000000, 'quang-nhut-truong', 7, '2019-04-18 03:13:39'),
(11, 'Medusaz', 1, 'Ready', 6, 651, 'medusaz', 2, '2019-04-18 03:12:38'),
(12, 'Suddenattack Sea 213asdadasdsad', 1, 'Cleanup', 7, 1000000, 'suddenattack-sea-213asdadasdsad', 2, '2019-04-18 09:31:26'),
(13, 'Quang truong 2019', 1, 'Ready', 8, 65, 'quang-truong-2019', 2, '2019-04-18 04:30:45'),
(14, 'Medusaz', 1, 'Ready', 9, 651, 'medusaz', 2, '2019-04-18 07:32:43'),
(15, 'CÄƒn há»™ Millennium â€“ PENTVILLA biá»‡t thá»± ', 1, 'Ready', 10, 2132132121, 'can-ho-millennium-â€“-pentvilla-biet-thu', 2, '2019-04-20 07:22:12'),
(16, 'TEst999999', 1, 'Ready', 11, 10000, 'test999999', 2, '2019-04-20 07:26:00'),
(17, 'Chuoi hot11', 1, 'Ready', 12, 0, 'chuoi-hot', 2, '2019-04-23 07:05:23'),
(18, 'CÄƒn há»™ Millennium â€“ PENTVILLA biá»‡t thá»± ', 1, 'Ready', 13, 0, 'can-ho-millennium-â€“-pentvilla-biet-thu', 2, '2019-04-22 03:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `room_cat`
--

CREATE TABLE `room_cat` (
  `id_cate` int(11) NOT NULL,
  `name_cat` varchar(255) NOT NULL,
  `slug_cat` text NOT NULL,
  `date_create_cat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_cat`
--

INSERT INTO `room_cat` (`id_cate`, `name_cat`, `slug_cat`, `date_create_cat`) VALUES
(2, 'Sunrise city View1', 'sunrise-city-view1', '2019-04-16 06:26:20'),
(3, 'CÄƒn há»™ Millennium â€“ PENTVILLA biá»‡t thá»± ', 'can-ho-millennium-â€“-pentvilla-biet-thu', '2019-04-10 08:51:12'),
(7, 'Suddenattack Sea', 'suddenattack-sea', '2019-04-11 04:51:10'),
(8, 'CÄƒn há»™ Millennium â€“ PENTVILLA biá»‡t thá»± ', 'can-ho-millennium-â€“-pentvilla-biet-thu', '2019-04-18 03:22:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_cat`
--
ALTER TABLE `room_cat`
  ADD PRIMARY KEY (`id_cate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `room_cat`
--
ALTER TABLE `room_cat`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
