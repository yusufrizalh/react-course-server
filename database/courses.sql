-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2022 at 05:43 AM
-- Server version: 10.4.8-MariaDB-log
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demomysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `duration` int(12) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` text DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `duration`, `price`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'React.js', 4, '5600', 'Lorem ipsum dolor amet', '2022-10-04 11:34:05', '2022-10-05 03:26:19'),
(2, 'Vue.js', 4, '7800', 'Lorem ipsum dolor amet', '2022-10-04 11:35:22', '2022-10-05 03:26:19'),
(3, 'Ember.js', 3, '3540', 'Lorem ipsum dolor amet', '2022-10-04 11:35:38', '2022-10-05 03:26:19'),
(4, 'Node.js', 2, '3700', 'Lorem ipsum dolor amet', '2022-10-04 11:35:55', '2022-10-05 03:26:19'),
(6, 'Polymer', 3, '4500', 'Lorem ipsum', '2022-10-05 03:29:33', '2022-10-05 03:29:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
