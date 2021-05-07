-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2021 at 06:47 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androidlearning`
--
CREATE DATABASE IF NOT EXISTS `androidlearning` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `androidlearning`;

-- --------------------------------------------------------

--
-- Table structure for table `trans_mst`
--

DROP TABLE IF EXISTS `trans_mst`;
CREATE TABLE `trans_mst` (
  `ID` int(10) NOT NULL,
  `USER_ID` varchar(20) COLLATE utf8_bin NOT NULL,
  `MONTH_CODE` varchar(10) COLLATE utf8_bin NOT NULL,
  `YEAR` int(10) NOT NULL,
  `TRANS_CODE` varchar(50) COLLATE utf8_bin NOT NULL,
  `DEPOSIT_AMOUNT` double NOT NULL DEFAULT 0,
  `DEPOSIT_TYPE` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'MON',
  `REMARK` varchar(1024) COLLATE utf8_bin NOT NULL,
  `ACTFLG` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VERIFYFLG` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `CREATE_BY` varchar(50) COLLATE utf8_bin DEFAULT 'SYSTEM',
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UPDATE_BY` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT 'SYSTEM',
  `UPDATE_DATE` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_mst`
--

DROP TABLE IF EXISTS `user_mst`;
CREATE TABLE `user_mst` (
  `ID` int(10) NOT NULL,
  `USER_ID` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_TYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'MEM',
  `USER_ROLE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'GEN',
  `FULL_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MOBILE_NO` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GENDER` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `LAST_EDUCATIONS` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DESIGNATION` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PROFESSION` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `DOB` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IMAGE_ID` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ACTFLG` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'Y',
  `ADMIN_VERIFY_FLG` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'N',
  `TERMS_CONDITIONS` varchar(3) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `SERIAL` int(11) NOT NULL DEFAULT 5,
  `VERIFY_BY` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `user_type_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '2',
  `fb` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VERIFY_DATE` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `CREATE_BY` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `UPDATE_BY` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `UDATE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_mst`
--

INSERT INTO `user_mst` (`ID`, `USER_ID`, `USER_TYPE`, `USER_ROLE`, `FULL_NAME`, `MOBILE_NO`, `GENDER`, `LAST_EDUCATIONS`, `DESIGNATION`, `PROFESSION`, `ADDRESS`, `EMAIL`, `DOB`, `PASSWORD`, `IMAGE_ID`, `ACTFLG`, `ADMIN_VERIFY_FLG`, `TERMS_CONDITIONS`, `SERIAL`, `VERIFY_BY`, `user_type_id`, `fb`, `VERIFY_DATE`, `CREATE_BY`, `CREATE_DATE`, `UPDATE_BY`, `UDATE_DATE`) VALUES
(1, '000123', 'MEM', 'GEN', 'এনামুল হক', '01921687433', 'M', '', NULL, NULL, NULL, NULL, NULL, '123', '', 'Y', 'N', 'Y', 5, NULL, '2', '', NULL, '', '2021-05-07 04:36:57', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trans_mst`
--
ALTER TABLE `trans_mst`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_mst`
--
ALTER TABLE `user_mst`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trans_mst`
--
ALTER TABLE `trans_mst`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_mst`
--
ALTER TABLE `user_mst`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
