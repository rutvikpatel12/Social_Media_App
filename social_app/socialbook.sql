-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 05:37 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add post', 8, 'add_post'),
(30, 'Can change post', 8, 'change_post'),
(31, 'Can delete post', 8, 'delete_post'),
(32, 'Can view post', 8, 'view_post'),
(33, 'Can add like post', 9, 'add_likepost'),
(34, 'Can change like post', 9, 'change_likepost'),
(35, 'Can delete like post', 9, 'delete_likepost'),
(36, 'Can view like post', 9, 'view_likepost'),
(37, 'Can add followers count', 10, 'add_followerscount'),
(38, 'Can change followers count', 10, 'change_followerscount'),
(39, 'Can delete followers count', 10, 'delete_followerscount'),
(40, 'Can view followers count', 10, 'view_followerscount');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$1dGtDSBd2EhSenE2colsVF$Zxs9TlNbczF26KnQTyaRROkOLPSG8/M+bPQu/N4TqRA=', '2023-12-04 17:46:57.104731', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-12-02 13:07:57.529449'),
(2, 'pbkdf2_sha256$600000$xAEywWLnh9oeyip59iDRvX$XCu+TMJQUfDIv3Jl32qy/qrI9VwL9/jMkILze0GKKSs=', '2023-12-04 17:10:05.734347', 0, 'rutvik', '', '', 'rutvik@gmail.com', 0, 1, '2023-12-02 13:09:18.667905'),
(3, 'pbkdf2_sha256$600000$XYI2nQunGQu0ZalbGVO0gY$o5OIXhcPGqmYMZMcaUEGzTy0eBCtYLjfrG0++czbZYg=', '2023-12-04 17:24:39.688366', 0, 'abc', '', '', 'abc@gmail.com', 0, 1, '2023-12-02 13:12:40.920478'),
(4, 'pbkdf2_sha256$600000$RogcqEA4JgjFBPMqNKgkfh$G2Vfp/8qAsDCk19IjI5/8XBPWHmNF0u+mS5k1pJJXVQ=', '2023-12-04 17:13:31.362968', 0, 'tushar', '', '', 'tushar@gmail.com', 0, 1, '2023-12-02 13:18:13.638610'),
(5, 'pbkdf2_sha256$600000$KWyftYjRBm4eQsuTHsl4Cg$jG3OHhcRW8rjEkWIY6uvyQyNyTKAeRSLrkJfdJpbQN8=', '2023-12-04 17:10:47.670321', 0, 'user', '', '', 'user@gmail.com', 0, 1, '2023-12-04 17:10:46.584265');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_followerscount`
--

CREATE TABLE `core_followerscount` (
  `id` bigint(20) NOT NULL,
  `follower` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_followerscount`
--

INSERT INTO `core_followerscount` (`id`, `follower`, `user`) VALUES
(2, 'abc', 'rutvik'),
(6, 'abc', 'tushar');

-- --------------------------------------------------------

--
-- Table structure for table `core_likepost`
--

CREATE TABLE `core_likepost` (
  `id` bigint(20) NOT NULL,
  `post_id` varchar(500) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_likepost`
--

INSERT INTO `core_likepost` (`id`, `post_id`, `username`) VALUES
(1, '6adc3179-ac87-4d5b-9c37-f9dd9e8060b6', 'abc'),
(2, '7e23c398-b878-46dc-8287-159a0339d666', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `core_post`
--

CREATE TABLE `core_post` (
  `id` char(32) NOT NULL,
  `user` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `caption` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `no_of_likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_post`
--

INSERT INTO `core_post` (`id`, `user`, `image`, `caption`, `created_at`, `no_of_likes`) VALUES
('6adc3179ac874d5b9c37f9dd9e8060b6', 'rutvik', 'post_images/img3_3c2vI4P.jpg', 'Play with toys', '2023-12-02 18:40:36.397601', 1),
('7e23c398b87846dc8287159a0339d666', 'rutvik', 'post_images/pexels-pok-rie-2049422.jpg', 'Background Image', '2023-12-04 22:36:06.920505', 1),
('8a2c824fbc3949c1ae7caf6c2414e0d7', 'user', 'post_images/pexels-francis-seura-6356163.jpg', 'This is rabit image', '2023-12-04 22:41:38.076808', 0),
('bb892cde4d1a402d9e4183f2ccff5f62', 'abc', 'post_images/bird-ga33ef944c_1920.jpg', 'this is sprrow', '2023-12-02 18:45:02.117130', 0),
('d061f75ee9ff4f7996eecf63fe6397f9', 'tushar', 'post_images/pexels-pixabay-461940.jpg', 'Nature image', '2023-12-02 18:49:29.106557', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_profile`
--

CREATE TABLE `core_profile` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bio` longtext NOT NULL,
  `profileimg` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_profile`
--

INSERT INTO `core_profile` (`id`, `id_user`, `bio`, `profileimg`, `location`, `user_id`) VALUES
(1, 2, 'i am a software developer', 'profile_images/IMG_20190910_091645.jpg', 'Ahmedabad', 2),
(2, 3, 'I am a developer', 'profile_images/IMG_20190910_091645_xc1TOHf.jpg', 'Ahmedabad', 3),
(3, 4, '', 'blank-profile-picture.png', '', 4),
(4, 5, 'I am a developer', 'profile_images/IMG_20210409_191714.jpg', 'Ahmedabad', 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'core', 'followerscount'),
(9, 'core', 'likepost'),
(8, 'core', 'post'),
(7, 'core', 'profile'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-12-02 13:04:04.185050'),
(2, 'auth', '0001_initial', '2023-12-02 13:04:31.295698'),
(3, 'admin', '0001_initial', '2023-12-02 13:04:37.086968'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-12-02 13:04:37.144251'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-02 13:04:37.204731'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-12-02 13:04:39.282129'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-12-02 13:04:42.866769'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-12-02 13:04:43.257273'),
(9, 'auth', '0004_alter_user_username_opts', '2023-12-02 13:04:43.607182'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-12-02 13:04:45.520187'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-12-02 13:04:45.577241'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-02 13:04:45.734103'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-12-02 13:04:46.105599'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-02 13:04:46.497004'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-12-02 13:04:46.849368'),
(16, 'auth', '0011_update_proxy_permissions', '2023-12-02 13:04:47.328712'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-12-02 13:04:48.529346'),
(18, 'core', '0001_initial', '2023-12-02 13:04:52.346480'),
(19, 'core', '0002_post', '2023-12-02 13:04:52.947732'),
(20, 'core', '0003_likepost', '2023-12-02 13:04:53.665944'),
(21, 'core', '0004_followerscount', '2023-12-02 13:04:55.144919'),
(22, 'core', '0005_alter_post_image', '2023-12-02 13:04:55.318149'),
(23, 'core', '0006_alter_post_image', '2023-12-02 13:04:55.431819'),
(24, 'sessions', '0001_initial', '2023-12-02 13:04:57.210152');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `core_followerscount`
--
ALTER TABLE `core_followerscount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_likepost`
--
ALTER TABLE `core_likepost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_post`
--
ALTER TABLE `core_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_profile`
--
ALTER TABLE `core_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_profile_user_id_bf8ada58_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_followerscount`
--
ALTER TABLE `core_followerscount`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_likepost`
--
ALTER TABLE `core_likepost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_profile`
--
ALTER TABLE `core_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_profile`
--
ALTER TABLE `core_profile`
  ADD CONSTRAINT `core_profile_user_id_bf8ada58_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
