-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2016 at 07:43 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `slgeotrain`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinates`
--

CREATE TABLE IF NOT EXISTS `coordinates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `coordinates`
--

INSERT INTO `coordinates` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Fort Railway station ', 'Colombo, Sri Lanka', 6.9335, 79.8505, 'Railway station'),
(2, 'Marada railway station', 'Sri Lanka', 6.9295, 79.8663, 'Railway station'),
(3, 'Dematagoda Railway Station', 'Sri Lanka', 6.9375, 79.8792, 'Railway station');

-- --------------------------------------------------------

--
-- Table structure for table `gps_info`
--

CREATE TABLE IF NOT EXISTS `gps_info` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `longitudes` float NOT NULL,
  `latitudes` float NOT NULL,
  `altitude` varchar(100) NOT NULL,
  `velocity` varchar(100) NOT NULL,
  `time stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `speed` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `gps_info`
--

INSERT INTO `gps_info` (`id`, `longitudes`, `latitudes`, `altitude`, `velocity`, `time stamp`, `speed`, `name`) VALUES
(1, 79.8967, 6.9887, '5,000 ft', '60 km/h North\r\n', '2016-05-05 09:56:27', '60 km/h', 'Hunupitiya'),
(2, 79.8946, 6.9611, '5,000 ft', '50 km/h North', '2016-05-04 22:38:06', '60 km/h', 'Kelaniya'),
(3, 79.8792, 6.9375, '500 ft', '60 km/h  North', '2016-05-04 21:47:06', '60 km/h', 'Dematagoda '),
(4, 79.8663, 6.9295, '50 ft', '60 km/h North', '2016-05-04 20:34:04', '65 km/h', 'Maradana'),
(5, 79.8505, 6.9335, '50', '60 km/h North', '2016-05-04 18:36:00', '40 km/h', 'Colombo ');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `setting_description` varchar(100) CHARACTER SET latin1 NOT NULL,
  `setting_type` enum('c','r','d','t') CHARACTER SET latin1 NOT NULL,
  `added_date` datetime NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_id`, `setting_name`, `setting_description`, `setting_type`, `added_date`) VALUES
(1, 'Dashboard Widgets', 'This is the setting to change the SLGeoTrain system dashboard widgets.', 'd', '2016-01-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE IF NOT EXISTS `statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(100) NOT NULL,
  `date` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `post_data` text NOT NULL,
  `ip` varchar(300) NOT NULL,
  `browser` varchar(300) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=414 ;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`statistics_id`, `user_id`, `action`, `date`, `uri`, `post_data`, `ip`, `browser`) VALUES
(1, 0, 'login_controller', 1452858993, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(2, 0, 'login_controller', 1452860933, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(3, 0, 'login_controller', 1452861033, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(4, 0, 'login_controller', 1452861056, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(5, 0, 'login_controller', 1452864225, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(6, 0, 'login_controller', 1452864330, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36'),
(7, 0, 'login_controller', 1452865532, '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(8, 0, 'login_controller', 1452865907, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(9, 0, 'authenticate_user', 1452866071, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(10, 0, 'authenticate_user', 1452866147, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(11, 0, 'index', 1452866420, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(12, 0, 'index', 1452866431, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(13, 0, 'index', 1452937308, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(14, 0, 'index', 1452937432, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(15, 0, 'login_controller', 1452939879, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(16, 0, 'authenticate_user', 1452940276, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(17, 0, 'index', 1452941357, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(18, 0, 'index', 1452941358, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(19, 0, 'logout', 1452941525, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(20, 0, 'index', 1452941525, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(21, 0, 'authenticate_user', 1452941540, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(22, 0, 'index', 1452941549, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(23, 0, 'index', 1452941549, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(24, 0, 'view_profile', 1452941577, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(25, 0, 'manage_users', 1452941587, 'user/user_controller/manage_users', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(26, 0, 'logout', 1452941595, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(27, 0, 'index', 1452941595, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(28, 0, 'authenticate_user', 1452942118, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(29, 0, 'index', 1452942124, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(30, 0, 'index', 1452942125, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(31, 0, 'index', 1452942148, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(32, 0, 'index', 1452942959, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(33, 0, 'logout', 1452943354, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(34, 0, 'index', 1452943355, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(35, 0, 'login_controller', 1453221505, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(36, 0, 'login_controller', 1453221536, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(37, 0, 'authenticate_user', 1453221572, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(38, 0, 'login_controller', 1453221579, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(39, 0, 'index', 1453221579, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(40, 0, 'index', 1453222245, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(41, 0, 'index', 1453222252, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(42, 0, 'authenticate_user', 1453222267, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(43, 0, 'index', 1453222275, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(44, 0, 'index', 1453222288, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(45, 0, 'authenticate_user', 1453222301, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(46, 0, 'index', 1453222308, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(47, 0, 'index', 1453222318, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(48, 0, 'authenticate_user', 1453222333, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(49, 0, 'index', 1453222342, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(50, 0, 'authenticate_user', 1453222373, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(51, 0, 'index', 1453222379, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(52, 0, 'index', 1453222379, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(53, 0, 'index', 1453223115, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(54, 0, 'authenticate_user', 1453223131, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(55, 0, 'index', 1453223138, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(56, 0, 'authenticate_user', 1453223157, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(57, 0, 'index', 1453223163, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(58, 0, 'authenticate_user', 1453223723, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(59, 0, 'index', 1453223729, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(60, 0, 'index', 1453223729, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(61, 0, 'index', 1453223772, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(62, 0, 'view_profile', 1453223786, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(63, 0, 'upload_user_cover_pic', 1453223838, 'user/user_profile_controller/upload_user_cover_pic', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(64, 0, 'update_user_cover_image', 1453223838, 'user/user_profile_controller/update_user_cover_image', '{"user_cover_image":"cover_pic1453223838-Desert.jpg","user_id":"1"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(65, 0, 'upload_user_avatar', 1453223844, 'user/user_profile_controller/upload_user_avatar', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(66, 0, 'update_user_avatar', 1453223844, 'user/user_profile_controller/update_user_avatar', '{"user_avatar":"user_avatar1453223844-Penguins.jpg","user_id":"1"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(67, 0, 'upload_user_cover_pic', 1453223854, 'user/user_profile_controller/upload_user_cover_pic', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(68, 0, 'update_user_cover_image', 1453223855, 'user/user_profile_controller/update_user_cover_image', '{"user_cover_image":"cover_pic1453223854-Chrysanthemum.jpg","user_id":"1"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(69, 0, 'view_profile', 1453223998, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(70, 0, 'view_profile', 1453224046, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(71, 0, 'view_profile', 1453224107, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(72, 0, 'view_profile', 1453224191, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(73, 0, 'view_profile', 1453224270, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(74, 0, 'view_profile', 1453224307, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(75, 0, 'view_profile', 1453224341, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(76, 0, 'view_profile', 1453224377, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(77, 0, 'logout', 1453224791, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(78, 0, 'index', 1453224791, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(79, 0, 'authenticate_user', 1453224814, 'login/login_controller/authenticate_user', '{"login_username":"sanali@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(80, 0, 'index', 1453224821, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(81, 0, 'index', 1453224821, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(82, 0, 'view_profile', 1453224827, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(83, 0, 'upload_user_cover_pic', 1453224843, 'user/user_profile_controller/upload_user_cover_pic', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(84, 0, 'update_user_cover_image', 1453224843, 'user/user_profile_controller/update_user_cover_image', '{"user_cover_image":"cover_pic1453224843-Hydrangeas.jpg","user_id":"2"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(85, 0, 'upload_user_avatar', 1453224848, 'user/user_profile_controller/upload_user_avatar', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(86, 0, 'update_user_avatar', 1453224848, 'user/user_profile_controller/update_user_avatar', '{"user_avatar":"user_avatar1453224848-Koala.jpg","user_id":"2"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(87, 0, 'view_profile', 1453224852, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(88, 0, 'logout', 1453224857, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(89, 0, 'index', 1453224858, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(90, 0, 'authenticate_user', 1453224871, 'login/login_controller/authenticate_user', '{"login_username":"lumesha@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(91, 0, 'index', 1453224877, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(92, 0, 'index', 1453224877, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(93, 0, 'view_profile', 1453224881, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(94, 0, 'upload_user_cover_pic', 1453224886, 'user/user_profile_controller/upload_user_cover_pic', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(95, 0, 'update_user_cover_image', 1453224886, 'user/user_profile_controller/update_user_cover_image', '{"user_cover_image":"cover_pic1453224886-Tulips.jpg","user_id":"4"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(96, 0, 'upload_user_avatar', 1453224891, 'user/user_profile_controller/upload_user_avatar', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(97, 0, 'update_user_avatar', 1453224891, 'user/user_profile_controller/update_user_avatar', '{"user_avatar":"user_avatar1453224891-Chrysanthemum.jpg","user_id":"4"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(98, 0, 'view_profile', 1453224892, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(99, 0, 'logout', 1453224897, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(100, 0, 'index', 1453224898, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(101, 0, 'authenticate_user', 1453224909, 'login/login_controller/authenticate_user', '{"login_username":"tharindi","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(102, 0, 'index', 1453224916, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(103, 0, 'authenticate_user', 1453224930, 'login/login_controller/authenticate_user', '{"login_username":"tharindi@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(104, 0, 'index', 1453224936, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(105, 0, 'index', 1453224937, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(106, 0, 'view_profile', 1453224940, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(107, 0, 'upload_user_cover_pic', 1453224946, 'user/user_profile_controller/upload_user_cover_pic', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(108, 0, 'update_user_cover_image', 1453224946, 'user/user_profile_controller/update_user_cover_image', '{"user_cover_image":"cover_pic1453224946-Lighthouse.jpg","user_id":"3"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(109, 0, 'upload_user_avatar', 1453224953, 'user/user_profile_controller/upload_user_avatar', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(110, 0, 'update_user_avatar', 1453224953, 'user/user_profile_controller/update_user_avatar', '{"user_avatar":"user_avatar1453224953-Hydrangeas.jpg","user_id":"3"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(111, 0, 'view_profile', 1453224954, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(112, 0, 'logout', 1453224959, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(113, 0, 'index', 1453224959, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(114, 0, 'authenticate_user', 1453224972, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(115, 0, 'index', 1453224979, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(116, 0, 'index', 1453224979, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(117, 0, 'view_profile', 1453224982, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(118, 0, 'logout', 1453225169, 'login/login_controller/logout', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(119, 0, 'index', 1453225170, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36'),
(120, 0, 'login_controller', 1454148247, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(121, 0, 'login_controller', 1454148269, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(122, 0, 'authenticate_user', 1454148293, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(123, 0, 'login_controller', 1454148309, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(124, 0, 'index', 1454148309, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(125, 0, 'index', 1454149258, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(126, 0, 'index', 1454149365, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(127, 0, 'index', 1454149393, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(128, 0, 'index', 1454149506, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(129, 0, 'index', 1454149532, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(130, 0, 'index', 1454149588, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(131, 0, 'index', 1454149647, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(132, 0, 'index', 1454149685, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(133, 0, 'index', 1454149721, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(134, 0, 'index', 1454149749, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(135, 0, 'index', 1454149815, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(136, 0, 'index', 1454149882, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(137, 0, 'index', 1454149933, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(138, 0, 'index', 1454149956, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(139, 0, 'index', 1454149970, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(140, 0, 'index', 1454149986, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(141, 0, 'index', 1454150088, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(142, 0, 'index', 1454150141, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(143, 0, 'index', 1454150163, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(144, 0, 'index', 1454150179, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(145, 0, 'index', 1454150198, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(146, 0, 'index', 1454150241, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(147, 0, 'index', 1454150371, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(148, 0, 'index', 1454150404, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(149, 0, 'index', 1454150585, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(150, 0, 'index', 1454150635, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(151, 0, 'index', 1454150713, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(152, 0, 'index', 1454150764, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(153, 0, 'index', 1454150811, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(154, 0, 'view_profile', 1454150921, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(155, 0, 'view_profile', 1454150927, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(156, 0, 'view_profile', 1454151021, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(157, 0, 'index', 1454151516, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(158, 0, 'index', 1454151548, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(159, 0, 'index', 1454151565, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(160, 0, 'index', 1454151634, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(161, 0, 'index', 1454151655, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(162, 0, 'index', 1454151708, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(163, 0, 'index', 1454151767, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(164, 0, 'index', 1454151836, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(165, 0, 'view_profile', 1454151841, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(166, 0, 'view_profile', 1454151902, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(167, 0, 'login_controller', 1454151929, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(168, 0, 'index', 1454151929, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(169, 0, 'index', 1454151933, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(170, 0, 'index', 1454152004, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(171, 0, 'index', 1454152066, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(172, 0, 'index', 1454152239, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(173, 0, 'index', 1454152392, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(174, 0, 'index', 1454563556, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(175, 0, 'authenticate_user', 1454563612, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(176, 0, 'index', 1454563704, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(177, 0, 'index', 1454563704, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(178, 0, 'index', 1454563835, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(179, 0, 'index', 1454563881, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(180, 0, 'index', 1454563976, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(181, 0, 'index', 1454564036, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(182, 0, 'index', 1454564106, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(183, 0, 'index', 1454564252, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(184, 0, 'index', 1454564283, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(185, 0, 'index', 1454564362, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(186, 0, 'index', 1454564432, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(187, 0, 'index', 1454564566, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(188, 0, 'index', 1454564735, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(189, 0, 'index', 1454564904, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(190, 0, 'index', 1454564909, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(191, 0, 'index', 1454565040, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(192, 0, 'index', 1454565100, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(193, 0, 'index', 1454565117, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(194, 0, 'index', 1454565259, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(195, 0, 'index', 1454565379, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(196, 0, 'index', 1454565450, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(197, 0, 'index', 1454565468, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(198, 0, 'index', 1454565681, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(199, 0, 'index', 1454565698, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(200, 0, 'index', 1454565742, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(201, 0, 'index', 1454571189, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(202, 0, 'index', 1454571386, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(203, 0, 'index', 1454571429, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(204, 0, 'index', 1454571450, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(205, 0, 'index', 1454571572, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(206, 0, 'index', 1454571632, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(207, 0, 'index', 1454575918, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(208, 0, 'index', 1454576028, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(209, 0, 'index', 1454576101, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(210, 0, 'index', 1454577060, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(211, 0, 'index', 1454577348, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(212, 0, 'index', 1454577513, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(213, 0, 'index', 1454577560, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(214, 0, 'index', 1454578560, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(215, 0, 'index', 1454578607, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(216, 0, 'index', 1454590468, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(217, 0, 'authenticate_user', 1454590493, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(218, 0, 'index', 1454590498, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(219, 0, 'index', 1454590499, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(220, 0, 'view_profile', 1454590539, 'user/user_profile_controller/view_profile', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(221, 0, 'index', 1454591075, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(222, 0, 'index', 1454591141, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(223, 0, 'index', 1454591493, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(224, 0, 'index', 1454592053, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(225, 0, 'index', 1454592069, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(226, 0, 'index', 1454592150, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(227, 0, 'earthquake_GeoJSONP.js', 1454592152, 'dashboard/dashboard_controller/earthquake_GeoJSONP.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(228, 0, 'index', 1454592439, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(229, 0, 'index', 1454592594, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(230, 0, 'index', 1454592642, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(231, 0, 'coordinates.js', 1454592645, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(232, 0, 'index', 1454592799, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(233, 0, 'coordinates.js', 1454592801, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(234, 0, 'index', 1454592844, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(235, 0, 'coordinates.js', 1454592846, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(236, 0, 'index', 1454593108, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(237, 0, 'coordinates.js', 1454593110, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(238, 0, 'index', 1454593119, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(239, 0, 'coordinates.js', 1454593120, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(240, 0, 'index', 1454593134, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(241, 0, 'coordinates.js', 1454593136, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(242, 0, 'index', 1454593154, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(243, 0, 'coordinates.js', 1454593156, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(244, 0, 'index', 1454593195, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(245, 0, 'index', 1454594441, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(246, 0, 'coordinates.js', 1454594443, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(247, 0, 'index', 1454594450, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(248, 0, 'coordinates.js', 1454594451, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(249, 0, 'index', 1454594463, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(250, 0, 'coordinates.js', 1454594464, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(251, 0, 'index', 1454595570, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(252, 0, 'index', 1454595645, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(253, 0, 'index', 1454595734, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(254, 0, 'coordinates.js', 1454595736, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(255, 0, 'index', 1454595895, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(256, 0, 'coordinates.js', 1454595897, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(257, 0, 'index', 1454596008, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(258, 0, 'coordinates.js', 1454596010, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(259, 0, 'index', 1454596166, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36');
INSERT INTO `statistics` (`statistics_id`, `user_id`, `action`, `date`, `uri`, `post_data`, `ip`, `browser`) VALUES
(260, 0, 'index', 1454596170, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(261, 0, 'index', 1454596185, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(262, 0, 'coordinates.js', 1454596187, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(263, 0, 'index', 1454596417, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(264, 0, 'coordinates.js', 1454596419, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(265, 0, 'index', 1454596456, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(266, 0, 'coordinates.js', 1454596458, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.97 Safari/537.36'),
(267, 0, 'login_controller', 1456408838, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(268, 0, 'authenticate_user', 1456408858, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(269, 0, 'login_controller', 1456408865, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(270, 0, 'index', 1456408865, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(271, 0, 'coordinates.js', 1456408874, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(272, 0, 'index', 1456409003, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(273, 0, 'coordinates.js', 1456409005, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(274, 0, 'index', 1456409643, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(275, 0, 'index', 1456409756, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(276, 0, 'coordinates.js', 1456409758, 'dashboard/dashboard_controller/coordinates.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(277, 0, 'index', 1456409852, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(278, 0, 'earthquake_GeoJSONP.js', 1456409853, 'dashboard/dashboard_controller/earthquake_GeoJSONP.js', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(279, 0, 'index', 1456410041, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(280, 0, 'index', 1456410082, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(281, 0, 'index', 1456410276, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(282, 0, 'index', 1456410312, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(283, 0, 'index', 1456410390, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(284, 0, 'index', 1456410506, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(285, 0, 'index', 1456410565, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(286, 0, 'index', 1456410611, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(287, 0, 'index', 1456410685, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(288, 0, 'index', 1456411693, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(289, 0, 'index', 1456427008, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(290, 0, 'authenticate_user', 1456427793, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(291, 0, 'index', 1456427799, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(292, 0, 'index', 1456427799, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(293, 0, 'index', 1456427839, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(294, 0, 'index', 1456427857, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(295, 0, 'index', 1456427873, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(296, 0, 'index', 1456485116, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(297, 0, 'authenticate_user', 1456485145, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(298, 0, 'index', 1456485151, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(299, 0, 'index', 1456485151, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(300, 0, 'index', 1456485187, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(301, 0, 'index', 1456485227, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(302, 0, 'index', 1456485303, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(303, 0, 'index', 1456485384, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(304, 0, 'index', 1456485530, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(305, 0, 'index', 1456486748, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(306, 0, 'index', 1456486760, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(307, 0, 'index', 1456486772, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(308, 0, 'index', 1456486915, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(309, 0, 'index', 1456487259, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(310, 0, 'index', 1456487432, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(311, 0, 'index', 1456487445, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(312, 0, 'index', 1456648937, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(313, 0, 'authenticate_user', 1456648963, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(314, 0, 'index', 1456648977, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(315, 0, 'index', 1456648977, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(316, 0, 'index', 1456648999, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(317, 0, 'index', 1456649031, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(318, 0, 'index', 1456649757, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(319, 0, 'index', 1456649775, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(320, 0, 'index', 1456649809, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(321, 0, 'index', 1456650008, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(322, 0, 'index', 1456650037, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(323, 0, 'index', 1456650057, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(324, 0, 'index', 1456650200, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(325, 0, 'index', 1456650220, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(326, 0, 'index', 1456650225, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(327, 0, 'index', 1456650230, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(328, 0, 'index', 1456650238, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(329, 0, 'index', 1456650550, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(330, 0, 'index', 1456650560, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(331, 0, 'index', 1456650566, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(332, 0, 'index', 1456650622, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(333, 0, 'index', 1456650658, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(334, 0, 'index', 1456650665, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(335, 0, 'index', 1456650725, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(336, 0, 'index', 1456650743, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(337, 0, 'index', 1456650789, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(338, 0, 'index', 1456650797, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(339, 0, 'index', 1456650861, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(340, 0, 'index', 1456650878, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(341, 0, 'index', 1456650885, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(342, 0, 'index', 1456650898, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(343, 0, 'index', 1456650954, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(344, 0, 'index', 1456650960, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(345, 0, 'index', 1456650967, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(346, 0, 'index', 1456650995, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(347, 0, 'index', 1456650999, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(348, 0, 'index', 1456651046, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(349, 0, 'index', 1456651072, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(350, 0, 'index', 1456651076, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(351, 0, 'index', 1456651117, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(352, 0, 'index', 1456651126, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(353, 0, 'index', 1456651145, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(354, 0, 'index', 1456651192, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(355, 0, 'index', 1456651198, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(356, 0, 'index', 1456651202, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(357, 0, 'index', 1456651248, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(358, 0, 'index', 1456651345, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(359, 0, 'index', 1456651352, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(360, 0, 'index', 1456651355, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(361, 0, 'index', 1456651358, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(362, 0, 'index', 1456651361, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(363, 0, 'index', 1456852357, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(364, 0, 'authenticate_user', 1456852378, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(365, 0, 'index', 1456852386, 'login/login_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(366, 0, 'index', 1456852386, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(367, 0, 'index', 1456852631, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(368, 0, 'index', 1456852644, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(369, 0, 'index', 1456852751, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(370, 0, 'index', 1456852756, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(371, 0, 'index', 1456852814, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(372, 0, 'index', 1456852820, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(373, 0, 'index', 1456852859, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(374, 0, 'index', 1456853284, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(375, 0, 'index', 1456853297, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(376, 0, 'index', 1456853332, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(377, 0, 'index', 1456855212, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(378, 0, 'index', 1456855221, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(379, 0, 'index', 1456855232, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(380, 0, 'index', 1456855288, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(381, 0, 'index', 1456855293, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(382, 0, 'index', 1456855300, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(383, 0, 'index', 1456855456, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(384, 0, 'index', 1456855461, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(385, 0, 'index', 1456855466, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(386, 0, 'index', 1456855470, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(387, 0, 'index', 1456855475, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(388, 0, 'index', 1456855479, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(389, 0, 'index', 1456855511, 'dashboard/dashboard_controller', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.116 Safari/537.36'),
(390, 0, 'login_controller', 1459406824, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(391, 0, 'login_controller', 1459408557, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(392, 0, 'authenticate_user', 1459446781, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(393, 0, 'authenticate_user', 1459446786, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(394, 0, 'authenticate_user', 1459446800, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(395, 0, 'authenticate_user', 1459446808, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(396, 0, 'authenticate_user', 1459446893, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(397, 0, 'authenticate_user', 1459447007, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36'),
(398, 0, 'login_controller', 1461951462, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(399, 0, 'authenticate_user', 1461952593, 'login/login_controller/authenticate_user', '{"login_username":"rachini9perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(400, 0, 'authenticate_user', 1461952600, 'login/login_controller/authenticate_user', '{"login_username":"rachini9perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(401, 0, 'authenticate_user', 1461952607, 'login/login_controller/authenticate_user', '{"login_username":"rachini9perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(402, 0, 'login_controller', 1461952615, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(403, 0, 'authenticate_user', 1461952631, 'login/login_controller/authenticate_user', '{"login_username":"rwe@dawed.edr","login_password":"qwe"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(404, 0, 'login_controller', 1461955395, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(405, 0, 'authenticate_user', 1461955422, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(406, 0, 'authenticate_user', 1461955687, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(407, 0, 'login_controller', 1462010213, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(408, 0, 'login_controller', 1462011246, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(409, 0, 'login_controller', 1462011311, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(410, 0, 'login_controller', 1462011333, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(411, 0, 'login_controller', 1462433004, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(412, 0, 'authenticate_user', 1462433042, 'login/login_controller/authenticate_user', '{"login_username":"rachini94perera@gmail.com","login_password":"abc123@#"}', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36'),
(413, 0, 'login_controller', 1462555883, '', '', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.87 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE IF NOT EXISTS `system` (
  `system_code` int(11) NOT NULL AUTO_INCREMENT,
  `system` varchar(100) NOT NULL,
  `dashboard_url` varchar(255) NOT NULL,
  PRIMARY KEY (`system_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`system_code`, `system`, `dashboard_url`) VALUES
(1, 'User', '/user/user_controller/manage_users');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(100) NOT NULL,
  `user_lname` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `user_job` varchar(100) NOT NULL,
  `user_avatar` varchar(100) DEFAULT NULL,
  `user_cover_image` varchar(400) DEFAULT NULL,
  `is_online` enum('Y','N') DEFAULT NULL COMMENT 'N',
  `del_ind` enum('1','0','2') NOT NULL COMMENT '0-deactivate,1 -active, 2-pending(Inserted User record from mail server)',
  `added_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fname`, `user_lname`, `user_password`, `user_email`, `user_type`, `user_job`, `user_avatar`, `user_cover_image`, `is_online`, `del_ind`, `added_date`, `updated_by`, `updated_date`) VALUES
(1, 'Rachini', 'Perera', 'c4961b067d274050e43e26beb9d7d19c', 'rachini94perera@gmail.com', '', 'Technical Officer', 'user_avatar1453223844-Penguins.jpg', 'cover_pic1453223854-Chrysanthemum.jpg', 'Y', '1', '2015-12-17 18:30:00', NULL, NULL),
(2, 'Sanali ', 'Weerasinghe', 'c4961b067d274050e43e26beb9d7d19c', 'sanali@gmail.com', '', 'Technical Officer', 'user_avatar1453224848-Koala.jpg', 'cover_pic1453224843-Hydrangeas.jpg', 'N', '1', '2015-12-17 18:30:00', NULL, NULL),
(3, 'Tharindi', 'Perera', 'c4961b067d274050e43e26beb9d7d19c', 'tharindi@gmail.com', '', 'Technical Officer', 'user_avatar1453224953-Hydrangeas.jpg', 'cover_pic1453224946-Lighthouse.jpg', 'N', '1', '2015-12-17 18:30:00', NULL, NULL),
(4, 'Lumesha', 'Perera', 'c4961b067d274050e43e26beb9d7d19c', 'lumesha@gmail.com', '', 'Technical Officer', 'user_avatar1453224891-Chrysanthemum.jpg', 'cover_pic1453224886-Tulips.jpg', 'N', '1', '2015-12-17 18:30:00', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
