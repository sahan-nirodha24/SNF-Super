-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 02:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `AdminId` int(11) NOT NULL,
  `AdminName` varchar(20) NOT NULL,
  `AdminPass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`AdminId`, `AdminName`, `AdminPass`) VALUES
(1, 'User', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `categorytb`
--

CREATE TABLE `categorytb` (
  `CatId` int(11) NOT NULL,
  `CatName` varchar(20) NOT NULL,
  `CatDesc` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorytb`
--

INSERT INTO `categorytb` (`CatId`, `CatName`, `CatDesc`) VALUES
(1, 'Beverage', 'All Kind of Drinks'),
(2, 'Cleaning', 'All Kind of Cleaning Equipment'),
(3, 'Dairy', 'Nice Dairy to Enjoy'),
(4, 'Meat', 'Excellent Meat'),
(5, 'Vegetable', 'All Kind of Vegetables'),
(6, 'Fruits', 'Sweet & Fresh Fruits'),
(7, 'Bakery', 'All Types of Fast Foods'),
(8, 'SeaFoods', 'Fresh & Helathy Seafoods'),
(9, 'Snacks', 'Every Type of snacks'),
(10, 'Stationary', 'Most Useful Items for Everyone'),
(11, 'Medicine', 'All Types Of Medicines');

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `ProdId` int(11) NOT NULL,
  `ProdName` varchar(30) NOT NULL,
  `ProdQty` int(11) NOT NULL,
  `ProdPrice` double NOT NULL,
  `ProdCat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`ProdId`, `ProdName`, `ProdQty`, `ProdPrice`, `ProdCat`) VALUES
(1, 'Pepsi', 699, 375, 'Beverage'),
(2, 'Coke', 694, 400, 'Beverage'),
(3, 'Sausage', 510, 450, 'Meat'),
(4, 'Eggs', 690, 48, 'Meat'),
(5, 'Soda', 150, 300, 'Beverage'),
(6, 'Yogurt', 143, 80, 'Dairy'),
(7, 'Pork', 190, 2000, 'Meat'),
(8, 'IceCream', 450, 500, 'Dairy'),
(9, 'Curd', 290, 400, 'Dairy'),
(10, 'Carrot', 100, 35, 'Vegetable'),
(11, 'Beans', 96, 80, 'Vegetable'),
(12, 'Potato', 994, 350, 'Vegetable'),
(13, 'Pen', 991, 40, 'Stationary'),
(14, 'Glue', 150, 150, 'Stationary'),
(15, 'Book', 200, 320, 'Stationary'),
(16, 'Chicken', 950, 1200, 'Meat'),
(17, 'Beef', 600, 2500, 'Meat'),
(18, 'Bread', 100, 150, 'Bakery'),
(19, 'ButterCake', 45, 1250, 'Bakery'),
(20, 'Soap', 400, 125, 'Cleaning'),
(21, 'ToothPaste', 193, 325, 'Cleaning'),
(22, 'Shampoo', 450, 600, 'Cleaning');

-- --------------------------------------------------------

--
-- Table structure for table `sellertb1`
--

CREATE TABLE `sellertb1` (
  `SelId` int(11) NOT NULL,
  `SelName` varchar(20) NOT NULL,
  `SelPass` varchar(20) NOT NULL,
  `SelGender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellertb1`
--

INSERT INTO `sellertb1` (`SelId`, `SelName`, `SelPass`, `SelGender`) VALUES
(1, 'Pramith', '6655', 'Male'),
(2, 'Vimukthi', '5522', 'Male'),
(3, 'Levindu', '1234', 'Male'),
(4, 'Vishwa', '4567', 'Male'),
(5, 'Dulan', '2545', 'Male'),
(6, 'Madhawa', '7788', 'Male'),
(7, 'Sajith', '1212', 'Male'),
(8, 'Kavishka', '4321', 'Male'),
(9, 'Udari', '2525', 'Female'),
(10, 'Himaya', '8899', 'Female'),
(11, 'Vishmi', '1727', 'Female'),
(12, 'Jayani', '3322', 'Female'),
(13, 'Poornima', '2244', 'Female'),
(14, 'Malshi', '1919', 'Female'),
(15, 'Navodhya', '2727', 'Female'),
(16, 'Dilki', '2255', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintb`
--
ALTER TABLE `admintb`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indexes for table `categorytb`
--
ALTER TABLE `categorytb`
  ADD PRIMARY KEY (`CatId`);

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`ProdId`);

--
-- Indexes for table `sellertb1`
--
ALTER TABLE `sellertb1`
  ADD PRIMARY KEY (`SelId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
