-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 01:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-tournament`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `ClassID` varchar(4) NOT NULL,
  `Classname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`ClassID`, `Classname`) VALUES
('1', '5KAA'),
('10', '5ZUHAL'),
('2', '5JUPITER'),
('3', '5KEJORA'),
('4', '5MUSYTARI'),
('5', '5NEPTUNE'),
('6', '5ORION'),
('7', '5PLUTO'),
('8', '5RIJEL'),
('9', '5UTARID');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `HouseID` varchar(10) NOT NULL,
  `HouseName` varchar(50) DEFAULT NULL,
  `TotalPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`HouseID`, `HouseName`, `TotalPoints`) VALUES
('1', 'Nilam', 10),
('2', 'Topez ', 10),
('3', 'Delima', 10),
('4', 'zamrud', 10);

-- --------------------------------------------------------

--
-- Table structure for table `houseteachers`
--

CREATE TABLE `houseteachers` (
  `TeacherID` varchar(4) NOT NULL,
  `TeacherName` varchar(100) DEFAULT NULL,
  `Password` varchar(12) DEFAULT NULL,
  `HouseID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `houseteachers`
--

INSERT INTO `houseteachers` (`TeacherID`, `TeacherName`, `Password`, `HouseID`) VALUES
('G001', 'ALI', '1000', '1'),
('G002', 'amil', '4000', '2'),
('G003', 'haziq', '5000', '3'),
('G004', 'ECAH', '6000', '4'),
('G005', 'WAK SIDIK', '700', '3');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `JudgeID` varchar(4) NOT NULL,
  `JudgeName` varchar(100) DEFAULT NULL,
  `Password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`JudgeID`, `JudgeName`, `Password`) VALUES
('J01', 'abu', '2000'),
('J02', 'ALI', '1234'),
('J03', 'BAKAR', '1234'),
('J04', 'ALI', '1234'),
('J05', 'ABU', '1234'),
('J06', 'ABI', '1234'),
('J07', 'ZARUL', '1234'),
('J08', 'AMIR', '1234'),
('J09', 'AKMAL', '1234'),
('J10', 'MIFZAL', '1234'),
('J11', 'FAHMI', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `MatchID` int(11) NOT NULL,
  `MatchName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`MatchID`, `MatchName`) VALUES
(1, '100m'),
(2, '200m'),
(3, '400m'),
(4, '800m'),
(5, 'Lompat Tinggi'),
(6, 'Lompat Jauh'),
(7, 'Jompat kijang'),
(8, 'Lempar Cakera'),
(9, 'Lontar Peluru'),
(10, 'Rejam Lembing'),
(11, 'Tarik Tali');

-- --------------------------------------------------------

--
-- Table structure for table `presence`
--

CREATE TABLE `presence` (
  `PresenceID` varchar(36) NOT NULL,
  `SportNumber` varchar(6) DEFAULT NULL,
  `MatchID` int(11) DEFAULT NULL,
  `JudgeID` varchar(4) NOT NULL,
  `Score` int(11) NOT NULL,
  `Distance` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `Category` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `presence`
--

INSERT INTO `presence` (`PresenceID`, `SportNumber`, `MatchID`, `JudgeID`, `Score`, `Distance`, `Time`, `Category`) VALUES
('662b801921638', 'N002', 1, 'J07', 0, '', '', 'L15'),
('662b80207d410', 'N003', 1, 'J08', 0, '', '', 'L18'),
('662b80300a4a8', 'N008', 1, 'J08', 0, '', '', 'P18'),
('662b8037e8978', 'N009', 1, 'J01', 0, '', '', 'P15'),
('662b806b44391', 'N004', 1, 'J11', 0, '', '', 'L18'),
('662b83119add9', 'N001', 1, 'J04', 0, '', '', 'L15');

-- --------------------------------------------------------

--
-- Table structure for table `secretaries`
--

CREATE TABLE `secretaries` (
  `SecretaryID` varchar(4) NOT NULL,
  `SecretaryName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `secretaries`
--

INSERT INTO `secretaries` (`SecretaryID`, `SecretaryName`, `Password`) VALUES
('SU1', 'JAMAL', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `SportNumber` varchar(6) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `ClassID` varchar(10) DEFAULT NULL,
  `HouseID` varchar(10) DEFAULT NULL,
  `Members` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`SportNumber`, `Name`, `ClassID`, `HouseID`, `Members`) VALUES
('D001', 'NAFIZ', '7', '3', 'MEMBER'),
('D002', 'ajim', '5', '3', 'athletic'),
('D003', 'cik', '3', '3', 'athletic'),
('D005', 'faiz', '2', '3', 'Members'),
('N001', 'SYED NABIL AFIFI', '3', '1', 'athletic'),
('N002', 'SYED NAZMI AFIFI', '5', '1', 'athletic'),
('N003', 'NAZIM FARHAN', '2', '1', 'athletic'),
('N004', 'NAFIZ FARHAN', '2', '1', 'athletic'),
('N005', 'MAEYY', '6', '1', 'Members'),
('N006', 'ALIA', '6', '1', 'Members'),
('N007', 'NANA', '5', '1', 'Members'),
('N008', 'AIMI NAJIHA', '4', '1', 'athletic'),
('N009', 'NAFISA', '3', '1', 'athletic'),
('T002', 'ZAF', '7', '2', 'athletic'),
('T003', 'aimi', '4', '2', 'Members'),
('T005', 'mali', '3', '2', 'athletic'),
('Z001', 'ain', '5', '4', 'MEMBER'),
('Z002', 'naf', '3', '4', 'MEMBER'),
('Z003', 'JARJIT', '5', '4', 'athletic'),
('Z004', 'MEI SIN', '3', '4', 'athletic'),
('Z008', 'nana', '4', '4', 'Members');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`HouseID`);

--
-- Indexes for table `houseteachers`
--
ALTER TABLE `houseteachers`
  ADD PRIMARY KEY (`TeacherID`),
  ADD KEY `HouseID` (`HouseID`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`JudgeID`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`MatchID`);

--
-- Indexes for table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`PresenceID`),
  ADD KEY `SportNumber` (`SportNumber`,`MatchID`),
  ADD KEY `JudgeID` (`JudgeID`),
  ADD KEY `MatchID` (`MatchID`);

--
-- Indexes for table `secretaries`
--
ALTER TABLE `secretaries`
  ADD PRIMARY KEY (`SecretaryID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`SportNumber`),
  ADD KEY `ClassID` (`ClassID`,`HouseID`),
  ADD KEY `HouseID` (`HouseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `MatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `houseteachers`
--
ALTER TABLE `houseteachers`
  ADD CONSTRAINT `houseteachers_ibfk_1` FOREIGN KEY (`HouseID`) REFERENCES `houses` (`HouseID`);

--
-- Constraints for table `presence`
--
ALTER TABLE `presence`
  ADD CONSTRAINT `presence_ibfk_1` FOREIGN KEY (`SportNumber`) REFERENCES `students` (`SportNumber`),
  ADD CONSTRAINT `presence_ibfk_2` FOREIGN KEY (`MatchID`) REFERENCES `matches` (`MatchID`),
  ADD CONSTRAINT `presence_ibfk_3` FOREIGN KEY (`JudgeID`) REFERENCES `judges` (`JudgeID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `class` (`ClassID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`HouseID`) REFERENCES `houses` (`HouseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
