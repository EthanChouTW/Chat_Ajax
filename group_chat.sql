-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生時間： 2016 年 07 月 02 日 11:14
-- 伺服器版本: 10.1.13-MariaDB
-- PHP 版本： 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `group_chat`
--

-- --------------------------------------------------------

--
-- 資料表結構 `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 資料表的匯出資料 `chat`
--

INSERT INTO `chat` (`chat_id`, `user_name`, `user_comment`) VALUES
(1, 'Jacob', 'My name is Jacob'),
(2, 'Maya', 'Hi, My name is Maya, How is everyone here ?'),
(3, 'Umang', 'Hi Guys, How are you ?'),
(4, 'ethan', 'hello'),
(5, 'ethan', 'hellllloo'),
(6, 'Johnny', 'hi this is Johnny'),
(7, 'ethan', 'hoooowooo');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
