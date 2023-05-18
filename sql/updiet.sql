-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2023 at 01:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `updiet`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `u_id` int(222) NOT NULL,
  `menu_id` int(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `prof_pic` varchar(222) DEFAULT NULL,
  `c_num` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`u_id`, `username`, `join_date`, `prof_pic`, `c_num`) VALUES
(1, 'Kyle Enorio', '2023-04-04 09:43:26', 'uploads/img/user/prof-pic/1', ''),
(16, 'EllienMae', '2023-05-18 09:31:44', 'uploads/img/user/prof-pic/16', '09123456789');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `t_id` int(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `u_id` int(222) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `item_count` int(222) NOT NULL,
  `location` varchar(222) NOT NULL,
  `remarks` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`t_id`, `date`, `u_id`, `total`, `item_count`, `location`, `remarks`) VALUES
(25, '2023-05-05 07:53:12', 1, 90.00, 2, 'Balay Miagos', ''),
(26, '2023-05-06 02:56:57', 1, 105.00, 3, 'CAS', ''),
(27, '2023-05-18 09:28:56', 1, 135.00, 3, 'Kilid kalsada lang', ''),
(28, '2023-05-18 09:33:52', 16, 120.00, 3, 'Balay Gumamela', ''),
(29, '2023-05-18 11:53:50', 16, 60.00, 1, 'dumangas', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_info`
--

CREATE TABLE `purchase_info` (
  `t_id` int(222) NOT NULL,
  `order_status` varchar(222) NOT NULL,
  `food_name` varchar(222) NOT NULL,
  `store_name` varchar(222) NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `quantity` int(222) NOT NULL,
  `food_img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_info`
--

INSERT INTO `purchase_info` (`t_id`, `order_status`, `food_name`, `store_name`, `price`, `quantity`, `food_img`) VALUES
(25, 'Pending', 'Leche Flan', 'Manang Betch', 45.00, 1, 'uploads/img/store/menu/2/31'),
(25, 'Pending', 'Coke', 'Manang Betch', 30.00, 1, 'uploads/img/store/menu/2/32'),
(26, 'Pending', 'Chicken Adobo', 'Manang Betch', 45.00, 1, 'uploads/img/store/menu/2/29'),
(26, 'Pending', 'Coke', 'Manang Betch', 30.00, 1, 'uploads/img/store/menu/2/32'),
(26, 'Pending', 'Rice', 'Manang Betch', 15.00, 1, 'uploads/img/store/menu/2/28'),
(27, 'Pending', 'Chicken Adobo', 'Manang Betch', 45.00, 1, 'uploads/img/store/menu/2/29'),
(27, 'Pending', 'Leche Flan', 'Manang Betch', 45.00, 1, 'uploads/img/store/menu/2/31'),
(27, 'Pending', 'Coke', 'Manang Betch', 30.00, 1, 'uploads/img/store/menu/2/32'),
(28, 'Pending', 'Rice', 'Manang Betch', 15.00, 2, 'uploads/img/store/menu/2/28'),
(28, 'Pending', 'Chicken Adobo', 'Manang Betch', 45.00, 1, 'uploads/img/store/menu/2/29'),
(28, 'Pending', 'Coke', 'Manang Betch', 30.00, 1, 'uploads/img/store/menu/2/32'),
(29, 'Pending', 'Chicken Adobo', 'Manang Betch', 45.00, 1, 'uploads/img/store/menu/2/29');

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `u_id` int(222) NOT NULL,
  `location` varchar(222) NOT NULL,
  `is_published` int(222) NOT NULL DEFAULT 0,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `prof_pic` varchar(222) DEFAULT NULL,
  `prof_cover` varchar(222) DEFAULT NULL,
  `name` varchar(222) NOT NULL,
  `c_num` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_info`
--

INSERT INTO `store_info` (`u_id`, `location`, `is_published`, `join_date`, `prof_pic`, `prof_cover`, `name`, `c_num`) VALUES
(2, 'Somewhere down the road.', 1, '2023-04-04 17:44:21', 'uploads/img/store/prof_pic/2', 'uploads/img/store/prof_cover/2', 'Manang Betch', '09123456789'),
(12, 'Here', 0, '2023-04-15 04:45:12', NULL, NULL, 'Test', '09123456789'),
(13, 'test', 0, '2023-04-19 08:51:56', NULL, NULL, 'test1', '09123456789'),
(14, 'sd', 0, '2023-04-25 01:52:12', NULL, NULL, 'asdf', '09123456789'),
(15, 'asdf', 0, '2023-04-25 02:17:43', NULL, NULL, 'asdf\'f', '09999999999'),
(17, 'Mat-y, Miagao', 0, '2023-05-18 09:40:09', 'uploads/img/store/prof_pic/17', NULL, 'El Garaje', '09151566367');

-- --------------------------------------------------------

--
-- Table structure for table `store_menu`
--

CREATE TABLE `store_menu` (
  `menu_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `type` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_published` int(222) NOT NULL DEFAULT 1,
  `price` decimal(65,2) NOT NULL,
  `img` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_menu`
--

INSERT INTO `store_menu` (`menu_id`, `u_id`, `name`, `type`, `date`, `is_published`, `price`, `img`) VALUES
(26, 13, 'Coke', 'Beverage', '2023-04-21 02:46:02', 1, 15.00, 'uploads/img/store/menu/13/26'),
(28, 2, 'Rice', 'Add-on', '2023-04-25 01:53:37', 1, 15.00, 'uploads/img/store/menu/2/28'),
(29, 2, 'Chicken Adobo', 'Main Course', '2023-04-28 04:55:33', 1, 45.00, 'uploads/img/store/menu/2/29'),
(31, 2, 'Leche Flan', 'Dessert', '2023-05-02 03:36:12', 1, 45.00, 'uploads/img/store/menu/2/31'),
(32, 2, 'Coke', 'Beverage', '2023-05-02 03:38:12', 1, 30.00, 'uploads/img/store/menu/2/32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `u_type` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `email`, `password`, `u_type`) VALUES
(1, 'kmenorio@up.edu.ph', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(2, 'manangbetch@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(12, 'test@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(13, 'test1@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(14, 'asd@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(15, 'asdf@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(16, 'ebbanes@up.edu.ph', 'e82c4b19b8151ddc25d4d93baf7b908f', 'user'),
(17, 'elgaraje@gmail.com', 'e82c4b19b8151ddc25d4d93baf7b908f', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `store_info`
--
ALTER TABLE `store_info`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `store_menu`
--
ALTER TABLE `store_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `t_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `store_menu`
--
ALTER TABLE `store_menu`
  MODIFY `menu_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
