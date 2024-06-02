-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 08:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `apno` int(11) NOT NULL,
  `apname` varchar(20) DEFAULT NULL,
  `apadd` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `bdate` varchar(12) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `nomini` varchar(20) DEFAULT NULL,
  `apbal` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`apno`, `apname`, `apadd`, `city`, `contact`, `bdate`, `age`, `gender`, `nomini`, `apbal`, `status`) VALUES
(1, 'Rushikesh', 'Deopur', 'Dhule', '9421067364', '2022-30-11', 21, 'Male', 'Jagdish', 30000, 'active'),
(2, 'Yash', 'Pramodnagar', 'Dhule', '8308665553', '2003-28-01', 20, 'Male', 'Bhushan', 50000, 'active'),
(3, 'Anamika', 'Shivaji Nagar', 'Pune', '7894646464', '2022-14-12', 2, 'Female', 'DEFGHIJK', 50000, 'closed'),
(4, 'Tejas', 'Ordnance Factory', 'Bhusawal', '9876543201', '2002-09-10', 21, 'Male', 'Yashwant', 36000, 'active'),
(5, 'Shakil', 'Deopur', 'Dhule', '9011223344', '2004-03-12', 20, 'Male', 'Ajay', 5000, 'closed'),
(6, 'Rushi', 'adji', 'nsdvn', '616854616', '2022-14-12', 24, 'Male', 'sdasdcasc', 10000, 'closed'),
(7, 'Samruddhi', 'Manmad Jin', 'Dhule', '9876521430', '2002-27-10', 21, 'Female', 'Ganesh', 6000, 'closed'),
(8, 'Manisha', 'Surat', 'Surat', '97713215816', '2011-13-01', 20, 'Female', 'ABC', 5500, 'closed'),
(9, 'Krish', 'Circus', 'Singapore', '7894561230', '2023-08-03', 20, 'Male', 'Rohit', 10000, 'active'),
(10, 'Bahubali', 'Mahishmati', 'Jal Parvat', '9865432107', '2020-13-03', 10, 'Male', 'BhallalDev', 1500, 'closed'),
(11, 'Dev', 'Hawrah Bridge', 'Kolkata', '9532146580', '2004-11-06', 20, 'Male', 'Devika', 27000, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `close_acc`
--

CREATE TABLE `close_acc` (
  `cl_no` int(11) DEFAULT NULL,
  `cl_date` varchar(12) DEFAULT NULL,
  `ap_no` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `re_amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `close_acc`
--

INSERT INTO `close_acc` (`cl_no`, `cl_date`, `ap_no`, `reason`, `re_amount`) VALUES
(1, '2022-01-12', 5, 'Account got Hacked', 4750),
(2, '2022-02-12', 7, 'Account got Hacked', 5700),
(3, '2022-07-12', 6, 'Account got Hacked', 9500),
(4, '2022-07-12', 3, 'Bad Service', 47500),
(5, '2023-16-01', 8, 'Bad Service', 5225),
(6, '2023-13-03', 10, 'Other', 1425);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `sl_no` int(11) NOT NULL,
  `sl_date` varchar(12) DEFAULT NULL,
  `ap_no` int(11) DEFAULT NULL,
  `particular` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`sl_no`, `sl_date`, `ap_no`, `particular`, `amount`) VALUES
(1, '2022-01-12', 5, 'Card', 5000),
(2, '2022-02-12', 7, 'Card', 1000),
(3, '2022-07-12', 1, 'Card', 5000),
(4, '2023-16-01', 8, 'Cheque', 1000),
(5, '2023-11-03', 9, 'Cash', 1000),
(6, '2023-13-03', 10, 'Cheque', 1000),
(7, '2024-02-06', 11, 'Cheque', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `tr_no` int(11) DEFAULT NULL,
  `tr_date` varchar(12) DEFAULT NULL,
  `ap_no` int(11) DEFAULT NULL,
  `int_from` varchar(12) DEFAULT NULL,
  `int_till` varchar(12) DEFAULT NULL,
  `int_rate` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `sl_no` int(11) NOT NULL,
  `sl_date` varchar(12) DEFAULT NULL,
  `ap_no` int(11) DEFAULT NULL,
  `particular` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`sl_no`, `sl_date`, `ap_no`, `particular`, `amount`) VALUES
(1, '2022-01-12', 5, 'Card', 11000),
(1, '2022-01-12', 5, 'Card', 5000),
(2, '2022-02-12', 2, 'Cash', 2000),
(3, '2023-16-01', 8, 'Card', 500),
(4, '2023-11-03', 9, 'Cash', 1000),
(5, '2023-20-03', 10, 'Cheque', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`apno`);

--
-- Indexes for table `close_acc`
--
ALTER TABLE `close_acc`
  ADD KEY `ap_no` (`ap_no`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD KEY `ap_no` (`ap_no`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD KEY `ap_no` (`ap_no`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD KEY `ap_no` (`ap_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `close_acc`
--
ALTER TABLE `close_acc`
  ADD CONSTRAINT `close_acc_ibfk_1` FOREIGN KEY (`ap_no`) REFERENCES `applicant` (`apno`);

--
-- Constraints for table `deposit`
--
ALTER TABLE `deposit`
  ADD CONSTRAINT `deposit_ibfk_1` FOREIGN KEY (`ap_no`) REFERENCES `applicant` (`apno`);

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `interest_ibfk_1` FOREIGN KEY (`ap_no`) REFERENCES `applicant` (`apno`);

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `withdraw_ibfk_1` FOREIGN KEY (`ap_no`) REFERENCES `applicant` (`apno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
