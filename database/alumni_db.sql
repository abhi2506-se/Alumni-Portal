-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 11:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnus_bio`
--

CREATE TABLE `alumnus_bio` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `batch` year(4) NOT NULL,
  `course_id` int(30) NOT NULL,
  `email` varchar(250) NOT NULL,
  `connected_to` text NOT NULL,
  `avatar` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= Unverified, 1= Verified',
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnus_bio`
--

INSERT INTO `alumnus_bio` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `batch`, `course_id`, `email`, `connected_to`, `avatar`, `status`, `date_created`) VALUES
(17, 'Anshika', '', 'Singh', 'Female', '2023', 9, 'anshika.singh@acem.edu.in', 'SBI Bank', '1712404980_Anshu Photo.jpeg', 1, '2024-04-06'),
(18, 'Abhishek', '', '', 'Male', '2026', 1, 'abhisheksingh89208@gmail.com', 'Amazon', '1712409420_f32a6291 11.jpg', 1, '2024-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` int(30) NOT NULL,
  `company` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `job_title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `company`, `location`, `job_title`, `description`, `user_id`, `date_created`) VALUES
(1, 'IT Company', 'Home-Based', 'Web Developer', '&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. In tellus integer feugiat scelerisque varius morbi enim. Orci eu lobortis elementum nibh tellus molestie nunc. Vulputate ut pharetra sit amet aliquam id diam maecenas ultricies. Lacus sed viverra tellus in hac habitasse platea dictumst vestibulum. Eleifend donec pretium vulputate sapien nec. Enim praesent elementum facilisis leo vel fringilla est ullamcorper. Quam adipiscing vitae proin sagittis nisl rhoncus. Sed viverra ipsum nunc aliquet bibendum. Enim ut sem viverra aliquet eget sit amet tellus. Integer feugiat scelerisque varius morbi enim nunc faucibus.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Viverra justo nec ultrices dui. Leo vel orci porta non pulvinar neque laoreet. Id semper risus in hendrerit gravida rutrum quisque non tellus. Sit amet consectetur adipiscing elit ut. Id neque aliquam vestibulum morbi blandit cursus risus. Tristique senectus et netus et malesuada. Amet aliquam id diam maecenas ultricies mi eget mauris. Morbi tristique senectus et netus et malesuada. Diam phasellus vestibulum lorem sed risus. Tempor orci dapibus ultrices in. Mi sit amet mauris commodo quis imperdiet. Quisque sagittis purus sit amet volutpat. Vehicula ipsum a arcu cursus. Ornare quam viverra orci sagittis eu volutpat odio facilisis. Id volutpat lacus laoreet non curabitur. Cursus euismod quis viverra nibh cras pulvinar mattis nunc. Id aliquet lectus proin nibh nisl condimentum id venenatis. Eget nulla facilisi etiam dignissim diam quis enim lobortis. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet.&lt;/p&gt;', 3, '2020-10-15 14:14:27'),
(3, 'SBI Bank', 'Faridabad', 'Credit Department', 'Interested Candidates, Please DM me..', 21, '2024-03-24 20:39:36'),
(7, 'Amazon India', 'Bangalore', 'Software Engineer', 'Interested Candidates DM me.', 0, '2024-04-07 21:18:03'),
(8, 'Amazon India', 'Bangalore', 'DevOps Engineer', 'Interested Candidates DM me.', 24, '2024-04-07 21:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `about`) VALUES
(1, 'B.tech - (CSE)', 'Sample'),
(3, 'B.tech - Mechanical Engineering (ME)', ''),
(5, 'B.tech - Electronics Communication & Engineering (ECE)', ''),
(6, 'B.tech - Artificial Intelligence & Machine Learning (AIML)', ''),
(7, 'B.tech - Civil Engineering (CE)', ''),
(8, 'BCA (Data Science)', ''),
(9, 'BCA General', ''),
(10, 'BBA General', ''),
(11, 'BBA Financial Services & Banking', ''),
(12, 'MBA Administration', ''),
(13, 'B.tech - Computer Engineering (CE)', ''),
(14, 'B.tech - Computer Engineering [Specialization in Data Science]', ''),
(15, 'B.tech - Information Technology (IT)', ''),
(16, 'M.tech - Computer Engineering (CE)', ''),
(17, 'M.tech - Computer Science & Engineering (CSE)', ''),
(18, 'B.tech - Electrical Engineering (EE)', ''),
(19, 'B.tech - Electronic & Computer Engineering (ECE)', ''),
(20, 'B.tech - Environmental Engineering (EE)', ''),
(21, 'B.tech - Robotics and Artificial Intelligence', ''),
(22, 'B.Sc. - Animation & Multimedia', ''),
(23, 'B.Sc. - Physics', ''),
(24, 'B.Sc. - Mathematics', ''),
(25, 'B.Sc. - Mathematics & Computing', ''),
(26, 'B.Sc. - Chemistry', ''),
(27, 'B.Sc. - Life Sciences', ''),
(28, 'Bachelor or Social Work', ''),
(30, 'B.com', ''),
(31, 'M.tech - Mechanical Engineering (ME)', ''),
(32, 'M.tech - VLSI Design', ''),
(33, 'M.tech - Electronics & Communication Engineering (ECE)', ''),
(34, 'MBA - Executive', ''),
(35, 'MCA', ''),
(36, 'M.Sc. - Animation & Multimedia', ''),
(37, 'M.Sc. - Physics', ''),
(38, 'M.Sc. - Mathematics', ''),
(39, 'M.Sc. - Chemistry', ''),
(40, 'M.Sc. - Environmental Sciences', ''),
(41, 'M.Sc. - Biotechnology', ''),
(42, 'M.Sc. - Botany', ''),
(43, 'M.Sc. - Zoology', ''),
(44, 'M.Sc. - Microbiology', ''),
(45, 'M.A - Journalism & Mass Communication', ''),
(46, 'M.A - English', '');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `schedule` datetime NOT NULL,
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `schedule`, `banner`, `date_created`) VALUES
(9, 'Sports Meet', 'Sports Meet', '2024-04-17 14:00:00', '1712466540_Incomestatus1.JPG', '2024-04-05 11:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `event_commits`
--

CREATE TABLE `event_commits` (
  `id` int(30) NOT NULL,
  `event_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_commits`
--

INSERT INTO `event_commits` (`id`, `event_id`, `user_id`) VALUES
(1, 1, 3),
(2, 3, 7),
(3, 3, 1),
(4, 4, 9),
(5, 5, 11),
(6, 6, 12),
(7, 6, 1),
(8, 7, 13),
(9, 8, 15),
(10, 8, 14),
(11, 8, 21),
(12, 9, 21),
(13, 9, 24);

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` int(30) NOT NULL,
  `topic_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `topic_id`, `comment`, `user_id`, `date_created`) VALUES
(1, 3, 'Sample updated Comment', 3, '2020-10-15 15:46:03'),
(3, 3, 'Sample', 1, '2020-10-16 08:48:02'),
(5, 0, '', 1, '2020-10-16 09:49:34'),
(8, 1, 'qdjwoieyd', 5, '2024-03-01 12:35:00'),
(9, 4, 'Yes m interested&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 5, '2024-03-01 12:37:48'),
(10, 4, 'Ok send me ur number', 4, '2024-03-01 12:38:23'),
(11, 4, '9625338275', 5, '2024-03-01 12:38:42'),
(12, 22, 'Hello baby&amp;nbsp;', 21, '2024-03-24 20:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(30) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_topics`
--

INSERT INTO `forum_topics` (`id`, `title`, `description`, `user_id`, `date_created`) VALUES
(2, 'Sample Topic 2', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/span&gt;', 3, '2020-10-15 15:20:51'),
(3, 'Sample Topic 3', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Vivamus gravida nunc orci. Proin ut tristique odio. Nulla suscipit ipsum arcu, a luctus lorem vulputate et. Maecenas magna lorem, tempor id ultrices id, vehicula eu diam. Aliquam erat volutpat. Praesent in sem tincidunt, mattis odio nec, ultrices justo. Vivamus sit amet sapien ornare tortor porttitor congue vel et lorem. In interdum eget metus ut sagittis. In accumsan nec purus vel ornare. Quisque non scelerisque libero, et aliquam risus. Mauris tincidunt ullamcorper efficitur. Nullam venenatis in massa et elementum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In mollis, tortor sed pellentesque ultrices, sem sem interdum lectus, a laoreet nulla lacus at risus. Ut placerat orci at enim fermentum, eget pretium ante pharetra. Nam id nunc congue augue feugiat egestas.&lt;/span&gt;', 3, '2020-10-15 15:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(30) NOT NULL,
  `about` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `about`, `created`) VALUES
(9, 'Vivrti 2k23 \r\nPresents Akhil ', '2024-04-07 21:30:52'),
(10, 'Creative Events ar Vivrti Aarohan 2k24', '2024-04-07 21:31:45'),
(11, 'Mera Pelha Vote', '2024-04-07 21:34:46'),
(12, 'Happy Holi 2k24 Everyone ✌️😊', '2024-04-07 21:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Alumni Portal', 'info@acem.edu.in', '+ 91 8700682998', '1712506500_ACEM Logo.png', '&lt;p class=&quot;MsoNormal&quot; align=&quot;center&quot; style=&quot;text-align: center; margin-bottom: 5.25pt; line-height: normal;&quot;&gt;&lt;b&gt;&lt;i&gt;&lt;span style=&quot;font-size: 28px; font-family: Arial, sans-serif; color: rgb(0, 0, 255);&quot;&gt;&lt;span style=&quot;color:rgb(255,0,0);font-size: 28px; font-family: Arial, sans-serif;&quot;&gt;The&lt;/span&gt; ARAVALI COLLEGE OF ENGINEERING &amp;amp; MANAGEMENT&lt;/span&gt; &lt;span style=&quot;color:rgb(0,0,255);font-size: 28px; font-family: Arial, sans-serif;&quot;&gt;(ACEM)&lt;/span&gt; &lt;/i&gt;&lt;/b&gt;&lt;/p&gt;&lt;span style=&quot;font-size:18px;&quot;&gt;&lt;p class=&quot;MsoNormal&quot; align=&quot;center&quot; style=&quot;text-align: center; margin-bottom: 5.25pt; line-height: normal; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;i style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;b style=&quot;font-size: 18px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;color:rgb(255,0,0);font-size: 18px;&quot;&gt;Alumni Management Portal, Designed &amp;amp; Developed by Ak Groups. This Alumni portal is a web-based platform fostering connections and engagement between the college and its alumni network. This user-friendlyportal caters specifically to ACEM alumni, administrators, and students.&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 5.25pt; line-height: normal; font-size: 18px;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 5.25pt; line-height: normal; font-size: 18px;&quot;&gt;&lt;/p&gt;&lt;/span&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom: 5.25pt; line-height: normal; font-size: 18px;&quot;&gt;&lt;b&gt;&lt;b style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 18px;&quot;&gt;Key functionalities of the portal include:&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;&lt;o:p style=&quot;font-size: 18px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;ul type=&quot;disc&quot; style=&quot;font-size: 18px;&quot;&gt;&lt;b&gt; &lt;li class=&quot;MsoNormal&quot; style=&quot;line-height: normal; font-size: 18px;&quot;&gt;&lt;b style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;Centralized Alumni Network:&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;&amp;nbsp;ACEM     administrators can maintain and verify alumni data, encompassing contact     information, professional achievements, and educational backgrounds. This     streamlines record-keeping and facilitates efficient communication.&lt;o:p style=&quot;font-size: 18px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/li&gt; &lt;li class=&quot;MsoNormal&quot; style=&quot;line-height: normal; font-size: 18px;&quot;&gt;&lt;b style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;Enhanced Communication:&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;&amp;nbsp;The     portal bridges the gap between alumni and the college. Administrators can     share updates, organize events, and create group chats, fostering a sense     of community and keeping alumni informed.&lt;o:p style=&quot;font-size: 18px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/li&gt; &lt;li class=&quot;MsoNormal&quot; style=&quot;line-height: normal; font-size: 18px;&quot;&gt;&lt;b style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;Targeted Networking:&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;&amp;nbsp;The     platform allows alumni to connect with each other based on shared     interests, professional backgrounds, or graduation years. This facilitates     valuable networking opportunities within the ACEM alumni network,     promoting knowledge exchange and career growth.&lt;o:p style=&quot;font-size: 18px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/li&gt; &lt;li class=&quot;MsoNormal&quot; style=&quot;line-height: normal; font-size: 18px;&quot;&gt;&lt;b style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;Career Support:&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;&amp;nbsp;ACEM can leverage     the portal to offer career resources and services to alumni, such as job     postings, mentorship programs, and skill development workshops.&lt;o:p style=&quot;font-size: 18px;&quot;&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/li&gt; &lt;li class=&quot;MsoNormal&quot; style=&quot;line-height: normal; font-size: 18px;&quot;&gt;&lt;b style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;Community Building:&lt;/span&gt;&lt;/b&gt;&lt;span style=&quot;font-size: 18px; font-family: Arial, sans-serif;&quot;&gt;&amp;nbsp;The     portal fosters a sense of belonging and pride by providing a dedicated     space for alumni to reconnect with their alma mater, share experiences,     and contribute to the college&rsquo;s growth.&lt;/span&gt;&lt;/li&gt;&lt;/b&gt;&lt;/ul&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin-bottom:5.25pt;line-height:normal&quot;&gt;&lt;b&gt;&lt;span style=&quot;font-size: 10.5pt; font-family: Arial, sans-serif;&quot;&gt;&amp;nbsp;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;b&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Alumni officer, 3= alumnus',
  `auto_generated_pass` text NOT NULL,
  `alumnus_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `auto_generated_pass`, `alumnus_id`) VALUES
(1, 'ACEM Admin', 'acem.edu.in', '3816da83986891dd19a08ad59c3f9801', 1, '', 0),
(24, 'Anshika Singh', 'anshika.singh@acem.edu.in', 'd76f3d05cc9ac98f1f9160274a39fe33', 3, '', 17),
(25, 'IT Department', 'abhishek2_5', '77a2e571b96a7bfc37f27ba13fb0171c', 1, '', 0),
(26, 'Abhishek ', 'abhisheksingh89208@gmail.com', '4765aa5184b260e014fb3f6f795ba5c6', 3, '', 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_commits`
--
ALTER TABLE `event_commits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnus_bio`
--
ALTER TABLE `alumnus_bio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event_commits`
--
ALTER TABLE `event_commits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
