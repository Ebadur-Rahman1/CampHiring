-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 08:05 PM
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
-- Database: `crmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9570709417, 'ebad2call@gmail.com', 'e13dd027be0f2152ce387ac0ea83d863', '2022-11-29 06:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) DEFAULT NULL,
  `JobId` int(10) DEFAULT NULL,
  `Resume` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Message` mediumtext NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ResponseDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Resume`, `ApplyDate`, `Message`, `Remark`, `Status`, `ResponseDate`) VALUES
(11, 7, 19, 'd41d8cd98f00b204e9800998ecf8427e1670244583.pdf', '2022-12-05 12:49:43', 'congratulations !', '', 'Sorted', '2022-12-05 12:55:47'),
(12, 7, 15, 'd41d8cd98f00b204e9800998ecf8427e1670244704.pdf', '2022-12-05 12:51:44', '', '', NULL, '0000-00-00 00:00:00'),
(13, 7, 16, 'd41d8cd98f00b204e9800998ecf8427e1670244718.pdf', '2022-12-05 12:51:58', '', '', NULL, '0000-00-00 00:00:00'),
(14, 12, 19, 'd41d8cd98f00b204e9800998ecf8427e1670245020.pdf', '2022-12-05 12:57:00', '', '', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `CompanyUrl` varchar(200) DEFAULT NULL,
  `CompanyAddress` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `CompanyEmail` varchar(200) DEFAULT NULL,
  `CompanyLogo` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CompanyRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `ContactPerson`, `CompanyUrl`, `CompanyAddress`, `MobileNumber`, `CompanyEmail`, `CompanyLogo`, `Password`, `CompanyRegdate`) VALUES
(6, 'Vserv Infosystem ', 'Dr. Sudhir Gaur', 'https://www.vservit.com/', 'B-135, Sector-2, Noida, Utter Pardesh', 9810228222, 'vserit@gmail.com', 'eb694a3e331714a92286eda0e106b6f01670235469.png', '202cb962ac59075b964b07152d234b70', '2022-12-05 10:17:49'),
(7, 'Unthinkable ', 'not known', 'https://www.unthinkable.co/', 'Gurugram', 9988999999, 'unthinkable@gmail.com', '096d01074f76b3c8ad66a31d4b53424f1670240854.png', '202cb962ac59075b964b07152d234b70', '2022-12-05 11:47:34'),
(8, 'Microland', 'Not known', 'https://www.microland.com/', 'Noida', 9603960396, 'microland@gmail.com', '72f68285666619e93552099078c942991670241272.png', '202cb962ac59075b964b07152d234b70', '2022-12-05 11:54:32'),
(9, 'Wipro', 'Not known', 'https://www.wipro.com/', 'New Delhi', 9006161616, 'wipro@gmail.com', '244e8826be1fd5f9ca2e24b7c39359ab1670243693.png', '202cb962ac59075b964b07152d234b70', '2022-12-05 12:34:53'),
(10, 'Optum', 'NOt known', 'https://www.optum.com/', 'Gurugram', 9931313131, 'optum@gmail.com', '4002c785b0faf8d9c464d0f47e2805da1670243801.png', '909a7d155ce55b0fcb5af9e75abb9eea', '2022-12-05 12:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `SecondaryBoard` varchar(100) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnicgpa` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnicgpa` varchar(120) DEFAULT NULL,
  `ExtraCurriculars` varchar(120) DEFAULT NULL,
  `OtherAchivement` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `SecondaryBoard`, `SecondaryBoardyop`, `SecondaryBoardper`, `SecondaryBoardcgpa`, `SSecondaryBoard`, `SSecondaryBoardyop`, `SSecondaryBoardper`, `SSecondaryBoardcgpa`, `GraUni`, `GraUniyop`, `GraUnidper`, `GraUnicgpa`, `PGUni`, `PGUniyop`, `PGUniper`, `PGUnicgpa`, `ExtraCurriculars`, `OtherAchivement`) VALUES
(6, 12, 'BSEB', '2016', '78', '7.8', 'BSEB', '2018', '70', '7', 'JMI', '2022', '80', '8.0', '', '', '', '', '', ''),
(7, 7, 'BSEB', '2016', '67.8', '7', 'BSEB', '2018', '62.2', '8', 'Jamia Millia Islamia', '2022', '84.7', '9', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `AppID` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `AppID`, `Message`, `Status`, `ResponseDate`, `IsRead`) VALUES
(3, 11, ' congratulations !', 'Sorted', '2022-12-05 12:55:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                We are pleased to introduce ourselves as Spiderfocus, a professional placement services organization. We are a prominent Recruitment Firm offering out of the box Campus recruitment solutions to Institutes and colleges. With a vision to explore and harness the talents of young leaders, we have come up with a concept of Campus recruitment and promotion of institutes and colleges looking to place their fresh candidates.<div><br></div>', NULL, NULL, '2022-11-29 07:30:56'),
(2, 'contactus', 'Contact Us', '                Jamia Nagar, New Delhi India.', 'ebad2call@gmail.com', 919570709417, '2022-11-29 06:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `StudentID` varchar(120) DEFAULT NULL,
  `Gender` varchar(120) NOT NULL,
  `Address` mediumtext NOT NULL,
  `Age` int(5) NOT NULL,
  `DOB` varchar(120) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `StudentID`, `Gender`, `Address`, `Age`, `DOB`, `Image`, `Password`, `UserRegdate`) VALUES
(7, 'Ebadur Rahman', 'ebad2call@gmail.com', 9570709417, '20DCS8013', 'Male', '', 0, '', '6a345d6a7f8fd937860c4c360c1a0b871670248494.jpg', 'b8df6ab357bfd9cd16d02b2200938d22', '2022-12-04 14:07:17'),
(8, 'Imran Khan', 'imran123@gmail.com', 9785743569, '20DCS8017', 'Male', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2022-12-05 09:57:34'),
(9, 'Azharudding Hasan', 'azharuddin@gmail.com', 9654109458, '20DCS8009', 'Male', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2022-12-05 11:31:51'),
(10, 'Aquib Khan', 'aquib@gmail.com', 9953308456, '20DCS8006', 'Male', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2022-12-05 11:36:30'),
(11, 'Arfa ', 'arfa@gmail.com', 8700588888, '20DCS8007', 'Female', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2022-12-05 11:37:43'),
(12, 'Tauheed Khan', 'tauheed@gmail.com', 9920202020, '19BSC008', 'Male', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2022-12-05 12:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblvacancy`
--

CREATE TABLE `tblvacancy` (
  `ID` int(10) NOT NULL,
  `CompanyID` int(10) DEFAULT NULL,
  `JobTitle` varchar(200) DEFAULT NULL,
  `MonthlySalary` varchar(120) DEFAULT NULL,
  `JobDescriptions` mediumtext DEFAULT NULL,
  `NoofOpenings` varchar(50) DEFAULT NULL,
  `JobLocation` varchar(120) DEFAULT NULL,
  `ApplyDate` varchar(120) DEFAULT NULL,
  `LastDate` varchar(120) DEFAULT NULL,
  `JobpostingDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvacancy`
--

INSERT INTO `tblvacancy` (`ID`, `CompanyID`, `JobTitle`, `MonthlySalary`, `JobDescriptions`, `NoofOpenings`, `JobLocation`, `ApplyDate`, `LastDate`, `JobpostingDate`) VALUES
(15, 6, 'Desk top professional Engineer ', '15000', 'Responsible for troubleshoot desk top problem', '20', 'Delhi NCR', '02-12-2022', '01-02-2023', '2022-12-05 15:52:50'),
(16, 7, 'WILP', '15000', 'Integrated learning program with full time job', '30', 'Gurugram', '04-12-2022', '17-01-2023', '2022-12-05 17:19:50'),
(17, 8, 'Network Engineer', '18000', 'Network Engineer ', '40', 'Gurugram', '01-01-2023', '08-02-2023', '2022-12-05 17:25:55'),
(18, 9, 'WILP', '12300', 'Work Integrated Learning Program', '50', 'Gurugram', '03-12-2022', '07-03-2023', '2022-12-05 18:08:35'),
(19, 10, 'Jr. Software Engineer', '30000', 'Java Developer', '10', 'Gurugram', '03-12-2022', '03-02-2023', '2022-12-05 18:10:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
