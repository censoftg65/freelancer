-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2016 at 10:09 AM
-- Server version: 5.5.50-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `centurys_boostnext`
--

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE IF NOT EXISTS `contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` text,
  `url_name` text,
  `page_content` text,
  `page_title` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE IF NOT EXISTS `login_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `duration` varchar(32) NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`, `duration`, `used`, `created`, `expires`) VALUES
(35, 1, '843e14e1232b7a9134f8ca282ef9cfd3', '2 weeks', 0, '2016-06-10 07:02:13', '2016-06-24 07:02:13'),
(12, 19, '6e6e7aa909185237def412f421aaa006', '2 weeks', 0, '2016-06-06 01:34:29', '2016-06-20 01:34:29'),
(24, 18, 'badc1037f31c4989dcb1fd1033554368', '2 weeks', 0, '2016-06-09 00:18:13', '2016-06-23 00:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_emails`
--

CREATE TABLE IF NOT EXISTS `tmp_emails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(256) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_id` bigint(100) DEFAULT NULL,
  `fb_access_token` text,
  `twt_id` bigint(100) DEFAULT NULL,
  `twt_access_token` text,
  `twt_access_secret` text,
  `ldn_id` varchar(100) DEFAULT NULL,
  `user_group_id` varchar(256) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `active` varchar(3) DEFAULT '0',
  `email_verified` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `by_admin` int(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`username`),
  KEY `mail` (`email`),
  KEY `users_FKIndex1` (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fb_id`, `fb_access_token`, `twt_id`, `twt_access_token`, `twt_access_secret`, `ldn_id`, `user_group_id`, `username`, `password`, `salt`, `email`, `first_name`, `last_name`, `active`, `email_verified`, `last_login`, `by_admin`, `ip_address`, `created`, `modified`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, '1', 'admin', '2a835ea5898abf702dde0f2e63047a801d44afca123ea10876a99ded20143f56', 'QAsnc4KoAOSIgWaSB8LaLxD3g4GUef+9pyciIf/nYj/zibN1MrNaujXATTyDJ2yU', 'admin@admin.com', 'Admin', '', '1', 1, '2016-06-10 07:02:13', 0, '', '2016-06-02 16:28:06', '2016-06-02 16:28:06'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'dsfsdf', '968eedb448b32c3115a58c9e7183df508f03cf3892a28665f683b3663a76d262', 'RHvA8jdBgshQaFpbtV0yGRMankCHmySrjKZNJkgYRoyTB3/LSAGTmWru9CBMJzlf', 'dsfsdf@sharklasers.com', NULL, NULL, '1', 0, NULL, 0, '114.76.182.30', '2016-06-12 21:37:45', '2016-06-12 21:37:45'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, '5', 'dyhdfyh', '370e0fd0d9fb3d0e79d2c93d70886f9eafbbf6801b99d92d4afecc1bca55de4e', '1tQ3ZewZtvU63E3BanLTzF/jzW85A5eQbs4OXTk9MBARaHb9gSzzvAlAfXSzUEET', 'rtyrf@gmail.com', NULL, NULL, '1', 0, NULL, 0, '118.102.158.29', '2016-06-09 07:17:24', '2016-06-09 07:17:24'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'Sherry', '516ab7ecfd8ce315fda077aace537fa65c32631a97d88e9c836c34328e72ca49', '8bDNtGVLUIh9rP8RUXFn0n15Keo7Eu9H+EMFIb8xwLHijWVH2LXQVmLPZ7NBz4W/', 'testaccnt717@gmail.com', NULL, NULL, '1', 1, '2016-06-10 05:13:06', 0, '118.102.250.77', '2016-06-09 03:07:26', '2016-06-09 03:07:26'),
(24, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'asimcensofg', '701e7a408ab60d07b8a7d593046637c0130fb1a48fb52c8cb757d005865014db', 'CbzTX2hr5HqVN0paFFO4Zyml7qnrzzMOV7/xGR/MTimIIYnxjW1rI6S2fbkKNSE0', 'censoftg96@gmail.coms', NULL, NULL, '1', 0, NULL, 0, '127.0.0.1', '2016-06-08 02:12:27', '2016-06-08 02:12:27'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'censoftg100', 'ac89d6c6b8aa46f8efd59aeb51d8cd4a0ce5a5b18467cc47d82ff529316278d6', 'cUHKCYQDMF+xTXrUzZxhvfGz2FP1gLDhz4hQdmdgvNmhhuImiROFO2AADy6dcOyO', 'censoftg100@gmail.com', NULL, NULL, '1', 0, NULL, 0, '127.0.0.1', '2016-06-07 08:46:50', '2016-06-07 08:46:50'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'asim12', '966fd6b82b616e6750726ffdc792e50258576c7fa7693527b49b19d78ef409a0', 'gv7YHlxJLXErLevPzW6znZ5xmSZO8AKN60x3/rBxQzNwG1HNZX8+kKwqYHqZExg3', 'asim@gmail.com', NULL, NULL, '1', 0, NULL, 0, '127.0.0.1', '2016-06-07 08:30:27', '2016-06-07 08:30:27'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'censoftg97', '337a421b5f97b00726a355c54f26649106e9c8d451e0fff2f454838b221b311a', 'XH5BJjLet/MgFsqBx23TzSH02Od0877H5daD8FYBKLKAadmySJGmaKdx6m7evTsA', 'censoftg97123@gmail.com', NULL, NULL, '1', 1, '2016-06-09 02:25:52', 0, '127.0.0.1', '2016-06-07 07:35:12', '2016-06-07 07:35:12'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'asimkata', 'ac0f70d9b1744287868e1260e343d6ece56d1407c79440b4fe3e8054faf6357e', 'kWhDu9Fd7B5ybXUfH/5QkSFG7VlxsZMGbyEQB+LFAXQtRTD/oh0eFIqTNKmRhDuz', 'asimkatamale@gmail.com', NULL, NULL, '1', 0, NULL, 0, '127.0.0.1', '2016-06-07 07:30:56', '2016-06-07 07:30:56'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'asim1', 'd73ed659186a997d02dcdafb51eeb4905c6667e4de7543d3fe14b03bef212eb0', 'JGKMYDUJ2puY32DjWKeyYHHX8P3oaMP+BPjCebzLReAu0kFj3Bv/dPpgWFMHCrR5', 'censoftg961@gmail.com', NULL, NULL, '1', 1, '2016-06-06 01:34:29', 0, '127.0.0.1', '2016-06-06 01:30:03', '2016-06-06 01:30:03'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'anvesh', '01a3130db0eeab9bc6cb2b77a596be445202a0f724727cd079bfcf5bd1ac54d6', 'O9dH0rE+qDUl8dOvGBOvGRyAgDgAsOFEwIQB8WhApKQX7HbJKx//UBDS/yjmr0EC', 'censoftg98@gmail.com', NULL, NULL, '1', 1, '2016-06-09 03:07:39', 0, '118.102.250.75', '2016-06-09 03:05:39', '2016-06-09 03:05:39'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'censoftg96', 'cc7c82305191bfec9da9d28b9c0a8a9b712dd86ba38f42dd1e8564134371839c', 'EC3my3qo2VVv4Dt1wOvFXT2nhRC6wQgCAGugWGv6TnsnNUei3iH4TgE0xMEfiR9d', 'censoftg96@gmail.com', NULL, NULL, '1', 1, '2016-06-10 06:24:03', 0, '118.102.250.75', '2016-06-10 00:28:56', '2016-06-10 00:28:56'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'censoftg971', 'fcbc03e914dd51c9648473eea0b9fa90db27bd8ab5078bf570c512dbf1b051ca', 's5duz5NmHYiApPDbtfpTc3knXzjs7XRvT5yruuLwrpaHHWUbg4OjBCeU392OM1EH', 'censoftg97@gmail.com', NULL, NULL, '1', 1, '2016-06-10 04:40:35', 0, '118.102.250.75', '2016-06-09 03:01:48', '2016-06-09 03:01:48'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'censoftg961231', '6d127d6690c1b5ec994405ee87a35989c6ccc26097d90b8110cc29968380a77c', 'fvoh2l74uUwVgxVLQ1trsk1sBh2BAVJiLKU3KoeYuQWT2+Dx05o+6R1TNGGuoBP7', 'censoftg961231@gmail.com', NULL, NULL, '1', 0, NULL, 0, '127.0.0.1', '2016-06-08 04:38:11', '2016-06-08 04:38:11'),
(33, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'censoftg83', '0a554ac33dff1cca3e328a58542202dfc2c4a5a648773bf68b8a31ab8d0d5f7e', '1kqIbnjSNGo0UsPTiBkV3zYrplJB88YeLqN0vIt8JWLGrdE/fwWqtFdtiOCHnsC+', 'censoftg83@gmail.com', NULL, NULL, '1', 0, NULL, 0, '118.102.250.75', '2016-06-08 09:14:20', '2016-06-08 09:14:20'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'gexcduvy', 'c5202ef380a5000b5a1db1b16f3a5d14d0440523a628eb55dcb69409d5925eed', 'fYoYtTP6piTH6IQBiDe8HpFdcGH+OLxWenZw0gHx5n98/jWw+dvUwMRZwk2Qfmsh', 'gexcduvy@sharklasers.com', NULL, NULL, '1', 1, '2016-06-12 21:17:23', 0, '114.76.182.30', '2016-06-12 21:03:11', '2016-06-12 21:03:11'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'yashwant', '2ee85a430650c9c9697ab18c1b24e79abbba30464ae0a12c702081259c16feb9', '/8sDyZC7SRt5QsF17Lg5Dpv4u2Yn/ZIQhow/bdnHI9iSJqIj4us+Wy4A0Ru5CylU', 'censoftg44@gmail.com', NULL, NULL, '1', 0, NULL, 0, '118.102.250.75', '2016-06-10 05:13:55', '2016-06-10 05:13:55'),
(42, NULL, NULL, NULL, NULL, NULL, NULL, '4', 'shrikant', 'efd8959f278b2c76b6b7c725eee14ba2d6a16dd7ed03a7eee11e21c6ef6d0356', 'uQpeERWKv9uwzB+rxvL6qUForVp/t6wpUo0q1yXRQN7cnu/yKa/N2XvshEHefusg', 'censoftg42@gmail.com', NULL, NULL, '1', 0, NULL, 0, '118.102.250.75', '2016-06-10 05:29:34', '2016-06-10 05:29:34'),
(47, 1599489353697331, 'EAAN6LY9yahwBALXIsJC7RDTrGmOMtKPbZCnUdppBgVMs5sF5E10HW4b7Y6hX569eTAIXmOL3QbwfIKZCKNec6tmLVUPIO3EQRfl49igpn4VR2hYEymMwHRwYpDO7V70TISJZB4ZC8ocC9g9mpZCZB9VaNKybXfyKoZD', NULL, NULL, NULL, NULL, '2', 'rinasharma', '84ccbb2da687c821604b2bf4e936b62ce1b081cd5e7fe2c6e4bb1da3ce79122d', 'qt6IeRNV16jqySdugmjB65cvXzVYvDVOUayN2+iB+ZJfggxz1+Qbwa5DMDCr8htC', NULL, NULL, NULL, '1', 1, '2016-06-10 09:41:20', 0, '118.102.250.75', '2016-06-10 09:37:58', '2016-06-10 09:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE IF NOT EXISTS `user_activities` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `useragent` varchar(256) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `last_action` int(10) DEFAULT NULL,
  `last_url` text,
  `logout_time` int(10) DEFAULT NULL,
  `user_browser` text,
  `ip_address` varchar(50) DEFAULT NULL,
  `logout` int(11) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `useragent`, `user_id`, `last_action`, `last_url`, `logout_time`, `user_browser`, `ip_address`, `logout`, `deleted`, `status`, `created`, `modified`) VALUES
(3, 'dab21f7cfcaf162cfb2a1e80ddeaea543s6q9iug9sslbe1mks9diamkf7', NULL, 1464970526, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-03 06:42:00', '2016-06-03 08:15:26'),
(5, 'dab21f7cfcaf162cfb2a1e80ddeaea540lofu0h92aciht1mrn9c5o52j2', NULL, 1464977252, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-03 08:28:09', '2016-06-03 10:07:32'),
(7, 'dab21f7cfcaf162cfb2a1e80ddeaea54bqqa6lfhqodpti9h3d9llbsfm1', NULL, 1465043180, '/freelancer/usermgmt/Users/checkemail', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-04 02:18:56', '2016-06-04 04:26:20'),
(10, 'dab21f7cfcaf162cfb2a1e80ddeaea54cjdcmu8l9sfksiskq56sn6bcg7', NULL, 1465056366, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-04 05:30:03', '2016-06-04 08:06:06'),
(11, 'dab21f7cfcaf162cfb2a1e80ddeaea54gfmv1rnfvf1b20r6bgal60rd32', NULL, 1465060929, '/freelancer/usermgmt/Users/checkemail', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-04 09:20:19', '2016-06-04 09:22:09'),
(22, 'dab21f7cfcaf162cfb2a1e80ddeaea548lb400sm5vu5ahp14s4lb1voe3', NULL, 1465228125, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-06 07:38:13', '2016-06-06 07:48:45'),
(23, 'dab21f7cfcaf162cfb2a1e80ddeaea54k299vl8ops94kqoj041n7ulus7', NULL, 1465237100, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-06 08:35:21', '2016-06-06 10:18:20'),
(18, 'dab21f7cfcaf162cfb2a1e80ddeaea54bhs508i33mvlk4c56si7llbsr3', NULL, 1465211731, '/freelancer/usermgmt/Users/checkusername', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-06 01:34:35', '2016-06-06 03:15:31'),
(34, '13ad720bb510b732e645119ad0023fbbqgfgphf7srn45gu0fnqluatlg1', 18, 1465293158, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 1, '2016-06-07 04:12:26', '2016-06-07 04:12:38'),
(31, 'dab21f7cfcaf162cfb2a1e80ddeaea54nae3kc8h7eagnii7p1efi5loe6', NULL, 1465301311, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-07 04:08:29', '2016-06-07 04:08:31'),
(39, '13ad720bb510b732e645119ad0023fbbakfd7dmbku20mm7v0at9datgj1', 18, 1465373934, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 1, '2016-06-07 04:18:44', '2016-06-07 04:18:54'),
(35, '13ad720bb510b732e645119ad0023fbbhn78j202d977l6i5burkd4tig6', 18, 1465373682, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 1, '2016-06-07 04:12:47', '2016-06-07 04:14:42'),
(36, '13ad720bb510b732e645119ad0023fbbh99dvqusq1ke4bqgngijudhhs5', 18, 1465373710, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 1, '2016-06-07 04:14:51', '2016-06-07 04:15:10'),
(37, '13ad720bb510b732e645119ad0023fbbj53d5ums1qh3980ak8dqpic0g1', NULL, 1465373913, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 0, '2016-06-07 04:15:16', '2016-06-07 04:18:33'),
(59, 'dab21f7cfcaf162cfb2a1e80ddeaea54c8ojo9435r1jc02628lgidbv73', NULL, 1465395134, '/freelancer/usermgmt/Users/checkpassword', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-08 04:54:35', '2016-06-08 08:32:14'),
(42, '13ad720bb510b732e645119ad0023fbbd55dbqf3oubs0su0mdljagnau3', NULL, 1465373973, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 0, '2016-06-07 04:19:33', '2016-06-07 04:19:33'),
(44, '13ad720bb510b732e645119ad0023fbbolk01bajigeb16chfu4igtf133', 18, 1465374015, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 1, '2016-06-07 04:20:05', '2016-06-07 04:20:15'),
(45, '13ad720bb510b732e645119ad0023fbb6nkmjn2f81vc34stl9sj6lk0k7', NULL, 1465374021, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 0, '2016-06-07 04:20:21', '2016-06-07 04:20:21'),
(46, '13ad720bb510b732e645119ad0023fbbhm26gqssfkphf6hc781ugfusa3', 18, 1465293657, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 1, '2016-06-07 04:20:47', '2016-06-07 04:20:57'),
(47, '13ad720bb510b732e645119ad0023fbbejiu3dmobsiv4j78o5c9p4o030', NULL, 1465293666, '/freelancer/dashboard', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '::1', 0, 0, 0, '2016-06-07 04:21:06', '2016-06-07 04:21:06'),
(56, 'dab21f7cfcaf162cfb2a1e80ddeaea5485s13hqqg7mqseshl4jc216e37', NULL, 1465314399, '/freelancer/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '127.0.0.1', 0, 0, 0, '2016-06-07 08:36:12', '2016-06-07 10:06:39'),
(63, 'dab21f7cfcaf162cfb2a1e80ddeaea5416e58fa77f2869cb86f77e76045622b4', NULL, 1465398411, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.75', 0, 0, 0, '2016-06-08 09:26:51', '2016-06-08 09:26:52'),
(61, '1a54d1eac5929b7cab4f993dc4f8b819fe3ea797e4fb92921073c5e3da3252fc', NULL, 1465397850, '/boostnext/usermgmt/Users/checkemail', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:46.0) Gecko/20100101 Firefox/46.0', '118.102.158.29', 0, 0, 0, '2016-06-08 09:16:11', '2016-06-08 09:17:30'),
(62, '3711921c17f579bebe0d1c4a45b67b1b9149536b68324dca278e0e31e8177147', NULL, 1465398059, '/boostnext/', NULL, 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)', '52.8.77.83', 0, 0, 0, '2016-06-08 09:20:59', '2016-06-08 09:20:59'),
(64, 'dba0a03ff599624ea4ac347fe572b0349bf9d1279f2fe9d95fefce800987e788', 18, 1465414578, '/boostnext/dashboard', NULL, 'Mozilla/5.0 (Linux; Android 4.4.2; SM-G350E Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.133 Mobile Safari/537.36', '182.156.108.251', 0, 0, 1, '2016-06-08 13:53:27', '2016-06-08 13:56:18'),
(70, '4a8ba3b2014f5bc407f478bc21901cfbff32c0c93d4fe12ac928714931a12311', NULL, 1465456146, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', '66.249.82.214', 0, 0, 0, '2016-06-09 01:29:02', '2016-06-09 01:29:06'),
(96, 'dab21f7cfcaf162cfb2a1e80ddeaea54971039f819d994d4944cc37642fc5cba', NULL, 1465477088, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.75', 0, 0, 0, '2016-06-09 04:21:31', '2016-06-09 07:18:08'),
(71, '1a8c4bf5fd74c0cdcdb19f4c2c96e0c0ce4315418fedda08716890ad9fa13d9b', NULL, 1465456146, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Mobile Safari/537.36', '66.249.82.217', 0, 0, 0, '2016-06-09 01:29:02', '2016-06-09 01:29:06'),
(73, 'fd504865c207c5c07ade388efbffd36165855d5ca87fc3b2b1635672f0bafd89', NULL, 1465457615, '/boostnext/Pages/about', NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', '104.45.18.178', 0, 0, 0, '2016-06-09 01:53:35', '2016-06-09 01:53:35'),
(74, 'ccea9b3c50ab3f939ac5361b9b3e002284a19fdd6ac2442721bcfc40fcda3590', NULL, 1465458968, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (Windows NT 10.0; rv:46.0) Gecko/20100101 Firefox/46.0', '118.102.250.75', 0, 0, 0, '2016-06-09 01:56:28', '2016-06-09 02:16:08'),
(76, '89716f9c1366900abd014d48a701885138a2f818ac71be5a00f82cfb155c95a4', NULL, 1465458945, '/boostnext/', NULL, 'Bitrix link preview', '54.167.153.179', 0, 0, 0, '2016-06-09 02:15:45', '2016-06-09 02:15:45'),
(78, 'dab21f7cfcaf162cfb2a1e80ddeaea54781971c3cac4c75bba1ca6ef1eb99882', NULL, 1465459564, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.75', 0, 0, 0, '2016-06-09 02:26:04', '2016-06-09 02:26:04'),
(94, '13ad720bb510b732e645119ad0023fbb56f588041a83cb2ab00e478bb4d37dca', NULL, 1465471232, '/boostnext/usermgmt/Users/checkpassword', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/48.0.2564.82 Chrome/48.0.2564.82 Safari/537.36', '118.102.250.77', 0, 0, 0, '2016-06-09 03:13:08', '2016-06-09 05:40:32'),
(80, 'dab21f7cfcaf162cfb2a1e80ddeaea54917cf38988dda6c8768316a44b13fb18', NULL, 1465460702, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.77', 0, 0, 0, '2016-06-09 02:45:01', '2016-06-09 02:45:02'),
(81, 'dab21f7cfcaf162cfb2a1e80ddeaea54386fba9767b36330eb7a9ee3ce3b0440', NULL, 1465462016, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.77', 0, 0, 0, '2016-06-09 02:46:36', '2016-06-09 03:06:56'),
(82, '4505aa4c755f245bf1535d4017a3643f84f3505dc5040b8ad1f6960cf85b9ae4', NULL, 1465477045, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/50.0.2661.102 Chrome/50.0.2661.102 Safari/537.36', '118.102.158.29', 0, 0, 0, '2016-06-09 02:47:43', '2016-06-09 07:17:25'),
(83, '669a2302097589a0ad161093a4003567deec4750176c01e74dfd1dfe738953e8', NULL, 1465461076, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0', '118.102.250.75', 0, 0, 0, '2016-06-09 02:51:15', '2016-06-09 02:51:16'),
(84, 'dab21f7cfcaf162cfb2a1e80ddeaea542ea9419b385d5ee4896d6108db2340e8', NULL, 1465461107, '/boostnext/', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.77', 0, 0, 0, '2016-06-09 02:51:47', '2016-06-09 02:51:47'),
(85, 'dab21f7cfcaf162cfb2a1e80ddeaea546a1106e74f3579d0bc6c6a208cbfcfbf', NULL, 1465461107, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.77', 0, 0, 0, '2016-06-09 02:51:48', '2016-06-09 02:51:48'),
(86, '89716f9c1366900abd014d48a7018851f55b7157fceb2e5382c4da8a31822729', NULL, 1465461270, '/boostnext/', NULL, 'Bitrix link preview', '54.167.153.179', 0, 0, 0, '2016-06-09 02:54:30', '2016-06-09 02:54:30'),
(87, '4a6f077166676b17e198f7c1f18ef4e33b91d14eb8e4f2753f09f234ba55f800', NULL, 1465461433, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '188.166.101.66', 0, 0, 0, '2016-06-09 02:57:09', '2016-06-09 02:57:13'),
(90, 'dab21f7cfcaf162cfb2a1e80ddeaea54f981a316e5e332c7c6fa69464ad3c552', NULL, 1465462297, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.77', 0, 0, 0, '2016-06-09 03:07:03', '2016-06-09 03:11:37'),
(93, '3711921c17f579bebe0d1c4a45b67b1bc5f95ab39d88b3b668e67dad651e53f2', NULL, 1465462326, '/boostnext/', NULL, 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)', '52.8.59.90', 0, 0, 0, '2016-06-09 03:12:06', '2016-06-09 03:12:06'),
(95, 'f25deea9123437236f105910802445a978e1df01c3c86a13812a07b12c0b323c', NULL, 1465462591, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.84 Safari/537.36', '66.191.17.26', 0, 0, 0, '2016-06-09 03:16:28', '2016-06-09 03:16:31'),
(98, 'dab21f7cfcaf162cfb2a1e80ddeaea549b21946c528806244f8aa3a40cda7f25', NULL, 1465537876, '/boostnext/Pages/captcha_image', NULL, 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0', '118.102.250.75', 0, 0, 0, '2016-06-10 00:09:42', '2016-06-10 00:11:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_contacts`
--

CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `requirement` text,
  `reply_message` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `photo` text,
  `bday` date DEFAULT NULL,
  `location` varchar(256) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `cellphone` varchar(15) DEFAULT NULL,
  `web_page` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `gender`, `photo`, `bday`, `location`, `marital_status`, `cellphone`, `web_page`, `created`, `modified`) VALUES
(1, 1, 'male', '', '1986-01-30', '', 'single', '', '', '2016-06-02 16:28:06', '2016-06-02 16:28:06'),
(5, 45, NULL, '14655617871178957066.jpg', NULL, NULL, NULL, NULL, NULL, '2016-06-10 08:29:47', '2016-06-10 08:29:47'),
(6, 46, NULL, '1465565566210483997.jpg', NULL, NULL, NULL, NULL, NULL, '2016-06-10 09:32:46', '2016-06-10 09:32:46'),
(7, 47, NULL, '14655658781326546567.jpg', NULL, NULL, NULL, NULL, NULL, '2016-06-10 09:37:58', '2016-06-10 09:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_emails`
--

CREATE TABLE IF NOT EXISTS `user_emails` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `user_group_id` varchar(256) DEFAULT NULL,
  `cc_to` text,
  `from_name` varchar(200) DEFAULT NULL,
  `from_email` varchar(200) DEFAULT NULL,
  `subject` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `sent_by` int(10) DEFAULT NULL,
  `is_email_sent` int(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_email_recipients`
--

CREATE TABLE IF NOT EXISTS `user_email_recipients` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `user_email_id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `email_address` varchar(100) NOT NULL,
  `is_email_sent` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_email_signatures`
--

CREATE TABLE IF NOT EXISTS `user_email_signatures` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `signature_name` varchar(100) NOT NULL,
  `signature` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_email_templates`
--

CREATE TABLE IF NOT EXISTS `user_email_templates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(100) NOT NULL,
  `header` text,
  `footer` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `alias_name` varchar(100) DEFAULT NULL,
  `description` text,
  `allowRegistration` int(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `parent_id`, `name`, `alias_name`, `description`, `allowRegistration`, `created`, `modified`) VALUES
(1, 0, 'Admin', 'Admin', NULL, 0, '2016-06-02 16:28:06', '2016-06-02 16:28:06'),
(2, 0, 'User', 'User', NULL, 1, '2016-06-02 16:28:06', '2016-06-02 16:28:06'),
(3, 0, 'Guest', 'Guest', NULL, 0, '2016-06-02 16:28:06', '2016-06-02 16:28:06'),
(4, 0, 'Client', 'Client', '', 1, '2016-06-06 00:28:02', '2016-06-06 00:28:02'),
(5, 0, 'Expert Gamer', 'Expert_Gamer', '', 1, '2016-06-06 00:28:21', '2016-06-06 00:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_permissions`
--

CREATE TABLE IF NOT EXISTS `user_group_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group_id` int(10) unsigned NOT NULL,
  `controller` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `action` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `allowed` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=223 ;

--
-- Dumping data for table `user_group_permissions`
--

INSERT INTO `user_group_permissions` (`id`, `user_group_id`, `controller`, `action`, `allowed`) VALUES
(1, 1, 'Pages', 'display', 1),
(2, 2, 'Pages', 'display', 1),
(3, 3, 'Pages', 'display', 1),
(4, 1, 'UserGroupPermissions', 'index', 1),
(5, 2, 'UserGroupPermissions', 'index', 0),
(6, 3, 'UserGroupPermissions', 'index', 0),
(7, 1, 'UserGroups', 'index', 1),
(8, 2, 'UserGroups', 'index', 0),
(9, 3, 'UserGroups', 'index', 0),
(10, 1, 'UserGroups', 'addGroup', 1),
(11, 2, 'UserGroups', 'addGroup', 0),
(12, 3, 'UserGroups', 'addGroup', 0),
(13, 1, 'UserGroups', 'editGroup', 1),
(14, 2, 'UserGroups', 'editGroup', 0),
(15, 3, 'UserGroups', 'editGroup', 0),
(16, 1, 'UserGroups', 'deleteGroup', 1),
(17, 2, 'UserGroups', 'deleteGroup', 0),
(18, 3, 'UserGroups', 'deleteGroup', 0),
(19, 1, 'UserSettings', 'index', 1),
(20, 2, 'UserSettings', 'index', 0),
(21, 3, 'UserSettings', 'index', 0),
(22, 1, 'UserSettings', 'editSetting', 1),
(23, 2, 'UserSettings', 'editSetting', 0),
(24, 3, 'UserSettings', 'editSetting', 0),
(25, 1, 'Users', 'index', 1),
(26, 2, 'Users', 'index', 0),
(27, 3, 'Users', 'index', 0),
(28, 1, 'Users', 'online', 1),
(29, 2, 'Users', 'online', 0),
(30, 3, 'Users', 'online', 0),
(31, 1, 'Users', 'viewUser', 1),
(32, 2, 'Users', 'viewUser', 0),
(33, 3, 'Users', 'viewUser', 0),
(34, 1, 'Users', 'myprofile', 0),
(35, 2, 'Users', 'myprofile', 1),
(36, 3, 'Users', 'myprofile', 0),
(37, 1, 'Users', 'editProfile', 1),
(38, 2, 'Users', 'editProfile', 1),
(39, 3, 'Users', 'editProfile', 0),
(40, 1, 'Users', 'login', 1),
(41, 2, 'Users', 'login', 1),
(42, 3, 'Users', 'login', 1),
(43, 1, 'Users', 'logout', 1),
(44, 2, 'Users', 'logout', 1),
(45, 3, 'Users', 'logout', 1),
(46, 1, 'Users', 'register', 1),
(47, 2, 'Users', 'register', 1),
(48, 3, 'Users', 'register', 1),
(49, 1, 'Users', 'changePassword', 1),
(50, 2, 'Users', 'changePassword', 1),
(51, 3, 'Users', 'changePassword', 0),
(52, 1, 'Users', 'changeUserPassword', 1),
(53, 2, 'Users', 'changeUserPassword', 0),
(54, 3, 'Users', 'changeUserPassword', 0),
(55, 1, 'Users', 'addUser', 1),
(56, 2, 'Users', 'addUser', 0),
(57, 3, 'Users', 'addUser', 0),
(58, 1, 'Users', 'editUser', 1),
(59, 2, 'Users', 'editUser', 0),
(60, 3, 'Users', 'editUser', 0),
(61, 1, 'Users', 'deleteUser', 1),
(62, 2, 'Users', 'deleteUser', 0),
(63, 3, 'Users', 'deleteUser', 0),
(64, 1, 'Users', 'deleteAccount', 0),
(65, 2, 'Users', 'deleteAccount', 1),
(66, 3, 'Users', 'deleteAccount', 0),
(67, 1, 'Users', 'logoutUser', 1),
(68, 2, 'Users', 'logoutUser', 0),
(69, 3, 'Users', 'logoutUser', 0),
(70, 1, 'Users', 'makeInactive', 1),
(71, 2, 'Users', 'makeInactive', 0),
(72, 3, 'Users', 'makeInactive', 0),
(73, 1, 'Users', 'dashboard', 1),
(74, 2, 'Users', 'dashboard', 1),
(75, 3, 'Users', 'dashboard', 0),
(76, 1, 'Users', 'makeActiveInactive', 1),
(77, 2, 'Users', 'makeActiveInactive', 0),
(78, 3, 'Users', 'makeActiveInactive', 0),
(79, 1, 'Users', 'verifyEmail', 1),
(80, 2, 'Users', 'verifyEmail', 0),
(81, 3, 'Users', 'verifyEmail', 0),
(82, 1, 'Users', 'accessDenied', 1),
(83, 2, 'Users', 'accessDenied', 1),
(84, 3, 'Users', 'accessDenied', 0),
(85, 1, 'Users', 'userVerification', 1),
(86, 2, 'Users', 'userVerification', 1),
(87, 3, 'Users', 'userVerification', 1),
(88, 1, 'Users', 'forgotPassword', 1),
(89, 2, 'Users', 'forgotPassword', 1),
(90, 3, 'Users', 'forgotPassword', 1),
(91, 1, 'Users', 'emailVerification', 1),
(92, 2, 'Users', 'emailVerification', 1),
(93, 3, 'Users', 'emailVerification', 1),
(94, 1, 'Users', 'activatePassword', 1),
(95, 2, 'Users', 'activatePassword', 1),
(96, 3, 'Users', 'activatePassword', 1),
(97, 1, 'UserGroupPermissions', 'update', 1),
(98, 2, 'UserGroupPermissions', 'update', 0),
(99, 3, 'UserGroupPermissions', 'update', 0),
(100, 1, 'Users', 'deleteCache', 1),
(101, 2, 'Users', 'deleteCache', 0),
(102, 3, 'Users', 'deleteCache', 0),
(103, 1, 'Autocomplete', 'fetch', 1),
(104, 2, 'Autocomplete', 'fetch', 1),
(105, 3, 'Autocomplete', 'fetch', 1),
(106, 1, 'Users', 'viewUserPermissions', 1),
(107, 2, 'Users', 'viewUserPermissions', 0),
(108, 3, 'Users', 'viewUserPermissions', 0),
(109, 1, 'Contents', 'index', 1),
(110, 2, 'Contents', 'index', 0),
(111, 3, 'Contents', 'index', 0),
(112, 1, 'Contents', 'addPage', 1),
(113, 2, 'Contents', 'addPage', 0),
(114, 3, 'Contents', 'addPage', 0),
(115, 1, 'Contents', 'editPage', 1),
(116, 2, 'Contents', 'editPage', 0),
(117, 3, 'Contents', 'editPage', 0),
(118, 1, 'Contents', 'viewPage', 1),
(119, 2, 'Contents', 'viewPage', 0),
(120, 3, 'Contents', 'viewPage', 0),
(121, 1, 'Contents', 'deletePage', 1),
(122, 2, 'Contents', 'deletePage', 0),
(123, 3, 'Contents', 'deletePage', 0),
(124, 1, 'Contents', 'content', 1),
(125, 2, 'Contents', 'content', 1),
(126, 3, 'Contents', 'content', 1),
(127, 1, 'UserContacts', 'index', 1),
(128, 2, 'UserContacts', 'index', 0),
(129, 3, 'UserContacts', 'index', 0),
(130, 1, 'UserContacts', 'contactUs', 1),
(131, 2, 'UserContacts', 'contactUs', 1),
(132, 3, 'UserContacts', 'contactUs', 1),
(133, 1, 'Users', 'ajaxLoginRedirect', 1),
(134, 2, 'Users', 'ajaxLoginRedirect', 1),
(135, 3, 'Users', 'ajaxLoginRedirect', 1),
(136, 1, 'Users', 'viewProfile', 1),
(137, 2, 'Users', 'viewProfile', 1),
(138, 3, 'Users', 'viewProfile', 1),
(139, 1, 'Users', 'sendMails', 1),
(140, 2, 'Users', 'sendMails', 0),
(141, 3, 'Users', 'sendMails', 0),
(142, 1, 'Users', 'searchEmails', 1),
(143, 2, 'Users', 'searchEmails', 0),
(144, 3, 'Users', 'searchEmails', 0),
(145, 1, 'UserEmails', 'index', 1),
(146, 1, 'UserEmails', 'send', 1),
(147, 1, 'UserEmails', 'sendToUser', 1),
(148, 1, 'UserEmails', 'sendReply', 1),
(149, 1, 'UserEmails', 'view', 1),
(150, 1, 'UserGroupPermissions', 'subPermissions', 1),
(151, 1, 'UserGroupPermissions', 'getPermissions', 1),
(152, 1, 'UserGroupPermissions', 'permissionGroupMatrix', 1),
(153, 1, 'UserGroupPermissions', 'permissionSubGroupMatrix', 1),
(154, 1, 'UserGroupPermissions', 'changePermission', 1),
(155, 1, 'Users', 'indexSearch', 1),
(156, 1, 'UserEmailSignatures', 'index', 1),
(157, 1, 'UserEmailSignatures', 'add', 1),
(158, 1, 'UserEmailSignatures', 'edit', 1),
(159, 1, 'UserEmailSignatures', 'delete', 1),
(160, 1, 'UserEmailTemplates', 'index', 1),
(161, 1, 'UserEmailTemplates', 'add', 1),
(162, 1, 'UserEmailTemplates', 'edit', 1),
(163, 1, 'UserEmailTemplates', 'delete', 1),
(164, 1, 'UserSettings', 'cakelog', 1),
(165, 1, 'UserSettings', 'cakelogbackup', 1),
(166, 1, 'UserSettings', 'cakelogdelete', 1),
(167, 1, 'UserSettings', 'cakelogempty', 1),
(168, 1, 'Users', 'addMultipleUsers', 1),
(169, 1, 'Users', 'uploadCsv', 1),
(170, 1, 'Users', 'ajaxsignup', 1),
(171, 2, 'Users', 'ajaxsignup', 1),
(172, 3, 'Users', 'ajaxsignup', 1),
(173, 1, 'Users', 'checkemail', 1),
(174, 2, 'Users', 'checkemail', 1),
(175, 3, 'Users', 'checkemail', 1),
(181, 3, 'Users', 'checkusername', 1),
(180, 2, 'Users', 'checkusername', 1),
(179, 1, 'Users', 'checkusername', 1),
(182, 4, 'Users', 'dashboard', 1),
(183, 5, 'Users', 'dashboard', 1),
(184, 4, 'Users', 'accessDenied', 1),
(185, 5, 'Users', 'accessDenied', 1),
(186, 1, 'Users', 'checkpassword', 1),
(187, 2, 'Users', 'checkpassword', 0),
(188, 3, 'Users', 'checkpassword', 1),
(189, 4, 'Users', 'checkpassword', 0),
(190, 5, 'Users', 'checkpassword', 0),
(191, 1, 'Pages', 'sendlink', 1),
(192, 2, 'Pages', 'sendlink', 0),
(193, 3, 'Pages', 'sendlink', 1),
(194, 4, 'Pages', 'sendlink', 0),
(195, 5, 'Pages', 'sendlink', 0),
(196, 1, 'Pages', 'about', 1),
(197, 2, 'Pages', 'about', 0),
(198, 3, 'Pages', 'about', 1),
(199, 4, 'Pages', 'about', 1),
(200, 5, 'Pages', 'about', 1),
(201, 1, 'Pages', 'captchacheck', 1),
(202, 2, 'Pages', 'captchacheck', 0),
(203, 3, 'Pages', 'captchacheck', 1),
(204, 4, 'Pages', 'captchacheck', 0),
(205, 5, 'Pages', 'captchacheck', 0),
(206, 1, 'Pages', 'captcha_image', 1),
(207, 2, 'Pages', 'captcha_image', 0),
(208, 3, 'Pages', 'captcha_image', 1),
(209, 4, 'Pages', 'captcha_image', 0),
(210, 5, 'Pages', 'captcha_image', 0),
(211, 4, 'Pages', 'display', 1),
(212, 5, 'Pages', 'display', 1),
(213, 1, 'Pages', 'checkcaptcha', 1),
(214, 2, 'Pages', 'checkcaptcha', 1),
(215, 3, 'Pages', 'checkcaptcha', 1),
(216, 4, 'Pages', 'checkcaptcha', 1),
(217, 5, 'Pages', 'checkcaptcha', 1),
(218, 1, 'Pages', 'freesignup', 1),
(219, 2, 'Pages', 'freesignup', 1),
(220, 3, 'Pages', 'freesignup', 1),
(221, 4, 'Pages', 'freesignup', 1),
(222, 5, 'Pages', 'freesignup', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE IF NOT EXISTS `user_settings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `name_public` text,
  `value` text,
  `type` varchar(50) DEFAULT NULL,
  `category` varchar(20) DEFAULT 'OTHER',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `name`, `name_public`, `value`, `type`, `category`) VALUES
(1, 'defaultTimeZone', 'Enter default time zone identifier', 'America/New_York', 'input', 'OTHER'),
(2, 'siteName', 'Enter Your Site Name', 'Boost Next', 'input', 'OTHER'),
(3, 'siteRegistration', 'New Registration is allowed or not', '1', 'checkbox', 'USER'),
(4, 'allowDeleteAccount', 'Allow users to delete account', '0', 'checkbox', 'USER'),
(5, 'sendRegistrationMail', 'Send Registration Mail After User Registered', '0', 'checkbox', 'EMAIL'),
(6, 'sendPasswordChangeMail', 'Send Password Change Mail After User changed password', '0', 'checkbox', 'EMAIL'),
(7, 'emailVerification', 'Want to verify user''s email address?', '1', 'checkbox', 'EMAIL'),
(8, 'emailFromAddress', 'Enter email by which emails will be send.', 'example@example.com', 'input', 'EMAIL'),
(9, 'emailFromName', 'Enter Email From Name', 'BoostNext', 'input', 'EMAIL'),
(10, 'allowChangeUsername', 'Do you want to allow users to change their username?', '0', 'checkbox', 'USER'),
(11, 'bannedUsernames', 'Set banned usernames comma separated(no space, no quotes)', 'Administrator, SuperAdmin', 'input', 'USER'),
(12, 'useRecaptcha', 'Do you want to add captcha support on registration form, contact us form, login form in case bad logins, forgot password page, email verification page? Please note we have separate settings for all pages to Add or Remove captcha.', '0', 'checkbox', 'RECAPTCHA'),
(13, 'privateKeyFromRecaptcha', 'Enter private key for Recaptcha from google', '6Lcg4SETAAAAAHqgA3deXDRX-MN7R7RrPQqjS4oR', 'input', 'RECAPTCHA'),
(14, 'publicKeyFromRecaptcha', 'Enter public key for recaptcha from google', '6Lcg4SETAAAAAEH4-zWl_am79kp8JGQLk_vf7Tm6', 'input', 'RECAPTCHA'),
(15, 'loginRedirectUrl', 'Enter URL where user will be redirected after login ', '/dashboard', 'input', 'OTHER'),
(16, 'logoutRedirectUrl', 'Enter URL where user will be redirected after logout', '/', 'input', 'OTHER'),
(17, 'permissions', 'Do you Want to enable permissions for users?', '1', 'checkbox', 'PERMISSION'),
(18, 'adminPermissions', 'Do you want to check permissions for Admin?', '0', 'checkbox', 'PERMISSION'),
(19, 'defaultGroupId', 'Enter default group id for user registration', '2', 'input', 'GROUP'),
(20, 'adminGroupId', 'Enter Admin Group Id', '1', 'input', 'GROUP'),
(21, 'guestGroupId', 'Enter Guest Group Id', '3', 'input', 'GROUP'),
(22, 'useFacebookLogin', 'Want to use Facebook Connect on your site?', '1', 'checkbox', 'FACEBOOK'),
(23, 'facebookAppId', 'Facebook Application Id', '978761028889116', 'input', 'FACEBOOK'),
(24, 'facebookSecret', 'Facebook Application Secret Code', '8909fa7541290e48ba7e208c62f185c3', 'input', 'FACEBOOK'),
(25, 'facebookScope', 'Facebook Permissions', 'user_status, publish_stream, email', 'input', 'FACEBOOK'),
(26, 'useTwitterLogin', 'Want to use Twitter Connect on your site?', '0', 'checkbox', 'TWITTER'),
(27, 'twitterConsumerKey', 'Twitter Consumer Key', '', 'input', 'TWITTER'),
(28, 'twitterConsumerSecret', 'Twitter Consumer Secret', '', 'input', 'TWITTER'),
(29, 'useGmailLogin', 'Want to use Gmail Connect on your site?', '1', 'checkbox', 'GOOGLE'),
(30, 'useYahooLogin', 'Want to use Yahoo Connect on your site?', '1', 'checkbox', 'YAHOO'),
(31, 'useLinkedinLogin', 'Want to use Linkedin Connect on your site?', '0', 'checkbox', 'LINKEDIN'),
(32, 'linkedinApiKey', 'Linkedin Api Key', '', 'input', 'LINKEDIN'),
(33, 'linkedinSecretKey', 'Linkedin Secret Key', '', 'input', 'LINKEDIN'),
(34, 'useFoursquareLogin', 'Want to use Foursquare Connect on your site?', '0', 'checkbox', 'FOURSQUARE'),
(35, 'foursquareClientId', 'Foursquare Client Id', '', 'input', 'FOURSQUARE'),
(36, 'foursquareClientSecret', 'Foursquare Client Secret', '', 'input', 'FOURSQUARE'),
(37, 'viewOnlineUserTime', 'You can view online users and guest from last few minutes, set time in minutes ', '30', 'input', 'USER'),
(38, 'useHttps', 'Do you want to HTTPS for whole site?', '0', 'checkbox', 'OTHER'),
(39, 'httpsUrls', 'You can set selected urls for HTTPS (e.g. users/login, users/register)', NULL, 'input', 'OTHER'),
(40, 'imgDir', 'Enter Image directory name where users profile photos will be uploaded. This directory should be in webroot/img directory', 'umphotos', 'input', 'OTHER'),
(41, 'QRDN', 'Increase this number by 1 every time if you made any changes in CSS or JS file', '12345678', 'input', 'OTHER'),
(42, 'cookieName', 'Please enter cookie name for your site which is used to login user automatically for remember me functionality', 'bosterkokie', 'input', 'OTHER'),
(43, 'adminEmailAddress', 'Admin Email address for emails', '', 'input', 'EMAIL'),
(44, 'useRecaptchaOnLogin', 'Do you want to add captcha support on login form in case bad logins? For this feature you must have Captcha setting ON with valid private and public keys.', '1', 'checkbox', 'RECAPTCHA'),
(45, 'badLoginAllowCount', 'Set number of allowed bad logins. for e.g. 5 or 10. For this feature you must have Captcha setting ON with valid private and public keys.', '5', 'input', 'RECAPTCHA'),
(46, 'useRecaptchaOnRegistration', 'Do you want to add captcha support on registration form? For this feature you must have Captcha setting ON with valid private and public keys.', '1', 'checkbox', 'RECAPTCHA'),
(47, 'useRecaptchaOnForgotPassword', 'Do you want to add captcha support on forgot password page? For this feature you must have Captcha setting ON with valid private and public keys.', '1', 'checkbox', 'RECAPTCHA'),
(48, 'useRecaptchaOnEmailVerification', 'Do you want to add captcha support on email verification page? For this feature you must have Captcha setting ON with valid private and public keys.', '1', 'checkbox', 'RECAPTCHA'),
(49, 'useRememberMe', 'Set true/false if you want to add/remove remember me feature on login page', '1', 'checkbox', 'USER'),
(50, 'allowUserMultipleLogin', 'Do you want to allow multiple logins with same user account for users(not admin)?', '1', 'checkbox', 'USER'),
(51, 'allowAdminMultipleLogin', 'Do you want to allow multiple logins with same user account for admin(not users)?', '1', 'checkbox', 'USER'),
(52, 'loginIdleTime', 'Set max idle time in minutes for user. This idle time will be used when multiple logins are not allowed for same user account. If max idle time reached since user last activity on site then anyone can login with same account in other browser and idle user will be logged out.', '10', 'input', 'USER'),
(53, 'gmailApiKey', 'Google Api Key', '', 'input', 'GOOGLE'),
(54, 'gmailClientId', 'Google Client Id', '', 'input', 'GOOGLE'),
(55, 'gmailClientSecret', 'Google Client Secret', '', 'input', 'GOOGLE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
