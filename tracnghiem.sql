-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2016 at 01:18 PM
-- Server version: 5.7.12
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracnghiem`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `name`, `question_id`) VALUES
(1, 'Kaspersky', 1),
(2, 'Norton AntiVirus', 1),
(3, 'BKAV', 1),
(4, 'Winrar', 1),
(8, 'Trojan', 3),
(9, 'Worm', 3),
(10, 'Rootkit', 3),
(11, 'False Positive', 3),
(12, 'Telnet', 4),
(13, 'SNMP', 4),
(14, 'SMTP', 4),
(15, 'FTP', 4),
(16, 'IMAP4', 5),
(17, 'Telnet', 5),
(18, 'SSH', 5),
(19, 'SFTP', 5),
(20, '65.535', 6),
(21, '1.024', 6),
(22, '32', 6),
(23, '16.777.216', 6),
(24, 'SSH', 7),
(25, 'HTTP', 7),
(26, 'SFTP', 7),
(27, 'IMAP4', 7),
(28, 'DDOS', 8),
(29, 'Eavesdropping', 8),
(30, 'Inception', 8),
(31, 'DoS', 8),
(33, '25', 10),
(34, '23', 10),
(35, '162', 10),
(36, '20', 10),
(37, '1', 11),
(38, '2', 11),
(39, '3', 11),
(40, '4', 11),
(41, '5', 12),
(42, '6', 12),
(43, '7', 12),
(44, '8', 12),
(45, '1', 13),
(46, '2', 13),
(47, '-2', 13),
(48, '-1', 13),
(49, '6', 14),
(50, '7', 14),
(51, '8', 14),
(52, '9', 14);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'An toàn thông tin'),
(2, 'Toán');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `name`, `category_id`) VALUES
(1, 'Các chương trình nào không phải là chương trình diệt virus?', 1),
(3, 'Phương án nào được hiểu không phải là thuật ngữ về Virus', 1),
(4, 'Giao thức nào sau đây  sử dụng cổng 25?', 1),
(5, 'Giao thức nào sau đây KHÔNG được sử dụng cho các kết nối từ xa?', 1),
(6, 'Trong giao thức TCP / IP (Transmission Control Protocol / Internet Protocol) số lượng cổng để được quét, tấn công và khai thác.', 1),
(7, 'Giao thức nào sau đây thực hiện việc truyền tải dữ liệu giữa web browser và web server', 1),
(8, 'Hình thức tấn công nào sau đây sẽ bao gồm nhiều máy tính tấn công một tổ chức duy nhất?', 1),
(10, 'Giao thức SMTP sử dụng cổng nào sao đây?', 1),
(11, '1 + 1 = ?', 2),
(12, '2 + 3 = ?', 2),
(13, '2 + x = ?', 2),
(14, '3!', 2);

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`question_id`, `answer_id`) VALUES
(1, 4),
(3, 11),
(4, 14),
(5, 17),
(6, 20),
(7, 25),
(8, 28),
(10, 33),
(11, 38),
(12, 41),
(13, 47),
(14, 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`question_id`,`answer_id`),
  ADD KEY `question_answer_ibfk_2` (`answer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD CONSTRAINT `question_answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `question_answer_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
