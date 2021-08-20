-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 02:53 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'Siddharth S', 'siddharth@26', '18-08-202111:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Ear-Nose-Throat (Ent) Specialist', 10, 8, 1000, '2020-11-26', '8:00 PM', '2020-11-29 14:20:45', 1, 0, '2020-12-14 05:46:08'),
(7, 'Ear-Nose-Throat (Ent) Specialist', 10, 9, 1000, '2020-12-05', '8:00 PM', '2020-12-05 13:18:40', 1, 0, '2020-12-05 13:20:40'),
(8, 'Dentist', 11, 9, 100, '2020-12-25', '6:45 PM', '2020-12-13 13:02:55', 0, 1, '2020-12-14 07:35:20'),
(9, 'Gynecologist/Obstetrician', 5, 9, 800, '2020-12-25', '6:45 PM', '2020-12-13 13:14:03', 1, 1, NULL),
(10, 'Dentist', 11, 9, 100, '2020-12-16', '11:15 AM', '2020-12-14 05:43:35', 1, 1, NULL),
(11, 'General Physician', 3, 9, 200, '2020-12-22', '12:15 PM', '2020-12-14 06:31:28', 0, 1, '2020-12-14 06:32:30'),
(12, 'General Physician', 3, 9, 200, '2020-12-25', '12:30 PM', '2020-12-14 06:57:29', 1, 1, NULL),
(13, 'General Physician', 6, 9, 250, '2020-12-22', '1:15 PM', '2020-12-14 07:34:31', 1, 1, NULL),
(14, 'General Physician', 3, 9, 200, '2020-12-28', '9:00 AM', '2020-12-17 15:28:55', 0, 1, '2020-12-17 15:30:04'),
(15, 'Ear-Nose-Throat (Ent) Specialist', 10, 11, 1000, '2020-12-23', '10:15 PM', '2020-12-17 16:42:08', 0, 1, '2020-12-17 16:51:01'),
(16, 'Ear-Nose-Throat (Ent) Specialist', 10, 11, 1000, '2020-12-23', '10:15 PM', '2020-12-17 16:43:08', 1, 1, NULL),
(17, 'Homeopath', 4, 11, 700, '2020-12-22', '12:15 PM', '2020-12-17 16:43:49', 0, 1, '2020-12-17 16:44:46'),
(18, 'General Physician', 3, 11, 200, '2020-12-23', '10:15 AM', '2020-12-17 16:50:27', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Ear-Nose-Throat (Ent) Specialist', 'Gaur Narayanan', 'Pondichery', '500', 8285703354, 'gaur@gmail.com', 'Gaur narayan', '2020-12-28 06:25:37', '2020-12-17 15:37:21'),
(2, 'Homeopath', 'Akash', 'Tutucorin', '600', 2147483647, 'akash@gmail.com', 'Akash', '2020-12-28 06:25:37', '2020-11-28 16:57:17'),
(3, 'General Physician', 'Shomnath', 'Chennai', '200', 8523699999, 'shome@gmail.com', 'Shomnath', '2020-12-28 06:25:37', '2020-11-28 16:57:21'),
(4, 'Homeopath', 'Micah solomon', 'Theni', '700', 25668888, 'micah@gmail.com', 'Micah', '2020-12-28 06:25:37', '2020-11-28 16:57:25'),
(5, 'Gynecologist/Obstetrician', 'Sanjaykumar S', 'Salem', '800', 442166644646, 'sanjay@gmail.com', 'sanjay', '2020-12-28 06:25:37', '2020-12-05 13:22:56'),
(6, 'General Physician', 'Siddharth S', 'Salem', '250', 45497964, 'siddharth@gmail.com', 'sidd', '2020-12-28 06:25:37', '2020-11-28 16:57:39'),
(7, 'Nephrology', 'Jeya Ganesh A V', 'Theni', '500', 852888888, 'ganesh@gmail.com', 'ganesh', '2020-12-28 06:25:37', '2020-11-28 16:57:46'),
(10, 'Ear-Nose-Throat (Ent) Specialist', 'Jeswin W', 'Nagarkovil', '1000', 7878787878, 'jeswin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-11-29 14:09:14', NULL),
(11, 'Dentist', 'Ganesh', 'Salem', '100', 8888888888, 'ganesh41@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-12-03 10:04:34', NULL),
(12, 'General Physician', 'Kanishk', 'Theni', '300', 9090909090, 'kanishk@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-12-17 15:39:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(21, NULL, 'sanjaykumar', 0x3a3a3100000000000000000000000000, '2020-11-29 13:57:02', NULL, 0),
(22, NULL, 'sanjay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 13:57:23', NULL, 0),
(23, NULL, 'Sanjaykumar S', 0x3a3a3100000000000000000000000000, '2020-11-29 14:01:38', NULL, 0),
(24, NULL, 'sanjay@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:02:07', NULL, 0),
(25, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:02:46', NULL, 0),
(26, NULL, 'gaur@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:03:47', NULL, 0),
(27, NULL, 'Jeya Ganesh A V', 0x3a3a3100000000000000000000000000, '2020-11-29 14:04:18', NULL, 0),
(28, NULL, 'ganesh@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:04:50', NULL, 0),
(29, NULL, 'Jeswin W', 0x3a3a3100000000000000000000000000, '2020-11-29 14:11:45', NULL, 0),
(30, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:12:14', '29-11-2020 07:43:36 PM', 1),
(31, NULL, 'jeswin', 0x3a3a3100000000000000000000000000, '2020-12-03 09:55:41', NULL, 0),
(32, NULL, 'jeswin', 0x3a3a3100000000000000000000000000, '2020-12-03 09:55:58', NULL, 0),
(33, NULL, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 09:56:17', NULL, 0),
(34, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 09:56:25', NULL, 0),
(35, 11, 'ganesh41@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 10:05:26', '03-12-2020 03:35:57 PM', 1),
(36, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-04 03:03:04', '04-12-2020 08:34:44 AM', 1),
(37, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-05 13:19:56', '05-12-2020 06:51:44 PM', 1),
(38, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 05:16:52', NULL, 0),
(39, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 05:17:19', '13-12-2020 10:48:43 AM', 1),
(40, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:23:43', NULL, 1),
(41, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 12:50:50', NULL, 0),
(42, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 12:50:55', NULL, 0),
(43, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 12:51:01', NULL, 1),
(44, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 13:00:18', NULL, 0),
(45, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 13:00:26', '13-12-2020 06:31:42 PM', 1),
(46, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 13:37:07', NULL, 1),
(47, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 05:44:28', '14-12-2020 11:20:05 AM', 1),
(48, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 06:33:34', '14-12-2020 12:06:00 PM', 1),
(49, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 06:58:46', '14-12-2020 12:30:42 PM', 1),
(50, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 07:35:59', '14-12-2020 01:08:25 PM', 1),
(51, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 15:10:33', '17-12-2020 08:44:47 PM', 1),
(52, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 15:31:19', '17-12-2020 09:05:34 PM', 1),
(53, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:45:11', '17-12-2020 10:16:49 PM', 1),
(54, 10, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:51:37', '17-12-2020 10:23:35 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2020-11-27 18:30:00', '2020-12-17 15:20:44'),
(2, 'General Physician', '2020-11-28 15:20:46', '2020-12-17 15:20:51'),
(3, 'Dermatologist', '2020-11-28 06:38:48', '2020-12-17 15:20:57'),
(4, 'Homeopath', '2020-11-28 06:39:26', '2020-12-17 15:21:03'),
(5, 'Ayurveda', '2020-11-28 06:39:51', '2020-12-17 15:21:08'),
(6, 'Dentist', '2020-11-28 06:40:08', '2020-12-17 15:21:21'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2020-11-28 06:41:18', '2020-12-17 15:21:34'),
(9, 'Demo test', '2020-11-28 07:37:39', '2020-12-17 15:21:42'),
(10, 'Bones Specialist demo', '2020-11-28 08:07:53', '2020-12-17 15:21:53'),
(12, 'Dermatologist', '2020-11-27 18:36:36', '2020-12-17 15:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(4, 'Sanjay Kumar', 'sanjay484641@gmail.com', 7598962691, ' Please reply me!', '2020-12-05 13:16:05', 'I will take action', '2020-12-05 13:25:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2020-11-06 04:20:07'),
(8, 6, '100', '110', '80', 'ds', 'fgdfs', '2020-12-14 07:00:28'),
(9, 6, '100', '110', '80', '98', 'Paracetamol', '2020-12-17 15:14:03'),
(10, 6, '100', '110', '80', '98', 'Combiflame', '2020-12-17 15:34:44'),
(11, 6, '100', '110', '80', '98', 'Paracetamol', '2020-12-17 16:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Siddharth S', 9432897433, 'sidharth@gmail.com', 'Male', 'salem', 18, 'She is diabetic patient', '2019-11-04 21:38:06', '2020-12-04 03:11:44'),
(6, 10, 'Jeya Ganesh A V', 9095647056, 'jeyaganesh@gmail.com', 'male', 'Bodi, Theni', 18, 'Cough.', '2020-12-14 05:48:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-28 15:41:03', NULL, 0),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-28 16:11:29', '28-11-2020 09:51:54 PM', 1),
(26, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:14:03', NULL, 0),
(27, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:14:24', NULL, 0),
(28, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:15:27', NULL, 0),
(29, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:15:52', NULL, 0),
(30, NULL, 'Saritha Pandey', 0x3a3a3100000000000000000000000000, '2020-11-29 14:16:27', NULL, 0),
(31, NULL, 'jeswin@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:16:33', NULL, 0),
(32, 8, 'sanjaykumar@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-29 14:20:08', NULL, 1),
(33, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 09:33:32', NULL, 0),
(34, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 09:53:04', '03-12-2020 03:25:10 PM', 1),
(35, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-03 10:06:19', '03-12-2020 03:37:30 PM', 1),
(36, 8, 'sanjaykumar@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-04 03:01:10', '04-12-2020 08:32:49 AM', 1),
(37, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-05 13:16:52', '05-12-2020 06:49:36 PM', 1),
(38, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 05:14:05', NULL, 0),
(39, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 05:14:22', NULL, 1),
(40, NULL, 'emerginginnovators', 0x3a3a3100000000000000000000000000, '2020-12-13 05:39:19', NULL, 0),
(41, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 05:39:25', '13-12-2020 11:52:53 AM', 1),
(42, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 06:23:15', '13-12-2020 11:53:29 AM', 1),
(43, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 12:44:02', '13-12-2020 06:20:30 PM', 1),
(44, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-13 13:01:59', NULL, 1),
(45, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 05:41:49', NULL, 1),
(46, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 05:42:59', '14-12-2020 11:14:03 AM', 1),
(47, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 06:30:33', '14-12-2020 12:03:14 PM', 1),
(48, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 06:56:38', '14-12-2020 12:28:25 PM', 1),
(49, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-14 07:33:39', '14-12-2020 01:05:43 PM', 1),
(50, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 15:07:11', '17-12-2020 08:39:34 PM', 1),
(51, 9, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 15:27:41', '17-12-2020 09:00:30 PM', 1),
(52, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:33:29', NULL, 0),
(53, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:33:34', NULL, 0),
(54, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:33:40', NULL, 0),
(55, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:33:47', NULL, 0),
(56, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:33:53', NULL, 0),
(57, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:34:04', NULL, 0),
(58, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:34:31', NULL, 0),
(59, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:34:37', NULL, 0),
(60, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:34:54', NULL, 0),
(61, NULL, 'sanjay484641@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:35:39', NULL, 0),
(62, NULL, 'emerginginnovators', 0x3a3a3100000000000000000000000000, '2020-12-17 16:35:42', NULL, 0),
(63, NULL, 'sanjaykumar@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:39:35', NULL, 0),
(64, NULL, 'sanjaykumar@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:40:18', NULL, 0),
(65, 11, 'sanjaykumars@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:41:17', '17-12-2020 10:14:56 PM', 1),
(66, 11, 'sanjaykumars@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-17 16:49:49', '17-12-2020 10:21:16 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(8, 'Sanjay', 'Salem', 'Salem', 'male', 'sanjaykumar@gmail.com', '12345678', '2020-11-29 14:19:49', '2020-12-17 16:38:29'),
(10, 'Jeya Ganesh A V', 'Bodi', 'Theni', 'male', 'avjg@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-12-13 12:59:05', NULL),
(11, 'Sanjaykumar S', 'Salem', 'Salem', 'male', 'sanjaykumars@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2020-12-17 16:41:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
