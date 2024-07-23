-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 10:35 AM
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
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE `attendance_details` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_details`
--

INSERT INTO `attendance_details` (`faculty_id`, `course_id`, `session_id`, `student_id`, `on_date`, `status`) VALUES
(3, 2, 3, 1, '2024-07-23', 'YES'),
(3, 2, 3, 1, '2024-07-24', 'YES'),
(3, 2, 3, 3, '2024-07-23', 'YES'),
(3, 2, 3, 3, '2024-07-24', 'YES'),
(3, 2, 3, 6, '2024-07-23', 'YES'),
(3, 2, 3, 6, '2024-07-24', 'YES'),
(3, 2, 3, 12, '2024-07-24', 'YES'),
(3, 2, 3, 15, '2024-07-23', 'YES'),
(3, 2, 3, 15, '2024-07-24', 'YES'),
(3, 2, 3, 17, '2024-07-23', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`faculty_id`, `course_id`, `session_id`) VALUES
(1, 1, 2),
(1, 2, 3),
(1, 3, 3),
(1, 4, 1),
(1, 4, 2),
(1, 6, 1),
(2, 2, 1),
(2, 2, 2),
(2, 2, 3),
(2, 3, 3),
(2, 6, 2),
(3, 2, 3),
(3, 3, 2),
(3, 3, 3),
(3, 4, 2),
(3, 5, 1),
(4, 1, 3),
(4, 2, 1),
(4, 3, 1),
(4, 4, 3),
(4, 5, 2),
(5, 2, 1),
(5, 3, 1),
(5, 3, 2),
(5, 4, 3),
(5, 5, 3),
(5, 6, 2),
(6, 1, 3),
(6, 2, 1),
(6, 3, 2),
(6, 4, 3),
(6, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `code`, `title`, `credit`) VALUES
(1, 'CO321', 'Database management system lab', 2),
(2, 'CO215', 'Design and Analysis of Algorithm', 3),
(3, 'CS112', 'Cryptography & Network Security', 4),
(4, 'CS670', 'ARTIFICIAL INTELLIGENCE', 4),
(5, 'CO432', 'THEORY OF COMPUTATION ', 3),
(6, 'CS673', 'Soft Computing ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `course_id`, `session_id`) VALUES
(1, 2, 2),
(1, 2, 3),
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 5, 2),
(1, 5, 3),
(1, 6, 2),
(1, 6, 3),
(2, 1, 3),
(2, 2, 3),
(2, 3, 1),
(2, 4, 2),
(2, 4, 3),
(2, 5, 1),
(2, 5, 2),
(2, 6, 1),
(3, 2, 2),
(3, 2, 3),
(3, 3, 2),
(3, 3, 3),
(3, 4, 1),
(3, 5, 3),
(3, 6, 1),
(3, 6, 2),
(4, 1, 2),
(4, 1, 3),
(4, 3, 1),
(4, 4, 1),
(4, 4, 2),
(4, 5, 2),
(5, 1, 2),
(5, 2, 2),
(5, 3, 1),
(5, 4, 3),
(5, 6, 1),
(5, 6, 3),
(6, 2, 3),
(6, 3, 1),
(6, 4, 2),
(6, 4, 3),
(6, 5, 1),
(6, 5, 2),
(6, 6, 1),
(6, 6, 2),
(6, 6, 3),
(7, 1, 1),
(7, 1, 3),
(7, 3, 2),
(7, 4, 1),
(7, 4, 2),
(7, 4, 3),
(7, 5, 2),
(7, 5, 3),
(8, 1, 1),
(8, 1, 2),
(8, 1, 3),
(8, 2, 1),
(8, 5, 1),
(8, 6, 2),
(9, 1, 3),
(9, 2, 1),
(9, 3, 2),
(9, 4, 1),
(9, 4, 2),
(9, 5, 3),
(9, 6, 2),
(10, 1, 2),
(10, 2, 1),
(10, 3, 1),
(10, 3, 3),
(10, 4, 1),
(10, 4, 2),
(10, 4, 3),
(11, 1, 1),
(11, 1, 3),
(11, 2, 2),
(11, 3, 1),
(11, 4, 2),
(11, 5, 2),
(11, 5, 3),
(11, 6, 1),
(12, 1, 2),
(12, 1, 3),
(12, 2, 3),
(12, 3, 2),
(12, 4, 1),
(12, 5, 1),
(12, 5, 2),
(12, 5, 3),
(12, 6, 1),
(13, 1, 3),
(13, 2, 1),
(13, 3, 2),
(13, 4, 2),
(13, 6, 1),
(13, 6, 3),
(14, 1, 2),
(14, 1, 3),
(14, 2, 3),
(14, 4, 1),
(14, 5, 1),
(14, 5, 2),
(14, 6, 1),
(14, 6, 3),
(15, 2, 2),
(15, 2, 3),
(15, 3, 1),
(15, 4, 1),
(15, 5, 2),
(15, 5, 3),
(15, 6, 2),
(16, 1, 1),
(16, 2, 1),
(16, 3, 2),
(16, 3, 3),
(16, 4, 1),
(16, 5, 2),
(16, 5, 3),
(16, 6, 2),
(17, 2, 1),
(17, 2, 2),
(17, 2, 3),
(17, 4, 1),
(17, 4, 2),
(17, 5, 3),
(18, 1, 3),
(18, 3, 1),
(18, 4, 1),
(18, 5, 2),
(18, 6, 1),
(18, 6, 2),
(18, 6, 3),
(19, 1, 3),
(19, 3, 1),
(19, 4, 1),
(19, 5, 2),
(19, 5, 3),
(19, 6, 2),
(19, 6, 3),
(20, 1, 3),
(20, 2, 2),
(20, 3, 1),
(20, 3, 2),
(20, 5, 1),
(20, 5, 3),
(20, 6, 1),
(20, 6, 2),
(21, 1, 2),
(21, 1, 3),
(21, 2, 1),
(21, 2, 2),
(21, 3, 1),
(21, 3, 3),
(21, 4, 2),
(21, 5, 1),
(21, 5, 3),
(22, 1, 2),
(22, 2, 1),
(22, 2, 2),
(22, 2, 3),
(22, 3, 1),
(22, 3, 3),
(22, 5, 2),
(22, 6, 1),
(22, 6, 3),
(23, 1, 1),
(23, 2, 1),
(23, 3, 1),
(23, 4, 2),
(23, 4, 3),
(23, 5, 2),
(23, 5, 3),
(23, 6, 2),
(23, 6, 3),
(24, 1, 1),
(24, 3, 3),
(24, 4, 1),
(24, 4, 2),
(24, 5, 2),
(24, 5, 3),
(24, 6, 1),
(24, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `user_name`, `name`, `password`) VALUES
(1, 'rkb', 'Ram Kanta Baishya', '123'),
(2, 'arindam', 'Arindam Karmakar', '123'),
(3, 'pal', 'Pallabi', '123'),
(4, 'anuj', 'Anuj Agarwal', '123'),
(5, 'mriganka', 'Mriganka Sekhar', '123'),
(6, 'manooj', 'Manooj Hazarika', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sent_email_details`
--

CREATE TABLE `sent_email_details` (
  `faculty_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `on_date` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sent_email_details`
--

INSERT INTO `sent_email_details` (`faculty_id`, `course_id`, `session_id`, `student_id`, `on_date`, `id`, `message`, `to_email`) VALUES
(3, 2, 3, 2, '2024-07-23', 3, 'Dear Emily Smith, you have shortage of attendance,less than 50%, in Design and Analysis of Algorithm taken by Pallabi. Please meet the corresponding faculty ASAP.', 'swarnalisingha76@gmail.com'),
(3, 2, 3, 14, '2024-07-23', 4, 'Dear Isabella Rodriguez, you have shortage of attendance,less than 50%, in Design and Analysis of Algorithm taken by Pallabi. Please meet the corresponding faculty ASAP.', 'swarnalisingha76@gmail.com'),
(3, 2, 3, 22, '2024-07-23', 5, 'Dear Emily Brown, you have shortage of attendance,less than 50%, in Design and Analysis of Algorithm taken by Pallabi. Please meet the corresponding faculty ASAP.', 'swarnalisingha76@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE `session_details` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `year`, `term`) VALUES
(1, 2023, 'ODD SEMESTER'),
(2, 2024, 'EVEN SEMESTER'),
(3, 2024, 'ODD SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `roll_no`, `name`, `email_id`) VALUES
(1, 'IT21001', 'Alexy Johnson', 'abc@gmail.com'),
(2, 'IT21002', 'Emily Smith', 'swarnalisingha76@gmail.com'),
(3, 'IT21003', 'Ryan Thompson', 'abc@gmail.com'),
(4, 'IT21004', 'Sophia Williams', 'abc@gmail.com'),
(5, 'IT21005', 'Daniel Brown', 'abc@gmail.com'),
(6, 'IT21006', 'Olivia Jones', 'abc@gmail.com'),
(7, 'IT21007', 'Matthew Davis', 'abc@gmail.com'),
(8, 'IT21008', 'Emma Miller', 'abc@gmail.com'),
(9, 'IT21009', 'David Wilson', 'abc@gmail.com'),
(10, 'IT21010', 'Sarah Taylor', 'abc@gmail.com'),
(11, 'IT21011', 'Michael Martinez', 'abc@gmail.com'),
(12, 'IT21012', 'Ava Anderson', 'abc@gmail.com'),
(13, 'CS21001', 'Liam Garcia', 'abc@gmail.com'),
(14, 'CS21002', 'Isabella Rodriguez', 'swarnalisingha76@gmail.com'),
(15, 'CS21003', 'Ethan Martinez', 'abc@gmail.com'),
(16, 'CS21004', 'Olivia Hernandez', 'abc@gmail.com'),
(17, 'CS21005', 'Mason Lopez', 'abc@gmail.com'),
(18, 'CS21006', 'Sophia Perez', 'abc@gmail.com'),
(19, 'CS21007', 'Alexander Gonzalez', 'abc@gmail.com'),
(20, 'CS21008', 'Ava Johnson', 'abc@gmail.com'),
(21, 'CS21009', 'William Martinez', 'abc@gmail.com'),
(22, 'CS21010', 'Emily Brown', 'swarnalisingha76@gmail.com'),
(23, 'CS21011', 'James Rodriguez', 'abc@gmail.com'),
(24, 'CS21012', 'Emma Hernandez', 'abc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`,`student_id`,`on_date`);

--
-- Indexes for table `course_allotment`
--
ALTER TABLE `course_allotment`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`student_id`,`course_id`,`session_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `sent_email_details`
--
ALTER TABLE `sent_email_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_details`
--
ALTER TABLE `session_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`term`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sent_email_details`
--
ALTER TABLE `sent_email_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `session_details`
--
ALTER TABLE `session_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
