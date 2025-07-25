-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 10, 2024 at 11:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_id` int NOT NULL,
  `Book_Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Publication` varchar(255) NOT NULL,
  `Book_Edition` varchar(255) NOT NULL,
  `Book_Quantity` varchar(255) NOT NULL,
  `BookCV` longtext NOT NULL,
  `Availability` varchar(255) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_id`, `Book_Title`, `Author`, `Publication`, `Book_Edition`, `Book_Quantity`, `BookCV`, `Availability`) VALUES
(8, 'JavaScript', 'Dr. Alex Rauschmayer', 'TCS', '1st edition', '4', '66e02fdb2a847.jpg', 'Available'),
(9, 'JavaScript', 'Dr. Alex Rauschmayer', 'TCS', '1st edition', '4', '66e02fdb2a847.jpg', 'Not_Available'),
(10, 'JavaScript', 'Dr. Alex Rauschmayer', 'TCS', '1st edition', '4', '66e02fdb2a847.jpg', 'Available'),
(11, 'JavaScript', 'Dr. Alex Rauschmayer', 'TCS', '1st edition', '4', '66e02fdb2a847.jpg', 'Available'),
(12, 'JavaScript', 'Dr. Alex Rauschmayer', 'TCS', '1st edition', '4', '66e02fdb2a847.jpg', 'Available'),
(13, 'Java Programming', 'Unknown', 'TCS', 'The WikiBooks Edition', '3', '66e0300b7ca43.jpg', 'Available'),
(14, 'Java Programming', 'Unknown', 'TCS', 'The WikiBooks Edition', '3', '66e0300b7ca43.jpg', 'Available'),
(15, 'Java Programming', 'Unknown', 'TCS', 'The WikiBooks Edition', '3', '66e0300b7ca43.jpg', 'Available'),
(16, 'Java Programming', 'Unknown', 'TCS', 'The WikiBooks Edition', '3', '66e0300b7ca43.jpg', 'Not_Available'),
(17, 'HTML & CSS', 'Shay Howe', 'TCS', '1st edition', '2', '66e030359ceb8.jpg', 'Available'),
(18, 'HTML & CSS', 'Shay Howe', 'TCS', '1st edition', '2', '66e030359ceb8.jpg', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `DataID` bigint NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `BookName` varchar(255) NOT NULL,
  `Issued_Date` date NOT NULL,
  `Return_Date` date NOT NULL,
  `Returned` int DEFAULT '0',
  `OverDate` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`DataID`, `UserName`, `BookName`, `Issued_Date`, `Return_Date`, `Returned`, `OverDate`) VALUES
(1, 'abhay678', 'JavaScript', '2024-10-03', '2024-10-11', 0, 1),
(2, 'bikee34', 'Java Programming', '2024-10-02', '2024-10-10', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_Name` varchar(255) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `SClass` int NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Section` varchar(255) NOT NULL,
  `Roll` varchar(255) NOT NULL,
  `Phone` bigint NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Borrowed_Book` varchar(255) NOT NULL DEFAULT 'No',
  `Profile_Pic` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_Name`, `Full_Name`, `SClass`, `Department`, `Section`, `Roll`, `Phone`, `Email`, `Borrowed_Book`, `Profile_Pic`) VALUES
('abhay678', 'Abhay Yadav', 12, 'Technical', 'A', '30', 48645645, 'abhay908@gmail.com', 'Yes', '66e030a0e2ede.jpg'),
('abhinav678', 'Abhinav Timalsena', 12, 'Technical', 'A', '4', 65454, 'abhinav678@gmail.com', 'No', '66e030cc62737.jpg'),
('bikee34', 'Bikee Yadav', 12, 'Technical', 'A', '9', 21151, 'bikee34@gamil.com', 'Yes', '66e03073109ff.png'),
('dhiresh27', 'Dhiresh Kushwaha', 12, 'Technical', 'A', '5', 456546564, 'dhiresh90@gmail.com', 'No', '66e03086444df.jpg'),
('rajusharma12', 'Raju Sharma', 12, 'Technical', 'A', '6', 654654651, 'raju@gamil.com', 'No', '66e0305bab0fe.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_id`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`DataID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `manage`
--
ALTER TABLE `manage`
  MODIFY `DataID` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
