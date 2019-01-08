-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2019 at 05:16 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aurthor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `description`, `url`, `tags`, `keyword`, `aurthor`) VALUES
(1, 'CodeIgniter Features', 'Some of the important features of CodeIgniter are listed below −\r\n\r\nModel-View-Controller Based System\r\n\r\nExtremely Light Weight\r\n\r\nFull Featured database classes with support for several platforms.\r\n\r\nQuery Builder Database Support\r\n\r\nForm and Data Validation\r\n\r\nSecurity and XSS Filtering\r\n\r\nSession Management\r\n\r\nEmail Sending Class. Supports Attachments, HTML/Text email, multiple protocols (sendmail, SMTP, and Mail) and more.\r\n\r\nImage Manipulation Library (cropping, resizing, rotating, etc.). Supports GD, ImageMagick, and NetPBM\r\n\r\nFile Uploading Class\r\n\r\nFTP Class\r\n\r\nLocalization\r\n\r\nPagination\r\n\r\nData Encryption\r\n\r\nBenchmarking\r\n\r\nFull Page Caching\r\n\r\nError Logging\r\n\r\nApplication Profiling\r\n\r\nCalendaring Class\r\n\r\nUser Agent Class\r\n\r\nZip Encoding Class\r\n\r\nTemplate Engine Class\r\n\r\nTrackback Class\r\n\r\nXML-RPC Library\r\n\r\nUnit Testing Class\r\n\r\nSearch-engine Friendly URLs\r\n\r\nFlexible URI Routing\r\n\r\nSupport for Hooks and Class Extensions\r\n\r\nLarge library of “helper” functions', 'Application\r\nAs the name indicates the Application folder contains all the code of your application that you are building. This is the folder where you will develop your project. The Application folder contains several other folders, which are explained b', 'http://localhost/codeigniter/posts/edit/1', 'Codeigniter', 'Crud', 'Hasan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
