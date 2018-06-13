-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 09:14 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nidhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `firsttable`
--

CREATE TABLE `firsttable` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firsttable`
--

INSERT INTO `firsttable` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'sanjay', 'jain', 'ssssss', '2017-02-14 07:37:36'),
(2, '', '', 'dddddd', '2017-02-14 07:41:32'),
(3, '', '', 'dddddd', '2017-02-14 07:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `nidhi`
--

CREATE TABLE `nidhi` (
  `name` varchar(30) NOT NULL,
  `passward` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registartion`
--

CREATE TABLE `registartion` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registartion`
--

INSERT INTO `registartion` (`username`, `password`, `emailid`, `gender`, `hobbies`, `country`, `image`) VALUES
('', '', '', '', '', '', ''),
('dd', 'ddd', 'aaaaa', 'male', 'reading', 'India,America,Japan', ''),
('dinesh', '123', 'dinesh@gmail.com', '', 'singing,reading', 'India,America,Japan', '170505104549Jellyfish.jpg'),
('dipesh', '123', '123', 'male', 'singing,reading,cric', 'India,America', 'pc2.jpg'),
('dipesh1', '123', '123', 'male', 'singing,reading,cric', 'India,America', '170220090451pc2.jpg'),
('main', 'aaa', '', 'male', '', 'India', ''),
('mainfile', 'qqq', 'fff', 'male', 'reading', 'India,America', ''),
('mainishgoel', '123', 'www', 'male', 'reading', 'India,America', ''),
('name', 'ddd', 'fffff', 'male', 'reading', 'India,America', ''),
('sanjay', '123', 'ssssss', 'male', 'reading,singing', 'India,America', ''),
('sanjayaaa', '123', '123', 'male', 'singing,reading,cric', 'India,America', 'pc2.jpg'),
('sanjayj', '123', 'ssss', 'male', 'reading', 'India,America', ''),
('sanjayjain', 'aaa', 'ddddd', 'male', '', 'India', ''),
('sarita', '123', '123', '', 'singing,reading,cric', 'India,America,Japan,', '1702270829363d_564.jpg'),
('sarita1', '123', '123', 'female', 'singing,reading,cricket', 'India,America,Japan,China,Russia', '1702270832453d_568.jpg'),
('ss', 'aaa', 'aaa', 'male', 'reading', 'India', ''),
('ssb', '123', 'dddd', 'male', 'reading', 'India,America', ''),
('sssddd', 'aaaaa', 'aaaaa', 'male', 'reading', 'India,America', ''),
('ssssss', '', '', 'male', '', '', ''),
('ssssssaaa', '', '', 'female', '', '', ''),
('sssssssss', 'aaa', 'sss', 'male', '', 'India', ''),
('vinay', '123', '123', 'male', 'singing,reading', 'India,America', '170222083734000_295784_207875615950918_2041452267_');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `emailid`, `date`) VALUES
(1, 'dinesh', 'www', '2017-02-14 07:42:44'),
(2, 'deepak', 'wwwqqq', '2017-02-14 07:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(30) NOT NULL,
  `passward` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `passward`) VALUES
('deepak', '123'),
('dinesh', '123'),
('mohit', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `firsttable`
--
ALTER TABLE `firsttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nidhi`
--
ALTER TABLE `nidhi`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `registartion`
--
ALTER TABLE `registartion`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailid` (`emailid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `firsttable`
--
ALTER TABLE `firsttable`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
