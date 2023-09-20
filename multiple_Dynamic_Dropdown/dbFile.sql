-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2023 at 06:34 AM
-- Server version: 8.0.34
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devadmin_nusdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientarchieve`
--

CREATE TABLE `clientarchieve` (
  `id` int NOT NULL,
  `clientid` int NOT NULL,
  `clientcompany` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `state` enum('Active','Archived','Cancelled') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `datevalue` date NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientarchieve`
--

INSERT INTO `clientarchieve` (`id`, `clientid`, `clientcompany`, `state`, `user`, `datevalue`, `description`, `timestamp`) VALUES
(1, 1, 'TestClient', 'Active', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:37:48'),
(2, 1, 'TestClient', 'Active', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:39:03'),
(3, 1, 'TestClient', 'Archived', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:43:41'),
(4, 1, 'TestClient', 'Active', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:44:07'),
(5, 1, 'TestClient', 'Cancelled', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:44:12'),
(6, 1, 'TestClient', 'Active', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:44:19'),
(7, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-10', 'ddss', '2023-08-10 08:44:35'),
(8, 12, 'client_MWH', 'Active', 'NUSADMIN', '2023-08-10', 'aaaaa', '2023-08-10 08:49:20'),
(9, 12, 'client_MWH', 'Cancelled', 'NUSADMIN', '2023-08-10', 'ccccc', '2023-08-10 08:52:01'),
(10, 12, 'client_MWH', 'Active', 'NUSADMIN', '2023-08-10', 'ddddd', '2023-08-10 08:52:18'),
(11, 12, 'client_MWH', 'Archived', 'NUSADMIN', '2023-08-10', 'archive\r\n', '2023-08-10 09:08:45'),
(12, 12, 'client_MWH', 'Active', 'NUSADMIN', '2023-08-10', 'reactivate\r\n', '2023-08-10 09:09:31'),
(13, 11, 'client_perc&MWH', 'Active', 'NUSADMIN', '2023-08-10', 'reactivate\r\n', '2023-08-10 10:58:59'),
(14, 13, 'c_MWH', 'Cancelled', 'NUSADMIN', '2023-08-10', 'hhhh', '2023-08-10 11:00:05'),
(15, 12, 'client_MWH', 'Active', 'NUSADMIN', '2023-08-10', 'reeee', '2023-08-10 11:10:27'),
(16, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-10', 'hh', '2023-08-10 11:10:44'),
(17, 11, 'client_perc&MWH', 'Active', 'NUSADMIN', '2023-08-10', 'kk', '2023-08-10 11:10:51'),
(18, 11, 'client_perc&MWH', 'Cancelled', 'NUSADMIN', '2023-08-10', 'cancel\r\n', '2023-08-10 11:11:51'),
(19, 11, 'client_perc&MWH', 'Active', 'NUSADMIN', '2023-08-10', 'reactivate', '2023-08-10 11:12:10'),
(20, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-14', 'reactivate\r\n', '2023-08-14 09:26:03'),
(21, 12, 'client_MWH', 'Active', 'NUSADMIN', '2023-08-14', 'reactivate', '2023-08-14 09:26:12'),
(22, 11, 'client_perc&MWH', 'Active', 'NUSADMIN', '2023-08-14', 'Reactivate\r\n', '2023-08-14 09:26:23'),
(23, 7, 'client_perct', 'Active', 'NUSADMIN', '2023-08-14', 'Reactivate', '2023-08-14 09:26:33'),
(24, 14, 'client_Power(MW)', 'Active', 'NUSADMIN', '2023-08-14', 'reactivate', '2023-08-14 09:26:47'),
(25, 1, 'TestClient', 'Active', 'NUSADMIN', '2023-08-14', 'reactivate\r\n', '2023-08-14 09:26:56'),
(26, 13, 'c_MWH', 'Archived', 'NUSADMIN', '2023-08-14', 'archive', '2023-08-14 09:29:02'),
(27, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-14', 'Reactivate', '2023-08-14 09:32:58'),
(28, 14, 'client_Power(MW)', 'Cancelled', 'NUSADMIN', '2023-08-14', 'Cancel\r\n', '2023-08-14 09:47:25'),
(29, 14, 'client_Power(MW)', 'Active', 'NUSADMIN', '2023-08-14', 'reactivate\r\n', '2023-08-14 09:47:49'),
(30, 16, 'ClientFixed', 'Active', 'NUSADMIN', '2023-08-14', 'reactivate', '2023-08-14 09:51:50'),
(31, 16, 'ClientFixed', 'Cancelled', 'NUSADMIN', '2023-08-14', 'cancal client', '2023-08-14 09:52:08'),
(32, 16, 'ClientFixed', 'Active', 'NUSADMIN', '2023-08-14', 'Reactivate ', '2023-08-14 09:52:33'),
(33, 13, 'c_MWH', 'Cancelled', 'NUSADMIN', '2023-08-14', 'Cancel', '2023-08-14 09:54:17'),
(34, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-14', 'Reactivate', '2023-08-14 09:56:45'),
(35, 13, 'c_MWH', 'Cancelled', 'NUSADMIN', '2023-08-14', 'Cancel', '2023-08-14 10:17:35'),
(36, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-14', 'Reactivate', '2023-08-14 10:18:19'),
(37, 17, 'client1', 'Archived', 'NUSADMIN', '2023-08-16', 'Archive', '2023-08-16 13:57:39'),
(38, 17, 'client1', 'Active', 'NUSADMIN', '2023-08-16', 'reactivate\r\n', '2023-08-16 13:58:13'),
(39, 13, 'c_MWH', 'Archived', 'NUSADMIN', '2023-08-16', 'Archive', '2023-08-16 15:29:00'),
(40, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-08-16', 'aaaa', '2023-08-16 15:29:10'),
(41, 20, 'ClientFixed', 'Archived', 'NUSADMIN', '2023-08-25', 'archive', '2023-08-25 05:10:36'),
(42, 15, 'client', 'Active', 'NUSADMIN', '2023-09-14', 'Reactivate', '2023-09-13 23:33:19'),
(43, 13, 'c_MWH', 'Archived', 'NUSADMIN', '2023-09-14', 'client company archive', '2023-09-14 02:54:23'),
(44, 17, 'client1', 'Cancelled', 'NUSADMIN', '2023-09-14', 'client company cancel', '2023-09-14 03:09:40'),
(45, 13, 'c_MWH', 'Active', 'NUSADMIN', '2023-09-14', 'reactivate client company from archive', '2023-09-14 03:16:12'),
(46, 17, 'client1', 'Active', 'NUSADMIN', '2023-09-14', 're-activate from cancel', '2023-09-14 03:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `clientcompanydata`
--

CREATE TABLE `clientcompanydata` (
  `id` int NOT NULL,
  `parentcompany` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `clientcompany` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `serialno` int NOT NULL DEFAULT '0',
  `state` enum('Active','Archived','Cancelled') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientcompanydata`
--

INSERT INTO `clientcompanydata` (`id`, `parentcompany`, `clientcompany`, `country`, `serialno`, `state`) VALUES
(1, 'Test1', 'TestClient', 'India', 6, 'Active'),
(2, 'NUS - International', 'NUS SAS', 'France', 0, 'Active'),
(3, 'NUS - International', 'NUS Ibérica SA', 'Spain', 5, 'Active'),
(4, 'NUS - International', 'NUS Ibérica Sld', 'Portugal', 2, 'Active'),
(5, 'NUS - International', 'NUS IT', 'Italy', 0, 'Active'),
(6, 'NUS - International', 'NUS Gmd', 'Germany', 0, 'Active'),
(7, 'Test1', 'client_perct', 'India', 3, 'Active'),
(8, 'Exide - International', 'Exide Ibérica SA', 'Spain', 0, 'Active'),
(9, 'Exide - International', 'Exide Ibérica Sld', 'Portugal', 5, 'Active'),
(10, 'Exide - International', 'Exide Holand', 'Netherlands', 0, 'Active'),
(11, 'Test1', 'client_perc&MWH', 'India', 5, 'Active'),
(12, 'Test1', 'client_MWH', 'India', 3, 'Active'),
(13, 'Test1', 'c_MWH', 'India', 6, 'Active'),
(14, 'Test1', 'client_Power(MW)', 'India', 2, 'Active'),
(15, 'Parent', 'client', 'India', 7, 'Archived'),
(16, 'Parent1', 'ClientFixed_1', 'India', 1, 'Archived'),
(17, 'Test1', 'client1', 'India', 6, 'Active'),
(18, 'Test1', 'client1', 'Russia', 1, 'Active'),
(19, 'newParent_1', 'ClientIndexed', 'Antigua', 8, 'Active'),
(20, 'newParent_1', 'ClientFixed', 'India', 6, 'Archived'),
(21, 'Parent1', 'ClientFixed_1', 'Bahamas', 0, 'Archived');

-- --------------------------------------------------------

--
-- Table structure for table `enter_trade`
--

CREATE TABLE `enter_trade` (
  `tradeId` int NOT NULL,
  `parentId` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  `supplycontractid` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mw` float(10,2) DEFAULT NULL,
  `mwh` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `percentage` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tradevolume` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `baseload` float(10,2) DEFAULT NULL,
  `effectiveprice` float(10,2) DEFAULT NULL,
  `trade` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tradevalue` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tradingId` int DEFAULT NULL,
  `nustradeId` int DEFAULT NULL,
  `tradeDate` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `quartval` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tradequarvol` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tradeexecuted` enum('Executed','Cancelled') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enter_trade`
--

INSERT INTO `enter_trade` (`tradeId`, `parentId`, `clientId`, `supplycontractid`, `mw`, `mwh`, `percentage`, `tradevolume`, `baseload`, `effectiveprice`, `trade`, `tradevalue`, `tradingId`, `nustradeId`, `tradeDate`, `quartval`, `tradequarvol`, `tradeexecuted`) VALUES
(1, 'NUS - International', 3, 'NUS-Elec-00001', 0.00, '9,000', '', '9000', 100.00, 100.00, 'Calendar Yearly', '2024', 1, 1, '2023-08-04', '', '12000', 'Executed'),
(2, 'NUS - International', 3, 'NUS-Elec-00001', 0.00, '4,200', '', '4200', 100.00, 100.00, 'Calendar Yearly', '2024', 2, 4, '2023-08-04', '', '12000', 'Cancelled'),
(3, 'NUS - International', 3, 'NUS-Elec-00001', 0.00, '9,000', '', '9000', 100.00, 100.00, 'Calendar Yearly', '2025', 2, 5, '2023-08-04', '', '12000', 'Cancelled'),
(4, 'NUS - International', 3, 'NUS-Elec-00001', 0.00, '1,200', '', '1200', 100.00, 100.00, 'Calendar Yearly', '2024', 3, 7, '2023-08-04', '', '12000', 'Cancelled'),
(5, 'NUS - International', 3, 'NUS-Elec-00001', 0.00, '', '100', '0', 100.00, 100.00, 'Calendar Monthly', '2024', 8, 53, '2023-08-04', 'July', '800', 'Cancelled'),
(6, 'NUS - International', 4, 'NUS-Elec-00001', 0.00, '9,000', '', '9000', 1.00, 1.00, 'Calendar Yearly', '2024', 9, 19, '2023-08-04', '', '12000', 'Executed'),
(7, 'NUS - International', 4, 'NUS-Elec-00001', 0.00, '6,000', '', '6000', 1.00, 1.00, 'Calendar Yearly', '2024', 9, 19, '2023-08-04', '', '12000', 'Cancelled'),
(8, 'NUS - International', 4, 'NUS-Elec-00001', 0.00, '', '100', '800', 1.00, 1.00, 'Calendar Monthly', '2024', 11, 94, '2023-08-04', 'July', '800', 'Cancelled'),
(9, 'NUS - International', 4, 'NUS-Elec-00001', 0.00, '', '50', '1500', 1.00, 1.00, 'Calendar Quarterly', '2024', 14, 6, '2023-08-04', 'q4', '3000', 'Executed'),
(10, 'NUS - International', 4, 'NUS-Elec-00001', 0.00, '12,000', '', '12000', 1.00, 1.00, 'Calendar Yearly', '2024', 12, 25, '2023-08-04', '', '12000', 'Cancelled'),
(11, 'Exide - International', 9, 'Exide-Elec-00001', 0.00, '', '40', '800', 100.00, 100.00, 'Calendar Quarterly', '2023', 28, 63, '2023-08-07', 'q3', '2000', 'Executed'),
(12, 'Exide - International', 9, 'Exide-Elec-00001', 0.00, '', '60', '1200', 100.00, 100.00, 'Calendar Quarterly', '2023', 28, 63, '2023-08-07', 'q3', '2000', 'Executed'),
(13, 'Test1', 7, 'client_perct-Elec-00001', 0.00, '', '10', '1200', 34.55, 38.89, 'Calendar Yearly', '2023', 29, 38, '2023-08-08', '', '12000', 'Executed'),
(14, 'Test1', 7, 'client_perct-Elec-00001', 0.00, '', '7.5', '900', 88.76, 90.56, 'Calendar Yearly', '2023', 29, 38, '2023-08-08', '', '12000', 'Executed'),
(15, 'Test1', 7, 'client_perct-Elec-00001', 0.00, '', '10', '280', 54.67, 58.66, 'Calendar Quarterly', '2023', 30, 65, '2023-08-08', 'q1', '2800', 'Executed'),
(16, 'Test1', 7, 'client_perct-Elec-00002', 0.00, '', '10', '90', 34.55, 38.89, 'Calendar Monthly', '2023', 34, 319, '2023-08-08', 'Mar', '900', 'Executed'),
(17, 'Test1', 7, 'client_perct-Elec-00002', 0.00, '', '7.5', '900', 88.76, 90.56, 'Calendar Yearly', '2023', 32, 39, '2023-08-08', '', '12000', 'Executed'),
(18, 'Test1', 7, 'client_perct-Elec-00002', 0.00, '', '10', '280', 54.67, 58.66, 'Calendar Quarterly', '2023', 33, 69, '2023-08-08', 'q1', '2800', 'Executed'),
(19, 'Test1', 7, 'client_perct-Elec-00003', 0.00, '', '10', '90', 34.55, 38.89, 'Calendar Monthly', '2023', 37, 331, '2023-08-08', 'Mar', '900', 'Executed'),
(20, 'Test1', 7, 'client_perct-Elec-00003', 0.00, '', '7.5', '900', 88.76, 90.56, 'Calendar Yearly', '2023', 35, 40, '2023-08-08', '', '12000', 'Executed'),
(21, 'Test1', 7, 'client_perct-Elec-00003', 0.00, '', '10', '280', 54.67, 58.66, 'Calendar Quarterly', '2023', 36, 73, '2023-08-08', 'q1', '2800', 'Executed'),
(22, 'Test1', 11, 'client_perc&MWH-Elec-00002', 0.00, '', '10', '1200', 34.55, 38.89, 'Calendar Yearly', '2023', 41, 42, '2023-08-09', '', '12000', 'Executed'),
(23, 'Test1', 11, 'client_perc&MWH-Elec-00002', 0.00, '2,400', '', '2400', 88.76, 90.56, 'Calendar Quarterly', '2023', 42, 81, '2023-08-09', 'q1', '2800', 'Executed'),
(24, 'Test1', 11, 'client_perc&MWH-Elec-00002', 0.00, '80', '', '80', 54.67, 58.66, 'Calendar Monthly', '2023', 43, 358, '2023-08-09', 'Jun', '800', 'Executed'),
(25, 'Test1', 12, 'client_MWH-Elec-00001', 0.00, '1,200', '', '1200', 34.55, 38.89, 'Calendar Yearly', '2023', 44, 43, '2023-08-09', '', '12000', 'Executed'),
(26, 'Test1', 12, 'client_MWH-Elec-00001', 0.00, '2,400', '', '2400', 88.76, 90.56, 'Calendar Yearly', '2023', 44, 43, '2023-08-09', '', '12000', 'Executed'),
(27, 'Test1', 12, 'client_MWH-Elec-00001', 0.00, '120', '', '120', 54.67, 58.66, 'Calendar Quarterly', '2023', 45, 85, '2023-08-09', 'q1', '2800', 'Executed'),
(28, 'Test1', 12, 'client_MWH-Elec-00001', 0.00, '60', '', '60', 43.56, 48.56, 'Calendar Monthly', '2023', 46, 365, '2023-08-09', 'Jan', '1100', 'Executed'),
(29, 'Test1', 13, 'c_MWH-Elec-00001', 0.00, '1,200', '', '1200', 34.55, 38.89, 'Calendar Yearly', '2023', 47, 44, '2023-08-09', '', '12000', 'Executed'),
(30, 'Test1', 12, 'client_MWH-Elec-00002', 0.00, '1,200', '', '1200', 34.55, 38.89, 'Calendar Quarterly', '2023', 51, 93, '2023-08-09', 'q1', '2800', 'Executed'),
(31, 'Test1', 13, 'c_MWH-Elec-00001', 0.00, '2,400', '', '2400', 88.76, 90.56, 'Calendar Yearly', '2023', 47, 44, '2023-08-09', '', '12000', 'Executed'),
(32, 'Test1', 12, 'client_MWH-Elec-00002', 0.00, '2,400', '', '2400', 88.76, 90.56, 'Calendar Yearly', '2023', 50, 45, '2023-08-09', '', '12000', 'Executed'),
(33, 'Test1', 12, 'client_MWH-Elec-00002', 0.00, '60', '', '60', 54.67, 58.66, 'Calendar Monthly', '2023', 52, 389, '2023-08-09', 'Jan', '1100', 'Executed'),
(34, 'Test1', 13, 'c_MWH-Elec-00001', 0.00, '120', '', '120', 54.67, 58.66, 'Calendar Quarterly', '2023', 48, 89, '2023-08-09', 'q1', '2800', 'Executed'),
(35, 'Test1', 12, 'client_MWH-Elec-00002', 0.00, '1,200', '', '1200', 43.56, 48.56, 'Calendar Yearly', '2023', 50, 45, '2023-08-09', '', '12000', 'Executed'),
(36, 'Test1', 13, 'c_MWH-Elec-00001', 0.00, '60', '', '60', 43.56, 48.56, 'Calendar Monthly', '2023', 49, 377, '2023-08-09', 'Jan', '1100', 'Executed'),
(37, 'Test1', 12, 'client_MWH-Elec-00003', 0.00, '80', '', '80', 34.55, 38.89, 'Calendar Monthly', '2023', 55, 406, '2023-08-09', 'Jun', '800', 'Cancelled'),
(38, 'Test1', 12, 'client_MWH-Elec-00003', 0.00, '120', '', '120', 88.76, 90.56, 'Calendar Monthly', '2023', 55, 404, '2023-08-09', 'Apr', '1200', 'Executed'),
(39, 'Test1', 12, 'client_MWH-Elec-00003', 0.00, '240', '', '240', 54.67, 58.66, 'Calendar Quarterly', '2023', 54, 98, '2023-08-09', 'q2', '3000', 'Executed'),
(40, 'Test1', 13, 'c_MWH-Elec-00002', 0.00, '1,200', '', '1200', 34.55, 38.89, 'Calendar Quarterly', '2023', 57, 102, '2023-08-09', 'q3', '3100', 'Executed'),
(41, 'Test1', 13, 'c_MWH-Elec-00002', 0.00, '1,200', '', '1200', 34.55, 38.89, 'Calendar Quarterly', '2024', 60, 107, '2023-08-09', 'q1', '2800', 'Executed'),
(42, 'Test1', 13, 'c_MWH-Elec-00002', 0.00, '2,400', '', '2400', 88.76, 90.56, 'Calendar Yearly', '2024', 59, 47, '2023-08-09', '', '12000', 'Executed'),
(43, 'Test1', 13, 'c_MWH-Elec-00002', 0.00, '60', '', '60', 54.67, 58.66, 'Calendar Monthly', '2024', 61, 427, '2023-08-09', 'Jan', '1100', 'Executed'),
(44, 'Test1', 12, 'client_MWH-Elec-00003', 0.00, '1,200', '', '1200', 43.56, 48.56, 'Calendar Yearly', '2023', 53, 46, '2023-08-09', '', '12000', 'Executed'),
(45, 'Test1', 13, 'c_MWH-Elec-00002', 0.00, '1,200', '', '1200', 43.56, 48.56, 'Calendar Yearly', '2024', 59, 47, '2023-08-09', '', '12000', 'Executed'),
(46, 'Test1', 14, 'client_Power(MW)-Elec-00001', 1.00, '', '', '8760', 34.55, 38.89, 'Calendar Yearly', '2023', 62, 48, '2023-08-09', '', '120000', 'Executed'),
(47, 'Test1', 14, 'client_Power(MW)-Elec-00001', 0.81, '', '', '1769', 88.76, 90.56, 'Calendar Quarterly', '2023', 63, 112, '2023-08-09', 'q2', '30000', 'Executed'),
(48, 'Test1', 13, 'c_MWH-Elec-00003', 0.00, '80', '', '80', 34.55, 38.89, 'Calendar Monthly', '2023', 67, 451, '2023-08-09', 'Jun', '800', 'Cancelled'),
(49, 'Test1', 13, 'c_MWH-Elec-00003', 0.00, '80', '', '80', 34.55, 38.89, 'Calendar Monthly', '2023', 70, 458, '2023-08-09', 'Jun', '800', 'Executed'),
(50, 'Test1', 13, 'c_MWH-Elec-00003', 0.00, '80', '', '80', 34.55, 38.89, 'Calendar Monthly', '2023', 70, 458, '2023-08-09', 'Jun', '800', 'Executed'),
(51, 'Test1', 13, 'c_MWH-Elec-00003', 0.00, '80', '', '80', 34.55, 38.89, 'Calendar Monthly', '2024', 70, 470, '2023-08-09', 'Jun', '800', 'Executed'),
(52, 'Test1', 13, 'c_MWH-Elec-00003', 0.00, '120', '', '120', 56.89, 60.60, 'Calendar Monthly', '2023', 70, 458, '2023-08-09', 'Jun', '800', 'Executed'),
(53, 'Test1', 13, 'c_MWH-Elec-00004', 0.00, '110', '', '110', 55.00, 66.00, 'Calendar Monthly', '2023', 76, 499, '2023-08-09', 'Oct', '1000', 'Executed'),
(54, 'Test1', 13, 'c_MWH-Elec-00004', 0.00, '100', '', '100', 44.00, 77.00, 'Calendar Monthly', '2023', 79, 506, '2023-08-09', 'Oct', '1000', 'Executed'),
(55, 'Test1', 13, 'c_MWH-Elec-00004', 0.00, '80', '', '80', 66.00, 88.00, 'Calendar Monthly', '2023', 79, 506, '2023-08-09', 'Oct', '1000', 'Executed'),
(56, 'Test1', 13, 'c_MWH-Elec-00004', 0.00, '90', '', '90', 77.00, 88.00, 'Calendar Monthly', '2023', 79, 507, '2023-08-09', 'Nov', '1000', 'Executed'),
(57, 'Test1', 12, 'client_MWH-Elec-00001', 0.00, '1,200', '', '1200', 34.55, 38.89, 'Calendar Quarterly', '2024', 72, 129, '2023-08-09', 'q1', '2800', 'Executed'),
(58, 'Test1', 13, 'c_MWH-Elec-00005', 0.00, '100', '', '100', 66.00, 88.00, 'Calendar Monthly', '2023', 82, 523, '2023-08-09', 'Aug', '1000', 'Cancelled'),
(59, 'Test1', 13, 'c_MWH-Elec-00005', 0.00, '90', '', '90', 55.00, 66.00, 'Calendar Monthly', '2023', 82, 523, '2023-08-09', 'Aug', '1000', 'Executed'),
(60, 'Test1', 13, 'c_MWH-Elec-00005', 0.00, '90', '', '90', 88.00, 99.00, 'Calendar Monthly', '2023', 82, 523, '2023-08-09', 'Aug', '1000', 'Executed'),
(61, 'Test1', 13, 'c_MWH-Elec-00005', 0.00, '99', '', '99', 66.00, 88.00, 'Calendar Monthly', '2024', 85, 542, '2023-08-09', 'Aug', '1000', 'Executed'),
(62, 'Test1', 13, 'c_MWH-Elec-00005', 0.00, '60', '', '60', 44.00, 53.00, 'Calendar Monthly', '2023', 85, 530, '2023-08-09', 'Aug', '1000', 'Executed'),
(63, 'Test1', 12, 'client_MWH-Elec-00001', 0.00, '60', '', '60', 54.67, 58.66, 'Calendar Monthly', '2024', 73, 489, '2023-08-09', 'Jan', '1100', 'Executed'),
(64, 'Test1', 11, 'client_perc&MWH-Elec-00003', 0.00, '', '10', '4558', 1354.67, 1567.89, 'Calendar Yearly', '2023', 86, 53, '2023-08-09', '', '45589', 'Cancelled'),
(65, 'Test1', 11, 'client_perc&MWH-Elec-00003', 0.00, '', '10', '4558', 34.00, 45.00, 'Calendar Yearly', '2023', 86, 53, '2023-08-10', '', '45589', 'Executed'),
(66, 'Test1', 11, 'client_perc&MWH-Elec-00003', 0.00, '', '10', '4558', 54.00, 78.00, 'Calendar Yearly', '2023', 86, 53, '2023-08-10', '', '45589', 'Executed'),
(67, 'Test1', 11, 'client_perc&MWH-Elec-00003', 0.00, '', '8.75', '3989', 56.00, 76.00, 'Calendar Yearly', '2023', 86, 53, '2023-08-10', '', '45589', 'Executed'),
(68, 'Test1', 11, 'client_perc&MWH-Elec-00004', 0.00, '', '10', '4558', 1354.67, 1567.89, 'Calendar Yearly', '2023', 90, 54, '2023-08-11', '', '45589', 'Executed'),
(69, 'Test1', 11, 'client_perc&MWH-Elec-00004', 0.00, '2,400', '', '2400', 1258.89, 1654.76, 'Calendar Quarterly', '2023', 91, 156, '2023-08-11', 'q2', '12180.94', 'Executed'),
(70, 'Test1', 11, 'client_perc&MWH-Elec-00004', 0.00, '', '5.65', '2575', 1100.05, 1345.90, 'Calendar Yearly', '2023', 90, 54, '2023-08-11', '', '45589', 'Executed'),
(71, 'Test1', 11, 'client_perc&MWH-Elec-00004', 0.00, '4,000', '', '4000', 987.89, 1289.78, 'Calendar Quarterly', '2023', 91, 158, '2023-08-11', 'q4', '12680.68', 'Executed'),
(72, 'Test1', 11, 'client_perc&MWH-Elec-00004', 0.00, '', '6.25', '179', 1378.00, 1454.00, 'Calendar Monthly', '2023', 92, 567, '2023-08-11', 'Sep', '2865.9', 'Executed'),
(73, 'Test1', 11, 'client_perc&MWH-Elec-00004', 0.00, '', '7.63', '289', 1234.78, 1432.00, 'Calendar Monthly', '2023', 92, 563, '2023-08-11', 'May', '3799.16', 'Executed'),
(74, 'Test1', 11, 'client_perc&MWH-Elec-00005', 0.00, '', '10', '6728', 3400.55, 3800.89, 'Calendar Yearly', '2023', 93, 55, '2023-08-11', '', '67289', 'Executed'),
(75, 'Test1', 11, 'client_perc&MWH-Elec-00005', 0.00, '80', '', '80', 3800.44, 4200.66, 'Calendar Monthly', '2023', 95, 573, '2023-08-11', 'Mar', '5209.43', 'Executed'),
(76, 'Test1', 11, 'client_perc&MWH-Elec-00005', 0.00, '', '10', '1872', 5400.67, 5800.66, 'Calendar Quarterly', '2023', 94, 162, '2023-08-11', 'q4', '18723.34', 'Executed'),
(77, 'Test1', 11, 'client_perc&MWH-Elec-00005', 0.00, '', '8', '5383', 4400.67, 5200.66, 'Calendar Yearly', '2023', 93, 55, '2023-08-11', '', '67289', 'Executed'),
(78, 'Test1', 11, 'client_perc&MWH-Elec-00005', 0.00, '60', '', '60', 5400.76, 6200.56, 'Calendar Monthly', '2023', 95, 571, '2023-08-11', 'Jan', '4803.33', 'Executed'),
(79, 'Test1', 11, 'client_perc&MWH-Elec-00005', 0.00, '', '5', '781', 4300.66, 6200.87, 'Calendar Quarterly', '2023', 94, 159, '2023-08-11', 'q1', '15620.17', 'Executed'),
(80, 'Test1', 14, 'client_Power(MW)-Elec-00002', 1.00, '', '', '8760', 1250.55, 1550.55, 'Calendar Yearly', '2023', 96, 56, '2023-08-11', '', '120000', 'Executed'),
(81, 'Test1', 14, 'client_Power(MW)-Elec-00002', 0.81, '', '', '602', 1000.00, 1300.00, 'Calendar Monthly', '2023', 98, 592, '2023-08-11', 'Oct', '15000', 'Executed'),
(82, 'Test1', 14, 'client_Power(MW)-Elec-00002', 1.00, '', '', '2160', 1234.76, 1567.98, 'Calendar Quarterly', '2023', 97, 163, '2023-08-11', 'q1', '', 'Executed'),
(83, 'Test1', 17, 'client1-Elec-00001', 0.00, '', '10', '1200', 34.00, 54.00, 'Calendar Yearly', '2023', 101, 58, '2023-08-15', '', '12000', 'Executed'),
(84, 'Test1', 18, 'client1-Elec-00001', 0.00, '', '12', '1440', 45.00, 66.00, 'Calendar Yearly', '2023', 104, 59, '2023-08-15', '', '12000', 'Executed'),
(85, 'Test1', 17, 'client1-Elec-00001', 0.00, '', '10', '1200', 0.00, 0.00, 'Calendar Yearly', '2023', 101, 58, '2023-08-15', '', '12000', 'Executed'),
(86, 'Test1', 17, 'client1-Elec-00002', 0.00, '', '10', '1200', 0.00, 0.00, 'Calendar Yearly', '2023', 107, 60, '2023-08-15', '', '12000', 'Executed'),
(87, 'Test1', 17, 'client1-Elec-00002', 0.00, '', '6', '720', 45.00, 54.00, 'Calendar Yearly', '2023', 107, 60, '2023-08-15', '', '12000', 'Executed'),
(88, 'Test1', 17, 'client1-Elec-00002', 0.00, '', '7', '840', 34.00, 56.00, 'Calendar Yearly', '2023', 107, 60, '2023-08-15', '', '12000', 'Executed'),
(89, 'Test1', 17, 'client1-Elec-00002', 0.00, '', '8', '960', 11.00, 22.00, 'Calendar Yearly', '2024', 110, 62, '2023-08-15', '', '12000', 'Executed'),
(90, 'Test1', 17, 'client1-Elec-00003', 0.00, '', '10', '1200', 0.00, 0.00, 'Calendar Yearly', '2024', 113, 63, '2023-08-16', '', '12000', 'Executed'),
(91, 'Test1', 17, 'client1-Elec-00003', 0.00, '', '10', '1200', 34.89, 54.89, 'Calendar Yearly', '2024', 113, 63, '2023-08-16', '', '12000', 'Executed'),
(92, 'Test1', 17, 'client1-Elec-00004', 0.00, '', '10', '1200', 23.35, 34.65, 'Calendar Yearly', '2024', 116, 64, '2023-08-16', '', '12000', 'Cancelled'),
(93, 'Test1', 17, 'client1-Elec-00004', 0.00, '', '10', '1200', 23.00, 34.00, 'Calendar Yearly', '2024', 116, 64, '2023-08-16', '', '12000', 'Executed'),
(94, 'Test1', 17, 'client1-Elec-00004', 0.00, '', '10', '1200', 55.00, 76.00, 'Calendar Yearly', '2024', 116, 64, '2023-08-16', '', '12000', 'Executed'),
(95, 'Test1', 17, 'client1-Elec-00004', 0.00, '', '7', '840', 66.00, 77.00, 'Calendar Yearly', '2024', 116, 64, '2023-08-16', '', '12000', 'Executed');

-- --------------------------------------------------------

--
-- Table structure for table `nususerdata`
--

CREATE TABLE `nususerdata` (
  `id` int NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `emailId` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `accountstatus` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `parentcompany` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bussinessunit` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active` enum('Active','Inactive') COLLATE utf8mb4_general_ci NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nususerdata`
--

INSERT INTO `nususerdata` (`id`, `role`, `username`, `emailId`, `accountstatus`, `password`, `parentcompany`, `bussinessunit`, `active`, `created_time`) VALUES
(1, 'Admin', 'NUSADMIN', 'admin1@nusconsulting.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$bUNqNmVGb2lTUDRvUmhjbQ$WIKpouX2l+YA9t4xPrmYRxQAOijxd+XdNYUp76e3IeU', '', '', 'Active', '2023-07-03 09:08:45'),
(2, 'NUS User', 'mjimenezfernandez', 'mjimenezfernandez@gmail.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$Vjl2VGN6dXlZeHhrZ0hWYQ$Bmte6c9OFv8DbDCTz0HzAAEHuDcWUDGG5x7klODjQII', '2 ', '', 'Active', '2023-08-04 13:43:12'),
(3, 'NUS Manager', 'manager', 'nusmanager@demo.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$bUNqNmVGb2lTUDRvUmhjbQ$WIKpouX2l+YA9t4xPrmYRxQAOijxd+XdNYUp76e3IeU', '', '', 'Active', '2023-08-10 08:30:15'),
(4, 'Client company', 'parent.client', 'parent.client@demo.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$bUNqNmVGb2lTUDRvUmhjbQ$WIKpouX2l+YA9t4xPrmYRxQAOijxd+XdNYUp76e3IeU', '5 ', '20 19 ', 'Active', '2023-08-10 08:32:40'),
(5, 'NUS User', 'Admin', 'admin@qualesce.com', 'Confirmed', '$argon2i$v=19$m=65536,t=4,p=1$SzBRMWVLZ2h6cnJ2NlZJbg$6vNEMXbvDhrHuGXjotXcIWf2fFGt/2eTwn85a5BCS/0', '3 5 ', '', 'Active', '2023-08-21 10:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `nus_calendermonth`
--

CREATE TABLE `nus_calendermonth` (
  `monthId` int NOT NULL,
  `month` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `clicks` int NOT NULL,
  `TradeId` int NOT NULL,
  `supplierId` int NOT NULL,
  `year` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_calendermonth`
--

INSERT INTO `nus_calendermonth` (`monthId`, `month`, `clicks`, `TradeId`, `supplierId`, `year`) VALUES
(42, 'Aug', 3, 8, 1, 2023),
(43, 'Sep', 3, 8, 1, 2023),
(44, 'Oct', 3, 8, 1, 2023),
(45, 'Nov', 3, 8, 1, 2023),
(46, 'Dec', 3, 8, 1, 2023),
(47, 'Jan', 3, 8, 1, 2024),
(48, 'Feb', 3, 8, 1, 2024),
(49, 'Mar', 3, 8, 1, 2024),
(50, 'Apr', 3, 8, 1, 2024),
(51, 'May', 3, 8, 1, 2024),
(52, 'Jun', 3, 8, 1, 2024),
(53, 'July', 3, 8, 1, 2024),
(54, 'Aug', 3, 8, 1, 2024),
(55, 'Sep', 3, 8, 1, 2024),
(56, 'Oct', 3, 8, 1, 2024),
(57, 'Nov', 3, 8, 1, 2024),
(58, 'Dec', 3, 8, 1, 2024),
(59, 'Jan', 3, 8, 1, 2025),
(60, 'Feb', 3, 8, 1, 2025),
(61, 'Mar', 3, 8, 1, 2025),
(62, 'Apr', 3, 8, 1, 2025),
(63, 'May', 3, 8, 1, 2025),
(64, 'Jun', 3, 8, 1, 2025),
(65, 'July', 3, 8, 1, 2025),
(66, 'Aug', 3, 8, 1, 2025),
(67, 'Sep', 3, 8, 1, 2025),
(68, 'Oct', 3, 8, 1, 2025),
(69, 'Nov', 3, 8, 1, 2025),
(70, 'Dec', 3, 8, 1, 2025),
(71, 'Jan', 3, 8, 1, 2026),
(72, 'Feb', 3, 8, 1, 2026),
(73, 'Mar', 3, 8, 1, 2026),
(74, 'Apr', 3, 8, 1, 2026),
(75, 'May', 3, 8, 1, 2026),
(76, 'Jun', 3, 8, 1, 2026),
(77, 'July', 3, 8, 1, 2026),
(78, 'Aug', 3, 8, 1, 2026),
(79, 'Sep', 3, 8, 1, 2026),
(80, 'Oct', 3, 8, 1, 2026),
(81, 'Nov', 3, 8, 1, 2026),
(82, 'Dec', 3, 8, 1, 2026),
(247, 'Aug', 2, 23, 2, 2023),
(248, 'Sep', 2, 23, 2, 2023),
(249, 'Oct', 2, 23, 2, 2023),
(250, 'Nov', 2, 23, 2, 2023),
(251, 'Dec', 2, 23, 2, 2023),
(252, 'Jan', 2, 23, 2, 2024),
(253, 'Feb', 2, 23, 2, 2024),
(254, 'Mar', 2, 23, 2, 2024),
(255, 'Apr', 2, 23, 2, 2024),
(256, 'May', 2, 23, 2, 2024),
(257, 'Jun', 2, 23, 2, 2024),
(258, 'July', 2, 23, 2, 2024),
(259, 'Aug', 2, 23, 2, 2024),
(260, 'Sep', 2, 23, 2, 2024),
(261, 'Oct', 2, 23, 2, 2024),
(262, 'Nov', 2, 23, 2, 2024),
(263, 'Dec', 2, 23, 2, 2024),
(264, 'Jan', 2, 23, 2, 2025),
(265, 'Feb', 2, 23, 2, 2025),
(266, 'Mar', 2, 23, 2, 2025),
(267, 'Apr', 2, 23, 2, 2025),
(268, 'May', 2, 23, 2, 2025),
(269, 'Jun', 2, 23, 2, 2025),
(270, 'July', 2, 23, 2, 2025),
(271, 'Aug', 2, 23, 2, 2025),
(272, 'Sep', 2, 23, 2, 2025),
(273, 'Oct', 2, 23, 2, 2025),
(274, 'Nov', 2, 23, 2, 2025),
(275, 'Dec', 2, 23, 2, 2025),
(276, 'Jan', 2, 23, 2, 2026),
(277, 'Feb', 2, 23, 2, 2026),
(278, 'Mar', 2, 23, 2, 2026),
(279, 'Apr', 2, 23, 2, 2026),
(280, 'May', 2, 23, 2, 2026),
(281, 'Jun', 2, 23, 2, 2026),
(282, 'July', 2, 23, 2, 2026),
(283, 'Aug', 2, 23, 2, 2026),
(284, 'Sep', 2, 23, 2, 2026),
(285, 'Oct', 2, 23, 2, 2026),
(286, 'Nov', 2, 23, 2, 2026),
(287, 'Dec', 2, 23, 2, 2026),
(288, 'Aug', 4, 27, 6, 2023),
(289, 'Sep', 4, 27, 6, 2023),
(290, 'Oct', 4, 27, 6, 2023),
(291, 'Nov', 4, 27, 6, 2023),
(292, 'Dec', 4, 27, 6, 2023),
(293, 'Jan', 4, 27, 6, 2024),
(294, 'Feb', 4, 27, 6, 2024),
(295, 'Mar', 4, 27, 6, 2024),
(296, 'Apr', 4, 27, 6, 2024),
(297, 'May', 4, 27, 6, 2024),
(298, 'Jun', 4, 27, 6, 2024),
(299, 'July', 4, 27, 6, 2024),
(300, 'Aug', 4, 27, 6, 2024),
(301, 'Sep', 4, 27, 6, 2024),
(302, 'Oct', 4, 27, 6, 2024),
(303, 'Nov', 4, 27, 6, 2024),
(304, 'Dec', 4, 27, 6, 2024),
(305, 'Jan', 3, 31, 12, 2023),
(306, 'Feb', 3, 31, 12, 2023),
(307, 'Mar', 3, 31, 12, 2023),
(308, 'Apr', 3, 31, 12, 2023),
(309, 'May', 3, 31, 12, 2023),
(310, 'Jun', 3, 31, 12, 2023),
(311, 'July', 3, 31, 12, 2023),
(312, 'Aug', 3, 31, 12, 2023),
(313, 'Sep', 3, 31, 12, 2023),
(314, 'Oct', 3, 31, 12, 2023),
(315, 'Nov', 3, 31, 12, 2023),
(316, 'Dec', 3, 31, 12, 2023),
(317, 'Jan', 3, 34, 13, 2023),
(318, 'Feb', 3, 34, 13, 2023),
(319, 'Mar', 2, 34, 13, 2023),
(320, 'Apr', 3, 34, 13, 2023),
(321, 'May', 3, 34, 13, 2023),
(322, 'Jun', 3, 34, 13, 2023),
(323, 'July', 3, 34, 13, 2023),
(324, 'Aug', 3, 34, 13, 2023),
(325, 'Sep', 3, 34, 13, 2023),
(326, 'Oct', 3, 34, 13, 2023),
(327, 'Nov', 3, 34, 13, 2023),
(328, 'Dec', 3, 34, 13, 2023),
(329, 'Jan', 3, 37, 14, 2023),
(330, 'Feb', 3, 37, 14, 2023),
(331, 'Mar', 2, 37, 14, 2023),
(332, 'Apr', 3, 37, 14, 2023),
(333, 'May', 3, 37, 14, 2023),
(334, 'Jun', 3, 37, 14, 2023),
(335, 'July', 3, 37, 14, 2023),
(336, 'Aug', 3, 37, 14, 2023),
(337, 'Sep', 3, 37, 14, 2023),
(338, 'Oct', 3, 37, 14, 2023),
(339, 'Nov', 3, 37, 14, 2023),
(340, 'Dec', 3, 37, 14, 2023),
(341, 'Jan', 3, 40, 15, 2023),
(342, 'Feb', 3, 40, 15, 2023),
(343, 'Mar', 3, 40, 15, 2023),
(344, 'Apr', 3, 40, 15, 2023),
(345, 'May', 3, 40, 15, 2023),
(346, 'Jun', 3, 40, 15, 2023),
(347, 'July', 3, 40, 15, 2023),
(348, 'Aug', 3, 40, 15, 2023),
(349, 'Sep', 3, 40, 15, 2023),
(350, 'Oct', 3, 40, 15, 2023),
(351, 'Nov', 3, 40, 15, 2023),
(352, 'Dec', 3, 40, 15, 2023),
(353, 'Jan', 3, 43, 16, 2023),
(354, 'Feb', 3, 43, 16, 2023),
(355, 'Mar', 3, 43, 16, 2023),
(356, 'Apr', 3, 43, 16, 2023),
(357, 'May', 3, 43, 16, 2023),
(358, 'Jun', 2, 43, 16, 2023),
(359, 'July', 3, 43, 16, 2023),
(360, 'Aug', 3, 43, 16, 2023),
(361, 'Sep', 3, 43, 16, 2023),
(362, 'Oct', 3, 43, 16, 2023),
(363, 'Nov', 3, 43, 16, 2023),
(364, 'Dec', 3, 43, 16, 2023),
(377, 'Jan', 2, 49, 18, 2023),
(378, 'Feb', 3, 49, 18, 2023),
(379, 'Mar', 3, 49, 18, 2023),
(380, 'Apr', 3, 49, 18, 2023),
(381, 'May', 3, 49, 18, 2023),
(382, 'Jun', 3, 49, 18, 2023),
(383, 'July', 3, 49, 18, 2023),
(384, 'Aug', 3, 49, 18, 2023),
(385, 'Sep', 3, 49, 18, 2023),
(386, 'Oct', 3, 49, 18, 2023),
(387, 'Nov', 3, 49, 18, 2023),
(388, 'Dec', 3, 49, 18, 2023),
(389, 'Jan', 2, 52, 19, 2023),
(390, 'Feb', 3, 52, 19, 2023),
(391, 'Mar', 3, 52, 19, 2023),
(392, 'Apr', 3, 52, 19, 2023),
(393, 'May', 3, 52, 19, 2023),
(394, 'Jun', 3, 52, 19, 2023),
(395, 'July', 3, 52, 19, 2023),
(396, 'Aug', 3, 52, 19, 2023),
(397, 'Sep', 3, 52, 19, 2023),
(398, 'Oct', 3, 52, 19, 2023),
(399, 'Nov', 3, 52, 19, 2023),
(400, 'Dec', 3, 52, 19, 2023),
(401, 'Jan', 3, 55, 20, 2023),
(402, 'Feb', 3, 55, 20, 2023),
(403, 'Mar', 3, 55, 20, 2023),
(404, 'Apr', 2, 55, 20, 2023),
(405, 'May', 3, 55, 20, 2023),
(406, 'Jun', 3, 55, 20, 2023),
(407, 'July', 3, 55, 20, 2023),
(408, 'Aug', 3, 55, 20, 2023),
(409, 'Sep', 3, 55, 20, 2023),
(410, 'Oct', 3, 55, 20, 2023),
(411, 'Nov', 3, 55, 20, 2023),
(412, 'Dec', 3, 55, 20, 2023),
(420, 'Jun', 3, 61, 21, 2023),
(421, 'July', 3, 61, 21, 2023),
(422, 'Aug', 3, 61, 21, 2023),
(423, 'Sep', 3, 61, 21, 2023),
(424, 'Oct', 3, 61, 21, 2023),
(425, 'Nov', 3, 61, 21, 2023),
(426, 'Dec', 3, 61, 21, 2023),
(427, 'Jan', 2, 61, 21, 2024),
(428, 'Feb', 3, 61, 21, 2024),
(429, 'Mar', 3, 61, 21, 2024),
(430, 'Apr', 3, 61, 21, 2024),
(431, 'May', 3, 61, 21, 2024),
(432, 'Jun', 3, 61, 21, 2024),
(433, 'July', 3, 61, 21, 2024),
(434, 'Aug', 3, 61, 21, 2024),
(435, 'Sep', 3, 61, 21, 2024),
(436, 'Oct', 3, 61, 21, 2024),
(437, 'Nov', 3, 61, 21, 2024),
(438, 'Dec', 3, 61, 21, 2024),
(439, 'Jan', 3, 64, 22, 2023),
(440, 'Feb', 3, 64, 22, 2023),
(441, 'Mar', 3, 64, 22, 2023),
(442, 'Apr', 3, 64, 22, 2023),
(443, 'May', 3, 64, 22, 2023),
(444, 'Jun', 3, 64, 22, 2023),
(445, 'July', 3, 64, 22, 2023),
(446, 'Aug', 3, 64, 22, 2023),
(447, 'Sep', 3, 64, 22, 2023),
(448, 'Oct', 3, 64, 22, 2023),
(449, 'Nov', 3, 64, 22, 2023),
(450, 'Dec', 3, 64, 22, 2023),
(458, 'Jun', 1, 70, 23, 2023),
(459, 'July', 4, 70, 23, 2023),
(460, 'Aug', 4, 70, 23, 2023),
(461, 'Sep', 4, 70, 23, 2023),
(462, 'Oct', 4, 70, 23, 2023),
(463, 'Nov', 4, 70, 23, 2023),
(464, 'Dec', 4, 70, 23, 2023),
(465, 'Jan', 4, 70, 23, 2024),
(466, 'Feb', 4, 70, 23, 2024),
(467, 'Mar', 4, 70, 23, 2024),
(468, 'Apr', 4, 70, 23, 2024),
(469, 'May', 4, 70, 23, 2024),
(470, 'Jun', 3, 70, 23, 2024),
(471, 'July', 4, 70, 23, 2024),
(472, 'Aug', 4, 70, 23, 2024),
(473, 'Sep', 4, 70, 23, 2024),
(474, 'Oct', 4, 70, 23, 2024),
(475, 'Nov', 4, 70, 23, 2024),
(476, 'Dec', 4, 70, 23, 2024),
(477, 'Jan', 2, 73, 17, 2023),
(478, 'Feb', 3, 73, 17, 2023),
(479, 'Mar', 3, 73, 17, 2023),
(480, 'Apr', 3, 73, 17, 2023),
(481, 'May', 3, 73, 17, 2023),
(482, 'Jun', 3, 73, 17, 2023),
(483, 'July', 3, 73, 17, 2023),
(484, 'Aug', 3, 73, 17, 2023),
(485, 'Sep', 3, 73, 17, 2023),
(486, 'Oct', 3, 73, 17, 2023),
(487, 'Nov', 3, 73, 17, 2023),
(488, 'Dec', 3, 73, 17, 2023),
(489, 'Jan', 2, 73, 17, 2024),
(490, 'Feb', 3, 73, 17, 2024),
(491, 'Mar', 3, 73, 17, 2024),
(492, 'Apr', 3, 73, 17, 2024),
(493, 'May', 3, 73, 17, 2024),
(494, 'Jun', 3, 73, 17, 2024),
(502, 'Jun', 3, 79, 24, 2023),
(503, 'July', 3, 79, 24, 2023),
(504, 'Aug', 3, 79, 24, 2023),
(505, 'Sep', 3, 79, 24, 2023),
(506, 'Oct', 0, 79, 24, 2023),
(507, 'Nov', 2, 79, 24, 2023),
(508, 'Dec', 3, 79, 24, 2023),
(509, 'Jan', 3, 79, 24, 2024),
(510, 'Feb', 3, 79, 24, 2024),
(511, 'Mar', 3, 79, 24, 2024),
(512, 'Apr', 3, 79, 24, 2024),
(513, 'May', 3, 79, 24, 2024),
(514, 'Jun', 3, 79, 24, 2024),
(515, 'July', 3, 79, 24, 2024),
(516, 'Aug', 3, 79, 24, 2024),
(517, 'Sep', 3, 79, 24, 2024),
(518, 'Oct', 3, 79, 24, 2024),
(519, 'Nov', 3, 79, 24, 2024),
(520, 'Dec', 3, 79, 24, 2024),
(528, 'Jun', 3, 85, 25, 2023),
(529, 'July', 3, 85, 25, 2023),
(530, 'Aug', 0, 85, 25, 2023),
(531, 'Sep', 3, 85, 25, 2023),
(532, 'Oct', 3, 85, 25, 2023),
(533, 'Nov', 3, 85, 25, 2023),
(534, 'Dec', 3, 85, 25, 2023),
(535, 'Jan', 3, 85, 25, 2024),
(536, 'Feb', 3, 85, 25, 2024),
(537, 'Mar', 3, 85, 25, 2024),
(538, 'Apr', 3, 85, 25, 2024),
(539, 'May', 3, 85, 25, 2024),
(540, 'Jun', 3, 85, 25, 2024),
(541, 'July', 3, 85, 25, 2024),
(542, 'Aug', 2, 85, 25, 2024),
(543, 'Sep', 3, 85, 25, 2024),
(544, 'Oct', 3, 85, 25, 2024),
(545, 'Nov', 3, 85, 25, 2024),
(546, 'Dec', 3, 85, 25, 2024),
(547, 'Jan', 3, 88, 26, 2023),
(548, 'Feb', 3, 88, 26, 2023),
(549, 'Mar', 3, 88, 26, 2023),
(550, 'Apr', 3, 88, 26, 2023),
(551, 'May', 3, 88, 26, 2023),
(552, 'Jun', 3, 88, 26, 2023),
(553, 'July', 3, 88, 26, 2023),
(554, 'Aug', 3, 88, 26, 2023),
(555, 'Sep', 3, 88, 26, 2023),
(556, 'Oct', 3, 88, 26, 2023),
(557, 'Nov', 3, 88, 26, 2023),
(558, 'Dec', 3, 88, 26, 2023),
(559, 'Jan', 3, 92, 28, 2023),
(560, 'Feb', 3, 92, 28, 2023),
(561, 'Mar', 3, 92, 28, 2023),
(562, 'Apr', 3, 92, 28, 2023),
(563, 'May', 2, 92, 28, 2023),
(564, 'Jun', 3, 92, 28, 2023),
(565, 'July', 3, 92, 28, 2023),
(566, 'Aug', 3, 92, 28, 2023),
(567, 'Sep', 2, 92, 28, 2023),
(568, 'Oct', 3, 92, 28, 2023),
(569, 'Nov', 3, 92, 28, 2023),
(570, 'Dec', 3, 92, 28, 2023),
(571, 'Jan', 2, 95, 29, 2023),
(572, 'Feb', 3, 95, 29, 2023),
(573, 'Mar', 2, 95, 29, 2023),
(574, 'Apr', 3, 95, 29, 2023),
(575, 'May', 3, 95, 29, 2023),
(576, 'Jun', 3, 95, 29, 2023),
(577, 'July', 3, 95, 29, 2023),
(578, 'Aug', 3, 95, 29, 2023),
(579, 'Sep', 3, 95, 29, 2023),
(580, 'Oct', 3, 95, 29, 2023),
(581, 'Nov', 3, 95, 29, 2023),
(582, 'Dec', 3, 95, 29, 2023),
(583, 'Jan', 3, 98, 33, 2023),
(584, 'Feb', 3, 98, 33, 2023),
(585, 'Mar', 3, 98, 33, 2023),
(586, 'Apr', 3, 98, 33, 2023),
(587, 'May', 3, 98, 33, 2023),
(588, 'Jun', 3, 98, 33, 2023),
(589, 'July', 3, 98, 33, 2023),
(590, 'Aug', 3, 98, 33, 2023),
(591, 'Sep', 3, 98, 33, 2023),
(592, 'Oct', 2, 98, 33, 2023),
(593, 'Nov', 3, 98, 33, 2023),
(594, 'Dec', 3, 98, 33, 2023),
(595, 'Jan', 3, 103, 44, 2023),
(596, 'Feb', 3, 103, 44, 2023),
(597, 'Mar', 3, 103, 44, 2023),
(598, 'Apr', 3, 103, 44, 2023),
(599, 'May', 3, 103, 44, 2023),
(600, 'Jun', 3, 103, 44, 2023),
(601, 'July', 3, 103, 44, 2023),
(602, 'Aug', 3, 103, 44, 2023),
(603, 'Sep', 3, 103, 44, 2023),
(604, 'Oct', 3, 103, 44, 2023),
(605, 'Nov', 3, 103, 44, 2023),
(606, 'Dec', 3, 103, 44, 2023),
(607, 'Jan', 2, 106, 45, 2023),
(608, 'Feb', 2, 106, 45, 2023),
(609, 'Mar', 2, 106, 45, 2023),
(610, 'Apr', 2, 106, 45, 2023),
(611, 'May', 2, 106, 45, 2023),
(612, 'Jun', 2, 106, 45, 2023),
(613, 'July', 2, 106, 45, 2023),
(614, 'Aug', 2, 106, 45, 2023),
(615, 'Sep', 2, 106, 45, 2023),
(616, 'Oct', 2, 106, 45, 2023),
(617, 'Nov', 2, 106, 45, 2023),
(618, 'Dec', 2, 106, 45, 2023),
(631, 'Jan', 3, 112, 46, 2023),
(632, 'Feb', 3, 112, 46, 2023),
(633, 'Mar', 3, 112, 46, 2023),
(634, 'Apr', 3, 112, 46, 2023),
(635, 'May', 3, 112, 46, 2023),
(636, 'Jun', 3, 112, 46, 2023),
(637, 'July', 3, 112, 46, 2023),
(638, 'Aug', 3, 112, 46, 2023),
(639, 'Sep', 3, 112, 46, 2023),
(640, 'Oct', 3, 112, 46, 2023),
(641, 'Nov', 3, 112, 46, 2023),
(642, 'Dec', 3, 112, 46, 2023),
(643, 'Jan', 3, 112, 46, 2024),
(644, 'Feb', 3, 112, 46, 2024),
(645, 'Mar', 3, 112, 46, 2024),
(646, 'Apr', 3, 112, 46, 2024),
(647, 'May', 3, 112, 46, 2024),
(648, 'Jun', 3, 112, 46, 2024),
(649, 'July', 3, 112, 46, 2024),
(650, 'Aug', 3, 112, 46, 2024),
(651, 'Sep', 3, 112, 46, 2024),
(652, 'Oct', 3, 112, 46, 2024),
(653, 'Nov', 3, 112, 46, 2024),
(654, 'Dec', 3, 112, 46, 2024),
(655, 'Aug', 3, 115, 47, 2023),
(656, 'Sep', 3, 115, 47, 2023),
(657, 'Oct', 3, 115, 47, 2023),
(658, 'Nov', 3, 115, 47, 2023),
(659, 'Dec', 3, 115, 47, 2023),
(660, 'Jan', 3, 115, 47, 2024),
(661, 'Feb', 3, 115, 47, 2024),
(662, 'Mar', 3, 115, 47, 2024),
(663, 'Apr', 3, 115, 47, 2024),
(664, 'May', 3, 115, 47, 2024),
(665, 'Jun', 3, 115, 47, 2024),
(666, 'July', 3, 115, 47, 2024),
(667, 'Aug', 3, 115, 47, 2024),
(668, 'Sep', 3, 115, 47, 2024),
(669, 'Oct', 3, 115, 47, 2024),
(670, 'Nov', 3, 115, 47, 2024),
(671, 'Dec', 3, 115, 47, 2024),
(672, 'Aug', 3, 118, 48, 2023),
(673, 'Sep', 3, 118, 48, 2023),
(674, 'Oct', 3, 118, 48, 2023),
(675, 'Nov', 3, 118, 48, 2023),
(676, 'Dec', 3, 118, 48, 2023),
(677, 'Jan', 3, 118, 48, 2024),
(678, 'Feb', 3, 118, 48, 2024),
(679, 'Mar', 3, 118, 48, 2024),
(680, 'Apr', 3, 118, 48, 2024),
(681, 'May', 3, 118, 48, 2024),
(682, 'Jun', 3, 118, 48, 2024),
(683, 'July', 3, 118, 48, 2024),
(684, 'Aug', 3, 118, 48, 2024),
(685, 'Sep', 3, 118, 48, 2024),
(686, 'Oct', 3, 118, 48, 2024),
(687, 'Nov', 3, 118, 48, 2024),
(688, 'Dec', 3, 118, 48, 2024),
(689, 'Aug', 3, 121, 49, 2023),
(690, 'Sep', 3, 121, 49, 2023),
(691, 'Oct', 3, 121, 49, 2023),
(692, 'Nov', 3, 121, 49, 2023),
(705, 'Jan', 3, 127, 53, 2023),
(706, 'Feb', 3, 127, 53, 2023),
(707, 'Mar', 3, 127, 53, 2023),
(708, 'Apr', 3, 127, 53, 2023),
(709, 'May', 3, 127, 53, 2023),
(710, 'Jun', 3, 127, 53, 2023),
(711, 'July', 3, 127, 53, 2023),
(712, 'Aug', 3, 127, 53, 2023),
(713, 'Sep', 3, 127, 53, 2023),
(714, 'Oct', 3, 127, 53, 2023),
(715, 'Nov', 3, 127, 53, 2023),
(716, 'Dec', 3, 127, 53, 2023),
(717, 'Jan', 3, 130, 54, 2023),
(718, 'Feb', 3, 130, 54, 2023),
(719, 'Mar', 3, 130, 54, 2023),
(720, 'Apr', 3, 130, 54, 2023),
(721, 'May', 3, 130, 54, 2023),
(722, 'Jun', 3, 130, 54, 2023),
(723, 'July', 3, 130, 54, 2023),
(724, 'Aug', 3, 130, 54, 2023),
(725, 'Sep', 3, 130, 54, 2023),
(726, 'Oct', 3, 130, 54, 2023),
(727, 'Nov', 3, 130, 54, 2023),
(728, 'Dec', 3, 130, 54, 2023),
(729, 'Jan', 3, 133, 55, 2023),
(730, 'Feb', 3, 133, 55, 2023),
(731, 'Mar', 3, 133, 55, 2023),
(732, 'Apr', 3, 133, 55, 2023),
(733, 'May', 3, 133, 55, 2023),
(734, 'Jun', 3, 133, 55, 2023),
(735, 'July', 3, 133, 55, 2023),
(736, 'Aug', 3, 133, 55, 2023),
(737, 'Sep', 3, 133, 55, 2023),
(738, 'Oct', 3, 133, 55, 2023),
(739, 'Nov', 3, 133, 55, 2023),
(740, 'Dec', 3, 133, 55, 2023),
(741, 'Jan', 3, 136, 56, 2023),
(742, 'Feb', 3, 136, 56, 2023),
(743, 'Mar', 3, 136, 56, 2023),
(744, 'Apr', 3, 136, 56, 2023),
(745, 'May', 3, 136, 56, 2023),
(746, 'Jun', 3, 136, 56, 2023),
(747, 'July', 3, 136, 56, 2023),
(748, 'Aug', 3, 136, 56, 2023),
(749, 'Sep', 3, 136, 56, 2023),
(750, 'Oct', 3, 136, 56, 2023),
(751, 'Nov', 3, 136, 56, 2023),
(752, 'Dec', 3, 136, 56, 2023),
(777, 'Jan', 3, 145, 57, 2023),
(778, 'Feb', 3, 145, 57, 2023),
(779, 'Mar', 3, 145, 57, 2023),
(780, 'Apr', 3, 145, 57, 2023),
(781, 'May', 3, 145, 57, 2023),
(782, 'Jun', 3, 145, 57, 2023),
(783, 'July', 3, 145, 57, 2023),
(784, 'Aug', 3, 145, 57, 2023),
(785, 'Sep', 3, 145, 57, 2023),
(786, 'Oct', 3, 145, 57, 2023),
(787, 'Nov', 3, 145, 57, 2023),
(788, 'Dec', 3, 145, 57, 2023),
(789, 'Jan', 3, 148, 58, 2023),
(790, 'Feb', 3, 148, 58, 2023),
(791, 'Mar', 3, 148, 58, 2023),
(792, 'Apr', 3, 148, 58, 2023),
(793, 'May', 3, 148, 58, 2023),
(794, 'Jun', 3, 148, 58, 2023),
(795, 'July', 3, 148, 58, 2023),
(796, 'Aug', 3, 148, 58, 2023),
(797, 'Sep', 3, 148, 58, 2023),
(798, 'Oct', 3, 148, 58, 2023),
(799, 'Nov', 3, 148, 58, 2023),
(800, 'Dec', 3, 148, 58, 2023),
(801, 'Jan', 3, 151, 59, 2023),
(802, 'Feb', 3, 151, 59, 2023),
(803, 'Mar', 3, 151, 59, 2023),
(804, 'Apr', 3, 151, 59, 2023),
(805, 'May', 3, 151, 59, 2023),
(806, 'Jun', 3, 151, 59, 2023),
(807, 'July', 3, 151, 59, 2023),
(808, 'Aug', 3, 151, 59, 2023),
(809, 'Sep', 3, 151, 59, 2023),
(810, 'Oct', 3, 151, 59, 2023),
(811, 'Nov', 3, 151, 59, 2023),
(812, 'Dec', 3, 151, 59, 2023),
(813, 'Jan', 3, 154, 60, 2023),
(814, 'Feb', 3, 154, 60, 2023),
(815, 'Mar', 3, 154, 60, 2023),
(816, 'Apr', 3, 154, 60, 2023),
(817, 'May', 3, 154, 60, 2023),
(818, 'Jun', 3, 154, 60, 2023),
(819, 'July', 3, 154, 60, 2023),
(820, 'Aug', 3, 154, 60, 2023),
(821, 'Sep', 3, 154, 60, 2023),
(822, 'Oct', 3, 154, 60, 2023),
(823, 'Nov', 3, 154, 60, 2023),
(824, 'Dec', 3, 154, 60, 2023),
(825, 'Jan', 3, 157, 61, 2023),
(826, 'Feb', 3, 157, 61, 2023),
(827, 'Mar', 3, 157, 61, 2023),
(828, 'Apr', 3, 157, 61, 2023),
(829, 'May', 3, 157, 61, 2023),
(830, 'Jun', 3, 157, 61, 2023),
(831, 'July', 3, 157, 61, 2023),
(832, 'Aug', 3, 157, 61, 2023),
(833, 'Sep', 3, 157, 61, 2023),
(834, 'Oct', 3, 157, 61, 2023),
(835, 'Nov', 3, 157, 61, 2023),
(836, 'Dec', 3, 157, 61, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `nus_calenderquarter`
--

CREATE TABLE `nus_calenderquarter` (
  `querterid` int NOT NULL,
  `quarters` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `clicks` int NOT NULL,
  `tradeid` int NOT NULL,
  `supplierid` int NOT NULL,
  `yearoftrade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_calenderquarter`
--

INSERT INTO `nus_calenderquarter` (`querterid`, `quarters`, `clicks`, `tradeid`, `supplierid`, `yearoftrade`) VALUES
(43, 'q3', 2, 24, 2, 2023),
(44, 'q4', 2, 24, 2, 2023),
(45, 'q1', 2, 24, 2, 2024),
(46, 'q2', 2, 24, 2, 2024),
(47, 'q3', 2, 24, 2, 2024),
(48, 'q4', 1, 24, 2, 2024),
(49, 'q1', 2, 24, 2, 2025),
(50, 'q2', 2, 24, 2, 2025),
(51, 'q3', 2, 24, 2, 2025),
(52, 'q4', 2, 24, 2, 2025),
(53, 'q1', 2, 24, 2, 2026),
(54, 'q2', 2, 24, 2, 2026),
(55, 'q3', 2, 24, 2, 2026),
(56, 'q4', 2, 24, 2, 2026),
(57, 'q3', 4, 26, 6, 2023),
(58, 'q4', 4, 26, 6, 2023),
(59, 'q1', 4, 26, 6, 2024),
(60, 'q2', 4, 26, 6, 2024),
(61, 'q3', 4, 26, 6, 2024),
(62, 'q4', 4, 26, 6, 2024),
(63, 'q3', 0, 28, 9, 2023),
(64, 'q4', 2, 28, 9, 2023),
(65, 'q1', 2, 30, 12, 2023),
(66, 'q2', 3, 30, 12, 2023),
(67, 'q3', 3, 30, 12, 2023),
(68, 'q4', 3, 30, 12, 2023),
(69, 'q1', 2, 33, 13, 2023),
(70, 'q2', 3, 33, 13, 2023),
(71, 'q3', 3, 33, 13, 2023),
(72, 'q4', 3, 33, 13, 2023),
(73, 'q1', 2, 36, 14, 2023),
(74, 'q2', 3, 36, 14, 2023),
(75, 'q3', 3, 36, 14, 2023),
(76, 'q4', 3, 36, 14, 2023),
(77, 'q1', 3, 39, 15, 2023),
(78, 'q2', 3, 39, 15, 2023),
(79, 'q3', 3, 39, 15, 2023),
(80, 'q4', 3, 39, 15, 2023),
(81, 'q1', 2, 42, 16, 2023),
(82, 'q2', 3, 42, 16, 2023),
(83, 'q3', 3, 42, 16, 2023),
(84, 'q4', 3, 42, 16, 2023),
(89, 'q1', 2, 48, 18, 2023),
(90, 'q2', 3, 48, 18, 2023),
(91, 'q3', 3, 48, 18, 2023),
(92, 'q4', 3, 48, 18, 2023),
(93, 'q1', 2, 51, 19, 2023),
(94, 'q2', 3, 51, 19, 2023),
(95, 'q3', 3, 51, 19, 2023),
(96, 'q4', 3, 51, 19, 2023),
(97, 'q1', 3, 54, 20, 2023),
(98, 'q2', 2, 54, 20, 2023),
(99, 'q3', 3, 54, 20, 2023),
(100, 'q4', 3, 54, 20, 2023),
(104, 'q2', 3, 60, 21, 2023),
(105, 'q3', 2, 60, 21, 2023),
(106, 'q4', 3, 60, 21, 2023),
(107, 'q1', 2, 60, 21, 2024),
(108, 'q2', 3, 60, 21, 2024),
(109, 'q3', 3, 60, 21, 2024),
(110, 'q4', 3, 60, 21, 2024),
(111, 'q1', 3, 63, 22, 2023),
(112, 'q2', 2, 63, 22, 2023),
(113, 'q3', 3, 63, 22, 2023),
(114, 'q4', 3, 63, 22, 2023),
(118, 'q2', 3, 69, 23, 2023),
(119, 'q3', 3, 69, 23, 2023),
(120, 'q4', 3, 69, 23, 2023),
(121, 'q1', 3, 69, 23, 2024),
(122, 'q2', 3, 69, 23, 2024),
(123, 'q3', 3, 69, 23, 2024),
(124, 'q4', 3, 69, 23, 2024),
(125, 'q1', 2, 72, 17, 2023),
(126, 'q2', 3, 72, 17, 2023),
(127, 'q3', 3, 72, 17, 2023),
(128, 'q4', 3, 72, 17, 2023),
(129, 'q1', 2, 72, 17, 2024),
(130, 'q2', 3, 72, 17, 2024),
(134, 'q2', 3, 78, 24, 2023),
(135, 'q3', 3, 78, 24, 2023),
(136, 'q4', 3, 78, 24, 2023),
(137, 'q1', 3, 78, 24, 2024),
(138, 'q2', 3, 78, 24, 2024),
(139, 'q3', 3, 78, 24, 2024),
(140, 'q4', 3, 78, 24, 2024),
(144, 'q2', 3, 84, 25, 2023),
(145, 'q3', 3, 84, 25, 2023),
(146, 'q4', 3, 84, 25, 2023),
(147, 'q1', 3, 84, 25, 2024),
(148, 'q2', 3, 84, 25, 2024),
(149, 'q3', 3, 84, 25, 2024),
(150, 'q4', 3, 84, 25, 2024),
(151, 'q1', 3, 87, 26, 2023),
(152, 'q2', 3, 87, 26, 2023),
(153, 'q3', 3, 87, 26, 2023),
(154, 'q4', 3, 87, 26, 2023),
(155, 'q1', 3, 91, 28, 2023),
(156, 'q2', 2, 91, 28, 2023),
(157, 'q3', 3, 91, 28, 2023),
(158, 'q4', 2, 91, 28, 2023),
(159, 'q1', 2, 94, 29, 2023),
(160, 'q2', 3, 94, 29, 2023),
(161, 'q3', 3, 94, 29, 2023),
(162, 'q4', 2, 94, 29, 2023),
(163, 'q1', 2, 97, 33, 2023),
(164, 'q2', 3, 97, 33, 2023),
(165, 'q3', 3, 97, 33, 2023),
(166, 'q4', 3, 97, 33, 2023),
(167, 'q1', 3, 102, 44, 2023),
(168, 'q2', 3, 102, 44, 2023),
(169, 'q3', 3, 102, 44, 2023),
(170, 'q4', 3, 102, 44, 2023),
(171, 'q1', 2, 105, 45, 2023),
(172, 'q2', 2, 105, 45, 2023),
(173, 'q3', 2, 105, 45, 2023),
(174, 'q4', 2, 105, 45, 2023),
(179, 'q1', 3, 111, 46, 2023),
(180, 'q2', 3, 111, 46, 2023),
(181, 'q3', 3, 111, 46, 2023),
(182, 'q4', 3, 111, 46, 2023),
(183, 'q1', 3, 111, 46, 2024),
(184, 'q2', 3, 111, 46, 2024),
(185, 'q3', 3, 111, 46, 2024),
(186, 'q4', 3, 111, 46, 2024),
(187, 'q3', 3, 114, 47, 2023),
(188, 'q4', 3, 114, 47, 2023),
(189, 'q1', 3, 114, 47, 2024),
(190, 'q2', 3, 114, 47, 2024),
(191, 'q3', 3, 114, 47, 2024),
(192, 'q4', 3, 114, 47, 2024),
(193, 'q3', 3, 117, 48, 2023),
(194, 'q4', 3, 117, 48, 2023),
(195, 'q1', 3, 117, 48, 2024),
(196, 'q2', 3, 117, 48, 2024),
(197, 'q3', 3, 117, 48, 2024),
(198, 'q4', 3, 117, 48, 2024),
(199, 'q3', 3, 120, 49, 2023),
(200, 'q4', 3, 120, 49, 2023),
(205, 'q1', 3, 126, 53, 2023),
(206, 'q2', 3, 126, 53, 2023),
(207, 'q3', 3, 126, 53, 2023),
(208, 'q4', 3, 126, 53, 2023),
(209, 'q1', 3, 129, 54, 2023),
(210, 'q2', 3, 129, 54, 2023),
(211, 'q3', 3, 129, 54, 2023),
(212, 'q4', 3, 129, 54, 2023),
(213, 'q1', 3, 132, 55, 2023),
(214, 'q2', 3, 132, 55, 2023),
(215, 'q3', 3, 132, 55, 2023),
(216, 'q4', 3, 132, 55, 2023),
(217, 'q1', 3, 135, 56, 2023),
(218, 'q2', 3, 135, 56, 2023),
(219, 'q3', 3, 135, 56, 2023),
(220, 'q4', 3, 135, 56, 2023),
(229, 'q1', 3, 144, 57, 2023),
(230, 'q2', 3, 144, 57, 2023),
(231, 'q3', 3, 144, 57, 2023),
(232, 'q4', 3, 144, 57, 2023),
(233, 'q1', 3, 147, 58, 2023),
(234, 'q2', 3, 147, 58, 2023),
(235, 'q3', 3, 147, 58, 2023),
(236, 'q4', 3, 147, 58, 2023),
(237, 'q1', 3, 150, 59, 2023),
(238, 'q2', 3, 150, 59, 2023),
(239, 'q3', 3, 150, 59, 2023),
(240, 'q4', 3, 150, 59, 2023),
(241, 'q1', 3, 153, 60, 2023),
(242, 'q2', 3, 153, 60, 2023),
(243, 'q3', 3, 153, 60, 2023),
(244, 'q4', 3, 153, 60, 2023),
(245, 'q1', 3, 156, 61, 2023),
(246, 'q2', 3, 156, 61, 2023),
(247, 'q3', 3, 156, 61, 2023),
(248, 'q4', 3, 156, 61, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `nus_calenderyear`
--

CREATE TABLE `nus_calenderyear` (
  `calenderId` int NOT NULL,
  `calenderyear` int NOT NULL,
  `clicks` int NOT NULL,
  `tradeId` int NOT NULL,
  `supplierid` int NOT NULL,
  `timeperiod` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_calenderyear`
--

INSERT INTO `nus_calenderyear` (`calenderId`, `calenderyear`, `clicks`, `tradeId`, `supplierid`, `timeperiod`) VALUES
(16, 2024, 2, 7, 1, '2024-1-01,2024-12-01'),
(17, 2025, 3, 7, 1, '2025-1-01,2025-12-01'),
(18, 2026, 3, 7, 1, '2026-1-01,2026-12-01'),
(34, 2024, 1, 22, 2, '2024-1-01,2024-12-01'),
(35, 2025, 2, 22, 2, '2025-1-01,2025-12-01'),
(36, 2026, 2, 22, 2, '2026-1-01,2026-12-01'),
(37, 2024, 4, 25, 6, '2024-1-01,2024-12-01'),
(38, 2023, 1, 29, 12, '2023-1-01,2023-12-01'),
(39, 2023, 2, 32, 13, '2023-1-01,2023-12-01'),
(40, 2023, 2, 35, 14, '2023-1-01,2023-12-01'),
(41, 2023, 3, 38, 15, '2023-1-01,2023-12-01'),
(42, 2023, 2, 41, 16, '2023-1-01,2023-12-01'),
(44, 2023, 1, 47, 18, '2023-1-01,2023-12-01'),
(45, 2023, 1, 50, 19, '2023-1-01,2023-12-01'),
(46, 2023, 2, 53, 20, '2023-1-01,2023-12-01'),
(47, 2024, 1, 59, 21, '2024-1-01,2024-12-01'),
(48, 2023, 2, 62, 22, '2023-1-01,2023-12-01'),
(49, 2024, 3, 68, 23, '2024-1-01,2024-12-01'),
(50, 2023, 1, 71, 17, '2023-1-01,2023-12-01'),
(51, 2024, 3, 77, 24, '2024-1-01,2024-12-01'),
(52, 2024, 3, 83, 25, '2024-1-01,2024-12-01'),
(53, 2023, 0, 86, 26, '2023-1-01,2023-12-01'),
(54, 2023, 1, 90, 28, '2023-1-01,2023-12-01'),
(55, 2023, 1, 93, 29, '2023-1-01,2023-12-01'),
(56, 2023, 2, 96, 33, '2023-1-01,2023-12-01'),
(57, 2022, 6, 100, 42, '2022-1-01,2022-12-01'),
(58, 2023, 1, 101, 44, '2023-1-01,2023-12-01'),
(59, 2023, 1, 104, 45, '2023-1-01,2023-12-01'),
(61, 2023, 0, 110, 46, '2023-1-01,2023-12-01'),
(62, 2024, 2, 110, 46, '2024-1-01,2024-12-01'),
(63, 2024, 1, 113, 47, '2024-1-01,2024-12-01'),
(64, 2024, 0, 116, 48, '2024-1-01,2024-12-01'),
(66, 2023, 3, 125, 53, '2023-1-01,2023-12-01'),
(67, 2023, 3, 128, 54, '2023-1-01,2023-12-01'),
(68, 2023, 3, 131, 55, '2023-1-01,2023-12-01'),
(69, 2023, 3, 134, 56, '2023-1-01,2023-12-01'),
(72, 2023, 3, 143, 57, '2023-1-01,2023-12-01'),
(73, 2023, 3, 146, 58, '2023-1-01,2023-12-01'),
(74, 2023, 3, 149, 59, '2023-1-01,2023-12-01'),
(75, 2023, 3, 152, 60, '2023-1-01,2023-12-01'),
(76, 2023, 3, 155, 61, '2023-1-01,2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `nus_countries`
--

CREATE TABLE `nus_countries` (
  `countryId` int NOT NULL,
  `countryName` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `addedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_countries`
--

INSERT INTO `nus_countries` (`countryId`, `countryName`, `addedOn`) VALUES
(1, 'India', '2022-05-19 13:20:42'),
(2, 'Sri Lanka', '2022-05-19 13:20:42'),
(3, 'United Kingdom', '2022-07-20 15:40:12');

-- --------------------------------------------------------

--
-- Table structure for table `nus_currencies`
--

CREATE TABLE `nus_currencies` (
  `id` tinyint NOT NULL,
  `currencies` varchar(5) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_currencies`
--

INSERT INTO `nus_currencies` (`id`, `currencies`) VALUES
(3, 'AUD'),
(4, 'CAD'),
(5, 'CHF'),
(6, 'CZK'),
(12, 'DKK'),
(2, 'EUR'),
(7, 'GBP'),
(8, 'HUF'),
(9, 'PLN'),
(10, 'SEK'),
(11, 'SGD'),
(1, 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `nus_electricity_index`
--

CREATE TABLE `nus_electricity_index` (
  `id` tinyint NOT NULL,
  `country` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `indexlist` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_electricity_index`
--

INSERT INTO `nus_electricity_index` (`id`, `country`, `indexlist`) VALUES
(1, 'Australia', 'ASX'),
(2, 'Austria', 'EEX'),
(3, 'Croatia', 'Hudex'),
(4, 'Czechia', 'EEX-PXE'),
(5, 'Denmark', 'Nasdaq OMX'),
(6, 'Finland', 'Nasdaq OMX'),
(7, 'France', 'EEX'),
(8, 'Germany', 'EEX'),
(9, 'Hungary', 'EEX-PXE'),
(10, 'Hungary', 'PXE'),
(11, 'International', 'Financial Hedging'),
(12, 'Italy', 'EEX'),
(13, 'Netherlands - Belgium', 'Ice Endex'),
(14, 'Norway', 'Nasdaq OMX'),
(15, 'Poland', 'TGE (EFM)'),
(16, 'Romania', 'OPCOM'),
(17, 'Slovakia', 'EEX-PXE'),
(18, 'Slovenia', 'EEX-PXE'),
(19, 'Spain & Portugal', 'OMIP'),
(20, 'Sweden', 'Nasdaq OMX'),
(21, 'Switzerland', 'EEX'),
(22, 'UK', 'Futures - ICE'),
(23, 'UK', 'N2EX Day-Ahead'),
(24, 'UK', 'OTC - NBP'),
(25, 'USA', 'CAISO NP-15'),
(26, 'USA', 'CAISO SP-15'),
(27, 'USA', 'ERCOT North or Houston'),
(28, 'USA', 'Illinois Hub (MISO)'),
(29, 'USA', 'NEPOOL Internal Hub'),
(30, 'USA', 'NYISO Zone J (NYC area)'),
(31, 'USA', 'PJM Western Hub');

-- --------------------------------------------------------

--
-- Table structure for table `nus_naturalgas_index`
--

CREATE TABLE `nus_naturalgas_index` (
  `id` tinyint NOT NULL,
  `country` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `indexlist` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_naturalgas_index`
--

INSERT INTO `nus_naturalgas_index` (`id`, `country`, `indexlist`) VALUES
(1, 'Austria', 'CEGH VTP'),
(2, 'Austria', 'PEGAS/CEGH VTP'),
(3, 'Croatia', 'Argus Day Ahead TTF'),
(4, 'Czech', 'CZ VTP'),
(5, 'Denmark', 'ETF'),
(6, 'France', 'PEG'),
(7, 'Germany - Switzerland', 'THE/PEGAS'),
(8, 'Hungary', 'CEEGEX'),
(9, 'International', 'Financial Hedging'),
(10, 'Italy', 'PSV'),
(11, 'Netherlands', 'TTF'),
(12, 'Norway', 'ETF'),
(13, 'Poland', 'TGE (GFM)'),
(14, 'Romania', 'OPCOM'),
(15, 'Spain & Portugal', 'MIBGAS'),
(16, 'Sweden', 'ETF'),
(17, 'UK', 'Futures - ICE'),
(18, 'UK', 'Heren Day-Ahead'),
(19, 'UK', 'OTC - NBP'),
(20, 'USA', 'NYMEX'),
(21, 'USA & Mexico', 'HSC [Houston Ship Channel]');

-- --------------------------------------------------------

--
-- Table structure for table `nus_pricing_mechanisam`
--

CREATE TABLE `nus_pricing_mechanisam` (
  `priMechId` int NOT NULL,
  `pricingMechName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `priceMechDesc` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `addedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_pricing_mechanisam`
--

INSERT INTO `nus_pricing_mechanisam` (`priMechId`, `pricingMechName`, `priceMechDesc`, `addedOn`) VALUES
(1, 'Day Ahead', 'Spot Daily Market', '2022-05-23 13:07:28'),
(2, 'Day Ahead', 'Spot Average for month', '2022-05-23 13:08:14'),
(3, 'Month Ahead', 'Last Value', '2022-05-23 13:08:14'),
(4, 'Month Ahead', 'Average Value', '2022-05-23 13:09:07'),
(5, 'Quarter Ahead', 'Last Value', '2022-05-23 13:09:07'),
(6, 'Quarter Ahead', 'Average Value', '2022-05-23 13:09:46'),
(7, 'Calendar Ahead', 'Last Value', '2022-05-23 13:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `nus_season`
--

CREATE TABLE `nus_season` (
  `seasonId` int NOT NULL,
  `tradeId` int NOT NULL,
  `yeartrade` int NOT NULL,
  `supplierId` int NOT NULL,
  `season` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `clicks` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nus_supply_archieve`
--

CREATE TABLE `nus_supply_archieve` (
  `id` int NOT NULL,
  `clientId` int NOT NULL,
  `supplierId` int NOT NULL,
  `state` enum('Active','Archived','Cancelled') COLLATE utf8mb4_general_ci NOT NULL,
  `user` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `datevalue` date NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_supply_archieve`
--

INSERT INTO `nus_supply_archieve` (`id`, `clientId`, `supplierId`, `state`, `user`, `datevalue`, `description`, `timestamp`) VALUES
(1, 3, 1, 'Cancelled', 'NUSADMIN', '2023-08-04', 'asdf', '2023-08-04 13:13:02'),
(2, 4, 2, 'Archived', 'NUSADMIN', '2023-08-04', 'fdas', '2023-08-04 14:24:43'),
(3, 4, 2, 'Active', 'NUSADMIN', '2023-08-04', 'asdf', '2023-08-04 14:24:51'),
(4, 1, 6, 'Archived', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:39:12'),
(5, 1, 6, 'Active', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:39:17'),
(6, 1, 6, 'Active', 'NUSADMIN', '2023-08-07', 'A', '2023-08-07 03:44:27'),
(7, 1, 6, 'Archived', 'NUSADMIN', '2023-08-07', 'qqqq', '2023-08-07 09:32:22'),
(8, 1, 6, 'Active', 'NUSADMIN', '2023-08-07', 'asa', '2023-08-07 09:38:18'),
(9, 1, 6, 'Cancelled', 'NUSADMIN', '2023-08-07', 'cancel', '2023-08-07 09:38:33'),
(10, 12, 20, 'Archived', 'NUSADMIN', '2023-08-10', 'ssss', '2023-08-10 08:49:34'),
(11, 12, 20, 'Active', 'NUSADMIN', '2023-08-10', 'ooo', '2023-08-10 08:50:55'),
(12, 12, 20, 'Cancelled', 'NUSADMIN', '2023-08-10', 'cancel\r\n', '2023-08-10 08:51:25'),
(13, 12, 20, 'Active', 'NUSADMIN', '2023-08-10', 'kkkk', '2023-08-10 08:53:04'),
(14, 12, 20, 'Cancelled', 'manager', '2023-08-10', 'fff', '2023-08-10 09:02:00'),
(15, 12, 20, 'Active', 'manager', '2023-08-10', 'reactivate\r\n', '2023-08-10 09:02:26'),
(16, 12, 19, 'Active', 'manager', '2023-08-10', 'reactivate', '2023-08-10 09:02:37'),
(17, 13, 25, 'Archived', 'NUSADMIN', '2023-08-10', 'archive\r\n', '2023-08-10 09:28:47'),
(18, 12, 20, 'Archived', 'NUSADMIN', '2023-08-10', 'qqqqq', '2023-08-10 11:05:25'),
(19, 11, 26, 'Cancelled', 'NUSADMIN', '2023-08-10', 'cancel\r\n', '2023-08-10 11:11:19'),
(20, 11, 16, 'Archived', 'NUSADMIN', '2023-08-10', 'archive', '2023-08-10 11:11:30'),
(21, 11, 26, 'Active', 'NUSADMIN', '2023-08-10', 'cintarct reactivate', '2023-08-10 11:12:38'),
(22, 13, 25, 'Active', 'NUSADMIN', '2023-08-10', 'jj', '2023-08-10 11:19:44'),
(23, 13, 25, 'Archived', 'NUSADMIN', '2023-08-10', 'jj', '2023-08-10 11:20:22'),
(24, 13, 25, 'Active', 'NUSADMIN', '2023-08-10', 'jj', '2023-08-10 11:20:38'),
(25, 13, 25, 'Cancelled', 'NUSADMIN', '2023-08-10', 'jj', '2023-08-10 11:20:46'),
(26, 13, 25, 'Active', 'NUSADMIN', '2023-08-10', 'jj', '2023-08-10 11:21:25'),
(27, 15, 36, 'Cancelled', 'NUSADMIN', '2023-08-14', 'cancel', '2023-08-14 09:07:28'),
(28, 15, 37, 'Cancelled', 'NUSADMIN', '2023-08-14', 'v', '2023-08-14 09:12:11'),
(29, 15, 38, 'Cancelled', 'NUSADMIN', '2023-08-14', 'cancel', '2023-08-14 09:25:52'),
(30, 14, 33, 'Active', 'NUSADMIN', '2023-08-14', 'reactivate1', '2023-08-14 09:48:06'),
(31, 14, 22, 'Active', 'NUSADMIN', '2023-08-14', 'reactivate\r\n', '2023-08-14 09:48:15'),
(32, 16, 40, 'Active', 'NUSADMIN', '2023-08-14', 'cancel', '2023-08-14 09:52:53'),
(33, 11, 29, 'Archived', 'NUSADMIN', '2023-08-14', 'Archive', '2023-08-14 10:01:40'),
(34, 12, 20, 'Archived', 'NUSADMIN', '2023-08-16', 'Archive contract', '2023-08-16 18:10:24'),
(35, 12, 20, 'Active', 'NUSADMIN', '2023-08-16', 'reactivate trade', '2023-08-16 18:12:45'),
(36, 12, 20, 'Cancelled', 'NUSADMIN', '2023-08-16', 'Cancel', '2023-08-16 18:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `nus_supply_contract`
--

CREATE TABLE `nus_supply_contract` (
  `supplierId` int NOT NULL,
  `parentId` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clientId` int DEFAULT NULL,
  `contract_id` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `countryName` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commodityName` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commodityUnits` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `supplyName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contractType` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contractIndexId` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contractTermfromDate` date DEFAULT NULL,
  `contractTermtoDate` date DEFAULT NULL,
  `commodityPrice` float(10,2) DEFAULT '0.00',
  `totalAnualConsumption` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `totlconsumption` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `allmonts` text COLLATE utf8mb4_general_ci,
  `contractpricetype` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `indexStructureType` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `consumMinsize` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clickTrancheminsize` int DEFAULT NULL,
  `openPrizemechanism` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contractstatus` varchar(16) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'A',
  `consumptionmonth` text COLLATE utf8mb4_general_ci,
  `hedgeconsumption` text COLLATE utf8mb4_general_ci,
  `openconsumption` text COLLATE utf8mb4_general_ci,
  `basegenconsumption` text COLLATE utf8mb4_general_ci,
  `effectcon` text COLLATE utf8mb4_general_ci,
  `state` enum('Active','Archived','Cancelled') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_supply_contract`
--

INSERT INTO `nus_supply_contract` (`supplierId`, `parentId`, `clientId`, `contract_id`, `countryName`, `commodityName`, `commodityUnits`, `supplyName`, `contractType`, `contractIndexId`, `contractTermfromDate`, `contractTermtoDate`, `commodityPrice`, `totalAnualConsumption`, `totlconsumption`, `allmonts`, `contractpricetype`, `indexStructureType`, `consumMinsize`, `clickTrancheminsize`, `openPrizemechanism`, `contractstatus`, `consumptionmonth`, `hedgeconsumption`, `openconsumption`, `basegenconsumption`, `effectcon`, `state`) VALUES
(1, 'NUS - International', 3, 'NUS-Elec-00001', 'Spain', 'electricity', '', 'Endesa', 'indexed', 'OMIP / Spain & Portugal', '2023-08-01', '2026-12-31', 0.00, '12,000', '12,000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01,2025-1-01,2025-2-01,2025-3-01,2025-4-01,2025-5-01,2025-6-01,2025-7-01,2025-8-01,2025-9-01,2025-10-01,2025-11-01,2025-12-01,2026-1-01,2026-2-01,2026-3-01,2026-4-01,2026-5-01,2026-6-01,2026-7-01,2026-8-01,2026-9-01,2026-10-01,2026-11-01,2026-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Aug-2023-900|Sep-2023-1000|Oct-2023-1100|Nov-2023-1000|Dec-2023-900|Jan-2024-1000|Feb-2024-1100|Mar-2024-1200|Apr-2024-1100|May-2024-1000|Jun-2024-900|July-2024-800|Aug-2024-900|Sep-2024-1000|Oct-2024-1100|Nov-2024-1000|Dec-2024-900|Jan-2025-1000|Feb-2025-1100|Mar-2025-1200|Apr-2025-1100|May-2025-1000|Jun-2025-900|July-2025-800|Aug-2025-900|Sep-2025-1000|Oct-2025-1100|Nov-2025-1000|Dec-2025-900|Jan-2026-1000|Feb-2026-1100|Mar-2026-1200|Apr-2026-1100|May-2026-1000|Jun-2026-900|July-2026-800|Aug-2026-900|Sep-2026-1000|Oct-2026-1100|Nov-2026-1000|Dec-2026-900', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-750|Feb-2024-750|Mar-2024-750|Apr-2024-750|May-2024-750|Jun-2024-750|July-2024--50|Aug-2024-750|Sep-2024-750|Oct-2024-750|Nov-2024-750|Dec-2024-750|Jan-2025-0|Feb-2025-0|Mar-2025-0|Apr-2025-0|May-2025-0|Jun-2025-0|July-2025-0|Aug-2025-0|Sep-2025-0|Oct-2025-0|Nov-2025-0|Dec-2025-0|Jan-2026-0|Feb-2026-0|Mar-2026-0|Apr-2026-0|May-2026-0|Jun-2026-0|July-2026-0|Aug-2026-0|Sep-2026-0|Oct-2026-0|Nov-2026-0|Dec-2026-0', 'Aug-2023-900|Sep-2023-1000|Oct-2023-1100|Nov-2023-1000|Dec-2023-900|Jan-2024-250|Feb-2024-350|Mar-2024-450|Apr-2024-350|May-2024-250|Jun-2024-150|July-2024-850|Aug-2024-150|Sep-2024-250|Oct-2024-350|Nov-2024-250|Dec-2024-150|Jan-2025-1000|Feb-2025-1100|Mar-2025-1200|Apr-2025-1100|May-2025-1000|Jun-2025-900|July-2025-800|Aug-2025-900|Sep-2025-1000|Oct-2025-1100|Nov-2025-1000|Dec-2025-900|Jan-2026-1000|Feb-2026-1100|Mar-2026-1200|Apr-2026-1100|May-2026-1000|Jun-2026-900|July-2026-800|Aug-2026-900|Sep-2026-1000|Oct-2026-1100|Nov-2026-1000|Dec-2026-900', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-1|Feb-2024-1|Mar-2024-1|Apr-2024-1|May-2024-1|Jun-2024-1|July-2024-1|Aug-2024-1|Sep-2024-1|Oct-2024-1|Nov-2024-1|Dec-2024-1|Jan-2025-0|Feb-2025-0|Mar-2025-0|Apr-2025-0|May-2025-0|Jun-2025-0|July-2025-0|Aug-2025-0|Sep-2025-0|Oct-2025-0|Nov-2025-0|Dec-2025-0|Jan-2026-0|Feb-2026-0|Mar-2026-0|Apr-2026-0|May-2026-0|Jun-2026-0|July-2026-0|Aug-2026-0|Sep-2026-0|Oct-2026-0|Nov-2026-0|Dec-2026-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-1|Feb-2024-1|Mar-2024-1|Apr-2024-1|May-2024-1|Jun-2024-1|July-2024-1|Aug-2024-1|Sep-2024-1|Oct-2024-1|Nov-2024-1|Dec-2024-1|Jan-2025-0|Feb-2025-0|Mar-2025-0|Apr-2025-0|May-2025-0|Jun-2025-0|July-2025-0|Aug-2025-0|Sep-2025-0|Oct-2025-0|Nov-2025-0|Dec-2025-0|Jan-2026-0|Feb-2026-0|Mar-2026-0|Apr-2026-0|May-2026-0|Jun-2026-0|July-2026-0|Aug-2026-0|Sep-2026-0|Oct-2026-0|Nov-2026-0|Dec-2026-0', 'Cancelled'),
(2, 'NUS - International', 4, 'NUS-Elec-00001', 'Portugal', 'electricity', '', 'Endesa', 'indexed', 'Hudex / Croatia', '2023-08-01', '2026-12-31', 0.00, '12,000', '12,000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01,2025-1-01,2025-2-01,2025-3-01,2025-4-01,2025-5-01,2025-6-01,2025-7-01,2025-8-01,2025-9-01,2025-10-01,2025-11-01,2025-12-01,2026-1-01,2026-2-01,2026-3-01,2026-4-01,2026-5-01,2026-6-01,2026-7-01,2026-8-01,2026-9-01,2026-10-01,2026-11-01,2026-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Aug-2023-900|Sep-2023-1000|Oct-2023-1100|Nov-2023-1000|Dec-2023-900|Jan-2024-1000|Feb-2024-1100|Mar-2024-1200|Apr-2024-1100|May-2024-1000|Jun-2024-900|July-2024-800|Aug-2024-900|Sep-2024-1000|Oct-2024-1100|Nov-2024-1000|Dec-2024-900|Jan-2025-1000|Feb-2025-1100|Mar-2025-1200|Apr-2025-1100|May-2025-1000|Jun-2025-900|July-2025-800|Aug-2025-900|Sep-2025-1000|Oct-2025-1100|Nov-2025-1000|Dec-2025-900|Jan-2026-1000|Feb-2026-1100|Mar-2026-1200|Apr-2026-1100|May-2026-1000|Jun-2026-900|July-2026-800|Aug-2026-900|Sep-2026-1000|Oct-2026-1100|Nov-2026-1000|Dec-2026-900', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-750|Feb-2024-750|Mar-2024-750|Apr-2024-750|May-2024-750|Jun-2024-750|July-2024-750|Aug-2024-750|Sep-2024-750|Oct-2024-1300|Nov-2024-1250|Dec-2024-1200|Jan-2025-0|Feb-2025-0|Mar-2025-0|Apr-2025-0|May-2025-0|Jun-2025-0|July-2025-0|Aug-2025-0|Sep-2025-0|Oct-2025-0|Nov-2025-0|Dec-2025-0|Jan-2026-0|Feb-2026-0|Mar-2026-0|Apr-2026-0|May-2026-0|Jun-2026-0|July-2026-0|Aug-2026-0|Sep-2026-0|Oct-2026-0|Nov-2026-0|Dec-2026-0', 'Aug-2023-900|Sep-2023-1000|Oct-2023-1100|Nov-2023-1000|Dec-2023-900|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1800|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000|Jan-2025-1000|Feb-2025-1100|Mar-2025-1200|Apr-2025-1100|May-2025-1000|Jun-2025-900|July-2025-800|Aug-2025-900|Sep-2025-1000|Oct-2025-1100|Nov-2025-1000|Dec-2025-900|Jan-2026-1000|Feb-2026-1100|Mar-2026-1200|Apr-2026-1100|May-2026-1000|Jun-2026-900|July-2026-800|Aug-2026-900|Sep-2026-1000|Oct-2026-1100|Nov-2026-1000|Dec-2026-900', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-1|Feb-2024-1|Mar-2024-1|Apr-2024-1|May-2024-1|Jun-2024-1|July-2024-1|Aug-2024-1|Sep-2024-1|Oct-2024-1|Nov-2024-1|Dec-2024-1|Jan-2025-0|Feb-2025-0|Mar-2025-0|Apr-2025-0|May-2025-0|Jun-2025-0|July-2025-0|Aug-2025-0|Sep-2025-0|Oct-2025-0|Nov-2025-0|Dec-2025-0|Jan-2026-0|Feb-2026-0|Mar-2026-0|Apr-2026-0|May-2026-0|Jun-2026-0|July-2026-0|Aug-2026-0|Sep-2026-0|Oct-2026-0|Nov-2026-0|Dec-2026-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-1|Feb-2024-1|Mar-2024-1|Apr-2024-1|May-2024-1|Jun-2024-1|July-2024-1|Aug-2024-1|Sep-2024-1|Oct-2024-1|Nov-2024-1|Dec-2024-1|Jan-2025-0|Feb-2025-0|Mar-2025-0|Apr-2025-0|May-2025-0|Jun-2025-0|July-2025-0|Aug-2025-0|Sep-2025-0|Oct-2025-0|Nov-2025-0|Dec-2025-0|Jan-2026-0|Feb-2026-0|Mar-2026-0|Apr-2026-0|May-2026-0|Jun-2026-0|July-2026-0|Aug-2026-0|Sep-2026-0|Oct-2026-0|Nov-2026-0|Dec-2026-0', 'Active'),
(3, 'NUS - International', 3, 'NUS-Elec-00003', 'Spain', 'electricity', '', 'Endesa', 'indexed', 'ASX / Australia', '2023-08-01', '2023-09-28', 0.00, '12,000', '12000', '2023-8-01,2023-9-01', 'DKK', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Aug-2023-1000|Sep-2023-1000', 'Aug-2023-0|Sep-2023-0', NULL, 'Aug-2023-0|Sep-2023-0', 'Aug-2023-0|Sep-2023-0', 'Active'),
(4, 'NUS - International', 4, 'NUS-Elec-00002', 'Portugal', 'electricity', '', 'Endesa', 'fixed', '', '2023-08-05', '2023-09-01', 26.88, '12,000', '12000', '2023-8-01,2023-9-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Aug-2023-1000|Sep-2023-1000', 'Aug-2023-0|Sep-2023-0', NULL, NULL, NULL, 'Active'),
(5, 'NUS - International', 3, 'NUS-Elec-00005', 'Spain', 'electricity', '', 'sd', 'fixed', '', '2023-08-01', '2023-08-24', 26.88, '12,000', '12000', '2023-8-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Aug-2023-1000', 'Aug-2023-0', NULL, NULL, NULL, 'Active'),
(6, 'Test1', 1, 'TestClient-Elec-00001', 'India', 'electricity', '', 'a', 'indexed', 'ASX / Australia', '2023-08-01', '2024-12-31', 0.00, '120,000', '120000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Aug-2023-10000|Sep-2023-10000|Oct-2023-10000|Nov-2023-10000|Dec-2023-10000|Jan-2024-10000|Feb-2024-10000|Mar-2024-10000|Apr-2024-10000|May-2024-10000|Jun-2024-10000|July-2024-10000|Aug-2024-10000|Sep-2024-10000|Oct-2024-10000|Nov-2024-10000|Dec-2024-10000', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', NULL, 'Aug-2023-4356|Sep-2023-4356|Oct-2023-4356|Nov-2023-4356|Dec-2023-4356|Jan-2024-100|Feb-2024-100|Mar-2024-100|Apr-2024-100|May-2024-100|Jun-2024-100|July-2024-100|Aug-2024-100|Sep-2024-100|Oct-2024-100|Nov-2024-100|Dec-2024-100', 'Aug-2023-6549|Sep-2023-6549|Oct-2023-6549|Nov-2023-6549|Dec-2023-6549|Jan-2024-120|Feb-2024-120|Mar-2024-120|Apr-2024-120|May-2024-120|Jun-2024-120|July-2024-120|Aug-2024-120|Sep-2024-120|Oct-2024-120|Nov-2024-120|Dec-2024-120', 'Cancelled'),
(7, 'Exide - International', 9, 'Exide-Elec-00002', 'Portugal', 'electricity', '', 'Vattenfall', 'fixed', '', '2023-08-01', '2023-08-31', 26.88, '12,000', '1,000', '2023-8-01', 'AUD', '', NULL, NULL, '', 'A', 'Aug-2023-1000', 'Aug-2023-0', NULL, '', '', 'Active'),
(8, 'Exide - International', 9, 'Exide-Elec-00004', 'Portugal', 'electricity', '', 'Endesa', 'fixed', '', '2023-08-01', '2023-08-31', 26.88, '12,000', '1,000', '2023-8-01', 'AUD', '', NULL, NULL, '', 'A', 'Aug-2023-1000', 'Aug-2023-0', NULL, '', '', 'Active'),
(9, 'Exide - International', 9, 'Exide-Elec-00001', 'Portugal', 'electricity', '', 'Acciona Green Energy Developments, S.L.U.', 'indexed', 'ASX / Australia', '2023-08-01', '2023-10-31', 0.00, '12,000', '12000', '2023-8-01,2023-9-01,2023-10-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-1000', 'Aug-2023-1|Sep-2023-1|Oct-2023-1', 'Aug-2023-1|Sep-2023-1|Oct-2023-1', 'Active'),
(10, 'Exide - International', 9, 'Exide-Elec-00003', 'Portugal', 'electricity', '', 'Acciona Green Energy Developments, S.L.U.', 'fixed', '', '2023-08-01', '2023-08-31', 26.88, '12,000', '12000', '2023-8-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Aug-2023-1000', 'Aug-2023-0', NULL, NULL, NULL, 'Active'),
(11, 'Exide - International', 9, 'Exide-Elec-00005', 'Portugal', 'electricity', '', 'Acciona Green Energy Developments, S.L.U.', 'fixed', '', '2023-08-01', '2023-08-31', 26.88, '12,000', '12000', '2023-8-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Aug-2023-1000', 'Aug-2023-0', NULL, NULL, NULL, 'Active'),
(12, 'Test1', 7, 'client_perct-Elec-00001', 'India', 'electricity', '', 'Sup1', 'indexed', 'TGE (EFM) / Poland', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Month Ahead,Average Value', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-302.5|Feb-2023-220|Mar-2023-247.5|Apr-2023-210|May-2023-175|Jun-2023-140|July-2023-157.5|Aug-2023-175|Sep-2023-210|Oct-2023-192.5|Nov-2023-87.5|Dec-2023-262.5', 'Jan-2023-797.5|Feb-2023-580|Mar-2023-652.5|Apr-2023-990|May-2023-825|Jun-2023-660|July-2023-742.5|Aug-2023-825|Sep-2023-990|Oct-2023-907.5|Nov-2023-412.5|Dec-2023-1237.5', 'Jan-2023-1,234.89|Feb-2023-1,234.89|Mar-2023-1,234.89|Apr-2023-1,234.89|May-2023-1,234.89|Jun-2023-1,234.89|July-2023-1,234.89|Aug-2023-1,234.89|Sep-2023-1,234.89|Oct-2023-1,234.89|Nov-2023-1,234.89|Dec-2023-1,234.89', 'Jan-2023-1,544.900|Feb-2023-1,544.900|Mar-2023-1,544.900|Apr-2023-1,544.900|May-2023-1,544.900|Jun-2023-1,544.900|July-2023-1,544.900|Aug-2023-1,544.900|Sep-2023-1,544.900|Oct-2023-1,544.900|Nov-2023-1,544.900|Dec-2023-1,544.900', 'Active'),
(13, 'Test1', 7, 'client_perct-Elec-00002', 'India', 'electricity', '', 'Sup2', 'indexed', 'TGE (EFM) / Poland', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Average for month', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-192.5|Feb-2023-140|Mar-2023-247.5|Apr-2023-90|May-2023-75|Jun-2023-60|July-2023-67.5|Aug-2023-75|Sep-2023-90|Oct-2023-82.5|Nov-2023-37.5|Dec-2023-112.5', 'Jan-2023-907.5|Feb-2023-660|Mar-2023-652.5|Apr-2023-1110|May-2023-925|Jun-2023-740|July-2023-832.5|Aug-2023-925|Sep-2023-1110|Oct-2023-1017.5|Nov-2023-462.5|Dec-2023-1387.5', 'Jan-2023-1|Feb-2023-1|Mar-2023-1|Apr-2023-1|May-2023-1|Jun-2023-1|July-2023-1|Aug-2023-1|Sep-2023-1|Oct-2023-1|Nov-2023-1|Dec-2023-1', 'Jan-2023-2|Feb-2023-2|Mar-2023-2|Apr-2023-2|May-2023-2|Jun-2023-2|July-2023-2|Aug-2023-2|Sep-2023-2|Oct-2023-2|Nov-2023-2|Dec-2023-2', 'Active'),
(14, 'Test1', 7, 'client_perct-Elec-00003', 'India', 'electricity', '', 's2', 'indexed', 'Ice Endex / Netherlands - Belgium', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-192.5|Feb-2023-140|Mar-2023-247.5|Apr-2023-90|May-2023-75|Jun-2023-60|July-2023-67.5|Aug-2023-75|Sep-2023-90|Oct-2023-82.5|Nov-2023-37.5|Dec-2023-112.5', 'Jan-2023-907.5|Feb-2023-660|Mar-2023-652.5|Apr-2023-1110|May-2023-925|Jun-2023-740|July-2023-832.5|Aug-2023-925|Sep-2023-1110|Oct-2023-1017.5|Nov-2023-462.5|Dec-2023-1387.5', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Active'),
(15, 'Test1', 11, 'client_perc&MWH-Elec-00001', 'India', 'electricity', '', 'supplier_1', 'indexed', 'OMIP / Spain & Portugal', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-1|Feb-2023-1|Mar-2023-1|Apr-2023-1|May-2023-1|Jun-2023-1|July-2023-1|Aug-2023-1|Sep-2023-1|Oct-2023-1|Nov-2023-1|Dec-2023-1', 'Jan-2023-2|Feb-2023-2|Mar-2023-2|Apr-2023-2|May-2023-2|Jun-2023-2|July-2023-2|Aug-2023-2|Sep-2023-2|Oct-2023-2|Nov-2023-2|Dec-2023-2', 'Active'),
(16, 'Test1', 11, 'client_perc&MWH-Elec-00002', 'India', 'electricity', '', 'supplier1_per&Mwh', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-910|Feb-2023-880|Mar-2023-890|Apr-2023-120|May-2023-100|Jun-2023-160|July-2023-90|Aug-2023-100|Sep-2023-120|Oct-2023-110|Nov-2023-50|Dec-2023-150', 'Jan-2023-190|Feb-2023--80|Mar-2023-10|Apr-2023-1080|May-2023-900|Jun-2023-640|July-2023-810|Aug-2023-900|Sep-2023-1080|Oct-2023-990|Nov-2023-450|Dec-2023-1350', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000', 'Jan-2023-1200|Feb-2023-1200|Mar-2023-1200|Apr-2023-1200|May-2023-1200|Jun-2023-1200|July-2023-1200|Aug-2023-1200|Sep-2023-1200|Oct-2023-1200|Nov-2023-1200|Dec-2023-1200', 'Active'),
(17, 'Test1', 12, 'client_MWH-Elec-00001', 'India', 'electricity', '', 'Supplier_1_MWH', 'indexed', 'ASX / Australia', '2023-01-01', '2024-06-30', 0.00, '12,000', '12,000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500|Jan-2024-1100|Feb-2024-800|Mar-2024-900|Apr-2024-1200|May-2024-1000|Jun-2024-800', 'Jan-2023-400|Feb-2023-340|Mar-2023-340|Apr-2023-300|May-2023-300|Jun-2023-300|July-2023-300|Aug-2023-300|Sep-2023-300|Oct-2023-300|Nov-2023-300|Dec-2023-300|Jan-2024-460|Feb-2024-400|Mar-2024-400|Apr-2024-0|May-2024-0|Jun-2024-0', 'Jan-2023-700|Feb-2023-460|Mar-2023-560|Apr-2023-900|May-2023-700|Jun-2023-500|July-2023-600|Aug-2023-700|Sep-2023-900|Oct-2023-800|Nov-2023-200|Dec-2023-1200|Jan-2024-640|Feb-2024-400|Mar-2024-500|Apr-2024-1200|May-2024-1000|Jun-2024-800', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100|Jan-2024-100|Feb-2024-100|Mar-2024-100|Apr-2024-100|May-2024-100|Jun-2024-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120|Jan-2024-120|Feb-2024-120|Mar-2024-120|Apr-2024-120|May-2024-120|Jun-2024-120', 'Active'),
(18, 'Test1', 13, 'c_MWH-Elec-00001', 'India', 'electricity', '', 'Sup1', 'indexed', 'Nasdaq OMX / Norway', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-400|Feb-2023-340|Mar-2023-340|Apr-2023-300|May-2023-300|Jun-2023-300|July-2023-300|Aug-2023-300|Sep-2023-300|Oct-2023-300|Nov-2023-300|Dec-2023-300', 'Jan-2023-700|Feb-2023-460|Mar-2023-560|Apr-2023-900|May-2023-700|Jun-2023-500|July-2023-600|Aug-2023-700|Sep-2023-900|Oct-2023-800|Nov-2023-200|Dec-2023-1200', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Active'),
(19, 'Test1', 12, 'client_MWH-Elec-00002', 'India', 'electricity', '', 'Supplier_2_MWH', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-760|Feb-2023-700|Mar-2023-700|Apr-2023-300|May-2023-300|Jun-2023-300|July-2023-300|Aug-2023-300|Sep-2023-300|Oct-2023-300|Nov-2023-300|Dec-2023-300', 'Jan-2023-340|Feb-2023-100|Mar-2023-200|Apr-2023-900|May-2023-700|Jun-2023-500|July-2023-600|Aug-2023-700|Sep-2023-900|Oct-2023-800|Nov-2023-200|Dec-2023-1200', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Active'),
(20, 'Test1', 12, 'client_MWH-Elec-00003', 'India', 'electricity', '', 'Supplier_3_MWH', 'indexed', 'EEX-PXE / Slovenia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-300|May-2023-180|Jun-2023-180|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-1000|Feb-2023-700|Mar-2023-800|Apr-2023-900|May-2023-820|Jun-2023-620|July-2023-800|Aug-2023-900|Sep-2023-1100|Oct-2023-1000|Nov-2023-400|Dec-2023-1400', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Cancelled'),
(21, 'Test1', 13, 'c_MWH-Elec-00002', 'India', 'electricity', '', 'Sup2', 'indexed', 'OMIP / Spain & Portugal', '2023-06-01', '2024-12-31', 0.00, '12,000', '12,000', '2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500|Jan-2024-1100|Feb-2024-800|Mar-2024-900|Apr-2024-1200|May-2024-1000|Jun-2024-800|July-2024-900|Aug-2024-1000|Sep-2024-1200|Oct-2024-1100|Nov-2024-500|Dec-2024-1500', 'Jun-2023-0|July-2023-400|Aug-2023-400|Sep-2023-400|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-760|Feb-2024-700|Mar-2024-700|Apr-2024-300|May-2024-300|Jun-2024-300|July-2024-300|Aug-2024-300|Sep-2024-300|Oct-2024-300|Nov-2024-300|Dec-2024-300', 'Jun-2023-800|July-2023-500|Aug-2023-600|Sep-2023-800|Oct-2023-1100|Nov-2023-500|Dec-2023-1500|Jan-2024-340|Feb-2024-100|Mar-2024-200|Apr-2024-900|May-2024-700|Jun-2024-500|July-2024-600|Aug-2024-700|Sep-2024-900|Oct-2024-800|Nov-2024-200|Dec-2024-1200', 'Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100|Jan-2024-100|Feb-2024-100|Mar-2024-100|Apr-2024-100|May-2024-100|Jun-2024-100|July-2024-100|Aug-2024-100|Sep-2024-100|Oct-2024-100|Nov-2024-100|Dec-2024-100', 'Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120|Jan-2024-120|Feb-2024-120|Mar-2024-120|Apr-2024-120|May-2024-120|Jun-2024-120|July-2024-120|Aug-2024-120|Sep-2024-120|Oct-2024-120|Nov-2024-120|Dec-2024-120', 'Active'),
(22, 'Test1', 14, 'client_Power(MW)-Elec-00001', 'India', 'electricity', '', 'Supplier_1_Power', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '120,000', '120000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Power(MW)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-11000|Feb-2023-8000|Mar-2023-9000|Apr-2023-12000|May-2023-10000|Jun-2023-8000|July-2023-9000|Aug-2023-10000|Sep-2023-12000|Oct-2023-11000|Nov-2023-5000|Dec-2023-15000', 'Jan-2023-730|Feb-2023-730|Mar-2023-730|Apr-2023-1319.6666666667|May-2023-1319.6666666667|Jun-2023-1319.6666666667|July-2023-730|Aug-2023-730|Sep-2023-730|Oct-2023-730|Nov-2023-730|Dec-2023-730', 'Jan-2023-10270|Feb-2023-7270|Mar-2023-8270|Apr-2023-10680.333333333|May-2023-8680.3333333333|Jun-2023-6680.3333333333|July-2023-8270|Aug-2023-9270|Sep-2023-11270|Oct-2023-10270|Nov-2023-4270|Dec-2023-14270', 'Jan-2023-1,234.56|Feb-2023-1,234.56|Mar-2023-1,234.56|Apr-2023-1,234.56|May-2023-1,234.56|Jun-2023-1,234.56|July-2023-1,234.56|Aug-2023-1,234.56|Sep-2023-1,234.56|Oct-2023-1,234.56|Nov-2023-1,234.56|Dec-2023-1,234.56', 'Jan-2023-1,543.76|Feb-2023-1,543.76|Mar-2023-1,543.76|Apr-2023-1,543.76|May-2023-1,543.76|Jun-2023-1,543.76|July-2023-1,543.76|Aug-2023-1,543.76|Sep-2023-1,543.76|Oct-2023-1,543.76|Nov-2023-1,543.76|Dec-2023-1,543.76', 'Active'),
(23, 'Test1', 13, 'c_MWH-Elec-00003', 'India', 'electricity', '', 'SUP3', 'indexed', 'Nasdaq OMX / Norway', '2023-06-01', '2024-12-31', 0.00, '12,000', '12,000', '2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500|Jan-2024-1100|Feb-2024-800|Mar-2024-900|Apr-2024-1200|May-2024-1000|Jun-2024-800|July-2024-900|Aug-2024-1000|Sep-2024-1200|Oct-2024-1100|Nov-2024-500|Dec-2024-1500', 'Jun-2023-280|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-80|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Jun-2023-520|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500|Jan-2024-1100|Feb-2024-800|Mar-2024-900|Apr-2024-1200|May-2024-1000|Jun-2024-720|July-2024-900|Aug-2024-1000|Sep-2024-1200|Oct-2024-1100|Nov-2024-500|Dec-2024-1500', 'Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100|Jan-2024-100|Feb-2024-100|Mar-2024-100|Apr-2024-100|May-2024-100|Jun-2024-100|July-2024-100|Aug-2024-100|Sep-2024-100|Oct-2024-100|Nov-2024-100|Dec-2024-100', 'Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120|Jan-2024-120|Feb-2024-120|Mar-2024-120|Apr-2024-120|May-2024-120|Jun-2024-120|July-2024-120|Aug-2024-120|Sep-2024-120|Oct-2024-120|Nov-2024-120|Dec-2024-120', 'Active'),
(24, 'Test1', 13, 'c_MWH-Elec-00004', 'India', 'electricity', '', 'sup4', 'indexed', 'OPCOM / Romania', '2023-06-01', '2024-12-31', 0.00, '12,000', '12,000', '2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-290|Nov-2023-90|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-710|Nov-2023-910|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Active'),
(25, 'Test1', 13, 'c_MWH-Elec-00005', 'India', 'electricity', '', 'sup5', 'indexed', 'EEX-PXE / Slovakia', '2023-06-01', '2024-12-31', 0.00, '12,000', '12,000', '2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Jun-2023-0|July-2023-0|Aug-2023-240|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-99|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Jun-2023-1000|July-2023-1000|Aug-2023-760|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-901|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Active'),
(26, 'Test1', 11, 'client_perc&MWH-Elec-00003', 'India', 'electricity', '', 'supplier_2_perc&mwh', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '45,589.83', '45589', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Jan-2023-2542.28|Feb-2023-3799.08|Mar-2023-2665.9|Apr-2023-4804.88|May-2023-3799.16|Jun-2023-3576.9|July-2023-3799.16|Aug-2023-5055.88|Sep-2023-2865.9|Oct-2023-4543.8|Nov-2023-3799.08|Dec-2023-4337.8', 'Jan-2023-730.9055|Feb-2023-1092.2355|Mar-2023-766.44625|Apr-2023-1381.403|May-2023-1092.2585|Jun-2023-1028.35875|July-2023-1092.2585|Aug-2023-1453.5655|Sep-2023-823.94625|Oct-2023-1306.3425|Nov-2023-1092.2355|Dec-2023-1247.1175', 'Jan-2023-1811.0945|Feb-2023-2706.7645|Mar-2023-1898.55375|Apr-2023-3422.597|May-2023-2706.7415|Jun-2023-2547.64125|July-2023-2706.7415|Aug-2023-3601.4345|Sep-2023-2041.05375|Oct-2023-3236.6575|Nov-2023-2706.7645|Dec-2023-3089.8825', 'Jan-2023-1,111.67|Feb-2023-1,111.67|Mar-2023-1,111.67|Apr-2023-1,111.67|May-2023-1,111.67|Jun-2023-1,111.67|July-2023-1,111.67|Aug-2023-1,111.67|Sep-2023-1,111.67|Oct-2023-1,111.67|Nov-2023-1,111.67|Dec-2023-1,111.67', 'Jan-2023-1,345.67|Feb-2023-1,345.67|Mar-2023-1,345.67|Apr-2023-1,345.67|May-2023-1,345.67|Jun-2023-1,345.67|July-2023-1,345.67|Aug-2023-1,345.67|Sep-2023-1,345.67|Oct-2023-1,345.67|Nov-2023-1,345.67|Dec-2023-1,345.67', 'Active'),
(27, 'Test1', 13, 'c_MWH-Elec-00006', 'India', 'electricity', '', 'jj', 'indexed', 'ASX / Australia', '2023-08-04', '2023-08-28', 0.00, '12,000', '12000', '2023-8-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Average for month', 'A', 'Aug-2023-1000', 'Aug-2023-0', NULL, 'Aug-2023-0', 'Aug-2023-0', 'Active'),
(28, 'Test1', 11, 'client_perc&MWH-Elec-00004', 'India', 'electricity', '', 'Supplier_per&MWH', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '45,589.83', '45589', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-2542.28|Feb-2023-3799.08|Mar-2023-2665.9|Apr-2023-4804.88|May-2023-3799.16|Jun-2023-3576.9|July-2023-3799.16|Aug-2023-5055.88|Sep-2023-2865.9|Oct-2023-4543.8|Nov-2023-3799.08|Dec-2023-4337.8', 'Jan-2023-397.86682|Feb-2023-594.55602|Mar-2023-417.21335|Apr-2023-1551.96372|May-2023-1683.56854|Jun-2023-1359.78485|July-2023-594.56854|Aug-2023-791.24522|Sep-2023-627.51335|Oct-2023-2044.4380333333|Nov-2023-1927.8893533333|Dec-2023-2012.1990333333', 'Jan-2023-2144.13318|Feb-2023-3204.44398|Mar-2023-2247.78665|Apr-2023-3252.03628|May-2023-2115.43146|Jun-2023-2216.21515|July-2023-3204.43146|Aug-2023-4263.75478|Sep-2023-2237.48665|Oct-2023-2498.5619666667|Nov-2023-1871.1106466667|Dec-2023-2324.8009666667', 'Jan-2023-1,111.67|Feb-2023-1,111.67|Mar-2023-1,111.67|Apr-2023-1,111.67|May-2023-1,111.67|Jun-2023-1,111.67|July-2023-1,111.67|Aug-2023-1,111.67|Sep-2023-1,111.67|Oct-2023-1,111.67|Nov-2023-1,111.67|Dec-2023-1,111.67', 'Jan-2023-1,345.76|Feb-2023-1,345.76|Mar-2023-1,345.76|Apr-2023-1,345.76|May-2023-1,345.76|Jun-2023-1,345.76|July-2023-1,345.76|Aug-2023-1,345.76|Sep-2023-1,345.76|Oct-2023-1,345.76|Nov-2023-1,345.76|Dec-2023-1,345.76', 'Active'),
(29, 'Test1', 11, 'client_perc&MWH-Elec-00005', 'India', 'electricity', '', 'test1', 'indexed', 'OPCOM / Romania', '2023-01-01', '2023-12-31', 0.00, '67,289', '67289', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Jan-2023-4803.33|Feb-2023-5607.41|Mar-2023-5209.43|Apr-2023-6483.76|May-2023-5209.33|Jun-2023-4098.65|July-2023-6933.65|Aug-2023-5346.76|Sep-2023-4873.33|Oct-2023-6241.11|Nov-2023-5867.55|Dec-2023-6614.68', 'Jan-2023-1164.7659|Feb-2023-1289.7043|Mar-2023-1278.1689|Apr-2023-1167.0768|May-2023-937.6794|Jun-2023-737.757|July-2023-1248.057|Aug-2023-962.4168|Sep-2023-877.1994|Oct-2023-1747.5108|Nov-2023-1642.914|Dec-2023-1852.1104', 'Jan-2023-3638.2341|Feb-2023-4317.2957|Mar-2023-3930.8311|Apr-2023-5315.9232|May-2023-4271.3206|Jun-2023-3360.243|July-2023-5684.943|Aug-2023-4383.5832|Sep-2023-3995.8006|Oct-2023-4493.4892|Nov-2023-4224.086|Dec-2023-4761.8896', 'Jan-2023-1,111.67|Feb-2023-1,111.67|Mar-2023-1,111.67|Apr-2023-1,111.67|May-2023-1,111.67|Jun-2023-1,111.67|July-2023-1,111.67|Aug-2023-1,111.67|Sep-2023-1,111.67|Oct-2023-1,111.67|Nov-2023-1,111.67|Dec-2023-1,111.67', 'Jan-2023-1,345.67|Feb-2023-1,345.67|Mar-2023-1,345.67|Apr-2023-1,345.67|May-2023-1,345.67|Jun-2023-1,345.67|July-2023-1,345.67|Aug-2023-1,345.67|Sep-2023-1,345.67|Oct-2023-1,345.67|Nov-2023-1,345.67|Dec-2023-1,345.67', 'Active'),
(30, 'Test1', 1, 'TestClient-Elec-00002', 'India', 'electricity', '', 'supplier_1_Fixed', 'fixed', '', '2023-01-01', '2023-12-31', 2435.67, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-800|Jun-2023-1100|July-2023-1000|Aug-2023-900|Sep-2023-1200|Oct-2023-1000|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, '--', '--', 'Active'),
(31, 'Test1', 1, 'TestClient-Elec-00003', 'India', 'electricity', '', 'supplier_2_fixed', 'fixed', '', '2023-01-01', '2023-12-31', 1336.96, '45,589.83', '45589', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-2542.28|Feb-2023-3799.08|Mar-2023-2665.9|Apr-2023-4804.88|May-2023-3799.16|Jun-2023-3576.9|July-2023-3799.16|Aug-2023-5055.88|Sep-2023-2865.9|Oct-2023-4543.8|Nov-2023-3799.08|Dec-2023-4337.8', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, '--', '--', 'Active'),
(32, 'Test1', 1, 'TestClient-Elec-00004', 'India', 'electricity', '', 'supplier_3_fixed', 'fixed', '', '2023-08-01', '2024-12-31', 1324.67, '12,000', '12000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', NULL, '--', '--', 'Active'),
(33, 'Test1', 14, 'client_Power(MW)-Elec-00002', 'India', 'electricity', '', 'power1', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '120,000', '120000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Power(MW)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-12000|Feb-2023-10000|Mar-2023-8000|Apr-2023-12000|May-2023-6000|Jun-2023-8000|July-2023-14000|Aug-2023-9000|Sep-2023-11000|Oct-2023-15000|Nov-2023-5000|Dec-2023-10000', 'Jan-2023-1450|Feb-2023-1450|Mar-2023-1450|Apr-2023-730|May-2023-730|Jun-2023-730|July-2023-730|Aug-2023-730|Sep-2023-730|Oct-2023-1332|Nov-2023-730|Dec-2023-730', 'Jan-2023-10550|Feb-2023-8550|Mar-2023-6550|Apr-2023-11270|May-2023-5270|Jun-2023-7270|July-2023-13270|Aug-2023-8270|Sep-2023-10270|Oct-2023-13668|Nov-2023-4270|Dec-2023-9270', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Active'),
(34, 'Test1', 1, 'TestClient-Elec-00005', 'India', 'electricity', '', 'fixed_test1', 'fixed', '', '2023-01-01', '2023-04-30', 23456.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0', NULL, '--', '--', 'Active'),
(35, 'Test1', 1, 'TestClient-Elec-00006', 'India', 'electricity', '', 'test4', 'fixed', '', '2023-01-01', '2023-06-30', 55.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1200|Feb-2023-500|Mar-2023-2000|Apr-2023-500|May-2023-1000|Jun-2023-800', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0', NULL, '--', '--', 'Active'),
(36, 'Parent', 15, 'client-Elec-00001', 'India', 'electricity', '', 'sup', 'fixed', '', '2023-06-01', '2024-04-17', 4353.00, '12,000', '11,000', '2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01', 'AUD', '', NULL, NULL, '', 'A', 'Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000', 'Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0', NULL, '|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0', '|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0', 'Cancelled'),
(37, 'Parent', 15, 'client-Elec-00002', 'India', 'electricity', '', 'suo', 'fixed', '', '2023-07-01', '2024-04-30', 4346.00, '12,000', '11,000', '2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01', 'AUD', '', NULL, NULL, '', 'A', 'July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000', 'July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0', NULL, '|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0', '|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0', 'Cancelled'),
(38, 'Parent', 15, 'client-Elec-00003', 'India', 'electricity', '', 'sup', 'fixed', '', '2023-01-01', '2024-07-23', 3425.00, '12,000', '12,000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01', 'AUD', '', NULL, NULL, '', 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0', NULL, '|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0', '|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0', 'Cancelled'),
(39, 'Parent', 15, 'client-Elec-00004', 'India', 'electricity', '', 'sup', 'fixed', '', '2023-01-01', '2024-07-17', 6543.00, '12,000', '12,000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01', 'AUD', '', NULL, NULL, '', 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0', NULL, '|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0', '|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0', 'Archived'),
(40, 'newParent_1', 16, 'ClientFixed-Elec-00001', 'Azerbaijani', 'electricity', '', 'example1', 'fixed', '', '2023-01-01', '2023-12-31', 2789.78, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, NULL, NULL, 'Active'),
(41, 'Parent', 15, 'client-Elec-00005', 'India', 'electricity', '', 'hh', 'indexed', 'ASX / Australia', '2023-08-16', '2023-11-15', 0.00, '22,232', '22232', '2023-8-01,2023-9-01,2023-10-01,2023-11-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Aug-2023-1852.67|Sep-2023-1852.67|Oct-2023-1852.67|Nov-2023-1852.67', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0', NULL, 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0', 'Archived'),
(42, 'Parent', 15, 'client-Elec-00006', 'India', 'electricity', '', 'hh', 'indexed', 'Nasdaq OMX / Sweden', '2022-01-01', '2023-08-13', 0.00, '12,000', '12000', '2022-1-01,2022-2-01,2022-3-01,2022-4-01,2022-5-01,2022-6-01,2022-7-01,2022-8-01,2022-9-01,2022-10-01,2022-11-01,2022-12-01,2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2022-1000|Feb-2022-1000|Mar-2022-1000|Apr-2022-1000|May-2022-1000|Jun-2022-1000|July-2022-1000|Aug-2022-1000|Sep-2022-1000|Oct-2022-1000|Nov-2022-1000|Dec-2022-1000|Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000', 'Jan-2022-0|Feb-2022-0|Mar-2022-0|Apr-2022-0|May-2022-0|Jun-2022-0|July-2022-0|Aug-2022-0|Sep-2022-0|Oct-2022-0|Nov-2022-0|Dec-2022-0|Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0', NULL, 'Jan-2022-0|Feb-2022-0|Mar-2022-0|Apr-2022-0|May-2022-0|Jun-2022-0|July-2022-0|Aug-2022-0|Sep-2022-0|Oct-2022-0|Nov-2022-0|Dec-2022-0|Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0', 'Jan-2022-0|Feb-2022-0|Mar-2022-0|Apr-2022-0|May-2022-0|Jun-2022-0|July-2022-0|Aug-2022-0|Sep-2022-0|Oct-2022-0|Nov-2022-0|Dec-2022-0|Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0', 'Archived'),
(43, 'Parent', 15, 'client-Elec-00007', 'India', 'electricity', '', 'dd', 'fixed', '', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, '--', '--', 'Archived'),
(44, 'Test1', 17, 'client1-Elec-00001', 'India', 'electricity', '', '1', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000', 'Jan-2023-200|Feb-2023-200|Mar-2023-200|Apr-2023-200|May-2023-200|Jun-2023-200|July-2023-200|Aug-2023-200|Sep-2023-200|Oct-2023-200|Nov-2023-200|Dec-2023-200', 'Jan-2023-800|Feb-2023-800|Mar-2023-800|Apr-2023-800|May-2023-800|Jun-2023-800|July-2023-800|Aug-2023-800|Sep-2023-800|Oct-2023-800|Nov-2023-800|Dec-2023-800', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Archived'),
(45, 'Test1', 18, 'client1-Elec-00001', 'Russia', 'electricity', '', '2', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Jan-2023-880|Feb-2023-880|Mar-2023-880|Apr-2023-880|May-2023-880|Jun-2023-880|July-2023-880|Aug-2023-880|Sep-2023-880|Oct-2023-880|Nov-2023-880|Dec-2023-880', 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Active');
INSERT INTO `nus_supply_contract` (`supplierId`, `parentId`, `clientId`, `contract_id`, `countryName`, `commodityName`, `commodityUnits`, `supplyName`, `contractType`, `contractIndexId`, `contractTermfromDate`, `contractTermtoDate`, `commodityPrice`, `totalAnualConsumption`, `totlconsumption`, `allmonts`, `contractpricetype`, `indexStructureType`, `consumMinsize`, `clickTrancheminsize`, `openPrizemechanism`, `contractstatus`, `consumptionmonth`, `hedgeconsumption`, `openconsumption`, `basegenconsumption`, `effectcon`, `state`) VALUES
(46, 'Test1', 17, 'client1-Elec-00002', 'India', 'electricity', '', 'indextest1', 'indexed', 'ASX / Australia', '2023-01-01', '2024-12-31', 0.00, '12,000', '12,000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000|Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Jan-2023-230|Feb-2023-230|Mar-2023-230|Apr-2023-230|May-2023-230|Jun-2023-230|July-2023-230|Aug-2023-230|Sep-2023-230|Oct-2023-230|Nov-2023-230|Dec-2023-230|Jan-2024-80|Feb-2024-80|Mar-2024-80|Apr-2024-80|May-2024-80|Jun-2024-80|July-2024-80|Aug-2024-80|Sep-2024-80|Oct-2024-80|Nov-2024-80|Dec-2024-80', 'Jan-2023-770|Feb-2023-770|Mar-2023-770|Apr-2023-770|May-2023-770|Jun-2023-770|July-2023-770|Aug-2023-770|Sep-2023-770|Oct-2023-770|Nov-2023-770|Dec-2023-770|Jan-2024-920|Feb-2024-920|Mar-2024-920|Apr-2024-920|May-2024-920|Jun-2024-920|July-2024-920|Aug-2024-920|Sep-2024-920|Oct-2024-920|Nov-2024-920|Dec-2024-920', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Archived'),
(47, 'Test1', 17, 'client1-Elec-00003', 'India', 'electricity', '', 'Indexed_1', 'indexed', 'ASX / Australia', '2023-08-01', '2024-12-31', 0.00, '12,000', '12000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-200|Feb-2024-200|Mar-2024-200|Apr-2024-200|May-2024-200|Jun-2024-200|July-2024-200|Aug-2024-200|Sep-2024-200|Oct-2024-200|Nov-2024-200|Dec-2024-200', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-800|Feb-2024-800|Mar-2024-800|Apr-2024-800|May-2024-800|Jun-2024-800|July-2024-800|Aug-2024-800|Sep-2024-800|Oct-2024-800|Nov-2024-800|Dec-2024-800', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Archived'),
(48, 'Test1', 17, 'client1-Elec-00004', 'India', 'electricity', '', 'Indexed_2', 'indexed', 'ASX / Australia', '2023-08-01', '2024-12-31', 0.00, '12,000', '12000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01,2024-1-01,2024-2-01,2024-3-01,2024-4-01,2024-5-01,2024-6-01,2024-7-01,2024-8-01,2024-9-01,2024-10-01,2024-11-01,2024-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-1000|Feb-2024-1000|Mar-2024-1000|Apr-2024-1000|May-2024-1000|Jun-2024-1000|July-2024-1000|Aug-2024-1000|Sep-2024-1000|Oct-2024-1000|Nov-2024-1000|Dec-2024-1000', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-270|Feb-2024-270|Mar-2024-270|Apr-2024-270|May-2024-270|Jun-2024-270|July-2024-270|Aug-2024-270|Sep-2024-270|Oct-2024-270|Nov-2024-270|Dec-2024-270', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000|Dec-2023-1000|Jan-2024-730|Feb-2024-730|Mar-2024-730|Apr-2024-730|May-2024-730|Jun-2024-730|July-2024-730|Aug-2024-730|Sep-2024-730|Oct-2024-730|Nov-2024-730|Dec-2024-730', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0|Jan-2024-0|Feb-2024-0|Mar-2024-0|Apr-2024-0|May-2024-0|Jun-2024-0|July-2024-0|Aug-2024-0|Sep-2024-0|Oct-2024-0|Nov-2024-0|Dec-2024-0', 'Archived'),
(49, 'Test1', 17, 'client1-Elec-00005', 'India', 'electricity', '', 'supplier1', 'indexed', 'ASX / Australia', '2023-08-01', '2023-11-22', 0.00, '12,000', '12000', '2023-8-01,2023-9-01,2023-10-01,2023-11-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Aug-2023-1000|Sep-2023-1000|Oct-2023-1000|Nov-2023-1000', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0', NULL, 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0', 'Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0', 'Archived'),
(50, 'newParent_1', 20, 'ClientFixed-Elec-00001', 'India', 'electricity', '', 'Supplier_1', 'fixed', '', '2023-01-01', '2023-12-31', 2435.67, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-800|Jun-2023-1100|July-2023-1000|Aug-2023-900|Sep-2023-1200|Oct-2023-1000|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, '--', '--', 'Archived'),
(51, 'newParent_1', 20, 'ClientFixed-Elec-00002', 'India', 'electricity', '', 'SupplierGas_2', 'fixed', '', '2023-01-01', '2023-08-31', 2546.78, '50,500', '50500', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-4208.33|Feb-2023-4208.33|Mar-2023-4208.33|Apr-2023-4208.33|May-2023-4208.33|Jun-2023-4208.33|July-2023-4208.33|Aug-2023-4208.33', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0', NULL, NULL, NULL, 'Archived'),
(52, 'newParent_1', 20, 'ClientFixed-Elec-00003', 'India', 'electricity', '', 'Supplier_3', 'fixed', '', '2023-01-01', '2023-07-31', 2220.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01', 'AUD', NULL, NULL, NULL, NULL, 'A', 'Jan-2023-1000|Feb-2023-1000|Mar-2023-1000|Apr-2023-1000|May-2023-1000|Jun-2023-1000|July-2023-1000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0', NULL, '--', '--', 'Archived'),
(53, 'newParent_1', 19, 'ClientIndexed-Elec-00001', 'Antigua', 'electricity', '', 'Indexed_1', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12,000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active'),
(54, 'newParent_1', 19, 'ClientIndexed-Elec-00002', 'Antigua', 'electricity', '', 'Indexed_1', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Average Value', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active'),
(55, 'newParent_1', 19, 'ClientIndexed-Elec-00003', 'Antigua', 'electricity', '', 'Indexed_2', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active'),
(56, 'newParent_1', 19, 'ClientIndexed-Elec-00004', 'Antigua', 'electricity', '', 'Indexed_4', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '45,589.83', '45589', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Jan-2023-2542.28|Feb-2023-3799.08|Mar-2023-2665.9|Apr-2023-4804.88|May-2023-3799.16|Jun-2023-3576.9|July-2023-3799.16|Aug-2023-5055.88|Sep-2023-2865.9|Oct-2023-4543.8|Nov-2023-3799.08|Dec-2023-4337.8', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active'),
(57, 'newParent_1', 20, 'ClientFixed-Elec-00006', 'India', 'electricity', '', 'Indexed_5', 'indexed', 'ASX / Australia', '2023-01-31', '2023-12-31', 0.00, '672,89 ', '67,289', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-4803.33|Feb-2023-5607.41|Mar-2023-5209.43|Apr-2023-6483.76|May-2023-5209.33|Jun-2023-4098.65|July-2023-6933.65|Aug-2023-5346.76|Sep-2023-4873.33|Oct-2023-6241.11|Nov-2023-5867.55|Dec-2023-6614.68', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-1200|Feb-2023-1200|Mar-2023-1200|Apr-2023-1200|May-2023-1200|Jun-2023-1200|July-2023-1200|Aug-2023-1200|Sep-2023-1200|Oct-2023-1200|Nov-2023-1200|Dec-2023-1200', 'Jan-2023-1200|Feb-2023-1200|Mar-2023-1200|Apr-2023-1200|May-2023-1200|Jun-2023-1200|July-2023-1200|Aug-2023-1200|Sep-2023-1200|Oct-2023-1200|Nov-2023-1200|Dec-2023-1200', 'Archived'),
(58, 'newParent_1', 19, 'ClientIndexed-Elec-00006', 'Antigua', 'electricity', '', 'Indexed_5', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '67,289', '67289', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Quarter Ahead,Last Value', 'A', 'Jan-2023-4803.33|Feb-2023-5607.41|Mar-2023-5209.43|Apr-2023-6483.76|May-2023-5209.33|Jun-2023-4098.65|July-2023-6933.65|Aug-2023-5346.76|Sep-2023-4873.33|Oct-2023-6241.11|Nov-2023-5867.55|Dec-2023-6614.68', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active'),
(59, 'newParent_1', 19, 'ClientIndexed-Elec-00007', 'Antigua', 'electricity', '', 'SupplierPower1', 'indexed', 'ASX / Australia', '2023-01-01', '2023-12-31', 0.00, '120,000', '120000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Power(MW)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-12000|Feb-2023-10000|Mar-2023-8000|Apr-2023-12000|May-2023-6000|Jun-2023-8000|July-2023-14000|Aug-2023-9000|Sep-2023-11000|Oct-2023-15000|Nov-2023-5000|Dec-2023-10000', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active'),
(60, 'Test1', 17, 'client1-Gas-00006', 'India', 'natural gas', 'MWh', 'SupplierGas_1', 'indexed', 'CEGH VTP / Austria', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Daily Market', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-100|Feb-2023-100|Mar-2023-100|Apr-2023-100|May-2023-100|Jun-2023-100|July-2023-100|Aug-2023-100|Sep-2023-100|Oct-2023-100|Nov-2023-100|Dec-2023-100', 'Jan-2023-120|Feb-2023-120|Mar-2023-120|Apr-2023-120|May-2023-120|Jun-2023-120|July-2023-120|Aug-2023-120|Sep-2023-120|Oct-2023-120|Nov-2023-120|Dec-2023-120', 'Archived'),
(61, 'newParent_1', 19, 'ClientIndexed-Gas-00008', 'Antigua', 'natural gas', 'MWh', 'SupplierGas_Indexed', 'indexed', 'CEGH VTP / Austria', '2023-01-01', '2023-12-31', 0.00, '12,000', '12000', '2023-1-01,2023-2-01,2023-3-01,2023-4-01,2023-5-01,2023-6-01,2023-7-01,2023-8-01,2023-9-01,2023-10-01,2023-11-01,2023-12-01', 'AUD', 'Consumption(MWh)', NULL, NULL, 'Day Ahead,Spot Average for month', 'A', 'Jan-2023-1100|Feb-2023-800|Mar-2023-900|Apr-2023-1200|May-2023-1000|Jun-2023-800|July-2023-900|Aug-2023-1000|Sep-2023-1200|Oct-2023-1100|Nov-2023-500|Dec-2023-1500', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', NULL, 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Jan-2023-0|Feb-2023-0|Mar-2023-0|Apr-2023-0|May-2023-0|Jun-2023-0|July-2023-0|Aug-2023-0|Sep-2023-0|Oct-2023-0|Nov-2023-0|Dec-2023-0', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `nus_tradeexecuted_state`
--

CREATE TABLE `nus_tradeexecuted_state` (
  `id` int NOT NULL,
  `trade_id` int NOT NULL,
  `state` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `user` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `datevalue` date NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_tradeexecuted_state`
--

INSERT INTO `nus_tradeexecuted_state` (`id`, `trade_id`, `state`, `user`, `datevalue`, `description`, `timestamp`) VALUES
(1, 3, 'Cancelled', 'NUSADMIN', '2023-08-04', 'dsa', '2023-08-04 09:30:31'),
(2, 2, 'Cancelled', 'NUSADMIN', '2023-08-04', 'dsa', '2023-08-04 09:30:49'),
(3, 4, 'Cancelled', 'NUSADMIN', '2023-08-04', 'sdfa', '2023-08-04 09:31:52'),
(4, 5, 'Cancelled', 'NUSADMIN', '2023-08-04', 'SADF', '2023-08-04 11:05:35'),
(5, 7, 'Cancelled', 'NUSADMIN', '2023-08-04', 'dgsfa', '2023-08-04 11:58:01'),
(6, 8, 'Cancelled', 'NUSADMIN', '2023-08-04', 'sdDFA', '2023-08-04 13:41:29'),
(7, 10, 'Cancelled', 'mjimenezfernandez', '2023-08-04', 'afds', '2023-08-04 13:47:00'),
(8, 48, 'Cancelled', 'NUSADMIN', '2023-08-09', 'hh', '2023-08-09 05:43:34'),
(9, 58, 'Cancelled', 'NUSADMIN', '2023-08-09', 'gg', '2023-08-09 06:15:57'),
(10, 64, 'Cancelled', 'NUSADMIN', '2023-08-10', 'cancel contract', '2023-08-10 11:21:46'),
(11, 92, 'Cancelled', 'NUSADMIN', '2023-08-16', 'cancel', '2023-08-16 17:06:29'),
(12, 37, 'Cancelled', 'NUSADMIN', '2023-08-16', 'Cancelling trade', '2023-08-16 17:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `nus_tradeperiods`
--

CREATE TABLE `nus_tradeperiods` (
  `tradePerId` int NOT NULL,
  `supplierId` int NOT NULL,
  `periodsId` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `clicktracnches` int DEFAULT NULL,
  `clicktranches` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nus_tradeperiods`
--

INSERT INTO `nus_tradeperiods` (`tradePerId`, `supplierId`, `periodsId`, `clicktracnches`, `clicktranches`) VALUES
(7, 1, 'Calendar Yearly', 3, '#MWhs'),
(8, 1, 'Calendar Monthly', 3, '% consumption'),
(18, 3, 'Calendar Yearly', 2, '#MWhs'),
(22, 2, 'Calendar Yearly', 2, '#MWhs'),
(23, 2, 'Calendar Monthly', 2, '% consumption'),
(24, 2, 'Calendar Quarterly', 2, '% consumption'),
(25, 6, 'Calendar Yearly', 4, '% consumption'),
(26, 6, 'Calendar Quarterly', 4, '% consumption'),
(27, 6, 'Calendar Monthly', 4, '% consumption'),
(28, 9, 'Calendar Quarterly', 2, '% consumption'),
(29, 12, 'Calendar Yearly', 3, '% consumption'),
(30, 12, 'Calendar Quarterly', 3, '% consumption'),
(31, 12, 'Calendar Monthly', 3, '% consumption'),
(32, 13, 'Calendar Yearly', 3, '% consumption'),
(33, 13, 'Calendar Quarterly', 3, '% consumption'),
(34, 13, 'Calendar Monthly', 3, '% consumption'),
(35, 14, 'Calendar Yearly', 3, '% consumption'),
(36, 14, 'Calendar Quarterly', 3, '% consumption'),
(37, 14, 'Calendar Monthly', 3, '% consumption'),
(38, 15, 'Calendar Yearly', 3, '% consumption'),
(39, 15, 'Calendar Quarterly', 3, '#MWhs'),
(40, 15, 'Calendar Monthly', 3, '#MWhs'),
(41, 16, 'Calendar Yearly', 3, '% consumption'),
(42, 16, 'Calendar Quarterly', 3, '#MWhs'),
(43, 16, 'Calendar Monthly', 3, '#MWhs'),
(47, 18, 'Calendar Yearly', 3, '#MWhs'),
(48, 18, 'Calendar Quarterly', 3, '#MWhs'),
(49, 18, 'Calendar Monthly', 3, '#MWhs'),
(50, 19, 'Calendar Yearly', 3, '#MWhs'),
(51, 19, 'Calendar Quarterly', 3, '#MWhs'),
(52, 19, 'Calendar Monthly', 3, '#MWhs'),
(53, 20, 'Calendar Yearly', 3, '#MWhs'),
(54, 20, 'Calendar Quarterly', 3, '#MWhs'),
(55, 20, 'Calendar Monthly', 3, '#MWhs'),
(59, 21, 'Calendar Yearly', 3, '#MWhs'),
(60, 21, 'Calendar Quarterly', 3, '#MWhs'),
(61, 21, 'Calendar Monthly', 3, '#MWhs'),
(62, 22, 'Calendar Yearly', 3, ''),
(63, 22, 'Calendar Quarterly', 3, ''),
(64, 22, 'Calendar Monthly', 3, ''),
(68, 23, 'Calendar Yearly', 3, '#MWhs'),
(69, 23, 'Calendar Quarterly', 3, '#MWhs'),
(70, 23, 'Calendar Monthly', 4, '#MWhs'),
(71, 17, 'Calendar Yearly', 3, '#MWhs'),
(72, 17, 'Calendar Quarterly', 3, '#MWhs'),
(73, 17, 'Calendar Monthly', 3, '#MWhs'),
(77, 24, 'Calendar Yearly', 3, '#MWhs'),
(78, 24, 'Calendar Quarterly', 3, '#MWhs'),
(79, 24, 'Calendar Monthly', 3, '#MWhs'),
(83, 25, 'Calendar Yearly', 3, '#MWhs'),
(84, 25, 'Calendar Quarterly', 3, '#MWhs'),
(85, 25, 'Calendar Monthly', 3, '#MWhs'),
(86, 26, 'Calendar Yearly', 3, '% consumption'),
(87, 26, 'Calendar Quarterly', 3, '#MWhs'),
(88, 26, 'Calendar Monthly', 3, '% consumption'),
(89, 27, 'Calendar Yearly', 20, '#MWhs'),
(90, 28, 'Calendar Yearly', 3, '% consumption'),
(91, 28, 'Calendar Quarterly', 3, '#MWhs'),
(92, 28, 'Calendar Monthly', 3, '% consumption'),
(93, 29, 'Calendar Yearly', 3, '% consumption'),
(94, 29, 'Calendar Quarterly', 3, '% consumption'),
(95, 29, 'Calendar Monthly', 3, '#MWhs'),
(96, 33, 'Calendar Yearly', 3, ''),
(97, 33, 'Calendar Quarterly', 3, ''),
(98, 33, 'Calendar Monthly', 3, ''),
(99, 41, 'Calendar Yearly', 4, '% consumption'),
(100, 42, 'Calendar Yearly', 6, '% consumption'),
(101, 44, 'Calendar Yearly', 3, '% consumption'),
(102, 44, 'Calendar Quarterly', 3, '% consumption'),
(103, 44, 'Calendar Monthly', 3, '% consumption'),
(104, 45, 'Calendar Yearly', 2, '% consumption'),
(105, 45, 'Calendar Quarterly', 2, '% consumption'),
(106, 45, 'Calendar Monthly', 2, '% consumption'),
(110, 46, 'Calendar Yearly', 3, '% consumption'),
(111, 46, 'Calendar Quarterly', 3, '% consumption'),
(112, 46, 'Calendar Monthly', 3, '% consumption'),
(113, 47, 'Calendar Yearly', 3, '% consumption'),
(114, 47, 'Calendar Quarterly', 3, '% consumption'),
(115, 47, 'Calendar Monthly', 3, '% consumption'),
(116, 48, 'Calendar Yearly', 3, '% consumption'),
(117, 48, 'Calendar Quarterly', 3, '% consumption'),
(118, 48, 'Calendar Monthly', 3, '% consumption'),
(119, 49, 'Calendar Yearly', 20, '% consumption'),
(120, 49, 'Calendar Quarterly', 3, '% consumption'),
(121, 49, 'Calendar Monthly', 3, '% consumption'),
(125, 53, 'Calendar Yearly', 3, '% consumption'),
(126, 53, 'Calendar Quarterly', 3, '% consumption'),
(127, 53, 'Calendar Monthly', 3, '% consumption'),
(128, 54, 'Calendar Yearly', 3, '% consumption'),
(129, 54, 'Calendar Quarterly', 3, '% consumption'),
(130, 54, 'Calendar Monthly', 3, '% consumption'),
(131, 55, 'Calendar Yearly', 3, '#MWhs'),
(132, 55, 'Calendar Quarterly', 3, '#MWhs'),
(133, 55, 'Calendar Monthly', 3, '#MWhs'),
(134, 56, 'Calendar Yearly', 3, '#MWhs'),
(135, 56, 'Calendar Quarterly', 3, '#MWhs'),
(136, 56, 'Calendar Monthly', 3, '#MWhs'),
(143, 57, 'Calendar Yearly', 3, '% consumption'),
(144, 57, 'Calendar Quarterly', 3, '% consumption'),
(145, 57, 'Calendar Monthly', 3, '#MWhs'),
(146, 58, 'Calendar Yearly', 3, '% consumption'),
(147, 58, 'Calendar Quarterly', 3, '% consumption'),
(148, 58, 'Calendar Monthly', 3, '#MWhs'),
(149, 59, 'Calendar Yearly', 3, ''),
(150, 59, 'Calendar Quarterly', 3, ''),
(151, 59, 'Calendar Monthly', 3, ''),
(152, 60, 'Calendar Yearly', 3, '% consumption'),
(153, 60, 'Calendar Quarterly', 3, '% consumption'),
(154, 60, 'Calendar Monthly', 3, '% consumption'),
(155, 61, 'Calendar Yearly', 3, '% consumption'),
(156, 61, 'Calendar Quarterly', 3, '% consumption'),
(157, 61, 'Calendar Monthly', 3, '% consumption');

-- --------------------------------------------------------

--
-- Table structure for table `nus_trade_periods_list`
--

CREATE TABLE `nus_trade_periods_list` (
  `tPeriodsId` int NOT NULL,
  `periodsName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `addedOn` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parentarchieved`
--

CREATE TABLE `parentarchieved` (
  `id` int NOT NULL,
  `parentcompany` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `state` enum('Active','Archived','Cancelled') COLLATE utf8mb4_general_ci NOT NULL,
  `datevalue` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parentarchieved`
--

INSERT INTO `parentarchieved` (`id`, `parentcompany`, `state`, `datevalue`, `timestamp`, `user`, `description`) VALUES
(1, 'Test', 'Active', '2023-08-07', '2023-08-07 03:33:14', 'NUSADMIN', 'A'),
(2, 'Test1', 'Archived', '2023-08-07', '2023-08-07 04:46:00', 'NUSADMIN', 'archivingtest1'),
(3, 'Test1', 'Active', '2023-08-07', '2023-08-07 04:46:29', 'NUSADMIN', 'reactivating Test1'),
(4, 'Test1', 'Archived', '2023-08-07', '2023-08-07 04:47:10', 'NUSADMIN', 'A'),
(5, 'Test1', 'Active', '2023-08-07', '2023-08-07 04:47:17', 'NUSADMIN', 'A'),
(6, 'Test1', 'Cancelled', '2023-08-07', '2023-08-07 04:48:55', 'NUSADMIN', 'a'),
(7, 'Test1', 'Active', '2023-08-07', '2023-08-07 04:49:00', 'NUSADMIN', 'A'),
(8, 'Test1', 'Archived', '2023-08-07', '2023-08-07 09:32:08', 'NUSADMIN', 'aaa'),
(9, 'Test1', 'Active', '2023-08-07', '2023-08-07 09:32:13', 'NUSADMIN', 'qqqq'),
(10, 'Test1', 'Archived', '2023-08-10', '2023-08-10 08:38:10', 'NUSADMIN', 'ARCHIVE'),
(11, 'Test1', 'Active', '2023-08-10', '2023-08-10 08:40:29', 'NUSADMIN', 'reactivate'),
(12, 'Test1', 'Cancelled', '2023-08-10', '2023-08-10 08:40:42', 'NUSADMIN', 'cancel\r\n'),
(13, 'Test1', 'Active', '2023-08-10', '2023-08-10 08:42:55', 'NUSADMIN', 'reactivate\r\n'),
(14, 'Test1', 'Archived', '2023-08-10', '2023-08-10 11:06:07', 'NUSADMIN', 'hhh'),
(15, 'Test1', 'Active', '2023-08-10', '2023-08-10 11:06:43', 'NUSADMIN', 'reactivate\r\n'),
(16, 'Test1', 'Cancelled', '2023-08-10', '2023-08-10 11:07:44', 'NUSADMIN', 'ff'),
(17, 'Test1', 'Active', '2023-08-10', '2023-08-10 11:10:05', 'NUSADMIN', 'gg'),
(18, 'Test1', 'Archived', '2023-08-10', '2023-08-10 16:15:01', 'NUSADMIN', 'Archive'),
(19, 'Test1', 'Active', '2023-08-11', '2023-08-11 03:00:01', 'NUSADMIN', 'reactivate'),
(20, 'Test1', 'Archived', '2023-08-14', '2023-08-14 06:59:08', 'NUSADMIN', 'archive'),
(21, 'Test1', 'Active', '2023-08-14', '2023-08-14 07:00:17', 'NUSADMIN', 'active'),
(22, 'Test1', 'Archived', '2023-08-14', '2023-08-14 07:09:10', 'NUSADMIN', 'aaaa'),
(23, 'Test1', 'Active', '2023-08-14', '2023-08-14 07:09:25', 'NUSADMIN', 'active'),
(24, 'Test1', 'Archived', '2023-08-14', '2023-08-14 07:18:47', 'NUSADMIN', 'Archive'),
(25, 'Test1', 'Active', '2023-08-14', '2023-08-14 08:26:41', 'NUSADMIN', 'Active'),
(26, 'Test1', 'Archived', '2023-08-14', '2023-08-14 08:27:45', 'NUSADMIN', 'Archive'),
(27, 'Test1', 'Active', '2023-08-14', '2023-08-14 08:28:18', 'NUSADMIN', 'Reactivate'),
(28, 'Test1', 'Cancelled', '2023-08-14', '2023-08-14 08:32:27', 'NUSADMIN', 'Cancel'),
(29, 'Test1', 'Active', '2023-08-14', '2023-08-14 08:50:51', 'NUSADMIN', 'Reactivate'),
(30, 'Test1', 'Cancelled', '2023-08-14', '2023-08-14 08:51:06', 'NUSADMIN', 'Cancel'),
(31, 'Test1', 'Active', '2023-08-14', '2023-08-14 08:52:28', 'NUSADMIN', 'Reactivate'),
(32, 'newParent', 'Cancelled', '2023-08-14', '2023-08-14 09:51:11', 'NUSADMIN', 'cancel'),
(33, 'newParent', 'Active', '2023-08-14', '2023-08-14 09:51:31', 'NUSADMIN', 'reactivate'),
(34, 'Test1', 'Archived', '2023-08-15', '2023-08-15 17:59:32', 'NUSADMIN', 'Archive'),
(35, 'Test1', 'Active', '2023-08-15', '2023-08-15 18:16:45', 'NUSADMIN', 'Cancel\r\n'),
(36, 'newParent', 'Archived', '2023-08-16', '2023-08-16 15:10:17', 'NUSADMIN', 'Archive'),
(37, 'newParent', 'Active', '2023-08-16', '2023-08-16 15:12:25', 'NUSADMIN', 'reactivate'),
(38, 'newParent', 'Archived', '2023-08-16', '2023-08-16 15:17:55', 'NUSADMIN', 'Archive'),
(39, 'newParent', 'Active', '2023-08-16', '2023-08-16 15:18:37', 'NUSADMIN', 'reactivate\r\n'),
(40, 'newParent', 'Archived', '2023-08-16', '2023-08-16 17:58:30', 'NUSADMIN', 'Archive'),
(41, 'newParent', 'Active', '2023-08-16', '2023-08-16 18:10:04', 'NUSADMIN', 'ddddd'),
(42, 'Test1', 'Archived', '2023-08-17', '2023-08-17 04:52:57', 'NUSADMIN', 'AA'),
(43, 'Test1', 'Active', '2023-08-18', '2023-08-18 03:15:36', 'NUSADMIN', 'Reactivate\r\n'),
(44, 'Parent1', 'Cancelled', '2023-08-18', '2023-08-18 03:19:32', 'NUSADMIN', 'cancel'),
(45, 'Parent1', 'Active', '2023-08-18', '2023-08-18 03:19:53', 'NUSADMIN', 'ac'),
(46, 'Test1', 'Archived', '2023-08-21', '2023-08-21 06:42:05', 'NUSADMIN', 'Archive'),
(47, 'Test1', 'Active', '2023-08-22', '2023-08-22 04:35:20', 'NUSADMIN', 'jiji'),
(48, 'Test1', 'Archived', '2023-08-22', '2023-08-22 07:04:01', 'NUSADMIN', 'Archive'),
(49, 'Test1', 'Active', '2023-08-23', '2023-08-23 09:01:04', 'NUSADMIN', 'Reactive'),
(50, 'newParent_1', 'Archived', '2023-08-25', '2023-08-25 05:09:19', 'NUSADMIN', 'archive'),
(51, 'newParent_1', 'Active', '2023-08-25', '2023-08-25 05:10:15', 'NUSADMIN', 'reactive\r\n'),
(52, 'Test1', 'Archived', '2023-09-13', '2023-09-13 17:26:29', 'NUSADMIN', 'Archive'),
(53, 'Parent1', 'Cancelled', '2023-09-14', '2023-09-13 23:30:13', 'NUSADMIN', 'Cancel '),
(54, 'Parent', 'Cancelled', '2023-09-14', '2023-09-13 23:31:47', 'NUSADMIN', 'Cancel'),
(55, 'Parent1', 'Active', '2023-09-14', '2023-09-13 23:32:43', 'NUSADMIN', 'reactivate\r\n'),
(56, 'Parent', 'Active', '2023-09-14', '2023-09-13 23:33:06', 'NUSADMIN', 'reactivate'),
(57, 'Parent1', 'Cancelled', '2023-09-14', '2023-09-13 23:35:39', 'NUSADMIN', 'Cancel'),
(58, 'Parent1', 'Active', '2023-09-14', '2023-09-13 23:37:06', 'NUSADMIN', 'Reactivate'),
(59, 'Parent', 'Cancelled', '2023-09-14', '2023-09-13 23:39:25', 'NUSADMIN', 'Cancel'),
(60, 'Parent', 'Active', '2023-09-14', '2023-09-13 23:41:18', 'NUSADMIN', 'Reactivate'),
(61, 'Parent1', 'Cancelled', '2023-09-14', '2023-09-13 23:41:41', 'NUSADMIN', 'Cancel\r\n'),
(62, 'Parent1', 'Active', '2023-09-14', '2023-09-13 23:42:16', 'NUSADMIN', 'Reactiavte'),
(63, 'Parent', 'Cancelled', '2023-09-14', '2023-09-13 23:42:26', 'NUSADMIN', 'Cancel'),
(64, 'Test1', 'Active', '2023-09-14', '2023-09-13 23:56:00', 'NUSADMIN', 'Active'),
(65, 'Parent', 'Active', '2023-09-14', '2023-09-14 00:02:32', 'NUSADMIN', 'Reactiavte from cancel state');

-- --------------------------------------------------------

--
-- Table structure for table `parentcompanydata`
--

CREATE TABLE `parentcompanydata` (
  `id` int NOT NULL,
  `parentcompany` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `state` enum('Active','Archived','Cancelled') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parentcompanydata`
--

INSERT INTO `parentcompanydata` (`id`, `parentcompany`, `state`) VALUES
(1, 'Test1', 'Active'),
(2, 'NUS - International', 'Active'),
(3, 'Exide - International', 'Active'),
(4, 'Parent', 'Active'),
(5, 'newParent_1', 'Active'),
(6, 'Parent1', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientarchieve`
--
ALTER TABLE `clientarchieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientcompanydata`
--
ALTER TABLE `clientcompanydata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enter_trade`
--
ALTER TABLE `enter_trade`
  ADD PRIMARY KEY (`tradeId`);

--
-- Indexes for table `nususerdata`
--
ALTER TABLE `nususerdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailId`),
  ADD UNIQUE KEY `username_2` (`username`,`emailId`),
  ADD UNIQUE KEY `username_3` (`username`),
  ADD UNIQUE KEY `emailId` (`emailId`);

--
-- Indexes for table `nus_calendermonth`
--
ALTER TABLE `nus_calendermonth`
  ADD PRIMARY KEY (`monthId`);

--
-- Indexes for table `nus_calenderquarter`
--
ALTER TABLE `nus_calenderquarter`
  ADD PRIMARY KEY (`querterid`);

--
-- Indexes for table `nus_calenderyear`
--
ALTER TABLE `nus_calenderyear`
  ADD PRIMARY KEY (`calenderId`);

--
-- Indexes for table `nus_countries`
--
ALTER TABLE `nus_countries`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `nus_currencies`
--
ALTER TABLE `nus_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies` (`currencies`);

--
-- Indexes for table `nus_electricity_index`
--
ALTER TABLE `nus_electricity_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nus_naturalgas_index`
--
ALTER TABLE `nus_naturalgas_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nus_pricing_mechanisam`
--
ALTER TABLE `nus_pricing_mechanisam`
  ADD PRIMARY KEY (`priMechId`);

--
-- Indexes for table `nus_season`
--
ALTER TABLE `nus_season`
  ADD PRIMARY KEY (`seasonId`);

--
-- Indexes for table `nus_supply_archieve`
--
ALTER TABLE `nus_supply_archieve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nus_supply_contract`
--
ALTER TABLE `nus_supply_contract`
  ADD PRIMARY KEY (`supplierId`);

--
-- Indexes for table `nus_tradeexecuted_state`
--
ALTER TABLE `nus_tradeexecuted_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nus_tradeperiods`
--
ALTER TABLE `nus_tradeperiods`
  ADD PRIMARY KEY (`tradePerId`);

--
-- Indexes for table `nus_trade_periods_list`
--
ALTER TABLE `nus_trade_periods_list`
  ADD PRIMARY KEY (`tPeriodsId`);

--
-- Indexes for table `parentarchieved`
--
ALTER TABLE `parentarchieved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parentcompanydata`
--
ALTER TABLE `parentcompanydata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parentcompany` (`parentcompany`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientarchieve`
--
ALTER TABLE `clientarchieve`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `clientcompanydata`
--
ALTER TABLE `clientcompanydata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `enter_trade`
--
ALTER TABLE `enter_trade`
  MODIFY `tradeId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `nususerdata`
--
ALTER TABLE `nususerdata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nus_calendermonth`
--
ALTER TABLE `nus_calendermonth`
  MODIFY `monthId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=837;

--
-- AUTO_INCREMENT for table `nus_calenderquarter`
--
ALTER TABLE `nus_calenderquarter`
  MODIFY `querterid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `nus_calenderyear`
--
ALTER TABLE `nus_calenderyear`
  MODIFY `calenderId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `nus_currencies`
--
ALTER TABLE `nus_currencies`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nus_electricity_index`
--
ALTER TABLE `nus_electricity_index`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `nus_naturalgas_index`
--
ALTER TABLE `nus_naturalgas_index`
  MODIFY `id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nus_season`
--
ALTER TABLE `nus_season`
  MODIFY `seasonId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nus_supply_archieve`
--
ALTER TABLE `nus_supply_archieve`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `nus_supply_contract`
--
ALTER TABLE `nus_supply_contract`
  MODIFY `supplierId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `nus_tradeexecuted_state`
--
ALTER TABLE `nus_tradeexecuted_state`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nus_tradeperiods`
--
ALTER TABLE `nus_tradeperiods`
  MODIFY `tradePerId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `nus_trade_periods_list`
--
ALTER TABLE `nus_trade_periods_list`
  MODIFY `tPeriodsId` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parentarchieved`
--
ALTER TABLE `parentarchieved`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `parentcompanydata`
--
ALTER TABLE `parentcompanydata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
