-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 25, 2020 at 05:09 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hosteldatabase`
--
CREATE DATABASE `hosteldatabase` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hosteldatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `guardian_details`
--

CREATE TABLE IF NOT EXISTS `guardian_details` (
  `StuName` text NOT NULL,
  `RollNo` varchar(8) NOT NULL,
  `GuardianName` text NOT NULL,
  `Relation` text NOT NULL,
  `GuardianPhoneNo` varchar(10) NOT NULL,
  `GuardianAddress` text NOT NULL,
  `GuardianPhoto` text NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian_details`
--

INSERT INTO `guardian_details` (`StuName`, `RollNo`, `GuardianName`, `Relation`, `GuardianPhoneNo`, `GuardianAddress`, `GuardianPhoto`) VALUES
('khwaish', '41', 'lily', 'massi', '3456789', 'mohali', 'na'),
('41', 'khwaish', 'ram ', 'Uncle ', '34567888', 'patiala', 'C:\\Users\\Public\\Pictures\\Sample Pictures\\Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `parents_details`
--

CREATE TABLE IF NOT EXISTS `parents_details` (
  `RollNo` varchar(8) NOT NULL,
  `FatherName` text NOT NULL,
  `MotherName` text NOT NULL,
  `FatherJob` text NOT NULL,
  `MotherJob` text NOT NULL,
  `FatherNo` text NOT NULL,
  `MotherNo` text NOT NULL,
  `ParentEmailId` text NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents_details`
--

INSERT INTO `parents_details` (`RollNo`, `FatherName`, `MotherName`, `FatherJob`, `MotherJob`, `FatherNo`, `MotherNo`, `ParentEmailId`) VALUES
('41', 'sunil kumar', 'anjana', 'govt employee', 'teacher', '9876545678', '-', 'anjana.batish@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pwd`
--

CREATE TABLE IF NOT EXISTS `pwd` (
  `RollNo` varchar(8) NOT NULL,
  `Name` text NOT NULL,
  `pwd` text NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pwd`
--

INSERT INTO `pwd` (`RollNo`, `Name`, `pwd`) VALUES
('41', 'khwaish', 'reader'),
('42', 'manpreet', 'codework'),
('69', 'skt', 'mechanic');

-- --------------------------------------------------------

--
-- Table structure for table `room_list`
--

CREATE TABLE IF NOT EXISTS `room_list` (
  `FloorNo` text NOT NULL,
  `RoomNo` varchar(3) NOT NULL,
  `Rent` text NOT NULL,
  `TotalSeats` text NOT NULL,
  `OccupiedSeats` text NOT NULL,
  `VacantSeats` text NOT NULL,
  PRIMARY KEY (`RoomNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_list`
--

INSERT INTO `room_list` (`FloorNo`, `RoomNo`, `Rent`, `TotalSeats`, `OccupiedSeats`, `VacantSeats`) VALUES
('1', '101', '1200', '3', '0', '3'),
('1', '102', '1200', '3', '1', '2'),
('1', '103', '1200', '3', '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `stu_room`
--

CREATE TABLE IF NOT EXISTS `stu_room` (
  `RollNo` varchar(8) NOT NULL,
  `FloorNo` text NOT NULL,
  `RoomNo` text NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_room`
--

INSERT INTO `stu_room` (`RollNo`, `FloorNo`, `RoomNo`) VALUES
('41', '1', '102'),
('42', '1', '102');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `RollNo` varchar(8) NOT NULL,
  `Name` text NOT NULL,
  `DOB` text NOT NULL,
  `BloodGroup` text NOT NULL,
  `CourseandDuration` text NOT NULL,
  `Gender` text NOT NULL,
  `Category` text NOT NULL,
  `PermanentAddress` text NOT NULL,
  `ContactNo` text NOT NULL,
  `EmailId` text NOT NULL,
  `StudentPhoto` text NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`RollNo`, `Name`, `DOB`, `BloodGroup`, `CourseandDuration`, `Gender`, `Category`, `PermanentAddress`, `ContactNo`, `EmailId`, `StudentPhoto`) VALUES
('41', 'khwaish', '09.04.1999', 'B+', 'cse(2017-21)', 'F', 'General', 'PC2,Patiala,Punjab', '9478917963', 'khwaish.batish@gmail.com', 'C:\\Users\\Public\\Pictures\\Sample Pictures\\Chrysanthemum.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v1`
--
CREATE TABLE IF NOT EXISTS `v1` (
`RollNo` varchar(8)
,`Name` text
,`DOB` text
,`BloodGroup` text
,`CourseandDuration` text
,`Gender` text
,`Category` text
,`PermanentAddress` text
,`ContactNo` text
,`EmailId` text
,`StudentPhoto` text
,`FatherName` text
,`MotherName` text
,`FatherJob` text
,`MotherJob` text
,`FatherNo` text
,`MotherNo` text
,`ParentEmailId` text
,`GuardianName` text
,`GuardianPhoneNo` varchar(10)
,`GuardianAddress` text
,`GuardianPhoto` text
,`Relation` text
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `v2`
--
CREATE TABLE IF NOT EXISTS `v2` (
`RollNo` varchar(8)
,`StudentPhoto` text
,`RoomNo` text
);
-- --------------------------------------------------------

--
-- Structure for view `v1`
--
DROP TABLE IF EXISTS `v1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v1` AS select `s`.`RollNo` AS `RollNo`,`s`.`Name` AS `Name`,`s`.`DOB` AS `DOB`,`s`.`BloodGroup` AS `BloodGroup`,`s`.`CourseandDuration` AS `CourseandDuration`,`s`.`Gender` AS `Gender`,`s`.`Category` AS `Category`,`s`.`PermanentAddress` AS `PermanentAddress`,`s`.`ContactNo` AS `ContactNo`,`s`.`EmailId` AS `EmailId`,`s`.`StudentPhoto` AS `StudentPhoto`,`p`.`FatherName` AS `FatherName`,`p`.`MotherName` AS `MotherName`,`p`.`FatherJob` AS `FatherJob`,`p`.`MotherJob` AS `MotherJob`,`p`.`FatherNo` AS `FatherNo`,`p`.`MotherNo` AS `MotherNo`,`p`.`ParentEmailId` AS `ParentEmailId`,`g`.`GuardianName` AS `GuardianName`,`g`.`GuardianPhoneNo` AS `GuardianPhoneNo`,`g`.`GuardianAddress` AS `GuardianAddress`,`g`.`GuardianPhoto` AS `GuardianPhoto`,`g`.`Relation` AS `Relation` from ((`student_details` `s` join `parents_details` `p` on((`s`.`RollNo` = `p`.`RollNo`))) join `guardian_details` `g` on((`s`.`RollNo` = `g`.`RollNo`)));

-- --------------------------------------------------------

--
-- Structure for view `v2`
--
DROP TABLE IF EXISTS `v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v2` AS select `sr`.`RollNo` AS `RollNo`,`s`.`StudentPhoto` AS `StudentPhoto`,`sr`.`RoomNo` AS `RoomNo` from (`stu_room` `sr` join `student_details` `s` on((`sr`.`RollNo` = `s`.`RollNo`)));
