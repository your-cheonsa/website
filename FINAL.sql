-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 03:27 PM
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
-- Database: `jewelry`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminID` int(70) NOT NULL,
  `adminname` varchar(100) NOT NULL,
  `adfirstname` varchar(100) NOT NULL,
  `adlastname` varchar(100) NOT NULL,
  `ademailaddress` varchar(100) NOT NULL,
  `adpassword` varchar(20) NOT NULL,
  `adconfirmpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminID`, `adminname`, `adfirstname`, `adlastname`, `ademailaddress`, `adpassword`, `adconfirmpassword`) VALUES
(2147483647, 'kaikai', 'Kyla', 'hare', 'kylajean@', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `categoryID` int(70) NOT NULL,
  `categoryName` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`categoryID`, `categoryName`) VALUES
(1, 'Bracelets'),
(2, 'Necklaces'),
(3, 'Earrings'),
(4, 'Rings'),
(5, 'Wedding Rings'),
(6, 'Engagement Rings'),
(11, 'Watches'),
(13, 'Men\'s Jewelry');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `discountID` int(70) NOT NULL,
  `discountPercent` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`discountID`, `discountPercent`) VALUES
(1, 0.1),
(2, 0.2),
(3, 0.3),
(4, 0.4),
(5, 0.5),
(6, 0.6),
(7, 0.7),
(8, 0.8),
(9, 0.9),
(10, 0.22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `orderID` int(50) NOT NULL,
  `orderDate` int(11) NOT NULL,
  `productLink` varchar(100) NOT NULL,
  `userID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `productID` varchar(100) NOT NULL,
  `productCategory` varchar(70) NOT NULL,
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`orderID`, `orderDate`, `productLink`, `userID`, `username`, `productID`, `productCategory`, `totalAmount`) VALUES
(38, 2147483647, '', 3840, 'cherryfaith', 'G33R0200', '', 3000),
(39, 2147483647, '', 3840, 'cherryfaith', 'G34P2K00', '', 4150);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productID` varchar(100) NOT NULL,
  `productName` varchar(250) NOT NULL,
  `productPrice` decimal(10,2) NOT NULL,
  `productSize` varchar(200) NOT NULL,
  `productCategory` varchar(200) NOT NULL,
  `productDiscount` double NOT NULL,
  `productDesc` varchar(200) NOT NULL,
  `shortdesc` varchar(255) NOT NULL,
  `productLink` varchar(200) NOT NULL,
  `productStocks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productID`, `productName`, `productPrice`, `productSize`, `productCategory`, `productDiscount`, `productDesc`, `shortdesc`, `productLink`, `productStocks`) VALUES
('G0A40211', 'Extremely Lady watch', 64500.00, 'Custom (CONTACT US)', 'Watches', 0, 'Extremely Lady watch, 27 x 22 mm. Rhodium finish 18K white gold case set with 24 brilliant-cut diamonds (approx. 1.46 ct). Rhodium finish 18K white gold \"Decor Palace\" bracelet. Piaget 56P quartz move', 'White Gold Diamond Watch', 'https://img.piaget.com/product-light-box-1/e2e4af6c8f1ff1c1bc4825347ea812b8f608b3e1.jpg', 50),
('G33R0200', 'Piaget Sunlight pendant', 3000.00, 'Freesize (Necklaces, Bracelets, Earrings)', 'Necklaces', 0, 'Piaget Sunlight pendant in 18K rose gold set with 16 brilliant-cut diamonds (approx. 0.13 ct).', 'Rose Gold Diamond Pendant', 'https://img.piaget.com/product-light-box-1/e003236c9a1f03b5801f4336234bb81e546c52b1.jpg', 100),
('G34L3F00', 'Limelight wedding ring', 1910.00, 'Custom (CONTACT US)', 'Wedding Rings', 0, 'Limelight wedding ring in platinum with logo motif.', 'Platinum Wedding Ring', 'https://img.piaget.com/product-light-box-1/c714b3b841ccc023a188a28aaac9d376951f3879.jpg', 200),
('G34P2K00', 'Possession ring', 4150.00, '46 mm (Ring)', 'Rings', 0, 'Possession \"Decor Palace\" ring in 18K rose gold set with one Possession-set brilliant-cut diamond (approx. 0.03 ct).', 'Decor Palace', 'https://img.piaget.com/product-light-box-1/783090230a8a38895d5a81e09575d54f6d7e5fa3.jpg', 100),
('G34P2N00', 'Possession ring', 2890.00, '47 mm (Ring)', 'Rings', 0, 'Possession ring in 18K rose gold set with 8 Possession-set brilliant-cut diamonds (approx. 0.17 ct).', 'Rose Gold Diamond Ring', 'https://img.piaget.com/product-light-box-1/cee25027ea4daf3ba45f8f6c6698132bc2afabfe.jpg', 100),
('G34P7K00', 'Possession ring', 2360.00, '46 mm (Ring)', 'Rings', 0, 'Possession \"Decor Palace\" ring in 18K rose gold set with one Possession-set brilliant-cut diamond (approx. 0.02 ct).', 'Decor Palace', 'https://img.piaget.com/product-light-box-1/db22b92a7c2f5761604859840700ec1fa375492e.jpg', 100),
('G38P1A00', 'Possession earrings', 3700.00, 'Freesize (Necklaces, Bracelets, Earrings)', 'Earrings', 0, 'Possession earrings in 18K rose gold set with 28 brilliant-cut diamonds (approx. 0.32 ct).', 'Rose Gold Diamond Earrings', 'https://img.piaget.com/product-light-box-1/92cd5f046ec0c9165fe64130892c614c6a726e49.jpg', 200),
('G38PV800', 'Possession earrings', 4800.00, 'Select Size', 'Earrings', 0, 'Possession earrings in 18K rose gold set with 28 brilliant-cut diamonds (approx. 0.32 ct). 3 ways of wearing.', 'Rose Gold Diamond Earrings', 'https://img.piaget.com/product-light-box-1/ddc8dc4bfc2afea7c71376334a07e7a0d0bd59ca.jpg', 200),
('G38U0096', 'Piaget Rose', 2440.00, 'Freesize (Necklaces, Bracelets, Earrings)', 'Earrings', 0, 'Piaget Rose single earring in rhodium finish 18K white gold set with 14 brilliant-cut diamonds (approx. 0.17 ct).', 'White Gold Diamond Single Earring', 'https://img.piaget.com/product-light-box-1/2f3361359cdf897afacafced215c6e94669110ef.jpg', 200),
('G38U0097', 'Piaget Rose earrings', 19100.00, 'Freesize (Necklaces, Bracelets, Earrings)', 'Earrings', 0, 'Piaget Rose earrings in rhodium finish 18K white gold set with 162 brilliant-cut diamonds (approx. 1.14 cts).', 'White Gold Diamond Earrings', 'https://img.piaget.com/product-light-box-1/253a2fab74c1828dc84c047f2bc181786149db92.jpg', 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `user` varchar(100) NOT NULL,
  `purchaseDate` date NOT NULL DEFAULT current_timestamp(),
  `productID` varchar(100) NOT NULL,
  `productName` varchar(200) NOT NULL,
  `productCategory` varchar(200) NOT NULL,
  `productLink` varchar(200) NOT NULL,
  `productPrice` varchar(70) NOT NULL,
  `productSize` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_purchase`
--

INSERT INTO `tbl_purchase` (`user`, `purchaseDate`, `productID`, `productName`, `productCategory`, `productLink`, `productPrice`, `productSize`) VALUES
('fatima168', '2023-12-05', 'G34L3F00', 'Limelight wedding ring', 'Wedding Rings', 'https://img.piaget.com/product-light-box-1/c714b3b841ccc023a188a28aaac9d376951f3879.jpg', '1910.00', 'Custom (CONTACT US)'),
('fatima168', '2023-12-05', 'G34L3F00', 'Limelight wedding ring', 'Wedding Rings', 'https://img.piaget.com/product-light-box-1/c714b3b841ccc023a188a28aaac9d376951f3879.jpg', '1910.00', '55 mm (Ring)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `sizeID` int(70) NOT NULL,
  `sizeValue` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`sizeID`, `sizeValue`) VALUES
(1, 'Custom (CONTACT US)'),
(2, 'Freesize (Necklaces, Bracelets, Earrings)'),
(3, '14 - 15 cm (Bracelet)'),
(4, '15 - 16 cm (Bracelet)'),
(5, '16 - 17 cm (Bracelet)'),
(6, '17 - 18 cm (Bracelet)'),
(7, '18 - 19 cm (Bracelet)'),
(8, '46 mm (Ring)'),
(9, '47 mm (Ring)'),
(10, '48 mm (Ring)'),
(11, '49 mm (Ring)'),
(12, '50 mm (Ring)'),
(13, '51 mm (Ring)'),
(14, '52 mm (Ring)'),
(15, '53 mm (Ring)'),
(16, '54 mm (Ring)'),
(17, '55 mm (Ring)'),
(18, '56 mm (Ring)'),
(19, '57 mm (Ring)'),
(20, '58 mm (Ring)'),
(21, '59 mm (Ring)'),
(22, '60 mm (Ring)'),
(23, '61 mm (Ring)'),
(24, '62 mm (Ring)'),
(25, '63 mm (Ring)'),
(26, '64 mm (Ring)'),
(27, '65 mm (Ring)'),
(28, '66 mm (Ring)'),
(29, '67 mm (Ring)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `firstname` varchar(11) NOT NULL,
  `lastname` varchar(11) NOT NULL,
  `emailaddress` varchar(11) NOT NULL,
  `passwords` varchar(15) NOT NULL,
  `confirmpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userID`, `username`, `firstname`, `lastname`, `emailaddress`, `passwords`, `confirmpassword`) VALUES
(0, 'cherie', 'cherry', 'che', 'cherryfaith', '', '1234'),
(1, 'fatima168', 'Fatima', 'Baylas', 'fatimajoan@', '1234', '1234'),
(4, 'kia', 'Kaye', 'Isiderio', 'kayeann@', '1111', '1111'),
(3840, 'cherryfaith', 'cherry', 'faith', 'cherryfaith', 'haha', 'haha'),
(7968, 'lala', 'hahah', '1111', 'hahahhaz@', '1234', '1234'),
(738991, 'venicefay123', 'venice', 'baylas', 'venice@', '1234', '1234'),
(5632914, 'jas', 'Jasmine', 'Neri', 'jasmine@', 'hello', 'hello'),
(1841469483, 'kylajean', 'Kyla', 'Hare', 'kylajean@', '123456', '123456'),
(2147483647, 'rej', 'Rej Jerome', 'Rosaldes', 'rej@', '1111', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`discountID`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`sizeID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userID`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `categoryID` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `discountID` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `orderID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `sizeID` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
