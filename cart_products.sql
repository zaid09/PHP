-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2015 at 05:46 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `shipping` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `shipping`, `quantity`) VALUES
(1, 'Head First PHP & MySQL by Lynn Beighley and Michael Morrison', 'If you are ready to create web pages more complex than...', 29.47, 3.99, 20),
(2, 'PHP and MySQL web Development by Luke Welling and Laura Thomson', 'Master today''s best practices for succeeding with PHP 7 and...', 49.99, 5.99, 8),
(3, 'Secure Development for Mobile Apps: How to Design and Code Secure Mobile Applications with PHP and JavaScript by J.D.Glaser', 'The world is becoming increasingly mobile. Smartphones and tablets have...', 59.95, 6.99, 6),
(4, 'MySql Cookbook: Solutions for Database Developers and Administrators by Paul DuBois', 'Solutions for Database Developers and Administrators...', 79.99, 10.99, 5),
(5, 'Joomla 3 Expalined by Stephen Burge', 'The number one position is a suitable spot for this...', 39.99, 2.99, 15),
(6, 'Web Application Design and Implementation:Apache 2,PHP5,MySQL,JavaScript, and Linux/Unix by Steven A. Gabarro', 'This new edition offers readers the latest coverage on web...', 89.95, 10.99, 7),
(7, 'Building Web Apps with WordPress by Brian Messenlehner and Jason Coleman', 'WordPress as an Application Framework...', 34.99, 3.99, 12),
(8, 'JavaScript & JQuery: Interactive Front-End Web Development by Jon Duckett ', 'Inside it is beautifully designed, clearly laid out, and adds...', 39.99, 3.99, 10),
(9, 'Advanced Guide to PHP on IBM i by Kevin Schroeder', 'Working through many of the concepts and skills needed by...', 79.95, 9.99, 5),
(10, 'Beginning PHP and MySQL by Massimo Nardone and W Jason Gilmore', 'Beginning PHP and MySQL: From Novice to Professional,Fifth Edition...', 59.99, 7.99, 10),
(11, 'PHP and MySQL Web Development: A Beginner''s Guide by Marty Matthews', 'Essential Skills-Made Easy! PHP and MySQL Web Development: A Beginner''s...', 22.99, 1.99, 20),
(12, 'PHP:20 Lessons to SuccessfulWeb Development by Robin Nixon', 'Master PHP in 20 lessons -- online video tutorials include! Based on...', 40, 3.99, 12),
(13, 'Modern PHP by Josh Lockhart', 'PHP is experiencing a renaissance, though it may be difficult...', 29.99, 2.99, 15),
(14, 'Jump Start PHP Environment by Bruno Skvorc', 'Many entry level PHP developers want a quick path to...', 29.95, 2.79, 15),
(15, 'Web Programming with PHP and MySQl: A Practical Guide by Max Bramer', 'Introductory textbook covering all the main features of the web...', 59.99, 5.49, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
