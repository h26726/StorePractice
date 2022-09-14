-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-09-13 18:06:28
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `store`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cart`
--

CREATE TABLE `cart` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `DelFlag` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `cart`
--

INSERT INTO `cart` (`Id`, `UserId`, `ProductId`, `DelFlag`) VALUES
(1, 1, 1, 'Y'),
(2, 5, 8, 'Y'),
(3, 5, 8, 'Y'),
(4, 5, 29, 'Y'),
(5, 5, 29, 'Y'),
(6, 5, 30, 'N'),
(7, 5, 8, 'N'),
(8, 5, 8, 'N'),
(9, 5, 8, 'N'),
(10, 5, 8, 'N'),
(11, 5, 8, 'N'),
(12, 5, 2, 'N'),
(13, 5, 8, 'N'),
(14, 5, 31, 'N'),
(15, 5, 30, 'N'),
(16, 5, 29, 'N'),
(17, 5, 30, 'N'),
(18, 5, 8, 'N'),
(19, 5, 8, 'N'),
(20, 5, 8, 'N'),
(21, 5, 1, 'N'),
(22, 5, 2, 'N'),
(23, 5, 3, 'N'),
(24, 5, 4, 'N'),
(25, 5, 6, 'N'),
(26, 6, 1, 'N'),
(27, 6, 1, 'N'),
(28, 6, 8, 'N'),
(29, 6, 4, 'N'),
(30, 6, 58, 'N'),
(31, 6, 1, 'N'),
(32, 6, 28, 'N'),
(33, 6, 8, 'Y'),
(34, 6, 1, 'Y'),
(35, 6, 10, 'N'),
(36, 6, 8, 'N'),
(37, 6, 8, 'N'),
(38, 6, 8, 'N'),
(39, 6, 8, 'N'),
(40, 6, 8, 'N'),
(41, 6, 8, 'N'),
(42, 6, 9, 'N'),
(43, 6, 3, 'N'),
(44, 6, 8, 'N'),
(45, 6, 9, 'N'),
(46, 6, 2, 'N'),
(47, 6, 8, 'N'),
(48, 6, 47, 'N'),
(49, 6, 52, 'N'),
(50, 6, 8, 'N'),
(51, 6, 58, 'N'),
(52, 11, 8, 'Y'),
(53, 11, 60, 'Y'),
(54, 11, 60, 'Y'),
(55, 11, 11, 'Y');

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ColumnCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`Id`, `CategoryName`, `ColumnCode`) VALUES
(1, '鮮奶類', 'Middle'),
(2, '好茶類', 'Left'),
(3, '鮮奶茶類', 'Right'),
(4, '鮮果類', 'Right'),
(5, '季節限定', 'Middle');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `ProductName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `ProductImg` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `CategoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`Id`, `ProductName`, `ProductPrice`, `ProductImg`, `CategoryId`) VALUES
(1, '珍珠鮮奶', 60, '6', 1),
(2, '芋頭鮮奶', 50, '2', 1),
(3, '布丁鮮奶', 70, '5', 1),
(4, '仙草鮮奶', 50, '4', 1),
(5, '黑糖鮮奶', 50, '6', 1),
(6, '芋圓鮮奶', 50, '5', 1),
(7, '可可鮮奶', 40, '8', 1),
(8, '茉翠香綠', 30, '3', 2),
(9, '青霧綠茶', 30, '8', 2),
(10, '青檸香青', 30, '11', 2),
(11, '香綠奶茶', 30, '9', 2),
(12, '冬瓜香綠', 15, '8', 2),
(13, '冬瓜香青', 70, '4', 2),
(14, '玉檸香綠', 20, '5', 2),
(15, '樂多香綠', 30, '1', 2),
(16, '樂多四季青', 30, '12', 2),
(17, '太后香綠奶', 50, '10', 2),
(18, '韓柚四季青', 30, '12', 2),
(19, '韓柚茉翠綠', 50, '8', 2),
(20, '青檸青霧綠', 60, '3', 2),
(21, '青檸紅茶', 30, '2', 2),
(22, '招牌奶茶', 65, '9', 2),
(23, '紅玉奶茶', 30, '7', 2),
(24, '布丁奶茶', 40, '4', 2),
(25, '樂多紅玉', 50, '11', 2),
(26, '韓柚紅玉', 30, '10', 2),
(27, '招牌奶茶', 50, '5', 2),
(28, '樂多拿鐵', 50, '5', 3),
(29, '樂多拿鐵', 50, '9', 3),
(30, '綠茶拿鐵', 50, '6', 3),
(31, '紅茶拿鐵', 50, '2', 3),
(32, '烏龍拿鐵', 50, '11', 3),
(33, '珍珠紅茶拿鐵', 50, '7', 3),
(34, '波霸紅茶拿鐵', 50, '10', 3),
(35, '燕麥紅茶拿鐵', 50, '8', 3),
(36, '布丁紅茶拿鐵', 50, '8', 3),
(37, '冰淇淋紅茶拿鐵', 50, '5', 3),
(38, '阿華田拿鐵', 50, '12', 3),
(39, '燕麥阿華田拿鐵', 50, '8', 3),
(40, '可可芭蕾拿鐵', 50, '6', 3),
(41, '桔茶', 50, '5', 4),
(42, '鮮橙綠', 50, '7', 4),
(43, '鳳梨紅茶', 50, '6', 4),
(44, '蜂蜜檸檬', 50, '9', 4),
(45, '蘆薈蜂蜜檸檬', 50, '6', 4),
(46, '金桔檸檬', 50, '10', 4),
(47, '葡萄柚綠茶', 50, '10', 4),
(48, '檸檬紅茶', 50, '8', 4),
(49, '檸檬綠茶', 50, '7', 4),
(50, '檸檬汁', 50, '11', 4),
(51, '葡萄柚汁', 50, '10', 4),
(52, '冷露檸果 ', 50, '6', 5),
(53, '荔麗紅茶 ', 50, '11', 5),
(54, '胭脂多多 ', 50, '2', 5),
(55, '雪花冷露 ', 50, '8', 5),
(56, '熟成冷露 ', 50, '11', 5),
(57, '手工冬瓜獨奏 ', 50, '9', 5),
(58, '春芽冷露 ', 50, '9', 5),
(59, '手工冬瓜綠茶 ', 50, '9', 5),
(60, '熟成歐蕾 ', 50, '5', 5),
(61, '冷露歐蕾 ', 50, '10', 5),
(62, '白玉歐蕾 ', 50, '10', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`Id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart`
--
ALTER TABLE `cart`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
