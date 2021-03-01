-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 06:54 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blockvote`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getall`(IN `one` INT)
    READS SQL DATA
SELECT * FROM admin WHERE id=ONE$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', 'admin1', 'Code', 'Projects', 'avatar.png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `party` varchar(50) NOT NULL,
  `vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `party`, `vote`) VALUES
('2uklKsKoRyFCSEx', 'edapadi', 'ADMK', 1),
('5cti8ZTCOQ72uHH', 'STALIN', 'DMK', 1),
('JkW4Il3ER4u8yE6', 'MODI', 'BJP', 3),
('rL5tqG2oraMnM6r', 'seeman', 'naam thamilar', 0),
('Tb1IadH2VfQmr0T', 'RAGUAL GANDHI', 'CONGRESS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` varchar(20) NOT NULL DEFAULT '0',
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keyvaluee`
--

CREATE TABLE IF NOT EXISTS `keyvaluee` (
  `pro` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyvaluee`
--

INSERT INTO `keyvaluee` (`pro`, `value`) VALUES
('status', 'running');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'Best Staff', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `voter_id` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Finame` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pincode` int(6) NOT NULL,
  `dovote` tinyint(1) DEFAULT NULL,
  `otp` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voter_id`, `password`, `Finame`, `lname`, `Fname`, `email`, `gender`, `phone`, `dob`, `address`, `pincode`, `dovote`, `otp`) VALUES
('g', 'g', 'Gowtham', 'A', 'Arumugam', 'gowthamcruise@gmail.com', 'Male', '8667699813', '2020-03-21', 'East st,  vedal village', 603304, 1, 969812),
('MG2onkNAz7TsxXB', 'nk8WIJI2', 'Gowtham', 'df', 'Arumugam', 'gowthamcruise@gmail.com', 'Male', '0867699813', '', 'East st,  vedal village', 603304, 1, 814818),
('tDnp9aA6UblvAPN', 'BdEtT6YV', 'Gowtham', 'werth', 'wertyhuj', 'gowthamcruise@gmail.com', 'Male', '0866769981', '', 'East st,  vedal village', 603304, 1, 23767),
('tR6HDY3P97e7Q5R', 'BGmum0WN', 'Gowtham', 'dfg', 'Gowtham', 'gowthamcruise@gmail.com', 'Male', '0866769981', '', 'East st,  vedal village', 603304, 1, 693918),
('zgD4VoFkV4OJ5c3', 'nOANiljI', 'Gowtham', 'dfg', 'Arumugam', 'gowthamcruise@gmail.com', 'Male', '0667699813', '2020-04-27', 'East st,  vedal village', 603304, 1, 142491),
('znGK5P3cpJGo5yv', 'Q7AiAZse', 'Gowtham', 'ed', 'slipeer', 'gowthamcruise@gmail.com', 'Male', '0866699813', '', 'East st,  vedal village', 603304, 1, 355819);

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(1, 18, 25, 10),
(2, 19, 25, 10),
(3, 20, 23, 10),
(4, 20, 24, 10),
(5, 20, 25, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD UNIQUE KEY `constr_ID` (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keyvaluee`
--
ALTER TABLE `keyvaluee`
  ADD UNIQUE KEY `pro` (`pro`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voter_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
