-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for qpixel
CREATE DATABASE IF NOT EXISTS `qpixel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `qpixel`;

-- Dumping structure for table qpixel.adminlogs
CREATE TABLE IF NOT EXISTS `adminlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerName` varchar(50) NOT NULL,
  `PlayerHex` varchar(100) NOT NULL,
  `Module` varchar(100) NOT NULL,
  `Title` text NOT NULL,
  `MetaData` text DEFAULT NULL,
  `DTInserted` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- Dumping data for table qpixel.adminlogs: ~397 rows (approximately)
INSERT INTO `adminlogs` (`id`, `PlayerName`, `PlayerHex`, `Module`, `Title`, `MetaData`, `DTInserted`) VALUES
	(1, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"176"}', '2022-07-20 16:52:08'),
	(2, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"85"}', '2022-07-20 16:52:25'),
	(3, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"208"}', '2022-07-20 16:53:25'),
	(4, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"88"}', '2022-07-20 17:00:13'),
	(5, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"1000"}', '2022-07-20 17:14:09'),
	(6, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"21"}', '2022-07-20 17:19:45'),
	(7, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"192"}', '2022-07-20 18:27:23'),
	(8, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"57"}', '2022-07-20 18:31:12'),
	(9, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"6"}', '2022-07-21 11:29:04'),
	(10, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"52"}', '2022-07-21 11:34:13'),
	(11, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:24'),
	(12, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:28'),
	(13, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:30'),
	(14, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:38'),
	(15, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:42'),
	(16, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:49'),
	(17, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:53'),
	(18, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:36:57'),
	(19, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-07-21 11:37:01'),
	(20, '', 'steam:11000013fcd2349', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-07-21 11:37:26'),
	(21, '', 'steam:11000013fcd2349', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-07-21 11:37:27'),
	(22, '', 'steam:11000013fcd2349', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-07-21 11:37:28'),
	(23, '', 'steam:11000013fcd2349', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-07-21 11:37:29'),
	(24, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2022-07-21 11:37:30'),
	(25, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-07-21 11:37:34'),
	(26, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-07-21 11:37:35'),
	(27, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-07-21 11:37:38'),
	(28, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-07-21 11:37:51'),
	(29, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-07-21 11:37:57'),
	(30, '', 'steam:11000013fcd2349', 'Civ Jobs', 'Garbage Reward', '{"rubber":"4","plastic":"2"}', '2022-07-24 22:01:25'),
	(31, '', 'steam:11000013fcd2349', 'Civ Jobs', 'Garbage Payment', '{"amount":"219"}', '2022-07-24 22:02:08'),
	(32, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2022-07-25 16:47:55'),
	(33, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"8"}', '2022-07-28 09:50:05'),
	(34, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-07-30 12:55:48'),
	(35, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-07-30 12:56:49'),
	(36, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-07-30 12:57:50'),
	(37, '', 'steam:11000013fcd2349', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-07-30 12:57:57'),
	(38, '', 'steam:11000013fcd2349', 'Bennys', 'Repair', '{"amount":"1000"}', '2022-07-30 13:18:49'),
	(39, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:11'),
	(40, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:14'),
	(41, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:15'),
	(42, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:16'),
	(43, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:17'),
	(44, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:19'),
	(45, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:13:25'),
	(46, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:13:28'),
	(47, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:13:29'),
	(48, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:13:31'),
	(49, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:13:33'),
	(50, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2022-08-03 18:13:34'),
	(51, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-08-03 18:13:37'),
	(52, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-08-03 18:13:45'),
	(53, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:18:01'),
	(54, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:18:10'),
	(55, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:18:11'),
	(56, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:18:16'),
	(57, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:18:17'),
	(58, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-03 18:18:19'),
	(59, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:18:22'),
	(60, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:18:24'),
	(61, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-03 18:18:25'),
	(62, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2022-08-03 18:18:26'),
	(63, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:25'),
	(64, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:26'),
	(65, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:28'),
	(66, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:29'),
	(67, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:33'),
	(68, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:39'),
	(69, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:40'),
	(70, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-03 20:31:48'),
	(71, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-05 00:47:03'),
	(72, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-05 00:49:10'),
	(73, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-05 00:49:14'),
	(74, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-05 00:49:15'),
	(75, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-05 00:49:19'),
	(76, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-05 00:49:23'),
	(77, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-05 00:49:24'),
	(78, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-05 00:49:26'),
	(79, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-05 00:49:28'),
	(80, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2022-08-05 00:49:30'),
	(81, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-08-05 00:49:43'),
	(82, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-06 04:02:51'),
	(83, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-19 21:47:02'),
	(84, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-19 21:47:05'),
	(85, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-19 21:47:14'),
	(86, '', 'steam:110000136904f62', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-19 21:47:19'),
	(87, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"15000","type":"turbo"}', '2022-08-19 21:47:24'),
	(88, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-08-19 21:47:41'),
	(89, '', 'steam:110000136904f62', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-08-19 21:47:49'),
	(90, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:45:50'),
	(91, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:45:52'),
	(92, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:45:58'),
	(93, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:00'),
	(94, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:05'),
	(95, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:08'),
	(96, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:09'),
	(97, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:11'),
	(98, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:13'),
	(99, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:15'),
	(100, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:18'),
	(101, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:23'),
	(102, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:26'),
	(103, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:29'),
	(104, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:33'),
	(105, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:36'),
	(106, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:46:41'),
	(107, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:47:05'),
	(108, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:47:25'),
	(109, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:47:35'),
	(110, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:47:38'),
	(111, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:48:15'),
	(112, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:48:16'),
	(113, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:48:21'),
	(114, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:48:52'),
	(115, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-24 21:49:16'),
	(116, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-24 21:50:31'),
	(117, '', 'steam:110000118ef8d05', 'Bennys', 'Repair', '{"amount":"1000"}', '2022-08-24 21:50:42'),
	(118, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:51:37'),
	(119, '', 'steam:11000014a058bb1', 'Bennys', 'Repair', '{"amount":"24"}', '2022-08-24 21:52:02'),
	(120, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-24 21:52:35'),
	(121, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:39'),
	(122, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:42'),
	(123, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:43'),
	(124, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:45'),
	(125, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:49'),
	(126, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:50'),
	(127, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:51'),
	(128, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:52'),
	(129, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:54'),
	(130, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:56'),
	(131, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:58'),
	(132, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:11:59'),
	(133, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:12:01'),
	(134, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:12:03'),
	(135, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:12:06'),
	(136, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 15:12:16'),
	(137, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-08-25 15:12:24'),
	(138, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:38:31'),
	(139, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:38:42'),
	(140, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:38:51'),
	(141, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:38:58'),
	(142, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:06'),
	(143, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:08'),
	(144, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:12'),
	(145, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:21'),
	(146, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:27'),
	(147, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:42'),
	(148, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:50'),
	(149, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:39:54'),
	(150, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:40:03'),
	(151, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:40:18'),
	(152, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:40:30'),
	(153, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:40:45'),
	(154, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:40:55'),
	(155, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:41:13'),
	(156, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-08-25 16:41:32'),
	(157, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:43:28'),
	(158, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:43:40'),
	(159, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:43:45'),
	(160, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:44:16'),
	(161, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:44:21'),
	(162, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:44:28'),
	(163, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:44:45'),
	(164, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-08-25 16:45:22'),
	(165, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-08-25 16:45:47'),
	(166, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2022-08-25 19:31:29'),
	(167, '', 'steam:110000115378acb', 'Bennys', 'Repair', '{"amount":"13"}', '2022-08-25 21:09:20'),
	(168, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:13'),
	(169, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:14'),
	(170, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:16'),
	(171, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:25'),
	(172, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:34'),
	(173, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:46'),
	(174, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:51'),
	(175, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:10:56'),
	(176, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:11:00'),
	(177, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:11:19'),
	(178, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:11:24'),
	(179, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:11:30'),
	(180, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:11:36'),
	(181, '', 'steam:110000115378acb', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 21:11:46'),
	(182, '', 'steam:110000118ef8d05', 'Civ Jobs', 'Garbage Reward', '{"plastic":"3","rubber":"5"}', '2022-08-25 21:31:55'),
	(183, '', 'steam:110000118ef8d05', 'Civ Jobs', 'Garbage Reward', '{"plastic":"2","rubber":"3"}', '2022-08-25 21:33:15'),
	(184, '', 'steam:11000014a058bb1', 'Civ Jobs', 'Garbage Reward', '{"plastic":"4","rubber":"3"}', '2022-08-25 21:33:43'),
	(185, '', 'steam:110000118ef8d05', 'Civ Jobs', 'Garbage Reward', '{"plastic":"4","rubber":"2"}', '2022-08-25 21:33:46'),
	(186, '', 'steam:11000014a058bb1', 'Civ Jobs', 'Garbage Payment', '{"amount":"219"}', '2022-08-25 21:35:28'),
	(187, '', 'steam:110000118ef8d05', 'Civ Jobs', 'Garbage Payment', '{"amount":"216"}', '2022-08-25 21:35:37'),
	(188, '', 'steam:11000013d2c1be8', 'Civ Jobs', 'Garbage Payment', '{"amount":"279"}', '2022-08-25 21:39:29'),
	(189, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"160"}', '2022-08-25 22:13:18'),
	(190, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"456"}', '2022-08-25 22:14:44'),
	(191, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-25 22:15:25'),
	(192, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"8"}', '2022-08-25 22:19:50'),
	(193, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2022-08-25 22:20:07'),
	(194, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"162"}', '2022-08-25 22:29:56'),
	(195, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2022-08-25 22:31:03'),
	(196, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2022-08-25 22:31:16'),
	(197, '', 'steam:11000014a058bb1', 'Bennys', 'Repair', '{"amount":"9"}', '2022-08-25 22:32:05'),
	(198, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"115"}', '2022-08-25 22:33:58'),
	(199, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"23"}', '2022-08-25 22:41:02'),
	(200, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"19"}', '2022-08-25 22:43:30'),
	(201, '', 'steam:110000107aff8a1', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-25 22:43:49'),
	(202, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"5"}', '2022-08-25 22:47:13'),
	(203, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 22:47:40'),
	(204, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 22:47:59'),
	(205, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"31"}', '2022-08-25 22:48:24'),
	(206, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"27"}', '2022-08-25 22:48:50'),
	(207, '', 'steam:110000107aff8a1', 'Spikes', 'Add Spikes', '{"heading":"103.45913696289063","pos":"[{\\"x\\":435.3526611328125,\\"y\\":-1019.0847778320313,\\"z\\":28.93097877502441},{\\"x\\":431.94879150390627,\\"y\\":-1019.8994140625,\\"z\\":28.93097877502441},{\\"x\\":428.5448913574219,\\"y\\":-1020.7140502929688,\\"z\\":28.93097877502441}]"}', '2022-08-25 23:28:58'),
	(208, '', 'steam:110000107aff8a1', 'Spikes', 'Add Spikes', '{"heading":"170.0087127685547","pos":"[{\\"x\\":433.7926330566406,\\"y\\":-1021.7879028320313,\\"z\\":28.98338890075683},{\\"x\\":433.18536376953127,\\"y\\":-1025.23486328125,\\"z\\":28.98338890075683},{\\"x\\":432.578125,\\"y\\":-1028.6817626953126,\\"z\\":28.98338890075683}]"}', '2022-08-25 23:29:37'),
	(209, '', 'steam:110000107aff8a1', 'Spikes', 'Add Spikes', '{"heading":"11.43415546417236","pos":"[{\\"x\\":429.3021240234375,\\"y\\":-1028.6593017578126,\\"z\\":29.10320854187011},{\\"x\\":428.6082763671875,\\"y\\":-1025.228759765625,\\"z\\":29.10320854187011},{\\"x\\":427.9144287109375,\\"y\\":-1021.7982788085938,\\"z\\":29.10320854187011}]"}', '2022-08-25 23:30:19'),
	(210, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:20'),
	(211, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:33'),
	(212, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:41'),
	(213, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:46'),
	(214, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:49'),
	(215, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:54'),
	(216, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:45:57'),
	(217, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:46:03'),
	(218, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:46:08'),
	(219, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:46:25'),
	(220, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:46:47'),
	(221, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-25 23:46:58'),
	(222, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-25 23:47:30'),
	(223, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"96"}', '2022-08-25 23:47:47'),
	(224, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:06'),
	(225, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:08'),
	(226, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:11'),
	(227, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:16'),
	(228, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:20'),
	(229, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:42'),
	(230, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:43'),
	(231, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:44'),
	(232, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:46'),
	(233, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:48'),
	(234, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:48:58'),
	(235, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:49:00'),
	(236, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:49:02'),
	(237, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:49:04'),
	(238, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:49:06'),
	(239, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-25 23:49:12'),
	(240, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-25 23:49:20'),
	(241, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:21'),
	(242, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:26'),
	(243, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:30'),
	(244, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:33'),
	(245, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:35'),
	(246, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:36'),
	(247, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:38'),
	(248, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:40'),
	(249, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:42'),
	(250, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:45'),
	(251, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:48'),
	(252, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:49'),
	(253, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 02:24:54'),
	(254, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-30 02:25:02'),
	(255, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:45'),
	(256, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:52'),
	(257, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:53'),
	(258, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:55'),
	(259, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:56'),
	(260, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:57'),
	(261, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:08:59'),
	(262, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:09:01'),
	(263, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:09:02'),
	(264, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:09:03'),
	(265, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:09:05'),
	(266, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:09:07'),
	(267, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 03:09:13'),
	(268, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-30 03:09:20'),
	(269, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"1"}', '2022-08-30 04:40:34'),
	(270, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:06'),
	(271, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:08'),
	(272, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:10'),
	(273, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:13'),
	(274, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:15'),
	(275, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:17'),
	(276, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:19'),
	(277, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:21'),
	(278, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:23'),
	(279, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 04:45:24'),
	(280, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-30 04:45:36'),
	(281, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"headlights","amount":"100"}', '2022-08-30 04:45:39'),
	(282, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"xenoncolours","amount":"500"}', '2022-08-30 04:45:41'),
	(283, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2022-08-30 04:45:55'),
	(284, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"plateindex","amount":"1000"}', '2022-08-30 04:45:59'),
	(285, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:01'),
	(286, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:10'),
	(287, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:14'),
	(288, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:20'),
	(289, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:23'),
	(290, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:25'),
	(291, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:28'),
	(292, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:35'),
	(293, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:39'),
	(294, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:15:43'),
	(295, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:16:19'),
	(296, '', 'steam:11000014a058bb1', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-30 05:16:24'),
	(297, '', 'steam:11000014a058bb1', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-30 05:16:26'),
	(298, '', 'steam:11000014a058bb1', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-30 05:16:29'),
	(299, '', 'steam:11000014a058bb1', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-30 05:16:34'),
	(300, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"turbo","amount":"15000"}', '2022-08-30 05:16:36'),
	(301, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-08-30 05:17:34'),
	(302, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:19:22'),
	(303, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-30 05:20:10'),
	(304, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-30 05:20:42'),
	(305, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-30 05:20:50'),
	(306, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-30 05:20:51'),
	(307, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:21:02'),
	(308, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:21:04'),
	(309, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-08-30 05:21:07'),
	(310, '', 'steam:11000014a058bb1', 'Bennys', 'Repair', '{"amount":"269"}', '2022-08-30 05:30:20'),
	(311, '', 'steam:11000014a058bb1', 'Bennys', 'Repair', '{"amount":"395"}', '2022-08-30 06:02:19'),
	(312, '', 'steam:11000014a058bb1', 'Bennys', 'Repair', '{"amount":"3"}', '2022-08-30 06:04:17'),
	(313, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"3"}', '2022-08-31 20:28:40'),
	(314, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"wheels","amount":"400"}', '2022-08-31 20:31:23'),
	(315, '', 'steam:110000107aff8a1', 'Bennys', 'Performance', '{"amount":"10450"}', '2022-08-31 20:31:28'),
	(316, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"respray","amount":"500"}', '2022-08-31 22:56:56'),
	(317, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-09-04 20:01:14'),
	(318, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:18:44'),
	(319, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:18:56'),
	(320, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:02'),
	(321, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:14'),
	(322, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:18'),
	(323, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:21'),
	(324, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:28'),
	(325, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:38'),
	(326, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:41'),
	(327, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:44'),
	(328, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:19:52'),
	(329, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:20:01'),
	(330, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-09-05 00:20:25'),
	(331, '', 'steam:110000118ef8d05', 'Bennys', 'Repair', '{"amount":"72"}', '2022-09-05 00:42:08'),
	(332, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:42:34'),
	(333, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:42:39'),
	(334, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"277"}', '2022-09-05 00:53:30'),
	(335, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"268"}', '2022-09-05 00:53:50'),
	(336, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:59:49'),
	(337, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:59:51'),
	(338, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:59:53'),
	(339, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:59:55'),
	(340, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:59:57'),
	(341, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 00:59:58'),
	(342, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:01'),
	(343, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:02'),
	(344, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:03'),
	(345, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:05'),
	(346, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:07'),
	(347, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:08'),
	(348, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:10'),
	(349, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:12'),
	(350, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-05 01:00:16'),
	(351, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-09-05 01:00:23'),
	(352, '', 'steam:11000013d2c1be8', 'Bennys', 'Repair', '{"amount":"47"}', '2022-09-06 04:19:00'),
	(353, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"400","type":"wheels"}', '2022-09-06 04:19:55'),
	(354, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"500","type":"respray"}', '2022-09-06 04:21:01'),
	(355, '', 'steam:11000013d2c1be8', 'Bennys', 'Other', '{"amount":"1000","type":"plateindex"}', '2022-09-06 04:21:08'),
	(356, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:03'),
	(357, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:06'),
	(358, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:08'),
	(359, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:10'),
	(360, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:12'),
	(361, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:13'),
	(362, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:16'),
	(363, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:18'),
	(364, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:19'),
	(365, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:21'),
	(366, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:23'),
	(367, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:24'),
	(368, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:25'),
	(369, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:27'),
	(370, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:37:30'),
	(371, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-09-06 04:37:35'),
	(372, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:44:35'),
	(373, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:44:42'),
	(374, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:44:47'),
	(375, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:44:51'),
	(376, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:44:54'),
	(377, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:44:58'),
	(378, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:03'),
	(379, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:06'),
	(380, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:12'),
	(381, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:14'),
	(382, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:16'),
	(383, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:19'),
	(384, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:23'),
	(385, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:45:37'),
	(386, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"amount":"400","type":"windowtint"}', '2022-09-06 04:45:47'),
	(387, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"4"}', '2022-09-06 04:47:23'),
	(388, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:40'),
	(389, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:42'),
	(390, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:45'),
	(391, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:49'),
	(392, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:51'),
	(393, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:53'),
	(394, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:47:55'),
	(395, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:48:04'),
	(396, '', 'steam:110000107aff8a1', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-06 04:48:15'),
	(397, '', 'steam:110000107aff8a1', 'Bennys', 'Repair', '{"amount":"5"}', '2022-09-06 08:20:53'),
	(398, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:03'),
	(399, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:12'),
	(400, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:16'),
	(401, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:22'),
	(402, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:23'),
	(403, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:26'),
	(404, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:24:35'),
	(405, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-09-07 00:24:57'),
	(406, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-09-07 00:28:24'),
	(407, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:31:29'),
	(408, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:31:38'),
	(409, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:31:44'),
	(410, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:31:52'),
	(411, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:31:58'),
	(412, '', 'steam:110000114d6833e', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:32:06'),
	(413, '', 'steam:11000014a058bb1', 'Bennys', 'Repair', '{"amount":"78"}', '2022-09-07 00:34:21'),
	(414, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:35:02'),
	(415, '', 'steam:110000118ef8d05', 'Bennys', 'Repair', '{"amount":"13"}', '2022-09-07 00:52:13'),
	(416, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:52:29'),
	(417, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:52:33'),
	(418, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:52:36'),
	(419, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:03'),
	(420, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"windowtint","amount":"400"}', '2022-09-07 00:53:17'),
	(421, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:25'),
	(422, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:28'),
	(423, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:30'),
	(424, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:33'),
	(425, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:42'),
	(426, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:53:56'),
	(427, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:54:02'),
	(428, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:54:31'),
	(429, '', 'steam:11000014a058bb1', 'Bennys', 'Other', '{"type":"cosmetics","amount":"400"}', '2022-09-07 00:56:22'),
	(430, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:05'),
	(431, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:11'),
	(432, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:31'),
	(433, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:33'),
	(434, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:37'),
	(435, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:39'),
	(436, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:41'),
	(437, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:43'),
	(438, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:45'),
	(439, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:47'),
	(440, '', 'steam:110000118ef8d05', 'Bennys', 'Other', '{"amount":"400","type":"cosmetics"}', '2022-09-07 23:28:53');

-- Dumping structure for table qpixel.bank_transactions
CREATE TABLE IF NOT EXISTS `bank_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `label` varchar(255) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `iden` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT 'income',
  `date` varchar(255) DEFAULT NULL,
  `business_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.bank_transactions: ~6 rows (approximately)
INSERT INTO `bank_transactions` (`id`, `identifier`, `sender`, `target`, `label`, `amount`, `iden`, `type`, `date`, `business_id`, `transaction_id`) VALUES
	(1, '19', 'Karxi Deving', 'Karxi Deving', 'house', 65000000, 'DEPOSIT', 'pos', '2022-08-26T01:55:40', NULL, 'a36b6cf1-a55f-4121-9223-6f07ce38edd8'),
	(2, '19', 'Karxi Deving', 'Karxi Deving', 'house', 65000000, 'DEPOSIT', 'pos', '2022-08-26T01:55:51', NULL, '32f55326-c94c-43ad-baf1-9ab3711fd7e3'),
	(3, '19', 'Karxi Deving', 'Karxi Deving', 'house', 500000000, 'DEPOSIT', 'pos', '2022-08-26T01:56:18', NULL, '90c4628d-e49a-49c0-a954-77e43c0be6a3'),
	(4, '16', 'andoo potate', 'andoo potate', 'yes', 10000000, 'DEPOSIT', 'pos', '2022-09-05T00:45:13', NULL, '08c37a51-9a18-4efd-8759-e6c3759ab9e8'),
	(5, '0', 'Karxi Deving', 'Karxi Deving', '', 151, 'WITHDRAW', 'neg', '2022-09-06T01:51:33', 'uwu_cafe', '7a854292-8099-4776-810a-2e8a4da08dde'),
	(6, '24', 'Bing Bong', 'Bing Bong', 'broke ass bitch', 1000, 'WITHDRAW', 'neg', '2022-09-06T12:28:00', NULL, 'ff1944d3-b9f7-499b-bbcd-9f9e5c0d4bb1'),
	(7, '0', 'Karxi Deving', 'Karxi Deving', '', 50, 'WITHDRAW', 'neg', '2022-09-06T07:26:36', 'uwu_cafe', 'dff68684-30ae-4c01-80c7-259dbcbc5271');

-- Dumping structure for table qpixel.banlisthistory
CREATE TABLE IF NOT EXISTS `banlisthistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table qpixel.banlisthistory: ~0 rows (approximately)

-- Dumping structure for table qpixel.bans
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banid` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `license` varchar(50) NOT NULL DEFAULT '0',
  `discord` varchar(50) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '0',
  `reason` varchar(50) NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL DEFAULT '0',
  `expire` int(11) NOT NULL DEFAULT 0,
  `bannedon` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.bans: ~0 rows (approximately)

-- Dumping structure for table qpixel.boosting
CREATE TABLE IF NOT EXISTS `boosting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vehicle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `expires` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `units` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ExtraVin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `coords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.boosting: ~40 rows (approximately)
INSERT INTO `boosting` (`id`, `identifier`, `vehicle`, `type`, `owner`, `expires`, `units`, `ExtraVin`, `coords`) VALUES
	(1, '1', 'rhapsody', 'D', 'DesireRP', '18686', '5', '100', '{"y":88.37262725830078,"x":80.01072692871094,"z":78.57487487792969}'),
	(2, '1', 'issi2', 'D', 'DesireRP', '19041', '5', '100', '{"y":-384.55999755859377,"x":-1662.4200439453126,"z":44.41999816894531}'),
	(3, '1', 'issi2', 'D', 'DesireRP', '19131', '5', '100', '{"y":-2524.97998046875,"x":1015.0800170898438,"z":27.8799991607666}'),
	(4, '1', 'issi2', 'D', 'DesireRP', '19201', '5', '100', '{"y":-2524.97998046875,"x":1015.0800170898438,"z":27.8799991607666}'),
	(5, '1', 'blista', 'D', 'DesireRP', '18394', '5', '100', '{"z":82.75,"y":301.8800048828125,"x":-560.47998046875}'),
	(8, '1', 'rhapsody', 'D', 'DesireRP', '18156', '5', '100', '{"y":-193.8946075439453,"x":-775.9652709960938,"z":37.28368759155273}'),
	(10, '1', 'blista', 'D', 'DesireRP', '19675', '5', '100', '{"x":1204.27001953125,"z":5.11999988555908,"y":-3116.4599609375}'),
	(11, '1', 'panto', 'D', 'DesireRP', '16508', '5', '100', '{"z":40.35762023925781,"y":-658.2069702148438,"x":-1219.7900390625}'),
	(13, '9', 'stanier', 'B', 'DesireRP', '18392', '35', '100', '{"x":80.01072692871094,"y":88.37262725830078,"z":78.57487487792969}'),
	(15, '9', 'fusilade', 'A', 'DesireRP', '18552', '85', '100', '{"z":5.63999986648559,"y":-2684.300048828125,"x":344.1300048828125}'),
	(16, '9', 'stanier', 'B', 'DesireRP', '16679', '35', '100', '{"z":71.50944519042969,"y":83.47309875488281,"x":-69.75252532958985}'),
	(17, '9', 'fusilade', 'A', 'DesireRP', '18552', '85', '100', '{"z":27.8799991607666,"y":-2524.97998046875,"x":1015.0800170898438}'),
	(18, '9', 'fusilade', 'A', 'DesireRP', '18227', '85', '100', '{"x":1204.27001953125,"y":-3116.4599609375,"z":5.11999988555908}'),
	(19, '9', 'neon', 'A', 'DesireRP', '17984', '85', '100', '{"x":344.1300048828125,"y":-2684.300048828125,"z":5.63999986648559}'),
	(20, '9', 'premier', 'B', 'DesireRP', '14854', '35', '100', '{"z":27.89999961853027,"y":-2496.679931640625,"x":855.6799926757813}'),
	(21, '9', 'neon', 'A', 'DesireRP', '15588', '85', '100', '{"z":27.89999961853027,"y":-2496.679931640625,"x":855.6799926757813}'),
	(22, '9', 'torero', 'S', 'DesireRP', '15439', '150', '100', '{"z":69.77107238769531,"y":-228.1179656982422,"x":974.4304809570313}'),
	(23, '9', 'jester', 'A', 'DesireRP', '15657', '85', '100', '{"z":40.35762023925781,"y":-658.2069702148438,"x":-1219.7900390625}'),
	(33, '9', 'jester', 'A', 'DesireRP', '19178', '85', '100', '{"x":-1219.7900390625,"y":-658.2069702148438,"z":40.35762023925781}'),
	(34, '9', 'jester', 'A', 'DesireRP', '17975', '85', '100', '{"x":757.0399780273438,"z":5.65000009536743,"y":-3195.090087890625}'),
	(35, '16', 'issi2', 'D', 'DesireRP', '14981', '5', '100', '{"y":-2404.219970703125,"x":1090.75,"z":30.1299991607666}'),
	(36, '16', 'rhapsody', 'D', 'DesireRP', '18301', '5', '100', '{"y":88.37262725830078,"x":80.01072692871094,"z":78.57487487792969}'),
	(37, '16', 'rhapsody', 'D', 'DesireRP', '18341', '5', '100', '{"y":88.37262725830078,"x":80.01072692871094,"z":78.57487487792969}'),
	(38, '16', 'blista', 'D', 'DesireRP', '17887', '5', '100', '{"y":-2684.300048828125,"x":344.1300048828125,"z":5.63999986648559}'),
	(39, '16', 'blista', 'D', 'DesireRP', '17702', '5', '100', '{"y":-1559.969970703125,"x":1000.72998046875,"z":30.34000015258789}'),
	(40, '16', 'rhapsody', 'D', 'DesireRP', '18116', '5', '100', '{"y":88.37262725830078,"x":80.01072692871094,"z":78.57487487792969}'),
	(41, '16', 'blista', 'D', 'DesireRP', '17937', '5', '100', '{"y":-2360.89990234375,"x":845.47998046875,"z":29.92000007629394}'),
	(42, '16', 'panto', 'D', 'DesireRP', '18462', '5', '100', '{"x":757.0399780273438,"y":-3195.090087890625,"z":5.65000009536743}'),
	(44, '16', 'panto', 'D', 'DesireRP', '16897', '5', '100', '{"x":1090.75,"y":-2404.219970703125,"z":30.1299991607666}'),
	(47, '16', 'issi2', 'D', 'DesireRP', '19504', '5', '100', '{"z":29.8700008392334,"y":-2323.89990234375,"x":1075.72998046875}'),
	(49, '16', 'blista', 'D', 'DesireRP', '11654', '5', '100', '{"z":30.68000030517578,"y":-1513.1199951171876,"x":952.8200073242188}'),
	(50, '16', 'blista', 'D', 'DesireRP', '11858', '5', '100', '{"z":37.28368759155273,"y":-193.8946075439453,"x":-775.9652709960938}'),
	(51, '16', 'rhapsody', 'D', 'DesireRP', '12196', '5', '100', '{"z":29.92000007629394,"y":-2360.89990234375,"x":845.47998046875}'),
	(52, '16', 'panto', 'D', 'DesireRP', '13230', '5', '100', '{"z":23.23999977111816,"y":-2403.300048828125,"x":819.72998046875}'),
	(53, '16', 'issi2', 'D', 'DesireRP', '14644', '5', '100', '{"z":27.8799991607666,"y":-2524.97998046875,"x":1015.0800170898438}'),
	(54, '16', 'rhapsody', 'D', 'DesireRP', '12800', '5', '100', '{"z":71.50944519042969,"y":83.47309875488281,"x":-69.75252532958985}'),
	(55, '16', 'panto', 'D', 'DesireRP', '13739', '5', '100', '{"z":29.92000007629394,"y":-2360.89990234375,"x":845.47998046875}'),
	(56, '16', 'issi2', 'D', 'DesireRP', '15049', '5', '100', '{"z":32.46984100341797,"y":6588.66943359375,"x":10.32895946502685}'),
	(57, '16', 'rhapsody', 'D', 'DesireRP', '13225', '5', '100', '{"z":47.79653549194336,"y":32.2158317565918,"x":-355.91485595703127}'),
	(58, '16', 'panto', 'D', 'DesireRP', '14163', '5', '100', '{"z":29.92000007629394,"y":-2360.89990234375,"x":845.47998046875}');

-- Dumping structure for table qpixel.boosting_gne
CREATE TABLE IF NOT EXISTS `boosting_gne` (
  `gne` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.boosting_gne: ~0 rows (approximately)

-- Dumping structure for table qpixel.boosting_users
CREATE TABLE IF NOT EXISTS `boosting_users` (
  `identifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `gne` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `cooldown` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.boosting_users: ~2 rows (approximately)
INSERT INTO `boosting_users` (`identifier`, `level`, `gne`, `cooldown`) VALUES
	('19', '100', '350', NULL),
	('16', '100', '50', NULL);

-- Dumping structure for table qpixel.boost_queue
CREATE TABLE IF NOT EXISTS `boost_queue` (
  `identifier` varchar(60) NOT NULL,
  `pSrc` int(11) DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table qpixel.boost_queue: ~0 rows (approximately)

-- Dumping structure for table qpixel.bulletclub_leaderboard
CREATE TABLE IF NOT EXISTS `bulletclub_leaderboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `difficulty` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `cid` int(255) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.bulletclub_leaderboard: ~0 rows (approximately)

-- Dumping structure for table qpixel.businesses
CREATE TABLE IF NOT EXISTS `businesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` varchar(255) NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `employees` longtext DEFAULT NULL,
  `roles` longtext DEFAULT NULL,
  `bank` int(255) DEFAULT 0,
  `bank_id` int(8) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.businesses: ~32 rows (approximately)
INSERT INTO `businesses` (`id`, `business_id`, `business_name`, `employees`, `roles`, `bank`, `bank_id`) VALUES
	(4, 'tuner_shop', 'Tuner Shop', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 2095, 19379317),
	(5, 'hayes_autos', 'Hayes Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 68304454),
	(6, 'harmony_repairs', 'Harmony Repairs', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 93626194),
	(7, 'ottos_autos', 'Ottos Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 82826893),
	(8, 'uwu_cafe', 'Uwu Cafe', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 116, 20562480),
	(9, 'pdm', 'Premium Deluxe Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 53648, 23167245),
	(10, 'jacksons_autos', 'Jacksons Autos', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 128340, 85397904),
	(11, 'maldinis', 'Maldinis', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 2080, 10392069),
	(12, 'gallery', 'Art Gallery', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 54021356),
	(13, 'white_widow', 'White Widow', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6939634),
	(17, 'burger_shot', 'burgershot', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 6, 35350753),
	(18, 'winery', 'winery', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 34735735),
	(19, 'rooster', 'Rooster', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 458678645),
	(20, 'fastlane', 'Fastlane', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 21474836),
	(21, 'state', 'state', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 45453453),
	(22, 'police', 'Police', '[{"role":"Owner","cid":"19","rank":5},{"role":"Owner","cid":"20","rank":5},{"role":"Owner","cid":"16","rank":5}]', '[{"role_manage":false,"can_hire":false,"role_create":true,"name":"Owner","can_fire":false,"logs_access":false,"charge_access":false,"craft_access":false,"key_access":false,"stash_access":false,"bank_access":false},{"role_manage":false,"can_hire":false,"role_create":false,"name":"Employee","can_fire":false,"charge_access":false,"craft_access":true,"key_access":true,"stash_access":true,"bank_access":false}]', 0, 7831234),
	(23, 'red_circle', 'Red Circle', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 4534893),
	(24, 'cosmic_cannabis', 'Cosmic Cannabis', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6969420),
	(25, 'casino', 'Casino', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 45637986),
	(26, 'bennys', 'Bennys', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 68786786),
	(27, 'car_shop', 'Car Shop', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 97856454),
	(28, 'hydra_incorporation', 'Hydra Inc', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 4586786),
	(29, 'doc', 'Doctor', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 67394545),
	(30, 'warriors_table', 'Warriors Table', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 7984651),
	(31, 'skybar', 'Skybar', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 4253698),
	(32, 'mandem', 'Mandem', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 78789789),
	(33, 'tavern', 'Tavern', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 3365214),
	(34, 'recycle_center', 'Recycle Center', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 45864534),
	(35, 'high_table', 'High Table', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 89673453),
	(36, 'mtf', 'MTF', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6697984),
	(37, 'ace_industries', 'Ace Industries', '[{"cid":"19","rank":5,"role":"Owner"},{"cid":"16","rank":5,"role":"Owner"},{"cid":"20","rank":5,"role":"Owner"}]', '[{"name":"Owner","charge_access":true,"stash_access":true,"logs_access":true,"can_hire":true,"role_create":true,"bank_access":true,"role_manage":true,"can_fire":true,"craft_access":true,"key_access":true},{"name":"Employee","charge_access":false,"stash_access":true,"can_hire":false,"role_create":false,"bank_access":false,"role_manage":false,"can_fire":false,"craft_access":true,"key_access":true}]', 0, 6697984),
	(38, 'the_diamond', 'thediamond', '[{"cid":"19","role":"Owner","rank":5}]', '[{"name":"Owner","charge_access":true,"bank_access":true,"role_manage":true,"role_create":true,"key_access":true,"stash_access":true,"craft_access":true,"can_hire":true,"can_fire":true},{"name":"Employee","charge_access":false,"bank_access":false,"role_manage":false,"role_create":false,"key_access":true,"stash_access":true,"craft_access":true,"can_hire":false,"can_fire":false}]', 0, 37055546);

-- Dumping structure for table qpixel.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT 'John',
  `last_name` varchar(50) NOT NULL DEFAULT 'Doe',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `dob` varchar(50) DEFAULT 'NULL',
  `cash` int(9) DEFAULT 500,
  `bank` int(9) NOT NULL DEFAULT 5000,
  `phone_number` varchar(15) DEFAULT NULL,
  `story` text NOT NULL,
  `new` int(1) NOT NULL DEFAULT 1,
  `deleted` int(11) NOT NULL DEFAULT 0,
  `gender` int(1) NOT NULL DEFAULT 0,
  `job` varchar(50) DEFAULT 'unemployed',
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `dirty_money` int(11) NOT NULL DEFAULT 0,
  `gang_type` int(11) NOT NULL DEFAULT 0,
  `jail_time_mobster` int(11) unsigned zerofill NOT NULL DEFAULT 00000000000,
  `judge_type` int(11) NOT NULL DEFAULT 0,
  `iswjob` int(11) NOT NULL DEFAULT 0,
  `metaData` varchar(1520) DEFAULT '{}',
  `stress_level` int(11) DEFAULT 0,
  `bones` mediumtext DEFAULT '{}',
  `emotes` varchar(4160) DEFAULT '{}',
  `paycheck` int(11) DEFAULT 0,
  `stocks` mediumtext DEFAULT NULL,
  `rehab` int(12) DEFAULT 0,
  `meta` text DEFAULT 'move_m@casual@d',
  `dna` text DEFAULT '{}',
  `contacts` longtext DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `accounts` longtext DEFAULT NULL,
  `gallery` longtext DEFAULT NULL,
  `wallpaper` longtext DEFAULT NULL,
  `ammo` longtext DEFAULT NULL,
  `licenses` longtext NOT NULL DEFAULT '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]',
  `Shungite` longtext NOT NULL DEFAULT '0',
  `tgb` longtext NOT NULL DEFAULT '0',
  `dvd` longtext NOT NULL DEFAULT '0',
  `chips` tinytext NOT NULL DEFAULT '0',
  `bank_id` int(8) DEFAULT NULL,
  `profilepic` varchar(255) DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  `alias` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.characters: ~11 rows (approximately)
INSERT INTO `characters` (`id`, `owner`, `first_name`, `last_name`, `date_created`, `dob`, `cash`, `bank`, `phone_number`, `story`, `new`, `deleted`, `gender`, `job`, `jail_time`, `dirty_money`, `gang_type`, `jail_time_mobster`, `judge_type`, `iswjob`, `metaData`, `stress_level`, `bones`, `emotes`, `paycheck`, `stocks`, `rehab`, `meta`, `dna`, `contacts`, `messages`, `accounts`, `gallery`, `wallpaper`, `ammo`, `licenses`, `Shungite`, `tgb`, `dvd`, `chips`, `bank_id`, `profilepic`, `information`, `alias`) VALUES
	(15, 'steam:110000107aff8a1', 'Kazumi', 'Developer', '2022-08-25 00:28:27', '1994-01-01', 500, 5000, '1868896484', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"health":200,"hunger":100,"armour":0,"thirst":100}', 0, '{}', '{}', 0, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL),
	(16, 'steam:11000014a058bb1', 'andoo', 'potate', '2022-09-07 23:04:57', '1999-06-25', 2137437907, 10004932, '9472351074', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":96,"health":190,"thirst":96}', 5, '{}', '[{"key":[289],"anim":""},{"key":[170],"anim":""},{"key":[166],"anim":""},{"key":[167],"anim":""},{"key":[168],"anim":""},{"key":[56],"anim":""},{"key":[57],"anim":""},{"key":[289,21],"anim":""},{"key":[170,21],"anim":"handsup"},{"key":[166,21],"anim":""},{"key":[167,21],"anim":""},{"key":[168,21],"anim":""},{"key":[56,21],"anim":""},{"key":[57,21],"anim":""}]', 8200, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '1', '0', '0', '0', 74718117, NULL, NULL, 'big dick'),
	(17, 'steam:110000118ef8d05', 'Jamie', 'Test', '2022-09-07 23:07:30', '1980-10-02', 990691, 4466, '3390502929', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":97,"health":0,"thirst":98}', 0, '[{"boneIndex":11816,"offset1":0.35,"part":"Pelvis","timer":0,"offset2":0.35,"injuryType":4,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":58271,"offset1":0.35,"part":"Left Thigh","timer":0,"offset2":0.8,"injuryType":4,"maxhit":false,"hitcount":0,"applied":false,"zone":4},{"boneIndex":47495,"offset1":0.45,"part":"Mouth","timer":0,"offset2":0.35,"injuryType":1,"maxhit":false,"hitcount":0,"applied":false,"zone":1},{"boneIndex":14201,"offset1":0.35,"part":"Left Foot","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":4},{"boneIndex":46078,"offset1":0.35,"part":"Left Knee","timer":0,"offset2":0.55,"injuryType":4,"maxhit":false,"hitcount":0,"applied":false,"zone":4},{"boneIndex":51826,"offset1":0.35,"part":"Right Thigh","timer":0,"offset2":0.8,"injuryType":4,"maxhit":false,"hitcount":0,"applied":false,"zone":5},{"boneIndex":24816,"offset1":0.25,"part":"Spine Lower","timer":0,"offset2":0.35,"injuryType":5,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":52301,"offset1":0.35,"part":"Right Foot","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":5},{"boneIndex":16335,"offset1":0.35,"part":"Right Knee","timer":0,"offset2":0.55,"injuryType":4,"maxhit":false,"hitcount":0,"applied":false,"zone":5},{"boneIndex":24817,"offset1":0.25,"part":"Spine Mid","timer":0,"offset2":0.55,"injuryType":5,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":60309,"offset1":0.35,"part":"Left Hand","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":2},{"boneIndex":22711,"offset1":0.35,"part":"Left Elbow","timer":0,"offset2":0.75,"injuryType":3,"maxhit":false,"hitcount":0,"applied":false,"zone":2},{"boneIndex":57005,"offset1":0.35,"part":"Right Hand","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":3},{"boneIndex":2992,"offset1":0.35,"part":"Right Elbow","timer":0,"offset2":0.75,"injuryType":3,"maxhit":false,"hitcount":0,"applied":false,"zone":3},{"boneIndex":39317,"offset1":0.25,"part":"Neck","timer":0,"offset2":0.95,"injuryType":5,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":31086,"offset1":0.35,"part":"Head","timer":0,"offset2":0.75,"injuryType":2,"maxhit":false,"hitcount":0,"applied":false,"zone":1},{"boneIndex":24818,"offset1":0.25,"part":"Spine High","timer":0,"offset2":0.85,"injuryType":5,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":64729,"offset1":0.15,"part":"Left Clavicle","timer":0,"offset2":0.75,"injuryType":3,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":26610,"offset1":0.35,"part":"Left Finger Pinky","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":2},{"boneIndex":26611,"offset1":0.35,"part":"Left Finger Index","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":2},{"boneIndex":26612,"offset1":0.35,"part":"Left Finger Middle","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":2},{"boneIndex":26613,"offset1":0.35,"part":"Left Finger Ring","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":2},{"boneIndex":26614,"offset1":0.35,"part":"Left Finger Thumb","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":2},{"boneIndex":10706,"offset1":0.35,"part":"Right Clavicle","timer":0,"offset2":0.75,"injuryType":3,"maxhit":false,"hitcount":0,"applied":false,"zone":0},{"boneIndex":58866,"offset1":0.35,"part":"Right Finger Pinky","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":3},{"boneIndex":58867,"offset1":0.35,"part":"Right Finger Index","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":3},{"boneIndex":58868,"offset1":0.35,"part":"Right Finger Middle","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":3},{"boneIndex":58869,"offset1":0.35,"part":"Right Finger Ring","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":3},{"boneIndex":58870,"offset1":0.35,"part":"Right Finger Thumb","timer":0,"offset2":0.2,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":3},{"boneIndex":21550,"offset1":0.55,"part":"Face Left CheekBone","timer":0,"offset2":0.45,"injuryType":1,"maxhit":false,"hitcount":0,"applied":false,"zone":1},{"boneIndex":19336,"offset1":0.35,"part":"Face Right CheekBone","timer":0,"offset2":0.45,"injuryType":1,"maxhit":false,"hitcount":0,"applied":false,"zone":1},{"boneIndex":37193,"offset1":0.45,"part":"Forehead","timer":0,"offset2":0.75,"injuryType":2,"maxhit":false,"hitcount":0,"applied":false,"zone":1},{"boneIndex":61839,"offset1":0.45,"part":"Face UpperLip","timer":0,"offset2":0.35,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":1},{"boneIndex":20623,"offset1":0.45,"part":"Face LowerLip","timer":0,"offset2":0.35,"injuryType":1,"maxhit":true,"hitcount":0,"applied":false,"zone":1}]', '{}', 8200, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL),
	(19, 'steam:110000107aff8a1', 'Karxi', 'Deving', '2022-09-08 00:41:42', '2000-01-01', 2147149538, 629203370, '8005676269', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"health":200,"thirst":80,"hunger":79}', 0, '[{"offset1":0.35,"offset2":0.35,"hitcount":0,"maxhit":false,"injuryType":4,"timer":0,"zone":0,"part":"Pelvis","boneIndex":11816,"applied":false},{"offset1":0.35,"offset2":0.8,"hitcount":0,"maxhit":false,"injuryType":4,"timer":0,"zone":4,"part":"Left Thigh","boneIndex":58271,"applied":false},{"offset1":0.45,"offset2":0.35,"hitcount":0,"maxhit":false,"injuryType":1,"timer":0,"zone":1,"part":"Mouth","boneIndex":47495,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":4,"part":"Left Foot","boneIndex":14201,"applied":false},{"offset1":0.35,"offset2":0.55,"hitcount":0,"maxhit":false,"injuryType":4,"timer":0,"zone":4,"part":"Left Knee","boneIndex":46078,"applied":false},{"offset1":0.35,"offset2":0.8,"hitcount":0,"maxhit":false,"injuryType":4,"timer":0,"zone":5,"part":"Right Thigh","boneIndex":51826,"applied":false},{"offset1":0.25,"offset2":0.35,"hitcount":0,"maxhit":false,"injuryType":5,"timer":0,"zone":0,"part":"Spine Lower","boneIndex":24816,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":5,"part":"Right Foot","boneIndex":52301,"applied":false},{"offset1":0.35,"offset2":0.55,"hitcount":0,"maxhit":false,"injuryType":4,"timer":0,"zone":5,"part":"Right Knee","boneIndex":16335,"applied":false},{"offset1":0.25,"offset2":0.55,"hitcount":0,"maxhit":false,"injuryType":5,"timer":0,"zone":0,"part":"Spine Mid","boneIndex":24817,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":2,"part":"Left Hand","boneIndex":60309,"applied":false},{"offset1":0.35,"offset2":0.75,"hitcount":0,"maxhit":false,"injuryType":3,"timer":0,"zone":2,"part":"Left Elbow","boneIndex":22711,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":3,"part":"Right Hand","boneIndex":57005,"applied":false},{"offset1":0.35,"offset2":0.75,"hitcount":0,"maxhit":false,"injuryType":3,"timer":0,"zone":3,"part":"Right Elbow","boneIndex":2992,"applied":false},{"offset1":0.25,"offset2":0.95,"hitcount":0,"maxhit":false,"injuryType":5,"timer":0,"zone":0,"part":"Neck","boneIndex":39317,"applied":false},{"offset1":0.35,"offset2":0.75,"hitcount":0,"maxhit":false,"injuryType":2,"timer":0,"zone":1,"part":"Head","boneIndex":31086,"applied":false},{"offset1":0.25,"offset2":0.85,"hitcount":0,"maxhit":false,"injuryType":5,"timer":0,"zone":0,"part":"Spine High","boneIndex":24818,"applied":false},{"offset1":0.15,"offset2":0.75,"hitcount":0,"maxhit":false,"injuryType":3,"timer":0,"zone":0,"part":"Left Clavicle","boneIndex":64729,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Pinky","boneIndex":26610,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Index","boneIndex":26611,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Middle","boneIndex":26612,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Ring","boneIndex":26613,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Thumb","boneIndex":26614,"applied":false},{"offset1":0.35,"offset2":0.75,"hitcount":0,"maxhit":false,"injuryType":3,"timer":0,"zone":0,"part":"Right Clavicle","boneIndex":10706,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Pinky","boneIndex":58866,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Index","boneIndex":58867,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Middle","boneIndex":58868,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Ring","boneIndex":58869,"applied":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Thumb","boneIndex":58870,"applied":false},{"offset1":0.55,"offset2":0.45,"hitcount":0,"maxhit":false,"injuryType":1,"timer":0,"zone":1,"part":"Face Left CheekBone","boneIndex":21550,"applied":false},{"offset1":0.35,"offset2":0.45,"hitcount":0,"maxhit":false,"injuryType":1,"timer":0,"zone":1,"part":"Face Right CheekBone","boneIndex":19336,"applied":false},{"offset1":0.45,"offset2":0.75,"hitcount":0,"maxhit":false,"injuryType":2,"timer":0,"zone":1,"part":"Forehead","boneIndex":37193,"applied":false},{"offset1":0.45,"offset2":0.35,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":1,"part":"Face UpperLip","boneIndex":61839,"applied":false},{"offset1":0.45,"offset2":0.35,"hitcount":0,"maxhit":true,"injuryType":1,"timer":0,"zone":1,"part":"Face LowerLip","boneIndex":20623,"applied":false}]', '[{"key":[289],"anim":""},{"key":[170],"anim":"handsup"},{"key":[166],"anim":""},{"key":[167],"anim":""},{"key":[168],"anim":""},{"key":[56],"anim":""},{"key":[57],"anim":""},{"key":[289,21],"anim":""},{"key":[170,21],"anim":""},{"key":[166,21],"anim":""},{"key":[167,21],"anim":""},{"key":[168,21],"anim":""},{"key":[56,21],"anim":""},{"key":[57,21],"anim":""}]', 14458, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '15', '0', '0', '0', 41588518, NULL, NULL, 'Dick Bigmum'),
	(20, 'steam:11000013d2c1be8', 'COREY', 'JACKSON', '2022-09-07 23:05:27', '1997-11-03', 2147481700, 822, '1885986328', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":94,"health":200,"thirst":94}', 0, '[{"offset1":0.35,"offset2":0.35,"hitcount":0,"applied":false,"injuryType":4,"timer":0,"zone":0,"part":"Pelvis","boneIndex":11816,"maxhit":false},{"offset1":0.35,"offset2":0.8,"hitcount":0,"applied":false,"injuryType":4,"timer":0,"zone":4,"part":"Left Thigh","boneIndex":58271,"maxhit":false},{"offset1":0.45,"offset2":0.35,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":1,"part":"Mouth","boneIndex":47495,"maxhit":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":4,"part":"Left Foot","boneIndex":14201,"maxhit":true},{"offset1":0.35,"offset2":0.55,"hitcount":0,"applied":false,"injuryType":4,"timer":0,"zone":4,"part":"Left Knee","boneIndex":46078,"maxhit":false},{"offset1":0.35,"offset2":0.8,"hitcount":0,"applied":false,"injuryType":4,"timer":0,"zone":5,"part":"Right Thigh","boneIndex":51826,"maxhit":false},{"offset1":0.25,"offset2":0.35,"hitcount":0,"applied":false,"injuryType":5,"timer":0,"zone":0,"part":"Spine Lower","boneIndex":24816,"maxhit":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":5,"part":"Right Foot","boneIndex":52301,"maxhit":true},{"offset1":0.35,"offset2":0.55,"hitcount":0,"applied":false,"injuryType":4,"timer":0,"zone":5,"part":"Right Knee","boneIndex":16335,"maxhit":false},{"offset1":0.25,"offset2":0.55,"hitcount":0,"applied":false,"injuryType":5,"timer":0,"zone":0,"part":"Spine Mid","boneIndex":24817,"maxhit":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":2,"part":"Left Hand","boneIndex":60309,"maxhit":true},{"offset1":0.35,"offset2":0.75,"hitcount":0,"applied":false,"injuryType":3,"timer":0,"zone":2,"part":"Left Elbow","boneIndex":22711,"maxhit":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":3,"part":"Right Hand","boneIndex":57005,"maxhit":true},{"offset1":0.35,"offset2":0.75,"hitcount":0,"applied":false,"injuryType":3,"timer":0,"zone":3,"part":"Right Elbow","boneIndex":2992,"maxhit":false},{"offset1":0.25,"offset2":0.95,"hitcount":0,"applied":false,"injuryType":5,"timer":0,"zone":0,"part":"Neck","boneIndex":39317,"maxhit":false},{"offset1":0.35,"offset2":0.75,"hitcount":0,"applied":false,"injuryType":2,"timer":0,"zone":1,"part":"Head","boneIndex":31086,"maxhit":false},{"offset1":0.25,"offset2":0.85,"hitcount":0,"applied":false,"injuryType":5,"timer":0,"zone":0,"part":"Spine High","boneIndex":24818,"maxhit":false},{"offset1":0.15,"offset2":0.75,"hitcount":0,"applied":false,"injuryType":3,"timer":0,"zone":0,"part":"Left Clavicle","boneIndex":64729,"maxhit":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Pinky","boneIndex":26610,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Index","boneIndex":26611,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Middle","boneIndex":26612,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Ring","boneIndex":26613,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":2,"part":"Left Finger Thumb","boneIndex":26614,"maxhit":true},{"offset1":0.35,"offset2":0.75,"hitcount":0,"applied":false,"injuryType":3,"timer":0,"zone":0,"part":"Right Clavicle","boneIndex":10706,"maxhit":false},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Pinky","boneIndex":58866,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Index","boneIndex":58867,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Middle","boneIndex":58868,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Ring","boneIndex":58869,"maxhit":true},{"offset1":0.35,"offset2":0.2,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":3,"part":"Right Finger Thumb","boneIndex":58870,"maxhit":true},{"offset1":0.55,"offset2":0.45,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":1,"part":"Face Left CheekBone","boneIndex":21550,"maxhit":false},{"offset1":0.35,"offset2":0.45,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":1,"part":"Face Right CheekBone","boneIndex":19336,"maxhit":false},{"offset1":0.45,"offset2":0.75,"hitcount":0,"applied":false,"injuryType":2,"timer":0,"zone":1,"part":"Forehead","boneIndex":37193,"maxhit":false},{"offset1":0.45,"offset2":0.35,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":1,"part":"Face UpperLip","boneIndex":61839,"maxhit":true},{"offset1":0.45,"offset2":0.35,"hitcount":0,"applied":false,"injuryType":1,"timer":0,"zone":1,"part":"Face LowerLip","boneIndex":20623,"maxhit":true}]', '{}', 10500, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', 38512258, NULL, NULL, NULL),
	(21, 'steam:110000114d6833e', 'alex', 'johnson', '2022-09-07 01:16:36', '2000-01-01', 2147423647, 4628, '4277343750', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"hunger":47,"thirst":49,"health":200,"armour":0}', 0, '{}', '{}', 1900, NULL, 0, '"move_m@casual@b"', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL),
	(22, 'steam:110000115378acb', 'Justin', 'Martin', '2022-08-25 22:53:14', '1999-02-23', 1994687, 5000, '4835205078', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":49,"health":199,"hunger":48,"armour":0}', 30, '{}', '{}', 900, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL),
	(23, 'steam:110000107aff8a1', 'Clothing', 'Test', '2022-08-25 20:46:49', '1995-01-01', 500, 5000, '8826904296', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":89,"health":200,"hunger":86,"armour":0}', 0, '{}', '{}', 0, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL),
	(24, 'steam:110000115e1cbd0', 'Bing', 'Bong', '2022-09-06 02:55:05', '2000-01-12', 1359, 4000, '7556762695', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"thirst":82,"hunger":83,"health":178,"armour":0}', 0, '[{"applied":false,"maxhit":false,"boneIndex":11816,"offset2":0.35,"offset1":0.35,"part":"Pelvis","timer":0,"injuryType":4,"zone":0,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":58271,"offset2":0.8,"offset1":0.35,"part":"Left Thigh","timer":0,"injuryType":4,"zone":4,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":47495,"offset2":0.35,"offset1":0.45,"part":"Mouth","timer":0,"injuryType":1,"zone":1,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":14201,"offset2":0.2,"offset1":0.35,"part":"Left Foot","timer":0,"injuryType":1,"zone":4,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":46078,"offset2":0.55,"offset1":0.35,"part":"Left Knee","timer":0,"injuryType":4,"zone":4,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":51826,"offset2":0.8,"offset1":0.35,"part":"Right Thigh","timer":0,"injuryType":4,"zone":5,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":24816,"offset2":0.35,"offset1":0.25,"part":"Spine Lower","timer":0,"injuryType":5,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":52301,"offset2":0.2,"offset1":0.35,"part":"Right Foot","timer":0,"injuryType":1,"zone":5,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":16335,"offset2":0.55,"offset1":0.35,"part":"Right Knee","timer":0,"injuryType":4,"zone":5,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":24817,"offset2":0.55,"offset1":0.25,"part":"Spine Mid","timer":0,"injuryType":5,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":60309,"offset2":0.2,"offset1":0.35,"part":"Left Hand","timer":0,"injuryType":1,"zone":2,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":22711,"offset2":0.75,"offset1":0.35,"part":"Left Elbow","timer":0,"injuryType":3,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":57005,"offset2":0.2,"offset1":0.35,"part":"Right Hand","timer":0,"injuryType":1,"zone":3,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":2992,"offset2":0.75,"offset1":0.35,"part":"Right Elbow","timer":0,"injuryType":3,"zone":3,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":39317,"offset2":0.95,"offset1":0.25,"part":"Neck","timer":0,"injuryType":5,"zone":0,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":31086,"offset2":0.75,"offset1":0.35,"part":"Head","timer":0,"injuryType":2,"zone":1,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":24818,"offset2":0.85,"offset1":0.25,"part":"Spine High","timer":0,"injuryType":5,"zone":0,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":64729,"offset2":0.75,"offset1":0.15,"part":"Left Clavicle","timer":0,"injuryType":3,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":26610,"offset2":0.2,"offset1":0.35,"part":"Left Finger Pinky","timer":0,"injuryType":1,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":26611,"offset2":0.2,"offset1":0.35,"part":"Left Finger Index","timer":0,"injuryType":1,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":26612,"offset2":0.2,"offset1":0.35,"part":"Left Finger Middle","timer":0,"injuryType":1,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":26613,"offset2":0.2,"offset1":0.35,"part":"Left Finger Ring","timer":0,"injuryType":1,"zone":2,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":26614,"offset2":0.2,"offset1":0.35,"part":"Left Finger Thumb","timer":0,"injuryType":1,"zone":2,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":10706,"offset2":0.75,"offset1":0.35,"part":"Right Clavicle","timer":0,"injuryType":3,"zone":0,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":58866,"offset2":0.2,"offset1":0.35,"part":"Right Finger Pinky","timer":0,"injuryType":1,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":58867,"offset2":0.2,"offset1":0.35,"part":"Right Finger Index","timer":0,"injuryType":1,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":58868,"offset2":0.2,"offset1":0.35,"part":"Right Finger Middle","timer":0,"injuryType":1,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":58869,"offset2":0.2,"offset1":0.35,"part":"Right Finger Ring","timer":0,"injuryType":1,"zone":3,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":58870,"offset2":0.2,"offset1":0.35,"part":"Right Finger Thumb","timer":0,"injuryType":1,"zone":3,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":21550,"offset2":0.45,"offset1":0.55,"part":"Face Left CheekBone","timer":0,"injuryType":1,"zone":1,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":19336,"offset2":0.45,"offset1":0.35,"part":"Face Right CheekBone","timer":0,"injuryType":1,"zone":1,"hitcount":0},{"applied":false,"maxhit":false,"boneIndex":37193,"offset2":0.75,"offset1":0.45,"part":"Forehead","timer":0,"injuryType":2,"zone":1,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":61839,"offset2":0.35,"offset1":0.45,"part":"Face UpperLip","timer":0,"injuryType":1,"zone":1,"hitcount":0},{"applied":false,"maxhit":true,"boneIndex":20623,"offset2":0.35,"offset1":0.45,"part":"Face LowerLip","timer":0,"injuryType":1,"zone":1,"hitcount":0}]', '{}', 200, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', 64452842, NULL, NULL, NULL),
	(25, 'steam:11000014b776579', 'Gravy', 'Granual', '2022-09-07 23:07:29', '1944-12-10', 500, 4376, '4946289062', 'Default story - new char system', 1, 0, 0, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":74,"health":0,"thirst":69}', 0, '{}', '{}', 1100, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL),
	(28, 'steam:110000153e56be0', 'Lauren', 'Mae', '2022-09-07 22:58:54', '2000-02-25', 500, 5000, '6358947753', 'Default story - new char system', 1, 0, 1, 'unemployed', 0, 0, 0, 00000000000, 0, 0, '{"armour":0,"hunger":87,"health":200,"thirst":90}', 0, '[{"timer":0,"injuryType":4,"maxhit":false,"zone":0,"offset2":0.35,"hitcount":0,"applied":false,"boneIndex":11816,"offset1":0.35,"part":"Pelvis"},{"timer":0,"injuryType":4,"maxhit":false,"zone":4,"offset2":0.8,"hitcount":0,"applied":false,"boneIndex":58271,"offset1":0.35,"part":"Left Thigh"},{"timer":0,"injuryType":1,"maxhit":false,"zone":1,"offset2":0.35,"hitcount":0,"applied":false,"boneIndex":47495,"offset1":0.45,"part":"Mouth"},{"timer":0,"injuryType":1,"maxhit":true,"zone":4,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":14201,"offset1":0.35,"part":"Left Foot"},{"timer":0,"injuryType":4,"maxhit":false,"zone":4,"offset2":0.55,"hitcount":0,"applied":false,"boneIndex":46078,"offset1":0.35,"part":"Left Knee"},{"timer":0,"injuryType":4,"maxhit":false,"zone":5,"offset2":0.8,"hitcount":0,"applied":false,"boneIndex":51826,"offset1":0.35,"part":"Right Thigh"},{"timer":0,"injuryType":5,"maxhit":false,"zone":0,"offset2":0.35,"hitcount":0,"applied":false,"boneIndex":24816,"offset1":0.25,"part":"Spine Lower"},{"timer":0,"injuryType":1,"maxhit":true,"zone":5,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":52301,"offset1":0.35,"part":"Right Foot"},{"timer":0,"injuryType":4,"maxhit":false,"zone":5,"offset2":0.55,"hitcount":0,"applied":false,"boneIndex":16335,"offset1":0.35,"part":"Right Knee"},{"timer":0,"injuryType":5,"maxhit":false,"zone":0,"offset2":0.55,"hitcount":0,"applied":false,"boneIndex":24817,"offset1":0.25,"part":"Spine Mid"},{"timer":0,"injuryType":1,"maxhit":true,"zone":2,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":60309,"offset1":0.35,"part":"Left Hand"},{"timer":0,"injuryType":3,"maxhit":false,"zone":2,"offset2":0.75,"hitcount":0,"applied":false,"boneIndex":22711,"offset1":0.35,"part":"Left Elbow"},{"timer":0,"injuryType":1,"maxhit":true,"zone":3,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":57005,"offset1":0.35,"part":"Right Hand"},{"timer":0,"injuryType":3,"maxhit":false,"zone":3,"offset2":0.75,"hitcount":0,"applied":false,"boneIndex":2992,"offset1":0.35,"part":"Right Elbow"},{"timer":0,"injuryType":5,"maxhit":false,"zone":0,"offset2":0.95,"hitcount":0,"applied":false,"boneIndex":39317,"offset1":0.25,"part":"Neck"},{"timer":0,"injuryType":2,"maxhit":false,"zone":1,"offset2":0.75,"hitcount":0,"applied":false,"boneIndex":31086,"offset1":0.35,"part":"Head"},{"timer":0,"injuryType":5,"maxhit":false,"zone":0,"offset2":0.85,"hitcount":0,"applied":false,"boneIndex":24818,"offset1":0.25,"part":"Spine High"},{"timer":0,"injuryType":3,"maxhit":false,"zone":0,"offset2":0.75,"hitcount":0,"applied":false,"boneIndex":64729,"offset1":0.15,"part":"Left Clavicle"},{"timer":0,"injuryType":1,"maxhit":true,"zone":2,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":26610,"offset1":0.35,"part":"Left Finger Pinky"},{"timer":0,"injuryType":1,"maxhit":true,"zone":2,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":26611,"offset1":0.35,"part":"Left Finger Index"},{"timer":0,"injuryType":1,"maxhit":true,"zone":2,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":26612,"offset1":0.35,"part":"Left Finger Middle"},{"timer":0,"injuryType":1,"maxhit":true,"zone":2,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":26613,"offset1":0.35,"part":"Left Finger Ring"},{"timer":0,"injuryType":1,"maxhit":true,"zone":2,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":26614,"offset1":0.35,"part":"Left Finger Thumb"},{"timer":0,"injuryType":3,"maxhit":false,"zone":0,"offset2":0.75,"hitcount":0,"applied":false,"boneIndex":10706,"offset1":0.35,"part":"Right Clavicle"},{"timer":0,"injuryType":1,"maxhit":true,"zone":3,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":58866,"offset1":0.35,"part":"Right Finger Pinky"},{"timer":0,"injuryType":1,"maxhit":true,"zone":3,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":58867,"offset1":0.35,"part":"Right Finger Index"},{"timer":0,"injuryType":1,"maxhit":true,"zone":3,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":58868,"offset1":0.35,"part":"Right Finger Middle"},{"timer":0,"injuryType":1,"maxhit":true,"zone":3,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":58869,"offset1":0.35,"part":"Right Finger Ring"},{"timer":0,"injuryType":1,"maxhit":true,"zone":3,"offset2":0.2,"hitcount":0,"applied":false,"boneIndex":58870,"offset1":0.35,"part":"Right Finger Thumb"},{"timer":0,"injuryType":1,"maxhit":false,"zone":1,"offset2":0.45,"hitcount":0,"applied":false,"boneIndex":21550,"offset1":0.55,"part":"Face Left CheekBone"},{"timer":0,"injuryType":1,"maxhit":false,"zone":1,"offset2":0.45,"hitcount":0,"applied":false,"boneIndex":19336,"offset1":0.35,"part":"Face Right CheekBone"},{"timer":0,"injuryType":2,"maxhit":false,"zone":1,"offset2":0.75,"hitcount":0,"applied":false,"boneIndex":37193,"offset1":0.45,"part":"Forehead"},{"timer":0,"injuryType":1,"maxhit":true,"zone":1,"offset2":0.35,"hitcount":0,"applied":false,"boneIndex":61839,"offset1":0.45,"part":"Face UpperLip"},{"timer":0,"injuryType":1,"maxhit":true,"zone":1,"offset2":0.35,"hitcount":0,"applied":false,"boneIndex":20623,"offset1":0.45,"part":"Face LowerLip"}]', '{}', 600, NULL, 0, 'move_m@casual@d', '{}', NULL, NULL, NULL, NULL, NULL, NULL, '[{"license":"Weapon","issuedDate":"","issuedBy":"","issued":0},{"license":"Hunting","issuedDate":"","issuedBy":"","issued":0},{"license":"Business","issuedDate":"","issuedBy":"","issued":0},{"license":"Drivers","issuedDate":"","issuedBy":"","issued":1},{"license":"Fishing","issuedDate":"","issuedBy":"","issued":0},{"license":"Bar","issuedDate":"","issuedBy":"","issued":0},{"license":"Pilot","issuedDate":"","issuedBy":"","issued":0}]', '0', '0', '0', '0', NULL, NULL, NULL, NULL);

-- Dumping structure for table qpixel.characters_cars
CREATE TABLE IF NOT EXISTS `characters_cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_name` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `purchase_price` float DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `wheelfitment` longtext NOT NULL DEFAULT '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}',
  `vehicle_state` text DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `name` varchar(50) DEFAULT NULL,
  `engine_damage` bigint(19) DEFAULT 1000,
  `body_damage` bigint(20) DEFAULT 1000,
  `degredation` longtext DEFAULT '100,100,100,100,100,100,100,100',
  `current_garage` varchar(50) DEFAULT NULL,
  `server_number` varchar(50) DEFAULT NULL,
  `vin` varchar(50) DEFAULT '0',
  `financed` int(11) DEFAULT 0,
  `isfinanced` int(11) DEFAULT 0,
  `isTuner` int(11) DEFAULT 0,
  `last_payment` int(11) DEFAULT 0,
  `phone_number` text DEFAULT NULL,
  `coords` varchar(255) DEFAULT NULL,
  `license_plate` varchar(255) NOT NULL DEFAULT '',
  `harness` varchar(50) DEFAULT '0',
  `nitrous` varchar(50) DEFAULT '0',
  `payments_left` int(3) DEFAULT 0,
  `StrikeTime` int(3) DEFAULT 0,
  `strikes` int(3) DEFAULT 0,
  `vehiclepic` varchar(255) DEFAULT NULL,
  `information` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.characters_cars: ~16 rows (approximately)
INSERT INTO `characters_cars` (`id`, `character_name`, `cid`, `purchase_price`, `model`, `data`, `wheelfitment`, `vehicle_state`, `fuel`, `name`, `engine_damage`, `body_damage`, `degredation`, `current_garage`, `server_number`, `vin`, `financed`, `isfinanced`, `isTuner`, `last_payment`, `phone_number`, `coords`, `license_plate`, `harness`, `nitrous`, `payments_left`, `StrikeTime`, `strikes`, `vehiclepic`, `information`) VALUES
	(1, NULL, 19, 0, 'npolvic', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 969, '100,100,100,100,100,100,100,100', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[449.7034606933594,-976.3754272460938,25.50924682617187]', '61EVX817', '0', '0', 0, 0, 0, NULL, NULL),
	(2, NULL, 19, 0, 'npolvic', '{"extracolors":[0,0],"tint":1,"extras":[1,1,1,0,1,1,1,0,0,0,0,0],"interColour":111,"lights":[255,0,255],"mods":{"1":2,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":4,"9":1,"10":-1,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":0,"33":-1,"34":-1,"35":-1,"36":-1,"37":1,"38":-1,"39":-1,"40":-1,"41":-1,"42":1,"43":1,"44":1,"45":7,"46":0,"47":-1,"48":4,"0":0},"xenonColor":255,"platestyle":4,"wheeltype":1,"plateIndex":4,"colors":[62,62],"oldLiveries":-1,"neon":{"1":false,"2":false,"3":false,"0":false},"smokecolor":[255,255,255],"dashColour":111}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 65, 'npolvic', 1000, 998, '97,98,95,99,98,100,98,99', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[259.097412109375,-1255.7926025390626,28.95140838623047]', '08PEF007', '0', '0', 0, 0, 0, NULL, NULL),
	(3, NULL, 19, 115000, 'gauntlet', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'GAUNTLET', 999, 988, '100,99,98,100,100,100,99,100', 'C', NULL, '0', 0, 0, 0, 0, NULL, '[408.20159912109377,-988.4990234375,28.84905433654785]', '66QVX893', '0', '0', 0, 0, 0, NULL, NULL),
	(4, NULL, 20, 0, 'npolchar', '{"xenonColor":255,"neon":{"1":false,"2":false,"3":false,"0":false},"extracolors":[0,0],"tint":1,"colors":[112,112],"mods":{"1":1,"2":-1,"3":-1,"4":0,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":0,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":4,"43":-1,"44":6,"45":-1,"46":1,"47":-1,"48":5,"0":2},"wheeltype":0,"smokecolor":[255,255,255],"interColour":0,"extras":[1,0,0,0,0,0,0,0,0,0,0,0],"dashColour":0,"oldLiveries":-1,"lights":[255,0,255],"plateIndex":4,"platestyle":4}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 65, 'npolchar', 0, 0, '100,100,100,100,97,100,100,100', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[501.9349670410156,-1788.7054443359376,27.92920875549316]', '43CQK650', '0', '0', 0, 0, 0, NULL, NULL),
	(6, NULL, 19, 126500, 'schwarzer', '{"mods":{"1":2,"2":0,"3":1,"4":2,"5":0,"6":-1,"7":0,"8":-1,"9":-1,"10":0,"11":-1,"12":-1,"13":-1,"14":0,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":1,"23":48,"24":-1,"25":-1,"26":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":-1,"0":-1},"wheeltype":0,"smokecolor":[255,255,255],"neon":{"1":false,"2":false,"3":false,"0":false},"xenonColor":1,"dashColour":0,"tint":1,"extracolors":[0,156],"plateIndex":1,"interColour":0,"oldLiveries":0,"extras":[0,0,0,0,0,0,0,0,0,1,0,0],"lights":[255,0,255],"colors":[111,111],"platestyle":1}', '{"fr":0.83096200227737, "fl":-0.83096200227737, "width":0.62000000476837, "rl":-0.82096201181412, "rr":0.82096201181412}', 'In', 0, 'SCHWARZE', 1000, 1000, '99,99,98,100,100,100,99,100', 'T', NULL, '0', 0, 0, 0, 0, NULL, '[306.6771240234375,712.9359130859375,174.9308624267578]', '97LJL149', '0', '0', 0, 0, 0, NULL, NULL),
	(7, NULL, 19, 0, 'npolchar', '{"smokecolor":[255,255,255],"wheeltype":0,"dashColour":0,"colors":[3,3],"mods":{"1":1,"2":-1,"3":-1,"4":0,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":0,"11":4,"12":-1,"13":-1,"14":-1,"15":2,"16":-1,"17":false,"18":1,"19":false,"20":false,"21":false,"22":false,"23":23,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":1,"43":-1,"44":0,"45":1,"46":-1,"47":-1,"48":2,"0":2},"interColour":111,"extras":[1,1,1,1,1,1,0,0,0,0,0,0],"xenonColor":255,"platestyle":3,"neon":{"1":false,"2":false,"3":false,"0":false},"extracolors":[0,0],"lights":[255,0,255],"oldLiveries":-1,"tint":1,"plateIndex":3}', '{"fr":0.77835917472839, "fl":-0.77999997138977, "width":0.66000002622604, "rl":-0.80000001192093, "rr":0.80000001192093}', 'In', 98, 'npolchar', 1000, 989, '74,74,79,85,84,81,87,82', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[447.01617431640627,-991.3092651367188,25.17827033996582]', '61URS848', NULL, '0', 0, 0, 0, 'https://i.imgur.com/Jo16ydR.png', 'NO IT DOESNT'),
	(8, NULL, 16, 0, 'npolchar', '{"extracolors":[0,0],"oldLiveries":-1,"lights":[255,0,255],"xenonColor":0,"plateIndex":3,"platestyle":3,"extras":[1,0,0,1,1,1,1,0,0,0,0,0],"tint":3,"wheeltype":0,"mods":{"1":1,"2":-1,"3":-1,"4":0,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":0,"11":4,"12":2,"13":3,"14":-1,"15":2,"16":-1,"17":false,"18":1,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":5,"0":2},"dashColour":111,"smokecolor":[255,255,255],"neon":{"1":false,"2":false,"3":false,"0":false},"colors":[147,147],"interColour":111}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolchar', 803, 578, '71,79,84,81,83,78,80,73', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[505.8246765136719,-1785.7376708984376,27.97820663452148]', '60TON401', '0', '0', 0, 0, 0, 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 'FIND AND SEIZE'),
	(9, NULL, 19, 0, 'npolvic', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 988, '100,98,100,99,97,99,99,100', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[446.0555419921875,-991.5831909179688,25.5086555480957]', '48QCS868', '0', '0', 0, 0, 0, NULL, NULL),
	(10, NULL, 20, 0, 'npolchar', '{"smokecolor":[255,255,255],"wheeltype":0,"dashColour":0,"colors":[112,112],"interColour":0,"tint":1,"extras":[1,0,0,0,0,0,0,0,0,0,0,0],"mods":{"1":1,"2":-1,"3":-1,"4":0,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":0,"11":4,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":1,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":1,"43":-1,"44":2,"45":1,"46":-1,"47":-1,"48":5,"0":2},"platestyle":4,"neon":{"1":false,"2":false,"3":false,"0":false},"extracolors":[0,0],"lights":[255,0,255],"oldLiveries":-1,"xenonColor":255,"plateIndex":4}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolchar', 803, 835, '81,90,89,86,84,86,88,86', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[414.2146301269531,-976.6171264648438,28.92516708374023]', '63NQH546', '0', '0', 0, 0, 0, NULL, NULL),
	(11, NULL, 19, 0, 'npolexp', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 100, 'npolexp', 1000, 1000, '100,100,100,100,100,100,100,100', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[0.0,0.0,0.0]', '63LBW914', '0', '0', 0, 0, 0, NULL, NULL),
	(12, NULL, 19, 0, 'npolchal', '{"colors":[11,11],"lights":[255,0,255],"neon":{"1":false,"2":false,"3":false,"0":false},"extracolors":[66,0],"oldLiveries":-1,"tint":1,"interColour":111,"dashColour":111,"wheeltype":7,"platestyle":4,"smokecolor":[255,255,255],"extras":[1,0,0,1,1,1,0,0,0,0,0,0],"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":1,"6":0,"7":-1,"8":1,"9":0,"10":0,"11":-1,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":1,"38":-1,"39":-1,"40":-1,"41":-1,"42":1,"43":0,"44":0,"45":1,"46":-1,"47":-1,"48":3,"0":0},"xenonColor":255,"plateIndex":4}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolchal', 1000, 1000, '88,82,83,84,89,84,76,88', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[407.736328125,-988.7761840820313,28.54542732238769]', '86OVF134', '0', '0', 0, 0, 0, NULL, NULL),
	(13, NULL, 16, 0, 'npolstang', '{"neon":{"1":false,"2":false,"3":false,"0":false},"plateIndex":4,"colors":[0,0],"xenonColor":255,"wheeltype":7,"mods":{"1":3,"2":1,"3":2,"4":-1,"5":1,"6":0,"7":4,"8":-1,"9":0,"10":0,"11":4,"12":-1,"13":-1,"14":-1,"15":-1,"16":-1,"17":false,"18":false,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":0,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":3,"0":1},"extracolors":[0,0],"dashColour":111,"oldLiveries":-1,"extras":[1,0,0,1,1,1,0,0,0,0,0,0],"platestyle":4,"interColour":111,"smokecolor":[255,255,255],"lights":[255,255,255],"tint":3}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 72, 'npolstang', 994, 937, '96,100,99,99,100,100,99,98', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[437.35009765625,-988.7039794921875,24.98998260498047]', '29SNK043', '0', '0', 0, 0, 0, NULL, NULL),
	(14, NULL, 16, 0, 'npolvic', '{"extracolors":[0,0],"oldLiveries":-1,"lights":[255,255,255],"xenonColor":0,"plateIndex":4,"platestyle":4,"extras":[0,0,0,1,1,1,1,0,0,0,0,0],"tint":3,"wheeltype":1,"mods":{"1":2,"2":-1,"3":-1,"4":-1,"5":1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":4,"12":2,"13":3,"14":-1,"15":-1,"16":-1,"17":false,"18":1,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":0,"29":0,"30":0,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":2,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":-1,"0":1},"dashColour":111,"smokecolor":[255,255,255],"neon":{"1":false,"2":false,"3":false,"0":false},"colors":[0,0],"interColour":111}', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolvic', 1000, 1000, '100,100,100,100,98,100,100,100', 'Police Department', NULL, '0', 0, 0, 0, 0, NULL, '[446.5625305175781,-996.68017578125,25.50805282592773]', '41ZFZ240', '0', '0', 0, 0, 0, NULL, NULL),
	(15, NULL, 21, 0, 'npolchar', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 65, 'npolchar', 814, 379, '100,100,100,100,100,100,100,99', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[407.8503723144531,-999.0048217773438,28.74463844299316]', '86NKC297', '0', '0', 0, 0, 0, NULL, NULL),
	(16, NULL, 21, 0, 'npolchal', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 0, 'npolchal', 1000, 1000, '100,100,100,100,100,100,100,100', 'Police Personal', NULL, '0', 0, 0, 0, 0, NULL, '[408.1043701171875,-984.5014038085938,28.54619979858398]', '27VXN699', '0', '0', 0, 0, 0, NULL, NULL),
	(17, NULL, 21, 0, 'npolstang', 'null', '{"fr":0.71801799535751, "fl":-0.72000002861023, "width":1.0, "rl":-0.71801799535751, "rr":0.71801799535751}', 'In', 74, 'npolstang', 1000, 1000, '100,100,100,100,99,100,100,100', 'Police Shared', NULL, '0', 0, 0, 0, 0, NULL, '[449.598388671875,-983.1567993164063,24.98724746704101]', '80ZQX781', '0', '0', 0, 0, 0, NULL, NULL);

-- Dumping structure for table qpixel.characters_clothes
CREATE TABLE IF NOT EXISTS `characters_clothes` (
  `cid` int(11) DEFAULT NULL,
  `assExist` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.characters_clothes: ~0 rows (approximately)

-- Dumping structure for table qpixel.characters_gangs
CREATE TABLE IF NOT EXISTS `characters_gangs` (
  `owner` varchar(50) NOT NULL,
  `cid` int(11) NOT NULL,
  `gang` varchar(50) DEFAULT 'none',
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.characters_gangs: ~0 rows (approximately)

-- Dumping structure for table qpixel.characters_houses
CREATE TABLE IF NOT EXISTS `characters_houses` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT '[]',
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL,
  `owned` varchar(50) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `hasgarage` varchar(50) DEFAULT 'false',
  `garage` varchar(200) DEFAULT '[]',
  `keyholders` text DEFAULT NULL,
  `decorations` longtext DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.characters_houses: 0 rows
/*!40000 ALTER TABLE `characters_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_houses` ENABLE KEYS */;

-- Dumping structure for table qpixel.characters_house_plants
CREATE TABLE IF NOT EXISTS `characters_house_plants` (
  `id` int(11) NOT NULL,
  `houseid` varchar(50) DEFAULT '11111',
  `plants` varchar(65000) DEFAULT '[]'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.characters_house_plants: 0 rows
/*!40000 ALTER TABLE `characters_house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters_house_plants` ENABLE KEYS */;

-- Dumping structure for table qpixel.characters_weapons
CREATE TABLE IF NOT EXISTS `characters_weapons` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `ammo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.characters_weapons: ~15 rows (approximately)
INSERT INTO `characters_weapons` (`id`, `type`, `ammo`) VALUES
	(19, '357983224', 0),
	(16, '1285032059', 0),
	(16, '1820140472', 0),
	(16, '1446246869', 1),
	(16, '1003688881', 1),
	(22, '218444191', 0),
	(16, '2034517757', 0),
	(16, '1411692055', 0),
	(19, '-1575030772', 1),
	(20, '-1575030772', 3),
	(16, '1950175060', 134),
	(17, '1950175060', 0),
	(17, '1003688881', 0),
	(19, '1285032059', 12),
	(16, '-1575030772', 0);

-- Dumping structure for table qpixel.character_carkeys
CREATE TABLE IF NOT EXISTS `character_carkeys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `plate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_carkeys: ~0 rows (approximately)

-- Dumping structure for table qpixel.character_current
CREATE TABLE IF NOT EXISTS `character_current` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `drawables` mediumtext DEFAULT NULL,
  `props` mediumtext DEFAULT NULL,
  `drawtextures` mediumtext DEFAULT NULL,
  `proptextures` mediumtext DEFAULT NULL,
  `assExists` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_current: ~10 rows (approximately)
INSERT INTO `character_current` (`cid`, `model`, `drawables`, `props`, `drawtextures`, `proptextures`, `assExists`) VALUES
	(15, '1885233650', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["shirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["shirts",1],["vest",0],["decals",0],["jackets",1]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(19, '1885233650', '{"1":["masks",210],"2":["hair",55],"3":["torsos",4],"4":["legs",160],"5":["bags",-1],"6":["shoes",120],"7":["neck",167],"8":["undershirts",205],"9":["vest",-1],"10":["decals",137],"11":["jackets",413],"0":["face",0]}', '{"1":["glasses",8],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",2],["bags",0],["shoes",0],["neck",0],["undershirts",7],["vest",0],["decals",0],["jackets",2]]', '[["hats",-1],["glasses",1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(16, '1226102803', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(17, '-429715051', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(20, '1885233650', '{"1":["masks",0],"2":["hair",3],"3":["torsos",0],"4":["legs",4],"5":["bags",0],"6":["shoes",31],"7":["neck",0],"8":["undershirts",15],"9":["vest",0],"10":["decals",0],"11":["jackets",305],"0":["face",0]}', '{"1":["glasses",2],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",1],["torsos",0],["legs",0],["bags",0],["shoes",1],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",2]]', '[["hats",-1],["glasses",4],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(21, '1885233650', '{"1":["masks",0],"2":["hair",57],"3":["torsos",0],"4":["legs",103],"5":["bags",0],"6":["shoes",71],"7":["neck",0],"8":["undershirts",15],"9":["vest",0],"10":["decals",0],"11":["jackets",330],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(22, '225514697', '{"1":["masks",0],"2":["hair",0],"3":["torsos",6],"4":["legs",6],"5":["bags",0],"6":["shoes",-1],"7":["neck",0],"8":["undershirts",-1],"9":["vest",6],"10":["decals",5],"11":["jackets",-1],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",9]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(23, '1885233650', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(24, '-1686040670', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(25, '1165307954', '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL),
	(28, '-1667301416', '{"1":["masks",0],"2":["hair",64],"3":["torsos",0],"4":["legs",20],"5":["bags",0],"6":["shoes",77],"7":["neck",0],"8":["undershirts",2],"9":["vest",0],"10":["decals",0],"11":["jackets",443],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",2],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', NULL);

-- Dumping structure for table qpixel.character_face
CREATE TABLE IF NOT EXISTS `character_face` (
  `cid` int(11) DEFAULT NULL,
  `hairColor` mediumtext DEFAULT NULL,
  `headBlend` mediumtext DEFAULT NULL,
  `headOverlay` mediumtext DEFAULT NULL,
  `headStructure` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_face: ~10 rows (approximately)
INSERT INTO `character_face` (`cid`, `hairColor`, `headBlend`, `headOverlay`, `headStructure`) VALUES
	(15, '[1,1]', '{"shapeMix":0.0,"skinMix":1.0,"skinFirst":15,"thirdMix":0.0,"skinSecond":0,"shapeSecond":0,"hasParent":false,"shapeThird":0,"shapeFirst":0,"skinThird":0}', '[{"colourType":0,"name":"Blemishes","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":1,"name":"FacialHair","overlayOpacity":0.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":1,"name":"Eyebrows","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"Ageing","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":2,"name":"Makeup","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":2,"name":"Blush","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"Complexion","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"SunDamage","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":2,"name":"Lipstick","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"MolesFreckles","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":1,"name":"ChestHair","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"BodyBlemishes","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"AddBodyBlemishes","overlayOpacity":1.0,"firstColour":0,"secondColour":0,"overlayValue":255},{"name":"eyecolor","val":-1}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(19, '[1,1]', '{"skinFirst":15,"shapeFirst":16,"skinSecond":0,"hasParent":false,"shapeSecond":0,"skinMix":1.0,"shapeMix":0.0,"skinThird":0,"shapeThird":0,"thirdMix":0.0}', '[{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"Blemishes"},{"secondColour":0,"colourType":1,"overlayOpacity":1.0,"overlayValue":7,"firstColour":0,"name":"FacialHair"},{"secondColour":0,"colourType":1,"overlayOpacity":1.0,"overlayValue":2,"firstColour":0,"name":"Eyebrows"},{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"Ageing"},{"secondColour":0,"colourType":2,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"Makeup"},{"secondColour":0,"colourType":2,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"Blush"},{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"Complexion"},{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"SunDamage"},{"secondColour":0,"colourType":2,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"Lipstick"},{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"MolesFreckles"},{"secondColour":0,"colourType":1,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"ChestHair"},{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"BodyBlemishes"},{"secondColour":0,"colourType":0,"overlayOpacity":1.0,"overlayValue":255,"firstColour":0,"name":"AddBodyBlemishes"}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(16, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(17, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(20, '[61,61]', '{"shapeFirst":0,"thirdMix":0.0,"skinFirst":15,"skinSecond":0,"skinMix":1.0,"shapeMix":0.0,"skinThird":0,"shapeThird":0,"hasParent":false,"shapeSecond":0}', '[{"colourType":0,"name":"Blemishes","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":1,"name":"FacialHair","firstColour":61,"overlayOpacity":1.0,"secondColour":61,"overlayValue":11},{"colourType":1,"name":"Eyebrows","firstColour":61,"overlayOpacity":1.0,"secondColour":61,"overlayValue":255},{"colourType":0,"name":"Ageing","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":2,"name":"Makeup","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":2,"name":"Blush","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"Complexion","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"SunDamage","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":2,"name":"Lipstick","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"MolesFreckles","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":1,"name":"ChestHair","firstColour":61,"overlayOpacity":1.0,"secondColour":61,"overlayValue":255},{"colourType":0,"name":"BodyBlemishes","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255},{"colourType":0,"name":"AddBodyBlemishes","firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(21, '[4,21]', '{"shapeFirst":0,"thirdMix":0.0,"skinFirst":15,"skinMix":1.0,"skinSecond":0,"shapeSecond":0,"skinThird":0,"shapeMix":0.0,"hasParent":false,"shapeThird":0}', '[{"colourType":0,"name":"Blemishes","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":1,"name":"FacialHair","secondColour":0,"overlayOpacity":0.0,"firstColour":0,"overlayValue":255},{"colourType":1,"name":"Eyebrows","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":0,"name":"Ageing","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":2,"name":"Makeup","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":2,"name":"Blush","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":0,"name":"Complexion","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":0,"name":"SunDamage","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":2,"name":"Lipstick","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":0,"name":"MolesFreckles","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":1,"name":"ChestHair","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":0,"name":"BodyBlemishes","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255},{"colourType":0,"name":"AddBodyBlemishes","secondColour":0,"overlayOpacity":1.0,"firstColour":0,"overlayValue":255}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(22, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(23, '[1,1]', '{"skinFirst":15,"skinMix":1.0,"shapeThird":0,"shapeMix":0.0,"skinThird":0,"hasParent":false,"shapeSecond":0,"shapeFirst":2,"thirdMix":0.0,"skinSecond":0}', '[{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Blemishes","colourType":0},{"firstColour":0,"overlayOpacity":0.0,"secondColour":0,"overlayValue":255,"name":"FacialHair","colourType":1},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Eyebrows","colourType":1},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Ageing","colourType":0},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Makeup","colourType":2},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Blush","colourType":2},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Complexion","colourType":0},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"SunDamage","colourType":0},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"Lipstick","colourType":2},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"MolesFreckles","colourType":0},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"ChestHair","colourType":1},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"BodyBlemishes","colourType":0},{"firstColour":0,"overlayOpacity":1.0,"secondColour":0,"overlayValue":255,"name":"AddBodyBlemishes","colourType":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(24, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(25, '[-1,-1]', '[]', '[]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]'),
	(28, '[34,1]', '{"skinSecond":0,"thirdMix":0.0,"skinMix":1.0,"shapeMix":0.0,"shapeThird":0,"shapeFirst":0,"shapeSecond":0,"hasParent":false,"skinThird":0,"skinFirst":15}', '[{"overlayValue":255,"name":"Blemishes","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0},{"overlayValue":255,"name":"FacialHair","secondColour":0,"firstColour":0,"overlayOpacity":0.0,"colourType":1},{"overlayValue":255,"name":"Eyebrows","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":1},{"overlayValue":255,"name":"Ageing","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0},{"overlayValue":255,"name":"Makeup","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":2},{"overlayValue":255,"name":"Blush","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":2},{"overlayValue":255,"name":"Complexion","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0},{"overlayValue":255,"name":"SunDamage","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0},{"overlayValue":255,"name":"Lipstick","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":2},{"overlayValue":255,"name":"MolesFreckles","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0},{"overlayValue":255,"name":"ChestHair","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":1},{"overlayValue":255,"name":"BodyBlemishes","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0},{"overlayValue":255,"name":"AddBodyBlemishes","secondColour":0,"firstColour":0,"overlayOpacity":1.0,"colourType":0}]', '[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]');

-- Dumping structure for table qpixel.character_hospital_patients
CREATE TABLE IF NOT EXISTS `character_hospital_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `illness` varchar(50) NOT NULL DEFAULT 'none',
  `level` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_hospital_patients: ~0 rows (approximately)

-- Dumping structure for table qpixel.character_housing
CREATE TABLE IF NOT EXISTS `character_housing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `housing_id` int(11) NOT NULL,
  `Street` text NOT NULL,
  `assigned` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_housing: ~0 rows (approximately)

-- Dumping structure for table qpixel.character_housing_keys
CREATE TABLE IF NOT EXISTS `character_housing_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `housing_id` int(11) NOT NULL,
  `giver` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_housing_keys: ~0 rows (approximately)

-- Dumping structure for table qpixel.character_motel
CREATE TABLE IF NOT EXISTS `character_motel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `building_type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_motel: ~22 rows (approximately)
INSERT INTO `character_motel` (`id`, `cid`, `building_type`) VALUES
	(1, 15, 1),
	(2, 15, 1),
	(3, 19, 2),
	(4, 19, 2),
	(5, 16, 1),
	(6, 16, 1),
	(7, 17, 1),
	(8, 17, 1),
	(9, 20, 1),
	(10, 20, 1),
	(11, 21, 1),
	(12, 21, 1),
	(13, 22, 1),
	(14, 22, 1),
	(15, 23, 1),
	(16, 23, 1),
	(17, 24, 1),
	(18, 24, 1),
	(19, 25, 1),
	(20, 25, 1),
	(21, 28, 1),
	(22, 28, 1);

-- Dumping structure for table qpixel.character_outfits
CREATE TABLE IF NOT EXISTS `character_outfits` (
  `cid` int(11) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `drawables` text DEFAULT '{}',
  `props` text DEFAULT '{}',
  `drawtextures` text DEFAULT '{}',
  `proptextures` text DEFAULT '{}',
  `hairColor` text DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_outfits: ~2 rows (approximately)
INSERT INTO `character_outfits` (`cid`, `model`, `name`, `slot`, `drawables`, `props`, `drawtextures`, `proptextures`, `hairColor`) VALUES
	(19, '225514697', 'Very Nice', 1, '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",0],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",-1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",0],["neck",0],["undershirts",0],["vest",0],["decals",0],["jackets",0]]', '[["hats",-1],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[-1,-1]'),
	(23, '1885233650', 'dunce', 1, '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",1]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",11]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[1,1]'),
	(19, '1885233650', 'headphones', 2, '{"1":["masks",0],"2":["hair",0],"3":["torsos",0],"4":["legs",0],"5":["bags",0],"6":["shoes",1],"7":["neck",0],"8":["undershirts",0],"9":["vest",0],"10":["decals",0],"11":["jackets",0],"0":["face",0]}', '{"1":["glasses",-1],"2":["earrings",-1],"3":["mouth",-1],"4":["lhand",-1],"5":["rhand",-1],"6":["watches",-1],"7":["braclets",-1],"0":["hats",0]}', '[["face",0],["masks",0],["hair",0],["torsos",0],["legs",0],["bags",0],["shoes",2],["neck",0],["undershirts",1],["vest",0],["decals",0],["jackets",1]]', '[["hats",0],["glasses",-1],["earrings",-1],["mouth",-1],["lhand",-1],["rhand",-1],["watches",-1],["braclets",-1]]', '[1,1]');

-- Dumping structure for table qpixel.character_passes
CREATE TABLE IF NOT EXISTS `character_passes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 1,
  `name` text NOT NULL,
  `giver` text NOT NULL,
  `pass_type` text NOT NULL,
  `business_name` text NOT NULL,
  `bank` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_passes: ~0 rows (approximately)
INSERT INTO `character_passes` (`id`, `cid`, `rank`, `name`, `giver`, `pass_type`, `business_name`, `bank`) VALUES
	(1, 19, 5, 'UG Racing', '', 'ug_racing', 'ug_racing', 0);

-- Dumping structure for table qpixel.character_presets
CREATE TABLE IF NOT EXISTS `character_presets` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `drawables` mediumtext DEFAULT NULL,
  `props` mediumtext DEFAULT NULL,
  `drawtextures` mediumtext DEFAULT NULL,
  `proptextures` mediumtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.character_presets: ~0 rows (approximately)

-- Dumping structure for table qpixel.character_tattoos
CREATE TABLE IF NOT EXISTS `character_tattoos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.character_tattoos: ~416 rows (approximately)
INSERT INTO `character_tattoos` (`id`, `cid`, `tattoos`) VALUES
	(1, 19, '[]'),
	(2, 19, '[]'),
	(3, 19, '[]'),
	(4, 19, '[]'),
	(5, 19, '[]'),
	(6, 19, '[]'),
	(7, 16, '{}'),
	(8, 16, '{}'),
	(9, 17, '{}'),
	(10, 17, '{}'),
	(11, 19, '[]'),
	(12, 19, '[]'),
	(13, 19, '[]'),
	(14, 19, '[]'),
	(15, 19, '[]'),
	(16, 19, '[]'),
	(17, 20, '{}'),
	(18, 20, '{}'),
	(19, 19, '[]'),
	(20, 19, '[]'),
	(21, 21, '{}'),
	(22, 21, '{}'),
	(23, 19, '[]'),
	(24, 19, '[]'),
	(25, 16, '{}'),
	(26, 16, '{}'),
	(27, 16, '{}'),
	(28, 16, '{}'),
	(29, 19, '[]'),
	(30, 19, '[]'),
	(31, 19, '[]'),
	(32, 19, '[]'),
	(33, 16, '{}'),
	(34, 16, '{}'),
	(35, 22, '[]'),
	(36, 22, '[]'),
	(37, 16, '{}'),
	(38, 16, '{}'),
	(39, 22, '[]'),
	(40, 22, '[]'),
	(41, 19, '[]'),
	(42, 19, '[]'),
	(43, 19, '[]'),
	(44, 19, '[]'),
	(45, 19, '[]'),
	(46, 17, '{}'),
	(47, 17, '{}'),
	(48, 17, '{}'),
	(49, 17, '{}'),
	(50, 20, '{}'),
	(51, 20, '{}'),
	(52, 19, '[]'),
	(53, 19, '[]'),
	(54, 23, '{}'),
	(55, 23, '{}'),
	(56, 23, '{}'),
	(57, 23, '{}'),
	(58, 23, '{}'),
	(59, 23, '{}'),
	(60, 23, '{}'),
	(61, 23, '{}'),
	(62, 23, '{}'),
	(63, 23, '{}'),
	(64, 23, '{}'),
	(65, 23, '{}'),
	(66, 23, '{}'),
	(67, 20, '{}'),
	(68, 20, '{}'),
	(69, 16, '{}'),
	(70, 16, '{}'),
	(71, 16, '{}'),
	(72, 17, '{}'),
	(73, 17, '{}'),
	(74, 17, '{}'),
	(75, 19, '[]'),
	(76, 19, '[]'),
	(77, 19, '[]'),
	(78, 15, '{}'),
	(79, 15, '{}'),
	(80, 15, '{}'),
	(81, 19, '[]'),
	(82, 19, '[]'),
	(83, 19, '[]'),
	(84, 17, '{}'),
	(85, 19, '[]'),
	(86, 19, '[]'),
	(87, 22, '{}'),
	(88, 22, '{}'),
	(89, 22, '{}'),
	(90, 16, '{}'),
	(91, 16, '{}'),
	(92, 16, '{}'),
	(93, 17, '{}'),
	(94, 17, '{}'),
	(95, 17, '{}'),
	(96, 17, '{}'),
	(97, 17, '{}'),
	(98, 17, '{}'),
	(99, 16, '{}'),
	(100, 16, '{}'),
	(101, 16, '{}'),
	(102, 16, '{}'),
	(103, 16, '{}'),
	(104, 16, '{}'),
	(105, 16, '{}'),
	(106, 16, '{}'),
	(107, 16, '{}'),
	(108, 19, '[]'),
	(109, 19, '[]'),
	(110, 19, '[]'),
	(111, 19, '[]'),
	(112, 19, '[]'),
	(113, 19, '[]'),
	(114, 19, '[]'),
	(115, 19, '[]'),
	(116, 19, '[]'),
	(117, 19, '[]'),
	(118, 19, '[]'),
	(119, 19, '[]'),
	(120, 19, '[]'),
	(121, 19, '[]'),
	(122, 19, '[]'),
	(123, 16, '{}'),
	(124, 16, '{}'),
	(125, 16, '{}'),
	(126, 19, '[]'),
	(127, 19, '[]'),
	(128, 19, '[]'),
	(129, 19, '[]'),
	(130, 19, '[]'),
	(131, 19, '[]'),
	(132, 19, '[]'),
	(133, 19, '[]'),
	(134, 19, '[]'),
	(135, 16, '{}'),
	(136, 16, '{}'),
	(137, 16, '{}'),
	(138, 16, '{}'),
	(139, 16, '{}'),
	(140, 19, '[]'),
	(141, 19, '[]'),
	(142, 19, '[]'),
	(143, 19, '[]'),
	(144, 19, '[]'),
	(145, 19, '[]'),
	(146, 19, '[]'),
	(147, 19, '[]'),
	(148, 19, '[]'),
	(149, 19, '[]'),
	(150, 19, '[]'),
	(151, 19, '[]'),
	(152, 19, '[]'),
	(153, 19, '[]'),
	(154, 19, '[]'),
	(155, 19, '[]'),
	(156, 19, '[]'),
	(157, 19, '[]'),
	(158, 19, '[]'),
	(159, 19, '[]'),
	(160, 19, '[]'),
	(161, 19, '[]'),
	(162, 19, '[]'),
	(163, 19, '[]'),
	(164, 19, '[]'),
	(165, 19, '[]'),
	(166, 19, '[]'),
	(167, 19, '[]'),
	(168, 19, '[]'),
	(169, 19, '[]'),
	(170, 19, '[]'),
	(171, 19, '[]'),
	(172, 19, '[]'),
	(173, 19, '[]'),
	(174, 19, '[]'),
	(175, 19, '[]'),
	(176, 19, '[]'),
	(177, 19, '[]'),
	(178, 19, '[]'),
	(179, 19, '[]'),
	(180, 19, '[]'),
	(181, 19, '[]'),
	(182, 19, '[]'),
	(183, 19, '[]'),
	(184, 19, '[]'),
	(185, 19, '[]'),
	(186, 19, '[]'),
	(187, 19, '[]'),
	(188, 19, '[]'),
	(189, 19, '[]'),
	(190, 19, '[]'),
	(191, 19, '[]'),
	(192, 19, '[]'),
	(193, 19, '[]'),
	(194, 19, '[]'),
	(195, 19, '[]'),
	(196, 19, '[]'),
	(197, 19, '[]'),
	(198, 19, '[]'),
	(199, 19, '[]'),
	(200, 19, '[]'),
	(201, 19, '[]'),
	(202, 19, '[]'),
	(203, 19, '[]'),
	(204, 19, '[]'),
	(205, 19, '[]'),
	(206, 19, '[]'),
	(207, 19, '[]'),
	(208, 19, '[]'),
	(209, 19, '[]'),
	(210, 19, '[]'),
	(211, 19, '[]'),
	(212, 19, '[]'),
	(213, 19, '[]'),
	(214, 19, '[]'),
	(215, 19, '[]'),
	(216, 19, '[]'),
	(217, 19, '[]'),
	(218, 19, '[]'),
	(219, 19, '[]'),
	(220, 19, '[]'),
	(221, 19, '[]'),
	(222, 19, '[]'),
	(223, 17, '{}'),
	(224, 17, '{}'),
	(225, 17, '{}'),
	(226, 16, '{}'),
	(227, 16, '{}'),
	(228, 20, '{}'),
	(229, 20, '{}'),
	(230, 16, '{}'),
	(231, 20, '{}'),
	(232, 16, '{}'),
	(233, 16, '{}'),
	(234, 16, '{}'),
	(235, 17, '{}'),
	(236, 17, '{}'),
	(237, 17, '{}'),
	(238, 19, '[]'),
	(239, 19, '[]'),
	(240, 19, '[]'),
	(241, 19, '[]'),
	(242, 19, '[]'),
	(243, 19, '[]'),
	(244, 19, '[]'),
	(245, 19, '[]'),
	(246, 19, '[]'),
	(247, 19, '[]'),
	(248, 19, '[]'),
	(249, 19, '[]'),
	(250, 19, '[]'),
	(251, 19, '[]'),
	(252, 19, '[]'),
	(253, 19, '[]'),
	(254, 19, '[]'),
	(255, 19, '[]'),
	(256, 19, '[]'),
	(257, 19, '[]'),
	(258, 19, '[]'),
	(259, 16, '{}'),
	(260, 16, '{}'),
	(261, 16, '{}'),
	(262, 19, '[]'),
	(263, 19, '[]'),
	(264, 19, '[]'),
	(265, 19, '[]'),
	(266, 19, '[]'),
	(267, 19, '[]'),
	(268, 16, '{}'),
	(269, 16, '{}'),
	(270, 16, '{}'),
	(271, 24, '{}'),
	(272, 24, '{}'),
	(273, 24, '{}'),
	(274, 24, '{}'),
	(275, 24, '{}'),
	(276, 24, '{}'),
	(277, 24, '{}'),
	(278, 16, '{}'),
	(279, 16, '{}'),
	(280, 16, '{}'),
	(281, 16, '{}'),
	(282, 20, '{}'),
	(283, 20, '{}'),
	(284, 20, '{}'),
	(285, 20, '{}'),
	(286, 20, '{}'),
	(287, 20, '{}'),
	(288, 19, '[]'),
	(289, 19, '[]'),
	(290, 19, '[]'),
	(291, 16, '{}'),
	(292, 16, '{}'),
	(293, 16, '{}'),
	(294, 17, '{}'),
	(295, 17, '{}'),
	(296, 17, '{}'),
	(297, 19, '[]'),
	(298, 19, '[]'),
	(299, 20, '{}'),
	(300, 20, '{}'),
	(301, 19, '[]'),
	(302, 20, '{}'),
	(303, 19, '[]'),
	(304, 19, '[]'),
	(305, 19, '[]'),
	(306, 19, '[]'),
	(307, 19, '[]'),
	(308, 19, '[]'),
	(309, 20, '{}'),
	(310, 20, '{}'),
	(311, 20, '{}'),
	(312, 19, '[]'),
	(313, 19, '[]'),
	(314, 19, '[]'),
	(315, 19, '[]'),
	(316, 19, '[]'),
	(317, 19, '[]'),
	(318, 19, '[]'),
	(319, 19, '[]'),
	(320, 19, '[]'),
	(321, 19, '[]'),
	(322, 19, '[]'),
	(323, 19, '[]'),
	(324, 19, '[]'),
	(325, 19, '[]'),
	(326, 19, '[]'),
	(327, 20, '{}'),
	(328, 20, '{}'),
	(329, 20, '{}'),
	(330, 19, '[]'),
	(331, 19, '[]'),
	(332, 19, '[]'),
	(333, 17, '{}'),
	(334, 17, '{}'),
	(335, 17, '{}'),
	(336, 16, '{}'),
	(337, 16, '{}'),
	(338, 21, '{}'),
	(339, 21, '{}'),
	(340, 16, '{}'),
	(341, 21, '{}'),
	(342, 20, '{}'),
	(343, 20, '{}'),
	(344, 20, '{}'),
	(345, 17, '{}'),
	(346, 17, '{}'),
	(347, 21, '{}'),
	(348, 21, '{}'),
	(349, 21, '{}'),
	(350, 21, '{}'),
	(351, 21, '{}'),
	(352, 19, '{}'),
	(353, 19, '{}'),
	(354, 19, '{}'),
	(355, 17, '{}'),
	(356, 17, '{}'),
	(357, 17, '{}'),
	(358, 16, '{}'),
	(359, 16, '{}'),
	(360, 16, '{}'),
	(361, 16, '{}'),
	(362, 16, '{}'),
	(363, 16, '{}'),
	(364, 19, '{}'),
	(365, 19, '{}'),
	(366, 19, '{}'),
	(367, 16, '{}'),
	(368, 16, '{}'),
	(369, 16, '{}'),
	(370, 19, '{}'),
	(371, 19, '{}'),
	(372, 19, '{}'),
	(373, 20, '{}'),
	(374, 20, '{}'),
	(375, 20, '{}'),
	(376, 25, '{}'),
	(377, 25, '{}'),
	(378, 25, '{}'),
	(379, 25, '{}'),
	(380, 19, '{}'),
	(381, 19, '{}'),
	(382, 19, '{}'),
	(383, 19, '{}'),
	(384, 19, '{}'),
	(385, 19, '{}'),
	(386, 20, '{}'),
	(387, 20, '{}'),
	(388, 20, '{}'),
	(389, 16, '{}'),
	(390, 16, '{}'),
	(391, 16, '{}'),
	(392, 25, '{}'),
	(393, 25, '{}'),
	(394, 25, '{}'),
	(395, 17, '{}'),
	(396, 17, '{}'),
	(397, 17, '{}'),
	(398, 28, '{}'),
	(399, 28, '{}'),
	(400, 28, '{}'),
	(401, 28, '{}'),
	(402, 19, '{}'),
	(403, 19, '{}'),
	(404, 19, '{}'),
	(405, 19, '{}'),
	(406, 19, '{}'),
	(407, 19, '{}'),
	(408, 19, '{}'),
	(409, 19, '{}'),
	(410, 19, '{}'),
	(411, 19, '{}'),
	(412, 19, '{}'),
	(413, 19, '{}'),
	(414, 19, '{}'),
	(415, 19, '{}'),
	(416, 19, '{}');

-- Dumping structure for table qpixel.debt_logs
CREATE TABLE IF NOT EXISTS `debt_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT 0,
  `biller` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `number` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.debt_logs: ~0 rows (approximately)

-- Dumping structure for table qpixel.driving_tests
CREATE TABLE IF NOT EXISTS `driving_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `icid` int(11) DEFAULT NULL,
  `instructor` varchar(255) DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `points` varchar(255) DEFAULT '0',
  `passed` varchar(255) DEFAULT 'false',
  `results` text DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.driving_tests: ~0 rows (approximately)

-- Dumping structure for table qpixel.general_variables
CREATE TABLE IF NOT EXISTS `general_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` text DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.general_variables: ~0 rows (approximately)

-- Dumping structure for table qpixel.group_banking
CREATE TABLE IF NOT EXISTS `group_banking` (
  `group_type` mediumtext DEFAULT NULL,
  `bank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.group_banking: ~0 rows (approximately)

-- Dumping structure for table qpixel.hospital_patients
CREATE TABLE IF NOT EXISTS `hospital_patients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `illness` text NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.hospital_patients: ~22 rows (approximately)
INSERT INTO `hospital_patients` (`id`, `cid`, `level`, `illness`, `time`) VALUES
	(1, 15, 0, 'none', 0),
	(2, 15, 0, 'none', 0),
	(3, 19, 0, 'none', 0),
	(4, 19, 0, 'none', 0),
	(5, 16, 0, 'none', 0),
	(6, 16, 0, 'none', 0),
	(7, 17, 0, 'none', 0),
	(8, 17, 0, 'none', 0),
	(9, 20, 0, 'none', 0),
	(10, 20, 0, 'none', 0),
	(11, 21, 0, 'none', 0),
	(12, 21, 0, 'none', 0),
	(13, 22, 0, 'none', 0),
	(14, 22, 0, 'none', 0),
	(15, 23, 0, 'none', 0),
	(16, 23, 0, 'none', 0),
	(17, 24, 0, 'none', 0),
	(18, 24, 0, 'none', 0),
	(19, 25, 0, 'none', 0),
	(20, 25, 0, 'none', 0),
	(21, 28, 0, 'none', 0),
	(22, 28, 0, 'none', 0);

-- Dumping structure for table qpixel.houses
CREATE TABLE IF NOT EXISTS `houses` (
  `id` int(11) NOT NULL DEFAULT 0,
  `cid` int(11) NOT NULL DEFAULT 0,
  `model` text DEFAULT '',
  `data` text DEFAULT '{}',
  `furniture` text DEFAULT '{}',
  `mykeys` text NOT NULL DEFAULT '{}',
  `house_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.houses: ~0 rows (approximately)

-- Dumping structure for table qpixel.housing
CREATE TABLE IF NOT EXISTS `housing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `objects` text DEFAULT NULL,
  `last_payment` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Lock',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.housing: ~2 rows (approximately)
INSERT INTO `housing` (`id`, `hid`, `cid`, `information`, `objects`, `last_payment`, `status`) VALUES
	(1, 'warehouse66', 19, '{"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":-659.030517578125,"y":-879.7491455078125,"z":23.78672981262207,"w":269.0316467285156},"backdoor_coordinates":{"internal":{"x":0.0,"y":0.0,"z":0.0},"external":{"x":0.0,"y":0.0,"z":0.0}},"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"origin_offset":{"x":0.0,"y":0.0,"z":0.0}}', '[{"changed":true,"coords":"{\\"y\\":2536.699951171875,\\"z\\":12.59767150878906,\\"x\\":714.5999755859375}","realName":"vw_prop_casino_slot_02a","quat":"{\\"y\\":-0.0,\\"z\\":-0.70710664987564,\\"w\\":0.70710682868957,\\"x\\":0.0}","id":-1,"dataK":1,"model":-1519644200}]', 1661475434, 'Unlock'),
	(2, 'ls1', 19, '{"charChanger_offset":{"x":0.0,"y":0.0,"z":0.0},"garage_coordinates":{"x":-659.030517578125,"y":-879.7491455078125,"z":23.78672981262207,"w":269.0316467285156},"backdoor_coordinates":{"internal":{"x":0.0,"y":0.0,"z":0.0},"external":{"x":0.0,"y":0.0,"z":0.0}},"inventory_offset":{"x":0.0,"y":0.0,"z":0.0},"origin_offset":{"x":0.0,"y":0.0,"z":0.0}}', '{}', 1661475810, 'Lock');

-- Dumping structure for table qpixel.housing_keys
CREATE TABLE IF NOT EXISTS `housing_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.housing_keys: ~0 rows (approximately)
INSERT INTO `housing_keys` (`id`, `hid`, `cid`) VALUES
	(1, 'ls1', 16);

-- Dumping structure for table qpixel.housing_price
CREATE TABLE IF NOT EXISTS `housing_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.housing_price: ~0 rows (approximately)

-- Dumping structure for table qpixel.jobs_whitelist
CREATE TABLE IF NOT EXISTS `jobs_whitelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT 'unemployed',
  `rank` int(11) DEFAULT 0,
  `callsign` varchar(255) NOT NULL DEFAULT '0',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `dept` varchar(50) NOT NULL DEFAULT 'police',
  `badgeImage` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.jobs_whitelist: ~22 rows (approximately)
INSERT INTO `jobs_whitelist` (`id`, `owner`, `cid`, `job`, `rank`, `callsign`, `nickname`, `dept`, `badgeImage`) VALUES
	(1, NULL, 19, 'police', 7, '101', '', 'police', NULL),
	(3, NULL, 20, 'police', 9, '0', '', 'police', NULL),
	(4, NULL, 21, 'police', 9, '0', '', 'police', NULL),
	(5, NULL, 22, 'police', 10, '0', '', 'police', NULL),
	(6, NULL, 17, 'pdm', 0, '0', '', 'police', NULL),
	(7, NULL, 17, 'pdm', 0, '0', '', 'police', NULL),
	(8, NULL, 17, 'pdm', 0, '0', '', 'police', NULL),
	(9, NULL, 17, 'pdm', 3, '0', '', 'police', NULL),
	(10, NULL, 17, 'pdm', 3, '0', '', 'police', NULL),
	(11, NULL, 17, 'driving instructor', 0, '0', '', 'police', NULL),
	(12, NULL, 17, 'driving instructor', 3, '0', '', 'police', NULL),
	(13, NULL, 17, 'taxi', 3, '0', '', 'police', NULL),
	(14, NULL, 17, 'police', 0, '0', '', 'police', NULL),
	(15, NULL, 17, 'police', 4, '0', '', 'police', NULL),
	(16, NULL, 16, 'police', 9, '267', '', 'police', NULL),
	(17, NULL, 16, 'unemployed', 1, '267', '', 'police', NULL),
	(18, NULL, 19, 'police', 9, '101', '', 'state', NULL),
	(19, NULL, 20, 'police', 5, '0', '', 'police', NULL),
	(20, NULL, 17, 'ems', 0, '0', '', 'police', NULL),
	(21, NULL, 17, 'unemployed', 0, '0', '', 'police', NULL),
	(22, NULL, 17, 'foodtruck', 0, '0', '', 'police', NULL),
	(23, NULL, 17, 'taxi', 0, '0', '', 'police', NULL),
	(24, NULL, 17, 'taxi', 0, '0', '', 'police', NULL),
	(25, NULL, 19, 'state', 7, '101', '', 'police', NULL),
	(26, NULL, 19, 'taxi', 1, '101', '', 'taxi', NULL),
	(27, NULL, 21, 'police', 6, '0', '', 'police', NULL),
	(28, NULL, 25, 'police', 5, '0', '', 'police', NULL),
	(29, NULL, 28, 'police', 5, '0', '', 'police', NULL);

-- Dumping structure for table qpixel.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `Type` text DEFAULT NULL,
  `Steam` varchar(255) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT current_timestamp(),
  `Log` text DEFAULT NULL,
  `Cid` varchar(50) DEFAULT NULL,
  `Data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.logs: ~0 rows (approximately)

-- Dumping structure for table qpixel.mdw_charges
CREATE TABLE IF NOT EXISTS `mdw_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `charges` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.mdw_charges: ~3 rows (approximately)
INSERT INTO `mdw_charges` (`id`, `category`, `color`, `charges`) VALUES
	(1, 'Infractions', '#417011', '[{"title":"Failure to stop at Red Light","months":"0","points":"0","fine":"500"},{"title":"Failure to stop at Stop Sign","months":"0","points":"0","fine":"500"},{"title":"Speeding 5mph over","months":"0","points":"0","fine":"500"},{"title":"Speeding 10mph over","months":"0","points":"0","fine":"750"},{"title":"Speeding 20mph over","months":"0","points":"0","fine":"1000"},{"title":"Speeding 30+ mph over","months":"0","points":"1","fine":"1250"},{"title":"Unroadworthy Vehicle","months":"0","points":"0","fine":"500"},{"title":"Careless Driving","months":"0","points":"0","fine":"750"},{"title":"Illegal U-Turn","months":"0","points":"0","fine":"200"},{"title":"Failure to yield to Emergency Services","months":"0","points":"2","fine":"750"},{"title":"Failure to give Right of Way","months":"0","points":"0","fine":"450"},{"title":"Failure to Signal","months":"0","points":"0","fine":"50"},{"title":"Broken Tail Light","months":"0","points":"0","fine":"50"},{"title":"Broken Headlight","months":"0","points":"0","fine":"50"},{"title":"Illegal Parking","months":"0","points":"0","fine":"200"},{"title":"Improper/Unsafe Turn","months":"0","points":"0","fine":"100"},{"title":"Improper/Missing Plate","months":"0","points":"0","fine":"100"},{"title":"Wrong Way of Travel","months":"0","points":"2","fine":"250"},{"title":"Improper/Illegal Pass","months":"0","points":"0","fine":"150"},{"title":"Use of Emergency Sirens","months":"0","points":"0","fine":"500"},{"title":"Driving without Headlights","months":"0","points":"0","fine":"150"},{"title":"Obstructing Traffic","months":"0","points":"0","fine":"250"},{"title":"Failure to Present A Drivers Licence","months":"0","points":"0","fine":"500"},{"title":"Operating a Motorcycle Without a Helmet","months":"0","points":"0","fine":"100"},{"title":"Improperly Equipped Vehicle","months":"0","points":"0","fine":"250"},{"title":"Texting While Driving","months":"0","points":"2","fine":"150"},{"title":"Following too closely","months":"0","points":"0","fine":"200"},{"title":"Failure to Maintain Lane","months":"0","points":"0","fine":"100"},{"title":"Calling while driving","months":"0","points":"2","fine":"500"},{"title":"Falling right hand turn","months":"0","points":"0","fine":"250"}]'),
	(2, 'Misdemeanors', '#7e5800', '[{"months":"15","title":"Negligent Discharge of a Firearm/Weapon in Public","fine":"1000","points":"0"},{"months":"15","title":"Reckless Endangerment","fine":"1000","points":"0"},{"months":"15","title":"Assault","fine":"1500","points":"0"},{"months":"10","title":"Threat to Bodily Harm","fine":"500","points":"0"},{"months":"20","title":"Domestic Violence","fine":"1500","points":"0"},{"months":"50","title":"Contempt of Court","fine":"4000","points":"0"},{"months":"15","title":"Poss. Of Stolen Property","fine":"1000","points":"0"},{"months":"20","title":"Aiding and Abetting","fine":"1500","points":"0"},{"months":"10","title":"Attempted Grand Theft Auto","fine":"1500","points":"0"},{"months":"20","title":"Hit and Run No Injuries","fine":"2000","points":"0"},{"months":"15","title":"Fleeing/Eluding Law Enforcement (On Foot)","fine":"1500","points":"0"},{"months":"15","title":"Money Laundering","fine":"2000","points":"0"},{"months":"10","title":"Gambling","fine":"1000","points":"0"},{"months":"15","title":"Prostitution","fine":"750","points":"0"},{"months":"10","title":"False Identification","fine":"500","points":"0"},{"months":"15","title":"False Imprisonment","fine":"750","points":"0"},{"months":"15","title":"False Personation","fine":"750","points":"0"},{"months":"10","title":"Criminal Trespass","fine":"1000","points":"0"},{"months":"15","title":"Breaking And Entering","fine":"1000","points":"0"},{"months":"10","title":"Misuse of 911","fine":"350","points":"0"},{"months":"10","title":"Indecent Exposure","fine":"500","points":"0"},{"months":"10","title":"Harbouring or Concealing Persons","fine":"500","points":"0"},{"months":"15","title":"Illegal Operation of an Unlicensed Business","fine":"1000","points":"0"},{"months":"10","title":"False Report to a Peace Officer","fine":"500","points":"0"},{"months":"10","title":"Selling or Furnishing Alcohol to a Minor","fine":"750","points":"0"},{"months":"10","title":"Possession of Alcohol by a Minor","fine":"500","points":"0"},{"months":"10","title":"Sale of Alcohol without a licence","fine":"350","points":"0"},{"months":"20","title":"Illegal Possession of Class 2 Controlled Substances","fine":"1500","points":"0"},{"months":"5","title":"Illegal Possession of Drug Paraphernalia","fine":"750","points":"0"},{"months":"10","title":"Reckless Driving","fine":"1500","points":"5"},{"months":"10","title":"Poss. of Stolen Vehicle","fine":"1250","points":"0"},{"months":"15","title":"Poss. of Counterfeit Currency","fine":"1250","points":"0"},{"months":"10","title":"Damage to Public Property","fine":"750","points":"0"},{"months":"10","title":"Damage to Private Property","fine":"750","points":"0"},{"months":"15","title":"Poss. of Weapon w/ Criminal Intent","fine":"1000","points":"0"},{"months":"10","title":"Poss. of Illegal Contraband","fine":"750","points":"0"},{"months":"5","title":"Failure to Obey a Lawful Order","fine":"500","points":"0"},{"months":"5","title":"Illegal Brandishing of Firearm","fine":"1000","points":"0"},{"months":"10","title":"Hunting from Flotation Device","fine":"750","points":"0"},{"months":"15","title":"Possession of Valuable Goods","fine":"1250","points":"0"},{"months":"5","title":"Vandalism","fine":"500","points":"0"},{"months":"10","title":"Sale of CDS","fine":"1000","points":"0"},{"months":"10","title":"Poss. of Firearm w/o a Weapon Licence","fine":"1000","points":"0"},{"months":"10","title":"Poss. Of An Unregistered Firearm","fine":"1000","points":"0"},{"months":"25","title":"Illegal Sale/Transfer of Non Class 2 Firearm","fine":"2000","points":"0"},{"months":"0","title":"Failure to Inform of Concealed Weapon","fine":"500","points":"0"},{"months":"5","title":"Operating Motor Vehicle w/o Valid Drivers License","fine":"750","points":"2"},{"months":"10","title":"Resisting Arrest","fine":"750","points":"0"},{"months":"10","title":"Disorderly Conduct","fine":"500","points":"0"},{"months":"10","title":"Disturbing the Peace","fine":"750","points":"0"},{"months":"10","title":"Domestic Disturbance","fine":"750","points":"0"},{"months":"5","title":"Harassment","fine":"1000","points":"0"},{"months":"0","title":"Loitering","fine":"500","points":"0"},{"months":"0","title":"Jay Walking","fine":"500","points":"0"},{"months":"10","title":"Conspiracy to Commit State Misdemeanor","fine":"500","points":"0"},{"months":"0","title":"Public Intoxication","fine":"500","points":"0"},{"months":"5","title":"Failure to Identify","fine":"500","points":"0"},{"months":"10","title":"Failure to Abide by Hunting Laws","fine":"500","points":"0"},{"months":"5","title":"Unlawful Assembly","fine":"500","points":"0"},{"months":"10","title":"Failure to Pay a Fine","fine":"1000","points":"0"}]'),
	(3, 'Felonies', '#7e2100', '[{"title":"Torture","months":"35","points":"0","fine":"10000"},{"title":"Racketeering/RICO","months":"999999","points":"0","fine":"10000"},{"title":"Airplane/Helicopter Hijacking","months":"10","points":"0","fine":"1000"},{"title":"Possession of a Destructive or Incendiary Device","months":"20","points":"0","fine":"1500"},{"title":"Unlawful Use of Firearm from a Motor Vehicle","months":"15","points":"0","fine":"1250"},{"title":"Armed Federal Bank Robbery","months":"35","points":"0","fine":"3500"},{"title":"Hostage Taking (Federal)","months":"20","points":"0","fine":"1250"},{"title":"Stalking","months":"10","points":"0","fine":"1000"},{"title":"Contempt of Court (Federal)","months":"100","points":"0","fine":"5000"},{"title":"Perjury","months":"15","points":"0","fine":"2500"},{"title":"Witness Tampering","months":"15","points":"0","fine":"2500"},{"title":"Failure to Comply with Subpoena","months":"15","points":"0","fine":"1250"},{"title":"Retaliating Against a Witness, Victim, or Informant","months":"15","points":"0","fine":"1000"},{"title":"Retaliating Against a Justice/Judge by False Claim or Slander","months":"15","points":"0","fine":"1000"},{"title":"False Declarations before Grand Jury or Court","months":"15","points":"0","fine":"1250"},{"title":"Flight to Avoid Prosecution or Giving Testimony","months":"25","points":"0","fine":"1500"},{"title":"Probation/Parole Violation","months":"30","points":"0","fine":"1500"},{"title":"Blackmail","months":"10","points":"0","fine":"750"},{"title":"Extortion","months":"15","points":"0","fine":"1250"},{"title":"Corruption","months":"999999","points":"0","fine":"3500"},{"title":"Federal Possession of Counterfeit Currency","months":"20","points":"0","fine":"2500"},{"title":"Disclosure of Confidential Information/Documents","months":"15","points":"0","fine":"2000"},{"title":"Damage to Religious Property","months":"10","points":"0","fine":"1200"},{"title":"Obstruction of Justice","months":"15","points":"0","fine":"1500"},{"title":"Arson","months":"20","points":"0","fine":"5000"},{"title":"Destruction of Government Documentation/Information","months":"999999","points":"0","fine":"5000"},{"title":"Conspiracy to Commit a Federal Felony","months":"15","points":"0","fine":"2500"},{"title":"Weapons Stockpiling w/ Intent to Traffic 5 - 10","months":"20","points":"0","fine":"1750"},{"title":"Weapons Stockpiling w/ Intent to Traffic 20+","months":"999999","points":"0","fine":"3000"},{"title":"Jailbreak","months":"500","points":"0","fine":"3000"},{"title":"Terroristic Threat","months":"20","points":"0","fine":"2500"},{"title":"Terrorism","months":"999999","points":"0","fine":"5000"},{"title":"Violation of bail","months":"20","points":"0","fine":"2500"},{"title":"Treason - POTENTIAL DEATH SENTENCE","months":"999999","points":"0","fine":"3000"},{"title":"Failure to Comply and Relinquish to a Seizure Warrant","months":"200","points":"0","fine":"5000"},{"title":"Improper Entry by an Alien","months":"100","points":"0","fine":"3000"},{"title":"Tax Evasion","months":"50","points":"0","fine":"5000"},{"title":"1st Degree Murder of a Peace Officer","months":"999999","points":"0","fine":"10000"},{"title":"Attempted Murder of a Peace Officer","months":"30","points":"0","fine":"3500"},{"title":"1st Degree Felony Murder","months":"999999","points":"0","fine":"10000"},{"title":"Attempted Murder","months":"25","points":"0","fine":"2500"},{"title":"Kidnapping","months":"15","points":"0","fine":"2000"},{"title":"Aggravated Armed Robbery","months":"20","points":"0","fine":"2500"},{"title":"Armed Bank Robbery","months":"20","points":"0","fine":"2750"},{"title":"Grand Theft Auto","months":"10","points":"0","fine":"1500"},{"title":"2nd Degree Murder of a Peace Officer","months":"999999","points":"0","fine":"15000"},{"title":"2nd Degree Murder","months":"999999","points":"0","fine":"10000"},{"title":"Possession of weed  w/ Intent to Traffic 10-19","months":"5","points":"0","fine":"1000"},{"title":"Possession of weed  w/ Intent to Traffic 20-59","months":"10","points":"0","fine":"1250"},{"title":"Possession of weed  w/ Intent to Traffic 60-119","months":"10","points":"0","fine":"1500"},{"title":"Possession of weed  w/ Intent to Traffic 12-199","months":"15","points":"0","fine":"1750"},{"title":"Possession of Cocaine  w/ Intent to Traffic 1-29","months":"10","points":"0","fine":"1250"},{"title":"Possession of Cocaine  w/ Intent to Traffic 30-59","months":"20","points":"0","fine":"1750"},{"title":"Possession of Cocaine  w/ Intent to Traffic 60-119","months":"20","points":"0","fine":"2000"},{"title":"Possession of Cocaine  w/ Intent to Traffic 120-199","months":"20","points":"0","fine":"2500"},{"title":"Drug Cultivation/Manufacturing","months":"25","points":"0","fine":"3000"},{"title":"Drug Trafficking 200 - 350","months":"20","points":"0","fine":"2500"},{"title":"Drug Trafficking 350 - 600","months":"20","points":"0","fine":"3000"},{"title":"Drug Trafficking 600+","months":"999999","points":"0","fine":"5000"},{"title":"Manslaughter","months":"999999","points":"0","fine":"5000"},{"title":"Negligent Homicide","months":"999999","points":"0","fine":"5500"},{"title":"Vehicular Manslaughter","months":"20","points":"0","fine":"2500"},{"title":"Attempted Kidnapping","months":"15","points":"0","fine":"1750"},{"title":"Felonious Restraint","months":"15","points":"0","fine":"1500"},{"title":"Robbery","months":"15","points":"0","fine":"2500"},{"title":"Animal Cruelty","months":"15","points":"0","fine":"1250"},{"title":"Assault On Public Servant","months":"10","points":"0","fine":"1250"},{"title":"Assault w/ Deadly Weapon","months":"15","points":"0","fine":"1500"},{"title":"Criminal Possession of a Government Issued Firearm","months":"20","points":"0","fine":"2500"},{"title":"Criminal Possession of a Government Issued Taser","months":"15","points":"0","fine":"1500"},{"title":"Criminal Possession of Government Issued Equipment","months":"15","points":"0","fine":"1500"},{"title":"Gang Related Shooting","months":"25","points":"0","fine":"3500"},{"title":"Embezzlement","months":"10","points":"0","fine":"2500"},{"title":"Possession of a Stolen Government Vehicle","months":"15","points":"0","fine":"1500"},{"title":"Poaching","months":"15","points":"0","fine":"1500"},{"title":"Poss. of a Class 1 Illegal Firearm","months":"10","points":"0","fine":"1500"},{"title":"Poss. of a Class 2 Illegal Firearm","months":"20","points":"0","fine":"2000"},{"title":"Poss. of a Class 3 Illegal Firearm","months":"35","points":"0","fine":"3500"},{"title":"Illegal Sale/Transfer of Illegal Weapons","months":"30","points":"0","fine":"3500"},{"title":"Manufacturing of Illegal Weapons","months":"999999","points":"0","fine":"5000"},{"title":"Poss. of Firearm by a Convicted Violent Felon","months":"15","points":"0","fine":"1500"},{"title":"Driving Under The Influence","months":"10","points":"0","fine":"1500"},{"title":"Hit and Run with Injuries","months":"15","points":"0","fine":"1500"},{"title":"Felony Evading Law Enforcement (Vehicle)","months":"15","points":"0","fine":"2000"},{"title":"Felony Evading (w/ Injury/Death) (Vehicle)","months":"15","points":"0","fine":"1500"},{"title":"Attempted or Unarmed Robbery","months":"15","points":"0","fine":"1500"},{"title":"Attempted Bribery","months":"15","points":"0","fine":"1000"},{"title":"Escape","months":"15","points":"0","fine":"1500"},{"title":"Rioting","months":"10","points":"0","fine":"1000"},{"title":"Felonious Trespassing","months":"15","points":"0","fine":"1500"},{"title":"Smuggling","months":"15","points":"0","fine":"1000"},{"title":"Conspiracy to Commit State Felony","months":"10","points":"0","fine":"1250"},{"title":"Gang Enhancement","months":"15","points":"0","fine":"1200"},{"title":"Illegal Street Racing Participation","months":"15","points":"3","fine":"1250"},{"title":"Unauthorised Practice of Law","months":"15","points":"0","fine":"1000"},{"title":"Joyriding","months":"10","points":"0","fine":"1000"},{"title":"Grand Larceny","months":"25","points":"0","fine":"3500"},{"title":"Failure to follow Aviation Guidelines","months":"15","points":"0","fine":"1250"},{"title":"Operation of an Aircraft without a licence","months":"15","points":"0","fine":"1500"}]');

-- Dumping structure for table qpixel.mdw_evidence
CREATE TABLE IF NOT EXISTS `mdw_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `cid` int(255) DEFAULT NULL,
  `incidentId` int(255) DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2155 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.mdw_evidence: ~6 rows (approximately)
INSERT INTO `mdw_evidence` (`id`, `type`, `identifier`, `description`, `cid`, `incidentId`, `tags`) VALUES
	(2149, 'casing', '6969', '69696969', 867, 835, NULL),
	(2150, 'photo', '', '', 0, 836, NULL),
	(2151, 'photo', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 0, 836, NULL),
	(2152, 'photo', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 0, 836, NULL),
	(2153, 'casing', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 0, 836, NULL),
	(2154, 'weapon', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 'https://cdn.discordapp.com/attachments/982104371414310952/1016495448342671390/875683.png', 0, 836, NULL);

-- Dumping structure for table qpixel.mdw_incidents
CREATE TABLE IF NOT EXISTS `mdw_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `unix` varchar(255) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `evidence` longtext DEFAULT NULL,
  `officers` longtext DEFAULT NULL,
  `persons` longtext DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `vehicles` longtext DEFAULT NULL,
  `criminals` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=837 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.mdw_incidents: ~2 rows (approximately)
INSERT INTO `mdw_incidents` (`id`, `title`, `author`, `unix`, `info`, `evidence`, `officers`, `persons`, `tags`, `vehicles`, `criminals`) VALUES
	(835, 'Someone was being homophobic', 'Mali McFarland', '1656794729', '\\\n', '[{"type":"casing","description":"69696969","id":"8671","identifier":"6969","cid":"867"}]', 'null', 'null', NULL, NULL, '[{"warrantdate":0,"name":"Mali McFarland","guilty":true,"warrant":true,"cid":867,"processed":true,"months":30,"charges":[{"id":"3963","months":0,"points":0,"fine":500,"title":"Failure to stop at Red Light"},{"id":"7906","months":0,"points":0,"fine":500,"title":"Failure to stop at Red Light"},{"id":"1154","months":0,"points":0,"fine":500,"title":"Failure to stop at Red Light"},{"id":"8839","months":0,"points":0,"fine":500,"title":"Failure to stop at Red Light"},{"id":"0294","months":0,"points":0,"fine":500,"title":"Failure to stop at Red Light"},{"id":"6216","months":0,"points":0,"fine":500,"title":"Failure to stop at Red Light"},{"id":"5883","months":30,"points":0,"fine":3500,"title":"Attempted Murder of a Peace Officer"}],"fine":6500,"points":0}]'),
	(836, 'Testing shit', 'Karxi Deving', '1662431226', 'HES A DICK', '[]', 'null', NULL, NULL, NULL, '[{"warrantdate":0,"warrant":true,"fine":2600,"charges":[{"points":0,"title":"Speeding 20mph over","fine":1000,"id":"9981","months":0},{"points":0,"title":"Operating a Motorcycle Without a Helmet","fine":100,"id":"7156","months":0},{"points":0,"title":"Obstruction of Justice","fine":1500,"id":"2888","months":15}],"points":0,"name":"andoo potate","guilty":true,"processed":true,"months":15,"cid":16},{"warrantdate":0,"warrant":false,"fine":1000,"charges":[{"points":0,"title":"Jay Walking","fine":500,"id":"7437","months":0},{"points":0,"title":"Jay Walking","fine":500,"id":"9795","months":0}],"points":0,"name":"Kazumi Developer","guilty":true,"processed":true,"months":0,"cid":15}]');

-- Dumping structure for table qpixel.mdw_incidents_ems
CREATE TABLE IF NOT EXISTS `mdw_incidents_ems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `unix` varchar(255) DEFAULT NULL,
  `info` longtext DEFAULT NULL,
  `ems` longtext DEFAULT NULL,
  `persons` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.mdw_incidents_ems: ~0 rows (approximately)

-- Dumping structure for table qpixel.mdw_warrants
CREATE TABLE IF NOT EXISTS `mdw_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(255) DEFAULT 0,
  `incidentid` int(255) DEFAULT 0,
  `expiry` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.mdw_warrants: ~0 rows (approximately)

-- Dumping structure for table qpixel.phone_yp
CREATE TABLE IF NOT EXISTS `phone_yp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `job` varchar(500) DEFAULT NULL,
  `phonenumber` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.phone_yp: ~0 rows (approximately)

-- Dumping structure for table qpixel.playerstattoos
CREATE TABLE IF NOT EXISTS `playerstattoos` (
  `identifier` int(11) DEFAULT NULL,
  `tattoos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.playerstattoos: ~2 rows (approximately)
INSERT INTO `playerstattoos` (`identifier`, `tattoos`) VALUES
	(15, '[]'),
	(16, '{}'),
	(17, '{}');

-- Dumping structure for table qpixel.player_logs
CREATE TABLE IF NOT EXISTS `player_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `steamid` varchar(255) DEFAULT NULL,
  `log` longtext DEFAULT NULL,
  `date` longtext DEFAULT NULL,
  `cid` int(255) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.player_logs: ~0 rows (approximately)

-- Dumping structure for table qpixel.player_prio
CREATE TABLE IF NOT EXISTS `player_prio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam_id` varchar(50) DEFAULT NULL,
  `prioType` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.player_prio: ~0 rows (approximately)

-- Dumping structure for table qpixel.racing_races
CREATE TABLE IF NOT EXISTS `racing_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `creator` varchar(255) NOT NULL,
  `distance` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `checkpoints` longtext NOT NULL,
  `fastest_time` int(11) DEFAULT 0,
  `fastest_name` varchar(255) DEFAULT 'N/A',
  `races` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.racing_races: ~0 rows (approximately)
INSERT INTO `racing_races` (`id`, `name`, `creator`, `distance`, `type`, `thumbnail`, `checkpoints`, `fastest_time`, `fastest_name`, `races`) VALUES
	(4, 'Legion Square', 'DesireRP', 485, 'Point', 'none', '[{"pos":{"z":28.834,"y":-999.939,"x":130.714},"hdg":70.388,"rad":8.3},{"pos":{"z":29.077,"y":-956.238,"x":131.614},"hdg":338.431,"rad":6.6},{"pos":{"z":30.466,"y":-843.888,"x":175.76},"hdg":339.473,"rad":6.6},{"pos":{"z":28.775,"y":-858.431,"x":264.71},"hdg":251.636,"rad":8.8},{"pos":{"z":28.46,"y":-890.032,"x":267.62},"hdg":158.093,"rad":6.1},{"pos":{"z":28.742,"y":-1014.177,"x":221.53},"hdg":158.78,"rad":6.1},{"pos":{"z":28.833,"y":-1012.517,"x":155.294},"hdg":70.559,"rad":6.1}]', 19977, 'nicx', 8);

-- Dumping structure for table qpixel.racing_tracks
CREATE TABLE IF NOT EXISTS `racing_tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkpoints` text DEFAULT NULL,
  `track_name` text DEFAULT NULL,
  `creator` text DEFAULT NULL,
  `distance` text DEFAULT NULL,
  `races` text DEFAULT NULL,
  `fastest_car` text DEFAULT NULL,
  `fastest_name` text DEFAULT NULL,
  `fastest_lap` int(11) DEFAULT NULL,
  `fastest_sprint` int(11) DEFAULT NULL,
  `fastest_sprint_name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.racing_tracks: ~0 rows (approximately)
INSERT INTO `racing_tracks` (`id`, `checkpoints`, `track_name`, `creator`, `distance`, `races`, `fastest_car`, `fastest_name`, `fastest_lap`, `fastest_sprint`, `fastest_sprint_name`, `description`, `data`) VALUES
	(10, '[{"flare2y":-570.07,"x":-1195.36,"y":-565.99,"z":25.67,"dist":5.0,"flare1z":26.62,"start":true,"flare2x":-1191.87,"flare1y":-562.43,"flare1x":-1198.32,"flare2z":26.53},{"flare2y":-740.03,"x":-1461.12,"y":-728.28,"z":22.98,"dist":12.0,"flare1z":24.0,"start":false,"flare2x":-1464.96,"flare1y":-717.22,"flare1x":-1457.49,"flare2z":23.77},{"flare2y":-567.4,"x":-1722.59,"y":-557.85,"z":35.72,"dist":10.0,"flare1z":36.53,"start":false,"flare2x":-1718.56,"flare1y":-548.96,"flare1x":-1726.29,"flare2z":36.73},{"flare2y":-397.92,"x":-2028.04,"y":-386.07,"z":9.35,"dist":11.5,"flare1z":9.98,"start":false,"flare2x":-2028.67,"flare1y":-374.96,"flare1x":-2027.41,"flare2z":10.55},{"flare2y":-348.56,"x":-2278.51,"y":-333.39,"z":11.82,"dist":16.5,"flare1z":12.7,"start":false,"flare2x":-2285.87,"flare1y":-318.89,"flare1x":-2271.43,"flare2z":12.77},{"flare2y":220.61,"x":-3054.8,"y":227.88,"z":14.47,"dist":7.5,"flare1z":15.42,"start":false,"flare2x":-3057.82,"flare1y":234.44,"flare1x":-3052.01,"flare2z":15.32},{"flare2y":370.58,"x":-3068.67,"y":369.01,"z":5.38,"dist":6.5,"flare1z":6.19,"start":false,"flare2x":-3075.35,"flare1y":367.56,"flare1x":-3062.71,"flare2z":6.4},{"flare2y":748.91,"x":-3083.15,"y":747.31,"z":19.22,"dist":9.0,"flare1z":20.44,"start":false,"flare2x":-3092.37,"flare1y":745.77,"flare1x":-3074.66,"flare2z":19.79},{"flare2y":798.52,"x":-3109.5,"y":806.29,"z":16.32,"dist":16.5,"flare1z":17.24,"start":false,"flare2x":-3124.46,"flare1y":813.67,"flare1x":-3095.15,"flare2z":17.21},{"flare2y":901.75,"x":-3190.23,"y":912.8,"z":12.77,"dist":11.0,"flare1z":13.56,"start":false,"flare2x":-3192.92,"flare1y":923.11,"flare1x":-3187.66,"flare2z":13.79},{"flare2y":972.94,"x":-3229.71,"y":973.32,"z":11.24,"dist":7.0,"flare1z":12.14,"start":false,"flare2x":-3237.07,"flare1y":973.59,"flare1x":-3223.09,"flare2z":12.16},{"flare2y":1328.02,"x":-3102.31,"y":1320.9,"z":18.51,"dist":11.0,"flare1z":19.29,"start":false,"flare2x":-3093.45,"flare1y":1314.28,"flare1x":-3110.63,"flare2z":19.55},{"flare2y":1202.67,"x":-3053.89,"y":1198.59,"z":21.21,"dist":5.5,"flare1z":22.16,"start":false,"flare2x":-3058.1,"flare1y":1194.99,"flare1x":-3050.22,"flare2z":22.06},{"flare2y":1478.02,"x":-2632.83,"y":1477.09,"z":122.79,"dist":7.0,"flare1z":123.53,"start":false,"flare2x":-2625.52,"flare1y":1476.25,"flare1x":-2639.4,"flare2z":123.87},{"flare2y":797.87,"x":-1759.37,"y":801.52,"z":138.8,"dist":9.0,"flare1z":139.47,"start":false,"flare2x":-1750.74,"flare1y":804.95,"flare1x":-1767.28,"flare2z":139.96},{"flare2y":158.65,"x":-1824.04,"y":155.63,"z":75.78,"dist":5.5,"flare1z":76.42,"start":false,"flare2x":-1829.08,"flare1y":152.95,"flare1x":-1819.68,"flare2z":76.98},{"flare2y":245.67,"x":-1485.39,"y":238.51,"z":59.59,"dist":8.5,"flare1z":60.6,"start":false,"flare2x":-1490.62,"flare1y":231.91,"flare1x":-1480.63,"flare2z":60.39},{"flare2y":395.44,"x":-1350.08,"y":387.31,"z":63.95,"dist":8.5,"flare1z":64.86,"start":false,"flare2x":-1353.62,"flare1y":379.84,"flare1x":-1346.85,"flare2z":64.86},{"flare2y":359.75,"x":-1077.57,"y":359.48,"z":66.48,"dist":8.5,"flare1z":67.34,"start":false,"flare2x":-1068.71,"flare1y":359.32,"flare1x":-1085.7,"flare2z":67.45},{"flare2y":188.86,"x":-1067.11,"y":182.64,"z":58.38,"dist":15.0,"flare1z":58.94,"start":false,"flare2x":-1053.05,"flare1y":176.79,"flare1x":-1080.51,"flare2z":59.66},{"flare2y":-131.48,"x":-870.32,"y":-138.6,"z":36.27,"dist":15.0,"flare1z":37.18,"start":false,"flare2x":-856.71,"flare1y":-145.34,"flare1x":-883.31,"flare2z":37.17},{"flare2y":-311.77,"x":-769.9,"y":-326.52,"z":34.89,"dist":18.5,"flare1z":35.52,"start":false,"flare2x":-758.14,"flare1y":-340.66,"flare1x":-781.25,"flare2z":36.08},{"flare2y":-365.62,"x":-444.48,"y":-380.46,"z":32.04,"dist":14.5,"flare1z":32.38,"start":false,"flare2x":-443.69,"flare1y":-394.55,"flare1x":-445.29,"flare2z":33.54},{"flare2y":-520.53,"x":-204.27,"y":-512.53,"z":33.08,"dist":19.0,"flare1z":33.96,"start":false,"flare2x":-186.64,"flare1y":-504.78,"flare1x":-221.22,"flare2z":34.01},{"flare2y":-624.73,"x":-288.28,"y":-617.95,"z":31.72,"dist":6.5,"flare1z":32.63,"start":false,"flare2x":-287.22,"flare1y":-611.88,"flare1x":-289.17,"flare2z":32.63},{"flare2y":-673.07,"x":-390.65,"y":-657.23,"z":28.57,"dist":15.5,"flare1z":29.45,"start":false,"flare2x":-389.65,"flare1y":-642.13,"flare1x":-391.53,"flare2z":29.52},{"flare2y":-610.66,"x":-867.66,"y":-604.5,"z":27.41,"dist":10.5,"flare1z":28.41,"start":false,"flare2x":-876.62,"flare1y":-598.8,"flare1x":-859.29,"flare2z":28.22},{"flare2y":-447.69,"x":-978.89,"y":-441.29,"z":36.16,"dist":6.5,"flare1z":36.94,"start":false,"flare2x":-976.4,"flare1y":-435.56,"flare1x":-981.05,"flare2z":37.21}]', 'Kazum', 'Kazum', '9123', NULL, NULL, 'nil', 0, 0, NULL, 'A WHOLE LOAD OF FUN', 'nil');

-- Dumping structure for table qpixel.stash
CREATE TABLE IF NOT EXISTS `stash` (
  `owner_cid` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `x` int(122) DEFAULT NULL,
  `y` int(122) DEFAULT NULL,
  `z` int(122) DEFAULT NULL,
  `g_x` int(122) DEFAULT NULL,
  `g_y` int(122) DEFAULT NULL,
  `g_z` int(122) DEFAULT NULL,
  `owner_pin` int(11) DEFAULT NULL,
  `guest_pin` int(11) DEFAULT NULL,
  `useGarage` int(11) DEFAULT NULL,
  `tier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.stash: ~0 rows (approximately)

-- Dumping structure for table qpixel.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(10,2) NOT NULL DEFAULT 0.00,
  `change` decimal(10,2) NOT NULL DEFAULT 0.00,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qpixel.stocks: ~0 rows (approximately)

-- Dumping structure for table qpixel.stocks_characters
CREATE TABLE IF NOT EXISTS `stocks_characters` (
  `cid` int(11) NOT NULL,
  `SHUNG` decimal(10,2) NOT NULL DEFAULT 0.00,
  `STRAMM` decimal(10,2) DEFAULT 0.00,
  `STRLSC` decimal(10,2) DEFAULT 0.00,
  `STR711` decimal(10,2) DEFAULT 0.00,
  `STRBOA` decimal(10,2) DEFAULT 0.00,
  `STRCLS` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cid` (`cid`),
  CONSTRAINT `cid_stocks_characters_fk` FOREIGN KEY (`cid`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qpixel.stocks_characters: ~0 rows (approximately)

-- Dumping structure for table qpixel.storage_units
CREATE TABLE IF NOT EXISTS `storage_units` (
  `id` longtext DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `given_access` varchar(50) DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.storage_units: ~0 rows (approximately)
INSERT INTO `storage_units` (`id`, `data`, `given_access`) VALUES
	('2', '{"storage_owner":19,"purchase_price":70000}', '[]');

-- Dumping structure for table qpixel.tablet_queue
CREATE TABLE IF NOT EXISTS `tablet_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.tablet_queue: ~0 rows (approximately)

-- Dumping structure for table qpixel.transaction_history
CREATE TABLE IF NOT EXISTS `transaction_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` text NOT NULL,
  `trans_id` int(11) NOT NULL,
  `account` text NOT NULL,
  `amount` int(11) NOT NULL,
  `trans_type` text NOT NULL,
  `receiver` text NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.transaction_history: ~0 rows (approximately)

-- Dumping structure for table qpixel.tweets
CREATE TABLE IF NOT EXISTS `tweets` (
  `handle` longtext NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `attachment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.tweets: ~0 rows (approximately)

-- Dumping structure for table qpixel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hex_id` varchar(100) DEFAULT NULL,
  `steam_id` varchar(50) DEFAULT NULL,
  `community_id` varchar(100) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'Uknown',
  `ip` varchar(50) NOT NULL DEFAULT 'Uknown',
  `rank` varchar(50) NOT NULL DEFAULT 'user',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `controls` text DEFAULT '{}',
  `settings` text DEFAULT '{}',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.users: ~10 rows (approximately)
INSERT INTO `users` (`id`, `hex_id`, `steam_id`, `community_id`, `license`, `name`, `ip`, `rank`, `date_created`, `controls`, `settings`) VALUES
	(1, 'steam:110000107aff8a1', 'STEAM_0:1:64486480', '76561198089238690', 'license:88c4f89bfcbbf4c5eac449133f45b45043d146c1', 'Karxi', '0.0.0.0', 'owner', '2022-08-25 00:27:24', '{"helilockon":"SPACE","vehicleSnavigate":"R","generalUseSecondaryWorld":"F","newsMovie":"M","helirappel":"X","housingMain":"H","distanceChange":"G","vehicleSearch":"G","vehicleSlights":"Q","helispotlight":"G","vehicleDoors":"L","generalChat":"T","heliCam":"E","generalPhone":"P","showDispatchLog":"z","switchRadioEmergency":"9","vehicleBelt":"B","tokoptt":"CAPS","generalTackle":"LEFTSHIFT+E","generalMenu":"F1","newsTools":"H","vehicleSsound":"LEFTALT","devmenu":"F5","radiovolumedown":"[","helivision":"INPUTAIM","loudSpeaker":"-","generalScoreboard":"U","generalUseThird":"G","generalProp":"7","vehicleHotwire":"H","carStereo":"LEFTALT+P","devcloak":"F3","devnoclip":"F2","movementCrawl":"Z","devmarker":"F6","radiovolumeup":"]","actionBar":"Z","tokoToggle":"LEFTCTRL","generalUseSecondary":"ENTER","radiotoggle":",","generalInventory":"TAB","generalEscapeMenu":"ESC","vehicleCruise":"X","generalUse":"E","newsNormal":"E","movementCrouch":"X","housingSecondary":"G","handheld":"LEFTSHIFT+P"}', '{"hud":[],"tokovoip":{"localClickOn":true,"localClickOff":true,"clickVolume":0.8,"radioVolume":0.8,"remoteClickOn":true,"phoneVolume":0.8,"stereoAudio":true,"releaseDelay":200,"remoteClickOff":true}}'),
	(2, 'steam:110000107aff8a1', 'STEAM_0:1:64486480', '76561198089238690', 'license:88c4f89bfcbbf4c5eac449133f45b45043d146c1', 'Karxi', '0.0.0.0', 'owner', '2022-08-25 00:27:24', '{"helilockon":"SPACE","vehicleSnavigate":"R","generalUseSecondaryWorld":"F","newsMovie":"M","helirappel":"X","housingMain":"H","distanceChange":"G","vehicleSearch":"G","vehicleSlights":"Q","helispotlight":"G","vehicleDoors":"L","generalChat":"T","heliCam":"E","generalPhone":"P","showDispatchLog":"z","switchRadioEmergency":"9","vehicleBelt":"B","tokoptt":"CAPS","generalTackle":"LEFTSHIFT+E","generalMenu":"F1","newsTools":"H","vehicleSsound":"LEFTALT","devmenu":"F5","radiovolumedown":"[","helivision":"INPUTAIM","loudSpeaker":"-","generalScoreboard":"U","generalUseThird":"G","generalProp":"7","vehicleHotwire":"H","carStereo":"LEFTALT+P","devcloak":"F3","devnoclip":"F2","movementCrawl":"Z","devmarker":"F6","radiovolumeup":"]","actionBar":"Z","tokoToggle":"LEFTCTRL","generalUseSecondary":"ENTER","radiotoggle":",","generalInventory":"TAB","generalEscapeMenu":"ESC","vehicleCruise":"X","generalUse":"E","newsNormal":"E","movementCrouch":"X","housingSecondary":"G","handheld":"LEFTSHIFT+P"}', '{"hud":[],"tokovoip":{"localClickOn":true,"localClickOff":true,"clickVolume":0.8,"radioVolume":0.8,"remoteClickOn":true,"phoneVolume":0.8,"stereoAudio":true,"releaseDelay":200,"remoteClickOff":true}}'),
	(3, 'steam:11000014a058bb1', 'STEAM_0:1:620938712', '76561199202143150', 'license:9c350af4e8af2d95962156e219f1e4ca4cbca47c', 'zukat', '0.0.0.0', 'owner', '2022-08-25 00:30:03', '{"vehicleHotwire":"H","vehicleSlights":"Q","devmenu":"F5","heliCam":"E","switchRadioEmergency":"9","movementCrouch":"X","vehicleDoors":"L","radiovolumeup":"]","handheld":"LEFTSHIFT+P","helirappel":"X","vehicleSearch":"G","generalProp":"7","tokoptt":"CAPS","actionBar":"Z","generalEscapeMenu":"ESC","helivision":"INPUTAIM","housingMain":"H","helispotlight":"G","vehicleSsound":"LEFTALT","showDispatchLog":"z","generalUseSecondaryWorld":"F","carStereo":"LEFTALT+P","generalScoreboard":"U","generalTackle":"LEFTSHIFT+E","vehicleCruise":"X","devcloak":"F3","loudSpeaker":"-","generalPhone":"P","vehicleSnavigate":"R","tokoToggle":"LEFTCTRL","generalMenu":"F1","generalUseSecondary":"ENTER","generalChat":"T","radiovolumedown":"[","helilockon":"SPACE","generalInventory":"TAB","newsNormal":"E","devnoclip":"F2","vehicleBelt":"B","generalUseThird":"G","newsMovie":"M","devmarker":"F6","movementCrawl":"Z","newsTools":"H","housingSecondary":"G","distanceChange":"G","radiotoggle":",","generalUse":"E"}', '{}'),
	(4, 'steam:110000118ef8d05', 'STEAM_0:1:209176194', '76561198378618110', 'license:425ef006d3b1369424ae2f9feb6b4304add6abe2', 'ZUENTITY', '0.0.0.0', 'owner', '2022-08-25 00:30:21', '{"vehicleHotwire":"H","vehicleSlights":"Q","devmenu":"F5","heliCam":"E","switchRadioEmergency":"9","movementCrouch":"X","vehicleDoors":"L","radiovolumeup":"]","handheld":"LEFTSHIFT+P","helirappel":"X","vehicleSearch":"G","generalProp":"7","tokoptt":"CAPS","actionBar":"Z","generalEscapeMenu":"ESC","helivision":"INPUTAIM","housingMain":"H","helispotlight":"G","vehicleSsound":"LEFTALT","showDispatchLog":"z","generalUseSecondaryWorld":"F","carStereo":"LEFTALT+P","generalScoreboard":"U","generalTackle":"LEFTSHIFT+E","vehicleCruise":"X","devcloak":"F3","loudSpeaker":"-","generalPhone":"P","vehicleSnavigate":"R","tokoToggle":"LEFTCTRL","generalMenu":"F1","generalUseSecondary":"ENTER","newsNormal":"E","radiovolumedown":"[","helilockon":"SPACE","generalInventory":"TAB","newsMovie":"M","generalUseThird":"G","vehicleBelt":"B","devmarker":"F6","movementCrawl":"Z","devnoclip":"F2","generalChat":"T","newsTools":"H","housingSecondary":"G","distanceChange":"G","radiotoggle":",","generalUse":"E"}', '{}'),
	(5, 'steam:11000013d2c1be8', 'STEAM_0:0:513150452', '76561198986566620', 'license:b20cdf67220a26d6f1d5926c486bd654d78bdb71', 'coreyj101997', '0.0.0.0', 'owner', '2022-08-25 14:19:10', '{"vehicleHotwire":"H","vehicleSlights":"Q","devmenu":"F5","heliCam":"E","switchRadioEmergency":"9","movementCrouch":"X","vehicleDoors":"L","radiovolumeup":"]","handheld":"LEFTSHIFT+P","helirappel":"X","vehicleSearch":"G","generalProp":"7","tokoptt":"CAPS","actionBar":"Z","generalEscapeMenu":"ESC","helivision":"INPUTAIM","housingMain":"H","helispotlight":"G","vehicleSsound":"LEFTALT","showDispatchLog":"z","generalUseSecondaryWorld":"F","carStereo":"LEFTALT+P","generalScoreboard":"U","generalTackle":"LEFTSHIFT+E","vehicleCruise":"X","devcloak":"F3","loudSpeaker":"-","generalPhone":"P","vehicleSnavigate":"R","devnoclip":"F2","generalMenu":"F1","devmarker":"F6","generalChat":"T","radiovolumedown":"[","helilockon":"SPACE","generalInventory":"TAB","movementCrawl":"Z","newsTools":"H","vehicleBelt":"B","newsNormal":"E","generalUseThird":"G","newsMovie":"M","tokoToggle":"LEFTCTRL","generalUseSecondary":"ENTER","housingSecondary":"G","distanceChange":"G","radiotoggle":",","generalUse":"E"}', '{}'),
	(6, 'steam:110000114d6833e', 'STEAM_0:0:174801311', '76561198309868350', 'license:e236a68620d72b307a8378178cc78966111bdd34', 'GingE04', '0.0.0.0', 'owner', '2022-08-25 14:42:38', '{"vehicleSnavigate":"R","radiotoggle":",","generalTackle":"LEFTSHIFT+E","vehicleDoors":"L","movementCrouch":"X","showDispatchLog":"z","devmarker":"F6","generalProp":"7","tokoptt":"CAPS","helispotlight":"G","generalMenu":"F1","generalUseSecondaryWorld":"F","helivision":"INPUTAIM","generalPhone":"P","loudSpeaker":"-","generalUseThird":"G","carStereo":"LEFTALT+P","helirappel":"X","generalScoreboard":"U","newsTools":"H","movementCrawl":"Z","housingMain":"H","generalUse":"E","tokoToggle":"LEFTCTRL","actionBar":"Z","handheld":"LEFTSHIFT+P","generalUseSecondary":"ENTER","switchRadioEmergency":"9","vehicleSearch":"G","radiovolumeup":"]","vehicleHotwire":"H","devnoclip":"F2","newsNormal":"E","devcloak":"F3","generalInventory":"TAB","newsMovie":"M","helilockon":"SPACE","heliCam":"E","radiovolumedown":"[","vehicleBelt":"B","vehicleCruise":"X","vehicleSlights":"Q","generalEscapeMenu":"ESC","vehicleSsound":"LEFTALT","generalChat":"T","devmenu":"F5","housingSecondary":"G","distanceChange":"G"}', '{}'),
	(7, 'steam:110000115378acb', 'STEAM_0:1:177980773', '76561198316227280', 'license:e0ec4b52b1f149886ee93eb35ac3be9153d0e456', 'EgN-S| Central', '0.0.0.0', 'owner', '2022-08-25 19:39:13', '{"generalUse":"E","showDispatchLog":"z","devnoclip":"F2","generalUseSecondary":"ENTER","tokoToggle":"LEFTCTRL","helirappel":"X","distanceChange":"G","newsTools":"H","generalScoreboard":"U","tokoptt":"CAPS","devcloak":"F3","housingMain":"H","vehicleCruise":"X","movementCrouch":"X","newsNormal":"E","generalInventory":"TAB","devmenu":"F5","switchRadioEmergency":"9","vehicleHotwire":"H","generalEscapeMenu":"ESC","generalUseSecondaryWorld":"F","carStereo":"LEFTALT+P","vehicleDoors":"L","devmarker":"F6","generalPhone":"P","generalTackle":"LEFTSHIFT+E","movementCrawl":"Z","loudSpeaker":"-","handheld":"LEFTSHIFT+P","vehicleSlights":"Q","vehicleSearch":"G","radiotoggle":",","helispotlight":"G","housingSecondary":"G","helivision":"INPUTAIM","radiovolumeup":"]","generalUseThird":"G","vehicleSsound":"LEFTALT","newsMovie":"M","vehicleBelt":"B","generalChat":"T","actionBar":"Z","helilockon":"SPACE","generalProp":"7","vehicleSnavigate":"R","generalMenu":"F1","heliCam":"E","radiovolumedown":"["}', '{}'),
	(8, 'steam:110000115e1cbd0', 'STEAM_0:0:183559656', '76561198327385040', 'license:e3af2efdda943c0e7c62ec725611e35f57b40f4d', 'Killercroc', '0.0.0.0', 'user', '2022-09-06 02:18:22', '{"housingSecondary":"G","vehicleSsound":"LEFTALT","generalInventory":"TAB","newsMovie":"M","radiovolumeup":"]","movementCrouch":"X","newsTools":"H","generalUseSecondaryWorld":"F","housingMain":"H","helispotlight":"G","radiovolumedown":"[","helivision":"INPUTAIM","devnoclip":"F2","devmenu":"F5","distanceChange":"G","handheld":"LEFTSHIFT+P","vehicleDoors":"L","actionBar":"Z","showDispatchLog":"z","switchRadioEmergency":"9","generalEscapeMenu":"ESC","newsNormal":"E","radiotoggle":",","vehicleBelt":"B","tokoToggle":"LEFTCTRL","vehicleHotwire":"H","carStereo":"LEFTALT+P","vehicleSnavigate":"R","generalScoreboard":"U","tokoptt":"CAPS","generalPhone":"P","generalUse":"E","generalMenu":"F1","movementCrawl":"Z","generalUseSecondary":"ENTER","devcloak":"F3","helirappel":"X","vehicleSlights":"Q","generalTackle":"LEFTSHIFT+E","loudSpeaker":"-","devmarker":"F6","heliCam":"E","vehicleSearch":"G","generalProp":"7","generalUseThird":"G","vehicleCruise":"X","generalChat":"T","helilockon":"SPACE"}', '{}'),
	(9, 'steam:11000014b776579', 'STEAM_0:1:633057980', '76561199226381700', 'license:bedbd35d8387598a23a281ebedefc3eb11d82cf5', 'D1ReCtOr J', '0.0.0.0', 'user', '2022-09-07 19:22:32', '{"vehicleHotwire":"H","vehicleSlights":"Q","devmenu":"F5","heliCam":"E","switchRadioEmergency":"9","movementCrouch":"X","vehicleDoors":"L","radiovolumeup":"]","handheld":"LEFTSHIFT+P","helirappel":"X","vehicleSearch":"G","generalProp":"7","tokoptt":"CAPS","actionBar":"Z","generalEscapeMenu":"ESC","helivision":"INPUTAIM","housingMain":"H","helispotlight":"G","vehicleSsound":"LEFTALT","showDispatchLog":"z","generalUseSecondaryWorld":"F","carStereo":"LEFTALT+P","generalScoreboard":"U","generalUseThird":"G","vehicleCruise":"X","devcloak":"F3","loudSpeaker":"-","generalPhone":"P","vehicleSnavigate":"R","devnoclip":"F2","generalMenu":"F1","generalChat":"T","newsNormal":"E","radiovolumedown":"[","helilockon":"SPACE","generalInventory":"TAB","tokoToggle":"LEFTCTRL","newsMovie":"M","vehicleBelt":"B","movementCrawl":"Z","distanceChange":"G","generalTackle":"LEFTSHIFT+E","generalUseSecondary":"ENTER","newsTools":"H","housingSecondary":"G","devmarker":"F6","radiotoggle":",","generalUse":"E"}', '{}'),
	(10, 'steam:110000153e56be0', 'STEAM_0:0:703772144', '76561199367810020', 'license:ce382c26022c3ff41ea3257ea80d3c25cf7f34ca', 'laurenmaewf', '0.0.0.0', 'user', '2022-09-07 22:19:18', '{"vehicleHotwire":"H","vehicleSlights":"Q","devmenu":"F5","heliCam":"E","switchRadioEmergency":"9","movementCrouch":"X","vehicleDoors":"L","radiovolumeup":"]","handheld":"LEFTSHIFT+P","helirappel":"X","vehicleSearch":"G","generalProp":"7","tokoptt":"CAPS","actionBar":"Z","generalEscapeMenu":"ESC","helivision":"INPUTAIM","housingMain":"H","helispotlight":"G","vehicleSsound":"LEFTALT","showDispatchLog":"z","generalUseSecondaryWorld":"F","carStereo":"LEFTALT+P","newsMovie":"M","generalUseThird":"G","vehicleCruise":"X","devcloak":"F3","movementCrawl":"Z","generalPhone":"P","vehicleSnavigate":"R","tokoToggle":"LEFTCTRL","generalMenu":"F1","loudSpeaker":"-","generalChat":"T","radiovolumedown":"[","helilockon":"SPACE","generalInventory":"TAB","devnoclip":"F2","generalTackle":"LEFTSHIFT+E","vehicleBelt":"B","devmarker":"F6","newsTools":"H","newsNormal":"E","generalScoreboard":"U","generalUseSecondary":"ENTER","housingSecondary":"G","distanceChange":"G","radiotoggle":",","generalUse":"E"}', '{}');

-- Dumping structure for table qpixel.user_apartment
CREATE TABLE IF NOT EXISTS `user_apartment` (
  `room` int(11) NOT NULL AUTO_INCREMENT,
  `roomType` int(1) DEFAULT NULL,
  `cid` mediumtext NOT NULL,
  `mykeys` varchar(50) NOT NULL DEFAULT '[]',
  `ilness` mediumtext NOT NULL DEFAULT 'Alive',
  `isImprisoned` mediumtext NOT NULL DEFAULT '0',
  `isClothesSpawn` mediumtext NOT NULL DEFAULT 'true',
  `cash` int(11) DEFAULT 0,
  PRIMARY KEY (`room`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_apartment: ~0 rows (approximately)

-- Dumping structure for table qpixel.user_bans
CREATE TABLE IF NOT EXISTS `user_bans` (
  `name` longtext NOT NULL DEFAULT '',
  `license` longtext NOT NULL DEFAULT '',
  `discord` longtext NOT NULL DEFAULT '',
  `ip` longtext NOT NULL DEFAULT '',
  `reason` longtext NOT NULL,
  `expire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bannedby` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_bans: ~0 rows (approximately)

-- Dumping structure for table qpixel.user_boat
CREATE TABLE IF NOT EXISTS `user_boat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT '{}',
  `boat_name` varchar(255) DEFAULT '{}',
  `boat_model` varchar(255) DEFAULT '{}',
  `boat_price` varchar(255) DEFAULT '{}',
  `boat_plate` varchar(255) DEFAULT '{}',
  `boat_state` varchar(255) DEFAULT '{}',
  `boat_colorprimary` varchar(255) DEFAULT '{}',
  `boat_colorsecondary` varchar(255) DEFAULT '{}',
  `boat_pearlescentcolor` varchar(255) DEFAULT '{}',
  `boat_wheelcolor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_boat: ~0 rows (approximately)

-- Dumping structure for table qpixel.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `identifier` varchar(40) NOT NULL,
  `name` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_contacts: ~0 rows (approximately)

-- Dumping structure for table qpixel.user_inventory2
CREATE TABLE IF NOT EXISTS `user_inventory2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `item_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quality` int(11) NOT NULL DEFAULT 100,
  `information` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=949 DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.user_inventory2: ~308 rows (approximately)
INSERT INTO `user_inventory2` (`id`, `name`, `item_id`, `quality`, `information`, `slot`, `dropped`, `creationDate`) VALUES
	(1, 'ply-15', 'mobilephone', 100, '{}', 1, 0, 1661387307183),
	(2, 'ply-15', 'lockpick', 100, '{}', 3, 0, 1661387307185),
	(3, 'ply-15', 'lockpick', 100, '{}', 3, 0, 1661387307185),
	(4, 'ply-15', 'water', 100, '{}', 5, 0, 1661387307185),
	(5, 'ply-15', 'water', 100, '{}', 5, 0, 1661387307185),
	(6, 'ply-15', 'water', 100, '{}', 5, 0, 1661387307185),
	(7, 'ply-15', 'sandwich', 100, '{}', 4, 0, 1661387307185),
	(8, 'ply-15', 'sandwich', 100, '{}', 4, 0, 1661387307185),
	(9, 'ply-15', 'sandwich', 100, '{}', 4, 0, 1661387307185),
	(10, 'ply-15', 'repairkit', 100, '{}', 6, 0, 1661387307185),
	(11, 'ply-15', 'skateboard', 100, '{}', 7, 0, 1661387307186),
	(12, 'ply-15', 'idcard', 100, '{"Identifier":"15","Name":"Kazumi","Surname":"Developer","Sex":"M","DOB":"1994-01-01"}', 2, 0, 1661387307184),
	(15, 'ply-17', 'mobilephone', 100, '{}', 1, 0, 1661390741456),
	(23, 'ply-16', 'mobilephone', 100, '{}', 9, 0, 1661392559917),
	(161, 'Trunk-21LGC345', 'darkmarketpackage', 100, '{}', 4, 0, 1661401023499),
	(162, 'Trunk-21LGC345', 'darkmarketpackage', 100, '{}', 5, 0, 1661401036074),
	(166, 'Trunk-21LGC345', 'darkmarketpackage', 100, '{}', 9, 0, 1661401069579),
	(167, 'Trunk-21LGC345', 'darkmarketpackage', 100, '{}', 10, 0, 1661401077846),
	(178, 'tuner-shop-stash', 'fries', 100, '{}', 25, 0, 1661436276324),
	(184, 'ply-19', 'mobilephone', 100, '{}', 36, 0, 1661436887169),
	(186, 'ply-20', 'idcard', 100, '{"Identifier":"20","Name":"COREY","Surname":"JACKSON","Sex":"M","DOB":"1997-11-03"}', 6, 0, 1661438002047),
	(193, 'ply-21', 'mobilephone', 100, '{}', 2, 0, 1661440935285),
	(195, 'tuner-shop-stash', 'turbokit', 100, '{}', 1, 0, 1661442030505),
	(196, 'tuner-shop-stash', 'turbotempkit', 100, '{}', 6, 0, 1661442062411),
	(201, 'Glovebox-02JWM791', 'water', 100, '{}', 2, 0, 1661457107830),
	(205, 'Glovebox-02JWM791', 'fries', 100, '{}', 1, 0, 1661457112232),
	(206, 'Glovebox-02JWM791', 'fries', 100, '{}', 1, 0, 1661457112232),
	(207, 'Trunk-20GAQ739', '100416529', 100, '{"cartridge":"16-QAn-366","serial":"16","quality":"Good"}', 1, 0, 1661458129302),
	(208, 'Trunk-20GAQ739', '100416529', 100, '{"cartridge":"16-QAn-366","serial":"16","quality":"Good"}', 1, 0, 1661458129302),
	(209, 'Trunk-20GAQ739', '100416529', 100, '{"cartridge":"16-QAn-366","serial":"16","quality":"Good"}', 1, 0, 1661458129302),
	(213, 'ply-16', 'subammo', 100, '{}', 6, 0, 1661458233799),
	(214, 'ply-16', 'subammo', 100, '{}', 6, 0, 1661458233799),
	(217, 'ply-16', 'pixellaptop', 100, '{}', 14, 0, 1661458497683),
	(229, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459515323),
	(230, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459515323),
	(231, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459515323),
	(232, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459515323),
	(233, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459515323),
	(234, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459515323),
	(235, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459515323),
	(236, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459515323),
	(237, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459595384),
	(238, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459595384),
	(239, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459595385),
	(240, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459595385),
	(241, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459595385),
	(249, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459627029),
	(250, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459627029),
	(251, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459627029),
	(252, 'ply-17', 'plastic', 100, '{}', 7, 0, 1661459627029),
	(253, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459627029),
	(254, 'ply-16', 'rubber', 100, '{}', 13, 0, 1661459627029),
	(329, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(330, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(331, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(332, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(333, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(334, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(335, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(336, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(337, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(338, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(339, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(340, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(341, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(342, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(343, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(344, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(345, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(346, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(347, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(348, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(349, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(350, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(351, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(352, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(353, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(354, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(355, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(356, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(357, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(358, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(359, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(360, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(361, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(362, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(363, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(364, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(365, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(366, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(367, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(368, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(369, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(370, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(371, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(372, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(373, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(374, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(375, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(376, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(377, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(378, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(379, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(380, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(381, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(382, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(383, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(384, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(385, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(386, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(387, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(388, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(389, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(390, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(391, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(392, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(393, 'ply-17', 'recyclablematerial', 100, '{}', 8, 0, 1661459737636),
	(394, 'ply-22', 'mobilephone', 100, '{}', 1, 0, 1661459762251),
	(469, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(470, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(471, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(472, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(473, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(474, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(475, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(476, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(477, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(478, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(479, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(480, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(481, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(482, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(483, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(484, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(485, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(486, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(487, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(488, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(489, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(490, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(491, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(492, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(493, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(494, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(495, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(496, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(497, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(498, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(499, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(500, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(501, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(502, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(503, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(504, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(505, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(506, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(507, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(508, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(509, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(510, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(511, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(512, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(513, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(514, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(515, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(516, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(517, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(518, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(519, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(520, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(521, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(522, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(523, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(524, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(525, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(526, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(527, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(528, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(529, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(530, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(531, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(532, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(533, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(534, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(535, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(536, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(537, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(538, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(539, 'motel-1-20', 'recyclablematerial', 100, '{}', 1, 0, 1661459969125),
	(542, 'Glovebox-26AGY145', 'enginetempkit', 100, '{}', 3, 0, 1661461143781),
	(543, 'Glovebox-26AGY145', 'enginetempkit', 100, '{}', 3, 0, 1661461143781),
	(559, 'Glovebox-26AGY145', 'turbokit', 100, '{}', 2, 0, 1661461321790),
	(560, 'Glovebox-26AGY145', 'turbokit', 100, '{}', 2, 0, 1661461321790),
	(565, 'ply-20', 'mobilephone', 100, '{}', 9, 0, 1661461939302),
	(566, 'tuner-shop-stash', 'suspensionkit', 100, '{}', 11, 0, 1661462813994),
	(567, 'tuner-shop-stash', 'sfixbrake', 100, '{}', 16, 0, 1661462892168),
	(572, 'ply-22', '1192676223', 82, '{"cartridge":"22-Gun-554","serial":"22","quality":"Good"}', 3, 0, 1661014645626),
	(587, 'Glovebox-26AGY145', 'harness', 100, '{}', 1, 0, 1661464963053),
	(613, 'ply-22', 'rifleammo', 100, '{}', 2, 0, 1661465912494),
	(629, 'Glovebox-83WSJ287', '2578778090', 100, '{"cartridge":"20-ZQu-101","serial":"20","quality":"Good"}', 2, 0, 1661466278871),
	(630, 'Glovebox-83WSJ287', '3638508604', 100, '{"cartridge":"20-yDg-182","serial":"20","quality":"Good"}', 1, 0, 1661466282842),
	(631, 'ply-20', '-820634585', 98, '{"cartridge":"20-qCC-455","serial":"20","quality":"Good"}', 3, 0, 1661416297301),
	(665, 'Glovebox-83WSJ287', 'rubberslugpd', 100, '{}', 3, 0, 1661467218812),
	(668, 'Glovebox-83WSJ287', 'rubberslugs', 100, '{}', 4, 0, 1661467226204),
	(669, 'Glovebox-83WSJ287', 'rubberslugs', 100, '{}', 4, 0, 1661467230862),
	(673, 'ply-17', '-1024456158', 100, '{"cartridge":"17-SRD-509","serial":"17","quality":"Good"}', 2, 0, 1661467927192),
	(674, 'ply-17', '2227010557', 100, '{"cartridge":"17-Dyg-916","serial":"17","quality":"Good"}', 3, 0, 1661467932456),
	(675, 'ply-22', '2227010557', 100, '{"cartridge":"22-ekA-14","serial":"22","quality":"Good"}', 4, 0, 1661468058099),
	(676, 'ply-16', 'advlockpick', 40, '{}', 12, 0, 1659968225919),
	(677, 'ply-16', 'trackerdisabler', 100, '{}', 7, 0, 1661469219841),
	(678, 'ply-17', 'pdbadge', 100, '{}', 6, 0, 1661473783131),
	(679, 'ply-16', 'mk2usbdevice', 100, '{}', 20, 0, 1661474704603),
	(680, 'ply-16', 'mk2usbdevice', 100, '{}', 20, 0, 1661474706073),
	(681, 'ply-16', 'vpnxja', 100, '{}', 10, 0, 1661474790772),
	(684, 'ply-16', '453432689', 69, '{"cartridge":"16-dRc-548","serial":"16","quality":"Good"}', 1, 0, 1660703067008),
	(695, 'container-6799482-evidence bag', 'racingusb0', 100, '{}', 2, 0, 1661483685160),
	(702, 'Glovebox-02JWM791', 'huntingbait', 100, '{}', 4, 0, 1661484626410),
	(704, 'Glovebox-02JWM791', 'freshmeat', 100, '{}', 3, 0, 1661484987256),
	(705, 'Glovebox-02JWM791', 'freshmeat', 100, '{}', 3, 0, 1661484987256),
	(706, 'Glovebox-02JWM791', 'freshmeat', 100, '{}', 3, 0, 1661484987256),
	(707, 'Glovebox-02JWM791', 'freshmeat', 100, '{}', 3, 0, 1661484987256),
	(715, 'rifle-rack61URS848', 'Bankbox', 100, '{}', 1, 0, 1661807868539),
	(716, 'rifle-rack61URS848', 'Bankboxkey', 100, '{}', 2, 0, 1661807873294),
	(717, 'rifle-rack61URS848', 'Bankboxkey', 100, '{}', 2, 0, 1661807893810),
	(719, 'storage_unit_2', 'newscamera', 100, '{}', 1, 0, 1661830092749),
	(722, 'ply-16', 'camera', 100, '{}', 15, 0, 1661833539976),
	(730, 'rifle-rack61URS848', 'car_bomb', 100, '{}', 4, 0, 1662214239508),
	(731, 'rifle-rack61URS848', 'car_bomb', 100, '{}', 3, 0, 1662214239508),
	(732, 'rifle-rack61URS848', 'car_bomb', 100, '{}', 3, 0, 1662214239508),
	(733, 'rifle-rack61URS848', 'car_bomb', 100, '{}', 5, 0, 1662214239508),
	(734, 'rifle-rack61URS848', 'car_bomb', 100, '{}', 6, 0, 1662214239508),
	(737, 'Glovebox-64BXL176', 'bandage', 100, '{}', 4, 0, 1662335148925),
	(738, 'Glovebox-64BXL176', 'bandage', 100, '{}', 4, 0, 1662335151213),
	(741, 'Glovebox-64BXL176', 'ciggy', 100, '{}', 3, 0, 1662335166269),
	(747, 'Glovebox-64BXL176', 'lighter', 100, '{}', 2, 0, 1662335174192),
	(756, 'ply-24', 'rentalpapers', 100, '{}', 7, 0, 1662431180290),
	(758, 'ply-24', 'icecreamingred', 100, '{}', 10, 0, 1662431332724),
	(759, 'ply-24', 'mobilephone', 100, '{}', 1, 0, 1662431569418),
	(760, 'ply-24', 'DuffelBag', 100, '{}', 2, 0, 1662431571796),
	(762, 'ply-16', 'advlockpick', 100, '{}', 12, 0, 1662433013422),
	(763, 'Glovebox-64BXL176', 'sfixbrake', 100, '{}', 1, 0, 1662433038699),
	(764, 'Glovebox-64BXL176', 'sfixbrake', 100, '{}', 1, 0, 1662433040010),
	(807, 'ply-16', '2343591895', 100, '{"cartridge":"16-hOD-688","serial":"16","quality":"Good"}', 5, 0, 1662434037602),
	(808, 'ply-16', 'evidence', 100, '{"Identifier":"20-qCC-455","type":"casing","other":-820634585}', 16, 0, 1662434051057),
	(809, 'ply-16', 'pdevidencebag', 100, '{"_hideKeys":["inventoryId","slots","weight"],"slots":15,"inventoryId":"container-6799482-evidence bag","weight":10,"bagName":"Evidence: 55671"}', 8, 0, 1662434571106),
	(810, 'ply-16', '-820634585', 100, '{"cartridge":"16-rsO-971","serial":"16","quality":"Good"}', 18, 0, 1662435545935),
	(815, 'ply-16', 'cuffs', 100, '{}', 11, 0, 1662435611630),
	(816, 'ply-19', '-820634585', 100, '{"cartridge":"19-bNi-325","serial":"19","quality":"Good"}', 7, 0, 1662435634425),
	(822, 'trays-Uwu Cafe Tray', 'cuffs', 100, '{}', 1, 0, 1662435644617),
	(843, 'motel-1-20', 'ownerreceipt', 100, '{"Price":58,"Creator":"COREY JACKSON","Comment":""}', 2, 0, 1662445759214),
	(844, 'motel-1-20', 'ownerreceipt', 100, '{"Price":58,"Creator":"COREY JACKSON","Comment":"corey"}', 3, 0, 1662445888552),
	(872, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(873, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(874, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(875, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(876, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(877, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(878, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(879, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(880, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(881, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(882, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(883, 'ply-20', 'taserammo', 100, '{}', 4, 0, 1662510888509),
	(884, 'ply-19', 'vpnxj', 100, '{}', 6, 0, 1662514571161),
	(885, 'ply-19', 'vpnxja', 100, '{}', 3, 0, 1662515032775),
	(886, 'ply-16', 'vpnxj', 100, '{}', 17, 0, 1662515033130),
	(887, 'ply-16', 'racingusb2', 100, '{"Alias":"big dick","characterId":"16"}', 19, 0, 1662515163846),
	(889, 'ply-16', 'racingusb0', 100, '{}', 2, 0, 1662515565144),
	(890, 'ply-16', 'racingusb3', 100, '{}', 3, 0, 1662515593971),
	(892, 'ply-19', 'dashcamstatic', 100, '{}', 5, 0, 1662515606583),
	(893, 'ply-16', 'pixellaptop', 100, '{}', 4, 0, 1662515768935),
	(894, 'ply-19', 'dashcamstatic', 100, '{}', 4, 0, 1662517852148),
	(895, 'ply-19', 'dashcamstatic', 100, '{}', 4, 0, 1662517852148),
	(896, 'ply-19', 'dashcamstatic', 100, '{}', 4, 0, 1662517852148),
	(897, 'ply-19', 'dashcamstatic', 100, '{}', 4, 0, 1662517852148),
	(898, 'ply-19', 'dashcamstatic', 100, '{}', 4, 0, 1662517852148),
	(905, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579226474),
	(906, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579226474),
	(907, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579226474),
	(908, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579226474),
	(909, 'ply-19', 'lockpick', 95, '{}', 9, 0, 1662454347407),
	(910, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(911, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(912, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(913, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(914, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(915, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(916, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(917, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(918, 'ply-20', 'lockpick', 100, '{}', 5, 0, 1662579511612),
	(924, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579563449),
	(925, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579563449),
	(926, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579563449),
	(927, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579563449),
	(928, 'ply-19', 'nitrous', 100, '{}', 2, 0, 1662579563449),
	(934, 'ply-20', 'nitrous', 100, '{}', 1, 0, 1662589733803),
	(935, 'ply-20', 'nitrous', 100, '{}', 1, 0, 1662589733803),
	(936, 'ply-20', 'nitrous', 100, '{}', 1, 0, 1662589733803),
	(937, 'ply-20', 'nitrous', 100, '{}', 1, 0, 1662589733803),
	(940, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(941, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(942, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(943, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(944, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(945, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(946, 'ply-20', 'harness', 100, '{}', 2, 0, 1662590394700),
	(947, 'ply-25', 'mobilephone', 100, '{}', 1, 0, 1662591204853),
	(948, 'ply-19', 'racingusb2', 100, '{"Alias":"Dick Bigmum","characterId":"19"}', 1, 0, 1662596959757);

-- Dumping structure for table qpixel.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `cid` longtext NOT NULL,
  `type` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_licenses: ~77 rows (approximately)
INSERT INTO `user_licenses` (`cid`, `type`, `status`) VALUES
	('15', 'Hunting', 0),
	('15', 'Driver', 1),
	('15', 'Weapon', 0),
	('15', 'Fishing', 0),
	('15', 'Pilot', 0),
	('15', 'Bar', 0),
	('15', 'Business', 0),
	('19', 'Weapon', 1),
	('19', 'Driver', 1),
	('19', 'Hunting', 0),
	('19', 'Fishing', 0),
	('19', 'Pilot', 0),
	('19', 'Business', 0),
	('19', 'Bar', 0),
	('16', 'Weapon', 0),
	('16', 'Driver', 1),
	('16', 'Hunting', 0),
	('16', 'Fishing', 1),
	('16', 'Pilot', 0),
	('16', 'Business', 0),
	('16', 'Bar', 0),
	('17', 'Weapon', 0),
	('17', 'Driver', 1),
	('17', 'Bar', 0),
	('17', 'Business', 0),
	('17', 'Pilot', 0),
	('17', 'Hunting', 0),
	('17', 'Fishing', 0),
	('20', 'Weapon', 0),
	('20', 'Driver', 1),
	('20', 'Hunting', 0),
	('20', 'Fishing', 0),
	('20', 'Pilot', 0),
	('20', 'Bar', 0),
	('20', 'Business', 0),
	('21', 'Weapon', 0),
	('21', 'Driver', 1),
	('21', 'Hunting', 0),
	('21', 'Fishing', 0),
	('21', 'Pilot', 0),
	('21', 'Business', 0),
	('21', 'Bar', 0),
	('22', 'Weapon', 0),
	('22', 'Fishing', 0),
	('22', 'Driver', 1),
	('22', 'Pilot', 0),
	('22', 'Bar', 0),
	('22', 'Hunting', 0),
	('22', 'Business', 0),
	('23', 'Weapon', 0),
	('23', 'Driver', 1),
	('23', 'Hunting', 0),
	('23', 'Fishing', 0),
	('23', 'Pilot', 0),
	('23', 'Business', 0),
	('23', 'Bar', 0),
	('24', 'Pilot', 0),
	('24', 'Hunting', 0),
	('24', 'Business', 0),
	('24', 'Fishing', 0),
	('24', 'Weapon', 0),
	('24', 'Driver', 1),
	('24', 'Bar', 0),
	('25', 'Driver', 1),
	('25', 'Pilot', 0),
	('25', 'Business', 0),
	('25', 'Fishing', 0),
	('25', 'Hunting', 0),
	('25', 'Weapon', 0),
	('25', 'Bar', 0),
	('28', 'Weapon', 0),
	('28', 'Driver', 1),
	('28', 'Hunting', 0),
	('28', 'Fishing', 0),
	('28', 'Pilot', 0),
	('28', 'Bar', 0),
	('28', 'Business', 0);

-- Dumping structure for table qpixel.user_messages
CREATE TABLE IF NOT EXISTS `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table qpixel.user_messages: 0 rows
/*!40000 ALTER TABLE `user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_messages` ENABLE KEYS */;

-- Dumping structure for table qpixel.user_priors
CREATE TABLE IF NOT EXISTS `user_priors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(255) NOT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `times` int(255) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_priors: ~10 rows (approximately)
INSERT INTO `user_priors` (`id`, `cid`, `charge`, `times`) VALUES
	(1, 19, '1st Degree Murder of a Peace Officer', 1),
	(2, 19, 'Attempted Murder of a Peace Officer', 1),
	(3, 19, 'Improper Entry by an Alien', 1),
	(4, 19, 'Failure to Comply and Relinquish to a Seizure Warrant', 1),
	(5, 867, 'Failure to stop at Red Light', 6),
	(6, 867, 'Attempted Murder of a Peace Officer', 1),
	(7, 16, 'Speeding 20mph over', 3),
	(8, 16, 'Operating a Motorcycle Without a Helmet', 3),
	(9, 16, 'Obstruction of Justice', 3),
	(10, 15, 'Jay Walking', 2);

-- Dumping structure for table qpixel.user_settings
CREATE TABLE IF NOT EXISTS `user_settings` (
  `hex_id` varchar(255) NOT NULL DEFAULT '',
  `settings` varchar(255) DEFAULT '{}',
  PRIMARY KEY (`hex_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.user_settings: ~0 rows (approximately)

-- Dumping structure for table qpixel.variables
CREATE TABLE IF NOT EXISTS `variables` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table qpixel.variables: ~0 rows (approximately)

-- Dumping structure for table qpixel.vehicle_display
CREATE TABLE IF NOT EXISTS `vehicle_display` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_turkish_ci NOT NULL,
  `commission` int(11) NOT NULL DEFAULT 10,
  `baseprice` int(11) NOT NULL DEFAULT 25,
  `price` int(11) DEFAULT 25000,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- Dumping data for table qpixel.vehicle_display: ~0 rows (approximately)

-- Dumping structure for table qpixel.vehicle_mdt
CREATE TABLE IF NOT EXISTS `vehicle_mdt` (
  `dbid` int(11) NOT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `notes` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT 'https://cdn.discordapp.com/attachments/832371566859124821/881624386317201498/Screenshot_1607.png',
  `code` int(11) DEFAULT 0,
  `stolen` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.vehicle_mdt: ~0 rows (approximately)

-- Dumping structure for table qpixel.vip_list
CREATE TABLE IF NOT EXISTS `vip_list` (
  `id` int(11) DEFAULT NULL,
  `steamid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.vip_list: ~0 rows (approximately)

-- Dumping structure for table qpixel.weed
CREATE TABLE IF NOT EXISTS `weed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) DEFAULT 0,
  `y` int(11) DEFAULT 0,
  `z` int(11) DEFAULT 0,
  `growth` int(11) DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  `time` longtext DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table qpixel.weed: ~0 rows (approximately)

-- Dumping structure for table qpixel.weed_plants
CREATE TABLE IF NOT EXISTS `weed_plants` (
  `id` int(11) DEFAULT 0,
  `coords` varchar(500) DEFAULT '',
  `seed` varchar(255) DEFAULT NULL,
  `growth` varchar(50) DEFAULT '0',
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.weed_plants: ~0 rows (approximately)

-- Dumping structure for table qpixel.wenmo_logs
CREATE TABLE IF NOT EXISTS `wenmo_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT 0,
  `numfrom` varchar(10) DEFAULT '0',
  `numto` varchar(10) DEFAULT '0',
  `amount` int(11) DEFAULT 0,
  `comment` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.wenmo_logs: ~0 rows (approximately)

-- Dumping structure for table qpixel._business_logs
CREATE TABLE IF NOT EXISTS `_business_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `data_type` varchar(50) DEFAULT NULL,
  `data_info` varchar(50) DEFAULT NULL,
  `business_id` varchar(50) DEFAULT NULL,
  `data_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._business_logs: ~3 rows (approximately)
INSERT INTO `_business_logs` (`id`, `user_name`, `data_type`, `data_info`, `business_id`, `data_date`) VALUES
	(1, 'Karxi Deving', 'Edited Role', 'Owner', 'pdm', 'Thursday, 08 August 2022'),
	(2, 'andoo potate', 'Edited Role', 'Owner', 'gallery', 'Tuesday, 09 September 2022'),
	(3, 'andoo potate', 'Edited Role', 'Owner', 'hayes_autos', 'Tuesday, 09 September 2022'),
	(4, 'andoo potate', 'Edited Role', 'Owner', 'police', 'Wednesday, 09 September 2022');

-- Dumping structure for table qpixel._cameras
CREATE TABLE IF NOT EXISTS `_cameras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `coords` longtext DEFAULT NULL,
  `rotation` varchar(50) DEFAULT NULL,
  `cid` longtext DEFAULT NULL,
  `ownerCid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._cameras: ~2 rows (approximately)
INSERT INTO `_cameras` (`id`, `name`, `coords`, `rotation`, `cid`, `ownerCid`) VALUES
	(9, 'serfse', '{"x":508.08721923828127,"y":3098.205810546875,"z":41.81607818603515}', '{"x":0,"y":0,"z":-130.63963317871095}', '[{"cid":19}]', 19),
	(10, 'FUCK', '{"z":31.94124412536621,"y":-988.4765625,"x":425.4797668457031}', '{"z":-171.60711669921876,"y":0,"x":0}', '[{"cid":19}]', 19);

-- Dumping structure for table qpixel._character_crypto_wallet
CREATE TABLE IF NOT EXISTS `_character_crypto_wallet` (
  `id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._character_crypto_wallet: ~0 rows (approximately)

-- Dumping structure for table qpixel._phone_contact
CREATE TABLE IF NOT EXISTS `_phone_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(10) unsigned NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `number` char(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._phone_contact: ~0 rows (approximately)

-- Dumping structure for table qpixel._phone_message
CREATE TABLE IF NOT EXISTS `_phone_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_from` char(50) NOT NULL DEFAULT '0',
  `number_to` char(50) NOT NULL DEFAULT '0',
  `message` varchar(255) DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._phone_message: ~0 rows (approximately)

-- Dumping structure for table qpixel._scenes
CREATE TABLE IF NOT EXISTS `_scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` varchar(1020) CHARACTER SET utf8mb4 NOT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `color` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `distance` float NOT NULL,
  `font` varchar(50) NOT NULL,
  `caret` varchar(50) NOT NULL,
  `solid` varchar(50) NOT NULL,
  `background` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table qpixel._scenes: ~0 rows (approximately)

-- Dumping structure for table qpixel._transaction_log
CREATE TABLE IF NOT EXISTS `_transaction_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(36) NOT NULL DEFAULT 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxx',
  `payee_account_id` int(11) DEFAULT NULL,
  `receiver_account_id` int(11) DEFAULT NULL,
  `change` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `triggered_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT unix_timestamp(),
  `tax_level` int(11) NOT NULL,
  `tax_category` int(11) NOT NULL,
  `transaction_type` enum('deposit','withdraw','transfer','payslip','venmo','purchase','forfeiture','grant') NOT NULL DEFAULT 'deposit',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `transaction_id` (`transaction_id`) USING BTREE,
  KEY `transaction_log_ibfk_3` (`payee_account_id`) USING BTREE,
  KEY `transaction_log_ibfk_2` (`payee_account_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._transaction_log: ~0 rows (approximately)

-- Dumping structure for table qpixel._twats
CREATE TABLE IF NOT EXISTS `_twats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._twats: ~0 rows (approximately)

-- Dumping structure for table qpixel._weed
CREATE TABLE IF NOT EXISTS `_weed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` varchar(1020) COLLATE utf8mb4_bin NOT NULL,
  `strain` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0,
  `last_harvest` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table qpixel._weed: ~0 rows (approximately)

-- Dumping structure for table qpixel._yellowpages
CREATE TABLE IF NOT EXISTS `_yellowpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `character_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel._yellowpages: ~0 rows (approximately)

-- Dumping structure for table qpixel.__banking_logs
CREATE TABLE IF NOT EXISTS `__banking_logs` (
  `cid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `reason` longtext NOT NULL,
  `withdraw` int(11) DEFAULT NULL,
  `business` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.__banking_logs: ~0 rows (approximately)

-- Dumping structure for table qpixel.__diamondsports
CREATE TABLE IF NOT EXISTS `__diamondsports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(50) NOT NULL DEFAULT '0',
  `date` varchar(50) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '0',
  `location` varchar(50) NOT NULL DEFAULT '0',
  `timezoneAbbreviation` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.__diamondsports: ~0 rows (approximately)

-- Dumping structure for table qpixel.__documents
CREATE TABLE IF NOT EXISTS `__documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL DEFAULT '0',
  `text` longtext NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT 'Notes',
  `authorized` longtext DEFAULT NULL,
  `temporary` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.__documents: ~13 rows (approximately)
INSERT INTO `__documents` (`id`, `owner`, `title`, `text`, `type`, `authorized`, `temporary`) VALUES
	(1, 19, 'TITS', '<p>I LIKE MEEBS</p>', 'Notes', NULL, 0),
	(2, 16, 'New Document', 'Text Goes Here', 'Notes', NULL, 0),
	(3, 16, 'New Document', 'Text Goes Here', 'Notes', NULL, 0),
	(4, 19, 'New Document', 'Text Goes Here', 'Notes', NULL, 0),
	(5, 16, 'Driver License', '<p><span><strong><span style=\'font-size:15px;\'>Issued to</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: andoo potate&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;ID: 16&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Sex: Male&nbsp;&nbsp;</span></span><br><strong><span style=\'font-size:15px;\'>Issued by</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: State Account&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Date: 2022-08-26&nbsp;&nbsp;</span></span></p>', 'Licenses', '[]', 0),
	(6, 16, 'Driver License', '<p><span><strong><span style=\'font-size:15px;\'>Issued to</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: andoo potate&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;ID: 16&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Sex: Male&nbsp;&nbsp;</span></span><br><strong><span style=\'font-size:15px;\'>Issued by</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: State Account&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Date: 2022-08-26&nbsp;&nbsp;</span></span></p>', 'Licenses', '[]', 0),
	(7, 19, 'Weapon License', '<p><span><strong><span style=\'font-size:15px;\'>Issued to</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: Karxi Deving&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;ID: 19&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Sex: Male&nbsp;&nbsp;</span></span><br><strong><span style=\'font-size:15px;\'>Issued by</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: State Account&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Date: 2022-09-01&nbsp;&nbsp;</span></span></p>', 'Licenses', '[]', 0),
	(8, 19, 'Weapon License', '<p><span><strong><span style=\'font-size:15px;\'>Issued to</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: Karxi Deving&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;ID: 19&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Sex: Male&nbsp;&nbsp;</span></span><br><strong><span style=\'font-size:15px;\'>Issued by</span></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Name: State Account&nbsp;&nbsp;</span></span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\'color: rgb(255, 255, 255);\' class=\'mkdwnpre-fenced-box\'><span class=\'markdown-fenced-box\'>&nbsp;&nbsp;Date: 2022-09-01&nbsp;&nbsp;</span></span></p>', 'Licenses', '[]', 0),
	(10, 16, 'New Document', 'Text Goes Here', 'Notes', NULL, 0),
	(11, 16, 'Sale | Kazuis big fat toe', '<p>Agreement to price $450 for kazumis toe</p>', 'Documents', NULL, 0),
	(12, 19, 'New Document', 'Text Goes Here', 'Notes', NULL, 0),
	(13, 16, 'New Document', 'Text Goes Here', 'Notes', NULL, 0),
	(14, 16, 'New Document', 'Text Goes Here', 'Notes', NULL, 0);

-- Dumping structure for table qpixel.__housedata
CREATE TABLE IF NOT EXISTS `__housedata` (
  `cid` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `house_model` int(11) DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `upfront` int(11) DEFAULT NULL,
  `housename` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `garages` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `furniture` longtext COLLATE utf8mb4_bin NOT NULL DEFAULT '{}',
  `status` mediumtext COLLATE utf8mb4_bin NOT NULL DEFAULT 'locked',
  `force_locked` mediumtext COLLATE utf8mb4_bin NOT NULL DEFAULT 'unlocked',
  `due` int(11) DEFAULT NULL,
  `overall` int(11) DEFAULT NULL,
  `payments` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `can_pay` mediumtext COLLATE utf8mb4_bin NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumping data for table qpixel.__housedata: ~0 rows (approximately)

-- Dumping structure for table qpixel.__housekeys
CREATE TABLE IF NOT EXISTS `__housekeys` (
  `cid` int(11) DEFAULT NULL,
  `house_id` int(11) DEFAULT NULL,
  `house_model` int(11) DEFAULT NULL,
  `housename` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `name` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `garages` longtext COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumping data for table qpixel.__housekeys: ~0 rows (approximately)

-- Dumping structure for table qpixel.__objects
CREATE TABLE IF NOT EXISTS `__objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `coordinates` longtext DEFAULT NULL,
  `metaData` longtext DEFAULT NULL,
  `randomId` int(255) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.__objects: ~0 rows (approximately)

-- Dumping structure for table qpixel.__scenes
CREATE TABLE IF NOT EXISTS `__scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `distance` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `caret` varchar(255) DEFAULT NULL,
  `font` varchar(255) DEFAULT NULL,
  `solid` varchar(255) DEFAULT NULL,
  `background` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.__scenes: ~0 rows (approximately)

-- Dumping structure for table qpixel.__vehiclemods
CREATE TABLE IF NOT EXISTS `__vehiclemods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durability` int(11) DEFAULT NULL,
  `license_plate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qpixel.__vehiclemods: ~16 rows (approximately)
INSERT INTO `__vehiclemods` (`id`, `durability`, `license_plate`) VALUES
	(1, 85, '20ICX177'),
	(2, 95, '26AGY145'),
	(3, 85, '85FPL750'),
	(4, 100, '83WSJ287'),
	(5, 100, '64BXL176'),
	(6, 75, '09DWY509'),
	(7, 60, '86OVF134'),
	(8, 100, '65EDD455'),
	(9, 100, '60BTY641'),
	(10, 95, '66DQR078'),
	(11, 100, '09NXI584'),
	(12, 100, '49JCL029'),
	(13, 80, '63NQH546'),
	(14, 80, '60VVQ806'),
	(15, 50, '89BGH815'),
	(16, 80, '02LJY573');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
