-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2015 at 06:16 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oauth2server`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('00dd7aeac1743bebb995b2ce602426dde8710d72', 'testclient', NULL, '2015-09-14 00:21:49', 'basic'),
('035bb77a30a59284bc4a392804da7dc5cee05e6b', 'testclient', NULL, '2015-09-14 00:23:29', 'basic'),
('036b459be235e4dee2e81a7c70b76a5c50519aad', 'testclient', NULL, '2015-09-13 23:48:37', 'basic'),
('08cbd9ded55d199f7ce5d0cb6ba55783b4ce1c58', 'testclient', NULL, '2015-09-09 22:56:26', NULL),
('12500b407a6a85cab3f96eb08610c7080a4dec23', 'testclient', NULL, '2015-09-13 23:56:39', 'basic'),
('21aee8c4d459a86cd9c5726c24b6e5fc8cb25412', 'testclient', NULL, '2015-09-17 18:11:51', 'basic'),
('25d53972dcb3bc32d5701f441c323bdd303f1d79', 'testclient', NULL, '2015-09-13 23:22:59', 'basic'),
('2de560713d7705bef3fbcf21c60d7cf3e776cd3c', 'testclient', NULL, '2015-09-09 22:51:04', NULL),
('348ca7396c694a3cfab920cdd69c3771c35432b4', 'testclient', NULL, '2015-09-17 18:06:37', 'basic'),
('366019140eb1581c2ae397bfa411ec2c5b1074f1', 'testclient', NULL, '2015-09-14 00:31:16', 'basic'),
('4846881856a9e7459c0b3b8db664840de7ed6565', 'testclient', NULL, '2015-09-14 00:31:49', 'basic'),
('55444a53106f5421c56d7ce721b74ad15c79a057', 'testclient', NULL, '2015-09-13 23:56:29', 'basic'),
('7012057780951530bea54064886012afa61342bb', 'testclient', NULL, '2015-09-14 00:15:10', 'basic'),
('77b17393eca5bc3f6a2159af9da2f79299389841', 'testclient', NULL, '2015-09-13 23:48:03', 'basic'),
('781de56f1af9f7764418bda2a08ca70a029ee20e', 'testclient', NULL, '2015-09-14 00:17:29', 'basic'),
('82cb56d3cd4f0a382191bc6ef94e044c2af888d3', 'testclient', NULL, '2015-09-13 23:46:08', 'basic'),
('a514e213ec5103ba3354ced6d956ea9bd50c1ebc', 'testclient', NULL, '2015-09-13 23:47:16', 'basic'),
('a58858fda734c84352feff2e5db80ae19c7089a0', 'testclient', NULL, '2015-09-13 23:51:11', 'basic'),
('a8ccaa6fab0f9d4e5c6ba7eebec3c74082c70f55', 'testclient', NULL, '2015-09-13 23:50:30', 'basic'),
('a96eedcdbe0fcf16f0382f0acb2d3c532fd8c10e', 'testclient', NULL, '2015-09-10 21:49:55', 'basic'),
('b4f2e5ba00108b9ed36202b18c7da3b5d0f30708', 'testclient', NULL, '2015-09-14 00:16:14', 'basic'),
('bcf217d9c7a62094246b36e3ba887cbb96f4ddcd', 'testclient', NULL, '2015-09-14 00:11:18', 'basic'),
('c4687d00903fdaa809fbe4f214f15fd11f507610', 'testclient', NULL, '2015-09-13 22:17:19', 'basic'),
('c5d68272d88ed8e6f55e60d859f876b0f89a54d7', 'testclient', NULL, '2015-09-13 23:51:30', 'basic'),
('d4d39eafa1ad391dc5f9571ee5d20a3f84dadb0b', 'testclient', NULL, '2015-09-14 00:10:04', 'basic'),
('d566d1011db54a7c81fdc46350ff7509734fe40b', 'testclient', NULL, '2015-09-17 18:11:32', 'basic'),
('d801d11575997a93c265b33d359cbe793c83af03', 'testclient', NULL, '2015-09-09 23:07:57', NULL),
('d84d95340260ef5fc40614be2cdfb58849e906f4', 'testclient', NULL, '2015-09-14 00:28:42', 'basic'),
('e5c9170c55d07ceeb4d27bb917c0664e525ba794', 'testclient', NULL, '2015-09-14 00:08:36', 'basic'),
('e86bf40495f4dd9c23c9111c9360da4002c4c7cc', 'testclient', NULL, '2015-09-14 00:16:53', 'basic'),
('eb9b7299afc9bcd32a71229d1e9d2603ece6c66c', 'testclient', NULL, '2015-09-17 18:03:39', 'basic'),
('f590264aa0f965f50b19b03cb9458a309328cbfd', 'testclient', NULL, '2015-09-14 00:05:23', 'basic'),
('f7e094aebc66a4138f3e1b959d73936dd3d7fc56', 'testclient', NULL, '2015-09-14 00:07:59', 'basic'),
('f99c4a0e3fb932e58fcc4cc4f5490db085003f2b', 'testclient', NULL, '2015-09-14 00:28:13', 'basic');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_authorization_codes`
--

INSERT INTO `oauth_authorization_codes` (`authorization_code`, `client_id`, `user_id`, `redirect_uri`, `expires`, `scope`) VALUES
('00baf25efd13108f834c462f27d57ca829fe2c17', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 17:11:15', 'basic'),
('03ecae5562e9dd4553c3e2bf5420768f14cc5afa', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:20:13', 'basic'),
('064841f0e18a522a2e6c76a0e71a1021ddba03f0', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 17:07:25', 'basic'),
('12255b970024dee8584d58495034319454f5575a', 'testclient', NULL, 'http://localhost/oauth2server', '2015-09-13 21:14:49', 'basic'),
('157c4d0b2c28bb0551a3c4df2840cb0eb7b5a67b', 'testclient', NULL, NULL, '2015-09-09 22:07:29', NULL),
('212afc7806e8ec45d2a962ff0170bfccd449446e', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:08:49', 'basic'),
('232da6e8b456a9c2be8eb569fd9ac62835d4b1c5', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 20:48:12', 'basic'),
('27184965683516d9cce3449b8003afd128fbb095', 'testclient', NULL, NULL, '2015-09-13 16:11:46', NULL),
('2751af688406f7810b3817d8180c6f74bc60ebff', 'testclient', NULL, 'http://localhost/oauth2server', '2015-09-13 21:09:10', 'basic'),
('3518abeba62f4250613e7aab4ef727c6adb255d6', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 22:10:38', 'basic'),
('362158dd17259e30af25b1c5b137b3b45b2e3034', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 16:59:06', 'basic'),
('39b7d0a06886b00ac5a0565b2a63735dafe54e67', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:18:31', 'basic'),
('3d4fcb33d49053c829e511ccb8f4b1bf933e5bf8', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 16:32:53', 'basic'),
('3d60205fb39f5875b524306a78cb1cec767db8cd', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-13 16:21:07', NULL),
('42c614751a6335259ba7fee40da585af9990fdfd', 'testclient', NULL, NULL, '2015-09-09 23:21:16', NULL),
('58d6bc1ea4d51685ad057487c075481901ba55f4', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:11:28', 'basic'),
('5b95889e6563247650676e11a787e3f68d7277cf', 'testclient', NULL, 'http://localhost/oauth2server/index.php', '2015-09-13 22:02:42', 'basic'),
('63e32dec0c7a8a490510965251a4b735daaffcbc', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:27:02', 'basic'),
('641ef4089e3db4b088ce041beef7b4901610520e', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 23:12:56', 'basic'),
('7b39ec6719e68a7bae965ba0adb4f11d18b8f404', 'testclient', NULL, NULL, '2015-09-13 16:11:33', NULL),
('7d0f6ac1cadae0e62858c4cbf301dfd001efec4c', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 17:05:07', 'basic'),
('7fcdc29b164ba65aef2428f4cb45030a8fbd4ac1', 'testclient', NULL, 'http://localhost/oauth2server', '2015-09-13 21:03:00', 'basic'),
('7ff07b1fca5cb4d81843fe9c4eb3730d246d3b2a', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:08:20', 'basic'),
('802a96cc60aa81596f46a32c4cfd3b47aa337cf5', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 21:16:50', 'basic'),
('8286bb41d34fd2ff49da9e783ae57248980f05db', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:19:35', 'basic'),
('8622c29c7eff0b3ee5935a5cf2787740497d2837', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 16:12:25', 'basic'),
('874b8cfb9fdce274f4866de936d32db34960c46e', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 16:56:52', 'basic'),
('8b0ee8ba5631860616bfa8272370ba55b478c894', 'testclient', NULL, NULL, '2015-09-13 20:46:46', NULL),
('8ed81686577bf874433cf4f2952badd390e8ff6f', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 20:44:16', 'basic'),
('946bc6071424633363da8937687b4e20600fa643', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 20:16:52', 'basic'),
('9d5734eeb00a14ad911bd9499efaa1b2b8c025c6', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 16:35:32', 'basic'),
('ad8725df1c251fdf1b212f6e54ef2f83c9416450', 'testclient', NULL, NULL, '2015-09-09 22:06:06', NULL),
('b2b6dae796c47c6e8496f54eb86f57786ac010bb', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 21:15:08', 'basic'),
('b2c510161c747d3010e11fa2d25bbd36dd0b218f', 'testclient', NULL, NULL, '2015-09-13 16:12:06', NULL),
('b87c1ff9888dd315dec6c4667df8d5f93c2b67d2', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-13 22:30:37', 'basic'),
('bbd77111f94bcf14c2fd2c7fd642982f0870bb4e', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 16:09:53', 'basic'),
('bc760405df4482e4daf6a1b88113df7a8533067b', 'testclient', NULL, NULL, '2015-09-13 16:07:24', NULL),
('c4d105c27d24dcf201bba3bc5c3ae327a75896b3', 'testclient', NULL, 'http://localhost/oauth2server', '2015-09-13 20:51:40', 'basic'),
('ce627f9c93e8683b34f59af584e7ec102106a3b0', 'testclient', NULL, 'https://developers.google.com/oauthplayground', '2015-09-10 17:58:32', 'basic'),
('d33df2be2078e8a5482bf5221b5c806d17dd4a27', 'testclient', NULL, 'http://localhost/oauth2server/index.php', '2015-09-13 22:06:12', 'basic'),
('d897221d2fecb4015f1c103705946446afb79d78', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 17:08:43', 'basic'),
('e2b99ac71698bdd3aec492ac08da835151a2f8c0', 'testclient', NULL, 'http://localhost/oauth2server', '2015-09-13 21:24:46', 'basic'),
('ec35b5891ffb66ae4727b2cc6945437dc132c815', 'testclient', NULL, 'http://localhost/oauth2server', '2015-09-13 21:40:12', 'basic'),
('f2c8c68bbd681cf9d90f8abef68dd525e5e6a34f', 'testclient', NULL, 'http://localhost/oauth2client/index.php', '2015-09-17 16:08:06', 'basic'),
('f7029f9c4f1e1506598f92e50aa60963de52b1d9', 'testclient', NULL, 'http://localhost/oauth2server/index.php', '2015-09-13 22:04:20', 'basic');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) NOT NULL,
  `redirect_uri` varchar(2000) NOT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', 'testpass', 'http://localhost/oauth2client/index.php', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scope` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('034af3c67b9fa53837e5e0974db7f6ca7eb7f334', 'testclient', NULL, '2015-09-27 23:16:53', 'basic'),
('0b774b19231ab934c512eea02ec923c44f03bd86', 'testclient', NULL, '2015-09-27 23:08:36', 'basic'),
('1481611558c0bc860c644d7ade2509a86ec5f542', 'testclient', NULL, '2015-09-27 23:05:23', 'basic'),
('2a8636f97e6476e437951a232d0b079522891f0e', 'testclient', NULL, '2015-09-27 23:16:14', 'basic'),
('2b557a6ba9d5b63bc2df5f5647610b498cba5b8d', 'testclient', NULL, '2015-09-27 23:28:13', 'basic'),
('332b7d6f6d4f150995975a632cc9491a4db5f02b', 'testclient', NULL, '2015-09-27 23:21:49', 'basic'),
('3947c9150d70e133d36cdfa3d1f10ccda41fd375', 'testclient', NULL, '2015-09-27 23:07:59', 'basic'),
('3fbc113e065f71f7bf29cb7d0fbac7715464ca20', 'testclient', NULL, '2015-10-01 17:03:39', 'basic'),
('4a36f848694918bd4f9a12d12bfbc6283fe0c345', 'testclient', NULL, '2015-09-27 23:10:04', 'basic'),
('4c0f42e6e3a6a91f29b6deb1cb781dab4ee5c570', 'testclient', NULL, '2015-10-01 17:06:37', 'basic'),
('5366e746b04dfc806a623b5464dd47569e4a6298', 'testclient', NULL, '2015-09-27 22:47:16', 'basic'),
('59e82843fae4c810bc7bce707cb149ffb033dd15', 'testclient', NULL, '2015-09-23 22:07:57', NULL),
('617b19c4f99736efce67ae20fdf3896bd8697538', 'testclient', NULL, '2015-09-27 22:46:08', 'basic'),
('7166116e5ec4633c3f68d2d12e2727ef99ceb57f', 'testclient', NULL, '2015-09-27 23:31:16', 'basic'),
('76a8c878881855daa34b7761e1f7468b31816eeb', 'testclient', NULL, '2015-09-27 22:51:11', 'basic'),
('81ba3d22575690f4f8dc8bb3a30a714c4bf31abb', 'testclient', NULL, '2015-09-27 22:56:29', 'basic'),
('825ac0652e9eedf2222199c1b027aa7e28d356fc', 'testclient', NULL, '2015-10-01 17:11:32', 'basic'),
('85e73fd674debd52a422fe549d7c7e0faf53fc91', 'testclient', NULL, '2015-09-27 22:50:30', 'basic'),
('8d207d2d7120c86f39b40f450a5806b3b32f02df', 'testclient', NULL, '2015-09-27 21:17:19', 'basic'),
('8ed8b7d36e0706ce196d134149c544791bd66d33', 'testclient', NULL, '2015-09-27 23:11:18', 'basic'),
('950b286b05ec3fdb53878aa365e86c6a5ea0b5a6', 'testclient', NULL, '2015-09-27 22:48:37', 'basic'),
('9cd534783217c5cc133a498dc3c7dba859d61d9d', 'testclient', NULL, '2015-09-27 23:17:29', 'basic'),
('bcb2f75225f2b13d2a31aef7ae8888a2c44823d4', 'testclient', NULL, '2015-09-27 22:48:03', 'basic'),
('c47ad3c6937aa8ee64e72c65423b3f1936094827', 'testclient', NULL, '2015-09-27 23:15:10', 'basic'),
('cbfe85bc656723474c1dfed6d034ed72c956bb40', 'testclient', NULL, '2015-09-27 23:28:42', 'basic'),
('cf5dcbca74f135a0d0e957f648c817d9b3d71020', 'testclient', NULL, '2015-10-01 17:11:51', 'basic'),
('d2d32f73eb4420fad14ea472e761a4f2c6a4189c', 'testclient', NULL, '2015-09-24 20:49:55', 'basic'),
('dcd646b3c0e597a27c756d7c7755a2e6723072a0', 'testclient', NULL, '2015-09-27 23:31:49', 'basic'),
('e33b534c165888134984769301b0023e282d244b', 'testclient', NULL, '2015-09-27 23:23:29', 'basic'),
('eaf622d2b215f2009720b0c3efe3629213dd09d1', 'testclient', NULL, '2015-09-27 22:22:59', 'basic'),
('f8cf5ca218559c0becce0a6e70952d67968772ea', 'testclient', NULL, '2015-09-27 22:56:39', 'basic'),
('fa63e7744651282f85456bbaffe2cee3b53574e9', 'testclient', NULL, '2015-09-27 22:51:30', 'basic');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` text,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_scopes`
--

INSERT INTO `oauth_scopes` (`scope`, `is_default`) VALUES
('basic', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`) VALUES
('test', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'testUser', 'TU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_jwt`
--
ALTER TABLE `oauth_jwt`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
