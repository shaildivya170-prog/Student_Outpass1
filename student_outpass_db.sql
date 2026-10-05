-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2026 at 01:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_outpass_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `guards`
--

CREATE TABLE `guards` (
  `guard_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guards`
--

INSERT INTO `guards` (`guard_id`, `name`, `email`, `password`) VALUES
(1, 'Guard', 'guard@gemspolytechnic.edu.in', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `outpasses`
--

CREATE TABLE `outpasses` (
  `outpass_id` int(11) NOT NULL,
  `outpass_code` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `outpass_date` date NOT NULL,
  `out_time` time NOT NULL,
  `return_time` time NOT NULL,
  `destination` varchar(150) NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `rejection_reason` text DEFAULT NULL,
  `actual_out` datetime DEFAULT NULL,
  `actual_in` datetime DEFAULT NULL,
  `scan_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outpasses`
--

INSERT INTO `outpasses` (`outpass_id`, `outpass_code`, `student_id`, `outpass_date`, `out_time`, `return_time`, `destination`, `reason`, `status`, `rejection_reason`, `actual_out`, `actual_in`, `scan_count`) VALUES
(1, 'OP2026090707440350', 1, '2026-09-07', '11:13:00', '11:14:00', 'market', 'shoping', 'Completed', NULL, '2026-09-11 12:46:51', '2026-09-11 12:46:57', 2),
(2, 'OP2026090708111844', 1, '2026-09-07', '11:41:00', '11:44:00', 'market', 'shopping', 'Completed', NULL, '2026-09-11 12:46:16', '2026-09-11 12:46:27', 2),
(3, 'OP2026090708341936', 1, '2026-09-07', '12:04:00', '12:07:00', 'market', 'shopping', 'Completed', NULL, '2026-09-11 12:45:33', '2026-09-11 12:45:43', 2),
(4, 'OP2026090708440169', 1, '2026-09-07', '12:13:00', '12:14:00', 'market', 'shopping', 'Rejected', 'time not manage always going out', NULL, NULL, 0),
(5, 'OP2026090709232880', 1, '2026-09-07', '12:53:00', '12:55:00', 'market', 'shopping', 'Completed', NULL, '2026-09-11 12:43:25', '2026-09-11 12:44:59', 2),
(6, 'OP2026090710291621', 1, '2026-09-07', '13:58:00', '15:58:00', 'market', 'filling no well', 'Completed', NULL, '2026-09-07 14:05:17', '2026-09-07 14:05:31', 2),
(7, 'OP2026090711341094', 1, '2026-09-07', '15:03:00', '17:03:00', 'market', 'shopping', 'Completed', NULL, '2026-09-11 12:42:11', '2026-09-11 12:42:28', 2),
(8, 'OP2026090714585036', 1, '2026-09-07', '18:28:00', '20:30:00', 'market', 'shopping', 'Completed', NULL, '2026-09-11 12:40:06', '2026-09-11 12:40:30', 2),
(9, 'OP2026091106255718', 1, '2026-09-11', '09:55:00', '11:55:00', 'market', 'feeling not well', 'Completed', NULL, '2026-09-11 11:53:35', '2026-09-11 12:39:22', 2),
(10, 'OP2026091107335539', 1, '2026-09-11', '11:03:00', '12:04:00', 'market', 'feeling not well', 'Completed', NULL, '2026-09-11 11:18:54', '2026-09-11 11:51:42', 2),
(11, 'OP2026091108222436', 1, '2026-09-11', '11:52:00', '11:53:00', 'market', 'shopping', 'Completed', NULL, '2026-09-11 12:00:38', '2026-09-11 12:00:57', 2),
(12, 'OP2026091109073510', 1, '2026-09-11', '12:37:00', '12:40:00', 'market', 'shopping', 'Rejected', 'not allow', NULL, NULL, 0),
(13, 'OP20260911094046950', 1, '2026-09-11', '13:10:00', '13:15:00', 'market', 'not feeling well', 'Completed', NULL, '2026-09-11 13:17:36', '2026-09-11 13:17:57', 2),
(14, 'OP20260911094224819', 1, '2026-09-11', '13:12:00', '13:15:00', 'market', 'shoping', 'Completed', NULL, '2026-09-11 13:16:54', '2026-09-11 13:17:07', 2),
(15, 'OP20260911094301476', 1, '2026-09-11', '13:12:00', '13:15:00', 'market', 'shoping', 'Completed', NULL, '2026-09-11 13:15:13', '2026-09-11 13:15:46', 2),
(16, 'OP20260920123759672', 1, '2026-09-20', '04:05:00', '06:00:00', 'market', 'for shopping', 'Completed', NULL, '2026-09-20 16:11:06', '2026-09-20 16:11:40', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `student_code` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `student_code`, `gender`) VALUES
(1, 'divya kumari', 'STGEMS2483', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `wardens`
--

CREATE TABLE `wardens` (
  `warden_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wardens`
--

INSERT INTO `wardens` (`warden_id`, `name`, `gender`, `email`, `password`) VALUES
(3, 'priyanka kumari', 'Female', 'priyanka@gemspolytechnic.edu', '12345'),
(4, 'kumar sir', 'male', 'kumar@gemspolytechnic.edu.in', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guards`
--
ALTER TABLE `guards`
  ADD PRIMARY KEY (`guard_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `outpasses`
--
ALTER TABLE `outpasses`
  ADD PRIMARY KEY (`outpass_id`),
  ADD UNIQUE KEY `outpass_code` (`outpass_code`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_code` (`student_code`);

--
-- Indexes for table `wardens`
--
ALTER TABLE `wardens`
  ADD PRIMARY KEY (`warden_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guards`
--
ALTER TABLE `guards`
  MODIFY `guard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outpasses`
--
ALTER TABLE `outpasses`
  MODIFY `outpass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wardens`
--
ALTER TABLE `wardens`
  MODIFY `warden_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `outpasses`
--
ALTER TABLE `outpasses`
  ADD CONSTRAINT `outpasses_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
