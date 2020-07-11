-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2020 at 05:53 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `media_sosial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '896426ccee4d7efad6da07571083d0a4'),
(2, 'dont_delete', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `blocked`
--

CREATE TABLE IF NOT EXISTS `blocked` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
`id` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `read` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `from`, `to`, `message`, `read`, `time`) VALUES
(10, 23, 20, 'Hi Panji', 1, '2020-06-22 07:51:36'),
(11, 20, 23, 'Hi juga Panji', 1, '2020-06-22 07:51:45'),
(12, 20, 22, 'hi', 0, '2020-07-01 06:45:27'),
(13, 20, 22, 'test', 0, '2020-07-01 06:46:23'),
(14, 20, 21, 'haiiii lama ga ketemu ni semenjak covid', 1, '2020-07-02 14:49:08'),
(15, 21, 20, 'iya ni kita diharuskan untuk stay at home', 1, '2020-07-02 14:49:54'),
(16, 20, 21, 'wah iyaaa.. ditambah pada saat wfh gini tugas kuliah sangat menumpuk', 1, '2020-07-02 14:50:19'),
(17, 21, 20, 'gapapa itulah kewajiban kita sebagai mahasiswa ! keep Fighting !', 1, '2020-07-02 14:50:36'),
(18, 25, 20, 'assalammualaikum', 1, '2020-07-04 16:39:53'),
(19, 20, 25, 'wa''alaikumsalamm', 1, '2020-07-04 16:40:10'),
(20, 25, 20, 'apa kabar bro?', 1, '2020-07-04 16:40:18'),
(21, 20, 25, 'alhamdulillah baik kabarnya, gimana sendirinya?', 1, '2020-07-04 16:40:34'),
(22, 25, 20, 'alhamdulillah baik juga', 1, '2020-07-04 16:40:52'),
(23, 21, 25, 'saya punya tenda dan tas carrier 65L', 1, '2020-07-04 16:51:31'),
(24, 25, 21, 'boleh pinjam mba', 0, '2020-07-04 16:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `uid`, `mid`, `message`, `time`) VALUES
(1, 20, 1, 'wui mau dong kaka', '2020-06-13 12:47:57'),
(2, 21, 2, 'siap kawannnn!!!!', '2020-06-15 02:24:40'),
(3, 21, 6, 'gue ada', '2020-06-15 07:11:34'),
(4, 20, 6, 'minjem dong', '2020-06-15 07:11:48'),
(5, 21, 6, 'pc aja yaaa', '2020-06-15 07:11:59'),
(6, 22, 7, 'eh gue punya ni', '2020-06-15 07:14:25'),
(7, 21, 7, 'temen gue boleh ga minjem?', '2020-06-15 07:14:41'),
(8, 22, 7, 'boleh boleh, pake aja.... ', '2020-06-15 07:15:26'),
(9, 20, 39, 'bro saya ada bisa dm saya !', '2020-07-04 16:49:01');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
`id` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `by` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post`, `by`, `time`) VALUES
(1, 1, 20, '2020-06-13 12:47:52'),
(2, 2, 21, '2020-06-15 02:24:29'),
(3, 3, 20, '2020-06-15 02:49:44'),
(4, 6, 21, '2020-06-15 07:11:37'),
(5, 7, 20, '2020-06-17 08:36:31'),
(6, 14, 20, '2020-06-22 07:56:18'),
(7, 37, 25, '2020-07-04 16:46:16');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(12) NOT NULL,
  `uid` int(32) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) CHARACTER SET latin1 NOT NULL,
  `value` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `public` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `uid`, `message`, `tag`, `type`, `value`, `time`, `public`, `likes`) VALUES
(1, 21, 'dijual carrier murah meriah\r\nharga 300k nego!\r\nminat DM!', '', 'picture', '686913899_594239963_105582355.jpg', '2020-06-13 12:47:42', 1, 1),
(2, 20, 'lagi psbb kek gini saya mengurunkan niat untuk traveling, semoga teman teman bisa lebih bersabar ya!\r\n\r\n#dirumahaja', '', '', '', '2020-06-15 02:22:52', 1, 1),
(3, 21, 'kita kasih semangat untuk dokter, petugas medis yang ada di garda terdepan.\r\n\r\n#dirumahaja', '', '', '', '2020-06-15 02:24:12', 1, 1),
(5, 20, 'kita kasih semangat untuk dokter, petugas medis yang ada di garda terdepan.\r\n\r\n#dirumahaja', '', 'shared', '3:karina', '2020-06-15 02:49:54', 1, 0),
(6, 20, 'temen temen semuanya, saya ingin minjem tenda dong.. untuk gambar check di bawah', '', 'picture', '318105423_848551642_912001680.jpg', '2020-06-15 07:11:14', 1, 1),
(7, 21, 'temen temen semuanya, saya ingin minjem tenda dong.. untuk gambar check di bawah', '', 'shared', '6:panji', '2020-06-15 07:12:27', 1, 1),
(11, 22, 'temen temen semuanya, saya ingin minjem tenda dong.. untuk gambar check di bawah', '', 'shared', '6:panji', '2020-06-15 07:24:17', 1, 0),
(12, 22, '', '', 'movie', 'Jumanji', '2020-06-15 07:24:30', 1, 0),
(13, 23, 'temen temen semuanya, saya ingin minjem tenda dong.. untuk gambar check di bawah', '', 'shared', '6:panji', '2020-06-22 07:53:11', 1, 0),
(14, 23, 'saya abis mengunjungi gunung mahameru, tempatnya asik dan pemandangannya bagus\r\n', '', 'picture', '1825926944_965152540_255467015.jpg', '2020-06-22 07:55:42', 1, 1),
(26, 23, 'Ayo teman teman join saya ', '', 'visited', 'Gunung Mahameru', '2020-06-28 11:49:53', 1, 0),
(29, 23, '', '', 'camp', 'Tenda (semua merek) ukuran 65L', '2020-06-28 12:03:20', 1, 0),
(36, 20, '', '', 'camp', 'Tas Carrier(semua merek) 65L + cover bag', '2020-07-01 06:44:23', 1, 0),
(37, 25, '', '', 'visited', 'Gunung Mahameru', '2020-07-04 16:45:56', 1, 1),
(38, 25, '', '', 'shared', '37:kevin', '2020-07-04 16:46:29', 1, 0),
(39, 25, '', '', 'camp', 'tenda dan tas carrier dengan kapasitas 65L (semua merek)', '2020-07-04 16:47:57', 1, 0),
(40, 20, '', '', 'shared', '39:kevin', '2020-07-04 16:49:23', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `time`) VALUES
(1, '2013-07-24 12:46:14'),
(2, '2016-04-03 00:32:00'),
(3, '2016-04-03 00:33:36'),
(4, '2017-01-14 22:23:16'),
(5, '2016-11-09 12:08:47'),
(6, '2016-11-14 21:03:14'),
(7, '2016-11-10 00:39:47'),
(8, '2016-11-19 01:08:44'),
(9, '2016-11-09 16:59:39'),
(10, '2016-11-09 17:00:16'),
(11, '2016-11-10 19:40:49'),
(12, '2016-11-12 21:12:13'),
(13, '2016-11-23 02:58:58'),
(14, '2016-11-27 00:48:38'),
(15, '2016-11-27 00:48:16'),
(16, '2016-12-24 13:51:37'),
(17, '2016-12-29 22:36:51'),
(18, '2017-01-02 19:45:13'),
(19, '2017-01-14 22:43:47'),
(20, '2020-07-04 11:40:00'),
(21, '2020-07-04 11:51:38'),
(22, '2020-06-15 02:23:02'),
(23, '2020-06-28 07:38:21'),
(24, '2020-07-04 11:30:53'),
(25, '2020-07-04 11:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE IF NOT EXISTS `relations` (
`id` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `subscriber` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `leader`, `subscriber`, `time`) VALUES
(1, 20, 21, '2020-06-13 12:42:22'),
(2, 21, 20, '2020-06-13 12:43:16'),
(3, 21, 22, '2020-06-15 07:13:16'),
(4, 22, 21, '2020-06-15 07:13:53'),
(5, 20, 23, '2020-06-22 07:50:25'),
(6, 23, 20, '2020-06-22 07:51:03'),
(8, 22, 20, '2020-07-01 06:45:24'),
(9, 20, 24, '2020-07-04 16:31:54'),
(10, 20, 25, '2020-07-04 16:37:51'),
(11, 25, 20, '2020-07-04 16:39:06'),
(12, 25, 21, '2020-07-04 16:51:14'),
(13, 21, 25, '2020-07-04 16:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
`id` int(12) NOT NULL,
  `post` varchar(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `by` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `post`, `parent`, `type`, `by`, `state`) VALUES
(1, '1', 1, 0, 21, 0),
(2, '7', 0, 1, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `perpage` int(11) NOT NULL,
  `censor` varchar(2048) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `captcha` int(11) NOT NULL,
  `intervalm` int(11) NOT NULL,
  `intervaln` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `message` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `format` varchar(256) NOT NULL,
  `mail` int(11) NOT NULL,
  `sizemsg` int(11) NOT NULL,
  `formatmsg` varchar(256) NOT NULL,
  `cperpage` int(11) NOT NULL,
  `mprivacy` int(11) NOT NULL,
  `ilimit` int(11) NOT NULL,
  `climit` int(11) NOT NULL,
  `qperpage` tinyint(4) NOT NULL,
  `rperpage` int(11) NOT NULL,
  `uperpage` int(11) NOT NULL,
  `sperpage` int(11) NOT NULL,
  `nperpage` tinyint(4) NOT NULL,
  `nperwidget` tinyint(4) NOT NULL,
  `lperpost` int(11) NOT NULL,
  `conline` int(4) NOT NULL,
  `ronline` tinyint(4) NOT NULL,
  `mperpage` tinyint(4) NOT NULL,
  `verified` int(11) NOT NULL,
  `notificationl` tinyint(4) NOT NULL,
  `notificationc` tinyint(4) NOT NULL,
  `notificationm` tinyint(4) NOT NULL,
  `notificationd` tinyint(4) NOT NULL,
  `chatr` int(11) NOT NULL,
  `email_comment` tinyint(4) NOT NULL,
  `email_like` tinyint(4) NOT NULL,
  `smiles` tinyint(4) NOT NULL,
  `ad1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ad2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ad3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ad4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ad5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ad6` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ad7` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`title`, `theme`, `perpage`, `censor`, `captcha`, `intervalm`, `intervaln`, `time`, `message`, `size`, `format`, `mail`, `sizemsg`, `formatmsg`, `cperpage`, `mprivacy`, `ilimit`, `climit`, `qperpage`, `rperpage`, `uperpage`, `sperpage`, `nperpage`, `nperwidget`, `lperpost`, `conline`, `ronline`, `mperpage`, `verified`, `notificationl`, `notificationc`, `notificationm`, `notificationd`, `chatr`, `email_comment`, `email_like`, `smiles`, `ad1`, `ad2`, `ad3`, `ad4`, `ad5`, `ad6`, `ad7`) VALUES
('bagusfever', 'dolphin', 10, 'jancok,kontol,memek,bangsat,fuck,anjing', 1, 10000, 10000, 1, 5000, 2097152, 'png,jpg,gif,jpeg', 1, 10485760, 'png,jpg,gif,jpeg', 15, 1, 9, 5000, 100, 20, 100, 10, 100, 10, 5, 600, 25, 50, 0, 1, 1, 1, 1, 1, 1, 1, 1, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`idu` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `first_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(128) NOT NULL,
  `bio` varchar(160) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `facebook` varchar(256) NOT NULL,
  `twitter` varchar(128) NOT NULL,
  `gplus` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL,
  `private` int(11) NOT NULL,
  `salted` varchar(256) NOT NULL,
  `background` varchar(256) NOT NULL,
  `cover` varchar(128) NOT NULL,
  `verified` int(11) NOT NULL,
  `privacy` int(11) NOT NULL DEFAULT '1',
  `gender` tinyint(4) NOT NULL,
  `online` int(11) NOT NULL,
  `offline` tinyint(4) NOT NULL,
  `notificationl` tinyint(4) NOT NULL,
  `notificationc` tinyint(4) NOT NULL,
  `notificationm` tinyint(4) NOT NULL,
  `notificationd` tinyint(4) NOT NULL,
  `email_comment` tinyint(4) NOT NULL,
  `email_like` int(11) NOT NULL,
  `born` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idu`, `username`, `password`, `email`, `first_name`, `last_name`, `location`, `website`, `bio`, `date`, `facebook`, `twitter`, `gplus`, `image`, `private`, `salted`, `background`, `cover`, `verified`, `privacy`, `gender`, `online`, `offline`, `notificationl`, `notificationc`, `notificationm`, `notificationd`, `email_comment`, `email_like`, `born`) VALUES
(20, 'panji', '3fc0a7acf087f549ac2b266baf94b8b1', 'dwipanji8@gmail.com', 'Panji ', 'Dwijo Sukarno', 'Depok', '', '', '2020-06-13', '', '', '', '1783841810_1974922829_1672892854.jpg', 0, '', '', '1275691195_156823675_43430780.png', 0, 1, 0, 1594439561, 0, 1, 1, 1, 1, 1, 1, '1999-02-17'),
(21, 'karina', '827ccb0eea8a706c4c34a16891f84e7b', 'karina@gmail.com', '', '', '', '', '', '2020-06-13', '', '', '', 'default.png', 0, '', '', 'default.png', 0, 1, 0, 1593881498, 0, 1, 1, 1, 1, 1, 1, '0000-00-00'),
(22, 'aldy', '6dbd0fe19c9a301c4708287780df41a2', 'aldyansyah@gmail.com', '', '', '', '', '', '2020-06-15', '', '', '', 'default.png', 0, '', '', 'default.png', 0, 1, 0, 1592205879, 0, 1, 1, 1, 1, 1, 1, '0000-00-00'),
(23, 'echa', 'e80b84e94d04f8840ff6f307fa10bde7', 'echa@gmail.com', '', '', '', '', '', '2020-06-22', '', '', '', '2041231319_961289158_1730227161.png', 0, '', '', '1583344593_821291785_1182661573.jpg', 0, 1, 0, 1593348672, 0, 1, 1, 1, 1, 1, 1, '0000-00-00'),
(25, 'kevin', '21232f297a57a5a743894a0e4a801fc3', 'kevin17@gmail.com', 'Kevin', 'Aprilio', 'Depok', '', 'kevin hanya manusia biasa', '2020-07-04', 'kevin007', 'kevin008', 'kevin009', '1290366565_2025826440_846332330.PNG', 0, '', '', '1657742455_1115934372_1813137890.png', 0, 1, 0, 1593881675, 0, 1, 1, 1, 1, 1, 1, '1999-03-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocked`
--
ALTER TABLE `blocked`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD UNIQUE KEY `id` (`idu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blocked`
--
ALTER TABLE `blocked`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `idu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
