-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 30, 2018 at 12:32 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-23 02:58:33', '2018-10-23 02:58:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:3157/beta', 'yes'),
(2, 'home', 'http://localhost:3157/beta', 'yes'),
(3, 'blogname', 'Human Rights Arts and Film Festival', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hbak0001@student.monash.edu', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:130:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"city/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:40:\"city/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:21:\"city/([^/]+)/embed/?$\";s:37:\"index.php?city=$matches[1]&embed=true\";s:33:\"city/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?city=$matches[1]&paged=$matches[2]\";s:15:\"city/([^/]+)/?$\";s:26:\"index.php?city=$matches[1]\";s:51:\"event_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:46:\"event_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:27:\"event_type/([^/]+)/embed/?$\";s:43:\"index.php?event_type=$matches[1]&embed=true\";s:39:\"event_type/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?event_type=$matches[1]&paged=$matches[2]\";s:21:\"event_type/([^/]+)/?$\";s:32:\"index.php?event_type=$matches[1]\";s:46:\"topic/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?topic=$matches[1]&feed=$matches[2]\";s:41:\"topic/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?topic=$matches[1]&feed=$matches[2]\";s:22:\"topic/([^/]+)/embed/?$\";s:38:\"index.php?topic=$matches[1]&embed=true\";s:34:\"topic/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?topic=$matches[1]&paged=$matches[2]\";s:16:\"topic/([^/]+)/?$\";s:27:\"index.php?topic=$matches[1]\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(241, '_transient_is_multi_author', '0', 'yes'),
(235, '_site_transient_timeout_browser_4fa9e3bb35377d7006ad9d9501aa7b2f', '1541416767', 'no'),
(236, '_site_transient_browser_4fa9e3bb35377d7006ad9d9501aa7b2f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'hraff-theme-beta', 'yes'),
(41, 'stylesheet', 'hraff-theme-beta', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_AU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1540861156;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540868356;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1540868848;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540869528;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(248, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1540828079;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(249, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540858278;s:7:\"checked\";a:4:{s:16:\"hraff-theme-beta\";s:3:\"0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(254, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1540902572', 'no'),
(255, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Melbourne/events/245299519/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2018-11-14 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829201;s:9:\"longitude\";d:144.990082;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:33:\"WordPress Geelong November Meetup\";s:3:\"url\";s:58:\"https://www.meetup.com/WordPress-Geelong/events/253804745/\";s:6:\"meetup\";s:17:\"WordPress Geelong\";s:10:\"meetup_url\";s:41:\"https://www.meetup.com/WordPress-Geelong/\";s:4:\"date\";s:19:\"2018-11-15 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Geelong, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-38.147102;s:9:\"longitude\";d:144.35657;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:63:\"https://www.meetup.com/WordPress-Melbourne/events/kkkwlpyxqbqb/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2018-12-12 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829201;s:9:\"longitude\";d:144.990082;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Melbourne/events/255475008/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2019-01-09 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829201;s:9:\"longitude\";d:144.990082;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:63:\"https://www.meetup.com/WordPress-Melbourne/events/kkkwlpyzdbrb/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2019-02-13 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829201;s:9:\"longitude\";d:144.990082;}}}}', 'no'),
(252, '_site_transient_timeout_theme_roots', '1540860077', 'no'),
(253, '_site_transient_theme_roots', 'a:4:{s:16:\"hraff-theme-beta\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(250, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1540831510;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.7\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.6.0\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(120, '_site_transient_timeout_browser_c34fbe0893b504a8f7ca5b8e754e60a9', '1540868614', 'no'),
(121, '_site_transient_browser_c34fbe0893b504a8f7ca5b8e754e60a9', 'a:10:{s:4:\"name\";s:14:\"Microsoft Edge\";s:7:\"version\";s:8:\"16.16299\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:8:\"15.15063\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540858284', 'no'),
(259, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1540901484', 'no'),
(260, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1540901484', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'acf_version', '5.7.7', 'yes'),
(149, 'cptui_new_install', 'false', 'yes'),
(256, '_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3', '1540901483', 'no'),
(257, '_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1540901483', 'no'),
(258, '_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3', '1540858283', 'no'),
(262, '_transient_timeout_dash_v2_fe2922e4dab38d163882ac0453e47f7b', '1540901484', 'no'),
(263, '_transient_dash_v2_fe2922e4dab38d163882ac0453e47f7b', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/10/wordpress-5-0-beta-1/\'>WordPress 5.0 Beta 1</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/phpworld-2018-to-feature-full-day-gutenberg-development-workshop\'>WPTavern: php[world] 2018 to Feature Full-Day Gutenberg Development Workshop</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/woocommerce-3-5-introduces-rest-api-v3-improves-transactional-emails\'>WPTavern: WooCommerce 3.5 Introduces REST API v3, Improves Transactional Emails</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wp-engine-acquires-array-themes\'>WPTavern: WP Engine Acquires Array Themes</a></li></ul></div>', 'no'),
(154, 'cptui_taxonomies', 'a:3:{s:4:\"city\";a:24:{s:4:\"name\";s:4:\"city\";s:5:\"label\";s:6:\"Cities\";s:14:\"singular_label\";s:4:\"City\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}s:10:\"event_type\";a:24:{s:4:\"name\";s:10:\"event_type\";s:5:\"label\";s:11:\"Event Types\";s:14:\"singular_label\";s:10:\"Event Type\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}s:5:\"topic\";a:24:{s:4:\"name\";s:5:\"topic\";s:5:\"label\";s:6:\"Topics\";s:14:\"singular_label\";s:5:\"Topic\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}}', 'yes'),
(160, 'cptui_post_types', 'a:1:{s:5:\"event\";a:29:{s:4:\"name\";s:5:\"event\";s:5:\"label\";s:6:\"Events\";s:14:\"singular_label\";s:5:\"Event\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:2:\"20\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:17:\"dashicons-tickets\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:5:\"venue\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(167, 'city_children', 'a:0:{}', 'yes'),
(182, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:12;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1540858517;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(175, 'event_type_children', 'a:0:{}', 'yes'),
(178, 'topic_children', 'a:0:{}', 'yes'),
(190, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(192, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(197, 'category_children', 'a:0:{}', 'yes'),
(204, 'current_theme', 'FIT3157 Simple Example', 'yes'),
(205, 'theme_mods_hraff-theme-beta', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:12;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1540811938;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}}}}', 'yes'),
(206, 'theme_switched', '', 'yes'),
(218, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1541394371', 'no'),
(219, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 9, '_edit_last', '1'),
(4, 9, '_edit_lock', '1540266107:1'),
(5, 16, '_edit_last', '1'),
(6, 16, '_edit_lock', '1540793665:1'),
(7, 26, '_edit_last', '1'),
(8, 26, '_edit_lock', '1540267169:1'),
(9, 29, '_edit_last', '1'),
(10, 29, '_edit_lock', '1540686719:1'),
(11, 29, 'event_date', '2019-05-10 18:00:00'),
(12, 29, '_event_date', 'field_5bce98bfd9d08'),
(13, 29, 'event_duration', '70'),
(14, 29, '_event_duration', 'field_5bce991ad9d09'),
(15, 29, 'event_language', 'English'),
(16, 29, '_event_language', 'field_5bce9a5a3748a'),
(17, 29, 'director', 'Claudia Sangiori Dalimore'),
(18, 29, '_director', 'field_5bce9b013748b'),
(19, 29, 'artist', ''),
(20, 29, '_artist', 'field_5bce9b1a3748c'),
(21, 29, 'speaker', ''),
(22, 29, '_speaker', 'field_5bce9b263748d'),
(23, 29, 'publishing_year', '2017'),
(24, 29, '_publishing_year', 'field_5bce9b483748e'),
(25, 29, 'age_restriction', 'All Ages'),
(26, 29, '_age_restriction', 'field_5bce9ba13748f'),
(27, 29, 'quote_text', 'Her Sound, Her Story is a vibrant and powerful perspective on the turbulant music industry.'),
(28, 29, '_quote_text', 'field_5bce9c5bde7a4'),
(29, 29, 'author', 'Beat Magazine'),
(30, 29, '_author', 'field_5bce9c63de7a5'),
(31, 29, 'venue_name', 'ACMI Cinemas'),
(32, 29, '_venue_name', 'field_5bce9753f4e1d'),
(33, 29, 'venue_address_line_1', 'Federation Square, Flinders Street'),
(34, 29, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(35, 29, 'venue_address_line_2', ''),
(36, 29, '_venue_address_line_2', 'field_5bce97edf4e20'),
(37, 29, 'suburb', 'Melbourne'),
(38, 29, '_suburb', 'field_5bce97e9f4e1f'),
(39, 29, 'state', 'VIC'),
(40, 29, '_state', 'field_5bce980af4e22'),
(41, 29, 'postcode', '3000'),
(42, 29, '_postcode', 'field_5bce9807f4e21'),
(43, 30, 'event_date', '2019-05-10 18:00:00'),
(44, 30, '_event_date', 'field_5bce98bfd9d08'),
(45, 30, 'event_duration', '70'),
(46, 30, '_event_duration', 'field_5bce991ad9d09'),
(47, 30, 'event_language', 'English'),
(48, 30, '_event_language', 'field_5bce9a5a3748a'),
(49, 30, 'director', 'Claudia Sangiori Dalimore'),
(50, 30, '_director', 'field_5bce9b013748b'),
(51, 30, 'artist', ''),
(52, 30, '_artist', 'field_5bce9b1a3748c'),
(53, 30, 'speaker', ''),
(54, 30, '_speaker', 'field_5bce9b263748d'),
(55, 30, 'publishing_year', '2017'),
(56, 30, '_publishing_year', 'field_5bce9b483748e'),
(57, 30, 'age_restriction', 'All Ages'),
(58, 30, '_age_restriction', 'field_5bce9ba13748f'),
(59, 30, 'quote_text', 'Her Sound, Her Story is a vibrant and powerful perspective on the turbulant music industry.'),
(60, 30, '_quote_text', 'field_5bce9c5bde7a4'),
(61, 30, 'author', 'Beat Magazine'),
(62, 30, '_author', 'field_5bce9c63de7a5'),
(63, 30, 'venue_name', 'ACMI Cinemas'),
(64, 30, '_venue_name', 'field_5bce9753f4e1d'),
(65, 30, 'venue_address_line_1', 'Federation Square, Flinders Street'),
(66, 30, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(67, 30, 'venue_address_line_2', ''),
(68, 30, '_venue_address_line_2', 'field_5bce97edf4e20'),
(69, 30, 'suburb', 'Melbourne'),
(70, 30, '_suburb', 'field_5bce97e9f4e1f'),
(71, 30, 'state', 'VIC'),
(72, 30, '_state', 'field_5bce980af4e22'),
(73, 30, 'postcode', '3000'),
(74, 30, '_postcode', 'field_5bce9807f4e21'),
(75, 2, '_edit_lock', '1540268214:1'),
(76, 31, '_wp_attached_file', '2018/10/espresso.jpg'),
(77, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/10/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 31, '_starter_content_theme', 'twentyseventeen'),
(79, 31, '_customize_draft_post_name', 'espresso'),
(80, 32, '_wp_attached_file', '2018/10/sandwich.jpg'),
(81, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/10/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 32, '_starter_content_theme', 'twentyseventeen'),
(83, 32, '_customize_draft_post_name', 'sandwich'),
(84, 33, '_wp_attached_file', '2018/10/coffee.jpg'),
(85, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/10/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 33, '_starter_content_theme', 'twentyseventeen'),
(87, 33, '_customize_draft_post_name', 'coffee'),
(88, 34, '_customize_draft_post_name', 'home'),
(89, 34, '_customize_changeset_uuid', 'd4da053c-1d28-46f8-9cbc-b7fb2ba7ec94'),
(90, 35, '_thumbnail_id', '32'),
(91, 35, '_customize_draft_post_name', 'about'),
(92, 35, '_customize_changeset_uuid', 'd4da053c-1d28-46f8-9cbc-b7fb2ba7ec94'),
(93, 36, '_thumbnail_id', '31'),
(94, 36, '_customize_draft_post_name', 'contact'),
(95, 36, '_customize_changeset_uuid', 'd4da053c-1d28-46f8-9cbc-b7fb2ba7ec94'),
(96, 37, '_thumbnail_id', '33'),
(97, 37, '_customize_draft_post_name', 'blog'),
(98, 37, '_customize_changeset_uuid', 'd4da053c-1d28-46f8-9cbc-b7fb2ba7ec94'),
(99, 38, '_thumbnail_id', '31'),
(100, 38, '_customize_draft_post_name', 'a-home-page-section'),
(101, 38, '_customize_changeset_uuid', 'd4da053c-1d28-46f8-9cbc-b7fb2ba7ec94'),
(200, 49, '_event_date', 'field_5bce98bfd9d08'),
(199, 49, 'event_date', '2019-05-10 20:00:00'),
(198, 49, '_edit_lock', '1540820286:1'),
(197, 49, '_edit_last', '1'),
(196, 47, '_wp_trash_meta_time', '1540686952'),
(195, 47, '_wp_trash_meta_status', 'publish'),
(111, 41, '_edit_last', '1'),
(112, 41, '_edit_lock', '1540268721:1'),
(113, 41, 'event_date', '2018-10-27 00:00:00'),
(114, 41, '_event_date', 'field_5bce98bfd9d08'),
(115, 41, 'event_duration', '70'),
(116, 41, '_event_duration', 'field_5bce991ad9d09'),
(117, 41, 'event_language', 'English'),
(118, 41, '_event_language', 'field_5bce9a5a3748a'),
(119, 41, 'director', ''),
(120, 41, '_director', 'field_5bce9b013748b'),
(121, 41, 'artist', ''),
(122, 41, '_artist', 'field_5bce9b1a3748c'),
(123, 41, 'speaker', ''),
(124, 41, '_speaker', 'field_5bce9b263748d'),
(125, 41, 'publishing_year', '1987'),
(126, 41, '_publishing_year', 'field_5bce9b483748e'),
(127, 41, 'age_restriction', '15+'),
(128, 41, '_age_restriction', 'field_5bce9ba13748f'),
(129, 41, 'quote_text', ''),
(130, 41, '_quote_text', 'field_5bce9c5bde7a4'),
(131, 41, 'venue_name', 'My House'),
(132, 41, '_venue_name', 'field_5bce9753f4e1d'),
(133, 41, 'venue_address_line_1', 'My House'),
(134, 41, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(135, 41, 'venue_address_line_2', ''),
(136, 41, '_venue_address_line_2', 'field_5bce97edf4e20'),
(137, 41, 'suburb', 'My Suburb'),
(138, 41, '_suburb', 'field_5bce97e9f4e1f'),
(139, 41, 'state', 'VIC'),
(140, 41, '_state', 'field_5bce980af4e22'),
(141, 41, 'postcode', '6969'),
(142, 41, '_postcode', 'field_5bce9807f4e21'),
(143, 42, 'event_date', '2018-10-27 00:00:00'),
(144, 42, '_event_date', 'field_5bce98bfd9d08'),
(145, 42, 'event_duration', '70'),
(146, 42, '_event_duration', 'field_5bce991ad9d09'),
(147, 42, 'event_language', 'English'),
(148, 42, '_event_language', 'field_5bce9a5a3748a'),
(149, 42, 'director', ''),
(150, 42, '_director', 'field_5bce9b013748b'),
(151, 42, 'artist', ''),
(152, 42, '_artist', 'field_5bce9b1a3748c'),
(153, 42, 'speaker', ''),
(154, 42, '_speaker', 'field_5bce9b263748d'),
(155, 42, 'publishing_year', '1987'),
(156, 42, '_publishing_year', 'field_5bce9b483748e'),
(157, 42, 'age_restriction', '15+'),
(158, 42, '_age_restriction', 'field_5bce9ba13748f'),
(159, 42, 'quote_text', ''),
(160, 42, '_quote_text', 'field_5bce9c5bde7a4'),
(161, 42, 'venue_name', 'My House'),
(162, 42, '_venue_name', 'field_5bce9753f4e1d'),
(163, 42, 'venue_address_line_1', 'My House'),
(164, 42, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(165, 42, 'venue_address_line_2', ''),
(166, 42, '_venue_address_line_2', 'field_5bce97edf4e20'),
(167, 42, 'suburb', 'My Suburb'),
(168, 42, '_suburb', 'field_5bce97e9f4e1f'),
(169, 42, 'state', 'VIC'),
(170, 42, '_state', 'field_5bce980af4e22'),
(171, 42, 'postcode', '6969'),
(172, 42, '_postcode', 'field_5bce9807f4e21'),
(173, 1, '_edit_lock', '1540269150:1'),
(174, 43, '_edit_last', '1'),
(175, 43, '_edit_lock', '1540686485:1'),
(176, 45, '_menu_item_type', 'post_type'),
(177, 45, '_menu_item_menu_item_parent', '0'),
(178, 45, '_menu_item_object_id', '43'),
(179, 45, '_menu_item_object', 'page'),
(180, 45, '_menu_item_target', ''),
(181, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 45, '_menu_item_xfn', ''),
(183, 45, '_menu_item_url', ''),
(194, 39, '_customize_restore_dismissed', '1'),
(185, 46, '_menu_item_type', 'post_type'),
(186, 46, '_menu_item_menu_item_parent', '0'),
(187, 46, '_menu_item_object_id', '2'),
(188, 46, '_menu_item_object', 'page'),
(189, 46, '_menu_item_target', ''),
(190, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 46, '_menu_item_xfn', ''),
(192, 46, '_menu_item_url', ''),
(201, 49, 'event_duration', '84'),
(202, 49, '_event_duration', 'field_5bce991ad9d09'),
(203, 49, 'event_language', 'Western Arrarnta and Pitjantjatjara with English subtitles'),
(204, 49, '_event_language', 'field_5bce9a5a3748a'),
(205, 49, 'director', 'Naina Sen'),
(206, 49, '_director', 'field_5bce9b013748b'),
(207, 49, 'artist', ''),
(208, 49, '_artist', 'field_5bce9b1a3748c'),
(209, 49, 'speaker', ''),
(210, 49, '_speaker', 'field_5bce9b263748d'),
(211, 49, 'publishing_year', '2018'),
(212, 49, '_publishing_year', 'field_5bce9b483748e'),
(213, 49, 'age_restriction', 'All Ages'),
(214, 49, '_age_restriction', 'field_5bce9ba13748f'),
(215, 49, 'quote_text', 'Central Australia’s answer to The Buena Vista Social Club.'),
(216, 49, '_quote_text', 'field_5bce9c5bde7a4'),
(217, 49, 'author', 'Melbourne International Film Festival'),
(218, 49, '_author', 'field_5bce9c63de7a5'),
(219, 49, 'venue_name', 'ACMI Cinemas'),
(220, 49, '_venue_name', 'field_5bce9753f4e1d'),
(221, 49, 'venue_address_line_1', 'Federation Square, Flinders St'),
(222, 49, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(223, 49, 'venue_address_line_2', ''),
(224, 49, '_venue_address_line_2', 'field_5bce97edf4e20'),
(225, 49, 'suburb', 'Melbourne'),
(226, 49, '_suburb', 'field_5bce97e9f4e1f'),
(227, 49, 'state', 'VIC'),
(228, 49, '_state', 'field_5bce980af4e22'),
(229, 49, 'postcode', '3000'),
(230, 49, '_postcode', 'field_5bce9807f4e21'),
(231, 50, '_edit_last', '1'),
(232, 50, '_edit_lock', '1540820312:1'),
(233, 50, 'event_date', '2019-05-17 19:00:00'),
(234, 50, '_event_date', 'field_5bce98bfd9d08'),
(235, 50, 'event_duration', '104'),
(236, 50, '_event_duration', 'field_5bce991ad9d09'),
(237, 50, 'event_language', 'Arabic with English Subtitles'),
(238, 50, '_event_language', 'field_5bce9a5a3748a'),
(239, 50, 'director', 'Feras Fayyad'),
(240, 50, '_director', 'field_5bce9b013748b'),
(241, 50, 'artist', ''),
(242, 50, '_artist', 'field_5bce9b1a3748c'),
(243, 50, 'speaker', ''),
(244, 50, '_speaker', 'field_5bce9b263748d'),
(245, 50, 'publishing_year', '2018'),
(246, 50, '_publishing_year', 'field_5bce9b483748e'),
(247, 50, 'age_restriction', '15+'),
(248, 50, '_age_restriction', 'field_5bce9ba13748f'),
(249, 50, 'quote_text', 'What is horrifying and sad is punctuated only by the heroism of its subjects and of the filmmakers themselves.'),
(250, 50, '_quote_text', 'field_5bce9c5bde7a4'),
(251, 50, 'author', 'Common Sense Media'),
(252, 50, '_author', 'field_5bce9c63de7a5'),
(253, 50, 'venue_name', 'ACMI Cinemas'),
(254, 50, '_venue_name', 'field_5bce9753f4e1d'),
(255, 50, 'venue_address_line_1', 'Federation Square '),
(256, 50, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(257, 50, 'venue_address_line_2', 'Flinders Street'),
(258, 50, '_venue_address_line_2', 'field_5bce97edf4e20'),
(259, 50, 'suburb', 'Melboure'),
(260, 50, '_suburb', 'field_5bce97e9f4e1f'),
(261, 50, 'state', 'VIC'),
(262, 50, '_state', 'field_5bce980af4e22'),
(263, 50, 'postcode', '3000'),
(264, 50, '_postcode', 'field_5bce9807f4e21'),
(265, 51, '_edit_last', '1'),
(266, 51, '_edit_lock', '1540815983:1'),
(267, 51, 'event_date', '2019-05-21 18:00:00'),
(268, 51, '_event_date', 'field_5bce98bfd9d08'),
(269, 51, 'event_duration', '83'),
(270, 51, '_event_duration', 'field_5bce991ad9d09'),
(271, 51, 'event_language', 'English'),
(272, 51, '_event_language', 'field_5bce9a5a3748a'),
(273, 51, 'director', 'Amanda Lipitz'),
(274, 51, '_director', 'field_5bce9b013748b'),
(275, 51, 'artist', ''),
(276, 51, '_artist', 'field_5bce9b1a3748c'),
(277, 51, 'speaker', ''),
(278, 51, '_speaker', 'field_5bce9b263748d'),
(279, 51, 'publishing_year', '2018'),
(280, 51, '_publishing_year', 'field_5bce9b483748e'),
(281, 51, 'age_restriction', 'All Ages'),
(282, 51, '_age_restriction', 'field_5bce9ba13748f'),
(283, 51, 'quote_text', 'This is a highly pertinent story told in an entertaining way'),
(284, 51, '_quote_text', 'field_5bce9c5bde7a4'),
(285, 51, 'author', 'The New York Times'),
(286, 51, '_author', 'field_5bce9c63de7a5'),
(287, 51, 'venue_name', 'ACMI Cinemas'),
(288, 51, '_venue_name', 'field_5bce9753f4e1d'),
(289, 51, 'venue_address_line_1', 'Federation Square '),
(290, 51, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(291, 51, 'venue_address_line_2', 'Flinders Street'),
(292, 51, '_venue_address_line_2', 'field_5bce97edf4e20'),
(293, 51, 'suburb', 'Melbourne'),
(294, 51, '_suburb', 'field_5bce97e9f4e1f'),
(295, 51, 'state', 'VIC'),
(296, 51, '_state', 'field_5bce980af4e22'),
(297, 51, 'postcode', '3000'),
(298, 51, '_postcode', 'field_5bce9807f4e21'),
(299, 52, 'event_date', '2019-05-21 18:00:00'),
(300, 52, '_event_date', 'field_5bce98bfd9d08'),
(301, 52, 'event_duration', '83'),
(302, 52, '_event_duration', 'field_5bce991ad9d09'),
(303, 52, 'event_language', 'English'),
(304, 52, '_event_language', 'field_5bce9a5a3748a'),
(305, 52, 'director', 'Amanda Lipitz'),
(306, 52, '_director', 'field_5bce9b013748b'),
(307, 52, 'artist', ''),
(308, 52, '_artist', 'field_5bce9b1a3748c'),
(309, 52, 'speaker', ''),
(310, 52, '_speaker', 'field_5bce9b263748d'),
(311, 52, 'publishing_year', '2018'),
(312, 52, '_publishing_year', 'field_5bce9b483748e'),
(313, 52, 'age_restriction', 'All Ages'),
(314, 52, '_age_restriction', 'field_5bce9ba13748f'),
(315, 52, 'quote_text', 'This is a highly pertinent story told in an entertaining way'),
(316, 52, '_quote_text', 'field_5bce9c5bde7a4'),
(317, 52, 'author', 'The New York Times'),
(318, 52, '_author', 'field_5bce9c63de7a5'),
(319, 52, 'venue_name', 'ACMI Cinemas'),
(320, 52, '_venue_name', 'field_5bce9753f4e1d'),
(321, 52, 'venue_address_line_1', 'Federation Square '),
(322, 52, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(323, 52, 'venue_address_line_2', 'Flinders Street'),
(324, 52, '_venue_address_line_2', 'field_5bce97edf4e20'),
(325, 52, 'suburb', 'Melbourne'),
(326, 52, '_suburb', 'field_5bce97e9f4e1f'),
(327, 52, 'state', 'VIC'),
(328, 52, '_state', 'field_5bce980af4e22'),
(329, 52, 'postcode', '3000'),
(330, 52, '_postcode', 'field_5bce9807f4e21'),
(331, 41, '_wp_trash_meta_status', 'publish'),
(332, 41, '_wp_trash_meta_time', '1540816135'),
(333, 41, '_wp_desired_post_slug', 'test'),
(334, 53, '_edit_last', '1'),
(335, 53, '_edit_lock', '1540816112:1'),
(336, 53, 'event_date', '2019-05-15 18:00:00'),
(337, 53, '_event_date', 'field_5bce98bfd9d08'),
(338, 53, 'event_duration', '92'),
(339, 53, '_event_duration', 'field_5bce991ad9d09'),
(340, 53, 'event_language', 'English'),
(341, 53, '_event_language', 'field_5bce9a5a3748a'),
(342, 53, 'director', 'Maisie Crow'),
(343, 53, '_director', 'field_5bce9b013748b'),
(344, 53, 'artist', ''),
(345, 53, '_artist', 'field_5bce9b1a3748c'),
(346, 53, 'speaker', ''),
(347, 53, '_speaker', 'field_5bce9b263748d'),
(348, 53, 'publishing_year', '2018'),
(349, 53, '_publishing_year', 'field_5bce9b483748e'),
(350, 53, 'age_restriction', 'All Ages'),
(351, 53, '_age_restriction', 'field_5bce9ba13748f'),
(352, 53, 'quote_text', 'There\'s so much to draw from Jackson. Maisie Crow has crafted a truly challenging and thought provoking film about the complexities surrounding the abortion argument.'),
(353, 53, '_quote_text', 'field_5bce9c5bde7a4'),
(354, 53, 'author', 'Georgia Entertainment News'),
(355, 53, '_author', 'field_5bce9c63de7a5'),
(356, 53, 'venue_name', 'ACMI Cinemas'),
(357, 53, '_venue_name', 'field_5bce9753f4e1d'),
(358, 53, 'venue_address_line_1', 'Federation Square '),
(359, 53, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(360, 53, 'venue_address_line_2', 'Flinders Street'),
(361, 53, '_venue_address_line_2', 'field_5bce97edf4e20'),
(362, 53, 'suburb', 'Melbourne'),
(363, 53, '_suburb', 'field_5bce97e9f4e1f'),
(364, 53, 'state', 'VIC'),
(365, 53, '_state', 'field_5bce980af4e22'),
(366, 53, 'postcode', '3000'),
(367, 53, '_postcode', 'field_5bce9807f4e21'),
(368, 54, '_edit_last', '1'),
(369, 54, '_edit_lock', '1540816224:1'),
(370, 54, 'event_date', '2019-05-16 18:00:00'),
(371, 54, '_event_date', 'field_5bce98bfd9d08'),
(372, 54, 'event_duration', '85'),
(373, 54, '_event_duration', 'field_5bce991ad9d09'),
(374, 54, 'event_language', 'English'),
(375, 54, '_event_language', 'field_5bce9a5a3748a'),
(376, 54, 'director', 'Lawrence Jackman, Attiya Khan'),
(377, 54, '_director', 'field_5bce9b013748b'),
(378, 54, 'artist', ''),
(379, 54, '_artist', 'field_5bce9b1a3748c'),
(380, 54, 'speaker', ''),
(381, 54, '_speaker', 'field_5bce9b263748d'),
(382, 54, 'publishing_year', '2018'),
(383, 54, '_publishing_year', 'field_5bce9b483748e'),
(384, 54, 'age_restriction', '18+'),
(385, 54, '_age_restriction', 'field_5bce9ba13748f'),
(386, 54, 'quote_text', 'A Better Man takes on the issue of violence against women from an angle we have never seen before. It is fierce, compassionate, searingly honest and beautiful.'),
(387, 54, '_quote_text', 'field_5bce9c5bde7a4'),
(388, 54, 'author', 'Sarah Polley'),
(389, 54, '_author', 'field_5bce9c63de7a5'),
(390, 54, 'venue_name', 'ACMI Cinemas'),
(391, 54, '_venue_name', 'field_5bce9753f4e1d'),
(392, 54, 'venue_address_line_1', 'Federation Square '),
(393, 54, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(394, 54, 'venue_address_line_2', 'Flinders Street'),
(395, 54, '_venue_address_line_2', 'field_5bce97edf4e20'),
(396, 54, 'suburb', 'Melbourne'),
(397, 54, '_suburb', 'field_5bce97e9f4e1f'),
(398, 54, 'state', 'VIC'),
(399, 54, '_state', 'field_5bce980af4e22'),
(400, 54, 'postcode', '3000'),
(401, 54, '_postcode', 'field_5bce9807f4e21'),
(402, 55, '_edit_last', '1'),
(403, 55, '_edit_lock', '1540816337:1'),
(404, 55, 'event_date', '2019-05-24 15:00:00'),
(405, 55, '_event_date', 'field_5bce98bfd9d08'),
(406, 55, 'event_duration', '93'),
(407, 55, '_event_duration', 'field_5bce991ad9d09'),
(408, 55, 'event_language', 'English'),
(409, 55, '_event_language', 'field_5bce9a5a3748a'),
(410, 55, 'director', 'Camilla Magid'),
(411, 55, '_director', 'field_5bce9b013748b'),
(412, 55, 'artist', ''),
(413, 55, '_artist', 'field_5bce9b1a3748c'),
(414, 55, 'speaker', ''),
(415, 55, '_speaker', 'field_5bce9b263748d'),
(416, 55, 'publishing_year', '2018'),
(417, 55, '_publishing_year', 'field_5bce9b483748e'),
(418, 55, 'age_restriction', 'All Ages'),
(419, 55, '_age_restriction', 'field_5bce9ba13748f'),
(420, 55, 'quote_text', 'Filled with humanistic grace notes, the thoughtful Land of Fire encourages empathy without a trace of pity. '),
(421, 55, '_quote_text', 'field_5bce9c5bde7a4'),
(422, 55, 'author', 'Film Journal International'),
(423, 55, '_author', 'field_5bce9c63de7a5'),
(424, 55, 'venue_name', 'ACMI Cinemas'),
(425, 55, '_venue_name', 'field_5bce9753f4e1d'),
(426, 55, 'venue_address_line_1', 'Federation Square '),
(427, 55, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(428, 55, 'venue_address_line_2', 'Flinders Street'),
(429, 55, '_venue_address_line_2', 'field_5bce97edf4e20'),
(430, 55, 'suburb', 'Melbourne'),
(431, 55, '_suburb', 'field_5bce97e9f4e1f'),
(432, 55, 'state', 'VIC'),
(433, 55, '_state', 'field_5bce980af4e22'),
(434, 55, 'postcode', '3000'),
(435, 55, '_postcode', 'field_5bce9807f4e21'),
(436, 56, '_edit_last', '1'),
(437, 56, '_edit_lock', '1540816422:1'),
(438, 56, 'event_date', '2019-05-31 19:00:00'),
(439, 56, '_event_date', 'field_5bce98bfd9d08'),
(440, 56, 'event_duration', ''),
(441, 56, '_event_duration', 'field_5bce991ad9d09'),
(442, 56, 'event_language', 'English'),
(443, 56, '_event_language', 'field_5bce9a5a3748a'),
(444, 56, 'director', ''),
(445, 56, '_director', 'field_5bce9b013748b'),
(446, 56, 'artist', ''),
(447, 56, '_artist', 'field_5bce9b1a3748c'),
(448, 56, 'speaker', 'Wendy Tuohy'),
(449, 56, '_speaker', 'field_5bce9b263748d'),
(450, 56, 'publishing_year', '2019'),
(451, 56, '_publishing_year', 'field_5bce9b483748e'),
(452, 56, 'age_restriction', 'All Ages'),
(453, 56, '_age_restriction', 'field_5bce9ba13748f'),
(454, 56, 'quote_text', ''),
(455, 56, '_quote_text', 'field_5bce9c5bde7a4'),
(456, 56, 'venue_name', 'Red Scooter'),
(457, 56, '_venue_name', 'field_5bce9753f4e1d'),
(458, 56, 'venue_address_line_1', '25 William Street'),
(459, 56, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(460, 56, 'venue_address_line_2', ''),
(461, 56, '_venue_address_line_2', 'field_5bce97edf4e20'),
(462, 56, 'suburb', 'Balaclava'),
(463, 56, '_suburb', 'field_5bce97e9f4e1f'),
(464, 56, 'state', 'VIC'),
(465, 56, '_state', 'field_5bce980af4e22'),
(466, 56, 'postcode', '3183'),
(467, 56, '_postcode', 'field_5bce9807f4e21'),
(468, 57, '_edit_last', '1'),
(469, 57, '_edit_lock', '1540816555:1'),
(470, 57, 'event_date', '2019-05-12 13:00:00'),
(471, 57, '_event_date', 'field_5bce98bfd9d08'),
(472, 57, 'event_duration', '120'),
(473, 57, '_event_duration', 'field_5bce991ad9d09'),
(474, 57, 'event_language', 'English'),
(475, 57, '_event_language', 'field_5bce9a5a3748a'),
(476, 57, 'director', ''),
(477, 57, '_director', 'field_5bce9b013748b'),
(478, 57, 'artist', ''),
(479, 57, '_artist', 'field_5bce9b1a3748c'),
(480, 57, 'speaker', 'Tony Birch, Latai Taeumoepeau, Karrina Nolan'),
(481, 57, '_speaker', 'field_5bce9b263748d'),
(482, 57, 'publishing_year', '2019'),
(483, 57, '_publishing_year', 'field_5bce9b483748e'),
(484, 57, 'age_restriction', 'All Ages'),
(485, 57, '_age_restriction', 'field_5bce9ba13748f'),
(486, 57, 'quote_text', ''),
(487, 57, '_quote_text', 'field_5bce9c5bde7a4'),
(488, 57, 'venue_name', 'ACMI Cinemas'),
(489, 57, '_venue_name', 'field_5bce9753f4e1d'),
(490, 57, 'venue_address_line_1', 'Federation Square '),
(491, 57, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(492, 57, 'venue_address_line_2', 'Flinders Street'),
(493, 57, '_venue_address_line_2', 'field_5bce97edf4e20'),
(494, 57, 'suburb', 'Melbourne'),
(495, 57, '_suburb', 'field_5bce97e9f4e1f'),
(496, 57, 'state', 'VIC'),
(497, 57, '_state', 'field_5bce980af4e22'),
(498, 57, 'postcode', '3000'),
(499, 57, '_postcode', 'field_5bce9807f4e21'),
(500, 58, '_edit_last', '1'),
(501, 58, '_edit_lock', '1540816680:1'),
(502, 58, 'event_date', '2019-05-20 12:00:00'),
(503, 58, '_event_date', 'field_5bce98bfd9d08'),
(504, 58, 'event_duration', '120'),
(505, 58, '_event_duration', 'field_5bce991ad9d09'),
(506, 58, 'event_language', 'English'),
(507, 58, '_event_language', 'field_5bce9a5a3748a'),
(508, 58, 'director', ''),
(509, 58, '_director', 'field_5bce9b013748b'),
(510, 58, 'artist', ''),
(511, 58, '_artist', 'field_5bce9b1a3748c'),
(512, 58, 'speaker', 'Roj Amedi, Charangdev Singh, Aseel Tayah, Fadak Alfayadh'),
(513, 58, '_speaker', 'field_5bce9b263748d'),
(514, 58, 'publishing_year', '2019'),
(515, 58, '_publishing_year', 'field_5bce9b483748e'),
(516, 58, 'age_restriction', 'All Ages'),
(517, 58, '_age_restriction', 'field_5bce9ba13748f'),
(518, 58, 'quote_text', ''),
(519, 58, '_quote_text', 'field_5bce9c5bde7a4'),
(520, 58, 'venue_name', 'ACMI Cinemas'),
(521, 58, '_venue_name', 'field_5bce9753f4e1d'),
(522, 58, 'venue_address_line_1', 'Federation Square '),
(523, 58, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(524, 58, 'venue_address_line_2', 'Flinders Street'),
(525, 58, '_venue_address_line_2', 'field_5bce97edf4e20'),
(526, 58, 'suburb', 'Melbourne'),
(527, 58, '_suburb', 'field_5bce97e9f4e1f'),
(528, 58, 'state', 'VIC'),
(529, 58, '_state', 'field_5bce980af4e22'),
(530, 58, 'postcode', '3000'),
(531, 58, '_postcode', 'field_5bce9807f4e21'),
(532, 59, '_edit_last', '1'),
(533, 59, '_edit_lock', '1540816777:1'),
(534, 59, 'event_date', '2019-05-22 14:30:00'),
(535, 59, '_event_date', 'field_5bce98bfd9d08'),
(536, 59, 'event_duration', '120'),
(537, 59, '_event_duration', 'field_5bce991ad9d09'),
(538, 59, 'event_language', 'English'),
(539, 59, '_event_language', 'field_5bce9a5a3748a'),
(540, 59, 'director', ''),
(541, 59, '_director', 'field_5bce9b013748b'),
(542, 59, 'artist', ''),
(543, 59, '_artist', 'field_5bce9b1a3748c'),
(544, 59, 'speaker', 'TextaQueen, Dawn Iris Dangkomen, Torika Bolatagici'),
(545, 59, '_speaker', 'field_5bce9b263748d'),
(546, 59, 'publishing_year', '2019'),
(547, 59, '_publishing_year', 'field_5bce9b483748e'),
(548, 59, 'age_restriction', 'All Ages'),
(549, 59, '_age_restriction', 'field_5bce9ba13748f'),
(550, 59, 'quote_text', ''),
(551, 59, '_quote_text', 'field_5bce9c5bde7a4'),
(552, 59, 'venue_name', 'ACMI Cinemas'),
(553, 59, '_venue_name', 'field_5bce9753f4e1d'),
(554, 59, 'venue_address_line_1', 'Federation Square '),
(555, 59, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(556, 59, 'venue_address_line_2', 'Flinders Street'),
(557, 59, '_venue_address_line_2', 'field_5bce97edf4e20'),
(558, 59, 'suburb', 'Melbourne'),
(559, 59, '_suburb', 'field_5bce97e9f4e1f'),
(560, 59, 'state', 'VIC'),
(561, 59, '_state', 'field_5bce980af4e22'),
(562, 59, 'postcode', '3000'),
(563, 59, '_postcode', 'field_5bce9807f4e21'),
(564, 60, '_edit_last', '1'),
(565, 60, '_edit_lock', '1540816925:1'),
(566, 60, 'event_date', '2019-05-02 18:00:00'),
(567, 60, '_event_date', 'field_5bce98bfd9d08'),
(568, 60, 'event_duration', '120'),
(569, 60, '_event_duration', 'field_5bce991ad9d09'),
(570, 60, 'event_language', 'English'),
(571, 60, '_event_language', 'field_5bce9a5a3748a'),
(572, 60, 'director', ''),
(573, 60, '_director', 'field_5bce9b013748b'),
(574, 60, 'artist', ''),
(575, 60, '_artist', 'field_5bce9b1a3748c'),
(576, 60, 'speaker', ''),
(577, 60, '_speaker', 'field_5bce9b263748d'),
(578, 60, 'publishing_year', '2019'),
(579, 60, '_publishing_year', 'field_5bce9b483748e'),
(580, 60, 'age_restriction', 'All Ages'),
(581, 60, '_age_restriction', 'field_5bce9ba13748f'),
(582, 60, 'quote_text', ''),
(583, 60, '_quote_text', 'field_5bce9c5bde7a4'),
(584, 60, 'venue_name', 'Sun Theatre'),
(585, 60, '_venue_name', 'field_5bce9753f4e1d'),
(586, 60, 'venue_address_line_1', '8 Ballarat Street'),
(587, 60, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(588, 60, 'venue_address_line_2', ''),
(589, 60, '_venue_address_line_2', 'field_5bce97edf4e20'),
(590, 60, 'suburb', 'Yarraville'),
(591, 60, '_suburb', 'field_5bce97e9f4e1f'),
(592, 60, 'state', 'VIC'),
(593, 60, '_state', 'field_5bce980af4e22'),
(594, 60, 'postcode', '3013'),
(595, 60, '_postcode', 'field_5bce9807f4e21'),
(596, 61, '_edit_last', '1'),
(597, 61, '_edit_lock', '1540817114:1'),
(598, 61, 'event_date', '2018-05-18 19:00:00'),
(599, 61, '_event_date', 'field_5bce98bfd9d08'),
(600, 61, 'event_duration', '120'),
(601, 61, '_event_duration', 'field_5bce991ad9d09'),
(602, 61, 'event_language', 'English'),
(603, 61, '_event_language', 'field_5bce9a5a3748a'),
(604, 61, 'director', ''),
(605, 61, '_director', 'field_5bce9b013748b'),
(606, 61, 'artist', ''),
(607, 61, '_artist', 'field_5bce9b1a3748c'),
(608, 61, 'speaker', ''),
(609, 61, '_speaker', 'field_5bce9b263748d'),
(610, 61, 'publishing_year', '2019'),
(611, 61, '_publishing_year', 'field_5bce9b483748e'),
(612, 61, 'age_restriction', 'All Ages'),
(613, 61, '_age_restriction', 'field_5bce9ba13748f'),
(614, 61, 'quote_text', ''),
(615, 61, '_quote_text', 'field_5bce9c5bde7a4'),
(616, 61, 'venue_name', 'The Artists Guild'),
(617, 61, '_venue_name', 'field_5bce9753f4e1d'),
(618, 61, 'venue_address_line_1', '2 Wharf Street'),
(619, 61, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(620, 61, 'venue_address_line_2', 'DAC 13'),
(621, 61, '_venue_address_line_2', 'field_5bce97edf4e20'),
(622, 61, 'suburb', 'Docklands'),
(623, 61, '_suburb', 'field_5bce97e9f4e1f'),
(624, 61, 'state', 'VIC'),
(625, 61, '_state', 'field_5bce980af4e22'),
(626, 61, 'postcode', '3008'),
(627, 61, '_postcode', 'field_5bce9807f4e21'),
(628, 62, '_edit_last', '1'),
(629, 62, '_edit_lock', '1540817282:1'),
(630, 62, 'event_date', '2019-05-10 10:00:00'),
(631, 62, '_event_date', 'field_5bce98bfd9d08'),
(632, 62, 'event_duration', '420'),
(633, 62, '_event_duration', 'field_5bce991ad9d09'),
(634, 62, 'event_language', 'English'),
(635, 62, '_event_language', 'field_5bce9a5a3748a'),
(636, 62, 'director', ''),
(637, 62, '_director', 'field_5bce9b013748b'),
(638, 62, 'artist', 'Cassie Leatham (Taungurung/Wurundjeri), Kelly Koumalatsos (Wegaia/Wemba Wemba)'),
(639, 62, '_artist', 'field_5bce9b1a3748c'),
(640, 62, 'speaker', ''),
(641, 62, '_speaker', 'field_5bce9b263748d'),
(642, 62, 'publishing_year', '2019'),
(643, 62, '_publishing_year', 'field_5bce9b483748e'),
(644, 62, 'age_restriction', 'All Ages'),
(645, 62, '_age_restriction', 'field_5bce9ba13748f'),
(646, 62, 'quote_text', ''),
(647, 62, '_quote_text', 'field_5bce9c5bde7a4'),
(648, 62, 'venue_name', 'Koorie Heritage Trust'),
(649, 62, '_venue_name', 'field_5bce9753f4e1d'),
(650, 62, 'venue_address_line_1', 'The Yarra Building'),
(651, 62, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(652, 62, 'venue_address_line_2', 'Federation Square, Flinders Street'),
(653, 62, '_venue_address_line_2', 'field_5bce97edf4e20'),
(654, 62, 'suburb', 'Melbourne'),
(655, 62, '_suburb', 'field_5bce97e9f4e1f'),
(656, 62, 'state', 'VIC'),
(657, 62, '_state', 'field_5bce980af4e22'),
(658, 62, 'postcode', '3000'),
(659, 62, '_postcode', 'field_5bce9807f4e21'),
(660, 63, '_edit_last', '1'),
(661, 63, '_edit_lock', '1540817432:1'),
(662, 63, 'event_date', '2019-04-05 18:00:00'),
(663, 63, '_event_date', 'field_5bce98bfd9d08'),
(664, 63, 'event_duration', ''),
(665, 63, '_event_duration', 'field_5bce991ad9d09'),
(666, 63, 'event_language', 'English'),
(667, 63, '_event_language', 'field_5bce9a5a3748a'),
(668, 63, 'director', ''),
(669, 63, '_director', 'field_5bce9b013748b'),
(670, 63, 'artist', ''),
(671, 63, '_artist', 'field_5bce9b1a3748c'),
(672, 63, 'speaker', ''),
(673, 63, '_speaker', 'field_5bce9b263748d'),
(674, 63, 'publishing_year', '2019'),
(675, 63, '_publishing_year', 'field_5bce9b483748e'),
(676, 63, 'age_restriction', 'All Ages'),
(677, 63, '_age_restriction', 'field_5bce9ba13748f'),
(678, 63, 'quote_text', ''),
(679, 63, '_quote_text', 'field_5bce9c5bde7a4'),
(680, 63, 'venue_name', 'Immigration Museum'),
(681, 63, '_venue_name', 'field_5bce9753f4e1d'),
(682, 63, 'venue_address_line_1', '400 Flinders Street'),
(683, 63, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(684, 63, 'venue_address_line_2', ''),
(685, 63, '_venue_address_line_2', 'field_5bce97edf4e20'),
(686, 63, 'suburb', 'Melbourne'),
(687, 63, '_suburb', 'field_5bce97e9f4e1f'),
(688, 63, 'state', 'VIC'),
(689, 63, '_state', 'field_5bce980af4e22'),
(690, 63, 'postcode', '3000'),
(691, 63, '_postcode', 'field_5bce9807f4e21'),
(692, 64, '_edit_last', '1'),
(693, 64, '_edit_lock', '1540817557:1'),
(694, 64, 'event_date', '2019-05-12 15:00:00'),
(695, 64, '_event_date', 'field_5bce98bfd9d08'),
(696, 64, 'event_duration', ''),
(697, 64, '_event_duration', 'field_5bce991ad9d09'),
(698, 64, 'event_language', 'English'),
(699, 64, '_event_language', 'field_5bce9a5a3748a'),
(700, 64, 'director', ''),
(701, 64, '_director', 'field_5bce9b013748b'),
(702, 64, 'artist', ''),
(703, 64, '_artist', 'field_5bce9b1a3748c'),
(704, 64, 'speaker', ''),
(705, 64, '_speaker', 'field_5bce9b263748d'),
(706, 64, 'publishing_year', '2019'),
(707, 64, '_publishing_year', 'field_5bce9b483748e'),
(708, 64, 'age_restriction', 'All Ages'),
(709, 64, '_age_restriction', 'field_5bce9ba13748f'),
(710, 64, 'quote_text', ''),
(711, 64, '_quote_text', 'field_5bce9c5bde7a4'),
(712, 64, 'venue_name', 'Burrinja Community Cultural Centre'),
(713, 64, '_venue_name', 'field_5bce9753f4e1d'),
(714, 64, 'venue_address_line_1', '351 Glenfern Road'),
(715, 64, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(716, 64, 'venue_address_line_2', ''),
(717, 64, '_venue_address_line_2', 'field_5bce97edf4e20'),
(718, 64, 'suburb', 'Upwey'),
(719, 64, '_suburb', 'field_5bce97e9f4e1f'),
(720, 64, 'state', 'VIC'),
(721, 64, '_state', 'field_5bce980af4e22'),
(722, 64, 'postcode', '3158'),
(723, 64, '_postcode', 'field_5bce9807f4e21'),
(724, 65, '_edit_last', '1'),
(725, 65, '_edit_lock', '1540818003:1'),
(726, 65, 'event_date', '2019-05-05 00:00:00'),
(727, 65, '_event_date', 'field_5bce98bfd9d08'),
(728, 65, 'event_duration', ''),
(729, 65, '_event_duration', 'field_5bce991ad9d09'),
(730, 65, 'event_language', 'English'),
(731, 65, '_event_language', 'field_5bce9a5a3748a'),
(732, 65, 'director', ''),
(733, 65, '_director', 'field_5bce9b013748b'),
(734, 65, 'artist', 'Next Wave'),
(735, 65, '_artist', 'field_5bce9b1a3748c'),
(736, 65, 'speaker', ''),
(737, 65, '_speaker', 'field_5bce9b263748d'),
(738, 65, 'publishing_year', '2019'),
(739, 65, '_publishing_year', 'field_5bce9b483748e'),
(740, 65, 'age_restriction', '18+'),
(741, 65, '_age_restriction', 'field_5bce9ba13748f'),
(742, 65, 'quote_text', ''),
(743, 65, '_quote_text', 'field_5bce9c5bde7a4'),
(744, 65, 'venue_name', 'St Heliers Street Galleryy'),
(745, 65, '_venue_name', 'field_5bce9753f4e1d'),
(746, 65, 'venue_address_line_1', '1 St Heliers Street'),
(747, 65, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(748, 65, 'venue_address_line_2', ''),
(749, 65, '_venue_address_line_2', 'field_5bce97edf4e20'),
(750, 65, 'suburb', 'Abbotsford'),
(751, 65, '_suburb', 'field_5bce97e9f4e1f'),
(752, 65, 'state', 'VIC'),
(753, 65, '_state', 'field_5bce980af4e22'),
(754, 65, 'postcode', '3067'),
(755, 65, '_postcode', 'field_5bce9807f4e21'),
(756, 66, '_edit_last', '1'),
(757, 66, '_edit_lock', '1540819764:1'),
(758, 66, 'event_date', '2019-05-12 15:00:00'),
(759, 66, '_event_date', 'field_5bce98bfd9d08'),
(760, 66, 'event_duration', ''),
(761, 66, '_event_duration', 'field_5bce991ad9d09'),
(762, 66, 'event_language', 'English'),
(763, 66, '_event_language', 'field_5bce9a5a3748a'),
(764, 66, 'director', ''),
(765, 66, '_director', 'field_5bce9b013748b'),
(766, 66, 'artist', 'Mahla Karimain, UB Lee, Hamed Rayat, Julius Bright Sackey, Helen Sheferaw and Amos Wainggai'),
(767, 66, '_artist', 'field_5bce9b1a3748c'),
(768, 66, 'speaker', ''),
(769, 66, '_speaker', 'field_5bce9b263748d'),
(770, 66, 'publishing_year', '2018'),
(771, 66, '_publishing_year', 'field_5bce9b483748e'),
(772, 66, 'age_restriction', 'All Ages'),
(773, 66, '_age_restriction', 'field_5bce9ba13748f'),
(774, 66, 'quote_text', ''),
(775, 66, '_quote_text', 'field_5bce9c5bde7a4'),
(776, 66, 'venue_name', 'Brunswick Street Gallery'),
(777, 66, '_venue_name', 'field_5bce9753f4e1d'),
(778, 66, 'venue_address_line_1', '322 Brunswick Street'),
(779, 66, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(780, 66, 'venue_address_line_2', ''),
(781, 66, '_venue_address_line_2', 'field_5bce97edf4e20'),
(782, 66, 'suburb', 'Fitzroy'),
(783, 66, '_suburb', 'field_5bce97e9f4e1f'),
(784, 66, 'state', 'VIC'),
(785, 66, '_state', 'field_5bce980af4e22'),
(786, 66, 'postcode', '3065'),
(787, 66, '_postcode', 'field_5bce9807f4e21'),
(788, 67, '_edit_last', '1'),
(789, 67, 'event_date', '2019-05-05 01:30:00'),
(790, 67, '_event_date', 'field_5bce98bfd9d08'),
(791, 67, 'event_duration', '-2'),
(792, 67, '_event_duration', 'field_5bce991ad9d09'),
(793, 67, 'event_language', 'English'),
(794, 67, '_event_language', 'field_5bce9a5a3748a'),
(795, 67, 'director', ''),
(796, 67, '_director', 'field_5bce9b013748b'),
(797, 67, 'artist', 'TextaQueen'),
(798, 67, '_artist', 'field_5bce9b1a3748c'),
(799, 67, 'speaker', ''),
(800, 67, '_speaker', 'field_5bce9b263748d'),
(801, 67, 'publishing_year', '2019'),
(802, 67, '_publishing_year', 'field_5bce9b483748e'),
(803, 67, 'age_restriction', 'All Ages'),
(804, 67, '_age_restriction', 'field_5bce9ba13748f'),
(805, 67, 'quote_text', ''),
(806, 67, '_quote_text', 'field_5bce9c5bde7a4'),
(807, 67, 'venue_name', 'Bunjil Place'),
(808, 67, '_venue_name', 'field_5bce9753f4e1d'),
(809, 67, 'venue_address_line_1', 'Meeting Room 1 & 2'),
(810, 67, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(811, 67, 'venue_address_line_2', '2 Patrick NE Drive'),
(812, 67, '_venue_address_line_2', 'field_5bce97edf4e20'),
(813, 67, 'suburb', 'Narre Warren'),
(814, 67, '_suburb', 'field_5bce97e9f4e1f'),
(815, 67, 'state', 'VIC'),
(816, 67, '_state', 'field_5bce980af4e22'),
(817, 67, 'postcode', '3805'),
(818, 67, '_postcode', 'field_5bce9807f4e21'),
(819, 67, '_edit_lock', '1540820033:1'),
(820, 68, '_edit_last', '1'),
(821, 68, '_edit_lock', '1540820182:1'),
(822, 68, 'event_date', '2019-05-05 18:00:00'),
(823, 68, '_event_date', 'field_5bce98bfd9d08'),
(824, 68, 'event_duration', '82'),
(825, 68, '_event_duration', 'field_5bce991ad9d09'),
(826, 68, 'event_language', 'Spanish with English Subtitles'),
(827, 68, '_event_language', 'field_5bce9a5a3748a'),
(828, 68, 'director', 'Maite Alberdi'),
(829, 68, '_director', 'field_5bce9b013748b'),
(830, 68, 'artist', ''),
(831, 68, '_artist', 'field_5bce9b1a3748c'),
(832, 68, 'speaker', ''),
(833, 68, '_speaker', 'field_5bce9b263748d'),
(834, 68, 'publishing_year', '2019'),
(835, 68, '_publishing_year', 'field_5bce9b483748e'),
(836, 68, 'age_restriction', '15+'),
(837, 68, '_age_restriction', 'field_5bce9ba13748f'),
(838, 68, 'quote_text', 'Maite Alberdi’s sensitive, good-humored study of Down syndrome adults expresses anger against the system with a light touch.'),
(839, 68, '_quote_text', 'field_5bce9c5bde7a4'),
(840, 68, 'author', 'Variety'),
(841, 68, '_author', 'field_5bce9c63de7a5'),
(842, 68, 'venue_name', 'ACMI Cinemas'),
(843, 68, '_venue_name', 'field_5bce9753f4e1d'),
(844, 68, 'venue_address_line_1', 'Federation Square '),
(845, 68, '_venue_address_line_1', 'field_5bce9787f4e1e'),
(846, 68, 'venue_address_line_2', 'Flinders Street'),
(847, 68, '_venue_address_line_2', 'field_5bce97edf4e20'),
(848, 68, 'suburb', 'Melbourne'),
(849, 68, '_suburb', 'field_5bce97e9f4e1f'),
(850, 68, 'state', 'VIC'),
(851, 68, '_state', 'field_5bce980af4e22'),
(852, 68, 'postcode', '3000'),
(853, 68, '_postcode', 'field_5bce9807f4e21');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-23 02:58:33', '2018-10-23 02:58:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-10-23 02:58:33', '2018-10-23 02:58:33', '', 0, 'http://localhost:3157/beta/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-23 02:58:33', '2018-10-23 02:58:33', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a miner by day, aspiring actor by night, and this is my website. I live in Kalgoorlie, have a great dog named Red, and I like yabbies. (And gettin\' a tan.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:3157/beta/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-23 02:58:33', '2018-10-23 02:58:33', '', 0, 'http://localhost:3157/beta/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-23 02:58:33', '2018-10-23 02:58:33', '<h2>Who we are</h2><p>Our website address is: http://localhost:3157/beta.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-23 02:58:33', '2018-10-23 02:58:33', '', 0, 'http://localhost:3157/beta/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-10-23 03:03:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-23 03:03:34', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?p=4', 0, 'post', '', 0),
(5, 1, '2018-10-23 03:18:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 03:18:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2018-10-23 03:24:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 03:24:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=event&p=6', 0, 'event', '', 0),
(7, 1, '2018-10-23 03:26:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 03:26:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2018-10-23 03:32:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 03:32:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Venue', 'venue', 'publish', 'closed', 'closed', '', 'group_5bce972e8d8e7', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Venue Name', 'venue_name', 'publish', 'closed', 'closed', '', 'field_5bce9753f4e1d', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 9, 'http://localhost:3157/beta/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Venue Address Line 1', 'venue_address_line_1', 'publish', 'closed', 'closed', '', 'field_5bce9787f4e1e', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 9, 'http://localhost:3157/beta/?post_type=acf-field&p=11', 1, 'acf-field', '', 0),
(12, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Venue Address Line 2', 'venue_address_line_2', 'publish', 'closed', 'closed', '', 'field_5bce97edf4e20', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 9, 'http://localhost:3157/beta/?post_type=acf-field&p=12', 2, 'acf-field', '', 0),
(13, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Suburb', 'suburb', 'publish', 'closed', 'closed', '', 'field_5bce97e9f4e1f', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 9, 'http://localhost:3157/beta/?post_type=acf-field&p=13', 3, 'acf-field', '', 0),
(14, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"VIC\";s:3:\"VIC\";s:3:\"TAS\";s:3:\"TAS\";s:3:\"ACT\";s:3:\"ACT\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'State', 'state', 'publish', 'closed', 'closed', '', 'field_5bce980af4e22', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 9, 'http://localhost:3157/beta/?post_type=acf-field&p=14', 4, 'acf-field', '', 0),
(15, 1, '2018-10-23 03:41:45', '2018-10-23 03:41:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Postcode', 'postcode', 'publish', 'closed', 'closed', '', 'field_5bce9807f4e21', '', '', '2018-10-23 03:41:45', '2018-10-23 03:41:45', '', 9, 'http://localhost:3157/beta/?post_type=acf-field&p=15', 5, 'acf-field', '', 0),
(16, 1, '2018-10-23 03:44:50', '2018-10-23 03:44:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Information', 'event-information', 'publish', 'closed', 'closed', '', 'group_5bce9898e99fe', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2018-10-23 03:44:50', '2018-10-23 03:44:50', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:12:\"F j, Y g:i a\";s:13:\"return_format\";s:12:\"F j, Y g:i a\";s:9:\"first_day\";i:1;}', 'Event Date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5bce98bfd9d08', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&#038;p=17', 0, 'acf-field', '', 0),
(18, 1, '2018-10-23 03:44:50', '2018-10-23 03:44:50', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:3:\"min\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Event Duration', 'event_duration', 'publish', 'closed', 'closed', '', 'field_5bce991ad9d09', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&#038;p=18', 1, 'acf-field', '', 0),
(19, 1, '2018-10-23 03:44:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 03:44:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=event&p=19', 0, 'event', '', 0),
(20, 1, '2018-10-23 03:58:07', '2018-10-23 03:58:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Event Language', 'event_language', 'publish', 'closed', 'closed', '', 'field_5bce9a5a3748a', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&p=20', 2, 'acf-field', '', 0),
(21, 1, '2018-10-23 03:58:07', '2018-10-23 03:58:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Director', 'director', 'publish', 'closed', 'closed', '', 'field_5bce9b013748b', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&p=21', 3, 'acf-field', '', 0),
(22, 1, '2018-10-23 03:58:07', '2018-10-23 03:58:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Artist', 'artist', 'publish', 'closed', 'closed', '', 'field_5bce9b1a3748c', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&p=22', 4, 'acf-field', '', 0),
(23, 1, '2018-10-23 03:58:07', '2018-10-23 03:58:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Speaker', 'speaker', 'publish', 'closed', 'closed', '', 'field_5bce9b263748d', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&p=23', 5, 'acf-field', '', 0),
(24, 1, '2018-10-23 03:58:07', '2018-10-23 03:58:07', 'a:11:{s:4:\"type\";s:5:\"range\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:2018;s:3:\"min\";i:1900;s:3:\"max\";i:2019;s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Publishing Year', 'publishing_year', 'publish', 'closed', 'closed', '', 'field_5bce9b483748e', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&p=24', 6, 'acf-field', '', 0),
(25, 1, '2018-10-23 03:58:07', '2018-10-23 03:58:07', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:8:\"All Ages\";s:8:\"All Ages\";s:3:\"15+\";s:3:\"15+\";s:3:\"18+\";s:3:\"18+\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Age Restriction', 'age_restriction', 'publish', 'closed', 'closed', '', 'field_5bce9ba13748f', '', '', '2018-10-23 03:58:07', '2018-10-23 03:58:07', '', 16, 'http://localhost:3157/beta/?post_type=acf-field&p=25', 7, 'acf-field', '', 0),
(26, 1, '2018-10-23 03:58:51', '2018-10-23 03:58:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Quote', 'quote', 'publish', 'closed', 'closed', '', 'group_5bce9c55c7a85', '', '', '2018-10-23 03:59:27', '2018-10-23 03:59:27', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2018-10-23 03:58:51', '2018-10-23 03:58:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Quote Text', 'quote_text', 'publish', 'closed', 'closed', '', 'field_5bce9c5bde7a4', '', '', '2018-10-23 03:58:51', '2018-10-23 03:58:51', '', 26, 'http://localhost:3157/beta/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2018-10-23 03:58:51', '2018-10-23 03:58:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5bce9c5bde7a4\";s:8:\"operator\";s:7:\"!=empty\";}}}}', 'Author', 'author', 'publish', 'closed', 'closed', '', 'field_5bce9c63de7a5', '', '', '2018-10-23 03:59:27', '2018-10-23 03:59:27', '', 26, 'http://localhost:3157/beta/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2018-10-23 04:05:24', '2018-10-23 04:05:24', '<em>Her Sound, Her Story</em> is a bold, unflinching take on the issues at the heart of the Australian music industry. Hot on the heels of a successful photographic exhibition hosted in Melbourne last year, the film provides amplification for the bold voices of the female musicians making waves here and abroad. This film is particularly salient in the current cultural moment, in which major award ceremonies flat out disregard the crucial contribution of female artists, despite their indelible impact. Beloved artists including Tina Arena, Jen Cloher and Mojo Juju discuss their personal journeys and look for solutions to ensuring a more inclusive, diverse future.', 'Her Sound, Her Story', '', 'publish', 'closed', 'closed', '', 'her-sound-her-story', '', '', '2018-10-23 04:15:50', '2018-10-23 04:15:50', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=29', 0, 'event', '', 0),
(30, 1, '2018-10-23 04:14:16', '2018-10-23 04:14:16', '<em>Her Sound, Her Story</em> is a bold, unflinching take on the issues at the heart of the Australian music industry. Hot on the heels of a successful photographic exhibition hosted in Melbourne last year, the film provides amplification for the bold voices of the female musicians making waves here and abroad. This film is particularly salient in the current cultural moment, in which major award ceremonies flat out disregard the crucial contribution of female artists, despite their indelible impact. Beloved artists including Tina Arena, Jen Cloher and Mojo Juju discuss their personal journeys and look for solutions to ensuring a more inclusive, diverse future.', 'Her Sound, Her Story', '', 'inherit', 'closed', 'closed', '', '29-autosave-v1', '', '', '2018-10-23 04:14:16', '2018-10-23 04:14:16', '', 29, 'http://localhost:3157/beta/uncategorised/29-autosave-v1/', 0, 'revision', '', 0),
(31, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-23 04:18:00', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/wp-content/uploads/2018/10/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-23 04:18:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/wp-content/uploads/2018/10/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-10-23 04:18:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/wp-content/uploads/2018/10/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', 'Welcome to your site! This is your home page, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 04:18:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 04:18:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 04:18:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 04:18:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?page_id=37', 0, 'page', '', 0),
(38, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', 'This is an example of a home page section. Home page sections can be any page other than the home page itself, including the page that shows your latest blog posts.', 'A home page section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-23 04:18:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-10-23 04:18:04', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2cfe51fb0081914fc3803de78072e81d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5af82eeb00e919a468ff5659834e2cf1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"86b9d62f667e4a69b8a1a76412b7b790\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2cfe51fb0081914fc3803de78072e81d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"86b9d62f667e4a69b8a1a76412b7b790\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5af82eeb00e919a468ff5659834e2cf1\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            31,\n            32,\n            33,\n            34,\n            35,\n            36,\n            37,\n            38\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Top Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost:3157/beta/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 35,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 37,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 36,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 34,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 38,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 37,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 36,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-23 04:18:04\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'd4da053c-1d28-46f8-9cbc-b7fb2ba7ec94', '', '', '2018-10-23 04:18:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?p=39', 0, 'customize_changeset', '', 0),
(48, 1, '2018-10-29 05:06:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-29 05:06:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=event&p=48', 0, 'event', '', 0),
(41, 1, '2018-10-23 04:25:19', '2018-10-23 04:25:19', 'Swag', 'Test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2018-10-29 12:28:55', '2018-10-29 12:28:55', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=41', 0, 'event', '', 0),
(42, 1, '2018-10-23 04:25:28', '2018-10-23 04:25:28', 'Swag', 'Test', '', 'inherit', 'closed', 'closed', '', '41-autosave-v1', '', '', '2018-10-23 04:25:28', '2018-10-23 04:25:28', '', 41, 'http://localhost:3157/beta/uncategorised/41-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2018-10-28 00:21:54', '2018-10-28 00:21:54', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-10-28 00:21:54', '2018-10-28 00:21:54', '', 0, 'http://localhost:3157/beta/?page_id=43', 0, 'page', '', 0),
(44, 1, '2018-10-28 00:21:54', '2018-10-28 00:21:54', '', 'Events', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2018-10-28 00:21:54', '2018-10-28 00:21:54', '', 43, 'http://localhost:3157/beta/uncategorised/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-10-28 00:35:12', '2018-10-28 00:35:12', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-10-28 00:35:12', '2018-10-28 00:35:12', '', 0, 'http://localhost:3157/beta/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2018-10-28 00:35:12', '2018-10-28 00:35:12', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-10-28 00:35:12', '2018-10-28 00:35:12', '', 0, 'http://localhost:3157/beta/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-10-28 00:35:52', '2018-10-28 00:35:52', '{\n    \"hraff-theme-beta::nav_menu_locations[main-menu]\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-28 00:35:52\"\n    },\n    \"nav_menu[13]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-28 00:35:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5a2cdafb-8f61-4b34-ac09-094f47e254c5', '', '', '2018-10-28 00:35:52', '2018-10-28 00:35:52', '', 0, 'http://localhost:3157/beta/uncategorised/5a2cdafb-8f61-4b34-ac09-094f47e254c5/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-10-29 06:22:22', '2018-10-29 06:22:22', 'Four generations of song women that make up\r\nThe Central Australian Aboriginal Women’s Choir, go on\r\na historic journey to take back the hymns that were given\r\nto their ancestors by the German missionaries but in their\r\nown ancient Aboriginal languages and on their own terms.\r\nCome on an adventure as the unlikeliest band on earth\r\ngoes on tour... to the other side of the world!', 'The Song Keepers', '', 'publish', 'closed', 'closed', '', 'the-song-keepers', '', '', '2018-10-29 06:22:22', '2018-10-29 06:22:22', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=49', 0, 'event', '', 0),
(50, 1, '2018-10-29 12:25:16', '2018-10-29 12:25:16', 'After five years of war in Syria, the remaining citizens of Aleppo are getting ready for a siege. Through the volunteers from the White Helmets we experience the daily life, death and struggle in the streets, where they are fighting for sanity in a city where war has become the norm. Khalid, Subhi and Mahmoud are among the first to enter the destroyed buildings, scouring through the rubble in search of bodies and signs of life. They are now living more or less under constant bombing together with the remaining 350,000 civilians in Aleppo. They all struggle with the same dilemma: should they flee and bring their families to safety, or should they stay and fight for their city?', 'Last Men in Aleppo', '', 'publish', 'closed', 'closed', '', 'last-men-in-aleppo', '', '', '2018-10-29 12:25:16', '2018-10-29 12:25:16', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=50', 0, 'event', '', 0),
(51, 1, '2018-10-29 12:27:37', '2018-10-29 12:27:37', 'A story of true life challenge and triumph, a group of young women take the stage with a fierceness – with each move it seems that they are putting everything on the line, because they are. They are teenagers on the verge of womanhood, by turns graceful, goofy, joyous, determined, elegant, insecure, hopeful but always passionate. These are the Lethal Ladies of The Baltimore Leadership School for Young Women (BLSYW), and they are not only a competitive step team headed for a multi-state showdown but are also aiming to break barriers as the first graduates of their school, whose mission is to send every single one of its students to college.', 'Step', '', 'publish', 'closed', 'closed', '', 'step', '', '', '2018-10-29 12:27:37', '2018-10-29 12:27:37', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=51', 0, 'event', '', 0),
(52, 1, '2018-10-29 12:27:41', '2018-10-29 12:27:41', 'A story of true life challenge and triumph, a group of young women take the stage with a fierceness – with each move it seems that they are putting everything on the line, because they are. They are teenagers on the verge of womanhood, by turns graceful, goofy, joyous, determined, elegant, insecure, hopeful but always passionate. These are the Lethal Ladies of The Baltimore Leadership School for Young Women (BLSYW), and they are not only a competitive step team headed for a multi-state showdown but are also aiming to break barriers as the first graduates of their school, whose mission is to send every single one of its students to college.', 'Step', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2018-10-29 12:27:41', '2018-10-29 12:27:41', '', 51, 'http://localhost:3157/beta/uncategorised/51-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2018-10-29 12:30:49', '2018-10-29 12:30:49', '45% of all pregnancies in the US are unplanned, and one in three women will have an abortion in her lifetime. And yet, the battle for woman’s access to reproductive healthcare is far from over. Inside the last remaining abortion clinic in Mississippi, Jackson is an intimate, first-of-its-kind look at the issues, through the voices of women in the Deep South who stand on both sides of the debate.', 'Jackson', '', 'publish', 'closed', 'closed', '', 'jackson', '', '', '2018-10-29 12:30:49', '2018-10-29 12:30:49', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=53', 0, 'event', '', 0),
(54, 1, '2018-10-29 12:32:30', '2018-10-29 12:32:30', 'When Attiya Khan was a teenager she lived with her boyfriend Steve for two years, during which time he abused her on a daily basis. 20 years later, Attiya and Steve arrange to meet and record their intimate conversations. Will Steve take responsibility for the abuse? When the film had its world premiere at Hot Docs, therapists were available for consultation in the lobby after the screening – a statement to how powerful this film is. A Better Man, is truly remarkable documentary making. It’s a privilege that Attiya has allowed an audience to bear witnesses to her restorative justice.', 'A Better Man', '', 'publish', 'closed', 'closed', '', 'a-better-man', '', '', '2018-10-29 12:32:30', '2018-10-29 12:32:30', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=54', 0, 'event', '', 0),
(55, 1, '2018-10-29 12:34:17', '2018-10-29 12:34:17', 'This film portrays Brian, Juan and Gianni from South Central, Los Angeles. The obstacles are plenty when you are a child growing up between gang members or a teenager with an addiction and a newborn or a middleaged man, just released into a new and changed world after 24 years in prison. Filmmaker, Camilla Magid has followed their lives for over two years and the film shows with precision the psychological impact of a prison system that focuses on punishment rather than prevention and rehabilitation. The three characters merge into one life story in this intimate portrait of people living in a society where help is scarce and you have to rely on your own resources to get by.', 'Land of the Free', '', 'publish', 'closed', 'closed', '', 'land-of-the-free', '', '', '2018-10-29 12:34:17', '2018-10-29 12:34:17', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=55', 0, 'event', '', 0),
(56, 1, '2018-10-29 12:36:04', '2018-10-29 12:36:04', 'Our flagship event, the 2018 HRAFF Gala will be held at Red Scooter from 7pm on Thursday 31 May for what promises to be a wonderful night of cocktails, canapés and entertainment. The event will feature a curated selection of our favourite shorts from this year’s program, as well as amazing prizes at a live auction and an art sale that will include works by some of Australia’s premier artists. Our MC for the evening will be the wonderful Wendy Tuohy. Wendy is a respected journalist for the Herald Sun, ABC and feature writer across other television and print media. She is also a prominent and passionate supporter of human rights across Australia.', '2019 HRAFF Gala', '', 'publish', 'closed', 'closed', '', '2019-hraff-gala', '', '', '2018-10-29 12:36:04', '2018-10-29 12:36:04', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=56', 0, 'event', '', 0),
(57, 1, '2018-10-29 12:38:16', '2018-10-29 12:38:16', 'Climate change is one of the most pressing concerns of our times for nations and communities globally. For many Indigenous communities around the world, climate change is a condition and continuation of colonisation. Throughout the Asia Pacific, people have been mobilising against the effects of climate change by tackling ecological issues such as rising sea levels, food security and extreme weather changes. In this panel, speakers will consider the successes and failures of recent grassroots movements, and how Indigenous knowledges shape the decolonial responses and actions taken in preserving the land on which we live.', 'Resistance on the Ground, Resilience in the Earth: Climate Change Activism in the Asia Pacific', '', 'publish', 'closed', 'closed', '', 'resistance-on-the-ground-resilience-in-the-earth-climate-change-activism-in-the-asia-pacific', '', '', '2018-10-29 12:38:16', '2018-10-29 12:38:16', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=57', 0, 'event', '', 0),
(58, 1, '2018-10-29 12:40:21', '2018-10-29 12:40:21', 'Since the 2017 protests against the Australian Government’s policies on detention in Manus and Nauru, the refugee plight has swelled in visibility through modes of prominent media dissemination and cultural production. These images come with an increase of art, film, and writing on refugee experiences. This panel will discuss who is doing the representing, who benefits, and whose resistance is made invisible', 'Threshold of Visibility: On Representing Refugee Experiences', '', 'publish', 'closed', 'closed', '', 'threshold-of-visibility-on-representing-refugee-experiences', '', '', '2018-10-29 12:40:21', '2018-10-29 12:40:21', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=58', 0, 'event', '', 0),
(59, 1, '2018-10-29 12:41:47', '2018-10-29 12:41:47', 'In the wake of the #MeToo social media campaign and revived discussions on feminism, where does this leave gender equality in Australia today? How do we now strategically mobilise beyond online discussions to build sustainable movements and alternative institutions? This panel will discuss the intersections of violence enacted on feminine and femme bodies and how women can locate and embed agency in community, in work, and in love.', 'Where to From #MeToo?', '', 'publish', 'closed', 'closed', '', 'where-to-from-metoo', '', '', '2018-10-29 12:41:47', '2018-10-29 12:41:47', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=59', 0, 'event', '', 0),
(60, 1, '2018-10-29 12:44:26', '2018-10-29 12:44:26', 'This screening will feature brand new works by Melbournebased filmmakers Ez Eldin Deng and Noray Mohammed Neberay. Deng’s films have explored the African diaspora and the complexities of the refugee experience, while Neberay’s work has focused on political activism and refugee rights. Come and see these emerging directors’ alternative visions of Australian life and stay afterwards for an in-depth panel discussion featuring both artists. Hosted by Dorcas Utkovic of OzAfrica TV, the panel will explore independent filmmaking, the challenges of telling human rights stories and the creative barriers encountered in Australia.', 'Picture This: A film showcase and conversation with local filmmakers of African Heritage', '', 'publish', 'closed', 'closed', '', 'picture-this-a-film-showcase-and-conversation-with-local-filmmakers-of-african-heritage', '', '', '2018-10-29 12:44:26', '2018-10-29 12:44:26', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=60', 0, 'event', '', 0),
(61, 1, '2018-10-29 12:47:00', '2018-10-29 12:47:00', 'The Artists Guild Open Circle – VISIBLE Join us for an open circle discussion about diversity in the Arts and the challenges women of colour have getting their work seen. The Artists Guild is facilitating a forum for artists, curators, and the public to participate in sharing ideas, stories and experiences on how to create a more inclusive community.', 'Visible', '', 'publish', 'closed', 'closed', '', 'visible', '', '', '2018-10-29 12:47:00', '2018-10-29 12:47:00', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=61', 0, 'event', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(62, 1, '2018-10-29 12:50:23', '2018-10-29 12:50:23', 'The Koorie Heritage Trust presents two exhibitions featuring artists Cassie Leatham and Kelly Koumalatsos. Utilising locally crafted materials, Taungurung/Wurundjeri artist Cassie Leatham presents an installation showcasing her artistic and cultural practice over the past two years. Wergaia/ Wemba Wemba artist Kelly Koumalatsos draws on historic and cultural source materials, to reveal a hidden legacy of colonisation, and the continuing cultural practice in spite of it.', 'Baga-K Gaabi Brunga Biik (Symbols in Sand)', '', 'publish', 'closed', 'closed', '', 'baga-k-gaabi-brunga-biik-symbols-in-sand', '', '', '2018-10-29 12:50:23', '2018-10-29 12:50:23', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=62', 0, 'event', '', 0),
(63, 1, '2018-10-29 12:52:26', '2018-10-29 12:52:26', 'This digital interactive exhibition honours the period of Gandhi’s stay in South Africa and his subsequent personal transformation from this experience. Curated from more than 1,000 archival photographs, 130 minutes of footage, 60 minutes of film clips and 20 voice recordings of Gandhi’s speeches, this exhibition brings to life a person and period critical in India’s rich history.', 'Mahatma Gandhi: An Immigrant', '', 'publish', 'closed', 'closed', '', 'mahatma-gandhi-an-immigrant', '', '', '2018-10-29 12:52:26', '2018-10-29 12:52:26', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=63', 0, 'event', '', 0),
(64, 1, '2018-10-29 12:54:59', '2018-10-29 12:54:59', 'In the exhibition Bleeding Hearts Dandenong Ranges resident Eliza Phillips investigates the disparity in Australia between the mythologised nationalist illusion of a ‘fair go’ and the systematic vilification of minority groups and social justice advocates. Eliza Phillips is a Burrinja studio artist who works across mediums, utilising text and recycled materials to explore themes of social justice.', 'Bleeding Hearts - Human Rights and Cognitive Dissonance in the \"Lucky Country\"', '', 'publish', 'closed', 'closed', '', 'bleeding-hearts-human-rights-and-cognitive-dissonance-in-the-lucky-country', '', '', '2018-10-29 12:54:59', '2018-10-29 12:54:59', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=64', 0, 'event', '', 0),
(65, 1, '2018-10-29 13:02:24', '2018-10-29 13:02:24', 'The life of a Hazara person is often dangerous – but how is it possible to understand the trials and realities of the refugee experience? In this cross-disciplinary exhibition artist and award-winning poet, Elyas Alavi documents his experiences through personal, playful and mythological lenses. Evoking issues of identity, memory, migration and displacement, he offers a deeper understanding of his experience as a Hazara refugee, artist and migrant to Australia.', 'Daydreamer Wolf', '', 'publish', 'closed', 'closed', '', 'daydreamer-wolf', '', '', '2018-10-29 13:02:24', '2018-10-29 13:02:24', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=65', 0, 'event', '', 0),
(66, 1, '2018-10-29 13:31:40', '2018-10-29 13:31:40', 'Inherent In All offers a bold visual discussion that reflects on their individual experiences of what can be carried and what cannot be left behind. This exhibition of etching and woodblock prints shares the artists’ common experience of relocation.', 'Inherent in All', '', 'publish', 'closed', 'closed', '', 'inherent-in-all', '', '', '2018-10-29 13:31:40', '2018-10-29 13:31:40', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=66', 0, 'event', '', 0),
(67, 1, '2018-10-29 13:36:16', '2018-10-29 13:36:16', 'Imagine yourself as the main character in an apocalyptic action movie, fighting oppressive forces for a better future. Cast yourself as a force for change, triumphant over racism, patriarchy, environmental destruction and other social evils. TextaQueen will guide you in designing your own self-portrait movie poster.', 'Do We Need Another Hero?', '', 'publish', 'closed', 'closed', '', 'do-we-need-another-hero', '', '', '2018-10-29 13:36:16', '2018-10-29 13:36:16', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=67', 0, 'event', '', 0),
(68, 1, '2018-10-29 13:38:34', '2018-10-29 13:38:34', 'A group of friends with Down syndrome have attended to the same school for over 40 years, and they don’t want to continue complying with school obligations. Most of their parents are dead, and none of them thought their kids would outlive them. They always believed that when their parents died, they would be able to do those things they weren’t allowed to do before, like living on their own, having sex, being parents, getting married and having a real job. But things are not changing for them, and they have to deal with the frustration of living as if they were still ten-year-olds, although they are almost fifty.', 'The Grown Ups', '', 'publish', 'closed', 'closed', '', 'the-grown-ups', '', '', '2018-10-29 13:38:34', '2018-10-29 13:38:34', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=68', 0, 'event', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Melbourne', 'melbourne', 0),
(3, 'Canberra', 'canberra', 0),
(4, 'Launceston', 'launceston', 0),
(5, 'Film', 'film', 0),
(6, 'Art', 'art', 0),
(7, 'Music', 'music', 0),
(8, 'Forum', 'forum', 0),
(9, 'Conflict', 'conflict', 0),
(10, 'Women', 'women', 0),
(11, 'Women\'s Rights', 'womens-rights', 0),
(12, 'Navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(29, 2, 0),
(29, 5, 0),
(29, 10, 0),
(49, 2, 0),
(41, 2, 0),
(41, 9, 0),
(46, 12, 0),
(45, 12, 0),
(49, 5, 0),
(49, 10, 0),
(50, 2, 0),
(50, 5, 0),
(50, 9, 0),
(51, 2, 0),
(51, 5, 0),
(51, 9, 0),
(51, 10, 0),
(53, 2, 0),
(53, 5, 0),
(54, 2, 0),
(54, 5, 0),
(54, 9, 0),
(55, 2, 0),
(55, 5, 0),
(55, 9, 0),
(56, 2, 0),
(56, 8, 0),
(57, 2, 0),
(57, 8, 0),
(57, 9, 0),
(58, 2, 0),
(58, 8, 0),
(58, 9, 0),
(59, 2, 0),
(59, 8, 0),
(59, 9, 0),
(59, 10, 0),
(59, 11, 0),
(60, 2, 0),
(60, 5, 0),
(60, 8, 0),
(60, 9, 0),
(61, 2, 0),
(61, 6, 0),
(61, 8, 0),
(61, 9, 0),
(62, 5, 0),
(62, 9, 0),
(63, 2, 0),
(63, 6, 0),
(63, 5, 0),
(63, 9, 0),
(64, 2, 0),
(64, 6, 0),
(64, 9, 0),
(65, 2, 0),
(65, 6, 0),
(65, 9, 0),
(66, 2, 0),
(66, 6, 0),
(66, 9, 0),
(67, 2, 0),
(67, 6, 0),
(67, 8, 0),
(67, 9, 0),
(68, 2, 0),
(68, 5, 0),
(68, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'city', 'The best city', 0, 19),
(3, 3, 'city', 'The capital city', 0, 0),
(4, 4, 'city', 'Lol not even capital of Tas XD', 0, 0),
(5, 5, 'event_type', '', 0, 11),
(6, 6, 'event_type', '', 0, 6),
(7, 7, 'event_type', '', 0, 0),
(8, 8, 'event_type', '', 0, 7),
(9, 9, 'topic', '', 0, 16),
(10, 10, 'topic', '', 0, 4),
(11, 11, 'topic', '', 0, 1),
(12, 12, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"b79f85dcef69e335f21804437fa2a0987f4640320a433e2e8ecb522624043b03\";a:4:{s:10:\"expiration\";i:1541895541;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540685941;}s:64:\"3de7dd9859778cad4eb0f13d48f084eed87299f1b27aee3da9b733fb95c6ac21\";a:4:{s:10:\"expiration\";i:1540984736;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540811936;}}'),
(26, 1, 'nav_menu_recently_edited', '12'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(20, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(21, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1540268148'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:19:\"add-post-type-event\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:8:\"add-city\";i:4;s:14:\"add-event_type\";i:5;s:9:\"add-topic\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BD/Kr/PVj5hxRzgYQudqmr.XnPRBFF.', 'admin', 'hbak0001@student.monash.edu', '', '2018-10-23 02:58:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=854;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
