-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 30, 2018 at 02:42 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

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
(29, 'rewrite_rules', 'a:159:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:8:\"event/?$\";s:25:\"index.php?post_type=event\";s:38:\"event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:33:\"event/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:25:\"event/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"city/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:40:\"city/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?city=$matches[1]&feed=$matches[2]\";s:21:\"city/([^/]+)/embed/?$\";s:37:\"index.php?city=$matches[1]&embed=true\";s:33:\"city/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?city=$matches[1]&paged=$matches[2]\";s:15:\"city/([^/]+)/?$\";s:26:\"index.php?city=$matches[1]\";s:51:\"event_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:46:\"event_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event_type=$matches[1]&feed=$matches[2]\";s:27:\"event_type/([^/]+)/embed/?$\";s:43:\"index.php?event_type=$matches[1]&embed=true\";s:39:\"event_type/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?event_type=$matches[1]&paged=$matches[2]\";s:21:\"event_type/([^/]+)/?$\";s:32:\"index.php?event_type=$matches[1]\";s:46:\"topic/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?topic=$matches[1]&feed=$matches[2]\";s:41:\"topic/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?topic=$matches[1]&feed=$matches[2]\";s:22:\"topic/([^/]+)/embed/?$\";s:38:\"index.php?topic=$matches[1]&embed=true\";s:34:\"topic/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?topic=$matches[1]&paged=$matches[2]\";s:16:\"topic/([^/]+)/?$\";s:27:\"index.php?topic=$matches[1]\";s:55:\"article_author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?article_author=$matches[1]&feed=$matches[2]\";s:50:\"article_author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?article_author=$matches[1]&feed=$matches[2]\";s:31:\"article_author/([^/]+)/embed/?$\";s:47:\"index.php?article_author=$matches[1]&embed=true\";s:43:\"article_author/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?article_author=$matches[1]&paged=$matches[2]\";s:25:\"article_author/([^/]+)/?$\";s:36:\"index.php?article_author=$matches[1]\";s:33:\"event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"event/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:26:\"event/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:46:\"event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:41:\"event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:34:\"event/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:41:\"event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:30:\"event/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:22:\"event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:45:\"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:40:\"news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(84, 'page_on_front', '2', 'yes'),
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
(112, 'cron', 'a:4:{i:1540868356;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540868848;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540869528;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(248, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1540828079;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(249, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540858278;s:7:\"checked\";a:4:{s:16:\"hraff-theme-beta\";s:3:\"0.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(254, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1540901745', 'no'),
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
(154, 'cptui_taxonomies', 'a:4:{s:4:\"city\";a:24:{s:4:\"name\";s:4:\"city\";s:5:\"label\";s:6:\"Cities\";s:14:\"singular_label\";s:4:\"City\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}s:10:\"event_type\";a:24:{s:4:\"name\";s:10:\"event_type\";s:5:\"label\";s:11:\"Event Types\";s:14:\"singular_label\";s:10:\"Event Type\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}s:5:\"topic\";a:24:{s:4:\"name\";s:5:\"topic\";s:5:\"label\";s:6:\"Topics\";s:14:\"singular_label\";s:5:\"Topic\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"event\";}}s:14:\"article_author\";a:24:{s:4:\"name\";s:14:\"article_author\";s:5:\"label\";s:7:\"Authors\";s:14:\"singular_label\";s:6:\"Author\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:4:\"news\";}}}', 'yes'),
(160, 'cptui_post_types', 'a:2:{s:5:\"event\";a:29:{s:4:\"name\";s:5:\"event\";s:5:\"label\";s:6:\"Events\";s:14:\"singular_label\";s:5:\"Event\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:2:\"20\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:17:\"dashicons-tickets\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:5:\"venue\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:4:\"news\";a:29:{s:4:\"name\";s:4:\"news\";s:5:\"label\";s:4:\"News\";s:14:\"singular_label\";s:4:\"News\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:4:\"true\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:2:\"50\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:20:\"dashicons-align-left\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
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
(219, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(265, '_site_transient_timeout_browser_90ff8ae6231a43c42b418e1765751722', '1541464574', 'no'),
(266, '_site_transient_browser_90ff8ae6231a43c42b418e1765751722', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.77\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(267, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1540902978', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(268, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Melbourne/events/245299519/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2018-11-14 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829200999999998;s:9:\"longitude\";d:144.990082;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:33:\"WordPress Geelong November Meetup\";s:3:\"url\";s:58:\"https://www.meetup.com/WordPress-Geelong/events/253804745/\";s:6:\"meetup\";s:17:\"WordPress Geelong\";s:10:\"meetup_url\";s:41:\"https://www.meetup.com/WordPress-Geelong/\";s:4:\"date\";s:19:\"2018-11-15 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Geelong, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-38.147101999999997;s:9:\"longitude\";d:144.35657;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:63:\"https://www.meetup.com/WordPress-Melbourne/events/kkkwlpyxqbqb/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2018-12-12 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829200999999998;s:9:\"longitude\";d:144.990082;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-Melbourne/events/255475008/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2019-01-09 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829200999999998;s:9:\"longitude\";d:144.990082;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:16:\"WordPress Meetup\";s:3:\"url\";s:63:\"https://www.meetup.com/WordPress-Melbourne/events/kkkwlpyzdbrb/\";s:6:\"meetup\";s:30:\"WordPress Melbourne User Group\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-Melbourne/\";s:4:\"date\";s:19:\"2019-02-13 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Richmond, Australia\";s:7:\"country\";s:2:\"au\";s:8:\"latitude\";d:-37.829200999999998;s:9:\"longitude\";d:144.990082;}}}}', 'no'),
(281, 'article_author_children', 'a:0:{}', 'yes'),
(286, '_site_transient_timeout_available_translations', '1540877501', 'no'),
(287, '_site_transient_available_translations', 'a:113:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-06 13:56:09\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-22 00:11:36\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-04 08:43:29\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.5/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-13 19:50:59\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 03:20:48\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 21:28:23\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 17:08:36\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 08:22:12\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-07-06 08:46:24\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-15 10:41:04\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:47:36\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-15 10:39:52\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 11:48:22\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 17:20:10\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 23:34:56\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-04 13:34:08\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 04:07:23\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:14:01\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 17:08:21\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-01 16:09:29\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 20:43:09\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-28 16:07:01\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 23:17:08\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-15 15:03:42\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 15:16:30\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-10 17:20:09\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:20:18\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-19 14:11:29\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-04 08:05:41\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-05 07:24:22\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:02:42\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 19:03:27\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-20 00:15:02\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-15 08:49:46\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 09:43:51\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-03 10:29:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 15:33:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 06:05:40\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-24 04:57:34\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-25 00:05:58\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 17:12:13\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.8/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-27 18:41:44\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-17 11:02:30\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 08:41:56\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 08:41:27\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:11:49\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 11:10:50\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-18 05:15:17\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-09 11:50:07\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-09 09:30:48\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-26 15:06:48\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 07:22:19\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:21:25\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-26 12:03:12\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 07:46:08\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-02 20:59:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 15:35:13\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-02 17:08:41\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.5/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-08 19:05:26\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-29 07:32:40\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-06 08:37:04\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-11 06:46:15\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-19 13:50:55\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.9.8/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-09 00:56:52\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.9.4\";s:7:\"updated\";s:19:\"2018-02-13 02:41:15\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-11-17 22:20:52\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');

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
(8, 26, '_edit_lock', '1540861849:1'),
(9, 29, '_edit_last', '1'),
(10, 29, '_edit_lock', '1540867107:1'),
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
(949, 50, '_thumbnail_id', '92'),
(947, 55, '_thumbnail_id', '93'),
(948, 49, '_thumbnail_id', '100'),
(946, 56, '_thumbnail_id', '100'),
(945, 57, '_thumbnail_id', '96'),
(944, 58, '_thumbnail_id', '77'),
(943, 59, '_thumbnail_id', '100'),
(942, 60, '_thumbnail_id', '91'),
(941, 61, '_thumbnail_id', '95'),
(940, 62, '_thumbnail_id', '92'),
(939, 63, '_thumbnail_id', '98'),
(938, 64, '_thumbnail_id', '100'),
(937, 65, '_thumbnail_id', '96'),
(936, 66, '_thumbnail_id', '94'),
(935, 67, '_thumbnail_id', '95'),
(934, 68, '_thumbnail_id', '96'),
(75, 2, '_edit_lock', '1540860518:1'),
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
(198, 49, '_edit_lock', '1540867100:1'),
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
(175, 43, '_edit_lock', '1540865630:1'),
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
(232, 50, '_edit_lock', '1540867120:1'),
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
(266, 51, '_edit_lock', '1540867134:1'),
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
(952, 54, '_thumbnail_id', '94'),
(951, 53, '_thumbnail_id', '95'),
(950, 51, '_thumbnail_id', '93'),
(331, 41, '_wp_trash_meta_status', 'publish'),
(332, 41, '_wp_trash_meta_time', '1540816135'),
(333, 41, '_wp_desired_post_slug', 'test'),
(334, 53, '_edit_last', '1'),
(335, 53, '_edit_lock', '1540867147:1'),
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
(369, 54, '_edit_lock', '1540867160:1'),
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
(403, 55, '_edit_lock', '1540867079:1'),
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
(437, 56, '_edit_lock', '1540867046:1'),
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
(469, 57, '_edit_lock', '1540867032:1'),
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
(501, 58, '_edit_lock', '1540867020:1'),
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
(533, 59, '_edit_lock', '1540867008:1'),
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
(565, 60, '_edit_lock', '1540866991:1'),
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
(597, 61, '_edit_lock', '1540866979:1'),
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
(629, 62, '_edit_lock', '1540866942:1'),
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
(661, 63, '_edit_lock', '1540866343:1'),
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
(693, 64, '_edit_lock', '1540866332:1'),
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
(725, 65, '_edit_lock', '1540866315:1'),
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
(757, 66, '_edit_lock', '1540866448:1'),
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
(819, 67, '_edit_lock', '1540866141:1'),
(820, 68, '_edit_last', '1'),
(821, 68, '_edit_lock', '1540866101:1'),
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
(853, 68, '_postcode', 'field_5bce9807f4e21'),
(854, 71, '_edit_last', '1'),
(855, 71, '_edit_lock', '1540861136:1'),
(856, 74, '_wp_attached_file', '2018/10/jmccormack-150px-150px.jpg'),
(857, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:34:\"2018/10/jmccormack-150px-150px.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(858, 76, '_edit_last', '1'),
(859, 76, '_edit_lock', '1540861984:1'),
(860, 77, '_wp_attached_file', '2018/10/guilty-sukumaran.jpg'),
(861, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:28:\"2018/10/guilty-sukumaran.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"guilty-sukumaran-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"guilty-sukumaran-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(862, 76, '_thumbnail_id', '77'),
(863, 76, 'quote_text', 'Well, i haven’t finish processing yet, it was very intense, which was meant to be. It is obviously what it is, it’s a film about death penalty, as much as it is about individual story.'),
(864, 76, '_quote_text', 'field_5bce9c5bde7a4'),
(865, 76, 'author', 'Audience Member'),
(866, 76, '_author', 'field_5bce9c63de7a5'),
(867, 78, '_edit_last', '1'),
(868, 78, '_edit_lock', '1540862166:1'),
(869, 80, '_menu_item_type', 'post_type'),
(870, 80, '_menu_item_menu_item_parent', '0'),
(871, 80, '_menu_item_object_id', '78'),
(872, 80, '_menu_item_object', 'page'),
(873, 80, '_menu_item_target', ''),
(874, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(875, 80, '_menu_item_xfn', ''),
(876, 80, '_menu_item_url', ''),
(877, 81, '_edit_last', '1'),
(878, 81, '_edit_lock', '1540864728:1'),
(879, 81, 'quote_text', ''),
(880, 81, '_quote_text', 'field_5bce9c5bde7a4'),
(881, 82, '_edit_last', '1'),
(882, 82, '_edit_lock', '1540864814:1'),
(883, 82, 'quote_text', ''),
(884, 82, '_quote_text', 'field_5bce9c5bde7a4'),
(885, 83, '_edit_last', '1'),
(886, 83, '_edit_lock', '1540864864:1'),
(887, 83, 'quote_text', ''),
(888, 83, '_quote_text', 'field_5bce9c5bde7a4'),
(889, 84, '_edit_last', '1'),
(890, 84, '_edit_lock', '1540864905:1'),
(891, 84, 'quote_text', ''),
(892, 84, '_quote_text', 'field_5bce9c5bde7a4'),
(893, 85, '_edit_last', '1'),
(894, 85, '_edit_lock', '1540864946:1'),
(895, 85, 'quote_text', ''),
(896, 85, '_quote_text', 'field_5bce9c5bde7a4'),
(897, 86, '_edit_last', '1'),
(898, 86, '_edit_lock', '1540865042:1'),
(899, 86, 'quote_text', ''),
(900, 86, '_quote_text', 'field_5bce9c5bde7a4'),
(901, 87, '_edit_last', '1'),
(902, 87, '_edit_lock', '1540865134:1'),
(903, 87, 'quote_text', ''),
(904, 87, '_quote_text', 'field_5bce9c5bde7a4'),
(905, 88, '_edit_last', '1'),
(906, 88, '_edit_lock', '1540865204:1'),
(907, 88, 'quote_text', ''),
(908, 88, '_quote_text', 'field_5bce9c5bde7a4'),
(909, 90, '_edit_last', '1'),
(910, 90, '_edit_lock', '1540865445:1'),
(911, 90, 'quote_text', ''),
(912, 90, '_quote_text', 'field_5bce9c5bde7a4'),
(913, 91, '_wp_attached_file', '2018/10/a-better-man.jpg'),
(914, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:24:\"2018/10/a-better-man.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"a-better-man-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"a-better-man-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(915, 92, '_wp_attached_file', '2018/10/a-woman-captured.jpg'),
(916, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:28:\"2018/10/a-woman-captured.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"a-woman-captured-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"a-woman-captured-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(917, 93, '_wp_attached_file', '2018/10/after-the-apology.jpg'),
(918, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1272;s:4:\"file\";s:29:\"2018/10/after-the-apology.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"after-the-apology-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"after-the-apology-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"after-the-apology-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"after-the-apology-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(919, 94, '_wp_attached_file', '2018/10/border-politics.jpg'),
(920, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:27:\"2018/10/border-politics.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"border-politics-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"border-politics-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"border-politics-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"border-politics-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(921, 95, '_wp_attached_file', '2018/10/caliban.jpg'),
(922, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2018/10/caliban.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"caliban-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"caliban-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(923, 96, '_wp_attached_file', '2018/10/daydreamer-wolf.png'),
(924, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:27:\"2018/10/daydreamer-wolf.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"daydreamer-wolf-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"daydreamer-wolf-300x125.png\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(925, 97, '_wp_attached_file', '2018/10/her-sound-her-story.jpg'),
(926, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1264;s:4:\"file\";s:31:\"2018/10/her-sound-her-story.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"her-sound-her-story-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"her-sound-her-story-300x198.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:198;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"her-sound-her-story-768x506.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:506;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"her-sound-her-story-1024x674.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:674;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(927, 98, '_wp_attached_file', '2018/10/mahatma-gandhi.jpg'),
(928, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:200;s:4:\"file\";s:26:\"2018/10/mahatma-gandhi.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"mahatma-gandhi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"mahatma-gandhi-300x125.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(929, 99, '_wp_attached_file', '2018/10/sponsor-banner-1.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(930, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:980;s:6:\"height\";i:120;s:4:\"file\";s:28:\"2018/10/sponsor-banner-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"sponsor-banner-1-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"sponsor-banner-1-300x37.png\";s:5:\"width\";i:300;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"sponsor-banner-1-768x94.png\";s:5:\"width\";i:768;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(931, 100, '_wp_attached_file', '2018/10/the-song-keepers.jpg'),
(932, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:28:\"2018/10/the-song-keepers.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"the-song-keepers-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"the-song-keepers-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"the-song-keepers-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"the-song-keepers-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(933, 29, '_thumbnail_id', '97');

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
(26, 1, '2018-10-23 03:58:51', '2018-10-23 03:58:51', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"news\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Quote', 'quote', 'publish', 'closed', 'closed', '', 'group_5bce9c55c7a85', '', '', '2018-10-30 01:12:38', '2018-10-30 01:12:38', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2018-10-23 03:58:51', '2018-10-23 03:58:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Quote Text', 'quote_text', 'publish', 'closed', 'closed', '', 'field_5bce9c5bde7a4', '', '', '2018-10-23 03:58:51', '2018-10-23 03:58:51', '', 26, 'http://localhost:3157/beta/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2018-10-23 03:58:51', '2018-10-23 03:58:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5bce9c5bde7a4\";s:8:\"operator\";s:7:\"!=empty\";}}}}', 'Author', 'author', 'publish', 'closed', 'closed', '', 'field_5bce9c63de7a5', '', '', '2018-10-23 03:59:27', '2018-10-23 03:59:27', '', 26, 'http://localhost:3157/beta/?post_type=acf-field&#038;p=28', 1, 'acf-field', '', 0),
(29, 1, '2018-10-23 04:05:24', '2018-10-23 04:05:24', '<em>        Her Sound, Her Story</em> is a bold, unflinching take on the issues at the heart of the Australian music industry. Hot on the heels of a successful photographic exhibition hosted in Melbourne last year, the film provides amplification for the bold voices of the female musicians making waves here and abroad. This film is particularly salient in the current cultural moment, in which major award ceremonies flat out disregard the crucial contribution of female artists, despite their indelible impact. Beloved artists including Tina Arena, Jen Cloher and Mojo Juju discuss their personal journeys and look for solutions to ensuring a more inclusive, diverse future.', 'Her Sound, Her Story', '', 'publish', 'closed', 'closed', '', 'her-sound-her-story', '', '', '2018-10-30 02:23:09', '2018-10-30 02:23:09', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=29', 0, 'event', '', 0),
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
(45, 1, '2018-10-28 00:35:12', '2018-10-28 00:35:12', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-10-30 01:18:39', '2018-10-30 01:18:39', '', 0, 'http://localhost:3157/beta/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2018-10-28 00:35:12', '2018-10-28 00:35:12', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-10-30 01:18:39', '2018-10-30 01:18:39', '', 0, 'http://localhost:3157/beta/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2018-10-28 00:35:52', '2018-10-28 00:35:52', '{\n    \"hraff-theme-beta::nav_menu_locations[main-menu]\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-28 00:35:52\"\n    },\n    \"nav_menu[13]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-28 00:35:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5a2cdafb-8f61-4b34-ac09-094f47e254c5', '', '', '2018-10-28 00:35:52', '2018-10-28 00:35:52', '', 0, 'http://localhost:3157/beta/uncategorised/5a2cdafb-8f61-4b34-ac09-094f47e254c5/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-10-29 06:22:22', '2018-10-29 06:22:22', 'Four generations of song women that make up\r\nThe Central Australian Aboriginal Women’s Choir, go on\r\na historic journey to take back the hymns that were given\r\nto their ancestors by the German missionaries but in their\r\nown ancient Aboriginal languages and on their own terms.\r\nCome on an adventure as the unlikeliest band on earth\r\ngoes on tour... to the other side of the world!', 'The Song Keepers', '', 'publish', 'closed', 'closed', '', 'the-song-keepers', '', '', '2018-10-30 02:40:43', '2018-10-30 02:40:43', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=49', 0, 'event', '', 0),
(50, 1, '2018-10-29 12:25:16', '2018-10-29 12:25:16', 'After five years of war in Syria, the remaining citizens of Aleppo are getting ready for a siege. Through the volunteers from the White Helmets we experience the daily life, death and struggle in the streets, where they are fighting for sanity in a city where war has become the norm. Khalid, Subhi and Mahmoud are among the first to enter the destroyed buildings, scouring through the rubble in search of bodies and signs of life. They are now living more or less under constant bombing together with the remaining 350,000 civilians in Aleppo. They all struggle with the same dilemma: should they flee and bring their families to safety, or should they stay and fight for their city?', 'Last Men in Aleppo', '', 'publish', 'closed', 'closed', '', 'last-men-in-aleppo', '', '', '2018-10-30 02:41:03', '2018-10-30 02:41:03', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=50', 0, 'event', '', 0),
(51, 1, '2018-10-29 12:27:37', '2018-10-29 12:27:37', 'A story of true life challenge and triumph, a group of young women take the stage with a fierceness – with each move it seems that they are putting everything on the line, because they are. They are teenagers on the verge of womanhood, by turns graceful, goofy, joyous, determined, elegant, insecure, hopeful but always passionate. These are the Lethal Ladies of The Baltimore Leadership School for Young Women (BLSYW), and they are not only a competitive step team headed for a multi-state showdown but are also aiming to break barriers as the first graduates of their school, whose mission is to send every single one of its students to college.', 'Step', '', 'publish', 'closed', 'closed', '', 'step', '', '', '2018-10-30 02:41:16', '2018-10-30 02:41:16', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=51', 0, 'event', '', 0),
(53, 1, '2018-10-29 12:30:49', '2018-10-29 12:30:49', '45% of all pregnancies in the US are unplanned, and one in three women will have an abortion in her lifetime. And yet, the battle for woman’s access to reproductive healthcare is far from over. Inside the last remaining abortion clinic in Mississippi, Jackson is an intimate, first-of-its-kind look at the issues, through the voices of women in the Deep South who stand on both sides of the debate.', 'Jackson', '', 'publish', 'closed', 'closed', '', 'jackson', '', '', '2018-10-30 02:41:30', '2018-10-30 02:41:30', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=53', 0, 'event', '', 0),
(54, 1, '2018-10-29 12:32:30', '2018-10-29 12:32:30', 'When Attiya Khan was a teenager she lived with her boyfriend Steve for two years, during which time he abused her on a daily basis. 20 years later, Attiya and Steve arrange to meet and record their intimate conversations. Will Steve take responsibility for the abuse? When the film had its world premiere at Hot Docs, therapists were available for consultation in the lobby after the screening – a statement to how powerful this film is. A Better Man, is truly remarkable documentary making. It’s a privilege that Attiya has allowed an audience to bear witnesses to her restorative justice.', 'A Better Man', '', 'publish', 'closed', 'closed', '', 'a-better-man', '', '', '2018-10-30 02:41:43', '2018-10-30 02:41:43', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=54', 0, 'event', '', 0),
(55, 1, '2018-10-29 12:34:17', '2018-10-29 12:34:17', 'This film portrays Brian, Juan and Gianni from South Central, Los Angeles. The obstacles are plenty when you are a child growing up between gang members or a teenager with an addiction and a newborn or a middleaged man, just released into a new and changed world after 24 years in prison. Filmmaker, Camilla Magid has followed their lives for over two years and the film shows with precision the psychological impact of a prison system that focuses on punishment rather than prevention and rehabilitation. The three characters merge into one life story in this intimate portrait of people living in a society where help is scarce and you have to rely on your own resources to get by.', 'Land of the Free', '', 'publish', 'closed', 'closed', '', 'land-of-the-free', '', '', '2018-10-30 02:40:13', '2018-10-30 02:40:13', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=55', 0, 'event', '', 0),
(56, 1, '2018-10-29 12:36:04', '2018-10-29 12:36:04', 'Our flagship event, the 2018 HRAFF Gala will be held at Red Scooter from 7pm on Thursday 31 May for what promises to be a wonderful night of cocktails, canapés and entertainment. The event will feature a curated selection of our favourite shorts from this year’s program, as well as amazing prizes at a live auction and an art sale that will include works by some of Australia’s premier artists. Our MC for the evening will be the wonderful Wendy Tuohy. Wendy is a respected journalist for the Herald Sun, ABC and feature writer across other television and print media. She is also a prominent and passionate supporter of human rights across Australia.', '2019 HRAFF Gala', '', 'publish', 'closed', 'closed', '', '2019-hraff-gala', '', '', '2018-10-30 02:39:48', '2018-10-30 02:39:48', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=56', 0, 'event', '', 0),
(57, 1, '2018-10-29 12:38:16', '2018-10-29 12:38:16', 'Climate change is one of the most pressing concerns of our times for nations and communities globally. For many Indigenous communities around the world, climate change is a condition and continuation of colonisation. Throughout the Asia Pacific, people have been mobilising against the effects of climate change by tackling ecological issues such as rising sea levels, food security and extreme weather changes. In this panel, speakers will consider the successes and failures of recent grassroots movements, and how Indigenous knowledges shape the decolonial responses and actions taken in preserving the land on which we live.', 'Resistance on the Ground, Resilience in the Earth: Climate Change Activism in the Asia Pacific', '', 'publish', 'closed', 'closed', '', 'resistance-on-the-ground-resilience-in-the-earth-climate-change-activism-in-the-asia-pacific', '', '', '2018-10-30 02:39:35', '2018-10-30 02:39:35', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=57', 0, 'event', '', 0),
(58, 1, '2018-10-29 12:40:21', '2018-10-29 12:40:21', 'Since the 2017 protests against the Australian Government’s policies on detention in Manus and Nauru, the refugee plight has swelled in visibility through modes of prominent media dissemination and cultural production. These images come with an increase of art, film, and writing on refugee experiences. This panel will discuss who is doing the representing, who benefits, and whose resistance is made invisible', 'Threshold of Visibility: On Representing Refugee Experiences', '', 'publish', 'closed', 'closed', '', 'threshold-of-visibility-on-representing-refugee-experiences', '', '', '2018-10-30 02:39:23', '2018-10-30 02:39:23', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=58', 0, 'event', '', 0),
(59, 1, '2018-10-29 12:41:47', '2018-10-29 12:41:47', 'In the wake of the #MeToo social media campaign and revived discussions on feminism, where does this leave gender equality in Australia today? How do we now strategically mobilise beyond online discussions to build sustainable movements and alternative institutions? This panel will discuss the intersections of violence enacted on feminine and femme bodies and how women can locate and embed agency in community, in work, and in love.', 'Where to From #MeToo?', '', 'publish', 'closed', 'closed', '', 'where-to-from-metoo', '', '', '2018-10-30 02:39:10', '2018-10-30 02:39:10', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=59', 0, 'event', '', 0),
(60, 1, '2018-10-29 12:44:26', '2018-10-29 12:44:26', 'This screening will feature brand new works by Melbournebased filmmakers Ez Eldin Deng and Noray Mohammed Neberay. Deng’s films have explored the African diaspora and the complexities of the refugee experience, while Neberay’s work has focused on political activism and refugee rights. Come and see these emerging directors’ alternative visions of Australian life and stay afterwards for an in-depth panel discussion featuring both artists. Hosted by Dorcas Utkovic of OzAfrica TV, the panel will explore independent filmmaking, the challenges of telling human rights stories and the creative barriers encountered in Australia.', 'Picture This: A film showcase and conversation with local filmmakers of African Heritage', '', 'publish', 'closed', 'closed', '', 'picture-this-a-film-showcase-and-conversation-with-local-filmmakers-of-african-heritage', '', '', '2018-10-30 02:38:53', '2018-10-30 02:38:53', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=60', 0, 'event', '', 0),
(61, 1, '2018-10-29 12:47:00', '2018-10-29 12:47:00', 'The Artists Guild Open Circle – VISIBLE Join us for an open circle discussion about diversity in the Arts and the challenges women of colour have getting their work seen. The Artists Guild is facilitating a forum for artists, curators, and the public to participate in sharing ideas, stories and experiences on how to create a more inclusive community.', 'Visible', '', 'publish', 'closed', 'closed', '', 'visible', '', '', '2018-10-30 02:38:42', '2018-10-30 02:38:42', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=61', 0, 'event', '', 0),
(62, 1, '2018-10-29 12:50:23', '2018-10-29 12:50:23', 'The Koorie Heritage Trust presents two exhibitions featuring artists Cassie Leatham and Kelly Koumalatsos. Utilising locally crafted materials, Taungurung/Wurundjeri artist Cassie Leatham presents an installation showcasing her artistic and cultural practice over the past two years. Wergaia/ Wemba Wemba artist Kelly Koumalatsos draws on historic and cultural source materials, to reveal a hidden legacy of colonisation, and the continuing cultural practice in spite of it.', 'Baga-K Gaabi Brunga Biik (Symbols in Sand)', '', 'publish', 'closed', 'closed', '', 'baga-k-gaabi-brunga-biik-symbols-in-sand', '', '', '2018-10-30 02:38:03', '2018-10-30 02:38:03', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=62', 0, 'event', '', 0),
(63, 1, '2018-10-29 12:52:26', '2018-10-29 12:52:26', 'This digital interactive exhibition honours the period of Gandhi’s stay in South Africa and his subsequent personal transformation from this experience. Curated from more than 1,000 archival photographs, 130 minutes of footage, 60 minutes of film clips and 20 voice recordings of Gandhi’s speeches, this exhibition brings to life a person and period critical in India’s rich history.', 'Mahatma Gandhi: An Immigrant', '', 'publish', 'closed', 'closed', '', 'mahatma-gandhi-an-immigrant', '', '', '2018-10-30 02:28:05', '2018-10-30 02:28:05', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=63', 0, 'event', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(64, 1, '2018-10-29 12:54:59', '2018-10-29 12:54:59', 'In the exhibition Bleeding Hearts Dandenong Ranges resident Eliza Phillips investigates the disparity in Australia between the mythologised nationalist illusion of a ‘fair go’ and the systematic vilification of minority groups and social justice advocates. Eliza Phillips is a Burrinja studio artist who works across mediums, utilising text and recycled materials to explore themes of social justice.', 'Bleeding Hearts - Human Rights and Cognitive Dissonance in the \"Lucky Country\"', '', 'publish', 'closed', 'closed', '', 'bleeding-hearts-human-rights-and-cognitive-dissonance-in-the-lucky-country', '', '', '2018-10-30 02:27:54', '2018-10-30 02:27:54', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=64', 0, 'event', '', 0),
(65, 1, '2018-10-29 13:02:24', '2018-10-29 13:02:24', 'The life of a Hazara person is often dangerous – but how is it possible to understand the trials and realities of the refugee experience? In this cross-disciplinary exhibition artist and award-winning poet, Elyas Alavi documents his experiences through personal, playful and mythological lenses. Evoking issues of identity, memory, migration and displacement, he offers a deeper understanding of his experience as a Hazara refugee, artist and migrant to Australia.', 'Daydreamer Wolf', '', 'publish', 'closed', 'closed', '', 'daydreamer-wolf', '', '', '2018-10-30 02:27:37', '2018-10-30 02:27:37', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=65', 0, 'event', '', 0),
(66, 1, '2018-10-29 13:31:40', '2018-10-29 13:31:40', 'Inherent In All offers a bold visual discussion that reflects on their individual experiences of what can be carried and what cannot be left behind. This exhibition of etching and woodblock prints shares the artists’ common experience of relocation.', 'Inherent in All', '', 'publish', 'closed', 'closed', '', 'inherent-in-all', '', '', '2018-10-30 02:27:28', '2018-10-30 02:27:28', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=66', 0, 'event', '', 0),
(67, 1, '2018-10-29 13:36:16', '2018-10-29 13:36:16', 'Imagine yourself as the main character in an apocalyptic action movie, fighting oppressive forces for a better future. Cast yourself as a force for change, triumphant over racism, patriarchy, environmental destruction and other social evils. TextaQueen will guide you in designing your own self-portrait movie poster.', 'Do We Need Another Hero?', '', 'publish', 'closed', 'closed', '', 'do-we-need-another-hero', '', '', '2018-10-30 02:24:44', '2018-10-30 02:24:44', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=67', 0, 'event', '', 0),
(68, 1, '2018-10-29 13:38:34', '2018-10-29 13:38:34', 'A group of friends with Down syndrome have attended to the same school for over 40 years, and they don’t want to continue complying with school obligations. Most of their parents are dead, and none of them thought their kids would outlive them. They always believed that when their parents died, they would be able to do those things they weren’t allowed to do before, like living on their own, having sex, being parents, getting married and having a real job. But things are not changing for them, and they have to deal with the frustration of living as if they were still ten-year-olds, although they are almost fifty.', 'The Grown Ups', '', 'publish', 'closed', 'closed', '', 'the-grown-ups', '', '', '2018-10-30 02:23:59', '2018-10-30 02:23:59', '', 0, 'http://localhost:3157/beta/?post_type=event&#038;p=68', 0, 'event', '', 0),
(69, 1, '2018-10-30 00:51:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-30 00:51:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2018-10-30 00:56:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-30 00:56:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?p=70', 0, 'post', '', 0),
(71, 1, '2018-10-30 01:01:07', '2018-10-30 01:01:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"article_author\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Author Information', 'author-information', 'publish', 'closed', 'closed', '', 'group_5bd7ad10122e7', '', '', '2018-10-30 01:01:07', '2018-10-30 01:01:07', '', 0, 'http://localhost:3157/beta/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2018-10-30 01:01:07', '2018-10-30 01:01:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Profile Image', 'profile_image', 'publish', 'closed', 'closed', '', 'field_5bd7ad268b4da', '', '', '2018-10-30 01:01:07', '2018-10-30 01:01:07', '', 71, 'http://localhost:3157/beta/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2018-10-30 01:02:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-30 01:02:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=news&p=73', 0, 'news', '', 0),
(74, 1, '2018-10-30 01:09:52', '2018-10-30 01:09:52', '', 'jmccormack-150px-150px', '', 'inherit', 'open', 'closed', '', 'jmccormack-150px-150px', '', '', '2018-10-30 01:09:52', '2018-10-30 01:09:52', '', 0, 'http://localhost:3157/beta/wp-content/uploads/2018/10/jmccormack-150px-150px.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-10-30 01:11:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-30 01:11:27', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=news&p=75', 0, 'news', '', 0),
(76, 1, '2018-10-30 01:15:15', '2018-10-30 01:15:15', 'As befits a film whose director and subject are both painters, the most striking images in <em>Guilty </em>are of paint and ink marking surfaces. The first and most frequently recurring marks in the film are the brushstrokes on canvas of Myuran Sukumaran, the condemned ‘Bali 9’ drug smuggler whose final 72 hours are dramatized in Sleeth’s debut documentary, which showed to a sold-out audience at the Human Rights Arts and Film Festival on Friday night. In a Q&amp;A session that preceded the screening, Sukumaran’s lawyer, Julian McMahon AC, described how in prison the callow and selfish criminal transformed into a model prisoner—an accomplished artist and a founder of educational programmes for his fellow inmates. Sleeth’s film shows Sukumaran (played in dramatic recreations by actor Adam McConvell) spending his final 72 hours painting self-portraits, an intense period of reckoning with his life and his identity as his execution nears.\r\n\r\nThe other defining mark in Sleeth’s visually striking film is the <strong>X </strong>target drawn over the heart of Sukumaran just before his execution. Despite all his effort to create a new life, the rehabilitated prisoner and artist cannot escape the death sentence handed down ten years earlier. The only victory that Sukumaran can manage is the ‘escape’ of his paintings from death row—works which survive him and the seven other men executed with him and which, by testifying to lives cut short by executioners’ bullets, very powerfully tells a story that matters.', 'Guilty: The Last 72 Hours of Sukumaran\'s Life', '', 'publish', 'closed', 'closed', '', 'guilty-the-last-72-hours-of-sukumarans-life', '', '', '2018-10-30 01:15:15', '2018-10-30 01:15:15', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=76', 0, 'news', '', 0),
(77, 1, '2018-10-30 01:14:48', '2018-10-30 01:14:48', '', 'guilty-sukumaran', '', 'inherit', 'open', 'closed', '', 'guilty-sukumaran', '', '', '2018-10-30 01:14:48', '2018-10-30 01:14:48', '', 76, 'http://localhost:3157/beta/wp-content/uploads/2018/10/guilty-sukumaran.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-10-30 01:16:19', '2018-10-30 01:16:19', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-10-30 01:16:19', '2018-10-30 01:16:19', '', 0, 'http://localhost:3157/beta/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-10-30 01:16:19', '2018-10-30 01:16:19', '', 'News', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-10-30 01:16:19', '2018-10-30 01:16:19', '', 78, 'http://localhost:3157/beta/uncategorised/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-10-30 01:18:39', '2018-10-30 01:18:39', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2018-10-30 01:18:39', '2018-10-30 01:18:39', '', 0, 'http://localhost:3157/beta/?p=80', 3, 'nav_menu_item', '', 0),
(81, 1, '2018-10-30 02:01:05', '2018-10-30 02:01:05', 'ACMI was packed on Thursday night for the opening of the Human Rights Art and Film Festival’s (HRAFF) Melbourne leg. The opening of a festival implies a party atmosphere – festival staff and patrons walking around with their mouths sneaking up at the corners in constant smiles. HRAFF is different. There’s a buzz, that’s for sure, but it’s a collective feeling of <i>readiness – </i>a ready to confront hard truths and create change. The opening night screened ‘After the Apology’, part of the Indigenous program stream this year. In her pre-film speech Shareena Clanton warned the audience – “It won’t be comfortable”, and it wasn’t.\r\n\r\n<iframe src=\"https://www.youtube.com/embed/RwzP-bBZLUg\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" data-mce-fragment=\"1\"></iframe>\r\n\r\n‘After the Apology’ is the story of the forced removal of Indigenous children that continues today. Since Kevin Rudd formally apologised in 2008 for the stolen generations of the past, the number of Indigenous children forcibly removed from their families has almost doubled. There is no way to watch this film and feel comfortable. It’s devastating, but that’s the point. Shareena Clanton’s speech made that clear when she told the audience “This is about truth telling”. For change to be made, people have to know. That’s what HRAFF is about, communicating truth and knowledge to enact change.\r\n\r\n&nbsp;\r\n\r\nIn a post film Q&amp;A, director Larissa Behrendt elaborated on the importance of self-determination – a big theme within the film. Four grandmothers are the film’s protagonists, taking up their own self-determination and resistance when authorities don’t honour the basic principle of an apology – that you don’t do it again. These are stories that matter. In the words of audience members interviewed on the night “This is a film every single person in this country should see”.', 'Opening Night Wrap Up - HRAFF 2019', '', 'publish', 'closed', 'closed', '', 'opening-night-wrap-up-hraff-2019', '', '', '2018-10-30 02:01:05', '2018-10-30 02:01:05', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=81', 0, 'news', '', 0),
(82, 1, '2018-10-30 02:02:34', '2018-10-30 02:02:34', '<b><a href=\"http://2018.hraff.org.au/events/after-the-apology/\">After the Apology</a> – </b>An unflinching account of the staggering rates of Aboriginal child removal today told through the voice of grandmothers who want their kids back. It’s heartbreaking, hopeful, angry and much more. This is a very important film to watch. Do not miss out.\r\n\r\n<b><a href=\"http://2018.hraff.org.au/events/abetterman/\">A Better Man</a> – </b>This is not an easy film to watch but a brave one.  It shows Attiya – who was in an abusive relationship, go on a journey with her former abuser to explore what happened and its impact. Please note there is a trigger warning on this film.\r\n\r\n<a href=\"http://2018.hraff.org.au/events/thegrownups/\"><b>The Grown-Ups </b></a>– I loved The Grown-Ups. It shows a group of adults with Down Syndrome who have pretty normal hopes and dreams (live on your own, have adult loving relationships, have an income) but are stuck in a school for people with Down Syndrome, even though they are in their forties. It is unsettling but it is meant to be through its ground-hog day capturing of their infantilized lives.  It shows love, hope and aspiration beautifully. It also shows how all of these things can be dashed by people disempowering them from achieving their potential and making choices in their own lives.\r\n\r\n<a href=\"http://2018.hraff.org.au/events/this-is-congo/\"><b>This is Congo</b></a> – The Congo has had twenty years of conflict. This film explores the complexity of conflict, poverty, refuge, corruption, the legacy of colonialism, aid, natural resource wealth, governance, desperation, hope, joy and resilience.  It shows the ability of people to survive extraordinary circumstances but also the weariness and senselessness of war. I had my heart in my mouth. It humanizes so many perspectives of the conflict empathetically and fairly, which is not common in films about war (that often prefer a simple goodie versus baddie narrative) but is common in conflict itself. It is horrific and beautiful all at once. Haunting – I could not look away. Do not miss it.\r\n\r\n<a href=\"http://leitis/\"><b>Leitis in Waiting </b></a>– This is the story of Joey and the Tongan Leitis, transgender women fighting a rising tide of religious fundamentalism in their Kingdom of Tonga. The story follows Joey, a devout Catholic of noble descent, as she organizes an exuberant beauty pageant presided over by a princess, mentors a young Leiti rejected by her family, and spars with American-style evangelicals threatening to resurrect colonial-era laws that would criminalize their lives. This is a warm, beautiful, emotional film, which challenges laws criminalizing LGBT lives, still current in eight Pacific countries. A few days ago it won the audience award, after premiering at the Festival of Commonwealth Film 2018 in London.', 'CEO Aleta Moriarty\'s Top Five Picks', '', 'publish', 'closed', 'closed', '', 'ceo-aleta-moriartys-top-five-picks', '', '', '2018-10-30 02:02:34', '2018-10-30 02:02:34', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=82', 0, 'news', '', 0),
(83, 1, '2018-10-30 02:03:16', '2018-10-30 02:03:16', 'The Human Rights Arts &amp; Film Festival been awarded the prestigious annual Graham F. Smith Peace Foundation Arts Prize, announced at the Peace Foundation Gala today. The prize is presented to one organization annually which has shown to make a contribution to peace through the arts.\r\n\r\nThe Human Rights Arts &amp; Film Festival was founded ten years ago to make human rights relevant, accessible and engaging to Australians through film, art, music and forums. It has since grown to become one of the country’s largest and most important human rights events. Since its inception, it has showcased over 479 films, 470 speakers, and 271 artists, musicians and performers, sharing inspiring human stories to over 100,000 attendees nationwide.\r\n\r\nThe Graham F. Smith Peace Foundation was founded in 1989 as a lasting legacy to its namesake. Graham F. Smith. Graham believed that people who are taught to think, challenge and are encouraged to expand their imagination, can create a better world. The purpose of the Foundation is the promotion of peace through all art forms that relate to human rights, social justice and environmental sustainability.\r\n\r\n“Graham’s dedication to the egalitarian principles of socialism, democracy, peace, international understanding and the dignity of labour was the inspiration for the Peace Foundation that bears his name,” said Leonie Ebert, founding member of the Graham F Smith Peace Foundation. “We believe the Human Rights Arts &amp; Film Festival embodies everything he stood for and has made a major contribution to peace in Australia, through the arts.”\r\n\r\n“We are honoured to be an award recipient of the Graham Smith Peace Foundation Award,” said Aleta Moriarty, HRAFF CEO. “We are driven to create a better, more peaceful world. We believe the arts, film and literature can help people connect with issues in a way nothing else can. And this is the first step in creating enduring change, changing people’s hearts and minds.”', 'HRAFF has been award the annual Graham F.Smith Peace Foundation Arts Award', '', 'publish', 'closed', 'closed', '', 'hraff-has-been-award-the-annual-graham-f-smith-peace-foundation-arts-award', '', '', '2018-10-30 02:03:16', '2018-10-30 02:03:16', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=83', 0, 'news', '', 0),
(84, 1, '2018-10-30 02:03:59', '2018-10-30 02:03:59', 'Melbourne winter is well and truly upon us, which also means, it’s nearly time for MIFF! There are so many fantastic films to choose from in this year’s impressive program. Here are five films below at the top of my wishlist.\r\n<h5><strong><a href=\"http://miff.com.au/program/film/the-square\">The Square</a>\r\nDir: Ruben Östlund</strong></h5>\r\n<a href=\"http://miff.com.au/program/film/the-square\"><img class=\"size-thumb wp-image-8859 alignnone\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/07/the-square-1-480x200.jpg\" alt=\"\" width=\"400\" height=\"167\" /></a>\r\n\r\nAt the top of my list is Swedish provocateur Ruben Östlund’s 2017 Cannes Palme d’Or winning film <em>The Square</em>. The reviews have been astounding! If his latest satire (aimed at the cultural elite) is anything like his previous masterpiece <em>Force Majeure</em>, then we can expect an unforgettable cinematic experience.\r\n<h5><strong><a href=\"http://miff.com.au/program/film/the-silent-eye\">The Silent Eye</a>\r\nDir: Amiel Courtin-Wilson</strong></h5>\r\n<a href=\"http://miff.com.au/program/film/the-silent-eye\"><img class=\"size-thumb wp-image-8862 alignnone\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/07/14822428222silenteystill-480x200.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/07/14822428222silenteystill-480x200.jpg 480w, https://2018.hraff.org.au/wp-content/uploads/2017/07/14822428222silenteystill-12x5.jpg 12w\" alt=\"\" width=\"400\" height=\"167\" /></a>\r\n\r\nVisionary Australian filmmaker (and HRAFF 2017 Film Jury member), Amiel Courtin-Wilson’s latest is another film I’m really looking forward to seeing at MIFF. Capturing the combined talents of free jazz pioneer, Cecil Taylor, and iconic Japanese dance artist, Min Tanaka, in a 70-minute performance piece – the results are sure to be breathtaking.\r\n<h5><a href=\"http://miff.com.au/program/film/beach-rats\"><strong>Beach Rats\r\n</strong></a><strong>Dir: Eliza Hittman</strong></h5>\r\n<a href=\"http://miff.com.au/program/film/beach-rats\"><img class=\"size-thumb wp-image-8868 alignnone\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/08/15086828813beachratstill-480x200.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/08/15086828813beachratstill-480x200.jpg 480w, https://2018.hraff.org.au/wp-content/uploads/2017/08/15086828813beachratstill-12x5.jpg 12w\" alt=\"\" width=\"400\" height=\"167\" /></a>\r\n\r\nI was completely blown away by Eliza Hittman’s <em>It Felt Like Love </em>at MIFF in 2014. I cannot wait to see her latest instalment, <em>Beach Rats</em>. Hittman is becoming highly regarded for her authentic portrayals of coming-of-age sexuality. Her recent major award win at Sundance only further proves she’s one to watch.\r\n<h5><strong><a href=\"http://miff.com.au/program/film/i-am-not-your-negro\">I Am Not Your Negro </a>\r\nDir: Raoul Peck</strong></h5>\r\n<a href=\"http://miff.com.au/program/film/i-am-not-your-negro\"><img class=\"size-thumb wp-image-8871 alignnone\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/08/15041627414iamnotstill-480x200.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/08/15041627414iamnotstill-480x200.jpg 480w, https://2018.hraff.org.au/wp-content/uploads/2017/08/15041627414iamnotstill-12x5.jpg 12w\" alt=\"\" width=\"400\" height=\"167\" /></a>\r\n\r\nOne of the most anticipated documentaries of the festival has to be the critically acclaimed (and deeply socially relevant), <em>I am Not Your Negro</em> . Over the past year at HRAFF we have seen a growing amount of films concerning the continuous gross inequality faced by the African-American community. This Oscar-nominated documentary profiles the life of iconic civil rights activist, James Baldwin, and serves as a potent reminder that the battle is far from over.\r\n<h5><strong><a href=\"http://miff.com.au/program/film/the-go-betweens-right-here\">The Go-Betweens: Right Here </a>\r\n</strong><strong>Dir: Kriv Stenders</strong></h5>\r\n<a href=\"http://miff.com.au/program/film/the-go-betweens-right-here\"><img class=\"size-thumb wp-image-8873 alignnone\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/08/15064427957gobetweenstill-480x200.jpg\" sizes=\"(max-width: 400px) 100vw, 400px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/08/15064427957gobetweenstill-480x200.jpg 480w, https://2018.hraff.org.au/wp-content/uploads/2017/08/15064427957gobetweenstill-12x5.jpg 12w\" alt=\"\" width=\"400\" height=\"167\" /></a>\r\n\r\nIt’s no secret that I am completely obsessed with music documentaries so my number one pick for this year’s festival has to be Kriv Stenders’ <em>The Go-Betweens: Right Here</em>. A truly iconic, influential Australian band that never really got the international recognition they deserved. I’m hoping for a collective heart-swell and sing-along from the audience when ‘The Streets of Your Town’ starts blaring on the cinema speakers. Can’t wait!\r\n\r\n&nbsp;\r\n\r\nAs well as these films, a few absolute must-sees I personally recommend include Luca Guadagnino’s <strong><a href=\"http://miff.com.au/program/film/call-me-by-your-name\"><em>Call Me By Your Name</em></a></strong>, Geremy Jasper’s <em><strong><a href=\"http://miff.com.au/program/film/patti-cake\">Patti Cake$</a></strong>,</em> Amanda Kernell’s <strong><a href=\"http://miff.com.au/program/film/sami-blood\"><em>Sami Blood</em></a></strong>, Rahul Jain’s <strong><a href=\"http://miff.com.au/program/film/machines\"><em>Machines</em></a></strong> and Amanda Lipitz <strong><em><a href=\"http://miff.com.au/program/film/step\">STEP</a>.</em></strong>', 'HRAFF MIFF Picks', '', 'publish', 'closed', 'closed', '', 'hraff-miff-picks', '', '', '2018-10-30 02:03:59', '2018-10-30 02:03:59', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=84', 0, 'news', '', 0),
(85, 1, '2018-10-30 02:04:47', '2018-10-30 02:04:47', '<h4>On Purpose Partnership: Our Principal Partner Bank Australia On Why They Partner With HRAFF</h4>\r\nIt’s been great to be part of HRAFF’s journey and see the festival grow. Marking the Festival’s 10 year anniversary, we interviewed HRAFF co-founder Evelyn Tadros for the first episode of our On Purpose podcast.\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/319698047&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true\" width=\"100%\" height=\"450\" frameborder=\"no\" scrolling=\"no\" data-mce-fragment=\"1\"></iframe>\r\n\r\nAs a bank, sometimes we are asked why Bank Australia finds itself linked to human rights and the arts. For us, the answer is simple – because we care.\r\n\r\nOur partnership with HRAFF exists for a number of reasons and one of them is giving voice to people. HRAFF is an example of empowering those who are in the centre of human rights abuse.\r\n\r\nLike HRAFF, we strongly believe in the power of our community and of each individual. The focus of our support is guided by our customers who share with us what matters to them. Being more active in human rights is one of them. One of the ways we address these concerns is through the Bank Australia Impact Fund in which we invest 4% of our after-tax profits in community projects.\r\n\r\nOne of our last year’s recipients <a href=\"https://bankaust.com.au/responsible-banking/bank-australia-impact-fund/content-wire/\">WIRE Women’s Information</a> organises and runs workshops informing women about employment opportunities. They address challenges many women are faced with when it comes to job hunting and help build their confidence and fight the feeling of insecurity.\r\n\r\nThere are always opportunities for us to create a positive impact for our community and the planet. HRAFF definitely inspires us to do more in the area of human rights by pushing the scale of the festival every time a bit further.\r\n\r\n<em><strong><a href=\"http://www.bankaust.com.au/hraff\">Find out more about Bank Australia here.</a></strong></em>\r\n\r\n<em><strong><a href=\"http://2018.hraff.org.au/events/the-opposition-panel/\">Don’t miss The Opposition Encore Screening presented by Bank Australia.</a></strong></em>\r\n\r\n<a href=\"https://www.facebook.com/bankaust/\"><em><strong>Watch Bank Australia’s Facebook Live with The Opposition Director, Hollie Fifer on Saturday 6 May 11</strong></em><strong><em>.30am.</em></strong></a>', 'Podcast: Bank Australia in Conversation with HRAFF Chair and Co-Founder Evelyn Tadros', '', 'publish', 'closed', 'closed', '', 'podcast-bank-australia-in-conversation-with-hraff-chair-and-co-founder-evelyn-tadros', '', '', '2018-10-30 02:04:47', '2018-10-30 02:04:47', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=85', 0, 'news', '', 0),
(86, 1, '2018-10-30 02:05:43', '2018-10-30 02:05:43', 'The 10th Human Rights Arts &amp; Film Festival (HRAFF) is thrilled to announce its Opening Night event – The Australian premiere of Hollie Fifer’s maligned documentary The Opposition. The film will screen in Melbourne on Thursday 4 May and go on to screen in Canberra and Brisbane.\r\n\r\nSteeped in legal disputes designed to block its release, The Opposition details the struggle of 3,000 residents of the Paga Hill community in Papua New Guinea, who watched helplessly as police bulldozed their homes to make way for a luxury resort. Two community leaders rose to help, but were driven down different paths when faced with a choice – keep fighting for justice or join the enemy.\r\n\r\nThis gripping documentary is Australian director Hollie Fifer’s debut feature. It grapples with a subject so inflammatory that it prompted one subject to file an injunction against the film’s release.\r\n\r\n“Some stories pick you. This was one of those. On my second day in Papua New Guinea I found myself in the middle of a human rights abuse standing between the police holding machetes and machine guns and the Paga Hill community watching their homes being destroyed fearing for their lives. I’m so honoured this film will open the 10th Anniversary of Australia’s leading human rights festival in Melbourne,” says Fifer.\r\n\r\n“We are absolutely delighted to be holding the Australian Premiere of The Opposition to open our milestone 10th Anniversary festival. We’re so proud to be supporting emerging Australian filmmaking talent and this impressive feature film debut from director Hollie Fifer is not to be missed,’ says the Festival’s Program Director, Lauren Valmadre.\r\n\r\nThe Opposition screens Thursday 4 May 6.30pm at ACMI Cinemas in Melbourne with an introduction by director Hollie Fifer and protagonist Joe Moses. Opening Night celebrations continue downstairs in ACMI’s Lightwell with entertainment by musicians Onur and Emral from Festival event Key of Sea (Sat 13 May at Footscray Community Arts Centre).\r\n\r\nThe Opposition also screens in Canberra on 29 May in Palace Electric and Brisbane on 1 June at Palace Barracks.\r\n\r\nHRAFF’s Opening Night is proudly presented by Bank Australia.\r\n\r\nClick <a href=\"http://2018.hraff.org.au/events/the-opposition/\">here</a> to book Opening Night tickets.', 'Contentious Documentary \'The Opposition\' To Open 2019 HRAFF', '', 'publish', 'closed', 'closed', '', 'contentious-documentary-the-opposition-to-open-2019-hraff', '', '', '2018-10-30 02:05:43', '2018-10-30 02:05:43', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=86', 0, 'news', '', 0),
(87, 1, '2018-10-30 02:07:12', '2018-10-30 02:07:12', 'International Women’s Day (IWD) is all about celebrating the social, economic, cultural and political achievements of women around the world. In solidarity with this year’s IWD campaign theme to #BeBoldForChange and to show our support for female triumphs, we decided to explore the work of Australian director Belinda Mason, who will be showcasing her new film Constance on the Edge as part of HRAFF’s 2017 10th anniversary festival.\r\n\r\n&nbsp;\r\n<div id=\"attachment_8064\" class=\"wp-caption aligncenter\"><img class=\"wp-image-8064 size-square\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/04/belinda-mason_-6-480x400.jpg\" alt=\"\" width=\"480\" height=\"400\" />\r\n<p class=\"wp-caption-text\">Belinda Mason</p>\r\n\r\n</div>\r\n<strong>How did you get into filmmaking? Have you always been creative?</strong>\r\n\r\nI grew up in a family of filmmakers and the moment I picked up a camera as a teenager I was hooked, but I always dreamed of being a journalist. Documentary filmmaking fulfils both passions and is thrilling on so many levels: we get to closely share people’s journeys, often at pivotal moments in their lives. This is both a privilege and a responsibility. We also get to play: to share stories in a creative way.\r\n\r\n<strong>What kind of films do you usually like to make? How do you decide what subject matter/stories to focus on?</strong>\r\n\r\nI’m always drawn to stories about strong women challenging the status quo. Constance fits the bill. She and the women around her are inspiring role models. Constance is a survivor, willing to fight for what she believes in, and in my eyes, she represents the resilient spirit that defines us as Aussies.\r\n\r\nSeeing Constance’s struggle and suffering was a shock. She asked me to collaborate with her to share her experience about what it takes to belong in a new land far from home. As we filmed what emerged was that the way we treat refugees can promote or impede their ability to contribute successfully over the long term.\r\n\r\n<strong>Do you have a particular overall objective for your films?</strong>\r\n\r\nI hope my films take people into worlds that they haven’t been to before, hopefully they’re inspired to think about things differently, and, in a perfect world, to take action.\r\n\r\nHow important do you believe it is to represent women through film, and do you have any opinions about how this should be done?\r\n\r\nIt’s important for us to create spaces and opportunities for women to tell their own stories. We are very under-represented in this industry. I love watching films made by women. All roles in filmmaking need more women working. Producer, Marguerite Grey, and I, chose an all women crew on Constance. It felt right having a female team around Constance and the other subjects, particularly as we were talking about sensitive subjects like rape and suicide. Brilliant cinematographer Jo Parker shot most of the film. Kathryn Millis did some gorgeous filming at the beginning, and Denise Haslem was our editor who pulled it all together so beautifully.\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-square wp-image-7361 aligncenter\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/03/constance-on-the-edge-480x400.jpg\" alt=\"\" width=\"480\" height=\"400\" />\r\n\r\n&nbsp;\r\n\r\n<strong>How did you meet Constance?</strong>\r\n\r\nI met Constance and her family when I directed I’ll Call Australia Home in 2006-07, a documentary about their first year in Wagga Wagga, regional Australia, after a decade of living in a refugee camp in Kenya.\r\n\r\nThis new film, Constance on the Edge, picks up the story after the honeymoon period is over. A few years after the first film was completed Constance called me to say life in Australia wasn’t working out for her. Her trauma had re-emerged, she was dealing with family issues, and had even been arrested. This film is about what it takes to forge a new life far from home. Constance says, ‘In the warzone I fought for survival; in the refugee camp I fought for human rights; and here in Australia, I’m fighting for belonging.’\r\n\r\n<strong>How did her story resonate with you? Why did you choose to share her journey?</strong>\r\n\r\nYes, I hope it will help audiences understand the journey of refugees, be inspired by their lives and openly welcome them. Following one family personalises the refugee experience and gives the audience a way in. Often what we see in the media is refugees stripped of their identity and that makes it hard to connect with their world. Hopefully, Constance on the Edge humanises the refugee experience.\r\n\r\nConstance and the women around her are courageous, resilient survivors. They have so much to offer – global perspectives, entrepreneurial skills, and they’re strengthening their communities. I hope they also remind us of the contribution refugees have been making in Australia, over decades, and continue to make if given the opportunity to do so. Like Vicky, Constance’s daughter, who, with support and respect, and enormous commitment from her – she studies every morning from 4 a.m. to 8 a.m. – and makes it into university, after spending most of her childhood in refugee camp without education. Extraordinary young women like Vicky are our future.\r\n\r\n<em>Purchase tickets for Constance on the Edge when the full program is released on Tuesday 4th April.</em>', 'Intentional Women\'s Day Director Interview: Belinda Mason', '', 'publish', 'closed', 'closed', '', 'intentional-womens-day-director-interview-belinda-mason', '', '', '2018-10-30 02:07:12', '2018-10-30 02:07:12', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=87', 0, 'news', '', 0),
(88, 1, '2018-10-30 02:08:12', '2018-10-30 02:08:12', '<strong>HRAFF Program Director Lauren Valmadre gives us a brief report about her experience at the 2017 Sundance Film Festival.</strong>\r\n\r\n&nbsp;\r\n\r\n<img class=\"size-square wp-image-8049 aligncenter\" src=\"http://2018.hraff.org.au/wp-content/uploads/2017/02/sundance-image-480x400.jpg\" sizes=\"(max-width: 480px) 100vw, 480px\" srcset=\"https://2018.hraff.org.au/wp-content/uploads/2017/02/sundance-image-480x400.jpg 480w, https://2018.hraff.org.au/wp-content/uploads/2017/02/sundance-image-960x800.jpg 960w\" alt=\"\" width=\"480\" height=\"400\" />\r\n\r\n&nbsp;\r\n\r\n“This year’s Sundance Film Festival once again brought the very best emerging and established independent filmmaking talent to the snowy mountains of Park City, Utah, in a celebration of unique cinematic perspectives.\r\n\r\nSundance is known for its highly political programming, including films exposing the most relevant and urgent issues both across America and the globe, and this year was no exception. The first day of the film festival also aligned with the latest US presidential inauguration, an undeniably profound time within American history as were the days to follow. The films at Sundance this year reaffirmed the importance and the necessity of the content we showcase here at the Human Rights Arts and Film Festival and I cannot wait to share some of these amazing stories with our audiences in May.”', 'Sundance Report', '', 'publish', 'closed', 'closed', '', 'sundance-report', '', '', '2018-10-30 02:09:05', '2018-10-30 02:09:05', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=88', 0, 'news', '', 0),
(89, 1, '2018-10-30 02:09:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-30 02:09:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:3157/beta/?post_type=news&p=89', 0, 'news', '', 0),
(90, 1, '2018-10-30 02:13:07', '2018-10-30 02:13:07', 'At HRAFF, we are proud to present films that represent a female perspective in storytelling – whether that comes from the <a href=\"http://2016.hraff.org.au/proudly-supporting-women-film/\">talented female filmmakers</a> behind the scenes, or from the female-centric narratives they feature. Many of the films below are driven by strong (and at times vulnerable) female protagonists or address issues of women’s rights.\r\n\r\nWe think these films would really appeal to a female audience (Mother’s Day anyone?), yet are powerful stories that everyone should see.\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6239\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/mayaselling-480x480.jpg\" alt=\"mayaselling\" width=\"200\" height=\"207\" /><a href=\"http://2016.hraff.org.au/event/maya-angelou/\">MAYA ANGELOU AND STILL I RISE</a></strong>\r\n<a href=\"http://2016.hraff.org.au/event/maya-angelou/\">Saturday 7 May 4pm at ACMI Melbourne</a>\r\n\r\nShe inspired generations, pushed boundaries and never ceased in her long fight for freedom for all. Although she is most well noted for her poetry, <em>Maya Angelou and Still I Rise</em> celebrates her multiple talents including singing, dancing, filmmaking, academia and civil rights activism.\r\n\r\n<strong><a href=\"http://2016.hraff.org.au/event/maya-angelou/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6240\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/hooligansq.jpg\" alt=\"Women\'s right films\" width=\"200\" height=\"202\" /><a href=\"http://2016.hraff.org.au/event/hooligan-sparrow/\">HOOLIGAN SPARROW</a></strong>\r\n<a href=\"http://2016.hraff.org.au/event/hooligan-sparrow/\">Wednesday 18 May 6 pm at ACMI Melbourne\r\n</a>Post-film Q&amp;A with Director <strong>Nanfu Wang</strong> via Skype.\r\n\r\nWe follow Hooligan Sparrow and her fellow human rights activists as they travel to seek justice for six elementary school girls who have been sexually abused by their principal. First-time filmmaker Nanfu Wang becomes targeted by the Chinese government along side her protagonist.\r\n\r\n<strong><a href=\"http://2016.hraff.org.au/event/hooligan-sparrow/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6248\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/sancristobsq.jpg\" alt=\"sancristobsq\" width=\"200\" height=\"200\" /><a href=\"http://2016.hraff.org.au/event/international-shorts-love-intimacy/\">INTERNATIONAL SHORTS: LOVE + INTIMACY</a></strong>\r\n<a href=\"http://2016.hraff.org.au/event/international-shorts-love-intimacy/\">Friday 13 May 8 pm at ACMI Melbourne</a>\r\n\r\nFrom first meetings to grand gestures, love takes courage and never is as simple as it seems.\r\nWith stories both tender and heart-breaking there’ll be something here for mum and the rest of the (18+) family too.\r\n\r\n<strong><a href=\"http://2016.hraff.org.au/event/international-shorts-love-intimacy/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6241\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/callmedadsq-480x480.jpg\" alt=\"Female-focus films\" width=\"200\" height=\"203\" />CALL ME DAD</strong>\r\n<a href=\"http://2016.hraff.org.au/event/call-me-dad/\">Sunday 15 May 8 pm at ACMI Melbourne</a>\r\n<a href=\"http://2016.hraff.org.au/event/call-me-dad-may-16/\">Monday 16 May 4 pm at ACMI Melbourne</a> Open Captioned<a href=\"http://2016.hraff.org.au/event/call-me-dad-may-16/\">\r\n</a>Post-film Q&amp;A with Director <strong>Sophie Wiesner (</strong>May 15)\r\n\r\nThe majority of domestic abuse undeniably impacts women. However, Sophie Wiesner’s documentary<em>Call Me Dad</em> looks at family violence from another perspective, that of the fathers and husbands who commit the crimes.\r\n<strong><a href=\"http://2016.hraff.org.au/event/call-me-dad/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6242\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/drivingsq.jpg\" alt=\"Female driven films\" width=\"200\" height=\"220\" /></strong>\r\n\r\n<a href=\"http://2016.hraff.org.au/event/driving-with-selvi/\"><strong>DRIVING WITH SELVI</strong></a>\r\n<a href=\"http://2016.hraff.org.au/event/driving-with-selvi/\">Tuesday 17 May 5:45 pm at ACMI Melbourne\r\n</a>Post film Q&amp;A with Director/Producer <strong>Elisa Paloschi.</strong>\r\n\r\nLike so many girls living within India’s impoverished patriarchal culture, Selvi found herself in an abusive forced marriage at the delicate age of 14. Running away and starting a brand new life, Selvi eventually becomes South India’s first female taxi driver.\r\n<strong>Sponsored by <a href=\"http://2016.hraff.org.au/go/logo-plan/\">Plan International</a></strong>\r\n<strong><a href=\"http://2016.hraff.org.au/event/driving-with-selvi/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6243\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/burdensq-480x480.jpg\" alt=\"burdensq\" width=\"200\" height=\"205\" /><a href=\"http://2016.hraff.org.au/event/burden-of-peace/\">BURDEN OF PEACE</a></strong>\r\n<a href=\"http://2016.hraff.org.au/event/burden-of-peace/\">Wednesday 11 May 6 pm at ACMI Melbourne\r\n</a>Post-film Q&amp;A with Director <strong>Joey Boink</strong> via Skype.\r\n\r\n<em>Burden of Peace</em> is a fascinating portrait of Guatemala’s first female Attorney-General, Claudia Paz y Paz: a woman who challenged a thoroughly corrupted justice system and government.\r\n<strong>Supported by <a href=\"http://2016.hraff.org.au/go/logo-dumbo-feather/\">Dumbo Feather</a></strong>\r\n<strong><a href=\"http://2016.hraff.org.au/event/burden-of-peace/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignleft wp-image-6244\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/mallorysq-480x480.jpg\" alt=\"mallorysq\" width=\"200\" height=\"202\" /><a href=\"http://2016.hraff.org.au/event/mallory/\"><strong>MALLORY</strong></a>\r\n<a href=\"http://2016.hraff.org.au/event/mallory/\">Monday 9 May 9 8:30 pm at ACMI Melbourne</a>\r\n\r\nFilmed over 13 years, internationally renowned Czech documentarian Helen Trestikova’s film offers an empathic and gritty immersion into the life of Mallory as she struggles to survive in the unforgiving streets of Prague.\r\n\r\n<strong><a href=\"http://2016.hraff.org.au/event/mallory/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6246\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/flockingsq.jpg\" alt=\"flockingsq\" width=\"200\" height=\"200\" /><a href=\"http://2016.hraff.org.au/event/flocking/\">FLOCKING</a></strong>\r\n<a href=\"http://2016.hraff.org.au/event/flocking/\">Wednesday 11 May 8:15 pm at ACMI Melbourne</a>\r\n\r\nBeata Gårdeler’s haunting film, about a 14-year-old girl ostracized by her tight-knit Swedish community after accusing a classmate of rape, explores modern themes of consent and social media in a devastatingly claustrophobic environment.\r\n\r\n<strong><a href=\"http://2016.hraff.org.au/event/flocking/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong><img class=\"alignleft wp-image-6245\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/gtfosq.jpg\" alt=\"gtfosq\" width=\"200\" height=\"200\" /><a href=\"http://2016.hraff.org.au/event/gtfo/\">GTFO</a>\r\n</strong><a href=\"http://2016.hraff.org.au/event/gtfo/\">Tuesday 17 May 6:15 pm at ACMI Melbourne</a><strong>\r\n</strong>\r\n\r\nSparked by a public display of sexual harassment in 2012, Director Shannon Sun-Higginson pries open the gaming\r\nworld to explore a 20 billion dollar industry that is riddled with misogyny.\r\n\r\n<strong><a href=\"http://2016.hraff.org.au/event/gtfo/\">BOOK NOW</a></strong>\r\n\r\n&nbsp;\r\n\r\n<strong>Hot Tip: Get 6 of these films on a <a href=\"http://tix.hraff.org.au/product.asp?pt=2&amp;s=82\">HRAFF Multi-pass</a>. The perfect Mother’s Day Gift!</strong>\r\n\r\nAnd for mums that want to bring younger children along, check out our films for <a href=\"http://2016.hraff.org.au/program/#topic=films-for-ages-15\">15 years and above</a>.\r\n\r\nSee also the following event in our arts program:\r\n\r\n<img class=\"alignleft wp-image-6247\" src=\"http://2016.hraff.org.au/wp-content/uploads/2016/04/sleepoversq.jpg\" alt=\"sleepoversq\" width=\"200\" height=\"200\" /><a href=\"http://2016.hraff.org.au/event/sleepover-club-initiative/\"><strong>SLEEPOVER CLUB INITIATIVE</strong></a>\r\n<a href=\"http://2016.hraff.org.au/event/sleepover-club-initiative/\"><strong>WHAT HAS FEMINISM EVER DONE FOR ME?</strong></a>\r\n<a href=\"http://2016.hraff.org.au/event/sleepover-club-initiative/\">6 May until 19 May 12:00 am – 5:00 pm</a>\r\n\r\nDerived from a deeply felt need to challenge our current feminist milieu, <em>What Has Feminism Ever Done for Me?</em> will open up space for critical examination of the current feminist climate', 'HRAFF Themes: Female Driven Themes for Mum', '', 'publish', 'closed', 'closed', '', 'hraff-themes-female-driven-themes-for-mum', '', '', '2018-10-30 02:13:07', '2018-10-30 02:13:07', '', 0, 'http://localhost:3157/beta/?post_type=news&#038;p=90', 0, 'news', '', 0),
(91, 1, '2018-10-30 02:22:22', '2018-10-30 02:22:22', '', 'a-better-man', '', 'inherit', 'open', 'closed', '', 'a-better-man-2', '', '', '2018-10-30 02:22:22', '2018-10-30 02:22:22', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/a-better-man.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-10-30 02:22:23', '2018-10-30 02:22:23', '', 'a-woman-captured', '', 'inherit', 'open', 'closed', '', 'a-woman-captured', '', '', '2018-10-30 02:22:23', '2018-10-30 02:22:23', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/a-woman-captured.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-10-30 02:22:23', '2018-10-30 02:22:23', '', 'after-the-apology', '', 'inherit', 'open', 'closed', '', 'after-the-apology', '', '', '2018-10-30 02:22:23', '2018-10-30 02:22:23', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/after-the-apology.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-10-30 02:22:24', '2018-10-30 02:22:24', '', 'border-politics', '', 'inherit', 'open', 'closed', '', 'border-politics', '', '', '2018-10-30 02:22:24', '2018-10-30 02:22:24', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/border-politics.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2018-10-30 02:22:25', '2018-10-30 02:22:25', '', 'caliban', '', 'inherit', 'open', 'closed', '', 'caliban', '', '', '2018-10-30 02:22:25', '2018-10-30 02:22:25', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/caliban.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-10-30 02:22:26', '2018-10-30 02:22:26', '', 'daydreamer-wolf', '', 'inherit', 'open', 'closed', '', 'daydreamer-wolf-2', '', '', '2018-10-30 02:22:26', '2018-10-30 02:22:26', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/daydreamer-wolf.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-10-30 02:22:26', '2018-10-30 02:22:26', '', 'her-sound-her-story', '', 'inherit', 'open', 'closed', '', 'her-sound-her-story-2', '', '', '2018-10-30 02:22:26', '2018-10-30 02:22:26', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/her-sound-her-story.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-10-30 02:22:27', '2018-10-30 02:22:27', '', 'mahatma-gandhi', '', 'inherit', 'open', 'closed', '', 'mahatma-gandhi', '', '', '2018-10-30 02:22:27', '2018-10-30 02:22:27', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/mahatma-gandhi.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-10-30 02:22:28', '2018-10-30 02:22:28', '', 'sponsor-banner-1', '', 'inherit', 'open', 'closed', '', 'sponsor-banner-1', '', '', '2018-10-30 02:22:28', '2018-10-30 02:22:28', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/sponsor-banner-1.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-10-30 02:22:28', '2018-10-30 02:22:28', '', 'the-song-keepers', '', 'inherit', 'open', 'closed', '', 'the-song-keepers-2', '', '', '2018-10-30 02:22:28', '2018-10-30 02:22:28', '', 29, 'http://localhost:3157/beta/wp-content/uploads/2018/10/the-song-keepers.jpg', 0, 'attachment', 'image/jpeg', 0);

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

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 13, 'profile_image', '74'),
(2, 13, '_profile_image', 'field_5bd7ad268b4da');

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
(12, 'Navigation', 'navigation', 0),
(13, 'Jim McCormack', 'jim-mccormack', 0),
(14, 'Meg Hill', 'meg-hill', 0),
(15, 'Lauren Valmadre', 'lauren-valmadre', 0);

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
(68, 9, 0),
(76, 13, 0),
(80, 12, 0),
(81, 14, 0),
(84, 15, 0);

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
(12, 12, 'nav_menu', '', 0, 3),
(13, 13, 'article_author', 'Jim McCormack is a Melbourne-based academic and writer.', 0, 1),
(14, 14, 'article_author', '', 0, 1),
(15, 15, 'article_author', '', 0, 1);

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
(16, 1, 'session_tokens', 'a:3:{s:64:\"b79f85dcef69e335f21804437fa2a0987f4640320a433e2e8ecb522624043b03\";a:4:{s:10:\"expiration\";i:1541895541;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540685941;}s:64:\"3de7dd9859778cad4eb0f13d48f084eed87299f1b27aee3da9b733fb95c6ac21\";a:4:{s:10:\"expiration\";i:1540984736;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1540811936;}s:64:\"15c63aa835109985c48d9a429aeeeb9e10d21d01cb482883a705fdd6891ed21e\";a:4:{s:10:\"expiration\";i:1541032570;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36\";s:5:\"login\";i:1540859770;}}'),
(26, 1, 'nav_menu_recently_edited', '12'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(20, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(21, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(23, 1, 'wp_user-settings-time', '1540861397'),
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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
