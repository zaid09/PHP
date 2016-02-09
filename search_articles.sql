-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2015 at 05:47 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `searchengine`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `url` varchar(60) NOT NULL,
  `keywords` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `title`, `description`, `url`, `keywords`) VALUES
(1, 'PHP | Codecademy', 'In this course,we''ll cover how PHP objects work and learn how to create your own!...', 'www.codecademy.com/learn/php', 'php course learn code codecademy courses most popular web'),
(2, 'PHP Training Courses-Learn the World''s most popula', 'Flexible online courses taught by live PHP Certified instructors.Looking for the fastest path to learn PHP?...', 'www.zend.com/en/services/training', 'php course learn training courses zend most popular web'),
(3, 'PHP Course: Learn PHP Online at your own pace on U', 'Learn PHP online with MySQL and start developing Web Apps like a Pro...', 'www.udemy.com/phpmysql-for-beginners/', 'php course online learn udemy mysql code beginners'),
(4, 'PHP 5 Tutorial - W3Schools', 'PHP is a widely used,free and efficient alternative to competitors such as Microsoft...', 'www.w3schools.com/php/', 'php course online learn code beginners w3schools free'),
(5, 'PHP Tutorials| Lynda.com', 'every PHP online course include free video tutorials...view course page for PHP with MySQL Essential Training...', 'www.lynda.com/../282-0.html', 'php course training lynda mysql video tutorials free'),
(6, 'Free tutorials on HTML,CSS and PHP- Build your own...', 'Provides guides and help for developing of websites...', 'html.net/', 'php course online training free tutorials html css'),
(7, 'PHP free online courses and MOOCs| Class Central', 'Discover free online PHP course from top universities. Thousands of reviews written...', 'www.class-central.com/tag/php', 'php online course training free moocs top universities'),
(8, 'Coursera- Free Online Course from Top Universities', 'Take free online classe from 120+ top universities and educational organizations. We partner with schools like...', 'www.coursera.org/', 'php online course free tutorials coursera  top universities'),
(9, 'PHP for Azure - Microsoft Virtual Academy', 'Free, on demand MVA course: Extend your coding toolbox with easy to learn PHP, and see how to deploy it on...', 'mva.microsoft.com/en-US/training-co...', 'php online free course microsoft azure mva code'),
(10, 'Certified PHP/MySQL web developer Course- Silicon India', 'Online courses offer certified web development course at an affordable price. web developer course contains HTML...', 'www.siliconindia.com/online_courses...', 'php certified course online mysql html web developer silicon');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
