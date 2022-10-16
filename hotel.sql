-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2020 at 02:23 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'varun', '545d26918d43a640c4bed801fa7c86a4');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `disid` int(5) NOT NULL,
  `hotid` int(5) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`disid`, `hotid`, `dish`, `price`) VALUES
(1, 1, 'Dosa', 15),
(2, 1, 'Chicken Curry', 90),
(3, 1, 'Mineral Water', 13),
(4, 1, 'Chicken Fry', 150),
(5, 1, 'Tea', 10),
(6, 1, 'Lemon Juice', 25),
(7, 1, 'Frooti', 35),
(8, 1, 'cocacola', 40),
(10, 1, 'Masal Dosa', 30);

-- --------------------------------------------------------

--
-- Table structure for table `dishing`
--

CREATE TABLE `dishing` (
  `disingid` int(5) NOT NULL,
  `hotid` int(5) NOT NULL,
  `dishid` int(10) NOT NULL,
  `ingrid` int(10) NOT NULL,
  `gram` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dishing`
--

INSERT INTO `dishing` (`disingid`, `hotid`, `dishid`, `ingrid`, `gram`) VALUES
(1, 1, 1, 7, 150),
(4, 1, 2, 1, 100),
(5, 1, 2, 2, 100),
(6, 1, 2, 4, 10),
(15, 1, 1, 4, 5),
(16, 1, 1, 6, 100),
(17, 1, 2, 8, 5),
(24, 1, 3, 12, 1000),
(27, 1, 4, 1, 50),
(28, 1, 4, 9, 250),
(29, 1, 4, 13, 50),
(30, 1, 4, 11, 50),
(31, 1, 5, 17, 100),
(33, 1, 5, 3, 10),
(34, 1, 5, 5, 50),
(35, 1, 5, 16, 10),
(36, 1, 6, 18, 50),
(37, 1, 6, 5, 100),
(38, 1, 6, 3, 50),
(39, 1, 7, 19, 1000),
(40, 1, 8, 20, 1000),
(42, 1, 10, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `hotelname` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `hotelname`, `location`) VALUES
(1, 'surya', 'tvm,kerala'),
(2, 'arya', 'chennai,tamilnadu'),
(3, 'ayyappa', 'chennai'),
(4, 'Sky Chef', 'venjaramoodu,musium');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `incid` int(5) NOT NULL,
  `hotid` int(5) NOT NULL,
  `ingredient` varchar(30) NOT NULL,
  `weight` float NOT NULL,
  `incunit` varchar(30) NOT NULL,
  `cost` float NOT NULL,
  `incdate` varchar(10) NOT NULL,
  `perishable` varchar(30) NOT NULL,
  `damageweight` float NOT NULL,
  `damagecost` float NOT NULL,
  `resetdamagedate` varchar(100) NOT NULL,
  `warningpoint` int(5) NOT NULL,
  `limitpoint` int(5) NOT NULL,
  `ycost` float NOT NULL,
  `ytotal` float NOT NULL,
  `ybalance` float NOT NULL,
  `yused` float NOT NULL,
  `ydate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`incid`, `hotid`, `ingredient`, `weight`, `incunit`, `cost`, `incdate`, `perishable`, `damageweight`, `damagecost`, `resetdamagedate`, `warningpoint`, `limitpoint`, `ycost`, `ytotal`, `ybalance`, `yused`, `ydate`) VALUES
(1, 1, 'Chilli powder', 10, '', 50, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(2, 1, 'Mallory powder', 2, '', 100, '28-03-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(3, 1, 'Sugar', 9.85, '', 35, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(4, 1, 'Salt', 0.985, '', 8, '14-04-2020', '', 0, 0, '20200702', 2, 1, 0, 0, 0, 0, ''),
(5, 1, 'fresh Water', 99.55, '', 5, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(6, 1, 'Vigna mungo', 2.7, '', 50, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(7, 1, 'Brown rice', 2.55, '', 30, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(8, 1, 'Curry powder', 1, '', 25, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(9, 1, 'Chicken', 18, '', 180, '02-07-2020', 'perish', 2, 20, '20200702', 0, 0, 0, 0, 0, 0, ''),
(10, 1, 'Tuna fish', 6, '', 50, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(11, 1, 'Coconut Oil', 3, '', 100, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(12, 1, 'mineral water', 29, '', 10, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(13, 1, 'Chicken masala', 10, '', 20, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(14, 1, 'onion', 10, '', 25, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(15, 1, 'milk powder', 10, '', 25, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(16, 1, 'Tea leaf', 9.95, '', 50, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(17, 1, 'milk', 9.5, '', 20, '14-04-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(18, 1, 'lemon', 9.9, '', 4, '18-05-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(19, 1, 'Frooti', 8, '', 35, '18-05-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(20, 1, 'cocacola', 8, '', 35, '18-05-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(21, 1, 'Pepsi', 10, '', 35, '18-05-2020', '', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(22, 4, 'Chilli powder', 20, '', 2000, '29-06-2020', 'nonperish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(23, 4, 'Mallory powder', 10, '', 1000, '29-06-2020', 'nonperish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(24, 4, 'Salt', 3, '', 25, '29-06-2020', 'nonperish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(25, 4, 'Curry powder', 2, '', 50, '29-06-2020', 'nonperish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(26, 4, 'Brown rice', 3, '', 40, '29-06-2020', 'nonperish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(27, 4, 'Vigna mungo', 5, '', 100, '29-06-2020', 'nonperish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(28, 4, 'Chicken', 3, 'Kg', 372, '29-06-2020', 'perish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(29, 4, 'mineral water', 2, 'L', 40, '28-06-2020', 'perish', 0, 0, '20200702', 0, 0, 0, 0, 0, 0, ''),
(30, 1, 'Chives', 2, 'Kg', 140, '02-07-2020', 'perish', 8, 560, '20200702', 2, 1, 0, 0, 0, 0, ''),
(31, 1, 'tea', 1, 'L', 110, '01-07-2020', 'perish', 0, 0, '20200702', 1, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `perishable`
--

CREATE TABLE `perishable` (
  `perishid` int(5) NOT NULL,
  `perishhotid` int(5) NOT NULL,
  `perishable` varchar(100) NOT NULL,
  `perishweight` float NOT NULL,
  `perishunit` varchar(50) NOT NULL,
  `perishcost` float NOT NULL,
  `perishdate` varchar(100) NOT NULL,
  `damageweight` float NOT NULL,
  `damagetlitter` float NOT NULL,
  `damagecost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perishable`
--

INSERT INTO `perishable` (`perishid`, `perishhotid`, `perishable`, `perishweight`, `perishunit`, `perishcost`, `perishdate`, `damageweight`, `damagetlitter`, `damagecost`) VALUES
(1, 4, 'Tomato', 0.5, 'Kg', 10, '28-06-2020', 0, 0, 0),
(2, 4, 'Cucumber', 0.2, 'Kg', 100, '28-06-2020', 0, 0, 0),
(3, 4, 'Fish', 30, 'Kg', 2000, '28-06-2020', 0, 0, 0),
(4, 4, 'Chicken', 2, 'Kg', 230, '28-06-2020', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `placeorder`
--

CREATE TABLE `placeorder` (
  `ids` int(11) NOT NULL,
  `orderid` int(15) NOT NULL,
  `hotid` int(5) NOT NULL,
  `tableno` int(5) NOT NULL,
  `dishid` int(20) NOT NULL,
  `qty` int(10) NOT NULL,
  `qtyprice` float NOT NULL,
  `process` varchar(10) NOT NULL,
  `placetime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `placeorder`
--

INSERT INTO `placeorder` (`ids`, `orderid`, `hotid`, `tableno`, `dishid`, `qty`, `qtyprice`, `process`, `placetime`) VALUES
(10, 202004090, 1, 0, 1, 2, 30, 'done', '2020-04-09 01:41:50'),
(11, 202004091, 1, 0, 1, 2, 30, 'done', '2020-04-09 02:40:00'),
(12, 202004091, 1, 0, 2, 1, 90, 'done', '2020-04-09 02:40:00'),
(17, 202004140, 1, 0, 4, 1, 250, 'done', '2020-04-14 14:25:45'),
(18, 202004140, 1, 0, 3, 2, 26, 'done', '2020-04-14 14:25:45'),
(19, 202004141, 1, 0, 4, 1, 150, 'done', '2020-04-14 14:35:25'),
(20, 202004141, 1, 0, 3, 2, 26, 'done', '2020-04-14 14:35:25'),
(21, 202004142, 1, 0, 4, 2, 0, 'done', '2020-04-14 14:40:14'),
(22, 202004143, 1, 0, 4, 1, 150, 'done', '2020-04-14 15:03:44'),
(23, 202004143, 1, 0, 3, 3, 39, 'done', '2020-04-14 15:03:44'),
(24, 202004143, 1, 0, 5, 2, 20, 'done', '2020-04-14 15:03:44'),
(25, 202004144, 1, 0, 5, 1, 10, 'done', '2020-04-14 15:08:04'),
(26, 202005180, 1, 0, 5, 1, 10, 'done', '2020-05-18 15:18:36'),
(27, 202005180, 1, 0, 3, 3, 39, 'done', '2020-05-18 15:18:36'),
(29, 202005182, 1, 0, 3, 3, 39, 'done', '2020-05-18 15:21:19'),
(30, 202005183, 1, 0, 5, 4, 40, 'done', '2020-05-18 15:21:30'),
(34, 202005185, 1, 0, 1, 3, 45, 'done', '2020-05-18 15:23:04'),
(38, 202005187, 1, 0, 8, 2, 80, 'done', '2020-05-18 15:45:50'),
(39, 202005187, 1, 0, 7, 2, 70, 'done', '2020-05-18 15:45:50'),
(40, 202005187, 1, 0, 6, 2, 50, 'done', '2020-05-18 15:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `staffacc`
--

CREATE TABLE `staffacc` (
  `stid` int(5) NOT NULL,
  `sthotelid` int(5) NOT NULL,
  `stposition` varchar(10) NOT NULL,
  `stname` varchar(30) NOT NULL,
  `stpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffacc`
--

INSERT INTO `staffacc` (`stid`, `sthotelid`, `stposition`, `stname`, `stpassword`) VALUES
(1, 1, 'chef', 'ali', 'anu'),
(2, 1, 'kitchen', 'anu', 'lal'),
(3, 1, 'others', 'jinu', 'varun'),
(4, 4, 'chef', 'ameena', '100'),
(5, 4, 'kitchen', 'sreelakshmi', '101'),
(6, 4, 'others', 'sneha', '102');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`disid`);

--
-- Indexes for table `dishing`
--
ALTER TABLE `dishing`
  ADD PRIMARY KEY (`disingid`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`incid`);

--
-- Indexes for table `perishable`
--
ALTER TABLE `perishable`
  ADD PRIMARY KEY (`perishid`);

--
-- Indexes for table `placeorder`
--
ALTER TABLE `placeorder`
  ADD PRIMARY KEY (`ids`);

--
-- Indexes for table `staffacc`
--
ALTER TABLE `staffacc`
  ADD PRIMARY KEY (`stid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `disid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `dishing`
--
ALTER TABLE `dishing`
  MODIFY `disingid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `incid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `perishable`
--
ALTER TABLE `perishable`
  MODIFY `perishid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `placeorder`
--
ALTER TABLE `placeorder`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `staffacc`
--
ALTER TABLE `staffacc`
  MODIFY `stid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
