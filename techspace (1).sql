-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2025 at 09:42 AM
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
-- Database: `techspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `AccountID` int(50) NOT NULL,
  `AccountName` varchar(255) NOT NULL,
  `UsedDepartment` varchar(255) NOT NULL,
  `AccountPassword` varchar(255) NOT NULL,
  `FinancialOfficerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`AccountID`, `AccountName`, `UsedDepartment`, `AccountPassword`, `FinancialOfficerId`) VALUES
(3, 'Financial', 'Business Deveopment Department', '12345', 12),
(4, 'HR Account', 'HR & Compliance Department', 's12345t', 12);

-- --------------------------------------------------------

--
-- Table structure for table `advancepayment`
--

CREATE TABLE `advancepayment` (
  `ADPaymentID` int(50) NOT NULL,
  `ADPAmount` int(50) NOT NULL,
  `APDate` date NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `PayrollId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advancepayment`
--

INSERT INTO `advancepayment` (`ADPaymentID`, `ADPAmount`, `APDate`, `WorkerId`, `PayrollId`) VALUES
(1, 2000, '2025-03-06', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BID` int(50) NOT NULL,
  `BDetails` varchar(255) NOT NULL,
  `BAmount` int(255) NOT NULL,
  `FinancialManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`BID`, `BDetails`, `BAmount`, `FinancialManagerId`) VALUES
(2, 'Budget for the year', 50000, 12),
(3, 'additional', 3000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `buisnessdevelopmentmanager`
--

CREATE TABLE `buisnessdevelopmentmanager` (
  `BuisnessDevelopmentManagerID` int(50) NOT NULL,
  `TotalSalesManaged` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buisnessdevelopmentmanager`
--

INSERT INTO `buisnessdevelopmentmanager` (`BuisnessDevelopmentManagerID`, `TotalSalesManaged`, `ProfileID`) VALUES
(19, 8, 19);

-- --------------------------------------------------------

--
-- Table structure for table `buisnesstransaction`
--

CREATE TABLE `buisnesstransaction` (
  `BTransactionID` int(50) NOT NULL,
  `BDate` date NOT NULL,
  `BTime` varchar(255) NOT NULL,
  `TransactionType` varchar(255) NOT NULL,
  `TransactionDetails` varchar(255) NOT NULL,
  `CommercialExecutiveId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buisnesstransaction`
--

INSERT INTO `buisnesstransaction` (`BTransactionID`, `BDate`, `BTime`, `TransactionType`, `TransactionDetails`, `CommercialExecutiveId`) VALUES
(2, '2025-02-19', '21:01', 'Financial', '12e12e', 15);

-- --------------------------------------------------------

--
-- Table structure for table `cadengineer`
--

CREATE TABLE `cadengineer` (
  `CADID` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cadengineer`
--

INSERT INTO `cadengineer` (`CADID`, `ProfileID`) VALUES
(21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `login_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`, `login_id`) VALUES
(31, 'cothes', '399', 'bs.png', 2, 1),
(32, 'clothes', '23', 'food-6.png', 1, 1),
(33, 'hamburger', '333', 'food-1.png', 2, 5),
(35, 'burger', '232', 'food-6.png', 2, 5),
(36, 'cqwc', '222', 'food-5.png', 1, 5),
(37, 'cothes', '399', 'bs.png', 4, 5),
(38, 'clothes', '23', 'food-6.png', 1, 5),
(39, 'clothes', '23', 'food-6.png', 2, 2),
(40, 'lteer', '288', 'food-1.png', 1, 2),
(41, 'hamburger', '333', 'food-1.png', 1, 2),
(42, 'cothes', '399', 'bs.png', 1, 2),
(43, 'juice', '50', 'food-4.png', 1, 2),
(44, 'clothes', '23', 'food-6.png', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `chairman`
--

CREATE TABLE `chairman` (
  `ChairmanID` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL,
  `managedstaffcount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chairman`
--

INSERT INTO `chairman` (`ChairmanID`, `ProfileID`, `managedstaffcount`) VALUES
(7, 7, '50');

-- --------------------------------------------------------

--
-- Table structure for table `clientcontract`
--

CREATE TABLE `clientcontract` (
  `CContractID` int(50) NOT NULL,
  `CContractDetails` varchar(255) NOT NULL,
  `CContractStartDate` date NOT NULL,
  `CContractEndDate` date NOT NULL,
  `ClientId` int(50) NOT NULL,
  `CommercialExecutiveId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientcontract`
--

INSERT INTO `clientcontract` (`CContractID`, `CContractDetails`, `CContractStartDate`, `CContractEndDate`, `ClientId`, `CommercialExecutiveId`) VALUES
(2, 'qdwqd', '2025-02-21', '2025-02-19', 2, 15),
(3, 'qwdqwd', '2025-02-19', '2025-02-11', 4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `clientlogin`
--

CREATE TABLE `clientlogin` (
  `ClientProfileID` int(50) NOT NULL,
  `ClientLoginUsername` varchar(40) NOT NULL,
  `ClientLoginPassword` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientlogin`
--

INSERT INTO `clientlogin` (`ClientProfileID`, `ClientLoginUsername`, `ClientLoginPassword`) VALUES
(1, 'sithil@gmail.com', '123'),
(2, 'thiz@gmail.com', '222'),
(3, 'd@gmail.com', '333'),
(4, 'kaven@gmail.com', '1234'),
(5, 'nayomi@gmail.com', '333'),
(6, 'f@gmail.com', '123'),
(7, 'kaven@gmail.com', '222'),
(8, 'f@gmail.com', '222'),
(9, 'y@gmail.com', '333'),
(10, 'nayomi@gmail.com', '111'),
(11, 'thiz@gmail.com', '22'),
(12, 'd@gmail.com', '123'),
(13, 'p@gmail.com', '222');

-- --------------------------------------------------------

--
-- Table structure for table `clientnewsletter`
--

CREATE TABLE `clientnewsletter` (
  `ClientNewsLetterID` int(50) NOT NULL,
  `ClientNewsLetterEmail` varchar(50) NOT NULL,
  `ClientID` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientnewsletter`
--

INSERT INTO `clientnewsletter` (`ClientNewsLetterID`, `ClientNewsLetterEmail`, `ClientID`) VALUES
(2, 'sithil@gmilcom', 3),
(3, 'sithil@gmilcom', 3),
(4, 'ascasc@gmail.com', 1),
(7, 't@gmail.com', 2),
(8, 's@gmail.com', 1),
(9, 'e@gmail.com', 3),
(19, 'qwfqwf@g.com', 1),
(27, '', 1),
(28, '', 1),
(29, '', 1),
(30, '', 1),
(31, '', 1),
(32, '', 1),
(33, '', 1),
(34, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clientprofile`
--

CREATE TABLE `clientprofile` (
  `ClientProfileID` int(50) NOT NULL,
  `CFirstName` varchar(255) NOT NULL,
  `CLastName` varchar(255) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `CTelephoneNo` int(10) NOT NULL,
  `CAddress` varchar(255) NOT NULL,
  `CNIC` varchar(40) NOT NULL,
  `CAge` varchar(45) NOT NULL,
  `CGender` varchar(45) NOT NULL,
  `login_id` int(50) NOT NULL,
  `user_avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientprofile`
--

INSERT INTO `clientprofile` (`ClientProfileID`, `CFirstName`, `CLastName`, `Email`, `CTelephoneNo`, `CAddress`, `CNIC`, `CAge`, `CGender`, `login_id`, `user_avatar`) VALUES
(1, 'Chamath', 'Rajapaksha', 'qsithil@gmail.com', 2147483647, 'gothatuwaw', '334423523235', '22', 'Male', 1, 'avatar/1740217194.png'),
(2, 'Dinulq', 'Weerasinghe', 'director@techswpace.lk', 1212312, 'gothatuwa', '123123', '22', 'Males', 2, 'avatar/1740221324.png'),
(3, 'Chamath323f', '', '', 0, '', '', '', '', 3, 'avatar/1740217194.png'),
(4, 'Chamath', 'Rajapakshaj', 'qsithil@gmail.com', 2147483647, 'gothatuwa', '200677538', '22', 'Male', 4, 'avatar/1740217194.png'),
(5, 'Chamath', 'Rajapakshaj', 'qsithil@gmail.com', 1788232239, 'gothatuwa', '123123333', '22', 'Male', 5, 'avatar/1740217194.png'),
(7, 'Sithuli', 'Rajapakshaj', 'qsithil@gmail.com', 1788232233, 'gothatuwa', '123123234', '22', 'Male', 7, 'avatar/1740216384.png'),
(8, 'Kallin', 'Rajapakshaj', 'qsithil@gmail.com', 1788232233, 'gothatuwa', '123123222', '22', 'Male', 8, 'avatar/1740216695.png'),
(9, 'Chamath', 'Rajapakshaj', 'qsithil@gmail.com', 1788232233, 'gothatuwa', '123123222', '22', 'Male', 9, 'avatar/1740217194.png'),
(10, 'Amil', 'Rajapakshaj', 'qsithil@gmail.com', 1788232233, 'gothatuwa', '123123111', '22', 'Male', 10, 'avatar/1740217404.png'),
(11, 'Sithuli', 'Rajapakshaj', 'director@techswpace.lk', 1788232233, 'gothatuwa', '123123222', '22', 'Male', 11, 'avatar/1740217708.png'),
(12, 'Dinulq', 'Rajapakshaj', 'qsithil@gmail.com', 1788232233, 'gothatuwa', '123123123', '22', 'Male', 12, 'avatar/1740221324.png'),
(13, 'Amil', 'wa', 'qsithil@gmail.com', 1788232233, 'gothatuwa', '123123333', '22', 'Male', 13, 'avatar/1740503035.png');

-- --------------------------------------------------------

--
-- Table structure for table `clientreview`
--

CREATE TABLE `clientreview` (
  `CReviewID` int(50) NOT NULL,
  `CReviewName` varchar(40) NOT NULL,
  `CReviewEmail` varchar(40) NOT NULL,
  `CReviewDesc` varchar(255) NOT NULL,
  `ClientID` int(50) NOT NULL,
  `ChairmanId` int(50) NOT NULL,
  `user_avatar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientreview`
--

INSERT INTO `clientreview` (`CReviewID`, `CReviewName`, `CReviewEmail`, `CReviewDesc`, `ClientID`, `ChairmanId`, `user_avatar`) VALUES
(1, 'sithil', 'qsithil@gmail.com', 'lalalla', 3, 7, ''),
(2, 'sithil', 'qsithil@gmail.com', '22e2e2e', 2, 7, ''),
(3, 'qwd', 'qsithil@gmail.com', '12e121e', 1, 7, ''),
(4, 'amil', 'qsithil@gmail.com', '2wdwdwdwd', 2, 7, ''),
(5, 'qwfq', 'qsithil@gmail.com', '33r2', 2, 7, ''),
(7, 'Sithulu', 'director@techswpace.lk', 'qwdqwd', 1, 7, ''),
(16, 'sithil', 'qsithil@gmail.com', 'jjjj', 12, 7, ''),
(19, 'sithil', 'qsithil@gmail.com', 'ds', 1, 7, ''),
(32, 'qwd', 'qsithil@gmail.com', 'qwc', 1, 7, ''),
(33, 'sithil', 'qsithil@gmail.com', 'klk', 1, 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `commercialexecutive`
--

CREATE TABLE `commercialexecutive` (
  `CommercialExecutiveID` int(50) NOT NULL,
  `ProjectCurrentlyHanlded` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commercialexecutive`
--

INSERT INTO `commercialexecutive` (`CommercialExecutiveID`, `ProjectCurrentlyHanlded`, `ProfileID`) VALUES
(15, 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `companyoperation`
--

CREATE TABLE `companyoperation` (
  `COperationID` int(50) NOT NULL,
  `COperationName` varchar(255) NOT NULL,
  `COperationType` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `DirectorId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companyoperation`
--

INSERT INTO `companyoperation` (`COperationID`, `COperationName`, `COperationType`, `status`, `DirectorId`) VALUES
(1, 'Raw Material Procurement', 'Manufacturing Operations', 'Pending', 10),
(3, 'Cutting Process', 'Support Functions', 'Pending', 10),
(4, 'Sales  Campaigns', 'Financial & Legal Operations', 'Completed', 10),
(5, 'Workforce Training & Development', 'Financial & Legal Operations', 'Ongoing', 10),
(13, 'Training Camps', 'Financial & Legal Operations', 'Pending', 10);

-- --------------------------------------------------------

--
-- Table structure for table `customdesign`
--

CREATE TABLE `customdesign` (
  `CDesignID` int(50) NOT NULL,
  `CDesignName` varchar(255) NOT NULL,
  `CDesignDetails` varchar(255) NOT NULL,
  `CDesignDate` date NOT NULL,
  `CADEngineerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customdesign`
--

INSERT INTO `customdesign` (`CDesignID`, `CDesignName`, `CDesignDetails`, `CDesignDate`, `CADEngineerId`) VALUES
(1, 'sss', '222', '2025-02-13', 21);

-- --------------------------------------------------------

--
-- Table structure for table `dailyschedule`
--

CREATE TABLE `dailyschedule` (
  `DScheduleID` int(50) NOT NULL,
  `DScheduleInfo` varchar(255) NOT NULL,
  `ScheduleDate` date NOT NULL,
  `GeneralManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dailyschedule`
--

INSERT INTO `dailyschedule` (`DScheduleID`, `DScheduleInfo`, `ScheduleDate`, `GeneralManagerId`) VALUES
(1, '7:30 AM - 8:00 AM Worker Arrival & Attendance Marking\r\n8:00 AM - 8:15 AM Morning Briefing & Shift Allocation\r\n8:15 AM - 10:30 AM Cutting & Layering of Fabrics\r\n10:30 AM - 10:45 AM Tea Break\r\n10:45 AM - 1:00 PM Stitching & Assembly Process\r\n1:00 PM - 2:00 ', '2025-02-26', 11),
(2, '7:30 AM - 8:00 AM Worker Arrival & Attendance\r\n8:00 AM - 8:15 AM Morning Briefing & Task Allocation\r\n8:15 AM - 10:30 AM Stitching & Initial Assembly\r\n10:30 AM - 10:45 AM Tea Break\r\n10:45 AM - 1:00 PM Embroidery & Printing Work\r\n1:00 PM - 2:00 PM Lunch Bre', '2025-02-25', 11),
(7, 'qwfqwf', '2025-02-26', 11),
(8, 'Recruitment & Hiring', '2025-02-21', 11);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryschedule`
--

CREATE TABLE `deliveryschedule` (
  `DScheduleID` int(50) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ScheduleFrom` varchar(255) NOT NULL,
  `ScheduleTo` varchar(255) NOT NULL,
  `ShipmentDate` date NOT NULL,
  `Time` varchar(255) NOT NULL,
  `DeliveryType` varchar(255) NOT NULL,
  `ContactNo` int(100) NOT NULL,
  `Client_id` int(50) NOT NULL,
  `ChairmanId` int(50) NOT NULL,
  `PlantManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveryschedule`
--

INSERT INTO `deliveryschedule` (`DScheduleID`, `Name`, `ScheduleFrom`, `ScheduleTo`, `ShipmentDate`, `Time`, `DeliveryType`, `ContactNo`, `Client_id`, `ChairmanId`, `PlantManagerId`) VALUES
(1, 'Valentine Lover T-shirt Order', 'TechSpace', 'LosAngeles, USA', '2025-02-20', '13:00pm', 'sea freight-FLC', 719189797, 1, 7, 16),
(2, 'Autum Dress', 'TechSpace', 'Malmo, Sweden', '2025-02-27', '09:00am', 'sea freight-FLC', 716678876, 2, 7, 16);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DID` int(50) NOT NULL,
  `DName` varchar(255) NOT NULL,
  `DDescription` varchar(255) NOT NULL,
  `DLocation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DID`, `DName`, `DDescription`, `DLocation`) VALUES
(1, 'HR', 'responsible for managing employees', 'Main Hall'),
(2, 'Sales', 'Understanding market trends and customer behavior', '2nd Floor'),
(3, 'Financial', 'Responsible for managing a company\'s financial health', 'Ground Floor');

-- --------------------------------------------------------

--
-- Table structure for table `departmentoperation`
--

CREATE TABLE `departmentoperation` (
  `DOperationID` int(50) NOT NULL,
  `DepartmentID` int(50) NOT NULL,
  `DOperationName` varchar(255) NOT NULL,
  `DOperationDate` varchar(255) NOT NULL,
  `DOperationInfo` varchar(255) NOT NULL,
  `sucessRate` int(50) NOT NULL,
  `DirectorId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departmentoperation`
--

INSERT INTO `departmentoperation` (`DOperationID`, `DepartmentID`, `DOperationName`, `DOperationDate`, `DOperationInfo`, `sucessRate`, `DirectorId`) VALUES
(1, 2, 'Financial', '2025-02-06', 'Recruitment & Hiring    \nAttendance & Leave Management\nHealth & Safety Regulations', 43, 10),
(2, 2, 'Business', '2025-02-11', '1Recruitment & Hiring\n2Employee Records & Documentation\n3Employee Training & Development\n3Workplace Policies & Compliance\nEmployee Engagement & Relations\nAttendance & Leave Management\nHealth & Safety Regulations', 75, 10),
(3, 2, 'Sales', '2025-02-11', '1Recruitment & Hiring\r\n2Employee Records & Documentation\r\n3Employee Training & Development\r\n3Workplace Policies & Compliance\r\nEmployee Engagement & Relations\r\nAttendance & Leave Management\r\nHealth & Safety Regulations', 89, 10),
(4, 2, 'Business', '2025-02-11', '1Recruitment & Hiring\r\n2Employee Records & Documentation\r\n3Employee Training & Development\r\n3Workplace Policies & Compliance\r\nEmployee Engagement & Relations\r\nAttendance & Leave Management\r\nHealth & Safety Regulations', 69, 10),
(5, 1, 'HR', '2025-02-14', 'Recruitment & Hiring\r\nEmployee Records & Documentation\r\nEmployee Training & Development\r\nWorkplace Policies & Compliance\r\nEmployee Engagement & Relations\r\nAttendance & Leave Management\r\nHealth & Safety Regulations', 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `DirectorID` int(50) NOT NULL,
  `ManagedProjects` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`DirectorID`, `ManagedProjects`, `ProfileID`) VALUES
(10, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `EID` int(50) NOT NULL,
  `EDesc` varchar(255) NOT NULL,
  `EAmount` int(50) NOT NULL,
  `EType` varchar(255) NOT NULL,
  `FinancialOfficerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`EID`, `EDesc`, `EAmount`, `EType`, `FinancialOfficerId`) VALUES
(6, '123', 10000, 'Export Orders', 12),
(7, 'qwdq', 5000, 'Printing', 12);

-- --------------------------------------------------------

--
-- Table structure for table `factoryoperation`
--

CREATE TABLE `factoryoperation` (
  `FOperationID` int(50) NOT NULL,
  `FOperationInfo` varchar(255) NOT NULL,
  `FOperationDate` date NOT NULL,
  `GeneralManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `factoryoperation`
--

INSERT INTO `factoryoperation` (`FOperationID`, `FOperationInfo`, `FOperationDate`, `GeneralManagerId`) VALUES
(1, 'Raw Material Procurement', '2025-02-19', 11),
(2, 'Fabric Inspection & Testing', '2025-02-18', 11),
(3, 'Cutting Process', '2025-03-13', 11),
(4, 'Sales & Marketing Campaigns', '2025-02-19', 11),
(5, 'Workforce Training & Development', '2025-02-12', 11);

-- --------------------------------------------------------

--
-- Table structure for table `financialoffcier`
--

CREATE TABLE `financialoffcier` (
  `FinancialOfficerID` int(50) NOT NULL,
  `Qualification` varchar(255) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financialoffcier`
--

INSERT INTO `financialoffcier` (`FinancialOfficerID`, `Qualification`, `ProfileID`) VALUES
(12, '3 year work Experience', 12);

-- --------------------------------------------------------

--
-- Table structure for table `financialplan`
--

CREATE TABLE `financialplan` (
  `FPlanID` int(50) NOT NULL,
  `FPlanName` varchar(255) NOT NULL,
  `FPlanDetails` varchar(255) NOT NULL,
  `FPlanDate` date NOT NULL,
  `FinancialOfficerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financialplan`
--

INSERT INTO `financialplan` (`FPlanID`, `FPlanName`, `FPlanDetails`, `FPlanDate`, `FinancialOfficerId`) VALUES
(1, 'qwd', 'qd', '2025-02-13', 12),
(2, 'qwd', 'qd', '2025-02-13', 12),
(3, 'sithil', 'qwfqfw', '2025-03-06', 12);

-- --------------------------------------------------------

--
-- Table structure for table `generalmanager`
--

CREATE TABLE `generalmanager` (
  `GeneralManagerID` int(50) NOT NULL,
  `projectCount` varchar(255) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generalmanager`
--

INSERT INTO `generalmanager` (`GeneralManagerID`, `projectCount`, `ProfileID`) VALUES
(11, '4', 11);

-- --------------------------------------------------------

--
-- Table structure for table `hrmanager`
--

CREATE TABLE `hrmanager` (
  `HrManagerID` int(50) NOT NULL,
  `ManagedWorkerCount` int(40) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hrmanager`
--

INSERT INTO `hrmanager` (`HrManagerID`, `ManagedWorkerCount`, `ProfileID`) VALUES
(17, 5, 17);

-- --------------------------------------------------------

--
-- Table structure for table `indirectorder`
--

CREATE TABLE `indirectorder` (
  `InOrderID` int(50) NOT NULL,
  `InOrderDesc` varchar(255) NOT NULL,
  `InOrderDate` date NOT NULL,
  `InOrderPrice` varchar(255) NOT NULL,
  `InOrderQuantity` int(50) NOT NULL,
  `CommercialExecutiveId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `indirectorder`
--

INSERT INTO `indirectorder` (`InOrderID`, `InOrderDesc`, `InOrderDate`, `InOrderPrice`, `InOrderQuantity`, `CommercialExecutiveId`) VALUES
(2, '12e12e', '2025-02-26', '12e12e', 12, 15);

-- --------------------------------------------------------

--
-- Table structure for table `inventoryfinishedgood`
--

CREATE TABLE `inventoryfinishedgood` (
  `IFID` int(50) NOT NULL,
  `IFStatus` varchar(255) NOT NULL,
  `IFAvailableProducts` varchar(255) NOT NULL,
  `IFAvailableProductCount` int(50) NOT NULL,
  `PlantManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventoryfinishedgood`
--

INSERT INTO `inventoryfinishedgood` (`IFID`, `IFStatus`, `IFAvailableProducts`, `IFAvailableProductCount`, `PlantManagerId`) VALUES
(3, 'Available', 'sithil', 2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `leaverequest`
--

CREATE TABLE `leaverequest` (
  `LRequestID` int(50) NOT NULL,
  `LRequestType` varchar(255) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `RequestStatus` varchar(255) NOT NULL,
  `GeneralManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaverequest`
--

INSERT INTO `leaverequest` (`LRequestID`, `LRequestType`, `StartDate`, `EndDate`, `RequestStatus`, `GeneralManagerId`) VALUES
(1, 'Sick Leave', '2025-02-19', '2025-02-21', 'Rejected', 11),
(2, 'Annual Leave', '2025-02-17', '2025-02-20', 'Rejected', 11);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LoginID` int(50) NOT NULL,
  `LType` varchar(40) NOT NULL,
  `LUsername` varchar(40) NOT NULL,
  `LPassword` varchar(40) NOT NULL,
  `StaffProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LoginID`, `LType`, `LUsername`, `LPassword`, `StaffProfileID`) VALUES
(7, 'Chairman', 'sithil@gmail.com', '123', 7),
(8, 'Director', 'd@gmail.com', '123', 10),
(11, 'General Manager', 'g@gmail.com', '123', 11),
(12, 'Financial Officer', 'f@gmail.com', '123', 12),
(13, 'Payroll Executive', 'p@gmail.com', '123', 13),
(14, 'Purchasing Manager', 'pu@gmail.com', '123', 14),
(15, 'Commercial Executive', 'com@gmail.com', '123', 15),
(16, 'Plant Manager', 'plant@gmail.com', '123', 16),
(17, 'HR Manager', 'h@gmail.com', '123', 17),
(18, 'Stores Manager', 's@gmail.com', '123', 18),
(19, 'Buisness Development Manager', 'b@gmail.com', '123', 19),
(20, 'Technical Manager', 't@gmail.com', '123', 20),
(21, 'CAD Engineer', 'cad@gmail.com', '123', 21);

-- --------------------------------------------------------

--
-- Table structure for table `machinecondition`
--

CREATE TABLE `machinecondition` (
  `MCID` int(50) NOT NULL,
  `MachineID` int(50) NOT NULL,
  `MachineName` varchar(255) NOT NULL,
  `MachineCondition` varchar(255) NOT NULL,
  `MCheckDate` date NOT NULL,
  `technicalmanagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machinecondition`
--

INSERT INTO `machinecondition` (`MCID`, `MachineID`, `MachineName`, `MachineCondition`, `MCheckDate`, `technicalmanagerId`) VALUES
(2, 5, 'ee', 'Running', '2025-02-26', 20);

-- --------------------------------------------------------

--
-- Table structure for table `machinery`
--

CREATE TABLE `machinery` (
  `MID` int(50) NOT NULL,
  `MName` varchar(255) NOT NULL,
  `MDate` date NOT NULL,
  `MStatus` varchar(255) NOT NULL,
  `MPrice` int(50) NOT NULL,
  `PlantManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machinery`
--

INSERT INTO `machinery` (`MID`, `MName`, `MDate`, `MStatus`, `MPrice`, `PlantManagerId`) VALUES
(5, 'www', '2025-03-05', 'Running', 111, 16);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `MaterialID` int(50) NOT NULL,
  `MName` varchar(255) NOT NULL,
  `MDescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`MaterialID`, `MName`, `MDescription`) VALUES
(1, 'qwd', 'qwd');

-- --------------------------------------------------------

--
-- Table structure for table `materialdistribution`
--

CREATE TABLE `materialdistribution` (
  `MDistributionID` int(50) NOT NULL,
  `MaterialInvenID` int(76) NOT NULL,
  `MaterialName` varchar(255) NOT NULL,
  `MDistributionDetails` varchar(255) NOT NULL,
  `MDistributionQuantity` int(50) NOT NULL,
  `StoresManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materialdistribution`
--

INSERT INTO `materialdistribution` (`MDistributionID`, `MaterialInvenID`, `MaterialName`, `MDistributionDetails`, `MDistributionQuantity`, `StoresManagerId`) VALUES
(1, 2, 'asc', 'aaa', 223, 18);

-- --------------------------------------------------------

--
-- Table structure for table `materialinventory`
--

CREATE TABLE `materialinventory` (
  `MInventoryID` int(50) NOT NULL,
  `MaterialID` int(50) NOT NULL,
  `MInventoryName` varchar(255) NOT NULL,
  `MInventoryDesc` varchar(255) NOT NULL,
  `MInventoryUnitprice` int(50) NOT NULL,
  `MInventoryStock` int(50) NOT NULL,
  `StoresManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materialinventory`
--

INSERT INTO `materialinventory` (`MInventoryID`, `MaterialID`, `MInventoryName`, `MInventoryDesc`, `MInventoryUnitprice`, `MInventoryStock`, `StoresManagerId`) VALUES
(2, 1, 'xc', 'ZcZc22', 1212, 1212, 18);

-- --------------------------------------------------------

--
-- Table structure for table `materialrequirement`
--

CREATE TABLE `materialrequirement` (
  `MReqID` int(50) NOT NULL,
  `MaterialInvenID` int(50) NOT NULL,
  `MReqName` varchar(255) NOT NULL,
  `MReqQuantity` int(50) NOT NULL,
  `MReqStatus` varchar(255) NOT NULL,
  `SupplierId` int(50) NOT NULL,
  `PurchasingManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materialrequirement`
--

INSERT INTO `materialrequirement` (`MReqID`, `MaterialInvenID`, `MReqName`, `MReqQuantity`, `MReqStatus`, `SupplierId`, `PurchasingManagerId`) VALUES
(2, 2, 'qwqwd', 22, 'Not Available', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NId` int(50) NOT NULL,
  `NName` varchar(40) NOT NULL,
  `NDesc` varchar(40) NOT NULL,
  `NDate` varchar(40) NOT NULL,
  `HrManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NId`, `NName`, `NDesc`, `NDate`, `HrManagerId`) VALUES
(1, 'General Meeting', 'Meeting at Hall 2', '12/03/2025', 17),
(2, 'Assestmentw', 'on the fourth floorw', '2025-04-05', 17);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `login_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`, `login_id`) VALUES
(1, 's', '123123', 'sithilsemithad@gmail.com', 'cash on delivery', '123', '123', '123', '123', '123', 123, 'burger (4) ', '808', 1),
(2, 's', '6656', 'sithilsemithad@gmail.com', 'credit cart', '123', '123', '123', '123', '123', 123, 'hamburger (4) , clothes (1) ', '115', 1),
(3, 's', '123123123', 'sithilsemithad@gmail.com', 'credit cart', '123', '123', '123', '123', '123', 123, 'cqwc (1) , hamburger (1) , cothes (1) , clothes (5) ', '1069', 1),
(4, 's', '123123123', 'sithilsemithad@gmail.com', 'credit cart', '123', '123', '123', '123', '123', 123, 'cqwc (1) , hamburger (1) , cothes (1) , clothes (5) ', '1069', 1),
(5, 'kaveen', '21312312', 'sithilsemithad@gmail.com', 'credit cart', '123', 'qwd', '123', '123', 'scasca', 123, 'hamburger (1) , burger (2) , cqwc (1) , cothes (4) , clothes (1) ', '1043', 5),
(6, 's', '454', 'sithilsemithad@gmail.com', 'credit cart', '123', '123', '123', '123', '123', 123, 'clothes (2) , lteer (1) , hamburger (1) , cothes (1) ', '1066', 2);

-- --------------------------------------------------------

--
-- Table structure for table `otpayment`
--

CREATE TABLE `otpayment` (
  `OTPaymentID` int(50) NOT NULL,
  `OTHours` int(50) NOT NULL,
  `OTRate` int(50) NOT NULL,
  `OTAmount` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `PayrollId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otpayment`
--

INSERT INTO `otpayment` (`OTPaymentID`, `OTHours`, `OTRate`, `OTAmount`, `WorkerId`, `PayrollId`) VALUES
(6, 45, 44, 1980, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `payrollexecutive`
--

CREATE TABLE `payrollexecutive` (
  `PayrollID` int(50) NOT NULL,
  `History` varchar(255) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payrollexecutive`
--

INSERT INTO `payrollexecutive` (`PayrollID`, `History`, `ProfileID`) VALUES
(13, 'Two Year of expireirence', 13);

-- --------------------------------------------------------

--
-- Table structure for table `payrollrecord`
--

CREATE TABLE `payrollrecord` (
  `PRecordID` int(50) NOT NULL,
  `SalaryID` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `BasicSalary` int(200) NOT NULL,
  `OTHours` int(50) NOT NULL,
  `OTRate` int(50) NOT NULL,
  `OTAmount` int(200) NOT NULL,
  `BenefitDesc` varchar(255) NOT NULL,
  `BenefitAmount` int(200) NOT NULL,
  `TaxPercentage` int(50) NOT NULL,
  `TaxMonth` varchar(255) NOT NULL,
  `TAmount` int(200) NOT NULL,
  `APAmouont` int(200) NOT NULL,
  `APDate` date NOT NULL,
  `FinalSalary` int(50) NOT NULL,
  `PayrollId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payrollrecord`
--

INSERT INTO `payrollrecord` (`PRecordID`, `SalaryID`, `WorkerId`, `BasicSalary`, `OTHours`, `OTRate`, `OTAmount`, `BenefitDesc`, `BenefitAmount`, `TaxPercentage`, `TaxMonth`, `TAmount`, `APAmouont`, `APDate`, `FinalSalary`, `PayrollId`) VALUES
(1, 18, 1, 1000, 45, 44, 1980, 'sdasd', 22, 15, '2025-11', 150, 123, '2025-03-06', 2975, 13);

-- --------------------------------------------------------

--
-- Table structure for table `payslip`
--

CREATE TABLE `payslip` (
  `PSlipID` int(50) NOT NULL,
  `SalaryId` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `PRollRecordId` int(50) NOT NULL,
  `BaseSalary` int(50) NOT NULL,
  `FinalSalary` int(50) NOT NULL,
  `PayrollId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payslip`
--

INSERT INTO `payslip` (`PSlipID`, `SalaryId`, `WorkerId`, `PRollRecordId`, `BaseSalary`, `FinalSalary`, `PayrollId`) VALUES
(4, 18, 1, 1, 1000, 2975, 13);

-- --------------------------------------------------------

--
-- Table structure for table `plantmanager`
--

CREATE TABLE `plantmanager` (
  `PlantManagerID` int(50) NOT NULL,
  `ProductsManaged` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plantmanager`
--

INSERT INTO `plantmanager` (`PlantManagerID`, `ProductsManaged`, `ProfileID`) VALUES
(16, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `productdesign`
--

CREATE TABLE `productdesign` (
  `PDesignID` int(50) NOT NULL,
  `ProductID` int(50) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `PDesignDetails` varchar(255) NOT NULL,
  `PDesignDate` date NOT NULL,
  `cadEngineerrId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productdesign`
--

INSERT INTO `productdesign` (`PDesignID`, `ProductID`, `ProductName`, `PDesignDetails`, `PDesignDate`, `cadEngineerrId`) VALUES
(2, 8, 'qwdqw', 'dqwd', '2025-02-19', 21);

-- --------------------------------------------------------

--
-- Table structure for table `productionschedule`
--

CREATE TABLE `productionschedule` (
  `PScheduleID` int(50) NOT NULL,
  `PScheduleItem` varchar(255) NOT NULL,
  `PScheduleDetails` varchar(255) NOT NULL,
  `PScheduleDate` date NOT NULL,
  `DirectorId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productionschedule`
--

INSERT INTO `productionschedule` (`PScheduleID`, `PScheduleItem`, `PScheduleDetails`, `PScheduleDate`, `DirectorId`) VALUES
(2, 'Trousers', 'Three-Shift Schedule (24-Hour Production)\r\n', '2025-02-17', 10),
(3, 'Crew-Neck', 'Rotating Shift Schedule\r\n', '2025-02-19', 10),
(4, 'Frocks', 'Flexible Shift Schedule\r\n', '2025-02-19', 10),
(5, 'T-shirts', 'Split Shift Schedulee\r\n', '2025-03-07', 10);

-- --------------------------------------------------------

--
-- Table structure for table `productivitylevel`
--

CREATE TABLE `productivitylevel` (
  `PLevelID` int(50) NOT NULL,
  `PLevelTask` varchar(255) NOT NULL,
  `PLevelDate` date NOT NULL,
  `PLevelPercentage` varchar(255) NOT NULL,
  `GeneralManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productivitylevel`
--

INSERT INTO `productivitylevel` (`PLevelID`, `PLevelTask`, `PLevelDate`, `PLevelPercentage`, `GeneralManagerId`) VALUES
(1, 'Optimal production, minimal defects, smooth workflow, and high worker efficiency.', '2025-02-12', '80%', 11),
(2, 'Standard production rate with minor delays or quality issues.', '2025-02-19', '55%', 11);

-- --------------------------------------------------------

--
-- Table structure for table `productmanufacturing`
--

CREATE TABLE `productmanufacturing` (
  `PManufacturingID` int(50) NOT NULL,
  `ProductId` int(50) NOT NULL,
  `PName` varchar(255) NOT NULL,
  `PManufacturingDetails` varchar(255) NOT NULL,
  `PManufacturingQuantity` int(50) NOT NULL,
  `PlantManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productmanufacturing`
--

INSERT INTO `productmanufacturing` (`PManufacturingID`, `ProductId`, `PName`, `PManufacturingDetails`, `PManufacturingQuantity`, `PlantManagerId`) VALUES
(3, 6, 'sithil', 'qwdqwqwd', 12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `price`, `description`, `image`) VALUES
(6, 'clothes', 'Females Fashion', '23', 'Composition: 99% Cotton / 1% Elastic\r\n', 'food-6.png'),
(7, 'lteer', 'Best Seller', '288', '6aerha', 'food-1.png'),
(8, 'cothes', 'Males Fashion', '399', 'qwqw', 'bs.png'),
(9, 'cqwc', 'Best Seller', '222', 'qass', 'food-5.png'),
(10, 'hamburger', 'Best Seller', '333', '3aaf', 'food-1.png'),
(11, 'hamburger', 'Best Seller', '333', '3aaf', 'food-1.png'),
(12, 'burger', 'Best Seller', '232', 'aasfasf', 'food-6.png'),
(13, 'juice', 'Males Fashion', '50', 'bjgy', 'food-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `productshipping`
--

CREATE TABLE `productshipping` (
  `PShippingID` int(50) NOT NULL,
  `ProductId` int(50) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `PShippingDesc` varchar(255) NOT NULL,
  `PShippingAddress` varchar(255) NOT NULL,
  `PShippingDate` date NOT NULL,
  `PlantManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productshipping`
--

INSERT INTO `productshipping` (`PShippingID`, `ProductId`, `ProductName`, `PShippingDesc`, `PShippingAddress`, `PShippingDate`, `PlantManagerId`) VALUES
(3, 8, 'ww', 'ww', 'ww', '2025-02-12', 16);

-- --------------------------------------------------------

--
-- Table structure for table `projectplan`
--

CREATE TABLE `projectplan` (
  `PlanID` int(50) NOT NULL,
  `PlanName` varchar(255) NOT NULL,
  `PlanDate` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `DirectorId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectplan`
--

INSERT INTO `projectplan` (`PlanID`, `PlanName`, `PlanDate`, `status`, `DirectorId`) VALUES
(1, 'Sustainable Clothing Production Plan', '2025-02-26', 'Not Approved', 10),
(2, 'Bulk Order Fulfillment Plan', '2025-02-12', 'Approved', 10),
(3, 'Quality Improvement & Compliance Plan', '2025-04-24', '', 10),
(4, 'E-Commerce Apparel Expansion Plan', '2025-02-05', '', 10),
(5, 'New Apparel Production Line Setup Plan', '2025-02-19', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `purchaseorder`
--

CREATE TABLE `purchaseorder` (
  `POrderID` int(50) NOT NULL,
  `POrderName` varchar(255) NOT NULL,
  `POrderQuantity` int(40) NOT NULL,
  `POrderPrice` int(50) NOT NULL,
  `POrderStatus` varchar(255) NOT NULL,
  `SupplierId` int(50) NOT NULL,
  `PurchasingManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchaseorder`
--

INSERT INTO `purchaseorder` (`POrderID`, `POrderName`, `POrderQuantity`, `POrderPrice`, `POrderStatus`, `SupplierId`, `PurchasingManagerId`) VALUES
(2, 'sithil', 22, 123, 'Not Approved', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `purchasingmanager`
--

CREATE TABLE `purchasingmanager` (
  `PurchasingManagerID` int(50) NOT NULL,
  `Supllierhandled` varchar(40) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchasingmanager`
--

INSERT INTO `purchasingmanager` (`PurchasingManagerID`, `Supllierhandled`, `ProfileID`) VALUES
(14, '7', 14);

-- --------------------------------------------------------

--
-- Table structure for table `resourceorder`
--

CREATE TABLE `resourceorder` (
  `ROrderID` int(50) NOT NULL,
  `ROrderName` varchar(255) NOT NULL,
  `ROrderDetails` varchar(255) DEFAULT NULL,
  `ROrderPayment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `DirectorId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resourceorder`
--

INSERT INTO `resourceorder` (`ROrderID`, `ROrderName`, `ROrderDetails`, `ROrderPayment`, `status`, `DirectorId`) VALUES
(1, 'Arylic material', '255 yards\r\nunit.p=rs.800\r\ntotal.p=rs.204000', 'Cash on Delivery', 'Approved', 10),
(2, 'lesser light ', '25 qty\r\nunit.p=rs.700\r\ntotal.p=rs.17500', 'Credit / Debit Card', 'Approved', 10),
(3, 'marker pen', '50 qty\r\nunit.p=rs.80\r\ntotal.p=rs.4000', 'Cash on Delivery', 'Not Approved', 10),
(4, 'threads', '50 qty\r\nunit.p=rs.50\r\ntotal.p=rs.2500', 'Cash on Delivery', 'approved', 10),
(5, 'Files ', '50 qty\r\nunit.p=rs.50\r\ntotal.p=rs.2500', 'Cash on Delivery', 'approved', 10);

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `RID` int(50) NOT NULL,
  `RDesc` varchar(255) NOT NULL,
  `RAmount` int(255) NOT NULL,
  `RType` varchar(255) NOT NULL,
  `FinancialOfficerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`RID`, `RDesc`, `RAmount`, `RType`, `FinancialOfficerId`) VALUES
(3, '123', 12323, 'Donations', 12);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `SalaryID` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `BasicSalary` int(50) NOT NULL,
  `OTID` int(50) NOT NULL,
  `OTHours` int(50) NOT NULL,
  `OTRate` int(50) NOT NULL,
  `OTAmount` int(50) NOT NULL,
  `BID` int(50) NOT NULL,
  `BDesc` varchar(255) NOT NULL,
  `BAmount` int(50) NOT NULL,
  `TID` int(50) NOT NULL,
  `TaxPercentage` int(50) NOT NULL,
  `TaxMonth` varchar(255) NOT NULL,
  `TAmount` int(50) NOT NULL,
  `AID` int(50) NOT NULL,
  `AAmount` int(50) NOT NULL,
  `ADate` date NOT NULL,
  `FinalSalary` int(50) NOT NULL,
  `PayrollId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`SalaryID`, `WorkerId`, `BasicSalary`, `OTID`, `OTHours`, `OTRate`, `OTAmount`, `BID`, `BDesc`, `BAmount`, `TID`, `TaxPercentage`, `TaxMonth`, `TAmount`, `AID`, `AAmount`, `ADate`, `FinalSalary`, `PayrollId`) VALUES
(18, 1, 1000, 6, 45, 44, 1980, 3, '                        qwe                    ', 22, 2, 15, '2025-11', 150, 1, 123, '2025-03-06', 2975, 13);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SalesID` int(50) NOT NULL,
  `SalesDate` date NOT NULL,
  `productID` int(50) NOT NULL,
  `ProductName` varchar(225) NOT NULL,
  `ProductUnitPrice` int(50) NOT NULL,
  `TotalUnitsSold` int(50) NOT NULL,
  `TotalAmount` int(50) NOT NULL,
  `SalesCategoury` varchar(255) NOT NULL,
  `BusinessManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SalesID`, `SalesDate`, `productID`, `ProductName`, `ProductUnitPrice`, `TotalUnitsSold`, `TotalAmount`, `SalesCategoury`, `BusinessManagerId`) VALUES
(4, '2025-01-28', 8, 'sithil', 123, 2, 246, 'InStore Sales', 19);

-- --------------------------------------------------------

--
-- Table structure for table `specialbenefit`
--

CREATE TABLE `specialbenefit` (
  `SBenefitID` int(50) NOT NULL,
  `SBenefitDesc` varchar(255) NOT NULL,
  `SBenefitAmount` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `PayrollId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialbenefit`
--

INSERT INTO `specialbenefit` (`SBenefitID`, `SBenefitDesc`, `SBenefitAmount`, `WorkerId`, `PayrollId`) VALUES
(3, 'qwe', 22, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `stafffeedback`
--

CREATE TABLE `stafffeedback` (
  `SFeedbackID` int(50) NOT NULL,
  `SName` varchar(255) NOT NULL,
  `SRole` varchar(255) NOT NULL,
  `SEmail` varchar(255) NOT NULL,
  `SReview` varchar(255) NOT NULL,
  `login_id` int(11) NOT NULL,
  `ChairmanId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stafffeedback`
--

INSERT INTO `stafffeedback` (`SFeedbackID`, `SName`, `SRole`, `SEmail`, `SReview`, `login_id`, `ChairmanId`) VALUES
(7, 'sithil', '', 'qsithil@gmail.com', 'sdfs', 10, 7),
(8, 'sithil', '', 'qsithil@gmail.com', 'sdfs', 10, 7),
(9, 'sithil', '', 'director@techswpace.lk', 'good', 10, 7),
(10, 'sithil', '', 'qsithil@gmail.com', 'afasf', 10, 7),
(11, 'amil', '', 'qsithil@gmail.com', '123', 10, 7),
(12, 'qwfqwf', '', 'qsithil@gmail.com', 'asd', 10, 7),
(14, 'Sithi', 'Director', 'director@techswpace.lk', 'we good homie', 10, 7),
(15, 'sithil', 'Director', 'director@techswpace.lk', 'as', 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `staffmeeting`
--

CREATE TABLE `staffmeeting` (
  `SMeetingID` int(50) NOT NULL,
  `SMeetingDesc` varchar(255) NOT NULL,
  `SMeetingDate` date NOT NULL,
  `NoOfAttendees` int(50) NOT NULL,
  `PlantManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffmeeting`
--

INSERT INTO `staffmeeting` (`SMeetingID`, `SMeetingDesc`, `SMeetingDate`, `NoOfAttendees`, `PlantManagerId`) VALUES
(2, '11', '2025-02-12', 33, 16),
(3, 'amil2222', '2025-03-05', 11, 16);

-- --------------------------------------------------------

--
-- Table structure for table `staffprofile`
--

CREATE TABLE `staffprofile` (
  `StaffProfileID` int(50) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `TelephoneNo` int(10) NOT NULL,
  `JobTitle` varchar(255) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `NIC` varchar(45) NOT NULL,
  `Age` int(45) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `EnrollmentDate` date NOT NULL,
  `user_avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffprofile`
--

INSERT INTO `staffprofile` (`StaffProfileID`, `FirstName`, `LastName`, `Email`, `TelephoneNo`, `JobTitle`, `Address`, `NIC`, `Age`, `Gender`, `EnrollmentDate`, `user_avatar`) VALUES
(7, 'Chamath', 'Rajapaksha', 'chairman@techspace.lk', 747483647, 'Chairman', 'Colomboas', '20087633532', 43, 'Male', '2000-10-12', 'avatar/chairman img.png'),
(10, 'Dinul', 'Weerasinghe', 'director@techswpace.lk', 178823223, 'Director', 'Kollonwa', '20087633532', 43, 'Male', '2020-10-12', 'avatar/direcotr main pic 1.png'),
(11, 'Karun', 'Siriwardane', 'generalmanager@techspace.lk', 178823223, 'General Manager', 'Kollonwa', '20087633532', 43, 'Male', '2025-02-12', 'avatar/gm.png'),
(12, 'Jagath', 'Karunarathne', 'financialofficer@gmail.com', 718823423, 'Financial Officer', 'Happutale', '20087633532', 23, 'Male', '2022-02-09', 'avatar/financialofficer.png'),
(13, 'Thizara', 'Kavindha', 'payroll@techspace.lk', 777787273, 'Payroll Executive', 'Ambatale', '20087633532', 32, 'Male', '2020-02-11', 'avatar/payroll ex.png'),
(14, 'Kulindu', 'Perera', 'purchasingmanager@techspace.lk', 788987676, 'Purchasing Manager', 'Colombo', '20087633532', 43, 'Male', '2019-02-13', 'avatar/purchasing manager 1.png'),
(15, 'Kaveen', 'Malshika', 'commercialExecutive@techspace.lk', 743325643, 'Commercial Executive', 'dematagoda', '20087633532', 23, 'Male', '2020-02-19', 'avatar/cm 1.png'),
(16, 'Methira', 'Peris', 'plantmanager@gmail.com', 788987676, 'Plant Manager', 'Colombo', '20087633532', 33, 'Male', '2025-02-19', 'avatar/pm 1.png'),
(17, 'Sehandu', 'Ranhindha', 'hrmanager@techspace.lk', 788987676, 'HR Manager', 'Colombo', '20087633532', 28, 'Male', '2024-02-08', 'avatar/hr 1.png'),
(18, 'Omika', 'Rivisara', 'stores@techspace.lk', 718876542, 'Stores Manager', 'Colombo', '20087633532', 33, 'Male', '2023-02-15', 'avatar/sm 1.png'),
(19, 'Sanupa', 'Damwin', 'buisnessmanager@techspace.lk', 788987676, 'Business Development Manager', 'Rajagiriya', '20087633532', 29, 'Male', '2024-02-07', 'avatar/business 1.png'),
(20, 'Lochana', 'Sirimanne', 'techniacalmanager@techspace.lk', 754432312, 'Technical Manager', 'kotikawtta', '2887567456', 32, 'Male', '2023-02-15', 'avatar/tech 1.png'),
(21, 'Senupa', 'Sathmal', 'cad@techspace.lk', 788987676, 'CAD Engineer', 'Borella', '20087633532', 27, 'Male', '2024-02-07', 'avatar/cad 1.png');

-- --------------------------------------------------------

--
-- Table structure for table `stafperformance`
--

CREATE TABLE `stafperformance` (
  `SPerformanceID` int(50) NOT NULL,
  `SPerformanceDep` varchar(255) NOT NULL,
  `SYear` varchar(255) NOT NULL,
  `SRating` int(40) NOT NULL,
  `ChairmanId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stafperformance`
--

INSERT INTO `stafperformance` (`SPerformanceID`, `SPerformanceDep`, `SYear`, `SRating`, `ChairmanId`) VALUES
(1, 'Financial', '2020', 30, 7),
(2, 'Financial', '2021', 40, 7),
(3, 'Financial', '2022', 60, 7),
(4, 'Financial', '2023', 74, 7),
(5, 'Financial', '2024', 55, 7),
(6, 'Business Development', '2020', 33, 7),
(7, 'HR', '2020', 43, 7),
(8, 'HR', '2021', 33, 7),
(9, 'HR', '2022', 40, 7),
(11, 'HR', '2023', 44, 7),
(12, 'HR', '2024', 38, 7),
(13, 'Business Development', '2021', 44, 7),
(14, 'Business Development', '2022', 48, 7),
(15, 'Business Development', '2023', 39, 7),
(16, 'Business Development', '2024', 40, 7),
(17, 'Workers Department', '2020', 40, 7),
(18, 'Workers Department', '2021', 49, 7),
(19, 'Workers Department', '2022', 42, 7),
(20, 'Workers Department', '2023', 37, 7),
(21, 'Workers Department', '2024', 40, 7);

-- --------------------------------------------------------

--
-- Table structure for table `storesmanager`
--

CREATE TABLE `storesmanager` (
  `StoresManagerID` int(50) NOT NULL,
  `InventoriesManaged` int(50) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `storesmanager`
--

INSERT INTO `storesmanager` (`StoresManagerID`, `InventoriesManaged`, `ProfileID`) VALUES
(18, 7, 18);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(50) NOT NULL,
  `SupllierName` varchar(255) NOT NULL,
  `SupplierEmail` varchar(255) NOT NULL,
  `SupplierContact` int(10) NOT NULL,
  `SupplierAddress` varchar(255) NOT NULL,
  `PurchasingManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupllierName`, `SupplierEmail`, `SupplierContact`, `SupplierAddress`, `PurchasingManagerId`) VALUES
(2, 'qwfq21e', 'qsithil@gm2ail.com', 11111, '111', 14);

-- --------------------------------------------------------

--
-- Table structure for table `suppliercontract`
--

CREATE TABLE `suppliercontract` (
  `SContractID` int(50) NOT NULL,
  `SContractDetails` varchar(255) NOT NULL,
  `SContractTerm` varchar(255) NOT NULL,
  `SContractStartDate` date NOT NULL,
  `SContractEndDate` date NOT NULL,
  `SupplierId` int(50) NOT NULL,
  `PurchasingManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliercontract`
--

INSERT INTO `suppliercontract` (`SContractID`, `SContractDetails`, `SContractTerm`, `SContractStartDate`, `SContractEndDate`, `SupplierId`, `PurchasingManagerId`) VALUES
(4, '12e12e', '12e12e', '2025-02-27', '2025-02-20', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `supplierissue`
--

CREATE TABLE `supplierissue` (
  `SIssueID` int(50) NOT NULL,
  `SIssueDetails` varchar(255) NOT NULL,
  `IssueDate` date NOT NULL,
  `SupplerId` int(50) NOT NULL,
  `PurchasingManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplierissue`
--

INSERT INTO `supplierissue` (`SIssueID`, `SIssueDetails`, `IssueDate`, `SupplerId`, `PurchasingManagerId`) VALUES
(2, 'wqwdqw', '2025-02-13', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskID` int(50) NOT NULL,
  `taskMessage` varchar(255) NOT NULL,
  `taskType` varchar(255) NOT NULL,
  `taskDate` date NOT NULL,
  `ChairmanId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskID`, `taskMessage`, `taskType`, `taskDate`, `ChairmanId`) VALUES
(1, 'Checks the Stores for Limited Supplies\r\n', 'Stores Manager', '2025-02-05', 7),
(2, 'Set Up new Client Contracts', 'Commercial Executive', '2025-02-05', 7),
(3, 'Maintain New Pay Slips', 'Payroll Executive', '2025-02-18', 7),
(4, 'Schedule Staff Meetings', 'Plant Manager', '2025-02-18', 7),
(5, 'Create The Sales Report', 'Business Development Manager', '2025-02-18', 7),
(6, 'Set up the new Technical reports', 'Technical Manager', '2025-02-18', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `TaxID` int(50) NOT NULL,
  `TaxPercentage` int(50) NOT NULL,
  `TaxMonth` varchar(255) NOT NULL,
  `PayrollId` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`TaxID`, `TaxPercentage`, `TaxMonth`, `PayrollId`, `WorkerId`) VALUES
(2, 15, '2025-11', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `technicalmanager`
--

CREATE TABLE `technicalmanager` (
  `TechnicalManagerID` int(50) NOT NULL,
  `Technical Expertise` varchar(255) NOT NULL,
  `ProfileID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicalmanager`
--

INSERT INTO `technicalmanager` (`TechnicalManagerID`, `Technical Expertise`, `ProfileID`) VALUES
(20, '5 years of Work Experience', 20);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `TransactionID` int(50) NOT NULL,
  `AccountId` int(50) NOT NULL,
  `TransactionDate` date NOT NULL,
  `TransactionTime` varchar(255) NOT NULL,
  `TransactionDetails` varchar(255) NOT NULL,
  `TransactionAmount` varchar(255) NOT NULL,
  `TransactionStatus` varchar(255) NOT NULL,
  `FinancialOfficerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionID`, `AccountId`, `TransactionDate`, `TransactionTime`, `TransactionDetails`, `TransactionAmount`, `TransactionStatus`, `FinancialOfficerId`) VALUES
(4, 3, '2025-02-26', '22:29', 'qwdd', '222', 'Completed', 12);

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `WorkerID` int(50) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `WTelephone` int(50) NOT NULL,
  `HrManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`WorkerID`, `FirstName`, `LastName`, `Email`, `WTelephone`, `HrManagerId`) VALUES
(1, 'Sithil', 'Semitha', 'S@gmail.com', 719887654, 17),
(2, 'qwd', 'qwd', 'qsithil@gm2ail.com', 2147483647, 17),
(6, 'Sithuli', 'qwd', 'director@techswpace.lk', 11111, 17);

-- --------------------------------------------------------

--
-- Table structure for table `workerschedules`
--

CREATE TABLE `workerschedules` (
  `WScheduleID` int(50) NOT NULL,
  `WorkerId` int(50) NOT NULL,
  `WScheduleDetails` varchar(255) NOT NULL,
  `WStartDate` date NOT NULL,
  `WEndDate` date NOT NULL,
  `WLocation` varchar(255) NOT NULL,
  `HrManagerId` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workerschedules`
--

INSERT INTO `workerschedules` (`WScheduleID`, `WorkerId`, `WScheduleDetails`, `WStartDate`, `WEndDate`, `WLocation`, `HrManagerId`) VALUES
(1, 1, 'sss', '2025-02-17', '2025-02-17', 'sss', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`AccountID`),
  ADD KEY `ffdsf` (`FinancialOfficerId`);

--
-- Indexes for table `advancepayment`
--
ALTER TABLE `advancepayment`
  ADD PRIMARY KEY (`ADPaymentID`),
  ADD KEY `ascacfk` (`WorkerId`),
  ADD KEY `ascasccc` (`PayrollId`),
  ADD KEY `2323887` (`WorkerId`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`BID`),
  ADD KEY `qwdffk` (`FinancialManagerId`);

--
-- Indexes for table `buisnessdevelopmentmanager`
--
ALTER TABLE `buisnessdevelopmentmanager`
  ADD PRIMARY KEY (`BuisnessDevelopmentManagerID`),
  ADD KEY `ascascsacccccc` (`ProfileID`);

--
-- Indexes for table `buisnesstransaction`
--
ALTER TABLE `buisnesstransaction`
  ADD PRIMARY KEY (`BTransactionID`),
  ADD KEY `sdfsd` (`CommercialExecutiveId`);

--
-- Indexes for table `cadengineer`
--
ALTER TABLE `cadengineer`
  ADD PRIMARY KEY (`CADID`),
  ADD KEY `jj` (`ProfileID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginid_fkk` (`login_id`);

--
-- Indexes for table `chairman`
--
ALTER TABLE `chairman`
  ADD PRIMARY KEY (`ChairmanID`),
  ADD KEY `12e12e` (`ProfileID`);

--
-- Indexes for table `clientcontract`
--
ALTER TABLE `clientcontract`
  ADD PRIMARY KEY (`CContractID`),
  ADD KEY `cvbcvbcmm` (`ClientId`),
  ADD KEY `ascasccsyty` (`CommercialExecutiveId`);

--
-- Indexes for table `clientlogin`
--
ALTER TABLE `clientlogin`
  ADD PRIMARY KEY (`ClientProfileID`);

--
-- Indexes for table `clientnewsletter`
--
ALTER TABLE `clientnewsletter`
  ADD PRIMARY KEY (`ClientNewsLetterID`),
  ADD KEY `clinetid2_fk` (`ClientID`);

--
-- Indexes for table `clientprofile`
--
ALTER TABLE `clientprofile`
  ADD PRIMARY KEY (`ClientProfileID`),
  ADD KEY `test555` (`login_id`);

--
-- Indexes for table `clientreview`
--
ALTER TABLE `clientreview`
  ADD PRIMARY KEY (`CReviewID`),
  ADD KEY `clientID_fk` (`ClientID`),
  ADD KEY `eefk` (`ChairmanId`);

--
-- Indexes for table `commercialexecutive`
--
ALTER TABLE `commercialexecutive`
  ADD PRIMARY KEY (`CommercialExecutiveID`),
  ADD KEY `asdlll` (`ProfileID`);

--
-- Indexes for table `companyoperation`
--
ALTER TABLE `companyoperation`
  ADD PRIMARY KEY (`COperationID`),
  ADD KEY `ssfk` (`DirectorId`);

--
-- Indexes for table `customdesign`
--
ALTER TABLE `customdesign`
  ADD PRIMARY KEY (`CDesignID`),
  ADD KEY `ooo` (`CADEngineerId`);

--
-- Indexes for table `dailyschedule`
--
ALTER TABLE `dailyschedule`
  ADD PRIMARY KEY (`DScheduleID`),
  ADD KEY `434` (`GeneralManagerId`);

--
-- Indexes for table `deliveryschedule`
--
ALTER TABLE `deliveryschedule`
  ADD PRIMARY KEY (`DScheduleID`),
  ADD KEY `clientid_fk` (`Client_id`),
  ADD KEY `ddfk` (`ChairmanId`),
  ADD KEY `adadcad` (`PlantManagerId`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DID`);

--
-- Indexes for table `departmentoperation`
--
ALTER TABLE `departmentoperation`
  ADD PRIMARY KEY (`DOperationID`),
  ADD KEY `did` (`DirectorId`),
  ADD KEY `asdasasdascccvvvv` (`DepartmentID`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`DirectorID`),
  ADD KEY `sdsd` (`ProfileID`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `ggfg` (`FinancialOfficerId`);

--
-- Indexes for table `factoryoperation`
--
ALTER TABLE `factoryoperation`
  ADD PRIMARY KEY (`FOperationID`),
  ADD KEY `fk` (`GeneralManagerId`);

--
-- Indexes for table `financialoffcier`
--
ALTER TABLE `financialoffcier`
  ADD PRIMARY KEY (`FinancialOfficerID`),
  ADD KEY `fkg` (`ProfileID`);

--
-- Indexes for table `financialplan`
--
ALTER TABLE `financialplan`
  ADD PRIMARY KEY (`FPlanID`),
  ADD KEY `xczcf` (`FinancialOfficerId`);

--
-- Indexes for table `generalmanager`
--
ALTER TABLE `generalmanager`
  ADD PRIMARY KEY (`GeneralManagerID`),
  ADD KEY `fk` (`ProfileID`);

--
-- Indexes for table `hrmanager`
--
ALTER TABLE `hrmanager`
  ADD PRIMARY KEY (`HrManagerID`),
  ADD KEY `asdasdfds` (`ProfileID`);

--
-- Indexes for table `indirectorder`
--
ALTER TABLE `indirectorder`
  ADD PRIMARY KEY (`InOrderID`),
  ADD KEY `jabsc` (`CommercialExecutiveId`);

--
-- Indexes for table `inventoryfinishedgood`
--
ALTER TABLE `inventoryfinishedgood`
  ADD PRIMARY KEY (`IFID`),
  ADD KEY `122` (`PlantManagerId`);

--
-- Indexes for table `leaverequest`
--
ALTER TABLE `leaverequest`
  ADD PRIMARY KEY (`LRequestID`),
  ADD KEY `gmk` (`GeneralManagerId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginID`),
  ADD KEY `aasd` (`StaffProfileID`);

--
-- Indexes for table `machinecondition`
--
ALTER TABLE `machinecondition`
  ADD PRIMARY KEY (`MCID`),
  ADD KEY `ooo` (`MachineID`),
  ADD KEY `llkll` (`technicalmanagerId`);

--
-- Indexes for table `machinery`
--
ALTER TABLE `machinery`
  ADD PRIMARY KEY (`MID`),
  ADD KEY `asdasccc` (`PlantManagerId`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`MaterialID`);

--
-- Indexes for table `materialdistribution`
--
ALTER TABLE `materialdistribution`
  ADD PRIMARY KEY (`MDistributionID`),
  ADD KEY `cczzxxccxx` (`StoresManagerId`),
  ADD KEY `jjjhhlloooiuu` (`MaterialInvenID`);

--
-- Indexes for table `materialinventory`
--
ALTER TABLE `materialinventory`
  ADD PRIMARY KEY (`MInventoryID`),
  ADD KEY `aascasc` (`StoresManagerId`),
  ADD KEY `iiuuii` (`MaterialID`);

--
-- Indexes for table `materialrequirement`
--
ALTER TABLE `materialrequirement`
  ADD PRIMARY KEY (`MReqID`),
  ADD KEY `xvxckhk` (`SupplierId`),
  ADD KEY `sacascnnn` (`PurchasingManagerId`),
  ADD KEY `asdasddddd` (`MaterialInvenID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NId`),
  ADD KEY `sdvsdvkko` (`HrManagerId`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderloginid_fk` (`login_id`);

--
-- Indexes for table `otpayment`
--
ALTER TABLE `otpayment`
  ADD PRIMARY KEY (`OTPaymentID`),
  ADD KEY `ssdfffd` (`PayrollId`),
  ADD KEY `sdfdvvdvd` (`WorkerId`);

--
-- Indexes for table `payrollexecutive`
--
ALTER TABLE `payrollexecutive`
  ADD PRIMARY KEY (`PayrollID`),
  ADD KEY `sdfff` (`ProfileID`);

--
-- Indexes for table `payrollrecord`
--
ALTER TABLE `payrollrecord`
  ADD PRIMARY KEY (`PRecordID`),
  ADD KEY `asdsdsc` (`WorkerId`),
  ADD KEY `12312cccq` (`PayrollId`),
  ADD KEY `asdascc` (`SalaryID`);

--
-- Indexes for table `payslip`
--
ALTER TABLE `payslip`
  ADD PRIMARY KEY (`PSlipID`),
  ADD KEY `xcvxvckk` (`SalaryId`),
  ADD KEY `xcvxcvkkk` (`WorkerId`),
  ADD KEY `vbcvbhh` (`PRollRecordId`),
  ADD KEY `sdvdvvvv` (`PayrollId`);

--
-- Indexes for table `plantmanager`
--
ALTER TABLE `plantmanager`
  ADD PRIMARY KEY (`PlantManagerID`),
  ADD KEY `ascascssss` (`ProfileID`);

--
-- Indexes for table `productdesign`
--
ALTER TABLE `productdesign`
  ADD PRIMARY KEY (`PDesignID`),
  ADD KEY `ascasc` (`ProductID`),
  ADD KEY `ascascascasc` (`cadEngineerrId`);

--
-- Indexes for table `productionschedule`
--
ALTER TABLE `productionschedule`
  ADD PRIMARY KEY (`PScheduleID`),
  ADD KEY `ddsd` (`DirectorId`);

--
-- Indexes for table `productivitylevel`
--
ALTER TABLE `productivitylevel`
  ADD PRIMARY KEY (`PLevelID`),
  ADD KEY `wefs` (`GeneralManagerId`);

--
-- Indexes for table `productmanufacturing`
--
ALTER TABLE `productmanufacturing`
  ADD PRIMARY KEY (`PManufacturingID`),
  ADD KEY `ccdcddd` (`PlantManagerId`),
  ADD KEY `dcs` (`ProductId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productshipping`
--
ALTER TABLE `productshipping`
  ADD PRIMARY KEY (`PShippingID`),
  ADD KEY `sascaasgga` (`ProductId`),
  ADD KEY `ascasc` (`PlantManagerId`);

--
-- Indexes for table `projectplan`
--
ALTER TABLE `projectplan`
  ADD PRIMARY KEY (`PlanID`),
  ADD KEY `sssfk` (`DirectorId`);

--
-- Indexes for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD PRIMARY KEY (`POrderID`),
  ADD KEY `asdasacc` (`SupplierId`),
  ADD KEY `asdasaav` (`PurchasingManagerId`);

--
-- Indexes for table `purchasingmanager`
--
ALTER TABLE `purchasingmanager`
  ADD PRIMARY KEY (`PurchasingManagerID`),
  ADD KEY `asdacss` (`ProfileID`);

--
-- Indexes for table `resourceorder`
--
ALTER TABLE `resourceorder`
  ADD PRIMARY KEY (`ROrderID`),
  ADD KEY `ff` (`DirectorId`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `dsaccc` (`FinancialOfficerId`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`SalaryID`),
  ADD KEY `xcvxcvnn` (`WorkerId`),
  ADD KEY `xcxcvvv` (`BID`),
  ADD KEY `xcvxcvrrf` (`TID`),
  ADD KEY `xcvxcvvnnb` (`PayrollId`),
  ADD KEY `svas` (`AID`),
  ADD KEY `eweg` (`OTID`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SalesID`),
  ADD KEY `ascascccccsssscc` (`productID`),
  ADD KEY `mm` (`BusinessManagerId`);

--
-- Indexes for table `specialbenefit`
--
ALTER TABLE `specialbenefit`
  ADD PRIMARY KEY (`SBenefitID`),
  ADD KEY `qwddfk` (`WorkerId`),
  ADD KEY `33wd` (`PayrollId`);

--
-- Indexes for table `stafffeedback`
--
ALTER TABLE `stafffeedback`
  ADD PRIMARY KEY (`SFeedbackID`),
  ADD KEY `loginid_fk2` (`login_id`),
  ADD KEY `sasfk` (`ChairmanId`);

--
-- Indexes for table `staffmeeting`
--
ALTER TABLE `staffmeeting`
  ADD PRIMARY KEY (`SMeetingID`),
  ADD KEY `ascascssss` (`PlantManagerId`);

--
-- Indexes for table `staffprofile`
--
ALTER TABLE `staffprofile`
  ADD PRIMARY KEY (`StaffProfileID`);

--
-- Indexes for table `stafperformance`
--
ALTER TABLE `stafperformance`
  ADD PRIMARY KEY (`SPerformanceID`),
  ADD KEY `fkk` (`ChairmanId`);

--
-- Indexes for table `storesmanager`
--
ALTER TABLE `storesmanager`
  ADD PRIMARY KEY (`StoresManagerID`),
  ADD KEY `ascascccccc` (`ProfileID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`),
  ADD KEY `ccxvvsv` (`PurchasingManagerId`);

--
-- Indexes for table `suppliercontract`
--
ALTER TABLE `suppliercontract`
  ADD PRIMARY KEY (`SContractID`),
  ADD KEY `fvfvdffk` (`SupplierId`),
  ADD KEY `sdvsdvyyk` (`PurchasingManagerId`);

--
-- Indexes for table `supplierissue`
--
ALTER TABLE `supplierissue`
  ADD PRIMARY KEY (`SIssueID`),
  ADD KEY `ascasciii` (`SupplerId`),
  ADD KEY `scaschhnn` (`PurchasingManagerId`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskID`),
  ADD KEY `dd` (`ChairmanId`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`TaxID`),
  ADD KEY `asccccc` (`PayrollId`),
  ADD KEY `asasccscasc` (`WorkerId`);

--
-- Indexes for table `technicalmanager`
--
ALTER TABLE `technicalmanager`
  ADD PRIMARY KEY (`TechnicalManagerID`),
  ADD KEY `uu` (`ProfileID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `dsdfkk` (`FinancialOfficerId`),
  ADD KEY `fasfas` (`AccountId`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`WorkerID`),
  ADD KEY `fsdfghjgh` (`HrManagerId`);

--
-- Indexes for table `workerschedules`
--
ALTER TABLE `workerschedules`
  ADD PRIMARY KEY (`WScheduleID`),
  ADD KEY `jhghhh` (`WorkerId`),
  ADD KEY `cascuytjhgmnb` (`HrManagerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `AccountID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `advancepayment`
--
ALTER TABLE `advancepayment`
  MODIFY `ADPaymentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `BID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buisnessdevelopmentmanager`
--
ALTER TABLE `buisnessdevelopmentmanager`
  MODIFY `BuisnessDevelopmentManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `buisnesstransaction`
--
ALTER TABLE `buisnesstransaction`
  MODIFY `BTransactionID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cadengineer`
--
ALTER TABLE `cadengineer`
  MODIFY `CADID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `chairman`
--
ALTER TABLE `chairman`
  MODIFY `ChairmanID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clientcontract`
--
ALTER TABLE `clientcontract`
  MODIFY `CContractID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clientlogin`
--
ALTER TABLE `clientlogin`
  MODIFY `ClientProfileID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clientnewsletter`
--
ALTER TABLE `clientnewsletter`
  MODIFY `ClientNewsLetterID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `clientprofile`
--
ALTER TABLE `clientprofile`
  MODIFY `ClientProfileID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clientreview`
--
ALTER TABLE `clientreview`
  MODIFY `CReviewID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `commercialexecutive`
--
ALTER TABLE `commercialexecutive`
  MODIFY `CommercialExecutiveID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `companyoperation`
--
ALTER TABLE `companyoperation`
  MODIFY `COperationID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customdesign`
--
ALTER TABLE `customdesign`
  MODIFY `CDesignID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dailyschedule`
--
ALTER TABLE `dailyschedule`
  MODIFY `DScheduleID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deliveryschedule`
--
ALTER TABLE `deliveryschedule`
  MODIFY `DScheduleID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departmentoperation`
--
ALTER TABLE `departmentoperation`
  MODIFY `DOperationID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `DirectorID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `EID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `factoryoperation`
--
ALTER TABLE `factoryoperation`
  MODIFY `FOperationID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `financialoffcier`
--
ALTER TABLE `financialoffcier`
  MODIFY `FinancialOfficerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `financialplan`
--
ALTER TABLE `financialplan`
  MODIFY `FPlanID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `generalmanager`
--
ALTER TABLE `generalmanager`
  MODIFY `GeneralManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hrmanager`
--
ALTER TABLE `hrmanager`
  MODIFY `HrManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `indirectorder`
--
ALTER TABLE `indirectorder`
  MODIFY `InOrderID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inventoryfinishedgood`
--
ALTER TABLE `inventoryfinishedgood`
  MODIFY `IFID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leaverequest`
--
ALTER TABLE `leaverequest`
  MODIFY `LRequestID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LoginID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `machinecondition`
--
ALTER TABLE `machinecondition`
  MODIFY `MCID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `machinery`
--
ALTER TABLE `machinery`
  MODIFY `MID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `MaterialID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materialdistribution`
--
ALTER TABLE `materialdistribution`
  MODIFY `MDistributionID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `materialinventory`
--
ALTER TABLE `materialinventory`
  MODIFY `MInventoryID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `materialrequirement`
--
ALTER TABLE `materialrequirement`
  MODIFY `MReqID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NId` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otpayment`
--
ALTER TABLE `otpayment`
  MODIFY `OTPaymentID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payrollexecutive`
--
ALTER TABLE `payrollexecutive`
  MODIFY `PayrollID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payrollrecord`
--
ALTER TABLE `payrollrecord`
  MODIFY `PRecordID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payslip`
--
ALTER TABLE `payslip`
  MODIFY `PSlipID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plantmanager`
--
ALTER TABLE `plantmanager`
  MODIFY `PlantManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `productdesign`
--
ALTER TABLE `productdesign`
  MODIFY `PDesignID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productionschedule`
--
ALTER TABLE `productionschedule`
  MODIFY `PScheduleID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `productivitylevel`
--
ALTER TABLE `productivitylevel`
  MODIFY `PLevelID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productmanufacturing`
--
ALTER TABLE `productmanufacturing`
  MODIFY `PManufacturingID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `productshipping`
--
ALTER TABLE `productshipping`
  MODIFY `PShippingID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectplan`
--
ALTER TABLE `projectplan`
  MODIFY `PlanID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  MODIFY `POrderID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchasingmanager`
--
ALTER TABLE `purchasingmanager`
  MODIFY `PurchasingManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `resourceorder`
--
ALTER TABLE `resourceorder`
  MODIFY `ROrderID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `RID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `SalaryID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SalesID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specialbenefit`
--
ALTER TABLE `specialbenefit`
  MODIFY `SBenefitID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stafffeedback`
--
ALTER TABLE `stafffeedback`
  MODIFY `SFeedbackID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staffmeeting`
--
ALTER TABLE `staffmeeting`
  MODIFY `SMeetingID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staffprofile`
--
ALTER TABLE `staffprofile`
  MODIFY `StaffProfileID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stafperformance`
--
ALTER TABLE `stafperformance`
  MODIFY `SPerformanceID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `storesmanager`
--
ALTER TABLE `storesmanager`
  MODIFY `StoresManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliercontract`
--
ALTER TABLE `suppliercontract`
  MODIFY `SContractID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplierissue`
--
ALTER TABLE `supplierissue`
  MODIFY `SIssueID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `TaxID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `technicalmanager`
--
ALTER TABLE `technicalmanager`
  MODIFY `TechnicalManagerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `TransactionID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `WorkerID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `workerschedules`
--
ALTER TABLE `workerschedules`
  MODIFY `WScheduleID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `financliaof` FOREIGN KEY (`FinancialOfficerId`) REFERENCES `financialoffcier` (`FinancialOfficerID`);

--
-- Constraints for table `advancepayment`
--
ALTER TABLE `advancepayment`
  ADD CONSTRAINT `asc123` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`),
  ADD CONSTRAINT `soo` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`);

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `ew` FOREIGN KEY (`FinancialManagerId`) REFERENCES `financialoffcier` (`FinancialOfficerID`);

--
-- Constraints for table `buisnessdevelopmentmanager`
--
ALTER TABLE `buisnessdevelopmentmanager`
  ADD CONSTRAINT `asdasccccc` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `cadengineer`
--
ALTER TABLE `cadengineer`
  ADD CONSTRAINT `pp` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `test5` FOREIGN KEY (`login_id`) REFERENCES `clientprofile` (`ClientProfileID`);

--
-- Constraints for table `chairman`
--
ALTER TABLE `chairman`
  ADD CONSTRAINT `12e12e` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `clientcontract`
--
ALTER TABLE `clientcontract`
  ADD CONSTRAINT `asckjk` FOREIGN KEY (`ClientId`) REFERENCES `clientprofile` (`ClientProfileID`),
  ADD CONSTRAINT `qwdqwd` FOREIGN KEY (`CommercialExecutiveId`) REFERENCES `commercialexecutive` (`CommercialExecutiveID`);

--
-- Constraints for table `clientnewsletter`
--
ALTER TABLE `clientnewsletter`
  ADD CONSTRAINT `test4` FOREIGN KEY (`ClientID`) REFERENCES `clientprofile` (`ClientProfileID`);

--
-- Constraints for table `clientprofile`
--
ALTER TABLE `clientprofile`
  ADD CONSTRAINT `test555` FOREIGN KEY (`login_id`) REFERENCES `clientlogin` (`ClientProfileID`);

--
-- Constraints for table `clientreview`
--
ALTER TABLE `clientreview`
  ADD CONSTRAINT `45t` FOREIGN KEY (`ChairmanId`) REFERENCES `chairman` (`ChairmanID`),
  ADD CONSTRAINT `test3` FOREIGN KEY (`ClientID`) REFERENCES `clientprofile` (`ClientProfileID`);

--
-- Constraints for table `commercialexecutive`
--
ALTER TABLE `commercialexecutive`
  ADD CONSTRAINT `asdkjh` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `companyoperation`
--
ALTER TABLE `companyoperation`
  ADD CONSTRAINT `test22` FOREIGN KEY (`DirectorId`) REFERENCES `director` (`DirectorID`);

--
-- Constraints for table `customdesign`
--
ALTER TABLE `customdesign`
  ADD CONSTRAINT `kkk` FOREIGN KEY (`CADEngineerId`) REFERENCES `cadengineer` (`CADID`);

--
-- Constraints for table `dailyschedule`
--
ALTER TABLE `dailyschedule`
  ADD CONSTRAINT `56` FOREIGN KEY (`GeneralManagerId`) REFERENCES `generalmanager` (`GeneralManagerID`);

--
-- Constraints for table `deliveryschedule`
--
ALTER TABLE `deliveryschedule`
  ADD CONSTRAINT `cadasc` FOREIGN KEY (`PlantManagerId`) REFERENCES `plantmanager` (`PlantManagerID`),
  ADD CONSTRAINT `test6` FOREIGN KEY (`Client_id`) REFERENCES `clientprofile` (`ClientProfileID`),
  ADD CONSTRAINT `tstt33v` FOREIGN KEY (`ChairmanId`) REFERENCES `chairman` (`ChairmanID`);

--
-- Constraints for table `departmentoperation`
--
ALTER TABLE `departmentoperation`
  ADD CONSTRAINT `qwdqwdwwaawawd` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DID`),
  ADD CONSTRAINT `test332` FOREIGN KEY (`DirectorId`) REFERENCES `director` (`DirectorID`);

--
-- Constraints for table `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `stid` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `sdffk` FOREIGN KEY (`FinancialOfficerId`) REFERENCES `financialoffcier` (`FinancialOfficerID`);

--
-- Constraints for table `factoryoperation`
--
ALTER TABLE `factoryoperation`
  ADD CONSTRAINT `234` FOREIGN KEY (`GeneralManagerId`) REFERENCES `generalmanager` (`GeneralManagerID`);

--
-- Constraints for table `financialoffcier`
--
ALTER TABLE `financialoffcier`
  ADD CONSTRAINT `2123` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `financialplan`
--
ALTER TABLE `financialplan`
  ADD CONSTRAINT `wwd` FOREIGN KEY (`FinancialOfficerId`) REFERENCES `financialoffcier` (`FinancialOfficerID`);

--
-- Constraints for table `generalmanager`
--
ALTER TABLE `generalmanager`
  ADD CONSTRAINT `333` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `hrmanager`
--
ALTER TABLE `hrmanager`
  ADD CONSTRAINT `qwdqd` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `indirectorder`
--
ALTER TABLE `indirectorder`
  ADD CONSTRAINT `xaxa` FOREIGN KEY (`CommercialExecutiveId`) REFERENCES `commercialexecutive` (`CommercialExecutiveID`);

--
-- Constraints for table `inventoryfinishedgood`
--
ALTER TABLE `inventoryfinishedgood`
  ADD CONSTRAINT `xassss` FOREIGN KEY (`PlantManagerId`) REFERENCES `plantmanager` (`PlantManagerID`);

--
-- Constraints for table `leaverequest`
--
ALTER TABLE `leaverequest`
  ADD CONSTRAINT `44` FOREIGN KEY (`GeneralManagerId`) REFERENCES `generalmanager` (`GeneralManagerID`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `testwqwc` FOREIGN KEY (`StaffProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `machinecondition`
--
ALTER TABLE `machinecondition`
  ADD CONSTRAINT `bbvvbb` FOREIGN KEY (`MachineID`) REFERENCES `machinery` (`MID`);

--
-- Constraints for table `machinery`
--
ALTER TABLE `machinery`
  ADD CONSTRAINT `ascccc` FOREIGN KEY (`PlantManagerId`) REFERENCES `plantmanager` (`PlantManagerID`);

--
-- Constraints for table `materialdistribution`
--
ALTER TABLE `materialdistribution`
  ADD CONSTRAINT `iiooii` FOREIGN KEY (`MaterialInvenID`) REFERENCES `materialinventory` (`MInventoryID`),
  ADD CONSTRAINT `ll` FOREIGN KEY (`StoresManagerId`) REFERENCES `storesmanager` (`StoresManagerID`);

--
-- Constraints for table `materialinventory`
--
ALTER TABLE `materialinventory`
  ADD CONSTRAINT `223322` FOREIGN KEY (`StoresManagerId`) REFERENCES `storesmanager` (`StoresManagerID`),
  ADD CONSTRAINT `illii` FOREIGN KEY (`MaterialID`) REFERENCES `material` (`MaterialID`);

--
-- Constraints for table `materialrequirement`
--
ALTER TABLE `materialrequirement`
  ADD CONSTRAINT `88i8i` FOREIGN KEY (`PurchasingManagerId`) REFERENCES `purchasingmanager` (`PurchasingManagerID`),
  ADD CONSTRAINT `ii` FOREIGN KEY (`SupplierId`) REFERENCES `supplier` (`SupplierID`),
  ADD CONSTRAINT `vvffvv` FOREIGN KEY (`MaterialInvenID`) REFERENCES `materialinventory` (`MInventoryID`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `asddd` FOREIGN KEY (`HrManagerId`) REFERENCES `hrmanager` (`HrManagerID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `test7` FOREIGN KEY (`login_id`) REFERENCES `clientprofile` (`ClientProfileID`);

--
-- Constraints for table `otpayment`
--
ALTER TABLE `otpayment`
  ADD CONSTRAINT `ccxcxc` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`),
  ADD CONSTRAINT `sdv22` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`);

--
-- Constraints for table `payrollrecord`
--
ALTER TABLE `payrollrecord`
  ADD CONSTRAINT `asccc` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`),
  ADD CONSTRAINT `ascvdsd` FOREIGN KEY (`SalaryID`) REFERENCES `salary` (`SalaryID`),
  ADD CONSTRAINT `xcvvv` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`);

--
-- Constraints for table `payslip`
--
ALTER TABLE `payslip`
  ADD CONSTRAINT `aa` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`),
  ADD CONSTRAINT `bb` FOREIGN KEY (`PRollRecordId`) REFERENCES `payrollrecord` (`PRecordID`),
  ADD CONSTRAINT `cc` FOREIGN KEY (`SalaryId`) REFERENCES `salary` (`SalaryID`),
  ADD CONSTRAINT `dd` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`);

--
-- Constraints for table `plantmanager`
--
ALTER TABLE `plantmanager`
  ADD CONSTRAINT `acsc` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `productdesign`
--
ALTER TABLE `productdesign`
  ADD CONSTRAINT `testzzazaz` FOREIGN KEY (`ProductID`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `vvv` FOREIGN KEY (`cadEngineerrId`) REFERENCES `cadengineer` (`CADID`);

--
-- Constraints for table `productionschedule`
--
ALTER TABLE `productionschedule`
  ADD CONSTRAINT `test` FOREIGN KEY (`DirectorId`) REFERENCES `director` (`DirectorID`);

--
-- Constraints for table `productivitylevel`
--
ALTER TABLE `productivitylevel`
  ADD CONSTRAINT `23477` FOREIGN KEY (`GeneralManagerId`) REFERENCES `generalmanager` (`GeneralManagerID`);

--
-- Constraints for table `productmanufacturing`
--
ALTER TABLE `productmanufacturing`
  ADD CONSTRAINT `qwcqwc` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `zzzxxxzzz` FOREIGN KEY (`PlantManagerId`) REFERENCES `plantmanager` (`PlantManagerID`);

--
-- Constraints for table `productshipping`
--
ALTER TABLE `productshipping`
  ADD CONSTRAINT `asdastt` FOREIGN KEY (`ProductId`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ttt` FOREIGN KEY (`PlantManagerId`) REFERENCES `plantmanager` (`PlantManagerID`);

--
-- Constraints for table `projectplan`
--
ALTER TABLE `projectplan`
  ADD CONSTRAINT `testaa` FOREIGN KEY (`DirectorId`) REFERENCES `director` (`DirectorID`);

--
-- Constraints for table `purchaseorder`
--
ALTER TABLE `purchaseorder`
  ADD CONSTRAINT `c` FOREIGN KEY (`PurchasingManagerId`) REFERENCES `purchasingmanager` (`PurchasingManagerID`),
  ADD CONSTRAINT `sadssadasd` FOREIGN KEY (`SupplierId`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `purchasingmanager`
--
ALTER TABLE `purchasingmanager`
  ADD CONSTRAINT `testpp` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `resourceorder`
--
ALTER TABLE `resourceorder`
  ADD CONSTRAINT `testz` FOREIGN KEY (`DirectorId`) REFERENCES `director` (`DirectorID`);

--
-- Constraints for table `revenue`
--
ALTER TABLE `revenue`
  ADD CONSTRAINT `2234123` FOREIGN KEY (`FinancialOfficerId`) REFERENCES `financialoffcier` (`FinancialOfficerID`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `bbv` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`),
  ADD CONSTRAINT `bbvv` FOREIGN KEY (`TID`) REFERENCES `tax` (`TaxID`),
  ADD CONSTRAINT `eweg` FOREIGN KEY (`OTID`) REFERENCES `otpayment` (`OTPaymentID`),
  ADD CONSTRAINT `sdfsdf` FOREIGN KEY (`BID`) REFERENCES `specialbenefit` (`SBenefitID`),
  ADD CONSTRAINT `svas` FOREIGN KEY (`AID`) REFERENCES `advancepayment` (`ADPaymentID`),
  ADD CONSTRAINT `ww` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `mm` FOREIGN KEY (`BusinessManagerId`) REFERENCES `buisnessdevelopmentmanager` (`BuisnessDevelopmentManagerID`),
  ADD CONSTRAINT `nn` FOREIGN KEY (`productID`) REFERENCES `products` (`id`);

--
-- Constraints for table `specialbenefit`
--
ALTER TABLE `specialbenefit`
  ADD CONSTRAINT `bbgdb` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`),
  ADD CONSTRAINT `sascsc` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`);

--
-- Constraints for table `stafffeedback`
--
ALTER TABLE `stafffeedback`
  ADD CONSTRAINT `stafffeedback_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `staffprofile` (`StaffProfileID`),
  ADD CONSTRAINT `test3345` FOREIGN KEY (`ChairmanId`) REFERENCES `chairman` (`ChairmanID`);

--
-- Constraints for table `staffmeeting`
--
ALTER TABLE `staffmeeting`
  ADD CONSTRAINT `xaxaax` FOREIGN KEY (`PlantManagerId`) REFERENCES `plantmanager` (`PlantManagerID`);

--
-- Constraints for table `stafperformance`
--
ALTER TABLE `stafperformance`
  ADD CONSTRAINT `test5556` FOREIGN KEY (`ChairmanId`) REFERENCES `chairman` (`ChairmanID`);

--
-- Constraints for table `storesmanager`
--
ALTER TABLE `storesmanager`
  ADD CONSTRAINT `qqwwweee` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `asacas` FOREIGN KEY (`PurchasingManagerId`) REFERENCES `purchasingmanager` (`PurchasingManagerID`);

--
-- Constraints for table `suppliercontract`
--
ALTER TABLE `suppliercontract`
  ADD CONSTRAINT `sasacqqqq` FOREIGN KEY (`PurchasingManagerId`) REFERENCES `purchasingmanager` (`PurchasingManagerID`),
  ADD CONSTRAINT `sss` FOREIGN KEY (`SupplierId`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `supplierissue`
--
ALTER TABLE `supplierissue`
  ADD CONSTRAINT `ascasceee` FOREIGN KEY (`SupplerId`) REFERENCES `supplier` (`SupplierID`),
  ADD CONSTRAINT `ascc` FOREIGN KEY (`PurchasingManagerId`) REFERENCES `purchasingmanager` (`PurchasingManagerID`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `ch` FOREIGN KEY (`ChairmanId`) REFERENCES `chairman` (`ChairmanID`);

--
-- Constraints for table `tax`
--
ALTER TABLE `tax`
  ADD CONSTRAINT `ascac333` FOREIGN KEY (`PayrollId`) REFERENCES `payrollexecutive` (`PayrollID`),
  ADD CONSTRAINT `nnbnb` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`);

--
-- Constraints for table `technicalmanager`
--
ALTER TABLE `technicalmanager`
  ADD CONSTRAINT `kk` FOREIGN KEY (`ProfileID`) REFERENCES `staffprofile` (`StaffProfileID`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `123d` FOREIGN KEY (`FinancialOfficerId`) REFERENCES `financialoffcier` (`FinancialOfficerID`),
  ADD CONSTRAINT `45tasdasd` FOREIGN KEY (`AccountId`) REFERENCES `account` (`AccountID`);

--
-- Constraints for table `worker`
--
ALTER TABLE `worker`
  ADD CONSTRAINT `asdascasccc` FOREIGN KEY (`HrManagerId`) REFERENCES `hrmanager` (`HrManagerID`);

--
-- Constraints for table `workerschedules`
--
ALTER TABLE `workerschedules`
  ADD CONSTRAINT `zvzxvz` FOREIGN KEY (`HrManagerId`) REFERENCES `hrmanager` (`HrManagerID`),
  ADD CONSTRAINT `zz` FOREIGN KEY (`WorkerId`) REFERENCES `worker` (`WorkerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
