-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 03:25 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `network_router_properties`
--

CREATE TABLE `network_router_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dns_records` varchar(80) DEFAULT NULL,
  `internet_host_name` varchar(60) DEFAULT NULL,
  `client_ip_address` varchar(20) DEFAULT NULL,
  `mac_address` varchar(25) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `network_router_properties`
--

INSERT INTO `network_router_properties` (`id`, `dns_records`, `internet_host_name`, `client_ip_address`, `mac_address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1st dns record', 'Hathway', '212.232.1.11', '1st mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:22:24'),
(2, '2nd dns record', 'Inteleacty boyz', '112.232.1.1', '2nd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:22:27'),
(3, '3rd dns record', 'smarty internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:22:27'),
(14, '4th dns record', 'vasai internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:26:54'),
(15, '5th dns record', 'Borivali internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:27:01'),
(16, '6th dns record', 'Andheri internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:27:15'),
(17, '3rd dns record', 'Bandra internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:27:20'),
(18, '7th dns record', 'Jai hoo internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:28:02'),
(19, '8th dns record', 'smarty internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:22:27'),
(20, '9th dns record', 'Thane internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 11:27:47'),
(21, '10th dns record', 'Virar internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 19:39:40'),
(22, '11th dns record', 'Mumbai internet', '190.232.1.78', '3rd mac address', 1, '2020-06-04 16:52:06', '2020-06-04 21:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'amzad', 'khan', 'rl.amzadkhan@gmail.com', '4ba96764eedccdad4c74372ab2c7ae2c:wFD2HwPBHGH1OZR9b3IbSWXDilD3bCxJ', '2020-05-28 12:26:53', '2020-05-28 12:26:53'),
(2, 'khan', 'amzad', 'info.amzad@gmail.com', '07ff7d6d7f22bdcf968693571102b7b4:aBYSiSvIWII6Mm6mhMW2YJqD9jKUN3Zn', '2020-06-04 23:54:22', '2020-06-04 23:54:22'),
(3, 'Abhijit', 'Lakule', 'abhijit@gmail.com', '66349c56a36df704c6fb5363875aab3f:nEwFhLI4yngqxJPvtqbkRkEGL043LcQV', '2020-06-04 23:58:42', '2020-06-04 23:58:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `network_router_properties`
--
ALTER TABLE `network_router_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `network_router_properties`
--
ALTER TABLE `network_router_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
