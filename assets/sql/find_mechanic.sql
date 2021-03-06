-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2017 at 07:57 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `find_my_mechanic`
--
CREATE DATABASE IF NOT EXISTS `find_My_Mechanic` DEFAULT CHARACTER SET = 'utf8' COLLATE utf8_general_ci;
USE `find_My_Mechanic`;
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminName` varchar(30) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `flag` int(1) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminName`, `Email`, `flag`, `Status`, `Password`) VALUES
('Nabil', 'nabil@admin.com', 3, 'Active', 'simone123');

-- --------------------------------------------------------

--
-- Table structure for table `availableservices`
--

CREATE TABLE `availableservices` (
  `ServicesId` varchar(11) NOT NULL,
  `ServiceName` varchar(40) NOT NULL,
  `Cost` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `availableservices`
--

INSERT INTO `availableservices` (`ServicesId`, `ServiceName`, `Cost`) VALUES
('1493309253', 'Oil change', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `carowner`
--

CREATE TABLE `carowner` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Contact` varchar(16) NOT NULL,
  `DOB` date NOT NULL,
  `NID` varchar(20) NOT NULL,
  `DrivingLicence` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `flag` int(1) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carowner`
--

INSERT INTO `carowner` (`Name`, `Email`, `Contact`, `DOB`, `NID`, `DrivingLicence`, `Password`, `Address`, `flag`, `Status`) VALUES
('abc', 'abc@gmail.com', '013133123', '1994-04-08', '123455464', 'dsg3434523', '1234', 'safbg', 1, 'Active'),
('Nabil', 'nabilt59@gmail.com', '01521480480', '1994-11-20', '199646896557', '46788065', '12345', 'nikunja-2', 1, 'Active'),
('Umme Ayesha Zaman', 'zaman@ymail.com', '015100000', '2017-04-11', '761237621397', 'df21312fd2', '1234', 'Rajshahi', 1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `carshop`
--

CREATE TABLE `carshop` (
  `Email` varchar(35) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `flag` int(1) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carshop`
--

INSERT INTO `carshop` (`Email`, `Password`, `flag`, `Status`) VALUES
('abc@gmail.com', '1234', 1, 'Active'),
('hosensarwar007@gmail.com', '1234', 2, 'Active'),
('nabil@admin.com', 'simone123', 3, 'Active'),
('nabilt59@gmail.com', '12345', 1, 'Active'),
('tuhinbhuiyan7@gmail.com', '1234', 2, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MessageId` int(10) NOT NULL,
  `SenderMail` varchar(25) NOT NULL,
  `ReceiverMail` varchar(25) NOT NULL,
  `MessageBody` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`MessageId`, `SenderMail`, `ReceiverMail`, `MessageBody`, `Date`, `Status`) VALUES
(49, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'Hi,Can you help me?', '2017-04-27', 'read'),
(50, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'Send help', '2017-04-27', 'read'),
(51, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '', '2017-04-27', 'read'),
(52, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '', '2017-04-27', 'read'),
(53, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '', '2017-04-27', 'read'),
(54, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '', '2017-04-27', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `NotificationId` int(100) NOT NULL,
  `FromEmail` varchar(30) NOT NULL,
  `ToEmail` varchar(30) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(7) NOT NULL,
  `ServiceId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`NotificationId`, `FromEmail`, `ToEmail`, `Type`, `Date`, `Status`, `ServiceId`) VALUES
(23, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'read', 'nh2017-04-27'),
(24, 'hosensarwar007@gmail.com', 'nabilt59@gmail.com', '2', '2017-04-27', 'unread', 'nh2017-04-27'),
(25, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'read', '1493314486'),
(26, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'read', '1493315057'),
(27, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'unread', '1493315164'),
(28, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'unread', 'nh1493315346'),
(29, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'unread', 'nh1493315355'),
(30, 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', '1', '2017-04-27', 'unread', 'nh1493315549'),
(31, 'hosensarwar007@gmail.com', 'nabilt59@gmail.com', '3', '2017-04-27', 'unread', '1493314486'),
(32, 'hosensarwar007@gmail.com', 'nabilt59@gmail.com', '2', '2017-04-27', 'unread', '1493315057');

-- --------------------------------------------------------

--
-- Table structure for table `ownervehiclerelation`
--

CREATE TABLE `ownervehiclerelation` (
  `Email` varchar(35) NOT NULL,
  `VehicleRegNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ownervehiclerelation`
--

INSERT INTO `ownervehiclerelation` (`Email`, `VehicleRegNo`) VALUES
('nabilt59@gmail.com', 'AB-23211'),
('nabilt59@gmail.com', 'Dhk-9823'),
('abc@gmail.com', '23542fdsg4');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ServiceId` varchar(20) NOT NULL,
  `CarOwnerEmail` varchar(35) NOT NULL,
  `ShopOwnerEmail` varchar(35) NOT NULL,
  `VehicleRegNo` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(100) NOT NULL,
  `SecretKey` int(5) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ServiceId`, `CarOwnerEmail`, `ShopOwnerEmail`, `VehicleRegNo`, `Date`, `Latitude`, `Longitude`, `SecretKey`, `Status`) VALUES
('1493314486', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'Dhk-9823', '2017-04-27', '23.810332', '90.4125181', 12345, 'Rejected'),
('1493315057', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'AB-23211', '2017-04-27', '23.810332', '90.4125181', 12345, 'Accepted'),
('1493315164', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'AB-23211', '2017-04-27', '23.810332', '90.4125181', 0, 'Pending'),
('nh1493315346', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'AB-23211', '2017-04-27', '23.810332', '90.4125181', 0, 'Pending'),
('nh1493315355', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'AB-23211', '2017-04-27', '23.810332', '90.4125181', 0, 'Pending'),
('nh1493315549', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'AB-23211', '2017-04-27', '23.810332', '90.4125181', 0, 'Pending'),
('nh2017-04-27', 'nabilt59@gmail.com', 'hosensarwar007@gmail.com', 'AB-23211', '2017-04-27', '23.810332', '90.4125181', 12345, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `shopowner`
--

CREATE TABLE `shopowner` (
  `ShopName` varchar(35) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Contact` varchar(18) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `Latitude` decimal(65,9) NOT NULL,
  `Longitude` decimal(65,9) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `ShopTradeLicence` varchar(20) NOT NULL,
  `flag` int(1) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopowner`
--

INSERT INTO `shopowner` (`ShopName`, `Email`, `Contact`, `Password`, `Latitude`, `Longitude`, `Address`, `ShopTradeLicence`, `flag`, `Status`) VALUES
('Sarwar Carwash', 'hosensarwar007@gmail.com', '01700000001', '1234', '23.128912000', '93.009122000', 'Gulshan,Dhaka', '889872', 2, 'Active'),
('Tuhin Enterprise', 'tuhinbhuiyan7@gmail.com', '01521498220', '1234', '9.999999999', '9.999999999', 'uttara', 'A123E', 2, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `shopservicerelation`
--

CREATE TABLE `shopservicerelation` (
  `ShopEmail` varchar(30) NOT NULL,
  `ServicesId` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shopservicerelation`
--

INSERT INTO `shopservicerelation` (`ShopEmail`, `ServicesId`) VALUES
('hosensarwar007@gmail.com', '1493309253');

-- --------------------------------------------------------

--
-- Table structure for table `shopstockrelation`
--

CREATE TABLE `shopstockrelation` (
  `ShopEmail` varchar(35) NOT NULL,
  `StockId` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `StockId` varchar(11) NOT NULL,
  `PartsName` varchar(30) NOT NULL,
  `PricePerUnit` varchar(15) NOT NULL,
  `TotalUnit` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VehicleRegNo` varchar(20) NOT NULL,
  `RegistrationDate` date NOT NULL,
  `InsuranceNumber` varchar(20) NOT NULL,
  `VehicleType` varchar(30) NOT NULL,
  `ModelName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VehicleRegNo`, `RegistrationDate`, `InsuranceNumber`, `VehicleType`, `ModelName`) VALUES
('23542fdsg4', '2017-04-04', '733458', 'Truck', 'Ashok leyland'),
('AB-23211', '2017-04-12', 'AC6546V', 'Private Car', 'Toyota'),
('Dhk-9823', '2017-04-03', '24gbv4r5', 'Micro Bus', 'Toyota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `availableservices`
--
ALTER TABLE `availableservices`
  ADD PRIMARY KEY (`ServicesId`);

--
-- Indexes for table `carowner`
--
ALTER TABLE `carowner`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `carshop`
--
ALTER TABLE `carshop`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`MessageId`),
  ADD KEY `SenderMail` (`SenderMail`) USING BTREE,
  ADD KEY `ReceiverMail` (`ReceiverMail`) USING BTREE;

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`NotificationId`),
  ADD KEY `CarOwnerEmail` (`FromEmail`),
  ADD KEY `ShopOwnerEmail` (`ToEmail`);

--
-- Indexes for table `ownervehiclerelation`
--
ALTER TABLE `ownervehiclerelation`
  ADD KEY `Email` (`Email`),
  ADD KEY `VehicleRegNo` (`VehicleRegNo`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ServiceId`),
  ADD KEY `CarOwnerEmail` (`CarOwnerEmail`),
  ADD KEY `ShopOwner` (`ShopOwnerEmail`),
  ADD KEY `VehiceRegNo` (`VehicleRegNo`);

--
-- Indexes for table `shopowner`
--
ALTER TABLE `shopowner`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `shopservicerelation`
--
ALTER TABLE `shopservicerelation`
  ADD KEY `ShopEmail` (`ShopEmail`),
  ADD KEY `ServicesId` (`ServicesId`);

--
-- Indexes for table `shopstockrelation`
--
ALTER TABLE `shopstockrelation`
  ADD KEY `ShopEmail` (`ShopEmail`),
  ADD KEY `StockId` (`StockId`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`StockId`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VehicleRegNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `MessageId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `NotificationId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`FromEmail`) REFERENCES `carshop` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`ToEmail`) REFERENCES `carshop` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ownervehiclerelation`
--
ALTER TABLE `ownervehiclerelation`
  ADD CONSTRAINT `ownervehiclerelation_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `carowner` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ownervehiclerelation_ibfk_2` FOREIGN KEY (`VehicleRegNo`) REFERENCES `vehicle` (`VehicleRegNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`CarOwnerEmail`) REFERENCES `carowner` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`ShopOwnerEmail`) REFERENCES `shopowner` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_ibfk_3` FOREIGN KEY (`VehicleRegNo`) REFERENCES `vehicle` (`VehicleRegNo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopservicerelation`
--
ALTER TABLE `shopservicerelation`
  ADD CONSTRAINT `shopservicerelation_ibfk_1` FOREIGN KEY (`ShopEmail`) REFERENCES `shopowner` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopservicerelation_ibfk_2` FOREIGN KEY (`ServicesId`) REFERENCES `availableservices` (`ServicesId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shopstockrelation`
--
ALTER TABLE `shopstockrelation`
  ADD CONSTRAINT `shopstockrelation_ibfk_1` FOREIGN KEY (`ShopEmail`) REFERENCES `shopowner` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shopstockrelation_ibfk_2` FOREIGN KEY (`StockId`) REFERENCES `stock` (`StockId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
