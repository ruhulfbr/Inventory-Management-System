-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2018 at 05:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `account_type`, `date_created`, `created_by`) VALUES
(9, 'ruhul11bd', '$2y$10$gRnydbrY5YH1xyokGmUDi.gLPC8JlQ9MJhVi/GK/hCgMIvGp.JZ1i', 'Admin', '2018-10-07 06:05:27 pm', 'admin'),
(10, 'ruhul11bd2', '$2y$10$IiHWr8R4/e6r.mL7WRAHmO4iiupNZZABkUk19VM45Ji.4xqs4weuS', 'Cashier', '2018-10-07 06:09:28 pm', 'admin'),
(11, 'ruhul11bd3', '$2y$10$Ah0/tOriQxlkMTJQsS8oquviww/I8.0BSBbFtxW.6s4TTOY3ia.E6', 'Clerk', '2018-10-07 06:09:47 pm', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `creator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `date_time`, `category`, `creator`) VALUES
(20, '2017-07-07 01:48:30 am', 'Liqour', 'admin'),
(21, '2017-07-07 01:48:34 am', 'Junk Food', 'admin'),
(22, '2017-07-07 03:47:09 am', 'Soap', 'admin'),
(23, '2017-07-07 03:47:18 am', 'Can Goods', 'admin'),
(24, '2017-07-07 03:47:33 am', 'Drinks', 'admin'),
(25, '2017-07-07 03:47:52 am', 'Biscuit', 'admin'),
(26, '2017-07-07 03:47:57 am', 'Candy', 'admin'),
(27, '2017-07-07 03:48:23 am', 'Detergents', 'admin'),
(28, '2017-07-07 03:49:44 am', 'Shampoo', 'admin'),
(29, '2018-10-08 07:15:25 pm', 'Mobile', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `quantities` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `description`, `date_time`, `creator`, `quantities`, `price`) VALUES
(24, 'VIM', 'Liqour', 'vim 250mg ', '2017-07-07 03:49:12 am', 'admin', 40, 80),
(25, 'Nuty Biscuit', 'Soap', 'mini pack (benglefoods)', '2017-07-07 03:49:30 am', 'admin', 45, 15),
(26, 'Mum Water', 'Drinks', 'mum water 500mg', '2017-07-07 03:50:00 am', 'admin', 5, 15),
(27, 'Clear Men', 'Shampoo', '250mg', '2017-07-07 03:50:51 am', 'admin', 50, 6),
(28, '7up', 'Drinks', '500 mg', '2017-07-07 03:51:41 am', 'admin', 60, 20),
(29, 'Cocacola', 'Drinks', 'It 500mg', '2018-10-07 06:08:17 pm', 'admin', 3, 35);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_id` varchar(100) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` double NOT NULL,
  `quantity` double NOT NULL,
  `sub_total` double NOT NULL,
  `date` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `week` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_id`, `date_time`, `item_id`, `item_name`, `item_price`, `quantity`, `sub_total`, `date`, `month`, `year`, `week`) VALUES
(52, 687978323, '2017-07-05 14:58:51', '18', 'Red Horse', 100, 10, 1000, '2017-07-06', '07', '2017', '27'),
(53, 687978323, '2017-07-05 14:58:51', '15', 'Tanduay Lapad', 110, 5, 550, '2017-07-06', '07', '2017', '27'),
(58, 358750377, '2017-07-06 12:20:39', '28', 'Mega Sardines', 17, 2, 34, '2017-07-07', '07', '2017', '27'),
(59, 358750377, '2017-07-06 12:20:39', '24', 'Wings', 7, 1, 7, '2017-07-07', '07', '2017', '27'),
(60, 358750377, '2017-07-06 12:20:39', '27', 'Sunsilk Condition', 6, 5, 30, '2017-07-07', '07', '2017', '27'),
(61, 358750377, '2017-07-06 12:20:39', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(62, 753893973, '2017-07-06 12:22:01', '28', 'Mega Sardines', 17, 2, 34, '2017-07-07', '07', '2017', '27'),
(63, 753893973, '2017-07-06 12:22:01', '24', 'Wings', 7, 1, 7, '2017-07-07', '07', '2017', '27'),
(64, 753893973, '2017-07-06 12:22:01', '27', 'Sunsilk Condition', 6, 5, 30, '2017-07-07', '07', '2017', '27'),
(65, 753893973, '2017-07-06 12:22:01', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(69, 1296680715, '2017-07-06 13:12:18', '24', 'Wings', 7, 5, 35, '2017-07-07', '07', '2017', '27'),
(71, 1641941656, '2017-07-06 13:35:46', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(72, 1184663673, '2017-07-06 13:42:33', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(73, 331584523, '2017-07-06 13:44:05', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(74, 8794, '2018-10-07 16:11:08', '29', 'Cocacola', 35, 5, 175, '2018-10-07', '10', '2018', '40'),
(75, 25281, '2018-10-07 16:13:07', '24', 'Wings', 7, 10, 70, '2018-10-07', '10', '2018', '40'),
(76, 3317, '2018-10-08 17:32:56', '29', 'Cocacola', 35, 2, 70, '2018-10-08', '10', '2018', '41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
