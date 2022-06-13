-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2022 at 06:58 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `AddAddress`
--

CREATE TABLE `AddAddress` (
  `ID` int(22) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `PhoneNo` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Landmark` varchar(70) NOT NULL,
  `City` varchar(50) NOT NULL,
  `State` varchar(40) NOT NULL,
  `ZipCode` int(10) NOT NULL,
  `PaymentType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `BooksDetails`
--

CREATE TABLE `BooksDetails` (
  `ID` int(15) NOT NULL,
  `BookName` varchar(60) NOT NULL,
  `Author` varchar(25) NOT NULL,
  `Price` int(19) NOT NULL,
  `BookCategory` varchar(25) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `ImageFileName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BooksDetails`
--

INSERT INTO `BooksDetails` (`ID`, `BookName`, `Author`, `Price`, `BookCategory`, `Status`, `ImageFileName`) VALUES
(1, 'Java Programming', 'Joyce farrell', 290, 'New Book', 'Active', 'JavaProgramming.jpeg'),
(2, 'Cloud Computing', 'Douglas Corner', 300, 'New Book', 'Active', 'CloudComputing.jpeg'),
(3, 'Programming in c', 'Ritchie', 300, 'New Book', 'Active', 'ProgramminInC.jpg'),
(4, 'Programming in c++', 'Bjarne Stroustrup', 350, 'New Book', 'Active', 'ProgrammingInC++.jpg'),
(5, 'OOPS in Java', 'Alan Kay', 350, 'New Book', 'Active', 'OOPSInJava.jpeg'),
(6, 'HTML', 'Jon Duckett', 400, 'New Book', 'Active', 'HTML.jpeg'),
(7, 'JavaScript', 'David Herman', 380, 'New Book', 'Active', 'JavaScript.jpeg'),
(8, 'Web Component', 'Sandeep Kumar Patel', 290, 'New Book', 'Active', 'WebComponent.jpeg'),
(9, 'UI & UX', 'Don Norman', 300, 'New Book', 'Active', 'UIAndUX.jpeg'),
(10, 'Integrating Java ', 'Jon Duckett', 480, 'New Book', 'Active', 'IntegratingJavaApplication.jpeg'),
(11, 'CSS', 'Jon Duckett', 500, 'New Book', 'Active', 'CSS.jpeg'),
(12, 'Storing And Manipulating', 'Don Norman', 490, 'New Book', 'Active', 'DataManipulating.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `ID` int(15) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `Message` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`ID`, `Name`, `Email`, `PhoneNo`, `Message`) VALUES
(2, 'Prince Bhatia', 'Princebhatia10021@gmail.com', '9468359122', 'hello'),
(6, 'awfref', 'eaf', 'fearfw', 'vqerf');

-- --------------------------------------------------------

--
-- Table structure for table `PlacedOrder`
--

CREATE TABLE `PlacedOrder` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(20) NOT NULL,
  `PhoneNo` int(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Landmark` varchar(30) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(30) NOT NULL,
  `ZipCode` int(10) NOT NULL,
  `PaymentType` varchar(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PlacedOrder`
--

INSERT INTO `PlacedOrder` (`ID`, `FullName`, `PhoneNo`, `Email`, `Address`, `Landmark`, `City`, `State`, `ZipCode`, `PaymentType`) VALUES
(1, 'Prince Bhatia', 23445, 'Princebhatia10021@gmail.com', 'Sunder Nagar ,Near Hanuman Mandir', 'qcewfc', 'Fatehabad', 'Haryana', 125050, 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `Registration`
--

CREATE TABLE `Registration` (
  `ID` int(13) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Registration`
--

INSERT INTO `Registration` (`ID`, `Name`, `Email`, `PhoneNo`, `Password`, `Type`) VALUES
(1, 'Prince Bhatia', 'admin@gmail.com', '946835912', 'admin', 'Admin'),
(2, 'Prince', 'user@gmail.com', '946835912', 'user', 'User'),
(3, 'dveav', 'vawerf@gmail.com', '76234', 'adwcfw', 'User'),
(4, 'prince', 'prmfjc@gmail.com', '87', ' ndjcs ', 'User'),
(5, 'Prince', 'adjhb@gmail.com', '98765', 'nxjskx', 'User'),
(6, 'Prince Bhatia', 'User1@gmail.com', '9468359122', 'user', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `SavedAddress`
--

CREATE TABLE `SavedAddress` (
  `ID` int(10) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `PhoneNo` varchar(10) NOT NULL,
  `City` varchar(15) NOT NULL,
  `State` varchar(20) NOT NULL,
  `Pincode` varchar(10) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Landmark` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SavedAddress`
--

INSERT INTO `SavedAddress` (`ID`, `Name`, `Email`, `PhoneNo`, `City`, `State`, `Pincode`, `Address`, `Landmark`) VALUES
(1, 'Prince', 'Princebhatia10021@gmail.com', '9468359122', 'Fatehabad', 'Haryana', '125050', 'cewc', '125050'),
(2, 'Prince', 'Princebhatia10021@gmail.com', '9468359122', 'Fatehabad', 'Haryana', '125050', 'cewc', '125050'),
(3, '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AddAddress`
--
ALTER TABLE `AddAddress`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BooksDetails`
--
ALTER TABLE `BooksDetails`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `PlacedOrder`
--
ALTER TABLE `PlacedOrder`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Registration`
--
ALTER TABLE `Registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SavedAddress`
--
ALTER TABLE `SavedAddress`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AddAddress`
--
ALTER TABLE `AddAddress`
  MODIFY `ID` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BooksDetails`
--
ALTER TABLE `BooksDetails`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `PlacedOrder`
--
ALTER TABLE `PlacedOrder`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Registration`
--
ALTER TABLE `Registration`
  MODIFY `ID` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `SavedAddress`
--
ALTER TABLE `SavedAddress`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
