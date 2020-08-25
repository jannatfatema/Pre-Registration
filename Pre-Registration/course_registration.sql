-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2020 at 03:43 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_available`
--

CREATE TABLE `course_available` (
  `CCode` varchar(7) NOT NULL,
  `Slot` varchar(2) NOT NULL,
  `FNo` int(11) NOT NULL,
  `CNo` int(11) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Seats_left` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_available`
--

INSERT INTO `course_available` (`CCode`, `Slot`, `FNo`, `CNo`, `Location`, `Seats_left`) VALUES
('CSE1001', 'D', 1, 303, 'Dhanmondi', 4),
('CSE1001', 'D', 2, 303, 'Dhanmondi', 25),
('CSE1002', 'D', 1, 303, 'Dhanmondi', 24),
('CSE2001', 'N', 7, 101, 'Dhanmondi', 44),
('CSE2001', 'N', 8, 103, 'Dhanmondi', 25),
('CSE2002', 'D', 5, 303, 'Dhanmondi', 14),
('ECE2001', 'N', 3, 123, 'Dhanmondi', 35),
('ECE2002', 'D', 9, 555, 'Dhanmondi', 24),
('ECE2002', 'N', 9, 512, 'Dhanmondi', 55),
('EEE2001', 'D', 5, 202, 'Dhanmondi', 17),
('EEE2001', 'D', 6, 201, 'Dhanmondi', 0),
('EEE2004', 'N', 4, 444, 'Dhanmondi', 58),
('EEE2004', 'N', 10, 728, 'Dhanmondi', 28),
('MAT1001', 'D', 1, 303, 'Dhanmondi', 10),
('MAT1002', 'D', 4, 202, 'Dhanmondi', 35),
('MAT1002', 'N', 4, 201, 'Dhanmondi', 65);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `CCode` varchar(7) NOT NULL,
  `CName` varchar(20) NOT NULL,
  `Credits` int(11) NOT NULL,
  `DNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`CCode`, `CName`, `Credits`, `DNo`) VALUES
('CSE1001', 'Python', 4, 1),
('CSE1002', 'C++', 4, 1),
('CSE2001', 'Architecture', 3, 1),
('CSE2002', 'Computation', 4, 1),
('ECE2001', 'Semiconductors', 4, 2),
('ECE2002', 'Signals Processing', 3, 2),
('EEE2001', 'Basic EEE', 2, 3),
('EEE2004', 'Network Theory', 4, 3),
('MAT1001', 'Maths for Engineers', 5, 1),
('MAT1002', 'Statistics', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_prerequisite`
--

CREATE TABLE `course_prerequisite` (
  `CCode` varchar(7) NOT NULL,
  `PreCCode` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_prerequisite`
--

INSERT INTO `course_prerequisite` (`CCode`, `PreCCode`) VALUES
('CSE1002', 'CSE1001'),
('CSE1002', 'MAT1001'),
('EEE2004', 'EEE2001'),
('ECE2002', 'ECE2001'),
('MAT1002', 'MAT1001');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dno` int(11) NOT NULL,
  `Dname` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `DeanFNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dno`, `Dname`, `Location`, `DeanFNo`) VALUES
(1, 'SWE', 'Dhanmondi', 1),
(2, 'CSE', 'Dhanmondi', 2),
(3, 'MCT', 'Dhanmondi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FNo` int(11) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` varchar(10) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `DNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FNo`, `FName`, `LName`, `Gender`, `DOB`, `PhNo`, `Address`, `Email`, `DNo`) VALUES
(1, 'Shohel', 'Arman', 'M', '1977-08-22', '0172562195', 'Dhaka', 'shohel@diu.edu.bd', 1),
(2, 'Imran', 'Mahmud', 'M', '1966-07-01', '0178428260', 'Dhaka', 'immi@diu.edu.bd', 1),
(3, 'Sayda', 'Sumbul', 'F', '1960-01-21', '0192399767', 'Dhaka', 'sayda@diu.edu.bd', 1),
(4, 'Farzana', 'Sadia', 'F', '1958-01-21', '0192831574', 'Dhaka', 'farzana@gmail.com', 2),
(5, 'Badruzzaman', 'Biplob', 'M', '1970-04-21', '0182812374', 'Dhaka', 'badruzzaman@gmail.co', 3);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Rno` varchar(9) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Rno`, `Password`) VALUES
('181352440', 'jannat'),
('181352379', 'bitto');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `CNo` int(11) NOT NULL,
  `Location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`CNo`, `Location`) VALUES
(101, 'Dhanmondi'),
(103, 'Dhanmondi'),
(133, 'Dhanmondi'),
(303, 'Dhanmondi'),
(555, 'Dhanmondi');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `RNo` varchar(9) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Address` varchar(80) NOT NULL,
  `DOB` date NOT NULL,
  `Phno` varchar(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Dno` int(11) NOT NULL,
  `Credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`RNo`, `Fname`, `Lname`, `Address`, `DOB`, `Phno`, `Email`, `Gender`, `Dno`, `Credits`) VALUES
('15BCE0012', 'Fatema', 'Jannat', 'Dhanmondi', '0000-00-00', '0173281671', 'fatema35-2440@diu.ed', 'M', 1, 4),
('15BCE0069', 'Kowshir', 'Bitto', 'Dhanmondi', '1998-10-11', '0170615956', 'kowshir35-23790@diu.', 'M', 1, 4),
('15BCE0123', 'Nadia', 'Nipun', 'Science Lab', '1997-12-01', '0174325675', 'nadia35-2326@diu.edu', 'M', 1, 2),
('15BEC2064', 'Anika', 'Takukdar', 'Mogbazar', '1998-11-12', '0176346712', 'sabina35-2406@diu.ed', 'F', 2, 2),
('15BEE0089', 'Hasnur', 'Anu', 'Khilgaw', '1997-12-05', '0176498376', 'hasnur35-2297@diu.ed', 'M', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `student_completed`
--

CREATE TABLE `student_completed` (
  `RNo` varchar(9) NOT NULL,
  `CCode` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_completed`
--

INSERT INTO `student_completed` (`RNo`, `CCode`) VALUES
('15BCE0012', 'ECE2001');

-- --------------------------------------------------------

--
-- Table structure for table `student_registers`
--

CREATE TABLE `student_registers` (
  `RNo` varchar(9) NOT NULL,
  `Slot` varchar(2) NOT NULL,
  `CCode` varchar(7) NOT NULL,
  `FNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_available`
--
ALTER TABLE `course_available`
  ADD PRIMARY KEY (`CCode`,`Slot`,`FNo`),
  ADD KEY `FNo` (`FNo`),
  ADD KEY `CNo` (`CNo`),
  ADD KEY `Location` (`Location`),
  ADD KEY `Slot` (`Slot`),
  ADD KEY `CCode` (`CCode`,`Slot`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`CCode`),
  ADD KEY `DNo` (`DNo`);

--
-- Indexes for table `course_prerequisite`
--
ALTER TABLE `course_prerequisite`
  ADD KEY `CCode` (`CCode`),
  ADD KEY `PreCCode` (`PreCCode`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dno`),
  ADD UNIQUE KEY `Dname` (`Dname`),
  ADD KEY `Location` (`Location`),
  ADD KEY `DeanFNo` (`DeanFNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
