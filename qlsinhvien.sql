-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 12:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlsinhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `major` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `image`, `age`, `major`) VALUES
(1, 'Drake', 'https://imageio.forbes.com/specials-images/imageserve/5d010d70142c50000a32b592/richest-rappers-Drake/0x0.jpg?format=jpg&crop=4688,2433,x1,y693,safe&width=960', 35, 'Rapper'),
(2, 'Kanye West', 'https://imageio.forbes.com/specials-images/imageserve/5d010dbe4c687b0008596731/richest-rappers-Kanye/0x0.jpg?format=jpg&crop=4694,2443,x4,y679,safe&width=960', 45, 'Rapper'),
(3, 'Diddy', 'https://imageio.forbes.com/specials-images/imageserve/5d010ee84c687b0008596780/richest-rappers-Diddy/0x0.jpg?format=jpg&crop=4696,2324,x1,y804,safe&width=960', 52, 'Rapper'),
(4, 'Dr. Dre', 'https://imageio.forbes.com/specials-images/imageserve/5d010e3234a5c40008482a48/richest-rappers-dr-dre/0x0.jpg?format=jpg&crop=4695,2528,x0,y603,safe&width=960', 57, 'Rapper'),
(5, 'Jay-Z', 'https://imageio.forbes.com/specials-images/imageserve/5d010e694c687b0008596774/richest-rappers-jay-z/0x0.jpg?format=jpg&crop=4688,2391,x10,y739,safe&width=960', 52, 'Rapper');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
