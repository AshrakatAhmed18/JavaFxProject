-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 ديسمبر 2020 الساعة 00:11
-- إصدار الخادم: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_agency`
--

-- --------------------------------------------------------

--
-- بنية الجدول `alltypes`
--

CREATE TABLE `alltypes` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `num` int(11) NOT NULL,
  `note` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `alltypes`
--

INSERT INTO `alltypes` (`id`, `type`, `num`, `note`) VALUES
(1, 'trucks', 0, 'for long travel'),
(2, 'cars', 0, 'most popular'),
(3, 'motorcycles', 0, 'most popular');

-- --------------------------------------------------------

--
-- بنية الجدول `brands`
--

CREATE TABLE `brands` (
  `brandName` varchar(20) NOT NULL,
  `bID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `brands`
--

INSERT INTO `brands` (`brandName`, `bID`) VALUES
('Mazda', 1),
('Honda', 2),
('Toyota', 3),
('Hyundai', 4),
('Kia', 5),
('Volkswagen', 6),
('Chevrolet', 7);

-- --------------------------------------------------------

--
-- بنية الجدول `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `used` tinyint(1) DEFAULT NULL,
  `coloID` int(11) DEFAULT NULL,
  `max_speed` double DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `pic_path` varchar(40) DEFAULT NULL,
  `brandID` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `cars`
--

INSERT INTO `cars` (`id`, `type_id`, `model`, `used`, `coloID`, `max_speed`, `note`, `pic_path`, `brandID`, `cost`) VALUES
(1, 2, 2010, 0, 2, 120, 'sdzc v', 'sdv', 1, 100000),
(2, 2, 2017, 1, 1, 150, 'sfxvb', 'fddgv', 3, 5000);

-- --------------------------------------------------------

--
-- بنية الجدول `colors`
--

CREATE TABLE `colors` (
  `colorID` int(11) NOT NULL,
  `colorName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `colors`
--

INSERT INTO `colors` (`colorID`, `colorName`) VALUES
(1, 'red'),
(2, 'green');

-- --------------------------------------------------------

--
-- بنية الجدول `installments`
--

CREATE TABLE `installments` (
  `id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `customer_fname` varchar(20) DEFAULT NULL,
  `customer_lname` varchar(20) DEFAULT NULL,
  `money_paid` double DEFAULT NULL,
  `money_remains` double DEFAULT NULL,
  `installment_value` double DEFAULT NULL,
  `date_of_last_installment` date DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_address` varchar(30) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `motorcycles`
--

CREATE TABLE `motorcycles` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `brandID` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `used` tinyint(1) DEFAULT NULL,
  `max_speed` int(11) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `pic_path` varchar(40) DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `coloID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_fname` varchar(20) DEFAULT NULL,
  `customer_lname` varchar(20) DEFAULT NULL,
  `date_of_sale` date DEFAULT NULL,
  `care_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_address` varchar(30) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- بنية الجدول `trucks`
--

CREATE TABLE `trucks` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `brandID` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `used` tinyint(1) DEFAULT NULL,
  `coloID` int(11) DEFAULT NULL,
  `max_speed` int(11) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `pic_path` varchar(40) DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alltypes`
--
ALTER TABLE `alltypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `test` (`brandID`),
  ADD KEY `sdvas` (`coloID`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`colorID`);

--
-- Indexes for table `installments`
--
ALTER TABLE `installments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `brandID` (`brandID`),
  ADD KEY `sfdb` (`coloID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trucks`
--
ALTER TABLE `trucks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `brandID` (`brandID`),
  ADD KEY `dgt` (`coloID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alltypes`
--
ALTER TABLE `alltypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `installments`
--
ALTER TABLE `installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `motorcycles`
--
ALTER TABLE `motorcycles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trucks`
--
ALTER TABLE `trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `alltypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sdvas` FOREIGN KEY (`coloID`) REFERENCES `colors` (`colorID`),
  ADD CONSTRAINT `test` FOREIGN KEY (`brandID`) REFERENCES `brands` (`bID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD CONSTRAINT `motorcycles_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `alltypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motorcycles_ibfk_2` FOREIGN KEY (`brandID`) REFERENCES `brands` (`bID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sfdb` FOREIGN KEY (`coloID`) REFERENCES `colors` (`colorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- القيود للجدول `trucks`
--
ALTER TABLE `trucks`
  ADD CONSTRAINT `dgt` FOREIGN KEY (`coloID`) REFERENCES `colors` (`colorID`),
  ADD CONSTRAINT `trucks_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `alltypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trucks_ibfk_2` FOREIGN KEY (`brandID`) REFERENCES `brands` (`bID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
