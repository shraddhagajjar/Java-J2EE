-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2016 at 06:04 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mentor_me`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'shraddha', 'gajjar');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipecode` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `city`, `state`, `zipecode`) VALUES
(1, 'fremont', 'CA', 94538),
(2, 'seattle', 'WA', 98101),
(3, 'Cicago', 'Cicago', 12345),
(4, 'New Jersy', 'NJ', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `student_personal_details`
--

CREATE TABLE IF NOT EXISTS `student_personal_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `location_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `student_personal_details`
--

INSERT INTO `student_personal_details` (`id`, `firstname`, `lastname`, `username`, `password`, `location_id`) VALUES
(1, 'shraddha', 'gajjar', 'shraddha', 'gajjar', 1),
(32, 'sona', 'gajjar', 'sona', 'sona', 2),
(33, 'Dimple', 'patel', 'Dimple', 'Dimple', 2),
(34, 'vrunda', 'patel', 'vrunda', 'vrunda', 2),
(35, 'tithi', 'patel', 'tithi', 'tithi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_professional_details`
--

CREATE TABLE IF NOT EXISTS `student_professional_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL,
  `study_field` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `student_professional_details`
--

INSERT INTO `student_professional_details` (`id`, `student_id`, `subject_id`, `study_field`) VALUES
(1, 1, 1, 'Computer Sciense'),
(6, 32, 2, 'Interested in machine learning language '),
(7, 33, 2, 'Interested in machine learning language '),
(8, 34, 2, 'Networking'),
(9, 35, 3, 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `student_question_details`
--

CREATE TABLE IF NOT EXISTS `student_question_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `student_id` int(10) DEFAULT NULL,
  `subject_id` int(10) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `student_question_details`
--

INSERT INTO `student_question_details` (`id`, `student_id`, `subject_id`, `question`) VALUES
(1, 1, 1, 'I have issue while I setup oracle server.'),
(4, 1, 1, 'I have difficulty while running java class in cmd. '),
(5, 1, 1, 'I have difficulty while running java class in cmd. '),
(6, 1, 2, 'Algorithm is question.'),
(7, 34, 2, 'I have problem in implementing some algorithm.'),
(8, 35, 3, 'My Html Tag details');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(30) NOT NULL,
  `specification` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject_name`, `specification`) VALUES
(1, 'Java', 'Core, Swing, AWT, Nerworking, Threading,JSP, JSTL'),
(2, 'Algorithm', 'sorting, searching, linkedlist,Binary tree'),
(3, 'Web Design', 'Basically more focuce on design of site'),
(4, 'Basic Math', 'Standers 5th, 6th, 7th Math '),
(5, 'Advance Math Operati', 'Standers 8th, 9th, 10th Math ');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_answer_details`
--

CREATE TABLE IF NOT EXISTS `tutor_answer_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tutor_id` int(20) DEFAULT NULL,
  `question_id` int(20) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tutor_id` (`tutor_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tutor_answer_details`
--

INSERT INTO `tutor_answer_details` (`id`, `tutor_id`, `question_id`, `answer`) VALUES
(1, 5, 1, 'That You have because You might have different server working on that.'),
(2, 5, 4, 'ejdgkkdgj');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_details`
--

CREATE TABLE IF NOT EXISTS `tutor_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `subject_id` int(20) DEFAULT NULL,
  `area_of_interest` varchar(100) NOT NULL,
  `location_id` int(10) DEFAULT NULL,
  `phoneno` int(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `location_id` (`location_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tutor_details`
--

INSERT INTO `tutor_details` (`id`, `firstname`, `lastname`, `username`, `password`, `subject_id`, `area_of_interest`, `location_id`, `phoneno`) VALUES
(1, 'Thai', 'Iwagoshi', 'thai', 'thai', 1, 'Computer Science', 1, 1234567890),
(2, 'Aruna', 'Iyer', 'aruna', 'aruna', 1, 'science', 2, 1234567890),
(5, 'Shraddha', 'gajjar', 'shraddha', 'shraddha', 1, 'science', 2, 1234567890),
(6, 'pooja', 'gajjar', 'pooja', 'pooja', 2, 'science', 2, 1234567890),
(7, 'parini', 'gajjar', 'parini', '123', 4, 'Basic subject of 5th 6th 7th std', 3, 1234567890);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_personal_details`
--
ALTER TABLE `student_personal_details`
  ADD CONSTRAINT `student_personal_details_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `student_professional_details`
--
ALTER TABLE `student_professional_details`
  ADD CONSTRAINT `student_professional_details_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_personal_details` (`id`),
  ADD CONSTRAINT `student_professional_details_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`);

--
-- Constraints for table `student_question_details`
--
ALTER TABLE `student_question_details`
  ADD CONSTRAINT `student_question_details_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_personal_details` (`id`),
  ADD CONSTRAINT `student_question_details_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`);

--
-- Constraints for table `tutor_answer_details`
--
ALTER TABLE `tutor_answer_details`
  ADD CONSTRAINT `tutor_answer_details_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_details` (`id`),
  ADD CONSTRAINT `tutor_answer_details_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `student_question_details` (`id`);

--
-- Constraints for table `tutor_details`
--
ALTER TABLE `tutor_details`
  ADD CONSTRAINT `tutor_details_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `tutor_details_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
