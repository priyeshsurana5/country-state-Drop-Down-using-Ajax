-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 05:56 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerse`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_city`
--

CREATE TABLE `add_city` (
  `city_id` int(11) NOT NULL,
  `State_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_city`
--

INSERT INTO `add_city` (`city_id`, `State_id`, `city_name`, `status`) VALUES
(7, 6, 'Jaipur', 1),
(8, 6, 'jodhpur', 1),
(9, 6, 'pali', 1),
(10, 6, 'jodhpur', 1);

-- --------------------------------------------------------

--
-- Table structure for table `add_country`
--

CREATE TABLE `add_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(200) NOT NULL,
  `country_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_country`
--

INSERT INTO `add_country` (`country_id`, `country_name`, `country_status`) VALUES
(2, 'India', 1),
(3, 'srilanka', 0);

-- --------------------------------------------------------

--
-- Table structure for table `add_state`
--

CREATE TABLE `add_state` (
  `state_id` int(10) NOT NULL,
  `state_name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_state`
--

INSERT INTO `add_state` (`state_id`, `state_name`, `country_id`, `status`) VALUES
(6, 'Rajasthan', 2, 1),
(7, 'Delhi', 2, 1),
(8, 'Uttar Pradesh', 2, 1),
(9, 'West-Bengal', 2, 1),
(10, 'Madhya Pradesh', 2, 1),
(11, 'Haryana', 2, 1),
(12, 'Tamil-nadu', 2, 1),
(13, 'Maharastra', 2, 1),
(14, 'Goa', 2, 1),
(15, 'Bihar', 2, 1),
(16, 'Gujarat ', 4, 1),
(17, 'Arunachal Pradesh', 2, 1),
(18, 'Assam', 2, 1),
(19, 'Chhattisgarh', 2, 1),
(20, 'Himachal Pradesh', 2, 1),
(21, 'Jammu and Kashmir', 2, 1),
(22, 'Jharkhand', 2, 1),
(23, 'Karnataka', 2, 1),
(24, 'Kerala', 2, 1),
(25, 'Manipur', 2, 1),
(26, 'Meghalaya', 2, 1),
(27, 'Mizoram', 2, 1),
(28, 'Nagaland', 2, 1),
(29, 'Odisha', 2, 1),
(30, 'Punjab', 2, 1),
(31, 'Sikkim', 2, 1),
(32, 'Telangana', 2, 1),
(33, 'Tripura', 2, 1),
(34, 'Uttarakhand', 2, 1),
(35, 'Andaman and Nicobar Islands - Port Blair', 2, 1),
(36, 'Chandigarh ', 2, 1),
(37, 'Dadra and Nagar Haveli - Silvassa', 2, 1),
(38, 'Daman and Diu - Daman', 2, 1),
(39, 'Lakshadweep', 2, 1),
(40, 'Puducherry', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_city`
--
ALTER TABLE `add_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `add_country`
--
ALTER TABLE `add_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `add_state`
--
ALTER TABLE `add_state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_city`
--
ALTER TABLE `add_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `add_country`
--
ALTER TABLE `add_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `add_state`
--
ALTER TABLE `add_state`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
