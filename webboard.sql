-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 11:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'เรื่องทั่วไป'),
(2, 'เรื่องเรียน'),
(3, 'เรื่องกีฬา');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(20148) NOT NULL,
  `post_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `post_date`, `user_id`, `post_id`) VALUES
(1, 'สู้ สู้ ครับ ติดแน่นอน', '2024-03-06 15:13:00', 4, 1),
(2, 'กินข้าว', '2024-03-06 17:06:28', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `post_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `post_date`, `cat_id`, `user_id`) VALUES
(1, 'จะติด F มั้ยคะ', 'ไม่ทำงาน ไม่ส่งงาน ไม่มาเรียน', '2024-02-28 16:45:11', 1, 3),
(2, 'กินอะไรดีเย็นนี้', 'อยากกินอะไรง่ายๆ แนะนำหน่อย', '2024-03-06 15:18:20', 1, 3),
(3, 'พิมพ์ตามอาจารย์ไม่ทันเลย', 'มีใครพิมพ์โปรแกรมไม่ทันเหมือนผมบ้าง ไม่รู้ว่าผมพิมพ์ช้า หรือว่าอาจารย์สอนโครตเร็วเลย', '2024-03-06 15:38:24', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(32) NOT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `name`, `gender`, `email`, `role`) VALUES
(1, 'araya', '0835317214', 'อารยา เมฆขาว', 'f', 'gade@gmail.com', 'm'),
(2, 'gg', '0d5f9c12fd3d5dcb3d05947c61d78a7e337dbb17', 'gade m', 'm', 'mea@gmail.com', 'm'),
(3, 'aunaun30', '21d7a074e543a8d056a347566a752f6a2b8d9989', 'Araya Mea.', 'm', 'aunaun@gmail.com', 'm'),
(4, 'admin', '8dc9fa69ec51046b4472bb512e292d959edd2aef', 'แอด มิน', 'm', 'addmin@gmail.com', 'a'),
(5, 'member', 'b54df48c4c77522382a5a3c2f0358573ad43746e', 'MemBer', 'm', 'member@gmail.com', 'm'),
(6, 'Gade', '21d7a074e543a8d056a347566a752f6a2b8d9989', 'เกด', 'm', 'gade@gmail.com', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
