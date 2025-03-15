-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: December 2, 2024
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone
= "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `User Name` varchar
(100) NOT NULL,
  `Password` varchar
(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON
UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`User
Name`,
`Password
`, `updationDate`) VALUES
('admin', '5c428d8875d2948607f3e3fe134d71b4', '2024-05-01 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `BookingNumber` bigint
(12) DEFAULT NULL,
  `userEmail` varchar
(100) DEFAULT NULL,
  `VehicleId` int
(11) DEFAULT NULL,
  `FromDate` varchar
(20) DEFAULT NULL,
  `ToDate` varchar
(20) DEFAULT NULL,
  `message` varchar
(255) DEFAULT NULL,
  `Status` int
(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON
UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`
BookingNumber`,
`userEmail
`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(443108139, 'amikt12@gmail.com', 2, '2024-06-08', '2024-06-10', 'I want booking', 1, '2024-06-05 05:32:39', '2024-06-05 05:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `BrandName` varchar
(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON
UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`
BrandName`,
`CreationDate
`, `UpdationDate`) VALUES
('Maruti', NOW
(), NOW
()),
('BMW', NOW
(), NOW
()),
('Audi', NOW
(), NOW
()),
('Nissan', NOW
(), NOW
()),
('Toyota', NOW
(), NOW
()),
('Volkswagon', NOW
(), NOW
());

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar
(255) DEFAULT NULL,
  `ContactNo` char
(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`
Address`,
`EmailId
`, `ContactNo`) VALUES
('J&K Block, Laxmi Nagar', 'info@gmail.com', '8974561236');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery`
(
  `id` int
(11) NOT NULL AUTO_INCREMENT,
  `name` varchar
(100) DEFAULT NULL