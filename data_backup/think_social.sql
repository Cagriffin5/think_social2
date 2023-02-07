-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 11:11 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `think_social`
--
CREATE DATABASE IF NOT EXISTS `think_social` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `think_social`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `body` varchar(300) NOT NULL,
  `date` datetime NOT NULL,
  `is_approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` mediumint(9) NOT NULL,
  `image` varchar(254) NOT NULL,
  `category_id` mediumint(9) NOT NULL,
  `title` varchar(30) NOT NULL,
  `body` varchar(300) NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `image`, `category_id`, `title`, `body`, `allow_comments`, `date`, `is_published`) VALUES
(1, 1, '', 0, 'Example Post', 'This post is an Example.', 1, '0000-00-00 00:00:00', 1),
(2, 1, 'https://picsum.photos/id/237/200/300', 0, 'picsum photo example', 'this is a random image', 1, '2023-02-07 09:08:40', 1),
(3, 1, '03380dcacef0609a3a3cf4a9f2379e766eac0b3d', 0, '', '', 0, '2023-02-07 10:56:53', 0),
(4, 1, '874fd8a8d76f8238d28e4c612f1d349ef13f03cd', 0, '', '', 0, '2023-02-07 10:59:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `profile_pic` varchar(254) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `bio` varchar(300) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `join_date` date NOT NULL,
  `access_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `profile_pic`, `password`, `bio`, `email`, `is_admin`, `join_date`, `access_token`) VALUES
(1, 'bober', NULL, '$2y$10$arBo1Ya6Mw5lvybESYWwluA0Nvsa7P.o0twTiHQBs1PVVoj.cZfJ2', '', 'bober@bob.com', 0, '2023-02-07', '95413fd0be47dfae96c346503c9dea20cab06eab0281f9f33c716bca1f36'),
(2, 'Cameron', NULL, '$2y$10$CXVmz9HvXRXih/liPzwmjO.jwPj8s0LaNodETUTsuX.UvqDjsdMCe', '', 'cam@gmail.com', 0, '2023-02-07', NULL),
(3, 'james', NULL, '$2y$10$.3mKSsvgK0BLps0axtZez.bMJ5ETVx3ntKuHutw1ulwbaaPsjksKC', '', 'james@james.com', 0, '2023-02-07', 'ef4e5a27e306a72204e8d174a65e86d26b85f906fc6332fabfa40a09fd36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
