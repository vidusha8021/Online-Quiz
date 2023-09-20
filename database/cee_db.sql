-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 02:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(67, 'NETWORK PROGRAMMING', '2023-09-20 05:45:52'),
(68, 'JAVA', '2023-09-20 06:12:46'),
(69, 'PHP', '2023-09-20 06:12:59'),
(70, 'DATABASE RELATED', '2023-09-20 06:13:39');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(9, 'vidusha', '67', 'male', '2000-10-10', 'first year', 'vidusha8021@gmail.com', '8021', 'active'),
(10, 'Hiroshan Madusanka', '69', 'male', '1999-10-02', 'first year', 'hiroshan@gmail.com', '1234', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_answers`
--

INSERT INTO `exam_answers` (`exans_id`, `axmne_id`, `exam_id`, `quest_id`, `exans_answer`, `exans_status`, `exans_created`) VALUES
(295, 4, 12, 25, 'Diode, inverted, pointer', 'old', '2019-12-07 02:52:14'),
(296, 4, 12, 16, 'Data Block', 'old', '2019-12-07 02:52:14'),
(297, 6, 12, 18, 'Programmable Logic Controller', 'old', '2019-12-05 12:59:47'),
(298, 6, 12, 9, '1850s', 'old', '2019-12-05 12:59:47'),
(299, 6, 12, 24, '1976', 'old', '2019-12-05 12:59:47'),
(300, 6, 12, 14, 'Operating System', 'old', '2019-12-05 12:59:47'),
(301, 6, 12, 19, 'WAN (Wide Area Network)', 'old', '2019-12-05 12:59:47'),
(302, 6, 11, 28, 'fds', 'new', '2019-12-05 12:04:28'),
(303, 6, 11, 29, 'sd', 'new', '2019-12-05 12:04:28'),
(304, 6, 12, 15, 'David Filo & Jerry Yang', 'new', '2019-12-05 12:59:47'),
(305, 6, 12, 17, 'System file', 'new', '2019-12-05 12:59:47'),
(306, 6, 12, 10, 'Field', 'new', '2019-12-05 12:59:47'),
(307, 6, 12, 9, '1880s', 'new', '2019-12-05 12:59:47'),
(308, 6, 12, 21, 'Temporary file', 'new', '2019-12-05 12:59:47'),
(309, 4, 11, 28, 'q1', 'new', '2019-12-05 13:30:21'),
(310, 4, 11, 29, 'dfg', 'new', '2019-12-05 13:30:21'),
(311, 4, 12, 16, 'Data Block', 'new', '2019-12-07 02:52:14'),
(312, 4, 12, 20, 'Plancks radiation', 'new', '2019-12-07 02:52:14'),
(313, 4, 12, 10, 'Report', 'new', '2019-12-07 02:52:14'),
(314, 4, 12, 24, '1976', 'new', '2019-12-07 02:52:14'),
(315, 4, 12, 9, '1930s', 'new', '2019-12-07 02:52:14'),
(316, 8, 12, 18, 'Programmable Lift Computer', 'new', '2020-01-05 03:18:35'),
(317, 8, 12, 14, 'Operating System', 'new', '2020-01-05 03:18:35'),
(318, 8, 12, 20, 'Einstein oscillation', 'new', '2020-01-05 03:18:35'),
(319, 8, 12, 21, 'Temporary file', 'new', '2020-01-05 03:18:35'),
(320, 8, 12, 25, 'Diode, inverted, pointer', 'new', '2020-01-05 03:18:35'),
(321, 8, 11, 30, 'sd', 'new', '2023-09-19 07:00:30'),
(322, 8, 11, 28, 'q1', 'new', '2023-09-19 07:00:30'),
(323, 9, 25, 39, ' Distributed Network Service', 'old', '2023-09-20 06:11:06'),
(324, 9, 25, 40, 'UDP', 'new', '2023-09-20 06:11:06'),
(325, 9, 25, 35, 'IPAddress', 'new', '2023-09-20 06:11:06'),
(326, 9, 25, 33, 'DatagramSocket', 'new', '2023-09-20 06:11:06'),
(327, 9, 25, 32, ' HTTP', 'new', '2023-09-20 06:11:06'),
(328, 9, 25, 39, ' Data Network System', 'new', '2023-09-20 06:11:06'),
(329, 9, 25, 31, 'To create graphical user interfaces', 'new', '2023-09-20 06:11:06'),
(330, 9, 25, 34, 'They are used to create GUI elements.', 'new', '2023-09-20 06:11:06'),
(331, 9, 25, 38, 'SecureConnection', 'new', '2023-09-20 06:11:06'),
(332, 9, 25, 36, 'Uniform Resource Locator', 'new', '2023-09-20 06:11:06'),
(333, 9, 25, 37, 'By using multithreading or asynchronous programming', 'new', '2023-09-20 06:11:06'),
(334, 10, 29, 42, ' Hyperlink', 'new', '2023-09-20 06:34:05'),
(335, 10, 29, 49, 'One-to-many', 'new', '2023-09-20 06:34:05'),
(336, 10, 29, 48, ' Atomicity, Consistency, Isolation, Durability', 'new', '2023-09-20 06:34:05'),
(337, 10, 29, 50, 'NoSQL', 'new', '2023-09-20 06:34:05'),
(338, 10, 29, 44, ' MySQL', 'new', '2023-09-20 06:34:05'),
(339, 10, 29, 46, 'To uniquely identify each record in a table', 'new', '2023-09-20 06:34:05'),
(340, 10, 29, 45, 'To retrieve data from a database', 'new', '2023-09-20 06:34:05'),
(341, 10, 29, 47, 'WHERE', 'new', '2023-09-20 06:34:05'),
(342, 10, 29, 41, 'A data structure in programming', 'new', '2023-09-20 06:34:05'),
(343, 10, 29, 43, 'Structured Query Language', 'new', '2023-09-20 06:34:05'),
(344, 10, 28, 58, 'const MY_CONSTANT = 42;', 'new', '2023-09-20 06:55:36'),
(345, 10, 28, 57, 'To declare a variable.', 'new', '2023-09-20 06:55:36'),
(346, 10, 28, 51, 'Preprocessed Hypertext Processor', 'new', '2023-09-20 06:55:36'),
(347, 10, 28, 54, 'mysqli_connect()', 'new', '2023-09-20 06:55:36'),
(348, 10, 28, 55, 'It outputs data to the web page.', 'new', '2023-09-20 06:55:36'),
(349, 10, 28, 60, ' To iterate over the elements of an array or object', 'new', '2023-09-20 06:55:36'),
(350, 10, 28, 52, 'session_start()', 'new', '2023-09-20 06:55:36'),
(351, 10, 28, 59, 'delete_file()', 'new', '2023-09-20 06:55:36'),
(352, 10, 28, 53, '// This is a comment', 'new', '2023-09-20 06:55:36'),
(353, 10, 28, 56, ' $_POST', 'new', '2023-09-20 06:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(57, 9, 25, 'used'),
(58, 10, 29, 'used'),
(59, 10, 28, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(31, 25, '    What is the primary purpose of Java sockets in network programming?', 'To connect to databases', 'To create graphical user interfaces', 'To enable communication between devices over a network', 'To perform mathematical calculations', 'To enable communication between devices over a network', 'active'),
(32, 25, ' Which protocol provides a reliable, connection-oriented communication in Java socket programming?', 'UDP', ' HTTP', 'TCP', 'IP', 'TCP', 'active'),
(33, 25, 'In Java, which class is used to represent a server socket that listens for incoming connections?', 'Socket', 'ServerSocket', 'DatagramSocket', 'InetAddress', 'ServerSocket', 'active'),
(34, 25, 'What is the purpose of the InputStream and OutputStream classes in Java socket programming?', 'They are used to create GUI elements.', ' They handle HTTP requests and responses.', 'They read and write data to and from sockets.', 'They perform file I/O operations.', 'They read and write data to and from sockets.', 'active'),
(35, 25, '   Which Java class is used to represent an IP address?', 'InetAddress', 'SocketAddress', 'IPAddress', 'URL', 'InetAddress', 'active'),
(36, 25, 'What does the acronym URL stand for in the context of Java network programming?', 'Universal Resource Locator', 'Uniform Resource Library', 'Uniform Resource Locator', 'Universal Resource Link', 'Uniform Resource Locator', 'active'),
(37, 25, 'How can you handle multiple client connections in a Java server program?', 'By using the Scanner class', 'By creating a separate server program for each client', 'By using multithreading or asynchronous programming', ' By limiting the number of clients that can connect', 'By using multithreading or asynchronous programming', 'active'),
(38, 25, 'Which class is used to enable secure socket communication in Java network programming?', 'SecureSocket', 'SSLSocket', 'CryptoSocket', 'SecureConnection', 'SSLSocket', 'active'),
(39, 25, 'In Java, what does DNS stand for?', ' Data Network System', 'Domain Name System', ' Distributed Network Service', ' Dynamic Network Server', 'Domain Name System', 'active'),
(40, 25, ' Which protocol is often used for web-based communication in Java network programming?', 'FTP', 'SMTP', 'HTTP', 'UDP', 'HTTP', 'active'),
(41, 29, ' What is a database in the context of information technology?', 'A collection of related files', 'A physical storage device for data', 'A data structure in programming', 'A high-speed internet connection', 'A collection of related files', 'active'),
(42, 29, 'Which of the following is not a type of database model?', ' Relational', ' NoSQL', 'Object-Oriented', ' Hyperlink', ' Hyperlink', 'active'),
(43, 29, ' What is SQL an abbreviation for in the context of databases?', 'Structured Query Language', ' Simple Query Language', 'Structured Query Logic', 'System Query Language', 'Structured Query Language', 'active'),
(44, 29, ' Which of the following is a relational database management system (RDBMS)?', ' MongoDB', ' MySQL', 'Cassandra', 'Redis', ' MySQL', 'active'),
(45, 29, 'What is the primary purpose of the SELECT statement in SQL?', ' To insert data into a table', 'To update existing records', 'To retrieve data from a database', 'To delete data from a table', 'To retrieve data from a database', 'active'),
(46, 29, ' In a relational database, what is a primary key used for?', 'To sort data in ascending order', 'To uniquely identify each record in a table', 'To link two related tables', 'To encrypt sensitive data', 'To uniquely identify each record in a table', 'active'),
(47, 29, 'Which SQL clause is used to filter results based on a specified condition?', 'ORDER BY', 'GROUP BY', 'WHERE', 'HAVING', 'WHERE', 'active'),
(48, 29, ' What does \"ACID\" stand for in the context of database transactions?', ' Atomicity, Consistency, Isolation, Durability', ' Asynchronous, Concurrent, Isolated, Durable', 'Automated, Controlled, Integrated, Durable', 'Association, Configuration, Isolation, Documentation', ' Atomicity, Consistency, Isolation, Durability', 'active'),
(49, 29, '     What type of relationship is established between two tables when a foreign key is used to link them in a relational database?', ' One-to-one', 'One-to-many', 'Many-to-one', 'Many-to-many', 'One-to-many', 'active'),
(50, 29, ' Which database model is suitable for handling unstructured or semi-structured data, such as social media posts and documents?', 'Relational', 'NoSQL', 'Object-Oriented', 'Hierarchical', 'NoSQL', 'active'),
(51, 28, ' What does PHP stand for?', 'Personal Home Page', 'Preprocessed Hypertext Processor', 'Public Hyperlink Programming', 'Programming Hypertext Page', 'Preprocessed Hypertext Processor', 'active'),
(52, 28, ' In PHP, which of the following is used to start a session?', ' session_open()', 'session_start()', 'session_begin()', 'start_session()', 'session_start()', 'active'),
(53, 28, 'What is the correct way to comment a single line of code in PHP?', ' /* This is a comment */', '# This is a comment', '-- This is a comment', '// This is a comment', '// This is a comment', 'active'),
(54, 28, 'Which PHP function is used to connect to a MySQL database?', 'mysql_connect()', 'mysqli_connect()', ' pdo_connect()', 'db_connect()', 'mysqli_connect()', 'active'),
(55, 28, 'In PHP, what does the echo statement do?', ' It outputs text to the console.', 'It sends an HTTP request.', 'It outputs data to the web page.', 'It defines a variable.', 'It outputs data to the web page.', 'active'),
(56, 28, 'Which PHP superglobal array is used to retrieve form data after submitting an HTML form?', ' $_GET', ' $_POST', '$_REQUEST', ' $_FORM', ' $_POST', 'active'),
(57, 28, 'What is the purpose of the include statement in PHP?', 'To include a file and execute it if it exists.', 'To define a function.', 'To declare a variable.', 'To end the execution of a script.', 'To include a file and execute it if it exists.', 'active'),
(58, 28, ' What is the correct way to declare a constant in PHP?', 'define MY_CONSTANT = 42;', 'const MY_CONSTANT = 42;', 'constant MY_CONSTANT = 42;', ' var MY_CONSTANT = 42;', 'constant MY_CONSTANT = 42;', 'active'),
(59, 28, 'Which of the following PHP functions is used to delete a file?', 'delete_file()', 'remove_file()', 'unlink()', ' delete()', 'unlink()', 'active'),
(60, 28, ' What is the purpose of the foreach loop in PHP?', 'To define a function', 'To perform a specific action repeatedly', ' To iterate over the elements of an array or object', 'To conditionally execute code', ' To iterate over the elements of an array or object', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(25, 67, 'Network Programming', '20', 10, 'Here are 10 questions, and you have 20 minutes to complete all of them', '2023-09-20 06:21:24'),
(26, 68, 'Java ', '20', 10, 'Here are 10 questions, and you have 20 minutes to complete all of them.', '2023-09-20 06:18:50'),
(27, 69, 'PHP', '20', 10, 'Here are 10 questions, and you have 20 minutes to complete all of them', '2023-09-20 06:19:41'),
(28, 69, 'PHP', '20', 10, 'Here are 10 questions, and you have 20 minutes to complete all of them', '2023-09-20 06:19:41'),
(29, 70, 'Database', '20', 10, 'Here are 10 questions, and you have 20 minutes to complete all of them', '2023-09-20 06:20:11');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacks_tbl`
--

INSERT INTO `feedbacks_tbl` (`fb_id`, `exmne_id`, `fb_exmne_as`, `fb_feedbacks`, `fb_date`) VALUES
(10, 9, 'vidusha', 'Good', 'September 20, 2023'),
(11, 10, 'Hiroshan Madusanka', 'Best quiz', 'September 20, 2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
