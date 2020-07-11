-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 04:56 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `query4A1` ()  BEGIN 
	SELECT v.*, c.* FROM video_tb AS v
    INNER JOIN category_tb AS c ON c.id = v.category_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `query4A2` ()  BEGIN 
SELECT * FROM video_tb as v
INNER JOIN category_tb as c ON v.category_id = c.id
ORDER BY c.id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `query4A3` ()  NO SQL
BEGIN 
	SELECT v.*, c.* FROM video_tb AS v
    INNER JOIN category_tb AS c ON c.id = v.category_id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category_tb`
--

CREATE TABLE `category_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_tb`
--

INSERT INTO `category_tb` (`id`, `name`) VALUES
(1, 'Komedi'),
(2, 'Otomotif'),
(3, 'Nature'),
(4, 'Music'),
(5, 'Horor');

-- --------------------------------------------------------

--
-- Table structure for table `video_tb`
--

CREATE TABLE `video_tb` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `attache` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_tb`
--

INSERT INTO `video_tb` (`id`, `title`, `category_id`, `attache`, `thumbnail`) VALUES
(9, 'Indra Jegel Penasaran', 1, 'komedi1.mp4', 'komedi1.jpg'),
(10, 'Ini Bisnis Yang Bikin Crazy Rich', 1, 'komedi2.mp4', 'komedi2.jpg'),
(11, 'Pingin Siaran - Episode 13', 1, 'komedi3.mp4', 'komedi3.jpg'),
(12, 'Seri Baru Ferari', 2, 'otomotif1.mp4', 'otomotif1.jpg'),
(13, 'Lathi - Weird Genius', 4, 'musik1.mp4', 'musik1.jpg'),
(14, 'Wild Amazon Documenter', 3, 'nature1.mp4', 'nature1.jpg'),
(15, 'DPS - Weird Genius', 4, 'musik2.mp4', 'musik2.jpg'),
(16, 'Roasting Katana Bavecabita', 2, 'otomotif2.mp4', 'otomotif2.jpg'),
(17, 'KKN Desa Penari', 5, 'horor1.mp4', 'horor1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_tb`
--
ALTER TABLE `category_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_tb`
--
ALTER TABLE `video_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_tb`
--
ALTER TABLE `category_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video_tb`
--
ALTER TABLE `video_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `video_tb`
--
ALTER TABLE `video_tb`
  ADD CONSTRAINT `video_tb_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
