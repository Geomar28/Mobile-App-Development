-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 15, 2017 at 02:31 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BookSwap`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `JoiningDate` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`, `description`, `location`, `photo`, `tags`, `JoiningDate`) VALUES
(1, 'oi', '', NULL, NULL, '', '', '', '', NULL),
(2, 'ss', '', NULL, NULL, '', '', '', '', NULL),
(3, 'test', '', NULL, NULL, '', '', '', '', NULL),
(4, '', '', 'test', NULL, '', '', '', '', NULL),
(5, '', '', 'teste2', NULL, '', '', '', '', NULL),
(6, '', '', 'test', NULL, '', '', '', '', NULL),
(7, '', '', 'bia', 'pass', '', '', '', '', NULL),
(8, '', '', 'biana', 'aaa', '', '', '', '', NULL),
(9, '', '', 's', 's', '', '', '', '', NULL),
(10, '', '', 'bia', 'test', '', '', '', '', NULL),
(11, '', '', 'bianca.catalunha@gmail.com', 'oi', '', '', '', '', NULL),
(12, '', '', 'dd', 'dd', '', '', '', '', NULL),
(13, 'oi2', '', NULL, NULL, '', '', '', '', NULL),
(14, '', '', 'oi2', 'oi3', '', '', '', '', NULL),
(15, '', '', 'rere', 'rere', '', '', '', '', NULL),
(16, '', '', 'qq', 'qq', '', '', '', '', NULL),
(17, '', '', 'ss', 'qqdd', '', '', '', '', NULL),
(18, '', '', 'ss', '122', '', '', '', '', NULL),
(19, '', '', 'aa', 'sss', '', '', '', '', NULL),
(20, '', '', 'qq', 'qw', '', '', '', '', NULL),
(21, '', '', 'oi', 'ada', '', '', '', '', NULL),
(22, '', '', 'ddd', 'ada', '', '', '', '', NULL),
(23, '', '', 'ddd', 'dd', '', '', '', '', NULL),
(24, '', '', 'dd', 'dd', '', '', '', '', NULL),
(25, '', '', 'ahaha', 'ahahah', '', '', '', '', NULL),
(26, '', '', 'ss', 'ss', '', '', '', '', NULL),
(27, '', '', 'dd', 'dd', '', '', '', '', NULL),
(28, '', '', 'haha', 'ahah', '', '', '', '', NULL),
(29, '', '', 'hah', 'ahaha', '', '', '', '', NULL),
(30, '', '', 'cc', 'cc', '', '', '', '', NULL),
(31, '', '', 'dd', 'dd', '', '', '', '', NULL),
(32, '', '', 'haha', 'hahah', '', '', '', '', NULL),
(33, '', '', 'ss', 'ss', '', '', '', '', NULL),
(34, '', '', 'dd', 'dd', '', '', '', '', NULL),
(35, '', '', 'ss', 'dd', '', '', '', '', NULL),
(36, '', '', 'ss', 'ss', '', '', '', '', NULL),
(37, '', '', 'dd', 'dd', '', '', '', '', NULL),
(38, '', '', 'd', 'd', '', '', '', '', NULL),
(39, '', '', 'ss', 's', '', '', '', '', NULL),
(40, '', '', 'd', 'd', '', '', '', '', NULL),
(41, '', '', 'f', 'f', '', '', '', '', NULL),
(42, '', '', 'aa', 'aa', '', '', '', '', NULL),
(43, '', '', 'bianca.catalunha@gmail.com', 'hahah', '', '', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
